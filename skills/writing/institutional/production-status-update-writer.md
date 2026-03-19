---
name: production-status-update-writer
status: beta
category: writing
subcategory: institutional
version: 1.0
eval_score: null
tags: [production, stakeholder-communication, documentary, journalism, project-management]
---

# Production Status Update Writer

## What This Skill Does
Writes a clear, professional status update on a media production for commissioners, editors, funders, or executive stakeholders who need to know where a project stands without reading through internal working documents.

## When To Use This Skill
- A commissioner, broadcaster, or funder requests a progress report before a scheduled check-in call
- A project has hit a significant milestone — shoot completed, rough cut delivered, edit locked — and stakeholders need to be informed
- The production has encountered a delay, budget change, or scope shift and you need to communicate it clearly and professionally
- You are preparing for a review meeting and want a concise written record of where things stand
- A co-producer or partner organisation needs a summary of progress to share with their own leadership

## What You Need To Provide
**Required:**
- Project title and format (e.g. 60-minute documentary, six-part podcast series, long-form magazine investigation)
- Current production stage (e.g. research, pre-production, filming, editing, post-production, delivery)
- What has been completed since the last update
- What is currently in progress
- What comes next and when
- Any issues, delays, or changes the stakeholder needs to know about

**Optional:**
- Original delivery date and current projected delivery date (if different)
- Budget status (on track / over / under, with brief explanation)
- Names or roles of key contributors to mention (keep generic — no real names)
- Tone preference: formal (broadcaster/funder), semi-formal (co-producer), or direct (internal executive)
- Any decisions you need from the stakeholder

## How Claude Approaches This
1. Frames the update around what the stakeholder cares about: timeline, quality, and any risks — not the internal texture of daily production work
2. Organises information in a predictable structure so the reader can scan quickly: what's done, what's live, what's next, any flags
3. Keeps the tone measured and professional — confident about progress, honest about challenges, solution-oriented when flagging problems
4. Avoids production jargon (e.g. "we're in offline" or "syncing rushes") unless the audience is known to be production-literate; plain language is the default
5. Ends with a clear statement of what happens next and, if relevant, what the stakeholder needs to decide or provide

## Output Format
- Length: 250–450 words for a standard update; up to 600 words if significant issues need explaining
- Structure: brief intro paragraph → Completed section → In Progress section → Next Steps section → Issues / Flags section (if applicable) → closing line
- Tone: professional and clear; neither over-reassuring nor alarmist
- Format: plain paragraphs with bold section headers — suitable for pasting into an email body or a PDF report attachment
- No bullet-point walls; substantive sentences only

## Quality Criteria
- [ ] All four core sections (Completed, In Progress, Next Steps, Issues/Flags) are addressed, even if briefly
- [ ] Timeline and delivery expectations are stated explicitly
- [ ] Any problem or delay is named directly and followed by the current plan to address it
- [ ] Language is free of unexplained production jargon
- [ ] The update could be forwarded to a non-production executive without requiring additional explanation
- [ ] Tone is confident and professional — not defensive, not overly hedged

## Example

### Input
Project: "The Salt Line" — a 52-minute documentary about coastal erosion and fishing communities.
Format: Single documentary, international co-production.
Stage: Mid-edit.
Completed since last update: Principal photography wrapped across three locations. Archive research completed. Assembly cut delivered to director.
In progress: Director's cut underway. Sound design brief issued to post house.
Next: Director's cut due in four weeks. Broadcaster review scheduled six weeks from now.
Issues: One archive clip we planned to license is unavailable; we are sourcing an alternative.
Tone: Formal — going to the commissioning editor at the broadcaster.

### Output
**Subject: The Salt Line — Production Status Update**

Dear [Commissioning Editor],

I am writing to confirm where we stand on *The Salt Line* ahead of our scheduled call next week.

**Completed**

Principal photography is now complete across all three locations. The shoots went to plan and we have strong material from fishing communities, coastal scientists, and archive sources. Our archive research phase is also closed, with all primary materials cleared and catalogued. The assembly cut has been delivered to the director and reviewed internally.

**In Progress**

The director's cut is now underway. We expect this to reflect the structural decisions agreed in the assembly review and to sharpen the pacing in the central sequence. In parallel, we have issued the sound design brief to the post house and confirmed their availability for our post schedule.

**Next Steps**

The director's cut is due in four weeks. Following internal review, we will prepare for the broadcaster review currently scheduled six weeks from today. We remain on track for this milestone.

**For Your Attention**

One item to flag: a piece of archive footage we had planned to license has become unavailable due to rights restrictions with the original rights holder. We are actively sourcing an alternative that serves the same editorial purpose and expect to have a replacement confirmed within the next ten days. This does not affect our current timeline.

Please let us know if you have any questions ahead of our call, or if there are specific areas you would like us to address in more detail.

With best regards,
[Producer Name]

## Known Limitations
- Does not generate budget tables or financial breakdowns — for those, provide the numbers and ask Claude to draft explanatory narrative around them separately
- If the production situation is genuinely complex (e.g. multiple interlinked delays, legal complications), a single status update may not be sufficient; Claude will draft the clearest possible version but cannot substitute for a direct conversation
- Tone calibration for very specific institutional relationships (e.g. a particular broadcaster's house style) may need manual adjustment after drafting

## Related Skills
- [management-briefing-writer](./management-briefing-writer.md)
- [post-interview-thankyou-writer](./post-interview-thankyou-writer.md)
- [collaboration-proposal-writer](./collaboration-proposal-writer.md)
- [press-release-writer](./press-release-writer.md)
