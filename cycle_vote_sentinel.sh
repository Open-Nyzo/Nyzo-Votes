#!/bin/bash

# Vote for several cycle tx in one go.
# To be run from your sentinel directory  (cd /home/ubuntu/nyzoVerifier or cd /root/nyzoVerifier)
# provide text file with one sig a line as first parameter 
# provide vote option as second parameter
# ex: ./cycle_vote_sentinel.sh sigs.txt 1

# Thanks to Discord user @wxc

for transaction in $(cat $1); do
    java -jar build/libs/nyzoVerifier-1.0.jar co.nyzo.verifier.scripts.CycleTransactionSignScript transaction $2
done
