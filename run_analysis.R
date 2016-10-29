#Set working directory
setwd("C:/Users/Gabriella/Coursera/Data_Science_Specialization/Data_Science_III/Week_4/UCI HAR Dataset")

# Read train data, activities and subjects
train_data = read.table("./train/X_train.txt") 
train_activity = read.table("./train/y_train.txt")
train_subject = read.table("./train/subject_train.txt") 
 
# Read test data, activities and subjects
test_data = read.table("./test/X_test.txt") 
test_activity = read.table("./test/y_test.txt") 
test_subject = read.table("./test/subject_test.txt") 

# Read variable names
var = read.table("./features.txt") 

# Merge data, activities and subjects
mergedData <- rbind(train_data,test_data)
mergedActivity <- rbind(train_activity,test_activity)
mergedSubjects <- rbind(train_subject,test_subject)

# Assign variable names to data set  
names(mergedData) <- var[,2]

# Extract only the variables with 'mean()' or 'std()' in the name
ind <- grep("\\bmean()\\b|\\bstd()\\b",names(mergedData)) 
mean_stdData <- mergedData[,ind]

# Give descriptive labels to activities
mergedActivity <-factor(mergedActivity$V1)
levels(mergedActivity) <-c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIR","SITTING","STANDING","LAYING")

# Add activities to data
mean_stdData <- cbind(mergedActivity,mean_stdData)

# Add subjects to data
mean_stdData <- cbind(mergedSubjects,mean_stdData)

#Set activity and subject column names
names(mean_stdData)[1:2]<- c("Subject","Activity")

#Compute mean of each variable for each subject-activity pair
library(plyr)
Data <- ddply(mean_stdData, .(Subject, Activity), function(x) colMeans(x[, 3:68]))

#Write data frame to text file
write.table(Data,"final_dataset.txt",row.names = FALSE)