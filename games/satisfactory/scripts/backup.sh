#!/bin/bash

echo "[SCRIPTS] Backup creating..."

today=$(date '+%Y_%m_%d-%H-%M');
folder="$BACKUP_FOLDER/satisfactory";
tmpfolder='/var/backups/satisfactory';
filename="4fun4_satisfactory_${today}.tar.gz";

tar -zcf "${tmpfolder}/${filename}" /home/rust/server
echo "[SCRIPTS] Backup created"
