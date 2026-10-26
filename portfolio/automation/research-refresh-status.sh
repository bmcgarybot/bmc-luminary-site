#!/usr/bin/env bash
set -euo pipefail
echo "BMC research refresh timers"
sudo -n systemctl list-timers bmc-directory-refresh.timer bmc-licensed-refresh.timer --no-pager 2>/dev/null || {
  echo "Timers are not installed or sudo status access is unavailable."
  exit 1
}
echo
for unit in bmc-directory-refresh.service bmc-licensed-refresh.service; do
  echo "[$unit]"
  sudo -n systemctl show "$unit" -p ActiveState -p Result -p ExecMainStatus --no-pager 2>/dev/null || true
done
