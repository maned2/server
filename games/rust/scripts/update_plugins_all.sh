#!/bin/bash

cd $RUST_SCRIPTS_FOLDER

echo "[SCRIPTS] Server updating oxide plugins..."

#sh ./extensions/Discord.sh

#sh ./plugins/AdminRadar.sh
#sh ./plugins/AntiSpam.sh
#sh ./plugins/AutomatedEvents.sh
sh ./plugins/BuildingActions.sh
#sh ./plugins/ConnectMessages.sh
sh ./plugins/CopyPaste.sh
sh ./plugins/DangerousTreasures.sh
#sh ./plugins/DiscordLogger.sh
#sh ./plugins/DiscordSignLogger.sh
#sh ./plugins/DiscordStatus.sh
#sh ./plugins/GUIAnnouncements.sh
# sh ./plugins/NightZombies.sh
sh ./plugins/PreventLooting.sh
sh ./plugins/RaidableBases.sh
#sh ./plugins/RainOfFire.sh
#sh ./plugins/SimpleKillFeed.sh
#sh ./plugins/SmartChatBot.sh
#sh ./plugins/SmoothRestarter.sh
#sh ./plugins/StopStupidPings.sh
#sh ./plugins/TimedEvents.sh
sh ./plugins/TruePVE.sh
#sh ./plugins/UFilter.sh
sh ./plugins/Welcomer.sh
sh ./plugins/ZLevelsRemastered.sh
#sh ./plugins/ZoneDomes.sh
sh ./plugins/ZoneManager.sh
sh ./plugins/ZoneManagerAutoZones.sh

#https://umod.org/plugins/discord-sign-logger
#https://umod.org/plugins/welcomer
#https://umod.org/plugins/smart-chat-bot