The `run_analysis.R` file contains the code used to produce a tidy dataset that complies with the "Getting and Cleaning data" course project of the Data Science specialization of Coursera.

The main steps performed are:

1.	Set the working directory
2.	Read the train data, activities and subjects
3.	Read the test data, activities and subjects
4.	Read the variables’ (i.e. columns) names
5.	Merge the train and test datasets with `rbind()`. Similarly merge the train and test activities data as well as the train and test subject data
6.	Appropriately name the dataset columns with the names in the `feature.txt` file.  For more info about the names of the variables, please refer to the `README.txt` file of the original dataset (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
7.	Select only the variables of the dataset containing mean values or standard deviations, i.e. whose names contain either the “mean()” or “std()” text sequence. First the indices of the corresponding columns are obtained, which are then used to subset the dataset
8.	Give descriptive names to the activities. The activity names are obtained from the `activity_labels.txt` file. The activity data is first converted to a factor; then the level values are set
9.	Add the activity data to the dataset with `cbind()`
10.	Add the subject data to the dataset with `cbind()`
11.	Set the subject and activity columns’names
12.	Generate a new dataset containing the mean value of each variable in the previous dataset for each subject-activity pair (30 subects * 6 activities = 180 rows) using the `ddply()` function of the `plyr` package
13.	Write the resulting dataset into a file called `final_dataset.txt` with `write.table()`

The following variables are used in the process of cleaning the data:

*	`train_data` stores the data from the train dataset ( source: `X_train.txt`)
*	`train_activity` stores the activity data relative to the train dataset (source: `y_train.txt`)
*	`train_subject` stores the subject data relative to the train dataset (source: `subject_train.txt`)
*	`test_data` stores the data from the downloaded test dataset (source: `X_test.txt`)
*	`test_activity` stores the activity data relative to the test dataset (source: `y_test.txt`)
*	`test_subject` stores the subject data relative to the test dataset (source: `subject_test.txt`)
*	`var` stores the name of the columns in the train and test datasets (source: `features.txt`)
*	`mergedData` stores the merged test and train datasets
*	`mergedActivity` stores the merged train and test activities data
*	`mergedSubects` stores the merged train and test subject data
*	`ind` stores the indices of the variables (i.e. columns) corresponding to mean values or standard deviations
*	`mean_stdData` is the subset of the original dataset containing only the variables that represent mean values or standard deviations
*	`Data` stores the final dataset containing the mean value of the variables for each subject-activity pair


