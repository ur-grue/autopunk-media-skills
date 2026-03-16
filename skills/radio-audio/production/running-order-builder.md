---
name: running-order-builder
status: stable
category: radio-audio
subcategory: production
version: 1.0
eval_score: 4.4
tags: [radio, production, running-order, programme, cue-sheet, scheduling]
---

# Running Order Builder

## What This Skill Does
Builds a complete radio programme running order with timed segments, item slugs, durations, presenter notes, and transition guidance from a list of planned content.

## When To Use This Skill
- A producer has a list of content for a programme and needs to convert it into a production-ready running order
- A running order drafted on a whiteboard or in notes needs to be formalised and timed before transmission
- A programme is being restructured after a guest cancellation or breaking news and the running order needs to be rapidly rebuilt
- A new producer needs a model running order format for a programme type they haven't produced before

## What You Need To Provide
**Required:** Programme duration, a list of planned items (name, type, approximate duration), and the programme format type (e.g. news magazine, music-and-talk, current affairs, documentary strand).
**Optional:** Programme start time, presenter name, specific items that must open or close the programme, any items with fixed hard times (e.g. news at the hour), music tracks to include, ad break positions, and any items that may overrun or be cut at short notice.

## How Claude Approaches This
1. Calculates total available programme time and maps fixed-time items (news, ads, legal requirements) first, then distributes variable-length items around them to produce a coherent structure
2. Sequences items editorially — lead items earn their position through news value, emotional weight, or audience hook rather than being placed arbitrarily; similar items are spread rather than stacked; programme flow has a shape (up-tempo / reflective / strong close)
3. Produces the running order in table format with cumulative clock times, item slugs, durations, type labels, and any presenter or production notes relevant to the transition

## Output Format
A table-format running order with the following columns: CLOCK TIME (cumulative, from programme start), SLUG (item name), TYPE (news / interview / package / music / ad / trail / link), DURATION, and NOTES. Below the table: a brief programme shape note explaining the editorial logic of the sequence (3–5 sentences). If any items are flagged as droppable (i.e. items that can be cut at short notice to recover time), they are marked with an asterisk. Total document: 300–500 words including the table and shape note.

## Quality Criteria
- [ ] All item durations sum to the total programme time within 30 seconds
- [ ] Fixed-time items (news, ad breaks) are correctly anchored and do not create impossible transitions
- [ ] Droppable items are explicitly marked
- [ ] The programme shape note explains the editorial logic in plain language
- [ ] No two consecutive items are the same type (no two interviews back to back without a break or link)
- [ ] The opening and closing items are clearly chosen for impact, not default placement

## Example

### Input
Programme: "Midday Roundtable" — 45-minute news-magazine and interview programme
Start time: 12:00
Fixed items: News bulletin at 12:00 (3 mins); ad break at 12:20 (2 mins); trail for afternoon schedule at 12:43 (1 min)
Variable items:
- Interview: housing secretary on new planning policy (live studio) — 8 mins
- Package: community garden project (pre-recorded) — 2 mins
- Music track: bridge between sections — 2 mins
- Phone-in segment: listeners call on housing affordability — 6 mins
- Interview: housing charity chief executive (pre-recorded, 5 mins available but can cut to 3)
- Presenter links and programme teases: allow 3 mins total

### Output

---
MIDDAY ROUNDTABLE — RUNNING ORDER
Date: [insert]
Presenter: [insert]
Programme duration: 45:00 | Start: 12:00 | End: 12:45

---

| CLOCK | SLUG | TYPE | DURATION | NOTES |
|-------|------|------|----------|-------|
| 12:00 | NEWS BULLETIN | News | 3:00 | Fixed. Presenter hands to bulletin reader. |
| 12:03 | PROGRAMME OPEN + TEASE | Link | 0:45 | Presenter intro — tease housing interview and phone-in. |
| 12:03:45 | HOUSING SECRETARY INTERVIEW | Interview (live) | 8:00 | Lead item. Pre-position on housing policy announcement. Have cue sheet ready. |
| 12:11:45 | MUSIC BRIDGE | Music | 2:00 | Structural break. Presenter back-anno the interview over music out. |
| 12:13:45 | COMMUNITY GARDEN PACKAGE | Package | 2:00 | Lighter item — contrast after policy interview. Presenter intro link: 20 secs. |
| 12:16:15 | PHONE-IN: HOUSING AFFORDABILITY | Phone-in | 6:00 | Three callers at 2 mins each. Producer to pre-screen. |
| 12:22:15 | AD BREAK | Ad | 2:00 | Fixed (approx. 12:20 — allow for slip). Back on air by 12:24:15. |
| 12:24:15 | HOUSING CHARITY INTERVIEW * | Interview (pre-rec) | 5:00 | Can cut to 3:00 if needed. Back anno the phone-in theme before introducing guest. |
| 12:29:15 | PRESENTER LINKS / TEASES | Link | 1:30 | Tease afternoon schedule; return to housing theme for programme coherence. |
| 12:30:45 | [FLEX SLOT — see note] | — | — | See below. |
| 12:43:00 | TRAIL: AFTERNOON SCHEDULE | Trail | 1:00 | Fixed. Must not start later than 12:43. |
| 12:44:00 | PROGRAMME CLOSE | Link | 1:00 | Presenter sign-off. |
| 12:45:00 | END | | | |

---

FLEX SLOT NOTE:
There is approximately 12:15 of unallocated time between 12:30:45 and 12:43:00. This slot can absorb the remaining presenter link budget (1:15) plus an additional pre-recorded item of up to 10:00 if available, OR be used to extend the charity interview or allow the phone-in to run long. Flag to presenter before transmission.

*Droppable item — can be cut or shortened without breaking the programme shape.

---

PROGRAMME SHAPE NOTE:
The programme opens hard on news and immediately moves to the lead political interview, which carries the highest news value. A music bridge provides a structural and tonal break before moving to a lighter human-interest package. The phone-in extends audience engagement on the same theme. The second half opens with a complementary expert voice before the close. The housing theme runs as a coherent thread across the whole programme, which should be acknowledged in the presenter's open tease and close.

---

## Known Limitations
- Clock times are targets, not guarantees — live interviews and phone-ins regularly overrun; the running order should be re-issued if the programme slips by more than 2 minutes
- Ad break positions vary between commercial and public radio; this skill defaults to commercial radio conventions and will need adjustment for non-commercial formats
- Cannot account for technical failures, late guests, or breaking news during transmission — always have one droppable item available
- Does not generate the actual content of items (scripts, questions, links) — for those, use the relevant companion skills

## Related Skills
- [programme-brief-writer](./programme-brief-writer.md)
- [bulletin-script-writer](../scripting/bulletin-script-writer.md)
- [presenter-link-writer](../scripting/presenter-link-writer.md)
