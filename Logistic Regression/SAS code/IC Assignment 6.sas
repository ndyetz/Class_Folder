libname sdat 'C:\Users\ndyet_000\Desktop\Class Folders\Spring 2016\ERHS 642\Data';

/*data sdat.BURN1000; set BURN1000; run;*/

data BURN1000; set sdat.BURN1000; 

if 0<age<=10.8 then a=1;
else if 10.8<age<=31.95 then a=2;
else if 31.95<age<=51.25 then a=3;
else if 51.25<age<=89.7 then a=4;

run;

proc print data=burn1000;
var a;
run;
proc univariate data = BURN1000;
var AGE;
run;

proc logistic descending data=BURN1000;
model DEATH= AGE/clodds=wald;
units AGE=10;
run;

proc univariate data = Burn1000; 
var AGE;
run;


proc logistic descending data=burn1000;
effect AGEs=spline(AGE/knotmethod=list(10.8 31.95 51.25)
basis=tpf(noint) degree=0);
model DEATH=AGEs;
effectplot;
run;

proc logistic descending data=burn1000;
effect AGEs=spline(AGE/knotmethod=list(10.8 31.95 51.25)
basis=tpf(noint) degree=1);
model DEATH=AGEs;
effectplot;
run;


proc logistic descending data=burn1000;
effect AGEs=spline(AGE/knotmethod=list(10.8 31.95 51.25)
basis=tpf(noint) naturalcubic);
model DEATH=AGEs;
effectplot;
run;

proc logistic descending data=burn1000;
model DEATH=a/clodds=wald;
run;
