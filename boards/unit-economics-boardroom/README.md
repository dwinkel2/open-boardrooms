# The Unit Economics Boardroom

The board computes your real unit economics first, then five investors and operators fight over the numbers until the model has a verdict and a break point.

**What you bring.** Price, cost to make and deliver one unit, cost to acquire a customer (paid, not blended), how often they buy or churn. Mark every guess.

**Who is in the room.** Bill Gurley, David Skok, Alex Hormozi, Warren Buffett, and Brian Balfour, plus a model-native operator and a skeptical funder built for your business model.

## Three ways to run it

1. **Any chat tool, no install.** Open [setup-sheet.md](setup-sheet.md), fill in the brackets, paste the block into Claude, ChatGPT, or Gemini. Type "continue" between rounds. This is the version to hand students.
2. **Claude Code.** Copy `claude-code/skills/uniteconomicsboard/` into `~/.claude/skills/` (or run `./install.sh` from the repo root), then type `/uniteconomicsboard` in a folder that holds the thing you want reviewed. The advisors run in parallel and the board writes its deliverables to `./boardroom-runs/`. Steps in [claude-code/SETUP.md](claude-code/SETUP.md).
3. **Codex, Gemini/Antigravity, or GitHub Copilot.** Sequential ports in `codex/`, `gemini/`, and `copilot/`, each with its own SETUP.md.

## What comes back

The rebuilt artifact, a change log that names which advisor drove each change, and a board report with the verdict tally and the sharpest fights. The board runs in rounds: teardown, fight, final call, with an exit condition and a safety valve so it never loops.

## Notes

The named advisors are simulated perspectives built from each person's published work. They are not the people, and nothing here is endorsed by them. The board is designed to be adversarial; if the verdicts feel harsh, that is the design. Keep what is right for your case.

Built for the overwhelmed teacher who wants a room full of experts without the budget for one. The live, free version of this work is Teacher Workflows Live: https://doanwinkel.com/webinars?src=github
