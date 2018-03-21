libname sdat 'C:\Users\ndyet_000\Desktop\Class Folders\Spring 2016\ERHS 642\Data';

/*data sdat.BURN1000; set BURN1000; run;*/

data BURN1000; set sdat.BURN1000; 

if 0.1<=age<=10.8 then a=1;
else if 10.8<=age<31.95 then a=2;
else if 31.95<=age<51.25 then a=3;
else if 51.25<=age<89.7 then a=4;

if 0<TBSA<2.5 then tbsa_cat=1;
else if 2.5<=TBSA<6 then tbsa_cat=2;
else if 6<=TBSA<16 then tbsa_cat=3;
else if 16<=TBSA<98 then tbsa_cat=4;

run;

/*the point of this assignment is a way for you to be able incorporate the splines method on a multivariate model. 
It essentially consists of creating multiple gplot statements with categories.*/


proc print data=burn1000;
var a TBSA_cat;
run;
proc univariate data = BURN1000;
var AGE;
run;

proc logistic descending data=BURN1000;
model DEATH= AGE TBSA INH_INJ/clodds=wald;
units AGE=10 TBSA=5 INH_INJ=1;
run;

proc univariate data = Burn1000; 
var AGE TBSA INH_INJ;
run;

proc Univariate data=burn1000;
var TBSA; run;



proc logistic descending data=burn1000;
class a tbsa_cat/param=ref ref=first;
model DEATH=a tbsa_cat INH_INJ/clodds=wald;

contrast '11-32 v 0-11' a 1 0 0/estimate=exp;
contrast '32-51 v 0-11' a 0 1 0/estimate=exp;
contrast '51-90 v 0-11' a 0 0 1/estimate=exp;
contrast '2.5-6 v 0.1-2.5' tbsa_cat 1 0 0/estimate=exp;
contrast '6.0-16 v 0.1-2.5' tbsa_cat 0 1 0/estimate=exp;
contrast '16-98 v 0.1-2.5' tbsa_cat 0 0 1/estimate=exp;

run;


data dvplot_age; 
input mp coeff;
cards;
5.5 0
21.5 -0.21
41.5 1.33
70.5 3.31
run;

*the 1st number are mid points 2nd number is your coefficients;

data dvplot_tbsa;
input mp coeff;
cards;
1.3 0
4.3 0.30
11.0 0.86
57.0 3.45
run;


axis1 minor=none label=(f=swiss h=2.5 'AGE');
axis2 minor=none label=(f=swiss h=2.5 a=90 'STA');
goptions FTEXT=swissb HTEXT=2.0 HSIZE=6 in
VSIZE=6 in;
symbol1 c=black v=dot i=stepjc;
symbol2 c=black v=circle;
symbol3 c=black v=star h=2;

proc gplot data=dvplot_age;
plot coeff*mp/haxis=axis1 vaxis=axis2;
run; quit;

axis1 minor=non label=(d=swiss h=2.5 'tbsa');
proc gplot data=dvplot_tbsa;
plot coeff*mp/haxis=axis1 vaxis=axis2;
run; quit;



*** ADD A DATA STEP ***;


*___________________________________________________________________*;
*                                                                   *;
*                     FP METHOD                                     *;  
*___________________________________________________________________*;

** Macro for fp assessment **;

%macro fp1(dset,y,var,lb,p1);
 %do %until(&p1=7);
 %put ***** &p1 *****;
 ODS output FitStatistics = mfs;
 data fpdat; set &dset; if &var>&lb; pc=&p1/2;
    if pc ne 0 then F1=&var**pc; else if pc = 0 then F1=log(&var);
 run;
 proc logistic descending data=fpdat; 

   model &y=F1 tbsa inh_inj; *-------------------F1 represents the variable being tested for scale;

 run;
 data mfs; set mfs; if criterion='-2 Log L'; drop Criterion InterceptOnly; run;
 proc append data=mfs base=tres; run;
 proc datasets; delete fpdat mfs; run;
 quit;
 %let p1=%eval(&p1+1);
 %end;
%mend fp1;


%fp1(burn1000,DEATH,age,0,-4); *-----------Enter data set name, outcome variable name and name of variable being tested for scale;



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

   model &y=F1 F2 tbsa inh_inj; *------------F1 and F2 represent the variable being tested for scale;

 run;
 data mfs; set mfs; if criterion='-2 Log L'; drop Criterion InterceptOnly; run;
 proc append data=mfs base=tres2; run;
 proc datasets; delete fpdat mfs; run;
 quit;
  %let p2=%eval(&p2+1);
  %end;
 %let p2=%eval(-4);
 %let p1=%eval(&p1+1);
 %end;
%mend fp2;

%fp2(burn1000,DEATH,age,0,-4,-4); *-----------Enter data set name, outcome variable name and name of variable being tested for scale;



data pvals2; do p1=-4 to 6; do p2=-4 to 6; output;end; end; run;
data pvals2; set pvals2; p1=p1/2; p2=p2/2; run;
data tres2; merge pvals2 tres2;
 if p1 in (-1.5, 1.5, 2.5) or p2 in (-1.5, 1.5, 2.5) then delete; run;
proc sort data=tres2; by InterceptAndCovariates; run;
data tres2; set tres2; if _N_=1; run;



data comb; set tres tres2; run;

data c1; set comb; if p1=1 and p2=.; rename InterceptAndCovariates=Dev_linear;
                                     drop p1 p2; run;
data c2; set comb; if p1 ne 1 and p2=.; rename InterceptAndCovariates=Dev_fp1;
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
  var Dev_linear e_fp1 Dev_fp1 e1_fp2 e2_fp2 Dev_fp2 p_lin_fp1 p_lin_fp2 p_fp1_fp2;
  format p_lin_fp1 p_lin_fp2 p_fp1_fp2 6.4;
run;

proc datasets; delete tres tres2 pvals pvals2 comb c c1 c2 c3; run; quit;

* End macro for fp assessment *;




