# Code Book for Getting and Cleaning Data Course Project

This code book describes the data, the variables and the transformations done to obtain the desired datset 'Tidy Data.txt'

## Data Set Description

The dataset was obtained from the experiment done to 30 volunteers who performed six activities. These activities are WALKING,
WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING while wearing smart phones. The gathered data were from the results captured by the
embedded accelerometer and gyroscope. These data were partitioned into training and test sets, that consists of 70% of the volunteers to generate the
training data and 30% the test data.

The mean and the standard deviation(std) were used to estimate the signals produced from theaccelerometer and gyroscope.

### Identifiers

* subject - ID of the test subject
* Activity - type of activity performed by the volunteer(subject)

### Measurements
* tBodyAcc-mean()-X
* tBodyAcc-mean()-Y
* tBodyAcc-mean()-Z
* tGravityAcc-mean()-X
* tGravityAcc-mean()-Y
* tGravityAcc-mean()-Z
* tBodyAccJerk-mean()-X
* tBodyAccJerk-mean()-Y
* tBodyAccJerk-mean()-Z 
* tBodyGyro-mean()-X 
* tBodyGyro-mean()-Y 
* tBodyGyro-mean()-Z  
* tBodyGyroJerk-mean()-X  
* tBodyGyroJerk-mean()-Y  
* tBodyGyroJerk-mean()-Z  
* tBodyAccMag-mean()  
* tGravityAccMag-mean()  
* tBodyAccJerkMag-mean()  
* tBodyGyroMag-mean()  
* tBodyGyroJerkMag-mean()  
* fBodyAcc-mean()-X  
* fBodyAcc-mean()-Y  
* fBodyAcc-mean()-Z  
* fBodyAcc-meanFreq()-X  
* fBodyAcc-meanFreq()-Y  
* fBodyAcc-meanFreq()-Z  
* fBodyAccJerk-mean()-X  
* fBodyAccJerk-mean()-Y  
* fBodyAccJerk-mean()-Z  
* fBodyAccJerk-meanFreq()-X  
* fBodyAccJerk-meanFreq()-Y  
* fBodyAccJerk-meanFreq()-Z  
* fBodyGyro-mean()-X  
* fBodyGyro-mean()-Y  
* fBodyGyro-mean()-Z  
* fBodyGyro-meanFreq()-X  
* fBodyGyro-meanFreq()-Y  
* fBodyGyro-meanFreq()-Z  
* fBodyAccMag-mean()  
* fBodyAccMag-meanFreq()  
* fBodyBodyAccJerkMag-mean()  
* fBodyBodyAccJerkMag-meanFreq()  
* fBodyBodyGyroMag-mean()  
* fBodyBodyGyroMag-meanFreq()  
* fBodyBodyGyroJerkMag-mean()  
* fBodyBodyGyroJerkMag-meanFreq()  
* angle(tBodyAccMean,gravity) 
* angle(tBodyAccJerkMean),gravityMean)  
* angle(tBodyGyroMean,gravityMean)  
* angle(tBodyGyroJerkMean,gravityMean)  
* angle(X,gravityMean)  
* angle(Y,gravityMean)   
* angle(Z,gravityMean)  
* tBodyAcc-std()-X  
* tBodyAcc-std()-Y  
* tBodyAcc-std()-Z  
* tGravityAcc-std()-X 
* tGravityAcc-std()-Y  
* tGravityAcc-std()-Z  
* tBodyAccJerk-std()-X  
* tBodyAccJerk-std()-Y  
* tBodyAccJerk-std()-Z
* tBodyGyro-std()-X
* tBodyGyro-std()-Y
* tBodyGyro-std()-Z
* tBodyGyroJerk-std()-X
* tBodyGyroJerk-std()-Y
* tBodyGyroJerk-std()-Z
* tBodyAccMag-std()
* tGravityAccMag-std()
* tBodyAccJerkMag-std()
* tBodyGyroMag-std()
* tBodyGyroJerkMag-std()
* fBodyAcc-std()-X
* fBodyAcc-std()-Y
* fBodyAcc-std()-Z
* fBodyAccJerk-std()-X
* fBodyAccJerk-std()-Y
* fBodyAccJerk-std()-Z
* fBodyGyro-std()-X
* fBodyGyro-std()-Y
* fBodyGyro-std()-Z
* fBodyAccMag-std()
* fBodyBodyAccJerkMag-std()
* fBodyBodyGyroMag-std()
* fBodyBodyGyroJerkMag-std()

### Activities Performed by the subjects during the test
* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING 

