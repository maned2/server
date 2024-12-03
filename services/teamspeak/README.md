# TeamSpeak

https://www.rosehosting.com/blog/how-to-install-teamspeak-server-on-ubuntu-22-04/

9987 port
30033 10011 ???? 

```shell
sudo ./install.sh

sudo service teamspeak status
#get token from there

sudo service teamspeak stop

sudo su -l teamspeak -s /bin/bash
./ts3server_startscript.sh start serveradmin_password=CHANGEME

nano /opt/teamspeak/query_ip_allowlist.txt
# add current ip

# connect to server from client
# 
```
