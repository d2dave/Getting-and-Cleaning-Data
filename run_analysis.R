setwd("C:/Users/d2dave/Desktop/Coursera/Course 3/Week 4/UCI HAR Dataset/")

#Read training data
features <- read.table("./features.txt",header=FALSE)
activity_labels <- read.table("./activity_labels.txt",header=FALSE)
subject_train <-read.table("./train/subject_train.txt", header=FALSE)
X_train <- read.table("./train/X_train.txt", header=FALSE)
Y_train <- read.table("./train/y_train.txt", header=FALSE)

#Training data column names
colnames(activity_labels) <- c("activity_id","activity_type")
colnames(subject_train) <- "subject_id"
colnames(X_train) <- features[,2]
colnames(Y_train) <- "activity_id"

#merging all training data
training_data <- cbind(Y_train,subject_train,X_train)

#Read test data
subject_test    <-read.table("./test/subject_test.txt", header=FALSE)
X_test         <- read.table("./test/X_test.txt", header=FALSE)
Y_test         <- read.table("./test/y_test.txt", header=FALSE)

# Test data column names

colnames(subject_test) <- "subject_id"
colnames(X_test) <- features[,2]
colnames(Y_test) <- "activity_id"

# merging test Data
test_data <- cbind(Y_test,subject_test,X_test)

#Step 1 - Merge the training and the test sets to create one data set
merged_data <- rbind(training_data,test_data)

#Step 2 - Extracting only the measurements on the mean and standard deviation for each measurement.
mean_std <-merged_data[,grepl("mean|std|subject|activityId",colnames(merged_data))]

#Step 3 - Using descriptive activity names to name the activities in the data set
library(plyr)
mean_std <- join(mean_std, activity_labels, by = "activity_id", match = "first")
mean_std <-mean_std[,-1]

#Step 4 - Appropriately labels the data set with descriptive variable names.
names(mean_std) <- gsub("\\(|\\)", "", names(mean_std), perl  = TRUE)
names(mean_std) <- make.names(names(mean_std))

names(mean_std) <- gsub("Acc", "Acceleration", names(mean_std))
names(mean_std) <- gsub("^t", "Time", names(mean_std))
names(mean_std) <- gsub("^f", "Frequency", names(mean_std))
names(mean_std) <- gsub("BodyBody", "Body", names(mean_std))
names(mean_std) <- gsub("mean", "Mean", names(mean_std))
names(mean_std) <- gsub("std", "Standard Deviation", names(mean_std))
names(mean_std) <- gsub("Freq", "Frequency", names(mean_std))
names(mean_std) <- gsub("Mag", "Magnitude", names(mean_std))

#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
average_activity_subject<- ddply(mean_std, c("subject_id","activity_type"), numcolwise(mean))

#Step 5 - create a txt file with write.table() 
write.table(average_activity_subject,file="average_each_activity_subject.txt")
