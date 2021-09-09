#!/usr/bin/env bash

source ./vars.env

eth1_port=${1:-8545}
echo eth1_port=$eth1_port

exec ganache-cli \
	--defaultBalanceEther 1000000000 \
	--gasLimit 1000000000 \
	--accounts 10 \
	--mnemonic "$ETH1_NETWORK_MNEMONIC" \
	--port $eth1_port \
	--blockTime $SECONDS_PER_ETH1_BLOCK \
	--networkId "$NETWORK_ID" \
	--chainId "$NETWORK_ID"
