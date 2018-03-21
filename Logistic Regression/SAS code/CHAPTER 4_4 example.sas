libname sdat 'C:\Users\ndyet_000\Desktop\Class Folders\Spring 2016\ERHS 642\Data';

data GLOW500; set sdat.GLOW500; 

  if height>=165 then height3=0;
  else if 158<=height<165 then height3=1;
  else if 134<=height<158 then height3=2;

       if height>=158 then height2=0;
  else if 134<=height<158 then height2=1;

  
       if 55<=age< 61 then age4=0;
  else if 61<=age< 67 then age4=1;
  else if 67<=age< 76 then age4=2;
  else if 76<=age<=90 then age4=3;

       if raterisk in (1,2) then raterisk2=0;
  else if raterisk=3 then raterisk2=1;

run;

* Descriptive statistics *;
proc sort data=glow500; by fracture; run;

proc freq data=glow500;  tables (site_id priorfrac premeno momfrac armassist smoke raterisk)*fracture/norow nopercent; run;
proc univariate data=glow500; by fracture; var age weight height bmi fracscore; run;


* Spline effect plots *;
proc univariate data=glow500; var age weight height bmi fracscore; run;

proc logistic descending data=glow500;
  effect ages=spline(age/knotmethod=list(61 67 76) basis=tpf(noint) degree=1);
  model fracture=ages; effectplot;
run;

proc logistic descending data=glow500;
  effect weights=spline(weight/knotmethod=list(59.9 68 81.4) basis=tpf(noint) degree=1);
  model fracture=weights; effectplot;
run;

proc logistic descending data=glow500;
  effect heights=spline(height/knotmethod=list(157 161.5 165) basis=tpf(noint) degree=1);
  model fracture=heights; effectplot;
run;

proc logistic descending data=glow500;
  effect bmis=spline(bmi/knotmethod=list(23.3 26.4 30.8) basis=tpf(noint) degree=1);
  model fracture=bmis; effectplot;
run;

proc logistic descending data=glow500;
  effect fracscores=spline(fracscore/knotmethod=list(2 3 5) basis=tpf(noint) degree=1);
  model fracture=fracscores; effectplot;
run;


* Median height among heights < 165 *;
proc univariate data=glow500; where height<165; var height; run;


* Univariate models *;
proc logistic descending data=glow500; class site_id/param=ref ref=first; model fracture=site_id; run;
proc logistic descending data=glow500; class priorfrac/param=ref ref=first; model fracture=priorfrac; run;
proc logistic descending data=glow500; class premeno/param=ref ref=first; model fracture=premeno; run;
proc logistic descending data=glow500; class momfrac/param=ref ref=first; model fracture=momfrac; run;
proc logistic descending data=glow500; class armassist/param=ref ref=first; model fracture=armassist; run;
proc logistic descending data=glow500; class smoke/param=ref ref=first; model fracture=smoke; run;
proc logistic descending data=glow500; class raterisk/param=ref ref=first; model fracture=raterisk; run;
proc logistic descending data=glow500; class height3/param=ref ref=first; model fracture=height3; run;

proc logistic descending data=glow500; model fracture=age/clodds=wald; units age=10; run;
proc logistic descending data=glow500; model fracture=weight/clodds=wald; units weight=20;  run;
proc logistic descending data=glow500; model fracture=bmi/clodds=wald; units bmi=5; run;
proc logistic descending data=glow500; model fracture=fracscore/clodds=wald; units fracscore=1; run;

* Multivariate models *;
proc logistic descending data=glow500; 
  class site_id priorfrac momfrac armassist raterisk height3/param=ref ref=first; 
  model fracture=site_id priorfrac momfrac armassist raterisk height3 age fracscore/clodds=wald;
  units age=10 fracscore=1;
run;

proc logistic descending data=glow500; 
  class priorfrac momfrac armassist raterisk height3/param=ref ref=first; 
  model fracture=priorfrac momfrac armassist raterisk height3 age fracscore/clodds=wald;
  units age=10 fracscore=1;
run;

data pval; p=1-probchi(6.0259,5); run; 
proc print data=pval; run;

proc logistic descending data=glow500; 
  class priorfrac momfrac armassist raterisk height3/param=ref ref=first; 
  model fracture=priorfrac momfrac armassist raterisk height3 age/clodds=wald;
  units age=10;
run;

