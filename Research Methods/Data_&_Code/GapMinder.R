#Class #1 08.21.17

rm(list = ls())

#install.packages("tidyverse")

library(tidyverse)


gm <- read_csv(file="gapminder.csv")


names(gm) #reads the you the names in the dataframe
str(gm) #str = structure #character variables and factor variables are synonyms
head(gm) #prints out the top 6 rows of data (6 is default)
tail(gm) #prints the last 6 of the data set (6 is default)
head (gm, n=10) #n= 10 represents how many rows of data you want to see. 
tail(gm, n=10) #We use commas to separate commands




summarize_if(gm, is.numeric, funs(mean)) ##"is.numeric makes it so it only summarizes the numeric variables
    #(mean) <- gives us the means, you can also find the median standard deviation etc.

#NOTE ggplot was downloaded with our tidy verse package
ggplot(gm, aes(x=lifeExp)) + geom_density() #<- we created a density graph here. 
    #graph summary: as you can see, 


