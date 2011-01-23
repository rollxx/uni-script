#!/usr/bin/expect -f
#
# A script for auto login into studnet account
# to execute change the user name and password and run it in terminal
#

set server "139.18.143.253"
set uname "XXXXXX"
set pass "XXXXXXX"
set timeout -1

#spawn ssh -l $uname $server
match_max 100000

expect "*?assword:*"

send -- "$pass\r"

send -- "\r"
expect eof

