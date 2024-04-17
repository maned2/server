#!/bin/bash

sudo -i -u rust bash << EOF
curl -L https://umod.org/plugins/DangerousTreasures.cs > server/oxide/plugins/DangerousTreasures.cs

FILE=server/oxide/config/DangerousTreasures.json_original
if [ ! -f "$FILE" ]; then
    cp server/oxide/config/DangerousTreasures.json FILE
fi

echo '{
  "Settings": {
    "Permission Name": "dangeroustreasures.use",
    "Event Chat Command": "dtevent",
    "Distance Chat Command": "dtd",
    "Draw Location On Screen With Distance Command": true,
    "Event Console Command": "dtevent",
    "Show X Z Coordinates": false
  },
  "Countdown": {
    "Use Countdown Before Event Starts": true,
    "Time In Seconds": [
      120,
      60,
      30,
      15
    ]
  },
  "Events": {
    "Allow Player Bags To Be Lootable At Events": false,
    "Automated": true,
    "Every Min Seconds": 3600.0,
    "Every Max Seconds": 7200.0,
    "Use Vending Map Marker": true,
    "Use Explosion Map Marker": false,
    "Marker Color": "#FF0000",
    "Marker Radius": 0.25,
    "Marker Radius (Smaller Maps)": 0.5,
    "Marker Event Name": "Dangerous Treasures Event",
    "Max Manual Events": 1,
    "Always Spawn Max Manual Events": false,
    "Stagger Spawns Every X Seconds": 10.0,
    "Amount Of Items To Spawn": 6,
    "Use Spheres": true,
    "Amount Of Spheres": 5,
    "Player Limit For Event": 1,
    "Fire Aura Radius (Advanced Users Only)": 25.0,
    "Auto Draw On New Event For Nearby Players": false,
    "Auto Draw Minimum Distance": 300.0,
    "Grant DDRAW temporarily to players": true,
    "Grant Draw Time": 15.0,
    "Time To Loot": 900.0
  },
  "Event Messages": {
    "Advanced Alerts UI": {
      "Enabled": true,
      "Anchor Min": "0.35 0.85",
      "Anchor Max": "0.65 0.95",
      "Time Shown": 5.0
    },
    "Notify Plugin - Type (-1 = disabled)": 0,
    "UI Popup Interval": 1.0,
    "Show Noob Warning Message": false,
    "Show Barrage Message": true,
    "Show Despawn Message": true,
    "Show You Have Entered": true,
    "Show First Player Entered": false,
    "Show First Player Opened": false,
    "Show Opened Message": true,
    "Show Prefix": true,
    "Show Started Message": true,
    "Show Thief Message": true,
    "Send Messages To Player": true
  },
  "Fireballs": {
    "Enabled": true,
    "Damage Per Second": 10.0,
    "Lifetime Min": 7.5,
    "Lifetime Max": 10.0,
    "Radius": 1.0,
    "Tick Rate": 1.0,
    "Generation": 5.0,
    "Water To Extinguish": 25,
    "Spawn Every X Seconds": 5
  },
  "GUIAnnouncements": {
    "Enabled": true,
    "Text Color": "White",
    "Banner Tint Color": "Grey",
    "Maximum Distance": 300.0
  },
  "Monuments": {
    "Blacklisted Monuments": {
      "Abandoned Cabins": false,
      "Abandoned Military Base": false,
      "Abandoned Supermarket": false,
      "Airfield": false,
      "Arctic Research Base": false,
      "Bandit Camp": true,
      "Barn": true,
      "Ferry Terminal": false,
      "Fishing Village": true,
      "Giant Excavator Pit": false,
      "Harbor": false,
      "HQM Quarry": false,
      "Ice Lake": false,
      "Junkyard": true,
      "Large Barn": true,
      "Large Cave": false,
      "Large Fishing Village": true,
      "Large Oil Rig": false,
      "Launch Site": false,
      "Lighthouse": false,
      "Medium Cave": false,
      "Military Tunnel": false,
      "Mining Outpost": false,
      "Missile Silo": false,
      "Oil Rig": false,
      "Outpost": true,
      "Oxum's Gas Station": false,
      "Power Plant": false,
      "Ranch": true,
      "Satellite Dish": false,
      "Sewer Branch": false,
      "Small Cave": false,
      "Stone Quarry": false,
      "Substation": false,
      "Sulfur Quarry": false,
      "The Dome": false,
      "Train Tunnel": true,
      "Train Tunnel Link": false,
      "Train Yard": false,
      "Underwater Lab": true,
      "Water Treatment Plant": false,
      "Water Well": false,
      "Wild Swamp": false
    },
    "Auto Spawn At Monuments Only": false,
    "Chance To Spawn At Monuments Instead": 0.0,
    "Allow Treasure Loot Underground": false
  },
  "Newman Mode": {
    "Protect Nakeds From Fire Aura": false,
    "Protect Nakeds From Other Harm": false
  },
  "NPCs": {
    "Blacklisted Monuments": {
      "Abandoned Cabins": false,
      "Abandoned Military Base": false,
      "Abandoned Supermarket": false,
      "Airfield": false,
      "Arctic Research Base": false,
      "Bandit Camp": true,
      "Barn": true,
      "Ferry Terminal": false,
      "Fishing Village": true,
      "Giant Excavator Pit": false,
      "Harbor": false,
      "HQM Quarry": false,
      "Ice Lake": false,
      "Junkyard": true,
      "Large Barn": true,
      "Large Cave": false,
      "Large Fishing Village": true,
      "Large Oil Rig": false,
      "Launch Site": false,
      "Lighthouse": false,
      "Medium Cave": false,
      "Military Tunnel": false,
      "Mining Outpost": false,
      "Missile Silo": false,
      "Oil Rig": false,
      "Outpost": true,
      "Oxum's Gas Station": false,
      "Power Plant": false,
      "Ranch": true,
      "Satellite Dish": false,
      "Sewer Branch": false,
      "Small Cave": false,
      "Stone Quarry": false,
      "Substation": false,
      "Sulfur Quarry": false,
      "The Dome": false,
      "Train Tunnel": true,
      "Train Tunnel Link": false,
      "Train Yard": false,
      "Underwater Lab": true,
      "Water Treatment Plant": false,
      "Water Well": false,
      "Wild Swamp": false
    },
    "Murderers": {
      "Random Names": [],
      "Items)": {
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
      "Kits": [
        "murderer_kit_1",
        "murderer_kit_2"
      ],
      "Spawn Alternate Loot": {
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
      "Weapon Accuracy (0 - 100)": {
        "AK47": 100.0,
        "AK47 ICE": 100.0,
        "Bolt Rifle": 100.0,
        "Compound Bow": 100.0,
        "Crossbow": 100.0,
        "Double Barrel Shotgun": 100.0,
        "Eoka": 100.0,
        "Glock": 100.0,
        "HMLMG": 100.0,
        "L96": 100.0,
        "LR300": 100.0,
        "M249": 100.0,
        "M39": 100.0,
        "M92": 100.0,
        "MP5": 100.0,
        "Nailgun": 100.0,
        "Pump Shotgun": 100.0,
        "Python": 100.0,
        "Revolver": 100.0,
        "Semi Auto Pistol": 100.0,
        "Semi Auto Rifle": 100.0,
        "Spas12": 100.0,
        "Speargun": 100.0,
        "SMG": 100.0,
        "Snowball Gun": 100.0,
        "Thompson": 100.0,
        "Waterpipe Shotgun": 100.0
      },
      "Aggression Range": 70.0,
      "Despawn Inventory On Death": true,
      "Die Instantly From Headshots": false,
      "Amount To Spawn (min)": 2,
      "Amount To Spawn (max)": 2,
      "Health": 150.0
    },
    "Scientists": {
      "Random Names": [],
      "Items": {
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
      "Kits": [
        "scientist_kit_1",
        "scientist_kit_2"
      ],
      "Spawn Alternate Loot": {
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
      "Weapon Accuracy (0 - 100)": {
        "AK47": 20.0,
        "AK47 ICE": 20.0,
        "Bolt Rifle": 20.0,
        "Compound Bow": 20.0,
        "Crossbow": 20.0,
        "Double Barrel Shotgun": 20.0,
        "Eoka": 20.0,
        "Glock": 20.0,
        "HMLMG": 20.0,
        "L96": 20.0,
        "LR300": 20.0,
        "M249": 20.0,
        "M39": 20.0,
        "M92": 20.0,
        "MP5": 20.0,
        "Nailgun": 20.0,
        "Pump Shotgun": 20.0,
        "Python": 20.0,
        "Revolver": 20.0,
        "Semi Auto Pistol": 20.0,
        "Semi Auto Rifle": 20.0,
        "Spas12": 20.0,
        "Speargun": 20.0,
        "SMG": 20.0,
        "Snowball Gun": 20.0,
        "Thompson": 20.0,
        "Waterpipe Shotgun": 20.0
      },
      "Aggression Range": 70.0,
      "Despawn Inventory On Death": true,
      "Die Instantly From Headshots": false,
      "Amount To Spawn (min)": 2,
      "Amount To Spawn (max)": 2,
      "Health (100 min, 5000 max)": 150.0
    },
    "Enabled": true,
    "Allow Npcs To Leave Dome When Attacking": true,
    "Allow Npcs To Target Other Npcs": false,
    "Block Damage From Players Beyond X Distance (0 = disabled)": 0.0,
    "Block Npc Kits Plugin": false,
    "Kill Underwater Npcs": true
  },
  "Missile Launcher": {
    "Acquire Time In Seconds": 10.0,
    "Enabled": false,
    "Damage Per Missile": 0.0,
    "Detection Distance": 15.0,
    "Life Time In Seconds": 60.0,
    "Ignore Flying Players": true,
    "Spawn Every X Seconds": 15.0,
    "Target Chest If No Player Target": false
  },
  "Ranked Ladder": {
    "Award Top X Players On Wipe": 3,
    "Enabled": true,
    "Group Name": "treasurehunter",
    "Permission Name": "dangeroustreasures.th"
  },
  "Rewards": {
    "Economics Money": 0.0,
    "ServerRewards Points": 0.0,
    "Use Economics": false,
    "Use ServerRewards": false
  },
  "Rocket Opener": {
    "Enabled": true,
    "Rockets": 8,
    "Speed": 0.1,
    "Use Fire Rockets": false
  },
  "Skins": {
    "Custom Skins": [],
    "Use Random Skin": true,
    "Preset Skin": 0,
    "Include Workshop Skins": true,
    "Randomize Npc Item Skins": true,
    "Use Identical Skins For All Npcs": true
  },
  "Treasure": {
    "Loot": [
      {
        "shortname": "frankensteintable",
        "name": "",
        "amount": 1,
        "skin": 0,
        "amountMin": 1,
        "condition": 1.0,
        "probability": 1.0,
        "Skins": []
      },
      {
        "shortname": "ammo.pistol",
        "name": "",
        "amount": 40,
        "skin": 0,
        "amountMin": 40,
        "condition": 1.0,
        "probability": 1.0,
        "Skins": []
      },
      {
        "shortname": "ammo.pistol.fire",
        "name": "",
        "amount": 40,
        "skin": 0,
        "amountMin": 40,
        "condition": 1.0,
        "probability": 1.0,
        "Skins": []
      },
      {
        "shortname": "ammo.pistol.hv",
        "name": "",
        "amount": 40,
        "skin": 0,
        "amountMin": 40,
        "condition": 1.0,
        "probability": 1.0,
        "Skins": []
      },
      {
        "shortname": "ammo.rifle",
        "name": "",
        "amount": 60,
        "skin": 0,
        "amountMin": 60,
        "condition": 1.0,
        "probability": 1.0,
        "Skins": []
      },
      {
        "shortname": "ammo.rifle.explosive",
        "name": "",
        "amount": 60,
        "skin": 0,
        "amountMin": 60,
        "condition": 1.0,
        "probability": 1.0,
        "Skins": []
      },
      {
        "shortname": "ammo.rifle.hv",
        "name": "",
        "amount": 60,
        "skin": 0,
        "amountMin": 60,
        "condition": 1.0,
        "probability": 1.0,
        "Skins": []
      },
      {
        "shortname": "ammo.rifle.incendiary",
        "name": "",
        "amount": 60,
        "skin": 0,
        "amountMin": 60,
        "condition": 1.0,
        "probability": 1.0,
        "Skins": []
      },
      {
        "shortname": "ammo.shotgun",
        "name": "",
        "amount": 24,
        "skin": 0,
        "amountMin": 24,
        "condition": 1.0,
        "probability": 1.0,
        "Skins": []
      },
      {
        "shortname": "ammo.shotgun.slug",
        "name": "",
        "amount": 40,
        "skin": 0,
        "amountMin": 40,
        "condition": 1.0,
        "probability": 1.0,
        "Skins": []
      },
      {
        "shortname": "surveycharge",
        "name": "",
        "amount": 20,
        "skin": 0,
        "amountMin": 20,
        "condition": 1.0,
        "probability": 1.0,
        "Skins": []
      },
      {
        "shortname": "metal.refined",
        "name": "",
        "amount": 150,
        "skin": 0,
        "amountMin": 150,
        "condition": 1.0,
        "probability": 1.0,
        "Skins": []
      },
      {
        "shortname": "bucket.helmet",
        "name": "",
        "amount": 1,
        "skin": 0,
        "amountMin": 1,
        "condition": 1.0,
        "probability": 1.0,
        "Skins": []
      },
      {
        "shortname": "cctv.camera",
        "name": "",
        "amount": 1,
        "skin": 0,
        "amountMin": 1,
        "condition": 1.0,
        "probability": 1.0,
        "Skins": []
      },
      {
        "shortname": "coffeecan.helmet",
        "name": "",
        "amount": 1,
        "skin": 0,
        "amountMin": 1,
        "condition": 1.0,
        "probability": 1.0,
        "Skins": []
      },
      {
        "shortname": "explosive.timed",
        "name": "",
        "amount": 1,
        "skin": 0,
        "amountMin": 1,
        "condition": 1.0,
        "probability": 1.0,
        "Skins": []
      },
      {
        "shortname": "metal.facemask",
        "name": "",
        "amount": 1,
        "skin": 0,
        "amountMin": 1,
        "condition": 1.0,
        "probability": 1.0,
        "Skins": []
      },
      {
        "shortname": "metal.plate.torso",
        "name": "",
        "amount": 1,
        "skin": 0,
        "amountMin": 1,
        "condition": 1.0,
        "probability": 1.0,
        "Skins": []
      },
      {
        "shortname": "mining.quarry",
        "name": "",
        "amount": 1,
        "skin": 0,
        "amountMin": 1,
        "condition": 1.0,
        "probability": 1.0,
        "Skins": []
      },
      {
        "shortname": "pistol.m92",
        "name": "",
        "amount": 1,
        "skin": 0,
        "amountMin": 1,
        "condition": 1.0,
        "probability": 1.0,
        "Skins": []
      },
      {
        "shortname": "rifle.ak",
        "name": "",
        "amount": 1,
        "skin": 0,
        "amountMin": 1,
        "condition": 1.0,
        "probability": 1.0,
        "Skins": []
      },
      {
        "shortname": "rifle.bolt",
        "name": "",
        "amount": 1,
        "skin": 0,
        "amountMin": 1,
        "condition": 1.0,
        "probability": 1.0,
        "Skins": []
      },
      {
        "shortname": "rifle.lr300",
        "name": "",
        "amount": 1,
        "skin": 0,
        "amountMin": 1,
        "condition": 1.0,
        "probability": 1.0,
        "Skins": []
      },
      {
        "shortname": "smg.2",
        "name": "",
        "amount": 1,
        "skin": 0,
        "amountMin": 1,
        "condition": 1.0,
        "probability": 1.0,
        "Skins": []
      },
      {
        "shortname": "smg.mp5",
        "name": "",
        "amount": 1,
        "skin": 0,
        "amountMin": 1,
        "condition": 1.0,
        "probability": 1.0,
        "Skins": []
      },
      {
        "shortname": "smg.thompson",
        "name": "",
        "amount": 1,
        "skin": 0,
        "amountMin": 1,
        "condition": 1.0,
        "probability": 1.0,
        "Skins": []
      },
      {
        "shortname": "supply.signal",
        "name": "",
        "amount": 1,
        "skin": 0,
        "amountMin": 1,
        "condition": 1.0,
        "probability": 1.0,
        "Skins": []
      },
      {
        "shortname": "targeting.computer",
        "name": "",
        "amount": 1,
        "skin": 0,
        "amountMin": 1,
        "condition": 1.0,
        "probability": 1.0,
        "Skins": []
      }
    ],
    "Minimum Percent Loss": 0.0,
    "Percent Increase When Using Day Of Week Loot": false,
    "Use Random Skins": false,
    "Include Workshop Skins": false,
    "Day Of Week Loot Monday": [],
    "Day Of Week Loot Tuesday": [],
    "Day Of Week Loot Wednesday": [],
    "Day Of Week Loot Thursday": [],
    "Day Of Week Loot Friday": [],
    "Day Of Week Loot Saturday": [],
    "Day Of Week Loot Sunday": [],
    "Use Day Of Week Loot": false,
    "Percent Increase On Monday": 0.0,
    "Percent Increase On Tuesday": 0.0,
    "Percent Increase On Wednesday": 0.0,
    "Percent Increase On Thursday": 0.0,
    "Percent Increase On Friday": 0.0,
    "Percent Increase On Saturday": 0.0,
    "Percent Increase On Sunday": 0.0
  },
  "TruePVE": {
    "Allow Building Damage At Events": false,
    "Allow PVP At Events": true,
    "Allow PVP Server-Wide During Events": false
  },
  "Unlock Time": {
    "Min Seconds": 300.0,
    "Max Seconds": 480.0,
    "Unlock When Npcs Die": false,
    "Require All Npcs Die Before Unlocking": false,
    "Lock Event To Player On Npc Death": false,
    "Lock Event To Player On First Entered": false
  },
  "Unlooted Announcements": {
    "Enabled": false,
    "Notify Every X Minutes (Minimum 1)": 3.0
  }
}' > server/oxide/config/DangerousTreasures.json
EOF
