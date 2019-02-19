*************	P	R	O	G	R	A	M		H	E	A	D	E	R	*****************
*****************************************************************************************
*																						*
*	PROGRAM:	0.4 - First Tools - Program.sas                                         *
*	PURPOSE:	Illustrate material in Chapter 0.4                                      *
*	AUTHOR:		Jud Blatchford															*
*	CREATED:	2016-08-04																*
*	                                                                                    *
*	COURSE:		BIOS 6680 - Data Management Using SAS                                   *
*	DATA USED:	SASHelp.Classfit, TLSB, Orion.Nonsales2, SASHelp.Cars, & Instream       *
*	SOFTWARE:	SAS (r) Proprietary Software 9.4 (TS1M2)								*
*	MODIFIED:	DATE		BY	REASON													*
*				----------	---	-------------------------------------------------------	*
*				20YY-MM-DD	PJB															*
*	                                                                                    *
*****************************************************************************************
***********************************************************************************; RUN;



*	SECTION 0.4.1 - VIEWING DATA USING PROC PRINT   *; RUN;

*	Illustration 1 - Using PROC PRINT   *; RUN;
PROC PRINT	DATA = SASHelp.Classfit;
	RUN;

*	Illustration 2 - PROC PRINT options   *; RUN;
PROC PRINT
		DATA	= SASHelp.Classfit	(OBS = 10)
		LABEL
		NOOBS;

	VAR	Name Weight predict Age;

	RUN;



*	SECTION 0.4.2 - VIEWING PROPERTIES USING PROC CONTENTS   *; RUN;

*	Illustration 1 - Checking the desriptor portion of a data set   *; RUN;
PROC CONTENTS	DATA = SASHelp.Classfit;
	RUN;

*	Illustration 2 - Ignoring case in variable names   *; RUN;
PROC CONTENTS
		DATA	= SASHelp.Classfit
		ORDER	= IGNORECASE;
	RUN;

*	Illustration 3 - Controlling the order of the variables listed   *; RUN;
PROC CONTENTS
		DATA	= SASHelp.Classfit
		VARNUM;
	RUN;

*	Illustration 4 - Checking the metadata for all data sets within a library   *; RUN;
LIBNAME	TLSB	"C:\Dropbox\2 - Education\7 - Teaching\1 - SAS\BIOS 6680 - Data Management Using SAS\0 - Preliminaries\Source Data\Little SAS Book";
PROC CONTENTS	DATA = TLSB._ALL_;
	RUN;

*	Illustration 5 - Getting an inventory of all SAS items within a library   *; RUN;
PROC CONTENTS
		DATA	= SASHelp._ALL_
		NODS	;
	RUN;



*	SECTION 0.4.3 - CHECKING CHARACTER DATA USING PROC FREQ   *; RUN;

*	Illustration 1 - Generating a frequency table of the levels for a variable   *; RUN;
PROC FREQ	DATA = SASHelp.Classfit;
	TABLES	Sex Age;
	RUN;

*	Illustration 2 - Customizing the output for frequency distributions   *; RUN;
PROC FREQ	DATA = SASHelp.Classfit;
	TABLES	Sex	/	NOPERCENT;
	TABLES	Age	/	NOCUM;
	RUN;

*	Illustration 3 - Displaying missing values as a level   *; RUN;
LIBNAME	Orion	"C:\Dropbox\2 - Education\7 - Teaching\1 - SAS\BIOS 6680 - Data Management Using SAS\0 - Preliminaries\Source Data\Orion Star Sports & Outdoors";
PROC FREQ	DATA = Orion.Nonsales2 (OBS = 15); * This displays the missing value after the table *;
	TABLES	Employee_ID;
	RUN;

PROC FREQ	DATA = Orion.Nonsales2 (OBS = 15); * This displays the missing value within the table *;
	TABLES	Employee_ID	/	MISSING;
	RUN;

PROC FREQ	DATA = Orion.Nonsales2 (OBS = 15); * This removes the missing value from the statistics calculations *;
	TABLES	Employee_ID	/	MISSPRINT;
	RUN;

*	Illustration 4 - Ordering levels by frequencies   *; RUN;
PROC FREQ
		DATA	= Orion.Nonsales2 (OBS = 15)
		ORDER	= FREQ; * Easily find duplicates when unique values expected *;
	TABLES	Employee_ID	/	NOPERCENT NOCUM MISSING;
	RUN;

*	Illustration 5 - Using the NLEVELS option   *; RUN;
PROC FREQ
		DATA	= Orion.Nonsales2
		NLEVELS;
	TABLES	Gender Country Employee_ID	/	NOPERCENT;
	RUN;

*	Illustration 6 - Cross-Tabulations   *; RUN;
PROC FREQ
		DATA	= SASHelp.Cars
		NLEVELS;
	TABLES	Origin DriveTrain	/	NOPERCENT NOCUM;
	TABLES	Origin * DriveTrain;
	RUN;

