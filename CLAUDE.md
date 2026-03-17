# autopunk-media-skills
**The most comprehensive Claude skill library for media professionals.**  
GitHub: https://github.com/ur-grue/autopunk-media-skills · License: MIT

---

## What This Project Is

A curated, quality-tested library of Claude skills for journalists, documentary filmmakers, YouTube creators, podcast producers, and visual content creators.

**Not a coding library.** Every skill helps media professionals produce better content faster — treatments, scripts, headlines, image prompts, show notes, and more.

**Target users:** Media professionals who may have no technical background. Everything they see must be immediately understandable without reading documentation.

For full vision and roadmap → see `ROADMAP.md`  
For contribution rules → see `CONTRIBUTING.md`  
For skill format → see `SKILL_TEMPLATE.md`  
For testing protocol → see `tests/EVAL_FRAMEWORK.md`

---

## Language Rule

**All repository content is in English.** Skills, README, docs, commit messages, issue templates — everything. Target audience is the international media community.

---

## Anonymity Rule

**Never reference the maintainer's employer, specific productions, or identifiable real-world projects in any file.** All examples must be generic, professional, and untraceable. The maintainer identity is Ur-grue only.

---

## Repository Structure

```
autopunk-media-skills/
│
├── CLAUDE.md                        ← This file. Read first, every session.
├── README.md                        ← Public landing page (non-technical audience)
├── CONTRIBUTING.md                  ← How to contribute a skill
├── SKILL_TEMPLATE.md                ← Exact format every skill must follow
├── ROADMAP.md                       ← All ~102 skills: status, priorities
├── CHANGELOG.md                     ← Version history
├── LICENSE                          ← MIT
│
├── .github/
│   ├── ISSUE_TEMPLATE/
│   │   ├── skill-request.md         ← "I want a skill for X"
│   │   ├── quality-report.md        ← "This skill gave me a bad result"
│   │   └── bug-report.md            ← "This skill doesn't work at all"
│   └── pull_request_template.md
│
├── skills/
│   │
│   │   # Functional journalism taxonomy (204 skills)
│   │
│   ├── research/
│   │   ├── people-contacts/         ← 10 skills: contact info, biography, expert identification
│   │   ├── facts-context/           ← 18 skills: background briefs, fact-checking, timelines
│   │   ├── data-statistics/         ← 8 skills: stats research, official data, trend analysis
│   │   ├── scientific-academic/     ← 8 skills: literature briefs, paper summaries, methodology
│   │   ├── locations-logistics/     ← 9 skills: location research, archive finding, travel
│   │   └── media-competitive/       ← 7 skills: competitor coverage, gap analysis, press roundups
│   │
│   ├── pre-production/              ← 14 skills: pitches, call sheets, rights, glossaries
│   │
│   ├── writing/
│   │   ├── articles/                ← 28 skills: headlines, ledes, features, captions, rewrites
│   │   ├── broadcast/               ← 12 skills: voice-over, teleprompter, cue sheets, podcasts
│   │   ├── digital-social/          ← 15 skills: social posts, SEO, newsletters, YouTube metadata
│   │   └── institutional/           ← 13 skills: press releases, emails, grant applications
│   │
│   ├── editing/                     ← 16 skills: proofreading, copy editing, style checks
│   │
│   ├── translation-localization/    ← 8 skills: article, quote, subtitle, press release translation
│   │
│   ├── data-journalism/
│   │   ├── analysis/                ← dataset summaries, outlier finding, trend identification
│   │   ├── investigation/           ← data cleaning, FOIA, PDF extraction
│   │   ├── visualization/           ← chart types, labels, descriptions
│   │   └── publishing/              ← corrections, methodology boxes
│   │
│   ├── archive-legal/               ← 10 skills: rights checking, GDPR, CMS metadata
│   │
│   ├── audience-distribution/       ← 9 skills: audience targeting, A/B tests, reader engagement
│   │
│   ├── production-support/          ← 10 skills: formatting, layout, transcripts, credits
│   │
│   │   # Existing format-specific skills (unchanged)
│   │
│   ├── tv-documentary/
│   │   ├── development/             ← pitch-treatment-writer, series-bible-generator,
│   │   │                               logline-creator, character-arc-planner
│   │   ├── scripting/               ← scene-breakdown-writer, commentary-writer,
│   │   │                               interview-question-generator, narrator-voice-adapter
│   │   ├── post-production/         ← rough-cut-notes, subtitles-rewriter,
│   │   │                               press-kit-generator
│   │   ├── localization/            ← dubbing-script-adapter, festival-synopsis-writer
│   │   ├── pre-production/          ← shoot-schedule-builder, location-brief-writer,
│   │   │                               release-form-checklist, equipment-list-generator
│   │   └── business/                ← co-production-brief, broadcaster-one-pager,
│   │                                   funding-application-writer
│   │
│   ├── magazine-journalism/
│   │   ├── ideation/                ← story-angle-finder, headline-generator,
│   │   │                               research-brief-creator
│   │   ├── writing/                 ← reportage-structure, column-voice-adapter,
│   │   │                               interview-transcript-editor, sidebar-fact-box-writer
│   │   ├── editing/                 ← copy-editor-assistant, fact-check-prompt,
│   │   │                               house-style-enforcer
│   │   ├── distribution/            ← newsletter-teaser-writer, social-media-excerpt
│   │   ├── investigation/           ← source-contact-tracker, document-analysis-brief,
│   │   │                               foia-request-writer, tipsheet-summarizer
│   │   ├── fact-checking/           ← claim-verification-checklist, source-credibility-scorer,
│   │   │                               correction-notice-writer
│   │   └── legal/                   ← defamation-risk-checker, privacy-law-brief,
│   │                                   rights-clearance-checklist
│   │
│   ├── youtube/
│   │   ├── pre-production/          ← niche-video-idea-generator, seo-title-optimizer,
│   │   │                               thumbnail-concept-brief, hook-generator
│   │   ├── scripting/               ← full-script-writer, b-roll-shot-list,
│   │   │                               call-to-action-generator, shorts-script-adapter
│   │   ├── post-production/         ← description-seo-writer, chapter-timestamps,
│   │   │                               community-post-generator
│   │   ├── channel-strategy/        ← content-calendar-planner, audience-persona-builder
│   │   ├── business/                ← sponsorship-pitch-writer, media-kit-generator,
│   │   │                               brand-deal-rate-card
│   │   └── analytics/               ← performance-report-summarizer, ab-title-tester,
│   │                                   audience-retention-analyzer
│   │
│   ├── podcast/
│   │   ├── pre-production/          ← episode-concept-generator, guest-research-brief,
│   │   │                               interview-question-builder
│   │   ├── scripting/               ← solo-episode-script, intro-outro-writer,
│   │   │                               ad-read-script
│   │   ├── post-production/         ← show-notes-generator, transcript-cleanup,
│   │   │                               episode-summary-writer
│   │   └── business/                ← podcast-media-kit, listener-sponsorship-pitch,
│   │                                   network-submission-brief
│   │
│   ├── image-prompting/
│   │   ├── midjourney/              ← style-reference-prompt, character-consistency-prompt,
│   │   │                               cinematic-shot-prompt
│   │   ├── flux/                    ← editorial-photo-prompt, dark-aesthetic-prompt
│   │   ├── art-direction/           ← mood-board-brief, color-palette-brief,
│   │   │                               visual-identity-prompt
│   │   └── workflows/               ← cover-image-pipeline, social-media-visual-batch
│   │
│   ├── media-business/
│   │   ├── pitching/                ← investor-deck-writer, executive-summary-generator,
│   │   │                               elevator-pitch-builder, cold-email-writer
│   │   ├── distribution/            ← festival-submission-brief, distributor-one-pager,
│   │   │                               press-release-writer, platform-pitch-adapter
│   │   ├── funding/                 ← grant-application-writer, crowdfunding-copy-writer,
│   │   │                               budget-narrative-generator
│   │   └── legal/                   ← contract-summary-explainer, rights-audit-checklist,
│   │                                   talent-agreement-brief
│   │
│   └── social-media/
│       ├── content/                 ← caption-writer, thread-generator,
│       │                               story-script-writer, reel-concept-brief,
│       │                               hashtag-strategy-builder
│       └── strategy/                ← platform-content-plan, audience-growth-brief,
│                                       engagement-audit, cross-platform-repurposer
│
└── tests/
    ├── EVAL_FRAMEWORK.md            ← Full G-Eval testing protocol
    └── COMMUNITY_REVIEW_CHECKLIST.md ← Plain-language quality checklist for any user
```

