*************	P	R	O	G	R	A	M		H	E	A	D	E	R	*****************
*****************************************************************************************
*																						*
*	PROGRAM:	1.2.3 - SAS Functions - Program.sas                                     *
*	PURPOSE:	Illustrate material in Section 1.2.3                                    *
*	AUTHOR:		Jud Blatchford															*
*	CREATED:	2016-09-21																*
*	                                                                                    *
*	COURSE:		BIOS 6680 - Data Management Using SAS                                   *
*	DATA USED:	[Enter data set name(s)]                                                *
*	SOFTWARE:	SAS (r) Proprietary Software 9.4 (TS1M2)								*
*	MODIFIED:	DATE		BY	REASON													*
*				----------	---	-------------------------------------------------------	*
*				20YY-MM-DD	PJB															*
*	                                                                                    *
*****************************************************************************************
***********************************************************************************; RUN;



*	SECTION 1.2.3.1 - USING SAS FUNCTIONS   *; RUN;

*	Illustration 1 - Syntax of SAS Functions   *; RUN;
*	The typical syntax is:
	TargetVbl	= FCN(argument1, argument2, ...);

*	Functions always return a value!   *;

*	Functions may be used in DATA step statements anywhere you can use an expression.
		They may also be used in WHERE expression (coming in a later chapter).		*;

*	Illustration 2 - Function arguments may be any combination of constants, variables, or an expression   *; RUN;
DATA	WORK.Illus;
	Total	= SUM(7, 2); * Arguments are 2 constants *;
	RUN;

*	Illustration 2 - Functions apply to a single observation, but not across several observations   *; RUN;
DATA	WORK.Fruit;
	INFILE	DATALINES;
	INPUT	Name	$
			Apples
			Bananas
			Cherries	;
	DATALINES;
Amy 2 5 40
Bob 8 3 70
;

DATA	WORK.Illus;
	SET	WORK.Fruit;

	* TargetVbl	= FCN(argument(s)) *;
	TotalFruit	= SUM(Apples, Bananas, Cherries); * Arguments are variables *;

	RUN;

*	Recall:  Other tools are available to process across several observations.  For example, we could generate the sum by:   *;
*	Method 1:  Use a SUM statement   *;
DATA	WORK.Illus;
	SET	WORK.Fruit;

	TotalApples + Apples;
	TotalBananas + Bananas;
	TotalCherries + Cherries;

	RUN;

*	Method 2:  Use PROC MEANS   *;
PROC MEANS
		DATA	= WORK.Fruit
		SUM
		MAXDEC	= 0;
	VAR	Apples Bananas Cherries;
	RUN;

*	Illustration 3 - Functions may be nested, and may be used as part of an expression   *; RUN;
DATA	WORK.Scores; * Simply creating data for the illustration *;
	INFILE	DATALINES;
	INPUT	Name	$
			Quiz1 - Quiz3
			Exam1 Exam2;
	DATALINES;
Amy 4 5 3 80 100
Bob 5 5 4 90 80
;

*	The MEAN function is nested within the SUM function   *;
*	The MEAN function is part of an expression   *;
*	Be sure to match parentheses (Ctl + [ or ] moves cursor to matching parentheses!)   *;
*	Goal:  Calculate the overall grade, when weighting exams as 70% and quizzes as 30% of the grade   *;
DATA	WORK.Illus;
	SET	WORK.Scores;

	Grade	= SUM(MEAN(Quiz1, Quiz2, Quiz3)/5 * 30, MEAN(Exam1, Exam2)/100 * 70);

	RUN;

*	Illustration 4 - The keyword "OF" is required before using a numbered range shortcut for a list of numeric variables   *; RUN;
DATA	WORK.Illus;
	SET	WORK.Scores;

	Grade1	= SUM(MEAN(Quiz1, Quiz2, Quiz3)/5 * 30, MEAN(Exam1, Exam2)/100 * 70); * Correct, but can be cumbersome with a long list *;
	Grade2	= SUM(MEAN(Quiz1 - Quiz3)/5 * 30, MEAN(Exam1, Exam2)/100 * 70); * Incorrect *;
	Grade3	= SUM(MEAN(OF Quiz1 - Quiz3)/5 * 30, MEAN(Exam1, Exam2)/100 * 70); * Correct, and efficient *;

	RUN;

