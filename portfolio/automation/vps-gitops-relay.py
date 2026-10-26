#!/usr/bin/env python3
"""
BMC VPS GitOps relay.

Polls an isolated GitHub branch for immutable JSON requests, executes only
explicitly allowlisted BMC operational actions, then uploads a JSON proof/result.

Security model:
- no arbitrary shell command field exists;
- outbound email switches must be OFF for mutating actions;
- deploys require an exact master SHA whose BMC Portfolio CI run succeeded;
- secrets are loaded only from local files/environment and redacted from output;
- request/result traffic lives on the isolated vps-relay branch.
"""

from __future__ import annotations

import argparse
import base64
import hashlib
import json
import os
import re
import socket
import subprocess
import sys
import time
import urllib.error
import urllib.parse
import urllib.request
from datetime import datetime, timezone
from pathlib import Path

REPO = os.environ.get("BMC_RELAY_REPOSITORY", "bmcgarybot/bmc-luminary-site").strip()
RELAY_BRANCH = os.environ.get("BMC_RELAY_BRANCH", "vps-relay").strip()
TOKEN = os.environ.get("BMC_RELAY_GITHUB_TOKEN", "").strip()
ENV_FILE = os.environ.get("BMC_RELAY_APP_ENV", ".env").strip()
REQUEST_DIR = "portfolio/automation/vps-relay/requests"
RESULT_DIR = "portfolio/automation/vps-relay/results"
MAX_REQUEST_AGE_HOURS = max(1, min(168, int(os.environ.get("BMC_RELAY_MAX_REQUEST_AGE_HOURS", "24"))))
MAX_OUTPUT_CHARS = max(10000, min(2_000_000, int(os.environ.get("BMC_RELAY_MAX_OUTPUT_CHARS", "600000"))))
API_BASE = f"https://api.github.com/repos/{REPO}"
ROOT = Path(__file__).resolve().parents[2]
AUTOMATION = Path(__file__).resolve().parent
STATE_DIR = Path(os.environ.get("BMC_RELAY_STATE_DIR", str(Path.home() / ".local/state/bmc-vps-relay")))
LOCAL_RESULTS = STATE_DIR / "results"
REQUEST_ID_RE = re.compile(r"^[A-Za-z0-9][A-Za-z0-9._-]{7,119}$")

READ_ONLY_ACTIONS = {"proof_readout", "launch_audit", "runtime_doctor"}
MUTATING_INTERNAL_ACTIONS = {
    "deploy_update",
    "market_inventory_step",
    "local_demand_step",
    "public_opportunities_step",
    "source_native_step",
}
ALLOWED_ACTIONS = READ_ONLY_ACTIONS | MUTATING_INTERNAL_ACTIONS

API_ACTIONS = {
    "market_inventory_step": "/api/process-market-inventory",
    "local_demand_step": "/api/process-local-demand-signals",
    "public_opportunities_step": "/api/process-public-opportunities",
    "source_native_step": "/api/process-source-native-research",
}


class RelayError(RuntimeError):
    pass


def now_iso() -> str:
    return datetime.now(timezone.utc).isoformat()


def run(cmd: list[str], timeout: int = 300, cwd: Path | None = None) -> subprocess.CompletedProcess:
    return subprocess.run(
        cmd,
        cwd=str(cwd or AUTOMATION),
        text=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        timeout=timeout,
        check=False,
    )


def git_output(args: list[str], timeout: int = 60) -> str:
    cp = run(["git", "-C", str(ROOT), *args], timeout=timeout, cwd=ROOT)
    if cp.returncode != 0:
        raise RelayError(f"git {' '.join(args)} failed: {cp.stderr.strip()[:500]}")
    return cp.stdout.strip()


def current_sha() -> str:
    try:
        return git_output(["rev-parse", "HEAD"])
    except Exception:
        return "unknown"


def current_branch() -> str:
    try:
        return git_output(["branch", "--show-current"])
    except Exception:
        return "unknown"


def parse_env_file(path: Path) -> dict[str, str]:
    out: dict[str, str] = {}
    if not path.exists():
        return out
    for raw in path.read_text(errors="replace").splitlines():
        line = raw.strip()
        if not line or line.startswith("#") or "=" not in line:
            continue
        key, value = line.split("=", 1)
        out[key.strip()] = value.strip().strip('"').strip("'")
    return out


