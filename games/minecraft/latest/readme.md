Get link to latest server from https://www.minecraft.net/en-us/download/server


```shell
curl -o data/server.jar https://piston-data.mojang.com/v1/objects/823e2250d24b3ddac457a60c92a6a941943fcd6a/server.jar

docker build .
docker build --no-cache .

docker compose up -d

sudo nano data/eula.txt

sudo nano server.properties
sudo nano ops.json

{
    "uuid": "a1b2c3d4-e5f6-7890-abcd-ef1234567890",
    "name": "PlayerName",
    "level": 4,
    "bypassesPlayerLimit": true
}
``

```shell
0 6 * * * cd /var/server/games/minecraft/latest && /usr/bin/docker compose down && /usr/bin/docker compose up -d
```