---
name: audience-feedback-summarizer
status: stable
category: newsletter
subcategory: strategy
version: 1.0
eval_score: 4.44
tags: [newsletter, feedback, audience, analysis, insights, reader-research]
---

# Audience Feedback Summarizer

## What This Skill Does
Takes a batch of reader comments, survey responses, or audience messages and returns a structured summary organized by theme, sentiment, and actionable takeaways — turning scattered feedback into a clear editorial brief.

## When To Use This Skill
- You have accumulated reader replies, survey results, or comment threads and need to extract patterns without reading every message individually
- You are preparing for an editorial planning meeting and need a concise summary of what readers are asking for, praising, or complaining about
- You want to identify content gaps or recurring audience frustrations that could inform your next edition, episode, or series
- A survey or feedback round has closed and you need to report findings to stakeholders or collaborators

## What You Need To Provide
**Required:** The raw feedback text — paste in the reader messages, survey responses, comment threads, or email replies (minimum 8-10 pieces of feedback for meaningful pattern extraction; maximum limited only by context window).

**Optional:** The specific question the feedback was responding to (e.g., "What topics should we cover next quarter?"); the publication name and focus area; any known audience demographics; whether you want the summary focused on content feedback, product/experience feedback, or both.

## How Claude Approaches This

1. **Reads all feedback and identifies recurring themes.** Groups messages by topic rather than chronology. A theme must appear in at least two separate responses to be reported — isolated one-off comments are noted separately to avoid over-indexing on outliers.

2. **Categorizes each theme by sentiment and urgency.** For each theme, assesses whether the overall sentiment is positive (readers want more of this), negative (readers want this fixed or changed), or mixed (divided opinions). Flags any theme where the feedback suggests urgency — a problem causing unsubscribes, a request appearing with high frequency, or a complaint about a recent specific change.

3. **Extracts representative quotes.** For each theme, pulls 1-2 direct quotes that best capture the reader's voice. These are the quotes you would cite in an editorial meeting or stakeholder update. Attributes them anonymously ("Reader 4," "Survey respondent") unless names were provided and attribution is appropriate.

4. **Delivers actionable takeaways.** Ends with 3-5 specific, concrete actions the editorial team could take based on the feedback. Each takeaway is tied to a specific theme and phrased as a decision to make or an experiment to run — not a vague suggestion.

5. **Notes what the feedback does not tell you.** Identifies gaps — topics or questions the feedback does not address, demographics that may be underrepresented, or areas where the sample is too small to draw conclusions.

## Output Format

A structured report of 300-500 words. Opens with a one-paragraph executive summary (2-3 sentences). Then a numbered list of themes, each with: theme label, sentiment tag, frequency note, 1-2 representative quotes, and a brief interpretation. Closes with a "Recommended Actions" section (3-5 bullet points) and a "Gaps in This Feedback" note (1-2 sentences). Tone is analytical and direct — written for an editorial team, not for publication.

```
**Summary:** [2-3 sentence overview of the feedback's dominant patterns]

**Theme 1: [Label]** — [Positive / Negative / Mixed] — [Frequency: appeared in X of Y responses]
[Brief interpretation]
> "[Representative quote]" — Reader X

**Theme 2: [Label]** — [Sentiment] — [Frequency]
[Brief interpretation]
> "[Representative quote]" — Reader X

[Additional themes as needed]

**Recommended Actions**
- [Action 1, tied to a specific theme]
- [Action 2]
- [Action 3]

**Gaps in This Feedback**
[What the feedback doesn't cover and why that matters]
```

## Quality Criteria
- [ ] Themes are genuinely distinct — not two labels for the same underlying issue
- [ ] Every theme is supported by at least two separate reader responses — no single-comment themes presented as patterns
- [ ] Representative quotes are selected for clarity and specificity, not cherry-picked to support a predetermined conclusion
- [ ] Sentiment labels are accurate — positive feedback not reframed as negative, and vice versa
- [ ] Recommended actions are specific and actionable — "Run a reader poll on topic X" rather than "Consider audience preferences"
- [ ] The gaps section is honest about what the feedback cannot tell you
- [ ] The summary is useful to someone who reads only the first paragraph and the recommended actions

## Example

### Input
**Context:** A weekly newsletter about urban design and city planning. After edition #40, the editor asked readers: "What should we cover more of, and what should we drop?" 14 replies received.

