#!/bin/sh
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:`dirname $0`/RustDedicated_Data/Plugins:`dirname $0`/RustDedicated_Data/Plugins/x86_64

exec ./RustDedicated -batchmode \
  +server.port 28015 \
  +rcon.port 28016 \
  +rcon.password "$RUST_RCON_PASSWORD" \
  +rcon.web 1 \
  +server.level "Procedural Map" \
  +server.seed 1337 \
  +server.worldsize 4250 \
  +server.maxplayers 0 \
  +server.gamemode "vanilla" \
  +server.hostname "4fun RU\EN Лагерь новичков rookie camp | EVENTS" \
  +server.description "4fun RU\EN Лагерь новичков rookie camp | EVENTS

- Евенты - хеллоуин, npc-базы, данжи.
- Админ следит за сервером. в случае проблем пишите в общий чат
- Вайп раз в месяц, следующий - 03.04.2025.
- Мощный античит
- Потребление ресурсов шкафом уменьшено на 50%
- Постройки можно поворачивать, удалять без ограничений по времени
- 4250 размер карты
- Больше инфы и правила в дискорде (открыть сайт)

- Events - Halloween, NPC bases, dungeons.
- The admin plays like everyone else. If he cheats, the message will be sent to the chat and discord.
- Vip once a month, the next one is 03.04.2025.
- Powerful anti-cheat
- Cabinet resource consumption reduced by 50%
- Buildings can be rotated and deleted without time limits
- 4250 card size
- More information and rules in discord (open website)

- Rust+" \
  +server.url "https://romanm.yonote.ru/share/5b48feb2-f242-48f6-ba04-7b8337794cda" \
  +server.identity "4fun4" \
  +server.tags "EU,monthly,tut" \
  +server.logoimage "https://i.ibb.co/CPGctqj/icon.png" \
  +server.headerimage "https://i.ibb.co/s3XmLbM/header.png"