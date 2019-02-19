*************	P	R	O	G	R	A	M		H	E	A	D	E	R	*****************
*****************************************************************************************
*																						*
*	PROGRAM:	1.3.3 - Combining Data Vertically - Program.sas                         *
*	PURPOSE:	Illustrate material in Section 1.3.3                                    *
*	AUTHOR:		Jud Blatchford															*
*	CREATED:	2016-11-11																*
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



*	SECTION 1.3.3.1 - CONCATENATING DATA SETS   *; RUN;

*	Concatenating data is most often performed when the data sets contain the same variables   *;

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

DATA	WORK.Hitting1960;
	INFILE	DATALINES;
	RETAIN	Season	1960;
	INPUT	Player	$
			HR
			RBI		;
	DATALINES;
Aaron   40 126
Banks   41 117
Mantle  40  96
Maris   39 112
;

*	Illustration 1 - Using the SET statement to concatenate data sets   *; RUN;
*	Note:  The order of observations in the output data set is determined by the order in the SET statement   *;
*	Note:  SAS initializes the PDV to missing at the start of reading EACH data set
			This is why the value of 121 for 'R' isn't retained through the 1959 and 1960 data sets   *;
DATA	WORK.Illus;
	SET	WORK.Hitting1958
		WORK.Hitting1959
		WORK.Hitting1960;
	RUN;

*	Illustration 2 - Using a shortcut for the data set names   *; RUN;
*	Note:  There must be a data set for all numbers between the start and end numbers   *;
DATA	WORK.Illus;
	SET	WORK.Hitting1958 - WORK.Hitting1960;
	RUN;

*	Order may be descending if desired   *;
DATA	WORK.Illus;
	SET	WORK.Hitting1960 - WORK.Hitting1958;
	RUN;
*	Note:  The order of the variables in the PDV is different because of the order in which
			SAS is reading the data sets   *;

*	Name prefix lists also work!   *;
DATA	WORK.Illus;
	SET	WORK.Hit:; * I could've used other prefixes (e.g. H:) as well *;
	RUN;

*	Illustration 3 - Interleaving the observations   *; RUN;
*	Note:  The observations within each data set must be ordered by the BY variable(s)   *;
*	Note:  Within player, observations are in order by year because of how I've ordered
			the data sets in the SET statement   *;
*	Note:  Interleaving is more efficient than stacking and then re-sorting   *;
DATA	WORK.Illus;
	SET	WORK.Hitting1958 - WORK.Hitting1960;
	BY	Player;
	RUN;

*	Illustration 4 - Handling variables with the same meaning but different attributes    *; RUN;
DATA	WORK.Hitting1961; * Creating data for the illustration *;
	INFILE	DATALINES;
	RETAIN	Season	1961;
	INPUT	Name	$	1-9
			HomeRuns
			RBI		;
	DATALINES;
Killebrew 46 122
Maris     61 141
;

*	Approach 1:  Making no changes   *;
DATA	WORK.Illus;
	SET	WORK.Hitting1958 - WORK.Hitting1961;
	RUN;

*	Approach 2:  Renaming variables so those containing the same values match   *;
DATA	WORK.Illus;
	SET	WORK.Hitting1958 - WORK.Hitting1960
		WORK.Hitting1961	(	RENAME	= (	Name		= Player
											HomeRuns	= HR	)
							);
	RUN;
*	Note:  Very close, but "Killebrew" was truncated   *;

*	Approach 3:  Renaming variables and setting the length of 'Player'   *;
DATA	WORK.Illus;
	RETAIN	Season; * Simply to keep it first in the PDV *;
	LENGTH	Player	$ 9;
	SET	WORK.Hitting1958 - WORK.Hitting1960
		WORK.Hitting1961	(	RENAME	= (	Name		= Player
											HomeRuns	= HR	)
							);
	RUN;

*	NB:  Check the attributes of each data set in the concatenation!   *;



;	*';	*";	*/;	QUIT;	RUN;
*	End of Program   *; RUN;

