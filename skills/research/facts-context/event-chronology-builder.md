---
name: event-chronology-builder
status: beta
category: research
subcategory: facts-context
version: 1.0
eval_score: null
tags: [chronology, research, background, timeline, fact-checking]
---

# Event Chronology Builder

## What This Skill Does
Builds a detailed, prose-style chronology of events for a given story — ordered by date, written in clear narrative language, and structured so a journalist can use it directly as a research backbone or hand it to an editor for fact-checking.

## When To Use This Skill
- You are starting a long-form investigation or feature and need a full factual timeline before writing
- You have scattered notes, wire copy, and source documents and need everything organised in one place
- A story spans months or years and readers (or editors) will need context to follow it
- You are preparing a documentary treatment or magazine piece and need to establish what happened and when before deciding what to focus on

## What You Need To Provide
**Required:** The topic or subject of the story (a conflict, scandal, legal case, policy dispute, corporate failure, environmental event, etc.) and the rough time period to cover.

**Optional:** Any key events, dates, names, or turning points you already know; the intended publication or format (print feature, broadcast package, documentary, etc.); any events or angles you want excluded.

## How Claude Approaches This
1. Establishes the scope — the subject, start date, end date, and the level of detail appropriate for the story type (day-by-day for a breaking scandal; year-by-year for a decades-long policy story).
2. Works through the subject systematically: key trigger events, escalations, responses, turning points, and resolution or current status, in strict chronological order.
3. Writes each entry as a concise prose paragraph (2–4 sentences) rather than a bare bullet point — enough context to understand why each event matters, not just that it happened.
4. Flags entries where the date or detail is uncertain, so the journalist knows what needs verification before publication.

## Output Format
A headed chronology with a one-paragraph overview at the top, followed by dated entries in chronological order. Each entry: **Month/Year** in bold, followed by 2–4 sentences of plain narrative prose. Length scales with story complexity — a six-month story might produce 8–12 entries; a decade-long story might produce 20–30. Tone is neutral and factual. No editorialising. No footnotes.

## Quality Criteria
- [ ] Every entry has a specific date or date range — no vague "later" or "eventually"
- [ ] Each entry explains both what happened and why it is significant to the story
- [ ] Uncertain or approximate dates are explicitly flagged (e.g., "circa," "reportedly," "as of [date]")
- [ ] Entries are ordered strictly chronologically with no unexplained gaps
- [ ] Language is factual and neutral — no adjectives that imply a verdict the journalist has not yet established
- [ ] The opening overview paragraph gives a reader unfamiliar with the story enough context to follow the chronology

## Example

### Input
Topic: The collapse of a mid-sized regional airline following regulatory sanctions.
Period: January 2021 – December 2023.
Format: Long-form magazine investigation.
Known details: The airline lost its operating licence in September 2023. There were safety incidents in 2021 and 2022. A whistleblower complaint was filed at some point. The airline had been acquired by a private equity firm in 2019.

### Output

**Overview**

Between 2021 and 2023, Verano Airlines — a regional carrier serving twelve domestic routes — deteriorated from a going concern to a grounded fleet in under three years. The collapse followed a series of safety incidents, a whistleblower complaint to the civil aviation authority, and a regulatory investigation that concluded the airline's post-acquisition cost-cutting had compromised airworthiness standards. The timeline below reconstructs the sequence of events leading to the September 2023 licence revocation.

---

**March 2019**
Meridian Capital Partners, a mid-market private equity firm, acquired Verano Airlines for an undisclosed sum reported in industry press as approximately €180 million. The deal included commitments to expand the route network and modernise the fleet within five years. No regulatory conditions were attached to the acquisition.

**January 2021**
A Verano turboprop operating the capital–northern coast route made an emergency landing after a pressurisation fault. No passengers were injured. The civil aviation authority (CAA) logged the incident as Category B — serious but not immediately grounding — and requested a maintenance audit within 60 days. The airline submitted its audit on time; the CAA accepted it without further action.

**August 2021**
A second pressurisation fault on a different aircraft of the same type was reported internally. According to documents later obtained by investigators, the incident was not reported to the CAA within the mandatory 72-hour window. This non-disclosure became a central element of the later whistleblower complaint.

**February 2022**
A senior maintenance technician submitted a formal whistleblower complaint to the CAA, alleging that the airline's management had instructed maintenance staff to defer scheduled inspections to reduce costs, and that the August 2021 incident had been deliberately concealed. The complaint named three senior managers by role. The CAA acknowledged receipt and opened a preliminary inquiry.

**June 2022**
The CAA issued Verano with a formal notice of concern — a non-public regulatory instrument — requiring the airline to demonstrate compliance with maintenance schedules within 90 days. The airline's legal team responded, disputing several of the CAA's characterisations. The exchange was not disclosed to investors or the public.

**November 2022**
Industry publication Aviation Monitor reported, citing unnamed sources, that Verano was under regulatory scrutiny. The airline issued a brief denial, describing the report as "inaccurate and speculative." Meridian Capital made no public comment.

**March 2023**
The CAA completed its formal investigation and shared preliminary findings with the airline under a confidential review process. The findings reportedly concluded that at least four maintenance deferrals between 2020 and 2022 had breached airworthiness regulations, and that the August 2021 incident had not been reported as required. The airline requested additional time to respond.

**July 2023**
Verano's chief executive resigned, citing "personal reasons." No successor was named. The airline's chair — a former partner at Meridian Capital — assumed an executive oversight role. Staff were told operations would continue as normal.

**September 12, 2023**
The CAA revoked Verano Airlines' operating licence with immediate effect, grounding all flights. The authority cited "a pattern of non-compliance with airworthiness and incident-reporting obligations" and referred the matter to prosecutors for possible criminal investigation. Approximately 340 staff were told their contracts were suspended pending administration proceedings.

**October – December 2023**
Verano entered administration. An administrator was appointed to manage creditor claims and the disposal of the airline's six remaining aircraft. The CAA whistleblower protection scheme confirmed the original complainant had been granted protected-person status. Criminal inquiries were ongoing as of December 2023; no charges had been filed.

---

*Note: Dates for internal regulatory correspondence (June 2022 notice of concern, March 2023 preliminary findings) are approximate, based on sources familiar with the process. Independent verification recommended before publication.*

## Known Limitations
- Claude's knowledge has a training cutoff and cannot include events after that date. For stories with recent developments, treat the chronology as a starting framework and update it with your own reporting.
- For stories involving non-English-language sources, Claude may have less detailed knowledge of events that received limited English-language coverage.
- Claude cannot access paywalled databases, court filings, or proprietary document repositories — any entry drawing on such sources will need to be verified independently.
- Claude will flag uncertainty where it is aware of it, but it may not know what it does not know. All dates and facts should be verified against primary sources before publication.

## Related Skills
- [event-timeline-compiler](./event-timeline-compiler.md)
- [investigation-timeline-builder](../../magazine-journalism/investigation/investigation-timeline-builder.md)
- [background-brief-writer](./background-brief-writer.md)
