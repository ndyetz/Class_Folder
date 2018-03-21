libname sdat 'C:\Users\ndyet_000\Desktop\Class Folders\Spring 2016\ERHS 642\Data';


data ICU_altered; set sdat.ICU_altered;

 if race=1 then do; r1=0; r2=0; end;
 else if race=2 then do; r1=1; r2=0; end;
 else if race=3 then do; r1=0; r2=1; end;


if 16<= SYS <110 then SYSa=0;
else if 110<= SYS <150 then SYSa=1;
else if SYS >= 150 then SYSa=2;


run;

proc print data=ICU_altered;
run; 

proc sort data=ICU_altered; by STA; run;

proc freq data=ICU_altered;  tables (GENDER RACE SER CAN CRN INF CPR PRE TYP FRA PO2 PH PCO BIC CRE LOC)*STA/norow nopercent; 
run;

proc univariate data=ICU_altered; by sta; 
var age SYS HRA;
run;

proc freq data=ICU_altered; tables STA; run;


* Spline effect plots *;
proc univariate data=ICU_altered; var age SYS HRA; run;

proc logistic descending data=ICU_altered;
  effect ages=spline(age/knotmethod=list(48.5 65 72) basis=tpf(noint) degree=1);
  model STA=ages; effectplot;
run;

proc logistic descending data=ICU_altered;
  effect SYSs=spline(SYS/knotmethod=list(110 130 148) basis=tpf(noint) degree=1);
  model STA=SYSs; effectplot;
run;

proc logistic descending data=ICU_altered;
  effect HRAs=spline(HRA/knotmethod=list(80 94 121) basis=tpf(noint) degree=1);
  model STA=HRAs; effectplot;
run;

* Univariate models *;
proc logistic descending data=ICU_altered; class GENDER/param=ref ref=first; model STA=GENDER; run;
proc logistic descending data=ICU_altered; class RACE/param=ref ref=first; model STA=RACE; run;
proc logistic descending data=ICU_altered; class SER/param=ref ref=first; model STA=SER; run;
proc logistic descending data=ICU_altered; class CAN/param=ref ref=first; model STA=CAN; run;
proc logistic descending data=ICU_altered; class CRN/param=ref ref=first; model STA=CRN; run;
proc logistic descending data=ICU_altered; class INF/param=ref ref=first; model STA=INF; run;
proc logistic descending data=ICU_altered; class CPR/param=ref ref=first; model STA=CPR; run;
proc logistic descending data=ICU_altered; class PRE/param=ref ref=first; model STA=PRE; run;
proc logistic descending data=ICU_altered; class TYP/param=ref ref=first; model STA=TYP; run;
proc logistic descending data=ICU_altered; class FRA/param=ref ref=first; model STA=FRA; run;
proc logistic descending data=ICU_altered; class PO2/param=ref ref=first; model STA=PO2; run;
proc logistic descending data=ICU_altered; class PH/param=ref ref=first; model STA=PH; run;
proc logistic descending data=ICU_altered; class PCO/param=ref ref=first; model STA=PCO; run;
proc logistic descending data=ICU_altered; class BIC/param=ref ref=first; model STA=BIC; run;
proc logistic descending data=ICU_altered; class CRE/param=ref ref=first; model STA=CRE; run;
proc logistic descending data=ICU_altered; class LOC/param=ref ref=first; model STA=LOC; run;

proc logistic descending data=ICU_altered; class SYSa/param=ref ref=first; model STA=SYSa; run;

proc logistic descending data=ICU_altered; model STA=age/clodds=wald; units age=10; run;
proc logistic descending data=ICU_altered; model STA=SYS/clodds=wald; units SYS=40; run;
proc logistic descending data=ICU_altered; model STA=HRA/clodds=wald; units HRA=40; run;


* Multivariate models *;
proc logistic descending data=ICU_altered; 
  class SER CRN INF CPR TYP PO2 PCO CRE SYSa/param=ref ref=first; 
  model STA=SER CRN INF CPR TYP PO2 PCO CRE SYSa age/clodds=wald;
  units age=10;
run;

proc logistic descending data=ICU_altered; 
  class SER INF CPR TYP PO2 PCO CRE SYSa/param=ref ref=first; 
  model STA=SER INF CPR TYP PO2 PCO CRE SYSa age/clodds=wald;
  units age=10;
run;


