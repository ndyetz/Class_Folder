*************	P	R	O	G	R	A	M		H	E	A	D	E	R	*****************
*****************************************************************************************
*																						*
*	PROGRAM:	1.3.5 - Re-Structuring Data - Program.sas                               *
*	PURPOSE:	Illustrate material in Section 1.3.5                                    *
*	AUTHOR:		Jud Blatchford															*
*	CREATED:	2016-11-19																*
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



*	SECTION 1.3.5.1 - CREATING MULTIPLE DATA SETS USING OUTPUT STATEMENTS   *; RUN;

DATA	WORK.ChemoWeeks; * Creating data for the illustrations *;
	INFILE	DATALINES;
	INPUT	SubjID
			SexCd	$
			WtWk1 WtWk2 WtWk3 WtWk4;
	DATALINES;
1 M 209 210 208 206
2 F 143 139 132 134
3 M 187 184 179 177
4 F 127 128 122 123
5 F 142 138 140 139
;

*	Illustration 1 - Listing multiple data sets in the DATA statement creates multiple data sets   *; RUN;
*	Note:  When no OUTPUT statements are used, each observation goes to all specified data sets   *;
DATA	WORK.Illus
		WORK.Illus2;
	SET	WORK.ChemoWeeks;
	RUN;

*	Illustration 2 - Using IF and OUTPUT statements to conditionally output observations   *; RUN;
DATA	WORK.Females
		WORK.Males;
	SET	WORK.ChemoWeeks;

	IF			SexCd	= 'F'	THEN	OUTPUT WORK.Females;
		ELSE IF SexCd	= 'M'	THEN	OUTPUT WORK.Males;

	RUN;

*	Illustration 3 - When the OUTPUT statement doesn't specify a data set the observation goes to all data sets   *; RUN;
*	Goal:  Create data sets containing 1) All observations, and 2) Females only   *;
DATA	WORK.Females
		WORK.All;
	SET	WORK.ChemoWeeks;

	IF	SexCd	= 'M'	THEN	OUTPUT WORK.All;
		ELSE					OUTPUT;
	*	ELSE					OUTPUT WORK.All WORK.Females; * This would've produced the same results *;

	RUN;

*	Comprehension Check:  What would the 2 data sets contain with the following code?   *;
DATA	WORK.Females
		WORK.All;
	SET	WORK.ChemoWeeks;

	IF	SexCd	= 'F'	THEN	OUTPUT WORK.Females;

	RUN;

*	Comprehension Check:  What would the 2 data sets contain with the following code?   *;
DATA	WORK.Females
		WORK.All;
	SET	WORK.ChemoWeeks;

	IF	SexCd	= 'F'	THEN	OUTPUT WORK.Females;
	OUTPUT;

	RUN;

*	Illustration 4 - Data sets may be created including different variables   *; RUN;
DATA	WORK.Demog		(	KEEP	=	SubjID SexCd	)
		WORK.Baseline	(	KEEP	=	SubjID WtWk1	);
	SET	WORK.ChemoWeeks;
	RUN;



*	SECTION 1.3.5.2 - CREATING NORMALIZED DATA FROM A NON-NORMAL STRUCTURE ("WIDE" TO "LONG")   *; RUN;

*	Re-structuring a data set is sometimes referred to as "rotating" a data set   *;

*	Illustration 1 - PROC TRANSPOSE transposes a matrix of data   *; RUN;
*	Note:  The observations and variables create a "rows" by "columns" matrix
	Recall:  A transpose simply converts rows to column and vice versa   *;
PROC TRANSPOSE	DATA = WORK.ChemoWeeks;
	VAR	WtWk1 - WtWk4;
	RUN;


*	Illustration 2 - Using the BY statement to specify 1 x p matrices   *; RUN;
PROC TRANSPOSE
		DATA	= WORK.ChemoWeeks
		OUT		= WORK.ChemoNormal;
	VAR	WtWk1 - WtWk4;
	BY	SubjID;
	RUN;


