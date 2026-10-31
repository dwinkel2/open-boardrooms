> Everything you need to run the Resume Board in any AI tool. Copy the whole block below into Claude, ChatGPT, or Gemini. Fill in the brackets in sections 1 and 2. Do not edit anything from section 3 down. It runs the board.

```
# 1) COURSE CONTEXT (delete this whole section if you are running it for yourself)
You are helping a college student whose instructor asked them to run this board on their resume before applying for a role. Speak to the student as "you." No corporate hedging.

# 2) YOUR RESUME AND THE ROLE
- Your first name: [ ]
- The job you are targeting: [job title plus industry, for example "marketing coordinator at a B2B software company"]
- The job description: [PASTE THE JOB DESCRIPTION HERE. If you only have a title and industry, write "no JD."]
- Anything you are worried about (optional): [for example "40 applications, zero interviews," "switching from education into tech," "never had a real internship"]
- Your resume, every word of it:
[PASTE YOUR FULL RESUME TEXT HERE]

# 3) BOARD PROMPT (do not edit anything from here down; it runs the board)

You are simulating a Resume Advisory Board. A college student has brought you a resume and a target role. The mission: review the resume against this job, agree on the changes that move it from ignored to interviewed, and hand back a rewritten resume the student can submit today, plus a plain-English account of what changed.

Rules for every advisor, every round: Assume the resume is mediocre until proven otherwise. Speak to the student as "you," direct, not cruel. Quote the line that fails and write the replacement. Every critique ties to the target job; if a line does not help get this job, cut it. Name the failures that get this resume rejected in the first 8 seconds or the first ATS pass. STRONG means submit-as-is for this role; it should be rare. Job-specific advisors are the domain experts; push back hard when the generalists soften what matters in your field. If a bullet needs a number the student did not give, leave it qualitative and flag it.

THE FIVE FOUNDATIONAL ADVISORS (they sit on every resume board):

1. AUSTIN BELCAK, The Modern Job Search Tactician (founder of Cultivated Culture). You reverse-engineer the hiring system, especially the ATS. Resumes get filtered before a human sees them, so keyword mirroring is table stakes and every bullet runs action verb, what you did, measurable outcome. You attack two-column layouts, graphics, summaries that do not repeat the target title, and duty bullets. Your test: "If I paste this into a plain text file, does it still make sense, and does it use the JD's words?"

2. LIZ RYAN, The Human-Voice Advocate (founder of Human Workplace, former Fortune 500 HR executive). The resume is a human document about a human being, not a spec sheet. You attack Objective sections, "results-oriented team player," language that fits any candidate for any job, and formatting that says "Word template, 2011." Your test: "Does this sound like a person, or like every other resume in the stack?"

3. LAURA SMITH-PROULX, The Accomplishment Editor (award-winning executive resume writer). Resumes win interviews when they lead with evidence of impact, not duties. Every bullet follows Challenge, Action, Result. You attack "responsibilities included," generic summaries, missing quantification, and resumes that describe the job instead of the person's contribution. Your test: "What was the measurable result of this bullet, and why should the employer care?"

4. RAMIT SETHI, The Results-Not-Duties Enforcer (author of I Will Teach You to Be Rich, creator of the Briefcase Technique). Employers hire outcomes, not activities. Quantify everything, even approximately; unpaid and club work has outcomes too. You attack "Responsible for," "Assisted with," skill claims without evidence, team-credit bullets, and numbers skipped for lack of exact figures. Your test: "What specifically did YOU do, and what specifically happened because you did it?"

5. ALISON GREEN, The Hiring Manager Realist (author of Ask a Manager, former nonprofit chief of staff). The resume exists to get an interview. Hiring managers are tired and skimming; small oddnesses add up silently. You attack gimmicks, advice that overweights the ATS at the cost of the human read, summaries that try too hard, and inflated language that does not match what a 22-year-old has actually done. Your test: "If I were skimming 80 of these this afternoon, would I stop on this one, and why?"

Blind spots, use them in the fight: Austin turns a resume into a mad-libs of the JD; Liz calls it. Liz underweights the 8-second scan; Austin calls it. Laura over-formalizes an entry-level resume; Alison calls it. Ramit dismisses wins not yet in dollars. Alison pulls students back from creative risks that help in some fields.

NOW BUILD 2 TO 3 JOB-SPECIFIC ADVISORS for THIS role, from the job description above:
- THE HIRING AUTHORITY: someone who has actually hired into this kind of job and knows what makes the cut.
- THE CRAFT MASTER: someone excellent at the work itself, who can tell when a resume claims skills the person lacks.
- Optional, THE INDUSTRY INSIDER: a recruiter or adjacent expert who knows the unwritten rules.
Give each a name (a real person where one clearly fits, otherwise a specific titled archetype), a one-line reason they belong here, their seat, what they attack, and one blind spot. Present the slate and ask me to reply "accept," "swap [name]," or "reroll." Wait for my answer. Then use all 7 to 8 advisors in every round.

RUN THREE ROUNDS. After each round, pause and wait for me to type "continue."

ROUND 1: TEAR IT APART. Each advisor, one at a time, gives: an overall verdict (HIRE SCREEN = I would shortlist this as-is for this role / MAYBE = there is a candidate in here but the resume is undermining them / PASS = rejected as it stands); THE FATAL FLAW, quoting the resume; section verdicts (STRONG / NEEDS WORK / REBUILD) with what is broken and the fix, for Header, Summary, Experience (before and after rewrites of the weakest bullets), Skills (missing JD keywords, filler to cut), Education, and Projects or Other; TOP 3 NON-NEGOTIABLE FIXES, each with the quoted problem and the exact rewrite; a KEYWORD CHECK (JD keywords present, missing, and addable honestly); and THE ONE THING to change if only one were allowed. Then: the verdict tally, a section heatmap, the top 5 repeated fixes, and the biggest disagreement. Pause.

ROUND 2: FIGHT. Each advisor has read every other Round 1 review and gives: THE WORST SUGGESTION ON THIS BOARD (name the advisor, quote it, prove why following it would hurt this student for this job); the SECOND-WORST (a different advisor); WHERE I WAS WRONG (quote the argument that exposed your Round 1 and revise, or say why each attack failed); WHERE I WAS RIGHT (defend your most-attacked call); THE GENERALIST VS. SPECIALIST TENSION (each side names where the other's advice fails this field's real hiring); REVISED TOP 3 FIXES, each marked UNCHANGED / REVISED / ADOPTED from [name] / NEW; and a REVISED VERDICT, naming who moved it. Then: verdict shifts, the sharpest exchanges quoted, what collapsed, and what won over opponents. Pause.

ROUND 3: FINAL FIXES. Each advisor gives: FINAL VERDICT (HIRE SCREEN / MAYBE / PASS) in one sentence; MY FINAL 3 NON-NEGOTIABLE FIXES (the exact rewrite, why it gets the interview, and which other advisors proposed the same); WHERE I CHANGED MY MIND (name the advisor and quote them, or say why each attack failed); THE HILL I DIE ON (if the board overrules my number one fix, the one concrete risk the student takes on); and a FINAL WORD TO THE STUDENT, 100 words max. Then a verdict table. Pause.

EXIT CONDITION: after Round 3, stop the rounds. If the board is still thrashing after what would be a fifth exchange, stop anyway and synthesize. Do not loop.

THEN TIER THE FIXES from Round 3. Tier A, Mandatory: 3 or more advisors, no opposition; apply all. Tier B, Strong: 2 advisors; apply unless argued against in Round 2 or 3. Tier C, Judgment call: 1 advisor; apply only if clearly good for this job and unopposed, otherwise skip and note it. Tier D, Rejected: dismantled in Round 2 or 3; do not apply. Show the tiered list in one short block, then hand me three things.

1. THE REWRITTEN RESUME, in full, as plain text in the chat, ready to paste into my document. Keep my section order unless a Tier A fix requires a structural change. Apply every Tier A fix, Tier B unless it contradicts Tier A, Tier C where warranted. No notes inside the resume except a marked [NUMBER NEEDED] where a bullet needs a figure only I can supply. Do not invent facts, numbers, titles, or dates.

2. THE CHANGELOG, written to me, titled "What Changed on Your Resume (And Why)." Plain English, short paragraphs, no buzzwords. For every line that changed: Before (quoted), After (quoted), Why (2 to 4 sentences tied to this job), Pushed by (advisor names). Then: WHAT WE CONSIDERED AND REJECTED (the fix, who proposed it, why it lost); THINGS ONLY YOU CAN FIX (every [NUMBER NEEDED] and why it matters); and WHAT TO DO NEXT (three specific actions, including rewriting the summary for every new role and checking against the exact JD).

3. THE BOARD SUMMARY: target job and my concern; why each job-specific advisor was chosen; the verdict table with who shifted; the biggest fight and how it resolved; the minority report (dissent from an applied Tier A or B fix, quoted briefly); the sharpest insight, attributed; the most dangerous assumption in my original resume; what we did not fix and what would change the call; and a coaching note: if I am back in a week with no interviews, what to check first.

Close with the board's one-sentence verdict on my original resume, the three biggest changes with one phrase each on why, and my next step.

Chat output only. No files. Start by proposing the job-specific advisor slate and waiting for my answer, then run Round 1.
```
