# Teaching Boardroom — Gemini setup (Google Antigravity)

Heads up: Google is retiring the Gemini CLI and Gemini Code Assist for AI Pro, Ultra, and free individual plans on June 18, 2026, and moving everyone to Google Antigravity, its free agentic app. These instructions use Antigravity. (Enterprise Gemini CLI users can still use the legacy CLI file in this pack; see the bottom.)

What's in this pack:
- `antigravity/global_workflows/teachingboard.md` — the command, as an Antigravity workflow
- `GEMINI.md` — always-on context
- `board.md` — the user's 19-member starter board (an example to copy and trim)
- `teaching-board-profile-template.md` — your profile file (context + board + memory)
- `legacy-gemini-cli/teachingboard.toml` — the old Gemini CLI command (enterprise only, after June 18, 2026)

Steps (Antigravity):
1. Download Google Antigravity from antigravity.google/download and install it (free, GUI, no terminal). Sign in with your Google account. It's a full editor, so it looks like a coding app.
2. Copy `teachingboard.md` from `antigravity/global_workflows/` into `~/.gemini/antigravity/global_workflows/` (so you have `~/.gemini/antigravity/global_workflows/teachingboard.md`). In Finder, press Cmd+Shift+Period to show the hidden `.gemini` folder, or use Go → Go to Folder and paste `~/.gemini`.
3. Copy `GEMINI.md` to `~/.gemini/GEMINI.md`.
4. Make a working folder (e.g. `~/teaching-boardroom/`) with your profile and your artifact inside it. In Antigravity, Open that folder so the agent can read and write there.
5. In the Agent panel, type `/teachingboard` and answer the artifact path and learning objective. Approve writes.

The board runs sequentially. Antigravity is in preview and changing fast; if `/teachingboard` doesn't appear, check antigravity.google/docs for the current workflows path.

NotebookLM tip: NotebookLM still can't run the board, but it's the best tool for Step 0 Prompt C. Upload an advisor's books or talks and ask for a grounded, cited profile, then paste it into Part 2 of your profile.

Legacy Gemini CLI (enterprise only, after the June 18, 2026 cutoff): copy `legacy-gemini-cli/teachingboard.toml` into `~/.gemini/commands/`, copy `GEMINI.md` to `~/.gemini/GEMINI.md`, run `/commands reload`, then `/teachingboard`.
