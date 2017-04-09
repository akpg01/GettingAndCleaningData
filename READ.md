# Getting and Cleaning Data

The script, ```run_analysis.R``` prepares tidy data that can be used for later analysis.

## run_analysis.R

source ```"run_analysis.R``` will automatically execute the full script in the following order.
* Downloads and reads the training and test sets
* Merges the training and the test sets to create one data set
* Extracts only the measurements on the mean and standard deviation for each measurement
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data with descriptive activity names
* Creates a second, independent tidy data set with the average of each variable for each activity and subject

### Dependencies
```run_analysis.R ``` is dependent on two packages: ```data.table``` and ```reshape2```. This automatically 
installs both packages, if it is not already installed.

### Steps required to execute this project

1. Create a parent folder for this project.
2. Place ```run_analysis.R```in the parent folder.
3. Run source("run_analysis.R"). This will generate a new file tidydata.txt.
