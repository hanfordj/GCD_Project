# Getting and Cleaning Data Course Code Book

### Summary

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

### Variable Descriptions: 

- subject ==> Subject identifier (integer 1 - 30).
- activity ==> Activity specifier providing guideline of the activity performed during measurement (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).
- avg_tBodyAcc_mean_X ==> Body acceleration mean in X dimension averaged for subject and activity (time domain).
- avg_tBodyAcc_mean_Y ==> Body acceleration mean in Y dimension averaged for subject and activity (time domain).
- avg_tBodyAcc_mean_Z ==> Body acceleration mean in Z dimension averaged for subject and activity (time domain).
- avg_tBodyAcc_std_X ==> Body acceleration standard deviation in X dimension averaged for subject and activity (time domain).
- avg_tBodyAcc_std_Y ==> Body acceleration standard deviation in Y dimension averaged for subject and activity (time domain).
- avg_tBodyAcc_std_Z ==> Body acceleration standard deviation in Z dimension averaged for subject and activity (time domain).
- avg_tGravityAcc_mean_X ==> Gravity acceleration mean in X dimension averaged for subject and activity (time domain).
- avg_tGravityAcc_mean_Y ==> Gravity acceleration mean in Y dimension averaged for subject and activity (time domain).
- avg_tGravityAcc_mean_Z ==> Gravity acceleration mean in Z dimension averaged for subject and activity (time domain).
- avg_tGravityAcc_std_X ==> Gravity acceleration mean in X dimension averaged for subject and activity (time domain).
- avg_tGravityAcc_std_Y ==> Gravity acceleration mean in Y dimension averaged for subject and activity (time domain).
- avg_tGravityAcc_std_Z ==> Gravity acceleration mean in Z dimension averaged for subject and activity (time domain).
- avg_tBodyAccJerk_mean_X ==> Body acceleration jerk mean in X dimension averaged for subject and activity (time domain).
- avg_tBodyAccJerk_mean_Y ==> Body acceleration jerk mean in Y dimension averaged for subject and activity (time domain).
- avg_tBodyAccJerk_mean_Z ==> Body acceleration jerk mean in Z dimension averaged for subject and activity (time domain).
- avg_tBodyAccJerk_std_X ==> Body acceleration jerk standard deviation in X dimension averaged for subject and activity (time domain).
- avg_tBodyAccJerk_std_Y ==> Body acceleration jerk standard deviation in Y dimension averaged for subject and activity (time domain).
- avg_tBodyAccJerk_std_Z ==> Body acceleration jerk standard deviation in Z dimension averaged for subject and activity (time domain).
- avg_tBodyGyro_mean_X ==> Body gyroscopic mean in X dimension averaged for subject and activity (time domain).
- avg_tBodyGyro_mean_Y ==> Body gyroscopic mean in Y dimension averaged for subject and activity (time domain).
- avg_tBodyGyro_mean_Z ==> Body gyroscopic mean in Z dimension averaged for subject and activity (time domain).
- avg_tBodyGyro_std_X ==> Body gyroscopic standard deviation in X dimension averaged for subject and activity (time domain).
- avg_tBodyGyro_std_Y ==> Body gyroscopic standard deviation in Y dimension averaged for subject and activity (time domain).
- avg_tBodyGyro_std_Z ==> Body gyroscopic standard deviation in Z dimension averaged for subject and activity (time domain).
- avg_tBodyGyroJerk_mean_X ==> Body gyroscopic jerk mean in X dimension averaged for subject and activity (time domain).
- avg_tBodyGyroJerk_mean_Y ==> Body gyroscopic jerk mean in Y dimension averaged for subject and activity (time domain).
- avg_tBodyGyroJerk_mean_Z ==> Body gyroscopic jerk mean in Z dimension averaged for subject and activity (time domain).
- avg_tBodyGyroJerk_std_X ==> Body gyroscopic jerk standard deviation in X dimension averaged for subject and activity (time domain).
- avg_tBodyGyroJerk_std_Y ==> Body gyroscopic jerk standard deviation in Y dimension averaged for subject and activity (time domain).
- avg_tBodyGyroJerk_std_Z ==> Body gyroscopic jerk standard deviation in Z dimension averaged for subject and activity (time domain).
- avg_tBodyAccMag_mean ==> Body acceleration linear magnitude mean averaged for subject and activity (time domain).
- avg_tBodyAccMag_std ==> Body acceleration linear magnitude standard deviation averaged for subject and activity (time domain).
- avg_tGravityAccMag_mean ==> Gravity acceleration linear magnitude mean averaged for subject and activity (time domain).
- avg_tGravityAccMag_std ==> Gravity acceleration linear magnitude standard deviation averaged for subject and activity (time domain).
- avg_tBodyAccJerkMag_mean ==> Body acceleration jerk linear magnitude mean averaged for subject and activity (time domain).
- avg_tBodyAccJerkMag_std ==> Body acceleration jerk linear magnitude standard deviation averaged for subject and activity (time domain).
- avg_tBodyGyroMag_mean ==> Body gyroscopic linear magnitude mean averaged for subject and activity (time domain).
- avg_tBodyGyroMag_std ==> Body gyroscopic linear magnitude standard deviation averaged for subject and activity (time domain).
- avg_tBodyGyroJerkMag_mean ==> Body gyroscopic jerk linear magnitude mean averaged for subject and activity (time domain).
- avg_tBodyGyroJerkMag_std ==> Body gyroscopic jerk linear magnitude standard deviation averaged for subject and activity (time domain).
- avg_fBodyAcc_mean_X ==> Body acceleration mean in X dimension averaged for subject and activity (frequency domain).
- avg_fBodyAcc_mean_Y ==> Body acceleration mean in Y dimension averaged for subject and activity (frequency domain).
- avg_fBodyAcc_mean_Z ==> Body acceleration mean in Z dimension averaged for subject and activity (frequency domain).
- avg_fBodyAcc_std_X ==> Body acceleration standard deviation in X dimension averaged for subject and activity (frequency domain).
- avg_fBodyAcc_std_Y ==> Body acceleration standard deviation in Y dimension averaged for subject and activity (frequency domain).
- avg_fBodyAcc_std_Z ==> Body acceleration standard deviation in Z dimension averaged for subject and activity (frequency domain).
- avg_fBodyAcc_meanFreq_X ==> Body acceleration mean frequency in X dimension averaged for subject and activity (frequency domain).
- avg_fBodyAcc_meanFreq_Y ==> Body acceleration mean frequency in Y dimension averaged for subject and activity (frequency domain).
- avg_fBodyAcc_meanFreq_Z ==> Body acceleration mean frequency in Z dimension averaged for subject and activity (frequency domain).
- avg_fBodyAccJerk_mean_X ==> Body acceleration jerk mean in X dimension averaged for subject and activity (frequency domain).
- avg_fBodyAccJerk_mean_Y ==> Body acceleration jerk mean in Y dimension averaged for subject and activity (frequency domain).
- avg_fBodyAccJerk_mean_Z ==> Body acceleration jerk mean in Z dimension averaged for subject and activity (frequency domain).
- avg_fBodyAccJerk_std_X ==> Body acceleration jerk standard deviation in X dimension averaged for subject and activity (frequency domain).
- avg_fBodyAccJerk_std_Y ==> Body acceleration jerk standard deviation in Y dimension averaged for subject and activity (frequency domain).
- avg_fBodyAccJerk_std_Z ==> Body acceleration jerk standard deviation in Z dimension averaged for subject and activity (frequency domain).
- avg_fBodyAccJerk_meanFreq_X ==> Body acceleration jerk mean frequency in X dimension averaged for subject and activity (frequency domain).
- avg_fBodyAccJerk_meanFreq_Y ==> Body acceleration jerk mean frequency in Y dimension averaged for subject and activity (frequency domain).
- avg_fBodyAccJerk_meanFreq_Z ==> Body acceleration jerk mean frequency in Z dimension averaged for subject and activity (frequency domain).
- avg_fBodyGyro_mean_X ==> Body gyroscopic mean in X dimension averaged for subject and activity (frequency domain).
- avg_fBodyGyro_mean_Y ==> Body gyroscopic mean in Y dimension averaged for subject and activity (frequency domain).
- avg_fBodyGyro_mean_Z ==> Body gyroscopic mean in Z dimension averaged for subject and activity (frequency domain).
- avg_fBodyGyro_std_X ==> Body gyroscopic standard deviation in X dimension averaged for subject and activity (frequency domain).
- avg_fBodyGyro_std_Y ==> Body gyroscopic standard deviation in Y dimension averaged for subject and activity (frequency domain).
- avg_fBodyGyro_std_Z ==> Body gyroscopic standard deviation in Z dimension averaged for subject and activity (frequency domain).
- avg_fBodyGyro_meanFreq_X ==> Body gyroscopic mean frequency in X dimension averaged for subject and activity (frequency domain).
- avg_fBodyGyro_meanFreq_Y ==> Body gyroscopic mean frequency in Y dimension averaged for subject and activity (frequency domain).
- avg_fBodyGyro_meanFreq_Z ==> Body gyroscopic mean frequency in Z dimension averaged for subject and activity (frequency domain).
- avg_fBodyAccMag_mean ==> Body acceleration linear magnitude mean averaged for subject and activity (frequency domain).
- avg_fBodyAccMag_std ==> Body acceleration linear magnitude mean averaged for subject and activity (frequency domain).
- avg_fBodyAccMag_meanFreq ==> Body acceleration linear magnitude mean averaged for subject and activity (frequency domain).
- avg_fBodyBodyAccJerkMag_mean ==> Body acceleration jerk linear magnitude mean averaged for subject and activity (frequency domain).
- avg_fBodyBodyAccJerkMag_std ==> Body gyroscopic linear magnitude standard deviation averaged for subject and activity (frequency domain).
- avg_fBodyBodyAccJerkMag_meanFreq ==> Body acceleration jerk linear magnitude mean frequency averaged for subject and activity (frequency domain).
- avg_fBodyBodyGyroMag_mean ==> Body gyroscopic magnitude mean averaged for subject and activity (frequency domain).
- avg_fBodyBodyGyroMag_std ==> Body gyroscopic magnitude standard deviation averaged for subject and activity (frequency domain).
- avg_fBodyBodyGyroMag_meanFreq ==>  Body gyroscopic magnitude mean frequency averaged for subject and activity (frequency domain).
- avg_fBodyBodyGyroJerkMag_mean ==> Body gyroscopic jerk magnitude mean averaged for subject and activity (frequency domain).
- avg_fBodyBodyGyroJerkMag_std ==> Body gyroscopic jerk magnitude standard deviation averaged for subject and activity (frequency domain).
- avg_fBodyBodyGyroJerkMag_meanFreq ==> Body gyroscopic jerk magnitude mean frequency averaged for subject and activity (frequency domain).
