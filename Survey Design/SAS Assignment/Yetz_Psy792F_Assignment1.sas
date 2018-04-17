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
	TABLES GENDER RACE HISPANIC DEGREE Degree2 SCHLYRS Couple12 Couple14;
RUN;

/*Continuous varibales with weights added*/
proc means data = demographics2012;
	VAR NAGE;
	WEIGHT NWGTR;
RUN;

/*Descriptives of ordinal/ nominal variables with weights added*/
proc Freq data = demographics2012;
	TABLES GENDER RACE HISPANIC DEGREE Degree2 Couple12 Couple14;
	WEIGHT NWGTR; 
RUN;

