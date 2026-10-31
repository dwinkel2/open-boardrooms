# Setup: AI Policy Boardroom for Codex (ChatGPT)

The VS Code extension needs no terminal. The board runs the seats one at a time, so a full run takes longer than in Claude. Same files at the end.

## Before you start

1. Create a folder in your home directory called `ai-policy-boardroom`.
2. Optional: fill in `course-context-template.md` from this pack and save it inside that folder as `course-context.md`.

## VS Code extension (no terminal)

1. Install VS Code from code.visualstudio.com. In the Extensions panel, search "Codex" (by OpenAI) and install it. Sign in with your ChatGPT account.
2. Copy the `aipolicyboard` folder from this pack into `~/.codex/skills/` so the file sits at `~/.codex/skills/aipolicyboard/SKILL.md`. Legacy alternative: put `aipolicyboard.md` in `~/.codex/prompts/`.
3. Copy this pack's `AGENTS.md` to `~/.codex/AGENTS.md`. If you already have one, paste the contents at the end of it.
4. Open your `ai-policy-boardroom` folder in VS Code, open the Codex panel, switch to Agent mode, type `/aipolicyboard` (or `/prompts:aipolicyboard` for the legacy prompt), paste your policy, and answer the intake. Approve the file writes.

## Codex CLI

1. Install Node.js 22 or newer, then `npm install -g @openai/codex`.
2. Same file placement as above.
3. `cd ~/ai-policy-boardroom`, then `codex --sandbox workspace-write --ask-for-approval on-request`, then `/aipolicyboard`.

## What happens when it runs

Ten seats, one after another, three rounds, then the rebuild and a second pass. Expect twenty to forty minutes. Between rounds you get a status block. Read the changelog first when it's done.

## If something breaks

The command isn't found: check `~/.codex/skills/aipolicyboard/SKILL.md`, all lowercase.
It stops mid-round: type "continue with the next seat." The workflow saves each seat's file as it goes, so nothing is lost.
