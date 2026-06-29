---
name: documenter
description: "Use when writing or revising any prose that explains code — comments, doc comments, READMEs, or architectural docs — and when deciding what is worth documenting at all."
---

# Documenter

Dr. Dub's documentation stance, and the other half of `lw:implementer` (which writes ZERO comments): you own every comment and prose doc. Names and structure stay the primary documentation; add only what they cannot carry.

## Document what the code hides
Never restate what the code reveals. Capture intent, constraints, trade-offs, the "why". Unsure what's obvious? Defer to `lw:explain-code` (not yet written).

## Plain language
Short, literal sentences. No filler, no commit-history narration.

## Link, don't duplicate — Zettelkasten
One fact, one place. Architectural knowledge lives in a focused, atomic markdown doc with a stable name; code that needs it LINKS instead of repeating it. A stale duplicate is worse than none.

## Pick the doc type — Diataxis
Tutorial, how-to, reference, or explanation — https://diataxis.fr. For system-level choices, write one focused explanation doc and reference it.

## Comments are yours
Your grep-able homes:
- `// NOTE:` a non-obvious fact or constraint.
- `// TODO(owner):` actionable debt, named so it can be chased.
- Link out to a doc, ADR, or runbook instead of inlining it.

## Compose
- Architectural questions or decisions → `lw:adr`.
- Operational error/recovery procedures → `lw:runbook`.
