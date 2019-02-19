*************	P	R	O	G	R	A	M		H	E	A	D	E	R	*****************
*****************************************************************************************
*																						*
*	PROGRAM:	1.3.1 - Sorting Data - Program.sas                                      *
*	PURPOSE:	Illustrate material in Section 1.3.1                                    *
*	AUTHOR:		Jud Blatchford															*
*	CREATED:	2016-11-10																*
*	                                                                                    *
*	COURSE:		BIOS 6680 - Data Management Using SAS                                   *
*	DATA USED:	Instream                                                                *
*	SOFTWARE:	SAS (r) Proprietary Software 9.4 (TS1M2)								*
*	MODIFIED:	DATE		BY	REASON													*
*				----------	---	-------------------------------------------------------	*
*				20YY-MM-DD	PJB															*
*	                                                                                    *
*****************************************************************************************
***********************************************************************************; RUN;



*	SECTION 1.3.1.1 - BASIC SORTS   *; RUN;

*	Illustration 1 - Using PROC SORT   *; RUN;
DATA	WORK.Baseball; * Creating data for the illustration *;
	INFILE	DATALINES;
	INPUT	League	$
			Team	$
			Player	$
			H		;
	DATALINES;
NL  COL LeMahieu 192
NL  WSH Murphy   184
AL  HOU Altuve   216
NL  CIN Votto    181
NL  COL Blackmon 187
NL  ARI Segura   203
AL  BOS Betts    214
AL  BOS Pedroia  201
AL  DET Cabrera  .
AL  LAA Trout    173
AL  BOS Ortiz    169
AL  CLE .        176
;

*	Note 1:  By default, SAS overwrites the data set that is sorted (thus the reason for creating sample data)   *;
*	Note 2:  Missing values are ordered before non-missing values (when using ascending order)   *;
PROC SORT DATA = WORK.Baseball;
	BY	Player;
	RUN;

*	Illustration 2 - A sort must be done before using the BY statement in other procedures    *; RUN;
*	Note:  PROC SORT is the only procedure for which the BY statement is required   *;
*	Goal:  Print the baseball data separately by league   *;

*	Note:  This data is sorted, but not by the correct variable!   *;
PROC PRINT	DATA = WORK.Baseball;
	BY	League; * Variables in the BY statement are called "BY variables" *;
	RUN;

*	Now the data will be sorted by the variable used in the BY statement   *;
PROC SORT	DATA = WORK.Baseball;
	BY	League;
	RUN;

PROC PRINT	DATA = WORK.Baseball;
	BY	League;
	RUN;

*	Illustration 3 - The data can be sorted by additional variables not used in the procedure   *; RUN;
PROC SORT	DATA = WORK.Baseball;
	BY	League Team Player;
	RUN;

PROC PRINT	DATA = WORK.Baseball;
	BY	League;
	RUN;

*	Illustration 4 - Avoid overwriting by using the OUT= option    *; RUN;
*	Note:  It is especially important to not overwrite a "permanent" data set!   *;
PROC SORT
		DATA	= WORK.Baseball
		OUT		= WORK.Alphabetical;
	BY	Player;
	RUN;

*	Illustration 5 - Sorting by multiple variables    *; RUN;
*	Note:  The 2nd variable is sorted within observations with identical values for the 1st variable, and so on   *;
PROC SORT
		DATA	= WORK.Baseball
		OUT		= WORK.Nested;
	BY	League Team Player;
	RUN;

*	Illustration 6 - Sorting in descending order    *; RUN;
*	Note:  The BY statement option "DESCENDING" must precede the desired variable   *;
PROC SORT
		DATA	= WORK.Baseball
		OUT		= WORK.HitsLeaders;
	BY	DESCENDING H;
	RUN;

*	Illustration 7 - DESCENDING only applies to the variable immediately following    *; RUN;
*	Note:  This sorts both character and numeric variables   *;
*	Note:  Numeric missing values are ordered before non-missing non-missing values   *;
PROC SORT
		DATA	= WORK.Baseball
		OUT		= WORK.LeagueHitsLeaders_Wrong;
	BY	DESCENDING League H; * Note:  H is in ascending order *;
	RUN;

*	Note:  Multiple DESCENDING options are required to arrange multiple variables in descending order   *;
PROC SORT
		DATA	= WORK.Baseball
		OUT		= WORK.LeagueHitsLeaders_Right;
	BY	DESCENDING League
		DESCENDING H;
	RUN;



*	SECTION 1.3.1.2 - CHANGING THE SORT ORDER FOR CHARACTER DATA   *; RUN;

*	Illustration 1 - Using the SORTSEQ option to sort character values starting with integers   *; RUN;
*	Note:  I've made the name "Eamon" lower-case for illustration purposes only!   *;
DATA	WORK.Olympics; * Data for the illustrations *;
	INFILE	DATALINES;
	INPUT	Event		$	1-20
			ORHolder	$	21-40
			Country		$	41-53;
* Ruler  1    1    2    2    3    3    4    4    5    5
1---5----0----5----0----5----0----5----0----5----0----5;
	DATALINES;
50 m Freestyle      Cesar Cielo         Brazil
100 m Freestyle     eamon Sullivan      Australia
200 m Freestyle     Michael Phelps      United States
400 m Freestyle     Sun Yang            China
1500 m Freestyle    Sun Yang            China
;

*	Note:  Sorting by strict character values is not always helpful   *;
PROC SORT
		DATA	= WORK.Olympics
		OUT		= WORK.ByEvent;
	BY	Event;
	RUN;

