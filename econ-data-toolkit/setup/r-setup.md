# R + RStudio Setup

**Level:** Beginner
**Prerequisites:** None

## Install R

1. Download R from https://cran.r-project.org/ (pick your OS).
2. Run the installer with default options.

## Install RStudio

1. Download RStudio Desktop (free) from https://posit.co/download/rstudio-desktop/
2. Install with defaults. RStudio is the editor; R is the underlying
   language — you need both.

## Install common packages

Open RStudio and run in the console:

```r
install.packages("tidyverse")
```

This installs `dplyr`, `ggplot2`, `readr`, and several other packages used
across these modules in one go. It can take a few minutes the first time.

## Loading packages each session

Installing a package (`install.packages(...)`) only needs to happen once.
But you need to **load** it every session with `library(...)`:

```r
library(tidyverse)
```

## Troubleshooting

- **"could not find function X"** → you probably forgot `library(...)` for
  the package that function belongs to. Loading is per-session, not
  automatic.
- **`install.packages` fails / times out** → check your internet connection
  or try a different CRAN mirror (Tools → Global Options → Packages in
  RStudio).
- **RStudio can't find R** → make sure R was installed first, then
  reinstall RStudio, which should auto-detect it.
