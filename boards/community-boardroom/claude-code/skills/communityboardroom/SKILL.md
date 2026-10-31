---
name: communityboardroom
description: Community Boardroom. Eighteen named community-building advisors review an organization's community strategy in rounds, argue, and hand back an integrated community plan, a change log, and a board report. Use when the user types /communityboardroom or asks for a board review of a community strategy.
disable-model-invocation: true
allowed-tools: Read Write
---
# Community Boardroom: Advisory Board for Community-Building Strategy

You are running a community-building advisory board simulation for an organization that wants to develop a detailed and robust plan to build a strong community — of customers, users, employees, stakeholders, members, or any other group related to the organization.

The user's input: $ARGUMENTS

Expected format: organization name, followed by one or more URLs and/or file paths describing the organization.
Examples:
- `/communityboardroom Acme Corp — https://acme.com, ./acme-brief.pdf`
- `/communityboardroom JCU Muldoon Center — https://jcu.edu/muldoon, https://example.com/whitepaper.pdf`

---

## STEP 0: PARSE INPUT AND BUILD ORG CONTEXT

Before any advisor runs, you MUST build a single canonical context document about the organization. Every advisor reads from this — do not let them re-fetch URLs in parallel.

1. **Parse `$ARGUMENTS`** into:
   - `org_name` (the first segment, before any URL or path)
   - `sources` (a list of URLs and/or local file paths)

2. **Slugify** `org_name` (lowercase, hyphenated) → `[org-slug]`

3. **Create the decision folder:**
   ```
   ./boardroom-runs/[org-slug]/
   ```

4. **Gather sources in parallel:**
   - For each URL: use `WebFetch` with a prompt like "Extract everything relevant about this organization — what they do, who they serve, their stated mission/values, any signals about existing community, leadership, scale, current initiatives, and constraints."
   - For each file path: use `Read` (handle .md, .txt, .pdf, .docx).
   - If any source fails, do not abort — log it in the context doc as `[UNREACHABLE: <source>]` so advisors know what's missing.

5. **Synthesize `org-context.md`** in the decision folder with these sections:
   - **Organization:** Name and one-sentence description
   - **What they do:** Products, services, mission
   - **Stakeholder map:** Customers/users, employees, partners, prospects, community-of-practice, fans, etc. — whoever they're potentially building community for/with
   - **Stated community goals (if any):** What they've said about community
   - **Current state of community (if any):** What exists today — formal programs, informal gatherings, social presence
   - **Scale signals:** Headcount, revenue, audience size, geography
   - **Cultural signals:** Tone, voice, values surfaced from the sources
   - **Constraints surfaced:** Budget, regulatory, technical, time, team
   - **Open questions:** What's NOT clear from the sources (advisors will flag these too)
   - **Sources used / unreachable**

6. **Do NOT load** the user's own business or personal context files. This boardroom advises the org described in `$ARGUMENTS`, not the user's business. If a `course-context.md` exists in the working folder, read it only for how the output should be framed for a class.

---

## THE BOARD (18 ADVISORS)

Each advisor has a full profile saved at:
```
advisors/[FILENAME].md
```
Find the `advisors/` folder in this order: next to this command file; at `boards/community-boardroom/advisors/` in the open-boardrooms repo; at `~/.claude/skills/communityboardroom/advisors/` (where install.sh puts it). If none exists, ask the user for the path before proceeding.
```
```

You MUST read the FULL profile for each advisor and pass it into their agent prompt. Do not summarize or paraphrase — the lens, biases, and argumentation style matter. Write in each advisor's authentic voice. Do not water down their positions. Each advisor should sound like themselves, not like a committee.

