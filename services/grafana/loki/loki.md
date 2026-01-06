```shell
# option 1
sudo apt install loki promtail

# option 2
wget https://github.com/grafana/loki/releases/download/v3.3.1/loki_3.3.1_amd64.deb
sudo dpkg -i loki_3.3.1_amd64.deb

wget https://github.com/grafana/loki/releases/download/v3.3.1/promtail_3.3.1_amd64.deb
sudo dpkg -i promtail_3.3.1_amd64.deb

sudo systemd enable loki

sudo service loki status
sudo service loki start

sudo journalctl -xeu loki.service
```


config
```shell
sudo nano /etc/loki/config.yml

#change
pattern_ingester:
  enabled: true
  metric_aggregation:
    loki_address: localhost:3100
```


```shell

sudo nano /etc/promtail/config.yml
```

```shell
sudo usermod -a -G eco promtail
```