# Teaching Boardroom — Codex setup (ChatGPT)

Two ways to run it. The VS Code extension needs no terminal. The CLI is the power-user route.

What's in this pack:
- `skills/teachingboard/SKILL.md` — the command, in the recommended Skill format
- `teachingboard.md` — the same command as a legacy custom prompt (works too)
- `AGENTS.md` — always-on instructions
- `board.md` — the user's 19-member starter board (an example to copy and trim)
- `teaching-board-profile-template.md` — your profile file (context + board + memory)

## Option A: VS Code extension (no terminal)
1. Install VS Code from code.visualstudio.com. Open the Extensions panel, search "Codex" (by OpenAI), and click Install. Sign in with your ChatGPT account.
2. Copy the `teachingboard` folder from `skills/` into `~/.codex/skills/` (so you have `~/.codex/skills/teachingboard/SKILL.md`). Legacy alternative: copy `teachingboard.md` into `~/.codex/prompts/`.
3. Copy `AGENTS.md` to `~/.codex/AGENTS.md`.
4. Build your profile (Step 0 prompts, or start from `board.md`) and save it at `~/teaching-boardroom/profile.md`.
5. Open the folder with your artifact in VS Code, open the Codex panel, switch to Agent mode, type `/teachingboard` (or `/prompts:teachingboard` for the legacy prompt), and answer the two questions. Approve writes.

## Option B: CLI
1. Install Node.js 22+ from nodejs.org, then run `npm install -g @openai/codex`.
2. Same files as above (`~/.codex/skills/teachingboard/SKILL.md` or `~/.codex/prompts/teachingboard.md`, plus `~/.codex/AGENTS.md`).
3. Start Codex with writes on: `codex --sandbox workspace-write --ask-for-approval on-request`, keeping your artifact and output folder in the working directory.
4. Type `/teachingboard` (or `/prompts:teachingboard`) and answer the two questions.

The board runs sequentially, writing each review to a file. If you edit the command later, restart Codex so it reloads. Custom prompts are deprecated in favor of skills, which is why the Skill format is the recommended one here.
