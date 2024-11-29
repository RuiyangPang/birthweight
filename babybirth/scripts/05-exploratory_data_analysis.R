#### Preamble ####
# Purpose: explore the variables in the data set
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
birth <- read_csv("data/02-analysis_data/analysis_data.csv")

## distribution of outcome variable 
ggplot(birth, aes(x = weight)) +
  geom_histogram(binwidth = 200, fill = "skyblue", color = "black") +
  labs(
    title = "Histogram of Birth Weights",
    x = "Birth Weight (grams)",
    y = "Frequency"
  ) +
  theme_minimal()

## distribution of mom age

ggplot(birth, aes(x = MomAge)) +
  geom_histogram(bins = 10, alpha = 0.7, color = "lightblue") +
  labs(x = "Mom's age",
       y = "Frequency") +
  theme_minimal()

## distribution of gestation

ggplot(birth, aes(x = gestation)) +
  geom_histogram(bins = 10, alpha = 0.7, color = "lightblue") +
  labs(x = "length of gestation",
       y = "Frequency") +
  theme_minimal()

## distribution of start of prenatal care

ggplot(birth, aes(x = prenatalstart)) +
  geom_histogram(bins = 10, alpha = 0.7, color = "lightblue") +
  labs(x = "start of prenatal care",
       y = "Frequency") +
  theme_minimal()

## distribution of mom education

ggplot(birth, aes(x = MomEduc)) +
  geom_histogram(bins = 10, alpha = 0.7, color = "lightblue") +
  labs(x = "Mom's education",
       y = "Frequency") +
  theme_minimal()


## distribution of marital status and baby sex

#Create individual plots for mom marital stauts
ggplot(birth, aes(x = factor(MomMarital))) +
  geom_bar(position = "dodge") +
  labs(title = "Marital staus", x = "Marital staus", y = "Count") +
  theme_minimal()+
  theme(plot.title = element_text(hjust = 0.5)) +
  theme(legend.position="none")

#Create individual plots for baby sex

ggplot(birth, aes(x = factor(sex))) +
  geom_bar(position = "dodge") +
  labs(title = "Infant sex", x = "Sex", y = "Count") +
  theme_minimal()+
  theme(plot.title = element_text(hjust = 0.5)) +
  theme(legend.position="none")



## Correlation between birth weight and gestation

ggplot(data = birth, aes(x = gestation, y = weight)) +
  geom_point(color = "blue", alpha = 0.6) + 
  labs(
    title = "Scatter Plot of Birth Weight vs. Gestation",
    x = "Gestation Period (weeks)",
    y = "Birth Weight (grams)"
  ) +
  theme_minimal()
