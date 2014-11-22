# Set work dir

setwd("./UCI HAR Dataset")

## 1. Merges the training and the test sets to create one data set.

# Read Data-x Train
  DataXTrain <- read.table("./train/X_train.txt", header = FALSE)
  
# Read Data-x Test
  DataXTest <- read.table("./test/X_test.txt", header = FALSE)
  
# Append Data-x Train+Test
  DataX <- rbind(DataXTrain,DataXTest)

# Read Data-y Train
  DataYTrain <- read.table("./train/y_train.txt", header = FALSE)
  
# Read Data-y Test
  DataYTest <- read.table("./test/y_test.txt", header = FALSE)
  
# Append Data-y Train+Test
  DataY <- rbind(DataYTrain,DataYTest)

# Read Subject Train
  SubjectTrain <- read.table("./train/subject_train.txt", header = FALSE)
  
# Read Subject Test
  SubjectTest <- read.table("./test/subject_test.txt", header = FALSE)
  
# Append Subject Train+Test
  Subject <- rbind(SubjectTrain,SubjectTest)
  names(Subject) <- "Subject" 
  
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.

# Read features file
  Features <- read.table("./features.txt")  

# Find only measurements on the mean and standard deviation lines
# find "-mean()" or "-std()" string and select lines.  
  IndexFeaturesMeanStandardDeviation <- grep("-mean\\(\\)|-std\\(\\)", Features[,2])

# Get only measurements on the mean and standard deviation colums  
  DataX     <- DataX     [ ,IndexFeaturesMeanStandardDeviation] 

# Get only measurements labels on the mean and standard deviation lines  
  Features  <- Features  [IndexFeaturesMeanStandardDeviation, ] 


## 3. Uses descriptive activity names to name the activities in the data set
# Read activity_labels file 
  ActivitiesLabels <- read.table("./activity_labels.txt")
  
# apply labels to variables   
  DataY[, 1] = ActivitiesLabels[DataY[, 1], 2]
  names(DataY) <- "Activities"
  

## 4. Appropriately labels the data set with descriptive variable names. 
# Names of variables have    : t --> Time ;  Acc --> Accelerometer ; Gyro --> Gyroscope , f --> Frequency
# EX:
# tBodyAcc-mean()-X  --> TimeBodyAccelerometerMeanX 
# fBodyAcc-std()-Y   --> FrequencyBodyAccelerometerStdY
 
  Features[,2] <- sub("tBody","TimeBody",Features[,2])
  Features[,2] <- sub("tGravity","TimeGravity",Features[,2])
  Features[,2] <- sub("fBody","FrequencyBody",Features[,2])
  Features[,2] <- sub("Acc","Accelerometer",Features[,2])
  Features[,2] <- sub("Gyro","Gyroscope",Features[,2])
  Features[,2] <- sub("mean","Mean",Features[,2])
  Features[,2] <- sub("std","Std",Features[,2])

# Names of variables not have: "-" ; " " ; "." ;"()"

  Features[,2] <- sub(" ","",Features[,2])
  Features[,2] <- sub("\\(","",Features[,2])
  Features[,2] <- sub("\\)","",Features[,2])
  Features[,2] <- gsub("\\-","",Features[,2])

# Apply names (Features) for all colums for DataX
  names(DataX) <- Features[,2]  

# Create Tidy Data 
  
  DataTidy <- cbind(Subject,DataY,DataX)
  
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
## use library (plyr)
## Split for activity and  subject   
 library (plyr)
 
 IndependentDataTidy <- ddply(DataTidy[,3:68] , .(DataTidy$Activities,DataTidy$Subject), colMeans)

 
## Save file in work dir with sep = ","

 write.table(IndependentDataTidy, "IndependentDataTidy.txt", sep="," ,row.name=FALSE)
  
 
# END 
 