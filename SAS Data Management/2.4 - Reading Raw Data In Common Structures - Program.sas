*************	P	R	O	G	R	A	M		H	E	A	D	E	R	*****************
*****************************************************************************************
*																						*
*	PROGRAM:	1.1.4 - Reading Raw Data In Common Structures - Program.sas             *
*	PURPOSE:	Illustrate material in Section 1.1.4                                    *
*	AUTHOR:		Jud Blatchford															*
*	CREATED:	2016-08-04																*
*	                                                                                    *
*	COURSE:		BIOS 6680 - Data Management Using SAS                                   *
*	DATA USED:	TLSB.Shoes, Instream                                                    *
*	SOFTWARE:	SAS (r) Proprietary Software 9.4 (TS1M2)								*
*	MODIFIED:	DATE		BY	REASON													*
*				----------	---	-------------------------------------------------------	*
*				20YY-MM-DD	PJB															*
*	                                                                                    *
*****************************************************************************************
***********************************************************************************; RUN;



*	SUBSECTION 1.1.4.0 - COMMON SYNTAX   *; RUN;

*	INFILE statement identifies the physical location of the raw data file   *;
*	Options refer to properties of the data file   *;

*	INPUT statement describes the arrangement of values in the raw data file   *;
*	Specifications pertain to particular variables   *;
*	It is required to read in a raw data file   *;



*	SUBSECTION 1.1.4.1 - STRATEGY FOR IMPORTING RAW DATA FILES   *; RUN;

*	Determine how the data are structured in the raw data file:
	1)	Column-aligned
	2)	Delimited
	3)	Other				*;

*	Determine whether the variable's values are:
	1)	Standard data
	2)	Non-standard data	*;

*	Based on these 2 factors you will be able to determine the syntax to use to import the file!   *;

*	Regardless of the data structure and type of data, for SAS to read the data you must specify:
	1)	Variable name in which to store the values
	2)	Type of SAS variable
	3)	Location of the data value	*;



*	SUBSECTION 1.1.4.2 - COLUMN-ALIGNED DATA   *; RUN;

*	Illustration 1 - Using the INFILE statement to identify the physical location of the raw data file   *; RUN;
*	After this I will use instream data (instead of a raw text file) so that you can see the raw data to be imported.
	But realize this is what the DATA step would look like when you're reading in an external raw data file!   *;
DATA	WORK.Illus;
	INFILE	"C:\Dropbox\2 - Education\7 - Teaching\1 - SAS\BIOS 6680 - Data Management Using SAS\0 - Preliminaries\Source Data\Little SAS Book\Shoe.dat";
	INPUT	ShoeNm	$	1-15
			Type	$	17-23
			Price		25-30;
	RUN;

*	Illustration 2 - Reading standard data (a.k.a. "Column Input")   *; RUN;
*	Remember we need to specify
	1)	Variable name in which to store the values
	2)	Type of SAS variable
	3)	Location of the data value	*;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	Name	$	1-10
			Age			15-16;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Alexandria    38
Bob           51
;

*	Illustration 3 - Column-aligned data should ideally be precisely aligned   *; RUN;
*	At a minimum, make sure that:
	1)	The specified columns contain the same variable values
	2)	All columns containing the values are read for each variable   *;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	Name	$	1-10
			Age			14-16;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Alexandria    38
Bob          51
;


*	Consideration A - Determining How Values Are Separated   *; RUN;
*	Illustration A.1 - Column-aligned data don't require spaces   *; RUN;
*	Adjacent values may be read into different variables   *;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	SiteCd	$	1-2
			SubjID		3-5
			Age			6-7
			Sex		$	8
			State	$	9-10;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
0400129FCO
0500160FCA
0700155MGA
;

*	Illustration A.2 - Reading values multiple times (not possible with delimited data)   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	SiteCd	$	1-2
			SubjID		3-5
			USubjID	$	1-5	/* New variable */
			Age			6-7
			Sex		$	8
			State	$	9-10;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
0400129FCO
0500160FCA
0700155MGA
;

