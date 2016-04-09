# Code book for "Getting and Cleaning Data Course Project" 

This is the documentation for the tidy dataset produced in step 5.
The original data has been grouped by Activity and Subject and the calculated the average.

### Data processing

The original test and train datasets has the same variables but different row count.
None of them has the subject or activity in the dataset, so before merging them both columns has to be added.
From the resulting dataset only the *mean and *std variables are extracted among the activity and subject ones.
The activity variable is converted from a number to text for clarity by using factos and levels.
The orignal column names has been renamed for clarity using regular expressions.
Finally the dataset is aggregated to calculate the mean of all the variables grouped by activity and subject.


### Variables

These two variables where added to the dataset
- Activity (string): one of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
- Subject (integer): the subject id doing the Activity

The variables below contains the variuos measurementst aken during the experiment (number)
- time_Body_Acceleration-mean()-X
- time_Body_Acceleration-mean()-Y 
- time_Body_Acceleration-mean()-Z 
- time_Body_Acceleration-std()-X 
- time_Body_Acceleration-std()-Y 
- time_Body_Acceleration-std()-Z 
- time_Gravity_Acceleration-mean()-X 
- time_Gravity_Acceleration-mean()-Y
- time_Gravity_Acceleration-mean()-Z
- time_Gravity_Acceleration-std()-X 
- time_Gravity_Acceleration-std()-Y 
- time_Gravity_Acceleration-std()-Z 
- time_Body_AccelerationJerk-mean()-X
- time_Body_AccelerationJerk-mean()-Y
- time_Body_AccelerationJerk-mean()-Z 
- time_Body_AccelerationJerk-std()-X 
- time_Body_AccelerationJerk-std()-Y 
- time_Body_AccelerationJerk-std()-Z 
- time_Body_Gyroscope-mean()-X
- time_Body_Gyroscope-mean()-Y
- time_Body_Gyroscope-mean()-Z
- time_Body_Gyroscope-std()-X
- time_Body_Gyroscope-std()-Y 
- time_Body_Gyroscope-std()-Z
- time_Body_GyroscopeJerk-mean()-X 
- time_Body_GyroscopeJerk-mean()-Y 
- time_Body_GyroscopeJerk-mean()-Z 
- time_Body_GyroscopeJerk-std()-X 
- time_Body_GyroscopeJerk-std()-Y 
- time_Body_GyroscopeJerk-std()-Z 
- time_Body_AccelerationMag-mean() 
- time_Body_AccelerationMag-std() 
- time_Gravity_AccelerationMag-mean() 
- time_Gravity_AccelerationMag-std()
- time_Body_AccelerationJerkMag-mean() 
- time_Body_AccelerationJerkMag-std() 
- time_Body_GyroscopeMag-mean() 
- time_Body_GyroscopeMag-std() 
- time_Body_GyroscopeJerkMag-mean() 
- time_Body_GyroscopeJerkMag-std() 
- frequency_Body_Acceleration-mean()-X 
- frequency_Body_Acceleration-mean()-Y 
- frequency_Body_Acceleration-mean()-Z 
- frequency_Body_Acceleration-std()-X 
- frequency_Body_Acceleration-std()-Y 
- frequency_Body_Acceleration-std()-Z 
- frequency_Body_AccelerationJerk-mean()-X
- frequency_Body_AccelerationJerk-mean()-Y 
- frequency_Body_AccelerationJerk-mean()-Z 
- frequency_Body_AccelerationJerk-std()-X 
- frequency_Body_AccelerationJerk-std()-Y 
- frequency_Body_AccelerationJerk-std()-Z 
- frequency_Body_Gyroscope-mean()-X
- frequency_Body_Gyroscope-mean()-Y 
- frequency_Body_Gyroscope-mean()-Z 
- frequency_Body_Gyroscope-std()-X
- frequency_Body_Gyroscope-std()-Y 
- frequency_Body_Gyroscope-std()-Z 
- frequency_Body_AccelerationMag-mean() 
- frequency_Body_AccelerationMag-std() 
- frequency_BodyBody_AccelerationJerkMag-mean() 
- frequency_BodyBody_AccelerationJerkMag-std() 
- frequency_BodyBody_GyroscopeMag-mean()
- frequency_BodyBody_GyroscopeMag-std() 
- frequency_BodyBody_GyroscopeJerkMag-mean() 
- frequency_BodyBody_GyroscopeJerkMag-std()

### Resources

[Original data source]



   [Original data source] <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

