# INSTALL
```shell
# once
sudo useradd -M rust
sudo usermod -L rust
sudo mkdir -p /home/rust/server
sudo chown -R rust:rust /home/rust

sudo mkdir /var/log/rust

#each update
sudo cp /var/server/server2/games/rust/rust.service /etc/systemd/system/rust.service
sudo systemctl daemon-reload

sudo systemctl enable rust

sudo chmod +x /var/server/server2/games/rust/start.sh

sudo nano /etc/security/limits.conf
# rust soft nofile 65535
# rust hard nofile 65535

sudo service rust start

sudo journalctl -xeu rust.service

sudo ufw allow 28015 # main port
sudo ufw allow 28017 # query port
sudo ufw allow 28083 # rust+ port
sudo ufw deny 28017

#logs
tail -f /var/log/rust/app.log
tail -f /var/log/rust/err.log

#settings
sudo su -l rust -s /bin/bash

mkdir -p server/server/4fun42/cfg/

echo "ownerid 76561198341247837 \"unnamed\" \"no reason\"
ownerid 76561198171986467 \"unnamed\" \"no reason\"" > server/server/4fun42/cfg/users.cfg

echo "decay.upkeep_period_minutes \"2880\"
relationshipmanager.maxteamsize 3" > server/server/4fun42/cfg/server.cfg

crontab -e
#0 9 * * * /var/server/server2/games/rust/rust_backup.sh >> /var/log/rust/app.log

# F1
# client.connect <ip>:28015

# oxide.grant group default removertool.normal
# server.save

```

# Settings:

nano server/oxide/config/PreventLooting.json
# "UseZoneManager": true,

nano server/oxide/config/SmoothRestarter.json
# "9:00"

nano server/oxide/config/TruePVE.json
# "useZones": true,

nano server/oxide/config/SimpleKillFeed.json
# "Log PvP Kill events": true,

nano server/oxide/config/NightZombies.json
# "Spawn near players": true,
# "Min pop for near player spawn": 1,

nano server/oxide/config/TimedEvents.json
nano server/oxide/config/RainOfFire.json



nano server/oxide/config/RaidableBases.json
```commandline
#"Scheduled Events": {
#      "Enabled": true,
#      "Every Min Seconds": 3600.0,
#      "Every Max Seconds": 7200.0,
#      "Max Scheduled Events": 1,
#      "Max To Spawn At Once (0 = Use Max Scheduled Events Amount)": 1,
#      "Chance To Randomly Spawn PVP Bases (0 = Ignore Setting)": 0.0,
#      "Include PVE Bases": true,
#      "Include PVP Bases": true,
#      "Minimum Required Players Online": 1,
#      "Maximum Limit Of Players Online": 300,
#      "Time To Wait Between Spawns": 15.0,
#      "Convert PVE To PVP": false,
#      "Convert PVP To PVE": false,
#      "Ignore Safe Checks": false,
#      "Ignore Safe Checks In X Radius Only": 0.0,
#      "Ignore Player Entities At Custom Spawn Locations": false,
#      "Spawn Bases X Distance Apart": 100.0,
#      "Spawns Database File (Optional)": "none"
#
},
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
https://umod.org/plugins/image-library
https://umod.org/plugins/absolut-gifts
https://umod.org/plugins/connect-messages
https://umod.org/plugins/simple-kill-feed
https://umod.org/plugins/smooth-restarter


https://umod.org/plugins/building-actions

https://umod.org/plugins/zlevels-remastered

https://umod.org/plugins/true-pve
https://umod.org/plugins/prevent-looting

https://umod.org/plugins/zone-manager
https://umod.org/plugins/zone-manager-auto-zones

https://umod.org/plugins/automated-events
https://umod.org/plugins/timed-events
https://umod.org/plugins/night-zombies
https://umod.org/plugins/raidable-bases
https://umod.org/plugins/rain-of-fire


какие ещё посмотреть: 
https://umod.org/plugins/event-manager

```
ownerid 76561198341247837
ownerid 76561198171986467
removeownerid 76561198341247837

# GAME
F1
client.connect ip:28015
oxide.version
plugins

global.god true
global.god false
debug.noclip 

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