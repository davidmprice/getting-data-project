## Codebook for Getting and Cleaning Data Course Project
### David Price
### August 21, 2015

The data for which this is a codebook comes from the "Human Activity Recognition Using Smartphones" Dataset (Reyes-Ortiz et al. available at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). 

Frome the README of the original data set: 

>The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

>The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

As stated above, for each time window, numerous features were computed from raw data, but this project
concerns itself only with the mean and standard deviation of certain measurements within each time window. For each subject and each activity the average of each average or standard deviation measurement is given in the data set submitted for this project. 

As stated in the README accompanying the original data, the value of all variables are normalized and bounded within [-1,1].

*  Subject (30 subjects in trial).

 Subject 

*  Activity (walking, walking upstairs, walking downstairs, sitting, standing, laying)

 Activity 

*  tBodyAccelerometer-mean-X 

 Time domain body component, linear acceleration signal mean in the X direction. 

*  tBodyAccelerometer-mean-Y 

 Time domain body component, linear acceleration signal mean in the Y direction. 

*  tBodyAccelerometer-mean-Z 

 Time domain body component, linear acceleration signal mean in the Z direction. 

*  tGravityAccelerometer-mean-X 

 Time domain gravity component, linear acceleration signal mean in the X direction. 

*  tGravityAccelerometer-mean-Y 

 Time domain gravity component, linear acceleration signal mean in the Y direction. 

*  tGravityAccelerometer-mean-Z 

 Time domain gravity component, linear acceleration signal mean in the Z direction. 

*  tBodyAccelerometerJerk-mean-X 

 Time domain body component, linear jerk signal mean in the X direction. 

*  tBodyAccelerometerJerk-mean-Y 

 Time domain body component, linear jerk signal mean in the Y direction. 

*  tBodyAccelerometerJerk-mean-Z 

 Time domain body component, linear jerk signal mean in the Z direction. 

*  tBodyGyroscope-mean-X 

 Time domain body component, angular velocity signal mean in the X direction. 

*  tBodyGyroscope-mean-Y 

 Time domain body component, angular velocity signal mean in the Y direction. 

*  tBodyGyroscope-mean-Z 

 Time domain body component, angular velocity signal mean in the Z direction. 

*  tBodyGyroscopeJerk-mean-X 

 Time domain body component, angular jerk signal mean in the X direction. 

*  tBodyGyroscopeJerk-mean-Y 

 Time domain body component, angular jerk signal mean in the Y direction. 

*  tBodyGyroscopeJerk-mean-Z 

 Time domain body component, angular jerk signal mean in the Z direction. 

*  tBodyAccelerometerMagnitude-mean 

 Time domain body component, linear acceleration signal magnitude mean. 

*  tGravityAccelerometerMagnitude-mean 

 Time domain gravity component, linear acceleration signal magnitude mean. 

*  tBodyAccelerometerJerkMagnitude-mean 

 Time domain body component, linear jerk signal magnitude mean. 

*  tBodyGyroscopeMagnitude-mean 

 Time domain body component, angular velocity signal magnitude mean. 

*  tBodyGyroscopeJerkMagnitude-mean 

 Time domain body component, angular jerk signal magnitude mean. 

*  fBodyAccelerometer-mean-X 

 Frequency domain body component, linear acceleration signal mean in the X direction. 

*  fBodyAccelerometer-mean-Y 

 Frequency domain body component, linear acceleration signal mean in the Y direction. 

*  fBodyAccelerometer-mean-Z 

 Frequency domain body component, linear acceleration signal mean in the Z direction. 

*  fBodyAccelerometerJerk-mean-X 

 Frequency domain body component, linear jerk signal mean in the X direction. 

*  fBodyAccelerometerJerk-mean-Y 

 Frequency domain body component, linear jerk signal mean in the Y direction. 

*  fBodyAccelerometerJerk-mean-Z 

 Frequency domain body component, linear jerk signal mean in the Z direction. 

*  fBodyGyroscope-mean-X 

 Frequency domain body component, angular velocity signal mean in the X direction. 

*  fBodyGyroscope-mean-Y 

 Frequency domain body component, angular velocity signal mean in the Y direction. 

*  fBodyGyroscope-mean-Z 

 Frequency domain body component, angular velocity signal mean in the Z direction. 

*  fBodyAccelerometerMagnitude-mean 

 Frequency domain body component, linear acceleration signal magnitude mean. 

*  fBodyBodyAccelerometerJerkMagnitude-mean 

 Frequency domain body component, linear jerk signal magnitude mean. 

