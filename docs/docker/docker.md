# Ubuntu apt install
# Add Docker's official GPG key:
```commandline
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
```


# Add the repository to Apt sources:
```commandline
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo docker run hello-world
```

# run commands without root:
```commandline
sudo groupadd docker
sudo gpasswd -a $USER docker
sudo service docker restart
```

# Remove all from docker
```commandline
docker container stop $(docker container ls -aq)
docker container rm $(docker container ls –aq)

docker rmi $(docker images -a -q)

docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)

docker volume prune

docker system prune 
docker system prune -a
```