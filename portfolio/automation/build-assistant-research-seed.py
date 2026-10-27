#!/usr/bin/env python3
import argparse
import json
import re
import sys
from pathlib import Path
from urllib.parse import urlparse

ARTIFACT_GLOB = "assistant-research-bootstrap-*.json"
INSERT_COLUMNS = (
    "side,market,category_key,category_label,business_name,source_url,source_domain,"
    "snippet,search_query,page_no,public_email,public_phone,official_site,source_tier,"
    "verification_status,last_verified_at,status,query_strategy_version,evidence,first_seen_at,last_seen_at"
)


def sql_text(value):
    if value is None:
        return "null"
    return "'" + str(value).replace("'", "''") + "'"


def artifact_date(name):
    m = re.search(r"(20\d{2}-\d{2}-\d{2})", name)
    return m.group(1) if m else None


def source_key(name):
    stem = Path(name).stem
    key = re.sub(r"[^a-z0-9]+", "_", stem.lower()).strip("_")
    return key[:180]


def record_key(record):
    return (
        record.get("side"),
        record.get("market"),
        record.get("category_key"),
        record.get("url"),
        record.get("business_name"),
    )


def rank(record):
    return (
        3 if record.get("official") else 0,
        2 if record.get("roc_license") else 0,
        1 if record.get("verified_date") else 0,
        1 if record.get("email") else 0,
        1 if record.get("phone") else 0,
        len(record.get("note") or ""),
    )


def merged_record(entries):
    records = [entry["record"] for entry in entries]
    best = max(records, key=rank).copy()
    best["official"] = any(bool(r.get("official")) for r in records)
    for field in ("email", "phone", "domain", "roc_license", "trade", "verified_date"):
        if not best.get(field):
            best[field] = next((r.get(field) for r in records if r.get(field)), None)
    best["artifact_files"] = sorted({entry["file"] for entry in entries})
    best["bootstrap_sources"] = sorted({source_key(entry["file"]) for entry in entries})
    dates = {artifact_date(entry["file"]) for entry in entries}
    best["researched_dates"] = sorted(date for date in dates if date)
    return best


def validate_record(record, file_name, index):
    required = ("side", "market", "category_key", "category_label", "business_name", "url")
    missing = [name for name in required if not record.get(name)]
    if missing:
        raise ValueError(f"{file_name} record {index}: missing {', '.join(missing)}")
    if record["side"] not in {"buyer", "vendor"}:
        raise ValueError(f"{file_name} record {index}: invalid side {record['side']!r}")


def load_artifacts(data_dir):
    paths = sorted(data_dir.glob(ARTIFACT_GLOB))
    if not paths:
        raise ValueError(f"No census artifacts found in {data_dir} matching {ARTIFACT_GLOB}")
    grouped = {}
    artifact_stats = []
    for path in paths:
        payload = json.loads(path.read_text(encoding="utf-8"))
        records = payload.get("records")
        if not isinstance(records, list):
            raise ValueError(f"{path.name}: records must be a list")
        declared = payload.get("count")
        if declared is not None and declared != len(records):
            raise ValueError(f"{path.name}: declared count {declared} != actual {len(records)}")
        artifact_stats.append((path.name, len(records)))
        for index, record in enumerate(records, 1):
            validate_record(record, path.name, index)
            grouped.setdefault(record_key(record), []).append({"file": path.name, "record": record})
    return paths, grouped, artifact_stats


def render_row(entries):
    r = merged_record(entries)
    official = bool(r.get("official"))
    licensed = bool(r.get("roc_license"))
    source_tier = "direct" if official else ("registry_derived" if licensed else "directory")
    verification_status = "direct_evidence" if official else ("credential_corroborated" if licensed else "discovery")
    dates = r.get("researched_dates") or []
    verified_date = r.get("verified_date") or (max(dates) if official and dates else None)
    domain = r.get("domain") or (urlparse(r["url"]).netloc.lower() or None)
    note = r.get("note") or "Assistant-led census evidence"
    evidence = {
        "bootstrap_source": r["bootstrap_sources"][0],
        "bootstrap_sources": r["bootstrap_sources"],
        "artifact_files": r["artifact_files"],
        "researched_dates": dates,
        "source_quality": source_tier,
        "verification_status": verification_status,
        "researched_by": "assistant_manual_census",
    }
    for field in ("roc_license", "trade", "verified_date"):
        if r.get(field):
            evidence[field] = r[field]
    date_sql = f"{sql_text(verified_date)}::date" if verified_date else "null"
    values = [
        sql_text(r["side"]), sql_text(r["market"]), sql_text(r["category_key"]), sql_text(r["category_label"]),
        sql_text(r["business_name"]), sql_text(r["url"]), sql_text(domain), sql_text(note),
        sql_text("assistant artifact census: " + ", ".join(r["artifact_files"])), "0",
        sql_text(r.get("email")), sql_text(r.get("phone")), "true" if official else "false",
        sql_text(source_tier), sql_text(verification_status), date_sql, sql_text("discovered"), "7",
        sql_text(json.dumps(evidence, ensure_ascii=False, separators=(",", ":"))) + "::jsonb", "now()", "now()",
    ]
    return "(" + ",".join(values) + ")"