*	Illustration 5 - Some functions don't require argument(s)   *; RUN;
*	Note:  Every function still needs parentheses   *;
DATA	WORK.Illus;
	ThisDt		= TODAY; * This won't produce desired results *;
	CurrentDt	= TODAY();
	Tomorrow	= TODAY() + 1;
	RUN;

PROC PRINT	DATA = WORK.Illus;
	FORMAT	CurrentDt Tomorrow	WORDDATE32.;
	RUN;



*	SECTION 1.2.3.2 - NUMERIC FUNCTIONS   *; RUN;

*	Illustration 1 - Numeric functions typically ignore missing values   *; RUN;
DATA	WORK.Scores; * Creating data for the illustration *;
	INFILE	DATALINES;
	INPUT	Name	$
			Quiz1 - Quiz3
			Exam1 Exam2;
	DATALINES;
Amy 4 5 . 80 100
Bob 5 5 4 90 80
;

DATA	WORK.Illus;
	SET	WORK.Scores;

	QuizTotal1	= Quiz1 + Quiz2 + Quiz3;
	QuizTotal2	= SUM(OF Quiz1 - Quiz3);

	PUTLOG	_ALL_;

	RUN;

*	Illustration 2 - Some useful mathematical functions   *; RUN;
DATA	WORK.Illus;
	
	Ln			= LOG(2.72);
	Log10		= LOG10(100);
	Expon		= EXP(2);
	Minimum		= MIN(2, 4, 8);
	Maximum		= MAX(2, 4, 8);
	InputCnt	= N(2, 4, 8);
	InputCnt2	= N(2, 4, 8, .); * Note: N returns the number of non-missing arguments *;
	MissCnt		= NMISS(70, ., 90, 80, ., 100); * Intended for only numeric arguments *;
	AnyMiss		= CMISS(70, ., 90, 80, ., 100, 'Amy', ' ', 'Chris'); * For numeric or character arguments *;

	RUN;

*	Illustration 3 - Truncation functions   *; RUN;
DATA	WORK.Illus;

	Integer1	= INT(-6.75); * Returns the integer portion *;
	Integer2	= INT(4.29);

	*	Note:  Storing rounded numbers will lose their precision
				It is often a better approach to leave them and apply a format to them   *;
	Round1		= ROUND(68.5); * Default round-off unit is 1 *;
	Round2		= ROUND(127, 30); * Rounds to the nearest 30 *;
	Round3		= ROUND(55.71, 0.2); * Rounds to the nearest 0.2 *;

	Floor1		= FLOOR(-7.1);
	Floor2		= FLOOR(3.999);

	Ceiling1	= CEIL(-2.74);
	Ceiling2	= CEIL(8.00001);

	RUN;

*	Illustration 4 - Truncated values have lost precision   *; RUN;
PROC PRINT	DATA = WORK.Illus;
	FORMAT	_ALL_ 7.3;
	RUN;

*	Compare truncated values with formatting values   *;
DATA	WORK.Illus;
	Value	= -8.349;
	RUN;

PROC PRINT DATA = WORK.Illus;
	FORMAT	Value	2.; * The value may be displayed as an integer portion *;
	RUN;

PROC PRINT	DATA = WORK.Illus; * The value still retains its precision *;
	RUN;



*	SECTION 1.2.3.3 - DATE FUNCTIONS   *; RUN;

