---
name: screaming-architecture
description: "Use when organizing top-level packages, modules, or directories — and you want the structure to announce what the system does, not which framework it was built with."
---

# Screaming Architecture

Dr. Dub's stance on Uncle Bob's [Screaming Architecture](https://blog.cleancoder.com/uncle-bob/2011/09/30/Screaming-Architecture.html).

## Our applied stance
The top level of a codebase should shout its domain. A glance at the directory names should tell you it is a backgammon analyzer — not that it is a web app, nor which framework built it. Organize by what the system *does* — use cases, domain concepts — and let frameworks and I/O sit at the edges as details.

Reach for it whenever you name a new top-level package: ask "does this say what we do, or how we were built?"

## Trap
Don't structure by technical layer (`controllers/`, `models/`, `services/`) — that screams the framework and scatters one feature across many folders. The framework is a delivery detail; it should be invisible from the top, not the headline.

## Compose
Explain the layout via `lw:documenter`; record a structural choice as `lw:adr`. Sits under `lw:architect`.