*	Illustration 3 - Including other variables in the transpose   *; RUN;
*	Approach 1 - Using the COPY statement   *;
*	Note:  The COPY statement specifies variables to keep but not to transpose   *;
PROC TRANSPOSE
		DATA	= WORK.ChemoWeeks
		OUT		= WORK.ChemoNormal;
	VAR	WtWk1 - WtWk4;
	BY	SubjID;
	COPY	SexCd;
	RUN;

*	Approach 2 - Including the other variables in the BY statement   *;
PROC TRANSPOSE
		DATA	= WORK.ChemoWeeks
		OUT		= WORK.ChemoNormal;
	VAR	WtWk1 - WtWk4;
	BY	SubjID SexCd;
	RUN;
*	Note:  This approach is typically fine in a "wide" to "long" conversion because when
			the data is "wide" the other variables can't vary within each level of the BY variable   *;


*	Illustration 4 - Renaming the transposed column   *; RUN;
PROC TRANSPOSE
		DATA	= WORK.ChemoWeeks
		OUT		= WORK.ChemoNormal	(	RENAME	= (	COL1 = WeightLbs	)
									);
	VAR	WtWk1 - WtWk4;
	BY	SubjID SexCd;
	RUN;


*	Illustration 5 - Using the DATA step to re-structure the values from "wide" to "long"   *; RUN;
*	Approach 1 - Defining an array and processing with a DO loop   *;
*	Strategy:	1) Create a 4x4 matrix within each subject
				2) Use a DO loop to create the new variable values from the diagonal values   *;
DATA	WORK.NormalWks;
	SET	WORK.ChemoWeeks;

	ARRAY	Weights {4}	WtWk1 - WtWk4;

	DO	i = 1 TO DIM(Weights);
		Week	= i;
	*	Time	= CAT("Week ", i); * This simply shows an alternative way to create a variable containing Week info *;
		Weight	= Weights{i};
		OUTPUT	WORK.NormalWks;
	END;

	DROP	WtWk1 - WtWk4 i; * The 4x4 matrix can be seen by keeping these variables *;

	RUN;

*	Approach 2 - Using 'Week' as the index variable (instead of 'i')   *;
*	Note:  We can use this simpler approach because the values of 'Week' are sequential (1 TO 4)   *;
DATA	WORK.NormalWks;
	SET	WORK.ChemoWeeks;

	ARRAY	Weights {4}	WtWk1 - WtWk4;

	DO	Week = 1 TO DIM(Weights);
		Weight	= Weights{Week};
		OUTPUT	WORK.NormalWks;
	END;

	DROP	WtWk1 - WtWk4;

	RUN;


*	Illustration 6 - Using the DATA step with non-sequential sequence values   *; RUN;
DATA	WORK.ChemoDays; * Creating data for the following illustration *;
	INFILE	DATALINES;
	INPUT	SubjID
			SexCd	$
			WtDay1 WtDay8 WtDay15 WtDay22;
	DATALINES;
1 M 209 210 208 206
2 F 143 139 132 134
3 M 187 184 179 177
4 F 127 128 122 123
5 F 142 138 140 139
;

*	Note:  The 'Day' variable is not sequential, so a function is needed to create values of 'Day' from 'i'   *;
DATA	WORK.NormalDays;
	SET	WORK.ChemoDays;

	ARRAY	Weights {4}	WtDay1 WtDay8 WtDay15 WtDay22; * Or WtDay1 -- WtDay22 *;

	DO	i = 1 TO DIM(Weights);
		Day		= 7*(i - 1) + 1; * Write Day as a function of i *;
		Weight	= Weights{i};
		OUTPUT	WORK.NormalDays;
	END;

	DROP	Wt: i;

	RUN;



*	SECTION 1.3.5.3 - CREATING NON-NORMAL DATA FROM A NORMALIZED STRUCTURE ("LONG" TO "WIDE")   *; RUN;


