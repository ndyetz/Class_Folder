##simple upsilon test
exdata <- read.table("/Users/Mark.Prince/Dropbox/Teaching/Spring 2017/mplus examples for SEM/mediation example/ex3.11.dat",)
names(exdata)[1]<-paste("y1")
names(exdata)[2]<-paste("y2")
names(exdata)[3]<-paste("y3") 
names(exdata)[4]<-paste("x1")
names(exdata)[5]<-paste("x2")
names(exdata)[6]<-paste("x3") 

ex.data <- as.data.frame(exdata)


require(MASS)
require(MBESS)

x1y1y3 = mediation(ex.data$x1, ex.data$y1, ex.data$y3, conf.level = 0.95)
x1y1y3
x1y2y3 = mediation(ex.data$x1, ex.data$y2, ex.data$y3, conf.level = 0.95)
x1y2y3

#mediation.effect.bar.plot(ex.data$x1, ex.data$y1, ex.data$y3)


#upsilon will only work with data provided in the example
#the upsilon paper isn't published
# Generate data for example 1 and 2.
X<-matrix(c(1,.4,.2,.3,
            .4,1,.4,.1,
            .2,.4,1,.3,
            .3,.1,.3,1),4,4,byrow=TRUE)
data<-mvrnorm(500,c(0,0,0,0),X,empirical=TRUE)
colnames(data)<-c('x','m1','m2','y')
data <- as.data.frame(data)
#3 Example 1; three variable mediation; simple mediation model.
x<-'x'
m<-'m1'
y<-'y'
upsilon(data,x,m,y)

Y<-matrix(c(ex.data$x1, ex.data$y1, ex.data$y3), 500, 3, byrow=TRUE)
dataY <- Y
colnames(dataY)<-c('x1', 'y1', 'y3')
dataY <- as.data.frame(dataY)
x1 <- 'x1'
y1 <- 'y1'
y3 <- 'y3'
upsilon(dataY, x1, y1, y3)
