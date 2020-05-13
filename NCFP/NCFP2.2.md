# NCFP2.2

## Subject

Bounty for security report disclosure, from 2 independant researchers.  
**Fixed in Nyzo version 572** https://tech.nyzo.co/releaseNotes/v572

## Status:

PENDING

## Context

> The NicknameManager issue, addressed in version 500, resulted in a ∩75,000 bounty.  
> The signature-buffer issue, addressed in version 503, resulted in a ∩225,000 bounty.  
> The TIME_WAIT issue, addressed in version 539, resulted in a ∩30,000 bounty.

From Nyzo release:  
> We encourage the cycle to provide a bounty that appropriately acknowledges the value that report of this issue provides to the community. The fixes in this build eliminate a vulnerability that, if exploited correctly, could have resulted in a cycle stall, tremendous hassle for operators of verifiers, and loss of verification positions in the cycle.

## References and discussions

- Official website with current cycle txs https://nyzo.co/cycleTransactions
- Explorer with all cycles txs and live votes details https://nyzo.today/votes/
- Reference on community forum: https://forum.nyzo.community/t/ncfp-2-ongoing-development-incentives-3rd-party/131/59

You can also use the related issue on this repo for more discussion. 

## Cycle Tx and votes

- Every vote is a pair, since it's split to two different persons.  
- You have to vote the same for both transactions in a group
- You are encouraged to vote YES for one group, NO for the others
- You can change your votes until one passes.

### Group A: 2x 47,545.75

NCFP2.2/1 `sig_g1QppQ45y-WQRW16ftpEMm-nLSPNL.NLVfmfPspq19u6sT7pYByg_L8f6_haaNe5DGM2dwXICa7iuw6e~-DQTxD3joP0`  
https://nyzo.today/votes/1c9863210587ce32cf80463dc627bd5f16bb4c70bbdc2edcf54fc5b6190497466f51d8ea4850fee20f1bf44a2b03859a9bc235fe6b94a1d275f18efbc9b2d609

NCFP2.2/2 `sig_g2kGPq81_97Rj-T3ampXC_H9Y~5I5okrKIBY2qzcsndZDzAiGV~xaA6kqMIi.tNIrxf3N6vkPBYPDQgS8WcJ_x6Ya_pG`  
https://nyzo.today/votes/2529c59201fc91f34fcd4329563997fa89ebe16b15751ab6b93a09988c6d637b9a28d2a77fa02a319466fad2f5cc2b6a03c3c06794c64eb19b243423832cfe01

How to vote from your sentinel, once in your nyzoVerifier directory,  
**YES** Vote:
```
java -jar build/libs/nyzoVerifier-1.0.jar co.nyzo.verifier.scripts.CycleTransactionSignScript sig_g1QppQ45y-WQRW16ftpEMm-nLSPNL.NLVfmfPspq19u6sT7pYByg_L8f6_haaNe5DGM2dwXICa7iuw6e~-DQTxD3joP0 1
java -jar build/libs/nyzoVerifier-1.0.jar co.nyzo.verifier.scripts.CycleTransactionSignScript sig_g2kGPq81_97Rj-T3ampXC_H9Y~5I5okrKIBY2qzcsndZDzAiGV~xaA6kqMIi.tNIrxf3N6vkPBYPDQgS8WcJ_x6Ya_pG 1
```

**NO** Vote:
```
java -jar build/libs/nyzoVerifier-1.0.jar co.nyzo.verifier.scripts.CycleTransactionSignScript sig_g1QppQ45y-WQRW16ftpEMm-nLSPNL.NLVfmfPspq19u6sT7pYByg_L8f6_haaNe5DGM2dwXICa7iuw6e~-DQTxD3joP0 0
java -jar build/libs/nyzoVerifier-1.0.jar co.nyzo.verifier.scripts.CycleTransactionSignScript sig_g2kGPq81_97Rj-T3ampXC_H9Y~5I5okrKIBY2qzcsndZDzAiGV~xaA6kqMIi.tNIrxf3N6vkPBYPDQgS8WcJ_x6Ya_pG 0
```

### Group B: 2x 29,772.875

NCFP2.2/ALT-A `sig_g69H6tzCtkTrxkfXVoeHUNXWpte95xoL8yATpTsT0iLDD1IdszJefQgH8i7gDNqK.5x6CtXyqJLAPPbg0bKoH0hSs752`  
https://nyzo.today/votes/626a19c8a5714d5a8143f9dd73aadb0e7861c3891605ee2218f56356f5012ba6981acd6e2b0e3f242a2121d09b066df4580695ce6166cba3c712d000bb57a804

