/**************************************************************************
 |                                                                         
 |                    STATA SETUP FILE FOR ICPSR 25281
 |      NATIONAL SURVEY OF MIDLIFE DEVELOPMENT IN THE UNITED STATES
 |                (MIDUS II): COGNITIVE PROJECT, 2004-2006
 |                            (DATASET 0001: )
 |
 |
 |  Please edit this file as instructed below.
 |  To execute, start Stata, change to the directory containing:
 |       - this do file
 |       - the ASCII data file
 |       - the dictionary file
 |
 |  Then execute the do file (e.g., do 25281-0001-statasetup.do)
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


label data "National Survey of Midlife Development in the United States (MIDUS II): Cognitive Project, 2004-2006"

#delimit ;
label define SAMPLMAJ  1 "MAIN RDD" 2 "SIBLING" 3 "TWIN" 4 "CITY OVERSAMPLE"
                       13 "MILWAUKEE" ;
label define B1PAGE_M2 98 "REFUSED" 99 "INAPP (NO M2 PARTICIPATION)" ;
label define B1PGENDER 1 "MALE" 2 "FEMALE" 8 "REFUSED/UNKOWN" ;
label define B3TWLIFP  1 "YES" 2 "NO" 8 "REFUSED/MISSING" ;
label define B3TWLI1   1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLI2   1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLI3   1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLI4   1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLI5   1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLI6   1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLI7   1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLI8   1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLI9   1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLI10  1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLI11  1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLI12  1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLI13  1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLI14  1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLI15  1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLI16  1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLI17  1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLI18  1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLI19  1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLI20  1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLI21  1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLI22  1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLI23  1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLI24  1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLI25  1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLI26  1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLITU  98 "REFUSED/MISSING" 99 "INAPP" ;
label define B3TWLITR  98 "REFUSED/MISSING" 99 "INAPP" ;
label define B3TWLITI  98 "REFUSED/MISSING" 99 "INAPP" ;
label define B3TDBFP   1 "YES" 2 "NO" 8 "REFUSED/MISSING" ;
label define B3TDBS    98 "REFUSED/MISSING" 99 "INAPP" ;
label define B3TCTFFP  1 "YES" 2 "NO" 8 "REFUSED/MISSING" ;
label define B3TCTFLU  98 "REFUSED/MISSING" 99 "INAPP" ;
label define B3TCTFLR  98 "REFUSED/MISSING" 99 "INAPP" ;
label define B3TCTFLI  98 "REFUSED/MISSING" 99 "INAPP" ;
label define B3TNSFP   1 "YES" 2 "NO" 8 "REFUSED/MISSING" ;
label define B3TNS1    997 "DON'T KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define B3TNS2    997 "DON'T KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define B3TNS3    997 "DON'T KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define B3TNS4    997 "DON'T KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define B3TNS5    997 "DON'T KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define B3TNS1C   1 "YES, CORRECT" 2 "NO, INCORRECT" 8 "REFUSAL/MISSING"
                       9 "INAPP" ;
label define B3TNS2C   1 "YES, CORRECT" 2 "NO, INCORRECT" 8 "REFUSAL/MISSING"
                       9 "INAPP" ;
label define B3TNS3C   1 "YES, CORRECT" 2 "NO, INCORRECT" 8 "REFUSAL/MISSING"
                       9 "INAPP" ;
label define B3TNS4C   1 "YES, CORRECT" 2 "NO, INCORRECT" 8 "REFUSAL/MISSING"
                       9 "INAPP" ;
label define B3TNS5C   1 "YES, CORRECT" 2 "NO, INCORRECT" 8 "REFUSAL/MISSING"
                       9 "INAPP" ;
label define B3TNSTOT  8 "REFUSED/MISSING" 9 "INAPP" ;
label define B3TBKFP   1 "YES" 2 "NO" 8 "REFUSED/MISSING" ;
label define B3TBKCT   998 "REFUSED/MISSING" 999 "INAPP" ;
label define B3TBKERR  998 "REFUSED/MISSING" 999 "INAPP" ;
label define B3TBKTOT  998 "REFUSED/MISSING" 999 "INAPP" ;
label define B3TWLDFP  1 "YES" 2 "NO" 8 "REFUSED/MISSING" ;
label define B3TWLD1   1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLD2   1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLD3   1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLD4   1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLD5   1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLD6   1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLD7   1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLD8   1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLD9   1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLD10  1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLD11  1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLD12  1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLD13  1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLD14  1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLD15  1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLD16  1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLD17  1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLD18  1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLD19  1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLD20  1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLD21  1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLD22  1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLD23  1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLD24  1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLD25  1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLD26  1 "DRUM" 2 "CURTAIN" 3 "BELL" 4 "COFFEE" 5 "SCHOOL"
                       6 "PARENT" 7 "MOON" 8 "GARDEN" 9 "HAT" 10 "FARMER"
                       11 "NOSE" 12 "TURKEY" 13 "COLOR" 14 "HOUSE" 15 "RIVER"
                       90 "NON-LIST INTRUSION" 98 "REFUSED/MISSING"
                       99 "INAPP" ;
label define B3TWLDTU  98 "REFUSED/MISSING" 99 "INAPP" ;
label define B3TWLDTR  98 "REFUSED/MISSING" 99 "INAPP" ;
label define B3TWLDTI  98 "REFUSED/MISSING" 99 "INAPP" ;
label define B3TWLF    8 "REFUSED/MISSING" 9 "INAPP" ;
label define B3TCOMPZ2 8 "REFUSED/MISSING" 9 "INAPP" ;
label define B3TEMZ2   8 "REFUSED/MISSING" 9 "INAPP" ;
label define B3TEFZ2   8 "REFUSED/MISSING" 9 "INAPP" ;
label define B3TCOMPZ3 8 "REFUSED/MISSING" 9 "INAPP" ;
label define B3TEMZ3   8 "REFUSED/MISSING" 9 "INAPP" ;
label define B3TEFZ3   8 "REFUSED/MISSING" 9 "INAPP" ;
label define B3TSWN1   95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWN2   95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWN3   95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWN4   95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWN5   95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWN6   95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWN7   95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWN8   95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWN9   95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWN10  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWN11  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWN12  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWN13  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWN14  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWN15  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWN16  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWN17  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWN18  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWN19  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWN20  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWR1   95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWR2   95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWR3   95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWR4   95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWR5   95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWR6   95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWR7   95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWR8   95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWR9   95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWR10  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWR11  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWR12  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWR13  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWR14  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWR15  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWR16  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWR17  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWR18  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWR19  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWR20  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWX1   95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWX2   95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWX3   95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWX4   95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWX5   95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWX6   95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWX7   95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWX8   95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWX9   95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWX10  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWX11  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWX12  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWX13  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWX14  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWX15  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWX16  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWX17  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWX18  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWX19  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWX20  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWX21  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWX22  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWX23  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWX24  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWX25  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWX26  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWX27  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWX28  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWX29  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWX30  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWX31  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSWX32  95 "INCORRECT" 98 "REFUSED/MISSING" 99 "INVALID" ;
label define B3TSTN    98 "REFUSED/MISSING" ;
label define B3TSVN    98 "REFUSED/MISSING" ;
label define B3TSPN    8 "REFUSED/MISSING" ;
label define B3TSMN    98 "REFUSED/MISSING" ;
label define B3TSTR    98 "REFUSED/MISSING" ;
label define B3TSVR    98 "REFUSED/MISSING" ;
label define B3TSPR    8 "REFUSED/MISSING" ;
label define B3TSMR    98 "REFUSED/MISSING" ;
label define B3TSMB    98 "REFUSED/MISSING" ;
label define B3TSTXNO  98 "REFUSED/MISSING" ;
label define B3TSVXNO  98 "REFUSED/MISSING" ;
label define B3TSPXNO  8 "REFUSED/MISSING" ;
label define B3TSTXRO  98 "REFUSED/MISSING" ;
label define B3TSVXRO  98 "REFUSED/MISSING" ;
label define B3TSPXRO  8 "REFUSED/MISSING" ;
label define B3TSTXBO  98 "REFUSED/MISSING" ;
label define B3TSVXBO  98 "REFUSED/MISSING" ;
label define B3TSPXBO  8 "REFUSED/MISSING" ;
label define B3TSTXNS  8 "REFUSED/MISSING" ;
label define B3TSVXNS  8 "REFUSED/MISSING" ;
label define B3TSPXNS  8 "REFUSED/MISSING" ;
label define B3TSTXRS  8 "REFUSED/MISSING" ;
label define B3TSVXRS  8 "REFUSED/MISSING" ;
label define B3TSPXRS  8 "REFUSED/MISSING" ;
label define B3TSTXBS  8 "REFUSED/MISSING" ;
label define B3TSVXBS  8 "REFUSED/MISSING" ;
label define B3TSPXBS  8 "REFUSED/MISSING" ;
label define B3TSTXBB  98 "REFUSED/MISSING" ;
label define B3TSVXBB  98 "REFUSED/MISSING" ;
label define B3TSPXBB  8 "REFUSED/MISSING" ;
label define B3TSMXNO  98 "REFUSED/MISSING" ;
label define B3TSMXRO  98 "REFUSED/MISSING" ;
label define B3TSMXBO  98 "REFUSED/MISSING" ;
label define B3TSMXNS  98 "REFUSED/MISSING" ;
label define B3TSMXRS  98 "REFUSED/MISSING" ;
label define B3TSMXBS  98 "REFUSED/MISSING" ;
label define B3TSMXBB  98 "REFUSED/MISSING" ;
label define B3TSCGBA  98 "REFUSED/MISSING" ;
label define B3TSCGBR  98 "REFUSED/MISSING" ;
label define B3TSCGNA  98 "REFUSED/MISSING" ;
label define B3TSCGNR  98 "REFUSED/MISSING" ;
label define B3TSCGRA  98 "REFUSED/MISSING" ;
label define B3TSCGRR  98 "REFUSED/MISSING" ;
label define B3TSCLBA  98 "REFUSED/MISSING" ;
label define B3TSCLBR  98 "REFUSED/MISSING" ;
label define B3TSCLNA  98 "REFUSED/MISSING" ;
label define B3TSCLNR  98 "REFUSED/MISSING" ;
label define B3TSCLRA  98 "REFUSED/MISSING" ;
label define B3TSCLRR  98 "REFUSED/MISSING" ;
label define B3TSFV    0 "NOT SELECTED" 1 "SELECTED" ;
label define B3TSFC    0 "NOT SELECTED" 1 "SELECTED" ;


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
replace B3TWLIFP = . if (B3TWLIFP == 8)
replace B3TWLI1 = . if (B3TWLI1 == 98 | B3TWLI1 == 99)
replace B3TWLI2 = . if (B3TWLI2 == 98 | B3TWLI2 == 99)
replace B3TWLI3 = . if (B3TWLI3 == 98 | B3TWLI3 == 99)
replace B3TWLI4 = . if (B3TWLI4 == 98 | B3TWLI4 == 99)
replace B3TWLI5 = . if (B3TWLI5 == 98 | B3TWLI5 == 99)
replace B3TWLI6 = . if (B3TWLI6 == 98 | B3TWLI6 == 99)
replace B3TWLI7 = . if (B3TWLI7 == 98 | B3TWLI7 == 99)
replace B3TWLI8 = . if (B3TWLI8 == 98 | B3TWLI8 == 99)
replace B3TWLI9 = . if (B3TWLI9 == 98 | B3TWLI9 == 99)
replace B3TWLI10 = . if (B3TWLI10 == 98 | B3TWLI10 == 99)
replace B3TWLI11 = . if (B3TWLI11 == 98 | B3TWLI11 == 99)
replace B3TWLI12 = . if (B3TWLI12 == 98 | B3TWLI12 == 99)
replace B3TWLI13 = . if (B3TWLI13 == 98 | B3TWLI13 == 99)
replace B3TWLI14 = . if (B3TWLI14 == 98 | B3TWLI14 == 99)
replace B3TWLI15 = . if (B3TWLI15 == 98 | B3TWLI15 == 99)
replace B3TWLI16 = . if (B3TWLI16 == 98 | B3TWLI16 == 99)
replace B3TWLI17 = . if (B3TWLI17 == 98 | B3TWLI17 == 99)
replace B3TWLI18 = . if (B3TWLI18 == 98 | B3TWLI18 == 99)
replace B3TWLI19 = . if (B3TWLI19 == 98 | B3TWLI19 == 99)
replace B3TWLI20 = . if (B3TWLI20 == 98 | B3TWLI20 == 99)
replace B3TWLI21 = . if (B3TWLI21 == 98 | B3TWLI21 == 99)
replace B3TWLI22 = . if (B3TWLI22 == 98 | B3TWLI22 == 99)
replace B3TWLI23 = . if (B3TWLI23 == 98 | B3TWLI23 == 99)
replace B3TWLI24 = . if (B3TWLI24 == 98 | B3TWLI24 == 99)
replace B3TWLI25 = . if (B3TWLI25 == 98 | B3TWLI25 == 99)
replace B3TWLI26 = . if (B3TWLI26 == 98 | B3TWLI26 == 99)
replace B3TWLITU = . if (B3TWLITU == 98 | B3TWLITU == 99)
replace B3TWLITR = . if (B3TWLITR == 98 | B3TWLITR == 99)
replace B3TWLITI = . if (B3TWLITI == 98 | B3TWLITI == 99)
replace B3TDBFP = . if (B3TDBFP == 8)
replace B3TDBS = . if (B3TDBS == 98 | B3TDBS == 99)
replace B3TCTFFP = . if (B3TCTFFP == 8)
replace B3TCTFLU = . if (B3TCTFLU == 98 | B3TCTFLU == 99)
replace B3TCTFLR = . if (B3TCTFLR == 98 | B3TCTFLR == 99)
replace B3TCTFLI = . if (B3TCTFLI == 98 | B3TCTFLI == 99)
replace B3TNSFP = . if (B3TNSFP == 8)
replace B3TNS1 = . if (B3TNS1 == 997 | B3TNS1 == 998 | B3TNS1 == 999)
replace B3TNS2 = . if (B3TNS2 == 997 | B3TNS2 == 998 | B3TNS2 == 999)
replace B3TNS3 = . if (B3TNS3 == 997 | B3TNS3 == 998 | B3TNS3 == 999)
replace B3TNS4 = . if (B3TNS4 == 997 | B3TNS4 == 998 | B3TNS4 == 999)
replace B3TNS5 = . if (B3TNS5 == 997 | B3TNS5 == 998 | B3TNS5 == 999)
replace B3TNS1C = . if (B3TNS1C == 8 | B3TNS1C == 9)
replace B3TNS2C = . if (B3TNS2C == 8 | B3TNS2C == 9)
replace B3TNS3C = . if (B3TNS3C == 8 | B3TNS3C == 9)
replace B3TNS4C = . if (B3TNS4C == 8 | B3TNS4C == 9)
replace B3TNS5C = . if (B3TNS5C == 8 | B3TNS5C == 9)
replace B3TNSTOT = . if (B3TNSTOT == 8 | B3TNSTOT == 9)
replace B3TBKFP = . if (B3TBKFP == 8)
replace B3TBKCT = . if (B3TBKCT == 998 | B3TBKCT == 999)
replace B3TBKERR = . if (B3TBKERR == 998 | B3TBKERR == 999)
replace B3TBKTOT = . if (B3TBKTOT == 998 | B3TBKTOT == 999)
replace B3TWLDFP = . if (B3TWLDFP == 8)
replace B3TWLD1 = . if (B3TWLD1 == 98 | B3TWLD1 == 99)
replace B3TWLD2 = . if (B3TWLD2 == 98 | B3TWLD2 == 99)
replace B3TWLD3 = . if (B3TWLD3 == 98 | B3TWLD3 == 99)
replace B3TWLD4 = . if (B3TWLD4 == 98 | B3TWLD4 == 99)
replace B3TWLD5 = . if (B3TWLD5 == 98 | B3TWLD5 == 99)
replace B3TWLD6 = . if (B3TWLD6 == 98 | B3TWLD6 == 99)
replace B3TWLD7 = . if (B3TWLD7 == 98 | B3TWLD7 == 99)
replace B3TWLD8 = . if (B3TWLD8 == 98 | B3TWLD8 == 99)
replace B3TWLD9 = . if (B3TWLD9 == 98 | B3TWLD9 == 99)
replace B3TWLD10 = . if (B3TWLD10 == 98 | B3TWLD10 == 99)
replace B3TWLD11 = . if (B3TWLD11 == 98 | B3TWLD11 == 99)
replace B3TWLD12 = . if (B3TWLD12 == 98 | B3TWLD12 == 99)
replace B3TWLD13 = . if (B3TWLD13 == 98 | B3TWLD13 == 99)
replace B3TWLD14 = . if (B3TWLD14 == 98 | B3TWLD14 == 99)
replace B3TWLD15 = . if (B3TWLD15 == 98 | B3TWLD15 == 99)
replace B3TWLD16 = . if (B3TWLD16 == 98 | B3TWLD16 == 99)
replace B3TWLD17 = . if (B3TWLD17 == 98 | B3TWLD17 == 99)
replace B3TWLD18 = . if (B3TWLD18 == 98 | B3TWLD18 == 99)
replace B3TWLD19 = . if (B3TWLD19 == 98 | B3TWLD19 == 99)
replace B3TWLD20 = . if (B3TWLD20 == 98 | B3TWLD20 == 99)
replace B3TWLD21 = . if (B3TWLD21 == 98 | B3TWLD21 == 99)
replace B3TWLD22 = . if (B3TWLD22 == 98 | B3TWLD22 == 99)
replace B3TWLD23 = . if (B3TWLD23 == 98 | B3TWLD23 == 99)
replace B3TWLD24 = . if (B3TWLD24 == 98 | B3TWLD24 == 99)
replace B3TWLD25 = . if (B3TWLD25 == 98 | B3TWLD25 == 99)
replace B3TWLD26 = . if (B3TWLD26 == 98 | B3TWLD26 == 99)
replace B3TWLDTU = . if (B3TWLDTU == 98 | B3TWLDTU == 99)
replace B3TWLDTR = . if (B3TWLDTR == 98 | B3TWLDTR == 99)
replace B3TWLDTI = . if (B3TWLDTI == 98 | B3TWLDTI == 99)
replace B3TWLF = . if (B3TWLF == 8.00 | B3TWLF == 9.00)
replace B3TCOMPZ2 = . if (B3TCOMPZ2 == 8.000 | B3TCOMPZ2 == 9.000)
replace B3TEMZ2 = . if (B3TEMZ2 == 8.000 | B3TEMZ2 == 9.000)
replace B3TEFZ2 = . if (B3TEFZ2 == 8.000 | B3TEFZ2 == 9.000)
replace B3TCOMPZ3 = . if (B3TCOMPZ3 == 8.000 | B3TCOMPZ3 == 9.000)
replace B3TEMZ3 = . if (B3TEMZ3 == 8.000 | B3TEMZ3 == 9.000)
replace B3TEFZ3 = . if (B3TEFZ3 == 8.000 | B3TEFZ3 == 9.000)
replace B3TSWN1 = . if (B3TSWN1 == 95.000 | B3TSWN1 == 98.000 | B3TSWN1 == 99.000)
replace B3TSWN2 = . if (B3TSWN2 == 95.000 | B3TSWN2 == 98.000 | B3TSWN2 == 99.000)
replace B3TSWN3 = . if (B3TSWN3 == 95.000 | B3TSWN3 == 98.000 | B3TSWN3 == 99.000)
replace B3TSWN4 = . if (B3TSWN4 == 95.000 | B3TSWN4 == 98.000 | B3TSWN4 == 99.000)
replace B3TSWN5 = . if (B3TSWN5 == 95.000 | B3TSWN5 == 98.000 | B3TSWN5 == 99.000)
replace B3TSWN6 = . if (B3TSWN6 == 95.000 | B3TSWN6 == 98.000 | B3TSWN6 == 99.000)
replace B3TSWN7 = . if (B3TSWN7 == 95.000 | B3TSWN7 == 98.000 | B3TSWN7 == 99.000)
replace B3TSWN8 = . if (B3TSWN8 == 95.000 | B3TSWN8 == 98.000 | B3TSWN8 == 99.000)
replace B3TSWN9 = . if (B3TSWN9 == 95.000 | B3TSWN9 == 98.000 | B3TSWN9 == 99.000)
replace B3TSWN10 = . if (B3TSWN10 == 95.000 | B3TSWN10 == 98.000 | B3TSWN10 == 99.000)
replace B3TSWN11 = . if (B3TSWN11 == 95.000 | B3TSWN11 == 98.000 | B3TSWN11 == 99.000)
replace B3TSWN12 = . if (B3TSWN12 == 95.000 | B3TSWN12 == 98.000 | B3TSWN12 == 99.000)
replace B3TSWN13 = . if (B3TSWN13 == 95.000 | B3TSWN13 == 98.000 | B3TSWN13 == 99.000)
replace B3TSWN14 = . if (B3TSWN14 == 95.000 | B3TSWN14 == 98.000 | B3TSWN14 == 99.000)
replace B3TSWN15 = . if (B3TSWN15 == 95.000 | B3TSWN15 == 98.000 | B3TSWN15 == 99.000)
replace B3TSWN16 = . if (B3TSWN16 == 95.000 | B3TSWN16 == 98.000 | B3TSWN16 == 99.000)
replace B3TSWN17 = . if (B3TSWN17 == 95.000 | B3TSWN17 == 98.000 | B3TSWN17 == 99.000)
replace B3TSWN18 = . if (B3TSWN18 == 95.000 | B3TSWN18 == 98.000 | B3TSWN18 == 99.000)
replace B3TSWN19 = . if (B3TSWN19 == 95.000 | B3TSWN19 == 98.000 | B3TSWN19 == 99.000)
replace B3TSWN20 = . if (B3TSWN20 == 95.000 | B3TSWN20 == 98.000 | B3TSWN20 == 99.000)
replace B3TSWR1 = . if (B3TSWR1 == 95.000 | B3TSWR1 == 98.000 | B3TSWR1 == 99.000)
replace B3TSWR2 = . if (B3TSWR2 == 95.000 | B3TSWR2 == 98.000 | B3TSWR2 == 99.000)
replace B3TSWR3 = . if (B3TSWR3 == 95.000 | B3TSWR3 == 98.000 | B3TSWR3 == 99.000)
replace B3TSWR4 = . if (B3TSWR4 == 95.000 | B3TSWR4 == 98.000 | B3TSWR4 == 99.000)
replace B3TSWR5 = . if (B3TSWR5 == 95.000 | B3TSWR5 == 98.000 | B3TSWR5 == 99.000)
replace B3TSWR6 = . if (B3TSWR6 == 95.000 | B3TSWR6 == 98.000 | B3TSWR6 == 99.000)
replace B3TSWR7 = . if (B3TSWR7 == 95.000 | B3TSWR7 == 98.000 | B3TSWR7 == 99.000)
replace B3TSWR8 = . if (B3TSWR8 == 95.000 | B3TSWR8 == 98.000 | B3TSWR8 == 99.000)
replace B3TSWR9 = . if (B3TSWR9 == 95.000 | B3TSWR9 == 98.000 | B3TSWR9 == 99.000)
replace B3TSWR10 = . if (B3TSWR10 == 95.000 | B3TSWR10 == 98.000 | B3TSWR10 == 99.000)
replace B3TSWR11 = . if (B3TSWR11 == 95.000 | B3TSWR11 == 98.000 | B3TSWR11 == 99.000)
replace B3TSWR12 = . if (B3TSWR12 == 95.000 | B3TSWR12 == 98.000 | B3TSWR12 == 99.000)
replace B3TSWR13 = . if (B3TSWR13 == 95.000 | B3TSWR13 == 98.000 | B3TSWR13 == 99.000)
replace B3TSWR14 = . if (B3TSWR14 == 95.000 | B3TSWR14 == 98.000 | B3TSWR14 == 99.000)
replace B3TSWR15 = . if (B3TSWR15 == 95.000 | B3TSWR15 == 98.000 | B3TSWR15 == 99.000)
replace B3TSWR16 = . if (B3TSWR16 == 95.000 | B3TSWR16 == 98.000 | B3TSWR16 == 99.000)
replace B3TSWR17 = . if (B3TSWR17 == 95.000 | B3TSWR17 == 98.000 | B3TSWR17 == 99.000)
replace B3TSWR18 = . if (B3TSWR18 == 95.000 | B3TSWR18 == 98.000 | B3TSWR18 == 99.000)
replace B3TSWR19 = . if (B3TSWR19 == 95.000 | B3TSWR19 == 98.000 | B3TSWR19 == 99.000)
replace B3TSWR20 = . if (B3TSWR20 == 95.000 | B3TSWR20 == 98.000 | B3TSWR20 == 99.000)
replace B3TSWX1 = . if (B3TSWX1 == 95.000 | B3TSWX1 == 98.000 | B3TSWX1 == 99.000)
replace B3TSWX2 = . if (B3TSWX2 == 95.000 | B3TSWX2 == 98.000 | B3TSWX2 == 99.000)
replace B3TSWX3 = . if (B3TSWX3 == 95.000 | B3TSWX3 == 98.000 | B3TSWX3 == 99.000)
replace B3TSWX4 = . if (B3TSWX4 == 95.000 | B3TSWX4 == 98.000 | B3TSWX4 == 99.000)
replace B3TSWX5 = . if (B3TSWX5 == 95.000 | B3TSWX5 == 98.000 | B3TSWX5 == 99.000)
replace B3TSWX6 = . if (B3TSWX6 == 95.000 | B3TSWX6 == 98.000 | B3TSWX6 == 99.000)
replace B3TSWX7 = . if (B3TSWX7 == 95.000 | B3TSWX7 == 98.000 | B3TSWX7 == 99.000)
replace B3TSWX8 = . if (B3TSWX8 == 95.000 | B3TSWX8 == 98.000 | B3TSWX8 == 99.000)
replace B3TSWX9 = . if (B3TSWX9 == 95.000 | B3TSWX9 == 98.000 | B3TSWX9 == 99.000)
replace B3TSWX10 = . if (B3TSWX10 == 95.000 | B3TSWX10 == 98.000 | B3TSWX10 == 99.000)
replace B3TSWX11 = . if (B3TSWX11 == 95.000 | B3TSWX11 == 98.000 | B3TSWX11 == 99.000)
replace B3TSWX12 = . if (B3TSWX12 == 95.000 | B3TSWX12 == 98.000 | B3TSWX12 == 99.000)
replace B3TSWX13 = . if (B3TSWX13 == 95.000 | B3TSWX13 == 98.000 | B3TSWX13 == 99.000)
replace B3TSWX14 = . if (B3TSWX14 == 95.000 | B3TSWX14 == 98.000 | B3TSWX14 == 99.000)
replace B3TSWX15 = . if (B3TSWX15 == 95.000 | B3TSWX15 == 98.000 | B3TSWX15 == 99.000)
replace B3TSWX16 = . if (B3TSWX16 == 95.000 | B3TSWX16 == 98.000 | B3TSWX16 == 99.000)
replace B3TSWX17 = . if (B3TSWX17 == 95.000 | B3TSWX17 == 98.000 | B3TSWX17 == 99.000)
replace B3TSWX18 = . if (B3TSWX18 == 95.000 | B3TSWX18 == 98.000 | B3TSWX18 == 99.000)
replace B3TSWX19 = . if (B3TSWX19 == 95.000 | B3TSWX19 == 98.000 | B3TSWX19 == 99.000)
replace B3TSWX20 = . if (B3TSWX20 == 95.000 | B3TSWX20 == 98.000 | B3TSWX20 == 99.000)
replace B3TSWX21 = . if (B3TSWX21 == 95.000 | B3TSWX21 == 98.000 | B3TSWX21 == 99.000)
replace B3TSWX22 = . if (B3TSWX22 == 95.000 | B3TSWX22 == 98.000 | B3TSWX22 == 99.000)
replace B3TSWX23 = . if (B3TSWX23 == 95.000 | B3TSWX23 == 98.000 | B3TSWX23 == 99.000)
replace B3TSWX24 = . if (B3TSWX24 == 95.000 | B3TSWX24 == 98.000 | B3TSWX24 == 99.000)
replace B3TSWX25 = . if (B3TSWX25 == 95.000 | B3TSWX25 == 98.000 | B3TSWX25 == 99.000)
replace B3TSWX26 = . if (B3TSWX26 == 95.000 | B3TSWX26 == 98.000 | B3TSWX26 == 99.000)
replace B3TSWX27 = . if (B3TSWX27 == 95.000 | B3TSWX27 == 98.000 | B3TSWX27 == 99.000)
replace B3TSWX28 = . if (B3TSWX28 == 95.000 | B3TSWX28 == 98.000 | B3TSWX28 == 99.000)
replace B3TSWX29 = . if (B3TSWX29 == 95.000 | B3TSWX29 == 98.000 | B3TSWX29 == 99.000)
replace B3TSWX30 = . if (B3TSWX30 == 95.000 | B3TSWX30 == 98.000 | B3TSWX30 == 99.000)
replace B3TSWX31 = . if (B3TSWX31 == 95.000 | B3TSWX31 == 98.000 | B3TSWX31 == 99.000)
replace B3TSWX32 = . if (B3TSWX32 == 95.000 | B3TSWX32 == 98.000 | B3TSWX32 == 99.000)
replace B3TSTN = . if (B3TSTN == 98)
replace B3TSVN = . if (B3TSVN == 98)
replace B3TSPN = . if (B3TSPN == 8.00)
replace B3TSMN = . if (B3TSMN == 98.000)
replace B3TSTR = . if (B3TSTR == 98)
replace B3TSVR = . if (B3TSVR == 98)
replace B3TSPR = . if (B3TSPR == 8.00)
replace B3TSMR = . if (B3TSMR == 98.000)
replace B3TSMB = . if (B3TSMB == 98.000)
replace B3TSTXNO = . if (B3TSTXNO == 98)
replace B3TSVXNO = . if (B3TSVXNO == 98)
replace B3TSPXNO = . if (B3TSPXNO == 8.00)
replace B3TSTXRO = . if (B3TSTXRO == 98)
replace B3TSVXRO = . if (B3TSVXRO == 98)
replace B3TSPXRO = . if (B3TSPXRO == 8.00)
replace B3TSTXBO = . if (B3TSTXBO == 98)
replace B3TSVXBO = . if (B3TSVXBO == 98)
replace B3TSPXBO = . if (B3TSPXBO == 8.00)
replace B3TSTXNS = . if (B3TSTXNS == 8)
replace B3TSVXNS = . if (B3TSVXNS == 8)
replace B3TSPXNS = . if (B3TSPXNS == 8.00)
replace B3TSTXRS = . if (B3TSTXRS == 8)
replace B3TSVXRS = . if (B3TSVXRS == 8)
replace B3TSPXRS = . if (B3TSPXRS == 8.00)
replace B3TSTXBS = . if (B3TSTXBS == 8)
replace B3TSVXBS = . if (B3TSVXBS == 8)
replace B3TSPXBS = . if (B3TSPXBS == 8.00)
replace B3TSTXBB = . if (B3TSTXBB == 98)
replace B3TSVXBB = . if (B3TSVXBB == 98)
replace B3TSPXBB = . if (B3TSPXBB == 8.00)
replace B3TSMXNO = . if (B3TSMXNO == 98.000)
replace B3TSMXRO = . if (B3TSMXRO == 98.000)
replace B3TSMXBO = . if (B3TSMXBO == 98.000)
replace B3TSMXNS = . if (B3TSMXNS == 98.000)
replace B3TSMXRS = . if (B3TSMXRS == 98.000)
replace B3TSMXBS = . if (B3TSMXBS == 98.000)
replace B3TSMXBB = . if (B3TSMXBB == 98.000)
replace B3TSCGBA = . if (B3TSCGBA == 98.000)
replace B3TSCGBR = . if (B3TSCGBR == 98.000)
replace B3TSCGNA = . if (B3TSCGNA == 98.000)
replace B3TSCGNR = . if (B3TSCGNR == 98.000)
replace B3TSCGRA = . if (B3TSCGRA == 98.000)
replace B3TSCGRR = . if (B3TSCGRR == 98.000)
replace B3TSCLBA = . if (B3TSCLBA == 98.000)
replace B3TSCLBR = . if (B3TSCLBR == 98.000)
replace B3TSCLNA = . if (B3TSCLNA == 98.000)
replace B3TSCLNR = . if (B3TSCLNR == 98.000)
replace B3TSCLRA = . if (B3TSCLRA == 98.000)
replace B3TSCLRR = . if (B3TSCLRR == 98.000)


*/
/********************************************************************

 Section 5: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace

