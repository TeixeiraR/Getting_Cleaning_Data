#Code Book


The data was collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones  

#About the Raw Data

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.



#The run_analysis.R script process

The script run_analysis.R script reads in the processed experiment data and performs a number of steps to get it into summary form.
First open the necessary files in order to join in column(s) in one data set:
* the train and test data sets.
* the subjects ID that was volunteers of the training and test data;
* the activities ID applied to the subjects of each group.
Second names de columns of the obtained data set.
Third and fourth, select the columns of the data that use mean or std for the measures obtained and fix and put this columns names in a more undertandble meaning.
After is merged the this data set with the file that have the identification of the activity ID by the respective name activity and is took of this column of the Activity ID of the data set, creating the first file, in csv format, of tidy data named TidyData.

Finally, a more tiny data set is create in order "reorganize" the previous one that have the columns subjectID, Activity, a new one that have all the names of the other columns and other that have all the respective measures.This new data set is use to obtain the mean of each measures by each subject and activity performed. The file with this data set is named TidyData2 (and it will be written in txt fromat).


#Some consideration about the columns variables in the files

The others columns are the mean or the standard deviation of the mesuares mentioned above in the section About The Raw Data and also described in features_info.txt. 

Activity   - the name of the activity performed by the volunter
SubjectID - the indentification of the experiment volunter.
(The other columns are described bellow and for a more full description of them please read the features_info file.)                          
Time.BodyAcc.Mean_X
Time.BodyAcc.Mean_Y                  
Time.BodyAcc.Mean_Z
Time.BodyAcc.Stand.Dev._X            
Time.BodyAcc.Stand.Dev._Y
Time.BodyAcc.Stand.Dev._Z             
Time.GravityAcc.Mean_X
Time.GravityAcc.Mean_Y              
Time.GravityAcc.Mean_Z
Time.GravityAcc.Stand.Dev._X         
Time.GravityAcc.Stand.Dev._Y
Time.GravityAcc.Stand.Dev._Z
Time.BodyAccJerk.Mean_X
Time.BodyAccJerk.Mean_Y               
Time.BodyAccJerk.Mean_Z
Time.BodyAccJerk.Stand.Dev._X        
Time.BodyAccJerk.Stand.Dev._Y
Time.BodyAccJerk.Stand.Dev._Z        
Time.BodyGyro.Mean_X
Time.BodyGyro.Mean_Y                 
Time.BodyGyro.Mean_Z
Time.BodyGyro.Stand.Dev._X           
Time.BodyGyro.Stand.Dev._Y
Time.BodyGyro.Stand.Dev._Z            
Time.BodyGyroJerk.Mean_X
Time.BodyGyroJerk.Mean_Y              
Time.BodyGyroJerk.Mean_Z
Time.BodyGyroJerk.Stand.Dev._X        
Time.BodyGyroJerk.Stand.Dev._Y
Time.BodyGyroJerk.Stand.Dev._Z        
Time.BodyAccMag.Mean
Time.BodyAccMag.Stand.Dev.          
Time.GravityAccMag.Mean
Time.GravityAccMag.Stand.Dev.         
Time.BodyAccJerkMag.Mean
Time.BodyAccJerkMag.Stand.Dev.       
Time.BodyGyroMag.Mean
Time.BodyGyroMag.Stand.Dev.         
Time.BodyGyroJerkMag.Mean
Time.BodyGyroJerkMag.Stand.Dev.      
Freq.Domain.BodyAcc.Mean_X
Freq.Domain.BodyAcc.Mean_Y            
Freq.Domain.BodyAcc.Mean_Z
Freq.Domain.BodyAcc.Stand.Dev._X    
Freq.Domain.BodyAcc.Stand.Dev._Y
Freq.Domain.BodyAcc.Stand.Dev._Z     
Freq.Domain.BodyAcc.MeanFreq_X
Freq.Domain.BodyAcc.MeanFreq_Y      
Freq.Domain.BodyAcc.MeanFreq_Z
Freq.Domain.BodyAccJerk.Mean_X       
Freq.Domain.BodyAccJerk.Mean_Y
Freq.Domain.BodyAccJerk.Mean_Z     
Freq.Domain.BodyAccJerk.Stand.Dev._X
Freq.Domain.BodyAccJerk.Stand.Dev._Y  
Freq.Domain.BodyAccJerk.Stand.Dev._Z
Freq.Domain.BodyAccJerk.MeanFreq_X   
Freq.Domain.BodyAccJerk.MeanFreq_Y
Freq.Domain.BodyAccJerk.MeanFreq_Z  
Freq.Domain.BodyGyro.Mean_X
Freq.Domain.BodyGyro.Mean_Y          
Freq.Domain.BodyGyro.Mean_Z
Freq.Domain.BodyGyro.Stand.Dev._X    
Freq.Domain.BodyGyro.Stand.Dev._Y
Freq.Domain.BodyGyro.Stand.Dev._Z    
Freq.Domain.BodyGyro.MeanFreq_X
Freq.Domain.BodyGyro.MeanFreq_Y      
Freq.Domain.BodyGyro.MeanFreq_Z
Freq.Domain.BodyAccMag.Mean          
Freq.Domain.BodyAccMag.Stand.Dev.
Freq.Domain.BodyAccMag.MeanFreq      
Freq.Domain.BodyAccJerkMag.Mean
Freq.Domain.BodyAccJerkMag.Stand.Dev.
Freq.Domain.BodyAccJerkMag.MeanFreq
Freq.Domain.BodyGyroMag.Mean          
Freq.Domain.BodyGyroMag.Stand.Dev.
Freq.Domain.BodyGyroMag.MeanFreq     
Freq.Domain.BodyGyroJerkMag.Mean
Freq.Domain.BodyGyroJerkMag.Stand.Dev.
Freq.Domain.BodyGyroJerkMag.MeanFreq
