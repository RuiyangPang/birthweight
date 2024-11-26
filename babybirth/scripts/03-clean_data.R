#### Preamble ####
# Purpose: Cleans the raw birth data recorded by DASL
# Author: ruiyang pang
# Date: 13 Nov 2024
# Contact: ruiyang.pang@mail.utoronto.ca
# License: MIT
# Pre-requisites: no
# Any other information needed? should install the package readr 

#### Workspace setup ####
library(tidyverse)
library(readr)

#### Clean data ####
raw_data <- read.table("data/01-raw_data/babysamp-98.txt", header = TRUE, sep = "\t")
  
cleaned_data <-
  raw_data |>
  dplyr::select(weight, MomAge, MomEduc,MomMarital,gestation,sex, prenatalstart) |>
  tidyr::drop_na()

#### Save data ####
write_csv(cleaned_data, "data/02-analysis_data/analysis_data.csv")
