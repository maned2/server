#!/bin/bash

cd $RUST_SCRIPTS_FOLDER

sh ./stop.sh
sh ./backup.sh

sh ./start.sh
sh ./backup_move.sh
