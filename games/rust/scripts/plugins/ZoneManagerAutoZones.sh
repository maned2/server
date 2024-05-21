#!/bin/bash
echo "[SCRIPTS] Plugin update ZoneManagerAutoZones..."

sudo -i -u rust bash << EOF
curl -L https://umod.org/plugins/ZoneManagerAutoZones.cs > server/oxide/plugins/ZoneManagerAutoZones.cs

FILE=server/oxide/config/ZoneManagerAutoZones.json_original
if [ ! -f "$FILE" ]; then
    cp server/oxide/config/ZoneManagerAutoZones.json "$FILE"
fi

sed -i -- 's/"Use Zone Domes Spheres over Zones": false,/"Use Zone Domes Spheres over Zones": true,/g' server/oxide/config/ZoneManagerAutoZones.json
sed -i -- 's/"Enable TruePVE to allow Rule Sets": false,/"Enable TruePVE to allow Rule Sets": true,/g' server/oxide/config/ZoneManagerAutoZones.json
EOF
