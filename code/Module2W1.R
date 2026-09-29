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
benthic_cover <- read_csv(here::here("data/reef_cover_log.csv"))

# Practice Import B: Parsing a tab-separated telemetry instrument array string
acoustic_stream <- read_tsv(here::here("data/acoustic_telemetry_stream.txt"))

# Practice Import C: Targeting a specific sheet in a multi-tab Excel spreadsheet
fisheries_annual <- read_excel(here::here("data/fish_catch_data.xlsx"), sheet = "Commercial_2026")
