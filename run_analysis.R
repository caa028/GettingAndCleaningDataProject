# library(dplyr)
# library(data.table)

# read the descriptive names of the variables in the data set
features <- read.table("UCI HAR Dataset/features.txt")

# read the descriptive names of the activities in the data set
activities <- read.table("UCI HAR Dataset/activity_labels.txt")


# read the test data set (values of the variables)
xtest <- read.table("UCI HAR Dataset/test/X_test.txt")
# read the test data set (detected activities)
ytest <- read.table("UCI HAR Dataset/test/y_test.txt")
# read the test data set (subjects)
subjecttest <- read.table("UCI HAR Dataset/test/subject_test.txt")

# read the train data set (values of the variables)
xtrain <- read.table("UCI HAR Dataset/train/X_train.txt")
# read the train data set (detected activities)
ytrain <- read.table("UCI HAR Dataset/train/y_train.txt")
# read the train data set (subjects)
subjecttrain <- read.table("UCI HAR Dataset/train/subject_train.txt")

# merging the training and test data set to create one data set
# (assignment step 1)
x <- rbind(xtrain, xtest)
y <- rbind(ytrain, ytest)
subject <- rbind(subjecttrain, subjecttest)

# apply descriptive column name
colnames(y) <- "DetectedActivity"

# apply descriptive column name
colnames(subject) <- "SubjectId"

# replace activity ID with its verbose name in detected activities data frame
# (assignment step 3)
verboseActivities <- sapply(y, function(foo) {activities[foo,2]})
# verb <- as.data.frame(verboseActivities)

# update data set with verbose column names
colnames(x) <- features$V2

# obtaining the list of features (variable names) matching the step 2 of the 
# assignment:
# - only the measurements on the mean and standard deviation for each measurement
grep("(-mean|-std)[[:punct:]]", ignore.case = TRUE, features$V2, value = TRUE)

# create a new data frame with columns representing only mean and standard deviation
# (assignemtn step 2)
x1 <- x[,c(grep("(-mean|-std)[[:punct:]]", ignore.case = TRUE, features$V2))]

# create new data frame satisfying the requirements from
# steps 1, 2, 3, 4 of the assignment
answer <- cbind(x1, subject, as.data.frame(verboseActivities))
answer1 <- group_by(answer, DetectedActivity)
answer2 <- group_by(answer1, SubjectId, .add = TRUE)

