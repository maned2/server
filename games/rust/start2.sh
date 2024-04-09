#!/bin/sh
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$(pwd)

./RustDedicated -batchmode \
  +server.port 28015 \
  +rcon.port 28016 \
  +rcon.password 1change2this_3line \
  +rcon.web 1 \
  +server.level "Procedural Map" \
  +server.seed 150833912 \
  +server.worldsize 4250 \
  +server.maxplayers 50 \
  +server.hostname "4fun4 friendly PVE" \
  +server.description "RU 4fun4 server friendly!
Дружественный сервер! Карта 4250

- Настоящий PVE
- Урон по игрокам отключен
- Потребление ресурсов шкафом уменьшено на 50%
- Увеличино количество аирдропов
- Стаки ресурсов увеличины х20
- Отключено лутание других игроков" \
  +server.url "https://discord.gg/7QnBbwJG4e" \
  +server.identity "4fun4" \
  +server.tags "EU,WA,EA,builds,pve,vanilla,monthly"