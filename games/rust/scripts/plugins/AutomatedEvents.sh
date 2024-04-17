#!/bin/bash

sudo -i -u rust bash << EOF
curl -L https://umod.org/plugins/AutomatedEvents.cs > server/oxide/plugins/AutomatedEvents.cs

FILE=server/oxide/config/AutomatedEvents.json_original
if [ ! -f "$FILE" ]; then
    cp server/oxide/config/AutomatedEvents.json FILE
fi

echo "{
  "Settings": {
    "Enable Debug Mode": false,
    "Announce On Plugin Loaded": false,
    "Announce On Event Triggered": false,
    "Use GUIAnnouncements Plugin": false
  },
  "Chat Settings": {
    "Next Event Command": "nextevent",
    "Run Event Command": "runevent",
    "Kill Event Command": "killevent",
    "Chat Prefix": "[AutomatedEvents]: ",
    "Chat Prefix Color": "#00FFFF",
    "Chat SteamID Icon": 0
  },
  "Event Settings": {
    "Bradley Event": {
      "Enabled": false,
      "Display Name": "Bradley",
      "Disable Vanilla Event": false,
      "Event Start Offset (Minutes)": 0.0,
      "Minimum Time Between (Minutes)": 30.0,
      "Maximum Time Between (Minutes)": 45.0,
      "Minimum Online Players Required (0 = Disabled)": 0,
      "Maximum Online Players Required (0 = Disabled)": 0,
      "Announce Next Run Time": false,
      "Restart Timer On Entity Kill": true,
      "Kill Existing Event On Plugin Loaded": false,
      "Maximum Number On Server": 1,
      "Exclude Player's Entity": true,
      "Event Weights": []
    },
    "Cargo Plane Event": {
      "Enabled": false,
      "Display Name": "Cargo Plane",
      "Disable Vanilla Event": false,
      "Event Start Offset (Minutes)": 0.0,
      "Minimum Time Between (Minutes)": 30.0,
      "Maximum Time Between (Minutes)": 45.0,
      "Minimum Online Players Required (0 = Disabled)": 0,
      "Maximum Online Players Required (0 = Disabled)": 0,
      "Announce Next Run Time": false,
      "Restart Timer On Entity Kill": true,
      "Kill Existing Event On Plugin Loaded": false,
      "Maximum Number On Server": 1,
      "Exclude Player's Entity": true,
      "Event Weights": [
        {
          "Weight": 60,
          "Name": null,
          "Argument Type (Command or CallHook)": null,
          "Arguments": null
        },
        {
          "Weight": 20,
          "Name": "FancyDrop",
          "Argument Type (Command or CallHook)": "Command",
          "Arguments": [
            "ad.random"
          ]
        },
        {
          "Weight": 20,
          "Name": "PlaneCrash",
          "Argument Type (Command or CallHook)": "Command",
          "Arguments": [
            "callcrash"
          ]
        }
      ]
    },
    "Cargo Ship Event": {
      "Enabled": false,
      "Display Name": "Cargo Ship",
      "Disable Vanilla Event": false,
      "Event Start Offset (Minutes)": 0.0,
      "Minimum Time Between (Minutes)": 30.0,
      "Maximum Time Between (Minutes)": 45.0,
      "Minimum Online Players Required (0 = Disabled)": 0,
      "Maximum Online Players Required (0 = Disabled)": 0,
      "Announce Next Run Time": false,
      "Restart Timer On Entity Kill": true,
      "Kill Existing Event On Plugin Loaded": false,
      "Maximum Number On Server": 1,
      "Exclude Player's Entity": true,
      "Event Weights": [
        {
          "Weight": 80,
          "Name": null,
          "Argument Type (Command or CallHook)": null,
          "Arguments": null
        },
        {
          "Weight": 20,
          "Name": "RustTanic",
          "Argument Type (Command or CallHook)": "Command",
          "Arguments": [
            "calltitanic"
          ]
        }
      ]
    },
    "Chinook (CH47) Event": {
      "Enabled": false,
      "Display Name": "Chinook",
      "Disable Vanilla Event": false,
      "Event Start Offset (Minutes)": 0.0,
      "Minimum Time Between (Minutes)": 30.0,
      "Maximum Time Between (Minutes)": 45.0,
      "Minimum Online Players Required (0 = Disabled)": 0,
      "Maximum Online Players Required (0 = Disabled)": 0,
      "Announce Next Run Time": false,
      "Restart Timer On Entity Kill": true,
      "Kill Existing Event On Plugin Loaded": false,
      "Maximum Number On Server": 1,
      "Exclude Player's Entity": true,
      "Event Weights": []
    },
    "Helicopter Event": {
      "Enabled": false,
      "Display Name": "Helicopter",
      "Disable Vanilla Event": false,
      "Event Start Offset (Minutes)": 0.0,
      "Minimum Time Between (Minutes)": 45.0,
      "Maximum Time Between (Minutes)": 60.0,
      "Minimum Online Players Required (0 = Disabled)": 0,
      "Maximum Online Players Required (0 = Disabled)": 0,
      "Announce Next Run Time": false,
      "Restart Timer On Entity Kill": true,
      "Kill Existing Event On Plugin Loaded": false,
      "Maximum Number On Server": 1,
      "Exclude Player's Entity": true,
      "Event Weights": [
        {
          "Weight": 60,
          "Name": null,
          "Argument Type (Command or CallHook)": null,
          "Arguments": null
        },
        {
          "Weight": 20,
          "Name": "HeliRefuel",
          "Argument Type (Command or CallHook)": "Command",
          "Arguments": [
            "pe call"
          ]
        },
        {
          "Weight": 20,
          "Name": "PilotEject",
          "Argument Type (Command or CallHook)": "Command",
          "Arguments": [
            "hr call"
          ]
        }
      ]
    },
    "Santa Sleigh Event": {
      "Enabled": false,
      "Display Name": "Santa Sleigh",
      "Disable Vanilla Event": false,
      "Event Start Offset (Minutes)": 0.0,
      "Minimum Time Between (Minutes)": 30.0,
      "Maximum Time Between (Minutes)": 60.0,
      "Minimum Online Players Required (0 = Disabled)": 0,
      "Maximum Online Players Required (0 = Disabled)": 0,
      "Announce Next Run Time": false,
      "Restart Timer On Entity Kill": true,
      "Kill Existing Event On Plugin Loaded": false,
      "Maximum Number On Server": 1,
      "Exclude Player's Entity": true,
      "Event Weights": []
    },
    "Christmas Event": {
      "Enabled": false,
      "Display Name": "Christmas",
      "Disable Vanilla Event": false,
      "Event Start Offset (Minutes)": 0.0,
      "Minimum Time Between (Minutes)": 60.0,
      "Maximum Time Between (Minutes)": 120.0,
      "Minimum Online Players Required (0 = Disabled)": 0,
      "Maximum Online Players Required (0 = Disabled)": 0,
      "Announce Next Run Time": false,
      "Restart Timer On Entity Kill": true,
      "Kill Existing Event On Plugin Loaded": false,
      "Maximum Number On Server": 1,
      "Exclude Player's Entity": true,
      "Event Weights": [
        {
          "Weight": 80,
          "Name": null,
          "Argument Type (Command or CallHook)": null,
          "Arguments": null
        },
        {
          "Weight": 20,
          "Name": "AlphaChristmas",
          "Argument Type (Command or CallHook)": "Command",
          "Arguments": [
            "alphachristmas.refill"
          ]
        }
      ]
    },
    "Easter Event": {
      "Enabled": false,
      "Display Name": "Easter",
      "Disable Vanilla Event": false,
      "Event Start Offset (Minutes)": 0.0,
      "Minimum Time Between (Minutes)": 30.0,
      "Maximum Time Between (Minutes)": 60.0,
      "Minimum Online Players Required (0 = Disabled)": 0,
      "Maximum Online Players Required (0 = Disabled)": 0,
      "Announce Next Run Time": false,
      "Restart Timer On Entity Kill": true,
      "Kill Existing Event On Plugin Loaded": false
    },
    "Halloween Event": {
      "Enabled": true,
      "Display Name": "Halloween",
      "Disable Vanilla Event": false,
      "Event Start Offset (Minutes)": 0.0,
      "Minimum Time Between (Minutes)": 30.0,
      "Maximum Time Between (Minutes)": 60.0,
      "Minimum Online Players Required (0 = Disabled)": 0,
      "Maximum Online Players Required (0 = Disabled)": 0,
      "Announce Next Run Time": false,
      "Restart Timer On Entity Kill": true,
      "Kill Existing Event On Plugin Loaded": false
    }
  }
}" > server/oxide/config/AutomatedEvents.json
EOF
