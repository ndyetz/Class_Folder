*************	P	R	O	G	R	A	M		H	E	A	D	E	R	*****************
*****************************************************************************************
*																						*
*	PROGRAM:	0.1 - The SAS Software - Program.sas                                    *
*	PURPOSE:	Illustrate material in Chapter 0.1                                      *
*	AUTHOR:		Jud Blatchford															*
*	CREATED:	2016-08-02																*
*	                                                                                    *
*	COURSE:		BIOS 6680 - Data Management Using SAS                                   *
*	DATA USED:	SASHelp.Cars                                                            *
*	SOFTWARE:	SAS (r) Proprietary Software 9.4 (TS1M2)								*
*	MODIFIED:	DATE		BY	REASON													*
*				----------	---	-------------------------------------------------------	*
*				20YY-MM-DD	PJB															*
*	                                                                                    *
*****************************************************************************************
***********************************************************************************; RUN;



*	SECTION 0.1.0 - BACKGROUND   *; RUN;

*	Illustration 1 - Checking what SAS products are licensed and their expiration dates   *; RUN;
PROC SETINIT;
	RUN;

*	Illustration 2 - Checking what SAS products are installed   *; RUN;
PROC PRODUCT_STATUS;
	RUN;



*	SECTION 0.1.1 - THE SAS PROGRAMMING PROCESS   *; RUN;

*	No code for this section   *;



*	SECTION 0.1.2 - THE SAS WINDOWING ENVIRONMENT   *; RUN;

*	Illustration 1 - The Enhanced Editor   *; RUN;
TITLE1	"Quoted Strings Are Displayed In Purple"; * Comments are displayed in green *;
PROC PRINT	/* Step boundaries are displayed in navy blue */
		DATA	= SASHelp.Cars	(	WHERE	= (	Make	= 'Acura'	)	);
	VAR	Make Model MSRP; * Keywords are displayed in royal blue *;
	NOT_A_KEYWORD; * Errors are displayed in red *;
	RUN;



;	*';	*";	*/;	QUIT;	RUN;
*	End of Program   *; RUN;

