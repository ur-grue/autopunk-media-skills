# Owner Checklist — the few things only you can do

Everything else runs automatically. These are the small, high-impact actions that need a real person (you). Total time for the first three: about 10 minutes.

---

## 1. Fix the repo "About" box (~2 min)
GitHub repo → top-right **About** → ⚙️ gear:
- **Description:** change to `394 free, quality-tested Claude skills for TV producers, journalists, podcasters, YouTubers & media professionals.`
- **Website:** your GitHub Pages docs URL (or thepitchdoctor.io).
- **Topics:** confirm/keep the existing ones (claude-skills, claude-code, journalism, podcast, youtube, etc.).

*(Why you and not the agent: repo settings aren't reachable through the tools the agent has.)*

## 2. Upload the social-preview image (~2 min)
GitHub repo → **Settings → General → Social preview → Edit → Upload an image.**
- Use the file the agent generated: `.github/og-image.png` (export of `.github/og-image.svg`).
- This is the picture that shows when the repo is shared on X, LinkedIn, Slack, etc. Without it, links look bare.

## 3. The big one: post "Show HN" when you're ready (~2 min to post, then be reachable ~2h)

**What is Hacker News?** It's the main news board for the tech and startup world (news.ycombinator.com). A well-received post there ("Show HN: …" is the format for showing something you made) can send **hundreds of visitors and stars in a single day**. It is, by far, the single biggest lever for the 1,000-star goal.

**Why only you can do it:** Hacker News bans automated/coordinated posting and detects it aggressively. It must be a real person posting from a real account. If a bot did it, the post gets killed and the repo looks bad.

**How to make it painless:**
- The full post (title + first comment + answers to the likely questions) is pre-written in `drafts/hn-show-hn.md`. You literally paste it.
- Best time: Tuesday or Wednesday, 8–10 a.m. US Eastern.
- After posting, check back every ~15 min for 2 hours and reply to comments. If you paste the comments to the agent, it will draft your replies in real time.
- You'll need a Hacker News account that's at least a week old. If you don't have one, make one now and leave one comment somewhere so it's not brand-new on launch day.

*If you'd rather never do this:* that's fine — we keep all the automated engines running, but the realistic ceiling drops to low hundreds of stars rather than 1,000. No pressure; the option stays open.

---

## 4. Hand over API keys for the automated channels (one-time)

You chose to delegate **YouTube, dev.to/Hashnode, X, and a newsletter/ESP**. So the agent can post on your behalf, it needs credentials — handled securely.

**How to provide them safely:**
- **Do NOT paste secrets into chat.** Add them as **environment secrets** in your Claude Code environment settings (they're encrypted and never committed to git). See https://code.claude.com/docs/en/claude-code-on-the-web for where environment variables/secrets live.
- Use these exact names so the automation finds them:

| Channel | Secret name(s) | How to get it |
|---|---|---|
| dev.to | `DEVTO_API_KEY` | dev.to → Settings → Extensions → "Generate API Key" |
| Hashnode | `HASHNODE_PAT` | Hashnode → Settings → Developer → Personal Access Token |
| X / Twitter | `X_API_KEY`, `X_API_SECRET`, `X_ACCESS_TOKEN`, `X_ACCESS_SECRET` | developer.x.com → create a Free app → Keys & tokens |
| YouTube | `YT_CLIENT_ID`, `YT_CLIENT_SECRET`, `YT_REFRESH_TOKEN` | Google Cloud Console → enable YouTube Data API v3 → OAuth client → one-time consent (agent will give you the exact link) |
| Newsletter/ESP | `ESP_API_KEY` (+ provider name) | your newsletter tool's API settings |

**Notes / limits the agent will work within:**
- **YouTube** needs OAuth (a one-time "allow" click from you), not just a key. Set the app to "Production" so the token doesn't expire weekly. ~6 uploads/day max — plenty.
- **X free tier** can post (~17/day) but barely read, so mention-monitoring uses F5Bot/Google Alerts instead.
- **LinkedIn personal posting can't be automated** (their API forbids it), so that stays manual if you want it.

Start with **dev.to/Hashnode** — it's just one token each and unlocks the weekly article engine immediately.

---

## What happens automatically once keys are in
- Weekly evergreen article → dev.to + Hashnode
- Flagship how-to video + per-skill Shorts → your YouTube
- "Skill of the day" → your X
- Directory submissions, awesome-list nudges, mention triage, issue responses, metrics — all on a recurring schedule.
