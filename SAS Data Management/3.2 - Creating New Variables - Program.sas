*************	P	R	O	G	R	A	M		H	E	A	D	E	R	*****************
*****************************************************************************************
*																						*
*	PROGRAM:	1.2.2 - Creating New Variables - Program.sas                            *
*	PURPOSE:	Illustrate material in Section 1.2.2                                    *
*	AUTHOR:		Jud Blatchford															*
*	CREATED:	2016-09-20																*
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



*	SECTION 1.2.2.0 - VARIABLE BASICS   *; RUN;

*	Variables are created using "assignment statements" in the form:
	Variable = expression;



*	SECTION 1.2.2.1 - CREATING CONSTANTS   *; RUN;

*	Illustration 1 - Character Constants   *; RUN;
*	SAS will create a character variable upon reading a quoted string   *;
*	Recall that anything may be contained within the quoted string   *;
DATA	WORK.Illus;
	FirstNm		= 'Ed';
	FullNm		= 'Allison Amy Anderson'; * More than 8 characters *;
	Profit		= '-7500'; * Character value composed of numeric digits *;
	Statement	= 'RUN;'; * Contains semicolon *;
	Quote		= '"I love SAS!"'; * Contains quotation marks *;
	RestaurantNm	= "Al's Eatery"; * Contains apostraphe *;
	RUN;

*	Illustration 2 - Numeric constants   *; RUN;
*	The expression must simply be a valid numeric value as defined by SAS   *;
DATA	WORK.Illus;
	Year		= 2016; * Natural number *;
	Profit		= -7500; * Negative number *;
	HourlyPay	= 9.25; * Decimal *;
	MilesToSun	= 9.3E7; * Scientific Notation *;
	RUN;

*	Illustration 3 - Numeric constants in non-standard form    *; RUN;
*	Remember SAS needs instructions to correctly interpret non-standard data!   *;
DATA	WORK.Illus;
	Savings		= INPUT('$525', DOLLAR4.);
	MilesToMoon	= INPUT('238,900', COMMA7.);
	RUN;

*	Illustration 4 - Numeric constants based on evaluating an expression   *; RUN;
DATA	WORK.Illus;
	Year	= 2000 + 16;
	Expr1	= 10 + 2 * 4; * SAS will evaluate using the Order of Operations *;
	Expr2	= (10 + 2) * 4; * Use parentheses to control the evaluation *; 
	RUN;

*	Illustration 5 - Date Constants   *; RUN;
DATA	WORK.Illus;
	USIndepDay	= INPUT('07/04/1776', MMDDYY10.); * Using an informat *;
	CANIndepDay	= '01JUL1867'D; * Using a SAS date constant *;
	FORMAT	USIndepDay CANIndepDay	WORDDATE32.;
	RUN;

*	Illustration 6 - DateTime Constants   *; RUN;
*	Note:  DateTime values are number of seconds since 12:00:00 AM on Janurary 1, 1960 *;
DATA	WORK.Illus;
	DaughterBirth	= INPUT('01JAN1960:00:01:30', DATETIME18.); * Using an informat *;
	SonBirth		= '01FEB2003:15:56'DT;
	FORMAT	SonBirth	DATEAMPM22.; * Show also using the COMMA13. format *;
	RUN;

*	Illustration 7 - Constants will be applied to every observation in a processed data set   *; RUN;
DATA	WORK.Illus;
	* Placing new variables before the SET statement simply places them first in the PDV *;
	Teacher	= 'Mrs. Collins';
	Year = 2004;
	SET	SASHelp.Class;
	RUN;

*	Illustration 8 - Overwriting a variable   *; RUN;
*	Recall: ElecYr and President will only appear once in the PDV!   *;
DATA	WORK.Illus;
	ElecYr	= 1976;	President	= 'Jimmy Carter';
	ElecYr	= 1980;	President	= 'Ronald Reagan';
	ElecYr	= 1988;	President	= 'George H. W. Bush';
	RUN;
*	If the goal is to create 3 observations, you'll learn about OUTPUT statements in Section 1.2.4!   *;



*	SECTION 1.2.2.2 - CREATING VARIABLES BASED ON OTHER VARIABLES   *; RUN;

*	Illustration 1 - Copying a Variable    *; RUN;
DATA	WORK.Illus;
	SET	SASHelp.Class;
	Gender	= Sex; * Creates a new character variable *;
	AgeYrs	= Age; * Creates a new numeric variable *;
	RUN;
*	Note:  If the goal is the change the name, the RENAME data set option is more efficient!   *;

