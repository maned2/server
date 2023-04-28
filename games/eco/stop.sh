

is_user_root () { [ "${EUID:-$(id -u)}" -eq 0 ]; }

if is_user_root; then
  service eco stop
  systemctl disable eco.service
  ufw deny 3000 comment 'game eco'
  ufw deny 3001 comment 'game eco'
  # todo disable cron
  exit 1
else
  echo 'Run as root' >&2
  exit 1
fi