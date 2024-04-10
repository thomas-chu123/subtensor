#!/usr/bin/expect -f
set NAME [lindex $argv 0]
spawn btcli stake add --wallet.name validator --wallet.hotkey default --subtensor.chain_endpoint ws://127.0.0.1:9946
set timeout 60
expect "Stake all Tao from account:"
send "y\r"
expect "Do you want to stake to the following keys from validator:"
send "y\r"
expect "Enter password to unlock key:"
send "Test123456!\r"
expect "to: default"
send "y\r"
expect "Finalized"
expect eof
exit
