Installation

```shell
# download server file
https://www.minecraft.net/ru-ru/download/server

scp games/minecraft_java/minecraft_server.1.21.4.jar loc2:~/minecraft_server.1.21.4.jar

# install java
sudo apt install default-jre

# create user
sudo useradd -m minecraft
sudo usermod -L minecraft

sudo mkdir  /home/minecraft/server_java/
sudo cp minecraft_server.1.21.4.jar /home/minecraft/server_java/server.jar

sudo chown -R minecraft:minecraft /home/minecraft/server_java/

sudo su -l minecraft -s /bin/bash

#test run
cd server_java
readlink -f $(which java)
/usr/lib/jvm/java-21-openjdk-amd64/bin/java -Xmx4048M -Xms4048M -jar server.jar nogui

nano eula.txt

# server settings
sed -i -- 's/motd=A Minecraft Server/motd=A Minecraft 4fun4 Server/g' *server.properties
sed -i -- 's/level-name=world/level-name=4fan4/g' *server.properties
nano server.properties
exit

sudo mkdir /var/log/minecraft_java

sudo cp $SERVER2_ROOT_FOLDER/games/minecraft_java/minecraft_java.service /etc/systemd/system/minecraft_java.service
sudo systemctl daemon-reload
sudo service minecraft_java start
sudo systemctl enable minecraft_java.service
sudo journalctl -u minecraft_java -f
sudo tail -f /var/log/minecraft_java/app.log

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


# Troubleshooting
For older java versions run: 
```commandline
sudo update-alternatives --config java
```
and select another java version