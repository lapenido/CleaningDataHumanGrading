## Introduction

This assignment uses data from
the <a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones">
UC Irvine Machine Learning Repository</a>, a popular repository for machine learning
datasets. In particular, we will be using the 
"Human Activity Recognition Using Smartphones Data Set" 
which I have made available onthe course web site:

* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip">
Human Activity Recognition Using Smartphones</a> [56.9Mb]

* <b>Description</b>: Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms 
to attract new users. The data linked to from the course website represent data collected from the accelerometers 
from the Samsung Galaxy S smartphone

The Run_analisys.R script will create a database with the averages of some variables found in the original files
, so this will the following steps:
<ol>
	<li> Set work dir to "./UCI HAR Dataset" </li>
	<li> 1. Merges the training and the test sets to create one data set.
	<ol> 
		<li>Read data files "./train/X_train.txt" and "./test/X_test.txt"</li>
		<li>Append Train+Test data frame</li>
	</ol>
	<ol>
		<li> Read data files "./train/y_train.txt" and "./test/y_test.txt"</li>
		<li>Append Train+Test data frame</li>
	</ol>
	<ol>
		<li>Read Subject files "./train/subject_train.txt" and "./test/subject_test.txt"</li>  
		<li>Append Subject Train+Test data frame</li>
	</ol>
  
	<li> 2. Extracts only the measurements on the mean and standard deviation for each measurement.
	<ol>
		<li> Read features file "./features.txt"</li> 
		<li> Find only measurements on the mean and standard deviation lines
		      find "-mean()" or "-std()" string and select lines.  
              for this use function grep()
		</li>
	</ol>
	</li>
	<li> 3. Uses descriptive activity names to name the activities in the data set </li>
	<ol>
		<li> Read file "./activity_labels.txt" </li>
		<li> Apply labels to variables   </li>
	</ol>
    <li>  4. Appropriately labels the data set with descriptive variable names. </li>
	<ol>
		<li>Names of variables have    : t --> Time ;  Acc --> Accelerometer ; Gyro --> Gyroscope , f --> Frequency</li>
		<li>EX:</li>
		<li>tBodyAcc-mean()-X  --> TimeBodyAccelerometerMeanX </li>
		<li>fBodyAcc-std()-Y   --> FrequencyBodyAccelerometerStdY</li>
	</ol>
	
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
</ol> 