*	Illustration A.3 - Reading values in different order than in the raw data file   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	Sex		$	8
			SubjID		3-5
			State	$	9-10
			SiteCd	$	1-2
			Age			6-7	;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
0400129FCO
0500160FCA
0700155MGA
;


*	Consideration B - Variable Type   *; RUN;
*	Illustration B.1 - Forgetting to declare a variable as character   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	Name		1-10
			Age			15-16;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Alexandria    38
Bob           51
;

*	Illustration B.2 - Creating a character variable from numerals   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	Name	$	1-10
			Age		$	15-16;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Alexandria    38
Bob           51
;


*	Consideration C - Character Values with Embedded Spaces   *; RUN;
*	Illustration C.1 - Reading character variables with embedded spaces   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	Name	$	1-9
			Age			15-16;
	PUT	Name= ;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Al            38
Bobby Joe     51
C. J.         2
     Dina     29
;


*	Consideration D - Importing a Subset of Variables   *; RUN;
*	Illustration D.1 - Reading only columns with variables desired to be imported   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	SubjID		3-5
			Sex		$	8	;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
0400129FCO
0500160FCA
0700155MGA
;


*	Consideration E - Records Shorter than SAS Is Expecting   *; RUN;
*	Illustration E.1 - Values For an Observation "Spilling" to Another Record   *; RUN;
*	NA for column-aligned data!   *;

*	Illustration E.2 - Use of MISSOVER and TRUNCOVER options   *; RUN;
DATA	WORK.Illus;
	INFILE	"C:\Dropbox\2 - Education\7 - Teaching\1 - SAS\BIOS 6680 - Data Management Using SAS\0 - Preliminaries\Source Data\Little SAS Book\Chocolate.dat"
		TRUNCOVER; * Examine what happens without this option, and with MISSOVER *;
	INPUT	Code	$	1-4
			Name	$	6-14
			Descrip	$	16-59;
	RUN;

*	I'm not sure why this is read successfully   *;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	ID			1-2
			Address	$	5-32	;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
86  23 Elm St
87  12345 West Pennsylvania Blvd
88  456 Front St
;


*	Consideration F - Length of Character Variables   *; RUN;
*	Illustration F.1 - Character variable length is determined by the number of columns read   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	Name	$	1-10
			Sex		$	13
			BirthSt	$	17-18;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Alexandria  F   NY
Bob         M   CO
;

*	Consideration G - Missing Values   *; RUN;
*	Illustration G.1 - Columns containing no data will result in missing values   *; RUN;
*	Note:  An incomplete record will not cause SAS to load the next record into the Input Buffer!   *;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	Name	$	1-10
			Sex		$	13
			Age			17-18;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Alexandria  F
Bob             51
;

*	Illustration G.2 - Blank rows between 'DATALINES' and semicolon will result in blank observations   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	Name	$	1-10
			Sex		$	13
			Age			17-18;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;

Alexandria  F


Bob             51

;


*	Consideration H - Reading Non-Standard Data   *; RUN;
*	Illustration H.1 - Attempting to read non-standard data using Column Input   *; RUN;
*	This doesn't work.  We need to provide SAS with instructions to read non-standard values   *;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	Name	$	1-10
			Salary		15-21;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Alexandria    $38,000
Bob           $51,000
;

*	Illustration H.2 - Using Formatted Input to read in an earlier example   *;
*	Instead of specifying the columns to be read,
	1)	Get the pointer in the correct position (usually by specifying the starting column)
	2)	Provide SAS with instructions of how to read the values by specifying an informat.
		Part of the informat is the specification of how many columns to read 	*;