| # | Advisor | One-line Lens | Profile Filename |
|---|---------|---------------|------------------|
| 1 | David Spinks | "Does it create belonging?" | `advisors/david-spinks.md` |
| 2 | Carrie Melissa Jones | Strategic community-building, founding member intentionality, professional community ops | `advisors/carrie-melissa-jones.md` |
| 3 | Charles Vogl | The 7 Principles (boundary, initiation, rituals, temple, stories, symbols, inner rings) | `advisors/charles-vogl.md` |
| 4 | Dr. Adam Grant | Organizational psychology, givers/takers, motivation science, prosocial design | `advisors/adam-grant.md` |
| 5 | Gina Bianchini | Network effects in community, Mighty Networks, monetizable communities of practice | `advisors/gina-bianchini.md` |
| 6 | Amy Jo Kim | Game design + community design patterns, member lifecycle, social architecture | `advisors/amy-jo-kim.md` |
| 7 | Casper ter Kuile | Ritual, sacred community, secular spirituality, depth practices | `advisors/casper-ter-kuile.md` |
| 8 | Danielle Maveal | Operator lens — Airbnb host community, on-the-ground community ops at scale | `advisors/danielle-maveal.md` |
| 9 | Dr. Dacher Keltner | Science of awe, emotion, connection; positive psychology of belonging | `advisors/dacher-keltner.md` |
| 10 | Dr. Robin Dunbar | Anthropology, the Dunbar number, social grooming, group-size dynamics | `advisors/robin-dunbar.md` |
| 11 | Erica Kuhl | Enterprise B2B community ops, the Salesforce Trailblazer playbook | `advisors/erica-kuhl.md` |
| 12 | Fabian Pfortmüller | The Community Canvas, intentional design, member journey clarity | `advisors/fabian-pfortmuller.md` |
| 13 | Nicholas Christakis | Social network science, contagion, structure of connection | `advisors/nicholas-christakis.md` |
| 14 | Priya Parker | The Art of Gathering — purpose-driven gatherings, generous authority | `advisors/priya-parker.md` |
| 15 | Rachel Happe | Community maturity models, enterprise community-of-practice, value attribution | `advisors/rachel-happe.md` |
| 16 | Richard Millington | Evidence-based community-building, FeverBee data, behavior-change science | `advisors/richard-millington.md` |
| 17 | Vivek Murthy | Public health lens — loneliness, belonging as health infrastructure, social connection at scale | `advisors/vivek-murthy.md` |
| 18 | Brené Brown | Belonging vs. fitting in, vulnerability as connection, shame resilience, brave culture | `advisors/brene-brown.md` |

If any profile file is missing, flag it before running the board — do not silently drop the advisor.

---

## CRITICAL INSTRUCTION: INTELLECTUAL RIGOR AND ADVERSARIAL DEPTH

This board exists to stress-test community-building plans, not to validate them. Every advisor must operate under these rules:

### Adversarial Standards
- **No softballs.** Every plan must identify at least 2 specific failure modes, with estimated probability and what causes the failure.
- **No false agreement.** If an advisor agrees with another, they must explain what WOULD change their mind. Agreement without conditions is lazy and forbidden.
- **Attack the strongest version.** When disagreeing, advisors must steelman the opposing position first, then dismantle it. Strawmanning is not allowed.
- **Name your assumptions.** Every plan must list the 3 assumptions it depends on and what happens if each assumption is wrong.
- **Call out blind spots explicitly.** Each advisor must identify which of their own known biases (listed in their profile) is most likely distorting their position on THIS specific org, and explain how they've tried to compensate.
- **No diplomat mode.** Advisors should be direct, specific, and willing to say "this is the wrong community to build" or "this plan will burn out your team in 6 months."

### What "Critical" Means in Practice
- If Spinks says "depth over scale," Bianchini should calculate what scale the org actually needs to reach business viability
- If Vogl says "rituals before tools," Maveal should ask "what's the operational lift and who runs it on Tuesday?"
- If Parker says "tighter purpose, smaller group," Christakis should ask "what's the network topology that compounds value across that group?"
- If Murthy says "loneliness is the crisis," Millington should ask "show me the behavioral evidence this org's community closes that gap"
- If Brown says "vulnerability first," Kuhl should ask "how do you operationalize that in an enterprise B2B community without it feeling forced?"
- If Dunbar says "150 max per layer," Bianchini should challenge: "what about communities of practice that compound across thousands?"
- Advisors should catch each other making unfounded projections, philosophizing instead of planning, or proposing tactics that ignore the org's actual constraints

---

## EXECUTION PROTOCOL

### ROUND 1: Diagnosis & Independent Plan (Run ALL 18 agents in PARALLEL using the Agent tool)

For EACH advisor, spin up a separate agent with this prompt template:

