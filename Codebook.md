# Getting and Cleaning Data Course Project Codebook

Author: KpCg2map

Date: January 19, 2019

This code book summarizes the resulting data fields in tidy.txt.

## SOURCE

### Dataset source:

Jorge L. Reyes-Ortiz[1,2], Davide Anguita[1], Alessandro Ghio[1], Luca Oneto[1], and Xavier Parra[2]

### Dataset URL:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

### Paper describing dataset:

"A Public Domain Dataset for Human Activity Recognition Using Smartphones"

Davide Anguita [1], Alessandro Ghio [1], Luca Oneto [1], Xavier Parra [2] and Jorge L. Reyes-Ortiz [1,2]

    [1] - Smartlab - Non-Linear Complex Systems Laboratory
    DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy. 

    [2] - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
    Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain
    activityrecognition '@' smartlab.ws 

## DATA DESCRIPTION

"The data to generate tidy.txt comes from experiments carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each volunteer performed six activities (walking, walking upstairs, walking downstairs, sitting, standing, and laying down) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, the experiment captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.   The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers were selected to generate the training data and 30%  of the volunteers were selected to generate the test data." The sensor acceleration signal, which has gravitational and body motion components, was separated into body acceleration and gravity. Jerk (time rate of change of acceleration) and gyroscopic jerk (time rate of change of angular velocity) were calculated as well as the mean, standard deviation and other statisitcs and for each subject and activity.Time as well as frequency measurements were made. [3 Readme.txt file] 

### Original dataset files:

- 'README.txt' [3]
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

### Data transformations:
- The first step was to merge the training and the test sets (X_train.txt, y_train.txt, X_test.txt, and y_test.txt) to create one data set. The activity column was converted to a factor column with labels found in activity_labels.txt. Column names were added from features.txt. 
- Next, columns that contain measurement means and standard deviations where extracted. 
- Activity names were made more descriptive.
- Descriptive variable names replaced the variable names provided in features.txt. 
- Finally, a second, independent tidy data set with the average of each variable for each activity and each subject was created from the dataset generated in the previous step.
  
## ATTRIBUTE INFORMATION
For each record in the dataset contains: 
- An identifier of the subject who took part experiment
- The activity the subject carried out
- The average of all of the mean and standard deviation data for each subject and each activity. This is done for the following measurements:
 
  - Its subject identification 
  - Its activity label.
  - A 79-features that contain mean or standard deviation.

## DATA VARIABLES

- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

### Categorical variables:

subject - Identification of the test subject [1 through 30]

activity - Type of the activity performed when the measurements were taken 

- walking [1]: subject walking during the test
- walkingupstairs [2]: subject walking upstairs during the test
- walkingdownstairs [3]: subject walking downstairs during the test
- sitting [4]: subject was sitting during the test
- standing [5]: subject was standing during the test
- sitting [6]: subject was laying down during the test

### Continuous variables:

#### Time measurements

##### X, Y, and Z coordinates

###### Average of means of body accelerations

"timeBodyAccMeanX"
           
"timeBodyAccMeanY"

"timeBodyAccMeanZ"

###### Average of standard deviations of body accelerations

"timeBodyAccStdX"            

"timeBodyAccStdY"

"timeBodyAccStdZ"

###### Average of means of total accelerations

"timeGravityAccMeanX"        

"timeGravityAccMeanY"

"timeGravityAccMeanZ"

###### Average of standard deviations of total accelerations

"timeGravityAccStdX"         

"timeGravityAccStdY"

"timeGravityAccStdZ"

###### Average of means of body jerks (time rate of change of acceleration)

"timeBodyAccJerkMeanX"       

"timeBodyAccJerkMeanY"

"timeBodyAccJerkMeanZ"

###### Average of standard deviations of body jerks (time rate of change of acceleration)

"timeBodyAccJerkStdX"        

"timeBodyAccJerkStdY"

"timeBodyAccJerkStdZ"

###### Average of means of the angular velocities

"timeBodyGyroMeanX"          

"timeBodyGyroMeanY"

"timeBodyGyroMeanZ"

###### Average of standard deviations of the angular velocities

"timeBodyGyroStdX"           

"timeBodyGyroStdY"

"timeBodyGyroStdZ"

###### Average of means of the angular accelerations (time rate of change of angular velocity)

"timeBodyGyroJerkMeanX"      

"timeBodyGyroJerkMeanY"

"timeBodyGyroJerkMeanZ"

