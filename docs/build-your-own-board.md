# Build your own board

The rosters in this repo are strong starting points, not rules. To build a board tuned to your discipline, your students, and the artifacts you actually make, run these three prompts once. Then paste your roster into a board prompt in place of the fixed advisors, or save it as Part 2 of your teaching-board profile for the Teaching Boardroom.

Keep a chat-tool board to eight to twelve voices. Always keep at least two naysayers and one voice asking whose knowledge counts. They are the reason it works.

## Prompt A: write your teaching profile

What it does: builds the file that does double duty. It is the context that picks your board, and it is the memory the board reads at the start of every future run. Run it once. Edit it forever.

```
I teach [discipline] at a [type of institution: community college, R1, regional public,
SLAC, etc.]. My courses are [list courses and levels]. My class sizes run about [number],
and the format is [in person / online / hybrid / async].

Here is how I actually teach and what I care about: [2-4 sentences. Your pedagogy, your
values, what a good class looks like to you.]

Here is what my students are like: [2-3 sentences. Who they are, what they struggle with,
what they bring.]

Interview me one question at a time to fill the gaps. Ask about my hard non-negotiables
(the things a critic should not waste time trying to talk me out of), the constraints I
teach under, and the artifacts I build most often. Ask one question, wait for my answer,
then ask the next. Five to eight questions, no more.

When you have enough, output a clean "Teaching Profile" under 500 words that a stranger
could read and understand how I teach.
```

## Prompt B: draft your board

```
Here is my Teaching Profile:
[paste your Teaching Profile from Prompt A]

I am assembling a personal advisory board of named education thinkers who will review my
teaching artifacts and disagree with each other on purpose. Recommend 10 to 12 advisors.

Rules:
- Each must be a real, named thinker with a distinct framework. Name names.
- They must genuinely conflict. No two who would agree on everything.
- Include at least 3 naysayers whose job is to attack the consensus and push back on my
  own commitments.
- Include at least one voice focused on whose knowledge counts and whose gets erased.
- Bias the picks toward my discipline, my students, and the artifacts I build.

For each: name, the one framework they bring, the single test they would run on my work
(as a question), and one line on why they belong on MY board. Then show me the fault lines:
which advisors fight which, and over what.
```

## Prompt C: profile each member

Run once per advisor. A tool that cites sources (Perplexity, or Claude and ChatGPT with search on) is recommended, because the rule here is the same as everywhere in this repo: no invented facts about real people.

```
Research [Advisor Name], who will serve on a teaching advisory board that reviews my lesson
plans, rubrics, and assignments. Give me a profile I can paste directly into a prompt as
this advisor's persona. Include:
- Their core framework, in 2 to 3 sentences.
- The single test they run on a teaching artifact, as a question.
- What they attack: the 3 to 4 design choices they reject on sight.
- A signature line in their actual voice.
- Their blind spot, so the rest of the board can check them.

Under 200 words, written in second person ("You believe...", "You attack...") so it drops
straight into a role-play prompt. Cite your sources.
```

## Where it goes

- Chat tools: paste the roster into the board prompt in place of the fixed advisors. Keep the rounds, verdicts, and deliverables as they are.
- Teaching Boardroom in Claude Code: save Prompt A's output as Part 1 and the profiles as Part 2 of `~/teaching-boardroom/profile.md`. The template is at `boards/teaching-boardroom/claude-code/teaching-board-profile-template.md`, and a worked example roster is in `boards/teaching-boardroom/claude-code/board.md`.
- A new board for this repo: see [CONTRIBUTING.md](../CONTRIBUTING.md). A board needs more than a roster: an artifact, a failure-mode map, a verdict vocabulary, and an exit condition.
