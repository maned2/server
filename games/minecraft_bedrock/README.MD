Installation

```shell
# download server file
https://www.minecraft.net/ru-ru/download/server

scp games/minecraft_bedrock/bedrock-server-1.21.1.03.zip loc2:~/bedrock-server.zip

# create user
sudo useradd -m minecraft
sudo usermod -L minecraft

sudo apt-get install unzip

sudo mkdir  /home/minecraft/server_bedrock/
sudo unzip -d /home/minecraft/server_bedrock/ bedrock-server.zip

sudo chown -R minecraft:minecraft /home/minecraft/server_bedrock/

sudo su -l minecraft -s /bin/bash

#test run
LD_LIBRARY_PATH=. ./bedrock_server

# server settings
sed -i -- 's/server-name=Dedicated Server/server-name=4fan4/g' *server.properties
sed -i -- 's/level-name=Bedrock level/level-name=4fan4/g' *server.properties
nano server.properties
exit

sudo mkdir /var/log/minecraft_bedrock

sudo cp $SERVER2_ROOT_FOLDER/games/minecraft_bedrock/minecraft_bedrock.service /etc/systemd/system/minecraft_bedrock.service
sudo systemctl daemon-reload
sudo service minecraft_bedrock start
sudo systemctl enable minecraft_bedrock.service

sudo journalctl -u minecraft_bedrock -f
sudo tail -f /var/log/minecraft_bedrock/app.log

#ports
sudo ufw allow 19132 //ipv4
sudo ufw allow 19133 //ipv6
```

backup install
===
```shell
sudo mkdir -p /var/backups/minecraft_bedrock/daily/
sudo mkdir -p $BACKUP_FOLDER/minecraft_bedrock/daily/ 
sudo mkdir -p $BACKUP_FOLDER/minecraft_bedrock/monthly/

sudo cp $SERVER2_ROOT_FOLDER/games/minecraft_bedrock/minecraft_bedrock_backup.sh /home/minecraft/minecraft_bedrock_backup.sh

sudo chmod +x /home/minecraft/minecraft_bedrock_backup.sh

# test run:

sudo /home/minecraft/minecraft_bedrock_backup.sh

sudo crontab -e
# 30 7 * * * /home/minecraft/minecraft_bedrock_backup.sh
```

# admin commands
```shell
/gamerule keepInventory true
gamerule showcoordinates true
/op username - give admin
```