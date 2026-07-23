---
name: magazine-editor-agent
type: agent
status: stable
version: 1.0
eval_score: 4.96
maxTurns: 25
allowedTools:
  - Read
  - Write
  - Edit
  - Glob
  - Grep
disallowedTools: []
skills:
  - structure-checker
  - ai-writing-detox
  - copy-editor-assistant
  - house-style-enforcer
  - fact-check-prompt
  - headline-generator
  - pull-quote-selector
tags: [journalism, editing, magazine, workflow, agent, copy-editing, fact-checking]
---

# Magazine Editor Agent

## What this agent does
Takes a draft magazine article and produces a complete editorial package — structural diagnosis, register cleanup, copy edits, house style compliance, fact-check checklist, headline options, and pull quotes — ready for the editor to sign off before layout.

## When to use this agent
- You have a near-finished draft and want to run the full editorial pass before submitting to your editor or going to layout
- You are a commissioning editor receiving a freelancer's draft and want a structured first-pass edit with all the standard checks in one run
- You are working on deadline and need to compress what would normally be three or four separate editing passes into one orchestrated sequence
- You want to ensure a piece that was partly AI-assisted reads like it was written by a human professional before it reaches any reader

## What you need to provide
**Required:**
- The full draft article text
- The article type: news report, feature, investigative, profile, opinion, explainer, or interview

**Optional:**
- The target publication and its house style rules (if submitting to a publication with a specific style sheet — paste the relevant rules as a list)
- The base style standard: AP, Chicago, Guardian, or "general professional journalism" (default: AP)
- The audience: general public, specialist/trade, or academic
- Specific editorial concerns (e.g., "the middle section drags," "I'm not sure about the ending," "this was partly drafted with AI")
- Whether the piece needs headlines (default: yes) — skip if the publication assigns headlines separately
- Whether pull quotes are needed (default: yes for pieces over 800 words)
- Word count target if the piece needs to hit a specific length

## Skills this agent composes

| Step | Skill | What it produces | Condition |
|------|-------|-----------------|-----------|
| 1 | [structure-checker](../skills/magazine-journalism/editing/structure-checker/SKILL.md) | Paragraph-by-paragraph structural map, flagged issues, suggested reorder | Always |
| 2 | [ai-writing-detox](../skills/editing/ai-writing-detox/SKILL.md) | Clean rewrite with AI tells stripped, changes table, soft-warn flags | Only if the draft shows AI-register tells or the user flags AI involvement |
| 3 | [copy-editor-assistant](../skills/magazine-journalism/editing/copy-editor-assistant/SKILL.md) | Tiered list of grammatical errors, style inconsistencies, and clarity fixes | Always |
| 4 | [house-style-enforcer](../skills/magazine-journalism/editing/house-style-enforcer/SKILL.md) | Deviations list with corrected forms and rule citations | Only if house style rules are provided |
| 5 | [fact-check-prompt](../skills/magazine-journalism/editing/fact-check-prompt/SKILL.md) | Prioritised fact-checking checklist with verification questions and source types | Always for reported pieces; skipped for pure opinion/commentary |
| 6 | [headline-generator](../skills/magazine-journalism/ideation/headline-generator/SKILL.md) | 6–10 headline and dek options across registers and formats | Unless the user specifies headlines are not needed |
| 7 | [pull-quote-selector](../skills/writing/articles/pull-quote-selector/SKILL.md) | 3–5 strongest pull quotes with attributions and rationale | Only for pieces over 800 words, unless user requests otherwise |

## How the agent works

### PLANNING mode

When the agent receives a draft, it:
1. Reads the draft and identifies the article type, approximate word count, whether it contains AI-register tells, and whether it includes verifiable claims
2. Determines which of the seven skills to invoke — all seven for a full feature with house style rules, fewer for a short opinion piece or a draft that reads cleanly
3. Flags any information gaps that will affect specific steps — missing house style rules, no publication context for headlines, a piece too short for pull quotes
4. Presents a numbered plan showing each step, the skill it uses, what it will produce, and which steps are conditional
5. Waits for user approval before proceeding

