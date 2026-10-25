#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
ROOT="$(pwd)"
USER_NAME="$(id -un)"

chmod +x ./ops-watchdog.py

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
