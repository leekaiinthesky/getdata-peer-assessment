### Load labels
data_path <- "UCI HAR Dataset"
activity_labels <- read.table(file.path(data_path, "activity_labels.txt"), col.names=c("activityId", "activityLabel"))
feature_labels <- read.table(file.path(data_path, "features.txt"), col.names=c("featureId", "featureLabel"))

### Identify which features to load, clean up label names
mean_and_std_features <- feature_labels[grepl("mean\\(\\)", feature_labels$featureLabel) |
                                        grepl("std\\(\\)", feature_labels$featureLabel), ]
mean_and_std_features$featureLabel <- gsub("-s", "S",
                                      gsub("-m", "M",
                                      gsub("BodyBody", "Body",
                                      gsub("\\(\\)", "",
                                      gsub("-([X-Z])", "\\1", mean_and_std_features$featureLabel)))))
mean_and_std_features$featureLabel <- gsub("(Mean|Std)([X-Z])", "\\2\\1", mean_and_std_features$featureLabel)

feature_labels$colClass <- "NULL"
feature_labels$colClass[mean_and_std_features$featureId] <- "numeric"
feature_labels$cleanName <- "NULL"
feature_labels$cleanName[mean_and_std_features$featureId] <- mean_and_std_features$featureLabel

### Load train and test data
subject_train <- read.table(file.path(data_path, "train", "subject_train.txt"), col.names="subjectId")
X_train <- read.table(file.path(data_path, "train", "X_train.txt"), col.names=feature_labels$cleanName, colClasses=feature_labels$colClass)
y_train <- read.table(file.path(data_path, "train", "y_train.txt"), col.names="activityId")

subject_test <- read.table(file.path(data_path, "test", "subject_test.txt"), col.names="subjectId")
X_test <- read.table(file.path(data_path, "test", "X_test.txt"), col.names=feature_labels$cleanName, colClasses=feature_labels$colClass)
y_test <- read.table(file.path(data_path, "test", "y_test.txt"), col.names="activityId")

### Rename activities, combine train and test data into one data frame
y_train_factor <- factor(y_train$activityId, labels=activity_labels$activityLabel)
y_test_factor <- factor(y_test$activityId, labels=activity_labels$activityLabel)
data <- rbind(cbind(subject_train, X_train, activityLabel=y_train_factor), cbind(subject_test, X_test, activityLabel=y_test_factor))

### Aggregate by subjectId and activityLabel
mean_by_subject_by_activity <- aggregate(data[, !colnames(data) %in% c("subjectId", "activityLabel")], list(subjectId=data$subjectId, activityLabel=data$activityLabel), mean)

write.table(mean_by_subject_by_activity, file="mean_by_subject_by_activity.txt", row.names=FALSE)
