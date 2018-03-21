libname sdat 'C:\Users\ndyet_000\Desktop\Class Folders\Spring 2016\ERHS 642\Data';
data icu_missing;
set sdat.icu;
if id < 184 then age=.;
run;

proc print data=icu_missing; run;

proc logistic descending data=icu_missing;
model STA=SYS AGE; run;

proc logistic descending data=icu_missing;
model STA=SYS; run;


data pval;
p=1-probchi(3.9172,1);
run;
proc print data=pval; run;

proc logistic descending data=icu_missing;
where age ne .;
model sta=sys;
run;

data pval2;
p=1-probchi(6.6852,1);
run;
proc print data=pval2; run;
