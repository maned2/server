#!/bin/bash
whoami
systemctl stop eco.service
sleep 10
today=$(date '+%Y_%m_%d-%H-%M');
folder="$BACKUP_FOLDER/eco";
tmpfolder='/var/backups/eco';
day=$( date +%d );
filename="4fun4_eco_${today}.tar.gz";
tar -zcf "${tmpfolder}/daily/${filename}" /home/eco/server
systemctl start eco.service

cp "${tmpfolder}/daily/${filename}" "${folder}/daily/${filename}"
rm -f "${tmpfolder}/daily/${filename}"

find "${tmpfolder}/daily/" -mtime +7 -type f -name "*.gz" -delete
find "${folder}/daily/" -mtime +7 -type f -name "*.gz" -delete
if [ "$day" = "01" ]; then
	cp "${folder}/daily/${filename}" "${folder}/monthly/${filename}"
	find "${folder}/monthly/" -mtime +95 -type f -name "*.gz" -delete
fi
