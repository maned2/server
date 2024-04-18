#!/bin/bash
echo "[SCRIPTS] Plugin update UFilter..."

sudo -i -u rust bash << EOF
curl -L https://umod.org/plugins/UFilter.cs > server/oxide/plugins/UFilter.cs

FILE=server/oxide/config/UFilter.json_original
if [ ! -f "$FILE" ]; then
    cp server/oxide/config/UFilter.json FILE
fi
EOF
