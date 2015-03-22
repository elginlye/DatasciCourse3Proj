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
    + training set where 70% of the volunteers was selected for generating the training data
    + test set for the other 30% of volunteers
    
# The raw data 

Data in the train and test sets are saved into the following files,  

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
6. Finally output the tidy data set to a text file "Subject_Activity.txt""



# Code book


##Variables in the tidy data set
Final tidy data set contains 180 observations. 
Each observation has an activity, a subject and 79 measurements, totalling 81 variables.  
Time domain signals are prefixed with "time-"  
Freq domain signals are prefixed with "freq-"    
Accelerometer signals measured in standard gravity units 'g'. The body acceleration signal obtained by subtracting the gravity from the total acceleration.   
Gyroscope signals measures angular velocity vector units of radians/second.   
All measurements are normalized and bounded within [-1,1].  


  
No. | Variable name  | Description   
--- | -------------- | ------------   
1 | subject        | ID of the volunteer [1..30]  
2 | activity | Name of the activity (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)  
3 | time-BodyAcc-mean()-X | Mean of body linear acceleration in X-axis.  
4 | time-BodyAcc-mean()-Y | Mean of body linear acceleration in Y-axis.  
5 | time-BodyAcc-mean()-Z | Mean of body linear acceleration in Z-axis.  
6 | time-BodyAcc-std()-X | Std dev of body linear acceleration in X-axis.  
7 | time-BodyAcc-std()-Y | Std dev of body linear acceleration in Y-axis.  
8 | time-BodyAcc-std()-Z | Std dev of body linear acceleration in Z-axis.  
9 |time-GravityAcc-mean()-X | Mean of gravity acceleration in X-axis.  
10 | time-GravityAcc-mean()-Y | Mean of gravity acceleration in Y-axis.   
11 | time-GravityAcc-mean()-Z | Mean of gravity acceleration in X-axis.  
12 | time-GravityAcc-std()-X | Std dev of gravity acceleration in X-axis.  
13 | time-GravityAcc-std()-Y | Std dev of gravity acceleration in Y-axis.  
14 | time-GravityAcc-std()-Z | Std dev of gravity acceleration in Z-axis.    
15 | time-BodyAccJerk-mean()-X  | Mean of Jerk signal derived from body linear acceleration in X-axis.  
16 | time-BodyAccJerk-mean()-Y | Mean of Jerk signal derived from body linear acceleration in Y-axis.
17 | time-BodyAccJerk-mean()-Z | Mean of Jerk signal derived from body linear acceleration in Z-axis.    
18 | time-BodyAccJerk-std()-X | Std dev of Jerk signal derived from body linear acceleration in X-axis.  
19 | time-BodyAccJerk-std()-Y | Std dev of Jerk signal derived from body linear acceleration in Y-axis.  
20 | time-BodyAccJerk-std()-Z | Std dev of Jerk signal derived from body linear acceleration in Z-axis.  
21 | time-BodyGyro-mean()-X | Mean of body angular velocity in X-axis. 
22 | time-BodyGyro-mean()-Y | Mean of body angular velocity in Y-axis. 
23 | time-BodyGyro-mean()-Z | Mean of body angular velocity in Z-axis. 
24 | time-BodyGyro-std()-X  | Std dev of body angular velocity in X-axis.  
25 | time-BodyGyro-std()-Y | std dev of body angular velocity in Y-axis.  
26 | time-BodyGyro-std()-Z | Std dev of body angular velocity in Z-axis.    
27 | time-BodyGyroJerk-mean()-X | Mean of Jerk signal derived from body angular velocity in X-axis.  
28 | time-BodyGyroJerk-mean()-Y | Mean of Jerk signal derived from body angular velocity in Y-axis.  
29 | time-BodyGyroJerk-mean()-Z | Mean of Jerk signal derived from body angular velocity in Z-axis.  
30 | time-BodyGyroJerk-std()-X | Std dev of Jerk signal derived from body angular velocity in X-axis.  
31 | time-BodyGyroJerk-std()-Y | Std dev of Jerk signal derived from body angular velocity in Y-axis.  
32 | time-BodyGyroJerk-std()-Z | Std dev of Jerk signal derived from body angular velocity in Z-axis.  
33 | time-BodyAccMag-mean() | Mean of body linear acceleration magnitude. Magnitude calculated using the Euclidean norm. 
34 | time-BodyAccMag-std() | Std dev of body linear acceleration magnitude. Magnitude calculated using the Euclidean norm.  
35 | time-GravityAccMag-mean() | Mean of gravity acceleration magnitude. Magnitude calculated using the Euclidean norm. 
36 | time-GravityAccMag-std() | Std dev of gravity acceleration magnitude. Magnitude calculated using the Euclidean norm.  
37 | time-BodyAccJerkMag-mean() | Mean of Jerk signal magnitude derived from body linear acceleration. Magnitude was calculated using the Euclidean norm.   
38 | time-BodyAccJerkMag-std() | Std dev of Jerk signal magnitude derived from body linear acceleration. Magnitude was calculated using the Euclidean norm.  
39 | time-BodyGyroMag-mean() | Mean of body angular velocity magnitude. Magnitude calculated using the Euclidean norm.  
40 | time-BodyGyroMag-std() | Std dev of body angular velocity magnitude. Magnitude calculated using the Euclidean norm.  
41 | time-BodyGyroJerkMag-mean() | Mean of Jerk signal magnitude derived from body angular velocity. Magnitude calculated using the Euclidean norm.   
42 | time-BodyGyroJerkMag-std() | Std dev of Jerk signal magnitude derived from body angular velocity. Magnitude calculated using the Euclidean norm.   
43 | freq-BodyAcc-mean()-X | Mean of body linear acceleration in X-axis.  
44 | freq-BodyAcc-mean()-Y | Mean of body linear acceleration in Y-axis.  
45 | freq-BodyAcc-mean()-Z | Mean of body linear acceleration in Z-axis.  
46 | freq-BodyAcc-std()-X | Std dev of body linear acceleration in X-axis.  
47 | freq-BodyAcc-std()-Y | Std dev of body linear acceleration in Y-axis.  
48 | freq-BodyAcc-std()-Z | Std dev of body linear acceleration in Z-axis.  
49 | freq-BodyAcc-meanFreq()-X | Weighted average of the frequency components of body linear acceleration in X-axis.  
50 | freq-BodyAcc-meanFreq()-Y | Weighted average of the frequency components of body linear acceleration in Y-axis.  
51 | freq-BodyAcc-meanFreq()-Z | Weighted average of the frequency components of body linear acceleration in Z-axis.  
52 | freq-BodyAccJerk-mean()-X | Mean of Jerk signal derived from body linear acceleration in X-axis. 
53 | freq-BodyAccJerk-mean()-Y | Mean of Jerk signal derived from body linear acceleration in Y-axis. 
54 | freq-BodyAccJerk-mean()-Z | Mean of Jerk signal derived from body linear acceleration in Z-axis.   
55 | freq-BodyAccJerk-std()-X | Std dev of Jerk signal derived from body linear acceleration in X-axis.
56 | freq-BodyAccJerk-std()-Y | Std dev of Jerk signal derived from body linear acceleration in Y-axis.
57 | freq-BodyAccJerk-std()-Z | Std dev of Jerk signal derived from body linear acceleration in Z-axis.
58 | freq-BodyAccJerk-meanFreq()-X | Weighted average of frequency components of Jerk signal derived from body linear acceleration in X-axis.
59 | freq-BodyAccJerk-meanFreq()-Y | Weighted average of frequency components of Jerk signal derived from body linear acceleration in Y-axis.
60 | freq-BodyAccJerk-meanFreq()-Z | Weighted average of frequency components of Jerk signal derived from body linear acceleration in Z-axis.
61 | freq-BodyGyro-mean()-X | Mean of body angular velocity in X-axis.   
62 | freq-BodyGyro-mean()-Y | Mean of body angular velocity in Y-axis.   
63 | freq-BodyGyro-mean()-Z | Mean of body angular velocity in Z-axis.   
64 | freq-BodyGyro-std()-X | Std dev of body angular velocity in X-axis.   
65 | freq-BodyGyro-std()-Y | Std dev of body angular velocity in Y-axis.   
66 | freq-BodyGyro-std()-Z | Std dev of body angular velocity in Z-axis.   
67 | freq-BodyGyro-meanFreq()-X | Weighted average of frequency components of body angular velocity in X-axis.  
68 | freq-BodyGyro-meanFreq()-Y | Weighted average of frequency components of body angular velocity in Y-axis.  
69 | freq-BodyGyro-meanFreq()-Z | Weighted average of frequency components of body angular velocity in Z-axis.  
70 | freq-BodyAccMag-mean() | Mean of body linear acceleration magnitude. Magnitude was calculated using the Euclidean norm.  
71 | freq-BodyAccMag-std() | std dev of body linear acceleration magnitude. Magnitude was calculated using the Euclidean norm.  
72 | freq-BodyAccMag-meanFreq() | Weighted average of frequency components of body linear acceleration magnitude. Magnitude was calculated using the Euclidean norm.    
73 | freq-BodyBodyAccJerkMag-mean() | Mean of Jerk signal magnitude derived from body linear acceleration. Magnitude was calculated using the Euclidean norm.  
74 | freq-BodyBodyAccJerkMag-std() | Std dev of Jerk signal magnitude derived from body linear acceleration. Magnitude was calculated using the Euclidean norm.    
75 | freq-BodyBodyAccJerkMag-meanFreq() | Weighted average of frequency components of Jerk signal magnitude derived from body linear acceleration. Magnitude was calculated using the Euclidean norm.    
76 | freq-BodyBodyGyroMag-mean() | Mean of body angular velocity magnitude. Magnitude was calculated using the Euclidean norm.  
77 | freq-BodyBodyGyroMag-std() | std dev of body angular velocity magnitude. Magnitude was calculated using the Euclidean norm  
78 | freq-BodyBodyGyroMag-meanFreq() | Weighted average of frequency components of body angular velocity magnitude. Magnitude was calculated using the Euclidean norm.  
79 | freq-BodyBodyGyroJerkMag-mean() | Mean of Jerk signal magnitude derived from body linear acceleration. Magnitude was calculated using the Euclidean norm.  
80 | freq-BodyBodyGyroJerkMag-std() | std dev of Jerk signal magnitude derived from body angular velocity. Magnitude was calculated using the Euclidean norm.  
81 | freq-BodyBodyGyroJerkMag-meanFreq() | Weighted average of frequency components of Jerk signal magnitude derived from  body angular velocity. Magnitude was calculated using the Euclidean norm.  
