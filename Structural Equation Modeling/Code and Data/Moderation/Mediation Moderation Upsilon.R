install.packages("foreign")
require(foreign)
#import full spss file
##note: changed all to numerica and coded missings as -999 in spss
tri.data <- read.spss("/Users/markprince/Dropbox/Tri-Ethnic Center/triethnic 092216.sav", 
                      to.data.frame=TRUE,
                      use.value.labels=FALSE)

tri.df = data.frame(tri.data)

attach(tri.df)
#export subset
tri.red <- tri.df[, c("q3", "v59b", "v61b", "q22", "q53b", "MJ_rc")]

write.table(tri.red, file = "/Users/markprince/Dropbox/Teaching/Spring 2017/mplus examples for SEM/moderation example/tri_red.csv", 
            sep=",", row.names=FALSE, col.names=FALSE)

#NOTE: IF YOU WANT COLUMN HEADERS IN .CSV FILE DROP THE col.names argument

detach(tri.df)


###-999 to NA
tri.up = data.frame(tri.red)
# select rows where v1 is -999 and recode column v1 
tri.up$q3[tri.up$q3==-999] <- NA
tri.up$v59b[tri.up$v59b==-999] <- NA
tri.up$v61b[tri.up$v61b==-999] <- NA
tri.up$q22[tri.up$q22==-999] <- NA
tri.up$q53b[tri.up$q53b==-999] <- NA
tri.up$MJ_rc[tri.up$MJ_rc==-999] <- NA

# create new dataset without missing data 
tri.up.na <- na.omit(tri.up)
tri.up.na.df = as.data.frame(tri.up.na)

# using subset function 
tri.male <- subset(tri.up.na.df, q3 == 1)
tri.female <- subset(tri.up.na.df, q3 == 2)

require(MASS)
require(MBESS)

attach(tri.up.na.df)

Mdn = mediation(v59b, q53b, MJ_rc)
Min = mediation(v61b, q53b, MJ_rc)
Mdn
Min 

#NOTE: I keep getting a parsing error - I emailed Mark L.
Udn = upsilon(tri.up.na.df, v59b, q53b, MJ_rc)
Uin = upsilon(tri.up.na.df, v61b, q53b, MJ_rc)
Udn
Uin

detach(tri.up.na.df)

##Male
attach(tri.male)

Mdn_male = mediation(v59b, q53b, MJ_rc)
Min_male = mediation(v61b, q53b, MJ_rc)
Mdn_male
Min_male 


detach(tri.male)

##Female
attach(tri.female)

Mdn_female = mediation(v59b, q53b, MJ_rc)
Min_female = mediation(v61b, q53b, MJ_rc)
Mdn_female
Min_female 


detach(tri.female)

##great package for visualizing regressions and interactions
install.packages("visreg")
library(visreg)
fit <- lm(MJ_rc ~ v59b + v61b + q53b, data=tri.up.na.df)
visreg(fit)

fit2 <- lm(MJ_rc ~ v59b + q3 + v59b*q3, data=tri.up.na.df )
visreg(fit2, "v59b", by="q3")
##much nicer
visreg(fit2, "v59b", by="q3", overlay=TRUE, partial=FALSE)

#to make a proper figure and save as a png file
png("/Users/markprince/Dropbox/Teaching/Spring 2017/mplus examples for SEM/moderation example/tri.dn.q3.png", width=7, 
    height=3, units="in", res=1200, pointsize=7)
visreg(fit2, "v59b", by="q3", overlay=TRUE, partial=FALSE)
dev.off()
