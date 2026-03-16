---
name: story-angle-finder
status: stable
category: magazine-journalism
subcategory: ideation
version: 1.0
eval_score: 4.5
tags: [journalism, ideation, angles, pitching, story-development]
---

# Story Angle Finder

## What This Skill Does
Generates 6–8 distinct editorial angles from a broad topic or news event, each with a unique perspective, target audience, and reporting approach.

## When To Use This Skill
- You have a topic but not yet a story — you know the subject but not the specific angle that makes it publishable
- You are pitching and need to see the full range of angles before deciding which to develop
- An editor has given you a beat or broad subject and you need to identify the most compelling entry point
- You want to see how the same event could be covered differently across publication types (news, feature, opinion, profile)

## What You Need To Provide
**Required:** The broad topic, subject area, or news event you are working with; publication type or target outlet (or describe your audience if no specific outlet)
**Optional:** Any angles you have already considered and want to avoid; specific sources or data you already have access to; geographic scope (local, national, international); timeframe (breaking, evergreen, anniversary); whether you need a pitch-ready one-liner for each angle

## How Claude Approaches This
1. Identifies at least six distinct editorial lenses through which the topic can be approached: the personal/human story, the systemic/structural analysis, the data story, the historical perspective, the counterintuitive or contrarian take, the profile, and the process/how-it-works explainer — selecting those most appropriate to the topic
2. For each angle, specifies the core question the story would answer, the primary type of reporting required (documents, sources, data, observation), and the most likely publication home
3. Marks which angles are time-sensitive versus evergreen, and which require significant access versus desk research
4. Notes where angles overlap with common coverage so the journalist can differentiate their pitch

## Output Format
6–8 numbered angle briefs. Each brief includes: Angle Name (3–5 words), Core Question, Reporting Approach (2 sentences), Ideal Publication Type, and a Pitch Line (one sentence, ready to drop into a pitch email). Total length: 500–700 words. No jargon beyond standard editorial vocabulary.

## Quality Criteria
- [ ] Each angle has a genuinely distinct editorial perspective — not just a different framing of the same story
- [ ] Every angle includes a concrete reporting approach (not just "interview experts")
- [ ] At least one angle is counterintuitive or challenges the conventional framing of the topic
- [ ] At least one angle is suitable for long-form feature treatment
- [ ] Pitch lines are publication-ready — specific enough to stand alone in an email
- [ ] Time-sensitive versus evergreen distinction is made for each angle

## Example

### Input
Topic: The growing number of people leaving major cities to move to smaller towns since 2020
Publication type: National general-interest magazine
Avoid: Any angle that's essentially "remote work made this happen" (editor says it's been done to death)

### Output

**1. The Town That Got What It Wished For**
*Core Question: What happens to a small town's culture, prices, and social fabric when urban transplants arrive in large numbers?*
*Reporting Approach: Embedded community reporting in one specific town that has seen significant population gain. Interview long-term residents, local business owners, and the newcomers themselves.*
*Ideal Publication:* National magazine, long-form feature
*Pitch Line:* "In one small town in [region], the population grew 22% in three years. This is a story about what the locals think of that."
*Timeframe:* Evergreen

---

**2. The Infrastructure Reckoning**
*Core Question: Can small-town infrastructure — water, schools, roads, medical services — absorb urban population growth without state and federal support?*
*Reporting Approach: Public records on municipal budgets, school enrollment data, and interviews with town administrators and state planners.*
*Ideal Publication:* Investigative feature, policy desk
*Pitch Line:* "Small towns are gaining residents faster than they can afford to serve them — and nobody in state government has a plan."
*Timeframe:* Evergreen with news hooks available

---

**3. The People Who Moved Back**
*Core Question: Among those who left cities for small towns, who has returned — and why?*
*Reporting Approach: Self-selecting survey of urban returnees plus 4–5 in-depth profiles. Counterbalances the triumphalist migration narrative.*
*Ideal Publication:* Lifestyle/culture feature
*Pitch Line:* "The stories of people who moved to a small town and hated it don't get written. Here are five of them."
*Timeframe:* Evergreen; counterintuitive angle

---

**4. The Housing Export Problem**
*Core Question: Are urban housing pressures being exported to small towns, pricing out the working-class residents who lived there first?*
*Reporting Approach: Real estate price data, interviews with longtime residents priced out of their rental market, local housing advocates.*
*Ideal Publication:* Economic/social policy feature or investigative desk
*Pitch Line:* "In towns where house prices were stable for decades, the urban migration wave has created a new affordability crisis — for the people who were already there."
*Timeframe:* Evergreen with strong local-angle opportunities

---

**5. The Profile: The Town Planner**
*Core Question: Who is actually managing this transition — and what do they think of it?*
*Reporting Approach: Single-subject profile of a small-town mayor, planner, or economic development officer dealing with the migration surge.*
*Ideal Publication:* Magazine profile, Sunday supplement
*Pitch Line:* "She has lived in this town her whole life. In three years, it's become unrecognizable — and she's the one everyone calls."
*Timeframe:* Evergreen; strong human-interest angle

---

**6. The Myth of the Simpler Life**
*Core Question: Does moving to a small town actually deliver the quality of life improvement people expect?*
*Reporting Approach: Longitudinal survey data if available; interviews with urban transplants at the 1-year and 3-year marks; mental health and life-satisfaction framing.*
*Ideal Publication:* Health/lifestyle desk or culture magazine
*Pitch Line:* "Studies show life satisfaction doesn't reliably improve after a major move. So why do people keep leaving cities for small towns — and are they happier?"
*Timeframe:* Evergreen; challenging the migration narrative without dismissing it

---

*Note: Angles 1, 3, and 5 are strongest for a long-form general magazine. Angles 2 and 4 suit an investigative or policy desk. Angle 6 is a strong pitch for a lifestyle or health publication. None of these require the remote-work framing you want to avoid.*

## Known Limitations
- Angles are generated from the topic description only; Claude does not have access to current news databases or what has recently been published on this topic — always verify an angle has not been recently covered before pitching
- The strength of any angle depends on the availability of sources and access; an angle requiring embedded community reporting may be unusable for a journalist based elsewhere
- For breaking news, time-sensitive angle assessment may be inaccurate without current event context; provide the date and recent developments for more accurate evergreen vs. time-sensitive classification

## Related Skills
- [headline-generator](headline-generator.md)
- [research-brief-creator](research-brief-creator.md)
- [reportage-structure](../writing/reportage-structure.md)
