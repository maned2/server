swatchdog - simple log watcher.
I used this to watch logs and send messages in tg

# install
```shell
sudo apt install swatch

sudo cp services/swatchdog/swatchdog-eco.service /etc/systemd/system/swatchdog-eco.service
sudo cp services/swatchdog/swatchdog-eco-chat.service /etc/systemd/system/swatchdog-eco-chat.service
sudo cp services/swatchdog/swatchdog-minecraft_java.service /etc/systemd/system/swatchdog-minecraft_java.service
sudo cp services/swatchdog/swatchdog-minecraft_mi.service /etc/systemd/system/swatchdog-minecraft_mi.service
sudo cp services/swatchdog/swatchdog-minecraft_bedrock.service /etc/systemd/system/swatchdog-minecraft_bedrock.service
sudo cp services/swatchdog/swatchdog-minecraft_bedrock_creative.service /etc/systemd/system/swatchdog-minecraft_bedrock_creative.service
sudo cp services/swatchdog/swatchdog-rust.service /etc/systemd/system/swatchdog-rust.service

sudo systemctl daemon-reload

sudo service swatchdog-eco start
sudo service swatchdog-eco-chat start
sudo service swatchdog-minecraft_java start
sudo service swatchdog-minecraft_mi start
sudo service swatchdog-minecraft_bedrock start
sudo service swatchdog-minecraft_bedrock_creative start
sudo service swatchdog-rust start

sudo systemctl enable swatchdog-eco.service
sudo systemctl enable swatchdog-minecraft_mi.service
sudo systemctl enable swatchdog-minecraft_java.service
sudo systemctl enable swatchdog-minecraft_bedrock.service
sudo systemctl enable swatchdog-minecraft_bedrock_creative.service
sudo systemctl enable swatchdog-rust.service
```

# logs
```shell
sudo journalctl -u swatchdog-eco.service -f
sudo journalctl -xeu swatchdog-eco.service

sudo journalctl -u swatchdog-minecraft_java.service -f
sudo journalctl -xeu swatchdog-minecraft_java.service
```

