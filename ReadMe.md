---
title: "Getting and Cleaning Data Course Project"
author: "Esteban Rodriguez Llamazares"
date: "31 de octubre de 2017"
output: html_document
---
***
###(**Very**) Important Notes


* The script I submitted checks if you have downloaded the data (in the working directory) and the installed and loaded packages and if such actiuons have not already been made, the script does them for you. *Basically, just run source('run_analysis.R') and you will get the tidy data set* even if you haven't downloaded the data or installed the appropriate packages. The only packages it doesn't install are stats, graphics, grDevices, utils, datasets, methods and base which are the ones that are predetermined installed. 
* To fully understand the script and this instructions please read also the CodeBook, where a detailed description of each variable along with its units are provided.
* Once you have ran the script you'll be able to access the tidy dataset as *'tidy'*.
* The dataset is saved as *'tidydata.txt'*
* If you are reading the written file please use the following command to ensure the dataset has the proper format: *read.table('tidydata.txt',header = T)*

***
##Motivation

The purpose of this project is to prepare tidy data that can be used for later analysis. Along with this ReadMe.md file I am submitting: 

1) a tidy data set as described below, 
2) a link to a Github repository with my script for performing the analysis, and 
3) a code book that describes the variables, the data, and any transformations or work that I performed to clean up the data called CodeBook.md. 

A full description of the data is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

***
##Background Information for the Raw Data

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

***
#Script Description

>###Checking for packages

Firstly the script checks that the needed packages are installed and loaded, in case they are not, it installs and loads them.

```{r}
pack<-c('plyr','dplyr')
for (i in 1:2) {
  if ((pack[i] %in% installed.packages())==F){
    install.packages(pack[i])
    if (i==1){
      library(plyr)
    } else {
      library(dplyr)
    }
  } else if (pack[i] %in% (.packages())==F)
    if (i==1){
      library(plyr)
    } else {
      library(dplyr)
    }
}
```
>###Downloading the data

Then I assign a URL and the name of the downloaded file and look for it in the working directory. In case it doesn't exist, then it downloads the raw data and unzip the file onto this directory.

```{r}
fileurl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
destfile<-"SmartLabRawData.zip"
if (!file.exists(destfile)){
        download.file(fileurl,destfile=destfile)
        unzip(destfile)
}
```

>###Step 1 - Merging Tarin and Test datasets

The columns of following files are binded for both teh 'train' and the 'test' folders:

1. X_train/test: Data set that contains all the measures.
2. subject_train/test: Each row identifies the subject who performed the activity for each window sample
3. y_train/test: Identifies each row with the label (activity) that is performed.

After both the *'test'* and *'train'* datasets are complete, then the rows of both dataset are binded and the result is called *'alldata'*

```{r}
setwd('UCI HAR Dataset')
setwd('train')
        subtrain<-read.table('subject_train.txt')
        Xtrain<-read.table('X_train.txt')
        ytrain<-read.table('y_train.txt')
        train<-cbind(Xtrain,subtrain,ytrain)
setwd('..')
setwd('test')
        subtest<-read.table('subject_test.txt')
        Xtest<-read.table('X_test.txt')
        ytest<-read.table('y_test.txt')
        test<-cbind(Xtest,subtest,ytest)
setwd('..')
alldata<-rbind(train,test)
```


>###Step 2 - Extracting the mean and standard deviation of measurements

Firstly the names of the columns with the Subject information and the Activity Test labels are labeled for a simple understanding and organization of the dataset. The assignment explicitly asks to extract only the measurements on the mean and standard deviation for each measurement, and according to the feautures_info.txt file those variables (columns) would be classified with an "mean()" and "std()" label, but it appears that there is a "meanFreq()" label on which we are not interested so these variables should be tossed out. Then the features.txt file is read and 3 masks are made, two that select the columns with names containing "mean()" and "std()" and one with the one with "meanFreq()". After that a bit of boolena algebra is done (*'totalmask'*) and the select tool from the dplyr package is used to select the columns which have the desired characteristics plus the Subject and Test Labels columns and stores in the variable *'extract'*.  

