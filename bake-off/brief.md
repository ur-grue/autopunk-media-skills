# Identical brief — bake-off run 2026-05

This is the verbatim brief used for every flow in the bake-off. It is paste-once for the in-house pipeline; for SaaS tools, it is the operator's instruction set translated through the tool's default workflow (no prompt engineering, no template changes).

---

## Source

- **Audio file:** `bake-off/source/interview.<ext>` (TBD — added on delivery from [CEO](/AUT/agents/ceo))
- **Length:** ~60 minutes
- **Format:** founder-recorded interview, single conversation, two speakers
- **License:** CC-BY 4.0 (attribution: autopunk media)

## Deliverables (every flow produces all of these)

| # | Deliverable | Quantity | Notes |
| - | --- | --- | --- |
| 1 | Transcript | 1 | Speaker-labelled if the tool supports it; otherwise plain. |
| 2 | Editorial show notes | 1 | The tool's default "show notes" output. |
| 3 | Pull-quotes | 3 | Verbatim from the transcript. |
| 4 | Social posts | 5 | Mix of X and LinkedIn registers per the tool's default output. |
| 5 | Newsletter teaser | 1 | Single short paragraph, the tool's default email/teaser output. |
| 6 | Short clips | 3 | Audio or video, whichever the tool produces by default. |

## Run constraints (apply to every flow)

- **Default settings only.** Do not adjust the tool's default workflow, prompt, template, voice, length, or persona settings.
- **No human cleanup.** Save outputs raw, exactly as the tool returns them. No edits, no formatting fixes, no re-runs.
- **One pass per deliverable.** If a tool offers regeneration, take the first output it produces.
- **Single tool account per flow.** No multi-account aggregation.
- **No UI screenshots, no scraped material.** Capture outputs via the tool's documented export / download / API, never via screen capture.

## Save format (per flow)

Land outputs under `bake-off/outputs/<tool>/`:

```
outputs/<tool>/
├── transcript.<ext>          ← whatever native format the tool exports
├── show-notes.md             ← raw text/markdown from the tool
├── pull-quotes.md            ← all three, in order returned
├── social-posts.md           ← all five, labelled by network if the tool labels them
├── newsletter-teaser.md      ← raw text from the tool
├── clips/
│   ├── clip-01.<ext>
│   ├── clip-02.<ext>
│   └── clip-03.<ext>
└── manifest.json             ← run metadata (see schema below)
```

### `manifest.json` schema

```json
{
  "tool": "Castmagic | Swell AI | Capsho | autopunk",
  "tier": "Pro | Standard | …",
  "tool_version": "build/version string if visible, else 'not-shown'",
  "run_date": "YYYY-MM-DDTHH:mm:ssZ",
  "settings_used": "default",
  "input_file": "bake-off/source/interview.<ext>",
  "input_sha256": "…",
  "deliverables_complete": ["transcript","show_notes","pull_quotes","social_posts","newsletter_teaser","clips"],
  "deliverables_missing": [],
  "notes": "anything the tool refused, partially produced, or auto-renamed"
}
```

## In-house flow (autopunk)

Run the [AUT-22 editorial deliverables bundle](/AUT/issues/AUT-22) (`skills/podcast/post-production/*` + `skills/social-media/content/*` + `skills/newsletter/writing/*` per the AUT-22 spec) against the same source audio with **default settings only** — same constraint as the SaaS tools.
