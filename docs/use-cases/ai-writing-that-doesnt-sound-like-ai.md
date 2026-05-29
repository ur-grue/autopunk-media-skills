# AI writing that doesn't sound like AI

You can spot it in a sentence: "In today's fast-paced landscape, we're thrilled to delve into game-changing solutions." Grammatically fine, recognisably synthetic. For anyone whose readers notice — journalists, producers, newsletter writers — that register is a liability.

This library treats "sounds like a human in the medium" as a measurable quality bar, not a vibe.

## How
- **A named quality dimension.** Every one of the **394 skills** is scored on a seven-dimension rubric whose hard floor is **Editorial Naturalness**: the output is checked against lists of lexical, structural, tonal, and genre tells of AI prose. Below the floor, it isn't marked stable. See the [eval framework](../../tests/EVAL_FRAMEWORK.md).
- **A skill that removes the tells.** [`ai-writing-detox`](../../skills/editing/ai-writing-detox/SKILL.md) rewrites AI-flavoured copy into a publishable register and ships the canonical banned-phrase list — the same list a runtime hook uses to flag drafts before they ship.
- **Dogfooding.** The project's own marketing copy is run through that skill before it's posted.

## Try it
Paste a paragraph you suspect was AI-drafted into `ai-writing-detox` and read the before/after. No install — [claude.ai](https://claude.ai), paste, done.

**[Browse the library →](https://github.com/ur-grue/autopunk-media-skills)** · MIT licensed, built by a working editor.