def app_env() -> dict[str, str]:
    return parse_env_file(AUTOMATION / ENV_FILE)


def outreach_state() -> dict[str, str]:
    env = app_env()
    return {
        "OUTREACH_ENABLED": env.get("OUTREACH_ENABLED", ""),
        "BUYER_OUTREACH_ENABLED": env.get("BUYER_OUTREACH_ENABLED", ""),
        "GROWTH_OUTREACH_ENABLED": env.get("GROWTH_OUTREACH_ENABLED", "false") or "false",
    }


def assert_outreach_off() -> dict[str, str]:
    state = outreach_state()
    bad = {k: v for k, v in state.items() if str(v).lower() != "false"}
    if bad:
        raise RelayError(f"Refusing mutating action because outbound switches are not all OFF: {bad}")
    return state


def secret_values() -> list[tuple[str, str]]:
    values: list[tuple[str, str]] = []
    for source in (app_env(), dict(os.environ)):
        for key, value in source.items():
            upper = key.upper()
            if value and any(x in upper for x in ("PASSWORD", "SECRET", "TOKEN", "API_KEY", "ADMIN_KEY")):
                if len(value) >= 6:
                    values.append((key, value))
    if TOKEN:
        values.append(("BMC_RELAY_GITHUB_TOKEN", TOKEN))
    values.sort(key=lambda x: len(x[1]), reverse=True)
    return values


def redact(text: str) -> str:
    value = str(text or "")
    for key, secret in secret_values():
        value = value.replace(secret, f"[REDACTED:{key}]")
    if len(value) > MAX_OUTPUT_CHARS:
        value = value[:MAX_OUTPUT_CHARS] + "\n...[OUTPUT TRUNCATED BY RELAY]..."
    return value


def github_request(
    method: str,
    path: str,
    payload: dict | None = None,
    *,
    allow_404: bool = False,
    timeout: int = 30,
):
    if not TOKEN:
        raise RelayError("BMC_RELAY_GITHUB_TOKEN is not configured")
    url = path if path.startswith("https://") else API_BASE + path
    data = None
    headers = {
        "Authorization": f"Bearer {TOKEN}",
        "Accept": "application/vnd.github+json",
        "User-Agent": "BMC-VPS-Relay/1.0",
        "X-GitHub-Api-Version": "2022-11-28",
    }
    if payload is not None:
        data = json.dumps(payload).encode()
        headers["Content-Type"] = "application/json"
    req = urllib.request.Request(url, data=data, method=method, headers=headers)
    try:
        with urllib.request.urlopen(req, timeout=timeout) as resp:
            raw = resp.read(4_000_000)
            if not raw:
                return None
            return json.loads(raw.decode("utf-8", "replace"))
    except urllib.error.HTTPError as exc:
        if allow_404 and exc.code == 404:
            return None
        detail = exc.read(2000).decode("utf-8", "replace")
        raise RelayError(f"GitHub API {method} {url} failed HTTP {exc.code}: {detail[:1000]}") from exc
    except urllib.error.URLError as exc:
        raise RelayError(f"GitHub API {method} {url} failed: {exc}") from exc


def github_contents(path: str, ref: str):
    quoted = urllib.parse.quote(path, safe="/")
    return github_request("GET", f"/contents/{quoted}?ref={urllib.parse.quote(ref)}", allow_404=True)


def decode_content(obj: dict) -> str:
    encoded = str(obj.get("content") or "").replace("\n", "")
    return base64.b64decode(encoded).decode("utf-8", "replace")


def remote_result_path(request_id: str) -> str:
    return f"{RESULT_DIR}/{request_id}.json"


def remote_result_exists(request_id: str) -> bool:
    return github_contents(remote_result_path(request_id), RELAY_BRANCH) is not None


def upload_json(path: str, payload: dict, message: str):
    existing = github_contents(path, RELAY_BRANCH)
    body = {
        "message": message,
        "content": base64.b64encode(
            (json.dumps(payload, indent=2, sort_keys=True, default=str) + "\n").encode()
        ).decode(),
        "branch": RELAY_BRANCH,
    }
    if existing and existing.get("sha"):
        body["sha"] = existing["sha"]
    quoted = urllib.parse.quote(path, safe="/")
    return github_request("PUT", f"/contents/{quoted}", body, timeout=45)


def local_result_file(request_id: str) -> Path:
    return LOCAL_RESULTS / f"{request_id}.json"


