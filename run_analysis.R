# Part 1: Merges the training and the test sets to create one data set

library(reshape2)

### download data

URL<- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dest<-"UC_HAR_Dataset.zip"
download.file(URL, dest)
unzip(dest)


### merge training and the test data

"read training data"
x.train <- read.table("UCI HAR Dataset/train/X_train.txt")
y.train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject.train <- read.table("UCI HAR Dataset/train/subject_train.txt")
    
"read testing data"
x.test <- read.table("UCI HAR Dataset/test/X_test.txt")
y.test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject.test <- read.table("UCI HAR Dataset/test/subject_test.txt")
    
# label columns
names(subject.train) <- "subjectID"
names(subject.test) <- "subjectID"

"read features data"
features <- read.table("UCI HAR Dataset/features.txt")
names(x.train) <- features$V2
names(x.test) <- features$V2
    
names(y.train) <- "activity"
names(y.test) <- "activity"
    
# merge testing and training data
train <- cbind(subject.train,y.train, x.train)
test <- cbind(subject.test, y.test, x.test)
merged <- rbind(train, test)


# Part 2: Extracts only the measurements on the mean and standard deviation for each measurement
    
"extract mean and standard deviation from the features"
mean.std.features <- grepl("mean\\(\\)", names(merged)) | grepl("std\\(\\)", names(merged))
    
"keep the activity and subject ID columns"
mean.std.features[1:2] <- TRUE
    
"remove columns that are not necessary"
merged <- merged[, mean.std.features]

# Part 3: Use descriptive activity names to name the activities in the data set
# Part 4: Appropriately labels the data set with descriptive variable names
merged$activity <- factor(merged$activity, labels = c("Walking", "Walking Upstairs",
                          "Walking Downstairs", "Sitting", "Standing", "Laying"))
# Part 5: From the data set in step 4, creates a second, independent tidy data set with the 
#         average of each variable for each activity and each subject

"create tidy data set"
mset <- melt(merged, id=c("subjectID", "activity"))
tidydata <- dcast(mset, subjectID+activity ~ variable, mean)

# write to file
write.csv(tidydata, "tidydata.txt", row.names = FALSE)