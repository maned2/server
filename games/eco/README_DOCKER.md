# install
official repo https://hub.docker.com/r/strangeloopgames/eco-game-server
unofficial instruction https://gist.github.com/LsHallo/96bf6ef035ef4133fabf065034f76368
goto https://play.eco/
login
download server files


```shell
scp EcoServerLinux_v0.12.0.5-beta.zip yoga:EcoServerLinux_v0.12.0.5-beta.zip

ssh yoga




sudo useradd -m eco
sudo usermod -L eco # lock a user's password

sudo mv EcoServerLinux_v0.12.0.5-beta.zip /home/eco/EcoServerLinux_v0.12.0.5-beta.zip
sudo chown eco:eco /home/eco/EcoServerLinux_v0.12.0.5-beta.zip

sudo su -l eco -s /bin/bash

unzip -d server EcoServerLinux_v0.12.0.5-beta.zip
cd EcoServerLinux_v0.12.0.5-beta
chmod +x install.sh


docker run -d \
--name eco \
-p 3000:3000/udp \
-p 3001:3001/tcp \
-v /home/eco/server/Configs:/app/Configs \
-v /home/eco/server/Storage:/app/Storage \
-v /home/eco/server/Mods:/app/Mods \
strangeloopgames/eco-game-server:latest
```

