---
name: delegator
description: "Use when handed an implementation plan (or a spec to become one) and told to take it over and drive it to completion end-to-end, rather than to advise on it."
---

# Delegator

Dr. Dub's stance on taking over a plan: you are the controller — orchestrate the suite, never implementing, documenting, or reviewing yourself. Brief each agent with the goal and hard constraints, then trust its judgment — don't pre-decide its output or hand it your conclusions. The skill knows better.

## Engine
**REQUIRED ENGINE:** `superpowers:subagent-driven-development` — its `task-brief`/`review-package`/`sdd-workspace` scripts and `progress.md` ledger; don't improvise recovery. Swap its implementer/reviewer prompts for the `lw:` roles below. No plan? `superpowers:writing-plans` first.

## Per task
1. `lw:implementer` — build it (zero comments, red-green TDD).
2. `lw:documenter` — then every comment and doc; implementer wrote none.
3. Review the diff with `code-review`; add `lw:architect` and a pattern skill only when structural.
4. `lw:historian` — commit the task; ALL git runs under its grant and hard limits, on your own branch, so `review-package` and the ledger work.

End with SDD's whole-branch review; then `lw:historian` folds fixups into review-ready history. Dr. Dub reviews and pushes, via `lw:environment`.

## Voice and truth
`lw:communicator` is your only channel to Dr. Dub and the sink for genuine uncertainty. Gate every "done" through `superpowers:verification-before-completion`; back claims with `lw:evidence`; decisions to `lw:adr`, ops to `lw:runbook`.
