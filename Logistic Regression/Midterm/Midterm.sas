libname sdat 'C:\Users\ndyet_000\Desktop\Class Folders\Spring 2016\ERHS 642\Data';
*Question 1;

/*data sdat.APS; set APS; run;*/



data APS; set sdat.APS; 
*Question 2;

if  PLACE=0 then PLACE2=0;
else if  PLACE=1 then PLACE2=0;
else if  PLACE=2 then PLACE2=1;
else if  PLACE=3 then PLACE2=1;

*question 11;


if 0=<Neuro<3 then NEURO_D=0;
else if Neuro=3 then Neuro_D=1;

/* Question 12 
This makes sense because now we can make a proper 
assessmnet, as mild and moderate are not nearly as bad as severe*/

/*
if 0<=LOS<80 then x_c=1;
else if 80<=LOS<160 then x_c=2;
else if 160<=LOS<240 then x_c=3;
else if 240<=LOS<320 then x_c=4;
*/

if 0<=LOS<20 then x_c=1;
else if 20<=LOS<40 then x_c=2;
else if 40<=LOS<320 then x_c=3;

/*
if 0<=LOS<20 then x_c=1;
else if 20<=LOS then x_c=2;
*/

run;


if 11=<AGE<12 then AGE2=11;
else if 12=<AGE<13 then AGE2=12;
else if 13=<AGE<14 then AGE2=13;
else if 14=<AGE<15 then AGE2=14;
else if 15=<AGE<16 then AGE2=15;
else if 16=<AGE<17 then AGE2=16;
else if 17=<AGE<18 then AGE2=17;

run;

proc print data=APS;
var Neuro Neuro_D AGE AGE2;
run;

proc freq data=APS;
tables PLACE2*LOS;
run; 

proc freq data=APS;
tables PLACE2*X_C;
run;

proc print data=APS;
var PLACE PLACE2 los;
run;

proc sort data=APS;
by descending PLACE2;
run;

*Question 3;

proc univariate data=APS;
var los;
class PLACE2;
run;

proc means data=APS
mean std min q1 median q3 max;
var los AGE;
class PLACE2; 
    run;




*Question 4;

proc logistic descending data=APS;
model PLACE2=LOS;
output out=pdat p=pihat;
run;

proc print data=pdat;
var PLACE2 LOS pihat; run;



axis1 minor=none label=(f=swiss h=2.5 'LOS');
axis2 minor=none label=(f=swiss h=2.5 a=90 'Place2');
goptions FTEXT=swissb HTEXT=2.0 HSIZE=6 in
VSIZE=6 in;
symbol1 c=black v=dot;
symbol2 c=black v=circle;
symbol3 c=black v=star h=2;

proc gplot data=pdat;
plot (PLACE2 pihat)*LOS/overlay haxis=axis1 vaxis=axis2;
run; quit;


*question 5; 

proc logistic descending data=APS;
model Place2=LOS;
run;

Proc univariate data=APS;
var LOS;
run;

/*question 6; quartiles used as cutpoints. 
Not a good representation, need to do fp procedure;*/

proc logistic descending data=APS;
effect LOSs=spline(LOS/knotmethod=list(6 8 17)
basis=tpf(noint) degree=0);
model PLACE2=LOSs;
effectplot;
run;

proc logistic descending data=APS;
effect LOSs=spline(LOS/knotmethod=list(6 8 17)
basis=tpf(noint) degree=1);
model PLACE2=LOSs;
effectplot;
run;

proc logistic descending data=APS;
effect LOSs=spline(LOS/knotmethod=list(6 8 17)
basis=tpf(noint) naturalcubic);
model PLACE2=LOSs;
effectplot;
run;


** Macro for fp assessment **;
%macro fp1(dset,y,var,lb,p1);
%do %until(&p1=7);
%put ***** &p1 *****;
 ODS output FitStatistics = mfs;
 data fpdat; set &dset; if &var>&lb; pc=&p1/2;
 if pc ne 0 then F1=&var**pc; else if pc = 0 then F1=log(&var);
 run;
 proc logistic descending data=fpdat;
 model &y=F1; *-------------------F1 represents the variable being tested
for scale;
 run;
 data mfs; set mfs; if criterion='-2 Log L'; drop Criterion InterceptOnly;
run;
 proc append data=mfs base=tres; run;
 proc datasets; delete fpdat mfs; run;
 quit;
%let p1=%eval(&p1+1);
%end;
%mend fp1;
%fp1(APS,PLACE2,LOS,0,-4); *-----------Enter data set name, outcome
variable name and name of variable being tested for scale;
data pvals; do p1=-4 to 6; output; end; run;
data pvals; set pvals; p1=p1/2; run;
data tres; merge pvals tres; if p1 in (-1.5, 1.5, 2.5) then delete; run;
proc sort data=tres; by InterceptAndCovariates; run;
data tres; set tres; if _N_=1 or p1=1; run;
%macro fp2(dset,y,var,lb,p1,p2);
%do %until(&p1=7);
 %do %until(&p2=7);
%put ***** &p1 &p2 *****;
 ODS output FitStatistics = mfs;
 data fpdat; set &dset; if &var>&lb; pc1=&p1/2; pc2=&p2/2;
 if pc1 ne 0 then F1=&var**pc1; else if pc1 = 0 then F1=log(&var);
 if pc1 ne pc2 then do; if pc2 ne 0 then F2=&var**pc2;
 else if pc2 = 0 then F2=log(&var); end;
 if pc1=pc2 then F2=F1*log(&var);
 run;
 proc logistic descending data=fpdat;
 model &y=F1 F2; *------------F1 and F2 represent the variable being tested
