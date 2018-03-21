libname sdat 'C:\Users\ndyet_000\Desktop\Class Folders\Spring 2016\ERHS 642\Data';

/*data sdat.LOWBWT_altered; set LOWBWT_altered; run;*/

data LOWBWT_altered; set sdat.LOWBWT_altered;

*Question 2(ii);
 if race=1 then do; r1=0; r2=0; end;
 else if race=2 then do; r1=1; r2=0; end;
 else if race=3 then do; r1=0; r2=1; end;

 run;

proc print data = LOWBWT_altered; run;

Proc freq data=LOWBWT_altered;
tables race; 
run;

* Question 1 (i);

proc sort data=lowbwt_altered; by race descending low; run;
proc freq data=lowbwt_altered order=data;
 tables race*low;
run; 


* Question 2 (i);

proc logistic descending data=lowbwt_altered;
 class race/param=ref ref=first;
 model low=race;
 contrast 'Black vs. White' race 1 0/estimate=exp;
 contrast 'Other vs. White' race 0 1/estimate=exp;
 contrast 'Other vs. Black' race -1 1/estimate=exp;
run; 

proc logistic descending data=lowbwt_altered;
 model low=r1 r2;
 contrast 'Black vs. White' r1 1 r2 0/estimate=exp;
 contrast 'Other vs. White' r1 0 r2 1/estimate=exp;
 contrast 'Other vs. Black' r1 -1 r2 1/estimate=exp;
run; 
