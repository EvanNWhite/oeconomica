# Econ Data Toolkit

A menu of self-contained coding lessons (Python + R) for undergrad econ
research groups — built for micro-focused subgroups (urban econ, antitrust,
behavioral, applied micro, etc.) with widely variable coding backgrounds.

This is **not** a syllabus you work through top to bottom. It's a set of
independent modules. A subgroup lead picks the 1–2 modules their group
actually needs for the week and skips the rest.

## Who this is for

- Students who are new to Python/R and need a working example to copy/adapt
- Students who know some Python or R but not both, and want the same task
  shown in whichever language they're using
- Subgroup leads who need to quickly assemble a session without writing
  material from scratch

## How to navigate

| I want to... | Go to |
|---|---|
| Get Python/R installed and running | `setup/` |
| See what libraries exist and when to use them | `resources/` |
| Learn a specific coding skill (cleaning, analysis, viz, write-up) | `skills/` |
| Get topic-specific dataset/question ideas | `topic-starters/` |
| See a full worked example start to finish | `worked-examples/` |

## Structure

```
econ-data-toolkit/
├── README.md
├── .gitignore
├── setup/
│   ├── python-setup.md
│   └── r-setup.md
├── resources/
│   ├── python-libraries.md
│   └── r-libraries.md
├── skills/
│   ├── 01-data-cleaning/
│   ├── 02-data-analysis/
│   ├── 03-visualization/
│   └── 04-writing-up-results/
├── topic-starters/
│   ├── urban-econ.md
│   ├── antitrust.md
│   ├── behavioral.md
│   └── applied-micro.md
└── worked-examples/
    └── wages-by-education/
```

## Module format

Every skill module has:
- A **Level** tag (Beginner / Intermediate) and **Prerequisites**
- A Python version and an R version, each fully standalone (you don't need
  to read the other one first)
- A short `notes.md` explaining the *why*, not just the *how*
- Placeholder column names (e.g. `column_a`, `column_b`) that need to be
  swapped out for your actual dataset's columns — see the note at the top
  of each example file

## Getting data for your subgroup

You don't need a "real" published dataset to use these modules. Any of the
following are fine:

- **Public datasets** — Kaggle (https://www.kaggle.com), FRED, EIA, Census/
  ACS, BLS/CPS, World Values Survey, or a topic-starter page's suggestions
- **A dataset the subgroup already has** (from a professor, a prior
  project, a public agency, etc.)
- **Simulated or fabricated data** — if the point of a session is to
  practice the coding skill (cleaning, groupby, a chart type) rather than
  produce a real finding, it's completely fine for a lead to generate a
  small fake dataset (e.g., a CSV with made-up years and values) so the
  group has something to practice on immediately, without spending the
  session hunting for a dataset

## Running a session (for subgroup leads)

You don't need to use the whole repo — pick what your group needs.

**1. Has your group picked a dataset yet?**
- No → start with `topic-starters/<your-topic>.md` for question/dataset
  ideas, or use simulated data (see above) if the goal is just practicing
  a skill.
- Yes → move to step 2.

**2. What's the group stuck on, or what's this week's task?**
- Getting Python/R running at all → `setup/`
- "The data is messy / has the wrong columns / has missing values" →
  `skills/01-data-cleaning/`
- "We have clean data but need to compute something (a ratio, a growth
  rate, a group comparison)" → `skills/02-data-analysis/`
- "We need a chart for the memo" → `skills/03-visualization/`
- "We have results, how do we write the memo" → `skills/04-writing-up-results/`

**3. Check the coding level in the room.** If most of the group is new,
spend the first 15 minutes running the example notebook line-by-line
together before asking them to adapt it to their own data. If the group is
comfortable, hand them the module directly.

**Suggested first-meeting sequence for a new subgroup:**
1. Confirm everyone can run Jupyter or RStudio (`setup/`) — ideally before
   the meeting, it eats time otherwise
2. Pick a dataset (real or simulated) using the relevant `topic-starters/`
   page
3. Walk through `skills/01-data-cleaning/` together using that dataset
4. Leave `02-data-analysis` and `03-visualization` as homework, or cover in
   the next session

## Common bugs and fixes

Worth knowing before a session, not during one:

- **"pip install" doesn't work / `pip` not recognized** — usually means
  Python wasn't added to PATH during install. See `setup/python-setup.md`
  troubleshooting section.
- **Wrong file path errors (`FileNotFoundError`)** — the single most common
  bug. The dataset needs to either be in the same folder as the notebook,
  or the student needs the *full* path. Right-click the file → "Get Info"
  (Mac) or "Properties" (Windows) or "Copy as path" to get it exactly right.
  Windows paths need double backslashes (`\\`) or a raw string (`r"..."`).
- **Package version mismatches** (code works for you, breaks for them) —
  usually an old pandas/numpy version. `pip install --upgrade pandas` fixes
  most of these. If someone's on a very old Python (< 3.9), some syntax
  won't work — check `python --version`.
- **R: "could not find function"** — almost always a missing `library(...)`
  call at the top, or the package was never installed
  (`install.packages("...")` first, then `library(...)` every session).
- **Jupyter kernel using the wrong Python** — if `%pip install` succeeds but
  `import` still fails, the notebook kernel isn't pointed at the same
  Python where the package installed. Restart the kernel after installing.

If you hit a new bug, add it here so the next lead doesn't have to debug it
from scratch.

## Contributing

If you fix a bug for someone, or hit a setup issue that isn't documented,
add it to the relevant `notes.md` or to the troubleshooting section above.
The goal is that the next lead doesn't have to re-solve it.
