# Python Libraries for Econ Data Work

**Level:** Beginner–Intermediate

A quick reference for what to reach for and when. Install any of these with
`pip install <name>`.

| Library | What it's for | When you need it |
|---|---|---|
| `pandas` | Loading, cleaning, reshaping tabular data | Almost always — this is your core tool |
| `numpy` | Numerical operations, arrays | Underlying pandas; direct use for math-heavy computation |
| `matplotlib` | Basic plotting | Line charts, scatter, bar, histogram, boxplot |
| `seaborn` | Nicer statistical plotting, built on matplotlib | Distribution plots, correlation heatmaps, cleaner defaults |
| `statsmodels` | Regression, hypothesis testing | Running OLS, checking significance, formal econometrics |
| `scikit-learn` | Machine learning, some stats tools | If your project involves prediction/classification, less common for descriptive policy memos |
| `requests` | Pulling data from web APIs (e.g. EIA, FRED) | When the dataset isn't a static CSV |

## Typical import block

```python
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import statsmodels.api as sm
```

## Which one do I actually need?

- Just cleaning/summarizing a CSV → `pandas` alone is enough
- Making charts for a memo → add `matplotlib` (or `seaborn` if you want
  nicer defaults with less code)
- Running a regression to support a claim in the memo → `statsmodels`
- Pulling live data instead of a downloaded file → `requests`

Don't install everything up front — install as you need it. It's fine (and
common) for a project to only use `pandas` and `matplotlib`.
