# Marketing Plan — autopunk-media-skills

**Goal:** grow from a small base toward 1,000 GitHub stars, with balanced priority between stars (visibility) and real adoption by media professionals.

**Operating model:** run as automatically as possible. An agent handles repo work, content production, SEO, directory submissions, monitoring, and drafting. The owner stays in the background and only does a few small, clearly-marked actions (see `OWNER-CHECKLIST.md`). Organic only — no paid placements. No fake stars, no bots, no vote manipulation, ever (it violates GitHub's terms and gets repos removed).

---

## The core message

> **AI that writes like a media professional, not a chatbot — 394 free, quality-tested Claude skills for the people who actually make the content.**

Three doors to the same library:
- **AI / developer crowd (who give stars):** the fresh angle is *evaluation of non-code output* — the 7-dimension G-Eval rubric with the **Editorial Naturalness** hard floor.
- **Media professionals (who use it):** stop getting chatbot-sounding drafts — concrete outputs (treatments, show notes, FOIA letters, hooks).
- **Open-source / indie crowd:** MIT, no paywall, built by a working editor, not a startup.

Voice rules (the repo's own brand): no hype words ("largest", "revolutionary", "seamless"), no emoji-spam, always disclose the paid Pitch Doctor honestly. Every auto-generated asset passes the `ai-writing-detox` skill before it ships.

---

## The honest reality (why this is structured the way it is)

Two facts shape everything:

1. **The biggest, fastest star spikes come from a live human launch** — chiefly a *Show HN* post on Hacker News — done by a real person from a real account, present to answer questions for ~2 hours. This cannot be automated: Hacker News' API is read-only by design, and it actively detects "voting rings"; automated or coordinated posting gets killed. Reddit is similar (strict anti-self-promotion, aggressive bot detection). So these stay owner-gated.
2. **Stars and usage come from different crowds.** Stars come from developers/AI users; the people who *use* these skills are journalists and producers who mostly don't use GitHub. So we run two engines at once.

**Realistic forecast:** the automated engines below produce steady, compounding growth — plausibly low-to-mid hundreds of stars over ~3 months. The jump to 1,000 most likely needs at least one authentic Hacker News launch (owner-fired). Everything else maximizes the odds that, when that happens, it converts and sustains.

---

## The four engines

### Engine 1 — Auto-content factory *(agent-run, owner credentials)*
- **Flagship how-to video** (60–90s, no filming): agent writes the script → runs it through `ai-writing-detox` → free local TTS voiceover (Piper) → slide/screencast render (ffmpeg) → MP4 → auto-upload to the owner's YouTube → embed in README + docs.
- **Per-skill Shorts**: render high-appeal skills' input→output as short vertical videos → YouTube Shorts.
- **Weekly evergreen articles** → auto-publish to dev.to + Hashnode (real SEO + backlinks).
- **"Skill of the day"** → auto-post to the owner's X.

### Engine 2 — Programmatic SEO *(agent-run, no credentials — running now)*
- Use-case landing pages + per-category pages on GitHub Pages targeting long-tail search ("claude skills for journalists", "ai writing that doesn't sound like ai"). Compounds passively. This is the durable, hands-off engine.
- Social-preview image + a demo asset embedded in the README.

### Engine 3 — Distribution & discovery *(agent-run)*
- Skill directories (SkillsMP auto-indexes repos with ≥2 stars + a valid SKILL.md — we now ship one), SkillHub, awesomeclaude.ai, claudemarketplaces.com.
- Awesome-list PRs (4 open) — monitor, nudge after 5–7 days, add a few more.
- Mention monitoring via F5Bot / Google Alerts → owner email; agent drafts responses.

### Engine 4 — The human residue, made frictionless *(owner, 1-click)*
- A short checklist (`OWNER-CHECKLIST.md`) with the only things needing the owner: fix the repo description, upload the social image, and — the big one — post the pre-written Show HN when willing. Everything is drafted.

---

## Metrics & milestones
- **Weekly:** unique visitors, clones, referrers (GitHub Insights), video views, article reads.
- **Lagging:** stars, forks, plugin installs, inbound issues/quality-reports (a usage proxy).
- **Milestones:** 25 → 100 → 250 → 1,000. Re-tune the channel mix at each. If a launch stalls, don't repost the same thing — wait 48–72h and relaunch with a *new* artifact.

## Guardrails
No bought/bot stars, no sockpuppets, no vote rings, no impersonation. Only the owner's own consented accounts, one identity each. Where automation would break a platform's rules, it is routed to a 1-click owner task instead.

## Sources
TODO Group *Marketing OSS*; GitHub Blog *5 tips* + fake-star crackdown reporting; opensource.guide *Finding Users / Building Community*; rdp *how-to-popularize*; case studies (Wasp 6k/6mo, ScrapeGraphAI, AFFiNE, Lago, willmcgugan, star-history). API/ToS research: YouTube Data API v3 (OAuth refresh, ~6 uploads/day), X API free tier (post-capable, read-limited), dev.to/Hashnode publishing APIs, LinkedIn (no automated personal posting), Reddit (anti-spam, 9:1 rule), Hacker News (read-only API, voting-ring detection).
