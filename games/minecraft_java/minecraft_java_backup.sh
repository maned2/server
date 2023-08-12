#!/bin/bash
whoami
systemctl stop minecraft_java.service
sleep 10

today=$(date '+%Y_%m_%d-%H-%M');
folder="$BACKUP_FOLDER/minecraft_java";
tmpfolder='/var/backups/minecraft_java';
day=$( date +%d );
filename="4fun4_minecraft_java_${today}.tar.gz";
tar -zcf "${tmpfolder}/daily/${filename}" /home/minecraft/server_java
systemctl start minecraft_java.service

cp "${tmpfolder}/daily/${filename}" "${folder}/daily/${filename}"
rm -f "${tmpfolder}/daily/${filename}"

find "${tmpfolder}/daily/" -mtime +7 -type f -name "*.gz" -delete
find "${folder}/daily/" -mtime +7 -type f -name "*.gz" -delete
if [ "$day" = "01" ]; then
	cp "${folder}/daily/${filename}" "${folder}/monthly/${filename}"
	find "${folder}/monthly/" -mtime +95 -type f -name "*.gz" -delete
fi