---

## Skill Status System

| Badge | Status | Meaning |
|-------|--------|---------|
| 🔲 `planned` | Placeholder only | File exists, skill not yet written |
| 🟡 `draft` | Written, untested | Do not use in production |
| 🔵 `beta` | Tested once | Usable, may have edge cases |
| ✅ `stable` | G-Eval ≥ 4.0/5 | Production-ready |

**A skill is only `stable` after passing the G-Eval protocol in `tests/EVAL_FRAMEWORK.md`.**

---

## Skill Format

Every skill follows this exact template. Standalone version is in `SKILL_TEMPLATE.md`.

```markdown
---
name: skill-name-in-kebab-case
status: planned | draft | beta | stable
category: tv-documentary | magazine-journalism | youtube | podcast | image-prompting | media-business | social-media
subcategory: development | scripting | post-production | localization | pre-production | business | ideation | writing | editing | distribution | investigation | fact-checking | legal | channel-strategy | analytics | midjourney | flux | art-direction | workflows | pitching | funding | content | strategy | people-contacts | facts-context | data-statistics | scientific-academic | locations-logistics | media-competitive | articles | broadcast | digital-social | institutional | analysis | visualization | publishing
version: 1.0
eval_score: null
tags: [tag1, tag2]
---

# Skill Title

## What This Skill Does
One precise sentence.

## When To Use This Skill
- Specific trigger condition 1
- Specific trigger condition 2

## What You Need To Provide
**Required:** ...
**Optional:** ...

## How Claude Approaches This
1. Step one
2. Step two
3. Step three

## Output Format
Length, structure, tone, language register, formatting.

## Quality Criteria
- [ ] Criterion 1
- [ ] Criterion 2

## Example
### Input
[Generic, professional-grade. Not traceable to any real organization or production.]
### Output
[Complete, realistic. Good enough to use without editing.]

## Known Limitations
- At least one honest, specific limitation.

## Related Skills
- [skill-name](path/to/skill.md)
```

