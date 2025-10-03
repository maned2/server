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

scp server_mi.zip loc2:server_mi.zip

# install java
sudo apt install default-jre

# create user
sudo useradd -m minecraft
sudo usermod -L minecraft

sudo cp server_mi.zip /home/minecraft/server_mi.zip

sudo chown -R minecraft:minecraft /home/minecraft/server_mi.zip

sudo su -l minecraft -s /bin/bash

rm -r server_mi
unzip -d /home/minecraft/ server_mi.zip

cd server_mi
chmod +x run.sh

#test run
./run.sh

# server settings
sed -i -- 's/server-name=Dedicated Server/server-name=4fan4/g' *server.properties
sed -i -- 's/level-name=Bedrock level/level-name=4fan4/g' *server.properties
nano server.properties
exit


#logs
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
# 0 8 * * * /var/server/games/minecraft_mi/minecraft_mi_backup.sh >> /var/log/minecraft_mi/cron.log
```

# client description:
Сервер Minecraft Modern Industrialization
Minecraft v1.21.1

Список модов: 
Обязательные:
- modern-industrialization https://www.curseforge.com/minecraft/mc-mods/modern-industrialization
(основной мод из за которого вся движуха)

- guideme https://www.curseforge.com/minecraft/mc-mods/guideme
(обязательны мод для modern-industrialization, позволяет создавать книги - руководства с картинками и т.д.)

- emi https://www.curseforge.com/minecraft/mc-mods/emi
(вообще этот мод не обязательный, но разработчики настоятельно его рекомендуют, потому что без него будет невозможно играть. Этот мод создаёт в инвентаре справа список всех блоков и позволяет удобно просматривать рецепты к ним)


Не обязательные: 
- Xaero's Minimap https://www.curseforge.com/minecraft/mc-mods/xaeros-minimap
(добавляет настраиваемую миникарту)

- WTHIT Forge Edition https://www.curseforge.com/minecraft/mc-mods/wthit-forge
(при наведении на любой объект показывает его название и из какого мода он)

- bad packets https://www.curseforge.com/minecraft/mc-mods/badpackets
(обязательный аддон для WTHIT)

Как играть?
Запустите лаунчер -> Minecraft Java
Установите Minecraft v1.21 (вкладка установки -> новая установка -> название любое -> версия release 1.21.1 ->установить)
Запустите, закройте игру и лаунчер
Скачайте лаунчер модов NeoForge https://neoforged.net/ (Minecraft version: 1.21.1 -> Click here to Download Installer)
Запустите скачанный файл neoforge-xxx-installer.jar
Установите лаунчер модов (Install client выбрано -> ниже путь до папки с вашим маинкрафтом -> Proceed)
Запустите лаунчер, выберите вариант запуска Neoforge 21xxx
Снова запустите маинкрафт, у вас должна внизу появиться надпись о том что он работает с лаунчером модов (NeoForge XXX (Y mods)) и закройте игру 

Скачайте моды с офф сайтов по ссылкам выше или одним архивом отсюда ???
ВНИМАНИЕ!
Не скачивайте моды ни с каких сайтов кроме https://www.curseforge.com/ - есть риск заражения вашего ПК вирусами.

Зайдите в папку модов (`C:\Users\<имявашегопользователя_винды>\AppData\Roaming\.minecraft\mods`)
скопируйте туда все моды
Запустите игру
Если у вас будут какие то ошибки - напишите в канал ⁠minecraft-industrial, мы постараемся помочь как можно скорее

Что бы подключиться к серверу, добавьте его по адресу:
5.130.101.81:25565

Правила сервера:
Не уничтожать чужие постройки,
Не воруйте ресурсы,
Не стройтесь рядом с другими игроками.,
Мы играем без приватов, на полном доверии друг к другу, так что если будут нарушения правил - сразу перманентный бан, и сервер будет восстановлен из бекапа.