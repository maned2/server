#!/bin/sh
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$(pwd)
clear while : do
  exec ./RustDedicated -batchmode \
  +server.port 28015 \
  +rcon.port 28016 \
  +rcon.password 123 \
  +rcon.web 1 \
  +server.level "Procedural Map" \
  +server.seed 150833912 \
  +server.worldsize 4250 \
  +server.maxplayers 20 \
  +server.hostname "RU 4fun4 friendly PVE" \
  +server.description "RU 4fun4 server friendly! BAN for shooting other players, stealing items, destroying other peoples buildings.
Русский дружественный сервер для веселья! БАН за огонь по другим игрокам, воровство предметов, разрушение чужих построек." \
  +server.url "https://discord.gg/7QnBbwJG4e" \
  +server.identity "4fun4" \
  +server.tags "WA,EA,builds,pve"
  -logFile /var/log/rust/app.log
  echo "\nRestarting server...\n" done