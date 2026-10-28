#!/usr/bin/env bash
# Install only after the reviewed production release; never changes outreach.
set -euo pipefail
cd "$(dirname "$0")"
ROOT="$(pwd)"
USER_NAME="$(id -un)"
if [ "$USER_NAME" = root ]; then
  echo "Run as the existing unprivileged BMC operator user."
  exit 1
fi
python3 -m py_compile operator-monitor.py operator-console.py vps-gitops-relay.py
if [ "${1:-}" = "--user" ]; then
  # The GitOps relay cannot sudo. Reuse a persistent user manager only when
  # already available; never claim a session-bound process is durable monitoring.
  export XDG_RUNTIME_DIR="/run/user/$(id -u)"
  export DBUS_SESSION_BUS_ADDRESS="unix:path=$XDG_RUNTIME_DIR/bus"
  if [ "$(loginctl show-user "$USER_NAME" -p Linger --value 2>/dev/null || true)" != "yes" ] || ! systemctl --user show-environment >/dev/null 2>&1; then
    echo "Persistent user systemd manager unavailable; monitor installation requires normal administrator access."
    exit 2
  fi
  mkdir -p "$HOME/.config/systemd/user"
  umask 077
  cat > "$HOME/.config/systemd/user/bmc-operator-monitor.service" <<EOF
[Unit]
Description=BMC private read-only operator monitor

[Service]
Type=simple
WorkingDirectory=$ROOT
ExecStart=/usr/bin/python3 "$ROOT/operator-monitor.py" --port 8765 --interval 60
Restart=always
RestartSec=5
TimeoutStopSec=10
UMask=0077
NoNewPrivileges=true
MemoryMax=256M
CPUQuota=25%

[Install]
WantedBy=default.target
EOF
  systemctl --user daemon-reload
  systemctl --user enable --now bmc-operator-monitor.service
  systemctl --user --no-pager status bmc-operator-monitor.service
  exit 0
fi
sudo tee /etc/systemd/system/bmc-operator-monitor.service >/dev/null <<EOF
[Unit]
Description=BMC private read-only operator monitor
After=docker.service network-online.target
Wants=network-online.target

[Service]
Type=simple
User=$USER_NAME
WorkingDirectory=$ROOT
ExecStart=/usr/bin/python3 "$ROOT/operator-monitor.py" --port 8765 --interval 60
Restart=always
RestartSec=5
TimeoutStopSec=10
UMask=0077
NoNewPrivileges=true
PrivateTmp=true
ProtectSystem=strict
ProtectHome=read-only
RestrictAddressFamilies=AF_INET AF_UNIX
MemoryMax=256M
CPUQuota=25%

[Install]
WantedBy=multi-user.target
EOF
sudo systemctl daemon-reload
sudo systemctl enable --now bmc-operator-monitor.service
echo "Read-only monitor bound to 127.0.0.1:8765; no public endpoint created."
sudo systemctl --no-pager status bmc-operator-monitor.service
