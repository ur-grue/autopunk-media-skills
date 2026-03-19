---
name: political-landscape-brief
status: beta
category: research
subcategory: facts-context
version: 1.0
eval_score: null
tags: [research, politics, context, background, government, power, region]
---

# Political Landscape Brief

## What This Skill Does
Produces a structured research framework that maps the key political actors, power dynamics, fault lines, and contextual background a journalist needs to understand before reporting on a region or country — without making factual assertions about current events that require live verification.

## When To Use This Skill
- You are assigned to cover a story in a country or region where you have limited background knowledge
- You need a quick briefing on the political context surrounding a specific story — an election, a protest, a policy decision, a conflict
- You are preparing questions for an interview with a political figure, diplomat, or policy expert
- You are writing a documentary treatment, feature pitch, or explainer and need to establish what political context the audience requires
- You are fact-checking a claim that depends on understanding the political dynamics of a specific place
- A colleague is traveling to report in an unfamiliar region and needs a fast orientation document

## What You Need To Provide
**Required:** The country or region; the specific story or topic you are covering (e.g. an election, an economic policy, a social movement, a regional conflict)

**Optional:** The angle or focus of your story; the audience you are writing for (domestic, international, specialist); how much space you have to provide political context; whether you need historical background or only current dynamics; any known names, parties, or events you want to anchor the brief around

## How Claude Approaches This
1. Establishes the structural political context: the system of government, the balance of institutional power (executive, legislature, judiciary, military, civil society), and any features of the political system that are essential for understanding how decisions get made and contested in this place
2. Maps the principal political actors and forces — parties, coalitions, movements, and powerful individuals — identifying their positions on the subject of your story and the relationships between them, including alliances, rivalries, and current tensions
3. Identifies the key fault lines and contested questions: the underlying disagreements — ideological, ethnic, regional, economic, religious — that explain why the story you are covering is contested in the way it is
4. Frames a set of specific contextual questions the journalist should answer through reporting and source verification, and flags which aspects of the political landscape are most likely to have changed recently and therefore most urgently need live verification

## Output Format
Structured brief of 600–800 words. Four sections: (1) Political system overview — how power is structured and exercised, (2) Principal actors — who holds or contests power, framed as a map of forces rather than a character list, (3) Fault lines and context — the underlying tensions that explain the story, (4) What to verify — the specific questions that require current reporting, with a note on which elements are most volatile. Written in plain language accessible to any journalist; avoids academic or diplomatic jargon. Neutral in register — no editorial judgements about which political position is correct.

## Quality Criteria
- [ ] Political system overview accurately describes the formal structure of power without assuming the journalist already knows it
- [ ] Principal actors are described in terms of their role and position on the story's subject — not just listed by name or party affiliation
- [ ] Fault lines section explains the underlying disagreements, not just the surface events
- [ ] Output is scrupulously neutral — it does not endorse any political position or editorially favour one actor over another
- [ ] "What to verify" section is specific: it names the kinds of sources (officials, opposition figures, civil society, international observers) most likely to provide reliable current information
- [ ] Output is clearly framed as a research orientation, not a publishable political analysis

## Example

### Input
Country: Valdoria (fictional composite). Story: a general election is four months away and there are credible reports of voter registration irregularities. I am writing a long-form investigation for an international news outlet. My audience knows little about this country. I need political context to frame the story and to know who the key actors are.

### Output

**Political system overview**

Valdoria operates as a presidential republic with a unicameral legislature. Executive power is formally concentrated in the presidency, which controls the appointment of cabinet ministers, the security services, and senior judicial positions. The legislature has constitutional authority over budgetary approval and can theoretically block executive nominations, but has in practice functioned as a weak check on presidential power for most of the past fifteen years. The judiciary is formally independent but international monitors have noted its susceptibility to political pressure in high-profile cases.

Elections are administered by a National Electoral Commission whose members are appointed by the president with legislative ratification. This appointment mechanism is directly relevant to your story: the composition and perceived independence of the Commission will be a central point of dispute in coverage of any registration irregularities. Understanding who sits on it, when their terms expire, and who appointed them is essential groundwork.

**Principal actors**

*The governing party and executive:* The current administration has held power for two consecutive terms and is seeking a third. Its political base is strongest in rural regions and among older voters. It controls the state broadcaster and has significant influence over the largest private media group through licensing relationships. On electoral administration, the government's position is that the Commission is independent; opposition figures contest this.

*The main opposition coalition:* A recently formed alliance of three previously competing centre and centre-left parties. Its cohesion is recent and its unity on policy beyond electoral reform is untested. The coalition's primary platform is institutional reform, including changes to the electoral commission's appointment mechanism. Internal tensions between its constituent parties on economic policy are a potential vulnerability.

*Civil society and electoral monitoring organisations:* Several domestic NGOs have independent electoral monitoring capacity. Their relationships with international bodies (regional human rights institutions, election observation missions) give them credibility that domestic political actors lack. They are likely to be your most reliable sources on the specific registration irregularities you are investigating.

*International actors:* Regional intergovernmental organisations and bilateral donors who fund governance programmes have leverage and interests in this election. Their public statements and private communications with government may be accessible through diplomatic sources.

**Fault lines and context**

The voter registration dispute sits at the intersection of three deeper tensions. First, a long-running contest over institutional design: whether the bodies that administer elections, adjudicate disputes, and enforce laws should be genuinely independent or subject to executive oversight. Second, a geographic and demographic divide between urban areas (where opposition support is concentrated and where registration complaints are predominantly located) and rural areas (where the governing party is stronger and where registration processes have reportedly proceeded without controversy). Third, a question of international legitimacy: the government is seeking foreign investment and regional partnerships that depend on a credible electoral process, while simultaneously resisting international scrutiny of administrative practices it regards as a domestic matter.

These tensions mean that the registration irregularity story is not only a story about ballot administration — it is a story about who controls the rules of political competition.

**What to verify**

Before publication, confirm through current sources:

- The current composition of the National Electoral Commission: who are the members, when were they appointed, and by whom?
- The specific nature of the registration complaints: are they concentrated in particular districts, and do those districts correlate with opposition-leaning demographics?
- The government's formal response to the complaints and whether any investigation has been opened
- The position of domestic electoral monitoring organisations — have they formally registered concerns with the Commission?
- Whether any regional or international election observation mission has been deployed or invited

Most volatile elements: The political situation four months before an election is highly dynamic. Party positions, coalition stability, and the government's stance on international monitoring are all likely to shift in the weeks ahead. Treat the actor map as a starting framework to be updated continuously through source reporting, not as a fixed description.

---

## Known Limitations
- This skill produces a research orientation framework, not a verified political analysis. All statements about specific political actors, events, and conditions must be confirmed through current primary sources before publication.
- Political situations can change rapidly, especially in the weeks surrounding elections, crises, or leadership transitions. The framework this skill produces reflects structural features that change slowly — it is not a substitute for current reporting.
- The skill is designed for general journalistic contexts. Highly specialised coverage (electoral law, constitutional litigation, diplomatic negotiations) will require expert sources beyond what this framework can provide.
- The skill takes a neutral analytical stance. Journalists covering situations involving human rights violations, authoritarian consolidation, or democratic backsliding may need to apply additional ethical and editorial judgement about how to frame political actors whose actions are contested on normative grounds.

## Related Skills
- [facts-context/background-brief-writer](background-brief-writer.md)
- [facts-context/timeline-builder](timeline-builder.md)
- [research/people-contacts/expert-identifier](../../people-contacts/expert-identifier.md)