The plan output looks like this:
```
EDITORIAL PLAN for [article title or topic summary]

Article type: [feature / news / investigative / profile / opinion / explainer]
Word count: ~[X] words
Style standard: [AP / Chicago / house style provided]

Step 1: structure-checker — Structural diagnosis and reorder recommendations
Step 2: ai-writing-detox — Register cleanup [INCLUDED / SKIPPED: no AI tells detected]
Step 3: copy-editor-assistant — Line-level copy edit against [style standard]
Step 4: house-style-enforcer — House style compliance check [INCLUDED / SKIPPED: no house style provided]
Step 5: fact-check-prompt — Fact-checking checklist [INCLUDED / SKIPPED: opinion piece with no reported elements]
Step 6: headline-generator — Headline and dek options for [publication type]
Step 7: pull-quote-selector — Pull quotes for layout [INCLUDED / SKIPPED: piece under 800 words]

Gaps that may affect output quality:
- [any missing inputs flagged here]

Estimated output: A complete editorial package containing [list of deliverables].
Each step builds on the previous — structural fixes inform the copy edit,
the copy edit produces clean text for headline and pull quote selection.

Approve this plan? (yes / adjust / skip steps)
```

### EXECUTION mode

After the user approves the plan, the agent:
1. Runs structure-checker on the full draft — presents the structural map, flagged issues, and suggested paragraph order. If the user wants to apply structural changes before proceeding, they can do so; otherwise the agent notes the recommendations and continues
2. If included, runs ai-writing-detox on the draft (or on the restructured version if the user applied changes). Presents the rewrite, changes table, and soft-warn flags. The user can accept the rewrite, adjust specific changes, or keep the original
3. Runs copy-editor-assistant on the current version of the text, using the specified style standard. Presents the tiered issue list. The user can apply corrections or note them for later
4. If house style rules were provided, runs house-style-enforcer. Presents deviations and consistency issues
5. If the piece contains reported elements, runs fact-check-prompt. Presents the prioritised checklist — the user takes this away to verify; the agent does not check facts itself
6. Runs headline-generator using the article summary and publication context. Presents options across registers
7. If the piece is long enough, runs pull-quote-selector on the final text. Presents 3–5 quotes with rationale

The agent assembles all outputs into a single editorial package. The user can interrupt between any two steps to adjust direction, apply changes from an earlier step, or skip a remaining step.

## Output format
A single assembled document titled **EDITORIAL PACKAGE: [Article Title or Topic]**, containing:

1. **Editorial summary** (80–120 words) — what the package contains, which steps were run, and the overall editorial verdict on the draft's readiness
2. **Structural diagnosis** — the structural map, flagged issues, and suggested paragraph order from step 1
3. **Register cleanup** — if run: the ai-writing-detox rewrite, changes table, and soft-warn flags
4. **Copy edit report** — the tiered issue list from step 3, with summary and readiness verdict
5. **House style check** — if run: the deviations list and consistency notes from step 4
6. **Fact-check checklist** — if run: the prioritised verification list from step 5
7. **Headline options** — the headline and dek clusters from step 6, with register annotations
8. **Pull quotes** — if run: the selected quotes with attributions and rationale from step 7
9. **Next steps** — a closing note recommending the order of actions: apply structural changes first, then copy edits, then fact-check the high-priority items, then choose a headline and pull quotes for layout

Total length: 2,000–5,000 words depending on the draft length and how many steps were included. Tone is direct and practical throughout — written for an editor who will sign off the piece, not a writer who needs encouragement.

## Quality criteria
- [ ] Each skill output meets its own quality standard independently
- [ ] The assembled package reads as a coherent editorial workflow, not a stack of separate outputs
- [ ] The structural diagnosis informs the copy edit — issues flagged in step 1 are not repeated as copy-edit items in step 3
- [ ] AI-writing-detox (if run) preserves every fact, name, number, and quote from the original
- [ ] The copy edit uses the correct style standard throughout — AP rules not applied when Chicago was specified
- [ ] House style deviations cite the specific rule provided by the user, not generic style guidance
- [ ] The fact-check checklist covers every verifiable claim — no claims omitted because they "seem obviously correct"
- [ ] Headlines are calibrated to the specified publication type and do not fabricate claims beyond the article's content
- [ ] Pull quotes are drawn from different sections of the article and do not reveal the conclusion
- [ ] Tone, register, and terminology are consistent across all sections of the package
- [ ] The agent stayed within its declared skills array — no undeclared skill invocations
- [ ] Output is free of generic AI-template phrasing
- [ ] Steps were correctly included or skipped based on the conditions in the skills table
- [ ] The next-steps section gives specific, actionable recommendations — not generic editing advice