*	Illustration 2 - Numeric calculations involving other variables    *; RUN;
DATA	WORK.Illus;
	SET	SASHelp.Class;

	AgeMons	= Age * 12;
	AgeSq	= Age ** 2; * Example of exponentiation *;

	BMI		= (Weight * 0.45) / (Height * 0.025)**2; * Using multiple variables *;
	FORMAT	BMI	4.1;

	RUN;

*	Illustration 3 - If any value is missing the result of the calculation will be missing    *; RUN;
*	A "Missing values" note will be generated and shown in the log   *;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	Name	$
			Quiz1	Quiz2	Quiz3;
	TotalPoints	= Quiz1 + Quiz2 + Quiz3;
	DATALINES;
Amy 3 4 5
Bob 5 2 .
;
*	Note:  Some functions will help with this (Section 1.2.3!)   *;

*	Illustration 4 - Calculations involving dates    *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	@1	SubjID		2.
			@4	BLVisitDt	MMDDYY10.;

	Wk1VisitDt = BLVisitDt + 7;
	Wk2VisitDt = BLVisitDt + 14;
	Wk3VisitDt = BLVisitDt + 21;

	FORMAT	BLVisitDt Wk1VisitDt Wk2VisitDt Wk3VisitDt	WEEKDATE29.;

	DATALINES;
25 1/18/2012
27 2/7/2012
;

*	Illustration 5 - Concatenating text strings    *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	@1	FirstNm		$20.
			@21	MiddleInit	$10.
			@31	LastNm		$20.	;

	FullNm1	= FirstNm	||	MiddleInit	||	LastNm; * || Operator concatenates text strings *;
	FullNm2	= LastNm || ', ' || FirstNm || MiddleInit || '.'; * Text strings can be concatenated as well *;
	Name	= FirstNm !! LastNm; * Exclamation points may also be used for concatenation *;
* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Amy                 A         Albertson
Benjamin            B         Brock
;
*	We'll learn how to improve the presentation using functions (Section 1.2.3)   *; RUN;



*	SECTION 1.2.2.3 - CREATING VARIABLES USING CONDITIONAL LOGIC   *; RUN;

*	Illustration 1 - Using IF/THEN statements   *; RUN;
*	Goal:  Create a variable 'AgeGrp' with values based on the value of Age   *;
*	Note:  SAS will process each line of code for each observation   *;
DATA	WORK.Illus;
	SET	SASHelp.Class;

	IF	Age = 11	OR	Age = 12	THEN	AgeGrp	= 1;
	IF	Age = 13	OR	Age = 14	THEN	AgeGrp	= 2;
	IF	Age = 15	OR	Age = 16	THEN	AgeGrp	= 3;

	RUN;

*	Illustration 2 - Using IF/THEN/ELSE statements   *; RUN;
*	SAS will not execute any following "ELSE IF" statements once it finds a true expression   *;
DATA	WORK.Illus;
	SET	SASHelp.Class;

	IF			Age = 11	OR	Age = 12	THEN	AgeGrp	= 1;
		ELSE IF	Age = 13	OR	Age = 14	THEN	AgeGrp	= 2;
		ELSE IF	Age = 15	OR	Age = 16	THEN	AgeGrp	= 3;

	RUN;

*	Illustration 3 - Using the IN operator   *; RUN;
*	SAS will not execute any following "ELSE IF" statements once it finds a true expression   *;
DATA	WORK.Illus;
	SET	SASHelp.Class;

	IF			Age IN(11, 12)	THEN	AgeGrp	= 1;
		ELSE IF	Age IN(13, 14)	THEN	AgeGrp	= 2;
		ELSE IF	Age IN(15, 16)	THEN	AgeGrp	= 3;

	RUN;

*	Illustration 4 - The most efficient processing would order the categories by decreasing frequency   *; RUN;
*	More relevant for large data sets with imbalanced groups   *;
DATA	WORK.Illus;
	SET	SASHelp.Class;

	IF			Age IN(13, 14)	THEN	AgeGrp	= 2;
		ELSE IF	Age IN(15, 16)	THEN	AgeGrp	= 3;
		ELSE IF	Age IN(11, 12)	THEN	AgeGrp	= 1;

	RUN;

