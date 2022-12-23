source node-path.sh
CONTRIBUTORKEY=$path/keys/payment1.skey
NAME="commit-to-bounty"

$path/cardano-cli transaction sign \
--signing-key-file $CONTRIBUTORKEY \
--testnet-magic 1 \
--tx-body-file $NAME.draft \
--out-file $NAME.signed

$path/cardano-cli transaction submit \
--tx-file $NAME.signed \
--testnet-magic 1

