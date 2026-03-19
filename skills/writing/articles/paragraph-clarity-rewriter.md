---
name: paragraph-clarity-rewriter
status: beta
category: writing
subcategory: articles
version: 1.0
eval_score: null
tags: [editing, clarity, rewriting, journalism, plain-language, accessibility]
---

# Paragraph Clarity Rewriter

## What This Skill Does
Rewrite a single paragraph or short passage for maximum clarity — simplifying complex sentence structures, resolving ambiguity, and making the central point unmistakable to the intended reader.

## When To Use This Skill
- An editor or reader has flagged a specific passage as hard to follow or unclear
- You are simplifying technical, policy, or scientific content for a general news audience
- A translated paragraph has been proofread but still reads unnaturally or densely in English
- You want to test whether a complex idea can be expressed more directly without losing its meaning

## What You Need To Provide
**Required:** The paragraph or passage to rewrite.

**Optional:** Target audience (general public, secondary school level, industry specialists, non-native English readers); the specific clarity problem if known ("too many subordinate clauses", "unclear pronoun reference", "jargon-heavy", "sentences too long"); whether to preserve the original structure or rebuild entirely if needed.

## How Claude Approaches This
1. Identifies the paragraph's core point in a single sentence before touching the text — if the core point cannot be stated clearly, that itself is a clarity problem and is noted
2. Diagnoses what makes the passage unclear: overlong sentence chains, buried main clause, stacked subordinate clauses, passive constructions that hide the actor, abstract nouns standing in for verbs, ambiguous pronoun references, or unnecessary jargon
3. Rewrites prioritising: one idea per sentence, subject-verb-object structure, the main clause first, concrete language over abstract, active voice — while preserving all technical accuracy and the author's intended meaning

## Output Format
The rewritten paragraph, followed by a two-to-three sentence explanation of what was changed and why. Original and rewritten word counts shown as a single line at the end.

## Quality Criteria
- [ ] The core meaning is unchanged — a subject expert would confirm the rewrite says the same thing
- [ ] Average sentence length is shorter than the original
- [ ] No jargon has been introduced that was not in the original
- [ ] A reader unfamiliar with the topic can understand the rewrite on first reading
- [ ] The rewrite could replace the original in the published piece without the author needing to change the surrounding context

## Example

### Input

Paragraph to rewrite:

> The implementation of the revised regulatory framework, which had been the subject of extensive cross-departmental consultation over the preceding eighteen months and which was ultimately adopted by the oversight body following a period of public review during which several amendments were proposed and subsequently incorporated into the final document, has, according to a number of water industry representatives who gave evidence to the parliamentary committee, resulted in a significant increase in the operational and administrative burden faced by municipal water treatment facilities of a size that falls below the threshold at which economies of scale might otherwise serve to offset these additional costs.

Target audience: General newspaper reader

### Output

**Rewritten paragraph:**

A revised regulatory framework — developed over 18 months and amended after public review — has significantly increased the administrative workload for smaller municipal water treatment facilities. Industry representatives told a parliamentary committee the burden is hardest for operators too small to absorb the extra costs through economies of scale.

---

The original contained a single sentence with four nested subordinate clauses, which buried the main point (increased workload for small operators) until the final clause. The rewrite splits it into two sentences, each with a clear subject and verb, and places the main finding first. Technical meaning is preserved; no detail has been removed.

Original: 97 words → Rewritten: 48 words

## Known Limitations
- "Clarity" is context-dependent — a rewrite optimised for a general newspaper reader may feel oversimplified to a specialist audience; always specify the target reader to get a useful result.
- The skill may reduce necessary nuance in complex policy or legal arguments if not instructed to preserve it — use the "preserve complexity" optional instruction when rewriting analytical or argumentative passages.
- Cannot verify the factual accuracy of technical claims; meaning is preserved as written, not fact-checked.

## Related Skills
- [copy-editor](../../editing/copy-editor.md)
- [tone-rewriter](tone-rewriter.md)
- [jargon-flagger](jargon-flagger.md)
