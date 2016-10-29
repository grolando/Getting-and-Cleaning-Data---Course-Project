# Getting-and-Cleaning-Data---Course-Project
This repository contains the R code and documentation files for the "Getting and Cleaning data" course of the Data Science specialization of Coursera.

The goal of the assignment is to practice the techniques to collect, work with and clean data learnt in the course. These techniques are used to prepare a tidy data set to be used for later analysis.

The data used in the assignment come from the “Human Activity Recognition Using Smartphones”  (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) dataset, which contains data collected from the accelerometers from the Samsung Galaxy S smartphone. (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Files
The repository contains the following files:

* `CodeBook.md` describing the variables, the data, and the transformations applied to the data to obtain a tidy dataset
* `run_analysis.R` containing the R code used to clean and work with the data as requested by the assignment. The file can be open in RStudio or similar software
* `final_dataset.txt` containing the final tidy dataset. The dataset can be read into R using the `read.table(“final_dataset.txt”,header=TRUE)` command