*	Remember, we still need to specify
	1)	Variable name in which to store the values
	2)	Type of SAS variable (this is specified in the informat!)
	3)	Location of the data value (this is provided using starting position & # of characters to read)	*;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	@1	Name	$10.
			@15	Age		2.;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Alexandria    38
Bob           51
;

*	Illustration H.3 - Using w.d informat with decimal values   *;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	@1	Item	$7.
			@13	Width	5.2
			@21	Height	6.3;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Mirror      21.75   16.875
Picture     3.25    5.5
;

*	Illustration H.4 - Reading values using Formatted Input with Absolute Pointer Control    *; RUN;
*	This provides the same flexibility to read in selected variables as with Column Input   *;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	@8	Sex		$1.
			@3	SubjID	3.
			@9	State	$2.
			@1	SiteCd	$2.
			@6	Age		2.	;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
0400129FCO
0500160FCA
0700155MGA
;

*	Illustration H.5 - Reading values using Formatted Input with Relative Pointer Control    *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT		Item	$7.
			+5	Width	5.2
			+3	Height	6.3;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Mirror      21.75   16.875
Picture     3.25    5.5
;

*	Illustration H.6 - Moving the pointer backwards when using Relative Pointer Control    *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	+7		Sex		$1.
			+(-6)	SubjID	3.
			+3		State	$2.
			+(-10)	SiteCd	$2.
			+3		Age		2.	;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
0400129FCO
0500160FCA
0700155MGA
;

*	Illustration H.7 - Reading non-standard data using Formatted Input   *; RUN;
*	To read non-standard data, you must also provide SAS with the instructions for reading the non-standard data.
	This is contained in the informat, which also contains the number columns to read	*;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	@1	Name		$10.
			@15	Salary		DOLLAR7.
			@25	DaysOnJob	COMMA5.;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Alexandria    $38,000   185
Bob           $51,000   1,288
;

*	Illustration H.8 - Reading dates (non-standard data)   *; RUN;
*	Note:  There are m-a-n-y ways to write dates, so many other informats are available!   *;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	@1	Name		$8.
			@9	BirthDt		MMDDYY10.
			@21	EnrollDt	DATE9.;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Al      10/11/2012  21JAN2015
Ben     4/5/2000    1FEB2015
Cali    6/7/00      03FEB2015
Dani    08091989    26MAR15
Ellie   080989      4APR16
Fred    10-11-12    07APR16
;

*	Illustration H.9 - Mixing input styles (using both Column and Formatted Input)   *; RUN;
*	Non-standard data must be read in using an informat   *;
*	Standard data may be read in using either column input or formatted input   *;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT		Name	$	1-10
			@13	Salary				DOLLAR7.
				Age			21-22;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Alexandria  $38,000 38
Bob         $51,000 51
;



*	SUBSECTION 1.1.4.3 - DELIMITED DATA   *; RUN;

*	Consideration A - Determining How Values Are Separated   *; RUN;
*	Illustration A.1 - Column and Formatted Input won't work   *; RUN;
*	Note:  I'm reading in all values as character to keep all columns   *;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT		Name	$	1-8
			@10	Salary				$7.
				Age		$	18-19;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Adrianna $38,000 38
Bob $51,000 51
;

*	Illustration A.2 - Using "List Input" for delimited data   *; RUN;
*	Remember we need to specify
	1)	Variable name in which to store the values
	2)	Type of SAS variable
	3)	Location of the data value	*;
*	When columns (XX-YY) or absolute column pointers (@XX) aren't used, SAS uses List Input, which assumes the data
	are delimited and that the delimiter is a space   *;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	Name	$
			Salary
			Age;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Adrianna 38000 38
Bob 51000 51
;

*	Illustration A.3 - Specifying the delimiter   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES	DELIMITER = ','; * Alias is 'DLM' *;
	INPUT	Name	$
			Salary
			Age;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Adrianna,38000,38
Bob,51000,51
;

*	Illustration A.4 - The delimiter can be any character   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES	DELIMITER = 'K';
	INPUT	Name	$
			Salary
			Age;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
AdriannaK38000K38
BobK51000K51
;

*	Illustration A.5 - It is possible to specify multiple charaters as potential delimiters   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES	DELIMITER = ':|';
	INPUT	Name	$
			Salary
			Age;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Adrianna|38000:38
Bob|51000:51
;

*	Illustration A.6 - Using the DLMSTR option to handle delimiters composed of multiple characters   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES	DLMSTR = '||';
	INPUT	Name	$
			Salary
			Age;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Adrianna||38000||38
