libname sdat 'C:\Users\ndyet_000\Desktop\Class Folders\Spring 2016\ERHS 642\Data';

/* data sdat.Kc_46; set Kc_46; */


data Kc_46; set sdat.Kc_46;

if Income <=40000 then Incomea=0;
else if 40000< Income then Incomea=1;

if Income <=55000 then Incomeb=0;
else if 55000< Income then Incomeb=1;

if Income <=60000 then Incomec=0;
else if 60000< Income then Incomec=1;

If Is_married=0 then Dual_income=.;


ISFemale_Income=Is_Female*Income;
White_own=WHITE*own;

run;


proc print data=KC_46; run;

proc freq data=Kc_46;
tables incomec*BUy;
run;


proc logistic descending data=Kc_46;
model BUY=Minors Is_Female Is_Married English;
run;

*Power Analysis*;

proc power;
logistic
vardist ("Minors") = binomial(0.3, 1)
vardist ("Gender") = binomial(0.05,1)
vardist ("Marital Status") = binomial(0.05, 1)
vardist ("English") = binomial(0.05,1)
testpredictor = "Minors"
covariates = ("Gender" "Marital Status" "English" )
responseprob = 0.15
testoddsratio = 2.5
covoddsratios = (1.46 5.54 1.93)
ntotal = 500
power = .;
run;

*categorical data frequency tables 2a; 
proc freq data = Kc_46;
tables (Is_Female Is_Married Has_College Is_Professional Is_Retired Unemployed Dual_Income Minors Own House White English Prev_Child_Mag Prev_Parent_Mag incomea)*BUY/norow nopercent; 
run;

proc freq data = Kc_46;
tables Dual_income*Buy;
run;



proc freq data = Kc_46;
tables BUY;
run;

*Continuous variables descriptived 2b;

proc sort data=Kc_46; by BUY; run;

proc univariate data=Kc_46; by BUY; 
var Income Residence_Length;
run;

proc univariate data=Kc_46;
var Income;
run;

proc freq data=Kc_46;
tables Income*BUY;
run;

*Univariate Scale Assessment 2c;



proc univariate data=Kc_46; var Income Residence_Length; run;

*Income;

proc logistic descending data=Kc_46;
  effect Incomes=spline(Income/knotmethod=list(14000 33000 52500) basis=tpf(noint) degree=0);
  model BUY=Incomes; effectplot;
run;

proc logistic descending data=Kc_46;
  effect Incomes=spline(Income/knotmethod=list(14000 33000 52500) basis=tpf(noint) degree=1);
  model BUY=Incomes; effectplot;
run;

proc logistic descending data=Kc_46;
  effect Incomes=spline(Income/knotmethod=list(14000 33000 52500) basis=tpf(noint) naturalcubic);
  model BUY=Incomes; effectplot;
run;


*Length of Residency;

proc logistic descending data=Kc_46;
  effect Residence_Lengths=spline(Residence_Length/knotmethod=list(7.5 16 25) basis=tpf(noint) degree=0);
  model BUY=Residence_Lengths; effectplot;
run;

proc logistic descending data=Kc_46;
  effect Residence_Lengths=spline(Residence_Length/knotmethod=list(7.5 16 25) basis=tpf(noint) degree=1);
  model BUY=Residence_Lengths; effectplot;
run;

proc logistic descending data=Kc_46;
  effect Residence_Lengths=spline(Residence_Length/knotmethod=list(7.5 16 25) basis=tpf(noint) naturalcubic);
  model BUY=Residence_Lengths; effectplot;
run;


proc freq data=Kc_46;
tables Income Residence_Length;
run;


*Fp_method INCOME; 

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

   model &y=F1; *-------------------F1 represents the variable being tested for scale;

 run;
 data mfs; set mfs; if criterion='-2 Log L'; drop Criterion InterceptOnly; run;
 proc append data=mfs base=tres; run;
 proc datasets; delete fpdat mfs; run;
 quit;
 %let p1=%eval(&p1+1);
 %end;
%mend fp1;


%fp1(Kc_46,BUY,Income,0,-4); *-----------Enter data set name, outcome variable name and name of variable being tested for scale;



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

   model &y=F1 F2; *------------F1 and F2 represent the variable being tested for scale;

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

%fp2(Kc_46,BUY,Income,0,-4,-4); *-----------Enter data set name, outcome variable name and name of variable being tested for scale;



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





*Fp_method Residence_Length; 

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

   model &y=F1; *-------------------F1 represents the variable being tested for scale;

 run;
 data mfs; set mfs; if criterion='-2 Log L'; drop Criterion InterceptOnly; run;
 proc append data=mfs base=tres; run;
 proc datasets; delete fpdat mfs; run;
 quit;
 %let p1=%eval(&p1+1);
 %end;
%mend fp1;


%fp1(Kc_46,BUY,Residence_Length,0,-4); *-----------Enter data set name, outcome variable name and name of variable being tested for scale;



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

   model &y=F1 F2; *------------F1 and F2 represent the variable being tested for scale;

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

%fp2(Kc_46,BUY,Residence_Length,0,-4,-4); *-----------Enter data set name, outcome variable name and name of variable being tested for scale;



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


proc logistic descending data=Kc_46; class Is_Female/param=ref ref=first; model BUY=Is_Female; run;
proc logistic descending data=Kc_46; class Is_Married/param=ref ref=first; model BUY=Is_Married; run;
proc logistic descending data=Kc_46; class Has_College/param=ref ref=first; model BUY=Has_College; run;
proc logistic descending data=Kc_46; class Is_Professional/param=ref ref=first; model BUY=Is_Professional; run;
proc logistic descending data=Kc_46; class Is_Retired/param=ref ref=first; model BUY=Is_Retired; run;
proc logistic descending data=Kc_46; class Unemployed/param=ref ref=first; model BUY=Unemployed; run;
proc logistic descending data=Kc_46; class Dual_Income/param=ref ref=first; model BUY=Dual_Income; run;
proc logistic descending data=Kc_46; class Minors/param=ref ref=first; model BUY=Minors; run;
proc logistic descending data=Kc_46; class Own/param=ref ref=first; model BUY=Own; run;
proc logistic descending data=Kc_46; class House/param=ref ref=first; model BUY=House; run;
proc logistic descending data=Kc_46; class White/param=ref ref=first; model BUY=White; run;
proc logistic descending data=Kc_46; class English/param=ref ref=first; model BUY=English; run;
proc logistic descending data=Kc_46; class Prev_Child_Mag/param=ref ref=first; model BUY=Prev_Child_Mag; run;
proc logistic descending data=Kc_46; class Prev_Parent_Mag/param=ref ref=first; model BUY=Prev_Parent_Mag; run;
proc logistic descending data=Kc_46; class Incomea/param=ref ref=first; model BUY=Incomea; run;
proc logistic descending data=Kc_46; class Incomeb/param=ref ref=first; model BUY=Incomeb; run;
proc logistic descending data=Kc_46; class Incomec/param=ref ref=first; model BUY=Incomec; run;

proc logistic descending data=Kc_46; model BUY=Income/clodds=wald; units Income=5000; run;
proc logistic descending data=Kc_46; model BUY=Residence_Length/clodds=wald; units Residence_Length=1; run;




****Multivariate Scale Assessment 2e.***;

proc logistic descending data=Kc_46; 
  class Is_Female Is_Married Has_College Is_Professional own House White English Prev_Parent_Mag/param=ref ref=first; 
  model BUY=Is_Female Is_Married Has_College Is_Professional own House White English Prev_Parent_Mag Income Residence_Length/clodds=wald;
  units Income=5000 Residence_Length=1;
run;


*Is_Professional removed;

proc logistic descending data=Kc_46; 
  class Is_Female Is_Married Has_College own House White English Prev_Parent_Mag/param=ref ref=first; 
  model BUY=Is_Female Is_Married Has_College own House White English Prev_Parent_Mag Income Residence_Length/clodds=wald;
  units Income=5000 Residence_Length=1;
run;

