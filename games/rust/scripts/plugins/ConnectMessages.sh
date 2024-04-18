#!/bin/bash
echo "[SCRIPTS] Plugin update ConnectMessages..."

sudo -i -u rust bash << EOF
curl -L https://umod.org/plugins/ConnectMessages.cs > server/oxide/plugins/ConnectMessages.cs
EOF
