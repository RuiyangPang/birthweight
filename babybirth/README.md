# babybirth

## Overview

This repo provides a study on the factors that affect the baby birth by using the data set from the library of Data and Story Library (DASL). The predictor variables include the age and education level of the parents and their marital status, and Gestation length, prenatal care, the number of prior live births, and the infant's sex

## File Structure

The repo is structured as:
-   `data/00-simulated_data` contains the simulated data .
-   `data/01-raw_data` contains the raw data as obtained from DASL.
-   `data/02-analysis_data` contains the cleaned dataset that was constructed.
-   `model` contains fitted models,first_model0 and first_model are two ordinary least square model by lm function, second_model is the Bayesian model. 
-   `other` contains relevant literature, details about LLM chat interactions, and sketches.
-   `paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper. 
-   `scripts` contains the R scripts used to simulate, download and clean data.


## Statement on LLM usage

Aspects of the code and reference bib format are using Chat-GPT . The entire chat history is available in other/llm_usage/usage.txt.
