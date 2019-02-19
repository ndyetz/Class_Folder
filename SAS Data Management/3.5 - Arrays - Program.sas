*************	P	R	O	G	R	A	M		H	E	A	D	E	R	*****************
*****************************************************************************************
*																						*
*	PROGRAM:	1.2.5 - Arrays - Program.sas                                            *
*	PURPOSE:	Illustrate material in Section 1.2.5                                    *
*	AUTHOR:		Jud Blatchford															*
*	CREATED:	2016-09-30																*
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



*	SECTION 1.2.5.1 - ARRAY BASICS   *; RUN;

*	An array is a temporary grouping of variables that exists only during the DATA step   *;
*	The variables grouped must be the same type--either all numeric or all character   *;
*	The variables in an array are referred to as "elements"   *;
*	We will work with 1-dimensional arrays (know that multi-dimensional arrays may be used as well)   *;

*	Illustration 1 - Syntax for an ARRAY   *; RUN;
*	SAS arrays are specified using the following ARRAY statement syntax:
	ARRAY	Array-name {dimension} element-list;
*	Note:  The array-name must be unique (i.e. not already assigned to a variable)
		The name may be up to 32 characters, and must follow the usual SAS naming conventions	*;
DATA	WORK.Illus;
	SET	SASHelp.Baseball;

	ARRAY	BBStats {5}	nAtBat nRuns nHits nHome nRBI; * Creates the array "BBStats" *;
	* Note: The order of the elements is different than their order in the source data set
			The variables don't need to be stored adjacent to each other	*;

	RUN;

*	Illustration 2 - Referencing an array element   *; RUN;
*	Note:  Subscripts are assigned to each element (in the order of the array elements)
			The subscripts are used to reference a specific element in the array
			You can use an array reference to process on the referened element		*;
DATA	WORK.Illus;
	SET	SASHelp.Baseball;

	ARRAY	BBStats {5}	nAtBat nRuns nHits nHome nRBI;

	NewVbl	= BBStats{4}; * Creates 'NewVbl' as a copy of 'nHome' (referenced as the 4th element of BBStats) *;
	* Note: The '4' refers to the 4th variable listed in the array   *;

	RUN;
	
*	Illustration 3 - A range of values may be used for the dimension   *; RUN;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	EnrollmentMon1 - EnrollmentMon12; * Mon1 = January, ... , Mon12 = December *;

	ARRAY	SummerEnr {6:8} EnrollmentMon6 - EnrollmentMon8; * This array only contains 3 elements *;

	JunJulPts = SummerEnr{6} + SummerEnr{7};

	DATALINES;
22 25 30 26 20 17 9 11 24 22 19 8
;

*	SAS won't recognize subscripts out of the range defined in the dimension   *;
DATA	WORK.Illus;
	INFILE	DATALINES;
	INPUT	EnrollmentMon1 - EnrollmentMon12; * Mon1 = January, ... , Mon12 = December *;

	ARRAY	SummerEnr {6:8} EnrollmentMon6 - EnrollmentMon8; * This array only contains 3 elements *;

	JJPts = SummerEnr{1} + SummerEnr{2};

	DATALINES;
22 25 30 26 20 17 9 11 24 22 19 8
;

*	Illustration 3 - Using Shortcuts to specify lists of array elements   *; RUN;
*	Recall:  Shortcut lists are covered in Section 1.2.2.6   *;
DATA	WORK.Illus;
	SET	SASHelp.Baseball;

	ARRAY	BB {18}	_NUMERIC_; * Includes all numeric variables in the 'BB' array *;

	NewVbl	= BB{17}; * The 17th numeric variable is the 'Salary' variable *;

	RUN;

*	Illustration 4 - Using '*' to specify the array dimension   *; RUN;
*	Note:  This is useful when:
		1.	You don't know the number of elements, or
		2.	The number of elements may change for a later run of the program	*;
DATA	WORK.Illus;
	SET	SASHelp.Baseball;

	ARRAY	BBCareer {*}	Cr:;
	* You might not know how many numeric variables start with 'Cr' (or the number might change) *;

	NewVbl	= BBCareer{3}; * The 3rd numeric variable that starts with 'Cr' *;

	RUN;

*	Illustration 5 - Using the DIM function   *; RUN;
*	Note:  The DIM returns the number of elements in a SAS array   *;
DATA	WORK.Illus;
	SET	SASHelp.Baseball	(OBS = 1);

	ARRAY	BBCareer {*}	Cr:;

	ArrayVblCnt	= DIM(BBCareer);

	RUN;

