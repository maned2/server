#!/bin/bash
echo "[R] Server stopping..."
systemctl stop rust.service
sleep 10
echo "[R] Server stopped"

echo "[R] Backup creating..."
today=$(date '+%Y_%m_%d-%H-%M');
folder="$BACKUP_FOLDER/rust";
tmpfolder='/var/backups/rust';
day=$( date +%d );
filename="4fun4_rust_${today}.tar.gz";
cd /home/rust
tar -zcf "${tmpfolder}/${filename}" server
echo "[R] Backup created"

echo "[R] Update starting..."
sudo -i -u rust bash << EOF
cd server
echo "[R] Server updating steam..."
/usr/games/steamcmd +force_install_dir /home/rust/server/ +login anonymous +app_update 258550 validate +quit
echo "[R] Server updating oxide..."
curl -L -o Oxide.Rust-linux.zip https://umod.org/games/rust/download/develop
unzip -o -d /home/rust/server/ Oxide.Rust-linux.zip
echo "[R] Server updating oxide plugins..."
rm oxide/plugins/*

curl -L https://umod.org/plugins/AbsolutGifts.cs > oxide/plugins/AbsolutGifts.cs
curl -L https://umod.org/plugins/ConnectMessages.cs > oxide/plugins/ConnectMessages.cs
curl -L https://umod.org/plugins/SimpleKillFeed.cs > oxide/plugins/SimpleKillFeed.cs

curl -L https://umod.org/plugins/SmoothRestarter.cs > oxide/plugins/SmoothRestarter.cs

curl -L https://umod.org/plugins/BuildingActions.cs > oxide/plugins/BuildingActions.cs

curl -L https://umod.org/plugins/ZLevelsRemastered.cs > oxide/plugins/ZLevelsRemastered.cs

curl -L https://umod.org/plugins/TruePVE.cs > oxide/plugins/TruePVE.cs
curl -L https://umod.org/plugins/PreventLooting.cs > oxide/plugins/PreventLooting.cs

curl -L https://umod.org/plugins/ZoneManager.cs > oxide/plugins/ZoneManager.cs
curl -L https://umod.org/plugins/ZoneManagerAutoZones.cs > oxide/plugins/ZoneManagerAutoZones.cs

curl -L https://umod.org/plugins/AutomatedEvents.cs > oxide/plugins/AutomatedEvents.cs
curl -L https://umod.org/plugins/TimedEvents.cs > oxide/plugins/TimedEvents.cs
curl -L https://umod.org/plugins/NightZombies.cs > oxide/plugins/NightZombies.cs
curl -L https://umod.org/plugins/RaidableBases.cs > oxide/plugins/RaidableBases.cs
curl -L https://umod.org/plugins/RainOfFire.cs > oxide/plugins/RainOfFire.cs


echo "//Reference: 0Harmony
//Reference: Facepunch.Ping
using Facepunch.Rust;
using Harmony;
using Oxide.Core;
using System.Linq;
using System.Collections.Generic;
using System.Reflection;
using System.Reflection.Emit;
using UnityEngine;

namespace Oxide.Plugins {
        [Info("stop the ping nonsence", "uknown", "4.2.0")]
        [Description("figure out the region and stop pinging! The server is not physically moving every 5 minutes")]
        class StopStupidPings : CovalencePlugin {

                private void Unload() { _harmonyInstance.UnpatchAll(_harmonyInstance.Id); }
                private void Init() {
                        _harmonyInstance = HarmonyInstance.Create(Name);
                        _harmonyInstance.Patch(AccessTools.Method(typeof(Facepunch.Ping.PingEstimater), "RefreshCacheIfExpired"),
                                prefix: new HarmonyMethod(typeof(StopCacheRefreshing), nameof(StopCacheRefreshing.Prefix)));
                }

                private HarmonyInstance _harmonyInstance;
                private static bool HasChecked = false;
                private class StopCacheRefreshing {
                        internal static bool Prefix() {
                                if (!HasChecked) { HasChecked = true; return true; }
                                return false;
                        }
                }

        }
}
" > oxide/plugins/StopStupidPings.cs



echo "[R] Server updating completed"
EOF

echo "[R] Starting server back..."
systemctl start rust.service

echo "[R] Moving backup and delete older backups..."

cp "${tmpfolder}/${filename}" "${folder}/daily/${filename}"
rm -f "${tmpfolder}/${filename}"

find "${tmpfolder}/" -mtime +7 -type f -name "*.gz" -delete
find "${folder}/daily/" -mtime +7 -type f -name "*.gz" -delete
if [ "$day" = "01" ]; then
	cp "${folder}/daily/${filename}" "${folder}/monthly/${filename}"
	find "${folder}/monthly/" -mtime +95 -type f -name "*.gz" -delete
fi

echo "[R] Restart complete successfully"
