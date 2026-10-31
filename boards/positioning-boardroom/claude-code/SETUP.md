# Positioning Boardroom — Claude setup (Desktop app, no terminal)

Claude Code runs inside the Claude Desktop app as a Code tab. No Node, no npm, no terminal.

What's in this pack:
- `skills/positioningboard/SKILL.md` — the command, in the recommended Skill format
- `positioningboard.md` — the same command in the legacy command format (works too)
- `course-context-template.md` — optional. Calibrates the board to your class
- `CLAUDE.md` — always-on instructions

Steps:
1. Download the Claude Desktop app from claude.com/download and install it. You need a paid Claude plan (Pro, Max, Team, or Enterprise). On Windows, install Git for Windows (git-scm.com/downloads/win) first, then restart the app.
2. Put the command where Claude can find it. Two options:
   - Recommended: copy the whole `positioningboard` folder from `skills/` into `~/.claude/skills/` (so you have `~/.claude/skills/positioningboard/SKILL.md`).
   - Or legacy: copy `positioningboard.md` into `~/.claude/commands/`.
   (In Finder, press Cmd+Shift+Period to show the hidden `.claude` folder, or use Go, then Go to Folder, and paste `~/.claude`.)
3. Optional but recommended: fill in `course-context-template.md` and save it as `~/open-boardrooms/course-context.md`. Copy `CLAUDE.md` into `~/.claude/` for the always-on rules.
4. Put the venture you want reviewed in a short markdown or text file. Open the Code tab, pick that folder, type `/positioningboard`, and answer the intake. Approve the file writes when prompted.

Output lands in `./boardroom-runs/[venture-name]/`. In Claude the advisors can run in parallel.

Prefer the terminal? Install the CLI with the native installer (`curl -fsSL https://claude.ai/install.sh | bash`) or `npm install -g @anthropic-ai/claude-code`, then use the same `/positioningboard`.
