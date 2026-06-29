---
name: hexagonal
description: "Use when separating a domain core from the I/O around it — databases, HTTP, queues, a subprocess — so the same logic runs identically whether driven by a test, a CLI, or production."
---

# Hexagonal (Ports & Adapters)

Dr. Dub's stance on Alistair Cockburn's [Ports & Adapters](https://alistair.cockburn.us/hexagonal-architecture/).

## Our applied stance
The domain core is pure and names no technology. It reaches the outside only through **ports** — small interfaces it owns and defines in its own vocabulary. **Adapters** implement those ports against a real database, real HTTP, a real subprocess; a fake adapter implements the same port for tests, so the core is exercised with zero I/O.

Reach for it the moment logic worth testing gets tangled with a side effect. The `trait Gnubg[F[_]]` with its `oneShot` and `session` impls is exactly this: one port, swappable adapters, callers untouched.

## Trap
The port belongs to the domain, in the domain's words — not a thin wrapper named after the vendor (`PostgresPort`). If the interface leaks the technology, the hexagon is drawn at the wrong line and the core still depends on the detail.

## Compose
Build a port or adapter via `lw:implementer`; record why a port exists as `lw:adr`. Sits under `lw:architect`.
