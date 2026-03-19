![autopunk-media-skills](.github/banner.svg)

![Stable skills](https://img.shields.io/badge/skills-195_stable-E8000F?style=flat-square) ![Beta skills](https://img.shields.io/badge/beta-121-555555?style=flat-square) ![Planned](https://img.shields.io/badge/planned-61-333333?style=flat-square) ![License](https://img.shields.io/badge/license-MIT-blue?style=flat-square)

**AI for media that matters.**

---

## What is this?

A free library of Claude skills for media professionals. Not a software product. Not a subscription. A collection of ready-to-use instructions that turn Claude into a specialist for specific production tasks.

Each skill covers one job: writing a pitch treatment, generating SEO titles for YouTube, cleaning an interview transcript, building a cinematic image prompt, drafting a press release. You paste the skill into Claude, give it your material, and get professional-grade output.

No coding. No setup. No new system to learn.

There are currently **195 stable skills** across 16 categories — each tested against a six-dimension quality standard before reaching that status. Another 121 are in beta, and 61 are in development.

---

## Who it's for

**By what you make:**

- TV documentary producers — development, scripting, pre-production, post, localization, business
- Magazine and newspaper journalists — research, writing, editing, investigation, fact-checking, legal
- YouTube creators — pre-production, scripting, post-production, channel strategy, analytics
- Podcast producers — episode planning, scripting, show notes, sponsorship
- Visual content creators — image prompts for Midjourney, Flux, and art direction workflows
- Media business teams — pitching, fundraising, distribution, rights clearance
- Social media managers — captions, threads, carousels, platform strategy

**By what you're doing right now:**

- Researching — find experts, verify claims, trace sources, scout locations, review papers
- Pre-production — write pitches, call sheets, interview questions, release forms
- Writing — articles, scripts, social posts, press releases, institutional documents
- Editing — proofread, copy-edit, check tone, flag libel risk, harmonise multi-author copy
- Translating — articles, quotes, subtitles, voice-over scripts, with cultural adaptation
- Working with data — clean datasets, find the story, write chart text, explain methodology
- Legal and compliance — rights clearance, GDPR notes, copyright checks, CMS metadata
- Distribution — define audience, write A/B variants, schedule publication, respond to readers

---

## How to use a skill

1. **Find the skill you need** in the `skills/` folder — browse by format and production stage, or use the directory table below
2. **Open the skill file** and read the "What You Need To Provide" section — it tells you exactly what to bring
3. **Paste the skill into Claude** along with your material, following the worked example at the bottom of each file

That's it. Claude handles the rest.

---

## Try it now

Here's a real example using `hook-generator` from `skills/youtube/pre-production/`. Copy this into Claude and see what comes back.

**What you paste:**

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

**What Claude gives you:**

---

**Hook A — The broken promise**

"Every language app, every tutor, every Reddit thread told you the same thing: immerse yourself. Surround yourself with the language. Just listen. Just watch. Just live it.

You did that. For months. And you still can't hold a conversation.

Here's what they didn't tell you — and what the research has known since 1985."

*Mechanism: Validates the viewer's failure as a systemic problem, not personal inadequacy. Creates urgency to hear the explanation.*

---

**Hook B — The number**

"94% of adult language learners plateau within six months. Not because they quit. Because they're doing the one thing every expert recommends — and it is actively working against how the adult brain acquires language.

The science on this is twenty years old. Nobody taught it to you."

*Mechanism: Specific statistic creates credibility shock. "Nobody taught you" frames the video as access to suppressed information.*

---

**Hook C — The confession**

"I spent three years living in a country where I didn't speak the language. By the end, I could order coffee and ask for directions. That's it. Three years.

Turns out, immersion without one specific ingredient is just expensive confusion. Here's the ingredient."

*Mechanism: First-person failure story creates identification, then reframes failure as solvable. "Expensive confusion" is memorable.*

---

That's the output level you get from every stable skill in this library.

---

## The skill directory

| Category | Skills | What it covers |
|----------|--------|----------------|
| Research | 60 | People and contacts, facts and context, data and statistics, scientific and academic literature, locations and logistics, media and competitive analysis |
| Writing | 68 | Articles (all formats), broadcast scripts, digital and social copy, institutional documents |
| TV documentary | 21 | Development, scripting, pre-production, post-production, localization, business |
| Magazine journalism | 21 | Ideation, writing, editing, investigation, fact-checking, legal, distribution |
| YouTube | 18 | Pre-production, scripting, post-production, channel strategy, business, analytics |
| Pre-production | 14 | Pitches, call sheets, interview questions, rights checks, glossaries |
| Media business | 13 | Pitching, distribution, funding, legal |
| Podcast | 12 | Pre-production, scripting, show notes, sponsorship |
| Editing | 16 | Proofreading, copy editing, style checks, tone, multi-author harmonisation |
| Data journalism | 17 | Analysis, investigation, visualization, publishing, methodology |
| Image prompting | 10 | Midjourney, Flux, art direction, image workflows |
| Archive and legal | 10 | Rights clearance, GDPR, copyright, CMS metadata |
| Production support | 10 | Formatting, layout, transcripts, credits |
| Audience and distribution | 9 | Audience targeting, A/B tests, reader engagement, scheduling |
| Social media | 7 | Content creation, platform strategy |
| Translation and localization | 8 | Articles, quotes, subtitles, voice-over scripts |

Browse the full library in the `skills/` folder. Skills are organized by category, then by production stage.

---

## What the quality badges mean

Every skill carries a status badge. Here's what each one means in practice.

| Badge | Status | What it means |
|-------|--------|---------------|
| 🔲 `planned` | On the roadmap | File exists as a placeholder — skill not yet written |
| 🟡 `draft` | Written, not tested | Do not use in production |
| 🔵 `beta` | Tested at least once | Usable — may have rough edges |
| ✅ `stable` | Passed quality evaluation | Safe to use without supervision |

**How a skill earns `stable` status:** it's tested using a six-dimension quality evaluation — coherence, consistency, fluency, relevance, professionalism, and actionability — each scored 1 to 5. A skill needs a mean score of 4.0 or higher across all six dimensions to reach `stable`. In practical terms, that means the output is good enough to hand to an editor or a commissioner without apologizing for it.

The full evaluation protocol is in `tests/EVAL_FRAMEWORK.md`. If you've used a skill and it gave you something below that standard, report it via a GitHub Issue — that's how the quality bar stays real.

---

## More example outputs

Three outputs across different categories, to give you a feel for the range.

---

**Logline — `logline-creator` — TV documentary**

Input: Feature documentary about a team of forensic archivists recovering destroyed government records from degraded magnetic tape.

> "In a basement lab outside Washington, three archivists race to recover government records that were officially destroyed — before the statute of limitations runs out on the people who ordered the erasure."

---

**Press release opening — `press-kit-generator` — TV documentary**

Input: Nature documentary series, six parts, following migratory bird species across three continents. Tone: prestigious, PBS-adjacent.

> "Seven years in production. Forty-two filming locations across three continents. One question that ornithologists have debated for a century: where do they actually go?
>
> *On The Wing* is a six-part natural history series that follows the Arctic Tern — the animal that experiences more daylight than any other creature on Earth — across the full length of its annual migration. For the first time, miniaturized tracking technology reveals a route that defies every existing model."

---

**Research brief opening — `facts-context` category — journalism**

Input: Brief on the economic history of lithium mining in South America, for a 20-minute current affairs documentary.

> "Lithium sits beneath the salt flats of Argentina, Bolivia, and Chile — a region now called the Lithium Triangle, holding an estimated 58% of the world's known lithium reserves. The mineral has been commercially extracted from the region since the early 1980s, initially for industrial ceramics and lubricants. Demand remained steady and unremarkable until approximately 2008, when the electric vehicle market began its first serious growth phase.
>
> Three things changed simultaneously after 2015: EV manufacturing scaled faster than almost any analyst had forecast, battery chemistry standardized around lithium-ion, and the geopolitical value of controlling supply chains became obvious to governments that had previously ignored the sector entirely."

---

## How to contribute

Got an idea for a skill that's missing? Found one that gave you bad output?

See `CONTRIBUTING.md` — it has a plain-English section at the top for non-developers.

The short version:

1. Open a GitHub Issue describing the skill you want, or the problem you found
2. The concept is discussed and confirmed
3. The skill is written using the standard template in `SKILL_TEMPLATE.md`
4. It goes through quality testing before it's marked `stable`

The quality bar is real. A skill doesn't ship as stable until it passes. That's the point.

---

## License

MIT — free to use, fork, and adapt. See `LICENSE`.

Maintained by [Ur-grue](https://github.com/ur-grue) — autopunk · AI for media that matters.
