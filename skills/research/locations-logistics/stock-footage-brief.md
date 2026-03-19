---
name: stock-footage-brief
status: beta
category: research
subcategory: locations-logistics
version: 1.0
eval_score: null
tags: [stock footage, archive, research, pre-production, licensing]
---

# Stock Footage Brief

## What This Skill Does
Produces a structured brief for a researcher or footage coordinator to use when sourcing stock or archive footage from libraries, broadcasters, or specialist archives.

## When To Use This Skill
- You need footage of events, locations, or time periods you cannot film yourself
- You are building a documentary or news package that requires historical material
- You are briefing a footage researcher who needs clear search parameters and priority ranking
- You need to estimate licensing costs and clearance time before locking a budget
- You are comparing what can be sourced commercially versus what requires direct archive access

## What You Need To Provide
**Required:**
- Subject or topic of the film or segment (what the footage needs to illustrate)
- Approximate era or date range of footage needed
- Intended use (broadcast documentary, online editorial, advertising, educational, etc.)
- Territory of distribution (key factor for licensing)

**Optional:**
- Specific events, locations, or personalities the footage must include
- Visual style or tone preferences (gritty archive, clean HD, specific film stock aesthetic)
- Budget range for footage licensing
- Deadline for confirming footage availability
- Any footage sources already checked or excluded

## How Claude Approaches This
1. Translates the editorial description into concrete searchable footage categories — what specifically needs to be on screen, not just what the story is about
2. Identifies which categories are likely commercially available (major stock libraries, news archives), which require specialist sources (national film archives, broadcaster vaults, institutional collections), and which may be impossible to clear within typical production budgets
3. Structures the brief as a clear task list for a researcher, with search terms, suggested sources by category, and licensing flags — so the researcher can begin work immediately without a follow-up conversation

## Output Format
A structured document of 400–700 words organized into: Footage Categories (each category has a description, priority level, and suggested sources), Search Terms, Licensing Notes, and Recommended Next Steps. Priority levels are High (story cannot be told without it), Medium (strongly preferred), and Low (nice to have). Plain, professional language — written for a researcher, not a lawyer or a technical specialist.

## Quality Criteria
- [ ] Every footage category is specific enough to search (not "factory footage" but "steel rolling mill interior, workers operating machinery")
- [ ] Priority levels are assigned and justified
- [ ] At least two realistic source types are named per high-priority category
- [ ] Licensing territory and intended use are clearly stated (affects cost and availability)
- [ ] Researcher can begin work using this document without asking clarifying questions

## Example

### Input
Subject: The history of commercial fishing in the North Atlantic from the 1950s to the 1980s, focusing on life aboard trawlers and the decline of cod stocks.
Era: 1950s–1980s, some contemporary b-roll acceptable for contrast.
Intended use: Broadcast documentary, 60 minutes, intended for public television.
Territory: Europe and North America.
Budget: Mid-range — can license from commercial libraries but not major Hollywood archive prices.
Deadline: Availability confirmed within four weeks.

### Output

# Stock Footage Brief — North Atlantic Fishing Documentary

**Prepared for:** Footage Researcher
**Subject:** Commercial fishing, North Atlantic, 1950s–1980s
**Intended use:** Broadcast documentary — public television, Europe and North America
**Licensing territory:** Europe and North America (confirm sub-licensing terms for each territory separately)
**Deadline for availability confirmation:** 4 weeks from today

---

## Footage Categories

### 1. Trawler Operations at Sea — PRIORITY: HIGH
Footage of deep-sea trawlers working in the North Atlantic: nets being hauled, fish being sorted on deck, crew at work in heavy weather conditions. Any nationality of vessel acceptable; British, Norwegian, Icelandic, or Canadian vessels preferred for editorial fit.

**Suggested sources:**
- National Film Board of Canada (extensive fisheries archive)
- BFI National Archive (UK trawler industry, Hull and Grimsby)
- Norwegian National Broadcasting (NRK) archive
- Getty Images / Pond5 (search: "deep sea trawler," "cod fishing," "North Atlantic fishing")

