
```shell
# scp EcoServerLinux_v0.14.2.0-beta.zip server:EcoServerLinux_v0.14.2.0-beta.zip
```

CRON:
```shell
30 6 * * * /var/server/games/eco/docker_official/backup.sh >> /var/log/eco/backup.log
```

UPDATE SERVER:
```shell
docker compose down
docker image rm strangeloopgames/eco-game-server:latest
docker compose up -d
```

Configs:
```shell
sudo apt update && sudo apt install -y jq

zip -r Config.zip mount/Configs

scp server:/var/server/games/eco/docker_official/Config.zip Config.zip
scp Configs_default.zip server:/var/server/games/eco/docker_official/Configs_default.zip

sudo rm -R mount/Configs
sudo unzip Configs_default.zip -d mount/Configs
sudo mv mount/Configs/Configs_default/* mount/Configs/
sudo ./config_update.sh
```