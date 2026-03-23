---
name: publication-history-finder
status: stable
category: research
subcategory: people
version: 1.0
eval_score: 4.44
tags: [research, publications, media-appearances, people, bibliography]
---

# Publication History Finder

## What This Skill Does
Produces a structured research plan for systematically locating everything a specific person has published, said on the record, or appeared in — across academic journals, news media, social media, podcasts, conferences, and official documents.

## When To Use This Skill
- You need a complete picture of someone's public statements and positions before an interview or profile
- You are fact-checking a claim and need to find whether the person has said something contradictory on the record elsewhere
- You are building a source dossier for an investigative story and need to trace how someone's public positions have evolved over time
- You are researching an expert witness or commentator and want to assess their credibility through their published track record

## What You Need To Provide
**Required:** The person's full name; the type of publications you are most interested in (academic papers, news interviews, op-eds, social media posts, conference talks, government testimony, or all of the above).

**Optional:** Their known professional field or role; specific time period of interest; known affiliations (university, company, political party); specific topics or keywords to prioritise; any publications you already have.

## How Claude Approaches This
1. **Maps the publication landscape.** Based on the person's role and field, identifies which categories of public output are most likely to exist — an academic will have journal articles and conference papers; a CEO will have earnings call transcripts and industry keynotes; a politician will have legislative speeches, committee testimony, and campaign materials.

2. **Lists specific search sources for each category.** For each publication type, provides the exact databases, archives, and search strategies to use — including search syntax tips (name variations, institutional affiliations as secondary filters, date ranges).

3. **Builds a chronological tracking framework.** Provides a template for organising findings chronologically so the journalist can spot shifts in position, gaps in output, or periods of unusual activity.

4. **Identifies cross-referencing opportunities.** Notes which co-authors, co-panellists, or collaborators appear frequently and could serve as independent sources to verify the person's claims or provide context.

5. **Flags what to look for beyond the obvious.** Highlights the non-obvious publication types that journalists often miss — patent filings, regulatory comment submissions, charity annual reports, wedding or obituary mentions, self-published books, cached web pages, and archived social media posts.

## Output Format
600–900 words. Two main sections: **Search Plan** (a bulleted list of source categories, each with specific databases and search tips) and **Tracking Framework** (a simple chronological template for organising results). Ends with a **Red Flags to Watch For** section (3–4 bullet points on patterns that warrant deeper investigation). Tone: practical, concise, written for a journalist or researcher executing the plan immediately.

## Quality Criteria
- [ ] Every source listed is a real, accessible database or archive — not a generic instruction to "search online"
- [ ] Search tips include practical syntax advice (name variations, Boolean operators, institutional filters)
- [ ] The plan is tailored to the person's field and role — not a one-size-fits-all bibliography search
- [ ] Chronological tracking framework is simple enough to use in a spreadsheet or notebook
- [ ] Red flags section identifies genuinely useful patterns, not obvious advice
- [ ] Non-obvious publication types are included (patents, regulatory filings, cached pages)
- [ ] Output could be handed to a research assistant with no additional briefing

## Example

### Input
**Person:** Marcus Holt, a former senior regulator at a national financial authority, now a managing partner at a private consultancy
**Publication types:** All — academic, media, official, social media
**Time period:** Last 15 years
**Known facts:** He spent 10 years at the regulator, left 3 years ago, and his consultancy advises fintech companies on compliance. He has been quoted in financial press as a critic of certain proposed banking regulations.

### Output

**Search Plan**

*Official and regulatory publications*
- National financial authority website — search annual reports, enforcement decisions, policy consultation responses, and speeches archived by year. Use the "publications" or "speeches" section; search his name in the site search. Note: many regulators archive speeches by the official who delivered them.
- Parliamentary or legislative committee records — search for his name in financial committee hearing transcripts. He may have given expert testimony during his tenure.
- Regulatory consultation databases — search for his name or his consultancy in comment submissions on proposed regulations.

*Academic and professional publications*
- Google Scholar — search "Marcus Holt" with quotation marks; filter by date range. Add the regulatory authority name as a secondary term to disambiguate from namesakes.
- SSRN (Social Science Research Network) — search by author name; financial regulators sometimes publish working papers here.
- Industry journal databases (e.g., financial regulation trade journals) — search by name for authored articles or guest columns.

*News media and public statements*
- Factiva or LexisNexis — search by full name in quotation marks within financial and general news sources. Note date clusters: high media activity around his departure from the regulator or around major regulatory decisions he was involved in.
- Google News archive — use the "custom range" date filter for year-by-year searches.
- Financial trade press specifically (search industry titles individually if not covered by Factiva).
- Op-ed databases — check whether he has authored opinion pieces in broadsheets or trade publications, particularly since joining the consultancy.

*Conference and speaking engagements*
- YouTube and Vimeo — search his name for recorded panel discussions, keynotes, or webinars.
- Conference programme archives — search fintech, regtech, and banking conference websites for his name in speaker lists or agendas.
- Podcast directories (Apple Podcasts, Spotify) — search his name in episode descriptions.

*Social media and digital presence*
- LinkedIn — review his full post history and any articles published on the platform. Note endorsements and connections to fintech clients.
- Twitter/X — search his handle and name mentions. Use advanced search to filter by date.
- Wayback Machine — check cached versions of his consultancy website and any personal blog or bio page for changes over time.

*Legal and corporate filings*
- Company registry — search for his name as a director or officer of the consultancy and any other entities.
- Court records — search for any litigation involving him or the consultancy, particularly regulatory or commercial disputes.
- Lobbying registers — check whether his consultancy is registered for lobbying activity.

**Tracking Framework**

| Year | Source Type | Title / Description | Key Position or Claim | Notes |
|------|-----------|--------------------|-----------------------|-------|
| 2011 | Official speech | — | — | — |
| 2012 | Journal article | — | — | — |
| ... | ... | ... | ... | ... |

Record each item chronologically. In the "Key Position or Claim" column, note any substantive policy positions, predictions, or factual claims. This makes it easy to spot contradictions or shifts later.

**Red Flags to Watch For**
- **Position reversals after leaving the regulator.** Compare his public statements on banking regulation during his time at the authority with his current positions as a consultant to fintech companies. Any 180-degree shift warrants questioning.
- **Gaps in the timeline.** If there is a period of 12+ months with no public output, investigate what he was doing — consulting contracts, non-compete clauses, or deliberate low-profile periods can all be significant.
- **Client overlap.** Check whether any companies he now advises through the consultancy were subjects of regulatory decisions during his tenure. This is the core conflict-of-interest question.
- **Disappearing content.** If Wayback Machine shows pages that have been removed from his consultancy website or social media accounts, archive the cached versions immediately — deletions often signal sensitivity.

## Known Limitations
- Claude cannot perform any of the searches described. This skill produces the research plan; the journalist executes it. The value is in ensuring comprehensive coverage across source types that are easy to overlook.
- Name disambiguation is a real challenge for common names. The plan includes filtering strategies, but the journalist must verify that results actually refer to the correct person.
- Some sources (Factiva, LexisNexis, PACER) require paid subscriptions. The plan flags free alternatives where they exist, but comprehensive publication tracking for media professionals often requires institutional access.

## Related Skills
- [person-biography-brief](./person-biography-brief.md) — broader biographical research plan beyond publications
- [press-office-finder](./press-office-finder.md) — find the press contact to request official statements or verify quotes
- [coverage-review-brief](../media/coverage-review-brief.md) — analyse how media has covered this person or the issues they are involved in