## Example

### Brief (user input)
I have a 900-word feature about the last independent bookshop in a mid-sized English city. It's for a regional magazine — serious but warm, think a well-edited county magazine. The piece profiles the owner, has some quotes, and covers the economics of independent retail. I wrote it with some AI assistance and I'm not confident about the structure or the register. Here are our house style rules: single quotation marks for all direct quotes; dates in day-month-year format with no commas; job titles lowercase after names; "per cent" as two words; Oxford comma in lists of three or more.

**Article type:** Feature
**Style standard:** AP base with house style overrides (provided above)

**Draft:**

---

In today's rapidly changing retail landscape, independent bookshops face an unprecedented challenge. But one shop in the cathedral city of Dunminster is not just surviving — it is thriving, proving that bricks and mortar can still compete in the age of Amazon.

Elaine Woodward, Owner of The Barley Bookshop, has run the shop for twenty-three years. She took it over from her father, who opened the original premises on Castle Street in 1971. The shop moved to its current location on Minster Row in 2003, when the Castle Street building was sold to a chain pharmacy.

"People tell me bookshops are dying," Woodward said. "I tell them this one had its best year in 2024."

The economics of independent bookselling are challenging. Publishers' wholesale discounts have tightened over the past decade, from roughly 45 percent to between 35 and 40 percent for small retailers. Rents in Dunminster's commercial centre have risen by 18% since 2019, according to the local chamber of commerce. Woodward says her margins are thinner now than at any point in her tenure.

What keeps The Barley Bookshop viable is a business model that leverages multiple revenue streams. Woodward hosts author events — roughly 30 per year — charging a £5 entry fee that includes a £5 voucher redeemable against any purchase. She runs a children's reading group on Saturday mornings, a book club for adults on the first Wednesday of each month, and a subscription service that delivers a hand-picked book to local customers for £12.99 per month.

The shop also benefits from its position in a city that has lost most of its other independent retailers. "When the greengrocer closed and the record shop closed and the haberdashery closed, people started to notice," Woodward said. "They realised that if they didn't use this shop, it would go too."

Footfall data from the Dunminster Business Improvement District shows that Minster Row's pedestrian traffic dropped by 14 percent between 2017 and 2022, but The Barley Bookshop's customer numbers rose by 9 percent over the same period. Woodward attributes this to the events programme and the subscription service, which bring people through the door who might not otherwise visit the high street.

Not every independent bookshop has this option. Woodward acknowledges that her situation is specific: a freehold building inherited from her father, no commercial rent to pay, and a city with enough cultural infrastructure — a cathedral, a theatre, two schools — to sustain an events-driven model. "I'm not a template," she said. "I'm an exception that proves you need to find your own exception."

The question for Dunminster is whether one bookshop can anchor a high street that has otherwise hollowed out. Woodward is cautiously optimistic. She has invested in a café space at the back of the shop, due to open in March 2026, which she hopes will increase dwell time and attract customers who might not come in for books alone.

"A bookshop is a place," Woodward said. "That's the thing Amazon can't replicate. You can't browse a place that doesn't exist."

---

### Plan (PLANNING mode output)

```
EDITORIAL PLAN for "The Last Bookshop on the High Street"

Article type: Feature
Word count: ~910 words
Style standard: AP base with house style overrides (5 rules provided)

Step 1: structure-checker — Structural diagnosis of the feature's architecture,
        pacing, and paragraph order. Will evaluate against feature conventions
        (narrative arc, scene-setting, tension and resolution).

Step 2: ai-writing-detox — Register cleanup. The opening paragraph contains
        multiple hard-ban hits ("landscape," "unprecedented," "not just X — Y,"
        "bricks and mortar... age of Amazon"). Full pass warranted.

Step 3: copy-editor-assistant — Line-level copy edit against AP with house
        style overrides applied in Step 4.

Step 4: house-style-enforcer — Compliance check against the 5 house style
        rules provided (single quotes, day-month-year dates, lowercase titles,
        "per cent," Oxford comma).

Step 5: fact-check-prompt — Fact-checking checklist. The piece contains
        statistical claims (wholesale discounts, rent increases, footfall data),
        named sources, and institutional references that require verification.

Step 6: headline-generator — Headline and dek options calibrated to a regional
        magazine register (serious, warm, not tabloid).

Step 7: pull-quote-selector — Pull quotes for layout. The piece is ~910 words
        with several strong direct quotes from Woodward.

Gaps that may affect output quality:
- The magazine's name is not given — headline register will be calibrated
  to "well-edited county magazine" as described in the brief.

Estimated output: A seven-section editorial package covering structure,
register, copy, house style, fact-checking, headlines, and pull quotes.

Approve this plan? (yes / adjust / skip steps)
```