---

## Testing Protocol (Summary)

Full protocol in `tests/EVAL_FRAMEWORK.md`.

**Standard:** G-Eval (NLG Evaluation using GPT-4 with Better Human Alignment)  
**Threshold for `stable`:** Mean score ≥ 4.0/5 across all six dimensions

| Dimension | What It Measures |
|-----------|-----------------|
| Coherence | Well-structured and logically organized? |
| Consistency | Free of contradictions and invented facts? |
| Fluency | Natural, readable, professional language? |
| Relevance | Addresses exactly what was asked — no more, no less? |
| Professionalism | Acceptable to an experienced media professional as-is? |
| Actionability | Usable directly in production without major revision? |

**To run an eval in Claude Code:**
```
Run G-Eval for [skill-name].
Read the skill file. Generate 3 test outputs using varied inputs.
Score each output on all 6 dimensions (1-5 scale).
Report mean per dimension and overall average.
If overall mean ≥ 4.0, set status to stable and update eval_score in frontmatter.
```

**Important:** Raw eval data stays internal. The public sees only the badge and score in the skill frontmatter. Detailed quality evidence is published as readable PDF reports — not code or JSON — so any media professional can understand the quality standard without technical knowledge.

---

## Git Workflow

End every session:
```bash
git add -A
git commit -m "type: description (category/subcategory)"
git push origin main
```

