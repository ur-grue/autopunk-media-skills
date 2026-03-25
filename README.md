![autopunk-media-skills](.github/banner.svg?v=2)

![Skills](https://img.shields.io/badge/skills-354_total-brightgreen) ![Eval](https://img.shields.io/badge/eval-98.5%25_pass_rate_(226_skills)-brightgreen) ![License](https://img.shields.io/badge/license-MIT-blue) ![G-Eval](https://img.shields.io/badge/quality-G--Eval_tested-orange)

---

## Install

```bash
# Clone the full library
git clone https://github.com/ur-grue/autopunk-media-skills.git ~/.claude/skills/autopunk-media-skills

# Or install individual skills
npx skills add ur-grue/autopunk-media-skills --skill hook-generator
```

**Compatible with:** Claude Code · Cursor · Codex CLI · Gemini CLI · OpenCode · any agent supporting the [Agent Skills standard](https://agentskills.io).

---

## What Is This?

This is a free collection of **Claude skills** — ready-to-use prompts and instructions that turn Claude into a specialist for media production work.

Skills follow the open [Agent Skills standard](https://agentskills.io) — they work in Claude Code, Cursor, Codex CLI, Gemini CLI, OpenCode, and any compatible coding agent.

Think of each skill as hiring an expert collaborator for one specific task: writing a pitch treatment, generating SEO-optimized YouTube titles, cleaning up an interview transcript, or building a cinematic image prompt from scratch.

**No coding required. No technical knowledge needed.** Pick a skill, give Claude what it needs, and get professional-grade output.

---

## Who Is This For?

- **TV documentary producers** — development, pre-production, scripting, post-production, localization, business
- **Magazine journalists** — story ideation, writing, editing, investigation, fact-checking, legal
- **YouTube creators** — pre-production, scripting, post-production, channel strategy, business, analytics
- **Podcast producers** — episode planning, scripting, show notes, sponsorship
- **Visual content creators** — image prompts for Midjourney, Flux, and art direction workflows
- **Media business** — pitching broadcasters, fundraising, distribution, rights clearance
- **Social media managers** — captions, threads, carousels, platform strategy
- **Radio journalists and producers** — bulletins, packages, two-ways, running orders, broadcaster pitches
- **Newsletter writers** — editions, subject lines, subscriber growth, paid conversions, sponsorship
- **PR and communications professionals** — press releases, crisis statements, spokesperson briefs, op-eds
- **Screenwriters** — treatments, beat sheets, scene writing, script notes, coverage
- **Data journalists** — dataset analysis, chart descriptions, FOI requests, methodology documentation
- **Researchers** — scientific papers, policy analysis, source verification, competitive coverage review
- **Editors and production teams** — translation, formatting, metadata, asset management, fact sheets

---

## Quick Start

**Here's what the `hook-generator` skill produces.** Try it yourself — paste the prompt below into Claude, run it through your coding agent, or load it from the cloned library.

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
| TV Documentary | 28 skills | development · pre-production · scripting · post-production · localization · business |
| Magazine Journalism | 39 skills | ideation · writing · editing · investigation · fact-checking · legal · distribution |
| YouTube | 18 skills | pre-production · scripting · post-production · channel strategy · business · analytics |
| Podcast | 12 skills | pre-production · scripting · post-production · business |
| Image Prompting | 10 skills | Midjourney · Flux · art direction · workflows |
| Media Business | 19 skills | pitching · distribution · funding · legal |
| Social Media | 11 skills | content · strategy |
| Radio / Audio | 12 skills | scripting · news packages · production · strategy |
| Newsletter | 13 skills | writing · strategy · growth · monetization |
| PR / Communications | 13 skills | press office · crisis comms · media relations · content |
| Screenwriting | 9 skills | development · scripting · revision · production |
| Data Journalism | 15 skills | analysis · visualization · investigation · publishing |
| Research | 18 skills | people · background · fact-checking · academic · media · logistics |
| Translation | 7 skills | text · institutional · digital · reference · quality · localization |
| Production Support | 7 skills | formatting · reference |
| **Total** | **354 skills** | |

Browse the full library in the `skills/` folder. Skills are organized by media format, then by production stage.

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

Three short examples showing the quality standard across different categories. Each is a real output from the skill, generated with a generic input.

---

### Hook · `hook-generator` · YouTube

**Input:** Video about why open-plan offices hurt deep work. Audience: knowledge workers. Tone: research-backed, not ranty.

**Output:**

> "Stanford published a study in 2023 that should have ended the open-plan office debate permanently. It didn't — because the real estate industry has a $2.3 trillion reason to ignore it. Here's what they found, and what it means for every hour you've spent trying to think in a glass box."

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

## How To Use A Skill

**Option A — Clone the library** (recommended for coding agents)

```bash
git clone https://github.com/ur-grue/autopunk-media-skills.git ~/.claude/skills/autopunk-media-skills
```

Skills are automatically available in Claude Code, Cursor, Codex CLI, Gemini CLI, OpenCode, and any agent that reads from a skills directory.

**Option B — Copy and paste** (fastest for a single task)

1. Find the skill you need in the `skills/` folder
2. Read the "What You Need To Provide" section
3. Paste the skill into Claude along with your material

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

**226 skills tested** against binary assertions using diverse inputs (standard, minimal, European context). **2,354 / 2,390 checks passed (98.5%).** Radio/Audio and PR/Communications scored 100%.

All 36 failures occurred on deliberately minimal inputs where skills correctly refused to fabricate content — the desired professional behavior. No skill failed on a well-specified input.

Full results: [`tests/EVAL_RESULTS.md`](tests/EVAL_RESULTS.md) · Methodology: [`tests/README.md`](tests/README.md)

---

## Related Projects

The agent skills ecosystem is growing fast. These are the projects we consider peers, infrastructure, or inspiration — and where Autopunk fits among them.

### Journalism & Media Skills

We're not the only ones building skills for newsrooms. But we're the only ones focused on **production and broadcast**. The repos below cover the investigative and fact-checking side of the stack — together, they form a complete editorial toolkit.

- **[jamditis/claude-skills-journalism](https://github.com/jamditis/claude-skills-journalism)** — Joe Amditis' skills for investigative journalists and academics. 14 skills covering FOIA request drafting, source verification (SIFT method), data journalism, digital archive building with entity extraction, plus dev tooling for newsroom apps (Electron, web scraping, Python pipelines). US-focused (FOIA is federal law), strong on verification workflows. Where Autopunk covers pitch-to-publish production, jamditis covers the research-to-verification layer. If you're doing investigative work, start here.

- **[fdaudens/ai-journalism-skills](https://huggingface.co/spaces/fdaudens/ai-journalism-skills)** — Frédéric Daudens' fact-checking and OSINT skills, hosted on Hugging Face. Includes scrollytelling (SvelteKit) and open-source intelligence workflows. Narrower scope than jamditis but sharper on verification. Complements Autopunk's production focus — we make the show, they verify the claims in it.

### Video & Film Production

Skills for people who make moving pictures. This is where Autopunk overlaps most directly — our TV/documentary/YouTube skills sit alongside these tools.

- **[digitalsamba/claude-code-video-toolkit](https://github.com/digitalsamba/claude-code-video-toolkit)** — AI-native video production workspace built around Remotion, ElevenLabs, FFmpeg, and Playwright. Full lifecycle from planning through rendering, with brand profiles, scene status tracking, and multi-session project management. The most complete code-first video production toolkit in the ecosystem. Where Autopunk provides editorial skills (scripting, rundowns, hooks), this toolkit provides the rendering and compositing layer.

- **[SamurAIGPT/Generative-Media-Skills](https://github.com/SamurAIGPT/Generative-Media-Skills)** — Multimodal generative media skills with a Cinema Director skill for technical film direction and cinematography, plus image generation (Flux), text-to-speech, video generation (Seedance 2), and audio tools. MCP server support. Focused on generative AI media creation rather than editorial workflows — complementary to Autopunk's scripting and production planning skills.

- **[video-prompting-skill](https://github.com/BehiSecc/awesome-claude-skills)** *(listed in awesome-claude-skills)* — Draft and refine prompts for video generation models (LTX-2, Sora, Veo 3). Narrow but useful if you're generating footage rather than editing it.

- **[VideoDB Skills](https://github.com/BehiSecc/awesome-claude-skills)** *(listed in awesome-claude-skills)* — Ingest, search, edit, generate, and stream media via VideoDB. Think of it as the MAM (media asset management) layer that Autopunk's archive-research skills can feed into.

### Creative Writing & Book Publishing

Skills for long-form writing, fiction, and publishing pipelines. Relevant if you're using Autopunk's magazine journalism or screenwriting skills and want to extend into book-length projects.

- **[haowjy/creative-writing-skills](https://github.com/haowjy/creative-writing-skills)** — Six specialized skills for the full creative writing process: prose writing in your personal style, brainstorming, story critique, style guide creation, and story documentation. Learns your voice from examples. The most thoughtful fiction-writing skill set available — pairs well with Autopunk's screenwriting skills if you're adapting scripts to prose or vice versa.

- **[ThomasHoussin/Claude-Book](https://github.com/ThomasHoussin/Claude-Book)** — Multi-agent framework for writing novels with Claude Code. Skills for source book analysis, bible merging (style, structure, characters, universe), story ideation, and a perplexity improver to reduce AI-detectable patterns. Includes EPUB/MOBI/AZW3 export. Serious infrastructure for long-form fiction production.

- **[robertguss/claude-skills (Book Factory)](https://github.com/robertguss/claude-skills)** — A comprehensive pipeline replicating traditional publishing infrastructure for nonfiction book creation. Covers ideation through publication. Listed in [awesome-claude-code](https://github.com/hesreallyhim/awesome-claude-code). If you're turning documentary research into a book, this is the pipeline.

- **[JJenglert1/remotion-claude-video](https://github.com/JJenglert1/remotion-claude-video)** — Remotion video creation with pre-installed skills for video best practices, UI/UX design (50+ styles, 97 color palettes, 57 font pairings), and conversion-focused copywriting. Good starter template for marketing video production.

### Copywriting & Marketing

Skills for the commercial writing side of media. These repos cover landing pages, email sequences, and ad creative — the distribution and monetization layer that sits downstream of Autopunk's editorial production.

- **[coreyhaines31/marketingskills](https://github.com/coreyhaines31/marketingskills)** — 25+ marketing skills for CRO, copywriting, SEO, analytics, and growth engineering by Corey Haines (Conversion Factory / Swipe Files). The best example of the skills-repo-as-funnel model: free skills drive awareness, consulting and SaaS monetize expertise. Different domain, same playbook. Includes deep copywriting and copy-editing skills with voice-of-customer methodology.

- **[wondelai/skills](https://github.com/wondelai/skills)** — 25 agent skills grounded in specific books: StoryBrand (messaging), Contagious (virality), $100M Offers (Hormozi), Influence (Cialdini), Made to Stick, Refactoring UI, and more. Each skill encodes a published methodology rather than generic advice. The StoryBrand and Made to Stick skills are particularly relevant for media producers crafting pitches and trailers.

- **[alirezarezvani/claude-skills](https://github.com/alirezarezvani/claude-skills)** — 192 skills across engineering, marketing, product, compliance, and C-level advisory. 5.2K stars. Includes content-creator, copywriting, growth-marketer, and launch-strategy skills. The broadest general-purpose skill collection — useful as a reference for skill structure and marketplace format, even if most skills don't overlap with media production.

- **[@clawfu/mcp-skills](https://github.com/BehiSecc/awesome-claude-skills)** *(listed in awesome-claude-skills)* — 169 expert-sourced marketing skills (Dunford, Schwartz, Ogilvy, Cialdini) as MCP server with brand memory. Strongest theoretical foundation of any marketing skill set.

### Skill Ecosystem

The broader skills landscape we build on and contribute to.

- **[anthropics/skills](https://github.com/anthropics/skills)** — Anthropic's official skill collection. Ships with Claude Code out of the box: document creation (docx, pptx, xlsx, pdf), frontend design, and the `skill-creator` — a full eval framework with binary assertions, benchmark aggregation, and an HTML viewer. We use the skill-creator's eval runner internally to test and improve Autopunk skills. If you're building your own skills, read this repo first.

- **[Orchestra-Research/AI-Research-SKILLs](https://github.com/Orchestra-Research/AI-Research-SKILLs)** — 83 skills across 20 categories for AI research engineering: model architecture, fine-tuning, distributed training, inference, safety, RAG, multimodal, and more. 3.3K stars, npm installer (`npx @orchestra-research/ai-research-skills`), Claude Plugin Marketplace support. The gold standard for how a large skill collection should be structured and distributed. Our marketplace format and npm packaging roadmap are directly inspired by their approach.

### Skill Directories

Where skills get discovered. If your repo isn't indexed here, it doesn't exist for most users.

- **[SkillsMP](https://skillsmp.com/)** — The largest agent skills marketplace. Aggregates 500K+ skills from public GitHub repos, filterable by category, popularity, and quality indicators. Auto-indexes repos with ≥2 stars and a valid SKILL.md. Compatible with Claude Code, Codex CLI, and ChatGPT. This is where most developers discover skills — getting listed here is table stakes.

- **[SkillHub](https://www.skillhub.club)** — 7K+ skills evaluated by AI across five dimensions: Practicality, Clarity, Automation, Quality, and Impact. Offers a desktop app for one-click install and a Playground for trying skills before committing. Smaller than SkillsMP but higher signal-to-noise — the quality scoring surfaces well-built skills over keyword-stuffed ones.

- **[Awesome Claude Skills](https://awesomeclaude.ai/awesome-claude-skills)** — Visual directory of curated Claude skills. Less comprehensive than SkillsMP/SkillHub but editorially curated, which means a listing here carries more weight per impression. Good for browsing by use case rather than keyword search.

- **[travisvn/awesome-claude-skills](https://github.com/travisvn/awesome-claude-skills)** — The original awesome-list for Claude skills. ~1.4K stars. Curated with categories, FAQs, and a timeline of the skills ecosystem. Our top target for a cross-listing PR.

- **[VoltAgent/awesome-agent-skills](https://github.com/VoltAgent/awesome-agent-skills)** — 1000+ agent skills from official dev teams and community, organized by author. Cross-agent compatible (Codex, Antigravity, Gemini CLI, Cursor). Includes official Google, DuckDB, GSAP, and Figma skills alongside community repos.

- **[hesreallyhim/awesome-claude-code](https://github.com/hesreallyhim/awesome-claude-code)** — Curated list of skills, hooks, slash-commands, agent orchestrators, and plugins for Claude Code. Goes beyond skills into the full Claude Code ecosystem — workflows, sub-agents, and orchestration patterns.

### Quality & Testing

How we validate that skills actually work.

- **[Anthropic skill-creator](https://github.com/anthropics/skills/tree/main/skills/skill-creator)** — The eval framework we use internally. Includes `run_eval.py` (binary assertion runner), `run_loop.py` (iterative improvement loop), `aggregate_benchmark.py` (variance analysis across runs), a Grader Agent, an Analyzer Agent, and an HTML benchmark viewer. Think of it as the Karpathy pattern applied to prompt engineering: write assertions, run them blind, iterate on the skill until they pass. Our G-Eval quality framework sits on top of this as the public-facing quality gate.

---

## License

MIT — free to use, fork, and adapt. See `LICENSE`.

---

Maintained by [Autopunk](https://github.com/ur-grue) — AI workflows for media producers.

Built by a commissioning editor with 15+ years in European public broadcasting. These skills encode real production knowledge from documentary development, magazine journalism, broadcast scripting, and international co-productions.

Want to contribute? See [CONTRIBUTING.md](CONTRIBUTING.md). Found a bug? [Open an issue](https://github.com/ur-grue/autopunk-media-skills/issues).
