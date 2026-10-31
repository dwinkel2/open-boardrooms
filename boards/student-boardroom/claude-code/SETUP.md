# The Student Boardroom: Claude Code setup

What's in this folder:
- `skills/studentboard/SKILL.md`: the board as a Claude Code skill (recommended)
- `studentboard.md`: the same board in the legacy command format (works too)

Steps (Claude Desktop app, no terminal):
1. Install the Claude Desktop app from claude.com/download. You need a paid Claude plan. On Windows, install Git for Windows first, then restart the app.
2. Copy the whole `studentboard` folder from `skills/` into `~/.claude/skills/` so you have `~/.claude/skills/studentboard/SKILL.md`. Or copy `studentboard.md` into `~/.claude/commands/`. (In Finder, press Cmd+Shift+Period to show the hidden `.claude` folder, or use Go > Go to Folder and paste `~/.claude`.) Or run `./install.sh` from the repo root to install every board at once.
3. Optional: write a `course-context.md` in the folder you will run the board from. See `docs/course-context.md`.
4. Put the thing you want reviewed in a text or markdown file. Open the Code tab, pick that folder, type `/studentboard`, and answer the intake. Approve the file writes when prompted.

Output lands in `./boardroom-runs/[run-name]/` inside the folder you ran it from. In Claude Code the advisors can run in parallel.

Prefer the terminal? Install the CLI (`npm install -g @anthropic-ai/claude-code`), then use the same `/studentboard`.
