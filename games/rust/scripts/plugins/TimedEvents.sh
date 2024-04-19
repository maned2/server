#!/bin/bash
# https://umod.org/plugins/timed-events
echo "[SCRIPTS] Plugin update TimedEvents..."

sudo -i -u rust bash << EOF
curl -L https://umod.org/plugins/TimedEvents.cs > server/oxide/plugins/TimedEvents.cs

FILE=server/oxide/config/TimedEvents.json_original
if [ ! -f "$FILE" ]; then
    cp server/oxide/config/TimedEvents.json FILE
fi

echo '{
  "1. Cargo plane settings:": {
    "1. Disable default spawns": false,
    "2. Minimal respawn time (in seconds)": 0,
    "3. Maximal respawn time (in seconds)": 7200,
    "4. Minimal amount that spawned by once": 1,
    "5. Maximal amount that spawned by once": 2,
    "6. Minimal players to start event": 0
  },
  "2. Patrol Helicopter settings:": {
    "1. Disable default spawns": false,
    "2. Minimal respawn time (in seconds)": 0,
    "3. Maximal respawn time (in seconds)": 7200,
    "4. Minimal amount that spawned by once": 1,
    "5. Maximal amount that spawned by once": 2,
    "6. Minimal players to start event": 0
  },
  "3. Bradley APC settings:": {
    "1. Disable default spawns": false,
    "2. Minimal respawn time (in seconds)": 3600,
    "3. Maximal respawn time (in seconds)": 7200,
    "4. Minimal amount that spawned by once": 1,
    "5. Maximal amount that spawned by once": 2,
    "6. Minimal players to start event": 0
  },
  "4. CH47 settings:": {
    "1. Disable default spawns": true,
    "2. Minimal respawn time (in seconds)": 0,
    "3. Maximal respawn time (in seconds)": 7200,
    "4. Minimal amount that spawned by once": 1,
    "5. Maximal amount that spawned by once": 1,
    "6. Minimal players to start event": 0
  },
  "5. Cargo ship settings:": {
    "1. Disable default spawns": false,
    "2. Minimal respawn time (in seconds)": 3600,
    "3. Maximal respawn time (in seconds)": 7200,
    "4. Minimal amount that spawned by once": 1,
    "5. Maximal amount that spawned by once": 1,
    "6. Minimal players to start event": 0
  }
}' > server/oxide/config/TimedEvents.json
EOF