*	Illustration 1 - Some useful date functions   *;
DATA	WORK.Illus;
	
	*	Although arguments can be constants, they are typically variables for these functions   *;
	Today		= TODAY(); * Alias is DATE().  This result will be the argument for the following date functions *;
	Month		= MONTH(Today);
	Day			= DAY(Today);
	Year		= YEAR(Today);
	Qtr			= QTR(Today);
	Week		= WEEK(Today, 'U'); * U: Wk starts on Sunday, values can be 0 to 53 *;
	Weekday		= WEEKDAY(Today); * 1 = Sunday, 2 = Monday, etc. *;
	JulianDt	= JULDATE(Today);

	FORMAT	Today	MMDDYY10.;

	RUN;

*	Illustration 2 - Some useful datetime functions   *;
DATA	WORK.Illus;

	*	Although arguments can be constants, they are typically variables for these functions   *;
	DateTime	= DATETIME(); * This result will be the argument for the following datetime functions *;
	Date		= DATEPART(DateTime);
	Time		= TIMEPART(DateTime);
	Hour		= HOUR(DateTime);
	Minute		= MINUTE(DateTime);
	Second		= SECOND(DateTime);
	TimeNow		= TIME(); * No argument is needed because SAS uses the system clock *;

	FORMAT	DateTime	DATETIME20.
			Date		MMDDYY10.
			Time		TIME.
			TimeNow		HHMM5.;

	RUN;

*	Illustration 3 - Additional useful date functions   *;
DATA	WORK.Illus;

	*	Constants and variables are both commonly used as arguments for these functions   *;
	YrQtr			= YYQ(2012, 4);
	CreateDt		= MDY(12, 24, 1960); * Using constants *;
	CreateDtTm		= DHMS('01JAN1960'D, 0, 1, 35);
	Time2			= HMS(0, 1, 37);
	Holiday			= HOLIDAY('LABOR', 2016);
	LastSatInSep2016= NWKDOM(5, 7, 9, 2016); * 5 = Last, 7 = Saturday, 9 = September *;

	*	Note:  Many different intervals may be used (e.g. YEAR, MONTH, WEEK, etc.)   *;
	FiveYrsInFuture	= INTNX('YEAR', TODAY(), 5, 'MIDDLE'); * Other alignments are 'BEGINNING', 'END', and 'SAME' *;
	MonsBw_Disc		= INTCK('MONTH', '30APR2016'D, '20JUN2016'D, 'DISCRETE'); * Counts how many month "boundaries" were crossed *;
	MonsBw_Cont		= INTCK('MONTH', '30APR2016'D, '20JUN2016'D, 'CONTINUOUS'); * Counts how many "full" months have elapsed *;
	YrsBw			= YRDIF('30APR2016'D, '20JUN2016'D, 'AGE');

	FORMAT	YrQtr CreateDt Holiday LastSatInSep2016 FiveYrsInFuture	MMDDYY10.
			YrsBw	4.2;

	RUN;

*	Illustration 4 - Additional examples   *;
DATA	WORK.Illus;

	* Finds the day of the week for Christmas in 2003 *;
	WkDayOfChristmas2003	= WEEKDAY(HOLIDAY('CHRISTMAS', 2003));

	* Election day is the Tuesday after the first Monday in November *;
	ElectionDt1972	= NWKDOM(1, 2, 11, 1972) + 1;

	FORMAT	ElectionDt1972	WEEKDATE35.;

	RUN;



*	SECTION 1.2.3.4 - CHARACTER FUNCTIONS   *; RUN;

*	Illustration 1 - Functions that change case of characters   *; RUN;
DATA	WORK.Illus;
	
	UpperCase		= UPCASE('u.s.a.');
	LowerCase		= LOWCASE('ACETAMINOPHEN');
	ProperCase		= PROPCASE('mR. george WASHINGTON');

	RUN;

