swatchdog - simple log watcher.
I used this to watch logs and send messages in tg

# install
```shell
sudo apt install swatch

sudo cp services/swatchdog/swatchdog-eco.service /etc/systemd/system/swatchdog-eco.service
sudo cp services/swatchdog/swatchdog-minecraft_java.service /etc/systemd/system/swatchdog-minecraft_java.service

sudo systemctl daemon-reload

sudo service swatchdog-eco start
sudo service swatchdog-minecraft_java start

sudo systemctl enable swatchdog-eco.service
sudo systemctl enable swatchdog-minecraft_java.service
```

# logs
```shell
sudo journalctl -u swatchdog-eco.service -f
sudo journalctl -xeu swatchdog-eco.service

sudo journalctl -u swatchdog-minecraft_java.service -f
sudo journalctl -xeu swatchdog-minecraft_java.service
```

