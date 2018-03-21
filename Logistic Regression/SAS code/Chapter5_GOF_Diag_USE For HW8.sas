********************************************;
* ch5.sas                                  *;
*                                          *;
* Examples for chapter 5                   *;
* Overall GOF                              *;
* Outliers                                 *;
* Prediction                               *;
********************************************;

libname sdat 'C:\Users\ndyet_000\Desktop\Class Folders\Spring 2016\ERHS 642\Data';

data ICU_altered; set sdat.ICU_altered;

 if race=1 then do; r1=0; r2=0; end;
 else if race=2 then do; r1=1; r2=0; end;
 else if race=3 then do; r1=0; r2=1; end;


if 16<= SYS <110 then SYSa=0;
else if 110<= SYS <150 then SYSa=1;
else if SYS >= 150 then SYSa=2;



run;



** Final model from chapter 4**;


proc logistic descending data=ICU_altered; 
  model STA=SER PO2 age CAN;
run;

***********************************************************;
** Pearson chi-square, deviance and Hosmer-Lemeshow test **;
***********************************************************;

proc logistic descending data=ICU_altered; 
  model STA=SER PO2 age CAN        
                        /scale=n aggregate lackfit;
run;

*"/scale=n aggregate lackfit" gives you chi square, H-L and deviance, and remember H-L High p-value=good;



***********************************************************;
**                   Osius-Rojek test                    **;
***********************************************************;

* If interaction terms are in the model, create the interaction terms  ;
* If categorical variables with more than 2 categories are in the model;
* create design variables                                              ;


* Sort new data set by model covariates;

proc sort data=ICU_altered;                  ****  for a different data set change independent variable names in by statement ****************;
    by SER PO2 age CAN;
run;



* For each covariate pattern, j, save m_j= # with covariate pattern j and;
* y_j = # with outcome=1 in covariate pattern j                          ;

proc means n sum noprint data=ICU_altered;   ****  for a different data set change independent variable names in by statement ***************;
                                      ****  and outcome variable name in var statement                                 ***************; 
      by SER PO2 age CAN;
      var STA; output out=jdat n=m_j sum=y_j;  *<--- indicate outcome;
run;

*LOOK ABOVE! after "var" is where your outcome should be;

* Run proc logistic for covariate patterns rather than individuals      ;
* outcome=y_j / m_j (not 0 or 1) , save fitted values                   ;

proc logistic noprint descending data=jdat;  ****  for a different data set change independent variable names in model statement. keep jdat as jdat. do NOT change this*****;
  model y_j/m_j= SER PO2 age CAN;
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
  model c_j=SER PO2 age CAN;
  weight v_j; run;

data zdat; merge cdat (keep=_freq_ chisq m_inv) ss (keep=_rmse_);
  rss=(_freq_-4-1)*_rmse_**2;  A=2*(_freq_-m_inv); ****  for a different data set change 8 to number of variables in the model *****;
  z=(chisq-(_freq_-4-1))/sqrt(A+rss);  z=abs(z);   ****  for a different data set change 8 to number of variables in the model *****;
  pval=(1-probnorm(z))*2;
run;

proc print noobs data=zdat; var pval; run;





*************************************************************;
***** Stukel test of logistic regression model assumption ***;
*************************************************************;
ODS trace on;
ODS output GlobalTests=gt1;
proc logistic descending data=ICU_altered;      ****  for a different data set change outcome and independent variable names *****;
                                            ****  in model statement                                                     *****;
  model STA=SER PO2 age CAN; 
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
  model STA=SER PO2 age CAN z1_j z2_j;
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




*************************************************************;
*****                    Diagnostics                      ***;
*************************************************************;
proc sort data=ICU_altered; by SER PO2 age CAN; run;

proc means n sum noprint data=ICU_altered;    
      by SER PO2 age CAN;
      var STA; output out=jdat n=m_j sum=y_j;
run;

