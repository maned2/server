#!/bin/bash
echo "[SCRIPTS] Plugin update ZoneDomes..."

sudo -i -u rust bash << EOF
curl -L https://umod.org/plugins/ZoneDomes.cs > server/oxide/plugins/ZoneDomes.cs
EOF
