*************	P	R	O	G	R	A	M		H	E	A	D	E	R	*****************
*****************************************************************************************
*																						*
*	PROGRAM:	1.3.2 - Subsetting Data - Program.sas                                   *
*	PURPOSE:	Illustrate material in Section 1.3.2                                    *
*	AUTHOR:		Jud Blatchford															*
*	CREATED:	2016-11-10																*
*	                                                                                    *
*	COURSE:		BIOS 6680 - Data Management Using SAS                                   *
*	DATA USED:	SASHelp.(Cars, Baseball, Class), Instream                               *
*	SOFTWARE:	SAS (r) Proprietary Software 9.4 (TS1M2)								*
*	MODIFIED:	DATE		BY	REASON													*
*				----------	---	-------------------------------------------------------	*
*				20YY-MM-DD	PJB															*
*	                                                                                    *
*****************************************************************************************
***********************************************************************************; RUN;



*	SECTION 1.3.2.1 - RESTRICTING THE NUMBER OF OBSERVATIONS THAT ARE READ INTO A DATA SET   *; RUN;

*	Illustration 1 - Using the OBS= data set option   *; RUN;
*	Note:  OBS= specifies the last observation to process (not necessarily the number being processed)   *;
*	Note:  This option is used with the data set that is being read (not the data set being created)   *;
DATA	WORK.Illus;
	SET	SASHelp.Cars	(OBS = 10);
	RUN;

*	Illustration 2 - Using the FIRSTOBS= data set option   *; RUN;
DATA	WORK.Illus;
	SET	SASHelp.Cars	(FIRSTOBS = 400);
	RUN;

*	Illustration 3 - Using both the FIRSTOBS= and OBS= data set options   *; RUN;
DATA	WORK.Illus;
	SET	SASHelp.Cars	(FIRSTOBS = 200	OBS = 210);
	RUN;

*	Illustration 4 - Checking the values of the OBS= and FIRSTOBS= system options   *; RUN;
*	Recall:  PROC OPTIONS can be used to check the setting for any option specified with the OPTION= option   *; 
PROC OPTIONS	OPTION = OBS;
	RUN;

*	Note:  Multiple options can be checked if grouped within parentheses   *;
PROC OPTIONS	OPTION = (FIRSTOBS OBS);
	RUN;

*	Illustration 5 - Using the OBS= system option   *; RUN;
OPTIONS	OBS = 5;

DATA	WORK.Illus;
	SET	SASHelp.Cars;
	RUN;

*	Illustration 6 - Using the FIRSTOBS= and OBS= system options   *; RUN;
OPTIONS	FIRSTOBS = 300	OBS = 305;

DATA	WORK.Illus;
	SET	SASHelp.Cars;
	RUN;

*	Illustration 7 - Data set options override system options   *; RUN;
DATA	WORK.Illus;
	SET	SASHelp.Cars	(FIRSTOBS = 45	OBS = 47);
	RUN;

*	NB:  Be sure to reset the options back to their default values!   *;
OPTIONS	FIRSTOBS = 1	OBS = MAX;

*	Illustration 8 - Using the automatic variable _N_   *; RUN;
*	Recall:  _N_ counts the iterations of the DATA step (it does NOT count observation numbers!)   *;
*	Note:  This is less efficient than the OBS= data set option b/c SAS still processes every observation   *;
DATA	WORK.Illus;
	SET	SASHelp.Cars;
	IF	_N_ < 10;
	RUN;

DATA	WORK.Illus;
	SET	SASHelp.Cars;
	IF	85 < _N_ < 95;
	RUN;

*	Illustration 9 - Understanding _N_ in the presence of the FIRSTOBS= and OBS= options   *; RUN;
DATA	WORK.Illus;
	SET	SASHelp.Cars	(FIRSTOBS = 200	OBS = 210);
	PUT _ALL_; * Observe the values of _N_! *;
	RUN;

*	Comprehension Check:  Which observations will be read into the data set?   *;
DATA	WORK.Illus;
	SET	SASHelp.Cars	(FIRSTOBS = 301	OBS = 350);
	IF	_N_ > 40;
	RUN;



*	SECTION 1.3.2.2 - CONDITIONALLY RESTRICTING THE NUMBER OF OBSERVATIONS KEPT IN A DATA SET   *; RUN;