proc logistic descending data=jdat plots(only label)=(phat);
  model y_j/m_j=SER PO2 age CAN;
  output out=diag h=h difchisq=difchisq difdev=difdev c=db p=pihat; 
run;


************************************************;
***   Evaluate outliers                        *;
************************************************;
data diag; set diag; j=_N_; run;

proc print data=diag noobs; where j in (51, 94, 93, 84, 42); *<-- you change these numbers based on the predicted probability dignostics. You are looking for outliers;
  var j SER PO2 age CAN y_j m_j pihat h difchisq difdev db;  *<-- Change to your variables do NOT include interactions keep everything else that is not a variable;
  format pihat h difchisq difdev db 7.3; *<-- keep this the same, this is just making your table look nice.;
run; 

*You don't need to use the below macro if it confuses you... but it will make things way easier;

%macro outliers(j);
ODS output Logistic.ContrastEstimate=ors;

proc logistic descending data=diag; where j ne &j;
  model y_j/m_j=SER PO2 age CAN; 
  contrast 'SER 1 vs 0' SER 1/estimate=exp; *<- insert one contrast per effect;
  contrast 'PO2 1 vs 0' PO2 1/estimate=exp; *<- insert one contrast per effect;
  contrast 'AGE increase of 10 years' AGE 10/estimate=exp; *<- insert one contrast per effecct;
  contrast 'CAN 1 vs 0' CAN 1/estimate=exp; *<- insert one contrast per effect;

run;

data ors&j; set ors; 
  drop type row stderr alpha lowerlimit upperlimit waldchisq;  
  rename estimate=OR&j probchisq=p&j; run; 
proc print data=ors&j; run;

%mend outliers;

%outliers(0);
%outliers(42);
%outliers(51);
%outliers(84);
%outliers(93);
%outliers(94);


data ors; merge ors0 ors42 ors51 ors84 ors93 ors94; run;
proc print data=ors noobs; 
  var contrast or0 or42 or51 or84 or93 or94 p0 p42 p51 p84 p93 p94; 
  format ors0 ors42 ors51 ors84 ors93 ors94 6.2; 
run;

proc datasets; delete ors; run; quit;



*********deleting outlier covariate patterns for HL, Person & deviance********;

*Take out 42*;
proc logistic descending data=diag;
where j ne (42);
model y_j/m_j = SER PO2 age CAN/scale=n aggregate lackfit;
run;


*Take out 51*;
proc logistic descending data=diag;
where j not in (51);
model y_j/m_j = SER PO2 age CAN/scale=n aggregate lackfit;
run;

*Take out 84*;
proc logistic descending data=diag;
where j not in (84);
model y_j/m_j = SER PO2 age CAN/scale=n aggregate lackfit;
run;

*Take out 93*;
proc logistic descending data=diag;
where j not in (93);
model y_j/m_j = SER PO2 age CAN/scale=n aggregate lackfit;
run;


*Take out 94*;
proc logistic descending data=diag;
where j not in (94);
model y_j/m_j = SER PO2 age CAN/scale=n aggregate lackfit;
run;


*Finding outlier covariate patterns;

*42;
Proc print data=ICU_altered;
where SER=0 and PO2=1 and AGE=63 and CAN=0;
run;

*51;
Proc print data=ICU_altered;
where SER=1 and PO2=0 and AGE=20 and CAN=0;
run;

*84;
Proc print data=ICU_altered;
where SER=1 and PO2=0 and AGE=75 and CAN=1;
run;

*93;
Proc print data=ICU_altered;
where SER=1 and PO2=1 and AGE=70 and CAN=0;
run;

*94;
Proc print data=ICU_altered;
where SER=1 and PO2=1 and AGE=87 and CAN=0;
run;


*creating new datasets deleting covariate patterns;

*data w/o covariate pattern 42;
data ICU_42;
set ICU_altered;
where ID not in (16, 17, 18);
run;

proc print data=ICU_42; run;

