# Data Analysis

**Level:** Intermediate
**Prerequisites:** `01-data-cleaning` (or a dataset that's already clean)

## Why this matters

Cleaning gets you a usable dataset. Analysis is where you actually answer
your research question — usually by computing something derived from the
raw columns (a ratio, a difference, a growth rate, a group average) and
comparing it across groups or over time.

## Common patterns

- **Filtering** — keep only rows meeting a condition (e.g., one state, one
  year range)
- **Grouping and aggregating** — compute a statistic per group (e.g.,
  average price by state, by year)
- **Merging** — combine two datasets on a shared key (e.g., state + year)
  so you can relate variables that come from different sources
- **Computing derived variables** — a ratio (A/B) or difference (A−B)
  between two columns is one of the most common things a policy-relevant
  question asks for
- **Comparing periods** — e.g., average of the first 5 years vs. average of
  the last 5 years, to summarize how something has changed over time

## A worked pattern: comparing early vs. late periods

A common way to summarize a long time series without over-interpreting
noisy year-to-year swings: take the average over the first few years and
the average over the last few years, then compare. This gives you a clean
"has this gone up, down, or stayed flat" statement, which is usually what a
policy memo needs.

See `worked-examples/wages-by-education/` for a full version of this
pattern.
