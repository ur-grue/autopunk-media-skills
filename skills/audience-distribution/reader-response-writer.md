---
name: reader-response-writer
status: beta
category: audience-distribution
subcategory: audience-distribution
version: 1.0
eval_score: null
tags: [reader-engagement, correspondence, editorial, letters, comments]
---

# Reader Response Writer

## What This Skill Does
Drafts a professional, on-brand response to a reader letter or online comment — acknowledging the reader's point, representing the publication's position, and preserving the relationship.

## When To Use This Skill
- A reader sends a letter of complaint, disagreement, or correction that requires a formal reply
- An editor needs to respond to a comment thread that has drawn significant engagement or raised a factual dispute
- A publication's audience team needs templated but personalised responses to recurring reader feedback categories
- You want to close a loop with a reader who submitted a tip, suggestion, or story idea that wasn't pursued

## What You Need To Provide
**Required:** The reader's original message (letter, email, or comment), the publication's stance or the relevant facts of the matter, and the tone you want the response to take (formal, warm, neutral).

**Optional:** Any editorial decision that was made as a result of the reader's message (e.g., a correction was issued, a follow-up piece is planned); the reader's name and preferred form of address; whether the response will be published or sent privately.

## How Claude Approaches This
1. Reads the reader's message carefully to identify the core concern — complaint, factual dispute, praise, story tip, or general feedback — and flags the emotional register (frustrated, curious, hostile, enthusiastic).
2. Maps the reader's concern to the publication's position: confirms facts if a correction is warranted, acknowledges subjectivity where it exists, and avoids defensive or dismissive language.
3. Drafts a response that opens by addressing the reader directly, engages substantively with their point, explains any editorial decision if relevant, and closes in a way that invites continued engagement rather than shutting down the conversation.

## Output Format
A single response, 80–200 words. Conversational but professional. First person ("We appreciate…" or "Thank you for…"). No jargon. No hedging phrases like "we understand your frustration" without actually addressing the substance. One paragraph per main point if the message requires more than one. Suitable for email or publication in a letters section.

## Quality Criteria
- [ ] Opens by acknowledging the specific point the reader raised, not with a generic "thank you for writing"
- [ ] Addresses the substance of the reader's concern directly — does not deflect or repeat the question back without answering it
- [ ] Reflects the publication's editorial position accurately without misrepresenting it
- [ ] Tone is appropriate to the reader's register — does not respond to a mild enquiry with an apology, or to a sharp complaint with breezy warmth
- [ ] Closes with a clear, natural sign-off that leaves the relationship intact

## Example

### Input
**Reader's message:**
"Your article on urban heat islands published last Tuesday contained a claim I believe is incorrect: you stated that green roofs reduce building temperatures by 'up to 40 percent.' Every study I've read puts the figure at closer to 3–5 degrees Celsius, which is not the same thing as a 40 percent reduction. This is a significant error and I'm surprised it wasn't caught before publication."

**Publication stance:** After checking, the editorial team agrees the figure was imprecise — it came from a single industry report and was not verified against peer-reviewed literature. A correction will be appended to the article.

**Tone:** Formal, direct, no over-apology.

### Output
Dear Ms. Harrington,

Thank you for taking the time to write. You are right to flag this. We have reviewed the figure cited in Tuesday's article and agree that "up to 40 percent" was imprecise and insufficiently sourced. The claim drew from a single industry report rather than peer-reviewed research, and it did not accurately represent what the literature says about temperature reduction in Celsius terms.

A correction has been appended to the article online, and we are reviewing our sourcing procedures for quantitative claims in environmental coverage.

We are grateful for the scrutiny — it is exactly the kind of engagement that keeps our standards honest.

Yours sincerely,
The Editors

## Known Limitations
- Claude cannot verify the facts underlying the reader's complaint — editors must confirm the correct information before using any response that makes factual claims.
- For legally sensitive correspondence (defamation allegations, threats of litigation), the draft should be reviewed by legal counsel before sending. This skill produces editorial responses, not legal communications.
- If the reader's message is abusive or contains personal attacks, Claude will produce a measured response but cannot assess whether engaging at all is appropriate in context — that judgement belongs to the editorial team.

## Related Skills
- [reader-comments-analyzer](reader-comments-analyzer.md)
- [audience-feedback-summariser](audience-feedback-summariser.md)
