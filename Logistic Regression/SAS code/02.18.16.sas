libname sdat 'C:\Users\ndyet_000\Desktop\Class Folders\Spring 2016\ERHS 642\Data';

data sdat.MYOPIA; set MYOPIA; run;

data  MYOPIA; set sdat.MYOPIA; run;

proc logistic descending data=myopia;
model myopic=gender;
run;

proc logistic descending data=myopia;
model myopic=gender spheq gender*spheq; run;

proc logistic descending data=myopia;
model myopic=gender spheq; run;
