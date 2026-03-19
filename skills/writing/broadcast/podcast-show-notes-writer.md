---
name: podcast-show-notes-writer
status: beta
category: writing
subcategory: broadcast
version: 1.0
eval_score: null
tags: [podcast, show-notes, post-production, SEO, episode-description]
---

# Podcast Show Notes Writer

## What This Skill Does
Writes complete, publication-ready podcast show notes — including episode summary, timestamped chapter markers, key takeaways, guest bio, and relevant links — formatted for podcast hosting platforms and listener discovery.

## When To Use This Skill
- An episode has been recorded and you need show notes before publication
- You want show notes that work both as a listener reference and as a search-discoverable episode description
- You are producing at volume and need a consistent, professional show notes format across all episodes
- Your existing show notes are thin (just a title and guest name) and you want to upgrade the template

## What You Need To Provide
**Required:**
- Episode title and episode number
- A summary or transcript of the episode content (can be rough notes, a bullet list, or a full transcript)
- Show name and target audience

**Optional:**
- Guest name, title, and organisation (for interview episodes)
- Timestamps for key moments in the episode
- Links to be included (guest website, research mentioned, tools discussed, sponsor URLs)
- Any standard boilerplate your show uses (subscribe links, review prompts, social handles)
- Preferred length for the summary section (short / medium / long)

## How Claude Approaches This
1. Reads the episode content provided and identifies the three to five most important ideas, decisions, or moments a listener would want to find again after listening
2. Writes a summary paragraph that captures the episode's value proposition — what a potential listener gains by pressing play — without spoiling the conclusion
3. Structures the chapter timestamps into a scannable list that functions as a navigable index of the episode
4. Drafts the key takeaways section as standalone, actionable points a listener can reference without re-listening
5. Pulls together all provided links and resource references into a clean, labelled list
6. Assembles the full show notes document in a format suitable for direct paste into a podcast hosting platform

## Output Format
- Structured document with clearly labelled sections: Episode Summary, In This Episode (timestamps), Key Takeaways, Guest Bio (if applicable), Resources and Links, Connect section
- Episode Summary: 80–150 words, written in third person or aligned to the show's existing register
- Timestamps formatted as `[00:00] Section title` — one line per chapter
- Key Takeaways: 3–5 bullet points, each a complete standalone sentence, no bullet points that start with the same word
- Guest Bio: 2–3 sentences, factual, drawn entirely from information provided
- Resources and Links: labelled list, one item per line, no bare URLs
- Total length: 300–600 words depending on episode complexity

## Quality Criteria
- [ ] The episode summary tells a potential listener what they will gain — it is a reason to listen, not just a description of what happened
- [ ] Timestamps are accurate to the content described and are genuinely useful as navigation markers
- [ ] Key takeaways are specific and standalone — a reader who has not listened to the episode can understand and use each one
- [ ] No information is invented — guest credentials, statistics, and claims come only from the user-provided content
- [ ] The document reads cleanly when pasted into a plain-text field (no markdown artifacts that would appear as formatting noise on a hosting platform)
- [ ] All links and resources are labelled clearly so a reader knows what they are before clicking

## Example

### Input
**Show:** Ground Truth — a weekly podcast on investigative journalism methodology
**Audience:** Journalists, editors, and journalism educators
**Episode number:** 84
**Episode title:** Following the Money: How to Read Corporate Filings Like an Investigative Reporter
**Guest:** A senior investigative reporter at a national business desk who specialises in corporate accountability reporting
**Content summary (rough notes):**
- Guest started career as an accountant before switching to journalism — unusual background that gave her a head start on financial documents
- Talked about the specific documents investigators should start with: annual reports (10-K), proxy statements (DEF 14A), and 8-K filings for material events
- Key tip: the footnotes in a 10-K are where the interesting things are hidden — companies are required to disclose certain risks and obligations but they put them in 12pt font on page 80
- Discussed a case study (generic — a story she worked on where a footnote disclosed a $40m contingent liability that the CFO had not mentioned in any public statement)
- Tools mentioned: SEC EDGAR database (free), OpenCorporates, Sayari for international corporate structures
- Common mistake: journalists FOIA-ing things they could just look up in public filings
- Talked about the difference between audited and unaudited financials and why it matters for what you can assert in a story
- Episode closes with her single best piece of advice: read the risk factors section of every 10-K relevant to your beat, even if there is no story — it tells you what the company is afraid of
**Timestamps:**
- 00:00 Introduction
- 03:15 From accountant to investigative reporter
- 09:40 Where to start: the documents that matter most
- 18:22 The footnote problem — what companies hide in plain sight
- 28:05 Case study: the $40 million nobody mentioned
- 36:50 Tools for corporate structure research
- 44:10 Audited vs. unaudited financials: why it matters for your story
- 51:30 One piece of advice for journalists covering business
**Links:** SEC EDGAR (sec.gov/edgar), OpenCorporates (opencorporates.com), Sayari (sayari.com)
**Boilerplate:** Subscribe on Apple Podcasts and Spotify. Leave a review if this episode was useful — it helps other journalists find the show. Find us at [show website].

