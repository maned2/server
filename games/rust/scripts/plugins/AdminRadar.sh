#!/bin/bash

sudo -i -u rust bash << EOF
curl -L https://umod.org/plugins/AdminRadar.cs > server/oxide/plugins/AdminRadar.cs
EOF

