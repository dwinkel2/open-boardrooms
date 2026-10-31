# The Sales Objection Boardroom

Four or five tough prospects raise every objection they really would, five coaches write rebuttals their own way, and the buyers judge which ones land.

**What you bring.** What you sell and the price, who buys, your current pitch, the proof you actually have, and your walk-away.

**Who is in the room.** Chris Voss, Jeb Blount, Matthew Dixon, a Sandler-method rep, and Grant Cardone as coaches, plus prospects generated from your real buyer. Includes a live sparring mode.

## Three ways to run it

1. **Any chat tool, no install.** Open [setup-sheet.md](setup-sheet.md), fill in the brackets, paste the block into Claude, ChatGPT, or Gemini. Type "continue" between rounds. This is the version to hand students.
2. **Claude Code.** Copy `claude-code/skills/salesobjectionboard/` into `~/.claude/skills/` (or run `./install.sh` from the repo root), then type `/salesobjectionboard` in a folder that holds the thing you want reviewed. The advisors run in parallel and the board writes its deliverables to `./boardroom-runs/`. Steps in [claude-code/SETUP.md](claude-code/SETUP.md).
3. **Codex, Gemini, or Copilot.** No packaged port yet; the Claude Code command works as a prompt file in any agent that reads markdown instructions, run the advisors one at a time. Pull requests welcome.

## What comes back

The rebuilt artifact, a change log that names which advisor drove each change, and a board report with the verdict tally and the sharpest fights. The board runs in rounds: teardown, fight, final call, with an exit condition and a safety valve so it never loops.

## Notes

The named advisors are simulated perspectives built from each person's published work. They are not the people, and nothing here is endorsed by them. The board is designed to be adversarial; if the verdicts feel harsh, that is the design. Keep what is right for your case.

Built for the overwhelmed teacher who wants a room full of experts without the budget for one. The live, free version of this work is Teacher Workflows Live: https://doanwinkel.com/webinars?src=github
