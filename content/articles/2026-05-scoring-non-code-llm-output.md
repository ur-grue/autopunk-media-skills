---
title: "How do you eval LLM output that isn't code?"
tags: ai, llm, evaluation, writing
canonical_slug: scoring-non-code-llm-output
cover_image: https://raw.githubusercontent.com/ur-grue/autopunk-media-skills/main/.github/og-image.png
published: true
---

Code has a luxury: it either runs or it doesn't. You write an assertion, you run it, you get a green check or a red one. Most LLM eval frameworks lean on exactly this — `assert output contains X`, `assert valid JSON`, `assert no error`.

Editorial output has no such luxury. A pitch treatment, a show-notes draft, a lede — there's no test that returns true for "a working producer would send this." So how do you evaluate it without a human reading every output, every time?

I had to answer this concretely, because I maintain a library of ~400 Claude skills for media work, and "trust me, it's good" is not a quality bar. Here's the approach.

## Two stages: binary first, judgment second

**Stage one is the cheap filter — binary assertions.** Even for prose, a lot of failure is mechanical and testable: did it produce the required sections? Is the lede one sentence? Did it refuse to fabricate a quote when given no source? These catch the obvious breaks fast, run blind across many inputs, and cost nothing. The library runs thousands of these. The interesting result: the few "failures" were skills correctly *refusing* to invent content on deliberately thin inputs — the desired behaviour, not a bug.

**Stage two is the part that matters for prose — graded judgment.** A model scores each output 1–5 across seven dimensions: coherence, relevance, accuracy, completeness, usefulness, format-fit, and one more that does the real work.

## The dimension that does the work: Editorial Naturalness

Six of the seven dimensions are standard. The seventh is a hard floor: does this read like a person who knows the medium, or like a model?

This is scored against observable tells, not vibes:

- **Lexical** — the AI vocabulary (delve, leverage, robust, seamless, tapestry).
- **Structural** — the false pivot ("not just X, but Y"), throat-clearing openers, rule-of-three on every line.
- **Tonal** — manufactured enthusiasm, hedging stacks, the apology spiral.
- **Genre** — does it honour the conventions of the format it claims to serve?

A skill can score 5/5 on the other six and still fail. If Editorial Naturalness is below the floor, it doesn't ship. That single constraint is what stops the library drifting into competent-sounding slop.

## Why a hard floor and not an average

Averages hide the thing you care about. A draft that's accurate, complete, well-structured — and unmistakably machine-written — would pass an averaged score comfortably. For media work that draft is useless: the audience clocks it in a sentence. The floor forces the failure to surface instead of being averaged away.

## The honest limitation

A model grading prose is generous — it tends to like fluent text, including fluent AI text. So the scores are treated as a filter, not a verdict: they catch the clear failures and rank candidates, but the bar for "stable" is deliberately set high (≥ 4.0 with the naturalness floor), and the rubric is anchored on *observable* tells rather than taste, so two runs roughly agree. It's not perfect. It's a lot better than shipping on feel.

The whole framework — dimensions, thresholds, the banned-phrase list — is open source. If you're evaluating non-code LLM output, take it apart and tell me where it's too soft.

→ [github.com/ur-grue/autopunk-media-skills](https://github.com/ur-grue/autopunk-media-skills)
