#!/bin/bash

cd /home/eco

cat <<EOF > server/Configs/Difficulty.eco
{
  "GameSettings": {
    "DesiredNumberOfPlayers": 10,
    "HoursPlayedPerDay": 10.0,
    "CollaborationLevel": "LowCollaboration",
    "GameSpeed": "Normal",
    "SimulationLevel": "Normal",
    "ExhaustionEnabled": true,
    "HasMeteor": true,
    "AllowFriendsToJoin": true,
    "GenerateRandomWorld": false,
    "SkillCostMultiplier": 0.1,
    "SkillGainMultiplier": 5.0,
    "SpecialtyCostMultiplier": 0.1,
    "AdvancedGameSettings": {
      "MeteorImpactInDays": 90.0,
      "MaxProfessionsPerCitizen": 10.0,
      "MaxSpecialtiesPerCitizen": 33.0,
      "SkillCostMultiplier": 0.1,
      "SkillGainMultiplier": 5.0,
      "SpecialtyCostMultiplier": 0.1,
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
      "AllowDeepOceanBuilding": true
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
          "\$values": ["76561198084389237", "76561198076681807"]
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
  "DetailedDescription": "Сервер просто для веселья. Заходите, играйте, наслаждайтесь игрой. Просим только не строиться слишком близко, и не воровать незаприваченные ресурсы. \\n
The server is just for fun. Come, play, enjoy the game. We just ask that you do not build too close, and do not steal unprivileged resources. \\n
Server rules, Правила сервера: $ECO_SITE_LINK",
  "ServerCategory": "Beginner",
  "IPAddress": "Any",
  "RemoteAddress": "",
  "WebServerUrl": "$ECO_SITE_LINK",
  "GameServerPort": 3000,
  "WebServerPort": 3001,
  "RconServerPort": 3002,
  "SteamServerPort": 3003,
  "RconIPAddress": "Any",
  "RconPassword": "$ECO_RCON_PASSWORD",
  "Rate": 20,
  "DefaultSlots": 20,
  "ReservedSlots": 5,
  "MaxUsersLoadingAtSameTime": 5,
  "ID": "dee5de7f-f836-47a6-9c97-a77cc0477b8c",
  "Passport": "75e29abf-8d87-40c3-ba72-09600954947c",
  "UPnPEnabled": true,
  "RelayServerAddress": ""
}
EAF

cat <<EAF > server/Configs/Exhaustion.eco
{
  "RefreshLocalHours": 0,
  "RefreshLocalMinutes": 0,
  "MondayExhaustionRefreshHours": 8.0,
  "TuesdayExhaustionRefreshHours": 8.0,
  "WednesdayExhaustionRefreshHours": 8.0,
  "ThursdayExhaustionRefreshHours": 8.0,
  "FridayExhaustionRefreshHours": 8.0,
  "SaturdayExhaustionRefreshHours": 8.0,
  "SundayExhaustionRefreshHours": 8.0,
  "AllowPlaytimeSaving": true,
  "MaxSavedHours": 16.0,
  "AllowExhaustionPauseOnRest": true,
  "BonusHoursOnExhaustionEnabled": 3.0,
  "BonusRetroactiveHoursAfterStart": true,
  "Vehicles": [
    {
      "Name": "Wood Shop Cart",
      "IsExhaustable": false
    },
    {
      "Name": "Crane",
      "IsExhaustable": false
    },
    {
      "Name": "Excavator",
      "IsExhaustable": true
    },
    {
      "Name": "Hand Plow",
      "IsExhaustable": true
    },
    {
      "Name": "Industrial Elevator",
      "IsExhaustable": false
    },
    {
      "Name": "Small Wood Cart",
      "IsExhaustable": false
    },
    {
      "Name": "Large Canoe",
      "IsExhaustable": false
    },
    {
      "Name": "Truck",
      "IsExhaustable": false
    },
    {
      "Name": "Medium Fishing Trawler",
      "IsExhaustable": true
    },
    {
      "Name": "Small Wooden Boat",
      "IsExhaustable": false
    },
    {
      "Name": "Industrial Barge",
      "IsExhaustable": false
    },
    {
      "Name": "Wheelbarrow",
      "IsExhaustable": false
    },
    {
      "Name": "Powered Cart",
      "IsExhaustable": false
    },
    {
      "Name": "Steam Tractor",
      "IsExhaustable": true
    },
    {
      "Name": "Wood Cart",
      "IsExhaustable": false
    },
    {
      "Name": "Skid Steer",
      "IsExhaustable": true
    },
    {
      "Name": "Steam Truck",
      "IsExhaustable": false
    },
    {
      "Name": "Wooden Barge",
      "IsExhaustable": false
    },
    {
      "Name": "Small Canoe",
      "IsExhaustable": false
    },
    {
      "Name": "Wooden Elevator",
      "IsExhaustable": false
    },
    {
      "Name": "Trailer Truck",
      "IsExhaustable": false
    },
    {
      "Name": "Wooden Transport Ship",
      "IsExhaustable": false
    },
    {
      "Name": "Egyptian Canoe",
      "IsExhaustable": false
    },
    {
      "Name": "Norse Canoe",
      "IsExhaustable": false
    }
  ]
}
EAF

yes | cp -rf server/Configs/WorldGenerator.eco.template server/Configs/WorldGenerator.eco

sed -i -- 's/"WorldWidth": 72,/"WorldWidth": 160,/g' server/Configs/WorldGenerator.eco
sed -i -- 's/"WorldLength": 72/"WorldLength": 160/g' server/Configs/WorldGenerator.eco
