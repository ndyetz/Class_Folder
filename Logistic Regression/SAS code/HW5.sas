libname sdat 'C:\Users\ndyet_000\Desktop\Class Folders\Spring 2016\ERHS 642\Data';

/*data sdat.BURN1000; set BURN1000; run*/

data BURN1000; set sdat.BURN1000; 

sq_age=age**2;
sqln_age=sq_age*log(age);

if 0<age<=32 then a=1;
else if 32< age<=51 then a=2;
else if 51< age<=90 then a=3;


run;

proc print data=BURN1000;
var sq_age sqln_age;
run;

proc means data = burn1000; var AGE; run;

*1a-c;

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
%fp1(burn1000,death,age,0,-4); *-----------Enter data set name, outcome
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
%fp2(burn1000,death,age,0,-4,-4); *-----------Enter data set name, outcome
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


*1d;

proc logistic descending data=burn1000;
model DEATH=sq_age sqln_age;
RUN;

proc logistic descending data=burn1000;
model DEATH=sq_age sqln_age;

contrast '20 v 10' sq_age 300 sqln_age 968.0344001/estimate=exp;
contrast '40 v 30' sq_age 700 sqln_age 2841.129483/estimate=exp;
contrast '60 v 50' sq_age 1100 sqln_age 4959.58291/estimate=exp;
contrast '80 v 70' sq_age 1500 sqln_age 7227.343776/estimate=exp;
RUN;

proc logistic descending data=burn1000;
model DEATH=sq_age sqln_age;

contrast '30 v 10' sq_age 800 sqln_age 2830.819134/estimate=exp;
contrast '50 v 10' sq_age 2400 sqln_age 9549.799004/estimate=exp;
contrast '70 v 10' sq_age 4800 sqln_age 20587.36818/estimate=exp;
RUN;
*2a;

proc logistic descending data=burn1000;
class a/param=ref ref=first;
model DEATH=a;

contrast '32-51 vs 0-32' a 1 0/estimate=exp;
contrast '51-90 vs 0-32' a 0 1/estimate=exp;
contrast '51-90 vs 32-51' a -1 1/estimate=exp;
run;