proc logistic descending data=ICU_altered; 
  class SER INF CPR PO2 PCO CRE SYSa/param=ref ref=first; 
  model STA=SER INF CPR PO2 PCO CRE SYSa age/clodds=wald;
  units age=10;
run;

proc logistic descending data=ICU_altered; 
  class SER INF CPR PO2 PCO SYSa/param=ref ref=first; 
  model STA=SER INF CPR PO2 PCO SYSa age/clodds=wald;
  units age=10;
run;

proc logistic descending data=ICU_altered; 
  class SER CPR PO2 PCO SYSa/param=ref ref=first; 
  model STA=SER CPR PO2 PCO SYSa age/clodds=wald;
  units age=10;
run;

proc logistic descending data=ICU_altered; 
  class SER CPR PO2 SYSa/param=ref ref=first; 
  model STA=SER CPR PO2 SYSa age/clodds=wald;
  units age=10;
run;


proc logistic descending data=ICU_altered; 
  class SER CPR PO2/param=ref ref=first; 
  model STA=SER CPR PO2 age/clodds=wald;
  units age=10;
run;
*Add >=.25 variables one at a time one at a ttime;

proc logistic descending data=ICU_altered; 
  class GENDER SER CPR PO2/param=ref ref=first; 
  model STA=SER CPR PO2 age GENDER/clodds=wald;
  units age=10;
run;


proc logistic descending data=ICU_altered; 
  class SER CPR PO2 RACE/param=ref ref=first; 
  model STA=SER CPR PO2 age RACE/clodds=wald;
  units age=10;
run;

proc logistic descending data=ICU_altered; 
  class SER CPR PO2 CAN/param=ref ref=first; 
  model STA=SER CPR PO2 age CAN/clodds=wald;
  units age=10;
run;

proc logistic descending data=ICU_altered; 
  class SER CPR PO2 PRE/param=ref ref=first; 
  model STA=SER CPR PO2 age PRE/clodds=wald;
  units age=10;
run;

proc logistic descending data=ICU_altered; 
  class SER CPR PO2 FRA/param=ref ref=first; 
  model STA=SER CPR PO2 age FRA/clodds=wald;
  units age=10;
run;


proc logistic descending data=ICU_altered; 
  class SER CPR PO2 PH/param=ref ref=first; 
  model STA=SER CPR PO2 age PH/clodds=wald;
  units age=10;
run;


proc logistic descending data=ICU_altered; 
  class SER CPR PO2 BIC/param=ref ref=first; 
  model STA=SER CPR PO2 age BIC/clodds=wald;
  units age=10;
run;


proc logistic descending data=ICU_altered; 
  class SER CPR PO2/param=ref ref=first; 
  model STA=SER CPR PO2 age HRA/clodds=wald;
  units age=10 HRA=40;
run;





*Final Model BEFORE Trans/interactions;
proc logistic descending data=ICU_altered; 
  class SER CPR PO2/param=ref ref=first; 
  model STA=SER CPR PO2 age/clodds=wald;
  units age=10;
run;



* Multivariate scale assessment, height *;
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

   model &y=F1 SER CPR PO2 AGE; *-------------------F1 represents the variable being tested for scale (SYS);

 run;
 data mfs; set mfs; if criterion='-2 Log L'; drop Criterion InterceptOnly; run;
 proc append data=mfs base=tres; run;
 proc datasets; delete fpdat mfs; run;
 quit;
 %let p1=%eval(&p1+1);
 %end;
%mend fp1;


%fp1(ICU_altered,STA,SYS,0,-4); *-----------Enter data set name, outcome variable name and name of variable being tested for scale;



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

   model &y=F1 F2 SER CPR PO2 AGE; *------------F1 and F2 represent the variable being tested for scale (height);

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

%fp2(ICU_altered,STA,SYS,0,-4,-4); *-----------Enter data set name, outcome variable name and name of variable being tested for scale;



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





** Macro for fp assessment For AGE **;

%macro fp1(dset,y,var,lb,p1);
 %do %until(&p1=7);
 %put ***** &p1 *****;
 ODS output FitStatistics = mfs;
 data fpdat; set &dset; if &var>&lb; pc=&p1/2;
    if pc ne 0 then F1=&var**pc; else if pc = 0 then F1=log(&var);
 run;
 proc logistic descending data=fpdat; 

   model &y=F1 SER CPR PO2 SYS; *-------------------F1 represents the variable being tested for scale (SYS);

 run;
 data mfs; set mfs; if criterion='-2 Log L'; drop Criterion InterceptOnly; run;
 proc append data=mfs base=tres; run;
 proc datasets; delete fpdat mfs; run;
 quit;
 %let p1=%eval(&p1+1);
 %end;
