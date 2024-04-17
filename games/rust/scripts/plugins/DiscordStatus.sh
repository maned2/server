#!/bin/bash

sudo -i -u rust bash << EOF
curl -L https://umod.org/plugins/DiscordStatus.cs > server/oxide/plugins/DiscordStatus.cs

FILE=server/oxide/config/DiscordStatus.json_original
if [ ! -f "$FILE" ]; then
    cp server/oxide/config/DiscordStatus.json FILE
fi

sed -i -- "s/\"Discord Bot Token\": \"\",/\"Discord Bot Token\": \"${RUST_DISCORD_BOT_TOKEN}\",/g" server/oxide/config/DiscordStatus.json
sed -i -- '/"{server.entities} Entities",/d' server/oxide/config/DiscordStatus.json
sed -i -- 's/"{players.authenticated} Linked Account(s)"/"{players.queued} \/ {players.joining} queued\/joining"/g' server/oxide/config/DiscordStatus.json
EOF
