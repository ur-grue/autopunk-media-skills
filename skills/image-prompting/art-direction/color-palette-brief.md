---
name: color-palette-brief
status: stable
category: image-prompting
subcategory: art-direction
version: 1.0
eval_score: 4.4
tags: [image-prompting, art-direction, color, palette, visual-identity]
---

# Color Palette Brief

## What This Skill Does
Generates a detailed color palette brief with named colors, hex codes, rationale, and usage guidance for a media project's visual identity — show artwork, editorial imagery, website, or social media.

## When To Use This Skill
- You are establishing the visual identity of a new podcast, YouTube channel, newsletter, or publication and need to define a color system
- You want to brief a designer on the color direction for a project with enough specificity that they can build the palette without a conversation
- You need to maintain color consistency across AI-generated images, social posts, and designed assets
- You have a vague color direction in mind ("something warm and earthy") and need it translated into specific, usable values

## What You Need To Provide
**Required:**
- Project name and a brief description of what it is
- The emotional tone and personality of the project (how should it feel?)
- The audience (who is it for?)

**Optional:**
- Any colors you already know you want (even approximate — "a dark teal," "a warm off-white")
- Named reference brands, publications, or shows whose palette you want to approach or diverge from
- The platform(s) where the palette will be used (web, print, video, social media)
- Whether you need dark mode and light mode variants
- Any colors to avoid and why

## How Claude Approaches This
1. Derives the palette from the project's personality and audience: what colors communicate the right feeling, and what associations must be avoided
2. Builds a structured system: primary color (the identity anchor), secondary color (support and contrast), accent color (for calls to action and highlights), neutral/background colors (light and dark), and a danger or caution color (for use sparingly)
3. Provides each color with: a descriptive name, a hex code, an RGB value, and a one-sentence usage note
4. Explains the palette's logic — why these specific colors were chosen and what they communicate together
5. Provides prompt-ready color language for AI image generation: phrases that consistently produce images within the palette

## Output Format
- Structure: Palette Overview → Color-by-Color Breakdown → Palette Rationale → Usage Guidelines → AI Prompt Color Language
- Each color presented with: descriptive name, hex code, RGB value, usage note
- Palette rationale in 2–3 paragraphs explaining the color relationships and emotional logic
- Usage guidelines: specific rules for which color is dominant, how accent is used, what combinations to avoid
- AI prompt color language: 3–5 phrase variations for different contexts (light scene, dark scene, neutral scene)

## Quality Criteria
- [ ] Each color has a specific hex code, not a vague description
- [ ] The palette rationale explains the emotional logic of the color choices, not just what they are
- [ ] Usage guidelines include at least one specific prohibition (e.g., "do not use accent on backgrounds — only on text and interactive elements")
- [ ] The AI prompt color language phrases are specific enough to reliably constrain image generation
- [ ] The palette has internal contrast — a functioning palette needs both light and dark values

## Example

### Input
- **Project:** *The Margin* — newsletter and podcast about labor and economics
- **Emotional tone:** Grounded, unsentimental, quietly political. Serious without being heavy. Accessible without being light.
- **Audience:** Educated adults 28–50, reads long-form journalism
- **Platform:** Web (newsletter), podcast platforms, social media (Instagram, Twitter/X)
- **Reference to approach:** The New York Review of Books, n+1 magazine, The Atlantic print edition
- **Reference to avoid:** CNN, tech startup corporate blue
- **Known preference:** A warm off-white background rather than pure white

### Output

---

**COLOR PALETTE BRIEF — THE MARGIN**
*Visual identity colors · Version 1.0*

---

**PALETTE OVERVIEW**

A five-color system built around warm earth tones anchored by a deep ink near-black. The palette communicates seriousness and accessibility without institutional weight — it sits in the tradition of mid-century print journalism rather than digital media.

---

**COLOR BREAKDOWN**

**1. Ink / Primary**
- Name: *Press Ink*
- Hex: `#1C1A17`
- RGB: 28, 26, 23
- Usage: Primary text, headers, dominant dark surface. The anchor of every composition. Never replaced by pure black.