Bob||51000||51
;


*	Consideration B - Variable Type   *; RUN;
*	No differences with column-aligned data   *;


*	Consideration C - Character Values with Embedded Spaces   *; RUN;
*	Illustration C.1 - Problems can arise when the delimiter is contained in a value   *; RUN;
*	This is typical when the delimiter is a space and character values contain embedded spaces   *;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	Name	$
			DeathYr	$; * DeathYr read as a character variable for illustration only *;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
van Gogh 1890
Picasso 1973
da Vinci 1519
;

*	Illustration C.2 - When expecting numerals, characters can cause errors   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	Name	$
			DeathYr	;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
van Gogh 1890
Picasso 1973
da Vinci 1519
;


*	Consideration D - Importing a Subset of Variables   *; RUN;
*	Illustration D.1 - All variables left of the right-most needed variable must be imported   *; RUN;
*	SubjID and Sex are the only variables desired, but all variables to the left of Sex must also be imported   *;
DATA	WORK.Illus;
	INFILE	DATALINES	DELIMITER = ',';
	INPUT	Name	$
			SiteID	$
			SubjID
			Age
			Sex		$	;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Adrianna,04,001,29,F,CO
Bob,05,001,60,F,CA
Chris,07,001,55,M,GA
;


*	Consideration E - Records Shorter than SAS Is Expecting   *; RUN;
*	Illustration E.1 - Values For an Observation "Spilling" to Another Record   *; RUN;
*	NB:  The INPUT statement will load another record into the Input Buffer to fill variables in the PDV   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	Name	$
			Sex		$
			State	$
			FavTeam	$	;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Al Male Ohio Reds
Brittany Female Colorado
Rockies
Charley Male Illinois
Cubs 
;


*	Consideration F - Length of Variables   *; RUN;
*	Illustration F.1 - The default length for character (and numeric!) variables is 8   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	Name		$
			Age
			Sex			$
			BirthSt		$
			NetWorth	;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Alexandria 38 F NY 123456789012
Bob 51 M CO 123456789.01
;

*	Illustration F.2 - Using the LENGTH statement to specify variable(s) length   *; RUN;
*	Note:  Understand how the PDV orders variables   *;
DATA	WORK.Illus;
	INFILE	DATALINES;
	LENGTH	Name		$ 10
			Sex			$ 1
			BirthSt		$ 2;
	INPUT	Name		$
			Age
			Sex			$
			BirthSt		$
			NetWorth	;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Alexandria 38 F NY 123456789012
Bob 51 M CO 123456789.01
;


*	Consideration G - Missing Values   *; RUN;
*	Illustration G.1 - Periods are used to designate missing values in List Input   *; RUN;
*	Note:  Using periods will help prevent SAS from loading the next record into the Input Buffer!   *;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	Name	$
			Sex		$
			Age		;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Allie F .
Bob . 51
;

*	Illustration G.2 - Not using periods can result in SAS loading the next record into the Input Buffer    *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	Name	$
			Sex		$
			Age		;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Allie F
Bob 51
;

*	Comprehension Check:  If periods (below) were removed, what would the data set WORK.Illus look like?   *; RUN;
*	Note:  Sometimes missing data is acceptable (e.g. below)   *;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	Name	$
			Sib1	$
			Sib2	$
			Sib3	$
			Sib4	$	;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Adam Bob Carla Don Ellie
Astrid . . . .
Antonia Bartolo Camila Diego .
Aki Bae . . .
Alina . . . .
Lian Mayar Umar Rayyan Danish
;

*	Illustration G.3 - An alternative is to ensure there is a space before each delimiter   *; RUN;
*	This is not often the case when receiving "real" data   *;
DATA	WORK.Illus;
	INFILE	DATALINES	DELIMITER = ',';
	INPUT	Name	$
			Sex		$
			Age		;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Allie,F,38
Bob,M,
Chris, ,19
Dina, ,
 ,F,44
 ,M,
 , ,30
