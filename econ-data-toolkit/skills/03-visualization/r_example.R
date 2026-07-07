# Data Visualization — R
# Level: Beginner-Intermediate | Prerequisites: 01-data-cleaning, 02-data-analysis
#
# Assumes a cleaned tibble `sub`.
#
# NOTE ON PLACEHOLDERS: "column_a" and "column_b" below are PLACEHOLDER
# NAMES standing in for your actual column names. Replace them before running.

library(tidyverse)

# --- Line chart: trend over time ---
sub %>%
  pivot_longer(cols = c(column_a, column_b), names_to = "series", values_to = "value") %>%
  ggplot(aes(x = year, y = value, color = series)) +
  geom_line() +
  labs(title = "Column A and B Over Time", y = "Value") 

# --- Scatterplot: relationship between two variables ---
ggplot(sub, aes(x = column_a, y = column_b)) +
  geom_point() +
  labs(title = "Column A vs Column B")

# --- Bar chart: comparing a few categories/years ---
few <- sub %>% filter(year %in% c(2000, 2010, 2020))

few %>%
  pivot_longer(cols = c(column_a, column_b), names_to = "series", values_to = "value") %>%
  ggplot(aes(x = factor(year), y = value, fill = series)) +
  geom_col(position = "dodge") +
  labs(title = "Values by Selected Years", x = "Year", y = "Value")

# --- Histogram: distribution of one variable ---
ggplot(sub, aes(x = ratio)) +
  geom_histogram(bins = 20) +
  labs(title = "Distribution of Ratio")

# --- Boxplot: compare distributions across variables ---
sub %>%
  pivot_longer(cols = c(column_a, column_b), names_to = "series", values_to = "value") %>%
  ggplot(aes(x = series, y = value)) +
  geom_boxplot() +
  labs(title = "Distribution Comparison")
