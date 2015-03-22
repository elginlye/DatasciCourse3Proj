---
title: "README"
author: "LYE Keng Fook"
date: "Saturday, March 21, 2015"
output: html_document
---


# The experiment
1. Measures  the body motion of 30 volunteers performing 6 activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).
2. Each volunteer wears a smartphone on the waist. The  accelerometer and gyroscope embedded in the smartphone records the 3-axial linear acceleration and 3-axial angular velocity of each activity.
3. The obtained dataset has been randomly partitioned into two sets, 
    +training set where 70% of the volunteers was selected for generating the training data
    +test set for the other 30% of volunteers
    
# The raw data 

Saved into the following files,  for the train and test data. Their descriptions are equivalent. 

* 'train/subject_train.txt',  
  'test/subject_test.txt': Each row identifies the subject who performed the activity. Its range is from 1 to 30. 


* 'train/X_train.txt':
    + Data from the training set 
    + Each record is a 561-feature vector with time and frequency domain variables. 

* 'train/y_train.txt': 
    + Data from the training set
    + Each record indicates the activity label corresponding to the record in X_train.txt


* 'test/X_test.txt': 
    + Data from the test set 
    + Each record is a 561-feature vector with time and frequency domain variables. 

* 'test/y_test.txt': 
    + Data from the test set
    + Each record indicates the activity label corresponding to the record in X_test.txt


The dataset also includes below files,

* 'features.txt':  Lists 561 features derived from the accelerometer and gyroscope 3-axial raw signals. 
    + time domain signals are prefixed 't' to denote time
    + frequency domain signals are prefixed 'f' 
    
* 'activity_labels.txt': Links the 6 activity labels with their activity name.



# The processing script
run_analysis.R  

The raw data is to be unzipped in the working directory, with sub-directories *test* and *train*

1. Step 1, Merge the training and the test sets to create one data set with 10,299 observations.
2. Step 2, Extracts the 79 mean and standard deviation measurements.
3. Step 3, Add a new column for activity name in the data set.
4. Step 4, Appropriately labels the data set with descriptive variable names.
5. Step 5, From the data set in step 4, add another column for the subject in the data set.  Creates a second, independent tidy data set with the average of each variable for each activity and each subject. Final tidy data set contains 180 observations. Each observation has 79 measurements, activity & subject, totalling 81 variables. 
6. Finally outputs the tidy data set to a text file.



