---
brief-type: social-card
format: GitHub Open Graph Preview
dimensions: 1280×640px
status: ready-for-production
---

# Social Card Image Brief — autopunk-media-skills

## Purpose

GitHub social preview image. Appears when the repository URL is shared on Twitter/X, LinkedIn, Slack, iMessage, and any platform that reads Open Graph metadata. First visual impression for every potential user.

---

## Dimensions and Technical Specs

- Canvas: 1280×640px
- Format: PNG (flat, no transparency)
- Safe zone: keep key content within inner 1100×560px — outer 90px may be cropped by some platforms
- Resolution: 72dpi minimum, 144dpi preferred

---

## Color Palette

| Role | Hex | Usage |
|------|-----|-------|
| Background | `#0d1117` | Full canvas — GitHub dark mode native |
| Primary text | `#f0f6fc` | "autopunk" wordmark and main headline |
| Muted text | `#8b949e` | Subtitle, fragment labels, stat line |
| Accent | `#e05c3a` | Single horizontal rule, one character highlight |
| Fragment tint | `#161b22` | Pill/card backgrounds for skill output fragments |

Mood: newspaper backshop at 2am, not a startup landing page. Heavy contrast. No gradients. No drop shadows. No rounded corners on primary elements.

---

## Typography

- **"autopunk"** — Heavy grotesque, all-lowercase, tracking -20 to -40. Size: ~200–240pt. This is the dominant visual element. One character (the hyphen or the "k") may be set in accent red.
- **"media-skills"** — Same font, same size, but weight drops to Regular or Light. Creates visual split within the wordmark.
- **Subtitle** — Mono or condensed sans, 28–32pt, muted color: `102 skills · journalists · producers · creators`
- **Fragment text** — Mono, 14–16pt, inside dark pill shapes. Real skill output lines (see below).
- **Stat line** (bottom right) — Mono, 14pt, muted: `✅ 102 stable  ·  7 categories  ·  G-Eval tested`

---

## Layout Structure

```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│   autopunk-media-skills          [fragment pill]            │
│                                  [fragment pill]            │
│   102 skills for journalists,    [fragment pill]            │
│   producers, and creators                                   │
│                                                             │
│ ─────────────────────────── (accent rule) ──────────────── │
│                                                             │
│                          ✅ 102 stable · 7 categories · G-Eval tested │
└─────────────────────────────────────────────────────────────┘
```

Wordmark: left-aligned, vertically centered in left 55% of canvas.
Fragments: right 38% of canvas, stacked vertically, slightly rotated (±1–2deg) for organic feel.

---

## Fragment Content (use these exact lines)

Three pill-shaped cards, dark background `#161b22`, muted border `#30363d`:

1. `"Before you scroll past — this number will change your life."`
   Label: `hook-generator · youtube`

2. `"A family of deep-sea miners uncovers footage that governments have spent forty years burying."`
   Label: `logline-creator · tv-documentary`

3. `"The silence lasted eleven seconds. In a live press conference, that is a geological age."`
   Label: `reportage-structure · journalism`

---

## Mood Reference

Think: the Economist cover meets a terminal window. Authoritative. Dense. Every element earns its space. The image should communicate "serious professional tool" to a journalist or producer in under one second.
