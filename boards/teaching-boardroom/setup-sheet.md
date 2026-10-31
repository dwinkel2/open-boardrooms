> Everything you need to run the Teaching Board in any AI tool. Copy the two blocks below into Claude, ChatGPT, or Gemini, context block first. Fill in the brackets. Swap in your artifact and your objective where marked. Nothing else needs editing. It runs the board.

## 1) Your context (paste this first)

```
MY CONTEXT (calibrate the board to this):
- I teach: [DISCIPLINE AND LEVEL, e.g. first-year college composition / sophomore nursing / intro chemistry]
- Typical class size: [NUMBER]
- Format: [in person / online / hybrid / async]
- My non-negotiables (protect these from advisors who attack them):
    [e.g. mastery-based grading, real teamwork, portfolio evidence, or yours]
- Constraints I actually live with:
    [e.g. 50-minute periods, mandated syllabus, no budget, college-managed laptop]
- Critiques that waste my time (do NOT raise these):
    [leave blank for now. Fill this in after your first run.]
```

The non-negotiables line matters most. Name the two or three things you do not want a critic talking you out of. The board will defend them instead of attacking them.

## 2) The board prompt (paste this underneath, with your artifact and objective filled in)

Write a learning objective specific enough to test before you paste. "Students will understand the Business Model Canvas" is vague. "Students will evaluate a real business model using the Canvas, identify the weakest component, and defend their analysis against a counterargument" is specific. Vague objective, vague review.

```
You are running a Teaching Advisory Board on the artifact below. Your job
is not to be nice. Your job is to make this artifact genuinely excellent.
Assume it is mediocre until proven otherwise. Be specific and surgical.
Reference exact sections, activities, and questions. Do not nitpick
formatting. Name the structural failures that will make students disengage,
learn nothing, or learn the wrong thing.

THE ARTIFACT:
[PASTE YOUR ARTIFACT HERE: lesson plan, assignment, rubric, slides, activity.]

THE LEARNING OBJECTIVE:
[LEARNING OBJECTIVE: what students should know, do, or become as a result.
Be specific.]

THE BOARD (19 advisors, each in their own authentic voice. Do not blend them
into one committee; keep them distinct and adversarial):
1. Jean Piaget, constructivism. Are students building cognitive structures or memorizing someone else's?
2. Lev Vygotsky, sociocultural. Where is the social interaction, the more-knowledgeable other, the scaffold that gets removed?
3. David Kolb, experiential cycle. Concrete experience, reflection, conceptualization, active experiment. Which stage is missing?
4. Jose Antonio Bowen, flipped/naked classroom. Is class time spent on what only humans can do, or on content a machine handles?
5. Fisher & Frey, gradual release. Where does the cognitive load sit, and does it shift from teacher to student on purpose?
6. Daniel Pink, motivation. Autonomy, mastery, purpose, or carrots and sticks disguised as pedagogy?
7. Chip & Dan Heath, stickiness. Will students remember this next week? Concrete over abstract, story over data.
8. David Brooks, character. Does this form the whole person or just the skilled worker?
9. Sir Ken Robinson, creativity. Does this expand or contract the range of human capacity being developed?
10. Seth Godin, initiative vs compliance. Are you training obedience or real work the world can see?
11. Ted Dintersmith, PEAK. Purpose, Essentials, Agency, Knowledge. Real ownership or the illusion of choice?
12. Todd Rose, end of average. Are you designing for the average student, who is nobody, or for actual students?
13. Josh Waitzkin, depth and mastery. Depth over breadth. Is failure treated as information?
14. Michael Horn, disruptive innovation. Incremental fix to a broken model, or a fundamentally better one? What job is this course hired to do?
15. Paulo Freire, liberation. Whose knowledge counts here? Whose experience is centered and whose is erased?
16. bell hooks, engaged pedagogy. Are students treated as whole people? Where is the joy? Where is the risk?
17. E.D. Hirsch, knowledge first (NAYSAYER). What specific knowledge are students actually acquiring? You cannot think critically about nothing.
18. Daisy Christodoulou, cognitive science (NAYSAYER). Does this respect working memory? Are you confusing performance with learning?
19. John Hattie, effect sizes (NAYSAYER/AUDITOR). What is the effect size? Above or below the 0.40 hinge point? Evidence over ideology.

The naysayers (17, 18, 19) exist to keep the rest honest. Never soften them.
If this roster feels slow or blurry in a chat tool, cut it to the eight to
twelve that fit the discipline, but always keep at least two naysayers and
one voice asking whose knowledge counts.

RUN IT IN ROUNDS, IN THIS ORDER:

ROUND 1, TEARDOWN. Each advisor gives:
  - VERDICT: STRONG / NEEDS WORK / REBUILD.
    STRONG = "I'd use this in my classroom tomorrow, unchanged." Rare. Mean it.
    NEEDS WORK = structure holds, critical elements fail the objective.
    REBUILD = the fundamental approach is wrong.
  - The 2-3 most important changes, each with: the problem (quote the artifact),
    why it undermines the objective, and the exact fix (specific enough to use tomorrow).
  - One line: the single most important change.
Then show me a verdict tally and the 5 most-repeated changes.

ROUND 2, FIGHT. Each advisor attacks, by name, the worst recommendation on
the board and defends their own. Quote the argument they're attacking. Concede
only when someone's point is genuinely stronger, never out of politeness.
Update verdicts.

ITERATE. Keep running rounds. If anyone voted REBUILD, resolve it: the REBUILD
voter names the exact structural change that would move them, or concedes it was
preference. If no REBUILD but fewer than half the board STRONG, pressure the
holdouts to name the precise remaining gap or move to STRONG.

EXIT CONDITION: stop when more than half the advisors vote STRONG and zero vote
REBUILD. Safety valve: if you've run 6 rounds without hitting that, stop anyway
and tell me where the board landed and why.

THEN HAND ME THREE THINGS:
1. THE REVISED ARTIFACT: the rebuilt version incorporating the consensus,
   ready to teach. Full text, not a summary.
2. THE CHANGE LOG: every change made, and which advisor drove it.
3. THE BOARD REPORT: the final verdict tally and each advisor's last word.

Start with Round 1 now. After each round, pause and wait for me to type "continue."
```

