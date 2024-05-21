#!/bin/bash
echo "[SCRIPTS] Plugin update DiscordSignLogger..."

sudo -i -u rust bash << EOF
curl -L https://umod.org/plugins/DiscordSignLogger.cs > server/oxide/plugins/DiscordSignLogger.cs

FILE=server/oxide/config/DiscordSignLogger.json_original
if [ ! -f "$FILE" ]; then
    cp server/oxide/config/DiscordSignLogger.json "$FILE"
fi

sed -i -- "s/\"Discord Bot Token\": \"\",/\"Discord Bot Token\": \"${RUST_DISCORD_BOT_TOKEN}\",/g" server/oxide/config/DiscordSignLogger.json
sed -i -- "s/\"Channel ID\": \"\",/\"Channel ID\": \"${RUST_DISCORD_WEBHOOK_IMAGES}\",/g" server/oxide/config/DiscordSignLogger.json
sed -i -- "s/\"Discord Channel ID\": \"\",/\"Discord Channel ID\": \"${RUST_DISCORD_WEBHOOK_IMAGES}\",/g" server/oxide/config/DiscordSignLogger.json

EOF
