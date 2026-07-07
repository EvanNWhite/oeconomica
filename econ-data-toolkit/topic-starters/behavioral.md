# Topic Starter: Behavioral Economics

## Relevant skill modules
- `skills/01-data-cleaning/` — survey/experiment data often has messy
  categorical responses that need recoding
- `skills/03-visualization/` — histograms and boxplots for comparing
  treatment vs. control distributions
- `skills/02-data-analysis/` — group comparisons (treatment vs. control
  means), which is the core behavioral-econ analysis pattern

## Dataset ideas
- Kaggle: search "survey," "experiment," "nudge"
- General Social Survey (GSS) — public, large, survey-based
- Published experimental datasets accompanying behavioral econ papers
  (many journals require authors to post replication data)
- World Values Survey — cross-country attitudes/behavior data

## Example research questions
- Do survey respondents shown a "default enrollment" framing report
  higher intended participation than those shown an "opt-in" framing?
- Does self-reported present bias correlate with lower savings rates in
  survey data?
- How does a behavioral nudge (e.g., a reminder message) affect a
  measured outcome compared to a control group?

## Note
Behavioral work often boils down to comparing a group means (treatment vs.
control) — this is a filter + groupby, exactly the pattern in
`02-data-analysis`. A boxplot (`03-visualization`) is usually the clearest
way to show a treatment effect visually, since it shows the full
distribution, not just the average.
