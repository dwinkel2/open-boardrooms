# Open Boardrooms

Fourteen advisory boards you can run on your own work in any AI chat.

Each board is a room of named experts who disagree on purpose. You bring one thing: a lesson plan, a syllabus AI policy, a price, a pitch deck, your next hire, a student's resume. The board tears it down in rounds, fights about it in front of you, and hands back the rebuilt version with a change log and a report. Twenty minutes. No install.

These were built for college teachers and their students and have been running in real courses since spring 2026. Everything here is free to use, copy, and adapt.

## Start here (no install)

1. Pick a board from the table below.
2. Open its `setup-sheet.md`.
3. Fill in the brackets, then paste the whole block into Claude, ChatGPT, or Gemini.
4. Type "continue" between rounds. Read the change log first, then the fights, then the rebuilt artifact.

That is the whole thing. If you teach, hand the setup sheet to your students as-is. The first section of every sheet is a course-context block you can fill in once so the board enforces what you teach instead of debating it.

## The boards

| Board | What it does | Command |
|---|---|---|
| [The AI Policy Boardroom](boards/ai-policy-boardroom/) | Seven student archetypes stress-test a syllabus AI policy, fight over what it should say, rewrite it, and re-test the rewrite. | `/aipolicyboard` |
| [The Community Boardroom](boards/community-boardroom/) | Eighteen community-building thinkers and operators review an organization's community strategy and hand back an integrated plan. | `/communityboardroom` |
| [The Fundraising Boardroom](boards/fundraising-boardroom/) | A partner meeting on your raise: five named investors plus sector seats grill the deck and the numbers, then argue about whether to fund it. | `/fundraisingboard` |
| [The Hiring Boardroom](boards/hiring-boardroom/) | Five operators who have scaled teams decide whether your next hire is the right one, reshape the role, and name the hire you are rationalizing. | `/hiringboard` |
| [The Kill Board](boards/kill-board/) | Five advisors tear down your own case for continuing a venture and hand back a committed verdict: double down, pivot, or kill, with dated kill criteria. | `/killboard` |
| [The Policy Boardroom](boards/policy-boardroom/) | Seven policy and technology thinkers hunt for the blind spots in a draft policy before it reaches human review. | `/policyboard` |
| [The Positioning Boardroom](boards/positioning-boardroom/) | Five positioning experts plus a skeptical best-fit buyer and a category insider decide what your venture actually is, who it is for, and why anyone should care. | `/positioningboard` |
| [The Pricing Boardroom](boards/pricing-boardroom/) | Five pricing advisors who disagree on purpose tear apart your price sheet and hand back three numbers: the floor, the ask, and the price to test on your next five prospects. | `/pricingboard` |
| [The Product Boardroom](boards/product-boardroom/) | Ten consumer-product founders and operators vote on one product decision, fight over it, and hand back a verdict with the most dangerous assumption and a 7-day action list. | `/productboardroom` |
| [The Resume Boardroom](boards/resume-boardroom/) | A hiring-side advisory board reviews a student's resume against one target role, rewrites it, and explains every change to the student. | `/resumeboard` |
| [The Sales Objection Boardroom](boards/sales-objection-boardroom/) | Four or five tough prospects raise every objection they really would, five coaches write rebuttals their own way, and the buyers judge which ones land. | `/salesobjectionboard` |
| [The Student Boardroom](boards/student-boardroom/) | Seven students having a bad day sit through your lesson plan and report exactly where they checked out and what would have won them back. | `/studentboard` |
| [The Teaching Boardroom](boards/teaching-boardroom/) | A board of named education thinkers, chosen by you, reviews one teaching artifact and rebuilds it, with three naysayers to keep the rest honest. | `/teachingboard` |
| [The Unit Economics Boardroom](boards/unit-economics-boardroom/) | The board computes your real unit economics first, then five investors and operators fight over the numbers until the model has a verdict and a break point. | `/uniteconomicsboard` |


## Three ways to run any board

**Any chat tool.** The setup sheet. One block, fill in the brackets, paste. Works on a locked-down school laptop. This is the version most people should use.

**Claude Code.** Each board ships as a skill. Run `./install.sh` to install all fourteen, or copy one `boards/<board>/claude-code/skills/<command>/` folder into `~/.claude/skills/`. Then type `/<command>` in a folder holding the thing you want reviewed. The advisors run in parallel and the board writes real files (the rebuilt artifact, change log, board report, and for most boards an HTML dashboard) to `./boardroom-runs/`.

**Codex, Gemini/Antigravity, GitHub Copilot.** Seven boards ship sequential ports in `codex/`, `gemini/`, and `copilot/` folders with their own SETUP.md. For the rest, see [docs/install-other-tools.md](docs/install-other-tools.md).

## Docs

- [docs/run-in-any-chat.md](docs/run-in-any-chat.md): the chat-tool walkthrough, how to save a board so you never paste it again, and what to do when it goes sideways.
- [docs/course-context.md](docs/course-context.md): the one block that aims a board at your class.
- [docs/build-your-own-board.md](docs/build-your-own-board.md): three prompts that build a board for your discipline from scratch.
- [docs/install-other-tools.md](docs/install-other-tools.md): running the boards in Codex, Gemini, and Copilot.
- [CONTRIBUTING.md](CONTRIBUTING.md): how to propose a board or fix an advisor.

## How a board is built

Every board has the same skeleton. One artifact under review. A map of the four to six ways that artifact dies, each owned by one fixed advisor. Two or three seats generated per case (the skeptical buyer, the category insider, the student who will actually sit through it). Three rounds: teardown, fight, final call. A verdict vocabulary native to the domain. An exit condition and a safety valve so it never loops. Then three deliverables: the rebuilt artifact, the change log, the board report.

The advisors are the product. Where a board uses real people, each one has a sourced profile in its `advisors/` folder: how they think, what they attack, their signature tests, and their blind spot, which names another advisor who will push them. The blind spots are cross-wired on purpose. That is where the Round 2 fights come from.

## On the names

The named advisors are simulated perspectives built from each person's published books, talks, essays, and interviews, with sources listed in the profiles. They are not the people. Nothing here is written, reviewed, or endorsed by them. Treat every board verdict as a stress test, not a ruling. If a profile gets something wrong, open an issue with a source and it will be fixed.

## Who made this

Doan Winkel teaches entrepreneurship at a university in Ohio and helps college faculty use AI in ways that make students think harder, not less. The boards started as a tool for his own courses.

The live, free version of this work is Teacher Workflows Live, thirty-minute working sessions where teachers build one of these workflows on their own course: https://doanwinkel.com/webinars?src=github

The weekly newsletter is How to Teach With AI: https://howtoteachwithai.substack.com

## License

MIT. Use it, fork it, run it with your students, ship it inside your own course. Attribution is appreciated, not required.
