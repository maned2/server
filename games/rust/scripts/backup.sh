#!/bin/bash
echo "[SCRIPTS] Backup creating..."

today=$(date '+%Y_%m_%d-%H-%M');
folder="$BACKUP_FOLDER/rust";
tmpfolder='/var/backups/rust';
filename="4fun4_rust_${today}.tar.gz";

cd /home/rust
tar -zcf "${tmpfolder}/${filename}" server

echo "[SCRIPTS] Backup created"