### Deliverable (EXECUTION mode output)

---

**EDITORIAL PACKAGE: THE LAST BOOKSHOP ON THE HIGH STREET**

---

**Editorial Summary**

This package covers a 910-word feature about The Barley Bookshop in Dunminster. All seven editorial steps were run. The draft has strong reporting and good quotes, but the opening paragraph is heavy with AI-register language and the structure front-loads economic context before establishing the human story. The copy is mostly clean with a handful of AP and house style issues. Eight claims require fact-checking, two at high priority. Three headline clusters and four pull quotes are provided for layout. Overall verdict: publishable after the structural adjustment, register cleanup on the opening, and Tier 1 copy corrections. One editing pass, not a rewrite.

---

**1. Structural Diagnosis**

**Structural Map**
- Para 1: Scene-setting — positions the piece in a retail-decline narrative (AI-register framing)
- Para 2: Character introduction — Elaine Woodward, background, shop history
- Para 3: Quote — Woodward's best-year claim, creates surprise
- Para 4: Economic context — publisher discounts, rent, margins
- Para 5: Business model — events, book club, subscription service
- Para 6: Community context — loss of other independents, quote from Woodward
- Para 7: Data — footfall vs. customer numbers, Woodward's explanation
- Para 8: Qualification — Woodward's specific advantages (freehold, no rent)
- Para 9: Forward-looking — café investment, cautious optimism
- Para 10: Closing quote — "A bookshop is a place"

**Issues & Recommendations** (ordered by priority)

1. **Opening paragraph is generic framing, not scene-setting.** The feature opens with "In today's rapidly changing retail landscape" — an abstract claim about the sector, not a scene. The reader meets the subject in para 2 and gets the surprise in para 3. For a character-led feature, the reader should meet Woodward sooner. → **Move para 3 to the top** ("People tell me bookshops are dying. I tell them this one had its best year in 2024.") as the opening line, then introduce Woodward in the current para 2. Cut or radically rewrite para 1 — the retail-decline context can be folded into para 4 or para 6 where it has more force.

2. **Economic context front-loaded before the reader is invested.** Paras 4–5 deliver dense economic data (wholesale discounts, rent, margins, revenue streams) before the community story in para 6. The data is more meaningful after the reader understands why this shop matters to Dunminster. → **Move para 6 ("When the greengrocer closed...") to follow para 3**, then place paras 4–5 after it. This creates: human story → community stakes → economic detail → business model — a sequence that earns the reader's attention before spending it on numbers.

3. **No issue with paras 8, 9, or 10.** The qualification, forward-looking section, and closing quote are correctly positioned in the final act.

**Suggested Paragraph Order:** 3, 2, 6, 4, 5, 7, 8, 9, 10 (para 1 cut or rewritten as transition)