*Length of Residency removed;
proc logistic descending data=Kc_46; 
  class Is_Female Is_Married Has_College own House White English Prev_Parent_Mag/param=ref ref=first; 
  model BUY=Is_Female Is_Married Has_College own House White English Prev_Parent_Mag Income/clodds=wald;
  units Income=5000;
run;


*Length of Residency removed;
proc logistic descending data=Kc_46; 
  class Is_Female Is_Married Has_College own House White English/param=ref ref=first; 
  model BUY=Is_Female Is_Married Has_College own House White English Income/clodds=wald;
  units Income=5000;
run;

*English removed;
proc logistic descending data=Kc_46; 
  class Is_Female Is_Married Has_College own House White/param=ref ref=first; 
  model BUY=Is_Female Is_Married Has_College own House White Income/clodds=wald;
  units Income=5000;
run;


*College Educated removed;
proc logistic descending data=Kc_46; 
  class Is_Female Is_Married own House White/param=ref ref=first; 
  model BUY=Is_Female Is_Married own House White Income/clodds=wald;
  units Income=5000;
run;

*Home ownership (Own) removed;
proc logistic descending data=Kc_46; 
  class Is_Female Is_Married House White/param=ref ref=first; 
  model BUY=Is_Female Is_Married House White Income/clodds=wald;
  units Income=5000;
run;


*Resident type (House) removed;
proc logistic descending data=Kc_46; 
  class Is_Female Is_Married White/param=ref ref=first; 
  model BUY=Is_Female Is_Married White Income/clodds=wald;
  units Income=5000;
run;


*Is Female removed;
proc logistic descending data=Kc_46; 
  class Is_Married White/param=ref ref=first; 
  model BUY=Is_Married White Income/clodds=wald;
  units Income=5000;
run;


*Marital status removed;
proc logistic descending data=Kc_46; 
  class Is_Female White/param=ref ref=first; 
  model BUY=Is_Female White Income/clodds=wald;
  units Income=5000;
run;

*Race removed;
proc logistic descending data=Kc_46; 
  class Is_Female Is_Married/param=ref ref=first; 
  model BUY=Is_Female Is_Married Income/clodds=wald;
  units Income=5000;
run;

*Income removed;
******INCOME effects model heavily*****;

proc logistic descending data=Kc_46; 
  class Is_Female Is_Married White/param=ref ref=first; 
  model BUY=Is_Female Is_Married White/clodds=wald;
run;

***Adding Minors;

proc logistic descending data=Kc_46; 
  class Is_Female Is_Married White Minors/param=ref ref=first; 
  model BUY=Is_Female Is_Married White Minors Income/clodds=wald;
  units Income=5000;
run;



*Multivariate Fp_method INCOME; 

*___________________________________________________________________*;
*                                                                   *;
*                    Multivariate FP METHOD                                     *;  
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

   model &y=F1 Is_Female Is_Married White Minors; *-------------------F1 represents the variable being tested for scale;

 run;
 data mfs; set mfs; if criterion='-2 Log L'; drop Criterion InterceptOnly; run;
 proc append data=mfs base=tres; run;
 proc datasets; delete fpdat mfs; run;
 quit;
 %let p1=%eval(&p1+1);
 %end;
%mend fp1;


%fp1(Kc_46,BUY,Income,0,-4); *-----------Enter data set name, outcome variable name and name of variable being tested for scale;



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

   model &y=F1 F2 Is_Female Is_Married White Minors; *------------F1 and F2 represent the variable being tested for scale;

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

%fp2(Kc_46,BUY,Income,0,-4,-4); *-----------Enter data set name, outcome variable name and name of variable being tested for scale;



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


*Final Model ;
proc logistic descending data=Kc_46; 
  class Is_Female Is_Married White Minors/param=ref ref=first; 
  model BUY=Is_Female Is_Married White Minors Income/clodds=wald;
  units Income=5000;
run;


*****Automated model selection, stepwise********;


