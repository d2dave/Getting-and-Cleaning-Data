CODEBOOK<br/>
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
1. subject_id
2. activity_type
<br/> subject_id corresponds to the id of the test subject activity. activity_type - type of activity performed when the corresponding measurements were taken.
<br/> The following are the various measurements taken for each activity and subject id
3. TimeBodyAcceleration.Mean.X
4. TimeBodyAcceleration.Mean.Y
5. TimeBodyAcceleration.Mean.Z
6. TimeBodyAcceleration.Standard Deviation.X
7. TimeBodyAcceleration.Standard Deviation.Y
8. TimeBodyAcceleration.Standard Deviation.Z
9. TimeGravityAcceleration.Mean.X
10. TimeGravityAcceleration.Mean.Y
11. TimeGravityAcceleration.Mean.Z
12. TimeGravityAcceleration.Standard Deviation.X
13. TimeGravityAcceleration.Standard Deviation.Y
14. TimeGravityAcceleration.Standard Deviation.Z
15. TimeBodyAccelerationJerk.Mean.X
16. TimeBodyAccelerationJerk.Mean.Y
17. TimeBodyAccelerationJerk.Mean.Z
18. TimeBodyAccelerationJerk.Standard Deviation.X
19. TimeBodyAccelerationJerk.Standard Deviation.Y
20. TimeBodyAccelerationJerk.Standard Deviation.Z
21. TimeBodyGyro.Mean.X
22. TimeBodyGyro.Mean.Y
23. TimeBodyGyro.Mean.Z
24. TimeBodyGyro.Standard Deviation.X
25. TimeBodyGyro.Standard Deviation.Y
26. TimeBodyGyro.Standard Deviation.Z
27. TimeBodyGyroJerk.Mean.X
28. TimeBodyGyroJerk.Mean.Y
29. TimeBodyGyroJerk.Mean.Z
30. TimeBodyGyroJerk.Standard Deviation.X
31. TimeBodyGyroJerk.Standard Deviation.Y
32. TimeBodyGyroJerk.Standard Deviation.Z
33. TimeBodyAccelerationMagnitude.Mean
34. TimeBodyAccelerationMagnitude.Standard Deviation
35. TimeGravityAccelerationMagnitude.Mean
36. TimeGravityAccelerationMagnitude.Standard Deviation
37. TimeBodyAccelerationJerkMagnitude.Mean
38. TimeBodyAccelerationJerkMagnitude.Standard Deviation
39. TimeBodyGyroMagnitude.Mean
40. TimeBodyGyroMagnitude.Standard Deviation
41. TimeBodyGyroJerkMagnitude.Mean
42. TimeBodyGyroJerkMagnitude.Standard Deviation
43. FrequencyuencyBodyAcceleration.Mean.X
44. FrequencyuencyBodyAcceleration.Mean.Y
45. FrequencyuencyBodyAcceleration.Mean.Z
46. FrequencyuencyBodyAcceleration.Standard Deviation.X
47. FrequencyuencyBodyAcceleration.Standard Deviation.Y
48. FrequencyuencyBodyAcceleration.Standard Deviation.Z
49. FrequencyuencyBodyAcceleration.MeanFrequency.X
50. FrequencyuencyBodyAcceleration.MeanFrequency.Y
51. FrequencyuencyBodyAcceleration.MeanFrequency.Z
52. FrequencyuencyBodyAccelerationJerk.Mean.X
53. FrequencyuencyBodyAccelerationJerk.Mean.Y
54. FrequencyuencyBodyAccelerationJerk.Mean.Z
55. FrequencyuencyBodyAccelerationJerk.Standard Deviation.X
56. FrequencyuencyBodyAccelerationJerk.Standard Deviation.Y
57. FrequencyuencyBodyAccelerationJerk.Standard Deviation.Z
58. FrequencyuencyBodyAccelerationJerk.MeanFrequency.X
59. FrequencyuencyBodyAccelerationJerk.MeanFrequency.Y
60. FrequencyuencyBodyAccelerationJerk.MeanFrequency.Z
61. FrequencyuencyBodyGyro.Mean.X
62. FrequencyuencyBodyGyro.Mean.Y
63. FrequencyuencyBodyGyro.Mean.Z
64. FrequencyuencyBodyGyro.Standard Deviation.X
65. FrequencyuencyBodyGyro.Standard Deviation.Y
66. FrequencyuencyBodyGyro.Standard Deviation.Z
67. FrequencyuencyBodyGyro.MeanFrequency.X
68. FrequencyuencyBodyGyro.MeanFrequency.Y
69. FrequencyuencyBodyGyro.MeanFrequency.Z
70. FrequencyuencyBodyAccelerationMagnitude.Mean
71. FrequencyuencyBodyAccelerationMagnitude.Standard Deviation
72. FrequencyuencyBodyAccelerationMagnitude.MeanFrequency
73. FrequencyuencyBodyAccelerationJerkMagnitude.Mean
74. FrequencyuencyBodyAccelerationJerkMagnitude.Standard Deviation
75. FrequencyuencyBodyAccelerationJerkMagnitude.MeanFrequency
76. FrequencyuencyBodyGyroMagnitude.Mean
77. FrequencyuencyBodyGyroMagnitude.Standard Deviation
78. FrequencyuencyBodyGyroMagnitude.MeanFrequency
79. FrequencyuencyBodyGyroJerkMagnitude.Mean
80. FrequencyuencyBodyGyroJerkMagnitude.Standard Deviation
81. FrequencyuencyBodyGyroJerkMagnitude.MeanFrequency
