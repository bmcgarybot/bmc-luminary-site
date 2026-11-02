# Local-worded question suggestion research

This is a separate, unreviewed research corpus, derived only from the 46 saved guest responses referenced in `local-collection-manifest.json`. The 54 seeds contain city names, but the provider arguments are United States / English. City wording is query text only; these responses do not measure Arizona, Nevada, or city demand.

The completed set covers all 21 Arizona cities for pressure washing and commercial cleaning (42 seeds), plus four Las Vegas seeds. Eight Nevada seeds remain pending after the conservative local ledger reached its 120 saved-response daily budget across broad and local research. This is a local stop, not evidence that the provider itself rejected a request. No further external queries were made to finish these artifacts.

The collected responses contain 414 returned rows and 303 unique exact keyword strings. Nine collected seeds returned zero rows; these remain visible alongside pending seeds in `local-research-summary.json`. Deduplication uses the actual response `data[].string` field, preserving original spelling and every seed's service keys, query location text, and raw path. It does not trim, lowercase, merge synonyms, or infer metrics. The provider may return fragments, statements, irrelevant suggestions, and repeated general phrases even for question-type queries.

No volume, CPC, competition, or local-demand estimates are fabricated. These artifacts have not been reviewed for relevance, published as pages, or used for LLM training. The broad corpus is unchanged.

Offline rebuild and validation:

```sh
python portfolio/automation/collect-question-research.py --build-local-artifacts
python portfolio/automation/collect-question-research.py --validate-local-artifacts
python -m py_compile portfolio/automation/collect-question-research.py
```

Both artifact commands exit before any network code. Validation reconstructs coverage and exact keyword provenance from raw inputs and compares all derived JSON, including recovered manifest counts. Rebuild is deterministic for unchanged inputs and preserves the existing manifest collection timestamp.
