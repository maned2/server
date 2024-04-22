#!/bin/bash
echo "[SCRIPTS] Moving backup and delete older backups..."

cd $RUST_SCRIPTS_FOLDER

folder="$BACKUP_FOLDER/rust";
tmpfolder='/var/backups/rust';
day=$( date +%d );
filename="$1";

echo "[SCRIPTS] Try ${tmpfolder}/${filename} to ${folder}/daily/${filename}"

cp "${tmpfolder}/*.tar.gz" "${folder}/daily/"
rm -f "${tmpfolder}/*.tar.gz"

find "${tmpfolder}/" -mtime +7 -type f -name "*.gz" -delete
find "${folder}/daily/" -mtime +7 -type f -name "*.gz" -delete
if [ "$day" = "01" ]; then
	cp "${folder}/daily/${filename}" "${folder}/monthly/${filename}"
	find "${folder}/monthly/" -mtime +95 -type f -name "*.gz" -delete
fi
echo "[SCRIPTS] Moving backup and delete older completed"