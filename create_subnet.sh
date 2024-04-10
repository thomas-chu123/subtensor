#!/usr/bin/expect -f
set NAME [lindex $argv 0]
spawn btcli subnet create --wallet.name owner --subtensor.chain_endpoint ws://127.0.0.1:9946
set timeout 60
expect "Do you want to register a subnet for"
send "y\r"
expect "Enter password to unlock key:"
send "Test123456!\r"
expect "Registered"
expect eof
exit
