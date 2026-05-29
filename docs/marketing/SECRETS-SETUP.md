# Secrets setup — where the API keys actually go

The Claude Code **web app has no secure secret store** (its "environment variables" field is plain-text and explicitly warns against credentials). So the publishing keys live in **GitHub Actions Secrets**, which *are* encrypted. GitHub posts on your behalf — no key ever touches the web app, the repo files, or chat.

## One-time setup (~3 min)

1. Go to the repo on GitHub → **Settings** → **Secrets and variables** → **Actions**.
2. Click **New repository secret** and add each of these (exact names):

| Secret name | Where to get it | Needed for |
|---|---|---|
| `DEVTO_API_KEY` | dev.to → Settings → Extensions → **Generate API Key** | dev.to auto-posting |
| `HASHNODE_PAT` | Hashnode → Settings → Developer → **Personal Access Token** | Hashnode auto-posting |
| `HASHNODE_PUBLICATION_ID` | Hashnode → your blog dashboard; the publication id (in the URL or via their API) | Hashnode target blog |

dev.to alone works without Hashnode — each channel is independent. Add only what you have.

> **Hashnode note:** Hashnode's GraphQL *publishing* API now requires a paid **Pro** plan — `gql.hashnode.com` 301-redirects API POSTs to an announcement saying so. So Hashnode auto-publish is **off by default** (runs stay green on dev.to). The blog `autopunk-media-skills.hashnode.dev` exists; you can paste articles from `content/articles/*.md` into Hashnode's web editor by hand anytime for free. To enable auto-publish later, go Pro and add a secret `HASHNODE_ENABLED` = `1` (plus the two Hashnode secrets above).

3. That's it. The workflow `.github/workflows/publish-content.yml` runs:
   - on every push to `main` that adds a file under `content/articles/`,
   - every Tuesday 13:00 UTC (weekly cadence),
   - or manually via **Actions → Publish Content → Run workflow**.

## How it stays safe + correct
- Missing secret → that channel is **skipped**, never an error.
- `content/.published.json` tracks what already went out, so re-runs **never double-post**.
- On a pull request it does **not** post (only `main`/schedule/manual with `PUBLISH=1`).

## To publish more
Drop a new `content/articles/<slug>.md` (YAML frontmatter: `title`, `tags`, `cover_image`, body in markdown). Merge to `main` → it auto-publishes. The agent can keep generating these on a cadence.

## Revoking
If a key ever leaks, revoke it in dev.to/Hashnode and add a fresh one as the same secret name. Nothing else changes.
