#Class #1 08.21.17

rm(list = ls())

#install.packages("tidyverse")

library(tidyverse)


anscombe <- read_csv(file="iris.csv")
#read_xls(file="anscombe.xls")


names (anscombe) #reads the you the names in the dataframe
str   (anscombe) #str = structure #character variables and factor variables are synonyms
head  (anscombe) #prints out the top 6 rows of data (6 is default)
tail  (anscombe) #prints the last 6 of the data set (6 is default)
head  (anscombe, n=10) #n= 10 represents how many rows of data you want to see. 
tail  (anscombe, n=10) #We use commas to separate commands


