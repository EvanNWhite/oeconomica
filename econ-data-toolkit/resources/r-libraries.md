# R Libraries for Econ Data Work

**Level:** Beginner–Intermediate

Install with `install.packages("<name>")`, then load each session with
`library(<name>)`.

| Library | What it's for | When you need it |
|---|---|---|
| `dplyr` | Filtering, selecting, mutating, grouping data | Almost always — core data manipulation |
| `readr` | Fast, clean CSV reading | Loading data (better than base R's `read.csv` for large/messy files) |
| `tidyr` | Reshaping data (wide ↔ long) | When your data needs restructuring before analysis |
| `ggplot2` | Plotting | Any chart for a memo |
| `lubridate` | Working with dates | Time-series data with date columns |
| `broom` | Turning model output into tidy data frames | Cleaning up regression results for reporting |

Installing `tidyverse` gets you `dplyr`, `readr`, `tidyr`, `ggplot2`, and
`lubridate` all at once:

```r
install.packages("tidyverse")
library(tidyverse)
```

## Typical setup block

```r
library(tidyverse)
```

That single line covers cleaning, reshaping, and visualization for most
undergrad projects. Add `library(broom)` only if you're running regressions
and want clean output tables.

## Which one do I actually need?

- Just cleaning/summarizing a CSV → `dplyr` + `readr` (both in tidyverse)
- Making charts → `ggplot2` (in tidyverse)
- Regression for the memo → base R's `lm()` is enough; add `broom` if you
  want the output as a clean table
