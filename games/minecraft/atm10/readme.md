```shell
# download server from https://www.curseforge.com/minecraft/modpacks/all-the-mods-10/files/9190157
docker compose up -d

scp atmserver.zip server:atmserver.zip
ssh server
cp ~/atmserver.zip atmserver.zip

unzip atmserver.zip -d data/
chmod +x data/startserver.sh
docker compose up -d


docker compose up --build
```