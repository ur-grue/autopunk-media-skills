---
name: internal-memo-writer
status: stable
category: pr-communications
subcategory: content
version: 1.0
eval_score: 4.50
tags: [pr, internal-communications, memo, briefing, staff-update, corporate-comms]
---

# Internal Memo Writer

## What This Skill Does
Writes a clear, structured internal memo for staff or leadership, translating a communications situation into a concise document with context, key messages, and recommended actions.

## When To Use This Skill
- You need to brief senior leadership on a developing media situation or reputational issue
- You are communicating an organisational change, policy update, or strategic decision to staff
- You need to align internal teams on messaging before a public announcement
- You want to document a decision or recommendation in a formal internal format

## What You Need To Provide
**Required:**
- The subject of the memo (what this is about in one sentence)
- The audience (all staff, senior leadership, specific department, board)
- The key facts or situation summary (what happened, what is changing, or what needs to be decided)

**Optional:**
- The desired outcome (inform only, seek approval, align on messaging, prompt action)
- Sensitivity level (routine, confidential, urgent)
- Any context the audience already has (so the memo does not repeat what they know)
- Recommended actions or next steps you want included
- Tone preference (neutral informational, persuasive, reassuring)

## How Claude Approaches This
1. **Structures for rapid comprehension.** Internal memos compete with overloaded inboxes. Claude uses a standard format — To/From/Date/Subject header, a one-sentence executive summary at the top, then supporting sections — so the reader gets the essential point in under ten seconds.

2. **Separates fact from interpretation.** The "Background" section contains only verified facts and chronology. The "Implications" or "Recommendation" section contains analysis and opinion, clearly labelled. This prevents the memo from being read as mixing editorial judgment with reporting.

3. **Calibrates detail to the audience.** A memo to all staff uses plain language and avoids jargon. A memo to senior leadership assumes more context and focuses on strategic implications and decision points. A memo to a specific team provides operational detail and assigns responsibilities.

4. **Includes key messages when relevant.** If the memo relates to an external communications issue, Claude provides 2–3 approved key messages that internal staff can use if asked by media, clients, or stakeholders — ensuring message consistency.

5. **Closes with a clear "what happens next" section.** Every memo ends with specific next steps, owners, and timelines. If the memo is informational only, it says so explicitly — "No action required" is better than leaving the reader guessing.

## Output Format
300–500 words. Standard memo format: To / From / Date / Subject header, followed by an executive summary (1–2 sentences, bolded), then 2–4 body sections with headers (e.g., Background, Implications, Key Messages, Next Steps). Tone: clear, neutral, authoritative. No marketing language. Short paragraphs — no paragraph longer than four sentences. Ends with explicit next steps or "No action required."

## Quality Criteria
- [ ] Executive summary conveys the essential point in under two sentences
- [ ] Facts and recommendations are clearly separated — not blended
- [ ] Detail level matches the stated audience (staff vs. leadership vs. team)
- [ ] Key messages (if included) are concise, quotable, and consistent with the facts presented
- [ ] Next steps include who is responsible and by when
- [ ] No marketing language, no spin — reads as honest internal communication
- [ ] Memo can be understood on a single read without referring to other documents
- [ ] Sensitivity level is reflected in the tone (routine = straightforward, urgent = direct and action-oriented)

## Example

### Input
**Subject:** Preparing staff for media coverage of the upcoming office relocation.

**Audience:** All staff (120 employees across three departments).

**Key facts:** The organisation is moving from its current city-centre office to a larger facility in a business park 8 miles east, effective June 1. The decision was made to accommodate a 30% headcount increase over the next two years. A local newspaper has submitted a press enquiry asking whether the move signals financial difficulty. It does not — the move is expansion-driven. The press team will respond to the enquiry today.

**Desired outcome:** Inform staff, align on messaging, prevent rumour.

**Sensitivity:** Routine but time-sensitive — the newspaper may publish tomorrow.

**Recommended actions:** Staff should direct any media enquiries to the press office. No one should comment publicly until the official statement is issued.

### Output

**INTERNAL MEMO**

**To:** All Staff
**From:** Communications Department
**Date:** March 20, 2026
**Subject:** Office Relocation — Media Enquiry and Staff Guidance

**Summary: A local newspaper has asked about our office move. This memo provides the facts, our approved messaging, and guidance on handling any questions.**

---

**Background**

As confirmed in the February all-staff briefing, the organisation is relocating to a larger facility at Greenfield Business Park, effective June 1. The move supports planned headcount growth of 30% over the next two years and provides modern meeting and production facilities that the current office cannot accommodate.

Yesterday, a reporter from the Eastdale Courier submitted a press enquiry asking whether the relocation is connected to financial difficulties. It is not. The press office is responding today with a statement confirming the move is expansion-driven.

**Key Messages**

If you are asked about the move by anyone outside the organisation — including journalists, clients, or suppliers — please use the following points:

- The relocation is driven by growth. The organisation is expanding and needs a larger, better-equipped space.
- The new facility will be fully operational by June 1, with no disruption to services.
- All current staff are relocating. There are no redundancies connected to this move.

**What to Do If Contacted by Media**

Do not respond to media enquiries directly. If a journalist contacts you — by phone, email, or in person — please forward the enquiry to the press office at press@organisation.example.com or call extension 4400. This applies to social media messages as well.

This is not a restriction on your personal social media use — simply a request not to comment on the relocation in any context that could be quoted as an organisational statement.

**Next Steps**

- **Today:** The press office issues the official statement to the Eastdale Courier.
- **This week:** Facilities will circulate the updated relocation FAQ and transport information.
- **No action required from staff** unless directly contacted by media.

Questions about the move itself should go to facilities@organisation.example.com. Questions about media handling should go to the press office.

## Known Limitations
- Claude writes the memo based on the facts you provide. If the situation summary is incomplete or inaccurate, the memo will inherit those gaps. Always verify facts before distributing.
- Internal memos about legally sensitive matters (employment disputes, regulatory investigations, data breaches) should be reviewed by legal counsel before circulation. Claude does not apply legal privilege or disclosure considerations.
- The skill defaults to a Western corporate memo format. Organisations with different internal communication norms (e.g., government departments with prescribed formats, or newsrooms with informal Slack-first cultures) may need to adapt the structure.

## Related Skills
- [op-ed-writer](./op-ed-writer.md) — write an external opinion piece on the same topic
- [speech-writer](./speech-writer.md) — prepare remarks for a leadership announcement
- [crisis-statement-writer](../crisis-comms/crisis-statement-writer.md) — write a public-facing crisis statement
- [holding-statement-writer](../crisis-comms/holding-statement-writer.md) — draft a brief holding response while a full statement is prepared
