# Teaching Boardroom — Claude setup (Desktop app, no terminal)

Claude Code now runs inside the Claude Desktop app as a Code tab. No Node, no npm, no terminal.

What's in this pack:
- `skills/teachingboard/SKILL.md` — the command, in the recommended Skill format
- `teachingboard.md` — the same command in the legacy command format (works too)
- `board.md` — the user's 19-member starter board (an example to copy and trim)
- `teaching-board-profile-template.md` — your profile file (context + board + memory)
- `CLAUDE.md` — always-on instructions

Steps:
1. Download the Claude Desktop app from claude.com/download and install it. You need a paid Claude plan (Pro, Max, Team, or Enterprise). On Windows, install Git for Windows (git-scm.com/downloads/win) first, then restart the app.
2. Put the command where Claude can find it. Two options:
   - Recommended: copy the whole `teachingboard` folder from `skills/` into `~/.claude/skills/` (so you have `~/.claude/skills/teachingboard/SKILL.md`).
   - Or legacy: copy `teachingboard.md` into `~/.claude/commands/`.
   (In Finder, press Cmd+Shift+Period to show the hidden `.claude` folder, or use Go → Go to Folder and paste `~/.claude`.)
3. Build your profile (the three prompts in Step 0 of the Run page, or start from `board.md`) and save it as `~/.claude/data/teachingboard-preferences.md`, or anywhere inside your project folder.
4. Optional: copy `CLAUDE.md` into `~/.claude/` for the always-on instructions.
5. Open the Code tab, pick the project folder that holds your artifact, type `/teachingboard`, and answer the artifact path and learning objective. Approve the file writes when prompted.

Output lands in your project folder (or `~/teaching-boardroom/runs/[artifact-name]/`). In Claude the advisors can run in parallel.

Prefer the terminal? Install the CLI with the native installer (`curl -fsSL https://claude.ai/install.sh | bash`) or `npm install -g @anthropic-ai/claude-code`, then use the same `/teachingboard`.
