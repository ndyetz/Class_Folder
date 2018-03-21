********************************************;
* ch5.sas                                  *;
*                                          *;
* Examples for chapter 5                   *;
* Overall GOF                              *;
* Outliers                                 *;
* Prediction                               *;
********************************************;
libname sdat 'C:\Users\ndyet_000\Desktop\Class Folders\Spring 2016\ERHS 642\Data';

data glow500; set sdat.glow500; 
       if raterisk in (1,2) then raterisk2=0;
  else if raterisk=3 then raterisk2=1;

   priorfrac_age=priorfrac*age;
   momfrac_armassist=momfrac*armassist;  
run;



** Final model from chapter 4 **;


proc logistic descending data=glow500; 
  model fracture=priorfrac momfrac armassist raterisk2 height age priorfrac*age momfrac*armassist;
run;

***********************************************************;
** Pearson chi-square, deviance and Hosmer-Lemeshow test **;
***********************************************************;

proc logistic descending data=glow500; 
  model fracture=priorfrac momfrac armassist raterisk2 height age priorfrac*age momfrac*armassist         
                        /scale=n aggregate lackfit;
run;



***********************************************************;
**                   Osius-Rojek test                    **;
***********************************************************;

* If interaction terms are in the model, create the interaction terms  ;
* If categorical variables with more than 2 categories are in the model;
* create design variables                                              ;


* Sort new data set by model covariates;

proc sort data=glow500;                  ****  for a different data set change independent variable names in by statement ****************;
    by priorfrac momfrac armassist raterisk2 height age priorfrac_age momfrac_armassist;
run;



* For each covariate pattern, j, save m_j= # with covariate pattern j and;
* y_j = # with outcome=1 in covariate pattern j                          ;

proc means n sum noprint data=glow500;   ****  for a different data set change independent variable names in by statement ***************;
                                      ****  and outcome variable name in var statement                                 ***************; 
      by priorfrac momfrac armassist raterisk2 height age priorfrac_age momfrac_armassist;
      var fracture; output out=jdat n=m_j sum=y_j;
run;



* Run proc logistic for covariate patterns rather than individuals      ;
* outcome=y_j / m_j (not 0 or 1) , save fitted values                   ;

proc logistic noprint descending data=jdat;  ****  for a different data set change independent variable names in model statement *****;
  model y_j/m_j= priorfrac momfrac armassist raterisk2 height age priorfrac_age momfrac_armassist;
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
  model c_j=priorfrac momfrac armassist raterisk2 height age priorfrac_age momfrac_armassist;
  weight v_j; run;

data zdat; merge cdat (keep=_freq_ chisq m_inv) ss (keep=_rmse_);
  rss=(_freq_-8-1)*_rmse_**2;  A=2*(_freq_-m_inv); ****  for a different data set change 8 to number of variables in the model *****;
  z=(chisq-(_freq_-8-1))/sqrt(A+rss);  z=abs(z);   ****  for a different data set change 8 to number of variables in the model *****;
  pval=(1-probnorm(z))*2;
run;

proc print noobs data=zdat; var pval; run;





*************************************************************;
***** Stukel test of logistic regression model assumption ***;
*************************************************************;
ODS trace on;
ODS output GlobalTests=gt1;
proc logistic descending data=glow500;      ****  for a different data set change outcome and independent variable names *****;
                                            ****  in model statement                                                     *****;
  model fracture=priorfrac momfrac armassist raterisk2 height age priorfrac_age momfrac_armassist;
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
  model fracture=priorfrac momfrac armassist raterisk2 height age priorfrac_age momfrac_armassist z1_j z2_j;
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

proc sort data=glow500;                 
  by priorfrac momfrac armassist raterisk2 height age priorfrac_age momfrac_armassist;
run;

proc means n sum noprint data=glow500;                                                                        
      by priorfrac momfrac armassist raterisk2 height age priorfrac_age momfrac_armassist;
      var fracture; output out=jdat n=m_j sum=y_j;
run;

proc logistic descending data=jdat plots(only label)=(phat);  
  model y_j/m_j= priorfrac momfrac armassist raterisk2 height age priorfrac_age momfrac_armassist;
  output out=diag h=h difchisq=difchisq difdev=difdev c=db p=pihat; 
run;


************************************************;
***   Evaluate outliers                        *;
************************************************;
data diag; set diag; j=_N_; run;

proc print data=diag noobs; where j in (107,304,327,330,440,445); 
  var j priorfrac momfrac armassist raterisk2 height age y_j m_j pihat h difchisq difdev db; 
  format pihat h difchisq difdev db 7.3;
