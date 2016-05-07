# Getting and Cleaning Data - Course Project

This is the course project for Data Science Specialization - Getting and Cleaning Data
The main script, `run_analysis.R`, does the following things:

1. Read the test data, train data, features list, activities list, subject and activity sequence list for both test and train data
2. Use features list as the column name of test data and train data
3. For each of test data and train data, merge them with activities list, subject and activity sequence list to map each row of record to a subject and an activity, and translate activity to meaningful text
5. Merges the train and test data set
6. Extract out mean and standard deviation measurements, and write to `step_4_data_set.txt`
6. Use reshape2's melt and dcast functions to calculate mean of each measurements grouped by subject and activity, and write to `step_5_data_set.txt`