#!/bin/bash

sudo -i -u rust bash << EOF
curl -L https://umod.org/plugins/ZoneManager.cs > server/oxide/plugins/ZoneManager.cs
EOF
