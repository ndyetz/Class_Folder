*************	P	R	O	G	R	A	M		H	E	A	D	E	R	*****************
*****************************************************************************************
*																						*
*	PROGRAM:	1.4.1 - Exporting Data from SAS - Program.sas                           *
*	PURPOSE:	Illustrate material in Section X.X.X                                    *
*	AUTHOR:		Jud Blatchford															*
*	CREATED:	2016-12-02																*
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



*	SECTION 1.4.1.1 - EXPORTING TO ANOTHER SAS DATA SET   *; RUN;

*	Note:  A SET statement is used to create a SAS data set from another SAS data set
			So whether you are "Importing from ..." or "Exporting to ..." is a matter of semantics,
				they both use a SET statement!   *;


*	Illustration 1 - Using a SET Statement   *; RUN;
*	Goal:  "Export" the data set 'SASHelp.Class' to a data set named 'Students' in the WORK library   *;
DATA	WORK.Students;
	SET	SASHelp.Class;
	RUN;


*	Illustration 2 - Using a LIBNAME Statement to Export to a specific folder   *; RUN;
*	Note:  Use a LIBNAME statement to provide SAS with the path to the destination folder of your choice   *;
*	Note:  The new folder doesn't need to contain other SAS data sets   *;
*	Goal:  Export the data set 'SASHelp.Class' to a folder in the C:\Temp folder   *;
LIBNAME	Destin	"C:\Temp";
DATA	Destin.Class;
	SET	SASHelp.Class;
	RUN;


*	Illustration 3 - Using Direct Referencing to Export to a specific folder   *; RUN;
*	Goal:  Export the data set 'SASHelp.Class' to a SAS data file named 'Class' on the C:\Temp folder   *;
DATA	"C:\Temp\Class.sas7bdat";
	SET	SASHelp.Class;
	RUN;



*	SECTION 1.4.1.2 - EXPORTING TO THE LOG WINDOW   *; RUN;


*	Illustration 1 - Using the PUT Statement   *; RUN;
*	Note:  _NULL_ is used when you want to use the DATA step, but don't want to create a data set!   *;
DATA	_NULL_;
	SET	SASHelp.Class;
	PUT	Name -- Weight;
	RUN;

*	Compare with using the PUT _ALL_ statement   *;
DATA	_NULL_;
	SET	SASHelp.Class;
	PUT	_ALL_;
	RUN;



*	SECTION 1.4.1.3 - EXPORTING TO MICROSOFT PRODUCTS   *; RUN;


*	Illustration 1 - Exporting to a MS Excel worksheet Using PROC EXPORT   *; RUN;
*	Compare:
	PROC IMPORT		PROC EXPORT
	DATAFILE		DATA
	OUT				OUTFILE   *;
*	Note:  By default, the name of the worksheet is the name of the data set   *;
PROC EXPORT
		DATA	= SASHelp.Class
		OUTFILE	= "C:\Temp\Class Data Set.xlsx"
		DBMS	= EXCEL
		REPLACE;
	RUN;


*	Illustration 2 - Specifying the Worksheet Name Using the SHEET Statement   *; RUN;
*	Note:  This creates an additional worksheet if the workbook name hasn't changed   *;
PROC EXPORT
		DATA	= SASHelp.Class
		OUTFILE	= "C:\Temp\Class Data Set.xlsx"
		DBMS	= EXCEL
		REPLACE;
	SHEET	= 'Student Data';
	RUN;


*	Illustration 3 - Exporting a Subset of the Observations to a Worksheet   *; RUN;
*	Goal:  Add a worksheet named 'Females' containing only the observations for which 'Sex' = 'F'   *;
PROC EXPORT
		DATA	= SASHelp.Class	(	WHERE	= (	Sex	= 'F'	)	)
		OUTFILE	= "C:\Temp\Class Data Set.xlsx"
		DBMS	= EXCEL
		REPLACE;
	SHEET	= 'Females';
	RUN;

*	Note:  The WHERE statement won't process like the WHERE= data set option
			A worksheet is still produced, but it isn't created according to the WHERE statement   *;
