# Set up the Hiring Board in Gemini / Antigravity (10-15 minutes)

Antigravity is the successor to the retired Gemini CLI. You'll install a `hiringboard` workflow that runs a five-advisor hiring board on your next hire, one advisor at a time (longer than the Claude version, same result).

## Steps
1. Install Antigravity and sign in.
2. Copy `hiringboard.md` from this pack into your global workflows folder:
   `~/.gemini/antigravity/global_workflows/hiringboard.md`
   - If that path has moved in your version, check the current Antigravity docs for "global workflows" and use the folder they name. The file itself is portable.
3. Copy `GEMINI.md` from this pack to `~/.gemini/GEMINI.md` (or merge its lines in). This tells Gemini what to do when you say "run the hiring board."
4. Start a chat and say: **"Run the hiring board on my next hire."** Paste your filled-in `course-context-template.md` when asked.

## Before you run
Fill in section 2 of `course-context-template.md`. Name a working folder first and tell Gemini to write the five deliverables (decision, scorecard, changelog, board summary, dashboard) there.

## If it goes sideways
- Advisors blur together? Tell it: "Keep each advisor in their own method and have them disagree by name in Round 2."
- Verdicts too soft? Tell it: "HIRE is rare. Re-run and earn each verdict."
