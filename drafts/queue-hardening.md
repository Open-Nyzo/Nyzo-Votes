# Draft: Queue hardening

In the light of past month queue composition, size, and related cycle join events, NCFP-10 was put to vote as a symbolic transaction to jauge the community interest in limiting some of the behaviour user coudn't help notice.

https://forum.nyzo.community/t/ncfp-10-adding-reachability-checks-for-queued-verifiers/293

This NCFP-10 has not a single "NO" vote so far, so it seems there it is time to give some practical technical proposals.

## The issue

A- Most of the queue is composed of full class C ip networks.   
B- The related "verifiers" are not online 24/7. Several reasons can be the cause (cycling ip, using rolling proxies, vpns...)  
C- Current queue eligibility does not require the ip to be available (open port) at all.

As a result, the queue diversity (chance for a single entity to join) is greatly reduced, plus people operationg these network do large scale economies by reducing the ressources at play.  
When a regular users pays for one VPS per ip, they pay for one vps equivalent for 256 or more ips.  
C also opens the door to extra attacks that were not fully documented yet.

Although this optimization sticks to the current Nyzo rules and seems inevitable, it is a community choice to try and reduce the gap between regular users and "ip whales", so every one has a "fair" chance to join, and end up with a more diversified Nyzo cycle.

> For instance, One Ukrainian ISP is currently using all 6144 of its IPs to send nodejoins. That's 26.8% of the queue, one single entity.
> OVH blocks account for 44% of the queue, all following a similar pattern and likely owned by one or a very few entities.
> See https://github.com/Open-Nyzo/Nyzo-Q/blob/master/cache/owners.csv

## Goal of this draft

The following proposals are not intented as a magical "fix it all" solution.  
They will make it harder for current "ip whales" to operate with the marginal edge they currently have, but can't stop them entirely.  
I feel this will always be a cat and mouse balance, where too strict rules would be additionnal attack vectors.

## Self imposed constraints
- No manual action involved  
Users don't like to vote or upgrade or take decisions. The network has to be able to decide by itself, in a decentralized and autonomous, manner
- no centralized list  
Blacklists or whitelists would just move the burden onto another layer and add more human weaknesses.
- No or not significant load for the cycle  
The queue is supposed to be way bigger than the cycle. We can't penalyse the in cycle verifiers by asking them intensive checks on in queue verifiers
- Simple and basic rules.  
Nyzo is built with very few and very simple core rules. That's one of its strength. No other layer, no complex add on, not another consensus layer.

## Potential mitigations

These are proposal I tried to keep as simple as possible, However it took time to come to this formulation.  
These are not hasty patches. Please take time to understand.  
I'll update here with additionnal info and comments from the discord and forum.

### Mitigation proposal 1: freeze new candidates ip

Mostly red ip whales verifiers often exhibit the same scheme: they have one ip when in queue, join by sentinel, then quickly spin a new verifier on another ip once in cycle. There is no proof there was even a real verifier on that ip.  

One way to mitigate that could be to require that a verifier can't change ip at join time, for something like 3 days.  
New verifiers that would join by sentinel have a 2 days period before they are thrown out because of bad metrics.  
Freezing the ip for 3 days would ensure it's the queue ip that is able to run the verifier.  

Such limit on IP change is already in place for the queue, and was in place in earlier versions for in-cycle verifiers.  
There, it would only deal with new entrants.

This would immediatly render ineffective  
- people using one network infrastructure for in queue - not able to run proper verifiers - and another one when joined  
- people exploiting the node joins spam with ip they do not fully control (no open port)

This would also complicate things for large scale container operations, free vps/amazon credits aso.

Legit users on cheap VPS may still be able to upgrade their service to a higher offer, provided they can keep the same IP.

This proposal is marginal and not needed if the fix for "mostly red" verifiers is applied.

### Mitigation proposal 2: 

This was supposed to be a somehow complex proposal to evaluate queue verifiers working and avoid "red" verifiers to be eligible.

In light of recent research, this may not be needed anymore since a simpler fix to current code may exist.  
Since I'm not able to fully evaluate the possible side effects of the - very small - needed change, This will be bring to the devs attention.

### Mitigation proposal 3: 

The proposal below is left for historical reasons.
It has been developped more deeply and can now be found with practical data at https://github.com/Open-Nyzo/Nyzo-Q

----------------------------------------------

> This one is more radical, although very easy to enforce and with no cost.   
> I'm not sure on my stance on it because of some cons. Unsure of benefit/risk ratio, to be dug. Listing for completeness.

Aggregate queue nodes by class C, allow only one candidate per class C.

- No impact on cycle itself, or current diversity of the cycle
- we only look at the queue, like we do now
- we keep track of every ip timestamps, like we do now.
- small change: when drawing a candidate for join, we filter the queue list and only keep one single ip (lowest or highest, or oldest one(beware scattering then)) per class C network.

Currently: a class C network has 256 tickets in lottery  
With that proposal: a class C network has 1 ticket only in lottery at a given time.

Pros:
- would immediatly void the edge of running verifiers on class c networks.
- would give more edge to individual users
- would enforce litteral ip diversity in the eligible queue
- Can be used in conjunction with proposals 1 and/or 2

Cons:
- Could penalize real individual queue verifiers as well.  
Say 10 different individual on contabo or vultr or any ISP share the same class C ips, although they are 10, they will only have 1 ticket (but once that ip is in, seat is free for the next one)
- Does not differentiate working/ non working verifiers, only enforces litteral in-queue ip diversity.

The current queue ips can be audited to see how that proposal would likely impact both sides.  
Maybe we would then have a clearer evaluation of potential benefit/risk.

Fancy rule option:  
Atm lottery is chain hash vs id distance.  
We could imagine hash parity or alike to say if we consider first or last candidate from every c class, or  %16 etc (modulo)  
so it's not always the same one being first for a c class, still only one candidate per class, same simple rule cycle wide.  
More fair, but slightly more complex.