*	Note:  NUMERIC_COLLATION orders integer values by their numeric value   *;
*	Note:  SAS will only look for numbers (e.g. if 1500 had been 1,500 it would've considered it as a 1)   *;
PROC SORT
		DATA	= WORK.Olympics
		OUT		= WORK.ByEvent
		SORTSEQ	= LINGUISTIC (NUMERIC_COLLATION = ON);
	BY	Event;
	RUN;

*	Illustration 2 - Using the SORTSEQ option to sort character values starting with integers   *; RUN;
*	Recall that upper-case letters sort before lower-case letters   *;
PROC SORT
		DATA	= WORK.Olympics
		OUT		= WORK.BySwimmer;
	BY	ORHolder;
	RUN;

PROC SORT
		DATA	= WORK.Olympics
		OUT		= WORK.BySwimmer
		SORTSEQ	= LINGUISTIC (STRENGTH = PRIMARY);
	BY	ORHolder;
	RUN;



*	SECTION 1.3.1.3 - REMOVING DUPLICATES   *; RUN;

*	Illustration 1 - Using the NODUPKEY option   *; RUN;
DATA	WORK.ChemoAEs; * Data for the illustrations *;
	INFILE	DATALINES;
	INPUT	@1	SubjID
			@5	Date	MMDDYY10.
			@17	AEDesc	$20.	;
	FORMAT	Date	MMDDYY10.;
* Ruler  1    1    2    2    3    3    4    4    5    5
1---5----0----5----0----5----0----5----0----5----0----5;
	DATALINES;
95  11/18/2016  Pain
12  3/19/2016   Mouth Sores
70  12/21/2016  Fatigue
12  3/19/2016   Pain
95  9/14/2016   Mouth Sores
95  11/18/2016  Pain
12  6/28/2016   Fatigue
;

*	Note:  NODUPKEY will remove any duplicate observations based on the variables in the BY statement   *;
*	Goal 1:  Create a list of unique subjects who have experienced an Adverse Event (AE)   *;
PROC SORT
		DATA	= WORK.ChemoAEs
		NODUPKEY
		OUT		= WORK.SubjsWithAEs;
	BY	SubjID;
	RUN;

*	Goal 2:  Create a list of unique subject/date combinations   *;
PROC SORT
		DATA	= WORK.ChemoAEs
		NODUPKEY
		OUT		= WORK.SubjAEDates;
	BY	SubjID Date;
	RUN;

*	Goal 3:  Create a data set without any duplicate observations   *;
PROC SORT
		DATA	= WORK.ChemoAEs
		NODUPKEY
		OUT		= WORK.NoDuplicObs;
	BY	_ALL_;
	RUN;

*	Illustration 2 - Using the DUPOUT= option to check the removed observations   *; RUN;
*	Note:  It can help data cleaning to know which subject (or other identifier) contained duplicates   *;
*	Goal 2:  Create a list of unique subject/date combinations   *;
PROC SORT
		DATA	= WORK.ChemoAEs
		NODUPKEY
		OUT		= WORK.SubjAEDates
		DUPOUT	= WORK.DupSubjDates;
	BY	SubjID Date;
	RUN;

*	Illustration 3 - Using the NODUPLICATES option to remove duplicate observations   *; RUN;
*	Note:  The BY variables need to form a primary key (identify rows uniquely)   *;
PROC SORT
		DATA	= WORK.ChemoAEs
		NODUPLICATES		/* Aliases are NODUPREC and NODUP */
		OUT		= WORK.ChemoSorted
		DUPOUT	= WORK.DuplicateObs;
	BY	SubjID Date AEDesc;
	RUN;

*	NB:  If the BY variables don't create a primary key, duplicates WON'T be removed   *;
PROC SORT
		DATA	= WORK.ChemoAEs
		NODUPLICATES
		OUT		= WORK.UniqueObs_No;
	BY	SubjID; * WARNING:  This doesn't create a primary key! *;
	RUN;

*	Illustration 4 - The NODUPLICATES option will remove duplicate observations that are consecutive in the data set   *; RUN;
DATA	WORK.Illus; * Data for the illustration *;
	INFILE	DATALINES;
	INPUT	Team	$
			Player	$	5-15;
	DATALINES;
ARI Goldschmidt
ARI Goldschmidt
WSH Harper
WSH Scherzer
WSH Harper
;

*	NB:  Since Team doesn't create a primary key, only consecutive duplicates will be removed   *;
PROC SORT
		DATA	= WORK.Illus
		NODUPLICATES
		OUT		= WORK.Illus2;
	BY	Team;
	RUN;

*	Illustration 5 - Repeat of illustration 3 with different data   *; RUN;
DATA	WORK.Illus; * Data for the illustration *;
	INFILE	DATALINES;
	INPUT	Team		$
			Nickname	$	5-16;
	DATALINES;
ARI Diamondbacks
WSH Nationals
WSH Nationals
ARI Diamondbacks
;

PROC SORT
		DATA	= WORK.Illus
		NODUPLICATES
		OUT		= WORK.Illus2;
	BY	Team; * Since Team is now a primary key, all dupicate obs will be removed *;
	RUN;


*	ADD TO ILLUSTRATIONS:  DUPLICATE OBSERVATIONS WILL BE REMOVED (WHEN ONE OBSERVATION IS A COMPETE DUPLICATE OF ANOTHER)   *;RUN;

*	Conclusion:  NODUPLICATES must be used knowledgeably to guarantee that duplicates are removed!   *;
*	Advice:  Use the NODUPKEY option   *;



;	*';	*";	*/;	QUIT;	RUN;
*	End of Program   *; RUN;

