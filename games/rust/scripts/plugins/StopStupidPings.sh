#!/bin/bash
echo "[SCRIPTS] Plugin update StopStupidPings..."

sudo -i -u rust bash << EOF



cat << EAF > server/oxide/plugins/StopStupidPings.cs
//Reference: 0Harmony
//Reference: Facepunch.Ping
using Harmony;

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
EAF

EOF
