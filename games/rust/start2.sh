#!/bin/sh
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:`dirname $0`/RustDedicated_Data/Plugins:`dirname $0`/RustDedicated_Data/Plugins/x86_64

exec ./RustDedicated -batchmode \
  +server.port 28015 \
  +rcon.port 28016 \
  +rcon.password 1change2this_3line \
  +rcon.web 1 \
  +server.level "Procedural Map" \
  +server.worldsize 4250 \
  +server.maxplayers 100 \
  +server.gamemode "vanilla" \
  +server.hostname "RU\EN 4fun no donations" \
  +server.description "RU\EN 4fun no donations

- Евенты - хеллоуин, npc-базы, данжи.
- Админ играет как и все. Будет читерить - сообщение придёт в чат и дискорд.
- Вайп раз в месяц, следующий - 06.06.
- Мощный античит
- Потребление ресурсов шкафом уменьшено на 50%
- Постройки можно поворачивать, удалять без ограничений по времени
- 4250 размер карты
- Больше инфы и правила в дискорде (открыть сайт)

- Events - Halloween, NPC bases, dungeons.
- The admin plays like everyone else. If he cheats, the message will be sent to the chat and discord.
- Vip once a month, the next one is 06.06.
- Powerful anti-cheat
- Cabinet resource consumption reduced by 50%
- Buildings can be rotated and deleted without time limits
- 4250 card size
- More information and rules in discord (open website)

- Rust+" \
  +server.url "https://discord.gg/NNyGJfqkkA" \
  +server.identity "4fun43" \
  +server.tags "EU,monthly,tut" \
  +server.logoimage "https://i.ibb.co/CPGctqj/icon.png" \
  +server.headerimage "https://i.ibb.co/s3XmLbM/header.png"