---
title: Banned terms allowed via pragmas
detox_allow: [leverage, robust]
---

# Article about corporate jargon

This piece is about why newsrooms keep reaching for the word `leverage` even when `use` would do. The whole article needs to *quote* the banned vocabulary, so we whitelist it via front matter — `leverage` and `robust` will not trip.

<!-- detox: allow utilize -->
The press release said the platform would "utilize" machine learning. We left the verb in the quoted passage rather than rewriting a direct quote.

<!-- detox: allow-start -->
> "Our cutting-edge, state-of-the-art platform will revolutionize the newsroom and unleash a paradigm shift," the spokesperson said.
<!-- detox: allow-end -->

After the block, normal rules resume: a clean sentence with no banned phrases.
