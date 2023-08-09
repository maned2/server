Native installation
===

```shell
sudo apt-get install -y apt-transport-https
sudo apt-get install -y software-properties-common wget

sudo wget -q -O /usr/share/keyrings/grafana.key https://apt.grafana.com/gpg.key
# not working - empty key
sudo cat /usr/share/keyrings/grafana.key

echo "deb [signed-by=/usr/share/keyrings/grafana.key] https://apt.grafana.com stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
sudo apt-get update

# another way 2:
sudo apt-get install -y adduser libfontconfig1
wget https://dl.grafana.com/oss/release/grafana_10.0.3_amd64.deb
```

Configure
===
```shell
sudo cp /etc/grafana/grafana.ini /etc/grafana/grafana.ini.factory-defaults
sudo chmod a-w /etc/grafana/grafana.ini.factory-defaults

sudo nano /etc/grafana/grafana.ini
```

Run
===
```shell
sudo service grafana-server start
sudo systemctl enable grafana-server.service
```