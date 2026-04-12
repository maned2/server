

```shell
docker build .
docker build --no-cache .

docker compose up -d

scp games/minecraft/latest/data/server.1.21.11.jar server:server.1.21.11.jar
cp ~/server.1.21.11.jar /var/server/games/minecraft/latest/data/server.1.21.11.jar
```