*	Illustration 7 - Customizing output for Cross-Tabulations   *; RUN;
PROC FREQ	DATA	= SASHelp.Cars;
	TABLES	Origin * DriveTrain	/	NOPERCENT NOROW NOCOL;
	RUN;

*	Illustration 8 - Understanding how missing values are handled in Cross-Tabulations   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	Sex	$
			Race	$;
	DATALINES;
Female  Asian
Male    Black
Male    Asian
Female  .
.       Asian
;

PROC FREQ	DATA = WORK.Illus;
	TABLES	Sex Race	/ NOPERCENT NOCUM MISSING;
	TABLES	Sex * Race; * NB: only 3 subjects displayed (even with Sex) *;
	TABLES	Sex * Race	/ MISSING; * All 5 subjects included now! *;
	RUN;

*	Illustration 9 - Planning Row vs Column variables   *; RUN;
PROC FREQ	DATA = SASHelp.Cars;
	TABLES	Origin * Make;
	RUN;

PROC FREQ	DATA = SASHelp.Cars;
	TABLES	Make * Origin	/ NOPERCENT NOROW NOCOL;
	RUN;

PROC FREQ	DATA = SASHelp.Cars;
	TABLES	DriveTrain * Make * Origin	/ NOPERCENT NOROW NOCOL; * Including the page variable *;
	RUN;

*	Illustration 10 - Creating a cross-tabulation as a listing   *; RUN;
PROC FREQ	DATA = SASHelp.Cars;
	TABLES	Make * Origin	/ LIST; * Now the statistics are the same as for univeriate freq distributions *;
	RUN;

PROC FREQ	DATA = SASHelp.Cars;
	TABLES	Origin * Make	/ LIST NOPERCENT;
	RUN;

PROC FREQ	DATA = SASHelp.Cars; * This might be more readable than the 3-way cross tab in Illus 9 *;
	TABLES	DriveTrain * Origin * Make 	/ LIST NOPERCENT; * Including the page variable *;
	RUN;

*	Illustration 11 - Using the SPARSE option   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	Sex	$
			Race	$;
	DATALINES;
Female  Asian
Male    Black
Male    Asian
Female  Asian
Male    Asian
;

PROC FREQ	DATA = WORK.Illus;
	TABLES	Sex * Race	/ NOPERCENT NOROW NOCOL;
	TABLES	Sex * Race	/ LIST NOPERCENT NOCUM;
	TABLES	Sex * Race	/ LIST SPARSE NOPERCENT NOCUM;
	RUN;

*	Illustration 12 - Generating list output but retaining row and column percentages   *; RUN;
PROC FREQ	DATA = WORK.Illus;
	TABLES	Sex * Race;
	TABLES	Sex * Race	/ CROSSLIST;
	TABLES	Sex * Race	/ LIST;
	RUN;



*	SECTION 0.4.4 - CHECKING NUMERIC DATA USING PROC MEANS   *; RUN;

*	Illustration 1 - Default PROC MEANS output   *; RUN;
PROC MEANS	DATA = SASHelp.Classfit;
	VAR	Weight; * Specify variables (default is all variables).  Note:  Weight is blue *;
	RUN;

*	Illustration 2 - Using the MAXDEC option   *; RUN;
PROC MEANS
		DATA	= SASHelp.Classfit
		MAXDEC	= 1;
	VAR	Weight;
	RUN;

*	Illustration 3 - Specifying desired statistics   *; RUN;
PROC MEANS
		DATA	= SASHelp.Classfit
		MAXDEC	= 1
		MEDIAN Q1 Q3 N NMISS;
	VAR	Weight;
	RUN;

*	Illustration 4 - Displaying results by levels of a categorical variable   *; RUN;
PROC MEANS
		DATA	= SASHelp.Classfit
		MAXDEC	= 1
		MEDIAN Q1 Q3 N NMISS; * NObs (number of observations) is displayed by default) *;
	CLASS	Sex;
	VAR	Weight;
	RUN;

*	Illustration 5 - If no missing values you may want to suppress the N Obs output   *; RUN;
PROC MEANS
		DATA	= SASHelp.Classfit
		MAXDEC	= 1
		MEDIAN Q1 Q3 N NMISS
		NONOBS; * Illustrates why I put separate options on separate lines *;
	CLASS	Sex;
	VAR	Weight;
	RUN;

*	Illustration 6 - Displaying results by levels of multiple categorical variables   *; RUN;
PROC MEANS
		DATA	= SASHelp.Classfit
		MAXDEC	= 1
		MEDIAN Q1 Q3 N NMISS;
	CLASS	Sex Age;
	VAR	Weight;
	RUN;



;	*';	*";	*/;	QUIT;	RUN;
*	End of Program   *; RUN;

