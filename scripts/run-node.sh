source node-path.sh

$path/cardano-node run \
--topology $path/configuration/preprod/topology.json \
--database-path $path/preprod/db \
--socket-path $path/preprod/db/node.socket \
--host-addr 0.0.0.0 \
--port 3001 \
--config $path/configuration/preprod/config.json