*	Illustration 5 - Grouping statements by using DO groups   *; RUN;
*	DO groups can execute multiple statements based on a single condition   *;
*	This is more efficient than processing 'Age' with 2 sets of IF/THEN statements   *;
DATA	WORK.Illus;
	SET	SASHelp.Class;

	IF			Age IN(11, 12)	THEN DO;
				AgeGrp		= 1;
				Counselor	= 'Amy Anderson';
			END;
		ELSE IF	Age IN(13, 14)	THEN DO;
				AgeGrp		= 2;
				Counselor	= 'Bob Bennett';
			END;
		ELSE IF	Age IN(15, 16)	THEN DO;
				AgeGrp		= 3;
				Counselor	= 'Chris Cander';
			END;

	RUN;

*	Illustration 6 - Using SELECT/WHEN statements   *; RUN;
DATA	WORK.Illus;
	SET	SASHelp.Class;

	SELECT	(Age);
		WHEN	(11, 12)	AgeGrp	= 1;
		WHEN	(13, 14)	AgeGrp	= 2;
		WHEN	(15, 16)	AgeGrp	= 3;
	END;

	RUN;

DATA	WORK.Illus; * Another example *;
	SET	SASHelp.Bweight;

	SELECT	(CigsPerDay);
		WHEN	(0)	SmokStatus	= 'Non-Smoker';
		OTHERWISE	SmokStatus	= 'Smoker';
	END;

	RUN;

*	Illustration 7 - Evaluating inequalities must be done with IF/THEN/ELSE statements   *; RUN;
*	SELECT/WHEN statements wouldn't work for this situation   *;
*	Note:  Missing values are ordered as less than negative numbers, so would be included in the first group   *;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	CarID
			MPG;
	LENGTH	Efficiency	$ 6;

	IF			MPG	< 20	THEN	Efficiency	= 'Low';
		ELSE IF	MPG	< 30	THEN	Efficiency	= 'Medium';
		ELSE 						Efficiency	= 'High';

	DATALINES;
1 14
2 21
3 24
4 28
5 .
6 32
7 40
;

*	Illustration 8 - Include a group to accomodate missing values   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	CarID
			MPG;
	LENGTH	Efficiency	$ 6;

	IF			MPG	= .		THEN	Efficiency	= '';
		ELSE IF	MPG	< 20	THEN	Efficiency	= 'Low';
		ELSE IF	MPG	< 30	THEN	Efficiency	= 'Medium';
		ELSE 						Efficiency	= 'High';

	DATALINES;
1 14
2 21
3 24
4 28
5 .
6 32
7 40
;

*	Illustration 9 - Creating an indicator (a.k.a. "Dummy") variables  *; RUN;
DATA	WORK.Illus;
	SET	SASHelp.Bweight;

	SmokerInd	= (	CigsPerDay > 0	);

	* The above statement is equivalent to: *;
/*	IF	CigsPerDay	= 0	THEN	SmokerInd	= 0;*/
/*		ELSE					SmokerInd	= 1;*/

	RUN;

*	Illustration 10 - Creating multiple indicator variables   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	SubjID
			Race	$	4-19;

	WhiteInd	= (Race = "White");
	BlackInd	= (Race = "Black");
	AsianInd	= (Race = "Asian");
	OtherInd	= (Race ~IN("White", "Black", "Asian"));

	DATALINES;
1  Asian
2  Black
3  White
4  Asian
5  Pacific Islander
6  Black
7  Asian
8  American Indian
9  Multiple Races
10 White
;

 * This produces the same results in a much more lengthy manner *;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	SubjID
			Race	$	4-19;

	IF			Race	= "White"	THEN DO;
				WhiteInd	= 1;
				BlackInd	= 0;
				AsianInd	= 0;
				OtherInd	= 0;
			END;
		ELSE IF	Race	= "Black"	THEN DO;
				WhiteInd	= 0;
				BlackInd	= 1;
				AsianInd	= 0;
				OtherInd	= 0;
			END;
		ELSE IF	Race	= "Asian"	THEN DO;
				WhiteInd	= 0;
				BlackInd	= 0;
				AsianInd	= 1;
				OtherInd	= 0;
			END;
		ELSE IF	Race	~IN("White", "Black", "Asian")	THEN DO;
				WhiteInd	= 0;
				BlackInd	= 0;
				AsianInd	= 0;
				OtherInd	= 1;
			END;

	DATALINES;
1  Asian
2  Black
3  White
4  Asian
5  Pacific Islander
6  Black
7  Asian
8  American Indian
9  Multiple Races
10 White
;

*	Illustration 11 - Creating indicator variables with missing values   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	CarID
			MPG;

	HighEffInd1	= (MPG >= 30); * HighEffInd1 doesn't account for missing values *;

	IF	MPG = .	THEN	HighEffInd2	= .; * HighEffInd2 accounts for missing values *;
		ELSE			HighEffInd2	= (MPG >= 30);

	DATALINES;
