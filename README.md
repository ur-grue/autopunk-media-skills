![autopunk-media-skills](.github/banner.svg?v=2)

[![Skills](https://img.shields.io/badge/skills-435-brightgreen)](skills/) [![Quality](https://img.shields.io/badge/mean_eval-4.37%2F5-brightgreen)](tests/EVAL_SUMMARY.md) [![Eval](https://img.shields.io/badge/eval-98.5%25_pass_rate-brightgreen)](tests/EVAL_RESULTS.md) [![License](https://img.shields.io/badge/license-MIT-blue)](LICENSE) [![GitHub stars](https://img.shields.io/github/stars/ur-grue/autopunk-media-skills?style=social)](https://github.com/ur-grue/autopunk-media-skills/stargazers)

**435 free Claude skills for media professionals.** TV producers, journalists, podcasters, YouTubers, radio producers, newsletter writers, PR teams, screenwriters — every skill quality-tested. No coding required.

> ⭐ **If this saves you time, [star the repo](https://github.com/ur-grue/autopunk-media-skills/stargazers)** — it helps other media professionals find it.

**Jump to your role:** [Documentary Producer](docs/for/documentary-producer.md) · [Journalist](docs/for/magazine-journalist.md) · [YouTube Creator](docs/for/youtuber.md) · [Podcaster](docs/for/podcaster.md) · [Newsletter Writer](docs/for/newsletter-writer.md)

---

## What Does It Produce?

Three real outputs, unedited, from stable skills in the library:

**YouTube hook** — `hook-generator` — Input: video about why immersion fails for adult language learners

> "94% of adult language learners plateau within six months. Not because they quit. Because they're doing the one thing every expert recommends — and it is actively working against how the adult brain acquires language. The science on this is twenty years old. Nobody taught it to you."

**Documentary logline** — `logline-creator` — Input: feature doc about forensic archivists recovering destroyed government records

> "In a basement lab outside Washington, three archivists race to recover government records that were officially destroyed — before the statute of limitations runs out on the people who ordered the erasure."

**Press release opening** — `press-kit-generator` — Input: 6-part nature doc series, three continents, PBS-adjacent tone

> "Seven years in production. Forty-two filming locations across three continents. One question that ornithologists have debated for a century: where do they actually go?"

That is the quality level across the library. Production-ready. Usable without editing.

---

## Start In 60 Seconds

**No technical setup. No account. No install.**

1. Open [claude.ai](https://claude.ai) (free account — takes 30 seconds)
2. Browse [`skills/`](skills/) on this page and click the skill you want
3. Read the **"What You Need To Provide"** section
4. Copy the skill text and paste it into Claude with your own material

That's it. You're using a production-grade skill.

**Pick your role** for a curated starting point:

| I work in… | Start here |
|---|---|
| 📺 TV Documentary | [Documentary Producer guide](docs/for/documentary-producer.md) |
| 📰 Journalism | [Magazine Journalist guide](docs/for/magazine-journalist.md) |
| 📹 YouTube | [YouTube Creator guide](docs/for/youtuber.md) |
| 🎙️ Podcasting | [Podcaster guide](docs/for/podcaster.md) |
| ✉️ Newsletters | [Newsletter Writer guide](docs/for/newsletter-writer.md) |

---

## What Is This?

This is a free collection of **435 Claude skills** — ready-to-use prompts and instructions that turn Claude into a specialist for one specific media production task at a time.

Each skill encodes real production knowledge: the format conventions, the quality bar, the specific inputs a professional would know to provide. The output reads like it came from someone who has worked in the medium — not from a generic chatbot.

**435 skills across 21 categories** (plus 20 localized ES/FR variants). Every skill is quality-scored on a seven-dimension G-Eval rubric — library mean **4.37/5**, with 4.0 the minimum to ship. MIT licensed.

Skills work as copy-paste prompts in [Claude](https://claude.ai), or as installable skills in Claude Code, Cursor, Codex CLI, Gemini CLI, and any agent supporting the [Agent Skills standard](https://agentskills.io).

---

## Install

> **Using Claude on the web?** No install needed — see [Start In 60 Seconds](#start-in-60-seconds) above.

```bash
# Clone the full library (for Claude Code, Cursor, Codex CLI, Gemini CLI)
git clone https://github.com/ur-grue/autopunk-media-skills.git ~/.claude/skills/autopunk-media-skills

# Or install individual skills
npx skills add ur-grue/autopunk-media-skills --skill hook-generator
```

**Compatible with:** Claude Code · Cursor · Codex CLI · Gemini CLI · OpenCode · any agent supporting the [Agent Skills standard](https://agentskills.io).

---

## Who Is This For?

TV documentary producers · magazine journalists · YouTube creators · podcast producers · screenwriters · data journalists · radio producers · newsletter writers · PR professionals · researchers · social media managers · visual content creators · editors and production teams.

---

## Quick Start

**New to Claude?** Claude is a free AI assistant made by Anthropic. Go to [claude.ai](https://claude.ai), create a free account, and you're ready. That's all you need to use any skill in this library.

**Here's what the `hook-generator` skill produces.** Try it yourself — paste the prompt below into Claude and add your own topic.

### Example input:

```
You are a YouTube hook specialist. Your job is to write the first 15–30 seconds
of a YouTube video script — the hook that stops the scroll and forces the viewer
to keep watching.

My video is about: the hidden reason most people fail at learning a new language
as an adult — and why the standard advice about "immersion" is scientifically wrong.

Target audience: adults aged 28–45 who have tried and failed to learn a language
before and feel frustrated with their own progress.

Tone: direct, slightly provocative, backed by science — not motivational-speaker energy.

Write 3 alternative hooks. For each: write the full script, then a one-line note
explaining the psychological mechanism it uses.
```

### Example output:

---

**Hook A — The Broken Promise**

"Every language app, every tutor, every Reddit thread told you the same thing: immerse yourself. Surround yourself with the language. Just listen. Just watch. Just live it.

You did that. For months. And you still can't hold a conversation.

Here's what they didn't tell you — and what the research has known since 1985."

*Mechanism: Validates the viewer's failure as a systemic problem, not personal inadequacy. Creates urgency to hear the explanation.*

---

**Hook B — The Number**

"94% of adult language learners plateau within six months. Not because they quit. Because they're doing the one thing every expert recommends — and it is actively working against how the adult brain acquires language.

The science on this is twenty years old. Nobody taught it to you."

*Mechanism: Specific statistic creates credibility shock. "Nobody taught you" frames the video as access to suppressed information.*

---

**Hook C — The Confession**

"I spent three years living in a country where I didn't speak the language. By the end, I could order coffee and ask for directions. That's it. Three years.

Turns out, immersion without one specific ingredient is just expensive confusion. Here's the ingredient."

*Mechanism: First-person failure story creates identification, then reframes failure as solvable. "Expensive confusion" is memorable.*

---

That's the quality level you get from every stable skill in this library.

---

## What's In The Library

| Category | Skills | What It Covers |
|----------|--------|----------------|
| Research | 81 skills | people · background · fact-checking · academic · data & statistics · competitive · logistics |
| Writing | 68 skills | articles · broadcast · digital & social · institutional |
| Magazine Journalism | 42 skills | ideation · writing · editing · investigation · fact-checking · legal · distribution |
| TV Documentary | 27 skills | development · pre-production · scripting · post-production · localization · business |
| Media Business | 19 skills | pitching · distribution · funding · legal |
| YouTube | 18 skills | pre-production · scripting · post-production · channel strategy · business · analytics |
| Data Journalism | 18 skills | analysis · investigation · visualization · publishing |
| Editing | 17 skills | line, structure & voice editing |
| Production Support | 17 skills | formatting · reference |
| Pre-Production | 14 skills | planning, scheduling & shoot briefs |
| PR / Communications | 13 skills | press office · crisis comms · media relations · content |
| Newsletter | 13 skills | writing · strategy · growth · monetization |
| Podcast | 12 skills | pre-production · scripting · post-production · business |
| Radio / Audio | 12 skills | scripting · news packages · production · strategy |
| Social Media | 11 skills | content · strategy |
| Archive & Legal | 10 skills | archive research · rights & clearances |
| Image Prompting | 10 skills | Midjourney · Flux · art direction · workflows |
| Audience & Distribution | 9 skills | audience growth · publishing |
| Screenwriting | 9 skills | development · scripting · revision · production |
| Translation & Localization | 8 skills | localization · cultural adaptation |
| Translation | 7 skills | text · institutional · digital · reference · quality |
| **Total** | **435 skills** | + 20 localized ES/FR variants |

Browse the full library in the `skills/` folder. Skills are organized by media format, then by production stage.

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

Hooks compose with skills. The `ai-slop-detector` reads its word lists from the `ai-writing-detox` skill. The `passive-voice-warning` points you to the `passive-voice-checker` for a full audit with rewrites. The `pre-publish-checklist` ties them all together at session end.

---

## Quality Badges

Every skill displays a status badge so you know exactly how production-ready it is.

| Badge | Status | What It Means |
|-------|--------|---------------|
| 🔲 `planned` | Coming soon | On the roadmap but not written yet |
| 🟡 `draft` | Written, not tested | Do not use in production |
| 🔵 `beta` | Tested at least once | Usable — may have rough edges |
| ✅ `stable` | Scored ≥ 4.0/5 on quality eval | Safe to use without supervision |

Only skills that pass a rigorous six-dimension quality evaluation earn `stable` status. The evaluation tests coherence, consistency, fluency, relevance, professionalism, and actionability — scored by Claude against a rubric aligned to real media industry standards.

See `tests/EVAL_FRAMEWORK.md` for the full process.

---

## Example Outputs

Two short examples showing the quality standard across different categories. Each is a real output from the skill, generated with a generic input.

---

### Logline · `logline-creator` · TV Documentary

**Input:** Feature documentary about a team of forensic archivists who recover destroyed government records from degraded magnetic tape.

**Output:**

> "In a basement lab outside Washington, three archivists race to recover government records that were officially destroyed — before the statute of limitations runs out on the people who ordered the erasure."

---

### Press Release Opening · `press-kit-generator` · TV Documentary

**Input:** Nature documentary series, six parts, following migrating bird species across three continents. Tone: prestigious, PBS-adjacent.

**Output:**

> "Seven years in production. Forty-two filming locations across three continents. One question that ornithologists have debated for a century: where do they actually go?
>
> *On The Wing* is a six-part natural history series that follows the Arctic Tern — the animal that experiences more daylight than any other creature on Earth — across the full length of its annual migration. For the first time, miniaturized tracking technology reveals a route that defies every existing model."

---

## Agents

Agents compose multiple skills into multi-step workflows that produce complete deliverables. Where a skill handles one task, an agent orchestrates a full pipeline — from brief to finished package.

| Agent | What it produces | Skills composed | Status |
|-------|-----------------|----------------|--------|
| Documentary Development Agent | Complete development package from a one-line idea | logline-creator → pitch-treatment-writer → series-bible-generator → broadcaster-pitch-writer → festival-synopsis-writer | ✅ stable (4.81/5) |
| Investigative Reporter Agent | Investigation from spark to publishable draft | story-angle-finder → source-research-brief → foia-request-writer → document-analysis-summary → claim-verification-checklist → libel-check-brief → lede-writer | 🔵 beta |
| Magazine Editor Agent | End-to-end editing pass on a submitted draft | structure-checker → copy-editor-assistant → fact-check-prompt → house-style-enforcer → headline-generator → pull-quote-selector → ai-writing-detox | 🔲 planned |
| YouTube Channel Operator Agent | Full video pipeline from topic to publish-ready package | niche-video-idea-generator → seo-title-optimizer → hook-generator → full-script-writer → b-roll-shot-list → thumbnail-concept-brief → description-seo-writer → chapter-timestamps | 🔲 planned |
| Podcast Producer Agent | Episode end-to-end | episode-concept-generator → guest-research-brief → interview-question-builder → ad-read-script → show-notes-generator → episode-summary-writer | 🔲 planned |
| PR Crisis Response Agent | Crisis response package | holding-statement-writer → crisis-statement-writer → faq-document-writer → journalist-pitch-email → spokesperson-briefing-note | 🔲 planned |

Each agent operates in two modes: **PLANNING** (reads your brief, presents a step-by-step plan for approval) and **EXECUTION** (runs the approved plan, assembles the outputs into a single deliverable). You can interrupt between steps to adjust direction.

Agents follow the same quality badge system as skills. See `agents/AGENT_TEMPLATE.md` for the full specification.

---

## How To Use A Skill

**Option A — Copy and paste** (no technical setup needed)

1. Browse the [`skills/`](skills/) folder on this page — click any folder to open it, then click the skill file you want
2. Read the **"What You Need To Provide"** section so you know what info to include
3. Copy everything from the **"# Skill Title"** heading down to **"Known Limitations"** — skip the grey metadata block at the very top of the file
4. Paste it into [Claude](https://claude.ai) along with your own material

**Option B — Clone the library** (for coding agents like Claude Code, Cursor, Codex CLI)

```bash
git clone https://github.com/ur-grue/autopunk-media-skills.git ~/.claude/skills/autopunk-media-skills
```

Skills are automatically available in Claude Code, Cursor, Codex CLI, Gemini CLI, OpenCode, and any agent that reads from a skills directory.

**Option C — Reference from your project**

Add a skill path to your project's `CLAUDE.md` or agent config so it loads automatically whenever you work in that project.

---

## First Time Here?

Not sure where to start? These guides will get you up and running fast.

| Guide | What It Does |
|-------|-------------|
| [**Getting Started**](docs/getting-started.md) | Pick your role, get 3 starter skills, start producing |
| [**Writing Better Inputs**](docs/writing-better-inputs.md) | How to brief Claude so output is usable on the first try |
| [**Skill Index**](docs/skill-index.md) | Find any skill by what you need to do — not by category |
| [**Troubleshooting**](docs/troubleshooting.md) | Output not right? Common fixes for common problems |
| [**Roadmap**](ROADMAP.md) | What's done, in progress, and planned next |

---

## Workflows

Most real projects use multiple skills in sequence. These step-by-step workflows walk you through an entire project from start to finish.

| Workflow | Skills | Who It's For |
|----------|--------|-------------|
| [YouTube Video Launch](docs/workflows/youtube-video-launch.md) | 8 skills | YouTube creators |
| [Investigative Journalism Project](docs/workflows/investigative-journalism-project.md) | 10 skills | Investigative reporters |
| [Podcast Season Launch](docs/workflows/podcast-season-launch.md) | 9 skills | Podcast producers |
| [Documentary Pitch to Greenlight](docs/workflows/documentary-pitch-to-greenlight.md) | 8 skills | Documentary filmmakers |
| [Newsletter From Scratch](docs/workflows/newsletter-from-scratch.md) | 8 skills | Newsletter writers |
| [PR Crisis Response](docs/workflows/pr-crisis-response.md) | 6 skills | PR professionals |

---

## How To Contribute

Got an idea for a skill? Found one that gave bad output? Want to improve an existing skill?

See `CONTRIBUTING.md` — there's a plain-English section at the top written for non-developers.

Short version:
1. Open a GitHub Issue describing the skill you want
2. The concept is reviewed and approved
3. The skill is written using `SKILL_TEMPLATE.md`
4. It goes through quality testing before it's marked `stable`

---

## Quality Testing

**Every skill carries a quality score** in its metadata — the library mean is **4.37/5**, and 4.0 is the minimum to ship. See the auto-generated [`tests/EVAL_SUMMARY.md`](tests/EVAL_SUMMARY.md) for the score of every category.

On top of that, our documented assertion suite ran **226 skills** against binary checks using diverse inputs (standard, minimal, European context): **2,354 / 2,390 checks passed (98.5%).** All 36 misses occurred on deliberately minimal inputs where skills correctly refused to fabricate content — the desired professional behavior. No skill failed on a well-specified input.

Full results: [`tests/EVAL_RESULTS.md`](tests/EVAL_RESULTS.md) · Methodology: [`tests/README.md`](tests/README.md)

---

## Related Projects

This repo exists within a growing ecosystem of agent skills for media, journalism, writing, and marketing. We maintain a curated list of 25+ related projects — peers, infrastructure, and inspiration.

→ **[Full list with annotations](docs/related-projects.md)**

---

## Need help with your specific project?

These skills produce strong drafts. But if you're pitching to a broadcaster, applying for production funding, or trying to get a project greenlit — the document is only half the job. Knowing what commissioners respond to, how to position your project, and when to push back on notes is the other half.

**[thepitchdoctor.io](https://thepitchdoctor.io)** offers one-on-one pitch consulting for documentary filmmakers, series creators, and media professionals. The skills handle the writing. The Pitch Doctor handles the strategy.

→ [Learn more](docs/go-deeper.md)

---

## License

MIT — free to use, fork, and adapt. See `LICENSE`.

---

Maintained by [Autopunk](https://github.com/ur-grue) — AI workflows for media producers, from the team behind [thepitchdoctor.io](https://thepitchdoctor.io).

These skills encode real production knowledge from documentary development, magazine journalism, broadcast scripting, and international co-productions.

Want to contribute? See [CONTRIBUTING.md](CONTRIBUTING.md). Found a bug? [Open an issue](https://github.com/ur-grue/autopunk-media-skills/issues).
