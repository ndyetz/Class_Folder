********************************************;
* ch7.sas                                  *;
*                                          *;
* 1-1 matched analysis chapter 7           *;
********************************************;
libname sdat 'C:\Users\ndyet_000\Desktop\Class Folders\Spring 2016\ERHS 642\Data';

/*
data test;  input pair LC smo age;
cards;
1	1	1	60
1	0	0	60
2	1	1	68
2	0	0	68
3	1	1	59
3	0	0	59
4	1	1	72
4	0	0	72
5	1	0	83
5	0	1	83
6	1	0	69
6	0	1	69
run;

proc logistic descending data=test;
  model LC=smo;
  strata pair;
run;
*/

/*
data sdat.GLOW11M; set GLOW11M; run;
*/

data GLOW11M; set sdat.GLOW11M; 

       if 134<=height<=157 then height4=0;
  else if 157< height<=160 then height4=1;
  else if 160< height<=165 then height4=2;
  else if 165< height<=178 then height4=3;

       if 39<weight<= 59 then weight4=0;
  else if 59<weight<= 68 then weight4=1;
  else if 68<weight<= 79 then weight4=2;
  else if 79<weight<=125 then weight4=3;

       if 15<=bmi<=23 then bmi4=0;
  else if 23< bmi<=26 then bmi4=1;
  else if 26< bmi<=31 then bmi4=2;
  else if 31< bmi<=45 then bmi4=3;

run;

* Create formats for drug and died variables *;
proc format;
  value diff -1 = 'Non-exposed=case, exposed=control'
              0 = 'Concordant'
			  1 = 'Exposed=case, non-exposed=control';
run;

*******************************************************************;
*              purposeful selection                               *;
*******************************************************************;

****************** univariate analyses ****************************;

** categorical variables  -  discordant pairs **;

proc sort data=GLOW11M; by pair fracture; run;

data diffs; set GLOW11M; by pair; 
  * dif function calculates, for each pair, the difference between the case's and the control's        *;
  * value of the explanatory variable                                                                  *;
  * frequency corresponding to  1  is the number of pairs where case exposed and control not exposed   *; 
  * frequency corresponding to -1 is the number of pairs where case not exposed and control exposed    *; 
  * frequency corresponding to  0 is the number of pairs where case and control exposed or not exposed *; 

  d_priorfrac=dif(priorfrac); 
  d_premeno=dif(premeno); 
  d_momfrac=dif(momfrac); 
  d_armassist=dif(armassist); 
  d_smoke=dif(smoke); 
  if last.pair then output; run;

proc freq data=diffs; tables d_priorfrac d_premeno d_momfrac d_armassist d_smoke; 
  format d_priorfrac d_premeno d_momfrac d_armassist d_smoke diff.; run;



** continuous variables - descriptive stats, extreme values, scale **;

proc means mean std min q1 median q3 max data=GLOW11M maxdec=1; class fracture; var height weight bmi; run;

proc univariate data=GLOW11M; class fracture; var height weight bmi; run;

proc univariate data=GLOW11M; var height weight bmi; run;


** univariate ORs **;
proc logistic descending data=GLOW11M; model fracture=height/clodds=wald; strata pair; unit height=10; run;
proc logistic descending data=GLOW11M; model fracture=weight/clodds=wald; strata pair; unit weight=3; run;
proc logistic descending data=GLOW11M; model fracture=bmi/clodds=wald; strata pair; unit bmi=3; run;
proc logistic descending data=GLOW11M; model fracture=priorfrac; strata pair; run;
proc logistic descending data=GLOW11M; model fracture=premeno; strata pair; run;
proc logistic descending data=GLOW11M; model fracture=momfrac; strata pair; run;
proc logistic descending data=GLOW11M; model fracture=armassist; strata pair; run;
proc logistic descending data=GLOW11M; model fracture=smoke; strata pair; run;
proc logistic descending data=GLOW11M; class raterisk/param=ref ref=first; model fracture=raterisk; strata pair; run;



*___________________________________________________________________*;
*                                                                   *;
*                     SPLINES                                       *;  
*___________________________________________________________________*;

