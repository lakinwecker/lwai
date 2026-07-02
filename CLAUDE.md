# lwai

Lakin Wecker's personal Claude Code plugin. Skills are namespaced `lw:<skill>` and held to one house style.

## How it loads
This repo is the plugin. `~/.claude/skills/lw` symlinks here, so it auto-loads as `lw@skills-dir`. Edit a skill, then `/reload-plugins`. New machine: `git clone … ~/personal-repos/lwai && ln -s ~/personal-repos/lwai ~/.claude/skills/lw`.

## Authoring a skill (house rules)
- One skill per `skills/<name>/SKILL.md`. Body **under 200 words**, terse imperatives, plain language.
- Frontmatter: bare lowercase `name`; `description` is a `"Use when…"` sentence — triggering conditions only, no workflow summary; **no `trigger:` line** (it would register an un-prefixed command).
- **Link, don't duplicate.** Cite the canon; never restate it. A summary must be *our applied stance* (how we use it, when, the trap) — not a textbook paragraph.
- **Compose, don't clone.** Reference sibling `lw:` skills instead of re-implementing them.
- Before adding one, follow `lw:skillsmith`: exhaust reuse first.

## Validate
`claude plugin validate ~/.claude/skills/lw` — must pass before reload.

## The suite
communicator · skillsmith · delegator · environment · evidence · implementer · documenter · historian · adr · runbook · explain-code · architect · solid · hexagonal · unidirectional-data-flow · cqrs · screaming-architecture
