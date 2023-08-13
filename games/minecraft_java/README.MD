Installation

```shell
# download server file
https://www.minecraft.net/ru-ru/download/server

scp server.jar loc3:~/server.jar

# install java
sudo apt install default-jre

# create user
sudo useradd -m minecraft
sudo usermod -L minecraft

sudo mkdir  /home/minecraft/server_java/
sudo cp server.jar /home/minecraft/server_java/server.jar

sudo chown -R minecraft /home/minecraft/server_java/

sudo su -l minecraft -s /bin/bash

#test run
java -Xmx4048M -Xms4048M -jar server.jar nogui

# server settings
sed -i -- 's/server-name=Dedicated Server/server-name=4fan4/g' *server.properties
sed -i -- 's/level-name=Bedrock level/level-name=4fan4/g' *server.properties
nano server.properties
exit

sudo mkdir /var/log/minecraft_java

sudo cp $SERVER2_ROOT_FOLDER/games/minecraft_java/minecraft_java.service /etc/systemd/system/minecraft_java.service
sudo systemctl daemon-reload
sudo service minecraft_java start
sudo systemctl enable minecraft_java.service
sudo journalctl -u minecraft_java -f

#ports 25565
sudo ufw allow 25565
```

backup install
===
```shell
sudo mkdir -p /var/backups/minecraft_java/daily/
sudo mkdir -p $BACKUP_FOLDER/minecraft_java/daily/ 
sudo mkdir -p $BACKUP_FOLDER/minecraft_java/monthly/

sudo cp $SERVER2_ROOT_FOLDER/games/minecraft_java/minecraft_java_backup.sh /home/minecraft/minecraft_java_backup.sh

sudo chmod +x /home/minecraft/minecraft_java_backup.sh

# test run:

sudo /home/minecraft/minecraft_java_backup.sh

sudo crontab -e
# 30 7 * * * /home/minecraft/minecraft_java_backup.sh
```

# admin commands
```shell
/gamerule keepInventory true
/op username - give admin
```