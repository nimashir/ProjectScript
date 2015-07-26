
# Creation a directory, download the zip file and unzip it. All files will be unzipped into AllFiles object
if(!file.exists("./project")){dir.create("./project")}
url<- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
temp<- tempfile()
dest<- "./project/ProjData.zip"
download.file(url, destfile = dest)
AllFiles<-unzip(zipfile = dest);

# Appropriate files are imported to R 
x_train<- read.table(AllFiles[27],header = F);
y_train<- read.table(AllFiles[28],header = F);
subject_train <- read.table(AllFiles[26],header = F);
x_test<- read.table(AllFiles[15],header = F);
y_test<- read.table(AllFiles[16],header = F);
subject_test <- read.table(AllFiles[14],header = F);
features<- read.table(AllFiles[2],header = F);

# column numbers associated with the mean and standard deviation of measeurements are identifed and plugged into ids
ids<-c(1:6,41:46,81:86,121:126,161:166,201:202,214:215, 227:228, 240:241, 253:254, 266:271, 345:356, 424:429, 503:504, 516:517, 529:530, 542:543)

# Variable labels are extracted into labels
labels<-as.character(features[ids,2])

#variables of train and test data sets are merged
train_data<- x_train[,ids]
test_data<-x_test[,ids] 
grouped_data<- rbind(train_data,test_data)
colnames(grouped_data)<- labels

#activities of train and test datasets are merged

grouped_activity <- rbind(y_train, y_test)
activity_labels<- read.table(AllFiles[1], header = FALSE)

# activities are labled
for ( i in 1:6){
   grouped_activity$V1[grouped_activity$V1==i] <- as.character(activity_labels$V2[i])
}
colnames(grouped_activity)<-"Activity"
#subjects of train and test sata sets are merged
grouped_subject<- rbind(subject_train,subject_test)
colnames(grouped_subject)<-"Subject"

# Final data is created by merging subjects, activities, and variables but it is still untidy

FinalData<- cbind(grouped_subject,grouped_activity,grouped_data)

# tidy data set is obtained from FinalData

tidyData<- aggregate(FinalData, by = list(FinalData$Subject,FinalData$Activity), "mean")
tidyData$Activity<-NULL
tidyData$Subject<-NULL
colnames(tidyData)[1:2]<-c("Subject","Activity");

write.table(tidyData,file = "./project/tidyDataSet.txt", row.names = FALSE)

