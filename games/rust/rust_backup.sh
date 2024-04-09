#!/bin/bash
whoami
systemctl stop rust.service
sleep 10

echo "Backup creating...\r"

today=$(date '+%Y_%m_%d-%H-%M');
folder="$BACKUP_FOLDER/rust";
tmpfolder='/var/backups/rust';
day=$( date +%d );
filename="4fun4_rust_${today}.tar.gz";
cd /home/rust
tar -zcf "${tmpfolder}/${filename}" server
echo "Backup created\r"

echo "Update starting\r"
sudo -i -u rust bash << EOF
cd server
echo "Server updating steam..."
/usr/games/steamcmd +force_install_dir /home/rust/server/ +login anonymous +app_update 258550 validate +quit
echo "Server updating oxide..."
curl -L -o Oxide.Rust-linux.zip https://umod.org/games/rust/download/develop
unzip -o -d /home/rust/server/ Oxide.Rust-linux.zip
echo "Server updating oxide plugins..."
curl -L https://umod.org/plugins/AbsolutGifts.cs > oxide/plugins/AbsolutGifts.cs
curl -L https://umod.org/plugins/ConnectMessages.cs > oxide/plugins/ConnectMessages.cs
curl -L https://umod.org/plugins/DeathNotes.cs > oxide/plugins/DeathNotes.cs
curl -L https://umod.org/plugins/NoGiveNotices.cs > oxide/plugins/NoGiveNotices.cs
curl -L https://umod.org/plugins/RemoverTool.cs > oxide/plugins/RemoverTool.cs
curl -L https://umod.org/plugins/StackSizeController.cs > oxide/plugins/StackSizeController.cs
curl -L https://umod.org/plugins/TruePVE.cs > oxide/plugins/TruePVE.cs
curl -L https://umod.org/plugins/ZLevelsRemastered.cs > oxide/plugins/ZLevelsRemastered.cs
curl -L https://umod.org/plugins/ZoneManager.cs > oxide/plugins/ZoneManager.cs
curl -L https://umod.org/plugins/SmoothRestarter.cs > oxide/plugins/SmoothRestarter.cs
echo "Server updating completed"
EOF

echo "Starting back server...\r"
systemctl start rust.service

echo "Moving backup and delete older...\r"

cp "${tmpfolder}/${filename}" "${folder}/daily/${filename}"
rm -f "${tmpfolder}/${filename}"

find "${tmpfolder}/" -mtime +7 -type f -name "*.gz" -delete
find "${folder}/daily/" -mtime +7 -type f -name "*.gz" -delete
if [ "$day" = "01" ]; then
	cp "${folder}/daily/${filename}" "${folder}/monthly/${filename}"
	find "${folder}/monthly/" -mtime +95 -type f -name "*.gz" -delete
fi

echo "Restart complete successfully\r"