*	Illustration 6 - Using the array name & dimension to create new variables   *; RUN;
*	Note:  If no elements are listed, SAS creates new variables using:
			1.	The array name (e.g. "Month"), and
			2.	Suffixes 1 through the dimension (e.g. "1" through "12")   *;
*	Note:  The array named 'Month' only lasts for the duration of the DATA step
			However, the variables created remain with the WORK.Illus data set!   *;
DATA	WORK.Illus;
	ARRAY	Month {12};
	Month4 = 30; * The variables may be used in processing *;
	RUN;

*	Note:  If suffixes are desired that don't start at 1, include the variable names   *;
DATA	WORK.Illus;
	ARRAY	Month {6:9} Month6 - Month9;
	RUN;

*	Note:  Using the dimension equal to the total number of variables works as well   *;
DATA	WORK.Illus;
	ARRAY	Month {4} Month6 - Month9;
	RUN;

*	Note:  Without variables specified, SAS uses 1 through the number of elements (4)   *;
DATA	WORK.Illus;
	ARRAY	Month {6:9};
	RUN;

*	Note:  Other names may be assigned to the variables   *;
DATA	WORK.Illus;
	ARRAY	Month {12} Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec;
	RUN;

*	Illustration 7 - Creating an array of character variables   *; RUN;
*	Note:  If no length is specified, the default length of 8 is used   *;
DATA	WORK.Illus;
	ARRAY	Symptom {5} $; * Creates 5 character variables, each with a length of 8 *;
	RUN;

DATA	WORK.Illus;
	ARRAY	Symptom {5} $ 30; * Creates 5 character variables, each with a length of 30 *;
	RUN;

*	Note:  Variables may be given different lengths using a LENGTH statement   *;
DATA	WORK.Illus;
	LENGTH	StateCd	$ 2
			StateNm	$ 20
			StateBird StateFlower	$ 15	;
	ARRAY	StateInfo {4} $ StateCd StateNm StateBird StateFlower;
	RUN;



*	SECTION 1.2.5.2 - COMBINING ARRAYS WITH DO LOOPS   *; RUN;

*	1.	Creating an array allows for variables to be referenced using the array name and a subscript
		The subscripts are a sequence of numbers (e.g. 1, 2, ... , 12 or 2007 - 2016, etc).
		Therefore, instead of referring to a set of variable as "January", "February", ... , "December",
			they can be referenced as Month{1}, Month{2}, ... , Month{12}
	2.	DO loops can be used to create an index variable
		The index variable is often a sequence of numbers (e.g. 1, 2, ... , 12 or 2007 - 2016, etc.).
	3.	Therefore, it can be extremely powerful (i.e. efficient) to do the following:
		Step 1.	Create an array containing a group of N variables you want to process in the same way
		Step 2.	Create a DO loop using an index variable from 1 TO N
				This index variable will be used as the subscript for the array to refer to each element!
		Step 3.	Use the SAS statement desired, but reference the variables using the array-name & index variable		*;

*	Illustration 1 - Performing the same process on different variables - without an array & DO loop   *; RUN;
DATA	WORK.HighTempsF;
	INFILE	DATALINES;
	INPUT	City	$
			Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec;
	DATALINES;
Denver  43 47 54 61 71 82 88 86 77 66 52 44
Miami   77 78 81 84 87 90 91 91 89 85 81 78
;

*	Goal:  Convert the average high temperatures for each month from Fahrenheit to Celsius   *;
*	Note:  Using a DO loop by itself won't work because although the computation is the same,
			the variable on which the computation is performed is different for each statement		*;
DATA	WORK.HighTempsC_Difficult;
	SET	WORK.HighTempsF;

	Jan	= (Jan - 32) * 5/9;
	Feb	= (Feb - 32) * 5/9;
	Mar	= (Mar - 32) * 5/9;
	Apr	= (Apr - 32) * 5/9;
	May	= (May - 32) * 5/9;
	Jun	= (Jun - 32) * 5/9;
	Jul	= (Jul - 32) * 5/9;
	Aug	= (Aug - 32) * 5/9;
	Sep	= (Sep - 32) * 5/9;
	Oct	= (Oct - 32) * 5/9;
	Nov	= (Nov - 32) * 5/9;
	Dec	= (Dec - 32) * 5/9;

	FORMAT	Jan -- Dec	5.1;

	RUN;