%mend fp1;


%fp1(ICU_altered,STA,AGE,0,-4); *-----------Enter data set name, outcome variable name and name of variable being tested for scale;



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

   model &y=F1 F2 SER CPR PO2 SYS; *------------F1 and F2 represent the variable being tested for scale (height);

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

%fp2(ICU_altered,STA,AGE,0,-4,-4); *-----------Enter data set name, outcome variable name and name of variable being tested for scale;



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


*Multiplicative Interactions One at a time;



proc logistic descending data=ICU_altered; 
  class SER CPR PO2 CAN/param=ref ref=first; 
  model STA=SER CPR PO2 age CAN SER*PO2/clodds=wald;
  units age=10;
run;

proc logistic descending data=ICU_altered; 
  class SER CPR PO2 CAN/param=ref ref=first; 
  model STA=SER CPR PO2 age SER*AGE/clodds=wald;
  units age=10;
run;

proc logistic descending data=ICU_altered; 
  class SER CPR PO2 CAN/param=ref ref=first; 
  model STA=SER CPR PO2 age  CAN SER*CAN/clodds=wald;
  units age=10;
run;



proc logistic descending data=ICU_altered; 
  class SER CPR PO2 CAN/param=ref ref=first; 
  model STA=SER CPR PO2 age CAN PO2*CAN/clodds=wald;
  units age=10;
run;



proc logistic descending data=ICU_altered; 
  class SER CPR PO2 CAN/param=ref ref=first; 
  model STA=SER CPR PO2 age CAN AGE*CAN/clodds=wald;
  units age=10;
run;



*Multiplicative Interactions One at a time without CPR;



proc logistic descending data=ICU_altered; 
  class SER PO2 CAN/param=ref ref=first; 
  model STA=SER PO2 age CAN SER*PO2/clodds=wald;
  units age=10;
run;

proc logistic descending data=ICU_altered; 
  class SER PO2 CAN/param=ref ref=first; 
  model STA=SER PO2 age SER*AGE/clodds=wald;
  units age=10;
run;

proc logistic descending data=ICU_altered; 
  class SER PO2 CAN/param=ref ref=first; 
  model STA=SER PO2 age  CAN SER*CAN/clodds=wald;
  units age=10;
run;

proc logistic descending data=ICU_altered; 
  class SER PO2 CAN/param=ref ref=first; 
  model STA=SER PO2 age CAN PO2*AGE/clodds=wald;
  units age=10;
run;

proc logistic descending data=ICU_altered; 
  class SER PO2 CAN/param=ref ref=first; 
  model STA=SER PO2 age CAN PO2*CAN/clodds=wald;
  units age=10;
run;



proc logistic descending data=ICU_altered; 
  class SER PO2 CAN/param=ref ref=first; 
  model STA=SER PO2 age CAN AGE*CAN/clodds=wald;
  units age=10;
run;

*Interactions of Interest. 
*Infection

proc logistic descending data=ICU_altered; 

proc logistic descending data=ICU_altered; 
  class SER PO2 CAN INF/param=ref ref=first; 
  model STA=SER PO2 age CAN INF SER*INF/clodds=wald;
  units age=10;
run;

proc logistic descending data=ICU_altered; 
class SER PO2 CAN INF/param=ref ref=first; 
  model STA=SER PO2 age CAN INF PO2*INF/clodds=wald;
  units age=10;
run;

proc logistic descending data=ICU_altered; 
class SER PO2 CAN INF/param=ref ref=first; 
  model STA=SER PO2 age CAN INF AGE*INF/clodds=wald;
  units age=10;
run;

proc logistic descending data=ICU_altered; 
class SER PO2 CAN INF/param=ref ref=first; 
  model STA=SER PO2 age CAN INF CAN*INF/clodds=wald;
  units age=10;
run;


****FINAL MODEL*****;


proc logistic descending data=ICU_altered; 
  class SER PO2 CAN /param=ref ref=first; 
  model STA=SER PO2 age CAN/clodds=wald;
  units age=10;
run;
