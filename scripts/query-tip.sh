#!/bin/sh
source socket-path.sh 
echo $CARDANO_NODE_SOCKET_PATH
$path/cardano-cli query tip --testnet-magic 1

