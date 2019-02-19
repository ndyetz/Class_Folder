*************	P	R	O	G	R	A	M		H	E	A	D	E	R	*****************
*****************************************************************************************
*																						*
*	PROGRAM:	1.2.1 - Variable Attributes - Program.sas                               *
*	PURPOSE:	Illustrate material in Section 1.2.1                                    *
*	AUTHOR:		Jud Blatchford															*
*	CREATED:	2016-08-04																*
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



*	SECTION 1.2.1.1 - VARIABLE NAMES   *; RUN;

*	Illustration 1 - Renaming a variable using the RENAME statement   *; RUN;
*	NB:  The variable is brought into the PDV with its original name
		This means you will program against the ORIGINAL variable name	*;
DATA	WORK.Class;
	SET	SASHelp.Class;
	RENAME	Height	= HtIn
			Weight	= WtLb; * Multiple variables can be renamed in the same RENAME statement *;
	HtCm	= Height * 2.54;
	PUT	_ALL_; * This shows the PDV has a variable named "Height", not "HtIn" *;
	RUN;
			
*	Illustration 2 - Renaming a variable using the RENAME= data set option   *; RUN;
DATA	WORK.Class;
	SET	SASHelp.Class	(	RENAME	= (	Height	= HtIn
										Weight	= WtLb	)
						);
	HtCm	= Height * 2.54; * This same assignment statement no longer works--see below *;
	RUN;

*	NB:  The new variable name is used in the PDV
		This means you will program against the NEW variable name   *;
DATA	WORK.Class;
	SET	SASHelp.Class	(	RENAME	= (	Height	= HtIn
										Weight	= WtLb	)
						);
	HtCm	= HtIn * 2.54;
	PUT	_ALL_; * This shows the PDV has a variable named "HtIn", not "Height" *;
	RUN;



*	SECTION 1.2.1.2 - VARIABLE TYPES   *; RUN;

DATA	WORK.CharData; * Simply creating a character variable for the illustrations *;
	INFILE	DATALINES;
	INPUT	CharDigit	$;
	DATALINES;
1
2
;

DATA	WORK.NumData; * Simply creating a numeric variable for the illustrations *;
	INFILE	DATALINES;
	INPUT	NumDigit	;
	DATALINES;
1
2
;

*	Illustration 1 - SAS performs numeric functions on numeric variables with no problems   *; RUN;
DATA	WORK.Illus;
	SET	WORK.NumData;
	NumResult	= NumDigit + 23;
	RUN;

*	Illustration 2 - SAS performs character functions on character variables with no problems   *; RUN;
DATA	WORK.Illus;
	SET	WORK.CharData;
	CharResult	= UPCASE(CharDigit); * SAS expects to use character functions with character variables *;
	RUN;

*	Goal:  Converting a character variable to a numeric variable   *; RUN;
*	Illustration 3 - SAS may implicitly convert a character variable to numeric if used as such (not recommended)    *; RUN;
*	Check the attributes of WORK.Illus to see the type of the resulting variables   *;
DATA	WORK.Illus;
	SET	WORK.CharData;
	NumResult	= CharDigit + 23; * Note:  This is analogous to writing NumResult = "Sandwich" + 23 (nonsensical) *;
	RUN;

*	Illustration 4 - Explicitly converting a character variable to a new, different, numeric variable   *; RUN;
*	Use the INPUT function with an informat to properly read the number   *;
DATA	WORK.Illus;
	SET	WORK.CharData;
	NumResult	= INPUT(CharDigit, 1.);
	RUN;

*	Goal:  Converting a numeric variable to a character variable   *; RUN;
*	Illustration 5 - Numeric values are converted to character values when used in a character context (not recommended)    *; RUN;
*	SAS writes the numeric value using the BEST12 format   *;
*	Check the attributes of WORK.Illus to see the type of the resulting variables   *;
DATA	WORK.Illus;
	SET	WORK.NumData;
	CharResult	= UPCASE(NumDigit);
	RUN;

