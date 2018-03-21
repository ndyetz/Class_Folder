libname sdat 'C:\Users\ndyet_000\Desktop\Class Folders\Spring 2016\ERHS 642\Data';

data chdage; set sdat.chdage; run;

/*
proc contents position data=chdage; run
proc print data=chdage; run;
data sdat.chdage; set chdage; run; 
*/

proc logistic descending data=ICU;
 model chd=age;
run;



data chdage; set sdat.chdage; run;
data logistic.test;
input lung_cancer smoking;
cards;
1 1
0 0
1 0
run;
proc print data=test;
run;

data test;
set logistic.test;

data logistic.chdage;
set chdage;
run;


libname sdat 'C:\Users\ndyet_000\Desktop\Class Folders\Spring 2016\ERHS 642\Data';
data ICU; set sdat.ICU; run;
proc logistic descending data=chdage;
model chd=age;
run;

proc contents position data=ICU run;
proc print data=ICU; run;

libname sdat 'C:\Users\ndyet_000\Desktop\Class Folders\Spring 2016\ERHS 642\Data';
data sdat.ICU; set ICU; run;

