#!/bin/sh
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:`dirname $0`/RustDedicated_Data/Plugins:`dirname $0`/RustDedicated_Data/Plugins/x86_64

exec ./RustDedicated -batchmode \
  +server.port 28015 \
  +rcon.port 28016 \
  +server.queryport 28017 \
  +rcon.password "$RUST_RCON_PASSWORD" \
  +rcon.web 1 \
  +server.level "Procedural Map" \
  +server.seed 29364270 \
  +server.worldsize 4250 \
  +server.maxplayers 100 \
  +server.gamemode "vanilla" \
  +server.hostname "RU\EN 4fun classic" \
  +server.description "RU\EN 4fun classic

Сервер будет работать до вайпа - 2 января.
После мы совершенно переделаем сервер - теперь он будет с модами, pvp и pve области.
Кто хочет, может спокойной строиться и играть в pve зонах.
Кто хочет проверить свой дом на прочность - строится в pvp зоне.
Плюс, для любителей рейдов на карте будут появляться базы с ботами, они будут отмечены на карте и они будут так же pve - если зайдут несколько людей, они не смогут навредить друг другу, так и pvp - можно будет сражаться за лут. базы будут постоянно добавляться!

- Rust+
- 4250 размер карты
- Классика, без модов, без донатов и прочей херни. Ничего нельзя купить
- Админ если что то выдаст, вы увидите сообщение в чате (но он этого не будет делать)
- Вайп раз в месяц, следующий - 02.01
- Желаем приятной, честной игры!
- По всем вопросам писать админу в общий чат
- Правила сервера можно почитать по ссылке сервера (открыть сайт)" \
  +server.url "https://romanm.yonote.ru/share/5b48feb2-f242-48f6-ba04-7b8337794cda" \
  +server.identity "4fun42" \
  +server.tags "EU,monthly,vanilla,WA,EA"