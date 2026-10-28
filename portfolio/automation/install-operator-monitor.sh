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
