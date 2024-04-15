#!/bin/bash

sudo -i -u rust bash << EOF
curl -L https://umod.org/extensions/discord/download > server/RustDedicated_Data/Managed/Oxide.Ext.Discord.dll
EOF
