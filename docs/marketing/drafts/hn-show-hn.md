# Show HN submission — autopunk-media-skills

## Submission timing

- **Best window:** Tuesday or Wednesday, 8:00–10:00 a.m. US Eastern. Avoid Friday afternoons and weekends.
- **Account:** Use maintainer's personal HN account (must be >1 week old, has at least one prior comment to look legit).
- **Pre-submit checklist:** README hero is polished, demo GIF is in place, repo is public, license is MIT, social preview renders.

## Title (pick ONE — A/B by gut)

Submission titles for Show HN must start with "Show HN:". HN strips marketing language. Keep it concrete and specific.

**Option A (recommended — concrete number + audience):**
> Show HN: 394 free Claude skills for media professionals

**Option B (lead with the quality claim):**
> Show HN: A library of Claude skills evaluated against a 7-dimension rubric

**Option C (lead with the gap):**
> Show HN: Claude skills written by a commissioning editor, not an AI engineer

Use **A** unless the maintainer feels strongly otherwise. It performs best in tests of this title pattern (concrete-N + audience-noun).

## URL

```
https://github.com/ur-grue/autopunk-media-skills
```

## First comment (post immediately after submission)

HN convention: drop a first comment from the submitter explaining what you built, why, and what you want feedback on. Keep it to 4–6 short paragraphs, no hype, no emojis.

```
Hi HN — I'm a commissioning editor in public broadcasting. Over the last few
years I've watched friends and colleagues use ChatGPT and Claude to speed
up the writing parts of their jobs — pitch treatments, show notes, interview
questions, press releases — and get output that mostly sounds like a chatbot
pretending to know the format.

This repo is the opposite end of that. 394 Claude skills, each one a small
prompt + instruction document for a specific media task. Written by someone
who actually does the work and cares about whether the output is shippable.

393 skills are currently marked stable, which in this repo means they passed
a G-Eval pass at ≥ 4.0/5 across seven dimensions including a hard floor on
"Editorial Naturalness" — meaning the output has to read like a human
professional in the medium, not like generic AI prose. Only one is still in draft.
The full eval framework is documented in tests/EVAL_FRAMEWORK.md.

The skills follow the Agent Skills file format so they work in Claude Code,
Cursor, Codex CLI, Gemini CLI, and the various MCP-aware clients. But you
can also just open one in the browser and paste it into Claude with your
material — no install, no tooling. That's the actual user I built it for.

What I'd love feedback on:
1. Skills that look promising on paper but produce mediocre output for you —
   I want to know where the evaluation framework is too generous.
2. Categories that are missing. There's a long planned list in ROADMAP.md
   but I trust HN's instincts on where the real demand is.
3. Anyone here who works in news/docs/podcasts/YouTube and has a workflow
   that isn't covered — I'll add a skill for it.

MIT licensed. Repo: https://github.com/ur-grue/autopunk-media-skills
```

## What NOT to do (HN-killers)

- Don't say "the largest library" or "the most comprehensive" anywhere in submission or first comment. HN flags hype language.
- Don't use marketing emojis or section headers in the first comment.
- Don't reply to negative comments defensively. Acknowledge specific criticism, ignore generic dunks.
- Don't ask for upvotes anywhere (forbidden, will be flagged).
- Don't post when the maintainer can't be online for 6+ hours to engage with comments. First 2 hours after submission decide front-page or not.

## Engagement script (first 2 hours)

The maintainer should be at a laptop for the first two hours after posting. Goal: respond substantively to every thread within 15 minutes. Specific tactics:

- For "is this just a list of prompts?" comments → answer with the structural difference (skill = name + when-to-use + required-inputs + how-Claude-approaches-it + quality criteria + working example + known limitations). Link to one specific skill file.
- For "how is this different from awesome-claude-skills?" → answer honestly: awesome lists aggregate, this is a single curated library by one author with a documented eval pipeline. Link to the eval framework.
- For "what's your monetization?" → state plainly: there's a separate paid product at thepitchdoctor.io but the skill library is MIT and not gated.
- For domain experts asking about a specific skill → invite them to open an Issue with a request or a quality report.

## After the submission

- **If it front-pages:** push the X thread (`twitter-x-thread.md`), notify Anthropic Discord/Claude community, send to newsletters in the queue.
- **If it stalls at 5–15 points:** don't relaunch the same post. Let it die quietly. Wait 48–72 hours and Show HN again with a different framing (Option B title), bundled with a new artifact (e.g. "we now have a demo video / 400 skills / a new category"). Reuses must add something material.

## Handoff

This file is the publishable artifact for the HN submission. Maintainer or scheduled agent fires it on the day determined by AUT-20 plan (target: Day 3 of the sprint).
