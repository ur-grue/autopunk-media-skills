---
name: topic-background-brief
status: stable
category: research
subcategory: facts-context
version: 1.0
eval_score: 4.89
tags: [research, background, briefing, journalism, pre-production, organisation]
---

# Topic Background Brief

## What This Skill Does
Organise user-provided notes, facts, and context into a structured background brief for a story — creating a scannable reference document that a journalist, producer, or editor can consult throughout production.

## When To Use This Skill
- You have scattered research notes and need to turn them into a usable reference document before starting to write
- You are handing a story to a colleague or producer who needs to get up to speed quickly
- You are beginning a multi-part series and need a consolidated brief that the full team can work from
- You want to identify the gaps in your research before going further

## What You Need To Provide
**Required:** The story topic and angle; all notes and facts gathered so far (can be unstructured, rough, or copied directly from a notepad).

**Optional:** What gaps you already know exist; who the brief is for (reporter, editor, producer, director); whether you want the brief to highlight unanswered questions prominently; any facts that must appear in a specific section.

## How Claude Approaches This
1. Reads through the user's provided notes in full, without adding or inferring information not present in the input
2. Organises the material into standard briefing categories: Core Facts, Timeline, Key Players, Context, Open Questions, and Source Suggestions
3. Uses bullet points within each section for scanability — someone should be able to locate a specific fact within ten seconds
4. Flags contradictions or inconsistencies in the provided notes rather than silently resolving them
5. Frames the Open Questions section as concrete research tasks, not vague gaps
6. Ends with a "Gaps and Next Steps" section that summarises what is missing and what the journalist should do next

## Output Format
Structured brief with five or six labelled sections. Each section uses bullet points. Contradictions in the source material are flagged with a note (not silently resolved or decided). Open Questions are framed as actionable research tasks ("Confirm whether the council vote was unanimous — check meeting minutes"). "Gaps and Next Steps" at the end summarises the most important missing information and suggests where to find it. Total: 400–700 words depending on the volume of input provided.

## Quality Criteria
- [ ] All content is traceable to the user's provided notes — nothing has been added from Claude's general knowledge
- [ ] Contradictions in the notes are flagged explicitly rather than silently resolved
- [ ] Open Questions are phrased as specific research tasks, not as vague observations
- [ ] The brief is scannable — a colleague could find any specific fact in under ten seconds
- [ ] The brief would be useful as a hand-off document to someone joining the story cold

## Example

### Input
Story topic: Proposed urban green space project in the city's eastern district.

Angle: Whether the project is viable given the contamination history of the site.

Notes (unstructured):
City council approved the project in the autumn. The budget is £3.2 million. A community group called Friends of Eastfield is opposed — they are worried about the contamination. The site was an industrial site for most of the twentieth century, a metalworks I think. There's a 2025 completion timeline but I'm not sure if that's still the case. The project architect is someone called Rawlings — she gave a quote saying the design incorporates a raised boardwalk to avoid direct soil contact. I have a quote from a council spokesperson saying soil testing has been commissioned. I don't know the results. The green space would cover about 4 hectares. There may be a planning application somewhere. Budget might have been revised upward but I'm not sure.

### Output

**Background Brief: Eastfield Green Space Project**
*Prepared from reporter notes — not independently verified*

---

**Core Facts**

- Project: 4-hectare urban green space in the city's eastern district
- Budget: £3.2 million (note: reporter's notes flag possible upward revision — unconfirmed)
- Approval: City council approved the project in autumn (year not specified in notes — confirm)
- Target completion: 2025 (reporter's notes flag this as possibly outdated — confirm with council)
- Site history: Former industrial site, described in notes as a metalworks for most of the twentieth century
- Design feature: Architect has specified a raised boardwalk to avoid direct contact with the soil

---

**Timeline**

- [Twentieth century to unspecified date]: Site operated as a metalworks
- Autumn [year TBC]: City council approval granted
- [Date TBC]: Soil testing commissioned (per council spokesperson)
- 2025 (unconfirmed): Projected completion

*Gap: No dates for planning application submission, soil testing, or any public consultation process.*

---

**Key Players**

- City council: Approving body; a spokesperson confirmed soil testing has been commissioned
- [Architect surname: Rawlings] — full name and firm not in notes; quote on raised boardwalk design
- Friends of Eastfield: Community opposition group; concerns centre on soil contamination
- Soil testing contractor: Not named in notes

---

**Context**

- The contamination concern stems from the site's industrial history as a metalworks — metalworking sites commonly leave heavy metal contamination (lead, chromium, cadmium) in soil
- The raised boardwalk design suggests the project team is aware of the contamination issue and has designed around direct contact, though this does not address whether the soil will be remediated
- The council has commissioned soil testing but results are not in the notes

---

**Open Questions**

- What are the soil testing results, and have they been published? (Check: council website, planning portal, FOI if not public)
- Has the budget been revised upward, and if so, what drove the increase? (Check: council budget papers, planning committee minutes)
- Is the 2025 completion timeline still current? (Check: recent council announcements or planning updates)
- What is the full name and firm of architect Rawlings? (Check: council planning application documents)
- What specific contamination concerns has Friends of Eastfield raised, and have they engaged formally with the planning process? (Check: planning objection register)
- What year did the council vote take place, and was the vote unanimous? (Check: council meeting minutes)

---

**Gaps and Next Steps**

The most significant gap is the soil testing results — this is central to the viability angle. Request these from the council under FOI if not publicly available. The planning application (if submitted) will contain the full design brief, the architect's details, and any environmental assessments. The council planning portal should be the first stop. Friends of Eastfield may have filed formal planning objections with more specific contamination evidence — worth checking the objection register before approaching them for interview.

## Known Limitations
- This skill organises ONLY what the user provides — it does not research additional context, fill in gaps with general knowledge, or verify the accuracy of the notes
- Thin or vague input produces a thin brief; the output quality is bounded by the quality of the input
- The skill is a structuring tool, not a research tool — it makes existing notes more usable, it does not replace the research itself
- For complex investigations with large volumes of notes, consider providing the material in sections rather than all at once, as very long unstructured input may result in some details being missed

## Related Skills
- [event-chronology-builder](event-chronology-builder.md)
- [fact-sheet-writer](fact-sheet-writer.md)
- [topic-glossary-writer](topic-glossary-writer.md)
