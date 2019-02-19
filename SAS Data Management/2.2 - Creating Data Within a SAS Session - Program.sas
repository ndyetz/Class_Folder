*************	P	R	O	G	R	A	M		H	E	A	D	E	R	*****************
*****************************************************************************************
*																						*
*	PROGRAM:	1.1.2 - Creating Data Within a SAS Session - Program.sas                *
*	PURPOSE:	Illustrate material in Section 1.1.2                                    *
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



*	SUBSECTION 1.1.2.1 - USING THE VIEWTABLE   *; RUN;

*	No code for this section   *;
*	Use the viewtable to enter the following data:
	Name	HR	BirthDt
	Bonds	762	7/24/1964
	Aaron	755	2/5/1934
	Ruth	714	2/6/1895
	1)	Save the table as "CareerHRs" in the WORK directory
	2)	Show how to use Edit Mode to edit data
	3)	Show how to add rows in Table View and Form View
	4)	Illustrate that variable name, type, and length can't be changed after table is saved	*;



*	SUBSECTION 1.1.2.2 - INSTREAM DATA   *; RUN;

*	Illustration 1 - Entering instream data   *; RUN;
DATA	WORK.HRLeaders;
	INFILE	DATALINES;
	INPUT	Name	$
			HR
			BirthDt	;
*	Additional statements may be entered here   *;
	DATALINES;
Bonds 762 7/24/1964
Aaron 755 2/5/1934
Ruth  714 2/6/1895
;
* We'll learn how to instruct SAS to read in dates soon! *;

*	Illustration 2 - Entering values containing semicolons   *; RUN;
DATA	WORK.SASStmtTypes;
	INFILE	DATALINES;
	INPUT	StmtType	$	1-17;
	DATALINES4;
DATA Libref.Name;
PROC SOMETHING;
RUN; and/or QUIT;
OPTION;
;;;;



;	*';	*";	*/;	QUIT;	RUN;
*	End of Program   *; RUN;

