*************	P	R	O	G	R	A	M		H	E	A	D	E	R	*****************
*****************************************************************************************
*																						*
*	PROGRAM:	1.2.4 - DO Loops - Program.sas                                          *
*	PURPOSE:	Illustrate material in Section 1.2.4                                    *
*	AUTHOR:		Jud Blatchford															*
*	CREATED:	2016-09-26																*
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



*	SECTION 1.2.4.0 - RECALL:  DO GROUPS   *; RUN;

*	A DO group is a group of statements which are all executed when the "IF" condition is true   *;



*	SECTION 1.2.4.1 - CONSTRUCTING DO LOOPS   *; RUN;

*	Illustration 1 - Syntax for a DO loop   *; RUN;
/*	DO index-variable = specification; * This (1) starts the DO loop, and (2) sets the condition for exiting the loop *;
		SAS statements;
	END;	*/ * This is the bottom of the loop *;

*	Illustration 2 - How SAS processes the DO loop   *; RUN;
DATA	WORK.Illus;
	DO	X	= 1 TO 3;
		Y	= X**2;
		PUT	_ALL_; * Writes the values at the bottom of each loop to the log *;
	END;
	*	Note:  i = 4 in the output data set because:
				1) SAS increments the index value at the bottom of the loop
				2) Goes to the top of the loop, and
				3) THEN tests if the index value meets the specification!
			If it is out of the specified range, SAS exits the DO loop.
			So the index value will always be out of range when the DO loop stops executing!		*;
	*	Note:  There is still an implicit OUTPUT statement at the end of the DATA step   *;
	RUN;

*	Illustration 3 - Using explicit OUTPUT statements   *; RUN;
DATA	WORK.Illus;
	DO	X = 1 TO 10;
		Y	= X**2;
		OUTPUT;
	END;
	*	Note:  The implicit OUTPUT step is no longer in effect because we have defined an explicit OUTPUT!   *;
	RUN;

*	Comprehension Check:  How many observations will the output data set contain?   *;
DATA	WORK.Illus;
	DO	X = 1 TO 10;
		Y	= X**2;
		PUT	_ALL_;
		OUTPUT;
	END;
	OUTPUT;
	RUN;

*	Illustration 4 - Creating variable values using a DO loop   *; RUN;
DATA	WORK.Illus;
	DO	i = 1 TO 12;
		Month = i;
		OUTPUT;
	END;
	DROP	i;
	RUN;

*	Illustration 5 - Setting index variable values to anything desired   *; RUN;
DATA	WORK.Illus;
	DO	Year = 1995 TO 2015;
		OUTPUT;
	END;
	RUN;

*	Illustration 6 - Specifying optional BY index-variable option   *; RUN;
*	Goal:  Generate a list of years for the modern olympics   *;
DATA	WORK.Illus;
	DO	Year = 1896 TO 2016 BY 4;
		OUTPUT;
	END;
	RUN;

*	Illustration 7 - Specifying an item list   *; RUN;
*	Note:  When there are no more items in the list, SAS stop executing the DO loop   *;
DATA	WORK.Illus;
	DO	Year = 2010, 2011, 2012, 2013, 2014;
		YrsSince2009 = Year - 2009;
		OUTPUT;
	END;
	RUN;

*	Illustration 8 - Item lists don't need to be ordered   *; RUN;
DATA	WORK.Illus;
*	Note:  Increasing order is not required   *;
	DO	Year = 1906, 2001, 1998, 1954;
		YrOfMLB	= Year - 1876 + 1;
		OUTPUT;
	END;
	RUN;

*	Illustration 9 - Item lists may be character   *; RUN;
*	Note:  Alphabetical order is not required   *;
DATA	WORK.Illus;
	DO	Day = 'Mon', 'Tue', 'Wed', 'Thu', 'Fri';
		OUTPUT;
	END;
	RUN;

*	Illustration 10 - Loop start, end, and increment conditions may be anything   *; RUN;
DATA	WORK.Illus;
	DO	i = 4 TO 25 BY 8;
		LoopCnt + 1;
		OUTPUT;
	END;
	RUN;

*	Illustration 11 - Flexibility in stating index values   *; RUN;
DATA	WORK.Illus;
	DO	i = 2, 7, 8, 10 TO 30 BY 5, -16, 35;
		LoopCnt + 1;
		OUTPUT;
	END;
	RUN;

*	Illustration 12 - Loops may decrement   *; RUN;
DATA	WORK.Illus;
	DO	i = 9 TO 4 BY -2;
		LoopCnt + 1;
		OUTPUT;
	END;
	RUN;

*	Illustration 13 - Loop specification must be true (make sense) to start the loop   *; RUN;
DATA	WORK.Illus;
	DO	i = 9 TO 4 BY 1;
		LoopCnt + 1;
		OUTPUT;
	END;
	*	SAS thinks:
		1.  I'm going up (because of the +1 increment)
		2.	I'm going to stop at 4 (because of the end point specified)
		3.	I'm starting at 9
		Conclusion:  I'm already past the stopping point, therefore I don't need to execute!	*;	
	RUN;

