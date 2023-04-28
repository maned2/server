sudo su -l eco -s /bin/
cd /home/eco/
sed -i -- 's/MaxStackSize(10)/MaxStackSize(80)/g' server/Mods/**/*.cs
sed -i -- 's/MaxStackSize(15)/MaxStackSize(80)/g' server/Mods/**/*.cs
sed -i -- 's/MaxStackSize(20)/MaxStackSize(80)/g' server/Mods/**/*.cs
sed -i -- 's/MaxStackSize(40)/MaxStackSize(80)/g' server/Mods/**/*.cs