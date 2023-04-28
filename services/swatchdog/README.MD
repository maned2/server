swatchdog - simple log watcher.
I used this to watch logs and send messages in tg

# install
```shell
sudo cp services/swatchdog/swatchdog-eco.service /etc/systemd/system/swatchdog-eco.service

sudo systemctl daemon-reload

sudo service swatchdog-eco start

sudo systemctl enable swatchdog-eco.service
```

# logs
```shell
sudo journalctl -u swatchdog-eco.service -f
sudo journalctl -xeu swatchdog-eco.service
```

