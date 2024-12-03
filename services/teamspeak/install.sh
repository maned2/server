#!/bin/bash

useradd -mrd /opt/teamspeak teamspeak -s "$(which bash)"

apt install bzip2

sudo -i -u teamspeak bash << EOF

wget https://files.teamspeak-services.com/releases/server/3.13.7/teamspeak3-server_linux_amd64-3.13.7.tar.bz2 -O teamspeak-server.tar.bz2

tar xvfj teamspeak-server.tar.bz2 --strip-components 1

touch ~/.ts3server_license_accepted

EOF

cat <<EOF > /etc/systemd/system/teamspeak.service
[Unit]
Description=Teamspeak Service
Wants=network.target

[Service]
WorkingDirectory=/opt/teamspeak
User=teamspeak
ExecStart=/opt/teamspeak/ts3server_minimal_runscript.sh
ExecStop=/opt/teamspeak/ts3server_startscript.sh stop
ExecReload=/opt/teamspeak/ts3server_startscript.sh restart
Restart=always
RestartSec=15

[Install]
WantedBy=multi-user.target
EOF

systemctl daemon-reload

systemctl enable --now teamspeak