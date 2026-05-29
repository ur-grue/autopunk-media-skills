---
title: "FOIA letters are a format, not a vibe — so I made Claude write them properly"
tags: journalism, ai, foia, opensource
canonical_slug: claude-foia-request-letters-for-journalists
cover_image: https://raw.githubusercontent.com/ur-grue/autopunk-media-skills/main/.github/og-image.png
published: true
---

Ask a general-purpose chatbot for a public-records request and you get something that looks like a letter and works like a liability. It misses the statute. It asks for "any and all documents" — the phrasing agencies love to reject. It promises a fee waiver you didn't qualify for. It sounds confident and gets you nothing.

A records request is a format with rules. Cite the right law. Describe the records narrowly enough to be findable and broadly enough to catch what you want. State your fee-waiver basis correctly. Set the response clock. Miss any of those and you've burned weeks waiting for a "no."

I maintain a free, MIT-licensed library of Claude skills for media work, and the FOIA/records skills are some of the most-used. Here's what "properly" means.

## What the skill actually does

You give it: the records you want, the agency that holds them, and your jurisdiction. It gives back a filing-ready letter that:

- **Cites the correct statute** — US federal FOIA (5 U.S.C. § 552), a named state public-records act, or the EU/UK equivalent — not a generic "freedom of information" gesture.
- **Scopes the request** so it's specific (date ranges, record types, named offices) instead of the "any and all" phrasing that invites a denial.
- **States the fee-waiver basis** in the language the statute uses — public interest, news-media requester status — only when it actually applies.
- **Sets the response deadline** the law requires, so you know when silence becomes appealable.
- **Leaves a clean appeal trail** — structured so that if you're denied, your next letter writes itself.

## Why this beats "write me a FOIA request"

The difference isn't eloquence. It's that the skill encodes the procedural knowledge a beat reporter accumulates over years: which exemptions agencies hide behind, how to pre-empt the "too broad" rejection, when a fee waiver is real. A blank-slate prompt doesn't carry any of that — so it produces a letter that reads well and fails procedurally.

## The honest limits

It is not legal advice, and it does not know your specific agency's quirks. Statutes change; local rules vary. The skill gives you a strong, correctly-structured draft — you still confirm the citation for your jurisdiction and adjust for the body you're filing against. It will also tell you when your request is too vague to file, instead of inventing specifics.

The whole library is free. If you file records requests, start with the FOIA skill and the document-analysis skill that pairs with it — feed in what comes back, get a structured read of what's in it and what's missing.

→ [github.com/ur-grue/autopunk-media-skills](https://github.com/ur-grue/autopunk-media-skills)
