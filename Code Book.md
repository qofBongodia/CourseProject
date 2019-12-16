---
title: "Code Book"
author: "Bec S"
date: "16/12/2019"
output: html_document
---


# Code Book for Getting and Cleaning Data Project
The Project utilise the files from Human Activity Recognition Using Smartphones Dataset downloaded from below url (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 

Below files are used during the analysis:
test/subject_test.txt;
test/X_test.txt;
test/y_test.txt;

train/subject_train.txt;
train/X_train.txt;
train/y_train.txt;

activity_lables.txt;
features.txt;

The analysis read test and train data into one dataset and assigned labels using features.txt file as well as providing descriptive activity name by merging the data in activity_labels.txt using activity code.

The final dataset only output the average of 79 variables contains mean() or std() labels in the features.txt file grouped by activity code and subject. Below are the list of variables output in the final average dataset.

"activity" 
"description"
"subject"                
"tBodyAcc-mean()-X"               
"tBodyAcc-mean()-Y"              
"tBodyAcc-mean()-Z"              
"tBodyAcc-std()-X"                
"tBodyAcc-std()-Y"                
"tBodyAcc-std()-Z"               
"tGravityAcc-mean()-X"            
"tGravityAcc-mean()-Y"            
"tGravityAcc-mean()-Z"            
"tGravityAcc-std()-X"            
"tGravityAcc-std()-Y"            
"tGravityAcc-std()-Z"             
"tBodyAccJerk-mean()-X"           
"tBodyAccJerk-mean()-Y"          
"tBodyAccJerk-mean()-Z"           
"tBodyAccJerk-std()-X"            
"tBodyAccJerk-std()-Y"            
"tBodyAccJerk-std()-Z"           
"tBodyGyro-mean()-X"              
"tBodyGyro-mean()-Y"              
"tBodyGyro-mean()-Z"              
"tBodyGyro-std()-X"              
"tBodyGyro-std()-Y"               
"tBodyGyro-std()-Z"               
"tBodyGyroJerk-mean()-X"         
"tBodyGyroJerk-mean()-Y"         
"tBodyGyroJerk-mean()-Z"         
"tBodyGyroJerk-std()-X"           
"tBodyGyroJerk-std()-Y"          
"tBodyGyroJerk-std()-Z"          
"tBodyAccMag-mean()"              
"tBodyAccMag-std()"              
"tGravityAccMag-mean()"          
"tGravityAccMag-std()"           
"tBodyAccJerkMag-mean()"          
"tBodyAccJerkMag-std()"           
"tBodyGyroMag-mean()"             
"tBodyGyroMag-std()"             
"tBodyGyroJerkMag-mean()"         
"tBodyGyroJerkMag-std()"          
"fBodyAcc-mean()-X"               
"fBodyAcc-mean()-Y"              
"fBodyAcc-mean()-Z"               
"fBodyAcc-std()-X"                
"fBodyAcc-std()-Y"                
"fBodyAcc-std()-Z"               
"fBodyAcc-meanFreq()-X"          
"fBodyAcc-meanFreq()-Y"          
"fBodyAcc-meanFreq()-Z"           
"fBodyAccJerk-mean()-X"          
"fBodyAccJerk-mean()-Y"           
"fBodyAccJerk-mean()-Z"          
"fBodyAccJerk-std()-X"           
"fBodyAccJerk-std()-Y"           
"fBodyAccJerk-std()-Z"            
"fBodyAccJerk-meanFreq()-X"       
"fBodyAccJerk-meanFreq()-Y"      
"fBodyAccJerk-meanFreq()-Z"      
"fBodyGyro-mean()-X"              
"fBodyGyro-mean()-Y"              
"fBodyGyro-mean()-Z"              
"fBodyGyro-std()-X"              
"fBodyGyro-std()-Y"               
"fBodyGyro-std()-Z"               
"fBodyGyro-meanFreq()-X"          
"fBodyGyro-meanFreq()-Y"         
"fBodyGyro-meanFreq()-Z"          
"fBodyAccMag-mean()"              
"fBodyAccMag-std()"               
"fBodyAccMag-meanFreq()"         
"fBodyBodyAccJerkMag-mean()"      
"fBodyBodyAccJerkMag-std()"       
"fBodyBodyAccJerkMag-meanFreq()"  
"fBodyBodyGyroMag-mean()"        
"fBodyBodyGyroMag-std()"          
"fBodyBodyGyroMag-meanFreq()"     
"fBodyBodyGyroJerkMag-mean()"     
"fBodyBodyGyroJerkMag-std()"     
"fBodyBodyGyroJerkMag-meanFreq()"
