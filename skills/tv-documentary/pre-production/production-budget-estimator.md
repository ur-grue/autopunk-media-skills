---
name: production-budget-estimator
status: stable
category: tv-documentary
subcategory: pre-production
version: 1.0
eval_score: 4.39
tags: [documentary, pre-production, budget, finance, planning, costing]
---

# Production Budget Estimator

## What This Skill Does
Produces a structured line-item budget estimate for a documentary production or a specific production phase, using standard industry rate ranges and the project specification you provide.

## When To Use This Skill
- You are developing a documentary and need a ballpark budget to attach to a pitch, funding application, or commissioning proposal
- You need to sanity-check an existing budget against typical industry rates before presenting it to a commissioner or funder
- You are planning a single shoot block and need a quick cost breakdown to request purchase orders or petty cash
- You are a self-shooting producer-director building your first production budget and need a realistic starting framework

## What You Need To Provide
**Required:**
- Production type: single documentary film, series (number of episodes), or short-form content
- Duration: target running time per episode or total
- Shooting format: studio, location, overseas, mixed
- Approximate number of shoot days
- Region or country of production (rates vary significantly by market)

**Optional:**
- Specific crew roles needed (beyond the standard documentary crew)
- Whether talent fees or contributor payments apply
- Post-production requirements: grade, sound mix, original score, animation, graphics
- Archive or stock footage budget expectations
- Travel requirements (domestic, international, number of trips)
- Whether this is a union/guild production (affects crew minimums)
- Target broadcaster or funder (helps calibrate rate expectations)
- Any known fixed costs (e.g., "we already have an edit suite," "archive access is pre-negotiated at a flat rate")

## How Claude Approaches This
1. **Establishes the production scale.** Determines the broad budget tier based on format, duration, shoot days, and market. A 4x60-minute observational series shot over 40 days operates in a fundamentally different cost band than a 1x30-minute archive-led film with 5 shoot days. This framing prevents rates from drifting unrealistically.

2. **Builds the line-item structure.** Organises the budget into standard production accounting categories: Development, Pre-Production, Production (crew, equipment, travel, location), Post-Production (edit, grade, sound, music, graphics), and Overheads/Contingency. Each category contains individual line items with a unit basis (day rate, week rate, flat fee, or per-minute rate) and a quantity.

3. **Applies rate ranges rather than single figures.** For every line item, provides a low-to-high range reflecting typical market rates for the specified region. For UK productions, references Bectu/Pact indicative rates. For US productions, references common indie documentary ranges. Flags any line where rates are highly variable (e.g., archive licensing, original music composition) and notes what drives the variance.

4. **Calculates subtotals and a total range.** Sums each category and provides an overall budget range (low estimate to high estimate). Adds a standard 10% contingency line. Notes which line items carry the most cost risk — the items where actual spend is most likely to deviate from the estimate.

5. **Adds practical notes.** Flags common budget traps for the production type: archive costs that escalate with territory; music licensing that doubles for international distribution; travel costs that spike without advance booking. Recommends which line items to firm up first.

## Output Format
Structured budget document with category headers, line-item tables, and a summary. Each line item shows: description, unit type, quantity, low rate, high rate, low total, high total. Category subtotals and overall total at the bottom. Followed by a "Budget Notes" section (3–5 bullet points) flagging key cost risks and next steps. Currency matches the specified production region (GBP for UK, USD for US, EUR for European co-productions) unless the user specifies otherwise. Tone: precise, professional, suitable for attachment to a funding application or internal planning document.

## Quality Criteria
- [ ] Budget categories follow standard production accounting structure (development through overheads)
- [ ] Every line item has a unit basis, quantity, and rate range — no lump sums without explanation
- [ ] Rate ranges are realistic for the specified market and production scale
- [ ] Contingency line is present (typically 10%)
- [ ] Budget notes flag at least two specific cost risks relevant to this production type
- [ ] No line items are silently omitted — if a common cost (insurance, legal, deliverables) is not included, it is noted as excluded with a reason
- [ ] Total range is clearly stated and the gap between low and high is plausible, not artificially narrow or absurdly wide
- [ ] Output is structured enough to transfer into a spreadsheet without reformatting

