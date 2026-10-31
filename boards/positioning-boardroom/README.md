# The Positioning Boardroom

Five positioning experts plus a skeptical best-fit buyer and a category insider decide what your venture actually is, who it is for, and why anyone should care.

**What you bring.** The venture in one honest paragraph, your current positioning if any, and the five inputs: alternatives, attributes, value and proof, best-fit customer, category.

**Who is in the room.** April Dunford, Al Ries, Geoffrey Moore, Seth Godin, and Eugene Schwartz, plus The Best-Fit Buyer, The Category Insider, and an optional go-to-market voice built for your venture.

## Three ways to run it

1. **Any chat tool, no install.** Open [setup-sheet.md](setup-sheet.md), fill in the brackets, paste the block into Claude, ChatGPT, or Gemini. Type "continue" between rounds. This is the version to hand students.
2. **Claude Code.** Copy `claude-code/skills/positioningboard/` into `~/.claude/skills/` (or run `./install.sh` from the repo root), then type `/positioningboard` in a folder that holds the thing you want reviewed. The advisors run in parallel and the board writes its deliverables to `./boardroom-runs/`. Steps in [claude-code/SETUP.md](claude-code/SETUP.md).
3. **Codex, Gemini/Antigravity, or GitHub Copilot.** Sequential ports in `codex/`, `gemini/`, and `copilot/`, each with its own SETUP.md.

## What comes back

The rebuilt artifact, a change log that names which advisor drove each change, and a board report with the verdict tally and the sharpest fights. The board runs in rounds: teardown, fight, final call, with an exit condition and a safety valve so it never loops.

## Notes

The named advisors are simulated perspectives built from each person's published work. They are not the people, and nothing here is endorsed by them. The board is designed to be adversarial; if the verdicts feel harsh, that is the design. Keep what is right for your case.

Built for the overwhelmed teacher who wants a room full of experts without the budget for one. The live, free version of this work is Teacher Workflows Live: https://doanwinkel.com/webinars?src=github
