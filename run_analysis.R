
###Installing necessary packages

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
###Downloading the raw dataset

fileurl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
destfile<-"SmartLabRawData.zip"
if (!file.exists(destfile)){
        download.file(fileurl,destfile=destfile)
        unzip(destfile)
}

######Step 1

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

#######Step 2

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

#######Step 3

activitynames<-sub("_","-",as.character(activity[,2]))
activitynames<-sub("STAIRS$","",activitynames)
extract$`Test Labels`<-factor(extract$`Test Labels`,labels=activitynames)


#######Step 4

names(extract)[1:66]<-feat[totalmask] #final inciso 4
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


########Step 5

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
tidy<-data.frame(tidy)
names(tidy)<-c('Subject','Activity',paste0("Mean of the ",names(extract[1:66])))
tidy<-arrange(tidy,Subject,Activity)
tidy$Activity<-factor(tidy$Activity,labels=act)

setwd('..')
write.table(tidy,'tidydata.txt',row.name=F)




