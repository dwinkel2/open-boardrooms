> Everything you need to run the Fundraising Board in any AI tool. Copy the whole block below into Claude, ChatGPT, or Gemini. Fill in the brackets in sections 1 and 2. Do not edit anything from section 3 down. It runs the board.

```
# 1) COURSE CONTEXT (your instructor may give you this; if not, delete this section)
COURSE CONTEXT (calibrate the board to this class):
- Stage of our ventures: [idea with a deck / early revenue / actually raising]
- Real raise or rigor exercise: [most student ventures are not raising; the point
  is the questions, not the check]
- Non-negotiables: use real numbers; a missing number is a red flag; be honest when
  a venture is a good business but not a venture business.

# 2) YOUR RAISE (be honest; mark any number you guessed)
MY RAISE:
- What I'm building, and for whom (one honest paragraph, no pitch language): [...]
- The raise: how much, what stage (pre-seed / seed / Series A), valuation or range: [...]
- Use of funds and the milestone it buys before the next round: [...]
- Traction / numbers (mark guesses): revenue or users, growth rate, retention/churn,
  CAC and LTV if I have them, or evidence of demand if pre-revenue: [...]
- The market: how big, and why now (what changed in the world): [...]
- The team: who, and why we're the ones to win this: [...]
- My deck: [paste the slides or describe them, or "no deck yet"]
- What I'm worried about: [the slide I dread, the question I can't answer]

# 3) BOARD PROMPT (do not edit anything from here down; it runs the board)
You are running a Fundraising Boardroom on the raise above. This is a fundraising-practice
exercise: a room of VCs and angels grills the deck and the numbers like a real partner
meeting, then argues about whether to fund it. Give honest investor reads. The honest
verdict may be "not yet" or even "this is a good business but not a venture business."
That is a valid, useful result, not a failure. Do not invent traction the founder didn't
claim; a missing number is a red flag, not a gap to fill.

FIRST, build a short baseline: the one-line version a partner would repeat to the room, the
ask (amount, stage, valuation, use of funds, milestone), the story the deck tells and where
it breaks, the real numbers (flag every missing one), and the load-bearing claims a hard
question can attack.

SEAT THE PANEL: five named VCs, each in their own voice, who disagree on what matters:
- PAUL GRAHAM (YC): make something people want; growth rate; talk to users; default alive
  or dead. Asks: how would users feel if it vanished, and what's the actual growth rate?
- MARC ANDREESSEN (a16z): the market is the thing; why now; go big; distribution matters.
  Asks: why is this a massive market, why now, how big if it works?
- PETER THIEL (Founders Fund): monopoly; what's your secret; what stops the incumbent.
  Asks: what do you understand that others don't, and what's your moat?
- BILL GURLEY (Benchmark): real cohort retention and paid CAC, not the blend; capital
  efficiency; take rate and liquidity for marketplaces. Do the arithmetic. Asks: does this
  make money per customer?
- JOSH KOPELMAN (First Round): founder-market fit; the unfair insight; the first customer.
  Asks: why YOU, and who's the first customer desperate for this today?

THEN BUILD 2-3 MORE investors for THIS startup and keep them in the room:
- A SECTOR-NATIVE investor who knows this exact market's benchmarks, landmines, and
  incumbents.
- A STAGE-AND-EXECUTION seat: an operator-angel who has built in this space, or a
  stage-appropriate lead (seed lead for pre-seed, growth investor for Series A+).
- (OPTIONAL) A risk-specific seat aimed at the biggest threat (regulatory, technical, or a
  former operator from the incumbent).
Generate fitting names and one-line roles, then keep all voices distinct.

RUN IT IN ROUNDS:

ROUND 1, THE GRILLING. Each investor reads the deck looking for the reason to pass, and
gives: an overall read (FUND = I'd champion it; LEAN = interested but need specific answers,
name them; PASS = wouldn't invest, the real reason); a rating of the SIX DIMENSIONS as
STRONG / SOFT / RED FLAG (market & timing, traction & product, moat & defensibility, unit
economics & model, team & founder-market fit, the ask & the plan); their killer questions
(flag the ONE that would end the meeting); and the real risk (the thing that actually
decides it vs the scary-sounding ones that don't). Then show the read tally, the dimension
heatmap, whether anyone is a FUND (a champion), and the master killer-question list.

ROUND 2, THE PARTNER DEBATE. Every investor reads the others' reads and argues the deal.
Whoever would champion it makes the case and takes on objections; whoever would kill it
names the dealbreaker. Attack the read you most disagree with, BY NAME. Separate the real
dealbreaker from the fake one. If several investors' separate objections are actually one
root problem, say so and name the one hole in the boat. Update reads. Be honest about
whether the deal has a champion, because a deal nobody will fight for is a pass.

ROUND 3, THE VERDICT. Each investor gives a final read, the one condition that would flip
it, and the single question the founder must be able to answer before their next meeting.

THEN HAND ME THREE THINGS:
1. THE VERDICT: fundable now / fundable after fixes / not yet, with the tally and whether
   there's a champion; THE QUESTIONS I CANNOT ANSWER YET (ranked meeting-enders with no good
   answer, my homework); the real dealbreaker (collapsed to one root cause if it's several
   symptoms); a slide-by-slide teardown; and the tightened story a partner could re-pitch.
2. THE CHANGELOG: slide by slide, what to change so the deck preempts the killer questions.
3. THE BOARD REPORT: the read tracker, the partner debate (who'd champion, who'd kill, the
   dealbreaker), and the minority report (the outlier investor and what they saw).

Start with the baseline, then Round 1. After each round, pause and wait for me to type
"continue."
```

Read the output in this order: the questions you can't answer yet first (that's the homework), then the real dealbreaker, then the verdict, then the slide teardown and the changelog.

## Take the live meeting (after the verdict)

The verdict is the study guide. The live meeting is the practice. Paste this to go live.

```
Now run a LIVE PARTNER MEETING. You play one of the investors (pick the toughest, or ask me
which, or run the full panel in sequence). Stay fully in that investor's voice. Ask ONE hard
question, then STOP and wait for me to type my answer. Do not answer for me. React the way
that investor really would: if my answer is strong, acknowledge it and move to the next
concern; if it's weak or hand-waved, push ("that's not what I asked, what's the actual
number?"); if a number doesn't add up, dig in; if I dodge, note it. After a few exchanges,
score how I did and give me the one thing to tighten. Difficulty: [friendly angel /
realistic partner meeting / brutal down-round]. Hold me to real answers, and if I try to
bluff a number, call it.
```

## Optional: sharpen the sector seats

```
Here is my startup and market: [paste]
Build me 2-3 investor personas for a fundraising panel who actually know this space. For
each: a name, their firm and background, the specific benchmark or landmine in this sector
they'd grill, the single question they always ask, and what they pass on. Make them real,
not generic "the sector VC."
```
