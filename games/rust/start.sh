#!/bin/sh
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:`dirname $0`/RustDedicated_Data/Plugins:`dirname $0`/RustDedicated_Data/Plugins/x86_64

exec ./RustDedicated -batchmode \
  +server.port 28015 \
  +rcon.port 28016 \
  +rcon.password 1change2this_3line \
  +rcon.web 1 \
  +server.level "Procedural Map" \
  +server.seed 1672476796 \
  +server.worldsize 4000 \
  +server.maxplayers 200 \
  +server.gamemode "" \
  +server.hostname "RU\EN 4fun Для новичков for newbies solo duo trio" \
  +server.description "RU\EN 4fun Для новичков for newbies solo duo trio

- Rust+
- 4000 размер карты
- Классика, без модов, без донатов и прочей херни. Ничего нельзя купить.
- Админ если что то выдаст, вы увидите сообщение в чате (но он этого не будет делать)
- Вайп дважды в месяц, следующий - 18.04. Прошлый - 11.04 был по техническим причинам (лагала карта)
- Мощный античит
- Максимум 3 человека в команде!
- Желаем приятной, честной игры!
- Потребление ресурсов шкафом уменьшено на 50%
- 4250 card size
- Classic, no mods, no donations and other crap. You can't buy anything.
- If the admin gives something, you will see a message in the chat (but he won't do that)
- Wipe twice a month, the next one is 04/18. The previous one - 11.04 was due to technical reasons (the map was laggy)
- Powerful anti-cheat
- Maximum 3 people per team!
- We wish you a pleasant, fair game!
- Cupboard resource consumption reduced by 50%" \
  +server.url "https://discord.gg/7QnBbwJG4e" \
  +server.identity "4fun42" \
  +server.tags "EU,biweekly,vanilla,tut,WA,EA"