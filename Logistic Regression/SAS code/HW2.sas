libname sdat 'C:\Users\ndyet_000\Desktop\Class Folders\Spring 2016\ERHS 642\Data';

data sdat.icu_altered; set icu_altered; run;

data icu_altered; set sdat.icu_altered;

* Question 1;
 if 0<age<48.5 then a=1;
 else if 48.5<=age<=65 then a=2;
 else if 65<age<=72 then a=3;
 else if 72<=age<=92 then a=4; 

  if a=1 then do; a1=0; a2=0; a3=0; end;
 else if a=2 then do; a1=1; a2=0; a3=0; end;
 else if a=3 then do; a1=0; a2=1; a3=0; end;
 else if a=4 then do; a1=0; a2=0; a3=1; end; 

run;



proc print data=icu_altered; run;


proc univariate data=icu_altered; var age; run;

* Question 1a;
proc freq data=icu_altered; tables a; run;

*Question 1b; 
proc freq data=icu_altered; tables a1 a2 a3; run;

* 1.c;
proc logistic descending data=icu_altered; model sta=a1 a2 a3; run; 

* 1.d;
proc logistic descending data=icu_altered; class a/param=ref ref=first; model sta=a;
run; 


* Question 2;
* 2-2.d, e, f;
proc logistic descending data=icu_altered;
 class race/param=ref ref=first;
 model sta=age can cpr inf race;
run; 

* 2-2.f;
proc logistic descending data=icu_altered;
 model sta=age cpr;
run; 

data pval;
 p1=1-probchi(4.5649,4);
run; 

proc print data=pval; run;

