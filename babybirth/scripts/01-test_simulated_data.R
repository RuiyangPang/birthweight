#### Preamble ####
# Purpose: Tests the structure and validity of the simulated birth dataf 
# Author: ruiyang pang
# Date: 23 Nov 2024
# Contact: ruiyang.pang@mail.utoronto.ca
# License: MIT
# Pre-requisites: 
  # - The `tidyverse` package must be installed and loaded
  # - 00-simulate_data.R must have been run
# Any other information needed? Make sure you are in the `babybirth` rproj


#### Workspace setup ####
library(tidyverse)

analysis_data <- read_csv("data/00-simulated_data/simulated_data.csv")

# Test if the data was successfully loaded
if (exists("analysis_data")) {
  message("Test Passed: The dataset was successfully loaded.")
} else {
  stop("Test Failed: The dataset could not be loaded.")
}


#### Test data ####

# Check if the dataset has 200 rows
if (nrow(analysis_data) == 200) {
  message("Test Passed: The dataset has 200 rows.")
} else {
  stop("Test Failed: The dataset does not have 200 rows.")
}

# Check if the dataset has 7 columns
if (ncol(analysis_data) == 7) {
  message("Test Passed: The dataset has 7 columns.")
} else {
  stop("Test Failed: The dataset does not have 7 columns.")
}

# Check if the 'sex' column contains only valid sex names "M" or "F"
valid_sex <- c("M","F")
if (all(analysis_data$sex %in% valid_sex)) {
  message("Test Passed: The 'state' column contains only valid Australian state names.")
} else {
  stop("Test Failed: The 'state' column contains invalid state names.")
}

# Check if there are any missing values in the dataset
if (all(!is.na(analysis_data))) {
  message("Test Passed: The dataset contains no missing values.")
} else {
  stop("Test Failed: The dataset contains missing values.")
}



# Check if the birth weigth great than 0
if (all(analysis_data$weight > 0)) {
  message("Test Passed: The birth weight have the correct sign.")
} else {
  stop("Test Failed: The birth weight have the incorrect sign.")
}




# Check if the mom age is integer
if (all(analysis_data$MomAge %% 1 == 0)) {
  message("Test Passed: The mom ages are all integer.")
} else {
  stop("Test Failed: The mom ages have the incorrect format.")
}