proc logistic descending data=Kc_46; class Is_Female Is_Married Has_College Is_Professional Is_Retired Dual_Income Minors Own House White English Prev_Child_Mag Prev_Parent_Mag/param=ref ref=first; 
model BUY=Is_Female Is_Married Has_College Is_Professional Is_Retired Dual_Income Minors Own House White English Prev_Child_Mag Prev_Parent_Mag Income Residence_Length
/stepwise sle=0.15 sls=0.20 details; run;

proc logistic descending data=Kc_46; class Is_Female Minors House White Prev_Child_Mag Own/param=ref ref=first; 
model BUY= Income Is_Female Minors House White Prev_Child_Mag Own/clodds=wald;
units Income=5000;
run;

*Final Model after stepwise selection;
proc logistic descending data=Kc_46; 
  class Is_Female Is_Married White Minors own house/param=ref ref=first; 
  model BUY=Is_Female Is_Married White Minors own house Income/clodds=wald;
  units Income=5000;
run;


*****Interactions;

proc logistic descending data=Kc_46; 
  class Is_Female Is_Married White Minors own house/param=ref ref=first; 
  model BUY=Is_Female Is_Married White Minors own house Income
Is_Female*Is_Married Is_Female*White Is_Female*Minors  Is_Female*own Is_Female*house Is_Female*Income
Is_Married*White Is_Married*Minors Is_Married*own Is_married*house Is_Married*Income 
White*Minors White*own White*house White*Income
Minors*own Minors*house Minors*Income
own*house own*Income
House*Income
/clodds=wald;
  units Income=5000;
run;


proc logistic descending data=Kc_46; 
  class Is_Female Is_Married White Minors/param=ref ref=first; 
  model BUY=Is_Female Is_Married White Minors Income
Is_Female*Is_Married Is_Female*White Is_Female*Minors Is_Female*Income
Is_Married*White Is_Married*Minors Is_Married*Income 
White*Minors White*Income
Minors*Income
/clodds=wald;
  units Income=5000;
run;



proc logistic descending data=Kc_46; 
  class Is_Female Is_Married White Minors own house/param=ref ref=first; 
  model BUY=Is_Female Is_Married White Minors own house Income Is_Female*Income White*own/clodds=wald;
  units Income=5000;

contrast 'White yes vs. otherwise at own=1' White 1 white*own 1/estimate=exp;
contrast 'White yes vs. otherwise at own=0' White 1 white*own 0/estimate=exp;

contrast 'Is_Female 1 vs 0, Income=25,000'
Is_Female 1 Income 0 Is_Female*Income 25000/estimate=exp;
contrast 'Is_Female 1 vs 0, Income=50,000'
Is_Female 1 Income 0 Is_Female*Income 50000/estimate=exp;
contrast 'Is_Female 1 vs 0, Income=75,000'
Is_Female 1 Income 0 Is_Female*Income 75000/estimate=exp;

  contrast 'Income+10,000 at Is_Female=1' Income 10000 Is_Female*Income 10000/estimate=exp;
  contrast 'Income+10,000 at Is_Female=0' Income 10000 Is_Female*Income 0/estimate=exp;



run; 



********GOF tests*******;

proc sort data=Kc_46;                  ****  for a different data set change independent variable names in by statement ****************;
    by Is_Female Is_Married White Minors own house Income;
run;



proc logistic descending data=Kc_46; 
  model BUY=Is_Female Is_Married White Minors own house Income Is_Female*Income White*own
                        /scale=n aggregate lackfit;
run;


***********************************************************;
**                   Osius-Rojek test                    **;
***********************************************************;

* If interaction terms are in the model, create the interaction terms  ;
* If categorical variables with more than 2 categories are in the model;
* create design variables                                              ;


* Sort new data set by model covariates;

proc sort data=Kc_46;                  ****  for a different data set change independent variable names in by statement ****************;
    by Is_Female Is_Married White Minors own house Income;
run;



* For each covariate pattern, j, save m_j= # with covariate pattern j and;
* y_j = # with outcome=1 in covariate pattern j                          ;

