---
name: source-followup-email-writer
status: beta
category: writing
subcategory: institutional
version: 1.0
eval_score: null
tags: [journalism, source-management, email, outreach, interview-request]
---

# Source Follow-Up Email Writer

## What This Skill Does
Writes a professional, strategically crafted follow-up email to a source or interview subject who has not responded to an initial outreach, calibrated to the relationship, the urgency, and how many times you have already followed up.

## When To Use This Skill
- A source or potential interview subject has not replied to your first approach after several days
- You are preparing a second or third follow-up and want to avoid sounding impatient, aggressive, or sycophantic
- You need to re-approach a source who declined or went cold months ago on a different story
- A source agreed in principle to speak but has since stopped responding to scheduling attempts
- Your deadline is approaching and you need to make a final, direct request before publishing without their input

## What You Need To Provide
**Required:**
- Who you are contacting (role/title only — no real names needed)
- The story or project you are reporting on (a one-line description)
- What you need from them (an interview, a comment, a document, a confirmation)
- How many times you have already contacted them (first follow-up, second follow-up, final pre-publication notice)
- Your publication or outlet type (newspaper, broadcaster, podcast, documentary)

**Optional:**
- Your deadline (exact date, or approximate window)
- Why this source specifically matters — what angle or expertise only they can provide
- Any previous response they gave (declined, no reply, said "maybe later", asked to postpone)
- Whether you will publish a "did not respond" note if they decline — state this only on final follow-up
- Tone preference: neutral/professional, warm (existing relationship), or firm (final notice)

## How Claude Approaches This
1. Reads the follow-up number and adjusts tone accordingly: first follow-up is light and assumes a busy inbox; second follow-up is slightly more direct and re-states the specific value of their perspective; final pre-publication notice is brief, firm, and factual
2. Leads with the most compelling reason for the source to engage — editorial relevance, their unique expertise, or a time-sensitive opportunity to contribute to the public record — not with an apology for following up
3. Makes the ask specific and easy to act on: a clear time commitment, a simple yes/no, or a concrete next step
4. Keeps the email short — most follow-ups should be under 150 words; a final notice can be even shorter
5. Avoids pressure language that could damage the relationship or read as threatening; maintains professional respect throughout

## Output Format
- Length: 80–180 words for most follow-ups; final pre-publication notice can be as short as 60 words
- Structure: one-line opener that re-establishes context → the specific ask → deadline or time frame if relevant → a single easy call to action → professional sign-off
- Tone: confident and direct without being pushy; warm if there is an existing relationship
- Format: plain email body text, ready to send — no markup, no bullet points
- Subject line included, clearly marked

## Quality Criteria
- [ ] Tone is calibrated to the follow-up number (lighter for first, firmer for final)
- [ ] The specific ask is stated in one sentence, not buried in context
- [ ] Deadline is stated explicitly if provided
- [ ] The email does not begin with an apology ("Sorry to bother you again")
- [ ] A final pre-publication notice clearly signals that the story is moving forward with or without their input, without sounding threatening
- [ ] Email is short enough to read in under 30 seconds

## Example

### Input
Contacting: Head of communications at a national infrastructure agency
Story: Documentary investigating the government's delayed rollout of flood defence upgrades in low-income areas
What I need: An on-camera interview, or at minimum a written statement
Follow-up number: Second follow-up (they have not replied to two previous emails)
Outlet: Broadcast documentary, national channel
Deadline: Filming wraps in three weeks
Previous response: No reply at all to either email
Tone: Professional, not warm — no existing relationship

### Output
**Subject: Re: Interview Request — Flood Defence Documentary [Deadline: [Date]**

Dear [Name],

I'm following up on my previous emails regarding the documentary we are producing on the national flood defence programme for [Channel Name].

We are filming for three more weeks and would very much welcome the opportunity to include the agency's perspective on the current rollout timeline, particularly in relation to communities in lower-income catchment areas. Without an official voice, the film will necessarily reflect only the accounts of affected residents and independent engineers.

Could you let me know by [specific date] whether an interview or written statement is possible? I am happy to work around your schedule and can provide questions in advance.

I look forward to hearing from you.

[Your name]
[Title]
[Publication/Production company]
[Contact number]

---

**If this is a final pre-publication notice (third follow-up), use this version instead:**

**Subject: Final Request for Comment — Flood Defence Documentary**

Dear [Name],

We have reached out three times regarding our documentary on the national flood defence programme. As we are now in final production, this is our last opportunity to include the agency's response before broadcast.

If we do not hear from you by [date], we will note in the film that the agency was contacted and did not respond.

Please reply to this email or call me directly on [number].

[Your name]

## Known Limitations
- Follow-up emails to sources in legally sensitive situations (e.g. subjects under investigation, active litigation) should be reviewed by a lawyer or senior editor before sending — Claude drafts professional language but cannot assess legal exposure
- If the source has explicitly declined, Claude can draft a respectful re-approach after a suitable interval, but cannot guarantee a different outcome
- Cultural tone calibration for international sources (e.g. very formal correspondence conventions in some countries) may need manual adjustment

## Related Skills
- [source-pitch-email-writer](./source-pitch-email-writer.md)
- [post-interview-thankyou-writer](./post-interview-thankyou-writer.md)
- [press-release-writer](./press-release-writer.md)
- [media-advisory-writer](./media-advisory-writer.md)
