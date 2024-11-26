#### Preamble ####
# Purpose: Models OLS VS. Bayesian model
# Author: ruiyang pang
# Date:  13 Nov 2024
# Contact: ruiyang.pang@mail.utoronto.ca
# License: MIT
# Pre-requisites: analysis_data.csv 
# Any other information needed? No


#### Workspace setup ####
library(tidyverse)
library(rstanarm)

#### Read data ####
analysis_data <- read_csv("data/02-analysis_data/analysis_data.csv")

### OLS Model data ####
first_model <- lm(weight~MomAge + MomEduc + MomMarital + gestation + 
                    as.factor(sex) + prenatalstart, data = analysis_data)

#### Save model ####
saveRDS(
  first_model,
  file = "models/first_model.rds"
)


### Bayesian  Model data ####
first_model <- lm(weight~MomAge + MomEduc + MomMarital + gestation + 
                    as.factor(sex) + prenatalstart, data = analysis_data)



### Model data ####
second_model <-
  stan_glm(
    formula = weight~MomAge + MomEduc + MomMarital + gestation + 
      as.factor(sex) + prenatalstart,
    data = analysis_data,
    family = gaussian(),
    prior = c(
      # Prior specification for MomAge coefficient
      normal(location = 0, scale = 2.5, autoscale = TRUE),
      
      # Prior specification for MomEduc coefficient
      normal(location = 0, scale = 2.5, autoscale = TRUE),
      
      # Prior specification for MomMarital coefficient
      normal(location = 0, scale = 2.5, autoscale = TRUE),
      
      # Prior specification for gestation coefficient
      normal(location = 0, scale = 2.5, autoscale = TRUE),
      
      # Prior specification for sex coefficient
      normal(location = 0, scale = 2.5, autoscale = TRUE),
      
      # Prior specification for prenatalstart coefficient
      normal(location = 0, scale = 2.5, autoscale = TRUE)
    ),
    prior_intercept = normal(location = 0, scale = 2.5, autoscale = TRUE),
    prior_aux = exponential(rate = 1, autoscale = TRUE),
    seed = 9
  )




#### Save model ####
saveRDS(
  second_model,
  file = "models/second_model.rds"
)



