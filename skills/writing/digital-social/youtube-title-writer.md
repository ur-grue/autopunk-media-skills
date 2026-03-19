---
name: youtube-title-writer
status: beta
category: writing
subcategory: digital-social
version: 1.0
eval_score: null
tags: [youtube, title, seo, click-through-rate, metadata, hook]
---

# YouTube Title Writer

## What This Skill Does
Generates 5 YouTube title options for a single video, each 60–70 characters long, front-loading the hook word or primary keyword so it is visible before the title is cut off in search results.

## When To Use This Skill
- Your video is ready and you need a title that balances search discoverability with viewer curiosity
- You have a working title that is too long, too vague, or too clever, and you need grounded alternatives
- You are A/B testing titles and want 5 meaningfully different angles on the same video concept
- A journalist or reporter is uploading a video-format piece and needs a title written for YouTube conventions rather than article headline conventions

## What You Need To Provide
**Required:** A one-paragraph description of what the video covers — what the viewer learns, sees, or experiences. Include the primary keyword or topic phrase you want the video to be found for.

**Optional:** Your working title if you have one, the tone of your channel (e.g. educational, investigative, entertaining, conversational), any title formats that have performed well for you before, and the target audience (e.g. beginner freelancers, documentary fans, small business owners).

## How Claude Approaches This
1. Identifies the primary keyword and the strongest hook — the moment, fact, outcome, or question that makes a viewer most likely to click.
2. Writes 5 title variations using different structural approaches: one leading with the keyword, one leading with the outcome ("How to…"), one leading with a number or list format ("3 Ways…"), one framed as a question, and one using a short declarative statement. Each approach targets a slightly different search intent or emotional trigger.
3. Checks every title against the 60–70 character limit, confirms the hook word or primary keyword appears in the first 30 characters, and removes any filler words that dilute clarity without adding curiosity.

## Output Format
A numbered list of 5 title options. Each option is followed by a one-line note explaining the structural choice and who it targets — this helps you pick without guessing. Titles are in title case. No quotes around the titles. The list is plain text, ready to paste into a notes app or YouTube Studio.

Character counts are shown in brackets after each title so you can verify at a glance.

## Quality Criteria
- [ ] Every title is between 55 and 70 characters (shorter is acceptable; longer risks truncation in search)
- [ ] The primary keyword or hook word appears within the first 30 characters of every title
- [ ] No title uses clickbait tactics that the video cannot honestly deliver (false urgency, impossible claims)
- [ ] Each of the 5 options uses a meaningfully different structural approach — they are not paraphrases of each other
- [ ] Titles read as natural spoken English — no keyword stuffing or awkward inversion

## Example

### Input
Video description: A 22-minute video for freelance writers and designers explaining how to negotiate contract terms. Covers the three most important clauses to read before signing, how to respond to a lowball rate offer, what kill fees and scope creep clauses should say, and ends with a word-for-word script for starting the negotiation conversation.
Primary keyword: freelance contract negotiation
Channel tone: Practical and direct. No hype or exaggeration.
Target audience: Mid-level freelancers who have had bad contract experiences.

### Output
1. **Freelance Contract Negotiation: What You Must Know** [53 chars]
   Keyword-first. Targets search intent directly. Best for viewers actively looking for this information.

2. **How to Negotiate a Freelance Contract Without Losing the Job** [63 chars]
   Outcome-led. Addresses the fear behind the search — freelancers who want to push back but are afraid to.

3. **3 Contract Clauses Every Freelancer Should Read First** [56 chars]
   Number-led. Specific and concrete; performs well with viewers who want a checklist, not a lecture.

4. **Are You Signing Freelance Contracts You Haven't Really Read?** [63 chars]
   Question format. Creates mild tension and self-recognition; good for social shares and returning subscribers.

5. **The Freelance Contract Conversation Most People Avoid** [56 chars]
   Declarative. Slightly curiosity-forward without being vague. Works well as a thumbnail pairing if the thumbnail shows a contract or handshake.

## Known Limitations
- Character counts assume standard alphanumeric characters. Emoji and certain non-Latin scripts count differently in YouTube's interface — avoid them in titles unless your audience specifically expects them.
- Click-through rate depends heavily on thumbnail design, not just the title. A strong title paired with a weak thumbnail will underperform. This skill only addresses the text half of that equation.
- YouTube's search algorithm uses many signals beyond title keywords. A well-written title improves discoverability but does not guarantee ranking for competitive terms.
- If your video covers a topic where accuracy matters (medical, legal, financial), avoid question-format titles that imply the video answers definitively what it only addresses in part.

## Related Skills
- [seo-title-optimizer](../../youtube/pre-production/seo-title-optimizer.md)
- [youtube-description-writer](./youtube-description-writer.md)
- [hook-generator](../../youtube/pre-production/hook-generator.md)
