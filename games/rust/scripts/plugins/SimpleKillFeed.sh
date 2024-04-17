#!/bin/bash

sudo -i -u rust bash << EOF
curl -L https://umod.org/plugins/SimpleKillFeed.cs > server/oxide/plugins/SimpleKillFeed.cs
EOF