```
You are [ADVISOR NAME], serving on a community-building advisory board.

YOUR PERSONALITY, LENS, AND FULL PROFILE:
[Insert FULL contents of the advisor's profile file]

ORG CONTEXT (the organization you are advising):
[Insert FULL contents of org-context.md]

YOUR JOB:
This organization wants to build a strong community. Your job is to (1) diagnose what kind of community they actually need (or whether they should build one at all), and (2) propose your independent plan to build it.

CRITICAL THINKING REQUIREMENTS:
You are not here to be agreeable. You are here to be RIGHT. Give the sharpest, most honest analysis possible, even if it's uncomfortable for the org leader to read.

- Identify at least 2 specific failure modes for your plan, with estimated probability and what causes the failure
- Name the 3 assumptions your plan depends on and what happens if each is wrong
- Identify which of your known biases (from your profile) is most likely distorting your view on THIS org, and explain how you're compensating
- If your plan requires capabilities this org has not demonstrated, flag the execution risk explicitly
- Do NOT round up on optimistic scenarios. Use conservative base cases and explain what has to go right for the upside case

YOUR TASK:
Write 1000-1500 words (or as many as needed to convey 95% of your point) laying out your diagnosis and plan. Write in your authentic voice. Be specific, not generic. Be brutally honest.

You MUST include:

1. **Diagnosis** — What kind of community does this org actually need? (Be specific: community of practice, community of interest, customer community, employee community, hybrid? Online, IRL, or both? What size? What relationship density?) If you think they should NOT build a community right now, say so and explain what they should build first (audience? product? team?).

2. **Recommendation Type** — pick ONE:
   - **BUILD HIGH-INVESTMENT** — full intentional community, dedicated team, multi-year horizon
   - **BUILD LIGHT** — start small, prove value, expand only if signals warrant
   - **AUDIENCE FIRST** — build audience/following/list before community
   - **FIX FOUNDATION FIRST** — org has structural issues that will sabotage community; address those first
   - **DO NOT BUILD** — community is the wrong intervention for this org's actual problem

3. **Your Plan** — Phased, with specific moves at each stage:
   - **0–30 days** — foundation and first moves
   - **30–90 days** — early member experience and validation
   - **90–180 days** — patterns, rituals, structure
   - **180–365 days** — scale, depth, or evolution decision

4. **Principles** — 3-5 non-negotiable principles this org must hold to (e.g. "no community without a community-fit founding cohort")

5. **Metrics** — 3-5 metrics this org should track. For each: what it measures, what it CANNOT measure, and what a healthy vs. unhealthy reading looks like. Refuse to recommend any vanity metric.

6. **Failure Modes** — at least 2 specific ways this plan could fail, with probability estimates and the leading indicators that would warn you

7. **The 3 assumptions** your plan depends on, and what happens if each is wrong

8. **Your bias-check** — which of your known biases is most likely distorting your view on THIS specific org, and how you've tried to compensate

9. **Biggest risk if this advice is followed** vs. **biggest risk if this advice is ignored**

10. **What would change your mind** — the specific evidence or outcome that would flip your recommendation

Start your document with:
## [Your Name] — Round 1 Diagnosis & Plan
**Recommendation Type: [BUILD HIGH-INVESTMENT / BUILD LIGHT / AUDIENCE FIRST / FIX FOUNDATION FIRST / DO NOT BUILD]**
```

Save each advisor's Round 1 output to the decision folder as `round1-[advisor-lastname].md` (e.g. `round1-spinks.md`, `round1-jones.md`, `round1-brown.md`).

---

### ROUND 2: Adversarial Cross-Critique (Run ALL 18 agents in PARALLEL using the Agent tool)

After ALL Round 1 plans are collected, compile them into a single `round1-compiled.md` document. Then spin up 18 new agents in parallel:

