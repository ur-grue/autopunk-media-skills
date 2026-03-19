---
name: author-bio-writer
status: beta
category: production-support
subcategory: publishing
version: 1.0
eval_score: null
tags: [bio, author, byline, about-the-author, contributor]
---

# Author Bio Writer

## What This Skill Does
Writes a polished, publication-ready author bio in the correct length and tone for the outlet, based on a few facts you provide about the journalist or contributor.

## When To Use This Skill
- A contributor has submitted a piece and you need their bio for the "About the Author" section
- A journalist is being published in a new outlet and needs a fresh bio at the right word count
- You are packaging a multi-author feature and need consistent bio style across all contributors
- An existing bio is too long, too informal, or written in the first person when third person is required

## What You Need To Provide
**Required:**
- The author's full name
- Their current job title and the name of the outlet or organisation they work for (or "freelance" if independent)
- Two or three facts about their work: beats they cover, notable awards, years of experience, countries or regions they have reported from, or types of stories they specialise in

**Optional:**
- Target word count or a length style (e.g., "one sentence," "under 60 words," "two short paragraphs")
- Tone guidance (formal/neutral for broadsheets, conversational for digital outlets, first-person for personal newsletters)
- A link or title of a notable recent piece to reference
- Publication name, so the bio can be written to fit that outlet's style

## How Claude Approaches This
1. Identifies the required length and person (first or third) from your instructions, defaulting to third-person singular if not specified
2. Opens with name, title, and affiliation — the three facts a reader needs immediately — then adds one or two specific details that establish credibility without padding
3. Ends cleanly, without filler phrases like "when not writing, she enjoys…" unless you explicitly ask for a personal touch

## Output Format
One bio at the requested length. Default: third person, 50–80 words. If no length is specified, Claude produces two versions — a short (one sentence, ~25 words) and a standard (~60 words) — so you can choose. No headers, no bullet points, no commentary: just the bio text, ready to paste.

## Quality Criteria
- [ ] Written in the correct grammatical person (first or third) as specified
- [ ] Opens with name, current role, and employer in the first sentence
- [ ] Includes at least one specific credential or beat — not generic praise
- [ ] Free of filler phrases ("passionate about," "in her spare time") unless requested
- [ ] Fits within the requested word count or the 50–80 word default
- [ ] Could be published as-is without copyediting

## Example

### Input
Name: Mara Olusegun
Title: Senior Correspondent
Outlet: freelance, based in Lagos
Facts: covers West African economics and trade policy; has reported from 14 countries across the continent; won a regional press freedom award in 2023; published regularly in international business titles
Length: standard (around 60 words), third person

### Output
Mara Olusegun is a freelance senior correspondent based in Lagos, specialising in West African economics and trade policy. She has reported from fourteen countries across the continent and contributes regularly to international business publications. In 2023 she received a regional press freedom award for her investigative reporting on cross-border trade disputes. Her work focuses on the economic forces reshaping sub-Saharan Africa.

## Known Limitations
- Claude cannot verify the facts you provide. If a detail is wrong in your input, it will be wrong in the output — always check before publishing.
- For journalists with highly specialised or technical beats (derivatives trading, pharmaceutical regulation), the bio may read as slightly generic unless you supply precise, jargon-specific details to include.
- First-person bios for personal newsletters can feel formulaic in a first pass; treat the output as a strong draft that benefits from the author's own voice added back in.

## Related Skills
- [contributor-credits-writer](contributor-credits-writer.md)
- [press-kit-generator](../tv-documentary/post-production/press-kit-generator.md)
