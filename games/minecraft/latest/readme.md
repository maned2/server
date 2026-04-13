

```shell
docker build .
docker build --no-cache .

docker compose up -d

scp games/minecraft/latest/data/server.1.21.11.jar server:server.1.21.11.jar
cp ~/server.1.21.11.jar /var/server/games/minecraft/latest/data/server.1.21.11.jar

curl -o server.jar https://piston-data.mojang.com/v1/objects/97ccd4c0ed3f81bbb7bfacddd1090b0c56f9bc51/server.jar
```