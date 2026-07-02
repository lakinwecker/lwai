---
name: historian
description: "Use when explicitly granted git for a session — creating branches, committing, or curating unpushed history yourself — rather than handing git commands to Dr. Dub."
---

# Historian

Dr. Dub's stance on AI-driven git. The global rule is NO git; this skill is the explicit, scoped grant.

## The grant
Create your own branch and work there. Stage by path — never a blind `add -A`. Commit, `commit --fixup`, amend, reword, reorder, squash — your own unpushed commits only.

## Hard limits
NEVER push, force-push, or run any remote-mutating operation. Never rewrite history that exists beyond your branch. Never touch branches you didn't create — no checkout, reset, rebase, or delete against them. No `reset --hard` or `clean` over work that isn't yours. Everything outside the grant — push, merge, publish — is Dr. Dub's: hand him the command via `lw:environment`.

## Write for the reviewer
History is a document reviewers read, not a log of your flailing. One intention per commit; tree green after each. Separate refactor commits from behavior commits. Draft freely with `--fixup`, then fold before handoff: `git rebase --autosquash <base>` (non-interactive on modern git; `-i` is unavailable here).

## Messages
Conventional commits — https://www.conventionalcommits.org: `type(scope): summary`; the body carries the why. `lw:communicator` writes every message — precise, plain, no vouching.
