---
name: headline-generator
status: stable
category: magazine-journalism
subcategory: ideation
version: 1.0
eval_score: 4.5
tags: [journalism, ideation, headlines, print, digital, subheads]
---

# Headline Generator

## What This Skill Does
Generates a range of headline and subheadline options across different registers, lengths, and publication styles for a given article or feature.

## When To Use This Skill
- You have a finished or near-finished article and need headline options before submitting to an editor
- You are stuck on a headline and want to break out of a single approach
- You need headlines calibrated to a specific publication's voice (tabloid, literary magazine, trade press, digital news)
- You want a main deck headline with subheadline options for long-form features

## What You Need To Provide
**Required:** Article topic or a 2–4 sentence summary of the piece; publication type or audience (e.g., national newspaper, trade publication, literary magazine, digital media brand)
**Optional:** Existing working headline you want to improve or use as reference; headline character limit; whether a subheadline (dek) is needed; any words or framing to avoid; tone directive (serious, provocative, wry, neutral)

## How Claude Approaches This
1. Identifies the article's core argument, revelation, or conflict — the one thing that makes this piece worth reading — and uses that as the anchor for all headline options
2. Generates headlines across distinct structural approaches: declarative statement, question, imperative, ironic twist, "x of y" construction, and the clean noun-phrase format used by literary and long-form publications
3. Calibrates register to the specified publication type — tabloid vocabulary and punctuation differ fundamentally from literary magazine style; trade press follows different conventions from consumer lifestyle
4. For each main headline, writes a matching subheadline (dek) that adds the reporting context the main head omits
5. Flags which options work best in print versus digital (SEO-aware headlines often sacrifice elegance; print heads can afford more wit)

## Output Format
6–10 headline options organized into clusters by register (e.g., "Direct/News," "Analytical/Literary," "Provocative/Punchy"). Each headline followed by its dek. One-line annotation on register and best-use context. Total length: 400–600 words. No markdown beyond bold for headline text.

## Quality Criteria
- [ ] Headlines span at least 4 different structural formats
- [ ] Every headline has a matching dek that adds reporting context
- [ ] At least one option is under 6 words (works on cover and social)
- [ ] At least one option is SEO-aware (keyword-led, clear noun phrase)
- [ ] No headline fabricates a claim beyond what the article summary supports
- [ ] Register annotations correctly distinguish print vs. digital context

## Example

### Input
Article summary: A long-form investigation into how small cities across the country are quietly changing their zoning laws to allow more housing density — without waiting for federal or state action. The piece profiles three specific cities, quotes planning officials, and shows early results: rents have stabilized in one city after 18 months.
Publication: National general-interest magazine, serious but accessible (think Atlantic or Harper's register)
Dek needed: Yes
No character limit specified

### Output

**Direct / News Register**

1. **The Cities Quietly Fixing the Housing Crisis**
*Dek: While Washington debates, a handful of small American cities are rewriting their zoning codes — and it's already working.*
*(Best for: digital homepage; SEO-friendly; clear noun phrase)*

2. **The Zoning Fix Nobody Talked About**
*Dek: In three cities that refused to wait for federal action, a quiet change in land-use law is doing what years of policy arguments couldn't.*
*(Best for: social media; punchy, works short)*

---

**Analytical / Literary Register**

3. **A City Changes Its Mind About the Backyard**
*Dek: Across America, a small but growing number of communities are betting that denser housing — not new highways or federal grants — is the answer to affordability.*
*(Best for: print feature; evocative, rewards the curious reader)*

4. **How to Build a City Without Fighting About It**
*Dek: The housing crisis has been a federal argument for decades. These three cities stopped waiting.*
*(Best for: print or digital long-form; dry irony, intellectual register)*

---

**Provocative / Punchy Register**

5. **They Changed Three Lines in the Zoning Code. Rents Stopped Rising.**
*Dek: It was not a dramatic policy breakthrough. It was not a federal program. In one mid-sized city, it took 18 months.*
*(Best for: newsletter or social; specificity drives clicks; best for data-forward pieces)*

6. **The Housing Solution That Doesn't Require Congress**
*Dek: Forget the federal debate. In cities where planners quietly rewrote zoning law, early results are forcing a rethink of how America builds.*
*(Best for: digital opinion/analysis section)*

---

**Cover / Short Form**

7. **The Backyard Fix** *(Cover line; 3 words; requires dek to carry context)*
8. **The Cities That Stopped Waiting** *(Works standalone on cover or social card)*

---

*Notes: Options 1 and 5 are strongest for digital/SEO. Options 3 and 4 suit the literary register of a print feature. If this piece goes on a cover, Option 7 with a coverline dek is the most elegant short form.*

## Known Limitations
- Headline effectiveness in digital depends partly on thumbnail/image context that Claude cannot see; some options may need adjustment once the visual is known
- Claude cannot verify claims or data in the article summary; headlines are only as accurate as what you provide — any specific figure in a headline (e.g., "18 months") must be verified in the reporting
- Literary and ironic headlines can underperform algorithmically on platforms that prioritize clear keyword matching; flag your distribution channel when requesting

## Related Skills
- [story-angle-finder](story-angle-finder.md)
- [newsletter-teaser-writer](../distribution/newsletter-teaser-writer.md)
- [social-media-excerpt](../distribution/social-media-excerpt.md)
