#!/bin/bash
echo "[SCRIPTS] Plugin update RaidableBases..."

sudo -i -u rust bash << EOF
curl -L https://umod.org/plugins/RaidableBases.cs > server/oxide/plugins/RaidableBases.cs

FILE=server/oxide/config/RaidableBases.json_original
if [ ! -f "$FILE" ]; then
    cp server/oxide/config/RaidableBases.json "$FILE"
fi

echo '{
  "Settings": {
    "Show Direction To Coordinates": false,
    "Experimental [* = everything]": {
      "Apply Custom Auto Height To": [],
      "Bunker Bases Or Profiles": [],
      "Multi Foundation Bases Or Profiles": []
    },
    "Raid Management": {
      "Divide Locker Loot When Enabled": true,
      "Ignore List For Turn Lights On": [
        "laserlight",
        "weaponrack",
        "lightswitch",
        "soundlight",
        "xmas"
      ],
      "Grids To Block Spawns At": [],
      "Block Spawns At Positions": [
        {
          "position": "(0.00, 0.00, 0.00)",
          "radius": 200.0
        }
      ],
      "Additional Map Prefabs To Block Spawns At": {
        "test_prefab": 150.0,
        "test_prefab_2": 125.25
      },
      "Eject Mounts": {
        "All Controlled Mounts": false,
        "All Other Mounts": false,
        "Attack Helicopters": false,
        "Boats": false,
        "Campers": true,
        "Cars (Basic)": false,
        "Cars (Modular)": false,
        "Chinook": false,
        "Flying Carpet": false,
        "Horses": false,
        "HotAirBalloon": true,
        "Jetpacks": true,
        "MiniCopters": false,
        "Parachutes": false,
        "Pianos": true,
        "Scrap Transport Helicopters": false,
        "Snowmobiles": false,
        "Tugboats": false
      },
      "Max Amount Of Players Allowed To Enter (0 = infinite, -1 = none)": {
        "Maintained Events": 0,
        "Manual Events": 0,
        "Scheduled Events": 0,
        "Bypass For PVP Bases": false
      },
      "Additional Containers To Include As Boxes": [
        "locker"
      ],
      "Difficulty Colors (Border)": {
        "Normal": "000000"
      },
      "Difficulty Colors (Inner)": {
        "Normal": "00FF00"
      },
      "Entities Allowed To Drop Loot": {
        "Auto Turrets": false,
        "Flame Turret": false,
        "Fog Machine": false,
        "Gun Trap": false,
        "SAM Site": false
      },
      "Additional Blocked Colliders": [
        "cube"
      ],
      "Allow Teleport": false,
      "Allow Cupboard Loot To Drop": true,
      "Allow Players To Build": true,
      "Allow Players To Use Ladders": true,
      "Allow Players To Upgrade Event Buildings": false,
      "Allow Player Bags To Be Lootable At PVP Bases": true,
      "Allow Player Bags To Be Lootable At PVE Bases": true,
      "Allow Players To Loot Traps": false,
      "Allow Npcs To Target Other Npcs": false,
      "Allow Raid Bases Inland": true,
      "Allow Raid Bases On Beaches": true,
      "Allow Raid Bases On Ice Sheets": false,
      "Allow Raid Bases On Roads": false,
      "Allow Raid Bases On Rivers": true,
      "Allow Raid Bases On Railroads": false,
      "Allow Raid Bases On Building Topology": true,
      "Allow Raid Bases On Monument Topology": false,
      "Amount Of Spawn Position Checks Per Frame (ADVANCED USERS ONLY)": 25,
      "Allow Vending Machines To Broadcast": false,
      "Backpacks Can Be Opened At PVE Bases": true,
      "Backpacks Can Be Opened At PVP Bases": true,
      "Backpacks Drop At PVE Bases": false,
      "Backpacks Drop At PVP Bases": false,
      "Block Npc Kits Plugin": false,
      "Block Helicopter Damage To Bases": false,
      "Block Mounted Damage To Bases And Players": false,
      "Block Mini Collision Damage": false,
      "Block DoubleJump Plugin": true,
      "Block RestoreUponDeath Plugin For PVP Bases": false,
      "Block RestoreUponDeath Plugin For PVE Bases": false,
      "Block LifeSupport Plugin": true,
      "Block Rewards During Server Restart": false,
      "Bypass Lock Treasure To First Attacker For PVE Bases": false,
      "Bypass Lock Treasure To First Attacker For PVP Bases": false,
      "Despawn Spawned Mounts": true,
      "Do Not Destroy Player Built Deployables": true,
      "Do Not Destroy Player Built Structures": true,
      "Distance To Spawn From Center Of Map": 200.0,
      "Divide Rewards Among All Raiders": true,
      "Draw Corpse Time (Seconds)": 300.0,
      "Destroy Boxes Clipped Too Far Into Terrain": true,
      "Destroy Turrets Clipped Too Far Into Terrain": true,
      "Eject Sleepers Before Spawning Base": true,
      "Eject Scavengers When Raid Is Completed": true,
      "Extra Distance To Spawn From Monuments": 25.0,
      "Move Cookables Into Ovens": true,
      "Move Food Into BBQ Or Fridge": true,
      "Blacklist For BBQ And Fridge": [
        "syrup",
        "pancakes"
      ],
      "Move Resources Into Tool Cupboard": true,
      "Move Items Into Lockers": true,
      "Lock Treasure To First Attacker": true,
      "Lock Treasure Max Inactive Time (Minutes)": 20.0,
      "Lock Players To Raid Base After Entering Zone": false,
      "Only Award First Attacker and Allies": false,
      "Only Award Owner Of Raid": false,
      "Minutes Until Despawn After Looting (min: 1)": 15,
      "Minutes Until Despawn After Looting Resets When Damaged": false,
      "Minutes Until Despawn After Inactive (0 = disabled)": 120,
      "Minutes Until Despawn After Inactive Resets When Damaged": true,
      "Mounts Can Take Damage From Players": false,
      "Player Cupboard Detection Radius": 125.0,
      "Players With PVP Delay Can Damage Anything Inside Zone": false,
      "Players With PVP Delay Can Damage Other Players With PVP Delay Anywhere": false,
      "PVP Delay Between Zone Hopping": 10.0,
      "Prevent Fire From Spreading": true,
      "Prevent Players From Hogging Raids": true,
      "Block Clans From Owning More Than One Raid": false,
      "Block Friends From Owning More Than One Raid": false,
      "Block Teams From Owning More Than One Raid": false,
      "Prevent Fall Damage When Base Despawns": false,
      "Require Cupboard To Be Looted Before Despawning": false,
      "Destroying The Cupboard Completes The Raid": false,
      "Require All Bases To Spawn Before Respawning An Existing Base": false,
      "Turn Lights On At Night": true,
      "Turn Lights On Indefinitely": false,
      "Traps And Turrets Ignore Users Using NOCLIP": false,
      "Use Random Codes On Code Locks": true,
      "Wait To Start Despawn Timer When Base Takes Damage From Player": false,
      "Maximum Water Depth For All Npcs": 3.0
    },
    "Map Markers": {
      "Marker Name": "Raidable Base Event",
      "Radius": 0.25,
      "Radius (Map Size 3600 Or Less)": 0.25,
      "Use Vending Map Marker": true,
      "Show Owners Name on Map Marker": true,
      "Use Explosion Map Marker": false,
      "Create Markers For Maintained Events": true,
      "Create Markers For Scheduled Events": true,
      "Create Markers For Manual Events": true
    },
    "Maintained Events": {
      "Always Maintain Max Events": true,
      "Max Maintained Events": 5,
      "Chance To Randomly Spawn PVP Bases (0 = Ignore Setting)": 0.0,
      "Include PVE Bases": true,
      "Include PVP Bases": true,
      "Minimum Required Players Online": 1,
      "Maximum Limit Of Players Online": 300,
      "Time To Wait Between Spawns": 15.0,
      "Convert PVE To PVP": true,
      "Convert PVP To PVE": false,
      "Ignore Safe Checks": false,
      "Ignore Safe Checks In X Radius Only": 0.0,
      "Ignore Player Entities At Custom Spawn Locations": false,
      "Spawn Bases X Distance Apart": 100.0,
      "Spawns Database File (Optional)": "none"
    },
    "Manual Events": {
      "Convert PVE To PVP": true,
      "Convert PVP To PVE": true,
      "Max Manual Events": 5,
      "Spawns Database File (Optional)": "none"
    },
    "Scheduled Events": {
      "Enabled": true,
      "Every Min Seconds": 3600.0,
      "Every Max Seconds": 7200.0,
      "Max Scheduled Events": 5,
      "Max To Spawn At Once (0 = Use Max Scheduled Events Amount)": 5,
      "Chance To Randomly Spawn PVP Bases (0 = Ignore Setting)": 0.0,
      "Include PVE Bases": true,
      "Include PVP Bases": true,
      "Minimum Required Players Online": 1,
      "Maximum Limit Of Players Online": 300,
      "Time To Wait Between Spawns": 15.0,
      "Convert PVE To PVP": true,
      "Convert PVP To PVE": true,
      "Ignore Safe Checks": false,
      "Ignore Safe Checks In X Radius Only": 0.0,
      "Ignore Player Entities At Custom Spawn Locations": false,
      "Spawn Bases X Distance Apart": 100.0,
      "Spawns Database File (Optional)": "none"
    },
    "Allowed Zone Manager Zones": [
      "pvp",
      "71801873",
      "59498301"
    ],
    "Use Grid Locations In Allowed Zone Manager Zones Only": false,
    "Extended Distance To Spawn Away From Zone Manager Zones": 25.0,
    "Blacklisted Commands": [],
    "Automatically Teleport Admins To Their Map Marker Positions": true,
    "Automatically Destroy Markers That Admins Teleport To": false,
    "Block Archery Plugin At Events": false,
    "Block Wizardry Plugin At Events": false,
    "Chat Steam64ID": 0,
    "Expansion Mode (Dangerous Treasures)": false,
    "Remove Admins From Raiders List": false,
    "Show X Z Coordinates": false,
    "Event Command": "rbe",
    "Hunter Command": "rb",
    "Server Console Command": "rbevent"
  },
  "Event Messages": {
    "Ineligible For Rewards": {
      "Flying": false,
      "Vanished": false,
      "Inactive": true,
      "Not An Ally": true,
      "Not The Owner": true,
      "Not A Participant": true,
      "Remove Admins From Raiders List": false
    },
    "Announce Raid Unlocked": true,
    "Announce Thief Message": true,
    "Announce PVE/PVP Enter/Exit Messages": true,
    "Show Destroy Warning": true,
    "Show Opened Message For PVE Bases": true,
    "Show Opened Message For PVP Bases": true,
    "Show Prefix": true,
    "Notify Plugin - Type (-1 = disabled)": -1,
    "Notification Interval": 1.0,
    "Send Messages To Player": true,
    "Save Thieves To Log File": false
  },
  "GUIAnnouncements": {
    "Enabled": true,
    "Banner Tint Color": "Grey",
    "Maximum Distance": 300.0,
    "Text Color": "White"
  },
  "Ranked Ladder": {
    "Award Top X Players On Wipe": 3,
    "Enabled": true,
    "Show Top X Ladder": 10
  },
  "Skins": {
    "Boxes": {
      "Include Workshop Skins": true,
      "Preset Skin": 0,
      "Use Random Skin": true
    },
    "Loot Items": {
      "Include Workshop Skins": true,
      "Use Random Skin": true,
      "Use Imported Workshop Skins File": false
    },
    "Deployables": {
      "Partial Names": [
        "door",
        "barricade",
        "chair",
        "fridge",
        "furnace",
        "locker",
        "reactivetarget",
        "rug",
        "sleepingbag",
        "table",
        "vendingmachine",
        "waterpurifier",
        "skullspikes",
        "skulltrophy",
        "summer_dlc",
        "sled"
      ],
      "Preset Door Skins": [],
      "Include Workshop Skins": true,
      "Use Random Skin": true,
      "Skin Everything": true
    },
    "Randomize Npc Item Skins": true,
    "Use Identical Skins For All Npcs": true,
    "Ignore If Skinned Already": true
  },
  "Treasure": {
    "Resources Not Moved To Cupboards": [
      "skull.human",
      "battery.small",
      "bone.fragments",
      "can.beans.empty",
      "can.tuna.empty",
      "water.salt",
      "water",
      "skull.wolf"
    ],
    "Use Day Of Week Loot": false,
    "Do Not Duplicate Base Loot": false,
    "Do Not Duplicate Difficulty Loot": false,
    "Do Not Duplicate Default Loot": false,
    "Use Stack Size Limit For Spawning Items": false
  },
  "UI": {
    "Advanced Alerts UI": {
      "Enabled": true,
      "Anchor Min": "0.35 0.85",
      "Anchor Max": "0.65 0.95",
      "Time Shown": 5.0
    },
    "Delay": {
      "Enabled": false,
      "Anchor Min": "0.472 0.172",
      "Anchor Max": "0.55 0.311",
      "Panel Alpha": 0.98,
      "Text Color": "#FF0000",
      "Panel Color": "#000000"
    },
    "Details": {
      "Enabled": true,
      "Anchor Min": "0.748 0.228",
      "Anchor Max": "0.986 0.248",
      "Panel Alpha": 0.98,
      "Details Font Size": 10,
      "Panel Color": "#000000",
      "Label Color": "#EAEAEA",
      "Negative Color": "#FF0000",
      "Positive Color": "#008000"
    },
    "Enabled": true,
    "Status Anchor Min": "0.748 0.249",
    "Status Anchor Max": "0.986 0.279",
    "Status Font Size": 12,
    "Panel Alpha": 0.98,
    "Panel Color": "#000000",
    "PVP Color": "#FF0000",
    "PVE Color": "#008000",
    "Show Loot Left": true,
    "Show Time Left": true
  },
  "Weapons": {
    "Furnace Starting Fuel": 1000,
    "Infinite Ammo": {
      "AutoTurret": true,
      "FlameTurret": true,
      "FogMachine": true,
      "GunTrap": true,
      "SamSite": true
    },
    "Ammo": {
      "AutoTurret": 256,
      "FlameTurret": 256,
      "FogMachine": 5,
      "GunTrap": 128,
      "SamSite": 24
    },
    "Tesla Coil": {
      "Requires A Power Source": true,
      "Max Discharge Self Damage Seconds (0 = None, 120 = Rust default)": 0.0,
      "Max Damage Output": 35.0,
      "Health": 250.0
    },
    "Fog Machine Allows Motion Toggle": true,
    "Fog Machine Requires A Power Source": true,
    "SamSite Repairs Every X Minutes (0.0 = disabled)": 5.0,
    "SamSite Range (350.0 = Rust default)": 75.0,
    "SamSite Requires Power Source": false,
    "Spooky Speakers Requires Power Source": false,
    "Test Generator Power": 100.0
  }
}' > server/oxide/config/RaidableBases.json