proc means n sum noprint data=Kc_46;   ****  for a different data set change independent variable names in by statement ***************;
                                      ****  and outcome variable name in var statement                                 ***************; 
      by Is_Female Is_Married White Minors own house Income ISFemale_Income White_own;
      var BUY; output out=jdat n=m_j sum=y_j;  *<--- indicate outcome;
run;

*LOOK ABOVE! after "var" is where your outcome should be;

* Run proc logistic for covariate patterns rather than individuals      ;
* outcome=y_j / m_j (not 0 or 1) , save fitted values                   ;

proc logistic noprint descending data=jdat;  ****  for a different data set change independent variable names in model statement. keep jdat as jdat. do NOT change this*****;
  model y_j/m_j= Is_Female Is_Married White Minors own house Income ISFemale_Income White_own;
  output out=pdat p=p_j;
run;



* Create v_j, c_j, the chi-square terms and the terms in the sum in A;

data pdat;  set pdat;
  v_j=m_j*p_j*(1-p_j);   c_j=(1-2*p_j)/v_j;   chisq_j=(y_j-m_j*p_j)**2/v_j;
  m_j_inv=1/m_j; 
run;




* Create and save chi-square & sum for A               ;
* Perform weighted linear regression, save SS          ;
* Calculate RSS,A,z & p-val for z                      ;

proc means sum noprint data=pdat; 
  var chisq_j m_j_inv;  output out=cdat sum=chisq m_inv; run;

proc reg noprint data=pdat outest=ss;  ****  for a different data set change independent variable names in model statement *****;
  model c_j=Is_Female Is_Married White Minors own house Income ISFemale_Income White_own;
  weight v_j; run;

data zdat; merge cdat (keep=_freq_ chisq m_inv) ss (keep=_rmse_);
  rss=(_freq_-9-1)*_rmse_**2;  A=2*(_freq_-m_inv); ****  for a different data set change 8 to number of variables in the model *****;
  z=(chisq-(_freq_-9-1))/sqrt(A+rss);  z=abs(z);   ****  for a different data set change 8 to number of variables in the model *****;
  pval=(1-probnorm(z))*2;
run;

proc print noobs data=zdat; var pval; run;




*************************************************************;
***** Stukel test of logistic regression model assumption ***;
*************************************************************;
ODS trace on;
ODS output GlobalTests=gt1;
proc logistic descending data=Kc_46;      ****  for a different data set change outcome and independent variable names *****;
                                            ****  in model statement                                                     *****;
  model BUY=Is_Female Is_Married White Minors own house Income ISFemale_Income White_own; 
  output out=pdat2 xbeta=g_j p=p_j;
run;

data pdat2;
  set pdat2;
  if p_j>=0.5 then ind1=1; else ind1=0;
  if p_j< 0.5 then ind2=1; else ind2=0;
  z1_j=0.5*g_j**2*ind1;
  z2_j=-0.5*g_j**2*ind2;
run;

ODS output GlobalTests=gt2;
proc logistic descending data=pdat2 ; ****  for a different data set change outcome and independent variable names *****;
                                      ****  in model statement but keep z1_j and z2_j                              *****;
  model BUY=Is_Female Is_Married White Minors own house Income ISFemale_Income White_own z1_j z2_j;
run;

data pval;
  merge gt1(rename=(ChiSq=ChiSq1)) 
        gt2(rename=(ChiSq=ChiSq2));
  if _N_=1;
  drop Test df ProbChisq;

  lr=ChiSq2-ChiSq1;
  pval=(1-probchi(lr,2));
run;

proc print noobs data=pval; var pval; run;


******************DIAGNOSTICS*****************************;


*************************************************************;
*****                    Diagnostics                      ***;
*************************************************************;
proc sort data=Kc_46; by Is_Female Is_Married White Minors own house Income; run;

proc means n sum noprint data=Kc_46;    
      by Is_Female Is_Married White Minors own house Income;
      var BUY; output out=jdat n=m_j sum=y_j;
run;

proc logistic descending data=jdat plots(only label)=(phat);
  model y_j/m_j=Is_Female Is_Married White Minors own house Income Is_Female*Income White*own;
  output out=diag h=h difchisq=difchisq difdev=difdev c=db p=pihat; 
