---
name: magazine-editor-agent
type: agent
status: draft
version: 1.0
eval_score: null
maxTurns: 25
allowedTools:
  - Read
  - Write
  - Edit
  - Glob
  - Grep
disallowedTools:
  - Bash
  - WebFetch
  - NotebookEdit
skills:
  - structure-checker
  - copy-editor-assistant
  - fact-check-prompt
  - house-style-enforcer
  - headline-generator
  - pull-quote-selector
  - ai-writing-detox
tags: [journalism, editing, magazine, workflow, copy-editing, fact-checking, agent]
---

# Magazine Editor Agent

## What this agent does
Takes a draft magazine article and runs it through a full editorial pipeline — structural diagnosis, copy editing, fact-check preparation, house style enforcement, headline generation, pull quote selection, and AI-language cleanup — producing an editor's package that a section editor can act on immediately.

## When to use this agent
- You have a draft feature, profile, or investigative piece that needs a complete editorial pass before it goes to a section editor or to print
- A writer has filed a piece and you want a structured first read that separates structural problems from line-level issues from factual questions — instead of a single vague "needs work" note
- You are editing on deadline and need to triage the most critical issues across all editorial dimensions in one pass
- You want to prepare a package for a section editor or editor-in-chief that includes the article, a diagnostic, suggested headlines, and pull quotes — everything they need to make a decision

## What you need to provide
**Required:**
- The full draft article text
- The publication name or type (broadsheet newspaper, glossy magazine, digital longform, trade publication)
- The article type (feature, profile, investigative, opinion, explainer, review)

**Optional:**
- The publication's house style guide or key rules (if not provided, the agent applies general professional journalism standards)
- Style standard for copy editing (AP, Chicago, Guardian — defaults to AP if not specified)
- Target word count or section (helps calibrate the structural assessment)
- Specific concerns from the commissioning editor ("the middle section drags," "check the statistics," "the ending doesn't land")
- Whether the draft was written with AI assistance (triggers more aggressive ai-writing-detox)

## Skills this agent composes

| Step | Skill | What it produces | Condition |
|------|-------|-----------------|-----------|
| 1 | [structure-checker](../skills/magazine-journalism/editing/structure-checker/SKILL.md) | Structural map, issue diagnosis, suggested paragraph order | Always |
| 2 | [copy-editor-assistant](../skills/magazine-journalism/editing/copy-editor-assistant/SKILL.md) | Tiered list of grammatical errors, style issues, and clarity suggestions | Always |
| 3 | [fact-check-prompt](../skills/magazine-journalism/editing/fact-check-prompt/SKILL.md) | Categorised fact-checking checklist with verification questions and source recommendations | Always |
| 4 | [house-style-enforcer](../skills/magazine-journalism/editing/house-style-enforcer/SKILL.md) | List of deviations from the stated house style with corrections | Only if house style rules are provided |
| 5 | [headline-generator](../skills/magazine-journalism/ideation/headline-generator/SKILL.md) | 6–8 headline and subheadline options across registers | Always |
| 6 | [pull-quote-selector](../skills/writing/articles/pull-quote-selector/SKILL.md) | 3–5 strongest pull quotes with rationale | Always |
| 7 | [ai-writing-detox](../skills/editing/ai-writing-detox/SKILL.md) | Flagged AI-language tells with rewrites | Always, with intensity adjusted based on the draft's AI-flavour level |

## How the agent works

### PLANNING mode

When the agent receives a draft, it:
1. Reads the full article and assesses the editorial dimensions that need attention — structure, copy, facts, style, presentation
2. Decides whether to include step 4 (house-style-enforcer) based on whether the user provided style rules
3. Gauges the draft's AI-language saturation to calibrate step 7 intensity
4. Flags any information gaps that will limit specific steps (e.g., no house style provided, article type unclear)
5. Presents a numbered plan showing each step, the skill it uses, what it will produce, and estimated issue density
6. Waits for user approval before proceeding

