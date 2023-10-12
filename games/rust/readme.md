# INSTALL
```shell
# once
sudo useradd -M rust
sudo usermod -L rust

#each update
sudo cp /var/server/server2/games/rust/rust.service /etc/systemd/system/rust.service


sudo chmod +x /var/server/server2/games/rust/start.sh
```


