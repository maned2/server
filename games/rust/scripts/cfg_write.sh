#!/bin/bash

sudo -i -u rust bash << EOF
mkdir -p server/server/4fun43/cfg/

echo "ownerid $RUST_ADMIN_STEAM_ID_1 \"unnamed\" \"no reason\"
ownerid $RUST_ADMIN_STEAM_ID_2 \"unnamed\" \"no reason\"" > server/server/4fun43/cfg/users.cfg

echo "decay.upkeep_period_minutes \"2880\"
halloween.enabled true
halloween.murdererpopulation 5
halloween.scarecrowpopulation 5" > server/server/4fun43/cfg/server.cfg

EOF