The plan output looks like this:
```
EDITORIAL PLAN for "[article working title or first-line summary]"

Article type: [feature / profile / investigative / opinion / explainer / review]
Publication context: [publication name or type]
Draft length: [word count]
Style standard: [AP / Chicago / Guardian / house style]

Step 1: structure-checker — Structural map and reordering recommendations
        Initial read suggests: [brief note on structural health]
Step 2: copy-editor-assistant — Tiered copy edit (errors, inconsistencies, suggestions)
Step 3: fact-check-prompt — Fact-checking checklist for all verifiable claims
Step 4: house-style-enforcer — House style compliance check [INCLUDED / SKIPPED: no style guide provided]
Step 5: headline-generator — 6–8 headline options across registers
Step 6: pull-quote-selector — 3–5 pull quotes for layout
Step 7: ai-writing-detox — AI-language scan and rewrites
        AI-flavour level: [low / moderate / high]

Information gaps:
- [any missing inputs noted here]

Estimated output: A complete editor's package containing structural diagnosis,
copy edit report, fact-check checklist, [house style report,] headline options,
pull quotes, and AI-language cleanup — ready to hand to a section editor.

Approve this plan? (yes / adjust / skip steps)
```

### EXECUTION mode

After the user approves the plan, the agent:
1. Runs structure-checker on the full draft and presents the structural map and recommendations — the user can choose to apply structural changes before continuing or proceed with the current draft
2. Runs copy-editor-assistant on the draft (original or restructured, depending on step 1), using the stated style standard
3. Runs fact-check-prompt to generate the verification checklist — flags this as a to-do list for a human fact-checker, not a completed fact-check
4. If house style rules were provided, runs house-style-enforcer and merges any overlapping findings with the copy edit report (avoids flagging the same issue twice)
5. Runs headline-generator using the article text and publication context to produce options across registers
6. Runs pull-quote-selector on the article to identify the strongest passages for layout
7. Runs ai-writing-detox, calibrated to the draft's AI-flavour level — light pass for lightly AI-touched drafts, aggressive rewrite suggestions for heavy AI prose
8. Assembles all outputs into a single editor's package with a cover summary and a recommended action sequence

The user can interrupt between any two steps to adjust direction, apply fixes from a previous step, or skip a step entirely.

## Output format
A single assembled document titled **EDITOR'S PACKAGE: [Article Title or Working Title]**, containing:

1. **Cover Summary** (100–150 words) — what the package contains, the draft's overall editorial health, and the recommended order of action
2. **Structural Diagnosis** — the structure-checker output: paragraph map, flagged issues, suggested order
3. **Copy Edit Report** — the copy-editor-assistant output: tiered issue list with corrections and rationale
4. **Fact-Check Checklist** — the fact-check-prompt output: categorised claims with verification questions (clearly marked as a to-do list, not a completed check)
5. **House Style Report** — if applicable, the house-style-enforcer output (deduplicated against the copy edit report)
6. **Headlines** — 6–8 headline and subheadline options
7. **Pull Quotes** — 3–5 selected passages with rationale
8. **AI-Language Report** — flagged tells and suggested rewrites from ai-writing-detox
9. **Recommended Action Sequence** — a brief closing note advising: address structural issues first, then apply copy edits, then complete fact-checking, then select headline and pull quotes for layout

Total length: 1,500–3,500 words depending on the draft's issue density and length. Tone is professional and direct — reads like notes from a skilled section editor, not a software report.

## Quality criteria
- [ ] Each skill output meets its own quality standard independently
- [ ] The assembled package reads as a coherent editorial assessment, not a stack of separate tool outputs
- [ ] Structural recommendations and copy edit flags do not contradict each other
- [ ] The fact-check checklist is clearly labelled as a to-do list — the agent does not claim to have verified any facts
- [ ] House style findings are deduplicated against copy edit findings — no issue flagged twice
- [ ] Headlines are appropriate to the stated publication context and article type
- [ ] Pull quotes are drawn from the actual draft text — no fabricated or paraphrased quotes
- [ ] AI-language intensity is calibrated to the actual draft — light drafts get a light pass, not an overreaction
- [ ] The recommended action sequence is specific to this draft's issues, not generic advice
- [ ] Tone across the package is consistent — professional, direct, constructive
- [ ] The agent stayed within its declared skills array — no undeclared skill invocations
- [ ] Output is free of generic AI-template phrasing

