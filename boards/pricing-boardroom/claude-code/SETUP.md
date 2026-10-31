# Set up the Pricing Boardroom in Claude (10 minutes, no terminal required)

You will install a `/pricingboard` command that runs five pricing advisors, plus a Paying Buyer and a Category Pricer built for your venture, on the one page that explains your price. It hands back three numbers: the floor, the ask, and the price to test on your next five prospects. Two ways in. The desktop app is easiest, and the advisors run in parallel there.

## Option A: Claude Desktop app (recommended, no terminal)

1. Download the Claude Desktop app from claude.com/download and install it. You need a paid Claude plan (Pro, Max, Team, or Enterprise). On Windows, install Git for Windows first, then restart the app.
2. Copy the `pricingboard` folder from this pack into `~/.claude/skills/`, so the file sits at `~/.claude/skills/pricingboard/SKILL.md`. In Finder, press Cmd+Shift+Period to see the hidden `.claude` folder. On Windows, `~` is your user folder (C:\Users\yourname). The legacy `pricingboard.md` works too, dropped in `~/.claude/commands/`.
3. Create a folder called `pricing-boardroom` in your home folder, so it is `~/pricing-boardroom/`. The board writes everything there: your Price Sheet, the three rounds, the rebuilt sheet, the changelog, the board report, and the dashboard, each run in its own subfolder. If you have a pricing page or a write-up, drop it in this folder.
4. Optional: fill in `course-context-template.md` and save it as `~/open-boardrooms/course-context.md`. The board reads it at the start of every run and holds you to your class's standards.
5. Open the Code tab, pick the `pricing-boardroom` folder, type `/pricingboard`, and answer the intake. Approve the writes when prompted.

## Option B: Claude Code in the terminal

1. Install the CLI with `npm install -g @anthropic-ai/claude-code`, or use the native installer at claude.ai/install.sh.
2. Do steps 2 to 4 above.
3. Run `claude` inside `~/pricing-boardroom/` and type the same `/pricingboard`.

## Before you run

Have your numbers ready: what you charge today and per what unit, how you set it, what the customer does instead and what that costs them, how many people have actually paid, and what one more unit costs you to deliver. Where you do not know, say GUESS or UNKNOWN. The board treats a made-up number as the problem, never as the answer. Also write down the price you are afraid to charge and why. The board reads that first.

## If it goes sideways

- Advisors sound alike? Tell it: "Keep each advisor in their own method and voice, and have them attack each other by name in Round 2."
- Verdicts too soft? Tell it: "HOLDS is rare. Re-run the verdicts and quote the section of the Price Sheet that fails."
- It filled in a number you never gave? Tell it: "Replace every number I did not give with GUESS or UNKNOWN and tell me what to measure instead."
- Want to practice saying the number? After the three numbers land, type: "Play my Paying Buyer. Open with 'How much?'"