*	Illustration 14 - The index variable value may be changed within the loop (not recommended)   *; RUN;
*	Note:  This can be confusing (need a good reason to do something like this!)   *;
*	Note:  The ending value of i is beyond 16 (the typical value of i when SAS exits the loop)   *;
DATA	WORK.Illus;
	DO	i = 1 TO 15 BY 1;
		LoopCnt + 1;
		i = i + LoopCnt;
		OUTPUT;
	END;
	RUN;

*	Illustration 15 - Using a DO loop to save repetitive statements   *; RUN;
*	Goal:  Calculate the total interest earned when money is compounded monthly for 1 year   *;
DATA	WORK.Illus;
	StartingAmt		= 1000;
	InterestRate	= 0.12;
	Interest	+ (StartingAmt + Interest)*InterestRate/12;
	Interest	+ (StartingAmt + Interest)*InterestRate/12;
	Interest	+ (StartingAmt + Interest)*InterestRate/12;
	Interest	+ (StartingAmt + Interest)*InterestRate/12;
	Interest	+ (StartingAmt + Interest)*InterestRate/12;
	Interest	+ (StartingAmt + Interest)*InterestRate/12;
	Interest	+ (StartingAmt + Interest)*InterestRate/12;
	Interest	+ (StartingAmt + Interest)*InterestRate/12;
	Interest	+ (StartingAmt + Interest)*InterestRate/12;
	Interest	+ (StartingAmt + Interest)*InterestRate/12;
	Interest	+ (StartingAmt + Interest)*InterestRate/12;
	Interest	+ (StartingAmt + Interest)*InterestRate/12;
	RUN;

DATA	WORK.Efficient;
	StartingAmt		= 1000;
	InterestRate	= 0.12;
	DO	i = 1 TO 12;
		Interest	+ ((StartingAmt + Interest)*InterestRate/12);
	END;
	RUN;	

*	Point to remember:  What makes a DO loop extremely useful is it's ability to perform the same
		operation repetitively, once for each value of the index variable.
		The value will be more apparent when DO loops are combined with arrays (1.2.5)!	*;

*	Illustration 16 - Using a DO loop with an input data set   *; RUN;
*	Goal:  Compare interest earned over 5 years for a range of interest rates   *;
DATA	WORK.Scenarios;
	INFILE	DATALINES;
	INPUT	ScenarioNum
			InterestRate;
	DATALINES;
1 0.03
2 0.04
3 0.05
4 0.06
5 0.07
;

DATA	WORK.RateResults;
	RETAIN	ScenarioNum StartingAmt Years InterestRate;
	SET	WORK.Scenarios;

	Interest	= 0; * Sets interest to 0 at the start of each DATA step iteration *;
	StartingAmt	= 1000;
	Years	= 5;
	DO	i = 1 TO 12*Years; * Note:  The end value can be an expression *;
		Interest	+ ((StartingAmt + Interest)*InterestRate/12);
	END;
	DROP	i; * What value would i have if we kept it? *;
	FORMAT	StartingAmt Interest	DOLLAR9.2;
	RUN;	



*	SECTION 1.2.4.2 - CONDITIONALLY EXECUTING DO LOOPS   *; RUN;