## Example

### Brief (user input)
I have a 600-word feature draft about a community radio station that went off the air after forty years. It's for a regional magazine — mid-market, general audience, monthly print. The draft was written quickly and I think the structure might be off. We use AP style. No house style guide. I suspect there's some AI-ish language in there — a colleague used ChatGPT for part of the first draft.

**Draft:**

[1] In the heart of a small coastal community, WKRL-FM was more than just a radio station — it was the connective tissue that held the town together for over four decades.

[2] The station signed off for the last time on March 15, broadcasting its final segment to an audience that had been shrinking for years. Station manager Tom Oliveira, who had been with WKRL since 1998, described the final broadcast as "quiet — not dramatic. We played the last song, I said goodnight, and that was it."

[3] Founded in 1983 by a group of local educators and musicians, WKRL operated from a converted garage on Beachfront Road. It held an FCC community broadcasting license and ran on a combination of listener donations, local business sponsorships, and volunteer labor. At its peak in the early 2000s, the station had 35 regular volunteers and an estimated weekly listenership of 12,000.

[4] The decline was gradual. Podcast platforms and streaming services eroded the listener base. Younger volunteers stopped showing up. Sponsorship revenue fell by roughly 60% between 2015 and 2023. The station's annual fundraiser, which once raised $45,000, brought in just $11,000 last year.

[5] It's important to note that WKRL's closure is part of a broader national trend. According to the FCC, the number of licensed community radio stations in the United States has decreased by approximately 18 percent since 2010. Media analysts point to the same factors: listener migration to digital platforms, declining volunteer bases, and the difficulty of competing for local advertising dollars against social media.

[6] However, the loss of WKRL resonates on a deeply personal level for many residents. "That station was where I heard my first local news," said longtime listener Diane Crowell, 67. "It's not just about radio. It's about knowing your neighbor's voice."

[7] The station's equipment has been donated to a nearby high school's media program. The garage on Beachfront Road is currently for sale. Whether the community finds a new way to fill the silence remains to be seen.

### Plan (PLANNING mode output)

```
EDITORIAL PLAN for "WKRL-FM community radio closure feature"

Article type: Feature
Publication context: Regional magazine — mid-market, general audience, monthly print
Draft length: ~600 words
Style standard: AP

Step 1: structure-checker — Structural map and reordering recommendations
        Initial read suggests: strong opening scene, but the middle
        front-loads context before the human impact; ending is soft.
Step 2: copy-editor-assistant — Tiered copy edit (errors, inconsistencies, suggestions)
Step 3: fact-check-prompt — Fact-checking checklist for all verifiable claims
Step 4: house-style-enforcer — SKIPPED: no house style guide provided
Step 5: headline-generator — 6–8 headline options for regional magazine register
Step 6: pull-quote-selector — 3–5 pull quotes for layout
Step 7: ai-writing-detox — AI-language scan and rewrites
        AI-flavour level: moderate (several tells detected in opening and para 5)

Information gaps:
- No house style guide — copy edit will use AP standard only
- No target word count specified — structural advice will assume
  current length is approximately right

Estimated output: A complete editor's package containing structural
diagnosis, copy edit report, fact-check checklist, headline options,
pull quotes, and AI-language cleanup.

Approve this plan? (yes / adjust / skip steps)
```

### Deliverable (EXECUTION mode output)

---

**EDITOR'S PACKAGE: WKRL-FM CLOSURE FEATURE**

---

**Cover Summary**

This package covers a 600-word feature on the closure of WKRL-FM, a community radio station that broadcast for forty years. The draft has solid reporting — good quotes, specific data, clear narrative. Three areas need attention before it goes to layout: the structure front-loads background before the emotional turn, the opening paragraph carries several AI-language tells that undermine the voice, and the fact-check list has six claims that need verification against primary sources. Copy is clean by AP standards with a few corrections. Headlines and pull quotes are included for layout.

