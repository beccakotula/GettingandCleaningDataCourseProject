## Initiate libraries used in this script
library(dplyr)

## Download and unzip source data into working directory if it does not exist. 
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
fileName <- "UCI HAR Dataset.zip"

if (!file.exists(fileName)){
  download.file(fileURL, fileName)
}

if (!file.exists("UCI HAR Dataset")){
  unzip(fileName)
}

## Read testing and training data into R.
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
Y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
Subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
Y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
Subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

## Read feature names and activity names into R. 
features <- read.table("./UCI HAR Dataset/features.txt", as.is=TRUE)
activity <- read.table("./UCI HAR Dataset/activity_labels.txt")

## Rename column name of Y lables for test and train data with a descriptive name.
Y_test <- rename(Y_test, Activity=V1)
Y_train <- rename(Y_train, Activity=V1)

## Rename column name of Subject labels for test and train data with a descriptive name.
Subject_test <- rename(Subject_test, Subject = V1)
Subject_train <- rename(Subject_train, Subject = V1)

## Bind test and train Subject labels, Y labels, and data (X). 
## Subject labels and Y labels are bound to the left side of the data for ease of viewing. 
test <- cbind(Subject_test, Y_test, X_test)
train <- cbind(Subject_train, Y_train, X_train)

## Merge the testing and training data into one dataframe. 
allData <- rbind(test, train)

## Remove original tables to restore memory space. 
rm(X_test,
   Y_test,
   Subject_test,
   X_train,
   Y_train,
   Subject_train, 
   test, 
   train)

## Label the colums with descriptive labels using feature names.
colnames(allData) <- c("Subject", "Activity", features[, 2])

## Identify column names to keep in order to only have measurements
## on mean and standard deviation.  
toKeep <- grepl("Subject|Activity|mean|std", colnames(allData))

## Filter the data using those column names. 
allData <- allData[ ,toKeep]

## Assign descriptive activity names. 
allData$Activity <- factor(allData$Activity, levels= activity[, 1], labels = activity[, 2])

## Clean up factor variable names to be more descriptive. 
dataColNames <- colnames(allData)

## Remove unnecessary special characters and expand abbreviations. 
dataColNames <- gsub("[\\( \\) -]", "", dataColNames)
dataColNames <- gsub("^f", "frequencyDomain", dataColNames)
dataColNames <- gsub("^t", "timeDomain", dataColNames)
dataColNames <- gsub("Acc", "Acceleration", dataColNames)
dataColNames <- gsub("mean", "Mean", dataColNames)
dataColNames <- gsub("std", "StandardDeviation", dataColNames)
dataColNames <- gsub("Gyro", "Gyroscope", dataColNames)
dataColNames <- gsub("Mag", "Magnitude", dataColNames)
dataColNames <- gsub("Freq", "Frequency", dataColNames)

## Fix a double-word error:
dataColNames <- gsub("BodyBody", "Body", dataColNames)

## Use clean labels on dataframe.
colnames(allData) <- dataColNames

## Group by subject and activity, then summarize by taking the mean. 
newData <- allData %>% 
  group_by(Subject, Activity) %>%
  summarize_all(mean)

## Create a new dataset with the tidy data. 
write.table(newData, "tidy_data.txt", quote=FALSE, row.names = FALSE)