run; 


%macro outliers(j);
ODS output Logistic.ContrastEstimate=ors;

proc logistic descending data=diag; where j ne &j;
  model y_j/m_j=priorfrac momfrac armassist raterisk2 height age priorfrac*age momfrac*armassist; 
  contrast 'raterisk greater vs. same/less' raterisk2 1/estimate=exp;
  contrast 'height increase of 10 cm' height 10/estimate=exp;

  contrast 'prior fracture yes vs. no at age 55' priorfrac 1 priorfrac*age 55/estimate=exp;
  contrast 'prior fracture yes vs. no at age 60' priorfrac 1 priorfrac*age 60/estimate=exp;
  contrast 'prior fracture yes vs. no at age 65' priorfrac 1 priorfrac*age 65/estimate=exp;
  contrast 'prior fracture yes vs. no at age 70' priorfrac 1 priorfrac*age 70/estimate=exp;
  contrast 'prior fracture yes vs. no at age 75' priorfrac 1 priorfrac*age 75/estimate=exp;
  contrast 'prior fracture yes vs. no at age 80' priorfrac 1 priorfrac*age 80/estimate=exp;
  contrast 'prior fracture yes vs. no at age 85' priorfrac 1 priorfrac*age 85/estimate=exp;
  contrast 'prior fracture yes vs. no at age 90' priorfrac 1 priorfrac*age 90/estimate=exp;

  contrast 'age+10 at priorfrac=1' age 10 priorfrac*age 10/estimate=exp;
  contrast 'age+10 at priorfrac=0' age 10 priorfrac*age 0/estimate=exp;

  contrast 'momfrac yes vs. no at armassist=1' momfrac 1 momfrac*armassist 1/estimate=exp;
  contrast 'momfrac yes vs. no at armassist=0' momfrac 1 momfrac*armassist 0/estimate=exp;

  contrast 'armassist yes vs. no at momfrac=1' armassist 1 momfrac*armassist 1/estimate=exp;
  contrast 'armassist yes vs. no at momfrac=0' armassist 1 momfrac*armassist 0/estimate=exp;
run;

data ors&j; set ors; 
  drop type row stderr alpha lowerlimit upperlimit waldchisq;  
  rename estimate=OR&j probchisq=p&j; run; 
proc print data=ors&j; run;

%mend outliers;

%outliers(0);
%outliers(107);
%outliers(304);
%outliers(327);
%outliers(330);
%outliers(440);
%outliers(445);

data ors; merge ors0 ors107 ors304 ors327 ors330 ors440 ors445; run;
proc print data=ors noobs; 
  var contrast or0 or107 or304 or327 or330 or440 or445 p0 p107 p304 p327 p330 p440 p445; 
  format or0 or107 or304 or327 or330 or440 or445 6.2; 
run;

proc datasets; delete ors; run; quit;




*******************************************;
*** cross classification and roc curve ****;
*******************************************;

proc logistic descending data=glow500;
  model fracture=priorfrac momfrac armassist raterisk2 height age priorfrac*age momfrac*armassist
                   /outroc=rocdat; *<-- creates ROC curve;
run;

proc print data=rocdat; run;

** Choose cutpoint **;
data rocdat;
  set rocdat;
  spec=1-_1mspec_;
run;

axis1 label=(f=swiss h=2.5 'Probability Cutoff') minor=none;
axis2 label=(f=swiss h=2.5 a=90 'Sensitivity,Specificity') minor=none;
goptions FTEXT=swissb HTEXT=2.0 HSIZE=8 in VSIZE=6 in;
symbol1 v=dot i=join c=black h=1;
symbol2 v=diamond i=join c=black h=1;

footnote1 c=black f=special h=1 'J J J' f=swissb h=1.5 '    Sensitivity'
          c=black f=special h=1 '      D D D' f=swissb h=1.5 '    Specificity';

proc gplot data=rocdat;
  plot (_sensit_ spec)*_prob_/overlay haxis=axis1 vaxis=axis2;
run;
quit;

footnote;

proc logistic descending data=glow500;
  model fracture=priorfrac momfrac armassist raterisk2 height age priorfrac*age momfrac*armassist
                   /ctable pprob=(0.25 0.5) pevent=0.05 0.25; *<-- pprob = cutpoint chosen from the specificity/sensitivity graph created. 
				   note, that it is good practice to include the 0.5 normal cut point (even if you know it's not right
				   pevennt = the probability of the event happening (i.e your outcome happening) These numbers are your expected prevalence;
				   run;






