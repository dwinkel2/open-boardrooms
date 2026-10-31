# Set up the Hiring Board in GitHub Copilot (10-15 minutes)

You'll install a `hiringboard` prompt that runs a five-advisor hiring board on your next hire, one advisor at a time (longer than the Claude version, same result).

## Option A — Copilot in VS Code (agent mode)
1. In VS Code, open Settings and enable **`chat.promptFiles`** (this turns on `.prompt.md` files). If your organization locks settings, ask IT to enable it, or use Option B.
2. Copy `hiringboard.prompt.md` from this pack into your workspace at `.github/prompts/hiringboard.prompt.md`.
3. Copy `copilot-instructions.md` into `.github/copilot-instructions.md` (or merge its lines into your existing one).
4. Open Copilot Chat in **agent mode**, type `/hiringboard` (or "run the hiring board"), and paste your filled-in `course-context-template.md` when asked.

## Option B — Copilot desktop app (preview) or CLI
1. Use the `hiringboard/SKILL.md` skill version in this pack with the Copilot app's skills feature or the CLI.
2. Ask it to "run the hiring board on my next hire."

## Before you run
Fill in section 2 of `course-context-template.md`. Name a working folder first and tell Copilot to write the five deliverables there. Copilot works file-by-file, so confirm it writes each deliverable before moving on.

## If it goes sideways
- It stops after one advisor? Tell it: "Continue through all seven advisors, then run Round 2 and Round 3."
- Too polite? Tell it: "Round 2 is a fight. Advisors attack each other's recommendations by name."
