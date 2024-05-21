#!/bin/bash
echo "[SCRIPTS] Plugin update SmartChatBot..."

sudo -i -u rust bash << EOF
curl -L https://umod.org/plugins/SmartChatBot.cs > server/oxide/plugins/SmartChatBot.cs

FILE=server/oxide/config/SmartChatBot.json_original
if [ ! -f "$FILE" ]; then
    cp server/oxide/config/SmartChatBot.json "$FILE"
fi

sed -i -- "s/\"Message\": \"Do not mind, I am just a stupid bot.\"/\"Message\": \"Don't forget about our discord server!\"/g" server/oxide/config/SmartChatBot.json
sed -i -- "s/\"Message Frequency\": \"5m\",/\"Message Frequency\": \"5m\",/g" server/oxide/config/SmartChatBot.json

EOF