;

*	Illustration G.4 - SAS by default treats consecutive delimiters as a single delimiter     *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	Name	$
			Sex		$
			Age		;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Allie             F      38
Bob   M                       51
;

DATA	WORK.Illus;
	INFILE	DATALINES	DELIMITER = ',';
	INPUT	Name	$
			Sex		$
			Age		;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Allie,,,,,,,,,,,,,F,,,,,,38
Bob,,,M,,,,,,,,,,,,,,,,,,,,,,,51
;

*	Illustration G.5 - Using the DSD option   *; RUN;
*	Often with delimited data, consecutive delimiters designate missing value(s)   *;
DATA	WORK.Illus;
	INFILE	DATALINES	DSD; * Note:  DSD assumes the delimiter is a comma *;
	INPUT	Name	$
			Sex		$
			Age		;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Allie,F,38
Bob,M,
Chris,,19
Dina,,
,F,44
,M,
,,30
;

*	Illustration G.6 - When the delimiter is not a comma, use of the DSD option requires the DLM= option   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES	DSD	DELIMITER = '*';
	INPUT	Name	$
			Sex		$
			Age		;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Allie*F*38
Bob*M*
Chris**19
Dina**
*F*44
*M*
**30
;

*	Illustration G.7 - Using ?? informat to suppress ERROR messages (helpful if errors are expected)   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	Name	$
			PayRate	??;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Allie 12.50
Bob NA
Chris 9.25
Dina n/a
;

*	Illustration G.8 - Blank rows between 'DATALINES' and semicolon will not result in blank observations   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	Name	$
			Sex		$
			Age		;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;

Allie F 38


Bob M 51

;

*	Illustration G.9 - Not enough data to fill the PDV will result in a LOST CARD note   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	Name	$
			Sex		$
			State	$
			FavTeam	$	;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Al Male Ohio Reds
Brittany Female Colorado
Rockies
Charley Male Illinois
;

*	Illustration G.10 - A possible solution to problem when delimiter is used in a value (Illustration C.1)   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES	DSD DLM = ' ';
	INPUT	Name	$
			DeathYr	;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
'van Gogh' 1890
Picasso 1973
"da Vinci" 1519
;


*	Consideration H - Reading Non-Standard Data   *; RUN;
*	Illustration H.1 - Informats are needed (just as with column-aligned data)   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	Name	$
			BirthDt	MMDDYY10.;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Allie 11/12/1980
Bob 6/7/67
;

*	Illustration H.2 - Non-Standard data of different lengths can cause problems   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	BirthDt	MMDDYY10.
			Name	$	;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
11/12/1980 Allie
6/7/67 Bob
;

*	Illustration H.3 - Not specifying the length in the informat can also cause problems   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	BirthDt	MMDDYY.
			Name	$	;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
11/12/1980 Allie
6/7/67 Bob
;
*	The problem is that the default length for the MMDDYY. informat is 6 characters   *; RUN;

*	NB:  There won't be an error message below, but the date is still incorrect   *;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	BirthDt	MMDDYY.
			Name	$	;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
11121980 Allie
6/7/67 Bob
;

*	Illustration H.4 - Using Modified List Input (Informats with the colon format modifier)   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	BirthDt	:MMDDYY10.
			Name	$	;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
11/12/1980 Allie
6/7/67 Bob
;

*	Illustration H.5 - The colon format modifier can be used also with standard data   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	BirthDt	:MMDDYY10.
			Name	:$10.	;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
11/12/1980 Alexandria
6/7/67 Bob
;

*	Illustration H.5 - Alternative solution to Illustration F.2   *; RUN;
*	Note:  The pointer starts reading the next variable right after the number specified by the informat are read.
	That is why we need to move the pointer forward 1 space before reading state   *;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	Name		:$10.
			Age
			Sex			$1.
		+1	BirthSt		$2.
			NetWorth	;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Alexandria 38 F NY 123456789012
Bob 51 M CO 123456789.01
;

