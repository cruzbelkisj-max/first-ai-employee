# Start Here

Welcome. This takes about 5 minutes before the fun part.

You need three things before your assistant can exist. Do them in order.

---

## 1. Get a Claude plan (required)

Claude Code runs on a paid Claude plan. The free plan does not include it.

- Go to **claude.ai** and subscribe to **Claude Pro** (about $20/month). Pro is plenty to start.
- (If you already have Pro, Max, Team, or an API key, you are set.)

This is the only ongoing cost. The kit itself is a one-time thing you keep.

---

## 2. Install Claude Code

Pick the path that sounds least scary. Both end in the same place.

**Path A — Desktop app (no terminal, recommended):**

- Download the Claude Code desktop app for your computer:
  - Mac: https://claude.ai/download
  - Windows: https://claude.com/download
- Open it and log in with the account from Step 1.

**Path B — Terminal (if you like the command line):**

- Open Terminal (Mac) or PowerShell (Windows).
- Paste this and hit enter:
  - Mac: `curl -fsSL https://claude.ai/install.sh | bash`
  - Windows: `irm https://claude.ai/install.ps1 | iex`
- Then type `claude` and log in.

You do NOT need git. You do NOT need Node. Ignore anyone who says otherwise.

---

## 3. Install the kit (one paste, no terminal)

You are now inside Claude Code. You do not need to open a terminal.

Paste this exact message into the chat and hit enter:

```
Please run this for me: curl -sL https://raw.githubusercontent.com/cruzbelkisj-max/first-ai-employee/main/install.sh | bash
```

Claude will run it and confirm it installed.

---

## 4. Restart Claude Code (important)

New commands only load when Claude Code starts up.

- Quit Claude Code completely, then open it again.
- (Desktop app: close the window and reopen. Terminal: type `exit`, then `claude`.)

Skip this and the next step will say "Unknown command". The restart is the fix.

---

## 5. Start

Type this and hit enter:

```
/employee:start
```

That is it. Your assistant build begins.

---

*Stuck? The most common issue is being on the free Claude plan. Step 1 fixes it.*
