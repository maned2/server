# Docker
https://hub.docker.com/r/luxusburg/docker-foundry
```shell
sudo su -l foundry -s /bin/bash

docker run -d \
    --name foundry-server \
    -p 3724:3724/udp \
    -p 27015:27015/udp \
    -v ./server:/home/foundry/server_files \
    -v ./data:/home/foundry/persistent_data \
    -e TZ="Europe/Paris" \
    -e SERVER_NAME="#4fun4" \
    -e PAUSE_SERVER_WHEN_EMPTY=false \
    -e MAX_TRANSFER_RATE=8192 \
    -e SERVER_IS_PUBLIC=true \
    -e SERVER_PWD="123" \
    luxusburg/docker-foundry:latest
```

## Ports
```shell
sudo ufw allow 3724
sudo ufw allow 27015
```


# Дальше всё херня потому что через вайн работает
# Installation
## Once
```shell
sudo useradd -M foundry &&
sudo usermod -L foundry &&
sudo mkdir -p /home/foundry/server &&
sudo chown -R foundry:foundry /home/foundry

sudo mkdir /var/log/foundry &&
sudo mkdir /var/backups/foundry
```

## Each update
```shell
sudo cp /var/server/games/foundry/foundry.service /etc/systemd/system/foundry.service
sudo systemctl daemon-reload
```

## Once
```shell
sudo systemctl enable foundry
```
## Configyre 
```shell
sudo su -l foundry -s /bin/bash
```