for scale;
 run;
 data mfs; set mfs; if criterion='-2 Log L'; drop Criterion InterceptOnly;
run;
 proc append data=mfs base=tres2; run;
 proc datasets; delete fpdat mfs; run;
 quit;
 %let p2=%eval(&p2+1);
 %end;
%let p2=%eval(-4);
%let p1=%eval(&p1+1);
%end;
%mend fp2;
%fp2(APS,PLACE2,LOS,0,-4,-4); *-----------Enter data set name, outcome
variable name and name of variable being tested for scale;
data pvals2; do p1=-4 to 6; do p2=-4 to 6; output;end; end; run;
data pvals2; set pvals2; p1=p1/2; p2=p2/2; run;
data tres2; merge pvals2 tres2;
if p1 in (-1.5, 1.5, 2.5) or p2 in (-1.5, 1.5, 2.5) then delete; run;
proc sort data=tres2; by InterceptAndCovariates; run;
data tres2; set tres2; if _N_=1; run;
data comb; set tres tres2; run;
data c1; set comb; if p1=1 and p2=.; rename
InterceptAndCovariates=Dev_linear; 
 drop p1 p2; run;
data c2; set comb; if p1 ne 1 and p2=.; rename
InterceptAndCovariates=Dev_fp1;
 rename p1=e_fp1; drop p2; run;
data c3; set comb; if p2 ne .; rename InterceptAndCovariates=Dev_fp2;
 rename p1=e1_fp2; rename p2=e2_fp2; run;
data c;
 merge c1 c2 c3;
 diff_lin_fp1=Dev_linear-Dev_fp1;
 diff_lin_fp2=Dev_linear-Dev_fp2;
 diff_fp1_fp2=Dev_fp1-Dev_fp2;
 p_lin_fp1=1-probchi(diff_lin_fp1,1);
 p_lin_fp2=1-probchi(diff_lin_fp2,3);
 p_fp1_fp2=1-probchi(diff_fp1_fp2,2);
run;
proc print noobs data=c;
 var Dev_linear e_fp1 Dev_fp1 e1_fp2 e2_fp2 Dev_fp2 p_lin_fp1 p_lin_fp2
p_fp1_fp2;
 format p_lin_fp1 p_lin_fp2 p_fp1_fp2 6.4;
run;
proc datasets; delete tres tres2 pvals pvals2 comb c c1 c2 c3; run; quit;
* End macro for fp assessment *;

proc freq data=APS;
tables AGE;
run;


proc logistic descending data=APS;
class x_c/param=ref ref=first;
model PLACE2=x_c;
contrast '20-40 vs. 0-20' x_c 1 0/estimate=exp;
contrast '40-320 vs. 0-20' x_c 0 1/estimate=exp;
contrast '40-320 vs. 20-40' x_c -1 1/estimate=exp;
run;



proc freq dat=APS;
tables DANGER Neuro;
run;
*question 9 Danger NOT a sig predictor;
proc logistic descending data=APS;
model PLACE2=DANGER; 
run;

/*question 10: DANGER still not sig predictor
BUt by much les than w/o all other variables*/

proc logistic descending data=APS;
model PLACE2= AGE RACE GENDER NEURO EMOT DANGER ELOPE LOS BEHAV CUSTD VIOL;
run;


/*Question 12
Neuro_D statistically significant*/

proc logistic descending data=APS;
model PLACE2= AGE RACE GENDER NEURO_D EMOT DANGER ELOPE LOS BEHAV CUSTD VIOL;
run;

*Question 13 reduced model is better;

proc logistic descending data=APS;
model PLACE2= AGE RACE NEURO_D LOS BEHAV CUSTD;
run;

*question 14;

proc logistic descending data=APS;
model PLACE2= AGE RACE GENDER NEURO_D EMOT DANGER ELOPE LOS BEHAV CUSTD VIOL/clodds=Wald;
run;


proc logistic descending data=APS;
model PLACE2= AGE RACE NEURO_D LOS BEHAV CUSTD/clodds=Wald;
run;

/*Question 15a;
Neuro_D has Sigificant interaction on:RACE (.07)LOS(.079) )*/

proc logistic descending data=APS;
model PLACE2= AGE RACE NEURO_D LOS BEHAV CUSTD AGE*Neuro_D;
run;

proc logistic descending data=APS;
model PLACE2= AGE RACE NEURO_D LOS BEHAV CUSTD RACE*Neuro_D;
run;

proc logistic descending data=APS;
model PLACE2= AGE RACE NEURO_D LOS BEHAV CUSTD LOS*Neuro_D;
run;

proc logistic descending data=APS;
model PLACE2= AGE RACE NEURO_D LOS BEHAV CUSTD BEHAV*Neuro_D;
run;

proc logistic descending data=APS;
model PLACE2= AGE RACE NEURO_D LOS BEHAV CUSTD CUSTD*Neuro_D;
run;

/*Question 15b;
Cell has 0 for frequency*/ 
proc freq data=APS;
table CUSTD*PLACE2*Neuro_D;
run;

*Question 16;
proc freq data=APS;
table Neuro_D;
run;

proc logistic descending data=APS;
model PLACE2= AGE RACE NEURO_D LOS BEHAV CUSTD NEURO_D*RACE/clodds=wald;
run;

/*Question 17; CUSTDY VERY High with wide confidence intervals*/



