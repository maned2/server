#! /bin/bash

log="logger -t ssh-wrapper"

ip=`echo $SSH_CONNECTION | cut -d " " -f 1`

$log $USER login from $ip
today=`date '+%Y.%m.%d-%H:%M:%S'`;
. ./tg_send_msg.sh "ssh" "$USER login from ip $ip" > /dev/null 2>&1

$log command: ${SSH_ORIGINAL_COMMAND:-shell}
${SSH_ORIGINAL_COMMAND:-/bin/bash}

$log $USER logout
today=`date '+%Y.%m.%d-%H:%M:%S'`;
. ./tg_send_msg.sh "ssh" "$USER logout from ip $ip" > /dev/null 2>&1