*	Illustration 1 - Using a subsetting IF statement to keep observations that meet a conditions   *; RUN;
DATA	WORK.Illus;
	SET	SASHelp.Cars;
	IF	Origin = 'Asia';
	RUN;

*	Illustration 2 - Multiple conditions may be specified   *; RUN;
*	Method 1:  Use multiple IF statements   *;
DATA	WORK.Illus;
	SET	SASHelp.Cars;
	IF	Origin		= 'Asia';
	IF	DriveTrain	= 'Front';
	RUN;

*	Method 2:  Use a compound IF statement   *;
DATA	WORK.Illus;
	SET	SASHelp.Cars;
	IF	Origin 		= 'Asia'	AND
		DriveTrain	= 'Front'	;
	RUN;

*	Note:  'OR' conditions need to be specified using a compound statement   *;
DATA	WORK.Illus;
	SET	SASHelp.Cars;
	IF	Origin 		= 'Asia'	OR
		DriveTrain	= 'Front'	;
	RUN;

*	Illustration 3 - The DELETE statement   *; RUN;
*	The DELETE statement drops an input observation from the output data set   *;
DATA	WORK.Illus;
	SET	SASHelp.Cars;
	DELETE;
	RUN;
*	Comment:  Not very useful unless it's used conditionally :)   *;

*	Illustration 4 - Using IF/THEN/DELETE to delete observation that don't meet given condition(s)   *; RUN;
DATA	WORK.Illus;
	SET	SASHelp.Cars;
	IF	Origin 		= 'Asia'	THEN DELETE;
	RUN;

*	Note:  The IF expression may be a composite expression   *;
DATA	WORK.Illus;
	SET	SASHelp.Cars;
	IF	Origin 		= 'Asia'	OR
		DriveTrain	= 'Front'	THEN DELETE;
	RUN;

*	Illustration 5 - Showing several methods to achieve a desired subset   *; RUN;
*	Task:  Create a data set containing all players who played 3rd base in the SASHelp.Baseball data set   *;
*	First, let's look at the position values we want to keep   *;
PROC FREQ
		DATA	= SASHelp.Baseball
		NLEVELS;
	TABLES	Position	/	MISSING NOPERCENT;
	RUN;

*	Method 1:  Use a subsetting IF statement with a compound expression to keep all values containing 3rd base   *;
DATA	WORK.ThirdBasemen;
	SET	SASHelp.Baseball;
	IF	Position = '13'	OR	Position = '23'	OR	Position = '32'	OR	Position = '3B'	OR
		Position = '3O'	OR	Position = '3S'	OR	Position = 'S3'	;
	RUN;

*	Method 2:  Use a subsetting IF statement and the IN operator to keep all values containing 3rd base   *;
*	Note:  Values must be separated by commas or spaces (or both)   *;
DATA	WORK.ThirdBasemen;
	SET	SASHelp.Baseball;
	IF	Position IN('13', '23', '32', '3B', '3O', '3S', 'S3'); * I chose to use both commas and spaces *;
	RUN;

*	Method 3:  Conditionally deleting observations (values not including 3rd base)   *;
DATA	WORK.ThirdBasemen;
	SET	SASHelp.Baseball;
	IF	Position IN('1B', '1O', '2B', '2S', 'C', 'CD', 'CF', 'CS', 'DH',
					'DO', 'LF', 'O1', 'OD', 'OF', 'OS', 'RF', 'SS', 'UT')	THEN DELETE;
	RUN;

*	Method 4:  More efficient coding for conditionally deleting observations (values not including 3rd base)   *;
*	Note:  The ~ symbol is equivalent to the word "NOT"   *;
DATA	WORK.ThirdBasemen;
	SET	SASHelp.Baseball;
	IF	Position ~IN('13', '23', '32', '3B', '3O', '3S', 'S3')	THEN DELETE;
	RUN;

*	Method 5:  Using the FINDC function to keep all observations with a value containing 3rd base   *;
*	Recall:  The FINDC function returns the position SAS first finds the desired character,
				and returns '0' if the character is not found   *;
DATA	WORK.ThirdBasemen;
	SET	SASHelp.Baseball;
	IF	FINDC(Position, '3') > 0;
	RUN;

*	Comment:  Method 5 processes most efficiently, followed by Methods 2 and 4 (tied)   *;

