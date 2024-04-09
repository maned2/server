#!/bin/bash
whoami
systemctl stop rust.service
sleep 10

today=$(date '+%Y_%m_%d-%H-%M');
folder="$BACKUP_FOLDER/rust";
tmpfolder='/var/backups/rust';
day=$( date +%d );
filename="4fun4_rust_${today}.tar.gz";
cd /home/rust
tar -zcf "${tmpfolder}/${filename}" server


su -l rust -s /bin/bash
cd server
/usr/games/steamcmd +force_install_dir /home/rust/server/ +login anonymous +app_update 258550 validate +quit
exit

systemctl start rust.service

cp "${tmpfolder}/${filename}" "${folder}/daily/${filename}"
rm -f "${tmpfolder}/${filename}"

find "${tmpfolder}/" -mtime +7 -type f -name "*.gz" -delete
find "${folder}/daily/" -mtime +7 -type f -name "*.gz" -delete
if [ "$day" = "01" ]; then
	cp "${folder}/daily/${filename}" "${folder}/monthly/${filename}"
	find "${folder}/monthly/" -mtime +95 -type f -name "*.gz" -delete
fi
