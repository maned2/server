#!/bin/bash

cd $RUST_SCRIPTS_FOLDER

sh ./stop.sh
sh ./ports_close.sh

sh ./update_rust.sh
sh ./cfg_write_mods.sh
sh ./update_oxide.sh
sh ./update_plugins_all.sh
sh ./cfg_write.sh

sh ./start.sh


#TOOD: use rcon
sleep 30m
sh ./stop.sh
sh ./update_plugins_all.sh
sh ./start.sh

sh ./ports_open.sh