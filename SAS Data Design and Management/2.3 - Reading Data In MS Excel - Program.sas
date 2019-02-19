*************	P	R	O	G	R	A	M		H	E	A	D	E	R	*****************
*****************************************************************************************
*																						*
*	PROGRAM:	1.1.3 - Reading Microsoft Products - Program.sas                        *
*	PURPOSE:	Illustrate material in Section 1.1.3                                    *
*	AUTHOR:		Jud Blatchford															*
*	CREATED:	2016-08-07																*
*	                                                                                    *
*	COURSE:		BIOS 6680 - Data Management Using SAS                                   *
*	DATA USED:	                                                                        *
*	SOFTWARE:	SAS (r) Proprietary Software 9.4 (TS1M2)								*
*	MODIFIED:	DATE		BY	REASON													*
*				----------	---	-------------------------------------------------------	*
*				20YY-MM-DD	PJB															*
*	                                                                                    *
*****************************************************************************************
***********************************************************************************; RUN;



*	SUBSECTION 1.1.3.1 - USING LIBNAME STATEMENTS   *; RUN;

*	Illustration 1 - Checking for the appropriate SAS/ACCESS interface to access the file type desired   *; RUN;
*	To access a MS Excel workbook, the "Interface to PC Files" interface is needed   *;
PROC SETINIT; * Checking for the license *;
	RUN;

PROC PRODUCT_STATUS; * Checking if the interface is installed *;
	RUN;

*	Illustration 2 - Checking "bitness" of SAS and MS Office   *; RUN;
*	No code for this illustration   *;

*	Illustration 3 - Assigning a libref to access a MS Excel Workbook   *; RUN;
*	SAS/ACCESS LIBNAME statement form:  LIBNAME libref <ENGINE> "path\filename.extension" <OPTIONS>;

*	When the bitness of SAS and MS Excel matches:  "EXCEL" is the default engine (so isn't required)    *;
LIBNAME	CustData	EXCEL	"C:\Dropbox\2 - Education\7 - Teaching\1 - SAS\BIOS 6680 - Data Management Using SAS\0 - Preliminaries\Source Data\Orion Star Sports & Outdoors\custfm.xls";
*	When the bitness doesn't match:  Use the "PCFILES" engine   *;
LIBNAME	CustData	PCFILES	PATH="C:\Dropbox\2 - Education\7 - Teaching\1 - SAS\BIOS 6680 - Data Management Using SAS\0 - Preliminaries\Source Data\Orion Star Sports & Outdoors\custfm.xls";

*	Note:  If using a client application (e.g. SAS Studio) to access SAS on a remote server, Interface to PC Files is not useable   *;

*	Illustration 4 - Using name literals to refer to MS Excel worksheets as SAS data sets   *; RUN;
PROC PRINT
		DATA	= CustData.'Females$'N
		LABEL	; * Note:  MS Excel column headings become variable labels *;
	VAR	Customer_ID First_Name Last_Name; * Note: Underscores replace spaces from the MS Excel column headings *;
	RUN;

*	Illustration 5 - Disassociate the libref to unlock the MS Excel workbook   *; RUN;
LIBNAME	CustData	CLEAR;

*	Illustration 6 - Reading MS Excel workbooks with no header   *; RUN;
LIBNAME	Customer	EXCEL	"C:\Dropbox\2 - Education\7 - Teaching\1 - SAS\BIOS 6680 - Data Management Using SAS\0 - Preliminaries\Source Data\Orion Star Sports & Outdoors\custcaus.xls"
	HEADER	= NO;

*	Illustration 7 - Reading a MS Access database   *; RUN;
LIBNAME	Illus	ACCESS	PATH="C:\Dropbox\2 - Education\3 - Technology\1 - Microsoft Office\MS Access - Practice 1.mdb";



*	SUBSECTION 1.1.3.2 - USING PROC IMPORT   *; RUN;

*	Illustration 1 - Importing MS Excel worksheet   *; RUN;
PROC IMPORT
		DATAFILE	= 'C:\Dropbox\2 - Education\7 - Teaching\1 - SAS\BIOS 6680 - Data Management Using SAS\0 - Preliminaries\Source Data\Orion Star Sports & Outdoors\custfm.xls'
		OUT			= WORK.CustomerData
		DBMS		= EXCEL	/* XLS can read .xls files (if closed) */
		REPLACE		;
	RUN;

*	Illustration 2 - Specifying the MS Excel worksheet   *; RUN;
PROC IMPORT
		DATAFILE	= 'C:\Dropbox\2 - Education\7 - Teaching\1 - SAS\BIOS 6680 - Data Management Using SAS\0 - Preliminaries\Source Data\Orion Star Sports & Outdoors\custfm.xls'
		OUT			= WORK.MaleCustomers
		DBMS		= EXCEL
		REPLACE		;
	SHEET	= 'Males';
	RUN;

*	Illustration 3 - Importing a subset specified by the range of cells of the MS Excel worksheet   *; RUN;
PROC IMPORT
		DATAFILE	= 'C:\Dropbox\2 - Education\7 - Teaching\1 - SAS\BIOS 6680 - Data Management Using SAS\0 - Preliminaries\Source Data\Orion Star Sports & Outdoors\custfm.xls'
		OUT			= WORK.MaleSubset
		DBMS		= EXCEL
		REPLACE		;
	RANGE		= "Males$A11:D19";
	GETNAMES	= NO; * Needed since we're starting reading with an observation *;
	RUN;

*	Illustration 4 - Reading MS Excel workbooks with no header   *; RUN;
PROC IMPORT
		DATAFILE	= 'C:\Dropbox\2 - Education\7 - Teaching\1 - SAS\BIOS 6680 - Data Management Using SAS\0 - Preliminaries\Source Data\Orion Star Sports & Outdoors\custcaus.xls'
		OUT			= WORK.Customers
		DBMS		= EXCEL
		REPLACE		;
	SHEET		= 'CA or US';
	GETNAMES	= NO;
	RUN;



*	SUBSECTION 1.1.3.3 - USING THE IMPORT WIZARD   *; RUN;

*	No code for this subsection   *;
*	Show how code generated using the import wizard can be saved in a SAS file   *;



;	*';	*";	*/;	QUIT;	RUN;
*	End of Program   *; RUN;

