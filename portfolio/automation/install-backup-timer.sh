#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

PROJECT_DIR="$(pwd)"
RUN_USER="${SUDO_USER:-$USER}"

if [ "$EUID" -eq 0 ] && [ "$RUN_USER" = "root" ]; then
  echo "Run this as the normal VPS user with sudo available, not from a root-only shell."
  exit 1
fi

if ! id "$RUN_USER" >/dev/null 2>&1; then
  echo "Cannot resolve service user: $RUN_USER"
  exit 1
fi

RUN_GROUP="$(id -gn "$RUN_USER")"

SERVICE=/etc/systemd/system/bmc-db-backup.service
TIMER=/etc/systemd/system/bmc-db-backup.timer

echo "Installing daily BMC database backup timer for user $RUN_USER..."

sudo tee "$SERVICE" >/dev/null <<EOF
[Unit]
Description=BMC portable PostgreSQL backup
Requires=docker.service
After=docker.service

[Service]
Type=oneshot
User=$RUN_USER
Group=$RUN_GROUP
SupplementaryGroups=docker
WorkingDirectory=$PROJECT_DIR
ExecStart=/bin/bash $PROJECT_DIR/backup.sh
UMask=0077
EOF

sudo tee "$TIMER" >/dev/null <<'EOF'
[Unit]
Description=Run BMC portable PostgreSQL backup daily

[Timer]
OnCalendar=*-*-* 10:15:00 UTC
Persistent=true
RandomizedDelaySec=300
Unit=bmc-db-backup.service

[Install]
WantedBy=timers.target
EOF

sudo systemctl daemon-reload
sudo systemctl enable --now bmc-db-backup.timer

echo "Running one backup through systemd to verify the service..."
sudo systemctl start bmc-db-backup.service

RESULT="$(sudo systemctl show bmc-db-backup.service -p Result --value)"
if [ "$RESULT" != "success" ]; then
  echo "Backup service result: $RESULT"
  sudo journalctl -u bmc-db-backup.service -n 80 --no-pager
  exit 1
fi

echo
echo "PASS  Daily backup timer is installed and the test run succeeded."
echo "Schedule: approximately 10:15 UTC / 3:15 AM America/Phoenix daily."
sudo systemctl list-timers bmc-db-backup.timer --no-pager
