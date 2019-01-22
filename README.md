# Getting-and-Cleaning-Data-Course-Project

## INSTRUCTIONS

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.

## PROJECT

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

    http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project:

    https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

You should create one R script called run_analysis.R that does the following. 

- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement. 
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names. 
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## DATA DESCRIPTION

"The data to generate tidy.txt comes from experiments carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each volunteer performed six activities (walking, walking upstairs, walking downstairs, sitting, standing, and laying down) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, the experiment captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.   The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers were selected to generate the training data and 30%  of the volunteers were selected to generate the test data." The sensor acceleration signal, which has gravitational and body motion components, was separated into body acceleration and gravity. Jerk (time rate of change of acceleration) and gyroscopic jerk (time rate of change of angular velocity) were calculated as well as the mean, standard deviation and other statisitcs and for each subject and activity.Time as well as frequency measurements were made. [3] 

### Original dataset files:

- 'README.txt' [3]
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

### Data transformations

- The first step was to merge the training and the test sets (X_train.txt, y_train.txt, X_test.txt, and y_test.txt) to create one data set. The activity column was converted to a factor column with labels found in activity_labels.txt. Column names were added from features.txt. 
- Next, columns that contain the measurements on the mean and standard deviation for each measurement where extracted. 
- Activity names were made more descriptive
- Descriptive variable names replaced the variable namesprovided in features.txt. 
- Finally, a second, independent tidy data set with the average of each variable for each activity and each subject was created from the dataset generated in the previous step.
  
## ATTRIBUTE INFORMATION

For each record in the dataset contains: 
- An identifier of the subject who took part experiment
- The activity the subject carried out
- The average of all of the mean and standard deviation data for each subject and each activity. This is done for the following measurements:
 
  - Its subject identification 
  - Its activity label.
  - A 79-features that contain mean or standard deviation.
  
## REPOSITORY CONTENT 

  - "Readme.md"
  - "Codebook.md"
  - "run_analysis.R"
  - "tidy.txt"
  