*	Illustration 6 - Explicitly converting a numeric variable to a new, different, character variable   *; RUN;
*	Use the PUT function with a format to display the number as desired   *;
DATA	WORK.Illus;
	SET	WORK.NumData;
	CharResult1	= PUT(NumDigit, 1.); * To display the number as a single digit *;
	CharResult2	= PUT(NumDigit, 4.2); * To display the number with 2 decimal places *;
	CharResult3	= PUT(NumDigit, PERCENT6.1); * To display the number as a percent *;
	CharResult4	= PUT(NumDigit, WORDDATE20.); * To display the number as a date *;
	RUN;
	
*	Illustration 8 - Converting a character date value to a numeric date value   *; RUN;
DATA	WORK.CharDate;
	INFILE	DATALINES;
	INPUT	CharDate	$10.;
	DATALINES;
11/28/2006
1/4/60
;

DATA	WORK.Illus;
	SET	WORK.CharDate;
	NumDate	= INPUT(CharDate, MMDDYY10.);
	FORMAT	NumDate	WORDDATE32.; * This is simply to be able to see the date value *;
	RUN;

*	Illustration 7 - Starting with a character variable 'Age', and ending with a numeric variable 'Age'   *; RUN;
DATA	WORK.Demog; * Simply creating data for the example *;
	INFILE	DATALINES;
	INPUT	Name	$
			Age		$;
	DATALINES;
Amy 37
Bob 28
;

*	Goal:  Converting the type of the SAME variable   *;
*	The type of any given variable CANNOT be changed.  If this is the goal, you would need to:
	1)	Rename the variable you are trying to convert (e.g. Age -> AgeChar)
	2)	Create a new variable from the one you just renamed using the INPUT or PUT function
	3)	DROP the original variable (which has been renamed)		*;
DATA	WORK.Illus;
	SET	WORK.Demog	(	RENAME	= (	Age = AgeChar	)
					);
	Age	= INPUT(AgeChar, 2.);
	DROP	AgeChar;
	RUN;



*	SECTION 1.2.1.3 - VARIABLE LENGTHS   *; RUN;

DATA	WORK.Cities; * Creating data with 3 character variables all of different length *;
	INFILE	DATALINES;
	INPUT	City	$	1-13	/* length = 13 */
			StateCd	$	15-16	/* length = 2  */
			State	$	18-29	/* length = 12 */;
	DATALINES;
Cleveland     OH Ohio
Philadelphia  PA Pennsylvania
San Francisco CA California
;

*	Illustration 1 - Character lengths can't be changed after the PDV is created    *; RUN;
DATA	WORK.Illus;
	SET	WORK.Cities;
	LENGTH	City	$	15	/* Attempting to increase the length generates a warning */
			StateCd	$	1	/* Attempting to decrease the length generates a warning */
			State	$	12	/* Specifying the same length will not generate a warning */	;
	RUN;

*	Illustration 2 - Lengths of character variables can be changed before source data is imported    *; RUN;
DATA	WORK.Illus;
	LENGTH	City	$	15	/* Increasing the length will not generates a warning */
			StateCd	$	1	/* Decreasing the length generates a warning (the values were truncated) */
			State	$	12	/* Specifying the same length will not generate a warning */	;
	SET	WORK.Cities;
	RUN;

*	Illustration 3 - By default all numeric variables are stored using 8 bytes (length = 8)   *; RUN;
*	Check the properties of WORK.Baseball to verify that all 4 numeric variables are length 8   *;
DATA	WORK.Baseball;
	INFILE	DATALINES;
	INPUT	@1	Player	$3.
			@5	BirthDt	MMDDYY10.
			@16	H		1.
			@18	AB		1.	;
	Average	= H / AB;
	DATALINES;
Joe 08/19/1996 1 3
;

*	Illustration 4 - Lengths of numeric variables may range from 3 to 8 bytes   *; RUN;
DATA	WORK.Illus;
	SET	WORK.Baseball;
	LENGTH	H AB 3
			BirthDt	4;
	RUN;

