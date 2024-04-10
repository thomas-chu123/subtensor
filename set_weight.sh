#!/usr/bin/expect -f
set NAME [lindex $argv 0]
spawn btcli root register --wallet.name validator --wallet.hotkey default --subtensor.chain_endpoint ws://127.0.0.1:9946
set timeout 60
expect "Enter password to unlock key:"
send "Test123456!\r"
expect "Register to root network?"
send "y\r"
expect "Registered"
expect eof
exit
