#!/bin/bash

cp $SERVER2_ROOT_FOLDER/games/eco/scripts/eco/increase_hand.sh /home/eco/increase_hand.sh
chown eco /home/eco/increase_hand.sh
chmod +x /home/eco/increase_hand.sh

cp $SERVER2_ROOT_FOLDER/games/eco/scripts/eco/run.sh /home/eco/run.sh
chown eco /home/eco/run.sh
chmod +x /home/eco/run.sh

chmod +x $SERVER2_ROOT_FOLDER/games/eco/eco_backup.sh


cp $SERVER2_ROOT_FOLDER/games/eco/eco.service /etc/systemd/system/eco.service
systemctl daemon-reload