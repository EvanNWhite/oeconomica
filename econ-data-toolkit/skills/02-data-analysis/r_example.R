# Data Analysis — R
# Level: Intermediate | Prerequisites: 01-data-cleaning
#
# Assumes you already have a cleaned tibble `sub` with numeric columns.
#
# NOTE ON PLACEHOLDERS: "column_a", "column_b", "state", "price" etc. below
# are PLACEHOLDER NAMES standing in for your actual column names. Replace
# them before running.

library(tidyverse)

# --- Filtering ---
filtered <- sub %>% filter(year >= 2010)

# Multiple conditions
filtered2 <- sub %>% filter(year >= 2010, year <= 2020)

# Membership: keep rows where a column matches any value in a list
# subset <- df %>% filter(state %in% c("IL", "CA", "TX"))

# --- Sorting ---
sub_sorted <- sub %>% arrange(year)

# --- Grouping and aggregating ---
# grouped <- df %>% group_by(state) %>% summarize(avg_price = mean(price))

# Multiple grouping columns and multiple aggregations:
# grouped2 <- df %>%
#   group_by(state, year) %>%
#   summarize(avg_price = mean(price), total_sales = sum(sales))

# --- Merging two datasets ---
# other <- read_csv("other_data.csv")
# merged <- sub %>% left_join(other, by = c("state", "year"))
# left_join keeps all rows from `sub`, matching in data from `other` where available

# --- Computing a derived variable (ratio + difference) ---
sub <- sub %>%
  mutate(
    ratio = column_a / column_b,          # <-- PLACEHOLDER columns
    difference = column_a - column_b      # <-- PLACEHOLDER columns
  )
tail(sub)

# --- Summarizing change over time: early period vs. late period ---
first5 <- sub %>% slice_head(n = 5) %>% summarize(across(where(is.numeric), mean))
last5  <- sub %>% slice_tail(n = 5) %>% summarize(across(where(is.numeric), mean))

summary_table <- tibble(
  avg_year_first5 = first5$year,
  avg_year_last5 = last5$year,
  ratio_first5 = first5$ratio,
  ratio_last5 = last5$ratio,
  difference_first5 = first5$difference,
  difference_last5 = last5$difference
)
summary_table