*	Illustration 1 - Using the DO UNTIL statement   *; RUN;
*	SAS executes the loop until the condition specified in the expression is true   *;
*	Note:  SAS evaluates the condition at the bottom of the DO loop
			Therefore, SAS will always execute a DO UNTIL loop at least once
			Be careful not to write an expression that never becomes true (you'll have an infinite loop!)	*;
*	Goal:  Determine how many months it would take to earn $1,000 in interest   *;
DATA	WORK.Illus;
	StartingAmt		= 1000;
	InterestRate	= 0.12;
	DO UNTIL (Interest >= 1000);
		Interest	+ ((StartingAmt + Interest)*InterestRate/12);
		OUTPUT;
	END;
	FORMAT	Interest	DOLLAR9.2;
	RUN;	
*	Note:  There is no longer an index variable created   *;

*	Adding a variable to count loops (if that is what you are trying to answer!)	*;
DATA	WORK.Illus;
	StartingAmt		= 1000;
	InterestRate	= 0.12;
	DO UNTIL (Interest >= 1000);
		Interest	+ ((StartingAmt + Interest)*InterestRate/12);
		Month	+ 1;
		OUTPUT;
	END;
	FORMAT	Interest	DOLLAR9.2;
	RUN;	

*	Illustration 2 - Using the DO WHILE statement   *; RUN;
*	SAS executes the loop while the expression is true   *;
*	Note:  SAS evaluates the condition at the top of the DO loop
			Therefore, if the expression is initially false, SAS will never execute the DO WHILE loop
			Be careful not to write an expression that always stays true (you'll have an infinite loop!)	*;
*	Goal:  Determine how many months it would take to earn $1,000 in interest   *;
DATA	WORK.Illus;
	StartingAmt		= 1000;
	InterestRate	= 0.12;
	DO WHILE (Interest < 1000);
		Interest	+ ((StartingAmt + Interest)*InterestRate/12);
		Month	+ 1;
		OUTPUT;
	END;
	FORMAT	Interest	DOLLAR9.2;
	RUN;	

*	Illustration 3 - Combining an iterative DO loop with a conditional clause   *; RUN;
*	This can help prevent the occurrence of an infinite loop   *;
*	Combining with a DO UNTIL clause   *;
DATA	WORK.DOUNTIL_AllObs;
	StartingAmt		= 1000;
	InterestRate	= 0.12;
	DO Month = 1 TO 100	UNTIL (Interest >= 1000);
		Interest	+ ((StartingAmt + Interest)*InterestRate/12);
		OUTPUT;
	END;
	FORMAT	Interest	DOLLAR9.2;
	RUN;	

*	Combining with a DO WHILE clause   *;
DATA	WORK.DOWHILE_AllObs;
	StartingAmt		= 1000;
	InterestRate	= 0.12;
	DO Month = 1 TO 100 WHILE (Interest < 1000);
		Interest	+ ((StartingAmt + Interest)*InterestRate/12);
		OUTPUT;
	END;
	FORMAT	Interest	DOLLAR9.2;
	RUN;	

*	Illustration 4 - Comparing DO UNTIL and DO WHILE results   *; RUN;
*	Only the final observation (i.e. total interest accumulated) will be kept   *;
*	Using the DO UNTIL statement   *;
DATA	WORK.DOUNTIL_LastObs;
	StartingAmt		= 1000;
	InterestRate	= 0.12;
	DO Month = 1 TO 100	UNTIL (Interest >= 1000);
		Interest	+ ((StartingAmt + Interest)*InterestRate/12);
	END;
	FORMAT	Interest	DOLLAR9.2;
	RUN;	

*	Using the DO WHILE statement   *;
*	NB:  DO WHILE increments the index value, THEN tests the condition at the top of the loop   *;
DATA	WORK.DOWHILE_LastObs;
	StartingAmt		= 1000;
	InterestRate	= 0.12;
	DO Month = 1 TO 100 WHILE (Interest < 1000);
		Interest	+ ((StartingAmt + Interest)*InterestRate/12);
	END;
	FORMAT	Interest	DOLLAR9.2;
	RUN;	



*	SECTION 1.2.4.3 - NESTING DO LOOPS   *; RUN;

*	Illustration 1 - Nesting 2 DO loops   *; RUN;
*	Note:  Each DO statement needs a corresponding END statement   *;
DATA	WORK.Illus;
	DO i = 1 TO 3; * Outer loop executes 3 times *;
		DO j = 1 TO 5; * Inner loop executes 5 times per outer loop (15 times total) *;
			OUTPUT;
			PUT	_ALL_; * Every observation is created within a single iteration of the DATA step *;
		END;
	END;
	RUN;

*	Illustration 2 - Nesting 2 DO loops to create all months nested within a sequence of years   *; RUN;
PROC FORMAT;
	VALUE	MonNm	1	= 'January'
					2	= 'February'
					3	= 'March'
					4	= 'April'
					5	= 'May'
					6	= 'June'
					7	= 'July'
					8	= 'August'
					9	= 'September'
					10	= 'October'
					11	= 'November'
					12	= 'December'	;
	RUN;

DATA	WORK.Illus;
	DO Year = 2017 TO 2020;
		DO	Month = 1 TO 12;
			OUTPUT;
		END;
	END;
	FORMAT	Month MonNm.;
	RUN;

*	Illustration 3 - Nesting 3 DO loops to create a template for study visits   *; RUN;
*	Scenario:	1)	The study will be conducted at 4 sites
				2)	The study will enroll 12 subjects per site
				3)	Each subject will have a baseline visit (Month 0) and monthly follow-up visits for 6 months	*;
*	Use Alt + [ (or ]) to toggle between DO and END keywords (to check if each "DO" has a matchind "END")!   *;
PROC FORMAT;
	VALUE	SiteCd
				1	= 'University of Colorado'
				2	= 'Baylor Medical Center'
				3	= 'Dana Farber Cancer Institute'
				4	= 'Mayo Clinic';
	RUN;

DATA	WORK.Illus;
	ATTRIB	SiteCd		LABEL = 'Study Site'	FORMAT = SiteCd.
			USubjID		LABEL = 'Subject ID'
			VisitMon	LABEL = 'Visit Month'	;
	DO	SiteCd	=	1 TO 4;
		DO	USubjID	= SiteCd*100 + 1	TO	SiteCd*100 + 12;
			DO	VisitMon	= 0 TO 6;
				OUTPUT;
			END;
		END;
	END;
	RUN;



;	*';	*";	*/;	QUIT;	RUN;
*	End of Program   *; RUN;

