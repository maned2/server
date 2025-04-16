#!/bin/bash

cd $RUST_SCRIPTS_FOLDER

sh ./stop.sh
sh ./ports_close.sh

sh ./update_rust.sh
sh ./cfg_write.sh

sh ./start.sh

sh ./ports_open.sh