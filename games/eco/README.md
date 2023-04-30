# installation
```shell

```


change stack size
---
```shell
sudo su -l eco -s /bin/bash
sed -i -- 's/MaxStackSize(10)/MaxStackSize(80)/g' server/Mods/**/*.cs
```


# logs
```shell
sudo service eco status
sudo journalctl -u eco -f
tail -f /var/log/eco/app.log
tail -f /var/log/eco/err.log
```

# ports
```shell
3000 # - ???
3001 # - ???
```

# Admin
```shell
/skills givepointsto Maned, 1
```