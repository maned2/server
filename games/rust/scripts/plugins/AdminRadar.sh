#!/bin/bash

sudo -i -u rust bash << EOF
cd server
curl -L https://umod.org/plugins/AdminRadar.cs > oxide/plugins/AdminRadar.cs
EOF

