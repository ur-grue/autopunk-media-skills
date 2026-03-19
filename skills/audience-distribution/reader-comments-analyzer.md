---
name: reader-comments-analyzer
status: beta
category: audience-distribution
subcategory: distribution
version: 1.0
eval_score: null
tags: [comments, audience-feedback, reader-engagement, editorial, community]
---

# Reader Comments Analyzer

## What This Skill Does
Reads a batch of reader comments and produces a structured summary of recurring themes, unanswered questions, emotional tone, and actionable editorial signals — so editors and journalists can understand what their audience actually took from a piece.

## When To Use This Skill
- After publishing a story that generated significant reader response and you want to understand what landed and what did not
- When deciding whether to follow up on a story based on what readers are asking
- When a piece attracted hostile or polarised comments and you need to understand the pattern before responding
- When commissioning a follow-up or correction and you want to prioritise the issues readers flagged most often
- When an editor wants an audience intelligence report without reading hundreds of individual comments

## What You Need To Provide
**Required:**
- A batch of reader comments (paste them directly — a minimum of 10 is useful; 30 or more gives more reliable patterns)
- The headline or a one-sentence description of the original article (so Claude can assess relevance and gap between article intent and reader response)

**Optional:**
- The platform the comments came from (website, YouTube, Facebook, Reddit, etc.) — tone and conventions differ by platform
- Any specific question you want answered (e.g., "What are readers most angry about?" or "What follow-up story ideas are hidden in these comments?")
- Whether you want the analysis to inform a correction, a follow-up article, or a community response

## How Claude Approaches This
1. Reads through all comments and identifies recurring subjects, questions, and emotional registers — grouping similar responses together without losing important outliers
2. Assesses the overall tone distribution: what proportion of comments are broadly positive, critical, questioning, hostile, or off-topic
3. Extracts the three to five strongest editorial signals: specific factual challenges, gaps the article did not address, misunderstandings the headline or framing may have caused, and story ideas the audience is explicitly requesting
4. Flags any comments that suggest a correction may be warranted — factual disputes supported by named sources, direct corrections from people with apparent expertise, or errors the publication has not yet acknowledged
5. Summarises findings in a format ready to share with an editorial meeting

## Output Format
A structured report in four sections:
1. **Overall tone** — a one-paragraph characterisation of the emotional register across the comment batch (not a number or percentage, but a qualitative read)
2. **Recurring themes** — three to six bullet points, each naming a theme and noting roughly how often it appeared (e.g., "frequently," "mentioned by several readers," "raised by one reader but in detail")
3. **Unanswered questions and editorial signals** — the specific questions readers wanted answered that the article did not address; story follow-up opportunities; any requests for clarification or correction
4. **Recommended action** — one or two concrete editorial steps based on the analysis (publish a follow-up, issue a clarification, respond in comments, ignore the noise)

Total length: 350–500 words. Editorial tone — written as if a senior editor drafted a quick audience intelligence brief. No academic language, no sentiment-analysis jargon.

## Quality Criteria
- [ ] Themes are specific to the actual comments provided, not generic observations about reader behaviour
- [ ] The tone assessment is honest — if the response was hostile, it says so plainly rather than softening it
- [ ] Correction flags identify the specific factual dispute, not just note that "some readers disagreed"
- [ ] Recommended actions are concrete and directly connected to what the comments actually showed
- [ ] Outlier comments that do not fit any pattern are noted rather than silently discarded, if they are editorially significant

## Example

### Input
Article headline: "The hidden cost of free school meals: why some families are opting out"
Platform: Publisher website (moderated comment section)

Comments:
1. "My daughter's school said they never got extra funding for this. The article makes it sound like it was universal."
2. "Finally someone writing about this. We opted out because of the stigma — kids knew who was getting free meals and who wasn't."
3. "Where is the data on how many families opted out? The article says 'many' but gives no figure."
4. "This feels like an attack on a programme that helps millions of kids. Typical of this publication."
5. "The headteacher quoted doesn't actually work at a state school, she's at an independent. Did the reporter check this?"
6. "Same in Scotland — the rollout was much smoother here. Would be interesting to compare."
7. "Stigma is the real issue. My son refused to eat at school for months because of this."
8. "The quote from the government spokesperson is three years old. Is that really the current position?"
9. "I'd love to see a follow-up piece on what schools do to reduce the stigma around free meals."
10. "No data, no concrete examples, just anecdotes. Disappointed in the quality of reporting here."
11. "The headline is misleading — 'hidden cost' suggests financial cost but the article is actually about social cost."
12. "Stigma comes up again and again in the research. Why wasn't any academic cited?"
13. "My son's school is excellent at making all kids feel included during lunch. It really depends on the school."

### Output
**Reader Comments Analysis — "The hidden cost of free school meals"**

**Overall tone**
Mixed, with a clear tilt toward critical engagement rather than hostility. Most readers are invested in the topic and writing from personal experience or professional knowledge. Two comments are straightforwardly antagonistic toward the publication; the rest are substantive, even when negative. This is an audience that wanted more from the piece, not an audience that rejected the topic.

**Recurring themes**
- **Stigma as the central issue** (mentioned by several readers, with personal accounts): Readers with direct experience — as parents — consistently named social stigma as the primary reason for opting out, which aligns with the article's angle but suggests the piece underweighted first-person evidence
- **Missing data** (raised by multiple readers): The absence of a concrete figure for how many families opted out was noticed by more than one reader; "many" without a source was a credibility gap
- **Inconsistent rollout across schools and regions** (raised by two readers): Readers noted that the experience varied significantly by school and by nation, suggesting the article may have overgeneralised from a limited sample
- **Sourcing concerns** (two specific challenges): One reader disputes whether the quoted headteacher is from a state school; another flags that the government spokesperson quote is three years old. Both warrant a check
- **Headline framing** (one reader, but clearly stated): The word "cost" was read as financial when the article is about social cost — a potential source of misdirected search traffic and reader disappointment

**Unanswered questions and editorial signals**
- What is the actual opt-out rate, and is official data available? Readers want a number.
- How do schools that manage this well differ from those that do not? A practical follow-up is explicitly requested.
- A Scotland comparison was suggested — the rollout differences by nation may be a separate story.
- No academic research on stigma was cited. Readers with apparent familiarity with the field noticed.

**Recommended actions**
1. Check the two sourcing challenges immediately — the headteacher's school type and the age of the government quote. If either is wrong, issue a correction and update the article.
2. Commission a short follow-up focused on what schools do to reduce lunch stigma. Reader demand is explicit and the story idea is well-formed.

## Known Limitations
- Analysis is only as good as the comments provided. A highly moderated comment section, or one filtered to remove negative responses, will produce a skewed picture of actual reader sentiment.
- Claude cannot verify factual claims made in comments. When a reader alleges an error, treat it as a flag to investigate, not as a confirmed correction.
- Comment sections self-select for readers with strong opinions. The silent majority who read and moved on are not represented. This analysis reflects engaged readers, not all readers.
- For very large comment batches (several hundred comments), paste a representative sample rather than the full set — Claude works best with 20–80 comments at a time. Flag if you have sampled rather than included all comments.

## Related Skills
- [platform-distribution-advisor](./platform-distribution-advisor.md)
- [audience-persona-builder](../../youtube/channel-strategy/audience-persona-builder.md)
- [engagement-audit](../../social-media/strategy/engagement-audit.md)
- [correction-notice-writer](../../magazine-journalism/fact-checking/correction-notice-writer.md)
