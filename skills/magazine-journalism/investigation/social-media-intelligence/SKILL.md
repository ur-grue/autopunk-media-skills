---
name: social-media-intelligence
description: "Produces a structured open-source intelligence brief on a social media account or set of accounts, covering account authenticity analysis, narrative tracking, and coordination-detection patterns to support investigative reporting."
status: stable
category: magazine-journalism
subcategory: investigation
version: 1.0
eval_score: 4.57
tags: [journalism, OSINT, social-media, investigation, coordination-detection, narrative-tracking]
---
# Social media intelligence

## What this skill does
Produces a structured open-source intelligence brief on a social media account or set of accounts, covering account authenticity analysis, narrative tracking, and coordination-detection patterns to support investigative reporting.

## When to use this skill
- You are investigating whether a social media account is authentic, operated by who it claims to be, or part of a coordinated network
- A story depends on social media posts as evidence and you need to assess their reliability before publication
- You are tracking how a narrative or claim spread across platforms and want to identify the origin point, amplifiers, and any coordinated behaviour
- You need to document social media findings in a format suitable for editorial review or legal proceedings

## What you need to provide
**Required:** The account(s) to analyze (platform, handle or URL, and the context of why this account matters to the investigation); the specific question you are trying to answer (authenticity, origin of a claim, coordination, influence)
**Optional:** A timeframe to focus on; related accounts you suspect are connected; the narrative or claim you are tracking; screenshots or archived versions of key posts

## How the Assistant Approaches This
1. **Account profile analysis.** Examines the account's observable characteristics: creation date relative to activity patterns, username format and history, profile photo (reverse-image searchable), bio claims, follower-to-following ratio, posting frequency and hours of activity. Flags indicators of inauthenticity — new accounts with sudden high output, generic stock profile photos, bios that mimic real organisations without exact matches, follower counts inconsistent with engagement levels.

2. **Content pattern analysis.** Reviews the account's posting behaviour: dominant topics, language consistency, hashtag usage, link-sharing patterns, reply behaviour. Identifies whether the account produces original content, amplifies others, or mainly reacts. Notes shifts in topic focus, language, or posting cadence that may indicate a change of operator or purpose.

3. **Narrative tracking.** If the investigation concerns a specific claim or narrative: maps when the claim first appeared on the account, what the earliest version said, how the framing evolved, and what other accounts picked it up. Constructs a timeline showing the claim's spread path across platforms. Identifies whether the account was an originator, early amplifier, or late adopter.

4. **Coordination-detection patterns.** Looks for signs that multiple accounts are operating in concert: near-simultaneous posting of identical or near-identical content, shared unusual hashtags, mutual amplification clusters, similar account creation dates, overlapping follower networks, and identical link-shortener patterns. Notes the difference between organic communities (people who agree and share similar content independently) and coordinated networks (accounts acting in lockstep with operational signatures).

5. **Attribution boundaries.** States clearly what can and cannot be determined from open-source social media analysis alone. Names the specific attribution gap: for instance, "these accounts behave as a coordinated cluster, but open-source analysis cannot determine who operates them or whether the coordination is commercial, political, or state-sponsored."

6. **Evidence preservation guidance.** Recommends which posts, profiles, and network connections to archive immediately (using Wayback Machine, Archive.today, or screenshot-with-timestamp tools) in case accounts are deleted or content is edited. Notes anything that has already been deleted during the investigation window.

## Output format
Structured intelligence brief, 500–1000 words. Sections: Account overview (profile data, creation date, key metrics), Content patterns (topics, behaviour, anomalies), Narrative spread (if applicable — timeline with dates), Coordination indicators (evidence for or against coordinated behaviour), Attribution boundaries (what cannot be determined), Evidence preservation (what to archive now). Direct, factual register. No characterisations beyond what the evidence supports.

## Quality criteria
- [ ] Account overview includes concrete, verifiable data points — not vague characterisations
- [ ] Content pattern analysis identifies at least one specific, non-obvious pattern in the account's behaviour
- [ ] Coordination-detection section distinguishes clearly between organic agreement and operational coordination
- [ ] Attribution boundaries are stated honestly — the brief does not overreach into claims the evidence cannot support
- [ ] Evidence preservation section names specific tools and specific content to archive
- [ ] Narrative timeline (if applicable) includes dates and platform names, not vague references to "early" or "later"
- [ ] Output is free of generic AI-template phrasing — no "delve into," "navigate the complexities of," Latinate filler verbs, restate-the-question intros, summary-of-the-summary closes, or em-dash overuse

## Example

### Input
Platform: X (Twitter). Account: @CleanWaterNow_EU. Context: This account has been posting aggressively against a proposed EU water-quality directive. A press officer at the European Commission flagged it to our bureau, saying they suspect it is not a genuine grassroots environmental group. Question: Is this account authentic, and is it part of a coordinated campaign? Timeframe: last 90 days.

### Output

**Social media intelligence brief — @CleanWaterNow_EU**

