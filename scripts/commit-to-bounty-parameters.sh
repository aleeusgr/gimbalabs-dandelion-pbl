# Usage:
# fill with values

# 
source node-path.sh
CONTRIBUTORKEY=$path/keys/payment1.pkey
CONTRIBUTOR=$($path/scripts/build-address.sh)
ppbl='/home/alex/workshop/gimbalabs'
source socket-path.sh
echo $CONTRIBUTOR

# Hard code these variables for your Bounty Treasury

#TREASURY_ADDR=addr_test1wrk2n3ygme5jh05nm668eu26phljpg56pd8lts27j9ucc0qgc0ypz
#BOUNTY_ADDR=addr_test1wzyvjgjxy5mr88ny3sm96qatd90fazsj625gxjr8hhrklqsf6ftxl
TREASURY_ADDR=addr_test1wrq28lmgudwkwvpvj5uszepttsttk5q99tvxwrdfn8agsggrfa02a
BOUNTY_ADDR=addr_test1wz5y9gq4zemhm8lp343vguz487ful45zdedls9k7fhg6z9qm6h9hr

TREASURY_PLUTUS_SCRIPT="$ppbl/ppbl-course-02/project-303/bounty-treasury-escrow/output/example-bounty-treasury-new-preprod.plutus"
BOUNTY_ASSET="fb45417ab92a155da3b31a8928c873eb9fd36c62184c736f189d334c.7447696d62616c"
TREASURY_DATUM="$ppbl/ppbl-course-02/project-303/bounty-treasury-escrow/datum-and-redeemers/TreasuryDatumExample01.json"
TREASURY_ACTION="$ppbl/ppbl-course-02/project-303/bounty-treasury-escrow/datum-and-redeemers/TreasuryActionExample01.json"
BOUNTY_DATUM="$ppbl/ppbl-course-02/project-303/bounty-treasury-escrow/datum-and-redeemers/BountyEscrowDatumExample01.json"


# $path/cardano-cli query utxo --testnet-magic 1 --address $TREASURY_ADDR
CONTRACT_TXIN="c09aed80866bd5387ff221e0ca8458ef953b573e39ca682cf83110ca73ebb355#0" 
LOVELACE_AT_TREASURY=1500000

#read BOUNTY_TOKENS_AT_TREASURY
BOUNTY_TOKENS_AT_TREASURY=9999990

# $path/cardano-cli query utxo --testnet-magic 1 --address $CONTRIBUTOR

# echo "Specify a Collateral UTxO:"
COLLATERAL=
#echo "Specify a TXIN with Contributor Token:"
TXIN1=
#echo "What is the Asset ID of your Contributor Token?"
#read CONTRIBUTOR_ASSET
CONTRIBUTOR_ASSET=9a14207c494a43dc2d30eebda683b1dcf2c8b42c48dc6195c4b5e948.636f44534554
#echo "Specify a TXIN with with additional lovelace (for tx fees):"
TXIN2=
# echo "Amount of lovelace in this bounty:"
BOUNTY_LOVELACE=6500000
# echo "Number of tgimbals in this bounty:"
BOUNTY_AMOUNT=10

LOVELACE_BACK_TO_TREASURY=$(expr $LOVELACE_AT_TREASURY - $BOUNTY_LOVELACE)
TOKENS_BACK_TO_TREASURY=$(expr $BOUNTY_TOKENS_AT_TREASURY - $BOUNTY_AMOUNT)

echo $LOVELACE_BACK_TO_TREASURY
echo $TOKENS_BACK_TO_TREASURY