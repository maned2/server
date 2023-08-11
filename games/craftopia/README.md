# installation
```shell
sudo useradd -m craftopia
sudo usermod -L craftopia

sudo mkdir /var/log/craftopia

sudo su -l craftopia -s /bin/bash

sudo cp $SERVER2_ROOT_FOLDER/games/craftopia/craftopia.service /etc/systemd/system/craftopia.service
sudo systemctl daemon-reload
sudo service craftopia status

# enable autostart
sudo systemctl enable craftopia.service

# ports 
sudo ufw allow 6587
```

backup install
===
```shell
sudo mkdir -p /var/backups/craftopia/daily/
sudo mkdir -p $BACKUP_FOLDER/craftopia/daily/ # not working
sudo mkdir -p $BACKUP_FOLDER/craftopia/monthly/

sudo cp $SERVER2_ROOT_FOLDER/games/craftopia/craftopia_backup.sh /home/craftopia/craftopia_backup.sh

sudo chmod +x $SERVER2_ROOT_FOLDER/games/craftopia/craftopia_backup.sh

# test run:

sudo /home/craftopia/craftopia_backup.sh

sudo crontab -e
# 0 7 * * * /home/craftopia/craftopia_backup.sh
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