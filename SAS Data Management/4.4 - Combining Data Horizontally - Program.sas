*************	P	R	O	G	R	A	M		H	E	A	D	E	R	*****************
*****************************************************************************************
*																						*
*	PROGRAM:	1.3.4 - Combining Data Horizontally - Program.sas                       *
*	PURPOSE:	Illustrate material in Section 1.3.4                                    *
*	AUTHOR:		Jud Blatchford															*
*	CREATED:	2016-11-15																*
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



*	Data is most commonly combined horizontally when different variables are to be joined together   *;

*	SECTION 1.3.4.1 - ONE-TO-ONE MERGE   *; RUN;
*	Note:  A one-to-one merge is appropriate when a single observation in one data set is related to
			one and only one observation in another data set   *;

DATA	WORK.Demog; * Creating data sets for the illustrations *;
	INFILE	DATALINES;
	INPUT	SubjID
			SexCd	$
			Race	$
			Age		;
	DATALINES;
103 F Black 26
104 F Asian 24
108 F Black 47
110 M Asian 23
111 M White 36
;

DATA	WORK.Tx;
	INFILE	DATALINES;
	INPUT	SubjID
			TxGrp	$	5-11;
	DATALINES;
103 Drug B
104 Placebo
108 Drug A
110 Placebo
111 Drug A
;


DATA	WORK.OutcomeWk0;
	INFILE	DATALINES;
	INPUT	SubjID
			TumorVolWk0	;
	DATALINES;
103 118
104 97
108 112
110 119
111 90
;

DATA	WORK.OutcomeWk6;
	INFILE	DATALINES;
	INPUT	SubjID
			TumorVolWk6	;
	DATALINES;
103 119
108 52
111 8
;


*	Illustration 1 - Using the MERGE statement   *; RUN;
*	Note:  The MERGE statement will horizontally join data sets   *;
DATA	WORK.ResultsA; * Creating data for the illustration *;
	EventsA	= 6;
	TrialsA	= 10;
	PropA	= EventsA / TrialsA;
	RUN;

DATA	WORK.ResultsB;
	EventsB	= 1;
	TrialsB	= 10;
	PropB	= EventsB / TrialsB;
	RUN;

DATA	WORK.PVal;
	PValue	= 0.019;
	RUN;

*	Goal:  Merge the results from group A, group B, and the p-value   *;
DATA	WORK.Results;
	MERGE	WORK.ResultsA
			WORK.ResultsB
			WORK.PVal;
	PropDiff	= PropA - PropB;
	RUN;
	

*	Illustration 2 - Using the MERGE statement with a single data set   *; RUN;
*	Note:  In this scenario, SAS treats the MERGE statement as if it were a SET statement   *;
DATA	WORK.Illus;
	MERGE	WORK.ResultsA;
	RUN;


*	Illustration 3 - Understanding the default behavior of the MERGE statement   *; RUN;
*	Behavior 1:  Observations in the same position will be joined together (e.g. 2nd observations will be put together)   *;
*	Behavior 2:  When there are variables with the same name in both data sets, the most-recently read value will
					over-write any previously existing value for the variable   *;
*	Behavior 3:  When the number of observations is not the same, missing values will be inserted as values for the
					"remaining" observations from the data set with fewer observation   *;

*	Goal:  Create a data set containing both the treatment and demograhic data   *;
DATA	WORK.Illus;
	MERGE	WORK.Tx
			WORK.Demog;
	RUN;
*	The created data set looks great   *;

*	Goal:  Create a data set containing the outcomes from both week 0 and week 6   *;
*	Note:  The created data set has several problems   *;
DATA	WORK.AllOutcomes;
	MERGE	WORK.OutcomeWk0
			WORK.OutcomeWk6;
	RUN;
*	Observe that problems have resulted from this merge   *;


*	Illustration 4 - Performing a match-merge - Using the BY statement   *; RUN;
*	Note:  The BY variable(s) must be in all data sets being merged   *;
*	Note:  The observations must be ordered according to the BY-variable(s) specification.
			Use the DESCENDING option in the BY statement if the observations are in descending order   *;
