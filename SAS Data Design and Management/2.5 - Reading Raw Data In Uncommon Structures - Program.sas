*************	P	R	O	G	R	A	M		H	E	A	D	E	R	*****************
*****************************************************************************************
*																						*
*	PROGRAM:	1.1.5 - Reading Raw Data In Uncommon Structures - Program.sas           *
*	PURPOSE:	Illustrate material in Section 1.1.5                                    *
*	AUTHOR:		Jud Blatchford															*
*	CREATED:	2016-08-17																*
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



*	SUBSECTION 1.1.5.1 - READING MESSY RAW DATA   *; RUN;

*	Illustration 1 - How to handle multiple formats for a single variable   *; RUN;
*	Initial attempt might look like this:   *;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	@1	State	$2.
			@5	SubjID	3.
			@9	BirthDt		MMDDYY10.;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
CO  167 11/22/1978
UT  181 1990-10-20
UT  185 1984-6-27
UT  187 1993-2-3
CO  188 1/8/1985
;

*	It is clear the informat needed for the date depends on the value of state.
	Therefore, conditional logic will be needed to read the date correctly   *;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	@1	State	$2.
			@5	SubjID	3.	;
	IF			State	= 'CO'	THEN	INPUT	@9	BirthDt	MMDDYY10.;
		ELSE IF	State	= 'UT'	THEN	INPUT	@9	BirthDt	YYMMDD10.;
*put _ALL_;

* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
CO  167 11/22/1978
UT  181 1990-10-20
UT  185 1984-6-27
UT  187 1993-2-3
CO  188 1/8/1985
;

*	Look at the WORK.Illus data set to investigate what went wrong   *;
PROC PRINT	DATA = WORK.Illus;
	FORMAT	BirthDt	WORDDATE30.;
	RUN;

*	Use the single trailing @ to hold the record in the input buffer until
	1)	An INPUT statement without a trailing @ executes, or
	2)	The next iteration of the DATA step begins   *;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	@1	State	$2.
			@5	SubjID	3.	@;
	IF			State	= 'CO'	THEN	INPUT	@9	BirthDt	MMDDYY10.;
		ELSE IF	State	= 'UT'	THEN	INPUT	@9	BirthDt	YYMMDD10.;

format birthdt worddate32.;

* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
CO  167 11/22/1978
UT  181 1990-10-20
UT  185 1984-6-27
UT  187 1993-2-3
CO  188 1/8/1985
;



*	SUBSECTION 1.1.5.2 - MULTIPLE OBSERVATIONS PER RAW DATA LINE   *; RUN;

*	Illustration 1 - How to read multiple observations per raw data line   *; RUN;
*	First attempt using what we already know   *;
*	Note:  This code doesn't produce any errors (but doesn't produce desired result)   *;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	SubjID	$
			Sex		$
			Age		;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
1035 F 58   1041 M 40   1055 M 64   1056
M 53    1058 F 35   1059 F 46   1067 M 33
;

*	Use the double-trailing @@ to hold the record in the input buffer until
	1)	The record runs out of data, or
	2)	An INPUT statement without the double-trailing @@ executes   *;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	SubjID	$
			Sex		$
			Age			@@;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
1035 F 58   1041 M 40   1055 M 64   1056
M 53    1058 F 35   1059 F 46   1067 M 33
;

*	Illustration 2 - Using multiple input styles when reading multiple observations per raw data line   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	SubjID	$				/* List Input */
			Name		$14.		/* Formatted Input */
			BirthDt		:MMDDYY10.	/* Modified List Input */	@@;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
001 Allie Allison   11/12/1980  002 Bob Benson      6/7/1967
003 Chris Clarkson  1/2/03      004 Dani Dixon      050698
;



*	SUBSECTION 1.1.5.3 - SINGLE OBSERVATION FROM MULTIPLE RAW DATA LINES   *; RUN;

*	Illustration 1 - Using multiple INPUT statements to read multiple records   *; RUN;
*	Note:  There are 4 records per logical observation   *;
DATA	WORK.Illus;
	INFILE	DATALINES	N = 4; * Specifies the number of records to keep in the input buffer *;
	INPUT	Name		$10.;
	INPUT	;
	INPUT	Address		$25.;
	INPUT	City	$
			State	$
			ZipCode		:$10.;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Zhang Min
Epidemiologist
123 Main St
Denver CO   80220
Juan Perez
Biostatistician
98765 S Pennsylvania Blvd
Aurora CO   80045-5555
;