---

**Account overview**

- **Platform:** X (Twitter)
- **Handle:** @CleanWaterNow_EU
- **Account created:** 11 weeks ago (within the 90-day investigation window)
- **Profile photo:** A stock image of a river landscape. Reverse-image search (TinEye, Google Images) returns the same image on multiple stock photography sites. Not a unique or organisational photo.
- **Bio:** "Citizens for clean water. Holding Brussels accountable. #WaterRights #EUPolicy." No link to a website, registration number, or named individual.
- **Followers:** 4,200. Following: 87. This ratio is atypical for an 11-week-old account with no website and no verified affiliation.
- **Posting frequency:** 8–14 posts per day, concentrated between 09:00 and 17:00 CET on weekdays. Minimal weekend activity. This pattern is consistent with a managed account on a work schedule, not a volunteer-run advocacy group.

**Content patterns**

The account posts exclusively about the proposed EU Directive 2025/XX on drinking-water quality standards. No other environmental topic appears in 90 days of posts. This single-issue focus, combined with the account's creation date coinciding with the directive's committee-stage announcement, suggests the account was created specifically to oppose this directive.

Language is polished and consistent. Posts use regulatory terminology accurately ("impact assessment," "proportionality test," "delegated acts") — unusual for a grassroots account, typical for a public-affairs professional or communications firm. No spelling errors, no casual tone, no personal anecdotes. Every post includes at least one hashtag from a fixed set: #WaterRights, #EUPolicy, #NoToDirectiveXX, #ProtectOurWater.

The account does not reply to comments or engage in conversation. It posts, retweets selected accounts, and does not interact. Engagement under its posts (likes, replies) is low relative to follower count — averaging 12 likes and 2 replies per post for 4,200 followers.

**Coordination indicators**

Three other accounts exhibit similar patterns within the same timeframe:

| Account | Created | Followers | Daily posts | Overlap |
|---------|---------|-----------|-------------|---------|
| @WaterVoice_DE | 10 weeks ago | 2,800 | 6–10 | Same hashtag set, shares same links |
| @AquaCitizensNL | 9 weeks ago | 1,900 | 5–8 | Identical post text on 14 occasions |
| @DrinkSafe_PL | 10 weeks ago | 2,100 | 7–11 | Same stock-photo provider for profile image |

All four accounts were created within a two-week window. All use the same five hashtags. On 14 occasions in the past 60 days, @CleanWaterNow_EU and @AquaCitizensNL posted identical text within 30 minutes of each other. @WaterVoice_DE shares every link that @CleanWaterNow_EU posts, usually within one hour. All four accounts link to the same two PDF documents hosted on an anonymous file-sharing service — not on any organisational website.

This is not organic agreement. The creation timing, identical content, shared hashtag vocabulary, and mutual amplification pattern are consistent with a coordinated campaign operated by a single entity or a small team using multiple accounts.

**Attribution boundaries**

Open-source analysis can establish that these accounts behave as a coordinated cluster. It cannot determine:

- Who operates them (an industry lobby, a PR firm, an individual, or a government)
- Whether they are paid or volunteer
- Whether the campaign is domestic or foreign in origin

The anonymous PDF hosting and absence of any organisational website or registration are deliberate opacity. Further attribution would require platform data (IP logs, registration email addresses) available only to X and law-enforcement authorities, or investigative reporting on the PDF documents' authorship metadata.

**Evidence preservation**

Archive immediately:
- All four account profile pages (use Archive.today — Wayback Machine's X crawler is unreliable for profile snapshots)
- The 14 instances of identical post text between @CleanWaterNow_EU and @AquaCitizensNL (screenshot with timestamps, or use Thread Reader App for thread capture)
- The two PDF documents hosted on the anonymous file-sharing service (download copies; these can be deleted at any time)
- Current follower lists for all four accounts (use a CSV export tool; follower lists change and are not archived by standard web-archive services)

Two posts from @DrinkSafe_PL that were visible last week are no longer accessible — they may have been deleted. If screenshots were not taken, those posts are lost.

## Known limitations
- The assistant cannot access live social media platforms, run reverse-image searches, or retrieve account metadata. This skill structures the analysis and tells the reporter what to look for and where — the reporter gathers the data.
- Follower counts, engagement ratios, and posting patterns can be gamed in both directions. High followers with low engagement may indicate purchased followers, but some authentic accounts also show this pattern. The skill flags indicators, not conclusions.
- Coordination detection based on public signals (timing, content overlap, shared links) identifies behavioural clusters. It cannot prove that accounts are operated by the same person or organisation without platform-side data.
- Social media platforms change their APIs, archive accessibility, and public data availability frequently. Tool recommendations in this skill may need updating as platforms restrict access.

## Related skills
- [source-verification](../source-verification/SKILL.md)
- [investigation-timeline-builder](../investigation-timeline-builder/SKILL.md)
- [osint-tool-catalog](../osint-tool-catalog/SKILL.md)
