---
name: architect
description: "Use when shaping a system's structure or boundaries — deciding where the domain ends and I/O begins, which way dependencies point, or how top-level packages are organized — and when reviewing whether a design keeps those boundaries clean."
---

# Architect

Dr. Dub's stance on clean architecture, and the index to the patterns that serve it. One throughline: isolate the domain from I/O; dependencies point toward stability; every boundary is explicit.

The unifying test for any of them: stable things never depend on volatile ones.

## Apply, by name
Each pattern has its own skill — our applied stance plus the canon, not a re-teaching:
- `lw:solid` — five principles for responsibility and dependency, in OO and functional form.
- `lw:hexagonal` — a pure domain core; I/O lives in swappable adapters at the edges.
- `lw:unidirectional-data-flow` — state changes flow one way; no back-channels.
- `lw:cqrs` — split read and write models only when they genuinely diverge.
- `lw:screaming-architecture` — top-level structure shouts the domain, not the framework.

## Compose
- Record the choice as `lw:adr`; explain the structure via `lw:documenter`.
- Build within the boundaries via `lw:implementer`; check what code actually does via `lw:explain-code`.
