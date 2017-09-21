# Setting the working directory where the project files are located
# I have added this step to script so to make sure I am at the right directory and that i will not get an error when running this script
setwd("C:\\Users\\Main\\Desktop\\Coursera_Data_science\\datacleaning\\ProjectWeek4\\UCI HAR Dataset")

# Loading packages 
# I have added this step beacuse when I run the scrip i got error message as dplyr package was not loaded into R
for (package in c("dplyr")) {
        if (!require(package, character.only=T, quietly=T)) {
                install.packages(package)
                library(package, character.only=T)
        }
}

# this is the location where I will save the data output for the following project tasks:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
# I will save the data outputs into csv file. I have decided to save it as a csv file and not text file as it more easy to view
dataOutputLocation<-"C:\\Users\\Main\\Desktop\\Coursera_Data_science\\datacleaning\\ProjectWeek4\\submitCriteria"


# read the train  data files
subject_train <- read.table("./train/subject_train.txt")
X_train <- read.table("./train/X_train.txt")
y_train <- read.table("./train/y_train.txt")

# read the test data files
subject_test <- read.table("./test/subject_test.txt")
X_test <- read.table("./test/X_test.txt")
y_test <- read.table("./test/y_test.txt")

# read features.txt file
features <- read.table("./features.txt")

# read activity_labels.txt file
activity_labels <- read.table("./activity_labels.txt")

# 4. Appropriately labels the data set with descriptive variable names.
# I have decided to rename the data sets at the early stage of the code in order to make it easier in the long run. 
# You can that there are other areas in the code that I have addressed project step 4 task.

# Rename the y_train column name
names(y_train) <- "Activity"

# Rename the y_test column name
names(y_test) <- "Activity"

# Rename the subject_train
names(subject_train)<-"Subject"

# Rename the subject_test
names(subject_test)<-"Subject"

# Rename the features column names
names(features)<-c("ID","Feature")

# Rename the activity_lables column names
names(activity_labels ) <- c("ID","Label")

# features data set contains duplicted values. This will couse issues later in the code when using select()
# as it will give the error message "Erroe: Data source must be a dictionary". This means that i have duplicated variables
renamefeaturesValues<-paste(features[,"ID"],features[,"Feature"],sep=".")


# Rename the X_test column names based of features data table
names(X_test)<-c(renamefeaturesValues)

# Rename the X_train column names based of features data table
names(X_train) <- c(renamefeaturesValues)

# 1. Merges the training and the test sets to create one data set. 
# Merge the y_train , subject_train, X_train 
trainDataSet <-  cbind( subject_train ,y_train, X_train)

# Merge the y_test, subject_test,  X_test 
testDataSet <- cbind(subject_test, y_test, X_test)

# Merge testDataSet and trainDataSet to one data set 
rawData <- rbind(trainDataSet,testDataSet)

# Saving the raw data set
write.csv(rawData, file=paste(dataOutputLocation,"\\rawData.csv", sep=""), row.names = FALSE)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# Making the column names descriptive 
names(rawData) <-tolower(gsub("[- | , | () |]", "",names(rawData)))  

meanColumns<- grep("mean",names(rawData), value = TRUE)
stdColumns<-grep("std",names(rawData), value = TRUE)
meanStdColumns <- c(meanColumns,stdColumns)
meanStdDataSet<-select(rawData, subject ,activity, meanStdColumns)

write.csv(meanStdDataSet, file=paste(dataOutputLocation,"\\MeanStdData.csv", sep=""), row.names = FALSE)

# 3. Uses descriptive activity names to name the activities in the data set
# Go over the  meanStdDataSet and accordinglychange to activity_labels
activityLable<-c()

for(i in 1:nrow(meanStdDataSet)){
       meanStdDataSet[i,2]<- as.character(activity_labels[meanStdDataSet[i,2],"Label"])
}


# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidyData<- meanStdDataSet%>%group_by(subject,activity)%>%summarise_all(funs(mean))



# Project criteria: The submitted data set is tidy. 
write.table(tidyData, file=paste(dataOutputLocation,"\\tidyData.txt", sep=""), sep = "\t")


