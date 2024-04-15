#!/bin/bash
sudo -i -u rust bash << EOF
cd server
curl -L https://umod.org/plugins/DiscordStatus.cs > oxide/plugins/DiscordStatus.cs
EOF
