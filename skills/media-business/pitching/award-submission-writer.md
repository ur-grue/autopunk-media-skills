---
name: award-submission-writer
status: stable
category: media-business
subcategory: pitching
version: 1.0
eval_score: 4.44
tags: [business, awards, submissions, pitching, recognition, festival, competition]
---

# Award Submission Writer

## What This Skill Does
Writes a compelling award or competition submission that frames a media project's significance, craft, and impact for a judging panel — structured to score well against standard evaluation criteria.

## When To Use This Skill
- You are entering a documentary, podcast, article, or video project into an industry award
- You need to write a "project description" or "statement of purpose" field for a submission form
- You want to reframe a completed project for a judging panel that knows nothing about it
- You are submitting to multiple awards and need to adapt the core narrative for different criteria

## What You Need To Provide
**Required:**
- The project title and format (documentary, podcast series, article, YouTube series, etc.)
- A summary of what the project is about (subject, scope, approach)
- The award or competition name and category (so Claude can calibrate the framing)
- The key achievement or impact you want the judges to notice

**Optional:**
- Specific award criteria or judging rubric (if publicly available)
- Audience reach or measurable impact data (viewership, downloads, policy change, community response)
- Production challenges that were overcome (access difficulties, sensitive subjects, technical innovation)
- Word count or character limit for the submission field
- Whether this is a self-nomination or a third-party nomination

## How Claude Approaches This
1. **Leads with the story, not the credits.** Judges read dozens of submissions. Claude opens with the human dimension of the project — the question it asked, the world it revealed, or the stakes involved — before describing the craft. This creates a reason to care before a reason to admire.

2. **Maps the submission to the award's values.** Different awards prize different things: editorial rigour, visual innovation, social impact, audience engagement, investigative courage. Claude identifies what the specific award values (from the criteria you provide or from the award category's implicit priorities) and ensures those elements are prominent, not buried.

3. **Quantifies impact without inflating it.** Where data exists (audience numbers, press coverage, policy outcomes), Claude integrates it as supporting evidence. Where data is soft or absent, Claude describes qualitative impact honestly rather than inventing metrics. Judges can smell exaggeration.

4. **Addresses craft and methodology.** The submission explains how the project was made — not just what it achieved. This is where production challenges, editorial decisions, access negotiations, and technical approaches demonstrate the team's skill and commitment.

5. **Closes with significance, not a summary.** The final paragraph does not restate what was already said. It positions the project in a larger context — why this work matters beyond its immediate subject, what it contributes to the field, or what it made possible for others.

## Output Format
300–500 words (or adapted to the stated word/character limit). Third person for third-party nominations, first-person plural for self-nominations. Tone: confident but not boastful, specific but not dry. Three to five paragraphs: opening hook, project description, craft/methodology, impact evidence, closing significance statement. No bullet points in the body — this reads as polished narrative prose. If a word limit is specified, the output hits 90–100% of the limit.

## Quality Criteria
- [ ] Opens with a compelling hook — not "This project is a 4-part documentary about..."
- [ ] The award's specific values or criteria are visibly addressed
- [ ] Impact claims are supported by evidence or honestly qualified
- [ ] Craft and methodology are described — not just outcomes
- [ ] Tone is confident without superlatives or self-congratulation
- [ ] Closing paragraph adds meaning rather than repeating the opening
- [ ] Output respects the stated word/character limit
- [ ] A judge unfamiliar with the project could understand its significance from this text alone

## Example

### Input
**Project:** "Dust and Water" — a 3-part audio documentary series (podcast format, 45 minutes per episode).

**Subject:** The series follows three farming families in different countries as they adapt to accelerating water scarcity. Each episode spends a full growing season with one family, combining intimate first-person audio diaries with expert interviews on hydrology, agricultural policy, and climate modelling.

**Award:** International Audio Documentary Awards, Best Series category.

**Key achievement:** The series was the first long-form audio project to use hydrological sensor data sonified into the soundscape — listeners hear the aquifer levels dropping in real time as the season progresses.

**Impact:** 280,000 downloads across the series. Featured in the curriculum of two university journalism programmes. One family's story was cited in a regional water policy review.

**Production challenges:** Recording in remote agricultural areas with no reliable power or internet. The team used solar-powered portable rigs and cached recordings for weeks before upload.

**Word limit:** 400 words.

### Output

The sound of an aquifer emptying is not dramatic. It is a slow, almost imperceptible lowering of pitch — a note the ear barely registers but the body somehow understands. In "Dust and Water," that sound is real. For the first time in long-form audio documentary, hydrological sensor data was sonified directly into the programme's soundscape, allowing listeners to hear groundwater depletion as it happened across a growing season.

"Dust and Water" is a three-part audio documentary series that embeds with three farming families on three continents as they navigate a single year of intensifying water scarcity. Each 45-minute episode is built around intimate audio diaries recorded by the families themselves — unscripted, unmediated accounts of daily decisions made under mounting environmental pressure. These first-person narratives are woven together with interviews from hydrologists, climate modellers, and agricultural policy experts, creating a layered portrait of a crisis that is both deeply personal and inescapably global.

The production methodology was shaped by the subject. The team recorded in remote agricultural regions with no reliable electricity or internet access, using solar-powered portable rigs designed for the project. Recordings were cached locally for weeks before upload, requiring a production workflow built entirely around trust — the families carried the equipment, chose when to record, and decided what to share. This approach yielded a quality of intimacy that conventional field recording rarely achieves: the sound of a farmer walking her irrigation channels before dawn, narrating what she sees and what she fears.

The series reached 280,000 downloads and has been adopted into the journalism curricula of two universities as a case study in immersive audio storytelling. One episode's subject — a family-run rice operation facing its third consecutive season of declining yields — was cited in a regional government's water policy review, the first time an audio documentary was referenced in that body's proceedings.

"Dust and Water" demonstrates that audio documentary can do more than report on environmental crisis — it can make the crisis audible. The sonification technique developed for this series has since been adopted by two other production teams, suggesting a new formal possibility for the medium. The work stands as evidence that patient, access-driven storytelling remains the most powerful tool available to documentary makers working at the intersection of science and human experience.

## Known Limitations
- Claude cannot verify audience figures, impact claims, or production details. All data in the submission must be accurate before you submit — judges and award administrators may fact-check.
- The skill works best when you provide the award's specific criteria or judging rubric. Without it, Claude infers priorities from the category name, which may not match the actual weighting.
- Award submissions for highly technical categories (cinematography, sound design, visual effects) benefit from specialist vocabulary that Claude may not deploy with full precision. Have a subject-matter expert review technical claims.

## Related Skills
- [elevator-pitch-writer](./elevator-pitch-writer.md) — distil the project into a 60-second verbal pitch
- [cold-outreach-email-writer](./cold-outreach-email-writer.md) — write an introductory email to an award nominator or juror
- [series-pitch-deck-writer](./series-pitch-deck-writer.md) — create a full pitch deck for the project
