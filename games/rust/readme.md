# INSTALL
```shell
# once
sudo useradd -M rust
sudo usermod -L rust
sudo mkdir -p /home/rust/server
sudo chown -R rust:rust /home/rust

sudo mkdir /var/log/rust

#each update
sudo cp /var/server/server2/games/rust/rust.service /etc/systemd/system/rust.service
sudo systemctl daemon-reload

sudo chmod +x /var/server/server2/games/rust/start.sh

sudo service rust start

sudo journalctl -xeu rust.service

#logs
tail -f /var/log/rust/app.log
tail -f /var/log/rust/err.log

#settings
sudo su -l rust -s /bin/bash
```


# Mods
```commandline
# install oxide
# unzip linux installation file to server folder:

#local:
scp games/rust/files/Oxide.Rust-linux.zip loc3:Oxide.Rust-linux.zip

#on server:
sudo unzip -d /home/rust/server/ /var/server/server2/games/rust/files/Oxide.Rust-linux.zip


#install mods
https://umod.org/plugins/absolut-gifts
https://umod.org/plugins/active-sort
https://umod.org/plugins/connect-messages
https://umod.org/plugins/death-notes
https://umod.org/plugins/no-give-notices
https://umod.org/plugins/remover-tool
https://umod.org/plugins/stack-size-controller
https://umod.org/plugins/true-pve
https://umod.org/plugins/zlevels-remastered
https://umod.org/plugins/zone-manager
```
ownerid 76561198341247837
removeownerid 76561198341247837

# GAME
F1
client.connect ip:28015
oxide.version
plugins

god true
god false
global.god


oxide.grant user <name><permission>
oxide.grant user Dattebayo removertool.admin
oxide.grant user Dattebane removertool.normal

oxide.revoke

chat commads:
/remove