*	Illustration 5 - Lengths of numeric variables are ALWAYS 8 in the PDV   *; RUN;
*	Consequence:  Trying to define lengths before the SET statement may lead to warning messages   *;
DATA	WORK.Illus;
	LENGTH	H AB 3
			BirthDt	4;
	SET	WORK.Baseball;
	RUN;

*	Placing the LENGTH statement after the SET statement will avoid unnecessary warning messages   *; RUN;
DATA	WORK.Illus;
	SET	WORK.Baseball;
	LENGTH	H AB 3
			BirthDt	4;
	RUN;

*	Illustration 6 - Always use 8 bytes to store decimal data   *; RUN;
*	Note the truncation in the output data set   *;
DATA	WORK.Illus;
	SET	WORK.Baseball;
	LENGTH	Average	3;
	PUT	Average; * This shows the accuracy is maintained in the PDV before the data is output *;
	RUN;



*	SECTION 1.2.1.4 - LABELS   *; RUN;

*	Illustration 1 - Creating a label for a data set   *; RUN;
*	The label is shown in the Viewtable window banner and in the General Properties   *;
DATA	WORK.Illus	(	LABEL = "MLB All-Time Hits Leaders"	);
	INFILE	DATALINES;
	INPUT	Player	$
			H		;
	DATALINES;
Rose    4256
Cobb    4191
Aaron   3771
;

PROC CONTENTS	DATA = WORK.Illus;
	RUN;

*	Illustration 2 - Creating variable labels   *; RUN;
*	Use the LABEL statement   *;
*	Note:  The label is still not part of the data set (this can be confirmed by checking the variable attributes)   *;
PROC MEANS	DATA = WORK.Illus;
	VAR	H;
	LABEL	H = 'Career Hits';
	RUN;

*	Recall that PROC PRINT doesn't include labels unless the LABEL option is specified   *;
PROC PRINT
		DATA = WORK.Illus
		LABEL; * Without this, the variable names will be displayed, even though labels are created *;
	LABEL	Player	= 'Player Name'
			H		= 'Career Hits';
	RUN;

*	Note:  These labels are temporary (i.e. only during the PROC).
	Check the variable attributes in WORK.Illus to confirm the labels are not attached to the variables   *;

*	Illustration 3 - Assigning "Permanent" variable labels   *; RUN;
*	Variable labels are assigned "permanently" when the LABEL statement is used in the DATA step   *;
*	Check the variable attributes for WORK.Illus to confirm the labels are attached to the variables   *;
DATA	WORK.Illus	(	LABEL = "MLB All-Time Hits Leaders"	);
	INFILE	DATALINES;
	INPUT	Player	$
			H		;
	LABEL	Player	= 'Player Name'
			H		= 'Career Hits';
	DATALINES;
Rose    4256
Cobb    4191
Aaron   3771
;

*	Illustration 4 - Labels displayed without specifying a LABEL statement   *; RUN;
*	This is a major benefit of assigning labels in the DATA step!   *; RUN;
PROC MEANS	DATA = WORK.Illus;
	VAR	H;
	RUN;

*	Illustration 5 - Once permanent labels are assigned, different labels can still be used in a PROC   *; RUN;
*	Check the variable attributes in WORK.Illus to confirm the permanent label is still attached to the H variable   *;
PROC MEANS	DATA = WORK.Illus;
	VAR	H;
	LABEL	H = 'Temporary Label for this PROC Step';
	RUN;

*	Illustration 6 - Not using a label for a procedure (when a variable has a permanent label)    *; RUN;
*	Note:  This illustration is relevant because most procedures don't have a NOLABEL option   *;
*	Note:  A space must be specified between the quotation marks   *;
PROC MEANS	DATA = WORK.Illus;
	VAR	H;
	LABEL	H = ' ';
	RUN;

*	NB:  A "Permanent" label can be attached to a variable in a "Temporary" data set (in the WORK library)!   *; RUN;



*	SECTION 1.2.1.5 - FORMATS   *; RUN;


