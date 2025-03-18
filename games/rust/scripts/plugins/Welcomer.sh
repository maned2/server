#!/bin/bash
echo "[SCRIPTS] Plugin update Welcomer..."

#https://umod.org/plugins/welcomer

sudo -i -u rust bash << EOF
curl -L https://umod.org/plugins/Welcomer.cs > server/oxide/plugins/Welcomer.cs

FILE=server/oxide/config/Welcomer.json_original
if [ ! -f "$FILE" ]; then
    cp server/oxide/config/Welcomer.json "$FILE"
fi

sed -i -- 's/"Welcome.Chat": "There are currently {0} active players, {1} joining, {2} sleepers, and {3} in the queue",/"Welcome.Chat": "There are currently {0} active players, {1} joining, {2} sleepers, and {3} in the queue. Please read RULES: https://romanm.yonote.ru/share/5b48feb2-f242-48f6-ba04-7b8337794cda",/g' server/oxide/config/Welcomer.json

EOF