**Feedback (14 reader responses):**
1. "More case studies from smaller cities. Everything is always about the same five metros."
2. "Love the newsletter but the sections on zoning law are too dense for me."
3. "Keep doing the photo essays — they're the reason I open every edition."
4. "Can you interview more urbanists from outside North America?"
5. "The zoning deep-dives are my favorite part. Please don't cut them."
6. "I'd love a recurring section on cycling infrastructure."
7. "More international examples, especially from South America and Southeast Asia."
8. "Photo essays are great. More of those."
9. "Less policy, more stories about real people affected by urban design."
10. "The newsletter is too long. I'd rather get a shorter version twice a week."
11. "Case studies from smaller cities would be really valuable. Not everyone lives in a capital."
12. "I forward the photo essays to colleagues every time. Excellent work."
13. "Would be great to hear from urban planners in developing countries."
14. "The length is fine but I'd like the option to read a summary version."

### Output

**Summary:** Readers are strongly positive about the newsletter's photo essays and visual content, and there is clear demand for more international and small-city coverage. The audience is divided on the zoning law deep-dives — some readers find them too dense while others consider them the highlight. Two readers raised newsletter length as a concern, suggesting a summary option could serve different reading preferences.

**Theme 1: Geographic diversity — international and small-city coverage** — Positive (request) — Appeared in 5 of 14 responses
Readers want to see beyond the usual major metros. The request has two dimensions: more examples from smaller cities within the existing coverage area, and more international perspectives — particularly from South America, Southeast Asia, and developing countries.
> "More case studies from smaller cities. Everything is always about the same five metros." — Reader 1
> "Can you interview more urbanists from outside North America?" — Reader 4

**Theme 2: Photo essays** — Positive (praise) — Appeared in 3 of 14 responses
The photo essays are the newsletter's most-praised feature and a driver of both opens and forwards. No negative feedback on this format.
> "I forward the photo essays to colleagues every time. Excellent work." — Reader 12

**Theme 3: Zoning law deep-dives** — Mixed — Appeared in 2 positive, 1 negative
This is a polarized topic. One reader explicitly asked for them to continue; another found them too dense. A third asked for less policy content generally. The audience likely splits between professional urbanists (who value the depth) and general-interest readers (who prefer narrative).
> "The zoning deep-dives are my favorite part. Please don't cut them." — Reader 5
> "Love the newsletter but the sections on zoning law are too dense for me." — Reader 2

**Theme 4: Newsletter length and format** — Mixed — Appeared in 2 of 14 responses
Two readers raised length. One wants a shorter, more frequent format; the other is satisfied with the length but wants a summary option. This is a format preference, not a content complaint.
> "The newsletter is too long. I'd rather get a shorter version twice a week." — Reader 10

**Recommended Actions**
- Commission 2-3 case studies from non-capital cities and one international guest interview for the next quarter — directly addresses the most frequent request
- Keep the photo essay format and consider increasing frequency from monthly to bi-weekly — this is the strongest loyalty driver in the feedback
- Add a "TL;DR" summary section at the top of each edition — serves the readers who want brevity without cutting depth for those who want it
- Test a tagged or labeled format for the zoning content (e.g., "Deep Dive: Zoning") so readers can self-select rather than forcing a keep-or-cut decision
- Run a reader poll specifically on international regions of interest to prioritize geographic expansion

**Gaps in This Feedback**
Only 14 of your subscriber base responded, and self-selected respondents tend to be your most engaged readers. This feedback likely over-represents power users and under-represents casual readers who may have already disengaged. A broader survey or an analysis of open-rate drop-off points would complement these qualitative insights.

## Known Limitations
- Claude identifies themes based on the text provided and cannot verify whether the feedback sample is representative of the full audience. Small or self-selected samples may produce misleading patterns — always note the sample size when acting on results.
- Sentiment analysis from written text is imperfect. Sarcasm, cultural differences in expression, and ambiguous phrasing can lead to misclassified sentiment. Review flagged quotes to confirm the interpretation matches the reader's likely intent.
- This skill summarizes stated preferences, not revealed preferences. What readers say they want and what they actually open, read, and share can differ significantly. Pair feedback summaries with behavioral data (open rates, click rates, scroll depth) when available.

## Related Skills
- [newsletter-audience-segmenter](newsletter-audience-segmenter.md) — segment the audience into groups based on the patterns found in this feedback
- [content-arc-planner](content-arc-planner.md) — plan a content calendar informed by the recommended actions
- [reader-response-writer](../writing/reader-response-writer.md) — write a response to specific reader messages identified in this summary
