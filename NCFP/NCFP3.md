# NCFP3

## Subject

Development incentive for anonymous core dev team.

## Status:

PENDING, 3/n

## Context

> The core dev team invested countless hours and personal ressources to build Nyzo and maintain the core infrastructure, not selling a single Nyzo and putting the whole fund into the hands of the community as cycle funds.  
> This account currently holds approx. 76.8 million nyzos, see https://nyzo.today/richlist/ for live balance.

> A more complete abstract can be found there: https://forum.nyzo.community/t/ncfp-3-development-incentives-for-the-nyzo-core-team-past-present-and-future/153
 
> This proposal suggests a 1-time payment from the cycle account back to the developer account as a sign of the community’s appreciation of the core team’s sustained and strong investment in the Nyzo blockchain system, of the core team’s strong vision, and of their exceptional faith in the small but active Nyzo community.

Current suggestion is to reward the team with 7.7M Nyzo, or 10% of the funds that they gave up to the community.  
Since these will be paid to special accounts, **this amount will not become available to the team quickly**: its full release could take years and would only happen if the project finds actual success in the form or real-world adoption and organic transactions.


## References and discussions

- Official website with current cycle txs https://nyzo.co/cycleTransactions
- Explorer with all cycles txs and live votes details https://nyzo.today/votes/
- Reference on community forum: https://forum.nyzo.community/t/ncfp-3-development-incentives-for-the-nyzo-core-team-past-present-and-future/153

You can also use the related issue on this repo for more discussion: https://github.com/Open-Nyzo/Nyzo-Votes/issues/2

## Cycle Tx and votes


- Since cycle TXs are capped to 100,000.00 Nyzos, this NCFP will be composed of many transactions.  
- Every transaction will be 100,000.00 Nyzos
- They will be paid in cycle to the following 10 dev accounts:

```
Nyzo 0: id__8bo.fFTWDC1m2hX6UWxw6Vgs2IsWTCJyIFAcm3V.BytZgoahsDN5
Nyzo 1: id__81oY3dDPpqkWnd2o2gpyGdWB1Ah9KDTdI2IX1kcWDG~9zSnx2qrV
Nyzo 2: id__84Vv_vrxPrMVz6AQNjx3~jj4nx.EoUE.ugTCv0hD5~Z5p5hM3PFu
Nyzo 3: id__81hqZKeFSZMPSwHMmj-8p3dD5u4e3IT4KwzTQkgphoG3ZTTQRQpV
Nyzo 4: id__86ydzPM~UNLR6qmbF~cNU2mVZo_YhwVSrc_x6JQJsszua_S7524c
Nyzo 5: id__8eBoMRRVvQQe40FV5m03CYMbzwDqpY5SWjPsjy7bKQyi07~ubwHD
Nyzo 6: id__8fx–L3AH-ow0sVuq_YKc9D_.~~MhE0g.jKCjQBYDGz72811JoPW
Nyzo 7: id__83pY4aq.~JDzI5Etvy_gfAt5qC-1mxSXE7zAq.NyRGjeRKZ72xT5
Nyzo 8: id__8dWMSD5CWsuSRFUCdC10_62~ya8nwyTzX_y7K0_H1ppYBEsF1teA
Nyzo 9: id__89aCy9_LLZby~UiUUjC0LKdyrf-djXyf6EKBV6_KNdICIpCfGqK3
```

This page will list past validated transactions as well as the current one.  
Once one goes through, the next one will be issued.


### Current Cycle transaction: NCFP-3(Part3)

`sig_gc6VHCY_yfjRc_DyosRLdi084AbY5wP9yVdTTRhajp4JUk7nbRw9c-aufwEwGY~.x0m55u.v.tGzjnA7VYP4V0m-eXyG`  
https://nyzo.today/votes/c1b7aa5ebf84f4f333f9a15dbcee3520081232fa15fc49877375d7344a4d812cd941d62f37c933c29d3df9dfa7afbd80054515df5ef5ca624d68c7dfac44dc05

To be paid to Nyzo 2.

How to vote from your sentinel, once in your nyzoVerifier directory:  
**YES** Vote:
```
java -jar build/libs/nyzoVerifier-1.0.jar co.nyzo.verifier.scripts.CycleTransactionSignScript sig_gc6VHCY_yfjRc_DyosRLdi084AbY5wP9yVdTTRhajp4JUk7nbRw9c-aufwEwGY~.x0m55u.v.tGzjnA7VYP4V0m-eXyG 1
```

**NO** Vote:
```
java -jar build/libs/nyzoVerifier-1.0.jar co.nyzo.verifier.scripts.CycleTransactionSignScript sig_gc6VHCY_yfjRc_DyosRLdi084AbY5wP9yVdTTRhajp4JUk7nbRw9c-aufwEwGY~.x0m55u.v.tGzjnA7VYP4V0m-eXyG 0
```

### Past Validated transactions

### NCFP-3(Part1)
`sig_g188HX1Vm.dF_vVmNpM7Kr97BKaMWmbyYc69rkvc6AtVI-UM05s01N4ff3I4RBVVWcYLfA~Qm3bUNEqwHPVjSgI6kNXs`  
https://nyzo.today/votes/1208ab907757d368fdedd5c18bc7b5a24792d2afe152e1e8c18969478c1a3737afcdaf0056c007010f3c3ac4ce4df7e0ceae3e3fb25432f6c2765fab1dd3d10a  
Paid to Nyzo 0.

### NCFP-3(Part2)
`sig_gbc2jqXHQd0WukMyU~RFpv_3WM.TpdWo4WfIihSPE0swbdugvutTb~PFetPykhI2ALLT1yw.zDf.mH4DioUwvN-5vZvY`  
https://nyzo.today/votes/b3024d9e6ac8d038754be1dbece861efc3e2ff7560de171383eb491d319c06df2cd75079d7352fec6839cc61511ac28eebb50617fd8a63fd56a126497d9f7b0f  
Paid to Nyzo 1.

