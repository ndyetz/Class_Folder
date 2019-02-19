*************	P	R	O	G	R	A	M		H	E	A	D	E	R	*****************
*****************************************************************************************
*																						*
*	PROGRAM:	0.3 - SAS Data Sets - Program.sas                                       *
*	PURPOSE:	Illustrate material in Chapter 0.3                                      *
*	AUTHOR:		Jud Blatchford															*
*	CREATED:	2016-08-02																*
*	                                                                                    *
*	COURSE:		BIOS 6680 - Data Management Using SAS                                   *
*	DATA USED:	Instream, Orion Star, & SASHelp.Buy                                     *
*	SOFTWARE:	SAS (r) Proprietary Software 9.4 (TS1M2)								*
*	MODIFIED:	DATE		BY	REASON													*
*				----------	---	-------------------------------------------------------	*
*				20YY-MM-DD	PJB															*
*	                                                                                    *
*****************************************************************************************
***********************************************************************************; RUN;



*	SECTION 0.3.0 - INTRODUCTION   *; RUN;

*	Illustration 1 - Acceptable Raw Values for a Numeric Variable   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	Number;
	IF	_ERROR_ = 1	THEN PUTLOG;
	DATALINES;
123
45.98
-567.3
+800.8
(60.3)
4,567
123456789012
1234567890123
1E1
5x10^2
-9.8E2
4E-3
-12.3E-4
$30.99
8+5
10-3
;

*	Illustration 2 - Acceptable Raw Values for a Character Variable   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	Character	$;
	IF	_ERROR_ = 1	THEN PUTLOG;
	DATALINES;
123
45.98
-567.3
+800.8
(60.3)
4,567
123456789012
1234567890123
1E1
5x10^2
-9.8E2
4E-3
-12.3E-4
$30.99
8+5
10-3
;

*	Illustration 3 - Acceptable Data Set Names   *; RUN;
DATA	WORK.ThisIsMyReallyLongDataSetName; * 29 characters *;
	A = 3;
	RUN;

DATA	WORK.This_Is_My_Long_DataSet_Name; * 28 characters *;
	A = 3;
	RUN;

DATA	WORK.This Is My Long DataSet Name; * 28 characters *;
	A = 3;
	RUN;

DATA	WORK.This_Is_My_Really_Long_DataSet_Name; * 35 characters *;
	A = 3;
	RUN;

DATA	WORK._This_Is_My_Long_DataSet_Name; * 29 characters *;
	A = 3;
	RUN;

DATA	WORK.This_Is_My_Long_DataSet_Name_16; * 32 characters *;
	A = 3;
	RUN;

DATA	WORK.16_This_Is_My_Long_DataSet_Name; * 32 characters *;
	A = 3;
	RUN;

DATA; * 0 characters *;
	A = 3;
	RUN;

DATA; * 0 characters *;
	B = 5;
	RUN;

*	Illustration 4 - Acceptable Variable Names   *; RUN;
DATA	WORK.Illus;
	A	= 1;
	_	= 2;
	__	= 3;
	ForeverIsWhatThisVariableIsNamed	= 4; * 32 characters *;
*	4everIsWhatThisVariableIsNamed		= 5; * 30 characters *;
	For3verIsWhatThisVariableIsNamed	= 6; * 32 characters *;
*	One_2_Three_4_Five_6_Seven_8_Nine	= 7; * 33 characters *;
	One_2_Three_4_Five_6_Seven_8_Nin	= 8; * 32 characters *;
	RUN;
	


*	SECTION 0.3.1 - VIEWING DATA & PROPERTIES   *; RUN;

*	No code for this section   *;



*	SECTION 0.3.2 - DATA LIBRARIES   *; RUN;

*	No code for this section   *;


*	SECTION 0.3.3 - REFERENCING DATA SETS   *; RUN;

*	Illustration 1 - Associating a Libref to Access SAS Data Sets   *; RUN;
LIBNAME	Orion	"C:\Dropbox\2 - Education\7 - Teaching\1 - SAS\BIOS 6680 - Data Management Using SAS\0 - Preliminaries\Source Data\Orion Star Sports & Outdoors";

*	Illustration 2 - Using 2-Level Names to Reference a Data Set   *; RUN;
* Goal:  Copy the "Buy" data set into the Orion library *;
DATA	Orion;
	SET	SASHelp.Baseball;
	RUN;

*	Illustration 3 - Disassociating a Libref to Access SAS Data Sets   *; RUN;
LIBNAME	Orion	CLEAR;

*	Illustration 4 - Deleting a Data Set from a Library Will Delete It from Your Computer!   *; RUN;
DATA	Orion.Baseball;
	SET	SASHelp.Baseball;
	RUN;

*	Illustration 5 - Using Direct Referencing to Process a Permanent Data Set   *; RUN;
PROC PRINT
	DATA = "C:\Dropbox\2 - Education\7 - Teaching\1 - SAS\BIOS 6680 - Data Management Using SAS\0 - Preliminaries\Source Data\Orion Star Sports & Outdoors\Country";
	RUN;



;	*';	*";	*/;	QUIT;	RUN;
*	End of Program   *; RUN;

