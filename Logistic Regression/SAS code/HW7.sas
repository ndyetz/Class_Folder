libname sdat 'C:\Users\ndyet_000\Desktop\Class Folders\Spring 2016\ERHS 642\Data';


data ICU_altered; set sdat.ICU_altered;

 if race=1 then do; r1=0; r2=0; end;
 else if race=2 then do; r1=1; r2=0; end;
 else if race=3 then do; r1=0; r2=1; end;


if 16<= SYS <110 then SYSa=0;
else if 110<= SYS <150 then SYSa=1;
else if SYS >= 150 then SYSa=2;


 if SYSa=0 then do; s1=0; s2=0; end;
 else if SYSa=1 then do; s1=1; s2=0; end;
 else if SYSa=2 then do; s1=0; s2=1; end;

run;


proc logistic descending data=ICU_altered;
model STA= SER CRN INF CPR TYP PO2 PCO CRE SYSa age
/ selection=score start=3 stop=8 best=5;
run;


*best 3 main effects model; 

Proc logistic descending data=ICU_altered; 
  class SER CRN /param=ref ref=first; 
  model STA=SER CRN AGE/clodds=wald;
  units age=10;
run;

*best 4 vmain effects model;

Proc logistic descending data=ICU_altered; 
  class SER CRN SYSa/param=ref ref=first; 
  model STA=SER CRN SYSa AGE/clodds=wald;
  units age=10;
run;


*Best 4 main effects model without CRN;

Proc logistic descending data=ICU_altered; 
  class SER SYSa/param=ref ref=first; 
  model STA=SER SYSa AGE/clodds=wald;
  units age=10;
run;

*best 5 main effects model;

Proc logistic descending data=ICU_altered; 
  class SER CRN CPR /param=ref ref=first; 
  model STA=SER CRN CPR AGE/clodds=wald;
  units age=10;
run;

*best 6 main effects model;

Proc logistic descending data=ICU_altered; 
  class SER CRN CPR PO2/param=ref ref=first; 
  model STA=SER CRN CPR PO2 AGE/clodds=wald;
  units age=10;
run;


*best 7 main effects model;

Proc logistic descending data=ICU_altered; 
  class SER CRN CPR PO2 SYSa TYP/param=ref ref=first; 
  model STA=SER CRN CPR PO2 TYP SYSa AGE/clodds=wald;
  units age=10;
run;


*best 8 main effects model;

Proc logistic descending data=ICU_altered; 
  class SER CRN CPR PO2 SYSa CRE TYP/param=ref ref=first; 
  model STA=SER CRN CPR PO2 TYP CRE SYSa AGE/clodds=wald;
  units age=10;
run;


*Best subset model with interaction terms;

proc logistic descending data=ICU_altered;
model STA= SER SYSa age

SER*SYSa SER*AGE SYSa*age

/ selection=score start=4 stop=6 best=4 include=3;
run;



*Best 4 main effect model w/ interactins

proc logistic descending data=ICU_altered; 

proc logistic descending data=ICU_altered;
  class SER SYSa /param=ref ref=first; 
  model STA=SER SYSa AGE SER*AGE/clodds=wald;
  units age=10;
run;




*Stepwise selection; 

proc logistic descending data=ICU_altered;
class SER CRN INF CPR TYP PO2 PCO CRE s1 s2/param=ref ref=first;
model STA= SER CRN INF CPR TYP PO2 PCO CRE s1 s2 age

/stepwise sle=0.15 sls=0.20 details;
run;

*Reduced stepwise selection;

proc logistic descending data=ICU_altered;
class SER INF TYP PO2 PCO s1 s2/param=ref ref=first;
model STA= SER INF TYP PO2 PCO s1 s2 age

/stepwise sle=0.15 sls=0.20 details;
run;

*Stepwise with interactions; 

proc logistic descending data=ICU_altered;
class SER s2/param=ref ref=first;
model STA= SER s2 age

SER*s2 SER*age s2*AGE

/stepwise sle=0.15 sls=0.20 include=3 details;
run;




