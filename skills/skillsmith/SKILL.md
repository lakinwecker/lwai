---
name: skillsmith
description: "Use when about to write, design, or scaffold a new Claude Code skill — or when deciding whether a new skill is even warranted."
---

# Skillsmith

Dr. Dub's house stance on authoring skills. Bias: write nothing you can borrow.

## Before writing, exhaust reuse — in this order
1. **Check `lw:` first.** List `~/.claude/skills/lw/skills/`. If a proposed skill overlaps `lw:communicator` or any sibling, do NOT duplicate — point to it and compose. Prefer invoking an existing `lw:` skill over re-implementing its job.
2. **Check loaded skills + plugins.** Scan `~/.claude/skills/` and active plugins (gstack, superpowers, etc.). Name any overlap explicitly and stop if it's already covered.
3. **Check the web.** A highly-rated published skill likely solves it. See [anthropics/skills](https://github.com/anthropics/skills), [ComposioHQ/awesome-claude-skills](https://github.com/ComposioHQ/awesome-claude-skills), the [agentskills.io spec](https://agentskills.io/specification), and [Anthropic's best-practices](https://www.anthropic.com/engineering/equipping-agents-for-the-real-world-with-agent-skills). Reuse beats reinvention.

## If you must write one
- **Short. Under 200 words.** A skill about brevity is brief.
- Don't re-teach mechanics — defer to `superpowers:writing-skills` for structure and testing.
- Frontmatter: bare lowercase `name`; `description` a third-person "Use when…" trigger only, no workflow summary.
- Compose with `lw:` skills; never clone their function.
