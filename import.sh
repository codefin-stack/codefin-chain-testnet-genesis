#!/bin/sh

DATA_DIR=$1
MONIKER=$2

cp ./config/app.toml $DATA_DIR/config/app.toml 
cp ./config/client.toml $DATA_DIR/config/client.toml 
cp ./config/config.toml $DATA_DIR/config/config.toml 
cp ./config/genesis.json $DATA_DIR/config/genesis.json 
sed -i "s/moniker = \"orchestrator\"/moniker = "$MONIKER"/g" $DATA_DIR/config/config.toml 