**Search terms:** trawler, deep sea fishing, cod fishery, North Atlantic, fishing vessel, net hauling, fish deck

---

### 2. Fishing Communities and Port Life — PRIORITY: HIGH
Quayside scenes, fish markets, fish processing plants (onshore), fishermen's families, port towns. 1950s–1970s preferred. Black-and-white acceptable and editorially useful.

**Suggested sources:**
- BFI (extensive British coastal and fishing community archive)
- Getty Images / AP Archive (search: "fishing port," "fish market," "fishermen")
- Icelandic Film Archive (Kvikmyndasafn Íslands)
- Local and regional television broadcaster archives (e.g., Anglia TV, Yorkshire TV)

**Search terms:** fishing port, fish market, quayside, fishwives, processing plant, fishing village, coastal community

---

### 3. Cod Wars / Fisheries Disputes — PRIORITY: MEDIUM
News footage of the Cod Wars (UK-Iceland fisheries disputes, 1958–1976): naval vessels, confrontations at sea, political press conferences, fisheries negotiations. Newsreel and broadcast news formats expected.

**Suggested sources:**
- ITN Archive (strong Cod Wars coverage)
- AP Archive and Reuters archive
- Icelandic State Broadcasting Service (RÚV) archive

**Search terms:** Cod Wars, Iceland fisheries, fishing limits dispute, HMS, trawler confrontation, 200-mile limit

---

### 4. Aerial and Wide Ocean Shots — PRIORITY: MEDIUM
Aerial views of the North Atlantic: open ocean, coastline, sea ice, weather. Contemporary aerial footage is acceptable here if period footage is unavailable or cost-prohibitive.

**Suggested sources:**
- Getty Images, Shutterstock (contemporary aerials)
- BBC Motion Gallery (archival aerials)

**Search terms:** North Atlantic aerial, ocean aerial, coastline aerial, sea ice, North Sea

---

### 5. Scientific and Government Surveys — PRIORITY: LOW
Research vessels, scientists measuring fish stocks, government fisheries officers on patrol. Useful for explaining the collapse of cod stocks scientifically.

**Suggested sources:**
- FAO (Food and Agriculture Organization) film archive
- National government fisheries department archives (UK MAFF, Canadian DFO)

**Search terms:** fisheries research vessel, fish stock survey, marine biology, fisheries officer

---

## Licensing Notes
- All material for broadcast documentary use requires **broadcast rights**, not editorial-only or streaming-only licenses — confirm this explicitly with each supplier
- European and North American rights may need to be licensed separately depending on source
- Public broadcaster archives (NRK, RÚV, RTE) often charge by the minute of footage used at rates negotiable for co-productions — worth a direct approach if any co-production element exists
- Black-and-white archival footage from the 1950s–1960s may have ownership ambiguities — budget for rights research time on any footage sourced from small regional collections

## Recommended Next Steps
1. Begin with BFI and ITN Archive for UK content — both have online portals with preliminary search capability
2. Contact the National Film Board of Canada directly for Canadian trawler material — their archive is not fully digitized and requires a researcher call
3. Run commercial library searches (Getty, AP Archive, Pond5) in parallel to establish what is available on the open market before approaching specialist archives
4. Flag any footage where rights ownership is unclear before ordering — rights research adds 2–3 weeks

## Known Limitations
- Claude cannot search live stock footage databases and cannot confirm what is actually in any given archive's holdings — this brief defines what to look for, not what exists
- Licensing costs vary enormously by source, broadcast territory, and footage duration; all cost estimates must come from the archives directly
- Footage from the 1950s and 1960s sometimes has orphaned rights (original producer no longer exists) — legal advice may be needed before licensing material from small or defunct regional broadcasters

## Related Skills
- [archival-footage-brief](../../tv-documentary/pre-production/archival-footage-brief.md)
- [location-brief-writer](../../tv-documentary/pre-production/location-brief-writer.md)
- [research-brief-creator](../../magazine-journalism/ideation/research-brief-creator.md)
