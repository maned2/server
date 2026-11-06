#!/bin/bash

log() {
	echo "==================================="
	echo "$*"
}
FILENAMEPART="minecraft_atm10"
DOCKER_PATH="/var/server/games/minecraft/atm10"
BACKUP_PATH="/var/backups/minecraft_atm10"
BACKUPING_PATH="/var/server/games/minecraft/atm10/data"

log "minecraft atm10 backup"

log "current user: "
whoami

log "stopping server..."
# systemctl stop eco.service
cd "$DOCKER_PATH"
/usr/bin/docker compose down
sleep 10


log "creating backup..."
today=$(date '+%Y_%m_%d-%H-%M');
folder="$BACKUP_FOLDER/$FILENAMEPART";
tmpfolder="/var/backups/$FILENAMEPART";
day=$( date +%d );
filename="4fun4_$FILENAMEPART_${today}.tar.gz";

tar -zcf "${tmpfolder}/daily/${filename}" "$BACKUPING_PATH"

log "starting server back ..."
# systemctl start eco.service
/usr/bin/docker compose up -d


log "moving backup..."
cp "${tmpfolder}/daily/${filename}" "${folder}/daily/${filename}"
rm -f "${tmpfolder}/daily/${filename}"

log "delete older backups..."
find "${tmpfolder}/daily/" -mtime +7 -type f -name "*.gz" -delete
find "${folder}/daily/" -mtime +7 -type f -name "*.gz" -delete

log "create monthly backup..."

if [ "$day" = "01" ]; then
	cp "${folder}/daily/${filename}" "${folder}/monthly/${filename}"

	log "moving monthly backup..."
	find "${folder}/monthly/" -mtime +95 -type f -name "*.gz" -delete
fi
