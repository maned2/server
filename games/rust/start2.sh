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
  +server.hostname "RU\EN 4fun4 friendly PVE" \
  +server.description "RU\EN 4fun4 friendly PVE!
Дружественный сервер! Карта 4250
- Настоящий PVE
- Зоны PVE\PVP
- Потребление ресурсов шкафом уменьшено на 50%
- Увеличино количество аирдропов
- Стаки ресурсов увеличины х20
- Отключено лутание других игроков (в PVE зонах)
- Вайп первый четверг месяца (global)
Friendly server! Map 4250
- Real PVE
- PVE\PVP zones
- Cupboard resource consumption reduced by 50%
- Increased the number of airdrops
- Resource stacks increased x20
- Disabled looting of other players (in PVE zones)
- Wipe first Thursday of the month (global)" \
  +server.url "https://discord.gg/7QnBbwJG4e" \
  +server.identity "4fun4" \
  +server.tags "EU,pve,monthly,vanilla,WA,EA,builds"