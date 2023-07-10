#!/bin/sh

DATA_DIR=/root/.ethermintd
MONIKER=$1
IP=$2

cp ./config/app.toml $DATA_DIR/config/app.toml 
cp ./config/client.toml $DATA_DIR/config/client.toml 
cp ./config/config.toml $DATA_DIR/config/config.toml 
cp ./config/genesis.json $DATA_DIR/config/genesis.json 
sed -i "s/moniker = \"orchestrator\"/moniker = \"$MONIKER\"/g" $DATA_DIR/config/config.toml 
sed -i "s/external_address = \"\"/external_address = \"$IP:26656\"/g" $DATA_DIR/config/config.toml