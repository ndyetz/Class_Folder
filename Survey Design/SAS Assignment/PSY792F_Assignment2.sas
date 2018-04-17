/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/**/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/
/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/**/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/
/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*Assignment 1*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/
/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/**/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/
/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/**/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/;

/*Creating a library to tell SAS which folder to use*/
libname Psy792F	'T:\Common\PSY792F\Data';


/*Creating a Dataset with Demographics*/
/*An "O" at the beginning = from the 2014 wave*/
/*An "N" at the beginning = from the 2012 wave*/

Data Demographics;
	SET	Psy792F.Trk2014tr_r (Keep =
HHID 
PN 
NSUBHH 
OSUBHH 
GENDER
RACE
HISPANIC
SCHLYRS
DEGREE
NCOUPLE
OCOUPLE
NAGE 
BIRTHYR
BIRTHMO
NIWMONTH
NIWYEAR
NIWWAVE 
OIWWAVE 
NRESCODE
ORESCODE
NLBWGTR
NWGTR
OWGTR);
		IF NAGE =999 	THEN NAGE=.; /*NAGE: 999 = MISSSING*/
		IF SCHLYRS = 99 THEN SCHLYRS = .; /*SCHLYRS 99 = MISSING*/
		IF RACE = 0 	THEN RACE = .; /*Race 0 = "Race Not obtained, changing to missing*/


/*DEGREE2 = DEGREE;*/
/*	IF DEGREE = 4 THEN DEGREE2 = 3;*/
RUN;

/*Proc contents will print out the dataset information*/

PROC CONTENTS varnum data = Psy792F.Trk2014tr_r;
RUN;

/*Getting Frequency of data*/

proc freq data = Demographics;
	TABLES NAGE GENDER SCHLYRS DEGREE RACE HISPANIC NCOUPLE OCOUPLE;
RUN;

/*Get means of continuous variables*/
PROC MEANS data = Demographics;
	VAR NAGE;
RUN;



/*Creating Female variable 
1 = female
0 = male 
. = MISSING 

Recoding Hispanic 0 -> MISSING
. = MISSING

Creating 2012 & 2014 Couple recode variable: couple12 & couple14
1 = Couple
0 = Not coupled

Creating Degree2 variable
1 = Associates degree obtained
0 = No associates degree obtained

Change couple, set 5 -> 0 (not in a couple)
*/;



DATA Demographics;
	SET Demographics;
/*Gender Recode*/
		IF Gender = 1 THEN female = 0;
			ELSE IF Gender = 2 THEN female = 1;
			ELSE if Gender = . THEN female = .;
		LABEL Female = "Gender Recode";
/*Hispanic Recode*/
		IF HISPANIC = 0 THEN Hispanic = .;
			ELSE Hispanic = Hispanic;
/*2012 Couple recode*/
		IF	NCOUPLE = 5 THEN Couple12 = 0;
			ELSE Couple12 = NCOUPLE;
		LABEL Couple12 = "2012 Couple recode";
/*2014 Couple recode*/
		IF	OCOUPLE = 5 THEN Couple14 = 0;
			ELSE Couple14 = OCOUPLE;
		LABEL Couple14 = "2014 Couple recode";
/*Creating new degree variable with all degrees combined */
		IF 3 < DEGREE < 9 THEN DEGREE2 = 1;
		Else IF Degree < 3 THEN Degree2 = 0;
		ELSE degree2 = .;
		LABEL DEGREE2 = "Degree combined; 1 = Associates or higher";
/*recoding couple12 variable*/
		IF NCOUPLE = 5 THEN NCOUPLE = 0;
/*recoding couple12 variable*/
		IF OCOUPLE = 5 THEN OCOUPLE = 0;
	RUN;

proc freq data = demographics;
	TABLES degree*degree2 / MISSING;
RUN;

PROC CONTENTS data = demographics;
RUN;

/*Creating dataset with only participants that were in 2012*/
DATA Demographics2012;
	SET Demographics;
		IF NIWWAVE=1;
RUN;


/*Get means of continuous variables in 2012 data*/
PROC MEANS data = Demographics2012;
	VAR NAGE;
RUN;


