# INSTALL
```shell
# once
sudo useradd -M rust
sudo usermod -L rust
sudo mkdir -p /home/rust/server
sudo chown -R rust:rust /home/rust

sudo mkdir /var/log/rust

#each update
sudo cp /var/server/games/rust/rust.service /etc/systemd/system/rust.service
sudo systemctl daemon-reload

sudo systemctl enable rust

sudo chmod +x /var/server/games/rust/start_classic.sh
sudo chmod +x /var/server/games/rust/start_modded.sh

sudo nano /etc/security/limits.conf
# rust soft nofile 65535
# rust hard nofile 65535

sudo service rust start

sudo journalctl -xeu rust.service

sudo ufw allow 28015 # main port
sudo ufw allow 28017 # query port
sudo ufw allow 28083 # rust+ port
#sudo ufw deny 28017

#logs
tail -f /var/log/rust/app.log
tail -f /var/log/rust/err.log

#settings
sudo su -l rust -s /bin/bash

mkdir -p server/server/4fun42/cfg/

echo "ownerid 76561198341247837 \"unnamed\" \"no reason\"
ownerid 76561198171986467 \"unnamed\" \"no reason\"" > server/server/4fun43/cfg/users.cfg

echo "decay.upkeep_period_minutes \"2880\"
" > server/server/4fun43/cfg/server.cfg

sudo crontab -e
#0 5 * * * /var/server/games/rust/scripts/cron.sh >> /var/log/rust/cron.log
#0 6 3 5 * /var/server/games/rust/scripts/wipe.sh >> /var/log/rust/wipe.log

# F1
# client.connect <ip>:28015

# oxide.grant group default removertool.normal
# server.save

```

# Settings:

```commandline
halloween.enabled true
halloween.murdererpopulation 5
halloween.scarecrowpopulation 5
zombie.population 5
scarecrow.population 5
```

Procedural Map
Barren # simple Procedural Map
HapisIsland

# Mods
```commandline
# install oxide
# unzip linux installation file to server folder:

#local:
scp games/rust/files/Oxide.Rust-linux.zip loc2:Oxide.Rust-linux.zip
scp games/rust/files/oxide_mods.zip loc2:oxide_mods.zip

#on server:
sudo cp Oxide.Rust-linux.zip /home/rust/server/Oxide.Rust-linux.zip
sudo cp oxide_mods.zip /home/rust/server/oxide_mods.zip

sudo chown rust:rust /home/rust/server/Oxide.Rust-linux.zip
sudo chown rust:rust /home/rust/server/oxide_mods.zip

sudo su -l rust -s /bin/bash

cd servercd 

unzip -d /home/rust/server/ Oxide.Rust-linux.zip
unzip -d /home/rust/server/oxide/plugins/ oxide_mods.zip
 

#install mods

какие ещё посмотреть: 
https://umod.org/plugins/discord-status
https://umod.org/plugins/event-manager
https://umod.org/plugins/kill-streaks

```
ownerid 76561198341247837
ownerid 76561198171986467
removeownerid 76561198341247837

# GAME
F1
client.connect ip:28015

global.god true
global.god false
debug.noclip 
debug.debugcamera
refillvitals

combatlog <Steam64ID>

banid Steam64ID <name> <reason> <duration>
# banid Steam64ID <name> <reason> 1d
server.writecfg

heli.call
heli.calltome
ent who

oxide.version
plugins
oxide.reload <pluginName>

oxide.grant user <name><permission>
oxide.grant user "BOBR KURWA" removertool.admin
oxide.grant group users removertool.normal

oxide.revoke

chat commads:
/remove

# Update
```commandline
sudo service rust stop
sudo su
./rust_backup.sh
exit

sudo su -l rust -s /bin/bash
cd server
/usr/games/steamcmd +force_install_dir /home/rust/server/ +login anonymous +app_update 258550 validate +quit
exit
exit

scp games/rust/files/Oxide.Rust-linux.zip loc2:Oxide.Rust-linux.zip
scp games/rust/files/oxide_mods.zip loc2:oxide_mods.zip
ssh loc2

sudo cp Oxide.Rust-linux.zip /home/rust/server/Oxide.Rust-linux.zip
sudo cp oxide_mods.zip /home/rust/server/oxide_mods.zip

sudo chown rust:rust /home/rust/server/Oxide.Rust-linux.zip
sudo chown rust:rust /home/rust/server/oxide_mods.zip

sudo su -l rust -s /bin/bash

cd server 

unzip -d /home/rust/server/ Oxide.Rust-linux.zip
unzip -d /home/rust/server/oxide/plugins/ oxide_mods.zip
exit
sudo service rust start

```

# Restore backup:
```commandline
sudo cp /mnt/data/backups/rust/daily/4fun4_rust_2024_04_09-09-01.tar.gz /home/rust/backup.tar.gz
sudo chown rust:rust /home/rust/backup.tar.gz

#list what in archive
tar -ztvf /home/rust/backup.tar.gz


sudo su -l rust -s /bin/bash
tar -xvzf backup.tar.gz -C /
```