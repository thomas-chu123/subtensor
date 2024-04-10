#!/bin/bash

for (( i=1; i<=5; i=i+1 )); do
    ./earn_coin.sh owner
done
./earn_coin.sh miner
./earn_coin.sh validator
