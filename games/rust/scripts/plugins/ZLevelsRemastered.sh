#!/bin/bash
echo "[SCRIPTS] Plugin update ZLevelsRemastered..."

sudo -i -u rust bash << EOF
curl -L https://umod.org/plugins/ZLevelsRemastered.cs > server/oxide/plugins/ZLevelsRemastered.cs
EOF
