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
/time set

/skills givepointsto Dattebayo, 1000
/skills givepointsto H2SO4, 1000
/skills givepointsto Cripto_Homa, 300

/ban Александр 01

/property unclaim Unclaim the plot you're standing on

/property unclaimabandoned X
 	//Unclaim plots across the world where the owner hasn't logged in for X days (Single)

/rooms repairall

/give PropertyClaimItem,10

LargeLumberStockpileItem
MechanicsSkillBook
IronConcentrateItem

команда убирания веток и пней?
/clearrubble (radius)
как снять приват с тачек?

/property targetowner Dattebayo

/manage setspawn

/ownnone (player) 	Revoke your property 	/ownnone
/ownnone Ecko 	Revokes all of your property.
Gives all of your property to Ecko 	USE WITH CAUTION. May crash server / kick player.
```