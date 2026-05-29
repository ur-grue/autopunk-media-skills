---
title: "How to tell if AI wrote it — and how to make it stop"
tags: ai, writing, media, journalism
canonical_slug: ai-writing-that-doesnt-sound-like-ai
cover_image: https://raw.githubusercontent.com/ur-grue/autopunk-media-skills/main/.github/og-image.png
published: true
---

You can spot it in a sentence. "In today's fast-paced landscape, we're thrilled to delve into game-changing solutions that empower teams to unlock their potential."

Grammatically fine. Recognisably synthetic. And for anyone whose readers notice — journalists, producers, newsletter writers — that register is a liability.

I build a free, MIT-licensed library of Claude skills for media producers. The whole project rests on one idea: AI output for media has to read like a person who knows the format, not like a chatbot. So I had to make "sounds like a human" something you can actually measure, not just feel.

Here is how.

## Name the tells

Most AI prose fails in four observable ways:

- **Lexical** — a vocabulary of words real writers rarely reach for: delve, leverage, robust, seamless, cutting-edge, tapestry, realm, navigate, unlock, empower.
- **Structural** — the false pivot ("not just X, but Y"), the throat-clearing opener ("In this article, we will"), the rule-of-three rhythm on every sentence.
- **Tonal** — manufactured enthusiasm, hedging stacks ("may potentially"), the customer-service apology spiral.
- **Genre** — copy that ignores the conventions of the medium it claims to serve. A show-notes draft that reads like a press release. A lede that buries the news.

Once you can name the tell, you can cut it.

## Make it a quality gate, not a vibe

In the skill library, every skill is scored on a seven-dimension rubric before it ships. Six dimensions are the usual suspects — coherence, relevance, accuracy, and so on. The seventh is a hard floor: **Editorial Naturalness**. A skill can score well everywhere else and still fail if its output reads as machine-made. Below the floor, it does not ship.

That one constraint changes how the skills are written. They stop optimising for "complete and correct" and start optimising for "a working professional would send this without rewriting it."

## The detox pass

There is also a skill whose only job is to strip the tells: feed it AI-flavoured copy, get back a publishable rewrite plus a before/after table so you learn the pattern. It carries the canonical banned-phrase list — the same list a runtime check uses to flag drafts before they go out.

Worked example. Before:

> In today's fast-paced media landscape, our cutting-edge AI-powered solution seamlessly empowers newsrooms to unlock unprecedented efficiencies.

After:

> Three regional dailies now use it for pre-publication checks. None of them call the change transformative. All three call it removing a class of small, repetitive edits from the subbing pass.

Shorter. Concrete. Verifiable. No tells.

## Why this matters for media work

Readers in media are trained to detect manufactured language — it is the job. Copy that pattern-matches to "AI wrote this" costs you credibility before the argument even lands. The fix is not "write a better prompt." It is treating naturalness as a measurable bar and refusing to ship below it.

The library is free and open source. Browse it, copy a skill into Claude, and watch what changes when the AI tells are gone.

→ [github.com/ur-grue/autopunk-media-skills](https://github.com/ur-grue/autopunk-media-skills)
