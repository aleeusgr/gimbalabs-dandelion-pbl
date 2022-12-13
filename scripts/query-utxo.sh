source node-path.sh
source socket-path.sh
address=$(./build-address.sh)

$path/cardano-cli query utxo --address $address --testnet-magic=1
