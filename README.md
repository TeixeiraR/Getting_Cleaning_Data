#Getting and Cleaning Data Course Project

Preparing tidy data from the accelerometers from the Samsung Galaxy S smartphone for future analysis.

##Contents.
*CodeBook.md that describes the experiment data and the steps taken to summarize the data;
*run_analysis.R the scrip that prepare some of the data from the accelerometers from the Samsung Galaxy S smartphone for future analysis;
*README.md this file.

##How to start
1. Read the file codeBook.md to better understand the data and expirement;
2. Get the raw input data to use in the script at 
	https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
3. Make sure the data is downloaded and extracted to a folder in the project directory called UCI HAR Dataset.
3. Before run the script make sure that you have install in the R the library "reshape2".
3. Run the scrip run_analysis.R, using source("run_analysis.R")


## Aims of run the run_analysis.R script
*Merges the training and the test sets to create one data set.
*Extracts only the measurements on the mean and standard deviation for each measurement.
*Uses descriptive activity names to name the activities in the data set
*Appropriately labels the data set with descriptive variable names.
*From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Name of the files: TidyData.csv and TidyData2.txt, respectively.

Please see the file codeBook.md for more information about how the mentioned script works.

