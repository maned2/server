Installation
===

```shell
sudo apt install prometheus

# remove snap package
sudo snap remove prometheus
```

```shell
sudo service prometheus status
sudo service prometheus-node-exporter status
```

Config
===
```shell
sudo nano /lib/systemd/system/prometheus-node-exporter.service

sudo nano /etc/prometheus/prometheus.yml
```

Logs
===

```shell
sudo journalctl -u prometheus -f
```

Web-client
===
http://localhost:9090