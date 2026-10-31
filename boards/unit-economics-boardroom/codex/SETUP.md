# Unit Economics Boardroom — Codex setup (ChatGPT)

Two ways to run it. The VS Code extension needs no terminal. The CLI is the power-user route.

What's in this pack:
- `skills/uniteconomicsboard/SKILL.md` — the command, in the recommended Skill format
- `uniteconomicsboard.md` — the same command as a legacy custom prompt (works too)
- `AGENTS.md` — always-on instructions
- `course-context-template.md` — optional. Calibrates the board to your class

## Option A: VS Code extension (no terminal)
1. Install VS Code from code.visualstudio.com. Open the Extensions panel, search "Codex" (by OpenAI), and click Install. Sign in with your ChatGPT account.
2. Copy the `uniteconomicsboard` folder from `skills/` into `~/.codex/skills/` (so you have `~/.codex/skills/uniteconomicsboard/SKILL.md`). Legacy alternative: copy `uniteconomicsboard.md` into `~/.codex/prompts/`.
3. Copy `AGENTS.md` to `~/.codex/AGENTS.md`.
4. Optional: fill in `course-context-template.md`, save it at `~/open-boardrooms/course-context.md`.
5. Open the folder with your venture file in VS Code, open the Codex panel, switch to Agent mode, type `/uniteconomicsboard` (or `/prompts:uniteconomicsboard` for the legacy prompt), and answer the intake. Approve writes.

## Option B: CLI
1. Install Node.js 22+ from nodejs.org, then run `npm install -g @openai/codex`.
2. Same files as above (`~/.codex/skills/uniteconomicsboard/SKILL.md` or `~/.codex/prompts/uniteconomicsboard.md`, plus `~/.codex/AGENTS.md`).
3. Start Codex with writes on: `codex --sandbox workspace-write --ask-for-approval on-request`, keeping your venture file and output folder in the working directory.
4. Type `/uniteconomicsboard` (or `/prompts:uniteconomicsboard`) and answer the intake.

The board runs sequentially, writing each review to a file. If you edit the command later, restart Codex so it reloads. Custom prompts are deprecated in favor of skills, which is why the Skill format is the recommended one here.
