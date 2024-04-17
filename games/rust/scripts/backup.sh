#!/bin/bash

function backupf() {
    echo "[SCRIPTS] Backup creating..."

    today=$(date '+%Y_%m_%d-%H-%M');
    folder="$BACKUP_FOLDER/rust";
    tmpfolder='/var/backups/rust';
    filename="4fun4_rust_${today}.tar.gz";

    tar -zcf "${tmpfolder}/${filename}" /home/rust/server
    echo filename
    return 1
}
