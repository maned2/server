is_user_root () { [ "${EUID:-$(id -u)}" -eq 0 ]; }

if is_user_root; then
  service eco stop
  cp eco.service /etc/systemd/system/eco.service
  systemctl daemon-reload
  service eco start
  systemctl enable eco.service
  ufw allow 3000 comment 'game eco'
  ufw allow 3001 comment 'game eco'
  exit 1
else
  echo 'Run as root' >&2
  exit 1
fi