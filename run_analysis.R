## Assume data has been downloaded and extracted in working directory, home folder of data is UCI HAR Dataset

# read data
# 4. Appropriately labels the data set with descriptive variable names.
features_file <- 'UCI HAR Dataset/features.txt'
features <- read.table(features_file, colClasses = c('numeric', 'character'), col.names = c('feature_id', 'feature_desc'))

train_data_file <- 'UCI HAR Dataset/train/X_train.txt'
test_data_file <- 'UCI HAR Dataset/test/X_test.txt'
train_subject_file <- 'UCI HAR Dataset/train/subject_train.txt'
test_subject_file <- 'UCI HAR Dataset/test/subject_test.txt'
train_activity_file <- 'UCI HAR Dataset/train/y_train.txt'
test_activity_file <- 'UCI HAR Dataset/test/y_test.txt'
activities_file <- 'UCI HAR Dataset/activity_labels.txt'

train_data <- read.table(train_data_file, colClasses = 'numeric', col.names = features$feature_desc)
test_data <- read.table(test_data_file, colClasses = 'numeric', col.names = features$feature_desc)
train_subject <- read.table(train_subject_file, colClasses = 'numeric', col.names = 'subject')
test_subject <- read.table(test_subject_file, colClasses = 'numeric', col.names = 'subject')
train_activity <- read.table(train_activity_file, colClasses = 'numeric', col.names = 'activity_id')
test_activity <- read.table(test_activity_file, colClasses = 'numeric', col.names = 'activity_id')
activities <- read.table(activities_file, colClasses = c('numeric', 'character'), col.names = c('activity_id', 'activity_desc'))

# add subject and activity to data, and Uses descriptive activity names to name the activities in the data set
train_data$activity_id <- train_activity$activity_id
test_data$activity_id <- test_activity$activity_id
train_data$subject <- train_subject$subject
test_data$subject <- test_subject$subject

# 1. Merges the training and the test sets to create one data set.
merged_data <- rbind(train_data, test_data)

# 3. Uses descriptive activity names to name the activities in the data set
merged_data <- merge(merged_data, activities, by.x = 'activity_id', by.y = 'activity_id', all = FALSE)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
extracted_col <- c(
  grep('subject', colnames(merged_data)), 
  grep('activity_desc', colnames(merged_data)),
  grep('[a-zA-Z]+\\.(mean|std)\\.', colnames(merged_data))
)
extracted_data <- merged_data[, extracted_col]

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
melt_data <- melt(extracted_data, id.vars = c('subject', 'activity_desc'))
dcast_data <- dcast(melt_data, subject + activity_desc ~ variable, mean)

# save to output files
out_folder <- 'UCI HAR Dataset/output'
if(!file.exists(out_folder)) {
  dir.create(out_folder)
}
out_file_1 <- paste(out_folder, 'step_4_data_set.csv', sep = "/")
out_file_2 <- paste(out_folder, 'step_5_data_set.csv', sep = "/")

write.csv(extracted_data, file = out_file_1, row.names = FALSE)
write.csv(dcast_data, file = out_file_2, row.names = FALSE)
