---
name: newsletter-audience-segmenter
status: beta
category: audience-distribution
subcategory: audience-distribution
version: 1.0
eval_score: null
tags: [newsletter, segmentation, audience, email, targeting]
---

# Newsletter Audience Segmenter

## What This Skill Does
Takes a description of a newsletter's subscriber base and an upcoming issue's content, then produces a practical segmentation plan — which segments to target, what angle to lead with for each, and how to adapt the subject line per segment.

## When To Use This Skill
- Before sending a newsletter issue that will land differently with different parts of your audience (e.g. a policy story relevant to both general readers and industry professionals)
- When open rates or click-through rates are declining and you suspect the full list is receiving content that is only relevant to a subset
- When launching a new content vertical and deciding which existing subscribers to introduce it to first
- When a sponsor or partner has asked you to reach a specific audience segment and you need to identify and brief that group

## What You Need To Provide
**Required:** A description of your newsletter's subscriber base — who they are, how they signed up, any demographic or interest data you hold. A summary of the upcoming issue's content (two to five sentences is enough).
**Optional:** Your email platform's available segmentation fields (e.g. signup source, location, engagement tier, stated interests). Any past performance data suggesting which topics over- or under-index with different groups. The total list size and approximate size of any known sub-groups.

## How Claude Approaches This
1. Reviews the content summary and identifies the two or three distinct reader motivations it could serve — for example, a story about urban food prices might matter to readers as consumers, as small business owners, or as policy-watchers.
2. Maps those motivations against the subscriber description to define segments, using only the data fields you have actually indicated are available — no invented segmentation criteria.
3. For each segment, recommends a lead angle, a subject line variant, and a brief note on what to emphasise or de-emphasise in the intro paragraph to make the issue feel tailored rather than broadcast.

## Output Format
A segmentation brief of 400–600 words, structured as one section per recommended segment. Each section contains: segment name and description, estimated relevance to this issue (high / medium / low), recommended subject line, recommended lead angle (two to three sentences), and one bullet of what to avoid or downplay for this group. Closes with a one-paragraph note on whether full-list sending is a reasonable alternative if segmentation is not feasible this cycle.

## Quality Criteria
- [ ] Segments are defined using only the subscriber data fields described in the input — no invented criteria
- [ ] Subject line variants are substantively different across segments, not just minor rewording
- [ ] The brief is actionable in a standard email platform without custom development
- [ ] The "full list" fallback note is honest about the trade-offs, not dismissive
- [ ] No segment is described in a way that would be creepy or off-putting to readers if they knew about it

## Example

### Input
Subscriber base: Approximately 18,000 subscribers. Signed up via three routes: general website sign-up form (roughly 60%), a specific data journalism explainer series from 18 months ago (25%), and a one-off investigation into public sector procurement (15%). We have signup source as a field. Open rate averages 38% overall but the data journalism cohort opens at 52%.

Upcoming issue content: A deep dive into how three city councils have used AI-assisted tools to forecast social care demand. Includes a methodology explainer, interviews with council data leads, and a critique from an academic researcher who argues the models encode historical bias. Also includes a short item on a new FOIA toolkit being released by a press freedom organisation.

### Output

**Newsletter Segmentation Brief — AI in social care forecasting issue**

---

**Segment 1: Data journalism sign-up cohort** (~4,500 subscribers, signup source: explainer series)

Relevance to this issue: **High**

Subject line: "How councils are using AI to predict who needs care — and why one researcher says the model is broken"

Lead angle: Lead with the methodology explainer and the academic critique. This cohort signed up specifically for data-driven, process-level reporting. They will want to understand how the models work before they care about the policy implications. The FOIA toolkit item is a strong secondary hook for this group — include a prominent mention in the intro.

Avoid: A soft human-interest opening. This cohort finds it condescending when data stories are introduced through individual case studies before the data is explained.

---

**Segment 2: Procurement investigation cohort** (~2,700 subscribers, signup source: procurement investigation)

Relevance to this issue: **Medium-high**

Subject line: "Councils are buying AI tools to manage social care. Who's checking they work?"

Lead angle: Frame this as an accountability and procurement story. This cohort engaged with a story about public sector spending decisions — they will respond to the angle of: who chose these tools, what was the procurement process, and is there adequate oversight. The academic critique is your strongest hook for this group.

Avoid: Leading with the technical methodology. Get to the accountability angle within the first two sentences.

---

**Segment 3: General sign-up cohort** (~10,800 subscribers, signup source: website)

Relevance to this issue: **Medium**

Subject line: "AI is being used to decide who gets social care. Here's what the councils won't tell you."

Lead angle: Lead with the human stakes — the fact that automated tools are influencing resource allocation decisions affecting vulnerable people. The methodology and critique follow naturally once readers understand why they should care. Keep the FOIA toolkit item brief for this group; it is likely to feel niche.

Avoid: Opening with technical terms (model, algorithm, forecast) without a plain-language sentence first. This cohort has broad interests and needs the relevance established before the detail.

---

**Full-list fallback**

If segmentation is not feasible this cycle, send to the full list using the general cohort subject line and lead angle — it is the most broadly accessible entry point. You will likely see above-average opens from the data journalism cohort regardless, given their established engagement pattern. Consider adding a prominent link to the methodology explainer early in the piece so data-oriented readers can self-select into the depth they want without the full issue being structured around them.

---

## Known Limitations
- This skill produces a segmentation plan based on the subscriber data you describe — it cannot access your email platform or pull live data. The accuracy of the plan depends on how accurately you describe your list.
- Segmentation is only worth the effort if your email platform supports it without significant manual work. For lists under 5,000 subscribers, full-list sending with a well-chosen subject line will often perform comparably.
- The skill assumes segments are reasonably distinct. If your signup sources are strongly correlated (e.g. most data journalism sign-ups also came through the procurement investigation), the segments will overlap more than the brief implies.
- Subject line recommendations reflect general email performance principles, not your publication's specific historical data.

## Related Skills
- [audience-feedback-summariser](./audience-feedback-summariser.md)
- [headline-ab-variants-writer](./headline-ab-variants-writer.md)
- [newsletter-teaser-writer](../magazine-journalism/distribution/newsletter-teaser-writer.md)