*	Consideration A - Assigning SAS Formats (Formats already available within SAS)   *; RUN;
DATA	WORK.Illus; * Creating data for the illustration *;
	INFILE	DATALINES;
	INPUT	@1	Name	$3.
			@5	BirthDt	MMDDYY10.
			@16	BirthSt	$12.
			@29	Salary	8.;
	DATALINES;
Amy 1/23/1945  Pennsylvania 22970000
;

*	Illustration A.1 - Using the FORMAT statement   *; RUN;
PROC PRINT	DATA = WORK.Illus;
	FORMAT	BirthDt	WORDDATE25.;
	RUN;

*	Illustration A.2 - Formats specified using <$>format<w>.<d> specification   *; RUN;
*	Note:  Applying a format does NOT change the actual data value   *;
PROC PRINT	DATA = WORK.Illus;
	FORMAT	BirthSt	$4.
			Salary	DOLLAR14.2; * Verify the value in WORK.Illus is unchanged *;
	RUN;

*	Illustration A.3 - Formats can be used when writing values to the log   *; RUN;
DATA	WORK.Illus;
	SET	WORK.Illus;
	PUTLOG	Salary=DOLLAR14.2;
	RUN;


*	Consideration B - Creating Custom (a.k.a. User-Defined) Numeric Formats   *; RUN;
DATA	WORK.Demog; * Creating data to use in the illustrations *;
	INFILE	DATALINES;
	INPUT	Name	$
			SexCd
			RaceCd
			HtIn	;
	DATALINES;
Aardsma  1 1 65
dePalma  1 6 73
Henson   2 9 7
McDonald 2 2 69
Wilson   1 2 71.5
vonKamp  2 . .
Zosky    2 1 64
;

*	Illustration B.1 - Creating numeric formats for single values   *; RUN;
*	Note:  SAS automatically creates a catalog named 'Formats' in the WORK library to contain the format(s) created   *;
PROC FORMAT;
	VALUE	SexCd
				1	= 'Male'
				2	= 'Female';
	RUN;

*	Illustration B.2 - Applying a user-defined format   *; RUN;
PROC PRINT DATA = WORK.Demog;
	VAR	Name SexCd;
	FORMAT	SexCd SexCd.; * Note: The format name doesn't need to match the variable name *;
	RUN;

*	Illustration B.3 - Creating numeric formats with multiple values assigned to a level   *; RUN;
PROC FORMAT;
	VALUE	Race3Grps
				1				= 'White'
				2				= 'Black'
				3, 4, 5, 6, 7	= 'Other Race';
	*	Note:  Listing values is better practice than a range (e.g. 3-7 = 'Other Race') because it restricts to the integers   *;
	RUN;

*	Note:  Values not covered in the format appear as unformatted original values   *;
PROC PRINT DATA = WORK.Demog;
	VAR	Name RaceCd;
	FORMAT	RaceCd Race3Grps.;
	RUN;

*	Illustration B.4 - It is good practice to include formats for:
	1.	Missing values, and
	2.	Unexpected values    *; RUN;
PROC FORMAT;
	VALUE	Race3Grps
				.				= 'Unknown'
				1				= 'White'
				2				= 'Black'
				3, 4, 5, 6, 7	= 'Other Race'
				OTHER			= 'Unexpected Value';
	RUN;

PROC PRINT DATA = WORK.Demog;
	VAR	Name RaceCd;
	FORMAT	RaceCd Race3Grps.;
	RUN;

*	Illustration B.5 - Creating numeric formats to assign ranges of values to categories   *; RUN;
PROC FORMAT;
	VALUE	Ht3Grps
				60 - 65	= "5 Ft 0 In - 5 Ft 5 In"
				66 - 71	= "5 Ft 6 In - 5 Ft 11 In"
				72 - 77	= "6 Ft 0 In - 6 Ft 5 In";
	RUN;

PROC PRINT DATA = WORK.Demog;
	VAR	Name HtIn;
	FORMAT	HtIn Ht3Grps.;
	RUN;

*	Illustration B.6 - Creating formats for continuous values with no gaps   *; RUN;
PROC FORMAT;
	VALUE	Ht3Grps
				60 - < 66	= "Group 1: [5'0 - 5'6)"
				66 - < 72	= "Group 2: [5'6 - 6'0)"
				72 - 78		= "Group 3: [6'0 - 6'6]";
	RUN;

