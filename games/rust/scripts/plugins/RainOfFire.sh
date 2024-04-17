#!/bin/bash

sudo -i -u rust bash << EOF
curl -L https://umod.org/plugins/RainOfFire.cs > server/oxide/plugins/RainOfFire.cs

FILE=server/oxide/config/RainOfFire.json_original
if [ ! -f "$FILE" ]; then
    cp server/oxide/config/RainOfFire.json FILE
fi

sed -i -- "s/"EnableAutomaticEvents": false,/"EnableAutomaticEvents": true,/g" server/oxide/config/RainOfFire.json
sed -i -- "s/"UseRandomTimer": false,/"UseRandomTimer": true/g" server/oxide/config/RainOfFire.json

EOF
