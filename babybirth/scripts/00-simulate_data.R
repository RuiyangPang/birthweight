#### Preamble ####
# Purpose: Simulates a data set of US birth weight
# Author: ruiyang pang
# Date: 26 Nov 2024
# Contact: ruiyang.pang@mail.utoronto.ca
# License: MIT
# Pre-requisites: The `tidyverse` package must be installed
# Any other information needed? Make sure you are in the `starter_folder` rproj


#### Workspace setup ####
library(tidyverse)
set.seed(853)


#### Simulate data ####
# Monther's age 

MomAge <- round(runif(200,16,49))


# Mom's education

MomEduc <- round(runif(200,12,20))

# Mom Marital status, 1 married, 2 not married

MomMarital <- sample(c(1,2),200,replace = TRUE)


# length of gestation
gestation <- round(rnorm(200, 39.5, 1.5))

# infant sex

sex = sample(c("F", "M"), 200, replace = TRUE)

# birth weight

weight <- gestation * 3250/ 39.5 + rnorm(200, 0, 500)

# prenatal start week
prenatalstart <- rpois(200, 2)



# Create a dataset by randomly assigning values
analysis_data <- tibble(
  weight = weight,
  MomAge = MomAge,
  MomEduc = MomEduc,
  MomMarital = MomMarital,
  gestation = gestation,
  sex = sex,
  prenatalstart = prenatalstart
)


#### Save data ####
write_csv(analysis_data, "data/00-simulated_data/simulated_data.csv")
