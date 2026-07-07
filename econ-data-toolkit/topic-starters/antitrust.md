# Topic Starter: Antitrust

## Relevant skill modules
- `skills/02-data-analysis/` — market share computation, concentration
  ratios, groupby by firm/industry
- `skills/03-visualization/` — bar charts for market share, line charts for
  concentration trends over time
- `skills/04-writing-up-results/` — antitrust memos often need a
  stakeholder/feasibility chart (consumers, incumbent firms, new entrants)

## Dataset ideas
- SEC EDGAR firm financials (revenue by company, by year)
- Compustat (if your institution has access) — firm-level financial data
- Kaggle: search "merger," "market concentration," "industry revenue"
- FTC/DOJ merger case data (public case filings, more qualitative)

## Example research questions
- How has market concentration (e.g., a Herfindahl-Hirschman-style measure
  computed from revenue shares) changed in a given industry over time?
- Did a specific merger correlate with a price increase for consumers,
  comparing pre- and post-merger periods?
- How does firm count in an industry relate to average prices over time?

## Note
A basic concentration measure is just a groupby + share calculation:
group revenue by firm within an industry-year, compute each firm's share
of total industry revenue, then sum squared shares for an HHI-style
measure. This builds directly on the groupby pattern in
`02-data-analysis`.
