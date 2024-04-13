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
  +server.maxplayers 100 \
  +server.gamemode "vanilla" \
  +server.hostname "RU\EN 4fun PVE/PVP no donations" \
  +server.description "RU\EN 4fun PVE/PVP no donations

- Rust+
- 4000 размер карты
- PVE/PVP Зоны - можно спокойно отстроиться
- Различные евенты! зомби и т.д.
- Админ если что то выдаст, вы увидите сообщение в чате (но он этого не будет делать)
- Вайп дважды в месяц, следующий - 18.04. Прошлый - 11.04 был по техническим причинам (лагала карта)
- Мощный античит
- Потребление ресурсов шкафом уменьшено на 50%

-Rust+
- 4000 map size
- PVE/PVP Zones - you can calmly build up
- Various events! zombies, etc.
- If the admin issues something, you will see a message in the chat (but he will not do this)
- Wipe twice a month, the next one is 04/18. The previous one - 04/11 was due to technical reasons (the map was laggy)
- Powerful anti-cheat
- Cabinet resource consumption reduced by 50%" \
  +server.url "https://discord.gg/NNyGJfqkkA" \
  +server.identity "4fun42" \
  +server.tags "EU,pve,biweekly,tut,WA,EA"