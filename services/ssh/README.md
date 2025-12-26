# installation
install package
```shell
sudo apt install openssh-server
```

try login
```shell
ssh user@server
exit
```

copy your ssh key to server
```shell
ssh-copy-id -i path/to/public_key user@server
```

backup config
```shell
sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.factory-defaults
sudo chmod a-w /etc/ssh/sshd_config.factory-defaults
```

edit config
```shell

sudo nano /etc/ssh/sshd_config

Port # more than 1024
PubkeyAuthentication yes
PasswordAuthentication no
PermitEmptyPasswords no
PermitRootLogin no
AllowUsers <username1> <username2>
```

check configurations after making changes
```shell
sudo sshd -t -f /etc/ssh/sshd_config
sudo systemctl edit ssh.socket
```

restart service 
```shell
sudo systemctl restart ssh
sudo service sshd status
sudo service sshd restart
sudo systemctl daemon-reload
sudo systemctl restart ssh.socket
```

# Problems
```shell
chmod 700 ~/.ssh
chmod 600 ~/.ssh/*

#sign_and_send_pubkey: signing failed for RSA "" from agent: agent refused operation
ssh-add path/to/private_key
```

# Server
# Config:

```shell
chmod 700 ~/.ssh
chmod 600 ~/.ssh/*
```

# logs
```shell
tail -f /var/logs/auth.log
```

# copy this repo
```shell
ssh-keygen -t ed25519
cat .ssh/id_ed25519.pub
# paste to repo
cd /var/
sudo mkdir server
sudo chown user server
git clone
```

# call sh script when somebody login
```shell
# prepare script
chmod +x services/ssh/ssh_login.sh

sudo nano /etc/ssh/sshd_config
ForceCommand /var/server/server2/services/ssh/ssh_login.sh
sudo service sshd restart
```