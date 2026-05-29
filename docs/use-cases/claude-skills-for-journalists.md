# Claude skills for journalists

Most AI writing tools hand a reporter copy that reads like a chatbot — fluent, generic, and wrong on the things a desk cares about. This is a free, MIT-licensed library of **394 Claude skills**, built by a working commissioning editor, for the actual jobs in a newsroom: finding the angle, filing records requests, checking claims, and writing a lede that holds.

No account, no install: open a skill, copy it, paste it into [claude.ai](https://claude.ai) with your material.

## The reporting arc, skill by skill
- **Find the story:** story-angle-finder, headline-generator, research-brief-creator
- **Investigate:** source-research-brief, foia-request-writer, document-analysis-summary
- **Write it:** lede-writer, reportage-structure, news-article-writer
- **Verify & make it safe:** claim-verification-checklist, fact-check-prompt, libel-check-brief
- **Promote it:** newsletter-teaser-writer, social-media-excerpt

→ Full walkthrough: [the journalist guide](../for/magazine-journalist.md).

## Why it's different
Every skill ships against a documented seven-dimension quality rubric with a hard floor on **Editorial Naturalness** — the output has to read like a working journalist, not a model. See the [eval framework](../../tests/EVAL_FRAMEWORK.md).

Working on an investigation? There's a full [Investigative Reporter Agent](../../README.md#agents) that runs the pipeline end to end.

**[Browse the library →](https://github.com/ur-grue/autopunk-media-skills)**
