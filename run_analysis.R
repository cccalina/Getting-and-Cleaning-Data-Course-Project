## setting working directory

workingFiles <- "C:/Users/CHRIS CALINA/Desktop/coursera_dataScience/project/UCI HAR Dataset"
setwd(workingFiles)


## Load required packages
library(dplyr)
library(tidyr)

## Read training data sets
dataY_train <- read.table("train/y_train.txt", quote="\"")
dataX_train <- read.table("train/X_train.txt", quote="\"")
dataSubject_train <- read.table("train/subject_train.txt", quote="\"")


## Read test data sets
dataY_test <- read.table("test/y_test.txt", quote="\"")
dataX_test <- read.table("test/X_test.txt", quote="\"")
dataSubject_test <- read.table("test/subject_test.txt", quote="\"")

## Read features and activity data sets
dataFeatures <- read.table("features.txt", quote="\"")
dataActivityLabels <- read.table("activity_labels.txt", quote="\"")

## Analysis of the generated training data
colnames(dataActivityLabels) <- c("V1", "Activity")


## Merge the dataY_train data with the Activity label
subject <- rename(dataSubject_train, subject=V1)
train <- cbind(dataY_train, subject)
train1 <- merge(train, dataActivityLabels, by=("V1"))

## Add labels to dataX_train data frame from dataFeatures data frame
colnames(dataX_train) <- dataFeatures[,2]

## Merge training datasets (except Subject) - X and Y
## and activity labels from dataActivityLabels dataset
train2 <- cbind(train1, dataX_train)

## Remove duplicate column names from train2 to avoid future errors
train3 <- train2[,-1]

## Select columns that contains only the mean and the standard deviation (std)
train4 <- select(train3, contains("subject"), contains("Activity"), contains("mean"), contains("std"))


## Analysis of the generated test data
colnames(dataActivityLabels) <- c("V1", "Activity")


## Merge the dataY_test with the Activity label
subject2 <- rename(dataSubject_test, subject=V1)
test <- cbind(dataY_test, subject2)
test1 <- merge(test, dataActivityLabels, by=("V1"))

## Add labels to dataX_test data frame from dataFeatures data frame
colnames(dataX_test) <- dataFeatures[,2]

## Merge testing datasets (except Subject) - X and Y
## and activity labels from dataActivityLabels dataset
test2 <- cbind(test1, dataX_test)

## Remove duplicate column names from train2 to avoid future errors
test3 <- test2[,-1]

## Select columns that contains only the mean and the standard deviation (std)
test4 <- select(test3, contains("subject"), contains("Activity"), contains("mean"), contains("std"))

## Merge training and test data
mergedFiles <- rbind(train4, test4)

## Summarize data

analysis <- (mergedFiles %>%
               group_by(subject, Activity) %>%
               summarise_all(funs( mean))
               )

## Print newly created data frame in the console
print(analysis)

## Write to text file
write.table(analysis, "Tidy Data.txt", sep=" ",row.name=FALSE)