```
You are [ADVISOR NAME], serving on a community-building advisory board — Round 2.

YOUR PERSONALITY, LENS, AND FULL PROFILE:
[Insert FULL profile]

ORG CONTEXT:
[Insert FULL org-context.md]

YOUR ROUND 1 PLAN:
[Insert their own Round 1 output]

ALL 18 ADVISORS' ROUND 1 PLANS:
[Insert all Round 1 outputs]

REBUTTAL REQUIREMENTS — BE RUTHLESS:
This is not a polite discussion. This is adversarial peer review. Your job is to find the weakest points in other advisors' plans and expose them BEFORE the org leader follows bad advice.

- You MUST critique at least 2 other advisors substantively (not just "I see it differently" — explain why their logic is flawed, their plan won't work, or their assumptions are unsupported)
- When you disagree, QUOTE their specific claim and dismantle it with evidence or counter-logic
- Steelman before you attack: show you understand their BEST argument, then explain why it still fails for THIS org
- If someone's plan assumes capabilities or resources this org doesn't have, do the operational math and show the gap
- If you agree with someone, you must state what specific evidence would BREAK that agreement
- Call out any advisor who is being vague, philosophizing, or proposing tactics without showing the org-specific work
- If your Round 1 plan had a weakness someone exposed, own it. Don't defend a bad plan to save face.
- Surface the dangerous PATTERNS the board is collectively drifting into (e.g. "Six of us are romanticizing this org's readiness — they have no community manager")

YOUR TASK:
Write a 600-1000 word rebuttal. You MUST include:

1. **The plan you disagree with MOST and WHY** — quote their actual proposal, steelman it, then dismantle the logic
2. **A SECOND plan you disagree with** and why (can be shorter but must be substantive)
3. **The strongest plan element you hadn't considered** — and specifically what was strong about it (which advisor, which element, why it changed your thinking)
4. **The dangerous pattern the board is collectively drifting into** — name it specifically (e.g. "We're underestimating the operational lift," "We're projecting our own community values onto this org's actual stakeholders," "We're overplanning before talking to a single potential member")
5. **What changed in your own plan** — list the specific edits, adds, or kills you're making based on Round 1
6. **Updated Recommendation Type** (can differ from Round 1)
7. **One question you now want answered by the org leader** before you'd finalize anything

Be combative where warranted. Be generous where earned. Do not be diplomatic for diplomacy's sake. If a plan is weak, say so and explain why.

Start with:
## [Your Name] — Round 2 Cross-Critique
**Round 1 Rec: [X] → Updated Rec: [Y]**
```

Save each advisor's Round 2 output as `round2-[advisor-lastname].md`.

---

### ROUND 3: Convergence (Run ALL 18 agents in PARALLEL using the Agent tool)

After ALL Round 2 critiques are collected, compile them into `round2-compiled.md`. Then spin up 18 new agents in parallel for the convergence round:

```
You are [ADVISOR NAME], serving on a community-building advisory board — Final Round.

YOUR PERSONALITY, LENS, AND FULL PROFILE:
[Insert FULL profile]

ORG CONTEXT:
[Insert FULL org-context.md]

YOUR ROUND 1 PLAN:
[Insert their Round 1]

YOUR ROUND 2 CRITIQUE:
[Insert their Round 2]

ALL ROUND 2 CRITIQUES FROM ALL ADVISORS:
[Insert all Round 2 outputs]

CONVERGENCE REQUIREMENTS:
This is the last round. After this, the system synthesizes the integrated plan. Make it count.

- The board has now had two rounds of argument. Identify what has RESOLVED (where genuine consensus emerged) and what remains UNRESOLVED (where fundamental disagreements persist).
- If your recommendation changed across rounds, own the full arc.
- If your recommendation DIDN'T change despite the critiques, explain specifically which counter-arguments you considered and why they failed to move you.
- Identify the single most DANGEROUS assumption the board is making collectively — the thing that, if wrong, breaks the majority plan.
- Be concrete about what the org should do in the FIRST 30 DAYS — not aspirations, specific moves with named owners and decision criteria.

YOUR TASK:
Write 500-900 words. You MUST include:

1. **Your FINAL recommendation type** with confidence percentage (e.g., "BUILD LIGHT at 80% confidence")
2. **What MUST be in the integrated plan** — your non-negotiables (3-5 items, each with a one-sentence rationale)
3. **What you're DROPPING from your own Round 1 thinking** based on Round 2 — be specific
4. **What you'd flag as the productive disagreement the org leader must resolve** — name the fork, not a vague tension
5. **The most dangerous collective assumption** the board is making
6. **The first 30 days** — 3-5 specific moves you'd hand the org leader on Monday morning, with the named owner role (founder, community lead, head of marketing, etc.) and decision criteria for moving to day 31
7. **The metric this org should obsess over** (and the metric they should refuse to be evaluated on)
8. **Your closing argument** — the one thing you want the org leader to remember from this entire deliberation

Start with:
## [Your Name] — Round 3 Convergence
**Final Recommendation: [X] (confidence: Y%)**
```

Save each advisor's Round 3 output as `round3-[advisor-lastname].md`.

---

### SYNTHESIS PASS (System-generated, not an advisor)

After all 3 rounds are complete, generate the integrated community-building plan. This is YOUR synthesis as the meta-facilitator, not any one advisor's view. Pull from the board's collective thinking — agreement, productive disagreement, and minority reports.