## Example

### Input
**Production type:** Single documentary film
**Duration:** 1 x 90 minutes
**Shooting format:** Location (domestic, 3 regions) plus some archive footage
**Shoot days:** 20
**Region:** United Kingdom
**Crew:** Director, Producer (also Series Producer), Camera Operator, Sound Recordist, Researcher. Self-shooting director covers some days alone.
**Post-production:** Offline edit, online/grade, sound mix, original score (small ensemble), motion graphics for 4–5 data sequences
**Archive:** Approximately 8–10 minutes of archive footage from institutional sources
**Travel:** Domestic only — 3 regional trips of 3–4 days each with accommodation
**Notes:** Not a union shoot. Independent production, no broadcaster attached yet.

### Output

**PRODUCTION BUDGET ESTIMATE**
**Project:** Untitled Documentary — 1 x 90 min
**Market:** United Kingdom (Independent)
**Currency:** GBP
**Date:** April 2026

---

### 1. DEVELOPMENT

| Item | Unit | Qty | Low Rate | High Rate | Low Total | High Total |
|------|------|-----|----------|-----------|-----------|------------|
| Research & development | Flat | 1 | 2,000 | 5,000 | 2,000 | 5,000 |
| Treatment / proposal writing | Flat | 1 | 1,000 | 2,500 | 1,000 | 2,500 |
| **Subtotal — Development** | | | | | **3,000** | **7,500** |

### 2. PRE-PRODUCTION

| Item | Unit | Qty | Low Rate | High Rate | Low Total | High Total |
|------|------|-----|----------|-----------|-----------|------------|
| Producer | Weeks | 4 | 1,200 | 1,800 | 4,800 | 7,200 |
| Director | Weeks | 2 | 1,200 | 1,800 | 2,400 | 3,600 |
| Researcher | Weeks | 4 | 700 | 1,000 | 2,800 | 4,000 |
| Recces / location visits | Flat | 1 | 500 | 1,200 | 500 | 1,200 |
| **Subtotal — Pre-Production** | | | | | **10,500** | **16,000** |

### 3. PRODUCTION

| Item | Unit | Qty | Low Rate | High Rate | Low Total | High Total |
|------|------|-----|----------|-----------|-----------|------------|
| Director | Days | 20 | 350 | 550 | 7,000 | 11,000 |
| Producer (on-set days) | Days | 10 | 350 | 550 | 3,500 | 5,500 |
| Camera Operator | Days | 14 | 350 | 500 | 4,900 | 7,000 |
| Sound Recordist | Days | 14 | 300 | 450 | 4,200 | 6,300 |
| Researcher / Runner | Days | 20 | 150 | 250 | 3,000 | 5,000 |
| Camera kit hire | Days | 20 | 200 | 400 | 4,000 | 8,000 |
| Sound kit hire | Days | 20 | 75 | 150 | 1,500 | 3,000 |
| Lighting kit hire | Days | 14 | 50 | 150 | 700 | 2,100 |
| Travel — fuel/rail | Flat | 3 | 300 | 600 | 900 | 1,800 |
| Accommodation | Nights | 12 | 80 | 130 | 960 | 1,560 |
| Per diems / subsistence | Days | 40 | 20 | 35 | 800 | 1,400 |
| Location fees | Flat | 1 | 500 | 2,000 | 500 | 2,000 |
| Production insurance | Flat | 1 | 1,500 | 3,000 | 1,500 | 3,000 |
| **Subtotal — Production** | | | | | **33,460** | **57,660** |

### 4. POST-PRODUCTION

