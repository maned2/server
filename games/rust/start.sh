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
  +server.maxplayers 200 \
  +server.gamemode "" \
  +server.hostname "RU\EN 4fun4 Для новичков for newbies solo duo trio" \
  +server.description "RU\EN 4fun4 Для новичков for newbies solo duo trio

- Rust+
- 4250 размер карты
- Классика, без модов, без донатов и прочей херни. Ничего нельзя купить.
- Админ если что то выдаст, вы увидите сообщение в чате (но он этого не будет делать)
- Вайп первый четверг месяца (global)
- Мощный античит
- Максимум 3 человека в команде!
- Желаем приятной, честной игры!
- Потребление ресурсов шкафом уменьшено на 50%
- 4250 card size
- Classic, no mods, no donations and other crap. You can't buy anything.
- If the admin gives something, you will see a message in the chat (but he won't do that)
- Wipe first Thursday of the month (global)
- Powerful anti-cheat
- Maximum 3 people per team!
- We wish you a pleasant, fair game!
- Cupboard resource consumption reduced by 50%" \
  +server.url "https://discord.gg/7QnBbwJG4e" \
  +server.identity "4fun4" \
  +server.tags "EU,monthly,vanilla,WA,EA"