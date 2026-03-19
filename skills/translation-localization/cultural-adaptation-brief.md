---
name: cultural-adaptation-brief
status: beta
category: translation-localization
subcategory: localization
version: 1.0
eval_score: null
tags: [localization, cultural-adaptation, translation, international, audience]
---

# Cultural Adaptation Brief

## What This Skill Does
Produces a structured editorial brief that identifies every element in a translated article or script that needs cultural adaptation — and recommends exactly how to adapt each one — before it is published for a new audience.

## When To Use This Skill
- You have a translated article, script, or report and need to check whether it will read naturally to an audience in a different country or cultural context
- You are localising content (not just translating it) and need a systematic list of changes to make before publication
- Your editor or client has flagged that a translated piece "doesn't feel right" and you need to diagnose and fix it
- You are preparing content for a market you are not personally familiar with and want a structured risk assessment of cultural missteps before it goes live

## What You Need To Provide
**Required:** The translated text. The source country or cultural context (e.g., "originally produced for a US audience"). The target country or cultural context (e.g., "publishing for an Australian audience").

**Optional:** The publication type and register (broadsheet, tabloid, trade magazine, broadcast, social media). Any specific sensitivities already known (e.g., "avoid references to X political figure"). The audience demographic (age range, profession, general political lean if relevant). Whether the piece is time-sensitive — this affects how much adaptation is realistic before deadline.

## How Claude Approaches This
1. Reads the text in full and categorises every element that is culturally anchored: units of measurement, currency, idioms, humour, cultural references (films, sports, events, public figures), legal or regulatory terminology, social norms assumed by the text, and any explicit or implicit political framing.
2. For each flagged element, assesses the risk level — Low (minor friction for readers), Medium (likely to confuse or alienate), High (likely to offend, mislead, or undermine credibility) — and proposes a concrete adaptation with a rationale.
3. Produces a brief in table format followed by editorial notes, so a journalist or producer can work through the changes systematically without losing track of what has and hasn't been reviewed.

## Output Format
Two-part output. Part 1: a table with four columns — Element (the specific text), Category (measurement / idiom / reference / legal / social norm / other), Risk Level (Low / Medium / High), and Recommended Adaptation. Part 2: a short narrative "Editorial Notes" section (200–400 words) summarising the most significant cultural gaps, the overall adaptation effort required, and any items that cannot be resolved without local editorial expertise. Tone is professional and direct — written for an editor making fast decisions under deadline pressure.

## Quality Criteria
- [ ] Every culturally anchored element in the text is identified — nothing is skipped because it seems minor
- [ ] Risk levels are justified, not arbitrary — a High rating must be defensible
- [ ] Each recommended adaptation is specific and actionable, not vague (e.g., "convert £12.50 to AU$24.50 at current rate" rather than "localise currency")
- [ ] The brief does not alter meaning — adaptations preserve the editorial intent of the original
- [ ] Editorial Notes section gives a realistic picture of total adaptation effort and flags what requires a local expert
- [ ] The brief is usable by a journalist who has not read the original source language text

## Example

### Input
Source cultural context: Originally written for a UK audience
Target cultural context: Publishing for a Canadian audience
Publication type: General interest weekly magazine, conversational register

Translated text:

**How the High Street is Fighting Back**

After a bruising few years, Britain's retail sector is finally showing signs of life. Footfall on major shopping streets rose 4.3 per cent in the last quarter, according to figures from the British Retail Consortium — the first increase since before the pandemic.

"People want the experience of being out," says retail consultant Joanna Webb. "Clicking through a website doesn't give you that."

The recovery is patchy. Charity shops now account for one in eight units on the average high street, a figure that would have been unimaginable fifteen years ago. But independent traders — the butchers, bakers, and specialty bookshops that Britons associate with a thriving town centre — are quietly staging a comeback.

Whether the recovery holds may depend on what happens to the weekly shop. Britons spend, on average, £87 per household per week on groceries. If inflation keeps biting, that number will squeeze everything else.

### Output