| Item | Unit | Qty | Low Rate | High Rate | Low Total | High Total |
|------|------|-----|----------|-----------|-----------|------------|
| Offline Editor | Weeks | 10 | 1,000 | 1,600 | 10,000 | 16,000 |
| Edit suite / storage | Weeks | 10 | 100 | 300 | 1,000 | 3,000 |
| Online / grade | Days | 3 | 800 | 1,500 | 2,400 | 4,500 |
| Sound mix (dubbing theatre) | Days | 3 | 800 | 1,500 | 2,400 | 4,500 |
| Original score — composition | Flat | 1 | 3,000 | 8,000 | 3,000 | 8,000 |
| Original score — recording | Flat | 1 | 1,000 | 3,000 | 1,000 | 3,000 |
| Motion graphics (4–5 sequences) | Flat | 1 | 2,000 | 5,000 | 2,000 | 5,000 |
| Archive footage — licensing | Minutes | 9 | 150 | 500 | 1,350 | 4,500 |
| Archive footage — research/access | Flat | 1 | 500 | 1,500 | 500 | 1,500 |
| Deliverables / QC | Flat | 1 | 500 | 1,500 | 500 | 1,500 |
| **Subtotal — Post-Production** | | | | | **24,150** | **51,500** |

### 5. OVERHEADS & CONTINGENCY

| Item | Unit | Qty | Low Rate | High Rate | Low Total | High Total |
|------|------|-----|----------|-----------|-----------|------------|
| Production office / admin | Flat | 1 | 1,000 | 2,500 | 1,000 | 2,500 |
| Legal (contracts, clearances) | Flat | 1 | 1,000 | 3,000 | 1,000 | 3,000 |
| Contingency (10%) | % | 10% | — | — | 7,211 | 13,466 |
| **Subtotal — Overheads** | | | | | **9,211** | **18,966** |

---

### TOTAL BUDGET RANGE

| | Low | High |
|---|-----|------|
| **Total Production Budget** | **£80,321** | **£151,626** |

---

### Budget Notes

- **Archive licensing is the most volatile line.** Institutional archive (national broadcasters, newsreel libraries) can range from £50/min for educational use to £500+/min for international broadcast rights. Get quotes early and negotiate flat-rate packages where possible.
- **Original score costs depend entirely on scale.** A solo composer working from a home studio sits at the low end; a small ensemble recorded in a professional studio with a session fee structure sits at the high end. Lock the brief before committing budget.
- **The gap between low and high reflects the indie-to-broadcast spectrum.** At the low end, this budget assumes a lean independent production with deferred fees and own-kit usage. At the high end, it assumes full market-rate crew, hired kit, and broadcast-standard post. A realistic working budget for this project with no broadcaster attached is likely in the £100,000–£120,000 range.
- **Insurance is non-negotiable.** Public liability and equipment cover are requirements for most location permissions. Budget for this even on the lowest-cost version.
- **Deliverables cost more than producers expect.** If a broadcaster comes on board, technical delivery requirements (multiple formats, subtitling, audio stems, compliance edits) can add £1,500–£3,000 beyond the QC line budgeted here.

---

## Known Limitations
- All rates are indicative ranges based on general industry knowledge, not live market data. Rates change with inflation, demand, and regional variation. Always verify current rates with crew agents, kit hire companies, and facilities before locking a budget.
- This skill cannot account for production-specific commercial agreements (e.g., co-production deals, in-kind support, pre-negotiated facility rates). Adjust line items manually where you have confirmed figures.
- For productions involving international travel, customs/carnet, visa costs, and currency fluctuation risk are significant budget factors that require specialist production accounting — this skill provides a framework but not the detail needed for a foreign shoot budget.

## Related Skills
- [production-schedule-writer](production-schedule-writer.md) — plan the shoot schedule that drives the budget's shoot-day count
- [call-sheet-writer](call-sheet-writer.md) — generate daily call sheets once the budget and schedule are confirmed
- [equipment-list-generator](equipment-list-generator.md) — detail the kit requirements that feed into the equipment hire line
