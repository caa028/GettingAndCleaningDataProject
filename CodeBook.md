# Tidy Data Set Code Book
The tidy data set in [tidyDataSet.csv](tidyDataSet.csv) file has been generated to satisfy the requirements of the final project in the "Getting and Cleaning Data" class.

## Raw Data
### Source
The original "raw" data has been downloaded from [UCI HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) location specified by the project assignment.

### Overview
The "raw" data set represents the results of the "Human Activity Recognition Using Smartphones" project performed by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio and Luca Oneto. Additional details about this research activity may be found in the README.txt file contained in the data set zip archive.

### Observations
For the purpose of this project the important characteristics of the raw data set are:
- data has been collected from 30 volunteers (later identified as "subjects") performing six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).
- there were two complementary data sets ("train" and "test"). The first data set was used to train the AI algoritm on collected data, the second to detect the type of activity performed by the volunteer.
- there were over 500 variables collected and computed from the sensors of a fancy smartphone.
- the variable names were stored separately from the collected data. The names of these variables did not satisfy the "tidy" recommendations of the class. There were errors (intentional???) in some variable names (e.g. "Body" term was repeated)
- the activity names were stored separately from the collected data
- the volunteer subject IDs were stored separatelt from the collected data

## Data Set Transformations
To satisfy the requirements of the class project, the following transformations have been performed on the "raw" data set:
1. The training and test data sets have been merged (explicit requirement of step #1 in the project assignment) into a single data frame.
2. Descriptive names of the individual variables have been applied to the columns of the data frame (explicit requirement of step #4 in the project assignment)
3. A sub-set of data has been selected to satisfy the explicit requirement of step #2 in the project assignment - only the variables whose names contained either "mean()" or "std()" have been retained.
4. Extra columns identifying the subject (1-30) and detected activity (one of 6) have been added to the data frame.
5. Descriptive activity names have been applied by replacing the value of activiy ID with the value of activity name (explicit requirement of step #3 in the project assignment)
6. A clean-up and tidying of variable names has been performed - time domain and frequency domain have been clearly identified, unnecessary characters have been removed, mean and std terms have been expanded, error in the name has been fixed by removing duplicate text, terms in the variable name have been re-arranged
7. Data transformation explicitly reqested by step #5 in the project assignment has been performed - the clean and tidy data frame (result of the previous step) has been grouped by detected activity and then by subject ID; individual variables have been averaged per these groups. The data has been organized in "tidy" format (one variable per column, one observation per row). The column names have been updated to reflect the new ("averaged") nature of the variables.
8. The resulting tidy data set has been saved in the CSV file named [tidyDataSet.csv](tidyDataSet.csv)

## Tidy Data Set Variables
| Variable name                                           | Description |
| ---                                                     | --- |
|"DetectedActivity"                                       | Verbose name of the detected activity [WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING]|
|"SubjectId"                                              | Volunteer subject ID (1..30) |
|"AveragedTimeDomainBodyAccXMean"                         | Average of the original variable "tBodyAcc-mean()-X"          |
|"AveragedTimeDomainBodyAccYMean"                         | Average of the original variable "tBodyAcc-mean()-Y"          |
|"AveragedTimeDomainBodyAccZMean"                         | Average of the original variable "tBodyAcc-mean()-Z"          |
|"AveragedTimeDomainBodyAccXStandardDeviation"            | Average of the original variable "tBodyAcc-std()-X"           |
|"AveragedTimeDomainBodyAccYStandardDeviation"            | Average of the original variable "tBodyAcc-std()-Y"           |
|"AveragedTimeDomainBodyAccZStandardDeviation"            | Average of the original variable "tBodyAcc-std()-Z"           |
|"AveragedTimeDomainGravityAccXMean"                      | Average of the original variable "tGravityAcc-mean()-X"       |
|"AveragedTimeDomainGravityAccYMean"                      | Average of the original variable "tGravityAcc-mean()-Y"       |
|"AveragedTimeDomainGravityAccZMean"                      | Average of the original variable "tGravityAcc-mean()-Z"       |
|"AveragedTimeDomainGravityAccXStandardDeviation"         | Average of the original variable "tGravityAcc-std()-X"        |
|"AveragedTimeDomainGravityAccYStandardDeviation"         | Average of the original variable "tGravityAcc-std()-Y"        |
|"AveragedTimeDomainGravityAccZStandardDeviation"         | Average of the original variable "tGravityAcc-std()-Z"        |
|"AveragedTimeDomainBodyAccJerkXMean"                     | Average of the original variable "tBodyAccJerk-mean()-X"      |
|"AveragedTimeDomainBodyAccJerkYMean"                     | Average of the original variable "tBodyAccJerk-mean()-Y"      |
|"AveragedTimeDomainBodyAccJerkZMean"                     | Average of the original variable "tBodyAccJerk-mean()-Z"      |
|"AveragedTimeDomainBodyAccJerkXStandardDeviation"        | Average of the original variable "tBodyAccJerk-std()-X"       |
|"AveragedTimeDomainBodyAccJerkYStandardDeviation"        | Average of the original variable "tBodyAccJerk-std()-Y"       |
|"AveragedTimeDomainBodyAccJerkZStandardDeviation"        | Average of the original variable "tBodyAccJerk-std()-Z"       |
|"AveragedTimeDomainBodyGyroXMean"                        | Average of the original variable "tBodyGyro-mean()-X"         |
|"AveragedTimeDomainBodyGyroYMean"                        | Average of the original variable "tBodyGyro-mean()-Y"         |
|"AveragedTimeDomainBodyGyroZMean"                        | Average of the original variable "tBodyGyro-mean()-Z"         |
|"AveragedTimeDomainBodyGyroXStandardDeviation"           | Average of the original variable "tBodyGyro-std()-X"          |
|"AveragedTimeDomainBodyGyroYStandardDeviation"           | Average of the original variable "tBodyGyro-std()-Y"          |
|"AveragedTimeDomainBodyGyroZStandardDeviation"           | Average of the original variable "tBodyGyro-std()-Z"          |
|"AveragedTimeDomainBodyGyroJerkXMean"                    | Average of the original variable "tBodyGyroJerk-mean()-X"     |
|"AveragedTimeDomainBodyGyroJerkYMean"                    | Average of the original variable "tBodyGyroJerk-mean()-Y"     |
|"AveragedTimeDomainBodyGyroJerkZMean"                    | Average of the original variable "tBodyGyroJerk-mean()-Z"     |
|"AveragedTimeDomainBodyGyroJerkXStandardDeviation"       | Average of the original variable "tBodyGyroJerk-std()-X"      |
|"AveragedTimeDomainBodyGyroJerkYStandardDeviation"       | Average of the original variable "tBodyGyroJerk-std()-Y"      |
|"AveragedTimeDomainBodyGyroJerkZStandardDeviation"       | Average of the original variable "tBodyGyroJerk-std()-Z"      |
|"AveragedTimeDomainBodyAccMagMean"                       | Average of the original variable "tBodyAccMag-mean()"         |
|"AveragedTimeDomainBodyAccMagStandardDeviation"          | Average of the original variable "tBodyAccMag-std()"          |
|"AveragedTimeDomainGravityAccMagMean"                    | Average of the original variable "tGravityAccMag-mean()"      |
|"AveragedTimeDomainGravityAccMagStandardDeviation"       | Average of the original variable "tGravityAccMag-std()"       |
|"AveragedTimeDomainBodyAccJerkMagMean"                   | Average of the original variable "tBodyAccJerkMag-mean()"     |
|"AveragedTimeDomainBodyAccJerkMagStandardDeviation"      | Average of the original variable "tBodyAccJerkMag-std()"      |
|"AveragedTimeDomainBodyGyroMagMean"                      | Average of the original variable "tBodyGyroMag-mean()"        |
|"AveragedTimeDomainBodyGyroMagStandardDeviation"         | Average of the original variable "tBodyGyroMag-std()"         |
|"AveragedTimeDomainBodyGyroJerkMagMean"                  | Average of the original variable "tBodyGyroJerkMag-mean()"    |
|"AveragedTimeDomainBodyGyroJerkMagStandardDeviation"     | Average of the original variable "tBodyGyroJerkMag-std()"     |
|"AveragedFrequencyDomainBodyAccXMean"                    | Average of the original variable "fBodyAcc-mean()-X"          |
|"AveragedFrequencyDomainBodyAccYMean"                    | Average of the original variable "fBodyAcc-mean()-Y"          |
|"AveragedFrequencyDomainBodyAccZMean"                    | Average of the original variable "fBodyAcc-mean()-Z"          |
|"AveragedFrequencyDomainBodyAccXStandardDeviation"       | Average of the original variable "fBodyAcc-std()-X"           |
|"AveragedFrequencyDomainBodyAccYStandardDeviation"       | Average of the original variable "fBodyAcc-std()-Y"           |
|"AveragedFrequencyDomainBodyAccZStandardDeviation"       | Average of the original variable "fBodyAcc-std()-Z"           |
|"AveragedFrequencyDomainBodyAccJerkXMean"                | Average of the original variable "fBodyAccJerk-mean()-X"      |
|"AveragedFrequencyDomainBodyAccJerkYMean"                | Average of the original variable "fBodyAccJerk-mean()-Y"      |
|"AveragedFrequencyDomainBodyAccJerkZMean"                | Average of the original variable "fBodyAccJerk-mean()-Z"      |
|"AveragedFrequencyDomainBodyAccJerkXStandardDeviation"   | Average of the original variable "fBodyAccJerk-std()-X"       |
|"AveragedFrequencyDomainBodyAccJerkYStandardDeviation"   | Average of the original variable "fBodyAccJerk-std()-Y"       |
|"AveragedFrequencyDomainBodyAccJerkZStandardDeviation"   | Average of the original variable "fBodyAccJerk-std()-Z"       |
|"AveragedFrequencyDomainBodyGyroXMean"                   | Average of the original variable "fBodyGyro-mean()-X"         |
|"AveragedFrequencyDomainBodyGyroYMean"                   | Average of the original variable "fBodyGyro-mean()-Y"         |
|"AveragedFrequencyDomainBodyGyroZMean"                   | Average of the original variable "fBodyGyro-mean()-Z"         |
|"AveragedFrequencyDomainBodyGyroXStandardDeviation"      | Average of the original variable "fBodyGyro-std()-X"          |
|"AveragedFrequencyDomainBodyGyroYStandardDeviation"      | Average of the original variable "fBodyGyro-std()-Y"          |
|"AveragedFrequencyDomainBodyGyroZStandardDeviation"      | Average of the original variable "fBodyGyro-std()-Z"          |
|"AveragedFrequencyDomainBodyAccMagMean"                  | Average of the original variable "fBodyAccMag-mean()"         |
|"AveragedFrequencyDomainBodyAccMagStandardDeviation"     | Average of the original variable "fBodyAccMag-std()"          |
|"AveragedFrequencyDomainBodyAccJerkMagMean"              | Average of the original variable "fBodyBodyAccJerkMag-mean()" |
|"AveragedFrequencyDomainBodyAccJerkMagStandardDeviation" | Average of the original variable "fBodyBodyAccJerkMag-std()"  |
|"AveragedFrequencyDomainBodyGyroMagMean"                 | Average of the original variable "fBodyBodyGyroMag-mean()"    |
|"AveragedFrequencyDomainBodyGyroMagStandardDeviation"    | Average of the original variable "fBodyBodyGyroMag-std()"     |
|"AveragedFrequencyDomainBodyGyroJerkMagMean"             | Average of the original variable "fBodyBodyGyroJerkMag-mean()"|
|"AveragedFrequencyDomainBodyGyroJerkMagStandardDeviation"| Average the original variable of "fBodyBodyGyroJerkMag-std()  |

The units of the original variables have not been changed.

## Additional information about the original variables ("features") in the data set

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