* x modeled using spline with constant connection *;
proc logistic descending data=GLOW11M;
  effect xs=spline(height/knotmethod=list(157 160 165) basis=tpf(noint) degree=0); model fracture=xs; effectplot; run;

* x modeled using spline with linear connection *;
proc logistic descending data=GLOW11M;
  effect xs=spline(height/knotmethod=list(157 160 165) basis=tpf(noint) degree=1); model fracture=xs; effectplot; run;

* x modeled using spline with cubic connection *;
proc logistic descending data=GLOW11M;
  effect xs=spline(height/knotmethod=list(157 160 165) basis=tpf(noint) naturalcubic); model fracture=xs; effectplot; run;



* x modeled using spline with constant connection *;
proc logistic descending data=GLOW11M;
  effect xs=spline(weight/knotmethod=list(59 68 79) basis=tpf(noint) degree=0); model fracture=xs; effectplot; run;

* x modeled using spline with linear connection *;
proc logistic descending data=GLOW11M;
  effect xs=spline(weight/knotmethod=list(59 68 79) basis=tpf(noint) degree=1); model fracture=xs; effectplot; run;

* x modeled using spline with cubic connection *;
proc logistic descending data=GLOW11M;
  effect xs=spline(weight/knotmethod=list(59 68 79) basis=tpf(noint) naturalcubic); model fracture=xs; effectplot; run;


* x modeled using spline with constant connection *;
proc logistic descending data=GLOW11M;
  effect xs=spline(bmi/knotmethod=list(23 26 31) basis=tpf(noint) degree=0); model fracture=xs; effectplot; run;

* x modeled using spline with linear connection *;
proc logistic descending data=GLOW11M;
  effect xs=spline(bmi/knotmethod=list(23 26 31) basis=tpf(noint) degree=1); model fracture=xs; effectplot; run;

* x modeled using spline with cubic connection *;
proc logistic descending data=GLOW11M;
  effect xs=spline(bmi/knotmethod=list(23 26 31) basis=tpf(noint) naturalcubic); model fracture=xs; effectplot; run;

** multivariate ORs **;
proc logistic descending data=GLOW11M; class raterisk/param=ref ref=first; model fracture=height weight bmi priorfrac premeno momfrac armassist raterisk; strata pair; run;
proc logistic descending data=GLOW11M; class raterisk/param=ref ref=first; model fracture=height priorfrac premeno momfrac armassist raterisk; strata pair; run;
proc logistic descending data=GLOW11M; class raterisk/param=ref ref=first; model fracture=weight priorfrac premeno momfrac armassist raterisk; strata pair; run;
proc logistic descending data=GLOW11M; class raterisk/param=ref ref=first; model fracture=height weight priorfrac premeno momfrac armassist raterisk; strata pair; run;
proc logistic descending data=GLOW11M; class raterisk/param=ref ref=first; model fracture=bmi priorfrac premeno momfrac armassist raterisk; strata pair; run;
proc logistic descending data=GLOW11M; class raterisk/param=ref ref=first; model fracture=bmi height priorfrac premeno momfrac armassist raterisk; strata pair; run;

proc logistic descending data=GLOW11M; class raterisk/param=ref ref=first; 
  model fracture=bmi weight priorfrac premeno momfrac armassist raterisk/clodds=wald; 
  strata pair; 
  unit bmi=3 weight=3 priorfrac=1 premeno=1 momfrac=1 armassist=1 raterisk=1; 
run;

proc logistic descending data=GLOW11M; class raterisk/param=ref ref=first; 
  model fracture=bmi weight priorfrac momfrac armassist raterisk/clodds=wald; 
  strata pair; 
  unit weight=3 bmi=3 priorfrac=1 momfrac=1 armassist=1 raterisk=1; 
run;

proc logistic descending data=GLOW11M; 
  model fracture=bmi weight priorfrac momfrac armassist/clodds=wald; 
  strata pair; 
  unit weight=3 bmi=3 priorfrac=1 momfrac=1 armassist=1; 
run;






** fp assessment **;

