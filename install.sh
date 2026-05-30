#!/bin/bash

# The AI Assistant Starter Kit — Installer
# by Belkis Cruz / Belkis Cruz Consulting
#
# Installs a self-contained AI-assistant onboarding kit into Claude Code.
# Run from inside Claude Code (paste the one-liner into chat) or from a terminal:
#   curl -sL https://raw.githubusercontent.com/cruzbelkisj-max/first-ai-employee/main/install.sh | bash

set -e

# Where the kit's raw files are hosted. Replace with your own GitHub raw base URL,
# e.g. https://raw.githubusercontent.com/<you>/ai-assistant-kit/main
REPO="https://raw.githubusercontent.com/cruzbelkisj-max/first-ai-employee/main"

GREEN='\033[0;32m'; BOLD='\033[1m'; NC='\033[0m'

echo ""
echo "  ┌──────────────────────────────────────────────┐"
echo "  │   THE AI ASSISTANT STARTER KIT                │"
echo "  │   Installing...                               │"
echo "  └──────────────────────────────────────────────┘"
echo ""

# Download a file from the repo to a local path
dl() { curl -sf "$REPO/$1" -o "$2"; }
# Download only if it does not already exist (preserves user edits)
dl_seed() { [ -f "$2" ] || curl -sf "$REPO/$1" -o "$2"; }

echo "  Creating folders..."
mkdir -p ~/.claude/commands/employee
mkdir -p ~/.claude/skills/follow-up
mkdir -p ~/.assistant-kit

echo "  Installing commands..."
for cmd in start build skill update; do
  dl "commands/employee/${cmd}.md" "$HOME/.claude/commands/employee/${cmd}.md"
done

echo "  Installing the follow-up skill..."
dl "skills/follow-up/SKILL.md" "$HOME/.claude/skills/follow-up/SKILL.md"

echo "  Installing support files..."
dl "CHANGELOG.md" "$HOME/.assistant-kit/CHANGELOG.md"
dl "START-HERE.md" "$HOME/.assistant-kit/START-HERE.md"

# Verify
COMMANDS=$(ls ~/.claude/commands/employee/*.md 2>/dev/null | wc -l | tr -d ' ')
SKILL=$(ls ~/.claude/skills/follow-up/SKILL.md 2>/dev/null | wc -l | tr -d ' ')

echo ""
if [ "$COMMANDS" -ge 4 ] && [ "$SKILL" -ge 1 ]; then
  echo -e "  ${GREEN}${BOLD}Installed.${NC}"
  echo ""
  echo "  IMPORTANT: restart Claude Code so the new commands load."
  echo "  Quit Claude Code, open it again, then type  /employee:start"
  echo ""
else
  echo "  Something went wrong. Got $COMMANDS commands, $SKILL skill."
  echo "  Check your internet and the install URL, then try again."
  echo ""
fi