**2. Warm Off-White / Background**
- Name: *Newsprint*
- Hex: `#F5F0E8`
- RGB: 245, 240, 232
- Usage: Primary background color for web and print. The slight warmth avoids clinical brightness without reading as aged or yellowed.

**3. Rust / Accent**
- Name: *Factory Rust*
- Hex: `#B84C24`
- RGB: 184, 76, 36
- Usage: Accent only — calls to action, active links, pull quotes, visual emphasis. Use sparingly. Never as a background color on large areas.

**4. Slate / Secondary**
- Name: *Archive Grey*
- Hex: `#5C5850`
- RGB: 92, 88, 80
- Usage: Secondary text (captions, metadata, secondary UI elements), borders, dividers. The tonal midpoint between Ink and Newsprint.

**5. Deep Ochre / Warm Dark**
- Name: *Late Shift*
- Hex: `#3D2E1A`
- RGB: 61, 46, 26
- Usage: Dark mode background; warm dark sections and banner areas. Warmer than Ink — used for large dark areas where pure near-black would feel too cold.

---

**PALETTE RATIONALE**

The palette is a print palette translated to screen. Press Ink and Newsprint create the fundamental relationship: warm near-black on warm off-white, the combination that print journalism has used for 150 years because it is legible, authoritative, and unhurried. The warmth in both colors prevents the clinical cold that pure black-on-white creates at screen luminosity.

Factory Rust is the editorial choice that distinguishes *The Margin* from its reference publications. Where The Atlantic uses blue and The New York Review of Books uses grey, rust is the color of working materials — iron oxide, aged metal, brick — and it communicates industrial origin without irony. It is used sparingly enough to retain its emphasis function.

Archive Grey is the palette's workhorse: it handles everything that isn't primary text or primary background without competing with either. Late Shift gives the palette a warm dark mode and ensures that when the visual language goes dark, it retains the warmth of the overall system.

---

**USAGE GUIDELINES**

- **Dominant color:** Newsprint. 60% of any composition's area should be Newsprint in light contexts.
- **Structural color:** Press Ink for all text. Never use Archive Grey for body text — only for secondary information.
- **Accent rule:** Factory Rust appears on no more than 5–10% of any composition's visual area. Never use as a background for text larger than 14pt.
- **Avoid:** Factory Rust + Late Shift combination (clash). Newsprint as a text color (illegible on most backgrounds). Pure #FFFFFF or #000000 anywhere in the system — these break the warmth of the palette.
- **Dark mode:** Late Shift background, Newsprint text, Factory Rust accent. Archive Grey for secondary text.

---

**AI PROMPT COLOR LANGUAGE**

For any AI-generated image within *The Margin* visual system:

- **Light editorial context:** `"warm off-white background, muted desaturated palette with warm earth tones, ink-dark primary elements, no bright colors, no pure white"`
- **Dark editorial context:** `"deep warm dark background, near-black with amber undertones, rust accent elements, muted warm tones, no cold blues or pure blacks"`
- **Documentary/photographic context:** `"warm film palette, slightly desaturated, earth tones, grain texture, warm shadows with amber undertones, no digital sharpness"`
- **Neutral context:** `"warm neutral palette, mid-tones, ochre and slate greys, no saturated colors, documentary aesthetic"`

---

## Known Limitations
- Hex codes provided here are developed from qualitative inputs — they are a strong starting point, but final color values should be confirmed by a designer who can test them across different screens, print outputs, and accessibility standards
- Color accessibility (WCAG compliance for web) is not checked in this output — the user must verify that text colors meet contrast ratios for their platform; the Press Ink / Newsprint pairing typically passes but should be confirmed with an accessibility checker
- AI image generators interpret color instructions loosely — the prompt color language provided here is directional, not precise; exact hex color matching is not possible in current AI image generation
- This skill produces a color brief, not a complete brand style guide; the full visual identity (typography, spacing, iconography, logo) requires additional design work

## Related Skills
- [mood-board-brief](../art-direction/mood-board-brief.md)
- [visual-identity-prompt](../art-direction/visual-identity-prompt.md)
- [cover-image-pipeline](../../workflows/cover-image-pipeline.md)
