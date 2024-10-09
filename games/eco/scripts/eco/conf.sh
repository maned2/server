#!/bin/bash

cd /home/eco

cat <<EOF > server/Configs/Difficulty.eco
{
  "GameSettings": {
    "DesiredNumberOfPlayers": 10,
    "HoursPlayedPerDay": 3.0,
    "CollaborationLevel": "MediumCollaboration",
    "GameSpeed": "Normal",
    "SimulationLevel": "Normal",
    "ExhaustionEnabled": true,
    "HasMeteor": true,
    "AllowFriendsToJoin": true,
    "GenerateRandomWorld": false,
    "AdvancedGameSettings": {
      "MeteorImpactInDays": 90.0,
      "MaxProfessionsPerCitizen": 10.0,
      "MaxSpecialtiesPerCitizen": 33.0,
      "SkillCostMultiplier": 1.0,
      "SkillGainMultiplier": 2.0,
      "CraftResourceMultiplier": 1.0,
      "CraftTimeMultiplier": 1.0,
      "ClaimStakesGrantedUponSkillscrollConsumed": 0.0,
      "ClaimPapersGrantedUponSkillscrollConsumed": 0.0,
      "CanAbandonSpecialties": true,
      "SpecialtyRefundPercentage": 0.0,
      "GainCharacterExperienceWithSpecialtyExperience": 0.0,
      "StackSizeMultiplier": 4.0,
      "WeightMultiplier": 1.0,
      "FuelMultiplier": 1.0,
      "GrowthRateMultiplier": 1.0,
      "ConnectionRangeMultiplier": 1.0,
      "ShelfLifeMultiplier": 1.0,
      "AllowDeepOceanBuilding": false
    }
  },
  "EndgameCraftCost": "Normal",
  "SkillbookCraftCost": "Normal",
  "SwimSpeed": {
    "Ocean": 0.75,
    "DeepOcean": 0.25
  },
  "CalorieConsumptionRate": {
    "Ocean": 2.0,
    "DeepOcean": 30.0
  },
  "PlayerCanDrownWhenSwimming": true
}
EOF

cat <<EAF > server/Configs/Users.eco
{
  "UseWaste": false,
  "ConfigVersion": 1,
  "AllowDebugCalls": false,
  "UnStuckDisableTime": 60.0,
  "AdminCommandsLoggingLevel": "LogFileAndNotifyEveryone",
  "DelayNearbyFoodCheckMinutes": 4.0,
  "NearbyFoodSpawnLocationRadius": 20.0,
  "NearbyFoodSpawnCount": 5,
  "UseExactSpawnLocation": false,
  "SpawnLocation": {
    "x": 442,
    "y": 0,
    "z": 543
  },
  "SpawnSearchRange": 600,
  "MovementHackDetection": false,
  "RequiredOccupancyBeforeAFKKick": 0.0,
  "TimeRequiredForAFKMinutes": 0.0,
  "UserPermission": {
    "WhiteList": {
      "UserIDAddedEvent": {},
      "UserIDRemovedEvent": {},
      "Collection": {
        "System.String": {
          "\$type": "System.Collections.Generic.List\`1[[System.String, System.Private.CoreLib]], System.Private.CoreLib",
          "\$values": []
        }
      }
    },
    "BlackList": {
      "UserIDAddedEvent": {},
      "UserIDRemovedEvent": {},
      "Collection": {
        "Eco.Gameplay.Players.TimeUser": {
          "\$type": "System.Collections.Generic.List\`1[[Eco.Gameplay.Players.TimeUser, Eco.Gameplay]], System.Private.CoreLib",
          "\$values": []
        }
      }
    },
    "MuteList": {
      "UserIDAddedEvent": {},
      "UserIDRemovedEvent": {},
      "Collection": {
        "Eco.Gameplay.Players.TimeUser": {
          "\$type": "System.Collections.Generic.List\`1[[Eco.Gameplay.Players.TimeUser, Eco.Gameplay]], System.Private.CoreLib",
          "\$values": []
        }
      }
    },
    "Admins": {
      "UserIDAddedEvent": {},
      "UserIDRemovedEvent": {},
      "Collection": {
        "System.String": {
          "\$type": "System.Collections.Generic.List\`1[[System.String, System.Private.CoreLib]], System.Private.CoreLib",
          "\$values": ["$ECO_ADMIN_1_ID"]
        }
      }
    },
    "QueuePriorities": {
      "Eco.Gameplay.Players.QueuePriority": {
        "\$type": "System.Collections.Generic.List\`1[[Eco.Gameplay.Players.QueuePriority, Eco.Gameplay]], System.Private.CoreLib",
        "\$values": [
          {
            "Priority": 0,
            "Title": "Default Priority",
            "Users": ""
          },
          {
            "Priority": 1,
            "Title": "Priority 1",
            "Users": ""
          },
          {
            "Priority": 2,
            "Title": "Priority 2",
            "Users": ""
          }
        ]
      }
    },
    "UsersWithReservedSlotsAtQueue": {
      "UserIDAddedEvent": {},
      "UserIDRemovedEvent": {},
      "Collection": {
        "System.String": {
          "\$type": "System.Collections.Generic.List\`1[[System.String, System.Private.CoreLib]], System.Private.CoreLib",
          "\$values": []
        }
      }
    }
  }
}
EAF

cat <<EAF > server/Configs/Network.eco
{
  "PublicServer": true,
  "Playtime": "",
  "DiscordAddress": "$ECO_DISCORD_INVITE_LINK",
  "Password": "",
  "Name": "4fun4 | RU | EN | NoMods | Meteor 90 days | 2.56 km2",
  "DetailedDescription": "Сервер просто для веселья. Заходите, играйте, наслаждайтесь игрой. Просим только не строиться слишком близко, и не воровать незаприваченные ресурсы.
The server is just for fun. Come, play, enjoy the game. We just ask that you do not build too close, and do not steal unprivileged resources",
  "ServerCategory": "Beginner",
  "IPAddress": "Any",
  "RemoteAddress": "",
  "WebServerUrl": "",
  "GameServerPort": 3000,
  "WebServerPort": 3001,
  "RconServerPort": 3002,
  "SteamServerPort": 3003,
  "RconIPAddress": "Any",
  "RconPassword": "$ECO_RCON_PASSWORD",
  "Rate": 20,
  "DefaultSlots": -1,
  "ReservedSlots": 5,
  "MaxUsersLoadingAtSameTime": 20,
  "ID": "dee5de7f-f836-47a6-9c97-a77cc0477b8c",
  "Passport": "75e29abf-8d87-40c3-ba72-09600954947c",
  "UPnPEnabled": true,
  "RelayServerAddress": ""
}
EAF

sed -i -- 's/"WorldWidth": 72,/"WorldWidth": 160,/g' server/Configs/WorldGenerator.eco
sed -i -- 's/"WorldLength": 72/"WorldLength": 160/g' server/Configs/WorldGenerator.eco
