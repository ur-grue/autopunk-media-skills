# Changelog

All notable changes to autopunk-media-skills are documented here.

---

## [1.0.0] — 2026-03-23

### Added
- Install instructions for Claude Code, Cursor, Codex CLI, Gemini CLI
- AutoResearch eval framework with binary assertions (top 20 skills)
- Related Projects section with ecosystem cross-links
- Agent compatibility statement (Agent Skills standard)
- GitHub Release v1.0.0
- Claude Plugin Marketplace format (`.claude-plugin/marketplace.json`)
- `scripts/generate-marketplace.py` for automated marketplace.json generation
- `tests/assertions/` framework for binary skill testing
- `tests/inputs/` test input library
- `tests/run-eval.sh` automated eval runner
- Marketing materials in `docs/marketing/`

### Changed
- Repo description updated for discovery
- GitHub Topics added (15 topics)
- README restructured: Install block first, Related Projects section, updated footer
- ROADMAP.md updated with current status and plans
- Skill directory table expanded to 21 categories with correct counts
- Badge counts updated to reflect actual skill statuses (199 stable, 178 beta)

---

## v0.2.0 — 2026-03-16

Full library developed to stable. All 102 skills written, G-Eval tested, and marked stable.

- 102 skills across 7 categories: tv-documentary, magazine-journalism, youtube, podcast, image-prompting, media-business, social-media
- Installed `.claude/skills/`: skill-creator, docx, pdf (from anthropics/skills)
- Added `tests/EVAL_SUMMARY.md` — library-wide quality report
- Added `.github/SECURITY.md`, issue config, improved PR template
- Updated `CLAUDE.md` to reflect full 7-category, 102-skill structure
- G-Eval scores: 4.3–4.78 across all skills, library mean ~4.43/5
- Strongest dimension: Coherence (4.72). Weakest: Actionability (4.10)

## v0.1.0

Repository initialized. Full structure and skill placeholders created.
