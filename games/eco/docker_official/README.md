
```shell
# scp EcoServerLinux_v0.14.2.0-beta.zip server:EcoServerLinux_v0.14.2.0-beta.zip
```

CRON:
```shell
30 6 * * * /var/server/games/eco/docker_official/backup.sh >> /var/log/eco/backup.log

```

Configs:
```shell
sudo apt update && sudo apt install -y jq

zip -r Config.zip mount/Configs

scp server:/var/server/games/eco/docker_official/Config.zip Config.zip
```