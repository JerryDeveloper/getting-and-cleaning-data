# Code Book

This submission consists of two tidy data sets, in txt format:
* `step_4_data_set.txt`: this is the output after step 4 of assignment, including merged data set of both train and test, meaningful activity names and variable names, and only mean/standard deviation measurements
* `step_5_data_set.txt`: this is the output after step 5 of assignment, including mean values of each variable grouped by activity and subject

Both tidy data set has same column names:

* `subject` - The ID of the subject
* `activity` - The type of activity performed, including following values:
 	- `WALKING`: the subject is walking on ground
 	- `WALKING_UPSTAIRS`: the subject is walking upstairs
 	- `WALKING_DOWNSTAIRS`: the subject is walking downstairs
 	- `SITTING`: the subject is sitting
 	- `STANDING`: the subject is standing
 	- `LAYING`: the subject is laying
Below values are measurements from sensor, normalized to [-1, 1]:
* `tBodyAcc.mean...X`
* `tBodyAcc.mean...Y`
* `tBodyAcc.mean...Z`
* `tBodyAcc.std...X`
* `tBodyAcc.std...Y`
* `tBodyAcc.std...Z`
* `tGravityAcc.mean...X`
* `tGravityAcc.mean...Y`
* `tGravityAcc.mean...Z`
* `tGravityAcc.std...X`
* `tGravityAcc.std...Y`
* `tGravityAcc.std...Z`
* `tBodyAccJerk.mean...X`
* `tBodyAccJerk.mean...Y`
* `tBodyAccJerk.mean...Z`
* `tBodyAccJerk.std...X`
* `tBodyAccJerk.std...Y`
* `tBodyAccJerk.std...Z`
* `tBodyGyro.mean...X`
* `tBodyGyro.mean...Y`
* `tBodyGyro.mean...Z`
* `tBodyGyro.std...X`
* `tBodyGyro.std...Y`
* `tBodyGyro.std...Z`
* `tBodyGyroJerk.mean...X`
* `tBodyGyroJerk.mean...Y`
* `tBodyGyroJerk.mean...Z`
* `tBodyGyroJerk.std...X`
* `tBodyGyroJerk.std...Y`
* `tBodyGyroJerk.std...Z`
* `tBodyAccMag.mean..`
* `tBodyAccMag.std..`
* `tGravityAccMag.mean..`
* `tGravityAccMag.std..`
* `tBodyAccJerkMag.mean..`
* `tBodyAccJerkMag.std..`
* `tBodyGyroMag.mean..`
* `tBodyGyroMag.std..`
* `tBodyGyroJerkMag.mean..`
* `tBodyGyroJerkMag.std..`
* `fBodyAcc.mean...X`
* `fBodyAcc.mean...Y`
* `fBodyAcc.mean...Z`
* `fBodyAcc.std...X`
* `fBodyAcc.std...Y`
* `fBodyAcc.std...Z`
* `fBodyAccJerk.mean...X`
* `fBodyAccJerk.mean...Y`
* `fBodyAccJerk.mean...Z`
* `fBodyAccJerk.std...X`
* `fBodyAccJerk.std...Y`
* `fBodyAccJerk.std...Z`
* `fBodyGyro.mean...X`
* `fBodyGyro.mean...Y`
* `fBodyGyro.mean...Z`
* `fBodyGyro.std...X`
* `fBodyGyro.std...Y`
* `fBodyGyro.std...Z`
* `fBodyAccMag.mean..`
* `fBodyAccMag.std..`
* `fBodyBodyAccJerkMag.mean..`
* `fBodyBodyAccJerkMag.std..`
* `fBodyBodyGyroMag.mean..`
* `fBodyBodyGyroMag.std..`
* `fBodyBodyGyroJerkMag.mean..`
* `fBodyBodyGyroJerkMag.std..`