# Set up the Kill Board in Claude (10 minutes, no terminal required)

You'll install a `/killboard` command that runs a five-advisor board on the one decision nobody else will make with you: should this venture DOUBLE DOWN, PIVOT, or KILL. Two ways in. The desktop app is easiest.

## Option A — Claude desktop app (recommended, no terminal)
1. Download and open the Claude desktop app, and sign in.
2. Open the **Code** tab (Claude Code inside the app).
3. Click the **Skills** or **Files** area and choose to add a skill. When it asks for a folder, drag in the `killboard/` folder from this pack (the one containing `SKILL.md`).
   - If your app version only supports commands, drag `killboard.md` into your commands folder instead.
4. Start a new chat in the Code tab and type `/killboard`. The board will ask you a few questions about your venture, then run.

## Option B — Claude Code CLI (if you use the terminal)
1. Copy the skill folder to your skills directory:
   `~/.claude/skills/killboard/SKILL.md`
   (or the legacy command to `~/.claude/commands/killboard.md`)
2. Run `claude` and type `/killboard`.

## Before you run
Open `course-context-template.md`, fill in section 2 (your venture and its numbers), and have it ready to paste when the board asks. The board writes five files (your continue case, a decision memo, a changelog, a board report, and a dashboard) to a working folder it creates on your Desktop. If your laptop is locked down by IT, you can still run everything in the desktop app.

## If it goes sideways
- Voices sound generic? Tell it: "Make each advisor argue in their own method and disagree with each other by name."
- Verdicts too soft? Tell it: "The room refuses to clap. Re-run the verdicts and earn them: a DOUBLE DOWN needs kill criteria, a KILL needs what I keep."
- It let sunk cost slide? Tell it: "Call out sunk cost out loud wherever my case leans on it."
