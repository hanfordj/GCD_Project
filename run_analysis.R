# --------------------------------------------------------- #
# Getting and Cleaning Data: 
# --------------------------------------------------------- #
### Memory-eating option: trainData = read.fwf( trainFile, rep.int(16, 561), header=F, n=1000)

library(data.table)
library(dplyr)

setwd("C:/data/source/r/coursera/gcd_proj")

# Download files if they haven't already been downloaded:
if( !file.exists("data_to_cleanse.zip") )
{
  print("Downloading files ...")
  download.file(
    "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
    "data_to_cleanse.zip",
    "auto"
  )
  unzip("data_to_cleanse.zip")
} else {
  print("Using pre-downloaded files ...")
}

# Read training data:
cDir <- "UCI HAR Dataset/train"
trainSubjectFile <- paste(cDir, "subject_train.txt", sep="/")
trainFile <- paste(cDir, "X_train.txt", sep="/")
trainClassFile <- paste(cDir, "y_train.txt", sep="/")

trainSubjectData <- read.table( trainSubjectFile, header=F, col.names=c("subject") )
tsDim <- dim(trainSubjectData)
print(paste("Dimensions of training subject data:", tsDim[1], "x", tsDim[2]))

trainData <- read.table( trainFile, header=F )
tdDim <- dim(trainData)
print(paste("Dimensions of training data:", tdDim[1], "x", tdDim[2]))

trainClassData <- read.table( trainClassFile, header=F, col.names=c("label") )
tcdDim <- dim(trainClassData)
print(paste("Dimensions of training class data:", tcdDim[1], "x", tcdDim[2]))

# Read test data:
cDir <- "UCI HAR Dataset/test"
testSubjectFile <- paste(cDir, "subject_test.txt", sep="/")
testFile <- paste(cDir, "X_test.txt", sep="/")
testClassFile <- paste(cDir, "y_test.txt", sep="/")

testSubjectData <- read.table( testSubjectFile, header=F, col.names=c("subject") )
ttsDim <- dim(testSubjectData)
print(paste("Dimensions of test subject data:", ttsDim[1], "x", ttsDim[2]))

testData <- read.table( testFile, header=F )
ttdDim <- dim(testData)
print(paste("Dimensions of test data:", ttdDim[1], "x", ttdDim[2]))

testClassData <- read.table( testClassFile, header=F, col.names=c("label"))
ttcdDim <- dim(testClassData)
print(paste("Dimensions of test class data:", ttcdDim[1], "x", ttcdDim[2]))

# Read feature metadata:
cDir <- "UCI HAR Dataset"
featureFile <- paste(cDir, "features.txt", sep="/")
featureData <- read.table( featureFile, header=F, col.names=c("id", "col"))

# Capture those fields related to mean / standard deviation (#2):
mean_std_features <- featureData[grep("mean|std", featureData$col),]

# Cleanse variable names (#4):
mean_std_features$col <- gsub("-","_", mean_std_features$col) # Convert dash to underscore
mean_std_features$col <- gsub("\\(\\)","", mean_std_features$col) # Remove parenthesis

# Extract only data on mean / standard deviation from datasets (subsetting - #2):
trainData <- trainData[,mean_std_features$id]
tDim <- dim(trainData)
print(paste("New dimensions of train data:", tDim[1], "x", tDim[2]))

testData <- testData[,mean_std_features$id]
ttdDim <- dim(testData)
print(paste("New dimensions of test data:", ttdDim[1], "x", ttdDim[2]))

# Rename columns to sensible names:
colnames(trainData) <- mean_std_features$col
colnames(testData) <- mean_std_features$col

# Read activity label metadata:
cDir <- "UCI HAR Dataset"
actFile <- paste(cDir, "activity_labels.txt", sep="/")
actData <- read.table( actFile, header=F, col.names=c("id", "label"), stringsAsFactors=F)

labs <- actData[order(actData$id),]$label

# Re-label activity classes(#3):
trainClassData$activity <- factor(trainClassData$label, labels=labs)
testClassData$activity <- factor(testClassData$label, labels=labs)

# Merge the training, test and activity datasets (#1):
fullDS <- rbind( cbind(trainSubjectData, activity = trainClassData$activity, trainData), cbind(testSubjectData, activity = testClassData$activity, testData) )
dsDim <- dim(fullDS)
print(paste("Dimensions of merged dataset:", dsDim[1], "x", dsDim[2]))

# Summarise dataset (#5):
tidyDS <- fullDS %>% group_by(subject,activity) %>% summarise_each(funs(mean))
tdsDim <- dim(tidyDS)
colnames(tidyDS)[3:81] <- paste("avg", colnames(tidyDS)[3:81], sep="_")
print(paste("Dimensions of summarized dataset:", tdsDim[1], "x", tdsDim[2]))

# Write dataset out to file:
write.table(tidyDS, "sumarized_tidy_dataset.txt",row.name=FALSE)






