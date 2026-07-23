#!/bin/sh
echo "entrypoint.sh"

cd /usr/src/app

ls -lah

echo "chown"
chown -R steam:steam /usr/src/app/server

su - steam


sh /scripts/cfg_write.sh

echo "export envs"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:`dirname $0`/RustDedicated_Data/Plugins:`dirname $0`/RustDedicated_Data/Plugins/x86_64


echo "Run RustDedicated server"
exec ./RustDedicated -batchmode \
  +server.port $SERVER_PORT \
  +rcon.port $RCON_PORT \
  +server.queryport $QUERY_PORT \
  +rcon.password "$RCON_PASSWORD" \
  +rcon.web $WEB \
  +server.level "$LEVEL_NAME" \
  +server.seed $SEED \
  +server.worldsize $WORLD_SIZE \
  +server.maxplayers $MAX_PLAYERS \
  +server.gamemode "$GAMEMODE" \
  +server.hostname "$HOSTNAME" \
  +server.description "$DESCRIPTION" \
  +server.url "$URL" \
  +server.identity "$ID" \
  +server.tags "$TAGS"