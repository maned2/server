#!/bin/bash

sudo -i -u rust bash << EOF
cd server
curl -L https://umod.org/plugins/DiscordStatus.cs > oxide/plugins/DiscordStatus.cs

sed -i -- "s/\"Discord Bot Token\": \"\",/\"Discord Bot Token\": \"${RUST_DISCORD_BOT_TOKEN}\",/g" server/oxide/config/DiscordStatus.json
sed -i -- '/"{server.entities} Entities",/d' server/oxide/config/DiscordStatus.json
sed -i -- 's/"{players.authenticated} Linked Account(s)"/"{players.queued} \/ {players.joining} queued\/joining"/g' server/oxide/config/DiscordStatus.json
EOF
