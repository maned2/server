

```commandline
# create user:
useradd
-m - create home directory
-M - don't create home directory

# list users: 
cat /etc/passwd

# list current groups: 
id

# add user to group: 
sudo usermod -a -G <groupname> <username>

# add current user to group:
sudo usermod -a -G <groupname> $USER

# chane main user group: 
sudo usermod -g <groupname> <username>

# login to other user: 
sudo su -l <username> -s /bin/bash

# groups:
# list current user groups:
groups

# list other user groups:
groups <username>

# list all members of a group
getent group <groupname>

# create group:
groupadd <groupname>

# lock user password
usermod -L <username> 
Lock a user's password. This puts a '!' in front of the encrypted password, effectively disabling the password. You can't use this
option with -p or -U.
```


# user and group rights:
```shell
sudo chown [-R] <username>[:<group>] <path>

<user><group><other>

sudo chmod 077 <file>
#7 – read, write, exec
#6 – read, write
#5 – read, exec
#4 – read
#0 – nothing
```