#!/bin/bash

sudo -i -u rust bash << EOF
mkdir -p server/server/4fun42/cfg/

echo "ownerid $RUST_ADMIN_STEAM_ID_1 \"unnamed\" \"no reason\"
ownerid $RUST_ADMIN_STEAM_ID_2 \"unnamed\" \"no reason\"" > server/server/4fun43/cfg/users.cfg

echo "wipetimer.wipetimezone: \"Asia/Krasnoyarsk\"" > server/server/4fun43/cfg/server.cfg

EOF