*	Illustration 2 - Functions that remove blanks from text strings   *; RUN;
DATA	WORK.Illus;

	* 13 characters *;
	LeftAligned		= LEFT(' Phoenix, AZ '); * Shifts first non-blank character to first position *;
	RightAligned	= RIGHT(' Phoenix, AZ ');
	Trimmed			= TRIM(' Phoenix, AZ '); * Removes trailing blanks *;
	Stripped		= STRIP(' Phoenix, AZ '); * Removes leading and trailing blanks *;
	CompressBlanks	= COMPBL(' Phoenix,  AZ     85034 '); * Replaces multiple blanks with a single blank *;
	RemoveBlanks	= COMPRESS(' Phoenix, AZ '); * Default character to remove is a blank *;

	*	Remove other characters   *;
	*	Note:  If anything is specified, blanks must be specified to remove them   *;
	RemoveNonAlpha	= COMPRESS(' Phoenix, AZ ', ' ,e'); * Removing blanks, commas, and 'e's *;

	RUN;

*	Note:  Trailing blanks are not automatically displayed.  Properties show the length = 13   *;
PROC PRINT DATA = WORK.Illus;
	FORMAT	LeftAligned RightAligned Trimmed Stripped CompressBlanks RemoveBlanks
			RemoveNonAlpha	$QUOTE15.;
	RUN;

*	Illustration 3 - Some functions that search for characters   *; RUN;
DATA	WORK.Illus;
	
	FirstSpc		= ANYSPACE('Alice Amy Anderson'); * Returns position of first space *;
	FirstSpc2		= ANYSPACE('Alice_Amy_Anderson'); * Returns 0 if no space is found *;
	FirstSpcGE8th	= ANYSPACE('Alice Amy Anderson', 8); * 8 is the starting position *;
	FirstSpcLE9th	= ANYSPACE('Alice Amy Anderson', -9); * A negative number searches from R -> L from that position *;
	FirstSpcFromRt	= ANYSPACE('Alice Amy Anderson', -999); * Returns position of first space going R -> L (assuming string < 1000 characters) *;

	*	Other "ANY" functions, all with the same options as illustrated above   *;
	FirstAlpha		= ANYALPHA('987 #100 W Edison Blvd'); * Returns position of first alphabetic character *;
	FirstDigit		= ANYDIGIT('Cell: (303) 555-1234');
	FirstAlNum		= ANYALNUM('_|*X8 = Password');
	FirstPunct		= ANYPUNCT('Cell: (303) 555-1234');

	RUN;

*	Illustration 4 - Some functions that search for specific characters   *; RUN;
DATA	WORK.Illus;

	*	Searching for specific characters   *;
	Find5		= INDEXC('Cell: (303) 555-1234', '5');
	Find5Or3	= INDEXC('Cell: (303) 555-1234', '53'); * Finds any '5' or '3'--not looking for '53'! *;

	*	With FIND functions you can specify:
		1.	Starting position
		2.	Direction (a negative position searches R -> L)
		3.	To ignore case (use "i")		*;
	Find1		= FINDC('Cell 1: (303) 555-1234', '1', 8); * Finds the first '1' starting at the 8th position *;
	FindZ		= FINDC('Golfer: Fuzzy Zoeller', 'Z', "i"); * Finds the first 'z' regardless of case *;

	RUN;

*	Illustration 5 - Some functions that search for specific text strings   *; RUN;
DATA	WORK.Illus;

	FindAreaCode	= INDEX('Cell: (303) 555-2303', '(303)'); * Finds string identical to listed *;
	FindCoach1		= FIND('Volleyball: Coach', 'Coach');
	FindCoach2		= FIND('Volleyball: Assistant coach', 'Coach', "i"); * Ignores case *;

	RUN;

*	Illustration 6 - A function that extract parts of text strings   *; RUN;
DATA	WORK.Illus;

	LENGTH	AreaCd	$ 3; * By default, the length of the target variable is equal to the variable used in the SUBSTR argument *;

	AreaCd	= SUBSTR('(720) 555-1234', 2, 3); * 2 = starting position, 3 = length to extract *;
	*	Specifying the length to extract is optional.  Without it, SAS will extract the remainder of the variable   *;

	RUN;