*	Illustration H.6 - Applying the same informat to multiple variables   *; RUN;
*	Show why an informat width of 11 won't work   *;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	Name				:$10.
			(BirthDt EnrollDt)	(:MMDDYY10.)	;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Alexandria 11/12/1980 10/21/2015
Bob 6/7/67 2/1/15
;

*	Comprehension Check:  What additions to the INPUT statement are needed to correctly read the data?   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES	[insert option(s) here];
	INPUT	FirstNm	[insert informat here]
			LastNm	[insert informat here]
			HireDt	[insert informat here]
			Salary	[insert informat here]	;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
John|Smith|1SEP13|$40,800
Brittany|Huntington|20FEB1999|$108,250.75
;



*	SUBSECTION 1.1.4.4 - PROC IMPORT FOR DELIMITED DATA   *; RUN;

*	Illustration 1 - Using PROC IMPORT to import a delimited raw data file   *; RUN;
PROC IMPORT
		DATAFILE	= 'C:\Dropbox\2 - Education\7 - Teaching\1 - SAS\BIOS 6680 - Data Management Using SAS\0 - Preliminaries\Source Data\Orion Star Sports & Outdoors\managers.dat'
		OUT			= WORK.Mgrs
		REPLACE
		DBMS		= DLM;
	DELIMITER	= '/';
	GETNAMES	= NO; * NB:  Use this if the file doesn't have a header row (specify "YES" if it does)! *;
	RUN;

*	Illustration 2 - A raw file padded with extra spaces can lead to extra unnecessary variables   *; RUN;
PROC IMPORT
		DATAFILE	= 'C:\Dropbox\2 - Education\7 - Teaching\1 - SAS\BIOS 6680 - Data Management Using SAS\0 - Preliminaries\Source Data\Orion Star Sports & Outdoors\salary.dat'
		OUT			= WORK.Salary
		REPLACE
		DBMS		= DLM;
	GETNAMES	= NO;
	RUN;



*	SUBSECTION 1.1.4.5 - MIXING INPUT STYLES   *; RUN;

*	Illustration 1 - How to mix input styles   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT		FirstNm					:$10.		/* Modified List Input */
				MiddleNm	$						/* List Input */
				LastNm		$						/* List Input */
			@25	Address		$	25-46				/* Column Input */
			@49	City					$10.		/* Formatted Input */
			@61	StateCd		$						/* List Input */
			@65	ZipCd		$						/* List Input */
			@73	BirthDt					MMDDYY10.	/* Formatted Input */	;
* Ruler  1    1    2    2    3    3    4    4    5    5    6    6    7    7    8    8
1---5----0----5----0----5----0----5----0----5----0----5----0----5----0----5----0----5;
	DATALINES;
Alexandria A. Allison   11 N Main St            Anchorage   AK  99501   11/12/1980
Bob B. Bennett          12345 E Principal Pkwy  Birmingham  AL  35201   6/7/67
;

*	Illustration 2 - Extension: Create different variables for street number and address   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT		FirstNm					:$10.		/* Modified List Input */
				MiddleNm	$						/* List Input */
				LastNm		$						/* List Input */
			@25	StreetNum				:5.			/* Modified List Input */
				Address					$18.		/* Formatted Input */
			@49	City					$10.		/* Formatted Input */
			@61	StateCd		$						/* List Input */
			@65	ZipCd		$						/* List Input */
			@73	BirthDt					MMDDYY10.	/* Formatted Input */	;
* Ruler  1    1    2    2    3    3    4    4    5    5    6    6    7    7    8    8
1---5----0----5----0----5----0----5----0----5----0----5----0----5----0----5----0----5;
	DATALINES;
Alexandria A. Allison   11 N Main St            Anchorage   AK  99501   11/12/1980
Bob B. Bennett          12345 E Principal Pkwy  Birmingham  AL  35201   6/7/67
;


*	SUBSECTION 1.1.4.6 - USING THE IMPORT WIZARD   *; RUN;

*	No code for this subsection   *;



;	*';	*";	*/;	QUIT;	RUN;
*	End of Program   *; RUN;

