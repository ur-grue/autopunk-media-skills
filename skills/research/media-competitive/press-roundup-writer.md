---
name: press-roundup-writer
status: beta
category: research
subcategory: media-competitive
version: 1.0
eval_score: null
tags: [press-review, media-monitoring, editorial-briefing, competitor-coverage]
---

# Press Roundup Writer

## What This Skill Does
Transforms a set of article summaries or headlines into a structured, ready-to-share press roundup that tells an editorial team what the competition has covered, how they framed it, and what angles are still open.

## When To Use This Skill
- You need a morning press review ready before an editorial meeting, summarising overnight or same-day coverage on a topic
- An editor has asked you to check what the competition published on a story before deciding whether to pursue it
- You are preparing a weekly media digest for a team, a client, or internal stakeholders
- You want a quick competitive analysis of how a story was framed across different types of outlets (broadcast, print, digital, specialist)

## What You Need To Provide
**Required:** A list of articles or sources to review — supply either: (a) paste the headlines and brief summaries or key paragraphs, or (b) describe the topic and the outlets whose coverage you read

**Optional:** The angle or story your outlet is pursuing (helps Claude flag which coverage overlaps with your plans); the date range of the coverage; the intended audience for the roundup (newsroom team, editorial director, external client); any specific angles you want called out

## How Claude Approaches This
1. Groups the coverage by angle or framing — identifying what narrative each piece leads with — rather than listing articles in the order you provided them, so the roundup reveals patterns rather than just a catalogue
2. Flags what is shared across outlets (consensus framing, repeated sources, common facts) versus what is distinctive in individual pieces (exclusive quotes, unique data, dissenting interpretations)
3. Closes with an open-angles section that identifies what has not been covered, what questions remain unanswered, and where your outlet might find a differentiated story

## Output Format
A structured roundup with four sections: **Overview** (two to three sentences on the dominant news consensus across the coverage reviewed), **Coverage by Angle** (grouped summaries — each group has a heading describing the framing, followed by two to four bullet points naming what pieces took that angle and what they each added), **What's Missing** (three to five open angles or unanswered questions the coverage did not address), and **Editorial Note** (one paragraph of direct, plain-language advice for a reporter or editor on where the story has room to move). Total length: 350 to 500 words. Plain prose throughout, no jargon.

## Quality Criteria
- [ ] The Overview captures the consensus framing in a way a non-specialist could understand and use
- [ ] Angles are grouped by editorial logic (framing, approach, subject) — not by outlet type or publication date
- [ ] The What's Missing section contains only angles genuinely absent from the input, not angles that merely received less emphasis
- [ ] The Editorial Note makes a specific, actionable recommendation — not a general observation
- [ ] No real publication names, reporters, or proprietary articles are invented or fabricated in the output

## Example

### Input
Topic: Coverage of a proposed merger between two large domestic supermarket chains, reviewed after one week of press coverage.

Our angle: We are planning a piece focused on how the merger would affect suppliers — specifically small and medium-sized food producers — rather than consumers.

Summaries of coverage seen:

1. General news outlet A — Headline: "Supermarket giants announce merger talks." Covered the announcement, quoted spokespeople from both companies, noted the deal would require regulatory approval. Focused on shareholder reaction and share price movement.

2. General news outlet B — Headline: "Merger would create retail giant controlling 40% of grocery market." Led on market share implications for consumers, interviewed a consumer advocacy group, noted potential price effects. Brief mention of supplier concerns in paragraph 11.

3. Business press outlet — Headline: "Analysts divided on supermarket deal." Focused on investor opinion, M&A legal complexity, and regulatory timeline. No mention of suppliers or workers.

4. Trade press (food industry) — Headline: "Producers warn merger will squeeze margins." Exclusively covered supplier angle: two food producer associations said the combined entity would have outsized bargaining power. Included specific data on average payment terms.

5. Broadcast outlet — Short item, no byline. Covered announcement and market share figure. Quoted government minister saying the deal would face scrutiny.

### Output

---

**OVERVIEW**

Coverage in the first week was dominated by the financial and consumer angles: shareholder reaction, market concentration, and the regulatory process. The supplier dimension — which carries the most detailed available data and the most immediate human stakes below the corporate level — appeared in only one outlet and has received almost no attention from general-audience press.

---

**COVERAGE BY ANGLE**

**Shareholder and financial reaction**
- General news outlet A led on this: company spokespeople, share price movement, regulatory clearance timeline.
- Business press outlet expanded it with analyst commentary and M&A legal complexity. Neither piece quoted anyone outside the investment and corporate world.

**Consumer impact and market concentration**
- General news outlet B built its piece around this, with a 40% market share figure and a consumer advocacy group as its main voice.
- Broadcast outlet ran a brief version of the same frame, adding a government minister's comment about regulatory scrutiny.
- This angle is now well-trodden — the 40% figure and consumer groups have been the go-to sources for every general-audience outlet.

**Supplier and producer concerns**
- Trade press outlet is the only source to pursue this line. It secured data on payment terms and quotes from two food producer associations. The piece stands alone.
- General news outlet B mentioned suppliers in paragraph 11 — one sentence, no quotes, no data.

---

**WHAT'S MISSING**

- Individual producer voices: the trade piece quoted associations, not the producers themselves. First-hand accounts of how small and medium suppliers currently negotiate with these two chains — and what they fear from a combined entity — are untouched.
- Geographic dimension: no coverage has examined whether the merger's effects on supply chains or retail presence would be felt differently in rural or regional markets.
- Worker angle: no outlet has spoken to staff at either chain about what the merger means for jobs, pay, or working conditions.
- Historical comparison: no piece has examined previous large retail mergers and what actually happened to supplier margins and product range.
- Regulator's own criteria: the minister's comment mentioned scrutiny but no outlet has reported on the specific legal tests the regulator will apply.

---

**EDITORIAL NOTE**

Your supplier angle is genuinely open. The trade press has staked out the association-level story, but individual producer voices and on-the-record data from named businesses are still available. A piece that puts a specific supplier — ideally one with a contract with both chains — at the centre would be clearly differentiated from everything published so far. Move before the regulatory process generates a new news hook that pulls general outlets back onto this angle.

---

## Known Limitations
- This skill works on the summaries or excerpts you paste in — it cannot retrieve or read live articles. The quality of the roundup depends entirely on the accuracy of what you provide.
- If you summarise articles rather than pasting key paragraphs, nuance can be lost and the coverage-by-angle groupings may be less precise.
- The skill cannot verify claims made in the articles you describe — fact-checking is outside its scope.
- For very large roundups (more than ten to twelve articles), consider splitting by date range or sub-topic for a cleaner output.

## Related Skills
- [news-topic-monitor-brief](news-topic-monitor-brief.md)
- [competitor-coverage-gap-finder](competitor-coverage-gap-finder.md)
- [trending-topics-brief](trending-topics-brief.md)