PROC PRINT DATA = WORK.Demog;
	VAR	Name HtIn;
	FORMAT	HtIn Ht3Grps.;
	RUN;

*	Illustration B.7 - Using the LOW and HIGH keywords   *; RUN;
*	LOW does not include missing values for numeric variables   *;
PROC FORMAT;
	VALUE	Ht3Grps
				.			= "Unknown"
				LOW - < 66	= "Group 1: Under 5'6"
				66  - < 72	= "Group 2: [5'6 - 6'0)"
				72  - HIGH	= "Group 3: 6'0 and Taller"
				OTHER		= "Unexpected Value";
	RUN;

*	Warning:  The LOW and HIGH keywords can hide erroneous data   *;
PROC PRINT DATA = WORK.Demog;
	VAR	Name HtIn;
	FORMAT	HtIn Ht3Grps.;
	RUN;

*	Illustration B.8 - Set ranges to plausible values instead of using LOW and HIGH   *; RUN;
PROC FORMAT;
	VALUE	Ht3Grps
				.			= "Unknown"
				54	- < 66	= "Group 1: Under 5'6"
				66  - < 72	= "Group 2: [5'6 - 6'0)"
				72  - 84	= "Group 3: 6'0 and Taller"
				OTHER		= "Unexpected Value";
	RUN;

PROC PRINT DATA = WORK.Demog;
	VAR	Name HtIn;
	FORMAT	HtIn Ht3Grps.;
	RUN;


*	Consideration C - Creating Custom (a.k.a. User-Defined) Character Formats   *; RUN;
DATA	WORK.Demog; * Creating data to use in the illustrations *;
	INFILE	DATALINES;
	INPUT	ID
			Name	$
			SexCd	$
			RaceCd	$	;
	DATALINES;
1 Aardsma  M W
2 dePalma  M O
3 Henson   F J
4 McDonald F B
5 Wilson   M B
6 vonKamp  F .
7 Zosky    F W
;

*	Illustration C.1 - Creating character formats for single values   *; RUN;
*	Note:  $ is needed as the first character in the name of a character format   *;
*	Note:  'SexCd' can be the name for both a numeric and a character format (Type is 'Formatc') in the same catalog   *;
PROC FORMAT;
	VALUE	$SexCd
				'M'	= 'Male'
				'F'	= 'Female';
	RUN;

PROC PRINT DATA = WORK.Demog;
	VAR	Name SexCd;
	FORMAT	SexCd $SexCd.; * Character formats must be used with character variables *;
	RUN;

*	Illustration C.2 - Creating character formats with multiple values assigned to a level   *; RUN;
*	Note:  Be careful not to specify multiply values as 'A, P, I, O, M'--each value needs to be quoted   *;
PROC FORMAT;
	VALUE	$Race3Grps
				'W'						= 'White'
				'B'						= 'Black'
				'A', 'P', 'I', 'O', 'M'	= 'Other Race';
	RUN;

*	Note:  Values not covered in the format appear as unformatted original values   *;
PROC PRINT DATA = WORK.Demog;
	VAR	Name RaceCd;
	FORMAT	RaceCd $Race3Grps.;
	RUN;

*	Illustration C.3 - Creating character formats to assign ranges of values to categories   *; RUN;
PROC FORMAT;
	VALUE	$Counselor
				'A' - 'M'	= 'Counselor:  Mrs. Jones'
				'N'	- 'Z'	= 'Counselor:  Mr. Williams';
	RUN;

PROC PRINT	DATA = WORK.Demog;
	VAR	ID Name;
	FORMAT	Name $Counselor.;
	RUN;

*	Illustration C.4 - Using inequalities to remove "gaps" between consecutive character values   *; RUN;
PROC FORMAT;
	VALUE	$Counselor
				'A' - < 'N'	= 'Counselor:  Mrs. Jones'
				'N'	- 'Z'	= 'Counselor:  Mr. Williams';
	RUN;

