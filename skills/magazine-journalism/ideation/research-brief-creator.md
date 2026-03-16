---
name: research-brief-creator
status: stable
category: magazine-journalism
subcategory: ideation
version: 1.0
eval_score: 4.5
tags: [journalism, ideation, research, brief, assignment, reporting]
---

# Research Brief Creator

## What This Skill Does
Produces a structured research brief for a reporter starting a new story assignment — covering the key questions to answer, the types of sources to seek, documents to obtain, and potential story angles to investigate.

## When To Use This Skill
- An editor has assigned you a story and you need to organize your reporting approach before you start making calls
- You're researching an unfamiliar topic and want a structured entry point before diving into background reading
- You're handing an assignment to a researcher or junior reporter and want to give them a clear brief rather than a vague direction
- You're pitching a story and want to show an editor you've thought through the reporting methodology

## What You Need To Provide
**Required:** The story topic or assignment in one or two sentences; the publication type (news, magazine feature, investigative, business press, general interest); any known constraints (time available for reporting, word count, known deadline pressure).
**Optional:** What you already know about the topic; any obvious angles the editor mentioned; similar stories you've read on the topic (to understand what's been covered); geographic or demographic focus; any specific sources you've already identified.

## How Claude Approaches This
1. Maps the story territory: what is established (the background a reporter should understand), what is contested (the questions still being debated by sources and institutions), and what is unknown (the gaps that could make this story original).
2. Generates three distinct potential story angles — each with a different primary question, target source set, and expected evidence type. One angle is the most obvious interpretation of the assignment; the others offer alternatives that may be more original or more reportable.
3. Produces a structured reporting checklist: primary sources to seek (with a brief note on why each matters), documents to request or locate, background reading, and questions for each source type. Ordered by priority — what to do first.

## Output Format
Five sections: Story Territory Map, Three Potential Angles, Source List, Documents to Seek, and Reporting Order (what to do first through last). Total length: 500–700 words. Written for a working reporter, not an academic — practical, direct, no hedging.

## Quality Criteria
- [ ] Story Territory Map distinguishes between established facts, contested claims, and unknowns
- [ ] Three angles are genuinely distinct — different primary questions, not different phrasings of the same question
- [ ] Source list includes both obvious primary sources and at least one less-obvious source type
- [ ] Documents section identifies specific record types, not just "find documents"
- [ ] Reporting Order prioritizes by what opens up further reporting — the source who unlocks other sources first
- [ ] Brief is specific enough to start reporting from immediately — no vague instructions

## Example

### Input
**Assignment:** A new study shows that children who grow up near major freight routes have measurably higher rates of respiratory illness and lower test scores than peers from comparable socioeconomic backgrounds. Write a feature investigating this.
**Publication:** General-interest magazine (3,000–4,000 words)
**Constraints:** 3 weeks to report, publication in 6 weeks
**What I know:** The study is new, published by a university public health department. I know the headline finding but haven't read the full methodology. There's growing policy attention on this issue nationally.

### Output

**Research Brief: Children Near Freight Routes — Health and Education Outcomes**

---

**Story Territory Map**

*Established:* The link between traffic pollution (particulate matter, nitrogen dioxide) and respiratory illness in children is well-documented in peer-reviewed literature going back to the 1990s. Socioeconomic factors correlate strongly with living proximity to freight infrastructure — lower-income and minority communities are disproportionately located near highways, rail yards, and distribution centers. This is not new knowledge.

*Contested:* The specific effect of freight traffic (as distinct from general traffic) on school performance is less settled. The new study's finding on test scores will be contested by freight industry representatives and possibly by school district officials who will have alternative explanations (teacher quality, funding disparities, family circumstances). The direction and magnitude of causation is where the story lives.

*Unknown:* What policy levers exist at city, state, and federal level to reduce freight corridor exposure for children? Which jurisdictions have tried interventions and what happened? Are school districts near freight corridors aware of this research, and have they changed anything in response?

---

**Three Potential Angles**

**Angle A — The Health Story** *(most direct)*
Primary question: What does it actually feel like to grow up in one of these corridors, and what do the families know about the risk?
Focus: One or two families in a documented high-exposure area; their experiences; what they were or weren't told. Supported by the research and a public health expert.
Evidence type: Personal narrative + peer-reviewed research.

**Angle B — The Policy Failure Story** *(more original)*
Primary question: Local and federal regulators have known about this for years — why haven't freight routing decisions changed?
Focus: The gap between what researchers have documented and what policy has done about it. Requires documents from city planning and freight licensing processes.
Evidence type: Documents, institutional sources, regulatory records.

**Angle C — The Schools Story** *(most timely given the new study)*
Primary question: Are school districts near freight corridors even tracking the health data that could explain their academic performance gaps?
Focus: Two or three school district administrators — have they seen this research? What do they attribute underperformance to? Are they doing anything?
Evidence type: Interviews with school officials, district data, the new study's school-level analysis.

*Recommendation: Angle B will require the most document-intensive reporting but produces the most original story. Angle A is fastest to report and will give you the human material every angle needs anyway. Start with A, use that access to build toward B.*

---

**Source List**

1. **The study's lead author** — First call. Understand the methodology, the data limitations, and what they say the study does and doesn't prove. Ask who they think is doing the best policy work on this. Opens doors to other researchers.
2. **A family in a documented high-exposure area** — Essential regardless of angle. Reach through local parent advocacy groups, school PTAs near major freight corridors, or through the study authors if they have community contacts.
3. **A pediatric pulmonologist or environmental pediatrician** — Contextualizes the health findings. Look for someone who sees patients in affected areas, not just a lab researcher.
4. **A freight industry representative** — For response and context on Angle B. Will push back on the study; important to include a fair hearing.
5. **City or county planning official** — For Angle B: find the person who signs off on freight routing permits or zoning near schools.
6. **A school principal or district administrator** near a documented corridor — Angle C. Find through the district's public staff directory.
7. **An environmental justice attorney or advocacy organization** — Will give you the systemic pattern and point to other jurisdictions where this has been litigated or legislated.

---

**Documents to Seek**

- Full text of the new study (not just the press release) — check methodology, sample size, and data source
- Air quality monitoring data for the specific corridors mentioned — EPA's AirData portal
- School performance data for schools within 500 meters of major freight corridors — state education department
- Any environmental impact assessments filed for freight infrastructure in the past 10 years in your target geography
- Freight routing permits or zoning variances — county or city planning department public records

---

**Reporting Order**

1. Read the full study before making any calls — so you can speak to it accurately with sources.
2. Contact the study's lead author first — they will give you context on methodology and point you to other researchers.
3. Find a family. This will take the most time and is the most time-sensitive (families can withdraw; lock this early).
4. Environmental justice organization — for systemic context and document leads.
5. School official — once you have the research context, this conversation will be more productive.
6. Freight industry representative and planning official — these calls go better once you have the full picture.

---

## Known Limitations
- This skill generates a research brief based on public knowledge of the topic area. It cannot access the specific study, local data, or institutional details of the story you're covering — those require your reporting.
- For investigative stories involving potential legal liability, sensitive sources, or whistleblowers, the reporting approach in this brief should be reviewed with your editor and legal counsel before making contact. This brief optimizes for access and story quality, not legal protection.
- Some source suggestions (particularly community members or affected individuals) require sensitive outreach that a structured brief cannot fully script. The brief will tell you who to find; how to approach them requires editorial judgment.

## Related Skills
- [story-angle-finder](../ideation/story-angle-finder.md)
- [reportage-structure](../writing/reportage-structure.md)
- [fact-check-prompt](../editing/fact-check-prompt.md)