1 14
2 21
3 24
4 28
5 .
6 32
7 40
;
RUN;



*	SECTION 1.2.2.4 - CREATING ACCUMULATING VARIABLES   *; RUN;
*	Accumulating variables accumulate the value of another variable (creating a cumulative total)
	To do so, the variable needs to keep (i.e. RETAIN) it's value across iterations of the DATA step

*	Illustration 1 - Showing the RETAIN statement   *; RUN;
*	The RETAIN statement instructs SAS to retain the value of the variable specified instead of re-initializing it to 0   *;
*	An initial value may be specified for the variable   *;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	StudentNm	$
			Age	;
	RETAIN	Teacher	"Mrs. Ellis"
			Year 2008;
	DATALINES;
Annie 10
Bruce 9
Carly 10
Darin 10
;

*	Illustration 2 - Using the RETAIN statement   *; RUN;
*	Goal:  Calculate the player's batting average based on all available data at the time of each game   *;
DATA	WORK.Illus;
	INFILE	DATALINES;
	RETAIN	Player	"Yogi";

	INPUT	Game	$
			AB
			H		;
	RETAIN	CumulAB CumulH 0;

	CumulH	= H + CumulH;
	CumulAB = AB + CumulAB;
	CurrentAVG	= CumulH / CumulAB;
	FORMAT	CurrentAVG	5.3;

	DATALINES;
1 4 0
2 3 2
3 3 1
4 2 0
5 4 3
6 3 0
;

*	Illustration 3 - Using SUM statements   *; RUN;
*	Format for SUM statements:  AccumulatingVariable + OriginalVariable;
*	By default, an accumulating variable used in a SUM statement:
	1)	Is RETAINed across iterations of the data step
	2)	Is set with an initial value of 0
	3)	Will retain it's value even when the original variable has a missing value	*;
DATA	WORK.Illus;
	INFILE	DATALINES;
	RETAIN	Player	"Yogi";
	INPUT	Game	$
			AB
			H		;

	CumulH + H;
	CumulAB + AB;
	CurrentAVG	= CumulH / CumulAB;
	FORMAT	CurrentAVG	5.3;

	DATALINES;
1 4 0
2 3 2
3 3 1
4 2 0
5 4 3
6 3 0
;

*	Illustration 4 - Comparing RETAIN and SUM results with missing data    *; RUN;
*	Assume the player did not play the 3rd game   *;
DATA	WORK.Illus;
	INFILE	DATALINES;
	RETAIN	Player	"Yogi";
	INPUT	Game	$
			AB
			H		;
	RETAIN	CumulAB CumulH 0;

	CumulH	= H + CumulH;
	CumulAB = AB + CumulAB;
	CurrentAVG	= CumulH / CumulAB;
	FORMAT	CurrentAVG	5.3;

	DATALINES;
1 4 0
2 3 2
3 . .
4 2 0
5 4 3
6 3 0
;

DATA	WORK.Illus;
	INFILE	DATALINES;
	RETAIN	Player	"Yogi";
	INPUT	Game	$
			AB
			H		;

	CumulH + H;
	CumulAB + AB;
	CurrentAVG	= CumulH / CumulAB;
	FORMAT	CurrentAVG	5.3;

	DATALINES;
1 4 0
2 3 2
3 . .
4 2 0
5 4 3
6 3 0
;

*	Illustration 5 - Using RETAIN is more efficient than writing a constant expression   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	Game	$
			AB
			H		;

	* Compare the processing of the 2 methods *;
	RETAIN	Player	"Yogi"; * Method 1 *;

	Manager	= "Casey"; * Method 2 *;

	DATALINES;
1 4 0
2 3 2
3 . .
4 2 0
5 4 3
6 3 0
;

*	Illustration 6 - Using RETAIN to order variables   *; RUN;
*	Goal:  From illustration 5, change the order so that Player appears first   *;
DATA	WORK.Illus;
	RETAIN	Player;
	SET	WORK.Illus;
	RUN;
*	Note:  No values are altered (e.g. missing values are not filled in)   *;



*	SECTION 1.2.2.5 - CREATING FIRST. AND LAST. AUTOMATIC VARIABLES   *; RUN;

*	Illustration 1 - Using the BY statement to create FIRST. and LAST. automatic variables   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	TxGrp	$	1-7
			SubjID
			Outcome	;
	DATALINES;
Drug A  101 27
Drug A  102 30
Drug A  103 22
Drug A  104 31
Placebo 201 15
Placebo 202 20
Placebo 203 16
Placebo 204 23
;