*	Illustration 6 - Using a WHERE statement   *; RUN;
DATA	WORK.ThirdBasemen;
	SET	SASHelp.Baseball;
	WHERE	FINDC(Position, '3') > 0;
	RUN;

*	Simpler earlier example   *;
DATA	WORK.Illus;
	SET	SASHelp.Cars;
	WHERE	Origin = 'Asia';
	RUN;

*	Illustration 7 - Using the WHERE= data set option   *; RUN;
DATA	WORK.ThirdBasemen;
	SET	SASHelp.Baseball	(	WHERE = (	FINDC(Position, '3') > 0	)
							);
	RUN;

*	Simpler earlier example   *;
DATA	WORK.Illus;
	SET	SASHelp.Cars	(	WHERE =	(Origin = 'Asia')
						);
	RUN;

*	Comment:  The WHERE statement and WHERE= data set option perform equally well.
	When we work with multiple data sets, it will be useful to know:
		1) If you want the same condition to apply to all data sets, it is easier to code
				a single WHERE statement
		2) If different conditions should be applied to different data sets, use
				WHERE= data set options for each data set	*;

*	Illustration 8 - Multiple conditions may be specified   *; RUN;
*	Recall:  Multiple IF statements were used in Illustration 2   *;
*	Approach 1:  Using multiple WHERE statements   *;
DATA	WORK.Illus;
	SET	SASHelp.Cars;
	WHERE	Origin		= 'Asia';
	WHERE	DriveTrain	= 'Front';
	RUN;

*	Let's check if the observations are limited to only values with 'Asia' and 'Front'   *;
PROC FREQ DATA = WORK.Illus;
	TABLES	Origin * DriveTrain	/	LIST;
	RUN;

*	Approach 2:  Using the WHERE ALSO statement   *;
DATA	WORK.Illus;
	SET	SASHelp.Cars;
	WHERE		Origin		= 'Asia';
	WHERE ALSO	DriveTrain	= 'Front';
	RUN;

*	Let's check if the observations are limited to only values with 'Asia' and 'Front'   *;
PROC FREQ DATA = WORK.Illus;
	TABLES	Origin * DriveTrain	/	LIST;
	RUN;

*	Illustration 9 - Comparing IF vs WHERE:  How SAS Processes the PDV   *; RUN;
*	The IF statement tests the expression and only outputs observations to the output data set if the condition is true.
		However, every observation is loaded into the PDV   *;
*	The WHERE statement tests the expression when the observation is in memory (in the input page buffer)
		and only loads observations into the PDV for which the expression is true   *;
*	Conclusion:  The output data set is created more efficiently using the WHERE statement   *;

*	Illustration 10 - Comparing IF vs WHERE:  When the expression uses a new variable   *; RUN;
*	Goal:  Keep the subset of observations containing students who are underweight (BMI < 16)   *;
*	Approach 1:  Using a WHERE statement   *;
DATA	WORK.Underweight;
	SET	SASHelp.Class;

	BMI		= (Weight * 0.45) / (Height * 0.025)**2;
	FORMAT	BMI	4.1;

	WHERE	BMI < 16;

	RUN;

*	Approach 2:  Using an IF statement   *;
DATA	WORK.Underweight;
	SET	SASHelp.Class;

	BMI		= (Weight * 0.45) / (Height * 0.025)**2;
	FORMAT	BMI	4.1;

	IF	BMI < 16;

	RUN;

*	Approach 3:  Using an IF statement   *;
DATA	WORK.Underweight;
	SET	SASHelp.Class;

	IF	BMI < 16;

	BMI		= (Weight * 0.45) / (Height * 0.025)**2;
	FORMAT	BMI	4.1;

	RUN;

*	Conclusion:  Use an IF statement, but be sure to place it after the newly-created variable!   *;

*	Illustration 11 - Using both WHERE and IF statements   *; RUN;
*	Goal:  Keep the subset of female students who are underweight   *;
DATA	WORK.Underweight;
	SET	SASHelp.Class;
	WHERE	Sex	= 'F';
	BMI		= (Weight * 0.45) / (Height * 0.025)**2;
	FORMAT	BMI	4.1;

	IF	BMI < 16;

	RUN;

*	Illustration 12 - Subsetting when using a procedure   *; RUN;
*	Procedures can only process subsets when using a WHERE statement (or data set option)   *;
*	The IF statement may only be used in the DATA step!   *;
*	Goal:  Print the data for the male students   *;
*	Approach 1:  Using the WHERE statement   *;
PROC PRINT	DATA = SASHelp.Class;
	WHERE	Sex = 'M';
	RUN;