proc logistic descending data=glow500; 
  class priorfrac momfrac armassist raterisk2 height3/param=ref ref=first; 
  model fracture=priorfrac momfrac armassist raterisk2 height3 age/clodds=wald;
  units age=10;
run;

proc logistic descending data=glow500; 
  class priorfrac momfrac armassist raterisk2 height2/param=ref ref=first; 
  model fracture=priorfrac momfrac armassist raterisk2 height2 age/clodds=wald;
  units age=10;
run;


proc logistic descending data=glow500; 
  class priorfrac momfrac armassist raterisk2 height3 premeno/param=ref ref=first; 
  model fracture=priorfrac momfrac armassist raterisk2 height3 age premeno/clodds=wald;
  units age=10;
run;


proc logistic descending data=glow500; 
  class priorfrac momfrac armassist raterisk2 height3 smoke/param=ref ref=first; 
  model fracture=priorfrac momfrac armassist raterisk2 height3 age smoke/clodds=wald;
  units age=10;
run;

proc logistic descending data=glow500; 
  class priorfrac momfrac armassist raterisk2 height3/param=ref ref=first; 
  model fracture=priorfrac momfrac armassist raterisk2 height3 age weight/clodds=wald;
  units age=10 weight=20;
run;


proc logistic descending data=glow500; 
  class priorfrac momfrac armassist raterisk2 height3/param=ref ref=first; 
  model fracture=priorfrac momfrac armassist raterisk2 height3 age bmi/clodds=wald;
  units age=10 bmi=5;
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

   model &y=F1 priorfrac momfrac armassist raterisk2 age; *-------------------F1 represents the variable being tested for scale (height);

 run;
 data mfs; set mfs; if criterion='-2 Log L'; drop Criterion InterceptOnly; run;
 proc append data=mfs base=tres; run;
 proc datasets; delete fpdat mfs; run;
 quit;
 %let p1=%eval(&p1+1);
 %end;
%mend fp1;


%fp1(glow500,fracture,height,0,-4); *-----------Enter data set name, outcome variable name and name of variable being tested for scale;



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

   model &y=F1 F2 priorfrac momfrac armassist raterisk2 age; *------------F1 and F2 represent the variable being tested for scale (height);

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

%fp2(glow500,fracture,height,0,-4,-4); *-----------Enter data set name, outcome variable name and name of variable being tested for scale;



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






* Multivariate scale assessment, age *;
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

   model &y=F1 priorfrac momfrac armassist raterisk2 height; *-------------------F1 represents the variable being tested for scale (age);

 run;
 data mfs; set mfs; if criterion='-2 Log L'; drop Criterion InterceptOnly; run;
 proc append data=mfs base=tres; run;
 proc datasets; delete fpdat mfs; run;
 quit;
 %let p1=%eval(&p1+1);
 %end;
%mend fp1;


%fp1(glow500,fracture,age,0,-4); *-----------Enter data set name, outcome variable name and name of variable being tested for scale;



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

   model &y=F1 F2 priorfrac momfrac armassist raterisk2 height; *------------F1 and F2 represent the variable being tested for scale (age);

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

%fp2(glow500,fracture,age,0,-4,-4); *-----------Enter data set name, outcome variable name and name of variable being tested for scale;



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







* Main effects model *;
proc logistic descending data=glow500; 
  class priorfrac momfrac armassist raterisk2/param=ref ref=first; 
  model fracture=priorfrac momfrac armassist raterisk2 height age/clodds=wald;
  units age=10 height=10;
run;



* Multiplicative interactions - one at a time *;
proc logistic descending data=glow500; 
  class priorfrac momfrac armassist raterisk2/param=ref ref=first; 
  model fracture=priorfrac momfrac armassist raterisk2 height age priorfrac*momfrac;
run;

proc logistic descending data=glow500; 
  class priorfrac momfrac armassist raterisk2/param=ref ref=first; 
  model fracture=priorfrac momfrac armassist raterisk2 height age priorfrac*armassist;
run;

proc logistic descending data=glow500; 
  class priorfrac momfrac armassist raterisk2/param=ref ref=first; 
  model fracture=priorfrac momfrac armassist raterisk2 height age priorfrac*raterisk2;
run;

proc logistic descending data=glow500; 
  class priorfrac momfrac armassist raterisk2/param=ref ref=first; 
  model fracture=priorfrac momfrac armassist raterisk2 height age priorfrac*height;
run;

