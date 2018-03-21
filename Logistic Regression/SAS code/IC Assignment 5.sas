libname sdat 'C:\Users\ndyet_000\Desktop\Class Folders\Spring 2016\ERHS 642\Data';

/*data sdat.LOWBWT_altered; set LOWBWT_altered; run;*/

data ICU; set sdat.ICU; 

proc print data = ICU;
run;

proc logistic descending data = ICU;
model STA= INF CPR INF*CPR;
run;

*No INteraction;

proc logistic descending data=ICU;
model STA=INF CPR INF*CPR;

contrast 'both vs. neither' INF 1 CPR 1 CPR*INF 1/estimate=exp;
contrast 'INF vs. neither' INF 1 CPR 0 CPR*INF 0/estimate=exp;
contrast 'CPR vs. neither' INF 0 CPR 1 CPR*INF 0/estimate=exp;
run;

*Evidence of synergistic multiplicative 2*2 < 12;
*Look at the confidence intervals, there is a problem with power. That is why we experiencing non-significance in the first test;

proc freq data = ICU;
tables INF CPR STA INF*STA;
run;

proc genmod descending data=ICU;

model STA = INF CPR CPR*INF/dist=bin link = identity;
output out=pdat p=phat;
run;
proc univariate data=pdat;
var phat;
run;

