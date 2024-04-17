#!/bin/bash

sudo -i -u rust bash << EOF
curl -L https://umod.org/plugins/BuildingActions.cs > server/oxide/plugins/BuildingActions.cs
EOF