**Overall Assessment:** Strong material, wrong sequence. The opening paragraph is the weakest in the piece and the strongest material (Woodward's voice, the community story) is buried behind generic framing and economic data. One structural move — leading with the quote and the person — transforms the pacing.

---

**2. Register Cleanup (AI Writing Detox)**

**Rewrite of affected passages:**

The only paragraph requiring a full rewrite is para 1. The rest of the draft reads in a natural editorial register.

> **Original (para 1):** In today's rapidly changing retail landscape, independent bookshops face an unprecedented challenge. But one shop in the cathedral city of Dunminster is not just surviving — it is thriving, proving that bricks and mortar can still compete in the age of Amazon.

> **Rewrite:** Cut entirely. If a scene-setting transition is needed between the opening quote and Woodward's introduction, try: "The Barley Bookshop on Minster Row in Dunminster is one of the last independent bookshops in the county." One sentence, no framing, no claim beyond what the piece will demonstrate.

**Changes:**

| Original | Replacement | Lens |
|---|---|---|
| `In today's rapidly changing retail landscape` | (cut) | Cut the meta |
| `unprecedented challenge` | (cut — the challenge is described concretely in paras 4–5) | Honest hedging |
| `not just surviving — it is thriving` | (cut — false-pivot construction) | Plain-language default |
| `bricks and mortar can still compete in the age of Amazon` | (cut — cliché pairing) | Reader respect |

**Additional flag (para 5):** `leverages multiple revenue streams` → `draws on several income sources` — `leverage` is a hard-ban term; `revenue streams` is corporate register for a county magazine feature.

**Soft-warn flags:**
- Para 4: "The economics of independent bookselling are challenging" — throat-clearing opener. Consider cutting the sentence and leading directly with the data: "Publishers' wholesale discounts have tightened..."

---

**3. Copy Edit Report**

*Style standard: AP base | Draft stage: near-final*

1. **[Tier 1] Para 2:** "Elaine Woodward, Owner of The Barley Bookshop" → "Elaine Woodward, owner of the Barley Bookshop" — *AP: job titles lowercase after a name. House style rule 3 confirms.*

2. **[Tier 1] Para 4:** "18%" → "18 per cent" — *House style: "per cent" as two words. AP would use "percent" but house style overrides.*

3. **[Tier 2] Para 4:** "45 percent" / "35 and 40 percent" — inconsistent with house style "per cent" used elsewhere. Correct all instances to "per cent."

4. **[Tier 1] Para 3:** `"People tell me bookshops are dying," Woodward said.` — *House style rule 1: single quotation marks. All direct quotes in the piece use double quotes and must be converted.*

5. **[Tier 2] Paras 3, 6, 8, 10:** All direct quotes use double quotation marks. Convert all to single quotation marks per house style.

6. **[Tier 3] Para 5:** "roughly 30 per year" — consider "about 30 a year" for a warmer register in a county magazine feature. Not an error.

7. **[Tier 1] Para 5:** "a £5 entry fee that includes a £5 voucher" — not a copy error, but verify this is correct. If the entry fee equals the voucher, the event is effectively free with a purchase. Flag for fact-check.

8. **[Tier 2] Para 5:** "a children's reading group on Saturday mornings, a book club for adults on the first Wednesday of each month, and a subscription service" — Oxford comma present and correct per house style rule 5.

9. **[Tier 3] Para 9:** "due to open in March 2026" — verify whether "March 2026" is still accurate at publication date. If the magazine publishes after March 2026, this sentence will read as a missed deadline or an already-happened event.

**Summary**

4 Tier 1 items (must correct), 3 Tier 2 items (verify consistency), 2 Tier 3 items (optional). The draft is clean at the sentence level — the main issues are house style compliance (quotation marks, "per cent") rather than grammar or clarity.

---

**4. House Style Check**

**Deviations**

1. **Paras 3, 6, 8, 10:** Double quotation marks on all direct quotes → single quotation marks — *Rule 1.*
2. **Para 4:** `18%` → `18 per cent` — *Rule 5: "per cent" as two words. Also violates the "no %" convention.*
3. **Para 4:** `45 percent` → `45 per cent`; `35 and 40 percent` → `35 and 40 per cent` — *Rule 5.*
4. **Para 2:** `Owner of The Barley Bookshop` → `owner of the Barley Bookshop` — *Rule 3: job titles lowercase after names.*

**Consistency Check**
- *Quotation marks (Rule 1):* Consistently double throughout — consistent but consistently wrong. This writer defaults to double quotes.
- *"Per cent" (Rule 5):* Mixed — "percent" in para 4, "%" also in para 4. Inconsistent and both wrong per house style.

**Rules Checked With No Deviations Found**
- Rule 2 (day-month-year dates): No dates appear in a format that violates this rule. "March 2026" in para 9 is month-year only, which is acceptable.
- Rule 6 (Oxford comma): Correctly used in para 5's list of three items.

---

**5. Fact-Check Checklist**

**HIGH PRIORITY**

1. **Claim:** "Publishers' wholesale discounts have tightened over the past decade, from roughly 45 per cent to between 35 and 40 per cent for small retailers"
   **Check:** Are these discount ranges accurate for UK independent booksellers? The Booksellers Association or Publishers Association may have published data.
   **Source type:** Trade body reports; Independent Publishers Guild data.

2. **Claim:** "Rents in Dunminster's commercial centre have risen by 18 per cent since 2019, according to the local chamber of commerce"
   **Check:** Verify the 18 per cent figure and the attribution. Is there a named report or press release from the Dunminster chamber?
   **Source type:** Dunminster Chamber of Commerce — request the specific data source.

3. **Claim:** "Footfall data from the Dunminster Business Improvement District shows that Minster Row's pedestrian traffic dropped by 14 per cent between 2017 and 2022, but The Barley Bookshop's customer numbers rose by 9 per cent over the same period"
   **Check:** Two figures from two different sources — verify both. Is the BID data publicly available? Are Woodward's customer figures from her own records?
   **Source type:** Dunminster BID for footfall; Woodward's own records for customer numbers. Clarify attribution in the text.

**MEDIUM PRIORITY**

4. **Claim:** Woodward's father "opened the original premises on Castle Street in 1971"
   **Check:** Confirm the year and the street with Woodward. Local newspaper archive may corroborate.
   **Source type:** Direct confirmation with source; local archive.

5. **Claim:** "a £5 entry fee that includes a £5 voucher redeemable against any purchase"
   **Check:** Is this the current pricing? Confirm the voucher mechanism with Woodward.
   **Source type:** Direct confirmation; event listing if available.

6. **Claim:** "a subscription service that delivers a hand-picked book to local customers for £12.99 per month"
   **Check:** Confirm the current price. Subscription pricing changes frequently.
   **Source type:** The Barley Bookshop website or direct confirmation.

7. **Claim:** Café space "due to open in March 2026"
   **Check:** Is this date still accurate? If the publication date is near or after March 2026, confirm the café has opened or update the language.
   **Source type:** Direct confirmation with Woodward.

**LOW PRIORITY**

8. **Claim:** "cathedral city of Dunminster"
   **Check:** Confirm Dunminster has a cathedral and holds city status. (If fictional, note for the editor.)
   **Source type:** Public record.

**Summary**

8 claims flagged: 3 High Priority, 4 Medium, 1 Low. Estimated checking time: 2–3 hours. Structural concern: the footfall-vs-customer-numbers comparison (item 3) uses two different data sources — the article should make the attribution clearer so the reader knows which figure comes from which source.

---

**6. Headline Options**

**Direct / News Register**

1. **The Last Bookshop on the High Street**
*Dek: In Dunminster, every other independent retailer has closed. Elaine Woodward's shop just had its best year.*
*(Best for: print cover or section opener; clear, earns the reader without overselling)*

2. **How One Bookshop Outlasted an Entire High Street**
*Dek: Dunminster has lost its greengrocer, its record shop, and its haberdashery. The Barley Bookshop is still here — and expanding.*
*(Best for: digital; SEO-aware; action verb in the head)*

---

**Analytical / Warm Register**

3. **A Bookshop Is a Place**
*Dek: Elaine Woodward has run the Barley Bookshop for twenty-three years. She is not a template for saving the high street. She is an exception — and she knows it.*
*(Best for: print feature; literary register; uses Woodward's own words)*

4. **Twenty-Three Years on Minster Row**
*Dek: The independent shops around her closed one by one. Elaine Woodward stayed, adapted, and is now building a café at the back.*
*(Best for: county magazine print; quiet confidence; rewards local readers who know the street)*

---

**Short Form**

5. **The Exception** *(Cover line; requires dek for context)*
6. **Best Year Yet** *(Social card; punchy, positive, invites the click)*

---

*Notes: Options 3 and 4 best suit the warm-serious register of a county magazine. Option 1 is the safest all-purpose choice. Option 2 works for a digital version or newsletter teaser.*

---

**7. Pull Quotes**

**1.** 'People tell me bookshops are dying. I tell them this one had its best year in 2024.'
*Attribution: Elaine Woodward, owner of the Barley Bookshop*
*Why it works: Self-contained, punchy, and immediately creates a question — how? Sets up the whole article in two sentences without giving the answer away.* (88 characters)

**2.** 'When the greengrocer closed and the record shop closed and the haberdashery closed, people started to notice. They realised that if they didn't use this shop, it would go too.'
*Attribution: Elaine Woodward*
*Why it works: The repetition of "closed" builds rhythm and emotional weight. The second sentence turns the reader from observer to participant — it implicates the community in the shop's survival.* (174 characters)

**3.** 'I'm not a template. I'm an exception that proves you need to find your own exception.'
*Attribution: Elaine Woodward*
*Why it works: Undercuts any temptation to read this as a how-to. Honest, self-aware, and structurally tight — works as a standalone quote card.* (85 characters)

**4.** 'A bookshop is a place. That's the thing Amazon can't replicate. You can't browse a place that doesn't exist.'
*Attribution: Elaine Woodward*
*Why it works: The closing quote of the article, but it functions independently as a statement about physical retail. Strong enough for a cover pull quote or social card.* (108 characters)

---

**Next Steps**

1. **Structure first.** Lead with the "bookshops are dying" quote (current para 3), introduce Woodward second, then the community story (current para 6). Cut or rewrite para 1 — it is the weakest sentence in the piece.
2. **Register cleanup.** Apply the ai-writing-detox changes to para 1 and the "leverages" fix in para 5. One pass, five minutes.
3. **Copy corrections.** Convert all double quotation marks to single (house style), change all "percent"/% to "per cent," lowercase "Owner." These are mechanical — 15 minutes.
4. **Fact-check the high-priority items.** Start with the wholesale discount figures (item 1) and the footfall-vs-customer comparison (item 3) — these are the claims that carry the argument. Estimated: 2–3 hours.
5. **Choose a headline.** Options 3 or 4 best suit the publication's register. Send to the editor with the dek.
6. **Select pull quotes for layout.** Quotes 1 and 3 are the strongest pair — one opens the story, the other complicates it.

## Known limitations
- The agent runs skills in sequence, and each skill sees the draft as provided — not as modified by earlier steps. If the structure-checker recommends reordering paragraphs, the copy-editor-assistant still edits the original paragraph order. The user must apply structural changes between steps for downstream skills to benefit from them.
- House-style-enforcer requires the user to provide the rules. Without a style sheet, this step is skipped entirely. The agent cannot infer house style from a publication name alone.
- The fact-check-prompt produces a checklist, not verified facts. No claims are checked against external sources — the human must execute every verification.
- AI-writing-detox works on language register, not AI-generated facts. A draft that reads naturally but contains hallucinated statistics will pass the detox step without flagging the invented data. Always run fact-check-prompt on AI-assisted drafts.
- Pull-quote-selector works only on articles with strong quotable material. Data-heavy pieces with few direct quotes may not yield usable pull quotes — consider a data callout or statistic panel instead.
- The agent produces a diagnostic package, not a finished article. The editor must apply the recommended changes, verify the facts, and make final judgment calls. The package is a first-pass tool, not a replacement for editorial judgment.

## Related agents and skills
- [documentary-development-agent](../agents/documentary-development-agent.md) — agent for documentary pitch packages, different deliverable and skills set
- [structure-checker](../skills/magazine-journalism/editing/structure-checker/SKILL.md) — standalone skill for users who need only a structural diagnosis
- [copy-editor-assistant](../skills/magazine-journalism/editing/copy-editor-assistant/SKILL.md) — standalone skill for users who need only a copy edit
- [fact-check-prompt](../skills/magazine-journalism/editing/fact-check-prompt/SKILL.md) — standalone skill for users who need only a fact-check checklist
- [house-style-enforcer](../skills/magazine-journalism/editing/house-style-enforcer/SKILL.md) — standalone skill for users who need only a house style check
- [headline-generator](../skills/magazine-journalism/ideation/headline-generator/SKILL.md) — standalone skill for users who need only headline options
- [pull-quote-selector](../skills/writing/articles/pull-quote-selector/SKILL.md) — standalone skill for users who need only pull quotes
- [ai-writing-detox](../skills/editing/ai-writing-detox/SKILL.md) — standalone skill for users who need only an AI-register cleanup
