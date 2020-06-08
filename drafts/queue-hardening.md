# Draft: Queue hardening

In the light of pasdt month queue composition, size, and related cycle join events, NCFP-10 was put to vote as a symbolic transaction to jauge the community interest in limiting some of the behaviour user coudn't help notice.

This NCFP-10 has not a single "NO" vote so far, so it seems there it is time to give some practical technical proposals.

## The issue

A- Most of the queue is composed of full class C ip networks.   
B- The related "verifiers" are not online 24/7. Several reasons can be the cause (cycling ip, using rolling proxies, vpns...)  
C- Current queue eligibility does not require the ip to be available (open port) at all.

As a result, the queue diversity (chance for a single entity to join) is greatly reduced, plus people operationg these network do large scale economies by reducing the ressources at play.  
When a regular users pays for one VPS per ip, they pay for one vps equivalent for 256 or more ips.  
C also opens the door to extra attacks that were not fully documented yet.

Although this optimization sticks to the current Nyzo rules and seems inevitable, it is the community choice to try and reduce the gap between regular users and "ip whales", so every one has a "fair" chance to join, and end up with a more diversified Nyzo cycle.

## Goal of this draft

The following proposals are not intented as a magical "fix it all" solution.  
They will make it harder for current "ip whales" to operate with the marge edge they currently have, but can't stop them entirely.  
I feel this will always be a cat and mouse balance, where too strict rules would be additionnal attack vectors.

## Self imposed constraints

