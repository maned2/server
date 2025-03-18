#!/bin/bash
echo "[SCRIPTS] Plugin update Welcomer..."

sudo -i -u rust bash << EOF
curl -L https://umod.org/plugins/Welcomer.cs > server/oxide/plugins/Welcomer.cs

FILE=server/oxide/config/Welcomer.json_original
if [ ! -f "$FILE" ]; then
    cp server/oxide/config/Welcomer.json "$FILE"
fi

EOF
