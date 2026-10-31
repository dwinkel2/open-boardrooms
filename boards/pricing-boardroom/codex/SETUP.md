# Set up the Pricing Boardroom in Codex (ChatGPT) (10 to 15 minutes)

You will install a `pricingboard` skill that runs five pricing advisors, plus a Paying Buyer and a Category Pricer built for your venture, on the one page that explains your price, and hands back three numbers: the floor, the ask, and the test price. Codex runs the advisors one at a time, so a full run takes longer than the Claude version. Same advisors, same rounds, same files.

## Option A: Codex in VS Code (recommended, no terminal)

1. Install VS Code from code.visualstudio.com. In the Extensions panel, search "Codex" (by OpenAI) and click Install. Sign in with your ChatGPT account.
2. Copy the `pricingboard` folder from this pack into `~/.codex/skills/`, so the file sits at `~/.codex/skills/pricingboard/SKILL.md`. In Finder, press Cmd+Shift+Period to see the hidden `.codex` folder. On Windows, `~` is your user folder (C:\Users\yourname). Legacy alternative: `pricingboard.md` in `~/.codex/prompts/`.
3. Copy this pack's `AGENTS.md` to `~/.codex/AGENTS.md`. If you already have one, paste its lines at the bottom of yours.
4. Create a folder called `pricing-boardroom` in your home folder, so it is `~/pricing-boardroom/`. The board writes everything there, one subfolder per run. If you have a pricing page or a write-up, drop it in this folder.
5. Optional: fill in `course-context-template.md` and save it as `~/open-boardrooms/course-context.md` so the board holds you to your class's standards.
6. Open `~/pricing-boardroom/` in VS Code (File, then Open Folder), open the Codex panel, switch to Agent mode, type `/pricingboard` (or `/prompts:pricingboard` for the legacy prompt), and answer the intake. Approve writes.

## Option B: Codex CLI

1. Install Node.js 22 or newer, then run `npm install -g @openai/codex`.
2. Do steps 2 to 5 above.
3. From inside `~/pricing-boardroom/`, run `codex --sandbox workspace-write --ask-for-approval on-request` and use the same `/pricingboard`.

## Before you run

Have your numbers ready: what you charge today and per what unit, how you set it, what the customer does instead and what that costs them, how many people have actually paid, and what one more unit costs you to deliver. Where you do not know, say GUESS or UNKNOWN. The board treats a made-up number as the problem, never as the answer. Also write down the price you are afraid to charge and why. The board reads that first. If IT restricts VS Code extensions, the CLI path works from a plain terminal.

## If it goes sideways

- It stops after one advisor? Tell it: "Continue through every advisor in order, saving each file, then run Round 2 and Round 3."
- Advisors sound alike? Tell it: "Keep each advisor in their own method and voice, and have them attack each other by name in Round 2."
- Verdicts too soft? Tell it: "HOLDS is rare. Re-run the verdicts and quote the section of the Price Sheet that fails."
- It filled in a number you never gave? Tell it: "Replace every number I did not give with GUESS or UNKNOWN and tell me what to measure instead."
