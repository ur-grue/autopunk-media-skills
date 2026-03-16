---
name: holding-statement-writer
status: stable
category: pr-communications
subcategory: crisis-comms
version: 1.0
eval_score: 4.5
tags: [pr, crisis, holding-statement, crisis-comms, breaking]
---

# Holding Statement Writer

## What This Skill Does
Writes a brief holding statement for an organisation that is under media pressure but does not yet have all the facts — buying time without going silent and without making premature commitments.

## When To Use This Skill
- A story is breaking and media are calling, but the internal investigation is not yet complete
- You need to say something on record before the "organisation declined to comment" line appears in the article
- Legal, executive, or regulatory constraints prevent you from making a full statement right now
- You have a holding statement from a previous incident that is no longer appropriate and needs a new one written fast

## What You Need To Provide
**Required:** What the media is asking about (the allegation, incident, or story); the organisation's name; what you are and are not able to confirm right now; approximately when a full statement will be available (even a rough time — "by end of day" is better than nothing).

**Optional:** A specific spokesperson name; the channel (responding to press directly, posting to website, issuing to wire); any facts that are confirmed and safe to include; any specific phrases or framings that legal has approved or prohibited.

## How Claude Approaches This
1. Writes a statement that is short enough to deliver in one breath but substantive enough that journalists cannot report it as a non-answer.
2. Acknowledges the subject of the inquiry directly — does not pretend the question has not been asked.
3. States clearly and without elaborate explanation that the organisation is in the process of gathering information.
4. Gives a specific or approximate timeframe for when more information will follow.
5. Closes with a single concrete commitment — an update time, a point of contact, or both.

## Output Format
50–120 words. One to three short paragraphs, or one single paragraph. Written in first person plural ("We") for the organisation. Present tense. Tone: calm, composed, not defensive, not evasive. No waffle, no "we take this very seriously" without substance behind it. No marketing language. Suitable for reading aloud to a journalist on the phone, posting to a website, or issuing to wire.

## Quality Criteria
- [ ] Statement directly acknowledges the subject of media inquiry (no topic-avoidance)
- [ ] States clearly that information is still being gathered, and why (investigation in progress / awaiting confirmation / etc.)
- [ ] Includes a specific timeframe or commitment to update
- [ ] Does not speculate, assign blame, or make premature commitments
- [ ] Does not end with brand messaging or platitudes
- [ ] Under 120 words

## Example

### Input
Media inquiry: Journalists are asking about reports that a senior employee at Waverly & Partners consultancy firm was dismissed following allegations of financial misconduct. The firm's legal team has confirmed a dismissal occurred but has not yet determined what can be disclosed. A full statement is expected by 5 p.m. today.

Organisation: Waverly & Partners (management consultancy)
Confirmed: A member of staff is no longer employed by the firm
Not confirmed: The reason for departure, whether a formal investigation is ongoing
Approximate timeline for full statement: 5 p.m. today

### Output
**Statement from Waverly & Partners**

We are aware of inquiries regarding a change in staffing. We can confirm that a member of staff is no longer employed by the firm. We are not in a position to provide further detail at this time.

We expect to be able to make a fuller statement by 5:00 p.m. today. Media inquiries in the meantime should be directed to our communications team at press@waverlypartners.example.com.

## Known Limitations
- A holding statement is not a substitute for a full response — it is a bridge. If the full statement does not follow within the committed timeframe, the holding statement creates new credibility problems rather than solving them.
- Claude cannot advise on whether a statement crosses legal lines — any holding statement for an incident involving litigation, regulatory action, or criminal proceedings must be reviewed by legal counsel.
- If the organisation genuinely has nothing to confirm, Claude will say so clearly; it will not fabricate confirmed facts to make the statement appear more substantial.

## Related Skills
- [crisis-statement-writer](./crisis-statement-writer.md)
- [faq-document-writer](./faq-document-writer.md)
- [spokesperson-briefing-note](../media-relations/spokesperson-briefing-note.md)
