#!/usr/bin/env bash
# Install Hemi's session-memory kit into a repo.
# Usage: bash kit/install.sh /path/to/repo
# Never overwrites an existing CLAUDE.md or notes file; refreshes skills, agents and hook.
set -euo pipefail
KIT="$(cd "$(dirname "$0")" && pwd)"
REPO="${1:?usage: install.sh /path/to/repo}"
mkdir -p "$REPO/.claude/skills" "$REPO/.claude/agents" "$REPO/notes"
cp -R "$KIT/.claude/skills/." "$REPO/.claude/skills/"
cp -R "$KIT/.claude/agents/." "$REPO/.claude/agents/"
[ -f "$REPO/.claude/settings.json" ] || cp "$KIT/.claude/settings.json" "$REPO/.claude/settings.json"
for f in session-log.md backlog.md decisions.md; do
  [ -f "$REPO/notes/$f" ] || cp "$KIT/notes/$f" "$REPO/notes/$f"
done
[ -f "$REPO/CLAUDE.md" ] || cp "$KIT/CLAUDE.template.md" "$REPO/CLAUDE.md"
echo "Kit installed in $REPO. Fill in CLAUDE.md if it's still the template."
