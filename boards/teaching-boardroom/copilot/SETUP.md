# Teaching Boardroom — Copilot setup (VS Code agent mode)

For a reusable `/teachingboard`, use Copilot in VS Code agent mode. No terminal, no Node.

What's in this pack:
- `teachingboard.prompt.md` — the command as a VS Code prompt file (the `/teachingboard` slash command)
- `skills/teachingboard/SKILL.md` — the command as a Skill, for the new Copilot desktop app (preview) and the Copilot CLI
- `copilot-instructions.md` — always-on instructions
- `board.md` — the user's 19-member starter board (an example to copy and trim)
- `teaching-board-profile-template.md` — your profile file (context + board + memory)

Steps (VS Code agent mode):
1. Install VS Code from code.visualstudio.com, add the GitHub Copilot extension, and sign in with a Copilot-enabled GitHub account.
2. Open a folder as your workspace. Create `.github/prompts/` and copy `teachingboard.prompt.md` into it.
3. Copy `copilot-instructions.md` into `.github/`.
4. Save your teaching-board profile at `teaching-boardroom/profile.md` in the workspace.
5. Turn on prompt files: Settings (Cmd+,), search `chat.promptFiles`, enable it. If it's locked on a college-managed laptop, use one of the other tools.
6. Open Chat (Cmd+Ctrl+I), set the mode dropdown to Agent, turn on accept-all, then type `/teachingboard`. Answer the two questions.

The board runs sequentially. On long runs, watch the context window; if it fills, run fewer advisors per pass.

Copilot desktop app (preview): GitHub now has a standalone Copilot app that writes local files and runs skills. It uses skills, not prompt files, so instead of the prompt file, copy the `teachingboard` skill folder into the app's skills location and trigger it from there. Prefer VS Code agent mode until the desktop app is generally available, since it gives the clean `/teachingboard` command.
