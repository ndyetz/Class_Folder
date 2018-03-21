libname sdat 'C:\Users\ndyet_000\Desktop\Class Folders\Spring 2016\ERHS 642\Data';

/*data sdat.LOWBWT_altered; set LOWBWT_altered; run;*/

data ICU_altered; set sdat.ICU_altered; 
run;

proc logistic descending data  = ICU_altered;
model STA = CAN;
run;

proc logistic descending data  = ICU_altered;
model STA = CAN TYP;
run;

*.753 -> 75.3% EVIDENCE OF CONFOUNDING;

proc logistic descending data = ICU_altered;
model STA= CAN TYP CAN*TYP;
run;

*iNTERACT P = .3358 no no evidence of interaction;

proc genmod descending data=ICU_altered;

model STA = CAN TYP CAN*TYP/dist=bin link = identity;
output out=pdat p=phat;
run;

*Yes evidence of additive interaction p=.0236;

proc univariate data=pdat;
var phat;
run;

*needed to run proc univariate to make sure that no values were below 0 or above 1;


proc logistic descending data=ICU_altered;
model STA= CAN TYP CAN*TYP;

contrast 'both vs. neither' CAN 1 TYP 1 CAN*TYP 1/estimate=exp;
contrast 'TYP vs. neither' CAN 0 TYP 1 CAN*TYP 0/estimate=exp;
contrast 'CAN vs. neither' CAN 1 TYP 0 CAN*TYP 0/estimate=exp;
run;

proc sort data=icu_altered;
 by descending can descending sta;
run;
proc freq data=icu_altered order=data;
 tables typ*sta*can/norow nocol nopercent;
run; 

*question 2; 

/*data sdat.BURN1000_altered; set BURN1000_altered; run;*/

data BURN1000_altered; set sdat.BURN1000_altered; 
run;

proc univariate data = BURN1000_altered;
var AGE;
run;

proc logistic descending data=BURN1000_altered;
model DEATH= INH_INJ AGE/clodds=wald;
units AGE=20 INH_INJ=1;
run;

proc logistic descending data=BURN1000_altered;
model DEATH=INH_INJ/clodds=wald;
run;

*Evidence of confounding 18.14%;

proc logistic descending data=burn1000_altered; 
model death=inh_inj age inh_inj*age; 
run;


proc genmod descending data=burn1000_altered;

model death = inh_inj age inh_inj*age/dist=bin link = identity;
output out=pdat p=phat;
run;


proc univariate data=pdat;
var phat;
run;



proc logistic descending data=burn1000_altered;
model death=inh_inj age inh_inj*age;

contrast 'inh_inj 1 vs 0, age=20'
inh_inj 1 age 0 inh_inj*age 20 /estimate=exp;
contrast 'inh_inj 1 vs 0, age=40'
inh_inj 1 age 0 inh_inj*age 40 /estimate=exp;
contrast 'inh_inj 1 vs 0, age=40' 
inh_inj 1 age 0 inh_inj*age 60 /estimate=exp;
contrast 'inh_inj 1 vs 0, age=80' 
inh_inj 1 age 0 inh_inj*age 80 /estimate=exp;
run;


* Question 5 *****GRAPHS NOT WORKING!!!!****;

data OR; input age OR;
cards;
20 104.6
40 26.320
60 6.6431
80 1.6740
run;

proc print data = OR; run;

data OR_CL; input age OR CIL CIU;
cards;
20 104.6 43.1159 253.8
40 26.320 14.9265 46.5586
60 6.6431 3.7623 11.7297
80 1.6740 0.6902 4.0598
run;

proc print data = OR_CL; run;

axis1 minor=none label=(f=swiss h=2.5 'AGE');
axis2 minor=none label=(f=swiss h=2.5 a=90 'Odds Ratio');
goptions FTEXT=swissb HTEXT=2.0 HSIZE=6 in
VSIZE=6 in;
symbol1 c=black v=dot i=join;
symbol2 c=black v=circle i=join;
symbol3 c=black v=star h=2 i=join;

proc gplot data=OR;
plot (OR)*age/overlay haxis=axis1 vaxis=axis2 vref=1;
run; quit;

proc gplot data=OR_CL;
plot (OR CIL CIU)*age/overlay haxis=axis1 vaxis=axis2 vref=1;
run; quit;
