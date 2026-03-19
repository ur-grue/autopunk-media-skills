---
name: festival-entry-synopsis-writer
status: beta
category: writing
subcategory: institutional
version: 1.0
eval_score: null
tags: [festival, synopsis, documentary, film, competition, submission]
---

# Festival Entry Synopsis Writer

## What This Skill Does
Writes a polished, submission-ready synopsis for a film, documentary, or media project entered into a festival or competition.

## When To Use This Skill
- You are submitting a documentary, short film, or series to a film festival, journalism award, or media competition and need a concise, compelling project description.
- The festival submission form asks for a synopsis in 100, 150, 200, or 300 words and you are unsure how to condense your project without losing its power.
- Your existing synopsis was written for a different purpose (pitch deck, broadcaster, press kit) and needs to be reframed for a jury audience.
- You want to produce multiple length variants of the same synopsis for different submission portals.

## What You Need To Provide
**Required:**
- Project title and format (feature documentary, short film, series episode, audio documentary, etc.)
- Subject and central story — what the film is about and who it follows
- The core question or tension that drives the narrative
- Tone (observational, investigative, lyrical, polemic, hybrid, etc.)
- Target word count for the synopsis (100, 150, 200, or 300 words)

**Optional:**
- Director's name and any notable prior credits
- Country of production and primary language
- Whether the film is completed or in production/post-production at time of submission
- Any festival-specific submission guidelines or restricted content (e.g. "do not mention co-producers," "third person only")
- One sentence describing the visual or stylistic approach if distinctive

## How Claude Approaches This
1. Identifies the single most compelling hook — the human story, the unanswered question, or the stakes — and places it at the opening line rather than burying it in context.
2. Structures the synopsis in three beats: who or what the film is about, what happens or is at stake, and why this film exists now (the "why this, why now" that juries respond to).
3. Calibrates length precisely to the word count requested, leaving no padding and no truncation — every sentence carries weight.
4. Writes in the present tense and third person unless the submission guidelines specify otherwise, which is standard practice for festival synopses.
5. Strips out production jargon, funding references, and technical details that are irrelevant to a jury reading hundreds of submissions.

## Output Format
A single continuous prose synopsis, written in present tense, third person. No headers, no bullet points. Length matched exactly to the target word count (within ±5 words). Tone matches the film's declared register. The final sentence should land with weight — not summarise, but resonate.

## Quality Criteria
- [ ] Opens with the hook, not the backstory or production context
- [ ] Reads cleanly in one pass — no sentence needs to be re-read to be understood
- [ ] Word count falls within ±5 words of the target
- [ ] Tone is consistent with the declared genre and style of the film
- [ ] Contains no production jargon, funding references, or broadcaster names
- [ ] Final sentence creates closure or provokes the reader rather than merely stopping

## Example

### Input
Title: The Counting Season
Format: Feature documentary, 87 minutes, completed
Subject: A small team of government wildlife rangers in a remote inland region conducts the annual census of an endangered bird species. The film follows one senior ranger, Marta, 58, in what she has announced will be her final season before retirement. The census results this year are worse than any on record.
Core tension: Whether Marta can reconcile a lifetime of conservation work with evidence that the species she has devoted her career to may be past saving.
Tone: Observational, slow cinema, moments of quiet devastation.
Target word count: 150 words

### Output
Every spring, Marta and her small team of rangers walk the same river corridors they have walked for three decades, counting birds. This year, they count fewer than ever before.

*The Counting Season* follows Marta, 58, through her final census season — a woman who has given her working life to the protection of a species that the data now suggest cannot be saved. The film observes without intervention: the methodical work of the survey, the silences around the campfire, the moment Marta reads the figures in her field notebook and says nothing.

What does it mean to continue doing necessary work when the outcome is already visible? Shot over six weeks in an inland reserve with a two-person crew, *The Counting Season* is a film about devotion, about what counts as failure, and about the particular grief of people who stay.

## Known Limitations
- Claude cannot verify whether the synopsis meets a specific festival's undisclosed submission criteria — always read the festival's own guidelines before submitting.
- For films with highly experimental or non-linear narrative structures, the three-beat synopsis structure may feel reductive; flag this to Claude and request a more fragmented or associative approach.
- Claude will not invent credits, co-production details, or distribution history. If you need these included, provide them explicitly.
- Word counts are approximate; always verify the final count in your submission form before pasting.

## Related Skills
- [festival-synopsis-writer](../../tv-documentary/localization/festival-synopsis-writer.md)
- [pitch-treatment-writer](../../tv-documentary/development/pitch-treatment-writer.md)
- [press-kit-generator](../../tv-documentary/post-production/press-kit-generator.md)