*	Note:  The BY statement changes Behavior 1   *;

*	Let's try Illustration 3 again, this time using a BY statement   *;
*	Goal:  Create a data set containing both the treatment and demograhic data   *;
DATA	WORK.Illus;
	MERGE	WORK.Tx
			WORK.Demog;
	BY	SubjID;
	RUN;

*	Goal:  Create a data set containing the outcomes from both week 0 and week 6   *;
DATA	WORK.AllOutcomes;
	MERGE	WORK.OutcomeWk0
			WORK.OutcomeWk6;
	BY	SubjID;
	RUN;
*	This result looks great   *;


*	Illustration 5 - Numbered range and name prefix shortcuts may be used with the data set names   *; RUN;
DATA	WORK.Illus;
	MERGE	WORK.Outcome:;
	BY	SubjID;
	RUN;


*	Illustration 6 - Beware of variables with the same name that aren't BY-variables!   *; RUN;
DATA	WORK.Tx2; * Creating data for the illustration *;
	INFILE	DATALINES;
	INPUT	SubjID
			TxGrp	$	5-11;
	RETAIN	SexCd	' ';
	DATALINES;
103 Drug B
104 Placebo
108 Drug A
110 Placebo
111 Drug A
;

*	Note:  Both data sets now have a 'SexCd' variable   *;
DATA	WORK.Illus;
	MERGE	WORK.Demog
			WORK.Tx2;
	BY	SubjID;
	RUN;
*	Comprehension Check:  Why are the values of 'SexCd' missing?   *;

*	Another illustration   *;
DATA	WORK.Week0;
	SET	WORK.OutcomeWk0;
	Week = 0;
	RUN;

DATA	WORK.Week6;
	SET	WORK.OutcomeWk6;
	Week = 6;
	RUN;

DATA	WORK.BothWeeks;
	MERGE	WORK.Week0
			WORK.Week6;
	BY	SubjID;
	RUN;
*	Note:  The values for 'Week' are problematic   *;


*	Illustration 7 - Merging data containing non-matches   *; RUN;
*	Note:  By default, a match-merge produces all matches and non-matches (i.e. all observations
			and variables from each data set will be in the final data set)   *;
DATA	WORK.Screened; * Creating data for the illustration *;
	INFILE	DATALINES;
	INPUT	SubjID
			Name	$	5-21
			Phone	$	23-36;
	DATALINES;
101 Garcia, Angela    (303) 532-0171
102 Williams, Matt    (720) 331-3279
103 Wilson, Ruth      (303) 667-7141
104 Hall, Sharon      (303) 887-7077
105 Miller, Linda     (720) 840-3021
106 Clark, Anthony    (303) 315-7395
107 White, Joseph     (720) 938-9511
108 Rodriguez, Amanda (720) 558-0162
109 Moore, Melissa    (720) 206-7682
;

DATA	WORK.Illus;
	MERGE	WORK.Screened
			WORK.Demog;
	BY	SubjID;
	RUN;


*	Illustration 8 - How SAS processes a match-merge   *; RUN;
*	Prior:  SAS puts a tracking pointer at the first value of each data set's BY variable(s)
	Step 0:  SAS compiles the DATA step, creates the PDV, and initializes all variables in the PDV to missing
	Step 1:  SAS checks whether the values of the BY variable(s) match
	Step 2:  If Yes, the observations are read into the PDV in the order the data sets are listed
			 If No, SAS selects the lowest value of the BY variable(s) and
				A) Writes the values from that data set into the PDV
				B) Assigns missing values to the variables from the other data set(s)
				C) Writes the contents of the PDV to the output data set
	Step 3:  SAS moves to the next observation in each data set that just contributed an observation
	Step 4:  SAS checks to see if BOTH values of the BY-variable(s) are different than what is in the PDV
			 If No, the values in the PDV are retained and
				A) SAS writes the values into the PDV from the data set(s) with the same BY-values as
					previously in the PDV, and returns to Step 3
			 If Yes, the contents of the PDV are re-initialized to missing (return to Step 1)

	SAS continues until all observations from all contributing data sets has been processed   *;


