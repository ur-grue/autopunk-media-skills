# Manual Actions Checklist

Actions that require human intervention — cannot be automated by CI/CD.

## GitHub Profile
- [ ] Pin `autopunk-media-skills` on your GitHub profile (Settings > Pinned repositories)
- [ ] Update ur-grue/ur-grue README.md with repo link (see `docs/marketing/profile-readme.md`)

## Social Preview
- [ ] Set `.github/banner.svg` as social preview: repo Settings > Social preview > Upload

## Community Engagement
- [ ] Star competing repos from ur-grue account:
  - [ ] `jamditis/claude-skills-journalism`
  - [ ] `fdaudens/ai-journalism-skills`
  - [ ] `anthropics/skills`
  - [ ] `Orchestra-Research/AI-Research-SKILLs`
- [ ] Open friendly cross-link issue on `jamditis/claude-skills-journalism`:
  - Title: "Cross-link: autopunk-media-skills (354 broadcast/TV/podcast skills)"
  - Body: "Hey! Great collection for investigative journalism. We've built a complementary library focused on broadcast, TV documentary, podcast, and radio production (354 skills). Would you be open to a mutual cross-link in our READMEs? We already link to your repo in our Related Projects section. Happy to discuss."
- [ ] Submit awesome-list PRs (see `docs/marketing/awesome-list-prs.md`)
- [ ] Submit to directories (see `docs/marketing/directory-submissions.md`)

## Content Marketing
- [ ] Write dev.to post: "354 Free Claude Skills for Media Professionals"
- [ ] Post to r/ClaudeAI with 2-3 example outputs
- [ ] LinkedIn post (EN) from maintainer profile

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
