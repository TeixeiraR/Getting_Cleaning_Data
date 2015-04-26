################## run_analysis.R Script #############

		## install packakes ##

#library(reshape2)
		
		##Read files 
actlabelfile<-read.table("./UCI HAR Dataset/activity_labels.txt", sep="")
colnames(actlabelfile)=c("ActivityID","Activity")

featfile<-read.table("./UCI HAR Dataset/features.txt",sep="",colClasses = c("character"))
Xtrain<-read.table( "./UCI HAR Dataset/train/X_train.txt",sep="")
Ytrainfile<-read.table("./UCI HAR Dataset/train/y_train.txt",sep="")
subjectTrainfile<-read.table("./UCI HAR Dataset/train/subject_train.txt",sep="")
Xtest<-read.table("./UCI HAR Dataset/test/X_test.txt",sep="")
Ytestfile<-read.table("./UCI HAR Dataset/test/y_test.txt",sep="")
subjectTestfile<-read.table("./UCI HAR Dataset/test/subject_test.txt",sep="")

	## Merges the training and the test sets to create one data set ##

TrainTestData<-rbind(Xtrain,Xtest)
activity<-rbind(Ytrainfile,Ytestfile)
subjects<-rbind(subjectTrainfile,subjectTestfile)
Data<-cbind(cbind(activity,subjects),TrainTestData)
names(Data)<-c("ActivityID","SubjectID",featfile$V2)


	## Extracts only the measurements on the mean and standard deviation for each measurement ##

Data_AskedMeas<- Data[,grepl("mean|std|Subject|ActivityID", names(Data))]


	## Uses descriptive activity names to name the activities in the data set ##

mergedData<- merge(actlabelfile,Data_AskedMeas, by.x= "ActivityID",by.y = "ActivityID", )

	
	## Appropriately labels the data set with descriptive names ##

# Remove parentheses and hyphens of colnames 
#and Fix the double Body in colnames

names(mergedData) <- gsub('\\(|\\)',"",names(mergedData), perl = TRUE)
names(mergedData)<-gsub("-", "_", names(mergedData), perl = TRUE)
names(mergedData)<-gsub("BodyBody", "Body", names(mergedData))

# More understandble names
names(mergedData) <- gsub('^t',"Time.",names(mergedData))
names(mergedData) <- gsub('^f',"Freq.Domain.",names(mergedData))
names(mergedData) <- gsub('\\_mean',".Mean",names(mergedData))
names(mergedData) <- gsub('\\_std',".Stand.Dev.",names(mergedData))


TidyData<-mergedData[,2:82]
if(!file.exists("./data")){dir.create("./data")}	
write.csv(TidyData, "./data/TidyData.csv")
	
	
	##From the data set in step 4,  
	##creates a second,independent tidy data set
	## with the average of each variable for each activity and each subject.


mes.var<-names(TidyData)[3:81]
TidyDataMelt<-melt(TidyData, id=c("SubjectID","Activity"), measure.vars=mes.var)
TidyData2<-dcast(TidyDataMelt,SubjectID+Activity~variable,mean)
if(!file.exists("./data")){dir.create("./data")}
write.table(TidyData2, file = "./data/TidyData2.txt",row.names=FALSE)
