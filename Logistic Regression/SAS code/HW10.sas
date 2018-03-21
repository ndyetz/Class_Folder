libname sdat 'C:\Users\ndyet_000\Desktop\Class Folders\Spring 2016\ERHS 642\Data';

data ICU_altered; set sdat.ICU_altered;

 if race=1 then do; r1=0; r2=0; end;
 else if race=2 then do; r1=1; r2=0; end;
 else if race=3 then do; r1=0; r2=1; end;


if 16<= SYS <110 then SYSa=0;
else if 110<= SYS <150 then SYSa=1;
else if SYS >= 150 then SYSa=2;



run;

*Specificity/Sentiivity graph;

proc logistic descending data=ICU_altered;
model STA=SER PO2 age CAN / outroc=rocdat;
run;


proc print data=rocdat;
run;

*Calculates specificity

(SAS provides 1-Specificity)*;

data rocdat;
set rocdat;
spec=1-_1mspec_;
run;

*Plotting*;

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

*Creating a classification table*;

proc logistic descending data=ICU_altered;
model STA=SER PO2 age CAN
/ctable pprob=(0.25 0.5) pevent=0.10 0.30;
run;