FILE=server/oxide/data/RaidableBases/Profiles/RaidBases.json_original
if [ ! -f "$FILE" ]; then
    cp server/oxide/data/RaidableBases/Profiles/RaidBases.json FILE
fi

echo '{
  "Rearm Bear Traps When Damaged": false,
  "Bear Traps Are Immune To Timed Explosives": false,
  "Advanced Protection Radius": {
    "Maintained Events": 200.0,
    "Manual Events": 200.0,
    "Scheduled Events": 200.0,
    "Obstruction Distance Check": -1.0
  },
  "Advanced Setup Settings": {
    "Amount Of Entities To Spawn Per Batch": 1,
    "Amount Of Entities To Despawn Per Batch": 10,
    "Height Adjustment Applied To This Paste": 0.0,
    "Force All Bases To Spawn At Height Level (0 = Water)": -1.0,
    "Foundations Immune To Damage When Forced Height Is Applied": false
  },
  "Elevators": {
    "Enabled": true,
    "Anchor Min": "0.406 0.915",
    "Anchor Max": "0.59 0.949",
    "Panel Alpha": 0.0,
    "Required Access Level": 0,
    "Panel Color": "#000000",
    "Required Access Level Grants Permanent Use": false,
    "Required Keycard Skin ID": 2690554489,
    "Requires Building Permission": false,
    "Button Health": 1000.0,
    "Elevator Health": 600.0
  },
  "Entities Not Allowed To Be Picked Up": [
    "generator.small",
    "generator.static",
    "autoturret_deployed"
  ],
  "Additional Bases For This Difficulty": {
    "easyraid12": [
      {
        "Option": "stability",
        "Value": "true"
      },
      {
        "Option": "autoheight",
        "Value": "true"
      },
      {
        "Option": "height",
        "Value": "1.0"
      }
    ],
    "easyraid22": [
      {
        "Option": "stability",
        "Value": "true"
      },
      {
        "Option": "autoheight",
        "Value": "true"
      },
      {
        "Option": "height",
        "Value": "1.0"
      }
    ],
    "easyraid32": [
      {
        "Option": "stability",
        "Value": "true"
      },
      {
        "Option": "autoheight",
        "Value": "true"
      },
      {
        "Option": "height",
        "Value": "1.0"
      }
    ]
  },
  "Paste Options": [
    {
      "Option": "stability",
      "Value": "true"
    },
    {
      "Option": "autoheight",
      "Value": "true"
    },
    {
      "Option": "height",
      "Value": "1.0"
    }
  ],
  "Arena Walls": {
    "Enabled": true,
    "Stacks": 1,
    "Ignore Stack Limit When Clipping Terrain": true,
    "Use Stone Walls": true,
    "Use Iced Walls": false,
    "Use Least Amount Of Walls": true,
    "Use UFO Walls": false,
    "Radius": 25.0
  },
  "NPC Levels": {
    "Level 2 - Final Death": false
  },
  "NPCs": {
    "Weapon Accuracy (0 - 100)": {
      "AK47": 25.0,
      "AK47 ICE": 25.0,
      "Bolt Rifle": 25.0,
      "Compound Bow": 25.0,
      "Crossbow": 25.0,
      "Double Barrel Shotgun": 25.0,
      "Eoka": 25.0,
      "Glock": 25.0,
      "HMLMG": 25.0,
      "L96": 25.0,
      "LR300": 25.0,
      "M249": 25.0,
      "M39": 25.0,
      "M92": 25.0,
      "MP5": 25.0,
      "Nailgun": 25.0,
      "Pump Shotgun": 25.0,
      "Python": 25.0,
      "Revolver": 25.0,
      "Semi Auto Pistol": 25.0,
      "Semi Auto Rifle": 25.0,
      "Spas12": 25.0,
      "Speargun": 25.0,
      "SMG": 25.0,
      "Snowball Gun": 25.0,
      "Thompson": 25.0,
      "Waterpipe Shotgun": 25.0
    },
    "Damage Multipliers": {
      "Gun Damage Multiplier": 1.0,
      "Melee Damage Multiplier": 1.0
    },
    "Murderer (Items)": {
      "Helm": [
        "metal.facemask"
      ],
      "Torso": [
        "metal.plate.torso"
      ],
      "Pants": [
        "pants"
      ],
      "Gloves": [
        "tactical.gloves"
      ],
      "Boots": [
        "boots.frog"
      ],
      "Shirt": [
        "tshirt"
      ],
      "Kilts": [],
      "Weapon": [
        "machete"
      ]
    },
    "Scientist (Items)": {
      "Helm": [],
      "Torso": [
        "hazmatsuit_scientist_peacekeeper"
      ],
      "Pants": [],
      "Gloves": [],
      "Boots": [],
      "Shirt": [],
      "Kilts": [],
      "Weapon": [
        "rifle.ak"
      ]
    },
    "Murderer Kits": [
      "murderer_kit_1",
      "murderer_kit_2"
    ],
    "Scientist Kits": [
      "scientist_kit_1",
      "scientist_kit_2"
    ],
    "Random Names": [],
    "Spawn Alternate Default Scientist Loot": {
      "Prefab ID List": [
        "cargo",
        "turret_any",
        "ch47_gunner",
        "excavator",
        "full_any",
        "heavy",
        "junkpile_pistol",
        "oilrig",
        "patrol",
        "peacekeeper",
        "roam",
        "roamtethered"
      ],
      "Enabled": false,
      "Disable All Prefab Loot Spawns": false
    },
    "Enabled": true,
    "Amount Of Murderers To Spawn": 2,
    "Minimum Amount Of Murderers To Spawn": 2,
    "Spawn Random Amount Of Murderers": false,
    "Amount Of Scientists To Spawn": 2,
    "Minimum Amount Of Scientists To Spawn": 2,
    "Spawn Random Amount Of Scientists": false,
    "Allow Npcs To Leave Dome When Attacking": true,
    "Allow Npcs To Shoot Players Outside Of The Dome": true,
    "Aggression Range": 70.0,
    "Block Damage Outside To Npcs When Not Allowed To Leave Dome": true,
    "Block Damage Outside Of The Dome To Npcs Inside": false,
    "Despawn Inventory On Death": true,
    "Health For Murderers (100 min, 5000 max)": 150.0,
    "Health For Scientists (100 min, 5000 max)": 150.0,
    "Kill Underwater Npcs": true,
    "Player Traps And Turrets Ignore Npcs": false,
    "Event Traps And Turrets Ignore Npcs": true,
    "Use Dangerous Treasures NPCs": false
  },
  "Rewards": {
    "Economics Money": 0.0,
    "ServerRewards Points": 0,
    "SkillTree XP": 0.0
  },
  "Change Building Material Tier To": {
    "Wooden": false,
    "Stone": false,
    "Metal": false,
    "HQM": false
  },
  "Change Door Type To": {
    "Wooden": false,
    "Metal": false,
    "HQM": false,
    "Include Garage Doors": false
  },
  "Auto Turrets": {
    "Aim Cone": 5.0,
    "Wait To Power On Until Event Starts": false,
    "Minimum Damage Modifier": 1.0,
    "Maximum Damage Modifier": 1.0,
    "Start Health": 1000.0,
    "Sight Range": 30.0,
    "Double Sight Range When Shot": false,
    "Set Hostile (False = Do Not Set Any Mode)": true,
    "Requires Power Source": false,
    "Remove Equipped Weapon": false,
    "Random Weapons To Equip When Unequipped": [
      "rifle.ak"
    ]
  },
  "Player Building Restrictions": {
    "Wooden": false,
    "Stone": false,
    "Metal": false,
    "HQM": false
  },
  "Water Settings": {
    "Allow Bases To Float Above Water": false,
    "Prevent Bases From Floating Above Water By Also Checking Surrounding Area": false,
    "Maximum Water Depth Level Used For Float Above Water Option": 1.0
  },
  "Profile Enabled": true,
  "Maximum Land Level": 2.5,
  "Allow Players To Use MLRS": true,
  "Allow Third-Party Npc Explosive Damage To Bases": false,
  "Add Code Lock To Unlocked Or KeyLocked Doors": true,
  "Add Key Lock To Unlocked Or CodeLocked Doors": false,
  "Add Code Lock To Tool Cupboards": false,
  "Add Code Lock To Boxes": false,
  "Add Code Lock To Lockers": true,
  "Close Open Doors With No Door Controller Installed": true,
  "Allow Duplicate Items": false,
  "Allow Players To Pickup Deployables": false,
  "Allow Players To Deploy A Cupboard": true,
  "Allow Players To Deploy Barricades": true,
  "Allow PVP": true,
  "Allow Friendly Fire (Teams)": true,
  "Minimum Amount Of Items To Spawn (0 = Use Max Value)": 0,
  "Amount Of Items To Spawn": 30,
  "Flame Turret Health": 300.0,
  "Block Plugins Which Prevent Item Durability Loss": false,
  "Block Damage Outside Of The Dome To Players Inside": false,
  "Block Damage Outside Of The Dome To Bases Inside": false,
  "Block Damage Inside From Npcs To Players Outside": false,
  "Building Blocks Are Immune To Damage": false,
  "Building Blocks Are Immune To Damage (Twig Only)": false,
  "Boxes Are Invulnerable": false,
  "Boxes Are Invulnerable Until Cupboard Is Destroyed": false,
  "Spawn Silently (No Notifcation, No Dome, No Map Marker)": false,
  "Despawn Dropped Loot Bags From Raid Boxes When Base Despawns": false,
  "Divide Loot Into All Containers": true,
  "Drop Tool Cupboard Loot After Raid Is Completed": false,
  "Drop Container Loot X Seconds After It Is Looted": 0.0,
  "Drop Container Loot Applies Only To Boxes And Cupboards": true,
  "Create Dome Around Event Using Spheres (0 = disabled, recommended = 5)": 5,
  "Empty All Containers Before Spawning Loot": true,
  "Empty All Containers (Exclusions)": [
    "xmas_tree.deployed",
    "xmas_tree_a.deployed"
  ],
  "Eject Corpses From Enemy Raids (Advanced Users Only)": true,
  "Eject Corpses From PVE Instantly (Advanced Users Only)": false,
  "Eject Enemies From Locked PVE Raids": true,
  "Eject Enemies From Locked PVP Raids": false,
  "Explosion Damage Modifier (0-999)": 100.0,
  "Force All Boxes To Have Same Skin": true,
  "Ignore Containers That Spawn With Loot Already": false,
  "Loot Amount Multiplier": 1.0,
  "Maximum Respawn Npc X Seconds After Death": 0.0,
  "Minimum Respawn Npc X Seconds After Death": 0.0,
  "No Item Input For Boxes And TC": true,
  "Penalize Players On Death In PVE (ZLevels)": true,
  "Penalize Players On Death In PVP (ZLevels)": true,
  "Require Cupboard Access To Loot": false,
  "Require Cupboard Access To Place Ladders": false,
  "Skip Treasure Loot And Use Loot In Base Only": false,
  "Use Buoyant Boxex For Dropped Privilege Loot": false,
  "Use Buoyant Boxex For Dropped Box Loot": false,
  "Remove Locks When Event Is Completed": false,
  "Always Spawn Base Loot Table": false
}' > server/oxide/data/RaidableBases/Profiles/RaidBases.json

mkdir -p server/oxide/data/copypaste

cp RaidableBases/easyraid12.json server/oxide/data/copypaste/easyraid12.json
cp RaidableBases/easyraid22.json server/oxide/data/copypaste/easyraid22.json
cp RaidableBases/easyraid32.json server/oxide/data/copypaste/easyraid32.json

EOF
