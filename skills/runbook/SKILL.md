---
name: runbook
description: "Use when documenting how to operate, diagnose, or recover a system in production — on-call procedures, incident response, the steps to take when a specific failure fires."
---

# Runbook

Operational procedures: what an on-call human does when something breaks or needs running. Prose style and link discipline come from `lw:documenter`.

## Write for the 3am reader
Tired, paged, no context. Plain imperative steps, copy-pasteable commands, exact paths. State the goal in one line, then the steps in order.

## Structure
Short markdown per scenario:
- **Trigger / symptom** — what fires this (alert name, error, log line).
- **Diagnose** — how to confirm the cause and check scope.
- **Resolve** — numbered steps; the commands to run.
- **Rollback / escalate** — how to undo, and who to wake if it fails.

## Link from the failure site
The code path that emits an error LINKS to the exact runbook section handling it — `// NOTE:` or a typed error message carrying the doc path. One place describes the recovery; everything else points to it. Keep runbooks current; a wrong runbook is worse than none. Keep them with operational docs (e.g. `docs/runbooks/`).
