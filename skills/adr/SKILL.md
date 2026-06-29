---
name: adr
description: "Use when an architectural question, trade-off, or choice surfaces and the decision (or the open question) should be recorded — not buried in a comment or a chat log."
---

# ADR

Architectural Decision Records. When code work raises a choice that future readers will ask "why?" about, capture it as an ADR — never as an inline comment. Doctrine and prose style come from `lw:documenter`.

## Surface, then record
Notice architectural questions as they arise and write them down even unresolved — a "Proposed" ADR is a logged open question. One decision per record, atomic and numbered.

## Format (Nygard / MADR)
Short markdown, these sections:
- **Title** — `NNNN-short-slug`.
- **Status** — Proposed | Accepted | Superseded by `NNNN`.
- **Context** — forces and constraints, no narrative.
- **Decision** — what was chosen, active voice.
- **Consequences** — results, good and bad; what this now forecloses.

See https://adr.github.io for the standard and templates.

## Place and link
Co-locate ADRs with the architectural docs they bear on (e.g. `docs/adr/`). Never edit an accepted ADR's decision — supersede it with a new one and update statuses. Code touching the decision LINKS to the ADR (`// NOTE:` + path) rather than re-explaining it.