def build_sql(data_dir):
    paths, grouped, artifact_stats = load_artifacts(data_dir)
    rows = [
        render_row(grouped[key])
        for key in sorted(grouped, key=lambda k: tuple("" if v is None else str(v).lower() for v in k))
    ]
    raw_count = sum(count for _, count in artifact_stats)
    markets = sorted({key[1] for key in grouped})
    raw_by_market = {}
    unique_by_market = {}
    raw_by_side = {"buyer": 0, "vendor": 0}
    unique_by_side = {"buyer": 0, "vendor": 0}
    for key, entries in grouped.items():
        side, market = key[0], key[1]
        raw_by_market[market] = raw_by_market.get(market, 0) + len(entries)
        unique_by_market[market] = unique_by_market.get(market, 0) + 1
        raw_by_side[side] = raw_by_side.get(side, 0) + len(entries)
        unique_by_side[side] = unique_by_side.get(side, 0) + 1
    out = []
    out.append("-- GENERATED FILE. Source of truth: portfolio/data/assistant-research-bootstrap-*.json")
    out.append("-- Regenerate with: python3 build-assistant-research-seed.py --output seed-assistant-research-bootstrap.generated.sql")
    out.append(
        f"-- Artifacts: {len(paths)} | raw evidence rows: {raw_count} | "
        f"strict unique seed rows: {len(rows)} | markets: {len(markets)}"
    )
    out.append("")
    out.append(f"insert into market_inventory_candidates({INSERT_COLUMNS}) values")
    out.append(",\n".join(rows))
    out.append("on conflict(side,market,category_key,source_url,business_name) do update set")
    out.append(" source_domain=excluded.source_domain,")
    out.append(" snippet=excluded.snippet,")
    out.append(" search_query=excluded.search_query,")
    out.append(" public_email=coalesce(excluded.public_email,market_inventory_candidates.public_email),")
    out.append(" public_phone=coalesce(excluded.public_phone,market_inventory_candidates.public_phone),")
    out.append(" official_site=(market_inventory_candidates.official_site or excluded.official_site),")
    out.append(" source_tier=case when (market_inventory_candidates.official_site or excluded.official_site) then 'direct' else excluded.source_tier end,")
    out.append(" verification_status=case when (market_inventory_candidates.official_site or excluded.official_site) then 'direct_evidence' else excluded.verification_status end,")
    out.append(" last_verified_at=greatest(market_inventory_candidates.last_verified_at,excluded.last_verified_at),")
    out.append(" status=case when market_inventory_candidates.status='closed' then 'closed' else 'discovered' end,")
    out.append(" query_strategy_version=greatest(coalesce(market_inventory_candidates.query_strategy_version,0),excluded.query_strategy_version),")
    out.append(" evidence=market_inventory_candidates.evidence || excluded.evidence,")
    out.append(" last_seen_at=now(),")
    out.append(" updated_at=now();")
    out.append("")
    out.append("update market_inventory_progress p")
    out.append("set official_candidates=(")
    out.append("  select count(*) from market_inventory_candidates c")
    out.append("  where c.side=p.side and c.market=p.market and c.category_key=p.category_key")
    out.append("    and c.status='discovered' and c.query_strategy_version=7 and c.official_site=true")
    out.append("),")
    out.append(" updated_at=now()")
    out.append("where exists (")
    out.append("  select 1 from market_inventory_candidates c")
    out.append("  where c.side=p.side and c.market=p.market and c.category_key=p.category_key")
    out.append("    and c.evidence ? 'artifact_files'")
    out.append(");")
    out.append("")
    return "\n".join(out), {
        "artifacts": len(paths),
        "raw_rows": raw_count,
        "unique_rows": len(rows),
        "duplicate_rows_collapsed": raw_count - len(rows),
        "markets": markets,
        "raw_by_market": dict(sorted(raw_by_market.items())),
        "unique_by_market": dict(sorted(unique_by_market.items())),
        "raw_by_side": raw_by_side,
        "unique_by_side": unique_by_side,
    }


def main():
    here = Path(__file__).resolve().parent
    parser = argparse.ArgumentParser(description="Build deterministic SQL seed from assistant census JSON artifacts.")
    parser.add_argument("--data-dir", type=Path, default=here.parent / "data")
    parser.add_argument("--output", default="-")
    parser.add_argument("--summary-json", action="store_true")
    args = parser.parse_args()
    sql, summary = build_sql(args.data_dir)
    if args.output == "-":
        sys.stdout.write(sql)
    else:
        Path(args.output).write_text(sql, encoding="utf-8")
    if args.summary_json:
        print(json.dumps(summary, sort_keys=True), file=sys.stderr)


if __name__ == "__main__":
    main()
