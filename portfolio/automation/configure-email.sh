#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

ENV_FILE="${ENV_FILE:-.env}"
EMAIL_ADDRESS="${BMC_EMAIL_ADDRESS:-contact@bmcservicenetwork.com}"
MAIL_HOST="mail.privateemail.com"

if [ ! -f "$ENV_FILE" ]; then
  echo "Missing $ENV_FILE. Run bootstrap first."
  exit 1
fi

printf "Mailbox: %s\n" "$EMAIL_ADDRESS"
printf "Paste the mailbox password (input will be hidden): "
IFS= read -r -s MAIL_PASSWORD
printf "\n"

if [ -z "$MAIL_PASSWORD" ] || [ "${#MAIL_PASSWORD}" -lt 8 ]; then
  echo "Password looks empty or too short; no changes were made."
  exit 1
fi

echo "Testing SMTP and IMAP login without sending mail..."
python3 - "$EMAIL_ADDRESS" "$MAIL_PASSWORD" "$MAIL_HOST" <<'PY'
import imaplib, smtplib, ssl, sys
email, password, host = sys.argv[1:4]

with smtplib.SMTP(host, 587, timeout=20) as smtp:
    smtp.ehlo()
    smtp.starttls(context=ssl.create_default_context())
    smtp.ehlo()
    smtp.login(email, password)

imap = imaplib.IMAP4_SSL(host, 993)
try:
    typ, _ = imap.login(email, password)
    if typ != "OK":
        raise RuntimeError("IMAP login failed")
    typ, _ = imap.select("INBOX", readonly=True)
    if typ != "OK":
        raise RuntimeError("IMAP INBOX select failed")
finally:
    try:
        imap.logout()
    except Exception:
        pass
PY

python3 - "$ENV_FILE" "$EMAIL_ADDRESS" "$MAIL_PASSWORD" "$MAIL_HOST" <<'PY'
from pathlib import Path
import sys

path = Path(sys.argv[1])
email = sys.argv[2]
password = sys.argv[3]
host = sys.argv[4]

updates = {
    "SMTP_HOST": host,
    "SMTP_PORT": "587",
    "SMTP_USER": email,
    "SMTP_PASSWORD": password,
    "SMTP_FROM": email,
    "SMTP_STARTTLS": "true",
    "SMTP_DRY_RUN": "false",
    "IMAP_ENABLED": "true",
    "IMAP_HOST": host,
    "IMAP_PORT": "993",
    "IMAP_USER": email,
    "IMAP_PASSWORD": password,
    "IMAP_FOLDER": "INBOX",
}

lines = path.read_text().splitlines()
seen = set()
out = []
for line in lines:
    if "=" in line and not line.lstrip().startswith("#"):
        key = line.split("=", 1)[0]
        if key in updates:
            out.append(f"{key}={updates[key]}")
            seen.add(key)
            continue
    out.append(line)
for key, value in updates.items():
    if key not in seen:
        out.append(f"{key}={value}")
path.write_text("\n".join(out) + "\n")
PY

chmod 600 "$ENV_FILE"

echo "Credentials verified. Applying email configuration..."
docker compose --env-file "$ENV_FILE" up -d --force-recreate ops_api

echo
echo "Email configuration applied."
echo "Run: bash ./runtime-doctor.sh"
