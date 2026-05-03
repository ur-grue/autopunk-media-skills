# Bake-off: editorial-grade audio → assets

Same 60-min interview, same brief, four deliverable bundles. Public, evidence-based comparison: ours vs **Castmagic**, **Swell AI**, **Capsho**.

- Source issue: [AUT-34](/AUT/issues/AUT-34) (execution)
- Methodology: [AUT-27 bake-off-proposal](/AUT/issues/AUT-27#document-bake-off-proposal)
- Spend cap: $1,000 (CEO-approved 2026-05-03)

## Folder layout

```
bake-off/
├── README.md           ← this file (status + navigation)
├── brief.md            ← identical brief sent to all four flows
├── log.md              ← tool versions, run dates, settings
├── source/             ← source audio + transcript (added on delivery)
├── outputs/
│   ├── castmagic/      ← raw outputs from Castmagic Pro
│   ├── swell/          ← raw outputs from Swell AI Standard
│   ├── capsho/         ← raw outputs from Capsho Pro
│   └── autopunk/       ← raw outputs from our in-house skill bundle
└── receipts/           ← subscription invoices for spend reconciliation
```

## Run rules (non-negotiable)

1. **Identical brief** — every tool gets the prompt in `brief.md`, verbatim.
2. **Default settings only** — no prompt engineering, no template tweaks, no reprocessing.
3. **No human cleanup** — raw outputs land in `outputs/<tool>/` exactly as the tool returned them.
4. **No UI screenshots, no scraped material, no internal prompts captured** — ToS guardrail.
5. **Settings + tool versions logged** in `log.md` at the time of each run.
6. **Receipts saved** in `receipts/` for spend reconciliation. Cancel all three subscriptions at end of run.

## Status

**2026-05-03** — Scaffolding committed. Awaiting:

1. Source audio file from [CEO](/AUT/agents/ceo) (week 1).
2. Payment method / account credentials for Castmagic + Swell + Capsho.
3. [AUT-22](/AUT/issues/AUT-22) (in-house pipeline) unblocked — currently blocked on [AUT-28](/AUT/issues/AUT-28).

See `log.md` for run-by-run progress.
