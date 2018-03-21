libname sdat 'C:\Users\ndyet_000\Desktop\Class Folders\Spring 2016\ERHS 642\Data';

/*data sdat.LOWBWT_altered; set LOWBWT_altered; run;*/

data ICU; set sdat.ICU; 


 if 16<=SYS<110 then s=1;
 else if 110<=SYS<130 then s=2;
 else if 130<=SYS<=150 then s=3;
 else if 150<SYS<=256 then s=4; 

   if s=1 then do; s1=0; s2=0; s3=0; end;
 else if s=2 then do; s1=1; s2=0; s3=0; end;
 else if s=3 then do; s1=0; s2=1; s3=0; end;
 else if s=4 then do; s1=0; s2=0; s3=1; end; 


 run;

proc print data = ICU; run;

proc freq data = ICU;
tables INF*STA;
run;

*95%CI = 5.06, 1.23;

proc logistic descending data = ICU;
model STA=INF;
run;

proc freq data = ICU;
tables RACE*STA;
run;

proc logistic descending data = ICU;
model STA=RACE;
run;

proc logistic descending data=ICU;
 class race/param=ref ref=first;
 model STA=race;
 contrast 'Black vs. White' race 1 0/estimate=exp;
 contrast 'Other vs. White' race 0 1/estimate=exp;
 contrast 'Other vs. Black' race -1 1/estimate=exp;
run;

proc univariate data = ICU;
var SYS;
run;





proc logistic descending data=ICU;
model STA=SYS/clodds=Wald;
units SYS=20 50;
run;

