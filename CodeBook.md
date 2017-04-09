# Code Book

Describes the variables, the data and the transformations or work that was performed to clean up the data.

## Original Data Source
* Description of data set: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
* Data used in this project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Data Set Information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

### The Data

#### Test data files
``` 
X_test.txt: data

y_test.txt: labels

subject_test.txt: 
```
#### Training data files
```
X_train.txt: data

y_train.txt: labels

subject_test.txt: Each row identifies the subject who performed the activity for each window sample. 
                  Its range is from 1 to 30.
```
#### Features files
```
features.txt: list of all features

features_info.txt: provides information about the variables used in the features vector
```
#### Additional files
```
README.txt

activity_labels.txt: links the class labels with activity names

total_acc_x_train.txt: The acceleration signal from the smartphone accelerometer X axis in standard gravity 
                       units 'g'. Every row shows a  128 element vector. The same description applies for the 
                      'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis.
                       
body_acc_x_train.txt: The body acceleration signal obtained by subtracting the gravity from the total
                      acceleration.

body_gyro_x_train.txt: The angular velocity vector measured by the gyroscope for each window sample. 
                       The units are radians/second.

```
## Transformation

Transfomation occurs in the following five steps. 

1) Merges the training and the test sets to create one data set.
2) Extracts only the measurements on the mean and standard deviation for each measurement.
3) Uses descriptive activity names to name the activities in the data set
4) Appropriately labels the data set with descriptive variable names.
5) Create a second, independent tidy data set with the average of each variable for each activity and each subject.

