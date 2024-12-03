Native installation
===

```shell
sudo apt-get install -y apt-transport-https software-properties-common wget

sudo wget -O /usr/share/keyrings/grafana.key https://apt.grafana.com/gpg.key
# not working - empty key
sudo cat /usr/share/keyrings/grafana.key

echo "deb [signed-by=/usr/share/keyrings/grafana.key] https://apt.grafana.com stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
sudo apt-get update

# another way 2:
sudo apt-get install -y adduser libfontconfig1 musl
wget https://dl.grafana.com/oss/release/grafana_11.3.1_amd64.deb
sudo dpkg -i grafana_11.3.1_amd64.deb
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

```shell
# Remove the old key
sudo apt-key del 4E40DDF6D76E284A4A6780E48C8C34C524098CB6

# Verify that the GPG key was removed. This should return 0.
sudo apt-key list | grep -i grafana | wc -l

# Download the new key and place it in the right location
sudo wget -q -O /etc/apt/keyrings/grafana.key https://apt.grafana.com/gpg.key

# Replace the apt source
# This command will replace the contents of the grafana.list file.
echo "deb [signed-by=/etc/apt/keyrings/grafana.key] https://apt.grafana.com stable main" | sudo tee /etc/apt/sources.list.d/grafana.list

# Update your repositories list
sudo apt update
```