```{r}
activity<-read.table('activity_labels.txt')
names(alldata)[dim(alldata)[2]]<-'Test Labels'
names(alldata)[dim(alldata)[2]-1]<-'Subject'
names(alldata)[1:561]<-sub("V","",names(alldata)[1:561])

feat<-read.table('features.txt')
feat<-as.character(feat[,2])
stdmask<-grepl("std",feat)
meanmask<-grepl("mean",feat)
meanmask2<-grepl("meanFreq",feat)
mask1<-(stdmask==T|(meanmask==T & meanmask2==F))
totalmask<-grep("TRUE",mask1)
extract<-select(alldata,totalmask,"Subject","Test Labels")
```
>###Step 3 - Use of descriptive activity names

The activity names where pretty much descriptive so only the names where changed as follows with the code below:

*Standing: unchanged
*Sitting: unchanged
*Laying: unchanged
*Walking: unchanged
*Walking_downstairs: Walking-down
*Walking_upstairs: Walking-up


```{r}
activitynames<-sub("_","-",as.character(activity[,2]))
activitynames<-sub("STAIRS$","",activitynames)
extract$`Test Labels`<-factor(extract$`Test Labels`,labels=activitynames)
```
After changing the names, the numbers used as Test Labels are changed for factors with the activity names as labels.

>###Step 4 -  Labeling *'extract'* with descriptive variable names

The abreviations where changed to the column names for a more descriptive name, so instead of having the *"X"* the column would have *"in the X axis"*, took of parenthesys, changed the prefix 
*"f"* and *"t"*, for the corresponding explanation, as stated in the "features_info.txt" file. Tecnically two vectors where creates, one with the regular expressions to be changed (*'inctot'*) and one with the matching expressions to substitute them (*'comtot'*). Later a for loop was used to substitute the expressions in the names of the columns.

```{r}
names(extract)[1:66]<-feat[totalmask] 
incnames<-c('^t','^f','-X$','-Y$','-Z$','\\)','\\(')
incnames2<-c('BodyBody','Body','Gravity','Acc','Mag','Gyro')
incnames3<-c('^(.*)-std','^(.*)-mean','Jerk')
inctot<-c(incnames,incnames2,incnames3)
comnames<-c('timely ','FFT of ','in the X axis','in the Y axis','in the Z axis',"","")
comnames2<-c('Body','body measure ','gravity measure ','in accelerator ','(magnitude) ','in gyroscope ')
comnames3<-c('Standard deviation of \\1','Mean of \\1','-jerk signals- ')
comtot<-c(comnames,comnames2,comnames3)
for (i in 1:length(comtot)){
        names(extract)[1:66]<-sub(inctot[i],comtot[i],names(extract)[1:66])
}
```

>###Step 5 -  Obtainig a tidy dataset with the mean  of each variable for each activity and each subject.

A new dataframe *"tidy"* was created so that the mean for each variable could be stored in it. This was made with a couple of for loops (one for the Subject and another one for the Activity made) and the mean of each column for the rows that match in subject and activity (in the *"extract"* dataset) is calculated and stored in the assigned row with all information in it. The first 2 columns of this new dataframe contain the Subject and Activity whilst the remaining 66 contain the mean for each of the variables contained in *"extract"* per subject per activity.

```{r}
tidy<-matrix(1:12240,ncol=68,nrow=180)
act<-unique(extract$`Test Labels`)
rownum<-0
for (i in 1:30){
  for (j in 1:length(act)){
    rownum<-rownum+1
    temp<-filter(extract,Subject==i,`Test Labels`==act[j])%>%
      select(1:66)%>%colMeans(na.rm=T)
    tidy[rownum,1:2]<-c(i,act[j])
    tidy[rownum,3:68]<-temp
  }
}
```
After that, the names of the columns was changed to include the expression "Mean of the" and the putput dataframe was sorted by Subject and Activity (in that order.)
```{r}
tidy<-data.frame(tidy)
names(tidy)<-c('Subject','Activity',paste0("Mean of the ",names(extract[1:66])))
tidy<-arrange(tidy,Subject,Activity)
tidy$Activity<-factor(tidy$Activity,labels=act)
```
Finally, the script goes up to the working (and original) directory and stores the *"tidy"* dataframe into a file named *'tidydata.txt'*.

```{r}
setwd('..')
write.table(tidy,'tidydata.txt',row.name=F)

```

***
##Acknowledgments


Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

Special thanks to David Hood and the post in the following link:
https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.





