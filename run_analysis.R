
# Load common labels
setwd("/Users/rodrigo/developer/coursera/dataScience/cleanLast/UCIHARDataset")
features <- read.delim("features.txt", header = FALSE, sep = "", stringsAsFactors = FALSE)
activitiesLabels <- read.delim("activity_labels.txt", header = FALSE, sep = "", stringsAsFactors = FALSE)

# Load test data 
setwd("/Users/rodrigo/developer/coursera/dataScience/cleanLast/UCIHARDataset/test")
xtest <- read.delim("X_test.txt", header = FALSE, sep = "", stringsAsFactors = FALSE)
ytest <- read.delim("y_test.txt", header = FALSE, sep = "", stringsAsFactors = FALSE)
subject_test <- read.delim("subject_test.txt", header = FALSE, sep = "", stringsAsFactors = FALSE)

# Load train data
setwd("/Users/rodrigo/developer/coursera/dataScience/cleanLast/UCIHARDataset/train")
xtrain <- read.delim("X_train.txt", header = FALSE, sep = "", stringsAsFactors = FALSE)
ytrain <- read.delim("y_train.txt", header = FALSE, sep = "", stringsAsFactors = FALSE)
subject_train <- read.delim("subject_train.txt", header = FALSE, sep = "", stringsAsFactors = FALSE)

# Reanme 'test' columns
colnames(xtest) <- features[,2]
colnames(ytest) <- c("activity")
colnames(subject_test) <- c("subject")

# Reanme 'train' columns
colnames(xtrain) <- features[,2]
colnames(ytrain) <- c("activity")
colnames(subject_train) <- c("subject")

# Add activity and subject columns
test <- cbind(xtest, ytest, subject_test)
train <- cbind(xtrain, ytrain, subject_train)

# Merge test and train data
mergedData <- rbind(test, train)

# Select *mean(), *std(), activity and subject columns
meanStdColNames <- grep("mean\\()|std\\()|activity|subject", colnames(mergedData))
meanStd <- subset(mergedData, select = meanStdColNames)

# Replace the activity number with the activity name
meanStd$activity <- as.factor(meanStd$activity)
levels(meanStd$activity) <- activitiesLabels[,2]

# Improve variable names
meanStdColNames <- colnames(meanStd)
meanStdColNames <- gsub("^t", "time_", meanStdColNames)
meanStdColNames <- gsub("^f", "frequency_", meanStdColNames)
meanStdColNames <- gsub("Acc", "_Acceleration", meanStdColNames)
meanStdColNames <- gsub("Gyro", "_Gyroscope", meanStdColNames)
colnames(meanStd) <- meanStdColNames

# Average of each variable by subject and activity
rst <- aggregate(meanStd[,1:66], list(meanStd$activity, meanStd$subject), mean)
# Fix column names: the aggregate function changed it to Group.1 and Group.2
colnames(rst)[1] <- "Activity"
colnames(rst)[2] <- "Subject"

# Write to disk
setwd("/Users/rodrigo/developer/coursera/dataScience/cleanLast/getting-cleaning-data")
write.table(rst, file="step5DataSet.txt", row.name = FALSE)
