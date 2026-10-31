# Running the boards in Codex, Gemini/Antigravity, and GitHub Copilot

Seven boards ship ready-made ports with their own SETUP.md: AI Policy, Hiring, Kill Board, Positioning, Pricing, Teaching, and Unit Economics. Open the board's `codex/`, `gemini/`, or `copilot/` folder and follow its SETUP.md. Those ports run the advisors one at a time instead of in parallel. Same rounds, same deliverables, a longer run.

For the other seven boards, the Claude Code command file is plain markdown instructions and works as a prompt file in any agent that reads them. Run the advisors sequentially.

## Codex (OpenAI)

1. Copy `boards/<board>/claude-code/<command>.md` to `~/.codex/prompts/<command>.md`.
2. If the board has an `advisors/` folder, copy it next to the prompt file or into your working folder.
3. In Codex, type `/<command>` followed by the path to the thing you want reviewed.
4. Add this line at the top of the file if the board tries to run advisors in parallel: "Run every advisor sequentially, writing each review to its file before starting the next."

## Gemini CLI and Antigravity

1. Copy the command file into `~/.gemini/antigravity/global_workflows/<command>.md` (Antigravity) or reference it from `~/.gemini/GEMINI.md` (Gemini CLI).
2. Same `advisors/` and sequential-run notes as above.
3. If the workflows path has moved, check the current Antigravity docs; the file itself does not change.

## GitHub Copilot (VS Code agent mode)

1. Create `.github/prompts/<command>.prompt.md` in your workspace and paste the command file into it.
2. Enable `chat.promptFiles` in VS Code settings. On an IT-managed laptop this may be locked; if so, use the setup sheet in a chat tool instead.
3. In Copilot Chat, agent mode, type `/<command>`.

## When in doubt

Use the setup sheet. It is the same board, it runs anywhere, and it needs no permissions you do not already have.
