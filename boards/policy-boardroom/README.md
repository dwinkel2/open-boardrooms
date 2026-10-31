# The Policy Boardroom

Seven policy and technology thinkers hunt for the blind spots in a draft policy before it reaches human review.

**What you bring.** The full text of a draft policy (campus, organizational, or regulatory), its stated objective, and who implements and enforces it.

**Who is in the room.** Jennifer Pahlka, Cass Sunstein, Bruce Schneier, Rumman Chowdhury, Zeynep Tufekci, Arvind Narayanan, and Philip K. Howard, each simulated from their published work.

## Three ways to run it

1. **Any chat tool, no install.** Open [setup-sheet.md](setup-sheet.md), fill in the brackets, paste the block into Claude, ChatGPT, or Gemini. Type "continue" between rounds. This is the version to hand students.
2. **Claude Code.** Copy `claude-code/skills/policyboard/` into `~/.claude/skills/` (or run `./install.sh` from the repo root), then type `/policyboard` in a folder that holds the thing you want reviewed. The advisors run in parallel and the board writes its deliverables to `./boardroom-runs/`. Steps in [claude-code/SETUP.md](claude-code/SETUP.md).
3. **Codex, Gemini, or Copilot.** No packaged port yet; the Claude Code command works as a prompt file in any agent that reads markdown instructions, run the advisors one at a time. Pull requests welcome.

## What comes back

The rebuilt artifact, a change log that names which advisor drove each change, and a board report with the verdict tally and the sharpest fights. The board runs in rounds: teardown, fight, final call, with an exit condition and a safety valve so it never loops.

## Notes

The named advisors are simulated perspectives built from each person's published work. They are not the people, and nothing here is endorsed by them. The board is designed to be adversarial; if the verdicts feel harsh, that is the design. Keep what is right for your case.

Full advisor profiles, with sources, are in [advisors/](advisors/). The Claude Code command reads them; the setup sheet carries a compressed version of each seat.

Built for the overwhelmed teacher who wants a room full of experts without the budget for one. The live, free version of this work is Teacher Workflows Live: https://doanwinkel.com/webinars?src=github
