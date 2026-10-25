```shell
# download server from https://www.curseforge.com/minecraft/modpacks/all-the-mods-10/files/9190157
docker compose up -d

scp ServerFiles-8.3.zip server:ServerFiles-8.3.zip
ssh server
cp ~/ServerFiles-8.3.zip ServerFiles-8.3.zip

unzip ServerFiles-8.3.zip -d data/
chmod +x data/startserver.sh
docker compose up -d

```