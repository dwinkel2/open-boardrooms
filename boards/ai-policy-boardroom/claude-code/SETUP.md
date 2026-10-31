# Setup: AI Policy Boardroom for Claude Code

Two ways to install. The Desktop app needs no terminal. The CLI is for people who already live there. Either way, the board becomes one command: `/aipolicyboard`.

## Before you start

Make a working folder. The board writes its files there.

1. Create a folder in your home directory called `ai-policy-boardroom`.
2. Optional: open `course-context-template.md` from this pack, fill in the brackets, and save it inside that folder as `course-context.md`. The board reads it every run so you never retype your course facts.

## Claude Desktop app (no terminal)

1. Download the Claude Desktop app from claude.com/download and install it. You need a paid Claude plan (Pro, Max, Team, or Enterprise). On Windows, install Git for Windows first, then restart the app.
2. Copy the `aipolicyboard` folder from this pack into `~/.claude/skills/` so the file sits at `~/.claude/skills/aipolicyboard/SKILL.md`. On a Mac, press Cmd+Shift+Period in Finder to see the hidden `.claude` folder. If `skills` doesn't exist yet, create it.
3. Open the Code tab in the app, pick your `ai-policy-boardroom` folder, type `/aipolicyboard`, paste your policy, and answer the intake. Approve the file writes when prompted.

The legacy `aipolicyboard.md` in this pack works too. Drop it in `~/.claude/commands/` instead of the skills folder.

## Claude Code CLI

1. Install: `npm install -g @anthropic-ai/claude-code`, or use the native installer at claude.ai/install.sh.
2. Same file placement as above.
3. In a terminal, `cd ~/ai-policy-boardroom`, run `claude`, then `/aipolicyboard`.

## What happens when it runs

The seven fixed seats run as parallel agents. Each round takes a few minutes. Between rounds you get a status block. Don't rewrite anything during Round 1; the fight in Round 2 reshuffles which fixes matter. When it finishes, read the changelog first, then the fights, then the rebuilt policy cold.

## If something breaks

The command isn't found: check the exact path. It's `~/.claude/skills/aipolicyboard/SKILL.md`, all lowercase.
It asks for the policy again: paste the whole thing, including the boilerplate. The board can't judge a summary.
The seats sound alike: the policy was probably very short. Give it the full text and your real class size.