*	Illustration 2 - Performing the same process on different variables - using an array   *; RUN;
*	Note:  Although an array is used, there is no real advantage to using this   *;
DATA	WORK.HighTempsC_StillDifficult;
	SET	WORK.HighTempsF;

	ARRAY	Month {*} Jan -- Dec;

	Month{1}	= (Month{1} - 32) * 5/9;
	Month{2}	= (Month{2} - 32) * 5/9;
	Month{3}	= (Month{3} - 32) * 5/9;
	Month{4}	= (Month{4} - 32) * 5/9;
	Month{5}	= (Month{5} - 32) * 5/9;
	Month{6}	= (Month{6} - 32) * 5/9;
	Month{7}	= (Month{7} - 32) * 5/9;
	Month{8}	= (Month{8} - 32) * 5/9;
	Month{9}	= (Month{9} - 32) * 5/9;
	Month{10}	= (Month{10} - 32) * 5/9;
	Month{11}	= (Month{11} - 32) * 5/9;
	Month{12}	= (Month{12} - 32) * 5/9;

	FORMAT	Jan -- Dec	5.1;

	RUN;

*	Illustration 3 - Performing the same process on different variables - using an array & DO loop   *; RUN;
*	Note:  Combining arrays with a DO loop is very efficient!   *;
DATA	WORK.HighTempsC_Easy;
	SET	WORK.HighTempsF;

	* Step 1:  Create an array containing the variables to process in the same manner *;
	ARRAY	Month {*} Jan -- Dec;

	* Step 2:  Create a DO loop using an index variable from 1 to N *;
	DO	i = 1 TO DIM(Month);
		* Step 3:  Use the SAS statement desired, referencing the variables using the array-name & index variable *;
		Month{i} = (Month{i} - 32) * 5/9;
	END;

	FORMAT	Jan -- Dec	5.1;
	DROP	i;

	RUN;

*	Illustration 4 - Using an index variable which does not start at 1   *; RUN;
*	Goal:  Convert the snowfall data from inches to feet   *;
*	Year contains snowfall from July of previous year through June of year listed
		(e.g. 2008 contains snowfall from July 2007 - June 2008)		*; 
DATA	WORK.SnowfallIn;
	INFILE	DATALINES;
	INPUT	City	$
			Yr1997 - Yr2016;
	DATALINES;
Denver  44.7 72.1 44.5 45.6 58.3 30.2 61.8 38.0 39.3 30.4
        72.6 46.3 38.1 60.6 22.8 55.6 78.4 38.4 57.8 72.8
;

DATA	WORK.SnowfallFt;
	SET	WORK.SnowfallIn;

	* Step 1:  Create an array containing the variables to process in the same manner *;
	ARRAY	Year {1997:2016} Yr1997 - Yr2016;

	* Step 2:  Create a DO loop using an index variable from START to END *;
	DO	i = 1997 TO 2016;
		* Step 3:  Use the SAS statement desired, referencing the variables using the array-name & index variable *;
		Year{i} = (Year{i} / 12);
	END;

	FORMAT	Yr1997 - Yr2016	4.1;
	DROP	i;

	RUN;



*	SECTION 1.2.5.3 - USING ARRAYS TO CREATE VARIABLES & PERFORM CALCULATIONS   *; RUN;

*	Illustration 1 - Using an array as a variable list   *; RUN;
*	Goal:  Calculate the average snowfall over the past 20 years   *;
DATA	WORK.SnowfallDiffs;
	SET	WORK.SnowfallIn;
 
	* Method 1 - Manual *;
	MeanSnowfallIn_Long = (	Yr1997 + Yr1998 + Yr1999 + Yr2000 + Yr2001 + Yr2002 + Yr2003 + Yr2004 + 
							Yr2005 + Yr2006 + Yr2007 + Yr2008 + Yr2009 + Yr2010 + Yr2011 + Yr2012 +
							Yr2013 + Yr2014 + Yr2015 + Yr2016	) / 20;

	* Method 2 - Using a function *;
	MeanSnowfallIn_Fcn	= MEAN(	Yr1997, Yr1998, Yr1999, Yr2000, Yr2001, Yr2002, Yr2003, Yr2004,
								Yr2005, Yr2006, Yr2007, Yr2008, Yr2009, Yr2010, Yr2011, Yr2012,
								Yr2013, Yr2014, Yr2015, Yr2016 );

	* Method 3 - Using a function with a shortcut for the variable list *;
	MeanSnowfallIn_FcnWList	= MEAN(OF Yr1997 - Yr2016);

	* Method 4 - Using an array *;
	ARRAY	Year {1997:2016} Yr1997 - Yr2016;
	MeanSnowfallIn_Array = MEAN(OF Year{*});

	RUN;

