libname sdat 'C:\Users\ndyet_000\Desktop\Class Folders\Spring 2016\ERHS 642\Data';
data chdage; set sdat.chdage;

* Create a categorical age variable with 4
categories *;
if 20<=age<=30 then a=1;
else if 30< age<=40 then a=2;
else if 40< age<=50 then a=3;
else if 50< age<=70 then a=4;

* Create the square root of age *;
sqrt_age=sqrt(age);
* Create the natural log of age *;
ln_age = log(age);
* Create age squared *; 
age_sq=age**2;

run;

proc print data = chdage; run;

proc print data=chdage;
var a sqrt_age ln_age age_sq;
run;


proc means data=chdage; var age; run;

*n = n mean = mean median = median max = max std = standard deviation;
proc means data=chdage
n mean min median max std;
var age; run;

proc univariate data=chdage; var age; run;

proc sort data=chdage; by descending chd; run;
proc freq data=chdage order=data;
tables chd a a*chd;
run;

proc logistic descending data=chdage;
model chd=age; 
run;

axis1 minor=none label=(f=swiss h=2.5 'Age');
axis2 minor=none label=(f=swiss h=2.5 a=90 'Coronary
Heart Disease');
goptions FTEXT=swissb HTEXT=2.0 HSIZE=6 in
VSIZE=6 in;
symbol1 c=black v=dot;
symbol2 c=black v=circle;
symbol3 c=black v=star h=2;

proc gplot data=chdage;
plot chd*age/haxis=axis1 vaxis=axis2;
run; quit;

proc logistic descending data=chdage;
model chd=age;
output out=pdat p=pihat;
run;
proc print data=pdat;
var age CHD pihat;
run;

proc gplot data=pdat;
plot (chd pihat)*age/overlay haxis=axis1 vaxis=axis2; run; quit;


* Creating our own pi-hat; 

proc print data=chdage; run;
proc sort data=chdage; by a; run;
proc means noprint mean data=chdage;

by a;
var chd;
output out=s_means mean=proportion;
run;

data s_means;
set s_means;
if a=1 then age=25;
else if a=2 then age=35;
else if a=3 then age=45;
else if a=4 then age=60;
drop _type_ _freq_ a;
run;
proc print data=s_means; run;

data plotdat;
merge pdat s_means;
by age;
run;
proc print data=plotdat;
var id age chd pihat proportion;
run;


proc gplot data=plotdat;
plot (chd pihat proportion)*age
/overlay haxis=axis1 vaxis=axis2;
run; quit;
