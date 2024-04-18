#!/bin/bash
echo "[SCRIPTS] Plugin update CopyPaste..."

sudo -i -u rust bash << EOF
curl -L https://umod.org/plugins/CopyPaste.cs > server/oxide/plugins/CopyPaste.cs
EOF
