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
cat /etc/default/prometheus-node-exporter

sudo nano /etc/prometheus/prometheus.yml

sudo su -l prometheus -s /bin/bash
```

Logs
===

```shell
sudo journalctl -u prometheus -f
```

Web-client
===
http://localhost:9090