*data w/o covariate pattern 51;
data ICU_51;
set ICU_altered;
where ID not in (96, 194, 195, 200);
run;

*data w/o covariate pattern 84;
data ICU_84;
set ICU_altered;
where ID not in (52, 53);
run;

*data w/o covariate pattern 93;
data ICU_93;
set ICU_altered;
where ID not in (56, 57);
run;

*data w/o covariate pattern 94;
data ICU_94;
set ICU_altered;
where ID not in (1, 2, 3);
run;




***********************************************************;
**                   Osius-Rojek test -cov 42                   **;
***********************************************************;

* If interaction terms are in the model, create the interaction terms  ;
* If categorical variables with more than 2 categories are in the model;
* create design variables                                              ;


* Sort new data set by model covariates;

proc sort data=ICU_42;                  ****  for a different data set change independent variable names in by statement ****************;
    by SER PO2 age CAN;
run;



* For each covariate pattern, j, save m_j= # with covariate pattern j and;
* y_j = # with outcome=1 in covariate pattern j                          ;

proc means n sum noprint data=ICU_42;   ****  for a different data set change independent variable names in by statement ***************;
                                      ****  and outcome variable name in var statement                                 ***************; 
      by SER PO2 age CAN;
      var STA; output out=jdat n=m_j sum=y_j;  *<--- indicate outcome;
run;

*LOOK ABOVE! after "var" is where your outcome should be;

* Run proc logistic for covariate patterns rather than individuals      ;
* outcome=y_j / m_j (not 0 or 1) , save fitted values                   ;

proc logistic noprint descending data=jdat;  ****  for a different data set change independent variable names in model statement. keep jdat as jdat. do NOT change this*****;
  model y_j/m_j= SER PO2 age CAN;
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
  model c_j=SER PO2 age CAN;
  weight v_j; run;

data zdat; merge cdat (keep=_freq_ chisq m_inv) ss (keep=_rmse_);
  rss=(_freq_-4-1)*_rmse_**2;  A=2*(_freq_-m_inv); ****  for a different data set change 8 to number of variables in the model *****;
  z=(chisq-(_freq_-4-1))/sqrt(A+rss);  z=abs(z);   ****  for a different data set change 8 to number of variables in the model *****;
  pval=(1-probnorm(z))*2;
run;

proc print noobs data=zdat; var pval; run;

***********************************************************;
**                   Osius-Rojek test   -51                 **;
***********************************************************;

* If interaction terms are in the model, create the interaction terms  ;
* If categorical variables with more than 2 categories are in the model;
* create design variables                                              ;


* Sort new data set by model covariates;

proc sort data=ICU_51;                  ****  for a different data set change independent variable names in by statement ****************;
    by SER PO2 age CAN;
run;



* For each covariate pattern, j, save m_j= # with covariate pattern j and;
* y_j = # with outcome=1 in covariate pattern j                          ;

proc means n sum noprint data=ICU_51;   ****  for a different data set change independent variable names in by statement ***************;
                                      ****  and outcome variable name in var statement                                 ***************; 
      by SER PO2 age CAN;
      var STA; output out=jdat n=m_j sum=y_j;  *<--- indicate outcome;
run;

*LOOK ABOVE! after "var" is where your outcome should be;

* Run proc logistic for covariate patterns rather than individuals      ;
* outcome=y_j / m_j (not 0 or 1) , save fitted values                   ;

proc logistic noprint descending data=jdat;  ****  for a different data set change independent variable names in model statement. keep jdat as jdat. do NOT change this*****;
  model y_j/m_j= SER PO2 age CAN;
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
  model c_j=SER PO2 age CAN;
  weight v_j; run;

data zdat; merge cdat (keep=_freq_ chisq m_inv) ss (keep=_rmse_);
  rss=(_freq_-4-1)*_rmse_**2;  A=2*(_freq_-m_inv); ****  for a different data set change 8 to number of variables in the model *****;
  z=(chisq-(_freq_-4-1))/sqrt(A+rss);  z=abs(z);   ****  for a different data set change 8 to number of variables in the model *****;
  pval=(1-probnorm(z))*2;
