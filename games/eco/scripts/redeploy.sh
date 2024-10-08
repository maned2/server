#!/bin/bash

cp $SERVER2_ROOT_FOLDER/games/eco/scripts/eco/increase_hand.sh /home/eco/increase_hand.sh
chown eco:eco /home/eco/increase_hand.sh
chmod +x /home/eco/increase_hand.sh

cp $SERVER2_ROOT_FOLDER/games/eco/scripts/eco/prerun.sh /home/eco/prerun.sh
chown eco:eco /home/eco/prerun.sh
chmod +x /home/eco/prerun.sh

cp $SERVER2_ROOT_FOLDER/games/eco/scripts/eco/conf.sh /home/eco/conf.sh
chown eco:eco /home/eco/conf.sh
chmod +x /home/eco/conf.sh

cp $SERVER2_ROOT_FOLDER/games/eco/scripts/eco/run.sh /home/eco/run.sh
chown eco:eco /home/eco/run.sh
chmod +x /home/eco/run.sh

chmod +x $SERVER2_ROOT_FOLDER/games/eco/scripts/backup.sh


cp $SERVER2_ROOT_FOLDER/games/eco/eco.service /etc/systemd/system/eco.service
systemctl daemon-reload


mkdir /home/eco/server
chown eco:eco /home/eco/server