*	Illustration 7 - Some functions that concatenate text strings   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	@1	FirstNm		$8.
			@11	MiddleNm	$10.
			@21	MaidenNm	$CHAR10. /* The CHARw. informat retains leading blanks */
			@31	LastNm		$CHAR9.;

	LENGTH	FullNm1 FullNm2 FullNm3 FullNm4	$35; * Default length of target variables is 200! *;

	*	CAT leaves leading and trailing blanks unchanged   *;
	FullNm1	= CAT(FirstNm, MiddleNm, MaidenNm, LastNm);

	*	CATT strips trailing blanks   *;
	FullNm2	= CATT(FirstNm, MiddleNm, MaidenNm, LastNm);

	*	CATS strips leading and trailing blanks   *;
	FullNm3	= CATS(FirstNm, MiddleNm, MaidenNm, LastNm);

	*	CATX strips leading and trailing blanks and inserts one or more separator characters   *;
	FullNm4	= CATX(' ', FirstNm, MiddleNm, MaidenNm, LastNm);

* Ruler  1    1    2    2    3    3    4    4    5    5    6
1---5----0----5----0----5----0----5----0----5----0----5----0;
	DATALINES;
Michelle  LaVaughn    Robinson  Obama  
;

PROC PRINT	DATA = WORK.Illus;
	FORMAT	FirstNm MiddleNm MaidenNm LastNm	$QUOTE12.
			FullNm1 FullNm2 FullNm3	FullNm4	$QUOTE39.;
	RUN;

*	Illustration 8 - A function that divides strings into "words"   *; RUN;
*	Comprehension Check:  Why not use the SUBSTR function here?   *;
DATA	WORK.Illus;

	*	Note:  By default, variables created using the SCAN function have a length of 200!   *;
	LENGTH	FirstNm MiddleNm LastNm MiddleInit NmPart2 	$12	NmPart1	$16;


	FirstNm		= SCAN('Alice Amy Anderson', 1);
	MiddleNm	= SCAN('Alice Amy Anderson', 2);
	LastNm		= SCAN('Alice Amy Anderson', 3);
	MiddleInit	= SUBSTR(SCAN('Alice Amy Anderson', 2), 1, 1);

	NmPart1	= SCAN('Jones, Mr. John Joseph', 2, ','); * Specify delimeter(s) after the number of the word *;
	NmPart2	= SCAN('Jones, Mr. John Joseph', 1, ','); * Default delimiters are space, comma, period, and slash *;

	*	For situations where the number of items may vary, it can be useful to start from the right   *;
	*	Goal:  Find the last team each player played for   *;
	LastTeam	= SCAN('Seaver,NYM,CIN,NYM,CWS,BOS', -1);

	RUN;

*	Illustration 9 - Example of how character functions may be used to present results   *; RUN;
*	Goal:  Present the estimate and 95% confidence interval in the form:  Est (Lower, Upper)   *;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	Estimate
			SD	;
	DATALINES;
12.4216773 1.4535007
;

DATA	WORK.Results;
	SET	WORK.Illus;

	LowerLimit	= Estimate - 1.96*SD;
	UpperLimit	= Estimate + 1.96*SD;

	EstAndCI	=	STRIP(PUT(Estimate, 4.1))	||	' ('	||
					STRIP(PUT(LowerLimit, 4.1))	||	', '	||
					STRIP(PUT(UpperLimit, 4.1))	||	')'		;

	RUN;

*	Same scenario, but assuming a small sample size (so use the critical value from a t distribution)   *;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	Estimate
			SD
			DF	;
	DATALINES;
12.4216773 1.4535007 12
;

DATA	WORK.Results;
	SET	WORK.Illus;

	CritVal		= TINV(0.975, DF);
	LowerLimit	= Estimate - CritVal*SD;
	UpperLimit	= Estimate + CritVal*SD;

	EstAndCI	=	STRIP(PUT(Estimate, 4.1))	||	' ('	||
					STRIP(PUT(LowerLimit, 4.1))	||	', '	||
					STRIP(PUT(UpperLimit, 4.1))	||	')'		;

	RUN;



;	*';	*";	*/;	QUIT;	RUN;
*	End of Program   *; RUN;

