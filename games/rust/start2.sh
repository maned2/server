#!/bin/sh
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:`dirname $0`/RustDedicated_Data/Plugins:`dirname $0`/RustDedicated_Data/Plugins/x86_64

exec ./RustDedicated -batchmode \
  +server.port 28015 \
  +rcon.port 28016 \
  +rcon.password 1change2this_3line \
  +rcon.web 1 \
  +server.level "Procedural Map" \
  +server.seed 231390963 \
  +server.worldsize 4250 \
  +server.maxplayers 100 \
  +server.gamemode "vanilla" \
  +server.hostname "RU\EN 4fun PVE/PVP no donations" \
  +server.description "RU\EN 4fun PVE/PVP no donations

- Вся карта - PVE: другие игроки не смогут вас зарейдить или нанести урон.
- Все монументы - PVP: в этих местах можно сражаться и лутаться как обычно
- Евенты - хеллоуин, npc-базы, данжи.
- Админ играет как и все. Будет читерить - сообщение придёт в чат и дискорд.
- Вайп дважды в месяц, следующий - 18.04. Прошлый - 13.04 был по техническим причинам
- Мощный античит
- Потребление ресурсов шкафом уменьшено на 50%
- Постройки можно поворачивать, удалять без ограничений по времени
- 4250 размер карты
- Больше инфы и правила в дискорде (открыть сайт)

- The entire map is PVE: other players will not be able to raid you or cause damage.
- All monuments are PVP: in these places you can fight and loot as usual
- Events - Halloween, NPC bases, dungeons.
- The admin plays like everyone else. If he cheats, a message will be sent to the chat and discord.
- Wipe twice a month, the next one is 04/18. The previous one - 13.04 was due to technical reasons
- Powerful anti-cheat
- Cabinet resource consumption reduced by 50%
- Buildings can be rotated and deleted without time limits
- 4250 map size
- More information and rules in discord (open website)

- Rust+" \
  +server.url "https://discord.gg/NNyGJfqkkA" \
  +server.identity "4fun43" \
  +server.tags "EU,pve,biweekly,tut,WA,EA" \
  +server.logoimage "https://i.ibb.co/CPGctqj/icon.png" \
  +server.headerimage "https://i.ibb.co/s3XmLbM/header.png"