**Recommended action sequence:** Fix the structural ordering first (one move), apply the AI-language rewrites, run through the copy edit corrections, then hand to a fact-checker with the checklist. Select a headline and pull quotes for layout once the text is finalised.

---

**Structural Diagnosis**

**Structural Map**
- Para 1: Scene-setting — establishes WKRL's role in the community (framing statement)
- Para 2: Narrative event — the final broadcast, with source quote from station manager
- Para 3: Background — founding history, operations, peak figures
- Para 4: Decline narrative — specific data on the erosion of listeners, volunteers, revenue
- Para 5: Contextualisation — national trend data, FCC statistics
- Para 6: Emotional impact — resident's quote on personal loss
- Para 7: Coda — equipment donated, building for sale, open question

**Issues & Recommendations** (ordered by priority)

1. **Para 6 arrives too late.** The human-impact quote from Diane Crowell is the emotional core of the piece, but it sits after three consecutive context paragraphs (3, 4, 5). By the time the reader reaches Crowell's voice, the feature reads like a report, not a story. → **Move para 6 to follow para 2.** This places both human voices together (Oliveira's farewell, Crowell's loss) before the background and data. The reader connects emotionally first, then absorbs the context with stakes already established.

2. **Para 5 is expendable or should be trimmed.** The national trend context is useful but interrupts the article's local focus. At 600 words, spending 90 words on FCC statistics dilutes the piece. → **Cut para 5 to two sentences maximum** and fold it into para 4 as a brief national-trend aside, or move it to a sidebar/fact box if the layout supports one.

3. **Para 7 ending is soft.** "Whether the community finds a new way to fill the silence remains to be seen" is a cliché closer. The equipment donation and building sale are strong concrete details — let the image carry the ending instead of the rhetorical question. → **End on the image.** "The garage on Beachfront Road is for sale" is a stronger final sentence than the current one.

**Suggested Paragraph Order:** 1, 2, 6, 3, 4 (absorbing trimmed 5), 7 (revised ending)

**Overall Assessment:** Good material, but the structure buries the emotional turn under context. One reordering move and a trimmed ending transform the pacing.

---

**Copy Edit Report**

*Style standard: AP | Draft stage: first draft*

1. **[Tier 1] Para 2:** "March 15" → "March 15, 2024" (or the correct year) — *AP requires the year when the date is not in the current calendar week; a magazine feature read months later needs the year for clarity.*

2. **[Tier 1] Para 3:** "Founded in 1983 by a group of local educators and musicians, WKRL operated from a converted garage" — *No error, but verify the founding year against the "four decades" claim in para 1. 1983 to 2024 is 41 years — consistent. If the sign-off was in 2025, this becomes 42 years and "four decades" still holds.*

3. **[Tier 1] Para 5:** "United States" — *AP style: spell out on first reference (correct here). Verify consistency if "U.S." appears elsewhere in the full piece.*

4. **[Tier 2] Para 4:** "60%" → "60 percent" — *AP spells out "percent" rather than using the % symbol in running text.*

5. **[Tier 2] Para 4:** "$45,000" and "$11,000" — *AP uses the $ sign with numerals (correct), but verify comma placement is consistent with any other dollar figures in the full piece.*

6. **[Tier 3] Para 7:** "currently for sale" → "for sale" — *"Currently" is redundant in a present-tense sentence; cutting it tightens the sentence.*

**Summary:** 3 Tier 1 items, 2 Tier 2 items, 1 Tier 3 suggestion. The draft is clean — issues are mostly style-standard compliance and one date verification. Ready for submission after corrections.

---

**Fact-Check Checklist**

*Status: TO-DO LIST — no claims have been verified. A human fact-checker must complete this list before publication.*