run;

************************************************;
***   Evaluate outliers                        *;
************************************************;
data diag; set diag; j=_N_; run;

proc print data=diag noobs; where j in (333, 176, 151, 225); *<-- you change these numbers based on the predicted probability dignostics. You are looking for outliers;
  var j Is_Female Is_Married White Minors own house Income y_j m_j pihat h difchisq difdev db;  *<-- Change to your variables do NOT include interactions keep everything else that is not a variable;
  format pihat h difchisq difdev db 7.3; *<-- keep this the same, this is just making your table look nice.;
run; 

*You don't need to use the below macro if it confuses you... but it will make things way easier;


%macro outliers(j);
ODS output Logistic.ContrastEstimate=ors;

proc logistic descending data=diag; where j ne &j;
  model y_j/m_j=Is_Female Is_Married White Minors own house Income Is_Female*Income White*own;



  contrast 'Married 1 vs 0' Is_Married 1/estimate=exp; *<- insert one contrast per effect;
  contrast 'Minors 1 vs 0' Minors 1/estimate=exp; *<- insert one contrast per effect;
  contrast 'House 1 vs 0' own 1/estimate=exp; *<- insert one contrast per effect;

 

contrast 'White yes vs. otherwise at own=1' White 1 white*own 1/estimate=exp;
contrast 'White yes vs. otherwise at own=0' White 1 white*own 0/estimate=exp;

contrast 'Is_Female 1 vs 0, Income=25,000'
Is_Female 1 Income 0 Is_Female*Income 25000/estimate=exp;
contrast 'Is_Female 1 vs 0, Income=50,000'
Is_Female 1 Income 0 Is_Female*Income 50000/estimate=exp;
contrast 'Is_Female 1 vs 0, Income=75,000'
Is_Female 1 Income 0 Is_Female*Income 75000/estimate=exp;

  contrast 'Income+10,000 at Is_Female=1' Income 10000 Is_Female*Income 10000/estimate=exp;
  contrast 'Income+10,000 at Is_Female=0' Income 10000 Is_Female*Income 0/estimate=exp;

run;

data ors&j; set ors; 
  drop type row stderr alpha lowerlimit upperlimit waldchisq;  
  rename estimate=OR&j probchisq=p&j; run; 
proc print data=ors&j; run;

%mend outliers;

%outliers(0);
%outliers(333);
%outliers(176);
%outliers(151);
%outliers(225);



data ors; merge ors0 ors333 ors176 ors151 ors225; run;
proc print data=ors noobs; 
  var contrast or0 or333 or176 or151 or225 p0 p333 p176 p151 p225; 
  format ors0 ors333 ors176 ors151 ors225  6.2; 
run;

proc datasets; delete ors; run; quit;





*********************Classification Tables***************************;

proc logistic descending data=Kc_46;
model Buy=Is_Female Is_Married White Minors own house Income Is_Female*Income White*own / outroc=rocdat;
run;


data rocdat;
set rocdat;
spec=1-_1mspec_;
run;


axis1 label=(f=swiss h=2.5 'Probability Cutoff') minor=none;
axis2 label=(f=swiss h=2.5 a=90 'Sensitivity,Specificity') minor=none;
goptions FTEXT=swissb HTEXT=2.0 HSIZE=8 in VSIZE=6 in;
symbol1 v=dot i=join c=black h=1;
symbol2 v=diamond i=join c=black h=1;
footnote1 c=black f=special h=1 'J J J' f=swissb h=1.5 ' Sensitivity'
c=black f=special h=1 ' D D D' f=swissb h=1.5 ' Specificity';

proc gplot data=rocdat;
plot (_sensit_ spec)*_prob_
/overlay haxis=axis1 vaxis=axis2;
run; quit;
footnote;


proc logistic descending data=Kc_46;
model Buy=Is_Female Is_Married White Minors own house Income Is_Female*Income White*own
/ctable pprob=(0.28) pevent=0.10 0.30;
run;
