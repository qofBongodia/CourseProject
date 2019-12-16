install.packages("tidyr")


#define url as where to download the data.
url <-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

#download file into zip file
download.file(url, destfile = "week4assignment.zip", method = "curl", mode ="wb" )

#use unzip to unzip files and store in variable filelist.
filelist <- unzip(zipfile = "week4assignment.zip")

#read features.txt file and convert values to a vector. 

features <-read.table(filelist[2])
features_labels <-as.character(features$V2)

#add 3 more values to vector "labels". lables will be used as test and train dataset column header.
lables_df <-c("subject","activity", "experiment_type", features_labels)

#read subject_test, y_test, text_x file and combine them into one file named "test". Use an extra variable value "test" to record that below dataset is from the test file.
test_df <- cbind(read.table(filelist[14]), read.table(filelist[16]),"test",read.table(filelist[15]))


#read subject_train, y_train, train_x file and combine them into one file named "train". Use an extra variable value "train" to record that below dataset is from the train file.
train_df <- cbind(read.table(filelist[26]), read.table(filelist[28]),"train",read.table(filelist[27]))
 

#merge "test" & "train" data. Assignment requirement 1 &4.
train_test_df <-rbind(test, train)

#assign merged data frame colmun name using "labels_df" vector.
colnames(train_test_df) <-lables_df

#filter only columns contain mean() or std() as well as the common columns. Fulfill requirement 2 on assignment.
narrow_df <- train_test_df[,grepl("subject|activity|experiment_type|mean()|std()", names(train_test_df))]

#read "activity.txt" into a data frame.
activity <- read.table(filelist[1], sep = "", col.names = c("activity", "act_desc"))

#add activity names into the dataset, attached to the last column. Assignment Requirement 3 fullfilled.
tidy_df <-merge(narrow_df, activity, by="activity")


#calculate mean for all mean/std variables group by "activity" then "subject".
mean_dataset <-aggregate(.~tidy_df$activity +tidy_df$act_desc +tidy_df$subject, data = tidy_df[4:82], mean)

#rename the group by columns
colnames(mean_dataset)[1:3] <-c("activity", "description","subject")

#generate mean_dataset in txt file.
write.table(mean_dataset, file ="mean_dataset.txt", row.names = FALSE)