*	Illustration 1 - Using PROC TRANSPOSE   *; RUN;
PROC TRANSPOSE
		DATA	= WORK.NormalWks
		OUT		= WORK.WideWks	(	DROP	= _NAME_	);
	VAR	Weight; * Weight is a 4x1 matrix within each subject *;
	BY	SubjID SexCd;
	RUN;


*	Illustration 2 - Using PROC TRANSPOSE with the PREFIX= option   *; RUN;
PROC TRANSPOSE
		DATA	= WORK.NormalWks
		OUT		= WORK.WideWks	(	DROP	= _NAME_	)
		PREFIX	= WtWk;
	VAR	Weight;
	BY	SubjID SexCd;
	RUN;


*	Illustration 3 - Using PROC TRANSPOSE with the ID statement   *; RUN;
DATA	WORK.Vitals; * Creating data for the illustration *;
	INFILE	DATALINES;
	INPUT	SubjID
			TimePt	$
			Test	$	
			Value	;
	DATALINES;
1 Baseline SBP 139
1 Baseline DBP 92
1 Baseline HR  74
2 Baseline SBP 148
2 Baseline DBP 101
2 Baseline HR  79
;



***** ADD ANOTHER ILLUSTRATION WHICH USES THE RENAME= DS OPTION TO CHANGE ALL VARIABLE NAMES TO 'SBP' ETC.
	THIS WILL HELP TO SHOW THE VALUE OF THE ID STATEMENT (WHICH DOES THIS FOR YOU!)   ***********************;
***** ADD ANOTHER ILLUSTRATION WHICH USES THE RENAME= DS OPTION TO CHANGE ALL VARIABLE NAMES TO 'SBP' ETC.
	THIS WILL HELP TO SHOW THE VALUE OF THE ID STATEMENT (WHICH DOES THIS FOR YOU!)   ***********************;

*	Question 38 of the final exam 2016-12-13  *; RUN;
DATA	WORK.Legends;
	INFILE	DATALINES;
	INPUT	Player	$
			Stat	$
			Value	;
	DATALINES;
Gehrig	AVG	.340
Gehrig	HR	493
Gehrig	RBI	1995
Ripken	AVG	.276
Ripken	HR	431
Ripken	RBI	1695
;

*	This shows it using the RENAME= option  *;
PROC TRANSPOSE
		DATA	= WORK.Legends
		OUT		= WORK.LegendsWide	(	RENAME	= (	COL1 = AVG
													COL2 = HR
													COL3 = RBI	)
									);
	BY	Player;
	VAR	Value;
	RUN;

*	This shows it using the ID statement  *;
PROC TRANSPOSE
		DATA	= WORK.Legends
		OUT		= WORK.LegendsWide	(	DROP = _NAME_	);
	BY	Player;
	ID	Stat;
	VAR	Value;
	RUN;

***** ADD ANOTHER ILLUSTRATION WHICH USES THE RENAME= DS OPTION TO CHANGE ALL VARIABLE NAMES TO 'SBP' ETC.
	THIS WILL HELP TO SHOW THE VALUE OF THE ID STATEMENT (WHICH DOES THIS FOR YOU!)   ***********************;
***** ADD ANOTHER ILLUSTRATION WHICH USES THE RENAME= DS OPTION TO CHANGE ALL VARIABLE NAMES TO 'SBP' ETC.
	THIS WILL HELP TO SHOW THE VALUE OF THE ID STATEMENT (WHICH DOES THIS FOR YOU!)   ***********************;
***** ADD ANOTHER ILLUSTRATION WHICH USES THE RENAME= DS OPTION TO CHANGE ALL VARIABLE NAMES TO 'SBP' ETC.
	THIS WILL HELP TO SHOW THE VALUE OF THE ID STATEMENT (WHICH DOES THIS FOR YOU!)   ***********************;
*	End of this addition ******************************************; run;






