---
title: "What 'quality-tested' actually means for a library of 394 AI skills"
tags: ai, opensource, claude, testing
canonical_slug: what-quality-tested-means-claude-skills
publish_after: 2026-06-26
cover_image: https://raw.githubusercontent.com/ur-grue/autopunk-media-skills/main/.github/og-image.png
published: true
---

"Quality-tested" is the kind of phrase that usually means nothing. Every tool claims it. Most mean "we tried it once and it didn't crash." So when a library of 394 free Claude skills puts "all quality-tested, mean 4.38/5" on the tin, the fair response is: prove it.

Here's exactly what the claim means, including where it's soft.

## A skill ships `stable` only if it clears two bars

Every skill carries a status. To reach `stable` — the only status the library promotes — it has to pass a seven-dimension evaluation:

1. **Overall mean ≥ 4.0/5** across coherence, relevance, accuracy, completeness, usefulness, format-fit, and Editorial Naturalness.
2. **Editorial Naturalness ≥ 4.0 as a hard floor** — a skill can ace the other six and still fail here. This dimension scores the output against observable AI tells (lexical, structural, tonal, genre). It's the one that stops competent-sounding slop from shipping.

The library mean across all stable skills is 4.38. The whole framework — dimensions, thresholds, the banned-phrase list — is in the repo, not a marketing page.

## Two stages, because prose isn't code

Code eval is binary: it runs or it doesn't. Prose has no green checkmark, so the library tests in two layers. First, **binary assertions** catch the mechanical failures — did it produce the required sections, did it refuse to fabricate a quote with no source. Across thousands of these the pass rate is high, and the few "failures" were skills *correctly* refusing to invent content on deliberately thin inputs — the behaviour you want. Second, the **graded rubric** above handles the judgment calls binary checks can't.

## Where it's soft — said plainly

The graded scoring uses a model as judge, and models are generous: they tend to like fluent text, including fluent AI text. So the scores are treated as a **filter, not a verdict**. Three things keep them honest:

- the bar is set high (≥ 4.0 *with* the naturalness floor), so borderline output doesn't pass;
- the rubric is anchored on *observable* tells, not taste, so two runs roughly agree;
- the worked example in every skill lets you check the output yourself, by eye, in seconds.

It is not a guarantee every output is perfect. It's a documented, repeatable bar that's a lot higher than "we tried it once."

## Why bother for free skills

Because the audience is media professionals, and they detect generic instantly. A skill library for people who notice bad writing has to be testable on exactly that axis, or the whole premise collapses. The eval framework isn't a credential — it's the thing that makes "doesn't sound like AI" a claim you can check instead of a vibe.

Open the repo, open any skill, read its example, and judge for yourself. That's the test that matters.

→ [github.com/ur-grue/autopunk-media-skills](https://github.com/ur-grue/autopunk-media-skills)
