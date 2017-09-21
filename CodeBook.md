# Code Book
This code book explains the actions performed and the resulting data and variables.

## Data source:
The data collected from the accelerometers from the Samsung Galaxy S smartphone.  
A full description is available at the site where the data was obtained:  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Pre-requisite: 
The following files are already downloaded and exist in the working directory.
* activity_labels.txt  
* features.txt  
* subject_test.txt  
* X_test.txt  
* y_test.txt  
* subject_train.txt  
* X_train.txt  
* y_train.txt  

# Data variables
Name: subject  
Description: The ID of the test subject.  
Values: 1 to 30  

Name: activity  
Description: The type of activity performed when the corresponding measurements were taken.  
Values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING,STANDING, LAYING


Name: see list below for Measurements columns  
Description: The average of each variable for each activity and each subject for the mean and standard deviations.
features data set contains dublicated values. This will result in error message when using select(). To prevent this error I have paste the ID identifier to the measurment name.  

1.tbodyaccmeanx  
2.tbodyaccmeany  
3.tbodyaccmeanz  
41.tgravityaccmeanx  
42.tgravityaccmeany  
43.tgravityaccmeanz  
81.tbodyaccjerkmeanx  
82.tbodyaccjerkmeany  
83.tbodyaccjerkmeanz  
121.tbodygyromeanx  
122.tbodygyromeany  
123.tbodygyromeanz  
161.tbodygyrojerkmeanx  
162.tbodygyrojerkmeany  
163.tbodygyrojerkmeanz  
201.tbodyaccmagmean  
214.tgravityaccmagmean  
227.tbodyaccjerkmagmean  
240.tbodygyromagmean  
253.tbodygyrojerkmagmean  
266.fbodyaccmeanx  
267.fbodyaccmeany  
268.fbodyaccmeanz  
294.fbodyaccmeanfreqx  
295.fbodyaccmeanfreqy  
296.fbodyaccmeanfreqz  
345.fbodyaccjerkmeanx  
346.fbodyaccjerkmeany  
347.fbodyaccjerkmeanz  
373.fbodyaccjerkmeanfreqx  
374.fbodyaccjerkmeanfreqy  
375.fbodyaccjerkmeanfreqz  
424.fbodygyromeanx  
425.fbodygyromeany  
426.fbodygyromeanz  
452.fbodygyromeanfreqx  
453.fbodygyromeanfreqy  
454.fbodygyromeanfreqz  
503.fbodyaccmagmean  
513.fbodyaccmagmeanfreq  
516.fbodybodyaccjerkmagmean  
526.fbodybodyaccjerkmagmeanfreq  
529.fbodybodygyromagmean  
539.fbodybodygyromagmeanfreq  
542.fbodybodygyrojerkmagmean  
552.fbodybodygyrojerkmagmeanfreq  
555.angletbodyaccmeangravity  
556.angletbodyaccjerkmeangravitymean  
557.angletbodygyromeangravitymean  
558.angletbodygyrojerkmeangravitymean  
559.anglexgravitymean  
560.angleygravitymean  
561.anglezgravitymean  
4.tbodyaccstdx  
5.tbodyaccstdy  
6.tbodyaccstdz  
44.tgravityaccstdx  
45.tgravityaccstdy  
46.tgravityaccstdz  
84.tbodyaccjerkstdx  
85.tbodyaccjerkstdy  
86.tbodyaccjerkstdz  
124.tbodygyrostdx  
125.tbodygyrostdy  
126.tbodygyrostdz  
164.tbodygyrojerkstdx  
165.tbodygyrojerkstdy  
166.tbodygyrojerkstdz  
202.tbodyaccmagstd  
215.tgravityaccmagstd  
228.tbodyaccjerkmagstd  
241.tbodygyromagstd  
254.tbodygyrojerkmagstd  
269.fbodyaccstdx  
270.fbodyaccstdy  
271.fbodyaccstdz  
348.fbodyaccjerkstdx  
349.fbodyaccjerkstdy  
350.fbodyaccjerkstdz  
427.fbodygyrostdx  
428.fbodygyrostdy  
429.fbodygyrostdz  
504.fbodyaccmagstd  
517.fbodybodyaccjerkmagstd  
530.fbodybodygyromagstd  
543.fbodybodygyrojerkmagstd