NCFP2.2/ALT-B `sig_gaXgQKRPI.FWBPHYhfV43QHt2.FZfACGk68L7bqphXH7_e_r5Gd29FqX70f.A40YCnMhy41WoJtoHQDnts4U9xcunYao`  
https://nyzo.today/votes/ae50cadcf1afda38931aba44fdc40f2a9c0bda3b3e396950622e1cb658479a87fcefda1693422686791c03fd8c403a956bd18440785ec717ab299671b1362603

How to vote from your sentinel, once in your nyzoVerifier directory,  
**YES** Vote:
```
java -jar build/libs/nyzoVerifier-1.0.jar co.nyzo.verifier.scripts.CycleTransactionSignScript sig_g69H6tzCtkTrxkfXVoeHUNXWpte95xoL8yATpTsT0iLDD1IdszJefQgH8i7gDNqK.5x6CtXyqJLAPPbg0bKoH0hSs752 1
java -jar build/libs/nyzoVerifier-1.0.jar co.nyzo.verifier.scripts.CycleTransactionSignScript sig_gaXgQKRPI.FWBPHYhfV43QHt2.FZfACGk68L7bqphXH7_e_r5Gd29FqX70f.A40YCnMhy41WoJtoHQDnts4U9xcunYao 1
```

**NO** Vote:
```
java -jar build/libs/nyzoVerifier-1.0.jar co.nyzo.verifier.scripts.CycleTransactionSignScript sig_g69H6tzCtkTrxkfXVoeHUNXWpte95xoL8yATpTsT0iLDD1IdszJefQgH8i7gDNqK.5x6CtXyqJLAPPbg0bKoH0hSs752 0
java -jar build/libs/nyzoVerifier-1.0.jar co.nyzo.verifier.scripts.CycleTransactionSignScript sig_gaXgQKRPI.FWBPHYhfV43QHt2.FZfACGk68L7bqphXH7_e_r5Gd29FqX70f.A40YCnMhy41WoJtoHQDnts4U9xcunYao 0
```


### Group C: 2x 12,000.00

NCFP2.2/572A `sig_g29i9b-prZ6t_wXNqw9ZNKgIDJ3epYLKXeRRyNkQvNY5PXK-7jp3Q0618Igdg~7x5GzIVtjMV~K3mo-5kX451N1na.mM`  
https://nyzo.today/votes/225224bf186bb19cfdfe7065f27bc2d42b9ac0ce63abade4ecf38705327b0e85c79b7c1d3603c8018122b40d43e1e01698abddc4efdfeb43557f055391050700

NCFP2.2/572B `sig_g3G4j6PJIcR7gDMZ9B4Wymp-ctm2PHU30Bns_.u-GseScq_vbXJg9GE.CJz6ZfhfUttQPAqLDjIWiKe6GPwJrxWN63Rj`  
https://nyzo.today/votes/3a444c6c6cacccc7426bfb26413885563c31c542c6ad8302459bffd77ca5b3b4319fde2f9b102699fd96c886ecf44fd9c732c6366e993af84ad386a717ec6a0e

How to vote from your sentinel, once in your nyzoVerifier directory,  
**YES** Vote:
```
java -jar build/libs/nyzoVerifier-1.0.jar co.nyzo.verifier.scripts.CycleTransactionSignScript sig_g29i9b-prZ6t_wXNqw9ZNKgIDJ3epYLKXeRRyNkQvNY5PXK-7jp3Q0618Igdg~7x5GzIVtjMV~K3mo-5kX451N1na.mM 1
java -jar build/libs/nyzoVerifier-1.0.jar co.nyzo.verifier.scripts.CycleTransactionSignScript sig_g3G4j6PJIcR7gDMZ9B4Wymp-ctm2PHU30Bns_.u-GseScq_vbXJg9GE.CJz6ZfhfUttQPAqLDjIWiKe6GPwJrxWN63Rj 1
```

**NO** Vote:
```
java -jar build/libs/nyzoVerifier-1.0.jar co.nyzo.verifier.scripts.CycleTransactionSignScript sig_g29i9b-prZ6t_wXNqw9ZNKgIDJ3epYLKXeRRyNkQvNY5PXK-7jp3Q0618Igdg~7x5GzIVtjMV~K3mo-5kX451N1na.mM 0
java -jar build/libs/nyzoVerifier-1.0.jar co.nyzo.verifier.scripts.CycleTransactionSignScript sig_g3G4j6PJIcR7gDMZ9B4Wymp-ctm2PHU30Bns_.u-GseScq_vbXJg9GE.CJz6ZfhfUttQPAqLDjIWiKe6GPwJrxWN63Rj 0
```

