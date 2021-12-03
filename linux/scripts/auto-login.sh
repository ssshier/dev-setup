#!/bin/bash

ip=$1
password=$2

ssh-keygen -R $ip

expect << EOF

    spawn ssh-copy-id -i ~/.ssh/id_rsa.pub root@$ip
    expect {
        "*yes/no*" { send "yes\r"; exp_continue }
        "*password*" { send "$password\r" }
        "*password*" { send "$password\r" }
    }
    expect eof
EOF

