# setwd("C:/Users/Benjamin/Downloads/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/")
library(dplyr)

####Contains the labels for the different activities performed
activities <- read.table("./activity_labels.txt", col.names = c("label", "activity"))
activities$activity <- tolower(activities$activity)
activities <- factor(activities$activity,activities$activity)


####Contains labels for the different variables measured (561 in total)
features <- read.table("./features.txt", col.names = c("label","feature"))
features <- as.character(features$feature)

   
#Import raw data (measurements)
test_data <- read.table("./test/X_test.txt", col.names = features)
train_data <- read.table("./train/x_train.txt", col.names = features)

 

#Import activity_ID and translate to descriptive activity names 
test_activity <- read.table("./test/y_test.txt", col.names = "activityID")
test_activity$activityLabel <- activities[test_activity$activityID]

train_activity <- read.table("./train/y_train.txt", col.names = "activityID")
train_activity$activityLabel <- activities[train_activity$activityID]

#Import subject_ID's
test_subject <- read.table("./test/subject_test.txt", col.names = "subjectID")
train_subject <- read.table("./train/subject_train.txt", col.names = "subjectID")

 
#Combine subject's with measurements for each activity
test_data <- cbind(test_subject,test_activity,test_data)
train_data <- cbind(train_subject,train_activity,train_data)

#Merge the training and test sets.
full_data <- rbind(test_data,train_data)

#Extract only means and std's
extracted_data <- select(full_data,subjectID, activityID,activityLabel,contains("mean",ignore.case = FALSE),contains("std"))

#Tidy up variable names
names(extracted_data) <- names(extracted_data) %>% 
  gsub(pattern = "mean", replacement = "Mean") %>% 
  gsub(pattern = "std", replacement = "Std") %>% 
  gsub(pattern = "\\.", replacement = "")

#Create a tidy dataset with the averages of each variable for each activity and each subject
tidy_dataset <- group_by(extracted_data,subjectID,activityID,activityLabel) %>% 
  summarize_all(mean) %>% 
  ungroup()

write.table(tidy_dataset, file = "tidy_dataset.txt", row.names = FALSE)
