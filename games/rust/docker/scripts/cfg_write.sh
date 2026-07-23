#!/bin/bash

CFG_PATH="/usr/src/app/server/${ID}/cfg"

if [ ! -d "$CFG_PATH" ]; then
  echo "Папка $CFG_PATH не найдена, создаю..."
  mkdir -p "$CFG_PATH"
fi

if ! grep -q "ownerid" "$CFG_PATH/users.cfg" 2>/dev/null; then
    echo "Файл users.cfg не содержит админов. Записываю..."
    
    echo "ownerid $ADMIN_STEAM_ID_1 \"unnamed\" \"no reason\"
ownerid $ADMIN_STEAM_ID_2 \"unnamed\" \"no reason\"" > "$CFG_PATH/users.cfg"
fi

# if ! grep -q "wipetimer.wipetimezone" "$CFG_PATH/server.cfg" 2>/dev/null; then
#     echo "Файл server.cfg не содержит указания таймзоны. Записываю..."
#     echo "wipetimer.wipetimezone: \"$TZ\"" >> "$CFG_PATH/server.cfg" 
# fi