PROC PRINT	DATA = WORK.Demog;
	VAR	ID Name;
	FORMAT	Name $Counselor.;
	RUN;

*	Illustration C.5 - Using the HIGH keyword to handle 'Zosky'   *; RUN;
PROC FORMAT;
	VALUE	$Counselor
				'A' - < 'N'	= 'Counselor:  Mrs. Jones'
				'N'	- HIGH	= 'Counselor:  Mr. Williams';
	RUN;

PROC PRINT	DATA = WORK.Demog;
	VAR	ID Name;
	FORMAT	Name $Counselor.;
	RUN;
*	Note:  'dePalma' is assigned to Mr. Williams instead of Mrs. Jones   *;

*	Illustration C.6 - Taking into account lowercase sorts after uppercase   *; RUN;
PROC FORMAT;
	VALUE	$Counselor
				'A' - < 'N'		= 'Counselor:  Mrs. Jones'
				'N'	- < 'a'		= 'Counselor:  Mr. Williams'
				'a'	- < 'n'		= 'Counselor:  Mrs. Jones'
				'n'	- HIGH		= 'Counselor:  Mr. Williams';
	RUN;

PROC PRINT	DATA = WORK.Demog;
	VAR	ID Name;
	FORMAT	Name $Counselor.;
	RUN;

*	Illustration C.7 - Using a format to remove unwanted values   *; RUN;
DATA	WORK.Demog; * Creating data to use in the illustrations *;
	INFILE	DATALINES;
	INPUT	ID
			Name	$	;
	DATALINES;
1 Aardsma
2 dePalma
3 N/A
4 McDonald
5 Wilson
6 vonKamp
7 Zosky
;

*	This takes advantage of the fact that values which don't appear in a format definition remain unchanged   *; 
PROC FORMAT;
	VALUE	$RemoveNA
				'N/A'	= ' ';
	RUN;

PROC PRINT	DATA = WORK.Demog;
	VAR	ID Name;
	FORMAT	Name	$RemoveNA.;
	RUN;

*	Illustration C.8 - Specifying the length of a character format   *; RUN;
PROC PRINT	DATA = WORK.Demog;
	VAR	ID Name;
	FORMAT	Name	$RemoveNA8.;
	RUN;


*	Consideration D - Creating Formats from a Control Data Set   *; RUN;
*	Illustration D.1 - Creating a numeric format from a control data set   *; RUN;
DATA	WORK.RaceCodes; * This is the source data set containing the information from which a format will be created *;
	INFILE	DATALINES;
	INPUT	RaceCd
			RaceNm	$	3-18;
	DATALINES;
1 White
2 Black
3 Asian
4 Pacific Islander
5 American Indian
6 Other Race
7 Multiple Races
;

*	Rename:
	1)	Variable containing the format name must be named 'FMTNAME'
	2)	Variable containing the values must be named 'START'
	3)	Variable containing the labels must be named 'LABEL'		*;
DATA	WORK.RaceFmt;
	RETAIN	FMTNAME	'RaceCd';
	SET	WORK.RaceCodes	(	RENAME =	(	RaceCd	= START
											RaceNm	= LABEL	)
					);
	RUN;

*	The CNTLIN= option builds formats without using a VALUE statement   *;
PROC FORMAT
		CNTLIN	= WORK.RaceFmt;
	RUN;

*	Illustration D.2 - Creating a character format from a control data set   *; RUN;
DATA	WORK.StateCodes;
	INFILE	DATALINES;
	INPUT	StateCd $	1-2
			StateNm	$	4-13;
	DATALINES;
CA California
CO Colorado
FL Florida
HI Hawaii
NY New York
;

*	For character formats, one of the following must be in place:
	1)	The format name must start with a $, or
	2)	An additional variable named 'TYPE' must be created and must contain a value of 'C'	*;
*	This shows method 1   *;
DATA	WORK.StateFmt;
	RETAIN	FMTNAME	'$StateCd';
	SET	WORK.StateCodes	(	RENAME =	(	StateCd	= START
											StateNm	= LABEL	)
					);
	RUN;

