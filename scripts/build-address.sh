#usage: . self.sh <KEYNAME>
source node-path.sh

#export KEYNAME=$1
KEYNAME="payment1"

#--out-file $path/payment1.addr \
$path/cardano-cli address build \
--payment-verification-key-file $path/keys/$KEYNAME.vkey \
--testnet-magic 1

