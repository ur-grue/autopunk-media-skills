# Starter Issues for New Contributors

5 GitHub issues designed to attract first-time contributors. Each is scoped, self-contained, and labeled `good first issue`.

Create these issues on GitHub using the titles, bodies, and labels below.

---

## Issue 1: Add skill — interview-prep for podcast guests

**Title:** Add skill: interview-prep for podcast guests

**Labels:** `good first issue`, `new skill`, `podcast`

**Body:**

```
## Skill request

**Skill name:** guest-interview-prep
**Category:** podcast/pre-production
**Target status:** draft

## What this skill should do

Generate a preparation brief for podcast guests before they appear on a show. The output should help the guest understand the show format, likely questions, talking points to prepare, and practical details (episode length, tone, audience).

## Why this is useful

Podcast hosts often send guests a plain email with minimal context. A structured prep brief reduces awkward moments, improves episode quality, and makes guests more likely to return.

## What to include

- Show format summary (solo, co-hosted, panel)
- Likely question areas based on the guest's expertise
- Suggested talking points and anecdotes to prepare
- Practical info: episode length, recording platform, tone guide
- One honest limitation in the skill file

## How to contribute

1. Copy `SKILL_TEMPLATE.md` into `skills/podcast/pre-production/guest-interview-prep.md`
2. Fill in all fields with real, generic examples
3. Set status to `draft`
4. Open a PR referencing this issue
```

---

## Issue 2: Add skill — TikTok caption generator

**Title:** Add skill: TikTok caption generator

**Labels:** `good first issue`, `new skill`, `social-media`

**Body:**

```
## Skill request

**Skill name:** tiktok-caption-writer
**Category:** social-media/content
**Target status:** draft

## What this skill should do

Generate short, engaging captions for TikTok videos. The skill should understand TikTok's character limits, hashtag conventions, hook-first writing style, and platform tone (casual, direct, scroll-stopping).

## Why this is useful

TikTok captions have different conventions from Instagram or Twitter. Media professionals repurposing content across platforms need captions tuned to each platform's culture and algorithm.

## What to include

- Hook-first caption structure
- Hashtag strategy (mix of niche and broad)
- CTA options (comment bait, share prompt, follow prompt)
- Tone adaptation (serious news vs. entertainment vs. educational)
- Character limit awareness
- One honest limitation

## How to contribute

1. Copy `SKILL_TEMPLATE.md` into `skills/social-media/content/tiktok-caption-writer.md`
2. Fill in all fields with real, generic examples
3. Set status to `draft`
4. Open a PR referencing this issue
```

---

## Issue 3: Improve logline-creator edge case handling

**Title:** Improve: logline-creator edge case handling for short-form content

**Labels:** `good first issue`, `improvement`, `tv-documentary`

**Body:**

```
## Improvement request

**Skill:** skills/tv-documentary/development/logline-creator.md

## What needs improving

The logline-creator currently works well for standard documentary and feature-length formats. It does not handle short-form content well — specifically:

- Social media documentaries (under 5 minutes)
- YouTube Shorts / TikTok documentary clips (under 60 seconds)
- Instagram Reels with documentary content

## What a good fix looks like

- Add guidance in "How Claude Approaches This" for short-form loglines
- Add at least one short-form example in the Example section
- Update Known Limitations if short-form handling is still partial
- Keep the existing long-form functionality intact

## How to contribute

1. Read the current skill file
2. Edit to add short-form handling
3. Open a PR referencing this issue
```

---

## Issue 4: Add workflow — Radio News Package

**Title:** Add workflow: Radio News Package (bulletin, package, two-way)

**Labels:** `good first issue`, `new skill`, `writing`

**Body:**

```
## Skill request

**Skill name:** radio-news-package-writer
**Category:** writing/broadcast
**Target status:** draft

## What this skill should do

Generate a complete radio news package from a story brief. The output should include three components:

1. **Bulletin copy** — 20-second read for hourly news summaries
2. **Package script** — 90-second produced piece with cue, voice track, and clip placeholders
3. **Two-way brief** — talking points for a live Q&A between anchor and reporter

## Why this is useful

Radio journalists often need to produce all three formats from the same story under tight deadlines. Having a structured starting point for each format saves significant time.

## What to include

- Standard radio script formatting (cues, in/out words, duration markers)
- Appropriate tone for broadcast (conversational, present tense, active voice)
- Clip/actuality placeholders with suggested content
- Duration targets for each component
- One honest limitation

## How to contribute

1. Copy `SKILL_TEMPLATE.md` into `skills/writing/broadcast/radio-news-package-writer.md`
2. Fill in all fields with real, generic examples
3. Set status to `draft`
4. Open a PR referencing this issue
```

---

## Issue 5: Translate hook-generator to German

**Title:** Translate: hook-generator to German (de locale)

**Labels:** `good first issue`, `translation`, `youtube`

**Body:**

```
## Translation request

**Source skill:** skills/youtube/pre-production/hook-generator.md
**Target locale:** German (de)
**Target path:** skills/locales/de/youtube/pre-production/hook-generator.md

## What this involves

Translate the hook-generator skill into German. This means:

1. Translate all user-facing text (descriptions, instructions, examples)
2. Adapt the example to work naturally in German — do not just translate English hooks word-for-word; German YouTube conventions may differ
3. Keep the frontmatter field names in English (they are structural, not user-facing)
4. Set status to `beta`

## Why this is useful

German is one of the largest YouTube markets in Europe. German-speaking creators benefit from hooks written in natural German, not translated English.

## Requirements

- Native or near-native German fluency
- Familiarity with German YouTube content conventions
- Follow the existing locale structure in `skills/locales/`

## How to contribute

1. Read the source skill in English
2. Create the German version at the target path
3. Open a PR referencing this issue
```
