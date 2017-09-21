# Getting and Cleaning Data - project assignment 

The R script, run_analysis.R, does the following:
1. Setting the working directory
2. Loading the required packages
3. Reading files into R: train  data files , test data files , features.txt file, activity_labels file 
4. Appropriately labelling the data sets with descriptive variable names
5. Merging the train and the test sets to one data set called “rawData”
6. Creating new data set (called “meanStdDataSet”) which contains the applicable mean and std measurements columns. 
7. Saving rawData, meanStdDataSet data output in CSV file
8. Creating a new data set called tidyData with the average of each variable for each activity and each subject. Grouped the data set by      subject then by activity.
9. Saving the tidyData output as txt file.

The end result is tideData.txt file
