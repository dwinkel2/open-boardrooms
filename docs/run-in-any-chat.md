# Run a board in any chat tool

No install, nothing technical. The board is a prompt. You paste it into a chat and it runs.

## Step 1: open your tool

Lead with Claude. It handles long, multi-round deliberation best. ChatGPT and Gemini run the same prompt. The free tier of any of them handles one run.

1. Go to claude.ai (or chatgpt.com, or gemini.google.com) and open a new, empty chat. A fresh chat, not one you have been using for something else.
2. Keep the board's `setup-sheet.md` open in another tab. You will paste from it.
3. That is the whole install. There is no install.

## Step 2: fill in the brackets, then copy the one block

Everything the board needs is in the single block on the setup sheet. Replace every [square-bracket] placeholder with your own words and delete the brackets. If a line does not apply to you, delete the whole line. Write the word "guess" next to any number you made up. Do not change anything from the BOARD PROMPT line down. It runs as-is.

If you are a student, your instructor may give you the course-context section already filled in. If nobody gave you one, delete that section.

## Step 3: run it

1. Paste your filled-in block into the chat. Send.
2. Read Round 1.
3. Type "continue" through the rounds until the board hands you the deliverables.

Read the output in this order so you never feel lost: the change log first, then the fights, then the rebuilt artifact read cold, so you recognize the changes instead of second-guessing them.

## If it goes sideways the first time

The advisors blur into one polite voice. Add this line and re-send Round 1: "Keep every advisor distinct and adversarial. If you find yourself agreeing across the board in Round 1, you are being too soft. Quote the exact lines that fail." Blending usually means the artifact was too short. Give it the full thing.

The verdicts feel harsh. That is the design. Every board assumes the artifact is weak until proven otherwise. You are not obligated to take every fix. Keep what is right for your case.

It accepts a number you know is soft. Re-send with: "Do not accept my inputs at face value. Flag every guessed number and show the model both ways."

The model truncates a long artifact. Paste a shorter section, or split it in two. A bigger context window helps.

It skips a round or never pauses. Re-send with: "Run one round at a time. After each round, stop and wait for me to type continue."

## Make the board remember you

A plain chat forgets you the moment you close it. Save the board so it sharpens every run instead of starting generic.

The simple way: keep your filled-in course-context block in a note. Add a line every time an advisor nails something or wastes your time. Paste the updated block at the top of every run.

The better way: save the board as a reusable space so you never paste the prompt again.

- Claude: create a Project. Add the board prompt and your context block as project knowledge. Each run is: open the Project, paste the artifact, send.
- ChatGPT: create a Project. Drop the board prompt and context into its instructions.
- Gemini: create a Gem with the board prompt as its instructions.

After every run, spend 90 seconds on this and save it into the space:

```
WHAT THE BOARD HAS LEARNED ABOUT MY WORK:
- Non-negotiables to protect: [list]
- Recurring critiques I have rejected (stop raising these): [list, grows over time]
- Changes that worked for me (do more of these): [list, grows over time]
- Advisors who consistently help me most: [names]
- Advisors who consistently miss my context: [names; sharpen them, never silence them]
```

By the fifth run the board stops wasting your time on critiques you already rejected.
