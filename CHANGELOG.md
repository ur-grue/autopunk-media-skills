# Changelog

All notable changes to autopunk-media-skills are documented here.

---

## [3.0.0] — 2026-07-27

### Added
- 2 new agents: data-journalism-investigator (7-skill pipeline), newsletter-launch (5-skill pipeline)
- Phase 3 section in ROADMAP with full tracking

### Changed
- README overhauled: fixed locale count (20 → 30), eval dimensions (6 → 7), removed 2 dead URLs, consolidated 3 getting-started sections into one, reordered sections for better first-impression flow (388 → 230 lines)
- 3 skills deepened to foia-request-writer depth: source-verification (590 lines), fact-check-prompt (691 lines), interview-transcript-editor (495 lines)
- Banned AI words removed from 4 skills (series-bible-generator, archival-footage-brief, statistics-explainer, referral-copy-writer)
- Agent count updated: 6 → 8 (6 stable, 2 beta)
- Package version bumped to 3.0.0

### Fixed
- 2 malformed JSON test input files (historical-precedent-finder, scientific-paper-summarizer)
- Dead GitHub repo homepage URL (autopunk.io → removed)
- 5 good-first-issues resolved (#29–#33)

---

## [2.0.0] — 2026-07-24

### Added
- npm package: `npx autopunk-media-skills install --all`
- Localized skill variants: 30 total (DE/ES/FR, 10 each)
- 50 expanded test input suites (7-10 diverse cases each)
- SKILL.md for SkillHub auto-indexing
- Multi-harness install pages (Claude Code, Cursor, Codex CLI, Gemini CLI, OpenCode, Zed)
- 5 good-first-issues for contributors (#29–#33)
- GitHub Actions: auto-validate skills on PR, auto-sync marketplace.json

### Changed
- foia-request-writer deepened: 50-state table, appeal template, redaction analysis (v2.0)
- YouTube and podcast agents updated with Scoop review notes

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
- GitHub Topics added (20 topics)
- README restructured: Install block, Related Projects, updated footer
- ROADMAP.md updated with current status and milestones

---

## v0.4.0 — 2026-03-20

Gap analysis against 196 real-world journalist tasks. 74 new skills developed to stable.

- Added 3 new categories: research (18 skills), translation (7 skills), production-support (7 skills)
- Added 42 new skills to existing categories: magazine-journalism (16), tv-documentary (6), radio-audio (1), pr-communications (3), media-business (6), social-media (4), newsletter (3), data-journalism (2)
- All 74 new skills written, G-Eval tested, and marked stable
- Synchronized all documentation: ROADMAP, README, CHANGELOG, CLAUDE.md, EVAL_SUMMARY
- Total: 229 skills across 15 categories, all stable, G-Eval mean ~4.43/5

## v0.3.0 — 2026-03-17

Five new categories developed to stable. Spanish and French localizations added.

- 5 new categories: radio-audio (11 skills), newsletter (10 skills), pr-communications (10 skills), screenwriting (9 skills), data-journalism (13 skills)
- 53 new skills written, G-Eval tested, and marked stable
- Spanish localizations: 10 skills across tv-documentary and magazine-journalism
- French localizations: 10 skills across tv-documentary and magazine-journalism
- Total: 155 stable skills across 12 categories, plus 20 localized variants

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
