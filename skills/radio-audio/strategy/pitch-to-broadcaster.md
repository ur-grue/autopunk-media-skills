---
name: pitch-to-broadcaster
status: stable
category: radio-audio
subcategory: strategy
version: 1.0
eval_score: 4.3
tags: [radio, strategy, pitch, broadcaster, commissioning, proposal]
---

# Pitch to Broadcaster

## What This Skill Does
Writes a radio programme pitch document for submission to a network or station commissioner, covering format, audience, editorial proposition, and production credentials.

## When To Use This Skill
- An independent producer or production company needs to pitch a new programme idea to a broadcaster or commissioner
- A radio journalist with a programme idea needs a formal proposal document to get a meeting or a development conversation
- A station is pitching a format idea internally to a network or parent organisation
- You have pitched verbally and now need to follow up with a written document that captures the idea precisely

## What You Need To Provide
**Required:** Programme title (or working title), the core idea in 1–2 sentences, format type and duration, proposed broadcast slot, and the production entity pitching (individual, company, or internal team).
**Optional:** Presenter or talent attachment, comparable programmes (on this or other networks), evidence of audience demand, production track record, proposed series length, budget range, and any development material already completed (pilot, taster, research).

## How Claude Approaches This
1. Opens with the editorial proposition — what the programme offers audiences that does not already exist — in one or two sentences designed to be read by a commissioning editor in under 30 seconds; this pitch paragraph is the document's most important element
2. Develops the format description with enough structural detail that a commissioner can visualise one episode: what happens, in what order, for how long, with whom; avoids vague descriptors and grounds every claim in specific editorial choices
3. Adds the commercial and editorial context section last: why now, who is the audience, what is the competitive landscape, and why this production entity is the right one to make it

## Output Format
A professional pitch document of 500–700 words. Sections: EDITORIAL PROPOSITION (one paragraph, the hook), THE FORMAT (what happens in an episode, how the series would develop), THE AUDIENCE (specific, evidence-grounded where possible), WHY NOW (topicality or opportunity), PRODUCTION (credentials and proposed talent), and SERIES PROPOSAL (number of episodes, slot suggestion, any flexibility). Tone: confident, specific, and concise — no hyperbole, no buzzwords, no phrases like "unique" or "compelling" without immediate evidence. The document should be standalone — a commissioner who has never spoken to the producer should understand the pitch entirely from this document.

## Quality Criteria
- [ ] The editorial proposition paragraph makes a clear claim about what the programme offers that nothing else does
- [ ] The format section is specific enough that a commissioner can visualise a single episode from start to finish
- [ ] "Why now" contains a genuine reason related to the current media or cultural landscape, not a general claim about audience appetite
- [ ] The document contains no phrases like "groundbreaking," "must-listen," or "innovative" without evidence
- [ ] Series proposal specifies episode count and any commissioning flexibility (e.g. pilot first, or 6-episode run)
- [ ] The document can be read in under 3 minutes

## Example

### Input
Working title: "The Year After"
Core idea: A series where we follow one person through the first full year after a major life event — bereavement, redundancy, serious illness, divorce — with monthly check-in recordings creating a real-time audio diary over 12 months
Format: Audio documentary series
Duration: 25 minutes per episode, 12 episodes
Proposed slot: Weekly, late evening (10pm)
Pitching entity: Independent production company (small, two senior producers)
Presenter: No attachment yet
Comparable programmes: Long-form audio journalism, emotional personal documentary
Series length: 12 episodes (one per month, covering one full year)
No pilot yet — pitching on concept

### Output

---
PITCH DOCUMENT
Programme: The Year After
Format: Audio documentary series
Duration: 25 minutes × 12 episodes
Proposed slot: Weekly, 22:00
Production: [Production Company Name]
Contact: [Producer Name] | [email] | [phone]

---

EDITORIAL PROPOSITION

Radio is built on the present moment. The Year After works differently. Each series follows a single person through the twelve months after a significant life event — recording monthly check-ins that track, in real time, what it actually means to live through the year after everything changes.

The series makes one editorial promise: we come back every month, without exception, and we ask the same question — where are you now? The result is something broadcast radio has not systematically produced: a longitudinal audio portrait, built in public, over an entire year.

---

THE FORMAT

Each 25-minute episode is a monthly check-in. The subject records a voice diary in the week before their monthly interview. The producer records a 15–20 minute conversation, then edits the episode from the diary, the conversation, and any actuality gathered that month. The series runs for twelve consecutive episodes, each timestamped to a specific month.

The series follows one subject per series. In Series One, we propose to follow someone in the first year after a significant bereavement. The subject is recruited through a partnership with a bereavement support charity.

The programme does not need a fixed presenter — it is a narrator-reporter format, with the producer's voice as a light presence, guiding without leading.

By Episode 4 or 5, the series shifts from description to revelation: the listener knows this person well enough that what they say carries weight. Episode 12 is the most important radio in the series — the subject speaks across the full distance of twelve months of recorded life.

---

THE AUDIENCE

Adults 35–65 who engage with long-form audio — podcast audiences who are also habitual radio listeners. An audience that trusts radio to handle emotional subject matter with intelligence. They already listen to programmes that take time to develop — they are not frightened by a 25-minute, single-subject format.

Research consistently shows this audience is underserved in the 10pm slot, which is currently dominated by pre-recorded archive and short documentary formats. The Year After offers depth in a slot where depth is rare.

---

WHY NOW

Long-form serialised audio journalism is the most commercially successful format in podcasting right now. Broadcast radio has not adapted this form for its own strengths — namely the trusted, scheduled, appointment-to-listen relationship between a station and its audience. This series does that. It is not a podcast pretending to be radio; it is a format that only works in broadcast, because the weekly appointment and the twelve-month arc are its structural foundation.

---

PRODUCTION

[Production Company] has produced [X] hours of long-form audio documentary for national broadcast. Senior producers have a combined [X] years of experience in radio documentary and features. We have the systems to manage a year-long longitudinal recording project — scheduled check-ins, consent frameworks, and contingency for subjects who need to withdraw.

We are seeking a commissioning conversation before committing a subject to a twelve-month participation schedule. A short taster tape can be produced within six weeks of a commissioning indication.

---

SERIES PROPOSAL

12 episodes × 25 minutes. Ideally transmitted weekly across a 12-week run as a consecutive broadcast series, or held and scheduled to begin when the recordings reach Episode 6 (so the second half of the series is live-recorded during transmission). Open to discussion on structure.

Alternative format: 6-episode version (one check-in every two months) is available if a shorter commissioning unit is preferred.

---

## Known Limitations
- A pitch document cannot substitute for a taster tape or pilot — for a format this dependent on the subject's voice and presence, most commissioners will want to hear a sample before commissioning
- The "why now" section is only as strong as the real-world context provided; the skill can articulate the argument but cannot manufacture a genuine hook if the timing is not editorially justified
- The production credentials section is a placeholder if no specific credentials are supplied — this is the section most likely to need manual completion
- Different broadcasters have different pitch formats and house styles; this document follows general best practice but may need structural adjustment for specific networks

## Related Skills
- [programme-brief-writer](../production/programme-brief-writer.md)
- [podcast-to-radio-adapter](./podcast-to-radio-adapter.md)