def save_local_result(payload: dict):
    LOCAL_RESULTS.mkdir(parents=True, exist_ok=True)
    path = local_result_file(payload["request_id"])
    tmp = path.with_suffix(".tmp")
    tmp.write_text(json.dumps(payload, indent=2, sort_keys=True, default=str) + "\n")
    tmp.replace(path)


def upload_cached_if_needed(request_id: str) -> bool:
    path = local_result_file(request_id)
    if not path.exists():
        return False
    if remote_result_exists(request_id):
        return True
    payload = json.loads(path.read_text())
    upload_json(remote_result_path(request_id), payload, f"VPS relay result {request_id}")
    return True


def list_requests() -> list[dict]:
    listing = github_contents(REQUEST_DIR, RELAY_BRANCH)
    if not isinstance(listing, list):
        return []
    rows = [x for x in listing if x.get("type") == "file" and str(x.get("name", "")).endswith(".json")]
    return sorted(rows, key=lambda x: str(x.get("name", "")))


def load_request(item: dict) -> dict:
    obj = github_contents(str(item["path"]), RELAY_BRANCH)
    if not isinstance(obj, dict):
        raise RelayError(f"Unable to fetch request {item.get('path')}")
    req = json.loads(decode_content(obj))
    if not isinstance(req, dict):
        raise RelayError("Request must be a JSON object")
    req["_github_blob_sha"] = obj.get("sha")
    return req


def parse_time(value: str) -> datetime:
    text = str(value or "").strip()
    if text.endswith("Z"):
        text = text[:-1] + "+00:00"
    dt = datetime.fromisoformat(text)
    if dt.tzinfo is None:
        dt = dt.replace(tzinfo=timezone.utc)
    return dt.astimezone(timezone.utc)


def validate_request(req: dict):
    request_id = str(req.get("request_id") or "")
    if not REQUEST_ID_RE.match(request_id):
        raise RelayError("Invalid request_id")
    if int(req.get("version") or 0) != 1:
        raise RelayError("Unsupported relay request version")
    action = str(req.get("action") or "")
    if action not in ALLOWED_ACTIONS:
        raise RelayError(f"Action is not allowlisted: {action!r}")
    if req.get("allow_external_actions") is not False:
        raise RelayError("Every request must explicitly set allow_external_actions=false")
    created_at = parse_time(str(req.get("created_at") or ""))
    age = (datetime.now(timezone.utc) - created_at).total_seconds()
    if age < -300:
        raise RelayError("Request created_at is unexpectedly in the future")
    if age > MAX_REQUEST_AGE_HOURS * 3600:
        raise RelayError(f"Request is stale (older than {MAX_REQUEST_AGE_HOURS} hours)")
    expires_at = req.get("expires_at")
    if expires_at and datetime.now(timezone.utc) > parse_time(str(expires_at)):
        raise RelayError("Request expired")
    args = req.get("args") or {}
    if not isinstance(args, dict):
        raise RelayError("args must be a JSON object")


def ci_success_for_sha(sha: str) -> tuple[bool, str]:
    if not re.fullmatch(r"[0-9a-f]{40}", sha or ""):
        return False, "required_ci_sha is not a full commit SHA"
    params = urllib.parse.urlencode({"head_sha": sha, "status": "completed", "per_page": 30})
    data = github_request("GET", f"/actions/runs?{params}")
    runs = (data or {}).get("workflow_runs") or []
    candidates = [
        r for r in runs
        if r.get("path") == ".github/workflows/bmc-portfolio-ci.yml"
        or r.get("name") == "BMC Portfolio CI"
    ]
    if any(r.get("conclusion") == "success" for r in candidates):
        good = next(r for r in candidates if r.get("conclusion") == "success")
        return True, f"CI success run {good.get('id')}"
    if candidates:
        return False, "matching BMC Portfolio CI run exists but is not successful"
    return False, "no completed BMC Portfolio CI run found for required SHA"


