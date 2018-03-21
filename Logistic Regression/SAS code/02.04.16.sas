libname sdat 'C:\Users\ndyet_000\Desktop\Class Folders\Spring 2016\ERHS 642\Data';
data Glow500; set sdat.Glow500;

if raterisk=1 then do; r2=0; r3=0; end;
else if raterisk=2 then do; r2=1; r3=0; end;
else if raterisk=3 then do; r2=0; r3=1; end;
run;

proc logistic descending data=glow500;
model fracture=r2 r3;
run;

proc print data= Glow500; run;


proc logistic descending data=glow500;
class raterisk/param=ref ref=first;
model fracture=raterisk;
run;

proc logistic descending data=glow500;
class raterisk/param=ref ref=first;
model fracture=age weight priorfrac premeno raterisk;
run;

proc logistic descending data=glow500;
class raterisk/param=ref ref=first;
model fracture=age priorfrac raterisk;
run;
