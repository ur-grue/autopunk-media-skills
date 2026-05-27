# Manual Actions Checklist

Actions that require human intervention — cannot be automated by CI/CD.

## GitHub Profile
- [X] Pin `autopunk-media-skills` on your GitHub profile (Settings > Pinned repositories)
- [X] Update ur-grue/ur-grue README.md with repo link (already present in profile README)

## Social Preview
- [X] Set `.github/banner.svg` as social preview: repo Settings > Social preview > Upload

## Community Engagement
- [ ] Star competing repos from ur-grue account:
  - [X] `jamditis/claude-skills-journalism`
  - [X] `fdaudens/ai-journalism-skills` — repo not found (404), skipped
  - [X] `anthropics/skills`
  - [X] `Orchestra-Research/AI-Research-SKILLs`
- [X] Open friendly cross-link issue on `jamditis/claude-skills-journalism`:
  - https://github.com/jamditis/claude-skills-journalism/issues/90
- [X] Submit awesome-list PRs (see `docs/marketing/awesome-list-prs.md`):
  - https://github.com/travisvn/awesome-claude-skills/pull/776
  - https://github.com/ComposioHQ/awesome-claude-skills/pull/931
  - https://github.com/BehiSecc/awesome-claude-skills/pull/323
- [ ] Submit to directories (see `docs/marketing/directory-submissions.md`)

## Content Marketing
- [X] Write dev.to post: "354 Free Claude Skills for Media Professionals" — draft at `docs/marketing/drafts/devto-post.md`
- [X] Write r/ClaudeAI post with 2-3 example outputs — draft at `docs/marketing/drafts/reddit-r-claudeai.md`
- [X] Write LinkedIn post (EN) — draft at `docs/marketing/drafts/linkedin-post.md`
- [ ] **HUMAN ACTION:** Post dev.to article from draft
- [ ] **HUMAN ACTION:** Post to r/ClaudeAI from draft
- [ ] **HUMAN ACTION:** Post LinkedIn update from draft

## Eval Pipeline
- [ ] Run eval pipeline with API key:
  ```bash
  export ANTHROPIC_API_KEY="sk-ant-..."
  ./tests/run-eval.sh --skill hook-generator
  # Then expand to all top 20:
  ./tests/run-eval.sh --top20
  ```
- [ ] Review results in `tests/runs/` and update skill scores if needed

## Demo Video (optional, high impact)
- [ ] Record 2-minute screen recording showing:
  1. Clone the repo (10 sec)
  2. Open a skill file, show the structure (15 sec)
  3. Paste into Claude, show the output (45 sec)
  4. Show a second skill from a different category (30 sec)
  5. End with the README and skill count (10 sec)
- [ ] Upload to YouTube, embed in README
- [ ] Share on LinkedIn and Reddit
