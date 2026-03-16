---
name: re-engagement-email-writer
status: stable
category: newsletter
subcategory: writing
version: 1.0
eval_score: 4.4
tags: [newsletter, writing, re-engagement, churn, retention, inactive-subscribers]
---

# Re-Engagement Email Writer

## What This Skill Does
Writes a targeted re-engagement email (or short sequence of two emails) for subscribers who have stopped opening the newsletter, designed to recover attention or prompt a clean unsubscribe before list hygiene becomes a deliverability problem.

## When To Use This Skill
- Your email platform flags a segment of subscribers as "inactive" (typically: no opens in 60–90 days) and you need to either win them back or let them go cleanly
- Your open rates have been declining and you want to send a re-engagement campaign before a full list clean
- You are about to purge inactive subscribers and want to send a final chance email first
- You have significantly changed the newsletter's direction or improved its quality since some subscribers originally joined, and want to reintroduce yourself

## What You Need To Provide
**Required:** Newsletter name and a brief description of what it covers; typical inactivity threshold you are targeting (e.g. "no opens in 90 days"); the newsletter's current voice and tone
**Optional:** Any recent improvements or changes to the newsletter worth highlighting to lapsed subscribers; the consequences if they do not re-engage (will you remove them from the list?); a reason to stay (offer, exclusive content, or best recent edition); whether you want a single email or a two-email sequence

## How Claude Approaches This
1. Opens with direct acknowledgment of the gap — not guilt, not passive aggression, but honest recognition that the subscriber has not been opening and that is a normal thing to happen; this disarms defensiveness
2. Gives the reader a specific reason to re-engage, not a generic "we miss you" — either a concrete recent piece they missed that is worth their time, a change in the newsletter worth knowing about, or a honest pitch for what they originally signed up for
3. Makes the ask clear and low-friction: a single button or link, either to confirm they want to stay or to read a specific piece; the goal is one click, not a journey
4. If a two-email sequence: the second email arrives 5–7 days later with a final, shorter message that acknowledges this is the last chance and removes the pressure by making unsubscribing feel like a valid and easy choice (this often triggers re-engagement paradoxically)

## Output Format
Single email: 150–250 words. No subject line psychology tricks — subject lines for re-engagement emails should be plainspoken and slightly self-aware (e.g. "Still there?" or "Honest question"). Two-email sequence: Email 1 at 200–250 words, Email 2 at 100–150 words. Subject line included above each email. Both emails include a clearly labelled CTA: either a "Keep me subscribed" confirmation link placeholder or a direct link to a specific piece of content.

## Quality Criteria
- [ ] The email does not open with "We miss you!" or any variation — this is the single most common re-engagement cliche and the least effective
- [ ] There is a genuine reason offered for re-engagement — a specific piece, a specific change — not just a general appeal
- [ ] The unsubscribe option is acknowledged and framed without passive aggression ("no hard feelings" is acceptable; "we'll understand if you don't want great content" is not)
- [ ] The CTA is single and clear — not "click here to stay subscribed OR visit our archive OR follow us on social"
- [ ] The tone matches the newsletter's stated voice — a dry analytical newsletter does not get an emotional win-back appeal

## Example

### Input
Newsletter: *The Friction Report*
Description: Data-driven newsletter for product managers and UX professionals. Analysis of UX research, product decisions, and design failures.
Inactive threshold: No opens in 90 days
Voice: Sharp, a little sardonic, evidence-based
Recent standout edition: An analysis of why adding a progress bar to subscription box checkouts increased abandonment by 14% — contradicted 10 years of conventional UX advice
Sequence: Two emails
Consequence of no response: Will be removed from list after Email 2

### Output

---

**Email 1**

**Subject:** You haven't opened this in 90 days

That's not an accusation. It's just a fact, and you probably have a reason.

*The Friction Report* goes out weekly with one thing: analysis of UX research that challenges what the industry thinks it knows. No opinion columns, no trend summaries — just the data and what it actually means.

In case you've been away: the most-read edition this year looked at why progress bars *increase* abandonment in subscription checkout flows. Fourteen percent. It ran counter to a decade of advice and a lot of people have been quietly redesigning things since.

If that sounds like something you'd read, you're still on the right list.

[Keep me subscribed →]

If not, no issue — the unsubscribe link is below and it works instantly.

— *The Friction Report*

---

**Email 2** *(send 6 days after Email 1 if no open/click)*

**Subject:** Last one, then I'll leave you alone

This is the last email I'll send before removing you from the list.

If you want to stay subscribed, click below — no forms, no questions.

[Keep me subscribed →]

If you'd rather go, the unsubscribe link below does it immediately. Either way, thanks for being here as long as you were.

— *The Friction Report*

## Known Limitations
- Re-engagement email performance depends heavily on list segmentation quality — if your email platform's "inactive" definition differs significantly from actual disengagement (e.g. some clients block open tracking by default), you may be targeting people who are reading but not being counted
- The skill works best when you have a genuinely strong recent edition to reference; if the newsletter has been inconsistent or lower quality during the inactive period, a re-engagement campaign may expose that rather than overcome it
- Two-email sequences are most effective when spaced 5–7 days apart; this skill writes the copy but does not configure sending schedules — that requires your email platform
- "Permission reminders" (explaining where the subscriber originally signed up) can be effective for very old inactive segments (12+ months) but require you to have that data available to provide

## Related Skills
- [welcome-email-writer](./welcome-email-writer.md)
- [subject-line-writer](./subject-line-writer.md)
- [paid-tier-pitch-writer](../monetization/paid-tier-pitch-writer.md)