*	Illustration 9 - Understanding IN= temporary variables   *; RUN;
*	Note:  Like all temporary and automatic variables, these variable are only in the PDV   *;
*	Note:  The IN= temporary variables may be given any name not already used   *;
*	Note:  Values of the temporary variables are 1 if the data set contributes to the current observation
			(and 0 if not)   *;
*	Note:  Although most often used with the MERGE statement, IN= may also be used with other methods for
			reading data sets (SET, UPDATE, APPEND, etc.)   *;
DATA	WORK.Illus;
	MERGE	WORK.Screened	(IN = InScreened)
			WORK.Demog		(IN = InDemog)	;
	BY	SubjID;

	PUT	_ALL_;

	RUN;


*** ADD AN ILLUSTRATION HERE WHERE JUST ONE IN= DATA SET OPTION IS NEEDED!   *********; RUN;
*** ADD AN ILLUSTRATION HERE WHERE JUST ONE IN= DATA SET OPTION IS NEEDED!   *********; RUN;
*** ADD AN ILLUSTRATION HERE WHERE JUST ONE IN= DATA SET OPTION IS NEEDED!   *********; RUN;
*** ADD AN ILLUSTRATION HERE WHERE JUST ONE IN= DATA SET OPTION IS NEEDED!   *********; RUN;


*	Illustration 10 - Using IN= temporary variables to control which observations to keep   *; RUN;
*	Goal:  Create a data set of screened subjects who did not participate in the study   *;
*	Hint:  Use the IN= temporary variable(s) with a subsetting IF statement   *;
DATA	WORK.Illus	(	KEEP	= SubjID Name Phone	);
	MERGE	WORK.Screened	(IN = InScreened)
			WORK.Demog		(IN = InDemog)	;
	BY	SubjID;
	IF	InScreened	= 1	AND	InDemog = 0;
	RUN;

*	Goal:  Create a data set of all observations common to both data sets (a.k.a. finding all matches - a common task!)   *;
DATA	WORK.Illus;
	MERGE	WORK.Screened	(IN = InScreened)
			WORK.Demog		(IN = InDemog)	;
	BY	SubjID;
	IF	InScreened	= 1	AND	InDemog = 1;
	RUN;


*	Illustration 11 - How SAS translates values to "True" or "False"   *; RUN;
*	Note:  SAS classifies values of missing and 0 to be "False", all other values are classified as "True"   *;
DATA	WORK.TrueFalse;
	INFILE	DATALINES;
	INPUT	Name	$
			Value	;
	DATALINES;
Allie .
Bill  -1
Chris 0
Dan   1
Ellie 2
Fred  25
Ginny 777
;

DATA	WORK.True;
	SET	WORK.TrueFalse;
	IF	Value;
	RUN;

DATA	WORK.False;
	SET	WORK.TrueFalse;
	IF	NOT Value;
	RUN;


*	Illustration 12 - Alternative syntax for selecting observations based on the IN= temporary variables   *; RUN;
*	SAS uses the "True" or "False" paradigm for selecting the values   *;
DATA	WORK.Illus	(	KEEP	= SubjID Name Phone	);
	MERGE	WORK.Screened	(IN = InScreened)
			WORK.Demog		(IN = InDemog)	;
	BY	SubjID;
	IF	InScreened AND	NOT InDemog;
	* Technically translated to "IF InScreened is anything other than 0 or missing, and InDemog is 0 or missing";
	RUN;

DATA	WORK.Illus;
	MERGE	WORK.Screened	(IN = InScreened)
			WORK.Demog		(IN = InDemog)	;
	BY	SubjID;
	IF	InScreened AND InDemog;
	* Technically translated to "IF	both InScreened and InDemog are anything other than 0 or missing";
	RUN;



*	SECTION 1.3.4.2 - ONE-TO-MANY MATCH MERGE   *; RUN;
*	Note:  SAS processes every match-merge in the same way (whether a 1-to-1 or 1-to-many)
	Think:  SAS has no way of knowing ahead of time whether it is 1-to-1 or 1-to-many!   *;
