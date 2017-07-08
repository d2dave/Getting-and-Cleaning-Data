# Getting-and-Cleaning-Data

run_analysis.R script performs the following steps :

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. Create a txt file output "average_each-activity_subject.txt"


The script uses the following txt files
1. features.txt -> List of all features is taken from this file
2. activity_labels.txt -> Links the class labels with their activity name
3. subject_train.txt -> Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30
4. X_train.txt -> Training set
5. y_train.txt -> Training set
6. subject_test.txt -> Each row identifies the subject who performed the activity for each window sample


For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

<br/>
The script merges the training and test data, clean the data and label the data set with descriptive activity names and finally create a tiday data set with average of each variable for each activity and each subject.
<br/>
Sample output column names:
<br>
subject_id
activity_type
TimeBodyAcceleration.Mean.X
TimeBodyAcceleration.Mean.Y
TimeBodyAcceleration.Mean.Z
TimeBodyAcceleration.Standard Deviation.X
TimeBodyAcceleration.Standard Deviation.Y
TimeBodyAcceleration.Standard Deviation.Z
TimeGravityAcceleration.Mean.X
TimeGravityAcceleration.Mean.Y
TimeGravityAcceleration.Mean.Z
TimeGravityAcceleration.Standard Deviation.X
TimeGravityAcceleration.Standard Deviation.Y
TimeGravityAcceleration.Standard Deviation.Z
TimeBodyAccelerationJerk.Mean.X
TimeBodyAccelerationJerk.Mean.Y
TimeBodyAccelerationJerk.Mean.Z
TimeBodyAccelerationJerk.Standard Deviation.X
TimeBodyAccelerationJerk.Standard Deviation.Y
TimeBodyAccelerationJerk.Standard Deviation.Z
TimeBodyGyro.Mean.X
TimeBodyGyro.Mean.Y
TimeBodyGyro.Mean.Z
TimeBodyGyro.Standard Deviation.X
TimeBodyGyro.Standard Deviation.Y
TimeBodyGyro.Standard Deviation.Z
TimeBodyGyroJerk.Mean.X
TimeBodyGyroJerk.Mean.Y
TimeBodyGyroJerk.Mean.Z
TimeBodyGyroJerk.Standard Deviation.X
TimeBodyGyroJerk.Standard Deviation.Y
TimeBodyGyroJerk.Standard Deviation.Z
TimeBodyAccelerationMagnitude.Mean
TimeBodyAccelerationMagnitude.Standard Deviation
TimeGravityAccelerationMagnitude.Mean
TimeGravityAccelerationMagnitude.Standard Deviation
TimeBodyAccelerationJerkMagnitude.Mean
TimeBodyAccelerationJerkMagnitude.Standard Deviation
TimeBodyGyroMagnitude.Mean
TimeBodyGyroMagnitude.Standard Deviation
TimeBodyGyroJerkMagnitude.Mean
TimeBodyGyroJerkMagnitude.Standard Deviation
FrequencyuencyBodyAcceleration.Mean.X
FrequencyuencyBodyAcceleration.Mean.Y
FrequencyuencyBodyAcceleration.Mean.Z
FrequencyuencyBodyAcceleration.Standard Deviation.X
FrequencyuencyBodyAcceleration.Standard Deviation.Y
FrequencyuencyBodyAcceleration.Standard Deviation.Z
FrequencyuencyBodyAcceleration.MeanFrequency.X
FrequencyuencyBodyAcceleration.MeanFrequency.Y
FrequencyuencyBodyAcceleration.MeanFrequency.Z
FrequencyuencyBodyAccelerationJerk.Mean.X
FrequencyuencyBodyAccelerationJerk.Mean.Y
FrequencyuencyBodyAccelerationJerk.Mean.Z
FrequencyuencyBodyAccelerationJerk.Standard Deviation.X
FrequencyuencyBodyAccelerationJerk.Standard Deviation.Y
FrequencyuencyBodyAccelerationJerk.Standard Deviation.Z
FrequencyuencyBodyAccelerationJerk.MeanFrequency.X
FrequencyuencyBodyAccelerationJerk.MeanFrequency.Y
FrequencyuencyBodyAccelerationJerk.MeanFrequency.Z
FrequencyuencyBodyGyro.Mean.X
FrequencyuencyBodyGyro.Mean.Y
FrequencyuencyBodyGyro.Mean.Z
FrequencyuencyBodyGyro.Standard Deviation.X
FrequencyuencyBodyGyro.Standard Deviation.Y
FrequencyuencyBodyGyro.Standard Deviation.Z
FrequencyuencyBodyGyro.MeanFrequency.X
FrequencyuencyBodyGyro.MeanFrequency.Y
FrequencyuencyBodyGyro.MeanFrequency.Z
FrequencyuencyBodyAccelerationMagnitude.Mean
FrequencyuencyBodyAccelerationMagnitude.Standard Deviation
FrequencyuencyBodyAccelerationMagnitude.MeanFrequency
FrequencyuencyBodyAccelerationJerkMagnitude.Mean
FrequencyuencyBodyAccelerationJerkMagnitude.Standard Deviation
FrequencyuencyBodyAccelerationJerkMagnitude.MeanFrequency
FrequencyuencyBodyGyroMagnitude.Mean
FrequencyuencyBodyGyroMagnitude.Standard Deviation
FrequencyuencyBodyGyroMagnitude.MeanFrequency
FrequencyuencyBodyGyroJerkMagnitude.Mean
FrequencyuencyBodyGyroJerkMagnitude.Standard Deviation
FrequencyuencyBodyGyroJerkMagnitude.MeanFrequency