/*Descriptives of  ordinal/nominal variables*/
proc Freq data = demographics2012;
	TABLES GENDER RACE HISPANIC DEGREE Degree2 SCHLYRS Couple12;
RUN;

/*Continuous varibales with weights added*/
proc means data = demographics2012;
	VAR NAGE;
	WEIGHT NWGTR;
RUN;

/*Descriptives of ordinal/ nominal variables with weights added*/
proc Freq data = demographics2012;
	TABLES GENDER RACE HISPANIC DEGREE Degree2 Couple12;
	WEIGHT NWGTR; 
RUN;

/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/**/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/
/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/**/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/
/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/Assignment 2*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/
/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/**/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/
/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/**/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/;

/*Set section D from 2012*/
Data sec_D2012;
	SET	Psy792F.h12d_r;
RUN;


/*Set section D from 2014*/

Data sec_D2014;
	SET	Psy792F.h14d_r;
RUN;


/*recode depression variables 2012*/


DATA sec_D2012;
	SET sec_D2012;

	


DATA sec_D2012;
	SET sec_D2012;

	array dep {8} ND110 - ND117;

do _n_=1 to 8;

   if dep{_n_}=5 then dep{_n_}=0;
   else if  dep{_n_}=8 then dep{_n_}=.;
   else if 	dep{_n_}=9 then dep{_n_}=.;
   else if dep{_n_}=1 then dep{_n_}=1;
   else  dep{_n_}=.;

end;

drop _n_;

run;

/*Reverse score ND113 Question = "I was happy... recode to yes = 0 - no =1*/

DATA sec_D2012;
	SET sec_D2012;
	IF ND113 = 1 		THEN ND113R = 0;
	else IF ND113 = 0 	THEN ND113R = 1;
	else if ND113 =. 	THEN ND113R = .;

	IF ND115 = 1 		THEN ND115R = 0;
	else IF ND115 = 0 	THEN ND115R = 1;
	else if ND115 =. 	THEN ND115R = .;
RUN;

/*Checks Reverse scoring*/
PROC Freq data = sec_D2012;
	TABLES ND113*ND113R / MISSING;
RUN;


/*recode depression variables 2014*/

DATA sec_D2014;
	SET sec_D2014;

	array dep {8} OD110 - OD117;

do _n_=1 to 8;

   if dep{_n_}=5 then dep{_n_}=0;
   else if  dep{_n_}=8 then dep{_n_}=.;
   else if 	dep{_n_}=9 then dep{_n_}=.;
   else if dep{_n_}=1 then dep{_n_}=1;
   else  dep{_n_}=.;

end;

drop _n_;

run;

/*Reverse score ND113 Question = "I was happy... recode to yes = 0 - no = 1*/

DATA sec_D2014;
	SET sec_D2014;
	IF OD113 = 1 THEN OD113R = 0;
	else IF OD113 = 0 THEN OD113R = 1;
	else if OD113 =. THEN OD113R = .;

	IF OD115 = 1 THEN OD115R = 0;
	else IF OD115 = 0 THEN OD115R = 1;
	else if OD115 =. THEN OD115R = .;
RUN;

/*Checks Reverse scoring*/
PROC Freq data = sec_D2014;
	TABLES 	OD113*OD113R 
			OD115*OD115R / MISSING;
RUN;


/*Create Depress scale 2012*/

DATA sec_D2012;
	SET Sec_D2012;
		CESD_12 = sum(ND110, ND111, ND112, ND113R,  ND114, ND115R, ND116, ND117);
		LABEL CESD_12 = "CESD-8 composite score 2012";
	RUN;

/*Create Depress scale 2014*/
DATA sec_D2014;
	SET Sec_D2014;
		CESD_14 = sum(OD110, OD111, OD112, OD113R,  OD114, OD115R, OD116, OD117);
		LABEL CESD_14 = "CESD-8 composite score 2014";
	RUN;

/*Check Scales CESD_12 and CESD_14 should be the sum of all the items*/

proc print data = Sec_D2012 (obs = 20);
	VAR	 ND110-ND112 ND113R ND114 ND115R ND116 ND117 CESD_12;
	RUN;

proc print data = Sec_D2014 (obs = 20);
	VAR	 OD110-OD112 OD113R OD114 OD115R OD116 OD117 CESD_14;
	RUN;


