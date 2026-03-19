---
name: publication-timing-advisor
status: beta
category: audience-distribution
subcategory: distribution
version: 1.0
eval_score: null
tags: [timing, publishing, audience, editorial-planning, distribution]
---

# Publication Timing Advisor

## What This Skill Does
Recommends the best day and time to publish a piece of content based on the content type, platform, and intended audience — without requiring access to live analytics data.

## When To Use This Skill
- You are scheduling a story, video, or episode and want to maximise the chance it reaches its audience at the right moment
- You are coordinating a multi-platform release and need to sequence publication across channels
- You are deciding between competing publication slots and want a structured rationale for the choice
- You are planning a content calendar and need timing logic built in from the start

## What You Need To Provide
**Required:**
- Content type (news article, feature, video, podcast episode, newsletter, social post, etc.)
- Platform or channel (website, YouTube, podcast app, Instagram, LinkedIn, newsletter, etc.)
- Intended audience (general public, professionals in a specific field, younger readers, regional audience, etc.)

**Optional:**
- Topic or subject area (some topics have strong day-of-week patterns — e.g., Monday briefings, Friday long-reads)
- Any news hook or time-sensitive element (a court verdict, a report release, an anniversary)
- Your existing publication schedule, so recommendations avoid clashing with your own content
- Timezone of your primary audience

## How Claude Approaches This
1. Identifies the content's relationship to time — is it news-driven (publish as fast as possible), evergreen (timing is flexible), or event-anchored (must align with an external date)?
2. Cross-references the content type and platform with known audience behaviour patterns for that format — for example, professional LinkedIn audiences are most active on weekday mornings; podcast listening peaks during commuting hours; newsletters sent on Tuesday outperform those sent on Friday for most general audiences
3. Produces a primary recommendation with a rationale, then one or two alternative windows if flexibility exists
4. Flags any timing risks — competing content cycles, low-traffic windows, or platform-specific factors that could suppress reach

## Output Format
A short advisory in three parts:
- **Primary recommendation:** Specific day and time window, with a one-paragraph rationale
- **Alternative window(s):** One or two backup slots with a brief note on the trade-offs
- **Timing risks to watch:** Any factors that could undermine the recommended slot

Total length: 200–350 words. Direct, practical language. No filler. Written so an editor or content manager can act on it without further research.

## Quality Criteria
- [ ] The primary recommendation specifies a day and a time window (not just "weekday mornings")
- [ ] The rationale connects the recommendation to the specific audience and content type provided, not just generic platform advice
- [ ] At least one alternative window is offered when the content is not strictly time-sensitive
- [ ] Timing risks are honest — they name real competitive or structural risks, not vague disclaimers
- [ ] Recommendations are based on content type, platform, and audience logic — not on live data the skill cannot access

## Example

### Input
Content type: Long-form feature article (2,800 words)
Platform: Publisher website + newsletter distribution
Intended audience: General readers, broadly educated, interested in culture, society, and current affairs
Topic: A reported feature on the revival of independent bookshops in small towns
Time-sensitive element: None — evergreen topic
Primary audience timezone: GMT (UK-based readership)

### Output
**Primary Recommendation: Thursday, 7:00–8:00 AM GMT**

Thursday morning is the strongest slot for long-form features aimed at general audiences in the UK. Readers engage with longer, slower reads at the start of the day before work demands take over, and Thursday carries a pre-weekend mental shift — readers are more likely to save or share something they intend to return to over the weekend. For newsletter distribution, send at the same time or within 30 minutes of web publication so the two channels reinforce each other rather than compete.

**Alternative Window: Saturday, 8:00–9:00 AM GMT**

For a genuinely evergreen feature with no news hook, Saturday morning is a strong second option. Leisure reading peaks at weekends and this topic — independent bookshops, small-town life — fits a Saturday mood well. The risk is lower total reach (weekend email open rates tend to be 10–20% lower than weekday mornings) but higher average time-on-page from readers who do engage.

**Timing Risks to Watch**
- Avoid publishing the same week as a major breaking news event in a related space (e.g., a high-profile bookshop closure or a publisher scandal) — the news cycle will suppress feature traffic
- If your newsletter goes out on a fixed day that is not Thursday, align web publication to your newsletter day rather than splitting the audience across two separate moments

## Known Limitations
- All recommendations are based on general audience behaviour patterns and platform conventions, not your specific publication's analytics. If you have historical data showing your audience behaves differently, trust your data over these defaults.
- This skill cannot account for real-time events — a major breaking news story on the morning of your scheduled publication will suppress feature traffic regardless of slot. Monitor the news cycle before publishing.
- Timing patterns differ by region, language, and audience demographics. Recommendations default to broadly anglophone, Western-timezone assumptions unless you specify otherwise.
- For social media platforms with algorithmic distribution (Instagram, TikTok, LinkedIn), timing is one factor among many. Content quality and engagement velocity in the first hour matter more than the precise minute of posting.

## Related Skills
- [platform-distribution-advisor](./platform-distribution-advisor.md)
- [content-calendar-planner](../../youtube/channel-strategy/content-calendar-planner.md)
- [cross-platform-repurposer](../../social-media/strategy/cross-platform-repurposer.md)
- [newsletter-teaser-writer](../../magazine-journalism/distribution/newsletter-teaser-writer.md)
