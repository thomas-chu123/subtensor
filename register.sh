#!/usr/bin/expect -f
set NAME [lindex $argv 0]
spawn btcli subnet register --wallet.name $NAME --wallet.hotkey default --subtensor.chain_endpoint ws://127.0.0.1:9946
set timeout 60
expect "Enter netuid"
send "1\r"
expect "Do you want to continue?"
send "y\r"
expect "Enter password to unlock key:"
send "Test123456!\r"
expect "Recycle"
send "y\r"
expect "Registered"
expect eof
exit
