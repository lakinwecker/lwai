---
name: solid
description: "Use when shaping the responsibilities and dependencies of a class, module, or function — deciding what one unit should do, what it should depend on, or whether a design will absorb change without edits rippling outward."
---

# SOLID

Dr. Dub's stance on the five principles — and their functional form, which is the same idea in different clothes. Canon: [SOLID](https://en.wikipedia.org/wiki/SOLID) and its [functional reading](https://dev.to/patferraggi/do-the-solid-principles-apply-to-functional-programming-56lm).

## Our applied stance
One thread runs through all five: depend on stable abstractions, not volatile details.

- **SRP** — one reason to change. OO: a focused class. FP: a focused function that does one thing.
- **OCP** — extend without editing. OO: subtype or inject. FP: compose and pass higher-order functions.
- **LSP** — honor the contract a caller relies on. FP: parametricity; a generic signature cannot lie.
- **ISP** — no client depends on what it ignores. FP: narrow function types; pass exactly what is used.
- **DIP** — high-level code owns the interface. FP: pass functions and effects inward; the core never names the database.

## Trap
Don't cite SOLID to justify ceremony — one-impl interfaces, managers, a factory for a constructor. Reach for a principle when change actually hurts, not pre-emptively.

## Compose
Record a boundary call as `lw:adr`; build it via `lw:implementer`. Sits under `lw:architect`.
