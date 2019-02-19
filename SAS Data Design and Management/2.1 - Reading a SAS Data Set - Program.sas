*************	P	R	O	G	R	A	M		H	E	A	D	E	R	*****************
*****************************************************************************************
*																						*
*	PROGRAM:	1.1.1 - Reading a SAS Data Set - Program.sas                            *
*	PURPOSE:	Illustrate material in Section 1.1.1                                    *
*	AUTHOR:		Jud Blatchford															*
*	CREATED:	2016-08-06																*
*	                                                                                    *
*	COURSE:		BIOS 6680 - Data Management Using SAS                                   *
*	DATA USED:	SASHelp.Steel & SASHelp.Class                                           *
*	SOFTWARE:	SAS (r) Proprietary Software 9.4 (TS1M2)								*
*	MODIFIED:	DATE		BY	REASON													*
*				----------	---	-------------------------------------------------------	*
*				20YY-MM-DD	PJB															*
*	                                                                                    *
*****************************************************************************************
***********************************************************************************; RUN;



*	SECTION 1.1.1 - READING A SAS DATA SET   *; RUN;

*	Illustration 1 - Using the SET statement   *; RUN;
DATA	WORK.Illus;
	SET	SASHelp.Stocks;
	RUN;

*	Illustration 2 - SAS retains values of source variables when executing the SET statement   *; RUN;
DATA	WORK.Illus;

	PUT	_ALL_;

	SET	SASHelp.Steel	(OBS = 2);

	PUT	_ALL_;

	RUN;

*	Illustration 3 - SAS can overwrite an existing SAS data set   *; RUN;
DATA	WORK.Illus;
	SET	WORK.Illus;
	Row	= _N_;
	RUN;

*	Illustration 4 - Using the NOBS= option   *; RUN;
DATA	WORK.Illus;
	SET	SASHelp.Stocks	NOBS = Count; * Note:  Count is a temporary variable *;
	RUN;

DATA	WORK.Illus;
	SET	SASHelp.Stocks	(OBS = 3)	NOBS = Count;
	PUT	_ALL_;
	RUN;

DATA	WORK.Illus;
	SET	SASHelp.Stocks	NOBS = Count;
	NewVar = Count;
	RUN;

*	Illustration 5 - Using the END= option   *; RUN;
DATA	WORK.Illus;
	SET	SASHelp.Class	END = LastObs; * Note:  LastObs is also a temporary variable *;
	RUN;

DATA	WORK.Illus;
	SET	SASHelp.Class	END = LastObs;
	PUT	_ALL_;
	RUN;



;	*';	*";	*/;	QUIT;	RUN;
*	End of Program   *; RUN;

