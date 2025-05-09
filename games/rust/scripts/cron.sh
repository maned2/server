#!/bin/bash

cd $RUST_SCRIPTS_FOLDER

today=`date '+%Y.%m.%d-%H:%M:%S'`;
day=$( date +%u );
echo $today
echo $day

if [ "$day" = "2" ] ||  [ "$day" = "4" ] || [ "$day" = "6" ]; then
  sh ./stop.sh
  sh ./ports_close.sh

  sh ./backup.sh

  #sh ./update_rust.sh
  #sh ./cfg_write.sh
  #sh ./update_oxide.sh
  #sh ./update_plugins_all.sh
  #sh ./cfg_write.sh

  sh ./start.sh
  sh ./ports_open.sh
  sh ./backup_move.sh
else
  sh ./backup.sh
  sh ./backup_move.sh
fi