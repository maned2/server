```shell
sudo fdisk -l
# /dev/sdb1
sudo nano /etc/fstab
# /dev/sdb1 /media/usb-hdd auto defaults,nofail,x-systemd.automount 0 2
sudo systemctl daemon-reload


sudo blkid

sudo nano /etc/fstab
# UUID=<uuid-of-your-drive>  <mount-point>  <file-system-type>  <mount-option>  <dump>  <pass>
# UUID=123  /mnt/data  ntfs  defaults  0  2
sudo mount -a
```



/dev/sdb1