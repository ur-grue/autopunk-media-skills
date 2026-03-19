---
name: prior-statements-researcher
status: beta
category: research
subcategory: people-contacts
version: 1.0
eval_score: null
tags: [research, fact-checking, interview-prep, source-research, quotes]
---

# Prior Statements Researcher

## What This Skill Does
Produces a structured research framework for finding, organising, and verifying a named person's previous public statements on a specific topic, so a journalist can enter an interview or write a story with full command of the subject's record.

## When To Use This Skill
- Before interviewing a public figure, to identify positions they have staked out and potential contradictions to press on
- When writing a profile or accountability piece and needing to document whether a subject's stance has shifted over time
- When a source claims they "never said" something and you need to find the documentary record quickly
- When fact-checking a quote attributed to a person circulating on social media or in other reporting

## What You Need To Provide
**Required:**
- The person's full name and, if relevant, their role or title (e.g. "Dr. Marta Voss, Chief Medical Officer of Hartfield Health Systems")
- The topic or issue you are researching (e.g. "hospital mergers and patient access")
- The approximate time window you care about (e.g. "2019 to present")

**Optional:**
- Their current or past employer or organisation, to help narrow searches
- Any specific event or controversy you suspect is relevant
- The format you are working in (print interview, documentary, broadcast segment) so the output can be tailored accordingly

## How Claude Approaches This

1. **Identifies the most productive source categories** — distinguishes between primary sources (the person's own words: speeches, official statements, published interviews, social media posts, authored op-eds) and secondary sources (other journalists' quotes, reported summaries, attributed paraphrases) and explains why primary sources must be prioritised.

2. **Maps a search strategy by source type** — for each source category, provides specific search queries, platform names, and archive resources most likely to surface relevant statements. Search logic accounts for name variations, job title changes, organisational affiliations, and common misspellings.

3. **Provides a verification checklist** — flags the key questions a journalist must ask before relying on any statement found: Is the quote from a primary source? Is the date confirmed? Is context preserved (not clipped)? Has it been disputed by the subject or their representatives?

4. **Structures the output as a working document** — formats findings as a table the journalist can populate as they search, with columns for date, source, verbatim quote or paraphrase, source type (primary/secondary), and a notes field for flagging contradictions or follow-up questions.

5. **Highlights contradiction indicators** — if the journalist provides known positions, Claude identifies the types of language shifts, hedging patterns, or topic pivots that often signal a change in stance, so the journalist knows what to listen for.

## Output Format
A structured research brief, approximately 600–900 words, divided into four sections:

1. **Search strategy** — bulleted list of recommended source types, with example search queries for each
2. **Key platforms and archives** — specific databases, social media platforms, Hansard/congressional record equivalents, broadcast archives, and newswire services relevant to this person's field
3. **Blank tracking table** — a Markdown table the journalist populates as they find statements (columns: Date | Source | Quote or paraphrase | Primary/Secondary | Notes)
4. **Red flags to watch for** — a short list of consistency questions and verification traps specific to this person and topic

Tone: professional, practical. No speculation about what the person said — this is a research framework, not a factual summary.

## Quality Criteria
- [ ] Search strategy addresses at least four distinct source types (e.g. broadcast, print, social media, official records)
- [ ] All search queries are specific enough to return useful results, not generic (e.g. `"Marta Voss" "patient access" site:hartfieldhealth.org` not just `Marta Voss quotes`)
- [ ] Tracking table is ready to use with no further formatting needed
- [ ] Output is clearly framed as a research framework, not a factual account of what the person said
- [ ] Verification checklist includes at least three concrete checks a journalist must perform before publication

## Example

### Input
Person: Dr. Elena Marchetti, Director of the Institute for Climate Risk at Northbrook University
Topic: Whether carbon offset markets can substitute for direct emissions reductions
Time window: 2018 to present
Context: I'm interviewing her for a long-form magazine piece on voluntary carbon markets. I've seen her quoted both supporting and criticising offsets in different articles and I want to get to the bottom of her actual record.

### Output

**Prior Statements Research Brief — Dr. Elena Marchetti / Carbon Offset Markets**
Prepared as a research framework. All findings must be verified against primary sources before use.

