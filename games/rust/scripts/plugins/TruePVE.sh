#!/bin/bash
echo "[SCRIPTS] Plugin update TruePVE..."

sudo -i -u rust bash << EOF
curl -L https://umod.org/plugins/TruePVE.cs > server/oxide/plugins/TruePVE.cs

FILE=server/oxide/config/TruePVE.json_original
if [ ! -f "$FILE" ]; then
    cp server/oxide/config/TruePVE.json FILE
fi

sed -i -- "s/"useZones": false/"useZones": true/g" server/oxide/config/TruePVE.json
EOF
