#!/bin/bash

sudo -i -u rust bash << EOF
cd server
echo "[SCRIPTS] Server updating steam..."
/usr/games/steamcmd +force_install_dir /home/rust/server/ +login anonymous +app_update 258550 validate +quit
chmod +x /home/rust/server/runds.sh
EOF