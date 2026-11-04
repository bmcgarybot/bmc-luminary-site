"""Pure public-channel cursor/backoff policy. No persistence or external actions."""
from dataclasses import dataclass, replace
import math

@dataclass(frozen=True)
class ScanState:
    lane_id: str
    source_key: str
    created_at: float
    query_variant: int = 0
    page: int = 1
    attempted_policy_version: str = ''
    successful_policy_version: str = ''
    last_attempt_at: float | None = None
    last_success_at: float | None = None
    next_eligible_at: float = 0
    failure_streak: int = 0
    total_failures: int = 0
    attempts: int = 0
    last_progress_at: float | None = None
    no_progress_batches: int = 0
    last_error: str | None = None


def query_slot(state, term_count):
    """Each term gets request then discovery, each starting at page one."""
    if term_count < 1:
        raise ValueError('term_count must be positive')
    return {'term_index': (state.query_variant // 2) % term_count,
            'mode': 'request' if state.query_variant % 2 == 0 else 'discovery',
            'page': state.page}


def prepare_policy(state, policy_version):
    # A changed query policy must never begin halfway through an old query.
    if state.attempted_policy_version != policy_version:
        return replace(state, query_variant=0, page=1)
    return state



def _validate_now(now):
    if not isinstance(now, (int, float)) or not math.isfinite(now):
        raise ValueError('now must be a finite UTC epoch timestamp')


def _clock_issue(state, now, tolerance=300, max_delay=21600):
    stamps = (state.created_at, state.last_attempt_at, state.last_success_at,
              state.last_progress_at, state.next_eligible_at)
    if any(x is not None and (not isinstance(x, (int, float)) or not math.isfinite(x)) for x in stamps):
        return 'help_needed_invalid_timestamp'
    # Due times may be future, but never arbitrarily beyond the last attempt
    # plus maximum backoff. Preserve anomalous state for explicit review.
    anchor = state.last_attempt_at if state.last_attempt_at is not None else state.created_at
    if state.next_eligible_at > now and state.next_eligible_at > anchor + max_delay + tolerance:
        return 'help_needed_invalid_due_time'
    if any(x is not None and x > now + tolerance for x in stamps[:-1]):
        return 'help_needed_clock_skew'
    # Even tolerated historical skew cannot legally complete at this clock.
    # Defer until it catches up instead of searching and rejecting completion.
    if any(x is not None and x > now for x in stamps[:-1]):
        return 'retry_clock_skew_deferred'
    return None


def complete_batch(state, *, now, policy_version, raw_results=0,
                   new_observations=0, new_requests=0, error=None,
                   max_pages=5, base_delay=300, max_delay=21600):
    """Counts are distinct persisted additions, not total duplicate results.

    new_observations includes contractor ads and business listings. A valid
    empty search is successful execution, even when it adds no evidence.
    """
    _validate_now(now)
    if _clock_issue(state, now, max_delay=max_delay):
        raise ValueError('quarantined timestamp state; review or clock catch-up required')
    if min(raw_results, new_observations, new_requests) < 0:
        raise ValueError('counts must be nonnegative')
    if max_pages < 1 or base_delay <= 0 or max_delay < base_delay:
        raise ValueError('invalid bounds')
    if state.last_attempt_at is not None and now < state.last_attempt_at:
        raise ValueError('timestamps must not move backwards')
    state = prepare_policy(state, policy_version)
    if error:
        failures = state.failure_streak + 1
        delay = min(max_delay, base_delay * 2 ** min(failures - 1, 16))
        return replace(state, attempted_policy_version=policy_version,
                       last_attempt_at=now, failure_streak=failures,
                       total_failures=state.total_failures + 1, attempts=state.attempts + 1,
                       last_error=str(error)[:300], next_eligible_at=now + delay)
    progress = new_observations > 0 or new_requests > 0
    empty_streak = 0 if progress else state.no_progress_batches + 1
    delay = min(max_delay, base_delay * 2 ** min(max(0, empty_streak - 2), 16))
    advance = raw_results == 0 or state.page >= max_pages
    return replace(state, attempted_policy_version=policy_version,
                   successful_policy_version=policy_version,
                   last_attempt_at=now, last_success_at=now, failure_streak=0,
                   attempts=state.attempts + 1,
                   last_progress_at=now if progress else state.last_progress_at,
                   no_progress_batches=empty_streak, last_error=None,
                   next_eligible_at=now + delay,
                   query_variant=state.query_variant + int(advance),
                   page=1 if advance else state.page + 1)


def health(state, *, now, stale_after=36 * 3600, failures_for_help=3):
    _validate_now(now)
    clock_issue = _clock_issue(state, now)
    if clock_issue:
        return clock_issue
    if state.failure_streak >= failures_for_help:
        return 'help_needed_repeated_failures'
    if now - (state.last_success_at if state.last_success_at is not None else state.created_at) >= stale_after:
        return 'help_needed_stale' if state.last_success_at is not None else 'help_needed_never_succeeded'
    if state.failure_streak:
        return 'retry_backoff'
    if state.no_progress_batches >= 3:
        return 'no_progress_backoff'
    return 'healthy'


def select_due(states, *, now, policy_version, limit=15, source_cursor=0,
               source_phases=None):
    """Round-robin sources; bounded policy preference, oldest attempts otherwise.

    Return (lanes, next_source_cursor, next_source_phases). Persist both.
    Clock-invalid lanes are quarantined; health() supplies the owner-help reason. Failed backfill
    attempts count as attempts, not successful policy scans. At most every
    other allocation per source prefers backfill; even those choose oldest
    attempts, so a failing old-policy lane cannot monopolize its source.
    """
    _validate_now(now)
    phases = dict(source_phases or {})
    if any(value not in (0, 1) for value in phases.values()):
        raise ValueError('source phases must be zero or one')
    if limit < 1:
        return [], source_cursor, phases
    sources = sorted({s.source_key for s in states})
    if not sources:
        return [], 0, phases
    cursor = source_cursor % len(sources)
    pools = {k: [s for s in states if s.source_key == k and not _clock_issue(s, now) and s.next_eligible_at <= now] for k in sources}
    chosen = []
    while len(chosen) < limit and any(pools.values()):
        key = sources[cursor]
        cursor = (cursor + 1) % len(sources)
        pool = pools[key]
        if not pool:
            continue
        pending = [s for s in pool if s.attempted_policy_version != policy_version]
        candidates = pending if pending and phases.get(key, 0) == 0 else pool
        pick = min(candidates, key=lambda s: (s.last_attempt_at if s.last_attempt_at is not None else float('-inf'), s.created_at, s.lane_id))
        chosen.append(prepare_policy(pick, policy_version))
        pool.remove(pick)
        phases[key] = 1 - phases.get(key, 0)
    return chosen, cursor, phases
