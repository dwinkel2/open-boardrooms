# Set up the Pricing Boardroom in Gemini (Google Antigravity) (10 to 15 minutes)

Google is retiring the Gemini CLI and Code Assist for Pro, Ultra, and free individual plans on June 18, 2026, and moving everyone to Google Antigravity, its free agentic app. Use Antigravity. You will install a `pricingboard` workflow that runs five pricing advisors, plus a Paying Buyer and a Category Pricer built for your venture, on the one page that explains your price, and hands back three numbers: the floor, the ask, and the test price. Antigravity runs the advisors one at a time, so a full run takes longer than the Claude version. Same advisors, same rounds, same files.

## Steps

1. Download Google Antigravity from antigravity.google/download and install it (free, no terminal). Sign in with your Google account.
2. Copy `pricingboard.md` from this pack into `~/.gemini/antigravity/global_workflows/`. In Finder, press Cmd+Shift+Period to see the hidden `.gemini` folder. On Windows, `~` is your user folder (C:\Users\yourname).
3. Copy this pack's `GEMINI.md` to `~/.gemini/GEMINI.md`. If you already have one, paste its lines at the bottom of yours.
4. Create a folder called `pricing-boardroom` in your home folder, so it is `~/pricing-boardroom/`. The board writes everything there, one subfolder per run. If you have a pricing page or a write-up, drop it in this folder.
5. Optional: fill in `course-context-template.md` and save it as `~/open-boardrooms/course-context.md` so the board holds you to your class's standards.
6. Open `~/pricing-boardroom/` in Antigravity. In the Agent panel, type `/pricingboard` and answer the intake. Approve writes.

Antigravity is in preview. If `/pricingboard` does not appear, check antigravity.google/docs for the current global workflows folder and move the file there. The file itself is portable. Nothing in it depends on the path.

## Before you run

Have your numbers ready: what you charge today and per what unit, how you set it, what the customer does instead and what that costs them, how many people have actually paid, and what one more unit costs you to deliver. Where you do not know, say GUESS or UNKNOWN. The board treats a made-up number as the problem, never as the answer. Also write down the price you are afraid to charge and why. The board reads that first.

## If it goes sideways

- It stops after one advisor? Tell it: "Continue through every advisor in order, saving each file, then run Round 2 and Round 3."
- Advisors sound alike? Tell it: "Keep each advisor in their own method and voice, and have them attack each other by name in Round 2."
- Verdicts too soft? Tell it: "HOLDS is rare. Re-run the verdicts and quote the section of the Price Sheet that fails."
- It filled in a number you never gave? Tell it: "Replace every number I did not give with GUESS or UNKNOWN and tell me what to measure instead."
