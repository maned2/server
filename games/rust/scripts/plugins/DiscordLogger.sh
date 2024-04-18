#!/bin/bash
echo "[SCRIPTS] Plugin update DiscordLogger..."

sudo -i -u rust bash << EOF
curl -L https://umod.org/plugins/DiscordLogger.cs > server/oxide/plugins/DiscordLogger.cs

FILE=server/oxide/config/DiscordLogger.json_original
if [ ! -f "$FILE" ]; then
    cp server/oxide/config/DiscordLogger.json FILE
fi

cat << EAF > server/oxide/config/DiscordLogger.json
{
  "Global settings": {
    "Log to console?": false,
    "Use AntiSpam plugin on chat messages": true,
    "Use UFilter plugin on chat messages": true,
    "Hide admin connect/disconnect messages": false,
    "Hide NPC death messages": true,
    "Replacement string for tags": "`",
    "Queue interval (1 message per ? seconds)": 1.0,
    "Queue cooldown if connection error (seconds)": 60.0,
    "Default WebhookURL": "$RUST_DISCORD_WEBHOOK_ADMIN",
    "RCON command blacklist": [
      "playerlist",
      "status"
    ]
  },
  "Admin Hammer settings": {
    "WebhookURL": "$RUST_DISCORD_WEBHOOK_ADMIN",
    "Enabled?": true
  },
  "Admin Radar settings": {
    "WebhookURL": "$RUST_DISCORD_WEBHOOK_ADMIN",
    "Enabled?": true
  },
  "Bradley settings": {
    "WebhookURL": "$RUST_DISCORD_WEBHOOK_EVENTS",
    "Enabled?": true
  },
  "Cargo Ship settings": {
    "WebhookURL": "$RUST_DISCORD_WEBHOOK_EVENTS",
    "Enabled?": true
  },
  "Cargo Plane settings": {
    "WebhookURL": "$RUST_DISCORD_WEBHOOK_ADMIN",
    "Enabled?": true
  },
  "Chat settings": {
    "WebhookURL": "$RUST_DISCORD_WEBHOOK_CHAT",
    "Enabled?": true
  },
  "Chat (Team) settings": {
    "WebhookURL": "$RUST_DISCORD_WEBHOOK_ADMIN",
    "Enabled?": true
  },
  "CH47 Helicopter settings": {
    "WebhookURL": "$RUST_DISCORD_WEBHOOK_EVENTS",
    "Enabled?": true
  },
  "Christmas settings": {
    "WebhookURL": "$RUST_DISCORD_WEBHOOK_EVENTS",
    "Enabled?": true
  },
  "Clan settings": {
    "WebhookURL": "$RUST_DISCORD_WEBHOOK_ADMIN",
    "Enabled?": true
  },
  "Dangerous Treasures settings": {
    "WebhookURL": "$RUST_DISCORD_WEBHOOK_EVENTS",
    "Enabled?": true
  },
  "Duel settings": {
    "WebhookURL": "$RUST_DISCORD_WEBHOOK_ADMIN",
    "Enabled?": true
  },
  "Godmode settings": {
    "WebhookURL": "$RUST_DISCORD_WEBHOOK_ADMIN",
    "Enabled?": true
  },
  "Easter settings": {
    "WebhookURL": "$RUST_DISCORD_WEBHOOK_EVENTS",
    "Enabled?": true
  },
  "Error settings": {
    "WebhookURL": "$RUST_DISCORD_WEBHOOK_ERRORS",
    "Enabled?": true
  },
  "Hackable Locked Crate settings": {
    "WebhookURL": "$RUST_DISCORD_WEBHOOK_EVENTS",
    "Enabled?": true
  },
  "Halloween settings": {
    "WebhookURL": "$RUST_DISCORD_WEBHOOK_EVENTS",
    "Enabled?": true
  },
  "Helicopter settings": {
    "WebhookURL": "$RUST_DISCORD_WEBHOOK_EVENTS",
    "Enabled?": true
  },
  "NTeleportation settings": {
    "WebhookURL": "",
    "Enabled?": false
  },
  "Permissions settings": {
    "WebhookURL": "$RUST_DISCORD_WEBHOOK_ADMIN",
    "Enabled?": true
  },
  "Player death settings": {
    "WebhookURL": "$RUST_DISCORD_WEBHOOK_OTHER",
    "Enabled?": true
  },
  "Player DeathNotes settings": {
    "WebhookURL": "",
    "Enabled?": false
  },
  "Player connect advanced info settings": {
    "WebhookURL": "$RUST_DISCORD_WEBHOOK_ADMIN",
    "Enabled?": false
  },
  "Player connect settings": {
    "WebhookURL": "$RUST_DISCORD_WEBHOOK_OTHER",
    "Enabled?": true
  },
  "Player disconnect settings": {
    "WebhookURL": "$RUST_DISCORD_WEBHOOK_OTHER",
    "Enabled?": true
  },
  "Player Respawned settings": {
    "WebhookURL": "$RUST_DISCORD_WEBHOOK_ADMIN",
    "Enabled?": true
  },
  "Private Messages settings": {
    "WebhookURL": "$RUST_DISCORD_WEBHOOK_ADMIN",
    "Enabled?": true
  },
  "Raidable Bases settings": {
    "WebhookURL": "$RUST_DISCORD_WEBHOOK_EVENTS",
    "Enabled?": true
  },
  "Rcon command settings": {
    "WebhookURL": "$RUST_DISCORD_WEBHOOK_ADMIN",
    "Enabled?": true
  },
  "Rcon connection settings": {
    "WebhookURL": "$RUST_DISCORD_WEBHOOK_ADMIN",
    "Enabled?": true
  },
  "Rust Kits settings": {
    "WebhookURL": "$RUST_DISCORD_WEBHOOK_ADMIN",
    "Enabled?": true
  },
  "SantaSleigh settings": {
    "WebhookURL": "$RUST_DISCORD_WEBHOOK_ADMIN",
    "Enabled?": true
  },
  "Server messages settings": {
    "WebhookURL": "$RUST_DISCORD_WEBHOOK_OTHER",
    "Enabled?": false
  },
  "Server state settings": {
    "WebhookURL": "$RUST_DISCORD_WEBHOOK_ADMIN",
    "Enabled?": true
  },
  "Supply Drop settings": {
    "WebhookURL": "$RUST_DISCORD_WEBHOOK_ADMIN",
    "Enabled?": true
  },
  "Teams settings": {
    "WebhookURL": "$RUST_DISCORD_WEBHOOK_ADMIN",
    "Enabled?": true
  },
  "User Banned settings": {
    "WebhookURL": "$RUST_DISCORD_WEBHOOK_ADMIN",
    "Enabled?": true
  },
  "User Kicked settings": {
    "WebhookURL": "$RUST_DISCORD_WEBHOOK_ADMIN",
    "Enabled?": true
  },
  "User Muted settings": {
    "WebhookURL": "$RUST_DISCORD_WEBHOOK_ADMIN",
    "Enabled?": true
  },
  "User Name Updated settings": {
    "WebhookURL": "$RUST_DISCORD_WEBHOOK_ADMIN",
    "Enabled?": true
  },
  "Vanish settings": {
    "WebhookURL": "$RUST_DISCORD_WEBHOOK_ADMIN",
    "Enabled?": true
  }
}
EAF

EOF
