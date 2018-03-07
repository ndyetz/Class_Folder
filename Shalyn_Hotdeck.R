
install.packages("HotDeckImputation")
library(HotDeckImputation)


#########ignore the stuff below, I am just creating a dataset call "Y"
 
#This is just creating a random dataset for an example -Neil
set.seed(421)

#Generate matrix of random integers
Y<-matrix(sample(0:9,replace=TRUE,size=6*3),nrow=6)

#generate 6 missing values, MCAR, in all but the first row
Y[-1,][sample(1:12,size=6)]<-NA

###############"Y" Matrix created##### 
###Notice the missing values. There are missing values.


#The next code is using the "impute.mean" function. which uses our Y dataset and fills the missing values and turns them into the column mean. 
#It is stored in the data matrix called "NewData"

#Impute the colMeans of Y
NewData <- impute.mean(DATA=Y)
