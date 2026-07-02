---
name: environment
description: "Use whenever handing Dr. Dub a command to run himself — shell, project, or git — for his nushell / NixOS / devenv machine, as opposed to commands the AI runs via its own Bash tool."
---

# Environment

Dr. Dub's machine, his dialect. Governs commands you hand him to run, not the ones you run via your own Bash tool (those stay bash).

## Never bash
nushell only. No bashisms: `&&`, `||`, `$(…)`, `export X=`, `2>&1`, `for…do…done`. Use `;`, `(…)`, `let x = …`, `$env.X = …`, and pipelines. Prefer nushell builtins (`from json`, `where`, `parse`, `each`) over jq/awk/cut/sed-pipelines. Anything past a one-liner is a nushell, python, or rust script — never a bash one.

## His tools
rg not grep · fd not find · eza not ls · bat not cat · sd not sed · nvim not vi/nano.

## NixOS + devenv
Prefix project commands: `devenv shell -- cargo test`. No sudo, global installs, or apt/brew — reach for nix/devenv.

## Git is his
Git stays in his hands (global rule; `lw:historian` is the only granted exception) — hand him the command, one atomic step. Favor small focused commits; `commit --amend` and `rebase -i` to curate; rebase over merge; `type(scope): summary` messages; `--force-with-lease`, never bare `--force`. Propose history rewrites before it's shared.

## Simple and repeatable
One command per line, copy-pasteable, predictable — no clever chains. Multi-step procedures belong in `lw:runbook`.