*	Approach 2:  Using the IF statement   *;
PROC PRINT	DATA = SASHelp.Class;
	IF	Sex = 'M';
	RUN;

*	Approach 3:  Using the IF statement   *;
DATA	WORK.Class;
	SET	SASHelp.Class;
	IF	Sex = 'M';
	RUN;

PROC PRINT	DATA = WORK.Class;
	RUN;

*	Conclusion:  Use approach 1!   *;

*	Illustration 13 - Special WHERE operators (not available to the IF statement)   *; RUN;
*	The 'CONTAINS' operator   *;
*	Goal:  Create a subset of all 3rd basemen   *;
DATA	WORK.ThirdBasemen;
	SET	SASHelp.Baseball;
	WHERE	Position CONTAINS '3';
	RUN;

*	The BETWEEN AND operator   *;
*	Goal:  Create a subset of all *;
DATA	WORK.Jones;
	SET	SASHelp.Class;
	WHERE	Name BETWEEN 'G' AND 'N';
	Counselor = "Mrs. Jones";
	RUN;

*	The IS MISSING and IS NOT MISSING operators   *;
*	Note:  The alias is "IS NULL"   *;
DATA	WORK.Illus; * Creating data for the illustration *;
	INFILE	DATALINES;
	INPUT	ID	Test;
	DATALINES;
1 98
2 76
3 .
4 85
;

DATA	WORK.Absent;
	SET	WORK.Illus;
	WHERE	Test IS MISSING; * Using IS NOT MISSING is also valid *;
	RUN;

*	Illustration 14 - Using FIRST. and/or LAST. automatic variables   *; RUN;
DATA	WORK.Soccer;
	INFILE	DATALINES;
	INPUT	Team	$
			Player	$;
	DATALINES;
Dolphins Hannah
Dolphins Laura
Dolphins Lucy
Pelicans Lizzy
Pelicans Caitlin
Sharks   Rachel
Sharks   Sarah
Sharks   Sammy
;

*	Note:  Data must be ordered according the the variable(s) in the BY statement   *;
DATA	WORK.Teams;
	SET	WORK.Soccer;
	BY	Team;
	IF	FIRST.Team	= 1;
	RUN;



*	SECTION 1.3.2.3 - SUBSETTING THE VARIABLES IN A DATA SET   *; RUN;

*	Illustration 1 - Restricting the variables kept using DROP and KEEP statements   *; RUN;
*	Goal:  Keep all of the 'Career' baseball statistics   *;
*	Method 1:  KEEP the variables desired   *;
DATA	WORK.Career;
	SET	SASHelp.Baseball;
	KEEP	Name Cr:;
	RUN;

*	Method 2:  DROP the undesired variables   *;
DATA	WORK.Career;
	SET	SASHelp.Baseball;
	DROP	Team -- YrMajor League -- logSalary;
	RUN;

*	Illustration 2 - Multiple DROP or KEEP statements are permitted   *; RUN;
DATA	WORK.Career;
	SET	SASHelp.Baseball;
	DROP	Team -- YrMajor;
	DROP	League -- logSalary;
	RUN;

*	Illustration 3 - DROP and KEEP statements may both be used   *; RUN;
*	Goal:  Keep all career statistics except walks   *;
DATA	WORK.Career;
	SET	SASHelp.Baseball;
	KEEP	Name Cr:;
	DROP	CrBB;
	RUN;

*	Illustration 4 - Restricting the variables read in using the DROP= and KEEP= data set options   *; RUN;
DATA	WORK.Career;
	SET	SASHelp.Baseball	(	KEEP	= Name Cr:	);
	RUN;

*	Illustration 5 - An efficient approach   *; RUN;
*	Goal:  Keep only the student's name and BMI   *;
DATA	WORK.BMI	(	KEEP	= Name BMI	); * Keeping only the desired variables *;

	SET	SASHelp.Class	(	KEEP	= Name Height Weight	); * Reading only needed variables into the PDV *;

	BMI		= (Weight * 0.45) / (Height * 0.025)**2;
	FORMAT	BMI	4.1;
	RUN;



;	*';	*";	*/;	QUIT;	RUN;
*	End of Program   *; RUN;

