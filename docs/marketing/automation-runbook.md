# Automation Runbook

How the marketing automation runs, what it touches, and which secrets it expects. Secret **values** never appear here or in git — only names.

## Recurring task (weekly)
A scheduled agent run that, each week:
1. Refreshes metrics (stars, visitors, clones, referrers) into `sprint-metrics.md`.
2. Drafts the week's evergreen article, runs it through `ai-writing-detox`, and (if `DEVTO_API_KEY` / `HASHNODE_PAT` present) publishes to dev.to + Hashnode.
3. Renders 1–3 per-skill Shorts + (monthly) refreshes the flagship video, uploads via YouTube API if `YT_*` secrets present.
4. Posts "skill of the day" to X if `X_*` secrets present.
5. Checks the 4 awesome-list PRs; drafts a polite nudge for any with no response after 5–7 days.
6. Triages new GitHub issues / quality-reports and drafts responses.
7. Updates the owner's checklist with anything needing a human.

## Secrets expected (set as environment secrets, never committed)
`DEVTO_API_KEY`, `HASHNODE_PAT`, `X_API_KEY`, `X_API_SECRET`, `X_ACCESS_TOKEN`, `X_ACCESS_SECRET`, `YT_CLIENT_ID`, `YT_CLIENT_SECRET`, `YT_REFRESH_TOKEN`, `ESP_API_KEY`.

Each engine degrades gracefully: if a secret is missing, that channel is skipped and the asset is saved as a draft under `docs/marketing/drafts/` for manual posting.

## Quality gate
No asset is published until it passes `ai-writing-detox`. The first asset of each type (first video, first article, first X post) is saved as a draft for one owner thumbs-up before the channel goes fully automatic.

## Hard rules
- Only the owner's own accounts. One identity per platform.
- No bought/bot stars, no sockpuppets, no vote manipulation, no impersonation.
- Hacker News, Reddit, Product Hunt, and LinkedIn personal posts are **never** automated (platform rules) — they stay owner-driven, with copy pre-drafted.

## Content pipeline (video, no filming)
`script (agent) → ai-writing-detox → Piper TTS (local, free) → slide/screencast frames → ffmpeg compose → MP4 → YouTube upload (resumable) → embed in README/docs`.
