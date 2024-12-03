#!/bin/bash

sudo -i -u rust bash << EOF
mkdir -p server/server/4fun43/cfg/

echo "decay.upkeep_period_minutes \"2880\"
server.tutorialenabled true
halloween.enabled true
halloween.murdererpopulation 5
halloween.scarecrowpopulation 5
wipetimer.wipetimezone: \"Asia/Krasnoyarsk\"" > server/server/4fun43/cfg/server.cfg

EOF