PROC EXPORT
		DATA	= SASHelp.Class
		OUTFILE	= "C:\Temp\Class Data Set.xlsx"
		DBMS	= EXCEL
		REPLACE; * The 'REPLACE' option allows for over-writing the worksheet *;
	SHEET	= 'Females';
	WHERE	Sex	= 'F';
	RUN;


*	Illustration 4 - Exporting a Subset of the Variables to a Worksheet   *; RUN;
*	Goal:  Add a worksheet named 'Males' containing the Name and Sex for all males   *;
PROC EXPORT
		DATA	= SASHelp.Class	(	WHERE	= (	Sex	= 'M'	)
									KEEP	=	Name Sex
								)
		OUTFILE	= "C:\Temp\Class Data Set.xlsx"
		DBMS	= EXCEL
		REPLACE;
	SHEET	= 'Males';
	RUN;


*	Illustration 5 - Using the LABEL Option to Export Variable Labels   *; RUN;
PROC EXPORT
		DATA	= SASHelp.ClassFit	(	KEEP	=	Name -- predict	)
		OUTFILE	= "C:\Temp\Class Data Set.xlsx"
		DBMS	= EXCEL
		REPLACE
		LABEL	;
	SHEET	= 'Fit Statistics';
	RUN;

*	NB:  Some symbols in variable labels won't export (e.g. % symbol)   *;
PROC EXPORT
		DATA	= SASHelp.ClassFit	(	KEEP	=	Name -- predict lowermean	)
		OUTFILE	= "C:\Temp\Class Data Set.xlsx"
		DBMS	= EXCEL
		REPLACE
		LABEL	;
	SHEET	= 'Fit Statistics 2';
	RUN;


*	Illustration 6 - Creating an .xls workbook   *; RUN;
PROC EXPORT
		DATA	= SASHelp.Class
		OUTFILE	= "C:\Temp\Class Data Set.xls"
		DBMS	= EXCEL
		REPLACE;
	SHEET	= 'Student Data';
	RUN;


*	Illustration 7 - Creating a .csv File   *; RUN;
*	Note:  Use the DBMS identifier of 'CSV' and change the file extension   *;
PROC EXPORT
		DATA	= SASHelp.Class
		OUTFILE	= "C:\Temp\Class Data Set.csv"
		DBMS	= CSV
		REPLACE;
	RUN;


*	Illustration 8 - Using the Export Wizard   *; RUN;
*	No code for this section   *;


*	Illustration 9 - Creating a MS Excel Workbook Using the LIBNAME Statement   *; RUN;
LIBNAME	Send	"C:\Temp\Class Data Using Libname.xlsx";

DATA	Send.Class;
	SET	SASHelp.Class;
	RUN;

LIBNAME	Send	CLEAR;

*	Illustration 10 - Exporting to a MS Access Database   *; RUN;
*	Note:  This will create an Access database which contains the table defined in the OUTTABLE= option   *;
PROC EXPORT
		DATA		= SASHelp.Class
		OUTTABLE	= 'MyClass'
		DBMS		= ACCESS
		REPLACE;
	DATABASE	= 'C:\Temp\Class Data.accdb';
	RUN;



*	SECTION 1.4.1.4 - EXPORTING TO A TEXT FILE   *; RUN;

*	Illustration 1 - Creating a .txt File   *; RUN;
*	Note:  Use the DBMS identifier of 'TAB' and change the file extension   *;
PROC EXPORT
		DATA	= SASHelp.Class
		OUTFILE	= "C:\Temp\Class Data Set.txt"
		DBMS	= TAB
		REPLACE;
	RUN;


*	Illustration 2 - Creating a Delimited File   *; RUN;
*	Note:  Use the DBMS identifier of 'DLM'   *;
*	Note:  Use the DELIMITER statement to specify the delimiter   *;
PROC EXPORT
		DATA	= SASHelp.Class
		OUTFILE	= "C:\Temp\Class Data Set.txt"
		DBMS	= DLM
		REPLACE;
	DELIMITER	= ":";
	RUN;



;	*';	*";	*/;	QUIT;	RUN;
*	End of Program   *; RUN;

