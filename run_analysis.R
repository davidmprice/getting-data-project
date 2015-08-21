# This is the run_analysis.R file for the course project for the Coursera
# Getting and Cleaning Data course.
# David Price
# August 21, 2015

# Set working directory on my home machine
#setwd("~/Dropbox/Stats/Getting data course/project/UCI HAR Dataset")

## Step 1: Read in the data and bind into one data frame.
xtest<-read.table("test/X_test.txt",stringsAsFactors=F)
xtrain<-read.table("train/X_train.txt",stringsAsFactors=F)
ytest<-read.table("test/y_test.txt",stringsAsFactors=F)
ytrain<-read.table("train/y_train.txt",stringsAsFactors=F)
subject_train<-read.table("train/subject_train.txt",stringsAsFactors=F)
subject_test<-read.table("test/subject_test.txt",stringsAsFactors=F)

all_data<-rbind(xtrain,xtest)

# Read in the features.txt file and use it as labels for our data frame
features<-read.table("features.txt",stringsAsFactors=F)
names(all_data)<-features$V2

## Step 2
# Select only the means and standard deviations
all_data_mean_std_only<-all_data[
    ,c(grep("mean()",names(all_data),fixed=T)
    ,grep("std()",names(all_data),fixed=T))]

# Add in the activity and subject labels, along with their variable names
activities<-rbind(ytrain,ytest)
subjects<-rbind(subject_train,subject_test)
all_data_mean_std_only<-cbind(subjects,activities,all_data_mean_std_only)
names(all_data_mean_std_only)[1]<-"Subject"
names(all_data_mean_std_only)[2]<-"Activity"

## Step 3
#Take the activity types and replace the integer codes with actual descriptions
activity_types<-c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")
all_data_mean_std_only$activity<-activity_types[all_data_mean_std_only$activity]

## Step 4
# Remove parentheses and replace abbreviations with full words to make variables
# more readable
library(stringr)
old_names<-names(all_data_mean_std_only)
new_names<-str_replace_all(old_names,"[()]","")
new_names<-str_replace_all(new_names,"Acc","Accelerometer")
new_names<-str_replace_all(new_names,"Gyro","Gyroscope")
new_names<-str_replace_all(new_names,"Mag","Magnitude")
names(all_data_mean_std_only)<-new_names

## Step 5
# Use melt and dcast to create a new tidy data set which shows the average 
# of each variable for each subject-activity combination. Write to a text file.
library(reshape2)
melted_data<-melt(all_data_mean_std_only,id=c("Subject","Activity"))
recast_data<-dcast(melted_data,Subject+Activity~variable,mean)
write.table(recast_data,"tidy_data.txt",row.names=FALSE)

## Codebook generation
# Further process the variable names, using gsub to generate complete sentence
# descriptions of each variable based on variable names.
descrip<- new_names
explanation <- descrip
explanation <-gsub("BodyBody","Body",explanation)
explanation <- gsub("tBody","Time domain body component, ",explanation,fixed=T)
explanation <- gsub("tGravity", "Time domain gravity component, ", explanation,fixed=T)
explanation <- gsub("fBody", "Frequency domain body component, ", explanation, fixed=T)
explanation <- gsub("AccelerometerJerk", "linear jerk signal ", explanation)
explanation <- gsub("Accelerometer", "linear acceleration signal ", explanation)
explanation <- gsub("GyroscopeJerk", "angular jerk signal ", explanation)
explanation <- gsub("Gyroscope", "angular velocity signal ", explanation)
explanation <- gsub("Magnitude-mean", "magnitude mean.", explanation)
explanation <- gsub("-mean-X","mean in the X direction.",explanation, fixed=T)
explanation <- gsub("-mean-Y","mean in the Y direction.",explanation, fixed=T)
explanation <- gsub("-mean-Z","mean in the Z direction.",explanation, fixed=T)
explanation <- gsub("Magnitude-std", "magnitude standard deviation.", explanation)
explanation <- gsub("-std-X","standard deviation in the X direction.",explanation, fixed=T)
explanation <- gsub("-std-Y","standard deviation in the Y direction.",explanation, fixed=T)
explanation <- gsub("-std-Z","standard deviation in the Z direction.",explanation, fixed=T)
codebook <- paste("* ",descrip,"\n",explanation,"\n")
write.table(codebook, "codebook_basis.md", quote = FALSE, row.names = FALSE, col.names = FALSE)
