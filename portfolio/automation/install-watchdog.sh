#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
ROOT="$(pwd)"
USER_NAME="$(id -un)"

chmod +x ./ops-watchdog.py

if [ "${1:-}" = "--user" ]; then
  # An existing system timer already executes this deployed path; never duplicate it.
  if systemctl is-active --quiet bmc-watchdog.timer; then
    echo "Existing persistent system watchdog timer is active; using deployed code."
    exit 0
  fi
  export XDG_RUNTIME_DIR="/run/user/$(id -u)"
  export DBUS_SESSION_BUS_ADDRESS="unix:path=$XDG_RUNTIME_DIR/bus"
  if [ "$(loginctl show-user "$USER_NAME" -p Linger --value 2>/dev/null || true)" != yes ] || ! systemctl --user show-environment >/dev/null 2>&1; then
    echo "Persistent watchdog timer requires administrator installation."
    exit 2
  fi
  mkdir -p "$HOME/.config/systemd/user"
  umask 077
  cat > "$HOME/.config/systemd/user/bmc-watchdog.service" <<EOF
[Unit]
Description=BMC bounded watchdog and owner escalation

[Service]
Type=oneshot
WorkingDirectory=$ROOT
ExecStart=/usr/bin/python3 "$ROOT/ops-watchdog.py"
UMask=0077
NoNewPrivileges=true
TimeoutStartSec=300
EOF
  cat > "$HOME/.config/systemd/user/bmc-watchdog.timer" <<'EOF'
[Unit]
Description=Check BMC health and metrics every five minutes
[Timer]
OnBootSec=2min
OnUnitActiveSec=5min
Persistent=true
[Install]
WantedBy=timers.target
EOF
  systemctl --user daemon-reload
  systemctl --user enable --now bmc-watchdog.timer
  systemctl --user is-active --quiet bmc-watchdog.timer
  exit 0
fi

sudo tee /etc/systemd/system/bmc-watchdog.service >/dev/null <<EOF
[Unit]
Description=BMC production watchdog
After=docker.service network-online.target
Wants=network-online.target

[Service]
Type=oneshot
User=$USER_NAME
WorkingDirectory=$ROOT
ExecStart=/usr/bin/python3 $ROOT/ops-watchdog.py
EOF

sudo tee /etc/systemd/system/bmc-watchdog.timer >/dev/null <<'EOF'
[Unit]
Description=Run BMC production watchdog every 5 minutes

[Timer]
OnBootSec=2min
OnUnitActiveSec=5min
AccuracySec=30s
Persistent=true

[Install]
WantedBy=timers.target
EOF

sudo systemctl daemon-reload
sudo systemctl enable --now bmc-watchdog.timer

echo
echo "BMC watchdog installed."
echo "Timer:"
sudo systemctl --no-pager status bmc-watchdog.timer || true
echo
echo "Running first check now..."
python3 ./ops-watchdog.py --report || true
echo
echo "The scheduled watchdog only emails when a problem appears or recovers."
