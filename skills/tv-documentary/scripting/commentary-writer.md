---
name: commentary-writer
status: stable
category: tv-documentary
subcategory: scripting
version: 1.0
eval_score: 4.5
tags: [documentary, scripting, narration, commentary, writing]
---

# Commentary Writer

## What This Skill Does
Writes narration or commentary for a documentary sequence, given a description of the picture and research notes or factual context.

## When To Use This Skill
- You have a picture sequence locked or planned and need the narration script written to fit
- You want a draft narration to test against a sequence before committing to a final voice recording
- You are struggling with a section of commentary that is not working and want an alternative approach
- You need narration that adds factual substance without over-explaining what the pictures already show

## What You Need To Provide
**Required:** A description of the sequence: what is seen on screen, shot by shot or section by section; the factual context or research notes the narration should draw on; the approximate total narration length needed (in words or seconds)
**Optional:** The film's narrator voice profile (formal/conversational, detached/intimate, authoritative/questioning); the tone of the surrounding sequences (for tonal consistency); any specific facts or quotes that must appear in this section; the film title and general subject

## How Claude Approaches This
1. Reads the picture description and identifies where narration should be placed — not every image needs words, and good commentary leaves space for the picture to breathe
2. Drafts narration that is subordinate to the picture: it adds what the image cannot show (context, fact, time period, implication) without describing what is already visible
3. Calibrates sentence length and rhythm to documentary speech patterns — short sentences that can be delivered in one breath, with natural pause points between thoughts
4. Reads back to check that narration and picture work together: no moment where the narration fights the emotional register of the image

## Output Format
Formatted commentary script. Each narration block labeled with approximate screen position (e.g., "Over the departure shot," "Into the archive footage"). Word count per block noted. Narration text in regular weight; picture notes in italics. Total word count at the end. Separate Commentary Notes section flagging any sections where the picture description suggests narration should be held or where the factual content was thin.

## Quality Criteria
- [ ] Narration does not describe what the picture already shows
- [ ] Each narration block adds a specific piece of information or context not visible in the image
- [ ] Sentence rhythm is suitable for spoken delivery — no sentences over 25 words without a natural internal break
- [ ] The tone of the commentary is consistent with the film's stated voice register
- [ ] Commentary Notes honestly identifies where the picture description suggests silence works better than words

## Example

### Input
Sequence: A documentary about the last season of a traditional nomadic herding community before they settle permanently.
Picture sequence:
- Wide shot of a vast steppe landscape at sunrise, a small group of yurts visible in the middle distance
- A woman, Altansarnai, 60s, emerges from the central yurt and begins morning tasks
- Children helping load a cart; older family members directing
- The herd — sheep and horses — being gathered for the day's move
- Final shot: the caravan moving away from the empty yurt site, into the landscape

Research notes: This community has herded this route for at least four generations. The government's sedentarization program has offered land and housing subsidies to nomadic families, accelerating settlement. This season, Altansarnai's family will move to a permanent house for the first time. She estimates the route they are covering today has been walked by her family for over 100 years. The family has 340 sheep and 28 horses. The journey between summer and winter pastures takes approximately three weeks.
Narration length: Approximately 120–140 words total
Voice: Quiet, measured, authoritative. No sentimentality. The narration should carry weight without editorial emotion.

### Output

**Commentary Script — Herding Community Opening Sequence**
*Approx. total narration: 128 words*

---

*[Wide landscape shot — sunrise, yurts in middle distance]*

**Narration (over landscape, before Altansarnai appears):**
"For four generations, Altansarnai's family has herded this steppe. Sheep in summer, horses year-round, the same route between the same pastures. The journey between them takes three weeks." *(~35 words)*

---

*[Altansarnai emerges. Morning tasks. Children loading. Older family members directing.]*

**Narration (over the loading sequence):**
"This year, a government subsidy has made it possible — and, for many, inevitable — to stop. A permanent house. Land rights. An end to the route." *(~30 words)*

*[Hold here. Let the image work.]*

---

*[The herd being gathered.]*

**Narration (brief, as herd comes together):**
"Three hundred and forty sheep. Twenty-eight horses. A last season." *(~10 words)*

*[Pause. Let the numbers settle.]*

---

*[Caravan moving away from the empty site.]*

**Narration (over the departure shot — this is the sequence's emotional weight):**
"Altansarnai will tell you she is not sad. She says it practically: the route is harder each decade, the winters longer, the children want something different. She does not say what she will miss." *(~38 words)*

*[Hold on the landscape after the caravan clears frame. Silence.]*

---

**Commentary Notes**

- The loading sequence (children, older family members directing) plays better with minimal narration. The government subsidy context is necessary but should not be emotionally loaded — place it over the activity, not over Altansarnai's face.
- The final shot — caravan moving away — is the sequence's emotional peak. The narration placed here deliberately withholds overt emotion. If the director wants more sentiment, expand the final narration block; if less, cut the last sentence entirely. The image can carry the sequence without any words here.
- "A last season" (10 words) is an intentional short break in narration density. Do not fill it. The number sequence works as a pause before the departure.

## Known Limitations
- Commentary quality depends on the specificity of the picture description. Vague descriptions ("a wide shot of a landscape") produce generic narration. The more specific the picture notes, the more targeted the commentary can be.
- This skill writes narration for the picture description provided. It cannot watch the actual footage and therefore cannot account for timing, pacing, or emotional register that only becomes visible in the cut.
- Research notes are taken at face value. Factual errors in the research notes will appear in the commentary — verify facts before finalizing the narration script.
- Voice calibration is approximate from a written description. A voice profile based on actual recordings or sample narration text from the same film will produce more accurate results than a generic voice description.

## Related Skills
- [narrator-voice-adapter](./narrator-voice-adapter.md)
- [scene-breakdown-writer](./scene-breakdown-writer.md)
- [rough-cut-notes](../post-production/rough-cut-notes.md)