Types: `feat` · `fix` · `test` · `docs` · `chore`

```
feat: add hook-generator skill (youtube/pre-production)
test: G-Eval hook-generator — score 4.4/5, marked stable
fix: improve example in pitch-treatment-writer
chore: update ROADMAP.md statuses
```

---

## Non-Negotiable Quality Rules

1. Real examples only — no placeholders anywhere.
2. Generic examples only — nothing traceable to a real production or organization.
3. Every skill documents at least one honest limitation.
4. No skill reaches `stable` without a passing G-Eval.
5. All public-facing language is non-technical — written for journalists and producers, not developers.

---

## First Run Instructions

**If this is the first session and the repository is empty, execute all five phases in order. Do not stop between phases.**

### Phase 1 — Foundation files (6 files)

**README.md**  
Public landing page. Audience: a journalist or TV producer who has never heard of "Claude skills." Must answer in plain language: What is this? Who is it for? How do I use a skill (3 steps, no jargon)? What categories exist and how many skills are in each? What do the quality badges mean? How can I contribute? No technical language in the first two sections.

**LICENSE**  
MIT license. Copyright holder: Ur-grue.

**CHANGELOG.md**  
One entry: `## v0.1.0 — Repository initialized. Full structure and skill placeholders created.`

**CONTRIBUTING.md**  
How to propose and submit a skill. First section: zero git jargon, written for a non-developer. Explain: why contribute, what makes a good skill, how to submit (open a GitHub Issue first, then a Pull Request). Second section: technical PR instructions for contributors who know git.

**SKILL_TEMPLATE.md**  
The skill template from this file as a clean standalone document. Add a short usage guide above the template: when to use it, how to fill each field, what counts as a good example.

**ROADMAP.md**
All ~102 skills listed by category. For each: name, one-line description, status badge. Summary at top: X stable · X beta · X draft · X planned. This file is the living task list — update it every session.

---

### Phase 2 — GitHub community files (4 files)

**.github/ISSUE_TEMPLATE/skill-request.md**  
Fields: Skill name · Media format · What problem it solves · Example input · What the output should look like.

**.github/ISSUE_TEMPLATE/quality-report.md**  
Fields: Skill name · Input used · Output received · What was wrong · What a good output would look like.

**.github/ISSUE_TEMPLATE/bug-report.md**  
Fields: Skill name · Steps to reproduce · What happened · What should have happened.

**.github/pull_request_template.md**  
Checklist: skill follows template · example is real not placeholder · limitations documented · self-tested at least once · no identifiable real-world references.

---

### Phase 3 — Test infrastructure (2 files)

**tests/EVAL_FRAMEWORK.md**  
Two sections:  
(A) Technical protocol for Claude Code: how to generate test outputs, how to run G-Eval scoring, how to record results, when to mark stable.  
(B) Plain-language explanation for any human reviewer: what the six dimensions mean in practical terms, what a score of 4.0 vs 5.0 looks like in a real media context, why this matters. Written so a journalist can read section B and immediately understand the quality system.

**tests/COMMUNITY_REVIEW_CHECKLIST.md**  
Five yes/no questions any user can answer after trying a skill, with no technical knowledge required. Example questions: "Could you use this output in your work without major editing?" · "Did the output stay on topic?" Plain English throughout.

---

### Phase 4 — Skill placeholders (~102 files + matching .evals.json files)

Create every skill file listed in the Repository Structure. Each file:
- `status: planned`
- "What This Skill Does": one-line description of what the skill will do
- All other fields: `TBD`

Create a matching `.evals.json` for each skill:
```json
{
  "skill_name": "skill-name",
  "status": "pending",
  "test_cases": []
}
```

---

### Phase 5 — Session summary report

After completing all phases, output:
- Total files created (foundation + GitHub + tests + skill placeholders)
- Any structural decisions made and why
- One recommended first skill to develop to `stable` (pick based on: broadest appeal across all media formats, clearest possible eval criteria, demonstrable in under 60 seconds)
- Exact command to paste at the start of the next session to continue development
