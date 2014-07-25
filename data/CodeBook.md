
# Code Book Tidy Data Creation of Human Activity Recognition Using Smartphones Data Set 
--

The purpose of this data analysis is to take the raw data from the Human Activity Recognition Using Smartphones Data Set and turn it into a usable tidy data set.

## Variable Names

The variables from this database come from the accelerometer and gyroscope 3-axial raw signals

#### Subject 

#### Time domain signals

Captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. The acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ : Jerk signals from the the body linear acceleration and angular velocity
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag :
* tBodyGyroMag
* tBodyGyroJerkMag : 

#### Fast Fourier Transform (FFT) applied to signals
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ : 
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag : 
* fBodyGyroMag
* fBodyGyroJerkMag : 

#### Activity labels
* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING
-END OF FILE-