###### Average of standrd deviations of the angular accelerations (time rate of change of angular velocity)

"timeBodyGyroJerkStdX" 

"timeBodyGyroJerkStdY"

"timeBodyGyroJerkStdZ"

##### Magnitudes calculated from cartesian coodinates

###### Average of means of the magnitudes of body accelerations 

"timeBodyAccMagMean"         

###### Average of standard deviations of the magnitudes of body accelerations

"timeBodyAccMagStd"

###### Average of means of the magnitudes of total accelerations

"timeGravityAccMagMean"

###### Average of standard deviations of the magnitudes of total accelerations

"timeGravityAccMagStd"       

###### Average of means of the magnitudes of body jerks

"timeBodyAccJerkMagMean"

###### Average of standard deviations of the magnitudes of body jerks

"timeBodyAccJerkMagStd"

###### Average of means of the magnitudes of body angular velocities

"timeBodyGyroMagMean"    

###### Average of standard deviations of the magnitudes of body angular velocities    

"timeBodyGyroMagStd"

###### Average of means of the magnitudes of body angular velocities

"timeBodyGyroJerkMagMean"

###### Average of standard deviations of the magnitudes of body angular velocities

"timeBodyGyroJerkMagStd"   

#### Frequency measurements

##### X, Y, and Z coordinates 

###### Average of means of body accelerations

"freqBodyAccMeanX"

"freqBodyAccMeanY"

"freqBodyAccMeanZ"

###### Average of standard deviations of body accelerations

"freqBodyAccStdX"

"freqBodyAccStdY"

"freqBodyAccStdZ"

###### Average of means of body accelerations with weighted average of the frequency components to obtain a mean frequency

"freqBodyAccMeanFreqX"

"freqBodyAccMeanFreqY"

"freqBodyAccMeanFreqZ"

###### Average of means of body jerks

"freqBodyAccJerkMeanX"

"freqBodyAccJerkMeanY"

"freqBodyAccJerkMeanZ"

###### Average of standard deviations of body jerks

"freqBodyAccJerkStdX"

"freqBodyAccJerkStdY"

"freqBodyAccJerkStdZ"        

###### Average of means of body jerks with weighted average of the frequency components to obtain a mean frequency

"freqBodyAccJerkMeanFreqX"

"freqBodyAccJerkMeanFreqY"

"freqBodyAccJerkMeanFreqZ"

###### Average of means of body angular velocities

"freqBodyGyroMeanX"

"freqBodyGyroMeanY"

"freqBodyGyroMeanZ"          

###### Average of standard deviations of body angular velocities

"freqBodyGyroStdX"

"freqBodyGyroStdY"

"freqBodyGyroStdZ"  

###### Average of means of body angular velocities with weighted average of the frequency components to obtain a mean frequency         

"freqBodyGyroMeanFreqX"

"freqBodyGyroMeanFreqY"

"freqBodyGyroMeanFreqZ"      

##### Magnitudes calculated from cartesian coodinated

###### Average of means of the magnitudes of body accelerations

"freqBodyAccMagMean"

###### Average of standard deviations of the magnitudes of body accelerations

"freqBodyAccMagStd"

###### Average of means of the magnitudes of body accelerations with weighted average of the frequency components to obtain a mean frequency

"freqBodyAccMagMeanFreq"     

###### Average of means of the magnitudes of body jerks

"freqBodyAccJerkMagMean"

###### Average of standard deviations of the magnitudes of body jerks

"freqBodyAccJerkMagStd"

###### Average of means of the magnitudes of the body jerks with weighted average of the frequency components to obtain a mean frequency

"freqBodyAccJerkMagMeanFreq" 

###### Average of means of the magnitudes of body angular velocities

"freqBodyGyroMagMean"

###### Average of standard deviations of the magnitudes of body angular velocities

"freqBodyGyroMagStd"

###### Average of means of the magnitudes of the body angular velocities with weighted average of the frequency components to obtain a mean frequency

"freqBodyGyroMagMeanFreq"  

 ###### Average of means of the magnitudes of body angular accelerations

"freqBodyGyroJerkMagMean"

###### Average of standard deviations of the magnitudes of body angular accelerations

"freqBodyGyroJerkMagStd"

###### Average of means of the magnitudes of the body angular accelerations with weighted average of the frequency components to obtain a mean frequency

"freqBodyGyroJerkMagMeanFreq"

## Citation Request:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013. 

