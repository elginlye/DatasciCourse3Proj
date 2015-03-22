
# Step 1, Merge the training and the test sets to create one data set.
merge_data <- rbind(read.table("test/X_test.txt"), read.table("train/X_train.txt"))


# Step 2, Extracts only the measurements on the mean and standard deviation for each measurement. 
features <- read.table("features.txt", sep=" ", col.names = c("id", "feature_name"))
names(merge_data) <- features[,"feature_name"]  # rename column names with feature names 
mean_std_data <- merge_data[,grep("mean|std", names(merge_data))]   # grep only mean or std dev measurements


# Step 3, Uses descriptive activity names to name the activities in the data set
activity <- read.table("activity_labels.txt", sep=" ", col.names = c("id", "activity_name"))
activity_data <-rbind(read.table("test/y_test.txt", col.names = c("id")), read.table("train/y_train.txt", col.names = c("id")))    # combine activity_IDs into 1 dataset 
library("dplyr")
name_activity_data <- left_join(activity_data, activity, by="id")   # join the 2 dataframes with "id" as key column
activity_mean_std_data <- cbind(name_activity_data[,"activity_name"], mean_std_data)    # add new coloumn containing the activity name  into dataframe name_activity_data


# Step 4, Appropriately labels the data set with descriptive variable names.
names(activity_mean_std_data)[1] <- "activity"
library("stringr")
names(activity_mean_std_data) <- str_replace(names(activity_mean_std_data), "^t", "time-")  # expands t to time- in column names
names(activity_mean_std_data) <- str_replace(names(activity_mean_std_data), "^f", "freq-")  # expands f to freq- in column names
names(activity_mean_std_data) <- str_replace(names(activity_mean_std_data), "BodyBody", "Body") # typo? correct BodyBody to Body 

# Step 5, From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
subject <- rbind(read.table("test/subject_test.txt"), read.table("train/subject_train.txt"))
names(subject) <- c("subject")  # read in all the subjects
subject_activity_mean_std_data <- cbind(subject, activity_mean_std_data)    # add new column containing the subjects to the measurements 
tidy_data <- group_by(subject_activity_mean_std_data, subject, activity)    # sort the dataset by subject, by activity 
tidy_melt <- melt(tidy_data, id=c("subject","activity"), measure.vars= names(tidy_data)[3:81])  # reshape data with subject + activity as key columns, and rest of the 79 columns as variables 
result <- dcast(tidy_melt, subject + activity ~ variable, mean) #reshape the molten data frame into 1 row per subject, per activity, with average/mean of the 79 feature measurements in the same row  
write.table(result, "Subject_Activity.txt", row.name=FALSE)
