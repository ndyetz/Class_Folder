*************	P	R	O	G	R	A	M		H	E	A	D	E	R	*****************
*****************************************************************************************
*																						*
*	PROGRAM:	0.2 - SAS Programs - Program.sas                                        *
*	PURPOSE:	Illustrate material in Chapter 0.2                                      *
*	AUTHOR:		Jud Blatchford															*
*	CREATED:	2016-08-02																*
*	                                                                                    *
*	COURSE:		BIOS 6680 - Data Management Using SAS                                   *
*	DATA USED:	Instream & SASHelp.Cars                                                 *
*	SOFTWARE:	SAS (r) Proprietary Software 9.4 (TS1M2)								*
*	MODIFIED:	DATE		BY	REASON													*
*				----------	---	-------------------------------------------------------	*
*				20YY-MM-DD	PJB															*
*	                                                                                    *
*****************************************************************************************
***********************************************************************************; RUN;



*	SECTION 0.2.1 - COMPONENTS OF A PROGRAM   *; RUN;

*	Illustration 1 - Steps & Step Boundaries   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	Name	$
			Triples	;
	DATALINES;
Crawford    309
Cobb        295
Wagner      252
;

DATA	WORK.Illus2;
	SET	WORK.Illus;
	Bases	= 3 * Triples;
	RUN;

PROC PRINT	DATA = WORK.Illus2;
	RUN;

*	Illustration 2 - SAS System Options   *; RUN;
PROC OPTIONS; * Shows all options in the log *;
	RUN;

PROC OPTIONS	OPTION = ORIENTATION; * Specify option to display only that option's setting *;
	RUN;

OPTIONS	NOCENTER; * Specify options using the OPTIONS statement (global) *;

*	Illustration 3 - Comments   *; RUN;
PROC REG	DATA = SASHelp.Cars;
	MODEL	MSRP = EngineSize /*Length*/ Wheelbase Cylinders Horsepower MPG_City; * Block comments can't be nested *;
	RUN;
	QUIT;



*	SECTION 0.2.2 - WRITING A PROGRAM   *; RUN;

*	Illustration 1 - Flexibility in Structuring SAS Code   *; RUN;
* The following code will be processed just as illustration 1 above *;
  daTA work.iLLus2          ;set work.illUS;baSES=3
*triples;run;proc              print data      =work.ILLus2; run;



*	SECTION 0.2.3 - SUBMITTING A PROGRAM   *; RUN;

*	Illustration 1 - How to Submit Programs   *; RUN;
*	Programs may be submitted by any of the following:
	1)	Using the menus to select Run-->Submit
	2)	Clicking the "Submit" button on the toolbar
	3)	Issuing the SUBMIT command in the command bar	*;



*	SECTION 0.2.4 - VIEWING RESULTS   *; RUN;

*	Illustration 1 - Using the LISTING Destination   *; RUN;
ODS LISTING;

PROC PRINT	DATA = WORK.Illus2;
	RUN;

ODS	LISTING CLOSE;

PROC FREQ	DATA = WORK.Illus2;
	TABLES	Name;
	RUN;

ODS NOPROCTITLE; * Use this to remove procedure titles (e.g. "The FREQ Procedure") *;



*	SECTION 0.2.5 - HANDLING ERRORS   *; RUN;

*	Illustration 1 - Missing Semicolon   *; RUN;
DATA	WORK.Illus2
	SET	WORK.Illus;
	Bases	= 3 * Triples;
	RUN;

PROC PRINT	DATA = WORK.Illus2
	RUN;

*	Illustration 2 - Unmatched or Missing Quotation Mark   *; RUN;
TITLE1	"MLB Career Triples Leaders';
PROC PRINT	DATA = WORK.Illus2;
	VAR	Name Triples;
	RUN;

*	Illustration 3 - Missing End to Block Comment   *; RUN;
PROC PRINT	DATA = WORK.Illus2;
	VAR	Name Triples /*Bases/;
	SUM	Triples;
	RUN;

*	Illustration 4 - Using PUT and PUTLOG Statements   *; RUN;
DATA	WORK.Animals;
	INFILE	DATALINES;
	INPUT	Cnt
			Animal	$;
	IF	Cnt	> 10	THEN PUTLOG	'There are ' Cnt 'of the following animal:  ' Animal;
	DATALINES;
4   Cat
.   Giraffe
2   Hippopotamus
11  Horse
;

DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	Name	$
			Triples	;
	IF	_ERROR_ = 1	THEN	PUT _ALL_;
	DATALINES;
Crawford    3O9
Cobb        295
Wagner      252
;



;	*';	*";	*/;	QUIT;	RUN;
*	End of Program   *; RUN;