*	Note:  The ID statement is useful when values as variable names are informative   *;
*	Note:  Values of the variable(s) in the ID statement must be unique within BY groups   *;
*	Note:  If the ID variable is numeric, underscores will precede the value in the variable name   *;
PROC TRANSPOSE
		DATA	= WORK.Vitals
		OUT		= WORK.VitalsWide	(	DROP	= _NAME_	);
	VAR	Value;
	BY	SubjID;
	ID	Test;
	RUN;

*	Compare with the less-useful titles of "Test1", "Test2", and "Test3" created with the PREFIX= option   *;
PROC TRANSPOSE
		DATA	= WORK.Vitals
		OUT		= WORK.VitalsWide	(	DROP	= _NAME_	)
		PREFIX	= Test;
	VAR	Value;
	BY	SubjID;
	RUN;

*	Note:  If multiple variables are listed in the ID statement, the concatenated values will become the variable names   *;
PROC TRANSPOSE
		DATA	= WORK.Vitals
		OUT		= WORK.VitalsWide	(	DROP	= _NAME_	);
	VAR	Value;
	BY	SubjID;
	ID	TimePt Test;
	RUN;


*	Illustration 4 - Using PROC TRANSPOSE with the COPY statement   *; RUN;
PROC TRANSPOSE
		DATA	= WORK.NormalDays
		OUT		= WORK.WideDays	(	DROP	= _NAME_	)
		PREFIX	= WtDay;
	VAR	Weight;
	BY	SubjID;
	COPY	SexCd;
	RUN;
*	Note:  4 rows per subject are kept due to the COPY statement   *;

*	Note:  As in Section 1.3.5.2, include SexCd in the BY statement!   *;
PROC TRANSPOSE
		DATA	= WORK.NormalDays
		OUT		= WORK.WideDays	(	DROP	= _NAME_	)
		PREFIX	= WtDay;
	VAR	Weight;
	BY	SubjID SexCd;
	RUN;
*	Note:  The values of 'Day' is not reflected in the variable names   *;

*	Use the ID statement to attach the correct value of 'Day' to the variable names   *;
PROC TRANSPOSE
		DATA	= WORK.NormalDays
		OUT		= WORK.WideDays	(	DROP	= _NAME_	)
		PREFIX	= WtDay;
	VAR	Weight;
	BY	SubjID SexCd;
	ID	Day;
	RUN;


*	Illustration 5 - Using the DATA step to re-structure the values from "long" to "wide"   *; RUN;
*	Creating "Wide" Weeks - Approach 1   *;
*	Note:  Attempting to use a DO loop   *;
DATA	WORK.WideWks;
	SET	WORK.NormalWks;
	BY	SubjID;

	ARRAY	Weights {4}	WtWk1 - WtWk4; * This creates the 4 "wide" variables *;

	IF	FIRST.SubjID = 1	THEN	CALL MISSING(OF Weights{*});

	DO	i = 1 TO 4;
		Weights{i}	= Weight;
	END;

	RUN;
*	Note:  All 4 array variables are copies of the 'Weight' variable   *;

*	Creating "Wide" Weeks - Approach 2   *;
*	Note:  Using 'Week' as the array subscript to copy values from 'Weight' to the correct variable   *;
DATA	WORK.WideWks;
	SET	WORK.NormalWks;
	BY	SubjID;

	ARRAY	Weights {4}	WtWk1 - WtWk4;

	IF	FIRST.SubjID = 1	THEN	CALL MISSING(OF Weights{*});

	Weights{Week}	= Weight;

	RUN;
*	Note:  The result is similar, but a subset, to the results from approach 1   *;

*	Creating "Wide" Weeks - Approach 3   *;
*	Note:  Using RETAIN to fill a "complete" last row per subject   *;
DATA	WORK.WideWks;
	SET	WORK.NormalWks;
	BY	SubjID;

	ARRAY	Weights {4}	WtWk1 - WtWk4;

	RETAIN	WtWk1 - WtWk4;

	IF	FIRST.SubjID = 1	THEN	CALL MISSING(OF Weights{*});

	Weights{Week}	= Weight;

	RUN;

