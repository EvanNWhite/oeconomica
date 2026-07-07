# Worked Example: BA Wage Premium Over Time

**Uses:** `01-data-cleaning`, `02-data-analysis`, `03-visualization`

This is a full, start-to-finish example based on `wages_by_education.csv`
(a time series of wages by education level). It's the flagship example
for this repo — if you only look at one worked example, use this one.

## 1. Research question

How has the BA wage premium changed over time (bachelor's degree vs. high
school)?

Two ways to measure it:
- **Ratio premium:** `BA / HS`
- **Dollar premium:** `BA − HS`

## 2. Load the data

```python
import pandas as pd
df = pd.read_csv("wages_by_education.csv")
df.head()
```

## 3. Inspect columns

```python
df.columns
```
Look for columns representing high-school-level and bachelor's-degree-level
wages.

## 4. Clean / subset

```python
sub = df[["year", "high_school", "bachelors_degree"]].copy()
```

## 5. Compute the premium

```python
sub["ba_premium_ratio"] = sub["bachelors_degree"] / sub["high_school"]
sub["ba_premium_dollars"] = sub["bachelors_degree"] - sub["high_school"]
```

Interpretation:
- `ba_premium_ratio = 1.50` → BA wages are 50% higher than HS wages
- `ba_premium_dollars = 12` → BA wages are $12 higher than HS wages (in
  the dataset's wage units)

## 6. Visualize

```python
ax = sub.plot(x="year", y="ba_premium_ratio",
              title="BA / HS Wage Premium Over Time", legend=False)
ax.set_ylabel("BA wage divided by HS wage")
```

## 7. Summarize the change

Compare the earliest 5 years to the most recent 5 years:

```python
first5 = sub.head(5).mean(numeric_only=True)
last5 = sub.tail(5).mean(numeric_only=True)
```

## 8. Conclusion (template)

> "From ____ to ____, the BA/HS wage premium (ratio) changed from about
> ____ to ____."
>
> "In dollar terms, the BA−HS gap changed from about ____ to ____,
> suggesting the education premium has (widened / narrowed / stayed flat)
> over time."

## Resume bullet point (for reference)

> Analyzed the education wage premium by using pandas in Jupyter, to clean
> and subset wage-by-education time-series data (1973–2022), compute BA
> vs. high school wage gaps (ratio and dollar premium), and visualize
> long-run trends to summarize how returns to education changed over time.

See `notebook.py` in this folder for the runnable version.
