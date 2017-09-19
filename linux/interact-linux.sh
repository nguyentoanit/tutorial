#!/usr/bin/expect
#How to enter ssh password using bash?
#Script
spawn hg pull url
expect "password: "
send "password\r"
interact
#First install expect and run sell script file by command: /urs/bin/expect file-script