# Usage:
# fill with values

# 
source node-path.sh
CONTRIBUTORKEY=$path/keys/payment1.skey
CONTRIBUTOR=$($path/scripts/build-address.sh)
ppbl='/home/alex/workshop/gimbalabs'
source socket-path.sh
echo "Contributor address:"
echo $CONTRIBUTOR

# Hard code these variables for your Bounty Treasury

TREASURY_ADDR=addr_test1wrq28lmgudwkwvpvj5uszepttsttk5q99tvxwrdfn8agsggrfa02a
BOUNTY_ADDR=addr_test1wz5y9gq4zemhm8lp343vguz487ful45zdedls9k7fhg6z9qm6h9hr
BOUNTY_ASSET="02aa7e9d83f43ad54ab2585900292db7280ec43410e7563dac934d17.44534554"

TREASURY_PLUTUS_SCRIPT="$ppbl/ppbl-course-02/project-303/bounty-treasury-escrow/output/example-bounty-treasury-new-preprod.plutus"
TREASURY_DATUM="$ppbl/ppbl-course-02/project-303/bounty-treasury-escrow/datum-and-redeemers/TreasuryDatumExample01.json"
TREASURY_ACTION="$ppbl/ppbl-course-02/project-303/bounty-treasury-escrow/datum-and-redeemers/TreasuryActionExample01.json"
BOUNTY_DATUM="$ppbl/ppbl-course-02/project-303/bounty-treasury-escrow/datum-and-redeemers/BountyEscrowDatumExample01.json"


# $path/cardano-cli query utxo --testnet-magic 1 --address $TREASURY_ADDR

CONTRACT_TXIN=c09aed80866bd5387ff221e0ca8458ef953b573e39ca682cf83110ca73ebb355#2
LOVELACE_AT_TREASURY=1500000
BOUNTY_TOKENS_AT_TREASURY=9999990

# $path/cardano-cli query utxo --testnet-magic 1 --address $CONTRIBUTOR

CONTRIBUTOR_ASSET="9a14207c494a43dc2d30eebda683b1dcf2c8b42c48dc6195c4b5e948.636f44534554"
# TXIN1 has to hold CONTRIBUTOR_ASSET
TXIN1=4f8962fc94718bd516e22d8ad72bdd25f14ad62ecbdc3ad0159be4db7151e6dc#0
TXIN2=db3fa2dcb77e1a935705fd85bf8a46ee796a3cec447b6343c62680eebea92f94#0
COLLATERAL=db3fa2dcb77e1a935705fd85bf8a46ee796a3cec447b6343c62680eebea92f94#0
BOUNTY_LOVELACE=6500000
BOUNTY_AMOUNT=10

LOVELACE_BACK_TO_TREASURY=$(expr $LOVELACE_AT_TREASURY - $BOUNTY_LOVELACE)
TOKENS_BACK_TO_TREASURY=$(expr $BOUNTY_TOKENS_AT_TREASURY - $BOUNTY_AMOUNT)

echo $LOVELACE_BACK_TO_TREASURY
echo $TOKENS_BACK_TO_TREASURY
echo $TREASURY_DATUM
$path/cardano-cli transaction build \
--babbage-era \
--tx-in $CONTRACT_TXIN \
--tx-in-script-file $TREASURY_PLUTUS_SCRIPT \
--tx-in-datum-file $TREASURY_DATUM \
--tx-in-redeemer-file $TREASURY_ACTION \
--tx-in $TXIN1 \
--tx-in $TXIN2 \
--tx-in-collateral $COLLATERAL \
--tx-out $BOUNTY_ADDR+"$BOUNTY_LOVELACE + 1 $CONTRIBUTOR_ASSET + $BOUNTY_AMOUNT $BOUNTY_ASSET" \
--tx-out-datum-embed-file $BOUNTY_DATUM \
--tx-out $TREASURY_ADDR+"$LOVELACE_BACK_TO_TREASURY + $TOKENS_BACK_TO_TREASURY $BOUNTY_ASSET" \
--tx-out-datum-embed-file $TREASURY_DATUM \
--change-address $CONTRIBUTOR \
--protocol-params-file /home/alex/protocol.json \ 
--testnet-magic 1 \
--out-file commitment-tx.draft

