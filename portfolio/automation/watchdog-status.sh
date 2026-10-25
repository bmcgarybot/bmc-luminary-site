#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
python3 ./ops-watchdog.py --report || true
echo
echo "Timer status:"
systemctl is-enabled bmc-watchdog.timer 2>/dev/null || true
systemctl is-active bmc-watchdog.timer 2>/dev/null || true
