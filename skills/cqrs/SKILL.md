---
name: cqrs
description: "Use when reads and writes of the same data have genuinely diverged — different shapes, scaling, or consistency needs — and you are weighing whether to model them as two separate paths."
---

# CQRS

Dr. Dub's stance on Fowler's [CQRS](https://martinfowler.com/bliki/CQRS.html).

## Our applied stance
Command Query Responsibility Segregation: use a different model to write data than to read it. The write side enforces invariants; the read side is shaped for queries and may be denormalized, cached, or served from a separate store.

Reach for it only on a genuine divergence — the read shape and write shape have pulled apart, or they must scale or stay consistent on different terms.

## Trap
Don't split read from write by default. One model for both is the right starting point; CQRS doubles the moving parts and invites eventual-consistency bugs. Splitting pre-emptively is the classic over-engineering tax — wait until a single model is provably fighting you, then separate the one slice that diverged, not the whole system.

## Compose
Record the decision to split, and why, as `lw:adr`; build each side via `lw:implementer`. Sits under `lw:architect`.
