libname sdat 'C:\Users\ndyet_000\Desktop\Class Folders\Spring 2016\ERHS 642\Data';
data ICU; set sdat.ICU;

data ICU; set sdat.ICU;

if 15<=age<=24 then a=1;
else if 25<= age<=34 then a=2;
else if 35<= age<=44 then a=3;
else if 45<= age<=54 then a=4;
else if 55<= age<=64 then a=5;
else if 65<= age<=74 then a=6;
else if 75<= age<=84 then a=7; 
else if 85<= age<=94 then a=8;

* Create the natural log of SYS *;
ln_SYS = log(SYS);
* Create SYS squared *; 
SYS_sq=SYS**2;
run;

proc print data = ICU;
var ln_SYS SYS_sq;
run;


proc univariate data=ICU; var SYS; run;
proc univariate data=ICU; var ln_SYS; run;


proc freq data=ICU order=data;
tables RACE RACE*STA;
run;


proc logistic descending data=ICU;
model STA=age;
output out=pdat p=pihat;
run;
proc print data=pdat;
var AGE STA pihat;
run;

axis1 minor=none label=(f=swiss h=2.5 'AGE');
axis2 minor=none label=(f=swiss h=2.5 a=90 'STA');
goptions FTEXT=swissb HTEXT=2.0 HSIZE=6 in
VSIZE=6 in;
symbol1 c=black v=dot;
symbol2 c=black v=circle;
symbol3 c=black v=star h=2;

proc gplot data=ICU;
plot STA*AGE/haxis=axis1 vaxis=axis2;
run; quit;



proc logistic descending data=ICU;
model STA=AGE;
output out=pdat p=pihat;
run;
proc print data=pdat;
var AGE STA pihat;
run;

proc sort data=pdat; 
by age; 
run;

proc means noprint data=icu; 
by a;
var sta;
output out=sta_means mean=stamean;
run;

proc print data=sta_means;
run;


data sta_means;  
set sta_means;
*now assigning actual ages that equal the midpoint of the categories to the new data set;
if a=1 then age=20;
else if a=2 then age=30;
else if a=3 then age=40;
else if a=4 then age=50;
else if a=5 then age=60;
else if a=6 then age=70;
else if a=7 then age=80;
else if a=8 then age=90; 
drop _type_ _freq_ a;
run;
proc print data=sta_means;
run;

proc gplot data=sta_means;
plot (stamean)*age
run;
quit;

proc logistic descending data=icu;
model sta=age;
*sta=response or independent var, age=dependent var;
output out=lr_data p=pihat;
run;

proc print data=lr_data; run;
proc print data=sta_means; run;

data plotdat;
merge pdat sta_means;
*merge 2 new datasets;
run;

proc print data= plotdat;
run;

proc gplot data=plotdat;
plot (sta stamean)*age /overlay haxis=axis1 vaxis=axis2;
run;
quit;

proc gplot data=plotdat;
*plot variables from the new merged dataset, along with sta;
plot (sta stamean pihat)*age /overlay haxis=axis1 vaxis=axis2;
run;
quit;


proc logistic descending data=icu;
model sta=age/cl;
*sta=response or independent var, age=dependent var;
output out=lr_data p=pihat;
run;

proc logistic descending data=icu;
model sta=age/clodds=both;
*model confidence intervals; 
run;

