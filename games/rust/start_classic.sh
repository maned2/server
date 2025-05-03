#!/bin/sh
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:`dirname $0`/RustDedicated_Data/Plugins:`dirname $0`/RustDedicated_Data/Plugins/x86_64

exec ./RustDedicated -batchmode \
  +server.port 28015 \
  +rcon.port 28016 \
  +server.queryport 28017 \
  +rcon.password "$RUST_RCON_PASSWORD" \
  +rcon.web 1 \
  +server.level "Procedural Map" \
  +server.seed 1337 \
  +server.worldsize 4250 \
  +server.maxplayers 100 \
  +server.gamemode "vanilla" \
  +server.hostname "RU\EN 4fun softcore quadro" \
  +server.description "RU\EN 4fun softcore quadro
- Размер команды и авторизации в шкафу ограничен до 4 игроков
- Можно ресаться в мирных таунах
- 50% лута пропадает, 50% сохраняется
- Rust+
- 4250 размер карты
- softcore, без модов, без донатов и прочей херни. Ничего нельзя купить
- Вайп раз в месяц
- Желаем приятной, честной игры!
- По всем вопросам писать админу в общий чат
- Правила сервера можно почитать по ссылке сервера (открыть сайт)
- Сервер перезапускается раз в 2 дня, из за этого слетают команды. Разрабы rust в курсе уже давно и ничего не делают." \
  +server.url "https://romanm.yonote.ru/share/5b48feb2-f242-48f6-ba04-7b8337794cda" \
  +server.identity "4fun4" \
  +server.tags "EU,monthly,softcore,WA,EA"