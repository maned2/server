

```commandline
# list current groups: 
id

# add user to group: 
sudo usermod -a -G <groupname> username

# add current user to group:
sudo usermod -a -G <groupname> $USER
```