*	Creating "Wide" Weeks - Approach 4   *;
*	Note:  Using initial array values instead of the RETAIN statement   *;
DATA	WORK.WideWks;
	SET	WORK.NormalWks;
	BY	SubjID;

	ARRAY	Weights {4}	WtWk1 - WtWk4 (. . . .);

	IF	FIRST.SubjID = 1	THEN	CALL MISSING(OF Weights{*});

	Weights{Week}	= Weight;

	RUN;

*	Creating "Wide" Weeks - Approach 5   *;
*	Note:  Keeping the final row for each subject   *;
DATA	WORK.WideWks;
	SET	WORK.NormalWks;
	BY	SubjID;

	ARRAY	Weights {4}	WtWk1 - WtWk4 (. . . .);

	IF	FIRST.SubjID = 1	THEN	CALL MISSING(OF Weights{*});

	Weights{Week}	= Weight;

	IF	LAST.SubjID	= 1;

	DROP	Week Weight;

	RUN;


*	Illustration 6 - Using the DATA step with non-sequential sequence values   *; RUN;
*	Creating "Wide" Days - Approach 1   *;
*	Note:  An index variable needs to be created to provide subscripts to the array name
			The 'Day' variable can't be used for this (as Week was) because its values are non-sequential   *;
DATA	WORK.WideDays;
	SET	WORK.NormalDays;
	BY	SubjID;

	ARRAY	Weights {4}	WtDay1 WtDay8 WtDay15 WtDay22 (. . . .);

	IF	FIRST.SubjID = 1	THEN	CALL MISSING(OF Weights{*});

	Index	= FLOOR(Day / 7) + 1; * Create a variable 'Index' to use as the array subscript *;

	Weights{Index}	= Weight;

	IF	LAST.SubjID	= 1;

	DROP	Day Weight Index;

	RUN;


*	Illustration 7 - Using the DATA step with nested variables values   *; RUN;
*	Scenario:  Nested variables ('Test' is nested within 'TimePt')   *;
*	Goal:  Restructure the data set into a non-normal (a.k.a. "wide") structure   *;
*	Note:  The desired "wide" structure is to have a variable for each TimePt*Test combination   *;

*	Creating data for the illustration   *;
DATA	WORK.NestedNormal;
	INFILE	DATALINES;
	INPUT	SubjID
			TimePt	$
			Test	$	
			Value	;
	DATALINES;
1 Baseline SBP 139
1 Baseline DBP 92
1 Baseline HR  74
1 FollowUp SBP 132
1 FollowUp DBP 85
1 FollowUp HR  70
2 Baseline SBP 148
2 Baseline DBP 101
2 Baseline HR  79
2 FollowUp SBP 138
2 FollowUp DBP 90
2 FollowUp HR  72
3 Baseline SBP 126
3 Baseline DBP 83
3 Baseline HR  66
3 FollowUp SBP 123
3 FollowUp DBP 79
3 FollowUp HR  62
;

DATA	WORK.WideNested;
	SET	WORK.NestedNormal;
	BY	SubjID;

	ARRAY	TimePtTests {*}	BL_SBP	BL_DBP	BL_HR
							FU_SBP	FU_DBP	FU_HR
							(. . . . . .);

	IF	FIRST.SubjID = 1	THEN	CALL MISSING(OF TimePtTests{*});

	Index	=	3*(TimePt	= 'FollowUp')	+ 
				1*(Test		= 'SBP')		+
				2*(Test		= 'DBP')		+
				3*(Test		= 'HR')			;

	TimePtTests{Index}	= Value;

	IF	LAST.SubjID	= 1;

	DROP	TimePt Test Value Index;

	RUN;



;	*';	*";	*/;	QUIT;	RUN;
*	End of Program   *; RUN;

