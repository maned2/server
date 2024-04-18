#!/bin/bash
echo "[SCRIPTS] Plugin update PreventLooting..."

sudo -i -u rust bash << EOF
curl -L https://umod.org/plugins/PreventLooting.cs > server/oxide/plugins/PreventLooting.cs

FILE=server/oxide/config/PreventLooting.json_original
if [ ! -f "$FILE" ]; then
    cp server/oxide/config/PreventLooting.json FILE
fi

sed -i -- "s/"UseZoneManager": false,/"UseZoneManager": true,/g" server/oxide/config/PreventLooting.json
EOF
