# Client
```shell
ssh-copy-id -i path/to/public_key user@server
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

```shell
sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.factory-defaults
sudo chmod a-w /etc/ssh/sshd_config.factory-defaults

sudo nano /etc/ssh/sshd_config

# params:
# Port
# PasswordAuthentication no
# AllowUsers
# PermitEmptyPasswords no
# ChallengeResponseAuthentication no

#after making changes
sudo systemctl restart ssh
sudo service sshd status
sudo service sshd restart
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
sudo chown server m
```

# call sh script when somebody login
```shell
# prepare script
chmod +x services/ssh/ssh_login.sh

sudo nano /etc/ssh/sshd_config
ForceCommand /var/server/server2/services/ssh/ssh_login.sh
sudo service sshd restart
```