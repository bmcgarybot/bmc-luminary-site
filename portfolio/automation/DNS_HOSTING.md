# BMC Domain / Hosting Verification

## Current known state
- GitHub Pages build/deploy jobs are succeeding.
- The repository does not currently contain a root `CNAME` file.
- The intended public site URL in the runtime configuration is:
  `https://bmcluminaryventures.com`
- The intended public automation ingress is:
  `https://hooks.bmcluminaryventures.com`
- External checks from the build conversation could not reliably resolve the custom domain, so do not assume DNS is correct merely because GitHub Pages deploys successfully.

## Do not change DNS blindly
The existing BMC homepage predates the portfolio build. Before changing GitHub Pages custom-domain settings or DNS records:

1. Confirm where `bmcluminaryventures.com` is currently hosted.
2. Record current DNS records.
3. Confirm whether the root domain already points at GitHub Pages, another host, or a redirect.
4. Confirm whether `www` is in use.
5. Preserve the existing BMC homepage.
6. Add the portfolio as `/portfolio/`; do not redirect the root unless intentionally decided.
7. Configure `hooks.bmcluminaryventures.com` separately for Cloudflare Tunnel.
8. Verify HTTPS on both public site and hooks hostname.

## GitHub Pages expected checks
- pages build/deploy succeeds
- portfolio files exist on `master`
- current root homepage remains unchanged except intentional portfolio navigation changes
- `/portfolio/` returns HTTP 200 publicly
- `/portfolio/services/` returns HTTP 200
- `/portfolio/request/` returns HTTP 200
- `/portfolio/provider-pilot/` returns HTTP 200
- `/robots.txt` returns HTTP 200
- `/sitemap.xml` returns HTTP 200

## Search launch
Do not submit the sitemap to Google/Bing until the actual public domain is verified and priority pages are reachable.

## Cloudflare Tunnel
Use a dedicated subdomain:
`hooks.bmcluminaryventures.com`

Route only the public API/webhook paths through the tunnel. Keep n8n admin, Postgres, Ollama and the private BMC admin UI off the public Internet.
