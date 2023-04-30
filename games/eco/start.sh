is_user_root () { [ "${EUID:-$(id -u)}" -eq 0 ]; }

if is_user_root; then
  service eco stop
  cp eco.service /etc/systemd/system/eco.service
  cp increase_hand.sh /home/eco/increase_hand.sh
  chmod +x /home/eco/increase_hand.sh
  chown eco /home/eco/increase_hand.sh
  cp -R $CONFIG_ROOT_FOLDER/games/eco/Configs/. /home/eco/server/Configs/
  chown eco /home/eco/server/Configs/ -R
  systemctl daemon-reload
  service eco start
  systemctl enable eco.service
  ufw allow 3000 comment 'game eco'
  ufw allow 3001 comment 'game eco'
  exit 0
else
  echo 'Run as root' >&2
  exit 1
fi