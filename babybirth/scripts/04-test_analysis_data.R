#### Preamble ####
# Purpose: Tests the sample data
# Author:  ruiyang pang
# Date: 23 Nov 2024
# Contact: ruiyang.pang@mail.utoronto.ca
# License: MIT
# Pre-requisites: analysis_data.csv 
# Any other information needed? nothing


#### Workspace setup ####
library(tidyverse)
library(testthat)
library(readr)

setwd("~/Desktop/2024 Fall/sta304/babybirth")
analysis_data <- read_csv("data/02-analysis_data/analysis_data.csv")

#### Test data ####

# Test that the dataset has 183 rows - there are 183 records
test_that("dataset has 183 rows", {
  expect_equal(nrow(analysis_data), 183)
})

# Test that the dataset has 7 columns
test_that("dataset has 7 columns", {
  expect_equal(ncol(analysis_data), 7)
})

# Test that the 'sex' column is character type
test_that("'sex' is character", {
  expect_type(analysis_data$sex, "character")
})



# Test that the 'weigth' column is numeric type
test_that("'weight' is double", {
  expect_type(analysis_data$weight, "double")
})


# Test that there are no missing values in the dataset
test_that("no missing values in dataset", {
  expect_true(all(!is.na(analysis_data)))
})

# Test that the 'sex' column contains at least 2 unique values
test_that("'sex' column contains at least 2 unique values", {
  expect_true(length(unique(analysis_data$sex)) >= 2)
})


# Test that the 'prenatalstart' column contains at least 2 unique values
test_that("'prenatalstart' column contains at least 2 unique values", {
  expect_true(length(unique(analysis_data$prenatalstart)) >= 2)
})