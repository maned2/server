#!/bin/bash

sudo -i -u rust bash << EOF
cd server
echo "[SCRIPTS] Server updating oxide plugins..."
#rm oxide/plugins/*

curl -L https://umod.org/plugins/ConnectMessages.cs > oxide/plugins/ConnectMessages.cs
curl -L https://umod.org/plugins/SimpleKillFeed.cs > oxide/plugins/SimpleKillFeed.cs

curl -L https://umod.org/plugins/SmoothRestarter.cs > oxide/plugins/SmoothRestarter.cs

curl -L https://umod.org/plugins/BuildingActions.cs > oxide/plugins/BuildingActions.cs

curl -L https://umod.org/plugins/ZLevelsRemastered.cs > oxide/plugins/ZLevelsRemastered.cs

curl -L https://umod.org/plugins/TruePVE.cs > oxide/plugins/TruePVE.cs
curl -L https://umod.org/plugins/PreventLooting.cs > oxide/plugins/PreventLooting.cs

curl -L https://umod.org/plugins/ZoneManager.cs > oxide/plugins/ZoneManager.cs
curl -L https://umod.org/plugins/ZoneManagerAutoZones.cs > oxide/plugins/ZoneManagerAutoZones.cs
curl -L https://umod.org/plugins/ZoneDomes.cs > oxide/plugins/ZoneDomes.cs


curl -L https://umod.org/plugins/AutomatedEvents.cs > oxide/plugins/AutomatedEvents.cs
curl -L https://umod.org/plugins/TimedEvents.cs > oxide/plugins/TimedEvents.cs
curl -L https://umod.org/plugins/NightZombies.cs > oxide/plugins/NightZombies.cs
curl -L https://umod.org/plugins/RaidableBases.cs > oxide/plugins/RaidableBases.cs
curl -L https://umod.org/plugins/CopyPaste.cs > oxide/plugins/CopyPaste.cs

curl -L https://umod.org/plugins/RainOfFire.cs > oxide/plugins/RainOfFire.cs
curl -L https://umod.org/plugins/DangerousTreasures.cs > oxide/plugins/DangerousTreasures.cs
curl -L https://umod.org/plugins/DiscordLogger.cs > oxide/plugins/DiscordLogger.cs
curl -L https://umod.org/plugins/AntiSpam.cs > oxide/plugins/AntiSpam.cs
curl -L https://umod.org/plugins/UFilter.cs > oxide/plugins/UFilter.cs
EOF

sh ./plugins/discord_status.sh