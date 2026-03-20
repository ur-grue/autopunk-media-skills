---
name: equipment-list-generator
status: stable
category: tv-documentary
subcategory: pre-production
version: 1.0
eval_score: 4.42
tags: [documentary, pre-production, equipment, kit, logistics, camera, sound, lighting]
---

# Equipment List Generator

## What This Skill Does
Generates a categorised equipment packing list for a documentary shoot, tailored to the production format, shooting conditions, and crew size — ready to use as a hire order, packing checklist, or kit manifest.

## When To Use This Skill
- You are planning a shoot and need a comprehensive kit list to send to an equipment hire company
- You are a self-shooting producer-director and want to make sure you have not forgotten anything before leaving for a location
- You are briefing a camera operator or sound recordist and want to agree on the kit specification in advance
- You need to document the equipment being taken on location for insurance or customs (carnet) purposes

## What You Need To Provide
**Required:**
- Production format: observational / interview-based / presenter-led / archive-led with some filming / hybrid
- Number of shoot days
- Shooting environment: interior, exterior, or mixed; any extreme conditions (underwater, desert heat, arctic cold, low light)
- Crew size and roles (self-shooting director, or separate camera, sound, lighting, etc.)

**Optional:**
- Camera system preference or requirement (specific brand/model, or "broadcast standard," "cinema," "run-and-gun")
- Audio requirements beyond standard: radio mics for multiple contributors, boom for drama-style scenes, ambience recording
- Lighting requirements: natural light only, basic interview kit, full lighting rig
- Special requirements: drone, underwater housing, timelapse rig, gimbal/stabiliser, teleprompter
- Whether kit is owned or hired (affects how the list is structured)
- Transport constraints (flying with kit, vehicle size limits, weight restrictions)
- Deliverable format requirements (4K, HD, specific codec)

## How Claude Approaches This
1. **Assesses the production type and shooting style.** An observational documentary following a subject over weeks requires lightweight, fast-deploying kit with long battery life. An interview-based film needs controlled lighting and clean audio above all. A presenter-led format needs monitoring, teleprompter capability, and consistent lighting across setups. The kit list starts from the shooting style, not from a generic checklist.

2. **Builds the list in standard production categories.** Organises equipment into: Camera, Lenses, Camera Support, Lighting, Audio, Monitoring & Playback, Power & Media, Grip & Rigging, and Miscellaneous/Expendables. Each item includes quantity and a brief note on why it is included when the reason is not obvious.

3. **Scales to the crew and budget.** A self-shooting director gets a lean, one-person-operable list. A four-person crew gets a full specification with redundancy. Where a choice exists between budget and premium options, notes both (e.g., "LED panel — Aputure 300d or equivalent; budget alternative: Godox SL-150").

4. **Adds the items people forget.** Every experienced camera team knows the frustration of arriving on location without gaffer tape, lens wipes, a multi-tool, or enough batteries. The list includes expendables and accessories — the mundane items that halt a shoot when missing.

5. **Appends practical notes.** Flags any items that require advance booking (specialist lenses, drones, underwater housings), items that have airline restrictions (lithium batteries, fluid heads), and items where a backup or spare is strongly recommended (media cards, batteries, radio mic frequencies).

## Output Format
Categorised list with clear section headers. Each item on its own line with quantity and a brief note where needed. Structured so it can be copied directly into a spreadsheet or sent to a hire company. Ends with a "Practical Notes" section (3–5 bullets) covering logistics, transport, and common oversights. No prose paragraphs in the main list — this is a reference document, not an essay. For a typical 5–10 day documentary shoot, expect 40–70 line items.

```
EQUIPMENT LIST — [Production Title]
Shoot dates: [Dates] | Crew: [Size] | Format: [Type]

CAMERA
- [Item] x [Qty] — [Note]

LENSES
- [Item] x [Qty]

CAMERA SUPPORT
- [Item] x [Qty]

LIGHTING
- [Item] x [Qty]

AUDIO
- [Item] x [Qty]

MONITORING & PLAYBACK
- [Item] x [Qty]

POWER & MEDIA
- [Item] x [Qty]

GRIP & RIGGING
- [Item] x [Qty]

MISCELLANEOUS / EXPENDABLES
- [Item] x [Qty]

PRACTICAL NOTES
- [Note 1]
- [Note 2]
```

## Quality Criteria
- [ ] Every item is appropriate for the stated production format, crew size, and shooting environment
- [ ] List covers all core categories — camera, audio, lighting, support, power/media, and expendables
- [ ] Quantities are realistic and specified (not just "batteries" but "V-mount batteries x 6")
- [ ] Items that require advance booking, have transport restrictions, or need spares are flagged in practical notes
- [ ] The list does not include equipment that contradicts the brief (e.g., no heavy lighting rig for a run-and-gun observational shoot)
- [ ] Expendables and commonly forgotten items are included
- [ ] Output is structured for direct use as a hire order or packing checklist — no reformatting needed
- [ ] Practical notes include at least one genuinely useful logistics tip specific to the shoot type

## Example

### Input
**Production format:** Interview-based documentary with some observational sequences
**Shoot days:** 8
**Environment:** Mixed interior/exterior, temperate climate, no extreme conditions
**Crew:** Director, Camera Operator, Sound Recordist (3-person crew)
**Camera preference:** Sony FX6 or equivalent (broadcast HD/4K)
**Audio:** Sit-down interviews (2 contributors per setup typical), plus run-and-gun observational audio
**Lighting:** Interview lighting needed; natural light for observational
**Special requirements:** None
**Kit:** Hired — list should work as a hire order
**Deliverable:** 4K UHD, minimum 10-bit

