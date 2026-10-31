# Unit Economics Boardroom — Gemini setup (Google Antigravity)

Heads up: Google is retiring the Gemini CLI and Gemini Code Assist for AI Pro, Ultra, and free individual plans on June 18, 2026, and moving everyone to Google Antigravity, its free agentic app. These instructions use Antigravity. (Enterprise Gemini CLI users can still use the legacy CLI file in this pack; see the bottom.)

What's in this pack:
- `antigravity/global_workflows/uniteconomicsboard.md` — the command, as an Antigravity workflow
- `GEMINI.md` — always-on context
- `course-context-template.md` — optional. Calibrates the board to your class
- `legacy-gemini-cli/uniteconomicsboard.toml` — the old Gemini CLI command (enterprise only, after June 18, 2026)

Steps (Antigravity):
1. Download Google Antigravity from antigravity.google/download and install it (free, GUI, no terminal). Sign in with your Google account. It's a full editor, so it looks like a coding app.
2. Copy `uniteconomicsboard.md` from `antigravity/global_workflows/` into `~/.gemini/antigravity/global_workflows/` (so you have `~/.gemini/antigravity/global_workflows/uniteconomicsboard.md`). In Finder, press Cmd+Shift+Period to show the hidden `.gemini` folder, or use Go, then Go to Folder, and paste `~/.gemini`.
3. Copy `GEMINI.md` to `~/.gemini/GEMINI.md`.
4. Make a working folder (e.g. `~/unit-economics-boardroom/`) with your venture file (and, optionally, your `course-context.md`) inside it. In Antigravity, Open that folder so the agent can read and write there.
5. In the Agent panel, type `/uniteconomicsboard` and answer the intake. Approve writes.

The board runs sequentially. Antigravity is in preview and changing fast; if `/uniteconomicsboard` doesn't appear, check antigravity.google/docs for the current workflows path.

Legacy Gemini CLI (enterprise only, after the June 18, 2026 cutoff): copy `legacy-gemini-cli/uniteconomicsboard.toml` into `~/.gemini/commands/`, copy `GEMINI.md` to `~/.gemini/GEMINI.md`, run `/commands reload`, then `/uniteconomicsboard`.
