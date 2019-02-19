*************	P	R	O	G	R	A	M		H	E	A	D	E	R	*****************
*****************************************************************************************
*																						*
*	PROGRAM:	1.0 - Preliminaries - Program.sas                                       *
*	PURPOSE:	Illustrate material in Chapter 1.0                                      *
*	AUTHOR:		Jud Blatchford															*
*	CREATED:	2016-08-06																*
*	                                                                                    *
*	COURSE:		BIOS 6680 - Data Management Using SAS                                   *
*	DATA USED:	Instream                                                                *
*	SOFTWARE:	SAS (r) Proprietary Software 9.4 (TS1M2)								*
*	MODIFIED:	DATE		BY	REASON													*
*				----------	---	-------------------------------------------------------	*
*				20YY-MM-DD	PJB															*
*	                                                                                    *
*****************************************************************************************
***********************************************************************************; RUN;



*	SECTION 1.0.1 - How SAS Processes the DATA Step   *; RUN;

*	Illustration 1 - How data goes from the source data set -> PDV -> output data set   *; RUN;
DATA	WORK.A; * This simply creates the data set for the illustration below *;
	INFILE	DATALINES;
	INPUT	Name	$
			HourlyPayRate	;
	DATALINES;
Al  8.75
Bob 10.50
;


DATA	WORK.B;

	SET	WORK.A;

	WeeklyPay	= 40 * HourlyPayRate; * Creating a new variable *;

	* Create a variable that processes off an automatic variable to show they exist during processing *;

	LABEL	Name	= 'First Name'; * These are compilation-only statements *;
	FORMAT	HourlyPayRate	DOLLAR6.2; * These attributes of the variables can be seen in the descriptor portion *;

	PUT	_ALL_; * Shows the automatic variables _ERROR_ and _N_ in the PDV *;

	RUN;

PROC CONTENTS
		DATA	= WORK._ALL_
		VARNUM	;
	RUN;

*	Illustration 2 - How SAS orders variables when creating the PDV   *; RUN;
DATA	WORK.B;

	LABEL	WeeklyPay	= 'Earnings for 1 Week';

	SET	WORK.A;

	WeeklyPay	= 40 * HourlyPayRate; * Creating a new variable *;

	LABEL	Name	= 'First Name';
	FORMAT	HourlyPayRate	DOLLAR6.2;

	RUN;

*	Illustration 3 - Timing of variable values moving through the PDV   *; RUN;
DATA	WORK.C;

	PUT	_ALL_;

	SET	WORK.A	END = LastObs;
	WeeklyPay	= 40 * HourlyPayRate;

	PUT	_ALL_;

	RUN;



;	*';	*";	*/;	QUIT;	RUN;
*	End of Program   *; RUN;

