#!/bin/bash

cd /home/eco

cat <<EOF > server/Configs/Difficulty.eco
{
  "GameSettings": {
    "DesiredNumberOfPlayers": 4,
    "HoursPlayedPerDay": 16.0,
    "CollaborationLevel": "LowCollaboration",
    "GameSpeed": "Normal",
    "AnimalBehavior": "AttackNormally",
    "SimulationLevel": "Normal",
    "ExhaustionEnabled": true,
    "HasMeteor": true,
    "AllowFriendsToJoin": true,
    "GenerateRandomWorld": false,
    "AdvancedGameSettings": {
      "MeteorImpactInDays": 60.0,
      "MaxProfessionsPerCitizen": 20.0,
      "MaxSpecialtiesPerCitizen": 40.0,
      "SkillCostMultiplier": 0.5,
      "CraftResourceMultiplier": 0.5,
      "CraftTimeMultiplier": 0.5,
      "ClaimStakesGrantedUponSkillscrollConsumed": 0.2,
      "ClaimPapersGrantedUponSkillscrollConsumed": 2.0,
      "CanAbandonSpecialties": true,
      "SpecialtyRefundPercentage": 0.8,
      "GainCharacterExperienceWithSpecialtyExperience": 0.0,
      "StackSizeMultiplier": 4.0,
      "WeightMultiplier": 0.5,
      "FuelEfficiencyMultiplier": 2.0,
      "GrowthRateMultiplier": 2.0,
      "ConnectionRangeMultiplier": 4.0,
      "ShelfLifeMultiplier": 2.0,
      "AllowDeepOceanBuilding": true,
      "RequireSkillsToReplaceParts": true,
      "BrokenPartsWillDisableVehicles": true,
      "AnimalUnprovokedAttackFrequencyMultiplier": "1.0"
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
          "\$values": ["$ECO_USER_1_ID", "$ECO_USER_2_ID"]
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
  "Name": "4fun4 | RU | EN | NoMods | Meteor 60 days | 2.56 km2",
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
  "MondayExhaustionRefreshHours": 5.0,
  "TuesdayExhaustionRefreshHours": 5.0,
  "WednesdayExhaustionRefreshHours": 5.0,
  "ThursdayExhaustionRefreshHours": 5.0,
  "FridayExhaustionRefreshHours": 12.0,
  "SaturdayExhaustionRefreshHours": 12.0,
  "SundayExhaustionRefreshHours": 12.0,
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

# sed -i -- 's/"WorldWidth": 72,/"WorldWidth": 160,/g' server/Configs/WorldGenerator.eco
# sed -i -- 's/"WorldLength": 72/"WorldLength": 160/g' server/Configs/WorldGenerator.eco

cat <<EAF > server/Configs/Network.eco
{
  "PlayerReputationToCultureFormula": {
    "InputMin": 0.0,
    "InputHalflife": 5000.0,
    "OutputAtMin": 0.0,
    "OutputLimit": 13334.0
  },
  "ArtworkReputationToCultureFormula": {
    "InputMin": 0.0,
    "InputHalflife": 5000.0,
    "OutputAtMin": 0.0,
    "OutputLimit": 13334.0
  },
  "CultureValueOnResidentialPropertyToHousingValueMultiplierFormula": {
    "InputMin": 0.0,
    "InputHalflife": 500.0,
    "OutputAtMin": 1.0,
    "OutputLimit": 2.0
  },
  "SettlementClaimsPerCitizen": [
    10.0,
    20.0,
    40.0
  ],
  "SettlementClaimsPerAbandonedCitizen": [
    5.0,
    5.0,
    5.0
  ],
  "HomesteadSupportClaimsPerCitizen": [
    5.0,
    5.0,
    5.0
  ],
  "HomesteadSupportClaimsPerAbandonedCitizen": [
    3.0,
    3.0,
    3.0
  ],
  "ClaimStakesPerCitizen": [
    1.5,
    1.5,
    1.5
  ],
  "ClaimStakesPerAbandonedCitizen": [
    0.5,
    0.5,
    0.5
  ],
  "BasePlotsOnClaimStake": [
    5,
    5,
    5
  ],
  "BasePlotsOnFoundation": [
    9,
    16,
    25
  ],
  "BasePlotsOnHomesteadClaimStake": 16,
  "BasePlotsOnOutpostClaimStake": 16,
  "HoursToResolvePropertyCrisis": [
    24.0,
    24.0,
    24.0
  ],
  "AllowOptionToPreventSettlementsFromSeceding": false,
  "CultureDeedLinkPercentRequirement": 30.0,
  "SettlementFoundationBaseInfluence": [
    45.0,
    150.0,
    400.0
  ],
  "SettlementInfluenceMultiplier": [
    1.0,
    1.0,
    1.0
  ],
  "ScaleInfluenceBasedOnWorldSize": true,
  "BaseInfluenceRadiusFoundationMovementAllowedAfterFounding": 50,
  "SettlementMinRequiredPlotCoveragePercentage": 0.2,
  "HomesteadMinRequiredPlotCoveragePercentage": 0.5,
  "MinSubSettlementsToFoundSettlement": [
    2,
    2
  ],
  "MinSubSettlementsToMaintainSettlement": [
    2,
    2
  ],
  "MinCitizensToFoundSettlement": [
    2,
    4,
    6
  ],
  "MinCitizensToMaintainSettlement": [
    2,
    4,
    6
  ],
  "MinCultureToFoundSettlement": [
    0.0,
    60.0,
    400.0
  ],
  "MinCultureToMaintainSettlement": [
    0.0,
    30.0,
    120.0
  ],
  "CultureToInfluenceMappingPerSettlementType": [
    {
      "InputMin": 0.0,
      "InputHalflife": 100.0,
      "OutputAtMin": 0.0,
      "OutputLimit": 150.0
    },
    {
      "InputMin": 0.0,
      "InputHalflife": 140.0,
      "OutputAtMin": 0.0,
      "OutputLimit": 350.0
    },
    {
      "InputMin": 0.0,
      "InputHalflife": 420.0,
      "OutputAtMin": 0.0,
      "OutputLimit": 1000.0
    }
  ],
  "MaxGivableReputationThroughLaws": [
    10.0,
    20.0,
    40.0
  ],
  "MaxGivableToSinglePartyPerDay": [
    5.0,
    10.0,
    20.0
  ],
  "MaxGivableToSinglePartyTotal": [
    10.0,
    40.0,
    100.0
  ],
  "MinGivableToSinglePartyTotal": [
    -10.0,
    -60.0,
    -100.0
  ],
  "MinCultureOfFoundationSettlements": [
    0.0,
    0.0,
    0.0
  ],
  "MaxNumberOfCulturalProperties": [
    3,
    10,
    25
  ],
  "HoursBeforeInvalidatingCultureDeed": 2.0,
  "DinnerPartyConfig": {
    "FreshnessTimeMinutesPreparedFood": 60.0,
    "FreshnessTimeMinutesRawFood": 720.0,
    "NutritionToCulturePointsMultiplier": 0.1,
    "MultiplierForTastiness": [
      0.0,
      0.1,
      0.2,
      0.5,
      1.0,
      1.5,
      2.0
    ],
    "SettlementCountMultiplier": [
      0.1,
      0.5,
      1.0,
      1.2,
      1.4,
      1.6,
      1.8,
      2.0,
      2.2,
      2.4,
      2.6
    ],
    "DinnerPartyMaxDays": 7.0,
    "DinnerPartyMinutesDuration": 30.0,
    "MaxCoursesPerPlayer": 3,
    "MaxDinnerPartiesPerDayCountedForBonus": 1,
    "DinnerPartyCultureToFoodValue": {
      "InputMin": 0.0,
      "InputHalflife": 100.0,
      "OutputAtMin": 1.0,
      "OutputLimit": 2.0
    }
  },
  "MayAnnexSameLevel": false,
  "MayAnnexSubSettlements": true,
  "CultureAdvantagePercentRequiredToAnnexChildSettlement": [
    0.25,
    0.3,
    0.35,
    0.4
  ],
  "CultureAdvantageAbsoluteRequiredToAnnexChildSettlement": [
    40.0,
    180.0,
    750.0,
    1000.0
  ],
  "CultureAdvantagePercentRequiredToAnnexSiblingSettlement": [
    1.5,
    2.0,
    2.5,
    3.0
  ],
  "CultureAdvantageAbsoluteRequiredToAnnexSiblingSettlement": [
    20.0,
    50.0,
    100.0,
    200.0
  ],
  "ReductionPercentageWhenHomesteadIsAbandoned": 0.9,
  "WeightCultureByPercentOfNeighboringPlotsChildSettlement": [
    {
      "min": 0.3,
      "max": 0.7
    },
    {
      "min": 0.3,
      "max": 0.7
    },
    {
      "min": 0.3,
      "max": 0.7
    },
    {
      "min": 0.3,
      "max": 1.0
    }
  ],
  "WeightCultureByPercentOfNeighboringPlotsSiblingSettlement": [
    {
      "min": 0.3,
      "max": 1.0
    },
    {
      "min": 0.3,
      "max": 1.0
    },
    {
      "min": 0.3,
      "max": 1.0
    },
    {
      "min": 0.3,
      "max": 1.0
    }
  ],
  "ActiveCitizensRequiredtoAnnexRelative": [
    1.2,
    1.2,
    1.2,
    1.2
  ],
  "PercentOfAnnexationResourcesWasted": [
    0.5,
    0.5,
    0.5,
    0.5
  ],
  "AnnexationResourceRequirementPerCitizen": [
    [
      {
        "TagName": "BasicUpgrade",
        "Required": 2
      },
      {
        "TagName": "Wood",
        "Required": 100
      }
    ],
    [
      {
        "TagName": "AdvancedUpgrade",
        "Required": 2
      },
      {
        "TagName": "Wood",
        "Required": 200
      },
      {
        "TagName": "Metal",
        "Required": 200
      }
    ],
    [
      {
        "TagName": "ModernUpgrade",
        "Required": 2
      },
      {
        "TagName": "Wood",
        "Required": 200
      },
      {
        "TagName": "Metal",
        "Required": 100
      }
    ],
    [
      {
        "TagName": "ModernUpgrade",
        "Required": 2
      },
      {
        "TagName": "Wood",
        "Required": 200
      },
      {
        "TagName": "Metal",
        "Required": 200
      }
    ]
  ],
  "ExtraSettlementPapersToAnnexPerCitizen": [
    4,
    3,
    2,
    1
  ],
  "PostAnnexationSecessionLockDays": [
    3.0,
    5.0
  ],
  "AnnexTargetBoostWhenHasUnfoundedSettlementParent": 0.1,
  "AnnexTargetBoostPerAdditionalCitizenInUnfoundedSettlementParent": 0.2,
  "AnnexTargetBoostPerAdditionalChildSettlementInUnfoundedSettlementParent": 0.5,
  "ConfigVersion": 1
}
EAF