proc freq data = Sec_D2014;
	TABLES CESD_14;
	RUN;



/*Set section C from 2014*/
Data sec_c2014;
	SET	Psy792F.h14c_r;
RUN;

/*Recode and reverse score Life satisfcation item */

DATA sec_c2014;
	SET sec_c2014;
	
	IF OC001 = 9 THEN OC001 = .;
	ELSE IF OC001 = 8 THEN OC001 = .;
/*Revesere score Max = 5*/
	self_health = 6 - OC001;
	LABEL self_health = "Reverse scored Self Rated Health 2014";
RUN;

/*Score Check*/

proc freq data = sec_c2014;
	TABLES OC001*self_health / MISSING;
RUN;

/*Set section LB from 2012*/
Data sec_LB2012;
	SET	Psy792F.h12lb_r;
RUN;


/*Scale I'd like to Anlayze:

Q34. Self-Control/ Impulsiveness


2012: 6 items (Q34x_2 – Q34x_7)
Q34x_2 I keep close track of where my money goes.
Q34x_3 I often stop one thing before completing it and start another. (-)
Q34x_4 I often act without thinking. (-)
Q34x_5 Before I get into a new situation, I like to find out what to expect from it.
Q34x_6 I am often not as cautious as I should be. (-)
Q34x_7 I often prefer to “play things by ear” rather than to plan ahead. (-)
.
Coding: 1 = Strongly disagree, 2 = Somewhat disagree, 3 = Slightly disagree,
4 = Slightly agree, 5 = Somewhat agree, 6 = Strongly agree

Scaling: Reverse code the negatively phrased items (-) and then average the scores across items to create an index of conscientiousness for each facet with a high score indicating high conscientiousness. Set the final score to missing for each facet if there are more than two items with missing values.
Psychometrics: Self-Control/Impulsiveness: 2012 Alpha = .60, 2010 Alpha = .63

*/

/*Reverse Impulsivity items - Max = 6*/
DATA sec_LB2012;
	SET sec_LB2012;

NLB034X_3R = 7 - NLB034X_3;
NLB034X_4R = 7 - NLB034X_4;
NLB034X_6R = 7 - NLB034X_6;
NLB034X_7R = 7 - NLB034X_7;

RUN;

/*Checking backwards codes*/
Proc Freq data = sec_LB2012;
TABLES 	NLB034X_3*NLB034X_3R
		NLB034X_4*NLB034X_4R
		NLB034X_6*NLB034X_6R
		NLB034X_7*NLB034X_7R 
							/ MISSING;
RUN;


/*Create Impulsivity scale*/

DATA sec_LB2012;
	SET sec_LB2012;
Impulse = mean( NLB034X_2 ,
				NLB034X_3R ,
				NLB034X_4R,
				NLB034X_5,
				NLB034X_6R,
				NLB034X_7R
				);
/*If they missed more than 2 items then Impulse scale = MISSING*/
IF NMISS(	NLB034X_2 ,
			NLB034X_3R ,
			NLB034X_4R,
			NLB034X_5,
			NLB034X_6R,
			NLB034X_7R
						) > 2 THEN Impulse = .;
RUN;

/*Check scale*/
proc print data = sec_LB2012 (obs = 50); /*Randomly check some of these observations to see if scoring averaged appropriately. Check 10/24/17. WORKS! - Neil*/
	VAR 	NLB034X_2 
			NLB034X_3R 
			NLB034X_4R
			NLB034X_5
			NLB034X_6R
			NLB034X_7R
			Impulse;
/*
Where 	NMISS(NLB034X_2 ,
			NLB034X_3R ,
			NLB034X_4R,
			NLB034X_5,
			NLB034X_6R,
			NLB034X_7R) = 2 
	OR
		NMISS(NLB034X_2 ,
			NLB034X_3R ,
			NLB034X_4R,
			NLB034X_5,
			NLB034X_6R,
			NLB034X_7R) = 1; */ /*Uncomment this WHERE statement to make sure values of NMISS <=2 Are getting scored. Impulse should be mean score of answered items. 
									Neil Checked on 10/24/17. WORKS! -NEIL /*
/*
Where 	NMISS(NLB034X_2 ,
			NLB034X_3R ,
			NLB034X_4R,
			NLB034X_5,
			NLB034X_6R,
			NLB034X_7R) > 2 
	& 
		NMISS(NLB034X_2 ,
			NLB034X_3R ,
			NLB034X_4R,
			NLB034X_5,
			NLB034X_6R,
			NLB034X_7R) < 6;*/	/*Uncomment this WHERE statement to look for evidence of if NMISS > 2 code worked, Impulse should be missing for items with 2+ missing items: 
												Checked on 10/24/17... WORKS! -NEIL */