run;

proc print noobs data=zdat; var pval; run;

***********************************************************;
**                   Osius-Rojek test -84                   **;
***********************************************************;

* If interaction terms are in the model, create the interaction terms  ;
* If categorical variables with more than 2 categories are in the model;
* create design variables                                              ;


* Sort new data set by model covariates;

proc sort data=ICU_84;                  ****  for a different data set change independent variable names in by statement ****************;
    by SER PO2 age CAN;
run;



* For each covariate pattern, j, save m_j= # with covariate pattern j and;
* y_j = # with outcome=1 in covariate pattern j                          ;

proc means n sum noprint data=ICU_84;   ****  for a different data set change independent variable names in by statement ***************;
                                      ****  and outcome variable name in var statement                                 ***************; 
      by SER PO2 age CAN;
      var STA; output out=jdat n=m_j sum=y_j;  *<--- indicate outcome;
run;

*LOOK ABOVE! after "var" is where your outcome should be;

* Run proc logistic for covariate patterns rather than individuals      ;
* outcome=y_j / m_j (not 0 or 1) , save fitted values                   ;

proc logistic noprint descending data=jdat;  ****  for a different data set change independent variable names in model statement. keep jdat as jdat. do NOT change this*****;
  model y_j/m_j= SER PO2 age CAN;
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
  model c_j=SER PO2 age CAN;
  weight v_j; run;

data zdat; merge cdat (keep=_freq_ chisq m_inv) ss (keep=_rmse_);
  rss=(_freq_-4-1)*_rmse_**2;  A=2*(_freq_-m_inv); ****  for a different data set change 8 to number of variables in the model *****;
  z=(chisq-(_freq_-4-1))/sqrt(A+rss);  z=abs(z);   ****  for a different data set change 8 to number of variables in the model *****;
  pval=(1-probnorm(z))*2;
run;

proc print noobs data=zdat; var pval; run;


***********************************************************;
**                   Osius-Rojek test   -93                  **;
***********************************************************;

* If interaction terms are in the model, create the interaction terms  ;
* If categorical variables with more than 2 categories are in the model;
* create design variables                                              ;


* Sort new data set by model covariates;

proc sort data=ICU_93;                  ****  for a different data set change independent variable names in by statement ****************;
    by SER PO2 age CAN;
run;



* For each covariate pattern, j, save m_j= # with covariate pattern j and;
* y_j = # with outcome=1 in covariate pattern j                          ;

proc means n sum noprint data=ICU_93;   ****  for a different data set change independent variable names in by statement ***************;
                                      ****  and outcome variable name in var statement                                 ***************; 
      by SER PO2 age CAN;
      var STA; output out=jdat n=m_j sum=y_j;  *<--- indicate outcome;
run;

*LOOK ABOVE! after "var" is where your outcome should be;

* Run proc logistic for covariate patterns rather than individuals      ;
* outcome=y_j / m_j (not 0 or 1) , save fitted values                   ;

proc logistic noprint descending data=jdat;  ****  for a different data set change independent variable names in model statement. keep jdat as jdat. do NOT change this*****;
  model y_j/m_j= SER PO2 age CAN;
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
  model c_j=SER PO2 age CAN;
  weight v_j; run;

data zdat; merge cdat (keep=_freq_ chisq m_inv) ss (keep=_rmse_);
  rss=(_freq_-4-1)*_rmse_**2;  A=2*(_freq_-m_inv); ****  for a different data set change 8 to number of variables in the model *****;
  z=(chisq-(_freq_-4-1))/sqrt(A+rss);  z=abs(z);   ****  for a different data set change 8 to number of variables in the model *****;
  pval=(1-probnorm(z))*2;
run;

proc print noobs data=zdat; var pval; run;



***********************************************************;
**                   Osius-Rojek test -94                    **;
***********************************************************;