### Output

**EQUIPMENT LIST — Untitled Documentary**
Shoot dates: TBC | Crew: 3 | Format: Interview + observational | 8 days

---

**CAMERA**
- Sony FX6 body x 1
- FX6 top handle and base plate x 1
- V-mount battery plate for FX6 x 1

**LENSES**
- Sony 24–70mm f/2.8 GM x 1 — primary interview and observational lens
- Sony 70–200mm f/2.8 GM x 1 — observational / compressed backgrounds
- Sony 16–35mm f/2.8 GM x 1 — wide establishing shots and tight interiors

**CAMERA SUPPORT**
- Sachtler flowtech 75 tripod with FSB 8 fluid head x 1
- Manfrotto monopod x 1 — observational quick-deploy support
- Shoulder rig / baseplate with top handle x 1 — handheld observational work

**LIGHTING**
- Aputure 300d Mark II with Lantern 90 softbox x 1 — key light for interviews
- Aputure 120d Mark II with dome diffuser x 1 — fill light for interviews
- Aputure MC RGBWW pocket LED x 2 — accent / practical / eye light
- Aputure Light Dome mini II x 1 — alternative softbox for tighter spaces
- C-stand with grip head and arm x 3
- Black and white poly boards (4x4 ft) x 2 — bounce and negative fill
- Diffusion frame (4x4 ft) with 250 diff x 1

**AUDIO**
- Sound Devices MixPre-6 II recorder x 1
- Sennheiser MKH 416 shotgun microphone x 1 — boom and on-camera
- Sennheiser MKH 50 hypercardioid x 1 — interior boom, reduced room ambience
- Sennheiser EW 112P G4 radio mic kit x 2 — one per contributor in two-person interviews
- Boom pole (carbon fibre, internal cable) x 1
- Pistol grip shock mount and windshield x 1
- Rycote Cyclone windshield x 1 — exterior boom work
- XLR cables (5m) x 4
- XLR cables (10m) x 2
- Headphones (closed-back) x 1

**MONITORING & PLAYBACK**
- SmallHD 702 Touch 7" on-camera monitor x 1
- SmallHD Cine 13" director's monitor x 1 — interview review
- SDI cables (1.5m, 3m) x 2 each
- HDMI cables x 2

**POWER & MEDIA**
- V-mount batteries (150Wh) x 6 — minimum 3 per shoot day plus spares
- V-mount dual charger x 1
- Sony NP-FZ100 batteries x 4 — FX6 internal backup
- CFexpress Type A cards (160GB) x 4
- CFexpress card reader x 1
- Portable SSD (2TB) x 2 — daily backup (one on-set, one at accommodation)
- Mains extension lead (10m) x 2
- 4-way power strip x 2

**GRIP & RIGGING**
- Magic arm with super clamp x 2
- Cardellini clamp x 2
- Background support stand and crossbar x 1 — optional interview backdrop
- Sandbags x 4

**MISCELLANEOUS / EXPENDABLES**
- Gaffer tape (black, 50m) x 2
- Camera tape (white, for marking) x 1
- Lens cleaning kit (blower, wipes, cloth) x 1
- Clapperboard / smart slate x 1
- Multi-tool x 1
- Cable ties (assorted) x 1 pack
- Sharpies (black, silver) x 2 each
- Bin bags (large, black) x 1 roll — rain covers, waste
- First aid kit x 1

---

**PRACTICAL NOTES**
- **Book the 70–200mm and 300d early.** These are the most commonly hired items and may not be available on short notice, particularly during peak shooting seasons (May–September).
- **Battery count assumes 2 full shoot days per charge cycle.** If shoot days run over 10 hours or if temperatures drop below 10°C, bring additional V-mounts or a mains power supply as backup.
- **Daily media backup is non-negotiable.** Copy all cards to both portable SSDs at wrap every day. Do not reformat cards until both copies are verified. One SSD travels with the director, one with the camera operator.
- **Check radio mic frequencies before the shoot.** In the UK, channels 38 (606–614 MHz) are licence-exempt for wireless microphones. If shooting near a large venue or broadcast facility, scan for interference on arrival and have a backup channel plan.
- **Airline restrictions apply to V-mount batteries.** If flying to a location, lithium batteries over 100Wh require airline approval and must be carried in hand luggage, not checked. Confirm with the airline in advance.

---

## Known Limitations
- This skill generates a kit list based on general professional standards, not specific rental house inventories. Exact model availability varies by supplier and region — confirm stock with your hire company before treating the list as a confirmed order.
- For highly specialised shoots (underwater, aerial/drone, high-speed, macro/microscopy), the standard list will need supplementing by a specialist in that discipline. The skill covers core documentary production equipment, not niche technical rigs.
- Equipment specifications and model names reflect current professional standards but may become outdated as manufacturers release new models. The categories and quantities remain valid; specific model recommendations should be verified against current availability.

## Related Skills
- [call-sheet-writer](call-sheet-writer.md) — generate the daily call sheet that references the equipment being used
- [production-budget-estimator](production-budget-estimator.md) — the equipment hire line in the budget should match this list
- [location-scout-brief](location-scout-brief.md) — location constraints (power availability, access width, noise) affect equipment choices
