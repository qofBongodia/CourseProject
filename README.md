---
output: html_document
---
# CourseProject
---
title: "Course Project Readme file"
author: "Bec S"
date: "15/12/2019"
output: html_document
---


## Summary

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. The output of this project is a tidy data set using the run_analysis.R script for performing the analysis, and a code book that describes the variables. The data, and any transformations or work that performed to clean up the data called CodeBook.md. and this is the README.md, which explains how all of the scripts work and how they are connected.

## The run_analysis script

1. The script first installs any package that be used for the data cleanning. 

2. In order to clean the data, it downloaded the raw dataset from an online zipfile using variable "url" to define the path of the zip file.

3. filelist variable is used to store the set of filenames.

4. The code then read each file and bind records using cbind() after checking the number of records in each file are consistant in folder "test" and "train".

5. A column name variable is created "label_df", based on the number of columns required for the test and train dataset and assigned to merged dataset train_test_df.

6. As project requirements, the next step is to narrow down the train_test_df dataset to only inlcude feature variables contains "mean()" &"std()". grepl function is used to create narrow_df.

7. A merge function is used to provide descriptive activity name to the activity code in the narrow_df dataset and the new dataset is named tidy_df.

8. Finally to calculate the mean of all variables grouping by subject and activity code, aggregate function is used against the tidy_df and final result is saved under name mean_dataset and write.table function is used to create the mean_dataset in txt file.

## The Code Book
Code book is included as part of the project file. It describes variables used in the analysis, include it's type and purpose.