*  fBodyBodyGyroscopeMagnitude-mean 

 Frequency domain body component, angular velocity signal magnitude mean. 

*  fBodyBodyGyroscopeJerkMagnitude-mean 

 Frequency domain body component, angular jerk signal magnitude mean. 

*  tBodyAccelerometer-std-X 

 Time domain body component, linear acceleration signal standard deviation in the X direction. 

*  tBodyAccelerometer-std-Y 

 Time domain body component, linear acceleration signal standard deviation in the Y direction. 

*  tBodyAccelerometer-std-Z 

 Time domain body component, linear acceleration signal standard deviation in the Z direction. 

*  tGravityAccelerometer-std-X 

 Time domain gravity component, linear acceleration signal standard deviation in the X direction. 

*  tGravityAccelerometer-std-Y 

 Time domain gravity component, linear acceleration signal standard deviation in the Y direction. 

*  tGravityAccelerometer-std-Z 

 Time domain gravity component, linear acceleration signal standard deviation in the Z direction. 

*  tBodyAccelerometerJerk-std-X 

 Time domain body component, linear jerk signal standard deviation in the X direction. 

*  tBodyAccelerometerJerk-std-Y 

 Time domain body component, linear jerk signal standard deviation in the Y direction. 

*  tBodyAccelerometerJerk-std-Z 

 Time domain body component, linear jerk signal standard deviation in the Z direction. 

*  tBodyGyroscope-std-X 

 Time domain body component, angular velocity signal standard deviation in the X direction. 

*  tBodyGyroscope-std-Y 

 Time domain body component, angular velocity signal standard deviation in the Y direction. 

*  tBodyGyroscope-std-Z 

 Time domain body component, angular velocity signal standard deviation in the Z direction. 

*  tBodyGyroscopeJerk-std-X 

 Time domain body component, angular jerk signal standard deviation in the X direction. 

*  tBodyGyroscopeJerk-std-Y 

 Time domain body component, angular jerk signal standard deviation in the Y direction. 

*  tBodyGyroscopeJerk-std-Z 

 Time domain body component, angular jerk signal standard deviation in the Z direction. 

*  tBodyAccelerometerMagnitude-std 

 Time domain body component, linear acceleration signal magnitude standard deviation. 

*  tGravityAccelerometerMagnitude-std 

 Time domain gravity component, linear acceleration signal magnitude standard deviation. 

*  tBodyAccelerometerJerkMagnitude-std 

 Time domain body component, linear jerk signal magnitude standard deviation. 

*  tBodyGyroscopeMagnitude-std 

 Time domain body component, angular velocity signal magnitude standard deviation. 

*  tBodyGyroscopeJerkMagnitude-std 

 Time domain body component, angular jerk signal magnitude standard deviation. 

*  fBodyAccelerometer-std-X 

 Frequency domain body component, linear acceleration signal standard deviation in the X direction. 

*  fBodyAccelerometer-std-Y 

 Frequency domain body component, linear acceleration signal standard deviation in the Y direction. 

*  fBodyAccelerometer-std-Z 

 Frequency domain body component, linear acceleration signal standard deviation in the Z direction. 

*  fBodyAccelerometerJerk-std-X 

 Frequency domain body component, linear jerk signal standard deviation in the X direction. 

*  fBodyAccelerometerJerk-std-Y 

 Frequency domain body component, linear jerk signal standard deviation in the Y direction. 

*  fBodyAccelerometerJerk-std-Z 

 Frequency domain body component, linear jerk signal standard deviation in the Z direction. 

*  fBodyGyroscope-std-X 

 Frequency domain body component, angular velocity signal standard deviation in the X direction. 

*  fBodyGyroscope-std-Y 

 Frequency domain body component, angular velocity signal standard deviation in the Y direction. 

*  fBodyGyroscope-std-Z 

 Frequency domain body component, angular velocity signal standard deviation in the Z direction. 

*  fBodyAccelerometerMagnitude-std 

 Frequency domain body component, linear acceleration signal magnitude standard deviation. 

*  fBodyBodyAccelerometerJerkMagnitude-std 

 Frequency domain body component, linear jerk signal magnitude standard deviation. 

*  fBodyBodyGyroscopeMagnitude-std 

 Frequency domain body component, angular velocity signal magnitude standard deviation. 

*  fBodyBodyGyroscopeJerkMagnitude-std 

 Frequency domain body component, angular jerk signal magnitude standard deviation. 