%macro fp1(dset,y,var,lb,p1);
 %do %until(&p1=7);
 %put ***** &p1 *****;
 ODS output FitStatistics = mfs;
 data fpdat; set &dset; if &var>&lb; pc=&p1/2;
    if pc ne 0 then F1=&var**pc; else if pc = 0 then F1=log(&var);
 run;
 proc logistic descending data=fpdat; 
  MODEL &y=F1 bmi priorfrac momfrac armassist; strata pair;      ***** for scale assessment in the presence of other model covariates...make change here ****;
  /*MODEL &y=F1 weight priorfrac momfrac armassist; strata pair; */ 
 run;
 data mfs; set mfs; if criterion='-2 Log L'; drop Criterion InterceptOnly; run; 
 proc append data=mfs base=tres; run;
 proc datasets; delete fpdat mfs; run;
 quit;
 %let p1=%eval(&p1+1);
 %end;
%mend fp1;

%fp1(GLOW11M,fracture,weight,0,-4);  
/* %fp1(GLOW11M,fracture,bmi,0,-4); */                       ***** for any scale assessment...make change here  ******;


data pvals; do p1=-4 to 6; output; end; run;
data pvals; set pvals; p1=p1/2; run;
data tres; merge pvals tres; if p1 in (-1.5, 1.5, 2.5) then delete; run; 
proc sort data=tres; by WithCovariates; run;
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
   MODEL &y=F1 F2 bmi priorfrac momfrac armassist; strata pair;      ***** for scale assessment in the presence of other model covariates...make change here ****;
/*   MODEL &y=F1 F2 weight priorfrac momfrac armassist; strata pair; */ 
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

 %fp2(GLOW11M,fracture,weight,0,-4,-4);                             ***** for any scale assessment...make change here  ******;
/* %fp2(GLOW11M,fracture,bmi,0,-4,-4);  */

data pvals2; do p1=-4 to 6; do p2=-4 to 6; output;end; end; run;
data pvals2; set pvals2; p1=p1/2; p2=p2/2; run;
data tres2; merge pvals2 tres2;
 if p1 in (-1.5, 1.5, 2.5) or p2 in (-1.5, 1.5, 2.5) then delete; run;
proc sort data=tres2; by WithCovariates; run;
data tres2; set tres2; if _N_=1; run;



data comb; set tres tres2; run;

data c1; set comb; if p1=1 and p2=.; rename WithCovariates=Dev_linear;
                                     drop p1 p2; run;
data c2; set comb; if p1 ne 1 and p2=.; rename WithCovariates=Dev_fp1;
                                        rename p1=e_fp1; drop p2; run;
data c3; set comb; if p2 ne .; rename WithCovariates=Dev_fp2;
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
run;

proc datasets; delete tres tres2 pvals pvals2 comb c c1 c2 c3; run; quit;


** graphical scale assessment **;

proc logistic descending data=GLOW11M; class weight4/param=ref ref=first; 
  model fracture=weight4 bmi priorfrac momfrac armassist; strata pair; 
run;


proc logistic descending data=GLOW11M; class bmi4/param=ref ref=first; 
  model fracture=weight bmi4 priorfrac momfrac armassist; strata pair; 
run;


data pdat_weight; input coeff mp;
cards;
 0.0000  50  
-0.1102  64  
-0.3523  74  
-1.4515 102  
run;

data pdat_bmi; input coeff mp;
cards;
 0.0000  19  
 0.2532  24.5  
 0.5154  28  
 0.8655  38   
run;



axis1 order=(50 to 110 by 20) label=(f=swiss h=3 'Weight') minor=none;
axis2 order=(-2 to 0 by 0.2) label=(f=swiss h=3 a=90 'Coefficient') minor=none;

goptions FTEXT=swissb HTEXT=2.0 HSIZE=6 in VSIZE=6 in;
symbol1 c=black v=dot i=stepjc;

proc gplot data=pdat_weight; plot coeff*mp/haxis=axis1 vaxis=axis2;  run; quit;


axis1 order=(10 to 40 by 10)  label=(f=swiss h=3 'BMI') minor=none;
axis2 order=(0 to 1 by 0.2) label=(f=swiss h=3 a=90 'Coefficient') minor=none;

proc gplot data=pdat_bmi; plot coeff*mp/haxis=axis1 vaxis=axis2;  run; quit;


  


