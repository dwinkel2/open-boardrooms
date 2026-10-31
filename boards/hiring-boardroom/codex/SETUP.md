# Set up the Hiring Board in Codex (10-15 minutes)

You'll install a `hiringboard` skill that runs a five-advisor hiring board on your next hire. This runtime reviews the advisors one at a time, so a full run takes longer than the Claude version. Same result.

## Option A — Codex in VS Code (recommended)
1. Install the Codex extension in VS Code and sign in.
2. Copy the `hiringboard/` folder from this pack (the one with `SKILL.md`) into your Codex skills folder:
   `~/.codex/skills/hiringboard/SKILL.md`
3. Copy `AGENTS.md` from this pack to `~/.codex/AGENTS.md` (or merge its lines into your existing one). This tells Codex what to do when you say "run the hiring board."
4. Open the Codex chat and say: **"Run the hiring board on my next hire."** Paste your filled-in `course-context-template.md` when asked.

## Option B — Codex CLI
1. Put `hiringboard.md` in `~/.codex/prompts/` and `AGENTS.md` in `~/.codex/AGENTS.md`.
2. Run `codex`, then reference the `hiringboard` prompt.

## Before you run
Fill in section 2 of `course-context-template.md`. Create or name a working folder first (e.g. a `hiring-board/` folder on your Desktop); tell Codex to write the five deliverables there. If IT restricts extensions, the CLI path works from a plain terminal.

## If it goes sideways
- Reviews feel rushed? Tell it: "Go one advisor at a time and finish each full review before the next."
- Too polite? Tell it: "In Round 2 the advisors attack each other's recommendations by name."