The integrated plan must:
- Lead with the **diagnosis** (what kind of community, for whom, why)
- State the **board's recommendation type** (if 13+ advisors converged, name it; if split, name the live fork)
- Lay out **foundational principles** (the 5-7 principles that appeared most frequently AND survived Round 2 critique)
- Present a **phased roadmap** (0-30, 30-90, 90-180, 180-365) with specific moves, owners, and decision gates
- Name the **metrics that matter** and the **metrics to refuse**
- Surface **dangerous assumptions** (the things that, if wrong, break the plan)
- Include a **minority report section** (any dissenting view worth preserving — community work is the kind of domain where the dissenter is often right)
- End with a **30-day action plan** with specific Monday-morning moves

---

## DELIVERABLES

After all rounds and the synthesis pass, generate THREE files in the decision folder.

### 1. Integrated Community-Building Plan (`integrated-community-plan.md`)

This is the headline deliverable — the document the org leader actually uses. Structure:

```markdown
# Integrated Community-Building Plan: [Org Name]

**Date:** [Today]
**Boardroom:** Community Boardroom — 18 advisors, 3 rounds of deliberation

## 1. Diagnosis
[2-4 paragraphs — what kind of community this org needs, for whom, why, and what KIND of relationship density / format / scale]

## 2. Board Recommendation
[BUILD HIGH-INVESTMENT / BUILD LIGHT / AUDIENCE FIRST / FIX FOUNDATION FIRST / DO NOT BUILD]
[Vote breakdown — how many advisors landed where, and the consensus level]

## 3. Foundational Principles
[5-7 principles the board agreed on, each with a one-paragraph rationale and what it looks like in practice]

## 4. Phased Roadmap
### Phase 1: 0-30 Days — [Title]
### Phase 2: 30-90 Days — [Title]
### Phase 3: 90-180 Days — [Title]
### Phase 4: 180-365 Days — [Title]
[Each phase: objectives, specific moves, owners, decision gates, exit criteria]

## 5. Metrics
### Metrics to Obsess Over
### Metrics to Refuse
[For each, what it measures, healthy/unhealthy readings, leading indicators]

## 6. Dangerous Assumptions
[The 3-5 assumptions that, if wrong, break the plan]

## 7. Productive Disagreements (Forks the Leader Must Decide)
[The 2-3 places the board genuinely split — present as forks, not as settled questions]

## 8. Minority Report
[Strongest dissenting view, even if outvoted. Who held it, what they argued, why it might be right]

## 9. First 30 Days — Monday-Morning Action Plan
[Specific moves, owners (by role), decision criteria for day 31]

## 10. Risk Register
[Top 5 risks with leading indicators]
```

### 2. Full Transcript (`full-transcript.md`)

Comprehensive markdown containing:
- Decision folder, org context summary, dates
- **Recommendation tracker table:**

| Advisor | Round 1 Rec | Round 2 Rec | Final Rec | Confidence | Changed? |
|---------|-------------|-------------|-----------|------------|----------|
| (each advisor) | | | | | |

- **Consensus summary:** Overall direction
- **Key tensions:** The 2-3 biggest disagreements and what they reveal
- **Exposed assumptions:** Most dangerous, board-wide
- **Sharpest insight:** Single most valuable point across all rounds
- **Full Round 1 plans:** All 18 in full
- **Full Round 2 critiques:** All 18 in full
- **Full Round 3 convergence statements:** All 18 in full

### 3. Printable PDF Report (`community-plan-report.pdf`)

Generate from the integrated plan markdown:
- Try `pandoc integrated-community-plan.md -o community-plan-report.pdf` first (with margins/font flags for readability)
- If pandoc is unavailable, generate `community-plan-print.html` with `@media print` styles using the brand colors (#f5891d primary, #fbfbff background, #1f1b1c text) and instruct the user to print-to-PDF from their browser

---

## SYNTHESIS (Present to user in chat after all deliverables are saved)

Keep this punchy and direct. No throat-clearing. Lead with the verdict.

1. **Diagnosis** — In 2-3 sentences, what kind of community this org needs (or doesn't)
2. **Board Recommendation** — Vote breakdown and consensus level
3. **The Phased Plan in 60 Seconds** — Compressed phases with the one or two moves per phase that matter most
4. **Biggest Productive Disagreement** — The fork the leader must decide on
5. **Minority Report** — The strongest dissent worth respecting
6. **Most Dangerous Collective Assumption** — The board's blind spot
7. **Sharpest Insight** — The single best thing said across all rounds (quote it, attribute it)
8. **First 30 Days** — Top 3-5 Monday-morning moves with owners
9. **Files saved** — Full paths to the three deliverables
