---
name: news-article-writer
status: stable
category: magazine-journalism
subcategory: writing
version: 1.0
eval_score: 4.39
tags: [journalism, writing, news, inverted-pyramid, article, reporting]
---

# News Article Writer

## What This Skill Does
Writes a complete news article in inverted-pyramid structure from a set of facts, quotes, and context provided by the journalist — ready for editing and publication.

## When To Use This Skill
- You have notes, quotes, and facts from reporting and need to assemble them into a structured article quickly
- You're on a tight deadline and need a clean first draft to edit rather than writing from scratch
- You're training or mentoring a junior reporter and want to show how the same facts can be structured into a publishable piece
- You need to turn a press conference, council meeting, or event into a news story within the hour

## What You Need To Provide
**Required:**
- The key facts: what happened, who is involved, when, where, and why it matters
- At least one direct quote with full attribution (name, title, organization)
- Word count target (defaults to 500–700 words if not specified)

**Optional:**
- Additional quotes from other sources (more voices improve the piece)
- Background context or history relevant to the story
- Publication style (broadsheet, tabloid, wire service, trade press)
- Specific angle or framing the editor has requested
- Any facts that need caveats or are contested

## How Claude Approaches This

1. **Ranks facts by news value.** Identifies the single most important or surprising element and places it in the opening sentence. Everything after follows in descending order of significance — the classic inverted pyramid, so editors can cut from the bottom without losing essential information.

2. **Writes a clean, direct lede.** The first paragraph answers who, what, when, where, and why-it-matters in under 35 words. No throat-clearing, no scene-setting, no attribution unless the source is itself the news.

3. **Integrates quotes at natural breaking points.** Quotes appear after a fact or claim they can react to, not in isolation. Each quote is preceded by context and followed by expansion or the next fact. No two consecutive quote paragraphs. Attribution uses "said" — not "stated," "noted," "claimed," or "explained" unless the verb is editorially significant.

4. **Provides necessary context without overloading.** Background paragraphs appear in the lower third of the piece, positioned after the news and reaction but before the final quote or forward-looking paragraph. Context is proportional to the story — a brief update needs one sentence of background, not three paragraphs of history.

5. **Closes with a forward-looking element.** The final paragraph points to what happens next: the next hearing, the expected decision, the upcoming deadline. This gives the reader a reason to follow the story and gives the desk a natural end point.

## Output Format

500–700 words (or the specified count). No headline — the desk writes headlines. Structure: lede paragraph, 2–3 development paragraphs with integrated quotes, 1–2 context/background paragraphs, closing paragraph. Short paragraphs throughout (2–3 sentences max). Plain third-person prose. Attribution style: "said [Name]" on first use, "[Name] said" acceptable thereafter. No bullet points, no subheadings, no bold text in the body.

## Quality Criteria
- [ ] Lede paragraph contains the most newsworthy fact and answers the core questions in under 35 words
- [ ] Inverted pyramid is maintained — the article can be cut from the bottom at any paragraph break without losing essential news
- [ ] Every quote is fully attributed with name, title, and organization on first mention
- [ ] No two consecutive paragraphs are quotes — context or fact appears between each
- [ ] Attribution verb is "said" throughout unless a different verb is editorially justified
- [ ] Background context is proportional to the story — not over-explained for a routine update, not under-explained for a developing story
- [ ] Final paragraph contains a forward-looking element (next event, expected decision, upcoming deadline)
- [ ] No editorializing — the writer's opinion is absent from the copy

## Example

### Input
**Facts:** The regional transport authority has approved a $340 million plan to extend the city's light rail system by 8.5 miles into the southeastern suburbs. The vote was 7-2, with the two dissenting members citing cost overruns on the previous extension. Construction is expected to begin in early 2027 and take four years. The extension will add six new stations and is projected to serve 45,000 daily riders by 2033. Federal funding will cover $180 million; the remainder comes from a voter-approved sales tax increase passed last November.

**Quotes:**
- Chair Roberta Chavez, Regional Transport Authority: "This is the most significant investment in public transit this region has seen in 20 years. The southeast corridor has been underserved for too long."
- Board member David Kowalski (dissenting vote): "I support the extension in principle, but we went $90 million over budget on the north line. Until we understand why, I can't vote yes on a project twice that size."
- Angela Torres, executive director, Southeast Community Alliance: "People in this part of the city have been promised better transit for a decade. This vote means something — but we'll believe it when we see shovels in the ground."

**Word count:** 550 words

**Style:** Broadsheet

### Output

The Regional Transport Authority voted 7-2 on Thursday to approve a $340 million extension of the city's light rail system into the southeastern suburbs, the largest public transit investment the region has made in two decades.

The 8.5-mile extension will add six stations along the southeast corridor and is projected to serve 45,000 daily riders by 2033. Construction is expected to begin in early 2027 and take approximately four years.

"This is the most significant investment in public transit this region has seen in 20 years," said Roberta Chavez, chair of the Regional Transport Authority. "The southeast corridor has been underserved for too long."

Federal funding will cover $180 million of the project cost. The remaining $160 million will come from a half-cent sales tax increase approved by voters last November in a ballot measure that passed with 58% support.

The two dissenting votes came from board members who pointed to cost overruns on the authority's most recent project, the north line extension completed in 2023.

"I support the extension in principle, but we went $90 million over budget on the north line," said board member David Kowalski. "Until we understand why, I can't vote yes on a project twice that size."

Authority staff told the board that an independent audit of the north line overruns, commissioned last year, will be completed by June. Chavez said the findings would inform procurement decisions on the new project but should not delay approval.

The southeast corridor has the highest concentration of bus-dependent commuters in the metro area. An estimated 62,000 residents in the catchment zone currently rely on bus routes that average 47-minute travel times to the city center — roughly three times the duration of the equivalent light rail journey once the extension is operational.

Angela Torres, executive director of the Southeast Community Alliance, said the vote was overdue. "People in this part of the city have been promised better transit for a decade. This vote means something — but we'll believe it when we see shovels in the ground," Torres said.

The authority will open a public comment period on station locations in April, with final route alignment expected to be confirmed by the end of the year.

---
*Next step: Run copy-editor-assistant to check style compliance before filing, or use sidebar-fact-box-writer to create a companion box with the project timeline and funding breakdown.*

## Known Limitations
- Claude cannot verify the facts you provide. All figures, names, titles, and quotes must be accurate in the input — the skill will use them as given. Always fact-check before publication.
- The skill produces a single-source-type article structure. For complex investigative stories with contested facts and multiple document sources, this skill provides a starting framework but the journalist must restructure for the specific narrative.
- Without a specified publication style, the output defaults to a neutral broadsheet register. Tabloid, wire, and trade press each have distinct conventions that require explicit instruction.

## Related Skills
- [lede-writer](lede-writer.md) — generate alternative opening paragraphs if the lede needs reworking
- [copy-editor-assistant](../editing/copy-editor-assistant.md) — line-edit the draft before filing
- [sidebar-fact-box-writer](sidebar-fact-box-writer.md) — extract key data into a companion fact box
- [headline-generator](../ideation/headline-generator.md) — generate headline options for the finished piece
- [reportage-structure](reportage-structure.md) — plan full article architecture for longer features
