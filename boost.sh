#!/usr/bin/expect -f
set NAME [lindex $argv 0]
spawn btcli root boost --netuid 1 --increase 0.1 --wallet.name validator --wallet.hotkey default --subtensor.chain_endpoint ws://127.0.0.1:9946
set timeout 60
expect "uids: tensor"
send "y\r"
expect "Finalized"
expect eof
exit
