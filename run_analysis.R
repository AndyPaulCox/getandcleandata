#clear the workspace
rm(list = ls())
library(plyr)
setwd("/Users/AndyC/Dropbox/rdata/cousera/get_clean_data/project/UCI\ HAR\ Dataset/")
#List paths for reading in the individual data files for test
pth1<-"test/X_test.csv"
pth2<-"test/y_test.txt"
pth3<-"test/subject_test.txt"
#Read in the test files
x_test<-read.delim(pth1,sep=",",header=F)
y_test<-read.delim(pth2,sep="\t",header=F)
sub_test<-read.delim(pth3,sep="\t",header=F)

#List paths for reading in the individual data files for train
pth4<-"train/X_train.csv"
pth5<-"train/y_train.txt"
pth6<-"train/subject_train.txt"
#read in the train files
x_train<-read.delim(pth4,sep=",",header=F)
y_train<-read.delim(pth5,sep="\t",header=F)
sub_train<-read.delim(pth6,sep="\t",header=F)


#1. Merges the training and the test sets to create one data set.
#join the respective files from the training and test datasets
x_all<-rbind(x_train,x_test)
y_all<-rbind(y_train,y_test)
sub_all<-rbind(sub_train,sub_test)
#now merge the files by columns
all<-cbind(sub_all, y_all,x_all)
#read in the variable names
dat_nms<-as.character(read.delim("features.txt",sep="\t",header=F)[,1])
#change the column names
colnames(all)<-c('subjectID','activity' , dat_nms)

#2. Extracts only the measurements on the mean and standard deviation for each measurement. 
#select the columns that are mean or std dev measurements)
selmean<-grep("mean()",colnames(all),value=F)
selstd<-grep("std()",colnames(all),value=F)
sel<-c(1,2,sort(c(selmean,selstd)))
allred<-all[,sel]

#3. Uses descriptive activity names to name the activities in the data set
#Create soem descriptive activity names
act_labels<-as.character(read.delim("activity_labels.txt",sep="\t",header=F)[,1])
#Tidy up activity coding file so that forst column is number code and second is the activity name
act_ref<-do.call(rbind.data.frame, strsplit(act_labels," "))
colnames(act_ref)<-c("code","activity")
#convert activity to appropriately descriptive names
allred$activity<-revalue(as.character(allred$activity),c("1"="WALKING","2"="WALKING_UPSTAIRS","3"="WALKING_DOWNSTAIRS","4"="SITTING","5"="STANDING","6"="LAYING"))

#4. Appropriately labels the data set with descriptive variable names. 
#Remove the number part and space in the vriable names
clnms<-colnames(allred)
colnames(allred)<-as.character(do.call(rbind.data.frame, strsplit(clnms," "))[,2])

#save the cleaned up dataframe
outpath<-"alldat/all_data1.csv"
write.table(allred, file = outpath, sep = ",", col.names = NA, na="NA", qmethod = "double")

#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable
#for each activity and each subject.
aggdat1<-aggregate(cbind(allred[,3:ncol(allred)]),by=list(subjectID=allred$subjectID,activity=allred$activity),data=allred,FUN=mean)
#save the cleaned up aggreagte  dataframe
outpath<-"alldat/agg_data1.csv"
write.table(aggdat1, file = outpath, sep = ",", col.names = NA, na="NA", qmethod = "double")





