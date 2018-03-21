libname sdat 'C:\Users\ndyet_000\Desktop\Class Folders\Spring 2016\ERHS 642\Data';
data Glow500; set sdat.Glow500; run;

proc logistic descending data=glow500;
class raterisk/param=ref ref=first;
model fracture=raterisk;
contrast 'Same vs. Less' raterisk 1 0/estimate=exp;
contrast 'Greater vs. Less' raterisk 0 1/estimate=exp;
contrast 'Greater vs. Same' raterisk -1 1/estimate=exp;
run;

proc logistic descending data=glow500;
model fracture=age;
contrast '5 yr increase' age 5/estimate=exp;
run;

*this is an alternative to the contrast statement... but the contrast statement ALWAYS works
so might as well use that this is called the units statement; 

proc logistic descending data=glow500;
model fracture=age/clodds=Wald;
units age=5;
run;
