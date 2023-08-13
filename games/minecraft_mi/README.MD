Installation

```shell
# download server file
https://www.minecraft.net/ru-ru/download/server

#mi - Modern Industralization mod for minecraft
https://www.curseforge.com/minecraft/mc-mods/modern-industrialization

# install java 17 https://www.oracle.com/cis/java/technologies/downloads/#jdk17-windows

# mine version - 1.19.2
# this mod requires fabric https://fabricmc.net/

# all steps that we need to do next - run server locally and test with client locally.
# only after that - move server files to server

# install minecraft v1.19.2
# download fabric installer and run
# install client and server
# place mods file to client and server
# try launch and connect

scp server_mi.zip loc3:~/server_mi.zip

# install java
sudo apt install default-jre

# create user
sudo useradd -m minecraft
sudo usermod -L minecraft

sudo mkdir  /home/minecraft/server_mi/
sudo cp server_mi.zip /home/minecraft/server_mi/server_mi.zip

sudo chown -R minecraft /home/minecraft/server_mi/

sudo su -l minecraft -s /bin/bash

#test run
java -Xmx4048M -Xms4048M -jar server.jar nogui

# server settings
sed -i -- 's/server-name=Dedicated Server/server-name=4fan4/g' *server.properties
sed -i -- 's/level-name=Bedrock level/level-name=4fan4/g' *server.properties
nano server.properties
exit

sudo mkdir /var/log/minecraft_mi

sudo cp $SERVER2_ROOT_FOLDER/games/minecraft_mi/minecraft_mi.service /etc/systemd/system/minecraft_mi.service
sudo systemctl daemon-reload
sudo service minecraft_mi start
sudo systemctl enable minecraft_mi.service
sudo journalctl -u minecraft_mi -f

#ports 25566
sudo ufw allow 25566
```

backup install
===
```shell
sudo mkdir -p /var/backups/minecraft_mi/daily/
sudo mkdir -p $BACKUP_FOLDER/minecraft_mi/daily/ 
sudo mkdir -p $BACKUP_FOLDER/minecraft_mi/monthly/

sudo cp $SERVER2_ROOT_FOLDER/games/minecraft_mi/minecraft_mi_backup.sh /home/minecraft/minecraft_mi_backup.sh

sudo chmod +x /home/minecraft/minecraft_mi_backup.sh

# test run:

sudo /home/minecraft/minecraft_mi_backup.sh

sudo crontab -e
# 0 8 * * * /home/minecraft/minecraft_mi_backup.sh
```

# client description:
Сервер Minecraft Modern Industrialization

Список модов: 
Обязательные:
- modern-industrialization https://www.curseforge.com/minecraft/mc-mods/modern-industrialization
  - основной мод из за которого вся движуха. Все обязательные моды ниже - требуются для его запуска
- fabric-api https://www.curseforge.com/minecraft/mc-mods/fabric-api
- cloth-config https://www.curseforge.com/minecraft/mc-mods/cloth-config
Необязательные:
- xaeros-minimap https://www.curseforge.com/minecraft/mc-mods/xaeros-minimap
  - миникарта
- emi https://www.curseforge.com/minecraft/mc-mods/emi
  - Полный список всех доступных рецептов в инвентаре справа
- wthit https://www.curseforge.com/minecraft/mc-mods/wthit
  - что это за чертовщина? показывает инфо о предмете при наведении на него
- badpackets https://www.curseforge.com/minecraft/mc-mods/badpackets
  - обязательный аддон для wthit
- megane https://www.curseforge.com/minecraft/mc-mods/megane
  - аддон для wthit - показывает доп инфу у каждого элемента

Как играть?
Запустите лаунчер -> Minecraft Java
Установите Minecraft v1.19.2
Скачайте установочник fabric https://fabricmc.net/
Установите его на своего клиента, нужную версю.
Зайдите в папку модов (C:\Users\<имя_вашего_пользователя_винды>\AppData\Roaming\.minecraft\mods)
Скопируйте туда все моды. 
Вы можете скачать все моды с офф сайтов по ссылкам модов указанных выше, 
или же, скачать у нас с гугл диска уже заготовленный zip архив: 
https://drive.google.com/file/d/1FRot0JSDeQzbDTuF3kCNsYwF7XIbcxOR/view?usp=sharing
ВНИМАНИЕ!
Не скачивайте моды ни с каких сайтов кроме https://www.curseforge.com/ - есть риск заражения вашего ПК вирусами.

Попробуйте запустить Minecraft.
Если у вас будут какие то ошибки - напишите в канал #minecraft-industrial, мы постараемся помочь как можно скорее

Чты бы подключиться к серверу, добавьте его по адресу:
89.189.191.76:25566

Правила сервера:
1. Не уничтожать чужие постройки
2. Не воруйте ресурсы
3. Не стройтесь рядом с другими игроками.
Мы играем без приватов, на полном доверии друг к другу, так что если будут нарушения правил - сразу перманентный бан, и сервер будет восстановлен из бекапа.