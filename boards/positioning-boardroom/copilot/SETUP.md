# Positioning Boardroom — Copilot setup (VS Code agent mode)

For a reusable `/positioningboard`, use Copilot in VS Code agent mode. No terminal, no Node.

What's in this pack:
- `positioningboard.prompt.md` — the command as a VS Code prompt file (the `/positioningboard` slash command)
- `skills/positioningboard/SKILL.md` — the command as a Skill, for the new Copilot desktop app (preview) and the Copilot CLI
- `copilot-instructions.md` — always-on instructions
- `course-context-template.md` — optional. Calibrates the board to your class

Steps (VS Code agent mode):
1. Install VS Code from code.visualstudio.com, add the GitHub Copilot extension, and sign in with a Copilot-enabled GitHub account.
2. Open a folder as your workspace. Create `.github/prompts/` and copy `positioningboard.prompt.md` into it.
3. Copy `copilot-instructions.md` into `.github/`.
4. Optional: fill in `course-context-template.md` and save it in your workspace.
5. Turn on prompt files: Settings (Cmd+,), search `chat.promptFiles`, enable it. If it's locked on a college-managed laptop, use one of the other tools.
6. Open Chat (Cmd+Ctrl+I), set the mode dropdown to Agent, turn on accept-all, then type `/positioningboard`. Answer the intake.

The board runs sequentially. On long runs, watch the context window; if it fills, run fewer advisors per pass.

Copilot desktop app (preview): GitHub now has a standalone Copilot app that writes local files and runs skills. It uses skills, not prompt files, so instead of the prompt file, copy the `positioningboard` skill folder into the app's skills location and trigger it from there. Prefer VS Code agent mode until the desktop app is generally available.