*	Note:  A one-to-many match merge cannot be performed without a BY statement   *;

DATA	WORK.AEs; * Data for the illustrations *;
	INFILE	DATALINES;
	INPUT	@1	SubjID
			@5	StartDt	MMDDYY10.
			@16	AEDesc	$11.	;
	FORMAT	StartDt	MMDDYY10.;
* Ruler  1    1    2    2    3    3    4    4    5    5
1---5----0----5----0----5----0----5----0----5----0----5;
	DATALINES;
104 2/24/2016  Pain
104 2/26/2016  Mouth Sores
104 2/26/2016  Fatigue
104 3/24/2016  Dyspnea
110 4/12/2016  Mouth Sores
111 6/12/2016  Pain
111 6/26/2016  Fatigue
;


*	Illustration 1 - Using a one-to-many match-merge   *; RUN;
*	Task:  Determine the AEs connected with each treatment   *;
*	Note:	The data set WORK.Tx has 1 row per value of 'SubjID'
			The data set WORK.AEs has 1, 2, and 4 (and 0) rows per value of 'SubjID'
			Therefore, this is a "one-to-many" merge   *;
DATA	WORK.Illus;
	MERGE	WORK.Tx
			WORK.AEs;
	BY	SubjID;
	RUN;

*	Extension:  Create a count of the AEs by each treatment group   *;
DATA	WORK.AESummary;
	MERGE	WORK.Tx
			WORK.AEs	(IN = InAEs);
	BY	SubjID;
	IF	InAEs	= 1;
	RUN;

PROC SORT	DATA = WORK.AESummary;
	BY	TxGrp SubjID;
	RUN;

DATA	WORK.AEFinalSummary	(	KEEP = TxGrp AECnt SubjCnt	);
	SET	WORK.AESummary;
	BY	TxGrp SubjID;

	IF	FIRST.TxGrp	= 1	THEN DO;
		AECnt	= .;
		SubjCnt	= .;
	END;

	* This sums the number of AEs within each value of 'TxGrp' *;
	AECnt + 1;

	* This sums the number of subjects within each value of 'TxGrp' *;
	IF	FIRST.SubjID = 1	THEN	SubjCnt + 1;

	IF	LAST.TxGrp;

	LABEL	TxGrp	= 'Treatment Group'
			AECnt	= 'Number of Adverse Events'
			SubjCnt	= 'Number of Subjects with an AE';

	RUN;



*	SECTION 1.3.4.3 - ADDITIONAL CONSIDERATIONS  *; RUN;


*	Illustration 1 - Match-merging data sets lacking a common variable   *; RUN;
*	Note:  This is a different problem than all having different variable names for a common variable   *; 
DATA	WORK.TxInfo; * Creating data for the illustration *;
	INFILE	DATALINES;
	INPUT	TxGrp	$	1-7
			Drug	$	9-19
			BrandNm	$	21-30
			DoseVal
			Units	$	35-39;
	DATALINES;
Placebo saline                 .   .
Drug A  paclitaxel  Taxol      155 mg/m2
Drug B  doxorubicin Adriamycin 50  mg/m2
;

*	Task:  Create a data set containing the name of each subject and the drug they were treated with   *;
*	The data sets below contain 'Name' and 'Drug'.  How can we merge them?
	Screened:	SubjID, Name, Phone
	TxInfo:		TxGrp, Drug, BrandNm, DoseVal, Units

	Another data set we have is:
	Tx:			SubjID, TxGrp

	Strategy:
	1) Merge 'Screened' with 'Tx' by 'SubjID' to get 'Name' and 'TxGrp' in the same data set
	2) Sort the new data and 'TxInfo' by 'Drug'
	3) Merge the new data set and 'TxInfo' by 'Drug'

*	Step 1:  Merging 'Screened' with 'Tx' by 'SubjID'   *;
DATA	WORK.Name;
	MERGE	WORK.Screened	(DROP = Phone)
			WORK.Tx			(IN = InTx);
	BY	SubjID;
	IF	InTx	= 1;
	RUN;

