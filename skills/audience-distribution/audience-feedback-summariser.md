---
name: audience-feedback-summariser
status: beta
category: audience-distribution
subcategory: audience-distribution
version: 1.0
eval_score: null
tags: [feedback, audience, comments, reader-response, analytics]
---

# Audience Feedback Summariser

## What This Skill Does
Reads a batch of raw audience comments, emails, or survey responses about a piece of content and produces a structured summary of what readers valued, what confused them, and what they want more of.

## When To Use This Skill
- After a story, episode, or video has been live for 48–72 hours and comments have accumulated
- Before a follow-up piece, to understand what questions the original left unanswered
- When an editor needs to report audience sentiment to a commissioning team or sponsor
- After a newsletter campaign, to assess reader reaction before the next issue

## What You Need To Provide
**Required:** A block of raw feedback — comments copied from a platform, email replies pasted together, or survey free-text responses. Minimum 10 responses for meaningful patterns; 30 or more is ideal.
**Optional:** The original headline and a one-sentence description of the content the feedback refers to. The platform the feedback came from (comments section, email, social media, survey). Any specific question you want the summary to answer (e.g. "Did readers understand the data visualisation?").

## How Claude Approaches This
1. Reads all feedback as a single corpus, ignoring obvious spam or off-topic replies, and identifies recurring themes — both positive and critical.
2. Groups themes by type: what landed well, what confused or frustrated readers, what follow-up questions they raised, and any notable emotional responses (strong praise, strong anger, surprise).
3. Produces a structured summary with counts or proportions where the volume of feedback supports it, and flags any individual comments that are outliers or particularly quotable.

## Output Format
A short briefing document of 300–500 words, structured under four headings: **What Worked**, **What Confused or Frustrated**, **Follow-Up Questions Readers Are Asking**, and **Standout Responses**. Written in plain editorial language — suitable for sharing with a commissioning editor, not a data analyst. No jargon. Bullet points under each heading, with one or two direct quotes from the feedback where they are illustrative.

## Quality Criteria
- [ ] Every heading is populated — no heading is left empty or marked "none noted"
- [ ] Proportions are honest ("roughly a third of responses mentioned…") rather than inflated
- [ ] At least two direct quotes are pulled from the raw input, not invented
- [ ] The summary would give an editor clear enough signal to decide whether a follow-up story is warranted
- [ ] Tone is neutral and professional — not defensive on behalf of the publication

## Example

### Input
Content: "Why your tap water bill is about to double — and what you can do about it" (explainer article)

Platform: Comments section + email replies

Raw feedback (30 responses):

"Finally someone explains this clearly. I've been confused about the infrastructure levy for months."
"Good article but you never explained what renters can actually do. Owners get all the advice."
"Shared this with my whole street WhatsApp group."
"The graph showing cost increases over 10 years was impossible to read on my phone."
"Why is there no mention of the desalination option? That's the real story."
"Great piece. When are you covering the rural situation? It's way worse outside the cities."
"I'm a water engineer and the section on pipe replacement was accurate. Well done."
"Couldn't understand the bit about 'cost-reflective pricing'. Too much jargon."
"My bill went up last month — so this is very timely."
"The explainer box on the levy was the most useful thing. More of those please."
"You said 'significant increase' but never gave a figure for low-income households."
"Brilliant. Bookmarked."
"I kept scrolling expecting a section on what council tenants should do. Never came."
"The headline promised solutions but the solutions section was only two paragraphs."
"Really accessible writing. I read the whole thing."
"Is there a version of this for small businesses? Different situation for us."
"The 10-year graph was fine on desktop but terrible mobile."
"Wish you'd linked to the actual regulator's report."
"Renters got one bullet point. That felt dismissive."
"First time I've understood where the levy money actually goes."
"Could you do a follow-up on the appeal process?"
"Why no comment from the opposition? Felt one-sided."
"Good explainer. Sent it to my MP."
"The 'what can you do' section was too short."
"I work in local government and this is accurate."
"Graph was unreadable on mobile."
"More of this type of service journalism please."
"Would love a calculator tool — how much will MY bill go up?"
"No mention of pensioner concessions. Big omission."
"Shared on LinkedIn — got a lot of engagement from policy people."

### Output

**Audience Feedback Summary — "Why your tap water bill is about to double"**

**What Worked**

The article's clarity and accessibility were the most praised qualities. Multiple readers noted this was the first time they had understood how the infrastructure levy works. The explainer box format received specific praise, with several readers calling for more of the same. The piece generated strong sharing behaviour — at least three responses mentioned forwarding or posting it to groups, and one reader sent it to their MP.

> "First time I've understood where the levy money actually goes."
> "Really accessible writing. I read the whole thing."

**What Confused or Frustrated**

Roughly a third of responses flagged the mobile rendering of the 10-year cost graph as unreadable — this was the single most repeated specific complaint. The term "cost-reflective pricing" was singled out as unexplained jargon. Several readers felt the headline's promise of solutions was not delivered: the solutions section was seen as too brief relative to the problem framing.

> "The headline promised solutions but the solutions section was only two paragraphs."

**Follow-Up Questions Readers Are Asking**

- **Renters and tenants:** Multiple responses noted the article focused almost entirely on homeowners, leaving renters, council tenants, and leaseholders without applicable guidance.
- **Rural areas:** At least two readers asked whether the situation outside cities is different or worse.
- **Specific groups:** Requests for coverage of small businesses, pensioner concessions, and low-income households.
- **Linked sources:** Readers wanted a direct link to the regulator's report.
- **Interactive tool:** One reader specifically requested a bill calculator.
- **The appeal process:** One reader asked for a follow-up on what recourse households have.

**Standout Responses**

Two readers identified as professionals — a water engineer and a local government officer — both confirmed the article's accuracy. This is worth noting for editorial credibility. One reader shared it on LinkedIn and reported strong engagement from policy professionals, suggesting the piece has traction beyond the general readership.

---

## Known Limitations
- This skill summarises patterns in the feedback you provide — it cannot retrieve comments from platforms directly. You must copy and paste the raw text.
- With fewer than 10 responses, the summary will identify themes but cannot make reliable claims about proportion or majority sentiment.
- Comments that are highly platform-specific in tone (heavy use of emoji, platform slang, or reaction-only responses) may be harder to quote usefully — the skill will flag them rather than force them into a quote.
- The skill does not perform sentiment scoring or quantitative analysis; it produces editorial interpretation, not metrics.

## Related Skills
- [newsletter-audience-segmenter](./newsletter-audience-segmenter.md)
- [headline-ab-variants-writer](./headline-ab-variants-writer.md)
- [reader-engagement-brief](./reader-engagement-brief.md)
