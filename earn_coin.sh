#!/usr/bin/expect -f
set NAME [lindex $argv 0]
spawn btcli wallet faucet --wallet.name $NAME --subtensor.chain_endpoint ws://127.0.0.1:9946
set timeout 180
expect "local"
send "y\r"
expect "Enter password to unlock key:"
send "Test123456!\r"
expect "Balance:"
send "\r"
expect eof
exit
