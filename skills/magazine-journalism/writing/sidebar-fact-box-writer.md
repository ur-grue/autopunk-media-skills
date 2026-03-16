---
name: sidebar-fact-box-writer
status: stable
category: magazine-journalism
subcategory: writing
version: 1.0
eval_score: 4.4
tags: [journalism, writing, sidebar, fact-box, print, feature]
---

# Sidebar Fact Box Writer

## What This Skill Does
Writes a structured, print-ready fact box or sidebar to accompany a feature article — either a statistical overview, a glossary, a timeline, a "by the numbers" panel, or a key quotes box.

## When To Use This Skill
- You have a feature article and want a sidebar that adds factual depth without interrupting the narrative flow
- Your editor has asked for a fact box and you are not sure what format or information to include
- You have a complex topic that needs a quick-reference panel for readers who skim before reading
- You need a "key terms" or glossary sidebar for a technical or specialized topic

## What You Need To Provide
**Required:** The article topic or a paste of key sections; what type of sidebar is needed (by-the-numbers panel, timeline, glossary, key quotes, explainer box, or "what you need to know")
**Optional:** Specific facts, figures, or quotes you want included; publication type (print magazine, digital editorial, trade press); approximate word/item limit for the sidebar; any items that must not appear (e.g., already covered in the main text)

## How Claude Approaches This
1. Identifies the factual layer of the article that most readers would want quick access to — statistics, definitions, or chronology — but that would slow the main narrative if embedded
2. Selects the sidebar format that best serves the article type: "By the Numbers" for data-heavy investigations, "Timeline" for historical or process stories, "Key Terms" for specialized subjects, "What Happened" for breaking or news-adjacent features
3. Writes each sidebar item at consistent length and register — fact boxes should not mix long explanations with bare bullet points
4. Verifies internally that no sidebar fact contradicts or duplicates material already present in the article text provided
5. Formats the output to reflect standard magazine sidebar conventions: title, optional subheading, bulleted or numbered items, source line at the end
6. After the sidebar, provides a "Next Step" note: verify each statistic against the original source before publication, run fact-check-prompt on any figures not sourced in the provided input, and confirm with the article editor that the sidebar does not duplicate any passage in the main text

## Output Format
Complete, publication-ready sidebar. Includes: sidebar title (bold, 3–6 words), optional one-line subheading, 4–8 items or entries depending on format type, and a source attribution line. Total length: 80–200 words (sidebars are intentionally brief). Register: factual, neutral, no narrative voice. Formatted for print/digital paste-in. Output ends with a "Next Step" note: verify all statistics before publication, run fact-check-prompt for any figures not already verified in your reporting, and confirm with the editor that the sidebar placement and content does not duplicate the main text.

## Quality Criteria
- [ ] Sidebar title is specific and descriptive — "By the Numbers" is acceptable; "Facts" is not
- [ ] Every item is self-contained — a reader who reads only the sidebar should understand each point without the main article
- [ ] No item in the sidebar contradicts or significantly duplicates the main article text
- [ ] Source attribution is included at the end
- [ ] Items are parallel in structure (all complete sentences, or all noun-phrase bullets — not mixed)
- [ ] Total word count is under 200
- [ ] Output includes at least one concrete next action the user can take immediately (verify statistics against sources, run fact-check-prompt, or confirm with editor on placement and duplication)

## Example

### Input
Article topic: A feature on the global decline of insect populations and what it means for food systems
Sidebar type: By the Numbers — key statistics on insect decline
Facts to include: population decline rates, number of species affected, economic value of pollination, timeline of major studies
Publication: General-interest science magazine
Word limit: ~150 words

### Output

---

**By the Numbers: Insect Decline**
*The scale of the problem, in figures*

- **40%** — estimated share of insect species facing extinction in coming decades, according to a major 2019 meta-analysis of global population studies
- **2.5%** per year — the average rate at which total insect biomass has been declining globally, based on studies from Europe and North America
- **$235–577 billion** — estimated annual value of wild pollinator contributions to global crop production (Food and Agriculture Organization of the United Nations)
- **75%** — proportion of leading global food crops that depend at least partially on animal pollination
- **1970s–present** — the period over which long-term insect monitoring studies show the steepest, most consistent declines in temperate regions
- **3** — the number of insect orders (beetles, butterflies/moths, and wild bees) that account for the majority of documented population losses in peer-reviewed studies

*Sources: Sánchez-Bayo & Wyckhuys (2019), FAO, European monitoring networks*

---

## Known Limitations
- Sidebar statistics must be verified by the journalist before publication — Claude works from what you provide and will not fabricate figures, but it also cannot check that the figures in your input are current or accurately attributed
- For timelines, Claude requires the article or input to contain the source events — it will not construct a timeline from general knowledge unless explicitly instructed, as this risks introducing unverified dates
- Glossary and key terms sidebars for highly technical fields (medicine, law, engineering) should be reviewed by a subject expert before publication
- Print column width constraints are not addressed here — layout adjustments for tight column formats must be made manually

## Related Skills
- [reportage-structure](reportage-structure.md)
- [fact-check-prompt](../editing/fact-check-prompt.md)
- [research-brief-creator](../ideation/research-brief-creator.md)