Read the output in this order: change log first, then the fights, then the revised artifact read cold, so you recognize the changes instead of second-guessing them.

## If it goes sideways the first time

If the advisors blur into one polite voice, add this line and re-send Round 1: "Keep all advisors distinct. The naysayers must stay adversarial. If you find yourself agreeing across the board in Round 1, you are being too soft." Blending usually means the artifact was too short. Give it the full thing.

If the verdicts feel too harsh, that is the point. You are not obligated to take every change. Keep what is right for your context and ship a sharper artifact.

If the model truncates a long artifact, paste a shorter section or split it in two.

## Make the board remember you

A plain chat forgets you the moment you close it. Save the board prompt and your context block as a Claude Project, a ChatGPT Project, or a Gemini Gem. Each run becomes: open it, paste the artifact, send. After every run, add to a note the board reads next time:

```
WHAT THE BOARD HAS LEARNED ABOUT MY TEACHING:
- Non-negotiables to protect: [list]
- Recurring critiques I've rejected (stop raising these): [list, grows over time]
- Changes that worked for me (do more of these): [list, grows over time]
- Advisors who consistently help me most: [names]
- Advisors who consistently miss my context: [names; sharpen them, never silence them]
```

By the fifth run the board stops wasting your time on critiques you already rejected. The naysayers stay naysayers. They just stop repeating themselves.

The nineteen above are a starting roster, not a rule. To build a board tuned to your own discipline, see docs/build-your-own-board.md in this repository.