### Output

---

**Ground Truth — Episode 84**
**Following the Money: How to Read Corporate Filings Like an Investigative Reporter**

---

**Episode Summary**

Corporate wrongdoing is often hiding in plain sight — disclosed in regulatory filings, buried in footnotes, and available to any journalist who knows where to look. In this episode of Ground Truth, investigative reporter and former accountant [Guest Name] walks through the specific documents that should be the starting point for any corporate accountability investigation, explains why the footnotes of an annual report are more valuable than the headlines, and shares a case study in which a single footnote revealed a $40 million liability that had never appeared in any public statement. Whether you cover business full-time or encounter financial documents only occasionally, this episode will change the way you read a corporate filing.

---

**In This Episode**

[00:00] Introduction
[03:15] From accountant to investigative reporter — and why the background matters
[09:40] Where to start: 10-Ks, proxy statements, and material event filings
[18:22] The footnote problem: what companies are required to disclose and where they hide it
[28:05] Case study: the $40 million contingent liability no one was talking about
[36:50] Tools for tracing corporate structures — free and paid options
[44:10] Audited vs. unaudited financials: what you can and cannot assert in a story
[51:30] The single best habit for journalists who cover business

---

**Key Takeaways**

- Annual reports (10-K filings) contain a risk factors section that tells you what a company is genuinely afraid of — read it for your beat even when there is no immediate story
- The footnotes of a 10-K are where companies bury legally required disclosures they would prefer not to highlight; reading them is often more productive than any FOIA request
- Audited financial statements can support factual assertions in a published story; unaudited figures should be treated as provisional and caveated accordingly
- SEC EDGAR is a free, public database — many documents journalists routinely request via FOIA are already available there

---

**About the Guest**

[Guest Name] is a senior investigative reporter at a national business desk specialising in corporate accountability. She began her career as a qualified accountant before moving into journalism, and has spent more than a decade reporting on how companies manage — and mismanage — their disclosures to regulators and the public.

---

**Resources and Links**

- SEC EDGAR — free public database of all U.S. corporate regulatory filings: sec.gov/edgar
- OpenCorporates — global database of company registration records: opencorporates.com
- Sayari — corporate structure and beneficial ownership research tool: sayari.com

---

**Connect**

Subscribe to Ground Truth on Apple Podcasts and Spotify. If this episode was useful, leaving a review helps other journalists find the show. Find all episodes and resources at [show website].

---

## Known Limitations
- Timestamps can only be included if the user provides them — Claude cannot generate accurate timestamps without access to the actual audio file or a transcript with time codes
- Guest credentials and biographical information must be provided by the user; Claude will not invent or supplement biography from general knowledge, as this creates a risk of inaccuracy
- The summary is written to attract potential listeners, not to replace listening — it deliberately does not include all conclusions, which means it may feel incomplete to someone who has already heard the episode
- For shows with highly technical subject matter (medical, legal, financial), Claude will reproduce terminology as provided but cannot independently verify that technical claims are accurate

## Related Skills
- [show-notes-generator](../../podcast/post-production/show-notes-generator.md)
- [podcast-episode-script-writer](./podcast-episode-script-writer.md)
- [episode-summary-writer](../../podcast/post-production/episode-summary-writer.md)
