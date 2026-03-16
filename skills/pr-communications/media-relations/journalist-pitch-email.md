---
name: journalist-pitch-email
status: stable
category: pr-communications
subcategory: media-relations
version: 1.0
eval_score: 4.6
tags: [pr, media-relations, pitch, journalist, outreach]
---

# Journalist Pitch Email

## What This Skill Does
Writes a targeted pitch email to a specific journalist offering an exclusive, interview, or story angle, matched to their known beat and written in the brief, direct register that working journalists respond to.

## When To Use This Skill
- You want to secure media coverage but have not issued a general press release — you are pitching selectively
- You have a story that suits a specific journalist's beat and want to personalise the approach rather than mass-distribute
- You want to offer an exclusive interview, an embargoed briefing, or first-look access to something
- A press release has been issued but not picked up, and you want to follow up personally with a stronger angle

## What You Need To Provide
**Required:** What you are pitching (story angle, interview, exclusive, data, event access); why it is newsworthy today (the hook — why now and why does it matter); the journalist's name, publication, and beat or a recent story they wrote; who the interview subject or spokesperson would be; your name and contact details.

**Optional:** Suggested headline angle; embargo date if applicable; supporting data or statistics; a link to a background briefing or press release; whether you are pitching this exclusively or to multiple journalists; a specific deadline or publication window you are working to.

## How Claude Approaches This
1. Opens with the news hook in the first sentence — no "I hope this email finds you well" or any preamble. Journalists receive hundreds of pitches a day; the story value must be immediately visible.
2. Connects the pitch explicitly to the journalist's beat or a recent piece they wrote, showing the email is not a mass send.
3. States the offer clearly: what access is available, who they would speak to, and what they would get that is not available to competitors.
4. Keeps the email under 200 words — enough to sell the story, not enough to report it. The journalist should have to reply to learn more.
5. Closes with a direct, low-friction ask: one question, one action. Not "please let me know if you would like to learn more about this opportunity."

## Output Format
Under 200 words. Email format with subject line, salutation, body, and sign-off. Subject line front-loads the story, not the organisation. Body in three short paragraphs: hook, offer, ask. First-person singular from the pitch sender's perspective. Tone: professional, confident, peer-to-peer — not deferential. No bold or bullet points. Plain text optimised for scanning on mobile.

## Quality Criteria
- [ ] Subject line contains the story angle, not just the organisation name
- [ ] First sentence is the news hook, with no preamble
- [ ] Journalist's beat or a specific recent article is referenced
- [ ] What is being offered (exclusive, interview, data, access) is explicitly stated
- [ ] Email is under 200 words
- [ ] Closing ask is one specific question or action, not open-ended
- [ ] No marketing language ("revolutionary," "game-changing," "exciting opportunity")

## Example

### Input
Story: A study conducted by Roscoe University's urban planning department finds that cities with 20-minute neighbourhood policies (where residents can meet all daily needs within a 20-minute walk or cycle) have 31% lower rates of car dependency and 18% lower rates of reported loneliness within five years of implementation. The research covered 14 cities across six countries.

Journalist: Fiona Mather, The Metropolitan Gazette, covers urban planning, housing policy, and city design. Recent story: "Why the 15-minute city is losing the argument" (published 2 weeks ago).

Offer: Exclusive interview with the study's lead researcher before the journal publication.

Sender: Sam Adeyemi, Communications, Roscoe University

### Output
**Subject:** Exclusive: Study of 14 cities finds 20-minute neighbourhoods cut car dependency 31% — before journal publication

Hi Fiona,

I read your piece on why the 15-minute city is losing the argument. The Roscoe University urban planning team may have something that changes that conversation.

Their study of 14 cities across six countries finds that 20-minute neighbourhood policies reduce car dependency by 31% and reported loneliness by 18% within five years of implementation — the first multi-country comparison at this scale. The paper publishes next Thursday, but lead researcher Dr. Yusuf Okonkwo is available for an exclusive interview before then.

Would you like to speak with him this week? I can have him on a call with you by Wednesday.

Sam Adeyemi
Communications, Roscoe University
sam.adeyemi@roscoe.example.edu | +44 7xxx xxxxxx

## Known Limitations
- Claude does not have access to a journalist's actual published work, social media presence, or real editorial interests — the connection to the journalist's beat must be provided accurately in the input, or the personalisation will be generic and unconvincing.
- A pitch email is only as strong as the story it is pitching. If the news value is weak, Claude will write the strongest possible pitch for what exists — it will not invent news value that is not there.
- For sensitive or embargoed pitches (involving company data, legal proceedings, or unpublished research), security of the email channel is the sender's responsibility — Claude cannot assess the risk of the communication method.

## Related Skills
- [press-release-writer](../press-office/press-release-writer.md)
- [spokesperson-briefing-note](./spokesperson-briefing-note.md)
- [media-alert-writer](../press-office/media-alert-writer.md)
