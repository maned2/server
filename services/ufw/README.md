ufw - Uncomplicated Firewall

```shell
sudo ufw status

ufw limit ssh
ufw limit OpenSSH
ufw limit <port>/tcp

ufw allow <port>
ufw deny <port>
ufw allow from 192.168.1.2/24
```