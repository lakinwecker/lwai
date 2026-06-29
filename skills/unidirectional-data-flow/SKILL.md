---
name: unidirectional-data-flow
description: "Use when designing how state changes move through a system — a UI, a reducer, an event loop — and you want one predictable path from action to new state instead of scattered mutations and back-channels."
---

# Unidirectional Data Flow

Dr. Dub's stance on the [Elm Architecture](https://guide.elm-lang.org/architecture/) (Redux is the same shape).

## Our applied stance
State changes flow one direction only: a message describes what happened, a pure function folds it into new state, the view is a function of that state. No component reaches back to mutate a parent; no hidden two-way binding. The same sequence of messages always yields the same state — which makes the whole thing replayable and testable with no running UI.

Reach for it whenever "who changed this?" gets hard to answer, or when state lives in several places that must agree.

## Trap
Don't smear the update logic across event handlers — the fold stays one pure function over a single state value. The moment a handler mutates shared state directly, you have reintroduced the back-channel the pattern exists to remove.

## Compose
Build the update function via `lw:implementer`; record the state shape as `lw:adr`. Sits under `lw:architect`.
