---
name: call-to-action-generator
status: stable
category: youtube
subcategory: scripting
version: 1.0
eval_score: 4.4
tags: [youtube, scripting, cta, subscribe, engagement]
---

# Call To Action Generator

## What This Skill Does
Writes multiple ready-to-record CTA script options for subscribe, like, comment, sponsor read, or channel promotion — matched to a channel's tone and placed at the right moment in a video.

## When To Use This Skill
- You are scripting a new video and need a CTA that doesn't sound like every other channel's CTA
- Your existing CTAs feel formulaic or you sense viewers are tuning them out
- You have a new sponsor integration and need a mid-roll read that sounds natural in your voice
- You want to test multiple CTA approaches across videos and need varied options quickly

## What You Need To Provide
**Required:** CTA type (subscribe, like, comment, sponsor read, channel membership, or end card); channel tone and register (casual/friendly, authoritative/educational, dry-humorous, etc.)
**Optional:** Video topic and context; specific action you want (e.g., "comment your answer" vs. generic engagement); sponsor product name and one-line description; any CTA language you want to avoid or retire; approximate position in the video (opening, mid-roll, end)

## How Claude Approaches This
1. Identifies the psychological mechanism that makes the CTA type work — subscribe CTAs need to communicate ongoing value, comment CTAs need a genuine question, sponsor reads need to earn trust before selling
2. Generates 4–6 variations that each use a different engagement trigger: value-promise, curiosity, community, humor, urgency, or direct ask
3. Calibrates the language register to the specified channel tone — a dry-humor tech channel and an earnest educational channel need entirely different CTA voices
4. Flags which option works best at which video position and why (opening hooks require shorter CTAs; mid-rolls have more room for sponsor narrative; end cards can afford sentimentality)

## Output Format
A numbered list of 4–6 complete, word-for-word script options. Each option is labeled with the engagement trigger it uses and a one-line note on ideal placement. Sponsor reads are formatted as a clearly marked block. Total length: 300–500 words. Written to be spoken aloud — contractions and natural cadence required.

## Quality Criteria
- [ ] Every CTA option is written in full — no "insert your reason here" placeholders
- [ ] Each option uses a distinct engagement trigger — not just tonal variations of the same request
- [ ] Comment CTAs include a specific, answerable question — not "let me know what you think"
- [ ] Sponsor reads include a natural transition in and out of the ad segment
- [ ] All options read naturally when spoken aloud at normal conversation pace
- [ ] Channel tone is consistent across all options for that request

## Example

### Input
CTA type: Mixed — subscribe CTA + comment engagement CTA + sponsor read
Channel tone: Conversational, slightly dry, no begging
Video topic: Productivity — the video just explained a method for batching creative work
Sponsor: Notion (workspace/productivity app) — "helps teams and individuals organize everything in one place"
Comment CTA should tie back to the batching topic
Position: End of video

### Output

**Subscribe CTAs**

1. **The Value-Promise** *(best for end of video)*
"If that method made sense to you, the rest of this channel is more of the same — practical systems, no fluff. Subscribe if that's what you're here for."

2. **The Direct Ask** *(best for mid-video, brief)*
"Subscribe button's right there — I put out one of these every week."

3. **The Community Frame** *(best for end card)*
"There's a whole library of these productivity deep-dives on this channel. Subscribe so you don't have to go looking for the next one."

---

**Comment CTAs**

4. **The Specific Question** *(ties to batching topic)*
"Here's a question for the comments: what's one task in your work that you've never tried batching — and do you think it could work? I read every answer."

5. **The Lightweight Engagement** *(if you want volume over depth)*
"Drop a number in the comments — how many hours a week do you think you lose to task-switching? Curious where people land."

---

**Sponsor Read**

6. **The Soft Integration** *(mid-roll, after a natural content pause)*
"Before I get into the next part, quick word about Notion — this is actually what I use to organize the batching system I just walked you through. If you're running projects, research, or just your own life and it feels scattered, Notion puts it all in one place. Link in the description, and there's a free plan worth starting with."

---

*Notes: CTA #1 and #4 work best together at the end of this video. CTA #6 lands most naturally after the first major concept reveal — not at the start or end. Avoid stacking more than two CTAs consecutively; choose one subscribe + one comment for the end sequence.*

## Known Limitations
- Sponsor reads require accurate product information — Claude will write to what you provide; if the product description is vague, the read will be generic
- CTAs written in a dry or minimal style may not drive the same raw subscribe numbers as more emphatic approaches; tone-matching trades peak volume for authenticity
- Comment CTAs with specific questions work best when the creator plans to actually respond; if engagement is not monitored, the "I read every answer" line will erode trust over time
- Platform conventions change; what feels fresh today may feel dated in 12 months — revisit and regenerate CTAs periodically

## Related Skills
- [full-script-writer](full-script-writer.md)
- [hook-generator](../pre-production/hook-generator.md)
- [description-seo-writer](../post-production/description-seo-writer.md)
