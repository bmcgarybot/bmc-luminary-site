#!/usr/bin/env bash
set -euo pipefail

STATE_DIR="${BMC_RELAY_STATE_DIR:-$HOME/.local/state/bmc-vps-relay}"
SCHEDULE_FILE="$STATE_DIR/research-refresh-schedule.json"

echo "BMC research refresh schedule"

if sudo -n true >/dev/null 2>&1 && sudo -n systemctl list-timers bmc-directory-refresh.timer bmc-licensed-refresh.timer --no-pager >/tmp/bmc-research-timers.$$ 2>/dev/null; then
  cat /tmp/bmc-research-timers.$$
  rm -f /tmp/bmc-research-timers.$$
  echo
  for unit in bmc-directory-refresh.service bmc-licensed-refresh.service; do
    echo "[$unit]"
    sudo -n systemctl show "$unit" -p ActiveState -p Result -p ExecMainStatus --no-pager 2>/dev/null || true
  done
  exit 0
fi
rm -f /tmp/bmc-research-timers.$$ 2>/dev/null || true

if [ -f "$SCHEDULE_FILE" ]; then
  echo "Backend: existing VPS relay timer (rootless fallback)"
  python3 - "$SCHEDULE_FILE" <<'PY'
import json
import sys
from pathlib import Path

path = Path(sys.argv[1])
data = json.loads(path.read_text())
print(json.dumps(data, indent=2, sort_keys=True))
if not data.get("enabled"):
    raise SystemExit(1)
PY
  exit $?
fi

echo "No research refresh schedule is installed."
exit 1