---

**1. Search Strategy**

*Academic and institutional sources (primary — highest priority)*
- Search Northbrook University's Institute for Climate Risk publication archive: `site:northbrook.edu "Elena Marchetti" offsets`
- Search Google Scholar: `"Elena Marchetti" "carbon offsets" OR "voluntary carbon market"`
- Check her institutional profile page for linked papers, policy briefs, and recorded lectures

*Broadcast and podcast appearances (primary)*
- Search YouTube: `"Elena Marchetti" carbon`
- Search podcast databases (Listen Notes, Podchaser): `Elena Marchetti climate`
- Check BBC Radio 4, NPR Science Friday, and equivalent science-policy programmes for archived interviews

*Print interviews and op-eds (primary and secondary)*
- Search newspaper archives (LexisNexis, ProQuest, or free equivalents): `"Elena Marchetti" AND ("carbon offset" OR "net zero") AND (interview OR "she said" OR "according to")`
- Search specialist outlets: Carbon Brief, Climate Home News, E&E News: `"Elena Marchetti"`
- Search for authored op-eds: `author:"Elena Marchetti" climate site:theguardian.com OR site:ft.com OR site:nytimes.com`

*Official records and policy documents (primary)*
- Search for parliamentary, congressional, or EU hearing testimony transcripts
- Check UNFCCC conference speaker records (COP proceedings) for any on-the-record statements

*Social media (primary, with caveats)*
- Search her Twitter/X account (if public) using advanced search: `from:@[handle] offset OR offsets since:2018-01-01`
- Note: social media posts are primary but often lack full context; always retrieve the full thread

---

**2. Key Platforms and Archives**

| Platform | What to look for |
|---|---|
| Google Scholar | Authored papers with explicit policy conclusions |
| Northbrook University institutional repository | Working papers, policy briefs, lectures |
| LexisNexis / Factiva | Attributed quotes in wire copy and newspapers |
| Carbon Brief archive | Expert commentary and attributed quotes |
| YouTube | Conference keynotes, university lectures, media appearances |
| Internet Archive (Wayback Machine) | Deleted or changed web pages (e.g. if her institute's position page has been updated) |

---

**3. Statement Tracking Table**

| Date | Source | Quote or paraphrase | Primary / Secondary | Notes |
|---|---|---|---|---|
| | | | | |
| | | | | |
| | | | | |

*(Copy and complete this table as you find sources. Add rows as needed.)*

---

**4. Red Flags and Verification Traps**

- **Context clipping:** Quotes supporting or criticising offsets may come from presentations where she was summarising an opposing view, not stating her own. Always retrieve the full transcript or recording before treating a quote as her position.
- **Role-based shifts:** Her stated positions may reflect the institutional mandate of her role at a given time (e.g. advising a carbon-market body vs. leading an independent research centre). Note her job title and employer at the time of each statement.
- **Secondary-source distortion:** If two articles contradict each other, go back to the original source both claim to cite. Reporters sometimes paraphrase in ways that invert or soften a speaker's actual words.
- **Publication date vs. interview date:** Academic papers are often based on research conducted years before publication. Check when the underlying research was done, not just when it was published.
- **Deleted or amended content:** If you cannot find a statement that was reported elsewhere, check the Wayback Machine for earlier versions of her institute's website or her social media.

---

## Known Limitations
- This skill produces a research framework and search strategy only. It does not retrieve or verify actual statements — that work must be done by the journalist using the sources listed.
- Search results will vary significantly based on how publicly active the subject is. For private individuals or people with limited public profiles, most search strategies in this brief will return little or nothing.
- Social media search tools change frequently; platform search operators (especially on X/Twitter) may behave differently at time of use.
- For subjects whose primary language is not English, additional search strategies in the relevant language are required and are outside the scope of this brief.

## Related Skills
- [expert-identifier](./expert-identifier.md)
- [source-credibility-scorer](../../magazine-journalism/fact-checking/source-credibility-scorer.md)
- [claim-verification-checklist](../../magazine-journalism/fact-checking/claim-verification-checklist.md)
- [publication-history-researcher](./publication-history-researcher.md)
