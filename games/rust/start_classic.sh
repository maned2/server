#!/bin/sh
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:`dirname $0`/RustDedicated_Data/Plugins:`dirname $0`/RustDedicated_Data/Plugins/x86_64

exec ./RustDedicated -batchmode \
  +server.port 28015 \
  +rcon.port 28016 \
  +rcon.password "$RUST_RCON_PASSWORD" \
  +rcon.web 1 \
  +server.level "Procedural Map" \
  +server.worldsize 4250 \
  +server.maxplayers 100 \
  +server.gamemode "vanilla" \
  +server.hostname "RU\EN 4fun classic" \
  +server.description "RU\EN 4fun classic

- Rust+
- 4250 размер карты
- Классика, без модов, без донатов и прочей херни. Ничего нельзя купить.
- Админ если что то выдаст, вы увидите сообщение в чате (но он этого не будет делать)
- Вайп раз в месяц, следующий - 02.12.
- Желаем приятной, честной игры!
- 4250 card size
- Classic, no mods, no donations and other crap. You can't buy anything.
- If the admin gives something, you will see a message in the chat (but he won't do that)
- Wipe once a month, the next one is 12/02.
- We wish you a pleasant, fair game!" \
  +server.url "https://discord.gg/NNyGJfqkkA" \
  +server.identity "4fun42" \
  +server.tags "EU,monthly,vanilla,WA,EA"