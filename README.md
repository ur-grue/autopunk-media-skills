![autopunk-media-skills](.github/banner.svg?v=2)

[![Skills](https://img.shields.io/badge/skills-394-brightgreen)](skills/) [![Agents](https://img.shields.io/badge/agents-8-brightgreen)](agents/) [![Quality](https://img.shields.io/badge/mean_eval-4.38%2F5-brightgreen)](tests/EVAL_SUMMARY.md) [![Eval](https://img.shields.io/badge/eval-98.5%25_pass_rate-brightgreen)](tests/EVAL_RESULTS.md) [![License](https://img.shields.io/badge/license-MIT-blue)](LICENSE) [![GitHub stars](https://img.shields.io/github/stars/ur-grue/autopunk-media-skills?style=social)](https://github.com/ur-grue/autopunk-media-skills/stargazers)

**394 free AI skills and 8 multi-step agents for media professionals — for Claude, ChatGPT, or any assistant.** TV producers, journalists, podcasters, YouTubers, radio producers, newsletter writers, PR teams, screenwriters — every skill quality-tested. No coding required.

> ⭐ **If this saves you time, [star the repo](https://github.com/ur-grue/autopunk-media-skills/stargazers)** — it helps other media professionals find it.

**Jump to your role:** [Documentary Producer](docs/for/documentary-producer.md) · [Journalist](docs/for/magazine-journalist.md) · [YouTube Creator](docs/for/youtuber.md) · [Podcaster](docs/for/podcaster.md) · [Newsletter Writer](docs/for/newsletter-writer.md)

---

## What is this?

A free collection of **394 AI skills** and **8 multi-step agents** — ready-to-use prompts that turn a capable assistant into a specialist for one specific media production task at a time.

Each skill encodes real production knowledge: the format conventions, the quality bar, the specific inputs a professional would know to provide. The output reads like it came from someone who has worked in the medium — not from a generic chatbot.

**394 skills across 21 categories**, plus 30 localized variants (DE/ES/FR) and **8 agents** (6 stable, 2 beta) that chain skills into complete workflows. Every skill is quality-scored on a seven-dimension G-Eval rubric — library mean **4.38/5**, with 4.0 the minimum to ship. MIT licensed.

Each skill is a plain markdown file written in model-neutral language, so it works as a copy-paste prompt in **[Claude](https://claude.ai), [ChatGPT](https://chat.openai.com), or any AI assistant** — and the files drop straight into coding agents like Claude Code, Cursor, Codex CLI, and Gemini CLI. → **[Using the skills with OpenAI](docs/using-with-openai.md)**

---

## Who is this for?

TV documentary producers · magazine journalists · YouTube creators · podcast producers · screenwriters · data journalists · radio producers · newsletter writers · PR professionals · researchers · social media managers · visual content creators · editors and production teams.

| I work in… | Start here |
|---|---|
| 📺 TV Documentary | [Documentary Producer guide](docs/for/documentary-producer.md) |
| 📰 Journalism | [Magazine Journalist guide](docs/for/magazine-journalist.md) |
| 📹 YouTube | [YouTube Creator guide](docs/for/youtuber.md) |
| 🎙️ Podcasting | [Podcaster guide](docs/for/podcaster.md) |
| ✉️ Newsletters | [Newsletter Writer guide](docs/for/newsletter-writer.md) |

---

## What does it produce?

Three real outputs, unedited, from stable skills in the library:

**YouTube hook** — `hook-generator` — Input: video about why immersion fails for adult language learners

> "94% of adult language learners plateau within six months. Not because they quit. Because they're doing the one thing every expert recommends — and it is actively working against how the adult brain acquires language. The science on this is twenty years old. Nobody taught it to you."

**Documentary logline** — `logline-creator` — Input: feature doc about forensic archivists recovering destroyed government records

> "In a basement lab outside Washington, three archivists race to recover government records that were officially destroyed — before the statute of limitations runs out on the people who ordered the erasure."

**Press release opening** — `press-kit-generator` — Input: 6-part nature doc series, three continents, PBS-adjacent tone

> "Seven years in production. Forty-two filming locations across three continents. One question that ornithologists have debated for a century: where do they actually go?"

That is the quality level across the library. Production-ready. Usable without editing.

---

## Get started

**You don't write the prompt — the skill *is* the prompt, already written.** You paste it and add your topic. Works in [Claude](https://claude.ai), [ChatGPT](https://chat.openai.com), or any AI assistant — free accounts are fine.

**Copy and paste** (no technical setup needed):

1. Browse the [`skills/`](skills/) folder — click any folder to open it, then click the skill file
2. Read the **"What You Need To Provide"** section so you know what to include
3. Copy the skill text and paste it into your assistant with your own material

That's the whole process. Here's an example input for `hook-generator`:

```
Topic: why most adults fail to learn a language — and why "immersion" advice is wrong.
Format: YouTube long-form. Audience: frustrated adult learners, 28–45. Tone: direct, science-backed.
```

**Other install options:**

| Method | Command | Best for |
|--------|---------|----------|
| Claude Code plugin | `/plugin marketplace add ur-grue/autopunk-media-skills` | Claude Code users |
| npm | `npx autopunk-media-skills install --all` | Any project |
| Git clone | `git clone https://github.com/ur-grue/autopunk-media-skills.git` | Cursor, Codex CLI, Gemini CLI |
| OpenAI | Copy-paste or build a Custom GPT — [full guide](docs/using-with-openai.md) | ChatGPT users |

Add a skill path to your project's `CLAUDE.md` or agent config so it loads automatically whenever you work in that project.

---

## What's in the library

| Category | Skills | What it covers |
|----------|--------|----------------|
| Research | 73 skills | people · background · fact-checking · academic · data & statistics · competitive · logistics |
| Writing | 57 skills | articles · broadcast · digital & social · institutional |
| Magazine Journalism | 38 skills | ideation · writing · editing · investigation · fact-checking · legal · distribution |
| TV Documentary | 27 skills | development · pre-production · scripting · post-production · localization · business |
| Media Business | 18 skills | pitching · distribution · funding · legal |
| YouTube | 18 skills | pre-production · scripting · post-production · channel strategy · business · analytics |
| Data Journalism | 18 skills | analysis · investigation · visualization · publishing |
| Production Support | 16 skills | formatting · reference |
| Editing | 14 skills | line, structure & voice editing |
| PR / Communications | 13 skills | press office · crisis comms · media relations · content |
| Newsletter | 13 skills | writing · strategy · growth · monetization |
| Podcast | 12 skills | pre-production · scripting · post-production · business |
| Radio / Audio | 12 skills | scripting · news packages · production · strategy |
| Social Media | 11 skills | content · strategy |
| Pre-Production | 10 skills | planning, scheduling & shoot briefs |
| Image Prompting | 10 skills | Midjourney · Flux · art direction · workflows |
| Screenwriting | 9 skills | development · scripting · revision · production |
| Translation | 7 skills | text · institutional · digital · reference · quality |
| Archive & Legal | 7 skills | archive research · rights & clearances |
| Audience & Distribution | 7 skills | audience growth · publishing |
| Translation & Localization | 4 skills | localization · cultural adaptation |
| **Total** | **394 skills** | + 30 localized DE/ES/FR variants |

Browse the full library in the `skills/` folder. Skills are organized by media format, then by production stage.

---

## Agents

Agents compose multiple skills into multi-step workflows that produce complete deliverables. Where a skill handles one task, an agent orchestrates a full pipeline — from brief to finished package.

| Agent | What it produces | Skills composed | Status |
|-------|-----------------|----------------|--------|
| [Documentary Development](agents/documentary-development-agent.md) | Complete development package from a one-line idea | logline-creator → pitch-treatment-writer → series-bible-generator → broadcaster-pitch-writer → festival-synopsis-writer | ✅ stable (4.81/5) |
| [Investigative Reporter](agents/investigative-reporter-agent.md) | Investigation from spark to publishable draft | story-angle-finder → source-research-brief → foia-request-writer → document-analysis-summary → claim-verification-checklist → libel-check-brief → lede-writer | ✅ stable (4.96/5) |
| [Magazine Editor](agents/magazine-editor-agent.md) | End-to-end editing pass on a submitted draft | structure-checker → copy-editor-assistant → fact-check-prompt → house-style-enforcer → headline-generator → pull-quote-selector → ai-writing-detox | ✅ stable (4.96/5) |
| [YouTube Channel Operator](agents/youtube-channel-operator-agent.md) | Full video pipeline from topic to publish-ready package | niche-video-idea-generator → seo-title-optimizer → hook-generator → full-script-writer → b-roll-shot-list → thumbnail-concept-brief → description-seo-writer → chapter-timestamps | ✅ stable (4.48/5) |
| [Podcast Producer](agents/podcast-producer-agent.md) | Episode end-to-end | episode-concept-generator → guest-research-brief → interview-question-builder → ad-read-script → show-notes-generator → episode-summary-writer | ✅ stable (4.78/5) |
| [PR Crisis Response](agents/pr-crisis-response-agent.md) | Crisis response package | holding-statement-writer → crisis-statement-writer → faq-document-writer → journalist-pitch-email → spokesperson-briefing-note | ✅ stable (4.56/5) |
| [Data Journalism Investigator](agents/data-journalism-investigator-agent.md) | Complete data investigation package from dataset to publishable findings | data-story-finder → scraper-brief → data-cleaning-brief → basic-statistics-calculator → statistics-explainer → chart-description-writer → methodology-explainer | 🔵 beta |
| [Newsletter Launch](agents/newsletter-launch-agent.md) | Full launch package from concept to signup page | niche-positioning-brief → edition-writer → subject-line-writer → welcome-email-writer → landing-page-copy-writer | 🔵 beta |

Each agent operates in two modes: **PLANNING** (reads your brief, presents a step-by-step plan for approval) and **EXECUTION** (runs the approved plan, assembles the outputs into a single deliverable). You can interrupt between steps to adjust direction.

---

## Workflows

Most real projects use multiple skills in sequence. These workflows walk you through an entire project from start to finish.

| Workflow | Skills | Who it's for |
|----------|--------|-------------|
| [YouTube Video Launch](docs/workflows/youtube-video-launch.md) | 8 skills | YouTube creators |
| [Investigative Journalism Project](docs/workflows/investigative-journalism-project.md) | 10 skills | Investigative reporters |
| [Podcast Season Launch](docs/workflows/podcast-season-launch.md) | 9 skills | Podcast producers |
| [Documentary Pitch to Greenlight](docs/workflows/documentary-pitch-to-greenlight.md) | 8 skills | Documentary filmmakers |
| [Newsletter From Scratch](docs/workflows/newsletter-from-scratch.md) | 8 skills | Newsletter writers |
| [PR Crisis Response](docs/workflows/pr-crisis-response.md) | 6 skills | PR professionals |

---

## Hooks

Hooks are write-time editorial guardrails. They run automatically while you work and surface non-blocking warnings when your text has common quality gaps — AI-flavoured language, missing attribution, unarchived URLs, or excessive passive voice.

Hooks advise. They never block your work or revert your edits.

| Hook | Fires on | What it catches |
|------|----------|-----------------|
| [ai-slop-detector](hooks/ai-slop-detector.md) | Every edit | Banned words, throat-clearing intros, "not just X — Y" constructions |
| [attribution-check](hooks/attribution-check.md) | Every edit | Quotes, statistics, or claims without a named source |
| [archive-on-cite-reminder](hooks/archive-on-cite-reminder.md) | Every edit | URLs added without an archive confirmation |
| [passive-voice-warning](hooks/passive-voice-warning.md) | Every edit | Passive voice frequency above 25% (configurable) |
| [pre-publish-checklist](hooks/pre-publish-checklist.md) | Session end | 6-item editorial checklist before you push |

---

## Quality

Every skill carries a quality score in its metadata. The library mean is **4.38/5**, and 4.0 is the minimum to ship.

| Badge | Status | What it means |
|-------|--------|---------------|
| 🔲 `planned` | Coming soon | On the roadmap but not written yet |
| 🟡 `draft` | Written, not tested | Do not use in production |
| 🔵 `beta` | Tested at least once | Usable — may have rough edges |
| ✅ `stable` | Scored ≥ 4.0/5 on quality eval | Safe to use without supervision |

Only skills that pass a seven-dimension quality evaluation earn `stable` status. The evaluation tests coherence, consistency, fluency, relevance, professionalism, actionability, and editorial naturalness — scored against a rubric aligned to real media industry standards. See [`tests/EVAL_FRAMEWORK.md`](tests/EVAL_FRAMEWORK.md) for the full process.

Our assertion suite ran **226 skills** against binary checks using diverse inputs (standard, minimal, European context): **2,354 / 2,390 checks passed (98.5%).** All 36 misses occurred on deliberately minimal inputs where skills correctly refused to fabricate content — the desired professional behavior. No skill failed on a well-specified input.

Full results: [`tests/EVAL_RESULTS.md`](tests/EVAL_RESULTS.md) · Methodology: [`tests/README.md`](tests/README.md)

---

## Guides

| Guide | What it does |
|-------|-------------|
| [**Getting Started**](docs/getting-started.md) | Pick your role, get 3 starter skills, start producing |
| [**Writing Better Inputs**](docs/writing-better-inputs.md) | How to brief the assistant so output is usable on the first try |
| [**Skill Index**](docs/skill-index.md) | Find any skill by what you need to do — not by category |
| [**Troubleshooting**](docs/troubleshooting.md) | Output not right? Common fixes for common problems |
| [**Roadmap**](ROADMAP.md) | What's done, in progress, and planned next |

---

## Contributing

Got an idea for a skill? Found one that gave bad output? Want to improve an existing skill?

See [`CONTRIBUTING.md`](CONTRIBUTING.md) — there's a plain-English section at the top written for non-developers.

Short version:
1. Open a GitHub Issue describing the skill you want
2. The concept is reviewed and approved
3. The skill is written using `SKILL_TEMPLATE.md`
4. It goes through quality testing before it's marked `stable`

---

## Related projects

This repo exists within a growing ecosystem of agent skills for media, journalism, writing, and marketing. We maintain a curated list of 25+ related projects — peers, infrastructure, and inspiration.

→ **[Full list with annotations](docs/related-projects.md)**

---

## License

MIT — free to use, fork, and adapt. See [`LICENSE`](LICENSE).

---

Maintained by [Autopunk](https://github.com/ur-grue) — AI workflows for media producers.

Want to contribute? See [CONTRIBUTING.md](CONTRIBUTING.md). Found a bug? [Open an issue](https://github.com/ur-grue/autopunk-media-skills/issues).
