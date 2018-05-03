require(moments)

#large sample use n = 10000
#small sample use n = 50
x = rnorm(10000,)
x2 = rnorm(10000,)
xx2 = x*x2

hist(x)
hist(x2)
hist(xx2)

#change y lim to ~half of n
hist(x2, xlim = c(-5, 5), ylim = c(0, 5000), col = rgb (1, 0, 0, .5)
  #"red"
  )
hist(x, col = rgb(0, 0, 1, .5),
       #"blue", 
       add=T)
hist(xx2, col = rgb(0, 1, 0, .5),
       #"green", 
       add=T)
summary(x)
summary(x2)
summary(xx2)
quantile(x, c(.05, .95))
quantile(x2, c(.05, .95))
quantile(xx2, c(.05, .95))