*	Step 2:  Sort 'Name' and 'TxInfo' by 'Drug'   *;
PROC SORT	DATA = WORK.Name;
	BY	TxGrp;
	RUN;

PROC SORT	DATA = WORK.TxInfo;
	BY	TxGrp;
	RUN;

*	Step 3:  Merge 'Name' and 'TxInfo' by 'Drug'   *;
DATA	WORK.NameDrug;
	MERGE	WORK.Name	(IN = InName)
			WORK.TxInfo;
	BY	TxGrp;
	IF	InName	= 1;
	RUN;

*	Step 4:  Sort the data as desired   *;
PROC SORT	DATA = WORK.NameDrug;
	BY	SubjID;
	RUN;

*	Note:  PROC SQL could accomplish this in a single step!   *;


*	Illustration 2 - Using multiple MERGE statements    *; RUN;
*	Note:  Multiple MERGE statements may be used   *;
DATA	WORK.Illus;
	MERGE	WORK.Tx;
	MERGE	WORK.Demog;
	RUN;
*	Note:  The results are the same as when a single MERGE statement was used (Illustration 3 above)   *;
*	The point is to contrast this to when multiple SET statements are used (next)   *;


*	Illustration 3 - Using multiple SET statements   *; RUN;
DATA	WORK.Hitting1958; * Creating data sets for the illustrations *;
	INFILE	DATALINES;
	RETAIN	Season	1958;
	INPUT	Player	$
			R
			HR
			RBI		;
	DATALINES;
Aaron   109 30  95
Banks   119 47 129
Colavito 80 41 113
Mantle  127 42  97
Mays    121 29  96
;

DATA	WORK.Hitting1959;
	INFILE	DATALINES;
	RETAIN	Season	1959;
	INPUT	Player	$
			HR
			RBI
			SB		;
	DATALINES;
Aaron   39 123 8
Banks   47 129 2
Mathews 46 114 2
;

*	Recall:  Concatenating ("stacking") data using a single SET statement   *;
DATA	WORK.AllHitting;
	SET	WORK.Hitting1958
		WORK.Hitting1959;
	RUN;

*	Observe the result when using multiple SET statements   *;
DATA	WORK.Illus;
	SET	WORK.Hitting1958;
	SET	WORK.Hitting1959;
	RUN;
*	Note:  Most likely the result is not what was desired, yet no ERROR messages in the log   *;
*	NB:  When SAS executes each SET statement, it brings the Nth (e.g. 1st, 2nd, etc.) observation
			from EACH data set into the single PDV.
			The consequence is that variables named the same in both data sets will end up with the
			most recently imported value!   *;
*	NB:  SAS will stop processing when it encounters the first end-of-file marker.
			The consequence is that the final data set will contain the number of observations
			found in the smaller of all data sets used!   *;
*	Conclusion:  Unlike with MERGE, multiple SET statements don't perform like a single SET statement   *;


*	Illustration 4 - Using multiple SET statements to merge an observation with a data set   *; RUN;
DATA	WORK.Basketball; * Creating data for the illustration *;
	INFILE	DATALINES;
	INPUT	Player	$
			Points	;
	DATALINES;
Chloe   16
Claire  4
Callie  14
Caden   12
Caleb   3
;

*	Task:  Calculate the percent of the team's points each player scored   *;

*	First the total points for each team needs to be calculated   *;
*	Note:  Oftentimes, summary data would be the output from another procedure (e.g. PROC MEANS)   *;
DATA	TeamTotal	(	KEEP = TotalPoints	);
	SET	WORK.Basketball	END	= LastObs;
	TotalPoints + Points;
	IF	LastObs	= 1;
	RUN;

*	Now the total points needs to be merged with the individual data to calculate percentages   *;
*	Approach 1 - Using multiple SET statements   *;
DATA	WORK.Statistics;
	SET	WORK.Basketball;
	SET	WORK.TeamTotal;
	RUN;
*	Recall:  The number of obsesrvations in the final data set will be equal to the number
		in the smaller data set   *;

