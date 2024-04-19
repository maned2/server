#!/bin/bash
echo "[SCRIPTS] Plugin update SmoothRestarter..."

sudo -i -u rust bash << EOF
curl -L https://umod.org/plugins/SmoothRestarter.cs > server/oxide/plugins/SmoothRestarter.cs

FILE=server/oxide/config/SmoothRestarter.json_original
if [ ! -f "$FILE" ]; then
    cp server/oxide/config/SmoothRestarter.json FILE
fi

sed -i -- 's/"0:00"/"9:00"/g' server/oxide/config/SmoothRestarter.json
sed -i -- 's/"Restart when new Oxide.Rust is out": true,/"Restart when new Oxide.Rust is out": false,/g' server/oxide/config/SmoothRestarter.json
EOF
