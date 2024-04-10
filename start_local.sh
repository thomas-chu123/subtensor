BUILD_BINARY=0 ./scripts/localnet.sh >> local.log &
./earn_all.sh
./create_subnet.sh
./register.sh miner
./register.sh validator
./stake.sh 
./reg_root.sh
./boost.sh
btcli subnet list --subtensor.chain_endpoint ws://127.0.0.1:9946
btcli wallet overview --wallet.name owner --subtensor.chain_endpoint ws://127.0.0.1:9946
btcli wallet overview --wallet.name validator --subtensor.chain_endpoint ws://127.0.0.1:9946
btcli wallet overview --wallet.name miner --subtensor.chain_endpoint ws://127.0.0.1:9946
