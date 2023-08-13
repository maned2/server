```shell
https://conanexiles.fandom.com/wiki/Dedicated_Server_Setup:_Linux_and_Wine
sudo add-apt-repository multiverse
sudo dpkg --add-architecture i386
sudo apt update
sudo apt upgrade
sudo apt install software-properties-common lib32gcc-s1 steamcmd
sudo apt install wine xvfb

sudo useradd -m conan
sudo usermod -L conan

sudo mkdir  /home/conan/server/

sudo chown conan:conan /home/conan/server/

sudo su -l conan -s /bin/bash

steamcmd +force_install_dir /home/conan/server/ +login anonymous +app_update 443030 +quit
steamcmd +@sSteamCmdForcePlatformType windows +force_install_dir /home/conan/server/ +login anonymous +app_update 443030 +quit

export WINEARCH=win64
export WINEPREFIX=/home/steam/.wine64

xvfb-run --auto-servernum --server-args='-screen 0 640x480x24:32' wine /home/conan/server/ConanSandboxServer.exe -log

# port 7777,7778,27015
```