---
name: reportage-structure
status: stable
category: magazine-journalism
subcategory: writing
version: 1.0
eval_score: 4.4
tags: [journalism, writing, structure, long-form, narrative, reportage]
---

# Reportage Structure

## What This Skill Does
Builds a complete narrative structure for a long-form reported piece — including opening scene, sourcing map, section-by-section arc, and closing — given the story's central argument, key findings, and available sources.

## When To Use This Skill
- You've done your reporting and have the material, but you're not sure how to structure it into a readable piece
- You have a strong central argument but your notes and interviews are fragmented — you need a skeleton to hang them on
- You're working on a narrative journalism piece that needs more than a standard inverted-pyramid structure
- You're pitching an editor and want to show that your story has a coherent structure before you write it

## What You Need To Provide
**Required:** The central argument or finding of the piece (the "so what" in one sentence); 3–6 key findings, scenes, or moments from your reporting; available sources (types of people you've interviewed — no real names needed); the publication's approximate word count range or format.
**Optional:** The genre of the piece (profile, investigation, narrative essay, data journalism, travel reportage); the publication's house style or comparable pieces; your opening scene or strongest moment (if you already know it); any material you have that is visual or scene-driven versus analytical.

## How Claude Approaches This
1. Identifies the best opening from the material — not necessarily the chronologically first event, but the scene or moment that most efficiently establishes the stakes, the character, and the questions the reader will spend the piece trying to answer.
2. Maps a section-by-section structure: what each section must accomplish (establish, reveal, complicate, resolve), which sources and findings belong where, and how transitions between sections will maintain momentum.
3. Proposes a closing strategy — how to land the piece thematically without over-explaining, and whether the best ending circles back to the opening scene, ends on a final reported moment, or closes on a wider implication of the central finding.
4. After the structure document, provides a "Next Step" note: whether any section has a reporting gap that needs filling before writing begins, whether interview-transcript-editor should be run to extract usable quotes from raw transcripts, and whether the editor pitch summary is ready to send as-is or needs a follow-up headline from headline-generator

## Output Format
A structured document with: Opening Scene Proposal (1 paragraph of description, not actual prose), Section Map (numbered sections with a one-sentence purpose, assigned sources, and assigned findings), and Closing Strategy note. Ends with an "Editor Pitch Summary" — two sentences that describe what this piece is and why it matters, suitable for a pitch email or story meeting. Total length: 400–600 words. Output ends with a "Next Step" note: flag any structural gaps requiring additional reporting, specify whether to send the pitch summary to the editor now, and recommend the next skill to run (interview-transcript-editor or headline-generator).

## Quality Criteria
- [ ] Opening scene is specific and scene-based — not an abstract statement of theme
- [ ] Each section in the map has a clear purpose beyond "more information"
- [ ] Source assignments are specific — not "interview subject" but "the scientist who ran the trial" or "the affected community member"
- [ ] Structure accommodates the material provided — doesn't require new reporting to work
- [ ] Closing strategy is distinct from the opening — not just mirroring the first scene
- [ ] Editor pitch summary can be used as-is in a pitch email
- [ ] Output includes at least one concrete next action the user can take immediately (send pitch summary to editor, fill a reporting gap, run interview-transcript-editor or headline-generator)

## Example

### Input
**Central argument:** Urban heat islands are killing people in cities that have never invested in cooling infrastructure, and the populations most affected are renters who have no control over the properties they live in.
**Key findings:**
1. Average summer temperature in low-income rental neighborhoods is 4–6°C higher than in owner-occupied or wealthier areas of the same city
2. Emergency room admissions for heat illness spike in the same zip codes that show the highest rental density
3. Rental housing codes in most cities do not require landlords to provide air conditioning or maintain buildings below a maximum indoor temperature
4. Several cities are piloting programs to provide free portable AC units to qualifying renters, with early results showing measurable reduction in heat-related ER visits
5. One neighborhood cooling center operated by a community organization serves hundreds of people during heat events — funded entirely by donations with no municipal support
**Sources interviewed:** Public health researcher who studies heat mortality, ER physician, two renters who've been hospitalized for heat illness, a landlord association representative, the director of the community cooling center, a city council member who is proposing rental heat standards legislation
**Format:** Feature for a general-interest magazine, 2,500–3,500 words

### Output

**Narrative Structure: Urban Heat and the Rental Gap**

---

**Opening Scene Proposal**

Open inside the community cooling center on the hottest day of the last recorded summer — the cooling center director moving through a room of 80 people sitting in donated chairs. The room runs on extension cords. Nobody sent the city. Half the people are renters from the surrounding blocks; the other half are elderly. Ground this scene in specifics: the temperature outside, the number of people, the one detail that shows what the cooling center actually is (not what it should be). This scene establishes the story's central irony — the infrastructure for surviving extreme heat exists, but it is improvised and privately funded.

---

**Section Map**

**Section 1 — The Data Problem** *(~500 words)*
*Purpose:* Establish that the heat gap is documented, measurable, and unequal — not a matter of subjective experience.
*Sources:* Public health researcher (temperature and mortality data); ER physician (admissions pattern).
*Findings:* 4–6°C average temperature gap; ER admission spike in rental-dense zip codes.

**Section 2 — The Law's Gap** *(~600 words)*
*Purpose:* Show that the conditions described in Section 1 are not illegal — and why.
*Sources:* Landlord association representative; city council member.
*Findings:* Most rental codes have no cooling requirement; the legislative gap is recent and contested.
*Note:* This is where the landlord association gets a fair hearing — their position on cost and property rights needs to be represented before it's complicated by the renter testimony in Section 3.

**Section 3 — Two Renters** *(~700 words)*
*Purpose:* Ground the data and law in human experience. Two renters who were hospitalized — this section follows them through a heat event.
*Sources:* Two renters.
*Findings:* What happens to a person in an apartment that reaches 38°C with no recourse. What contacting the landlord looked like. What the ER bill cost.
*Note:* Do not editorialize here — let the specifics carry the moral weight.

**Section 4 — The Pilot Programs** *(~500 words)*
*Purpose:* Complicate the narrative — solutions exist and some are working. This prevents the piece from being purely critical without resolution.
*Sources:* City council member; public health researcher (early results data).
*Findings:* Free AC unit programs show measurable ER reduction; the model is replicable but not yet mandated.

**Section 5 — What the Cooling Center Costs** *(~400 words)*
*Purpose:* Return to the opening scene and reveal its full significance — the cooling center works, but it's one power outage away from failure.
*Sources:* Cooling center director.
*Findings:* Budget, funding fragility, capacity limits during actual heat emergencies.

---

**Closing Strategy**

Return to the cooling center director — end the piece with a single moment or observation from your reporting that captures the gap between what exists and what would be needed. Do not explain the gap. Let the image do the work. Avoid the common trap of ending with a quote that summarizes the piece's argument. The strongest close is a final reported scene that the reader interprets, not a source telling them what to think.

---

**Editor Pitch Summary**

In most American cities, the law requires landlords to heat a property but not to cool it — leaving the poorest renters with no legal recourse during heat events that are now killing people at rates that rival winter cold. This piece reports the gap between what the data shows, what the law allows, and what one community cooling center run on donations is doing in the absence of policy.

---

## Known Limitations
- This skill builds a structure from the material you provide — it cannot identify what you're missing. If your reporting has a significant hole (e.g., no source who represents the opposing position), the structure will be built around that gap. A structural review is not a reporting review.
- This structure assumes you are working in the Western narrative journalism tradition. For other traditions (inverted pyramid news, data-led journalism, essay form), specify this in your input — the structure will be adjusted accordingly.
- Section word counts are illustrative. Editorial requirements and the weight of your actual material will require adjustment.

## Related Skills
- [headline-generator](../ideation/headline-generator.md)
- [story-angle-finder](../ideation/story-angle-finder.md)
- [interview-transcript-editor](../writing/interview-transcript-editor.md)