** interactions **;
proc logistic descending data=GLOW11M; model fracture=weight bmi priorfrac momfrac armassist weight*bmi; strata pair; run;
proc logistic descending data=GLOW11M; model fracture=weight bmi priorfrac momfrac armassist weight*priorfrac; strata pair; run;
proc logistic descending data=GLOW11M; model fracture=weight bmi priorfrac momfrac armassist weight*momfrac; strata pair; run;
proc logistic descending data=GLOW11M; model fracture=weight bmi priorfrac momfrac armassist weight*armassist; strata pair; run;

proc logistic descending data=GLOW11M; model fracture=weight bmi priorfrac momfrac armassist bmi*priorfrac; strata pair; run;
proc logistic descending data=GLOW11M; model fracture=weight bmi priorfrac momfrac armassist bmi*momfrac; strata pair; run;
proc logistic descending data=GLOW11M; model fracture=weight bmi priorfrac momfrac armassist bmi*armassist; strata pair; run;

proc logistic descending data=GLOW11M; model fracture=weight bmi priorfrac momfrac armassist priorfrac*momfrac; strata pair; run;
proc logistic descending data=GLOW11M; model fracture=weight bmi priorfrac momfrac armassist priorfrac*armassist; strata pair; run;

proc logistic descending data=GLOW11M; model fracture=weight bmi priorfrac momfrac armassist momfrac*armassist; strata pair; run;

proc logistic descending data=GLOW11M; model fracture=weight bmi priorfrac momfrac armassist weight*age; strata pair; run;
proc logistic descending data=GLOW11M; model fracture=weight bmi priorfrac momfrac armassist bmi*age; strata pair; run;
proc logistic descending data=GLOW11M; model fracture=weight bmi priorfrac momfrac armassist priorfrac*age; strata pair; run;
proc logistic descending data=GLOW11M; model fracture=weight bmi priorfrac momfrac armassist momfrac*age; strata pair; run;
proc logistic descending data=GLOW11M; model fracture=weight bmi priorfrac momfrac armassist armassist*age; strata pair; run;








***** diagnostics ****;

proc logistic descending data=GLOW11M;
  model fracture=weight bmi priorfrac momfrac armassist; strata pair; 
  output out=diag h=h stdreschi=sreschi p=pihat; 
run;


axis1 label=(f=swiss h=3 'pihat') minor=none;
axis2 label=(f=swiss h=3 a=90 'h') minor=none;
axis3 label=(f=swiss h=3 a=90 'sreschi') minor=none;

goptions FTEXT=swissb HTEXT=2.0 HSIZE=6 in VSIZE=6 in;
symbol1 c=black v=dot i=none;

proc gplot data=diag;  plot h*pihat/haxis=axis1 vaxis=axis2; run; quit;
proc gplot data=diag;  plot sreschi*pihat/haxis=axis1 vaxis=axis3; run; quit;


proc sort data=diag; by pair descending fracture; run;
proc print data=diag noobs; where sreschi>2.1 or sreschi<-2.1; 
  var pair fracture sreschi pihat; run;
proc print data=diag noobs; where h>0.11; 
  var pair fracture h pihat; run;

proc print data=diag noobs; where pair in (37,38,49, 87, 117); 
  var pair fracture weight bmi priorfrac momfrac armassist pihat h sreschi; 
  format BMI pihat h sreschi 6.2;
run; 



proc logistic descending data=GLOW11M; model fracture=weight bmi priorfrac momfrac armassist; strata pair; run;
proc logistic descending data=GLOW11M; where pair ne 37; model fracture=weight bmi priorfrac momfrac armassist; strata pair; run;
proc logistic descending data=GLOW11M; where pair ne 38; model fracture=weight bmi priorfrac momfrac armassist; strata pair; run;
proc logistic descending data=GLOW11M; where pair ne 117; model fracture=weight bmi priorfrac momfrac armassist; strata pair; run;
proc logistic descending data=GLOW11M; where pair not in (37,38,117); model fracture=weight bmi priorfrac momfrac armassist; strata pair; run;

 
** Final presentation of the model **;
proc logistic descending data=GLOW11M; model fracture=weight bmi priorfrac momfrac armassist/clodds=wald; strata pair;  
  units weight=3 bmi=3 priorfrac=1 momfrac=1 armassist=1; run;