*	Illustration 2 - Using a slash to input the next record into the input buffer   *; RUN;
*	Note:  There are 4 records per logical observation   *;
DATA	WORK.Illus;
	INFILE	DATALINES	N = 4;
	INPUT	Name		$10.
		//	Address		$25.
		/	City	$
			State	$
			ZipCode		:$10.;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Zhang Min
Epidemiologist
123 Main St
Denver CO   80220
Juan Perez
Biostatistician
98765 S Pennsylvania Blvd
Aurora CO   80045-5555
;

*	Illustration 3 - Using a single INPUT statement with line pointer controls   *; RUN;
*	Note:  When SAS compiles the DATA step, it reads the INPUT statement and the #4 tells SAS that it
		needs to build an Input Buffer with 4 records to produce each observation		*;
DATA	WORK.Illus;
	INFILE	DATALINES	N = 4;
	INPUT		Name		$10.
			#3	Address		$25.
			#4	City	$
				State	$
				ZipCode		:$10.;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Zhang Min
Epidemiologist
123 Main St
Denver CO   80220
Juan Perez
Biostatistician
98765 S Pennsylvania Blvd
Aurora CO   80045-5555
;

*	Illustration 4 - Mixing line pointer controls   *; RUN;
*	Note:  When SAS compiles the DATA step, it reads the INPUT statement and the #4 tells SAS that it
		needs to build an Input Buffer with 4 records to produce each observation		*;
DATA	WORK.Illus;
	INFILE	DATALINES	N = 4;
	INPUT		Name		$10.
			#3	Address		$25.
			/	City	$
				State	$
				ZipCode		:$10.;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Zhang Min
Epidemiologist
123 Main St
Denver CO   80220
Juan Perez
Biostatistician
98765 S Pennsylvania Blvd
Aurora CO   80045-5555
;

*	Illustration 5 - Omitting the N= INFILE statement option   *; RUN;
*	There are no issues if reading variables in the same order as the input records   *;
 DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT		Name		$10.
			#3	Address		$25.
			/	City	$
				State	$
				ZipCode		:$10.;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Zhang Min
Epidemiologist
123 Main St
Denver CO   80220
Juan Perez
Biostatistician
98765 S Pennsylvania Blvd
Aurora CO   80045-5555
;

*	There are no issues if reading variables in a different order but the highest line # is specified   *;
 DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	#4	City	$
				State	$
				ZipCode		:$10.
			#1	Name		$10.
			#3	Address		$25.;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Zhang Min
Epidemiologist
123 Main St
Denver CO   80220
Juan Perez
Biostatistician
98765 S Pennsylvania Blvd
Aurora CO   80045-5555
;

*	There can be issues if reading variables in a different order and the highest line # is not specified   *;
*	Note:  SAS interprets the /// as discarding the first 3 records to get to the 4th record.
			Then it reads the #1 and says "I don't have that record anymore".
	So if you want to read this data out of order, it's best to build a 4-line input buffer!	*;
 DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	///	City	$
				State	$
				ZipCode		:$10.
			#1	Name		$10.
			#3	Address		$25.;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Zhang Min
Epidemiologist
123 Main St
Denver CO   80220
Juan Perez
Biostatistician
98765 S Pennsylvania Blvd
Aurora CO   80045-5555
;



*	SUBSECTION 1.1.5.4 - READING PART OF A RAW DATA FILE / CONTROLLING WHICH OBSERVATIONS ARE READ   *; RUN;

*	Illustration 1 - Testing a record to keep only desired records   *; RUN;
*	Goal:  Keep only observations from Colorado   *;
*	First attempt might look like this:   *;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	State	$2.	@;
	IF			State = 'CO' 	THEN INPUT		SubjID	5-7
											@9	BirthDt	MMDDYY10.;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
CO  167 11/22/1978
UT  181 1990-10-20
UT  185 1984-6-27
UT  187 1993-2-3
CO  188 1/8/1985
;

*	Delete the records not desired   *;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	State	$2.	@;
	IF			State = 'CO' 	THEN INPUT		SubjID	5-7
											@9	BirthDt	MMDDYY10.;
		ELSE IF	State = 'UT'	THEN DELETE;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
CO  167 11/22/1978
UT  181 1990-10-20
UT  185 1984-6-27
UT  187 1993-2-3
CO  188 1/8/1985
;

*	Alternative solution   *;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT		State	$2.	@;
	IF	State = 'CO';
	INPUT		SubjID	5-7
			@9	BirthDt	MMDDYY10.;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
CO  167 11/22/1978
UT  181 1990-10-20
UT  185 1984-6-27
UT  187 1993-2-3
CO  188 1/8/1985
;



;	*';	*";	*/;	QUIT;	RUN;
*	End of Program   *; RUN;

