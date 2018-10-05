/**************************************************************************
 |                                                                         
 |                    STATA SETUP FILE FOR ICPSR 02760
 |      NATIONAL SURVEY OF MIDLIFE DEVELOPMENT IN THE UNITED STATES
 |                           (MIDUS), 1995-1996
 |              (DATASET 0001: MAIN, SIBLINGS AND TWIN DATA)
 |
 |
 |  Please edit this file as instructed below.
 |  To execute, start Stata, change to the directory containing:
 |       - this do file
 |       - the ASCII data file
 |       - the dictionary file
 |
 |  Then execute the do file (e.g., do 02760-0001-statasetup.do)
 |
 **************************************************************************/

set mem 50m  /* Allocating 50 megabyte(s) of RAM for Stata SE to read the
                 data file into memory. */


set more off  /* This prevents the Stata output viewer from pausing the
                 process */

/****************************************************

Section 1: File Specifications
   This section assigns local macros to the necessary files.
   Please edit:
        "data-filename" ==> The name of data file downloaded from ICPSR
        "dictionary-filename" ==> The name of the dictionary file downloaded.
        "stata-datafile" ==> The name you wish to call your Stata data file.

   Note:  We assume that the raw data, dictionary, and setup (this do file) all
          reside in the same directory (or folder).  If that is not the case
          you will need to include paths as well as filenames in the macros.

********************************************************/

local raw_data "data-filename"
local dict "dictionary-filename"
local outfile "stata-datafile"

/********************************************************

Section 2: Infile Command

This section reads the raw data into Stata format.  If Section 1 was defined
properly, there should be no reason to modify this section.  These macros
should inflate automatically.

**********************************************************/

infile using `dict', using (`raw_data') clear


/*********************************************************

Section 3: Value Label Definitions
This section defines labels for the individual values of each variable.
We suggest that users do not modify this section.

**********************************************************/


label data "National Survey of Midlife Development in the United States (MIDUS), 1995-1996, Main, Siblings and Twin Data"

#delimit ;
label define SAMPLMAJ  1 "MAIN RDD" 2 "SIBLING" 3 "TWIN" 4 "CITY OVERSAMPLES" ;
label define A1STATUS  1 "COMPLETED M1 PHONE ONLY"
                       2 "COMPLETED M1 PHONE AND SAQ" ;
label define A1PBYEAR  9998 "REFUSED" ;
label define A1PAGE_M2 98 "REFUSED" ;
label define A1PRSEX   1 "MALE" 2 "FEMALE" 7 "DONT KNOW" 8 "REFUSED" ;
label define QL2       0 "ZERO" 1 "ONE" 2 "TWO" 3 "THREE" 4 "FOUR" 5 "FIVE"
                       9 "INAPP" ;
label define QL3       0 "ZERO" 1 "ONE" 2 "TWO" 3 "THREE" 4 "FOUR" 5 "FIVE"
                       9 "INAPP" ;
label define HH_CELL   1 "MALE ONLY HH" 2 "FEMALE ONLY HH" 3 "BOTH HH"
                       9 "INAPP" ;
label define NPRB_SEX  35 ".35" 50 ".50" 65 ".65" 100 "1.00" 999 "INAPP" ;
label define SEX_CELL  1 "1 OF GENDER SELECTED IN HH"
                       2 "2 OF GENDER SELECTED IN HH"
                       3 "3 OF GENDER SELECTED IN HH"
                       4 "4 OR MORE OF GENDER SELECTED IN HH" 9 "INAPP" ;
label define NPRB_WHO  20 ".20" 25 ".25" 33 ".33" 34 ".34" 50 ".50"
                       100 "1.00" 999 "INAPP" ;
label define WHO       1 "ONLY MALE, FEMALE" 2 "OLDER MALE, FEMALE"
                       3 "YOUNGER MALE, FEMALE" 4 "OLDEST MALE, FEMALE"
                       5 "2ND OLDEST MALE, FEMALE" 6 "YOUNGEST MALE, FEMALE"
                       7 "MALE, FEMALE-MOST RECENT B-DAY" 9 "INAPP" ;
label define PROB_R    35 ".35" 45 ".45" 50 ".50" 55 ".55" 60 ".60" 65 ".65"
                       70 ".70" 75 ".75" 80 ".80" 90 ".90" 100 "1.00"
                       999 "INAPP" ;
label define MO        1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER" 99 "INAPP" ;
label define DAY       99 "INAPP" ;
label define RECON     1 "RETURNED, SOME/ALL DATA" 2 "RETURNED, NO DATA"
                       3 "NOT RETURNED" 9 "INAPP" ;
label define MO_RCVD   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       13 "JANUARY-1996" 14 "FEBRUARY-1996" 15 "MARCH-1996"
                       16 "APRIL-1996" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define DY_RCVD   98 "REFUSED/MISSING" 99 "INAPP" ;
label define TOT_SIBS  9 "INAPP" ;
label define ZYGCAT    1 "MONOZYGOTIC" 2 "DIZYGOTIC - SAME SEX"
                       3 "DIZYGOTIC - DIFFERENT SEX"
                       4 "UNABLE TO DETERMING ZYGOSITY" ;
label define A1PA4     1 "POOR" 2 "FAIR" 3 "GOOD" 4 "VERY GOOD" 5 "EXCELLENT"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA5     1 "POOR" 2 "FAIR" 3 "GOOD" 4 "VERY GOOD" 5 "EXCELLENT"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA6     1 "MUCH BETTER" 2 "SOMEWHAT BETTER" 3 "ABOUT THE SAME"
                       4 "SOMEWHAT WORSE" 5 "MUCH WORSE" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA7     97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PA7A    1 "PHYSICAL" 2 "MENTAL" 3 "COMBINATION" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA7BA   97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PA7BB   97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PA7BC   97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PA8     97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PA8A    1 "PHYSICAL" 2 "MENTAL" 3 "COMBINATION" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA8BA   97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PA8BB   97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PA8BC   97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PA9     1 "POOR" 2 "FAIR" 3 "GOOD" 4 "VERY GOOD" 5 "EXCELLENT"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA10    1 "POOR" 2 "FAIR" 3 "GOOD" 4 "VERY GOOD" 5 "EXCELLENT"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA11    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA11A   96 "CONGENITAL/AT BIRTH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PA11BA  1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA11BB  1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA11BC  1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA11BD  1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA11BE  1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA11BF  1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA11BG  1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA11BH  1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA11BI  1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA11BJ  1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA11BK  1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA11C   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA11D   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA12    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA12A   7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP"
                       97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PA13    1 "HIGHER" 2 "LOWER" 3 "ABOUT THE SAME" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA13A   1 "A LOT" 2 "SOMEWHAT" 3 "A LITTLE" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA13B   1 "A LOT" 2 "SOMEWHAT" 3 "A LITTLE" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PHRTRS  0 "LOWEST RISK" 1 "LOWER RISK" 2 "LOW RISK"
                       3 "AVERAGE RISK" 4 "HIGH RISK" 5 "HIGHER RISK"
                       6 "HIGHEST RISK" 9 "NOT CALCULATED" ;
label define A1PHRTDX  0 "NOT PERCEIVED AT HIGH RISK"
                       1 "PERCEIVED AT HIGH RISK" 9 "NOT CALCULATED" ;
label define A1PA14    96 "ADOPTED/NOT A BLOOD RELATIVE" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PA15    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA16    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA17    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA18    1 "BYPASS" 2 "MEDICATION" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA19    1 "VERY" 2 "SOMEWHAT" 3 "NOT VERY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA20    1 "BYPASS" 2 "EXERCISE" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA21    1 "VERY" 2 "SOMEWHAT" 3 "NOT VERY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA22    1 "ACCEPT" 2 "SECOND OPINION" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA22A   1 "VERY" 2 "SOMEWHAT" 3 "NOT VERY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA23    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA24    1 "YES" 2 "NO" 3 "CANNOT WALK BECAUSE OF CHEST PAIN"
                       4 "CANNOT WALK FOR OTHER REASONS" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA25    1 "STOP" 2 "SLOW DOWN" 3 "CONTINUE AT THE SAME PACE"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA26    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA27    1 "10 MINUTES OR LESS" 2 "MORE THAN 10 MINUTES"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA28    1 "CENTER OF CHEST" 2 "LEFT SIDE OF CHEST ONLY"
                       3 "LEFT SIDE OF CHEST AND LEFT ARM" 4 "SOMEWHERE ELSE"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PANGIN  0 "BEST ANGINA CLASS" 1 "GOOD ANGINA CLASS"
                       2 "BAD ANGINA CLASS" 3 "WORST ANGINA CLASS"
                       6 "DID NOT MEET ROSE CRITERIA FOR ANGINA"
                       9 "NOT CALCULATED" ;
label define A1PA29    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA29A   97 "97 OR MORE" 898 "REFUSED/MISSING" 997 "DONT KNOW"
                       999 "INAPP" ;
label define A1PA29B   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA29CA  1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA29CB  1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA29CC  1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA29CD  1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA29CE  1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA29CF  1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA29CG  1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA29CH  1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA29CI  1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA29CJ  1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA29CK  1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA33    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA34    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA30    0 "LESS THAN 1 MONTH" 996 "NEVER" 997 "DONT KNOW"
                       998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1PA31    1 "LOW" 2 "ABOUT NORMAL" 3 "SLIGHTLY RAISED" 4 "HIGH"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA32S   997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1PA32D   997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1PA36    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA37    1 "HIGHER" 2 "LOWER" 3 "ABOUT THE SAME" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA37A   1 "A LOT" 2 "SOMEWHAT" 3 "A LITTLE" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA37B   1 "A LOT" 2 "SOMEWHAT" 3 "A LITTLE" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PCACRS  0 "LOWEST RISK" 1 "LOWER RISK" 2 "LOW RISK"
                       3 "AVERAGE RISK" 4 "HIGH RISK" 5 "HIGHER RISK"
                       6 "HIGHEST RISK" 9 "NOT CALCULATED" ;
label define A1PCACDX  0 "NOT PERCEIVED AT HIGH RISK"
                       1 "PERCEIVED AT HIGH RISK" 9 "NOT CALCULATED" ;
label define A1PA38    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA39A   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA39B   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA39C   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA39D   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA39E   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA39F   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA39G   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA39H   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA39I   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA39J   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA41    96 "NEVER HAD A CIGARETTE" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PA40    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA42    97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PA43    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA44    97 "97 OR MORE" 898 "REFUSED/MISSING" 997 "DONT KNOW"
                       999 "INAPP" ;
label define A1PA45    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA46    97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PA47    97 "97 OR MORE" 898 "REFUSED/MISSING" 997 "DONT KNOW"
                       999 "INAPP" ;
label define A1PA52    96 "NEVER HAD A DRINK" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PA53    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA53A   97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PA54    1 "EVERY DAY" 2 "5 OR 6 DAYS A WEEK"
                       3 "3 OR 4 A DAYS A WEEK" 4 "1 OR 2 DAYS A WEEK"
                       5 "LESS THAN ONE DAY A WEEK" 6 "NEVER DRINK"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA54A   1 "3 OR 4 DAYS A MONTH" 2 "1 OR 2 DAYS A MONTH"
                       3 "LESS OFTEN THAN ONE DAY A MONTH" 4 "NEVER DRINK"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA55    97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PA56    97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PA57    1 "YES" 2 "NO" 6 "NOT DEP, ON MEDICATION"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA58    1 "ALL DAY LONG" 2 "MOST OF THE DAY"
                       3 "ABOUT HALF THE DAY" 4 "LESS THAN HALF THE DAY"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA59    1 "EVERY DAY" 2 "ALMOST EVERY DAY"
                       3 "LESS OFTEN THAN THAT" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA60    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA61    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA62    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA62A   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA63    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA63A   1 "EVERY NIGHT" 2 "NEARLY EVERY NIGHT"
                       3 "LESS OFTEN THAN THAT" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA64    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA65    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA66    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PDEPAF  0 "LOWEST DEPRESSED AFFECT"
                       7 "HIGHEST DEPRESSED AFFECT" ;
label define A1PDEPAD  0 "NEGATIVE" 1 "POSITIVE" ;
label define A1PA67    97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PA68MO  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       96 "CURRENTLY FEEL THIS WAY" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PA68YR  94 "1994" 95 "1995" 96 "1996" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PA69    1 "YES" 2 "NO" 6 "NO LOSS OF INTREST, ON MEDICATION"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA70    1 "ALL DAY LONG" 2 "MOST OF THE DAY"
                       3 "ABOUT HALF THE DAY" 4 "LESS THAN HALF THE DAY"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA71    1 "EVERY DAY" 2 "ALMOST EVERY DAY"
                       3 "LESS OFTEN THAN THAT" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA72    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA73    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA73A   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA74    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA74A   1 "EVERY NIGHT" 2 "NEARLY EVERY NIGHT"
                       3 "LESS OFTEN THAN THAT" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA75    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA76    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA77    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PANHED  0 "LOWEST DEPRESSION SCORE/ANHEDONIA"
                       6 "HIGHEST DEPRESSION SCORE/ANHEDONIA" ;
label define A1PANHDX  0 "NEGATIVE" 1 "POSITIVE" ;
label define A1PDEPRE  0 "LOWEST DEPRESSION" 7 "HIGHEST DEPRESSION" ;
label define A1PDEPDX  0 "NEGATIVE" 1 "POSITIVE" ;
label define A1PA78    97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PA79MO  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PA79YR  94 "1994" 95 "1995" 96 "1996" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PA80    1 "MORE" 2 "LESS" 3 "ABOUT THE SAME"
                       6 "DONT WORRY AT ALL" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA80A   1 "A LOT" 2 "SOMEWHAT" 3 "A LITTLE" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA81    1 "EVERY DAY" 2 "JUST ABOUT EVERY DAY" 3 "MOST DAYS"
                       4 "ABOUT HALF THE DAYS" 5 "LESS THAN HALF THE DAYS"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA81A   1 "ALL DAY LONG" 2 "MOST OF THE DAY"
                       3 "ABOUT HALF THE DAY" 4 "LESS THAN HALF THE DAY"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA82    1 "ONE THING" 2 "MORE THAN ONE" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA82A   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA83    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA83A   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA84    1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA84A   1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA85A   1 "MOST DAYS" 2 "ABOUT HALF THE DAYS"
                       3 "LESS THAN HALF THE DAYS" 4 "NEVER" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA85B   1 "MOST DAYS" 2 "ABOUT HALF THE DAYS"
                       3 "LESS THAN HALF THE DAYS" 4 "NEVER" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA85C   1 "MOST DAYS" 2 "ABOUT HALF THE DAYS"
                       3 "LESS THAN HALF THE DAYS" 4 "NEVER" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA85D   1 "MOST DAYS" 2 "ABOUT HALF THE DAYS"
                       3 "LESS THAN HALF THE DAYS" 4 "NEVER" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA85E   1 "MOST DAYS" 2 "ABOUT HALF THE DAYS"
                       3 "LESS THAN HALF THE DAYS" 4 "NEVER" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA85F   1 "MOST DAYS" 2 "ABOUT HALF THE DAYS"
                       3 "LESS THAN HALF THE DAYS" 4 "NEVER" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA85G   1 "MOST DAYS" 2 "ABOUT HALF THE DAYS"
                       3 "LESS THAN HALF THE DAYS" 4 "NEVER" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA85H   1 "MOST DAYS" 2 "ABOUT HALF THE DAYS"
                       3 "LESS THAN HALF THE DAYS" 4 "NEVER" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA85I   1 "MOST DAYS" 2 "ABOUT HALF THE DAYS"
                       3 "LESS THAN HALF THE DAYS" 4 "NEVER" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA85J   1 "MOST DAYS" 2 "ABOUT HALF THE DAYS"
                       3 "LESS THAN HALF THE DAYS" 4 "NEVER" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PANXIE  0 "LOWEST GADCON SCORE" 10 "HIGHEST GADCON SCORE" ;
label define A1PANXTD  0 "NEGATIVE" 1 "POSITIVE" ;
label define A1PA86    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PA87    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA87A   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA88    97 "97 OR MORE" 898 "REFUSED/MISSING" 997 "DONT KNOW"
                       999 "INAPP" ;
label define A1PA89    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA90A   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA90B   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA90C   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA90D   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA90E   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PA90F   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PPANIC  0 "LOWEST PANCON SCORE" 6 "HIGHEST PANCON SCORE" ;
label define A1PPANDX  0 "NEGATIVE" 1 "POSITIVE" ;
label define A1PB1     1 "NO SCHOOL/SOME GRADE SCHOOL"
                       2 "EIGHTH GRADE/ JUNIOR HIGH SCHOOL"
                       3 "SOME HIGH SCHOOL" 4 "GED"
                       5 "GRADUATED FROM HIGH SCHOOL"
                       6 "1 TO 2 YEARS OF COLLEGE, NO DEGREE YET"
                       7 "3 OR MORE YEARS OF COLLEGE, NO DEGREE YET"
                       8 "GRAD 2 YEAR COLLEGE OR VOC SCHOOL, OR ASSOCIATES DEGREE"
                       9 "GRAD 4 OR 5 YEAR COLLEGE OR BACHELORS DEGREE"
                       10 "SOME GRADUATE SCHOOL" 11 "MASTERS DEGREE"
                       12 "PH.D, ED.D, MD, DDS, LLB, LLD, JD, OR OTHER PROF DEGREE"
                       97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PMQB1   1 "SOME GRADE SCHOOL TO GED" 2 "GRADUATED HIGH SCHOOL"
                       3 "SOME COLLEGE (NO BACHELORS DEGREE)"
                       4 "GRAD COLLEGE TO DOCTORATE OR PROFESSIONAL DEGREE"
                       9 "NOT CALCULATED" ;
label define A1PEDUCP  1 "SOME GRADE SCHOOL TO SOME HIGH SCHOOL"
                       2 "GED TO GRADUATED HIGH SCHOOL"
                       3 "SOME COLLEGE (NO BACHELORS DEGREE)"
                       4 "GRAD COLLEGE TO DOCTORATE OR PROFESSIONAL DEGREE"
                       9 "NOT CALCULATED" ;
label define A1PEDU    1 "GRADUATED HIGH SCHOOL OR LESS"
                       2 "SOME COLLEGE OR MORE" 9 "NOT CALCULATED" ;
label define A1PSXEDAG 1 "MALE/LO/YOUNGER" 2 "MALE/LO/MIDDLE"
                       3 "MALE/LO/OLDER" 4 "MALE/HI/YOUNGER"
                       5 "MALE/HI/MIDDLE" 6 "MALE/HI/OLDER"
                       7 "FEMALE/LO/YOUNGER" 8 "FEMALE/LO/MIDDLE"
                       9 "FEMALE/LO/OLDER" 10 "FEMALE/HI/YOUNGER"
                       11 "FEMALE/HI/MIDDLE" 12 "FEMALE/HI/OLDER"
                       99 "NOT CALCULATED" ;
label define A1PB2     96 "NEVER HAD A PAID JOB" 97 "DONT KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define A1PB3A    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB3B    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB3C    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB3D    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB3E    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB3F    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB3G    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB3H    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB3I    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB3J    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB3K    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB5     9996 "NEVER WORKED" 9997 "DONT KNOW" 9998 "REFUSED"
                       9999 "INAPP" ;
label define A1PB4A    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB4B    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB4C    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB4D    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB4E    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB4F    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB4G    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB6     1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB8_2   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB8_3   9997 "DONT KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define A1PB10    1 "HAS EMPLOYER" 2 "SELF-EMPLOYED" 7 "DONT KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define A1POCC    997 "DONT KNOW" 998 "REFUSED/MISSING"
                       999 "INAPP, NO DATA FOR INDIVIDUAL" ;
label define A1PIND    900 "ARMED SERVICES MEMBER" 997 "DONT KNOW"
                       998 "REFUSED/MISSING"
                       999 "INAPP, NO DATA FOR INDIVIDUAL" ;
label define A1PTSEI   98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PTEARN  8 "REFUSE/MISSING" 9 "INAPP" ;
label define A1PTEDU   8 "REFUSE/MISSING" 9 "INAPP" ;
label define A1PFSEI   98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PFEARN  8 "REFUSE/MISSING" 9 "INAPP" ;
label define A1PFEDU   8 "REFUSE/MISSING" 9 "INAPP" ;
label define A1PMSEI   998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1PMEARN  8 "REFUSE/MISSING" 9 "INAPP" ;
label define A1PMEDU   8 "REFUSE/MISSING" 9 "INAPP" ;
label define R_ABSCRE  998 "REFUSED/MISSING" 999 "INAPP" ;
label define R_ATMOSP  98 "REFUSED/MISSING" 99 "INAPP" ;
label define R_BOTH    998 "REFUSED/MISSING" 999 "INAPP" ;
label define R_BUSPR   998 "REFUSED/MISSING" 999 "INAPP" ;
label define R_CLERIC  8 "REFUSE/MISSING" 9 "INAPP" ;
label define R_CLIMB   998 "REFUSED/MISSING" 999 "INAPP" ;
label define R_CLRDIS  8 "REFUSE/MISSING" 9 "INAPP" ;
label define R_COLD    98 "REFUSED/MISSING" 99 "INAPP" ;
label define R_COMMDA  998 "REFUSED/MISSING" 999 "INAPP" ;
label define R_DATAL   8 "REFUSE/MISSING" 9 "INAPP" ;
label define R_DATAPR  8 "REFUSE/MISSING" 9 "INAPP" ;
label define R_DCP     998 "REFUSED/MISSING" 999 "INAPP" ;
label define R_DEPL    998 "REFUSED/MISSING" 999 "INAPP" ;
label define R_ENVIRO  8 "REFUSE/MISSING" 9 "INAPP" ;
label define R_EYHNFT  8 "REFUSE/MISSING" 9 "INAPP" ;
label define R_FIF     998 "REFUSED/MISSING" 999 "INAPP" ;
label define R_FMNHR   98 "REFUSED/MISSING" 99 "INAPP" ;
label define R_FMNYR   99998 "REFUSED/MISSING" 99999 "INAPP" ;
label define R_FNGRDX  8 "REFUSE/MISSING" 9 "INAPP" ;
label define R_FRMPRC  8 "REFUSE/MISSING" 9 "INAPP" ;
label define R_GED     8 "REFUSE/MISSING" 9 "INAPP" ;
label define R_HAZARD  998 "REFUSED/MISSING" 999 "INAPP" ;
label define R_HEAT    98 "REFUSED/MISSING" 99 "INAPP" ;
label define R_INFLU   998 "REFUSED/MISSING" 999 "INAPP" ;
label define R_INTELL  8 "REFUSE/MISSING" 9 "INAPP" ;
label define R_MACHPR  998 "REFUSED/MISSING" 999 "INAPP" ;
label define R_MCHNPR  8 "REFUSE/MISSING" 9 "INAPP" ;
label define R_MEN     9999998 "REFUSED/MISSING" 9999999 "INAPP" ;
label define R_MMNHR   98 "REFUSED/MISSING" 99 "INAPP" ;
label define R_MMNYR   99998 "REFUSED/MISSING" 99999 "INAPP" ;
label define R_MNLDXT  8 "REFUSED/MISSING" 9 "INAPP" ;
label define R_MTRCRD  8 "REFUSED/MISSING" 9 "INAPP" ;
label define R_MVC     998 "REFUSED/MISSING" 999 "INAPP" ;
label define R_NOISE   998 "REFUSED/MISSING" 999 "INAPP" ;
label define R_NUMERC  8 "REFUSED/MISSING" 9 "INAPP" ;
label define R_OBSPRE  998 "REFUSED/MISSING" 999 "INAPP" ;
label define R_OUT     98 "REFUSED/MISSING" 99 "INAPP" ;
label define R_PEOPLE  98 "REFUSED/MISSING" 99 "INAPP" ;
label define R_PEOPRE  998 "REFUSED/MISSING" 999 "INAPP" ;
label define R_PHYSDM  8 "REFUSED/MISSING" 9 "INAPP" ;
label define R_PRODPR  98 "REFUSED/MISSING" 99 "INAPP" ;
label define R_PROTPR  8 "REFUSED/MISSING" 9 "INAPP" ;
label define R_PRSTPR  998 "REFUSED/MISSING" 999 "INAPP" ;
label define R_PUS     98 "REFUSED/MISSING" 99 "INAPP" ;
label define R_REACH   998 "REFUSED/MISSING" 999 "INAPP" ;
label define R_REPCON  98 "REFUSED/MISSING" 99 "INAPP" ;
label define R_ROUTPR  998 "REFUSED/MISSING" 999 "INAPP" ;
label define R_SCINPR  998 "REFUSED/MISSING" 999 "INAPP" ;
label define R_SEE     998 "REFUSED/MISSING" 999 "INAPP" ;
label define R_SJC     998 "REFUSED/MISSING" 999 "INAPP" ;
label define R_SPATIA  8 "REFUSED/MISSING" 9 "INAPP" ;
label define R_STOOP   998 "REFUSED/MISSING" 999 "INAPP" ;
label define R_STRGTH  8 "REFUSED/MISSING" 9 "INAPP" ;
label define R_STS     998 "REFUSED/MISSING" 999 "INAPP" ;
label define R_SVP     98 "REFUSED/MISSING" 99 "INAPP" ;
label define R_TALK    998 "REFUSED/MISSING" 999 "INAPP" ;
label define R_THINGS  98 "REFUSED/MISSING" 99 "INAPP" ;
label define R_TRAIN   998 "REFUSED/MISSING" 999 "INAPP" ;
label define R_VARCH   998 "REFUSED/MISSING" 999 "INAPP" ;
label define R_VERBAL  8 "REFUSED/MISSING" 9 "INAPP" ;
label define R_WET     98 "REFUSED/MISSING" 99 "INAPP" ;
label define R_WOMEN   9999998 "REFUSED/MISSING" 9999999 "INAPP" ;
label define MINDUS_R  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define PROFID_R  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define AGRIC_R   1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define CONSTR_R  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define MANUF_R   1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define TRANSP_R  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define WHOLE_R   1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define RETAIL_R  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define FNANCE_R  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define BUSIN_R   1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define PERSON_R  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define ENTERT_R  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define PUBADM_R  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define MOCCUP_R  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define EXEC_R    1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define PROFOC_R  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define TECH_R    1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define SALES_R   1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define ADMIN_R   1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define SERV_R    1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define FARM_R    1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define CRAFT_R   1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define OPERAT_R  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PB11    997 "DONT KNOW" 998 "REFUSED" 999 "INAPP" ;
label define A1PB11A   0 "ONLY ONE JOB" 97 "DONT KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define A1PB12    997 "DONT KNOW" 998 "REFUSED" 999 "INAPP" ;
label define A1PB14_2  1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB14_3  9997 "9997 PEOPLE OR MORE" 99997 "DONT KNOW"
                       99998 "REFUSED" 99999 "INAPP" ;
label define A1PB16    1 "HAD EMPLOYER" 2 "SELF-EMPLOYED" 7 "DONT KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define A1POCP    997 "DONT KNOW" 998 "REFUSED/MISSING"
                       999 "INAPP, NO DATA FOR INDIVIDUAL" ;
label define A1PINDP   900 "ARMED SERVICES MEMBER" 997 "DONT KNOW"
                       998 "REFUSED/MISSING"
                       999 "INAPP, NO DATA FOR INDIVIDUAL" ;
label define A1PTSEIP  98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PTEARP  8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PTEDUP  8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PFSEIP  98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PFEARP  8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PFEDUP  8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PMSEIP  98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PMEARP  8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PMEDUP  8 "REFUSED/MISSING" 9 "INAPP" ;
label define L_ABSCRE  998 "REFUSED/MISSING" 999 "INAPP" ;
label define L_ATMOSP  98 "REFUSED/MISSING" 99 "INAPP" ;
label define L_BOTH    98 "REFUSED/MISSING" 99 "INAPP" ;
label define L_BUSPR   998 "REFUSED/MISSING" 999 "INAPP" ;
label define L_CLERIC  8 "REFUSED/MISSING" 9 "INAPP" ;
label define L_CLIMB   98 "REFUSED/MISSING" 99 "INAPP" ;
label define L_CLRDIS  8 "REFUSED/MISSING" 9 "INAPP" ;
label define L_COLD    98 "REFUSED/MISSING" 99 "INAPP" ;
label define L_COMMDA  998 "REFUSED/MISSING" 999 "INAPP" ;
label define L_DATAL   8 "REFUSED/MISSING" 9 "INAPP" ;
label define L_DATAPR  8 "REFUSED/MISSING" 9 "INAPP" ;
label define L_DCP     998 "REFUSED/MISSING" 999 "INAPP" ;
label define L_DEPL    998 "REFUSED/MISSING" 999 "INAPP" ;
label define L_ENVIRO  8 "REFUSED/MISSING" 9 "INAPP" ;
label define L_EYHNFT  8 "REFUSED/MISSING" 9 "INAPP" ;
label define L_FIF     998 "REFUSED/MISSING" 999 "INAPP" ;
label define L_FMNHR   98 "REFUSED/MISSING" 99 "INAPP" ;
label define L_FMNYR   99998 "REFUSED/MISSING" 99999 "INAPP" ;
label define L_FNGRDX  8 "REFUSED/MISSING" 9 "INAPP" ;
label define L_FRMPRC  8 "REFUSED/MISSING" 9 "INAPP" ;
label define L_GED     8 "REFUSED/MISSING" 9 "INAPP" ;
label define L_HAZARD  98 "REFUSED/MISSING" 99 "INAPP" ;
label define L_HEAT    98 "REFUSED/MISSING" 99 "INAPP" ;
label define L_INFLU   998 "REFUSED/MISSING" 999 "INAPP" ;
label define L_INTELL  8 "REFUSED/MISSING" 9 "INAPP" ;
label define L_MACHPR  998 "REFUSED/MISSING" 999 "INAPP" ;
label define L_MCHNPR  8 "REFUSED/MISSING" 9 "INAPP" ;
label define L_MEN     9999998 "REFUSED/MISSING" 9999999 "INAPP" ;
label define L_MMNHR   98 "REFUSED/MISSING" 99 "INAPP" ;
label define L_MMNYR   99998 "REFUSED/MISSING" 99999 "INAPP" ;
label define L_MNLDXT  8 "REFUSED/MISSING" 9 "INAPP" ;
label define L_MTRCRD  8 "REFUSED/MISSING" 9 "INAPP" ;
label define L_MVC     998 "REFUSED/MISSING" 999 "INAPP" ;
label define L_NOISE   98 "REFUSED/MISSING" 99 "INAPP" ;
label define L_NUMERC  8 "REFUSED/MISSING" 9 "INAPP" ;
label define L_OBSPRE  998 "REFUSED/MISSING" 999 "INAPP" ;
label define L_OUT     98 "REFUSED/MISSING" 99 "INAPP" ;
label define L_PEOPLE  98 "REFUSED/MISSING" 99 "INAPP" ;
label define L_PEOPRE  998 "REFUSED/MISSING" 999 "INAPP" ;
label define L_PHYSDM  8 "REFUSED/MISSING" 9 "INAPP" ;
label define L_PRODPR  98 "REFUSED/MISSING" 99 "INAPP" ;
label define L_PROTPR  8 "REFUSED/MISSING" 9 "INAPP" ;
label define L_PRSTPR  998 "REFUSED/MISSING" 999 "INAPP" ;
label define L_PUS     98 "REFUSED/MISSING" 99 "INAPP" ;
label define L_REACH   998 "REFUSED/MISSING" 999 "INAPP" ;
label define L_REPCON  98 "REFUSED/MISSING" 99 "INAPP" ;
label define L_ROUTPR  998 "REFUSED/MISSING" 999 "INAPP" ;
label define L_SCINPR  998 "REFUSED/MISSING" 999 "INAPP" ;
label define L_SEE     998 "REFUSED/MISSING" 999 "INAPP" ;
label define L_SJC     998 "REFUSED/MISSING" 999 "INAPP" ;
label define L_SPATIA  8 "REFUSED/MISSING" 9 "INAPP" ;
label define L_STOOP   998 "REFUSED/MISSING" 999 "INAPP" ;
label define L_STRGTH  8 "REFUSED/MISSING" 9 "INAPP" ;
label define L_STS     998 "REFUSED/MISSING" 999 "INAPP" ;
label define L_SVP     98 "REFUSED/MISSING" 99 "INAPP" ;
label define L_TALK    998 "REFUSED/MISSING" 999 "INAPP" ;
label define L_THINGS  98 "REFUSED/MISSING" 99 "INAPP" ;
label define L_TRAIN   98 "REFUSED/MISSING" 99 "INAPP" ;
label define L_VARCH   998 "REFUSED/MISSING" 999 "INAPP" ;
label define L_VERBAL  8 "REFUSED/MISSING" 9 "INAPP" ;
label define L_WET     98 "REFUSED/MISSING" 99 "INAPP" ;
label define L_WOMEN   9999998 "REFUSED/MISSING" 9999999 "INAPP" ;
label define MINDUS_L  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define PROFID_L  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define AGRIC_L   1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define CONSTR_L  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define MANUF_L   1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define TRANSP_L  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define WHOLE_L   1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define RETAIL_L  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define FNANCE_L  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define BUSIN_L   1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define PERSON_L  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define ENTERT_L  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define PUBADM_L  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define MOCCUP_L  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define EXEC_L    1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define PROFOC_L  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define TECH_L    1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define SALES_L   1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define ADMIN_L   1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define SERV_L    1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define FARM_L    1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define CRAFT_L   1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define OPERAT_L  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PB17    1 "MARRIED" 2 "SEPERATED" 3 "DIVORCED" 4 "WIDOWED"
                       5 "NEVER MARRIED" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB19    7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB18MO  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB18YR  97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB20    1 "WIDOWHOOD" 2 "DIVORCE" 7 "DONT KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define A1PB20AMO 1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB20AYR 97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB20BMO 1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       96 "NA - SEE CASE LOG" 97 "DONT KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define A1PB20BYR 96 "NA - SEE CASE LOG" 97 "DONT KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define A1PB21MO  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB21YR  97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB22MO  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       96 "NA - SEE CASE LOG" 97 "DONT KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define A1PB22YR  96 "NA - SEE CASE LOG" 97 "DONT KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define A1PB23MO  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB23YR  97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB24    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB25    9997 "DONT KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define A1PPARTN  1 "YES" 2 "NO" ;
label define A1PB26    97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PSAGE   97 "DONT KNOW" 98 "REFUSED/MISSING"
                       99 "NOT CALCULATED" ;
label define A1PB27    1 "NO SCHOOL/SOME GRADE SCHOOL"
                       2 "EIGHTH GRADE/ JUNIOR HIGH SCHOOL"
                       3 "SOME HIGH SCHOOL" 4 "GED"
                       5 "GRADUATED FROM HIGH SCHOOL"
                       6 "1 TO 2 YEARS OF COLLEGE, NO DEGREE YET"
                       7 "3 OR MORE YEARS OF COLLEGE, NO DEGREE YET"
                       8 "GRAD 2 YEAR COLLEGE OR VOC SCHOOL, OR ASSOCIATES DEGREE"
                       9 "GRAD 4 OR 5 YEAR COLLEGE OR BACHELORS DEGREE"
                       10 "SOME GRADUATE SCHOOL" 11 "MASTERS DEGREE"
                       12 "PH.D, ED.D, MD, DDS, LLB, LLD, JD, OR OTHER PROF DEGREE"
                       97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PMQB27  1 "SOME GRADE SCHOOL TO GED" 2 "GRADUATED HIGH SCHOOL"
                       3 "SOME COLLEGE (NO BACHELORS DEGREE)"
                       4 "GRAD COLLEGE TO DOCTORATE OR PROFESSIONAL DEGREE"
                       9 "NOT CALCULATED" ;
label define A1PSEDU   1 "GRADUATED HIGH SCHOOL OR LESS"
                       2 "SOME COLLEGE OR MORE" 9 "NOT CALCULATED" ;
label define A1PSSXEDAG 1 "MALE/LO/YOUNGER" 2 "MALE/LO/MIDDLE"
                       3 "MALE/LO/OLDER" 4 "MALE/HI/YOUNGER"
                       5 "MALE/HI/MIDDLE" 6 "MALE/HI/OLDER"
                       7 "FEMALE/LO/YOUNGER" 8 "FEMALE/LO/MIDDLE"
                       9 "FEMALE/LO/OLDER" 10 "FEMALE/HI/YOUNGER"
                       11 "FEMALE/HI/MIDDLE" 12 "FEMALE/HI/OLDER"
                       99 "NOT CALCULATED" ;
label define A1PB28A   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB28B   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB28C   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB28D   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB28E   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB28F   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB28G   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB28H   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB28I   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB28J   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB28K   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB30    9996 "NEVER WORKED" 9997 "DONT KNOW" 9998 "REFUSED"
                       9999 "INAPP" ;
label define A1PB29A   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB29B   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB29C   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB29D   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB29E   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB29F   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB29G   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB31    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB33_2  1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB34_2  1 "HAS EMPLOYER" 2 "SELF-EMPLOYED" 7 "DONT KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define A1POCCS   997 "DONT KNOW" 998 "REFUSED/MISSING"
                       999 "INAPP, NO DATA FOR INDIVIDUAL" ;
label define A1PINDS   900 "ARMED SERVICES MEMBER" 997 "DONT KNOW"
                       998 "REFUSED/MISSING"
                       999 "INAPP, NO DATA FOR INDIVIDUAL" ;
label define A1PTSEIS  98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PTEARS  8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PTEDUS  8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PFSEIS  98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PFEARS  8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PFEDUS  8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PMSEIS  98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PMEARS  8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PMEDUS  8 "REFUSED/MISSING" 9 "INAPP" ;
label define S_ABSCRE  998 "REFUSED/MISSING" 999 "INAPP" ;
label define S_ATMOSP  98 "REFUSED/MISSING" 99 "INAPP" ;
label define S_BOTH    98 "REFUSED/MISSING" 99 "INAPP" ;
label define S_BUSPR   998 "REFUSED/MISSING" 999 "INAPP" ;
label define S_CLERIC  8 "REFUSED/MISSING" 9 "INAPP" ;
label define S_CLIMB   998 "REFUSED/MISSING" 999 "INAPP" ;
label define S_CLRDIS  8 "REFUSED/MISSING" 9 "INAPP" ;
label define S_COLD    98 "REFUSED/MISSING" 99 "INAPP" ;
label define S_COMMDA  998 "REFUSED/MISSING" 999 "INAPP" ;
label define S_DATAL   8 "REFUSED/MISSING" 9 "INAPP" ;
label define S_DATAPR  8 "REFUSED/MISSING" 9 "INAPP" ;
label define S_DCP     998 "REFUSED/MISSING" 999 "INAPP" ;
label define S_DEPL    998 "REFUSED/MISSING" 999 "INAPP" ;
label define S_ENVIRO  8 "REFUSED/MISSING" 9 "INAPP" ;
label define S_EYHNFT  8 "REFUSED/MISSING" 9 "INAPP" ;
label define S_FIF     998 "REFUSED/MISSING" 999 "INAPP" ;
label define S_FMNHR   98 "REFUSED/MISSING" 99 "INAPP" ;
label define S_FMNYR   99998 "REFUSED/MISSING" 99999 "INAPP" ;
label define S_FNGRDX  8 "REFUSED/MISSING" 9 "INAPP" ;
label define S_FRMPRC  8 "REFUSED/MISSING" 9 "INAPP" ;
label define S_GED     8 "REFUSED/MISSING" 9 "INAPP" ;
label define S_HAZARD  998 "REFUSED/MISSING" 999 "INAPP" ;
label define S_HEAT    98 "REFUSED/MISSING" 99 "INAPP" ;
label define S_INFLU   998 "REFUSED/MISSING" 999 "INAPP" ;
label define S_INTELL  8 "REFUSED/MISSING" 9 "INAPP" ;
label define S_MACHPR  998 "REFUSED/MISSING" 999 "INAPP" ;
label define S_MCHNPR  8 "REFUSED/MISSING" 9 "INAPP" ;
label define S_MEN     9999998 "REFUSED/MISSING" 9999999 "INAPP" ;
label define S_MMNHR   98 "REFUSED/MISSING" 99 "INAPP" ;
label define S_MMNYR   99998 "REFUSED/MISSING" 99999 "INAPP" ;
label define S_MNLDXT  8 "REFUSED/MISSING" 9 "INAPP" ;
label define S_MTRCRD  8 "REFUSED/MISSING" 9 "INAPP" ;
label define S_MVC     998 "REFUSED/MISSING" 999 "INAPP" ;
label define S_NOISE   998 "REFUSED/MISSING" 999 "INAPP" ;
label define S_NUMERC  8 "REFUSED/MISSING" 9 "INAPP" ;
label define S_OBSPRE  998 "REFUSED/MISSING" 999 "INAPP" ;
label define S_OUT     98 "REFUSED/MISSING" 99 "INAPP" ;
label define S_PEOPLE  98 "REFUSED/MISSING" 99 "INAPP" ;
label define S_PEOPRE  998 "REFUSED/MISSING" 999 "INAPP" ;
label define S_PHYSDM  8 "REFUSED/MISSING" 9 "INAPP" ;
label define S_PRODPR  98 "REFUSED/MISSING" 99 "INAPP" ;
label define S_PROTPR  8 "REFUSED/MISSING" 9 "INAPP" ;
label define S_PRSTPR  998 "REFUSED/MISSING" 999 "INAPP" ;
label define S_PUS     98 "REFUSED/MISSING" 99 "INAPP" ;
label define S_REACH   998 "REFUSED/MISSING" 999 "INAPP" ;
label define S_REPCON  998 "REFUSED/MISSING" 999 "INAPP" ;
label define S_ROUTPR  998 "REFUSED/MISSING" 999 "INAPP" ;
label define S_SCINPR  998 "REFUSED/MISSING" 999 "INAPP" ;
label define S_SEE     998 "REFUSED/MISSING" 999 "INAPP" ;
label define S_SJC     998 "REFUSED/MISSING" 999 "INAPP" ;
label define S_SPATIA  8 "REFUSED/MISSING" 9 "INAPP" ;
label define S_STOOP   998 "REFUSED/MISSING" 999 "INAPP" ;
label define S_STRGTH  8 "REFUSED/MISSING" 9 "INAPP" ;
label define S_STS     998 "REFUSED/MISSING" 999 "INAPP" ;
label define S_SVP     98 "REFUSED/MISSING" 99 "INAPP" ;
label define S_TALK    998 "REFUSED/MISSING" 999 "INAPP" ;
label define S_THINGS  98 "REFUSED/MISSING" 99 "INAPP" ;
label define S_TRAIN   998 "REFUSED/MISSING" 999 "INAPP" ;
label define S_VARCH   998 "REFUSED/MISSING" 999 "INAPP" ;
label define S_VERBAL  8 "REFUSED/MISSING" 9 "INAPP" ;
label define S_WET     98 "REFUSED/MISSING" 99 "INAPP" ;
label define S_WOMEN   9999998 "REFUSED/MISSING" 9999999 "INAPP" ;
label define MINDUS_S  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define PROFID_S  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define AGRIC_S   1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define CONSTR_S  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define MANUF_S   1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define TRANSP_S  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define WHOLE_S   1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define RETAIL_S  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define FNANCE_S  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define BUSIN_S   1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define PERSON_S  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define ENTERT_S  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define PUBADM_S  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define MOCCUP_S  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define EXEC_S    1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define PROFOC_S  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define TECH_S    1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define SALES_S   1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define ADMIN_S   1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define SERV_S    1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define FARM_S    1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define CRAFT_S   1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define OPERAT_S  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PB35    5 "5 OR MORE CHILDREN" 97 "DONT KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define CNT_BK    99 "NOT CALCULATED" ;
label define A1PB36A1  1 "MALE" 2 "FEMALE" 7 "DONT KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define A1PB36B1  97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB36C1  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB36A2  1 "MALE" 2 "FEMALE" 7 "DONT KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define A1PB36B2  97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB36C2  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB36A3  1 "MALE" 2 "FEMALE" 7 "DONT KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define A1PB36B3  97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB36C3  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB36A4  1 "MALE" 2 "FEMALE" 7 "DONT KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define A1PB36B4  97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB36C4  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB36A5  1 "MALE" 2 "FEMALE" 7 "DONT KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define A1PB36B5  97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB36C5  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB36A6  1 "MALE" 2 "FEMALE" 7 "DONT KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define A1PB36B6  97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB36C6  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB36A7  1 "MALE" 2 "FEMALE" 7 "DONT KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define A1PB36B7  97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB36C7  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB36A8  1 "MALE" 2 "FEMALE" 7 "DONT KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define A1PB36B8  97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB36C8  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB36A9  1 "MALE" 2 "FEMALE" 7 "DONT KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define A1PB36B9  97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB36C9  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB36A10 1 "MALE" 2 "FEMALE" 7 "DONT KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define A1PB36B10 97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB36C10 1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PBAG1   99 "NOT CALCULATED" ;
label define A1PBAG2   99 "NOT CALCULATED" ;
label define A1PBAG3   99 "NOT CALCULATED" ;
label define A1PBAG4   99 "NOT CALCULATED" ;
label define A1PBAG5   99 "NOT CALCULATED" ;
label define A1PBAG6   99 "NOT CALCULATED" ;
label define A1PBAG7   99 "NOT CALCULATED" ;
label define A1PBAG8   99 "NOT CALCULATED" ;
label define A1PBAG9   99 "NOT CALCULATED" ;
label define A1PBAG10  99 "NOT CALCULATED" ;
label define A1PB37    5 "5 OR MORE CHILDREN" 97 "DONT KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define CNT_NBK   99 "NOT CALCULATED" ;
label define A1PB37A1  1 "MALE" 2 "FEMALE" 7 "DONT KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define A1PB37B1  1 "STEP CHILD" 2 "ADOPTED CHILD" 3 "FOSTER CHILD"
                       4 "OTHER" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB37C1  97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB37D1  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB37A2  1 "MALE" 2 "FEMALE" 7 "DONT KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define A1PB37B2  1 "STEP CHILD" 2 "ADOPTED CHILD" 3 "FOSTER CHILD"
                       4 "OTHER" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB37C2  97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB37D2  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB37A3  1 "MALE" 2 "FEMALE" 7 "DONT KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define A1PB37B3  1 "STEP CHILD" 2 "ADOPTED CHILD" 3 "FOSTER CHILD"
                       4 "OTHER" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB37C3  97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB37D3  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB37A4  1 "MALE" 2 "FEMALE" 7 "DONT KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define A1PB37B4  1 "STEP CHILD" 2 "ADOPTED CHILD" 3 "FOSTER CHILD"
                       4 "OTHER" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB37C4  97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB37D4  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB37A5  1 "MALE" 2 "FEMALE" 7 "DONT KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define A1PB37B5  1 "STEP CHILD" 2 "ADOPTED CHILD" 3 "FOSTER CHILD"
                       4 "OTHER" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB37C5  97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB37D5  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB37A6  1 "MALE" 2 "FEMALE" 7 "DONT KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define A1PB37B6  1 "STEP CHILD" 2 "ADOPTED CHILD" 3 "FOSTER CHILD"
                       4 "OTHER" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB37C6  97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB37D6  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB37A7  1 "MALE" 2 "FEMALE" 7 "DONT KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define A1PB37B7  1 "STEP CHILD" 2 "ADOPTED CHILD" 3 "FOSTER CHILD"
                       4 "OTHER" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB37C7  97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB37D7  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB37A8  1 "MALE" 2 "FEMALE" 7 "DONT KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define A1PB37B8  1 "STEP CHILD" 2 "ADOPTED CHILD" 3 "FOSTER CHILD"
                       4 "OTHER" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB37C8  97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB37D8  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB37A9  1 "MALE" 2 "FEMALE" 7 "DONT KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define A1PB37B9  1 "STEP CHILD" 2 "ADOPTED CHILD" 3 "FOSTER CHILD"
                       4 "OTHER" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB37C9  97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB37D9  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB37A10 1 "MALE" 2 "FEMALE" 7 "DONT KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define A1PB37B10 1 "STEP CHILD" 2 "ADOPTED CHILD" 3 "FOSTER CHILD"
                       4 "OTHER" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define A1PB37C10 97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PB37D10 1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DONT KNOW" 98 "REFUSED" 99 "INAPP" ;
label define A1PBAO1   99 "NOT CALCULATED" ;
label define A1PBAO2   99 "NOT CALCULATED" ;
label define A1PBAO3   99 "NOT CALCULATED" ;
label define A1PBAO4   99 "NOT CALCULATED" ;
label define A1PBAO5   99 "NOT CALCULATED" ;
label define A1PBAO6   99 "NOT CALCULATED" ;
label define A1PBAO7   99 "NOT CALCULATED" ;
label define A1PBAO8   99 "NOT CALCULATED" ;
label define A1PBAO9   99 "NOT CALCULATED" ;
label define A1PBAO10  99 "NOT CALCULATED" ;
label define A1PC06    0 "NO" 1 "YES" ;
label define A1PC713   0 "NO" 1 "YES" ;
label define A1PC1417  0 "NO" 1 "YES" ;
label define A1PC18    0 "NO" 1 "YES" ;
label define A1PE1     1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PE1A    9997 "DONT KNOW" 9998 "REFUSED/MISSING" 9999 "INAPP" ;
label define A1PE2     1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PE2A    9997 "DONT KNOW" 9998 "REFUSED/MISSING" 9999 "INAPP" ;
label define A1PE3     1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PE3A    9997 "DONT KNOW" 9998 "REFUSED/MISSING" 9999 "INAPP" ;
label define A1PC1     1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PCA1    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PCA2    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PCA3    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PCA4    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PCA5    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PCA6    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PCA7    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PCB1    97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PCB2    97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PCB3    97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PCB6    97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PCB7    97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PCC     1 "BIOLOGICAL FATHER" 2 "ADOPTIVE FATHER"
                       3 "STEP FATHER" 4 "OTHER MALE"
                       5 "NO MALE IN HOUSEHOLD" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PC2     1 "NO SCHOOL/SOME GRADE SCHOOL"
                       2 "EIGHTH GRADE/ JUNIOR HIGH SCHOOL"
                       3 "SOME HIGH SCHOOL" 4 "GED"
                       5 "GRADUATED FROM HIGH SCHOOL"
                       6 "1 TO 2 YEARS OF COLLEGE, NO DEGREE YET"
                       7 "3 OR MORE YEARS OF COLLEGE, NO DEGREE YET"
                       8 "GRAD 2 YEAR COLLEGE OR VOC SCHOOL, OR ASSOCIATES DEGREE"
                       9 "GRAD 4 OR 5 YEAR COLLEGE OR BACHELORS DEGREE"
                       10 "SOME GRADUATE SCHOOL" 11 "MASTERS DEGREE"
                       12 "PH.D, ED.D, MD, DDS, LLB, LLD, JD, OR OTHER PROF DEGREE"
                       97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PC3     1 "ALL" 2 "MOST" 3 "SOME" 4 "A LITTLE" 5 "NOT AT ALL"
                       6 "WORKED, DONT KNOW HOW MUCH" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PC3A1   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PC3A2   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PC3A3   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PC3A4   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PC3A5   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PC5_2   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PC6_2   1 "HAD EMPLOYER" 2 "SELF-EMPLOYED" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PINDD   997 "DONT KNOW" 998 "REFUSED/MISSING"
                       999 "INAPP, NO DATA FOR INDIVIDUAL" ;
label define A1POCCD   900 "ARMED SERVICES MEMBER" 997 "DONT KNOW"
                       998 "REFUSED/MISSING"
                       999 "INAPP, NO DATA FOR INDIVIDUAL" ;
label define A1PTSEID  98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PTEARD  8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PTEDUD  8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PFSEID  98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PFEARD  8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PFEDUD  8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PMSEID  998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1PMEARD  8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PMEDUD  8 "REFUSED/MISSING" 9 "INAPP" ;
label define D_ABSCRE  998 "REFUSED/MISSING" 999 "INAPP" ;
label define D_ATMOSP  98 "REFUSED/MISSING" 99 "INAPP" ;
label define D_BOTH    998 "REFUSED/MISSING" 999 "INAPP" ;
label define D_BUSPR   998 "REFUSED/MISSING" 999 "INAPP" ;
label define D_CLERIC  8 "REFUSED/MISSING" 9 "INAPP" ;
label define D_CLIMB   98 "REFUSED/MISSING" 99 "INAPP" ;
label define D_CLRDIS  8 "REFUSED/MISSING" 9 "INAPP" ;
label define D_COLD    98 "REFUSED/MISSING" 99 "INAPP" ;
label define D_COMMDA  998 "REFUSED/MISSING" 999 "INAPP" ;
label define D_DATAL   8 "REFUSED/MISSING" 9 "INAPP" ;
label define D_DATAPR  8 "REFUSED/MISSING" 9 "INAPP" ;
label define D_DCP     998 "REFUSED/MISSING" 999 "INAPP" ;
label define D_DEPL    998 "REFUSED/MISSING" 999 "INAPP" ;
label define D_ENVIRO  8 "REFUSED/MISSING" 9 "INAPP" ;
label define D_EYHNFT  8 "REFUSED/MISSING" 9 "INAPP" ;
label define D_FIF     998 "REFUSED/MISSING" 999 "INAPP" ;
label define D_FMNHR   98 "REFUSED/MISSING" 99 "INAPP" ;
label define D_FMNYR   99998 "REFUSED/MISSING" 99999 "INAPP" ;
label define D_FNGRDX  8 "REFUSED/MISSING" 9 "INAPP" ;
label define D_FRMPRC  8 "REFUSED/MISSING" 9 "INAPP" ;
label define D_GED     8 "REFUSED/MISSING" 9 "INAPP" ;
label define D_HAZARD  98 "REFUSED/MISSING" 99 "INAPP" ;
label define D_HEAT    98 "REFUSED/MISSING" 99 "INAPP" ;
label define D_INFLU   998 "REFUSED/MISSING" 999 "INAPP" ;
label define D_INTELL  8 "REFUSED/MISSING" 9 "INAPP" ;
label define D_MACHPR  998 "REFUSED/MISSING" 999 "INAPP" ;
label define D_MCHNPR  8 "REFUSED/MISSING" 9 "INAPP" ;
label define D_MEN     9999998 "REFUSED/MISSING" 9999999 "INAPP" ;
label define D_MMNHR   98 "REFUSED/MISSING" 99 "INAPP" ;
label define D_MMNYR   99998 "REFUSED/MISSING" 99999 "INAPP" ;
label define D_MNLDXT  8 "REFUSED/MISSING" 9 "INAPP" ;
label define D_MTRCRD  8 "REFUSED/MISSING" 9 "INAPP" ;
label define D_MVC     998 "REFUSED/MISSING" 999 "INAPP" ;
label define D_NOISE   998 "REFUSED/MISSING" 999 "INAPP" ;
label define D_NUMERC  8 "REFUSED/MISSING" 9 "INAPP" ;
label define D_OBSPRE  998 "REFUSED/MISSING" 999 "INAPP" ;
label define D_OUT     98 "REFUSED/MISSING" 99 "INAPP" ;
label define D_PEOPLE  98 "REFUSED/MISSING" 99 "INAPP" ;
label define D_PEOPRE  998 "REFUSED/MISSING" 999 "INAPP" ;
label define D_PHYSDM  8 "REFUSED/MISSING" 9 "INAPP" ;
label define D_PRODPR  98 "REFUSED/MISSING" 99 "INAPP" ;
label define D_PROTPR  8 "REFUSED/MISSING" 9 "INAPP" ;
label define D_PRSTPR  998 "REFUSED/MISSING" 999 "INAPP" ;
label define D_PUS     98 "REFUSED/MISSING" 99 "INAPP" ;
label define D_REACH   998 "REFUSED/MISSING" 999 "INAPP" ;
label define D_REPCON  998 "REFUSED/MISSING" 999 "INAPP" ;
label define D_ROUTPR  998 "REFUSED/MISSING" 999 "INAPP" ;
label define D_SCINPR  998 "REFUSED/MISSING" 999 "INAPP" ;
label define D_SEE     998 "REFUSED/MISSING" 999 "INAPP" ;
label define D_SJC     998 "REFUSED/MISSING" 999 "INAPP" ;
label define D_SPATIA  8 "REFUSED/MISSING" 9 "INAPP" ;
label define D_STOOP   998 "REFUSED/MISSING" 999 "INAPP" ;
label define D_STRGTH  8 "REFUSED/MISSING" 9 "INAPP" ;
label define D_STS     998 "REFUSED/MISSING" 999 "INAPP" ;
label define D_SVP     98 "REFUSED/MISSING" 99 "INAPP" ;
label define D_TALK    998 "REFUSED/MISSING" 999 "INAPP" ;
label define D_THINGS  98 "REFUSED/MISSING" 99 "INAPP" ;
label define D_TRAIN   998 "REFUSED/MISSING" 999 "INAPP" ;
label define D_VARCH   998 "REFUSED/MISSING" 999 "INAPP" ;
label define D_VERBAL  8 "REFUSED/MISSING" 9 "INAPP" ;
label define D_WET     98 "REFUSED/MISSING" 99 "INAPP" ;
label define D_WOMEN   9999998 "REFUSED/MISSING" 9999999 "INAPP" ;
label define MINDUS_D  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define PROFID_D  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define AGRIC_D   1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define CONSTR_D  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define MANUF_D   1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define TRANSP_D  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define WHOLE_D   1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define RETAIL_D  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define FNANCE_D  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define BUSIN_D   1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define PERSON_D  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define ENTERT_D  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define PUBADM_D  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define MOCCUP_D  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define EXEC_D    1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define PROFOC_D  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define TECH_D    1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define SALES_D   1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define ADMIN_D   1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define SERV_D    1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define FARM_D    1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define CRAFT_D   1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define OPERAT_D  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PC7     1 "BIOLOGICAL MOTHER" 2 "ADOPTIVE MOTHER"
                       3 "STEP MOTHER" 4 "OTHER FEMALE"
                       5 "NO FEMALE IN HOUSEHOLD" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PC8     1 "NO SCHOOL/SOME GRADE SCHOOL"
                       2 "EIGHTH GRADE/ JUNIOR HIGH SCHOOL"
                       3 "SOME HIGH SCHOOL" 4 "GED"
                       5 "GRADUATED FROM HIGH SCHOOL"
                       6 "1 TO 2 YEARS OF COLLEGE, NO DEGREE YET"
                       7 "3 OR MORE YEARS OF COLLEGE, NO DEGREE YET"
                       8 "GRAD 2 YEAR COLLEGE OR VOC SCHOOL, OR ASSOCIATES DEGREE"
                       9 "GRAD 4 OR 5 YEAR COLLEGE OR BACHELORS DEGREE"
                       10 "SOME GRADUATE SCHOOL" 11 "MASTERS DEGREE"
                       12 "PH.D, ED.D, MD, DDS, LLB, LLD, JD, OR OTHER PROF DEGREE"
                       97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PC9     1 "ALL" 2 "MOST" 3 "SOME" 4 "A LITTLE" 5 "NOT AT ALL"
                       6 "WORKED, DONT KNOW HOW MUCH" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PC9A1   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PC9A2   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PC9A3   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PC9A4   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PC9A5   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PC11_2  1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PC13_2  1 "HAD EMPLOYER" 2 "SELF-EMPLOYED" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PINDM   997 "DONT KNOW" 998 "REFUSED/MISSING"
                       999 "INAPP, NO DATA FOR INDIVIDUAL" ;
label define A1POCCM   900 "ARMED SERVICES MEMBER" 997 "DONT KNOW"
                       998 "REFUSED/MISSING"
                       999 "INAPP, NO DATA FOR INDIVIDUAL" ;
label define A1PTSEIM  98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PTEARM  8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PTEDUM  8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PFSEIM  98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PFEARM  8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PFEDUM  8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PMSEIM  98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1PMEARM  8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PMEDUM  8 "REFUSED/MISSING" 9 "INAPP" ;
label define M_ABSCRE  998 "REFUSED/MISSING" 999 "INAPP" ;
label define M_ATMOSP  98 "REFUSED/MISSING" 99 "INAPP" ;
label define M_BOTH    98 "REFUSED/MISSING" 99 "INAPP" ;
label define M_BUSPR   998 "REFUSED/MISSING" 999 "INAPP" ;
label define M_CLERIC  8 "REFUSED/MISSING" 9 "INAPP" ;
label define M_CLIMB   98 "REFUSED/MISSING" 99 "INAPP" ;
label define M_CLRDIS  8 "REFUSED/MISSING" 9 "INAPP" ;
label define M_COLD    98 "REFUSED/MISSING" 99 "INAPP" ;
label define M_COMMDA  998 "REFUSED/MISSING" 999 "INAPP" ;
label define M_DATAL   8 "REFUSED/MISSING" 9 "INAPP" ;
label define M_DATAPR  8 "REFUSED/MISSING" 9 "INAPP" ;
label define M_DCP     998 "REFUSED/MISSING" 999 "INAPP" ;
label define M_DEPL    998 "REFUSED/MISSING" 999 "INAPP" ;
label define M_ENVIRO  8 "REFUSED/MISSING" 9 "INAPP" ;
label define M_EYHNFT  8 "REFUSED/MISSING" 9 "INAPP" ;
label define M_FIF     998 "REFUSED/MISSING" 999 "INAPP" ;
label define M_FMNHR   98 "REFUSED/MISSING" 99 "INAPP" ;
label define M_FMNYR   99998 "REFUSED/MISSING" 99999 "INAPP" ;
label define M_FNGRDX  8 "REFUSED/MISSING" 9 "INAPP" ;
label define M_FRMPRC  8 "REFUSED/MISSING" 9 "INAPP" ;
label define M_GED     8 "REFUSED/MISSING" 9 "INAPP" ;
label define M_HAZARD  98 "REFUSED/MISSING" 99 "INAPP" ;
label define M_HEAT    98 "REFUSED/MISSING" 99 "INAPP" ;
label define M_INFLU   998 "REFUSED/MISSING" 999 "INAPP" ;
label define M_INTELL  8 "REFUSED/MISSING" 9 "INAPP" ;
label define M_MACHPR  998 "REFUSED/MISSING" 999 "INAPP" ;
label define M_MCHNPR  8 "REFUSED/MISSING" 9 "INAPP" ;
label define M_MEN     9999998 "REFUSED/MISSING" 9999999 "INAPP" ;
label define M_MMNHR   98 "REFUSED/MISSING" 99 "INAPP" ;
label define M_MMNYR   99998 "REFUSED/MISSING" 99999 "INAPP" ;
label define M_MNLDXT  8 "REFUSED/MISSING" 9 "INAPP" ;
label define M_MTRCRD  8 "REFUSED/MISSING" 9 "INAPP" ;
label define M_MVC     998 "REFUSED/MISSING" 999 "INAPP" ;
label define M_NOISE   98 "REFUSED/MISSING" 99 "INAPP" ;
label define M_NUMERC  8 "REFUSED/MISSING" 9 "INAPP" ;
label define M_OBSPRE  998 "REFUSED/MISSING" 999 "INAPP" ;
label define M_OUT     98 "REFUSED/MISSING" 99 "INAPP" ;
label define M_PEOPLE  98 "REFUSED/MISSING" 99 "INAPP" ;
label define M_PEOPRE  998 "REFUSED/MISSING" 999 "INAPP" ;
label define M_PHYSDM  8 "REFUSED/MISSING" 9 "INAPP" ;
label define M_PRODPR  98 "REFUSED/MISSING" 99 "INAPP" ;
label define M_PROTPR  8 "REFUSED/MISSING" 9 "INAPP" ;
label define M_PRSTPR  998 "REFUSED/MISSING" 999 "INAPP" ;
label define M_PUS     98 "REFUSED/MISSING" 99 "INAPP" ;
label define M_REACH   998 "REFUSED/MISSING" 999 "INAPP" ;
label define M_REPCON  98 "REFUSED/MISSING" 99 "INAPP" ;
label define M_ROUTPR  998 "REFUSED/MISSING" 999 "INAPP" ;
label define M_SCINPR  998 "REFUSED/MISSING" 999 "INAPP" ;
label define M_SEE     998 "REFUSED/MISSING" 999 "INAPP" ;
label define M_SJC     998 "REFUSED/MISSING" 999 "INAPP" ;
label define M_SPATIA  8 "REFUSED/MISSING" 9 "INAPP" ;
label define M_STOOP   998 "REFUSED/MISSING" 999 "INAPP" ;
label define M_STRGTH  8 "REFUSED/MISSING" 9 "INAPP" ;
label define M_STS     998 "REFUSED/MISSING" 999 "INAPP" ;
label define M_SVP     98 "REFUSED/MISSING" 99 "INAPP" ;
label define M_TALK    998 "REFUSED/MISSING" 999 "INAPP" ;
label define M_THINGS  98 "REFUSED/MISSING" 99 "INAPP" ;
label define M_TRAIN   98 "REFUSED/MISSING" 99 "INAPP" ;
label define M_VARCH   998 "REFUSED/MISSING" 999 "INAPP" ;
label define M_VERBAL  8 "REFUSED/MISSING" 9 "INAPP" ;
label define M_WET     98 "REFUSED/MISSING" 99 "INAPP" ;
label define M_WOMEN   9999998 "REFUSED/MISSING" 9999999 "INAPP" ;
label define MINDUS_M  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define PROFID_M  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define AGRIC_M   1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define CONSTR_M  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define MANUF_M   1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define TRANSP_M  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define WHOLE_M   1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define RETAIL_M  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define FNANCE_M  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define BUSIN_M   1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define PERSON_M  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define ENTERT_M  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define PUBADM_M  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define MOCCUP_M  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define EXEC_M    1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define PROFOC_M  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define TECH_M    1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define SALES_M   1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define ADMIN_M   1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define SERV_M    1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define FARM_M    1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define CRAFT_M   1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define OPERAT_M  1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PC14    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1PC15    1 "ALL" 2 "MOST" 3 "SOME" 4 "A LITTLE" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PD1     1 "A LOT" 2 "SOMEWHAT" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PD2     1 "A LOT" 2 "SOMEWHAT" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PD3     1 "A LOT" 2 "SOMEWHAT" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PD8     1 "EXCELLENT" 2 "VERY GOOD" 3 "GOOD" 4 "FAIR" 5 "POOR"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PD9     1 "AGREE" 2 "DISAGREE" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PD9A    1 "STRONGLY" 2 "SOMEWHAT" 3 "ONLY A LITTLE"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PD4     1 "A LOT" 2 "SOMEWHAT" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PD5     1 "A LOT" 2 "SOMEWHAT" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PD6     1 "A LOT" 2 "SOMEWHAT" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1PD7     1 "A LOT" 2 "SOMEWHAT" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SA1     0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SA2     0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SHLTCH  97 "DONT KNOW" 98 "REFUSED/MISSING"
                       99 "NOT CALCULATED" ;
label define A1SA3     0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SHLTEX  97 "DONT KNOW" 98 "REFUSED/MISSING"
                       99 "NOT CALCULATED" ;
label define A1SA4     0 "NONE" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SA5     0 "NONE" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SA6A    1 "BETTER NOW" 2 "NO CHANGE" 3 "WORSE NOW"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SA6B    1 "BETTER NOW" 2 "NO CHANGE" 3 "WORSE NOW"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SA6C    1 "BETTER NOW" 2 "NO CHANGE" 3 "WORSE NOW"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SA6D    1 "BETTER NOW" 2 "NO CHANGE" 3 "WORSE NOW"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SA7A    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SA7B    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SA7C    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SA7D    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SA7E    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SA7F    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SHLOCS  9 "NOT CALCULATED" 99 "NOT CALCULATED" ;
label define A1SHLOCO  9 "NOT CALCULATED" 99 "NOT CALCULATED" ;
label define A1SA8A    1 "NOT AT ALL TRUE" 2 "A LITTLE BIT TRUE"
                       3 "MODERATELY TRUE" 4 "EXTREMELY TRUE" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SA8B    1 "NOT AT ALL TRUE" 2 "A LITTLE BIT TRUE"
                       3 "MODERATELY TRUE" 4 "EXTREMELY TRUE" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SA8C    1 "NOT AT ALL TRUE" 2 "A LITTLE BIT TRUE"
                       3 "MODERATELY TRUE" 4 "EXTREMELY TRUE" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SA8D    1 "NOT AT ALL TRUE" 2 "A LITTLE BIT TRUE"
                       3 "MODERATELY TRUE" 4 "EXTREMELY TRUE" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SA8E    1 "NOT AT ALL TRUE" 2 "A LITTLE BIT TRUE"
                       3 "MODERATELY TRUE" 4 "EXTREMELY TRUE" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SAMOLI  7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "NOT CALCULATED" ;
label define A1SA9A    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA9B    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA9C    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA9D    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA9E    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA9F    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA9G    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA9H    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA9I    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA9J    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA9K    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA9L    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA9M    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA9N    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA9O    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA9P    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA9Q    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA9R    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA9S    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA9T    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA9U    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA9V    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA9W    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA9X    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA9Y    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA9Z    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA9AA   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA9BB   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA9CC   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SCHRON  99 "NOT CALCULATED" ;
label define A1SCHROX  0 "NO" 1 "YES" 9 "NOT CALCULATED" ;
label define A1SA10A   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA10B   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA10C   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA10D   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA10E   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA10F   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA10G   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA10H   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA10I   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA10J   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA10K   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SRXMED  99 "NOT CALCULATED (Due to missing data)" ;
label define A1SRXMEX  0 "NO" 1 "YES"
                       9 "NOT CALCULATED (Due to missing data)" ;
label define A1SA11A   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA11B   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA11C   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA11D   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA11E   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SVITAM  1 "YES" 2 "NO" 9 "NOT CALCULATED" ;
label define A1SA12A   1 "ALMOST EVERYT DAY" 2 "SEVERAL TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "SEVERAL TIMES A MONTH"
                       5 "ONCE A MONTH" 6 "NOT AT ALL" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SA12B   1 "ALMOST EVERYT DAY" 2 "SEVERAL TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "SEVERAL TIMES A MONTH"
                       5 "ONCE A MONTH" 6 "NOT AT ALL" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SA12C   1 "ALMOST EVERYT DAY" 2 "SEVERAL TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "SEVERAL TIMES A MONTH"
                       5 "ONCE A MONTH" 6 "NOT AT ALL" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SA12D   1 "ALMOST EVERYT DAY" 2 "SEVERAL TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "SEVERAL TIMES A MONTH"
                       5 "ONCE A MONTH" 6 "NOT AT ALL" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SA12E   1 "ALMOST EVERYT DAY" 2 "SEVERAL TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "SEVERAL TIMES A MONTH"
                       5 "ONCE A MONTH" 6 "NOT AT ALL" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SA12F   1 "ALMOST EVERYT DAY" 2 "SEVERAL TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "SEVERAL TIMES A MONTH"
                       5 "ONCE A MONTH" 6 "NOT AT ALL" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SA12G   1 "ALMOST EVERYT DAY" 2 "SEVERAL TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "SEVERAL TIMES A MONTH"
                       5 "ONCE A MONTH" 6 "NOT AT ALL" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SA12H   1 "ALMOST EVERYT DAY" 2 "SEVERAL TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "SEVERAL TIMES A MONTH"
                       5 "ONCE A MONTH" 6 "NOT AT ALL" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SA12I   1 "ALMOST EVERYT DAY" 2 "SEVERAL TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "SEVERAL TIMES A MONTH"
                       5 "ONCE A MONTH" 6 "NOT AT ALL" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SSYMPT  99 "NOT CALCULATED" ;
label define A1SA13A   1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA13B   1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA13C   1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA13D   1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA13E   1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA13F   1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SNEGAF  9 "NOT CALCULATED" ;
label define A1SA14    1 "A LOT MORE OFTEN THAN USUAL"
                       2 "SOMEWHAT MORE OFTEN THAN USUAL"
                       3 "A LITTLE MORE OFTEN THAN USUAL"
                       4 "ABOUT THE SAME AS USUAL"
                       5 "A LITTLE LESS OFTEN THAN USUAL"
                       6 "SOMEWHAT LESS OFTEN THAN USUAL"
                       7 "A LOT LESS OFTEN THAN USUAL" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SA15A   1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA15B   1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA15C   1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA15D   1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA15E   1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA15F   1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SPOSAF  9 "NOT CALCULATED" ;
label define A1SA16    1 "A LOT MORE OFTEN THAN USUAL"
                       2 "SOMEWHAT MORE OFTEN THAN USUAL"
                       3 "A LITTLE MORE OFTEN THAN USUAL"
                       4 "ABOUT THE SAME AS USUAL"
                       5 "A LITTLE LESS OFTEN THAN USUAL"
                       6 "SOMEWHAT LESS OFTEN THAN USUAL"
                       7 "A LOT LESS OFTEN THAN USUAL" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SA17A   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SA17B   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SA17C   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SA17D   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SA17E   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SA17F   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SA17G   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SA17H   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SA17I   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SBADL   9 "NOT CALCULATED" ;
label define A1SIADL   9 "NOT CALCULATED" ;
label define A1SA18    1 "SEVERAL TIMES A WEEK OR MORE" 2 "ABOUT ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ABOUT ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SA19    1 "SEVERAL TIMES A WEEK OR MORE" 2 "ABOUT ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ABOUT ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SVIGOR  99 "NOT CALCULATED" ;
label define A1SA20    1 "SEVERAL TIMES A WEEK OR MORE" 2 "ABOUT ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ABOUT ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SA21    1 "SEVERAL TIMES A WEEK OR MORE" 2 "ABOUT ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ABOUT ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SMODER  99 "NOT CALCULATED" ;
label define A1SA22A   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA22B   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA22C   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA22D   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SDYSPN  0 "NO DYSPNEA" 4 "HIGHEST DYSPNEA" 9 "NOT CALCULATED" ;
label define A1SA23    97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SA24    97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SWSTHI  9 "NOT CALCULATED" ;
label define A1SA25    997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SA26    1 "VERY OVERWEIGHT" 2 "SOMEWHAT OVERWEIGHT"
                       3 "ABOUT THE RIGHT WEIGHT" 4 "SOMEWHAT UNDERWEIGHT"
                       5 "VERY UNDERWEIGHT" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA27    997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SBMI    99 "NOT CALCULATED" ;
label define A1SA28    997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SA29    997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SA30A   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA30B   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA30C   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA31    997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SA32    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA32A   97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SA33    97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SA33A   97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SA34    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA35    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA36A   97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SA36B   97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SA36C   997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SA36D   97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SUSEMD  999 "NOT CALCULATED" ;
label define A1SA37A   997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SA37B   97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SA37C   997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SA37D   997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SUSEMH  999 "NOT CALCULATED" ;
label define A1SA38A   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA38AY  97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SA38AZ  997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SA38B   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA38BY  97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SA38BZ  97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SA38C   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA38CY  97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SA38CZ  97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SA38D   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA38DY  97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SA38DZ  97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SA38E   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA38EY  97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SA38EZ  97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SA38F   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA38FY  97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SA38FZ  97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SA38G   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA38GY  97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SA38GZ  97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SA38H   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA38HY  97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SA38HZ  97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SA38I   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA38IY  97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SA38IZ  98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SA38J   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA38JY  97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SA38JZ  997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SA38K   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA38KY  97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SA38KZ  997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SA39A   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA39B   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA39C   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA39D   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA39E   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA39F   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA39G   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA39H   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA39I   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA39J   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA39K   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA39L   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA39M   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA39N   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA39O   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA39P   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SALTER  1 "YES" 2 "NO" 9 "NOT CALCULATED" ;
label define A1SA40A   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA40B   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA40C   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA40D   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA40E   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA40F   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA40G   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA40H   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA40I   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA40J   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA41    1 "NEVER" 2 "ONCE OR TWICE" 3 "3 TO 5 TIMES"
                       4 "6 TO 10 TIMES" 5 "11 TO 20 TIMES"
                       6 "MORE THAN 20 TIMES" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SA42    1 "NEVER" 2 "ONCE OR TWICE" 3 "3 TO 5 TIMES"
                       4 "6 TO 10 TIMES" 5 "11 TO 20 TIMES"
                       6 "MORE THAN 20 TIMES" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SA43A   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA43B   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA43C   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA43D   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA43E   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA44A   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA44B   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA44C   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA44D   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA44E   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA45    1 "NEVER" 2 "ONCE OR TWICE" 3 "3 TO 5 TIMES"
                       4 "6 TO 10 TIMES" 5 "11 TO 20 TIMES"
                       6 "MORE THAN 20 TIMES" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SA46    1 "NEVER" 2 "ONCE OR TWICE" 3 "3 TO 5 TIMES"
                       4 "6 TO 10 TIMES" 5 "11 TO 20 TIMES"
                       6 "MORE THAN 20 TIMES" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define SKIP_SB1  1 "SKIP" 2 "NO SKIP" ;
label define A1SB1     97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SB2     1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NONE AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SB3     1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NONE AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SB4     1 "GREAT RELIEF" 2 "SOME RELIEF" 3 "MIXED RELIEF"
                       4 "SOME REGRET" 5 "GREAT REGRET"
                       6 "NO PARTICULAR FEELING EITHER WAY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SB5A    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SB5B    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SB5C    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SB6     1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SB6A    97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SB6B    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SB6C    97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SB7A1   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SB7A2   97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SB7B1   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SB7B2   97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SB7C1   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SB7C2   97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SB7D1   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SB7D2   97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SB7E1   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SB7E2   97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SB7F1   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SB7F2   97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SB8A    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NONE AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SB8B    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NONE AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SB8C    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NONE AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SB9     1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SB9A    97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SB10    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SB10A   1 "MORE REGULAR" 2 "LESS REGULAR" 3 "NO CHANGE"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SB10B   1 "LIGHTER" 2 "HEAVIER" 3 "ABOUT THE SAME"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SB10C   1 "PREGNANCY" 2 "EXTREME DIETING"
                       3 "SIDE EFFECT OF, OR CAUSED BY SURGERY"
                       4 "SIDE EFFECT OF, OR CAUSED BY MEDICATION"
                       5 "POSSIBLE BEGINNING OF MENOPAUSE" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SC1A    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SC1B    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SC1C    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SC1D    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SC1E    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SC1F    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SC1G    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SC1H    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SC2     1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SC3A    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SC3B    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SC3C    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SC3D    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SC4A    1 "ELIGIBLE" 2 "NOT ELIGIBLE" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SC4B    1 "ELIGIBLE" 2 "NOT ELIGIBLE" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SC4C    1 "ELIGIBLE" 2 "NOT ELIGIBLE" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define SKIP_SC5  1 "SKIP" 2 "NO SKIP" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SC5A    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SC5B    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SC5C    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SC5D    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SC5E    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SC5F    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SC5G    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SC5H    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SC6     1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SD1     1 "EXCELLENT" 2 "VERY GOOD" 3 "GOOD" 4 "FAIR" 5 "POOR"
                       6 "DECEASED" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SD2     1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SD2A    997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SD2B    1 "EXCELLENT" 2 "VERY GOOD" 3 "GOOD" 4 "FAIR" 5 "POOR"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SD2C    45 "1945 OR PRIOR TO 1945" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SD2D    997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SD3     1 "EXCELLENT" 2 "VERY GOOD" 3 "GOOD" 4 "FAIR" 5 "POOR"
                       6 "DECEASED" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SD4     1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SD4A    997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SD4B    1 "EXCELLENT" 2 "VERY GOOD" 3 "GOOD" 4 "FAIR" 5 "POOR"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SD4C    45 "1945 OR PRIOR TO 1945" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SD4D    997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SE2     1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SE3     1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SE4     1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SE5     1 "ENGLISH ONLY LANGUAGE SPOKEN REGULARLY"
                       2 "ENGLISH MAIN, SECOND LANGUAGE ALSO SPOKEN REGULARLY"
                       3 "OTHER LANGUAGE MAIN, ENGLISH ALSO SPOKEN REGULARLY"
                       4 "OTHER LANGUAGE ONLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SE6     1 "VERY IMPORTANT" 2 "SOMEWHAT IMPORTANT"
                       3 "NOT VERY IMPORTANT" 4 "NOT AT ALL IMPORTANT"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SE7     1 "RURAL" 2 "SMALL TOWN" 3 "MEDIUM-SIZED TOWN"
                       4 "SUBURBS" 5 "CITY" 6 "MOVED AROUND" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SE8     97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SE9     1 "A LOT BETTER OFF" 2 "SOMEWHAT BETTER OFF"
                       3 "A LITTLE BETTER OFF" 4 "SAME AS AVERAGE FAMILY"
                       5 "A LITTLE WORSE OFF" 6 "SOMEWHAT WORSE OFF"
                       7 "A LOT WORSE OFF" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SE10    1 "A LOT BETTER OFF" 2 "SOMEWHAT BETTER OFF"
                       3 "A LITTLE BETTER OFF" 4 "SAME AS YOU"
                       5 "A LITTLE WORSE OFF" 6 "SOMEWHAT WORSE OFF"
                       7 "A LOT WORSE OFF" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SE11    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NONE" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SE12    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NONE" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define SKIP_E13  1 "SKIP" 2 "NO SKIP" ;
label define A1SE13    1 "EXCELLENT" 2 "VERY GOOD" 3 "GOOD" 4 "FAIR" 5 "POOR"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SE14A   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SE14B   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SE14C   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SE14D   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SE14E   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SE14F   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SE14G   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SE14H   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SE14I   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SE14J   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SE14K   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SE14L   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SE14M   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SEMA    9 "NOT CALCULATED" ;
label define A1SEMD    9 "NOT CALCULATED" ;
label define A1SMMOD   9 "NOT CALCULATED" ;
label define A1SE15    1 "EXCELLENT" 2 "VERY GOOD" 3 "GOOD" 4 "FAIR" 5 "POOR"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SE16A   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SE16B   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SE16C   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SE16D   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SE16E   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SE16F   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SE16G   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SE16H   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SE16I   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SE16J   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SE16K   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SE16L   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SE16M   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SEFA    9 "NOT CALCULATED" ;
label define A1SEFD    9 "NOT CALCULATED" ;
label define A1SEFMOD  9 "NOT CALCULATED" ;
label define A1SEMAPA  9 "NOT CALCULATED" ;
label define A1SE17A   1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       6 "DOES NOT APPLY" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SE17B   1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       6 "DOES NOT APPLY" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SE17C   1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       6 "DOES NOT APPLY" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SE17D   1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       6 "DOES NOT APPLY" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SE17E   1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SE17F   1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       6 "DOES NOT APPLY" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SE17G   1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       6 "DOES NOT APPLY" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SE17H   1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       6 "DOES NOT APPLY" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SE17I   1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       6 "DOES NOT APPLY" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SE17J   1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SE17K   1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       6 "DOES NOT APPLY" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SE17L   1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       6 "DOES NOT APPLY" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SE17M   1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       6 "DOES NOT APPLY" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SE17N   1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       6 "DOES NOT APPLY" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SE17O   1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SE18A   97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SE18B   97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SE18C   7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SE19A   97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SE19B   97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SE19C   7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF1A    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF1B    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF1C    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF1D    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF1E    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF1F    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF1G    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF1H    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF1I    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF1J    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF1K    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF1L    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF1M    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF1N    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF1O    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF1P    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF1Q    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF1R    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF1S    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF1T    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF1U    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF1V    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF1W    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF1X    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF1Y    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF1Z    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF1AA   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF1BB   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF1CC   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF1DD   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SCTRL   9 "NOT CALCULATED" ;
label define A1SPWBA   99 "NOT CALCULATED" ;
label define A1SPWBE   99 "NOT CALCULATED" ;
label define A1SPWBG   99 "NOT CALCULATED" ;
label define A1SPWBR   99 "NOT CALCULATED" ;
label define A1SPWBU   99 "NOT CALCULATED" ;
label define A1SPWBS   99 "NOT CALCULATED" ;
label define A1SCONST  99 "NOT CALCULATED" ;
label define A1SMASTE  99 "NOT CALCULATED" ;
label define A1SF2A    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF2B    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF2C    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF2D    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF2E    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF2F    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF2G    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF2H    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF2I    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF2J    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF2K    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SMAR    99 "NOT CALCULATED" ;
label define A1SFAM    99 "NOT CALCULATED" ;
label define A1SF3A    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF3B    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF3C    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF3D    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF3E    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF3F    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF3G    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF3H    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF3I    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF3J    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF3K    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF3L    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF3M    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF3N    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF3O    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF3P    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF3Q    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF3R    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF3S    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF3T    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF3U    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF3V    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF3W    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF3X    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF3Y    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF3Z    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF3AA   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF3BB   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF3CC   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF3DD   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF3EE   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF3FF   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF3GG   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF3HH   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF3II   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF3JJ   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF3KK   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SPERSI  9 "NOT CALCULATED" ;
label define A1SCHANG  9 "NOT CALCULATED" ;
label define A1SREAPP  9 "NOT CALCULATED" ;
label define A1SDIREC  9 "NOT CALCULATED" ;
label define A1STODAY  9 "NOT CALCULATED" ;
label define A1SFORSG  9 "NOT CALCULATED" ;
label define A1SINSGH  9 "NOT CALCULATED" ;
label define A1SSUFFI  9 "NOT CALCULATED" ;
label define A1SADVIC  9 "NOT CALCULATED" ;
label define A1SF4A    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF4B    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF4C    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF4D    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF4E    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF4F    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF4G    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF4H    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF4I    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF4J    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF4K    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF4L    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF4M    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF4N    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF4O    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF4P    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF4Q    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF4R    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF4S    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF4T    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF4U    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF4V    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF4W    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF4X    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF4Y    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF4Z    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF4AA   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF4BB   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF4CC   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF4DD   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SAGENC  9 "NOT CALCULATED" ;
label define A1SAGREE  9 "NOT CALCULATED" ;
label define A1SEXTRA  9 "NOT CALCULATED" ;
label define A1SNEURO  9 "NOT CALCULATED" ;
label define A1SCONS   9 "NOT CALCULATED" ;
label define A1SOPEN   9 "NOT CALCULATED" ;
label define A1SF5A    0 "NOT AT ALL" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SF5B    0 "NOT AT ALL" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SF5C    0 "NOT AT ALL" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SF5D    0 "NOT AT ALL" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SF5E    0 "NOT AT ALL" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SF5F    0 "NOT AT ALL" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SF5G    0 "NOT AT ALL" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SF5H    0 "NOT AT ALL" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SF5I    0 "NOT AT ALL" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SF5J    0 "NOT AT ALL" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SF5K    0 "NOT AT ALL" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SF5L    0 "NOT AT ALL" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SF5M    0 "NOT AT ALL" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SF5N    0 "NOT AT ALL" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SF5O    0 "NOT AT ALL" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SF5P    0 "NOT AT ALL" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SF5Q    0 "NOT AT ALL" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SF5R    0 "NOT AT ALL" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SF6A    1 "A LOT MORE LIKE A" 2 "SOMEWHAT MORE LIKE A"
                       3 "A LITTLE MORE LIKE A" 4 "A LITTLE MORE LIKE B"
                       5 "SOMEWHAT MORE LIKE B" 6 "A LOT MORE LIKE B"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF6B    1 "A LOT MORE LIKE A" 2 "SOMEWHAT MORE LIKE A"
                       3 "A LITTLE MORE LIKE A" 4 "A LITTLE MORE LIKE B"
                       5 "SOMEWHAT MORE LIKE B" 6 "A LOT MORE LIKE B"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF6C    1 "A LOT MORE LIKE A" 2 "SOMEWHAT MORE LIKE A"
                       3 "A LITTLE MORE LIKE A" 4 "A LITTLE MORE LIKE B"
                       5 "SOMEWHAT MORE LIKE B" 6 "A LOT MORE LIKE B"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF7A    1 "A LOT MORE LIKE A" 2 "SOMEWHAT MORE LIKE A"
                       3 "A LITTLE MORE LIKE A" 4 "A LITTLE MORE LIKE B"
                       5 "SOMEWHAT MORE LIKE B" 6 "A LOT MORE LIKE B"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF7B    1 "A LOT MORE LIKE A" 2 "SOMEWHAT MORE LIKE A"
                       3 "A LITTLE MORE LIKE A" 4 "A LITTLE MORE LIKE B"
                       5 "SOMEWHAT MORE LIKE B" 6 "A LOT MORE LIKE B"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF7C    1 "A LOT MORE LIKE A" 2 "SOMEWHAT MORE LIKE A"
                       3 "A LITTLE MORE LIKE A" 4 "A LITTLE MORE LIKE B"
                       5 "SOMEWHAT MORE LIKE B" 6 "A LOT MORE LIKE B"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF8A    1 "A LOT MORE LIKE A" 2 "SOMEWHAT MORE LIKE A"
                       3 "A LITTLE MORE LIKE A" 4 "A LITTLE MORE LIKE B"
                       5 "SOMEWHAT MORE LIKE B" 6 "A LOT MORE LIKE B"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF8B    1 "A LOT MORE LIKE A" 2 "SOMEWHAT MORE LIKE A"
                       3 "A LITTLE MORE LIKE A" 4 "A LITTLE MORE LIKE B"
                       5 "SOMEWHAT MORE LIKE B" 6 "A LOT MORE LIKE B"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SF8C    1 "A LOT MORE LIKE A" 2 "SOMEWHAT MORE LIKE A"
                       3 "A LITTLE MORE LIKE A" 4 "A LITTLE MORE LIKE B"
                       5 "SOMEWHAT MORE LIKE B" 6 "A LOT MORE LIKE B"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SG1A    0 "NOT AT ALL" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG1B    0 "NOT AT ALL" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG1C    0 "NOT AT ALL" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG1D    0 "NOT AT ALL" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG1E    0 "NOT AT ALL" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG1F    0 "NOT AT ALL" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG1G    0 "NOT AT ALL" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG1H    0 "NOT AT ALL" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG1I    0 "NOT AT ALL" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG1J    0 "NOT AT ALL" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG1K    0 "NOT AT ALL" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG1L    0 "NOT AT ALL" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG1M    0 "NOT AT ALL" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG1N    0 "NOT AT ALL" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG1O    0 "NOT AT ALL" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG1P    0 "NOT AT ALL" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG1Q    0 "NOT AT ALL" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG1R    0 "NOT AT ALL" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG2A    0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG2B    0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG2C    0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG2D    0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG2E    0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG2F    0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG2G    0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG2H    0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG2I    0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG2J    0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG2K    0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG2L    0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG2M    0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG2N    0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG2O    0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG2P    0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG2Q    0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG2R    0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG2S    0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG2T    0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG2U    0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG3     996 "996 OR GREATER" 997 "DONT KNOW"
                       998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SG4     996 "996 OR GREATER" 997 "DONT KNOW"
                       998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SG5     97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SG6     998 "REFUSED/MISSING" ;
label define A1SG7     998 "REFUSED/MISSING" ;
label define A1SG8     998 "REFUSED/MISSING" ;
label define A1SH1     1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SH2     1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SH3     1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SH4     1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SH5     1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SH6     1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SH7     1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI1A1   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI1A2   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI1A3   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI1B1   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI1B2   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI1B3   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI1C1   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI1C2   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI1C3   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI1D1   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI1D2   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI1D3   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI1E1   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI1E2   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI1E3   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI1F1   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI1F2   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI1F3   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI1G1   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI1G2   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI1G3   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI1H1   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI1H2   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI1H3   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI1I1   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI1I2   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI1I3   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI1J1   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI1J2   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI1J3   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI1K1   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI1K2   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI1K3   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI2     0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SI3     0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SI4     0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SI5     0 "NONE" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SI6     0 "NONE" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define SKIP_SI7  1 "SKIP" 2 "NO SKIP" ;
label define A1SI7     97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SI8     97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SI9     97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SI10    9997 "DONT KNOW" 9998 "REFUSED/MISSING" 9999 "INAPP" ;
label define A1SI11    1 "WANTED TO WORK BUT COULD NOT FIND A JOB"
                       2 "PHYSICAL INJURY OR ILLNESS KEPT YOU FROM WORKING"
                       3 "MENTAL OR EMOTIONAL PROBLEMS KEPT YOU FROM WORKING"
                       4 "ALCOHOL OR SUBSTANCE ABUSE KEPT YOU FROM WORKING"
                       5 "DID NOT WORK BECAUSE OF FAMILY RESPONSIBILITIES"
                       6 "ATTENDING SCHOOL PART-TIME"
                       7 "CHOSE NOT TO WORK TO PURSUE PERSONAL INTERESTS"
                       97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SI12A   1 "WORKED FULL-TIME" 2 "WORKED PART-TIME"
                       3 "NO WORK OR WORKED LESS THAN 6 MONTHS"
                       4 "FULL-TIME STUDENT" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SI12B   1 "WORKED FULL-TIME" 2 "WORKED PART-TIME"
                       3 "NO WORK OR WORKED LESS THAN 6 MONTHS"
                       4 "FULL-TIME STUDENT" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SI12C   1 "WORKED FULL-TIME" 2 "WORKED PART-TIME"
                       3 "NO WORK OR WORKED LESS THAN 6 MONTHS"
                       4 "FULL-TIME STUDENT" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SI12D   1 "WORKED FULL-TIME" 2 "WORKED PART-TIME"
                       3 "NO WORK OR WORKED LESS THAN 6 MONTHS"
                       4 "FULL-TIME STUDENT" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SI12E   1 "WORKED FULL-TIME" 2 "WORKED PART-TIME"
                       3 "NO WORK OR WORKED LESS THAN 6 MONTHS"
                       4 "FULL-TIME STUDENT" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SI12F   1 "WORKED FULL-TIME" 2 "WORKED PART-TIME"
                       3 "NO WORK OR WORKED LESS THAN 6 MONTHS"
                       4 "FULL-TIME STUDENT" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SI12G   1 "WORKED FULL-TIME" 2 "WORKED PART-TIME"
                       3 "NO WORK OR WORKED LESS THAN 6 MONTHS"
                       4 "FULL-TIME STUDENT" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SI12H   1 "WORKED FULL-TIME" 2 "WORKED PART-TIME"
                       3 "NO WORK OR WORKED LESS THAN 6 MONTHS"
                       4 "FULL-TIME STUDENT" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SI12I   1 "WORKED FULL-TIME" 2 "WORKED PART-TIME"
                       3 "NO WORK OR WORKED LESS THAN 6 MONTHS"
                       4 "FULL-TIME STUDENT" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SI12J   1 "WORKED FULL-TIME" 2 "WORKED PART-TIME"
                       3 "NO WORK OR WORKED LESS THAN 6 MONTHS"
                       4 "FULL-TIME STUDENT" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SI13A   97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SI13B   97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SI13C   97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SI13D   97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SI14    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI15A   1 "4 OR MORE TIMES PER WEEK" 2 "2 TO 3 TIMES PER WEEK"
                       3 "ONCE A WEEK" 4 "1 TO 3 TIMES PER MONTH"
                       5 "LESS THAN ONCE A MONTH OR NEVER" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SI15B   1 "4 OR MORE TIMES PER WEEK" 2 "2 TO 3 TIMES PER WEEK"
                       3 "ONCE A WEEK" 4 "1 TO 3 TIMES PER MONTH"
                       5 "LESS THAN ONCE A MONTH OR NEVER" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SI15C   1 "4 OR MORE TIMES PER WEEK" 2 "2 TO 3 TIMES PER WEEK"
                       3 "ONCE A WEEK" 4 "1 TO 3 TIMES PER MONTH"
                       5 "LESS THAN ONCE A MONTH OR NEVER" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SI15D   1 "4 OR MORE TIMES PER WEEK" 2 "2 TO 3 TIMES PER WEEK"
                       3 "ONCE A WEEK" 4 "1 TO 3 TIMES PER MONTH"
                       5 "LESS THAN ONCE A MONTH OR NEVER" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SI16    9997 "DONT KNOW" 9998 "REFUSED/MISSING" 9999 "INAPP" ;
label define A1SI17    9997 "DONT KNOW" 9998 "REFUSED/MISSING" 9999 "INAPP" ;
label define A1SI18    0 "WORK AT HOME" 997 "DONT KNOW" 998 "REFUSED/MISSING"
                       999 "INAPP" ;
label define A1SI19    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI20    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI21    1 "EXCELLENT" 2 "VERY GOOD" 3 "GOOD" 4 "FAIR" 5 "POOR"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SI22    1 "VERY POSITIVE" 2 "SOMEWHAT POSITIVE"
                       3 "NEITHER POSITIVE NOR NEGATIVE/BALANCES OUT"
                       4 "SOMEWHAT NEGATIVE" 5 "VERY NEGATIVE" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SI23    1 "VERY POSITIVE" 2 "SOMEWHAT POSITIVE"
                       3 "NEITHER POSITIVE NOR NEGATIVE/BALANCES OUT"
                       4 "SOMEWHAT NEGATIVE" 5 "VERY NEGATIVE" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SI24    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SI25    997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SI26    1 "VERY SERIOUS" 2 "MODERATELY SERIOUS"
                       3 "SOMEWHAT SERIOUS" 4 "A LITTLE SERIOUS"
                       5 "NOT VERY SERIOUS AT ALL" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SI27A   1 "ALL OF THE TIME" 2 "MOST OF THE TIME" 3 "SOMETIMES"
                       4 "RARELY" 5 "NEVER" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI27B   1 "ALL OF THE TIME" 2 "MOST OF THE TIME" 3 "SOMETIMES"
                       4 "RARELY" 5 "NEVER" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI27C   1 "ALL OF THE TIME" 2 "MOST OF THE TIME" 3 "SOMETIMES"
                       4 "RARELY" 5 "NEVER" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI27D   1 "ALL OF THE TIME" 2 "MOST OF THE TIME" 3 "SOMETIMES"
                       4 "RARELY" 5 "NEVER" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI27E   1 "ALL OF THE TIME" 2 "MOST OF THE TIME" 3 "SOMETIMES"
                       4 "RARELY" 5 "NEVER" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI27F   1 "ALL OF THE TIME" 2 "MOST OF THE TIME" 3 "SOMETIMES"
                       4 "RARELY" 5 "NEVER" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI27G   1 "ALL OF THE TIME" 2 "MOST OF THE TIME" 3 "SOMETIMES"
                       4 "RARELY" 5 "NEVER" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI27H   1 "ALL OF THE TIME" 2 "MOST OF THE TIME" 3 "SOMETIMES"
                       4 "RARELY" 5 "NEVER" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI27I   1 "ALL OF THE TIME" 2 "MOST OF THE TIME" 3 "SOMETIMES"
                       4 "RARELY" 5 "NEVER" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI27J   1 "ALL OF THE TIME" 2 "MOST OF THE TIME" 3 "SOMETIMES"
                       4 "RARELY" 5 "NEVER" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI27K   1 "ALL OF THE TIME" 2 "MOST OF THE TIME" 3 "SOMETIMES"
                       4 "RARELY" 5 "NEVER" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI27L   1 "ALL OF THE TIME" 2 "MOST OF THE TIME" 3 "SOMETIMES"
                       4 "RARELY" 5 "NEVER" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI27M   1 "ALL OF THE TIME" 2 "MOST OF THE TIME" 3 "SOMETIMES"
                       4 "RARELY" 5 "NEVER" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI27N   1 "ALL OF THE TIME" 2 "MOST OF THE TIME" 3 "SOMETIMES"
                       4 "RARELY" 5 "NEVER" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI27O   1 "ALL OF THE TIME" 2 "MOST OF THE TIME" 3 "SOMETIMES"
                       4 "RARELY" 5 "NEVER" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI27P   1 "ALL OF THE TIME" 2 "MOST OF THE TIME" 3 "SOMETIMES"
                       4 "RARELY" 5 "NEVER" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SPOSWF  99 "NOT CALCULATED" ;
label define A1SNEGWF  99 "NOT CALCULATED" ;
label define A1SPOSFW  99 "NOT CALCULATED" ;
label define A1SNEGFW  99 "NOT CALCULATED" ;
label define A1SI28A   1 "ALL OF THE TIME" 2 "MOST OF THE TIME" 3 "SOMETIMES"
                       4 "RARELY" 5 "NEVER" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI28B   1 "ALL OF THE TIME" 2 "MOST OF THE TIME" 3 "SOMETIMES"
                       4 "RARELY" 5 "NEVER" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI28C   1 "ALL OF THE TIME" 2 "MOST OF THE TIME" 3 "SOMETIMES"
                       4 "RARELY" 5 "NEVER" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI28D   1 "ALL OF THE TIME" 2 "MOST OF THE TIME" 3 "SOMETIMES"
                       4 "RARELY" 5 "NEVER" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI28E   1 "ALL OF THE TIME" 2 "MOST OF THE TIME" 3 "SOMETIMES"
                       4 "RARELY" 5 "NEVER" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI28F   1 "ALL OF THE TIME" 2 "MOST OF THE TIME" 3 "SOMETIMES"
                       4 "RARELY" 5 "NEVER" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI28G   1 "ALL OF THE TIME" 2 "MOST OF THE TIME" 3 "SOMETIMES"
                       4 "RARELY" 5 "NEVER" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI28H   1 "ALL OF THE TIME" 2 "MOST OF THE TIME" 3 "SOMETIMES"
                       4 "RARELY" 5 "NEVER" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI28I   1 "ALL OF THE TIME" 2 "MOST OF THE TIME" 3 "SOMETIMES"
                       4 "RARELY" 5 "NEVER" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI28J   1 "ALL OF THE TIME" 2 "MOST OF THE TIME" 3 "SOMETIMES"
                       4 "RARELY" 5 "NEVER" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI29A   1 "ALL OF THE TIME" 2 "MOST OF THE TIME" 3 "SOMETIMES"
                       4 "RARELY" 5 "NEVER" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI29B   1 "ALL OF THE TIME" 2 "MOST OF THE TIME" 3 "SOMETIMES"
                       4 "RARELY" 5 "NEVER" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI29C   1 "ALL OF THE TIME" 2 "MOST OF THE TIME" 3 "SOMETIMES"
                       4 "RARELY" 5 "NEVER" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI29D   1 "ALL OF THE TIME" 2 "MOST OF THE TIME" 3 "SOMETIMES"
                       4 "RARELY" 5 "NEVER" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SJCSD   99 "NOT CALCULATED" ;
label define A1SJCDA   99 "NOT CALCULATED" ;
label define A1SJCDS   99 "NOT CALCULATED" ;
label define A1SJCCS   99 "NOT CALCULATED" ;
label define A1SJCSS   99 "NOT CALCULATED" ;
label define A1SI30A   1 "ALL OF THE TIME" 2 "MOST OF THE TIME" 3 "SOMETIMES"
                       4 "RARELY" 5 "NEVER" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SI30B   1 "ALL OF THE TIME" 2 "MOST OF THE TIME" 3 "SOMETIMES"
                       4 "RARELY" 5 "NEVER" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SI30C   1 "ALL OF THE TIME" 2 "MOST OF THE TIME" 3 "SOMETIMES"
                       4 "RARELY" 5 "NEVER" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SI30D   1 "ALL OF THE TIME" 2 "MOST OF THE TIME" 3 "SOMETIMES"
                       4 "RARELY" 5 "NEVER" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SI30E   1 "ALL OF THE TIME" 2 "MOST OF THE TIME" 3 "SOMETIMES"
                       4 "RARELY" 5 "NEVER" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SI31A   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SI31B   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SI31C   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SI31D   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SI31E   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SI31F   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SPIWOR  9 "NOT CALCULATED" ;
label define A1SI32A   1 "ALL OF THE TIME" 2 "MOST OF THE TIME" 3 "SOMETIMES"
                       4 "RARELY" 5 "NEVER" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI32B   1 "ALL OF THE TIME" 2 "MOST OF THE TIME" 3 "SOMETIMES"
                       4 "RARELY" 5 "NEVER" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI32C   1 "ALL OF THE TIME" 2 "MOST OF THE TIME" 3 "SOMETIMES"
                       4 "RARELY" 5 "NEVER" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI32D   1 "ALL OF THE TIME" 2 "MOST OF THE TIME" 3 "SOMETIMES"
                       4 "RARELY" 5 "NEVER" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI33A   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SI33B   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SI33C   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SI34A   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       6 "DOES NOT APPLY" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI34B   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       6 "DOES NOT APPLY" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SI34C   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       6 "DOES NOT APPLY" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SJ1     0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SJ2     0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SJ3     0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SJ4     0 "NONE" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SJ5     0 "NONE" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SJ6     1 "MORE MONEY THAN YOU NEED" 2 "JUST ENOUGH MONEY"
                       3 "NOT ENOUGH MONEY" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SJ7     1 "VERY DIFFICULT" 2 "SOMEWHAT DIFFICULT"
                       3 "NOT VERY DIFFICULT" 4 "NOT AT ALL DIFFICULT"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SJ8     1 "LESS THAN $0/LOSS" 2 "$0/NONE" 3 "$1-1000"
                       4 "$1000-1999" 5 "$2000-2999" 6 "$3000-3999"
                       7 "$4000-4999" 8 "$5000-5999" 9 "$6000-6999"
                       10 "$7000-7999" 11 "$8000-8999" 12 "$9000-9999"
                       13 "$10000-10999" 14 "$11000-11999" 15 "$12000-12999"
                       16 "$13000-13999" 17 "$14000-14999" 18 "$15000-15999"
                       19 "$16000-16999" 20 "$17000-17999" 21 "$18000-18999"
                       22 "$19000-19999" 23 "$20000-24999" 24 "$25000-29999"
                       25 "$30000-34999" 26 "$35000-39999" 27 "$40000-44999"
                       28 "$45000-49999" 29 "$50000-74999" 30 "$75000-99999"
                       31 "$100,000 OR MORE" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SJ8M    125000 "$100,000 OR MORE" 999999 "NOT CALCULATED" ;
label define A1SJ9     1 "LESS THAN $0/LOSS" 2 "$0/NONE" 3 "$1-1000"
                       4 "$1000-1999" 5 "$2000-2999" 6 "$3000-3999"
                       7 "$4000-4999" 8 "$5000-5999" 9 "$6000-6999"
                       10 "$7000-7999" 11 "$8000-8999" 12 "$9000-9999"
                       13 "$10000-10999" 14 "$11000-11999" 15 "$12000-12999"
                       16 "$13000-13999" 17 "$14000-14999" 18 "$15000-15999"
                       19 "$16000-16999" 20 "$17000-17999" 21 "$18000-18999"
                       22 "$19000-19999" 23 "$20000-24999" 24 "$25000-29999"
                       25 "$30000-34999" 26 "$35000-39999" 27 "$40000-44999"
                       28 "$45000-49999" 29 "$50000-74999" 30 "$75000-99999"
                       31 "$100,000 OR MORE" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SJ9M    125000 "$100,000 OR MORE" 999999 "NOT CALCULATED" ;
label define A1SHWEARN 999999 "Not Calculated" ;
label define A1SJ10    1 "LESS THAN $0/LOSS" 2 "$0/NONE" 3 "$1-1000"
                       4 "$1000-1999" 5 "$2000-2999" 6 "$3000-3999"
                       7 "$4000-4999" 8 "$5000-5999" 9 "$6000-6999"
                       10 "$7000-7999" 11 "$8000-8999" 12 "$9000-9999"
                       13 "$10000-10999" 14 "$11000-11999" 15 "$12000-12999"
                       16 "$13000-13999" 17 "$14000-14999" 18 "$15000-15999"
                       19 "$16000-16999" 20 "$17000-17999" 21 "$18000-18999"
                       22 "$19000-19999" 23 "$20000-24999" 24 "$25000-29999"
                       25 "$30000-34999" 26 "$35000-39999" 27 "$40000-44999"
                       28 "$45000-49999" 29 "$50000-74999" 30 "$75000-99999"
                       31 "$100,000 OR MORE" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SJ10M   125000 "$100,000 OR MORE" 999999 "NOT CALCULATED" ;
label define A1SJ11    1 "LESS THAN $0/LOSS" 2 "$0/NONE" 3 "$1-1000"
                       4 "$1000-1999" 5 "$2000-2999" 6 "$3000-3999"
                       7 "$4000-4999" 8 "$5000-5999" 9 "$6000-6999"
                       10 "$7000-7999" 11 "$8000-8999" 12 "$9000-9999"
                       13 "$10000-10999" 14 "$11000-11999" 15 "$12000-12999"
                       16 "$13000-13999" 17 "$14000-14999" 18 "$15000-15999"
                       19 "$16000-16999" 20 "$17000-17999" 21 "$18000-18999"
                       22 "$19000-19999" 23 "$20000-24999"
                       24 "$25,000 OR MORE" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SJ11M   27500 "$25,000 OR MORE" 999999 "NOT CALCULATED" ;
label define A1SJ12    1 "LESS THAN $0/LOSS" 2 "$0/NONE" 3 "$1-1000"
                       4 "$1000-1999" 5 "$2000-2999" 6 "$3000-3999"
                       7 "$4000-4999" 8 "$5000-5999" 9 "$6000-6999"
                       10 "$7000-7999" 11 "$8000-8999" 12 "$9000-9999"
                       13 "$10000-10999" 14 "$11000-11999" 15 "$12000-12999"
                       16 "$13000-13999" 17 "$14000-14999" 18 "$15000-15999"
                       19 "$16000-16999" 20 "$17000-17999" 21 "$18000-18999"
                       22 "$19000-19999" 23 "$20000-24999"
                       24 "$25,000 OR MORE" 97 "DONT KNOW" 98 "MISSING DATA"
                       99 "INAPP" ;
label define A1SJ12M   27500 "$25,000 OR MORE" 999999 "NOT CALCULATED" ;
label define A1SJ13    1 "LESS THAN $0/LOSS" 2 "$0/NONE" 3 "$1-1000"
                       4 "$1000-1999" 5 "$2000-2999" 6 "$3000-3999"
                       7 "$4000-4999" 8 "$5000-5999" 9 "$6000-6999"
                       10 "$7000-7999" 11 "$8000-8999" 12 "$9000-9999"
                       13 "$10000-10999" 14 "$11000-11999" 15 "$12000-12999"
                       16 "$13000-13999" 17 "$14000-14999" 18 "$15000-15999"
                       19 "$16000-16999" 20 "$17000-17999" 21 "$18000-18999"
                       22 "$19000-19999" 23 "$20000-24999" 24 "$25000-29999"
                       25 "$30000-34999" 26 "$35000-39999" 27 "$40000-44999"
                       28 "$45000-49999" 29 "$50000-74999" 30 "$75000-99999"
                       31 "$100000 OR MORE" 97 "DONT KNOW" 98 "MISSING DATA"
                       99 "INAPP" ;
label define A1SJ13M   125000 "$100,000 OR MORE" 999999 "NOT CALCULATED" ;
label define A1SHHTOT  300000 "$300,000 OR MORE" 999999 "NOT CALCULATED" ;
label define A1SJ14    1 "WOULD HAVE MONEY LEFT OVER"
                       2 "WOULD STILL OWE MONEY"
                       3 "DEBTS WOULD JUST ABOUT EQUAL ASSETS" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SJ15    1 "LESS THAN $0/LOSS" 2 "$0/NONE" 3 "$1-1000"
                       4 "$1000-1999" 5 "$2000-2999" 6 "$3000-3999"
                       7 "$4000-4999" 8 "$5000-5999" 9 "$6000-6999"
                       10 "$7000-7999" 11 "$8000-8999" 12 "$9000-9999"
                       13 "$10000-10999" 14 "$11000-11999" 15 "$12000-12999"
                       16 "$13000-13999" 17 "$14000-14999" 18 "$15000-15999"
                       19 "$16000-16999" 20 "$17000-17999" 21 "$18000-18999"
                       22 "$19000-19999" 23 "$20000-24999" 24 "$25000-29999"
                       25 "$30000-34999" 26 "$35000-39999" 27 "$40000-44999"
                       28 "$45000-49999" 29 "$50000-74999" 30 "$75000-99999"
                       31 "$100000-149999" 32 "$150000-199999"
                       33 "$200000-299999" 34 "$300000-499999"
                       35 "$500000-999999" 36 "$1000000 OR MORE"
                       97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SASSET  99999 "NOT CALCULATED" ;
label define A1SJ16    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SJ17    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SJ18    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SJ19    1 "YES" 2 "NO" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SK1     0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SK2     0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SK3     0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SK4     0 "NONE" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SK5     0 "NONE" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SK6A    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SK6B    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SK6C    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SK6D    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SK6E    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SK6F    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SGENER  99 "NOT CALCULATED" ;
label define A1SK7A    0 "NONE" 10 "VERY GREAT" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SK7B    0 "NONE" 10 "VERY GREAT" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SK7C    0 "NONE" 10 "VERY GREAT" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SK7D    0 "NONE" 10 "VERY GREAT" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SK7E    0 "NONE" 10 "VERY GREAT" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SK7F    0 "NONE" 10 "VERY GREAT" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SK7G    0 "NONE" 10 "VERY GREAT" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SK7H    0 "NONE" 10 "VERY GREAT" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SK7I    0 "NONE" 10 "VERY GREAT" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SK7J    0 "NONE" 10 "VERY GREAT" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SK7K    0 "NONE" 10 "VERY GREAT" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SK7L    0 "NONE" 10 "VERY GREAT" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SK7M    0 "NONE" 10 "VERY GREAT" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SK7N    0 "NONE" 10 "VERY GREAT" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SK7O    0 "NONE" 10 "VERY GREAT" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SK7P    0 "NONE" 10 "VERY GREAT" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SK7Q    0 "NONE" 10 "VERY GREAT" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SK7R    0 "NONE" 10 "VERY GREAT" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SK7A1S  0 "NONE" 10 "VERY GREAT" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SPRIOB  99 "NOT CALCULATED" ;
label define A1SCVOB3  99 "NOT CALCULATED" ;
label define A1SCVOB5  99 "NOT CALCULATED" ;
label define A1SWKOB   99 "NOT CALCULATED" ;
label define A1SALTRU  99 "NOT CALCULATED" ;
label define A1SK8A    997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SK8B    997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SK8C    997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SK8D    997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SK9A    97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SK9B    97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SK9C    97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SK9D    97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SK9E    998 "REFUSED/MISSING" ;
label define A1SK10A   0 "NONE OR DOES NOT APPLY" 997 "DONT KNOW"
                       998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SK10B   0 "NONE OR DOES NOT APPLY" 997 "DONT KNOW"
                       998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SK10C   0 "NONE OR DOES NOT APPLY" 997 "DONT KNOW"
                       998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SK10D   0 "NONE OR DOES NOT APPLY" 997 "DONT KNOW"
                       998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SK10E   0 "NONE OR DOES NOT APPLY" 997 "DONT KNOW"
                       998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SK10F   0 "NONE OR DOES NOT APPLY" 997 "DONT KNOW"
                       998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SPSUPE  9999 "NOT CALCULATED" ;
label define A1SK11A   0 "NONE OR DOES NOT APPLY" 997 "DONT KNOW"
                       998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SK11B   0 "NONE OR DOES NOT APPLY" 997 "DONT KNOW"
                       998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SK11C   0 "NONE OR DOES NOT APPLY" 997 "DONT KNOW"
                       998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SK11D   0 "NONE OR DOES NOT APPLY" 997 "DONT KNOW"
                       998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SK11E   0 "NONE OR DOES NOT APPLY" 997 "DONT KNOW"
                       998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SK11F   0 "NONE OR DOES NOT APPLY" 997 "DONT KNOW"
                       998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SRSUPE  9999 "NOT CALCULATED" ;
label define A1SK12A   0 "NONE OR DOES NOT APPLY" 997 "DONT KNOW"
                       998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SK12B   0 "NONE OR DOES NOT APPLY" 997 "DONT KNOW"
                       998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SK12C   0 "NONE OR DOES NOT APPLY" 997 "DONT KNOW"
                       998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SK12D   0 "NONE OR DOES NOT APPLY" 997 "DONT KNOW"
                       998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SK12E   0 "NONE OR DOES NOT APPLY" 997 "DONT KNOW"
                       998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SPSUPI  999 "NOT CALCULATED" ;
label define A1SK13A   0 "NONE OR DOES NOT APPLY" 997 "DONT KNOW"
                       998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SK13B   0 "NONE OR DOES NOT APPLY" 997 "DONT KNOW"
                       998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SK13C   0 "NONE OR DOES NOT APPLY" 997 "DONT KNOW"
                       998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SK13D   0 "NONE OR DOES NOT APPLY" 997 "DONT KNOW"
                       998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SK13E   0 "NONE OR DOES NOT APPLY" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SK13F   0 "NONE OR DOES NOT APPLY" 997 "DONT KNOW"
                       998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SK13G   0 "NONE OR DOES NOT APPLY" 997 "DONT KNOW"
                       998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SK13H   0 "NONE OR DOES NOT APPLY" 997 "DONT KNOW"
                       998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SRSUIF  999 "NOT CALCULATED" ;
label define A1SRSUIO  99 "NOT CALCULATED" ;
label define A1SK14A   0 "NONE OR DOES NOT APPLY" 9997 "DONT KNOW"
                       9998 "REFUSED/MISSING" 9999 "INAPP" ;
label define A1SK14B   0 "NONE OR DOES NOT APPLY" 9997 "DONT KNOW"
                       9998 "REFUSED/MISSING" 9999 "INAPP" ;
label define A1SK14C   0 "NONE OR DOES NOT APPLY" 99997 "DONT KNOW"
                       99998 "REFUSED/MISSING" 99999 "INAPP" ;
label define A1SK14D   0 "NONE OR DOES NOT APPLY" 9997 "DONT KNOW"
                       9998 "REFUSED/MISSING" 9999 "INAPP" ;
label define A1SK14E   0 "NONE OR DOES NOT APPLY" 997 "DONT KNOW"
                       998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SK14F   99998 "REFUSED/MISSING" ;
label define A1SK14G   0 "NONE OR DOES NOT APPLY" 9997 "DONT KNOW"
                       9998 "REFUSED/MISSING" 9999 "INAPP" ;
label define A1SK14H   0 "NONE OR DOES NOT APPLY" 99997 "DONT KNOW"
                       99998 "REFUSED/MISSING" 99999 "INAPP" ;
label define A1SK15A   99998 "REFUSED/MISSING" ;
label define A1SK15B   0 "NONE OR DOES NOT APPLY" 9997 "DONT KNOW"
                       9998 "REFUSED/MISSING" 9999 "INAPP" ;
label define A1SK15C   0 "NONE OR DOES NOT APPLY" 9997 "DONT KNOW"
                       9998 "REFUSED/MISSING" 9999 "INAPP" ;
label define A1SK15D   0 "NONE OR DOES NOT APPLY" 9997 "DONT KNOW"
                       9998 "REFUSED/MISSING" 9999 "INAPP" ;
label define A1SK15E   0 "NONE OR DOES NOT APPLY" 997 "DONT KNOW"
                       998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SK15F   0 "NONE OR DOES NOT APPLY" 9997 "DONT KNOW"
                       9998 "REFUSED/MISSING" 9999 "INAPP" ;
label define A1SK15G   0 "NONE OR DOES NOT APPLY" 99997 "DONT KNOW"
                       99998 "REFUSED/MISSING" 99999 "INAPP" ;
label define A1SK16A   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SK16B   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SK16C   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SK16D   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SK17A   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SK17B   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SK17C   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SK17D   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SK17E   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SK17F   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SK17G   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SK17H   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SK17I   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SK17J   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SK17K   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SK17L   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SK17M   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SK17N   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SK17O   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SSWBMS  99 "NOT CALCULATED" ;
label define A1SSWBSI  99 "NOT CALCULATED" ;
label define A1SSWBAO  99 "NOT CALCULATED" ;
label define A1SSWBSC  99 "NOT CALCULATED" ;
label define A1SSWBSA  99 "NOT CALCULATED" ;
label define A1SL1     1 "ALMOST EVERY DAY" 2 "SEVERAL TIMES A WEEK"
                       3 "ABOUT ONCE A WEEK" 4 "1-3 TIMES A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER OR HARDLY EVER"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SL2     1 "ALMOST EVERY DAY" 2 "SEVERAL TIMES A WEEK"
                       3 "ABOUT ONCE A WEEK" 4 "1-3 TIMES A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER OR HARDLY EVER"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SL3     97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SL4     1 "OWN HOME OUTRIGHT" 2 "PAYING ON A MORTGAGE"
                       3 "RENT" 7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SL5A    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SL5B    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SL5C    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SL5D    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SL5E    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SL5F    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SL5G    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SL5H    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SL5I    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SL5J    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SL5K    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SL5L    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SHOMET  9 "NOT CALCULATED" ;
label define A1SPIHOM  9 "NOT CALCULATED" ;
label define A1SM1     1 "SEVERAL TIMES A DAY" 2 "ABOUT ONCE A DAY"
                       3 "SEVERAL TIMES A WEEK" 4 "ABOUT ONCE A WEEK"
                       5 "2 OR 3 TIMES A MONTH" 6 "ABOUT ONCE A MONTH"
                       7 "LESS THAN ONCE A MONTH" 8 "NEVER OR HARDLY EVER"
                       97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SM2     1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM3     1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM4     1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM5     1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM6     1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM7     1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM8     1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM9     1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SFAMSO  9 "NOT CALCULATED" ;
label define A1SKINPO  9 "NOT CALCULATED" ;
label define A1SKINNE  9 "NOT CALCULATED" ;
label define A1SM10    1 "SEVERAL TIMES A DAY" 2 "ABOUT ONCE A DAY"
                       3 "SEVERAL TIMES A WEEK" 4 "ABOUT ONCE A WEEK"
                       5 "2 OR 3 TIMES A MONTH" 6 "ABOUT ONCE A MONTH"
                       7 "LESS THAN ONCE A MONTH" 8 "NEVER OR HARDLY EVER"
                       97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SM11    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM12    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM13    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM14    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SFDSOL  9 "NOT CALCULATED" ;
label define A1SM15    1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM16    1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM17    1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM18    1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SFDSPO  9 "NOT CALCULATED" ;
label define A1SFDSNE  9 "NOT CALCULATED" ;
label define A1SM19    1 "NEVER" 2 "LESS THAN ONCE A MONTH"
                       3 "ONCE OR TWICE A MONTH"
                       4 "THREE OR FOUR TIMES A MONTH"
                       5 "A COUPLE TIMES A WEEK"
                       6 "MORE OFTEN THAN A COUPLE OF TIMES A WEEK"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM20    1 "NEVER" 2 "LESS THAN ONCE A MONTH"
                       3 "ONCE OR TWICE A MONTH"
                       4 "THREE OR FOUR TIMES A MONTH"
                       5 "A COUPLE TIMES A WEEK"
                       6 "MORE OFTEN THAN A COUPLE OF TIMES A WEEK"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM21A1  1 "YES" 2 "NO" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM21A2  1 "YES" 2 "NO" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM21A3  1 "YES" 2 "NO" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM21B1  1 "YES" 2 "NO" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM21B2  1 "YES" 2 "NO" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM21B3  1 "YES" 2 "NO" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM21C1  1 "YES" 2 "NO" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM21C2  1 "YES" 2 "NO" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM21C3  1 "YES" 2 "NO" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM21D1  1 "YES" 2 "NO" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM21D2  1 "YES" 2 "NO" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM21D3  1 "YES" 2 "NO" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM21E1  1 "YES" 2 "NO" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM21E2  1 "YES" 2 "NO" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM21E3  1 "YES" 2 "NO" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM21F1  1 "YES" 2 "NO" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM21F2  1 "YES" 2 "NO" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM21F3  1 "YES" 2 "NO" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM21G1  1 "YES" 2 "NO" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM21G2  1 "YES" 2 "NO" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM21G3  1 "YES" 2 "NO" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM21H1  1 "YES" 2 "NO" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM21H2  1 "YES" 2 "NO" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM21H3  1 "YES" 2 "NO" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM21I1  1 "YES" 2 "NO" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM21I2  1 "YES" 2 "NO" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM21I3  1 "YES" 2 "NO" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM21J1  1 "YES" 2 "NO" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM21J2  1 "YES" 2 "NO" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SM21J3  1 "YES" 2 "NO" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define SKIP_SN1  1 "SKIP" 2 "NO SKIP" 9 "INAPP" ;
label define A1SN1     0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SN2     0 "WORST" 10 "BEST" 96 "DOES NOT APPLY" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SN3     0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SN4     0 "NONE" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SN5     0 "NONE" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SN6A    1 "NOT AT ALL TRUE" 2 "A LITTLE BIT TRUE"
                       3 "MODERATELY TRUE" 4 "EXTREMELY TRUE" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SN6B    1 "NOT AT ALL TRUE" 2 "A LITTLE BIT TRUE"
                       3 "MODERATELY TRUE" 4 "EXTREMELY TRUE" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SN6C    1 "NOT AT ALL TRUE" 2 "A LITTLE BIT TRUE"
                       3 "MODERATELY TRUE" 4 "EXTREMELY TRUE" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SN6D    1 "NOT AT ALL TRUE" 2 "A LITTLE BIT TRUE"
                       3 "MODERATELY TRUE" 4 "EXTREMELY TRUE" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SN6E    1 "NOT AT ALL TRUE" 2 "A LITTLE BIT TRUE"
                       3 "MODERATELY TRUE" 4 "EXTREMELY TRUE" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SN6F    1 "NOT AT ALL TRUE" 2 "A LITTLE BIT TRUE"
                       3 "MODERATELY TRUE" 4 "EXTREMELY TRUE" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SPIFAM  9 "NOT CALCULATED" ;
label define A1SN7A1   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SN7A2   1 "YES" 2 "NO" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SN7B1   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SN7B2   1 "YES" 2 "NO" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SN7C1   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SN7C2   1 "YES" 2 "NO" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SN7D1   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SN7D2   1 "YES" 2 "NO" 6 "DOES NOT APPLY" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define SKIP_SN8  1 "SKIP" 2 "NO SKIP" 9 "INAPP" ;
label define A1SN8     97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SN9     97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SN10    1 "VERY SERIOUS/STRESSFUL"
                       2 "SOMEWHAT SERIOUS/STRESSFUL"
                       3 "A LITTLE SERIOUS/STRESSFUL"
                       4 "NOT AT ALL SERIOUS/STRESSFUL" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SN11    1 "VERY SERIOUS/STRESSFUL"
                       2 "SOMEWHAT SERIOUS/STRESSFUL"
                       3 "A LITTLE SERIOUS/STRESSFUL"
                       4 "NOT AT ALL SERIOUS/STRESSFUL" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define SKIP_SP1  1 "SKIP" 2 "NO SKIP" ;
label define A1SP1     0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SP2     0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SP3     0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SP4     0 "NONE" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SP5     0 "NONE" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SP6     1 "EXCELLENT" 2 "VERY GOOD" 3 "GOOD" 4 "FAIR" 5 "POOR"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SP7     1 "NEVER" 2 "ONCE" 3 "A FEW TIMES"
                       4 "MOST OF THE TIME" 5 "ALL OF THE TIME" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SP8     1 "VERY LIKELY" 2 "SOMEWHAT LIKELY"
                       3 "NOT VERY LIKELY" 4 "NOT LIKELY AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SP9A    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SP9B    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SP9C    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SSPDIS  99 "NOT CALCULATED" ;
label define A1SMARRS  9 "NOT CALCULATED" ;
label define A1SP10    1 "AT LEAT ONCE A DAY" 2 "A FEW TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "A FEW TIMES A MONTH"
                       5 "LESS OFTEN THAN THAT" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SP11    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SP12    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SP13    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SP14    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SP15    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SP16    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SSPSOL  9 "NOT CALCULATED" ;
label define A1SSPEMP  9 "NOT CALCULATED" ;
label define A1SP17    1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SP18    1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SP19    1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SP20    1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SP21    1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SP22    1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SSPCRI  9 "NOT CALCULATED" ;
label define A1SP23    1 "A LOT MORE THAN SPOUSE"
                       2 "SOMEWHAT MORE THAN SPOUSE"
                       3 "A LITTLE MORE THAN SPOUSE"
                       4 "CHORES ARE SPLIT EQUALLY"
                       5 "SPOUSE DOES A LITTLE MORE"
                       6 "SPOUSE DOES SOMEWHAT MORE"
                       7 "SPOUSE DOES A LOT MORE" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SP24    997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SP25    997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SP26    1 "VERY FAIR" 2 "SOMEWHAT FAIR" 3 "SOMEWHAT UNFAIR"
                       4 "VERY UNFAIR" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SP27    1 "VERY FAIR" 2 "SOMEWHAT FAIR" 3 "SOMEWHAT UNFAIR"
                       4 "VERY UNFAIR" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SP28A   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SP28B   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SP28C   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SP28D   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "DONT KNOW" 5 "DISAGREE A LITTLE"
                       6 "DISAGREE SOMEWHAT" 7 "DISAGREE STRONGLY"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SSPDEC  99 "NOT CALCULATED" ;
label define A1SP29    1 "EXCELLENT" 2 "VERY GOOD" 3 "GOOD" 4 "FAIR" 5 "POOR"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SP30    1 "EXCELLENT" 2 "VERY GOOD" 3 "GOOD" 4 "FAIR" 5 "POOR"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SP31    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SP32    997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SP33    97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SP34A   1 "4 OR MORE TIMES PER WEEK" 2 "2 TO 3 TIMES PER WEEK"
                       3 "ONCE A WEEK" 4 "1 TO 3 TIMES PER WEEK"
                       5 "LESS THAN ONCE A MONTH OR NEVER" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SP34B   1 "4 OR MORE TIMES PER WEEK" 2 "2 TO 3 TIMES PER WEEK"
                       3 "ONCE A WEEK" 4 "1 TO 3 TIMES PER WEEK"
                       5 "LESS THAN ONCE A MONTH OR NEVER" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SP34C   1 "4 OR MORE TIMES PER WEEK" 2 "2 TO 3 TIMES PER WEEK"
                       3 "ONCE A WEEK" 4 "1 TO 3 TIMES PER WEEK"
                       5 "LESS THAN ONCE A MONTH OR NEVER" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SP34D   1 "4 OR MORE TIMES PER WEEK" 2 "2 TO 3 TIMES PER WEEK"
                       3 "ONCE A WEEK" 4 "1 TO 3 TIMES PER WEEK"
                       5 "LESS THAN ONCE A MONTH OR NEVER" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SP35    9997 "DONT KNOW" 9998 "REFUSED/MISSING" 9999 "INAPP" ;
label define A1SP36    9997 "DONT KNOW" 9998 "REFUSED/MISSING" 9999 "INAPP" ;
label define A1SP37    996 "996 OR GREATER" 997 "DONT KNOW"
                       998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SP38    1 "EXCELLENT" 2 "VERY GOOD" 3 "GOOD" 4 "FAIR" 5 "POOR"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SQ1     0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SQ2     0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SQ3     0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SQ4     0 "NONE" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SQ5     0 "NONE" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SQ6     1 "NONE" 2 "ONE" 3 "TWO" 4 "THREE" 5 "FOUR" 6 "FIVE"
                       7 "SIX OR MORE" 97 "DONT KNOW" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define A1SQ7     1 "HETEROSEXUAL" 2 "HOMOSEXUAL" 3 "BISEXUAL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SQ8     1 "TWO OR MORE TIMES A WEEK" 2 "ONCE A WEEK"
                       3 "TWO OR THREE TIMES A MONTH" 4 "ONCE A MONTH"
                       5 "LESS OFTEN THAN ONCE A MONTH"
                       6 "NEVER OR NOT AT ALL" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SR1     1 "PROTESTANT/INTERDENOMINATIONAL"
                       2 "PROTESTANT/NO DENOMINATION" 3 "APOSTOLIC"
                       4 "ASSEMBLY OF GOD" 5 "BAPTIST-ALL TYPES"
                       6 "BORN-AGAIN CHRISTIAN" 7 "BRETHREN"
                       8 "DISCIPLES OF CHRIST/CHRISTIAN CHURCH"
                       9 "CHRISTIAN REFORMED" 10 "CHURCH OF GOD"
                       11 "CONGREGATIONAL"
                       12 "EPISCOPALIAN OR ANGLICAN/CHURCH OF ENGLAND"
                       13 "EVANGELICAL" 14 "HOLINESS" 15 "JEHOVAHS WITNESS"
                       16 "LUTHERAN" 17 "MENNONITE"
                       18 "METHODIST-ALL TYPES INCLUDING UNITED BRETHREN"
                       19 "MORMON/LATTER DAY SAINTS" 20 "NAZARENE"
                       21 "PENTECOSTAL" 22 "PRESBYTERIAN"
                       23 "QUAKER/SOCIETY OF FRIENDS" 24 "SALVATION ARMY"
                       25 "SANCTIFIED" 26 "SEVENTH DAY ADVENTIST"
                       27 "SPIRITUAL" 28 "UNITARIAN"
                       29 "UNITED CHURCH OF CHRIST" 30 "PROTESTANT/OTHER"
                       31 "AGNOSTIC OR ATHEIST" 32 "NO RELIGIOUS PREFERENCE"
                       33 "CATHOLIC/ROMAN" 34 "CATHOLIC/UKRAINIAN"
                       35 "ORTHODOX/RUSSIAN-GREEK-SERBIAN"
                       36 "CATHOLIC-ALL OTHERS" 37 "JEWISH ORTHODOX"
                       38 "JEWISH CONSERVATIVE" 39 "JEWISH REFORM"
                       40 "JEWISH RECONSTRUCTIONIST" 41 "JEWISH/ALL OTHERS"
                       42 "BUDDHIST/ALL TYPES-INCLUDING ZEN" 43 "HINDU"
                       44 "MUSLIM" 45 "RASTAFARIAN" 46 "OTHER" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SR1A    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SR2A    1 "VERY" 2 "SOMEWHAT" 3 "NOT VERY" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SR2B    1 "VERY" 2 "SOMEWHAT" 3 "NOT VERY" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SR2C    1 "VERY" 2 "SOMEWHAT" 3 "NOT VERY" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SR2D    1 "VERY" 2 "SOMEWHAT" 3 "NOT VERY" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SR2E    1 "VERY" 2 "SOMEWHAT" 3 "NOT VERY" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SR2F    1 "VERY" 2 "SOMEWHAT" 3 "NOT VERY" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SR2G    1 "VERY" 2 "SOMEWHAT" 3 "NOT VERY" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SR2H    1 "VERY" 2 "SOMEWHAT" 3 "NOT VERY" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SR2I    1 "VERY" 2 "SOMEWHAT" 3 "NOT VERY" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SR3     1 "EXPLORE DIFFERENT TEACHINGS" 2 "STICK TO ONE FAITH"
                       3 "NEITHER" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SR4     1 "MORE THAN ONCE A WEEK" 2 "ABOUT ONCE A WEEK"
                       3 "ONE TO THREE TIMES A MONTH"
                       4 "LESS THAN ONCE A MONTH" 5 "NEVER" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SR5     1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SR6     1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define SKIP_SR7  1 "SKIP" 2 "NO SKIP" ;
label define A1SR7     1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SR8     1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "NEITHER AGREE NOR DISAGREE" 4 "SOMEWHAT DISAGREE"
                       5 "STRONGLY DISAGREE" 7 "DONT KNOW"
                       8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SA1S1_1 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_2 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_3 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_4 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_5 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_6 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_7 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_8 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_9 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_10 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_11 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_12 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_13 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_14 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_15 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_16 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_17 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_18 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_19 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_20 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_21 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_22 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_23 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_24 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_25 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_26 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_27 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_28 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_29 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_30 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_31 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_32 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_33 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_34 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_35 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_36 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_37 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_38 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_39 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_40 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_41 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_42 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_43 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_44 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_45 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_46 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_47 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_48 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_49 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_50 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_51 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_52 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_53 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_54 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_55 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_56 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_57 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_58 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_59 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_60 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_61 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_62 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_63 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_64 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_65 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_66 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_67 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_68 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_69 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_70 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_71 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_72 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_73 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_74 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_75 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_76 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SA1S1_77 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SS2     1 "AMERICAN INDIAN/NATIVE AMERICAN" 2 "BAHAMAS"
                       3 "CANADA" 4 "COSTA RICA" 5 "CUBA"
                       6 "DOMINICAN REPUBLIC" 7 "EL SALVADOR" 8 "GUATEMALA"
                       9 "HAITI" 10 "HONDURAS" 11 "JAMAICA" 12 "MEXICO"
                       13 "NICARAGUA" 14 "PANAMA" 15 "PUERTO RICO"
                       16 "ST. VINCENT" 17 "TRINIDAD"
                       18 "CENTRAL AMERICA/CARIBBEAN-NO SPECIFIC COUNTRY"
                       19 "NORTH/CENTRAL AMERICA/OTHER" 20 "ARGENTINA"
                       21 "BOLIVIA" 22 "BRAZIL" 23 "CHILE" 24 "COLOMBIA"
                       25 "ECUADOR" 26 "PERU" 27 "VENEZUELA"
                       28 "S. AMERICA-NO SPECIFIC COUNTRY"
                       29 "S. AMERICA/OTHER" 30 "CZECHOSLOVAKIA" 31 "ENGLAND"
                       32 "FRANCE" 33 "GERMANY" 34 "GREECE" 35 "HUNGARY"
                       36 "IRELAND" 37 "ITALY" 38 "NORWAY" 39 "POLAND"
                       40 "PORTUGAL" 41 "RUSSIA OR SOVIET UNION"
                       42 "SCOTLAND" 43 "SPAIN" 44 "SWEDEN"
                       45 "THE NETHERLANDS" 46 "YUGOSLAVIA"
                       47 "EASTERN EUROPE-NO SPECIFIC COUNTRY"
                       48 "WESTERN EUROPE-NO SPECIFIC COUNTRY"
                       49 "EUROPE/OTHER" 50 "CHINA" 51 "INDIA" 52 "JAPAN"
                       53 "KOREA" 54 "PHILIPPINES" 55 "SINGAPORE" 56 "TAIWAN"
                       57 "THAILAND" 58 "ASIA-NO SPECIFIC COUNTRY"
                       59 "ASIA/OTHER" 60 "EGYPT" 61 "KENYA" 62 "NIGERIA"
                       63 "SOUTH AFRICA" 64 "ZAIRE" 65 "ZIMBABWE"
                       66 "AFRICA-NO SPECIFIC COUNTRY" 67 "AFRICA/OTHER"
                       68 "IRAN" 69 "IRAQ" 70 "ISRAEL" 71 "LEBANON"
                       72 "PAKISTAN" 73 "SAUDI ARABIA"
                       74 "MID EAST-NO SPECIFIC COUNTRY" 75 "MID EAST/OTHER"
                       76 "OTHER COUNTRY 1" 77 "OTHER COUNTRY 2"
                       97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SS3     1 "VERY CLOSELY" 2 "SOMEWHAT CLOSELY"
                       3 "NOT VERY CLOSELY" 4 "NOT AT ALL CLOSELY"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SS4     1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "RARELY"
                       5 "NOT AT ALL" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SS5     1 "VERY IMPORTANT" 2 "SOMEWHAT IMPORTANT"
                       3 "NOT VERY IMPORTANT" 4 "NOT AT ALL IMPORTANT"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SS6_1   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SS6_2   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SS6_3   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SS6_4   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SS6_5   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SS7     1 "WHITE" 2 "BLACK AND/OR AFRICAN AMERICAN"
                       3 "NATIVE AMERICAN OR ALEUTIAN ISLANDER/ESKIMO"
                       4 "ASIAN OR PACIFIC ISLANDER" 5 "OTHER"
                       6 "MULTIRACIAL" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SS8     1 "VERY CLOSELY" 2 "SOMEWHAT CLOSELY"
                       3 "NOT VERY CLOSELY" 4 "NOT AT ALL CLOSELY"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SS9     1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "RARELY"
                       5 "NOT AT ALL" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SS10    1 "VERY IMPORTANT" 2 "SOMEWHAT IMPORTANT"
                       3 "NOT VERY IMPORTANT" 4 "NOT AT ALL IMPORTANT"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SS11    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SS12    1 "VERY CLOSELY" 2 "SOMEWHAT CLOSELY"
                       3 "NOT VERY CLOSELY" 4 "NOT AT ALL CLOSELY"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SS13A   996 "996 OR GREATER" 997 "DONT KNOW"
                       998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SS13B   97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SS13C   996 "996 OR GREATER" 997 "DONT KNOW"
                       998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SS13D   997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SS13E   98 "REFUSED/MISSING" ;
label define A1SS13F   97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SS13G   97 "DONT KNOW" 98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SS13H   996 "996 OR GREATER" 997 "DONT KNOW"
                       998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SS13I   998 "REFUSED/MISSING" ;
label define A1SS13J   997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SS13K   996 "996 OR GREATER" 997 "DONT KNOW"
                       998 "REFUSED/MISSING" 999 "INAPP" ;
label define A1SS14A   1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SS14B   1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SS14C   1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SS14D   1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SS14E   1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SS14F   1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SS14G   1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SS14H   1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SS14I   1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SDISCR  0 "NO DISCRIMINATION" 1 "DISCRIMINATION" ;
label define A1SS15_1  1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SS15_2  1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SS15_3  1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SS15_4  1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SS15_5  1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SS15_6  1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SS15_7  1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SS15_8  1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SS15_9  1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SS15_10 1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPP" ;
label define A1SS16    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1SS17    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "REFUSED/MISSING" 9 "INAPP" ;
label define A1ST1     0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1ST2     0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1ST3     0 "WORST" 10 "BEST" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1ST4     0 "NONE" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1ST5     0 "NONE" 10 "VERY MUCH" 97 "DONT KNOW"
                       98 "REFUSED/MISSING" 99 "INAPP" ;
label define A1SSATIS  99 "NOT CALCULATED" ;


#delimit cr


/***************************************************************************

 Section 4: Missing Values

 This section will replace numeric missing values (i.e., -9) with generic
 system missing ".".  By default the code in this section is commented out.
 Users wishing to apply the generic missing values should remove the comment
 at the beginning and end of this section.  Note that Stata allows you to
 specify up to 27 unique missing value codes.

****************************************************************/

/*
replace A1PBYEAR = . if (A1PBYEAR == 9998)
replace A1PAGE_M2 = . if (A1PAGE_M2 == 98)
replace QL2 = . if (QL2 == 7 | QL2 == 8 | QL2 == 9)
replace QL3 = . if (QL3 == 7 | QL3 == 8 | QL3 == 9)
replace HH_CELL = . if (HH_CELL == 7 | HH_CELL == 8 | HH_CELL == 9)
replace NPRB_SEX = . if (NPRB_SEX == 997 | NPRB_SEX == 998 | NPRB_SEX == 999)
replace SEX_CELL = . if (SEX_CELL == 7 | SEX_CELL == 8 | SEX_CELL == 9)
replace NPRB_WHO = . if (NPRB_WHO == 997 | NPRB_WHO == 998 | NPRB_WHO == 999)
replace WHO = . if (WHO == 9)
replace PROB_R = . if (PROB_R == 997 | PROB_R == 998 | PROB_R == 999)
replace MO = . if (MO == 97 | MO == 98 | MO == 99)
replace DAY = . if (DAY == 97 | DAY == 98 | DAY == 99)
replace RECON = . if (RECON == 7 | RECON == 8 | RECON == 9)
replace MO_RCVD = . if (MO_RCVD == 97 | MO_RCVD == 98 | MO_RCVD == 99)
replace DY_RCVD = . if (DY_RCVD == 97 | DY_RCVD == 98 | DY_RCVD == 99)
replace TOT_SIBS = . if (TOT_SIBS == 9)
replace A1PA4 = . if (A1PA4 == 7 | A1PA4 == 8 | A1PA4 == 9)
replace A1PA5 = . if (A1PA5 == 7 | A1PA5 == 8 | A1PA5 == 9)
replace A1PA6 = . if (A1PA6 == 7 | A1PA6 == 8 | A1PA6 == 9)
replace A1PA7 = . if (A1PA7 == 97 | A1PA7 == 98 | A1PA7 == 99)
replace A1PA7A = . if (A1PA7A == 7 | A1PA7A == 8 | A1PA7A == 9)
replace A1PA7BA = . if (A1PA7BA == 97 | A1PA7BA == 98 | A1PA7BA == 99)
replace A1PA7BB = . if (A1PA7BB == 97 | A1PA7BB == 98 | A1PA7BB == 99)
replace A1PA7BC = . if (A1PA7BC == 97 | A1PA7BC == 98 | A1PA7BC == 99)
replace A1PA8 = . if (A1PA8 == 97 | A1PA8 == 98 | A1PA8 == 99)
replace A1PA8A = . if (A1PA8A == 7 | A1PA8A == 8 | A1PA8A == 9)
replace A1PA8BA = . if (A1PA8BA == 97 | A1PA8BA == 98 | A1PA8BA == 99)
replace A1PA8BB = . if (A1PA8BB == 97 | A1PA8BB == 98 | A1PA8BB == 99)
replace A1PA8BC = . if (A1PA8BC == 97 | A1PA8BC == 98 | A1PA8BC == 99)
replace A1PA9 = . if (A1PA9 == 7 | A1PA9 == 8 | A1PA9 == 9)
replace A1PA10 = . if (A1PA10 == 7 | A1PA10 == 8 | A1PA10 == 9)
replace A1PA11 = . if (A1PA11 == 7 | A1PA11 == 8 | A1PA11 == 9)
replace A1PA11A = . if (A1PA11A == 97 | A1PA11A == 98 | A1PA11A == 99)
replace A1PA11BA = . if (A1PA11BA == 7 | A1PA11BA == 8 | A1PA11BA == 9)
replace A1PA11BB = . if (A1PA11BB == 7 | A1PA11BB == 8 | A1PA11BB == 9)
replace A1PA11BC = . if (A1PA11BC == 7 | A1PA11BC == 8 | A1PA11BC == 9)
replace A1PA11BD = . if (A1PA11BD == 7 | A1PA11BD == 8 | A1PA11BD == 9)
replace A1PA11BE = . if (A1PA11BE == 7 | A1PA11BE == 8 | A1PA11BE == 9)
replace A1PA11BF = . if (A1PA11BF == 7 | A1PA11BF == 8 | A1PA11BF == 9)
replace A1PA11BG = . if (A1PA11BG == 7 | A1PA11BG == 8 | A1PA11BG == 9)
replace A1PA11BH = . if (A1PA11BH == 7 | A1PA11BH == 8 | A1PA11BH == 9)
replace A1PA11BI = . if (A1PA11BI == 7 | A1PA11BI == 8 | A1PA11BI == 9)
replace A1PA11BJ = . if (A1PA11BJ == 7 | A1PA11BJ == 8 | A1PA11BJ == 9)
replace A1PA11BK = . if (A1PA11BK == 7 | A1PA11BK == 8 | A1PA11BK == 9)
replace A1PA11C = . if (A1PA11C == 7 | A1PA11C == 8 | A1PA11C == 9)
replace A1PA11D = . if (A1PA11D == 7 | A1PA11D == 8 | A1PA11D == 9)
replace A1PA12 = . if (A1PA12 == 7 | A1PA12 == 8 | A1PA12 == 9)
replace A1PA12A = . if (A1PA12A == 97 | A1PA12A == 98 | A1PA12A == 99)
replace A1PA13 = . if (A1PA13 == 7 | A1PA13 == 8 | A1PA13 == 9)
replace A1PA13A = . if (A1PA13A == 7 | A1PA13A == 8 | A1PA13A == 9)
replace A1PA13B = . if (A1PA13B == 7 | A1PA13B == 8 | A1PA13B == 9)
replace A1PHRTRS = . if (A1PHRTRS == 7 | A1PHRTRS == 8 | A1PHRTRS == 9)
replace A1PHRTDX = . if (A1PHRTDX == 7 | A1PHRTDX == 8 | A1PHRTDX == 9)
replace A1PA14 = . if (A1PA14 == 97 | A1PA14 == 98 | A1PA14 == 99)
replace A1PA15 = . if (A1PA15 == 7 | A1PA15 == 8 | A1PA15 == 9)
replace A1PA16 = . if (A1PA16 == 7 | A1PA16 == 8 | A1PA16 == 9)
replace A1PA17 = . if (A1PA17 == 7 | A1PA17 == 8 | A1PA17 == 9)
replace A1PA18 = . if (A1PA18 == 7 | A1PA18 == 8 | A1PA18 == 9)
replace A1PA19 = . if (A1PA19 == 7 | A1PA19 == 8 | A1PA19 == 9)
replace A1PA20 = . if (A1PA20 == 7 | A1PA20 == 8 | A1PA20 == 9)
replace A1PA21 = . if (A1PA21 == 7 | A1PA21 == 8 | A1PA21 == 9)
replace A1PA22 = . if (A1PA22 == 7 | A1PA22 == 8 | A1PA22 == 9)
replace A1PA22A = . if (A1PA22A == 7 | A1PA22A == 8 | A1PA22A == 9)
replace A1PA23 = . if (A1PA23 == 7 | A1PA23 == 8 | A1PA23 == 9)
replace A1PA24 = . if (A1PA24 == 7 | A1PA24 == 8 | A1PA24 == 9)
replace A1PA25 = . if (A1PA25 == 7 | A1PA25 == 8 | A1PA25 == 9)
replace A1PA26 = . if (A1PA26 == 7 | A1PA26 == 8 | A1PA26 == 9)
replace A1PA27 = . if (A1PA27 == 7 | A1PA27 == 8 | A1PA27 == 9)
replace A1PA28 = . if (A1PA28 == 7 | A1PA28 == 8 | A1PA28 == 9)
replace A1PANGIN = . if (A1PANGIN == 7 | A1PANGIN == 8 | A1PANGIN == 9)
replace A1PA29 = . if (A1PA29 == 7 | A1PA29 == 8 | A1PA29 == 9)
replace A1PA29A = . if (A1PA29A == 997 | A1PA29A == 998 | A1PA29A == 999)
replace A1PA29B = . if (A1PA29B == 7 | A1PA29B == 8 | A1PA29B == 9)
replace A1PA29CA = . if (A1PA29CA == 7 | A1PA29CA == 8 | A1PA29CA == 9)
replace A1PA29CB = . if (A1PA29CB == 7 | A1PA29CB == 8 | A1PA29CB == 9)
replace A1PA29CC = . if (A1PA29CC == 7 | A1PA29CC == 8 | A1PA29CC == 9)
replace A1PA29CD = . if (A1PA29CD == 7 | A1PA29CD == 8 | A1PA29CD == 9)
replace A1PA29CE = . if (A1PA29CE == 7 | A1PA29CE == 8 | A1PA29CE == 9)
replace A1PA29CF = . if (A1PA29CF == 7 | A1PA29CF == 8 | A1PA29CF == 9)
replace A1PA29CG = . if (A1PA29CG == 7 | A1PA29CG == 8 | A1PA29CG == 9)
replace A1PA29CH = . if (A1PA29CH == 7 | A1PA29CH == 8 | A1PA29CH == 9)
replace A1PA29CI = . if (A1PA29CI == 7 | A1PA29CI == 8 | A1PA29CI == 9)
replace A1PA29CJ = . if (A1PA29CJ == 7 | A1PA29CJ == 8 | A1PA29CJ == 9)
replace A1PA29CK = . if (A1PA29CK == 7 | A1PA29CK == 8 | A1PA29CK == 9)
replace A1PA33 = . if (A1PA33 == 7 | A1PA33 == 8 | A1PA33 == 9)
replace A1PA34 = . if (A1PA34 == 7 | A1PA34 == 8 | A1PA34 == 9)
replace A1PA30 = . if (A1PA30 == 997 | A1PA30 == 998 | A1PA30 == 999)
replace A1PA31 = . if (A1PA31 == 7 | A1PA31 == 8 | A1PA31 == 9)
replace A1PA32S = . if (A1PA32S == 997 | A1PA32S == 998 | A1PA32S == 999)
replace A1PA32D = . if (A1PA32D == 997 | A1PA32D == 998 | A1PA32D == 999)
replace A1PA36 = . if (A1PA36 == 7 | A1PA36 == 8 | A1PA36 == 9)
replace A1PA37 = . if (A1PA37 == 7 | A1PA37 == 8 | A1PA37 == 9)
replace A1PA37A = . if (A1PA37A == 7 | A1PA37A == 8 | A1PA37A == 9)
replace A1PA37B = . if (A1PA37B == 7 | A1PA37B == 8 | A1PA37B == 9)
replace A1PCACRS = . if (A1PCACRS == 7 | A1PCACRS == 8 | A1PCACRS == 9)
replace A1PCACDX = . if (A1PCACDX == 7 | A1PCACDX == 8 | A1PCACDX == 9)
replace A1PA38 = . if (A1PA38 == 7 | A1PA38 == 8 | A1PA38 == 9)
replace A1PA39A = . if (A1PA39A == 7 | A1PA39A == 8 | A1PA39A == 9)
replace A1PA39B = . if (A1PA39B == 7 | A1PA39B == 8 | A1PA39B == 9)
replace A1PA39C = . if (A1PA39C == 7 | A1PA39C == 8 | A1PA39C == 9)
replace A1PA39D = . if (A1PA39D == 7 | A1PA39D == 8 | A1PA39D == 9)
replace A1PA39E = . if (A1PA39E == 7 | A1PA39E == 8 | A1PA39E == 9)
replace A1PA39F = . if (A1PA39F == 7 | A1PA39F == 8 | A1PA39F == 9)
replace A1PA39G = . if (A1PA39G == 7 | A1PA39G == 8 | A1PA39G == 9)
replace A1PA39H = . if (A1PA39H == 7 | A1PA39H == 8 | A1PA39H == 9)
replace A1PA39I = . if (A1PA39I == 7 | A1PA39I == 8 | A1PA39I == 9)
replace A1PA39J = . if (A1PA39J == 7 | A1PA39J == 8 | A1PA39J == 9)
replace A1PA41 = . if (A1PA41 == 97 | A1PA41 == 98 | A1PA41 == 99)
replace A1PA40 = . if (A1PA40 == 7 | A1PA40 == 8 | A1PA40 == 9)
replace A1PA42 = . if (A1PA42 == 97 | A1PA42 == 98 | A1PA42 == 99)
replace A1PA43 = . if (A1PA43 == 7 | A1PA43 == 8 | A1PA43 == 9)
replace A1PA44 = . if (A1PA44 == 997 | A1PA44 == 998 | A1PA44 == 999)
replace A1PA45 = . if (A1PA45 == 7 | A1PA45 == 8 | A1PA45 == 9)
replace A1PA46 = . if (A1PA46 == 97 | A1PA46 == 98 | A1PA46 == 99)
replace A1PA47 = . if (A1PA47 == 997 | A1PA47 == 998 | A1PA47 == 999)
replace A1PA52 = . if (A1PA52 == 97 | A1PA52 == 98 | A1PA52 == 99)
replace A1PA53 = . if (A1PA53 == 7 | A1PA53 == 8 | A1PA53 == 9)
replace A1PA53A = . if (A1PA53A == 97 | A1PA53A == 98 | A1PA53A == 99)
replace A1PA54 = . if (A1PA54 == 7 | A1PA54 == 8 | A1PA54 == 9)
replace A1PA54A = . if (A1PA54A == 7 | A1PA54A == 8 | A1PA54A == 9)
replace A1PA55 = . if (A1PA55 == 97.0 | A1PA55 == 99.0)
replace A1PA56 = . if (A1PA56 == 97 | A1PA56 == 98 | A1PA56 == 99)
replace A1PA57 = . if (A1PA57 == 7 | A1PA57 == 8 | A1PA57 == 9)
replace A1PA58 = . if (A1PA58 == 7 | A1PA58 == 8 | A1PA58 == 9)
replace A1PA59 = . if (A1PA59 == 7 | A1PA59 == 8 | A1PA59 == 9)
replace A1PA60 = . if (A1PA60 == 7 | A1PA60 == 8 | A1PA60 == 9)
replace A1PA61 = . if (A1PA61 == 7 | A1PA61 == 8 | A1PA61 == 9)
replace A1PA62 = . if (A1PA62 == 7 | A1PA62 == 8 | A1PA62 == 9)
replace A1PA62A = . if (A1PA62A == 7 | A1PA62A == 8 | A1PA62A == 9)
replace A1PA63 = . if (A1PA63 == 7 | A1PA63 == 8 | A1PA63 == 9)
replace A1PA63A = . if (A1PA63A == 7 | A1PA63A == 8 | A1PA63A == 9)
replace A1PA64 = . if (A1PA64 == 7 | A1PA64 == 8 | A1PA64 == 9)
replace A1PA65 = . if (A1PA65 == 7 | A1PA65 == 8 | A1PA65 == 9)
replace A1PA66 = . if (A1PA66 == 7 | A1PA66 == 8 | A1PA66 == 9)
replace A1PDEPAD = . if (A1PDEPAD == 7 | A1PDEPAD == 8 | A1PDEPAD == 9)
replace A1PA67 = . if (A1PA67 == 97 | A1PA67 == 98 | A1PA67 == 99)
replace A1PA68MO = . if (A1PA68MO == 97 | A1PA68MO == 98 | A1PA68MO == 99)
replace A1PA68YR = . if (A1PA68YR == 97 | A1PA68YR == 98 | A1PA68YR == 99)
replace A1PA69 = . if (A1PA69 == 7 | A1PA69 == 8 | A1PA69 == 9)
replace A1PA70 = . if (A1PA70 == 7 | A1PA70 == 8 | A1PA70 == 9)
replace A1PA71 = . if (A1PA71 == 7 | A1PA71 == 8 | A1PA71 == 9)
replace A1PA72 = . if (A1PA72 == 7 | A1PA72 == 8 | A1PA72 == 9)
replace A1PA73 = . if (A1PA73 == 7 | A1PA73 == 8 | A1PA73 == 9)
replace A1PA73A = . if (A1PA73A == 7 | A1PA73A == 8 | A1PA73A == 9)
replace A1PA74 = . if (A1PA74 == 7 | A1PA74 == 8 | A1PA74 == 9)
replace A1PA74A = . if (A1PA74A == 7 | A1PA74A == 8 | A1PA74A == 9)
replace A1PA75 = . if (A1PA75 == 7 | A1PA75 == 8 | A1PA75 == 9)
replace A1PA76 = . if (A1PA76 == 7 | A1PA76 == 8 | A1PA76 == 9)
replace A1PA77 = . if (A1PA77 == 7 | A1PA77 == 8 | A1PA77 == 9)
replace A1PANHED = . if (A1PANHED == 7 | A1PANHED == 8 | A1PANHED == 9)
replace A1PANHDX = . if (A1PANHDX == 7 | A1PANHDX == 8 | A1PANHDX == 9)
replace A1PDEPDX = . if (A1PDEPDX == 7 | A1PDEPDX == 8 | A1PDEPDX == 9)
replace A1PA78 = . if (A1PA78 == 97 | A1PA78 == 98 | A1PA78 == 99)
replace A1PA79MO = . if (A1PA79MO == 97 | A1PA79MO == 98 | A1PA79MO == 99)
replace A1PA79YR = . if (A1PA79YR == 97 | A1PA79YR == 98 | A1PA79YR == 99)
replace A1PA80 = . if (A1PA80 == 7 | A1PA80 == 8 | A1PA80 == 9)
replace A1PA80A = . if (A1PA80A == 7 | A1PA80A == 8 | A1PA80A == 9)
replace A1PA81 = . if (A1PA81 == 7 | A1PA81 == 8 | A1PA81 == 9)
replace A1PA81A = . if (A1PA81A == 7 | A1PA81A == 8 | A1PA81A == 9)
replace A1PA82 = . if (A1PA82 == 7 | A1PA82 == 8 | A1PA82 == 9)
replace A1PA82A = . if (A1PA82A == 7 | A1PA82A == 8 | A1PA82A == 9)
replace A1PA83 = . if (A1PA83 == 7 | A1PA83 == 8 | A1PA83 == 9)
replace A1PA83A = . if (A1PA83A == 7 | A1PA83A == 8 | A1PA83A == 9)
replace A1PA84 = . if (A1PA84 == 7 | A1PA84 == 8 | A1PA84 == 9)
replace A1PA84A = . if (A1PA84A == 7 | A1PA84A == 8 | A1PA84A == 9)
replace A1PA85A = . if (A1PA85A == 7 | A1PA85A == 8 | A1PA85A == 9)
replace A1PA85B = . if (A1PA85B == 7 | A1PA85B == 8 | A1PA85B == 9)
replace A1PA85C = . if (A1PA85C == 7 | A1PA85C == 8 | A1PA85C == 9)
replace A1PA85D = . if (A1PA85D == 7 | A1PA85D == 8 | A1PA85D == 9)
replace A1PA85E = . if (A1PA85E == 7 | A1PA85E == 8 | A1PA85E == 9)
replace A1PA85F = . if (A1PA85F == 7 | A1PA85F == 8 | A1PA85F == 9)
replace A1PA85G = . if (A1PA85G == 7 | A1PA85G == 8 | A1PA85G == 9)
replace A1PA85H = . if (A1PA85H == 7 | A1PA85H == 8 | A1PA85H == 9)
replace A1PA85I = . if (A1PA85I == 7 | A1PA85I == 8 | A1PA85I == 9)
replace A1PA85J = . if (A1PA85J == 7 | A1PA85J == 8 | A1PA85J == 9)
replace A1PANXIE = . if (A1PANXIE == 97 | A1PANXIE == 98 | A1PANXIE == 99)
replace A1PANXTD = . if (A1PANXTD == 7 | A1PANXTD == 8 | A1PANXTD == 9)
replace A1PA86 = . if (A1PA86 == 7 | A1PA86 == 8 | A1PA86 == 9)
replace A1PA87 = . if (A1PA87 == 7 | A1PA87 == 8 | A1PA87 == 9)
replace A1PA87A = . if (A1PA87A == 7 | A1PA87A == 8 | A1PA87A == 9)
replace A1PA88 = . if (A1PA88 == 997 | A1PA88 == 998 | A1PA88 == 999)
replace A1PA89 = . if (A1PA89 == 7 | A1PA89 == 8 | A1PA89 == 9)
replace A1PA90A = . if (A1PA90A == 7 | A1PA90A == 8 | A1PA90A == 9)
replace A1PA90B = . if (A1PA90B == 7 | A1PA90B == 8 | A1PA90B == 9)
replace A1PA90C = . if (A1PA90C == 7 | A1PA90C == 8 | A1PA90C == 9)
replace A1PA90D = . if (A1PA90D == 7 | A1PA90D == 8 | A1PA90D == 9)
replace A1PA90E = . if (A1PA90E == 7 | A1PA90E == 8 | A1PA90E == 9)
replace A1PA90F = . if (A1PA90F == 7 | A1PA90F == 8 | A1PA90F == 9)
replace A1PPANIC = . if (A1PPANIC == 7 | A1PPANIC == 8 | A1PPANIC == 9)
replace A1PPANDX = . if (A1PPANDX == 7 | A1PPANDX == 8 | A1PPANDX == 9)
replace A1PB1 = . if (A1PB1 == 97)
replace A1PMQB1 = . if (A1PMQB1 == 7 | A1PMQB1 == 8 | A1PMQB1 == 9)
replace A1PEDUCP = . if (A1PEDUCP == 7 | A1PEDUCP == 8 | A1PEDUCP == 9)
replace A1PEDU = . if (A1PEDU == 7 | A1PEDU == 8 | A1PEDU == 9)
replace A1PSXEDAG = . if (A1PSXEDAG == 97 | A1PSXEDAG == 98 | A1PSXEDAG == 99)
replace A1PB2 = . if (A1PB2 == 97 | A1PB2 == 98 | A1PB2 == 99)
replace A1PB3A = . if (A1PB3A == 7 | A1PB3A == 8 | A1PB3A == 9)
replace A1PB3B = . if (A1PB3B == 7 | A1PB3B == 8 | A1PB3B == 9)
replace A1PB3C = . if (A1PB3C == 7 | A1PB3C == 8 | A1PB3C == 9)
replace A1PB3D = . if (A1PB3D == 7 | A1PB3D == 8 | A1PB3D == 9)
replace A1PB3E = . if (A1PB3E == 7 | A1PB3E == 8 | A1PB3E == 9)
replace A1PB3F = . if (A1PB3F == 7 | A1PB3F == 8 | A1PB3F == 9)
replace A1PB3G = . if (A1PB3G == 7 | A1PB3G == 8 | A1PB3G == 9)
replace A1PB3H = . if (A1PB3H == 7 | A1PB3H == 8 | A1PB3H == 9)
replace A1PB3I = . if (A1PB3I == 7 | A1PB3I == 8 | A1PB3I == 9)
replace A1PB3J = . if (A1PB3J == 7 | A1PB3J == 8 | A1PB3J == 9)
replace A1PB3K = . if (A1PB3K == 7 | A1PB3K == 8 | A1PB3K == 9)
replace A1PB5 = . if (A1PB5 == 9997 | A1PB5 == 9998 | A1PB5 == 9999)
replace A1PB4A = . if (A1PB4A == 7 | A1PB4A == 8 | A1PB4A == 9)
replace A1PB4B = . if (A1PB4B == 7 | A1PB4B == 8 | A1PB4B == 9)
replace A1PB4C = . if (A1PB4C == 7 | A1PB4C == 8 | A1PB4C == 9)
replace A1PB4D = . if (A1PB4D == 7 | A1PB4D == 8 | A1PB4D == 9)
replace A1PB4E = . if (A1PB4E == 7 | A1PB4E == 8 | A1PB4E == 9)
replace A1PB4F = . if (A1PB4F == 7 | A1PB4F == 8 | A1PB4F == 9)
replace A1PB4G = . if (A1PB4G == 7 | A1PB4G == 8 | A1PB4G == 9)
replace A1PB6 = . if (A1PB6 == 7 | A1PB6 == 8 | A1PB6 == 9)
replace A1PB8_2 = . if (A1PB8_2 == 7 | A1PB8_2 == 8 | A1PB8_2 == 9)
replace A1PB8_3 = . if (A1PB8_3 == 9997 | A1PB8_3 == 9998 | A1PB8_3 == 9999)
replace A1PB10 = . if (A1PB10 == 7 | A1PB10 == 8 | A1PB10 == 9)
replace A1POCC = . if (A1POCC == 997 | A1POCC == 998 | A1POCC == 999)
replace A1PIND = . if (A1PIND == 997 | A1PIND == 998 | A1PIND == 999)
replace A1PTSEI = . if (A1PTSEI == 98.00 | A1PTSEI == 99.00)
replace A1PTEARN = . if (A1PTEARN == 8.000 | A1PTEARN == 9.000)
replace A1PTEDU = . if (A1PTEDU == 8.000 | A1PTEDU == 9.000)
replace A1PFSEI = . if (A1PFSEI == 98.000 | A1PFSEI == 99.000)
replace A1PFEARN = . if (A1PFEARN == 8.000 | A1PFEARN == 9.000)
replace A1PFEDU = . if (A1PFEDU == 8.000 | A1PFEDU == 9.000)
replace A1PMSEI = . if (A1PMSEI == 998.00 | A1PMSEI == 999.00)
replace A1PMEARN = . if (A1PMEARN == 8.000 | A1PMEARN == 9.000)
replace A1PMEDU = . if (A1PMEDU == 8.000 | A1PMEDU == 9.000)
replace R_ABSCRE = . if (R_ABSCRE == 998.000 | R_ABSCRE == 999.000)
replace R_ATMOSP = . if (R_ATMOSP == 98.000 | R_ATMOSP == 99.000)
replace R_BOTH = . if (R_BOTH == 998.000 | R_BOTH == 999.000)
replace R_BUSPR = . if (R_BUSPR == 998.000 | R_BUSPR == 999.000)
replace R_CLERIC = . if (R_CLERIC == 8.000 | R_CLERIC == 9.000)
replace R_CLIMB = . if (R_CLIMB == 998.000 | R_CLIMB == 999.000)
replace R_CLRDIS = . if (R_CLRDIS == 8.000 | R_CLRDIS == 9.000)
replace R_COLD = . if (R_COLD == 98.000 | R_COLD == 99.000)
replace R_COMMDA = . if (R_COMMDA == 998.000 | R_COMMDA == 999.000)
replace R_DATAL = . if (R_DATAL == 8.000 | R_DATAL == 9.000)
replace R_DATAPR = . if (R_DATAPR == 8.000 | R_DATAPR == 9.000)
replace R_DCP = . if (R_DCP == 998.000 | R_DCP == 999.000)
replace R_DEPL = . if (R_DEPL == 998.000 | R_DEPL == 999.000)
replace R_ENVIRO = . if (R_ENVIRO == 8.000 | R_ENVIRO == 9.000)
replace R_EYHNFT = . if (R_EYHNFT == 8.000 | R_EYHNFT == 9.000)
replace R_FIF = . if (R_FIF == 998.000 | R_FIF == 999.000)
replace R_FMNHR = . if (R_FMNHR == 97 | R_FMNHR == 98 | R_FMNHR == 99)
replace R_FMNYR = . if (R_FMNYR == 99997 | R_FMNYR == 99998 | R_FMNYR == 99999)
replace R_FNGRDX = . if (R_FNGRDX == 8.000 | R_FNGRDX == 9.000)
replace R_FRMPRC = . if (R_FRMPRC == 8.000 | R_FRMPRC == 9.000)
replace R_GED = . if (R_GED == 8.000 | R_GED == 9.000)
replace R_HAZARD = . if (R_HAZARD == 998.000 | R_HAZARD == 999.000)
replace R_HEAT = . if (R_HEAT == 98.000 | R_HEAT == 99.000)
replace R_INFLU = . if (R_INFLU == 998.000 | R_INFLU == 999.000)
replace R_INTELL = . if (R_INTELL == 8.000 | R_INTELL == 9.000)
replace R_MACHPR = . if (R_MACHPR == 998.000 | R_MACHPR == 999.000)
replace R_MCHNPR = . if (R_MCHNPR == 8.000 | R_MCHNPR == 9.000)
replace R_MEN = . if (R_MEN == 9999998 | R_MEN == 9999999)
replace R_MMNHR = . if (R_MMNHR == 97 | R_MMNHR == 98 | R_MMNHR == 99)
replace R_MMNYR = . if (R_MMNYR == 99997 | R_MMNYR == 99998 | R_MMNYR == 99999)
replace R_MNLDXT = . if (R_MNLDXT == 8.000 | R_MNLDXT == 9.000)
replace R_MTRCRD = . if (R_MTRCRD == 8.000 | R_MTRCRD == 9.000)
replace R_MVC = . if (R_MVC == 998.000 | R_MVC == 999.000)
replace R_NOISE = . if (R_NOISE == 998.000 | R_NOISE == 999.000)
replace R_NUMERC = . if (R_NUMERC == 8.000 | R_NUMERC == 9.000)
replace R_OBSPRE = . if (R_OBSPRE == 998.000 | R_OBSPRE == 999.000)
replace R_OUT = . if (R_OUT == 98.000 | R_OUT == 99.000)
replace R_PEOPLE = . if (R_PEOPLE == 98.000 | R_PEOPLE == 99.000)
replace R_PEOPRE = . if (R_PEOPRE == 998.000 | R_PEOPRE == 999.000)
replace R_PHYSDM = . if (R_PHYSDM == 8.000 | R_PHYSDM == 9.000)
replace R_PRODPR = . if (R_PRODPR == 98.000 | R_PRODPR == 99.000)
replace R_PROTPR = . if (R_PROTPR == 8.000 | R_PROTPR == 9.000)
replace R_PRSTPR = . if (R_PRSTPR == 998.000 | R_PRSTPR == 999.000)
replace R_PUS = . if (R_PUS == 98.000 | R_PUS == 99.000)
replace R_REACH = . if (R_REACH == 998.000 | R_REACH == 999.000)
replace R_REPCON = . if (R_REPCON == 98.000 | R_REPCON == 99.000)
replace R_ROUTPR = . if (R_ROUTPR == 998.000 | R_ROUTPR == 999.000)
replace R_SCINPR = . if (R_SCINPR == 998.000 | R_SCINPR == 999.000)
replace R_SEE = . if (R_SEE == 998.000 | R_SEE == 999.000)
replace R_SJC = . if (R_SJC == 998.000 | R_SJC == 999.000)
replace R_SPATIA = . if (R_SPATIA == 8.000 | R_SPATIA == 9.000)
replace R_STOOP = . if (R_STOOP == 998.000 | R_STOOP == 999.000)
replace R_STRGTH = . if (R_STRGTH == 8.000 | R_STRGTH == 9.000)
replace R_STS = . if (R_STS == 998.000 | R_STS == 999.000)
replace R_SVP = . if (R_SVP == 98.000 | R_SVP == 99.000)
replace R_TALK = . if (R_TALK == 998.000 | R_TALK == 999.000)
replace R_THINGS = . if (R_THINGS == 98.000 | R_THINGS == 99.000)
replace R_TRAIN = . if (R_TRAIN == 998.000 | R_TRAIN == 999.000)
replace R_VARCH = . if (R_VARCH == 998.000 | R_VARCH == 999.000)
replace R_VERBAL = . if (R_VERBAL == 8.000 | R_VERBAL == 9.000)
replace R_WET = . if (R_WET == 98.000 | R_WET == 99.000)
replace R_WOMEN = . if (R_WOMEN == 9999998 | R_WOMEN == 9999999)
replace MINDUS_R = . if (MINDUS_R == 7 | MINDUS_R == 8 | MINDUS_R == 9)
replace PROFID_R = . if (PROFID_R == 7 | PROFID_R == 8 | PROFID_R == 9)
replace AGRIC_R = . if (AGRIC_R == 7 | AGRIC_R == 8 | AGRIC_R == 9)
replace CONSTR_R = . if (CONSTR_R == 7 | CONSTR_R == 8 | CONSTR_R == 9)
replace MANUF_R = . if (MANUF_R == 7 | MANUF_R == 8 | MANUF_R == 9)
replace TRANSP_R = . if (TRANSP_R == 7 | TRANSP_R == 8 | TRANSP_R == 9)
replace WHOLE_R = . if (WHOLE_R == 7 | WHOLE_R == 8 | WHOLE_R == 9)
replace RETAIL_R = . if (RETAIL_R == 7 | RETAIL_R == 8 | RETAIL_R == 9)
replace FNANCE_R = . if (FNANCE_R == 7 | FNANCE_R == 8 | FNANCE_R == 9)
replace BUSIN_R = . if (BUSIN_R == 7 | BUSIN_R == 8 | BUSIN_R == 9)
replace PERSON_R = . if (PERSON_R == 7 | PERSON_R == 8 | PERSON_R == 9)
replace ENTERT_R = . if (ENTERT_R == 7 | ENTERT_R == 8 | ENTERT_R == 9)
replace PUBADM_R = . if (PUBADM_R == 7 | PUBADM_R == 8 | PUBADM_R == 9)
replace MOCCUP_R = . if (MOCCUP_R == 7 | MOCCUP_R == 8 | MOCCUP_R == 9)
replace EXEC_R = . if (EXEC_R == 7 | EXEC_R == 8 | EXEC_R == 9)
replace PROFOC_R = . if (PROFOC_R == 7 | PROFOC_R == 8 | PROFOC_R == 9)
replace TECH_R = . if (TECH_R == 7 | TECH_R == 8 | TECH_R == 9)
replace SALES_R = . if (SALES_R == 7 | SALES_R == 8 | SALES_R == 9)
replace ADMIN_R = . if (ADMIN_R == 7 | ADMIN_R == 8 | ADMIN_R == 9)
replace SERV_R = . if (SERV_R == 7 | SERV_R == 8 | SERV_R == 9)
replace FARM_R = . if (FARM_R == 7 | FARM_R == 8 | FARM_R == 9)
replace CRAFT_R = . if (CRAFT_R == 7 | CRAFT_R == 8 | CRAFT_R == 9)
replace OPERAT_R = . if (OPERAT_R == 7 | OPERAT_R == 8 | OPERAT_R == 9)
replace A1PB11 = . if (A1PB11 == 997 | A1PB11 == 998 | A1PB11 == 999)
replace A1PB11A = . if (A1PB11A == 97 | A1PB11A == 98 | A1PB11A == 99)
replace A1PB12 = . if (A1PB12 == 997 | A1PB12 == 998 | A1PB12 == 999)
replace A1PB14_2 = . if (A1PB14_2 == 7 | A1PB14_2 == 8 | A1PB14_2 == 9)
replace A1PB14_3 = . if (A1PB14_3 == 99997 | A1PB14_3 == 99998 | A1PB14_3 == 99999)
replace A1PB16 = . if (A1PB16 == 7 | A1PB16 == 8 | A1PB16 == 9)
replace A1POCP = . if (A1POCP == 997 | A1POCP == 998 | A1POCP == 999)
replace A1PINDP = . if (A1PINDP == 997 | A1PINDP == 998 | A1PINDP == 999)
replace A1PTSEIP = . if (A1PTSEIP == 98.00 | A1PTSEIP == 99.00)
replace A1PTEARP = . if (A1PTEARP == 8.000 | A1PTEARP == 9.000)
replace A1PTEDUP = . if (A1PTEDUP == 8.000 | A1PTEDUP == 9.000)
replace A1PFSEIP = . if (A1PFSEIP == 98.000 | A1PFSEIP == 99.000)
replace A1PFEARP = . if (A1PFEARP == 8.000 | A1PFEARP == 9.000)
replace A1PFEDUP = . if (A1PFEDUP == 8.000 | A1PFEDUP == 9.000)
replace A1PMSEIP = . if (A1PMSEIP == 98.000 | A1PMSEIP == 99.000)
replace A1PMEARP = . if (A1PMEARP == 8.000 | A1PMEARP == 9.000)
replace A1PMEDUP = . if (A1PMEDUP == 8.000 | A1PMEDUP == 9.000)
replace L_ABSCRE = . if (L_ABSCRE == 998.000 | L_ABSCRE == 999.000)
replace L_ATMOSP = . if (L_ATMOSP == 98.000 | L_ATMOSP == 99.000)
replace L_BOTH = . if (L_BOTH == 98.000 | L_BOTH == 99.000)
replace L_BUSPR = . if (L_BUSPR == 998.000 | L_BUSPR == 999.000)
replace L_CLERIC = . if (L_CLERIC == 8.000 | L_CLERIC == 9.000)
replace L_CLIMB = . if (L_CLIMB == 98.000 | L_CLIMB == 99.000)
replace L_CLRDIS = . if (L_CLRDIS == 8.000 | L_CLRDIS == 9.000)
replace L_COLD = . if (L_COLD == 98.000 | L_COLD == 99.000)
replace L_COMMDA = . if (L_COMMDA == 998.000 | L_COMMDA == 999.000)
replace L_DATAL = . if (L_DATAL == 8.000 | L_DATAL == 9.000)
replace L_DATAPR = . if (L_DATAPR == 8.000 | L_DATAPR == 9.000)
replace L_DCP = . if (L_DCP == 998.000 | L_DCP == 999.000)
replace L_DEPL = . if (L_DEPL == 998.000 | L_DEPL == 999.000)
replace L_ENVIRO = . if (L_ENVIRO == 8.000 | L_ENVIRO == 9.000)
replace L_EYHNFT = . if (L_EYHNFT == 8.000 | L_EYHNFT == 9.000)
replace L_FIF = . if (L_FIF == 998.000 | L_FIF == 999.000)
replace L_FMNHR = . if (L_FMNHR == 97 | L_FMNHR == 98 | L_FMNHR == 99)
replace L_FMNYR = . if (L_FMNYR == 99997 | L_FMNYR == 99998 | L_FMNYR == 99999)
replace L_FNGRDX = . if (L_FNGRDX == 8.000 | L_FNGRDX == 9.000)
replace L_FRMPRC = . if (L_FRMPRC == 8.000 | L_FRMPRC == 9.000)
replace L_GED = . if (L_GED == 8.000 | L_GED == 9.000)
replace L_HAZARD = . if (L_HAZARD == 98.000 | L_HAZARD == 99.000)
replace L_HEAT = . if (L_HEAT == 98.000 | L_HEAT == 99.000)
replace L_INFLU = . if (L_INFLU == 998.000 | L_INFLU == 999.000)
replace L_INTELL = . if (L_INTELL == 8.000 | L_INTELL == 9.000)
replace L_MACHPR = . if (L_MACHPR == 998.000 | L_MACHPR == 999.000)
replace L_MCHNPR = . if (L_MCHNPR == 8.000 | L_MCHNPR == 9.000)
replace L_MEN = . if (L_MEN == 9999998 | L_MEN == 9999999)
replace L_MMNHR = . if (L_MMNHR == 98 | L_MMNHR == 99)
replace L_MMNYR = . if (L_MMNYR == 99998 | L_MMNYR == 99999)
replace L_MNLDXT = . if (L_MNLDXT == 8.000 | L_MNLDXT == 9.000)
replace L_MTRCRD = . if (L_MTRCRD == 8.000 | L_MTRCRD == 9.000)
replace L_MVC = . if (L_MVC == 998.000 | L_MVC == 999.000)
replace L_NOISE = . if (L_NOISE == 98.000 | L_NOISE == 99.000)
replace L_NUMERC = . if (L_NUMERC == 8.000 | L_NUMERC == 9.000)
replace L_OBSPRE = . if (L_OBSPRE == 998.000 | L_OBSPRE == 999.000)
replace L_OUT = . if (L_OUT == 98.000 | L_OUT == 99.000)
replace L_PEOPLE = . if (L_PEOPLE == 98.000 | L_PEOPLE == 99.000)
replace L_PEOPRE = . if (L_PEOPRE == 998.000 | L_PEOPRE == 999.000)
replace L_PHYSDM = . if (L_PHYSDM == 8.000 | L_PHYSDM == 9.000)
replace L_PRODPR = . if (L_PRODPR == 98.000 | L_PRODPR == 99.000)
replace L_PROTPR = . if (L_PROTPR == 8.000 | L_PROTPR == 9.000)
replace L_PRSTPR = . if (L_PRSTPR == 998.000 | L_PRSTPR == 999.000)
replace L_PUS = . if (L_PUS == 98.000 | L_PUS == 99.000)
replace L_REACH = . if (L_REACH == 998.000 | L_REACH == 999.000)
replace L_REPCON = . if (L_REPCON == 98.000 | L_REPCON == 99.000)
replace L_ROUTPR = . if (L_ROUTPR == 998.000 | L_ROUTPR == 999.000)
replace L_SCINPR = . if (L_SCINPR == 998.000 | L_SCINPR == 999.000)
replace L_SEE = . if (L_SEE == 998.000 | L_SEE == 999.000)
replace L_SJC = . if (L_SJC == 998.000 | L_SJC == 999.000)
replace L_SPATIA = . if (L_SPATIA == 8.000 | L_SPATIA == 9.000)
replace L_STOOP = . if (L_STOOP == 998.000 | L_STOOP == 999.000)
replace L_STRGTH = . if (L_STRGTH == 8.000 | L_STRGTH == 9.000)
replace L_STS = . if (L_STS == 998.000 | L_STS == 999.000)
replace L_SVP = . if (L_SVP == 98.000 | L_SVP == 99.000)
replace L_TALK = . if (L_TALK == 998.000 | L_TALK == 999.000)
replace L_THINGS = . if (L_THINGS == 98.000 | L_THINGS == 99.000)
replace L_TRAIN = . if (L_TRAIN == 98.000 | L_TRAIN == 99.000)
replace L_VARCH = . if (L_VARCH == 998.000 | L_VARCH == 999.000)
replace L_VERBAL = . if (L_VERBAL == 8.000 | L_VERBAL == 9.000)
replace L_WET = . if (L_WET == 98.000 | L_WET == 99.000)
replace L_WOMEN = . if (L_WOMEN == 9999998 | L_WOMEN == 9999999)
replace MINDUS_L = . if (MINDUS_L == 7 | MINDUS_L == 8 | MINDUS_L == 9)
replace PROFID_L = . if (PROFID_L == 7 | PROFID_L == 8 | PROFID_L == 9)
replace AGRIC_L = . if (AGRIC_L == 7 | AGRIC_L == 8 | AGRIC_L == 9)
replace CONSTR_L = . if (CONSTR_L == 7 | CONSTR_L == 8 | CONSTR_L == 9)
replace MANUF_L = . if (MANUF_L == 7 | MANUF_L == 8 | MANUF_L == 9)
replace TRANSP_L = . if (TRANSP_L == 7 | TRANSP_L == 8 | TRANSP_L == 9)
replace WHOLE_L = . if (WHOLE_L == 7 | WHOLE_L == 8 | WHOLE_L == 9)
replace RETAIL_L = . if (RETAIL_L == 7 | RETAIL_L == 8 | RETAIL_L == 9)
replace FNANCE_L = . if (FNANCE_L == 7 | FNANCE_L == 8 | FNANCE_L == 9)
replace BUSIN_L = . if (BUSIN_L == 7 | BUSIN_L == 8 | BUSIN_L == 9)
replace PERSON_L = . if (PERSON_L == 7 | PERSON_L == 8 | PERSON_L == 9)
replace ENTERT_L = . if (ENTERT_L == 7 | ENTERT_L == 8 | ENTERT_L == 9)
replace PUBADM_L = . if (PUBADM_L == 7 | PUBADM_L == 8 | PUBADM_L == 9)
replace MOCCUP_L = . if (MOCCUP_L == 7 | MOCCUP_L == 8 | MOCCUP_L == 9)
replace EXEC_L = . if (EXEC_L == 7 | EXEC_L == 8 | EXEC_L == 9)
replace PROFOC_L = . if (PROFOC_L == 7 | PROFOC_L == 8 | PROFOC_L == 9)
replace TECH_L = . if (TECH_L == 7 | TECH_L == 8 | TECH_L == 9)
replace SALES_L = . if (SALES_L == 7 | SALES_L == 8 | SALES_L == 9)
replace ADMIN_L = . if (ADMIN_L == 7 | ADMIN_L == 8 | ADMIN_L == 9)
replace SERV_L = . if (SERV_L == 7 | SERV_L == 8 | SERV_L == 9)
replace FARM_L = . if (FARM_L == 7 | FARM_L == 8 | FARM_L == 9)
replace CRAFT_L = . if (CRAFT_L == 7 | CRAFT_L == 8 | CRAFT_L == 9)
replace OPERAT_L = . if (OPERAT_L == 7 | OPERAT_L == 8 | OPERAT_L == 9)
replace A1PB17 = . if (A1PB17 == 7 | A1PB17 == 8 | A1PB17 == 9)
replace A1PB19 = . if (A1PB19 == 7 | A1PB19 == 8 | A1PB19 == 9)
replace A1PB18MO = . if (A1PB18MO == 97 | A1PB18MO == 98 | A1PB18MO == 99)
replace A1PB18YR = . if (A1PB18YR == 97 | A1PB18YR == 98 | A1PB18YR == 99)
replace A1PB20 = . if (A1PB20 == 7 | A1PB20 == 8 | A1PB20 == 9)
replace A1PB20AMO = . if (A1PB20AMO == 97 | A1PB20AMO == 98 | A1PB20AMO == 99)
replace A1PB20AYR = . if (A1PB20AYR == 97 | A1PB20AYR == 98 | A1PB20AYR == 99)
replace A1PB20BMO = . if (A1PB20BMO == 97 | A1PB20BMO == 98 | A1PB20BMO == 99)
replace A1PB20BYR = . if (A1PB20BYR == 97 | A1PB20BYR == 98 | A1PB20BYR == 99)
replace A1PB21MO = . if (A1PB21MO == 97 | A1PB21MO == 98 | A1PB21MO == 99)
replace A1PB21YR = . if (A1PB21YR == 97 | A1PB21YR == 98 | A1PB21YR == 99)
replace A1PB22MO = . if (A1PB22MO == 97 | A1PB22MO == 98 | A1PB22MO == 99)
replace A1PB22YR = . if (A1PB22YR == 97 | A1PB22YR == 98 | A1PB22YR == 99)
replace A1PB23MO = . if (A1PB23MO == 97 | A1PB23MO == 98 | A1PB23MO == 99)
replace A1PB23YR = . if (A1PB23YR == 97 | A1PB23YR == 98 | A1PB23YR == 99)
replace A1PB24 = . if (A1PB24 == 7 | A1PB24 == 8 | A1PB24 == 9)
replace A1PB25 = . if (A1PB25 == 9997 | A1PB25 == 9998 | A1PB25 == 9999)
replace A1PPARTN = . if (A1PPARTN == 7 | A1PPARTN == 8 | A1PPARTN == 9)
replace A1PB26 = . if (A1PB26 == 97 | A1PB26 == 98 | A1PB26 == 99)
replace A1PSAGE = . if (A1PSAGE == 97 | A1PSAGE == 98 | A1PSAGE == 99)
replace A1PB27 = . if (A1PB27 == 97 | A1PB27 == 98 | A1PB27 == 99)
replace A1PMQB27 = . if (A1PMQB27 == 7 | A1PMQB27 == 8 | A1PMQB27 == 9)
replace A1PSEDU = . if (A1PSEDU == 7 | A1PSEDU == 8 | A1PSEDU == 9)
replace A1PSSXEDAG = . if (A1PSSXEDAG == 97 | A1PSSXEDAG == 98 | A1PSSXEDAG == 99)
replace A1PB28A = . if (A1PB28A == 7 | A1PB28A == 8 | A1PB28A == 9)
replace A1PB28B = . if (A1PB28B == 7 | A1PB28B == 8 | A1PB28B == 9)
replace A1PB28C = . if (A1PB28C == 7 | A1PB28C == 8 | A1PB28C == 9)
replace A1PB28D = . if (A1PB28D == 7 | A1PB28D == 8 | A1PB28D == 9)
replace A1PB28E = . if (A1PB28E == 7 | A1PB28E == 8 | A1PB28E == 9)
replace A1PB28F = . if (A1PB28F == 7 | A1PB28F == 8 | A1PB28F == 9)
replace A1PB28G = . if (A1PB28G == 7 | A1PB28G == 8 | A1PB28G == 9)
replace A1PB28H = . if (A1PB28H == 7 | A1PB28H == 8 | A1PB28H == 9)
replace A1PB28I = . if (A1PB28I == 7 | A1PB28I == 8 | A1PB28I == 9)
replace A1PB28J = . if (A1PB28J == 7 | A1PB28J == 8 | A1PB28J == 9)
replace A1PB28K = . if (A1PB28K == 7 | A1PB28K == 8 | A1PB28K == 9)
replace A1PB30 = . if (A1PB30 == 9997 | A1PB30 == 9998 | A1PB30 == 9999)
replace A1PB29A = . if (A1PB29A == 7 | A1PB29A == 8 | A1PB29A == 9)
replace A1PB29B = . if (A1PB29B == 7 | A1PB29B == 8 | A1PB29B == 9)
replace A1PB29C = . if (A1PB29C == 7 | A1PB29C == 8 | A1PB29C == 9)
replace A1PB29D = . if (A1PB29D == 7 | A1PB29D == 8 | A1PB29D == 9)
replace A1PB29E = . if (A1PB29E == 7 | A1PB29E == 8 | A1PB29E == 9)
replace A1PB29F = . if (A1PB29F == 7 | A1PB29F == 8 | A1PB29F == 9)
replace A1PB29G = . if (A1PB29G == 7 | A1PB29G == 8 | A1PB29G == 9)
replace A1PB31 = . if (A1PB31 == 7 | A1PB31 == 8 | A1PB31 == 9)
replace A1PB33_2 = . if (A1PB33_2 == 7 | A1PB33_2 == 8 | A1PB33_2 == 9)
replace A1PB34_2 = . if (A1PB34_2 == 7 | A1PB34_2 == 8 | A1PB34_2 == 9)
replace A1POCCS = . if (A1POCCS == 997 | A1POCCS == 998 | A1POCCS == 999)
replace A1PINDS = . if (A1PINDS == 997 | A1PINDS == 998 | A1PINDS == 999)
replace A1PTSEIS = . if (A1PTSEIS == 98.00 | A1PTSEIS == 99.00)
replace A1PTEARS = . if (A1PTEARS == 8.000 | A1PTEARS == 9.000)
replace A1PTEDUS = . if (A1PTEDUS == 8.000 | A1PTEDUS == 9.000)
replace A1PFSEIS = . if (A1PFSEIS == 98.000 | A1PFSEIS == 99.000)
replace A1PFEARS = . if (A1PFEARS == 8.000 | A1PFEARS == 9.000)
replace A1PFEDUS = . if (A1PFEDUS == 8.000 | A1PFEDUS == 9.000)
replace A1PMSEIS = . if (A1PMSEIS == 98.000 | A1PMSEIS == 99.000)
replace A1PMEARS = . if (A1PMEARS == 8.000 | A1PMEARS == 9.000)
replace A1PMEDUS = . if (A1PMEDUS == 8.000 | A1PMEDUS == 9.000)
replace S_ABSCRE = . if (S_ABSCRE == 998.000 | S_ABSCRE == 999.000)
replace S_ATMOSP = . if (S_ATMOSP == 98.000 | S_ATMOSP == 99.000)
replace S_BOTH = . if (S_BOTH == 98.000 | S_BOTH == 99.000)
replace S_BUSPR = . if (S_BUSPR == 998.000 | S_BUSPR == 999.000)
replace S_CLERIC = . if (S_CLERIC == 8.000 | S_CLERIC == 9.000)
replace S_CLIMB = . if (S_CLIMB == 998.000 | S_CLIMB == 999.000)
replace S_CLRDIS = . if (S_CLRDIS == 8.000 | S_CLRDIS == 9.000)
replace S_COLD = . if (S_COLD == 98.000 | S_COLD == 99.000)
replace S_COMMDA = . if (S_COMMDA == 998.000 | S_COMMDA == 999.000)
replace S_DATAL = . if (S_DATAL == 8.000 | S_DATAL == 9.000)
replace S_DATAPR = . if (S_DATAPR == 8.000 | S_DATAPR == 9.000)
replace S_DCP = . if (S_DCP == 998.000 | S_DCP == 999.000)
replace S_DEPL = . if (S_DEPL == 998.000 | S_DEPL == 999.000)
replace S_ENVIRO = . if (S_ENVIRO == 8.000 | S_ENVIRO == 9.000)
replace S_EYHNFT = . if (S_EYHNFT == 8.000 | S_EYHNFT == 9.000)
replace S_FIF = . if (S_FIF == 998.000 | S_FIF == 999.000)
replace S_FMNHR = . if (S_FMNHR == 97 | S_FMNHR == 98 | S_FMNHR == 99)
replace S_FMNYR = . if (S_FMNYR == 99997 | S_FMNYR == 99998 | S_FMNYR == 99999)
replace S_FNGRDX = . if (S_FNGRDX == 8.000 | S_FNGRDX == 9.000)
replace S_FRMPRC = . if (S_FRMPRC == 8.000 | S_FRMPRC == 9.000)
replace S_GED = . if (S_GED == 8.000 | S_GED == 9.000)
replace S_HAZARD = . if (S_HAZARD == 998.000 | S_HAZARD == 999.000)
replace S_HEAT = . if (S_HEAT == 98.000 | S_HEAT == 99.000)
replace S_INFLU = . if (S_INFLU == 998.000 | S_INFLU == 999.000)
replace S_INTELL = . if (S_INTELL == 8.000 | S_INTELL == 9.000)
replace S_MACHPR = . if (S_MACHPR == 998.000 | S_MACHPR == 999.000)
replace S_MCHNPR = . if (S_MCHNPR == 8.000 | S_MCHNPR == 9.000)
replace S_MEN = . if (S_MEN == 9999997 | S_MEN == 9999998 | S_MEN == 9999999)
replace S_MMNHR = . if (S_MMNHR == 97 | S_MMNHR == 98 | S_MMNHR == 99)
replace S_MMNYR = . if (S_MMNYR == 99997 | S_MMNYR == 99998 | S_MMNYR == 99999)
replace S_MNLDXT = . if (S_MNLDXT == 8.000 | S_MNLDXT == 9.000)
replace S_MTRCRD = . if (S_MTRCRD == 8.000 | S_MTRCRD == 9.000)
replace S_MVC = . if (S_MVC == 998.000 | S_MVC == 999.000)
replace S_NOISE = . if (S_NOISE == 998.000 | S_NOISE == 999.000)
replace S_NUMERC = . if (S_NUMERC == 8.000 | S_NUMERC == 9.000)
replace S_OBSPRE = . if (S_OBSPRE == 998.000 | S_OBSPRE == 999.000)
replace S_OUT = . if (S_OUT == 98.000 | S_OUT == 99.000)
replace S_PEOPLE = . if (S_PEOPLE == 98.000 | S_PEOPLE == 99.000)
replace S_PEOPRE = . if (S_PEOPRE == 998.000 | S_PEOPRE == 999.000)
replace S_PHYSDM = . if (S_PHYSDM == 8.000 | S_PHYSDM == 9.000)
replace S_PRODPR = . if (S_PRODPR == 98.000 | S_PRODPR == 99.000)
replace S_PROTPR = . if (S_PROTPR == 8.000 | S_PROTPR == 9.000)
replace S_PRSTPR = . if (S_PRSTPR == 998.000 | S_PRSTPR == 999.000)
replace S_PUS = . if (S_PUS == 98.000 | S_PUS == 99.000)
replace S_REACH = . if (S_REACH == 998.000 | S_REACH == 999.000)
replace S_REPCON = . if (S_REPCON == 998.000 | S_REPCON == 999.000)
replace S_ROUTPR = . if (S_ROUTPR == 998.000 | S_ROUTPR == 999.000)
replace S_SCINPR = . if (S_SCINPR == 998.000 | S_SCINPR == 999.000)
replace S_SEE = . if (S_SEE == 998.000 | S_SEE == 999.000)
replace S_SJC = . if (S_SJC == 998.000 | S_SJC == 999.000)
replace S_SPATIA = . if (S_SPATIA == 8.000 | S_SPATIA == 9.000)
replace S_STOOP = . if (S_STOOP == 998.000 | S_STOOP == 999.000)
replace S_STRGTH = . if (S_STRGTH == 8.000 | S_STRGTH == 9.000)
replace S_STS = . if (S_STS == 998.000 | S_STS == 999.000)
replace S_SVP = . if (S_SVP == 98.000 | S_SVP == 99.000)
replace S_TALK = . if (S_TALK == 998.000 | S_TALK == 999.000)
replace S_THINGS = . if (S_THINGS == 98.000 | S_THINGS == 99.000)
replace S_TRAIN = . if (S_TRAIN == 998.000 | S_TRAIN == 999.000)
replace S_VARCH = . if (S_VARCH == 998.000 | S_VARCH == 999.000)
replace S_VERBAL = . if (S_VERBAL == 8.000 | S_VERBAL == 9.000)
replace S_WET = . if (S_WET == 98.000 | S_WET == 99.000)
replace S_WOMEN = . if (S_WOMEN == 9999997 | S_WOMEN == 9999998 | S_WOMEN == 9999999)
replace MINDUS_S = . if (MINDUS_S == 7 | MINDUS_S == 8 | MINDUS_S == 9)
replace PROFID_S = . if (PROFID_S == 7 | PROFID_S == 8 | PROFID_S == 9)
replace AGRIC_S = . if (AGRIC_S == 7 | AGRIC_S == 8 | AGRIC_S == 9)
replace CONSTR_S = . if (CONSTR_S == 7 | CONSTR_S == 8 | CONSTR_S == 9)
replace MANUF_S = . if (MANUF_S == 7 | MANUF_S == 8 | MANUF_S == 9)
replace TRANSP_S = . if (TRANSP_S == 7 | TRANSP_S == 8 | TRANSP_S == 9)
replace WHOLE_S = . if (WHOLE_S == 7 | WHOLE_S == 8 | WHOLE_S == 9)
replace RETAIL_S = . if (RETAIL_S == 7 | RETAIL_S == 8 | RETAIL_S == 9)
replace FNANCE_S = . if (FNANCE_S == 7 | FNANCE_S == 8 | FNANCE_S == 9)
replace BUSIN_S = . if (BUSIN_S == 7 | BUSIN_S == 8 | BUSIN_S == 9)
replace PERSON_S = . if (PERSON_S == 7 | PERSON_S == 8 | PERSON_S == 9)
replace ENTERT_S = . if (ENTERT_S == 7 | ENTERT_S == 8 | ENTERT_S == 9)
replace PUBADM_S = . if (PUBADM_S == 7 | PUBADM_S == 8 | PUBADM_S == 9)
replace MOCCUP_S = . if (MOCCUP_S == 7 | MOCCUP_S == 8 | MOCCUP_S == 9)
replace EXEC_S = . if (EXEC_S == 7 | EXEC_S == 8 | EXEC_S == 9)
replace PROFOC_S = . if (PROFOC_S == 7 | PROFOC_S == 8 | PROFOC_S == 9)
replace TECH_S = . if (TECH_S == 7 | TECH_S == 8 | TECH_S == 9)
replace SALES_S = . if (SALES_S == 7 | SALES_S == 8 | SALES_S == 9)
replace ADMIN_S = . if (ADMIN_S == 7 | ADMIN_S == 8 | ADMIN_S == 9)
replace SERV_S = . if (SERV_S == 7 | SERV_S == 8 | SERV_S == 9)
replace FARM_S = . if (FARM_S == 7 | FARM_S == 8 | FARM_S == 9)
replace CRAFT_S = . if (CRAFT_S == 7 | CRAFT_S == 8 | CRAFT_S == 9)
replace OPERAT_S = . if (OPERAT_S == 7 | OPERAT_S == 8 | OPERAT_S == 9)
replace A1PB35 = . if (A1PB35 == 97 | A1PB35 == 98 | A1PB35 == 99)
replace CNT_BK = . if (CNT_BK == 97 | CNT_BK == 98 | CNT_BK == 99)
replace A1PB36A1 = . if (A1PB36A1 == 7 | A1PB36A1 == 8 | A1PB36A1 == 9)
replace A1PB36B1 = . if (A1PB36B1 == 97 | A1PB36B1 == 98 | A1PB36B1 == 99)
replace A1PB36C1 = . if (A1PB36C1 == 97 | A1PB36C1 == 98 | A1PB36C1 == 99)
replace A1PB36A2 = . if (A1PB36A2 == 7 | A1PB36A2 == 8 | A1PB36A2 == 9)
replace A1PB36B2 = . if (A1PB36B2 == 97 | A1PB36B2 == 98 | A1PB36B2 == 99)
replace A1PB36C2 = . if (A1PB36C2 == 97 | A1PB36C2 == 98 | A1PB36C2 == 99)
replace A1PB36A3 = . if (A1PB36A3 == 7 | A1PB36A3 == 8 | A1PB36A3 == 9)
replace A1PB36B3 = . if (A1PB36B3 == 97 | A1PB36B3 == 98 | A1PB36B3 == 99)
replace A1PB36C3 = . if (A1PB36C3 == 97 | A1PB36C3 == 98 | A1PB36C3 == 99)
replace A1PB36A4 = . if (A1PB36A4 == 7 | A1PB36A4 == 8 | A1PB36A4 == 9)
replace A1PB36B4 = . if (A1PB36B4 == 97 | A1PB36B4 == 98 | A1PB36B4 == 99)
replace A1PB36C4 = . if (A1PB36C4 == 97 | A1PB36C4 == 98 | A1PB36C4 == 99)
replace A1PB36A5 = . if (A1PB36A5 == 7 | A1PB36A5 == 8 | A1PB36A5 == 9)
replace A1PB36B5 = . if (A1PB36B5 == 97 | A1PB36B5 == 98 | A1PB36B5 == 99)
replace A1PB36C5 = . if (A1PB36C5 == 97 | A1PB36C5 == 98 | A1PB36C5 == 99)
replace A1PB36A6 = . if (A1PB36A6 == 7 | A1PB36A6 == 8 | A1PB36A6 == 9)
replace A1PB36B6 = . if (A1PB36B6 == 97 | A1PB36B6 == 98 | A1PB36B6 == 99)
replace A1PB36C6 = . if (A1PB36C6 == 97 | A1PB36C6 == 98 | A1PB36C6 == 99)
replace A1PB36A7 = . if (A1PB36A7 == 7 | A1PB36A7 == 8 | A1PB36A7 == 9)
replace A1PB36B7 = . if (A1PB36B7 == 97 | A1PB36B7 == 98 | A1PB36B7 == 99)
replace A1PB36C7 = . if (A1PB36C7 == 97 | A1PB36C7 == 98 | A1PB36C7 == 99)
replace A1PB36A8 = . if (A1PB36A8 == 7 | A1PB36A8 == 8 | A1PB36A8 == 9)
replace A1PB36B8 = . if (A1PB36B8 == 97 | A1PB36B8 == 98 | A1PB36B8 == 99)
replace A1PB36C8 = . if (A1PB36C8 == 97 | A1PB36C8 == 98 | A1PB36C8 == 99)
replace A1PB36A9 = . if (A1PB36A9 == 7 | A1PB36A9 == 8 | A1PB36A9 == 9)
replace A1PB36B9 = . if (A1PB36B9 == 97 | A1PB36B9 == 98 | A1PB36B9 == 99)
replace A1PB36C9 = . if (A1PB36C9 == 97 | A1PB36C9 == 98 | A1PB36C9 == 99)
replace A1PB36A10 = . if (A1PB36A10 == 7 | A1PB36A10 == 8 | A1PB36A10 == 9)
replace A1PB36B10 = . if (A1PB36B10 == 97 | A1PB36B10 == 98 | A1PB36B10 == 99)
replace A1PB36C10 = . if (A1PB36C10 == 97 | A1PB36C10 == 98 | A1PB36C10 == 99)
replace A1PBAG1 = . if (A1PBAG1 == 97 | A1PBAG1 == 98 | A1PBAG1 == 99)
replace A1PBAG2 = . if (A1PBAG2 == 97 | A1PBAG2 == 98 | A1PBAG2 == 99)
replace A1PBAG3 = . if (A1PBAG3 == 97 | A1PBAG3 == 98 | A1PBAG3 == 99)
replace A1PBAG4 = . if (A1PBAG4 == 97 | A1PBAG4 == 98 | A1PBAG4 == 99)
replace A1PBAG5 = . if (A1PBAG5 == 97 | A1PBAG5 == 98 | A1PBAG5 == 99)
replace A1PBAG6 = . if (A1PBAG6 == 97 | A1PBAG6 == 98 | A1PBAG6 == 99)
replace A1PBAG7 = . if (A1PBAG7 == 97 | A1PBAG7 == 98 | A1PBAG7 == 99)
replace A1PBAG8 = . if (A1PBAG8 == 97 | A1PBAG8 == 98 | A1PBAG8 == 99)
replace A1PBAG9 = . if (A1PBAG9 == 97 | A1PBAG9 == 98 | A1PBAG9 == 99)
replace A1PBAG10 = . if (A1PBAG10 == 97 | A1PBAG10 == 98 | A1PBAG10 == 99)
replace A1PB37 = . if (A1PB37 == 97 | A1PB37 == 98 | A1PB37 == 99)
replace CNT_NBK = . if (CNT_NBK == 97 | CNT_NBK == 98 | CNT_NBK == 99)
replace A1PB37A1 = . if (A1PB37A1 == 7 | A1PB37A1 == 8 | A1PB37A1 == 9)
replace A1PB37B1 = . if (A1PB37B1 == 7 | A1PB37B1 == 8 | A1PB37B1 == 9)
replace A1PB37C1 = . if (A1PB37C1 == 97 | A1PB37C1 == 98 | A1PB37C1 == 99)
replace A1PB37D1 = . if (A1PB37D1 == 97 | A1PB37D1 == 98 | A1PB37D1 == 99)
replace A1PB37A2 = . if (A1PB37A2 == 7 | A1PB37A2 == 8 | A1PB37A2 == 9)
replace A1PB37B2 = . if (A1PB37B2 == 7 | A1PB37B2 == 8 | A1PB37B2 == 9)
replace A1PB37C2 = . if (A1PB37C2 == 97 | A1PB37C2 == 98 | A1PB37C2 == 99)
replace A1PB37D2 = . if (A1PB37D2 == 97 | A1PB37D2 == 98 | A1PB37D2 == 99)
replace A1PB37A3 = . if (A1PB37A3 == 7 | A1PB37A3 == 8 | A1PB37A3 == 9)
replace A1PB37B3 = . if (A1PB37B3 == 7 | A1PB37B3 == 8 | A1PB37B3 == 9)
replace A1PB37C3 = . if (A1PB37C3 == 97 | A1PB37C3 == 98 | A1PB37C3 == 99)
replace A1PB37D3 = . if (A1PB37D3 == 97 | A1PB37D3 == 98 | A1PB37D3 == 99)
replace A1PB37A4 = . if (A1PB37A4 == 7 | A1PB37A4 == 8 | A1PB37A4 == 9)
replace A1PB37B4 = . if (A1PB37B4 == 7 | A1PB37B4 == 8 | A1PB37B4 == 9)
replace A1PB37C4 = . if (A1PB37C4 == 97 | A1PB37C4 == 98 | A1PB37C4 == 99)
replace A1PB37D4 = . if (A1PB37D4 == 97 | A1PB37D4 == 98 | A1PB37D4 == 99)
replace A1PB37A5 = . if (A1PB37A5 == 7 | A1PB37A5 == 8 | A1PB37A5 == 9)
replace A1PB37B5 = . if (A1PB37B5 == 7 | A1PB37B5 == 8 | A1PB37B5 == 9)
replace A1PB37C5 = . if (A1PB37C5 == 97 | A1PB37C5 == 98 | A1PB37C5 == 99)
replace A1PB37D5 = . if (A1PB37D5 == 97 | A1PB37D5 == 98 | A1PB37D5 == 99)
replace A1PB37A6 = . if (A1PB37A6 == 7 | A1PB37A6 == 8 | A1PB37A6 == 9)
replace A1PB37B6 = . if (A1PB37B6 == 7 | A1PB37B6 == 8 | A1PB37B6 == 9)
replace A1PB37C6 = . if (A1PB37C6 == 97 | A1PB37C6 == 98 | A1PB37C6 == 99)
replace A1PB37D6 = . if (A1PB37D6 == 97 | A1PB37D6 == 98 | A1PB37D6 == 99)
replace A1PB37A7 = . if (A1PB37A7 == 7 | A1PB37A7 == 8 | A1PB37A7 == 9)
replace A1PB37B7 = . if (A1PB37B7 == 7 | A1PB37B7 == 8 | A1PB37B7 == 9)
replace A1PB37C7 = . if (A1PB37C7 == 97 | A1PB37C7 == 98 | A1PB37C7 == 99)
replace A1PB37D7 = . if (A1PB37D7 == 97 | A1PB37D7 == 98 | A1PB37D7 == 99)
replace A1PB37A8 = . if (A1PB37A8 == 7 | A1PB37A8 == 8 | A1PB37A8 == 9)
replace A1PB37B8 = . if (A1PB37B8 == 7 | A1PB37B8 == 8 | A1PB37B8 == 9)
replace A1PB37C8 = . if (A1PB37C8 == 97 | A1PB37C8 == 98 | A1PB37C8 == 99)
replace A1PB37D8 = . if (A1PB37D8 == 97 | A1PB37D8 == 98 | A1PB37D8 == 99)
replace A1PB37A9 = . if (A1PB37A9 == 7 | A1PB37A9 == 8 | A1PB37A9 == 9)
replace A1PB37B9 = . if (A1PB37B9 == 7 | A1PB37B9 == 8 | A1PB37B9 == 9)
replace A1PB37C9 = . if (A1PB37C9 == 97 | A1PB37C9 == 98 | A1PB37C9 == 99)
replace A1PB37D9 = . if (A1PB37D9 == 97 | A1PB37D9 == 98 | A1PB37D9 == 99)
replace A1PB37A10 = . if (A1PB37A10 == 7 | A1PB37A10 == 8 | A1PB37A10 == 9)
replace A1PB37B10 = . if (A1PB37B10 == 7 | A1PB37B10 == 8 | A1PB37B10 == 9)
replace A1PB37C10 = . if (A1PB37C10 == 97 | A1PB37C10 == 98 | A1PB37C10 == 99)
replace A1PB37D10 = . if (A1PB37D10 == 97 | A1PB37D10 == 98 | A1PB37D10 == 99)
replace A1PBAO1 = . if (A1PBAO1 == 97 | A1PBAO1 == 98 | A1PBAO1 == 99)
replace A1PBAO2 = . if (A1PBAO2 == 97 | A1PBAO2 == 98 | A1PBAO2 == 99)
replace A1PBAO3 = . if (A1PBAO3 == 97 | A1PBAO3 == 98 | A1PBAO3 == 99)
replace A1PBAO4 = . if (A1PBAO4 == 97 | A1PBAO4 == 98 | A1PBAO4 == 99)
replace A1PBAO5 = . if (A1PBAO5 == 97 | A1PBAO5 == 98 | A1PBAO5 == 99)
replace A1PBAO6 = . if (A1PBAO6 == 97 | A1PBAO6 == 98 | A1PBAO6 == 99)
replace A1PBAO7 = . if (A1PBAO7 == 97 | A1PBAO7 == 98 | A1PBAO7 == 99)
replace A1PBAO8 = . if (A1PBAO8 == 97 | A1PBAO8 == 98 | A1PBAO8 == 99)
replace A1PBAO9 = . if (A1PBAO9 == 97 | A1PBAO9 == 98 | A1PBAO9 == 99)
replace A1PBAO10 = . if (A1PBAO10 == 97 | A1PBAO10 == 98 | A1PBAO10 == 99)
replace A1PCHILD0 = . if (A1PCHILD0 == 7 | A1PCHILD0 == 8 | A1PCHILD0 == 9)
replace A1PCHILD1 = . if (A1PCHILD1 == 7 | A1PCHILD1 == 8 | A1PCHILD1 == 9)
replace A1PCHILD2 = . if (A1PCHILD2 == 7 | A1PCHILD2 == 8 | A1PCHILD2 == 9)
replace A1PCHILD3 = . if (A1PCHILD3 == 7 | A1PCHILD3 == 8 | A1PCHILD3 == 9)
replace A1PCHILD4 = . if (A1PCHILD4 == 7 | A1PCHILD4 == 8 | A1PCHILD4 == 9)
replace A1PCHILD5 = . if (A1PCHILD5 == 7 | A1PCHILD5 == 8 | A1PCHILD5 == 9)
replace A1PCHILD6 = . if (A1PCHILD6 == 7 | A1PCHILD6 == 8 | A1PCHILD6 == 9)
replace A1PCHILD7 = . if (A1PCHILD7 == 7 | A1PCHILD7 == 8 | A1PCHILD7 == 9)
replace A1PCHILD8 = . if (A1PCHILD8 == 7 | A1PCHILD8 == 8 | A1PCHILD8 == 9)
replace A1PCHILD9 = . if (A1PCHILD9 == 7 | A1PCHILD9 == 8 | A1PCHILD9 == 9)
replace A1PCHILD10 = . if (A1PCHILD10 == 7 | A1PCHILD10 == 8 | A1PCHILD10 == 9)
replace A1PCHILD11 = . if (A1PCHILD11 == 7 | A1PCHILD11 == 8 | A1PCHILD11 == 9)
replace A1PCHILD12 = . if (A1PCHILD12 == 7 | A1PCHILD12 == 8 | A1PCHILD12 == 9)
replace A1PCHILD13 = . if (A1PCHILD13 == 7 | A1PCHILD13 == 8 | A1PCHILD13 == 9)
replace A1PCHILD14 = . if (A1PCHILD14 == 7 | A1PCHILD14 == 8 | A1PCHILD14 == 9)
replace A1PCHILD15 = . if (A1PCHILD15 == 7 | A1PCHILD15 == 8 | A1PCHILD15 == 9)
replace A1PCHILD16 = . if (A1PCHILD16 == 7 | A1PCHILD16 == 8 | A1PCHILD16 == 9)
replace A1PCHILD17 = . if (A1PCHILD17 == 7 | A1PCHILD17 == 8 | A1PCHILD17 == 9)
replace A1PCHILD18 = . if (A1PCHILD18 == 7 | A1PCHILD18 == 8 | A1PCHILD18 == 9)
replace A1PC06 = . if (A1PC06 == 7 | A1PC06 == 8 | A1PC06 == 9)
replace A1PC713 = . if (A1PC713 == 7 | A1PC713 == 8 | A1PC713 == 9)
replace A1PC1417 = . if (A1PC1417 == 7 | A1PC1417 == 8 | A1PC1417 == 9)
replace A1PC18 = . if (A1PC18 == 7 | A1PC18 == 8 | A1PC18 == 9)
replace A1PE1 = . if (A1PE1 == 7 | A1PE1 == 8 | A1PE1 == 9)
replace A1PE1A = . if (A1PE1A == 9997 | A1PE1A == 9998 | A1PE1A == 9999)
replace A1PE2 = . if (A1PE2 == 7 | A1PE2 == 8 | A1PE2 == 9)
replace A1PE2A = . if (A1PE2A == 9997 | A1PE2A == 9998 | A1PE2A == 9999)
replace A1PE3 = . if (A1PE3 == 7 | A1PE3 == 8 | A1PE3 == 9)
replace A1PE3A = . if (A1PE3A == 9997 | A1PE3A == 9998 | A1PE3A == 9999)
replace A1PC1 = . if (A1PC1 == 7 | A1PC1 == 8 | A1PC1 == 9)
replace A1PCA1 = . if (A1PCA1 == 7 | A1PCA1 == 8 | A1PCA1 == 9)
replace A1PCA2 = . if (A1PCA2 == 7 | A1PCA2 == 8 | A1PCA2 == 9)
replace A1PCA3 = . if (A1PCA3 == 7 | A1PCA3 == 8 | A1PCA3 == 9)
replace A1PCA4 = . if (A1PCA4 == 7 | A1PCA4 == 8 | A1PCA4 == 9)
replace A1PCA5 = . if (A1PCA5 == 7 | A1PCA5 == 8 | A1PCA5 == 9)
replace A1PCA6 = . if (A1PCA6 == 7 | A1PCA6 == 8 | A1PCA6 == 9)
replace A1PCA7 = . if (A1PCA7 == 7 | A1PCA7 == 8 | A1PCA7 == 9)
replace A1PCB1 = . if (A1PCB1 == 97 | A1PCB1 == 98 | A1PCB1 == 99)
replace A1PCB2 = . if (A1PCB2 == 97 | A1PCB2 == 98 | A1PCB2 == 99)
replace A1PCB3 = . if (A1PCB3 == 97 | A1PCB3 == 98 | A1PCB3 == 99)
replace A1PCB6 = . if (A1PCB6 == 97 | A1PCB6 == 98 | A1PCB6 == 99)
replace A1PCB7 = . if (A1PCB7 == 97 | A1PCB7 == 98 | A1PCB7 == 99)
replace A1PCC = . if (A1PCC == 7 | A1PCC == 8 | A1PCC == 9)
replace A1PC2 = . if (A1PC2 == 97 | A1PC2 == 98 | A1PC2 == 99)
replace A1PC3 = . if (A1PC3 == 7 | A1PC3 == 8 | A1PC3 == 9)
replace A1PC3A1 = . if (A1PC3A1 == 7 | A1PC3A1 == 8 | A1PC3A1 == 9)
replace A1PC3A2 = . if (A1PC3A2 == 7 | A1PC3A2 == 8 | A1PC3A2 == 9)
replace A1PC3A3 = . if (A1PC3A3 == 7 | A1PC3A3 == 8 | A1PC3A3 == 9)
replace A1PC3A4 = . if (A1PC3A4 == 7 | A1PC3A4 == 8 | A1PC3A4 == 9)
replace A1PC3A5 = . if (A1PC3A5 == 7 | A1PC3A5 == 8 | A1PC3A5 == 9)
replace A1PC5_2 = . if (A1PC5_2 == 7 | A1PC5_2 == 8 | A1PC5_2 == 9)
replace A1PC6_2 = . if (A1PC6_2 == 7 | A1PC6_2 == 8 | A1PC6_2 == 9)
replace A1PINDD = . if (A1PINDD == 997 | A1PINDD == 998 | A1PINDD == 999)
replace A1POCCD = . if (A1POCCD == 997 | A1POCCD == 998 | A1POCCD == 999)
replace A1PTSEID = . if (A1PTSEID == 98.00 | A1PTSEID == 99.00)
replace A1PTEARD = . if (A1PTEARD == 8.000 | A1PTEARD == 9.000)
replace A1PTEDUD = . if (A1PTEDUD == 8.000 | A1PTEDUD == 9.000)
replace A1PFSEID = . if (A1PFSEID == 98.000 | A1PFSEID == 99.000)
replace A1PFEARD = . if (A1PFEARD == 8.000 | A1PFEARD == 9.000)
replace A1PFEDUD = . if (A1PFEDUD == 8.000 | A1PFEDUD == 9.000)
replace A1PMSEID = . if (A1PMSEID == 998.000 | A1PMSEID == 999.000)
replace A1PMEARD = . if (A1PMEARD == 8.000 | A1PMEARD == 9.000)
replace A1PMEDUD = . if (A1PMEDUD == 8.000 | A1PMEDUD == 9.000)
replace D_ABSCRE = . if (D_ABSCRE == 998.000 | D_ABSCRE == 999.000)
replace D_ATMOSP = . if (D_ATMOSP == 98.000 | D_ATMOSP == 99.000)
replace D_BOTH = . if (D_BOTH == 998.000 | D_BOTH == 999.000)
replace D_BUSPR = . if (D_BUSPR == 998.000 | D_BUSPR == 999.000)
replace D_CLERIC = . if (D_CLERIC == 8.000 | D_CLERIC == 9.000)
replace D_CLIMB = . if (D_CLIMB == 98.000 | D_CLIMB == 99.000)
replace D_CLRDIS = . if (D_CLRDIS == 8.000 | D_CLRDIS == 9.000)
replace D_COLD = . if (D_COLD == 98.000 | D_COLD == 99.000)
replace D_COMMDA = . if (D_COMMDA == 998.000 | D_COMMDA == 999.000)
replace D_DATAL = . if (D_DATAL == 8.000 | D_DATAL == 9.000)
replace D_DATAPR = . if (D_DATAPR == 8.000 | D_DATAPR == 9.000)
replace D_DCP = . if (D_DCP == 998.000 | D_DCP == 999.000)
replace D_DEPL = . if (D_DEPL == 998.000 | D_DEPL == 999.000)
replace D_ENVIRO = . if (D_ENVIRO == 8.000 | D_ENVIRO == 9.000)
replace D_EYHNFT = . if (D_EYHNFT == 8.000 | D_EYHNFT == 9.000)
replace D_FIF = . if (D_FIF == 998.000 | D_FIF == 999.000)
replace D_FMNHR = . if (D_FMNHR == 97 | D_FMNHR == 98 | D_FMNHR == 99)
replace D_FMNYR = . if (D_FMNYR == 99997 | D_FMNYR == 99998 | D_FMNYR == 99999)
replace D_FNGRDX = . if (D_FNGRDX == 8.000 | D_FNGRDX == 9.000)
replace D_FRMPRC = . if (D_FRMPRC == 8.000 | D_FRMPRC == 9.000)
replace D_GED = . if (D_GED == 8.000 | D_GED == 9.000)
replace D_HAZARD = . if (D_HAZARD == 98.000 | D_HAZARD == 99.000)
replace D_HEAT = . if (D_HEAT == 98.000 | D_HEAT == 99.000)
replace D_INFLU = . if (D_INFLU == 998.000 | D_INFLU == 999.000)
replace D_INTELL = . if (D_INTELL == 8.000 | D_INTELL == 9.000)
replace D_MACHPR = . if (D_MACHPR == 998.000 | D_MACHPR == 999.000)
replace D_MCHNPR = . if (D_MCHNPR == 8.000 | D_MCHNPR == 9.000)
replace D_MEN = . if (D_MEN == 9999998 | D_MEN == 9999999)
replace D_MMNHR = . if (D_MMNHR == 97 | D_MMNHR == 98 | D_MMNHR == 99)
replace D_MMNYR = . if (D_MMNYR == 99997 | D_MMNYR == 99998 | D_MMNYR == 99999)
replace D_MNLDXT = . if (D_MNLDXT == 8.000 | D_MNLDXT == 9.000)
replace D_MTRCRD = . if (D_MTRCRD == 8.000 | D_MTRCRD == 9.000)
replace D_MVC = . if (D_MVC == 998.000 | D_MVC == 999.000)
replace D_NOISE = . if (D_NOISE == 998.000 | D_NOISE == 999.000)
replace D_NUMERC = . if (D_NUMERC == 8.000 | D_NUMERC == 9.000)
replace D_OBSPRE = . if (D_OBSPRE == 998.000 | D_OBSPRE == 999.000)
replace D_OUT = . if (D_OUT == 98.000 | D_OUT == 99.000)
replace D_PEOPLE = . if (D_PEOPLE == 98.000 | D_PEOPLE == 99.000)
replace D_PEOPRE = . if (D_PEOPRE == 998.000 | D_PEOPRE == 999.000)
replace D_PHYSDM = . if (D_PHYSDM == 8.000 | D_PHYSDM == 9.000)
replace D_PRODPR = . if (D_PRODPR == 98.000 | D_PRODPR == 99.000)
replace D_PROTPR = . if (D_PROTPR == 8.000 | D_PROTPR == 9.000)
replace D_PRSTPR = . if (D_PRSTPR == 998.000 | D_PRSTPR == 999.000)
replace D_PUS = . if (D_PUS == 98.000 | D_PUS == 99.000)
replace D_REACH = . if (D_REACH == 998.000 | D_REACH == 999.000)
replace D_REPCON = . if (D_REPCON == 998.000 | D_REPCON == 999.000)
replace D_ROUTPR = . if (D_ROUTPR == 998.000 | D_ROUTPR == 999.000)
replace D_SCINPR = . if (D_SCINPR == 998.000 | D_SCINPR == 999.000)
replace D_SEE = . if (D_SEE == 998.000 | D_SEE == 999.000)
replace D_SJC = . if (D_SJC == 998.000 | D_SJC == 999.000)
replace D_SPATIA = . if (D_SPATIA == 8.000 | D_SPATIA == 9.000)
replace D_STOOP = . if (D_STOOP == 998.000 | D_STOOP == 999.000)
replace D_STRGTH = . if (D_STRGTH == 8.000 | D_STRGTH == 9.000)
replace D_STS = . if (D_STS == 998.000 | D_STS == 999.000)
replace D_SVP = . if (D_SVP == 98.000 | D_SVP == 99.000)
replace D_TALK = . if (D_TALK == 998.000 | D_TALK == 999.000)
replace D_THINGS = . if (D_THINGS == 98.000 | D_THINGS == 99.000)
replace D_TRAIN = . if (D_TRAIN == 998.000 | D_TRAIN == 999.000)
replace D_VARCH = . if (D_VARCH == 998.000 | D_VARCH == 999.000)
replace D_VERBAL = . if (D_VERBAL == 8.000 | D_VERBAL == 9.000)
replace D_WET = . if (D_WET == 98.000 | D_WET == 99.000)
replace D_WOMEN = . if (D_WOMEN == 9999998 | D_WOMEN == 9999999)
replace MINDUS_D = . if (MINDUS_D == 7 | MINDUS_D == 8 | MINDUS_D == 9)
replace PROFID_D = . if (PROFID_D == 7 | PROFID_D == 8 | PROFID_D == 9)
replace AGRIC_D = . if (AGRIC_D == 7 | AGRIC_D == 8 | AGRIC_D == 9)
replace CONSTR_D = . if (CONSTR_D == 7 | CONSTR_D == 8 | CONSTR_D == 9)
replace MANUF_D = . if (MANUF_D == 7 | MANUF_D == 8 | MANUF_D == 9)
replace TRANSP_D = . if (TRANSP_D == 7 | TRANSP_D == 8 | TRANSP_D == 9)
replace WHOLE_D = . if (WHOLE_D == 7 | WHOLE_D == 8 | WHOLE_D == 9)
replace RETAIL_D = . if (RETAIL_D == 7 | RETAIL_D == 8 | RETAIL_D == 9)
replace FNANCE_D = . if (FNANCE_D == 7 | FNANCE_D == 8 | FNANCE_D == 9)
replace BUSIN_D = . if (BUSIN_D == 7 | BUSIN_D == 8 | BUSIN_D == 9)
replace PERSON_D = . if (PERSON_D == 7 | PERSON_D == 8 | PERSON_D == 9)
replace ENTERT_D = . if (ENTERT_D == 7 | ENTERT_D == 8 | ENTERT_D == 9)
replace PUBADM_D = . if (PUBADM_D == 7 | PUBADM_D == 8 | PUBADM_D == 9)
replace MOCCUP_D = . if (MOCCUP_D == 7 | MOCCUP_D == 8 | MOCCUP_D == 9)
replace EXEC_D = . if (EXEC_D == 7 | EXEC_D == 8 | EXEC_D == 9)
replace PROFOC_D = . if (PROFOC_D == 7 | PROFOC_D == 8 | PROFOC_D == 9)
replace TECH_D = . if (TECH_D == 7 | TECH_D == 8 | TECH_D == 9)
replace SALES_D = . if (SALES_D == 7 | SALES_D == 8 | SALES_D == 9)
replace ADMIN_D = . if (ADMIN_D == 7 | ADMIN_D == 8 | ADMIN_D == 9)
replace SERV_D = . if (SERV_D == 7 | SERV_D == 8 | SERV_D == 9)
replace FARM_D = . if (FARM_D == 7 | FARM_D == 8 | FARM_D == 9)
replace CRAFT_D = . if (CRAFT_D == 7 | CRAFT_D == 8 | CRAFT_D == 9)
replace OPERAT_D = . if (OPERAT_D == 7 | OPERAT_D == 8 | OPERAT_D == 9)
replace A1PC7 = . if (A1PC7 == 7 | A1PC7 == 8 | A1PC7 == 9)
replace A1PC8 = . if (A1PC8 == 97 | A1PC8 == 98 | A1PC8 == 99)
replace A1PC9 = . if (A1PC9 == 7 | A1PC9 == 8 | A1PC9 == 9)
replace A1PC9A1 = . if (A1PC9A1 == 7 | A1PC9A1 == 8 | A1PC9A1 == 9)
replace A1PC9A2 = . if (A1PC9A2 == 7 | A1PC9A2 == 8 | A1PC9A2 == 9)
replace A1PC9A3 = . if (A1PC9A3 == 7 | A1PC9A3 == 8 | A1PC9A3 == 9)
replace A1PC9A4 = . if (A1PC9A4 == 7 | A1PC9A4 == 8 | A1PC9A4 == 9)
replace A1PC9A5 = . if (A1PC9A5 == 7 | A1PC9A5 == 8 | A1PC9A5 == 9)
replace A1PC11_2 = . if (A1PC11_2 == 7 | A1PC11_2 == 8 | A1PC11_2 == 9)
replace A1PC13_2 = . if (A1PC13_2 == 7 | A1PC13_2 == 8 | A1PC13_2 == 9)
replace A1PINDM = . if (A1PINDM == 997 | A1PINDM == 998 | A1PINDM == 999)
replace A1POCCM = . if (A1POCCM == 997 | A1POCCM == 998 | A1POCCM == 999)
replace A1PTSEIM = . if (A1PTSEIM == 98.00 | A1PTSEIM == 99.00)
replace A1PTEARM = . if (A1PTEARM == 8.000 | A1PTEARM == 9.000)
replace A1PTEDUM = . if (A1PTEDUM == 8.000 | A1PTEDUM == 9.000)
replace A1PFSEIM = . if (A1PFSEIM == 98.000 | A1PFSEIM == 99.000)
replace A1PFEARM = . if (A1PFEARM == 8.000 | A1PFEARM == 9.000)
replace A1PFEDUM = . if (A1PFEDUM == 8.000 | A1PFEDUM == 9.000)
replace A1PMSEIM = . if (A1PMSEIM == 98.00 | A1PMSEIM == 99.00)
replace A1PMEARM = . if (A1PMEARM == 8.000 | A1PMEARM == 9.000)
replace A1PMEDUM = . if (A1PMEDUM == 8.000 | A1PMEDUM == 9.000)
replace M_ABSCRE = . if (M_ABSCRE == 998.000 | M_ABSCRE == 999.000)
replace M_ATMOSP = . if (M_ATMOSP == 98.000 | M_ATMOSP == 99.000)
replace M_BOTH = . if (M_BOTH == 98.000 | M_BOTH == 99.000)
replace M_BUSPR = . if (M_BUSPR == 998.000 | M_BUSPR == 999.000)
replace M_CLERIC = . if (M_CLERIC == 8.000 | M_CLERIC == 9.000)
replace M_CLIMB = . if (M_CLIMB == 98.000 | M_CLIMB == 99.000)
replace M_CLRDIS = . if (M_CLRDIS == 8.000 | M_CLRDIS == 9.000)
replace M_COLD = . if (M_COLD == 98.000 | M_COLD == 99.000)
replace M_COMMDA = . if (M_COMMDA == 998.000 | M_COMMDA == 999.000)
replace M_DATAL = . if (M_DATAL == 8.000 | M_DATAL == 9.000)
replace M_DATAPR = . if (M_DATAPR == 8.000 | M_DATAPR == 9.000)
replace M_DCP = . if (M_DCP == 998.000 | M_DCP == 999.000)
replace M_DEPL = . if (M_DEPL == 998.000 | M_DEPL == 999.000)
replace M_ENVIRO = . if (M_ENVIRO == 8.000 | M_ENVIRO == 9.000)
replace M_EYHNFT = . if (M_EYHNFT == 8.000 | M_EYHNFT == 9.000)
replace M_FIF = . if (M_FIF == 998.000 | M_FIF == 999.000)
replace M_FMNHR = . if (M_FMNHR == 97 | M_FMNHR == 98 | M_FMNHR == 99)
replace M_FMNYR = . if (M_FMNYR == 99997 | M_FMNYR == 99998 | M_FMNYR == 99999)
replace M_FNGRDX = . if (M_FNGRDX == 8.000 | M_FNGRDX == 9.000)
replace M_FRMPRC = . if (M_FRMPRC == 8.000 | M_FRMPRC == 9.000)
replace M_GED = . if (M_GED == 8.000 | M_GED == 9.000)
replace M_HAZARD = . if (M_HAZARD == 98.000 | M_HAZARD == 99.000)
replace M_HEAT = . if (M_HEAT == 98.000 | M_HEAT == 99.000)
replace M_INFLU = . if (M_INFLU == 998.000 | M_INFLU == 999.000)
replace M_INTELL = . if (M_INTELL == 8.000 | M_INTELL == 9.000)
replace M_MACHPR = . if (M_MACHPR == 998.000 | M_MACHPR == 999.000)
replace M_MCHNPR = . if (M_MCHNPR == 8.000 | M_MCHNPR == 9.000)
replace M_MEN = . if (M_MEN == 9999998 | M_MEN == 9999999)
replace M_MMNHR = . if (M_MMNHR == 97 | M_MMNHR == 98 | M_MMNHR == 99)
replace M_MMNYR = . if (M_MMNYR == 99997 | M_MMNYR == 99998 | M_MMNYR == 99999)
replace M_MNLDXT = . if (M_MNLDXT == 8.000 | M_MNLDXT == 9.000)
replace M_MTRCRD = . if (M_MTRCRD == 8.000 | M_MTRCRD == 9.000)
replace M_MVC = . if (M_MVC == 998.000 | M_MVC == 999.000)
replace M_NOISE = . if (M_NOISE == 98.000 | M_NOISE == 99.000)
replace M_NUMERC = . if (M_NUMERC == 8.000 | M_NUMERC == 9.000)
replace M_OBSPRE = . if (M_OBSPRE == 998.000 | M_OBSPRE == 999.000)
replace M_OUT = . if (M_OUT == 98.000 | M_OUT == 99.000)
replace M_PEOPLE = . if (M_PEOPLE == 98.000 | M_PEOPLE == 99.000)
replace M_PEOPRE = . if (M_PEOPRE == 998.000 | M_PEOPRE == 999.000)
replace M_PHYSDM = . if (M_PHYSDM == 8.000 | M_PHYSDM == 9.000)
replace M_PRODPR = . if (M_PRODPR == 98.000 | M_PRODPR == 99.000)
replace M_PROTPR = . if (M_PROTPR == 8.000 | M_PROTPR == 9.000)
replace M_PRSTPR = . if (M_PRSTPR == 998.000 | M_PRSTPR == 999.000)
replace M_PUS = . if (M_PUS == 98.000 | M_PUS == 99.000)
replace M_REACH = . if (M_REACH == 998.000 | M_REACH == 999.000)
replace M_REPCON = . if (M_REPCON == 98.000 | M_REPCON == 99.000)
replace M_ROUTPR = . if (M_ROUTPR == 998.000 | M_ROUTPR == 999.000)
replace M_SCINPR = . if (M_SCINPR == 998.000 | M_SCINPR == 999.000)
replace M_SEE = . if (M_SEE == 998.000 | M_SEE == 999.000)
replace M_SJC = . if (M_SJC == 998.000 | M_SJC == 999.000)
replace M_SPATIA = . if (M_SPATIA == 8.000 | M_SPATIA == 9.000)
replace M_STOOP = . if (M_STOOP == 998.000 | M_STOOP == 999.000)
replace M_STRGTH = . if (M_STRGTH == 8.000 | M_STRGTH == 9.000)
replace M_STS = . if (M_STS == 998.000 | M_STS == 999.000)
replace M_SVP = . if (M_SVP == 98.000 | M_SVP == 99.000)
replace M_TALK = . if (M_TALK == 998.000 | M_TALK == 999.000)
replace M_THINGS = . if (M_THINGS == 98.000 | M_THINGS == 99.000)
replace M_TRAIN = . if (M_TRAIN == 98.000 | M_TRAIN == 99.000)
replace M_VARCH = . if (M_VARCH == 998.000 | M_VARCH == 999.000)
replace M_VERBAL = . if (M_VERBAL == 8.000 | M_VERBAL == 9.000)
replace M_WET = . if (M_WET == 98.000 | M_WET == 99.000)
replace M_WOMEN = . if (M_WOMEN == 9999998 | M_WOMEN == 9999999)
replace MINDUS_M = . if (MINDUS_M == 7 | MINDUS_M == 8 | MINDUS_M == 9)
replace PROFID_M = . if (PROFID_M == 7 | PROFID_M == 8 | PROFID_M == 9)
replace AGRIC_M = . if (AGRIC_M == 7 | AGRIC_M == 8 | AGRIC_M == 9)
replace CONSTR_M = . if (CONSTR_M == 7 | CONSTR_M == 8 | CONSTR_M == 9)
replace MANUF_M = . if (MANUF_M == 7 | MANUF_M == 8 | MANUF_M == 9)
replace TRANSP_M = . if (TRANSP_M == 7 | TRANSP_M == 8 | TRANSP_M == 9)
replace WHOLE_M = . if (WHOLE_M == 7 | WHOLE_M == 8 | WHOLE_M == 9)
replace RETAIL_M = . if (RETAIL_M == 7 | RETAIL_M == 8 | RETAIL_M == 9)
replace FNANCE_M = . if (FNANCE_M == 7 | FNANCE_M == 8 | FNANCE_M == 9)
replace BUSIN_M = . if (BUSIN_M == 7 | BUSIN_M == 8 | BUSIN_M == 9)
replace PERSON_M = . if (PERSON_M == 7 | PERSON_M == 8 | PERSON_M == 9)
replace ENTERT_M = . if (ENTERT_M == 7 | ENTERT_M == 8 | ENTERT_M == 9)
replace PUBADM_M = . if (PUBADM_M == 7 | PUBADM_M == 8 | PUBADM_M == 9)
replace MOCCUP_M = . if (MOCCUP_M == 7 | MOCCUP_M == 8 | MOCCUP_M == 9)
replace EXEC_M = . if (EXEC_M == 7 | EXEC_M == 8 | EXEC_M == 9)
replace PROFOC_M = . if (PROFOC_M == 7 | PROFOC_M == 8 | PROFOC_M == 9)
replace TECH_M = . if (TECH_M == 7 | TECH_M == 8 | TECH_M == 9)
replace SALES_M = . if (SALES_M == 7 | SALES_M == 8 | SALES_M == 9)
replace ADMIN_M = . if (ADMIN_M == 7 | ADMIN_M == 8 | ADMIN_M == 9)
replace SERV_M = . if (SERV_M == 7 | SERV_M == 8 | SERV_M == 9)
replace FARM_M = . if (FARM_M == 7 | FARM_M == 8 | FARM_M == 9)
replace CRAFT_M = . if (CRAFT_M == 7 | CRAFT_M == 8 | CRAFT_M == 9)
replace OPERAT_M = . if (OPERAT_M == 7 | OPERAT_M == 8 | OPERAT_M == 9)
replace A1PC14 = . if (A1PC14 == 7 | A1PC14 == 8 | A1PC14 == 9)
replace A1PC15 = . if (A1PC15 == 7 | A1PC15 == 8 | A1PC15 == 9)
replace A1PD1 = . if (A1PD1 == 7 | A1PD1 == 8 | A1PD1 == 9)
replace A1PD2 = . if (A1PD2 == 7 | A1PD2 == 8 | A1PD2 == 9)
replace A1PD3 = . if (A1PD3 == 7 | A1PD3 == 8 | A1PD3 == 9)
replace A1PD8 = . if (A1PD8 == 7 | A1PD8 == 8 | A1PD8 == 9)
replace A1PD9 = . if (A1PD9 == 7 | A1PD9 == 8 | A1PD9 == 9)
replace A1PD9A = . if (A1PD9A == 7 | A1PD9A == 8 | A1PD9A == 9)
replace A1PD4 = . if (A1PD4 == 7 | A1PD4 == 8 | A1PD4 == 9)
replace A1PD5 = . if (A1PD5 == 7 | A1PD5 == 8 | A1PD5 == 9)
replace A1PD6 = . if (A1PD6 == 7 | A1PD6 == 8 | A1PD6 == 9)
replace A1PD7 = . if (A1PD7 == 7 | A1PD7 == 8 | A1PD7 == 9)
replace A1SA1 = . if (A1SA1 == 97 | A1SA1 == 98 | A1SA1 == 99)
replace A1SA2 = . if (A1SA2 == 97 | A1SA2 == 98 | A1SA2 == 99)
replace A1SHLTCH = . if (A1SHLTCH == 97 | A1SHLTCH == 98 | A1SHLTCH == 99)
replace A1SA3 = . if (A1SA3 == 97 | A1SA3 == 98 | A1SA3 == 99)
replace A1SHLTEX = . if (A1SHLTEX == 97 | A1SHLTEX == 98 | A1SHLTEX == 99)
replace A1SA4 = . if (A1SA4 == 97 | A1SA4 == 98 | A1SA4 == 99)
replace A1SA5 = . if (A1SA5 == 97 | A1SA5 == 98 | A1SA5 == 99)
replace A1SA6A = . if (A1SA6A == 7 | A1SA6A == 8 | A1SA6A == 9)
replace A1SA6B = . if (A1SA6B == 7 | A1SA6B == 8 | A1SA6B == 9)
replace A1SA6C = . if (A1SA6C == 7 | A1SA6C == 8 | A1SA6C == 9)
replace A1SA6D = . if (A1SA6D == 7 | A1SA6D == 8 | A1SA6D == 9)
replace A1SA7A = . if (A1SA7A == 8)
replace A1SA7B = . if (A1SA7B == 8)
replace A1SA7C = . if (A1SA7C == 8)
replace A1SA7D = . if (A1SA7D == 8)
replace A1SA7E = . if (A1SA7E == 8)
replace A1SA7F = . if (A1SA7F == 8)
replace A1SHLOCS = . if (A1SHLOCS == 99.000)
replace A1SHLOCO = . if (A1SHLOCO == 99.0)
replace A1SA8A = . if (A1SA8A == 7 | A1SA8A == 8 | A1SA8A == 9)
replace A1SA8B = . if (A1SA8B == 7 | A1SA8B == 8 | A1SA8B == 9)
replace A1SA8C = . if (A1SA8C == 7 | A1SA8C == 8 | A1SA8C == 9)
replace A1SA8D = . if (A1SA8D == 7 | A1SA8D == 8 | A1SA8D == 9)
replace A1SA8E = . if (A1SA8E == 7 | A1SA8E == 8 | A1SA8E == 9)
replace A1SAMOLI = . if (A1SAMOLI == 9.000)
replace A1SA9A = . if (A1SA9A == 7 | A1SA9A == 8 | A1SA9A == 9)
replace A1SA9B = . if (A1SA9B == 7 | A1SA9B == 8 | A1SA9B == 9)
replace A1SA9C = . if (A1SA9C == 7 | A1SA9C == 8 | A1SA9C == 9)
replace A1SA9D = . if (A1SA9D == 7 | A1SA9D == 8 | A1SA9D == 9)
replace A1SA9E = . if (A1SA9E == 7 | A1SA9E == 8 | A1SA9E == 9)
replace A1SA9F = . if (A1SA9F == 7 | A1SA9F == 8 | A1SA9F == 9)
replace A1SA9G = . if (A1SA9G == 7 | A1SA9G == 8 | A1SA9G == 9)
replace A1SA9H = . if (A1SA9H == 7 | A1SA9H == 8 | A1SA9H == 9)
replace A1SA9I = . if (A1SA9I == 7 | A1SA9I == 8 | A1SA9I == 9)
replace A1SA9J = . if (A1SA9J == 7 | A1SA9J == 8 | A1SA9J == 9)
replace A1SA9K = . if (A1SA9K == 7 | A1SA9K == 8 | A1SA9K == 9)
replace A1SA9L = . if (A1SA9L == 7 | A1SA9L == 8 | A1SA9L == 9)
replace A1SA9M = . if (A1SA9M == 7 | A1SA9M == 8 | A1SA9M == 9)
replace A1SA9N = . if (A1SA9N == 7 | A1SA9N == 8 | A1SA9N == 9)
replace A1SA9O = . if (A1SA9O == 7 | A1SA9O == 8 | A1SA9O == 9)
replace A1SA9P = . if (A1SA9P == 7 | A1SA9P == 8 | A1SA9P == 9)
replace A1SA9Q = . if (A1SA9Q == 7 | A1SA9Q == 8 | A1SA9Q == 9)
replace A1SA9R = . if (A1SA9R == 7 | A1SA9R == 8 | A1SA9R == 9)
replace A1SA9S = . if (A1SA9S == 7 | A1SA9S == 8 | A1SA9S == 9)
replace A1SA9T = . if (A1SA9T == 7 | A1SA9T == 8 | A1SA9T == 9)
replace A1SA9U = . if (A1SA9U == 7 | A1SA9U == 8 | A1SA9U == 9)
replace A1SA9V = . if (A1SA9V == 7 | A1SA9V == 8 | A1SA9V == 9)
replace A1SA9W = . if (A1SA9W == 7 | A1SA9W == 8 | A1SA9W == 9)
replace A1SA9X = . if (A1SA9X == 7 | A1SA9X == 8 | A1SA9X == 9)
replace A1SA9Y = . if (A1SA9Y == 7 | A1SA9Y == 8 | A1SA9Y == 9)
replace A1SA9Z = . if (A1SA9Z == 7 | A1SA9Z == 8 | A1SA9Z == 9)
replace A1SA9AA = . if (A1SA9AA == 7 | A1SA9AA == 8 | A1SA9AA == 9)
replace A1SA9BB = . if (A1SA9BB == 7 | A1SA9BB == 8 | A1SA9BB == 9)
replace A1SA9CC = . if (A1SA9CC == 7 | A1SA9CC == 8 | A1SA9CC == 9)
replace A1SCHRON = . if (A1SCHRON == 97 | A1SCHRON == 98 | A1SCHRON == 99)
replace A1SCHROX = . if (A1SCHROX == 9)
replace A1SA10A = . if (A1SA10A == 7 | A1SA10A == 8 | A1SA10A == 9)
replace A1SA10B = . if (A1SA10B == 7 | A1SA10B == 8 | A1SA10B == 9)
replace A1SA10C = . if (A1SA10C == 7 | A1SA10C == 8 | A1SA10C == 9)
replace A1SA10D = . if (A1SA10D == 7 | A1SA10D == 8 | A1SA10D == 9)
replace A1SA10E = . if (A1SA10E == 7 | A1SA10E == 8 | A1SA10E == 9)
replace A1SA10F = . if (A1SA10F == 7 | A1SA10F == 8 | A1SA10F == 9)
replace A1SA10G = . if (A1SA10G == 7 | A1SA10G == 8 | A1SA10G == 9)
replace A1SA10H = . if (A1SA10H == 7 | A1SA10H == 8 | A1SA10H == 9)
replace A1SA10I = . if (A1SA10I == 7 | A1SA10I == 8 | A1SA10I == 9)
replace A1SA10J = . if (A1SA10J == 7 | A1SA10J == 8 | A1SA10J == 9)
replace A1SA10K = . if (A1SA10K == 7 | A1SA10K == 8 | A1SA10K == 9)
replace A1SRXMED = . if (A1SRXMED == 99)
replace A1SRXMEX = . if (A1SRXMEX == 9)
replace A1SA11A = . if (A1SA11A == 7 | A1SA11A == 8 | A1SA11A == 9)
replace A1SA11B = . if (A1SA11B == 7 | A1SA11B == 8 | A1SA11B == 9)
replace A1SA11C = . if (A1SA11C == 7 | A1SA11C == 8 | A1SA11C == 9)
replace A1SA11D = . if (A1SA11D == 7 | A1SA11D == 8 | A1SA11D == 9)
replace A1SA11E = . if (A1SA11E == 7 | A1SA11E == 8 | A1SA11E == 9)
replace A1SVITAM = . if (A1SVITAM == 7 | A1SVITAM == 8 | A1SVITAM == 9)
replace A1SA12A = . if (A1SA12A == 7 | A1SA12A == 8 | A1SA12A == 9)
replace A1SA12B = . if (A1SA12B == 7 | A1SA12B == 8 | A1SA12B == 9)
replace A1SA12C = . if (A1SA12C == 7 | A1SA12C == 8 | A1SA12C == 9)
replace A1SA12D = . if (A1SA12D == 7 | A1SA12D == 8 | A1SA12D == 9)
replace A1SA12E = . if (A1SA12E == 7 | A1SA12E == 8 | A1SA12E == 9)
replace A1SA12F = . if (A1SA12F == 7 | A1SA12F == 8 | A1SA12F == 9)
replace A1SA12G = . if (A1SA12G == 7 | A1SA12G == 8 | A1SA12G == 9)
replace A1SA12H = . if (A1SA12H == 7 | A1SA12H == 8 | A1SA12H == 9)
replace A1SA12I = . if (A1SA12I == 7 | A1SA12I == 8 | A1SA12I == 9)
replace A1SSYMPT = . if (A1SSYMPT == 99.000)
replace A1SA13A = . if (A1SA13A == 7 | A1SA13A == 8 | A1SA13A == 9)
replace A1SA13B = . if (A1SA13B == 7 | A1SA13B == 8 | A1SA13B == 9)
replace A1SA13C = . if (A1SA13C == 7 | A1SA13C == 8 | A1SA13C == 9)
replace A1SA13D = . if (A1SA13D == 7 | A1SA13D == 8 | A1SA13D == 9)
replace A1SA13E = . if (A1SA13E == 7 | A1SA13E == 8 | A1SA13E == 9)
replace A1SA13F = . if (A1SA13F == 7 | A1SA13F == 8 | A1SA13F == 9)
replace A1SNEGAF = . if (A1SNEGAF == 9.000)
replace A1SA14 = . if (A1SA14 == 97 | A1SA14 == 98 | A1SA14 == 99)
replace A1SA15A = . if (A1SA15A == 7 | A1SA15A == 8 | A1SA15A == 9)
replace A1SA15B = . if (A1SA15B == 7 | A1SA15B == 8 | A1SA15B == 9)
replace A1SA15C = . if (A1SA15C == 7 | A1SA15C == 8 | A1SA15C == 9)
replace A1SA15D = . if (A1SA15D == 7 | A1SA15D == 8 | A1SA15D == 9)
replace A1SA15E = . if (A1SA15E == 7 | A1SA15E == 8 | A1SA15E == 9)
replace A1SA15F = . if (A1SA15F == 7 | A1SA15F == 8 | A1SA15F == 9)
replace A1SPOSAF = . if (A1SPOSAF == 9.000)
replace A1SA16 = . if (A1SA16 == 97 | A1SA16 == 98 | A1SA16 == 99)
replace A1SA17A = . if (A1SA17A == 7 | A1SA17A == 8 | A1SA17A == 9)
replace A1SA17B = . if (A1SA17B == 7 | A1SA17B == 8 | A1SA17B == 9)
replace A1SA17C = . if (A1SA17C == 7 | A1SA17C == 8 | A1SA17C == 9)
replace A1SA17D = . if (A1SA17D == 7 | A1SA17D == 8 | A1SA17D == 9)
replace A1SA17E = . if (A1SA17E == 7 | A1SA17E == 8 | A1SA17E == 9)
replace A1SA17F = . if (A1SA17F == 7 | A1SA17F == 8 | A1SA17F == 9)
replace A1SA17G = . if (A1SA17G == 7 | A1SA17G == 8 | A1SA17G == 9)
replace A1SA17H = . if (A1SA17H == 7 | A1SA17H == 8 | A1SA17H == 9)
replace A1SA17I = . if (A1SA17I == 7 | A1SA17I == 8 | A1SA17I == 9)
replace A1SBADL = . if (A1SBADL == 9.0)
replace A1SIADL = . if (A1SIADL == 9.000)
replace A1SA18 = . if (A1SA18 == 7 | A1SA18 == 8 | A1SA18 == 9)
replace A1SA19 = . if (A1SA19 == 7 | A1SA19 == 8 | A1SA19 == 9)
replace A1SVIGOR = . if (A1SVIGOR == 99.00)
replace A1SA20 = . if (A1SA20 == 7 | A1SA20 == 8 | A1SA20 == 9)
replace A1SA21 = . if (A1SA21 == 7 | A1SA21 == 8 | A1SA21 == 9)
replace A1SMODER = . if (A1SMODER == 99.00)
replace A1SA22A = . if (A1SA22A == 7 | A1SA22A == 8 | A1SA22A == 9)
replace A1SA22B = . if (A1SA22B == 7 | A1SA22B == 8 | A1SA22B == 9)
replace A1SA22C = . if (A1SA22C == 7 | A1SA22C == 8 | A1SA22C == 9)
replace A1SA22D = . if (A1SA22D == 7 | A1SA22D == 8 | A1SA22D == 9)
replace A1SDYSPN = . if (A1SDYSPN == 7 | A1SDYSPN == 8 | A1SDYSPN == 9)
replace A1SA23 = . if (A1SA23 == 98.00)
replace A1SA24 = . if (A1SA24 == 98.00)
replace A1SWSTHI = . if (A1SWSTHI == 9.000)
replace A1SA25 = . if (A1SA25 == 998.00)
replace A1SA26 = . if (A1SA26 == 7 | A1SA26 == 8 | A1SA26 == 9)
replace A1SA27 = . if (A1SA27 == 997 | A1SA27 == 998 | A1SA27 == 999)
replace A1SBMI = . if (A1SBMI == 99.000)
replace A1SA28 = . if (A1SA28 == 997 | A1SA28 == 998 | A1SA28 == 999)
replace A1SA29 = . if (A1SA29 == 997 | A1SA29 == 998 | A1SA29 == 999)
replace A1SA30A = . if (A1SA30A == 7 | A1SA30A == 8 | A1SA30A == 9)
replace A1SA30B = . if (A1SA30B == 7 | A1SA30B == 8 | A1SA30B == 9)
replace A1SA30C = . if (A1SA30C == 7 | A1SA30C == 8 | A1SA30C == 9)
replace A1SA31 = . if (A1SA31 == 997 | A1SA31 == 998 | A1SA31 == 999)
replace A1SA32 = . if (A1SA32 == 7 | A1SA32 == 8 | A1SA32 == 9)
replace A1SA32A = . if (A1SA32A == 97 | A1SA32A == 98 | A1SA32A == 99)
replace A1SA33 = . if (A1SA33 == 97 | A1SA33 == 98 | A1SA33 == 99)
replace A1SA33A = . if (A1SA33A == 97 | A1SA33A == 98 | A1SA33A == 99)
replace A1SA34 = . if (A1SA34 == 7 | A1SA34 == 8 | A1SA34 == 9)
replace A1SA35 = . if (A1SA35 == 7 | A1SA35 == 8 | A1SA35 == 9)
replace A1SA36A = . if (A1SA36A == 97 | A1SA36A == 98 | A1SA36A == 99)
replace A1SA36B = . if (A1SA36B == 97 | A1SA36B == 98 | A1SA36B == 99)
replace A1SA36C = . if (A1SA36C == 997 | A1SA36C == 998 | A1SA36C == 999)
replace A1SA36D = . if (A1SA36D == 97 | A1SA36D == 98 | A1SA36D == 99)
replace A1SUSEMD = . if (A1SUSEMD == 997 | A1SUSEMD == 998 | A1SUSEMD == 999)
replace A1SA37A = . if (A1SA37A == 997 | A1SA37A == 998 | A1SA37A == 999)
replace A1SA37B = . if (A1SA37B == 97 | A1SA37B == 98 | A1SA37B == 99)
replace A1SA37C = . if (A1SA37C == 997 | A1SA37C == 998 | A1SA37C == 999)
replace A1SA37D = . if (A1SA37D == 997 | A1SA37D == 998 | A1SA37D == 999)
replace A1SUSEMH = . if (A1SUSEMH == 997 | A1SUSEMH == 998 | A1SUSEMH == 999)
replace A1SA38A = . if (A1SA38A == 7 | A1SA38A == 8 | A1SA38A == 9)
replace A1SA38AY = . if (A1SA38AY == 97 | A1SA38AY == 98 | A1SA38AY == 99)
replace A1SA38AZ = . if (A1SA38AZ == 997 | A1SA38AZ == 998 | A1SA38AZ == 999)
replace A1SA38B = . if (A1SA38B == 7 | A1SA38B == 8 | A1SA38B == 9)
replace A1SA38BY = . if (A1SA38BY == 97 | A1SA38BY == 98 | A1SA38BY == 99)
replace A1SA38BZ = . if (A1SA38BZ == 97 | A1SA38BZ == 98 | A1SA38BZ == 99)
replace A1SA38C = . if (A1SA38C == 7 | A1SA38C == 8 | A1SA38C == 9)
replace A1SA38CY = . if (A1SA38CY == 97 | A1SA38CY == 98 | A1SA38CY == 99)
replace A1SA38CZ = . if (A1SA38CZ == 97 | A1SA38CZ == 98 | A1SA38CZ == 99)
replace A1SA38D = . if (A1SA38D == 7 | A1SA38D == 8 | A1SA38D == 9)
replace A1SA38DY = . if (A1SA38DY == 97 | A1SA38DY == 98 | A1SA38DY == 99)
replace A1SA38DZ = . if (A1SA38DZ == 97 | A1SA38DZ == 98 | A1SA38DZ == 99)
replace A1SA38E = . if (A1SA38E == 7 | A1SA38E == 8 | A1SA38E == 9)
replace A1SA38EY = . if (A1SA38EY == 97 | A1SA38EY == 98 | A1SA38EY == 99)
replace A1SA38EZ = . if (A1SA38EZ == 97 | A1SA38EZ == 98 | A1SA38EZ == 99)
replace A1SA38F = . if (A1SA38F == 7 | A1SA38F == 8 | A1SA38F == 9)
replace A1SA38FY = . if (A1SA38FY == 97 | A1SA38FY == 98 | A1SA38FY == 99)
replace A1SA38FZ = . if (A1SA38FZ == 97 | A1SA38FZ == 98 | A1SA38FZ == 99)
replace A1SA38G = . if (A1SA38G == 7 | A1SA38G == 8 | A1SA38G == 9)
replace A1SA38GY = . if (A1SA38GY == 97 | A1SA38GY == 98 | A1SA38GY == 99)
replace A1SA38GZ = . if (A1SA38GZ == 97 | A1SA38GZ == 98 | A1SA38GZ == 99)
replace A1SA38H = . if (A1SA38H == 7 | A1SA38H == 8 | A1SA38H == 9)
replace A1SA38HY = . if (A1SA38HY == 97 | A1SA38HY == 98 | A1SA38HY == 99)
replace A1SA38HZ = . if (A1SA38HZ == 97 | A1SA38HZ == 98 | A1SA38HZ == 99)
replace A1SA38I = . if (A1SA38I == 7 | A1SA38I == 8 | A1SA38I == 9)
replace A1SA38IY = . if (A1SA38IY == 97 | A1SA38IY == 98 | A1SA38IY == 99)
replace A1SA38IZ = . if (A1SA38IZ == 98 | A1SA38IZ == 99)
replace A1SA38J = . if (A1SA38J == 7 | A1SA38J == 8 | A1SA38J == 9)
replace A1SA38JY = . if (A1SA38JY == 97 | A1SA38JY == 98 | A1SA38JY == 99)
replace A1SA38JZ = . if (A1SA38JZ == 997 | A1SA38JZ == 998 | A1SA38JZ == 999)
replace A1SA38K = . if (A1SA38K == 7 | A1SA38K == 8 | A1SA38K == 9)
replace A1SA38KY = . if (A1SA38KY == 97 | A1SA38KY == 98 | A1SA38KY == 99)
replace A1SA38KZ = . if (A1SA38KZ == 997 | A1SA38KZ == 998 | A1SA38KZ == 999)
replace A1SA39A = . if (A1SA39A == 7 | A1SA39A == 8 | A1SA39A == 9)
replace A1SA39B = . if (A1SA39B == 7 | A1SA39B == 8 | A1SA39B == 9)
replace A1SA39C = . if (A1SA39C == 7 | A1SA39C == 8 | A1SA39C == 9)
replace A1SA39D = . if (A1SA39D == 7 | A1SA39D == 8 | A1SA39D == 9)
replace A1SA39E = . if (A1SA39E == 7 | A1SA39E == 8 | A1SA39E == 9)
replace A1SA39F = . if (A1SA39F == 7 | A1SA39F == 8 | A1SA39F == 9)
replace A1SA39G = . if (A1SA39G == 7 | A1SA39G == 8 | A1SA39G == 9)
replace A1SA39H = . if (A1SA39H == 7 | A1SA39H == 8 | A1SA39H == 9)
replace A1SA39I = . if (A1SA39I == 7 | A1SA39I == 8 | A1SA39I == 9)
replace A1SA39J = . if (A1SA39J == 7 | A1SA39J == 8 | A1SA39J == 9)
replace A1SA39K = . if (A1SA39K == 7 | A1SA39K == 8 | A1SA39K == 9)
replace A1SA39L = . if (A1SA39L == 7 | A1SA39L == 8 | A1SA39L == 9)
replace A1SA39M = . if (A1SA39M == 7 | A1SA39M == 8 | A1SA39M == 9)
replace A1SA39N = . if (A1SA39N == 7 | A1SA39N == 8 | A1SA39N == 9)
replace A1SA39O = . if (A1SA39O == 7 | A1SA39O == 8 | A1SA39O == 9)
replace A1SA39P = . if (A1SA39P == 7 | A1SA39P == 8 | A1SA39P == 9)
replace A1SALTER = . if (A1SALTER == 7 | A1SALTER == 8 | A1SALTER == 9)
replace A1SA40A = . if (A1SA40A == 7 | A1SA40A == 8 | A1SA40A == 9)
replace A1SA40B = . if (A1SA40B == 7 | A1SA40B == 8 | A1SA40B == 9)
replace A1SA40C = . if (A1SA40C == 7 | A1SA40C == 8 | A1SA40C == 9)
replace A1SA40D = . if (A1SA40D == 7 | A1SA40D == 8 | A1SA40D == 9)
replace A1SA40E = . if (A1SA40E == 7 | A1SA40E == 8 | A1SA40E == 9)
replace A1SA40F = . if (A1SA40F == 7 | A1SA40F == 8 | A1SA40F == 9)
replace A1SA40G = . if (A1SA40G == 7 | A1SA40G == 8 | A1SA40G == 9)
replace A1SA40H = . if (A1SA40H == 7 | A1SA40H == 8 | A1SA40H == 9)
replace A1SA40I = . if (A1SA40I == 7 | A1SA40I == 8 | A1SA40I == 9)
replace A1SA40J = . if (A1SA40J == 7 | A1SA40J == 8 | A1SA40J == 9)
replace A1SA41 = . if (A1SA41 == 7 | A1SA41 == 8 | A1SA41 == 9)
replace A1SA42 = . if (A1SA42 == 7 | A1SA42 == 8 | A1SA42 == 9)
replace A1SA43A = . if (A1SA43A == 7 | A1SA43A == 8 | A1SA43A == 9)
replace A1SA43B = . if (A1SA43B == 7 | A1SA43B == 8 | A1SA43B == 9)
replace A1SA43C = . if (A1SA43C == 7 | A1SA43C == 8 | A1SA43C == 9)
replace A1SA43D = . if (A1SA43D == 7 | A1SA43D == 8 | A1SA43D == 9)
replace A1SA43E = . if (A1SA43E == 7 | A1SA43E == 8 | A1SA43E == 9)
replace A1SA44A = . if (A1SA44A == 7 | A1SA44A == 8 | A1SA44A == 9)
replace A1SA44B = . if (A1SA44B == 7 | A1SA44B == 8 | A1SA44B == 9)
replace A1SA44C = . if (A1SA44C == 7 | A1SA44C == 8 | A1SA44C == 9)
replace A1SA44D = . if (A1SA44D == 7 | A1SA44D == 8 | A1SA44D == 9)
replace A1SA44E = . if (A1SA44E == 7 | A1SA44E == 8 | A1SA44E == 9)
replace A1SA45 = . if (A1SA45 == 7 | A1SA45 == 8 | A1SA45 == 9)
replace A1SA46 = . if (A1SA46 == 7 | A1SA46 == 8 | A1SA46 == 9)
replace SKIP_SB1 = . if (SKIP_SB1 == 7 | SKIP_SB1 == 8 | SKIP_SB1 == 9)
replace A1SB1 = . if (A1SB1 == 97 | A1SB1 == 98 | A1SB1 == 99)
replace A1SB2 = . if (A1SB2 == 7 | A1SB2 == 8 | A1SB2 == 9)
replace A1SB3 = . if (A1SB3 == 7 | A1SB3 == 8 | A1SB3 == 9)
replace A1SB4 = . if (A1SB4 == 7 | A1SB4 == 8 | A1SB4 == 9)
replace A1SB5A = . if (A1SB5A == 7 | A1SB5A == 8 | A1SB5A == 9)
replace A1SB5B = . if (A1SB5B == 7 | A1SB5B == 8 | A1SB5B == 9)
replace A1SB5C = . if (A1SB5C == 7 | A1SB5C == 8 | A1SB5C == 9)
replace A1SB6 = . if (A1SB6 == 7 | A1SB6 == 8 | A1SB6 == 9)
replace A1SB6A = . if (A1SB6A == 97 | A1SB6A == 98 | A1SB6A == 99)
replace A1SB6B = . if (A1SB6B == 7 | A1SB6B == 8 | A1SB6B == 9)
replace A1SB6C = . if (A1SB6C == 97 | A1SB6C == 98 | A1SB6C == 99)
replace A1SB7A1 = . if (A1SB7A1 == 7 | A1SB7A1 == 8 | A1SB7A1 == 9)
replace A1SB7A2 = . if (A1SB7A2 == 97 | A1SB7A2 == 98 | A1SB7A2 == 99)
replace A1SB7B1 = . if (A1SB7B1 == 7 | A1SB7B1 == 8 | A1SB7B1 == 9)
replace A1SB7B2 = . if (A1SB7B2 == 97 | A1SB7B2 == 98 | A1SB7B2 == 99)
replace A1SB7C1 = . if (A1SB7C1 == 7 | A1SB7C1 == 8 | A1SB7C1 == 9)
replace A1SB7C2 = . if (A1SB7C2 == 97 | A1SB7C2 == 98 | A1SB7C2 == 99)
replace A1SB7D1 = . if (A1SB7D1 == 7 | A1SB7D1 == 8 | A1SB7D1 == 9)
replace A1SB7D2 = . if (A1SB7D2 == 97 | A1SB7D2 == 98 | A1SB7D2 == 99)
replace A1SB7E1 = . if (A1SB7E1 == 7 | A1SB7E1 == 8 | A1SB7E1 == 9)
replace A1SB7E2 = . if (A1SB7E2 == 97 | A1SB7E2 == 98 | A1SB7E2 == 99)
replace A1SB7F1 = . if (A1SB7F1 == 7 | A1SB7F1 == 8 | A1SB7F1 == 9)
replace A1SB7F2 = . if (A1SB7F2 == 97 | A1SB7F2 == 98 | A1SB7F2 == 99)
replace A1SB8A = . if (A1SB8A == 7 | A1SB8A == 8 | A1SB8A == 9)
replace A1SB8B = . if (A1SB8B == 7 | A1SB8B == 8 | A1SB8B == 9)
replace A1SB8C = . if (A1SB8C == 7 | A1SB8C == 8 | A1SB8C == 9)
replace A1SB9 = . if (A1SB9 == 7 | A1SB9 == 8 | A1SB9 == 9)
replace A1SB9A = . if (A1SB9A == 97 | A1SB9A == 98 | A1SB9A == 99)
replace A1SB10 = . if (A1SB10 == 7 | A1SB10 == 8 | A1SB10 == 9)
replace A1SB10A = . if (A1SB10A == 7 | A1SB10A == 8 | A1SB10A == 9)
replace A1SB10B = . if (A1SB10B == 7 | A1SB10B == 8 | A1SB10B == 9)
replace A1SB10C = . if (A1SB10C == 7 | A1SB10C == 8 | A1SB10C == 9)
replace A1SC1A = . if (A1SC1A == 7 | A1SC1A == 8 | A1SC1A == 9)
replace A1SC1B = . if (A1SC1B == 7 | A1SC1B == 8 | A1SC1B == 9)
replace A1SC1C = . if (A1SC1C == 7 | A1SC1C == 8 | A1SC1C == 9)
replace A1SC1D = . if (A1SC1D == 7 | A1SC1D == 8 | A1SC1D == 9)
replace A1SC1E = . if (A1SC1E == 7 | A1SC1E == 8 | A1SC1E == 9)
replace A1SC1F = . if (A1SC1F == 7 | A1SC1F == 8 | A1SC1F == 9)
replace A1SC1G = . if (A1SC1G == 7 | A1SC1G == 8 | A1SC1G == 9)
replace A1SC1H = . if (A1SC1H == 7 | A1SC1H == 8 | A1SC1H == 9)
replace A1SC2 = . if (A1SC2 == 7 | A1SC2 == 8 | A1SC2 == 9)
replace A1SC3A = . if (A1SC3A == 7 | A1SC3A == 8 | A1SC3A == 9)
replace A1SC3B = . if (A1SC3B == 7 | A1SC3B == 8 | A1SC3B == 9)
replace A1SC3C = . if (A1SC3C == 7 | A1SC3C == 8 | A1SC3C == 9)
replace A1SC3D = . if (A1SC3D == 7 | A1SC3D == 8 | A1SC3D == 9)
replace A1SC4A = . if (A1SC4A == 7 | A1SC4A == 8 | A1SC4A == 9)
replace A1SC4B = . if (A1SC4B == 7 | A1SC4B == 8 | A1SC4B == 9)
replace A1SC4C = . if (A1SC4C == 7 | A1SC4C == 8 | A1SC4C == 9)
replace SKIP_SC5 = . if (SKIP_SC5 == 7 | SKIP_SC5 == 8 | SKIP_SC5 == 9)
replace A1SC5A = . if (A1SC5A == 7 | A1SC5A == 8 | A1SC5A == 9)
replace A1SC5B = . if (A1SC5B == 7 | A1SC5B == 8 | A1SC5B == 9)
replace A1SC5C = . if (A1SC5C == 7 | A1SC5C == 8 | A1SC5C == 9)
replace A1SC5D = . if (A1SC5D == 7 | A1SC5D == 8 | A1SC5D == 9)
replace A1SC5E = . if (A1SC5E == 7 | A1SC5E == 8 | A1SC5E == 9)
replace A1SC5F = . if (A1SC5F == 7 | A1SC5F == 8 | A1SC5F == 9)
replace A1SC5G = . if (A1SC5G == 7 | A1SC5G == 8 | A1SC5G == 9)
replace A1SC5H = . if (A1SC5H == 7 | A1SC5H == 8 | A1SC5H == 9)
replace A1SC6 = . if (A1SC6 == 7 | A1SC6 == 8 | A1SC6 == 9)
replace A1SD1 = . if (A1SD1 == 7 | A1SD1 == 8 | A1SD1 == 9)
replace A1SD2 = . if (A1SD2 == 7 | A1SD2 == 8 | A1SD2 == 9)
replace A1SD2A = . if (A1SD2A == 997 | A1SD2A == 998 | A1SD2A == 999)
replace A1SD2B = . if (A1SD2B == 7 | A1SD2B == 8 | A1SD2B == 9)
replace A1SD2C = . if (A1SD2C == 97 | A1SD2C == 98 | A1SD2C == 99)
replace A1SD2D = . if (A1SD2D == 997 | A1SD2D == 998 | A1SD2D == 999)
replace A1SD3 = . if (A1SD3 == 7 | A1SD3 == 8 | A1SD3 == 9)
replace A1SD4 = . if (A1SD4 == 7 | A1SD4 == 8 | A1SD4 == 9)
replace A1SD4A = . if (A1SD4A == 997 | A1SD4A == 998 | A1SD4A == 999)
replace A1SD4B = . if (A1SD4B == 7 | A1SD4B == 8 | A1SD4B == 9)
replace A1SD4C = . if (A1SD4C == 97 | A1SD4C == 98 | A1SD4C == 99)
replace A1SD4D = . if (A1SD4D == 997 | A1SD4D == 998 | A1SD4D == 999)
replace A1SE2 = . if (A1SE2 == 7 | A1SE2 == 8 | A1SE2 == 9)
replace A1SE3 = . if (A1SE3 == 7 | A1SE3 == 8 | A1SE3 == 9)
replace A1SE4 = . if (A1SE4 == 7 | A1SE4 == 8 | A1SE4 == 9)
replace A1SE5 = . if (A1SE5 == 7 | A1SE5 == 8 | A1SE5 == 9)
replace A1SE6 = . if (A1SE6 == 7 | A1SE6 == 8 | A1SE6 == 9)
replace A1SE7 = . if (A1SE7 == 7 | A1SE7 == 8 | A1SE7 == 9)
replace A1SE8 = . if (A1SE8 == 97 | A1SE8 == 98 | A1SE8 == 99)
replace A1SE9 = . if (A1SE9 == 98)
replace A1SE10 = . if (A1SE10 == 97 | A1SE10 == 98)
replace A1SE11 = . if (A1SE11 == 7 | A1SE11 == 8 | A1SE11 == 9)
replace A1SE12 = . if (A1SE12 == 7 | A1SE12 == 8 | A1SE12 == 9)
replace SKIP_E13 = . if (SKIP_E13 == 7 | SKIP_E13 == 8 | SKIP_E13 == 9)
replace A1SE13 = . if (A1SE13 == 7 | A1SE13 == 8 | A1SE13 == 9)
replace A1SE14A = . if (A1SE14A == 7 | A1SE14A == 8 | A1SE14A == 9)
replace A1SE14B = . if (A1SE14B == 7 | A1SE14B == 8 | A1SE14B == 9)
replace A1SE14C = . if (A1SE14C == 7 | A1SE14C == 8 | A1SE14C == 9)
replace A1SE14D = . if (A1SE14D == 7 | A1SE14D == 8 | A1SE14D == 9)
replace A1SE14E = . if (A1SE14E == 7 | A1SE14E == 8 | A1SE14E == 9)
replace A1SE14F = . if (A1SE14F == 7 | A1SE14F == 8 | A1SE14F == 9)
replace A1SE14G = . if (A1SE14G == 7 | A1SE14G == 8 | A1SE14G == 9)
replace A1SE14H = . if (A1SE14H == 7 | A1SE14H == 8 | A1SE14H == 9)
replace A1SE14I = . if (A1SE14I == 7 | A1SE14I == 8 | A1SE14I == 9)
replace A1SE14J = . if (A1SE14J == 7 | A1SE14J == 8 | A1SE14J == 9)
replace A1SE14K = . if (A1SE14K == 7 | A1SE14K == 8 | A1SE14K == 9)
replace A1SE14L = . if (A1SE14L == 7 | A1SE14L == 8 | A1SE14L == 9)
replace A1SE14M = . if (A1SE14M == 7 | A1SE14M == 8 | A1SE14M == 9)
replace A1SEMA = . if (A1SEMA == 9.000)
replace A1SEMD = . if (A1SEMD == 9.000)
replace A1SMMOD = . if (A1SMMOD == 9.0)
replace A1SE15 = . if (A1SE15 == 7 | A1SE15 == 8 | A1SE15 == 9)
replace A1SE16A = . if (A1SE16A == 7 | A1SE16A == 8 | A1SE16A == 9)
replace A1SE16B = . if (A1SE16B == 7 | A1SE16B == 8 | A1SE16B == 9)
replace A1SE16C = . if (A1SE16C == 7 | A1SE16C == 8 | A1SE16C == 9)
replace A1SE16D = . if (A1SE16D == 7 | A1SE16D == 8 | A1SE16D == 9)
replace A1SE16E = . if (A1SE16E == 7 | A1SE16E == 8 | A1SE16E == 9)
replace A1SE16F = . if (A1SE16F == 7 | A1SE16F == 8 | A1SE16F == 9)
replace A1SE16G = . if (A1SE16G == 7 | A1SE16G == 8 | A1SE16G == 9)
replace A1SE16H = . if (A1SE16H == 7 | A1SE16H == 8 | A1SE16H == 9)
replace A1SE16I = . if (A1SE16I == 7 | A1SE16I == 8 | A1SE16I == 9)
replace A1SE16J = . if (A1SE16J == 7 | A1SE16J == 8 | A1SE16J == 9)
replace A1SE16K = . if (A1SE16K == 7 | A1SE16K == 8 | A1SE16K == 9)
replace A1SE16L = . if (A1SE16L == 7 | A1SE16L == 8 | A1SE16L == 9)
replace A1SE16M = . if (A1SE16M == 7 | A1SE16M == 8 | A1SE16M == 9)
replace A1SEFA = . if (A1SEFA == 9.000)
replace A1SEFD = . if (A1SEFD == 9.000)
replace A1SEFMOD = . if (A1SEFMOD == 9.0)
replace A1SEMAPA = . if (A1SEMAPA == 9.000)
replace A1SE17A = . if (A1SE17A == 7 | A1SE17A == 8 | A1SE17A == 9)
replace A1SE17B = . if (A1SE17B == 7 | A1SE17B == 8 | A1SE17B == 9)
replace A1SE17C = . if (A1SE17C == 7 | A1SE17C == 8 | A1SE17C == 9)
replace A1SE17D = . if (A1SE17D == 7 | A1SE17D == 8 | A1SE17D == 9)
replace A1SE17E = . if (A1SE17E == 7 | A1SE17E == 8 | A1SE17E == 9)
replace A1SE17F = . if (A1SE17F == 7 | A1SE17F == 8 | A1SE17F == 9)
replace A1SE17G = . if (A1SE17G == 7 | A1SE17G == 8 | A1SE17G == 9)
replace A1SE17H = . if (A1SE17H == 7 | A1SE17H == 8 | A1SE17H == 9)
replace A1SE17I = . if (A1SE17I == 7 | A1SE17I == 8 | A1SE17I == 9)
replace A1SE17J = . if (A1SE17J == 7 | A1SE17J == 8 | A1SE17J == 9)
replace A1SE17K = . if (A1SE17K == 7 | A1SE17K == 8 | A1SE17K == 9)
replace A1SE17L = . if (A1SE17L == 7 | A1SE17L == 8 | A1SE17L == 9)
replace A1SE17M = . if (A1SE17M == 7 | A1SE17M == 8 | A1SE17M == 9)
replace A1SE17N = . if (A1SE17N == 7 | A1SE17N == 8 | A1SE17N == 9)
replace A1SE17O = . if (A1SE17O == 7 | A1SE17O == 8 | A1SE17O == 9)
replace A1SE18A = . if (A1SE18A == 97 | A1SE18A == 98 | A1SE18A == 99)
replace A1SE18B = . if (A1SE18B == 97 | A1SE18B == 98 | A1SE18B == 99)
replace A1SE18C = . if (A1SE18C == 7 | A1SE18C == 8 | A1SE18C == 9)
replace A1SE19A = . if (A1SE19A == 97 | A1SE19A == 98 | A1SE19A == 99)
replace A1SE19B = . if (A1SE19B == 97 | A1SE19B == 98 | A1SE19B == 99)
replace A1SE19C = . if (A1SE19C == 7 | A1SE19C == 8 | A1SE19C == 9)
replace A1SF1A = . if (A1SF1A == 8)
replace A1SF1B = . if (A1SF1B == 8)
replace A1SF1C = . if (A1SF1C == 8)
replace A1SF1D = . if (A1SF1D == 8)
replace A1SF1E = . if (A1SF1E == 8)
replace A1SF1F = . if (A1SF1F == 8)
replace A1SF1G = . if (A1SF1G == 8)
replace A1SF1H = . if (A1SF1H == 8)
replace A1SF1I = . if (A1SF1I == 8)
replace A1SF1J = . if (A1SF1J == 8)
replace A1SF1K = . if (A1SF1K == 8)
replace A1SF1L = . if (A1SF1L == 8)
replace A1SF1M = . if (A1SF1M == 8)
replace A1SF1N = . if (A1SF1N == 8)
replace A1SF1O = . if (A1SF1O == 8)
replace A1SF1P = . if (A1SF1P == 8)
replace A1SF1Q = . if (A1SF1Q == 8)
replace A1SF1R = . if (A1SF1R == 8)
replace A1SF1S = . if (A1SF1S == 8)
replace A1SF1T = . if (A1SF1T == 8)
replace A1SF1U = . if (A1SF1U == 8)
replace A1SF1V = . if (A1SF1V == 8)
replace A1SF1W = . if (A1SF1W == 8)
replace A1SF1X = . if (A1SF1X == 8)
replace A1SF1Y = . if (A1SF1Y == 8)
replace A1SF1Z = . if (A1SF1Z == 8)
replace A1SF1AA = . if (A1SF1AA == 8)
replace A1SF1BB = . if (A1SF1BB == 8)
replace A1SF1CC = . if (A1SF1CC == 8)
replace A1SF1DD = . if (A1SF1DD == 8)
replace A1SCTRL = . if (A1SCTRL == 9)
replace A1SPWBA = . if (A1SPWBA == 99.0)
replace A1SPWBE = . if (A1SPWBE == 99.0)
replace A1SPWBG = . if (A1SPWBG == 99.0)
replace A1SPWBR = . if (A1SPWBR == 99.0)
replace A1SPWBU = . if (A1SPWBU == 99.0)
replace A1SPWBS = . if (A1SPWBS == 99.0)
replace A1SCONST = . if (A1SCONST == 99.000)
replace A1SMASTE = . if (A1SMASTE == 99.000)
replace A1SF2A = . if (A1SF2A == 8)
replace A1SF2B = . if (A1SF2B == 8)
replace A1SF2C = . if (A1SF2C == 8)
replace A1SF2D = . if (A1SF2D == 8)
replace A1SF2E = . if (A1SF2E == 8)
replace A1SF2F = . if (A1SF2F == 8)
replace A1SF2G = . if (A1SF2G == 8)
replace A1SF2H = . if (A1SF2H == 8)
replace A1SF2I = . if (A1SF2I == 8)
replace A1SF2J = . if (A1SF2J == 8)
replace A1SF2K = . if (A1SF2K == 8)
replace A1SMAR = . if (A1SMAR == 99.0)
replace A1SFAM = . if (A1SFAM == 99.000)
replace A1SF3A = . if (A1SF3A == 7 | A1SF3A == 8 | A1SF3A == 9)
replace A1SF3B = . if (A1SF3B == 7 | A1SF3B == 8 | A1SF3B == 9)
replace A1SF3C = . if (A1SF3C == 7 | A1SF3C == 8 | A1SF3C == 9)
replace A1SF3D = . if (A1SF3D == 7 | A1SF3D == 8 | A1SF3D == 9)
replace A1SF3E = . if (A1SF3E == 7 | A1SF3E == 8 | A1SF3E == 9)
replace A1SF3F = . if (A1SF3F == 7 | A1SF3F == 8 | A1SF3F == 9)
replace A1SF3G = . if (A1SF3G == 7 | A1SF3G == 8 | A1SF3G == 9)
replace A1SF3H = . if (A1SF3H == 7 | A1SF3H == 8 | A1SF3H == 9)
replace A1SF3I = . if (A1SF3I == 7 | A1SF3I == 8 | A1SF3I == 9)
replace A1SF3J = . if (A1SF3J == 7 | A1SF3J == 8 | A1SF3J == 9)
replace A1SF3K = . if (A1SF3K == 7 | A1SF3K == 8 | A1SF3K == 9)
replace A1SF3L = . if (A1SF3L == 7 | A1SF3L == 8 | A1SF3L == 9)
replace A1SF3M = . if (A1SF3M == 7 | A1SF3M == 8 | A1SF3M == 9)
replace A1SF3N = . if (A1SF3N == 7 | A1SF3N == 8 | A1SF3N == 9)
replace A1SF3O = . if (A1SF3O == 7 | A1SF3O == 8 | A1SF3O == 9)
replace A1SF3P = . if (A1SF3P == 7 | A1SF3P == 8 | A1SF3P == 9)
replace A1SF3Q = . if (A1SF3Q == 7 | A1SF3Q == 8 | A1SF3Q == 9)
replace A1SF3R = . if (A1SF3R == 7 | A1SF3R == 8 | A1SF3R == 9)
replace A1SF3S = . if (A1SF3S == 7 | A1SF3S == 8 | A1SF3S == 9)
replace A1SF3T = . if (A1SF3T == 7 | A1SF3T == 8 | A1SF3T == 9)
replace A1SF3U = . if (A1SF3U == 7 | A1SF3U == 8 | A1SF3U == 9)
replace A1SF3V = . if (A1SF3V == 7 | A1SF3V == 8 | A1SF3V == 9)
replace A1SF3W = . if (A1SF3W == 7 | A1SF3W == 8 | A1SF3W == 9)
replace A1SF3X = . if (A1SF3X == 7 | A1SF3X == 8 | A1SF3X == 9)
replace A1SF3Y = . if (A1SF3Y == 7 | A1SF3Y == 8 | A1SF3Y == 9)
replace A1SF3Z = . if (A1SF3Z == 7 | A1SF3Z == 8 | A1SF3Z == 9)
replace A1SF3AA = . if (A1SF3AA == 7 | A1SF3AA == 8 | A1SF3AA == 9)
replace A1SF3BB = . if (A1SF3BB == 7 | A1SF3BB == 8 | A1SF3BB == 9)
replace A1SF3CC = . if (A1SF3CC == 7 | A1SF3CC == 8 | A1SF3CC == 9)
replace A1SF3DD = . if (A1SF3DD == 7 | A1SF3DD == 8 | A1SF3DD == 9)
replace A1SF3EE = . if (A1SF3EE == 7 | A1SF3EE == 8 | A1SF3EE == 9)
replace A1SF3FF = . if (A1SF3FF == 7 | A1SF3FF == 8 | A1SF3FF == 9)
replace A1SF3GG = . if (A1SF3GG == 7 | A1SF3GG == 8 | A1SF3GG == 9)
replace A1SF3HH = . if (A1SF3HH == 7 | A1SF3HH == 8 | A1SF3HH == 9)
replace A1SF3II = . if (A1SF3II == 7 | A1SF3II == 8 | A1SF3II == 9)
replace A1SF3JJ = . if (A1SF3JJ == 7 | A1SF3JJ == 8 | A1SF3JJ == 9)
replace A1SF3KK = . if (A1SF3KK == 7 | A1SF3KK == 8 | A1SF3KK == 9)
replace A1SPERSI = . if (A1SPERSI == 9.000)
replace A1SCHANG = . if (A1SCHANG == 9.000)
replace A1SREAPP = . if (A1SREAPP == 9.000)
replace A1SDIREC = . if (A1SDIREC == 9.000)
replace A1STODAY = . if (A1STODAY == 9.000)
replace A1SFORSG = . if (A1SFORSG == 9.000)
replace A1SINSGH = . if (A1SINSGH == 9.000)
replace A1SSUFFI = . if (A1SSUFFI == 9.000)
replace A1SADVIC = . if (A1SADVIC == 9.000)
replace A1SF4A = . if (A1SF4A == 7 | A1SF4A == 8 | A1SF4A == 9)
replace A1SF4B = . if (A1SF4B == 7 | A1SF4B == 8 | A1SF4B == 9)
replace A1SF4C = . if (A1SF4C == 7 | A1SF4C == 8 | A1SF4C == 9)
replace A1SF4D = . if (A1SF4D == 7 | A1SF4D == 8 | A1SF4D == 9)
replace A1SF4E = . if (A1SF4E == 7 | A1SF4E == 8 | A1SF4E == 9)
replace A1SF4F = . if (A1SF4F == 7 | A1SF4F == 8 | A1SF4F == 9)
replace A1SF4G = . if (A1SF4G == 7 | A1SF4G == 8 | A1SF4G == 9)
replace A1SF4H = . if (A1SF4H == 7 | A1SF4H == 8 | A1SF4H == 9)
replace A1SF4I = . if (A1SF4I == 7 | A1SF4I == 8 | A1SF4I == 9)
replace A1SF4J = . if (A1SF4J == 7 | A1SF4J == 8 | A1SF4J == 9)
replace A1SF4K = . if (A1SF4K == 7 | A1SF4K == 8 | A1SF4K == 9)
replace A1SF4L = . if (A1SF4L == 7 | A1SF4L == 8 | A1SF4L == 9)
replace A1SF4M = . if (A1SF4M == 7 | A1SF4M == 8 | A1SF4M == 9)
replace A1SF4N = . if (A1SF4N == 7 | A1SF4N == 8 | A1SF4N == 9)
replace A1SF4O = . if (A1SF4O == 7 | A1SF4O == 8 | A1SF4O == 9)
replace A1SF4P = . if (A1SF4P == 7 | A1SF4P == 8 | A1SF4P == 9)
replace A1SF4Q = . if (A1SF4Q == 7 | A1SF4Q == 8 | A1SF4Q == 9)
replace A1SF4R = . if (A1SF4R == 7 | A1SF4R == 8 | A1SF4R == 9)
replace A1SF4S = . if (A1SF4S == 7 | A1SF4S == 8 | A1SF4S == 9)
replace A1SF4T = . if (A1SF4T == 7 | A1SF4T == 8 | A1SF4T == 9)
replace A1SF4U = . if (A1SF4U == 7 | A1SF4U == 8 | A1SF4U == 9)
replace A1SF4V = . if (A1SF4V == 7 | A1SF4V == 8 | A1SF4V == 9)
replace A1SF4W = . if (A1SF4W == 7 | A1SF4W == 8 | A1SF4W == 9)
replace A1SF4X = . if (A1SF4X == 7 | A1SF4X == 8 | A1SF4X == 9)
replace A1SF4Y = . if (A1SF4Y == 7 | A1SF4Y == 8 | A1SF4Y == 9)
replace A1SF4Z = . if (A1SF4Z == 7 | A1SF4Z == 8 | A1SF4Z == 9)
replace A1SF4AA = . if (A1SF4AA == 7 | A1SF4AA == 8 | A1SF4AA == 9)
replace A1SF4BB = . if (A1SF4BB == 7 | A1SF4BB == 8 | A1SF4BB == 9)
replace A1SF4CC = . if (A1SF4CC == 7 | A1SF4CC == 8 | A1SF4CC == 9)
replace A1SF4DD = . if (A1SF4DD == 7 | A1SF4DD == 8 | A1SF4DD == 9)
replace A1SAGENC = . if (A1SAGENC == 9.000)
replace A1SAGREE = . if (A1SAGREE == 9.000)
replace A1SEXTRA = . if (A1SEXTRA == 9.000)
replace A1SNEURO = . if (A1SNEURO == 9.000)
replace A1SCONS = . if (A1SCONS == 9.000)
replace A1SOPEN = . if (A1SOPEN == 9.000)
replace A1SF5A = . if (A1SF5A == 97 | A1SF5A == 98 | A1SF5A == 99)
replace A1SF5B = . if (A1SF5B == 97 | A1SF5B == 98 | A1SF5B == 99)
replace A1SF5C = . if (A1SF5C == 97 | A1SF5C == 98 | A1SF5C == 99)
replace A1SF5D = . if (A1SF5D == 97 | A1SF5D == 98 | A1SF5D == 99)
replace A1SF5E = . if (A1SF5E == 97 | A1SF5E == 98 | A1SF5E == 99)
replace A1SF5F = . if (A1SF5F == 97 | A1SF5F == 98 | A1SF5F == 99)
replace A1SF5G = . if (A1SF5G == 97 | A1SF5G == 98 | A1SF5G == 99)
replace A1SF5H = . if (A1SF5H == 97 | A1SF5H == 98 | A1SF5H == 99)
replace A1SF5I = . if (A1SF5I == 97 | A1SF5I == 98 | A1SF5I == 99)
replace A1SF5J = . if (A1SF5J == 97 | A1SF5J == 98 | A1SF5J == 99)
replace A1SF5K = . if (A1SF5K == 97 | A1SF5K == 98 | A1SF5K == 99)
replace A1SF5L = . if (A1SF5L == 97 | A1SF5L == 98 | A1SF5L == 99)
replace A1SF5M = . if (A1SF5M == 97 | A1SF5M == 98 | A1SF5M == 99)
replace A1SF5N = . if (A1SF5N == 97 | A1SF5N == 98 | A1SF5N == 99)
replace A1SF5O = . if (A1SF5O == 97 | A1SF5O == 98 | A1SF5O == 99)
replace A1SF5P = . if (A1SF5P == 97 | A1SF5P == 98 | A1SF5P == 99)
replace A1SF5Q = . if (A1SF5Q == 97 | A1SF5Q == 98 | A1SF5Q == 99)
replace A1SF5R = . if (A1SF5R == 97 | A1SF5R == 98 | A1SF5R == 99)
replace A1SF6A = . if (A1SF6A == 7 | A1SF6A == 8 | A1SF6A == 9)
replace A1SF6B = . if (A1SF6B == 7 | A1SF6B == 8 | A1SF6B == 9)
replace A1SF6C = . if (A1SF6C == 7 | A1SF6C == 8 | A1SF6C == 9)
replace A1SF7A = . if (A1SF7A == 7 | A1SF7A == 8 | A1SF7A == 9)
replace A1SF7B = . if (A1SF7B == 7 | A1SF7B == 8 | A1SF7B == 9)
replace A1SF7C = . if (A1SF7C == 7 | A1SF7C == 8 | A1SF7C == 9)
replace A1SF8A = . if (A1SF8A == 7 | A1SF8A == 8 | A1SF8A == 9)
replace A1SF8B = . if (A1SF8B == 7 | A1SF8B == 8 | A1SF8B == 9)
replace A1SF8C = . if (A1SF8C == 7 | A1SF8C == 8 | A1SF8C == 9)
replace A1SG1A = . if (A1SG1A == 97 | A1SG1A == 98 | A1SG1A == 99)
replace A1SG1B = . if (A1SG1B == 97 | A1SG1B == 98 | A1SG1B == 99)
replace A1SG1C = . if (A1SG1C == 97 | A1SG1C == 98 | A1SG1C == 99)
replace A1SG1D = . if (A1SG1D == 97 | A1SG1D == 98 | A1SG1D == 99)
replace A1SG1E = . if (A1SG1E == 97 | A1SG1E == 98 | A1SG1E == 99)
replace A1SG1F = . if (A1SG1F == 97 | A1SG1F == 98 | A1SG1F == 99)
replace A1SG1G = . if (A1SG1G == 97 | A1SG1G == 98 | A1SG1G == 99)
replace A1SG1H = . if (A1SG1H == 97 | A1SG1H == 98 | A1SG1H == 99)
replace A1SG1I = . if (A1SG1I == 97 | A1SG1I == 98 | A1SG1I == 99)
replace A1SG1J = . if (A1SG1J == 97 | A1SG1J == 98 | A1SG1J == 99)
replace A1SG1K = . if (A1SG1K == 97 | A1SG1K == 98 | A1SG1K == 99)
replace A1SG1L = . if (A1SG1L == 97 | A1SG1L == 98 | A1SG1L == 99)
replace A1SG1M = . if (A1SG1M == 97 | A1SG1M == 98 | A1SG1M == 99)
replace A1SG1N = . if (A1SG1N == 97 | A1SG1N == 98 | A1SG1N == 99)
replace A1SG1O = . if (A1SG1O == 97 | A1SG1O == 98 | A1SG1O == 99)
replace A1SG1P = . if (A1SG1P == 97 | A1SG1P == 98 | A1SG1P == 99)
replace A1SG1Q = . if (A1SG1Q == 97 | A1SG1Q == 98 | A1SG1Q == 99)
replace A1SG1R = . if (A1SG1R == 97 | A1SG1R == 98 | A1SG1R == 99)
replace A1SG2A = . if (A1SG2A == 97 | A1SG2A == 98 | A1SG2A == 99)
replace A1SG2B = . if (A1SG2B == 97 | A1SG2B == 98 | A1SG2B == 99)
replace A1SG2C = . if (A1SG2C == 97 | A1SG2C == 98 | A1SG2C == 99)
replace A1SG2D = . if (A1SG2D == 97 | A1SG2D == 98 | A1SG2D == 99)
replace A1SG2E = . if (A1SG2E == 97 | A1SG2E == 98 | A1SG2E == 99)
replace A1SG2F = . if (A1SG2F == 97 | A1SG2F == 98 | A1SG2F == 99)
replace A1SG2G = . if (A1SG2G == 97 | A1SG2G == 98 | A1SG2G == 99)
replace A1SG2H = . if (A1SG2H == 97 | A1SG2H == 98 | A1SG2H == 99)
replace A1SG2I = . if (A1SG2I == 97 | A1SG2I == 98 | A1SG2I == 99)
replace A1SG2J = . if (A1SG2J == 97 | A1SG2J == 98 | A1SG2J == 99)
replace A1SG2K = . if (A1SG2K == 97 | A1SG2K == 98 | A1SG2K == 99)
replace A1SG2L = . if (A1SG2L == 97 | A1SG2L == 98 | A1SG2L == 99)
replace A1SG2M = . if (A1SG2M == 97 | A1SG2M == 98 | A1SG2M == 99)
replace A1SG2N = . if (A1SG2N == 97 | A1SG2N == 98 | A1SG2N == 99)
replace A1SG2O = . if (A1SG2O == 97 | A1SG2O == 98 | A1SG2O == 99)
replace A1SG2P = . if (A1SG2P == 97 | A1SG2P == 98 | A1SG2P == 99)
replace A1SG2Q = . if (A1SG2Q == 97 | A1SG2Q == 98 | A1SG2Q == 99)
replace A1SG2R = . if (A1SG2R == 97 | A1SG2R == 98 | A1SG2R == 99)
replace A1SG2S = . if (A1SG2S == 97 | A1SG2S == 98 | A1SG2S == 99)
replace A1SG2T = . if (A1SG2T == 97 | A1SG2T == 98 | A1SG2T == 99)
replace A1SG2U = . if (A1SG2U == 97 | A1SG2U == 98 | A1SG2U == 99)
replace A1SG3 = . if (A1SG3 == 997 | A1SG3 == 998 | A1SG3 == 999)
replace A1SG4 = . if (A1SG4 == 997 | A1SG4 == 998 | A1SG4 == 999)
replace A1SG5 = . if (A1SG5 == 97 | A1SG5 == 98 | A1SG5 == 99)
replace A1SG6 = . if (A1SG6 == 998)
replace A1SG7 = . if (A1SG7 == 998)
replace A1SG8 = . if (A1SG8 == 998)
replace A1SH1 = . if (A1SH1 == 7 | A1SH1 == 8 | A1SH1 == 9)
replace A1SH2 = . if (A1SH2 == 7 | A1SH2 == 8 | A1SH2 == 9)
replace A1SH3 = . if (A1SH3 == 7 | A1SH3 == 8 | A1SH3 == 9)
replace A1SH4 = . if (A1SH4 == 7 | A1SH4 == 8 | A1SH4 == 9)
replace A1SH5 = . if (A1SH5 == 7 | A1SH5 == 8 | A1SH5 == 9)
replace A1SH6 = . if (A1SH6 == 7 | A1SH6 == 8 | A1SH6 == 9)
replace A1SH7 = . if (A1SH7 == 7 | A1SH7 == 8 | A1SH7 == 9)
replace A1SI1A1 = . if (A1SI1A1 == 7 | A1SI1A1 == 8 | A1SI1A1 == 9)
replace A1SI1A2 = . if (A1SI1A2 == 7 | A1SI1A2 == 8 | A1SI1A2 == 9)
replace A1SI1A3 = . if (A1SI1A3 == 7 | A1SI1A3 == 8 | A1SI1A3 == 9)
replace A1SI1B1 = . if (A1SI1B1 == 7 | A1SI1B1 == 8 | A1SI1B1 == 9)
replace A1SI1B2 = . if (A1SI1B2 == 7 | A1SI1B2 == 8 | A1SI1B2 == 9)
replace A1SI1B3 = . if (A1SI1B3 == 7 | A1SI1B3 == 8 | A1SI1B3 == 9)
replace A1SI1C1 = . if (A1SI1C1 == 7 | A1SI1C1 == 8 | A1SI1C1 == 9)
replace A1SI1C2 = . if (A1SI1C2 == 7 | A1SI1C2 == 8 | A1SI1C2 == 9)
replace A1SI1C3 = . if (A1SI1C3 == 7 | A1SI1C3 == 8 | A1SI1C3 == 9)
replace A1SI1D1 = . if (A1SI1D1 == 7 | A1SI1D1 == 8 | A1SI1D1 == 9)
replace A1SI1D2 = . if (A1SI1D2 == 7 | A1SI1D2 == 8 | A1SI1D2 == 9)
replace A1SI1D3 = . if (A1SI1D3 == 7 | A1SI1D3 == 8 | A1SI1D3 == 9)
replace A1SI1E1 = . if (A1SI1E1 == 7 | A1SI1E1 == 8 | A1SI1E1 == 9)
replace A1SI1E2 = . if (A1SI1E2 == 7 | A1SI1E2 == 8 | A1SI1E2 == 9)
replace A1SI1E3 = . if (A1SI1E3 == 7 | A1SI1E3 == 8 | A1SI1E3 == 9)
replace A1SI1F1 = . if (A1SI1F1 == 7 | A1SI1F1 == 8 | A1SI1F1 == 9)
replace A1SI1F2 = . if (A1SI1F2 == 7 | A1SI1F2 == 8 | A1SI1F2 == 9)
replace A1SI1F3 = . if (A1SI1F3 == 7 | A1SI1F3 == 8 | A1SI1F3 == 9)
replace A1SI1G1 = . if (A1SI1G1 == 7 | A1SI1G1 == 8 | A1SI1G1 == 9)
replace A1SI1G2 = . if (A1SI1G2 == 7 | A1SI1G2 == 8 | A1SI1G2 == 9)
replace A1SI1G3 = . if (A1SI1G3 == 7 | A1SI1G3 == 8 | A1SI1G3 == 9)
replace A1SI1H1 = . if (A1SI1H1 == 7 | A1SI1H1 == 8 | A1SI1H1 == 9)
replace A1SI1H2 = . if (A1SI1H2 == 7 | A1SI1H2 == 8 | A1SI1H2 == 9)
replace A1SI1H3 = . if (A1SI1H3 == 7 | A1SI1H3 == 8 | A1SI1H3 == 9)
replace A1SI1I1 = . if (A1SI1I1 == 7 | A1SI1I1 == 8 | A1SI1I1 == 9)
replace A1SI1I2 = . if (A1SI1I2 == 7 | A1SI1I2 == 8 | A1SI1I2 == 9)
replace A1SI1I3 = . if (A1SI1I3 == 7 | A1SI1I3 == 8 | A1SI1I3 == 9)
replace A1SI1J1 = . if (A1SI1J1 == 7 | A1SI1J1 == 8 | A1SI1J1 == 9)
replace A1SI1J2 = . if (A1SI1J2 == 7 | A1SI1J2 == 8 | A1SI1J2 == 9)
replace A1SI1J3 = . if (A1SI1J3 == 7 | A1SI1J3 == 8 | A1SI1J3 == 9)
replace A1SI1K1 = . if (A1SI1K1 == 7 | A1SI1K1 == 8 | A1SI1K1 == 9)
replace A1SI1K2 = . if (A1SI1K2 == 7 | A1SI1K2 == 8 | A1SI1K2 == 9)
replace A1SI1K3 = . if (A1SI1K3 == 7 | A1SI1K3 == 8 | A1SI1K3 == 9)
replace A1SI2 = . if (A1SI2 == 97 | A1SI2 == 98 | A1SI2 == 99)
replace A1SI3 = . if (A1SI3 == 97 | A1SI3 == 98 | A1SI3 == 99)
replace A1SI4 = . if (A1SI4 == 97 | A1SI4 == 98 | A1SI4 == 99)
replace A1SI5 = . if (A1SI5 == 97 | A1SI5 == 98 | A1SI5 == 99)
replace A1SI6 = . if (A1SI6 == 97 | A1SI6 == 98 | A1SI6 == 99)
replace SKIP_SI7 = . if (SKIP_SI7 == 7 | SKIP_SI7 == 8 | SKIP_SI7 == 9)
replace A1SI7 = . if (A1SI7 == 97 | A1SI7 == 98 | A1SI7 == 99)
replace A1SI8 = . if (A1SI8 == 97 | A1SI8 == 98 | A1SI8 == 99)
replace A1SI9 = . if (A1SI9 == 97 | A1SI9 == 98 | A1SI9 == 99)
replace A1SI10 = . if (A1SI10 == 9997 | A1SI10 == 9998 | A1SI10 == 9999)
replace A1SI11 = . if (A1SI11 == 97 | A1SI11 == 98 | A1SI11 == 99)
replace A1SI12A = . if (A1SI12A == 7 | A1SI12A == 8 | A1SI12A == 9)
replace A1SI12B = . if (A1SI12B == 7 | A1SI12B == 8 | A1SI12B == 9)
replace A1SI12C = . if (A1SI12C == 7 | A1SI12C == 8 | A1SI12C == 9)
replace A1SI12D = . if (A1SI12D == 7 | A1SI12D == 8 | A1SI12D == 9)
replace A1SI12E = . if (A1SI12E == 7 | A1SI12E == 8 | A1SI12E == 9)
replace A1SI12F = . if (A1SI12F == 7 | A1SI12F == 8 | A1SI12F == 9)
replace A1SI12G = . if (A1SI12G == 7 | A1SI12G == 8 | A1SI12G == 9)
replace A1SI12H = . if (A1SI12H == 7 | A1SI12H == 8 | A1SI12H == 9)
replace A1SI12I = . if (A1SI12I == 7 | A1SI12I == 8 | A1SI12I == 9)
replace A1SI12J = . if (A1SI12J == 7 | A1SI12J == 8 | A1SI12J == 9)
replace A1SI13A = . if (A1SI13A == 97 | A1SI13A == 98 | A1SI13A == 99)
replace A1SI13B = . if (A1SI13B == 97 | A1SI13B == 98 | A1SI13B == 99)
replace A1SI13C = . if (A1SI13C == 97 | A1SI13C == 98 | A1SI13C == 99)
replace A1SI13D = . if (A1SI13D == 97 | A1SI13D == 98 | A1SI13D == 99)
replace A1SI14 = . if (A1SI14 == 7 | A1SI14 == 8 | A1SI14 == 9)
replace A1SI15A = . if (A1SI15A == 7 | A1SI15A == 8 | A1SI15A == 9)
replace A1SI15B = . if (A1SI15B == 7 | A1SI15B == 8 | A1SI15B == 9)
replace A1SI15C = . if (A1SI15C == 7 | A1SI15C == 8 | A1SI15C == 9)
replace A1SI15D = . if (A1SI15D == 7 | A1SI15D == 8 | A1SI15D == 9)
replace A1SI16 = . if (A1SI16 == 9997 | A1SI16 == 9998 | A1SI16 == 9999)
replace A1SI17 = . if (A1SI17 == 9997 | A1SI17 == 9998 | A1SI17 == 9999)
replace A1SI18 = . if (A1SI18 == 997 | A1SI18 == 998 | A1SI18 == 999)
replace A1SI19 = . if (A1SI19 == 7 | A1SI19 == 8 | A1SI19 == 9)
replace A1SI20 = . if (A1SI20 == 7 | A1SI20 == 8 | A1SI20 == 9)
replace A1SI21 = . if (A1SI21 == 7 | A1SI21 == 8 | A1SI21 == 9)
replace A1SI22 = . if (A1SI22 == 7 | A1SI22 == 8 | A1SI22 == 9)
replace A1SI23 = . if (A1SI23 == 7 | A1SI23 == 8 | A1SI23 == 9)
replace A1SI24 = . if (A1SI24 == 7 | A1SI24 == 8 | A1SI24 == 9)
replace A1SI25 = . if (A1SI25 == 997 | A1SI25 == 998 | A1SI25 == 999)
replace A1SI26 = . if (A1SI26 == 7 | A1SI26 == 8 | A1SI26 == 9)
replace A1SI27A = . if (A1SI27A == 7 | A1SI27A == 8 | A1SI27A == 9)
replace A1SI27B = . if (A1SI27B == 7 | A1SI27B == 8 | A1SI27B == 9)
replace A1SI27C = . if (A1SI27C == 7 | A1SI27C == 8 | A1SI27C == 9)
replace A1SI27D = . if (A1SI27D == 7 | A1SI27D == 8 | A1SI27D == 9)
replace A1SI27E = . if (A1SI27E == 7 | A1SI27E == 8 | A1SI27E == 9)
replace A1SI27F = . if (A1SI27F == 7 | A1SI27F == 8 | A1SI27F == 9)
replace A1SI27G = . if (A1SI27G == 7 | A1SI27G == 8 | A1SI27G == 9)
replace A1SI27H = . if (A1SI27H == 7 | A1SI27H == 8 | A1SI27H == 9)
replace A1SI27I = . if (A1SI27I == 7 | A1SI27I == 8 | A1SI27I == 9)
replace A1SI27J = . if (A1SI27J == 7 | A1SI27J == 8 | A1SI27J == 9)
replace A1SI27K = . if (A1SI27K == 7 | A1SI27K == 8 | A1SI27K == 9)
replace A1SI27L = . if (A1SI27L == 7 | A1SI27L == 8 | A1SI27L == 9)
replace A1SI27M = . if (A1SI27M == 7 | A1SI27M == 8 | A1SI27M == 9)
replace A1SI27N = . if (A1SI27N == 7 | A1SI27N == 8 | A1SI27N == 9)
replace A1SI27O = . if (A1SI27O == 7 | A1SI27O == 8 | A1SI27O == 9)
replace A1SI27P = . if (A1SI27P == 7 | A1SI27P == 8 | A1SI27P == 9)
replace A1SPOSWF = . if (A1SPOSWF == 99)
replace A1SNEGWF = . if (A1SNEGWF == 99)
replace A1SPOSFW = . if (A1SPOSFW == 99)
replace A1SNEGFW = . if (A1SNEGFW == 99)
replace A1SI28A = . if (A1SI28A == 7 | A1SI28A == 8 | A1SI28A == 9)
replace A1SI28B = . if (A1SI28B == 7 | A1SI28B == 8 | A1SI28B == 9)
replace A1SI28C = . if (A1SI28C == 7 | A1SI28C == 8 | A1SI28C == 9)
replace A1SI28D = . if (A1SI28D == 7 | A1SI28D == 8 | A1SI28D == 9)
replace A1SI28E = . if (A1SI28E == 7 | A1SI28E == 8 | A1SI28E == 9)
replace A1SI28F = . if (A1SI28F == 7 | A1SI28F == 8 | A1SI28F == 9)
replace A1SI28G = . if (A1SI28G == 7 | A1SI28G == 8 | A1SI28G == 9)
replace A1SI28H = . if (A1SI28H == 7 | A1SI28H == 8 | A1SI28H == 9)
replace A1SI28I = . if (A1SI28I == 7 | A1SI28I == 8 | A1SI28I == 9)
replace A1SI28J = . if (A1SI28J == 7 | A1SI28J == 8 | A1SI28J == 9)
replace A1SI29A = . if (A1SI29A == 7 | A1SI29A == 8 | A1SI29A == 9)
replace A1SI29B = . if (A1SI29B == 7 | A1SI29B == 8 | A1SI29B == 9)
replace A1SI29C = . if (A1SI29C == 7 | A1SI29C == 8 | A1SI29C == 9)
replace A1SI29D = . if (A1SI29D == 7 | A1SI29D == 8 | A1SI29D == 9)
replace A1SJCSD = . if (A1SJCSD == 99)
replace A1SJCDA = . if (A1SJCDA == 99)
replace A1SJCDS = . if (A1SJCDS == 99)
replace A1SJCCS = . if (A1SJCCS == 99)
replace A1SJCSS = . if (A1SJCSS == 99)
replace A1SI30A = . if (A1SI30A == 7 | A1SI30A == 8 | A1SI30A == 9)
replace A1SI30B = . if (A1SI30B == 7 | A1SI30B == 8 | A1SI30B == 9)
replace A1SI30C = . if (A1SI30C == 7 | A1SI30C == 8 | A1SI30C == 9)
replace A1SI30D = . if (A1SI30D == 7 | A1SI30D == 8 | A1SI30D == 9)
replace A1SI30E = . if (A1SI30E == 7 | A1SI30E == 8 | A1SI30E == 9)
replace A1SI31A = . if (A1SI31A == 7 | A1SI31A == 8 | A1SI31A == 9)
replace A1SI31B = . if (A1SI31B == 7 | A1SI31B == 8 | A1SI31B == 9)
replace A1SI31C = . if (A1SI31C == 7 | A1SI31C == 8 | A1SI31C == 9)
replace A1SI31D = . if (A1SI31D == 7 | A1SI31D == 8 | A1SI31D == 9)
replace A1SI31E = . if (A1SI31E == 7 | A1SI31E == 8 | A1SI31E == 9)
replace A1SI31F = . if (A1SI31F == 7 | A1SI31F == 8 | A1SI31F == 9)
replace A1SPIWOR = . if (A1SPIWOR == 9.000)
replace A1SI32A = . if (A1SI32A == 7 | A1SI32A == 8 | A1SI32A == 9)
replace A1SI32B = . if (A1SI32B == 7 | A1SI32B == 8 | A1SI32B == 9)
replace A1SI32C = . if (A1SI32C == 7 | A1SI32C == 8 | A1SI32C == 9)
replace A1SI32D = . if (A1SI32D == 7 | A1SI32D == 8 | A1SI32D == 9)
replace A1SI33A = . if (A1SI33A == 7 | A1SI33A == 8 | A1SI33A == 9)
replace A1SI33B = . if (A1SI33B == 7 | A1SI33B == 8 | A1SI33B == 9)
replace A1SI33C = . if (A1SI33C == 7 | A1SI33C == 8 | A1SI33C == 9)
replace A1SI34A = . if (A1SI34A == 7 | A1SI34A == 8 | A1SI34A == 9)
replace A1SI34B = . if (A1SI34B == 7 | A1SI34B == 8 | A1SI34B == 9)
replace A1SI34C = . if (A1SI34C == 7 | A1SI34C == 8 | A1SI34C == 9)
replace A1SJ1 = . if (A1SJ1 == 97 | A1SJ1 == 98 | A1SJ1 == 99)
replace A1SJ2 = . if (A1SJ2 == 97 | A1SJ2 == 98 | A1SJ2 == 99)
replace A1SJ3 = . if (A1SJ3 == 97 | A1SJ3 == 98 | A1SJ3 == 99)
replace A1SJ4 = . if (A1SJ4 == 97 | A1SJ4 == 98 | A1SJ4 == 99)
replace A1SJ5 = . if (A1SJ5 == 97 | A1SJ5 == 98 | A1SJ5 == 99)
replace A1SJ6 = . if (A1SJ6 == 7 | A1SJ6 == 8 | A1SJ6 == 9)
replace A1SJ7 = . if (A1SJ7 == 7 | A1SJ7 == 8 | A1SJ7 == 9)
replace A1SJ8 = . if (A1SJ8 == 97 | A1SJ8 == 98 | A1SJ8 == 99)
replace A1SJ8M = . if (A1SJ8M == 999997 | A1SJ8M == 999998 | A1SJ8M == 999999)
replace A1SJ9 = . if (A1SJ9 == 97 | A1SJ9 == 98 | A1SJ9 == 99)
replace A1SJ9M = . if (A1SJ9M == 999997 | A1SJ9M == 999998 | A1SJ9M == 999999)
replace A1SHWEARN = . if (A1SHWEARN == 999997 | A1SHWEARN == 999998 | A1SHWEARN == 999999)
replace A1SJ10 = . if (A1SJ10 == 97 | A1SJ10 == 98 | A1SJ10 == 99)
replace A1SJ10M = . if (A1SJ10M == 999997 | A1SJ10M == 999998 | A1SJ10M == 999999)
replace A1SJ11 = . if (A1SJ11 == 97 | A1SJ11 == 98 | A1SJ11 == 99)
replace A1SJ11M = . if (A1SJ11M == 999997 | A1SJ11M == 999998 | A1SJ11M == 999999)
replace A1SJ12 = . if (A1SJ12 == 97 | A1SJ12 == 98 | A1SJ12 == 99)
replace A1SJ12M = . if (A1SJ12M == 999997 | A1SJ12M == 999998 | A1SJ12M == 999999)
replace A1SJ13 = . if (A1SJ13 == 97 | A1SJ13 == 98 | A1SJ13 == 99)
replace A1SJ13M = . if (A1SJ13M == 999997 | A1SJ13M == 999998 | A1SJ13M == 999999)
replace A1SHHTOT = . if (A1SHHTOT == 999997 | A1SHHTOT == 999998 | A1SHHTOT == 999999)
replace A1SJ14 = . if (A1SJ14 == 7 | A1SJ14 == 8 | A1SJ14 == 9)
replace A1SJ15 = . if (A1SJ15 == 97 | A1SJ15 == 98 | A1SJ15 == 99)
replace A1SASSET = . if (A1SASSET == 99997 | A1SASSET == 99998 | A1SASSET == 99999)
replace A1SJ16 = . if (A1SJ16 == 7 | A1SJ16 == 8 | A1SJ16 == 9)
replace A1SJ17 = . if (A1SJ17 == 7 | A1SJ17 == 8 | A1SJ17 == 9)
replace A1SJ18 = . if (A1SJ18 == 7 | A1SJ18 == 8 | A1SJ18 == 9)
replace A1SJ19 = . if (A1SJ19 == 7 | A1SJ19 == 8 | A1SJ19 == 9)
replace A1SK1 = . if (A1SK1 == 97 | A1SK1 == 98 | A1SK1 == 99)
replace A1SK2 = . if (A1SK2 == 97 | A1SK2 == 98 | A1SK2 == 99)
replace A1SK3 = . if (A1SK3 == 97 | A1SK3 == 98 | A1SK3 == 99)
replace A1SK4 = . if (A1SK4 == 97 | A1SK4 == 98 | A1SK4 == 99)
replace A1SK5 = . if (A1SK5 == 97 | A1SK5 == 98 | A1SK5 == 99)
replace A1SK6A = . if (A1SK6A == 7 | A1SK6A == 8 | A1SK6A == 9)
replace A1SK6B = . if (A1SK6B == 7 | A1SK6B == 8 | A1SK6B == 9)
replace A1SK6C = . if (A1SK6C == 7 | A1SK6C == 8 | A1SK6C == 9)
replace A1SK6D = . if (A1SK6D == 7 | A1SK6D == 8 | A1SK6D == 9)
replace A1SK6E = . if (A1SK6E == 7 | A1SK6E == 8 | A1SK6E == 9)
replace A1SK6F = . if (A1SK6F == 7 | A1SK6F == 8 | A1SK6F == 9)
replace A1SGENER = . if (A1SGENER == 99.00)
replace A1SK7A = . if (A1SK7A == 97 | A1SK7A == 98 | A1SK7A == 99)
replace A1SK7B = . if (A1SK7B == 97 | A1SK7B == 98 | A1SK7B == 99)
replace A1SK7C = . if (A1SK7C == 97 | A1SK7C == 98 | A1SK7C == 99)
replace A1SK7D = . if (A1SK7D == 97 | A1SK7D == 98 | A1SK7D == 99)
replace A1SK7E = . if (A1SK7E == 97 | A1SK7E == 98 | A1SK7E == 99)
replace A1SK7F = . if (A1SK7F == 97 | A1SK7F == 98 | A1SK7F == 99)
replace A1SK7G = . if (A1SK7G == 97 | A1SK7G == 98 | A1SK7G == 99)
replace A1SK7H = . if (A1SK7H == 97 | A1SK7H == 98 | A1SK7H == 99)
replace A1SK7I = . if (A1SK7I == 97 | A1SK7I == 98 | A1SK7I == 99)
replace A1SK7J = . if (A1SK7J == 97 | A1SK7J == 98 | A1SK7J == 99)
replace A1SK7K = . if (A1SK7K == 97 | A1SK7K == 98 | A1SK7K == 99)
replace A1SK7L = . if (A1SK7L == 97 | A1SK7L == 98 | A1SK7L == 99)
replace A1SK7M = . if (A1SK7M == 97 | A1SK7M == 98 | A1SK7M == 99)
replace A1SK7N = . if (A1SK7N == 97 | A1SK7N == 98 | A1SK7N == 99)
replace A1SK7O = . if (A1SK7O == 97 | A1SK7O == 98 | A1SK7O == 99)
replace A1SK7P = . if (A1SK7P == 97 | A1SK7P == 98 | A1SK7P == 99)
replace A1SK7Q = . if (A1SK7Q == 97 | A1SK7Q == 98 | A1SK7Q == 99)
replace A1SK7R = . if (A1SK7R == 97 | A1SK7R == 98 | A1SK7R == 99)
replace A1SK7A1S = . if (A1SK7A1S == 97 | A1SK7A1S == 98 | A1SK7A1S == 99)
replace A1SPRIOB = . if (A1SPRIOB == 99.000)
replace A1SCVOB3 = . if (A1SCVOB3 == 99.000)
replace A1SCVOB5 = . if (A1SCVOB5 == 99.000)
replace A1SWKOB = . if (A1SWKOB == 99.000)
replace A1SALTRU = . if (A1SALTRU == 99.000)
replace A1SK8A = . if (A1SK8A == 997 | A1SK8A == 998 | A1SK8A == 999)
replace A1SK8B = . if (A1SK8B == 997 | A1SK8B == 998 | A1SK8B == 999)
replace A1SK8C = . if (A1SK8C == 997 | A1SK8C == 998 | A1SK8C == 999)
replace A1SK8D = . if (A1SK8D == 997 | A1SK8D == 998 | A1SK8D == 999)
replace A1SK9A = . if (A1SK9A == 97 | A1SK9A == 98 | A1SK9A == 99)
replace A1SK9B = . if (A1SK9B == 97 | A1SK9B == 98 | A1SK9B == 99)
replace A1SK9C = . if (A1SK9C == 97 | A1SK9C == 98 | A1SK9C == 99)
replace A1SK9D = . if (A1SK9D == 97 | A1SK9D == 98 | A1SK9D == 99)
replace A1SK9E = . if (A1SK9E == 998)
replace A1SK10A = . if (A1SK10A == 997 | A1SK10A == 998 | A1SK10A == 999)
replace A1SK10B = . if (A1SK10B == 997 | A1SK10B == 998 | A1SK10B == 999)
replace A1SK10C = . if (A1SK10C == 997 | A1SK10C == 998 | A1SK10C == 999)
replace A1SK10D = . if (A1SK10D == 997 | A1SK10D == 998 | A1SK10D == 999)
replace A1SK10E = . if (A1SK10E == 997 | A1SK10E == 998 | A1SK10E == 999)
replace A1SK10F = . if (A1SK10F == 997 | A1SK10F == 998 | A1SK10F == 999)
replace A1SPSUPE = . if (A1SPSUPE == 9999.000)
replace A1SK11A = . if (A1SK11A == 997 | A1SK11A == 998 | A1SK11A == 999)
replace A1SK11B = . if (A1SK11B == 997 | A1SK11B == 998 | A1SK11B == 999)
replace A1SK11C = . if (A1SK11C == 997 | A1SK11C == 998 | A1SK11C == 999)
replace A1SK11D = . if (A1SK11D == 997 | A1SK11D == 998 | A1SK11D == 999)
replace A1SK11E = . if (A1SK11E == 997 | A1SK11E == 998 | A1SK11E == 999)
replace A1SK11F = . if (A1SK11F == 997 | A1SK11F == 998 | A1SK11F == 999)
replace A1SRSUPE = . if (A1SRSUPE == 9999.000)
replace A1SK12A = . if (A1SK12A == 997 | A1SK12A == 998 | A1SK12A == 999)
replace A1SK12B = . if (A1SK12B == 997 | A1SK12B == 998 | A1SK12B == 999)
replace A1SK12C = . if (A1SK12C == 997 | A1SK12C == 998 | A1SK12C == 999)
replace A1SK12D = . if (A1SK12D == 997 | A1SK12D == 998 | A1SK12D == 999)
replace A1SK12E = . if (A1SK12E == 997 | A1SK12E == 998 | A1SK12E == 999)
replace A1SPSUPI = . if (A1SPSUPI == 999.000)
replace A1SK13A = . if (A1SK13A == 997 | A1SK13A == 998 | A1SK13A == 999)
replace A1SK13B = . if (A1SK13B == 997 | A1SK13B == 998 | A1SK13B == 999)
replace A1SK13C = . if (A1SK13C == 997 | A1SK13C == 998 | A1SK13C == 999)
replace A1SK13D = . if (A1SK13D == 997 | A1SK13D == 998 | A1SK13D == 999)
replace A1SK13E = . if (A1SK13E == 97 | A1SK13E == 98 | A1SK13E == 99)
replace A1SK13F = . if (A1SK13F == 997 | A1SK13F == 998 | A1SK13F == 999)
replace A1SK13G = . if (A1SK13G == 997 | A1SK13G == 998 | A1SK13G == 999)
replace A1SK13H = . if (A1SK13H == 997 | A1SK13H == 998 | A1SK13H == 999)
replace A1SRSUIF = . if (A1SRSUIF == 999.000)
replace A1SRSUIO = . if (A1SRSUIO == 99.000)
replace A1SK14A = . if (A1SK14A == 9997 | A1SK14A == 9998 | A1SK14A == 9999)
replace A1SK14B = . if (A1SK14B == 9997 | A1SK14B == 9998 | A1SK14B == 9999)
replace A1SK14C = . if (A1SK14C == 99997 | A1SK14C == 99998 | A1SK14C == 99999)
replace A1SK14D = . if (A1SK14D == 9997 | A1SK14D == 9998 | A1SK14D == 9999)
replace A1SK14E = . if (A1SK14E == 997 | A1SK14E == 998 | A1SK14E == 999)
replace A1SK14F = . if (A1SK14F == 99998)
replace A1SK14G = . if (A1SK14G == 9997 | A1SK14G == 9998 | A1SK14G == 9999)
replace A1SK14H = . if (A1SK14H == 99997 | A1SK14H == 99998 | A1SK14H == 99999)
replace A1SK15A = . if (A1SK15A == 99998)
replace A1SK15B = . if (A1SK15B == 9997 | A1SK15B == 9998 | A1SK15B == 9999)
replace A1SK15C = . if (A1SK15C == 9997 | A1SK15C == 9998 | A1SK15C == 9999)
replace A1SK15D = . if (A1SK15D == 9997 | A1SK15D == 9998 | A1SK15D == 9999)
replace A1SK15E = . if (A1SK15E == 997 | A1SK15E == 998 | A1SK15E == 999)
replace A1SK15F = . if (A1SK15F == 9997 | A1SK15F == 9998 | A1SK15F == 9999)
replace A1SK15G = . if (A1SK15G == 99997 | A1SK15G == 99998 | A1SK15G == 99999)
replace A1SK16A = . if (A1SK16A == 7 | A1SK16A == 8 | A1SK16A == 9)
replace A1SK16B = . if (A1SK16B == 7 | A1SK16B == 8 | A1SK16B == 9)
replace A1SK16C = . if (A1SK16C == 7 | A1SK16C == 8 | A1SK16C == 9)
replace A1SK16D = . if (A1SK16D == 7 | A1SK16D == 8 | A1SK16D == 9)
replace A1SK17A = . if (A1SK17A == 8 | A1SK17A == 9)
replace A1SK17B = . if (A1SK17B == 8 | A1SK17B == 9)
replace A1SK17C = . if (A1SK17C == 8 | A1SK17C == 9)
replace A1SK17D = . if (A1SK17D == 8 | A1SK17D == 9)
replace A1SK17E = . if (A1SK17E == 8 | A1SK17E == 9)
replace A1SK17F = . if (A1SK17F == 8 | A1SK17F == 9)
replace A1SK17G = . if (A1SK17G == 8 | A1SK17G == 9)
replace A1SK17H = . if (A1SK17H == 8 | A1SK17H == 9)
replace A1SK17I = . if (A1SK17I == 8 | A1SK17I == 9)
replace A1SK17J = . if (A1SK17J == 8 | A1SK17J == 9)
replace A1SK17K = . if (A1SK17K == 8 | A1SK17K == 9)
replace A1SK17L = . if (A1SK17L == 8 | A1SK17L == 9)
replace A1SK17M = . if (A1SK17M == 8 | A1SK17M == 9)
replace A1SK17N = . if (A1SK17N == 8 | A1SK17N == 9)
replace A1SK17O = . if (A1SK17O == 8 | A1SK17O == 9)
replace A1SSWBMS = . if (A1SSWBMS == 99)
replace A1SSWBSI = . if (A1SSWBSI == 99.0)
replace A1SSWBAO = . if (A1SSWBAO == 99.0)
replace A1SSWBSC = . if (A1SSWBSC == 99.0)
replace A1SSWBSA = . if (A1SSWBSA == 99.0)
replace A1SL1 = . if (A1SL1 == 7 | A1SL1 == 8 | A1SL1 == 9)
replace A1SL2 = . if (A1SL2 == 7 | A1SL2 == 8 | A1SL2 == 9)
replace A1SL3 = . if (A1SL3 == 97 | A1SL3 == 98 | A1SL3 == 99)
replace A1SL4 = . if (A1SL4 == 7 | A1SL4 == 8 | A1SL4 == 9)
replace A1SL5A = . if (A1SL5A == 7 | A1SL5A == 8 | A1SL5A == 9)
replace A1SL5B = . if (A1SL5B == 7 | A1SL5B == 8 | A1SL5B == 9)
replace A1SL5C = . if (A1SL5C == 7 | A1SL5C == 8 | A1SL5C == 9)
replace A1SL5D = . if (A1SL5D == 7 | A1SL5D == 8 | A1SL5D == 9)
replace A1SL5E = . if (A1SL5E == 7 | A1SL5E == 8 | A1SL5E == 9)
replace A1SL5F = . if (A1SL5F == 7 | A1SL5F == 8 | A1SL5F == 9)
replace A1SL5G = . if (A1SL5G == 7 | A1SL5G == 8 | A1SL5G == 9)
replace A1SL5H = . if (A1SL5H == 7 | A1SL5H == 8 | A1SL5H == 9)
replace A1SL5I = . if (A1SL5I == 7 | A1SL5I == 8 | A1SL5I == 9)
replace A1SL5J = . if (A1SL5J == 7 | A1SL5J == 8 | A1SL5J == 9)
replace A1SL5K = . if (A1SL5K == 7 | A1SL5K == 8 | A1SL5K == 9)
replace A1SL5L = . if (A1SL5L == 7 | A1SL5L == 8 | A1SL5L == 9)
replace A1SHOMET = . if (A1SHOMET == 9.000)
replace A1SPIHOM = . if (A1SPIHOM == 9.000)
replace A1SM1 = . if (A1SM1 == 97 | A1SM1 == 98 | A1SM1 == 99)
replace A1SM2 = . if (A1SM2 == 7 | A1SM2 == 8 | A1SM2 == 9)
replace A1SM3 = . if (A1SM3 == 7 | A1SM3 == 8 | A1SM3 == 9)
replace A1SM4 = . if (A1SM4 == 7 | A1SM4 == 8 | A1SM4 == 9)
replace A1SM5 = . if (A1SM5 == 7 | A1SM5 == 8 | A1SM5 == 9)
replace A1SM6 = . if (A1SM6 == 7 | A1SM6 == 8 | A1SM6 == 9)
replace A1SM7 = . if (A1SM7 == 7 | A1SM7 == 8 | A1SM7 == 9)
replace A1SM8 = . if (A1SM8 == 7 | A1SM8 == 8 | A1SM8 == 9)
replace A1SM9 = . if (A1SM9 == 7 | A1SM9 == 8 | A1SM9 == 9)
replace A1SFAMSO = . if (A1SFAMSO == 9)
replace A1SKINPO = . if (A1SKINPO == 9.000)
replace A1SKINNE = . if (A1SKINNE == 9.000)
replace A1SM10 = . if (A1SM10 == 97 | A1SM10 == 98 | A1SM10 == 99)
replace A1SM11 = . if (A1SM11 == 7 | A1SM11 == 8 | A1SM11 == 9)
replace A1SM12 = . if (A1SM12 == 7 | A1SM12 == 8 | A1SM12 == 9)
replace A1SM13 = . if (A1SM13 == 7 | A1SM13 == 8 | A1SM13 == 9)
replace A1SM14 = . if (A1SM14 == 7 | A1SM14 == 8 | A1SM14 == 9)
replace A1SFDSOL = . if (A1SFDSOL == 9)
replace A1SM15 = . if (A1SM15 == 7 | A1SM15 == 8 | A1SM15 == 9)
replace A1SM16 = . if (A1SM16 == 7 | A1SM16 == 8 | A1SM16 == 9)
replace A1SM17 = . if (A1SM17 == 7 | A1SM17 == 8 | A1SM17 == 9)
replace A1SM18 = . if (A1SM18 == 7 | A1SM18 == 8 | A1SM18 == 9)
replace A1SFDSPO = . if (A1SFDSPO == 9.000)
replace A1SFDSNE = . if (A1SFDSNE == 9.000)
replace A1SM19 = . if (A1SM19 == 7 | A1SM19 == 8 | A1SM19 == 9)
replace A1SM20 = . if (A1SM20 == 7 | A1SM20 == 8 | A1SM20 == 9)
replace A1SM21A1 = . if (A1SM21A1 == 7 | A1SM21A1 == 8 | A1SM21A1 == 9)
replace A1SM21A2 = . if (A1SM21A2 == 7 | A1SM21A2 == 8 | A1SM21A2 == 9)
replace A1SM21A3 = . if (A1SM21A3 == 7 | A1SM21A3 == 8 | A1SM21A3 == 9)
replace A1SM21B1 = . if (A1SM21B1 == 7 | A1SM21B1 == 8 | A1SM21B1 == 9)
replace A1SM21B2 = . if (A1SM21B2 == 7 | A1SM21B2 == 8 | A1SM21B2 == 9)
replace A1SM21B3 = . if (A1SM21B3 == 7 | A1SM21B3 == 8 | A1SM21B3 == 9)
replace A1SM21C1 = . if (A1SM21C1 == 7 | A1SM21C1 == 8 | A1SM21C1 == 9)
replace A1SM21C2 = . if (A1SM21C2 == 7 | A1SM21C2 == 8 | A1SM21C2 == 9)
replace A1SM21C3 = . if (A1SM21C3 == 7 | A1SM21C3 == 8 | A1SM21C3 == 9)
replace A1SM21D1 = . if (A1SM21D1 == 7 | A1SM21D1 == 8 | A1SM21D1 == 9)
replace A1SM21D2 = . if (A1SM21D2 == 7 | A1SM21D2 == 8 | A1SM21D2 == 9)
replace A1SM21D3 = . if (A1SM21D3 == 7 | A1SM21D3 == 8 | A1SM21D3 == 9)
replace A1SM21E1 = . if (A1SM21E1 == 7 | A1SM21E1 == 8 | A1SM21E1 == 9)
replace A1SM21E2 = . if (A1SM21E2 == 7 | A1SM21E2 == 8 | A1SM21E2 == 9)
replace A1SM21E3 = . if (A1SM21E3 == 7 | A1SM21E3 == 8 | A1SM21E3 == 9)
replace A1SM21F1 = . if (A1SM21F1 == 7 | A1SM21F1 == 8 | A1SM21F1 == 9)
replace A1SM21F2 = . if (A1SM21F2 == 7 | A1SM21F2 == 8 | A1SM21F2 == 9)
replace A1SM21F3 = . if (A1SM21F3 == 7 | A1SM21F3 == 8 | A1SM21F3 == 9)
replace A1SM21G1 = . if (A1SM21G1 == 7 | A1SM21G1 == 8 | A1SM21G1 == 9)
replace A1SM21G2 = . if (A1SM21G2 == 7 | A1SM21G2 == 8 | A1SM21G2 == 9)
replace A1SM21G3 = . if (A1SM21G3 == 7 | A1SM21G3 == 8 | A1SM21G3 == 9)
replace A1SM21H1 = . if (A1SM21H1 == 7 | A1SM21H1 == 8 | A1SM21H1 == 9)
replace A1SM21H2 = . if (A1SM21H2 == 7 | A1SM21H2 == 8 | A1SM21H2 == 9)
replace A1SM21H3 = . if (A1SM21H3 == 7 | A1SM21H3 == 8 | A1SM21H3 == 9)
replace A1SM21I1 = . if (A1SM21I1 == 7 | A1SM21I1 == 8 | A1SM21I1 == 9)
replace A1SM21I2 = . if (A1SM21I2 == 7 | A1SM21I2 == 8 | A1SM21I2 == 9)
replace A1SM21I3 = . if (A1SM21I3 == 7 | A1SM21I3 == 8 | A1SM21I3 == 9)
replace A1SM21J1 = . if (A1SM21J1 == 7 | A1SM21J1 == 8 | A1SM21J1 == 9)
replace A1SM21J2 = . if (A1SM21J2 == 7 | A1SM21J2 == 8 | A1SM21J2 == 9)
replace A1SM21J3 = . if (A1SM21J3 == 7 | A1SM21J3 == 8 | A1SM21J3 == 9)
replace SKIP_SN1 = . if (SKIP_SN1 == 7 | SKIP_SN1 == 8 | SKIP_SN1 == 9)
replace A1SN1 = . if (A1SN1 == 98 | A1SN1 == 99)
replace A1SN2 = . if (A1SN2 == 98 | A1SN2 == 99)
replace A1SN3 = . if (A1SN3 == 98 | A1SN3 == 99)
replace A1SN4 = . if (A1SN4 == 98 | A1SN4 == 99)
replace A1SN5 = . if (A1SN5 == 98 | A1SN5 == 99)
replace A1SN6A = . if (A1SN6A == 7 | A1SN6A == 8 | A1SN6A == 9)
replace A1SN6B = . if (A1SN6B == 7 | A1SN6B == 8 | A1SN6B == 9)
replace A1SN6C = . if (A1SN6C == 7 | A1SN6C == 8 | A1SN6C == 9)
replace A1SN6D = . if (A1SN6D == 7 | A1SN6D == 8 | A1SN6D == 9)
replace A1SN6E = . if (A1SN6E == 7 | A1SN6E == 8 | A1SN6E == 9)
replace A1SN6F = . if (A1SN6F == 7 | A1SN6F == 8 | A1SN6F == 9)
replace A1SPIFAM = . if (A1SPIFAM == 9.000)
replace A1SN7A1 = . if (A1SN7A1 == 7 | A1SN7A1 == 8 | A1SN7A1 == 9)
replace A1SN7A2 = . if (A1SN7A2 == 7 | A1SN7A2 == 8 | A1SN7A2 == 9)
replace A1SN7B1 = . if (A1SN7B1 == 7 | A1SN7B1 == 8 | A1SN7B1 == 9)
replace A1SN7B2 = . if (A1SN7B2 == 7 | A1SN7B2 == 8 | A1SN7B2 == 9)
replace A1SN7C1 = . if (A1SN7C1 == 7 | A1SN7C1 == 8 | A1SN7C1 == 9)
replace A1SN7C2 = . if (A1SN7C2 == 7 | A1SN7C2 == 8 | A1SN7C2 == 9)
replace A1SN7D1 = . if (A1SN7D1 == 7 | A1SN7D1 == 8 | A1SN7D1 == 9)
replace A1SN7D2 = . if (A1SN7D2 == 7 | A1SN7D2 == 8 | A1SN7D2 == 9)
replace SKIP_SN8 = . if (SKIP_SN8 == 7 | SKIP_SN8 == 8 | SKIP_SN8 == 9)
replace A1SN8 = . if (A1SN8 == 97 | A1SN8 == 98 | A1SN8 == 99)
replace A1SN9 = . if (A1SN9 == 97 | A1SN9 == 98 | A1SN9 == 99)
replace A1SN10 = . if (A1SN10 == 7 | A1SN10 == 8 | A1SN10 == 9)
replace A1SN11 = . if (A1SN11 == 7 | A1SN11 == 8 | A1SN11 == 9)
replace SKIP_SP1 = . if (SKIP_SP1 == 7 | SKIP_SP1 == 8 | SKIP_SP1 == 9)
replace A1SP1 = . if (A1SP1 == 97 | A1SP1 == 98 | A1SP1 == 99)
replace A1SP2 = . if (A1SP2 == 97 | A1SP2 == 98 | A1SP2 == 99)
replace A1SP3 = . if (A1SP3 == 97 | A1SP3 == 98 | A1SP3 == 99)
replace A1SP4 = . if (A1SP4 == 97 | A1SP4 == 98 | A1SP4 == 99)
replace A1SP5 = . if (A1SP5 == 97 | A1SP5 == 98 | A1SP5 == 99)
replace A1SP6 = . if (A1SP6 == 7 | A1SP6 == 8 | A1SP6 == 9)
replace A1SP7 = . if (A1SP7 == 7 | A1SP7 == 8 | A1SP7 == 9)
replace A1SP8 = . if (A1SP8 == 7 | A1SP8 == 8 | A1SP8 == 9)
replace A1SP9A = . if (A1SP9A == 7 | A1SP9A == 8 | A1SP9A == 9)
replace A1SP9B = . if (A1SP9B == 7 | A1SP9B == 8 | A1SP9B == 9)
replace A1SP9C = . if (A1SP9C == 7 | A1SP9C == 8 | A1SP9C == 9)
replace A1SSPDIS = . if (A1SSPDIS == 99)
replace A1SMARRS = . if (A1SMARRS == 9.000)
replace A1SP10 = . if (A1SP10 == 7 | A1SP10 == 8 | A1SP10 == 9)
replace A1SP11 = . if (A1SP11 == 7 | A1SP11 == 8 | A1SP11 == 9)
replace A1SP12 = . if (A1SP12 == 7 | A1SP12 == 8 | A1SP12 == 9)
replace A1SP13 = . if (A1SP13 == 7 | A1SP13 == 8 | A1SP13 == 9)
replace A1SP14 = . if (A1SP14 == 7 | A1SP14 == 8 | A1SP14 == 9)
replace A1SP15 = . if (A1SP15 == 7 | A1SP15 == 8 | A1SP15 == 9)
replace A1SP16 = . if (A1SP16 == 7 | A1SP16 == 8 | A1SP16 == 9)
replace A1SSPSOL = . if (A1SSPSOL == 9)
replace A1SSPEMP = . if (A1SSPEMP == 9.000)
replace A1SP17 = . if (A1SP17 == 7 | A1SP17 == 8 | A1SP17 == 9)
replace A1SP18 = . if (A1SP18 == 7 | A1SP18 == 8 | A1SP18 == 9)
replace A1SP19 = . if (A1SP19 == 7 | A1SP19 == 8 | A1SP19 == 9)
replace A1SP20 = . if (A1SP20 == 7 | A1SP20 == 8 | A1SP20 == 9)
replace A1SP21 = . if (A1SP21 == 7 | A1SP21 == 8 | A1SP21 == 9)
replace A1SP22 = . if (A1SP22 == 7 | A1SP22 == 8 | A1SP22 == 9)
replace A1SSPCRI = . if (A1SSPCRI == 9.000)
replace A1SP23 = . if (A1SP23 == 97 | A1SP23 == 98 | A1SP23 == 99)
replace A1SP24 = . if (A1SP24 == 997 | A1SP24 == 998 | A1SP24 == 999)
replace A1SP25 = . if (A1SP25 == 997 | A1SP25 == 998 | A1SP25 == 999)
replace A1SP26 = . if (A1SP26 == 7 | A1SP26 == 8 | A1SP26 == 9)
replace A1SP27 = . if (A1SP27 == 7 | A1SP27 == 8 | A1SP27 == 9)
replace A1SP28A = . if (A1SP28A == 8 | A1SP28A == 9)
replace A1SP28B = . if (A1SP28B == 8 | A1SP28B == 9)
replace A1SP28C = . if (A1SP28C == 8 | A1SP28C == 9)
replace A1SP28D = . if (A1SP28D == 8 | A1SP28D == 9)
replace A1SSPDEC = . if (A1SSPDEC == 99)
replace A1SP29 = . if (A1SP29 == 7 | A1SP29 == 8 | A1SP29 == 9)
replace A1SP30 = . if (A1SP30 == 7 | A1SP30 == 8 | A1SP30 == 9)
replace A1SP31 = . if (A1SP31 == 7 | A1SP31 == 8 | A1SP31 == 9)
replace A1SP32 = . if (A1SP32 == 997 | A1SP32 == 998 | A1SP32 == 999)
replace A1SP33 = . if (A1SP33 == 97 | A1SP33 == 98 | A1SP33 == 99)
replace A1SP34A = . if (A1SP34A == 7 | A1SP34A == 8 | A1SP34A == 9)
replace A1SP34B = . if (A1SP34B == 7 | A1SP34B == 8 | A1SP34B == 9)
replace A1SP34C = . if (A1SP34C == 7 | A1SP34C == 8 | A1SP34C == 9)
replace A1SP34D = . if (A1SP34D == 7 | A1SP34D == 8 | A1SP34D == 9)
replace A1SP35 = . if (A1SP35 == 9997 | A1SP35 == 9998 | A1SP35 == 9999)
replace A1SP36 = . if (A1SP36 == 9997 | A1SP36 == 9998 | A1SP36 == 9999)
replace A1SP37 = . if (A1SP37 == 997 | A1SP37 == 998 | A1SP37 == 999)
replace A1SP38 = . if (A1SP38 == 7 | A1SP38 == 8 | A1SP38 == 9)
replace A1SQ1 = . if (A1SQ1 == 97 | A1SQ1 == 98 | A1SQ1 == 99)
replace A1SQ2 = . if (A1SQ2 == 97 | A1SQ2 == 98 | A1SQ2 == 99)
replace A1SQ3 = . if (A1SQ3 == 97 | A1SQ3 == 98 | A1SQ3 == 99)
replace A1SQ4 = . if (A1SQ4 == 97 | A1SQ4 == 98 | A1SQ4 == 99)
replace A1SQ5 = . if (A1SQ5 == 97 | A1SQ5 == 98 | A1SQ5 == 99)
replace A1SQ6 = . if (A1SQ6 == 97 | A1SQ6 == 98 | A1SQ6 == 99)
replace A1SQ7 = . if (A1SQ7 == 7 | A1SQ7 == 8 | A1SQ7 == 9)
replace A1SQ8 = . if (A1SQ8 == 7 | A1SQ8 == 8 | A1SQ8 == 9)
replace A1SR1 = . if (A1SR1 == 97 | A1SR1 == 98 | A1SR1 == 99)
replace A1SR1A = . if (A1SR1A == 7 | A1SR1A == 8 | A1SR1A == 9)
replace A1SR2A = . if (A1SR2A == 7 | A1SR2A == 8 | A1SR2A == 9)
replace A1SR2B = . if (A1SR2B == 7 | A1SR2B == 8 | A1SR2B == 9)
replace A1SR2C = . if (A1SR2C == 7 | A1SR2C == 8 | A1SR2C == 9)
replace A1SR2D = . if (A1SR2D == 7 | A1SR2D == 8 | A1SR2D == 9)
replace A1SR2E = . if (A1SR2E == 7 | A1SR2E == 8 | A1SR2E == 9)
replace A1SR2F = . if (A1SR2F == 7 | A1SR2F == 8 | A1SR2F == 9)
replace A1SR2G = . if (A1SR2G == 7 | A1SR2G == 8 | A1SR2G == 9)
replace A1SR2H = . if (A1SR2H == 7 | A1SR2H == 8 | A1SR2H == 9)
replace A1SR2I = . if (A1SR2I == 7 | A1SR2I == 8 | A1SR2I == 9)
replace A1SR3 = . if (A1SR3 == 7 | A1SR3 == 8 | A1SR3 == 9)
replace A1SR4 = . if (A1SR4 == 7 | A1SR4 == 8 | A1SR4 == 9)
replace A1SR5 = . if (A1SR5 == 7 | A1SR5 == 8 | A1SR5 == 9)
replace A1SR6 = . if (A1SR6 == 7 | A1SR6 == 8 | A1SR6 == 9)
replace SKIP_SR7 = . if (SKIP_SR7 == 7 | SKIP_SR7 == 8 | SKIP_SR7 == 9)
replace A1SR7 = . if (A1SR7 == 7 | A1SR7 == 8 | A1SR7 == 9)
replace A1SR8 = . if (A1SR8 == 7 | A1SR8 == 8 | A1SR8 == 9)
replace A1SA1S1_1 = . if (A1SA1S1_1 == 7 | A1SA1S1_1 == 8 | A1SA1S1_1 == 9)
replace A1SA1S1_2 = . if (A1SA1S1_2 == 7 | A1SA1S1_2 == 8 | A1SA1S1_2 == 9)
replace A1SA1S1_3 = . if (A1SA1S1_3 == 7 | A1SA1S1_3 == 8 | A1SA1S1_3 == 9)
replace A1SA1S1_4 = . if (A1SA1S1_4 == 7 | A1SA1S1_4 == 8 | A1SA1S1_4 == 9)
replace A1SA1S1_5 = . if (A1SA1S1_5 == 7 | A1SA1S1_5 == 8 | A1SA1S1_5 == 9)
replace A1SA1S1_6 = . if (A1SA1S1_6 == 7 | A1SA1S1_6 == 8 | A1SA1S1_6 == 9)
replace A1SA1S1_7 = . if (A1SA1S1_7 == 7 | A1SA1S1_7 == 8 | A1SA1S1_7 == 9)
replace A1SA1S1_8 = . if (A1SA1S1_8 == 7 | A1SA1S1_8 == 8 | A1SA1S1_8 == 9)
replace A1SA1S1_9 = . if (A1SA1S1_9 == 7 | A1SA1S1_9 == 8 | A1SA1S1_9 == 9)
replace A1SA1S1_10 = . if (A1SA1S1_10 == 7 | A1SA1S1_10 == 8 | A1SA1S1_10 == 9)
replace A1SA1S1_11 = . if (A1SA1S1_11 == 7 | A1SA1S1_11 == 8 | A1SA1S1_11 == 9)
replace A1SA1S1_12 = . if (A1SA1S1_12 == 7 | A1SA1S1_12 == 8 | A1SA1S1_12 == 9)
replace A1SA1S1_13 = . if (A1SA1S1_13 == 7 | A1SA1S1_13 == 8 | A1SA1S1_13 == 9)
replace A1SA1S1_14 = . if (A1SA1S1_14 == 7 | A1SA1S1_14 == 8 | A1SA1S1_14 == 9)
replace A1SA1S1_15 = . if (A1SA1S1_15 == 7 | A1SA1S1_15 == 8 | A1SA1S1_15 == 9)
replace A1SA1S1_16 = . if (A1SA1S1_16 == 7 | A1SA1S1_16 == 8 | A1SA1S1_16 == 9)
replace A1SA1S1_17 = . if (A1SA1S1_17 == 7 | A1SA1S1_17 == 8 | A1SA1S1_17 == 9)
replace A1SA1S1_18 = . if (A1SA1S1_18 == 7 | A1SA1S1_18 == 8 | A1SA1S1_18 == 9)
replace A1SA1S1_19 = . if (A1SA1S1_19 == 7 | A1SA1S1_19 == 8 | A1SA1S1_19 == 9)
replace A1SA1S1_20 = . if (A1SA1S1_20 == 7 | A1SA1S1_20 == 8 | A1SA1S1_20 == 9)
replace A1SA1S1_21 = . if (A1SA1S1_21 == 7 | A1SA1S1_21 == 8 | A1SA1S1_21 == 9)
replace A1SA1S1_22 = . if (A1SA1S1_22 == 7 | A1SA1S1_22 == 8 | A1SA1S1_22 == 9)
replace A1SA1S1_23 = . if (A1SA1S1_23 == 7 | A1SA1S1_23 == 8 | A1SA1S1_23 == 9)
replace A1SA1S1_24 = . if (A1SA1S1_24 == 7 | A1SA1S1_24 == 8 | A1SA1S1_24 == 9)
replace A1SA1S1_25 = . if (A1SA1S1_25 == 7 | A1SA1S1_25 == 8 | A1SA1S1_25 == 9)
replace A1SA1S1_26 = . if (A1SA1S1_26 == 7 | A1SA1S1_26 == 8 | A1SA1S1_26 == 9)
replace A1SA1S1_27 = . if (A1SA1S1_27 == 7 | A1SA1S1_27 == 8 | A1SA1S1_27 == 9)
replace A1SA1S1_28 = . if (A1SA1S1_28 == 7 | A1SA1S1_28 == 8 | A1SA1S1_28 == 9)
replace A1SA1S1_29 = . if (A1SA1S1_29 == 7 | A1SA1S1_29 == 8 | A1SA1S1_29 == 9)
replace A1SA1S1_30 = . if (A1SA1S1_30 == 7 | A1SA1S1_30 == 8 | A1SA1S1_30 == 9)
replace A1SA1S1_31 = . if (A1SA1S1_31 == 7 | A1SA1S1_31 == 8 | A1SA1S1_31 == 9)
replace A1SA1S1_32 = . if (A1SA1S1_32 == 7 | A1SA1S1_32 == 8 | A1SA1S1_32 == 9)
replace A1SA1S1_33 = . if (A1SA1S1_33 == 7 | A1SA1S1_33 == 8 | A1SA1S1_33 == 9)
replace A1SA1S1_34 = . if (A1SA1S1_34 == 7 | A1SA1S1_34 == 8 | A1SA1S1_34 == 9)
replace A1SA1S1_35 = . if (A1SA1S1_35 == 7 | A1SA1S1_35 == 8 | A1SA1S1_35 == 9)
replace A1SA1S1_36 = . if (A1SA1S1_36 == 7 | A1SA1S1_36 == 8 | A1SA1S1_36 == 9)
replace A1SA1S1_37 = . if (A1SA1S1_37 == 7 | A1SA1S1_37 == 8 | A1SA1S1_37 == 9)
replace A1SA1S1_38 = . if (A1SA1S1_38 == 7 | A1SA1S1_38 == 8 | A1SA1S1_38 == 9)
replace A1SA1S1_39 = . if (A1SA1S1_39 == 7 | A1SA1S1_39 == 8 | A1SA1S1_39 == 9)
replace A1SA1S1_40 = . if (A1SA1S1_40 == 7 | A1SA1S1_40 == 8 | A1SA1S1_40 == 9)
replace A1SA1S1_41 = . if (A1SA1S1_41 == 7 | A1SA1S1_41 == 8 | A1SA1S1_41 == 9)
replace A1SA1S1_42 = . if (A1SA1S1_42 == 7 | A1SA1S1_42 == 8 | A1SA1S1_42 == 9)
replace A1SA1S1_43 = . if (A1SA1S1_43 == 7 | A1SA1S1_43 == 8 | A1SA1S1_43 == 9)
replace A1SA1S1_44 = . if (A1SA1S1_44 == 7 | A1SA1S1_44 == 8 | A1SA1S1_44 == 9)
replace A1SA1S1_45 = . if (A1SA1S1_45 == 7 | A1SA1S1_45 == 8 | A1SA1S1_45 == 9)
replace A1SA1S1_46 = . if (A1SA1S1_46 == 7 | A1SA1S1_46 == 8 | A1SA1S1_46 == 9)
replace A1SA1S1_47 = . if (A1SA1S1_47 == 7 | A1SA1S1_47 == 8 | A1SA1S1_47 == 9)
replace A1SA1S1_48 = . if (A1SA1S1_48 == 7 | A1SA1S1_48 == 8 | A1SA1S1_48 == 9)
replace A1SA1S1_49 = . if (A1SA1S1_49 == 7 | A1SA1S1_49 == 8 | A1SA1S1_49 == 9)
replace A1SA1S1_50 = . if (A1SA1S1_50 == 7 | A1SA1S1_50 == 8 | A1SA1S1_50 == 9)
replace A1SA1S1_51 = . if (A1SA1S1_51 == 7 | A1SA1S1_51 == 8 | A1SA1S1_51 == 9)
replace A1SA1S1_52 = . if (A1SA1S1_52 == 7 | A1SA1S1_52 == 8 | A1SA1S1_52 == 9)
replace A1SA1S1_53 = . if (A1SA1S1_53 == 7 | A1SA1S1_53 == 8 | A1SA1S1_53 == 9)
replace A1SA1S1_54 = . if (A1SA1S1_54 == 7 | A1SA1S1_54 == 8 | A1SA1S1_54 == 9)
replace A1SA1S1_55 = . if (A1SA1S1_55 == 7 | A1SA1S1_55 == 8 | A1SA1S1_55 == 9)
replace A1SA1S1_56 = . if (A1SA1S1_56 == 7 | A1SA1S1_56 == 8 | A1SA1S1_56 == 9)
replace A1SA1S1_57 = . if (A1SA1S1_57 == 7 | A1SA1S1_57 == 8 | A1SA1S1_57 == 9)
replace A1SA1S1_58 = . if (A1SA1S1_58 == 7 | A1SA1S1_58 == 8 | A1SA1S1_58 == 9)
replace A1SA1S1_59 = . if (A1SA1S1_59 == 7 | A1SA1S1_59 == 8 | A1SA1S1_59 == 9)
replace A1SA1S1_60 = . if (A1SA1S1_60 == 7 | A1SA1S1_60 == 8 | A1SA1S1_60 == 9)
replace A1SA1S1_61 = . if (A1SA1S1_61 == 7 | A1SA1S1_61 == 8 | A1SA1S1_61 == 9)
replace A1SA1S1_62 = . if (A1SA1S1_62 == 7 | A1SA1S1_62 == 8 | A1SA1S1_62 == 9)
replace A1SA1S1_63 = . if (A1SA1S1_63 == 7 | A1SA1S1_63 == 8 | A1SA1S1_63 == 9)
replace A1SA1S1_64 = . if (A1SA1S1_64 == 7 | A1SA1S1_64 == 8 | A1SA1S1_64 == 9)
replace A1SA1S1_65 = . if (A1SA1S1_65 == 7 | A1SA1S1_65 == 8 | A1SA1S1_65 == 9)
replace A1SA1S1_66 = . if (A1SA1S1_66 == 7 | A1SA1S1_66 == 8 | A1SA1S1_66 == 9)
replace A1SA1S1_67 = . if (A1SA1S1_67 == 7 | A1SA1S1_67 == 8 | A1SA1S1_67 == 9)
replace A1SA1S1_68 = . if (A1SA1S1_68 == 7 | A1SA1S1_68 == 8 | A1SA1S1_68 == 9)
replace A1SA1S1_69 = . if (A1SA1S1_69 == 7 | A1SA1S1_69 == 8 | A1SA1S1_69 == 9)
replace A1SA1S1_70 = . if (A1SA1S1_70 == 7 | A1SA1S1_70 == 8 | A1SA1S1_70 == 9)
replace A1SA1S1_71 = . if (A1SA1S1_71 == 7 | A1SA1S1_71 == 8 | A1SA1S1_71 == 9)
replace A1SA1S1_72 = . if (A1SA1S1_72 == 7 | A1SA1S1_72 == 8 | A1SA1S1_72 == 9)
replace A1SA1S1_73 = . if (A1SA1S1_73 == 7 | A1SA1S1_73 == 8 | A1SA1S1_73 == 9)
replace A1SA1S1_74 = . if (A1SA1S1_74 == 7 | A1SA1S1_74 == 8 | A1SA1S1_74 == 9)
replace A1SA1S1_75 = . if (A1SA1S1_75 == 7 | A1SA1S1_75 == 8 | A1SA1S1_75 == 9)
replace A1SA1S1_76 = . if (A1SA1S1_76 == 7 | A1SA1S1_76 == 8 | A1SA1S1_76 == 9)
replace A1SA1S1_77 = . if (A1SA1S1_77 == 7 | A1SA1S1_77 == 8 | A1SA1S1_77 == 9)
replace A1SS2 = . if (A1SS2 == 97 | A1SS2 == 98 | A1SS2 == 99)
replace A1SS3 = . if (A1SS3 == 7 | A1SS3 == 8 | A1SS3 == 9)
replace A1SS4 = . if (A1SS4 == 7 | A1SS4 == 8 | A1SS4 == 9)
replace A1SS5 = . if (A1SS5 == 7 | A1SS5 == 8 | A1SS5 == 9)
replace A1SS6_1 = . if (A1SS6_1 == 7 | A1SS6_1 == 8 | A1SS6_1 == 9)
replace A1SS6_2 = . if (A1SS6_2 == 7 | A1SS6_2 == 8 | A1SS6_2 == 9)
replace A1SS6_3 = . if (A1SS6_3 == 7 | A1SS6_3 == 8 | A1SS6_3 == 9)
replace A1SS6_4 = . if (A1SS6_4 == 7 | A1SS6_4 == 8 | A1SS6_4 == 9)
replace A1SS6_5 = . if (A1SS6_5 == 7 | A1SS6_5 == 8 | A1SS6_5 == 9)
replace A1SS7 = . if (A1SS7 == 7 | A1SS7 == 8 | A1SS7 == 9)
replace A1SS8 = . if (A1SS8 == 7 | A1SS8 == 8 | A1SS8 == 9)
replace A1SS9 = . if (A1SS9 == 7 | A1SS9 == 8 | A1SS9 == 9)
replace A1SS10 = . if (A1SS10 == 7 | A1SS10 == 8 | A1SS10 == 9)
replace A1SS11 = . if (A1SS11 == 7 | A1SS11 == 8 | A1SS11 == 9)
replace A1SS12 = . if (A1SS12 == 7 | A1SS12 == 8 | A1SS12 == 9)
replace A1SS13A = . if (A1SS13A == 998)
replace A1SS13B = . if (A1SS13B == 97 | A1SS13B == 98 | A1SS13B == 99)
replace A1SS13C = . if (A1SS13C == 998)
replace A1SS13D = . if (A1SS13D == 997 | A1SS13D == 998 | A1SS13D == 999)
replace A1SS13E = . if (A1SS13E == 98)
replace A1SS13F = . if (A1SS13F == 97 | A1SS13F == 98 | A1SS13F == 99)
replace A1SS13G = . if (A1SS13G == 97 | A1SS13G == 98 | A1SS13G == 99)
replace A1SS13H = . if (A1SS13H == 998)
replace A1SS13I = . if (A1SS13I == 998)
replace A1SS13J = . if (A1SS13J == 997 | A1SS13J == 998 | A1SS13J == 999)
replace A1SS13K = . if (A1SS13K == 998)
replace A1SS14A = . if (A1SS14A == 7 | A1SS14A == 8 | A1SS14A == 9)
replace A1SS14B = . if (A1SS14B == 7 | A1SS14B == 8 | A1SS14B == 9)
replace A1SS14C = . if (A1SS14C == 7 | A1SS14C == 8 | A1SS14C == 9)
replace A1SS14D = . if (A1SS14D == 7 | A1SS14D == 8 | A1SS14D == 9)
replace A1SS14E = . if (A1SS14E == 7 | A1SS14E == 8 | A1SS14E == 9)
replace A1SS14F = . if (A1SS14F == 7 | A1SS14F == 8 | A1SS14F == 9)
replace A1SS14G = . if (A1SS14G == 7 | A1SS14G == 8 | A1SS14G == 9)
replace A1SS14H = . if (A1SS14H == 7 | A1SS14H == 8 | A1SS14H == 9)
replace A1SS14I = . if (A1SS14I == 7 | A1SS14I == 8 | A1SS14I == 9)
replace A1SDISCR = . if (A1SDISCR == 7 | A1SDISCR == 8 | A1SDISCR == 9)
replace A1SS15_1 = . if (A1SS15_1 == 7 | A1SS15_1 == 8 | A1SS15_1 == 9)
replace A1SS15_2 = . if (A1SS15_2 == 7 | A1SS15_2 == 8 | A1SS15_2 == 9)
replace A1SS15_3 = . if (A1SS15_3 == 7 | A1SS15_3 == 8 | A1SS15_3 == 9)
replace A1SS15_4 = . if (A1SS15_4 == 7 | A1SS15_4 == 8 | A1SS15_4 == 9)
replace A1SS15_5 = . if (A1SS15_5 == 7 | A1SS15_5 == 8 | A1SS15_5 == 9)
replace A1SS15_6 = . if (A1SS15_6 == 7 | A1SS15_6 == 8 | A1SS15_6 == 9)
replace A1SS15_7 = . if (A1SS15_7 == 7 | A1SS15_7 == 8 | A1SS15_7 == 9)
replace A1SS15_8 = . if (A1SS15_8 == 7 | A1SS15_8 == 8 | A1SS15_8 == 9)
replace A1SS15_9 = . if (A1SS15_9 == 7 | A1SS15_9 == 8 | A1SS15_9 == 9)
replace A1SS15_10 = . if (A1SS15_10 == 7 | A1SS15_10 == 8 | A1SS15_10 == 9)
replace A1SS16 = . if (A1SS16 == 7 | A1SS16 == 8 | A1SS16 == 9)
replace A1SS17 = . if (A1SS17 == 7 | A1SS17 == 8 | A1SS17 == 9)
replace A1ST1 = . if (A1ST1 == 97 | A1ST1 == 98 | A1ST1 == 99)
replace A1ST2 = . if (A1ST2 == 97 | A1ST2 == 98 | A1ST2 == 99)
replace A1ST3 = . if (A1ST3 == 97 | A1ST3 == 98 | A1ST3 == 99)
replace A1ST4 = . if (A1ST4 == 97 | A1ST4 == 98 | A1ST4 == 99)
replace A1ST5 = . if (A1ST5 == 97 | A1ST5 == 98 | A1ST5 == 99)
replace A1SSATIS = . if (A1SSATIS == 99.000)


*/
/********************************************************************

 Section 5: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace

