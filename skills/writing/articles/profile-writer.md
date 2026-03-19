---
name: profile-writer
status: beta
category: writing
subcategory: articles
version: 1.0
eval_score: null
tags: [profile, feature, portrait, character-study, long-form, personality]
---

# Profile Writer

## What This Skill Does
Transforms reported notes, quotes, and biographical facts about a living person into a structured profile feature ready for a magazine, newspaper, or long-form website.

## When To Use This Skill
- You have conducted an interview and need to shape raw notes and quotes into a narrative profile
- You are writing a profile of someone who is newsworthy right now (a new appointment, a controversy, a notable achievement) and need a draft quickly
- You are profiling a private individual — an expert, a local figure, a subject of a social story — and want a structure that will hold reader interest across 800–1,500 words
- You need to decide which details to foreground and which to cut before committing to a full draft

## What You Need To Provide
**Required:**
- Subject's name, age, and current role or position
- The news hook or reason this person is being profiled now
- At least two direct quotes from the subject (or people who know them)
- Three to five biographical facts (career milestones, background, formative events)
- One physical or behavioural detail observed during the interview — what they look like, how they speak, where the conversation took place

**Optional:**
- Quotes from colleagues, critics, or family members (adds dimension; profiles without outside voices can feel flat)
- A scene from the interview or from the subject's working environment
- A contradiction or tension in the subject's story — the most interesting profiles hinge on one
- A formative moment the subject has spoken about publicly
- Target publication (Claude will match register: broadsheet, magazine, trade press)
- Word limit (default: 1,000 words)

## How Claude Approaches This
1. Opens in scene — not with a biographical summary. The reader meets the subject doing something, saying something, or in a specific place. A profile that begins "John Smith was born in..." loses the reader before the story starts. Claude uses the observed detail the user supplies, or opens on the most vivid quote if no scene is available.
2. Introduces the news hook in the second or third paragraph: why this person, why now. This is the bridge between the opening scene and the biographical body.
3. Develops the subject's character through a combination of reported fact, direct quotation, and outside perspective. Claude identifies the central tension or contradiction in the material — the gap between how the subject sees themselves and how others see them, or between their stated values and their recorded actions — and uses it as the structural spine of the body section.
4. Closes with a final scene, quote, or reflection that leaves the reader with a lasting impression of the person rather than a summary of their career. The last paragraph of a profile is not a conclusion; it is an exit.

## Output Format
- Length: 800–1,200 words unless specified otherwise
- Structure: opening scene → news hook → character body (alternating fact, quote, outside perspective) → closing moment
- Tone: curious, observational, neutral but not blank — the writer's point of view is present in what is selected and foregrounded, not in editorialising
- Third person throughout; first person only if the writer's presence in the interview is relevant to the story
- Subheadings optional — many publications prefer continuous prose for profiles; Claude omits them unless the user requests them
- Direct quotes are formatted with opening dialogue marks and attribution; Claude never invents quotes

## Quality Criteria
- [ ] Opens in scene or with a specific detail — not a biographical summary or a generalisation
- [ ] News hook is clear by the end of the third paragraph
- [ ] At least one genuine tension or contradiction in the subject's story is identified and explored
- [ ] Outside voices (if supplied) are used to add perspective, not just praise
- [ ] No invented quotes; all quotations come from the user's input
- [ ] Closing paragraph provides an exit, not a summary
- [ ] Word count is within 10% of the specified or default limit
- [ ] The subject reads as a full person, not a walking career history

## Example

### Input
Subject: Dr. Renata Ferreira, 51, chief medical officer at a regional public hospital network
News hook: She has just published a report arguing that emergency departments in mid-sized cities are structurally underfunded and will face a capacity crisis within five years — a finding that has drawn criticism from the health ministry
Interview setting: Her office, mid-afternoon; she is eating a sandwich at her desk when the interview starts; she doesn't apologise for it
Direct quotes from subject:
- "I've been saying this for three years. At some point I stopped caring whether it was diplomatically timed."
- "The ministry's response confirmed exactly what the report found — they are managing perception, not capacity."
Biographical facts:
- Trained as an emergency physician; worked in field medicine for Médecins Sans Frontières for four years in the late 2000s
- Became CMO seven years ago; youngest person appointed to the role in the network's history
- Has a reputation internally for bluntness; two senior administrators left the network in her first two years
- Grew up in a rural area with limited healthcare access; has said this shaped her view of what hospitals are actually for
Outside voice: Her deputy, Dr. Marcus Osei, says: "She is not interested in being liked by the right people. That's either her greatest strength or the reason this report will be ignored. Possibly both."
Central tension: She is a senior institutional figure who speaks and acts like someone who has nothing to lose. The report may be correct and may still cost her the job.

### Output
Renata Ferreira is eating a sandwich when the interview starts, and she doesn't apologise for it. The office of the chief medical officer of a regional hospital network looks like someone lost a fight with a filing system: reports stacked on reports, a whiteboard covered in a colour-coded capacity model she hasn't erased in eight months because, she says, nothing in it has changed. She doesn't offer a more comfortable chair. She has already told her assistant she needs the afternoon back by three.

The sandwich is almost finished when she says the thing that explains the room, the whiteboard, and the missing chairs. "I've been saying this for three years," she says. "At some point I stopped caring whether it was diplomatically timed."

Three weeks ago, Ferreira published a report concluding that emergency departments in mid-sized cities are structurally underfunded and will face a capacity crisis within five years. The health ministry responded within 48 hours — unusually fast — calling the methodology "selective" and the conclusions "premature." Ferreira read the response and filed it. "It confirmed exactly what the report found," she says. "They are managing perception, not capacity."

She is 51, and she has spent her career in rooms where the gap between what is being said and what is true is the main feature of the furniture. She trained as an emergency physician, spent four years with Médecins Sans Frontières in the late 2000s running field medicine in under-resourced settings, and came back to domestic medicine with the particular impatience of someone who has seen what hospitals look like when they actually run out of capacity — not metaphorically, but in fact. She grew up in a rural area where a serious illness meant a two-hour drive. She has said, in speeches that her communications team has quietly stopped excerpting, that this is why she is not very interested in the difference between a hospital that looks well-funded and one that is.

She became CMO of the network seven years ago, the youngest appointment in the role in its history. Two senior administrators left in her first two years. People who have worked with her describe this with the careful neutrality of people who are still working with her.

Her deputy, Dr. Marcus Osei, is less careful. "She is not interested in being liked by the right people," he says. "That's either her greatest strength or the reason this report will be ignored. Possibly both."

The report's core finding is not, in fact, complicated. Emergency departments in mid-sized cities occupy a funding gap between major urban centres, which attract political attention, and rural areas, which attract moral attention. Mid-sized cities get neither. The capacity model on Ferreira's whiteboard shows a system operating at 87% of surge capacity on a standard weekday. A bad flu season pushes it past 100%. She has been presenting versions of this data to ministry officials since she took the job. The report is the version she decided to make public.

The ministry's criticism — that the methodology is selective — is a charge she anticipated. The report includes a 12-page methodology appendix. She added it herself after a draft review. "If someone wants to argue with the numbers, I want the argument on the record," she says.

Whether the report changes anything is a separate question from whether it is right, and she knows it. She has watched correct findings get managed before. The sandwich is gone. She is already looking at the whiteboard.

"Five years," she says, not to the interviewer particularly. "Let's see."

## Known Limitations
- A profile is only as good as the material supplied. Claude cannot manufacture character depth from thin notes. If the user provides only biographical facts and no quotes or scenes, the output will read like a long biography, not a profile.
- Claude will not speculate about a subject's private life, motivations, or mental state beyond what the supplied material supports. Inference beyond evidence must come from the journalist.
- The central tension is the hardest element to get right. If the user does not identify one, Claude will attempt to find it in the supplied material — but a genuine contradiction requires genuine reporting, not structural arrangement.
- Profile voice is highly publication-specific. A Financial Times profile and a Sunday magazine profile operate in different registers. If no target publication is specified, Claude defaults to a mid-market broadsheet magazine register, which may need adjustment.

## Related Skills
- [obituary-writer](./obituary-writer.md)
- [interview-transcript-editor](../../magazine-journalism/writing/interview-transcript-editor.md)
- [interview-question-generator](../../tv-documentary/scripting/interview-question-generator.md)
