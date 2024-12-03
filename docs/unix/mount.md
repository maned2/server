```shell
# 1 option: mount by path
sudo fdisk -l
# /dev/sdb1
sudo nano /etc/fstab
# /dev/sdb1 /media/usb-hdd auto defaults,nofail,x-systemd.automount 0 2


# 2 option: mount by UUID:
sudo blkid
sudo nano /etc/fstab
#UUID=<uuid-of-your-drive>  <mount-point>  <file-system-type>  <mount-option>  <dump>  <pass>
#UUID=123  /mnt/data  ntfs  defaults  0  2
#UUID="123" /mnt/ntfs/ ntfs nls-utf8,umask-0222,uid-1000,gid-1000,rw 0 0

sudo mkdir -p /mnt/data

sudo systemctl daemon-reload
sudo mount -a
```


/dev/sdb1