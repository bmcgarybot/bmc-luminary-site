#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

PROJECT_DIR="$(pwd)"
ENV_FILE="${1:-.env}"
RUN_USER="${SUDO_USER:-$USER}"
STATE_DIR="${BMC_RELAY_STATE_DIR:-$HOME/.local/state/bmc-vps-relay}"
SCHEDULE_FILE="$STATE_DIR/research-refresh-schedule.json"

if [ ! -f "$ENV_FILE" ]; then
  echo "$ENV_FILE is missing."
  exit 1
fi
if ! id "$RUN_USER" >/dev/null 2>&1; then
  echo "Cannot resolve service user: $RUN_USER"
  exit 1
fi
RUN_GROUP="$(id -gn "$RUN_USER")"
ENV_ABS="$PROJECT_DIR/$ENV_FILE"

chmod +x ./research-source-refresh.sh ./assistant-directory-bootstrap.py ./assistant-homversa-bootstrap.py

if sudo -n true >/dev/null 2>&1; then
  sudo tee /etc/systemd/system/bmc-directory-refresh.service >/dev/null <<EOF
[Unit]
Description=BMC public business directory discovery refresh
Requires=docker.service
After=docker.service network-online.target
Wants=network-online.target

[Service]
Type=oneshot
User=$RUN_USER
Group=$RUN_GROUP
SupplementaryGroups=docker
WorkingDirectory=$PROJECT_DIR
ExecStart=/bin/bash $PROJECT_DIR/research-source-refresh.sh $ENV_ABS directory
Nice=10
IOSchedulingClass=best-effort
IOSchedulingPriority=6
EOF

  sudo tee /etc/systemd/system/bmc-directory-refresh.timer >/dev/null <<'EOF'
[Unit]
Description=Refresh BMC public directory discovery daily

[Timer]
OnCalendar=*-*-* 11:30:00 UTC
Persistent=true
RandomizedDelaySec=1800
Unit=bmc-directory-refresh.service

[Install]
WantedBy=timers.target
EOF

  sudo tee /etc/systemd/system/bmc-licensed-refresh.service >/dev/null <<EOF
[Unit]
Description=BMC Arizona licensed-trade discovery refresh
Requires=docker.service
After=docker.service network-online.target
Wants=network-online.target

[Service]
Type=oneshot
User=$RUN_USER
Group=$RUN_GROUP
SupplementaryGroups=docker
WorkingDirectory=$PROJECT_DIR
ExecStart=/bin/bash $PROJECT_DIR/research-source-refresh.sh $ENV_ABS licensed
Nice=10
IOSchedulingClass=best-effort
IOSchedulingPriority=6
EOF

  sudo tee /etc/systemd/system/bmc-licensed-refresh.timer >/dev/null <<'EOF'
[Unit]
Description=Refresh BMC licensed-trade discovery weekly

[Timer]
OnCalendar=Sun *-*-* 12:30:00 UTC
Persistent=true
RandomizedDelaySec=1800
Unit=bmc-licensed-refresh.service

[Install]
WantedBy=timers.target
EOF

  sudo systemctl daemon-reload
  sudo systemctl enable --now bmc-directory-refresh.timer bmc-licensed-refresh.timer
  rm -f "$SCHEDULE_FILE"

  echo "BMC research refresh timers installed with systemd."
  sudo systemctl list-timers bmc-directory-refresh.timer bmc-licensed-refresh.timer --no-pager
  exit 0
fi

# Prefer a rootless user crontab when systemd installation is unavailable.
# Cron has no systemd oneshot start timeout, which is useful for long directory crawls.
CRON_BEGIN="# BEGIN BMC RESEARCH REFRESH"
CRON_END="# END BMC RESEARCH REFRESH"
LOG_DIR="$STATE_DIR/logs"
if command -v crontab >/dev/null 2>&1; then
  mkdir -p "$LOG_DIR"
  existing="$(crontab -l 2>/dev/null || true)"
  cleaned="$(printf '%s\n' "$existing" | awk -v begin="$CRON_BEGIN" -v end="$CRON_END" '
    $0 == begin {skip=1; next}
    $0 == end {skip=0; next}
    !skip {print}
  ')"
  {
    printf '%s\n' "$cleaned"
    echo "$CRON_BEGIN"
    echo "CRON_TZ=UTC"
    printf '30 11 * * * cd %q && /bin/bash %q %q directory >> %q 2>&1\n' "$PROJECT_DIR" "$PROJECT_DIR/research-source-refresh.sh" "$ENV_ABS" "$LOG_DIR/directory.log"
    printf '30 12 * * 0 cd %q && /bin/bash %q %q licensed >> %q 2>&1\n' "$PROJECT_DIR" "$PROJECT_DIR/research-source-refresh.sh" "$ENV_ABS" "$LOG_DIR/licensed.log"
    echo "$CRON_END"
  } | crontab -
  rm -f "$SCHEDULE_FILE"
  echo "BMC research refresh schedule installed in the service user's crontab."
  crontab -l | awk -v begin="$CRON_BEGIN" -v end="$CRON_END" '
    $0 == begin {show=1}
    show {print}
    $0 == end {show=0}
  '
  exit 0
fi

# Last-resort rootless backend: the VPS relay already runs every minute under a
# root-installed timer. Record a schedule that the relay itself will honor.
mkdir -p "$STATE_DIR"
python3 - "$SCHEDULE_FILE" <<'PY'
import json
import sys
from datetime import datetime, timedelta, timezone
from pathlib import Path

path = Path(sys.argv[1])
now = datetime.now(timezone.utc)
existing = {}
if path.exists():
    try:
        existing = json.loads(path.read_text())
    except Exception:
        existing = {}

def lane(name, mode, interval_seconds):
    old = existing.get(name) if isinstance(existing.get(name), dict) else {}
    next_due = old.get("next_due_at")
    if not next_due:
        next_due = (now + timedelta(seconds=interval_seconds)).isoformat()
    return {
        **old,
        "mode": mode,
        "interval_seconds": interval_seconds,
        "next_due_at": next_due,
    }

payload = {
    "version": 1,
    "backend": "vps-relay",
    "enabled": True,
    "installed_at": existing.get("installed_at") or now.isoformat(),
    "updated_at": now.isoformat(),
    "directory": lane("directory", "directory", 86400),
    "licensed": lane("licensed", "licensed", 604800),
}
path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
PY
chmod 600 "$SCHEDULE_FILE"

echo "BMC research refresh schedule installed using the existing VPS relay timer."
echo "Root access is not required for this fallback."
cat "$SCHEDULE_FILE"
