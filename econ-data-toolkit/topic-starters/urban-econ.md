# Topic Starter: Urban Economics

## Relevant skill modules
- `skills/01-data-cleaning/` — most urban datasets (housing, transit,
  zoning) need heavy subsetting
- `skills/03-visualization/` — line/bar charts for comparing cities or
  neighborhoods over time
- `skills/02-data-analysis/` — grouping by city/region, merging
  demographic data with housing data

## Dataset ideas
- Zillow Home Value Index (public, downloadable CSVs by metro/zip)
- Census Bureau American Community Survey (ACS) — housing, income, rent
  burden by geography
- City/county open data portals (many US cities publish permitting,
  zoning, and transit ridership data directly)
- Kaggle: search "housing prices," "rent," "transit ridership"

## Example research questions
- How has rent burden (rent as % of income) changed across cities from
  2010–2023?
- Do cities with faster transit ridership growth see slower housing price
  growth (as a rough substitution effect)?
- How does zoning restrictiveness correlate with housing price growth
  across metro areas?

## Note
Urban data is often geographic (city/state/zip-level) — the `merge`
pattern in `02-data-analysis` is especially useful here for combining a
housing dataset with a demographic or transit dataset on a shared
geography key.
