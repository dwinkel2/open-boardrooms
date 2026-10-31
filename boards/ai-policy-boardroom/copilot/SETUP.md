# Setup: AI Policy Boardroom for GitHub Copilot

Use Copilot in VS Code agent mode. No Node needed. The board runs the seats one at a time. On a college-managed laptop, step 5 may be locked by IT; if so, use the paste-in Board Setup Sheet from the Notion page instead.

## Before you start

1. Create a folder in your home directory called `ai-policy-boardroom`. This is your workspace.
2. Optional: fill in `course-context-template.md` from this pack and save it inside that folder as `course-context.md`.

## Install

1. Install VS Code from code.visualstudio.com, add the GitHub Copilot extension, and sign in with a Copilot-enabled GitHub account.
2. Open your `ai-policy-boardroom` folder as the workspace. Inside it, create `.github/prompts/`.
3. Copy `aipolicyboard.prompt.md` from this pack into `.github/prompts/`.
4. Copy this pack's `copilot-instructions.md` into `.github/`.
5. Turn on prompt files: Settings (Cmd+, or Ctrl+,), search `chat.promptFiles`, enable it.
6. Open Chat (Cmd+Ctrl+I on Mac, Ctrl+Alt+I on Windows), set the mode dropdown to Agent, turn on accept-all, then type `/aipolicyboard`. Paste your policy and answer the intake.

This pack also includes a Skill version (`aipolicyboard/SKILL.md`) for the Copilot desktop app (preview) and the Copilot CLI. Place it wherever that app's docs say skills live.

## What happens when it runs

Ten seats, one after another, three rounds, then the rebuild and a second pass. Expect twenty to forty minutes. Read the changelog first when it's done.

## If something breaks

`/aipolicyboard` isn't offered: `chat.promptFiles` is off or locked. Use the Setup Sheet instead.
It stops mid-round: type "continue with the next seat." Each seat's file is saved as it goes.