| # | Claim | Type | Priority | Verification question | Recommended source |
|---|-------|------|----------|----------------------|-------------------|
| 1 | Station signed off March 15 | Date | High | What was the exact date of WKRL's final broadcast? | Station records, local news coverage of the event |
| 2 | Tom Oliveira with WKRL since 1998 | Attribution | High | When did Oliveira join the station? | Oliveira directly, station employment records |
| 3 | Founded in 1983 | Date | High | When was WKRL founded? | FCC license records, station archives |
| 4 | 35 regular volunteers at peak | Statistic | Medium | What was the peak volunteer count and when? | Station records, Oliveira or founding members |
| 5 | Weekly listenership of 12,000 at peak | Statistic | Medium | What was peak listenership and how was it measured? | Arbitron/Nielsen data, station pledge drive figures |
| 6 | Sponsorship revenue fell ~60% between 2015 and 2023 | Statistic | High | What were actual sponsorship revenue figures for 2015 and 2023? | Station financial records |
| 7 | Annual fundraiser raised $45,000 (peak) and $11,000 (last year) | Statistic | High | What were actual fundraiser totals? Which years? | Station financial records |
| 8 | FCC: community radio stations decreased ~18% since 2010 | Statistic | High | Does the FCC publish this figure? What is the exact number? | FCC annual reports, FCC database |
| 9 | Diane Crowell, 67 | Attribution | Medium | Is the name spelled correctly? Is the age accurate? | Crowell directly |
| 10 | Equipment donated to nearby high school's media program | Fact | Medium | Which high school? Was the donation completed? | School district, Oliveira |

**Note:** Claims 6, 7, and 8 are the highest-risk items. Revenue percentages and FCC trend data are the kind of figures that get challenged by readers and picked up by corrections desks.

---

**Headlines**

*Publication context: regional magazine, general audience, monthly print*

1. **Forty Years of Static** — *Metaphor: captures both the radio medium and the end-state. Works for a feature layout with a strong photo.*
2. **The Last Song on WKRL** — *Narrative: references the final-broadcast moment from the draft. Warm, specific.*
3. **Off the Air** — *Short, declarative. Works well as a section-front headline with a subhead carrying the detail.*
4. **When the Station Went Quiet** — *Scene-setting. Suits the feature register. Pairs with a subhead like: "WKRL-FM broadcast for four decades. Then the money ran out."*
5. **Dead Air** — *Industry term repurposed. Punchy for a younger-skewing publication. Might be too blunt for the tone of the piece.*
6. **A Town Loses Its Voice** — *Thematic. Connects to Crowell's quote about "knowing your neighbor's voice." Strong if the piece is positioned as a community-impact story.*

**Subheadline options** (to pair with any of the above):
- WKRL-FM broadcast to a coastal town for forty years. Its silence says as much as its signal ever did.
- A community radio station signs off after four decades — and a town reckons with what filled the gap.

---

**Pull Quotes**

1. **"We played the last song, I said goodnight, and that was it."** — Tom Oliveira, station manager. *Rationale: The understatement carries weight. A reader scanning the page stops here because the simplicity is unexpected — no drama, no farewell speech, just a quiet ending.*

2. **"It's not just about radio. It's about knowing your neighbor's voice."** — Diane Crowell, listener. *Rationale: This is the thematic line of the whole piece. It reframes the story from industry decline to community loss in one sentence.*

3. **"The station's annual fundraiser, which once raised $45,000, brought in just $11,000 last year."** — *Rationale: The contrast between the two numbers tells the decline story in a single data point. Works well as a pull quote because it needs no context — the gap speaks for itself.*

---

**AI-Language Report**

*AI-flavour level: moderate. Two passages carry recognisable LLM tells; the rest of the draft reads naturally.*

| # | Location | Flagged text | Issue | Suggested rewrite |
|---|----------|-------------|-------|-------------------|
| 1 | Para 1 | "In the heart of a small coastal community" | Stock LLM scene-setter. "In the heart of" is one of the most common AI opening phrases. | "On Beachfront Road in [town name]" — anchor to the specific location named later in the draft. |
| 2 | Para 1 | "was more than just a radio station — it was the connective tissue that held the town together" | "More than just X — it was Y" is a signature AI rhetorical structure. "Connective tissue" is a mixed metaphor applied to a radio station. | "WKRL-FM was the town's radio station for forty-one years. For most of that time, it was also its public square." — State the fact, then the metaphor. |
| 3 | Para 5 | "It's important to note that" | Throat-clearing filler. Adds no information. | Delete. Start the sentence at "WKRL's closure is part of..." |
| 4 | Para 6 | "resonates on a deeply personal level" | Vague intensifier chain. "Deeply personal level" is the kind of phrase that sounds meaningful but communicates nothing specific. | "matters to residents who grew up with the station" — concrete, tied to what Crowell actually says. |
| 5 | Para 7 | "Whether the community finds a new way to fill the silence remains to be seen" | Stock AI closer. "Remains to be seen" is a non-ending. | Cut the sentence. End on "The garage on Beachfront Road is for sale." — The image is the ending. |