proc logistic descending data=glow500; 
  class priorfrac momfrac armassist raterisk2/param=ref ref=first; 
  model fracture=priorfrac momfrac armassist raterisk2 height age priorfrac*age;
run;

proc logistic descending data=glow500; 
  class priorfrac momfrac armassist raterisk2/param=ref ref=first; 
  model fracture=priorfrac momfrac armassist raterisk2 height age momfrac*armassist;
run;

proc logistic descending data=glow500; 
  class priorfrac momfrac armassist raterisk2/param=ref ref=first; 
  model fracture=priorfrac momfrac armassist raterisk2 height age momfrac*raterisk2;
run;

proc logistic descending data=glow500; 
  class priorfrac momfrac armassist raterisk2/param=ref ref=first; 
  model fracture=priorfrac momfrac armassist raterisk2 height age momfrac*height;
run;

proc logistic descending data=glow500; 
  class priorfrac momfrac armassist raterisk2/param=ref ref=first; 
  model fracture=priorfrac momfrac armassist raterisk2 height age momfrac*age;
run;

proc logistic descending data=glow500; 
  class priorfrac momfrac armassist raterisk2/param=ref ref=first; 
  model fracture=priorfrac momfrac armassist raterisk2 height age armassist*raterisk2;
run;

proc logistic descending data=glow500; 
  class priorfrac momfrac armassist raterisk2/param=ref ref=first; 
  model fracture=priorfrac momfrac armassist raterisk2 height age armassist*height;
run;

proc logistic descending data=glow500; 
  class priorfrac momfrac armassist raterisk2/param=ref ref=first; 
  model fracture=priorfrac momfrac armassist raterisk2 height age armassist*age;
run;

proc logistic descending data=glow500; 
  class priorfrac momfrac armassist raterisk2/param=ref ref=first; 
  model fracture=priorfrac momfrac armassist raterisk2 height age raterisk2*height;
run;

proc logistic descending data=glow500; 
  class priorfrac momfrac armassist raterisk2/param=ref ref=first; 
  model fracture=priorfrac momfrac armassist raterisk2 height age raterisk2*age;
run;

proc logistic descending data=glow500; 
  class priorfrac momfrac armassist raterisk2/param=ref ref=first; 
  model fracture=priorfrac momfrac armassist raterisk2 height age height*age;
run;



* Multiplicative interactions - significant at 0.1 level combined *;
proc logistic descending data=glow500; 
  class priorfrac momfrac armassist raterisk2/param=ref ref=first; 
  model fracture=priorfrac momfrac armassist raterisk2 height age priorfrac*momfrac priorfrac*age momfrac*armassist;
run;




* Final model *;
proc logistic descending data=glow500; 
  class priorfrac momfrac armassist raterisk2/param=ref ref=first; 
  model fracture=priorfrac momfrac armassist raterisk2 height age priorfrac*age momfrac*armassist;

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



data ORplot;  
  input Age OR lPI uPI;
cards;
55 4.8164	1.8043	12.8575
60 3.6536	1.6924	7.8871
65 2.7714	1.5346	5.0052
70 2.1023	1.2936	3.4165
75 1.5947	0.9660	2.6328
80 1.2097	0.6447	2.2698
85 0.9176	0.4048	2.0803
90 0.6961	0.2471	1.9611
run;
	

axis1 label=(f=swiss h=2.00 'Age') 
      order=(50 to 90 by 10) minor=none;
axis2 label=(f=swiss h=2.25 a=90 'OR') 
      order=(0 to 14 by 2) minor=none;
goptions FTEXT=swissb HTEXT=2.0 HSIZE=8 in VSIZE=6 in;
symbol1 v=dot i=join c=black h=1.5;
symbol2 v=diamond i=join c=black h=1.5;
symbol3 v=diamond i=join c=black h=1.5;

footnote1 c=black f=special h=1 'J J J' f=swissb h=1.75 '  OR '
          c=black f=special h=1 '      D D D' f=swissb h=1.75 '  95% CI';

proc gplot data=ORplot; 
  plot (OR lPI uPI)*age/overlay haxis=axis1 vaxis=axis2 vref=1;
run;
quit;




*********** OPTIONAL *************************************;
proc genmod descending data=glow500;
  model fracture=priorfrac momfrac armassist raterisk2 height age priorfrac*age momfrac*armassist;
  output out=pdat p=phat;
run;


proc univariate data=pdat; var phat; run;
