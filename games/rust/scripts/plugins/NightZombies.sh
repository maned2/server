#!/bin/bash
echo "[SCRIPTS] Plugin update NightZombies..."

sudo -i -u rust bash << EOF
curl -L https://umod.org/plugins/NightZombies.cs > server/oxide/plugins/NightZombies.cs

FILE=server/oxide/config/NightZombies.json_original
if [ ! -f "$FILE" ]; then
    cp server/oxide/config/NightZombies.json "$FILE"
fi

echo '{
  "Spawn Settings": {
    "Always Spawned": true,
    "Spawn Time": 19.8,
    "Destroy Time": 7.3,
    "Spawn near players": false,
    "Min pop for near player spawn": 1,
    "Min distance from player": 40.0,
    "Max distance from player": 80.0,
    "Zombie Settings": {
      "Display Name": "Scarecrow",
      "Scarecrow Population (total amount)": 100,
      "Scarecrow Health": 200.0,
      "Scarecrow Kits": []
    },
    "Chance Settings": {
      "Chance per cycle": 50.0,
      "Days betewen spawn": 0
    }
  },
  "Destroy Settings": {
    "Leave Corpse, when destroyed": false,
    "Leave Corpse, when killed by player": true,
    "Spawn Loot": true,
    "Half bodybag despawn time": true
  },
  "Behaviour Settings": {
    "Attack sleeping players": false,
    "Zombies attacked by outpost sentries": true,
    "Throw Grenades": true,
    "Ignore Human NPCs": true,
    "Ignored entities (full entity shortname)": [
      "scientistjunkpile.prefab",
      "scarecrow.prefab"
    ]
  },
  "Broadcast Settings": {
    "Broadcast spawn amount": false
  }
}' > server/oxide/config/NightZombies.json
EOF