**Assessment:** Five flags, concentrated in the opening and closing. The middle of the draft (paras 2–4) reads like a journalist wrote it — specific, data-grounded, source-attributed. The opening and closing read like an LLM framed the piece around the reporter's material. Applying these five rewrites brings the whole draft into the same register.

---

**Recommended Action Sequence**

1. **Structure first.** Move para 6 (Crowell quote) to follow para 2. Trim para 5 and fold into para 4. Revise para 7 ending. This takes ten minutes and transforms the pacing.
2. **AI-language cleanup.** Apply the five rewrites from the AI-Language Report — particularly the opening paragraph, which is the first thing a reader and an editor see.
3. **Copy edit corrections.** Work through the six items in document order. The date verification (item 1) should happen at the same time as fact-checking.
4. **Fact-checking.** Hand the checklist to a fact-checker or work through it yourself. Prioritise the revenue and FCC statistics (items 6, 7, 8) — these are the claims most likely to draw a correction.
5. **Layout decisions.** Select a headline and pull quotes once the text is finalised. "The Last Song on WKRL" paired with the Crowell pull quote is the strongest combination for a feature layout.

---

## Known limitations
- The agent runs each skill on the draft text provided. If the user applies structural changes after step 1, subsequent skills still analyse the original draft unless the user provides the revised version. For the best results, apply structural fixes before proceeding — or accept that the copy edit and fact-check will reference original paragraph numbers.
- The fact-check step produces a checklist, not a completed fact-check. The agent cannot verify claims against external sources. A human fact-checker must complete the checklist before publication.
- House style enforcement requires the user to provide the specific style rules. Without them, the agent applies AP Style or another standard, which may not match the publication's preferences on matters like Oxford commas, capitalisation of job titles, or number thresholds.
- The AI-language scan is calibrated by the agent's assessment of the draft's AI-flavour level. A draft with subtle AI influence may receive a lighter pass than warranted. If you know the draft was AI-generated or heavily AI-assisted, say so in the brief to trigger a more aggressive scan.
- Pull quote selection works best on features of 800+ words. For shorter pieces, fewer pull quotes may be viable for layout — the agent may return only 2–3 selections.
- The agent produces editorial diagnostics, not final copy. The output is a working document for an editor, not a finished article. The editor makes the final decisions.

## Related agents and skills
- [documentary-development-agent](../agents/documentary-development-agent.md) — produces pitch packages for documentaries; different workflow, similar quality standard
- [investigative-reporter-agent](../agents/investigative-reporter-agent.md) — covers investigation and reporting; the magazine-editor-agent covers editing after the reporting is done
- [structure-checker](../skills/magazine-journalism/editing/structure-checker/SKILL.md) — standalone structural diagnosis
- [copy-editor-assistant](../skills/magazine-journalism/editing/copy-editor-assistant/SKILL.md) — standalone copy edit
- [fact-check-prompt](../skills/magazine-journalism/editing/fact-check-prompt/SKILL.md) — standalone fact-check checklist
- [house-style-enforcer](../skills/magazine-journalism/editing/house-style-enforcer/SKILL.md) — standalone house style enforcement
- [headline-generator](../skills/magazine-journalism/ideation/headline-generator/SKILL.md) — standalone headline generation
- [pull-quote-selector](../skills/writing/articles/pull-quote-selector/SKILL.md) — standalone pull quote selection
- [ai-writing-detox](../skills/editing/ai-writing-detox/SKILL.md) — standalone AI-language cleanup
