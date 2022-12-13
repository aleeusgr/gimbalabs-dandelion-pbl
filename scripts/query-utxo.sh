source node-path.sh
source socket-path.sh

TREASURY_ADDR=addr_test1wrq28lmgudwkwvpvj5uszepttsttk5q99tvxwrdfn8agsggrfa02a
address=$(./build-address.sh)
#address=$TREASURY_ADDR


$path/cardano-cli query utxo --address $address --testnet-magic=1
