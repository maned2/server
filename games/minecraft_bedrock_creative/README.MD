Installation

```shell
# download server file
https://www.minecraft.net/ru-ru/download/server

scp bedrock-server-1.20.15.01.zip loc3:~/bedrock-server-1.20.15.01.zip

# create user
sudo useradd -m minecraft
sudo usermod -L minecraft

sudo apt-get install unzip

sudo mkdir  /home/minecraft/server_bedrock_creative/
sudo unzip -d /home/minecraft/server_bedrock_creative/ bedrock-server-1.20.15.01.zip

sudo chown -R minecraft /home/minecraft/server_bedrock_creative/

sudo su -l minecraft -s /bin/bash

#test run
LD_LIBRARY_PATH=. ./bedrock_server

# server settings
sed -i -- 's/server-name=Dedicated Server/server-name=4fan4/g' *server.properties
sed -i -- 's/level-name=Bedrock level/level-name=4fan4/g' *server.properties
nano server.properties
exit

sudo mkdir /var/log/minecraft_bedrock_creative

sudo cp $SERVER2_ROOT_FOLDER/games/minecraft_bedrock_creative/minecraft_bedrock_creative.service /etc/systemd/system/minecraft_bedrock_creative.service
sudo systemctl daemon-reload
sudo service minecraft_bedrock_creative start
sudo systemctl enable minecraft_bedrock_creative.service
sudo journalctl -u minecraft_bedrock_creative -f
sudo tail -f /var/log/minecraft_bedrock_creative/app.log

#ports
sudo ufw allow 19134 //ipv4
sudo ufw allow 19135 //ipv6
```

backup install
===
```shell
sudo mkdir -p /var/backups/minecraft_bedrock_creative/daily/
sudo mkdir -p $BACKUP_FOLDER/minecraft_bedrock_creative/daily/ 
sudo mkdir -p $BACKUP_FOLDER/minecraft_bedrock_creative/monthly/

sudo cp $SERVER2_ROOT_FOLDER/games/minecraft_bedrock_creative/minecraft_bedrock_creative_backup.sh /home/minecraft/minecraft_bedrock_creative_backup.sh

sudo chmod +x /home/minecraft/minecraft_bedrock_creative_backup.sh

# test run:

sudo /home/minecraft/minecraft_bedrock_creative_backup.sh

sudo crontab -e
# 30 7 * * * /home/minecraft/minecraft_bedrock_creative_backup.sh
```

# admin commands
```shell
/gamerule keepInventory true
gamerule showcoordinates true
/op username - give admin
```