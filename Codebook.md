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

Time domain signals are prefixed with "time-"  
Freq domain signals are prefixed with "freq-"    
Accelerometer signals measured in standard gravity units 'g'. The body acceleration signal obtained by subtracting the gravity from the total acceleration.   
Gyroscope signals measures angular velocity vector units of radians/second. 
All measurements are normalized and bounded within [-1,1].  
  
  
Variable name  | Description   
-------------- | ------------   
subject        | ID of the volunteer [1..30]  
activity | Name of the activity (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)  
time-BodyAcc-mean()-X | Mean of body linear acceleration in X-axis.  
time-BodyAcc-mean()-Y | Mean of body linear acceleration in Y-axis.  
time-BodyAcc-mean()-Z | Mean of body linear acceleration in Z-axis.  
time-BodyAcc-std()-X | Std dev of body linear acceleration in X-axis.  
time-BodyAcc-std()-Y | Std dev of body linear acceleration in Y-axis.  
time-BodyAcc-std()-Z | Std dev of body linear acceleration in Z-axis.  
time-GravityAcc-mean()-X | Mean of gravity acceleration in X-axis.  
time-GravityAcc-mean()-Y | Mean of gravity acceleration in Y-axis.   
time-GravityAcc-mean()-Z | Mean of gravity acceleration in X-axis.  
time-GravityAcc-std()-X | Std dev of gravity acceleration in X-axis.  
time-GravityAcc-std()-Y | Std dev of gravity acceleration in Y-axis.  
time-GravityAcc-std()-Z | Std dev of gravity acceleration in Z-axis.    
time-BodyAccJerk-mean()-X  | Mean of Jerk signal derived from body linear acceleration in X-axis.  
time-BodyAccJerk-mean()-Y | Mean of Jerk signal derived from body linear acceleration in Y-axis.
time-BodyAccJerk-mean()-Z | Mean of Jerk signal derived from body linear acceleration in Z-axis.    
time-BodyAccJerk-std()-X | Std dev of Jerk signal derived from body linear acceleration in X-axis.  
time-BodyAccJerk-std()-Y | Std dev of Jerk signal derived from body linear acceleration in Y-axis.  
time-BodyAccJerk-std()-Z | Std dev of Jerk signal derived from body linear acceleration in Z-axis.  
time-BodyGyro-mean()-X | Mean of body angular velocity in X-axis. 
time-BodyGyro-mean()-Y | Mean of body angular velocity in Y-axis. 
time-BodyGyro-mean()-Z | Mean of body angular velocity in Z-axis. 
time-BodyGyro-std()-X  | Std dev of body angular velocity in X-axis.  
time-BodyGyro-std()-Y | std dev of body angular velocity in Y-axis.  
time-BodyGyro-std()-Z | Std dev of body angular velocity in Z-axis.    
time-BodyGyroJerk-mean()-X | Mean of Jerk signal derived from body angular velocity in X-axis.  
time-BodyGyroJerk-mean()-Y | Mean of Jerk signal derived from body angular velocity in Y-axis.  
time-BodyGyroJerk-mean()-Z | Mean of Jerk signal derived from body angular velocity in Z-axis.  
time-BodyGyroJerk-std()-X | Std dev of Jerk signal derived from body angular velocity in X-axis.  
time-BodyGyroJerk-std()-Y | Std dev of Jerk signal derived from body angular velocity in Y-axis.  
time-BodyGyroJerk-std()-Z | Std dev of Jerk signal derived from body angular velocity in Z-axis.  
time-BodyAccMag-mean() | Mean of body linear acceleration magnitude. Magnitude calculated using the Euclidean norm.  
time-BodyAccMag-std() | Std dev of body linear acceleration magnitude. Magnitude calculated using the Euclidean norm.  
time-GravityAccMag-mean() | Mean of gravity acceleration magnitude. Magnitude calculated using the Euclidean norm. 
time-GravityAccMag-std() | Std dev of gravity acceleration magnitude. Magnitude calculated using the Euclidean norm.  
time-BodyAccJerkMag-mean() | Mean of Jerk signal magnitude derived from body linear acceleration. Magnitude was calculated using the Euclidean norm.   
time-BodyAccJerkMag-std() | Std dev of Jerk signal magnitude derived from body linear acceleration. Magnitude was calculated using the Euclidean norm.  
time-BodyGyroMag-mean() | Mean of body angular velocity magnitude. Magnitude calculated using the Euclidean norm.  
time-BodyGyroMag-std() | Std dev of body angular velocity magnitude. Magnitude calculated using the Euclidean norm.  
time-BodyGyroJerkMag-mean() | Mean of Jerk signal magnitude derived from body angular velocity. Magnitude calculated using the Euclidean norm.   
time-BodyGyroJerkMag-std() | Std dev of Jerk signal magnitude derived from body angular velocity. Magnitude calculated using the Euclidean norm.   
freq-BodyAcc-mean()-X | Mean of body linear acceleration in X-axis.  
freq-BodyAcc-mean()-Y | Mean of body linear acceleration in Y-axis.  
freq-BodyAcc-mean()-Z | Mean of body linear acceleration in Z-axis.  
freq-BodyAcc-std()-X | Std dev of body linear acceleration in X-axis.  
freq-BodyAcc-std()-Y | Std dev of body linear acceleration in Y-axis.  
freq-BodyAcc-std()-Z | Std dev of body linear acceleration in Z-axis.  
freq-BodyAcc-meanFreq()-X | Weighted average of the frequency components of body linear acceleration in X-axis.  
freq-BodyAcc-meanFreq()-Y | Weighted average of the frequency components of body linear acceleration in Y-axis.  
freq-BodyAcc-meanFreq()-Z | Weighted average of the frequency components of body linear acceleration in Z-axis.  
freq-BodyAccJerk-mean()-X | Mean of Jerk signal derived from body linear acceleration in X-axis. 
freq-BodyAccJerk-mean()-Y | Mean of Jerk signal derived from body linear acceleration in Y-axis. 
freq-BodyAccJerk-mean()-Z | Mean of Jerk signal derived from body linear acceleration in Z-axis.   
freq-BodyAccJerk-std()-X | Std dev of Jerk signal derived from body linear acceleration in X-axis.
freq-BodyAccJerk-std()-Y | Std dev of Jerk signal derived from body linear acceleration in Y-axis.
freq-BodyAccJerk-std()-Z | Std dev of Jerk signal derived from body linear acceleration in Z-axis.
freq-BodyAccJerk-meanFreq()-X | Weighted average of frequency components of Jerk signal derived from body linear acceleration in X-axis.
freq-BodyAccJerk-meanFreq()-Y | Weighted average of frequency components of Jerk signal derived from body linear acceleration in Y-axis.
freq-BodyAccJerk-meanFreq()-Z | Weighted average of frequency components of Jerk signal derived from body linear acceleration in Z-axis.
freq-BodyGyro-mean()-X | Mean of body angular velocity in X-axis.   
freq-BodyGyro-mean()-Y | Mean of body angular velocity in Y-axis.   
freq-BodyGyro-mean()-Z | Mean of body angular velocity in Z-axis.   
freq-BodyGyro-std()-X | Std dev of body angular velocity in X-axis.   
freq-BodyGyro-std()-Y | Std dev of body angular velocity in Y-axis.   
freq-BodyGyro-std()-Z | Std dev of body angular velocity in Z-axis.   
freq-BodyGyro-meanFreq()-X | Weighted average of frequency components of body angular velocity in X-axis.  
freq-BodyGyro-meanFreq()-Y | Weighted average of frequency components of body angular velocity in Y-axis.  
freq-BodyGyro-meanFreq()-Z | Weighted average of frequency components of body angular velocity in Z-axis.  
freq-BodyAccMag-mean() | Mean of body linear acceleration magnitude. Magnitude was calculated using the Euclidean norm.  
freq-BodyAccMag-std() | std dev of body linear acceleration magnitude. Magnitude was calculated using the Euclidean norm.  
freq-BodyAccMag-meanFreq() | Weighted average of frequency components of body linear acceleration magnitude. Magnitude was calculated using the Euclidean norm.    
freq-BodyBodyAccJerkMag-mean() | Mean of Jerk signal magnitude derived from body linear acceleration. Magnitude was calculated using the Euclidean norm.  
freq-BodyBodyAccJerkMag-std() | Std dev of Jerk signal magnitude derived from body linear acceleration. Magnitude was calculated using the Euclidean norm.    
freq-BodyBodyAccJerkMag-meanFreq() | Weighted average of frequency components of Jerk signal magnitude derived from body linear acceleration. Magnitude was calculated using the Euclidean norm.    
freq-BodyBodyGyroMag-mean() | Mean of body angular velocity magnitude. Magnitude was calculated using the Euclidean norm.  
freq-BodyBodyGyroMag-std() | std dev of body angular velocity magnitude. Magnitude was calculated using the Euclidean norm  
freq-BodyBodyGyroMag-meanFreq() | Weighted average of frequency components of body angular velocity magnitude. Magnitude was calculated using the Euclidean norm.  
freq-BodyBodyGyroJerkMag-mean() | Mean of Jerk signal magnitude derived from body linear acceleration. Magnitude was calculated using the Euclidean norm.  
freq-BodyBodyGyroJerkMag-std() | std dev of Jerk signal magnitude derived from body angular velocity. Magnitude was calculated using the Euclidean norm.  
freq-BodyBodyGyroJerkMag-meanFreq() | Weighted average of frequency components of Jerk signal magnitude derived from  body angular velocity. Magnitude was calculated using the Euclidean norm.  