def pull_exact_tested_master(required_sha: str) -> str:
    if run(["git", "-C", str(ROOT), "diff", "--quiet"], cwd=ROOT).returncode != 0:
        raise RelayError("Tracked working tree changes exist; refusing deploy")
    if run(["git", "-C", str(ROOT), "diff", "--cached", "--quiet"], cwd=ROOT).returncode != 0:
        raise RelayError("Staged working tree changes exist; refusing deploy")
    fetch = run(["git", "-C", str(ROOT), "fetch", "origin", "master", "--quiet"], timeout=120, cwd=ROOT)
    if fetch.returncode != 0:
        raise RelayError(f"git fetch failed: {fetch.stderr.strip()[:500]}")
    remote = git_output(["rev-parse", "origin/master"])
    if remote != required_sha:
        raise RelayError(f"origin/master is {remote}, but request requires {required_sha}; refusing stale deploy")
    ok, proof = ci_success_for_sha(required_sha)
    if not ok:
        raise RelayError(f"Refusing deploy: {proof}")
    pull = run(["git", "-C", str(ROOT), "pull", "--ff-only", "origin", "master"], timeout=120, cwd=ROOT)
    if pull.returncode != 0:
        raise RelayError(f"git pull --ff-only failed: {pull.stderr.strip()[:1000]}")
    local = current_sha()
    if local != required_sha:
        raise RelayError(f"post-pull SHA {local} does not equal tested SHA {required_sha}")
    return proof


def admin_post(path: str, timeout: int = 360):
    env = app_env()
    key = env.get("BMC_ADMIN_KEY", "")
    if not key or "CHANGE_ME" in key:
        raise RelayError("BMC_ADMIN_KEY is not configured")
    req = urllib.request.Request(
        "http://127.0.0.1:8000" + path,
        data=b"",
        method="POST",
        headers={"X-BMC-Admin-Key": key, "Accept": "application/json"},
    )
    try:
        with urllib.request.urlopen(req, timeout=timeout) as resp:
            raw = resp.read(4_000_000).decode("utf-8", "replace")
            return json.loads(raw) if raw else {"ok": True}
    except Exception as exc:
        raise RelayError(f"local admin POST {path} failed: {exc}") from exc


def execute(req: dict) -> dict:
    action = req["action"]
    args = req.get("args") or {}
    started = now_iso()
    before = current_sha()
    branch_before = current_branch()
    stdout = ""
    stderr = ""
    exit_code = 0
    metadata: dict = {}

    if action in MUTATING_INTERNAL_ACTIONS:
        metadata["outreach_gate"] = assert_outreach_off()

    if action == "proof_readout":
        cp = run(["bash", "./production-proof-readout.sh", ENV_FILE], timeout=600)
        stdout, stderr, exit_code = cp.stdout, cp.stderr, cp.returncode

    elif action == "launch_audit":
        cp = run(["bash", "./launch-readiness.sh", ENV_FILE, "report"], timeout=300)
        stdout, stderr, exit_code = cp.stdout, cp.stderr, cp.returncode

    elif action == "runtime_doctor":
        cp = run(["bash", "./runtime-doctor.sh", ENV_FILE], timeout=300)
        stdout, stderr, exit_code = cp.stdout, cp.stderr, cp.returncode

    elif action == "deploy_update":
        required = str(req.get("required_ci_sha") or "")
        proof = pull_exact_tested_master(required)
        metadata["ci_proof"] = proof
        cp = run(["bash", "./deploy-update.sh", ENV_FILE], timeout=1200)
        stdout, stderr, exit_code = cp.stdout, cp.stderr, cp.returncode

    elif action in API_ACTIONS:
        iterations = max(1, min(12, int(args.get("iterations", 1))))
        pause_seconds = max(0, min(60, int(args.get("pause_seconds", 2))))
        responses = []
        for idx in range(iterations):
            responses.append(admin_post(API_ACTIONS[action], timeout=420))
            if pause_seconds and idx + 1 < iterations:
                time.sleep(pause_seconds)
        stdout = json.dumps({"iterations": iterations, "responses": responses}, indent=2, default=str)
        exit_code = 0

    else:
        raise RelayError(f"Action unexpectedly reached executor: {action}")

    return {
        "version": 1,
        "request_id": req["request_id"],
        "action": action,
        "status": "success" if exit_code == 0 else "failed",
        "exit_code": exit_code,
        "started_at": started,
        "completed_at": now_iso(),
        "host": socket.gethostname(),
        "repo": REPO,
        "relay_branch": RELAY_BRANCH,
        "git_branch_before": branch_before,
        "git_commit_before": before,
        "git_commit_after": current_sha(),
        "request_blob_sha": req.get("_github_blob_sha"),
        "request_sha256": hashlib.sha256(
            json.dumps({k: v for k, v in req.items() if not k.startswith("_")}, sort_keys=True).encode()
        ).hexdigest(),
        "allow_external_actions": False,
        "metadata": metadata,
        "stdout": redact(stdout),
        "stderr": redact(stderr),
    }