PROC FORMAT
		CNTLIN	= WORK.StateFmt;
	RUN;

*	This shows method 2   *;
DATA	WORK.StateFmt;
	RETAIN	FMTNAME	'StateCd'
			TYPE	'C';
	SET	WORK.StateCodes	(	RENAME =	(	StateCd	= START
											StateNm	= LABEL	)
					);
	RUN;

PROC FORMAT
		CNTLIN	= WORK.StateFmt;
	RUN;


*	Consideration E - Saving Custom Formats (i.e. Creating "Permanent" Formats)   *; RUN;
*	Illustration E.1 - Storing a format (created using a VALUE statement) in a permanent library   *; RUN;
*	By default, formats are stored temporarily in the WORK.Formats catalog.   *;
*	Use the LIBRARY= option to specify a desired library location   *;
LIBNAME	TLSB	"C:\Dropbox\2 - Education\7 - Teaching\1 - SAS\BIOS 6680 - Data Management Using SAS\0 - Preliminaries\Source Data\Little SAS Book";

PROC FORMAT	LIBRARY	= TLSB;
	VALUE	AnimalCd
				1	= 'Lion'
				2	= 'Tiger'
				3	= 'Bear';
	RUN;

*	Illustration E.2 - Storing a format (created using a control data set) in a permanent library   *; RUN;
PROC FORMAT
		CNTLIN	= WORK.StateFmt
		LIBRARY	= TLSB;
	RUN;
*	Note:  By default, the format is stored in a catalog named 'Formats'

*	Illustration E.3 - Specifying a catalog name for the format(s) to be stored in   *; RUN;
PROC FORMAT
		CNTLIN	= WORK.StateFmt
		LIBRARY	= TLSB.StudyFmts;
	RUN;

*	Illustration E.4 - Using the FMTLIB option to view formats stored in a catalog   *; RUN;
PROC FORMAT
		LIBRARY	= TLSB.StudyFmts
		FMTLIB;
	RUN;


*	Consideration F - Accessing Custom Formats   *; RUN;
*	Illustration F.1 - Using the LIBRARY libref    *; RUN;
*	By default, SAS will search in:
	1)	the WORK library
	2)	A library given the libref of 'LIBRARY' (you still need to provide the path to where the formats are located)	*;
DATA	WORK.Illus; * Creating small data set for the illustration *;
	INFILE	DATALINES;
	INPUT	Num
			StateAbbrev	$	;
	DATALINES;
5  CA
11 HI
;

* Delete the '$StateCd' format from the WORK library *;
* This won't work unless the 'StateCd' format is in the WORK library *;
PROC PRINT DATA = WORK.Illus;
	FORMAT	StateAbbrev	$StateCd.;
	RUN;

* In illustration E.1 we stored the format in the TLSB library in a catalog named 'Formats' *;
* Now we will create a libref 'LIBRARY' to that location *;
LIBNAME	LIBRARY	"C:\Dropbox\2 - Education\7 - Teaching\1 - SAS\BIOS 6680 - Data Management Using SAS\0 - Preliminaries\Source Data\Little SAS Book";

* This will now work because SAS automatically looks in the LIBRARY.Formats catalog for any formats *;
PROC PRINT DATA = WORK.Illus;
	FORMAT	StateAbbrev	$StateCd.;
	RUN;

*	Illustration F.2 - Specifying a location for SAS to search    *; RUN;
*	First clear the LIBRARY libref and delete the TLSB.Formats catalog (leaving the TLSB.StudyFmts catalog from Illus E.2)   *;
LIBNAME	LIBRARY	CLEAR;

*	This won't work because the $StateCd format isn't in WORK.Formats or LIBRARY.Formats   *;
PROC PRINT DATA = WORK.Illus;
	FORMAT	StateAbbrev	$StateCd.;
	RUN;

*	The FMTSEARCH option specifies folder(s) to search for user-defined formats   *;
OPTIONS	FMTSEARCH = (TLSB.StudyFmts);
PROC PRINT DATA = WORK.Illus;
	FORMAT	StateAbbrev	$StateCd.;
	RUN;

