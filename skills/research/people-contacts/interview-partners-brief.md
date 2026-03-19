---
name: interview-partners-brief
status: beta
category: research
subcategory: people-contacts
version: 1.0
eval_score: null
tags: [research, sourcing, interviews, contacts, journalism, documentary, podcast]
---

# Interview Partners Brief

## What This Skill Does
Produces a structured shortlist of potential interview partners for a given story or topic — with role descriptions, the angle each person would best serve, and a priority ranking — so you can walk into pre-production with a clear sourcing plan.

## When To Use This Skill
- You are starting a new story, documentary, or episode and need to identify who to interview
- You have a clear topic but cannot decide which voices are essential versus supplementary
- A producer, editor, or commissioner has asked for a sourcing plan alongside your pitch
- You want to stress-test your coverage: are all relevant perspectives represented, or are there gaps?

## What You Need To Provide
**Required:** The story topic or question your content is exploring · The format and approximate length (e.g. 45-minute documentary, 20-minute podcast episode, 1,200-word investigative feature) · The angle or editorial position you are taking (e.g. critical of current policy, explanatory, human interest)

**Optional:** Specific voices you already have confirmed or are pursuing · Any voices you want to avoid or that are not relevant · Target audience (e.g. general public, specialist, policy community) · Geographic focus · Whether you need on-camera/on-mic talent only or are open to off-the-record background sources

## How Claude Approaches This
1. Analyses the story topic to identify the main perspectives that journalistic balance and editorial depth require — not just official and opposing voices, but lived-experience voices, technical experts, historical context providers, and critical challengers
2. Generates a tiered shortlist of role types (not specific named individuals) with a clear editorial rationale for each — explaining what unique value that voice adds to the story that no other voice on the list provides
3. Orders the shortlist by priority: which interviews are essential to the story functioning at all, which add depth, and which are desirable but cuttable — so you can triage if time or access becomes constrained

## Output Format
A brief of 450–600 words. Structured as: (1) a two-sentence story framing summary to confirm you and Claude are aligned on what the story is; (2) an Essential Voices section (3–4 entries); (3) a Depth Voices section (2–3 entries); (4) a Desirable But Optional section (1–2 entries). Each entry: role title, the editorial function this voice serves, one sentence on where to find this type of source, and a flag if this voice is typically hard to access. Ends with a brief note on balance — whether the full shortlist, if realised, would represent the story fairly.

## Quality Criteria
- [ ] Every voice on the list has a distinct editorial function — no two entries serve the same purpose
- [ ] The Essential Voices section alone is enough to tell the story if access is limited
- [ ] At least one voice represents direct lived experience of the topic, not just institutional or expert perspective
- [ ] The balance note honestly identifies any gaps or structural skews in the proposed sourcing
- [ ] No real named individuals are included — the output identifies role types and where to find them, not specific people

## Example

### Input
Topic: A surge in the use of private tutoring among families who cannot comfortably afford it — parents taking on debt or working extra hours to pay for tutoring they feel is now necessary for their children to keep up at school.

Format: 25-minute podcast episode for a parenting and education audience

Angle: Sympathetic to families under pressure; critical of why school provision has made private tutoring feel essential

Geographic focus: UK

Already confirmed: One parent willing to speak on record

### Output

**Interview Partners Brief**
*Topic: The private tutoring debt trap — UK parents, education podcast, 25 min*

---

**Story framing check:** This episode argues that declining school support has pushed ordinary families into spending they cannot afford on private tutoring — and examines the financial and emotional cost. The confirmed parent voice is the emotional anchor. The brief below identifies who else the story needs.

---

**Essential Voices**

1. **A second parent — different financial and demographic profile from your confirmed source**
*Function:* Prevents the episode feeling like a single case study; broadens the picture and protects against "this is just one family's problem" pushback. Ideally from a different region or household income bracket.
*Where to find:* Parent Facebook groups focused on primary or secondary school; mumsnet threads on tutoring costs; schools in areas with high tutoring uptake (London outer boroughs, commuter towns).
*Access note:* Parents who have taken on debt are often reluctant to be identified — be prepared to offer anonymity.

2. **An education economist or researcher who studies private tutoring markets**
*Function:* Provides the structural argument — why tutoring demand has grown, what the evidence says about its effect on attainment gaps, and whether the trend is likely to continue. Gives the episode credibility beyond personal testimony.
*Where to find:* UK university education departments; the Sutton Trust (publishes annual tutoring research); the Education Endowment Foundation.
*Access note:* Researchers at these institutions are generally accessible to journalists; a press office route is reliable.

3. **A working tutor — ideally one with ambivalence about the system they are part of**
*Function:* Humanises the supply side and adds complexity. A tutor who is uneasy about tutoring families who cannot really afford it gives the episode moral texture rather than a simple villain/victim frame.
*Where to find:* Tutoring platforms (Tutorful, MyTutor) sometimes feature tutor profiles with contact details; tutor Facebook and Reddit communities.

---

**Depth Voices**

4. **A primary or secondary school teacher (speaking off-record or anonymously)**
*Function:* Classroom perspective on whether teachers see tutoring as filling gaps they cannot fill — and whether that creates any internal tension with their professional role.
*Where to find:* Teacher union contacts (NEU, NASUWT press teams); teaching forums.
*Access note:* Teachers speaking critically about school provision usually require anonymity; factor this into your editorial approach.

5. **A financial wellbeing adviser or debt counsellor**
*Function:* Puts tutoring spending in the context of household debt decisions — what families are sacrificing to pay for it. Adds a concrete financial dimension beyond parental anxiety.
*Where to find:* Citizens Advice media team; StepChange charity press office.

---

**Desirable But Optional**

6. **A government or local authority spokesperson**
*Function:* Provides official response to the central claim. Even a non-committal statement is editorially useful — it marks the moment where institutional accountability was offered and either given or refused.
*Where to find:* Department for Education press office.
*Access note:* May decline or provide a written statement only; plan for this.

---

**Balance note:** This shortlist skews toward voices that support the critical framing of the episode, which is appropriate given your stated angle. If the DfE or a school headteacher provides substantive counter-evidence (e.g. that school provision has not declined), give it proportionate airtime — the episode is stronger for engaging with the strongest available counterargument, not dismissing it.

## Known Limitations
- This skill identifies role types and sourcing strategies — it does not name specific individuals or provide contact details. Use the contact-info-researcher skill to locate actual contacts once roles are defined.
- For highly specialised or technical topics, Claude may not know which specific institutions or research bodies are the most credible in that field — verify with a sector specialist before committing to a sourcing plan.
- The balance note reflects Claude's assessment of editorial coverage, not a legal or regulatory compliance check. For regulated broadcast formats, verify balance requirements with your compliance team.
- Shortlists generated here are starting points. Access, timing, and willingness to speak will reshape the actual guest list; treat the brief as a map, not a schedule.

## Related Skills
- [contact-info-researcher](./contact-info-researcher.md)
- [expert-identifier](./expert-identifier.md)
- [interview-question-generator](../../tv-documentary/scripting/interview-question-generator.md)