def failed_result(req: dict | None, request_id: str, exc: Exception) -> dict:
    return {
        "version": 1,
        "request_id": request_id,
        "action": (req or {}).get("action"),
        "status": "rejected" if isinstance(exc, RelayError) else "error",
        "exit_code": None,
        "started_at": now_iso(),
        "completed_at": now_iso(),
        "host": socket.gethostname(),
        "repo": REPO,
        "relay_branch": RELAY_BRANCH,
        "git_commit_before": current_sha(),
        "git_commit_after": current_sha(),
        "allow_external_actions": False,
        "error": redact(str(exc)),
    }


def process_once() -> dict:
    STATE_DIR.mkdir(parents=True, exist_ok=True)
    LOCAL_RESULTS.mkdir(parents=True, exist_ok=True)
    stats = {"seen": 0, "processed": 0, "uploaded_cached": 0, "skipped_remote_result": 0, "errors": []}

    for item in list_requests():
        stats["seen"] += 1
        fallback_id = Path(str(item.get("name") or "")).stem
        if not REQUEST_ID_RE.match(fallback_id):
            stats["errors"].append({"file": item.get("name"), "error": "invalid request filename"})
            continue
        try:
            if remote_result_exists(fallback_id):
                stats["skipped_remote_result"] += 1
                continue
            if local_result_file(fallback_id).exists():
                if upload_cached_if_needed(fallback_id):
                    stats["uploaded_cached"] += 1
                continue

            req = load_request(item)
            request_id = str(req.get("request_id") or fallback_id)
            if request_id != fallback_id:
                raise RelayError("request_id must exactly match the JSON filename")
            validate_request(req)
            result = execute(req)
        except Exception as exc:
            request_id = fallback_id
            result = failed_result(locals().get("req") if "req" in locals() else None, request_id, exc)

        save_local_result(result)
        try:
            upload_json(remote_result_path(request_id), result, f"VPS relay result {request_id}")
        except Exception as exc:
            stats["errors"].append({"request_id": request_id, "upload_error": redact(str(exc))})
        stats["processed"] += 1

    return stats


def self_test(write_registration: bool = False):
    if not TOKEN:
        raise RelayError("BMC_RELAY_GITHUB_TOKEN is missing")
    if not (AUTOMATION / ENV_FILE).exists():
        raise RelayError(f"Application env file does not exist: {AUTOMATION / ENV_FILE}")
    repo_info = github_request("GET", "")
    branch = github_request("GET", f"/branches/{urllib.parse.quote(RELAY_BRANCH)}")
    mailbox = github_contents("portfolio/automation/vps-relay/README.md", RELAY_BRANCH)
    if not repo_info or not branch or not mailbox:
        raise RelayError("GitHub repository/relay branch/mailbox could not be read")
    result = {
        "ok": True,
        "host": socket.gethostname(),
        "repo": REPO,
        "relay_branch": RELAY_BRANCH,
        "git_commit": current_sha(),
        "outreach": outreach_state(),
        "allowed_actions": sorted(ALLOWED_ACTIONS),
        "checked_at": now_iso(),
    }
    if write_registration:
        safe_host = re.sub(r"[^A-Za-z0-9._-]+", "-", socket.gethostname())[:80]
        path = f"{RESULT_DIR}/relay-registration-{safe_host}.json"
        upload_json(path, result, f"Register BMC VPS relay on {safe_host}")
        result["registration_path"] = path
    return result


def main():
    parser = argparse.ArgumentParser(description="BMC VPS GitOps relay")
    parser.add_argument("--once", action="store_true", help="Process pending requests once (default)")
    parser.add_argument("--self-test", action="store_true", help="Verify local/GitHub relay access")
    parser.add_argument("--register", action="store_true", help="Verify access and upload a registration proof")
    args = parser.parse_args()

    try:
        if args.self_test or args.register:
            print(json.dumps(self_test(write_registration=args.register), indent=2, default=str))
            return 0
        print(json.dumps(process_once(), indent=2, default=str))
        return 0
    except Exception as exc:
        print(f"BMC VPS relay failed: {redact(str(exc))}", file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