*	Approach 2 - Using multiple SET statements and restrict the smaller data set to import when _N_ = 1   *;
DATA	WORK.Statistics;
	SET	WORK.Basketball;
	IF	_N_ = 1	THEN	SET	WORK.TeamTotal;

	Percent	= Points / TotalPoints;

	FORMAT	Percent	PERCENT5.;

	RUN;
*	Recall:  Values imported through the SET statement are automatically retained in the PDV.
				This is why the values read from the summary data set populate each observation!
*	This approach worked great!   *;

*	Approach 3 - Using a MERGE statement   *;
DATA	WORK.Statistics;
	MERGE	WORK.Basketball
			WORK.TeamTotal;
	RUN;

*	Approach 4 - Using a match-merge   *;
*	We can't even try this because there is not a common BY variable!   *;

*	Conclusion:  In this situation, approach 2 is the only approach that accomplishes the task   *;

*	Extension:  Let's accomplish the same task, but with multiple teams   *;
DATA	WORK.Basketball; * Creating data for the illustration *;
	INFILE	DATALINES;
	INPUT	Team	$
			Player	$
			Points	;
	DATALINES;
Cobras  Chloe   16
Cobras  Claire  4
Cobras  Callie  14
Cobras  Caden   12
Cobras  Caleb   3
Lynx    Lucas   2
Lynx    Layla   5
Lynx    Lily    4
Lynx    Lucy    9
Lynx    Logan   16
;

DATA	TeamTotals	(	KEEP	=	Team TotalPoints	);
	SET	WORK.Basketball;
	BY	Team;

	IF	FIRST.Team	= 1	THEN	TotalPoints = .;

	TotalPoints + Points;

	IF	LAST.Team	= 1;

	RUN;

*	Approach 1 - Using multiple SET statements   *;
DATA	WORK.Statistics;
	SET	WORK.Basketball;
	SET	WORK.TeamTotals;
	RUN;

*	Approach 2 - Using multiple SET statements and restrict the smaller data set to import when _N_ <= 2   *;
DATA	WORK.Statistics;
	SET	WORK.Basketball;
	IF	_N_ <= 2	THEN	SET	WORK.TeamTotals;

	Percent	= Points / TotalPoints;

	FORMAT	Percent	PERCENT5.;

	RUN;

*	Approach 3 - Using a MERGE statement   *;
DATA	WORK.Statistics;
	MERGE	WORK.Basketball
			WORK.TeamTotals;
	RUN;

*	Approach 4 - Using a match-merge   *;
DATA	WORK.Statistics;
	MERGE	WORK.Basketball
			WORK.TeamTotals;
	BY	Team;

	Percent	= Points / TotalPoints;

	FORMAT	Percent	PERCENT5.;

	RUN;

*	Conclusion:  In this situation, approach 4 is the only approach that accomplishes the task   *;

*	Strategy:
	If there is a variable that links the data sets, use a match-merge
		(i.e. use both MERGE and BY statements)
	If there is not a variable that links the data set to a 1-observation data set (e.g. summary statistics),
		use multiple SET statements (but restrict the smaller data set with IF _N_ = 1 ...   *;


*	Illustration 5 - The BY variable must have the same name to match-merge data sets   *; RUN;
DATA	WORK.TeamTotals; * Creating data for the illustration *;
	INFILE	DATALINES;
	INPUT	ClubName	$
			TotalPoints	;
	DATALINES;
Cobras 49
Lynx   36
;

*	Goal:  Perform the same merge as Approach 4 above   *;
*	Approach 1 - Using the existing variable names   *;
DATA	WORK.Statistics;
	MERGE	WORK.Basketball
			WORK.TeamTotals;
	BY	Team;
	RUN;

*	Approach 2 - Renaming the BY variable to have consistentn   *;
DATA	WORK.Statistics;
	MERGE	WORK.Basketball
			WORK.TeamTotals	(	RENAME	= (	ClubName	= Team	)
							);
	BY	Team;

	Percent	= Points / TotalPoints;

	FORMAT	Percent	PERCENT5.;

	RUN;



;	*';	*";	*/;	QUIT;	RUN;
*	End of Program   *; RUN;

