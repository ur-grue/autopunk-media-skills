---
name: programme-brief-writer
status: stable
category: radio-audio
subcategory: production
version: 1.0
eval_score: 4.4
tags: [radio, production, brief, programme-proposal, format, editorial]
---

# Programme Brief Writer

## What This Skill Does
Writes a structured internal radio programme brief covering format, audience, tone, regular features, editorial aims, and production requirements for a new or relaunching show.

## When To Use This Skill
- A producer is developing a new radio format and needs to write it up as a formal brief for editorial sign-off
- A programme is relaunching after a format change and the new brief needs to be circulated to the production team
- A station is pitching a new strand internally and needs a clear, detailed document to support the pitch
- A new producer joining an existing show needs to quickly understand the programme's editorial identity

## What You Need To Provide
**Required:** Programme title (or working title), format type (news, music-and-talk, current affairs, features, documentary strand), target duration, broadcast slot (day of week and time), and a 2–3 sentence description of the show's core idea.
**Optional:** Target audience demographics and psychographics, any specific regular features or segments already planned, presenter name or presenter profile, competitor programmes, editorial distinctions from other shows on the same station, and production resources (number of producers, budget scale).

## How Claude Approaches This
1. Establishes the show's editorial proposition in a single clear sentence — what it does that no other programme on the station does — and uses this as the anchor for all subsequent sections
2. Defines the target audience in terms of what they need from radio at that time of day, not just demographics; maps the programme format and feature set to those needs
3. Structures the brief in standard internal format: Programme Identity, Audience, Format and Duration, Tone and Register, Regular Features, Editorial Aims and Constraints, Presenter Profile, and Production Requirements

## Output Format
A structured document of 600–900 words, divided into named sections with subheadings. Suitable for internal circulation — clear enough for a junior producer to understand the show's identity, detailed enough for an editorial director to sign off. Language is direct and specific: it describes what the show does, not what it aspires to be. No marketing language, no vague descriptors ("innovative", "engaging") without concrete definition. Sections: PROGRAMME IDENTITY, AUDIENCE, FORMAT AND STRUCTURE, TONE AND REGISTER, REGULAR FEATURES, EDITORIAL AIMS, PRESENTER PROFILE, PRODUCTION NOTES.

## Quality Criteria
- [ ] The programme identity section defines the show's distinction in one clear sentence — not just what it covers, but how and for whom
- [ ] The audience section describes what the listener needs at that time of day, not just an age range
- [ ] Each regular feature is described with: name, position in the running order, duration, and purpose
- [ ] Tone and register section uses concrete language — specific comparisons or operational descriptions, not vague adjectives
- [ ] Editorial aims include at least one explicit constraint or no-go zone (what the show does NOT do)
- [ ] The brief could be handed to a producer who has never heard the show and they would know what to make

## Example

### Input
Working title: "The Long View"
Format: Weekly current affairs documentary strand
Duration: 45 minutes
Slot: Sunday evening, 8:00pm
Core idea: Each episode investigates one story that the news cycle has moved on from — following up on a major story from 6–18 months ago to find out what actually happened next.
Target audience: Adults 35–60, news-literate, radio listeners who feel the news cycle is too fast and disposable
Presenter: No specific name; profile wanted
Regular features: None confirmed yet
Production notes: Small production team, 2 producers + 1 researcher

### Output

---
PROGRAMME BRIEF — THE LONG VIEW
Format: Weekly documentary strand
Duration: 45 minutes
Slot: Sunday, 20:00
Status: Development brief | Version 1.0

---

PROGRAMME IDENTITY

The Long View is a weekly radio documentary that returns to a single significant news story from the recent past and asks: what happened next? Each episode picks up a story that made national or international headlines six to eighteen months ago and follows it through to its present state — tracing consequences, holding those responsible to account, and recovering the human detail that the original coverage could not afford.

The show's editorial proposition is simple: the news tells you what is happening; The Long View tells you what it means that it happened.

---

AUDIENCE

Primary: Adults 35–60, habitually engaged with news and current affairs. They feel the 24-hour cycle has made journalism more reactive and less accountable. They want analysis that has had time to mature.

What they need from radio at 8pm on a Sunday: An intelligent, unhurried programme they can listen to while not looking at a screen. Something that rewards their attention. Something that leaves them with more than they arrived with.

Secondary: Younger adults (25–34) who are deeply engaged with long-form podcasting and audio journalism but want a broadcast home for this kind of work.

---

FORMAT AND STRUCTURE

45 minutes, single-subject. Each episode follows one story. Structure:
- Opening scene-set: where we left this story (approximately 5 minutes)
- Investigation: what has happened since, told through new reporting, interviews, and documents (approximately 30 minutes)
- Resolution or open question: where things stand now and what remains unresolved (approximately 10 minutes)

The programme does not use a traditional presenter-and-guests studio format. It is narrated documentary, driven by the reporter/presenter voice, interview actuality, and original material.

---

TONE AND REGISTER

Patient, authoritative, and clear. The register is journalism — not commentary, not opinion. The presenter's voice is the guide, not the judge. The programme operates on the assumption that the listener has heard the original story; it does not re-explain but reconnects.

The tone should feel more like long-form print journalism read aloud than like a broadcast news programme. Think: unhurried, rigorous, earned.

Emphatically not: sensationalist, retrospective outrage for its own sake, or "whatever happened to..." nostalgia journalism. The follow-up must justify itself editorially, not just sentimentally.

---

REGULAR FEATURES

No regular features as such. The editorial unit is the single story per episode. Consistency comes from:
- A fixed presenter voice and documentary approach
- A standard programme opening (signature sound and programme title)
- A closing convention: the presenter states plainly where the story stands now and what, if anything, remains unanswered

---

EDITORIAL AIMS

1. Return to significant stories and hold the original actors accountable
2. Recover the human detail that broke news coverage cannot carry
3. Demonstrate that journalism with time to breathe produces understanding that urgency cannot
4. Build a reputation as the most reliable place to go when listeners want to know what actually happened

Editorial constraints:
- Each story must be a genuine follow-up — not a rerun or a retrospective puff piece. Something must have happened since the original coverage that justifies the return visit.
- The programme does not deal in archive for its own sake. Every historical material used must serve a current editorial purpose.

---

PRESENTER PROFILE

Experienced radio journalist with a track record in long-form documentary and investigative reporting. The presenter is a reporter-narrator, not a studio anchor — they conduct interviews, travel to locations, and narrate from within the story. Voice qualities: calm authority, clear articulation, and the ability to carry 45 minutes of narrative without losing the listener's trust. A known name in radio journalism is preferable but not required.

---

PRODUCTION NOTES

Team: 2 producers, 1 researcher. Each episode requires 4–6 weeks of production lead time. Location recording expected for at least half the interview content. Post-production: documentary edit (audio only), no video requirements. Pre-production sign-off for each story pitch is required at 8 weeks before transmission.

---

## Known Limitations
- The brief is an internal production document, not a pitch to a commissioner — if the purpose is to pitch to an external broadcaster, use the pitch-to-broadcaster skill instead
- Regular features described in a brief are aspirational until tested in a pilot — the feature set almost always changes after the first two or three episodes
- Audience descriptions are based on the input profile; without research data, they cannot be verified
- Production notes require factual input from the producer — the skill cannot estimate budget or staffing needs without a basis for comparison

## Related Skills
- [pitch-to-broadcaster](../strategy/pitch-to-broadcaster.md)
- [running-order-builder](./running-order-builder.md)
- [documentary-narration-writer](../scripting/documentary-narration-writer.md)
