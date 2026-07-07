# Data Cleaning — R
# Level: Beginner | Prerequisites: none
#
# Run this in RStudio, section by section (highlight + Ctrl/Cmd+Enter).
#
# NOTE ON PLACEHOLDERS: "your_data.csv", "column_a", "column_b" below are
# PLACEHOLDER NAMES — they do not refer to a real file or real columns.
# Replace them with your actual filename and column names before running.

# --- Load packages ---
library(tidyverse)

# --- Load the data ---
# PLACEHOLDER: replace "your_data.csv" with the path to your own CSV.
# Easiest: put the CSV in the same folder as your R script/project and
# just use the filename.
df <- read_csv("your_data.csv")  # <-- PLACEHOLDER, replace with your real file
head(df)  # always look at your data before doing anything to it

# --- Inspect the columns ---
names(df)
# Look for the columns relevant to your research question. Note the exact
# spelling/capitalization — you'll need it in the next step.

# --- Subset to only what you need ---
# PLACEHOLDER: "column_a" and "column_b" are stand-ins — replace with your
# actual column names from names(df) above.
sub <- df %>%
  select(year, column_a, column_b)  # <-- PLACEHOLDER columns

head(sub)

# Note: in R, `select()` already returns a new object rather than a
# reference to the original — so unlike some Python operations, you don't
# need an explicit ".copy()" step. `df` stays untouched.

# --- Check for missing values ---
colSums(is.na(sub))

# --- Fix types ---
# CSVs sometimes load numeric columns as text (especially if there are
# stray symbols like "$" or "," in the original file).
sub <- sub %>%
  mutate(
    year = as.integer(year),
    column_a = as.numeric(column_a),  # <-- PLACEHOLDER
    column_b = as.numeric(column_b)   # <-- PLACEHOLDER
  )
# Values that can't convert become NA automatically, with a warning —
# check the warning message to see what didn't convert cleanly.

# --- Drop rows with missing key values (only if needed) ---
sub <- sub %>%
  drop_na(column_a, column_b)  # <-- PLACEHOLDER columns

# --- Sanity check the result ---
head(sub)
summary(sub)  # quick summary stats to make sure numbers look reasonable
