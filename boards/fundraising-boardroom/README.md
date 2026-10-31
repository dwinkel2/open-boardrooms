# The Fundraising Boardroom

A partner meeting on your raise: five named investors plus sector seats grill the deck and the numbers, then argue about whether to fund it.

**What you bring.** The raise (amount, stage, use of funds), the deck or a description of it, and every real number you have. Missing numbers are findings, not gaps to fill.

**Who is in the room.** Paul Graham, Marc Andreessen, Peter Thiel, Bill Gurley, and Josh Kopelman, plus a sector-native investor and a stage seat built for your startup.

## Three ways to run it

1. **Any chat tool, no install.** Open [setup-sheet.md](setup-sheet.md), fill in the brackets, paste the block into Claude, ChatGPT, or Gemini. Type "continue" between rounds. This is the version to hand students.
2. **Claude Code.** Copy `claude-code/skills/fundraisingboard/` into `~/.claude/skills/` (or run `./install.sh` from the repo root), then type `/fundraisingboard` in a folder that holds the thing you want reviewed. The advisors run in parallel and the board writes its deliverables to `./boardroom-runs/`. Steps in [claude-code/SETUP.md](claude-code/SETUP.md).
3. **Codex, Gemini, or Copilot.** No packaged port yet; the Claude Code command works as a prompt file in any agent that reads markdown instructions, run the advisors one at a time. Pull requests welcome.

## What comes back

The rebuilt artifact, a change log that names which advisor drove each change, and a board report with the verdict tally and the sharpest fights. The board runs in rounds: teardown, fight, final call, with an exit condition and a safety valve so it never loops.

## Notes

The named advisors are simulated perspectives built from each person's published work. They are not the people, and nothing here is endorsed by them. The board is designed to be adversarial; if the verdicts feel harsh, that is the design. Keep what is right for your case.

Built for the overwhelmed teacher who wants a room full of experts without the budget for one. The live, free version of this work is Teacher Workflows Live: https://doanwinkel.com/webinars?src=github
