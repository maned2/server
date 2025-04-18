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
  +server.gamemode "" \
  +server.hostname "4fun in develop" \
  +server.description "Server in develop, please wait" \
  +server.url "https://romanm.yonote.ru/share/5b48feb2-f242-48f6-ba04-7b8337794cda" \
  +server.identity "4fun42" \
  +server.tags "EU,monthly,WA,EA" \
  +server.logoimage "https://i.ibb.co/CPGctqj/icon.png" \
  +server.headerimage "https://i.ibb.co/s3XmLbM/header.png"