*	Illustration F.3 - Controlling the order in which SAS searches libraries    *; RUN;
*	The default order is WORK, LIBRARY, then any specified in the FMTSEARCH= option
	To force SAS to use the permanent formats first specify the following:		*;
OPTIONS	FMTSEARCH = (	TLSB.StudyFmts	TLSB	WORK	LIBRARY	);


*	Consideration G - Attaching Formats to Variables   *; RUN;
*	Illustration G.1 - Using the FORMAT statement to attach formats    *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	Number
			AnimalCd
			StateAbbrev	$;
	FORMAT	StateAbbrev	$StateCd.;
	DATALINES;
1 2 NY
2 3 CO
;
*	Check the 1) properties and 2) data values of WORK.Illus to confirm the format is attached to variable values   *;

*	Illustration G.2 - Not using the format attached to a variable   *; RUN;
*	Use a FORMAT statement, specify the variable but no format   *;
PROC PRINT DATA = WORK.Illus;
	VAR	StateAbbrev;
	FORMAT	StateAbbrev;
	RUN;

*	Illustration G.3 - Using the NOFMTERR option when the format is unavailable    *; RUN;
*	When you try to open a data set which has a variable attached to a format but the format is not available,
	the data set won't open   *;
*	The 'NOFMTERR' option will allow you to still open the data set and view the unformatted values   *;
OPTIONS	NOFMTERR;



*	SECTION 1.2.1.6 - THE ATTRIB STATEMENT   *; RUN;

*	Illustration 1 - Using the ATTRIB statement   *; RUN;
*	The ATTRIB statement may be used to specify variable attributes in a single statement   *;
DATA WORK.Illus;
	ATTRIB	Name	LABEL = 'Player Name'	LENGTH = $5	FORMAT = $5.
			HR		LABEL = 'Home Runs'		LENGTH = 3	FORMAT = 3.
			BirthDt	LABEL = 'Birth Date'	LENGTH = 4	FORMAT = WORDDATE32.	INFORMAT = MMDDYY10.	;
	INFILE	DATALINES;
	INPUT	Name
			HR
			BirthDt	;
	DATALINES;
Bonds 762 7/24/1964
Aaron 755 2/5/1934
Ruth  714 2/6/1895
;
*	Check the properties for the data set WORK.Illus   *;

*	Illustration 2 - For character variables, the LENGTH= option should be before the FORMAT= option   *; RUN;
*	If the FORMAT= option is specified first, it will also set the length of the variable   *;
*	A warning will only be generated if the values for LENGTH and FORMAT are different   *;
DATA WORK.Illus;
	ATTRIB	Name	LABEL = 'Player Name'	FORMAT = $3.			LENGTH = $5
			HR		LABEL = 'Home Runs'		FORMAT = 3.				LENGTH = 3
			BirthDt	LABEL = 'Birth Date'	FORMAT = WORDDATE32.	LENGTH = 4	INFORMAT = MMDDYY10.	;
	INFILE	DATALINES;
	INPUT	Name
			HR
			BirthDt	;
	DATALINES;
Bonds 762 7/24/1964
Aaron 755 2/5/1934
Ruth  714 2/6/1895
;

*	Different values of LENGTH and FORMAT can be set if LENGTH is specified first   *;
DATA WORK.Illus;
	ATTRIB	Name	LABEL = 'Player Name'	LENGTH = $5	FORMAT = $2.
			HR		LABEL = 'Home Runs'		LENGTH = 3	FORMAT = 3.
			BirthDt	LABEL = 'Birth Date'	LENGTH = 4	FORMAT = WORDDATE32.	INFORMAT = MMDDYY10.	;
	INFILE	DATALINES;
	INPUT	Name
			HR
			BirthDt	;
	DATALINES;
Bonds 762 7/24/1964
Aaron 755 2/5/1934
Ruth  714 2/6/1895
;



;	*';	*";	*/;	QUIT;	RUN;
*	End of Program   *; RUN;

