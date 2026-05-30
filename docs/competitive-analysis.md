# Competitive analysis — peer skill libraries and agent systems

**Date:** 2026-05-27
**Owner:** CEO (autopunk-media-skills)
**Issue:** AUT-19 — analyze competitors
**Prior art:** AUT-17 covered `jamditis/claude-skills-journalism` end-to-end. This analysis re-reads it for comparison, then adds the two new targets and the agent-expansion question.

---

## Targets

| Repo | Stars | Last update | Position | Direct competitor? |
|------|-------|-------------|----------|--------------------|
| [jamditis/claude-skills-journalism](https://github.com/jamditis/claude-skills-journalism) | 225 | 2026-05-26 | Journalism + dev/security toolkits for newsrooms | Yes, partial overlap |
| [buriedsignals/skills](https://github.com/buriedsignals/skills) | 21 | 2026-05-21 | Investigative journalism + OSINT specialist | Yes, narrow but deep |
| [affaan-m/ECC](https://github.com/affaan-m/ECC) | 195,294 | 2026-05-27 | Cross-harness agent operator system for developers | No — different audience, inspiration only |

---

## Where we stand today

- **447 stable skills** across 21 categories, plus 20 locale variants. G-Eval scored, 98.5% pass rate against binary assertions.
- Quality system: 6-dimension G-Eval with public `eval_score` per skill, hard floor at 4.0/5 on Editorial Naturalness.
- Production-stage taxonomy (development → pre-production → scripting → post-production → distribution → analytics).
- thepitchdoctor.io funnel for monetization.
- No agents, no hooks, no docs site, no commercial product layer of our own.

---

## Repo 1 — jamditis/claude-skills-journalism (revisit)

### What they have

- ~45 skills across 9 sub-plugins: `journalism-core` (13), `research-toolkit` (6), `dev-toolkit` (10), `security-toolkit` (4), `pdf-design`, `pdf-playground`, `project-templates-toolkit` (3), `superjawn` (research-first superpowers fork), `autocontext` (cross-session learning), `visual-explainer`.
- **16 editorial hooks** (ap-style-check, ai-slop-detector, source-attribution-check, verification-reminder, archive-reminder, pre-publish-checklist, deadline-tracker, etc.). All non-blocking warnings on Claude Code events.
- **Docs site** at skills.amditis.tech — per-skill HTML pages, OG images, sitemap, llms.txt.
- **CI:** skill-lint workflow validates frontmatter and README listing.
- **Skill evolution:** autocontext folds session lessons back into skill files via `/autocontext:evolve`.
- Plugin marketplace with selective install per toolkit.

### What we already learned from this (AUT-17, kept)

- Editorial discipline doctrine (banned words, sentence-case, throat-clearing ban) — adopted.
- Procedural-skill body convention (templates carried in skill body) — adopted, FOIA refactor planned.
- Reader-respect lens — adopted.

### What we explicitly rejected and still reject

- Minimalist `name + description` frontmatter — keeps our public quality signal.
- One-folder-per-skill-at-root layout — wouldn't scale past ~50 skills.
- Dev/security/programming skills (`test-first-bugs`, `vibe-coding`, `secure-auth`, `electron-dev`) — wrong audience.
- Replacing G-Eval with skill-lint — that's a frontmatter check, not a quality bar.

### New gaps this analysis surfaces

1. **Hooks layer.** They have 16; we have 0. This is a real gap for editorial QA at write-time. See *Recommendation H* below.
2. **Per-skill docs site.** They publish per-skill HTML pages with OG images. We rely on GitHub markdown. A docs site is already on our roadmap — they've validated the per-skill page model.
3. **Skill evolution.** Their autocontext lets a skill improve over use. We have G-Eval at static intervals but no in-session learning loop. *Spike already in roadmap — keep.*

---

## Repo 2 — buriedsignals/skills

### What they have

- Tiny but specialized: ~10 skills across 4 toolkits.
  - **Journalism:** Swiss FOIA / Öffentlichkeitsgesetz builder (regional depth — researches the authority and legal route from a small prompt).
  - **Spotlight:** Investigation orchestrator. Uses **agents** — `fact-checker.md` and `investigator.md` — with PLANNING and EXECUTION modes, knowledge ingestion to an Obsidian vault, Gate 1 review pattern.
  - **OSINT:** 150+ OSINT tools catalog (Bellingcat / IDI / DigitalDigging). Three skills: `/osint` (catalog), `/investigate` (techniques), `/follow-the-money` (financial investigation). Each has multi-file `references/` directories (asset-tracing, corporate-ownership, offshore-structures, geolocation-methods, etc.).
  - **Storytelling:** Scroll-driven SvelteKit 5 narrative components (`scrolly`).
- Per-skill `evals/evals.json` files.
- Plugin marketplace with `/plugin marketplace add` style install.

### What's interesting

- **They use agents already.** `spotlight/agents/investigator.md` has frontmatter declaring `maxTurns: 80`, allowed/disallowed tools, and a `skills:` array the agent can invoke. The body defines an orchestrator that operates in PLANNING or EXECUTION mode. This is exactly the pattern AUT-19 asks us to consider.
- **OSINT depth is unmatched.** Their `/osint` skill catalogs 150+ tools by category, with references on opsec, cycle integration, tools-by-category. We have `social-media-intelligence` and `source-verification` listed as `planned` — they've already shipped this category with serious depth.
- **Regional FOI specialization.** Swiss-specific FOIA wins on legal accuracy in a way a US-only or generic skill cannot. Argues for our own Continental-Europe FOI deepening — a German Informationsfreiheitsgesetz / French CADA / EU document-access variant could pair with our FOIA refactor.

### What we don't take from them

- One-toolkit-per-medium structure — our category taxonomy is deeper and serves a broader audience.
- Svelte component skill (`scrolly`) — interesting but media-side of newsroom, not our editorial focus. Leave it to them.

---

## Repo 3 — affaan-m/ECC (inspiration only)

### What it is

A 195K-star cross-harness agent operator system for software developers. **Not** a media skills library. Built by an Anthropic hackathon winner. Now a commercial product: ECC Pro ($19/seat/mo, GitHub App, 150 installs), GitHub Sponsors, npm packages (`ecc-universal`, `ecc-agentshield`), 12 language ecosystems, 10+ harnesses (Claude Code, Codex, Cursor, OpenCode, Gemini, Zed, GitHub Copilot, Kiro, CodeBuddy, Cursor).

### Surface

- **61 agents** (architect, code-reviewer, database-reviewer, build-error-resolver, java-reviewer, kotlin-reviewer, chief-of-staff, docs-researcher, explorer, …).
- **246 skills** across coding, security, research, content, video, prediction markets, MLE workflow, evaluation harness, brand voice, deep research, etc.
- **76 legacy command shims** for backward compatibility.
- **AgentShield** security scanner (1,282 tests, 102 rules) packaged as a separate npm tool.
- Hooks for every harness (Cursor: 15 hooks; Claude Code: full session lifecycle).
- Selective install via `npx ecc-install`, manifest-driven, SQLite state store, install/repair/doctor tooling.
- Public Rust control plane prototype (`ecc2/`) with daemon mode.
- Multi-language READMEs (11 languages).

### Why it doesn't compete with us

Audience is software developers, not media professionals. Most of the surface (TypeScript reviewers, Java patterns, Django, Spring Boot, MLE, NestJS, Kubernetes) is wrong for our user. Their journalism-adjacent skills (`brand-voice`, `article-writing`, `content-engine`, `deep-research`) are generic content marketing, not production-grade editorial output.

### What to learn from it

1. **Agent layer architecture.** ECC's agents pair with skills — agents do orchestration and tool use; skills are knowledge cartridges the agents load. This is the right separation.
2. **Cross-harness packaging discipline.** They ship the same surface to Claude Code, Codex, Cursor, OpenCode, Gemini, Zed. We claim Agent Skills standard compatibility — we should explicitly test and document each harness's install path.
3. **Selective install.** `--profile minimal | core | full` plus `--with capability:X`. We could ship `--profile documentary | journalist | youtuber | podcaster` to reduce context bloat.
4. **State and audit.** SQLite state store, `ecc status --markdown`, manifest-driven install. Mostly developer-oriented but a lightweight "what skills do I have installed and which ones have I used" report is a low-cost win.
5. **Commercial layer.** OSS stays MIT; the GitHub App and hosted private-repo audits are the paid tier. We have a referral funnel to thepitchdoctor.io but no direct product layer of our own. *Out of scope for this analysis — flag for separate strategy.*

### What we will NOT borrow

- Their massive scope (dev + security + ML + prediction markets) — exactly the dilution our editorial focus is designed to resist.
- Selling skills behind a paid tier — the OSS library stays free and complete. Monetization belongs in adjacent products (consulting, hosted service), not gated skills.
- Their installer complexity — `install.sh --profile`, `npx ecc-install`, `/plugin install`, manual rules copies — too many install paths is a tax on non-technical users.

---

## Strategic recommendations

Ordered by ROI. Each maps to a concrete next action.

### A. Add a deliberate agents layer — high priority

**Why:** AUT-19 explicitly asks. Both peer journalism libraries use agents (buriedsignals: investigator + fact-checker; ECC: 61 agents). Agents are the natural next layer above skills — they orchestrate multiple skills into multi-step deliverables. Our 354-skill library is exactly the substrate an agent layer needs.

**What:** Start with 6 specialist agents that wrap our existing skills into orchestrated workflows. Each agent operates the buriedsignals PLANNING + EXECUTION pattern; each is restricted to skills relevant to its specialty.

| Proposed agent | Composes which skills | Deliverable |
|----------------|----------------------|-------------|
| `documentary-development-agent` | logline-creator → pitch-treatment-writer → series-bible-generator → broadcaster-pitch-writer → festival-synopsis-writer | A complete development package from a one-line idea |
| `investigative-reporter-agent` | story-angle-finder → source-research-brief → foia-request-writer → document-analysis-summary → claim-verification-checklist → libel-check-brief → lede-writer | An investigation from spark to publishable draft |
| `magazine-editor-agent` | structure-checker → copy-editor-assistant → fact-check-prompt → house-style-enforcer → headline-generator → pull-quote-selector → ai-writing-detox | End-to-end editing pass on a submitted draft |
| `youtube-channel-operator-agent` | niche-video-idea-generator → seo-title-optimizer → hook-generator → full-script-writer → b-roll-shot-list → thumbnail-concept-brief → description-seo-writer → chapter-timestamps | Full video pipeline from topic to publish-ready package |
| `podcast-producer-agent` | episode-concept-generator → guest-research-brief → interview-question-builder → ad-read-script → show-notes-generator → episode-summary-writer | Episode end-to-end |
| `pr-crisis-response-agent` | holding-statement-writer → crisis-statement-writer → faq-document-writer → journalist-pitch-email → spokesperson-briefing-note | Crisis response package |

**Format:** Each agent ships as `agents/<agent-name>.md` with frontmatter declaring `maxTurns`, `allowedTools`, allowed `skills:` array, and a body defining PLANNING and EXECUTION modes. Mirrors buriedsignals's working pattern.

**Quality bar:** Each agent gets a workflow-level G-Eval (does the assembled output meet the deliverable bar?), not just a per-skill check. Workflow tests already exist for several of these (see `docs/workflows/`).

**Effort estimate:** 1 sprint per agent including tests; pilot with `documentary-development-agent` and `investigative-reporter-agent` first because we already have workflow docs for both.

### B. Open an OSINT / verification category at real depth — medium-high priority

**Why:** buriedsignals has shipped what we listed as `planned`. We are publicly behind on the investigative niche.

**What:**
- Ship `source-verification` and `social-media-intelligence` (currently `planned`).
- Add an OSINT tool catalog skill modeled on buriedsignals's structure (categories: geolocation, account analysis, satellite imagery, facial recognition, archiving, transport tracking, corporate research, financial investigation).
- Add `web-archiving`, `page-monitoring`, `content-access` from the preservation subcategory (also `planned`).
- Deepen FOIA: keep the planned 50-state US table refactor, AND add `eu-document-access-builder` covering Swiss BGÖG, German IFG, French CADA, EU Regulation 1049/2001.

### C. Build a hooks layer for editorial QA — medium priority

**Why:** jamditis has 16 editorial hooks. We have an ai-writing-detox skill and a published banned-list — but a writer has to remember to invoke it. Hooks turn that into write-time enforcement.

**What:** Start with 5 non-blocking warning hooks:
1. `ai-slop-detector` — flags banned words / throat-clearing intros / "not just X — Y" constructions on PostToolUse (file write/edit).
2. `attribution-check` — flags quoted material without source attribution.
3. `archive-on-cite-reminder` — when an article cites a URL, remind to archive it.
4. `passive-voice-warning` — flag passive voice frequency above threshold.
5. `pre-publish-checklist` — Stop hook that surfaces a 6-item editorial checklist before finishing a writing task.

These compose with existing skills (ai-writing-detox, passive-voice-checker, web-archiving once shipped). They are the *enforcement* layer, not new content.

### D. Multi-harness install paths explicit — low cost, low effort

**Why:** ECC ships explicitly across 7+ harnesses. We claim Agent Skills standard compatibility. Make that real with tested install instructions per harness.

**What:** A `docs/install/` directory with one page per harness — Claude Code, Cursor, Codex CLI, Gemini CLI, OpenCode, Zed. Each documents the install path, the skills directory location, any known issues. Update the README's compatibility list to link these pages.

### E. Build the docs site — already on roadmap

**Confirm:** Use the jamditis per-skill page model. Skill listing as index → per-skill page with frontmatter rendered as a quality badge + the full skill body + linked related skills + example output. GitHub Pages, no build framework drama. Pair with the docs-site item already in *Planned*.

### F. Selective install profiles — low priority

**Why:** A documentary producer shouldn't load 354 skills into context. ECC's `--profile minimal | core | full` is the right shape.

**What:** Ship plugin profiles aligned to our existing audience categories — `documentary`, `journalism`, `youtube`, `podcast`, `newsletter`, `pr`. Each loads only that category's skills + the cross-cutting editing/voice skills. Roadmap pre-req: the docs site, because users need to discover what's in each profile.

### G. Anti-recommendations — keep saying no

These are the things peers do that we should continue NOT to do.

- **No dev / security / programming skills.** ECC and jamditis both ship them. Wrong audience for us. Keep the anti-recommendation in CLAUDE.md.
- **No skill paywalls.** Library stays MIT-complete. Monetization is in adjacent products (the thepitchdoctor.io exposé generator), not gated skill access.
- **No installer proliferation.** ECC ships `install.sh`, `install.ps1`, `npx ecc-install`, `/plugin install`, manual rules copy — and warns users not to stack them. One install path per harness is the rule.
- **No replacement of G-Eval with frontmatter linting.** A skill-lint CI workflow is fine (and on our roadmap as an auto-validator) — but it does not substitute for G-Eval. They serve different layers.
- **No Svelte-component skills like buriedsignals's `scrolly`.** Production-tool skills belong in a different library; ours is editorial.

---

## Roadmap updates required

The following items should land in `ROADMAP.md` after this analysis:

- Add **Agents** as a new top-level category alongside Skills, status `planned` with the 6 agents listed above.
- Move `source-verification`, `social-media-intelligence`, `web-archiving`, `page-monitoring`, `content-access` from `planned` to `in progress`; assign owner.
- Add `eu-document-access-builder` and `osint-tool-catalog` as new `planned` skills under `magazine-journalism/investigation`.
- Add **Hooks** as a new top-level category, status `planned` with the 5 hooks listed above.
- Add `docs/install/` per-harness pages to the in-progress docs site work.
- Add audience-aligned plugin profiles (`documentary`, `journalism`, `youtube`, `podcast`, `newsletter`, `pr`) to the planned profile system.

---

## Summary

The two journalism peers reinforce that we are the deepest and most quality-controlled media skill library in the ecosystem — neither comes close on breadth, taxonomy, or eval rigor. They beat us in three places: editorial hooks (jamditis), OSINT depth (buriedsignals), and the agent layer (both, in different ways).

ECC is in a different market entirely. The right use of ECC is as the architectural reference for how agents and skills compose, how selective install works, and how cross-harness packaging is structured. We do not chase its breadth, its commercial layer, or its developer audience.

The single highest-leverage move from this analysis is **Recommendation A — add an agents layer** built on top of the 354 stable skills we already own. That is the natural compounding move: every new skill we ship strengthens every agent. No peer is positioned to do this in the media vertical at our scale.