*	Illustration 2 - Using an array as a variable list as part of a calculation   *; RUN;
*	Goal:  Calculate the difference between each year's snowfall and the average snowfall   *;
DATA	WORK.SnowfallDiffs;
	SET	WORK.SnowfallIn;
 
	ARRAY	Year {1997:2016} Yr1997 - Yr2016;
	ARRAY	Delta {1997:2016} Diff1997 - Diff2016; * This creates new variables for the differences *;

	DO	i = 1997 TO 2016;
		Delta{i} = Year{i} - MEAN(OF Year{*});
	END;

	FORMAT	Diff1997 - Diff2016	5.1;
	DROP	i;

	RUN;

*	Illustration 3 - Using different elements in the same calculation within an array   *; RUN;
*	Goal:  Calculate the change in snowfall for each year   *;
DATA	WORK.SnowfallChg;
	SET	WORK.SnowfallIn;

	ARRAY	Year {1997:2016} Yr1997 - Yr2016;
	ARRAY	Change {1998:2016} Chg1998 - Chg2016;

	DO	i = 1998 TO 2016;
		Change{i} = Year{i} - Year{i-1};
	END;

	FORMAT	Chg1998 - Chg2016	5.1;
	DROP	i;

	RUN;



*	SECTION 1.2.5.4 - ASSIGNING INITIAL VALUES TO AN ARRAY   *; RUN;

*	Illustration 1 - Assigning initial values   *; RUN;
DATA	WORK.RawScores; * Simply creates data for the illustration *;
	INFILE	DATALINES;
	INPUT	StudentID
			Test1 - Test3;
	DATALINES;
101 57 65 88
102 74 76 76
103 56 70 75
104 90 80 71
105 82 61 57
;

*	Note:  Initial values may be assigned by placing them in a list.  The conventions followed are:
		1.	1 value for each array element
		2.	Elements and values are matched by position
		3.	Values must be separated by spaces or commas
		4.	The value list must be enclosed in parentheses
		5.	The elements behave as if they were in a RETAIN statement		*;
*	Goal:  I would like to replace any score on Test1 that is below 60 with a score of 60, and
			similarly make the minimum scores for Test2 and Test3 to be scores of 65 and 70.	*;
DATA	WORK.AdjustedScores;
	SET	WORK.RawScores;

	ARRAY	Raw			{*} Test1 - Test3;
	ARRAY	Minimum		{*} Minimum1 - Minimum3 (60 65 70); * Creates 3 new variables with values *;
	ARRAY	Adjusted	{3}; * Creates 3 new variables with missing values *;

	DO	i = 1 TO DIM(Raw);
		IF	Raw{i} < Minimum{i}	THEN	Adjusted{i} = Minimum{i};
			ELSE						Adjusted{i} = Raw{i};
	END;

	DROP	i;

	RUN;

*	Illustration 2 - Using a temporary array   *; RUN;
*	Note:  If variables are only needed for processing (i.e. not for output), temporary variables
		may be created (this increases efficiency).  The conventions followed are:
		1.	The dimension of the array must be specified (i.e. "*" is not allowed)
		2.	The keyword "_TEMPORARY_" must be specified after the dimension
		3.	No names for elements are allowed
		4.	Elements are referred to by an array reference (e.g. Minimum{2}) since names aren't in the PDV	*;
DATA	WORK.AdjustedScores;
	SET	WORK.RawScores;

	ARRAY	Raw			{*} Test1 - Test3;
	ARRAY	Minimum		{3} _TEMPORARY_ (60 65 70);
	ARRAY	Adjusted	{*} Adjusted1 - Adjusted3;

	DO	i = 1 TO DIM(Raw);
		IF	Raw{i} < Minimum{i}	THEN	Adjusted{i} = Minimum{i};
			ELSE						Adjusted{i} = Raw{i};
	END;

	DROP	i;

	RUN;

*	Extension:  If the goal is to see the test scores that are changed, you could use the code:		*;
DATA	WORK.ChangedScores	(	DROP	=	Test1 - Test3	);
	SET	WORK.RawScores;

	ARRAY	Raw			{*} Test1 - Test3;
	ARRAY	Minimum		{3} _TEMPORARY_ (60 65 70);

	DO	i = 1 TO 3;
		IF	Raw{i} < Minimum{i}	THEN DO;
			TestNum			= i;
			RawScore		= Raw{i};
			AdjustedScore	= Minimum{i};
			Increase		= Minimum{i} - Raw{i};
			OUTPUT	WORK.ChangedScores;
		END;
	END;

	DROP	i;

	RUN;



;	*';	*";	*/;	QUIT;	RUN;
*	End of Program   *; RUN;

