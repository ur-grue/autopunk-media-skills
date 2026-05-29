---
title: "Why I built 394 narrow Claude skills instead of one big media prompt"
tags: ai, claude, opensource, productivity
canonical_slug: narrow-claude-skills-vs-one-big-prompt
publish_after: 2026-06-12
cover_image: https://raw.githubusercontent.com/ur-grue/autopunk-media-skills/main/.github/og-image.png
published: true
---

The obvious way to build an AI media assistant is one big system prompt: "You are an expert media producer skilled in journalism, video, podcasting, PR..." Load it with everything. Let the model figure out what the user needs.

I went the other way. The library is 394 separate skills, each one narrow — a single task, a single format. A skill for ledes. A skill for show notes. A skill for FOIA letters. A skill that does nothing but strip AI tells out of a draft. Here's why narrow won.

## One big prompt averages everything toward mush

A system prompt that has to be good at everything is good at nothing in particular. Asked for a lede, it gives you a competent-but-generic opening, because its instructions for "writing" are diluted across forty other jobs. The model can't carry the specific conventions of forty formats at full fidelity at once. You get the average. The average is mush.

A narrow skill carries the full weight of *one* format: what a lede actually is, the three styles worth trying, the trap of burying the news, the conventions of the outlet type. Nothing competes for that attention. The output is sharper because the instruction is sharper.

## Narrow skills are testable

This is the part that matters and the part the "one big prompt" approach can't do. Because each skill has one job, you can write assertions for it: did it produce a one-sentence lede? Did it refuse to invent a quote with no source? You can run that across dozens of inputs and get a real pass rate.

You cannot meaningfully eval "be a great media assistant." There's no assertion for it. By splitting the work into narrow skills, every one becomes measurable — and every one in this library is scored against a seven-dimension rubric (with a hard floor on whether the output reads human) before it ships as stable.

## Narrow skills compose

The objection writes itself: forty skills sounds like more work than one prompt. In practice the opposite. You don't load forty — you reach for the one the task needs. And they chain: story-angle-finder → reportage-structure → lede-writer → fact-check → libel-check is a real pipeline, each step's output feeding the next, each step independently good.

## The trade-off, honestly

Narrow means discovery matters — you have to find the right skill. That's a real cost, and it's why the library has role-based guides and a one-command plugin install that lets the model auto-select. The bet is that "sharp and findable" beats "broad and average" for people who care whether the output is shippable. For media work, where the audience detects generic instantly, it's not close.

The whole thing is free and MIT-licensed. Take it apart, fork the structure, tell me where narrow was the wrong call.

→ [github.com/ur-grue/autopunk-media-skills](https://github.com/ur-grue/autopunk-media-skills)
