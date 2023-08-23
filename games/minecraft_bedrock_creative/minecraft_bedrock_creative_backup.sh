#!/bin/bash
whoami
systemctl stop minecraft_bedrock_creative.service
sleep 10

today=$(date '+%Y_%m_%d-%H-%M');
folder="$BACKUP_FOLDER/minecraft_bedrock_creative";
tmpfolder='/var/backups/minecraft_bedrock_creative';
day=$( date +%d );
filename="4fun4_minecraft_bedrock_creative_${today}.tar.gz";
tar -zcf "${tmpfolder}/daily/${filename}" /home/minecraft/server_bedrock_creative
systemctl start minecraft_bedrock_creative.service

cp "${tmpfolder}/daily/${filename}" "${folder}/daily/${filename}"
rm -f "${tmpfolder}/daily/${filename}"

find "${tmpfolder}/daily/" -mtime +7 -type f -name "*.gz" -delete
find "${folder}/daily/" -mtime +7 -type f -name "*.gz" -delete
if [ "$day" = "01" ]; then
	cp "${folder}/daily/${filename}" "${folder}/monthly/${filename}"
	find "${folder}/monthly/" -mtime +95 -type f -name "*.gz" -delete
fi
