# Data Cleaning

**Level:** Beginner
**Prerequisites:** None (just get a CSV and either `python_example.ipynb`
or `r_example.R` open)

## Why this matters

Raw datasets almost always have more than you need — extra columns, missing
values, wrong types (a "year" column stored as text, for example). Cleaning
isn't busywork: it's how you go from "a file someone gave you" to "a
dataset that answers your research question."

Cleaning generally does four things:

1. **Reduces noise** — noise being irrelevant variation, measurement error,
   or columns unrelated to your question — so you can focus on what
   matters
2. **Creates a working copy** without touching the raw data (so you can
   always go back to the original if something breaks)
3. **Prevents accidental side effects** — editing a subset shouldn't
   silently change the original dataset
4. **Sets up the rest of the analysis** by making sure types are correct
   (numbers are numeric, dates are dates) before you compute anything

## The typical steps

1. **Inspect** — look at the columns before doing anything (`df.columns` in
   Python, `names(df)` in R). Find the columns relevant to your question.
2. **Subset** — keep only the columns (and sometimes rows) you actually
   need. This is sometimes called "column filtering."
3. **Copy** — work on a copy, not the original object, so edits don't leak
   back into your raw data.
4. **Fix types** — make sure numeric columns are actually numeric, not
   text. This matters because you can't do math on a text "50" the same
   way as a numeric `50`.
5. **Handle missing values** — decide whether to drop rows with missing
   data, or fill them in, depending on your question.

See the Python or R file in this folder for the code. They're independent
of each other — read whichever matches your group's language.
