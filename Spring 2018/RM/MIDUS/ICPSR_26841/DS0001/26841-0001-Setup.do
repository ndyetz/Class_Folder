/**************************************************************************
 |                                                                         
 |                    STATA SETUP FILE FOR ICPSR 26841
 |      NATIONAL SURVEY OF MIDLIFE IN THE UNITED STATES (MIDUS II):
 |                    DAILY STRESS PROJECT, 2004-2009
 |                            (DATASET 0001: )
 |
 |
 |  Please edit this file as instructed below.
 |  To execute, start Stata, change to the directory containing:
 |       - this do file
 |       - the ASCII data file
 |       - the dictionary file
 |
 |  Then execute the do file (e.g., do 26841-0001-statasetup.do)
 |
 **************************************************************************/

set mem 20m  /* Allocating 20 megabyte(s) of RAM for Stata SE to read the
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


label data "National Survey of Midlife in the United States (MIDUS II): Daily Stress Project, 2004-2009"

#delimit ;
label define SAMPLMAJ  1 "Main RDD" 2 "Sibling" 3 "Twin" 4 "City oversample"
                       13 "Milwaukee" 14 "Boston New" ;
label define B1PAGE_M2 98 "REFUSED" 99 "INAPP (NO M2 PARTICIPATION)" ;
label define B1PGENDER 1 "Male" 2 "Female" 8 "Refused/Unknown" ;
label define B2DDAY    1 "DAY 1" 2 "DAY 2" 3 "DAY 3" 4 "DAY 4" 5 "DAY 5"
                       6 "DAY 6" 7 "DAY 7" 8 "DAY 8" ;
label define B2DMISS   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DDAYT   1 "DAYTIME" 5 "EVENING" 7 "DON'T KNOW"
                       8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DWEEKD  1 "MONDAY" 2 "TUESDAY" 3 "WEDNESDAY" 4 "THURSDAY"
                       5 "FRIDAY" 6 "SATURDAY" 7 "SUNDAY" ;
label define B2DWAKE1  97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DWAKE2  97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DWAKE3  1 "AM" 5 "PM" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DAW1CH  97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DAW1CM  97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DA1H    97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DA1M    97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DA2H    97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DA2M    97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DA3H    97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DA3M    97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DA3AH2  97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DA3AM2  97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DA3AAP  1 "AM" 5 "PM" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA3BH2  97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DA3BM2  97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DA3BAP  1 "AM" 5 "PM" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA4H    97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DA4M    97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DAW4H   97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DAW4M   97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DA4AH   97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DA4AM   97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DAW5AH  97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DAW5AM  97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DAW5AA  1 "AM" 5 "PM" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA9     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA9AH   97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DA9AM   97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DA10    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA10A1  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA10A2  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA10A3  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA10A4  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA10A5  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA10A6  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA10A7  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA10A8  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA10A9  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1010  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1011  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1012  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1013  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1014  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1015  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1016  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1017  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1018  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1019  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1020  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1021  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1022  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1023  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1024  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1025  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA10BH  97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DA10BM  97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DA11    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA11A1  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA11A2  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA11A3  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA11A4  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA11A5  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA11A6  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA11A7  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA11A8  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA11A9  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1110  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1111  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1112  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1113  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1114  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1115  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1116  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1117  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1118  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1119  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1120  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1121  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1122  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1123  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1124  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1125  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA11BH  97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DA11BM  97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DA12    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA12A1  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA12A2  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA12A3  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA12A4  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA12A5  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA12A6  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA12A7  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA12A8  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA12A9  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1210  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1211  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1212  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1213  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1214  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1215  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1216  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1217  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1218  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1220  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1221  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1222  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1223  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1224  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1225  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA12BH  97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DA12BM  97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DA13    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA13A1  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA13A2  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA13A3  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA13A4  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA13A5  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA13A6  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA13A7  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA13A8  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA13A9  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1310  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1311  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1312  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1313  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1314  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1315  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1316  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1317  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1318  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1319  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1320  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1321  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1322  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1323  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1324  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA1325  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DA13BH  97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DA13BM  97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DAC1    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DAC2D1  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DAC2D2  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DAC2D3  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DAC2D4  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DAC2D5  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DAC2D6  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DAC2D7  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DAC2D8  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DAC2D9  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DAC21A  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DAC21B  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DAC21C  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DAC21D  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DAC21E  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DAC21F  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DAC21G  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DAC21H  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DAC21I  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DAC21J  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DAC21K  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DAC21L  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DAC21M  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DAC21N  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DAC21O  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DAC3    1 "EMOTIONAL" 2 "PHYSICAL" 3 "COMBINATION" 4 "OTHER"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DAC4H   97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DAC4M   97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DB1A    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DB1A2   1 "VERY MILD" 10 "VERY SEVERE" 97 "DON'T KNOW"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DB1B    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DB1B2   1 "VERY MILD" 10 "VERY SEVERE" 97 "DON'T KNOW"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DB1C    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DB1C2   1 "VERY MILD" 10 "VERY SEVERE" 97 "DON'T KNOW"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DB1D    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DB1D2   1 "VERY MILD" 10 "VERY SEVERE" 97 "DON'T KNOW"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DB1E    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DB1E2   1 "VERY MILD" 10 "VERY SEVERE" 97 "DON'T KNOW"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DB1F    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DB1F2   1 "VERY MILD" 10 "VERY SEVERE" 97 "DON'T KNOW"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DB1G    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DB1G2   1 "VERY MILD" 10 "VERY SEVERE" 97 "DON'T KNOW"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DB1H    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DB1H2   1 "VERY MILD" 10 "VERY SEVERE" 97 "DON'T KNOW"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DB1I    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DB1I2   1 "VERY MILD" 10 "VERY SEVERE" 97 "DON'T KNOW"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DB1J    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DB1J2   1 "VERY MILD" 10 "VERY SEVERE" 97 "DON'T KNOW"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DB1K    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DB1K2   1 "VERY MILD" 10 "VERY SEVERE" 97 "DON'T KNOW"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DB1L    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DB1L2   1 "VERY MILD" 10 "VERY SEVERE" 97 "DON'T KNOW"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DB1LA   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DB1LA2  1 "VERY MILD" 10 "VERY SEVERE" 97 "DON'T KNOW"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DB1M    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DB1M2   1 "VERY MILD" 10 "VERY SEVERE" 97 "DON'T KNOW"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DB1N    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DB1N2   1 "VERY MILD" 10 "VERY SEVERE" 97 "DON'T KNOW"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DB1O    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DB1O2   1 "VERY MILD" 10 "VERY SEVERE" 97 "DON'T KNOW"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DB1P    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DB1P2   1 "VERY MILD" 10 "VERY SEVERE" 97 "DON'T KNOW"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DB1Q    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DB1Q2   1 "VERY MILD" 10 "VERY SEVERE" 97 "DON'T KNOW"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DB1R    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DB1R2   1 "VERY MILD" 10 "VERY SEVERE" 97 "DON'T KNOW"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DB1S    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DB1S2   1 "VERY MILD" 10 "VERY SEVERE" 97 "DON'T KNOW"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DB1T    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DB1T2   1 "VERY MILD" 10 "VERY SEVERE" 97 "DON'T KNOW"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DB1U    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DB1U2   1 "VERY MILD" 10 "VERY SEVERE" 97 "DON'T KNOW"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DB1V    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DB1V2   1 "VERY MILD" 10 "VERY SEVERE" 97 "DON'T KNOW"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DB1W    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DB1W2   1 "VERY MILD" 10 "VERY SEVERE" 97 "DON'T KNOW"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DB1X    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DB1X2   1 "VERY MILD" 10 "VERY SEVERE" 97 "DON'T KNOW"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DB1Y    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DB1Y2   1 "VERY MILD" 10 "VERY SEVERE" 97 "DON'T KNOW"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DB1Z    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DB1Z2   1 "VERY MILD" 10 "VERY SEVERE" 97 "DON'T KNOW"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DB1LEG  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DB1LE2  1 "VERY MILD" 10 "VERY SEVERE" 97 "DON'T KNOW"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DB2     997 "DON'T KNOW" 998 "REFUSED/MISSING"
                       999 "INAPPLICABLE" ;
label define B2DB3     997 "DON'T KNOW" 998 "REFUSED/MISSING"
                       999 "INAPPLICABLE" ;
label define B2DC1     0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DC2     0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DC3     0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DC4     0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DC5     0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DC6     0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DC7     0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DC8     0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DC9     0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DC10    0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DC11    0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DC12    0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DC13    0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DC14    0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DC15    0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DC16    0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DC17    0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DC18    0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DC19    0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DC20    0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DC21    0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DC22    0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DC23    0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DC24    0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DC25    0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DC26    0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DC27    0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DD1     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DD1A    0 "DID NOT DO ANY WORK" 10 "DID ALL WORK"
                       97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DD1B    1 "PHYSICAL" 2 "EMOTIONAL" 3 "ALCOHOL" 4 "COMBINATION"
                       5 "OTHER" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DD2     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DD2A    1 "PHYSICAL" 2 "EMOTIONAL" 3 "ALCOHOL" 4 "COMBINATION"
                       5 "OTHER" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DD3     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DD3A    1 "PHYSICAL" 2 "EMOTIONAL" 3 "ALCOHOL" 4 "COMBINATION"
                       5 "OTHER" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DD4     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DD4A    1 "SPOUSE OR PARTNER (INCLUDESS EX-)"
                       2 "CHILD OR GRANDCHILD (INCLUDES STEP-)"
                       3 "PARENT (INCLUDESS STEP-)"
                       4 "SIBLING (INCLUDES STEP-)"
                       5 "OTHER RELATIVE (INCLUDES IN-LAWS)" 6 "FRIEND"
                       7 "NEIGHBOR" 8 "COWORKER OR FELLOW STUDENT"
                       9 "BOSS OR TEACHER" 10 "EMPLOYEE OR SUPERVISEE"
                       11 "OTHER (SPECIFY)" 12 "STRANGER"
                       13 "RELIGIOUS GROUP MEMBER (INCLUDING MINISTER)"
                       14 "SELF-HELP GROUP (AA, THERAPIST, COUNSELOR)"
                       15 "CLIENT/ CUSTOMER/ PATIENT" 16 "GROUPS"
                       17 "NO ONE ELSE INVOLVED" 20 "LANDLORD/REALTOR"
                       21 "FAMILY (GENERAL)" 22 "PETS"
                       23 "HEALTH PROFESSIONALS"
                       24 "HOME RELATED PEOPLE/COMPANIES" 97 "DON'T KNOW"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DF1     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DF1A    1 "SPOUSE OR PARTNER (INCLUDESS EX-)"
                       2 "CHILD OR GRANDCHILD (INCLUDES STEP-)"
                       3 "PARENT (INCLUDESS STEP-)"
                       4 "SIBLING (INCLUDES STEP-)"
                       5 "OTHER RELATIVE (INCLUDES IN-LAWS)" 6 "FRIEND"
                       7 "NEIGHBOR" 8 "COWORKER OR FELLOW STUDENT"
                       9 "BOSS OR TEACHER" 10 "EMPLOYEE OR SUPERVISEE"
                       11 "OTHER (SPECIFY)" 12 "STRANGER"
                       13 "RELIGIOUS GROUP MEMBER (INCLUDING MINISTER)"
                       14 "SELF-HELP GROUP (AA, THERAPIST, COUNSELOR)"
                       15 "CLIENT/ CUSTOMER/ PATIENT" 16 "GROUPS"
                       20 "LANDLORD/REALTOR" 21 "FAMILY (GENERAL)" 22 "PETS"
                       23 "HEALTH PROFESSIONALS"
                       24 "HOME RELATED PEOPLE/COMPANIES" 97 "DON'T KNOW"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DF1A1   1 "YESTERDAY" 5 "TODAY" 7 "DON'T KNOW"
                       8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF1A2H  97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DF1A2M  97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DF1A2A  1 "AM" 5 "PM" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DF1C    0 "NOT AT ALL" 1 "NOT VERY" 2 "SOMEWHAT" 3 "VERY"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF1WC1  0 "NOT AT ALL" 1 "NOT VERY" 2 "SOMEWHAT" 3 "VERY"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF1WC2  0 "NOT AT ALL" 1 "NOT VERY" 2 "SOMEWHAT" 3 "VERY"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF1WC3  0 "NOT AT ALL" 1 "NOT VERY" 2 "SOMEWHAT" 3 "VERY"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF1WC4  0 "NOT AT ALL" 1 "NOT VERY" 2 "SOMEWHAT" 3 "VERY"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF1WC5  0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF1WC6  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DF1D    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF1E    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF1F    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF1G    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF1H    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF1I    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF1J    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF2     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DF2A    1 "SPOUSE OR PARTNER (INCLUDESS EX-)"
                       2 "CHILD OR GRANDCHILD (INCLUDES STEP-)"
                       3 "PARENT (INCLUDESS STEP-)"
                       4 "SIBLING (INCLUDES STEP-)"
                       5 "OTHER RELATIVE (INCLUDES IN-LAWS)" 6 "FRIEND"
                       7 "NEIGHBOR" 8 "COWORKER OR FELLOW STUDENT"
                       9 "BOSS OR TEACHER" 10 "EMPLOYEE OR SUPERVISEE"
                       11 "OTHER (SPECIFY)" 12 "STRANGER"
                       13 "RELIGIOUS GROUP MEMBER (INCLUDING MINISTER)"
                       14 "SELF-HELP GROUP (AA, THERAPIST, COUNSELOR)"
                       15 "CLIENT/ CUSTOMER/ PATIENT" 16 "GROUPS"
                       20 "LANDLORD/REALTOR" 21 "FAMILY (GENERAL)" 22 "PETS"
                       23 "HEALTH PROFESSIONALS"
                       24 "HOME RELATED PEOPLE/COMPANIES"
                       25 "NO ONE ELSE INVOLVED" 97 "DON'T KNOW"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DF2A1   1 "YESTERDAY" 5 "TODAY" 7 "DON'T KNOW"
                       8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF2A2H  97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DF2A2M  97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DF2A2A  1 "AM" 5 "PM" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DF2C    0 "NOT AT ALL" 1 "NOT VERY" 2 "SOMEWHAT" 3 "VERY"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF2WC1  0 "NOT AT ALL" 1 "NOT VERY" 2 "SOMEWHAT" 3 "VERY"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF2WC2  0 "NOT AT ALL" 1 "NOT VERY" 2 "SOMEWHAT" 3 "VERY"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF2WC3  0 "NOT AT ALL" 1 "NOT VERY" 2 "SOMEWHAT" 3 "VERY"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF2WC4  0 "NOT AT ALL" 1 "NOT VERY" 2 "SOMEWHAT" 3 "VERY"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF2WC5  0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF2WC6  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DF2D    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF2E    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF2F    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF2G    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF2H    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF2I    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF2J    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF3     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DF3A1   1 "YESTERDAY" 5 "TODAY" 7 "DON'T KNOW"
                       8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF3A2H  97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DF3A2M  97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DF3A2A  1 "AM" 5 "PM" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DF3B    0 "NOT AT ALL" 1 "NOT VERY" 2 "SOMEWHAT" 3 "VERY"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF3WB1  0 "NOT AT ALL" 1 "NOT VERY" 2 "SOMEWHAT" 3 "VERY"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF3WB2  0 "NOT AT ALL" 1 "NOT VERY" 2 "SOMEWHAT" 3 "VERY"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF3WB3  0 "NOT AT ALL" 1 "NOT VERY" 2 "SOMEWHAT" 3 "VERY"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF3WB4  0 "NOT AT ALL" 1 "NOT VERY" 2 "SOMEWHAT" 3 "VERY"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF3WB5  0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF3WB6  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DF3C    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF3D    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF3E    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF3F    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF3G    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF3H    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF3I    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF4     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DF4A1   1 "YESTERDAY" 5 "TODAY" 7 "DON'T KNOW"
                       8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF4A2H  97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DF4A2M  97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DF4A2A  1 "AM" 5 "PM" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DF4B    0 "NOT AT ALL" 1 "NOT VERY" 2 "SOMEWHAT" 3 "VERY"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF4WB1  0 "NOT AT ALL" 1 "NOT VERY" 2 "SOMEWHAT" 3 "VERY"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF4WB2  0 "NOT AT ALL" 1 "NOT VERY" 2 "SOMEWHAT" 3 "VERY"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF4WB3  0 "NOT AT ALL" 1 "NOT VERY" 2 "SOMEWHAT" 3 "VERY"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF4WB4  0 "NOT AT ALL" 1 "NOT VERY" 2 "SOMEWHAT" 3 "VERY"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF4WB5  0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF4WB6  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DF4C    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF4D    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF4E    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF4F    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF4G    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF4H    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF4I    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF5     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DF5A_1  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DF5A_2  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DF5A_3  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DF5A_4  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DF5A_5  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DF5A_6  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DF5A1   1 "YESTERDAY" 5 "TODAY" 7 "DON'T KNOW"
                       8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF5A2H  97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DF5A2M  97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DF5A2A  1 "AM" 5 "PM" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DF5C    0 "NOT AT ALL" 1 "NOT VERY" 2 "SOMEWHAT" 3 "VERY"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF5WC1  0 "NOT AT ALL" 1 "NOT VERY" 2 "SOMEWHAT" 3 "VERY"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF5WC2  0 "NOT AT ALL" 1 "NOT VERY" 2 "SOMEWHAT" 3 "VERY"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF5WC3  0 "NOT AT ALL" 1 "NOT VERY" 2 "SOMEWHAT" 3 "VERY"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF5WC4  0 "NOT AT ALL" 1 "NOT VERY" 2 "SOMEWHAT" 3 "VERY"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF5WC5  0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF5WC6  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DF5D    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF5E    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF5F    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF5G    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF5H    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF5I    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF5J    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF6     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DF6A    1 "SPOUSE OR PARTNER (INCLUDESS EX-)"
                       2 "CHILD OR GRANDCHILD (INCLUDES STEP-)"
                       3 "PARENT (INCLUDESS STEP-)"
                       4 "SIBLING (INCLUDES STEP-)"
                       5 "OTHER RELATIVE (INCLUDES IN-LAWS)" 6 "FRIEND"
                       7 "NEIGHBOR" 8 "COWORKER OR FELLOW STUDENT"
                       9 "BOSS OR TEACHER" 10 "EMPLOYEE OR SUPERVISEE"
                       11 "OTHER (SPECIFY)" 12 "STRANGER"
                       13 "RELIGIOUS GROUP MEMBER (INCLUDING MINISTER)"
                       14 "SELF-HELP GROUP (AA, THERAPIST, COUNSELOR)"
                       15 "CLIENT/ CUSTOMER/ PATIENT" 16 "GROUPS"
                       20 "LANDLORD/REALTOR" 21 "FAMILY (GENERAL)" 22 "PETS"
                       23 "HEALTH PROFESSIONALS"
                       24 "HOME RELATED PEOPLE/COMPANIES" 97 "DON'T KNOW"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DF6A1   1 "YESTERDAY" 5 "TODAY" 7 "DON'T KNOW"
                       8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF6A2H  97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DF6A2M  97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DF6A2A  1 "AM" 5 "PM" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DF6C    0 "NOT AT ALL" 1 "NOT VERY" 2 "SOMEWHAT" 3 "VERY"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF6WC1  0 "NOT AT ALL" 1 "NOT VERY" 2 "SOMEWHAT" 3 "VERY"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF6WC2  0 "NOT AT ALL" 1 "NOT VERY" 2 "SOMEWHAT" 3 "VERY"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF6WC3  0 "NOT AT ALL" 1 "NOT VERY" 2 "SOMEWHAT" 3 "VERY"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF6WC4  0 "NOT AT ALL" 1 "NOT VERY" 2 "SOMEWHAT" 3 "VERY"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF6WC5  0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF6WC6  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DF6D    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF6E    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF6F    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF6G    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF6H    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF6I    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF6J    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF7     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DF7A    1 "YESTERDAY" 5 "TODAY" 7 "DON'T KNOW"
                       8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF7A1H  97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DF7A1M  97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DF7A1A  1 "AM" 5 "PM" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DF7B    0 "NOT AT ALL" 1 "NOT VERY" 2 "SOMEWHAT" 3 "VERY"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF7WB1  0 "NOT AT ALL" 1 "NOT VERY" 2 "SOMEWHAT" 3 "VERY"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF7WB2  0 "NOT AT ALL" 1 "NOT VERY" 2 "SOMEWHAT" 3 "VERY"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF7WB3  0 "NOT AT ALL" 1 "NOT VERY" 2 "SOMEWHAT" 3 "VERY"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF7WB4  0 "NOT AT ALL" 1 "NOT VERY" 2 "SOMEWHAT" 3 "VERY"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF7WB5  0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF7WB6  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DF7C    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF7D    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF7E    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF7F    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF7G    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF7H    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF7I    0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       7 "DON'T KNOW" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF8     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DF8A    1 "SPOUSE OR PARTNER (INCLUDESS EX-)"
                       2 "CHILD OR GRANDCHILD (INCLUDES STEP-)"
                       3 "PARENT (INCLUDESS STEP-)"
                       4 "SIBLING (INCLUDES STEP-)"
                       5 "OTHER RELATIVE (INCLUDES IN-LAWS)" 6 "FRIEND"
                       7 "NEIGHBOR" 8 "COWORKER OR FELLOW STUDENT"
                       9 "BOSS OR TEACHER" 10 "EMPLOYEE OR SUPERVISEE"
                       11 "OTHER (SPECIFY)" 12 "STRANGER"
                       13 "RELIGIOUS GROUP MEMBER (INCLUDING MINISTER)"
                       14 "SELF-HELP GROUP (AA, THERAPIST, COUNSELOR)"
                       15 "CLIENT/ CUSTOMER/ PATIENT" 16 "GROUPS"
                       20 "LANDLORD/REALTOR" 21 "FAMILY (GENERAL)" 22 "PETS"
                       23 "HEALTH PROFESSIONALS"
                       24 "HOME RELATED PEOPLE/COMPANIES"
                       25 "NO ONE ELSE INVOLVED" 97 "DON'T KNOW"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DF8A1   1 "YESTERDAY" 5 "TODAY" 7 "DON'T KNOW"
                       8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF8A2H  97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DF8A2M  97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DF8A2A  1 "AM" 5 "PM" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DF9     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DF9A    1 "SPOUSE OR PARTNER (INCLUDESS EX-)"
                       2 "CHILD OR GRANDCHILD (INCLUDES STEP-)"
                       3 "PARENT (INCLUDESS STEP-)"
                       4 "SIBLING (INCLUDES STEP-)"
                       5 "OTHER RELATIVE (INCLUDES IN-LAWS)" 6 "FRIEND"
                       7 "NEIGHBOR" 8 "COWORKER OR FELLOW STUDENT"
                       9 "BOSS OR TEACHER" 10 "EMPLOYEE OR SUPERVISEE"
                       11 "OTHER (SPECIFY)" 12 "STRANGER"
                       13 "RELIGIOUS GROUP MEMBER (INCLUDING MINISTER)"
                       14 "SELF-HELP GROUP (AA, THERAPIST, COUNSELOR)"
                       15 "CLIENT/ CUSTOMER/ PATIENT" 16 "GROUPS"
                       17 "NO ONE ELSE INVOLVED" 20 "LANDLORD/REALTOR"
                       21 "FAMILY (GENERAL)" 22 "PETS"
                       23 "HEALTH PROFESSIONALS"
                       24 "HOME RELATED PEOPLE/COMPANIES" 97 "DON'T KNOW"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DF9A1   1 "YESTERDAY" 5 "TODAY" 7 "DON'T KNOW"
                       8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF9H    97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DF9M    97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DF9AP   1 "AM" 5 "PM" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DF10    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DF10A   1 "SPOUSE OR PARTNER (INCLUDESS EX-)"
                       2 "CHILD OR GRANDCHILD (INCLUDES STEP-)"
                       3 "PARENT (INCLUDESS STEP-)"
                       4 "SIBLING (INCLUDES STEP-)"
                       5 "OTHER RELATIVE (INCLUDES IN-LAWS)" 6 "FRIEND"
                       7 "NEIGHBOR" 8 "COWORKER OR FELLOW STUDENT"
                       9 "BOSS OR TEACHER" 10 "EMPLOYEE OR SUPERVISEE"
                       11 "OTHER (SPECIFY)" 12 "STRANGER"
                       13 "RELIGIOUS GROUP MEMBER (INCLUDING MINISTER)"
                       14 "SELF-HELP GROUP (AA, THERAPIST, COUNSELOR)"
                       15 "CLIENT/ CUSTOMER/ PATIENT" 16 "GROUPS"
                       17 "NO ONE ELSE INVOLVED" 20 "LANDLORD/REALTOR"
                       21 "FAMILY (GENERAL)" 22 "PETS"
                       23 "HEALTH PROFESSIONALS"
                       24 "HOME RELATED PEOPLE/COMPANIES" 97 "DON'T KNOW"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DF10A1  1 "YESTERDAY" 5 "TODAY" 7 "DON'T KNOW"
                       8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF10H   97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DF10M   97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DF10AP  1 "AM" 5 "PM" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DF11    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DF11A   1 "SPOUSE OR PARTNER (INCLUDESS EX-)"
                       2 "CHILD OR GRANDCHILD (INCLUDES STEP-)"
                       3 "PARENT (INCLUDESS STEP-)"
                       4 "SIBLING (INCLUDES STEP-)"
                       5 "OTHER RELATIVE (INCLUDES IN-LAWS)" 6 "FRIEND"
                       7 "NEIGHBOR" 8 "COWORKER OR FELLOW STUDENT"
                       9 "BOSS OR TEACHER" 10 "EMPLOYEE OR SUPERVISEE"
                       11 "OTHER (SPECIFY)" 12 "STRANGER"
                       13 "RELIGIOUS GROUP MEMBER (INCLUDING MINISTER)"
                       14 "SELF-HELP GROUP (AA, THERAPIST, COUNSELOR)"
                       15 "CLIENT/ CUSTOMER/ PATIENT" 16 "GROUPS"
                       17 "NO ONE ELSE INVOLVED" 20 "LANDLORD/REALTOR"
                       21 "FAMILY (GENERAL)" 22 "PETS"
                       23 "HEALTH PROFESSIONALS"
                       24 "HOME RELATED PEOPLE/COMPANIES" 97 "DON'T KNOW"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DF11A1  1 "YESTERDAY" 5 "TODAY" 7 "DON'T KNOW"
                       8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF11H   97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DF11M   97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DF11AP  1 "AM" 5 "PM" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DF12    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DF12A   1 "SPOUSE OR PARTNER (INCLUDESS EX-)"
                       2 "CHILD OR GRANDCHILD (INCLUDES STEP-)"
                       3 "PARENT (INCLUDESS STEP-)"
                       4 "SIBLING (INCLUDES STEP-)"
                       5 "OTHER RELATIVE (INCLUDES IN-LAWS)" 6 "FRIEND"
                       7 "NEIGHBOR" 8 "COWORKER OR FELLOW STUDENT"
                       9 "BOSS OR TEACHER" 10 "EMPLOYEE OR SUPERVISEE"
                       11 "OTHER (SPECIFY)" 12 "STRANGER"
                       13 "RELIGIOUS GROUP MEMBER (INCLUDING MINISTER)"
                       14 "SELF-HELP GROUP (AA, THERAPIST, COUNSELOR)"
                       15 "CLIENT/ CUSTOMER/ PATIENT" 16 "GROUPS"
                       17 "NO ONE ELSE INVOLVED" 20 "LANDLORD/REALTOR"
                       21 "FAMILY (GENERAL)" 22 "PETS"
                       23 "HEALTH PROFESSIONALS"
                       24 "HOME RELATED PEOPLE/COMPANIES" 97 "DON'T KNOW"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DF12A1  1 "YESTERDAY" 5 "TODAY" 7 "DON'T KNOW"
                       8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DF12H   97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DF12M   97 "DON'T KNOW" 98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B2DF12AP  1 "AM" 5 "PM" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DH1_D8  0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DH2_D8  0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DH3_D8  0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DH4_D8  0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DH5_D8  0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DH6_D8  0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DH7_D8  0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DH8_D8  0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DH9_D8  0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DH10D8  0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DH11D8  0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DH12D8  0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DH13D8  0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DH14D8  0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DI1_D8  1 "MORE OFTEN" 2 "LESS OFTEN" 3 "ABOUT THE SAME"
                       4 "NEVER HAVE ANY" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DI1AD8  0 "A LITTLE" 1 "SOME" 2 "A LOT" 7 "DON'T KNOW"
                       8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DJ1_D8  0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DJ2_D8  0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DJ3_D8  0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DJ4_D8  0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DJ5_D8  0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DJ6_D8  0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DJ7_D8  0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DJ8_D8  0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DJ9_D8  0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DJ10D8  0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DJ11D8  0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DJ12D8  0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DJ13D8  0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DK1_D8  1 "MORE OFTEN" 2 "LESS OFTEN" 3 "ABOUT THE SAME"
                       4 "NEVER HAVE ANY" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DK1AD8  0 "A LITTLE" 1 "SOME" 2 "A LOT" 7 "DON'T KNOW"
                       8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DK2_D8  1 "MORE" 2 "FEWER" 3 "ABOUT THE SAME"
                       4 "NEVER HAVE ANY" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DK2AD8  0 "A LITTLE" 1 "SOME" 2 "A LOT" 7 "DON'T KNOW"
                       8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DK3_D8  1 "MORE" 2 "Less" 3 "ABOUT THE SAME"
                       4 "NEVER HAVE ANY" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DK3AD8  0 "A LITTLE" 1 "SOME" 2 "A LOT" 7 "DON'T KNOW"
                       8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B2DS14A   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DS14B   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DS14C   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DS14D   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DS14E   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DS14F   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DS14G   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DS14H   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DS14I   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DS15_1  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DS15_2  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DS15_3  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DS15_4  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DS15_5  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DS15_6  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DS15_7  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DS15_8  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DS15_9  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DS1510  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DS1511  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DS1512  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DMED1   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DMED2   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DMED3   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DMED4   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DMED5   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DMED6   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DMED7   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DMED8   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DMED9   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DMED10  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DCORT   1 "YES" 2 "NO" ;
label define B2DCDAY   1 "YES" 2 "NO" 8 "REFUSED/MISSING" ;
label define B2DSMART  1 "YES" 2 "NO" 8 "REFUSED/MISSING" ;
label define B2DCWDAY  1 "YES" 2 "NO" 8 "REFUSED/MISSING" ;
label define B2DCORW   999994 "UNRELIABLE" 999995 "NOT DONE" 999996 "EMPTY"
                       999998 "REFUSED/MISSING" ;
label define B2DCORA   999994 "UNRELIABLE" 999995 "NOT DONE" 999996 "EMPTY"
                       999998 "REFUSED/MISSING" ;
label define B2DCORL   999994 "UNRELIABLE" 999995 "NOT DONE" 999996 "EMPTY"
                       999998 "REFUSED/MISSING" ;
label define B2DCORB   999994 "UNRELIABLE" 999995 "NOT DONE" 999996 "EMPTY"
                       999998 "REFUSED/MISSING" ;
label define B2DCORWT  98 "REFUSED/MISSING" ;
label define B2DCORAT  98 "REFUSED/MISSING" ;
label define B2DCORLT  98 "REFUSED/MISSING" ;
label define B2DCORBT  98 "REFUSED/MISSING" ;
label define B2DTZONE  1 "PACIFIC" 2 "MOUNTAIN" 3 "CENTRAL" 4 "EASTERN"
                       5 "HAWAII" 7 "DON'T KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B2DN_STR  8 "REFUSED/MISSING" ;
label define B2DA_STR  1 "YES" 2 "NO" 8 "REFUSED/MISSING" ;
label define B2DSSEVS  98 "REFUSED/MISSING" ;
label define B2DSSEVA  0 "NOT AT ALL" 1 "NOT VERY" 2 "SOMEWHAT" 3 "VERY"
                       8 "REFUSED/MISSING" ;
label define B2DSNEGS  98 "REFUSED/MISSING" ;
label define B2DSNEGA  0 "NOT AT ALL" 1 "NOT VERY" 2 "SOMEWHAT" 3 "VERY"
                       8 "REFUSED/MISSING" ;
label define B2DSAPRA  0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       8 "REFUSED/MISSING" ;
label define B2DSAPRB  0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       8 "REFUSED/MISSING" ;
label define B2DSAPRC  0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       8 "REFUSED/MISSING" ;
label define B2DSAPRD  0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       8 "REFUSED/MISSING" ;
label define B2DSAPRE  0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       8 "REFUSED/MISSING" ;
label define B2DSAPRF  0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       8 "REFUSED/MISSING" ;
label define B2DSAPRG  0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       8 "REFUSED/MISSING" ;
label define B2DSCOTS  98 "REFUSED/MISSING" ;
label define B2DSCOTA  0 "NONE AT ALL" 1 "A LITTLE" 2 "SOME" 3 "A LOT"
                       8 "REFUSED/MISSING" ;
label define B2DN_SYM  98 "REFUSED/MISSING" ;
label define B2DA_SYM  1 "YES" 2 "NO" 8 "REFUSED/MISSING" ;
label define B2DSYMAV  1 "VERY MILD" 10 "VERY SEVERE" 98 "REFUSED/MISSING" ;
label define B2DN_POS  8 "REFUSED/MISSING" ;
label define B2DA_POS  1 "YES" 2 "NO" 8 "REFUSED/MISSING" ;
label define B2DPOSAV  0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 8 "REFUSED/MISSING" ;
label define B2DNEGAV  0 "NONE OF THE TIME" 1 "A LITTLE OF THE TIME"
                       2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALL OF THE TIME" 8 "REFUSED/MISSING" ;


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
replace B1PAGE_M2 = . if (B1PAGE_M2 == 98 | B1PAGE_M2 == 99)
replace B1PGENDER = . if (B1PGENDER == 8)
replace B2DDAYT = . if (B2DDAYT == 7 | B2DDAYT == 8 | B2DDAYT == 9)
replace B2DWAKE1 = . if (B2DWAKE1 == 97 | B2DWAKE1 == 98 | B2DWAKE1 == 99)
replace B2DWAKE2 = . if (B2DWAKE2 == 97 | B2DWAKE2 == 98 | B2DWAKE2 == 99)
replace B2DWAKE3 = . if (B2DWAKE3 == 7 | B2DWAKE3 == 8 | B2DWAKE3 == 9)
replace B2DAW1CH = . if (B2DAW1CH == 97 | B2DAW1CH == 98 | B2DAW1CH == 99)
replace B2DAW1CM = . if (B2DAW1CM == 97 | B2DAW1CM == 98 | B2DAW1CM == 99)
replace B2DA1H = . if (B2DA1H == 97 | B2DA1H == 98 | B2DA1H == 99)
replace B2DA1M = . if (B2DA1M == 97 | B2DA1M == 98 | B2DA1M == 99)
replace B2DA2H = . if (B2DA2H == 97 | B2DA2H == 98 | B2DA2H == 99)
replace B2DA2M = . if (B2DA2M == 97 | B2DA2M == 98 | B2DA2M == 99)
replace B2DA3H = . if (B2DA3H == 97 | B2DA3H == 98 | B2DA3H == 99)
replace B2DA3M = . if (B2DA3M == 97 | B2DA3M == 98 | B2DA3M == 99)
replace B2DA3AH2 = . if (B2DA3AH2 == 97 | B2DA3AH2 == 98 | B2DA3AH2 == 99)
replace B2DA3AM2 = . if (B2DA3AM2 == 97 | B2DA3AM2 == 98 | B2DA3AM2 == 99)
replace B2DA3AAP = . if (B2DA3AAP == 7 | B2DA3AAP == 8 | B2DA3AAP == 9)
replace B2DA3BH2 = . if (B2DA3BH2 == 97 | B2DA3BH2 == 98 | B2DA3BH2 == 99)
replace B2DA3BM2 = . if (B2DA3BM2 == 97 | B2DA3BM2 == 98 | B2DA3BM2 == 99)
replace B2DA3BAP = . if (B2DA3BAP == 7 | B2DA3BAP == 8 | B2DA3BAP == 9)
replace B2DA4H = . if (B2DA4H == 97 | B2DA4H == 98 | B2DA4H == 99)
replace B2DA4M = . if (B2DA4M == 97 | B2DA4M == 98 | B2DA4M == 99)
replace B2DAW4H = . if (B2DAW4H == 97 | B2DAW4H == 98 | B2DAW4H == 99)
replace B2DAW4M = . if (B2DAW4M == 97 | B2DAW4M == 98 | B2DAW4M == 99)
replace B2DA4AH = . if (B2DA4AH == 97 | B2DA4AH == 98 | B2DA4AH == 99)
replace B2DA4AM = . if (B2DA4AM == 97 | B2DA4AM == 98 | B2DA4AM == 99)
replace B2DAW5AH = . if (B2DAW5AH == 97 | B2DAW5AH == 98 | B2DAW5AH == 99)
replace B2DAW5AM = . if (B2DAW5AM == 97 | B2DAW5AM == 98 | B2DAW5AM == 99)
replace B2DAW5AA = . if (B2DAW5AA == 7 | B2DAW5AA == 8 | B2DAW5AA == 9)
replace B2DA9 = . if (B2DA9 == 7 | B2DA9 == 8 | B2DA9 == 9)
replace B2DA9AH = . if (B2DA9AH == 97 | B2DA9AH == 98 | B2DA9AH == 99)
replace B2DA9AM = . if (B2DA9AM == 97 | B2DA9AM == 98 | B2DA9AM == 99)
replace B2DA10 = . if (B2DA10 == 7 | B2DA10 == 8 | B2DA10 == 9)
replace B2DA10A1 = . if (B2DA10A1 == 7 | B2DA10A1 == 8 | B2DA10A1 == 9)
replace B2DA10A2 = . if (B2DA10A2 == 7 | B2DA10A2 == 8 | B2DA10A2 == 9)
replace B2DA10A3 = . if (B2DA10A3 == 7 | B2DA10A3 == 8 | B2DA10A3 == 9)
replace B2DA10A4 = . if (B2DA10A4 == 7 | B2DA10A4 == 8 | B2DA10A4 == 9)
replace B2DA10A5 = . if (B2DA10A5 == 7 | B2DA10A5 == 8 | B2DA10A5 == 9)
replace B2DA10A6 = . if (B2DA10A6 == 7 | B2DA10A6 == 8 | B2DA10A6 == 9)
replace B2DA10A7 = . if (B2DA10A7 == 7 | B2DA10A7 == 8 | B2DA10A7 == 9)
replace B2DA10A8 = . if (B2DA10A8 == 7 | B2DA10A8 == 8 | B2DA10A8 == 9)
replace B2DA10A9 = . if (B2DA10A9 == 7 | B2DA10A9 == 8 | B2DA10A9 == 9)
replace B2DA1010 = . if (B2DA1010 == 7 | B2DA1010 == 8 | B2DA1010 == 9)
replace B2DA1011 = . if (B2DA1011 == 7 | B2DA1011 == 8 | B2DA1011 == 9)
replace B2DA1012 = . if (B2DA1012 == 7 | B2DA1012 == 8 | B2DA1012 == 9)
replace B2DA1013 = . if (B2DA1013 == 7 | B2DA1013 == 8 | B2DA1013 == 9)
replace B2DA1014 = . if (B2DA1014 == 7 | B2DA1014 == 8 | B2DA1014 == 9)
replace B2DA1015 = . if (B2DA1015 == 7 | B2DA1015 == 8 | B2DA1015 == 9)
replace B2DA1016 = . if (B2DA1016 == 7 | B2DA1016 == 8 | B2DA1016 == 9)
replace B2DA1017 = . if (B2DA1017 == 7 | B2DA1017 == 8 | B2DA1017 == 9)
replace B2DA1018 = . if (B2DA1018 == 7 | B2DA1018 == 8 | B2DA1018 == 9)
replace B2DA1019 = . if (B2DA1019 == 7 | B2DA1019 == 8 | B2DA1019 == 9)
replace B2DA1020 = . if (B2DA1020 == 7 | B2DA1020 == 8 | B2DA1020 == 9)
replace B2DA1021 = . if (B2DA1021 == 7 | B2DA1021 == 8 | B2DA1021 == 9)
replace B2DA1022 = . if (B2DA1022 == 7 | B2DA1022 == 8 | B2DA1022 == 9)
replace B2DA1023 = . if (B2DA1023 == 7 | B2DA1023 == 8 | B2DA1023 == 9)
replace B2DA1024 = . if (B2DA1024 == 7 | B2DA1024 == 8 | B2DA1024 == 9)
replace B2DA1025 = . if (B2DA1025 == 7 | B2DA1025 == 8 | B2DA1025 == 9)
replace B2DA10BH = . if (B2DA10BH == 97 | B2DA10BH == 98 | B2DA10BH == 99)
replace B2DA10BM = . if (B2DA10BM == 97 | B2DA10BM == 98 | B2DA10BM == 99)
replace B2DA11 = . if (B2DA11 == 7 | B2DA11 == 8 | B2DA11 == 9)
replace B2DA11A1 = . if (B2DA11A1 == 7 | B2DA11A1 == 8 | B2DA11A1 == 9)
replace B2DA11A2 = . if (B2DA11A2 == 7 | B2DA11A2 == 8 | B2DA11A2 == 9)
replace B2DA11A3 = . if (B2DA11A3 == 7 | B2DA11A3 == 8 | B2DA11A3 == 9)
replace B2DA11A4 = . if (B2DA11A4 == 7 | B2DA11A4 == 8 | B2DA11A4 == 9)
replace B2DA11A5 = . if (B2DA11A5 == 7 | B2DA11A5 == 8 | B2DA11A5 == 9)
replace B2DA11A6 = . if (B2DA11A6 == 7 | B2DA11A6 == 8 | B2DA11A6 == 9)
replace B2DA11A7 = . if (B2DA11A7 == 7 | B2DA11A7 == 8 | B2DA11A7 == 9)
replace B2DA11A8 = . if (B2DA11A8 == 7 | B2DA11A8 == 8 | B2DA11A8 == 9)
replace B2DA11A9 = . if (B2DA11A9 == 7 | B2DA11A9 == 8 | B2DA11A9 == 9)
replace B2DA1110 = . if (B2DA1110 == 7 | B2DA1110 == 8 | B2DA1110 == 9)
replace B2DA1111 = . if (B2DA1111 == 7 | B2DA1111 == 8 | B2DA1111 == 9)
replace B2DA1112 = . if (B2DA1112 == 7 | B2DA1112 == 8 | B2DA1112 == 9)
replace B2DA1113 = . if (B2DA1113 == 7 | B2DA1113 == 8 | B2DA1113 == 9)
replace B2DA1114 = . if (B2DA1114 == 7 | B2DA1114 == 8 | B2DA1114 == 9)
replace B2DA1115 = . if (B2DA1115 == 7 | B2DA1115 == 8 | B2DA1115 == 9)
replace B2DA1116 = . if (B2DA1116 == 7 | B2DA1116 == 8 | B2DA1116 == 9)
replace B2DA1117 = . if (B2DA1117 == 7 | B2DA1117 == 8 | B2DA1117 == 9)
replace B2DA1118 = . if (B2DA1118 == 7 | B2DA1118 == 8 | B2DA1118 == 9)
replace B2DA1119 = . if (B2DA1119 == 7 | B2DA1119 == 8 | B2DA1119 == 9)
replace B2DA1120 = . if (B2DA1120 == 7 | B2DA1120 == 8 | B2DA1120 == 9)
replace B2DA1121 = . if (B2DA1121 == 7 | B2DA1121 == 8 | B2DA1121 == 9)
replace B2DA1122 = . if (B2DA1122 == 7 | B2DA1122 == 8 | B2DA1122 == 9)
replace B2DA1123 = . if (B2DA1123 == 7 | B2DA1123 == 8 | B2DA1123 == 9)
replace B2DA1124 = . if (B2DA1124 == 7 | B2DA1124 == 8 | B2DA1124 == 9)
replace B2DA1125 = . if (B2DA1125 == 7 | B2DA1125 == 8 | B2DA1125 == 9)
replace B2DA11BH = . if (B2DA11BH == 97 | B2DA11BH == 98 | B2DA11BH == 99)
replace B2DA11BM = . if (B2DA11BM == 97 | B2DA11BM == 98 | B2DA11BM == 99)
replace B2DA12 = . if (B2DA12 == 7 | B2DA12 == 8 | B2DA12 == 9)
replace B2DA12A1 = . if (B2DA12A1 == 7 | B2DA12A1 == 8 | B2DA12A1 == 9)
replace B2DA12A2 = . if (B2DA12A2 == 7 | B2DA12A2 == 8 | B2DA12A2 == 9)
replace B2DA12A3 = . if (B2DA12A3 == 7 | B2DA12A3 == 8 | B2DA12A3 == 9)
replace B2DA12A4 = . if (B2DA12A4 == 7 | B2DA12A4 == 8 | B2DA12A4 == 9)
replace B2DA12A5 = . if (B2DA12A5 == 7 | B2DA12A5 == 8 | B2DA12A5 == 9)
replace B2DA12A6 = . if (B2DA12A6 == 7 | B2DA12A6 == 8 | B2DA12A6 == 9)
replace B2DA12A7 = . if (B2DA12A7 == 7 | B2DA12A7 == 8 | B2DA12A7 == 9)
replace B2DA12A8 = . if (B2DA12A8 == 7 | B2DA12A8 == 8 | B2DA12A8 == 9)
replace B2DA12A9 = . if (B2DA12A9 == 7 | B2DA12A9 == 8 | B2DA12A9 == 9)
replace B2DA1210 = . if (B2DA1210 == 7 | B2DA1210 == 8 | B2DA1210 == 9)
replace B2DA1211 = . if (B2DA1211 == 7 | B2DA1211 == 8 | B2DA1211 == 9)
replace B2DA1212 = . if (B2DA1212 == 7 | B2DA1212 == 8 | B2DA1212 == 9)
replace B2DA1213 = . if (B2DA1213 == 7 | B2DA1213 == 8 | B2DA1213 == 9)
replace B2DA1214 = . if (B2DA1214 == 7 | B2DA1214 == 8 | B2DA1214 == 9)
replace B2DA1215 = . if (B2DA1215 == 7 | B2DA1215 == 8 | B2DA1215 == 9)
replace B2DA1216 = . if (B2DA1216 == 7 | B2DA1216 == 8 | B2DA1216 == 9)
replace B2DA1217 = . if (B2DA1217 == 7 | B2DA1217 == 8 | B2DA1217 == 9)
replace B2DA1218 = . if (B2DA1218 == 7 | B2DA1218 == 8 | B2DA1218 == 9)
replace B2DA1220 = . if (B2DA1220 == 7 | B2DA1220 == 8 | B2DA1220 == 9)
replace B2DA1221 = . if (B2DA1221 == 7 | B2DA1221 == 8 | B2DA1221 == 9)
replace B2DA1222 = . if (B2DA1222 == 7 | B2DA1222 == 8 | B2DA1222 == 9)
replace B2DA1223 = . if (B2DA1223 == 7 | B2DA1223 == 8 | B2DA1223 == 9)
replace B2DA1224 = . if (B2DA1224 == 7 | B2DA1224 == 8 | B2DA1224 == 9)
replace B2DA1225 = . if (B2DA1225 == 7 | B2DA1225 == 8 | B2DA1225 == 9)
replace B2DA12BH = . if (B2DA12BH == 97 | B2DA12BH == 98 | B2DA12BH == 99)
replace B2DA12BM = . if (B2DA12BM == 97 | B2DA12BM == 98 | B2DA12BM == 99)
replace B2DA13 = . if (B2DA13 == 7 | B2DA13 == 8 | B2DA13 == 9)
replace B2DA13A1 = . if (B2DA13A1 == 7 | B2DA13A1 == 8 | B2DA13A1 == 9)
replace B2DA13A2 = . if (B2DA13A2 == 7 | B2DA13A2 == 8 | B2DA13A2 == 9)
replace B2DA13A3 = . if (B2DA13A3 == 7 | B2DA13A3 == 8 | B2DA13A3 == 9)
replace B2DA13A4 = . if (B2DA13A4 == 7 | B2DA13A4 == 8 | B2DA13A4 == 9)
replace B2DA13A5 = . if (B2DA13A5 == 7 | B2DA13A5 == 8 | B2DA13A5 == 9)
replace B2DA13A6 = . if (B2DA13A6 == 7 | B2DA13A6 == 8 | B2DA13A6 == 9)
replace B2DA13A7 = . if (B2DA13A7 == 7 | B2DA13A7 == 8 | B2DA13A7 == 9)
replace B2DA13A8 = . if (B2DA13A8 == 7 | B2DA13A8 == 8 | B2DA13A8 == 9)
replace B2DA13A9 = . if (B2DA13A9 == 7 | B2DA13A9 == 8 | B2DA13A9 == 9)
replace B2DA1310 = . if (B2DA1310 == 7 | B2DA1310 == 8 | B2DA1310 == 9)
replace B2DA1311 = . if (B2DA1311 == 7 | B2DA1311 == 8 | B2DA1311 == 9)
replace B2DA1312 = . if (B2DA1312 == 7 | B2DA1312 == 8 | B2DA1312 == 9)
replace B2DA1313 = . if (B2DA1313 == 7 | B2DA1313 == 8 | B2DA1313 == 9)
replace B2DA1314 = . if (B2DA1314 == 7 | B2DA1314 == 8 | B2DA1314 == 9)
replace B2DA1315 = . if (B2DA1315 == 7 | B2DA1315 == 8 | B2DA1315 == 9)
replace B2DA1316 = . if (B2DA1316 == 7 | B2DA1316 == 8 | B2DA1316 == 9)
replace B2DA1317 = . if (B2DA1317 == 7 | B2DA1317 == 8 | B2DA1317 == 9)
replace B2DA1318 = . if (B2DA1318 == 7 | B2DA1318 == 8 | B2DA1318 == 9)
replace B2DA1319 = . if (B2DA1319 == 7 | B2DA1319 == 8 | B2DA1319 == 9)
replace B2DA1320 = . if (B2DA1320 == 7 | B2DA1320 == 8 | B2DA1320 == 9)
replace B2DA1321 = . if (B2DA1321 == 7 | B2DA1321 == 8 | B2DA1321 == 9)
replace B2DA1322 = . if (B2DA1322 == 7 | B2DA1322 == 8 | B2DA1322 == 9)
replace B2DA1323 = . if (B2DA1323 == 7 | B2DA1323 == 8 | B2DA1323 == 9)
replace B2DA1324 = . if (B2DA1324 == 7 | B2DA1324 == 8 | B2DA1324 == 9)
replace B2DA1325 = . if (B2DA1325 == 7 | B2DA1325 == 8 | B2DA1325 == 9)
replace B2DA13BH = . if (B2DA13BH == 97 | B2DA13BH == 98 | B2DA13BH == 99)
replace B2DA13BM = . if (B2DA13BM == 97 | B2DA13BM == 98 | B2DA13BM == 99)
replace B2DAC1 = . if (B2DAC1 == 7 | B2DAC1 == 8 | B2DAC1 == 9)
replace B2DAC2D1 = . if (B2DAC2D1 == 7 | B2DAC2D1 == 8 | B2DAC2D1 == 9)
replace B2DAC2D2 = . if (B2DAC2D2 == 7 | B2DAC2D2 == 8 | B2DAC2D2 == 9)
replace B2DAC2D3 = . if (B2DAC2D3 == 7 | B2DAC2D3 == 8 | B2DAC2D3 == 9)
replace B2DAC2D4 = . if (B2DAC2D4 == 7 | B2DAC2D4 == 8 | B2DAC2D4 == 9)
replace B2DAC2D5 = . if (B2DAC2D5 == 7 | B2DAC2D5 == 8 | B2DAC2D5 == 9)
replace B2DAC2D6 = . if (B2DAC2D6 == 7 | B2DAC2D6 == 8 | B2DAC2D6 == 9)
replace B2DAC2D7 = . if (B2DAC2D7 == 7 | B2DAC2D7 == 8 | B2DAC2D7 == 9)
replace B2DAC2D8 = . if (B2DAC2D8 == 7 | B2DAC2D8 == 8 | B2DAC2D8 == 9)
replace B2DAC2D9 = . if (B2DAC2D9 == 7 | B2DAC2D9 == 8 | B2DAC2D9 == 9)
replace B2DAC21A = . if (B2DAC21A == 7 | B2DAC21A == 8 | B2DAC21A == 9)
replace B2DAC21B = . if (B2DAC21B == 7 | B2DAC21B == 8 | B2DAC21B == 9)
replace B2DAC21C = . if (B2DAC21C == 7 | B2DAC21C == 8 | B2DAC21C == 9)
replace B2DAC21D = . if (B2DAC21D == 7 | B2DAC21D == 8 | B2DAC21D == 9)
replace B2DAC21E = . if (B2DAC21E == 7 | B2DAC21E == 8 | B2DAC21E == 9)
replace B2DAC21F = . if (B2DAC21F == 7 | B2DAC21F == 8 | B2DAC21F == 9)
replace B2DAC21G = . if (B2DAC21G == 7 | B2DAC21G == 8 | B2DAC21G == 9)
replace B2DAC21H = . if (B2DAC21H == 7 | B2DAC21H == 8 | B2DAC21H == 9)
replace B2DAC21I = . if (B2DAC21I == 7 | B2DAC21I == 8 | B2DAC21I == 9)
replace B2DAC21J = . if (B2DAC21J == 7 | B2DAC21J == 8 | B2DAC21J == 9)
replace B2DAC21K = . if (B2DAC21K == 7 | B2DAC21K == 8 | B2DAC21K == 9)
replace B2DAC21L = . if (B2DAC21L == 7 | B2DAC21L == 8 | B2DAC21L == 9)
replace B2DAC21M = . if (B2DAC21M == 7 | B2DAC21M == 8 | B2DAC21M == 9)
replace B2DAC21N = . if (B2DAC21N == 7 | B2DAC21N == 8 | B2DAC21N == 9)
replace B2DAC21O = . if (B2DAC21O == 7 | B2DAC21O == 8 | B2DAC21O == 9)
replace B2DAC3 = . if (B2DAC3 == 7 | B2DAC3 == 8 | B2DAC3 == 9)
replace B2DAC4H = . if (B2DAC4H == 97 | B2DAC4H == 98 | B2DAC4H == 99)
replace B2DAC4M = . if (B2DAC4M == 97 | B2DAC4M == 98 | B2DAC4M == 99)
replace B2DB1A = . if (B2DB1A == 7 | B2DB1A == 8 | B2DB1A == 9)
replace B2DB1A2 = . if (B2DB1A2 == 97 | B2DB1A2 == 98 | B2DB1A2 == 99)
replace B2DB1B = . if (B2DB1B == 7 | B2DB1B == 8 | B2DB1B == 9)
replace B2DB1B2 = . if (B2DB1B2 == 97 | B2DB1B2 == 98 | B2DB1B2 == 99)
replace B2DB1C = . if (B2DB1C == 7 | B2DB1C == 8 | B2DB1C == 9)
replace B2DB1C2 = . if (B2DB1C2 == 97 | B2DB1C2 == 98 | B2DB1C2 == 99)
replace B2DB1D = . if (B2DB1D == 7 | B2DB1D == 8 | B2DB1D == 9)
replace B2DB1D2 = . if (B2DB1D2 == 97 | B2DB1D2 == 98 | B2DB1D2 == 99)
replace B2DB1E = . if (B2DB1E == 7 | B2DB1E == 8 | B2DB1E == 9)
replace B2DB1E2 = . if (B2DB1E2 == 97 | B2DB1E2 == 98 | B2DB1E2 == 99)
replace B2DB1F = . if (B2DB1F == 7 | B2DB1F == 8 | B2DB1F == 9)
replace B2DB1F2 = . if (B2DB1F2 == 97 | B2DB1F2 == 98 | B2DB1F2 == 99)
replace B2DB1G = . if (B2DB1G == 7 | B2DB1G == 8 | B2DB1G == 9)
replace B2DB1G2 = . if (B2DB1G2 == 97 | B2DB1G2 == 98 | B2DB1G2 == 99)
replace B2DB1H = . if (B2DB1H == 7 | B2DB1H == 8 | B2DB1H == 9)
replace B2DB1H2 = . if (B2DB1H2 == 97 | B2DB1H2 == 98 | B2DB1H2 == 99)
replace B2DB1I = . if (B2DB1I == 7 | B2DB1I == 8 | B2DB1I == 9)
replace B2DB1I2 = . if (B2DB1I2 == 97 | B2DB1I2 == 98 | B2DB1I2 == 99)
replace B2DB1J = . if (B2DB1J == 7 | B2DB1J == 8 | B2DB1J == 9)
replace B2DB1J2 = . if (B2DB1J2 == 97 | B2DB1J2 == 98 | B2DB1J2 == 99)
replace B2DB1K = . if (B2DB1K == 7 | B2DB1K == 8 | B2DB1K == 9)
replace B2DB1K2 = . if (B2DB1K2 == 97 | B2DB1K2 == 98 | B2DB1K2 == 99)
replace B2DB1L = . if (B2DB1L == 7 | B2DB1L == 8 | B2DB1L == 9)
replace B2DB1L2 = . if (B2DB1L2 == 97 | B2DB1L2 == 98 | B2DB1L2 == 99)
replace B2DB1LA = . if (B2DB1LA == 7 | B2DB1LA == 8 | B2DB1LA == 9)
replace B2DB1LA2 = . if (B2DB1LA2 == 97 | B2DB1LA2 == 98 | B2DB1LA2 == 99)
replace B2DB1M = . if (B2DB1M == 7 | B2DB1M == 8 | B2DB1M == 9)
replace B2DB1M2 = . if (B2DB1M2 == 97 | B2DB1M2 == 98 | B2DB1M2 == 99)
replace B2DB1N = . if (B2DB1N == 7 | B2DB1N == 8 | B2DB1N == 9)
replace B2DB1N2 = . if (B2DB1N2 == 97 | B2DB1N2 == 98 | B2DB1N2 == 99)
replace B2DB1O = . if (B2DB1O == 7 | B2DB1O == 8 | B2DB1O == 9)
replace B2DB1O2 = . if (B2DB1O2 == 97 | B2DB1O2 == 98 | B2DB1O2 == 99)
replace B2DB1P = . if (B2DB1P == 7 | B2DB1P == 8 | B2DB1P == 9)
replace B2DB1P2 = . if (B2DB1P2 == 97 | B2DB1P2 == 98 | B2DB1P2 == 99)
replace B2DB1Q = . if (B2DB1Q == 7 | B2DB1Q == 8 | B2DB1Q == 9)
replace B2DB1Q2 = . if (B2DB1Q2 == 97 | B2DB1Q2 == 98 | B2DB1Q2 == 99)
replace B2DB1R = . if (B2DB1R == 7 | B2DB1R == 8 | B2DB1R == 9)
replace B2DB1R2 = . if (B2DB1R2 == 97 | B2DB1R2 == 98 | B2DB1R2 == 99)
replace B2DB1S = . if (B2DB1S == 7 | B2DB1S == 8 | B2DB1S == 9)
replace B2DB1S2 = . if (B2DB1S2 == 97 | B2DB1S2 == 98 | B2DB1S2 == 99)
replace B2DB1T = . if (B2DB1T == 7 | B2DB1T == 8 | B2DB1T == 9)
replace B2DB1T2 = . if (B2DB1T2 == 97 | B2DB1T2 == 98 | B2DB1T2 == 99)
replace B2DB1U = . if (B2DB1U == 7 | B2DB1U == 8 | B2DB1U == 9)
replace B2DB1U2 = . if (B2DB1U2 == 97 | B2DB1U2 == 98 | B2DB1U2 == 99)
replace B2DB1V = . if (B2DB1V == 7 | B2DB1V == 8 | B2DB1V == 9)
replace B2DB1V2 = . if (B2DB1V2 == 97 | B2DB1V2 == 98 | B2DB1V2 == 99)
replace B2DB1W = . if (B2DB1W == 7 | B2DB1W == 8 | B2DB1W == 9)
replace B2DB1W2 = . if (B2DB1W2 == 97 | B2DB1W2 == 98 | B2DB1W2 == 99)
replace B2DB1X = . if (B2DB1X == 7 | B2DB1X == 8 | B2DB1X == 9)
replace B2DB1X2 = . if (B2DB1X2 == 97 | B2DB1X2 == 98 | B2DB1X2 == 99)
replace B2DB1Y = . if (B2DB1Y == 7 | B2DB1Y == 8 | B2DB1Y == 9)
replace B2DB1Y2 = . if (B2DB1Y2 == 97 | B2DB1Y2 == 98 | B2DB1Y2 == 99)
replace B2DB1Z = . if (B2DB1Z == 7 | B2DB1Z == 8 | B2DB1Z == 9)
replace B2DB1Z2 = . if (B2DB1Z2 == 97 | B2DB1Z2 == 98 | B2DB1Z2 == 99)
replace B2DB1LEG = . if (B2DB1LEG == 7 | B2DB1LEG == 8 | B2DB1LEG == 9)
replace B2DB1LE2 = . if (B2DB1LE2 == 97 | B2DB1LE2 == 98 | B2DB1LE2 == 99)
replace B2DB2 = . if (B2DB2 == 997 | B2DB2 == 998 | B2DB2 == 999)
replace B2DB3 = . if (B2DB3 == 997 | B2DB3 == 998 | B2DB3 == 999)
replace B2DC1 = . if (B2DC1 == 7 | B2DC1 == 8 | B2DC1 == 9)
replace B2DC2 = . if (B2DC2 == 7 | B2DC2 == 8 | B2DC2 == 9)
replace B2DC3 = . if (B2DC3 == 7 | B2DC3 == 8 | B2DC3 == 9)
replace B2DC4 = . if (B2DC4 == 7 | B2DC4 == 8 | B2DC4 == 9)
replace B2DC5 = . if (B2DC5 == 7 | B2DC5 == 8 | B2DC5 == 9)
replace B2DC6 = . if (B2DC6 == 7 | B2DC6 == 8 | B2DC6 == 9)
replace B2DC7 = . if (B2DC7 == 7 | B2DC7 == 8 | B2DC7 == 9)
replace B2DC8 = . if (B2DC8 == 7 | B2DC8 == 8 | B2DC8 == 9)
replace B2DC9 = . if (B2DC9 == 7 | B2DC9 == 8 | B2DC9 == 9)
replace B2DC10 = . if (B2DC10 == 7 | B2DC10 == 8 | B2DC10 == 9)
replace B2DC11 = . if (B2DC11 == 7 | B2DC11 == 8 | B2DC11 == 9)
replace B2DC12 = . if (B2DC12 == 7 | B2DC12 == 8 | B2DC12 == 9)
replace B2DC13 = . if (B2DC13 == 7 | B2DC13 == 8 | B2DC13 == 9)
replace B2DC14 = . if (B2DC14 == 7 | B2DC14 == 8 | B2DC14 == 9)
replace B2DC15 = . if (B2DC15 == 7 | B2DC15 == 8 | B2DC15 == 9)
replace B2DC16 = . if (B2DC16 == 7 | B2DC16 == 8 | B2DC16 == 9)
replace B2DC17 = . if (B2DC17 == 7 | B2DC17 == 8 | B2DC17 == 9)
replace B2DC18 = . if (B2DC18 == 7 | B2DC18 == 8 | B2DC18 == 9)
replace B2DC19 = . if (B2DC19 == 7 | B2DC19 == 8 | B2DC19 == 9)
replace B2DC20 = . if (B2DC20 == 7 | B2DC20 == 8 | B2DC20 == 9)
replace B2DC21 = . if (B2DC21 == 7 | B2DC21 == 8 | B2DC21 == 9)
replace B2DC22 = . if (B2DC22 == 7 | B2DC22 == 8 | B2DC22 == 9)
replace B2DC23 = . if (B2DC23 == 7 | B2DC23 == 8 | B2DC23 == 9)
replace B2DC24 = . if (B2DC24 == 7 | B2DC24 == 8 | B2DC24 == 9)
replace B2DC25 = . if (B2DC25 == 7 | B2DC25 == 8 | B2DC25 == 9)
replace B2DC26 = . if (B2DC26 == 7 | B2DC26 == 8 | B2DC26 == 9)
replace B2DC27 = . if (B2DC27 == 7 | B2DC27 == 8 | B2DC27 == 9)
replace B2DD1 = . if (B2DD1 == 7 | B2DD1 == 8 | B2DD1 == 9)
replace B2DD1A = . if (B2DD1A == 97 | B2DD1A == 98 | B2DD1A == 99)
replace B2DD1B = . if (B2DD1B == 7 | B2DD1B == 8 | B2DD1B == 9)
replace B2DD2 = . if (B2DD2 == 7 | B2DD2 == 8 | B2DD2 == 9)
replace B2DD2A = . if (B2DD2A == 7 | B2DD2A == 8 | B2DD2A == 9)
replace B2DD3 = . if (B2DD3 == 7 | B2DD3 == 8 | B2DD3 == 9)
replace B2DD3A = . if (B2DD3A == 7 | B2DD3A == 8 | B2DD3A == 9)
replace B2DD4 = . if (B2DD4 == 7 | B2DD4 == 8 | B2DD4 == 9)
replace B2DD4A = . if (B2DD4A == 97 | B2DD4A == 98 | B2DD4A == 99)
replace B2DF1 = . if (B2DF1 == 7 | B2DF1 == 8 | B2DF1 == 9)
replace B2DF1A = . if (B2DF1A == 97 | B2DF1A == 98 | B2DF1A == 99)
replace B2DF1A1 = . if (B2DF1A1 == 7 | B2DF1A1 == 8 | B2DF1A1 == 9)
replace B2DF1A2H = . if (B2DF1A2H == 97 | B2DF1A2H == 98 | B2DF1A2H == 99)
replace B2DF1A2M = . if (B2DF1A2M == 97 | B2DF1A2M == 98 | B2DF1A2M == 99)
replace B2DF1A2A = . if (B2DF1A2A == 7 | B2DF1A2A == 8 | B2DF1A2A == 9)
replace B2DF1C = . if (B2DF1C == 7 | B2DF1C == 8 | B2DF1C == 9)
replace B2DF1WC1 = . if (B2DF1WC1 == 7 | B2DF1WC1 == 8 | B2DF1WC1 == 9)
replace B2DF1WC2 = . if (B2DF1WC2 == 7 | B2DF1WC2 == 8 | B2DF1WC2 == 9)
replace B2DF1WC3 = . if (B2DF1WC3 == 7 | B2DF1WC3 == 8 | B2DF1WC3 == 9)
replace B2DF1WC4 = . if (B2DF1WC4 == 7 | B2DF1WC4 == 8 | B2DF1WC4 == 9)
replace B2DF1WC5 = . if (B2DF1WC5 == 7 | B2DF1WC5 == 8 | B2DF1WC5 == 9)
replace B2DF1WC6 = . if (B2DF1WC6 == 7 | B2DF1WC6 == 8 | B2DF1WC6 == 9)
replace B2DF1D = . if (B2DF1D == 7 | B2DF1D == 8 | B2DF1D == 9)
replace B2DF1E = . if (B2DF1E == 7 | B2DF1E == 8 | B2DF1E == 9)
replace B2DF1F = . if (B2DF1F == 7 | B2DF1F == 8 | B2DF1F == 9)
replace B2DF1G = . if (B2DF1G == 7 | B2DF1G == 8 | B2DF1G == 9)
replace B2DF1H = . if (B2DF1H == 7 | B2DF1H == 8 | B2DF1H == 9)
replace B2DF1I = . if (B2DF1I == 7 | B2DF1I == 8 | B2DF1I == 9)
replace B2DF1J = . if (B2DF1J == 7 | B2DF1J == 8 | B2DF1J == 9)
replace B2DF2 = . if (B2DF2 == 7 | B2DF2 == 8 | B2DF2 == 9)
replace B2DF2A = . if (B2DF2A == 97 | B2DF2A == 98 | B2DF2A == 99)
replace B2DF2A1 = . if (B2DF2A1 == 7 | B2DF2A1 == 8 | B2DF2A1 == 9)
replace B2DF2A2H = . if (B2DF2A2H == 97 | B2DF2A2H == 98 | B2DF2A2H == 99)
replace B2DF2A2M = . if (B2DF2A2M == 97 | B2DF2A2M == 98 | B2DF2A2M == 99)
replace B2DF2A2A = . if (B2DF2A2A == 7 | B2DF2A2A == 8 | B2DF2A2A == 9)
replace B2DF2C = . if (B2DF2C == 7 | B2DF2C == 8 | B2DF2C == 9)
replace B2DF2WC1 = . if (B2DF2WC1 == 7 | B2DF2WC1 == 8 | B2DF2WC1 == 9)
replace B2DF2WC2 = . if (B2DF2WC2 == 7 | B2DF2WC2 == 8 | B2DF2WC2 == 9)
replace B2DF2WC3 = . if (B2DF2WC3 == 7 | B2DF2WC3 == 8 | B2DF2WC3 == 9)
replace B2DF2WC4 = . if (B2DF2WC4 == 7 | B2DF2WC4 == 8 | B2DF2WC4 == 9)
replace B2DF2WC5 = . if (B2DF2WC5 == 7 | B2DF2WC5 == 8 | B2DF2WC5 == 9)
replace B2DF2WC6 = . if (B2DF2WC6 == 7 | B2DF2WC6 == 8 | B2DF2WC6 == 9)
replace B2DF2D = . if (B2DF2D == 7 | B2DF2D == 8 | B2DF2D == 9)
replace B2DF2E = . if (B2DF2E == 7 | B2DF2E == 8 | B2DF2E == 9)
replace B2DF2F = . if (B2DF2F == 7 | B2DF2F == 8 | B2DF2F == 9)
replace B2DF2G = . if (B2DF2G == 7 | B2DF2G == 8 | B2DF2G == 9)
replace B2DF2H = . if (B2DF2H == 7 | B2DF2H == 8 | B2DF2H == 9)
replace B2DF2I = . if (B2DF2I == 7 | B2DF2I == 8 | B2DF2I == 9)
replace B2DF2J = . if (B2DF2J == 7 | B2DF2J == 8 | B2DF2J == 9)
replace B2DF3 = . if (B2DF3 == 7 | B2DF3 == 8 | B2DF3 == 9)
replace B2DF3A1 = . if (B2DF3A1 == 7 | B2DF3A1 == 8 | B2DF3A1 == 9)
replace B2DF3A2H = . if (B2DF3A2H == 97 | B2DF3A2H == 98 | B2DF3A2H == 99)
replace B2DF3A2M = . if (B2DF3A2M == 97 | B2DF3A2M == 98 | B2DF3A2M == 99)
replace B2DF3A2A = . if (B2DF3A2A == 7 | B2DF3A2A == 8 | B2DF3A2A == 9)
replace B2DF3B = . if (B2DF3B == 7 | B2DF3B == 8 | B2DF3B == 9)
replace B2DF3WB1 = . if (B2DF3WB1 == 7 | B2DF3WB1 == 8 | B2DF3WB1 == 9)
replace B2DF3WB2 = . if (B2DF3WB2 == 7 | B2DF3WB2 == 8 | B2DF3WB2 == 9)
replace B2DF3WB3 = . if (B2DF3WB3 == 7 | B2DF3WB3 == 8 | B2DF3WB3 == 9)
replace B2DF3WB4 = . if (B2DF3WB4 == 7 | B2DF3WB4 == 8 | B2DF3WB4 == 9)
replace B2DF3WB5 = . if (B2DF3WB5 == 7 | B2DF3WB5 == 8 | B2DF3WB5 == 9)
replace B2DF3WB6 = . if (B2DF3WB6 == 7 | B2DF3WB6 == 8 | B2DF3WB6 == 9)
replace B2DF3C = . if (B2DF3C == 7 | B2DF3C == 8 | B2DF3C == 9)
replace B2DF3D = . if (B2DF3D == 7 | B2DF3D == 8 | B2DF3D == 9)
replace B2DF3E = . if (B2DF3E == 7 | B2DF3E == 8 | B2DF3E == 9)
replace B2DF3F = . if (B2DF3F == 7 | B2DF3F == 8 | B2DF3F == 9)
replace B2DF3G = . if (B2DF3G == 7 | B2DF3G == 8 | B2DF3G == 9)
replace B2DF3H = . if (B2DF3H == 7 | B2DF3H == 8 | B2DF3H == 9)
replace B2DF3I = . if (B2DF3I == 7 | B2DF3I == 8 | B2DF3I == 9)
replace B2DF4 = . if (B2DF4 == 7 | B2DF4 == 8 | B2DF4 == 9)
replace B2DF4A1 = . if (B2DF4A1 == 7 | B2DF4A1 == 8 | B2DF4A1 == 9)
replace B2DF4A2H = . if (B2DF4A2H == 97 | B2DF4A2H == 98 | B2DF4A2H == 99)
replace B2DF4A2M = . if (B2DF4A2M == 97 | B2DF4A2M == 98 | B2DF4A2M == 99)
replace B2DF4A2A = . if (B2DF4A2A == 7 | B2DF4A2A == 8 | B2DF4A2A == 9)
replace B2DF4B = . if (B2DF4B == 7 | B2DF4B == 8 | B2DF4B == 9)
replace B2DF4WB1 = . if (B2DF4WB1 == 7 | B2DF4WB1 == 8 | B2DF4WB1 == 9)
replace B2DF4WB2 = . if (B2DF4WB2 == 7 | B2DF4WB2 == 8 | B2DF4WB2 == 9)
replace B2DF4WB3 = . if (B2DF4WB3 == 7 | B2DF4WB3 == 8 | B2DF4WB3 == 9)
replace B2DF4WB4 = . if (B2DF4WB4 == 7 | B2DF4WB4 == 8 | B2DF4WB4 == 9)
replace B2DF4WB5 = . if (B2DF4WB5 == 7 | B2DF4WB5 == 8 | B2DF4WB5 == 9)
replace B2DF4WB6 = . if (B2DF4WB6 == 7 | B2DF4WB6 == 8 | B2DF4WB6 == 9)
replace B2DF4C = . if (B2DF4C == 7 | B2DF4C == 8 | B2DF4C == 9)
replace B2DF4D = . if (B2DF4D == 7 | B2DF4D == 8 | B2DF4D == 9)
replace B2DF4E = . if (B2DF4E == 7 | B2DF4E == 8 | B2DF4E == 9)
replace B2DF4F = . if (B2DF4F == 7 | B2DF4F == 8 | B2DF4F == 9)
replace B2DF4G = . if (B2DF4G == 7 | B2DF4G == 8 | B2DF4G == 9)
replace B2DF4H = . if (B2DF4H == 7 | B2DF4H == 8 | B2DF4H == 9)
replace B2DF4I = . if (B2DF4I == 7 | B2DF4I == 8 | B2DF4I == 9)
replace B2DF5 = . if (B2DF5 == 7 | B2DF5 == 8 | B2DF5 == 9)
replace B2DF5A_1 = . if (B2DF5A_1 == 7 | B2DF5A_1 == 8 | B2DF5A_1 == 9)
replace B2DF5A_2 = . if (B2DF5A_2 == 7 | B2DF5A_2 == 8 | B2DF5A_2 == 9)
replace B2DF5A_3 = . if (B2DF5A_3 == 7 | B2DF5A_3 == 8 | B2DF5A_3 == 9)
replace B2DF5A_4 = . if (B2DF5A_4 == 7 | B2DF5A_4 == 8 | B2DF5A_4 == 9)
replace B2DF5A_5 = . if (B2DF5A_5 == 7 | B2DF5A_5 == 8 | B2DF5A_5 == 9)
replace B2DF5A_6 = . if (B2DF5A_6 == 7 | B2DF5A_6 == 8 | B2DF5A_6 == 9)
replace B2DF5A1 = . if (B2DF5A1 == 7 | B2DF5A1 == 8 | B2DF5A1 == 9)
replace B2DF5A2H = . if (B2DF5A2H == 97 | B2DF5A2H == 98 | B2DF5A2H == 99)
replace B2DF5A2M = . if (B2DF5A2M == 97 | B2DF5A2M == 98 | B2DF5A2M == 99)
replace B2DF5A2A = . if (B2DF5A2A == 7 | B2DF5A2A == 8 | B2DF5A2A == 9)
replace B2DF5C = . if (B2DF5C == 7 | B2DF5C == 8 | B2DF5C == 9)
replace B2DF5WC1 = . if (B2DF5WC1 == 7 | B2DF5WC1 == 8 | B2DF5WC1 == 9)
replace B2DF5WC2 = . if (B2DF5WC2 == 7 | B2DF5WC2 == 8 | B2DF5WC2 == 9)
replace B2DF5WC3 = . if (B2DF5WC3 == 7 | B2DF5WC3 == 8 | B2DF5WC3 == 9)
replace B2DF5WC4 = . if (B2DF5WC4 == 7 | B2DF5WC4 == 8 | B2DF5WC4 == 9)
replace B2DF5WC5 = . if (B2DF5WC5 == 7 | B2DF5WC5 == 8 | B2DF5WC5 == 9)
replace B2DF5WC6 = . if (B2DF5WC6 == 7 | B2DF5WC6 == 8 | B2DF5WC6 == 9)
replace B2DF5D = . if (B2DF5D == 7 | B2DF5D == 8 | B2DF5D == 9)
replace B2DF5E = . if (B2DF5E == 7 | B2DF5E == 8 | B2DF5E == 9)
replace B2DF5F = . if (B2DF5F == 7 | B2DF5F == 8 | B2DF5F == 9)
replace B2DF5G = . if (B2DF5G == 7 | B2DF5G == 8 | B2DF5G == 9)
replace B2DF5H = . if (B2DF5H == 7 | B2DF5H == 8 | B2DF5H == 9)
replace B2DF5I = . if (B2DF5I == 7 | B2DF5I == 8 | B2DF5I == 9)
replace B2DF5J = . if (B2DF5J == 7 | B2DF5J == 8 | B2DF5J == 9)
replace B2DF6 = . if (B2DF6 == 7 | B2DF6 == 8 | B2DF6 == 9)
replace B2DF6A = . if (B2DF6A == 97 | B2DF6A == 98 | B2DF6A == 99)
replace B2DF6A1 = . if (B2DF6A1 == 7 | B2DF6A1 == 8 | B2DF6A1 == 9)
replace B2DF6A2H = . if (B2DF6A2H == 97 | B2DF6A2H == 98 | B2DF6A2H == 99)
replace B2DF6A2M = . if (B2DF6A2M == 97 | B2DF6A2M == 98 | B2DF6A2M == 99)
replace B2DF6A2A = . if (B2DF6A2A == 7 | B2DF6A2A == 8 | B2DF6A2A == 9)
replace B2DF6C = . if (B2DF6C == 7 | B2DF6C == 8 | B2DF6C == 9)
replace B2DF6WC1 = . if (B2DF6WC1 == 7 | B2DF6WC1 == 8 | B2DF6WC1 == 9)
replace B2DF6WC2 = . if (B2DF6WC2 == 7 | B2DF6WC2 == 8 | B2DF6WC2 == 9)
replace B2DF6WC3 = . if (B2DF6WC3 == 7 | B2DF6WC3 == 8 | B2DF6WC3 == 9)
replace B2DF6WC4 = . if (B2DF6WC4 == 7 | B2DF6WC4 == 8 | B2DF6WC4 == 9)
replace B2DF6WC5 = . if (B2DF6WC5 == 7 | B2DF6WC5 == 8 | B2DF6WC5 == 9)
replace B2DF6WC6 = . if (B2DF6WC6 == 7 | B2DF6WC6 == 8 | B2DF6WC6 == 9)
replace B2DF6D = . if (B2DF6D == 7 | B2DF6D == 8 | B2DF6D == 9)
replace B2DF6E = . if (B2DF6E == 7 | B2DF6E == 8 | B2DF6E == 9)
replace B2DF6F = . if (B2DF6F == 7 | B2DF6F == 8 | B2DF6F == 9)
replace B2DF6G = . if (B2DF6G == 7 | B2DF6G == 8 | B2DF6G == 9)
replace B2DF6H = . if (B2DF6H == 7 | B2DF6H == 8 | B2DF6H == 9)
replace B2DF6I = . if (B2DF6I == 7 | B2DF6I == 8 | B2DF6I == 9)
replace B2DF6J = . if (B2DF6J == 7 | B2DF6J == 8 | B2DF6J == 9)
replace B2DF7 = . if (B2DF7 == 7 | B2DF7 == 8 | B2DF7 == 9)
replace B2DF7A = . if (B2DF7A == 7 | B2DF7A == 8 | B2DF7A == 9)
replace B2DF7A1H = . if (B2DF7A1H == 97 | B2DF7A1H == 98 | B2DF7A1H == 99)
replace B2DF7A1M = . if (B2DF7A1M == 97 | B2DF7A1M == 98 | B2DF7A1M == 99)
replace B2DF7A1A = . if (B2DF7A1A == 7 | B2DF7A1A == 8 | B2DF7A1A == 9)
replace B2DF7B = . if (B2DF7B == 7 | B2DF7B == 8 | B2DF7B == 9)
replace B2DF7WB1 = . if (B2DF7WB1 == 7 | B2DF7WB1 == 8 | B2DF7WB1 == 9)
replace B2DF7WB2 = . if (B2DF7WB2 == 7 | B2DF7WB2 == 8 | B2DF7WB2 == 9)
replace B2DF7WB3 = . if (B2DF7WB3 == 7 | B2DF7WB3 == 8 | B2DF7WB3 == 9)
replace B2DF7WB4 = . if (B2DF7WB4 == 7 | B2DF7WB4 == 8 | B2DF7WB4 == 9)
replace B2DF7WB5 = . if (B2DF7WB5 == 7 | B2DF7WB5 == 8 | B2DF7WB5 == 9)
replace B2DF7WB6 = . if (B2DF7WB6 == 7 | B2DF7WB6 == 8 | B2DF7WB6 == 9)
replace B2DF7C = . if (B2DF7C == 7 | B2DF7C == 8 | B2DF7C == 9)
replace B2DF7D = . if (B2DF7D == 7 | B2DF7D == 8 | B2DF7D == 9)
replace B2DF7E = . if (B2DF7E == 7 | B2DF7E == 8 | B2DF7E == 9)
replace B2DF7F = . if (B2DF7F == 7 | B2DF7F == 8 | B2DF7F == 9)
replace B2DF7G = . if (B2DF7G == 7 | B2DF7G == 8 | B2DF7G == 9)
replace B2DF7H = . if (B2DF7H == 7 | B2DF7H == 8 | B2DF7H == 9)
replace B2DF7I = . if (B2DF7I == 7 | B2DF7I == 8 | B2DF7I == 9)
replace B2DF8 = . if (B2DF8 == 7 | B2DF8 == 8 | B2DF8 == 9)
replace B2DF8A = . if (B2DF8A == 97 | B2DF8A == 98 | B2DF8A == 99)
replace B2DF8A1 = . if (B2DF8A1 == 7 | B2DF8A1 == 8 | B2DF8A1 == 9)
replace B2DF8A2H = . if (B2DF8A2H == 97 | B2DF8A2H == 98 | B2DF8A2H == 99)
replace B2DF8A2M = . if (B2DF8A2M == 97 | B2DF8A2M == 98 | B2DF8A2M == 99)
replace B2DF8A2A = . if (B2DF8A2A == 7 | B2DF8A2A == 8 | B2DF8A2A == 9)
replace B2DF9 = . if (B2DF9 == 7 | B2DF9 == 8 | B2DF9 == 9)
replace B2DF9A = . if (B2DF9A == 97 | B2DF9A == 98 | B2DF9A == 99)
replace B2DF9A1 = . if (B2DF9A1 == 7 | B2DF9A1 == 8 | B2DF9A1 == 9)
replace B2DF9H = . if (B2DF9H == 97 | B2DF9H == 98 | B2DF9H == 99)
replace B2DF9M = . if (B2DF9M == 97 | B2DF9M == 98 | B2DF9M == 99)
replace B2DF9AP = . if (B2DF9AP == 7 | B2DF9AP == 8 | B2DF9AP == 9)
replace B2DF10 = . if (B2DF10 == 7 | B2DF10 == 8 | B2DF10 == 9)
replace B2DF10A = . if (B2DF10A == 97 | B2DF10A == 98 | B2DF10A == 99)
replace B2DF10A1 = . if (B2DF10A1 == 7 | B2DF10A1 == 8 | B2DF10A1 == 9)
replace B2DF10H = . if (B2DF10H == 97 | B2DF10H == 98 | B2DF10H == 99)
replace B2DF10M = . if (B2DF10M == 97 | B2DF10M == 98 | B2DF10M == 99)
replace B2DF10AP = . if (B2DF10AP == 7 | B2DF10AP == 8 | B2DF10AP == 9)
replace B2DF11 = . if (B2DF11 == 7 | B2DF11 == 8 | B2DF11 == 9)
replace B2DF11A = . if (B2DF11A == 97 | B2DF11A == 98 | B2DF11A == 99)
replace B2DF11A1 = . if (B2DF11A1 == 7 | B2DF11A1 == 8 | B2DF11A1 == 9)
replace B2DF11H = . if (B2DF11H == 97 | B2DF11H == 98 | B2DF11H == 99)
replace B2DF11M = . if (B2DF11M == 97 | B2DF11M == 98 | B2DF11M == 99)
replace B2DF11AP = . if (B2DF11AP == 7 | B2DF11AP == 8 | B2DF11AP == 9)
replace B2DF12 = . if (B2DF12 == 7 | B2DF12 == 8 | B2DF12 == 9)
replace B2DF12A = . if (B2DF12A == 97 | B2DF12A == 98 | B2DF12A == 99)
replace B2DF12A1 = . if (B2DF12A1 == 7 | B2DF12A1 == 8 | B2DF12A1 == 9)
replace B2DF12H = . if (B2DF12H == 97 | B2DF12H == 98 | B2DF12H == 99)
replace B2DF12M = . if (B2DF12M == 97 | B2DF12M == 98 | B2DF12M == 99)
replace B2DF12AP = . if (B2DF12AP == 7 | B2DF12AP == 8 | B2DF12AP == 9)
replace B2DH1_D8 = . if (B2DH1_D8 == 7 | B2DH1_D8 == 8 | B2DH1_D8 == 9)
replace B2DH2_D8 = . if (B2DH2_D8 == 7 | B2DH2_D8 == 8 | B2DH2_D8 == 9)
replace B2DH3_D8 = . if (B2DH3_D8 == 7 | B2DH3_D8 == 8 | B2DH3_D8 == 9)
replace B2DH4_D8 = . if (B2DH4_D8 == 7 | B2DH4_D8 == 8 | B2DH4_D8 == 9)
replace B2DH5_D8 = . if (B2DH5_D8 == 7 | B2DH5_D8 == 8 | B2DH5_D8 == 9)
replace B2DH6_D8 = . if (B2DH6_D8 == 7 | B2DH6_D8 == 8 | B2DH6_D8 == 9)
replace B2DH7_D8 = . if (B2DH7_D8 == 7 | B2DH7_D8 == 8 | B2DH7_D8 == 9)
replace B2DH8_D8 = . if (B2DH8_D8 == 7 | B2DH8_D8 == 8 | B2DH8_D8 == 9)
replace B2DH9_D8 = . if (B2DH9_D8 == 7 | B2DH9_D8 == 8 | B2DH9_D8 == 9)
replace B2DH10D8 = . if (B2DH10D8 == 7 | B2DH10D8 == 8 | B2DH10D8 == 9)
replace B2DH11D8 = . if (B2DH11D8 == 7 | B2DH11D8 == 8 | B2DH11D8 == 9)
replace B2DH12D8 = . if (B2DH12D8 == 7 | B2DH12D8 == 8 | B2DH12D8 == 9)
replace B2DH13D8 = . if (B2DH13D8 == 7 | B2DH13D8 == 8 | B2DH13D8 == 9)
replace B2DH14D8 = . if (B2DH14D8 == 7 | B2DH14D8 == 8 | B2DH14D8 == 9)
replace B2DI1_D8 = . if (B2DI1_D8 == 7 | B2DI1_D8 == 8 | B2DI1_D8 == 9)
replace B2DI1AD8 = . if (B2DI1AD8 == 7 | B2DI1AD8 == 8 | B2DI1AD8 == 9)
replace B2DJ1_D8 = . if (B2DJ1_D8 == 7 | B2DJ1_D8 == 8 | B2DJ1_D8 == 9)
replace B2DJ2_D8 = . if (B2DJ2_D8 == 7 | B2DJ2_D8 == 8 | B2DJ2_D8 == 9)
replace B2DJ3_D8 = . if (B2DJ3_D8 == 7 | B2DJ3_D8 == 8 | B2DJ3_D8 == 9)
replace B2DJ4_D8 = . if (B2DJ4_D8 == 7 | B2DJ4_D8 == 8 | B2DJ4_D8 == 9)
replace B2DJ5_D8 = . if (B2DJ5_D8 == 7 | B2DJ5_D8 == 8 | B2DJ5_D8 == 9)
replace B2DJ6_D8 = . if (B2DJ6_D8 == 7 | B2DJ6_D8 == 8 | B2DJ6_D8 == 9)
replace B2DJ7_D8 = . if (B2DJ7_D8 == 7 | B2DJ7_D8 == 8 | B2DJ7_D8 == 9)
replace B2DJ8_D8 = . if (B2DJ8_D8 == 7 | B2DJ8_D8 == 8 | B2DJ8_D8 == 9)
replace B2DJ9_D8 = . if (B2DJ9_D8 == 7 | B2DJ9_D8 == 8 | B2DJ9_D8 == 9)
replace B2DJ10D8 = . if (B2DJ10D8 == 7 | B2DJ10D8 == 8 | B2DJ10D8 == 9)
replace B2DJ11D8 = . if (B2DJ11D8 == 7 | B2DJ11D8 == 8 | B2DJ11D8 == 9)
replace B2DJ12D8 = . if (B2DJ12D8 == 7 | B2DJ12D8 == 8 | B2DJ12D8 == 9)
replace B2DJ13D8 = . if (B2DJ13D8 == 7 | B2DJ13D8 == 8 | B2DJ13D8 == 9)
replace B2DK1_D8 = . if (B2DK1_D8 == 7 | B2DK1_D8 == 8 | B2DK1_D8 == 9)
replace B2DK1AD8 = . if (B2DK1AD8 == 7 | B2DK1AD8 == 8 | B2DK1AD8 == 9)
replace B2DK2_D8 = . if (B2DK2_D8 == 7 | B2DK2_D8 == 8 | B2DK2_D8 == 9)
replace B2DK2AD8 = . if (B2DK2AD8 == 7 | B2DK2AD8 == 8 | B2DK2AD8 == 9)
replace B2DK3_D8 = . if (B2DK3_D8 == 7 | B2DK3_D8 == 8 | B2DK3_D8 == 9)
replace B2DK3AD8 = . if (B2DK3AD8 == 7 | B2DK3AD8 == 8 | B2DK3AD8 == 9)
replace B2DS14A = . if (B2DS14A == 7 | B2DS14A == 8 | B2DS14A == 9)
replace B2DS14B = . if (B2DS14B == 7 | B2DS14B == 8 | B2DS14B == 9)
replace B2DS14C = . if (B2DS14C == 7 | B2DS14C == 8 | B2DS14C == 9)
replace B2DS14D = . if (B2DS14D == 7 | B2DS14D == 8 | B2DS14D == 9)
replace B2DS14E = . if (B2DS14E == 7 | B2DS14E == 8 | B2DS14E == 9)
replace B2DS14F = . if (B2DS14F == 7 | B2DS14F == 8 | B2DS14F == 9)
replace B2DS14G = . if (B2DS14G == 7 | B2DS14G == 8 | B2DS14G == 9)
replace B2DS14H = . if (B2DS14H == 7 | B2DS14H == 8 | B2DS14H == 9)
replace B2DS14I = . if (B2DS14I == 7 | B2DS14I == 8 | B2DS14I == 9)
replace B2DS15_1 = . if (B2DS15_1 == 7 | B2DS15_1 == 8 | B2DS15_1 == 9)
replace B2DS15_2 = . if (B2DS15_2 == 7 | B2DS15_2 == 8 | B2DS15_2 == 9)
replace B2DS15_3 = . if (B2DS15_3 == 7 | B2DS15_3 == 8 | B2DS15_3 == 9)
replace B2DS15_4 = . if (B2DS15_4 == 7 | B2DS15_4 == 8 | B2DS15_4 == 9)
replace B2DS15_5 = . if (B2DS15_5 == 7 | B2DS15_5 == 8 | B2DS15_5 == 9)
replace B2DS15_6 = . if (B2DS15_6 == 7 | B2DS15_6 == 8 | B2DS15_6 == 9)
replace B2DS15_7 = . if (B2DS15_7 == 7 | B2DS15_7 == 8 | B2DS15_7 == 9)
replace B2DS15_8 = . if (B2DS15_8 == 7 | B2DS15_8 == 8 | B2DS15_8 == 9)
replace B2DS15_9 = . if (B2DS15_9 == 7 | B2DS15_9 == 8 | B2DS15_9 == 9)
replace B2DS1510 = . if (B2DS1510 == 7 | B2DS1510 == 8 | B2DS1510 == 9)
replace B2DS1511 = . if (B2DS1511 == 7 | B2DS1511 == 8 | B2DS1511 == 9)
replace B2DS1512 = . if (B2DS1512 == 7 | B2DS1512 == 8 | B2DS1512 == 9)
replace B2DMED1 = . if (B2DMED1 == 7 | B2DMED1 == 8 | B2DMED1 == 9)
replace B2DMED2 = . if (B2DMED2 == 7 | B2DMED2 == 8 | B2DMED2 == 9)
replace B2DMED3 = . if (B2DMED3 == 7 | B2DMED3 == 8 | B2DMED3 == 9)
replace B2DMED4 = . if (B2DMED4 == 7 | B2DMED4 == 8 | B2DMED4 == 9)
replace B2DMED5 = . if (B2DMED5 == 7 | B2DMED5 == 8 | B2DMED5 == 9)
replace B2DMED6 = . if (B2DMED6 == 7 | B2DMED6 == 8 | B2DMED6 == 9)
replace B2DMED7 = . if (B2DMED7 == 7 | B2DMED7 == 8 | B2DMED7 == 9)
replace B2DMED8 = . if (B2DMED8 == 7 | B2DMED8 == 8 | B2DMED8 == 9)
replace B2DMED9 = . if (B2DMED9 == 7 | B2DMED9 == 8 | B2DMED9 == 9)
replace B2DMED10 = . if (B2DMED10 == 7 | B2DMED10 == 8 | B2DMED10 == 9)
replace B2DCDAY = . if (B2DCDAY == 8)
replace B2DSMART = . if (B2DSMART == 8)
replace B2DCWDAY = . if (B2DCWDAY == 8)
replace B2DCORW = . if (B2DCORW >= 999994.00000 & B2DCORW <= 999998.00000)
replace B2DCORA = . if (B2DCORA >= 999994.00000 & B2DCORA <= 999998.00000)
replace B2DCORL = . if (B2DCORL >= 999994.00000 & B2DCORL <= 999998.00000)
replace B2DCORB = . if (B2DCORB >= 999994.00000 & B2DCORB <= 999998.00000)
replace B2DCORWT = . if (B2DCORWT == 98.00)
replace B2DCORAT = . if (B2DCORAT == 98.00)
replace B2DCORLT = . if (B2DCORLT == 98.00)
replace B2DCORBT = . if (B2DCORBT == 98.00)
replace B2DTZONE = . if (B2DTZONE == 7 | B2DTZONE == 8 | B2DTZONE == 9)
replace B2DN_STR = . if (B2DN_STR == 8)
replace B2DA_STR = . if (B2DA_STR == 8)
replace B2DSSEVS = . if (B2DSSEVS == 98)
replace B2DSSEVA = . if (B2DSSEVA == 8.00)
replace B2DSNEGS = . if (B2DSNEGS == 98)
replace B2DSNEGA = . if (B2DSNEGA == 8.00)
replace B2DSAPRA = . if (B2DSAPRA == 8.00)
replace B2DSAPRB = . if (B2DSAPRB == 8.00)
replace B2DSAPRC = . if (B2DSAPRC == 8.00)
replace B2DSAPRD = . if (B2DSAPRD == 8.00)
replace B2DSAPRE = . if (B2DSAPRE == 8.00)
replace B2DSAPRF = . if (B2DSAPRF == 8.00)
replace B2DSAPRG = . if (B2DSAPRG == 8.00)
replace B2DSCOTS = . if (B2DSCOTS == 98)
replace B2DSCOTA = . if (B2DSCOTA == 8.00)
replace B2DN_SYM = . if (B2DN_SYM == 98)
replace B2DA_SYM = . if (B2DA_SYM == 8)
replace B2DSYMAV = . if (B2DSYMAV == 98.00)
replace B2DN_POS = . if (B2DN_POS == 8)
replace B2DA_POS = . if (B2DA_POS == 8)
replace B2DPOSAV = . if (B2DPOSAV == 8.00)
replace B2DNEGAV = . if (B2DNEGAV == 8.00)


*/
/********************************************************************

 Section 5: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace

