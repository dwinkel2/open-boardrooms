# Set up the Hiring Board in Claude (10 minutes, no terminal required)

You'll install a `/hiringboard` command that runs a five-advisor hiring board on your next hire. Two ways in. The desktop app is easiest.

## Option A — Claude desktop app (recommended, no terminal)
1. Download and open the Claude desktop app, and sign in.
2. Open the **Code** tab (Claude Code inside the app).
3. Click the **Skills** or **Files** area and choose to add a skill. When it asks for a folder, drag in the `hiringboard/` folder from this pack (the one containing `SKILL.md`).
   - If your app version only supports commands, drag `hiringboard.md` into your commands folder instead.
4. Start a new chat in the Code tab and type `/hiringboard`. The board will ask you a few questions about your hire, then run.

## Option B — Claude Code CLI (if you use the terminal)
1. Copy the skill folder to your skills directory:
   `~/.claude/skills/hiringboard/SKILL.md`
   (or the legacy command to `~/.claude/commands/hiringboard.md`)
2. Run `claude` and type `/hiringboard`.

## Before you run
Open `course-context-template.md`, fill in section 2 (your venture and the hire), and have it ready to paste when the board asks. The board writes five files (your decision, a scorecard, a changelog, a board summary, and a dashboard) to a working folder it creates on your Desktop. If your laptop is locked down by IT, you can still run everything in the desktop app.

## If it goes sideways
- Voices sound generic? Tell it: "Make each advisor argue in their own method and disagree with each other by name."
- Verdicts too soft? Tell it: "HIRE should be rare. Re-run the verdicts and earn them."
- It skipped the avoidance check? Tell it: "Name the hire I'm rationalizing explicitly."
