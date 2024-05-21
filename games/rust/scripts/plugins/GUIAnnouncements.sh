#!/bin/bash
# https://umod.org/plugins/gui-announcements
echo "[SCRIPTS] Plugin update GUIAnnouncements..."

sudo -i -u rust bash << EOF
curl -L https://umod.org/plugins/GUIAnnouncements.cs > server/oxide/plugins/GUIAnnouncements.cs

FILE=server/oxide/config/GUIAnnouncements.json_original
if [ ! -f "$FILE" ]; then
    cp server/oxide/config/GUIAnnouncements.json "$FILE"
fi

EOF
