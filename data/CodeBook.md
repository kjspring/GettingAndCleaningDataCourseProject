----------------------------------------------------------------------------

Title: Code Book for Tidy Data Creation of Human Activity Recognition Using Smartphones Data Set 

Filename: CodeBook.md

Author: Kevin Spring

Date: 23 July 2014

-----------------------------------------------------------------------------

The purpose of this data analysis is to take the raw data from the Human Activity Recognition Using Smartphones Data Set and turn it into a usable tidy data set.

## Table of contents
* Variable Names
* Summaries Calculated

## Variable Names

The variables from this database come from the accelerometer and gyroscope 3-axial raw signals. 

#### Subject 
#### Time domain signals

Measurements were captured at a constant rate of 50 Hz. The measurements were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. The acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. As per the README.txt file in the raw data folder, features are normalized and bounded within [-1,1].

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ 
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag :
* tBodyGyroMag
* tBodyGyroJerkMag : 

#### Fast Fourier Transform (FFT) applied to signals
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

#### Varialbe Descriptors
The time domain signals and FFT signals have variables estimated from them. These are added to the name to indicate the variable estimation. In the tidy data file (meanDat.csv) that only contains the first 2 variable estimates, mean() and std().

* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values. 
* iqr(): Interquartile range 
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal 
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.

#### Activity labels
These labels describe the activity performed by the subject that occurred during the measurement. There are 6 different activities.

* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

--

-END OF FILE-