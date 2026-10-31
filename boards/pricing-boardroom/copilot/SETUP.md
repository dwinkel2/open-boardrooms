# Set up the Pricing Boardroom in GitHub Copilot (10 to 15 minutes)

For a reusable `/pricingboard`, use Copilot in VS Code agent mode. No Node needed. The board runs five pricing advisors, plus a Paying Buyer and a Category Pricer built for your venture, on the one page that explains your price, and hands back three numbers: the floor, the ask, and the test price. Copilot runs the advisors one at a time, so a full run takes longer than the Claude version. Same advisors, same rounds, same files.

## Option A: Copilot in VS Code (agent mode)

1. Install VS Code from code.visualstudio.com, add the GitHub Copilot extension, and sign in with a Copilot-enabled GitHub account.
2. Create a folder called `pricing-boardroom` in your home folder, so it is `~/pricing-boardroom/`, and open it in VS Code (File, then Open Folder). This is your workspace. The board writes everything into it, one subfolder per run. If you have a pricing page or a write-up, drop it in this folder.
3. Inside that folder, create `.github/prompts/`. Copy `pricingboard.prompt.md` from this pack into `.github/prompts/`.
4. Copy this pack's `copilot-instructions.md` into `.github/`.
5. Turn on prompt files: open Settings (Cmd+, on Mac, Ctrl+, on Windows), search `chat.promptFiles`, and enable it. On a college-managed laptop this setting may be locked by IT. If it is, ask IT to enable it, or use Option B.
6. Optional: fill in `course-context-template.md` and save it as `~/open-boardrooms/course-context.md` so the board holds you to your class's standards.
7. Open Chat (Cmd+Ctrl+I on Mac, Ctrl+Alt+I on Windows), set the mode dropdown to Agent, turn on accept-all, then type `/pricingboard`. Answer the intake.

## Option B: Copilot desktop app (preview) or Copilot CLI

1. Copy the `pricingboard` folder from this pack (the one with `SKILL.md`) into your skills folder: `~/.copilot/skills/pricingboard/SKILL.md` for the CLI, or the skills location the desktop app's docs name.
2. Open `~/pricing-boardroom/` and type `/pricingboard`, or say "run the pricing board on my venture."

## Before you run

Have your numbers ready: what you charge today and per what unit, how you set it, what the customer does instead and what that costs them, how many people have actually paid, and what one more unit costs you to deliver. Where you do not know, say GUESS or UNKNOWN. The board treats a made-up number as the problem, never as the answer. Also write down the price you are afraid to charge and why. The board reads that first. Copilot works file by file, so confirm it saved each advisor's review before it moves on.

## If it goes sideways

- It stops after one advisor? Tell it: "Continue through every advisor in order, saving each file, then run Round 2 and Round 3."
- Advisors sound alike? Tell it: "Keep each advisor in their own method and voice, and have them attack each other by name in Round 2."
- Verdicts too soft? Tell it: "HOLDS is rare. Re-run the verdicts and quote the section of the Price Sheet that fails."
- It filled in a number you never gave? Tell it: "Replace every number I did not give with GUESS or UNKNOWN and tell me what to measure instead."
