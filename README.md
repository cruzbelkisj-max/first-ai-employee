# The AI Assistant Starter Kit

A self-installing onboarding kit that helps a busy solopreneur or service-business
owner build their first AI assistant inside Claude Code, even if they have never
used a terminal. Built by Belkis Cruz.

## What the buyer gets

- `/employee:start` — branded welcome and roadmap.
- `/employee:build` — a short interview that writes their personalized `~/.claude/CLAUDE.md`. This is the core deliverable: an assistant that knows their business.
- `/employee:skill` — they build their first custom skill from plain English.
- `/employee:update` — pulls future updates.
- The `follow-up` skill — a working skill that drafts follow-up messages to quiet leads.

## How it ships (for you, the seller)

This kit is already wired for the public repo at
`github.com/cruzbelkisj-max/first-ai-employee`.

The buyer's one-line install (pasted into the Claude Code chat):

```
Please run: curl -sL https://raw.githubusercontent.com/cruzbelkisj-max/first-ai-employee/main/install.sh | bash
```

Then they restart Claude Code and type `/employee:start`.

## Prerequisites the buyer must have (disclose on the sales page)

- A **paid** Claude plan (Pro ~$20/mo minimum). The free plan does not include Claude Code.
- Claude Code installed (Desktop app = no terminal needed).
- They do NOT need git or Node.

See `START-HERE.md` for the buyer-facing setup walkthrough.

## Rebranding

The command namespace is `employee` (the folder name under `commands/`). To rebrand,
rename that folder and update the matching paths in `install.sh`. The host persona is
set inside each command file.
