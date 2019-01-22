## Peer-graded Assignment: Getting and Cleaning Data Course Project - 
## Coursera Getting and Cleaning Data Course by Johns Hopkins University
## Date: 1/19/2019

## Requires dplyr package
library(dplyr) 

## 0. Download and unzip the Human Activity Recognition (HAR)
##    Using Smartphones Data Set dataset

## Name the downloaded file HARdataset.zip
filename <- "HARdataset.zip"

## Retrieve the dataset from this URL
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

## Verify that the dataset has not already been downloaded before downlaoding
if (!file.exists(filename)){
    download.file(fileURL, filename, method="curl")
} 

## Verify that the dataset has not been extracted already 
## from the zipped file before unzipping the file 
if (!file.exists("UCI HAR Dataset")) { 
    unzip(filename) 
}

## ***************************************************************************************

## 1. Merges the training and the test 
##    sets to create one data set.

## Load activity labels and features

activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
features <- read.table("UCI HAR Dataset/features.txt")

## Load the training activities and subjects files - combine them

train <- read.table("UCI HAR Dataset/train/X_train.txt")
trainActivities <- read.table("UCI HAR Dataset/train/Y_train.txt")
trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
train <- cbind(trainSubjects, trainActivities, train)

## Load the training activities and subjects files - combine them

test <- read.table("UCI HAR Dataset/test/X_test.txt")
testActivities <- read.table("UCI HAR Dataset/test/Y_test.txt")
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
test <- cbind(testSubjects, testActivities, test)

# merge datasets and add labels

fullDataset <- rbind(train, test)
colnames(fullDataset) <- c("subject", "activity", as.character(features[,2]))

# turn activities & subjects into factors

fullDataset$activity <- factor(fullDataset$activity, levels = activityLabels[,1], labels = activityLabels[,2])
fullDataset$subject <- as.factor(fullDataset$subject)

##*************************************************************************************

## 2. Extracts only the measurements on the mean
##    and standard deviation for each measurement. 

# Extract only the data on mean and standard deviation

featuresFilter <- grep(".*mean.*|.*std.*", features[,2])
desiredFeatures<-as.character(features[featuresFilter,2])
desiredDataset <- fullDataset[colnames(fullDataset) %in% c("subject","activity",desiredFeatures)]

##*********************************************************************************

## 3. Uses descriptive activity names to name 
##    the activities in the data set

##Convert to lowercase and remove underscore 

activityLabels[,2] <- activityLabels[,2] %>% 
                      gsub('_', '',.) %>%
                      sapply(.,tolower)

## Reapply the labels to the factored column 

desiredDataset$activity<-as.numeric(desiredDataset$activity)                                           
desiredDataset$activity<-factor(desiredDataset$activity, levels = activityLabels[,1], labels = activityLabels[,2])
                   
##*******************************************************************************************

## 4. Appropriately labels the data set with descriptive variable names. 
##    Tidy up the column names 

colnames(desiredDataset) <- colnames(desiredDataset) %>% 
                    gsub('[-()]', '',.) %>%
                    gsub("mean", "Mean", .) %>%
                    gsub("std", "Std", .) %>%
                    gsub("^t", "time",.) %>%
                    gsub("^f", "freq", .) %>%
                    #gsub("Acc", "Accelerometer", .) %>%
                    #gsub("Gyro", "Gyroscope", .) %>%
                    #gsub("Mag", "Magnitude", .) %>%
                    gsub("BodyBody", "Body", .)

##************************************************************************************

## 5. From the data set in step 4, creates a second, 
##    independent tidy data set with the average of each 
##    variable for each activity and each subject.

## Group secondDataset by subject and activity and take the mean of all columns

secondDataset <- desiredDataset %>%
    group_by(subject, activity) %>%
    summarise_at(colnames(desiredDataset)[3:length(desiredDataset)], mean, na.rm = TRUE)

## Write the dataset into "tidydata.txt"

write.table(secondDataset, "tidydata.txt", row.names = FALSE, quote = FALSE)    