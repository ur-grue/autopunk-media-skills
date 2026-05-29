---
title: "Show notes in under a minute — without the AI tell"
tags: podcast, ai, contentcreation, productivity
canonical_slug: claude-podcast-show-notes-fast
publish_after: 2026-06-19
cover_image: https://raw.githubusercontent.com/ur-grue/autopunk-media-skills/main/.github/og-image.png
published: true
---

Show notes are the chore nobody books time for. The episode's done, you're tired, and now you owe a summary, timestamps, links, and a guest bio — for a page most listeners skim. So it gets rushed, or skipped, or handed to a chatbot that returns "In this captivating episode, we dive deep into the fascinating world of..."

That opening is the tell. A podcast audience — and the host re-reading it — clocks it instantly. It reads like nobody listened to the episode, because nobody did.

I maintain a free, MIT-licensed library of Claude skills for media producers. The show-notes skill is one of the most-used, because it removes the chore without leaving the fingerprint.

## What it does

You paste the transcript or a rough outline. It returns:

- **A summary that sounds like the show** — written in the register of *your* podcast, not the generic "join us as we explore" template.
- **Chapter timestamps** pulled from the actual structure of the conversation, not invented.
- **A links/resources block** for anything named in the episode.
- **A short guest bio** when there's a guest, drawn from what was actually said — flagged for you to confirm, never fabricated.

## Why it doesn't sound like AI

The skill runs against the same quality bar as everything in the library: a seven-dimension rubric whose hard floor is whether the output reads like a human who works in the medium. The banned-phrase list — "dive deep," "captivating," "in this episode we explore" — is enforced, not suggested. What you get back is a draft you can post, not one you have to launder first.

## The honest limit

It's only as good as what you feed it. A clean transcript gives clean notes; a vague three-line outline gives a thinner summary and more placeholders for you to fill. And it won't invent a guest's credentials or a stat that wasn't in the episode — if the source doesn't say it, the notes flag the gap instead of guessing. That restraint is the point: wrong show notes are worse than late ones.

Paste an episode in and see. No install — open the skill, copy it into Claude, drop your transcript below it.

→ [github.com/ur-grue/autopunk-media-skills](https://github.com/ur-grue/autopunk-media-skills)
