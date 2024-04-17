#!/bin/bash

cd $RUST_SCRIPTS_FOLDER

sh ./stop.sh
sh ./backup.sh
echo "[SCRIPTS] Backup creating..."
filename = $(backupf)
echo "[SCRIPTS] Backup created"

sh ./update_rust.sh
sh ./update_oxide.sh
sh ./update_plugins_all.sh

sh ./start.sh
sh ./backup_move.sh filename
