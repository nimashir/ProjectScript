The data are collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

30 participants are subjected to 6 types of activities: walking, walking upstairs, walking downstairs, sitting, standing, laying. Originally, there were 7352 records of train data and 2947 records of test data. For each records, its subject and activity are reported in seperated files. The train and test data along with their corresponding subject and activities are merged together. For each record, there were 561 descriptive variables. However, we are only interested to average and standard deviation of each measeurement. This reduce the total descriptive variables to 72 variables. We take averages of the variables for each subject and activity. This reduces the total number of records from 10299 to 180 data records. 


The measurements are as follows: 

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

Note that '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

There are two variable associated with each measurement: mean() and std()

For exmaple: tBodyAcc-mean()-X labels the column corresponding to the average of tBodyAcc in the x direction.
             fBodyGyroJerkMag-std()-y labels the column corresponding to the standard deviation of fBodyGyroJerkMag in the y direction.
