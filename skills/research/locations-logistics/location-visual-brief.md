---
name: location-visual-brief
status: beta
category: research
subcategory: locations-logistics
version: 1.0
eval_score: null
tags: [location, visual, cinematography, art-direction, recce, documentary, pre-production]
---

# Location Visual Brief

## What This Skill Does
Produces a written visual brief describing the architectural character, light conditions, landscape qualities, and cinematic potential of a specific location — giving a director, cinematographer, or art director a working picture of a place before a recce.

## When To Use This Skill
- A director or cinematographer needs to assess a location's visual suitability before committing to travel for a recce
- You are pitching a documentary or film to a broadcaster and need to describe the visual world of a location without yet having shot footage
- A production designer or art director needs a starting brief on the aesthetic character of a place
- You are building a treatment or series bible and need the visual texture of key locations described in professional language

## What You Need To Provide
**Required:** The name of the location (city, region, specific building, or landscape type), the country or region, and the intended mood or visual register of the production (e.g. intimate observational documentary, high-contrast crime investigation, warm human-interest feature, epic landscape-driven narrative).

**Optional:** Time of year the shoot is planned, time of day preferences, specific visual elements to include or avoid (e.g. avoid tourist infrastructure, prioritise industrial texture, foreground water), and the camera format or aspect ratio if relevant.

## How Claude Approaches This
1. Draws on established knowledge of the location's architectural period, urban or rural character, dominant materials and colours, and any distinctive visual signatures — landforms, skylines, waterways, light quality specific to the latitude and climate.
2. Translates those physical characteristics into cinematographic language: contrast range, colour temperature tendencies, depth of field opportunities, framing challenges, and the kind of shots the location naturally affords.
3. Notes how seasonal or time-of-day conditions affect the visual character — particularly light quality, crowds, and weather-dependent features.
4. Flags any visual hazards or challenges: heavy tourist traffic, intrusive signage, lighting rigs or scaffolding that may be present, industrial noise that affects sound even when shooting mute.
5. Produces a brief that a director can hand to a DoP or production designer as a starting point, with a short list of suggested shot types or visual set-pieces the location supports.

## Output Format
A document of 450–650 words divided into four sections: Location Character, Light and Atmosphere, Cinematographic Opportunities, and Visual Considerations and Hazards. Closes with a short Suggested Shot Types list (4–6 items). Written in the register of a professional location report — specific, evocative, and free of vague adjectives ("beautiful", "stunning"). Tone matches the visual register requested by the user: restrained for documentary, richer for drama or image-prompting contexts.

## Quality Criteria
- [ ] Every descriptive claim is grounded in the physical or climatic characteristics of the named location — not generic landscape writing
- [ ] Light quality is addressed in terms of colour temperature, contrast, and seasonal variation, not just as "good" or "bad"
- [ ] At least one framing or compositional challenge is named and addressed honestly
- [ ] Suggested shot types are practical and specific to this location, not a generic shot list
- [ ] The brief's tone and register match the visual style the user specified
- [ ] Tourist or logistical hazards that affect visual quality are noted

## Example

### Input
Location: Antofagasta, Chile — the Atacama Desert coastal zone. Production: a feature-length documentary about artisanal copper mining. Intended visual register: stark, slow-burn observational — high contrast, dust, heat, industrial texture. Planned shoot: July. No preference on time of day but interested in working light.

### Output

**Location Visual Brief — Atacama Desert Coastal Zone, Antofagasta Region, Chile**
*For director and cinematographer reference. Prepared at pre-recce stage.*

---

**Location Character**

The Atacama coastal strip running south from Antofagasta is one of the most visually extreme environments on the continent. The landscape is defined by three competing textures: the absolute aridity of the pampa — grey-brown caliche rock, cracked salt flats, and bleached ore tailings — against the deep cobalt of the Pacific to the west, and the red-brown of copper-oxidised hillsides rising to the east. There is almost no vegetation and no softening of any surface. The built environment in mining communities is low, horizontal, and functional: corrugated iron, unpainted concrete, chain-link, ore conveyors. Colour saturation in the landscape is extreme at distance and almost absent at close range — a quality that rewards a careful approach to grading in post.

---

**Light and Atmosphere**

July sits in the Southern Hemisphere winter. Days are shorter than in summer but still long by European standards; sunrise is around 07:30, sunset around 18:30. The air is extraordinarily dry and dust-laden, which diffuses direct sunlight into a warm, slightly milky quality in the middle of the day and produces deep amber golden hours that last longer than in humid climates. At the coast, marine layer can roll in from the Pacific during morning hours — a phenomenon known locally as the camanchaca — creating soft, grey-diffused light for 1–3 hours after sunrise before it burns off. This produces two completely different visual registers within a single day: the diffused, flat coastal haze of early morning, and the hard-edged, shadow-heavy desert light of midday. Skin tones in midday desert light read very warm; camera filtration or careful exposure management will be needed if faces are primary subjects.

---

**Cinematographic Opportunities**

The flat topography of the pampa allows very long horizontal compositions — vehicles, figures, and conveyors can be placed against a pure horizon with no competing verticals. The ore sorting facilities and conveyor infrastructure offer a strong graphic vocabulary: repeating diagonals, mechanical movement against still landscape, rusted metal against blue sky. The camanchaca period offers the opportunity for isolating figures in near-monochrome, mist-softened environments that contrast sharply with the desert's daytime harshness. At the coast, the cliff edges above the Pacific create natural framing for subjects against deep blue — a strong graphic contrast with the inland palette.

---

**Visual Considerations and Hazards**

Dust is the primary technical challenge: it is pervasive, fine, and will coat lenses, filters, and moving parts continuously. A sealed equipment protocol and regular cleaning schedule should be built into the shoot plan. Midday contrast ratios are extreme and will exceed the dynamic range of many camera sensors without exposure compromise; ND filtration and careful blocking are essential. Road surfaces between mining sites are unpaved and corrugated; any dolly or slider work requires purpose-built rigs or very slow vehicle speeds. In July, overnight temperatures at altitude (above 2,500m) drop sharply — battery performance will be affected for any work at higher elevation sites.

---

**Suggested Shot Types**

- Single figure walking across flat pampa toward a distant conveyor: long lens compression, horizon bisecting frame at one-third
- Hands and tools in close-up against ore surface: extreme grain and texture in harsh midday light
- Camanchaca roll across cliff edge with figure silhouetted: during the 07:30–09:00 window
- Overhead shot (if drone is available) of tailings pond geometric shapes — colour contrast between mineral residue and caliche rock
- Interior of ore-sorting shed: shafts of direct sun through corrugated iron gaps, dust in suspension
- Long-lens compression of ore truck convoy on unpaved road: heat shimmer and dust trail

## Known Limitations
- Claude's visual briefs are based on documented knowledge of a location's climate, architecture, and geography — not on first-hand recce experience. Unexpected construction, site changes, or access restrictions will not be reflected.
- For locations that are poorly documented in English-language sources (small towns, remote regions, private industrial sites), the brief will be shorter and should be flagged as provisional until a local contact or recce confirms conditions.
- This brief describes general visual character, not specific shot-by-shot blocking. It should be treated as a starting framework, not a shooting plan — which requires on-the-ground time with the DoP.

## Related Skills
- [location-permit-brief](location-permit-brief.md)
- [filming-conditions-brief](filming-conditions-brief.md)
- [interview-location-researcher](interview-location-researcher.md)
- [stock-footage-brief](stock-footage-brief.md)
