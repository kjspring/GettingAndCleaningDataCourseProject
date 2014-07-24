# Title: Tidy Data Maker for Human Activity Recognition Using Smartphones Data 
# Set 
# Author: Kevin Spring
# Date: 23 July 2014
# https://class.coursera.org/getdata-005
###############################################################################
# See the README.MD for information on how the raw data is stored 
# in the file structure

rm(list=ls()) # clear environment workspace

# Merge all the training data into one datatable
subject_train <- read.table("data/UCI HAR Dataset/train/subject_train.txt", header=F) # subject
X_train <- read.table("data/UCI HAR Dataset/train/X_train.txt", header=F) # freq var
Y_train <- read.table("data/UCI HAR Dataset/train/y_train.txt", header=F) # activity
train <- cbind(subject_train, Y_train, X_train)

# Merge all the test data into one datatable
subject_test <- read.table("data/UCI HAR Dataset/test/subject_test.txt", header=F) # subject
X_test <- read.table("data/UCI HAR Dataset/test/X_test.txt", header=F) # freq var
Y_test <- read.table("data/UCI HAR Dataset/test/y_test.txt", header=F) # activity
test <- cbind(subject_test, Y_test, X_test)

# Combine train and test data
combinedDat <- rbind(test, train)

# Name the columns in combinedDat with descriptive names
features <- read.table("data/UCI HAR Dataset/features.txt", header=F)
features[,2] <- as.character(features[,2])
colnames(combinedDat) <- c("subject", "activity", features[,2])

# Extracts only the measurements on the mean and standard
# deviation for each measurement
meanSDcol <- grep("[sS]td|[mM]ean", names(combinedDat))

# Store only the mean and standard deviation values in a new data frame
meanSDdat <- subset(combinedDat, select = c(1, 2, meanSDcol))

# Exchange the activity code for actual descriptive variables

# loads the activity code map
activityLabels <- read.table("data/UCI HAR Dataset/activity_labels.txt", 
                             stringsAsFactors=F) 
                                    
########################################################################
# Function subLabels
# Substitutes activity code for description of activity to follow
# tidy data protocols
########################################################################
subLabels <- function (inputDF, mapDF) {
  for(i in 1:nrow(mapDF)) {
    inputDF$activity <- gsub(mapDF[,1][i], mapDF[,2][i], inputDF$activity)
  }
  return(inputDF)
}
# end function
#########################################################################

# Call the subLabels function to create tidy data on the combined
# data sets and on the data sets that contain only the mean and 
# standard deviation values
tidyDat <- subLabels(combinedDat, activityLabels)
tidyDat_meanSD <- subLabels(meanSDdat, activityLabels)

# Save tidy data to the data/tidy folder
if(!file.exists("data/tidy")) {
  dir.create("data/tidy")
}
write.csv(tidyDat, "data/tidy/allDat.csv", row.names=F)
write.csv(tidyDat_meanSD, "data/tidy/meanDat.csv", row.names=F)