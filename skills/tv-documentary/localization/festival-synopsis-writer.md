---
name: festival-synopsis-writer
status: stable
category: tv-documentary
subcategory: localization
version: 1.0
eval_score: 4.5
tags: [documentary, localization, festivals, synopsis, submission]
---

# Festival Synopsis Writer

## What This Skill Does
Writes short (50 words), medium (100 words), and long (250 words) festival synopses for a documentary film — formatted to meet the standard submission requirements of international film festivals.

## When To Use This Skill
- You are submitting a documentary to film festivals and need synopses in multiple lengths for different platform fields
- Your existing synopsis is technically accurate but not compelling enough to attract a programmer's attention
- You need synopses that work in translation — clear, unambiguous sentences that survive into a second language
- You want to adapt a pitch treatment synopsis into a completed-film synopsis (different tense, different emphasis)

## What You Need To Provide
**Required:** Documentary title; a 4–8 sentence description of the film — its subject, central character(s), the question or conflict it follows, and how it ends or concludes; whether the film is completed or in post-production
**Optional:** Runtime; whether the synopsis should describe a finished film or a work-in-progress; any sentence from an existing synopsis you want preserved; tone of the film (polemical, intimate, ironic, observational); any festival-specific requirement you are aware of

## How Claude Approaches This
1. Identifies the single most compelling element of the documentary — the specific quality that makes it distinct from other films on the same subject
2. Writes the 50-word synopsis (logline-plus) first: this is the hardest constraint and tests whether the film's premise is genuinely focused
3. Expands to 100 words by adding context — the subject's situation, the film's emotional register, and a hint of how the narrative concludes
4. Writes the full 250-word synopsis with character introduction, narrative arc, and a closing line that conveys the film's perspective or emotional resonance — without summarizing it like a report
5. Reviews all three for tonal consistency: the longest synopsis should feel like an expanded version of the shortest, not a different document

## Output Format
Three clearly labeled synopsis blocks: SHORT (50 words), MEDIUM (100 words), LONG (250 words). Each preceded by its word count in parentheses. Written in third person, present tense (standard festival convention). One brief usage note per length explaining where that length is typically required.

## Quality Criteria
- [ ] Short synopsis is under 60 words (festivals enforce strict limits)
- [ ] All three synopses describe a finished film experience, not a production process
- [ ] No synopsis uses production language ("the filmmakers show," "the camera follows") — describe story, not production
- [ ] The long synopsis ends with a sentence that conveys the film's emotional or intellectual payoff
- [ ] All three synopses are tonally consistent — the same voice at different levels of detail
- [ ] No synopsis fabricates story events not present in the provided description

## Example

### Input
Title: THE LONG SEASON
Description: A documentary following a sheep farmer in her late sixties who is facing the end of a 40-year career on the land she inherited from her father. Her only son has decided not to take over the farm. Over one final farming year, the film observes her daily work, her decisions about what to sell, and her process of letting go. The film ends with the farm's sale and her first month in a rented house nearby. Observational, no narrator. Completed film.
Runtime: 78 minutes

### Output

---

**SHORT** *(50 words — use for: Sundance, IDFA, Hot Docs short synopsis field)*

After forty years farming the land her father left her, Margaret faces one final season. Her son will not take over. The farm will be sold. *THE LONG SEASON* observes her last year — the daily work, the decisions, and the slow process of leaving something that was never supposed to end.

*(48 words)*

---

**MEDIUM** *(100 words — use for: festival catalog entry, press kit, most screener platform fields)*

Margaret has farmed the same land for four decades. She inherited it from her father; her son will not inherit it from her. When she decides to sell, she gives herself one more full year — not to change her mind, but to finish what she started.

*THE LONG SEASON* observes that year without commentary: the lambing season, the accounts, the fences that still need mending, and the gradual disappearance of the things that defined her days. By the time the sale completes, the film has made an argument about time, inheritance, and what it means to work the same ground your whole life.

*(100 words)*

---

**LONG** *(250 words — use for: IDFA extended synopsis, broadcaster synopsis, film festival competition entries requiring full description)*

Margaret has farmed the same stretch of upland for forty years. She learned it from her father, who farmed it before her. Her son, who grew up on it, has chosen a different life. When Margaret decides to sell, there is no drama in the decision — just a quiet acknowledgment that some things end.

*THE LONG SEASON* follows her through one final year on the land. The film begins in early spring, with lambing — the part of the year Margaret says she has never learned to stop feeling urgent about. It moves through the rhythms of her work: the feeding rounds, the veterinary calls, the paperwork she does at the kitchen table after dark. There are no dramatic turns. The farm does not fail. No crisis forces her hand. What the film watches, instead, is the texture of a life organized around a single place — and what happens to that life when the place is no longer yours.

As the year moves toward autumn and the sale approaches, Margaret begins to sort: what to keep, what to sell, what belongs to the land itself. The film ends not with the transaction but with her first morning in the rented house nearby — looking out a window that faces a different direction.

*THE LONG SEASON* is a film about the kind of ending that doesn't announce itself. About the difference between finishing and being finished.

*(249 words)*

---

## Known Limitations
- Word counts should be verified before submission — festival form fields sometimes have lower limits than stated guidelines; count words in your paste, not in this output
- This skill writes synopses in English; for multilingual submissions, the English synopsis should be professionally translated rather than machine-translated, as festival programming decisions are made on language quality
- If the film's ending is not yet known (work-in-progress), specify this clearly — the skill will write a WIP-appropriate synopsis that describes the film's subject and approach without fabricating a resolution
- Festival synopsis conventions vary by event; some require director's statement language, others prohibit first-person; check each festival's specific requirements

## Related Skills
- [logline-creator](../development/logline-creator.md)
- [pitch-treatment-writer](../development/pitch-treatment-writer.md)
- [press-kit-generator](../post-production/press-kit-generator.md)
