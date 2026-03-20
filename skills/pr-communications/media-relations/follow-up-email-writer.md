---
name: follow-up-email-writer
status: stable
category: pr-communications
subcategory: media-relations
version: 1.0
eval_score: 4.44
tags: [pr, email, follow-up, media-relations, outreach, journalist]
---

# Follow-Up Email Writer

## What This Skill Does
Writes a professional follow-up email to a journalist, editor, or media contact who has not responded to a previous pitch or request, calibrated to the relationship stage, urgency, and number of prior attempts.

## When To Use This Skill
- You sent a pitch or press release and have not heard back after a reasonable interval
- You need to re-engage a journalist before an embargo lifts or a deadline passes
- You want to follow up without damaging a relationship by seeming pushy or tone-deaf
- You have a genuine new angle or piece of information to add to the original pitch

## What You Need To Provide
**Required:**
- A brief summary of the original pitch or request (what you sent and when)
- The recipient's name and outlet (so tone and formality can be calibrated)
- How many times you have already followed up (first follow-up, second, etc.)

**Optional:**
- Any new information, angle, or hook that has emerged since the original pitch
- The urgency level: routine, time-sensitive (event or embargo), or deadline-critical
- Your relationship history with this contact (cold, met once, established source)
- Preferred sign-off name and title

## How Claude Approaches This
1. **Assesses the follow-up stage.** A first follow-up is warmer and more generous than a second or third. Claude adjusts assertiveness, length, and tone accordingly — first follow-ups assume good faith and a busy inbox; later follow-ups are shorter, more direct, and offer an easy out.

2. **Leads with value, not with a reminder.** The email never opens with "just checking in" or "circling back." Instead, it leads with a new detail, a timely hook, or a reframing of why the story matters now — giving the journalist a reason to engage rather than a guilt trip.

3. **Keeps the email short and scannable.** Follow-ups are under 120 words. The core ask is visible without scrolling. No attachments are referenced unless the original pitch included one; if so, the key detail is pulled into the body so the journalist does not need to open a file.

4. **Calibrates formality to the relationship.** Cold contacts get a professional, concise tone. Established contacts get a warmer, more conversational register. The email never assumes familiarity that does not exist.

5. **Closes with a single, clear ask.** Every follow-up ends with one specific action the recipient can take — reply with interest, suggest a better time, or decline. No compound requests.

## Output Format
A ready-to-send email: subject line, body text, and sign-off. Total body length: 60–120 words. Tone: professional, respectful, never passive-aggressive. No bullet-point lists in the body — this reads like a real email from a real person. If a new hook is provided, it appears in the first sentence. Subject line is a reply-style "Re:" continuation of the original subject or a fresh line if the original subject is not provided.

## Quality Criteria
- [ ] Email is under 120 words in the body
- [ ] No "just checking in," "circling back," "touching base," or similar dead phrases
- [ ] Opens with value — a new angle, a timely hook, or a specific reason to respond now
- [ ] Tone matches the stated relationship stage (cold, warm, established)
- [ ] Contains exactly one clear call to action
- [ ] Does not guilt-trip, apologise excessively, or sound desperate
- [ ] Subject line is specific and functional, not clickbait
- [ ] Assertiveness scales appropriately with the follow-up number (first = generous, third = direct and brief)

## Example

### Input
**Original pitch:** Sent a press release on March 10 about the launch of a new regional investigative journalism fund — a coalition of six independent newsrooms pooling resources to fund long-form investigations. Pitched exclusively to a senior media correspondent at a national broadsheet.

**Recipient:** Elena Marsh, Media Correspondent, The National Record

**Follow-up number:** First

**New information:** Since the original pitch, the fund has announced its first commissioned investigation — a six-month project into water quality failures across three rural counties.

**Urgency:** Time-sensitive — the fund's public launch event is April 2.

**Relationship:** Met once at a press conference; exchanged cards.

### Output

**Subject:** Re: Regional Investigative Fund — First Commission Announced

Hi Elena,

Quick update on the investigative journalism fund I sent over on March 10 — the coalition has just commissioned its first project: a six-month investigation into water quality failures across three rural counties, funded jointly by all six member newsrooms.

The public launch is April 2. I can arrange an advance briefing with the fund's director or any of the editors involved if that would be useful for a piece ahead of the event.

Would that work for your schedule?

Best,
Sarah Clement
Communications Director, Regional Press Alliance
sarah@regionalpressalliance.example.com

## Known Limitations
- Claude cannot know whether the journalist has already seen and deliberately ignored your pitch. If the contact has a pattern of non-response, the follow-up may still go unanswered regardless of quality.
- The skill works best when you can provide a new hook or angle. Without one, the follow-up is structurally weaker — it becomes a polite reminder rather than a compelling re-pitch.
- Tone calibration relies on your description of the relationship. If you overstate familiarity, the email may read as presumptuous to the recipient.

## Related Skills
- [journalist-pitch-email](./journalist-pitch-email.md) — write the original pitch this email follows up on
- [thank-you-email-writer](./thank-you-email-writer.md) — follow a successful pitch with a professional thank-you
- [spokesperson-briefing-note](./spokesperson-briefing-note.md) — prepare for the interview once the journalist responds
