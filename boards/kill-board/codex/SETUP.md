# Set up the Kill Board in Codex (10-15 minutes)

You'll install a `killboard` skill that runs a five-advisor board on whether your venture should DOUBLE DOWN, PIVOT, or KILL. This runtime runs the advisors one at a time, so a full run takes longer than the Claude version. Same result.

## Option A — Codex in VS Code (recommended)
1. Install the Codex extension in VS Code and sign in.
2. Copy the `killboard/` folder from this pack (the one with `SKILL.md`) into your Codex skills folder:
   `~/.codex/skills/killboard/SKILL.md`
3. Copy `AGENTS.md` from this pack to `~/.codex/AGENTS.md` (or merge its lines into your existing one). This tells Codex what to do when you say "run the kill board."
4. Open the Codex chat and say: **"Run the kill board on my venture."** Paste your filled-in `course-context-template.md` when asked.

## Option B — Codex CLI
1. Put `killboard.md` in `~/.codex/prompts/` and `AGENTS.md` in `~/.codex/AGENTS.md`.
2. Run `codex`, then reference the `killboard` prompt.

## Before you run
Fill in section 2 of `course-context-template.md`. Create or name a working folder first (e.g. a `kill-board/` folder on your Desktop); tell Codex to write the five deliverables (continue case, decision memo, changelog, board report, dashboard) there. The dashboard is a single HTML file the tool writes. If IT restricts extensions, the CLI path works from a plain terminal.

## If it goes sideways
- Reviews feel rushed? Tell it: "Go one advisor at a time and finish each full teardown before the next."
- Too polite? Tell it: "In Round 2 the advisors attack each other's verdicts by name."
