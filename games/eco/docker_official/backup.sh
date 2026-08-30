#!/bin/bash
echo "current user: "
whoami

echo "stopping server..."
# systemctl stop eco.service
cd /var/server/games/eco/docker_official
/usr/bin/docker compose down
sleep 10


echo "creating backup..."
today=$(date '+%Y_%m_%d-%H-%M');
folder="$BACKUP_FOLDER/eco";
tmpfolder='/var/backups/eco';
day=$( date +%d );
filename="4fun4_eco_${today}.tar.gz";

tar -zcf "${tmpfolder}/daily/${filename}" /var/server/games/eco/docker_official/mount

echo "starting server back ..."
# systemctl start eco.service
/usr/bin/docker compose up -d


echo "moving backup..."

cp "${tmpfolder}/daily/${filename}" "${folder}/daily/${filename}"
rm -f "${tmpfolder}/daily/${filename}"

echo "delete older backups..."

find "${tmpfolder}/daily/" -mtime +7 -type f -name "*.gz" -delete
find "${folder}/daily/" -mtime +7 -type f -name "*.gz" -delete

echo "create monthly backup..."

if [ "$day" = "01" ]; then
	cp "${folder}/daily/${filename}" "${folder}/monthly/${filename}"

	echo "moving monthly backup..."
	find "${folder}/monthly/" -mtime +95 -type f -name "*.gz" -delete
fi
