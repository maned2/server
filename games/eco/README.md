# installation
```shell
sudo apt install libgdiplus libc6-dev
sudo useradd -m eco
sudo usermod -L eco # lock a user's password

sudo mkdir /var/log/eco

chmod +x ./games/eco/scripts/redeploy.sh
sudo ./games/eco/scripts/redeploy.sh

sudo cp $SERVER2_ROOT_FOLDER/games/minecraft_java/minecraft_java.service /etc/systemd/system/minecraft_java.service
sudo systemctl daemon-reload

sudo service eco status

# enable autostart
sudo systemctl enable eco.service

# ports 
sudo ufw allow 3000,3001
```

backup install
===
```shell

sudo mkdir -p /var/backups/eco/daily/ && 
sudo mkdir -p $BACKUP_FOLDER/eco/daily/ &&
sudo mkdir -p $BACKUP_FOLDER/eco/monthly/

chmod +x games/eco/scripts/backup.sh

# test run:
sudo ./games/eco/scripts/backup.sh

sudo crontab -e
# 0 7 * * * /var/server/games/eco/scripts/backup.sh >> /var/log/eco/cron.log
```

# manual
```shell
sudo service eco stop
sudo su -l eco -s /bin/bash

tar -xf archive.tar.gz
tar -xvf archive.tar.gz
tar -xf archive.tar.gz -C /path/to/extract/

cp -r home/eco/server/Storage server/Storage
cp -R $CONFIG_ROOT_FOLDER/games/eco/Configs/. /home/eco/server/Configs/
chown eco /home/eco/server/Configs/ -R
sudo service eco start
```


change stack size
---
```shell
sudo su -l eco -s /bin/bash
sed -i -- 's/MaxStackSize(10)/MaxStackSize(80)/g' server/Mods/**/*.cs
```


# logs
```shell
sudo service eco status
sudo journalctl -u eco -f
journalctl -xeu eco.service
tail -f /var/log/eco/app.log
tail -f /var/log/eco/err.log
```

# ports
```shell
3000 # - ???
3001 # - ???
```

# Admin
```shell
/time set

/skills givepointsto Dattebayo, 1000
/skills givepointsto H2SO4, 1000
/skills givepointsto Cripto_Homa, 300

/ban Александр 01

/property unclaim Unclaim the plot you're standing on

/property unclaimabandoned X
 	//Unclaim plots across the world where the owner hasn't logged in for X days (Single)

/rooms repairall

/give PropertyClaimItem,10

LargeLumberStockpileItem
MechanicsSkillBook
IronConcentrateItem

#команда убирания веток и пней?
/clearrubble (radius)

# как снять приват с тачек? - навестись на неё и ввести команду
/property targetowner Dattebayo

/manage setspawn

/ownnone (player) 	Revoke your property 	/ownnone
/ownnone Ecko 	Revokes all of your property.
Gives all of your property to Ecko 	USE WITH CAUTION. May crash server / kick player.
```