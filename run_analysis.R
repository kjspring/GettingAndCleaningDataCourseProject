



rm(list=ls()) # clear environment workspace
# Check to see if the file is available, if not then download it:

# check if directory exists
if(!file.exists("./projects/gettingandcleaningdata/courseProject/data")) {
  dir.create("./projects/gettingandcleaningdata/courseProject/data")
}

if(!file.exists("./projects/gettingandcleaningdata/courseProject/data/getdata_projectfiles_UCI HAR Dataset.zip")) {
  fileURL <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
  temp <- tempfile(tmpdir = tempdir("./projects/gettingandcleaningdata/courseProject/data"))
  download.file(fileURL, temp, method='curl')
  save(temp, 
       file = "./projects/gettingandcleaningdata/courseProject/data/getdata_projectfiles_UCI HAR Dataset.zip")
  unlink(temp)
}

# Merge the training and the test sets to create one data set.

# See the README.MD for information on how the raw data is stored in the file structure

## Unzip the data
filename <- "./projects/gettingandcleaningdata/courseProject/data/getdata_projectfiles_UCI HAR Dataset.zip"
unzip(zipfile = filename, exdir = "./projects/gettingandcleaningdata/courseProject/data")

## Merge all the training data into one datatable

setwd("./projects/gettingandcleaningdata/courseProject/data/UCI HAR Dataset")
subject_train <- read.table("train/subject_train.txt", header=F) # subject
X_train <- read.table("train/X_train.txt", header=F) # freq var
Y_train <- read.table("train/y_train.txt", header=F) # activity

# I don't like the name of the observations so change these
# X_train contains

train <- cbind(subject_train, Y_train, X_train)
colnames(train) <- c("subject", "activity", paste("gyroFreq", 1:ncol(X_train)))

# Merge all the test data into one datatable
subject_test <- read.table("test/subject_test.txt", header=F) # subject
X_test <- read.table("test/X_test.txt", header=F) # freq var
Y_test <- read.table("test/y_test.txt", header=F) # activity

test <- cbind(subject_test, Y_test, X_test)
colnames(test) <- c("subject", "activity", paste("gyroFreq", 1:ncol(X_test)))

# Combine 
