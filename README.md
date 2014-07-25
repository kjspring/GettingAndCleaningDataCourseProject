--------------------------------------------------------------------

Title: README: Tidy Data Maker

Author: Kevin Spring

Date: 23 July 2014

--------------------------------------------------------------------

## Table of Contents
* Purpose & Strategy
* Requirements
* Files and Structure
* What is Tidy Data?
* Raw Data
* Codebook
* Data Analysis Steps
* User Instruction

## Purpose & Strategy
The purpose is to take a raw data set and create a tidy data set along with the necessary documentation. The raw data contains many individual files that measure subjects movement through gyroscopes. These files will be merged into a single large data set. There are also files that contain the code mappings for the specific gyroscopic variable as well as the activity variable done during the gyroscopic measurement. These mapping files will be used to give a descriptive name to the variable instead of the code used in the original adata so that it is human readable. This information can be found in the codebook. The gyroscopic variable names also contain mean and standard deviation variables (denoted with the words mean or std). These variables will be extracted and merged with the subject and activity variable so that a smaller tidy data set can be created.

## Requirements
* Linux or Apple OSX
* R version 3.0.2 for Linux or R version 3.1.1 for OSX

## Files and file structure

### Analysis files

* README.md : This file you are now reading.
* run_analysis.R : R script that creates the tidy data
* data/CodeBook.md : Information about the variables, summary, and experimental design

### Raw data files

* data/raw/README.txt : contains information about the raw data set
* data/raw/activity_labels.txt : Links the class labels with their activity name
* data/raw/features.txt : List of all features
* data/raw/features_info.txt : Shows information about the variables used on the feature vector

* data/raw/test/subject_test.txt : Each row identifies the subject who performed the activity for the test data set
* data/raw/test/X_test.txt : Test set
* data/raw/test/y_test.txt : Test labels
* data/raw/train/subject_train.txt : Each row identifies the subject who performed the activity for the training data set
* data/raw/train/X_train.txt - Training set
* data/raw/train/y_train.txt : Training labels

### Output / Tidy Data files

* data/tidy/allDat.csv : aggregation of test and training data to conform to tidy data standards
* data/tidy/meanDat.csv : subset of allDat.csv file containing only the mean and standard deviation data

## What is Tidy Data?

Tidy data consits of 4 essential parts:

1. Raw data
2. Tidy data
3. Codebook
4. Recipe of the exact steps.

## Raw data

The raw data comes from the Human Activity Recognition Using Smartphones Data Set located at:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Zipped file of the raw data can be found in data/raw/getdata_projectfiles_UCI HAR Dataset.zip or downloaded at:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Codebook

The codebook is located in data/CodeBook.md and contains the file structure 

## Data Analysis steps

The file run_analysis.R completes all the data manimpulation and analysis steps.

### Steps
1. Load the following into R:
* data/raw/train/subject_train.txt
* data/raw/train/X_train.txt
* data/raw/train/y_train.txt
2. Merge all the training data into one datatable. Binding the columns together. Now have a single data frame with subject ID, activity ID, and 561 variables.
3. Load the following into R:
* data/raw/test/subject_test.txt
* data/raw/test/X_test.txt
* data/raw/test/y_test.txt
4. Merge all the test data into one datatable. Binding the columns together. Now have a single data frame with subject ID, activity ID, and 561 variables.
5. Combine the training and test data. Binding the rows together.
6. Load the data/raw/features.txt file into R.
7. Rename the variables in the combined data frame. Names should be:
* subject ID = subject
* activity ID = activity
* 561 variables = Second column of features.txt 
8. Subset the combined data to comtain only the variable column headings that have to do with mean and standard deviation measurements.  Save this as a new data frame.
9. Load the data/raw/activity_labels.txt file into R. This file is a map to the activity codes in the combined and mean/standard deviation data set.
10. Label both data sets, the combined and mean/standard deviation data set, with descriptive variable names using the activity_labels.txt file.
11. Save the combined data as allDat.csv and the mean/standard deviation data set as meanDat.csv in data/tidy directory.

## User Instructions

1. Copy the data and script from Github (https://github.com/kjspring/GettingAndCleaningDataCourseProject)
2. Open R or RStudio
3. Change the working directory to the directory that contains the run_analysis.R script
4. Run the run_analysis.R script in R or RStudio.
5. Check that the two output csv files are in the data/tidydata folder named allDat.csv and meanDat.csv, for which they contain all the data and only the mean and standard deviation data, respectively.