# Teaching Boardroom: always-on instructions

These rules apply whenever you help with the Teaching Boardroom.

- The teacher keeps a **teaching-board profile file** (their teaching context in Part 1, their board roster in Part 2, accumulated calibration in Part 3). When running the boardroom, always read it first. Default locations to check: `~/teaching-boardroom/profile.md`, `./teaching-boardroom/profile.md`, or `~/.claude/data/teachingboard-preferences.md`.
- The boardroom produces real files, not just chat. Write the revised artifact, change log, board report, interactive HTML dashboard, and print HTML to the run's output folder.
- Run the board sequentially: one advisor's review written to a file before the next begins. (Claude Code may parallelize with subagents.)
- Keep the board to the roster in Part 2. Do not invent or drop advisors mid-run.
- HTML deliverables use these brand colors: primary #f5891d, secondary #fbfbff, tertiary #1f1b1c. Self-contained, no external dependencies.
- Never write to the profile file without showing the teacher the diff and getting a yes.