RUN;

PROC CORR data = sec_LB2012 
							NOMISS ALPHA;
	VAR NLB034X_2 
		NLB034X_3R 
		NLB034X_4R
		NLB034X_5
		NLB034X_6R
		NLB034X_7R;
RUN;



/*Set section j from 2012*/
Data sec_j2012;
	SET	Psy792F.h12j_r;
RUN;

/*Dichotomize employment variable 2014*/

DATA sec_j2012;
	SET sec_j2012;
		IF NJ020 = 1 THEN employed_12 = 1;
		Else IF  NJ020 = 98 THEN employed_12 = .;
		Else IF  NJ020 = 99 THEN employed_12 = .;
		Else IF  NJ020 = 5 THEN employed_12 =0;
		ELSE  employed_12 = .;
	LABEL employed_12 = "Employment status dichotomized 2012";
RUN;


/*J20*/

/*CHECK*/
PROC FREQ data = sec_j2012;
	TABLES  NJ005M1*employed_12 / MISSING;
RUN;



/*Set section j from 2014*/;
Data sec_j2014;
	SET	Psy792F.h14j_r;
RUN;

/*Dichotomize employment variable 2014*/

DATA sec_j2014;
	SET sec_j2014;
		IF OJ020 = 1 THEN employed_14 = 1;
		Else IF  OJ020 = 98 THEN employed_14 = .;
		Else IF  OJ020 = 99 THEN employed_14 = .;
		Else IF  OJ020 = 5 THEN employed_14 =0;
		ELSE  employed_14 = .;
	LABEL employed_14 = "Employment status dichotomized 2014";
RUN;

/*CHECK*/
PROC FREQ data = sec_j2014;
	TABLES  OJ005M1*employed_14 / MISSING;
RUN;

/*sort macro*/
%macro srt(dtn,keyvar);
proc sort data=&dtn;
by &keyvar;
run;
%mend srt;

/*sort by HHID & PN*/
%srt(Demographics2012, 	HHID PN)   
%srt(Sec_c2014, 		HHID PN)
%srt(Sec_d2012,			HHID PN)
%srt(Sec_d2014, 		HHID PN)
%srt(Sec_j2012, 		HHID PN)
%srt(Sec_j2014, 		HHID PN)
%srt(Sec_lb2012, 		HHID PN)


/*Create Final Dataset*/

DATA FINAL;
	MERGE 	Demographics2012 (IN = x)
			Sec_c2014
			Sec_d2012
			Sec_d2014
			Sec_j2012
			Sec_j2014
			Sec_lb2012;
		BY HHID PN;
			IF x = 1;
	KEEP 
		HHID 
		PN 
		NSUBHH 
		OSUBHH 
		FEMALE
		RACE
		HISPANIC
		SCHLYRS
		DEGREE2
		NCOUPLE
		OCOUPLE
		NAGE 
		BIRTHYR
		BIRTHMO
		NIWMONTH
		NIWYEAR
		NIWWAVE 
		OIWWAVE 
		NRESCODE
		ORESCODE
		NLBWGTR
		NWGTR
		OWGTR
		ND110 - ND117
		ND113R
		ND115R
		CESD_12
		OD110 - OD117
		OD113R
		OD115R
		CESD_14
		self_health 
		NJ020 
		OJ020 
		employed_12
		employed_14

		NLB034X_2 - NLB034X_7
		NLB034X_3R
		NLB034X_4R
		NLB034X_6R
		NLB034X_7R
		Impulse

		OC001
		self_health

	 	NJ005M1
		employed_12

		OJ005M1
		employed_14 

		NWGTR
		;
RUN;


PROC CONTENTS DATA = FINAL;
RUN;