*	FIRST.TxGrp and LAST.TxGrp are shown in the log   *;
DATA	WORK.Illus;
	SET	WORK.Illus;
	BY	TxGrp;
	PUT	_ALL_;
	RUN;

*	Illustration 2 - Creating sums by treatment group   *; RUN;
DATA	WORK.GrpSummary;
	SET	WORK.Illus;
	BY	TxGrp;

	IF	FIRST.TxGrp	= 1	THEN DO;
			SubjCnt		= 0;
			OutcomeTot	= 0;
		END;

	SubjCnt + 1;
	OutcomeTot + Outcome;
	MeanOutcome	= OutcomeTot / SubjCnt;
	FORMAT	MeanOutcome 4.1;

	IF	LAST.TxGrp	= 1;

	RUN;

*	Illustration 3 - Multiple FIRST. and LAST. automatic variables   *; RUN;
DATA	WORK.Illus; * Creating example data *;
	INFILE	DATALINES;
	INPUT	TxGrp	$	1-7
			SexCd	$
			SubjID
			Outcome	;
	DATALINES;
Drug A  F 101 27
Drug A  F 102 30
Drug A  M 103 22
Drug A  M 104 31
Placebo F 201 15
Placebo M 202 20
Placebo M 203 16
Placebo M 204 23
;

*	FIRST. and LAST. variables are shown in the log   *;
*	Note:  Variables created are determined by the BY statement!   *;
*	Note:  Variables must be ordered as listed in the BY statement   *;
DATA	WORK.Illus;
	SET	WORK.Illus;
	BY	TxGrp SexCd;
	PUT	_ALL_;
	RUN;



*	SECTION 1.2.2.6 - SHORTCUTS FOR LISTS OF VARIABLES   *; RUN;

*	Illustration 1 - Using numbered range lists   *; RUN;
*	Numbered ranges may be used for variables which start with the same prefix and end with consecutive numbers   *;
*	Use a single dash to invoke the shortcut   *;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	SubjID
			Wk1 - Wk10; * This is a shortcut for Wk1 Wk2 Wk3 Wk4 Wk5 Wk6 Wk7 Wk8 Wk9 Wk10 *;
	DATALINES;
101 5 5 4 5 3 2 5 4 4 5
102 3 . 5 4 3 5 4 5 5 5
;

PROC PRINT DATA = WORK.Illus;
	VAR	SubjID Wk2 - Wk8; * A subset may be specified - consecutive values will be displayed *;
	RUN;

*	Illustration 2 - Using name range lists   *; RUN;
*	Name ranges use the order of the variables in the data set   *;
*	Use 2 consecutive dashes to invoke the shortcut   *;
PROC PRINT DATA = SASHelp.Cars;
	VAR	Type -- Invoice;
	RUN;

*	Name ranges may be restricted to only the numeric variables in the range   *;
*	Insert the word 'NUMERIC' between the consecutive dashes to invoke the numeric name range list   *;
PROC PRINT DATA = SASHelp.Cars;
	VAR	Type -NUMERIC- Invoice;
	RUN;

*	Name ranges may be restricted to only the character variables in the range   *;
*	Insert the word 'CHARACTER' between the consecutive dashes to invoke the character name range list   *;
PROC PRINT DATA = SASHelp.Cars;
	VAR	Type -CHARACTER- Invoice;
	RUN;

*	Illustration 3 - Using name prefix lists   *; RUN;
*	Name prefix lists involve all variables starting with the same prefix   *;
*	Use the prefix followed by a colon to invoke the shortcut   *;
PROC PRINT DATA = WORK.Illus;
	VAR	Wk:; * This will print all variables starting with the prefix 'Wk' *;
	RUN;

PROC PRINT DATA = SASHelp.Cars;
	VAR	M:; * This prints all variables starting with the letter 'M' *;
	RUN;

*	Illustration 4 - Using SAS keyword lists    *; RUN;
*	SAS keywords available are:  _NUMERIC_, _CHARACTER_, and _ALL_, where:
	1)	_NUMERIC_ processes all numeric variables in the data set
	2)	_CHARACTER_ processes all character variables in the data set
	3)	_ALL_ processes all variables in the data set		*;
PROC FREQ	DATA = SASHelp.Cars;
	TABLES	_CHARACTER_;
	RUN;

PROC PRINT	DATA = SASHelp.Cars;
	VAR	_NUMERIC_;
	RUN;



;	*';	*";	*/;	QUIT;	RUN;
*	End of Program   *; RUN;

