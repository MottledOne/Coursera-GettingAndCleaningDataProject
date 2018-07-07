Study Design: 
==================
The data was downloaded from the UCI Machine Learning website:

Data download URL: http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip
Dataset description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

(Taken from original codebook file, 'features.txt')
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

Subsequently, the training and test datasets were merged and averages were taken for each experimental subject, for each activity performed

Codebook:
====================
The tidy dataset contains the following variables:

subjectID: (int, range 1-30) identifies the subjects involved in the experiment1

activityID: (int, range 1-6) code for the activities performed by the subjects for which data was collected, corresponding to:
		1 - walking
		2 - wallking upstairs
		3 - walking downstairs
		4 - sitting
		5 - standing
		6 - laying

activityLabel: (char) activities performed by the subjects for which data was collected,

The following variables correspond to the averages of measurements for each subject, for each activitiy performed. See the original codebook test (above) for a more detailed description of each variable.

The units of these variables depend on whether their variable name includes "Acc" or "Gyro":
	"Acc": standard gravitational units, 'g' = 9.80665 m/s^2 
	"Gyro": radians/s
	
tBodyAccMeanX
tBodyAccMeanY
tBodyAccMeanZ
tGravityAccMeanX
tGravityAccMeanY
tGravityAccMeanZ
tBodyAccJerkMeanX
tBodyAccJerkMeanY
tBodyAccJerkMeanZ
tBodyGyroMeanX
tBodyGyroMeanY
tBodyGyroMeanZ
tBodyGyroJerkMeanX
tBodyGyroJerkMeanY
tBodyGyroJerkMeanZ
tBodyAccMagMean
tGravityAccMagMean
tBodyAccJerkMagMean
tBodyGyroMagMean
tBodyGyroJerkMagMean
fBodyAccMeanX
fBodyAccMeanY
fBodyAccMeanZ
fBodyAccMeanFreqX
fBodyAccMeanFreqY
fBodyAccMeanFreqZ
fBodyAccJerkMeanX
fBodyAccJerkMeanY
fBodyAccJerkMeanZ
fBodyAccJerkMeanFreqX
fBodyAccJerkMeanFreqY
fBodyAccJerkMeanFreqZ
fBodyGyroMeanX
fBodyGyroMeanY
fBodyGyroMeanZ
fBodyGyroMeanFreqX
fBodyGyroMeanFreqY
fBodyGyroMeanFreqZ
fBodyAccMagMean
fBodyAccMagMeanFreq
fBodyBodyAccJerkMagMean
fBodyBodyAccJerkMagMeanFreq
fBodyBodyGyroMagMean
fBodyBodyGyroMagMeanFreq
fBodyBodyGyroJerkMagMean
fBodyBodyGyroJerkMagMeanFreq
tBodyAccStdX
tBodyAccStdY
tBodyAccStdZ
tGravityAccStdX
tGravityAccStdY
tGravityAccStdZ
tBodyAccJerkStdX
tBodyAccJerkStdY
tBodyAccJerkStdZ
tBodyGyroStdX
tBodyGyroStdY
tBodyGyroStdZ
tBodyGyroJerkStdX
tBodyGyroJerkStdY
tBodyGyroJerkStdZ
tBodyAccMagStd
tGravityAccMagStd
tBodyAccJerkMagStd
tBodyGyroMagStd
tBodyGyroJerkMagStd
fBodyAccStdX
fBodyAccStdY
fBodyAccStdZ
fBodyAccJerkStdX
fBodyAccJerkStdY
fBodyAccJerkStdZ
fBodyGyroStdX
fBodyGyroStdY
fBodyGyroStdZ
fBodyAccMagStd
fBodyBodyAccJerkMagStd
fBodyBodyGyroMagStd
fBodyBodyGyroJerkMagStd
