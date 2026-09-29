# Housekeeping
## Inventory every active object currently residing in session RAM
objects()
## Purge global environment
rm(list = ls())
# Confirm that global session memory now completely vacant
objects()

# Load the primary data science framework and Excel import library
library(tidyverse)
library(readxl)

# Practice Import A: Loading a standard comma-separated plain text file
benthic_cover <- read_csv(here::here("data/workshop1/reef_cover_log.csv"))

# Practice Import B: Parsing a tab-separated telemetry instrument array string
acoustic_stream <- read_tsv(here::here("data/workshop1/acoustic_telemetry_stream.txt"))

# Practice Import C: Targeting a specific sheet in a multi-tab Excel spreadsheet
fisheries_annual <- read_excel(here::here("data/workshop1/fish_catch_data.xlsx"), sheet = "Commercial_2026")

#try to read a scv
# Read in mangrove_data
mangrove_data <- read_csv(file = here::here("data/workshop1/mangrove_survey_raw.csv"))

# Use args within read_csv to skip headers and declare missing flags
mangrove_data <- read_csv(
  here::here("data/workshop1/mangrove_survey_raw.csv"),
  skip = 5,   # Skip the first 5 lines of field notes
  na = c(".", "NA", "9999", "ND", "blank"))  # Convert known text alts to true NA

#Rdata frame vs tibble
# Force a modern tibble to degrade into a legacy base R data frame structure
benthic_cover_df <- as.data.frame(benthic_cover)
# Print the old-style dataframe structure to view
print(benthic_cover_df)
# And compare with tibble alternative
print(benthic_cover)

#Pratice with palmer penguins
# Load the package data into active memory
library(palmerpenguins)
data("penguins")

# Examine the structure of the dataset - always do this when loading a new dataset!
glimpse(penguins) # tidyverse version (from dplyr package)
str(penguins) # base R version

# Generate an exploratory summary matrix
summary(penguins)

# Vertically slice specific morphometric variables by explicit name
morphology_metrics <- select(penguins, species, bill_length_mm, bill_depth_mm, body_mass_g)
glimpse(morphology_metrics)




