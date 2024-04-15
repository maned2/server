#!/bin/bash

sudo -i -u rust bash << EOF
cd server
curl -L https://umod.org/plugins/ConnectMessages.cs > oxide/plugins/ConnectMessages.cs
EOF
