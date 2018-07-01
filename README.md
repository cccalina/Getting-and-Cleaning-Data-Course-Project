# Getting and Cleaning Data Course Project

This is the course project for Getting and Cleaning Data in coursera. The R script, run_analysis.R, does the following:

1. Setting first the working directory where the the folder that contains the files (data sets) to be used
2. Loading the required packages needed to properly run the script
3. Reading the training, test, features and activity data sets
4. Analyzing the generated training data
5. Merging training data and activity labels
6. Adding lables to the train data from the features dataset
7. Merging training datasets X and Y and activity labels from the activity_labels dataset
8. Removing duplicate column names
9. Selecting columns that contains only the mean and the standard deviation(std)
10. Steps 4 to 9 were repeated for the test data sets
11. Merging training and test data
12. Performing the analysis
13. Writing the table into a text file to be exported, which is the tidy data - "Tidy Data.txt"