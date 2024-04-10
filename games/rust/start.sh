#!/bin/sh
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:`dirname $0`/RustDedicated_Data/Plugins:`dirname $0`/RustDedicated_Data/Plugins/x86_64

exec ./RustDedicated -batchmode \
  +server.port 28015 \
  +rcon.port 28016 \
  +rcon.password 1change2this_3line \
  +rcon.web 1 \
  +server.level "Procedural Map" \
  +server.seed 150833912 \
  +server.worldsize 4250 \
  +server.maxplayers 50 \
  +server.hostname "RU\EN 4fun4 Для новичков for newbies solo duo trio" \
  +server.description "RU\EN 4fun4 Для новичков for newbies solo duo trio

- Rust+
- 4250 размер карты
- Классика, без модов.
- Вайп первый четверг месяца (global)
- Мощный античит
- Желаем приятной игры!
- Максимум 3 человека в команде!
- 4250 card size
- Classic, no mods.
- Wipe first Thursday of the month (global)
- Powerful anti-cheat
- We wish you a pleasant game!
- Maximum 3 people per team!" \
  +server.url "https://discord.gg/7QnBbwJG4e" \
  +server.identity "4fun4" \
  +server.tags "WA,pve,monthly,vanilla"