# Public site rebuild checkpoint

Cloudflare Pages build settings were changed by the owner on November 2, 2026 to run `python3 portfolio/automation/build-public-site.py dist` from the repository root and publish `dist`.

This commit triggers the Git-integrated production build. Verify its build log reports 109 staged public files and its output directory is `dist`. Confirm public pages and the two public catalog JSON files work, while internal automation and prospect JSON files are unavailable. Historical deployments and public Git history require separate review. No customer outreach authorization is conveyed by this commit.
