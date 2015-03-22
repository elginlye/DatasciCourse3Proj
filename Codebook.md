---
title: "Codebook"
author: "LYE Keng Fook"
date: "Saturday, March 21, 2015"
output: html_document
---

# Study design

Here are the data for the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The data set contains measurements of  body movements for 30 volunteers performing 6 types activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).   

A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


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