**Cultural Adaptation Brief**
Source: UK / Target: Canada / Risk assessment date: [insert date]

---

**Part 1: Adaptation Table**

| Element | Category | Risk Level | Recommended Adaptation |
|---|---|---|---|
| "High Street" (headline and body) | Reference | High | Replace with "Main Street" throughout, or restructure to "How independent retailers are fighting back" — Canadian readers associate "High Street" with British retail specifically, and the headline will read as a foreign story rather than a domestic one |
| "Britain's retail sector" / "Britons" | Reference | High | Replace with "Canadian retailers" / "Canadians" — or reframe the piece explicitly as an international story by adding a dateline and a bridging sentence explaining why it is relevant to Canadian readers |
| "British Retail Consortium" | Legal / institutional | High | Replace with Statistics Canada retail data or equivalent Canadian source, or retain with a parenthetical explanation: "(the UK's main retail industry body)" — but note this shifts the piece's authority for a Canadian audience |
| "Charity shops" | Reference | Medium | Replace with "thrift stores" or "charity thrift shops" — "charity shop" is understood but feels distinctly British; "thrift store" is the natural Canadian equivalent |
| "Butchers, bakers, and specialty bookshops" | Cultural reference | Low | Retain — these resonate across English-speaking markets without adaptation |
| "£87 per household per week" | Currency / measurement | High | Convert to CAD (approx. CA$155 at current rates) — or remove the statistic and replace with equivalent Canadian grocery spend data from Statistics Canada if the goal is a fully localised piece |
| "Weekly shop" | Idiom | Medium | Retain in a magazine context — this is widely understood in Canada — but if the piece moves to broadcast, consider replacing with "weekly grocery run" |
| "Clicking through a website" | Idiom | Low | Retain — universally understood |
| "Town centre" | Reference | Low | Replace with "downtown" or "town centre" depending on Canadian regional preference (Quebec: "centre-ville" if French edition; elsewhere "downtown" is standard) |

---

**Part 2: Editorial Notes**

This piece requires substantial adaptation before it can be published as a Canadian story. As written, it is explicitly a UK story — the data sources, institutional references, and cultural touchstones (High Street, charity shops, the British Retail Consortium) all anchor it firmly in Britain.

The adaptation path depends on an editorial decision: is this piece being localised as if it originated in Canada, or is it being published explicitly as an international feature with relevant parallels for Canadian readers? These are different edits.

If fully localising: replace all UK-specific data with Canadian equivalents (Statistics Canada, Retail Council of Canada), change "Britons" to "Canadians," and restructure the opening so it leads with a Canadian hook. This will require sourcing new data and is probably a half-day of reporting work.

If framing as an international feature: add a Canadian dateline note, a brief introductory paragraph explaining why this UK trend matters to Canadian readers, and retain the UK specifics with clear attribution. Currency should still be converted or dual-listed. This is a one-hour edit.

One item requires local expertise: the tone around "charity shops" carries class connotations in the UK that do not translate directly to the Canadian thrift-store culture. A Canadian editor should assess whether the framing ("one in eight units") reads as decline or normalisation for your specific audience.

## Known Limitations
- Claude's cultural knowledge is stronger for English-speaking markets (UK, US, Canada, Australia) and major Western European contexts than for markets in the Global South, Central Asia, or smaller language communities. For those markets, treat this brief as a starting point and have it reviewed by a local editor before relying on it.
- Claude's translation quality varies by language pair; a cultural adaptation brief is only as useful as the translation it is based on. Always verify the underlying translation with a native speaker before conducting adaptation review.
- Currency conversions use knowledge available at Claude's training cutoff and will not reflect current exchange rates. Always verify financial figures independently.
- Claude cannot assess political sensitivities in real time (breaking news, recent controversies, recent elections). For politically sensitive content, local editorial review is essential regardless of this brief's findings.

## Related Skills
- [article-translator](./article-translator.md)
- [press-release-translator](./press-release-translator.md)
- [quote-translator](./quote-translator.md)
- [subtitle-translator](./subtitle-translator.md)