* If interaction terms are in the model, create the interaction terms  ;
* If categorical variables with more than 2 categories are in the model;
* create design variables                                              ;


* Sort new data set by model covariates;

proc sort data=ICU_94;                  ****  for a different data set change independent variable names in by statement ****************;
    by SER PO2 age CAN;
run;



* For each covariate pattern, j, save m_j= # with covariate pattern j and;
* y_j = # with outcome=1 in covariate pattern j                          ;

proc means n sum noprint data=ICU_94;   ****  for a different data set change independent variable names in by statement ***************;
                                      ****  and outcome variable name in var statement                                 ***************; 
      by SER PO2 age CAN;
      var STA; output out=jdat n=m_j sum=y_j;  *<--- indicate outcome;
run;

*LOOK ABOVE! after "var" is where your outcome should be;

* Run proc logistic for covariate patterns rather than individuals      ;
* outcome=y_j / m_j (not 0 or 1) , save fitted values                   ;

proc logistic noprint descending data=jdat;  ****  for a different data set change independent variable names in model statement. keep jdat as jdat. do NOT change this*****;
  model y_j/m_j= SER PO2 age CAN;
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
  model c_j=SER PO2 age CAN;
  weight v_j; run;

data zdat; merge cdat (keep=_freq_ chisq m_inv) ss (keep=_rmse_);
  rss=(_freq_-4-1)*_rmse_**2;  A=2*(_freq_-m_inv); ****  for a different data set change 8 to number of variables in the model *****;
  z=(chisq-(_freq_-4-1))/sqrt(A+rss);  z=abs(z);   ****  for a different data set change 8 to number of variables in the model *****;
  pval=(1-probnorm(z))*2;
run;

proc print noobs data=zdat; var pval; run;





*************************************************************;
***************42********************************************;
***** Stukel test of logistic regression model assumption ***;
*************************************************************;
ODS trace on;
ODS output GlobalTests=gt1;
proc logistic descending data=ICU_42;      ****  for a different data set change outcome and independent variable names *****;
                                            ****  in model statement                                                     *****;
  model STA=SER PO2 age CAN; 
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
  model STA=SER PO2 age CAN z1_j z2_j;
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


*************************************************************;
***************51********************************************;
***** Stukel test of logistic regression model assumption ***;
*************************************************************;
ODS trace on;
ODS output GlobalTests=gt1;
proc logistic descending data=ICU_51;      ****  for a different data set change outcome and independent variable names *****;
                                            ****  in model statement                                                     *****;
  model STA=SER PO2 age CAN; 
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
  model STA=SER PO2 age CAN z1_j z2_j;
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

*************************************************************;
***************84********************************************;
***** Stukel test of logistic regression model assumption ***;
*************************************************************;
ODS trace on;
ODS output GlobalTests=gt1;
proc logistic descending data=ICU_84;      ****  for a different data set change outcome and independent variable names *****;
                                            ****  in model statement                                                     *****;
  model STA=SER PO2 age CAN; 
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
  model STA=SER PO2 age CAN z1_j z2_j;
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


*************************************************************;
***************93********************************************;
***** Stukel test of logistic regression model assumption ***;
*************************************************************;
ODS trace on;
ODS output GlobalTests=gt1;
proc logistic descending data=ICU_93;      ****  for a different data set change outcome and independent variable names *****;
                                            ****  in model statement                                                     *****;
  model STA=SER PO2 age CAN; 
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
  model STA=SER PO2 age CAN z1_j z2_j;
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


*************************************************************;
***************94********************************************;
***** Stukel test of logistic regression model assumption ***;
*************************************************************;
ODS trace on;
ODS output GlobalTests=gt1;
proc logistic descending data=ICU_94;      ****  for a different data set change outcome and independent variable names *****;
                                            ****  in model statement                                                     *****;
  model STA=SER PO2 age CAN; 
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
  model STA=SER PO2 age CAN z1_j z2_j;
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



