# installation 

```shell
sudo useradd -M satisfactory
sudo usermod -L satisfactory

#sudo userdel satisfactory
sudo mkdir -p /home/satisfactory/SatisfactoryDedicatedServer
sudo chown -R satisfactory:satisfactory /home/satisfactory

sudo mkdir /var/log/satisfactory
sudo mkdir "$BACKUP_FOLDER/satisfactory"
sudo mkdir "$BACKUP_FOLDER/satisfactory/daily"
sudo mkdir "$BACKUP_FOLDER/satisfactory/monthly"
sudo mkdir /var/backups/satisfactory

sudo apt install libsdl2-2.0-0:i386

# ports
sudo ufw allow 15777
sudo ufw allow 15000
sudo ufw allow 7777
sudo ufw allow 64664
sudo ufw allow 52385

15777, 15000, 7777, 64664, 52385

sudo su -l satisfactory -s /bin/bash
```

```shell
# cron
0 7 * * * games/satisfactory/scripts/cron.sh
```

# running
```shell
sudo cp /var/server/server2/games/satisfactory/satisfactory.service /etc/systemd/system/satisfactory.service
sudo cp /var/server/server2/satisfactory/satisfactory-experimental.service /etc/systemd/system/satisfactory-experimental.service

sudo systemctl daemon-reload

#autorun at system startup
sudo systemctl enable satisfactory.service
sudo systemctl enable satisfactory-experimental.service

sudo systemctl daemon-reload

sudo service satisfactory status
sudo service satisfactory-experimental status

sudo su -l satisfactory -s /bin/bash
nano FactoryGame/Saved/Config/linux/Game.ini
```


# logs
sudo journalctl -u satisfactory -f
sudo journalctl -u satisfactory-experimental -f