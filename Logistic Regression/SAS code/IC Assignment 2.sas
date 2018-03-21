data glow500; set sdat.glow500;
if raterisk=1 then do; r2=0; r3=0; end;
else if raterisk=2 then do; r2=1; r3=0; end;
else if raterisk=3 then do; r2=0; r3=1; end;
run;
proc logistic descending data=glow500;
model fracture=r2 r3;
run;

proc print data=glow500; run;

proc logistic descending data=glow500;
class raterisk/param=ref ref=first;
model fracture=raterisk AGE Weight priorfrac premeno;
run;

proc logistic descending data=glow500;
class raterisk/param=ref ref=first;
model fracture=raterisk AGE priorfrac premeno;
run;

proc logistic descending data=glow500;
class raterisk/param=ref ref=first;
model fracture=raterisk AGE priorfrac;
run;

data pval;
p=1-probchi(0.8235,2);
run;

proc print data=pval; run;
