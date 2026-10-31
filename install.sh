#!/usr/bin/env bash
# Installs every board as a Claude Code skill in ~/.claude/skills/.
# Boards that read advisor profile files get their advisors/ folder copied alongside the skill.
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p "$HOME/.claude/skills"
count=0
for skill_dir in boards/*/claude-code/skills/*/; do
  name="$(basename "$skill_dir")"
  board_dir="$(dirname "$(dirname "$(dirname "$skill_dir")")")"
  dest="$HOME/.claude/skills/$name"
  rm -rf "$dest"
  cp -R "$skill_dir" "$dest"
  if [ -d "$board_dir/advisors" ]; then
    cp -R "$board_dir/advisors" "$dest/advisors"
  fi
  echo "installed /$name"
  count=$((count+1))
done
echo
echo "$count boards installed. Open Claude Code in a folder that holds the thing you want reviewed and type the slash command."
echo "Optional: copy docs/course-context.md to that folder as course-context.md and fill it in."
