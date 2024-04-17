#!/bin/bash
# https://umod.org/plugins/anti-spam

sudo -i -u rust bash << EOF
curl -L https://umod.org/plugins/AntiSpam.cs > server/oxide/plugins/AntiSpam.cs

FILE=server/oxide/config/AntiSpam.json_original
if [ ! -f "$FILE" ]; then
    cp server/oxide/config/AntiSpam.json FILE
fi

sed -i -- 's/"Filter chat messages": false,/"Filter chat messages": true,/g' server/oxide/config/AntiSpam.json
sed -i -- 's/"Filter player names": false,/"Filter player names": true,/g' server/oxide/config/AntiSpam.json
sed -i -- 's/"Use UFilter plugin on player names": false,/"Use UFilter plugin on player names": true,/g' server/oxide/config/AntiSpam.json
EOF

