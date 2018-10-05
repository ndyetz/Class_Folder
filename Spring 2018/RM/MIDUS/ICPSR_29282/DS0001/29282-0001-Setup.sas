/*-------------------------------------------------------------------------
 |                                                                         
 |                    SAS SETUP FILE FOR ICPSR 29282
 |      NATIONAL SURVEY OF MIDLIFE DEVELOPMENT IN THE UNITED STATES
 |                (MIDUS II): BIOMARKER PROJECT, 2004-2009
 |
 |
 | SAS setup sections are provided for the ASCII version of this data
 | collection.  These sections are listed below:
 |
 | PROC FORMAT:  creates user-defined formats for the variables. Formats
 | replace original value codes with value code descriptions. Only
 | variables with user-defined formats are included in this section.
 |
 | DATA:  begins a SAS data step and names an output SAS data set.
 |
 | INFILE:  identifies the input file to be read with the input statement.
 | Users must replace the "data-filename" with a filename specifying the
 | directory on the user's computer system in which the downloaded and
 | unzipped data file is physically located (e.g.,
 | "c:\temp\29282-0001-data.txt").
 |
 | INPUT:  assigns the name, type, decimal specification (if any), and
 | specifies the beginning and ending column locations for each variable
 | in the data file.
 |
 | LABEL:  assigns descriptive labels to all variables. Variable labels
 | and variable names may be identical for some variables.
 |
 | MISSING VALUE RECODES:  sets user-defined numeric missing values to
 | missing as interpreted by the SAS system. Only variables with
 | user-defined missing values are included in this section.
 |
 | If any variables have more than one missing value, they are assigned
 | to the standard missing value of a single period (.) in the statement
 | below. To maintain the original meaning of missing codes, users may want
 | to take advantage of the SAS missing values (the letters A-Z or an
 | underscore preceded by a period).
 |
 | An example of a standard missing value recode:
 |
 |   IF (RELATION = 98 OR RELATION = 99) THEN RELATION = .; 
 |
 | The same example using special missing value recodes:
 |
 |    IF RELATION = 98 THEN RELATION = .A;
 |    IF RELATION = 99 THEN RELATION = .B;
 |
 | FORMAT:  associates the formats created by the PROC FORMAT step with
 | the variables named in the INPUT statement.
 |
 | NOTE:  Users should modify this setup file to suit their specific needs.
 | Sections for PROC FORMAT, FORMAT, and MISSING VALUE RECODES have been
 | commented out (i.e., '/*'). To include these sections in the final SAS
 | setup, users should remove the SAS comment indicators from the desired
 | section(s).
 |
 |------------------------------------------------------------------------*/

* SAS PROC FORMAT;

/*
PROC FORMAT;
  VALUE samplmaj  1='(01) MAIN RDD' 2='(02) SIBLING' 3='(03) TWIN'
                  4='(04) CITY OVERSAMPLE' 13='(13) MILWAUKEE'
                  14='(14) BOSTON NEW' ;
  VALUE b1page_f  98='(98) REFUSED' 99='(99) INAPP (NO M2 PARTICIPATION)' ;
  VALUE b1pgendf  1='(1) MALE' 2='(2) FEMALE' ;
  VALUE b4zsite   1='(1) SITE 1 - UCLA' 2='(2) SITE 2 - UW'
                  3='(3) SITE 3 - GEORGETOWN' ;
  VALUE b4zcompm  1='(01) JANUARY' 2='(02) FEBRUARY' 3='(03) MARCH'
                  4='(04) APRIL' 5='(05) MAY' 6='(06) JUNE' 7='(07) JULY'
                  8='(08) AUGUST' 9='(09) SEPTEMBER' 10='(10) OCTOBER'
                  11='(11) NOVEMBER' 12='(12) DECEMBER' ;
  VALUE b4zrzone  1='(1) EST-Eastern Standard Time'
                  2='(2) CST-Central Standard Time'
                  3='(3) MST-Mountain Standard Time'
                  4='(4) PST-Pacific Standard Time' ;
  VALUE b4zszone  1='(1) EST-Eastern Standard Time'
                  2='(2) CST-Central Standard Time'
                  4='(4) PST-Pacific Standard Time' ;
  VALUE b4zb1clg  99='(99) INAPP' ;
  VALUE b4q1a     1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1b     1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1c     1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1d     1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1e     1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1f     1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1g     1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1h     1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1i     1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1j     1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1k     1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1l     1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1m     1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1n     1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1o     1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1p     1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1q     1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1r     1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1s     1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1t     1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1u     1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1v     1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1w     1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1x     1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1y     1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1z     1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1aa    1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1bb    1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1cc    1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1dd    1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1ee    1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1ff    1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1gg    1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1hh    1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1ii    1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1jj    1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1kk    1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1ll    1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1mm    1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1nn    1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1oo    1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1pp    1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1qq    1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1rr    1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1ss    1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1tt    1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1uu    1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1vv    1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1ww    1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1xx    1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1yy    1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1zz    1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1aaa   1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1bbb   1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1ccc   1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1ddd   1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1eee   1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1fff   1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1ggg   1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1hhh   1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1iii   1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1jjj   1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1kkk   1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q1lll   1='(1) NOT AT ALL' 2='(2) A LITTLE BIT' 3='(3) MODERATELY'
                  4='(4) QUITE A BIT' 5='(5) EXTREMELY' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4qma_d   98='(98) NOT CALCULATED (Due to missing data)' ;
  VALUE b4qma_a   98='(98) NOT CALCULATED (Due to missing data)' ;
  VALUE b4qma_li  98='(98) NOT CALCULATED (Due to missing data)' ;
  VALUE b4qma_aa  98='(98) NOT CALCULATED (Due to missing data)' ;
  VALUE b4qma_pa  98='(98) NOT CALCULATED (Due to missing data)' ;
  VALUE b4q2ffff  0='(00) WORST' 1='(01) 1' 2='(02) 2' 3='(03) 3' 4='(04) 4'
                  5='(05) 5' 6='(06) 6' 7='(07) 7' 8='(08) 8' 9='(09) 9'
                  10='(10) BEST' 97='(97) DONT KNOW' 98='(98) MISSING'
                  99='(99) INAPP' ;
  VALUE b4q3a     1='(1) RARELY OR NONE OF THE TIME'
                  2='(2) SOME OR A LITTLE OF THE TIME' 3='(3) OCCASIONALLY'
                  4='(4) MOST OR ALL OF THE TIME' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q3b     1='(1) RARELY OR NONE OF THE TIME'
                  2='(2) SOME OR A LITTLE OF THE TIME' 3='(3) OCCASIONALLY'
                  4='(4) MOST OR ALL OF THE TIME' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q3c     1='(1) RARELY OR NONE OF THE TIME'
                  2='(2) SOME OR A LITTLE OF THE TIME' 3='(3) OCCASIONALLY'
                  4='(4) MOST OR ALL OF THE TIME' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q3d     1='(1) RARELY OR NONE OF THE TIME'
                  2='(2) SOME OR A LITTLE OF THE TIME' 3='(3) OCCASIONALLY'
                  4='(4) MOST OR ALL OF THE TIME' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q3e     1='(1) RARELY OR NONE OF THE TIME'
                  2='(2) SOME OR A LITTLE OF THE TIME' 3='(3) OCCASIONALLY'
                  4='(4) MOST OR ALL OF THE TIME' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q3f     1='(1) RARELY OR NONE OF THE TIME'
                  2='(2) SOME OR A LITTLE OF THE TIME' 3='(3) OCCASIONALLY'
                  4='(4) MOST OR ALL OF THE TIME' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q3g     1='(1) RARELY OR NONE OF THE TIME'
                  2='(2) SOME OR A LITTLE OF THE TIME' 3='(3) OCCASIONALLY'
                  4='(4) MOST OR ALL OF THE TIME' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q3h     1='(1) RARELY OR NONE OF THE TIME'
                  2='(2) SOME OR A LITTLE OF THE TIME' 3='(3) OCCASIONALLY'
                  4='(4) MOST OR ALL OF THE TIME' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q3i     1='(1) RARELY OR NONE OF THE TIME'
                  2='(2) SOME OR A LITTLE OF THE TIME' 3='(3) OCCASIONALLY'
                  4='(4) MOST OR ALL OF THE TIME' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q3j     1='(1) RARELY OR NONE OF THE TIME'
                  2='(2) SOME OR A LITTLE OF THE TIME' 3='(3) OCCASIONALLY'
                  4='(4) MOST OR ALL OF THE TIME' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q3k     1='(1) RARELY OR NONE OF THE TIME'
                  2='(2) SOME OR A LITTLE OF THE TIME' 3='(3) OCCASIONALLY'
                  4='(4) MOST OR ALL OF THE TIME' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q3l     1='(1) RARELY OR NONE OF THE TIME'
                  2='(2) SOME OR A LITTLE OF THE TIME' 3='(3) OCCASIONALLY'
                  4='(4) MOST OR ALL OF THE TIME' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q3m     1='(1) RARELY OR NONE OF THE TIME'
                  2='(2) SOME OR A LITTLE OF THE TIME' 3='(3) OCCASIONALLY'
                  4='(4) MOST OR ALL OF THE TIME' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q3n     1='(1) RARELY OR NONE OF THE TIME'
                  2='(2) SOME OR A LITTLE OF THE TIME' 3='(3) OCCASIONALLY'
                  4='(4) MOST OR ALL OF THE TIME' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q3o     1='(1) RARELY OR NONE OF THE TIME'
                  2='(2) SOME OR A LITTLE OF THE TIME' 3='(3) OCCASIONALLY'
                  4='(4) MOST OR ALL OF THE TIME' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q3p     1='(1) RARELY OR NONE OF THE TIME'
                  2='(2) SOME OR A LITTLE OF THE TIME' 3='(3) OCCASIONALLY'
                  4='(4) MOST OR ALL OF THE TIME' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q3q     1='(1) RARELY OR NONE OF THE TIME'
                  2='(2) SOME OR A LITTLE OF THE TIME' 3='(3) OCCASIONALLY'
                  4='(4) MOST OR ALL OF THE TIME' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q3r     1='(1) RARELY OR NONE OF THE TIME'
                  2='(2) SOME OR A LITTLE OF THE TIME' 3='(3) OCCASIONALLY'
                  4='(4) MOST OR ALL OF THE TIME' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q3s     1='(1) RARELY OR NONE OF THE TIME'
                  2='(2) SOME OR A LITTLE OF THE TIME' 3='(3) OCCASIONALLY'
                  4='(4) MOST OR ALL OF THE TIME' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q3t     1='(1) RARELY OR NONE OF THE TIME'
                  2='(2) SOME OR A LITTLE OF THE TIME' 3='(3) OCCASIONALLY'
                  4='(4) MOST OR ALL OF THE TIME' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4qcesd   98='(98) NOT CALCULATED (Due to missing data)' ;
  VALUE b4q4a     1='(1) NEVER' 2='(2) ALMOST NEVER' 3='(3) SOMETIMES'
                  4='(4) FAIRLY OFTEN' 5='(5) VERY OFTEN' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q4b     1='(1) NEVER' 2='(2) ALMOST NEVER' 3='(3) SOMETIMES'
                  4='(4) FAIRLY OFTEN' 5='(5) VERY OFTEN' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q4c     1='(1) NEVER' 2='(2) ALMOST NEVER' 3='(3) SOMETIMES'
                  4='(4) FAIRLY OFTEN' 5='(5) VERY OFTEN' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q4d     1='(1) NEVER' 2='(2) ALMOST NEVER' 3='(3) SOMETIMES'
                  4='(4) FAIRLY OFTEN' 5='(5) VERY OFTEN' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q4e     1='(1) NEVER' 2='(2) ALMOST NEVER' 3='(3) SOMETIMES'
                  4='(4) FAIRLY OFTEN' 5='(5) VERY OFTEN' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q4f     1='(1) NEVER' 2='(2) ALMOST NEVER' 3='(3) SOMETIMES'
                  4='(4) FAIRLY OFTEN' 5='(5) VERY OFTEN' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q4g     1='(1) NEVER' 2='(2) ALMOST NEVER' 3='(3) SOMETIMES'
                  4='(4) FAIRLY OFTEN' 5='(5) VERY OFTEN' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q4h     1='(1) NEVER' 2='(2) ALMOST NEVER' 3='(3) SOMETIMES'
                  4='(4) FAIRLY OFTEN' 5='(5) VERY OFTEN' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q4i     1='(1) NEVER' 2='(2) ALMOST NEVER' 3='(3) SOMETIMES'
                  4='(4) FAIRLY OFTEN' 5='(5) VERY OFTEN' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q4j     1='(1) NEVER' 2='(2) ALMOST NEVER' 3='(3) SOMETIMES'
                  4='(4) FAIRLY OFTEN' 5='(5) VERY OFTEN' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4qps_ps  98='(98) NOT CALCULATED (Due to missing data)' ;
  VALUE b4q5a     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q5b     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q5c     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q5d     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q5e     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q5f     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q5g     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q5h     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q5i     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q5j     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q5k     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q5l     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q5m     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q5n     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q5o     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q5p     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q5q     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q5r     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q5s     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q5t     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4qae_ai  98='(98) NOT CALCULATED (Due to missing data)' ;
  VALUE b4qae_ao  98='(98) NOT CALCULATED (Due to missing data)' ;
  VALUE b4qae_ac  98='(98) NOT CALCULATED (Due to missing data)' ;
  VALUE b4q5u     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q5v     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4qae_aa  8='(8) NOT CALCULATED (Due to missing data)' ;
  VALUE b4q6a     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q6b     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q6c     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q6d     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q6e     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q6f     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q6g     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q6h     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q6i     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q6j     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q6k     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q6l     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q6m     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q6n     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q6o     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4qta_ag  98='(98) NOT CALCULATED (Due to missing data)' ;
  VALUE b4qta_at  98='(98) NOT CALCULATED (Due to missing data)' ;
  VALUE b4qta_ar  98='(98) NOT CALCULATED (Due to missing data)' ;
  VALUE b4q7a     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q7b     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q7c     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q7d     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q7e     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q7f     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q7g     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q7h     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q7i     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q7j     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q7k     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q7l     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q7m     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q7n     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q7o     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q7p     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q7q     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q7r     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q7s     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q7t     1='(1) ALMOST NEVER' 2='(2) SOMETIMES' 3='(3) OFTEN'
                  4='(4) ALMOST ALWAYS' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4qta_ax  98='(98) NOT CALCULATED (Due to missing data)' ;
  VALUE b4q8a     1='(1) NONE' 2='(2) MILD' 3='(3) MODERATE' 4='(4) SEVERE'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q8b     1='(1) NONE' 2='(2) MILD' 3='(3) MODERATE' 4='(4) SEVERE'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q8c     1='(1) NONE' 2='(2) MILD' 3='(3) MODERATE' 4='(4) SEVERE'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q8d     1='(1) NONE' 2='(2) MILD' 3='(3) MODERATE' 4='(4) SEVERE'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q8e     1='(1) NONE' 2='(2) MILD' 3='(3) MODERATE' 4='(4) SEVERE'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q8f     1='(1) NONE' 2='(2) MILD' 3='(3) MODERATE' 4='(4) SEVERE'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q8g     1='(1) NONE' 2='(2) MILD' 3='(3) MODERATE' 4='(4) SEVERE'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q8h     1='(1) NONE' 2='(2) MILD' 3='(3) MODERATE' 4='(4) SEVERE'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q8i     1='(1) NONE' 2='(2) MILD' 3='(3) MODERATE' 4='(4) SEVERE'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4qsa_sa  8='(8) NOT CALCULATED (Due to missing data)' ;
  VALUE b4q9a     1='(1) NEVER TRUE' 2='(2) RARELY TRUE'
                  3='(3) SOMETIMES TRUE' 4='(4) OFTEN TRUE'
                  5='(5) VERY OFTEN TRUE' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q9b     1='(1) NEVER TRUE' 2='(2) RARELY TRUE'
                  3='(3) SOMETIMES TRUE' 4='(4) OFTEN TRUE'
                  5='(5) VERY OFTEN TRUE' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q9c     1='(1) NEVER TRUE' 2='(2) RARELY TRUE'
                  3='(3) SOMETIMES TRUE' 4='(4) OFTEN TRUE'
                  5='(5) VERY OFTEN TRUE' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q9d     1='(1) NEVER TRUE' 2='(2) RARELY TRUE'
                  3='(3) SOMETIMES TRUE' 4='(4) OFTEN TRUE'
                  5='(5) VERY OFTEN TRUE' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q9e     1='(1) NEVER TRUE' 2='(2) RARELY TRUE'
                  3='(3) SOMETIMES TRUE' 4='(4) OFTEN TRUE'
                  5='(5) VERY OFTEN TRUE' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q9f     1='(1) NEVER TRUE' 2='(2) RARELY TRUE'
                  3='(3) SOMETIMES TRUE' 4='(4) OFTEN TRUE'
                  5='(5) VERY OFTEN TRUE' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q9g     1='(1) NEVER TRUE' 2='(2) RARELY TRUE'
                  3='(3) SOMETIMES TRUE' 4='(4) OFTEN TRUE'
                  5='(5) VERY OFTEN TRUE' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q9h     1='(1) NEVER TRUE' 2='(2) RARELY TRUE'
                  3='(3) SOMETIMES TRUE' 4='(4) OFTEN TRUE'
                  5='(5) VERY OFTEN TRUE' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q9i     1='(1) NEVER TRUE' 2='(2) RARELY TRUE'
                  3='(3) SOMETIMES TRUE' 4='(4) OFTEN TRUE'
                  5='(5) VERY OFTEN TRUE' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q9j     1='(1) NEVER TRUE' 2='(2) RARELY TRUE'
                  3='(3) SOMETIMES TRUE' 4='(4) OFTEN TRUE'
                  5='(5) VERY OFTEN TRUE' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q9k     1='(1) NEVER TRUE' 2='(2) RARELY TRUE'
                  3='(3) SOMETIMES TRUE' 4='(4) OFTEN TRUE'
                  5='(5) VERY OFTEN TRUE' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q9l     1='(1) NEVER TRUE' 2='(2) RARELY TRUE'
                  3='(3) SOMETIMES TRUE' 4='(4) OFTEN TRUE'
                  5='(5) VERY OFTEN TRUE' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q9m     1='(1) NEVER TRUE' 2='(2) RARELY TRUE'
                  3='(3) SOMETIMES TRUE' 4='(4) OFTEN TRUE'
                  5='(5) VERY OFTEN TRUE' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q9n     1='(1) NEVER TRUE' 2='(2) RARELY TRUE'
                  3='(3) SOMETIMES TRUE' 4='(4) OFTEN TRUE'
                  5='(5) VERY OFTEN TRUE' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q9o     1='(1) NEVER TRUE' 2='(2) RARELY TRUE'
                  3='(3) SOMETIMES TRUE' 4='(4) OFTEN TRUE'
                  5='(5) VERY OFTEN TRUE' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q9p     1='(1) NEVER TRUE' 2='(2) RARELY TRUE'
                  3='(3) SOMETIMES TRUE' 4='(4) OFTEN TRUE'
                  5='(5) VERY OFTEN TRUE' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q9q     1='(1) NEVER TRUE' 2='(2) RARELY TRUE'
                  3='(3) SOMETIMES TRUE' 4='(4) OFTEN TRUE'
                  5='(5) VERY OFTEN TRUE' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q9r     1='(1) NEVER TRUE' 2='(2) RARELY TRUE'
                  3='(3) SOMETIMES TRUE' 4='(4) OFTEN TRUE'
                  5='(5) VERY OFTEN TRUE' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q9s     1='(1) NEVER TRUE' 2='(2) RARELY TRUE'
                  3='(3) SOMETIMES TRUE' 4='(4) OFTEN TRUE'
                  5='(5) VERY OFTEN TRUE' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q9t     1='(1) NEVER TRUE' 2='(2) RARELY TRUE'
                  3='(3) SOMETIMES TRUE' 4='(4) OFTEN TRUE'
                  5='(5) VERY OFTEN TRUE' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q9u     1='(1) NEVER TRUE' 2='(2) RARELY TRUE'
                  3='(3) SOMETIMES TRUE' 4='(4) OFTEN TRUE'
                  5='(5) VERY OFTEN TRUE' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q9v     1='(1) NEVER TRUE' 2='(2) RARELY TRUE'
                  3='(3) SOMETIMES TRUE' 4='(4) OFTEN TRUE'
                  5='(5) VERY OFTEN TRUE' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q9w     1='(1) NEVER TRUE' 2='(2) RARELY TRUE'
                  3='(3) SOMETIMES TRUE' 4='(4) OFTEN TRUE'
                  5='(5) VERY OFTEN TRUE' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q9x     1='(1) NEVER TRUE' 2='(2) RARELY TRUE'
                  3='(3) SOMETIMES TRUE' 4='(4) OFTEN TRUE'
                  5='(5) VERY OFTEN TRUE' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q9y     1='(1) NEVER TRUE' 2='(2) RARELY TRUE'
                  3='(3) SOMETIMES TRUE' 4='(4) OFTEN TRUE'
                  5='(5) VERY OFTEN TRUE' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q9z     1='(1) NEVER TRUE' 2='(2) RARELY TRUE'
                  3='(3) SOMETIMES TRUE' 4='(4) OFTEN TRUE'
                  5='(5) VERY OFTEN TRUE' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q9aa    1='(1) NEVER TRUE' 2='(2) RARELY TRUE'
                  3='(3) SOMETIMES TRUE' 4='(4) OFTEN TRUE'
                  5='(5) VERY OFTEN TRUE' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q9bb    1='(1) NEVER TRUE' 2='(2) RARELY TRUE'
                  3='(3) SOMETIMES TRUE' 4='(4) OFTEN TRUE'
                  5='(5) VERY OFTEN TRUE' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4qct_ea  98='(98) NOT CALCULATED (Due to missing data)' ;
  VALUE b4qct_pa  98='(98) NOT CALCULATED (Due to missing data)' ;
  VALUE b4qct_sa  98='(98) NOT CALCULATED (Due to missing data)' ;
  VALUE b4qct_en  98='(98) NOT CALCULATED (Due to missing data)' ;
  VALUE b4qct_pn  98='(98) NOT CALCULATED (Due to missing data)' ;
  VALUE b4qct_md  8='(8) NOT CALCULATED (Due to missing data)' ;
  VALUE b4q10a1f  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10a2f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10b1f  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10b2f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10c1f  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10c2f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10d1f  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10d2f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10e1f  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10e2f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10f1f  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10f2f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10g1f  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10g2f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10h1f  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10h2f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10i1f  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10i2f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10j1f  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10j2f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10k1f  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10k2f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10l1f  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10l2f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10m1f  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10m2f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10n1f  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10n2f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10o1f  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10o2f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10p1f  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10p2f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10q1f  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10q2f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10r1f  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10r2f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10s1f  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10s2f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10t1f  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10t2f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10u1f  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10u2f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10v1f  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10v2f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10w1f  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10w2f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10x1f  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10x2f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10y1f  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10y2f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10z1f  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10z2f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10aaf  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10a0f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10bbf  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10b0f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10ccf  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10c0f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10ddf  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10d0f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10eef  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10e0f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10fff  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10f0f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10ggf  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10g0f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10hhf  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10h0f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10iif  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10i0f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10jjf  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10j0f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10kkf  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10k0f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10llf  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10l0f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10mmf  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10m0f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10nnf  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10n0f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10oof  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10o0f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10ppf  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10p0f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10qqf  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10q0f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10rrf  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10r0f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10ssf  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10s0f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10ttf  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10t0f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10uuf  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10u0f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10vvf  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10v0f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q10wwf  1='(1) NEVER' 2='(2) 1-6 TIMES' 3='(3) 7+ TIMES'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q10w0f  1='(1) NEUTRAL OR UNPLEASANT' 2='(2) SOMEWHAT PLEASANT'
                  3='(3) VERY PLEASANT' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q11a    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q11b    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q11c    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q11d    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q11e    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q11f    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q11g    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q11h    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q11i    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q11j    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q11k    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q11l    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q11m    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q11n    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q11o    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q11p    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q11q    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q11r    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q11s    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q11t    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q11u    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q11v    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q11w    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q11x    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q11y    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q11z    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q11aa   1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q11bb   1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q11cc   1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4qsc_id  8='(8) NOT CALCULATED (Due to missing data)' ;
  VALUE b4qsc_it  8='(8) NOT CALCULATED (Due to missing data)' ;
  VALUE b4qso_pc  8='(8) NOT CALCULATED (Due to missing data)' ;
  VALUE b4qso_pf  8='(8) NOT CALCULATED (Due to missing data)' ;
  VALUE b4qso_px  8='(8) NOT CALCULATED (Due to missing data)' ;
  VALUE b4qso_iw  8='(8) NOT CALCULATED (Due to missing data)' ;
  VALUE b4qso_gw  8='(8) NOT CALCULATED (Due to missing data)' ;
  VALUE b4q12a    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q12b    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q12c    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q12d    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q12e    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q12f    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q12g    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q12h    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q12i    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q12j    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q12k    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q12l    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q12m    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q12n    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q12o    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q12p    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q12q    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q12r    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q12s    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q12t    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q12u    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4qrisc   8='(8) NOT CALCULATED (Due to missing data)' ;
  VALUE b4qsymp   8='(8) NOT CALCULATED (Due to missing data)' ;
  VALUE b4qadj    8='(8) NOT CALCULATED (Due to missing data)' ;
  VALUE b4q13a    1='(1) A LOT' 2='(2) SOME' 3='(3) A LITTLE'
                  4='(4) NOT AT ALL' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q13b    1='(1) A LOT' 2='(2) SOME' 3='(3) A LITTLE'
                  4='(4) NOT AT ALL' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q13c    1='(1) A LOT' 2='(2) SOME' 3='(3) A LITTLE'
                  4='(4) NOT AT ALL' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q13d    1='(1) A LOT' 2='(2) SOME' 3='(3) A LITTLE'
                  4='(4) NOT AT ALL' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q13e    1='(1) A LOT' 2='(2) SOME' 3='(3) A LITTLE'
                  4='(4) NOT AT ALL' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q13f    1='(1) A LOT' 2='(2) SOME' 3='(3) A LITTLE'
                  4='(4) NOT AT ALL' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q13g    1='(1) A LOT' 2='(2) SOME' 3='(3) A LITTLE'
                  4='(4) NOT AT ALL' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q13h    1='(1) A LOT' 2='(2) SOME' 3='(3) A LITTLE'
                  4='(4) NOT AT ALL' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q13h1f  1='(1) 0-5' 2='(2) 6-10' 3='(3) 11-20' 4='(4) 21-50'
                  5='(5) 51+' 7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q13i    1='(1) A LOT' 2='(2) SOME' 3='(3) A LITTLE'
                  4='(4) NOT AT ALL' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q13j    1='(1) A LOT' 2='(2) SOME' 3='(3) A LITTLE'
                  4='(4) NOT AT ALL' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q13k    1='(1) A LOT' 2='(2) SOME' 3='(3) A LITTLE'
                  4='(4) NOT AT ALL' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q13l    1='(1) A LOT' 2='(2) SOME' 3='(3) A LITTLE'
                  4='(4) NOT AT ALL' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q13m    1='(1) A LOT' 2='(2) SOME' 3='(3) A LITTLE'
                  4='(4) NOT AT ALL' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q13n    1='(1) A LOT' 2='(2) SOME' 3='(3) A LITTLE'
                  4='(4) NOT AT ALL' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q13o1f  1='(1) YES' 2='(2) NO' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q13o    1='(1) A LOT' 2='(2) SOME' 3='(3) A LITTLE'
                  4='(4) NOT AT ALL' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q13p    1='(1) A LOT' 2='(2) SOME' 3='(3) A LITTLE'
                  4='(4) NOT AT ALL' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q13q    1='(1) A LOT' 2='(2) SOME' 3='(3) A LITTLE'
                  4='(4) NOT AT ALL' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q13r    1='(1) A LOT' 2='(2) SOME' 3='(3) A LITTLE'
                  4='(4) NOT AT ALL' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q13s    1='(1) A LOT' 2='(2) SOME' 3='(3) A LITTLE'
                  4='(4) NOT AT ALL' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q13t    1='(1) A LOT' 2='(2) SOME' 3='(3) A LITTLE'
                  4='(4) NOT AT ALL' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q13u    1='(1) A LOT' 2='(2) SOME' 3='(3) A LITTLE'
                  4='(4) NOT AT ALL' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q13v    1='(1) A LOT' 2='(2) SOME' 3='(3) A LITTLE'
                  4='(4) NOT AT ALL' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q13w    1='(1) A LOT' 2='(2) SOME' 3='(3) A LITTLE'
                  4='(4) NOT AT ALL' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q13x    1='(1) A LOT' 2='(2) SOME' 3='(3) A LITTLE'
                  4='(4) NOT AT ALL' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q13y    1='(1) A LOT' 2='(2) SOME' 3='(3) A LITTLE'
                  4='(4) NOT AT ALL' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4q13z    1='(1) A LOT' 2='(2) SOME' 3='(3) A LITTLE'
                  4='(4) NOT AT ALL' 7='(7) DONT KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4qsugf   8='(8) NOT CALCULATED (Due to missing data)' ;
  VALUE b4qstgf   8='(8) NOT CALCULATED (Due to missing data)' ;
  VALUE b4qsogfd  8='(8) NOT CALCULATED (Due to missing data)' ;
  VALUE b4qsugfa  8='(8) NOT CALCULATED (Due to missing data)' ;
  VALUE b4qstgfa  8='(8) NOT CALCULATED (Due to missing data)' ;
  VALUE b4qsogfm  8='(8) NOT CALCULATED (Due to missing data)' ;
  VALUE b4qsugs   8='(8) NOT CALCULATED (Due to missing data)'
                  9='(9) NOT CALCULATED (Due to INAPP data)' ;
  VALUE b4qstgs   8='(8) NOT CALCULATED (Due to missing data)'
                  9='(9) NOT CALCULATED (Due to INAPP data)' ;
  VALUE b4qsolgs  8='(8) NOT CALCULATED (Due to missing data)'
                  9='(9) NOT CALCULATED (Due to INAPP data)' ;
  VALUE b4q14a    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q14b    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q14c    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q14d    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q14e    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q14f    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q14g    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q14h    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q14i    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q14j    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q14k    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q14l    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q14m    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q14n    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q14o    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q14p    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q14q    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q14r    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q14s    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4qsc_sc  8='(8) NOT CALCULATED (Due to missing data)' ;
  VALUE b4qsc_cc  8='(8) NOT CALCULATED (Due to missing data)' ;
  VALUE b4qsc_ec  8='(8) NOT CALCULATED (Due to missing data)' ;
  VALUE b4qsc_bc  8='(8) NOT CALCULATED (Due to missing data)' ;
  VALUE b4q15a    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q15b    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q15c    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q15d    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q15e    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q15f    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q15g    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4q15h    1='(1) STRONGLY DISAGREE' 2='(2) DISAGREE'
                  3='(3) SLIGHTLY DISAGREE' 4='(4) NEUTRAL'
                  5='(5) SLIGHTLY AGREE' 6='(6) AGREE' 7='(7) STRONGLY AGREE'
                  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4qsw_sl  8='(8) NOT CALCULATED (Due to missing data)' ;
  VALUE b4qsw_gr  8='(8) NOT CALCULATED (Due to missing data)' ;
  VALUE b4q16a    1='(1) NOT AT ALL IMPORTANT' 2='(2) SOMEWHAT IMPORTANT'
                  3='(3) VERY IMPORTANT' 4='(4) EXTREMELY IMPORTANT'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q16b    1='(1) NOT AT ALL IMPORTANT' 2='(2) SOMEWHAT IMPORTANT'
                  3='(3) VERY IMPORTANT' 4='(4) EXTREMELY IMPORTANT'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q16c    1='(1) NOT AT ALL IMPORTANT' 2='(2) SOMEWHAT IMPORTANT'
                  3='(3) VERY IMPORTANT' 4='(4) EXTREMELY IMPORTANT'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q16d    1='(1) NOT AT ALL IMPORTANT' 2='(2) SOMEWHAT IMPORTANT'
                  3='(3) VERY IMPORTANT' 4='(4) EXTREMELY IMPORTANT'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q16e    1='(1) NOT AT ALL IMPORTANT' 2='(2) SOMEWHAT IMPORTANT'
                  3='(3) VERY IMPORTANT' 4='(4) EXTREMELY IMPORTANT'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q16f    1='(1) NOT AT ALL IMPORTANT' 2='(2) SOMEWHAT IMPORTANT'
                  3='(3) VERY IMPORTANT' 4='(4) EXTREMELY IMPORTANT'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q16g    1='(1) NOT AT ALL IMPORTANT' 2='(2) SOMEWHAT IMPORTANT'
                  3='(3) VERY IMPORTANT' 4='(4) EXTREMELY IMPORTANT'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4q16h    1='(1) NOT AT ALL IMPORTANT' 2='(2) SOMEWHAT IMPORTANT'
                  3='(3) VERY IMPORTANT' 4='(4) EXTREMELY IMPORTANT'
                  7='(7) DONT KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4qsw_jp  8='(8) NOT CALCULATED (Due to missing data)' ;
  VALUE b4q17a    6='(6) CODING PENDING' 98='(98) MISSING' ;
  VALUE b4s1ampm  1='(1) 1=AM' 2='(2) 2=PM' 7='(7) 7=DONT KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4s2ffff  9997='(9997) DONT KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4s3ampm  1='(1) 1=AM' 2='(2) 2=PM' 7='(7) 7=DONT KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4s4ffff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4s5ffff  1='(1) 1=VERY GOOD' 2='(2) 2=FAIRLY GOOD'
                  3='(3) 3=FAIRLY BAD' 4='(4) 4=VERY BAD' 7='(7) 7=DONT KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4s6ffff  1='(1) 1=NO PROBLEM' 2='(2) 2=SLIGHT PROBLEM'
                  3='(3) 3=SOMEWHAT' 4='(4) 4=VERY BIG' 7='(7) 7=DONT KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4s7ffff  1='(1) 1=NOT DURING PAST MONTH' 2='(2) 2=LESS THAN 1X WEEK'
                  3='(3) 3=1-2 X WEEK' 4='(4) 4=3+ WEEK' 7='(7) 7=DONT KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4s8ffff  1='(1) 1=NOT DURING PAST MONTH' 2='(2) 2=LESS THAN 1X WEEK'
                  3='(3) 3=1-2 X WEEK' 4='(4) 4=3+ WEEK' 7='(7) 7=DONT KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4s9ffff  1='(1) 1=NO BED PARTNER' 2='(2) 2=OTHER ROOM'
                  3='(3) 3=SAME ROOM' 4='(4) 4=SAME BED' 7='(7) 7=DONT KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4s10a    1='(1) 1=NOT DURING PAST MONTH'
                  2='(2) 2=LESS THAN 1 X WEEK' 3='(3) 3=1-2 X WEEK'
                  4='(4) 4=3+ WEEK' 7='(7) 7=DONT KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4s10b    1='(1) 1=NOT DURING PAST MONTH' 2='(2) 2=LESS THAN 1X WEEK'
                  3='(3) 3=1-2 X WEEK' 4='(4) 4=3+ WEEK' 7='(7) 7=DONT KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4s10c    1='(1) 1=NOT DURING PAST MONTH'
                  2='(2) 2=LESS THAN 1 X WEEK' 3='(3) 3=1-2 X WEEK'
                  4='(4) 4=3+ WEEK' 7='(7) 7=DONT KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4s10d    1='(1) 1=NOT DURING PAST MONTH'
                  2='(2) 2=LESS THAN 1 X WEEK' 3='(3) 3=1-2 X WEEK'
                  4='(4) 4=3+ WEEK' 7='(7) 7=DONT KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4s10e    1='(1) 1=NOT DURING PAST MONTH'
                  2='(2) 2=LESS THAN 1 X WEEK' 3='(3) 3=1-2 X WEEK'
                  4='(4) 4=3+ WEEK' 7='(7) 7=DONT KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4s11a    1='(1) 1=NOT DURING PAST MONTH'
                  2='(2) 2=LESS THAN 1 X WEEK' 3='(3) 3=1-2 X WEEK'
                  4='(4) 4=3+ WEEK' 7='(7) 7=DONT KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4s11b    1='(1) 1=NOT DURING PAST MONTH'
                  2='(2) 2=LESS THAN 1 X WEEK' 3='(3) 3=1-2 X WEEK'
                  4='(4) 4=3+ WEEK' 7='(7) 7=DONT KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4s11c    1='(1) 1=NOT DURING PAST MONTH'
                  2='(2) 2=LESS THAN 1 X WEEK' 3='(3) 3=1-2 X WEEK'
                  4='(4) 4=3+ WEEK' 7='(7) 7=DONT KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4s11d    1='(1) 1=NOT DURING PAST MONTH'
                  2='(2) 2=LESS THAN 1 X WEEK' 3='(3) 3=1-2 X WEEK'
                  4='(4) 4=3+ WEEK' 7='(7) 7=DONT KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4s11e    1='(1) 1=NOT DURING PAST MONTH'
                  2='(2) 2=LESS THAN 1 X WEEK' 3='(3) 3=1-2 X WEEK'
                  4='(4) 4=3+ WEEK' 7='(7) 7=DONT KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4s11f    1='(1) 1=NOT DURING PAST MONTH'
                  2='(2) 2=LESS THAN 1 X WEEK' 3='(3) 3=1-2 X WEEK'
                  4='(4) 4=3+ WEEK' 7='(7) 7=DONT KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4s11g    1='(1) 1=NOT DURING PAST MONTH'
                  2='(2) 2=LESS THAN 1 X WEEK' 3='(3) 3=1-2 X WEEK'
                  4='(4) 4=3+ WEEK' 7='(7) 7=DONT KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4s11h    1='(1) 1=NOT DURING PAST MONTH'
                  2='(2) 2=LESS THAN 1 X WEEK' 3='(3) 3=1-2 X WEEK'
                  4='(4) 4=3+ WEEK' 7='(7) 7=DONT KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4s11i    1='(1) 1=NOT DURING PAST MONTH'
                  2='(2) 2=LESS THAN 1 X WEEK' 3='(3) 3=1-2 X WEEK'
                  4='(4) 4=3+ WEEK' 7='(7) 7=DONT KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4s11j    1='(1) 1=NOT DURING PAST MONTH'
                  2='(2) 2=LESS THAN 1 X WEEK' 3='(3) 3=1-2 X WEEK'
                  4='(4) 4=3+ WEEK' 7='(7) 7=DONT KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4ssq_gs  98='(98) NOT CALCULATED - Due to missing data' ;
  VALUE b4ssq_sf  8='(8) NOT CALCULATED - Due to missing data' ;
  VALUE b4ssq_0f  8='(8) NOT CALCULATED - Due to missing data' ;
  VALUE b4ssq_1f  8='(8) NOT CALCULATED - Due to missing data' ;
  VALUE b4ssq_2f  8='(8) NOT CALCULATED - Due to missing data' ;
  VALUE b4ssq_3f  8='(8) NOT CALCULATED - Due to missing data' ;
  VALUE b4ssq_4f  8='(8) NOT CALCULATED - Due to missing data' ;
  VALUE b4ssq_5f  8='(8) NOT CALCULATED - Due to missing data' ;
  VALUE b4h1a     1='(1) YES' 2='(2) NO' 3='(3) BORDERLINE' 7='(7) UNSURE'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h1ad    1='(1) YES' 2='(2) NO' 7='(7) UNSURE' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h1b     1='(1) YES' 2='(2) NO' 3='(3) BORDERLINE' 7='(7) UNSURE'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h1bd    1='(1) YES' 2='(2) NO' 7='(7) UNSURE' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h1c     1='(1) YES' 2='(2) NO' 3='(3) BORDERLINE' 7='(7) UNSURE'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h1cd    1='(1) YES' 2='(2) NO' 7='(7) UNSURE' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h1d     1='(1) YES' 2='(2) NO' 3='(3) BORDERLINE' 7='(7) UNSURE'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h1dd    1='(1) YES' 2='(2) NO' 7='(7) UNSURE' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h1e     1='(1) YES' 2='(2) NO' 3='(3) BORDERLINE' 7='(7) UNSURE'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h1ed    1='(1) YES' 2='(2) NO' 7='(7) UNSURE' 8='(8) MISSING' ;
  VALUE b4h1f     1='(1) YES' 2='(2) NO' 3='(3) BORDERLINE' 7='(7) UNSURE'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h1fd    1='(1) YES' 2='(2) NO' 7='(7) UNSURE' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h1g     1='(1) YES' 2='(2) NO' 3='(3) BORDERLINE' 7='(7) UNSURE'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h1gd    1='(1) YES' 2='(2) NO' 7='(7) UNSURE' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h1h     1='(1) YES' 2='(2) NO' 3='(3) BORDERLINE' 7='(7) UNSURE'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h1hd    1='(1) YES' 2='(2) NO' 7='(7) UNSURE' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h1i     1='(1) YES' 2='(2) NO' 3='(3) BORDERLINE' 7='(7) UNSURE'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h1id    1='(1) YES' 2='(2) NO' 7='(7) UNSURE' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h1j     1='(1) YES' 2='(2) NO' 3='(3) BORDERLINE' 7='(7) UNSURE'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h1jd    1='(1) YES' 2='(2) NO' 7='(7) UNSURE' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h1k     1='(1) YES' 2='(2) NO' 3='(3) BORDERLINE' 7='(7) UNSURE'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h1kd    1='(1) YES' 2='(2) NO' 7='(7) UNSURE' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h1l     1='(1) YES' 2='(2) NO' 3='(3) BORDERLINE' 7='(7) UNSURE'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h1ld    1='(1) YES' 2='(2) NO' 7='(7) UNSURE' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h1m     1='(1) YES' 2='(2) NO' 3='(3) BORDERLINE' 7='(7) UNSURE'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h1md    1='(1) YES' 2='(2) NO' 7='(7) UNSURE' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h1n     1='(1) YES' 2='(2) NO' 3='(3) BORDERLINE' 7='(7) UNSURE'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h1nd    1='(1) YES' 2='(2) NO' 7='(7) UNSURE' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h1o     1='(1) YES' 2='(2) NO' 3='(3) BORDERLINE' 7='(7) UNSURE'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h1od    1='(1) YES' 2='(2) NO' 7='(7) UNSURE' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h1p     1='(1) YES' 2='(2) NO' 3='(3) BORDERLINE' 7='(7) UNSURE'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h1pd    1='(1) YES' 2='(2) NO' 7='(7) UNSURE' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h1q     1='(1) YES' 2='(2) NO' 3='(3) BORDERLINE' 7='(7) UNSURE'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h1qd    1='(1) YES' 2='(2) NO' 7='(7) UNSURE' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h1r     1='(1) YES' 2='(2) NO' 3='(3) BORDERLINE' 7='(7) UNSURE'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h1rd    1='(1) YES' 2='(2) NO' 7='(7) UNSURE' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h1s     1='(1) YES' 2='(2) NO' 3='(3) BORDERLINE' 7='(7) UNSURE'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h1sd    1='(1) YES' 2='(2) NO' 7='(7) UNSURE' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h1t     1='(1) YES' 2='(2) NO' 3='(3) BORDERLINE' 7='(7) UNSURE'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h1td    1='(1) YES' 2='(2) NO' 7='(7) UNSURE' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h1u     1='(1) YES' 2='(2) NO' 3='(3) BORDERLINE' 7='(7) UNSURE'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h1ud    1='(1) YES' 2='(2) NO' 7='(7) UNSURE' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h1v     1='(1) YES' 2='(2) NO' 3='(3) BORDERLINE' 7='(7) UNSURE'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h1vd    1='(1) YES' 2='(2) NO' 7='(7) UNSURE' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h1w     1='(1) YES' 2='(2) NO' 3='(3) BORDERLINE' 7='(7) UNSURE'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h1wd    1='(1) YES' 2='(2) NO' 7='(7) UNSURE' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h1x     1='(1) YES' 2='(2) NO' 3='(3) BORDERLINE' 7='(7) UNSURE'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h1xd    1='(1) YES' 2='(2) NO' 7='(7) UNSURE' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h1y     1='(1) YES' 2='(2) NO' 3='(3) BORDERLINE' 7='(7) UNSURE'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h1yd    1='(1) YES' 2='(2) NO' 7='(7) UNSURE' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4hsymn   0='(0) NONE' ;
  VALUE b4hsymx   1='(1) YES' 2='(2) NO' ;
  VALUE b4h2ffff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h2af    97='(97) DON''T KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4h2ay    9996='(9996) CHILDHOOD' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4h2bf    97='(97) DON''T KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4h2by    9996='(9996) CHILDHOOD' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4h2cf    97='(97) DON''T KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4h2cy    9996='(9996) CHILDHOOD' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4h2df    97='(97) DON''T KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4h2dy    9996='(9996) CHILDHOOD' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4h2ef    97='(97) DON''T KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4h2ey    9996='(9996) CHILDHOOD' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4h2ff    97='(97) DON''T KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4h2fy    9996='(9996) CHILDHOOD' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4h2gf    97='(97) DON''T KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4h2gy    9996='(9996) CHILDHOOD' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4h2hf    97='(97) DON''T KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4h2hy    9996='(9996) CHILDHOOD' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4h2if    97='(97) DON''T KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4h2iy    9996='(9996) CHILDHOOD' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4h2jf    97='(97) DON''T KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4h2jy    9996='(9996) CHILDHOOD' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4h2kf    97='(97) DON''T KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4h2ky    9996='(9996) CHILDHOOD' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4h2lf    97='(97) DON''T KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4h2ly    9996='(9996) CHILDHOOD' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4h2mf    97='(97) DON''T KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4h2my    9996='(9996) CHILDHOOD' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4h2nf    97='(97) DON''T KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4h2ny    9996='(9996) CHILDHOOD' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4hbrkb   0='(0) NONE' 97='(97) DON''T KNOW' ;
  VALUE b4h3ffff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h3al    1='(1) OFFICE VISIT' 2='(2) OUTPATIENT CLINIC'
                  3='(3) INPATIENT(OVERNIGHT)' 7='(7) DON''T KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h3ay    9996='(9996) CHILDHOOD' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4h3bl    1='(1) OFFICE VISIT' 2='(2) OUTPATIENT CLINIC'
                  3='(3) INPATIENT(OVERNIGHT)' 7='(7) DON''T KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h3by    9996='(9996) CHILDHOOD' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4h3cl    1='(1) OFFICE VISIT' 2='(2) OUTPATIENT CLINIC'
                  3='(3) INPATIENT(OVERNIGHT)' 7='(7) DON''T KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h3cy    9996='(9996) CHILDHOOD' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4h3dl    1='(1) OFFICE VISIT' 2='(2) OUTPATIENT CLINIC'
                  3='(3) INPATIENT(OVERNIGHT)' 7='(7) DON''T KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h3dy    9996='(9996) CHILDHOOD' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4h3el    1='(1) OFFICE VISIT' 2='(2) OUTPATIENT CLINIC'
                  3='(3) INPATIENT(OVERNIGHT)' 7='(7) DON''T KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h3ey    9996='(9996) CHILDHOOD' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4h3fl    1='(1) OFFICE VISIT' 2='(2) OUTPATIENT CLINIC'
                  3='(3) INPATIENT(OVERNIGHT)' 7='(7) DON''T KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h3fy    9996='(9996) CHILDHOOD' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4h3gl    1='(1) OFFICE VISIT' 2='(2) OUTPATIENT CLINIC'
                  3='(3) INPATIENT(OVERNIGHT)' 7='(7) DON''T KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h3gy    9996='(9996) CHILDHOOD' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4h3hl    1='(1) OFFICE VISIT' 2='(2) OUTPATIENT CLINIC'
                  3='(3) INPATIENT(OVERNIGHT)' 7='(7) DON''T KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h3hy    9996='(9996) CHILDHOOD' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4h3il    1='(1) OFFICE VISIT' 2='(2) OUTPATIENT CLINIC'
                  3='(3) INPATIENT(OVERNIGHT)' 7='(7) DON''T KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h3iy    9996='(9996) CHILDHOOD' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4h3jl    1='(1) OFFICE VISIT' 2='(2) OUTPATIENT CLINIC'
                  3='(3) INPATIENT(OVERNIGHT)' 7='(7) DON''T KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h3jy    9996='(9996) CHILDHOOD' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4hsurg   0='(0) NONE' ;
  VALUE b4h4ffff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h4ah    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h4ay    9996='(9996) CHILDHOOD' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4h4bh    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h4by    9996='(9996) CHILDHOOD' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4h4ch    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h4cy    9996='(9996) CHILDHOOD' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4hhead   0='(0) NONE' ;
  VALUE b4h5ffff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h5ah    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h5ay    9996='(9996) CHILDHOOD' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4h5bh    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h5by    9996='(9996) CHILDHOOD' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4h5ch    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h5cy    9996='(9996) CHILDHOOD' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4hjnt    0='(0) NONE' ;
  VALUE b4h6ffff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h6ah    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h6ay    9996='(9996) CHILDHOOD' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4h6bh    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h6by    9996='(9996) CHILDHOOD' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4h6ch    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h6cy    9996='(9996) CHILDHOOD' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4h6dh    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' ;
  VALUE b4h6dy    9996='(9996) CHILDHOOD' 9997='(9997) 9997=UNSURE'
                  9998='(9998) 9998=REFUSED' ;
  VALUE b4hmva    0='(0) NONE' ;
  VALUE b4h7ffff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h7ah    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h7ay    9996='(9996) CHILDHOOD' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4h7bh    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h7by    9996='(9996) CHILDHOOD' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4hampu   0='(0) NONE' ;
  VALUE b4h8ffff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h8ah    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h8ay    9996='(9996) CHILDHOOD' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4h8bh    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h8by    9996='(9996) CHILDHOOD' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4h8ch    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h8cy    9996='(9996) CHILDHOOD' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4h8dh    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h8dy    9996='(9996) CHILDHOOD' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4hohlth  0='(0) NONE' ;
  VALUE b4h9ffff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4h10fff  1='(1) 1=ALL DIAGNOSED' 2='(2) 2=SOME DX, SOME NOT DX'
                  3='(3) 3=NO DX, SOME NOT DX' 4='(4) 4=NONE'
                  7='(7) 7=UNSURE' 8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h10a    1='(1) 1=YES' 2='(2) 2=NO' 3='(3) 3=UNDIAGNOSED'
                  7='(7) 7=UNSURE' 8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h10b    1='(1) 1=YES' 2='(2) 2=NO' 3='(3) 3=UNDIAGNOSED'
                  7='(7) 7=UNSURE' 8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h10c    1='(1) 1=YES' 2='(2) 2=NO' 3='(3) 3=UNDIAGNOSED'
                  7='(7) 7=UNSURE' 8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h10d    1='(1) 1=YES' 2='(2) 2=NO' 3='(3) 3=UNDIAGNOSED'
                  7='(7) 7=UNSURE' 8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h10e    1='(1) 1=YES' 2='(2) 2=NO' 3='(3) 3=UNDIAGNOSED'
                  7='(7) 7=UNSURE' 8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h10f    1='(1) 1=YES' 2='(2) 2=NO' 3='(3) 3=UNDIAGNOSED'
                  7='(7) 7=UNSURE' 8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h11a    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h11ai   1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h11aa   996='(996) CHILDHOOD' 997='(997) UNSURE'
                  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4h11b    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h11bi   1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h11ba   996='(996) CHILDHOOD' 997='(997) UNSURE'
                  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4h11c    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h11ci   1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h11ca   996='(996) CHILDHOOD' 997='(997) UNSURE'
                  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4h11d    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h11di   1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h11da   996='(996) CHILDHOOD' 997='(997) UNSURE'
                  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4h11e    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h12a    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h12am   1='(01) JANUARY' 2='(02) FEBRUARY' 3='(03) MARCH'
                  4='(04) APRIL' 5='(05) MAY' 6='(06) JUNE' 7='(07) JULY'
                  8='(08) AUGUST' 9='(09) SEPTEMBER' 10='(10) OCTOBER'
                  11='(11) NOVEMBER' 12='(12) DECEMBER' 97='(97) UNSURE'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4h12ay   9997='(9997) 9997=UNSURE' 9998='(9998) 9998=REFUSED'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4h12b    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h12bm   1='(01) JANUARY' 2='(02) FEBRUARY' 3='(03) MARCH'
                  4='(04) APRIL' 5='(05) MAY' 6='(06) JUNE' 7='(07) JULY'
                  8='(08) AUGUST' 9='(09) SEPTEMBER' 10='(10) OCTOBER'
                  11='(11) NOVEMBER' 12='(12) DECEMBER' 97='(97) UNSURE'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4h12by   9997='(9997) 9997=UNSURE' 9998='(9998) 9998=REFUSED'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4h12c    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h12cm   1='(01) JANUARY' 2='(02) FEBRUARY' 3='(03) MARCH'
                  4='(04) APRIL' 5='(05) MAY' 6='(06) JUNE' 7='(07) JULY'
                  8='(08) AUGUST' 9='(09) SEPTEMBER' 10='(10) OCTOBER'
                  11='(11) NOVEMBER' 12='(12) DECEMBER' 97='(97) UNSURE'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4h12cy   9997='(9997) 9997=UNSURE' 9998='(9998) 9998=REFUSED'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4h13fff  1='(1) 1=EVERY YEAR' 2='(2) 2=ALMOST EVERY YEAR'
                  3='(3) 3=EVERY COUPLE YEARS' 4='(4) 4=RARELY'
                  5='(5) ONLY ONCE (REACTION)' 6='(6) 6=NEVER ALLERGIC'
                  7='(7) 7=NEVER' 8='(8) 8=OTHER'
                  9='(9) 9=ONLY ONCE, NO REACTION' 97='(97) 97=UNSURE'
                  98='(98) 98=REFUSED' 99='(99) 99=INAPP' ;
  VALUE b4h14fff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h14a    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15a    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15a1f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15a2f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15a3f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15a4f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15a5f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15a6f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15a7f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15b    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15b1f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15b2f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15b3f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15b4f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15b5f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15b6f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15b7f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15c    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15c1f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15c2f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15c3f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15c4f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15c5f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15c6f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15c7f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15d    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15d1f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15d2f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15d3f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15d4f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15d5f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15d6f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15d7f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15e    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15e1f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15e2f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15e3f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15e4f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15e5f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15e6f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15e7f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15f    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15f1f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15f2f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15f3f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15f4f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15f5f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15f6f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15f7f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15g    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15g1f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15g2f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15g3f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15g4f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15g5f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15g6f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15g7f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15h    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15h1f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15h2f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15h3f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15h4f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15h5f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15h6f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15h7f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15i    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15i1f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15i2f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15i3f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15i4f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15i5f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15i6f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15i7f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15j    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15j1f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15j2f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15j3f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15j4f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15j5f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15j6f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15j7f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15k    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15k1f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15k2f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15k3f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15k4f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15k5f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15k6f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15k7f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15l    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15l1f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15l2f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15l3f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15l4f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15l5f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15l6f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15l7f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15m    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15m1f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15m2f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15m3f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15m4f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15m5f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15m6f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15m7f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15n    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15n1f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15n2f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15n3f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15n4f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15n5f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15n6f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15n7f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15o    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15o1f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15o2f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15o3f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15o4f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15o5f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15o6f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15o7f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15p    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15p1f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15p2f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15p3f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15p4f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15p5f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15p6f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15p7f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15q    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15q1f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15q2f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15q3f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15q4f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15q5f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15q6f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15q7f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15r    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15r1f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15r2f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15r3f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15r4f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15r5f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15r6f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15r7f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15s    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15s1f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15s2f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15s3f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15s4f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15s5f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15s6f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15s7f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h15oth  97='(97) UNSURE' 98='(98) REFUSED' 99='(99) INAPP' ;
  VALUE b4hfmhn   0='(0) NONE' ;
  VALUE b4hfmhx   1='(1) YES' 2='(2) NO' 9='(9) INAPP' ;
  VALUE b4h16fff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h17af   9997='(9997) UNSURE' 9998='(9998) REFUSED'
                  9999='(9999) INAPP' ;
  VALUE b4h17at   1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  7='(7) 7=UNSURE' 8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h17bf   9997='(9997) UNSURE' 9998='(9998) REFUSED'
                  9999='(9999) INAPP' ;
  VALUE b4h17bt   1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  7='(7) 7=UNSURE' 8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h17cf   9997='(9997) UNSURE' 9998='(9998) REFUSED'
                  9999='(9999) INAPP' ;
  VALUE b4h17ct   1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  7='(7) 7=UNSURE' 8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h18af   9997='(9997) UNSURE' 9998='(9998) REFUSED'
                  9999='(9999) INAPP' ;
  VALUE b4h18at   1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  7='(7) 7=UNSURE' 8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h18bf   9997='(9997) UNSURE' 9998='(9998) REFUSED'
                  9999='(9999) INAPP' ;
  VALUE b4h18bt   1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  7='(7) 7=UNSURE' 8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h18cf   9997='(9997) UNSURE' 9998='(9998) REFUSED'
                  9999='(9999) INAPP' ;
  VALUE b4h18ct   1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  7='(7) 7=UNSURE' 8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h19fff  1='(1) 1=NONE' 2='(2) 2=1-3 GLASSES/DAY'
                  3='(3) 3=4-7 GLASSES/DAY' 4='(4) 4=8 OR MORE GLASSES/DAY'
                  5='(5) 5=OTHER LESS THAN 1X/DAY' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h20fff  1='(1) 1=NONE' 2='(2) 2=1-3 GLASSES/DAY'
                  3='(3) 3=4-6 GLASSES/DAY' 4='(4) 4=7 OR MORE GLASSES/DAY'
                  5='(5) 5=OTHER LESS THAN ONCE/DAY' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h21fff  1='(1) 1=NONE' 2='(2) 2=1-2 SERVINGS/DAY'
                  3='(3) 3=3-4 SERVINGS/DAY' 4='(4) 4=5 OR MORE SERVINGS/DAY'
                  5='(5) 5=OTHER LESS THAN ONCE/DAY' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h22fff  1='(1) 1=NONE' 2='(2) 2=1-2 SERVINGS/DAY'
                  3='(3) 3=3-4 SERVINGS/DAY' 4='(4) 4=5 OR MORE SERVINGS/DAY'
                  5='(5) 5=OTHER LESS THAN ONCE/DAY' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h23a    1='(1) 1=NEVER' 2='(2) 2=LESS THAN ONCE/WEEK'
                  3='(3) 3=1-2 X/WEEK' 4='(4) 4=3-4 X/WEEK'
                  5='(5) 5=5 OR MORE X/WEEK' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h23b    1='(1) 1=NEVER' 2='(2) 2=LESS THAN ONCE/WEEK'
                  3='(3) 3=1-2 X/WEEK' 4='(4) 4=3-4 X/WEEK'
                  5='(5) 5=5 OR MORE X/WEEK' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h23c    1='(1) 1=NEVER' 2='(2) 2=LESS THAN ONCE/WEEK'
                  3='(3) 3=1-2 X/WEEK' 4='(4) 4=3-4 X/WEEK'
                  5='(5) 5=5 OR MORE X/WEEK' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h23d    1='(1) 1=NEVER' 2='(2) 2=LESS THAN ONCE/WEEK'
                  3='(3) 3=1-2 X/WEEK' 4='(4) 4=3-4 X/WEEK'
                  5='(5) 5=5 OR MORE X/WEEK' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h24fff  1='(1) 1=NEVER' 2='(2) 2=LESS THAN ONCE/WEEK'
                  3='(3) 3=1-3 X/WEEK' 4='(4) 4=4-6 X/WEEK'
                  5='(5) 5=7 OR MORE X/WEEK' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h25fff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h25as   1='(01) NOT SEASONAL' 2='(02) WINTER' 3='(03) SPRING'
                  4='(04) SUMMER' 5='(05) FALL' 6='(06) SPRING TO FALL'
                  7='(07) SPRING TO SUMMER' 8='(08) SUMMER TO FALL'
                  9='(09) FALL TO SPRING' 10='(10) SPRING & FALL'
                  97='(97) UNSURE' 98='(98) REFUSED' 99='(99) INAPP' ;
  VALUE b4h25afd  97='(97) 97=UNSURE' 98='(98) 98=REFUSED' 99='(99) 99=INAPP' ;
  VALUE b4h25afw  97='(97) 97=UNSURE' 98='(98) 98=REFUSED' 99='(99) 99=INAPP' ;
  VALUE b4h25am   9997='(9997) 9997=UNSURE' 9998='(9998) 9998=REFUSED'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4h25ai   1='(1) 1=VIGOROUS' 2='(2) 2=MODERATE' 3='(3) 3=LIGHT'
                  7='(7) 7=UNSURE' 8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h25bs   1='(01) NOT SEASONAL' 2='(02) WINTER' 3='(03) SPRING'
                  4='(04) SUMMER' 5='(05) FALL' 6='(06) SPRING TO FALL'
                  7='(07) SPRING TO SUMMER' 8='(08) SUMMER TO FALL'
                  9='(09) FALL TO SPRING' 10='(10) SPRING & FALL'
                  97='(97) UNSURE' 98='(98) REFUSED' 99='(99) INAPP' ;
  VALUE b4h25bfd  97='(97) 97=UNSURE' 98='(98) 98=REFUSED' 99='(99) 99=INAPP' ;
  VALUE b4h25bfw  97='(97) 97=UNSURE' 98='(98) 98=REFUSED' 99='(99) 99=INAPP' ;
  VALUE b4h25bm   9997='(9997) 9997=UNSURE' 9998='(9998) 9998=REFUSED'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4h25bi   1='(1) 1=VIGOROUS' 2='(2) 2=MODERATE' 3='(3) 3=LIGHT'
                  7='(7) 7=UNSURE' 8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h25cs   1='(01) NOT SEASONAL' 2='(02) WINTER' 3='(03) SPRING'
                  4='(04) SUMMER' 5='(05) FALL' 6='(06) SPRING TO FALL'
                  7='(07) SPRING TO SUMMER' 8='(08) SUMMER TO FALL'
                  9='(09) FALL TO SPRING' 10='(10) SPRING & FALL'
                  97='(97) UNSURE' 98='(98) REFUSED' 99='(99) INAPP' ;
  VALUE b4h25cfd  97='(97) 97=UNSURE' 98='(98) 98=REFUSED' 99='(99) 99=INAPP' ;
  VALUE b4h25cfw  97='(97) 97=UNSURE' 98='(98) 98=REFUSED' 99='(99) 99=INAPP' ;
  VALUE b4h25cm   9997='(9997) 9997=UNSURE' 9998='(9998) 9998=REFUSED'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4h25ci   1='(1) 1=VIGOROUS' 2='(2) 2=MODERATE' 3='(3) 3=LIGHT'
                  7='(7) 7=UNSURE' 8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h25ds   1='(01) NOT SEASONAL' 2='(02) WINTER' 3='(03) SPRING'
                  4='(04) SUMMER' 5='(05) FALL' 6='(06) SPRING TO FALL'
                  7='(07) SPRING TO SUMMER' 8='(08) SUMMER TO FALL'
                  9='(09) FALL TO SPRING' 10='(10) SPRING & FALL'
                  97='(97) UNSURE' 98='(98) REFUSED' 99='(99) INAPP' ;
  VALUE b4h25dfd  97='(97) 97=UNSURE' 98='(98) 98=REFUSED' 99='(99) 99=INAPP' ;
  VALUE b4h25dfw  97='(97) 97=UNSURE' 98='(98) 98=REFUSED' 99='(99) 99=INAPP' ;
  VALUE b4h25dm   9997='(9997) 9997=UNSURE' 9998='(9998) 9998=REFUSED'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4h25di   1='(1) 1=VIGOROUS' 2='(2) 2=MODERATE' 3='(3) 3=LIGHT'
                  7='(7) 7=UNSURE' 8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h25es   1='(01) NOT SEASONAL' 2='(02) WINTER' 3='(03) SPRING'
                  4='(04) SUMMER' 5='(05) FALL' 6='(06) SPRING TO FALL'
                  7='(07) SPRING TO SUMMER' 8='(08) SUMMER TO FALL'
                  9='(09) FALL TO SPRING' 10='(10) SPRING & FALL'
                  97='(97) UNSURE' 98='(98) REFUSED' 99='(99) INAPP' ;
  VALUE b4h25efd  97='(97) 97=UNSURE' 98='(98) 98=REFUSED' 99='(99) 99=INAPP' ;
  VALUE b4h25efw  97='(97) 97=UNSURE' 98='(98) 98=REFUSED' 99='(99) 99=INAPP' ;
  VALUE b4h25em   9997='(9997) 9997=UNSURE' 9998='(9998) 9998=REFUSED'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4h25ei   1='(1) 1=VIGOROUS' 2='(2) 2=MODERATE' 3='(3) 3=LIGHT'
                  7='(7) 7=UNSURE' 8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h25fs   1='(01) NOT SEASONAL' 2='(02) WINTER' 3='(03) SPRING'
                  4='(04) SUMMER' 5='(05) FALL' 6='(06) SPRING TO FALL'
                  7='(07) SPRING TO SUMMER' 8='(08) SUMMER TO FALL'
                  9='(09) FALL TO SPRING' 10='(10) SPRING & FALL'
                  97='(97) UNSURE' 98='(98) REFUSED' 99='(99) INAPP' ;
  VALUE b4h25ffd  97='(97) 97=UNSURE' 98='(98) 98=REFUSED' 99='(99) 99=INAPP' ;
  VALUE b4h25ffw  97='(97) 97=UNSURE' 98='(98) 98=REFUSED' 99='(99) 99=INAPP' ;
  VALUE b4h25fm   9997='(9997) 9997=UNSURE' 9998='(9998) 9998=REFUSED'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4h25fi   1='(1) 1=VIGOROUS' 2='(2) 2=MODERATE' 3='(3) 3=LIGHT'
                  7='(7) 7=UNSURE' 8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h25gs   1='(01) NOT SEASONAL' 2='(02) WINTER' 3='(03) SPRING'
                  4='(04) SUMMER' 5='(05) FALL' 6='(06) SPRING TO FALL'
                  7='(07) SPRING TO SUMMER' 8='(08) SUMMER TO FALL'
                  9='(09) FALL TO SPRING' 10='(10) SPRING & FALL'
                  97='(97) UNSURE' 98='(98) REFUSED' 99='(99) INAPP' ;
  VALUE b4h25gfd  97='(97) 97=UNSURE' 98='(98) 98=REFUSED' 99='(99) 99=INAPP' ;
  VALUE b4h25gfw  97='(97) 97=UNSURE' 98='(98) 98=REFUSED' 99='(99) 99=INAPP' ;
  VALUE b4h25gm   9997='(9997) 9997=UNSURE' 9998='(9998) 9998=REFUSED'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4h25gi   1='(1) 1=VIGOROUS' 2='(2) 2=MODERATE' 3='(3) 3=LIGHT'
                  7='(7) 7=UNSURE' 8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h26fff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h26a    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h27fff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h28fff  97='(97) 97=UNSURE' 98='(98) 98=REFUSED' 99='(99) 99=INAPP' ;
  VALUE b4h29fff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h30fff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h31fff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h32fff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h33fff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4h34fff  1='(1) 1=EVERYDAY' 2='(2) 2=5 OR 6 DAYS/WK'
                  3='(3) 3=3 OR 4 DAYS/WK' 4='(4) 4=1 OR 2 DAYS/WK'
                  5='(5) 5=LESS THAN ONE DAY/WK' 6='(6) 6=NEVER DRINKS'
                  7='(7) 7=UNSURE' 8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h35fff  1='(1) 1=3 OR 4 DAYS/MO' 2='(2) 2=1 OR 2 DAYS/MO'
                  3='(3) 3=LESS THAN ONE DAY/MO' 4='(4) 4=NEVER DRINKS'
                  7='(7) 7=UNSURE' 8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h36fff  9997='(9997) 9997=UNSURE' 9998='(9998) 9998=REFUSED'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4h37fff  97='(97) 97=UNSURE' 98='(98) 98=REFUSED' 99='(99) 99=INAPP' ;
  VALUE b4h38fff  1='(1) 1=EVERYDAY' 2='(2) 2=5 OR 6 DAYS/WK'
                  3='(3) 3=3 OR 4 DAYS/WK' 4='(4) 4=1 OR 2 DAYS/WK'
                  5='(5) 5=LESS THAN ONE DAY/WK' 6='(6) 6=NEVER DRINKS'
                  7='(7) 7=UNSURE' 8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h39fff  1='(1) 1=3 OR 4 DAYS/MO' 2='(2) 2=1 OR 2 DAYS/MO'
                  3='(3) 3=LESS THAN ONE DAY/MO' 4='(4) 4=NEVER DRINKS'
                  7='(7) 7=UNSURE' 8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h40fff  9997='(9997) 9997=UNSURE' 9998='(9998) 9998=REFUSED'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4h41fff  97='(97) 97=UNSURE' 98='(98) 98=REFUSED' 99='(99) 99=INAPP' ;
  VALUE b4h42fff  9997='(9997) 9997=UNSURE' 9998='(9998) 9998=REFUSED'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4h43a    1='(1) 1=NEVER' 2='(2) 2=EVERY 6 MONTHS'
                  3='(3) 3=ONCE A YEAR' 4='(4) 4=OTHER' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h43bm   1='(01) JANUARY' 2='(02) FEBRUARY' 3='(03) MARCH'
                  4='(04) APRIL' 5='(05) MAY' 6='(06) JUNE' 7='(07) JULY'
                  8='(08) AUGUST' 9='(09) SEPTEMBER' 10='(10) OCTOBER'
                  11='(11) NOVEMBER' 12='(12) DECEMBER' 97='(97) UNSURE'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4h43by   9997='(9997) 9997=UNSURE' 9998='(9998) 9998=REFUSED'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4h44a    1='(1) 1=NEVER' 2='(2) 2=EVERY 6 MONTHS'
                  3='(3) 3=ONCE A YEAR' 4='(4) 4=OTHER' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h44cm   1='(01) JANUARY' 2='(02) FEBRUARY' 3='(03) MARCH'
                  4='(04) APRIL' 5='(05) MAY' 6='(06) JUNE' 7='(07) JULY'
                  8='(08) AUGUST' 9='(09) SEPTEMBER' 10='(10) OCTOBER'
                  11='(11) NOVEMBER' 12='(12) DECEMBER' 97='(97) UNSURE'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4h44cy   9997='(9997) 9997=UNSURE' 9998='(9998) 9998=REFUSED'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4h44d    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h45a    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h45am   1='(01) JANUARY' 2='(02) FEBRUARY' 3='(03) MARCH'
                  4='(04) APRIL' 5='(05) MAY' 6='(06) JUNE' 7='(07) JULY'
                  8='(08) AUGUST' 9='(09) SEPTEMBER' 10='(10) OCTOBER'
                  11='(11) NOVEMBER' 12='(12) DECEMBER' 97='(97) UNSURE'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4h45ay   9997='(9997) 9997=UNSURE' 9998='(9998) 9998=REFUSED'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4h45b    1='(1) YES' 2='(2) NO' 3='(3) ASKED BUT DID NOT DO IT'
                  9='(9) 9=INAPP' ;
  VALUE b4h45bm   1='(01) JANUARY' 2='(02) FEBRUARY' 3='(03) MARCH'
                  4='(04) APRIL' 5='(05) MAY' 6='(06) JUNE' 7='(07) JULY'
                  8='(08) AUGUST' 9='(09) SEPTEMBER' 10='(10) OCTOBER'
                  11='(11) NOVEMBER' 12='(12) DECEMBER' 97='(97) UNSURE'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4h45by   9997='(9997) 9997=UNSURE' 9998='(9998) 9998=REFUSED'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4h45brc  1='(1) NORMAL' 2='(2) ABNORMAL' 3='(3) UNKNOWN'
                  4='(4) NO RESULT YET' 5='(5) DID NOT DO THE TEST'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h45c    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h45cm   1='(01) JANUARY' 2='(02) FEBRUARY' 3='(03) MARCH'
                  4='(04) APRIL' 5='(05) MAY' 6='(06) JUNE' 7='(07) JULY'
                  8='(08) AUGUST' 9='(09) SEPTEMBER' 10='(10) OCTOBER'
                  11='(11) NOVEMBER' 12='(12) DECEMBER' 97='(97) UNSURE'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4h45cy   9997='(9997) 9997=UNSURE' 9998='(9998) 9998=REFUSED'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4h45crc  1='(1) NORMAL' 2='(2) ABNORMAL' 3='(3) UNKNOWN'
                  4='(4) NO RESULT YET' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h45d    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h45dm   1='(01) JANUARY' 2='(02) FEBRUARY' 3='(03) MARCH'
                  4='(04) APRIL' 5='(05) MAY' 6='(06) JUNE' 7='(07) JULY'
                  8='(08) AUGUST' 9='(09) SEPTEMBER' 10='(10) OCTOBER'
                  11='(11) NOVEMBER' 12='(12) DECEMBER' 97='(97) UNSURE'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4h45dy   9997='(9997) 9997=UNSURE' 9998='(9998) 9998=REFUSED'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4h45drc  1='(1) NORMAL' 2='(2) ABNORMAL' 3='(3) UNKNOWN'
                  4='(4) NO RESULT YET' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h45e    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h45f    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h45fm   1='(01) JANUARY' 2='(02) FEBRUARY' 3='(03) MARCH'
                  4='(04) APRIL' 5='(05) MAY' 6='(06) JUNE' 7='(07) JULY'
                  8='(08) AUGUST' 9='(09) SEPTEMBER' 10='(10) OCTOBER'
                  11='(11) NOVEMBER' 12='(12) DECEMBER' 97='(97) UNSURE'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4h45fy   9997='(9997) 9997=UNSURE' 9998='(9998) 9998=REFUSED'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4h45frc  1='(1) NORMAL' 2='(2) ABNORMAL' 3='(3) UNKNOWN'
                  4='(4) NO RESULT YET' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h45g    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h45gm   1='(01) JANUARY' 2='(02) FEBRUARY' 3='(03) MARCH'
                  4='(04) APRIL' 5='(05) MAY' 6='(06) JUNE' 7='(07) JULY'
                  8='(08) AUGUST' 9='(09) SEPTEMBER' 10='(10) OCTOBER'
                  11='(11) NOVEMBER' 12='(12) DECEMBER' 97='(97) UNSURE'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4h45gy   9997='(9997) 9997=UNSURE' 9998='(9998) 9998=REFUSED'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4h45grc  1='(1) NORMAL' 2='(2) ABNORMAL' 3='(3) UNKNOWN'
                  4='(4) NO RESULT YET' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h45h    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h45hm   1='(01) JANUARY' 2='(02) FEBRUARY' 3='(03) MARCH'
                  4='(04) APRIL' 5='(05) MAY' 6='(06) JUNE' 7='(07) JULY'
                  8='(08) AUGUST' 9='(09) SEPTEMBER' 10='(10) OCTOBER'
                  11='(11) NOVEMBER' 12='(12) DECEMBER' 97='(97) UNSURE'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4h45hy   9997='(9997) 9997=UNSURE' 9998='(9998) 9998=REFUSED'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4h45hrc  1='(1) NORMAL' 2='(2) ABNORMAL' 3='(3) UNKNOWN'
                  4='(4) NO RESULT YET' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4h46fff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h46c    1='(1) 1=DAILY' 2='(2) 2=WEEKLY' 3='(3) 3=MONTHLY'
                  7='(7) 7=UNSURE' 8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h46d    9997='(9997) UNSURE' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4h47fff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h48fff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h48a    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h49fff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h50fff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h54c    1='(1) YES' 2='(2) NO' ;
  VALUE b4h54m    1='(01) JANUARY' 2='(02) FEBRUARY' 3='(03) MARCH'
                  4='(04) APRIL' 5='(05) MAY' 6='(06) JUNE' 7='(07) JULY'
                  8='(08) AUGUST' 9='(09) SEPTEMBER' 10='(10) OCTOBER'
                  11='(11) NOVEMBER' 12='(12) DECEMBER' 97='(97) UNSURE'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4h54y    9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4h55fff  1='(1) 1=MARRIED' 2='(2) 2=SEPARATED' 3='(3) 3=DIVORCED'
                  4='(4) 4=WIDOWED' 5='(5) 5=NEVER MARRIED'
                  6='(6) 6=LIVING W/ SOMEONE' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4hmarr   1='(1) 1=MARRIED' 2='(2) 2=SEPARATED' 3='(3) 3=DIVORCED'
                  4='(4) 4=WIDOWED' 5='(5) 5=NEVER MARRIED'
                  6='(6) 6=LIVING W/ SOMEONE' ;
  VALUE b4h56fff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h56ag   1='(1) 1=MALE' 2='(2) 2=FEMALE' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h56am   1='(01) JANUARY' 2='(02) FEBRUARY' 3='(03) MARCH'
                  4='(04) APRIL' 5='(05) MAY' 6='(06) JUNE' 7='(07) JULY'
                  8='(08) AUGUST' 9='(09) SEPTEMBER' 10='(10) OCTOBER'
                  11='(11) NOVEMBER' 12='(12) DECEMBER' 97='(97) UNSURE'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4h56ay   9997='(9997) 9997=UNSURE' 9998='(9998) 9998=REFUSED'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4h56bg   1='(1) 1=MALE' 2='(2) 2=FEMALE' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h56bm   1='(01) JANUARY' 2='(02) FEBRUARY' 3='(03) MARCH'
                  4='(04) APRIL' 5='(05) MAY' 6='(06) JUNE' 7='(07) JULY'
                  8='(08) AUGUST' 9='(09) SEPTEMBER' 10='(10) OCTOBER'
                  11='(11) NOVEMBER' 12='(12) DECEMBER' 97='(97) UNSURE'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4h56by   9997='(9997) 9997=UNSURE' 9998='(9998) 9998=REFUSED'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4h56cg   1='(1) 1=MALE' 2='(2) 2=FEMALE' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h56cm   1='(01) JANUARY' 2='(02) FEBRUARY' 3='(03) MARCH'
                  4='(04) APRIL' 5='(05) MAY' 6='(06) JUNE' 7='(07) JULY'
                  8='(08) AUGUST' 9='(09) SEPTEMBER' 10='(10) OCTOBER'
                  11='(11) NOVEMBER' 12='(12) DECEMBER' 97='(97) UNSURE'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4h56cy   9997='(9997) 9997=UNSURE' 9998='(9998) 9998=REFUSED'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4h56dg   1='(1) 1=MALE' 2='(2) 2=FEMALE' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h56dm   1='(01) JANUARY' 2='(02) FEBRUARY' 3='(03) MARCH'
                  4='(04) APRIL' 5='(05) MAY' 6='(06) JUNE' 7='(07) JULY'
                  8='(08) AUGUST' 9='(09) SEPTEMBER' 10='(10) OCTOBER'
                  11='(11) NOVEMBER' 12='(12) DECEMBER' 97='(97) UNSURE'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4h56dy   9997='(9997) 9997=UNSURE' 9998='(9998) 9998=REFUSED'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4h56eg   1='(1) 1=MALE' 2='(2) 2=FEMALE' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h56em   1='(01) JANUARY' 2='(02) FEBRUARY' 3='(03) MARCH'
                  4='(04) APRIL' 5='(05) MAY' 6='(06) JUNE' 7='(07) JULY'
                  8='(08) AUGUST' 9='(09) SEPTEMBER' 10='(10) OCTOBER'
                  11='(11) NOVEMBER' 12='(12) DECEMBER' 97='(97) UNSURE'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4h56ey   9997='(9997) 9997=UNSURE' 9998='(9998) 9998=REFUSED'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4h57fff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=UNSURE'
                  8='(8) 8=REFUSED' 9='(9) 9=INAPP' ;
  VALUE b4h57a1m  1='(01) JANUARY' 2='(02) FEBRUARY' 3='(03) MARCH'
                  4='(04) APRIL' 5='(05) MAY' 6='(06) JUNE' 7='(07) JULY'
                  8='(08) AUGUST' 9='(09) SEPTEMBER' 10='(10) OCTOBER'
                  11='(11) NOVEMBER' 12='(12) DECEMBER' 96='(96) ONGOING'
                  97='(97) UNSURE' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4h57a1y  9997='(9997) 9997=UNSURE' 9998='(9998) 9998=REFUSED'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4h57a2m  1='(01) JANUARY' 2='(02) FEBRUARY' 3='(03) MARCH'
                  4='(04) APRIL' 5='(05) MAY' 6='(06) JUNE' 7='(07) JULY'
                  8='(08) AUGUST' 9='(09) SEPTEMBER' 10='(10) OCTOBER'
                  11='(11) NOVEMBER' 12='(12) DECEMBER' 96='(96) ONGOING'
                  97='(97) UNSURE' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4h57a2y  9997='(9997) 9997=UNSURE' 9998='(9998) 9998=REFUSED'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4h57a3m  1='(01) JANUARY' 2='(02) FEBRUARY' 3='(03) MARCH'
                  4='(04) APRIL' 5='(05) MAY' 6='(06) JUNE' 7='(07) JULY'
                  8='(08) AUGUST' 9='(09) SEPTEMBER' 10='(10) OCTOBER'
                  11='(11) NOVEMBER' 12='(12) DECEMBER' 96='(96) ONGOING'
                  97='(97) UNSURE' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4h57a3y  9997='(9997) 9997=UNSURE' 9998='(9998) 9998=REFUSED'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4h57a4m  1='(01) JANUARY' 2='(02) FEBRUARY' 3='(03) MARCH'
                  4='(04) APRIL' 5='(05) MAY' 6='(06) JUNE' 7='(07) JULY'
                  8='(08) AUGUST' 9='(09) SEPTEMBER' 10='(10) OCTOBER'
                  11='(11) NOVEMBER' 12='(12) DECEMBER' 96='(96) ONGOING'
                  97='(97) UNSURE' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4h57a4y  9997='(9997) 9997=UNSURE' 9998='(9998) 9998=REFUSED'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4h57a5m  1='(01) JANUARY' 2='(02) FEBRUARY' 3='(03) MARCH'
                  4='(04) APRIL' 5='(05) MAY' 6='(06) JUNE' 7='(07) JULY'
                  8='(08) AUGUST' 9='(09) SEPTEMBER' 10='(10) OCTOBER'
                  11='(11) NOVEMBER' 12='(12) DECEMBER' 96='(96) ONGOING'
                  97='(97) UNSURE' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4h57a5y  9997='(9997) 9997=UNSURE' 9998='(9998) 9998=REFUSED'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4oavl    1='(1) YES' 2='(2) NO' ;
  VALUE b4o1ffff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o1a1w   1='(01) 1=HIP' 2='(02) 2=LEG' 3='(03) 3=ANKLE'
                  4='(04) 4=FOOT' 5='(05) 5=TOE' 6='(06) 6=COLLARBONE'
                  7='(07) 7=SHOULDER' 8='(08) 8=WRIST' 9='(09) 9=HAND'
                  10='(10) 10=FINGER' 11='(11) 11=BACK' 12='(12) 12=RIB'
                  13='(13) 13=ELBOW' 14='(14) 14=NOSE' 15='(15) 15=TAILBONE'
                  16='(16) 16=MULTIPLE BONES' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4o1a3ff  9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4o1b1w   1='(01) 1=HIP' 2='(02) 2=LEG' 3='(03) 3=ANKLE'
                  4='(04) 4=FOOT' 5='(05) 5=TOE' 6='(06) 6=COLLARBONE'
                  7='(07) 7=SHOULDER' 8='(08) 8=WRIST' 9='(09) 9=HAND'
                  10='(10) 10=FINGER' 11='(11) 11=BACK' 12='(12) 12=RIB'
                  13='(13) 13=ELBOW' 14='(14) 14=NOSE' 15='(15) 15=TAILBONE'
                  16='(16) 16=MULTIPLE BONES' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4o1b3ff  9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4o1c1w   1='(01) 1=HIP' 2='(02) 2=LEG' 3='(03) 3=ANKLE'
                  4='(04) 4=FOOT' 5='(05) 5=TOE' 6='(06) 6=COLLARBONE'
                  7='(07) 7=SHOULDER' 8='(08) 8=WRIST' 9='(09) 9=HAND'
                  10='(10) 10=FINGER' 11='(11) 11=BACK' 12='(12) 12=RIB'
                  13='(13) 13=ELBOW' 14='(14) 14=NOSE' 15='(15) 15=TAILBONE'
                  16='(16) 16=MULTIPLE BONES' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4o1c3ff  9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4o2ffff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o2a1ff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o2a2ff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o2a3ff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o2b1ff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o2b2ff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o2b3ff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o2c1ff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o2c2ff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o2c3ff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o3ffff  997='(997) DON''T KNOW' 998='(998) MISSING'
                  999='(999) INAPP' ;
  VALUE b4o3a     997='(997) DON''T KNOW' 998='(998) MISSING'
                  999='(999) INAPPLICABLE' ;
  VALUE b4o4a     1='(1) YES' 2='(2) NO' 7='(7) UNSURE' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o4b     1='(1) YES' 2='(2) NO' 7='(7) UNSURE' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o5ffff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o5a1am  1='(1) 1=FOSAMAX' 2='(2) 2=ACTONEL' 3='(3) 3=ZOMETA'
                  4='(4) 4=MIACALCIN' 5='(5) 5=EVISTA' 6='(6) 6=FORTEO'
                  7='(7) 7=BONIVA' 8='(8) 8=CELEBREX' 9='(9) 9=OTHER'
                  98='(98) 98=MISSING' 99='(99) 99=INAPP' ;
  VALUE b4o5a1b   9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4o5a1c   9996='(9996) ONGOING' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4o5a1co  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o5a2am  1='(1) 1=FOSAMAX' 2='(2) 2=ACTONEL' 3='(3) 3=ZOMETA'
                  4='(4) 4=MIACALCIN' 5='(5) 5=EVISTA' 6='(6) 6=FORTEO'
                  7='(7) 7=BONIVA' 8='(8) 8=CELEBREX' 9='(9) 9=OTHER'
                  98='(98) 98=MISSING' 99='(99) 99=INAPP' ;
  VALUE b4o5a2b   9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4o5a2c   9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4o5a2co  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o5a3am  1='(1) 1=FOSAMAX' 2='(2) 2=ACTONEL' 3='(3) 3=ZOMETA'
                  4='(4) 4=MIACALCIN' 5='(5) 5=EVISTA' 6='(6) 6=FORTEO'
                  7='(7) 7=BONIVA' 8='(8) 8=CELEBREX' 9='(9) 9=OTHER'
                  98='(98) 98=MISSING' 99='(99) 99=INAPP' ;
  VALUE b4o5a3b   9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4o5a3c   9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4o5a3co  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o6a1ff  1='(1) YES' 2='(2) NO' 7='(7) UNSURE' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o6b1ff  1='(1) YES' 2='(2) NO' 7='(7) UNSURE' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o6c1ff  1='(1) YES' 2='(2) NO' 7='(7) UNSURE' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o6d1ff  1='(1) YES' 2='(2) NO' 7='(7) UNSURE' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o6e1ff  1='(1) YES' 2='(2) NO' 7='(7) UNSURE' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o6f1ff  1='(1) YES' 2='(2) NO' 7='(7) UNSURE' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o7ffff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o8ffff  9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4o9ffff  9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4o10fff  9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4o11fff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o12a    997='(997) DON''T KNOW' 998='(998) MISSING'
                  999='(999) INAPP' ;
  VALUE b4o12b    997='(997) DON''T KNOW' 998='(998) MISSING'
                  999='(999) INAPP' ;
  VALUE b4o12c    997='(997) DON''T KNOW' 998='(998) MISSING'
                  999='(999) INAPP' ;
  VALUE b4o13fff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o14a    9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4o14b    9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4o14c    9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4o14x    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o15fff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o16fff  97='(97) DON''T KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4o16a    9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4o17fff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o18fff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o19fff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o20y    9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4o21fff  1='(1) YES' 2='(2) NO' 3='(3) PREGNANCY/BREAST FEEDING'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4o21a1f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o21a2f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o21a3f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o21a4f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o21a5f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o22y    9994='(9994) NEVER IRREGULAR'
                  9995='(9995) ALWAYS IRREGULAR'
                  9996='(9996) SURGERY- NO IRREGULARITY'
                  9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4o23x    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o23fff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o24fff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o25fff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o25a    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o25b    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o25c    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o26fff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o26a    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o26b    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o26c    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o26d    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o26e    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o26f    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4o27fff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4davail  1='(1) YES' 2='(2) SPINE, NO HIP' 3='(3) NO SPINE,HIP'
                  4='(4) NO SPINE, NO HIP' 7='(7) DON''T KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4dnarsn  1='(1) SCHEDULING PROBLEM' 2='(2) TECHNICAL PROBLEM'
                  3='(3) SCAN NOT SCOREABLE' 4='(4) VISIT TERMINATED'
                  5='(5) R REFUSED' 9='(9) INAPP' ;
  VALUE b4dstype  1='(1) LUNAR' 2='(2) HOLOGIC' 7='(7) DON''T KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4dtrsid  0='(0) NO SCAN' 1='(1) RIGHT' 2='(2) LEFT'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4dfnsid  0='(0) NO SCAN' 1='(1) RIGHT' 2='(2) LEFT'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4dftsid  0='(0) NO SCAN' 1='(1) RIGHT' 2='(2) LEFT'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4drside  0='(0) NO SCAN' 1='(1) RIGHT' 2='(2) LEFT'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4dlsmd   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4dlst    998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4dlfnmd  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4dltrmd  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4dlftmd  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4dlfnt   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4dlftt   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4dlrumd  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4dlr3md  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4dlr3t   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4dhsmd   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4dhst    998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4dhfnmd  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4dhtrmd  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4dhftmd  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4dhfnt   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4dhftt   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4xpmd    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING' ;
  VALUE b4xomd    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING' ;
  VALUE b4xamd    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING' ;
  VALUE b4xpm     97='(97) 97=DON''T KNOW''' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xpc1ff  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xpdd1f  99999996='(99999996) 99999996=MIXED DOSAGE'
                  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xpdu1f  1='(01) 1=MG' 2='(02) 2=GRAMS' 3='(03) 3=MCG' 4='(04) 4=IU'
                  5='(05) 5=MEQ' 6='(06) 6=CC/ML' 7='(07) 7=TEASPOON'
                  8='(08) 8=TABLET' 9='(09) 9=CAPSULE'
                  10='(10) 10=PUFF/SQUIRT' 11='(11) 11=UNIT'
                  12='(12) 12=TABLESPOON' 13='(13) 13=% SOLUTION/CREAM'
                  14='(14) 14=DROP' 15='(15) 15=OTHER' 97='(97) DONT KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4xpr1ff  1='(1) 1=ORAL (PO)' 2='(2) 2=INHALED' 3='(3) 3=TOPICAL'
                  4='(4) 4=SUB Q/SUB C' 5='(5) 5=INTRAMUSCULAR'
                  6='(6) 6=SUBLINGUAL' 7='(7) 7=OTHER'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xpf1ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xpfu1f  1='(1) 1=DAY' 2='(2) 2=EVERY OTHER DAY' 3='(3) 3=WEEK'
                  4='(4) 4=MONTH' 5='(5) 5=AS NEEDED (PRN)' 6='(6) 6=OTHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xpt1ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xptu1f  1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  5='(5) 5=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4xpdc1f  99997='(99997) 99997=DON''T KNOW'
                  99998='(99998) 99998=MISSING' 99999='(99999) 99999=INAPP' ;
  VALUE b4xpc2ff  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xpdd2f  99999996='(99999996) 99999996=MIXED DOSAGE'
                  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xpdu2f  1='(01) 1=MG' 2='(02) 2=GRAMS' 3='(03) 3=MCG' 4='(04) 4=IU'
                  5='(05) 5=MEQ' 6='(06) 6=CC/ML' 7='(07) 7=TEASPOON'
                  8='(08) 8=TABLET' 9='(09) 9=CAPSULE'
                  10='(10) 10=PUFF/SQUIRT' 11='(11) 11=UNIT'
                  12='(12) 12=TABLESPOON' 13='(13) 13=% SOLUTION/CREAM'
                  14='(14) 14=DROP' 15='(15) 15=OTHER' 97='(97) DONT KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4xpr2ff  1='(1) 1=ORAL (PO)' 2='(2) 2=INHALED' 3='(3) 3=TOPICAL'
                  4='(4) 4=SUB Q/SUB C' 5='(5) 5=INTRAMUSCULAR'
                  6='(6) 6=SUBLINGUAL' 7='(7) 7=OTHER'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xpf2ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xpfu2f  1='(1) 1=DAY' 2='(2) 2=EVERY OTHER DAY' 3='(3) 3=WEEK'
                  4='(4) 4=MONTH' 5='(5) 5=AS NEEDED (PRN)' 6='(6) 6=OTHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xpt2ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xptu2f  1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  5='(5) 5=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4xpdc2f  99997='(99997) 99997=DON''T KNOW'
                  99998='(99998) 99998=MISSING' 99999='(99999) 99999=INAPP' ;
  VALUE b4xpc3ff  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xpdd3f  99999996='(99999996) 99999996=MIXED DOSAGE'
                  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xpdu3f  1='(01) 1=MG' 2='(02) 2=GRAMS' 3='(03) 3=MCG' 4='(04) 4=IU'
                  5='(05) 5=MEQ' 6='(06) 6=CC/ML' 7='(07) 7=TEASPOON'
                  8='(08) 8=TABLET' 9='(09) 9=CAPSULE'
                  10='(10) 10=PUFF/SQUIRT' 11='(11) 11=UNIT'
                  12='(12) 12=TABLESPOON' 13='(13) 13=% SOLUTION/CREAM'
                  14='(14) 14=DROP' 15='(15) 15=OTHER' 97='(97) DONT KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4xpr3ff  1='(1) 1=ORAL (PO)' 2='(2) 2=INHALED' 3='(3) 3=TOPICAL'
                  4='(4) 4=SUB Q/SUB C' 5='(5) 5=INTRAMUSCULAR'
                  6='(6) 6=SUBLINGUAL' 7='(7) 7=OTHER'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xpf3ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xpfu3f  1='(1) 1=DAY' 2='(2) 2=EVERY OTHER DAY' 3='(3) 3=WEEK'
                  4='(4) 4=MONTH' 5='(5) 5=AS NEEDED (PRN)' 6='(6) 6=OTHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xpt3ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xptu3f  1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  5='(5) 5=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4xpdc3f  99997='(99997) 99997=DON''T KNOW'
                  99998='(99998) 99998=MISSING' 99999='(99999) 99999=INAPP' ;
  VALUE b4xpc4ff  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xpdd4f  99999996='(99999996) 99999996=MIXED DOSAGE'
                  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xpdu4f  1='(01) 1=MG' 2='(02) 2=GRAMS' 3='(03) 3=MCG' 4='(04) 4=IU'
                  5='(05) 5=MEQ' 6='(06) 6=CC/ML' 7='(07) 7=TEASPOON'
                  8='(08) 8=TABLET' 9='(09) 9=CAPSULE'
                  10='(10) 10=PUFF/SQUIRT' 11='(11) 11=UNIT'
                  12='(12) 12=TABLESPOON' 13='(13) 13=% SOLUTION/CREAM'
                  14='(14) 14=DROP' 15='(15) 15=OTHER' 97='(97) DONT KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4xpr4ff  1='(1) 1=ORAL (PO)' 2='(2) 2=INHALED' 3='(3) 3=TOPICAL'
                  4='(4) 4=SUB Q/SUB C' 5='(5) 5=INTRAMUSCULAR'
                  6='(6) 6=SUBLINGUAL' 7='(7) 7=OTHER'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xpf4ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xpfu4f  1='(1) 1=DAY' 2='(2) 2=EVERY OTHER DAY' 3='(3) 3=WEEK'
                  4='(4) 4=MONTH' 5='(5) 5=AS NEEDED (PRN)' 6='(6) 6=OTHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xpt4ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xptu4f  1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  5='(5) 5=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4xpdc4f  99997='(99997) 99997=DON''T KNOW'
                  99998='(99998) 99998=MISSING' 99999='(99999) 99999=INAPP' ;
  VALUE b4xpc5ff  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xpdd5f  99999996='(99999996) 99999996=MIXED DOSAGE'
                  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xpdu5f  1='(01) 1=MG' 2='(02) 2=GRAMS' 3='(03) 3=MCG' 4='(04) 4=IU'
                  5='(05) 5=MEQ' 6='(06) 6=CC/ML' 7='(07) 7=TEASPOON'
                  8='(08) 8=TABLET' 9='(09) 9=CAPSULE'
                  10='(10) 10=PUFF/SQUIRT' 11='(11) 11=UNIT'
                  12='(12) 12=TABLESPOON' 13='(13) 13=% SOLUTION/CREAM'
                  14='(14) 14=DROP' 15='(15) 15=OTHER' 97='(97) DONT KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4xpr5ff  1='(1) 1=ORAL (PO)' 2='(2) 2=INHALED' 3='(3) 3=TOPICAL'
                  4='(4) 4=SUB Q/SUB C' 5='(5) 5=INTRAMUSCULAR'
                  6='(6) 6=SUBLINGUAL' 7='(7) 7=OTHER'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xpf5ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xpfu5f  1='(1) 1=DAY' 2='(2) 2=EVERY OTHER DAY' 3='(3) 3=WEEK'
                  4='(4) 4=MONTH' 5='(5) 5=AS NEEDED (PRN)' 6='(6) 6=OTHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xpt5ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xptu5f  1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  5='(5) 5=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4xpdc5f  99997='(99997) 99997=DON''T KNOW'
                  99998='(99998) 99998=MISSING' 99999='(99999) 99999=INAPP' ;
  VALUE b4xpc6ff  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xpdd6f  99999996='(99999996) 99999996=MIXED DOSAGE'
                  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xpdu6f  1='(01) 1=MG' 2='(02) 2=GRAMS' 3='(03) 3=MCG' 4='(04) 4=IU'
                  5='(05) 5=MEQ' 6='(06) 6=CC/ML' 7='(07) 7=TEASPOON'
                  8='(08) 8=TABLET' 9='(09) 9=CAPSULE'
                  10='(10) 10=PUFF/SQUIRT' 11='(11) 11=UNIT'
                  12='(12) 12=TABLESPOON' 13='(13) 13=% SOLUTION/CREAM'
                  14='(14) 14=DROP' 15='(15) 15=OTHER' 97='(97) DONT KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4xpr6ff  1='(1) 1=ORAL (PO)' 2='(2) 2=INHALED' 3='(3) 3=TOPICAL'
                  4='(4) 4=SUB Q/SUB C' 5='(5) 5=INTRAMUSCULAR'
                  6='(6) 6=SUBLINGUAL' 7='(7) 7=OTHER'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xpf6ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xpfu6f  1='(1) 1=DAY' 2='(2) 2=EVERY OTHER DAY' 3='(3) 3=WEEK'
                  4='(4) 4=MONTH' 5='(5) 5=AS NEEDED (PRN)' 6='(6) 6=OTHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xpt6ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xptu6f  1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  5='(5) 5=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4xpdc6f  99997='(99997) 99997=DON''T KNOW'
                  99998='(99998) 99998=MISSING' 99999='(99999) 99999=INAPP' ;
  VALUE b4xpc7ff  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xpdd7f  99999996='(99999996) 99999996=MIXED DOSAGE'
                  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xpdu7f  1='(01) 1=MG' 2='(02) 2=GRAMS' 3='(03) 3=MCG' 4='(04) 4=IU'
                  5='(05) 5=MEQ' 6='(06) 6=CC/ML' 7='(07) 7=TEASPOON'
                  8='(08) 8=TABLET' 9='(09) 9=CAPSULE'
                  10='(10) 10=PUFF/SQUIRT' 11='(11) 11=UNIT'
                  12='(12) 12=TABLESPOON' 13='(13) 13=% SOLUTION/CREAM'
                  14='(14) 14=DROP' 15='(15) 15=OTHER' 97='(97) DONT KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4xpr7ff  1='(1) 1=ORAL (PO)' 2='(2) 2=INHALED' 3='(3) 3=TOPICAL'
                  4='(4) 4=SUB Q/SUB C' 5='(5) 5=INTRAMUSCULAR'
                  6='(6) 6=SUBLINGUAL' 7='(7) 7=OTHER'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xpf7ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xpfu7f  1='(1) 1=DAY' 2='(2) 2=EVERY OTHER DAY' 3='(3) 3=WEEK'
                  4='(4) 4=MONTH' 5='(5) 5=AS NEEDED (PRN)' 6='(6) 6=OTHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xpt7ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xptu7f  1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  5='(5) 5=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4xpdc7f  99997='(99997) 99997=DON''T KNOW'
                  99998='(99998) 99998=MISSING' 99999='(99999) 99999=INAPP' ;
  VALUE b4xpc8ff  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xpdd8f  99999996='(99999996) 99999996=MIXED DOSAGE'
                  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xpdu8f  1='(01) 1=MG' 2='(02) 2=GRAMS' 3='(03) 3=MCG' 4='(04) 4=IU'
                  5='(05) 5=MEQ' 6='(06) 6=CC/ML' 7='(07) 7=TEASPOON'
                  8='(08) 8=TABLET' 9='(09) 9=CAPSULE'
                  10='(10) 10=PUFF/SQUIRT' 11='(11) 11=UNIT'
                  12='(12) 12=TABLESPOON' 13='(13) 13=% SOLUTION/CREAM'
                  14='(14) 14=DROP' 15='(15) 15=OTHER' 97='(97) DONT KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4xpr8ff  1='(1) 1=ORAL (PO)' 2='(2) 2=INHALED' 3='(3) 3=TOPICAL'
                  4='(4) 4=SUB Q/SUB C' 5='(5) 5=INTRAMUSCULAR'
                  6='(6) 6=SUBLINGUAL' 7='(7) 7=OTHER'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xpf8ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xpfu8f  1='(1) 1=DAY' 2='(2) 2=EVERY OTHER DAY' 3='(3) 3=WEEK'
                  4='(4) 4=MONTH' 5='(5) 5=AS NEEDED (PRN)' 6='(6) 6=OTHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xpt8ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xptu8f  1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  5='(5) 5=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4xpdc8f  99997='(99997) 99997=DON''T KNOW'
                  99998='(99998) 99998=MISSING' 99999='(99999) 99999=INAPP' ;
  VALUE b4xpc9ff  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xpdd9f  99999996='(99999996) 99999996=MIXED DOSAGE'
                  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xpdu9f  1='(01) 1=MG' 2='(02) 2=GRAMS' 3='(03) 3=MCG' 4='(04) 4=IU'
                  5='(05) 5=MEQ' 6='(06) 6=CC/ML' 7='(07) 7=TEASPOON'
                  8='(08) 8=TABLET' 9='(09) 9=CAPSULE'
                  10='(10) 10=PUFF/SQUIRT' 11='(11) 11=UNIT'
                  12='(12) 12=TABLESPOON' 13='(13) 13=% SOLUTION/CREAM'
                  14='(14) 14=DROP' 15='(15) 15=OTHER' 97='(97) DONT KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4xpr9ff  1='(1) 1=ORAL (PO)' 2='(2) 2=INHALED' 3='(3) 3=TOPICAL'
                  4='(4) 4=SUB Q/SUB C' 5='(5) 5=INTRAMUSCULAR'
                  6='(6) 6=SUBLINGUAL' 7='(7) 7=OTHER'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xpf9ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xpfu9f  1='(1) 1=DAY' 2='(2) 2=EVERY OTHER DAY' 3='(3) 3=WEEK'
                  4='(4) 4=MONTH' 5='(5) 5=AS NEEDED (PRN)' 6='(6) 6=OTHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xpt9ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xptu9f  1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  5='(5) 5=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4xpdc9f  99997='(99997) 99997=DON''T KNOW'
                  99998='(99998) 99998=MISSING' 99999='(99999) 99999=INAPP' ;
  VALUE b4xpc10f  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xpdd0f  99999996='(99999996) 99999996=MIXED DOSAGE'
                  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xpdu0f  1='(01) 1=MG' 2='(02) 2=GRAMS' 3='(03) 3=MCG' 4='(04) 4=IU'
                  5='(05) 5=MEQ' 6='(06) 6=CC/ML' 7='(07) 7=TEASPOON'
                  8='(08) 8=TABLET' 9='(09) 9=CAPSULE'
                  10='(10) 10=PUFF/SQUIRT' 11='(11) 11=UNIT'
                  12='(12) 12=TABLESPOON' 13='(13) 13=% SOLUTION/CREAM'
                  14='(14) 14=DROP' 15='(15) 15=OTHER' 97='(97) DONT KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4xpr10f  1='(1) 1=ORAL (PO)' 2='(2) 2=INHALED' 3='(3) 3=TOPICAL'
                  4='(4) 4=SUB Q/SUB C' 5='(5) 5=INTRAMUSCULAR'
                  6='(6) 6=SUBLINGUAL' 7='(7) 7=OTHER'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xpf10f  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xpfu0f  1='(1) 1=DAY' 2='(2) 2=EVERY OTHER DAY' 3='(3) 3=WEEK'
                  4='(4) 4=MONTH' 5='(5) 5=AS NEEDED (PRN)' 6='(6) 6=OTHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xpt10f  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xptu0f  1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  5='(5) 5=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4xpdc0f  99997='(99997) 99997=DON''T KNOW'
                  99998='(99998) 99998=MISSING' 99999='(99999) 99999=INAPP' ;
  VALUE b4xpc11f  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xpd10f  99999996='(99999996) 99999996=MIXED DOSAGE'
                  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xpd11f  1='(01) 1=MG' 2='(02) 2=GRAMS' 3='(03) 3=MCG' 4='(04) 4=IU'
                  5='(05) 5=MEQ' 6='(06) 6=CC/ML' 7='(07) 7=TEASPOON'
                  8='(08) 8=TABLET' 9='(09) 9=CAPSULE'
                  10='(10) 10=PUFF/SQUIRT' 11='(11) 11=UNIT'
                  12='(12) 12=TABLESPOON' 13='(13) 13=% SOLUTION/CREAM'
                  14='(14) 14=DROP' 15='(15) 15=OTHER' 97='(97) DONT KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4xpr11f  1='(1) 1=ORAL (PO)' 2='(2) 2=INHALED' 3='(3) 3=TOPICAL'
                  4='(4) 4=SUB Q/SUB C' 5='(5) 5=INTRAMUSCULAR'
                  6='(6) 6=SUBLINGUAL' 7='(7) 7=OTHER'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xpf11f  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xpf12f  1='(1) 1=DAY' 2='(2) 2=EVERY OTHER DAY' 3='(3) 3=WEEK'
                  4='(4) 4=MONTH' 5='(5) 5=AS NEEDED (PRN)' 6='(6) 6=OTHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xpt11f  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xpt12f  1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  5='(5) 5=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4xpd12f  99997='(99997) 99997=DON''T KNOW'
                  99998='(99998) 99998=MISSING' 99999='(99999) 99999=INAPP' ;
  VALUE b4xpc12f  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xpd13f  99999996='(99999996) 99999996=MIXED DOSAGE'
                  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xpd14f  1='(01) 1=MG' 2='(02) 2=GRAMS' 3='(03) 3=MCG' 4='(04) 4=IU'
                  5='(05) 5=MEQ' 6='(06) 6=CC/ML' 7='(07) 7=TEASPOON'
                  8='(08) 8=TABLET' 9='(09) 9=CAPSULE'
                  10='(10) 10=PUFF/SQUIRT' 11='(11) 11=UNIT'
                  12='(12) 12=TABLESPOON' 13='(13) 13=% SOLUTION/CREAM'
                  14='(14) 14=DROP' 15='(15) 15=OTHER' 97='(97) DONT KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4xpr12f  1='(1) 1=ORAL (PO)' 2='(2) 2=INHALED' 3='(3) 3=TOPICAL'
                  4='(4) 4=SUB Q/SUB C' 5='(5) 5=INTRAMUSCULAR'
                  6='(6) 6=SUBLINGUAL' 7='(7) 7=OTHER'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xpf13f  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xpf14f  1='(1) 1=DAY' 2='(2) 2=EVERY OTHER DAY' 3='(3) 3=WEEK'
                  4='(4) 4=MONTH' 5='(5) 5=AS NEEDED (PRN)' 6='(6) 6=OTHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xpt13f  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xpt14f  1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  5='(5) 5=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4xpd15f  99997='(99997) 99997=DON''T KNOW'
                  99998='(99998) 99998=MISSING' 99999='(99999) 99999=INAPP' ;
  VALUE b4xpc13f  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xpd16f  99999996='(99999996) 99999996=MIXED DOSAGE'
                  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xpd17f  1='(01) 1=MG' 2='(02) 2=GRAMS' 3='(03) 3=MCG' 4='(04) 4=IU'
                  5='(05) 5=MEQ' 6='(06) 6=CC/ML' 7='(07) 7=TEASPOON'
                  8='(08) 8=TABLET' 9='(09) 9=CAPSULE'
                  10='(10) 10=PUFF/SQUIRT' 11='(11) 11=UNIT'
                  12='(12) 12=TABLESPOON' 13='(13) 13=% SOLUTION/CREAM'
                  14='(14) 14=DROP' 15='(15) 15=OTHER' 97='(97) DONT KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4xpr13f  1='(1) 1=ORAL (PO)' 2='(2) 2=INHALED' 3='(3) 3=TOPICAL'
                  4='(4) 4=SUB Q/SUB C' 5='(5) 5=INTRAMUSCULAR'
                  6='(6) 6=SUBLINGUAL' 7='(7) 7=OTHER'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xpf15f  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xpf16f  1='(1) 1=DAY' 2='(2) 2=EVERY OTHER DAY' 3='(3) 3=WEEK'
                  4='(4) 4=MONTH' 5='(5) 5=AS NEEDED (PRN)' 6='(6) 6=OTHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xpt15f  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xpt16f  1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  5='(5) 5=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4xpd18f  99997='(99997) 99997=DON''T KNOW'
                  99998='(99998) 99998=MISSING' 99999='(99999) 99999=INAPP' ;
  VALUE b4xpc14f  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xpd19f  99999996='(99999996) 99999996=MIXED DOSAGE'
                  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xpd20f  1='(01) 1=MG' 2='(02) 2=GRAMS' 3='(03) 3=MCG' 4='(04) 4=IU'
                  5='(05) 5=MEQ' 6='(06) 6=CC/ML' 7='(07) 7=TEASPOON'
                  8='(08) 8=TABLET' 9='(09) 9=CAPSULE'
                  10='(10) 10=PUFF/SQUIRT' 11='(11) 11=UNIT'
                  12='(12) 12=TABLESPOON' 13='(13) 13=% SOLUTION/CREAM'
                  14='(14) 14=DROP' 15='(15) 15=OTHER' 97='(97) DONT KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4xpr14f  1='(1) 1=ORAL (PO)' 2='(2) 2=INHALED' 3='(3) 3=TOPICAL'
                  4='(4) 4=SUB Q/SUB C' 5='(5) 5=INTRAMUSCULAR'
                  6='(6) 6=SUBLINGUAL' 7='(7) 7=OTHER'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xpf17f  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xpf18f  1='(1) 1=DAY' 2='(2) 2=EVERY OTHER DAY' 3='(3) 3=WEEK'
                  4='(4) 4=MONTH' 5='(5) 5=AS NEEDED (PRN)' 6='(6) 6=OTHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xpt17f  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xpt18f  1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  5='(5) 5=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4xpd21f  99997='(99997) 99997=DON''T KNOW'
                  99998='(99998) 99998=MISSING' 99999='(99999) 99999=INAPP' ;
  VALUE b4xpc15f  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xpd22f  99999996='(99999996) 99999996=MIXED DOSAGE'
                  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xpd23f  1='(01) 1=MG' 2='(02) 2=GRAMS' 3='(03) 3=MCG' 4='(04) 4=IU'
                  5='(05) 5=MEQ' 6='(06) 6=CC/ML' 7='(07) 7=TEASPOON'
                  8='(08) 8=TABLET' 9='(09) 9=CAPSULE'
                  10='(10) 10=PUFF/SQUIRT' 11='(11) 11=UNIT'
                  12='(12) 12=TABLESPOON' 13='(13) 13=% SOLUTION/CREAM'
                  14='(14) 14=DROP' 15='(15) 15=OTHER' 97='(97) DONT KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4xpr15f  1='(1) 1=ORAL (PO)' 2='(2) 2=INHALED' 3='(3) 3=TOPICAL'
                  4='(4) 4=SUB Q/SUB C' 5='(5) 5=INTRAMUSCULAR'
                  6='(6) 6=SUBLINGUAL' 7='(7) 7=OTHER'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xpf19f  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xpf20f  1='(1) 1=DAY' 2='(2) 2=EVERY OTHER DAY' 3='(3) 3=WEEK'
                  4='(4) 4=MONTH' 5='(5) 5=AS NEEDED (PRN)' 6='(6) 6=OTHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xpt19f  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xpt20f  1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  5='(5) 5=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4xpd24f  99997='(99997) 99997=DON''T KNOW'
                  99998='(99998) 99998=MISSING' 99999='(99999) 99999=INAPP' ;
  VALUE b4xbpd    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4xbpc    7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4xchd    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4xchc    7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4xdpd    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4xdpc    7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4xcod    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4xcoc    7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4xshd    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4xshc    7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4xom     97='(97) 97=DON''T KNOW''' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xomv    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xoc1ff  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xodd1f  99999996='(99999996) 99999996=MIXED DOSAGE'
                  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xodu1f  1='(01) 1=MG' 2='(02) 2=GRAMS' 3='(03) 3=MCG' 4='(04) 4=IU'
                  5='(05) 5=MEQ' 6='(06) 6=CC/ML' 7='(07) 7=TEASPOON'
                  8='(08) 8=TABLET' 9='(09) 9=CAPSULE'
                  10='(10) 10=PUFF/SQUIRT' 11='(11) 11=UNIT'
                  12='(12) 12=TABLESPOON' 13='(13) 13=% SOLUTION/CREAM'
                  14='(14) 14=DROP' 15='(15) 15=OTHER' 97='(97) DONT KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4xor1ff  1='(1) 1=ORAL (PO)' 2='(2) 2=INHALED' 3='(3) 3=TOPICAL'
                  4='(4) 4=SUB Q/SUB C' 5='(5) 5=INTRAMUSCULAR'
                  6='(6) 6=SUBLINGUAL' 7='(7) 7=OTHER'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xof1ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xofu1f  1='(1) 1=DAY' 2='(2) 2=EVERY OTHER DAY' 3='(3) 3=WEEK'
                  4='(4) 4=MONTH' 5='(5) 5=AS NEEDED (PRN)' 6='(6) 6=OTHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xot1ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xotu1f  1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  5='(5) 5=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4xodc1f  99997='(99997) 99997=DON''T KNOW'
                  99998='(99998) 99998=MISSING' 99999='(99999) 99999=INAPP' ;
  VALUE b4xocs    1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xoc2ff  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xodd2f  99999996='(99999996) 99999996=MIXED DOSAGE'
                  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xodu2f  1='(01) 1=MG' 2='(02) 2=GRAMS' 3='(03) 3=MCG' 4='(04) 4=IU'
                  5='(05) 5=MEQ' 6='(06) 6=CC/ML' 7='(07) 7=TEASPOON'
                  8='(08) 8=TABLET' 9='(09) 9=CAPSULE'
                  10='(10) 10=PUFF/SQUIRT' 11='(11) 11=UNIT'
                  12='(12) 12=TABLESPOON' 13='(13) 13=% SOLUTION/CREAM'
                  14='(14) 14=DROP' 15='(15) 15=OTHER' 97='(97) DONT KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4xor2ff  1='(1) 1=ORAL (PO)' 2='(2) 2=INHALED' 3='(3) 3=TOPICAL'
                  4='(4) 4=SUB Q/SUB C' 5='(5) 5=INTRAMUSCULAR'
                  6='(6) 6=SUBLINGUAL' 7='(7) 7=OTHER'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xof2ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xofu2f  1='(1) 1=DAY' 2='(2) 2=EVERY OTHER DAY' 3='(3) 3=WEEK'
                  4='(4) 4=MONTH' 5='(5) 5=AS NEEDED (PRN)' 6='(6) 6=OTHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xot2ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xotu2f  1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  5='(5) 5=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4xodc2f  99997='(99997) 99997=DON''T KNOW'
                  99998='(99998) 99998=MISSING' 99999='(99999) 99999=INAPP' ;
  VALUE b4xoc3ff  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xodd3f  99999996='(99999996) 99999996=MIXED DOSAGE'
                  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xodu3f  1='(01) 1=MG' 2='(02) 2=GRAMS' 3='(03) 3=MCG' 4='(04) 4=IU'
                  5='(05) 5=MEQ' 6='(06) 6=CC/ML' 7='(07) 7=TEASPOON'
                  8='(08) 8=TABLET' 9='(09) 9=CAPSULE'
                  10='(10) 10=PUFF/SQUIRT' 11='(11) 11=UNIT'
                  12='(12) 12=TABLESPOON' 13='(13) 13=% SOLUTION/CREAM'
                  14='(14) 14=DROP' 15='(15) 15=OTHER' 97='(97) DONT KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4xor3ff  1='(1) 1=ORAL (PO)' 2='(2) 2=INHALED' 3='(3) 3=TOPICAL'
                  4='(4) 4=SUB Q/SUB C' 5='(5) 5=INTRAMUSCULAR'
                  6='(6) 6=SUBLINGUAL' 7='(7) 7=OTHER'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xof3ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xofu3f  1='(1) 1=DAY' 2='(2) 2=EVERY OTHER DAY' 3='(3) 3=WEEK'
                  4='(4) 4=MONTH' 5='(5) 5=AS NEEDED (PRN)' 6='(6) 6=OTHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xot3ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xotu3f  1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  5='(5) 5=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4xodc3f  99997='(99997) 99997=DON''T KNOW'
                  99998='(99998) 99998=MISSING' 99999='(99999) 99999=INAPP' ;
  VALUE b4xoc4ff  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xodd4f  99999996='(99999996) 99999996=MIXED DOSAGE'
                  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xodu4f  1='(01) 1=MG' 2='(02) 2=GRAMS' 3='(03) 3=MCG' 4='(04) 4=IU'
                  5='(05) 5=MEQ' 6='(06) 6=CC/ML' 7='(07) 7=TEASPOON'
                  8='(08) 8=TABLET' 9='(09) 9=CAPSULE'
                  10='(10) 10=PUFF/SQUIRT' 11='(11) 11=UNIT'
                  12='(12) 12=TABLESPOON' 13='(13) 13=% SOLUTION/CREAM'
                  14='(14) 14=DROP' 15='(15) 15=OTHER' 97='(97) DONT KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4xor4ff  1='(1) 1=ORAL (PO)' 2='(2) 2=INHALED' 3='(3) 3=TOPICAL'
                  4='(4) 4=SUB Q/SUB C' 5='(5) 5=INTRAMUSCULAR'
                  6='(6) 6=SUBLINGUAL' 7='(7) 7=OTHER'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xof4ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xofu4f  1='(1) 1=DAY' 2='(2) 2=EVERY OTHER DAY' 3='(3) 3=WEEK'
                  4='(4) 4=MONTH' 5='(5) 5=AS NEEDED (PRN)' 6='(6) 6=OTHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xot4ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xotu4f  1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  5='(5) 5=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4xodc4f  99997='(99997) 99997=DON''T KNOW'
                  99998='(99998) 99998=MISSING' 99999='(99999) 99999=INAPP' ;
  VALUE b4xoc5ff  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xodd5f  99999996='(99999996) 99999996=MIXED DOSAGE'
                  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xodu5f  1='(01) 1=MG' 2='(02) 2=GRAMS' 3='(03) 3=MCG' 4='(04) 4=IU'
                  5='(05) 5=MEQ' 6='(06) 6=CC/ML' 7='(07) 7=TEASPOON'
                  8='(08) 8=TABLET' 9='(09) 9=CAPSULE'
                  10='(10) 10=PUFF/SQUIRT' 11='(11) 11=UNIT'
                  12='(12) 12=TABLESPOON' 13='(13) 13=% SOLUTION/CREAM'
                  14='(14) 14=DROP' 15='(15) 15=OTHER' 97='(97) DONT KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4xor5ff  1='(1) 1=ORAL (PO)' 2='(2) 2=INHALED' 3='(3) 3=TOPICAL'
                  4='(4) 4=SUB Q/SUB C' 5='(5) 5=INTRAMUSCULAR'
                  6='(6) 6=SUBLINGUAL' 7='(7) 7=OTHER'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xof5ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xofu5f  1='(1) 1=DAY' 2='(2) 2=EVERY OTHER DAY' 3='(3) 3=WEEK'
                  4='(4) 4=MONTH' 5='(5) 5=AS NEEDED (PRN)' 6='(6) 6=OTHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xot5ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xotu5f  1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  5='(5) 5=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4xodc5f  99997='(99997) 99997=DON''T KNOW'
                  99998='(99998) 99998=MISSING' 99999='(99999) 99999=INAPP' ;
  VALUE b4xoc6ff  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xodd6f  99999996='(99999996) 99999996=MIXED DOSAGE'
                  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xodu6f  1='(01) 1=MG' 2='(02) 2=GRAMS' 3='(03) 3=MCG' 4='(04) 4=IU'
                  5='(05) 5=MEQ' 6='(06) 6=CC/ML' 7='(07) 7=TEASPOON'
                  8='(08) 8=TABLET' 9='(09) 9=CAPSULE'
                  10='(10) 10=PUFF/SQUIRT' 11='(11) 11=UNIT'
                  12='(12) 12=TABLESPOON' 13='(13) 13=% SOLUTION/CREAM'
                  14='(14) 14=DROP' 15='(15) 15=OTHER' 97='(97) DONT KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4xor6ff  1='(1) 1=ORAL (PO)' 2='(2) 2=INHALED' 3='(3) 3=TOPICAL'
                  4='(4) 4=SUB Q/SUB C' 5='(5) 5=INTRAMUSCULAR'
                  6='(6) 6=SUBLINGUAL' 7='(7) 7=OTHER'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xof6ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xofu6f  1='(1) 1=DAY' 2='(2) 2=EVERY OTHER DAY' 3='(3) 3=WEEK'
                  4='(4) 4=MONTH' 5='(5) 5=AS NEEDED (PRN)' 6='(6) 6=OTHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xot6ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xotu6f  1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  5='(5) 5=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4xodc6f  99997='(99997) 99997=DON''T KNOW'
                  99998='(99998) 99998=MISSING' 99999='(99999) 99999=INAPP' ;
  VALUE b4xoc7ff  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xodd7f  99999996='(99999996) 99999996=MIXED DOSAGE'
                  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xodu7f  1='(01) 1=MG' 2='(02) 2=GRAMS' 3='(03) 3=MCG' 4='(04) 4=IU'
                  5='(05) 5=MEQ' 6='(06) 6=CC/ML' 7='(07) 7=TEASPOON'
                  8='(08) 8=TABLET' 9='(09) 9=CAPSULE'
                  10='(10) 10=PUFF/SQUIRT' 11='(11) 11=UNIT'
                  12='(12) 12=TABLESPOON' 13='(13) 13=% SOLUTION/CREAM'
                  14='(14) 14=DROP' 15='(15) 15=OTHER' 97='(97) DONT KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4xor7ff  1='(1) 1=ORAL (PO)' 2='(2) 2=INHALED' 3='(3) 3=TOPICAL'
                  4='(4) 4=SUB Q/SUB C' 5='(5) 5=INTRAMUSCULAR'
                  6='(6) 6=SUBLINGUAL' 7='(7) 7=OTHER'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xof7ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xofu7f  1='(1) 1=DAY' 2='(2) 2=EVERY OTHER DAY' 3='(3) 3=WEEK'
                  4='(4) 4=MONTH' 5='(5) 5=AS NEEDED (PRN)' 6='(6) 6=OTHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xot7ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xotu7f  1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  5='(5) 5=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4xodc7f  99997='(99997) 99997=DON''T KNOW'
                  99998='(99998) 99998=MISSING' 99999='(99999) 99999=INAPP' ;
  VALUE b4xoc8ff  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xodd8f  99999996='(99999996) 99999996=MIXED DOSAGE'
                  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xodu8f  1='(01) 1=MG' 2='(02) 2=GRAMS' 3='(03) 3=MCG' 4='(04) 4=IU'
                  5='(05) 5=MEQ' 6='(06) 6=CC/ML' 7='(07) 7=TEASPOON'
                  8='(08) 8=TABLET' 9='(09) 9=CAPSULE'
                  10='(10) 10=PUFF/SQUIRT' 11='(11) 11=UNIT'
                  12='(12) 12=TABLESPOON' 13='(13) 13=% SOLUTION/CREAM'
                  14='(14) 14=DROP' 15='(15) 15=OTHER' 97='(97) DONT KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4xor8ff  1='(1) 1=ORAL (PO)' 2='(2) 2=INHALED' 3='(3) 3=TOPICAL'
                  4='(4) 4=SUB Q/SUB C' 5='(5) 5=INTRAMUSCULAR'
                  6='(6) 6=SUBLINGUAL' 7='(7) 7=OTHER'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xof8ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xofu8f  1='(1) 1=DAY' 2='(2) 2=EVERY OTHER DAY' 3='(3) 3=WEEK'
                  4='(4) 4=MONTH' 5='(5) 5=AS NEEDED (PRN)' 6='(6) 6=OTHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xot8ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xotu8f  1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  5='(5) 5=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4xodc8f  99997='(99997) 99997=DON''T KNOW'
                  99998='(99998) 99998=MISSING' 99999='(99999) 99999=INAPP' ;
  VALUE b4xoc9ff  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xodd9f  99999996='(99999996) 99999996=MIXED DOSAGE'
                  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xodu9f  1='(01) 1=MG' 2='(02) 2=GRAMS' 3='(03) 3=MCG' 4='(04) 4=IU'
                  5='(05) 5=MEQ' 6='(06) 6=CC/ML' 7='(07) 7=TEASPOON'
                  8='(08) 8=TABLET' 9='(09) 9=CAPSULE'
                  10='(10) 10=PUFF/SQUIRT' 11='(11) 11=UNIT'
                  12='(12) 12=TABLESPOON' 13='(13) 13=% SOLUTION/CREAM'
                  14='(14) 14=DROP' 15='(15) 15=OTHER' 97='(97) DONT KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4xor9ff  1='(1) 1=ORAL (PO)' 2='(2) 2=INHALED' 3='(3) 3=TOPICAL'
                  4='(4) 4=SUB Q/SUB C' 5='(5) 5=INTRAMUSCULAR'
                  6='(6) 6=SUBLINGUAL' 7='(7) 7=OTHER'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xof9ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xofu9f  1='(1) 1=DAY' 2='(2) 2=EVERY OTHER DAY' 3='(3) 3=WEEK'
                  4='(4) 4=MONTH' 5='(5) 5=AS NEEDED (PRN)' 6='(6) 6=OTHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xot9ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xotu9f  1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  5='(5) 5=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4xodc9f  99997='(99997) 99997=DON''T KNOW'
                  99998='(99998) 99998=MISSING' 99999='(99999) 99999=INAPP' ;
  VALUE b4xoc10f  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xodd0f  99999996='(99999996) 99999996=MIXED DOSAGE'
                  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xodu0f  1='(01) 1=MG' 2='(02) 2=GRAMS' 3='(03) 3=MCG' 4='(04) 4=IU'
                  5='(05) 5=MEQ' 6='(06) 6=CC/ML' 7='(07) 7=TEASPOON'
                  8='(08) 8=TABLET' 9='(09) 9=CAPSULE'
                  10='(10) 10=PUFF/SQUIRT' 11='(11) 11=UNIT'
                  12='(12) 12=TABLESPOON' 13='(13) 13=% SOLUTION/CREAM'
                  14='(14) 14=DROP' 15='(15) 15=OTHER' 97='(97) DONT KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4xor10f  1='(1) 1=ORAL (PO)' 2='(2) 2=INHALED' 3='(3) 3=TOPICAL'
                  4='(4) 4=SUB Q/SUB C' 5='(5) 5=INTRAMUSCULAR'
                  6='(6) 6=SUBLINGUAL' 7='(7) 7=OTHER'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xof10f  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xofu0f  1='(1) 1=DAY' 2='(2) 2=EVERY OTHER DAY' 3='(3) 3=WEEK'
                  4='(4) 4=MONTH' 5='(5) 5=AS NEEDED (PRN)' 6='(6) 6=OTHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xot10f  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xotu0f  1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  5='(5) 5=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4xodc0f  99997='(99997) 99997=DON''T KNOW'
                  99998='(99998) 99998=MISSING' 99999='(99999) 99999=INAPP' ;
  VALUE b4xoc11f  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xod10f  99999996='(99999996) 99999996=MIXED DOSAGE'
                  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xod11f  1='(01) 1=MG' 2='(02) 2=GRAMS' 3='(03) 3=MCG' 4='(04) 4=IU'
                  5='(05) 5=MEQ' 6='(06) 6=CC/ML' 7='(07) 7=TEASPOON'
                  8='(08) 8=TABLET' 9='(09) 9=CAPSULE'
                  10='(10) 10=PUFF/SQUIRT' 11='(11) 11=UNIT'
                  12='(12) 12=TABLESPOON' 13='(13) 13=% SOLUTION/CREAM'
                  14='(14) 14=DROP' 15='(15) 15=OTHER' 97='(97) DONT KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4xor11f  1='(1) 1=ORAL (PO)' 2='(2) 2=INHALED' 3='(3) 3=TOPICAL'
                  4='(4) 4=SUB Q/SUB C' 5='(5) 5=INTRAMUSCULAR'
                  6='(6) 6=SUBLINGUAL' 7='(7) 7=OTHER'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xof11f  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xof12f  1='(1) 1=DAY' 2='(2) 2=EVERY OTHER DAY' 3='(3) 3=WEEK'
                  4='(4) 4=MONTH' 5='(5) 5=AS NEEDED (PRN)' 6='(6) 6=OTHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xot11f  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xot12f  1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  5='(5) 5=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4xod12f  99997='(99997) 99997=DON''T KNOW'
                  99998='(99998) 99998=MISSING' 99999='(99999) 99999=INAPP' ;
  VALUE b4xoc12f  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xod13f  99999996='(99999996) 99999996=MIXED DOSAGE'
                  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xod14f  1='(01) 1=MG' 2='(02) 2=GRAMS' 3='(03) 3=MCG' 4='(04) 4=IU'
                  5='(05) 5=MEQ' 6='(06) 6=CC/ML' 7='(07) 7=TEASPOON'
                  8='(08) 8=TABLET' 9='(09) 9=CAPSULE'
                  10='(10) 10=PUFF/SQUIRT' 11='(11) 11=UNIT'
                  12='(12) 12=TABLESPOON' 13='(13) 13=% SOLUTION/CREAM'
                  14='(14) 14=DROP' 15='(15) 15=OTHER' 97='(97) DONT KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4xor12f  1='(1) 1=ORAL (PO)' 2='(2) 2=INHALED' 3='(3) 3=TOPICAL'
                  4='(4) 4=SUB Q/SUB C' 5='(5) 5=INTRAMUSCULAR'
                  6='(6) 6=SUBLINGUAL' 7='(7) 7=OTHER'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xof13f  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xof14f  1='(1) 1=DAY' 2='(2) 2=EVERY OTHER DAY' 3='(3) 3=WEEK'
                  4='(4) 4=MONTH' 5='(5) 5=AS NEEDED (PRN)' 6='(6) 6=OTHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xot13f  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xot14f  1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  5='(5) 5=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4xod15f  99997='(99997) 99997=DON''T KNOW'
                  99998='(99998) 99998=MISSING' 99999='(99999) 99999=INAPP' ;
  VALUE b4xam     97='(97) 97=DON''T KNOW''' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xac1ff  999997='(999997) 999997=DON''T KNOW'
                  999998='(999998) 999998=MISSING'
                  999999='(999999) 999999=INAPP' ;
  VALUE b4xadd1f  99999996='(99999996) 99999996=MIXED DOSAGE'
                  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xadu1f  1='(01) 1=MG' 2='(02) 2=GRAMS' 3='(03) 3=MCG' 4='(04) 4=IU'
                  5='(05) 5=MEQ' 6='(06) 6=CC/ML' 7='(07) 7=TEASPOON'
                  8='(08) 8=TABLET' 9='(09) 9=CAPSULE'
                  10='(10) 10=PUFF/SQUIRT' 11='(11) 11=UNIT'
                  12='(12) 12=TABLESPOON' 13='(13) 13=% SOLUTION/CREAM'
                  14='(14) 14=DROP' 15='(15) 15=OTHER' 97='(97) DONT KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4xar1ff  1='(1) 1=ORAL (PO)' 2='(2) 2=INHALED' 3='(3) 3=TOPICAL'
                  4='(4) 4=SUB Q/SUB C' 5='(5) 5=INTRAMUSCULAR'
                  6='(6) 6=SUBLINGUAL' 7='(7) 7=OTHER'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xaf1ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xafu1f  1='(1) 1=DAY' 2='(2) 2=EVERY OTHER DAY' 3='(3) 3=WEEK'
                  4='(4) 4=MONTH' 5='(5) 5=AS NEEDED (PRN)' 6='(6) 6=OTHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xat1ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xatu1f  1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  5='(5) 5=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4xadc1f  99997='(99997) 99997=DON''T KNOW'
                  99998='(99998) 99998=MISSING' 99999='(99999) 99999=INAPP' ;
  VALUE b4xac2ff  999997='(999997) 999997=DON''T KNOW'
                  999998='(999998) 999998=MISSING'
                  999999='(999999) 999999=INAPP' ;
  VALUE b4xadd2f  99999996='(99999996) 99999996=MIXED DOSAGE'
                  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xadu2f  1='(01) 1=MG' 2='(02) 2=GRAMS' 3='(03) 3=MCG' 4='(04) 4=IU'
                  5='(05) 5=MEQ' 6='(06) 6=CC/ML' 7='(07) 7=TEASPOON'
                  8='(08) 8=TABLET' 9='(09) 9=CAPSULE'
                  10='(10) 10=PUFF/SQUIRT' 11='(11) 11=UNIT'
                  12='(12) 12=TABLESPOON' 13='(13) 13=% SOLUTION/CREAM'
                  14='(14) 14=DROP' 15='(15) 15=OTHER' 97='(97) DONT KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4xar2ff  1='(1) 1=ORAL (PO)' 2='(2) 2=INHALED' 3='(3) 3=TOPICAL'
                  4='(4) 4=SUB Q/SUB C' 5='(5) 5=INTRAMUSCULAR'
                  6='(6) 6=SUBLINGUAL' 7='(7) 7=OTHER'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xaf2ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xafu2f  1='(1) 1=DAY' 2='(2) 2=EVERY OTHER DAY' 3='(3) 3=WEEK'
                  4='(4) 4=MONTH' 5='(5) 5=AS NEEDED (PRN)' 6='(6) 6=OTHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xat2ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xatu2f  1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  5='(5) 5=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4xadc2f  99997='(99997) 99997=DON''T KNOW'
                  99998='(99998) 99998=MISSING' 99999='(99999) 99999=INAPP' ;
  VALUE b4xac3ff  999997='(999997) 999997=DON''T KNOW'
                  999998='(999998) 999998=MISSING'
                  999999='(999999) 999999=INAPP' ;
  VALUE b4xadd3f  99999996='(99999996) 99999996=MIXED DOSAGE'
                  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xadu3f  1='(01) 1=MG' 2='(02) 2=GRAMS' 3='(03) 3=MCG' 4='(04) 4=IU'
                  5='(05) 5=MEQ' 6='(06) 6=CC/ML' 7='(07) 7=TEASPOON'
                  8='(08) 8=TABLET' 9='(09) 9=CAPSULE'
                  10='(10) 10=PUFF/SQUIRT' 11='(11) 11=UNIT'
                  12='(12) 12=TABLESPOON' 13='(13) 13=% SOLUTION/CREAM'
                  14='(14) 14=DROP' 15='(15) 15=OTHER' 97='(97) DONT KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4xar3ff  1='(1) 1=ORAL (PO)' 2='(2) 2=INHALED' 3='(3) 3=TOPICAL'
                  4='(4) 4=SUB Q/SUB C' 5='(5) 5=INTRAMUSCULAR'
                  6='(6) 6=SUBLINGUAL' 7='(7) 7=OTHER'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xaf3ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xafu3f  1='(1) 1=DAY' 2='(2) 2=EVERY OTHER DAY' 3='(3) 3=WEEK'
                  4='(4) 4=MONTH' 5='(5) 5=AS NEEDED (PRN)' 6='(6) 6=OTHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xat3ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xatu3f  1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  5='(5) 5=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4xadc3f  99997='(99997) 99997=DON''T KNOW'
                  99998='(99998) 99998=MISSING' 99999='(99999) 99999=INAPP' ;
  VALUE b4xac4ff  999997='(999997) 999997=DON''T KNOW'
                  999998='(999998) 999998=MISSING'
                  999999='(999999) 999999=INAPP' ;
  VALUE b4xadd4f  99999996='(99999996) 99999996=MIXED DOSAGE'
                  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xadu4f  1='(01) 1=MG' 2='(02) 2=GRAMS' 3='(03) 3=MCG' 4='(04) 4=IU'
                  5='(05) 5=MEQ' 6='(06) 6=CC/ML' 7='(07) 7=TEASPOON'
                  8='(08) 8=TABLET' 9='(09) 9=CAPSULE'
                  10='(10) 10=PUFF/SQUIRT' 11='(11) 11=UNIT'
                  12='(12) 12=TABLESPOON' 13='(13) 13=% SOLUTION/CREAM'
                  14='(14) 14=DROP' 15='(15) 15=OTHER' 97='(97) DONT KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4xar4ff  1='(1) 1=ORAL (PO)' 2='(2) 2=INHALED' 3='(3) 3=TOPICAL'
                  4='(4) 4=SUB Q/SUB C' 5='(5) 5=INTRAMUSCULAR'
                  6='(6) 6=SUBLINGUAL' 7='(7) 7=OTHER'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xaf4ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xafu4f  1='(1) 1=DAY' 2='(2) 2=EVERY OTHER DAY' 3='(3) 3=WEEK'
                  4='(4) 4=MONTH' 5='(5) 5=AS NEEDED (PRN)' 6='(6) 6=OTHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xat4ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xatu4f  1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  5='(5) 5=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4xadc4f  99997='(99997) 99997=DON''T KNOW'
                  99998='(99998) 99998=MISSING' 99999='(99999) 99999=INAPP' ;
  VALUE b4xac5ff  999997='(999997) 999997=DON''T KNOW'
                  999998='(999998) 999998=MISSING'
                  999999='(999999) 999999=INAPP' ;
  VALUE b4xadd5f  99999996='(99999996) 99999996=MIXED DOSAGE'
                  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xadu5f  1='(01) 1=MG' 2='(02) 2=GRAMS' 3='(03) 3=MCG' 4='(04) 4=IU'
                  5='(05) 5=MEQ' 6='(06) 6=CC/ML' 7='(07) 7=TEASPOON'
                  8='(08) 8=TABLET' 9='(09) 9=CAPSULE'
                  10='(10) 10=PUFF/SQUIRT' 11='(11) 11=UNIT'
                  12='(12) 12=TABLESPOON' 13='(13) 13=% SOLUTION/CREAM'
                  14='(14) 14=DROP' 15='(15) 15=OTHER' 97='(97) DONT KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4xar5ff  1='(1) 1=ORAL (PO)' 2='(2) 2=INHALED' 3='(3) 3=TOPICAL'
                  4='(4) 4=SUB Q/SUB C' 5='(5) 5=INTRAMUSCULAR'
                  6='(6) 6=SUBLINGUAL' 7='(7) 7=OTHER'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xaf5ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xafu5f  1='(1) 1=DAY' 2='(2) 2=EVERY OTHER DAY' 3='(3) 3=WEEK'
                  4='(4) 4=MONTH' 5='(5) 5=AS NEEDED (PRN)' 6='(6) 6=OTHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xat5ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xatu5f  1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  5='(5) 5=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4xadc5f  99997='(99997) 99997=DON''T KNOW'
                  99998='(99998) 99998=MISSING' 99999='(99999) 99999=INAPP' ;
  VALUE b4xac6ff  999997='(999997) 999997=DON''T KNOW'
                  999998='(999998) 999998=MISSING'
                  999999='(999999) 999999=INAPP' ;
  VALUE b4xadd6f  99999996='(99999996) 99999996=MIXED DOSAGE'
                  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xadu6f  1='(01) 1=MG' 2='(02) 2=GRAMS' 3='(03) 3=MCG' 4='(04) 4=IU'
                  5='(05) 5=MEQ' 6='(06) 6=CC/ML' 7='(07) 7=TEASPOON'
                  8='(08) 8=TABLET' 9='(09) 9=CAPSULE'
                  10='(10) 10=PUFF/SQUIRT' 11='(11) 11=UNIT'
                  12='(12) 12=TABLESPOON' 13='(13) 13=% SOLUTION/CREAM'
                  14='(14) 14=DROP' 15='(15) 15=OTHER' 97='(97) DONT KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4xar6ff  1='(1) 1=ORAL (PO)' 2='(2) 2=INHALED' 3='(3) 3=TOPICAL'
                  4='(4) 4=SUB Q/SUB C' 5='(5) 5=INTRAMUSCULAR'
                  6='(6) 6=SUBLINGUAL' 7='(7) 7=OTHER'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xaf6ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xafu6f  1='(1) 1=DAY' 2='(2) 2=EVERY OTHER DAY' 3='(3) 3=WEEK'
                  4='(4) 4=MONTH' 5='(5) 5=AS NEEDED (PRN)' 6='(6) 6=OTHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xat6ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xatu6f  1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  5='(5) 5=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4xadc6f  99997='(99997) 99997=DON''T KNOW'
                  99998='(99998) 99998=MISSING' 99999='(99999) 99999=INAPP' ;
  VALUE b4xac7ff  999997='(999997) 999997=DON''T KNOW'
                  999998='(999998) 999998=MISSING'
                  999999='(999999) 999999=INAPP' ;
  VALUE b4xadd7f  99999996='(99999996) 99999996=MIXED DOSAGE'
                  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xadu7f  1='(01) 1=MG' 2='(02) 2=GRAMS' 3='(03) 3=MCG' 4='(04) 4=IU'
                  5='(05) 5=MEQ' 6='(06) 6=CC/ML' 7='(07) 7=TEASPOON'
                  8='(08) 8=TABLET' 9='(09) 9=CAPSULE'
                  10='(10) 10=PUFF/SQUIRT' 11='(11) 11=UNIT'
                  12='(12) 12=TABLESPOON' 13='(13) 13=% SOLUTION/CREAM'
                  14='(14) 14=DROP' 15='(15) 15=OTHER' 97='(97) DONT KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4xar7ff  1='(1) 1=ORAL (PO)' 2='(2) 2=INHALED' 3='(3) 3=TOPICAL'
                  4='(4) 4=SUB Q/SUB C' 5='(5) 5=INTRAMUSCULAR'
                  6='(6) 6=SUBLINGUAL' 7='(7) 7=OTHER'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xaf7ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xafu7f  1='(1) 1=DAY' 2='(2) 2=EVERY OTHER DAY' 3='(3) 3=WEEK'
                  4='(4) 4=MONTH' 5='(5) 5=AS NEEDED (PRN)' 6='(6) 6=OTHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xat7ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xatu7f  1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  5='(5) 5=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4xadc7f  99997='(99997) 99997=DON''T KNOW'
                  99998='(99998) 99998=MISSING' 99999='(99999) 99999=INAPP' ;
  VALUE b4xac8ff  999997='(999997) 999997=DON''T KNOW'
                  999998='(999998) 999998=MISSING'
                  999999='(999999) 999999=INAPP' ;
  VALUE b4xadd8f  99999996='(99999996) 99999996=MIXED DOSAGE'
                  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xadu8f  1='(01) 1=MG' 2='(02) 2=GRAMS' 3='(03) 3=MCG' 4='(04) 4=IU'
                  5='(05) 5=MEQ' 6='(06) 6=CC/ML' 7='(07) 7=TEASPOON'
                  8='(08) 8=TABLET' 9='(09) 9=CAPSULE'
                  10='(10) 10=PUFF/SQUIRT' 11='(11) 11=UNIT'
                  12='(12) 12=TABLESPOON' 13='(13) 13=% SOLUTION/CREAM'
                  14='(14) 14=DROP' 15='(15) 15=OTHER' 97='(97) DONT KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4xar8ff  1='(1) 1=ORAL (PO)' 2='(2) 2=INHALED' 3='(3) 3=TOPICAL'
                  4='(4) 4=SUB Q/SUB C' 5='(5) 5=INTRAMUSCULAR'
                  6='(6) 6=SUBLINGUAL' 7='(7) 7=OTHER'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xaf8ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xafu8f  1='(1) 1=DAY' 2='(2) 2=EVERY OTHER DAY' 3='(3) 3=WEEK'
                  4='(4) 4=MONTH' 5='(5) 5=AS NEEDED (PRN)' 6='(6) 6=OTHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xat8ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xatu8f  1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  5='(5) 5=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4xadc8f  99997='(99997) 99997=DON''T KNOW'
                  99998='(99998) 99998=MISSING' 99999='(99999) 99999=INAPP' ;
  VALUE b4xac9ff  999997='(999997) 999997=DON''T KNOW'
                  999998='(999998) 999998=MISSING'
                  999999='(999999) 999999=INAPP' ;
  VALUE b4xadd9f  99999996='(99999996) 99999996=MIXED DOSAGE'
                  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xadu9f  1='(01) 1=MG' 2='(02) 2=GRAMS' 3='(03) 3=MCG' 4='(04) 4=IU'
                  5='(05) 5=MEQ' 6='(06) 6=CC/ML' 7='(07) 7=TEASPOON'
                  8='(08) 8=TABLET' 9='(09) 9=CAPSULE'
                  10='(10) 10=PUFF/SQUIRT' 11='(11) 11=UNIT'
                  12='(12) 12=TABLESPOON' 13='(13) 13=% SOLUTION/CREAM'
                  14='(14) 14=DROP' 15='(15) 15=OTHER' 97='(97) DONT KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4xar9ff  1='(1) 1=ORAL (PO)' 2='(2) 2=INHALED' 3='(3) 3=TOPICAL'
                  4='(4) 4=SUB Q/SUB C' 5='(5) 5=INTRAMUSCULAR'
                  6='(6) 6=SUBLINGUAL' 7='(7) 7=OTHER'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xaf9ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xafu9f  1='(1) 1=DAY' 2='(2) 2=EVERY OTHER DAY' 3='(3) 3=WEEK'
                  4='(4) 4=MONTH' 5='(5) 5=AS NEEDED (PRN)' 6='(6) 6=OTHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xat9ff  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xatu9f  1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  5='(5) 5=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4xadc9f  99997='(99997) 99997=DON''T KNOW'
                  99998='(99998) 99998=MISSING' 99999='(99999) 99999=INAPP' ;
  VALUE b4xac10f  999997='(999997) 999997=DON''T KNOW'
                  999998='(999998) 999998=MISSING'
                  999999='(999999) 999999=INAPP' ;
  VALUE b4xadd0f  99999996='(99999996) 99999996=MIXED DOSAGE'
                  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xadu0f  1='(01) 1=MG' 2='(02) 2=GRAMS' 3='(03) 3=MCG' 4='(04) 4=IU'
                  5='(05) 5=MEQ' 6='(06) 6=CC/ML' 7='(07) 7=TEASPOON'
                  8='(08) 8=TABLET' 9='(09) 9=CAPSULE'
                  10='(10) 10=PUFF/SQUIRT' 11='(11) 11=UNIT'
                  12='(12) 12=TABLESPOON' 13='(13) 13=% SOLUTION/CREAM'
                  14='(14) 14=DROP' 15='(15) 15=OTHER' 97='(97) DONT KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4xar10f  1='(1) 1=ORAL (PO)' 2='(2) 2=INHALED' 3='(3) 3=TOPICAL'
                  4='(4) 4=SUB Q/SUB C' 5='(5) 5=INTRAMUSCULAR'
                  6='(6) 6=SUBLINGUAL' 7='(7) 7=OTHER'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xaf10f  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xafu0f  1='(1) 1=DAY' 2='(2) 2=EVERY OTHER DAY' 3='(3) 3=WEEK'
                  4='(4) 4=MONTH' 5='(5) 5=AS NEEDED (PRN)' 6='(6) 6=OTHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xat10f  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xatu0f  1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  5='(5) 5=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4xadc0f  99997='(99997) 99997=DON''T KNOW'
                  99998='(99998) 99998=MISSING' 99999='(99999) 99999=INAPP' ;
  VALUE b4xac11f  999997='(999997) 999997=DON''T KNOW'
                  999998='(999998) 999998=MISSING'
                  999999='(999999) 999999=INAPP' ;
  VALUE b4xad10f  99999996='(99999996) 99999996=MIXED DOSAGE'
                  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xad11f  1='(01) 1=MG' 2='(02) 2=GRAMS' 3='(03) 3=MCG' 4='(04) 4=IU'
                  5='(05) 5=MEQ' 6='(06) 6=CC/ML' 7='(07) 7=TEASPOON'
                  8='(08) 8=TABLET' 9='(09) 9=CAPSULE'
                  10='(10) 10=PUFF/SQUIRT' 11='(11) 11=UNIT'
                  12='(12) 12=TABLESPOON' 13='(13) 13=% SOLUTION/CREAM'
                  14='(14) 14=DROP' 15='(15) 15=OTHER' 97='(97) DONT KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4xar11f  1='(1) 1=ORAL (PO)' 2='(2) 2=INHALED' 3='(3) 3=TOPICAL'
                  4='(4) 4=SUB Q/SUB C' 5='(5) 5=INTRAMUSCULAR'
                  6='(6) 6=SUBLINGUAL' 7='(7) 7=OTHER'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xaf11f  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xaf12f  1='(1) 1=DAY' 2='(2) 2=EVERY OTHER DAY' 3='(3) 3=WEEK'
                  4='(4) 4=MONTH' 5='(5) 5=AS NEEDED (PRN)' 6='(6) 6=OTHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xat11f  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xat12f  1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  5='(5) 5=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4xad12f  99997='(99997) 99997=DON''T KNOW'
                  99998='(99998) 99998=MISSING' 99999='(99999) 99999=INAPP' ;
  VALUE b4xac12f  999997='(999997) 999997=DON''T KNOW'
                  999998='(999998) 999998=MISSING'
                  999999='(999999) 999999=INAPP' ;
  VALUE b4xad13f  99999996='(99999996) 99999996=MIXED DOSAGE'
                  99999997='(99999997) 99999997=DON''T KNOW'
                  99999998='(99999998) 99999998=MISSING'
                  99999999='(99999999) 99999999=INAPP' ;
  VALUE b4xad14f  1='(01) 1=MG' 2='(02) 2=GRAMS' 3='(03) 3=MCG' 4='(04) 4=IU'
                  5='(05) 5=MEQ' 6='(06) 6=CC/ML' 7='(07) 7=TEASPOON'
                  8='(08) 8=TABLET' 9='(09) 9=CAPSULE'
                  10='(10) 10=PUFF/SQUIRT' 11='(11) 11=UNIT'
                  12='(12) 12=TABLESPOON' 13='(13) 13=% SOLUTION/CREAM'
                  14='(14) 14=DROP' 15='(15) 15=OTHER' 97='(97) DONT KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4xar12f  1='(1) 1=ORAL (PO)' 2='(2) 2=INHALED' 3='(3) 3=TOPICAL'
                  4='(4) 4=SUB Q/SUB C' 5='(5) 5=INTRAMUSCULAR'
                  6='(6) 6=SUBLINGUAL' 7='(7) 7=OTHER'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xaf13f  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xaf14f  1='(1) 1=DAY' 2='(2) 2=EVERY OTHER DAY' 3='(3) 3=WEEK'
                  4='(4) 4=MONTH' 5='(5) 5=AS NEEDED (PRN)' 6='(6) 6=OTHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xat13f  9997='(9997) 9997=DON''T KNOW' 9998='(9998) 9998=MISSING'
                  9999='(9999) 9999=INAPP' ;
  VALUE b4xat14f  1='(1) 1=DAY' 2='(2) 2=WEEK' 3='(3) 3=MONTH' 4='(4) 4=YEAR'
                  5='(5) 5=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4xad15f  99997='(99997) 99997=DON''T KNOW'
                  99998='(99998) 99998=MISSING' 99999='(99999) 99999=INAPP' ;
  VALUE b4xm      1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4xmm     97='(97) 97=DON''T KNOW''' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4xmc1ff  99999997='(99999997) DON''T KNOW'
                  99999998='(99999998) MISSING' 99999999='(99999999) INAPP' ;
  VALUE b4xmc2ff  99999997='(99999997) DON''T KNOW'
                  99999998='(99999998) MISSING' 99999999='(99999999) INAPP' ;
  VALUE b4xmc3ff  99999997='(99999997) DON''T KNOW'
                  99999998='(99999998) MISSING' 99999999='(99999999) INAPP' ;
  VALUE b4xmc4ff  99999997='(99999997) DON''T KNOW'
                  99999998='(99999998) MISSING' 99999999='(99999999) INAPP' ;
  VALUE b4xmc5ff  99999997='(99999997) DON''T KNOW'
                  99999998='(99999998) MISSING' 99999999='(99999999) INAPP' ;
  VALUE b4xmc6ff  99999997='(99999997) DON''T KNOW'
                  99999998='(99999998) MISSING' 99999999='(99999999) INAPP' ;
  VALUE b4xmc7ff  99999997='(99999997) DON''T KNOW'
                  99999998='(99999998) MISSING' 99999999='(99999999) INAPP' ;
  VALUE b4xmc8ff  99999997='(99999997) DON''T KNOW'
                  99999998='(99999998) MISSING' 99999999='(99999999) INAPP' ;
  VALUE b4xxm     1='(1) NO ADDITIONAL MEDS' 2='(2) ADDITIONAL RX MEDS'
                  3='(3) ADDITIONAL OTC MEDS' 4='(4) ADDITIONAL ALT MEDS'
                  5='(5) ADDITIONAL OTC & ALT MEDS'
                  6='(6) ADDITIONAL ALLERGY' ;
  VALUE b4pwhrf   1='(1) LT 4 STDS' 2='(2) GE 4 STDS' 8='(8) MISSING' ;
  VALUE b4p1a     999997='(999997) DONT KNOW' 999998='(999998) MISSING'
                  999999='(999999) INAPP' ;
  VALUE b4p1b     99997='(99997) DONT KNOW' 99998='(99998) MISSING'
                  99999='(99999) INAPP' ;
  VALUE b4pbmi    999997='(999997) DONT KNOW' 999998='(999998) MISSING'
                  999999='(999999) INAPP' ;
  VALUE b4p1c     9997='(9997) DONT KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4p1d     997='(997) DONT KNOW' 998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4p1e     97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4p1f1s   997='(997) DONT KNOW' 998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4p1f1d   997='(997) DONT KNOW' 998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4p1f2s   997='(997) DONT KNOW' 998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4p1f2d   997='(997) DONT KNOW' 998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4p1f3s   997='(997) DONT KNOW' 998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4p1f3d   997='(997) DONT KNOW' 998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4p1gs    997='(997) DONT KNOW' 998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4p1gd    997='(997) DONT KNOW' 998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4p1gs2f  997='(997) DONT KNOW' 998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4p1gd2f  997='(997) DONT KNOW' 998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4p2a     999997='(999997) DONT KNOW' 999998='(999998) MISSING'
                  999999='(999999) INAPP' ;
  VALUE b4p2b     999997='(999997) DONT KNOW' 999998='(999998) MISSING'
                  999999='(999999) INAPP' ;
  VALUE b4p2c     999997='(999997) DONT KNOW' 999998='(999998) MISSING'
                  999999='(999999) INAPP' ;
  VALUE b4p2d     999997='(999997) DONT KNOW' 999998='(999998) MISSING'
                  999999='(999999) INAPP' ;
  VALUE b4pwhr    999997='(999997) DONT KNOW' 999998='(999998) MISSING'
                  999999='(999999) INAPP' ;
  VALUE b4p3a     1='(1) 1=RIGHT' 2='(2) 2=LEFT' 3='(3) 3=AMBIDEXTROUS'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4p3a1ff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4p3a2rf  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4p3a20f  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4p3a21f  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4p3a2lf  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4p3a22f  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4p3a23f  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4p3b1ff  1='(1) 1=YES, BOTH' 2='(2) 2=RIGHT ONLY'
                  3='(3) 3=LEFT ONLY' 4='(4) 4=NO,NEITHER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4p3b2r   997='(997) DONT KNOW' 998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4p3b2l   997='(997) DONT KNOW' 998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4p3b3r   1='(1) BLIND/VISION IMPAIRED' 2='(2) SURGICALLY CORRECTED'
                  3='(3) ARTIFICIAL LENS/EYE' 4='(4) WOULDNT REMOVE CONTACTS'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4p3b4ff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4p3b4a   1='(1) GLASSES/CONTACTS' 2='(2) BIFOCALS' 3='(3) TRIFOCALS'
                  4='(4) PROGRESSIVE LENS' 5='(5) READING' 6='(6) DISTANCE'
                  7='(7) OTHERS' 97='(97) DONT KNOW' 98='(98) MISSING'
                  99='(99) INAPP' ;
  VALUE b4p3b5r   997='(997) DONT KNOW' 998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4p3b5l   997='(997) DONT KNOW' 998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4p3b6ff  1='(1) 1=AVAILABLE' 2='(2) 2=NOT AVAILABLE'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4p3c1ff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4p3c2ff  997='(997) DONT KNOW' 998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4p3c3ff  1='(1) 1=STANDING' 2='(2) 2=SITTING' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4p3d     1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4p3e     1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4p3f     1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4p3g     1='(1) 1=WALKER' 2='(2) 2=CRUTCHES' 3='(3) 3=CANE'
                  4='(4) 4=OTHER' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4p3h1r   1='(1) UNSTEADY/FALL RISK' 2='(2) PAIN'
                  3='(3) LEGALLY BLIND' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4p3h2ff  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4p3h3ff  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4p3i1ff  1='(1) 1=Yes' 2='(2) 2=No' 7='(7) 7=Dont know'
                  8='(8) 8=Missing' 9='(9) 9=N/A' ;
  VALUE b4p3i2ff  97='(97) DONT KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4p3i3r   1='(1) BACK PROBLEM' 2='(2) KNEE PROBLEM'
                  3='(3) HIP PROBLEM' 4='(4) GENERAL PAIN'
                  5='(5) NOT PHYSICALLY ABLE' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4pmd     1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p4b     1='(1) 1=RELAXED' 2='(2) 2=AVERAGE' 3='(3) 3=NERVOUS'
                  4='(4) 4=DEPRESSED MOOD' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p5a1ff  1='(1) 1=NORMAL' 2='(2) 2=DECREASED'
                  3='(3) 3=MIN-FRONTAL BALDING' 4='(4) 4=MOD-FRONTAL BALDING'
                  5='(5) 5=TOTAL-FRONTAL BALDING' 6='(6) 6=PATCHY ALOPECIA'
                  7='(7) 7=WIG' 8='(8) 8=TOTAL BALDNESS'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=IN APP' ;
  VALUE b4p5a2ff  1='(1) 1=AVERAGE' 2='(2) 2=THINNER' 3='(3) 3=THICKER'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p5a3ff  1='(1) 1=BROWN' 2='(2) 2=BLOND' 3='(3) 3=RED'
                  4='(4) 4=GREY' 5='(5) 5=DYED' 6='(6) 6=BLACK'
                  7='(7) 7=OTHER' 97='(97) 97=DONT KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4p5a4ff  1='(1) 1=NONE' 2='(2) 2=<25%' 3='(3) 3=25%' 4='(4) 4=50%'
                  5='(5) 5=75%' 6='(6) 6=100%' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4p5b     1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p5b1ff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p5b2ff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p5b3ff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p5b4ff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p5b5ff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p5b6ff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p5b7ff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p5b8ff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p5b9ff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p5b10f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p5b11f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p5b12f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p5b13f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4p5b14f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4p5b15f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4p5b16f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4p5b17f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p6a1ff  1='(1) 1=NORMAL' 2='(2) 2=R, DECREASED'
                  3='(3) 3=L, DECREASED' 4='(4) 4=BOTH, DECREASED'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p6a2ff  1='(1) 1=NORMAL' 2='(2) 2=R, DECREASED'
                  3='(3) 3=L, DECREASED' 4='(4) 4=BOTH, DECREASED'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p6b     1='(1) 1=NORMAL' 2='(2) 2=R, DECREASED'
                  3='(3) 3=L, DECREASED' 4='(4) 4=BOTH, DECREASED'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p6c     1='(1) 1=NONE' 2='(2) 2=RIGHT EAR' 3='(3) 3=LEFT EAR'
                  4='(4) 4=BOTH EARS' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=IN APP' ;
  VALUE b4p6d1ff  1='(1) 1=NO CREASE' 2='(2) 2=RIGHT CREASE'
                  3='(3) 3=LEFT CREASE' 4='(4) 4=BOTH CREASE'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p6d2ff  1='(1) 1=NONE' 2='(2) 2=RIGHT ONLY' 3='(3) 3=LEFT ONLY'
                  4='(4) 4=BOTH' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=IN APP' ;
  VALUE b4p6d3ff  1='(1) 1=NONE' 2='(2) 2=RIGHT ONLY' 3='(3) 3=LEFT ONLY'
                  4='(4) 4=BOTH' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=IN APP' ;
  VALUE b4p6d4ff  1='(1) 1=NONE' 2='(2) 2=RIGHT ONLY' 3='(3) 3=LEFT ONLY'
                  4='(4) 4=BOTH' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=IN APP' ;
  VALUE b4p6e1ff  1='(1) 1=BOTH NORMAL' 2='(2) 2=RT NORMAL'
                  3='(3) 3=LT NORMAL' 4='(4) 4=BOTH ABNORMAL'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p6e2ff  1='(1) 1=NONE' 2='(2) 2=RIGHT ONLY' 3='(3) 3=LEFT ONLY'
                  4='(4) 4=BOTH' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=IN APP' ;
  VALUE b4p6e3ff  1='(1) 1=NONE' 2='(2) 2=RIGHT ONLY' 3='(3) 3=LEFT ONLY'
                  4='(4) 4=BOTH' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=IN APP' ;
  VALUE b4p6e4ff  1='(1) 1=NONE' 2='(2) 2=RIGHT ONLY' 3='(3) 3=LEFT ONLY'
                  4='(4) 4=BOTH' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=IN APP' ;
  VALUE b4p6e4r   1='(1) 1=0%' 2='(2) 2=25%' 3='(3) 3=50%' 4='(4) 4=75%'
                  5='(5) 5=100%' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4p6e4l   1='(1) 1=0%' 2='(2) 2=25%' 3='(3) 3=50%' 4='(4) 4=75%'
                  5='(5) 5=100%' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4p6f1ff  1='(1) 1=AVERAGE' 2='(2) 2=RIGHT ABNORMAL'
                  3='(3) 3=LEFT ABNORMAL' 4='(4) 4=BOTH ABNORMAL'
                  5='(5) 5=RIGHT NOT VISIBLE' 6='(6) 6=LEFT NOT VISIBLE'
                  7='(7) 7=BOTH NOT VISIBLE' 97='(97) 97=DON''T KNOW'
                  98='(98) 98=MISSING' 99='(99) 9=IN APP' ;
  VALUE b4p6f2ff  1='(1) 1=NONE' 2='(2) 2=RIGHT ONLY' 3='(3) 3=LEFT ONLY'
                  4='(4) 4=BOTH' 5='(5) 5=RIGHT NOT VISIBLE'
                  6='(6) 6=LEFT NOT VISIBLE' 7='(7) 7=BOTH NOT VISIBLE'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 9=IN APP' ;
  VALUE b4p6f3ff  1='(1) 1=NONE' 2='(2) 2=RIGHT ONLY' 3='(3) 3=LEFT ONLY'
                  4='(4) 4=BOTH' 5='(5) 5=RIGHT NOT VISIBLE'
                  6='(6) 6=LEFT NOT VISIBLE' 7='(7) 7=BOTH NOT VISIBLE'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=IN APP' ;
  VALUE b4p6f4ff  1='(1) 1=NONE' 2='(2) 2=RIGHT ONLY' 3='(3) 3=LEFT ONLY'
                  4='(4) 4=BOTH' 5='(5) 5=RIGHT NOT VISIBLE'
                  6='(6) 6=LEFT NOT VISIBLE' 7='(7) 7=BOTH NOT VISIBLE'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=IN APP' ;
  VALUE b4p6f5ff  1='(1) 1=NONE' 2='(2) 2=RIGHT ONLY' 3='(3) 3=LEFT ONLY'
                  4='(4) 4=BOTH' 5='(5) 5=RIGHT NOT VISIBLE'
                  6='(6) 6=LEFT NOT VISIBLE' 7='(7) 7=BOTH NOT VISIBLE'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 9=IN APP' ;
  VALUE b4p7a     1='(1) 1=NORMAL' 2='(2) 2=ABNORMAL' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p7a1r   1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p7a1l   1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p7a2r   1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p7a2l   1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p8a     97='(97) DON''T KNOW' 98='(98) MISSING' 99='(99) IN APP' ;
  VALUE b4p8b1ff  1='(1) 1=NONE' 2='(2) 2=10%' 3='(3) 3=25%' 4='(4) 4=50%'
                  5='(5) 5=75%' 6='(6) 6=100%' 97='(97) 97=DON''T KNOW'
                  98='(98) 98=MISSING' 99='(99) 99=INAPP' ;
  VALUE b4p8b2ff  1='(1) 1=NONE' 2='(2) 2=10%' 3='(3) 3=25%' 4='(4) 4=50%'
                  5='(5) 5=75%' 6='(6) 6=100%' 97='(97) 97=DON''T KNOW'
                  98='(98) 98=MISSING' 99='(99) 99=INAPP' ;
  VALUE b4p8b3ff  1='(1) 1=EXCELLENT' 2='(2) 2=MODERATE MALALIGNMENT'
                  3='(3) 3=EXTENSIVE MALALIGNMENT' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p8b4ff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p8b5ff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p8b6ff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p8b7ff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p8c1ad  1='(1) 1=YES, ADULT' 2='(2) 2=NO, YOUNGER THAN 18'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4p8c1a   97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4p8c1ho  1='(1) 1=DECAY/ABSCESS' 2='(2) 2=GUM DISEASE'
                  3='(3) 3=TRAUMA' 4='(4) 4=BONE LOSS (BECAME LOOSE)'
                  5='(5) 5=WISDOM TEETH EXTRACTION' 6='(6) 6=CROWDING'
                  7='(7) 7=CRACKED' 8='(8) 8=OTHER' 97='(97) 97=DON''T KNOW'
                  98='(98) 98=MISSING' 99='(99) 99=INAPP' ;
  VALUE b4p8c2ad  1='(1) 1=YES, ADULT' 2='(2) 2=NO, YOUNGER THAN 18'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=INAPP' ;
  VALUE b4p8c2a   97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=INAPP' ;
  VALUE b4p8c2ho  1='(1) 1=DECAY/ABSCESS' 2='(2) 2=GUM DISEASE'
                  3='(3) 3=TRAUMA' 4='(4) 4=BONE LOSS (BECAME LOOSE)'
                  5='(5) 5=WISDOM TEETH EXTRACTION' 6='(6) 6=CROWDING'
                  7='(7) 7=CRACKED' 8='(8) 8=OTHER' 97='(97) 97=DON''T KNOW'
                  98='(98) 98=MISSING' 99='(99) 99=INAPP' ;
  VALUE b4p8d     1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p9a     1='(1) 1=FULL' 2='(2) 2=RESTRICTED' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p9a1ff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p9a2ff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p9a3ff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p9a4ff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p9b     1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p9c     1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p9d     1='(1) 1=AVERAGE' 2='(2) 2=ABNORMAL' 3='(3) 3=REMOVED'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p9d1ff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p9d2ff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p9d3ff  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p9d3n   97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=IN APP' ;
  VALUE b4p9d3s   997='(997) 997=DON''T KNOW' 998='(998) 998=MISSING'
                  999='(999) 999=INAPP' ;
  VALUE b4p10a1f  1='(1) 1=NONE' 2='(2) 2=RIGHT' 3='(3) 3=LEFT'
                  4='(4) 4=BOTH' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=IN APP' ;
  VALUE b4p10a2f  1='(1) 1=REGULAR' 2='(2) 2=IRREGULAR'
                  3='(3) 3=REGULARLY IRREGULAR' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p10a3f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p10a4f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p10b1f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p10b2f  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p10b2a  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p10b2b  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p10b3f  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p10c    1='(1) 1=NORMAL' 2='(2) 2=THRILL' 3='(3) 3=BISFERENS'
                  4='(4) 4=ALTERNANS' 7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING'
                  9='(9) 9=INAPP' ;
  VALUE b4p10c1r  0='(0) 0-NOT DETECTABLE' 1='(1) 1-DECREASED'
                  2='(2) 2-NORMAL' 3='(3) 3-INCREASED'
                  4='(4) 4-GREATLY INCREASED' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p10c1l  0='(0) 0-NOT DETECTABLE' 1='(1) 1-DECREASED'
                  2='(2) 2-NORMAL' 3='(3) 3-INCREASED'
                  4='(4) 4-GREATLY INCREASED' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p10c2r  0='(0) 0-NOT DETECTABLE' 1='(1) 1-DECREASED'
                  2='(2) 2-NORMAL' 3='(3) 3-INCREASED'
                  4='(4) 4-GREATLY INCREASED' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p10c2l  0='(0) 0-NOT DETECTABLE' 1='(1) 1-DECREASED'
                  2='(2) 2-NORMAL' 3='(3) 3-INCREASED'
                  4='(4) 4-GREATLY INCREASED' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p10c3r  0='(0) 0-NOT DETECTABLE' 1='(1) 1-DECREASED'
                  2='(2) 2-NORMAL' 3='(3) 3-INCREASED'
                  4='(4) 4-GREATLY INCREASED' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p10c3l  0='(0) 0-NOT DETECTABLE' 1='(1) 1-DECREASED'
                  2='(2) 2-NORMAL' 3='(3) 3-INCREASED'
                  4='(4) 4-GREATLY INCREASED' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p10c4r  0='(0) 0-NOT DETECTABLE' 1='(1) 1-DECREASED'
                  2='(2) 2-NORMAL' 3='(3) 3-INCREASED'
                  4='(4) 4-GREATLY INCREASED' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p10c4l  0='(0) 0-NOT DETECTABLE' 1='(1) 1-DECREASED'
                  2='(2) 2-NORMAL' 3='(3) 3-INCREASED'
                  4='(4) 4-GREATLY INCREASED' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p10c5r  0='(0) 0-NOT DETECTABLE' 1='(1) 1-DECREASED'
                  2='(2) 2-NORMAL' 3='(3) 3-INCREASED'
                  4='(4) 4-GREATLY INCREASED' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p10c5l  0='(0) 0-NOT DETECTABLE' 1='(1) 1-DECREASED'
                  2='(2) 2-NORMAL' 3='(3) 3-INCREASED'
                  4='(4) 4-GREATLY INCREASED' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p10c6r  0='(0) 0-NOT DETECTABLE' 1='(1) 1-DECREASED'
                  2='(2) 2-NORMAL' 3='(3) 3-INCREASED'
                  4='(4) 4-GREATLY INCREASED' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p10c6l  0='(0) 0-NOT DETECTABLE' 1='(1) 1-DECREASED'
                  2='(2) 2-NORMAL' 3='(3) 3-INCREASED'
                  4='(4) 4-GREATLY INCREASED' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p10c7r  0='(0) 0-NOT DETECTABLE' 1='(1) 1-DECREASED'
                  2='(2) 2-NORMAL' 3='(3) 3-INCREASED'
                  4='(4) 4-GREATLY INCREASED' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p10c7l  0='(0) 0-NOT DETECTABLE' 1='(1) 1-DECREASED'
                  2='(2) 2-NORMAL' 3='(3) 3-INCREASED'
                  4='(4) 4-GREATLY INCREASED' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p11a1f  1='(1) 1=AVERAGE' 2='(2) 2=ABNORMAL' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p11b    1='(1) 1=NORMAL' 2='(2) 2=SLOW' 3='(3) 3=RAPID-DEEP'
                  4='(4) 4=RAPID-SHALLOW' 5='(5) 5=CHEYNE-STOKES'
                  6='(6) 6=INCREASED BREATH' 7='(7) 7=DECREASED BREATH'
                  8='(8) 8=RALES, WHEEZES, FRICTION RUBS'
                  97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=IN APP' ;
  VALUE b4p11b1f  1='(1) 1=NO' 2='(2) 2=COARSE' 3='(3) 3=FINE'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p11b1a  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p11b1b  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p11b1c  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p11b1d  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p11b2f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p11b2a  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p11b2b  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p11b2c  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p11b2d  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p11b3f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12a    1='(1) 1=NORMAL' 2='(2) 2=TREMOR' 3='(3) 3=ATROPHY'
                  4='(4) 4=FASCICULATION' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12b    1='(1) 1=NORMAL' 2='(2) 2=CONTOUR' 3='(3) 3=MOTION'
                  4='(4) 4=PAIN WITH MOTION' 5='(5) 5=TENDERNESS'
                  6='(6) 6=KYPHOSIS' 7='(7) 7=SCOLIOSIS'
                  8='(8) 8=KYPHOSCOLIOSIS' 97='(97) 97=DON''T KNOW'
                  98='(98) 98=MISSING' 99='(99) 99=IN APP' ;
  VALUE b4p12c    1='(1) 1=NORMAL' 2='(2) 2=ABNORMAL' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12c1f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12c1a  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12c1b  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12c1c  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12c1d  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12c1e  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12c0f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12c2f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12c2a  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12c2b  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12c2c  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12c2d  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12c2e  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12c3f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12c4f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12c3a  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12c3b  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12c3c  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12c3d  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12c3e  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12c5f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12c6f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12c4a  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12c4b  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12c4c  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12c4d  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12c4e  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12c7f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12c8f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12c5a  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12c5b  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12c5c  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12c5d  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12c5e  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12c9f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p1210f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p1211f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12d    97='(97) 97=DON''T KNOW' 98='(98) 98=MISSING'
                  99='(99) 99=IN APP' ;
  VALUE b4p12e1f  1='(1) 1=NORMAL' 2='(2) 2=ABNORMAL' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12e2f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12e3f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12e4f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p12e5f  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13fff  1='(1) 1=RIGHT' 2='(2) 2=LEFT' 3='(3) 3=AMBIDEXTROUS'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13a1f  1='(1) 1=NORMAL' 2='(2) 2=RIGHT UNABLE'
                  3='(3) 3=LEFT UNABLE' 4='(4) 4=BOTH UNABLE'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13a2f  1='(1) 1=NORMAL' 2='(2) 2=RIGHT UNABLE'
                  3='(3) 3=LEFT UNABLE' 4='(4) 4=BOTH UNABLE'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13a3f  1='(1) 1=NORMAL' 2='(2) 2=RIGHT UNABLE'
                  3='(3) 3=LEFT UNABLE' 4='(4) 4=BOTH UNABLE'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13a4f  1='(1) 1=NORMAL' 2='(2) 2=RIGHT UNABLE'
                  3='(3) 3=LEFT UNABLE' 4='(4) 4=BOTH UNABLE'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13b1f  1='(1) 1=NORMAL' 2='(2) 2=ABNORMAL' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13b1a  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13b1b  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13b1c  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13b1d  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13b2f  1='(1) 1=NORMAL' 2='(2) 2=ABNORMAL' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13b2a  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13b2b  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13b2c  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13b2d  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13b3f  1='(1) 1=NORMAL' 2='(2) 2=ABNORMAL' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13b3a  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13b3b  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13b3c  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13b3d  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13b4f  1='(1) 1=NORMAL' 2='(2) 2=ABNORMAL' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13b4a  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13b4b  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13b4c  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13b4d  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13b5f  1='(1) 1=NORMAL' 2='(2) 2=ABNORMAL' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13b5a  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13b5b  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13b5c  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13b5d  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13c1r  0='(0) 0-NOT DETECTABLE' 1='(1) 1-DECREASED'
                  2='(2) 2-NORMAL' 3='(3) 3-INCREASED'
                  4='(4) 4-GREATLY INCREASED' 5='(5) 5-CLONUS'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13c1l  0='(0) 0-NOT DETECTABLE' 1='(1) 1-DECREASED'
                  2='(2) 2-NORMAL' 3='(3) 3-INCREASED'
                  4='(4) 4-GREATLY INCREASED' 5='(5) 5-CLONUS'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13c2r  0='(0) 0-NOT DETECTABLE' 1='(1) 1-DECREASED'
                  2='(2) 2-NORMAL' 3='(3) 3-INCREASED'
                  4='(4) 4-GREATLY INCREASED' 5='(5) 5-CLONUS'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13c2l  0='(0) 0-NOT DETECTABLE' 1='(1) 1-DECREASED'
                  2='(2) 2-NORMAL' 3='(3) 3-INCREASED'
                  4='(4) 4-GREATLY INCREASED' 5='(5) 5-CLONUS'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13c3r  0='(0) 0-NOT DETECTABLE' 1='(1) 1-DECREASED'
                  2='(2) 2-NORMAL' 3='(3) 3-INCREASED'
                  4='(4) 4-GREATLY INCREASED' 5='(5) 5-CLONUS'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13c3l  0='(0) 0-NOT DETECTABLE' 1='(1) 1-DECREASED'
                  2='(2) 2-NORMAL' 3='(3) 3-INCREASED'
                  4='(4) 4-GREATLY INCREASED' 5='(5) 5-CLONUS'
                  7='(7) 7=DON''T KNOW' 8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13c4a  1='(1) NORMAL' 2='(2) DORSIFLEXION' 3='(3) WITHDRAWAL'
                  4='(4) NO RESPONSE' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4p13d1f  1='(1) 1=NORMAL' 2='(2) 2=ABNORMAL' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13d1a  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13d1b  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13d1c  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13d1d  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13d2f  1='(1) 1=NORMAL' 2='(2) 2=ABNORMAL' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13d2a  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13d2b  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13d2c  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13d2d  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13d3f  1='(1) 1=NORMAL' 2='(2) 2=ABNORMAL' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13d3a  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13d3b  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13d3c  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13d3d  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13d4f  1='(1) 1=NORMAL' 2='(2) 2=ABNORMAL' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13d4a  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13d4b  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13d4c  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13d4d  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13d5f  1='(1) 1=NORMAL' 2='(2) 2=ABNORMAL' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13d5a  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13d5b  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13d5c  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13d5d  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13e1f  1='(1) 1=NORMAL' 2='(2) 2=ABNORMAL' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13e1a  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13e1b  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13e1c  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13e1d  1='(1) 1=YES' 2='(2) 2=NO' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13e2f  1='(1) 1=NORMAL' 2='(2) 2=ABNORMAL' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4p13e3f  1='(1) 1=NORMAL' 2='(2) 2=ABNORMAL' 7='(7) 7=DON''T KNOW'
                  8='(8) 8=MISSING' 9='(9) 9=IN APP' ;
  VALUE b4zblood  1='(1) NO SAMPLE' 2='(2) PARTIAL' 3='(3) COMPLETE'
                  4='(4) OTHER' ;
  VALUE b4bha1c   997='(997) DONT KNOW' 998='(998) REFUSED/MISSING'
                  999='(999) INAPP' ;
  VALUE b4bchol   997='(997) DONT KNOW' 998='(998) REFUSED/MISSING'
                  999='(999) INAPP' ;
  VALUE b4btrigl  9997='(9997) DONT KNOW' 9998='(9998) REFUSED/MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4bhdl    997='(997) DONT KNOW' 998='(998) REFUSED/MISSING'
                  999='(999) INAPP' ;
  VALUE b4bldl    997='(997) DONT KNOW' 998='(998) REFUSED/MISSING'
                  999='(999) INAPP' ;
  VALUE b4brthdl  9997='(9997) DONT KNOW' 9998='(9998) REFUSED/MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4bdheas  9997='(9997) DONT KNOW' 9998='(9998) REFUSED/MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4bdhea   9997='(9997) DONT KNOW' 9998='(9998) REFUSED/MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4bscrea  997='(997) DONT KNOW' 998='(998) REFUSED/MISSING'
                  999='(999) INAPP' ;
  VALUE b4bil6ff  99997='(99997) DONT KNOW' 99998='(99998) REFUSED/MISSING'
                  99999='(99999) INAPP' ;
  VALUE b4bsil6r  99997='(99997) DONT KNOW' 99998='(99998) REFUSED/MISSING'
                  99999='(99999) INAPP' ;
  VALUE b4bfgn    997='(997) DONT KNOW' 998='(998) REFUSED/MISSING'
                  999='(999) INAPP' ;
  VALUE b4bcrp    99997='(99997) DONT KNOW' 99998='(99998) REFUSED/MISSING'
                  99999='(99999) INAPP' ;
  VALUE b4bsesel  99997='(99997) DONT KNOW' 99998='(99998) REFUSED/MISSING'
                  99999='(99999) INAPP' ;
  VALUE b4bsicam  999997='(999997) DONT KNOW'
                  999998='(999998) REFUSED/MISSING' 999999='(999999) INAPP' ;
  VALUE b4batbc   9997='(9997) DONT KNOW' 9998='(9998) REFUSED/MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4b13cbc  9997='(9997) DONT KNOW' 9998='(9998) REFUSED/MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4bac     99997='(99997) DONT KNOW' 99998='(99998) REFUSED/MISSING'
                  99999='(99999) INAPP' ;
  VALUE b4bbcx    9997='(9997) DONT KNOW' 9998='(9998) REFUSED/MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4blut    99997='(99997) DONT KNOW' 99998='(99998) REFUSED/MISSING'
                  99999='(99999) INAPP' ;
  VALUE b4bzx     9997='(9997) DONT KNOW' 9998='(9998) REFUSED/MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4blyc    9997='(9997) DONT KNOW' 9998='(9998) REFUSED/MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4bret    99997='(99997) DONT KNOW' 99998='(99998) REFUSED/MISSING'
                  99999='(99999) INAPP' ;
  VALUE b4batoc   999997='(999997) DONT KNOW'
                  999998='(999998) REFUSED/MISSING' 999999='(999999) INAPP' ;
  VALUE b4bgtoc   99997='(99997) DONT KNOW' 99998='(99998) REFUSED/MISSING'
                  99999='(99999) INAPP' ;
  VALUE b4bp1np   999997='(999997) DONT KNOW'
                  999998='(999998) REFUSED/MISSING' 999999='(999999) INAPP' ;
  VALUE b4bsbap   999997='(999997) DONT KNOW'
                  999998='(999998) REFUSED/MISSING' 999999='(999999) INAPP' ;
  VALUE b4bsntx   999997='(999997) DONT KNOW'
                  999998='(999998) REFUSED/MISSING' 999999='(999999) INAPP' ;
  VALUE b4bgluc   997='(997) DONT KNOW' 998='(998) REFUSED/MISSING'
                  999='(999) INAPP' ;
  VALUE b4binsln  997='(997) DONT KNOW' 998='(998) REFUSED/MISSING'
                  999='(999) INAPP' ;
  VALUE b4bigf1f  997='(997) DONT KNOW' 998='(998) REFUSED/MISSING'
                  999='(999) INAPP' ;
  VALUE b4bhomaf  997='(997) DON''T KNOW' 998='(998) REFUSED/MISSING'
                  999='(999) INAPP' ;
  VALUE b4zurine  1='(1) NO SAMPLE' 2='(2) PARTIAL' 3='(3) COMPLETE'
                  4='(4) OTHER' ;
  VALUE b4buprob  1='(1) YES' 2='(2) NO' 9='(9) INAPP' ;
  VALUE b4buvdyn  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4buvdn   97='(97) DON''T KNOW' 98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4burvol  9997='(9997) DON''T KNOW' 9998='(9998) REFUSED/MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4bcortl  997='(997) DONT KNOW' 998='(998) REFUSED/MISSING'
                  999='(999) INAPP' ;
  VALUE b4bcorto  997='(997) DONT KNOW' 998='(998) REFUSED/MISSING'
                  999='(999) INAPP' ;
  VALUE b4bucrea  997='(997) DONT KNOW' 998='(998) REFUSED/MISSING'
                  999='(999) INAPP' ;
  VALUE b4bclcre  99997='(99997) DONT KNOW' 99998='(99998) REFUSED/MISSING'
                  99999='(99999) INAPP' ;
  VALUE b4bcocre  997='(997) DONT KNOW' 998='(998) REFUSED/MISSING'
                  999='(999) INAPP' ;
  VALUE b4bnorep  9997='(9997) DON''T KNOW' 9998='(9998) REFUSED/MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4bepin   9997='(9997) DON''T KNOW' 9998='(9998) REFUSED/MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4bdopa   99997='(99997) DONT KNOW' 99998='(99998) REFUSED/MISSING'
                  99999='(99999) INAPP' ;
  VALUE b4bne12f  9999997='(9999997) DONT KNOW'
                  9999998='(9999998) REFUSED/MISSING'
                  9999999='(9999999) INAPP' ;
  VALUE b4bepi1f  9999997='(9999997) DONT KNOW'
                  9999998='(9999998) REFUSED/MISSING'
                  9999999='(9999999) INAPP' ;
  VALUE b4bdop1f  99999997='(99999997) DONT KNOW'
                  99999998='(99999998) REFUSED/MISSING'
                  99999999='(99999999) INAPP' ;
  VALUE b4bnocre  9999997='(9999997) DONT KNOW'
                  9999998='(9999998) REFUSED/MISSING'
                  9999999='(9999999) INAPP' ;
  VALUE b4bepcre  9999997='(9999997) DONT KNOW'
                  9999998='(9999998) REFUSED/MISSING'
                  9999999='(9999999) INAPP' ;
  VALUE b4bdocre  99999997='(99999997) DONT KNOW'
                  99999998='(99999998) REFUSED/MISSING'
                  99999999='(99999999) INAPP' ;
  VALUE b4bnecl   9997='(9997) DON''T KNOW' 9998='(9998) REFUSED/MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4bsucre  99997='(99997) DONT KNOW' 99998='(99998) REFUSED/MISSING'
                  99999='(99999) INAPP' ;
  VALUE b4bgfr    9999997='(9999997) DONT KNOW'
                  9999998='(9999998) REFUSED/MISSING'
                  9999999='(9999999) INAPP' ;
  VALUE b4zsaliv  1='(1) NO SAMPLE' 2='(2) PARTIAL' 3='(3) COMPLETE'
                  4='(4) OTHER' ;
  VALUE b4bscl1f  99997='(99997) DONT KNOW' 99998='(99998) REFUSED/MISSING'
                  99999='(99999) INAPP' ;
  VALUE b4bscl2f  99997='(99997) DONT KNOW' 99998='(99998) REFUSED/MISSING'
                  99999='(99999) INAPP' ;
  VALUE b4bscl3f  99997='(99997) DONT KNOW' 99998='(99998) REFUSED/MISSING'
                  99999='(99999) INAPP' ;
  VALUE b4bscl4f  99997='(99997) DONT KNOW' 99998='(99998) REFUSED/MISSING'
                  99999='(99999) INAPP' ;
  VALUE b4bsdup   1='(1) YES' 2='(2) NO' ;
  VALUE b4bscl0f  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4bscl5f  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4bscl6f  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4bscl7f  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4bscl1a  99997='(99997) DONT KNOW' 99998='(99998) REFUSED/MISSING'
                  99999='(99999) INAPP' ;
  VALUE b4bscl2a  99997='(99997) DONT KNOW' 99998='(99998) REFUSED/MISSING'
                  99999='(99999) INAPP' ;
  VALUE b4bscl3a  99997='(99997) DONT KNOW' 99998='(99998) REFUSED/MISSING'
                  99999='(99999) INAPP' ;
  VALUE b4bscl4a  99997='(99997) DONT KNOW' 99998='(99998) REFUSED/MISSING'
                  99999='(99999) INAPP' ;
  VALUE b4bscl8f  99997='(99997) DONT KNOW' 99998='(99998) REFUSED/MISSING'
                  99999='(99999) INAPP' ;
  VALUE b4awavl   1='(1) DIARY AND WATCH' 2='(2) DIARY ONLY'
                  3='(3) WATCH ONLY' 4='(4) NEITHER DIARY OR WATCH'
                  9='(9) NEVER BEEN ASKED' ;
  VALUE b4awimpu  1='(1) YES' 2='(2) NO' 9='(9) INAPP' ;
  VALUE b4awmark  1='(1) YES' 2='(2) NO' 9='(9) INAPP' ;
  VALUE b4awdays  9='(9) INAPP' ;
  VALUE b4awpart  1='(1) YES' 2='(2) NO' 9='(9) INAPP' ;
  VALUE b4awidio  1='(1) YES' 2='(2) NO' 9='(9) INAPP' ;
  VALUE b4awtmzn  1='(1) YES' 2='(2) NO' 9='(9) INAPP' ;
  VALUE b4awlag   99='(99) INAPP' ;
  VALUE b4awbgnm  1='(01) JANUARY' 2='(02) FEBRUARY' 3='(03) MARCH'
                  4='(04) APRIL' 5='(05) MAY' 6='(06) JUNE' 7='(07) JULY'
                  8='(08) AUGUST' 9='(09) SEPTEMBER' 10='(10) OCTOBER'
                  11='(11) NOVEMBER' 12='(12) DECEMBER' 99='(99) INAPP' ;
  VALUE b4awendm  1='(01) JANUARY' 2='(02) FEBRUARY' 3='(03) MARCH'
                  4='(04) APRIL' 5='(05) MAY' 6='(06) JUNE' 7='(07) JULY'
                  8='(08) AUGUST' 9='(09) SEPTEMBER' 10='(10) OCTOBER'
                  11='(11) NOVEMBER' 12='(12) DECEMBER' 99='(99) INAPP' ;
  VALUE b4ad11ff  1='(1) MOST ALERT' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) NOT ALERT AT ALL' 7='(7) DON''T KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad12ff  9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4ad13ff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4ad13s   9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4ad14ff  9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4ad15ff  9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4ad16ff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4ad16m   1='(01) PAIN RELIEVER' 2='(02) ANTI-INFECTIVE'
                  3='(03) DECONGESTANT' 4='(04) COUGH/COLD MED'
                  5='(05) ANTIHISTAMINE' 6='(06) ANTACID'
                  7='(07) CATHARTIC/LAXATIVE' 8='(08) ANTIDEPRESSANT'
                  9='(09) SLEEPING AID' 10='(10) SUPPLEMENT/ALT MED'
                  11='(11) OTHER' 97='(97) DON''T KNOW' 98='(98) MISSING'
                  99='(99) INAPP' ;
  VALUE b4ad17ff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4ad17m   1='(1) PRESCRIBED SLEEP AID' 2='(2) OTC SLEEP AID'
                  3='(3) OTC PAIN MED' 4='(4) ALT SLEEP AID' 5='(5) OTHER'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad18a   1='(1) AM' 2='(2) PM' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad19ff  9996='(9996) DID NOT SLEEP' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4ad110f  1='(1) VERY EASY' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) VERY DIFFICULT' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad111f  96='(96) UP ALL NIGHT' 97='(97) DON''T KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ad112f  1='(1) YES' 2='(2) NO' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad113f  1='(1) YES' 2='(2) NO' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad114f  96='(96) DID NOT SLEEP' 97='(97) DON''T KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ad115a  1='(1) AM' 2='(2) PM' 6='(6) DID NOT WAKE UP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad116a  1='(1) AM' 2='(2) PM' 6='(6) DID NOT GET OUT OF BED'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad117f  1='(1) VERY DEEPLY' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) VERY LIGHTLY' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad118f  1='(1) WELL RESTED' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) POORLY RESTED' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad119f  1='(1) VERY ALERT' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) NOT ALERT AT ALL' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad120f  1='(1) VERY GOOD' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) VERY POOR' 6='(6) DID NOT SLEEP' 7='(7) DON''T KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad21ff  1='(1) MOST ALERT' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) NOT ALERT AT ALL' 7='(7) DON''T KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad22ff  9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4ad23ff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4ad23s   9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4ad24ff  9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4ad25ff  9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4ad26ff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4ad26m   1='(01) PAIN RELIEVER' 2='(02) ANTI-INFECTIVE'
                  3='(03) DECONGESTANT' 4='(04) COUGH/COLD MED'
                  5='(05) ANTIHISTAMINE' 6='(06) ANTACID'
                  7='(07) CATHARTIC/LAXATIVE' 8='(08) ANTIDEPRESSANT'
                  9='(09) SLEEPING AID' 10='(10) SUPPLEMENT/ALT MED'
                  11='(11) OTHER' 97='(97) DON''T KNOW' 98='(98) MISSING'
                  99='(99) INAPP' ;
  VALUE b4ad27ff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4ad27m   1='(1) PRESCRIBED SLEEP AID' 2='(2) OTC SLEEP AID'
                  3='(3) OTC PAIN MED' 4='(4) ALT SLEEP AID' 5='(5) OTHER'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad28a   1='(1) AM' 2='(2) PM' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad29ff  9996='(9996) DID NOT SLEEP' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4ad210f  1='(1) VERY EASY' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) VERY DIFFICULT' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad211f  96='(96) UP ALL NIGHT' 97='(97) DON''T KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ad212f  1='(1) YES' 2='(2) NO' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad213f  1='(1) YES' 2='(2) NO' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad214f  96='(96) DID NOT SLEEP' 97='(97) DON''T KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ad215a  1='(1) AM' 2='(2) PM' 6='(6) DID NOT WAKE UP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad216a  1='(1) AM' 2='(2) PM' 6='(6) DID NOT GET OUT OF BED'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad217f  1='(1) VERY DEEPLY' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) VERY LIGHTLY' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad218f  1='(1) WELL RESTED' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) POORLY RESTED' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad219f  1='(1) VERY ALERT' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) NOT ALERT AT ALL' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad220f  1='(1) VERY GOOD' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) VERY POOR' 6='(6) DID NOT SLEEP' 7='(7) DON''T KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad31ff  1='(1) MOST ALERT' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) NOT ALERT AT ALL' 7='(7) DON''T KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad32ff  9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4ad33ff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4ad33s   9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4ad34ff  9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4ad35ff  9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4ad36ff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4ad36m   1='(01) PAIN RELIEVER' 2='(02) ANTI-INFECTIVE'
                  3='(03) DECONGESTANT' 4='(04) COUGH/COLD MED'
                  5='(05) ANTIHISTAMINE' 6='(06) ANTACID'
                  7='(07) CATHARTIC/LAXATIVE' 8='(08) ANTIDEPRESSANT'
                  9='(09) SLEEPING AID' 10='(10) SUPPLEMENT/ALT MED'
                  11='(11) OTHER' 97='(97) DON''T KNOW' 98='(98) MISSING'
                  99='(99) INAPP' ;
  VALUE b4ad37ff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4ad37m   1='(1) PRESCRIBED SLEEP AID' 2='(2) OTC SLEEP AID'
                  3='(3) OTC PAIN MED' 4='(4) ALT SLEEP AID' 5='(5) OTHER'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad38a   1='(1) AM' 2='(2) PM' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad39ff  9996='(9996) DID NOT SLEEP' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4ad310f  1='(1) VERY EASY' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) VERY DIFFICULT' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad311f  96='(96) UP ALL NIGHT' 97='(97) DON''T KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ad312f  1='(1) YES' 2='(2) NO' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad313f  1='(1) YES' 2='(2) NO' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad314f  96='(96) DID NOT SLEEP' 97='(97) DON''T KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ad315a  1='(1) AM' 2='(2) PM' 6='(6) DID NOT WAKE UP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad316a  1='(1) AM' 2='(2) PM' 6='(6) DID NOT GET OUT OF BED'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad317f  1='(1) VERY DEEPLY' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) VERY LIGHTLY' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad318f  1='(1) WELL RESTED' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) POORLY RESTED' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad319f  1='(1) VERY ALERT' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) NOT ALERT AT ALL' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad320f  1='(1) VERY GOOD' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) VERY POOR' 6='(6) DID NOT SLEEP' 7='(7) DON''T KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad41ff  1='(1) MOST ALERT' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) NOT ALERT AT ALL' 7='(7) DON''T KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad42ff  9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4ad43ff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4ad43s   9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4ad44ff  9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4ad45ff  9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4ad46ff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4ad46m   1='(01) PAIN RELIEVER' 2='(02) ANTI-INFECTIVE'
                  3='(03) DECONGESTANT' 4='(04) COUGH/COLD MED'
                  5='(05) ANTIHISTAMINE' 6='(06) ANTACID'
                  7='(07) CATHARTIC/LAXATIVE' 8='(08) ANTIDEPRESSANT'
                  9='(09) SLEEPING AID' 10='(10) SUPPLEMENT/ALT MED'
                  11='(11) OTHER' 97='(97) DON''T KNOW' 98='(98) MISSING'
                  99='(99) INAPP' ;
  VALUE b4ad47ff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4ad47m   1='(1) PRESCRIBED SLEEP AID' 2='(2) OTC SLEEP AID'
                  3='(3) OTC PAIN MED' 4='(4) ALT SLEEP AID' 5='(5) OTHER'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad48a   1='(1) AM' 2='(2) PM' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad49ff  9996='(9996) DID NOT SLEEP' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4ad410f  1='(1) VERY EASY' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) VERY DIFFICULT' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad411f  96='(96) UP ALL NIGHT' 97='(97) DON''T KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ad412f  1='(1) YES' 2='(2) NO' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad413f  1='(1) YES' 2='(2) NO' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad414f  96='(96) DID NOT SLEEP' 97='(97) DON''T KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ad415a  1='(1) AM' 2='(2) PM' 6='(6) DID NOT WAKE UP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad416a  1='(1) AM' 2='(2) PM' 6='(6) DID NOT GET OUT OF BED'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad417f  1='(1) VERY DEEPLY' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) VERY LIGHTLY' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad418f  1='(1) WELL RESTED' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) POORLY RESTED' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad419f  1='(1) VERY ALERT' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) NOT ALERT AT ALL' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad420f  1='(1) VERY GOOD' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) VERY POOR' 6='(6) DID NOT SLEEP' 7='(7) DON''T KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad51ff  1='(1) MOST ALERT' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) NOT ALERT AT ALL' 7='(7) DON''T KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad52ff  9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4ad53ff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4ad53s   9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4ad54ff  9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4ad55ff  9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4ad56ff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4ad56m   1='(01) PAIN RELIEVER' 2='(02) ANTI-INFECTIVE'
                  3='(03) DECONGESTANT' 4='(04) COUGH/COLD MED'
                  5='(05) ANTIHISTAMINE' 6='(06) ANTACID'
                  7='(07) CATHARTIC/LAXATIVE' 8='(08) ANTIDEPRESSANT'
                  9='(09) SLEEPING AID' 10='(10) SUPPLEMENT/ALT MED'
                  11='(11) OTHER' 97='(97) DON''T KNOW' 98='(98) MISSING'
                  99='(99) INAPP' ;
  VALUE b4ad57ff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4ad57m   1='(1) PRESCRIBED SLEEP AID' 2='(2) OTC SLEEP AID'
                  3='(3) OTC PAIN MED' 4='(4) ALT SLEEP AID' 5='(5) OTHER'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad58a   1='(1) AM' 2='(2) PM' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad59ff  9996='(9996) DID NOT SLEEP' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4ad510f  1='(1) VERY EASY' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) VERY DIFFICULT' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad511f  96='(96) UP ALL NIGHT' 97='(97) DON''T KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ad512f  1='(1) YES' 2='(2) NO' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad513f  1='(1) YES' 2='(2) NO' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad514f  96='(96) DID NOT SLEEP' 97='(97) DON''T KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ad515a  1='(1) AM' 2='(2) PM' 6='(6) DID NOT WAKE UP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad516a  1='(1) AM' 2='(2) PM' 6='(6) DID NOT GET OUT OF BED'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad517f  1='(1) VERY DEEPLY' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) VERY LIGHTLY' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad518f  1='(1) WELL RESTED' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) POORLY RESTED' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad519f  1='(1) VERY ALERT' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) NOT ALERT AT ALL' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad520f  1='(1) VERY GOOD' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) VERY POOR' 6='(6) DID NOT SLEEP' 7='(7) DON''T KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad61ff  1='(1) MOST ALERT' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) NOT ALERT AT ALL' 7='(7) DON''T KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad62ff  9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4ad63ff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4ad63s   9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4ad64ff  9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4ad65ff  9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4ad66ff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4ad66m   1='(01) PAIN RELIEVER' 2='(02) ANTI-INFECTIVE'
                  3='(03) DECONGESTANT' 4='(04) COUGH/COLD MED'
                  5='(05) ANTIHISTAMINE' 6='(06) ANTACID'
                  7='(07) CATHARTIC/LAXATIVE' 8='(08) ANTIDEPRESSANT'
                  9='(09) SLEEPING AID' 10='(10) SUPPLEMENT/ALT MED'
                  11='(11) OTHER' 97='(97) DON''T KNOW' 98='(98) MISSING'
                  99='(99) INAPP' ;
  VALUE b4ad67ff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4ad67m   1='(1) PRESCRIBED SLEEP AID' 2='(2) OTC SLEEP AID'
                  3='(3) OTC PAIN MED' 4='(4) ALT SLEEP AID' 5='(5) OTHER'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad68a   1='(1) AM' 2='(2) PM' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad69ff  9996='(9996) DID NOT SLEEP' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4ad610f  1='(1) VERY EASY' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) VERY DIFFICULT' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad611f  96='(96) UP ALL NIGHT' 97='(97) DON''T KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ad612f  1='(1) YES' 2='(2) NO' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad613f  1='(1) YES' 2='(2) NO' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad614f  96='(96) DID NOT SLEEP' 97='(97) DON''T KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ad615a  1='(1) AM' 2='(2) PM' 6='(6) DID NOT WAKE UP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad616a  1='(1) AM' 2='(2) PM' 6='(6) DID NOT GET OUT OF BED'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad617f  1='(1) VERY DEEPLY' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) VERY LIGHTLY' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad618f  1='(1) WELL RESTED' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) POORLY RESTED' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad619f  1='(1) VERY ALERT' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) NOT ALERT AT ALL' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad620f  1='(1) VERY GOOD' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) VERY POOR' 6='(6) DID NOT SLEEP' 7='(7) DON''T KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad71ff  1='(1) MOST ALERT' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) NOT ALERT AT ALL' 7='(7) DON''T KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad72ff  9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4ad73ff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4ad73s   9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4ad74ff  9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4ad75ff  9997='(9997) DON''T KNOW' 9998='(9998) MISSING'
                  9999='(9999) INAPP' ;
  VALUE b4ad76ff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4ad76m   1='(01) PAIN RELIEVER' 2='(02) ANTI-INFECTIVE'
                  3='(03) DECONGESTANT' 4='(04) COUGH/COLD MED'
                  5='(05) ANTIHISTAMINE' 6='(06) ANTACID'
                  7='(07) CATHARTIC/LAXATIVE' 8='(08) ANTIDEPRESSANT'
                  9='(09) SLEEPING AID' 10='(10) SUPPLEMENT/ALT MED'
                  11='(11) OTHER' 97='(97) DON''T KNOW' 98='(98) MISSING'
                  99='(99) INAPP' ;
  VALUE b4ad77ff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) MISSING'
                  9='(9) INAPP' ;
  VALUE b4ad77m   1='(1) PRESCRIBED SLEEP AID' 2='(2) OTC SLEEP AID'
                  3='(3) OTC PAIN MED' 4='(4) ALT SLEEP AID' 5='(5) OTHER'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad78a   1='(1) AM' 2='(2) PM' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad79ff  9996='(9996) DID NOT SLEEP' 9997='(9997) DON''T KNOW'
                  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4ad710f  1='(1) VERY EASY' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) VERY DIFFICULT' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad711f  96='(96) UP ALL NIGHT' 97='(97) DON''T KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ad712f  1='(1) YES' 2='(2) NO' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad713f  1='(1) YES' 2='(2) NO' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad714f  96='(96) DID NOT SLEEP' 97='(97) DON''T KNOW'
                  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ad715a  1='(1) AM' 2='(2) PM' 6='(6) DID NOT WAKE UP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad716a  1='(1) AM' 2='(2) PM' 6='(6) DID NOT GET OUT OF BED'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad717f  1='(1) VERY DEEPLY' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) VERY LIGHTLY' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad718f  1='(1) WELL RESTED' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) POORLY RESTED' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad719f  1='(1) VERY ALERT' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) NOT ALERT AT ALL' 6='(6) DID NOT SLEEP'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4ad720f  1='(1) VERY GOOD' 2='(2) 2' 3='(3) 3' 4='(4) 4'
                  5='(5) VERY POOR' 6='(6) DID NOT SLEEP' 7='(7) DON''T KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4wr1tac  999998='(999998) MISSING' 999999='(999999) INAPP' ;
  VALUE b4wr1acm  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr1mac  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4wr1iac  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4wr1sw   98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4wr1wt   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr1pw   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr1wb   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr1awb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr1slt  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4wr1psl  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr1slb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr1asb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws1tac  999998='(999998) MISSING' 999999='(999999) INAPP' ;
  VALUE b4ws1acm  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws1mac  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4ws1iac  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ws1isw  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ws1ol   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws1snt  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws1eff  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws1wso  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws1wt   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws1pw   98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ws1wb   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws1awb  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ws1slt  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4ws1psl  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws1slb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws1asb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wa1tac  9999998='(9999998) MISSING' 9999999='(9999999) INAPP' ;
  VALUE b4wa1acm  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4wa1mac  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4wa1iac  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4wa1isw  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4wa1wt   9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4wa1pw   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wa1wb   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wa1awb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wa1slt  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wa1psl  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4wa1slb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wa1asb  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4wr2tac  999998='(999998) MISSING' 999999='(999999) INAPP' ;
  VALUE b4wr2acm  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr2mac  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4wr2iac  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4wr2sw   98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4wr2wt   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr2pw   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr2wb   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr2awb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr2slt  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4wr2psl  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr2slb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr2asb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws2tac  999998='(999998) MISSING' 999999='(999999) INAPP' ;
  VALUE b4ws2acm  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws2mac  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4ws2iac  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ws2isw  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ws2ol   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws2snt  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws2eff  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws2wso  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws2wt   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws2pw   98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ws2wb   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws2awb  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ws2slt  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4ws2psl  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws2slb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws2asb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wa2tac  9999998='(9999998) MISSING' 9999999='(9999999) INAPP' ;
  VALUE b4wa2acm  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4wa2mac  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4wa2iac  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4wa2isw  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4wa2wt   9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4wa2pw   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wa2wb   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wa2awb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wa2slt  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wa2psl  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4wa2slb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wa2asb  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4wr3tac  999998='(999998) MISSING' 999999='(999999) INAPP' ;
  VALUE b4wr3acm  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr3mac  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4wr3iac  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4wr3sw   98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4wr3wt   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr3pw   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr3wb   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr3awb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr3slt  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4wr3psl  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr3slb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr3asb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws3tac  999998='(999998) MISSING' 999999='(999999) INAPP' ;
  VALUE b4ws3acm  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws3mac  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4ws3iac  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ws3isw  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ws3ol   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws3snt  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws3eff  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws3wso  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws3wt   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws3pw   98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ws3wb   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws3awb  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ws3slt  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4ws3psl  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws3slb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws3asb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wa3tac  9999998='(9999998) MISSING' 9999999='(9999999) INAPP' ;
  VALUE b4wa3acm  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4wa3mac  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4wa3iac  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4wa3isw  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4wa3wt   9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4wa3pw   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wa3wb   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wa3awb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wa3slt  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wa3psl  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4wa3slb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wa3asb  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4wr4tac  999998='(999998) MISSING' 999999='(999999) INAPP' ;
  VALUE b4wr4acm  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr4mac  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4wr4iac  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4wr4sw   98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4wr4wt   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr4pw   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr4wb   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr4awb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr4slt  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4wr4psl  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr4slb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr4asb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws4tac  999998='(999998) MISSING' 999999='(999999) INAPP' ;
  VALUE b4ws4acm  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws4mac  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4ws4iac  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ws4isw  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ws4ol   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws4snt  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws4eff  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws4wso  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws4wt   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws4pw   98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ws4wb   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws4awb  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ws4slt  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4ws4psl  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws4slb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws4asb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wa4tac  9999998='(9999998) MISSING' 9999999='(9999999) INAPP' ;
  VALUE b4wa4acm  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4wa4mac  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4wa4iac  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4wa4isw  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4wa4wt   9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4wa4pw   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wa4wb   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wa4awb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wa4slt  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wa4psl  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4wa4slb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wa4asb  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4wr5tac  999998='(999998) MISSING' 999999='(999999) INAPP' ;
  VALUE b4wr5acm  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr5mac  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4wr5iac  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4wr5sw   98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4wr5wt   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr5pw   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr5wb   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr5awb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr5slt  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4wr5psl  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr5slb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr5asb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws5tac  999998='(999998) MISSING' 999999='(999999) INAPP' ;
  VALUE b4ws5acm  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws5mac  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4ws5iac  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ws5isw  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ws5ol   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws5snt  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws5eff  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws5wso  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws5wt   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws5pw   98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ws5wb   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws5awb  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ws5slt  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4ws5psl  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws5slb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws5asb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wa5tac  9999998='(9999998) MISSING' 9999999='(9999999) INAPP' ;
  VALUE b4wa5acm  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4wa5mac  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4wa5iac  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4wa5isw  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4wa5wt   9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4wa5pw   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wa5wb   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wa5awb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wa5slt  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wa5psl  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4wa5slb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wa5asb  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4wr6tac  999998='(999998) MISSING' 999999='(999999) INAPP' ;
  VALUE b4wr6acm  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr6mac  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4wr6iac  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4wr6sw   98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4wr6wt   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr6pw   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr6wb   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr6awb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr6slt  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4wr6psl  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr6slb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr6asb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws6tac  999998='(999998) MISSING' 999999='(999999) INAPP' ;
  VALUE b4ws6acm  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws6mac  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4ws6iac  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ws6isw  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ws6ol   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws6snt  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws6eff  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws6wso  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws6wt   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws6pw   98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ws6wb   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws6awb  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ws6slt  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4ws6psl  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws6slb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws6asb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wa6tac  9999998='(9999998) MISSING' 9999999='(9999999) INAPP' ;
  VALUE b4wa6acm  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4wa6mac  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4wa6iac  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4wa6isw  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4wa6wt   9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4wa6pw   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wa6wb   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wa6awb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wa6slt  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wa6psl  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4wa6slb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wa6asb  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4wr7tac  999998='(999998) MISSING' 999999='(999999) INAPP' ;
  VALUE b4wr7acm  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr7mac  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4wr7iac  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4wr7sw   98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4wr7wt   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr7pw   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr7wb   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr7awb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr7slt  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4wr7psl  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr7slb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4wr7asb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws7tac  999998='(999998) MISSING' 999999='(999999) INAPP' ;
  VALUE b4ws7acm  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws7mac  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4ws7iac  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ws7isw  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ws7ol   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws7snt  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws7eff  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws7wso  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws7wt   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws7pw   98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ws7wb   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws7awb  98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4ws7slt  9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4ws7psl  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws7slb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4ws7asb  998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4vhawr   1='(1) STRONGLY LEFT HAND' 2='(2) LEFT HAND'
                  3='(3) EITHER HAND OR BOTH HANDS' 4='(4) RIGHT HAND'
                  5='(5) STRONGLY RIGHT HAND' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4vhadw   1='(1) STRONGLY LEFT HAND' 2='(2) LEFT HAND'
                  3='(3) EITHER HAND OR BOTH HANDS' 4='(4) RIGHT HAND'
                  5='(5) STRONGLY RIGHT HAND' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4vhath   1='(1) STRONGLY LEFT HAND' 2='(2) LEFT HAND'
                  3='(3) EITHER HAND OR BOTH HANDS' 4='(4) RIGHT HAND'
                  5='(5) STRONGLY RIGHT HAND' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4vhasc   1='(1) STRONGLY LEFT HAND' 2='(2) LEFT HAND'
                  3='(3) EITHER HAND OR BOTH HANDS' 4='(4) RIGHT HAND'
                  5='(5) STRONGLY RIGHT HAND' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4vhato   1='(1) STRONGLY LEFT HAND' 2='(2) LEFT HAND'
                  3='(3) EITHER HAND OR BOTH HANDS' 4='(4) RIGHT HAND'
                  5='(5) STRONGLY RIGHT HAND' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4vhakn   1='(1) STRONGLY LEFT HAND' 2='(2) LEFT HAND'
                  3='(3) EITHER HAND OR BOTH HANDS' 4='(4) RIGHT HAND'
                  5='(5) STRONGLY RIGHT HAND' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4vhasp   1='(1) STRONGLY LEFT HAND' 2='(2) LEFT HAND'
                  3='(3) EITHER HAND OR BOTH HANDS' 4='(4) RIGHT HAND'
                  5='(5) STRONGLY RIGHT HAND' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4vhabr   1='(1) STRONGLY LEFT HAND' 2='(2) LEFT HAND'
                  3='(3) EITHER HAND OR BOTH HANDS' 4='(4) RIGHT HAND'
                  5='(5) STRONGLY RIGHT HAND' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4vhasm   1='(1) STRONGLY LEFT HAND' 2='(2) LEFT HAND'
                  3='(3) EITHER HAND OR BOTH HANDS' 4='(4) RIGHT HAND'
                  5='(5) STRONGLY RIGHT HAND' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4vhaob   1='(1) STRONGLY LEFT HAND' 2='(2) LEFT HAND'
                  3='(3) EITHER HAND OR BOTH HANDS' 4='(4) RIGHT HAND'
                  5='(5) STRONGLY RIGHT HAND' 7='(7) DONT KNOW'
                  8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4vhaki   1='(1) STRONGLY LEFT FOOT' 2='(2) LEFT FOOT'
                  3='(3) EITHER FOOT' 4='(4) RIGHT FOOT'
                  5='(5) STRONGLY RIGHT FOOT' ;
  VALUE b4vhaoe   1='(1) STRONGLY LEFT EYE' 2='(2) LEFT EYE'
                  3='(3) EITHER EYE' 4='(4) RIGHT EYE'
                  5='(5) STRONGLY RIGHT EYE' ;
  VALUE b4vhalt   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4vhart   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4vhalq   998='(998) MISSING' 999='(999) INAPP' ;
  VALUE b4vhadz   0='(0) LQ=0, L & R HANDS EQUAL' 98='(98) MISSING'
                  99='(99) INAPP' ;
  VALUE b4vhadr   98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4vhadl   98='(98) MISSING' 99='(99) INAPP' ;
  VALUE b4vateh   9999='(9999) INAPP' ;
  VALUE b4vcafh   9999='(9999) INAPP' ;
  VALUE b4vcigh   9999='(9999) INAPP' ;
  VALUE b4vclb    1='(1) YES' 2='(2) NO' 7='(7) DONT KNOW'
                  8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b4vclbt   1='(1) RED-GREEN' 2='(2) BLUE-GREEN' 3='(3) OTHER'
                  7='(7) DON''T KNOW' 8='(8) MISSING' 9='(9) INAPP' ;
  VALUE b4vcirc   1='(1) YES' 2='(2) NO' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b4vlc     1='(1) UPPER RIGHT & UPPER LEFT'
                  2='(2) UPPER RIGHT & LOWER LEFT' 3='(3) OTHER'
                  8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b4vsrb1f  1='(01) NOT STRESSED AT ALL' 10='(10) EXTREMELY STRESSED'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b4vcs1ff  1='(1) MATH' 2='(2) STROOP' 3='(3) PASAT'
                  8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b4vsrcsf  1='(01) NOT STRESSED AT ALL' 10='(10) EXTREMELY STRESSED'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b4vsrr1f  1='(01) NOT STRESSED AT ALL' 10='(10) EXTREMELY STRESSED'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b4vcs2ff  1='(1) MATH' 2='(2) STROOP' 3='(3) PASAT'
                  8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b4vsrc0f  1='(01) NOT STRESSED AT ALL' 10='(10) EXTREMELY STRESSED'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b4vsrr2f  1='(01) NOT STRESSED AT ALL' 10='(10) EXTREMELY STRESSED'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b4vsru1f  1='(01) NOT STRESSED AT ALL' 10='(10) EXTREMELY STRESSED'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b4vsts1f  998='(998) MISSING' ;
  VALUE b4vs1s2f  998='(998) MISSING' ;
  VALUE b4vs2s3f  998='(998) MISSING' ;
  VALUE b4vs3s4f  998='(998) MISSING' ;
  VALUE b4zpphys  1='(01) NO' 2='(02) BASELINE ONLY' 3='(03) S1 PASAT'
                  4='(04) S1 STROOP' 5='(05) S2 PASAT' 6='(06) S2 STROOP'
                  7='(07) COMPLETE' 8='(08) OTHER' 9='(09) S1 MATH'
                  10='(10) S2 MATH' ;
  VALUE b4zphysd  1='(1) NONE' 2='(2) NO BP' 3='(3) NO RESIRATION'
                  4='(4) NO ECG' 5='(5) ALL' 6='(6) OTHER' ;
  VALUE b4vterm   1='(1) YES TERMINATED' 2='(2) NOT TERMINATED'
                  3='(3) SESSION NOT RUN' ;
  VALUE b4vpacem  0='(0) NO PACEMAKER' 1='(1) HAS PACEMAKER' ;
  VALUE b4vppss   1='(1) COMPLETE' 2='(2) INCOMPLETE: PHYS'
                  3='(3) INCOMPLETE: TECH' 4='(4) NOT RUN' ;
  VALUE b4vppsr   1='(1) PP SUCCESSFUL' 2='(2) HI/LO BP'
                  3='(3) PHYS DISCOMFORT' 4='(4) PHYS INCOMPETENCE'
                  5='(5) MED CONDITION' 6='(6) EQUIP: ECG/OTHER'
                  7='(7) EQUIP: FINOMETER' 8='(8) EQUIP: OTHER' 9='(9) OTHER' ;
  VALUE b4vbeq    1='(1) EXCELLENT' 2='(2) GOOD' 3='(3) SCOREABLE'
                  4='(4) UNSCOREABLE' 5='(5) NO DATA' ;
  VALUE b4vbeqr   1='(1) CLEAN/CLEAR SIGNAL' 2='(2) NOISY BASELINE'
                  3='(3) ABERRANT BEATS' 4='(4) BAD INTERVALS'
                  5='(5) NO DATA' 6='(6) OTHER' ;
  VALUE b4vmeq    1='(1) EXCELLENT' 2='(2) GOOD' 3='(3) SCOREABLE'
                  4='(4) UNSCOREABLE' 5='(5) NO DATA' ;
  VALUE b4vmeqr   1='(1) CLEAN/CLEAR SIGNAL' 2='(2) NOISY BASELINE'
                  3='(3) ABERRANT BEATS' 4='(4) BAD INTERVALS'
                  5='(5) NO DATA' 6='(6) OTHER' ;
  VALUE b4vpeq    1='(1) EXCELLENT' 2='(2) GOOD' 3='(3) SCOREABLE'
                  4='(4) UNSCOREABLE' 5='(5) NO DATA' ;
  VALUE b4vpeqr   1='(1) CLEAN/CLEAR SIGNAL' 2='(2) NOISY BASELINE'
                  3='(3) ABERRANT BEATS' 4='(4) BAD INTERVALS'
                  5='(5) NO DATA' 6='(6) OTHER' ;
  VALUE b4vseq    1='(1) EXCELLENT' 2='(2) GOOD' 3='(3) SCOREABLE'
                  4='(4) UNSCOREABLE' 5='(5) NO DATA' ;
  VALUE b4vseqr   1='(1) CLEAN/CLEAR SIGNAL' 2='(2) NOISY BASELINE'
                  3='(3) ABERRANT BEATS' 4='(4) BAD INTERVALS'
                  5='(5) NO DATA' 6='(6) OTHER' ;
  VALUE b4vr1eq   1='(1) EXCELLENT' 2='(2) GOOD' 3='(3) SCOREABLE'
                  4='(4) UNSCOREABLE' 5='(5) NO DATA' ;
  VALUE b4vr1eqr  1='(1) CLEAN/CLEAR SIGNAL' 2='(2) NOISY BASELINE'
                  3='(3) ABERRANT BEATS' 4='(4) BAD INTERVALS'
                  5='(5) NO DATA' 6='(6) OTHER' ;
  VALUE b4vr2eq   1='(1) EXCELLENT' 2='(2) GOOD' 3='(3) SCOREABLE'
                  4='(4) UNSCOREABLE' 5='(5) NO DATA' ;
  VALUE b4vr2eqr  1='(1) CLEAN/CLEAR SIGNAL' 2='(2) NOISY BASELINE'
                  3='(3) ABERRANT BEATS' 4='(4) BAD INTERVALS'
                  5='(5) NO DATA' 6='(6) OTHER' ;
  VALUE b4vueq    1='(1) EXCELLENT' 2='(2) GOOD' 3='(3) SCOREABLE'
                  4='(4) UNSCOREABLE' 5='(5) NO DATA' ;
  VALUE b4vueqr   1='(1) CLEAN/CLEAR SIGNAL' 2='(2) NOISY BASELINE'
                  3='(3) ABERRANT BEATS' 4='(4) BAD INTERVALS'
                  5='(5) NO DATA' 6='(6) OTHER' ;
  VALUE b4vb1du   9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4vb1beg  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vb1end  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vb1max  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vb1nu   9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4vb1hr   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vb1sd   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vb1lsd  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vb1rm   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vb1lrm  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vb1lf   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vb1llf  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vb1hf   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vb1lhf  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vb2du   9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4vb2beg  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vb2end  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vb2max  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vb2nu   9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4vb2hr   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vb2sd   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vb2lsd  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vb2rm   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vb2lrm  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vb2lf   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vb2llf  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vb2hf   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vb2lhf  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vm1du   9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4vm1beg  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vm1end  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vm1max  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vm1nu   9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4vm1hr   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vm1sd   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vm1lsd  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vm1rm   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vm1lrm  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vm1lf   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vm1llf  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vm1hf   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vm1lhf  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vp1du   9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4vp1beg  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vp1end  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vp1max  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vp1nu   9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4vp1hr   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vp1sd   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vp1lsd  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vp1rm   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vp1lrm  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vp1lf   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vp1llf  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vp1hf   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vp1lhf  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vp2du   9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4vp2beg  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vp2end  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vp2max  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vp2nu   9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4vp2hr   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vp2sd   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vp2lsd  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vp2rm   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vp2lrm  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vp2lf   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vp2llf  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vp2hf   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vp2lhf  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vr1du   9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4vr1beg  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vr1end  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vr1max  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vr1nu   9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4vr1hr   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vr1sd   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vr1lsd  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vr1rm   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vr1lrm  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vr1lf   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vr1llf  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vr1hf   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vr1lhf  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vr2du   9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4vr2beg  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vr2end  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vr2max  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vr2nu   9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4vr2hr   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vr2sd   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vr2lsd  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vr2rm   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vr2lrm  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vr2lf   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vr2llf  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vr2hf   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vr2lhf  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vs1du   9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4vs1beg  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vs1end  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vs1max  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vs1nu   9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4vs1hr   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vs1sd   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vs1lsd  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vs1rm   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vs1lrm  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vs1lf   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vs1llf  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vs1hf   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vs1lhf  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vs2du   9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4vs2beg  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vs2end  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vs2max  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vs2nu   9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4vs2hr   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vs2sd   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vs2lsd  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vs2rm   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vs2lrm  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vs2lf   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vs2llf  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vs2hf   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vs2lhf  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vu1du   9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4vu1beg  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vu1end  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vu1max  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vu1nu   9998='(9998) MISSING' 9999='(9999) INAPP' ;
  VALUE b4vu1hr   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vu1sd   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vu1lsd  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vu1rm   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vu1lrm  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vu1lf   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vu1llf  99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vu1hf   99998='(99998) MISSING' 99999='(99999) INAPP' ;
  VALUE b4vu1lhf  99998='(99998) MISSING' 99999='(99999) INAPP' ;
*/


* SAS DATA, INFILE, INPUT STATEMENTS;

DATA;
INFILE "data-filename" LRECL=8544;
INPUT
       M2ID 1-5                M2FAMNUM 6-11
        SAMPLMAJ 12-19          B1PAGE_M2 20-24         B1PGENDER 25-32
        B4ZSITE 33              B4ZCOMPM 34-35          B4ZCOMPY 36-39
        B4ZRZONE 40             B4ZSZONE 41             B4ZB1PLG 42-43
        B4ZB1SLG 44-45          B4ZB1CLG 46-47          B4ZAGE 48-49
        B4Q1A 50                B4Q1B 51                B4Q1C 52
        B4Q1D 53                B4Q1E 54                B4Q1F 55
        B4Q1G 56                B4Q1H 57                B4Q1I 58
        B4Q1J 59                B4Q1K 60                B4Q1L 61
        B4Q1M 62                B4Q1N 63                B4Q1O 64
        B4Q1P 65                B4Q1Q 66                B4Q1R 67
        B4Q1S 68                B4Q1T 69                B4Q1U 70
        B4Q1V 71                B4Q1W 72                B4Q1X 73
        B4Q1Y 74                B4Q1Z 75                B4Q1AA 76
        B4Q1BB 77               B4Q1CC 78               B4Q1DD 79
        B4Q1EE 80               B4Q1FF 81               B4Q1GG 82
        B4Q1HH 83               B4Q1II 84               B4Q1JJ 85
        B4Q1KK 86               B4Q1LL 87               B4Q1MM 88
        B4Q1NN 89               B4Q1OO 90               B4Q1PP 91
        B4Q1QQ 92               B4Q1RR 93               B4Q1SS 94
        B4Q1TT 95               B4Q1UU 96               B4Q1VV 97
        B4Q1WW 98               B4Q1XX 99               B4Q1YY 100
        B4Q1ZZ 101              B4Q1AAA 102             B4Q1BBB 103
        B4Q1CCC 104             B4Q1DDD 105             B4Q1EEE 106
        B4Q1FFF 107             B4Q1GGG 108             B4Q1HHH 109
        B4Q1III 110             B4Q1JJJ 111             B4Q1KKK 112
        B4Q1LLL 113             B4QMA_D 114-117 .1      B4QMA_A 118-121 .1
        B4QMA_LI 122-125 .1     B4QMA_AA 126-129 .1     B4QMA_PA 130-133 .1
        B4Q2 134-135            B4Q3A 136               B4Q3B 137
        B4Q3C 138               B4Q3D 139               B4Q3E 140
        B4Q3F 141               B4Q3G 142               B4Q3H 143
        B4Q3I 144               B4Q3J 145               B4Q3K 146
        B4Q3L 147               B4Q3M 148               B4Q3N 149
        B4Q3O 150               B4Q3P 151               B4Q3Q 152
        B4Q3R 153               B4Q3S 154               B4Q3T 155
        B4QCESD 156-159 .1      B4Q4A 160               B4Q4B 161
        B4Q4C 162               B4Q4D 163               B4Q4E 164
        B4Q4F 165               B4Q4G 166               B4Q4H 167
        B4Q4I 168               B4Q4J 169               B4QPS_PS 170-173 .1
        B4Q5A 174               B4Q5B 175               B4Q5C 176
        B4Q5D 177               B4Q5E 178               B4Q5F 179
        B4Q5G 180               B4Q5H 181               B4Q5I 182
        B4Q5J 183               B4Q5K 184               B4Q5L 185
        B4Q5M 186               B4Q5N 187               B4Q5O 188
        B4Q5P 189               B4Q5Q 190               B4Q5R 191
        B4Q5S 192               B4Q5T 193               B4QAE_AI 194-197 .1
        B4QAE_AO 198-201 .1     B4QAE_AC 202-205 .1     B4Q5U 206
        B4Q5V 207               B4QAE_AA 208-211 .1     B4Q6A 212
        B4Q6B 213               B4Q6C 214               B4Q6D 215
        B4Q6E 216               B4Q6F 217               B4Q6G 218
        B4Q6H 219               B4Q6I 220               B4Q6J 221
        B4Q6K 222               B4Q6L 223               B4Q6M 224
        B4Q6N 225               B4Q6O 226               B4QTA_AG 227-230 .1
        B4QTA_AT 231-234 .1     B4QTA_AR 235-238 .1     B4Q7A 239
        B4Q7B 240               B4Q7C 241               B4Q7D 242
        B4Q7E 243               B4Q7F 244               B4Q7G 245
        B4Q7H 246               B4Q7I 247               B4Q7J 248
        B4Q7K 249               B4Q7L 250               B4Q7M 251
        B4Q7N 252               B4Q7O 253               B4Q7P 254
        B4Q7Q 255               B4Q7R 256               B4Q7S 257
        B4Q7T 258               B4QTA_AX 259-262 .1     B4Q8A 263
        B4Q8B 264               B4Q8C 265               B4Q8D 266
        B4Q8E 267               B4Q8F 268               B4Q8G 269
        B4Q8H 270               B4Q8I 271               B4QSA_SA 272-275 .1
        B4Q9A 276               B4Q9B 277               B4Q9C 278
        B4Q9D 279               B4Q9E 280               B4Q9F 281
        B4Q9G 282               B4Q9H 283               B4Q9I 284
        B4Q9J 285               B4Q9K 286               B4Q9L 287
        B4Q9M 288               B4Q9N 289               B4Q9O 290
        B4Q9P 291               B4Q9Q 292               B4Q9R 293
        B4Q9S 294               B4Q9T 295               B4Q9U 296
        B4Q9V 297               B4Q9W 298               B4Q9X 299
        B4Q9Y 300               B4Q9Z 301               B4Q9AA 302
        B4Q9BB 303              B4QCT_EA 304-307 .1     B4QCT_PA 308-311 .1
        B4QCT_SA 312-315 .1     B4QCT_EN 316-319 .1     B4QCT_PN 320-323 .1
        B4QCT_MD 324-327 .1     B4Q10A1 328             B4Q10A2 329
        B4Q10B1 330             B4Q10B2 331             B4Q10C1 332
        B4Q10C2 333             B4Q10D1 334             B4Q10D2 335
        B4Q10E1 336             B4Q10E2 337             B4Q10F1 338
        B4Q10F2 339             B4Q10G1 340             B4Q10G2 341
        B4Q10H1 342             B4Q10H2 343             B4Q10I1 344
        B4Q10I2 345             B4Q10J1 346             B4Q10J2 347
        B4Q10K1 348             B4Q10K2 349             B4Q10L1 350
        B4Q10L2 351             B4Q10M1 352             B4Q10M2 353
        B4Q10N1 354             B4Q10N2 355             B4Q10O1 356
        B4Q10O2 357             B4Q10P1 358             B4Q10P2 359
        B4Q10Q1 360             B4Q10Q2 361             B4Q10R1 362
        B4Q10R2 363             B4Q10S1 364             B4Q10S2 365
        B4Q10T1 366             B4Q10T2 367             B4Q10U1 368
        B4Q10U2 369             B4Q10V1 370             B4Q10V2 371
        B4Q10W1 372             B4Q10W2 373             B4Q10X1 374
        B4Q10X2 375             B4Q10Y1 376             B4Q10Y2 377
        B4Q10Z1 378             B4Q10Z2 379             B4Q10AA1 380
        B4Q10AA2 381            B4Q10BB1 382            B4Q10BB2 383
        B4Q10CC1 384            B4Q10CC2 385            B4Q10DD1 386
        B4Q10DD2 387            B4Q10EE1 388            B4Q10EE2 389
        B4Q10FF1 390            B4Q10FF2 391            B4Q10GG1 392
        B4Q10GG2 393            B4Q10HH1 394            B4Q10HH2 395
        B4Q10II1 396            B4Q10II2 397            B4Q10JJ1 398
        B4Q10JJ2 399            B4Q10KK1 400            B4Q10KK2 401
        B4Q10LL1 402            B4Q10LL2 403            B4Q10MM1 404
        B4Q10MM2 405            B4Q10NN1 406            B4Q10NN2 407
        B4Q10OO1 408            B4Q10OO2 409            B4Q10PP1 410
        B4Q10PP2 411            B4Q10QQ1 412            B4Q10QQ2 413
        B4Q10RR1 414            B4Q10RR2 415            B4Q10SS1 416
        B4Q10SS2 417            B4Q10TT1 418            B4Q10TT2 419
        B4Q10UU1 420            B4Q10UU2 421            B4Q10VV1 422
        B4Q10VV2 423            B4Q10WW1 424            B4Q10WW2 425
        B4Q11A 426-427          B4Q11B 428-429          B4Q11C 430-431
        B4Q11D 432-433          B4Q11E 434-435          B4Q11F 436-437
        B4Q11G 438-439          B4Q11H 440-441          B4Q11I 442-443
        B4Q11J 444-445          B4Q11K 446-447          B4Q11L 448-449
        B4Q11M 450-451          B4Q11N 452-453          B4Q11O 454-455
        B4Q11P 456-457          B4Q11Q 458-459          B4Q11R 460-461
        B4Q11S 462-463          B4Q11T 464-465          B4Q11U 466-467
        B4Q11V 468-469          B4Q11W 470-471          B4Q11X 472-473
        B4Q11Y 474-475          B4Q11Z 476-477          B4Q11AA 478-479
        B4Q11BB 480-481         B4Q11CC 482-483         B4QSC_ID 484-487 .1
        B4QSC_IT 488-491 .1     B4QSO_PC 492-495 .1     B4QSO_PF 496-499 .1
        B4QSO_PX 500-503 .1     B4QSO_IW 504-507 .1     B4QSO_GW 508-511 .1
        B4Q12A 512-513          B4Q12B 514-515          B4Q12C 516-517
        B4Q12D 518-519          B4Q12E 520-521          B4Q12F 522-523
        B4Q12G 524-525          B4Q12H 526-527          B4Q12I 528-529
        B4Q12J 530-531          B4Q12K 532-533          B4Q12L 534-535
        B4Q12M 536-537          B4Q12N 538-539          B4Q12O 540-541
        B4Q12P 542-543          B4Q12Q 544-545          B4Q12R 546-547
        B4Q12S 548-549          B4Q12T 550-551          B4Q12U 552-553
        B4QRISC 554-557 .1      B4QSYMP 558-561 .1      B4QADJ 562-565 .1
        B4Q13A 566              B4Q13B 567              B4Q13C 568
        B4Q13D 569              B4Q13E 570              B4Q13F 571
        B4Q13G 572              B4Q13H 573              B4Q13H1 574
        B4Q13I 575              B4Q13J 576              B4Q13K 577
        B4Q13L 578              B4Q13M 579              B4Q13N 580
        B4Q13O1 581             B4Q13O 582              B4Q13P 583
        B4Q13Q 584              B4Q13R 585              B4Q13S 586
        B4Q13T 587              B4Q13U 588              B4Q13V 589
        B4Q13W 590              B4Q13X 591              B4Q13Y 592
        B4Q13Z 593              B4QSUGF 594-597 .2      B4QSTGF 598-601 .2
        B4QSOGFD 602-605 .2     B4QSUGFA 606-608 .2     B4QSTGFA 609-612 .2
        B4QSOGFM 613-616 .2     B4QSUGS 617-620 .2      B4QSTGS 621-624 .2
        B4QSOLGS 625-628 .2     B4Q14A 629-630          B4Q14B 631-632
        B4Q14C 633-634          B4Q14D 635-636          B4Q14E 637-638
        B4Q14F 639-640          B4Q14G 641-642          B4Q14H 643-644
        B4Q14I 645-646          B4Q14J 647-648          B4Q14K 649-650
        B4Q14L 651-652          B4Q14M 653-654          B4Q14N 655-656
        B4Q14O 657-658          B4Q14P 659-660          B4Q14Q 661-662
        B4Q14R 663-664          B4Q14S 665-666          B4QSC_SC 667-670 .1
        B4QSC_CC 671-674 .1     B4QSC_EC 675-678 .1     B4QSC_BC 679-682 .1
        B4Q15A 683-684          B4Q15B 685-686          B4Q15C 687-688
        B4Q15D 689-690          B4Q15E 691-692          B4Q15F 693-694
        B4Q15G 695-696          B4Q15H 697-698          B4QSW_SL 699-702 .1
        B4QSW_GR 703-706 .1     B4Q16A 707              B4Q16B 708
        B4Q16C 709              B4Q16D 710              B4Q16E 711
        B4Q16F 712              B4Q16G 713              B4Q16H 714
        B4QSW_JP 715-718 .1     B4Q17A 719-720          B4S1 $721-725
        B4S1AMPM 726            B4S2 727-732 .1         B4S3 $733-737
        B4S3AMPM 738            B4S4 739-744 .1         B4S5 745
        B4S6 746                B4S7 747                B4S8 748
        B4S9 749                B4S10A 750              B4S10B 751
        B4S10C 752              B4S10D 753              B4S10E 754
        B4S11A 755              B4S11B 756              B4S11C 757
        B4S11D 758              B4S11E 759              B4S11F 760
        B4S11G 761              B4S11H 762              B4S11I 763
        B4S11J 764              B4SSQ_GS 765-766        B4SSQ_S1 767
        B4SSQ_S2 768            B4SSQ_S3 769            B4SSQ_S4 770
        B4SSQ_S5 771            B4SSQ_S6 772            B4SSQ_S7 773
        B4H1A 774               B4H1AD 775              B4H1B 776
        B4H1BD 777              B4H1C 778               B4H1CD 779
        B4H1D 780               B4H1DD 781              B4H1E 782
        B4H1ED 783              B4H1F 784               B4H1FD 785
        B4H1G 786               B4H1GD 787              B4H1H 788
        B4H1HD 789              B4H1I 790               B4H1ID 791
        B4H1J 792               B4H1JD 793              B4H1K 794
        B4H1KD 795              B4H1L 796               B4H1LD 797
        B4H1M 798               B4H1MD 799              B4H1N 800
        B4H1ND 801              B4H1O 802               B4H1OD 803
        B4H1P 804               B4H1PD 805              B4H1Q 806
        B4H1QD 807              B4H1R 808               B4H1RD 809
        B4H1S 810               B4H1SD 811              B4H1T 812
        B4H1TD 813              B4H1U 814               B4H1UD 815
        B4H1V 816               B4H1VD 817              B4H1W 818
        B4H1WD 819              B4H1X 820               B4H1XD 821
        B4H1Y 822               B4H1YD 823              B4H1TOTH 824-825
        B4HSYMN 826-827         B4HSYMX 828             B4H2 829
        B4H2AF 830-831          B4H2AY 832-835          B4H2BF 836-837
        B4H2BY 838-841          B4H2CF 842-843          B4H2CY 844-847
        B4H2DF 848-849          B4H2DY 850-853          B4H2EF 854-855
        B4H2EY 856-859          B4H2FF 860-861          B4H2FY 862-865
        B4H2GF 866-867          B4H2GY 868-871          B4H2HF 872-873
        B4H2HY 874-877          B4H2IF 878-879          B4H2IY 880-883
        B4H2JF 884-885          B4H2JY 886-889          B4H2KF 890-891
        B4H2KY 892-895          B4H2LF 896-897          B4H2LY 898-901
        B4H2MF 902-903          B4H2MY 904-907          B4H2NF 908-909
        B4H2NY 910-913          B4HBRKB 914-915         B4H3 916
        B4H3AL 917              B4H3AY 918-921          B4H3BL 922
        B4H3BY 923-926          B4H3CL 927              B4H3CY 928-931
        B4H3DL 932              B4H3DY 933-936          B4H3EL 937
        B4H3EY 938-941          B4H3FL 942              B4H3FY 943-946
        B4H3GL 947              B4H3GY 948-951          B4H3HL 952
        B4H3HY 953-956          B4H3IL 957              B4H3IY 958-961
        B4H3JL 962              B4H3JY 963-966          B4HSURG 967-968
        B4H4 969                B4H4AH 970              B4H4AY 971-974
        B4H4BH 975              B4H4BY 976-979          B4H4CH 980
        B4H4CY 981-984          B4HHEAD 985             B4H5 986
        B4H5AH 987              B4H5AY 988-991          B4H5BH 992
        B4H5BY 993-996          B4H5CH 997              B4H5CY 998-1001
        B4HJNT 1002             B4H6 1003               B4H6AH 1004
        B4H6AY 1005-1008        B4H6BH 1009             B4H6BY 1010-1013
        B4H6CH 1014             B4H6CY 1015-1018        B4H6DH 1019
        B4H6DY 1020-1023        B4HMVA 1024             B4H7 1025
        B4H7AH 1026             B4H7AY 1027-1030        B4H7BH 1031
        B4H7BY 1032-1035        B4HAMPU 1036            B4H8 1037
        B4H8AH 1038             B4H8AY 1039-1042        B4H8BH 1043
        B4H8BY 1044-1047        B4H8CH 1048             B4H8CY 1049-1052
        B4H8DH 1053             B4H8DY 1054-1057        B4HOHLTH 1058
        B4H9 1059               B4H10 1060              B4H10A 1061
        B4H10B 1062             B4H10C 1063             B4H10D 1064
        B4H10E 1065             B4H10F 1066             B4H11A 1067
        B4H11AI 1068            B4H11AA 1069-1073 .1    B4H11B 1074
        B4H11BI 1075            B4H11BA 1076-1080 .1    B4H11C 1081
        B4H11CI 1082            B4H11CA 1083-1087 .1    B4H11D 1088
        B4H11DI 1089            B4H11DA 1090-1094 .1    B4H11E 1095
        B4H12A 1096             B4H12AM 1097-1098       B4H12AY 1099-1102
        B4H12B 1103             B4H12BM 1104-1105       B4H12BY 1106-1109
        B4H12C 1110             B4H12CM 1111-1112       B4H12CY 1113-1116
        B4H13 1117-1118         B4H14 1119              B4H14A 1120
        B4H15A 1121             B4H15A1 1122            B4H15A2 1123
        B4H15A3 1124            B4H15A4 1125            B4H15A5 1126
        B4H15A6 1127            B4H15A7 1128            B4H15B 1129
        B4H15B1 1130            B4H15B2 1131            B4H15B3 1132
        B4H15B4 1133            B4H15B5 1134            B4H15B6 1135
        B4H15B7 1136            B4H15C 1137             B4H15C1 1138
        B4H15C2 1139            B4H15C3 1140            B4H15C4 1141
        B4H15C5 1142            B4H15C6 1143            B4H15C7 1144
        B4H15D 1145             B4H15D1 1146            B4H15D2 1147
        B4H15D3 1148            B4H15D4 1149            B4H15D5 1150
        B4H15D6 1151            B4H15D7 1152            B4H15E 1153
        B4H15E1 1154            B4H15E2 1155            B4H15E3 1156
        B4H15E4 1157            B4H15E5 1158            B4H15E6 1159
        B4H15E7 1160            B4H15F 1161             B4H15F1 1162
        B4H15F2 1163            B4H15F3 1164            B4H15F4 1165
        B4H15F5 1166            B4H15F6 1167            B4H15F7 1168
        B4H15G 1169             B4H15G1 1170            B4H15G2 1171
        B4H15G3 1172            B4H15G4 1173            B4H15G5 1174
        B4H15G6 1175            B4H15G7 1176            B4H15H 1177
        B4H15H1 1178            B4H15H2 1179            B4H15H3 1180
        B4H15H4 1181            B4H15H5 1182            B4H15H6 1183
        B4H15H7 1184            B4H15I 1185             B4H15I1 1186
        B4H15I2 1187            B4H15I3 1188            B4H15I4 1189
        B4H15I5 1190            B4H15I6 1191            B4H15I7 1192
        B4H15J 1193             B4H15J1 1194            B4H15J2 1195
        B4H15J3 1196            B4H15J4 1197            B4H15J5 1198
        B4H15J6 1199            B4H15J7 1200            B4H15K 1201
        B4H15K1 1202            B4H15K2 1203            B4H15K3 1204
        B4H15K4 1205            B4H15K5 1206            B4H15K6 1207
        B4H15K7 1208            B4H15L 1209             B4H15L1 1210
        B4H15L2 1211            B4H15L3 1212            B4H15L4 1213
        B4H15L5 1214            B4H15L6 1215            B4H15L7 1216
        B4H15M 1217             B4H15M1 1218            B4H15M2 1219
        B4H15M3 1220            B4H15M4 1221            B4H15M5 1222
        B4H15M6 1223            B4H15M7 1224            B4H15N 1225
        B4H15N1 1226            B4H15N2 1227            B4H15N3 1228
        B4H15N4 1229            B4H15N5 1230            B4H15N6 1231
        B4H15N7 1232            B4H15O 1233             B4H15O1 1234
        B4H15O2 1235            B4H15O3 1236            B4H15O4 1237
        B4H15O5 1238            B4H15O6 1239            B4H15O7 1240
        B4H15P 1241             B4H15P1 1242            B4H15P2 1243
        B4H15P3 1244            B4H15P4 1245            B4H15P5 1246
        B4H15P6 1247            B4H15P7 1248            B4H15Q 1249
        B4H15Q1 1250            B4H15Q2 1251            B4H15Q3 1252
        B4H15Q4 1253            B4H15Q5 1254            B4H15Q6 1255
        B4H15Q7 1256            B4H15R 1257             B4H15R1 1258
        B4H15R2 1259            B4H15R3 1260            B4H15R4 1261
        B4H15R5 1262            B4H15R6 1263            B4H15R7 1264
        B4H15S 1265             B4H15S1 1266            B4H15S2 1267
        B4H15S3 1268            B4H15S4 1269            B4H15S5 1270
        B4H15S6 1271            B4H15S7 1272            B4H15OTH 1273-1274
        B4HFMHN 1275-1276       B4HFMHX 1277            B4H16 1278
        B4H17AF 1279-1284 .1    B4H17AT 1285            B4H17BF 1286-1291 .1
        B4H17BT 1292            B4H17CF 1293-1298 .1    B4H17CT 1299
        B4H18AF 1300-1305 .1    B4H18AT 1306            B4H18BF 1307-1312 .1
        B4H18BT 1313            B4H18CF 1314-1319 .1    B4H18CT 1320
        B4H19 1321              B4H20 1322              B4H21 1323
        B4H22 1324              B4H23A 1325             B4H23B 1326
        B4H23C 1327             B4H23D 1328             B4H24 1329
        B4H25 1330              B4H25AS 1331-1332       B4H25AFD 1333-1334
        B4H25AFW 1335-1336      B4H25AM 1337-1342 .1    B4H25AI 1343
        B4H25BS 1344-1345       B4H25BFD 1346-1347      B4H25BFW 1348-1349
        B4H25BM 1350-1355 .1    B4H25BI 1356            B4H25CS 1357-1358
        B4H25CFD 1359-1360      B4H25CFW 1361-1362      B4H25CM 1363-1368 .1
        B4H25CI 1369            B4H25DS 1370-1371       B4H25DFD 1372-1373
        B4H25DFW 1374-1375      B4H25DM 1376-1381 .1    B4H25DI 1382
        B4H25ES 1383-1384       B4H25EFD 1385-1386      B4H25EFW 1387-1388
        B4H25EM 1389-1394 .1    B4H25EI 1395            B4H25FS 1396-1397
        B4H25FFD 1398-1399      B4H25FFW 1400-1401      B4H25FM 1402-1407 .1
        B4H25FI 1408            B4H25GS 1409-1410       B4H25GFD 1411-1412
        B4H25GFW 1413-1414      B4H25GM 1415-1420 .1    B4H25GI 1421
        B4H26 1422              B4H26A 1423             B4H27 1424
        B4H28 1425-1426         B4H29 1427              B4H30 1428
        B4H31 1429              B4H32 1430              B4H33 1431
        B4H34 1432              B4H35 1433              B4H36 1434-1439 .1
        B4H37 1440-1441         B4H38 1442              B4H39 1443
        B4H40 1444-1449 .1      B4H41 1450-1451         B4H42 1452-1457 .1
        B4H43A 1458             B4H43BM 1459-1460       B4H43BY 1461-1464
        B4H44A 1465             B4H44CM 1466-1467       B4H44CY 1468-1471
        B4H44D 1472             B4H45A 1473             B4H45AM 1474-1475
        B4H45AY 1476-1479       B4H45B 1480             B4H45BM 1481-1482
        B4H45BY 1483-1486       B4H45BRC 1487-1488      B4H45C 1489
        B4H45CM 1490-1491       B4H45CY 1492-1495       B4H45CRC 1496-1497
        B4H45D 1498             B4H45DM 1499-1500       B4H45DY 1501-1504
        B4H45DRC 1505-1506      B4H45E 1507             B4H45F 1508
        B4H45FM 1509-1510       B4H45FY 1511-1514       B4H45FRC 1515-1516
        B4H45G 1517             B4H45GM 1518-1519       B4H45GY 1520-1523
        B4H45GRC 1524-1525      B4H45H 1526             B4H45HM 1527-1528
        B4H45HY 1529-1532       B4H45HRC 1533-1534      B4H46 1535
        B4H46C 1536             B4H46D 1537-1543 .2     B4H47 1544
        B4H48 1545              B4H48A 1546             B4H49 1547
        B4H50 1548              B4H54C 1549             B4H54M 1550-1551
        B4H54Y 1552-1555        B4H55 1556              B4HMARR 1557
        B4H56 1558              B4H56AG 1559            B4H56AM 1560-1561
        B4H56AY 1562-1565       B4H56BG 1566            B4H56BM 1567-1568
        B4H56BY 1569-1572       B4H56CG 1573            B4H56CM 1574-1575
        B4H56CY 1576-1579       B4H56DG 1580            B4H56DM 1581-1582
        B4H56DY 1583-1586       B4H56EG 1587            B4H56EM 1588-1589
        B4H56EY 1590-1593       B4HDIED 1594            B4H57 1595
        B4H57A1M 1596-1597      B4H57A1Y 1598-1601      B4H57A2M 1602-1603
        B4H57A2Y 1604-1607      B4H57A3M 1608-1609      B4H57A3Y 1610-1613
        B4H57A4M 1614-1615      B4H57A4Y 1616-1619      B4H57A5M 1620-1621
        B4H57A5Y 1622-1625      B4H57TOT 1626-1627      B4OAVL 1628
        B4O1 1629               B4O1A1W 1630-1631       B4O1A3 1632-1635
        B4O1B1W 1636-1637       B4O1B3 1638-1641        B4O1C1W 1642-1643
        B4O1C3 1644-1647        B4O2 1648               B4O2A1 1649
        B4O2A2 1650             B4O2A3 1651             B4O2B1 1652
        B4O2B2 1653             B4O2B3 1654             B4O2C1 1655
        B4O2C2 1656             B4O2C3 1657             B4O3 1658-1660
        B4O3A 1661-1663         B4O4A 1664              B4O4B 1665
        B4O5 1666               B4O5A1AM 1667-1668      B4O5A1B 1669-1672
        B4O5A1C 1673-1676       B4O5A1CO 1677           B4O5A2AM 1678-1679
        B4O5A2B 1680-1683       B4O5A2C 1684-1687       B4O5A2CO 1688
        B4O5A3AM 1689-1690      B4O5A3B 1691-1694       B4O5A3C 1695-1698
        B4O5A3CO 1699           B4O6A1 1700             B4O6B1 1701
        B4O6C1 1702             B4O6D1 1703             B4O6E1 1704
        B4O6F1 1705             B4O7 1706               B4O8 1707-1712 .1
        B4O9 1713-1718 .1       B4O10 1719-1725 .2      B4O11 1726
        B4O12A 1727-1731 .1     B4O12B 1732-1736 .1     B4O12C 1737-1741 .1
        B4O13 1742              B4O14A 1743-1748 .1     B4O14B 1749-1754 .1
        B4O14C 1755-1760 .1     B4O14X 1761             B4O15 1762
        B4O16 1763-1764         B4O16A 1765-1771 .2     B4O17 1772
        B4O18 1773              B4O19 1774              B4O20Y 1775-1781 .2
        B4O21 1782              B4O21A1 1783            B4O21A2 1784
        B4O21A3 1785            B4O21A4 1786            B4O21A5 1787
        B4O22Y 1788-1794 .2     B4O23X 1795             B4O23 1796
        B4O24 1797              B4O25 1798              B4O25A 1799
        B4O25B 1800             B4O25C 1801             B4O26 1802
        B4O26A 1803             B4O26B 1804             B4O26C 1805
        B4O26D 1806             B4O26E 1807             B4O26F 1808
        B4O27 1809              B4DAVAIL 1810           B4DNARSN 1811
        B4DSTYPE 1812           B4DTRSID 1813           B4DFNSID 1814
        B4DFTSID 1815           B4DRSIDE 1816           B4DLSMD 1817-1823 .3
        B4DLST 1824-1829 .2     B4DLFNMD 1830-1836 .3   B4DLTRMD 1837-1843 .3
        B4DLFTMD 1844-1850 .3   B4DLFNT 1851-1856 .2    B4DLFTT 1857-1862 .2
        B4DLRUMD 1863-1869 .3   B4DLR3MD 1870-1876 .3   B4DLR3T 1877-1882 .2
        B4DHSMD 1883-1889 .3    B4DHST 1890-1895 .2     B4DHFNMD 1896-1902 .3
        B4DHTRMD 1903-1909 .3   B4DHFTMD 1910-1916 .3   B4DHFNT 1917-1922 .2
        B4DHFTT 1923-1928 .2    B4XPMD 1929             B4XOMD 1930
        B4XAMD 1931             B4XPM 1932-1933         B4XPC1 1934-1941
        B4XPDD1 1942-1952 .2    B4XPDU1 1953-1954       B4XPR1 1955-1956
        B4XPF1 1957-1962 .1     B4XPFU1 1963            B4XPT1 1964-1969 .1
        B4XPTU1 1970            B4XPDC1 1971-1975       B4XPC2 1976-1983
        B4XPDD2 1984-1994 .2    B4XPDU2 1995-1996       B4XPR2 1997-1998
        B4XPF2 1999-2004 .1     B4XPFU2 2005            B4XPT2 2006-2011 .1
        B4XPTU2 2012            B4XPDC2 2013-2017       B4XPC3 2018-2025
        B4XPDD3 2026-2036 .2    B4XPDU3 2037-2038       B4XPR3 2039-2040
        B4XPF3 2041-2046 .1     B4XPFU3 2047            B4XPT3 2048-2053 .1
        B4XPTU3 2054            B4XPDC3 2055-2059       B4XPC4 2060-2067
        B4XPDD4 2068-2078 .2    B4XPDU4 2079-2080       B4XPR4 2081-2082
        B4XPF4 2083-2088 .1     B4XPFU4 2089            B4XPT4 2090-2095 .1
        B4XPTU4 2096            B4XPDC4 2097-2101       B4XPC5 2102-2109
        B4XPDD5 2110-2120 .2    B4XPDU5 2121-2122       B4XPR5 2123-2124
        B4XPF5 2125-2130 .1     B4XPFU5 2131            B4XPT5 2132-2137 .1
        B4XPTU5 2138            B4XPDC5 2139-2143       B4XPC6 2144-2151
        B4XPDD6 2152-2162 .2    B4XPDU6 2163-2164       B4XPR6 2165-2166
        B4XPF6 2167-2172 .1     B4XPFU6 2173            B4XPT6 2174-2179 .1
        B4XPTU6 2180            B4XPDC6 2181-2185       B4XPC7 2186-2193
        B4XPDD7 2194-2204 .2    B4XPDU7 2205-2206       B4XPR7 2207-2208
        B4XPF7 2209-2214 .1     B4XPFU7 2215            B4XPT7 2216-2221 .1
        B4XPTU7 2222            B4XPDC7 2223-2227       B4XPC8 2228-2235
        B4XPDD8 2236-2246 .2    B4XPDU8 2247-2248       B4XPR8 2249-2250
        B4XPF8 2251-2256 .1     B4XPFU8 2257            B4XPT8 2258-2263 .1
        B4XPTU8 2264            B4XPDC8 2265-2269       B4XPC9 2270-2277
        B4XPDD9 2278-2288 .2    B4XPDU9 2289-2290       B4XPR9 2291-2292
        B4XPF9 2293-2298 .1     B4XPFU9 2299            B4XPT9 2300-2305 .1
        B4XPTU9 2306            B4XPDC9 2307-2311       B4XPC10 2312-2319
        B4XPDD10 2320-2330 .2   B4XPDU10 2331-2332      B4XPR10 2333-2334
        B4XPF10 2335-2340 .1    B4XPFU10 2341           B4XPT10 2342-2347 .1
        B4XPTU10 2348           B4XPDC10 2349-2353      B4XPC11 2354-2361
        B4XPDD11 2362-2372 .2   B4XPDU11 2373-2374      B4XPR11 2375-2376
        B4XPF11 2377-2382 .1    B4XPFU11 2383           B4XPT11 2384-2389 .1
        B4XPTU11 2390           B4XPDC11 2391-2395      B4XPC12 2396-2403
        B4XPDD12 2404-2414 .2   B4XPDU12 2415-2416      B4XPR12 2417-2418
        B4XPF12 2419-2424 .1    B4XPFU12 2425           B4XPT12 2426-2431 .1
        B4XPTU12 2432           B4XPDC12 2433-2437      B4XPC13 2438-2445
        B4XPDD13 2446-2456 .2   B4XPDU13 2457-2458      B4XPR13 2459-2460
        B4XPF13 2461-2466 .1    B4XPFU13 2467           B4XPT13 2468-2473 .1
        B4XPTU13 2474           B4XPDC13 2475-2479      B4XPC14 2480-2487
        B4XPDD14 2488-2498 .2   B4XPDU14 2499-2500      B4XPR14 2501-2502
        B4XPF14 2503-2508 .1    B4XPFU14 2509           B4XPT14 2510-2515 .1
        B4XPTU14 2516           B4XPDC14 2517-2521      B4XPC15 2522-2529
        B4XPDD15 2530-2540 .2   B4XPDU15 2541-2542      B4XPR15 2543-2544
        B4XPF15 2545-2550 .1    B4XPFU15 2551           B4XPT15 2552-2557 .1
        B4XPTU15 2558           B4XPDC15 2559-2563      B4XBPD 2564
        B4XBPC 2565             B4XCHD 2566             B4XCHC 2567
        B4XDPD 2568             B4XDPC 2569             B4XCOD 2570
        B4XCOC 2571             B4XSHD 2572             B4XSHC 2573
        B4XOM 2574-2575         B4XOMV 2576             B4XOC1 2577-2584
        B4XODD1 2585-2595 .2    B4XODU1 2596-2597       B4XOR1 2598-2599
        B4XOF1 2600-2605 .1     B4XOFU1 2606            B4XOT1 2607-2612 .1
        B4XOTU1 2613            B4XODC1 2614-2618       B4XOCS 2619
        B4XOC2 2620-2627        B4XODD2 2628-2638 .2    B4XODU2 2639-2640
        B4XOR2 2641-2642        B4XOF2 2643-2648 .1     B4XOFU2 2649
        B4XOT2 2650-2655 .1     B4XOTU2 2656            B4XODC2 2657-2661
        B4XOC3 2662-2669        B4XODD3 2670-2680 .2    B4XODU3 2681-2682
        B4XOR3 2683-2684        B4XOF3 2685-2690 .1     B4XOFU3 2691
        B4XOT3 2692-2697 .1     B4XOTU3 2698            B4XODC3 2699-2703
        B4XOC4 2704-2711        B4XODD4 2712-2722 .2    B4XODU4 2723-2724
        B4XOR4 2725-2726        B4XOF4 2727-2732 .1     B4XOFU4 2733
        B4XOT4 2734-2739 .1     B4XOTU4 2740            B4XODC4 2741-2745
        B4XOC5 2746-2753        B4XODD5 2754-2764 .2    B4XODU5 2765-2766
        B4XOR5 2767-2768        B4XOF5 2769-2774 .1     B4XOFU5 2775
        B4XOT5 2776-2781 .1     B4XOTU5 2782            B4XODC5 2783-2787
        B4XOC6 2788-2795        B4XODD6 2796-2806 .2    B4XODU6 2807-2808
        B4XOR6 2809-2810        B4XOF6 2811-2816 .1     B4XOFU6 2817
        B4XOT6 2818-2823 .1     B4XOTU6 2824            B4XODC6 2825-2829
        B4XOC7 2830-2837        B4XODD7 2838-2848 .2    B4XODU7 2849-2850
        B4XOR7 2851-2852        B4XOF7 2853-2858 .1     B4XOFU7 2859
        B4XOT7 2860-2865 .1     B4XOTU7 2866            B4XODC7 2867-2871
        B4XOC8 2872-2879        B4XODD8 2880-2890 .2    B4XODU8 2891-2892
        B4XOR8 2893-2894        B4XOF8 2895-2900 .1     B4XOFU8 2901
        B4XOT8 2902-2907 .1     B4XOTU8 2908            B4XODC8 2909-2913
        B4XOC9 2914-2921        B4XODD9 2922-2932 .2    B4XODU9 2933-2934
        B4XOR9 2935-2936        B4XOF9 2937-2942 .1     B4XOFU9 2943
        B4XOT9 2944-2949 .1     B4XOTU9 2950            B4XODC9 2951-2955
        B4XOC10 2956-2963       B4XODD10 2964-2974 .2   B4XODU10 2975-2976
        B4XOR10 2977-2978       B4XOF10 2979-2984 .1    B4XOFU10 2985
        B4XOT10 2986-2991 .1    B4XOTU10 2992           B4XODC10 2993-2997
        B4XOC11 2998-3005       B4XODD11 3006-3016 .2   B4XODU11 3017-3018
        B4XOR11 3019-3020       B4XOF11 3021-3026 .1    B4XOFU11 3027
        B4XOT11 3028-3033 .1    B4XOTU11 3034           B4XODC11 3035-3039
        B4XOC12 3040-3047       B4XODD12 3048-3058 .2   B4XODU12 3059-3060
        B4XOR12 3061-3062       B4XOF12 3063-3068 .1    B4XOFU12 3069
        B4XOT12 3070-3075 .1    B4XOTU12 3076           B4XODC12 3077-3081
        B4XAM 3082-3083         B4XAC1 3084-3089        B4XADD1 3090-3100 .2
        B4XADU1 3101-3102       B4XAR1 3103-3104        B4XAF1 3105-3110 .1
        B4XAFU1 3111            B4XAT1 3112-3117 .1     B4XATU1 3118
        B4XADC1 3119-3123       B4XAC2 3124-3129        B4XADD2 3130-3140 .2
        B4XADU2 3141-3142       B4XAR2 3143-3144        B4XAF2 3145-3150 .1
        B4XAFU2 3151            B4XAT2 3152-3157 .1     B4XATU2 3158
        B4XADC2 3159-3163       B4XAC3 3164-3169        B4XADD3 3170-3180 .2
        B4XADU3 3181-3182       B4XAR3 3183-3184        B4XAF3 3185-3190 .1
        B4XAFU3 3191            B4XAT3 3192-3197 .1     B4XATU3 3198
        B4XADC3 3199-3203       B4XAC4 3204-3209        B4XADD4 3210-3220 .2
        B4XADU4 3221-3222       B4XAR4 3223-3224        B4XAF4 3225-3230 .1
        B4XAFU4 3231            B4XAT4 3232-3237 .1     B4XATU4 3238
        B4XADC4 3239-3243       B4XAC5 3244-3249        B4XADD5 3250-3260 .2
        B4XADU5 3261-3262       B4XAR5 3263-3264        B4XAF5 3265-3270 .1
        B4XAFU5 3271            B4XAT5 3272-3277 .1     B4XATU5 3278
        B4XADC5 3279-3283       B4XAC6 3284-3289        B4XADD6 3290-3300 .2
        B4XADU6 3301-3302       B4XAR6 3303-3304        B4XAF6 3305-3310 .1
        B4XAFU6 3311            B4XAT6 3312-3317 .1     B4XATU6 3318
        B4XADC6 3319-3323       B4XAC7 3324-3329        B4XADD7 3330-3340 .2
        B4XADU7 3341-3342       B4XAR7 3343-3344        B4XAF7 3345-3350 .1
        B4XAFU7 3351            B4XAT7 3352-3357 .1     B4XATU7 3358
        B4XADC7 3359-3363       B4XAC8 3364-3369        B4XADD8 3370-3380 .2
        B4XADU8 3381-3382       B4XAR8 3383-3384        B4XAF8 3385-3390 .1
        B4XAFU8 3391            B4XAT8 3392-3397 .1     B4XATU8 3398
        B4XADC8 3399-3403       B4XAC9 3404-3409        B4XADD9 3410-3420 .2
        B4XADU9 3421-3422       B4XAR9 3423-3424        B4XAF9 3425-3430 .1
        B4XAFU9 3431            B4XAT9 3432-3437 .1     B4XATU9 3438
        B4XADC9 3439-3443       B4XAC10 3444-3449       B4XADD10 3450-3460 .2
        B4XADU10 3461-3462      B4XAR10 3463-3464       B4XAF10 3465-3470 .1
        B4XAFU10 3471           B4XAT10 3472-3477 .1    B4XATU10 3478
        B4XADC10 3479-3483      B4XAC11 3484-3489       B4XADD11 3490-3500 .2
        B4XADU11 3501-3502      B4XAR11 3503-3504       B4XAF11 3505-3510 .1
        B4XAFU11 3511           B4XAT11 3512-3517 .1    B4XATU11 3518
        B4XADC11 3519-3523      B4XAC12 3524-3529       B4XADD12 3530-3540 .2
        B4XADU12 3541-3542      B4XAR12 3543-3544       B4XAF12 3545-3550 .1
        B4XAFU12 3551           B4XAT12 3552-3557 .1    B4XATU12 3558
        B4XADC12 3559-3563      B4XM 3564               B4XMM 3565-3566
        B4XMC1 3567-3574        B4XMC2 3575-3582        B4XMC3 3583-3590
        B4XMC4 3591-3598        B4XMC5 3599-3606        B4XMC6 3607-3614
        B4XMC7 3615-3622        B4XMC8 3623-3630        B4XXM 3631
        B4PWHRF 3632            B4P1A 3633-3641 .2      B4P1B 3642-3649 .2
        B4PBMI 3650-3658 .2     B4P1C 3659-3664 .1      B4P1D 3665-3667
        B4P1E 3668-3669         B4P1F1S 3670-3672       B4P1F1D 3673-3675
        B4P1F2S 3676-3678       B4P1F2D 3679-3681       B4P1F3S 3682-3684
        B4P1F3D 3685-3687       B4P1GS 3688-3690        B4P1GD 3691-3693
        B4P1GS23 3694-3696      B4P1GD23 3697-3699      B4P2A 3700-3707 .1
        B4P2B 3708-3715 .1      B4P2C 3716-3723 .1      B4P2D 3724-3732 .2
        B4PWHR 3733-3741 .2     B4P3A 3742              B4P3A1 3743
        B4P3A2R1 3744-3745      B4P3A2R2 3746-3747      B4P3A2R3 3748-3749
        B4P3A2L1 3750-3751      B4P3A2L2 3752-3753      B4P3A2L3 3754-3755
        B4P3B1 3756             B4P3B2R 3757-3759       B4P3B2L 3760-3762
        B4P3B3R 3763            B4P3B4 3764             B4P3B4A 3765-3766
        B4P3B5R 3767-3769       B4P3B5L 3770-3772       B4P3B6 3773
        B4P3C1 3774             B4P3C2 3775-3777        B4P3C3 3778
        B4P3D 3779              B4P3E 3780              B4P3F 3781
        B4P3G 3782              B4P3H1R 3783            B4P3H2 3784-3785
        B4P3H3 3786-3787        B4P3I1 3788             B4P3I2 3789-3790
        B4P3I3R 3791            B4PMD 3792              B4P4B 3793
        B4P5A1 3794-3795        B4P5A2 3796             B4P5A3 3797-3798
        B4P5A4 3799             B4P5B 3800              B4P5B1 3801
        B4P5B2 3802             B4P5B3 3803             B4P5B4 3804
        B4P5B5 3805             B4P5B6 3806             B4P5B7 3807
        B4P5B8 3808             B4P5B9 3809             B4P5B10 3810
        B4P5B11 3811            B4P5B12 3812            B4P5B13 3813
        B4P5B14 3814            B4P5B15 3815            B4P5B16 3816
        B4P5B17 3817            B4P6A1 3818             B4P6A2 3819
        B4P6B 3820              B4P6C 3821              B4P6D1 3822
        B4P6D2 3823             B4P6D3 3824             B4P6D4 3825
        B4P6E1 3826             B4P6E2 3827             B4P6E3 3828
        B4P6E4 3829             B4P6E4R 3830            B4P6E4L 3831
        B4P6F1 3832-3833        B4P6F2 3834-3835        B4P6F3 3836-3837
        B4P6F4 3838-3839        B4P6F5 3840-3841        B4P7A 3842
        B4P7A1R 3843            B4P7A1L 3844            B4P7A2R 3845
        B4P7A2L 3846            B4P8A 3847-3848         B4P8B1 3849-3850
        B4P8B2 3851-3852        B4P8B3 3853             B4P8B4 3854
        B4P8B5 3855             B4P8B6 3856             B4P8B7 3857
        B4P8C1AD 3858           B4P8C1A 3859-3860       B4P8C1HO 3861-3862
        B4P8C2AD 3863           B4P8C2A 3864-3865       B4P8C2HO 3866-3867
        B4P8D 3868              B4P9A 3869              B4P9A1 3870
        B4P9A2 3871             B4P9A3 3872             B4P9A4 3873
        B4P9B 3874              B4P9C 3875              B4P9D 3876
        B4P9D1 3877             B4P9D2 3878             B4P9D3 3879
        B4P9D3N 3880-3881       B4P9D3S 3882-3886 .1    B4P10A1 3887
        B4P10A2 3888            B4P10A3 3889            B4P10A4 3890
        B4P10B1 3891            B4P10B2 3892            B4P10B2A 3893
        B4P10B2B 3894           B4P10B3 3895            B4P10C 3896
        B4P10C1R 3897           B4P10C1L 3898           B4P10C2R 3899
        B4P10C2L 3900           B4P10C3R 3901           B4P10C3L 3902
        B4P10C4R 3903           B4P10C4L 3904           B4P10C5R 3905
        B4P10C5L 3906           B4P10C6R 3907           B4P10C6L 3908
        B4P10C7R 3909           B4P10C7L 3910           B4P11A1 3911
        B4P11B 3912-3913        B4P11B1 3914            B4P11B1A 3915
        B4P11B1B 3916           B4P11B1C 3917           B4P11B1D 3918
        B4P11B2 3919            B4P11B2A 3920           B4P11B2B 3921
        B4P11B2C 3922           B4P11B2D 3923           B4P11B3 3924
        B4P12A 3925             B4P12B 3926-3927        B4P12C 3928
        B4P12C1 3929            B4P12C1A 3930           B4P12C1B 3931
        B4P12C1C 3932           B4P12C1D 3933           B4P12C1E 3934
        B4P12C1F 3935           B4P12C2 3936            B4P12C2A 3937
        B4P12C2B 3938           B4P12C2C 3939           B4P12C2D 3940
        B4P12C2E 3941           B4P12C2F 3942           B4P12C3 3943
        B4P12C3A 3944           B4P12C3B 3945           B4P12C3C 3946
        B4P12C3D 3947           B4P12C3E 3948           B4P12C3F 3949
        B4P12C4 3950            B4P12C4A 3951           B4P12C4B 3952
        B4P12C4C 3953           B4P12C4D 3954           B4P12C4E 3955
        B4P12C4F 3956           B4P12C5 3957            B4P12C5A 3958
        B4P12C5B 3959           B4P12C5C 3960           B4P12C5D 3961
        B4P12C5E 3962           B4P12C5F 3963           B4P12C6 3964
        B4P12C7 3965            B4P12D 3966-3967        B4P12E1 3968
        B4P12E2 3969            B4P12E3 3970            B4P12E4 3971
        B4P12E5 3972            B4P13 3973              B4P13A1 3974
        B4P13A2 3975            B4P13A3 3976            B4P13A4 3977
        B4P13B1 3978            B4P13B1A 3979           B4P13B1B 3980
        B4P13B1C 3981           B4P13B1D 3982           B4P13B2 3983
        B4P13B2A 3984           B4P13B2B 3985           B4P13B2C 3986
        B4P13B2D 3987           B4P13B3 3988            B4P13B3A 3989
        B4P13B3B 3990           B4P13B3C 3991           B4P13B3D 3992
        B4P13B4 3993            B4P13B4A 3994           B4P13B4B 3995
        B4P13B4C 3996           B4P13B4D 3997           B4P13B5 3998
        B4P13B5A 3999           B4P13B5B 4000           B4P13B5C 4001
        B4P13B5D 4002           B4P13C1R 4003           B4P13C1L 4004
        B4P13C2R 4005           B4P13C2L 4006           B4P13C3R 4007
        B4P13C3L 4008           B4P13C4A 4009           B4P13D1 4010
        B4P13D1A 4011           B4P13D1B 4012           B4P13D1C 4013
        B4P13D1D 4014           B4P13D2 4015            B4P13D2A 4016
        B4P13D2B 4017           B4P13D2C 4018           B4P13D2D 4019
        B4P13D3 4020            B4P13D3A 4021           B4P13D3B 4022
        B4P13D3C 4023           B4P13D3D 4024           B4P13D4 4025
        B4P13D4A 4026           B4P13D4B 4027           B4P13D4C 4028
        B4P13D4D 4029           B4P13D5 4030            B4P13D5A 4031
        B4P13D5B 4032           B4P13D5C 4033           B4P13D5D 4034
        B4P13E1 4035            B4P13E1A 4036           B4P13E1B 4037
        B4P13E1C 4038           B4P13E1D 4039           B4P13E2 4040
        B4P13E3 4041            B4ZBLOOD 4042           B4BHA1C 4043-4048 .2
        B4BCHOL 4049-4051       B4BTRIGL 4052-4055      B4BHDL 4056-4058
        B4BLDL 4059-4061        B4BRTHDL 4062-4068 .2   B4BDHEAS 4069-4074 .1
        B4BDHEA 4075-4081 .2    B4BSCREA 4082-4086 .1   B4BIL6 4087-4094 .2
        B4BSIL6R 4095-4100      B4BFGN 4101-4103        B4BCRP 4104-4111 .2
        B4BSESEL 4112-4119 .2   B4BSICAM 4120-4128 .2   B4BATBC 4129-4139 .3
        B4B13CBC 4140-4150 .3   B4BAC 4151-4162 .3      B4BBCX 4163-4173 .3
        B4BLUT 4174-4185 .3     B4BZX 4186-4197 .3      B4BLYC 4198-4209 .3
        B4BRET 4210-4221 .3     B4BATOC 4222-4234 .3    B4BGTOC 4235-4246 .3
        B4BP1NP 4247-4255 .2    B4BSBAP 4256-4264 .2    B4BSNTX 4265-4273 .2
        B4BGLUC 4274-4276       B4BINSLN 4277-4279      B4BIGF1 4280-4282
        B4BHOMAIR 4283-4288 .2  B4ZURINE 4289           B4BUPROB 4290
        B4BUSTRT $4291-4295     B4BUEND $4296-4300      B4BUVDYN 4301
        B4BUVDN 4302-4305 .1    B4BURVOL 4306-4309      B4BCORTL 4310-4317 .2
        B4BCORTO 4318-4325 .2   B4BUCREA 4326-4328      B4BCLCRE 4329-4336 .1
        B4BCOCRE 4337-4343 .1   B4BNOREP 4344-4350 .2   B4BEPIN 4351-4357 .2
        B4BDOPA 4358-4365 .2    B4BNE12 4366-4377 .3    B4BEPI12 4378-4389 .3
        B4BDOP12 4390-4401 .3   B4BNOCRE 4402-4413 .3   B4BEPCRE 4414-4425 .3
        B4BDOCRE 4426-4437 .3   B4BNECL 4438-4444 .2    B4BSUCRE 4445-4453 .3
        B4BGFR 4454-4465 .3     B4ZSALIV 4466           B4BSCL11 4467-4474 .2
        B4BSCL21 4475-4482 .2   B4BSCL31 4483-4490 .2   B4BSCL41 4491-4498 .2
        B4BSDUP 4499            B4BSCL12 4500-4507 .2   B4BSCL22 4508-4515 .2
        B4BSCL32 4516-4523 .2   B4BSCL42 4524-4531 .2   B4BSCL1A 4532-4539 .2
        B4BSCL2A 4540-4547 .2   B4BSCL3A 4548-4555 .2   B4BSCL4A 4556-4563 .2
        B4BSCL14 4564-4571 .2   B4AWAVL 4572-4573       B4AWIMPU 4574
        B4AWMARK 4575           B4AWDAYS 4576           B4AWPART 4577
        B4AWIDIO 4578           B4AWTMZN 4579           B4AWLAG 4580-4581
        B4AWBGNM 4582-4583      B4AWENDM 4584-4585      B4AD11 4586
        B4AD12 4587-4592 .1     B4AD13 4593             B4AD13S 4594-4599 .1
        B4AD14 4600-4605 .1     B4AD15 4606-4611 .1     B4AD16 4612
        B4AD16M 4613-4614       B4AD17 4615             B4AD17M 4616
        B4AD18 $4617-4621       B4AD18A 4622            B4AD19 4623-4628 .1
        B4AD110 4629            B4AD111 4630-4631       B4AD112 4632
        B4AD113 4633            B4AD114 4634-4635       B4AD115 $4636-4640
        B4AD115A 4641           B4AD116 $4642-4646      B4AD116A 4647
        B4AD117 4648            B4AD118 4649            B4AD119 4650
        B4AD120 4651            B4AD21 4652             B4AD22 4653-4658 .1
        B4AD23 4659             B4AD23S 4660-4665 .1    B4AD24 4666-4671 .1
        B4AD25 4672-4677 .1     B4AD26 4678             B4AD26M 4679-4680
        B4AD27 4681             B4AD27M 4682            B4AD28 $4683-4687
        B4AD28A 4688            B4AD29 4689-4694 .1     B4AD210 4695
        B4AD211 4696-4697       B4AD212 4698            B4AD213 4699
        B4AD214 4700-4701       B4AD215 $4702-4706      B4AD215A 4707
        B4AD216 $4708-4712      B4AD216A 4713           B4AD217 4714
        B4AD218 4715            B4AD219 4716            B4AD220 4717
        B4AD31 4718             B4AD32 4719-4724 .1     B4AD33 4725
        B4AD33S 4726-4731 .1    B4AD34 4732-4737 .1     B4AD35 4738-4743 .1
        B4AD36 4744             B4AD36M 4745-4746       B4AD37 4747
        B4AD37M 4748            B4AD38 $4749-4753       B4AD38A 4754
        B4AD39 4755-4760 .1     B4AD310 4761            B4AD311 4762-4763
        B4AD312 4764            B4AD313 4765            B4AD314 4766-4767
        B4AD315 $4768-4772      B4AD315A 4773           B4AD316 $4774-4778
        B4AD316A 4779           B4AD317 4780            B4AD318 4781
        B4AD319 4782            B4AD320 4783            B4AD41 4784
        B4AD42 4785-4790 .1     B4AD43 4791             B4AD43S 4792-4797 .1
        B4AD44 4798-4803 .1     B4AD45 4804-4809 .1     B4AD46 4810
        B4AD46M 4811-4812       B4AD47 4813             B4AD47M 4814
        B4AD48 $4815-4819       B4AD48A 4820            B4AD49 4821-4826 .1
        B4AD410 4827            B4AD411 4828-4829       B4AD412 4830
        B4AD413 4831            B4AD414 4832-4833       B4AD415 $4834-4838
        B4AD415A 4839           B4AD416 $4840-4844      B4AD416A 4845
        B4AD417 4846            B4AD418 4847            B4AD419 4848
        B4AD420 4849            B4AD51 4850             B4AD52 4851-4856 .1
        B4AD53 4857             B4AD53S 4858-4863 .1    B4AD54 4864-4869 .1
        B4AD55 4870-4875 .1     B4AD56 4876             B4AD56M 4877-4878
        B4AD57 4879             B4AD57M 4880            B4AD58 $4881-4885
        B4AD58A 4886            B4AD59 4887-4892 .1     B4AD510 4893
        B4AD511 4894-4895       B4AD512 4896            B4AD513 4897
        B4AD514 4898-4899       B4AD515 $4900-4904      B4AD515A 4905
        B4AD516 $4906-4910      B4AD516A 4911           B4AD517 4912
        B4AD518 4913            B4AD519 4914            B4AD520 4915
        B4AD61 4916             B4AD62 4917-4922 .1     B4AD63 4923
        B4AD63S 4924-4929 .1    B4AD64 4930-4935 .1     B4AD65 4936-4941 .1
        B4AD66 4942             B4AD66M 4943-4944       B4AD67 4945
        B4AD67M 4946            B4AD68 $4947-4951       B4AD68A 4952
        B4AD69 4953-4958 .1     B4AD610 4959            B4AD611 4960-4961
        B4AD612 4962            B4AD613 4963            B4AD614 4964-4965
        B4AD615 $4966-4970      B4AD615A 4971           B4AD616 $4972-4976
        B4AD616A 4977           B4AD617 4978            B4AD618 4979
        B4AD619 4980            B4AD620 4981            B4AD71 4982
        B4AD72 4983-4988 .1     B4AD73 4989             B4AD73S 4990-4995 .1
        B4AD74 4996-5001 .1     B4AD75 5002-5007 .1     B4AD76 5008
        B4AD76M 5009-5010       B4AD77 5011             B4AD77M 5012
        B4AD78 $5013-5017       B4AD78A 5018            B4AD79 5019-5024 .1
        B4AD710 5025            B4AD711 5026-5027       B4AD712 5028
        B4AD713 5029            B4AD714 5030-5031       B4AD715 $5032-5036
        B4AD715A 5037           B4AD716 $5038-5042      B4AD716A 5043
        B4AD717 5044            B4AD718 5045            B4AD719 5046
        B4AD720 5047            B4WPSTI $5048-5058      B4WR1SDY $5059-5068
        B4WR1ST $5069-5079      B4WR1EDY $5080-5089     B4WR1ET $5090-5100
        B4WR1TAC 5101-5106      B4WR1ACM 5107-5112 .2   B4WR1MAC 5113-5116
        B4WR1IAC 5117-5118      B4WR1SW 5119-5123 .2    B4WR1WT 5124-5129 .2
        B4WR1PW 5130-5135 .2    B4WR1WB 5136-5138       B4WR1AWB 5139-5144 .2
        B4WR1SLT 5145-5151 .1   B4WR1PSL 5152-5157 .2   B4WR1SLB 5158-5160
        B4WR1ASB 5161-5166 .2   B4WS1SDY $5167-5176     B4WS1ST $5177-5187
        B4WS1EDY $5188-5197     B4WS1ET $5198-5208      B4WS1TAC 5209-5214
        B4WS1ACM 5215-5220 .2   B4WS1MAC 5221-5224      B4WS1IAC 5225-5226
        B4WS1ISW 5227-5231 .2   B4WS1OL 5232-5237 .2    B4WS1SNT 5238-5243 .2
        B4WS1EFF 5244-5249 .2   B4WS1WSO 5250-5255 .2   B4WS1WT 5256-5261 .2
        B4WS1PW 5262-5267 .2    B4WS1WB 5268-5270       B4WS1AWB 5271-5276 .2
        B4WS1SLT 5277-5283 .1   B4WS1PSL 5284-5289 .2   B4WS1SLB 5290-5292
        B4WS1ASB 5293-5298 .2   B4WA1SDY $5299-5308     B4WA1ST $5309-5319
        B4WA1EDY $5320-5329     B4WA1ET $5330-5340      B4WA1TAC 5341-5347
        B4WA1ACM 5348-5354 .2   B4WA1MAC 5355-5358      B4WA1IAC 5359-5360
        B4WA1ISW 5361-5364 .2   B4WA1WT 5365-5370 .1    B4WA1PW 5371-5376 .2
        B4WA1WB 5377-5379       B4WA1AWB 5380-5385 .2   B4WA1SLT 5386-5391 .2
        B4WA1PSL 5392-5397 .2   B4WA1SLB 5398-5400      B4WA1ASB 5401-5406 .2
        B4WR2SDY $5407-5416     B4WR2ST $5417-5427      B4WR2EDY $5428-5437
        B4WR2ET $5438-5448      B4WR2TAC 5449-5454      B4WR2ACM 5455-5460 .2
        B4WR2MAC 5461-5464      B4WR2IAC 5465-5466      B4WR2SW 5467-5471 .2
        B4WR2WT 5472-5477 .2    B4WR2PW 5478-5483 .2    B4WR2WB 5484-5486
        B4WR2AWB 5487-5492 .2   B4WR2SLT 5493-5499 .1   B4WR2PSL 5500-5505 .2
        B4WR2SLB 5506-5508      B4WR2ASB 5509-5514 .2   B4WS2SDY $5515-5524
        B4WS2ST $5525-5535      B4WS2EDY $5536-5545     B4WS2ET $5546-5556
        B4WS2TAC 5557-5562      B4WS2ACM 5563-5568 .2   B4WS2MAC 5569-5572
        B4WS2IAC 5573-5574      B4WS2ISW 5575-5579 .2   B4WS2OL 5580-5585 .2
        B4WS2SNT 5586-5591 .2   B4WS2EFF 5592-5597 .2   B4WS2WSO 5598-5603 .2
        B4WS2WT 5604-5609 .2    B4WS2PW 5610-5615 .2    B4WS2WB 5616-5618
        B4WS2AWB 5619-5624 .2   B4WS2SLT 5625-5631 .1   B4WS2PSL 5632-5637 .2
        B4WS2SLB 5638-5640      B4WS2ASB 5641-5646 .2   B4WA2SDY $5647-5656
        B4WA2ST $5657-5667      B4WA2EDY $5668-5677     B4WA2ET $5678-5688
        B4WA2TAC 5689-5695      B4WA2ACM 5696-5702 .2   B4WA2MAC 5703-5706
        B4WA2IAC 5707-5708      B4WA2ISW 5709-5712 .2   B4WA2WT 5713-5718 .1
        B4WA2PW 5719-5724 .2    B4WA2WB 5725-5727       B4WA2AWB 5728-5733 .2
        B4WA2SLT 5734-5739 .2   B4WA2PSL 5740-5745 .2   B4WA2SLB 5746-5748
        B4WA2ASB 5749-5754 .2   B4WR3SDY $5755-5764     B4WR3ST $5765-5775
        B4WR3EDY $5776-5785     B4WR3ET $5786-5796      B4WR3TAC 5797-5802
        B4WR3ACM 5803-5808 .2   B4WR3MAC 5809-5812      B4WR3IAC 5813-5814
        B4WR3SW 5815-5819 .2    B4WR3WT 5820-5825 .2    B4WR3PW 5826-5831 .2
        B4WR3WB 5832-5834       B4WR3AWB 5835-5840 .2   B4WR3SLT 5841-5847 .1
        B4WR3PSL 5848-5853 .2   B4WR3SLB 5854-5856      B4WR3ASB 5857-5862 .2
        B4WS3SDY $5863-5872     B4WS3ST $5873-5883      B4WS3EDY $5884-5893
        B4WS3ET $5894-5904      B4WS3TAC 5905-5910      B4WS3ACM 5911-5916 .2
        B4WS3MAC 5917-5920      B4WS3IAC 5921-5922      B4WS3ISW 5923-5927 .2
        B4WS3OL 5928-5933 .2    B4WS3SNT 5934-5939 .2   B4WS3EFF 5940-5945 .2
        B4WS3WSO 5946-5951 .2   B4WS3WT 5952-5957 .2    B4WS3PW 5958-5963 .2
        B4WS3WB 5964-5966       B4WS3AWB 5967-5972 .2   B4WS3SLT 5973-5979 .1
        B4WS3PSL 5980-5985 .2   B4WS3SLB 5986-5988      B4WS3ASB 5989-5994 .2
        B4WA3SDY $5995-6004     B4WA3ST $6005-6015      B4WA3EDY $6016-6025
        B4WA3ET $6026-6036      B4WA3TAC 6037-6043      B4WA3ACM 6044-6050 .2
        B4WA3MAC 6051-6054      B4WA3IAC 6055-6056      B4WA3ISW 6057-6060 .2
        B4WA3WT 6061-6066 .1    B4WA3PW 6067-6072 .2    B4WA3WB 6073-6075
        B4WA3AWB 6076-6081 .2   B4WA3SLT 6082-6087 .2   B4WA3PSL 6088-6093 .2
        B4WA3SLB 6094-6096      B4WA3ASB 6097-6102 .2   B4WR4SDY $6103-6112
        B4WR4ST $6113-6123      B4WR4EDY $6124-6133     B4WR4ET $6134-6144
        B4WR4TAC 6145-6150      B4WR4ACM 6151-6156 .2   B4WR4MAC 6157-6160
        B4WR4IAC 6161-6162      B4WR4SW 6163-6167 .2    B4WR4WT 6168-6173 .2
        B4WR4PW 6174-6179 .2    B4WR4WB 6180-6182       B4WR4AWB 6183-6188 .2
        B4WR4SLT 6189-6195 .1   B4WR4PSL 6196-6201 .2   B4WR4SLB 6202-6204
        B4WR4ASB 6205-6210 .2   B4WS4SDY $6211-6220     B4WS4ST $6221-6231
        B4WS4EDY $6232-6241     B4WS4ET $6242-6252      B4WS4TAC 6253-6258
        B4WS4ACM 6259-6264 .2   B4WS4MAC 6265-6268      B4WS4IAC 6269-6270
        B4WS4ISW 6271-6275 .2   B4WS4OL 6276-6281 .2    B4WS4SNT 6282-6287 .2
        B4WS4EFF 6288-6293 .2   B4WS4WSO 6294-6299 .2   B4WS4WT 6300-6305 .2
        B4WS4PW 6306-6311 .2    B4WS4WB 6312-6314       B4WS4AWB 6315-6320 .2
        B4WS4SLT 6321-6327 .1   B4WS4PSL 6328-6333 .2   B4WS4SLB 6334-6336
        B4WS4ASB 6337-6342 .2   B4WA4SDY $6343-6352     B4WA4ST $6353-6363
        B4WA4EDY $6364-6373     B4WA4ET $6374-6384      B4WA4TAC 6385-6391
        B4WA4ACM 6392-6398 .2   B4WA4MAC 6399-6402      B4WA4IAC 6403-6404
        B4WA4ISW 6405-6408 .2   B4WA4WT 6409-6414 .1    B4WA4PW 6415-6420 .2
        B4WA4WB 6421-6423       B4WA4AWB 6424-6429 .2   B4WA4SLT 6430-6435 .2
        B4WA4PSL 6436-6441 .2   B4WA4SLB 6442-6444      B4WA4ASB 6445-6450 .2
        B4WR5SDY $6451-6460     B4WR5ST $6461-6471      B4WR5EDY $6472-6481
        B4WR5ET $6482-6492      B4WR5TAC 6493-6498      B4WR5ACM 6499-6504 .2
        B4WR5MAC 6505-6508      B4WR5IAC 6509-6510      B4WR5SW 6511-6515 .2
        B4WR5WT 6516-6521 .2    B4WR5PW 6522-6527 .2    B4WR5WB 6528-6530
        B4WR5AWB 6531-6536 .2   B4WR5SLT 6537-6543 .1   B4WR5PSL 6544-6549 .2
        B4WR5SLB 6550-6552      B4WR5ASB 6553-6558 .2   B4WS5SDY $6559-6568
        B4WS5ST $6569-6579      B4WS5EDY $6580-6589     B4WS5ET $6590-6600
        B4WS5TAC 6601-6606      B4WS5ACM 6607-6612 .2   B4WS5MAC 6613-6616
        B4WS5IAC 6617-6618      B4WS5ISW 6619-6623 .2   B4WS5OL 6624-6629 .2
        B4WS5SNT 6630-6635 .2   B4WS5EFF 6636-6641 .2   B4WS5WSO 6642-6647 .2
        B4WS5WT 6648-6653 .2    B4WS5PW 6654-6659 .2    B4WS5WB 6660-6662
        B4WS5AWB 6663-6668 .2   B4WS5SLT 6669-6675 .1   B4WS5PSL 6676-6681 .2
        B4WS5SLB 6682-6684      B4WS5ASB 6685-6690 .2   B4WA5SDY $6691-6700
        B4WA5ST $6701-6711      B4WA5EDY $6712-6721     B4WA5ET $6722-6732
        B4WA5TAC 6733-6739      B4WA5ACM 6740-6746 .2   B4WA5MAC 6747-6750
        B4WA5IAC 6751-6752      B4WA5ISW 6753-6756 .2   B4WA5WT 6757-6762 .1
        B4WA5PW 6763-6768 .2    B4WA5WB 6769-6771       B4WA5AWB 6772-6777 .2
        B4WA5SLT 6778-6783 .2   B4WA5PSL 6784-6789 .2   B4WA5SLB 6790-6792
        B4WA5ASB 6793-6798 .2   B4WR6SDY $6799-6808     B4WR6ST $6809-6819
        B4WR6EDY $6820-6829     B4WR6ET $6830-6840      B4WR6TAC 6841-6846
        B4WR6ACM 6847-6852 .2   B4WR6MAC 6853-6856      B4WR6IAC 6857-6858
        B4WR6SW 6859-6863 .2    B4WR6WT 6864-6869 .2    B4WR6PW 6870-6875 .2
        B4WR6WB 6876-6878       B4WR6AWB 6879-6884 .2   B4WR6SLT 6885-6891 .1
        B4WR6PSL 6892-6897 .2   B4WR6SLB 6898-6900      B4WR6ASB 6901-6906 .2
        B4WS6SDY $6907-6916     B4WS6ST $6917-6927      B4WS6EDY $6928-6937
        B4WS6ET $6938-6948      B4WS6TAC 6949-6954      B4WS6ACM 6955-6960 .2
        B4WS6MAC 6961-6964      B4WS6IAC 6965-6966      B4WS6ISW 6967-6971 .2
        B4WS6OL 6972-6977 .2    B4WS6SNT 6978-6983 .2   B4WS6EFF 6984-6989 .2
        B4WS6WSO 6990-6995 .2   B4WS6WT 6996-7001 .2    B4WS6PW 7002-7007 .2
        B4WS6WB 7008-7010       B4WS6AWB 7011-7016 .2   B4WS6SLT 7017-7023 .1
        B4WS6PSL 7024-7029 .2   B4WS6SLB 7030-7032      B4WS6ASB 7033-7038 .2
        B4WA6SDY $7039-7048     B4WA6ST $7049-7059      B4WA6EDY $7060-7069
        B4WA6ET $7070-7080      B4WA6TAC 7081-7087      B4WA6ACM 7088-7094 .2
        B4WA6MAC 7095-7098      B4WA6IAC 7099-7100      B4WA6ISW 7101-7104 .2
        B4WA6WT 7105-7110 .1    B4WA6PW 7111-7116 .2    B4WA6WB 7117-7119
        B4WA6AWB 7120-7125 .2   B4WA6SLT 7126-7131 .2   B4WA6PSL 7132-7137 .2
        B4WA6SLB 7138-7140      B4WA6ASB 7141-7146 .2   B4WR7SDY $7147-7156
        B4WR7ST $7157-7167      B4WR7EDY $7168-7177     B4WR7ET $7178-7188
        B4WR7TAC 7189-7194      B4WR7ACM 7195-7200 .2   B4WR7MAC 7201-7204
        B4WR7IAC 7205-7206      B4WR7SW 7207-7211 .2    B4WR7WT 7212-7217 .2
        B4WR7PW 7218-7223 .2    B4WR7WB 7224-7226       B4WR7AWB 7227-7232 .2
        B4WR7SLT 7233-7239 .1   B4WR7PSL 7240-7245 .2   B4WR7SLB 7246-7248
        B4WR7ASB 7249-7254 .2   B4WS7SDY $7255-7264     B4WS7ST $7265-7275
        B4WS7EDY $7276-7285     B4WS7ET $7286-7296      B4WS7TAC 7297-7302
        B4WS7ACM 7303-7308 .2   B4WS7MAC 7309-7312      B4WS7IAC 7313-7314
        B4WS7ISW 7315-7319 .2   B4WS7OL 7320-7325 .2    B4WS7SNT 7326-7331 .2
        B4WS7EFF 7332-7337 .2   B4WS7WSO 7338-7343 .2   B4WS7WT 7344-7349 .2
        B4WS7PW 7350-7355 .2    B4WS7WB 7356-7358       B4WS7AWB 7359-7364 .2
        B4WS7SLT 7365-7371 .1   B4WS7PSL 7372-7377 .2   B4WS7SLB 7378-7380
        B4WS7ASB 7381-7386 .2   B4VHAWR 7387-7388       B4VHADW 7389-7390
        B4VHATH 7391-7392       B4VHASC 7393-7394       B4VHATO 7395-7396
        B4VHAKN 7397-7398       B4VHASP 7399-7400       B4VHABR 7401-7402
        B4VHASM 7403-7404       B4VHAOB 7405-7406       B4VHAKI 7407-7408
        B4VHAOE 7409-7410       B4VHALT 7411-7413       B4VHART 7414-7416
        B4VHALQ 7417-7420       B4VHADZ 7421-7422       B4VHADR 7423-7424
        B4VHADL 7425-7426       B4VST $7427-7431        B4VATEH 7432-7438 .2
        B4VCAFH 7439-7445 .2    B4VCIGH 7446-7452 .2    B4VCLB 7453
        B4VCLBT 7454            B4VCIRC 7455            B4VLC 7456
        B4VS1T $7457-7461       B4VSRB1 7462-7463       B4VTASK1 $7464-7473
        B4VCS1 7474             B4VSRCS1 7475-7476      B4VSRR1 7477-7478
        B4VTASK2 $7479-7488     B4VCS2 7489             B4VSRCS2 7490-7491
        B4VSRR2 7492-7493       B4VS2T $7494-7498       B4VSRU1 7499-7500
        B4VS3T $7501-7505       B4VS4T $7506-7510       B4VSTS1 7511-7513
        B4VS1S2 7514-7516       B4VS2S3 7517-7519       B4VS3S4 7520-7522
        B4ZPPHYS 7523-7524      B4ZPHYSD 7525-7526      B4VTERM 7527
        B4VPACEM 7528           B4VPPSS 7529            B4VPPSR 7530
        B4VBEQ 7531             B4VBEQR 7532            B4VMEQ 7533
        B4VMEQR 7534            B4VPEQ 7535             B4VPEQR 7536
        B4VSEQ 7537             B4VSEQR 7538            B4VR1EQ 7539
        B4VR1EQR 7540           B4VR2EQ 7541            B4VR2EQR 7542
        B4VUEQ 7543             B4VUEQR 7544            B4VB1DU 7545-7548
        B4VB1BEG 7549-7555 .1   B4VB1END 7556-7562 .1   B4VB1MAX 7563-7569 .1
        B4VB1NU 7570-7573       B4VB1HR 7574-7580 .1    B4VB1SD 7581-7588 .2
        B4VB1LSD 7589-7596 .2   B4VB1RM 7597-7604 .2    B4VB1LRM 7605-7612 .2
        B4VB1LF 7613-7620 .2    B4VB1LLF 7621-7628 .2   B4VB1HF 7629-7636 .2
        B4VB1LHF 7637-7644 .2   B4VB2DU 7645-7648       B4VB2BEG 7649-7655 .1
        B4VB2END 7656-7662 .1   B4VB2MAX 7663-7669 .1   B4VB2NU 7670-7673
        B4VB2HR 7674-7680 .1    B4VB2SD 7681-7688 .2    B4VB2LSD 7689-7696 .2
        B4VB2RM 7697-7704 .2    B4VB2LRM 7705-7712 .2   B4VB2LF 7713-7720 .2
        B4VB2LLF 7721-7728 .2   B4VB2HF 7729-7736 .2    B4VB2LHF 7737-7744 .2
        B4VM1DU 7745-7748       B4VM1BEG 7749-7755 .1   B4VM1END 7756-7762 .1
        B4VM1MAX 7763-7769 .1   B4VM1NU 7770-7773       B4VM1HR 7774-7780 .1
        B4VM1SD 7781-7788 .2    B4VM1LSD 7789-7796 .2   B4VM1RM 7797-7804 .2
        B4VM1LRM 7805-7812 .2   B4VM1LF 7813-7820 .2    B4VM1LLF 7821-7828 .2
        B4VM1HF 7829-7836 .2    B4VM1LHF 7837-7844 .2   B4VP1DU 7845-7848
        B4VP1BEG 7849-7855 .1   B4VP1END 7856-7862 .1   B4VP1MAX 7863-7869 .1
        B4VP1NU 7870-7873       B4VP1HR 7874-7880 .1    B4VP1SD 7881-7888 .2
        B4VP1LSD 7889-7896 .2   B4VP1RM 7897-7904 .2    B4VP1LRM 7905-7912 .2
        B4VP1LF 7913-7920 .2    B4VP1LLF 7921-7928 .2   B4VP1HF 7929-7936 .2
        B4VP1LHF 7937-7944 .2   B4VP2DU 7945-7948       B4VP2BEG 7949-7955 .1
        B4VP2END 7956-7962 .1   B4VP2MAX 7963-7969 .1   B4VP2NU 7970-7973
        B4VP2HR 7974-7980 .1    B4VP2SD 7981-7988 .2    B4VP2LSD 7989-7996 .2
        B4VP2RM 7997-8004 .2    B4VP2LRM 8005-8012 .2   B4VP2LF 8013-8020 .2
        B4VP2LLF 8021-8028 .2   B4VP2HF 8029-8036 .2    B4VP2LHF 8037-8044 .2
        B4VR1DU 8045-8048       B4VR1BEG 8049-8055 .1   B4VR1END 8056-8062 .1
        B4VR1MAX 8063-8069 .1   B4VR1NU 8070-8073       B4VR1HR 8074-8080 .1
        B4VR1SD 8081-8088 .2    B4VR1LSD 8089-8096 .2   B4VR1RM 8097-8104 .2
        B4VR1LRM 8105-8112 .2   B4VR1LF 8113-8120 .2    B4VR1LLF 8121-8128 .2
        B4VR1HF 8129-8136 .2    B4VR1LHF 8137-8144 .2   B4VR2DU 8145-8148
        B4VR2BEG 8149-8155 .1   B4VR2END 8156-8162 .1   B4VR2MAX 8163-8169 .1
        B4VR2NU 8170-8173       B4VR2HR 8174-8180 .1    B4VR2SD 8181-8188 .2
        B4VR2LSD 8189-8196 .2   B4VR2RM 8197-8204 .2    B4VR2LRM 8205-8212 .2
        B4VR2LF 8213-8220 .2    B4VR2LLF 8221-8228 .2   B4VR2HF 8229-8236 .2
        B4VR2LHF 8237-8244 .2   B4VS1DU 8245-8248       B4VS1BEG 8249-8255 .1
        B4VS1END 8256-8262 .1   B4VS1MAX 8263-8269 .1   B4VS1NU 8270-8273
        B4VS1HR 8274-8280 .1    B4VS1SD 8281-8288 .2    B4VS1LSD 8289-8296 .2
        B4VS1RM 8297-8304 .2    B4VS1LRM 8305-8312 .2   B4VS1LF 8313-8320 .2
        B4VS1LLF 8321-8328 .2   B4VS1HF 8329-8336 .2    B4VS1LHF 8337-8344 .2
        B4VS2DU 8345-8348       B4VS2BEG 8349-8355 .1   B4VS2END 8356-8362 .1
        B4VS2MAX 8363-8369 .1   B4VS2NU 8370-8373       B4VS2HR 8374-8380 .1
        B4VS2SD 8381-8388 .2    B4VS2LSD 8389-8396 .2   B4VS2RM 8397-8404 .2
        B4VS2LRM 8405-8412 .2   B4VS2LF 8413-8420 .2    B4VS2LLF 8421-8428 .2
        B4VS2HF 8429-8436 .2    B4VS2LHF 8437-8444 .2   B4VU1DU 8445-8448
        B4VU1BEG 8449-8455 .1   B4VU1END 8456-8462 .1   B4VU1MAX 8463-8469 .1
        B4VU1NU 8470-8473       B4VU1HR 8474-8480 .1    B4VU1SD 8481-8488 .2
        B4VU1LSD 8489-8496 .2   B4VU1RM 8497-8504 .2    B4VU1LRM 8505-8512 .2
        B4VU1LF 8513-8520 .2    B4VU1LLF 8521-8528 .2   B4VU1HF 8529-8536 .2
        B4VU1LHF 8537-8544 .2   ;


* SAS LABEL STATEMENT;

LABEL 
   M2ID    = 'MIDUS 2 ID number' 
   M2FAMNUM= 'MIDUS 2 Family number' 
   SAMPLMAJ= 'Major sample identification (aka Sample)' 
   B1PAGE_M2= 'Age determined by subtracting DOB_Final from b1ipidate' 
   B1PGENDER= 'Gender' 
   B4ZSITE = 'P4 data collection site' 
   B4ZCOMPM= 'Month P4 data was collected' 
   B4ZCOMPY= 'Year P4 data was collected' 
   B4ZRZONE= 'Time Zone of Residence at P4 Visit' 
   B4ZSZONE= 'Time Zone of P4 Site' 
   B4ZB1PLG= 'Lag P1 Phone to P4 complete in months,rounded' 
   B4ZB1SLG= 'Lag P1 SAQ to P4 complete in months,rounded' 
   B4ZB1CLG= 'Lag P1 Cognitive Battery to P4 complete in months,rounded' 
   B4ZAGE  = 'Respondent age at P4 data collection' 
   B4Q1A   = 'MASQ Felt sad' 
   B4Q1B   = 'MASQ Startled easily' 
   B4Q1C   = 'MASQ Felt cheerful' 
   B4Q1D   = 'MASQ Felt Afraid' 
   B4Q1E   = 'MASQ Felt discouraged' 
   B4Q1F   = 'MASQ Hands were shaky' 
   B4Q1G   = 'MASQ Felt optimistic' 
   B4Q1H   = 'MASQ Had diarrhea' 
   B4Q1I   = 'MASQ Felt worthless' 
   B4Q1J   = 'MASQ Felt really happy' 
   B4Q1K   = 'MASQ Felt nervous' 
   B4Q1L   = 'MASQ Felt depressed' 
   B4Q1M   = 'MASQ Was short of breath' 
   B4Q1N   = 'MASQ Felt uneasy' 
   B4Q1O   = 'MASQ Was proud of myself' 
   B4Q1P   = 'MASQ Had a lump in my throat' 
   B4Q1Q   = 'MASQ Felt faint' 
   B4Q1R   = 'MASQ Felt unattractive' 
   B4Q1S   = 'MASQ Had hot or cold spells' 
   B4Q1T   = 'MASQ Had an upset stomach' 
   B4Q1U   = 'MASQ Felt like a failure' 
   B4Q1V   = 'MASQ Felt like I was having a lot of fun' 
   B4Q1W   = 'MASQ Blamed myself for a lot of things' 
   B4Q1X   = 'MASQ Hands were cold or sweaty' 
   B4Q1Y   = 'MASQ Felt withdrawn from other people' 
   B4Q1Z   = 'MASQ Felt keyed up, on edge' 
   B4Q1AA  = 'MASQ Felt like I had a lot of energy' 
   B4Q1BB  = 'MASQ Was trembling or shaking' 
   B4Q1CC  = 'MASQ Felt inferior to others' 
   B4Q1DD  = 'MASQ Had trouble swallowing' 
   B4Q1EE  = 'MASQ Felt like crying' 
   B4Q1FF  = 'MASQ Was unable to relax' 
   B4Q1GG  = 'MASQ Felt really slowed down' 
   B4Q1HH  = 'MASQ Was disappointed in myself' 
   B4Q1II  = 'MASQ Felt nauseous' 
   B4Q1JJ  = 'MASQ Felt hopeless' 
   B4Q1KK  = 'MASQ Felt dizzy or lightheaded' 
   B4Q1LL  = 'MASQ Felt sluggish or tired' 
   B4Q1MM  = 'MASQ Felt really up or lively' 
   B4Q1NN  = 'MASQ Had pain in my chest' 
   B4Q1OO  = 'MASQ Felt really bored' 
   B4Q1PP  = 'MASQ Felt like I was choking' 
   B4Q1QQ  = 'MASQ Looked forward with enjoyment' 
   B4Q1RR  = 'MASQ Muscles twitched or trembled' 
   B4Q1SS  = 'MASQ Felt pessimistic about the future' 
   B4Q1TT  = 'MASQ Had a very dry mouth' 
   B4Q1UU  = 'MASQ Had a lot of interesting things to do' 
   B4Q1VV  = 'MASQ Was afraid I was going to die' 
   B4Q1WW  = 'MASQ Felt like I had accomplished a lot' 
   B4Q1XX  = 'MASQ Felt took extra effort get started' 
   B4Q1YY  = 'MASQ Felt nothing was very enjoyable' 
   B4Q1ZZ  = 'MASQ Heart was racing or pounding' 
   B4Q1AAA = 'MASQ Felt had a lot to look forward to' 
   B4Q1BBB = 'MASQ Felt numbness or tingling in body' 
   B4Q1CCC = 'MASQ Felt tense or high-strung' 
   B4Q1DDD = 'MASQ Felt hopeful about the future' 
   B4Q1EEE = 'MASQ Felt nothing fun/interesting to do' 
   B4Q1FFF = 'MASQ Seemed to move quickly and easily' 
   B4Q1GGG = 'MASQ Muscles were tense or sore' 
   B4Q1HHH = 'MASQ Felt really good about myself' 
   B4Q1III = 'MASQ Thought about death or suicide' 
   B4Q1JJJ = 'MASQ Had to urinate frequently' 
   B4Q1KKK = 'MASQ Felt like I am a good person' 
   B4Q1LLL = 'MASQ Felt guilty' 
   B4QMA_D = 'MASQ: General Distress-Depressive Symptoms' 
   B4QMA_A = 'MASQ: General Distress-Anxious Symptoms' 
   B4QMA_LI= 'MASQ: Loss of Interest' 
   B4QMA_AA= 'MASQ: Anxious Arousal' 
   B4QMA_PA= 'MASQ: High Positive Affect' 
   B4Q2    = 'How rate your day overall' 
   B4Q3A   = 'CESD Unusually bothered by things' 
   B4Q3B   = 'CESD Appetite was poor' 
   B4Q3C   = 'CESD Could not shake off blues' 
   B4Q3D   = 'CESD Felt I was as good as others' 
   B4Q3E   = 'CESD Trouble keeping mind on tasks' 
   B4Q3F   = 'CESD Felt depressed' 
   B4Q3G   = 'CESD Everything I did was an effort' 
   B4Q3H   = 'CESD Hopeful about the future' 
   B4Q3I   = 'CESD Thought my life had been a failure' 
   B4Q3J   = 'CESD Felt fearful' 
   B4Q3K   = 'CESD Sleep was restless' 
   B4Q3L   = 'CESD I was happy' 
   B4Q3M   = 'CESD I talked less than usual' 
   B4Q3N   = 'CESD I felt lonely' 
   B4Q3O   = 'CESD People were unfriendly' 
   B4Q3P   = 'CESD I enjoyed life' 
   B4Q3Q   = 'CESD I had crying spells' 
   B4Q3R   = 'CESD I felt sad' 
   B4Q3S   = 'CESD I felt that people dislike me' 
   B4Q3T   = 'CESD I could not get going' 
   B4QCESD = 'CESD: Center for Epidemiologic Studies Depression Scale' 
   B4Q4A   = 'PSS Upset by something unexpected' 
   B4Q4B   = 'PSS Unable to control important things' 
   B4Q4C   = 'PSS Felt nervous and stressed' 
   B4Q4D   = 'PSS Confident to handle personal problems' 
   B4Q4E   = 'PSS Things were going your way' 
   B4Q4F   = 'PSS Could not cope with all things to do' 
   B4Q4G   = 'PSS Able to control irritations in life' 
   B4Q4H   = 'PSS Felt on top of things' 
   B4Q4I   = 'PSS Angered by things outside control' 
   B4Q4J   = 'PSS Difficulties piling up cant overcome' 
   B4QPS_PS= 'Percieved Stress Scale' 
   B4Q5A   = 'ANG-EXP Withdraw from people' 
   B4Q5B   = 'ANG-EXP Pout or sulk' 
   B4Q5C   = 'ANG-EXP Angrier than willing to admit' 
   B4Q5D   = 'ANG-EXP Secretly critical of others' 
   B4Q5E   = 'ANG-EXP Boil inside; dont show it' 
   B4Q5F   = 'ANG-EXP Harbor grudges' 
   B4Q5G   = 'ANG-EXP Keep things in' 
   B4Q5H   = 'ANG-EXP Irritated more than others aware' 
   B4Q5I   = 'ANG-EXP Slam doors' 
   B4Q5J   = 'ANG-EXP Say nasty things' 
   B4Q5K   = 'ANG-EXP Make sarcastic remarks' 
   B4Q5L   = 'ANG-EXP Argue with others' 
   B4Q5M   = 'ANG-EXP Lose my temper' 
   B4Q5N   = 'ANG-EXP Strike out at what infuriates me' 
   B4Q5O   = 'ANG-EXP Express my anger' 
   B4Q5P   = 'ANG-EXP Someone annoys me, I tell them' 
   B4Q5Q   = 'ANG-EXP Control my temper' 
   B4Q5R   = 'ANG-EXP Keep my cool' 
   B4Q5S   = 'ANG-EXP Calm down faster' 
   B4Q5T   = 'ANG-EXP Make threats' 
   B4QAE_AI= 'Spielberger Anger Expression: Anger/In' 
   B4QAE_AO= 'Spielberger Anger Expression: Anger/Out' 
   B4QAE_AC= 'Spielberger Anger Expression: Anger/Control' 
   B4Q5U   = 'ANG-EXP Do nothing' 
   B4Q5V   = 'ANG-EXP Ignore what angers me' 
   B4QAE_AA= 'Anger Expresson: Adjustment Scale' 
   B4Q6A   = 'T- ANG Fiery temper' 
   B4Q6B   = 'T- ANG Quick tempered' 
   B4Q6C   = 'T- ANG Hotheaded person' 
   B4Q6D   = 'T- ANG Annoyed if singled out & corrected' 
   B4Q6E   = 'T- ANG Furious when criticized publicly' 
   B4Q6F   = 'T- ANG Angry if slowed by others mistakes' 
   B4Q6G   = 'T- ANG Infuriated; good job; bad review' 
   B4Q6H   = 'T- ANG Fly off the handle' 
   B4Q6I   = 'T- ANG Annoyed no recognition; good work' 
   B4Q6J   = 'T- ANG People think always right irritate me' 
   B4Q6K   = 'T- ANG Get mad, say nasty things' 
   B4Q6L   = 'T- ANG Feel irritated' 
   B4Q6M   = 'T- ANG Feel angry' 
   B4Q6N   = 'T- ANG Get frustrated, feel like hitting' 
   B4Q6O   = 'T- ANG Blood boils under pressure' 
   B4QTA_AG= 'Spielberger Trait Anger Inventory' 
   B4QTA_AT= 'Spielberger Trait Anger: Angry Temperament' 
   B4QTA_AR= 'Spielberger Anger: Angry Reaction' 
   B4Q7A   = 'T- ANX Feel pleasant' 
   B4Q7B   = 'T- ANX Tire quickly' 
   B4Q7C   = 'T- ANX Feel like crying' 
   B4Q7D   = 'T- ANX Wish could be happy as others' 
   B4Q7E   = 'T- ANX Lose out because slow to decide' 
   B4Q7F   = 'T- ANX Feel rested' 
   B4Q7G   = 'T- ANX Calm, cool and collected' 
   B4Q7H   = 'T- ANX Difficulties pilling up; cant overcome' 
   B4Q7I   = 'T- ANX Worry too much over small things' 
   B4Q7J   = 'T- ANX I am happy' 
   B4Q7K   = 'T- ANX Inclined to take things hard' 
   B4Q7L   = 'T- ANX Lack self-confidence' 
   B4Q7M   = 'T- ANX Feel secure' 
   B4Q7N   = 'T- ANX Avoid facing crisis or difficulty' 
   B4Q7O   = 'T- ANX Feel blue' 
   B4Q7P   = 'T- ANX I am content' 
   B4Q7Q   = 'T- ANX Unimportant thoughts; bother me' 
   B4Q7R   = 'T- ANX Cant put disappointment out of mind' 
   B4Q7S   = 'T- ANX I am a steady person' 
   B4Q7T   = 'T- ANX Tension; think over recent concern' 
   B4QTA_AX= 'Spielberger Trait Anxiety Inventory' 
   B4Q8A   = 'S- ANX Talking to authority' 
   B4Q8B   = 'S- ANX Going to a party' 
   B4Q8C   = 'S- ANX Working while observed' 
   B4Q8D   = 'S- ANX Calling someone you dont know well' 
   B4Q8E   = 'S- ANX Talking with people dont know well' 
   B4Q8F   = 'S- ANX Center of attention' 
   B4Q8G   = 'S- ANX Express disagreement to stranger' 
   B4Q8H   = 'S- ANX Returning goods to a store' 
   B4Q8I   = 'S- ANX Resist high-pressure salesperson' 
   B4QSA_SA= 'Social Anxiety Scale' 
   B4Q9A   = 'CTQ Didnt have enough to eat' 
   B4Q9B   = 'CTQ Knew someone was there for me' 
   B4Q9C   = 'CTQ Family called me names' 
   B4Q9D   = 'CTQ Parents drunk-high, care not given' 
   B4Q9E   = 'CTQ Family member made me feel special' 
   B4Q9F   = 'CTQ Had to wear dirty clothes' 
   B4Q9G   = 'CTQ Felt loved' 
   B4Q9H   = 'CTQ Thought parents wished I wasnt born' 
   B4Q9I   = 'CTQ Family hit hard, I had to see doctor' 
   B4Q9J   = 'CTQ I did not want to change my family' 
   B4Q9K   = 'CTQ Family hit hard, bruises or marks' 
   B4Q9L   = 'CTQ Punished with belt or hard object' 
   B4Q9M   = 'CTQ Family looked out for each other' 
   B4Q9N   = 'CTQ Family said hurtful things to me' 
   B4Q9O   = 'CTQ Believe I was physically abused' 
   B4Q9P   = 'CTQ Had the perfect childhood' 
   B4Q9Q   = 'CTQ Hit so bad, people noticed' 
   B4Q9R   = 'CTQ Felt family member hated me' 
   B4Q9S   = 'CTQ Family felt close to each other' 
   B4Q9T   = 'CTQ Someone tried to touch me sexually' 
   B4Q9U   = 'CTQ Other threaten harm if no sexual acts' 
   B4Q9V   = 'CTQ Best family in the world' 
   B4Q9W   = 'CTQ Other tried to force do/watch sexual' 
   B4Q9X   = 'CTQ Someone molested me' 
   B4Q9Y   = 'CTQ Believe I was emotionally abused' 
   B4Q9Z   = 'CTQ I was taken to doctor if needed' 
   B4Q9AA  = 'CTQ Believe I was sexually abused' 
   B4Q9BB  = 'CTQ Family source of strength-support' 
   B4QCT_EA= 'CTQ: Emotional Abuse' 
   B4QCT_PA= 'CTQ: Physical Abuse' 
   B4QCT_SA= 'CTQ: Sexual Abuse' 
   B4QCT_EN= 'CTQ: Emotional Neglect' 
   B4QCT_PN= 'CTQ: Physical Neglect' 
   B4QCT_MD= 'CTQ: Minimization/Denial' 
   B4Q10A1 = 'PES-FREQ Appreciate nature' 
   B4Q10A2 = 'PES-FEEL Appreciate nature' 
   B4Q10B1 = 'PES-FREQ Meet someone new' 
   B4Q10B2 = 'PES-FEEL Meet someone new' 
   B4Q10C1 = 'PES-FREQ Plan trips or vacations' 
   B4Q10C2 = 'PES-FEEL Plan trips or vacations' 
   B4Q10D1 = 'PES-FREQ Reading' 
   B4Q10D2 = 'PES-FEEL Reading' 
   B4Q10E1 = 'PES-FREQ Helping someone' 
   B4Q10E2 = 'PES-FEEL Helping someone' 
   B4Q10F1 = 'PES-FREQ Breathing clean air' 
   B4Q10F2 = 'PES-FEEL Breathing clean air' 
   B4Q10G1 = 'PES-FREQ Saying something clearly' 
   B4Q10G2 = 'PES-FEEL Saying something clearly' 
   B4Q10H1 = 'PES-FREQ Thinking about good in future' 
   B4Q10H2 = 'PES-FEEL Thinking about good in future' 
   B4Q10I1 = 'PES-FREQ Laughing' 
   B4Q10I2 = 'PES-FEEL Laughing' 
   B4Q10J1 = 'PES-FREQ Being with animals' 
   B4Q10J2 = 'PES-FEEL Being with animals' 
   B4Q10K1 = 'PES-FREQ Having an open conversation' 
   B4Q10K2 = 'PES-FEEL Having an open conversation' 
   B4Q10L1 = 'PES-FREQ Going to a party' 
   B4Q10L2 = 'PES-FEEL Going to a party' 
   B4Q10M1 = 'PES-FREQ Giving thanks for daily life' 
   B4Q10M2 = 'PES-FEEL Giving thanks for daily life' 
   B4Q10N1 = 'PES-FREQ Being with friends' 
   B4Q10N2 = 'PES-FEEL Being with friends' 
   B4Q10O1 = 'PES-FREQ Being popular at a gathering' 
   B4Q10O2 = 'PES-FEEL Being popular at a gathering' 
   B4Q10P1 = 'PES-FREQ Enjoying TV or movies' 
   B4Q10P2 = 'PES-FEEL Enjoying TV or movies' 
   B4Q10Q1 = 'PES-FREQ Sitting in the sun' 
   B4Q10Q2 = 'PES-FEEL Sitting in the sun' 
   B4Q10R1 = 'PES-FREQ Seeing good happen to Fam/Frnd' 
   B4Q10R2 = 'PES-FEEL Seeing good happen to Fam/Frnd' 
   B4Q10S1 = 'PES-FREQ Planning something' 
   B4Q10S2 = 'PES-FEEL Planning something' 
   B4Q10T1 = 'PES-FREQ Having a lively talk' 
   B4Q10T2 = 'PES-FEEL Having a lively talk' 
   B4Q10U1 = 'PES-FREQ Being with family' 
   B4Q10U2 = 'PES-FEEL Being with family' 
   B4Q10V1 = 'PES-FREQ Taking a relaxing bath' 
   B4Q10V2 = 'PES-FEEL Taking a relaxing bath' 
   B4Q10W1 = 'PES-FREQ Seeing beautiful scenery' 
   B4Q10W2 = 'PES-FEEL Seeing beautiful scenery' 
   B4Q10X1 = 'PES-FREQ Eating good meals' 
   B4Q10X2 = 'PES-FEEL Eating good meals' 
   B4Q10Y1 = 'PES-FREQ Having spare time' 
   B4Q10Y2 = 'PES-FEEL Having spare time' 
   B4Q10Z1 = 'PES-FREQ Noticed as sexually attractive' 
   B4Q10Z2 = 'PES-FEEL Noticed as sexually attractive' 
   B4Q10AA1= 'PES-FREQ Learning to do something new' 
   B4Q10AA2= 'PES-FEEL Learning to do something new' 
   B4Q10BB1= 'PES-FREQ Complimenting someone' 
   B4Q10BB2= 'PES-FEEL Complimenting someone' 
   B4Q10CC1= 'PES-FREQ Thinking about people I like' 
   B4Q10CC2= 'PES-FEEL Thinking about people I like' 
   B4Q10DD1= 'PES-FREQ Kissing' 
   B4Q10DD2= 'PES-FEEL Kissing' 
   B4Q10EE1= 'PES-FREQ Praying or meditating' 
   B4Q10EE2= 'PES-FEEL Praying or meditating' 
   B4Q10FF1= 'PES-FREQ Doing a project my own way' 
   B4Q10FF2= 'PES-FEEL Doing a project my own way' 
   B4Q10GG1= 'PES-FREQ Having peace and quiet' 
   B4Q10GG2= 'PES-FEEL Having peace and quiet' 
   B4Q10HH1= 'PES-FREQ Being relaxed' 
   B4Q10HH2= 'PES-FEEL Being relaxed' 
   B4Q10II1= 'PES-FREQ Sleeping soundly at night' 
   B4Q10II2= 'PES-FEEL Sleeping soundly at night' 
   B4Q10JJ1= 'PES-FREQ Having a good fitness workout' 
   B4Q10JJ2= 'PES-FEEL Having a good fitness workout' 
   B4Q10KK1= 'PES-FREQ Amusing people' 
   B4Q10KK2= 'PES-FEEL Amusing people' 
   B4Q10LL1= 'PES-FREQ Being with someone I love' 
   B4Q10LL2= 'PES-FEEL Being with someone I love' 
   B4Q10MM1= 'PES-FREQ Sexual relation with partner' 
   B4Q10MM2= 'PES-FEEL Sexual relation with partner' 
   B4Q10NN1= 'PES-FREQ Watching sports' 
   B4Q10NN2= 'PES-FEEL Watching sports' 
   B4Q10OO1= 'PES-FREQ Being with happy people' 
   B4Q10OO2= 'PES-FEEL Being with happy people' 
   B4Q10PP1= 'PES-FREQ Smiling at people' 
   B4Q10PP2= 'PES-FEEL Smiling at people' 
   B4Q10QQ1= 'PES-FREQ Being with spouse/partner' 
   B4Q10QQ2= 'PES-FEEL Being with spouse/partner' 
   B4Q10RR1= 'PES-FREQ Teaching or advising someone' 
   B4Q10RR2= 'PES-FEEL Teaching or advising someone' 
   B4Q10SS1= 'PES-FREQ Being complimented' 
   B4Q10SS2= 'PES-FEEL Being complimented' 
   B4Q10TT1= 'PES-FREQ Being told I am loved' 
   B4Q10TT2= 'PES-FEEL Being told I am loved' 
   B4Q10UU1= 'PES-FREQ Seeing old friends' 
   B4Q10UU2= 'PES-FEEL Seeing old friends' 
   B4Q10VV1= 'PES-FREQ Shopping' 
   B4Q10VV2= 'PES-FEEL Shopping' 
   B4Q10WW1= 'PES-FREQ Feeling no pain' 
   B4Q10WW2= 'PES-FEEL Feeling no pain' 
   B4Q11A  = 'RELAT Respect authority figures' 
   B4Q11B  = 'RELAT Prefer to say NO directly' 
   B4Q11C  = 'RELAT Important to keep harmony in group' 
   B4Q11D  = 'RELAT Speaking up is no problem' 
   B4Q11E  = 'RELAT Lively imagination important' 
   B4Q11F  = 'RELAT Being singled out for praise OK' 
   B4Q11G  = 'RELAT Respect for modest people' 
   B4Q11H  = 'RELAT Same person at home, work, social' 
   B4Q11I  = 'RELAT Sacrifice self for benefit of group' 
   B4Q11J  = 'RELAT Should consider others input: plans' 
   B4Q11K  = 'RELAT Prefer to be direct with new people' 
   B4Q11L  = 'RELAT Important to respect group decision' 
   B4Q11M  = 'RELAT Stay with group even if not happy' 
   B4Q11N  = 'RELAT If family fails, I feel responsible' 
   B4Q11O  = 'RELAT Even if strong disagree -dont argue' 
   B4Q11P  = 'RELAT Important to have my own ideas' 
   B4Q11Q  = 'RELAT Important to listen to others' 
   B4Q11R  = 'RELAT Obligated to be informed with news' 
   B4Q11S  = 'RELAT Obligated to vote in elections' 
   B4Q11T  = 'RELAT Obligated time/money to social causes' 
   B4Q11U  = 'RELAT Drop plans if family very troubled' 
   B4Q11V  = 'RELAT Obligated to contact family regularly' 
   B4Q11W  = 'RELAT Obligated give needy friend money' 
   B4Q11X  = 'RELAT Obligated to take adult child in' 
   B4Q11Y  = 'RELAT My work makes world better place' 
   B4Q11Z  = 'RELAT Think of harm my work may cause' 
   B4Q11AA = 'RELAT Help out colleagues at work' 
   B4Q11BB = 'RELAT Volunteer do unwanted tasks at work' 
   B4Q11CC = 'RELAT Known for honesty/integrity at work' 
   B4QSC_ID= 'Singelis Self-Construal Independence Subscale' 
   B4QSC_IT= 'Singelis Self-Construal Interdependence Subscale' 
   B4QSO_PC= 'Social Obligation: Public Community' 
   B4QSO_PF= 'Social Obligation: Private Family/Friends 3 items' 
   B4QSO_PX= 'Social Obligation: Private Family/Friends 4 items' 
   B4QSO_IW= 'Social Obligation: Private/Ingroup Work' 
   B4QSO_GW= 'Good Work Scale' 
   B4Q12A  = 'RELAT Close relations impt reflection me' 
   B4Q12B  = 'RELAT Very close others impt part of me' 
   B4Q12C  = 'RELAT Pride: close others accomplishments' 
   B4Q12D  = 'RELAT Who I am is who friends are' 
   B4Q12E  = 'RELAT Think of self, think of fam/frnds' 
   B4Q12F  = 'RELAT Someone close is hurt, I feel hurt' 
   B4Q12G  = 'RELAT Close relation: no effect self feeling' 
   B4Q12H  = 'RELAT Close relations not impt who I am' 
   B4Q12I  = 'RELAT Pride comes from close friends' 
   B4Q12J  = 'RELAT Identify closely with close friends' 
   B4Q12K  = 'RELAT Walk in a room can figure out mood' 
   B4Q12L  = 'RELAT Not affected by moods of others' 
   B4Q12M  = 'RELAT Cant be happy if friend in trouble' 
   B4Q12N  = 'RELAT Moved when hear hardships' 
   B4Q12O  = 'RELAT Nothing more vital than sympathy' 
   B4Q12P  = 'RELAT My sympathy has its limits' 
   B4Q12Q  = 'RELAT Follow opinion of people I respect' 
   B4Q12R  = 'RELAT Adjust opinion to fit group' 
   B4Q12S  = 'RELAT Adjust values to fit others' 
   B4Q12T  = 'RELAT Adjust to things hard to change' 
   B4Q12U  = 'RELAT Life uncertain: try change no use' 
   B4QRISC = 'Relational Interdependent self-construal scale' 
   B4QSYMP = 'Sympathy scale' 
   B4QADJ  = 'Adjustment scale' 
   B4Q13A  = 'SUPFRND Care about friends' 
   B4Q13B  = 'SUPFRND Understand friends feeling' 
   B4Q13C  = 'SUPFRND Friends rely on you serious probs' 
   B4Q13D  = 'SUPFRND Friends open up to you re worries' 
   B4Q13E  = 'SUPFRND Make too many demands on friend' 
   B4Q13F  = 'SUPFRND Criticize friends' 
   B4Q13G  = 'SUPFRND Let friends down' 
   B4Q13H  = 'SUPFRND Get on friends nerves' 
   B4Q13H1 = 'SUPFRND-# Friends' 
   B4Q13I  = 'SUPFAM Family rely on you serious probs' 
   B4Q13J  = 'SUPFAM Family open up to you re worries' 
   B4Q13K  = 'SUPFAM Make too many demands on family' 
   B4Q13L  = 'SUPFAM Criticize family' 
   B4Q13M  = 'SUPFAM Let family down' 
   B4Q13N  = 'SUPFAM Get on family nerves' 
   B4Q13O1 = 'SUPPART married or living with partner' 
   B4Q13O  = 'SUPPART Care about partner' 
   B4Q13P  = 'SUPPART Understand partner' 
   B4Q13Q  = 'SUPPART Appreciate partner' 
   B4Q13R  = 'SUPPART Partner rely on you serious probs' 
   B4Q13S  = 'SUPPART Partner open up re worries' 
   B4Q13T  = 'SUPPART Partner relax/be self with you' 
   B4Q13U  = 'SUPPART Make too many demands on partner' 
   B4Q13V  = 'SUPPART Partner feel tense' 
   B4Q13W  = 'SUPPART Argue with partner' 
   B4Q13X  = 'SUPPART Criticize partner' 
   B4Q13Y  = 'SUPPART Let partner down' 
   B4Q13Z  = 'SUPPART Get on partners nerves' 
   B4QSUGF = 'Support Given to Friends' 
   B4QSTGF = 'Strain Given to Friends' 
   B4QSOGFD= 'Affectual Solidarity Given to Friends' 
   B4QSUGFA= 'Support Given to Family' 
   B4QSTGFA= 'Strain Given to Family' 
   B4QSOGFM= 'Affectual Solidarity Given to Family' 
   B4QSUGS = 'Support Given to Spouse' 
   B4QSTGS = 'Strain Given to Spouse' 
   B4QSOLGS= 'Affectual Solidarity Given to Spouse/partner' 
   B4Q14A  = 'CNTRL Make self do things dont want to' 
   B4Q14B  = 'CNTRL If I have prob; others have worse' 
   B4Q14C  = 'CNTRL Can control thoughts/desires' 
   B4Q14D  = 'CNTRL Impt think, feel, act as needed' 
   B4Q14E  = 'CNTRL Can improve self if change thoughts' 
   B4Q14F  = 'CNTRL Impt be strong in mind and body' 
   B4Q14G  = 'CNTRL Control emotions by change thoughts' 
   B4Q14H  = 'CNTRL I keep my emotions to myself' 
   B4Q14I  = 'CNTRL In stress, use thoughts keep calm' 
   B4Q14J  = 'CNTRL Feel, but dont express neg emotion' 
   B4Q14K  = 'CNTRL Known as emotional person' 
   B4Q14L  = 'CNTRL Impt not to be bother to others' 
   B4Q14M  = 'CNTRL Try to behave: so no trouble others' 
   B4Q14N  = 'CNTRL Worry I am burden on others' 
   B4Q14O  = 'CNTRL I know my own limitations' 
   B4Q14P  = 'CNTRL Do best to maintain a calm mind' 
   B4Q14Q  = 'CNTRL Top priority: do what supposed to' 
   B4Q14R  = 'CNTRL Feel very tense when evaluated' 
   B4Q14S  = 'CNTRL Often concerned re: response to me' 
   B4QSC_SC= 'Self-control Scale' 
   B4QSC_CC= 'Cognition Control' 
   B4QSC_EC= 'Emotion Control' 
   B4QSC_BC= 'Burden Consciousness' 
   B4Q15A  = 'GDLIFE More happy than peers' 
   B4Q15B  = 'GDLIFE Life close to ideal' 
   B4Q15C  = 'GDLIFE Life conditions excellent' 
   B4Q15D  = 'GDLIFE Satisfied with life' 
   B4Q15E  = 'GDLIFE Gotten important things' 
   B4Q15F  = 'GDLIFE Live over, change nothing' 
   B4Q15G  = 'GDLIFE So much to be thankful for' 
   B4Q15H  = 'GDLIFE Grateful to many people' 
   B4QSW_SL= 'Subjective WellBeing - Satisfaction with Life Scale' 
   B4QSW_GR= 'Subjective Well-being: Gratitude Scale' 
   B4Q16A  = 'GDLIFE Be critical/reflect on actions' 
   B4Q16B  = 'GDLIFE Needed by others' 
   B4Q16C  = 'GDLIFE Harmony with others/events' 
   B4Q16D  = 'GDLIFE Make good effort/stick to it' 
   B4Q16E  = 'GDLIFE Peace and satisfaction' 
   B4Q16F  = 'GDLIFE Sympathy from others' 
   B4Q16G  = 'GDLIFE Respect from others' 
   B4Q16H  = 'GDLIFE Give back to society' 
   B4QSW_JP= 'Subjective Well-Being Japanese Comparison' 
   B4Q17A  = 'What do you do to make life go well' 
   B4S1    = 'Usual bedtime' 
   B4S1AMPM= 'Usual Bedtime AM or PM' 
   B4S2    = 'Minutes to fall asleep' 
   B4S3    = 'Usual getting up time' 
   B4S3AMPM= 'Usual Getting up time AM or PM' 
   B4S4    = 'Hours of sleep' 
   B4S5    = 'Sleep quality' 
   B4S6    = 'Enthusiasm' 
   B4S7    = 'Medicine to sleep' 
   B4S8    = 'Trouble staying awake' 
   B4S9    = 'Have bed partner' 
   B4S10A  = 'Bed partner loud snoring' 
   B4S10B  = 'Bed partner pauses btwn breaths' 
   B4S10C  = 'Bed partner legs twitching' 
   B4S10D  = 'Bed partner disorientation' 
   B4S10E  = 'Bed partner other restlessness' 
   B4S11A  = 'Sleep trouble could not sleep' 
   B4S11B  = 'Sleep trouble woke up' 
   B4S11C  = 'Sleep trouble had to use bathroom' 
   B4S11D  = 'Sleep trouble could not breathe' 
   B4S11E  = 'Sleep trouble coughed and snored' 
   B4S11F  = 'Sleep trouble felt too cold' 
   B4S11G  = 'Sleep trouble felt too hot' 
   B4S11H  = 'Sleep trouble had bad dreams' 
   B4S11I  = 'Sleep trouble had pain' 
   B4S11J  = 'Sleep trouble other reasons' 
   B4SSQ_GS= 'B4SLEEP:Global Score' 
   B4SSQ_S1= 'B4SLEEP:Component 1 - Subjective Sleep Quality' 
   B4SSQ_S2= 'B4SLEEP:Component 2 - Sleep Latency' 
   B4SSQ_S3= 'B4SLEEP:Component 3 - Sleep Duration' 
   B4SSQ_S4= 'B4SLEEP:Component 4 - Habitual Sleep Efficiency' 
   B4SSQ_S5= 'B4SLEEP:Component 5 - Sleep Disturbances Range' 
   B4SSQ_S6= 'B4SLEEP:Component 6 - Use of Sleeping Medication' 
   B4SSQ_S7= 'B4SLEEP:Component 7 - Daytime Dysfunction' 
   B4H1A   = 'Ever had heart disease' 
   B4H1AD  = 'Physician diagnosed heart disease' 
   B4H1B   = 'Ever had high blood pressure' 
   B4H1BD  = 'Physician diagnosed high blood pressure' 
   B4H1C   = 'Ever had circulation problems' 
   B4H1CD  = 'Physician diagnosed circulation problems' 
   B4H1D   = 'Ever had blood clots' 
   B4H1DD  = 'Physician diagnosed blood clots' 
   B4H1E   = 'Ever had heart murmur' 
   B4H1ED  = 'Physician diagnosed heart murmur' 
   B4H1F   = 'Ever had TIA or stroke' 
   B4H1FD  = 'Physician diagnosed TIA or stroke' 
   B4H1G   = 'Ever had anemia or other blood disease' 
   B4H1GD  = 'Physician diagnosed anemia or other blood disease' 
   B4H1H   = 'Ever had cholesterol problems' 
   B4H1HD  = 'Physician diagnosed cholesterol problems' 
   B4H1I   = 'Ever had diabetes' 
   B4H1ID  = 'Physician diagnosed diabetes' 
   B4H1J   = 'Ever had asthma' 
   B4H1JD  = 'Physician diagnosed asthma' 
   B4H1K   = 'Ever had emphysema/COPD' 
   B4H1KD  = 'Physician diagnosed emphysema/COPD' 
   B4H1L   = 'Ever had tuberculosis' 
   B4H1LD  = 'Physician diagnosed tuberculosis' 
   B4H1M   = 'Ever had positive TB skin test' 
   B4H1MD  = 'Physician diagnosed positive TB skin test' 
   B4H1N   = 'Ever had thyroid disease' 
   B4H1ND  = 'Physician diagnosed thyroid disease' 
   B4H1O   = 'Ever had peptic ulcer disease' 
   B4H1OD  = 'Physician diagnosed peptic ulcer disease' 
   B4H1P   = 'Ever had cancer' 
   B4H1PD  = 'Physician diagnosed cancer' 
   B4H1Q   = 'Ever had colon polyp' 
   B4H1QD  = 'Physician diagnosed colon polyp' 
   B4H1R   = 'Ever had arthritis' 
   B4H1RD  = 'Physician diagnosed arthritis' 
   B4H1S   = 'Ever had glaucoma' 
   B4H1SD  = 'Physician diagnosed glaucoma' 
   B4H1T   = 'Ever had cirrhosis/liver disease' 
   B4H1TD  = 'Physician diagnosed cirrhosis/liver disease' 
   B4H1U   = 'Ever had alcoholism' 
   B4H1UD  = 'Physician diagnosed alcoholism' 
   B4H1V   = 'Ever had depression' 
   B4H1VD  = 'Physician diagnosed depression' 
   B4H1W   = 'Ever had blood transfusion before 1993' 
   B4H1WD  = 'Physician diagnosed blood transfusion before 1993' 
   B4H1X   = 'Ever had other condition 1' 
   B4H1XD  = 'Physician diagnosed other condition 1' 
   B4H1Y   = 'Ever had other condition 2' 
   B4H1YD  = 'Physician diagnosed other condition 2' 
   B4H1TOTH= 'Total number of other conditions' 
   B4HSYMN = 'Total # of Symptoms & Chronic Conditions' 
   B4HSYMX = 'Any Symptoms & Chronic Conditions?--Yes/No' 
   B4H2    = 'Ever broken a bone' 
   B4H2AF  = 'How often broken hip' 
   B4H2AY  = 'Most recent year broken hip' 
   B4H2BF  = 'How often broken leg' 
   B4H2BY  = 'Most recent year broken leg' 
   B4H2CF  = 'How often broken ankle' 
   B4H2CY  = 'Most recent year broken ankle' 
   B4H2DF  = 'How often broken foot' 
   B4H2DY  = 'Most recent year broken foot' 
   B4H2EF  = 'How often broken toe' 
   B4H2EY  = 'Most recent year broken toe' 
   B4H2FF  = 'How often broken collar bone' 
   B4H2FY  = 'Most recent year broken collar bone' 
   B4H2GF  = 'How often broken arm' 
   B4H2GY  = 'Most recent year broken arm' 
   B4H2HF  = 'How often broken wrist' 
   B4H2HY  = 'Most recent year broken wrist' 
   B4H2IF  = 'How often broken hand' 
   B4H2IY  = 'Most recent year broken hand' 
   B4H2JF  = 'How often broken finger' 
   B4H2JY  = 'Most recent year broken finger' 
   B4H2KF  = 'How often broken vertebra' 
   B4H2KY  = 'Most recent year broken vertebra' 
   B4H2LF  = 'How often broken pelvis' 
   B4H2LY  = 'Most recent year broken pelvis' 
   B4H2MF  = 'How often broken ribs' 
   B4H2MY  = 'Most recent year broken ribs' 
   B4H2NF  = 'How often other broken bone' 
   B4H2NY  = 'Most recent year other broken bone' 
   B4HBRKB = 'Total #  of broken bone reported' 
   B4H3    = 'Ever had surgery' 
   B4H3AL  = 'Where surgery A was performed' 
   B4H3AY  = 'Year surgery A was performed' 
   B4H3BL  = 'Where surgery B was performed' 
   B4H3BY  = 'Year surgery B was performed' 
   B4H3CL  = 'Where surgery C was performed' 
   B4H3CY  = 'Year surgery C was performed' 
   B4H3DL  = 'Where surgery D was performed' 
   B4H3DY  = 'Year surgery D was performed' 
   B4H3EL  = 'Where surgery E was performed' 
   B4H3EY  = 'Year surgery E was performed' 
   B4H3FL  = 'Where surgery F was performed' 
   B4H3FY  = 'Year surgery F was performed' 
   B4H3GL  = 'Where surgery G was performed' 
   B4H3GY  = 'Year surgery G was performed' 
   B4H3HL  = 'Where surgery H was performed' 
   B4H3HY  = 'Year surgery H was performed' 
   B4H3IL  = 'Where surgery I was performed' 
   B4H3IY  = 'Year surgery I was performed' 
   B4H3JL  = 'Where surgery J was performed' 
   B4H3JY  = 'Year surgery J was performed' 
   B4HSURG = 'Total # of surgeries reported' 
   B4H4    = 'Ever had head injury' 
   B4H4AH  = 'Hospital overnight for head injury A' 
   B4H4AY  = 'Year head injury A occurred' 
   B4H4BH  = 'Hospital overnight for head injury B' 
   B4H4BY  = 'Year head injury B occurred' 
   B4H4CH  = 'Hospital overnight for head injury C' 
   B4H4CY  = 'Year head injury C occurred' 
   B4HHEAD = 'Total # of head injuries reported' 
   B4H5    = 'Ever had joint injury' 
   B4H5AH  = 'Hospital overnight for joint injury A' 
   B4H5AY  = 'Year joint injury A occurred' 
   B4H5BH  = 'Hospital overnight for joint injury B' 
   B4H5BY  = 'Year joint injury B occurred' 
   B4H5CH  = 'Hospital overnight for joint injury C' 
   B4H5CY  = 'Year joint injury C occurred' 
   B4HJNT  = 'Total # of joint injuries reported' 
   B4H6    = 'Ever injured in a motor vehicle accident' 
   B4H6AH  = 'Hospital overnight for motor vehicle accident A' 
   B4H6AY  = 'Year motor vehicle accident A occurred' 
   B4H6BH  = 'Hospital overnight for motor vehicle accident B' 
   B4H6BY  = 'Year motor vehicle accident B occurred' 
   B4H6CH  = 'Hospital overnight for motor vehicle accident C' 
   B4H6CY  = 'Year motor vehicle accident C occurred' 
   B4H6DH  = 'Hospital overnight for motor vehicle accident D' 
   B4H6DY  = 'Year motor vehicle accident D occurred' 
   B4HMVA  = 'Total # of motor vehicle accidents reported' 
   B4H7    = 'Ever permanently lost all or part of a limb' 
   B4H7AH  = 'Hospital overnight for amputation A' 
   B4H7AY  = 'Year amputation A occurred' 
   B4H7BH  = 'Hospital overnight for amputation B' 
   B4H7BY  = 'Year amputation B occurred' 
   B4HAMPU = 'Total # of amputations reported' 
   B4H8    = 'Ever had other major injuries or illnesses' 
   B4H8AH  = 'Hospital overnight for other injury/illness A' 
   B4H8AY  = 'Year other injury/illness A occurred' 
   B4H8BH  = 'Hospital overnight for other injury/illness B' 
   B4H8BY  = 'Year other injury/illness B occurred' 
   B4H8CH  = 'Hospital overnight for other injury/illness C' 
   B4H8CY  = 'Year other injury/illness C occurred' 
   B4H8DH  = 'Hospital overnight for other injury/illness D' 
   B4H8DY  = 'Year other injury/illness D occurred' 
   B4HOHLTH= 'Total # of other major health events reported' 
   B4H9    = 'Ever had radiation therapy to head/neck' 
   B4H10   = 'Have allergies diagnosed by doctor' 
   B4H10A  = 'Allergic to foods' 
   B4H10B  = 'Allergic to airborne substances' 
   B4H10C  = 'Allergic to animal dander' 
   B4H10D  = 'Allergic to insect bites' 
   B4H10E  = 'Allergic to environmental substances' 
   B4H10F  = 'Allergic to Other' 
   B4H11A  = 'Ever had German measles' 
   B4H11AI = 'Ever been immunized for German measles' 
   B4H11AA = 'Age had or immunized for German measles' 
   B4H11B  = 'Ever had measles' 
   B4H11BI = 'Ever been immunized for measles' 
   B4H11BA = 'Age had or immunized for measles' 
   B4H11C  = 'Ever had mumps' 
   B4H11CI = 'Ever been immunized for mumps' 
   B4H11CA = 'Age had or immunized for mumps' 
   B4H11D  = 'Ever had chicken pox' 
   B4H11DI = 'Ever been immunized for chicken pox' 
   B4H11DA = 'Age had or immunized for chicken pox' 
   B4H11E  = 'Ever had shingles' 
   B4H12A  = 'Ever been immunized for hepatitis B' 
   B4H12AM = 'Month last immunized for Hepatitis B' 
   B4H12AY = 'Year last immunized for Hepatitis B' 
   B4H12B  = 'Ever been immunized for tetanus and diphtheria' 
   B4H12BM = 'Month last immunized for tetanus and diphtheria' 
   B4H12BY = 'Year last immunized for tetanus and diphtheria' 
   B4H12C  = 'Ever been immunized for pneumonia' 
   B4H12CM = 'Month last immunized for pneumonia' 
   B4H12CY = 'Year last immunized for pneumonia' 
   B4H13   = 'How often get influenza vaccination' 
   B4H14   = 'Are you adopted' 
   B4H14A  = 'Know medical history of natural family' 
   B4H15A  = 'Blood relatives heart disease' 
   B4H15A1 = 'Mother heart disease' 
   B4H15A2 = 'Father heart disease' 
   B4H15A3 = 'Sibling heart disease' 
   B4H15A4 = 'Maternal grandparents heart disease' 
   B4H15A5 = 'Maternal aunt/uncle heart disease' 
   B4H15A6 = 'Paternal grandparents heart disease' 
   B4H15A7 = 'Paternal aunt/uncle heart disease' 
   B4H15B  = 'Blood relatives high BP' 
   B4H15B1 = 'Mother high bp' 
   B4H15B2 = 'Father high bp' 
   B4H15B3 = 'Sibling high bp' 
   B4H15B4 = 'Maternal grandparents high bp' 
   B4H15B5 = 'Maternal aunt/uncle high bp' 
   B4H15B6 = 'Paternal grandparents high bp' 
   B4H15B7 = 'Paternal aunt/uncle high bp' 
   B4H15C  = 'Blood relatives cholesterol problems' 
   B4H15C1 = 'Mother cholesterol' 
   B4H15C2 = 'Father cholesterol' 
   B4H15C3 = 'Sibling cholesterol' 
   B4H15C4 = 'Maternal grandparents cholesterol' 
   B4H15C5 = 'Maternal aunt/uncle cholesterol' 
   B4H15C6 = 'Paternal grandparents cholesterol' 
   B4H15C7 = 'Paternal aunt/uncle cholesterol' 
   B4H15D  = 'Blood relatives circulation problems' 
   B4H15D1 = 'Mother circulation' 
   B4H15D2 = 'Father circulation' 
   B4H15D3 = 'Sibling circulation' 
   B4H15D4 = 'Maternal grandparents circulation' 
   B4H15D5 = 'Maternal aunt/uncle circulation' 
   B4H15D6 = 'Paternal grandparents circulation' 
   B4H15D7 = 'Paternal aunt/uncle circulation' 
   B4H15E  = 'Blood relatives stroke' 
   B4H15E1 = 'Mother stroke' 
   B4H15E2 = 'Father stroke' 
   B4H15E3 = 'Sibling stroke' 
   B4H15E4 = 'Maternal grandparents stroke' 
   B4H15E5 = 'Maternal aunt/uncle stroke' 
   B4H15E6 = 'Paternal grandparents stroke' 
   B4H15E7 = 'Paternal aunt/uncle stroke' 
   B4H15F  = 'Blood relatives diabetes' 
   B4H15F1 = 'Mother diabetes' 
   B4H15F2 = 'Father diabetes' 
   B4H15F3 = 'Sibling diabetes' 
   B4H15F4 = 'Maternal grandparents diabetes' 
   B4H15F5 = 'Maternal aunt/uncle diabetes' 
   B4H15F6 = 'Paternal grandparents diabetes' 
   B4H15F7 = 'Paternal aunt/uncle diabetes' 
   B4H15G  = 'Blood relatives alcoholism' 
   B4H15G1 = 'Mother alcoholism' 
   B4H15G2 = 'Father alcoholism' 
   B4H15G3 = 'Sibling alcoholism' 
   B4H15G4 = 'Maternal grandparents alcoholism' 
   B4H15G5 = 'Maternal aunt/uncle alcolholism' 
   B4H15G6 = 'Paternal grandparents alcoholism' 
   B4H15G7 = 'Paternal aunt/uncle alcoholism' 
   B4H15H  = 'Blood relatives depression' 
   B4H15H1 = 'Mother depression' 
   B4H15H2 = 'Father depression' 
   B4H15H3 = 'Sibling depression' 
   B4H15H4 = 'Maternal grandparents depression' 
   B4H15H5 = 'Maternal aunt/uncle depression' 
   B4H15H6 = 'Paternal grandparents depression' 
   B4H15H7 = 'Paternal aunt/uncle depression' 
   B4H15I  = 'Blood relatives suicide' 
   B4H15I1 = 'Mother suicide' 
   B4H15I2 = 'Father suicide' 
   B4H15I3 = 'Sibling suicide' 
   B4H15I4 = 'Maternal grandparents suicide' 
   B4H15I5 = 'Maternal aunt/uncle suicide' 
   B4H15I6 = 'Paternal grandparents suicide' 
   B4H15I7 = 'Paternal aunt/uncle suicide' 
   B4H15J  = 'Blood relatives other psychiatric illness' 
   B4H15J1 = 'Mother other psychiatric illness' 
   B4H15J2 = 'Father other psychiatric illness' 
   B4H15J3 = 'Sibling other psychiatric illness' 
   B4H15J4 = 'Maternal grandparents other psychiatric illness' 
   B4H15J5 = 'Maternal aunt/uncle other psychiatric illness' 
   B4H15J6 = 'Paternal grandparents other psychiatric illness' 
   B4H15J7 = 'Paternal aunt/uncle other psychiatric illness' 
   B4H15K  = 'Blood relatives colon cancer' 
   B4H15K1 = 'Mother colon cancer' 
   B4H15K2 = 'Father colon cancer' 
   B4H15K3 = 'Sibling colon cancer' 
   B4H15K4 = 'Maternal grandparents colon cancer' 
   B4H15K5 = 'Maternal aunt/uncle colon cancer' 
   B4H15K6 = 'Paternal grandparents colon cancer' 
   B4H15K7 = 'Paternal aunt/uncle colon cancer' 
   B4H15L  = 'Blood relatives breast cancer' 
   B4H15L1 = 'Mother breast cancer' 
   B4H15L2 = 'Father breast cancer' 
   B4H15L3 = 'Sibling breast cancer' 
   B4H15L4 = 'Maternal grandparents breast cancer' 
   B4H15L5 = 'Maternal aunt/uncle breast cancer' 
   B4H15L6 = 'Paternal grandparents breast cancer' 
   B4H15L7 = 'Paternal aunt/uncle breast cancer' 
   B4H15M  = 'Blood relatives prostate cancer' 
   B4H15M1 = 'Mother prostate cancer' 
   B4H15M2 = 'Father prostate cancer' 
   B4H15M3 = 'Sibling prostate cancer' 
   B4H15M4 = 'Maternal grandparents prostate cancer' 
   B4H15M5 = 'Maternal aunt/uncle prostate cancer' 
   B4H15M6 = 'Paternal grandparents prostate cancer' 
   B4H15M7 = 'Paternal aunt/uncle prostate cancer' 
   B4H15N  = 'Blood relatives ovarian/uterine cancer' 
   B4H15N1 = 'Mother ovarian/uterine cancer' 
   B4H15N2 = 'Father ovarian/uterine cancer' 
   B4H15N3 = 'Sibling ovarian/uterine cancer' 
   B4H15N4 = 'Maternal grandparents ovarian/uterine cancer' 
   B4H15N5 = 'Maternal aunt/uncle ovarian/uterine cancer' 
   B4H15N6 = 'Paternal grandparents ovarian/uterine cancer' 
   B4H15N7 = 'Paternal aunt/uncle ovarian/uterine cancer' 
   B4H15O  = 'Blood relatives melanoma' 
   B4H15O1 = 'Mother melanoma' 
   B4H15O2 = 'Father melanoma' 
   B4H15O3 = 'Sibling melanoma' 
   B4H15O4 = 'Maternal grandparents melanoma' 
   B4H15O5 = 'Maternal aunt/uncle melanoma' 
   B4H15O6 = 'Paternal grandparents melanoma' 
   B4H15O7 = 'Paternal aunt/uncle melanoma' 
   B4H15P  = 'Blood relatives osteoporosis' 
   B4H15P1 = 'Mother osteoporosis' 
   B4H15P2 = 'Father osteoporosis' 
   B4H15P3 = 'Sibling osteoporosis' 
   B4H15P4 = 'Maternal grandparents osteoporosis' 
   B4H15P5 = 'Maternal aunt/uncle osteoporosis' 
   B4H15P6 = 'Paternal grandparents osteoporosis' 
   B4H15P7 = 'Paternal aunt/uncle osteoporosis' 
   B4H15Q  = 'Blood relatives tuberculosis' 
   B4H15Q1 = 'Mother tuberculosis' 
   B4H15Q2 = 'Father tuberculosis' 
   B4H15Q3 = 'Sibling tuberculosis' 
   B4H15Q4 = 'Maternal grandparents tuberculosis' 
   B4H15Q5 = 'Maternal aunt/uncle tuberculosis' 
   B4H15Q6 = 'Paternal grandparents tuberculosis' 
   B4H15Q7 = 'Paternal aunt/uncle tuberculosis' 
   B4H15R  = 'Blood relatives other 1' 
   B4H15R1 = 'Mother other 1' 
   B4H15R2 = 'Father other 1' 
   B4H15R3 = 'Sibling other 1' 
   B4H15R4 = 'Maternal grandparents other 1' 
   B4H15R5 = 'Maternal aunt/uncle other 1' 
   B4H15R6 = 'Paternal grandparents other 1' 
   B4H15R7 = 'Paternal aunt/uncle other 1' 
   B4H15S  = 'Blood relatives other 2' 
   B4H15S1 = 'Mother other 2' 
   B4H15S2 = 'Father other 2' 
   B4H15S3 = 'Sibling other 2' 
   B4H15S4 = 'Maternal grandparents other 2' 
   B4H15S5 = 'Maternal aunt/uncle other 2' 
   B4H15S6 = 'Paternal grandparents other 2' 
   B4H15S7 = 'Paternal aunt/uncle other 2' 
   B4H15OTH= 'Total other family conditions' 
   B4HFMHN = 'Total # of conditions in immediate family' 
   B4HFMHX = 'Any conditions in immediate family?--Yes/No' 
   B4H16   = 'Follow a special diet' 
   B4H17AF = 'Number of servings of milk (8 0z)' 
   B4H17AT = 'Number of servings milk timeframe' 
   B4H17BF = 'Number of servings of yogurt (8 oz)' 
   B4H17BT = 'Number of servings yogurt timeframe' 
   B4H17CF = 'Number of servings of cheese (1 oz)' 
   B4H17CT = 'Number of servings cheese timeframe' 
   B4H18AF = 'Number of servings of coffee' 
   B4H18AT = 'Number of servings coffee timeframe' 
   B4H18BF = 'Number of servings of tea' 
   B4H18BT = 'Number of servings tea timeframe' 
   B4H18CF = 'Number of servings of other' 
   B4H18CT = 'Number of servings other timeframe' 
   B4H19   = 'Ave day # glasses of water/day' 
   B4H20   = 'Ave day # sugared beverages/day' 
   B4H21   = 'Ave day # servings fruits & veggies' 
   B4H22   = 'Ave day # servings whole grain' 
   B4H23A  = 'Ave week # times eat ocean fish' 
   B4H23B  = 'Ave week # times eat beef/high fat meat' 
   B4H23C  = 'Ave week # times eat lean meat' 
   B4H23D  = 'Ave week # times eat non-meat protein' 
   B4H24   = 'Ave week # times eat fast food' 
   B4H25   = 'Reg exercise at least 20 mins 3 times/wk' 
   B4H25AS = 'Seasonal activity A' 
   B4H25AFD= 'Times per day for exercise/activity A' 
   B4H25AFW= 'Times per week for exercise/activity A' 
   B4H25AM = 'Ave num mins/session exercise/activity A' 
   B4H25AI = 'Intensity exercise/activity A' 
   B4H25BS = 'Seasonal activity B' 
   B4H25BFD= 'Times per day for exercise/activity B' 
   B4H25BFW= 'Times per week for exercise/activity B' 
   B4H25BM = 'Ave num mins/session exercise/activity B' 
   B4H25BI = 'Intensity exercise/activity B' 
   B4H25CS = 'Seasonal activity C' 
   B4H25CFD= 'Times per day for exercise/activity C' 
   B4H25CFW= 'Times per week for exercise/activity C' 
   B4H25CM = 'Ave num mins/session exercise/activity C' 
   B4H25CI = 'Intensity exercise/activity C' 
   B4H25DS = 'Seasonal activity D' 
   B4H25DFD= 'Times per day for exercise/activity D' 
   B4H25DFW= 'Times per week for exercise/activity D' 
   B4H25DM = 'Ave num mins/session exercise/activity D' 
   B4H25DI = 'Intensity exercise/activity D' 
   B4H25ES = 'Seasonal activity E' 
   B4H25EFD= 'Times per day for exercise/activity E' 
   B4H25EFW= 'Times per week for exercise/activity E' 
   B4H25EM = 'Ave num mins/session exercise/activity E' 
   B4H25EI = 'Intensity exercise/activity E' 
   B4H25FS = 'Seasonal activity F' 
   B4H25FFD= 'Times per day for exercise/activity F' 
   B4H25FFW= 'Times per week for exercise/activity F' 
   B4H25FM = 'Ave num mins/session exercise/activity F' 
   B4H25FI = 'Intensity exercise/activity F' 
   B4H25GS = 'Seasonal activity G' 
   B4H25GFD= 'Times per day for exercise/activity G' 
   B4H25GFW= 'Times per week for exercise/activity G' 
   B4H25GM = 'Ave num mins/session exercise/activity G' 
   B4H25GI = 'Intensity exercise/activity G' 
   B4H26   = 'Ever smoked cigarettes regularly' 
   B4H26A  = 'Currently smoke cigarettes regularly' 
   B4H27   = 'Tried to quit smoking since last intrvw' 
   B4H28   = 'Age when last smoked regularly' 
   B4H29   = 'Currently smoke pipe/cigars, snuff, chew' 
   B4H30   = 'Currently anyone in home smoke/use tobac' 
   B4H31   = 'Current job anyone smoke in work area' 
   B4H32   = 'Past job anyone smoke in work area' 
   B4H33   = 'Past month at least one alcoholic bev' 
   B4H34   = 'Past month how often drank alcoholic bev' 
   B4H35   = 'PSTMO # days/month (if LT 1 day/wk)' 
   B4H36   = 'PSTMO avge # drinks on days when drank' 
   B4H37   = 'PSTMO # times 5+ drinks same occasion' 
   B4H38   = 'Period drank most freq at least one drink' 
   B4H39   = 'PDM # days/month (if LT 1 day/wk)' 
   B4H40   = 'PDM Avge # drinks when drank' 
   B4H41   = 'Age when started to drink that much' 
   B4H42   = 'Number of years drank that much' 
   B4H43A  = 'How often receive dental care' 
   B4H43BM = 'Month of last dental exam' 
   B4H43BY = 'Year of last dental exam' 
   B4H44A  = 'How often get eye exam' 
   B4H44CM = 'Month of last eye exam' 
   B4H44CY = 'Year of last eye exam' 
   B4H44D  = 'Ever diagnosed with eye disease/disorder' 
   B4H45A  = 'Ever had cholesterol level checked' 
   B4H45AM = 'Month cholesterol level checked' 
   B4H45AY = 'Year cholesterol level checked' 
   B4H45B  = 'Ever asked to complete a stool card' 
   B4H45BM = 'Month asked to complete a stool card' 
   B4H45BY = 'Year asked to complete a stool card' 
   B4H45BRC= 'Blood in stool test results' 
   B4H45C  = 'Ever had a flexible sigmoidoscopy' 
   B4H45CM = 'Month had flexible sigmoidoscopy' 
   B4H45CY = 'Year had flexible sigmoidoscopy' 
   B4H45CRC= 'Sigmoidoscopy test results' 
   B4H45D  = 'Ever had colonoscopy' 
   B4H45DM = 'Month had colonoscopy' 
   B4H45DY = 'Year had colonoscopy' 
   B4H45DRC= 'Colonoscopy test results' 
   B4H45E  = 'Do a monthly breast self-exam' 
   B4H45F  = 'Ever had mammogram' 
   B4H45FM = 'Month had mammogram' 
   B4H45FY = 'Year had mammogram' 
   B4H45FRC= 'Mammogram test results' 
   B4H45G  = 'Ever had pap test and pelvic exam' 
   B4H45GM = 'Month of pap test and pelvic exam' 
   B4H45GY = 'Year of pap test and pelvic exam' 
   B4H45GRC= 'Pap test and pelvic exam results' 
   B4H45H  = 'Ever had prostate/rectal exam' 
   B4H45HM = 'Month of prostate/rectal exam' 
   B4H45HY = 'Year of prostate/rectal exam' 
   B4H45HRC= 'Prostate/rectal exam results' 
   B4H46   = 'Exposed to excessive noise on reg basis' 
   B4H46C  = 'How often exposed to noise' 
   B4H46D  = 'Number of hrs typically exposed to noise' 
   B4H47   = 'Typically use seatbelt' 
   B4H48   = 'Ever ride bike or motorcycle' 
   B4H48A  = 'Use bike/motorcycle helmet when riding' 
   B4H49   = 'Ever had excessive sun exposure' 
   B4H50   = 'Regularly use sunscreen' 
   B4H54C  = 'Did marital status change since P1 interview?' 
   B4H54M  = 'When marital status changed - MONTH' 
   B4H54Y  = 'When marital status changed - YEAR' 
   B4H55   = 'Current marital status' 
   B4HMARR = 'P4 Marital Status' 
   B4H56   = 'Anyone close passed away since P1 intrvw' 
   B4H56AG = 'Gender of person A who passed away' 
   B4H56AM = 'Month person A died' 
   B4H56AY = 'Year person A died' 
   B4H56BG = 'Gender of person B who passed away' 
   B4H56BM = 'Month person B died' 
   B4H56BY = 'Year person B died' 
   B4H56CG = 'Gender of person C who passed away' 
   B4H56CM = 'Month person C died' 
   B4H56CY = 'Year person C died' 
   B4H56DG = 'Gender of person D who passed away' 
   B4H56DM = 'Month person D died' 
   B4H56DY = 'Year person D died' 
   B4H56EG = 'Gender of person E who passed away' 
   B4H56EM = 'Month person E died' 
   B4H56EY = 'Year person E died' 
   B4HDIED = '# of people close passed away since P1 intvw' 
   B4H57   = 'Other events happened since P1 interview' 
   B4H57A1M= 'Month of event 1' 
   B4H57A1Y= 'Year of event 1' 
   B4H57A2M= 'Month of event 2' 
   B4H57A2Y= 'Year of event 2' 
   B4H57A3M= 'Month of event 3' 
   B4H57A3Y= 'Year of event 3' 
   B4H57A4M= 'Month of event 4' 
   B4H57A4Y= 'Year of event 4' 
   B4H57A5M= 'Month of event 5' 
   B4H57A5Y= 'Year of event 5' 
   B4H57TOT= 'Total number of events' 
   B4OAVL  = 'Bone questionnaire available?' 
   B4O1    = 'Broken a bone' 
   B4O1A1W = 'Broken Bone A: Which' 
   B4O1A3  = 'Age when occured A' 
   B4O1B1W = 'Broken Bone B: Which' 
   B4O1B3  = 'Age when occured B' 
   B4O1C1W = 'Broken Bone C: Which' 
   B4O1C3  = 'Age when occured C' 
   B4O2    = 'Family member broken bone' 
   B4O2A1  = 'Mother hip fracture' 
   B4O2A2  = 'Mother vertebral fracture' 
   B4O2A3  = 'Mother fracture elsewhere' 
   B4O2B1  = 'Father hip fracture' 
   B4O2B2  = 'Father vertebral fracture' 
   B4O2B3  = 'Father fracture elsewhere' 
   B4O2C1  = 'Sibling hip fracture' 
   B4O2C2  = 'Sibling vertebral fracture' 
   B4O2C3  = 'Sibling fracture elsewhere' 
   B4O3    = 'Times fallen in last year' 
   B4O3A   = 'Simple falls in last year' 
   B4O4A   = 'Have you ever had Parathyroid Disease' 
   B4O4B   = 'Have you ever had Cushing Syndrome' 
   B4O5    = 'Have you ever recvd osteoporosis meds' 
   B4O5A1AM= 'Osteoporosis Medication 1' 
   B4O5A1B = 'Begin Age Med 1' 
   B4O5A1C = 'End Age Med 1' 
   B4O5A1CO= 'Ongoing 1=Yes 2=No Med 1' 
   B4O5A2AM= 'Osteoporosis Medication 2' 
   B4O5A2B = 'Begin Age Med 2' 
   B4O5A2C = 'End Age Med 2' 
   B4O5A2CO= 'Ongoing 1=Yes 2=No Med 2' 
   B4O5A3AM= 'Osteoporosis Medication 3' 
   B4O5A3B = 'Begin Age Med 3' 
   B4O5A3C = 'End Age Med 3' 
   B4O5A3CO= 'Ongoing 1=Yes 2=No Med 3' 
   B4O6A1  = 'Have you ever taken seizure meds' 
   B4O6B1  = 'Have you ever had chemotherapy' 
   B4O6C1  = 'Have you ever had immune-therapy' 
   B4O6D1  = 'Have you ever taken Prednisone' 
   B4O6E1  = 'Have you ever taken birth control pills' 
   B4O6F1  = 'Have you ever had hormone therapy' 
   B4O7    = 'Have you ever used tobacco regularly' 
   B4O8    = 'How many years did you smoke' 
   B4O9    = 'How many cigarettes per day' 
   B4O10   = 'How many years did you use pipe,etc' 
   B4O11   = 'Did anyone smoke in household' 
   B4O12A  = 'How many yrs of competitive sports' 
   B4O12B  = 'How many yrs of recreational sports' 
   B4O12C  = 'How many yrs of little exercise' 
   B4O13   = 'Did you exercise between age 20-35' 
   B4O14A  = 'How many years vigorous exercise' 
   B4O14B  = 'How many years moderate exercise' 
   B4O14C  = 'How many years light exercise' 
   B4O14X  = 'Is R Female?' 
   B4O15   = 'Have you ever been pregnant' 
   B4O16   = 'How many pregnancies did you carry' 
   B4O16A  = 'How many total months breast feed' 
   B4O17   = 'Have you had a menstrual period last year' 
   B4O18   = 'Had menstrual period last 3 months' 
   B4O19   = 'Is menstrual cycle length less regular' 
   B4O20Y  = 'How many years ago last menstrual period' 
   B4O21   = 'Did period stop other reason' 
   B4O21A1 = 'Medication, chemotherapy, radiation' 
   B4O21A2 = 'Severe weight loss' 
   B4O21A3 = 'Hysterectomy' 
   B4O21A4 = 'Surgical removal of both ovaries' 
   B4O21A5 = 'Endrometrial ablation' 
   B4O22Y  = 'How many years ago noticed irregular cycle' 
   B4O23X  = 'Metal implant questions available?' 
   B4O23   = 'Do you have a pacemaker?' 
   B4O24   = 'Do you have an implanted pump?' 
   B4O25   = 'Do you have any artificial joints?' 
   B4O25A  = 'Artificial joint - Knee' 
   B4O25B  = 'Artificial joint - Hip' 
   B4O25C  = 'Artificial joint - Other' 
   B4O26   = 'Do you have any rods,plates,screws,or pins?' 
   B4O26A  = 'Rod/plate location: lower extremity' 
   B4O26B  = 'Rod/plate location: upper extremity' 
   B4O26C  = 'Rod/plate location: spine' 
   B4O26D  = 'Rod/plate location: elsewhere' 
   B4O26E  = 'Pin location: hands or feet' 
   B4O26F  = 'Pin location: elsewhere' 
   B4O27   = 'Have any other metal in your body?' 
   B4DAVAIL= 'Bone scan data collected' 
   B4DNARSN= 'Reason why for partial or missing bone density data' 
   B4DSTYPE= 'Was Lunar or Hologic Scanner used? 1=Lunar, 2=Hologic' 
   B4DTRSID= 'Femur Trochanter side scanned, 1=Right, 2 = Left' 
   B4DFNSID= 'Femur Neck side scanned, 1=Right, 2 = Left' 
   B4DFTSID= 'Femur Total side scanned, 1=Right, 2 = Left' 
   B4DRSIDE= 'Radius side scanned, 1=Right, 2 = Left' 
   B4DLSMD = 'Lunar Spine L1-4 Bone Mineral Density (g/cm2)' 
   B4DLST  = 'Lunar Spine L1-4 Young Adult T-score' 
   B4DLFNMD= 'Lunar Femur Neck (BMD) Bone Mineral Density (g/cm2)' 
   B4DLTRMD= 'Lunar Trochanter (BMD) Bone Mineral Density (g/cm2)' 
   B4DLFTMD= 'Lunar Total Femur (BMD) Bone Mineral Density (g/cm2)' 
   B4DLFNT = 'Lunar Femur Neck T-Score' 
   B4DLFTT = 'Lunar Total Femur  T-Score' 
   B4DLRUMD= 'Lunar Radius UD (BMD) Bone Mineral Density (g/cm2)' 
   B4DLR3MD= 'Lunar Radius 1/3 (BMD) Bone Mineral Density (g/cm2)' 
   B4DLR3T = 'Lunar Radius 1/3 T-Score' 
   B4DHSMD = 'Hologic Spine L1-4 Bone Mineral Density (g/cm2)' 
   B4DHST  = 'Hologic Spine L1-4 Young Adult T-score' 
   B4DHFNMD= 'Hologic Femur Neck (BMD) Bone Mineral Density (g/cm2)' 
   B4DHTRMD= 'Hologic Trochanter (BMD) Bone Mineral Density (g/cm2)' 
   B4DHFTMD= 'Hologic Total Femur (BMD) Bone Mineral Density (g/cm2)' 
   B4DHFNT = 'Hologic Femur Neck T-Score' 
   B4DHFTT = 'Hologic Total Femur  T-Score' 
   B4XPMD  = 'Taking Prescription Medication?--YES/NO' 
   B4XOMD  = 'Taking Over the Counter Medication?--YES/NO' 
   B4XAMD  = 'Taking Alternative Medication?--YES/NO' 
   B4XPM   = 'Prescription: Number of prescription medications' 
   B4XPC1  = 'Prescription: Drug code 1' 
   B4XPDD1 = 'Prescription: Dosage 1' 
   B4XPDU1 = 'Prescription: Dosage units 1' 
   B4XPR1  = 'Prescription: Route 1' 
   B4XPF1  = 'Prescription: Frequency 1' 
   B4XPFU1 = 'Prescription: Frequency unit of time 1' 
   B4XPT1  = 'Prescription: Taken for how long 1' 
   B4XPTU1 = 'Prescription: Unit of time taken 1' 
   B4XPDC1 = 'Prescription: Diagnosis code 1' 
   B4XPC2  = 'Prescription: Drug code 2' 
   B4XPDD2 = 'Prescription: Dosage 2' 
   B4XPDU2 = 'Prescription: Dosage units 2' 
   B4XPR2  = 'Prescription: Route 2' 
   B4XPF2  = 'Prescription: Frequency 2' 
   B4XPFU2 = 'Prescription: Frequency unit of time 2' 
   B4XPT2  = 'Prescription: Taken for how long 2' 
   B4XPTU2 = 'Prescription: Unit of time taken 2' 
   B4XPDC2 = 'Prescription: Diagnosis code 2' 
   B4XPC3  = 'Prescription: Drug code 3' 
   B4XPDD3 = 'Prescription: Dosage 3' 
   B4XPDU3 = 'Prescription: Dosage units 3' 
   B4XPR3  = 'Prescription: Route 3' 
   B4XPF3  = 'Prescription: Frequency 3' 
   B4XPFU3 = 'Prescription: Frequency unit of time 3' 
   B4XPT3  = 'Prescription: Taken for how long 3' 
   B4XPTU3 = 'Prescription: Unit of time taken 3' 
   B4XPDC3 = 'Prescription: Diagnosis code 3' 
   B4XPC4  = 'Prescription: Drug code 4' 
   B4XPDD4 = 'Prescription: Dosage 4' 
   B4XPDU4 = 'Prescription: Dosage units 4' 
   B4XPR4  = 'Prescription: Route 4' 
   B4XPF4  = 'Prescription: Frequency 4' 
   B4XPFU4 = 'Prescription: Frequency unit of time 4' 
   B4XPT4  = 'Prescription: Taken for how long 4' 
   B4XPTU4 = 'Prescription: Unit of time taken 4' 
   B4XPDC4 = 'Prescription: Diagnosis code 4' 
   B4XPC5  = 'Prescription: Drug code 5' 
   B4XPDD5 = 'Prescription: Dosage 5' 
   B4XPDU5 = 'Prescription: Dosage units 5' 
   B4XPR5  = 'Prescription: Route 5' 
   B4XPF5  = 'Prescription: Frequency 5' 
   B4XPFU5 = 'Prescription: Frequency unit of time 5' 
   B4XPT5  = 'Prescription: Taken for how long 5' 
   B4XPTU5 = 'Prescription: Unit of time taken 5' 
   B4XPDC5 = 'Prescription: Diagnosis code 5' 
   B4XPC6  = 'Prescription: Drug code 6' 
   B4XPDD6 = 'Prescription: Dosage 6' 
   B4XPDU6 = 'Prescription: Dosage units 6' 
   B4XPR6  = 'Prescription: Route 6' 
   B4XPF6  = 'Prescription: Frequency 6' 
   B4XPFU6 = 'Prescription: Frequency unit of time 6' 
   B4XPT6  = 'Prescription: Taken for how long 6' 
   B4XPTU6 = 'Prescription: Unit of time taken 6' 
   B4XPDC6 = 'Prescription: Diagnosis code 6' 
   B4XPC7  = 'Prescription: Drug code 7' 
   B4XPDD7 = 'Prescription: Dosage 7' 
   B4XPDU7 = 'Prescription: Dosage units 7' 
   B4XPR7  = 'Prescription: Route 7' 
   B4XPF7  = 'Prescription: Frequency 7' 
   B4XPFU7 = 'Prescription: Frequency unit of time 7' 
   B4XPT7  = 'Prescription: Taken for how long 7' 
   B4XPTU7 = 'Prescription: Unit of time taken 7' 
   B4XPDC7 = 'Prescription: Diagnosis code 7' 
   B4XPC8  = 'Prescription: Drug code 8' 
   B4XPDD8 = 'Prescription: Dosage 8' 
   B4XPDU8 = 'Prescription: Dosage units 8' 
   B4XPR8  = 'Prescription: Route 8' 
   B4XPF8  = 'Prescription: Frequency 8' 
   B4XPFU8 = 'Prescription: Frequency unit of time 8' 
   B4XPT8  = 'Prescription: Taken for how long 8' 
   B4XPTU8 = 'Prescription: Unit of time taken 8' 
   B4XPDC8 = 'Prescription: Diagnosis code 8' 
   B4XPC9  = 'Prescription: Drug code 9' 
   B4XPDD9 = 'Prescription: Dosage 9' 
   B4XPDU9 = 'Prescription: Dosage units 9' 
   B4XPR9  = 'Prescription: Route 9' 
   B4XPF9  = 'Prescription: Frequency 9' 
   B4XPFU9 = 'Prescription: Frequency unit of time 9' 
   B4XPT9  = 'Prescription: Taken for how long 9' 
   B4XPTU9 = 'Prescription: Unit of time taken 9' 
   B4XPDC9 = 'Prescription: Diagnosis code 9' 
   B4XPC10 = 'Prescription: Drug code 10' 
   B4XPDD10= 'Prescription: Dosage 10' 
   B4XPDU10= 'Prescription: Dosage units 10' 
   B4XPR10 = 'Prescription: Route 10' 
   B4XPF10 = 'Prescription: Frequency 10' 
   B4XPFU10= 'Prescription: Frequency unit of time 10' 
   B4XPT10 = 'Prescription: Taken for how long 10' 
   B4XPTU10= 'Prescription: Unit of time taken 10' 
   B4XPDC10= 'Prescription: Diagnosis code 10' 
   B4XPC11 = 'Prescription: Drug code 11' 
   B4XPDD11= 'Prescription: Dosage 11' 
   B4XPDU11= 'Prescription: Dosage units 11' 
   B4XPR11 = 'Prescription: Route 11' 
   B4XPF11 = 'Prescription: Frequency 11' 
   B4XPFU11= 'Prescription: Frequency unit of time 11' 
   B4XPT11 = 'Prescription: Taken for how long 11' 
   B4XPTU11= 'Prescription: Unit of time taken 11' 
   B4XPDC11= 'Prescription: Diagnosis code 11' 
   B4XPC12 = 'Prescription: Drug code 12' 
   B4XPDD12= 'Prescription: Dosage 12' 
   B4XPDU12= 'Prescription: Dosage units 12' 
   B4XPR12 = 'Prescription: Route 12' 
   B4XPF12 = 'Prescription: Frequency 12' 
   B4XPFU12= 'Prescription: Frequency unit of time 12' 
   B4XPT12 = 'Prescription: Taken for how long 12' 
   B4XPTU12= 'Prescription: Unit of time taken 12' 
   B4XPDC12= 'Prescription: Diagnosis code 12' 
   B4XPC13 = 'Prescription: Drug code 13' 
   B4XPDD13= 'Prescription: Dosage 13' 
   B4XPDU13= 'Prescription: Dosage units 13' 
   B4XPR13 = 'Prescription: Route 13' 
   B4XPF13 = 'Prescription: Frequency 13' 
   B4XPFU13= 'Prescription: Frequency unit of time 13' 
   B4XPT13 = 'Prescription: Taken for how long 13' 
   B4XPTU13= 'Prescription: Unit of time taken 13' 
   B4XPDC13= 'Prescription: Diagnosis code 13' 
   B4XPC14 = 'Prescription: Drug code 14' 
   B4XPDD14= 'Prescription: Dosage 14' 
   B4XPDU14= 'Prescription: Dosage units 14' 
   B4XPR14 = 'Prescription: Route 14' 
   B4XPF14 = 'Prescription: Frequency 14' 
   B4XPFU14= 'Prescription: Frequency unit of time 14' 
   B4XPT14 = 'Prescription: Taken for how long 14' 
   B4XPTU14= 'Prescription: Unit of time taken 14' 
   B4XPDC14= 'Prescription: Diagnosis code 14' 
   B4XPC15 = 'Prescription: Drug code 15' 
   B4XPDD15= 'Prescription: Dosage 15' 
   B4XPDU15= 'Prescription: Dosage units 15' 
   B4XPR15 = 'Prescription: Route 15' 
   B4XPF15 = 'Prescription: Frequency 15' 
   B4XPFU15= 'Prescription: Frequency unit of time 15' 
   B4XPT15 = 'Prescription: Taken for how long 15' 
   B4XPTU15= 'Prescription: Unit of time taken 15' 
   B4XPDC15= 'Prescription: Diagnosis code 15' 
   B4XBPD  = 'Taking BLOOD PRESSURE med --YES/NO' 
   B4XBPC  = 'Taking BLOOD PRESSURE med --# of meds' 
   B4XCHD  = 'Taking CHOLESTEROL med --YES/NO' 
   B4XCHC  = 'Taking CHOLESTEROL med --# of meds' 
   B4XDPD  = 'Taking DEPRESSION med --YES/NO' 
   B4XDPC  = 'Taking DEPRESSION med --# of meds' 
   B4XCOD  = 'Taking CORTICOSTEROID med --YES/NO' 
   B4XCOC  = 'Taking CORTICOSTEROID med --# of meds' 
   B4XSHD  = 'Taking SEX HORMONE med --YES/NO' 
   B4XSHC  = 'Taking SEX HORMONE med --# of meds' 
   B4XOM   = 'OTC: Number of non-prescription medications' 
   B4XOMV  = 'OTC: Does R take multiple vitamin' 
   B4XOC1  = 'OTC: Drug code 1' 
   B4XODD1 = 'OTC: Dosage 1' 
   B4XODU1 = 'OTC: Dosage units 1' 
   B4XOR1  = 'OTC: Route 1' 
   B4XOF1  = 'OTC: Frequency 1' 
   B4XOFU1 = 'OTC: Frequency unit of time 1' 
   B4XOT1  = 'OTC: Taken for how long 1' 
   B4XOTU1 = 'OTC: Unit of time taken 1' 
   B4XODC1 = 'OTC: Diagnosis code 1' 
   B4XOCS  = 'OTC: Does R take calcium supplement' 
   B4XOC2  = 'OTC: Drug code 2' 
   B4XODD2 = 'OTC: Dosage 2' 
   B4XODU2 = 'OTC: Dosage units 2' 
   B4XOR2  = 'OTC: Route 2' 
   B4XOF2  = 'OTC: Frequency 2' 
   B4XOFU2 = 'OTC: Frequency unit of time 2' 
   B4XOT2  = 'OTC: Taken for how long 2' 
   B4XOTU2 = 'OTC: Unit of time taken 2' 
   B4XODC2 = 'OTC: Diagnosis code 2' 
   B4XOC3  = 'OTC: Drug code 3' 
   B4XODD3 = 'OTC: Dosage 3' 
   B4XODU3 = 'OTC: Dosage units 3' 
   B4XOR3  = 'OTC: Route 3' 
   B4XOF3  = 'OTC: Frequency 3' 
   B4XOFU3 = 'OTC: Frequency unit of time 3' 
   B4XOT3  = 'OTC: Taken for how long 3' 
   B4XOTU3 = 'OTC: Unit of time taken 3' 
   B4XODC3 = 'OTC: Diagnosis code 3' 
   B4XOC4  = 'OTC: Drug code 4' 
   B4XODD4 = 'OTC: Dosage 4' 
   B4XODU4 = 'OTC: Dosage units 4' 
   B4XOR4  = 'OTC: Route 4' 
   B4XOF4  = 'OTC: Frequency 4' 
   B4XOFU4 = 'OTC: Frequency unit of time 4' 
   B4XOT4  = 'OTC: Taken for how long 4' 
   B4XOTU4 = 'OTC: Unit of time taken 4' 
   B4XODC4 = 'OTC: Diagnosis code 4' 
   B4XOC5  = 'OTC: Drug code 5' 
   B4XODD5 = 'OTC: Dosage 5' 
   B4XODU5 = 'OTC: Dosage units 5' 
   B4XOR5  = 'OTC: Route 5' 
   B4XOF5  = 'OTC: Frequency 5' 
   B4XOFU5 = 'OTC: Frequency unit of time 5' 
   B4XOT5  = 'OTC: Taken for how long 5' 
   B4XOTU5 = 'OTC: Unit of time taken 5' 
   B4XODC5 = 'OTC: Diagnosis code 5' 
   B4XOC6  = 'OTC: Drug code 6' 
   B4XODD6 = 'OTC: Dosage 6' 
   B4XODU6 = 'OTC: Dosage units 6' 
   B4XOR6  = 'OTC: Route 6' 
   B4XOF6  = 'OTC: Frequency 6' 
   B4XOFU6 = 'OTC: Frequency unit of time 6' 
   B4XOT6  = 'OTC: Taken for how long 6' 
   B4XOTU6 = 'OTC: Unit of time taken 6' 
   B4XODC6 = 'OTC: Diagnosis code 6' 
   B4XOC7  = 'OTC: Drug code 7' 
   B4XODD7 = 'OTC: Dosage 7' 
   B4XODU7 = 'OTC: Dosage units 7' 
   B4XOR7  = 'OTC: Route 7' 
   B4XOF7  = 'OTC: Frequency 7' 
   B4XOFU7 = 'OTC: Frequency unit of time 7' 
   B4XOT7  = 'OTC: Taken for how long 7' 
   B4XOTU7 = 'OTC: Unit of time taken 7' 
   B4XODC7 = 'OTC: Diagnosis code 7' 
   B4XOC8  = 'OTC: Drug code 8' 
   B4XODD8 = 'OTC: Dosage 8' 
   B4XODU8 = 'OTC: Dosage units 8' 
   B4XOR8  = 'OTC: Route 8' 
   B4XOF8  = 'OTC: Frequency 8' 
   B4XOFU8 = 'OTC: Frequency unit of time 8' 
   B4XOT8  = 'OTC: Taken for how long 8' 
   B4XOTU8 = 'OTC: Unit of time taken 8' 
   B4XODC8 = 'OTC: Diagnosis code 8' 
   B4XOC9  = 'OTC: Drug code 9' 
   B4XODD9 = 'OTC: Dosage 9' 
   B4XODU9 = 'OTC: Dosage units 9' 
   B4XOR9  = 'OTC: Route 9' 
   B4XOF9  = 'OTC: Frequency 9' 
   B4XOFU9 = 'OTC: Frequency unit of time 9' 
   B4XOT9  = 'OTC: Taken for how long 9' 
   B4XOTU9 = 'OTC: Unit of time taken 9' 
   B4XODC9 = 'OTC: Diagnosis code 9' 
   B4XOC10 = 'OTC: Drug code 10' 
   B4XODD10= 'OTC: Dosage 10' 
   B4XODU10= 'OTC: Dosage units 10' 
   B4XOR10 = 'OTC: Route 10' 
   B4XOF10 = 'OTC: Frequency 10' 
   B4XOFU10= 'OTC: Frequency unit of time 10' 
   B4XOT10 = 'OTC: Taken for how long 10' 
   B4XOTU10= 'OTC: Unit of time taken 10' 
   B4XODC10= 'OTC: Diagnosis code 10' 
   B4XOC11 = 'OTC: Drug code 11' 
   B4XODD11= 'OTC: Dosage 11' 
   B4XODU11= 'OTC: Dosage units 11' 
   B4XOR11 = 'OTC: Route 11' 
   B4XOF11 = 'OTC: Frequency 11' 
   B4XOFU11= 'OTC: Frequency unit of time 11' 
   B4XOT11 = 'OTC: Taken for how long 11' 
   B4XOTU11= 'OTC: Unit of time taken 11' 
   B4XODC11= 'OTC: Diagnosis code 11' 
   B4XOC12 = 'OTC: Drug code 12' 
   B4XODD12= 'OTC: Dosage 12' 
   B4XODU12= 'OTC: Dosage units 12' 
   B4XOR12 = 'OTC: Route 12' 
   B4XOF12 = 'OTC: Frequency 12' 
   B4XOFU12= 'OTC: Frequency unit of time 12' 
   B4XOT12 = 'OTC: Taken for how long 12' 
   B4XOTU12= 'OTC: Unit of time taken 12' 
   B4XODC12= 'OTC: Diagnosis code 12' 
   B4XAM   = 'Alternative: Number of alternative medications' 
   B4XAC1  = 'Alternative: Drug code 1' 
   B4XADD1 = 'Alternative: Dosage 1' 
   B4XADU1 = 'Alternative: Dosage units 1' 
   B4XAR1  = 'Alternative: Route 1' 
   B4XAF1  = 'Alternative: Frequency 1' 
   B4XAFU1 = 'Alternative: Frequency unit of time 1' 
   B4XAT1  = 'Alternative: Taken for how long 1' 
   B4XATU1 = 'Alternative: Unit of time taken 1' 
   B4XADC1 = 'Alternative: Diagnosis code 1' 
   B4XAC2  = 'Alternative: Drug code 2' 
   B4XADD2 = 'Alternative: Dosage 2' 
   B4XADU2 = 'Alternative: Dosage units 2' 
   B4XAR2  = 'Alternative: Route 2' 
   B4XAF2  = 'Alternative: Frequency 2' 
   B4XAFU2 = 'Alternative: Frequency unit of time 2' 
   B4XAT2  = 'Alternative: Taken for how long 2' 
   B4XATU2 = 'Alternative: Unit of time taken 2' 
   B4XADC2 = 'Alternative: Diagnosis code 2' 
   B4XAC3  = 'Alternative: Drug code 3' 
   B4XADD3 = 'Alternative: Dosage 3' 
   B4XADU3 = 'Alternative: Dosage units 3' 
   B4XAR3  = 'Alternative: Route 3' 
   B4XAF3  = 'Alternative: Frequency 3' 
   B4XAFU3 = 'Alternative: Frequency unit of time 3' 
   B4XAT3  = 'Alternative: Taken for how long 3' 
   B4XATU3 = 'Alternative: Unit of time taken 3' 
   B4XADC3 = 'Alternative: Diagnosis code 3' 
   B4XAC4  = 'Alternative: Drug code 4' 
   B4XADD4 = 'Alternative: Dosage 4' 
   B4XADU4 = 'Alternative: Dosage units 4' 
   B4XAR4  = 'Alternative: Route 4' 
   B4XAF4  = 'Alternative: Frequency 4' 
   B4XAFU4 = 'Alternative: Frequency unit of time 4' 
   B4XAT4  = 'Alternative: Taken for how long 4' 
   B4XATU4 = 'Alternative: Unit of time taken 4' 
   B4XADC4 = 'Alternative: Diagnosis code 4' 
   B4XAC5  = 'Alternative: Drug code 5' 
   B4XADD5 = 'Alternative: Dosage 5' 
   B4XADU5 = 'Alternative: Dosage units 5' 
   B4XAR5  = 'Alternative: Route 5' 
   B4XAF5  = 'Alternative: Frequency 5' 
   B4XAFU5 = 'Alternative: Frequency unit of time 5' 
   B4XAT5  = 'Alternative: Taken for how long 5' 
   B4XATU5 = 'Alternative: Unit of time taken 5' 
   B4XADC5 = 'Alternative: Diagnosis code 5' 
   B4XAC6  = 'Alternative: Drug code 6' 
   B4XADD6 = 'Alternative: Dosage 6' 
   B4XADU6 = 'Alternative: Dosage units 6' 
   B4XAR6  = 'Alternative: Route 6' 
   B4XAF6  = 'Alternative: Frequency 6' 
   B4XAFU6 = 'Alternative: Frequency unit of time 6' 
   B4XAT6  = 'Alternative: Taken for how long 6' 
   B4XATU6 = 'Alternative: Unit of time taken 6' 
   B4XADC6 = 'Alternative: Diagnosis code 6' 
   B4XAC7  = 'Alternative: Drug code 7' 
   B4XADD7 = 'Alternative: Dosage 7' 
   B4XADU7 = 'Alternative: Dosage units 7' 
   B4XAR7  = 'Alternative: Route 7' 
   B4XAF7  = 'Alternative: Frequency 7' 
   B4XAFU7 = 'Alternative: Frequency unit of time 7' 
   B4XAT7  = 'Alternative: Taken for how long 7' 
   B4XATU7 = 'Alternative: Unit of time taken 7' 
   B4XADC7 = 'Alternative: Diagnosis code 7' 
   B4XAC8  = 'Alternative: Drug code 8' 
   B4XADD8 = 'Alternative: Dosage 8' 
   B4XADU8 = 'Alternative: Dosage units 8' 
   B4XAR8  = 'Alternative: Route 8' 
   B4XAF8  = 'Alternative: Frequency 8' 
   B4XAFU8 = 'Alternative: Frequency unit of time 8' 
   B4XAT8  = 'Alternative: Taken for how long 8' 
   B4XATU8 = 'Alternative: Unit of time taken 8' 
   B4XADC8 = 'Alternative: Diagnosis code 8' 
   B4XAC9  = 'Alternative: Drug code 9' 
   B4XADD9 = 'Alternative: Dosage 9' 
   B4XADU9 = 'Alternative: Dosage units 9' 
   B4XAR9  = 'Alternative: Route 9' 
   B4XAF9  = 'Alternative: Frequency 9' 
   B4XAFU9 = 'Alternative: Frequency unit of time 9' 
   B4XAT9  = 'Alternative: Taken for how long 9' 
   B4XATU9 = 'Alternative: Unit of time taken 9' 
   B4XADC9 = 'Alternative: Diagnosis code 9' 
   B4XAC10 = 'Alternative: Drug code 10' 
   B4XADD10= 'Alternative: Dosage 10' 
   B4XADU10= 'Alternative: Dosage units 10' 
   B4XAR10 = 'Alternative: Route 10' 
   B4XAF10 = 'Alternative: Frequency 10' 
   B4XAFU10= 'Alternative: Frequency unit of time 10' 
   B4XAT10 = 'Alternative: Taken for how long 10' 
   B4XATU10= 'Alternative: Unit of time taken 10' 
   B4XADC10= 'Alternative: Diagnosis code 10' 
   B4XAC11 = 'Alternative: Drug code 11' 
   B4XADD11= 'Alternative: Dosage 11' 
   B4XADU11= 'Alternative: Dosage units 11' 
   B4XAR11 = 'Alternative: Route 11' 
   B4XAF11 = 'Alternative: Frequency 11' 
   B4XAFU11= 'Alternative: Frequency unit of time 11' 
   B4XAT11 = 'Alternative: Taken for how long 11' 
   B4XATU11= 'Alternative: Unit of time taken 11' 
   B4XADC11= 'Alternative: Diagnosis code 11' 
   B4XAC12 = 'Alternative: Drug code 12' 
   B4XADD12= 'Alternative: Dosage 12' 
   B4XADU12= 'Alternative: Dosage units 12' 
   B4XAR12 = 'Alternative: Route 12' 
   B4XAF12 = 'Alternative: Frequency 12' 
   B4XAFU12= 'Alternative: Frequency unit of time 12' 
   B4XAT12 = 'Alternative: Taken for how long 12' 
   B4XATU12= 'Alternative: Unit of time taken 12' 
   B4XADC12= 'Alternative: Diagnosis code 12' 
   B4XM    = 'Allergies: Does R have any medication allergies' 
   B4XMM   = 'Allergies: Number of allergic reactions' 
   B4XMC1  = 'Allergies: Drug code 1' 
   B4XMC2  = 'Allergies: Drug code 2' 
   B4XMC3  = 'Allergies: Drug code 3' 
   B4XMC4  = 'Allergies: Drug code 4' 
   B4XMC5  = 'Allergies: Drug code 5' 
   B4XMC6  = 'Allergies: Drug code 6' 
   B4XMC7  = 'Allergies: Drug code 7' 
   B4XMC8  = 'Allergies: Drug code 8' 
   B4XXM   = 'Additionals: Does R have additional meds' 
   B4PWHRF = 'Waist-Hip Ratio Filter for values 4 stds +/- the mean' 
   B4P1A   = 'Height in centimeters' 
   B4P1B   = 'Weight in kilograms' 
   B4PBMI  = 'BMI (Body Mass Index)' 
   B4P1C   = 'Temp in centigrade' 
   B4P1D   = 'Pulse' 
   B4P1E   = 'Respiration Rate' 
   B4P1F1S = 'BP(sitting) 1 systolic' 
   B4P1F1D = 'BP(sitting) 1 diastolic' 
   B4P1F2S = 'BP(sitting) 2 systolic' 
   B4P1F2D = 'BP(sitting) 2 diastolic' 
   B4P1F3S = 'BP(sitting) 3 systolic' 
   B4P1F3D = 'BP(sitting) 3 diastolic' 
   B4P1GS  = 'Average BP(sitting) systolic' 
   B4P1GD  = 'Average BP(sitting) diastolic' 
   B4P1GS23= 'Average of 2nd and 3rd systolic BPs' 
   B4P1GD23= 'Average of 2nd and 3rd diastolic BPs' 
   B4P2A   = 'Waist in centimeters' 
   B4P2B   = 'Hip 1: Iliac Crest in centimeters' 
   B4P2C   = 'Hip 2: Maximum Extension in cent.' 
   B4P2D   = 'Tallest measured in life (inches)' 
   B4PWHR  = 'Waist-Hip Ratio' 
   B4P3A   = 'Dominant hand' 
   B4P3A1  = 'Grip strength: Is R able to do?' 
   B4P3A2R1= 'Grip strength: Right 1 (kg/force)' 
   B4P3A2R2= 'Grip strength: Right 2 (kg/force)' 
   B4P3A2R3= 'Grip strength: Right 3 (kg/force)' 
   B4P3A2L1= 'Grip strength: Left 1 (kg/force)' 
   B4P3A2L2= 'Grip strength: Left 2 (kg/force)' 
   B4P3A2L3= 'Grip strength: Left 3 (kg/force)' 
   B4P3B1  = 'Visual acuity: Is R able to do?' 
   B4P3B2R = 'Visual acuity: uncorrected, R 20/' 
   B4P3B2L = 'Visual acuity: uncorrected, L 20/' 
   B4P3B3R = 'Visual acuity: Uncorrected,If unable specify reason' 
   B4P3B4  = 'Visual acuity: Does R wear glasses?' 
   B4P3B4A = 'Visual acuity: Type of glasses?' 
   B4P3B5R = 'Visual acuity: corrected, R 20/' 
   B4P3B5L = 'Visual acuity: corrected, L 20/' 
   B4P3B6  = 'Visual Acuity: Corrective lens N/A' 
   B4P3C1  = 'Peak Flow: Is R able to do?' 
   B4P3C2  = 'Peak Flow: in L/min' 
   B4P3C3  = 'Peak Flow: Standing/sitting' 
   B4P3D   = 'Timed walk: In wheelchair?' 
   B4P3E   = 'Timed walk: Able to walk?' 
   B4P3F   = 'Timed walk: Assistive device to walk?' 
   B4P3G   = 'Timed walk: What device does R use?' 
   B4P3H1R = 'Timed walk: if unable specify reason' 
   B4P3H2  = 'Timed walk: Trial #1 in seconds' 
   B4P3H3  = 'Timed walk: Trial #2 in seconds' 
   B4P3I1  = 'Chair stand: Able to do chair stand' 
   B4P3I2  = 'Chair stand: In seconds' 
   B4P3I3R = 'Chair Stand: If unable, specify reason' 
   B4PMD   = 'MD Completed Physician H & P?' 
   B4P4B   = 'General: Attitude' 
   B4P5A1  = 'Integument: Hair distribution' 
   B4P5A2  = 'Integument: Hair texture' 
   B4P5A3  = 'Integument: Hair color' 
   B4P5A4  = 'Integument: Hair grey %' 
   B4P5B   = 'Integument: Does R have skin lesions' 
   B4P5B1  = 'Integument: Skin lesions-acne' 
   B4P5B2  = 'Integument: Skin lesions-hives' 
   B4P5B3  = 'Integument: Skin lesions-keratoses' 
   B4P5B4  = 'Integument: Skin lesions-petechia' 
   B4P5B5  = 'Integument: Skin lesions-telangiectasia' 
   B4P5B6  = 'Integument: Skin lesions-nodules' 
   B4P5B7  = 'Integument: Skin lesions-scars' 
   B4P5B8  = 'Integument: Skin lesions-striae' 
   B4P5B9  = 'Integument: Skin lesions-tatoos' 
   B4P5B10 = 'Integument: Skin lesions-cuts' 
   B4P5B11 = 'Integument: Skin lesions-burns' 
   B4P5B12 = 'Integument: Skin lesions-self-induced' 
   B4P5B13 = 'Integument: Skin lesions-nevi/mole/skin tags' 
   B4P5B14 = 'Integument: Skin lesions-eczema' 
   B4P5B15 = 'Integument: Skin lesions-keloid' 
   B4P5B16 = 'Integument: Skin lesions-psoriasis' 
   B4P5B17 = 'Integument: Skin lesions-other' 
   B4P6A1  = 'Ears: Hearing-finger rub' 
   B4P6A2  = 'Ears: Hearing-tuning fork' 
   B4P6B   = 'Ears: Bone conduction-tuning fork' 
   B4P6C   = 'Ears: Hearing aide' 
   B4P6D1  = 'Ears: Pinnae: crease R/L' 
   B4P6D2  = 'Ears: Pinnae: erythema R/L' 
   B4P6D3  = 'Ears: Pinnae: ulceration R/L' 
   B4P6D4  = 'Ears: Pinnae: hairy R/L' 
   B4P6E1  = 'Ears: External canal: normal R/L' 
   B4P6E2  = 'Ears: External canal: erythema R/L' 
   B4P6E3  = 'Ears: External canal: discharge R/L' 
   B4P6E4  = 'Ears: External canal: occlusion' 
   B4P6E4R = 'Ears: External canal: occlusion: % right' 
   B4P6E4L = 'Ears: External canal: occlusion: % left' 
   B4P6F1  = 'Ears: Drum: average R/L' 
   B4P6F2  = 'Ears: Drum: erythema R/L' 
   B4P6F3  = 'Ears: Drum: perforation R/L' 
   B4P6F4  = 'Ears: Drum: discharge R/L' 
   B4P6F5  = 'Ears: Drum: scars R/L' 
   B4P7A   = 'Nose: Sinus tenderness' 
   B4P7A1R = 'Nose: Sinus tenderness: R-maxillary' 
   B4P7A1L = 'Nose: Sinus tenderness: L-maxillary' 
   B4P7A2R = 'Nose: Sinus tenderness: R-frontal' 
   B4P7A2L = 'Nose: Sinus tenderness: L-frontal' 
   B4P8A   = 'Mouth: Teeth: number remaining' 
   B4P8B1  = 'Mouth: Teeth: Condition: carries %' 
   B4P8B2  = 'Mouth: Teeth: Condition: fillings %' 
   B4P8B3  = 'Mouth: Teeth: Condition: alignment' 
   B4P8B4  = 'Mouth: Teeth: Condition: upper plate' 
   B4P8B5  = 'Mouth: Teeth: Condition: lower plate' 
   B4P8B6  = 'Mouth: Teeth: Condition: upper partial' 
   B4P8B7  = 'Mouth: Teeth: Condition: lower partial' 
   B4P8C1AD= 'Mouth: Teeth: Lost 1st adult tooth: as adult?' 
   B4P8C1A = 'Mouth: Teeth: Age lost first tooth' 
   B4P8C1HO= 'Mouth: Teeth: How lost first tooth' 
   B4P8C2AD= 'Mouth: Teeth: Lost last adult tooth: as adult?' 
   B4P8C2A = 'Mouth: Teeth: Age lost last tooth' 
   B4P8C2HO= 'Mouth: Teeth: How lost last tooth' 
   B4P8D   = 'Mouth: Torus' 
   B4P9A   = 'Neck: ROM' 
   B4P9A1  = 'Neck: ROM: restricted rotation' 
   B4P9A2  = 'Neck: ROM: restricted lateral' 
   B4P9A3  = 'Neck: ROM: restricted forward' 
   B4P9A4  = 'Neck: ROM: restricted backward' 
   B4P9B   = 'Neck: Tenderness' 
   B4P9C   = 'Neck: Masses' 
   B4P9D   = 'Neck: Thyroid size' 
   B4P9D1  = 'Neck: Thyroid size: goiter' 
   B4P9D2  = 'Neck: Thyroid size: smaller' 
   B4P9D3  = 'Neck: Thyroid size: nodules' 
   B4P9D3N = 'Neck: Thyroid size: nodules-number' 
   B4P9D3S = 'Neck: Thyroid size: nodules-size' 
   B4P10A1 = 'Cardio: Auscultation: Carotid bruit' 
   B4P10A2 = 'Cardio: Auscultation: Rhythm' 
   B4P10A3 = 'Cardio: Auscultation: Mid-systolic click' 
   B4P10A4 = 'Cardio: Auscultation: Opening snap' 
   B4P10B1 = 'Cardio: Auscultation: Murmurs' 
   B4P10B2 = 'Cardio: Murmurs: Systolic' 
   B4P10B2A= 'Cardio: Murmurs: Aortic sclerosis' 
   B4P10B2B= 'Cardio: Murmurs: Mitral regurgitation' 
   B4P10B3 = 'Cardio: Murmurs: Diastolic' 
   B4P10C  = 'Cardio: Pulses' 
   B4P10C1R= 'Cardio: R Carotid pulse' 
   B4P10C1L= 'Cardio: L Carotid pulse' 
   B4P10C2R= 'Cardio: R Brachial pulse' 
   B4P10C2L= 'Cardio: L Brachial pulse' 
   B4P10C3R= 'Cardio: R Radial pulse' 
   B4P10C3L= 'Cardio: L Radial pulse' 
   B4P10C4R= 'Cardio: R Femoral pulse' 
   B4P10C4L= 'Cardio: L Femoral pulse' 
   B4P10C5R= 'Cardio: R Popliteal pulse' 
   B4P10C5L= 'Cardio: L Popliteal pulse' 
   B4P10C6R= 'Cardio: R Dorsalis pedis pulse' 
   B4P10C6L= 'Cardio: L Dorsalis pedis pulse' 
   B4P10C7R= 'Cardio: R Posterior tibial pulse' 
   B4P10C7L= 'Cardio: L Posterior tibial pulse' 
   B4P11A1 = 'Thorax/lungs: Inspect contour' 
   B4P11B  = 'Thorax/lungs: Auscult' 
   B4P11B1 = 'Thorax/lungs: Auscult: Rales' 
   B4P11B1A= 'Thorax/lungs: Auscult: Rales-LR' 
   B4P11B1B= 'Thorax/lungs: Auscult: Rales- LL' 
   B4P11B1C= 'Thorax/lungs: Auscult: Rales- UL' 
   B4P11B1D= 'Thorax/lungs: Auscult: Rales- UR' 
   B4P11B2 = 'Thorax/lungs: Auscult: Wheezes' 
   B4P11B2A= 'Thorax/lungs: Auscult: Wheezes- LR' 
   B4P11B2B= 'Thorax/lungs: Auscult: Wheezes- LL' 
   B4P11B2C= 'Thorax/lungs: Auscult: Wheezes- UL' 
   B4P11B2D= 'Thorax/lungs: Auscult: Wheezes- UR' 
   B4P11B3 = 'Thorax/lungs: Auscult: Friction rubs' 
   B4P12A  = 'Musculoskel: Muscles' 
   B4P12B  = 'Musculoskel: Spine' 
   B4P12C  = 'Musculoskel: Joints' 
   B4P12C1 = 'Musculoskel: Joints: Deformities' 
   B4P12C1A= 'Musculoskel: Joints: Deformities- UC' 
   B4P12C1B= 'Musculoskel: Joints: Deformities- UP' 
   B4P12C1C= 'Musculoskel: Joints: Deformities- UD' 
   B4P12C1D= 'Musculoskel: Joints: Deformities- LC' 
   B4P12C1E= 'Musculoskel: Joints: Deformities- LP' 
   B4P12C1F= 'Musculoskel: Joints: Deformities- LD' 
   B4P12C2 = 'Musculoskel: Joints: Crepitation' 
   B4P12C2A= 'Musculoskel: Joints: Crepitation- UC' 
   B4P12C2B= 'Musculoskel: Joints: Crepitation- UP' 
   B4P12C2C= 'Musculoskel: Joints: Crepitation- UD' 
   B4P12C2D= 'Musculoskel: Joints: Crepitation- LC' 
   B4P12C2E= 'Musculoskel: Joints: Crepitation- LP' 
   B4P12C2F= 'Musculoskel: Joints: Crepitation- LD' 
   B4P12C3 = 'Musculoskel: Joints: ROM' 
   B4P12C3A= 'Musculoskel: Joints: ROM- UC' 
   B4P12C3B= 'Musculoskel: Joints: ROM- UP' 
   B4P12C3C= 'Musculoskel: Joints: ROM- UD' 
   B4P12C3D= 'Musculoskel: Joints: ROM- LC' 
   B4P12C3E= 'Musculoskel: Joints: ROM- LP' 
   B4P12C3F= 'Musculoskel: Joints: ROM- LD' 
   B4P12C4 = 'Musculoskel: Joints: Swelling' 
   B4P12C4A= 'Musculoskel: Joints: Swelling- UC' 
   B4P12C4B= 'Musculoskel: Joints: Swelling- UP' 
   B4P12C4C= 'Musculoskel: Joints: Swelling- UD' 
   B4P12C4D= 'Musculoskel: Joints: Swelling- LC' 
   B4P12C4E= 'Musculoskel: Joints: Swelling- LP' 
   B4P12C4F= 'Musculoskel: Joints: Swelling- LD' 
   B4P12C5 = 'Musculoskel: Joints: Tenderness' 
   B4P12C5A= 'Musculoskel: Joints: Tenderness- UC' 
   B4P12C5B= 'Musculoskel: Joints: Tenderness- UP' 
   B4P12C5C= 'Musculoskel: Joints: Tenderness- UD' 
   B4P12C5D= 'Musculoskel: Joints: Tenderness- LC' 
   B4P12C5E= 'Musculoskel: Joints: Tenderness- LP' 
   B4P12C5F= 'Musculoskel: Joints: Tenderness- LD' 
   B4P12C6 = 'Musculoskel: Joints: Heat' 
   B4P12C7 = 'Musculoskel: Joints: Redness' 
   B4P12D  = 'Musculoskel: # of tender points' 
   B4P12E1 = 'Musculoskel: Appearance of extremities' 
   B4P12E2 = 'Musculoskel: Extremities: Clubbing' 
   B4P12E3 = 'Musculoskel: Extremities: Edema' 
   B4P12E4 = 'Musculoskel: Extremities Varicosities' 
   B4P12E5 = 'Musculoskel: Extremities: Incr p/v' 
   B4P13   = 'Neuro: Right- or Left-Handed' 
   B4P13A1 = 'Neuro: Coordination: Finger to nose' 
   B4P13A2 = 'Neuro: Coordination: Past pointing' 
   B4P13A3 = 'Neuro: Coordination: Heel to knee' 
   B4P13A4 = 'Neuro: Coordination: Romberg' 
   B4P13B1 = 'Neuro: Strength' 
   B4P13B1A= 'Neuro: Strength: R/UE' 
   B4P13B1B= 'Neuro: Strength: L/UE' 
   B4P13B1C= 'Neuro: Strength: R/LE' 
   B4P13B1D= 'Neuro: Strength: L/LE' 
   B4P13B2 = 'Neuro: Tone' 
   B4P13B2A= 'Neuro: Tone: R/UE' 
   B4P13B2B= 'Neuro: Tone: L/UE' 
   B4P13B2C= 'Neuro: Tone: R/LE' 
   B4P13B2D= 'Neuro: Tone: L/LE' 
   B4P13B3 = 'Neuro: Volume' 
   B4P13B3A= 'Neuro: Volume: R/UE' 
   B4P13B3B= 'Neuro: Volume: L/UE' 
   B4P13B3C= 'Neuro: Volume: R/LE' 
   B4P13B3D= 'Neuro: Volume: L/LE' 
   B4P13B4 = 'Neuro: Contractures' 
   B4P13B4A= 'Neuro: Contractures: R/UE' 
   B4P13B4B= 'Neuro: Contractures: L/UE' 
   B4P13B4C= 'Neuro: Contractures: R/LE' 
   B4P13B4D= 'Neuro: Contractures: L/LE' 
   B4P13B5 = 'Neuro: Localized spasm' 
   B4P13B5A= 'Neuro: Localized spasm: R/UE' 
   B4P13B5B= 'Neuro: Localized spasm: L/UE' 
   B4P13B5C= 'Neuro: Localized spasm: R/LE' 
   B4P13B5D= 'Neuro: Localized spasm: L/LE' 
   B4P13C1R= 'Neuro: Reflexes: Biceps: Right' 
   B4P13C1L= 'Neuro: Reflexes: Biceps: Left' 
   B4P13C2R= 'Neuro: Reflexes: Quads: Right' 
   B4P13C2L= 'Neuro: Reflexes: Quads: Left' 
   B4P13C3R= 'Neuro: Reflexes: Ankle: Right' 
   B4P13C3L= 'Neuro: Reflexes: Ankle: Left' 
   B4P13C4A= 'Neuro: Reflexes: Plantar: Dorsiflexion' 
   B4P13D1 = 'Neuro: Sensation: Light touch' 
   B4P13D1A= 'Neuro: Sensation: Light touch: R/UE' 
   B4P13D1B= 'Neuro: Sensation: Light touch: L/UE' 
   B4P13D1C= 'Neuro: Sensation: Light touch: R/LE' 
   B4P13D1D= 'Neuro: Sensation: Light touch: L/LE' 
   B4P13D2 = 'Neuro: Sensation: Pin prick' 
   B4P13D2A= 'Neuro: Sensation: Pin prick: R/UE' 
   B4P13D2B= 'Neuro: Sensation: Pin prick: L/UE' 
   B4P13D2C= 'Neuro: Sensation: Pin prick: R/LE' 
   B4P13D2D= 'Neuro: Sensation: Pin prick: L/LE' 
   B4P13D3 = 'Neuro: Sensation: Temperature' 
   B4P13D3A= 'Neuro: Sensation: Temperature: R/UE' 
   B4P13D3B= 'Neuro: Sensation: Temperature: L/UE' 
   B4P13D3C= 'Neuro: Sensation: Temperature: R/LE' 
   B4P13D3D= 'Neuro: Sensation: Temperature: L/LE' 
   B4P13D4 = 'Neuro: Sensation: Position' 
   B4P13D4A= 'Neuro: Sensation: Position: R/UE' 
   B4P13D4B= 'Neuro: Sensation: Position: L/UE' 
   B4P13D4C= 'Neuro: Sensation: Position: R/LE' 
   B4P13D4D= 'Neuro: Sensation: Position: L/LE' 
   B4P13D5 = 'Neuro: Sensation: Vibration' 
   B4P13D5A= 'Neuro: Sensation: Vibration: R/UE' 
   B4P13D5B= 'Neuro: Sensation: Vibration: L/UE' 
   B4P13D5C= 'Neuro: Sensation: Vibration: R/LE' 
   B4P13D5D= 'Neuro: Sensation: Vibration: L/LE' 
   B4P13E1 = 'Neuro: Autonom: Sweating' 
   B4P13E1A= 'Neuro: Autonom: Sweating: R/UE' 
   B4P13E1B= 'Neuro: Autonom: Sweating: L/UE' 
   B4P13E1C= 'Neuro: Autonom: Sweating: R/LE' 
   B4P13E1D= 'Neuro: Autonom: Sweating: L/LE' 
   B4P13E2 = 'Neuro: Autonom: Vasomotor change' 
   B4P13E3 = 'Neuro: Autonom: Trophic disturb' 
   B4ZBLOOD= 'P4 Blood received' 
   B4BHA1C = 'Blood Hemoglobin A1c %' 
   B4BCHOL = 'Blood Total Cholesterol (mg/dL)' 
   B4BTRIGL= 'Blood Triglycerides (mg/dL)' 
   B4BHDL  = 'Blood HDL Cholesterol (mg/dL)' 
   B4BLDL  = 'Blood LDL  Cholesterol (mg/dL)' 
   B4BRTHDL= 'Blood Ratio Total / HDL Cholesterol' 
   B4BDHEAS= 'Blood DHEA-S  (ug/dL)' 
   B4BDHEA = 'Blood DHEA (ng/mL)' 
   B4BSCREA= 'Blood Creatinine (mg/dL)' 
   B4BIL6  = 'Serum IL6 (pg/mL)' 
   B4BSIL6R= 'Serum Soluble IL6 Receptor (pg/mL)' 
   B4BFGN  = 'Blood Fibrinogen (mg/dL)' 
   B4BCRP  = 'Blood C-Reactive Protein (ug/mL)' 
   B4BSESEL= 'Serum soluble E-Selectin (ng/mL)' 
   B4BSICAM= 'Serum Soluble ICAM-1 (ng/mL)' 
   B4BATBC = 'Blood All trans-beta-carotene (umol/L)' 
   B4B13CBC= 'Blood 13-cis-beta-carotene (umol/L)' 
   B4BAC   = 'Blood alpha-carotene (umol/L)' 
   B4BBCX  = 'Blood beta-cryptoxanthin (umol/L)' 
   B4BLUT  = 'Blood Lutein (umol/L)' 
   B4BZX   = 'Blood Zeaxanthin (umol/L)' 
   B4BLYC  = 'Blood Lycopene (umol/L)' 
   B4BRET  = 'Blood Retinol (umol/L)' 
   B4BATOC = 'Blood alpha-tocopherol (umol/L)' 
   B4BGTOC = 'Blood gamma-tocopherol (umol/L)' 
   B4BP1NP = 'Blood Amino terminal Propeptide type 1 Procollagen (ugL)' 
   B4BSBAP = 'Blood Bone Specific Alkaline Phospatase (UL)' 
   B4BSNTX = 'Blood n-Teleopeptide type 1 collagen (nM BCE)' 
   B4BGLUC = 'Blood Fasting Glucose levels mg/dL' 
   B4BINSLN= 'Blood Fasting Insulin levels uIU/mL' 
   B4BIGF1 = 'Blood Fasting IGF1 (Insulin-like Growth Factor 1) ng/mL)' 
   B4BHOMAIR= 'HOMA-IR: (b4bgluc*b4binsln)/405' 
   B4ZURINE= 'P4 Urine sample Received' 
   B4BUPROB= 'Urine collection period less than 11 hours or greater than 13 hours?' 
   B4BUSTRT= 'Urine collect: Start time' 
   B4BUEND = 'Urine collect: End time' 
   B4BUVDYN= 'Any voids not collected?' 
   B4BUVDN = 'Number voids not collected' 
   B4BURVOL= 'Urine Volume (ml)' 
   B4BCORTL= 'Urine Cortisol (ug/dL)' 
   B4BCORTO= 'Urine Cortisone (ug/dL)' 
   B4BUCREA= 'Urine Creatinine (mg/dL)' 
   B4BCLCRE= 'Urine Cortisol adj for Urine Creat (ug/g)' 
   B4BCOCRE= 'Urine Cortisone adj for UrineCreat(ug/g)' 
   B4BNOREP= 'Urine Norepinepherine (ug/dL)' 
   B4BEPIN = 'Urine Epinephrine (ug/dL)' 
   B4BDOPA = 'Urine Dopamine (ug/dL)' 
   B4BNE12 = 'Urine Norepinephrine 12 hour (ug/12h)' 
   B4BEPI12= 'Urine Epinephrine 12 hour (ug/12h)' 
   B4BDOP12= 'Urine Dopamine 12 hour (ug/12h)' 
   B4BNOCRE= 'Urine Norepinephrine adjusted for Urine Creat (ug/g)' 
   B4BEPCRE= 'Urine Epinephrine adjusted for Urine Creat(ug/g)' 
   B4BDOCRE= 'Urine Dopamine adjusted for Urine Creat(ug/g)' 
   B4BNECL = 'Ratio Urine Norepinephrine/Cortisol' 
   B4BSUCRE= 'Ratio Serum Creatinine /Urine Creatinine' 
   B4BGFR  = 'Glomerular Filtration Rate (ml/min)' 
   B4ZSALIV= 'P4 Saliva received' 
   B4BSCL11= 'Saliva cortisol baseline dupl#1 (nmol/L)' 
   B4BSCL21= 'Saliva cortisol Post Cog dupl#1 (nmol/L)' 
   B4BSCL31= 'Saliva cortisol Post Orthdupl#1 (nmol/L)' 
   B4BSCL41= 'Saliva cortisol final dupl#1 (nmol/L)' 
   B4BSDUP = 'Was this sample run in duplicate? 1=yes' 
   B4BSCL12= 'Saliva cortisol baseline dupl#2 (nmol/L)' 
   B4BSCL22= 'Saliva cortisol Post Cog dupl#2 (nmol/L)' 
   B4BSCL32= 'Saliva cortisol Post Orthdupl#2 (nmol/L)' 
   B4BSCL42= 'Saliva cortisol final dupl#2 (nmol/L)' 
   B4BSCL1A= 'Saliva cortisol baseline avge (nmol/L)' 
   B4BSCL2A= 'Saliva cortisol Post Cog avge (nmol/L)' 
   B4BSCL3A= 'Saliva cortisol Post Orth avge (nmol/L)' 
   B4BSCL4A= 'Saliva cortisol final avge (nmol/L)' 
   B4BSCL14= 'Saliva cortisol All Sample avge (nmol/L)' 
   B4AWAVL = 'Are both Watch & Diary Data Available?' 
   B4AWIMPU= 'Watch values imputed?' 
   B4AWMARK= 'Watch values from event marker button?' 
   B4AWDAYS= '# of Days of Watch Data Available' 
   B4AWPART= 'Only Partial Watch data Available?' 
   B4AWIDIO= 'Idiosyncratic Sleep Pattern?' 
   B4AWTMZN= 'Data Affected by Time Zone change or DST?' 
   B4AWLAG = 'Lag P4 completion to Actiwatch period start date (in days)' 
   B4AWBGNM= 'Month began Actiwatch sleep period' 
   B4AWENDM= 'Month ended Actiwatch sleep Period' 
   B4AD11  = 'Tue PM How Alert Today' 
   B4AD12  = 'Tue PM Minutes of Moderate Exercise' 
   B4AD13  = 'Tue PM Did You Nap Today' 
   B4AD13S = 'Tue PM Specify Nap Length (Minutes)' 
   B4AD14  = 'Tue PM How Much Caffeine Today' 
   B4AD15  = 'Tue PM How Much Alcohol Today' 
   B4AD16  = 'Tue PM Take Meds Not Usually Taken' 
   B4AD16M = 'Tue PM: If Yes, took med not usually taken - med type' 
   B4AD17  = 'Wed AM Did You Take Sleep Med or Supplmt' 
   B4AD17M = 'Wed AM: If Yes, took med to help sleep - med type' 
   B4AD18  = 'Wed AM What Time Did You Go To Bed' 
   B4AD18A = 'Wed AM Go To Bed AM or PM' 
   B4AD19  = 'Wed AM Minutes To Fall Asleep' 
   B4AD110 = 'Wed AM How Difficult To Fall Asleep' 
   B4AD111 = 'Wed AM How Many Times Did You Wake' 
   B4AD112 = 'Wed AM Wake Because Of Noise Or Activity' 
   B4AD113 = 'Wed AM If Woke, Diff. Getting To Sleep' 
   B4AD114 = 'Wed AM If Woke, Num. Of Times Left Bed' 
   B4AD115 = 'Wed AM Wake Up Time' 
   B4AD115A= 'Wed AM Wake Up Time AM Or PM' 
   B4AD116 = 'Wed AM Get Up Time' 
   B4AD116A= 'Wed AM Get Up Time AM Or PM' 
   B4AD117 = 'Wed AM How Deeply Did You Sleep' 
   B4AD118 = 'Wed AM How Well Rested Do You Feel' 
   B4AD119 = 'Wed AM How Alert Do You Feel' 
   B4AD120 = 'Wed AM Overall Quality of Sleep' 
   B4AD21  = 'Wed PM How Alert Today' 
   B4AD22  = 'Wed PM Minutes of Moderate Exercise' 
   B4AD23  = 'Wed PM Did You Nap Today' 
   B4AD23S = 'Wed PM Specify Nap Length (Minutes)' 
   B4AD24  = 'Wed PM How Much Caffeine Today' 
   B4AD25  = 'Wed PM How Much Alcohol Today' 
   B4AD26  = 'Wed PM Take Meds Not Usually Taken' 
   B4AD26M = 'Wed PM: If Yes, took med not usually taken - med type' 
   B4AD27  = 'Thu AM Did You Take Sleep Med or Supplmt' 
   B4AD27M = 'Thu AM: If Yes, took med to help sleep - med type' 
   B4AD28  = 'Thu AM What Time Did You Go To Bed' 
   B4AD28A = 'Thu AM Go To Bed AM or PM' 
   B4AD29  = 'Thu AM Minutes To Fall Asleep' 
   B4AD210 = 'Thu AM How Difficult To Fall Asleep' 
   B4AD211 = 'Thu AM How Many Times Did You Wake' 
   B4AD212 = 'Thu AM Wake Because Of Noise Or Activity' 
   B4AD213 = 'Thu AM If Woke, Diff. Getting To Sleep' 
   B4AD214 = 'Thu AM If Woke, Num. Of Times Left Bed' 
   B4AD215 = 'Thu AM Wake Up Time' 
   B4AD215A= 'Thu AM Wake Up Time AM Or PM' 
   B4AD216 = 'Thu AM Get Up Time' 
   B4AD216A= 'Thu AM Get Up Time AM Or PM' 
   B4AD217 = 'Thu AM How Deeply Did You Sleep' 
   B4AD218 = 'Thu AM How Well Rested Do You Feel' 
   B4AD219 = 'Thu AM How Alert Do You Feel' 
   B4AD220 = 'Thu AM Overall Quality of Sleep' 
   B4AD31  = 'Thu PM How Alert Today' 
   B4AD32  = 'Thu PM Minutes of Moderate Exercise' 
   B4AD33  = 'Thu PM Did You Nap Today' 
   B4AD33S = 'Thu PM Specify Nap Length (Minutes)' 
   B4AD34  = 'Thu PM How Much Caffeine Today' 
   B4AD35  = 'Thu PM How Much Alcohol Today' 
   B4AD36  = 'Thu PM Take Meds Not Usually Taken' 
   B4AD36M = 'Thu PM: If Yes, took med not usually taken - med type' 
   B4AD37  = 'Fri AM Did You Take Sleep Med or Supplmt' 
   B4AD37M = 'Fri AM: If Yes, took med to help sleep - med type' 
   B4AD38  = 'Fri AM What Time Did You Go To Bed' 
   B4AD38A = 'Fri AM Go To Bed AM or PM' 
   B4AD39  = 'Fri AM Minutes To Fall Asleep' 
   B4AD310 = 'Fri AM How Difficult To Fall Asleep' 
   B4AD311 = 'Fri AM How Many Times Did You Wake' 
   B4AD312 = 'Fri AM Wake Because Of Noise Or Activity' 
   B4AD313 = 'Fri AM If Woke, Diff. Getting To Sleep' 
   B4AD314 = 'Fri AM If Woke, Num. Of Times Left Bed' 
   B4AD315 = 'Fri AM Wake Up Time' 
   B4AD315A= 'Fri AM Wake Up Time AM Or PM' 
   B4AD316 = 'Fri AM Get Up Time' 
   B4AD316A= 'Fri AM Get Up Time AM Or PM' 
   B4AD317 = 'Fri AM How Deeply Did You Sleep' 
   B4AD318 = 'Fri AM How Well Rested Do You Feel' 
   B4AD319 = 'Fri AM How Alert Do You Feel' 
   B4AD320 = 'Fri AM Overall Quality of Sleep' 
   B4AD41  = 'Fri PM How Alert Today' 
   B4AD42  = 'Fri PM Minutes of Moderate Exercise' 
   B4AD43  = 'Fri PM Did You Nap Today' 
   B4AD43S = 'Fri PM Specify Nap Length (Minutes)' 
   B4AD44  = 'Fri PM How Much Caffeine Today' 
   B4AD45  = 'Fri PM How Much Alcohol Today' 
   B4AD46  = 'Fri PM Take Meds Not Usually Taken' 
   B4AD46M = 'Fri PM: If Yes, took med not usually taken - med type' 
   B4AD47  = 'Sat AM Did You Take Sleep Med or Supplmt' 
   B4AD47M = 'Sat AM: If Yes, took med to help sleep - med type' 
   B4AD48  = 'Sat AM What Time Did You Go To Bed' 
   B4AD48A = 'Sat AM Go To Bed AM or PM' 
   B4AD49  = 'Sat AM Minutes To Fall Asleep' 
   B4AD410 = 'Sat AM How Difficult To Fall Asleep' 
   B4AD411 = 'Sat AM How Many Times Did You Wake' 
   B4AD412 = 'Sat AM Wake Because Of Noise Or Activity' 
   B4AD413 = 'Sat AM If Woke, Diff. Getting To Sleep' 
   B4AD414 = 'Sat AM If Woke, Num. Of Times Left Bed' 
   B4AD415 = 'Sat AM Wake Up Time' 
   B4AD415A= 'Sat AM Wake Up Time AM Or PM' 
   B4AD416 = 'Sat AM Get Up Time' 
   B4AD416A= 'Sat AM Get Up Time AM Or PM' 
   B4AD417 = 'Sat AM How Deeply Did You Sleep' 
   B4AD418 = 'Sat AM How Well Rested Do You Feel' 
   B4AD419 = 'Sat AM How Alert Do You Feel' 
   B4AD420 = 'Sat AM Overall Quality of Sleep' 
   B4AD51  = 'Sat PM How Alert Today' 
   B4AD52  = 'Sat PM Minutes of Moderate Exercise' 
   B4AD53  = 'Sat PM Did You Nap Today' 
   B4AD53S = 'Sat PM Specify Nap Length (Minutes)' 
   B4AD54  = 'Sat PM How Much Caffeine Today' 
   B4AD55  = 'Sat PM How Much Alcohol Today' 
   B4AD56  = 'Sat PM Take Meds Not Usually Taken' 
   B4AD56M = 'Sat PM: If Yes, took med not usually taken - med type' 
   B4AD57  = 'Sun AM Did You Take Sleep Med or Supplmt' 
   B4AD57M = 'Sun AM: If Yes, took med to help sleep - med type' 
   B4AD58  = 'Sun AM What Time Did You Go To Bed' 
   B4AD58A = 'Sun AM Go To Bed AM or PM' 
   B4AD59  = 'Sun AM Minutes To Fall Asleep' 
   B4AD510 = 'Sun AM How Difficult To Fall Asleep' 
   B4AD511 = 'Sun AM How Many Times Did You Wake' 
   B4AD512 = 'Sun AM Wake Because Of Noise Or Activity' 
   B4AD513 = 'Sun AM If Woke, Diff. Getting To Sleep' 
   B4AD514 = 'Sun AM If Woke, Num. Of Times Left Bed' 
   B4AD515 = 'Sun AM Wake Up Time' 
   B4AD515A= 'Sun AM Wake Up Time AM Or PM' 
   B4AD516 = 'Sun AM Get Up Time' 
   B4AD516A= 'Sun AM Get Up Time AM Or PM' 
   B4AD517 = 'Sun AM How Deeply Did You Sleep' 
   B4AD518 = 'Sun AM How Well Rested Do You Feel' 
   B4AD519 = 'Sun AM How Alert Do You Feel' 
   B4AD520 = 'Sun AM Overall Quality of Sleep' 
   B4AD61  = 'Sun PM How Alert Today' 
   B4AD62  = 'Sun PM Minutes of Moderate Exercise' 
   B4AD63  = 'Sun PM Did You Nap Today' 
   B4AD63S = 'Sun PM Specify Nap Length (Minutes)' 
   B4AD64  = 'Sun PM How Much Caffeine Today' 
   B4AD65  = 'Sun PM How Much Alcohol Today' 
   B4AD66  = 'Sun PM Take Meds Not Usually Taken' 
   B4AD66M = 'Sun PM: If Yes, took med not usually taken - med type' 
   B4AD67  = 'Mon AM Did You Take Sleep Med or Supplmt' 
   B4AD67M = 'Mon AM: If Yes, took med to help sleep - med type' 
   B4AD68  = 'Mon AM What Time Did You Go To Bed' 
   B4AD68A = 'Mon AM Go To Bed AM or PM' 
   B4AD69  = 'Mon AM Minutes To Fall Asleep' 
   B4AD610 = 'Mon AM How Difficult To Fall Asleep' 
   B4AD611 = 'Mon AM How Many Times Did You Wake' 
   B4AD612 = 'Mon AM Wake Because Of Noise Or Activity' 
   B4AD613 = 'Mon AM If Woke, Diff. Getting To Sleep' 
   B4AD614 = 'Mon AM If Woke, Num. Of Times Left Bed' 
   B4AD615 = 'Mon AM Wake Up Time' 
   B4AD615A= 'Mon AM Wake Up Time AM Or PM' 
   B4AD616 = 'Mon AM Get Up Time' 
   B4AD616A= 'Mon AM Get Up Time AM Or PM' 
   B4AD617 = 'Mon AM How Deeply Did You Sleep' 
   B4AD618 = 'Mon AM How Well Rested Do You Feel' 
   B4AD619 = 'Mon AM How Alert Do You Feel' 
   B4AD620 = 'Mon AM Overall Quality of Sleep' 
   B4AD71  = 'Mon PM How Alert Today' 
   B4AD72  = 'Mon PM Minutes of Moderate Exercise' 
   B4AD73  = 'Mon PM Did You Nap Today' 
   B4AD73S = 'Mon PM Specify Nap Length (Minutes)' 
   B4AD74  = 'Mon PM How Much Caffeine Today' 
   B4AD75  = 'Mon PM How Much Alcohol Today' 
   B4AD76  = 'Mon PM Take Meds Not Usually Taken' 
   B4AD76M = 'Mon PM: If Yes, took med not usually taken - med type' 
   B4AD77  = 'Tue AM Did You Take Sleep Med or Supplmt' 
   B4AD77M = 'Tue AM: If Yes, took med to help sleep - med type' 
   B4AD78  = 'Tue AM What Time Did You Go To Bed' 
   B4AD78A = 'Tue AM Go To Bed AM or PM' 
   B4AD79  = 'Tue AM Minutes To Fall Asleep' 
   B4AD710 = 'Tue AM How Difficult To Fall Asleep' 
   B4AD711 = 'Tue AM How Many Times Did You Wake' 
   B4AD712 = 'Tue AM Wake Because Of Noise Or Activity' 
   B4AD713 = 'Tue AM If Woke, Diff. Getting To Sleep' 
   B4AD714 = 'Tue AM If Woke, Num. Of Times Left Bed' 
   B4AD715 = 'Tue AM Wake Up Time' 
   B4AD715A= 'Tue AM Wake Up Time AM Or PM' 
   B4AD716 = 'Tue AM Get Up Time' 
   B4AD716A= 'Tue AM Get Up Time AM Or PM' 
   B4AD717 = 'Tue AM How Deeply Did You Sleep' 
   B4AD718 = 'Tue AM How Well Rested Do You Feel' 
   B4AD719 = 'Tue AM How Alert Do You Feel' 
   B4AD720 = 'Tue AM Overall Quality of Sleep' 
   B4WPSTI = 'Data Collection Period Start Time' 
   B4WR1SDY= 'Rest 1 Start Day' 
   B4WR1ST = 'Rest 1 Start Time' 
   B4WR1EDY= 'Rest 1 End Day' 
   B4WR1ET = 'Rest 1 End Time' 
   B4WR1TAC= 'Rest 1 Total Activity Counts' 
   B4WR1ACM= 'Rest 1 Avg Activity Counts/min' 
   B4WR1MAC= 'Rest 1 Max Activity Counts' 
   B4WR1IAC= 'Rest 1 % Invalid Activity Counts' 
   B4WR1SW = 'Rest 1 % Invalid Sleep/Wake Time' 
   B4WR1WT = 'Rest 1 Wake Time' 
   B4WR1PW = 'Rest 1 % Wake Time' 
   B4WR1WB = 'Rest 1 # Wake Bouts' 
   B4WR1AWB= 'Rest 1 Avg Wake Bouts' 
   B4WR1SLT= 'Rest 1 Sleep Time' 
   B4WR1PSL= 'Rest 1 % Sleep Time' 
   B4WR1SLB= 'Rest 1 # Sleep Bouts' 
   B4WR1ASB= 'Rest 1 Avg Sleep Bouts' 
   B4WS1SDY= 'Sleep 1 Start Day' 
   B4WS1ST = 'Sleep 1 Start Time' 
   B4WS1EDY= 'Sleep 1 End Day' 
   B4WS1ET = 'Sleep 1 End Time' 
   B4WS1TAC= 'Sleep 1 Total Activity Counts' 
   B4WS1ACM= 'Sleep 1 Avg Activity Counts/min' 
   B4WS1MAC= 'Sleep 1 Max Activity Counts' 
   B4WS1IAC= 'Sleep 1 % Invalid Activity Counts' 
   B4WS1ISW= 'Sleep 1 % Invalid Sleep/Wake Time' 
   B4WS1OL = 'Sleep 1 Sleep Onset Latency' 
   B4WS1SNT= 'Sleep 1 Time Dozing Before Rising' 
   B4WS1EFF= 'Sleep 1 Sleep Efficiency' 
   B4WS1WSO= 'Sleep 1 Wake After Sleep Onset' 
   B4WS1WT = 'Sleep 1 Wake Time' 
   B4WS1PW = 'Sleep 1 % Wake Time' 
   B4WS1WB = 'Sleep 1 # Wake Bouts' 
   B4WS1AWB= 'Sleep 1 Avg Wake Bouts' 
   B4WS1SLT= 'Sleep 1 Sleep Time' 
   B4WS1PSL= 'Sleep 1 % Sleep Time' 
   B4WS1SLB= 'Sleep 1 # Sleep Bouts' 
   B4WS1ASB= 'Sleep 1 Avg Sleep Bouts' 
   B4WA1SDY= 'Active 1 Start Day' 
   B4WA1ST = 'Active 1 Start Time' 
   B4WA1EDY= 'Active 1 End Day' 
   B4WA1ET = 'Active 1 End Time' 
   B4WA1TAC= 'Active 1 Total Activity Counts' 
   B4WA1ACM= 'Active 1 Avg Activity Counts/min' 
   B4WA1MAC= 'Active 1 Max Activity Counts' 
   B4WA1IAC= 'Active 1 % Invalid Activity Counts' 
   B4WA1ISW= 'Active 1 % Invalid Sleep/Wake Time' 
   B4WA1WT = 'Active 1 Wake Time' 
   B4WA1PW = 'Active 1 % Wake Time' 
   B4WA1WB = 'Active 1 # Wake Bouts' 
   B4WA1AWB= 'Active 1 Avg Wake Bouts' 
   B4WA1SLT= 'Active 1 Sleep Time' 
   B4WA1PSL= 'Active 1 % Sleep Time' 
   B4WA1SLB= 'Active 1 # Sleep Bouts' 
   B4WA1ASB= 'Active 1 Avg Sleep Bouts' 
   B4WR2SDY= 'Rest 2 Start Day' 
   B4WR2ST = 'Rest 2 Start Time' 
   B4WR2EDY= 'Rest 2 End Day' 
   B4WR2ET = 'Rest 2 End Time' 
   B4WR2TAC= 'Rest 2 Total Activity Counts' 
   B4WR2ACM= 'Rest 2 Avg Activity Counts/min' 
   B4WR2MAC= 'Rest 2 Max Activity Counts' 
   B4WR2IAC= 'Rest 2 % Invalid Activity Counts' 
   B4WR2SW = 'Rest 2 % Invalid Sleep/Wake Time' 
   B4WR2WT = 'Rest 2 Wake Time' 
   B4WR2PW = 'Rest 2 % Wake Time' 
   B4WR2WB = 'Rest 2 # Wake Bouts' 
   B4WR2AWB= 'Rest 2 Avg Wake Bouts' 
   B4WR2SLT= 'Rest 2 Sleep Time' 
   B4WR2PSL= 'Rest 2 % Sleep Time' 
   B4WR2SLB= 'Rest 2 # Sleep Bouts' 
   B4WR2ASB= 'Rest 2 Avg Sleep Bouts' 
   B4WS2SDY= 'Sleep 2 Start Day' 
   B4WS2ST = 'Sleep 2 Start Time' 
   B4WS2EDY= 'Sleep 2 End Day' 
   B4WS2ET = 'Sleep 2 End Time' 
   B4WS2TAC= 'Sleep 2 Total Activity Counts' 
   B4WS2ACM= 'Sleep 2 Avg Activity Counts/min' 
   B4WS2MAC= 'Sleep 2 Max Activity Counts' 
   B4WS2IAC= 'Sleep 2 % Invalid Activity Counts' 
   B4WS2ISW= 'Sleep 2 % Invalid Sleep/Wake Time' 
   B4WS2OL = 'Sleep 2 Sleep Onset Latency' 
   B4WS2SNT= 'Sleep 2 Time Dozing Before Rising' 
   B4WS2EFF= 'Sleep 2 Sleep Efficiency' 
   B4WS2WSO= 'Sleep 2 Wake After Sleep Onset' 
   B4WS2WT = 'Sleep 2 Wake Time' 
   B4WS2PW = 'Sleep 2 % Wake Time' 
   B4WS2WB = 'Sleep 2 # Wake Bouts' 
   B4WS2AWB= 'Sleep 2 Avg Wake Bouts' 
   B4WS2SLT= 'Sleep 2 Sleep Time' 
   B4WS2PSL= 'Sleep 2 % Sleep Time' 
   B4WS2SLB= 'Sleep 2 # Sleep Bouts' 
   B4WS2ASB= 'Sleep 2 Avg Sleep Bouts' 
   B4WA2SDY= 'Active 2 Start Day' 
   B4WA2ST = 'Active 2 Start Time' 
   B4WA2EDY= 'Active 2 End Day' 
   B4WA2ET = 'Active 2 End Time' 
   B4WA2TAC= 'Active 2 Total Activity Counts' 
   B4WA2ACM= 'Active 2 Avg Activity Counts/min' 
   B4WA2MAC= 'Active 2 Max Activity Counts' 
   B4WA2IAC= 'Active 2 % Invalid Activity Counts' 
   B4WA2ISW= 'Active 2 % Invalid Sleep/Wake Time' 
   B4WA2WT = 'Active 2 Wake Time' 
   B4WA2PW = 'Active 2 % Wake Time' 
   B4WA2WB = 'Active 2 # Wake Bouts' 
   B4WA2AWB= 'Active 2 Avg Wake Bouts' 
   B4WA2SLT= 'Active 2 Sleep Time' 
   B4WA2PSL= 'Active 2 % Sleep Time' 
   B4WA2SLB= 'Active 2 # Sleep Bouts' 
   B4WA2ASB= 'Active 2 Avg Sleep Bouts' 
   B4WR3SDY= 'Rest 3 Start Day' 
   B4WR3ST = 'Rest 3 Start Time' 
   B4WR3EDY= 'Rest 3 End Day' 
   B4WR3ET = 'Rest 3 End Time' 
   B4WR3TAC= 'Rest 3 Total Activity Counts' 
   B4WR3ACM= 'Rest 3 Avg Activity Counts/min' 
   B4WR3MAC= 'Rest 3 Max Activity Counts' 
   B4WR3IAC= 'Rest 3 % Invalid Activity Counts' 
   B4WR3SW = 'Rest 3 % Invalid Sleep/Wake Time' 
   B4WR3WT = 'Rest 3 Wake Time' 
   B4WR3PW = 'Rest 3 % Wake Time' 
   B4WR3WB = 'Rest 3 # Wake Bouts' 
   B4WR3AWB= 'Rest 3 Avg Wake Bouts' 
   B4WR3SLT= 'Rest 3 Sleep Time' 
   B4WR3PSL= 'Rest 3 % Sleep Time' 
   B4WR3SLB= 'Rest 3 # Sleep Bouts' 
   B4WR3ASB= 'Rest 3 Avg Sleep Bouts' 
   B4WS3SDY= 'Sleep 3 Start Day' 
   B4WS3ST = 'Sleep 3 Start Time' 
   B4WS3EDY= 'Sleep 3 End Day' 
   B4WS3ET = 'Sleep 3 End Time' 
   B4WS3TAC= 'Sleep 3 Total Activity Counts' 
   B4WS3ACM= 'Sleep 3 Avg Activity Counts/min' 
   B4WS3MAC= 'Sleep 3 Max Activity Counts' 
   B4WS3IAC= 'Sleep 3 % Invalid Activity Counts' 
   B4WS3ISW= 'Sleep 3 % Invalid Sleep/Wake Time' 
   B4WS3OL = 'Sleep 3 Sleep Onset Latency' 
   B4WS3SNT= 'Sleep 3 Time Dozing Before Rising' 
   B4WS3EFF= 'Sleep 3 Sleep Efficiency' 
   B4WS3WSO= 'Sleep 3 Wake After Sleep Onset' 
   B4WS3WT = 'Sleep 3 Wake Time' 
   B4WS3PW = 'Sleep 3 % Wake Time' 
   B4WS3WB = 'Sleep 3 # Wake Bouts' 
   B4WS3AWB= 'Sleep 3 Avg Wake Bouts' 
   B4WS3SLT= 'Sleep 3 Sleep Time' 
   B4WS3PSL= 'Sleep 3 % Sleep Time' 
   B4WS3SLB= 'Sleep 3 # Sleep Bouts' 
   B4WS3ASB= 'Sleep 3 Avg Sleep Bouts' 
   B4WA3SDY= 'Active 3 Start Day' 
   B4WA3ST = 'Active 3 Start Time' 
   B4WA3EDY= 'Active 3 End Day' 
   B4WA3ET = 'Active 3 End Time' 
   B4WA3TAC= 'Active 3 Total Activity Counts' 
   B4WA3ACM= 'Active 3 Avg Activity Counts/min' 
   B4WA3MAC= 'Active 3 Max Activity Counts' 
   B4WA3IAC= 'Active 3 % Invalid Activity Counts' 
   B4WA3ISW= 'Active 3 % Invalid Sleep/Wake Time' 
   B4WA3WT = 'Active 3 Wake Time' 
   B4WA3PW = 'Active 3 % Wake Time' 
   B4WA3WB = 'Active 3 # Wake Bouts' 
   B4WA3AWB= 'Active 3 Avg Wake Bouts' 
   B4WA3SLT= 'Active 3 Sleep Time' 
   B4WA3PSL= 'Active 3 % Sleep Time' 
   B4WA3SLB= 'Active 3 # Sleep Bouts' 
   B4WA3ASB= 'Active 3 Avg Sleep Bouts' 
   B4WR4SDY= 'Rest 4 Start Day' 
   B4WR4ST = 'Rest 4 Start Time' 
   B4WR4EDY= 'Rest 4 End Day' 
   B4WR4ET = 'Rest 4 End Time' 
   B4WR4TAC= 'Rest 4 Total Activity Counts' 
   B4WR4ACM= 'Rest 4 Avg Activity Counts/min' 
   B4WR4MAC= 'Rest 4 Max Activity Counts' 
   B4WR4IAC= 'Rest 4 % Invalid Activity Counts' 
   B4WR4SW = 'Rest 4 % Invalid Sleep/Wake Time' 
   B4WR4WT = 'Rest 4 Wake Time' 
   B4WR4PW = 'Rest 4 % Wake Time' 
   B4WR4WB = 'Rest 4 # Wake Bouts' 
   B4WR4AWB= 'Rest 4 Avg Wake Bouts' 
   B4WR4SLT= 'Rest 4 Sleep Time' 
   B4WR4PSL= 'Rest 4 % Sleep Time' 
   B4WR4SLB= 'Rest 4 # Sleep Bouts' 
   B4WR4ASB= 'Rest 4 Avg Sleep Bouts' 
   B4WS4SDY= 'Sleep 4 Start Day' 
   B4WS4ST = 'Sleep 4 Start Time' 
   B4WS4EDY= 'Sleep 4 End Day' 
   B4WS4ET = 'Sleep 4 End Time' 
   B4WS4TAC= 'Sleep 4 Total Activity Counts' 
   B4WS4ACM= 'Sleep 4 Avg Activity Counts/min' 
   B4WS4MAC= 'Sleep 4 Max Activity Counts' 
   B4WS4IAC= 'Sleep 4 % Invalid Activity Counts' 
   B4WS4ISW= 'Sleep 4 % Invalid Sleep/Wake Time' 
   B4WS4OL = 'Sleep 4 Sleep Onset Latency' 
   B4WS4SNT= 'Sleep 4 Time Dozing Before Rising' 
   B4WS4EFF= 'Sleep 4 Sleep Efficiency' 
   B4WS4WSO= 'Sleep 4 Wake After Sleep Onset' 
   B4WS4WT = 'Sleep 4 Wake Time' 
   B4WS4PW = 'Sleep 4 % Wake Time' 
   B4WS4WB = 'Sleep 4 # Wake Bouts' 
   B4WS4AWB= 'Sleep 4 Avg Wake Bouts' 
   B4WS4SLT= 'Sleep 4 Sleep Time' 
   B4WS4PSL= 'Sleep 4 % Sleep Time' 
   B4WS4SLB= 'Sleep 4 # Sleep Bouts' 
   B4WS4ASB= 'Sleep 4 Avg Sleep Bouts' 
   B4WA4SDY= 'Active 4 Start Day' 
   B4WA4ST = 'Active 4 Start Time' 
   B4WA4EDY= 'Active 4 End Day' 
   B4WA4ET = 'Active 4 End Time' 
   B4WA4TAC= 'Active 4 Total Activity Counts' 
   B4WA4ACM= 'Active 4 Avg Activity Counts/min' 
   B4WA4MAC= 'Active 4 Max Activity Counts' 
   B4WA4IAC= 'Active 4 % Invalid Activity Counts' 
   B4WA4ISW= 'Active 4 % Invalid Sleep/Wake Time' 
   B4WA4WT = 'Active 4 Wake Time' 
   B4WA4PW = 'Active 4 % Wake Time' 
   B4WA4WB = 'Active 4 # Wake Bouts' 
   B4WA4AWB= 'Active 4 Avg Wake Bouts' 
   B4WA4SLT= 'Active 4 Sleep Time' 
   B4WA4PSL= 'Active 4 % Sleep Time' 
   B4WA4SLB= 'Active 4 # Sleep Bouts' 
   B4WA4ASB= 'Active 4 Avg Sleep Bouts' 
   B4WR5SDY= 'Rest 5 Start Day' 
   B4WR5ST = 'Rest 5 Start Time' 
   B4WR5EDY= 'Rest 5 End Day' 
   B4WR5ET = 'Rest 5 End Time' 
   B4WR5TAC= 'Rest 5 Total Activity Counts' 
   B4WR5ACM= 'Rest 5 Avg Activity Counts/min' 
   B4WR5MAC= 'Rest 5 Max Activity Counts' 
   B4WR5IAC= 'Rest 5 % Invalid Activity Counts' 
   B4WR5SW = 'Rest 5 % Invalid Sleep/Wake Time' 
   B4WR5WT = 'Rest 5 Wake Time' 
   B4WR5PW = 'Rest 5 % Wake Time' 
   B4WR5WB = 'Rest 5 # Wake Bouts' 
   B4WR5AWB= 'Rest 5 Avg Wake Bouts' 
   B4WR5SLT= 'Rest 5 Sleep Time' 
   B4WR5PSL= 'Rest 5 % Sleep Time' 
   B4WR5SLB= 'Rest 5 # Sleep Bouts' 
   B4WR5ASB= 'Rest 5 Avg Sleep Bouts' 
   B4WS5SDY= 'Sleep 5 Start Day' 
   B4WS5ST = 'Sleep 5 Start Time' 
   B4WS5EDY= 'Sleep 5 End Day' 
   B4WS5ET = 'Sleep 5 End Time' 
   B4WS5TAC= 'Sleep 5 Total Activity Counts' 
   B4WS5ACM= 'Sleep 5 Avg Activity Counts/min' 
   B4WS5MAC= 'Sleep 5 Max Activity Counts' 
   B4WS5IAC= 'Sleep 5 % Invalid Activity Counts' 
   B4WS5ISW= 'Sleep 5 % Invalid Sleep/Wake Time' 
   B4WS5OL = 'Sleep 5 Sleep Onset Latency' 
   B4WS5SNT= 'Sleep 5 Time Dozing Before Rising' 
   B4WS5EFF= 'Sleep 5 Sleep Efficiency' 
   B4WS5WSO= 'Sleep 5 Wake After Sleep Onset' 
   B4WS5WT = 'Sleep 5 Wake Time' 
   B4WS5PW = 'Sleep 5 % Wake Time' 
   B4WS5WB = 'Sleep 5 # Wake Bouts' 
   B4WS5AWB= 'Sleep 5 Avg Wake Bouts' 
   B4WS5SLT= 'Sleep 5 Sleep Time' 
   B4WS5PSL= 'Sleep 5 % Sleep Time' 
   B4WS5SLB= 'Sleep 5 # Sleep Bouts' 
   B4WS5ASB= 'Sleep 5 Avg Sleep Bouts' 
   B4WA5SDY= 'Active 5 Start Day' 
   B4WA5ST = 'Active 5 Start Time' 
   B4WA5EDY= 'Active 5 End Day' 
   B4WA5ET = 'Active 5 End Time' 
   B4WA5TAC= 'Active 5 Total Activity Counts' 
   B4WA5ACM= 'Active 5 Avg Activity Counts/min' 
   B4WA5MAC= 'Active 5 Max Activity Counts' 
   B4WA5IAC= 'Active 5 % Invalid Activity Counts' 
   B4WA5ISW= 'Active 5 % Invalid Sleep/Wake Time' 
   B4WA5WT = 'Active 5 Wake Time' 
   B4WA5PW = 'Active 5 % Wake Time' 
   B4WA5WB = 'Active 5 # Wake Bouts' 
   B4WA5AWB= 'Active 5 Avg Wake Bouts' 
   B4WA5SLT= 'Active 5 Sleep Time' 
   B4WA5PSL= 'Active 5 % Sleep Time' 
   B4WA5SLB= 'Active 5 # Sleep Bouts' 
   B4WA5ASB= 'Active 5 Avg Sleep Bouts' 
   B4WR6SDY= 'Rest 6 Start Day' 
   B4WR6ST = 'Rest 6 Start Time' 
   B4WR6EDY= 'Rest 6 End Day' 
   B4WR6ET = 'Rest 6 End Time' 
   B4WR6TAC= 'Rest 6 Total Activity Counts' 
   B4WR6ACM= 'Rest 6 Avg Activity Counts/min' 
   B4WR6MAC= 'Rest 6 Max Activity Counts' 
   B4WR6IAC= 'Rest 6 % Invalid Activity Counts' 
   B4WR6SW = 'Rest 6 % Invalid Sleep/Wake Time' 
   B4WR6WT = 'Rest 6 Wake Time' 
   B4WR6PW = 'Rest 6 % Wake Time' 
   B4WR6WB = 'Rest 6 # Wake Bouts' 
   B4WR6AWB= 'Rest 6 Avg Wake Bouts' 
   B4WR6SLT= 'Rest 6 Sleep Time' 
   B4WR6PSL= 'Rest 6 % Sleep Time' 
   B4WR6SLB= 'Rest 6 # Sleep Bouts' 
   B4WR6ASB= 'Rest 6 Avg Sleep Bouts' 
   B4WS6SDY= 'Sleep 6 Start Day' 
   B4WS6ST = 'Sleep 6 Start Time' 
   B4WS6EDY= 'Sleep 6 End Day' 
   B4WS6ET = 'Sleep 6 End Time' 
   B4WS6TAC= 'Sleep 6 Total Activity Counts' 
   B4WS6ACM= 'Sleep 6 Avg Activity Counts/min' 
   B4WS6MAC= 'Sleep 6 Max Activity Counts' 
   B4WS6IAC= 'Sleep 6 % Invalid Activity Counts' 
   B4WS6ISW= 'Sleep 6 % Invalid Sleep/Wake Time' 
   B4WS6OL = 'Sleep 6 Sleep Onset Latency' 
   B4WS6SNT= 'Sleep 6 Time Dozing Before Rising' 
   B4WS6EFF= 'Sleep 6 Sleep Efficiency' 
   B4WS6WSO= 'Sleep 6 Wake After Sleep Onset' 
   B4WS6WT = 'Sleep 6 Wake Time' 
   B4WS6PW = 'Sleep 6 % Wake Time' 
   B4WS6WB = 'Sleep 6 # Wake Bouts' 
   B4WS6AWB= 'Sleep 6 Avg Wake Bouts' 
   B4WS6SLT= 'Sleep 6 Sleep Time' 
   B4WS6PSL= 'Sleep 6 % Sleep Time' 
   B4WS6SLB= 'Sleep 6 # Sleep Bouts' 
   B4WS6ASB= 'Sleep 6 Avg Sleep Bouts' 
   B4WA6SDY= 'Active 6 Start Day' 
   B4WA6ST = 'Active 6 Start Time' 
   B4WA6EDY= 'Active 6 End Day' 
   B4WA6ET = 'Active 6 End Time' 
   B4WA6TAC= 'Active 6 Total Activity Counts' 
   B4WA6ACM= 'Active 6 Avg Activity Counts/min' 
   B4WA6MAC= 'Active 6 Max Activity Counts' 
   B4WA6IAC= 'Active 6 % Invalid Activity Counts' 
   B4WA6ISW= 'Active 6 % Invalid Sleep/Wake Time' 
   B4WA6WT = 'Active 6 Wake Time' 
   B4WA6PW = 'Active 6 % Wake Time' 
   B4WA6WB = 'Active 6 # Wake Bouts' 
   B4WA6AWB= 'Active 6 Avg Wake Bouts' 
   B4WA6SLT= 'Active 6 Sleep Time' 
   B4WA6PSL= 'Active 6 % Sleep Time' 
   B4WA6SLB= 'Active 6 # Sleep Bouts' 
   B4WA6ASB= 'Active 6 Avg Sleep Bouts' 
   B4WR7SDY= 'Rest 7 Start Day' 
   B4WR7ST = 'Rest 7 Start Time' 
   B4WR7EDY= 'Rest 7 End Day' 
   B4WR7ET = 'Rest 7 End Time' 
   B4WR7TAC= 'Rest 7 Total Activity Counts' 
   B4WR7ACM= 'Rest 7 Avg Activity Counts/min' 
   B4WR7MAC= 'Rest 7 Max Activity Counts' 
   B4WR7IAC= 'Rest 7 % Invalid Activity Counts' 
   B4WR7SW = 'Rest 7 % Invalid Sleep/Wake Time' 
   B4WR7WT = 'Rest 7 Wake Time' 
   B4WR7PW = 'Rest 7 % Wake Time' 
   B4WR7WB = 'Rest 7 # Wake Bouts' 
   B4WR7AWB= 'Rest 7 Avg Wake Bouts' 
   B4WR7SLT= 'Rest 7 Sleep Time' 
   B4WR7PSL= 'Rest 7 % Sleep Time' 
   B4WR7SLB= 'Rest 7 # Sleep Bouts' 
   B4WR7ASB= 'Rest 7 Avg Sleep Bouts' 
   B4WS7SDY= 'Sleep 7 Start Day' 
   B4WS7ST = 'Sleep 7 Start Time' 
   B4WS7EDY= 'Sleep 7 End Day' 
   B4WS7ET = 'Sleep 7 End Time' 
   B4WS7TAC= 'Sleep 7 Total Activity Counts' 
   B4WS7ACM= 'Sleep 7 Avg Activity Counts/min' 
   B4WS7MAC= 'Sleep 7 Max Activity Counts' 
   B4WS7IAC= 'Sleep 7 % Invalid Activity Counts' 
   B4WS7ISW= 'Sleep 7 % Invalid Sleep/Wake Time' 
   B4WS7OL = 'Sleep 7 Sleep Onset Latency' 
   B4WS7SNT= 'Sleep 7 Time Dozing Before Rising' 
   B4WS7EFF= 'Sleep 7 Sleep Efficiency' 
   B4WS7WSO= 'Sleep 7 Wake After Sleep Onset' 
   B4WS7WT = 'Sleep 7 Wake Time' 
   B4WS7PW = 'Sleep 7 % Wake Time' 
   B4WS7WB = 'Sleep 7 # Wake Bouts' 
   B4WS7AWB= 'Sleep 7 Avg Wake Bouts' 
   B4WS7SLT= 'Sleep 7 Sleep Time' 
   B4WS7PSL= 'Sleep 7 % Sleep Time' 
   B4WS7SLB= 'Sleep 7 # Sleep Bouts' 
   B4WS7ASB= 'Sleep 7 Avg Sleep Bouts' 
   B4VHAWR = 'WRITING' 
   B4VHADW = 'DRAWING' 
   B4VHATH = 'THROWING' 
   B4VHASC = 'SCISSORS' 
   B4VHATO = 'TOOTHBRUSH' 
   B4VHAKN = 'KNIFE' 
   B4VHASP = 'SPOON' 
   B4VHABR = 'BROOM' 
   B4VHASM = 'STRIKE MATCH, HAND HOLDING MATCH' 
   B4VHAOB = 'OPEN BOX, HAND HOLDING LID' 
   B4VHAKI = 'KICKING' 
   B4VHAOE = 'EYE WHEN USING ONLY ONE EYE' 
   B4VHALT = 'LEFT-HANDED TOTAL' 
   B4VHART = 'RIGHT-HANDED TOTAL' 
   B4VHALQ = 'LATERALITY QUOTIENT' 
   B4VHADZ = 'DECILE ZERO, LEFT & RIGHT HANDS EQUAL' 
   B4VHADR = 'DECILE RIGHT PER OLDFIELD 1971' 
   B4VHADL = 'DECILE LEFT PER OLDFIELD 1971' 
   B4VST   = 'Psychophys session start time' 
   B4VATEH = 'Number of hours since last ate to session start time' 
   B4VCAFH = 'Number of hours since last caffeinated beverage to session start time' 
   B4VCIGH = 'Number of hours since last cigaratte to session start time' 
   B4VCLB  = 'Is R color blind?' 
   B4VCLBT = 'Colorblindness Type' 
   B4VCIRC = 'Have Raynauds or Circulation Problem?' 
   B4VLC   = 'ECG leads configuration' 
   B4VS1T  = 'Saliva#1 time, baseline' 
   B4VSRB1 = 'Stress rating, baseline' 
   B4VTASK1= 'Cognitive stressor task #1' 
   B4VCS1  = 'Cognitive stressor #1' 
   B4VSRCS1= 'Stress rating, cognitive stressor #1' 
   B4VSRR1 = 'Stress rating, recovery #1' 
   B4VTASK2= 'Cognitive stressor task #2' 
   B4VCS2  = 'Cognitive stressor #2' 
   B4VSRCS2= 'Stress rating, cognitive stressor #2' 
   B4VSRR2 = 'Stress rating, recovery #2' 
   B4VS2T  = 'Saliva#2 time,after cog stressors' 
   B4VSRU1 = 'Stress rating, stand/upright stressor' 
   B4VS3T  = 'Saliva#3 time,post-upright stress' 
   B4VS4T  = 'Saliva#4 time,30min post-protocol' 
   B4VSTS1 = 'Lag mins: Start to Saliva 1' 
   B4VS1S2 = 'Lag mins: Saliva 1 to Saliva 2' 
   B4VS2S3 = 'Lag mins: Saliva 2 to Saliva 3' 
   B4VS3S4 = 'Lag mins: Saliva 3 to Saliva 4' 
   B4ZPPHYS= 'P4 Psychophys completed' 
   B4ZPHYSD= 'Psychophys data completeness' 
   B4VTERM = 'Psych-Phys Session Termination Status' 
   B4VPACEM= 'RESP HAS PACEMAKER' 
   B4VPPSS = 'PSYCHOPHYS SESSION STATUS' 
   B4VPPSR = 'PSYCHOPHYS SESSION STATUS REASON' 
   B4VBEQ  = 'BASELINE ECG DATA QUALITY' 
   B4VBEQR = 'BASELINE ECG DATA QUAL REASON' 
   B4VMEQ  = 'MATH TASK ECG DATA QUALITY' 
   B4VMEQR = 'MATH TASK ECG DATA QUAL REASON' 
   B4VPEQ  = 'PASAT MATH ECG DATA QUALITY' 
   B4VPEQR = 'PASAT MATH ECG DATA QUAL REASON' 
   B4VSEQ  = 'STROOP TASK ECG DATA QUALITY' 
   B4VSEQR = 'STROOP TASK ECG DATA QUAL REASON' 
   B4VR1EQ = 'RECOVERY 1 ECG DATA QUALITY' 
   B4VR1EQR= 'RECOVERY 1 ECG DATA QUAL REASON' 
   B4VR2EQ = 'RECOVERY 2 ECG DATA QUALITY' 
   B4VR2EQR= 'RECOVERY 2 ECG DATA QUAL REASON' 
   B4VUEQ  = 'STANDUP TASK ECG DATA QUALITY' 
   B4VUEQR = 'STANDUP TASK ECG DATA QUAL REASON' 
   B4VB1DU = 'Baseline Epoch1 duration, sec' 
   B4VB1BEG= 'B1 start time, elapsed sec' 
   B4VB1END= 'B1 end time, elapsed sec' 
   B4VB1MAX= 'B1 total recorded time, sec' 
   B4VB1NU = 'B1 # R-R intervals used' 
   B4VB1HR = 'B1 Heart rate, beats per minute' 
   B4VB1SD = 'B1 SDRR, std dev of R-R, msec' 
   B4VB1LSD= 'B1 natural log of SDRR' 
   B4VB1RM = 'B1 RMSSD, root mean squared successive differences' 
   B4VB1LRM= 'B1 natural log of RMSSD' 
   B4VB1LF = 'B1 LF-HRV, low freq HR variability, 0.04-0.15 Hz' 
   B4VB1LLF= 'B1 natural log of LF-HRV' 
   B4VB1HF = 'B1 HF-HRV, high freq HR variability, 0.15-0.50 Hz' 
   B4VB1LHF= 'B1 natural log of HF-HRV' 
   B4VB2DU = 'Baseline Epoch2 duration, sec' 
   B4VB2BEG= 'B2 start time, elapsed sec' 
   B4VB2END= 'B2 end time, elapsed sec' 
   B4VB2MAX= 'B2 total recorded time, sec' 
   B4VB2NU = 'B2 # R-R intervals used' 
   B4VB2HR = 'B2 Heart rate, beats per minute' 
   B4VB2SD = 'B2 SDRR, std dev of R-R, msec' 
   B4VB2LSD= 'B2 natural log of SDRR' 
   B4VB2RM = 'B2 RMSSD, root mean squared successive differences' 
   B4VB2LRM= 'B2 natural log of RMSSD' 
   B4VB2LF = 'B2 LF-HRV, low freq HR variability, 0.04-0.15 Hz' 
   B4VB2LLF= 'B2 natural log of LF-HRV' 
   B4VB2HF = 'B2 HF-HRV, high freq HR variability, 0.15-0.50 Hz' 
   B4VB2LHF= 'B2 natural log of HF-HRV' 
   B4VM1DU = 'MATH Epoch1 duration, sec' 
   B4VM1BEG= 'M1 start time, elapsed sec' 
   B4VM1END= 'M1 end time, elapsed sec' 
   B4VM1MAX= 'M1 total recorded time, sec' 
   B4VM1NU = 'M1 # R-R intervals used' 
   B4VM1HR = 'M1 Heart rate, beats per minute' 
   B4VM1SD = 'M1 SDRR, std dev of R-R, msec' 
   B4VM1LSD= 'M1 natural log of SDRR' 
   B4VM1RM = 'M1 RMSSD, root mean squared successive differences' 
   B4VM1LRM= 'M1 natural log of RMSSD' 
   B4VM1LF = 'M1 LF-HRV, low freq HR variability, 0.04-0.15 Hz' 
   B4VM1LLF= 'M1 natural log of LF-HRV' 
   B4VM1HF = 'M1 HF-HRV, high freq HR variability, 0.15-0.50 Hz' 
   B4VM1LHF= 'M1 natural log of HF-HRV' 
   B4VP1DU = 'PASAT Epoch1 duration, sec' 
   B4VP1BEG= 'P1 start time, elapsed sec' 
   B4VP1END= 'P1 end time, elapsed sec' 
   B4VP1MAX= 'P1 total recorded time, sec' 
   B4VP1NU = 'P1 # R-R intervals used' 
   B4VP1HR = 'P1 Heart rate, beats per minute' 
   B4VP1SD = 'P1 SDRR, std dev of R-R, msec' 
   B4VP1LSD= 'P1 natural log of SDRR' 
   B4VP1RM = 'P1 RMSSD, root mean squared successive differences' 
   B4VP1LRM= 'P1 natural log of RMSSD' 
   B4VP1LF = 'P1 LF-HRV, low freq HR variability, 0.04-0.15 Hz' 
   B4VP1LLF= 'P1 natural log of LF-HRV' 
   B4VP1HF = 'P1 HF-HRV, high freq HR variability, 0.15-0.50 Hz' 
   B4VP1LHF= 'P1 natural log of HF-HRV' 
   B4VP2DU = 'PASAT Epoch2 duration, sec' 
   B4VP2BEG= 'P2 start time, elapsed sec' 
   B4VP2END= 'P2 end time, elapsed sec' 
   B4VP2MAX= 'P2 total recorded time, sec' 
   B4VP2NU = 'P2 # R-R intervals used' 
   B4VP2HR = 'P2 Heart rate, beats per minute' 
   B4VP2SD = 'P2 SDRR, std dev of R-R, msec' 
   B4VP2LSD= 'P2 natural log of SDRR' 
   B4VP2RM = 'P2 RMSSD, root mean squared successive differences' 
   B4VP2LRM= 'P2 natural log of RMSSD' 
   B4VP2LF = 'P2 LF-HRV, low freq HR variability, 0.04-0.15 Hz' 
   B4VP2LLF= 'P2 natural log of LF-HRV' 
   B4VP2HF = 'P2 HF-HRV, high freq HR variability, 0.15-0.50 Hz' 
   B4VP2LHF= 'P2 natural log of HF-HRV' 
   B4VR1DU = '1st Recovery period, Epoch1 duration, sec' 
   B4VR1BEG= 'R1 start time, elapsed sec' 
   B4VR1END= 'R1 end time, elapsed sec' 
   B4VR1MAX= 'R1 total recorded time, sec' 
   B4VR1NU = 'R1 # R-R intervals used' 
   B4VR1HR = 'R1 Heart rate, beats per minute' 
   B4VR1SD = 'R1 SDRR, std dev of R-R, msec' 
   B4VR1LSD= 'R1 natural log of SDRR' 
   B4VR1RM = 'R1 RMSSD, root mean squared successive differences' 
   B4VR1LRM= 'R1 natural log of RMSSD' 
   B4VR1LF = 'R1 LF-HRV, low freq HR variability, 0.04-0.15 Hz' 
   B4VR1LLF= 'R1 natural log of LF-HRV' 
   B4VR1HF = 'R1 HF-HRV, high freq HR variability, 0.15-0.50 Hz' 
   B4VR1LHF= 'R1 natural log of HF-HRV' 
   B4VR2DU = '2nd Recovery period Epoch1 duration, sec' 
   B4VR2BEG= 'R2 start time, elapsed sec' 
   B4VR2END= 'R2 end time, elapsed sec' 
   B4VR2MAX= 'R2 total recorded time, sec' 
   B4VR2NU = 'R2 # R-R intervals used' 
   B4VR2HR = 'R2 Heart rate, beats per minute' 
   B4VR2SD = 'R2 SDRR, std dev of R-R, msec' 
   B4VR2LSD= 'R2 natural log of SDRR' 
   B4VR2RM = 'R2 RMSSD, root mean squared successive differences' 
   B4VR2LRM= 'R2 natural log of RMSSD' 
   B4VR2LF = 'R2 LF-HRV, low freq HR variability, 0.04-0.15 Hz' 
   B4VR2LLF= 'R2 natural log of LF-HRV' 
   B4VR2HF = 'R2 HF-HRV, high freq HR variability, 0.15-0.50 Hz' 
   B4VR2LHF= 'R2 natural log of HF-HRV' 
   B4VS1DU = 'Stroop Epoch1 duration, sec' 
   B4VS1BEG= 'S1 start time, elapsed sec' 
   B4VS1END= 'S1 end time, elapsed sec' 
   B4VS1MAX= 'S1 total recorded time, sec' 
   B4VS1NU = 'S1 # R-R intervals used' 
   B4VS1HR = 'S1 Heart rate, beats per minute' 
   B4VS1SD = 'S1 SDRR, std dev of R-R, msec' 
   B4VS1LSD= 'S1 natural log of SDRR' 
   B4VS1RM = 'S1 RMSSD, root mean squared successive differences' 
   B4VS1LRM= 'S1 natural log of RMSSD' 
   B4VS1LF = 'S1 LF-HRV, low freq HR variability, 0.04-0.15 Hz' 
   B4VS1LLF= 'S1 natural log of LF-HRV' 
   B4VS1HF = 'S1 HF-HRV, high freq HR variability, 0.15-0.50 Hz' 
   B4VS1LHF= 'S1 natural log of HF-HRV' 
   B4VS2DU = 'Stroop Epoch2 duration, sec' 
   B4VS2BEG= 'S2 start time, elapsed sec' 
   B4VS2END= 'S2 end time, elapsed sec' 
   B4VS2MAX= 'S2 total recorded time, sec' 
   B4VS2NU = 'S2 # R-R intervals used' 
   B4VS2HR = 'S2 Heart rate, beats per minute' 
   B4VS2SD = 'S2 SDRR, std dev of R-R, msec' 
   B4VS2LSD= 'S2 natural log of SDRR' 
   B4VS2RM = 'S2 RMSSD, root mean squared successive differences' 
   B4VS2LRM= 'S2 natural log of RMSSD' 
   B4VS2LF = 'S2 LF-HRV, low freq HR variability, 0.04-0.15 Hz' 
   B4VS2LLF= 'S2 natural log of LF-HRV' 
   B4VS2HF = 'S2 HF-HRV, high freq HR variability, 0.15-0.50 Hz' 
   B4VS2LHF= 'S2 natural log of HF-HRV' 
   B4VU1DU = 'U1 Epoch duration in seconds' 
   B4VU1BEG= 'U1 start time, elapsed sec' 
   B4VU1END= 'U1 end time, elapsed sec' 
   B4VU1MAX= 'U1 total recorded time, sec' 
   B4VU1NU = 'U1 # R-R intervals used' 
   B4VU1HR = 'U1 HR, Avg heart rate, beats per minute' 
   B4VU1SD = 'U1 SDRR, std dev of R-R, milliseconds' 
   B4VU1LSD= 'U1 natural log of SDRR' 
   B4VU1RM = 'U1 RMSSD, root mean square successive differences' 
   B4VU1LRM= 'U1 natural log of RMSSD' 
   B4VU1LF = 'U1 LF-HRV, low freq HR variability, 0.04-0.15 Hz' 
   B4VU1LLF= 'U1 natural log of LF-HRV' 
   B4VU1HF = 'U1 HF-HRV, high freq HR variability, 0.15-0.50 Hz' 
   B4VU1LHF= 'U1 natural log of HF-HRV' 
        ; 


* USER-DEFINED MISSING VALUES RECODE TO SAS SYSMIS;

/*
   IF (B1PAGE_M2 = 98 OR B1PAGE_M2 = 99) THEN B1PAGE_M2 = .;
   IF (B1PGENDER = 8) THEN B1PGENDER = .;
   IF (B4ZB1CLG = 99) THEN B4ZB1CLG = .;
   IF (B4Q1A = 7 OR B4Q1A = 8 OR B4Q1A = 9) THEN B4Q1A = .;
   IF (B4Q1B = 7 OR B4Q1B = 8 OR B4Q1B = 9) THEN B4Q1B = .;
   IF (B4Q1C = 7 OR B4Q1C = 8 OR B4Q1C = 9) THEN B4Q1C = .;
   IF (B4Q1D = 7 OR B4Q1D = 8 OR B4Q1D = 9) THEN B4Q1D = .;
   IF (B4Q1E = 7 OR B4Q1E = 8 OR B4Q1E = 9) THEN B4Q1E = .;
   IF (B4Q1F = 7 OR B4Q1F = 8 OR B4Q1F = 9) THEN B4Q1F = .;
   IF (B4Q1G = 7 OR B4Q1G = 8 OR B4Q1G = 9) THEN B4Q1G = .;
   IF (B4Q1H = 7 OR B4Q1H = 8 OR B4Q1H = 9) THEN B4Q1H = .;
   IF (B4Q1I = 7 OR B4Q1I = 8 OR B4Q1I = 9) THEN B4Q1I = .;
   IF (B4Q1J = 7 OR B4Q1J = 8 OR B4Q1J = 9) THEN B4Q1J = .;
   IF (B4Q1K = 7 OR B4Q1K = 8 OR B4Q1K = 9) THEN B4Q1K = .;
   IF (B4Q1L = 7 OR B4Q1L = 8 OR B4Q1L = 9) THEN B4Q1L = .;
   IF (B4Q1M = 7 OR B4Q1M = 8 OR B4Q1M = 9) THEN B4Q1M = .;
   IF (B4Q1N = 7 OR B4Q1N = 8 OR B4Q1N = 9) THEN B4Q1N = .;
   IF (B4Q1O = 7 OR B4Q1O = 8 OR B4Q1O = 9) THEN B4Q1O = .;
   IF (B4Q1P = 7 OR B4Q1P = 8 OR B4Q1P = 9) THEN B4Q1P = .;
   IF (B4Q1Q = 7 OR B4Q1Q = 8 OR B4Q1Q = 9) THEN B4Q1Q = .;
   IF (B4Q1R = 7 OR B4Q1R = 8 OR B4Q1R = 9) THEN B4Q1R = .;
   IF (B4Q1S = 7 OR B4Q1S = 8 OR B4Q1S = 9) THEN B4Q1S = .;
   IF (B4Q1T = 7 OR B4Q1T = 8 OR B4Q1T = 9) THEN B4Q1T = .;
   IF (B4Q1U = 7 OR B4Q1U = 8 OR B4Q1U = 9) THEN B4Q1U = .;
   IF (B4Q1V = 7 OR B4Q1V = 8 OR B4Q1V = 9) THEN B4Q1V = .;
   IF (B4Q1W = 7 OR B4Q1W = 8 OR B4Q1W = 9) THEN B4Q1W = .;
   IF (B4Q1X = 7 OR B4Q1X = 8 OR B4Q1X = 9) THEN B4Q1X = .;
   IF (B4Q1Y = 7 OR B4Q1Y = 8 OR B4Q1Y = 9) THEN B4Q1Y = .;
   IF (B4Q1Z = 7 OR B4Q1Z = 8 OR B4Q1Z = 9) THEN B4Q1Z = .;
   IF (B4Q1AA = 7 OR B4Q1AA = 8 OR B4Q1AA = 9) THEN B4Q1AA = .;
   IF (B4Q1BB = 7 OR B4Q1BB = 8 OR B4Q1BB = 9) THEN B4Q1BB = .;
   IF (B4Q1CC = 7 OR B4Q1CC = 8 OR B4Q1CC = 9) THEN B4Q1CC = .;
   IF (B4Q1DD = 7 OR B4Q1DD = 8 OR B4Q1DD = 9) THEN B4Q1DD = .;
   IF (B4Q1EE = 7 OR B4Q1EE = 8 OR B4Q1EE = 9) THEN B4Q1EE = .;
   IF (B4Q1FF = 7 OR B4Q1FF = 8 OR B4Q1FF = 9) THEN B4Q1FF = .;
   IF (B4Q1GG = 7 OR B4Q1GG = 8 OR B4Q1GG = 9) THEN B4Q1GG = .;
   IF (B4Q1HH = 7 OR B4Q1HH = 8 OR B4Q1HH = 9) THEN B4Q1HH = .;
   IF (B4Q1II = 7 OR B4Q1II = 8 OR B4Q1II = 9) THEN B4Q1II = .;
   IF (B4Q1JJ = 7 OR B4Q1JJ = 8 OR B4Q1JJ = 9) THEN B4Q1JJ = .;
   IF (B4Q1KK = 7 OR B4Q1KK = 8 OR B4Q1KK = 9) THEN B4Q1KK = .;
   IF (B4Q1LL = 7 OR B4Q1LL = 8 OR B4Q1LL = 9) THEN B4Q1LL = .;
   IF (B4Q1MM = 7 OR B4Q1MM = 8 OR B4Q1MM = 9) THEN B4Q1MM = .;
   IF (B4Q1NN = 7 OR B4Q1NN = 8 OR B4Q1NN = 9) THEN B4Q1NN = .;
   IF (B4Q1OO = 7 OR B4Q1OO = 8 OR B4Q1OO = 9) THEN B4Q1OO = .;
   IF (B4Q1PP = 7 OR B4Q1PP = 8 OR B4Q1PP = 9) THEN B4Q1PP = .;
   IF (B4Q1QQ = 7 OR B4Q1QQ = 8 OR B4Q1QQ = 9) THEN B4Q1QQ = .;
   IF (B4Q1RR = 7 OR B4Q1RR = 8 OR B4Q1RR = 9) THEN B4Q1RR = .;
   IF (B4Q1SS = 7 OR B4Q1SS = 8 OR B4Q1SS = 9) THEN B4Q1SS = .;
   IF (B4Q1TT = 7 OR B4Q1TT = 8 OR B4Q1TT = 9) THEN B4Q1TT = .;
   IF (B4Q1UU = 7 OR B4Q1UU = 8 OR B4Q1UU = 9) THEN B4Q1UU = .;
   IF (B4Q1VV = 7 OR B4Q1VV = 8 OR B4Q1VV = 9) THEN B4Q1VV = .;
   IF (B4Q1WW = 7 OR B4Q1WW = 8 OR B4Q1WW = 9) THEN B4Q1WW = .;
   IF (B4Q1XX = 7 OR B4Q1XX = 8 OR B4Q1XX = 9) THEN B4Q1XX = .;
   IF (B4Q1YY = 7 OR B4Q1YY = 8 OR B4Q1YY = 9) THEN B4Q1YY = .;
   IF (B4Q1ZZ = 7 OR B4Q1ZZ = 8 OR B4Q1ZZ = 9) THEN B4Q1ZZ = .;
   IF (B4Q1AAA = 7 OR B4Q1AAA = 8 OR B4Q1AAA = 9) THEN B4Q1AAA = .;
   IF (B4Q1BBB = 7 OR B4Q1BBB = 8 OR B4Q1BBB = 9) THEN B4Q1BBB = .;
   IF (B4Q1CCC = 7 OR B4Q1CCC = 8 OR B4Q1CCC = 9) THEN B4Q1CCC = .;
   IF (B4Q1DDD = 7 OR B4Q1DDD = 8 OR B4Q1DDD = 9) THEN B4Q1DDD = .;
   IF (B4Q1EEE = 7 OR B4Q1EEE = 8 OR B4Q1EEE = 9) THEN B4Q1EEE = .;
   IF (B4Q1FFF = 7 OR B4Q1FFF = 8 OR B4Q1FFF = 9) THEN B4Q1FFF = .;
   IF (B4Q1GGG = 7 OR B4Q1GGG = 8 OR B4Q1GGG = 9) THEN B4Q1GGG = .;
   IF (B4Q1HHH = 7 OR B4Q1HHH = 8 OR B4Q1HHH = 9) THEN B4Q1HHH = .;
   IF (B4Q1III = 7 OR B4Q1III = 8 OR B4Q1III = 9) THEN B4Q1III = .;
   IF (B4Q1JJJ = 7 OR B4Q1JJJ = 8 OR B4Q1JJJ = 9) THEN B4Q1JJJ = .;
   IF (B4Q1KKK = 7 OR B4Q1KKK = 8 OR B4Q1KKK = 9) THEN B4Q1KKK = .;
   IF (B4Q1LLL = 7 OR B4Q1LLL = 8 OR B4Q1LLL = 9) THEN B4Q1LLL = .;
   IF (B4QMA_D = 98.0) THEN B4QMA_D = .;
   IF (B4QMA_A = 98.0) THEN B4QMA_A = .;
   IF (B4QMA_LI = 98.0) THEN B4QMA_LI = .;
   IF (B4QMA_AA = 98.0) THEN B4QMA_AA = .;
   IF (B4QMA_PA = 98.0) THEN B4QMA_PA = .;
   IF (B4Q2 = 97 OR B4Q2 = 98 OR B4Q2 = 99) THEN B4Q2 = .;
   IF (B4Q3A = 7 OR B4Q3A = 8 OR B4Q3A = 9) THEN B4Q3A = .;
   IF (B4Q3B = 7 OR B4Q3B = 8 OR B4Q3B = 9) THEN B4Q3B = .;
   IF (B4Q3C = 7 OR B4Q3C = 8 OR B4Q3C = 9) THEN B4Q3C = .;
   IF (B4Q3D = 7 OR B4Q3D = 8 OR B4Q3D = 9) THEN B4Q3D = .;
   IF (B4Q3E = 7 OR B4Q3E = 8 OR B4Q3E = 9) THEN B4Q3E = .;
   IF (B4Q3F = 7 OR B4Q3F = 8 OR B4Q3F = 9) THEN B4Q3F = .;
   IF (B4Q3G = 7 OR B4Q3G = 8 OR B4Q3G = 9) THEN B4Q3G = .;
   IF (B4Q3H = 7 OR B4Q3H = 8 OR B4Q3H = 9) THEN B4Q3H = .;
   IF (B4Q3I = 7 OR B4Q3I = 8 OR B4Q3I = 9) THEN B4Q3I = .;
   IF (B4Q3J = 7 OR B4Q3J = 8 OR B4Q3J = 9) THEN B4Q3J = .;
   IF (B4Q3K = 7 OR B4Q3K = 8 OR B4Q3K = 9) THEN B4Q3K = .;
   IF (B4Q3L = 7 OR B4Q3L = 8 OR B4Q3L = 9) THEN B4Q3L = .;
   IF (B4Q3M = 7 OR B4Q3M = 8 OR B4Q3M = 9) THEN B4Q3M = .;
   IF (B4Q3N = 7 OR B4Q3N = 8 OR B4Q3N = 9) THEN B4Q3N = .;
   IF (B4Q3O = 7 OR B4Q3O = 8 OR B4Q3O = 9) THEN B4Q3O = .;
   IF (B4Q3P = 7 OR B4Q3P = 8 OR B4Q3P = 9) THEN B4Q3P = .;
   IF (B4Q3Q = 7 OR B4Q3Q = 8 OR B4Q3Q = 9) THEN B4Q3Q = .;
   IF (B4Q3R = 7 OR B4Q3R = 8 OR B4Q3R = 9) THEN B4Q3R = .;
   IF (B4Q3S = 7 OR B4Q3S = 8 OR B4Q3S = 9) THEN B4Q3S = .;
   IF (B4Q3T = 7 OR B4Q3T = 8 OR B4Q3T = 9) THEN B4Q3T = .;
   IF (B4QCESD = 98.0) THEN B4QCESD = .;
   IF (B4Q4A = 7 OR B4Q4A = 8 OR B4Q4A = 9) THEN B4Q4A = .;
   IF (B4Q4B = 7 OR B4Q4B = 8 OR B4Q4B = 9) THEN B4Q4B = .;
   IF (B4Q4C = 7 OR B4Q4C = 8 OR B4Q4C = 9) THEN B4Q4C = .;
   IF (B4Q4D = 7 OR B4Q4D = 8 OR B4Q4D = 9) THEN B4Q4D = .;
   IF (B4Q4E = 7 OR B4Q4E = 8 OR B4Q4E = 9) THEN B4Q4E = .;
   IF (B4Q4F = 7 OR B4Q4F = 8 OR B4Q4F = 9) THEN B4Q4F = .;
   IF (B4Q4G = 7 OR B4Q4G = 8 OR B4Q4G = 9) THEN B4Q4G = .;
   IF (B4Q4H = 7 OR B4Q4H = 8 OR B4Q4H = 9) THEN B4Q4H = .;
   IF (B4Q4I = 7 OR B4Q4I = 8 OR B4Q4I = 9) THEN B4Q4I = .;
   IF (B4Q4J = 7 OR B4Q4J = 8 OR B4Q4J = 9) THEN B4Q4J = .;
   IF (B4QPS_PS = 98.0) THEN B4QPS_PS = .;
   IF (B4Q5A = 7 OR B4Q5A = 8 OR B4Q5A = 9) THEN B4Q5A = .;
   IF (B4Q5B = 7 OR B4Q5B = 8 OR B4Q5B = 9) THEN B4Q5B = .;
   IF (B4Q5C = 7 OR B4Q5C = 8 OR B4Q5C = 9) THEN B4Q5C = .;
   IF (B4Q5D = 7 OR B4Q5D = 8 OR B4Q5D = 9) THEN B4Q5D = .;
   IF (B4Q5E = 7 OR B4Q5E = 8 OR B4Q5E = 9) THEN B4Q5E = .;
   IF (B4Q5F = 7 OR B4Q5F = 8 OR B4Q5F = 9) THEN B4Q5F = .;
   IF (B4Q5G = 7 OR B4Q5G = 8 OR B4Q5G = 9) THEN B4Q5G = .;
   IF (B4Q5H = 7 OR B4Q5H = 8 OR B4Q5H = 9) THEN B4Q5H = .;
   IF (B4Q5I = 7 OR B4Q5I = 8 OR B4Q5I = 9) THEN B4Q5I = .;
   IF (B4Q5J = 7 OR B4Q5J = 8 OR B4Q5J = 9) THEN B4Q5J = .;
   IF (B4Q5K = 7 OR B4Q5K = 8 OR B4Q5K = 9) THEN B4Q5K = .;
   IF (B4Q5L = 7 OR B4Q5L = 8 OR B4Q5L = 9) THEN B4Q5L = .;
   IF (B4Q5M = 7 OR B4Q5M = 8 OR B4Q5M = 9) THEN B4Q5M = .;
   IF (B4Q5N = 7 OR B4Q5N = 8 OR B4Q5N = 9) THEN B4Q5N = .;
   IF (B4Q5O = 7 OR B4Q5O = 8 OR B4Q5O = 9) THEN B4Q5O = .;
   IF (B4Q5P = 7 OR B4Q5P = 8 OR B4Q5P = 9) THEN B4Q5P = .;
   IF (B4Q5Q = 7 OR B4Q5Q = 8 OR B4Q5Q = 9) THEN B4Q5Q = .;
   IF (B4Q5R = 7 OR B4Q5R = 8 OR B4Q5R = 9) THEN B4Q5R = .;
   IF (B4Q5S = 7 OR B4Q5S = 8 OR B4Q5S = 9) THEN B4Q5S = .;
   IF (B4Q5T = 7 OR B4Q5T = 8 OR B4Q5T = 9) THEN B4Q5T = .;
   IF (B4QAE_AI = 98.0) THEN B4QAE_AI = .;
   IF (B4QAE_AO = 98.0) THEN B4QAE_AO = .;
   IF (B4QAE_AC = 98.0) THEN B4QAE_AC = .;
   IF (B4Q5U = 7 OR B4Q5U = 8 OR B4Q5U = 9) THEN B4Q5U = .;
   IF (B4Q5V = 7 OR B4Q5V = 8 OR B4Q5V = 9) THEN B4Q5V = .;
   IF (B4QAE_AA = 8.0) THEN B4QAE_AA = .;
   IF (B4Q6A = 7 OR B4Q6A = 8 OR B4Q6A = 9) THEN B4Q6A = .;
   IF (B4Q6B = 7 OR B4Q6B = 8 OR B4Q6B = 9) THEN B4Q6B = .;
   IF (B4Q6C = 7 OR B4Q6C = 8 OR B4Q6C = 9) THEN B4Q6C = .;
   IF (B4Q6D = 7 OR B4Q6D = 8 OR B4Q6D = 9) THEN B4Q6D = .;
   IF (B4Q6E = 7 OR B4Q6E = 8 OR B4Q6E = 9) THEN B4Q6E = .;
   IF (B4Q6F = 7 OR B4Q6F = 8 OR B4Q6F = 9) THEN B4Q6F = .;
   IF (B4Q6G = 7 OR B4Q6G = 8 OR B4Q6G = 9) THEN B4Q6G = .;
   IF (B4Q6H = 7 OR B4Q6H = 8 OR B4Q6H = 9) THEN B4Q6H = .;
   IF (B4Q6I = 7 OR B4Q6I = 8 OR B4Q6I = 9) THEN B4Q6I = .;
   IF (B4Q6J = 7 OR B4Q6J = 8 OR B4Q6J = 9) THEN B4Q6J = .;
   IF (B4Q6K = 7 OR B4Q6K = 8 OR B4Q6K = 9) THEN B4Q6K = .;
   IF (B4Q6L = 7 OR B4Q6L = 8 OR B4Q6L = 9) THEN B4Q6L = .;
   IF (B4Q6M = 7 OR B4Q6M = 8 OR B4Q6M = 9) THEN B4Q6M = .;
   IF (B4Q6N = 7 OR B4Q6N = 8 OR B4Q6N = 9) THEN B4Q6N = .;
   IF (B4Q6O = 7 OR B4Q6O = 8 OR B4Q6O = 9) THEN B4Q6O = .;
   IF (B4QTA_AG = 98.0) THEN B4QTA_AG = .;
   IF (B4QTA_AT = 98.0) THEN B4QTA_AT = .;
   IF (B4QTA_AR = 98.0) THEN B4QTA_AR = .;
   IF (B4Q7A = 7 OR B4Q7A = 8 OR B4Q7A = 9) THEN B4Q7A = .;
   IF (B4Q7B = 7 OR B4Q7B = 8 OR B4Q7B = 9) THEN B4Q7B = .;
   IF (B4Q7C = 7 OR B4Q7C = 8 OR B4Q7C = 9) THEN B4Q7C = .;
   IF (B4Q7D = 7 OR B4Q7D = 8 OR B4Q7D = 9) THEN B4Q7D = .;
   IF (B4Q7E = 7 OR B4Q7E = 8 OR B4Q7E = 9) THEN B4Q7E = .;
   IF (B4Q7F = 7 OR B4Q7F = 8 OR B4Q7F = 9) THEN B4Q7F = .;
   IF (B4Q7G = 7 OR B4Q7G = 8 OR B4Q7G = 9) THEN B4Q7G = .;
   IF (B4Q7H = 7 OR B4Q7H = 8 OR B4Q7H = 9) THEN B4Q7H = .;
   IF (B4Q7I = 7 OR B4Q7I = 8 OR B4Q7I = 9) THEN B4Q7I = .;
   IF (B4Q7J = 7 OR B4Q7J = 8 OR B4Q7J = 9) THEN B4Q7J = .;
   IF (B4Q7K = 7 OR B4Q7K = 8 OR B4Q7K = 9) THEN B4Q7K = .;
   IF (B4Q7L = 7 OR B4Q7L = 8 OR B4Q7L = 9) THEN B4Q7L = .;
   IF (B4Q7M = 7 OR B4Q7M = 8 OR B4Q7M = 9) THEN B4Q7M = .;
   IF (B4Q7N = 7 OR B4Q7N = 8 OR B4Q7N = 9) THEN B4Q7N = .;
   IF (B4Q7O = 7 OR B4Q7O = 8 OR B4Q7O = 9) THEN B4Q7O = .;
   IF (B4Q7P = 7 OR B4Q7P = 8 OR B4Q7P = 9) THEN B4Q7P = .;
   IF (B4Q7Q = 7 OR B4Q7Q = 8 OR B4Q7Q = 9) THEN B4Q7Q = .;
   IF (B4Q7R = 7 OR B4Q7R = 8 OR B4Q7R = 9) THEN B4Q7R = .;
   IF (B4Q7S = 7 OR B4Q7S = 8 OR B4Q7S = 9) THEN B4Q7S = .;
   IF (B4Q7T = 7 OR B4Q7T = 8 OR B4Q7T = 9) THEN B4Q7T = .;
   IF (B4QTA_AX = 98.0) THEN B4QTA_AX = .;
   IF (B4Q8A = 7 OR B4Q8A = 8 OR B4Q8A = 9) THEN B4Q8A = .;
   IF (B4Q8B = 7 OR B4Q8B = 8 OR B4Q8B = 9) THEN B4Q8B = .;
   IF (B4Q8C = 7 OR B4Q8C = 8 OR B4Q8C = 9) THEN B4Q8C = .;
   IF (B4Q8D = 7 OR B4Q8D = 8 OR B4Q8D = 9) THEN B4Q8D = .;
   IF (B4Q8E = 7 OR B4Q8E = 8 OR B4Q8E = 9) THEN B4Q8E = .;
   IF (B4Q8F = 7 OR B4Q8F = 8 OR B4Q8F = 9) THEN B4Q8F = .;
   IF (B4Q8G = 7 OR B4Q8G = 8 OR B4Q8G = 9) THEN B4Q8G = .;
   IF (B4Q8H = 7 OR B4Q8H = 8 OR B4Q8H = 9) THEN B4Q8H = .;
   IF (B4Q8I = 7 OR B4Q8I = 8 OR B4Q8I = 9) THEN B4Q8I = .;
   IF (B4QSA_SA = 8.0) THEN B4QSA_SA = .;
   IF (B4Q9A = 7 OR B4Q9A = 8 OR B4Q9A = 9) THEN B4Q9A = .;
   IF (B4Q9B = 7 OR B4Q9B = 8 OR B4Q9B = 9) THEN B4Q9B = .;
   IF (B4Q9C = 7 OR B4Q9C = 8 OR B4Q9C = 9) THEN B4Q9C = .;
   IF (B4Q9D = 7 OR B4Q9D = 8 OR B4Q9D = 9) THEN B4Q9D = .;
   IF (B4Q9E = 7 OR B4Q9E = 8 OR B4Q9E = 9) THEN B4Q9E = .;
   IF (B4Q9F = 7 OR B4Q9F = 8 OR B4Q9F = 9) THEN B4Q9F = .;
   IF (B4Q9G = 7 OR B4Q9G = 8 OR B4Q9G = 9) THEN B4Q9G = .;
   IF (B4Q9H = 7 OR B4Q9H = 8 OR B4Q9H = 9) THEN B4Q9H = .;
   IF (B4Q9I = 7 OR B4Q9I = 8 OR B4Q9I = 9) THEN B4Q9I = .;
   IF (B4Q9J = 7 OR B4Q9J = 8 OR B4Q9J = 9) THEN B4Q9J = .;
   IF (B4Q9K = 7 OR B4Q9K = 8 OR B4Q9K = 9) THEN B4Q9K = .;
   IF (B4Q9L = 7 OR B4Q9L = 8 OR B4Q9L = 9) THEN B4Q9L = .;
   IF (B4Q9M = 7 OR B4Q9M = 8 OR B4Q9M = 9) THEN B4Q9M = .;
   IF (B4Q9N = 7 OR B4Q9N = 8 OR B4Q9N = 9) THEN B4Q9N = .;
   IF (B4Q9O = 7 OR B4Q9O = 8 OR B4Q9O = 9) THEN B4Q9O = .;
   IF (B4Q9P = 7 OR B4Q9P = 8 OR B4Q9P = 9) THEN B4Q9P = .;
   IF (B4Q9Q = 7 OR B4Q9Q = 8 OR B4Q9Q = 9) THEN B4Q9Q = .;
   IF (B4Q9R = 7 OR B4Q9R = 8 OR B4Q9R = 9) THEN B4Q9R = .;
   IF (B4Q9S = 7 OR B4Q9S = 8 OR B4Q9S = 9) THEN B4Q9S = .;
   IF (B4Q9T = 7 OR B4Q9T = 8 OR B4Q9T = 9) THEN B4Q9T = .;
   IF (B4Q9U = 7 OR B4Q9U = 8 OR B4Q9U = 9) THEN B4Q9U = .;
   IF (B4Q9V = 7 OR B4Q9V = 8 OR B4Q9V = 9) THEN B4Q9V = .;
   IF (B4Q9W = 7 OR B4Q9W = 8 OR B4Q9W = 9) THEN B4Q9W = .;
   IF (B4Q9X = 7 OR B4Q9X = 8 OR B4Q9X = 9) THEN B4Q9X = .;
   IF (B4Q9Y = 7 OR B4Q9Y = 8 OR B4Q9Y = 9) THEN B4Q9Y = .;
   IF (B4Q9Z = 7 OR B4Q9Z = 8 OR B4Q9Z = 9) THEN B4Q9Z = .;
   IF (B4Q9AA = 7 OR B4Q9AA = 8 OR B4Q9AA = 9) THEN B4Q9AA = .;
   IF (B4Q9BB = 7 OR B4Q9BB = 8 OR B4Q9BB = 9) THEN B4Q9BB = .;
   IF (B4QCT_EA = 98.0) THEN B4QCT_EA = .;
   IF (B4QCT_PA = 98.0) THEN B4QCT_PA = .;
   IF (B4QCT_SA = 98.0) THEN B4QCT_SA = .;
   IF (B4QCT_EN = 98.0) THEN B4QCT_EN = .;
   IF (B4QCT_PN = 98.0) THEN B4QCT_PN = .;
   IF (B4QCT_MD = 8.0) THEN B4QCT_MD = .;
   IF (B4Q10A1 = 7 OR B4Q10A1 = 8 OR B4Q10A1 = 9) THEN B4Q10A1 = .;
   IF (B4Q10A2 = 7 OR B4Q10A2 = 8 OR B4Q10A2 = 9) THEN B4Q10A2 = .;
   IF (B4Q10B1 = 7 OR B4Q10B1 = 8 OR B4Q10B1 = 9) THEN B4Q10B1 = .;
   IF (B4Q10B2 = 7 OR B4Q10B2 = 8 OR B4Q10B2 = 9) THEN B4Q10B2 = .;
   IF (B4Q10C1 = 7 OR B4Q10C1 = 8 OR B4Q10C1 = 9) THEN B4Q10C1 = .;
   IF (B4Q10C2 = 7 OR B4Q10C2 = 8 OR B4Q10C2 = 9) THEN B4Q10C2 = .;
   IF (B4Q10D1 = 7 OR B4Q10D1 = 8 OR B4Q10D1 = 9) THEN B4Q10D1 = .;
   IF (B4Q10D2 = 7 OR B4Q10D2 = 8 OR B4Q10D2 = 9) THEN B4Q10D2 = .;
   IF (B4Q10E1 = 7 OR B4Q10E1 = 8 OR B4Q10E1 = 9) THEN B4Q10E1 = .;
   IF (B4Q10E2 = 7 OR B4Q10E2 = 8 OR B4Q10E2 = 9) THEN B4Q10E2 = .;
   IF (B4Q10F1 = 7 OR B4Q10F1 = 8 OR B4Q10F1 = 9) THEN B4Q10F1 = .;
   IF (B4Q10F2 = 7 OR B4Q10F2 = 8 OR B4Q10F2 = 9) THEN B4Q10F2 = .;
   IF (B4Q10G1 = 7 OR B4Q10G1 = 8 OR B4Q10G1 = 9) THEN B4Q10G1 = .;
   IF (B4Q10G2 = 7 OR B4Q10G2 = 8 OR B4Q10G2 = 9) THEN B4Q10G2 = .;
   IF (B4Q10H1 = 7 OR B4Q10H1 = 8 OR B4Q10H1 = 9) THEN B4Q10H1 = .;
   IF (B4Q10H2 = 7 OR B4Q10H2 = 8 OR B4Q10H2 = 9) THEN B4Q10H2 = .;
   IF (B4Q10I1 = 7 OR B4Q10I1 = 8 OR B4Q10I1 = 9) THEN B4Q10I1 = .;
   IF (B4Q10I2 = 7 OR B4Q10I2 = 8 OR B4Q10I2 = 9) THEN B4Q10I2 = .;
   IF (B4Q10J1 = 7 OR B4Q10J1 = 8 OR B4Q10J1 = 9) THEN B4Q10J1 = .;
   IF (B4Q10J2 = 7 OR B4Q10J2 = 8 OR B4Q10J2 = 9) THEN B4Q10J2 = .;
   IF (B4Q10K1 = 7 OR B4Q10K1 = 8 OR B4Q10K1 = 9) THEN B4Q10K1 = .;
   IF (B4Q10K2 = 7 OR B4Q10K2 = 8 OR B4Q10K2 = 9) THEN B4Q10K2 = .;
   IF (B4Q10L1 = 7 OR B4Q10L1 = 8 OR B4Q10L1 = 9) THEN B4Q10L1 = .;
   IF (B4Q10L2 = 7 OR B4Q10L2 = 8 OR B4Q10L2 = 9) THEN B4Q10L2 = .;
   IF (B4Q10M1 = 7 OR B4Q10M1 = 8 OR B4Q10M1 = 9) THEN B4Q10M1 = .;
   IF (B4Q10M2 = 7 OR B4Q10M2 = 8 OR B4Q10M2 = 9) THEN B4Q10M2 = .;
   IF (B4Q10N1 = 7 OR B4Q10N1 = 8 OR B4Q10N1 = 9) THEN B4Q10N1 = .;
   IF (B4Q10N2 = 7 OR B4Q10N2 = 8 OR B4Q10N2 = 9) THEN B4Q10N2 = .;
   IF (B4Q10O1 = 7 OR B4Q10O1 = 8 OR B4Q10O1 = 9) THEN B4Q10O1 = .;
   IF (B4Q10O2 = 7 OR B4Q10O2 = 8 OR B4Q10O2 = 9) THEN B4Q10O2 = .;
   IF (B4Q10P1 = 7 OR B4Q10P1 = 8 OR B4Q10P1 = 9) THEN B4Q10P1 = .;
   IF (B4Q10P2 = 7 OR B4Q10P2 = 8 OR B4Q10P2 = 9) THEN B4Q10P2 = .;
   IF (B4Q10Q1 = 7 OR B4Q10Q1 = 8 OR B4Q10Q1 = 9) THEN B4Q10Q1 = .;
   IF (B4Q10Q2 = 7 OR B4Q10Q2 = 8 OR B4Q10Q2 = 9) THEN B4Q10Q2 = .;
   IF (B4Q10R1 = 7 OR B4Q10R1 = 8 OR B4Q10R1 = 9) THEN B4Q10R1 = .;
   IF (B4Q10R2 = 7 OR B4Q10R2 = 8 OR B4Q10R2 = 9) THEN B4Q10R2 = .;
   IF (B4Q10S1 = 7 OR B4Q10S1 = 8 OR B4Q10S1 = 9) THEN B4Q10S1 = .;
   IF (B4Q10S2 = 7 OR B4Q10S2 = 8 OR B4Q10S2 = 9) THEN B4Q10S2 = .;
   IF (B4Q10T1 = 7 OR B4Q10T1 = 8 OR B4Q10T1 = 9) THEN B4Q10T1 = .;
   IF (B4Q10T2 = 7 OR B4Q10T2 = 8 OR B4Q10T2 = 9) THEN B4Q10T2 = .;
   IF (B4Q10U1 = 7 OR B4Q10U1 = 8 OR B4Q10U1 = 9) THEN B4Q10U1 = .;
   IF (B4Q10U2 = 7 OR B4Q10U2 = 8 OR B4Q10U2 = 9) THEN B4Q10U2 = .;
   IF (B4Q10V1 = 7 OR B4Q10V1 = 8 OR B4Q10V1 = 9) THEN B4Q10V1 = .;
   IF (B4Q10V2 = 7 OR B4Q10V2 = 8 OR B4Q10V2 = 9) THEN B4Q10V2 = .;
   IF (B4Q10W1 = 7 OR B4Q10W1 = 8 OR B4Q10W1 = 9) THEN B4Q10W1 = .;
   IF (B4Q10W2 = 7 OR B4Q10W2 = 8 OR B4Q10W2 = 9) THEN B4Q10W2 = .;
   IF (B4Q10X1 = 7 OR B4Q10X1 = 8 OR B4Q10X1 = 9) THEN B4Q10X1 = .;
   IF (B4Q10X2 = 7 OR B4Q10X2 = 8 OR B4Q10X2 = 9) THEN B4Q10X2 = .;
   IF (B4Q10Y1 = 7 OR B4Q10Y1 = 8 OR B4Q10Y1 = 9) THEN B4Q10Y1 = .;
   IF (B4Q10Y2 = 7 OR B4Q10Y2 = 8 OR B4Q10Y2 = 9) THEN B4Q10Y2 = .;
   IF (B4Q10Z1 = 7 OR B4Q10Z1 = 8 OR B4Q10Z1 = 9) THEN B4Q10Z1 = .;
   IF (B4Q10Z2 = 7 OR B4Q10Z2 = 8 OR B4Q10Z2 = 9) THEN B4Q10Z2 = .;
   IF (B4Q10AA1 = 7 OR B4Q10AA1 = 8 OR B4Q10AA1 = 9) THEN B4Q10AA1 = .;
   IF (B4Q10AA2 = 7 OR B4Q10AA2 = 8 OR B4Q10AA2 = 9) THEN B4Q10AA2 = .;
   IF (B4Q10BB1 = 7 OR B4Q10BB1 = 8 OR B4Q10BB1 = 9) THEN B4Q10BB1 = .;
   IF (B4Q10BB2 = 7 OR B4Q10BB2 = 8 OR B4Q10BB2 = 9) THEN B4Q10BB2 = .;
   IF (B4Q10CC1 = 7 OR B4Q10CC1 = 8 OR B4Q10CC1 = 9) THEN B4Q10CC1 = .;
   IF (B4Q10CC2 = 7 OR B4Q10CC2 = 8 OR B4Q10CC2 = 9) THEN B4Q10CC2 = .;
   IF (B4Q10DD1 = 7 OR B4Q10DD1 = 8 OR B4Q10DD1 = 9) THEN B4Q10DD1 = .;
   IF (B4Q10DD2 = 7 OR B4Q10DD2 = 8 OR B4Q10DD2 = 9) THEN B4Q10DD2 = .;
   IF (B4Q10EE1 = 7 OR B4Q10EE1 = 8 OR B4Q10EE1 = 9) THEN B4Q10EE1 = .;
   IF (B4Q10EE2 = 7 OR B4Q10EE2 = 8 OR B4Q10EE2 = 9) THEN B4Q10EE2 = .;
   IF (B4Q10FF1 = 7 OR B4Q10FF1 = 8 OR B4Q10FF1 = 9) THEN B4Q10FF1 = .;
   IF (B4Q10FF2 = 7 OR B4Q10FF2 = 8 OR B4Q10FF2 = 9) THEN B4Q10FF2 = .;
   IF (B4Q10GG1 = 7 OR B4Q10GG1 = 8 OR B4Q10GG1 = 9) THEN B4Q10GG1 = .;
   IF (B4Q10GG2 = 7 OR B4Q10GG2 = 8 OR B4Q10GG2 = 9) THEN B4Q10GG2 = .;
   IF (B4Q10HH1 = 7 OR B4Q10HH1 = 8 OR B4Q10HH1 = 9) THEN B4Q10HH1 = .;
   IF (B4Q10HH2 = 7 OR B4Q10HH2 = 8 OR B4Q10HH2 = 9) THEN B4Q10HH2 = .;
   IF (B4Q10II1 = 7 OR B4Q10II1 = 8 OR B4Q10II1 = 9) THEN B4Q10II1 = .;
   IF (B4Q10II2 = 7 OR B4Q10II2 = 8 OR B4Q10II2 = 9) THEN B4Q10II2 = .;
   IF (B4Q10JJ1 = 7 OR B4Q10JJ1 = 8 OR B4Q10JJ1 = 9) THEN B4Q10JJ1 = .;
   IF (B4Q10JJ2 = 7 OR B4Q10JJ2 = 8 OR B4Q10JJ2 = 9) THEN B4Q10JJ2 = .;
   IF (B4Q10KK1 = 7 OR B4Q10KK1 = 8 OR B4Q10KK1 = 9) THEN B4Q10KK1 = .;
   IF (B4Q10KK2 = 7 OR B4Q10KK2 = 8 OR B4Q10KK2 = 9) THEN B4Q10KK2 = .;
   IF (B4Q10LL1 = 7 OR B4Q10LL1 = 8 OR B4Q10LL1 = 9) THEN B4Q10LL1 = .;
   IF (B4Q10LL2 = 7 OR B4Q10LL2 = 8 OR B4Q10LL2 = 9) THEN B4Q10LL2 = .;
   IF (B4Q10MM1 = 7 OR B4Q10MM1 = 8 OR B4Q10MM1 = 9) THEN B4Q10MM1 = .;
   IF (B4Q10MM2 = 7 OR B4Q10MM2 = 8 OR B4Q10MM2 = 9) THEN B4Q10MM2 = .;
   IF (B4Q10NN1 = 7 OR B4Q10NN1 = 8 OR B4Q10NN1 = 9) THEN B4Q10NN1 = .;
   IF (B4Q10NN2 = 7 OR B4Q10NN2 = 8 OR B4Q10NN2 = 9) THEN B4Q10NN2 = .;
   IF (B4Q10OO1 = 7 OR B4Q10OO1 = 8 OR B4Q10OO1 = 9) THEN B4Q10OO1 = .;
   IF (B4Q10OO2 = 7 OR B4Q10OO2 = 8 OR B4Q10OO2 = 9) THEN B4Q10OO2 = .;
   IF (B4Q10PP1 = 7 OR B4Q10PP1 = 8 OR B4Q10PP1 = 9) THEN B4Q10PP1 = .;
   IF (B4Q10PP2 = 7 OR B4Q10PP2 = 8 OR B4Q10PP2 = 9) THEN B4Q10PP2 = .;
   IF (B4Q10QQ1 = 7 OR B4Q10QQ1 = 8 OR B4Q10QQ1 = 9) THEN B4Q10QQ1 = .;
   IF (B4Q10QQ2 = 7 OR B4Q10QQ2 = 8 OR B4Q10QQ2 = 9) THEN B4Q10QQ2 = .;
   IF (B4Q10RR1 = 7 OR B4Q10RR1 = 8 OR B4Q10RR1 = 9) THEN B4Q10RR1 = .;
   IF (B4Q10RR2 = 7 OR B4Q10RR2 = 8 OR B4Q10RR2 = 9) THEN B4Q10RR2 = .;
   IF (B4Q10SS1 = 7 OR B4Q10SS1 = 8 OR B4Q10SS1 = 9) THEN B4Q10SS1 = .;
   IF (B4Q10SS2 = 7 OR B4Q10SS2 = 8 OR B4Q10SS2 = 9) THEN B4Q10SS2 = .;
   IF (B4Q10TT1 = 7 OR B4Q10TT1 = 8 OR B4Q10TT1 = 9) THEN B4Q10TT1 = .;
   IF (B4Q10TT2 = 7 OR B4Q10TT2 = 8 OR B4Q10TT2 = 9) THEN B4Q10TT2 = .;
   IF (B4Q10UU1 = 7 OR B4Q10UU1 = 8 OR B4Q10UU1 = 9) THEN B4Q10UU1 = .;
   IF (B4Q10UU2 = 7 OR B4Q10UU2 = 8 OR B4Q10UU2 = 9) THEN B4Q10UU2 = .;
   IF (B4Q10VV1 = 7 OR B4Q10VV1 = 8 OR B4Q10VV1 = 9) THEN B4Q10VV1 = .;
   IF (B4Q10VV2 = 7 OR B4Q10VV2 = 8 OR B4Q10VV2 = 9) THEN B4Q10VV2 = .;
   IF (B4Q10WW1 = 7 OR B4Q10WW1 = 8 OR B4Q10WW1 = 9) THEN B4Q10WW1 = .;
   IF (B4Q10WW2 = 7 OR B4Q10WW2 = 8 OR B4Q10WW2 = 9) THEN B4Q10WW2 = .;
   IF (B4Q11A = 97 OR B4Q11A = 98 OR B4Q11A = 99) THEN B4Q11A = .;
   IF (B4Q11B = 97 OR B4Q11B = 98 OR B4Q11B = 99) THEN B4Q11B = .;
   IF (B4Q11C = 97 OR B4Q11C = 98 OR B4Q11C = 99) THEN B4Q11C = .;
   IF (B4Q11D = 97 OR B4Q11D = 98 OR B4Q11D = 99) THEN B4Q11D = .;
   IF (B4Q11E = 97 OR B4Q11E = 98 OR B4Q11E = 99) THEN B4Q11E = .;
   IF (B4Q11F = 97 OR B4Q11F = 98 OR B4Q11F = 99) THEN B4Q11F = .;
   IF (B4Q11G = 97 OR B4Q11G = 98 OR B4Q11G = 99) THEN B4Q11G = .;
   IF (B4Q11H = 97 OR B4Q11H = 98 OR B4Q11H = 99) THEN B4Q11H = .;
   IF (B4Q11I = 97 OR B4Q11I = 98 OR B4Q11I = 99) THEN B4Q11I = .;
   IF (B4Q11J = 97 OR B4Q11J = 98 OR B4Q11J = 99) THEN B4Q11J = .;
   IF (B4Q11K = 97 OR B4Q11K = 98 OR B4Q11K = 99) THEN B4Q11K = .;
   IF (B4Q11L = 97 OR B4Q11L = 98 OR B4Q11L = 99) THEN B4Q11L = .;
   IF (B4Q11M = 97 OR B4Q11M = 98 OR B4Q11M = 99) THEN B4Q11M = .;
   IF (B4Q11N = 97 OR B4Q11N = 98 OR B4Q11N = 99) THEN B4Q11N = .;
   IF (B4Q11O = 97 OR B4Q11O = 98 OR B4Q11O = 99) THEN B4Q11O = .;
   IF (B4Q11P = 97 OR B4Q11P = 98 OR B4Q11P = 99) THEN B4Q11P = .;
   IF (B4Q11Q = 97 OR B4Q11Q = 98 OR B4Q11Q = 99) THEN B4Q11Q = .;
   IF (B4Q11R = 97 OR B4Q11R = 98 OR B4Q11R = 99) THEN B4Q11R = .;
   IF (B4Q11S = 97 OR B4Q11S = 98 OR B4Q11S = 99) THEN B4Q11S = .;
   IF (B4Q11T = 97 OR B4Q11T = 98 OR B4Q11T = 99) THEN B4Q11T = .;
   IF (B4Q11U = 97 OR B4Q11U = 98 OR B4Q11U = 99) THEN B4Q11U = .;
   IF (B4Q11V = 97 OR B4Q11V = 98 OR B4Q11V = 99) THEN B4Q11V = .;
   IF (B4Q11W = 97 OR B4Q11W = 98 OR B4Q11W = 99) THEN B4Q11W = .;
   IF (B4Q11X = 97 OR B4Q11X = 98 OR B4Q11X = 99) THEN B4Q11X = .;
   IF (B4Q11Y = 97 OR B4Q11Y = 98 OR B4Q11Y = 99) THEN B4Q11Y = .;
   IF (B4Q11Z = 97 OR B4Q11Z = 98 OR B4Q11Z = 99) THEN B4Q11Z = .;
   IF (B4Q11AA = 97 OR B4Q11AA = 98 OR B4Q11AA = 99) THEN B4Q11AA = .;
   IF (B4Q11BB = 97 OR B4Q11BB = 98 OR B4Q11BB = 99) THEN B4Q11BB = .;
   IF (B4Q11CC = 97 OR B4Q11CC = 98 OR B4Q11CC = 99) THEN B4Q11CC = .;
   IF (B4QSC_ID = 8.0) THEN B4QSC_ID = .;
   IF (B4QSC_IT = 8.0) THEN B4QSC_IT = .;
   IF (B4QSO_PC = 8.0) THEN B4QSO_PC = .;
   IF (B4QSO_PF = 8.0) THEN B4QSO_PF = .;
   IF (B4QSO_PX = 8.0) THEN B4QSO_PX = .;
   IF (B4QSO_IW = 8.0) THEN B4QSO_IW = .;
   IF (B4QSO_GW = 8.0) THEN B4QSO_GW = .;
   IF (B4Q12A = 97 OR B4Q12A = 98 OR B4Q12A = 99) THEN B4Q12A = .;
   IF (B4Q12B = 97 OR B4Q12B = 98 OR B4Q12B = 99) THEN B4Q12B = .;
   IF (B4Q12C = 97 OR B4Q12C = 98 OR B4Q12C = 99) THEN B4Q12C = .;
   IF (B4Q12D = 97 OR B4Q12D = 98 OR B4Q12D = 99) THEN B4Q12D = .;
   IF (B4Q12E = 97 OR B4Q12E = 98 OR B4Q12E = 99) THEN B4Q12E = .;
   IF (B4Q12F = 97 OR B4Q12F = 98 OR B4Q12F = 99) THEN B4Q12F = .;
   IF (B4Q12G = 97 OR B4Q12G = 98 OR B4Q12G = 99) THEN B4Q12G = .;
   IF (B4Q12H = 97 OR B4Q12H = 98 OR B4Q12H = 99) THEN B4Q12H = .;
   IF (B4Q12I = 97 OR B4Q12I = 98 OR B4Q12I = 99) THEN B4Q12I = .;
   IF (B4Q12J = 97 OR B4Q12J = 98 OR B4Q12J = 99) THEN B4Q12J = .;
   IF (B4Q12K = 97 OR B4Q12K = 98 OR B4Q12K = 99) THEN B4Q12K = .;
   IF (B4Q12L = 97 OR B4Q12L = 98 OR B4Q12L = 99) THEN B4Q12L = .;
   IF (B4Q12M = 97 OR B4Q12M = 98 OR B4Q12M = 99) THEN B4Q12M = .;
   IF (B4Q12N = 97 OR B4Q12N = 98 OR B4Q12N = 99) THEN B4Q12N = .;
   IF (B4Q12O = 97 OR B4Q12O = 98 OR B4Q12O = 99) THEN B4Q12O = .;
   IF (B4Q12P = 97 OR B4Q12P = 98 OR B4Q12P = 99) THEN B4Q12P = .;
   IF (B4Q12Q = 97 OR B4Q12Q = 98 OR B4Q12Q = 99) THEN B4Q12Q = .;
   IF (B4Q12R = 97 OR B4Q12R = 98 OR B4Q12R = 99) THEN B4Q12R = .;
   IF (B4Q12S = 97 OR B4Q12S = 98 OR B4Q12S = 99) THEN B4Q12S = .;
   IF (B4Q12T = 97 OR B4Q12T = 98 OR B4Q12T = 99) THEN B4Q12T = .;
   IF (B4Q12U = 97 OR B4Q12U = 98 OR B4Q12U = 99) THEN B4Q12U = .;
   IF (B4QRISC = 8.0) THEN B4QRISC = .;
   IF (B4QSYMP = 8.0) THEN B4QSYMP = .;
   IF (B4QADJ = 8.0) THEN B4QADJ = .;
   IF (B4Q13A = 7 OR B4Q13A = 8 OR B4Q13A = 9) THEN B4Q13A = .;
   IF (B4Q13B = 7 OR B4Q13B = 8 OR B4Q13B = 9) THEN B4Q13B = .;
   IF (B4Q13C = 7 OR B4Q13C = 8 OR B4Q13C = 9) THEN B4Q13C = .;
   IF (B4Q13D = 7 OR B4Q13D = 8 OR B4Q13D = 9) THEN B4Q13D = .;
   IF (B4Q13E = 7 OR B4Q13E = 8 OR B4Q13E = 9) THEN B4Q13E = .;
   IF (B4Q13F = 7 OR B4Q13F = 8 OR B4Q13F = 9) THEN B4Q13F = .;
   IF (B4Q13G = 7 OR B4Q13G = 8 OR B4Q13G = 9) THEN B4Q13G = .;
   IF (B4Q13H = 7 OR B4Q13H = 8 OR B4Q13H = 9) THEN B4Q13H = .;
   IF (B4Q13H1 = 7 OR B4Q13H1 = 8 OR B4Q13H1 = 9) THEN B4Q13H1 = .;
   IF (B4Q13I = 7 OR B4Q13I = 8 OR B4Q13I = 9) THEN B4Q13I = .;
   IF (B4Q13J = 7 OR B4Q13J = 8 OR B4Q13J = 9) THEN B4Q13J = .;
   IF (B4Q13K = 7 OR B4Q13K = 8 OR B4Q13K = 9) THEN B4Q13K = .;
   IF (B4Q13L = 7 OR B4Q13L = 8 OR B4Q13L = 9) THEN B4Q13L = .;
   IF (B4Q13M = 7 OR B4Q13M = 8 OR B4Q13M = 9) THEN B4Q13M = .;
   IF (B4Q13N = 7 OR B4Q13N = 8 OR B4Q13N = 9) THEN B4Q13N = .;
   IF (B4Q13O1 = 7 OR B4Q13O1 = 8 OR B4Q13O1 = 9) THEN B4Q13O1 = .;
   IF (B4Q13O = 7 OR B4Q13O = 8 OR B4Q13O = 9) THEN B4Q13O = .;
   IF (B4Q13P = 7 OR B4Q13P = 8 OR B4Q13P = 9) THEN B4Q13P = .;
   IF (B4Q13Q = 7 OR B4Q13Q = 8 OR B4Q13Q = 9) THEN B4Q13Q = .;
   IF (B4Q13R = 7 OR B4Q13R = 8 OR B4Q13R = 9) THEN B4Q13R = .;
   IF (B4Q13S = 7 OR B4Q13S = 8 OR B4Q13S = 9) THEN B4Q13S = .;
   IF (B4Q13T = 7 OR B4Q13T = 8 OR B4Q13T = 9) THEN B4Q13T = .;
   IF (B4Q13U = 7 OR B4Q13U = 8 OR B4Q13U = 9) THEN B4Q13U = .;
   IF (B4Q13V = 7 OR B4Q13V = 8 OR B4Q13V = 9) THEN B4Q13V = .;
   IF (B4Q13W = 7 OR B4Q13W = 8 OR B4Q13W = 9) THEN B4Q13W = .;
   IF (B4Q13X = 7 OR B4Q13X = 8 OR B4Q13X = 9) THEN B4Q13X = .;
   IF (B4Q13Y = 7 OR B4Q13Y = 8 OR B4Q13Y = 9) THEN B4Q13Y = .;
   IF (B4Q13Z = 7 OR B4Q13Z = 8 OR B4Q13Z = 9) THEN B4Q13Z = .;
   IF (B4QSUGF = 8.00) THEN B4QSUGF = .;
   IF (B4QSTGF = 8.00) THEN B4QSTGF = .;
   IF (B4QSOGFD = 8.00) THEN B4QSOGFD = .;
   IF (B4QSUGFA = 8.00) THEN B4QSUGFA = .;
   IF (B4QSTGFA = 8.00) THEN B4QSTGFA = .;
   IF (B4QSOGFM = 8.00) THEN B4QSOGFM = .;
   IF (B4QSUGS = 8.00 OR B4QSUGS = 9.00) THEN B4QSUGS = .;
   IF (B4QSTGS = 8.00 OR B4QSTGS = 9.00) THEN B4QSTGS = .;
   IF (B4QSOLGS = 8.00 OR B4QSOLGS = 9.00) THEN B4QSOLGS = .;
   IF (B4Q14A = 97 OR B4Q14A = 98 OR B4Q14A = 99) THEN B4Q14A = .;
   IF (B4Q14B = 97 OR B4Q14B = 98 OR B4Q14B = 99) THEN B4Q14B = .;
   IF (B4Q14C = 97 OR B4Q14C = 98 OR B4Q14C = 99) THEN B4Q14C = .;
   IF (B4Q14D = 97 OR B4Q14D = 98 OR B4Q14D = 99) THEN B4Q14D = .;
   IF (B4Q14E = 97 OR B4Q14E = 98 OR B4Q14E = 99) THEN B4Q14E = .;
   IF (B4Q14F = 97 OR B4Q14F = 98 OR B4Q14F = 99) THEN B4Q14F = .;
   IF (B4Q14G = 97 OR B4Q14G = 98 OR B4Q14G = 99) THEN B4Q14G = .;
   IF (B4Q14H = 97 OR B4Q14H = 98 OR B4Q14H = 99) THEN B4Q14H = .;
   IF (B4Q14I = 97 OR B4Q14I = 98 OR B4Q14I = 99) THEN B4Q14I = .;
   IF (B4Q14J = 97 OR B4Q14J = 98 OR B4Q14J = 99) THEN B4Q14J = .;
   IF (B4Q14K = 97 OR B4Q14K = 98 OR B4Q14K = 99) THEN B4Q14K = .;
   IF (B4Q14L = 97 OR B4Q14L = 98 OR B4Q14L = 99) THEN B4Q14L = .;
   IF (B4Q14M = 97 OR B4Q14M = 98 OR B4Q14M = 99) THEN B4Q14M = .;
   IF (B4Q14N = 97 OR B4Q14N = 98 OR B4Q14N = 99) THEN B4Q14N = .;
   IF (B4Q14O = 97 OR B4Q14O = 98 OR B4Q14O = 99) THEN B4Q14O = .;
   IF (B4Q14P = 97 OR B4Q14P = 98 OR B4Q14P = 99) THEN B4Q14P = .;
   IF (B4Q14Q = 97 OR B4Q14Q = 98 OR B4Q14Q = 99) THEN B4Q14Q = .;
   IF (B4Q14R = 97 OR B4Q14R = 98 OR B4Q14R = 99) THEN B4Q14R = .;
   IF (B4Q14S = 97 OR B4Q14S = 98 OR B4Q14S = 99) THEN B4Q14S = .;
   IF (B4QSC_SC = 8.0) THEN B4QSC_SC = .;
   IF (B4QSC_CC = 8.0) THEN B4QSC_CC = .;
   IF (B4QSC_EC = 8.0) THEN B4QSC_EC = .;
   IF (B4QSC_BC = 8.0) THEN B4QSC_BC = .;
   IF (B4Q15A = 97 OR B4Q15A = 98 OR B4Q15A = 99) THEN B4Q15A = .;
   IF (B4Q15B = 97 OR B4Q15B = 98 OR B4Q15B = 99) THEN B4Q15B = .;
   IF (B4Q15C = 97 OR B4Q15C = 98 OR B4Q15C = 99) THEN B4Q15C = .;
   IF (B4Q15D = 97 OR B4Q15D = 98 OR B4Q15D = 99) THEN B4Q15D = .;
   IF (B4Q15E = 97 OR B4Q15E = 98 OR B4Q15E = 99) THEN B4Q15E = .;
   IF (B4Q15F = 97 OR B4Q15F = 98 OR B4Q15F = 99) THEN B4Q15F = .;
   IF (B4Q15G = 97 OR B4Q15G = 98 OR B4Q15G = 99) THEN B4Q15G = .;
   IF (B4Q15H = 97 OR B4Q15H = 98 OR B4Q15H = 99) THEN B4Q15H = .;
   IF (B4QSW_SL = 8.0) THEN B4QSW_SL = .;
   IF (B4QSW_GR = 8.0) THEN B4QSW_GR = .;
   IF (B4Q16A = 7 OR B4Q16A = 8 OR B4Q16A = 9) THEN B4Q16A = .;
   IF (B4Q16B = 7 OR B4Q16B = 8 OR B4Q16B = 9) THEN B4Q16B = .;
   IF (B4Q16C = 7 OR B4Q16C = 8 OR B4Q16C = 9) THEN B4Q16C = .;
   IF (B4Q16D = 7 OR B4Q16D = 8 OR B4Q16D = 9) THEN B4Q16D = .;
   IF (B4Q16E = 7 OR B4Q16E = 8 OR B4Q16E = 9) THEN B4Q16E = .;
   IF (B4Q16F = 7 OR B4Q16F = 8 OR B4Q16F = 9) THEN B4Q16F = .;
   IF (B4Q16G = 7 OR B4Q16G = 8 OR B4Q16G = 9) THEN B4Q16G = .;
   IF (B4Q16H = 7 OR B4Q16H = 8 OR B4Q16H = 9) THEN B4Q16H = .;
   IF (B4QSW_JP = 8.0) THEN B4QSW_JP = .;
   IF (B4Q17A = 98) THEN B4Q17A = .;
   IF (B4S1 = '349200.0' OR B4S1 = '352800.0' OR B4S1 = '356400.0') THEN B4S1 = '';
   IF (B4S1AMPM = 7 OR B4S1AMPM = 8 OR B4S1AMPM = 9) THEN B4S1AMPM = .;
   IF (B4S2 = 9997.0 OR B4S2 = 9998.0 OR B4S2 = 9999.0) THEN B4S2 = .;
   IF (B4S3 = '349200.0' OR B4S3 = '352800.0' OR B4S3 = '356400.0') THEN B4S3 = '';
   IF (B4S3AMPM = 7 OR B4S3AMPM = 8 OR B4S3AMPM = 9) THEN B4S3AMPM = .;
   IF (B4S4 = 9997.0 OR B4S4 = 9998.0 OR B4S4 = 9999.0) THEN B4S4 = .;
   IF (B4S5 = 7 OR B4S5 = 8 OR B4S5 = 9) THEN B4S5 = .;
   IF (B4S6 = 7 OR B4S6 = 8 OR B4S6 = 9) THEN B4S6 = .;
   IF (B4S7 = 7 OR B4S7 = 8 OR B4S7 = 9) THEN B4S7 = .;
   IF (B4S8 = 7 OR B4S8 = 8 OR B4S8 = 9) THEN B4S8 = .;
   IF (B4S9 = 7 OR B4S9 = 8 OR B4S9 = 9) THEN B4S9 = .;
   IF (B4S10A = 7 OR B4S10A = 8 OR B4S10A = 9) THEN B4S10A = .;
   IF (B4S10B = 7 OR B4S10B = 8 OR B4S10B = 9) THEN B4S10B = .;
   IF (B4S10C = 7 OR B4S10C = 8 OR B4S10C = 9) THEN B4S10C = .;
   IF (B4S10D = 7 OR B4S10D = 8 OR B4S10D = 9) THEN B4S10D = .;
   IF (B4S10E = 7 OR B4S10E = 8 OR B4S10E = 9) THEN B4S10E = .;
   IF (B4S11A = 7 OR B4S11A = 8 OR B4S11A = 9) THEN B4S11A = .;
   IF (B4S11B = 7 OR B4S11B = 8 OR B4S11B = 9) THEN B4S11B = .;
   IF (B4S11C = 7 OR B4S11C = 8 OR B4S11C = 9) THEN B4S11C = .;
   IF (B4S11D = 7 OR B4S11D = 8 OR B4S11D = 9) THEN B4S11D = .;
   IF (B4S11E = 7 OR B4S11E = 8 OR B4S11E = 9) THEN B4S11E = .;
   IF (B4S11F = 7 OR B4S11F = 8 OR B4S11F = 9) THEN B4S11F = .;
   IF (B4S11G = 7 OR B4S11G = 8 OR B4S11G = 9) THEN B4S11G = .;
   IF (B4S11H = 7 OR B4S11H = 8 OR B4S11H = 9) THEN B4S11H = .;
   IF (B4S11I = 7 OR B4S11I = 8 OR B4S11I = 9) THEN B4S11I = .;
   IF (B4S11J = 7 OR B4S11J = 8 OR B4S11J = 9) THEN B4S11J = .;
   IF (B4SSQ_GS = 98) THEN B4SSQ_GS = .;
   IF (B4SSQ_S1 = 8) THEN B4SSQ_S1 = .;
   IF (B4SSQ_S2 = 8) THEN B4SSQ_S2 = .;
   IF (B4SSQ_S3 = 8) THEN B4SSQ_S3 = .;
   IF (B4SSQ_S4 = 8) THEN B4SSQ_S4 = .;
   IF (B4SSQ_S5 = 8) THEN B4SSQ_S5 = .;
   IF (B4SSQ_S6 = 8) THEN B4SSQ_S6 = .;
   IF (B4SSQ_S7 = 8) THEN B4SSQ_S7 = .;
   IF (B4H1A = 7 OR B4H1A = 8 OR B4H1A = 9) THEN B4H1A = .;
   IF (B4H1AD = 7 OR B4H1AD = 8 OR B4H1AD = 9) THEN B4H1AD = .;
   IF (B4H1B = 7 OR B4H1B = 8 OR B4H1B = 9) THEN B4H1B = .;
   IF (B4H1BD = 7 OR B4H1BD = 8 OR B4H1BD = 9) THEN B4H1BD = .;
   IF (B4H1C = 7 OR B4H1C = 8 OR B4H1C = 9) THEN B4H1C = .;
   IF (B4H1CD = 7 OR B4H1CD = 8 OR B4H1CD = 9) THEN B4H1CD = .;
   IF (B4H1D = 7 OR B4H1D = 8 OR B4H1D = 9) THEN B4H1D = .;
   IF (B4H1DD = 7 OR B4H1DD = 8 OR B4H1DD = 9) THEN B4H1DD = .;
   IF (B4H1E = 7 OR B4H1E = 8 OR B4H1E = 9) THEN B4H1E = .;
   IF (B4H1ED = 7 OR B4H1ED = 8) THEN B4H1ED = .;
   IF (B4H1F = 7 OR B4H1F = 8 OR B4H1F = 9) THEN B4H1F = .;
   IF (B4H1FD = 7 OR B4H1FD = 8 OR B4H1FD = 9) THEN B4H1FD = .;
   IF (B4H1G = 7 OR B4H1G = 8 OR B4H1G = 9) THEN B4H1G = .;
   IF (B4H1GD = 7 OR B4H1GD = 8 OR B4H1GD = 9) THEN B4H1GD = .;
   IF (B4H1H = 7 OR B4H1H = 8 OR B4H1H = 9) THEN B4H1H = .;
   IF (B4H1HD = 7 OR B4H1HD = 8 OR B4H1HD = 9) THEN B4H1HD = .;
   IF (B4H1I = 7 OR B4H1I = 8 OR B4H1I = 9) THEN B4H1I = .;
   IF (B4H1ID = 7 OR B4H1ID = 8 OR B4H1ID = 9) THEN B4H1ID = .;
   IF (B4H1J = 7 OR B4H1J = 8 OR B4H1J = 9) THEN B4H1J = .;
   IF (B4H1JD = 7 OR B4H1JD = 8 OR B4H1JD = 9) THEN B4H1JD = .;
   IF (B4H1K = 7 OR B4H1K = 8 OR B4H1K = 9) THEN B4H1K = .;
   IF (B4H1KD = 7 OR B4H1KD = 8 OR B4H1KD = 9) THEN B4H1KD = .;
   IF (B4H1L = 7 OR B4H1L = 8 OR B4H1L = 9) THEN B4H1L = .;
   IF (B4H1LD = 7 OR B4H1LD = 8 OR B4H1LD = 9) THEN B4H1LD = .;
   IF (B4H1M = 7 OR B4H1M = 8 OR B4H1M = 9) THEN B4H1M = .;
   IF (B4H1MD = 7 OR B4H1MD = 8 OR B4H1MD = 9) THEN B4H1MD = .;
   IF (B4H1N = 7 OR B4H1N = 8 OR B4H1N = 9) THEN B4H1N = .;
   IF (B4H1ND = 7 OR B4H1ND = 8 OR B4H1ND = 9) THEN B4H1ND = .;
   IF (B4H1O = 7 OR B4H1O = 8 OR B4H1O = 9) THEN B4H1O = .;
   IF (B4H1OD = 7 OR B4H1OD = 8 OR B4H1OD = 9) THEN B4H1OD = .;
   IF (B4H1P = 7 OR B4H1P = 8 OR B4H1P = 9) THEN B4H1P = .;
   IF (B4H1PD = 7 OR B4H1PD = 8 OR B4H1PD = 9) THEN B4H1PD = .;
   IF (B4H1Q = 7 OR B4H1Q = 8 OR B4H1Q = 9) THEN B4H1Q = .;
   IF (B4H1QD = 7 OR B4H1QD = 8 OR B4H1QD = 9) THEN B4H1QD = .;
   IF (B4H1R = 7 OR B4H1R = 8 OR B4H1R = 9) THEN B4H1R = .;
   IF (B4H1RD = 7 OR B4H1RD = 8 OR B4H1RD = 9) THEN B4H1RD = .;
   IF (B4H1S = 7 OR B4H1S = 8 OR B4H1S = 9) THEN B4H1S = .;
   IF (B4H1SD = 7 OR B4H1SD = 8 OR B4H1SD = 9) THEN B4H1SD = .;
   IF (B4H1T = 7 OR B4H1T = 8 OR B4H1T = 9) THEN B4H1T = .;
   IF (B4H1TD = 7 OR B4H1TD = 8 OR B4H1TD = 9) THEN B4H1TD = .;
   IF (B4H1U = 7 OR B4H1U = 8 OR B4H1U = 9) THEN B4H1U = .;
   IF (B4H1UD = 7 OR B4H1UD = 8 OR B4H1UD = 9) THEN B4H1UD = .;
   IF (B4H1V = 7 OR B4H1V = 8 OR B4H1V = 9) THEN B4H1V = .;
   IF (B4H1VD = 7 OR B4H1VD = 8 OR B4H1VD = 9) THEN B4H1VD = .;
   IF (B4H1W = 7 OR B4H1W = 8 OR B4H1W = 9) THEN B4H1W = .;
   IF (B4H1WD = 7 OR B4H1WD = 8 OR B4H1WD = 9) THEN B4H1WD = .;
   IF (B4H1X = 7 OR B4H1X = 8 OR B4H1X = 9) THEN B4H1X = .;
   IF (B4H1XD = 7 OR B4H1XD = 8 OR B4H1XD = 9) THEN B4H1XD = .;
   IF (B4H1Y = 7 OR B4H1Y = 8 OR B4H1Y = 9) THEN B4H1Y = .;
   IF (B4H1YD = 7 OR B4H1YD = 8 OR B4H1YD = 9) THEN B4H1YD = .;
   IF (B4H2 = 7 OR B4H2 = 8 OR B4H2 = 9) THEN B4H2 = .;
   IF (B4H2AF = 97 OR B4H2AF = 98 OR B4H2AF = 99) THEN B4H2AF = .;
   IF (B4H2AY = 9997 OR B4H2AY = 9998 OR B4H2AY = 9999) THEN B4H2AY = .;
   IF (B4H2BF = 97 OR B4H2BF = 98 OR B4H2BF = 99) THEN B4H2BF = .;
   IF (B4H2BY = 9997 OR B4H2BY = 9998 OR B4H2BY = 9999) THEN B4H2BY = .;
   IF (B4H2CF = 97 OR B4H2CF = 98 OR B4H2CF = 99) THEN B4H2CF = .;
   IF (B4H2CY = 9997 OR B4H2CY = 9998 OR B4H2CY = 9999) THEN B4H2CY = .;
   IF (B4H2DF = 97 OR B4H2DF = 98 OR B4H2DF = 99) THEN B4H2DF = .;
   IF (B4H2DY = 9997 OR B4H2DY = 9998 OR B4H2DY = 9999) THEN B4H2DY = .;
   IF (B4H2EF = 97 OR B4H2EF = 98 OR B4H2EF = 99) THEN B4H2EF = .;
   IF (B4H2EY = 9997 OR B4H2EY = 9998 OR B4H2EY = 9999) THEN B4H2EY = .;
   IF (B4H2FF = 97 OR B4H2FF = 98 OR B4H2FF = 99) THEN B4H2FF = .;
   IF (B4H2FY = 9997 OR B4H2FY = 9998 OR B4H2FY = 9999) THEN B4H2FY = .;
   IF (B4H2GF = 97 OR B4H2GF = 98 OR B4H2GF = 99) THEN B4H2GF = .;
   IF (B4H2GY = 9997 OR B4H2GY = 9998 OR B4H2GY = 9999) THEN B4H2GY = .;
   IF (B4H2HF = 97 OR B4H2HF = 98 OR B4H2HF = 99) THEN B4H2HF = .;
   IF (B4H2HY = 9997 OR B4H2HY = 9998 OR B4H2HY = 9999) THEN B4H2HY = .;
   IF (B4H2IF = 97 OR B4H2IF = 98 OR B4H2IF = 99) THEN B4H2IF = .;
   IF (B4H2IY = 9997 OR B4H2IY = 9998 OR B4H2IY = 9999) THEN B4H2IY = .;
   IF (B4H2JF = 97 OR B4H2JF = 98 OR B4H2JF = 99) THEN B4H2JF = .;
   IF (B4H2JY = 9997 OR B4H2JY = 9998 OR B4H2JY = 9999) THEN B4H2JY = .;
   IF (B4H2KF = 97 OR B4H2KF = 98 OR B4H2KF = 99) THEN B4H2KF = .;
   IF (B4H2KY = 9997 OR B4H2KY = 9998 OR B4H2KY = 9999) THEN B4H2KY = .;
   IF (B4H2LF = 97 OR B4H2LF = 98 OR B4H2LF = 99) THEN B4H2LF = .;
   IF (B4H2LY = 9997 OR B4H2LY = 9998 OR B4H2LY = 9999) THEN B4H2LY = .;
   IF (B4H2MF = 97 OR B4H2MF = 98 OR B4H2MF = 99) THEN B4H2MF = .;
   IF (B4H2MY = 9997 OR B4H2MY = 9998 OR B4H2MY = 9999) THEN B4H2MY = .;
   IF (B4H2NF = 97 OR B4H2NF = 98 OR B4H2NF = 99) THEN B4H2NF = .;
   IF (B4H2NY = 9997 OR B4H2NY = 9998 OR B4H2NY = 9999) THEN B4H2NY = .;
   IF (B4HBRKB = 97) THEN B4HBRKB = .;
   IF (B4H3 = 7 OR B4H3 = 8 OR B4H3 = 9) THEN B4H3 = .;
   IF (B4H3AL = 7 OR B4H3AL = 8 OR B4H3AL = 9) THEN B4H3AL = .;
   IF (B4H3AY = 9997 OR B4H3AY = 9998 OR B4H3AY = 9999) THEN B4H3AY = .;
   IF (B4H3BL = 7 OR B4H3BL = 8 OR B4H3BL = 9) THEN B4H3BL = .;
   IF (B4H3BY = 9997 OR B4H3BY = 9998 OR B4H3BY = 9999) THEN B4H3BY = .;
   IF (B4H3CL = 7 OR B4H3CL = 8 OR B4H3CL = 9) THEN B4H3CL = .;
   IF (B4H3CY = 9997 OR B4H3CY = 9998 OR B4H3CY = 9999) THEN B4H3CY = .;
   IF (B4H3DL = 7 OR B4H3DL = 8 OR B4H3DL = 9) THEN B4H3DL = .;
   IF (B4H3DY = 9997 OR B4H3DY = 9998 OR B4H3DY = 9999) THEN B4H3DY = .;
   IF (B4H3EL = 7 OR B4H3EL = 8 OR B4H3EL = 9) THEN B4H3EL = .;
   IF (B4H3EY = 9997 OR B4H3EY = 9998 OR B4H3EY = 9999) THEN B4H3EY = .;
   IF (B4H3FL = 7 OR B4H3FL = 8 OR B4H3FL = 9) THEN B4H3FL = .;
   IF (B4H3FY = 9997 OR B4H3FY = 9998 OR B4H3FY = 9999) THEN B4H3FY = .;
   IF (B4H3GL = 7 OR B4H3GL = 8 OR B4H3GL = 9) THEN B4H3GL = .;
   IF (B4H3GY = 9997 OR B4H3GY = 9998 OR B4H3GY = 9999) THEN B4H3GY = .;
   IF (B4H3HL = 7 OR B4H3HL = 8 OR B4H3HL = 9) THEN B4H3HL = .;
   IF (B4H3HY = 9997 OR B4H3HY = 9998 OR B4H3HY = 9999) THEN B4H3HY = .;
   IF (B4H3IL = 7 OR B4H3IL = 8 OR B4H3IL = 9) THEN B4H3IL = .;
   IF (B4H3IY = 9997 OR B4H3IY = 9998 OR B4H3IY = 9999) THEN B4H3IY = .;
   IF (B4H3JL = 7 OR B4H3JL = 8 OR B4H3JL = 9) THEN B4H3JL = .;
   IF (B4H3JY = 9997 OR B4H3JY = 9998 OR B4H3JY = 9999) THEN B4H3JY = .;
   IF (B4H4 = 7 OR B4H4 = 8 OR B4H4 = 9) THEN B4H4 = .;
   IF (B4H4AH = 7 OR B4H4AH = 8 OR B4H4AH = 9) THEN B4H4AH = .;
   IF (B4H4AY = 9997 OR B4H4AY = 9998 OR B4H4AY = 9999) THEN B4H4AY = .;
   IF (B4H4BH = 7 OR B4H4BH = 8 OR B4H4BH = 9) THEN B4H4BH = .;
   IF (B4H4BY = 9997 OR B4H4BY = 9998 OR B4H4BY = 9999) THEN B4H4BY = .;
   IF (B4H4CH = 7 OR B4H4CH = 8 OR B4H4CH = 9) THEN B4H4CH = .;
   IF (B4H4CY = 9997 OR B4H4CY = 9998 OR B4H4CY = 9999) THEN B4H4CY = .;
   IF (B4H5 = 7 OR B4H5 = 8 OR B4H5 = 9) THEN B4H5 = .;
   IF (B4H5AH = 7 OR B4H5AH = 8 OR B4H5AH = 9) THEN B4H5AH = .;
   IF (B4H5AY = 9997 OR B4H5AY = 9998 OR B4H5AY = 9999) THEN B4H5AY = .;
   IF (B4H5BH = 7 OR B4H5BH = 8 OR B4H5BH = 9) THEN B4H5BH = .;
   IF (B4H5BY = 9997 OR B4H5BY = 9998 OR B4H5BY = 9999) THEN B4H5BY = .;
   IF (B4H5CH = 7 OR B4H5CH = 8 OR B4H5CH = 9) THEN B4H5CH = .;
   IF (B4H5CY = 9997 OR B4H5CY = 9998 OR B4H5CY = 9999) THEN B4H5CY = .;
   IF (B4H6 = 7 OR B4H6 = 8 OR B4H6 = 9) THEN B4H6 = .;
   IF (B4H6AH = 7 OR B4H6AH = 8 OR B4H6AH = 9) THEN B4H6AH = .;
   IF (B4H6AY = 9997 OR B4H6AY = 9998 OR B4H6AY = 9999) THEN B4H6AY = .;
   IF (B4H6BH = 7 OR B4H6BH = 8 OR B4H6BH = 9) THEN B4H6BH = .;
   IF (B4H6BY = 9997 OR B4H6BY = 9998 OR B4H6BY = 9999) THEN B4H6BY = .;
   IF (B4H6CH = 7 OR B4H6CH = 8 OR B4H6CH = 9) THEN B4H6CH = .;
   IF (B4H6CY = 9997 OR B4H6CY = 9998 OR B4H6CY = 9999) THEN B4H6CY = .;
   IF (B4H6DH = 7 OR B4H6DH = 8) THEN B4H6DH = .;
   IF (B4H6DY = 9997 OR B4H6DY = 9998 OR B4H6DY = 9999) THEN B4H6DY = .;
   IF (B4H7 = 7 OR B4H7 = 8 OR B4H7 = 9) THEN B4H7 = .;
   IF (B4H7AH = 7 OR B4H7AH = 8 OR B4H7AH = 9) THEN B4H7AH = .;
   IF (B4H7AY = 9997 OR B4H7AY = 9998 OR B4H7AY = 9999) THEN B4H7AY = .;
   IF (B4H7BH = 7 OR B4H7BH = 8 OR B4H7BH = 9) THEN B4H7BH = .;
   IF (B4H7BY = 9997 OR B4H7BY = 9998 OR B4H7BY = 9999) THEN B4H7BY = .;
   IF (B4H8 = 7 OR B4H8 = 8 OR B4H8 = 9) THEN B4H8 = .;
   IF (B4H8AH = 7 OR B4H8AH = 8 OR B4H8AH = 9) THEN B4H8AH = .;
   IF (B4H8AY = 9997 OR B4H8AY = 9998 OR B4H8AY = 9999) THEN B4H8AY = .;
   IF (B4H8BH = 7 OR B4H8BH = 8 OR B4H8BH = 9) THEN B4H8BH = .;
   IF (B4H8BY = 9997 OR B4H8BY = 9998 OR B4H8BY = 9999) THEN B4H8BY = .;
   IF (B4H8CH = 7 OR B4H8CH = 8 OR B4H8CH = 9) THEN B4H8CH = .;
   IF (B4H8CY = 9997 OR B4H8CY = 9998 OR B4H8CY = 9999) THEN B4H8CY = .;
   IF (B4H8DH = 7 OR B4H8DH = 8 OR B4H8DH = 9) THEN B4H8DH = .;
   IF (B4H8DY = 9997 OR B4H8DY = 9998 OR B4H8DY = 9999) THEN B4H8DY = .;
   IF (B4H9 = 7 OR B4H9 = 8 OR B4H9 = 9) THEN B4H9 = .;
   IF (B4H10 = 7 OR B4H10 = 8 OR B4H10 = 9) THEN B4H10 = .;
   IF (B4H10A = 7 OR B4H10A = 8 OR B4H10A = 9) THEN B4H10A = .;
   IF (B4H10B = 7 OR B4H10B = 8 OR B4H10B = 9) THEN B4H10B = .;
   IF (B4H10C = 7 OR B4H10C = 8 OR B4H10C = 9) THEN B4H10C = .;
   IF (B4H10D = 7 OR B4H10D = 8 OR B4H10D = 9) THEN B4H10D = .;
   IF (B4H10E = 7 OR B4H10E = 8 OR B4H10E = 9) THEN B4H10E = .;
   IF (B4H10F = 7 OR B4H10F = 8 OR B4H10F = 9) THEN B4H10F = .;
   IF (B4H11A = 7 OR B4H11A = 8 OR B4H11A = 9) THEN B4H11A = .;
   IF (B4H11AI = 7 OR B4H11AI = 8 OR B4H11AI = 9) THEN B4H11AI = .;
   IF (B4H11AA = 997.0 OR B4H11AA = 998.0 OR B4H11AA = 999.0) THEN B4H11AA = .;
   IF (B4H11B = 7 OR B4H11B = 8 OR B4H11B = 9) THEN B4H11B = .;
   IF (B4H11BI = 7 OR B4H11BI = 8 OR B4H11BI = 9) THEN B4H11BI = .;
   IF (B4H11BA = 997.0 OR B4H11BA = 998.0 OR B4H11BA = 999.0) THEN B4H11BA = .;
   IF (B4H11C = 7 OR B4H11C = 8 OR B4H11C = 9) THEN B4H11C = .;
   IF (B4H11CI = 7 OR B4H11CI = 8 OR B4H11CI = 9) THEN B4H11CI = .;
   IF (B4H11CA = 997.0 OR B4H11CA = 998.0 OR B4H11CA = 999.0) THEN B4H11CA = .;
   IF (B4H11D = 7 OR B4H11D = 8 OR B4H11D = 9) THEN B4H11D = .;
   IF (B4H11DI = 7 OR B4H11DI = 8 OR B4H11DI = 9) THEN B4H11DI = .;
   IF (B4H11DA = 997.0 OR B4H11DA = 998.0 OR B4H11DA = 999.0) THEN B4H11DA = .;
   IF (B4H11E = 7 OR B4H11E = 8 OR B4H11E = 9) THEN B4H11E = .;
   IF (B4H12A = 7 OR B4H12A = 8 OR B4H12A = 9) THEN B4H12A = .;
   IF (B4H12AM = 97 OR B4H12AM = 98 OR B4H12AM = 99) THEN B4H12AM = .;
   IF (B4H12AY = 9997 OR B4H12AY = 9998 OR B4H12AY = 9999) THEN B4H12AY = .;
   IF (B4H12B = 7 OR B4H12B = 8 OR B4H12B = 9) THEN B4H12B = .;
   IF (B4H12BM = 97 OR B4H12BM = 98 OR B4H12BM = 99) THEN B4H12BM = .;
   IF (B4H12BY = 9997 OR B4H12BY = 9998 OR B4H12BY = 9999) THEN B4H12BY = .;
   IF (B4H12C = 7 OR B4H12C = 8 OR B4H12C = 9) THEN B4H12C = .;
   IF (B4H12CM = 97 OR B4H12CM = 98 OR B4H12CM = 99) THEN B4H12CM = .;
   IF (B4H12CY = 9997 OR B4H12CY = 9998 OR B4H12CY = 9999) THEN B4H12CY = .;
   IF (B4H13 = 97 OR B4H13 = 98 OR B4H13 = 99) THEN B4H13 = .;
   IF (B4H14 = 7 OR B4H14 = 8 OR B4H14 = 9) THEN B4H14 = .;
   IF (B4H14A = 7 OR B4H14A = 8 OR B4H14A = 9) THEN B4H14A = .;
   IF (B4H15A = 7 OR B4H15A = 8 OR B4H15A = 9) THEN B4H15A = .;
   IF (B4H15A1 = 7 OR B4H15A1 = 8 OR B4H15A1 = 9) THEN B4H15A1 = .;
   IF (B4H15A2 = 7 OR B4H15A2 = 8 OR B4H15A2 = 9) THEN B4H15A2 = .;
   IF (B4H15A3 = 7 OR B4H15A3 = 8 OR B4H15A3 = 9) THEN B4H15A3 = .;
   IF (B4H15A4 = 7 OR B4H15A4 = 8 OR B4H15A4 = 9) THEN B4H15A4 = .;
   IF (B4H15A5 = 7 OR B4H15A5 = 8 OR B4H15A5 = 9) THEN B4H15A5 = .;
   IF (B4H15A6 = 7 OR B4H15A6 = 8 OR B4H15A6 = 9) THEN B4H15A6 = .;
   IF (B4H15A7 = 7 OR B4H15A7 = 8 OR B4H15A7 = 9) THEN B4H15A7 = .;
   IF (B4H15B = 7 OR B4H15B = 8 OR B4H15B = 9) THEN B4H15B = .;
   IF (B4H15B1 = 7 OR B4H15B1 = 8 OR B4H15B1 = 9) THEN B4H15B1 = .;
   IF (B4H15B2 = 7 OR B4H15B2 = 8 OR B4H15B2 = 9) THEN B4H15B2 = .;
   IF (B4H15B3 = 7 OR B4H15B3 = 8 OR B4H15B3 = 9) THEN B4H15B3 = .;
   IF (B4H15B4 = 7 OR B4H15B4 = 8 OR B4H15B4 = 9) THEN B4H15B4 = .;
   IF (B4H15B5 = 7 OR B4H15B5 = 8 OR B4H15B5 = 9) THEN B4H15B5 = .;
   IF (B4H15B6 = 7 OR B4H15B6 = 8 OR B4H15B6 = 9) THEN B4H15B6 = .;
   IF (B4H15B7 = 7 OR B4H15B7 = 8 OR B4H15B7 = 9) THEN B4H15B7 = .;
   IF (B4H15C = 7 OR B4H15C = 8 OR B4H15C = 9) THEN B4H15C = .;
   IF (B4H15C1 = 7 OR B4H15C1 = 8 OR B4H15C1 = 9) THEN B4H15C1 = .;
   IF (B4H15C2 = 7 OR B4H15C2 = 8 OR B4H15C2 = 9) THEN B4H15C2 = .;
   IF (B4H15C3 = 7 OR B4H15C3 = 8 OR B4H15C3 = 9) THEN B4H15C3 = .;
   IF (B4H15C4 = 7 OR B4H15C4 = 8 OR B4H15C4 = 9) THEN B4H15C4 = .;
   IF (B4H15C5 = 7 OR B4H15C5 = 8 OR B4H15C5 = 9) THEN B4H15C5 = .;
   IF (B4H15C6 = 7 OR B4H15C6 = 8 OR B4H15C6 = 9) THEN B4H15C6 = .;
   IF (B4H15C7 = 7 OR B4H15C7 = 8 OR B4H15C7 = 9) THEN B4H15C7 = .;
   IF (B4H15D = 7 OR B4H15D = 8 OR B4H15D = 9) THEN B4H15D = .;
   IF (B4H15D1 = 7 OR B4H15D1 = 8 OR B4H15D1 = 9) THEN B4H15D1 = .;
   IF (B4H15D2 = 7 OR B4H15D2 = 8 OR B4H15D2 = 9) THEN B4H15D2 = .;
   IF (B4H15D3 = 7 OR B4H15D3 = 8 OR B4H15D3 = 9) THEN B4H15D3 = .;
   IF (B4H15D4 = 7 OR B4H15D4 = 8 OR B4H15D4 = 9) THEN B4H15D4 = .;
   IF (B4H15D5 = 7 OR B4H15D5 = 8 OR B4H15D5 = 9) THEN B4H15D5 = .;
   IF (B4H15D6 = 7 OR B4H15D6 = 8 OR B4H15D6 = 9) THEN B4H15D6 = .;
   IF (B4H15D7 = 7 OR B4H15D7 = 8 OR B4H15D7 = 9) THEN B4H15D7 = .;
   IF (B4H15E = 7 OR B4H15E = 8 OR B4H15E = 9) THEN B4H15E = .;
   IF (B4H15E1 = 7 OR B4H15E1 = 8 OR B4H15E1 = 9) THEN B4H15E1 = .;
   IF (B4H15E2 = 7 OR B4H15E2 = 8 OR B4H15E2 = 9) THEN B4H15E2 = .;
   IF (B4H15E3 = 7 OR B4H15E3 = 8 OR B4H15E3 = 9) THEN B4H15E3 = .;
   IF (B4H15E4 = 7 OR B4H15E4 = 8 OR B4H15E4 = 9) THEN B4H15E4 = .;
   IF (B4H15E5 = 7 OR B4H15E5 = 8 OR B4H15E5 = 9) THEN B4H15E5 = .;
   IF (B4H15E6 = 7 OR B4H15E6 = 8 OR B4H15E6 = 9) THEN B4H15E6 = .;
   IF (B4H15E7 = 7 OR B4H15E7 = 8 OR B4H15E7 = 9) THEN B4H15E7 = .;
   IF (B4H15F = 7 OR B4H15F = 8 OR B4H15F = 9) THEN B4H15F = .;
   IF (B4H15F1 = 7 OR B4H15F1 = 8 OR B4H15F1 = 9) THEN B4H15F1 = .;
   IF (B4H15F2 = 7 OR B4H15F2 = 8 OR B4H15F2 = 9) THEN B4H15F2 = .;
   IF (B4H15F3 = 7 OR B4H15F3 = 8 OR B4H15F3 = 9) THEN B4H15F3 = .;
   IF (B4H15F4 = 7 OR B4H15F4 = 8 OR B4H15F4 = 9) THEN B4H15F4 = .;
   IF (B4H15F5 = 7 OR B4H15F5 = 8 OR B4H15F5 = 9) THEN B4H15F5 = .;
   IF (B4H15F6 = 7 OR B4H15F6 = 8 OR B4H15F6 = 9) THEN B4H15F6 = .;
   IF (B4H15F7 = 7 OR B4H15F7 = 8 OR B4H15F7 = 9) THEN B4H15F7 = .;
   IF (B4H15G = 7 OR B4H15G = 8 OR B4H15G = 9) THEN B4H15G = .;
   IF (B4H15G1 = 7 OR B4H15G1 = 8 OR B4H15G1 = 9) THEN B4H15G1 = .;
   IF (B4H15G2 = 7 OR B4H15G2 = 8 OR B4H15G2 = 9) THEN B4H15G2 = .;
   IF (B4H15G3 = 7 OR B4H15G3 = 8 OR B4H15G3 = 9) THEN B4H15G3 = .;
   IF (B4H15G4 = 7 OR B4H15G4 = 8 OR B4H15G4 = 9) THEN B4H15G4 = .;
   IF (B4H15G5 = 7 OR B4H15G5 = 8 OR B4H15G5 = 9) THEN B4H15G5 = .;
   IF (B4H15G6 = 7 OR B4H15G6 = 8 OR B4H15G6 = 9) THEN B4H15G6 = .;
   IF (B4H15G7 = 7 OR B4H15G7 = 8 OR B4H15G7 = 9) THEN B4H15G7 = .;
   IF (B4H15H = 7 OR B4H15H = 8 OR B4H15H = 9) THEN B4H15H = .;
   IF (B4H15H1 = 7 OR B4H15H1 = 8 OR B4H15H1 = 9) THEN B4H15H1 = .;
   IF (B4H15H2 = 7 OR B4H15H2 = 8 OR B4H15H2 = 9) THEN B4H15H2 = .;
   IF (B4H15H3 = 7 OR B4H15H3 = 8 OR B4H15H3 = 9) THEN B4H15H3 = .;
   IF (B4H15H4 = 7 OR B4H15H4 = 8 OR B4H15H4 = 9) THEN B4H15H4 = .;
   IF (B4H15H5 = 7 OR B4H15H5 = 8 OR B4H15H5 = 9) THEN B4H15H5 = .;
   IF (B4H15H6 = 7 OR B4H15H6 = 8 OR B4H15H6 = 9) THEN B4H15H6 = .;
   IF (B4H15H7 = 7 OR B4H15H7 = 8 OR B4H15H7 = 9) THEN B4H15H7 = .;
   IF (B4H15I = 7 OR B4H15I = 8 OR B4H15I = 9) THEN B4H15I = .;
   IF (B4H15I1 = 7 OR B4H15I1 = 8 OR B4H15I1 = 9) THEN B4H15I1 = .;
   IF (B4H15I2 = 7 OR B4H15I2 = 8 OR B4H15I2 = 9) THEN B4H15I2 = .;
   IF (B4H15I3 = 7 OR B4H15I3 = 8 OR B4H15I3 = 9) THEN B4H15I3 = .;
   IF (B4H15I4 = 7 OR B4H15I4 = 8 OR B4H15I4 = 9) THEN B4H15I4 = .;
   IF (B4H15I5 = 7 OR B4H15I5 = 8 OR B4H15I5 = 9) THEN B4H15I5 = .;
   IF (B4H15I6 = 7 OR B4H15I6 = 8 OR B4H15I6 = 9) THEN B4H15I6 = .;
   IF (B4H15I7 = 7 OR B4H15I7 = 8 OR B4H15I7 = 9) THEN B4H15I7 = .;
   IF (B4H15J = 7 OR B4H15J = 8 OR B4H15J = 9) THEN B4H15J = .;
   IF (B4H15J1 = 7 OR B4H15J1 = 8 OR B4H15J1 = 9) THEN B4H15J1 = .;
   IF (B4H15J2 = 7 OR B4H15J2 = 8 OR B4H15J2 = 9) THEN B4H15J2 = .;
   IF (B4H15J3 = 7 OR B4H15J3 = 8 OR B4H15J3 = 9) THEN B4H15J3 = .;
   IF (B4H15J4 = 7 OR B4H15J4 = 8 OR B4H15J4 = 9) THEN B4H15J4 = .;
   IF (B4H15J5 = 7 OR B4H15J5 = 8 OR B4H15J5 = 9) THEN B4H15J5 = .;
   IF (B4H15J6 = 7 OR B4H15J6 = 8 OR B4H15J6 = 9) THEN B4H15J6 = .;
   IF (B4H15J7 = 7 OR B4H15J7 = 8 OR B4H15J7 = 9) THEN B4H15J7 = .;
   IF (B4H15K = 7 OR B4H15K = 8 OR B4H15K = 9) THEN B4H15K = .;
   IF (B4H15K1 = 7 OR B4H15K1 = 8 OR B4H15K1 = 9) THEN B4H15K1 = .;
   IF (B4H15K2 = 7 OR B4H15K2 = 8 OR B4H15K2 = 9) THEN B4H15K2 = .;
   IF (B4H15K3 = 7 OR B4H15K3 = 8 OR B4H15K3 = 9) THEN B4H15K3 = .;
   IF (B4H15K4 = 7 OR B4H15K4 = 8 OR B4H15K4 = 9) THEN B4H15K4 = .;
   IF (B4H15K5 = 7 OR B4H15K5 = 8 OR B4H15K5 = 9) THEN B4H15K5 = .;
   IF (B4H15K6 = 7 OR B4H15K6 = 8 OR B4H15K6 = 9) THEN B4H15K6 = .;
   IF (B4H15K7 = 7 OR B4H15K7 = 8 OR B4H15K7 = 9) THEN B4H15K7 = .;
   IF (B4H15L = 7 OR B4H15L = 8 OR B4H15L = 9) THEN B4H15L = .;
   IF (B4H15L1 = 7 OR B4H15L1 = 8 OR B4H15L1 = 9) THEN B4H15L1 = .;
   IF (B4H15L2 = 7 OR B4H15L2 = 8 OR B4H15L2 = 9) THEN B4H15L2 = .;
   IF (B4H15L3 = 7 OR B4H15L3 = 8 OR B4H15L3 = 9) THEN B4H15L3 = .;
   IF (B4H15L4 = 7 OR B4H15L4 = 8 OR B4H15L4 = 9) THEN B4H15L4 = .;
   IF (B4H15L5 = 7 OR B4H15L5 = 8 OR B4H15L5 = 9) THEN B4H15L5 = .;
   IF (B4H15L6 = 7 OR B4H15L6 = 8 OR B4H15L6 = 9) THEN B4H15L6 = .;
   IF (B4H15L7 = 7 OR B4H15L7 = 8 OR B4H15L7 = 9) THEN B4H15L7 = .;
   IF (B4H15M = 7 OR B4H15M = 8 OR B4H15M = 9) THEN B4H15M = .;
   IF (B4H15M1 = 7 OR B4H15M1 = 8 OR B4H15M1 = 9) THEN B4H15M1 = .;
   IF (B4H15M2 = 7 OR B4H15M2 = 8 OR B4H15M2 = 9) THEN B4H15M2 = .;
   IF (B4H15M3 = 7 OR B4H15M3 = 8 OR B4H15M3 = 9) THEN B4H15M3 = .;
   IF (B4H15M4 = 7 OR B4H15M4 = 8 OR B4H15M4 = 9) THEN B4H15M4 = .;
   IF (B4H15M5 = 7 OR B4H15M5 = 8 OR B4H15M5 = 9) THEN B4H15M5 = .;
   IF (B4H15M6 = 7 OR B4H15M6 = 8 OR B4H15M6 = 9) THEN B4H15M6 = .;
   IF (B4H15M7 = 7 OR B4H15M7 = 8 OR B4H15M7 = 9) THEN B4H15M7 = .;
   IF (B4H15N = 7 OR B4H15N = 8 OR B4H15N = 9) THEN B4H15N = .;
   IF (B4H15N1 = 7 OR B4H15N1 = 8 OR B4H15N1 = 9) THEN B4H15N1 = .;
   IF (B4H15N2 = 7 OR B4H15N2 = 8 OR B4H15N2 = 9) THEN B4H15N2 = .;
   IF (B4H15N3 = 7 OR B4H15N3 = 8 OR B4H15N3 = 9) THEN B4H15N3 = .;
   IF (B4H15N4 = 7 OR B4H15N4 = 8 OR B4H15N4 = 9) THEN B4H15N4 = .;
   IF (B4H15N5 = 7 OR B4H15N5 = 8 OR B4H15N5 = 9) THEN B4H15N5 = .;
   IF (B4H15N6 = 7 OR B4H15N6 = 8 OR B4H15N6 = 9) THEN B4H15N6 = .;
   IF (B4H15N7 = 7 OR B4H15N7 = 8 OR B4H15N7 = 9) THEN B4H15N7 = .;
   IF (B4H15O = 7 OR B4H15O = 8 OR B4H15O = 9) THEN B4H15O = .;
   IF (B4H15O1 = 7 OR B4H15O1 = 8 OR B4H15O1 = 9) THEN B4H15O1 = .;
   IF (B4H15O2 = 7 OR B4H15O2 = 8 OR B4H15O2 = 9) THEN B4H15O2 = .;
   IF (B4H15O3 = 7 OR B4H15O3 = 8 OR B4H15O3 = 9) THEN B4H15O3 = .;
   IF (B4H15O4 = 7 OR B4H15O4 = 8 OR B4H15O4 = 9) THEN B4H15O4 = .;
   IF (B4H15O5 = 7 OR B4H15O5 = 8 OR B4H15O5 = 9) THEN B4H15O5 = .;
   IF (B4H15O6 = 7 OR B4H15O6 = 8 OR B4H15O6 = 9) THEN B4H15O6 = .;
   IF (B4H15O7 = 7 OR B4H15O7 = 8 OR B4H15O7 = 9) THEN B4H15O7 = .;
   IF (B4H15P = 7 OR B4H15P = 8 OR B4H15P = 9) THEN B4H15P = .;
   IF (B4H15P1 = 7 OR B4H15P1 = 8 OR B4H15P1 = 9) THEN B4H15P1 = .;
   IF (B4H15P2 = 7 OR B4H15P2 = 8 OR B4H15P2 = 9) THEN B4H15P2 = .;
   IF (B4H15P3 = 7 OR B4H15P3 = 8 OR B4H15P3 = 9) THEN B4H15P3 = .;
   IF (B4H15P4 = 7 OR B4H15P4 = 8 OR B4H15P4 = 9) THEN B4H15P4 = .;
   IF (B4H15P5 = 7 OR B4H15P5 = 8 OR B4H15P5 = 9) THEN B4H15P5 = .;
   IF (B4H15P6 = 7 OR B4H15P6 = 8 OR B4H15P6 = 9) THEN B4H15P6 = .;
   IF (B4H15P7 = 7 OR B4H15P7 = 8 OR B4H15P7 = 9) THEN B4H15P7 = .;
   IF (B4H15Q = 7 OR B4H15Q = 8 OR B4H15Q = 9) THEN B4H15Q = .;
   IF (B4H15Q1 = 7 OR B4H15Q1 = 8 OR B4H15Q1 = 9) THEN B4H15Q1 = .;
   IF (B4H15Q2 = 7 OR B4H15Q2 = 8 OR B4H15Q2 = 9) THEN B4H15Q2 = .;
   IF (B4H15Q3 = 7 OR B4H15Q3 = 8 OR B4H15Q3 = 9) THEN B4H15Q3 = .;
   IF (B4H15Q4 = 7 OR B4H15Q4 = 8 OR B4H15Q4 = 9) THEN B4H15Q4 = .;
   IF (B4H15Q5 = 7 OR B4H15Q5 = 8 OR B4H15Q5 = 9) THEN B4H15Q5 = .;
   IF (B4H15Q6 = 7 OR B4H15Q6 = 8 OR B4H15Q6 = 9) THEN B4H15Q6 = .;
   IF (B4H15Q7 = 7 OR B4H15Q7 = 8 OR B4H15Q7 = 9) THEN B4H15Q7 = .;
   IF (B4H15R = 7 OR B4H15R = 8 OR B4H15R = 9) THEN B4H15R = .;
   IF (B4H15R1 = 7 OR B4H15R1 = 8 OR B4H15R1 = 9) THEN B4H15R1 = .;
   IF (B4H15R2 = 7 OR B4H15R2 = 8 OR B4H15R2 = 9) THEN B4H15R2 = .;
   IF (B4H15R3 = 7 OR B4H15R3 = 8 OR B4H15R3 = 9) THEN B4H15R3 = .;
   IF (B4H15R4 = 7 OR B4H15R4 = 8 OR B4H15R4 = 9) THEN B4H15R4 = .;
   IF (B4H15R5 = 7 OR B4H15R5 = 8 OR B4H15R5 = 9) THEN B4H15R5 = .;
   IF (B4H15R6 = 7 OR B4H15R6 = 8 OR B4H15R6 = 9) THEN B4H15R6 = .;
   IF (B4H15R7 = 7 OR B4H15R7 = 8 OR B4H15R7 = 9) THEN B4H15R7 = .;
   IF (B4H15S = 7 OR B4H15S = 8 OR B4H15S = 9) THEN B4H15S = .;
   IF (B4H15S1 = 7 OR B4H15S1 = 8 OR B4H15S1 = 9) THEN B4H15S1 = .;
   IF (B4H15S2 = 7 OR B4H15S2 = 8 OR B4H15S2 = 9) THEN B4H15S2 = .;
   IF (B4H15S3 = 7 OR B4H15S3 = 8 OR B4H15S3 = 9) THEN B4H15S3 = .;
   IF (B4H15S4 = 7 OR B4H15S4 = 8 OR B4H15S4 = 9) THEN B4H15S4 = .;
   IF (B4H15S5 = 7 OR B4H15S5 = 8 OR B4H15S5 = 9) THEN B4H15S5 = .;
   IF (B4H15S6 = 7 OR B4H15S6 = 8 OR B4H15S6 = 9) THEN B4H15S6 = .;
   IF (B4H15S7 = 7 OR B4H15S7 = 8 OR B4H15S7 = 9) THEN B4H15S7 = .;
   IF (B4H15OTH = 97 OR B4H15OTH = 98 OR B4H15OTH = 99) THEN B4H15OTH = .;
   IF (B4HFMHN = 99) THEN B4HFMHN = .;
   IF (B4HFMHX = 9) THEN B4HFMHX = .;
   IF (B4H16 = 7 OR B4H16 = 8 OR B4H16 = 9) THEN B4H16 = .;
   IF (B4H17AF = 9997.0 OR B4H17AF = 9998.0 OR B4H17AF = 9999.0) THEN B4H17AF = .;
   IF (B4H17AT = 7 OR B4H17AT = 8 OR B4H17AT = 9) THEN B4H17AT = .;
   IF (B4H17BF = 9997.0 OR B4H17BF = 9998.0 OR B4H17BF = 9999.0) THEN B4H17BF = .;
   IF (B4H17BT = 7 OR B4H17BT = 8 OR B4H17BT = 9) THEN B4H17BT = .;
   IF (B4H17CF = 9997.0 OR B4H17CF = 9998.0 OR B4H17CF = 9999.0) THEN B4H17CF = .;
   IF (B4H17CT = 7 OR B4H17CT = 8 OR B4H17CT = 9) THEN B4H17CT = .;
   IF (B4H18AF = 9997.0 OR B4H18AF = 9998.0 OR B4H18AF = 9999.0) THEN B4H18AF = .;
   IF (B4H18AT = 7 OR B4H18AT = 8 OR B4H18AT = 9) THEN B4H18AT = .;
   IF (B4H18BF = 9997.0 OR B4H18BF = 9998.0 OR B4H18BF = 9999.0) THEN B4H18BF = .;
   IF (B4H18BT = 7 OR B4H18BT = 8 OR B4H18BT = 9) THEN B4H18BT = .;
   IF (B4H18CF = 9997.0 OR B4H18CF = 9998.0 OR B4H18CF = 9999.0) THEN B4H18CF = .;
   IF (B4H18CT = 7 OR B4H18CT = 8 OR B4H18CT = 9) THEN B4H18CT = .;
   IF (B4H19 = 7 OR B4H19 = 8 OR B4H19 = 9) THEN B4H19 = .;
   IF (B4H20 = 7 OR B4H20 = 8 OR B4H20 = 9) THEN B4H20 = .;
   IF (B4H21 = 7 OR B4H21 = 8 OR B4H21 = 9) THEN B4H21 = .;
   IF (B4H22 = 7 OR B4H22 = 8 OR B4H22 = 9) THEN B4H22 = .;
   IF (B4H23A = 7 OR B4H23A = 8 OR B4H23A = 9) THEN B4H23A = .;
   IF (B4H23B = 7 OR B4H23B = 8 OR B4H23B = 9) THEN B4H23B = .;
   IF (B4H23C = 7 OR B4H23C = 8 OR B4H23C = 9) THEN B4H23C = .;
   IF (B4H23D = 7 OR B4H23D = 8 OR B4H23D = 9) THEN B4H23D = .;
   IF (B4H24 = 7 OR B4H24 = 8 OR B4H24 = 9) THEN B4H24 = .;
   IF (B4H25 = 7 OR B4H25 = 8 OR B4H25 = 9) THEN B4H25 = .;
   IF (B4H25AS = 97 OR B4H25AS = 98 OR B4H25AS = 99) THEN B4H25AS = .;
   IF (B4H25AFD = 97 OR B4H25AFD = 98 OR B4H25AFD = 99) THEN B4H25AFD = .;
   IF (B4H25AFW = 97 OR B4H25AFW = 98 OR B4H25AFW = 99) THEN B4H25AFW = .;
   IF (B4H25AM = 9997.0 OR B4H25AM = 9998.0 OR B4H25AM = 9999.0) THEN B4H25AM = .;
   IF (B4H25AI = 7 OR B4H25AI = 8 OR B4H25AI = 9) THEN B4H25AI = .;
   IF (B4H25BS = 97 OR B4H25BS = 98 OR B4H25BS = 99) THEN B4H25BS = .;
   IF (B4H25BFD = 97 OR B4H25BFD = 98 OR B4H25BFD = 99) THEN B4H25BFD = .;
   IF (B4H25BFW = 97 OR B4H25BFW = 98 OR B4H25BFW = 99) THEN B4H25BFW = .;
   IF (B4H25BM = 9997.0 OR B4H25BM = 9998.0 OR B4H25BM = 9999.0) THEN B4H25BM = .;
   IF (B4H25BI = 7 OR B4H25BI = 8 OR B4H25BI = 9) THEN B4H25BI = .;
   IF (B4H25CS = 97 OR B4H25CS = 98 OR B4H25CS = 99) THEN B4H25CS = .;
   IF (B4H25CFD = 97 OR B4H25CFD = 98 OR B4H25CFD = 99) THEN B4H25CFD = .;
   IF (B4H25CFW = 97 OR B4H25CFW = 98 OR B4H25CFW = 99) THEN B4H25CFW = .;
   IF (B4H25CM = 9997.0 OR B4H25CM = 9998.0 OR B4H25CM = 9999.0) THEN B4H25CM = .;
   IF (B4H25CI = 7 OR B4H25CI = 8 OR B4H25CI = 9) THEN B4H25CI = .;
   IF (B4H25DS = 97 OR B4H25DS = 98 OR B4H25DS = 99) THEN B4H25DS = .;
   IF (B4H25DFD = 97 OR B4H25DFD = 98 OR B4H25DFD = 99) THEN B4H25DFD = .;
   IF (B4H25DFW = 97 OR B4H25DFW = 98 OR B4H25DFW = 99) THEN B4H25DFW = .;
   IF (B4H25DM = 9997.0 OR B4H25DM = 9998.0 OR B4H25DM = 9999.0) THEN B4H25DM = .;
   IF (B4H25DI = 7 OR B4H25DI = 8 OR B4H25DI = 9) THEN B4H25DI = .;
   IF (B4H25ES = 97 OR B4H25ES = 98 OR B4H25ES = 99) THEN B4H25ES = .;
   IF (B4H25EFD = 97 OR B4H25EFD = 98 OR B4H25EFD = 99) THEN B4H25EFD = .;
   IF (B4H25EFW = 97 OR B4H25EFW = 98 OR B4H25EFW = 99) THEN B4H25EFW = .;
   IF (B4H25EM = 9997.0 OR B4H25EM = 9998.0 OR B4H25EM = 9999.0) THEN B4H25EM = .;
   IF (B4H25EI = 7 OR B4H25EI = 8 OR B4H25EI = 9) THEN B4H25EI = .;
   IF (B4H25FS = 97 OR B4H25FS = 98 OR B4H25FS = 99) THEN B4H25FS = .;
   IF (B4H25FFD = 97 OR B4H25FFD = 98 OR B4H25FFD = 99) THEN B4H25FFD = .;
   IF (B4H25FFW = 97 OR B4H25FFW = 98 OR B4H25FFW = 99) THEN B4H25FFW = .;
   IF (B4H25FM = 9997.0 OR B4H25FM = 9998.0 OR B4H25FM = 9999.0) THEN B4H25FM = .;
   IF (B4H25FI = 7 OR B4H25FI = 8 OR B4H25FI = 9) THEN B4H25FI = .;
   IF (B4H25GS = 97 OR B4H25GS = 98 OR B4H25GS = 99) THEN B4H25GS = .;
   IF (B4H25GFD = 97 OR B4H25GFD = 98 OR B4H25GFD = 99) THEN B4H25GFD = .;
   IF (B4H25GFW = 97 OR B4H25GFW = 98 OR B4H25GFW = 99) THEN B4H25GFW = .;
   IF (B4H25GM = 9997.0 OR B4H25GM = 9998.0 OR B4H25GM = 9999.0) THEN B4H25GM = .;
   IF (B4H25GI = 7 OR B4H25GI = 8 OR B4H25GI = 9) THEN B4H25GI = .;
   IF (B4H26 = 7 OR B4H26 = 8 OR B4H26 = 9) THEN B4H26 = .;
   IF (B4H26A = 7 OR B4H26A = 8 OR B4H26A = 9) THEN B4H26A = .;
   IF (B4H27 = 7 OR B4H27 = 8 OR B4H27 = 9) THEN B4H27 = .;
   IF (B4H28 = 97 OR B4H28 = 98 OR B4H28 = 99) THEN B4H28 = .;
   IF (B4H29 = 7 OR B4H29 = 8 OR B4H29 = 9) THEN B4H29 = .;
   IF (B4H30 = 7 OR B4H30 = 8 OR B4H30 = 9) THEN B4H30 = .;
   IF (B4H31 = 7 OR B4H31 = 8 OR B4H31 = 9) THEN B4H31 = .;
   IF (B4H32 = 7 OR B4H32 = 8 OR B4H32 = 9) THEN B4H32 = .;
   IF (B4H33 = 7 OR B4H33 = 8 OR B4H33 = 9) THEN B4H33 = .;
   IF (B4H34 = 7 OR B4H34 = 8 OR B4H34 = 9) THEN B4H34 = .;
   IF (B4H35 = 7 OR B4H35 = 8 OR B4H35 = 9) THEN B4H35 = .;
   IF (B4H36 = 9997.0 OR B4H36 = 9998.0 OR B4H36 = 9999.0) THEN B4H36 = .;
   IF (B4H37 = 97 OR B4H37 = 98 OR B4H37 = 99) THEN B4H37 = .;
   IF (B4H38 = 7 OR B4H38 = 8 OR B4H38 = 9) THEN B4H38 = .;
   IF (B4H39 = 7 OR B4H39 = 8 OR B4H39 = 9) THEN B4H39 = .;
   IF (B4H40 = 9997.0 OR B4H40 = 9998.0 OR B4H40 = 9999.0) THEN B4H40 = .;
   IF (B4H41 = 97 OR B4H41 = 98 OR B4H41 = 99) THEN B4H41 = .;
   IF (B4H42 = 9997.0 OR B4H42 = 9998.0 OR B4H42 = 9999.0) THEN B4H42 = .;
   IF (B4H43A = 7 OR B4H43A = 8 OR B4H43A = 9) THEN B4H43A = .;
   IF (B4H43BM = 97 OR B4H43BM = 98 OR B4H43BM = 99) THEN B4H43BM = .;
   IF (B4H43BY = 9997 OR B4H43BY = 9998 OR B4H43BY = 9999) THEN B4H43BY = .;
   IF (B4H44A = 7 OR B4H44A = 8 OR B4H44A = 9) THEN B4H44A = .;
   IF (B4H44CM = 97 OR B4H44CM = 98 OR B4H44CM = 99) THEN B4H44CM = .;
   IF (B4H44CY = 9997 OR B4H44CY = 9998 OR B4H44CY = 9999) THEN B4H44CY = .;
   IF (B4H44D = 7 OR B4H44D = 8 OR B4H44D = 9) THEN B4H44D = .;
   IF (B4H45A = 7 OR B4H45A = 8 OR B4H45A = 9) THEN B4H45A = .;
   IF (B4H45AM = 97 OR B4H45AM = 98 OR B4H45AM = 99) THEN B4H45AM = .;
   IF (B4H45AY = 9997 OR B4H45AY = 9998 OR B4H45AY = 9999) THEN B4H45AY = .;
   IF (B4H45B = 7 OR B4H45B = 8 OR B4H45B = 9) THEN B4H45B = .;
   IF (B4H45BM = 97 OR B4H45BM = 98 OR B4H45BM = 99) THEN B4H45BM = .;
   IF (B4H45BY = 9997 OR B4H45BY = 9998 OR B4H45BY = 9999) THEN B4H45BY = .;
   IF (B4H45BRC = 8 OR B4H45BRC = 9) THEN B4H45BRC = .;
   IF (B4H45C = 7 OR B4H45C = 8 OR B4H45C = 9) THEN B4H45C = .;
   IF (B4H45CM = 97 OR B4H45CM = 98 OR B4H45CM = 99) THEN B4H45CM = .;
   IF (B4H45CY = 9997 OR B4H45CY = 9998 OR B4H45CY = 9999) THEN B4H45CY = .;
   IF (B4H45CRC = 8 OR B4H45CRC = 9) THEN B4H45CRC = .;
   IF (B4H45D = 7 OR B4H45D = 8 OR B4H45D = 9) THEN B4H45D = .;
   IF (B4H45DM = 97 OR B4H45DM = 98 OR B4H45DM = 99) THEN B4H45DM = .;
   IF (B4H45DY = 9997 OR B4H45DY = 9998 OR B4H45DY = 9999) THEN B4H45DY = .;
   IF (B4H45DRC = 8 OR B4H45DRC = 9) THEN B4H45DRC = .;
   IF (B4H45E = 7 OR B4H45E = 8 OR B4H45E = 9) THEN B4H45E = .;
   IF (B4H45F = 7 OR B4H45F = 8 OR B4H45F = 9) THEN B4H45F = .;
   IF (B4H45FM = 97 OR B4H45FM = 98 OR B4H45FM = 99) THEN B4H45FM = .;
   IF (B4H45FY = 9997 OR B4H45FY = 9998 OR B4H45FY = 9999) THEN B4H45FY = .;
   IF (B4H45FRC = 8 OR B4H45FRC = 9) THEN B4H45FRC = .;
   IF (B4H45G = 7 OR B4H45G = 8 OR B4H45G = 9) THEN B4H45G = .;
   IF (B4H45GM = 97 OR B4H45GM = 98 OR B4H45GM = 99) THEN B4H45GM = .;
   IF (B4H45GY = 9997 OR B4H45GY = 9998 OR B4H45GY = 9999) THEN B4H45GY = .;
   IF (B4H45GRC = 8 OR B4H45GRC = 9) THEN B4H45GRC = .;
   IF (B4H45H = 7 OR B4H45H = 8 OR B4H45H = 9) THEN B4H45H = .;
   IF (B4H45HM = 97 OR B4H45HM = 98 OR B4H45HM = 99) THEN B4H45HM = .;
   IF (B4H45HY = 9997 OR B4H45HY = 9998 OR B4H45HY = 9999) THEN B4H45HY = .;
   IF (B4H45HRC = 8 OR B4H45HRC = 9) THEN B4H45HRC = .;
   IF (B4H46 = 7 OR B4H46 = 8 OR B4H46 = 9) THEN B4H46 = .;
   IF (B4H46C = 7 OR B4H46C = 8 OR B4H46C = 9) THEN B4H46C = .;
   IF (B4H46D = 9997.00 OR B4H46D = 9998.00 OR B4H46D = 9999.00) THEN B4H46D = .;
   IF (B4H47 = 7 OR B4H47 = 8 OR B4H47 = 9) THEN B4H47 = .;
   IF (B4H48 = 7 OR B4H48 = 8 OR B4H48 = 9) THEN B4H48 = .;
   IF (B4H48A = 7 OR B4H48A = 8 OR B4H48A = 9) THEN B4H48A = .;
   IF (B4H49 = 7 OR B4H49 = 8 OR B4H49 = 9) THEN B4H49 = .;
   IF (B4H50 = 7 OR B4H50 = 8 OR B4H50 = 9) THEN B4H50 = .;
   IF (B4H54M = 97 OR B4H54M = 98 OR B4H54M = 99) THEN B4H54M = .;
   IF (B4H54Y = 9998 OR B4H54Y = 9999) THEN B4H54Y = .;
   IF (B4H55 = 7 OR B4H55 = 8 OR B4H55 = 9) THEN B4H55 = .;
   IF (B4H56 = 7 OR B4H56 = 8 OR B4H56 = 9) THEN B4H56 = .;
   IF (B4H56AG = 7 OR B4H56AG = 8 OR B4H56AG = 9) THEN B4H56AG = .;
   IF (B4H56AM = 97 OR B4H56AM = 98 OR B4H56AM = 99) THEN B4H56AM = .;
   IF (B4H56AY = 9997 OR B4H56AY = 9998 OR B4H56AY = 9999) THEN B4H56AY = .;
   IF (B4H56BG = 7 OR B4H56BG = 8 OR B4H56BG = 9) THEN B4H56BG = .;
   IF (B4H56BM = 97 OR B4H56BM = 98 OR B4H56BM = 99) THEN B4H56BM = .;
   IF (B4H56BY = 9997 OR B4H56BY = 9998 OR B4H56BY = 9999) THEN B4H56BY = .;
   IF (B4H56CG = 7 OR B4H56CG = 8 OR B4H56CG = 9) THEN B4H56CG = .;
   IF (B4H56CM = 97 OR B4H56CM = 98 OR B4H56CM = 99) THEN B4H56CM = .;
   IF (B4H56CY = 9997 OR B4H56CY = 9998 OR B4H56CY = 9999) THEN B4H56CY = .;
   IF (B4H56DG = 7 OR B4H56DG = 8 OR B4H56DG = 9) THEN B4H56DG = .;
   IF (B4H56DM = 97 OR B4H56DM = 98 OR B4H56DM = 99) THEN B4H56DM = .;
   IF (B4H56DY = 9997 OR B4H56DY = 9998 OR B4H56DY = 9999) THEN B4H56DY = .;
   IF (B4H56EG = 7 OR B4H56EG = 8 OR B4H56EG = 9) THEN B4H56EG = .;
   IF (B4H56EM = 97 OR B4H56EM = 98 OR B4H56EM = 99) THEN B4H56EM = .;
   IF (B4H56EY = 9997 OR B4H56EY = 9998 OR B4H56EY = 9999) THEN B4H56EY = .;
   IF (B4H57 = 7 OR B4H57 = 8 OR B4H57 = 9) THEN B4H57 = .;
   IF (B4H57A1M = 97 OR B4H57A1M = 98 OR B4H57A1M = 99) THEN B4H57A1M = .;
   IF (B4H57A1Y = 9997 OR B4H57A1Y = 9998 OR B4H57A1Y = 9999) THEN B4H57A1Y = .;
   IF (B4H57A2M = 97 OR B4H57A2M = 98 OR B4H57A2M = 99) THEN B4H57A2M = .;
   IF (B4H57A2Y = 9997 OR B4H57A2Y = 9998 OR B4H57A2Y = 9999) THEN B4H57A2Y = .;
   IF (B4H57A3M = 97 OR B4H57A3M = 98 OR B4H57A3M = 99) THEN B4H57A3M = .;
   IF (B4H57A3Y = 9997 OR B4H57A3Y = 9998 OR B4H57A3Y = 9999) THEN B4H57A3Y = .;
   IF (B4H57A4M = 97 OR B4H57A4M = 98 OR B4H57A4M = 99) THEN B4H57A4M = .;
   IF (B4H57A4Y = 9997 OR B4H57A4Y = 9998 OR B4H57A4Y = 9999) THEN B4H57A4Y = .;
   IF (B4H57A5M = 97 OR B4H57A5M = 98 OR B4H57A5M = 99) THEN B4H57A5M = .;
   IF (B4H57A5Y = 9997 OR B4H57A5Y = 9998 OR B4H57A5Y = 9999) THEN B4H57A5Y = .;
   IF (B4O1 = 7 OR B4O1 = 8 OR B4O1 = 9) THEN B4O1 = .;
   IF (B4O1A1W = 98 OR B4O1A1W = 99) THEN B4O1A1W = .;
   IF (B4O1A3 = 9997 OR B4O1A3 = 9998 OR B4O1A3 = 9999) THEN B4O1A3 = .;
   IF (B4O1B1W = 98 OR B4O1B1W = 99) THEN B4O1B1W = .;
   IF (B4O1B3 = 9997 OR B4O1B3 = 9998 OR B4O1B3 = 9999) THEN B4O1B3 = .;
   IF (B4O1C1W = 98 OR B4O1C1W = 99) THEN B4O1C1W = .;
   IF (B4O1C3 = 9997 OR B4O1C3 = 9998 OR B4O1C3 = 9999) THEN B4O1C3 = .;
   IF (B4O2 = 7 OR B4O2 = 8 OR B4O2 = 9) THEN B4O2 = .;
   IF (B4O2A1 = 7 OR B4O2A1 = 8 OR B4O2A1 = 9) THEN B4O2A1 = .;
   IF (B4O2A2 = 7 OR B4O2A2 = 8 OR B4O2A2 = 9) THEN B4O2A2 = .;
   IF (B4O2A3 = 7 OR B4O2A3 = 8 OR B4O2A3 = 9) THEN B4O2A3 = .;
   IF (B4O2B1 = 7 OR B4O2B1 = 8 OR B4O2B1 = 9) THEN B4O2B1 = .;
   IF (B4O2B2 = 7 OR B4O2B2 = 8 OR B4O2B2 = 9) THEN B4O2B2 = .;
   IF (B4O2B3 = 7 OR B4O2B3 = 8 OR B4O2B3 = 9) THEN B4O2B3 = .;
   IF (B4O2C1 = 7 OR B4O2C1 = 8 OR B4O2C1 = 9) THEN B4O2C1 = .;
   IF (B4O2C2 = 7 OR B4O2C2 = 8 OR B4O2C2 = 9) THEN B4O2C2 = .;
   IF (B4O2C3 = 7 OR B4O2C3 = 8 OR B4O2C3 = 9) THEN B4O2C3 = .;
   IF (B4O3 = 997 OR B4O3 = 998 OR B4O3 = 999) THEN B4O3 = .;
   IF (B4O3A = 997 OR B4O3A = 998 OR B4O3A = 999) THEN B4O3A = .;
   IF (B4O4A = 7 OR B4O4A = 8 OR B4O4A = 9) THEN B4O4A = .;
   IF (B4O4B = 7 OR B4O4B = 8 OR B4O4B = 9) THEN B4O4B = .;
   IF (B4O5 = 7 OR B4O5 = 8 OR B4O5 = 9) THEN B4O5 = .;
   IF (B4O5A1AM = 98 OR B4O5A1AM = 99) THEN B4O5A1AM = .;
   IF (B4O5A1B = 9997 OR B4O5A1B = 9998 OR B4O5A1B = 9999) THEN B4O5A1B = .;
   IF (B4O5A1C = 9997 OR B4O5A1C = 9998 OR B4O5A1C = 9999) THEN B4O5A1C = .;
   IF (B4O5A1CO = 7 OR B4O5A1CO = 8 OR B4O5A1CO = 9) THEN B4O5A1CO = .;
   IF (B4O5A2AM = 98 OR B4O5A2AM = 99) THEN B4O5A2AM = .;
   IF (B4O5A2B = 9997 OR B4O5A2B = 9998 OR B4O5A2B = 9999) THEN B4O5A2B = .;
   IF (B4O5A2C = 9997 OR B4O5A2C = 9998 OR B4O5A2C = 9999) THEN B4O5A2C = .;
   IF (B4O5A2CO = 7 OR B4O5A2CO = 8 OR B4O5A2CO = 9) THEN B4O5A2CO = .;
   IF (B4O5A3AM = 98 OR B4O5A3AM = 99) THEN B4O5A3AM = .;
   IF (B4O5A3B = 9997 OR B4O5A3B = 9998 OR B4O5A3B = 9999) THEN B4O5A3B = .;
   IF (B4O5A3C = 9997 OR B4O5A3C = 9998 OR B4O5A3C = 9999) THEN B4O5A3C = .;
   IF (B4O5A3CO = 7 OR B4O5A3CO = 8 OR B4O5A3CO = 9) THEN B4O5A3CO = .;
   IF (B4O6A1 = 7 OR B4O6A1 = 8 OR B4O6A1 = 9) THEN B4O6A1 = .;
   IF (B4O6B1 = 7 OR B4O6B1 = 8 OR B4O6B1 = 9) THEN B4O6B1 = .;
   IF (B4O6C1 = 7 OR B4O6C1 = 8 OR B4O6C1 = 9) THEN B4O6C1 = .;
   IF (B4O6D1 = 7 OR B4O6D1 = 8 OR B4O6D1 = 9) THEN B4O6D1 = .;
   IF (B4O6E1 = 7 OR B4O6E1 = 8 OR B4O6E1 = 9) THEN B4O6E1 = .;
   IF (B4O6F1 = 7 OR B4O6F1 = 8 OR B4O6F1 = 9) THEN B4O6F1 = .;
   IF (B4O7 = 7 OR B4O7 = 8 OR B4O7 = 9) THEN B4O7 = .;
   IF (B4O8 = 9997.0 OR B4O8 = 9998.0 OR B4O8 = 9999.0) THEN B4O8 = .;
   IF (B4O9 = 9997.0 OR B4O9 = 9998.0 OR B4O9 = 9999.0) THEN B4O9 = .;
   IF (B4O10 = 9997.00 OR B4O10 = 9998.00 OR B4O10 = 9999.00) THEN B4O10 = .;
   IF (B4O11 = 7 OR B4O11 = 8 OR B4O11 = 9) THEN B4O11 = .;
   IF (B4O12A = 997.0 OR B4O12A = 998.0 OR B4O12A = 999.0) THEN B4O12A = .;
   IF (B4O12B = 997.0 OR B4O12B = 998.0 OR B4O12B = 999.0) THEN B4O12B = .;
   IF (B4O12C = 997.0 OR B4O12C = 998.0 OR B4O12C = 999.0) THEN B4O12C = .;
   IF (B4O13 = 7 OR B4O13 = 8 OR B4O13 = 9) THEN B4O13 = .;
   IF (B4O14A = 9997.0 OR B4O14A = 9998.0 OR B4O14A = 9999.0) THEN B4O14A = .;
   IF (B4O14B = 9997.0 OR B4O14B = 9998.0 OR B4O14B = 9999.0) THEN B4O14B = .;
   IF (B4O14C = 9997.0 OR B4O14C = 9998.0 OR B4O14C = 9999.0) THEN B4O14C = .;
   IF (B4O14X = 7 OR B4O14X = 8 OR B4O14X = 9) THEN B4O14X = .;
   IF (B4O15 = 7 OR B4O15 = 8 OR B4O15 = 9) THEN B4O15 = .;
   IF (B4O16 = 97 OR B4O16 = 98 OR B4O16 = 99) THEN B4O16 = .;
   IF (B4O16A = 9997.00 OR B4O16A = 9998.00 OR B4O16A = 9999.00) THEN B4O16A = .;
   IF (B4O17 = 7 OR B4O17 = 8 OR B4O17 = 9) THEN B4O17 = .;
   IF (B4O18 = 7 OR B4O18 = 8 OR B4O18 = 9) THEN B4O18 = .;
   IF (B4O19 = 7 OR B4O19 = 8 OR B4O19 = 9) THEN B4O19 = .;
   IF (B4O20Y = 9997.00 OR B4O20Y = 9998.00 OR B4O20Y = 9999.00) THEN B4O20Y = .;
   IF (B4O21 = 7 OR B4O21 = 8 OR B4O21 = 9) THEN B4O21 = .;
   IF (B4O21A1 = 7 OR B4O21A1 = 8 OR B4O21A1 = 9) THEN B4O21A1 = .;
   IF (B4O21A2 = 7 OR B4O21A2 = 8 OR B4O21A2 = 9) THEN B4O21A2 = .;
   IF (B4O21A3 = 7 OR B4O21A3 = 8 OR B4O21A3 = 9) THEN B4O21A3 = .;
   IF (B4O21A4 = 7 OR B4O21A4 = 8 OR B4O21A4 = 9) THEN B4O21A4 = .;
   IF (B4O21A5 = 7 OR B4O21A5 = 8 OR B4O21A5 = 9) THEN B4O21A5 = .;
   IF (B4O22Y = 9997.00 OR B4O22Y = 9998.00 OR B4O22Y = 9999.00) THEN B4O22Y = .;
   IF (B4O23X = 7 OR B4O23X = 8 OR B4O23X = 9) THEN B4O23X = .;
   IF (B4O23 = 7 OR B4O23 = 8 OR B4O23 = 9) THEN B4O23 = .;
   IF (B4O24 = 7 OR B4O24 = 8 OR B4O24 = 9) THEN B4O24 = .;
   IF (B4O25 = 7 OR B4O25 = 8 OR B4O25 = 9) THEN B4O25 = .;
   IF (B4O25A = 7 OR B4O25A = 8 OR B4O25A = 9) THEN B4O25A = .;
   IF (B4O25B = 7 OR B4O25B = 8 OR B4O25B = 9) THEN B4O25B = .;
   IF (B4O25C = 7 OR B4O25C = 8 OR B4O25C = 9) THEN B4O25C = .;
   IF (B4O26 = 7 OR B4O26 = 8 OR B4O26 = 9) THEN B4O26 = .;
   IF (B4O26A = 7 OR B4O26A = 8 OR B4O26A = 9) THEN B4O26A = .;
   IF (B4O26B = 7 OR B4O26B = 8 OR B4O26B = 9) THEN B4O26B = .;
   IF (B4O26C = 7 OR B4O26C = 8 OR B4O26C = 9) THEN B4O26C = .;
   IF (B4O26D = 7 OR B4O26D = 8 OR B4O26D = 9) THEN B4O26D = .;
   IF (B4O26E = 7 OR B4O26E = 8 OR B4O26E = 9) THEN B4O26E = .;
   IF (B4O26F = 7 OR B4O26F = 8 OR B4O26F = 9) THEN B4O26F = .;
   IF (B4O27 = 7 OR B4O27 = 8 OR B4O27 = 9) THEN B4O27 = .;
   IF (B4DAVAIL = 7 OR B4DAVAIL = 8 OR B4DAVAIL = 9) THEN B4DAVAIL = .;
   IF (B4DNARSN = 9) THEN B4DNARSN = .;
   IF (B4DSTYPE = 7 OR B4DSTYPE = 8 OR B4DSTYPE = 9) THEN B4DSTYPE = .;
   IF (B4DTRSID = 7 OR B4DTRSID = 8 OR B4DTRSID = 9) THEN B4DTRSID = .;
   IF (B4DFNSID = 7 OR B4DFNSID = 8 OR B4DFNSID = 9) THEN B4DFNSID = .;
   IF (B4DFTSID = 7 OR B4DFTSID = 8 OR B4DFTSID = 9) THEN B4DFTSID = .;
   IF (B4DRSIDE = 7 OR B4DRSIDE = 8 OR B4DRSIDE = 9) THEN B4DRSIDE = .;
   IF (B4DLSMD = 998.000 OR B4DLSMD = 999.000) THEN B4DLSMD = .;
   IF (B4DLST = 998.00 OR B4DLST = 999.00) THEN B4DLST = .;
   IF (B4DLFNMD = 998.000 OR B4DLFNMD = 999.000) THEN B4DLFNMD = .;
   IF (B4DLTRMD = 998.000 OR B4DLTRMD = 999.000) THEN B4DLTRMD = .;
   IF (B4DLFTMD = 998.000 OR B4DLFTMD = 999.000) THEN B4DLFTMD = .;
   IF (B4DLFNT = 998.00 OR B4DLFNT = 999.00) THEN B4DLFNT = .;
   IF (B4DLFTT = 998.00 OR B4DLFTT = 999.00) THEN B4DLFTT = .;
   IF (B4DLRUMD = 998.000 OR B4DLRUMD = 999.000) THEN B4DLRUMD = .;
   IF (B4DLR3MD = 998.000 OR B4DLR3MD = 999.000) THEN B4DLR3MD = .;
   IF (B4DLR3T = 998.00 OR B4DLR3T = 999.00) THEN B4DLR3T = .;
   IF (B4DHSMD = 998.000 OR B4DHSMD = 999.000) THEN B4DHSMD = .;
   IF (B4DHST = 998.00 OR B4DHST = 999.00) THEN B4DHST = .;
   IF (B4DHFNMD = 998.000 OR B4DHFNMD = 999.000) THEN B4DHFNMD = .;
   IF (B4DHTRMD = 998.000 OR B4DHTRMD = 999.000) THEN B4DHTRMD = .;
   IF (B4DHFTMD = 998.000 OR B4DHFTMD = 999.000) THEN B4DHFTMD = .;
   IF (B4DHFNT = 998.00 OR B4DHFNT = 999.00) THEN B4DHFNT = .;
   IF (B4DHFTT = 998.00 OR B4DHFTT = 999.00) THEN B4DHFTT = .;
   IF (B4XPMD = 7 OR B4XPMD = 8) THEN B4XPMD = .;
   IF (B4XOMD = 7 OR B4XOMD = 8) THEN B4XOMD = .;
   IF (B4XAMD = 7 OR B4XAMD = 8) THEN B4XAMD = .;
   IF (B4XPM = 97 OR B4XPM = 98 OR B4XPM = 99) THEN B4XPM = .;
   IF (B4XPC1 = 99999997 OR B4XPC1 = 99999998 OR B4XPC1 = 99999999) THEN B4XPC1 = .;
   IF (B4XPDD1 = 99999997.0 OR B4XPDD1 = 99999998.0 OR B4XPDD1 = 99999999.0) THEN B4XPDD1 = .;
   IF (B4XPDU1 = 97 OR B4XPDU1 = 98 OR B4XPDU1 = 99) THEN B4XPDU1 = .;
   IF (B4XPR1 = 97 OR B4XPR1 = 98 OR B4XPR1 = 99) THEN B4XPR1 = .;
   IF (B4XPF1 = 9997.0 OR B4XPF1 = 9998.0 OR B4XPF1 = 9999.0) THEN B4XPF1 = .;
   IF (B4XPFU1 = 7 OR B4XPFU1 = 8 OR B4XPFU1 = 9) THEN B4XPFU1 = .;
   IF (B4XPT1 = 9997.0 OR B4XPT1 = 9998.0 OR B4XPT1 = 9999.0) THEN B4XPT1 = .;
   IF (B4XPTU1 = 7 OR B4XPTU1 = 8 OR B4XPTU1 = 9) THEN B4XPTU1 = .;
   IF (B4XPDC1 = 99997 OR B4XPDC1 = 99998 OR B4XPDC1 = 99999) THEN B4XPDC1 = .;
   IF (B4XPC2 = 99999997 OR B4XPC2 = 99999998 OR B4XPC2 = 99999999) THEN B4XPC2 = .;
   IF (B4XPDD2 = 99999997.0 OR B4XPDD2 = 99999998.0 OR B4XPDD2 = 99999999.0) THEN B4XPDD2 = .;
   IF (B4XPDU2 = 97 OR B4XPDU2 = 98 OR B4XPDU2 = 99) THEN B4XPDU2 = .;
   IF (B4XPR2 = 97 OR B4XPR2 = 98 OR B4XPR2 = 99) THEN B4XPR2 = .;
   IF (B4XPF2 = 9997.0 OR B4XPF2 = 9998.0 OR B4XPF2 = 9999.0) THEN B4XPF2 = .;
   IF (B4XPFU2 = 7 OR B4XPFU2 = 8 OR B4XPFU2 = 9) THEN B4XPFU2 = .;
   IF (B4XPT2 = 9997.0 OR B4XPT2 = 9998.0 OR B4XPT2 = 9999.0) THEN B4XPT2 = .;
   IF (B4XPTU2 = 7 OR B4XPTU2 = 8 OR B4XPTU2 = 9) THEN B4XPTU2 = .;
   IF (B4XPDC2 = 99997 OR B4XPDC2 = 99998 OR B4XPDC2 = 99999) THEN B4XPDC2 = .;
   IF (B4XPC3 = 99999997 OR B4XPC3 = 99999998 OR B4XPC3 = 99999999) THEN B4XPC3 = .;
   IF (B4XPDD3 = 99999997.0 OR B4XPDD3 = 99999998.0 OR B4XPDD3 = 99999999.0) THEN B4XPDD3 = .;
   IF (B4XPDU3 = 97 OR B4XPDU3 = 98 OR B4XPDU3 = 99) THEN B4XPDU3 = .;
   IF (B4XPR3 = 97 OR B4XPR3 = 98 OR B4XPR3 = 99) THEN B4XPR3 = .;
   IF (B4XPF3 = 9997.0 OR B4XPF3 = 9998.0 OR B4XPF3 = 9999.0) THEN B4XPF3 = .;
   IF (B4XPFU3 = 7 OR B4XPFU3 = 8 OR B4XPFU3 = 9) THEN B4XPFU3 = .;
   IF (B4XPT3 = 9997.0 OR B4XPT3 = 9998.0 OR B4XPT3 = 9999.0) THEN B4XPT3 = .;
   IF (B4XPTU3 = 7 OR B4XPTU3 = 8 OR B4XPTU3 = 9) THEN B4XPTU3 = .;
   IF (B4XPDC3 = 99997 OR B4XPDC3 = 99998 OR B4XPDC3 = 99999) THEN B4XPDC3 = .;
   IF (B4XPC4 = 99999997 OR B4XPC4 = 99999998 OR B4XPC4 = 99999999) THEN B4XPC4 = .;
   IF (B4XPDD4 = 99999997.0 OR B4XPDD4 = 99999998.0 OR B4XPDD4 = 99999999.0) THEN B4XPDD4 = .;
   IF (B4XPDU4 = 97 OR B4XPDU4 = 98 OR B4XPDU4 = 99) THEN B4XPDU4 = .;
   IF (B4XPR4 = 97 OR B4XPR4 = 98 OR B4XPR4 = 99) THEN B4XPR4 = .;
   IF (B4XPF4 = 9997.0 OR B4XPF4 = 9998.0 OR B4XPF4 = 9999.0) THEN B4XPF4 = .;
   IF (B4XPFU4 = 7 OR B4XPFU4 = 8 OR B4XPFU4 = 9) THEN B4XPFU4 = .;
   IF (B4XPT4 = 9997.0 OR B4XPT4 = 9998.0 OR B4XPT4 = 9999.0) THEN B4XPT4 = .;
   IF (B4XPTU4 = 7 OR B4XPTU4 = 8 OR B4XPTU4 = 9) THEN B4XPTU4 = .;
   IF (B4XPDC4 = 99997 OR B4XPDC4 = 99998 OR B4XPDC4 = 99999) THEN B4XPDC4 = .;
   IF (B4XPC5 = 99999997 OR B4XPC5 = 99999998 OR B4XPC5 = 99999999) THEN B4XPC5 = .;
   IF (B4XPDD5 = 99999997.0 OR B4XPDD5 = 99999998.0 OR B4XPDD5 = 99999999.0) THEN B4XPDD5 = .;
   IF (B4XPDU5 = 97 OR B4XPDU5 = 98 OR B4XPDU5 = 99) THEN B4XPDU5 = .;
   IF (B4XPR5 = 97 OR B4XPR5 = 98 OR B4XPR5 = 99) THEN B4XPR5 = .;
   IF (B4XPF5 = 9997.0 OR B4XPF5 = 9998.0 OR B4XPF5 = 9999.0) THEN B4XPF5 = .;
   IF (B4XPFU5 = 7 OR B4XPFU5 = 8 OR B4XPFU5 = 9) THEN B4XPFU5 = .;
   IF (B4XPT5 = 9997.0 OR B4XPT5 = 9998.0 OR B4XPT5 = 9999.0) THEN B4XPT5 = .;
   IF (B4XPTU5 = 7 OR B4XPTU5 = 8 OR B4XPTU5 = 9) THEN B4XPTU5 = .;
   IF (B4XPDC5 = 99997 OR B4XPDC5 = 99998 OR B4XPDC5 = 99999) THEN B4XPDC5 = .;
   IF (B4XPC6 = 99999997 OR B4XPC6 = 99999998 OR B4XPC6 = 99999999) THEN B4XPC6 = .;
   IF (B4XPDD6 = 99999997.0 OR B4XPDD6 = 99999998.0 OR B4XPDD6 = 99999999.0) THEN B4XPDD6 = .;
   IF (B4XPDU6 = 97 OR B4XPDU6 = 98 OR B4XPDU6 = 99) THEN B4XPDU6 = .;
   IF (B4XPR6 = 97 OR B4XPR6 = 98 OR B4XPR6 = 99) THEN B4XPR6 = .;
   IF (B4XPF6 = 9997.0 OR B4XPF6 = 9998.0 OR B4XPF6 = 9999.0) THEN B4XPF6 = .;
   IF (B4XPFU6 = 7 OR B4XPFU6 = 8 OR B4XPFU6 = 9) THEN B4XPFU6 = .;
   IF (B4XPT6 = 9997.0 OR B4XPT6 = 9998.0 OR B4XPT6 = 9999.0) THEN B4XPT6 = .;
   IF (B4XPTU6 = 7 OR B4XPTU6 = 8 OR B4XPTU6 = 9) THEN B4XPTU6 = .;
   IF (B4XPDC6 = 99997 OR B4XPDC6 = 99998 OR B4XPDC6 = 99999) THEN B4XPDC6 = .;
   IF (B4XPC7 = 99999997 OR B4XPC7 = 99999998 OR B4XPC7 = 99999999) THEN B4XPC7 = .;
   IF (B4XPDD7 = 99999997.0 OR B4XPDD7 = 99999998.0 OR B4XPDD7 = 99999999.0) THEN B4XPDD7 = .;
   IF (B4XPDU7 = 97 OR B4XPDU7 = 98 OR B4XPDU7 = 99) THEN B4XPDU7 = .;
   IF (B4XPR7 = 97 OR B4XPR7 = 98 OR B4XPR7 = 99) THEN B4XPR7 = .;
   IF (B4XPF7 = 9997.0 OR B4XPF7 = 9998.0 OR B4XPF7 = 9999.0) THEN B4XPF7 = .;
   IF (B4XPFU7 = 7 OR B4XPFU7 = 8 OR B4XPFU7 = 9) THEN B4XPFU7 = .;
   IF (B4XPT7 = 9997.0 OR B4XPT7 = 9998.0 OR B4XPT7 = 9999.0) THEN B4XPT7 = .;
   IF (B4XPTU7 = 7 OR B4XPTU7 = 8 OR B4XPTU7 = 9) THEN B4XPTU7 = .;
   IF (B4XPDC7 = 99997 OR B4XPDC7 = 99998 OR B4XPDC7 = 99999) THEN B4XPDC7 = .;
   IF (B4XPC8 = 99999997 OR B4XPC8 = 99999998 OR B4XPC8 = 99999999) THEN B4XPC8 = .;
   IF (B4XPDD8 = 99999997.0 OR B4XPDD8 = 99999998.0 OR B4XPDD8 = 99999999.0) THEN B4XPDD8 = .;
   IF (B4XPDU8 = 97 OR B4XPDU8 = 98 OR B4XPDU8 = 99) THEN B4XPDU8 = .;
   IF (B4XPR8 = 97 OR B4XPR8 = 98 OR B4XPR8 = 99) THEN B4XPR8 = .;
   IF (B4XPF8 = 9997.0 OR B4XPF8 = 9998.0 OR B4XPF8 = 9999.0) THEN B4XPF8 = .;
   IF (B4XPFU8 = 7 OR B4XPFU8 = 8 OR B4XPFU8 = 9) THEN B4XPFU8 = .;
   IF (B4XPT8 = 9997.0 OR B4XPT8 = 9998.0 OR B4XPT8 = 9999.0) THEN B4XPT8 = .;
   IF (B4XPTU8 = 7 OR B4XPTU8 = 8 OR B4XPTU8 = 9) THEN B4XPTU8 = .;
   IF (B4XPDC8 = 99997 OR B4XPDC8 = 99998 OR B4XPDC8 = 99999) THEN B4XPDC8 = .;
   IF (B4XPC9 = 99999997 OR B4XPC9 = 99999998 OR B4XPC9 = 99999999) THEN B4XPC9 = .;
   IF (B4XPDD9 = 99999997.0 OR B4XPDD9 = 99999998.0 OR B4XPDD9 = 99999999.0) THEN B4XPDD9 = .;
   IF (B4XPDU9 = 97 OR B4XPDU9 = 98 OR B4XPDU9 = 99) THEN B4XPDU9 = .;
   IF (B4XPR9 = 97 OR B4XPR9 = 98 OR B4XPR9 = 99) THEN B4XPR9 = .;
   IF (B4XPF9 = 9997.0 OR B4XPF9 = 9998.0 OR B4XPF9 = 9999.0) THEN B4XPF9 = .;
   IF (B4XPFU9 = 7 OR B4XPFU9 = 8 OR B4XPFU9 = 9) THEN B4XPFU9 = .;
   IF (B4XPT9 = 9997.0 OR B4XPT9 = 9998.0 OR B4XPT9 = 9999.0) THEN B4XPT9 = .;
   IF (B4XPTU9 = 7 OR B4XPTU9 = 8 OR B4XPTU9 = 9) THEN B4XPTU9 = .;
   IF (B4XPDC9 = 99997 OR B4XPDC9 = 99998 OR B4XPDC9 = 99999) THEN B4XPDC9 = .;
   IF (B4XPC10 = 99999997 OR B4XPC10 = 99999998 OR B4XPC10 = 99999999) THEN B4XPC10 = .;
   IF (B4XPDD10 = 99999997.0 OR B4XPDD10 = 99999998.0 OR B4XPDD10 = 99999999.0) THEN B4XPDD10 = .;
   IF (B4XPDU10 = 97 OR B4XPDU10 = 98 OR B4XPDU10 = 99) THEN B4XPDU10 = .;
   IF (B4XPR10 = 97 OR B4XPR10 = 98 OR B4XPR10 = 99) THEN B4XPR10 = .;
   IF (B4XPF10 = 9997.0 OR B4XPF10 = 9998.0 OR B4XPF10 = 9999.0) THEN B4XPF10 = .;
   IF (B4XPFU10 = 7 OR B4XPFU10 = 8 OR B4XPFU10 = 9) THEN B4XPFU10 = .;
   IF (B4XPT10 = 9997.0 OR B4XPT10 = 9998.0 OR B4XPT10 = 9999.0) THEN B4XPT10 = .;
   IF (B4XPTU10 = 7 OR B4XPTU10 = 8 OR B4XPTU10 = 9) THEN B4XPTU10 = .;
   IF (B4XPDC10 = 99997 OR B4XPDC10 = 99998 OR B4XPDC10 = 99999) THEN B4XPDC10 = .;
   IF (B4XPC11 = 99999997 OR B4XPC11 = 99999998 OR B4XPC11 = 99999999) THEN B4XPC11 = .;
   IF (B4XPDD11 = 99999997.0 OR B4XPDD11 = 99999998.0 OR B4XPDD11 = 99999999.0) THEN B4XPDD11 = .;
   IF (B4XPDU11 = 97 OR B4XPDU11 = 98 OR B4XPDU11 = 99) THEN B4XPDU11 = .;
   IF (B4XPR11 = 97 OR B4XPR11 = 98 OR B4XPR11 = 99) THEN B4XPR11 = .;
   IF (B4XPF11 = 9997.0 OR B4XPF11 = 9998.0 OR B4XPF11 = 9999.0) THEN B4XPF11 = .;
   IF (B4XPFU11 = 7 OR B4XPFU11 = 8 OR B4XPFU11 = 9) THEN B4XPFU11 = .;
   IF (B4XPT11 = 9997.0 OR B4XPT11 = 9998.0 OR B4XPT11 = 9999.0) THEN B4XPT11 = .;
   IF (B4XPTU11 = 7 OR B4XPTU11 = 8 OR B4XPTU11 = 9) THEN B4XPTU11 = .;
   IF (B4XPDC11 = 99997 OR B4XPDC11 = 99998 OR B4XPDC11 = 99999) THEN B4XPDC11 = .;
   IF (B4XPC12 = 99999997 OR B4XPC12 = 99999998 OR B4XPC12 = 99999999) THEN B4XPC12 = .;
   IF (B4XPDD12 = 99999997.0 OR B4XPDD12 = 99999998.0 OR B4XPDD12 = 99999999.0) THEN B4XPDD12 = .;
   IF (B4XPDU12 = 97 OR B4XPDU12 = 98 OR B4XPDU12 = 99) THEN B4XPDU12 = .;
   IF (B4XPR12 = 97 OR B4XPR12 = 98 OR B4XPR12 = 99) THEN B4XPR12 = .;
   IF (B4XPF12 = 9997.0 OR B4XPF12 = 9998.0 OR B4XPF12 = 9999.0) THEN B4XPF12 = .;
   IF (B4XPFU12 = 7 OR B4XPFU12 = 8 OR B4XPFU12 = 9) THEN B4XPFU12 = .;
   IF (B4XPT12 = 9997.0 OR B4XPT12 = 9998.0 OR B4XPT12 = 9999.0) THEN B4XPT12 = .;
   IF (B4XPTU12 = 7 OR B4XPTU12 = 8 OR B4XPTU12 = 9) THEN B4XPTU12 = .;
   IF (B4XPDC12 = 99997 OR B4XPDC12 = 99998 OR B4XPDC12 = 99999) THEN B4XPDC12 = .;
   IF (B4XPC13 = 99999997 OR B4XPC13 = 99999998 OR B4XPC13 = 99999999) THEN B4XPC13 = .;
   IF (B4XPDD13 = 99999997.0 OR B4XPDD13 = 99999998.0 OR B4XPDD13 = 99999999.0) THEN B4XPDD13 = .;
   IF (B4XPDU13 = 97 OR B4XPDU13 = 98 OR B4XPDU13 = 99) THEN B4XPDU13 = .;
   IF (B4XPR13 = 97 OR B4XPR13 = 98 OR B4XPR13 = 99) THEN B4XPR13 = .;
   IF (B4XPF13 = 9997.0 OR B4XPF13 = 9998.0 OR B4XPF13 = 9999.0) THEN B4XPF13 = .;
   IF (B4XPFU13 = 7 OR B4XPFU13 = 8 OR B4XPFU13 = 9) THEN B4XPFU13 = .;
   IF (B4XPT13 = 9997.0 OR B4XPT13 = 9998.0 OR B4XPT13 = 9999.0) THEN B4XPT13 = .;
   IF (B4XPTU13 = 7 OR B4XPTU13 = 8 OR B4XPTU13 = 9) THEN B4XPTU13 = .;
   IF (B4XPDC13 = 99997 OR B4XPDC13 = 99998 OR B4XPDC13 = 99999) THEN B4XPDC13 = .;
   IF (B4XPC14 = 99999997 OR B4XPC14 = 99999998 OR B4XPC14 = 99999999) THEN B4XPC14 = .;
   IF (B4XPDD14 = 99999997.0 OR B4XPDD14 = 99999998.0 OR B4XPDD14 = 99999999.0) THEN B4XPDD14 = .;
   IF (B4XPDU14 = 97 OR B4XPDU14 = 98 OR B4XPDU14 = 99) THEN B4XPDU14 = .;
   IF (B4XPR14 = 97 OR B4XPR14 = 98 OR B4XPR14 = 99) THEN B4XPR14 = .;
   IF (B4XPF14 = 9997.0 OR B4XPF14 = 9998.0 OR B4XPF14 = 9999.0) THEN B4XPF14 = .;
   IF (B4XPFU14 = 7 OR B4XPFU14 = 8 OR B4XPFU14 = 9) THEN B4XPFU14 = .;
   IF (B4XPT14 = 9997.0 OR B4XPT14 = 9998.0 OR B4XPT14 = 9999.0) THEN B4XPT14 = .;
   IF (B4XPTU14 = 7 OR B4XPTU14 = 8 OR B4XPTU14 = 9) THEN B4XPTU14 = .;
   IF (B4XPDC14 = 99997 OR B4XPDC14 = 99998 OR B4XPDC14 = 99999) THEN B4XPDC14 = .;
   IF (B4XPC15 = 99999997 OR B4XPC15 = 99999998 OR B4XPC15 = 99999999) THEN B4XPC15 = .;
   IF (B4XPDD15 = 99999997.0 OR B4XPDD15 = 99999998.0 OR B4XPDD15 = 99999999.0) THEN B4XPDD15 = .;
   IF (B4XPDU15 = 97 OR B4XPDU15 = 98 OR B4XPDU15 = 99) THEN B4XPDU15 = .;
   IF (B4XPR15 = 97 OR B4XPR15 = 98 OR B4XPR15 = 99) THEN B4XPR15 = .;
   IF (B4XPF15 = 9997.0 OR B4XPF15 = 9998.0 OR B4XPF15 = 9999.0) THEN B4XPF15 = .;
   IF (B4XPFU15 = 7 OR B4XPFU15 = 8 OR B4XPFU15 = 9) THEN B4XPFU15 = .;
   IF (B4XPT15 = 9997.0 OR B4XPT15 = 9998.0 OR B4XPT15 = 9999.0) THEN B4XPT15 = .;
   IF (B4XPTU15 = 7 OR B4XPTU15 = 8 OR B4XPTU15 = 9) THEN B4XPTU15 = .;
   IF (B4XPDC15 = 99997 OR B4XPDC15 = 99998 OR B4XPDC15 = 99999) THEN B4XPDC15 = .;
   IF (B4XBPD = 7 OR B4XBPD = 8 OR B4XBPD = 9) THEN B4XBPD = .;
   IF (B4XBPC = 7 OR B4XBPC = 8 OR B4XBPC = 9) THEN B4XBPC = .;
   IF (B4XCHD = 7 OR B4XCHD = 8 OR B4XCHD = 9) THEN B4XCHD = .;
   IF (B4XCHC = 7 OR B4XCHC = 8 OR B4XCHC = 9) THEN B4XCHC = .;
   IF (B4XDPD = 7 OR B4XDPD = 8 OR B4XDPD = 9) THEN B4XDPD = .;
   IF (B4XDPC = 7 OR B4XDPC = 8 OR B4XDPC = 9) THEN B4XDPC = .;
   IF (B4XCOD = 7 OR B4XCOD = 8 OR B4XCOD = 9) THEN B4XCOD = .;
   IF (B4XCOC = 7 OR B4XCOC = 8 OR B4XCOC = 9) THEN B4XCOC = .;
   IF (B4XSHD = 7 OR B4XSHD = 8 OR B4XSHD = 9) THEN B4XSHD = .;
   IF (B4XSHC = 7 OR B4XSHC = 8 OR B4XSHC = 9) THEN B4XSHC = .;
   IF (B4XOM = 97 OR B4XOM = 98 OR B4XOM = 99) THEN B4XOM = .;
   IF (B4XOMV = 7 OR B4XOMV = 8 OR B4XOMV = 9) THEN B4XOMV = .;
   IF (B4XOC1 = 99999997 OR B4XOC1 = 99999998 OR B4XOC1 = 99999999) THEN B4XOC1 = .;
   IF (B4XODD1 = 99999997.0 OR B4XODD1 = 99999998.0 OR B4XODD1 = 99999999.0) THEN B4XODD1 = .;
   IF (B4XODU1 = 97 OR B4XODU1 = 98 OR B4XODU1 = 99) THEN B4XODU1 = .;
   IF (B4XOR1 = 97 OR B4XOR1 = 98 OR B4XOR1 = 99) THEN B4XOR1 = .;
   IF (B4XOF1 = 9997.0 OR B4XOF1 = 9998.0 OR B4XOF1 = 9999.0) THEN B4XOF1 = .;
   IF (B4XOFU1 = 7 OR B4XOFU1 = 8 OR B4XOFU1 = 9) THEN B4XOFU1 = .;
   IF (B4XOT1 = 9997.0 OR B4XOT1 = 9998.0 OR B4XOT1 = 9999.0) THEN B4XOT1 = .;
   IF (B4XOTU1 = 7 OR B4XOTU1 = 8 OR B4XOTU1 = 9) THEN B4XOTU1 = .;
   IF (B4XODC1 = 99997 OR B4XODC1 = 99998 OR B4XODC1 = 99999) THEN B4XODC1 = .;
   IF (B4XOCS = 7 OR B4XOCS = 8 OR B4XOCS = 9) THEN B4XOCS = .;
   IF (B4XOC2 = 99999997 OR B4XOC2 = 99999998 OR B4XOC2 = 99999999) THEN B4XOC2 = .;
   IF (B4XODD2 = 99999997.0 OR B4XODD2 = 99999998.0 OR B4XODD2 = 99999999.0) THEN B4XODD2 = .;
   IF (B4XODU2 = 97 OR B4XODU2 = 98 OR B4XODU2 = 99) THEN B4XODU2 = .;
   IF (B4XOR2 = 97 OR B4XOR2 = 98 OR B4XOR2 = 99) THEN B4XOR2 = .;
   IF (B4XOF2 = 9997.0 OR B4XOF2 = 9998.0 OR B4XOF2 = 9999.0) THEN B4XOF2 = .;
   IF (B4XOFU2 = 7 OR B4XOFU2 = 8 OR B4XOFU2 = 9) THEN B4XOFU2 = .;
   IF (B4XOT2 = 9997.0 OR B4XOT2 = 9998.0 OR B4XOT2 = 9999.0) THEN B4XOT2 = .;
   IF (B4XOTU2 = 7 OR B4XOTU2 = 8 OR B4XOTU2 = 9) THEN B4XOTU2 = .;
   IF (B4XODC2 = 99997 OR B4XODC2 = 99998 OR B4XODC2 = 99999) THEN B4XODC2 = .;
   IF (B4XOC3 = 99999997 OR B4XOC3 = 99999998 OR B4XOC3 = 99999999) THEN B4XOC3 = .;
   IF (B4XODD3 = 99999997.0 OR B4XODD3 = 99999998.0 OR B4XODD3 = 99999999.0) THEN B4XODD3 = .;
   IF (B4XODU3 = 97 OR B4XODU3 = 98 OR B4XODU3 = 99) THEN B4XODU3 = .;
   IF (B4XOR3 = 97 OR B4XOR3 = 98 OR B4XOR3 = 99) THEN B4XOR3 = .;
   IF (B4XOF3 = 9997.0 OR B4XOF3 = 9998.0 OR B4XOF3 = 9999.0) THEN B4XOF3 = .;
   IF (B4XOFU3 = 7 OR B4XOFU3 = 8 OR B4XOFU3 = 9) THEN B4XOFU3 = .;
   IF (B4XOT3 = 9997.0 OR B4XOT3 = 9998.0 OR B4XOT3 = 9999.0) THEN B4XOT3 = .;
   IF (B4XOTU3 = 7 OR B4XOTU3 = 8 OR B4XOTU3 = 9) THEN B4XOTU3 = .;
   IF (B4XODC3 = 99997 OR B4XODC3 = 99998 OR B4XODC3 = 99999) THEN B4XODC3 = .;
   IF (B4XOC4 = 99999997 OR B4XOC4 = 99999998 OR B4XOC4 = 99999999) THEN B4XOC4 = .;
   IF (B4XODD4 = 99999997.0 OR B4XODD4 = 99999998.0 OR B4XODD4 = 99999999.0) THEN B4XODD4 = .;
   IF (B4XODU4 = 97 OR B4XODU4 = 98 OR B4XODU4 = 99) THEN B4XODU4 = .;
   IF (B4XOR4 = 97 OR B4XOR4 = 98 OR B4XOR4 = 99) THEN B4XOR4 = .;
   IF (B4XOF4 = 9997.0 OR B4XOF4 = 9998.0 OR B4XOF4 = 9999.0) THEN B4XOF4 = .;
   IF (B4XOFU4 = 7 OR B4XOFU4 = 8 OR B4XOFU4 = 9) THEN B4XOFU4 = .;
   IF (B4XOT4 = 9997.0 OR B4XOT4 = 9998.0 OR B4XOT4 = 9999.0) THEN B4XOT4 = .;
   IF (B4XOTU4 = 7 OR B4XOTU4 = 8 OR B4XOTU4 = 9) THEN B4XOTU4 = .;
   IF (B4XODC4 = 99997 OR B4XODC4 = 99998 OR B4XODC4 = 99999) THEN B4XODC4 = .;
   IF (B4XOC5 = 99999997 OR B4XOC5 = 99999998 OR B4XOC5 = 99999999) THEN B4XOC5 = .;
   IF (B4XODD5 = 99999997.0 OR B4XODD5 = 99999998.0 OR B4XODD5 = 99999999.0) THEN B4XODD5 = .;
   IF (B4XODU5 = 97 OR B4XODU5 = 98 OR B4XODU5 = 99) THEN B4XODU5 = .;
   IF (B4XOR5 = 97 OR B4XOR5 = 98 OR B4XOR5 = 99) THEN B4XOR5 = .;
   IF (B4XOF5 = 9997.0 OR B4XOF5 = 9998.0 OR B4XOF5 = 9999.0) THEN B4XOF5 = .;
   IF (B4XOFU5 = 7 OR B4XOFU5 = 8 OR B4XOFU5 = 9) THEN B4XOFU5 = .;
   IF (B4XOT5 = 9997.0 OR B4XOT5 = 9998.0 OR B4XOT5 = 9999.0) THEN B4XOT5 = .;
   IF (B4XOTU5 = 7 OR B4XOTU5 = 8 OR B4XOTU5 = 9) THEN B4XOTU5 = .;
   IF (B4XODC5 = 99997 OR B4XODC5 = 99998 OR B4XODC5 = 99999) THEN B4XODC5 = .;
   IF (B4XOC6 = 99999997 OR B4XOC6 = 99999998 OR B4XOC6 = 99999999) THEN B4XOC6 = .;
   IF (B4XODD6 = 99999997.0 OR B4XODD6 = 99999998.0 OR B4XODD6 = 99999999.0) THEN B4XODD6 = .;
   IF (B4XODU6 = 97 OR B4XODU6 = 98 OR B4XODU6 = 99) THEN B4XODU6 = .;
   IF (B4XOR6 = 97 OR B4XOR6 = 98 OR B4XOR6 = 99) THEN B4XOR6 = .;
   IF (B4XOF6 = 9997.0 OR B4XOF6 = 9998.0 OR B4XOF6 = 9999.0) THEN B4XOF6 = .;
   IF (B4XOFU6 = 7 OR B4XOFU6 = 8 OR B4XOFU6 = 9) THEN B4XOFU6 = .;
   IF (B4XOT6 = 9997.0 OR B4XOT6 = 9998.0 OR B4XOT6 = 9999.0) THEN B4XOT6 = .;
   IF (B4XOTU6 = 7 OR B4XOTU6 = 8 OR B4XOTU6 = 9) THEN B4XOTU6 = .;
   IF (B4XODC6 = 99997 OR B4XODC6 = 99998 OR B4XODC6 = 99999) THEN B4XODC6 = .;
   IF (B4XOC7 = 99999997 OR B4XOC7 = 99999998 OR B4XOC7 = 99999999) THEN B4XOC7 = .;
   IF (B4XODD7 = 99999997.0 OR B4XODD7 = 99999998.0 OR B4XODD7 = 99999999.0) THEN B4XODD7 = .;
   IF (B4XODU7 = 97 OR B4XODU7 = 98 OR B4XODU7 = 99) THEN B4XODU7 = .;
   IF (B4XOR7 = 97 OR B4XOR7 = 98 OR B4XOR7 = 99) THEN B4XOR7 = .;
   IF (B4XOF7 = 9997.0 OR B4XOF7 = 9998.0 OR B4XOF7 = 9999.0) THEN B4XOF7 = .;
   IF (B4XOFU7 = 7 OR B4XOFU7 = 8 OR B4XOFU7 = 9) THEN B4XOFU7 = .;
   IF (B4XOT7 = 9997.0 OR B4XOT7 = 9998.0 OR B4XOT7 = 9999.0) THEN B4XOT7 = .;
   IF (B4XOTU7 = 7 OR B4XOTU7 = 8 OR B4XOTU7 = 9) THEN B4XOTU7 = .;
   IF (B4XODC7 = 99997 OR B4XODC7 = 99998 OR B4XODC7 = 99999) THEN B4XODC7 = .;
   IF (B4XOC8 = 99999997 OR B4XOC8 = 99999998 OR B4XOC8 = 99999999) THEN B4XOC8 = .;
   IF (B4XODD8 = 99999997.0 OR B4XODD8 = 99999998.0 OR B4XODD8 = 99999999.0) THEN B4XODD8 = .;
   IF (B4XODU8 = 97 OR B4XODU8 = 98 OR B4XODU8 = 99) THEN B4XODU8 = .;
   IF (B4XOR8 = 97 OR B4XOR8 = 98 OR B4XOR8 = 99) THEN B4XOR8 = .;
   IF (B4XOF8 = 9997.0 OR B4XOF8 = 9998.0 OR B4XOF8 = 9999.0) THEN B4XOF8 = .;
   IF (B4XOFU8 = 7 OR B4XOFU8 = 8 OR B4XOFU8 = 9) THEN B4XOFU8 = .;
   IF (B4XOT8 = 9997.0 OR B4XOT8 = 9998.0 OR B4XOT8 = 9999.0) THEN B4XOT8 = .;
   IF (B4XOTU8 = 7 OR B4XOTU8 = 8 OR B4XOTU8 = 9) THEN B4XOTU8 = .;
   IF (B4XODC8 = 99997 OR B4XODC8 = 99998 OR B4XODC8 = 99999) THEN B4XODC8 = .;
   IF (B4XOC9 = 99999997 OR B4XOC9 = 99999998 OR B4XOC9 = 99999999) THEN B4XOC9 = .;
   IF (B4XODD9 = 99999997.0 OR B4XODD9 = 99999998.0 OR B4XODD9 = 99999999.0) THEN B4XODD9 = .;
   IF (B4XODU9 = 97 OR B4XODU9 = 98 OR B4XODU9 = 99) THEN B4XODU9 = .;
   IF (B4XOR9 = 97 OR B4XOR9 = 98 OR B4XOR9 = 99) THEN B4XOR9 = .;
   IF (B4XOF9 = 9997.0 OR B4XOF9 = 9998.0 OR B4XOF9 = 9999.0) THEN B4XOF9 = .;
   IF (B4XOFU9 = 7 OR B4XOFU9 = 8 OR B4XOFU9 = 9) THEN B4XOFU9 = .;
   IF (B4XOT9 = 9997.0 OR B4XOT9 = 9998.0 OR B4XOT9 = 9999.0) THEN B4XOT9 = .;
   IF (B4XOTU9 = 7 OR B4XOTU9 = 8 OR B4XOTU9 = 9) THEN B4XOTU9 = .;
   IF (B4XODC9 = 99997 OR B4XODC9 = 99998 OR B4XODC9 = 99999) THEN B4XODC9 = .;
   IF (B4XOC10 = 99999997 OR B4XOC10 = 99999998 OR B4XOC10 = 99999999) THEN B4XOC10 = .;
   IF (B4XODD10 = 99999997.0 OR B4XODD10 = 99999998.0 OR B4XODD10 = 99999999.0) THEN B4XODD10 = .;
   IF (B4XODU10 = 97 OR B4XODU10 = 98 OR B4XODU10 = 99) THEN B4XODU10 = .;
   IF (B4XOR10 = 97 OR B4XOR10 = 98 OR B4XOR10 = 99) THEN B4XOR10 = .;
   IF (B4XOF10 = 9997.0 OR B4XOF10 = 9998.0 OR B4XOF10 = 9999.0) THEN B4XOF10 = .;
   IF (B4XOFU10 = 7 OR B4XOFU10 = 8 OR B4XOFU10 = 9) THEN B4XOFU10 = .;
   IF (B4XOT10 = 9997.0 OR B4XOT10 = 9998.0 OR B4XOT10 = 9999.0) THEN B4XOT10 = .;
   IF (B4XOTU10 = 7 OR B4XOTU10 = 8 OR B4XOTU10 = 9) THEN B4XOTU10 = .;
   IF (B4XODC10 = 99997 OR B4XODC10 = 99998 OR B4XODC10 = 99999) THEN B4XODC10 = .;
   IF (B4XOC11 = 99999997 OR B4XOC11 = 99999998 OR B4XOC11 = 99999999) THEN B4XOC11 = .;
   IF (B4XODD11 = 99999997.0 OR B4XODD11 = 99999998.0 OR B4XODD11 = 99999999.0) THEN B4XODD11 = .;
   IF (B4XODU11 = 97 OR B4XODU11 = 98 OR B4XODU11 = 99) THEN B4XODU11 = .;
   IF (B4XOR11 = 97 OR B4XOR11 = 98 OR B4XOR11 = 99) THEN B4XOR11 = .;
   IF (B4XOF11 = 9997.0 OR B4XOF11 = 9998.0 OR B4XOF11 = 9999.0) THEN B4XOF11 = .;
   IF (B4XOFU11 = 7 OR B4XOFU11 = 8 OR B4XOFU11 = 9) THEN B4XOFU11 = .;
   IF (B4XOT11 = 9997.0 OR B4XOT11 = 9998.0 OR B4XOT11 = 9999.0) THEN B4XOT11 = .;
   IF (B4XOTU11 = 7 OR B4XOTU11 = 8 OR B4XOTU11 = 9) THEN B4XOTU11 = .;
   IF (B4XODC11 = 99997 OR B4XODC11 = 99998 OR B4XODC11 = 99999) THEN B4XODC11 = .;
   IF (B4XOC12 = 99999997 OR B4XOC12 = 99999998 OR B4XOC12 = 99999999) THEN B4XOC12 = .;
   IF (B4XODD12 = 99999997.0 OR B4XODD12 = 99999998.0 OR B4XODD12 = 99999999.0) THEN B4XODD12 = .;
   IF (B4XODU12 = 97 OR B4XODU12 = 98 OR B4XODU12 = 99) THEN B4XODU12 = .;
   IF (B4XOR12 = 97 OR B4XOR12 = 98 OR B4XOR12 = 99) THEN B4XOR12 = .;
   IF (B4XOF12 = 9997.0 OR B4XOF12 = 9998.0 OR B4XOF12 = 9999.0) THEN B4XOF12 = .;
   IF (B4XOFU12 = 7 OR B4XOFU12 = 8 OR B4XOFU12 = 9) THEN B4XOFU12 = .;
   IF (B4XOT12 = 9997.0 OR B4XOT12 = 9998.0 OR B4XOT12 = 9999.0) THEN B4XOT12 = .;
   IF (B4XOTU12 = 7 OR B4XOTU12 = 8 OR B4XOTU12 = 9) THEN B4XOTU12 = .;
   IF (B4XODC12 = 99997 OR B4XODC12 = 99998 OR B4XODC12 = 99999) THEN B4XODC12 = .;
   IF (B4XAM = 97 OR B4XAM = 98 OR B4XAM = 99) THEN B4XAM = .;
   IF (B4XAC1 = 999997 OR B4XAC1 = 999998 OR B4XAC1 = 999999) THEN B4XAC1 = .;
   IF (B4XADD1 = 99999997.0 OR B4XADD1 = 99999998.0 OR B4XADD1 = 99999999.0) THEN B4XADD1 = .;
   IF (B4XADU1 = 97 OR B4XADU1 = 98 OR B4XADU1 = 99) THEN B4XADU1 = .;
   IF (B4XAR1 = 97 OR B4XAR1 = 98 OR B4XAR1 = 99) THEN B4XAR1 = .;
   IF (B4XAF1 = 9997.0 OR B4XAF1 = 9998.0 OR B4XAF1 = 9999.0) THEN B4XAF1 = .;
   IF (B4XAFU1 = 7 OR B4XAFU1 = 8 OR B4XAFU1 = 9) THEN B4XAFU1 = .;
   IF (B4XAT1 = 9997.0 OR B4XAT1 = 9998.0 OR B4XAT1 = 9999.0) THEN B4XAT1 = .;
   IF (B4XATU1 = 7 OR B4XATU1 = 8 OR B4XATU1 = 9) THEN B4XATU1 = .;
   IF (B4XADC1 = 99997 OR B4XADC1 = 99998 OR B4XADC1 = 99999) THEN B4XADC1 = .;
   IF (B4XAC2 = 999997 OR B4XAC2 = 999998 OR B4XAC2 = 999999) THEN B4XAC2 = .;
   IF (B4XADD2 = 99999997.0 OR B4XADD2 = 99999998.0 OR B4XADD2 = 99999999.0) THEN B4XADD2 = .;
   IF (B4XADU2 = 97 OR B4XADU2 = 98 OR B4XADU2 = 99) THEN B4XADU2 = .;
   IF (B4XAR2 = 97 OR B4XAR2 = 98 OR B4XAR2 = 99) THEN B4XAR2 = .;
   IF (B4XAF2 = 9997.0 OR B4XAF2 = 9998.0 OR B4XAF2 = 9999.0) THEN B4XAF2 = .;
   IF (B4XAFU2 = 7 OR B4XAFU2 = 8 OR B4XAFU2 = 9) THEN B4XAFU2 = .;
   IF (B4XAT2 = 9997.0 OR B4XAT2 = 9998.0 OR B4XAT2 = 9999.0) THEN B4XAT2 = .;
   IF (B4XATU2 = 7 OR B4XATU2 = 8 OR B4XATU2 = 9) THEN B4XATU2 = .;
   IF (B4XADC2 = 99997 OR B4XADC2 = 99998 OR B4XADC2 = 99999) THEN B4XADC2 = .;
   IF (B4XAC3 = 999997 OR B4XAC3 = 999998 OR B4XAC3 = 999999) THEN B4XAC3 = .;
   IF (B4XADD3 = 99999997.0 OR B4XADD3 = 99999998.0 OR B4XADD3 = 99999999.0) THEN B4XADD3 = .;
   IF (B4XADU3 = 97 OR B4XADU3 = 98 OR B4XADU3 = 99) THEN B4XADU3 = .;
   IF (B4XAR3 = 97 OR B4XAR3 = 98 OR B4XAR3 = 99) THEN B4XAR3 = .;
   IF (B4XAF3 = 9997.0 OR B4XAF3 = 9998.0 OR B4XAF3 = 9999.0) THEN B4XAF3 = .;
   IF (B4XAFU3 = 7 OR B4XAFU3 = 8 OR B4XAFU3 = 9) THEN B4XAFU3 = .;
   IF (B4XAT3 = 9997.0 OR B4XAT3 = 9998.0 OR B4XAT3 = 9999.0) THEN B4XAT3 = .;
   IF (B4XATU3 = 7 OR B4XATU3 = 8 OR B4XATU3 = 9) THEN B4XATU3 = .;
   IF (B4XADC3 = 99997 OR B4XADC3 = 99998 OR B4XADC3 = 99999) THEN B4XADC3 = .;
   IF (B4XAC4 = 999997 OR B4XAC4 = 999998 OR B4XAC4 = 999999) THEN B4XAC4 = .;
   IF (B4XADD4 = 99999997.0 OR B4XADD4 = 99999998.0 OR B4XADD4 = 99999999.0) THEN B4XADD4 = .;
   IF (B4XADU4 = 97 OR B4XADU4 = 98 OR B4XADU4 = 99) THEN B4XADU4 = .;
   IF (B4XAR4 = 97 OR B4XAR4 = 98 OR B4XAR4 = 99) THEN B4XAR4 = .;
   IF (B4XAF4 = 9997.0 OR B4XAF4 = 9998.0 OR B4XAF4 = 9999.0) THEN B4XAF4 = .;
   IF (B4XAFU4 = 7 OR B4XAFU4 = 8 OR B4XAFU4 = 9) THEN B4XAFU4 = .;
   IF (B4XAT4 = 9997.0 OR B4XAT4 = 9998.0 OR B4XAT4 = 9999.0) THEN B4XAT4 = .;
   IF (B4XATU4 = 7 OR B4XATU4 = 8 OR B4XATU4 = 9) THEN B4XATU4 = .;
   IF (B4XADC4 = 99997 OR B4XADC4 = 99998 OR B4XADC4 = 99999) THEN B4XADC4 = .;
   IF (B4XAC5 = 999997 OR B4XAC5 = 999998 OR B4XAC5 = 999999) THEN B4XAC5 = .;
   IF (B4XADD5 = 99999997.0 OR B4XADD5 = 99999998.0 OR B4XADD5 = 99999999.0) THEN B4XADD5 = .;
   IF (B4XADU5 = 97 OR B4XADU5 = 98 OR B4XADU5 = 99) THEN B4XADU5 = .;
   IF (B4XAR5 = 97 OR B4XAR5 = 98 OR B4XAR5 = 99) THEN B4XAR5 = .;
   IF (B4XAF5 = 9997.0 OR B4XAF5 = 9998.0 OR B4XAF5 = 9999.0) THEN B4XAF5 = .;
   IF (B4XAFU5 = 7 OR B4XAFU5 = 8 OR B4XAFU5 = 9) THEN B4XAFU5 = .;
   IF (B4XAT5 = 9997.0 OR B4XAT5 = 9998.0 OR B4XAT5 = 9999.0) THEN B4XAT5 = .;
   IF (B4XATU5 = 7 OR B4XATU5 = 8 OR B4XATU5 = 9) THEN B4XATU5 = .;
   IF (B4XADC5 = 99997 OR B4XADC5 = 99998 OR B4XADC5 = 99999) THEN B4XADC5 = .;
   IF (B4XAC6 = 999997 OR B4XAC6 = 999998 OR B4XAC6 = 999999) THEN B4XAC6 = .;
   IF (B4XADD6 = 99999997.0 OR B4XADD6 = 99999998.0 OR B4XADD6 = 99999999.0) THEN B4XADD6 = .;
   IF (B4XADU6 = 97 OR B4XADU6 = 98 OR B4XADU6 = 99) THEN B4XADU6 = .;
   IF (B4XAR6 = 97 OR B4XAR6 = 98 OR B4XAR6 = 99) THEN B4XAR6 = .;
   IF (B4XAF6 = 9997.0 OR B4XAF6 = 9998.0 OR B4XAF6 = 9999.0) THEN B4XAF6 = .;
   IF (B4XAFU6 = 7 OR B4XAFU6 = 8 OR B4XAFU6 = 9) THEN B4XAFU6 = .;
   IF (B4XAT6 = 9997.0 OR B4XAT6 = 9998.0 OR B4XAT6 = 9999.0) THEN B4XAT6 = .;
   IF (B4XATU6 = 7 OR B4XATU6 = 8 OR B4XATU6 = 9) THEN B4XATU6 = .;
   IF (B4XADC6 = 99997 OR B4XADC6 = 99998 OR B4XADC6 = 99999) THEN B4XADC6 = .;
   IF (B4XAC7 = 999997 OR B4XAC7 = 999998 OR B4XAC7 = 999999) THEN B4XAC7 = .;
   IF (B4XADD7 = 99999997.0 OR B4XADD7 = 99999998.0 OR B4XADD7 = 99999999.0) THEN B4XADD7 = .;
   IF (B4XADU7 = 97 OR B4XADU7 = 98 OR B4XADU7 = 99) THEN B4XADU7 = .;
   IF (B4XAR7 = 97 OR B4XAR7 = 98 OR B4XAR7 = 99) THEN B4XAR7 = .;
   IF (B4XAF7 = 9997.0 OR B4XAF7 = 9998.0 OR B4XAF7 = 9999.0) THEN B4XAF7 = .;
   IF (B4XAFU7 = 7 OR B4XAFU7 = 8 OR B4XAFU7 = 9) THEN B4XAFU7 = .;
   IF (B4XAT7 = 9997.0 OR B4XAT7 = 9998.0 OR B4XAT7 = 9999.0) THEN B4XAT7 = .;
   IF (B4XATU7 = 7 OR B4XATU7 = 8 OR B4XATU7 = 9) THEN B4XATU7 = .;
   IF (B4XADC7 = 99997 OR B4XADC7 = 99998 OR B4XADC7 = 99999) THEN B4XADC7 = .;
   IF (B4XAC8 = 999997 OR B4XAC8 = 999998 OR B4XAC8 = 999999) THEN B4XAC8 = .;
   IF (B4XADD8 = 99999997.0 OR B4XADD8 = 99999998.0 OR B4XADD8 = 99999999.0) THEN B4XADD8 = .;
   IF (B4XADU8 = 97 OR B4XADU8 = 98 OR B4XADU8 = 99) THEN B4XADU8 = .;
   IF (B4XAR8 = 97 OR B4XAR8 = 98 OR B4XAR8 = 99) THEN B4XAR8 = .;
   IF (B4XAF8 = 9997.0 OR B4XAF8 = 9998.0 OR B4XAF8 = 9999.0) THEN B4XAF8 = .;
   IF (B4XAFU8 = 7 OR B4XAFU8 = 8 OR B4XAFU8 = 9) THEN B4XAFU8 = .;
   IF (B4XAT8 = 9997.0 OR B4XAT8 = 9998.0 OR B4XAT8 = 9999.0) THEN B4XAT8 = .;
   IF (B4XATU8 = 7 OR B4XATU8 = 8 OR B4XATU8 = 9) THEN B4XATU8 = .;
   IF (B4XADC8 = 99997 OR B4XADC8 = 99998 OR B4XADC8 = 99999) THEN B4XADC8 = .;
   IF (B4XAC9 = 999997 OR B4XAC9 = 999998 OR B4XAC9 = 999999) THEN B4XAC9 = .;
   IF (B4XADD9 = 99999997.0 OR B4XADD9 = 99999998.0 OR B4XADD9 = 99999999.0) THEN B4XADD9 = .;
   IF (B4XADU9 = 97 OR B4XADU9 = 98 OR B4XADU9 = 99) THEN B4XADU9 = .;
   IF (B4XAR9 = 97 OR B4XAR9 = 98 OR B4XAR9 = 99) THEN B4XAR9 = .;
   IF (B4XAF9 = 9997.0 OR B4XAF9 = 9998.0 OR B4XAF9 = 9999.0) THEN B4XAF9 = .;
   IF (B4XAFU9 = 7 OR B4XAFU9 = 8 OR B4XAFU9 = 9) THEN B4XAFU9 = .;
   IF (B4XAT9 = 9997.0 OR B4XAT9 = 9998.0 OR B4XAT9 = 9999.0) THEN B4XAT9 = .;
   IF (B4XATU9 = 7 OR B4XATU9 = 8 OR B4XATU9 = 9) THEN B4XATU9 = .;
   IF (B4XADC9 = 99997 OR B4XADC9 = 99998 OR B4XADC9 = 99999) THEN B4XADC9 = .;
   IF (B4XAC10 = 999997 OR B4XAC10 = 999998 OR B4XAC10 = 999999) THEN B4XAC10 = .;
   IF (B4XADD10 = 99999997.0 OR B4XADD10 = 99999998.0 OR B4XADD10 = 99999999.0) THEN B4XADD10 = .;
   IF (B4XADU10 = 97 OR B4XADU10 = 98 OR B4XADU10 = 99) THEN B4XADU10 = .;
   IF (B4XAR10 = 97 OR B4XAR10 = 98 OR B4XAR10 = 99) THEN B4XAR10 = .;
   IF (B4XAF10 = 9997.0 OR B4XAF10 = 9998.0 OR B4XAF10 = 9999.0) THEN B4XAF10 = .;
   IF (B4XAFU10 = 7 OR B4XAFU10 = 8 OR B4XAFU10 = 9) THEN B4XAFU10 = .;
   IF (B4XAT10 = 9997.0 OR B4XAT10 = 9998.0 OR B4XAT10 = 9999.0) THEN B4XAT10 = .;
   IF (B4XATU10 = 7 OR B4XATU10 = 8 OR B4XATU10 = 9) THEN B4XATU10 = .;
   IF (B4XADC10 = 99997 OR B4XADC10 = 99998 OR B4XADC10 = 99999) THEN B4XADC10 = .;
   IF (B4XAC11 = 999997 OR B4XAC11 = 999998 OR B4XAC11 = 999999) THEN B4XAC11 = .;
   IF (B4XADD11 = 99999997.0 OR B4XADD11 = 99999998.0 OR B4XADD11 = 99999999.0) THEN B4XADD11 = .;
   IF (B4XADU11 = 97 OR B4XADU11 = 98 OR B4XADU11 = 99) THEN B4XADU11 = .;
   IF (B4XAR11 = 97 OR B4XAR11 = 98 OR B4XAR11 = 99) THEN B4XAR11 = .;
   IF (B4XAF11 = 9997.0 OR B4XAF11 = 9998.0 OR B4XAF11 = 9999.0) THEN B4XAF11 = .;
   IF (B4XAFU11 = 7 OR B4XAFU11 = 8 OR B4XAFU11 = 9) THEN B4XAFU11 = .;
   IF (B4XAT11 = 9997.0 OR B4XAT11 = 9998.0 OR B4XAT11 = 9999.0) THEN B4XAT11 = .;
   IF (B4XATU11 = 7 OR B4XATU11 = 8 OR B4XATU11 = 9) THEN B4XATU11 = .;
   IF (B4XADC11 = 99997 OR B4XADC11 = 99998 OR B4XADC11 = 99999) THEN B4XADC11 = .;
   IF (B4XAC12 = 999997 OR B4XAC12 = 999998 OR B4XAC12 = 999999) THEN B4XAC12 = .;
   IF (B4XADD12 = 99999997.0 OR B4XADD12 = 99999998.0 OR B4XADD12 = 99999999.0) THEN B4XADD12 = .;
   IF (B4XADU12 = 97 OR B4XADU12 = 98 OR B4XADU12 = 99) THEN B4XADU12 = .;
   IF (B4XAR12 = 97 OR B4XAR12 = 98 OR B4XAR12 = 99) THEN B4XAR12 = .;
   IF (B4XAF12 = 9997.0 OR B4XAF12 = 9998.0 OR B4XAF12 = 9999.0) THEN B4XAF12 = .;
   IF (B4XAFU12 = 7 OR B4XAFU12 = 8 OR B4XAFU12 = 9) THEN B4XAFU12 = .;
   IF (B4XAT12 = 9997.0 OR B4XAT12 = 9998.0 OR B4XAT12 = 9999.0) THEN B4XAT12 = .;
   IF (B4XATU12 = 7 OR B4XATU12 = 8 OR B4XATU12 = 9) THEN B4XATU12 = .;
   IF (B4XADC12 = 99997 OR B4XADC12 = 99998 OR B4XADC12 = 99999) THEN B4XADC12 = .;
   IF (B4XM = 7 OR B4XM = 8 OR B4XM = 9) THEN B4XM = .;
   IF (B4XMM = 97 OR B4XMM = 98 OR B4XMM = 99) THEN B4XMM = .;
   IF (B4XMC1 = 99999997 OR B4XMC1 = 99999998 OR B4XMC1 = 99999999) THEN B4XMC1 = .;
   IF (B4XMC2 = 99999997 OR B4XMC2 = 99999998 OR B4XMC2 = 99999999) THEN B4XMC2 = .;
   IF (B4XMC3 = 99999997 OR B4XMC3 = 99999998 OR B4XMC3 = 99999999) THEN B4XMC3 = .;
   IF (B4XMC4 = 99999997 OR B4XMC4 = 99999998 OR B4XMC4 = 99999999) THEN B4XMC4 = .;
   IF (B4XMC5 = 99999997 OR B4XMC5 = 99999998 OR B4XMC5 = 99999999) THEN B4XMC5 = .;
   IF (B4XMC6 = 99999997 OR B4XMC6 = 99999998 OR B4XMC6 = 99999999) THEN B4XMC6 = .;
   IF (B4XMC7 = 99999997 OR B4XMC7 = 99999998 OR B4XMC7 = 99999999) THEN B4XMC7 = .;
   IF (B4XMC8 = 99999997 OR B4XMC8 = 99999998 OR B4XMC8 = 99999999) THEN B4XMC8 = .;
   IF (B4XXM = 7 OR B4XXM = 8 OR B4XXM = 9) THEN B4XXM = .;
   IF (B4PWHRF = 8) THEN B4PWHRF = .;
   IF (B4P1A = 999997.00 OR B4P1A = 999998.00 OR B4P1A = 999999.00) THEN B4P1A = .;
   IF (B4P1B = 99997.00 OR B4P1B = 99998.00 OR B4P1B = 99999.00) THEN B4P1B = .;
   IF (B4PBMI = 999997.00 OR B4PBMI = 999998.00 OR B4PBMI = 999999.00) THEN B4PBMI = .;
   IF (B4P1C = 9997.0 OR B4P1C = 9998.0 OR B4P1C = 9999.0) THEN B4P1C = .;
   IF (B4P1D = 997 OR B4P1D = 998 OR B4P1D = 999) THEN B4P1D = .;
   IF (B4P1E = 97 OR B4P1E = 98 OR B4P1E = 99) THEN B4P1E = .;
   IF (B4P1F1S = 997 OR B4P1F1S = 998 OR B4P1F1S = 999) THEN B4P1F1S = .;
   IF (B4P1F1D = 997 OR B4P1F1D = 998 OR B4P1F1D = 999) THEN B4P1F1D = .;
   IF (B4P1F2S = 997 OR B4P1F2S = 998 OR B4P1F2S = 999) THEN B4P1F2S = .;
   IF (B4P1F2D = 997 OR B4P1F2D = 998 OR B4P1F2D = 999) THEN B4P1F2D = .;
   IF (B4P1F3S = 997 OR B4P1F3S = 998 OR B4P1F3S = 999) THEN B4P1F3S = .;
   IF (B4P1F3D = 997 OR B4P1F3D = 998 OR B4P1F3D = 999) THEN B4P1F3D = .;
   IF (B4P1GS = 997 OR B4P1GS = 998 OR B4P1GS = 999) THEN B4P1GS = .;
   IF (B4P1GD = 997 OR B4P1GD = 998 OR B4P1GD = 999) THEN B4P1GD = .;
   IF (B4P1GS23 = 998) THEN B4P1GS23 = .;
   IF (B4P1GD23 = 998) THEN B4P1GD23 = .;
   IF (B4P2A = 999997.0 OR B4P2A = 999998.0 OR B4P2A = 999999.0) THEN B4P2A = .;
   IF (B4P2B = 999997.0 OR B4P2B = 999998.0 OR B4P2B = 999999.0) THEN B4P2B = .;
   IF (B4P2C = 999997.0 OR B4P2C = 999998.0 OR B4P2C = 999999.0) THEN B4P2C = .;
   IF (B4P2D = 999997.00 OR B4P2D = 999998.00 OR B4P2D = 999999.00) THEN B4P2D = .;
   IF (B4PWHR = 999998.00 OR B4PWHR = 999999.00) THEN B4PWHR = .;
   IF (B4P3A = 7 OR B4P3A = 8 OR B4P3A = 9) THEN B4P3A = .;
   IF (B4P3A1 = 7 OR B4P3A1 = 8 OR B4P3A1 = 9) THEN B4P3A1 = .;
   IF (B4P3A2R1 = 97 OR B4P3A2R1 = 98 OR B4P3A2R1 = 99) THEN B4P3A2R1 = .;
   IF (B4P3A2R2 = 97 OR B4P3A2R2 = 98 OR B4P3A2R2 = 99) THEN B4P3A2R2 = .;
   IF (B4P3A2R3 = 97 OR B4P3A2R3 = 98 OR B4P3A2R3 = 99) THEN B4P3A2R3 = .;
   IF (B4P3A2L1 = 97 OR B4P3A2L1 = 98 OR B4P3A2L1 = 99) THEN B4P3A2L1 = .;
   IF (B4P3A2L2 = 97 OR B4P3A2L2 = 98 OR B4P3A2L2 = 99) THEN B4P3A2L2 = .;
   IF (B4P3A2L3 = 97 OR B4P3A2L3 = 98 OR B4P3A2L3 = 99) THEN B4P3A2L3 = .;
   IF (B4P3B1 = 7 OR B4P3B1 = 8 OR B4P3B1 = 9) THEN B4P3B1 = .;
   IF (B4P3B2R = 997 OR B4P3B2R = 998 OR B4P3B2R = 999) THEN B4P3B2R = .;
   IF (B4P3B2L = 997 OR B4P3B2L = 998 OR B4P3B2L = 999) THEN B4P3B2L = .;
   IF (B4P3B3R = 8 OR B4P3B3R = 9) THEN B4P3B3R = .;
   IF (B4P3B4 = 7 OR B4P3B4 = 8 OR B4P3B4 = 9) THEN B4P3B4 = .;
   IF (B4P3B4A = 97 OR B4P3B4A = 98 OR B4P3B4A = 99) THEN B4P3B4A = .;
   IF (B4P3B5R = 997 OR B4P3B5R = 998 OR B4P3B5R = 999) THEN B4P3B5R = .;
   IF (B4P3B5L = 997 OR B4P3B5L = 998 OR B4P3B5L = 999) THEN B4P3B5L = .;
   IF (B4P3B6 = 7 OR B4P3B6 = 8 OR B4P3B6 = 9) THEN B4P3B6 = .;
   IF (B4P3C1 = 7 OR B4P3C1 = 8 OR B4P3C1 = 9) THEN B4P3C1 = .;
   IF (B4P3C2 = 997 OR B4P3C2 = 998 OR B4P3C2 = 999) THEN B4P3C2 = .;
   IF (B4P3C3 = 7 OR B4P3C3 = 8 OR B4P3C3 = 9) THEN B4P3C3 = .;
   IF (B4P3D = 7 OR B4P3D = 8 OR B4P3D = 9) THEN B4P3D = .;
   IF (B4P3E = 7 OR B4P3E = 8 OR B4P3E = 9) THEN B4P3E = .;
   IF (B4P3F = 7 OR B4P3F = 8 OR B4P3F = 9) THEN B4P3F = .;
   IF (B4P3G = 7 OR B4P3G = 8 OR B4P3G = 9) THEN B4P3G = .;
   IF (B4P3H1R = 8 OR B4P3H1R = 9) THEN B4P3H1R = .;
   IF (B4P3H2 = 97 OR B4P3H2 = 98 OR B4P3H2 = 99) THEN B4P3H2 = .;
   IF (B4P3H3 = 97 OR B4P3H3 = 98 OR B4P3H3 = 99) THEN B4P3H3 = .;
   IF (B4P3I1 = 7 OR B4P3I1 = 8 OR B4P3I1 = 9) THEN B4P3I1 = .;
   IF (B4P3I2 = 97 OR B4P3I2 = 98 OR B4P3I2 = 99) THEN B4P3I2 = .;
   IF (B4P3I3R = 8 OR B4P3I3R = 9) THEN B4P3I3R = .;
   IF (B4PMD = 7 OR B4PMD = 8 OR B4PMD = 9) THEN B4PMD = .;
   IF (B4P4B = 9 OR B4P4B = 8 OR B4P4B = 7) THEN B4P4B = .;
   IF (B4P5A1 = 99 OR B4P5A1 = 98 OR B4P5A1 = 97) THEN B4P5A1 = .;
   IF (B4P5A2 = 9 OR B4P5A2 = 8 OR B4P5A2 = 7) THEN B4P5A2 = .;
   IF (B4P5A3 = 99 OR B4P5A3 = 98 OR B4P5A3 = 97) THEN B4P5A3 = .;
   IF (B4P5A4 = 9 OR B4P5A4 = 8 OR B4P5A4 = 7) THEN B4P5A4 = .;
   IF (B4P5B = 9 OR B4P5B = 8 OR B4P5B = 7) THEN B4P5B = .;
   IF (B4P5B1 = 9 OR B4P5B1 = 8 OR B4P5B1 = 7) THEN B4P5B1 = .;
   IF (B4P5B2 = 9 OR B4P5B2 = 8 OR B4P5B2 = 7) THEN B4P5B2 = .;
   IF (B4P5B3 = 9 OR B4P5B3 = 8 OR B4P5B3 = 7) THEN B4P5B3 = .;
   IF (B4P5B4 = 9 OR B4P5B4 = 8 OR B4P5B4 = 7) THEN B4P5B4 = .;
   IF (B4P5B5 = 9 OR B4P5B5 = 8 OR B4P5B5 = 7) THEN B4P5B5 = .;
   IF (B4P5B6 = 9 OR B4P5B6 = 8 OR B4P5B6 = 7) THEN B4P5B6 = .;
   IF (B4P5B7 = 9 OR B4P5B7 = 8 OR B4P5B7 = 7) THEN B4P5B7 = .;
   IF (B4P5B8 = 9 OR B4P5B8 = 8 OR B4P5B8 = 7) THEN B4P5B8 = .;
   IF (B4P5B9 = 9 OR B4P5B9 = 8 OR B4P5B9 = 7) THEN B4P5B9 = .;
   IF (B4P5B10 = 9 OR B4P5B10 = 8 OR B4P5B10 = 7) THEN B4P5B10 = .;
   IF (B4P5B11 = 9 OR B4P5B11 = 8 OR B4P5B11 = 7) THEN B4P5B11 = .;
   IF (B4P5B12 = 9 OR B4P5B12 = 8 OR B4P5B12 = 7) THEN B4P5B12 = .;
   IF (B4P5B13 = 9 OR B4P5B13 = 8 OR B4P5B13 = 7) THEN B4P5B13 = .;
   IF (B4P5B14 = 9 OR B4P5B14 = 8 OR B4P5B14 = 7) THEN B4P5B14 = .;
   IF (B4P5B15 = 9 OR B4P5B15 = 8 OR B4P5B15 = 7) THEN B4P5B15 = .;
   IF (B4P5B16 = 9 OR B4P5B16 = 8 OR B4P5B16 = 7) THEN B4P5B16 = .;
   IF (B4P5B17 = 9 OR B4P5B17 = 8 OR B4P5B17 = 7) THEN B4P5B17 = .;
   IF (B4P6A1 = 9 OR B4P6A1 = 8 OR B4P6A1 = 7) THEN B4P6A1 = .;
   IF (B4P6A2 = 9 OR B4P6A2 = 8 OR B4P6A2 = 7) THEN B4P6A2 = .;
   IF (B4P6B = 9 OR B4P6B = 8 OR B4P6B = 7) THEN B4P6B = .;
   IF (B4P6C = 9 OR B4P6C = 8 OR B4P6C = 7) THEN B4P6C = .;
   IF (B4P6D1 = 9 OR B4P6D1 = 8 OR B4P6D1 = 7) THEN B4P6D1 = .;
   IF (B4P6D2 = 9 OR B4P6D2 = 8 OR B4P6D2 = 7) THEN B4P6D2 = .;
   IF (B4P6D3 = 9 OR B4P6D3 = 8 OR B4P6D3 = 7) THEN B4P6D3 = .;
   IF (B4P6D4 = 9 OR B4P6D4 = 8 OR B4P6D4 = 7) THEN B4P6D4 = .;
   IF (B4P6E1 = 9 OR B4P6E1 = 8 OR B4P6E1 = 7) THEN B4P6E1 = .;
   IF (B4P6E2 = 9 OR B4P6E2 = 8 OR B4P6E2 = 7) THEN B4P6E2 = .;
   IF (B4P6E3 = 9 OR B4P6E3 = 8 OR B4P6E3 = 7) THEN B4P6E3 = .;
   IF (B4P6E4 = 9 OR B4P6E4 = 8 OR B4P6E4 = 7) THEN B4P6E4 = .;
   IF (B4P6E4R = 9 OR B4P6E4R = 8 OR B4P6E4R = 7) THEN B4P6E4R = .;
   IF (B4P6E4L = 9 OR B4P6E4L = 8 OR B4P6E4L = 7) THEN B4P6E4L = .;
   IF (B4P6F1 = 97 OR B4P6F1 = 98 OR B4P6F1 = 99) THEN B4P6F1 = .;
   IF (B4P6F2 = 97 OR B4P6F2 = 98 OR B4P6F2 = 99) THEN B4P6F2 = .;
   IF (B4P6F3 = 97 OR B4P6F3 = 98 OR B4P6F3 = 99) THEN B4P6F3 = .;
   IF (B4P6F4 = 97 OR B4P6F4 = 98 OR B4P6F4 = 99) THEN B4P6F4 = .;
   IF (B4P6F5 = 97 OR B4P6F5 = 98 OR B4P6F5 = 99) THEN B4P6F5 = .;
   IF (B4P7A = 9 OR B4P7A = 8 OR B4P7A = 7) THEN B4P7A = .;
   IF (B4P7A1R = 9 OR B4P7A1R = 8 OR B4P7A1R = 7) THEN B4P7A1R = .;
   IF (B4P7A1L = 9 OR B4P7A1L = 8 OR B4P7A1L = 7) THEN B4P7A1L = .;
   IF (B4P7A2R = 9 OR B4P7A2R = 8 OR B4P7A2R = 7) THEN B4P7A2R = .;
   IF (B4P7A2L = 9 OR B4P7A2L = 8 OR B4P7A2L = 7) THEN B4P7A2L = .;
   IF (B4P8A = 99 OR B4P8A = 97 OR B4P8A = 98) THEN B4P8A = .;
   IF (B4P8B1 = 97 OR B4P8B1 = 98 OR B4P8B1 = 99) THEN B4P8B1 = .;
   IF (B4P8B2 = 99 OR B4P8B2 = 98 OR B4P8B2 = 97) THEN B4P8B2 = .;
   IF (B4P8B3 = 9 OR B4P8B3 = 8 OR B4P8B3 = 7) THEN B4P8B3 = .;
   IF (B4P8B4 = 9 OR B4P8B4 = 8 OR B4P8B4 = 7) THEN B4P8B4 = .;
   IF (B4P8B5 = 9 OR B4P8B5 = 8 OR B4P8B5 = 7) THEN B4P8B5 = .;
   IF (B4P8B6 = 9 OR B4P8B6 = 8 OR B4P8B6 = 7) THEN B4P8B6 = .;
   IF (B4P8B7 = 9 OR B4P8B7 = 8 OR B4P8B7 = 7) THEN B4P8B7 = .;
   IF (B4P8C1AD = 7 OR B4P8C1AD = 8 OR B4P8C1AD = 9) THEN B4P8C1AD = .;
   IF (B4P8C1A = 97 OR B4P8C1A = 98 OR B4P8C1A = 99) THEN B4P8C1A = .;
   IF (B4P8C1HO = 97 OR B4P8C1HO = 98 OR B4P8C1HO = 99) THEN B4P8C1HO = .;
   IF (B4P8C2AD = 7 OR B4P8C2AD = 8 OR B4P8C2AD = 9) THEN B4P8C2AD = .;
   IF (B4P8C2A = 97 OR B4P8C2A = 98 OR B4P8C2A = 99) THEN B4P8C2A = .;
   IF (B4P8C2HO = 97 OR B4P8C2HO = 98 OR B4P8C2HO = 99) THEN B4P8C2HO = .;
   IF (B4P8D = 9 OR B4P8D = 8 OR B4P8D = 7) THEN B4P8D = .;
   IF (B4P9A = 9 OR B4P9A = 8 OR B4P9A = 7) THEN B4P9A = .;
   IF (B4P9A1 = 9 OR B4P9A1 = 8 OR B4P9A1 = 7) THEN B4P9A1 = .;
   IF (B4P9A2 = 9 OR B4P9A2 = 8 OR B4P9A2 = 7) THEN B4P9A2 = .;
   IF (B4P9A3 = 9 OR B4P9A3 = 8 OR B4P9A3 = 7) THEN B4P9A3 = .;
   IF (B4P9A4 = 9 OR B4P9A4 = 8 OR B4P9A4 = 7) THEN B4P9A4 = .;
   IF (B4P9B = 9 OR B4P9B = 8 OR B4P9B = 7) THEN B4P9B = .;
   IF (B4P9C = 9 OR B4P9C = 8 OR B4P9C = 7) THEN B4P9C = .;
   IF (B4P9D = 9 OR B4P9D = 8 OR B4P9D = 7) THEN B4P9D = .;
   IF (B4P9D1 = 9 OR B4P9D1 = 8 OR B4P9D1 = 7) THEN B4P9D1 = .;
   IF (B4P9D2 = 9 OR B4P9D2 = 8 OR B4P9D2 = 7) THEN B4P9D2 = .;
   IF (B4P9D3 = 9 OR B4P9D3 = 8 OR B4P9D3 = 7) THEN B4P9D3 = .;
   IF (B4P9D3N = 99 OR B4P9D3N = 98 OR B4P9D3N = 97) THEN B4P9D3N = .;
   IF (B4P9D3S = 997.0 OR B4P9D3S = 998.0 OR B4P9D3S = 999.0) THEN B4P9D3S = .;
   IF (B4P10A1 = 9 OR B4P10A1 = 8 OR B4P10A1 = 7) THEN B4P10A1 = .;
   IF (B4P10A2 = 9 OR B4P10A2 = 8 OR B4P10A2 = 7) THEN B4P10A2 = .;
   IF (B4P10A3 = 9 OR B4P10A3 = 8 OR B4P10A3 = 7) THEN B4P10A3 = .;
   IF (B4P10A4 = 9 OR B4P10A4 = 8 OR B4P10A4 = 7) THEN B4P10A4 = .;
   IF (B4P10B1 = 9 OR B4P10B1 = 8 OR B4P10B1 = 7) THEN B4P10B1 = .;
   IF (B4P10B2 = 9 OR B4P10B2 = 8 OR B4P10B2 = 7) THEN B4P10B2 = .;
   IF (B4P10B2A = 9 OR B4P10B2A = 8 OR B4P10B2A = 7) THEN B4P10B2A = .;
   IF (B4P10B2B = 9 OR B4P10B2B = 8 OR B4P10B2B = 7) THEN B4P10B2B = .;
   IF (B4P10B3 = 9 OR B4P10B3 = 8 OR B4P10B3 = 7) THEN B4P10B3 = .;
   IF (B4P10C = 9 OR B4P10C = 8 OR B4P10C = 7) THEN B4P10C = .;
   IF (B4P10C1R = 9 OR B4P10C1R = 8 OR B4P10C1R = 7) THEN B4P10C1R = .;
   IF (B4P10C1L = 9 OR B4P10C1L = 8 OR B4P10C1L = 7) THEN B4P10C1L = .;
   IF (B4P10C2R = 9 OR B4P10C2R = 8 OR B4P10C2R = 7) THEN B4P10C2R = .;
   IF (B4P10C2L = 9 OR B4P10C2L = 8 OR B4P10C2L = 7) THEN B4P10C2L = .;
   IF (B4P10C3R = 9 OR B4P10C3R = 8 OR B4P10C3R = 7) THEN B4P10C3R = .;
   IF (B4P10C3L = 9 OR B4P10C3L = 8 OR B4P10C3L = 7) THEN B4P10C3L = .;
   IF (B4P10C4R = 9 OR B4P10C4R = 8 OR B4P10C4R = 7) THEN B4P10C4R = .;
   IF (B4P10C4L = 9 OR B4P10C4L = 8 OR B4P10C4L = 7) THEN B4P10C4L = .;
   IF (B4P10C5R = 9 OR B4P10C5R = 8 OR B4P10C5R = 7) THEN B4P10C5R = .;
   IF (B4P10C5L = 9 OR B4P10C5L = 8 OR B4P10C5L = 7) THEN B4P10C5L = .;
   IF (B4P10C6R = 9 OR B4P10C6R = 8 OR B4P10C6R = 7) THEN B4P10C6R = .;
   IF (B4P10C6L = 9 OR B4P10C6L = 8 OR B4P10C6L = 7) THEN B4P10C6L = .;
   IF (B4P10C7R = 9 OR B4P10C7R = 8 OR B4P10C7R = 7) THEN B4P10C7R = .;
   IF (B4P10C7L = 9 OR B4P10C7L = 8 OR B4P10C7L = 7) THEN B4P10C7L = .;
   IF (B4P11A1 = 9 OR B4P11A1 = 8 OR B4P11A1 = 7) THEN B4P11A1 = .;
   IF (B4P11B = 99 OR B4P11B = 98 OR B4P11B = 97) THEN B4P11B = .;
   IF (B4P11B1 = 9 OR B4P11B1 = 8 OR B4P11B1 = 7) THEN B4P11B1 = .;
   IF (B4P11B1A = 9 OR B4P11B1A = 8 OR B4P11B1A = 7) THEN B4P11B1A = .;
   IF (B4P11B1B = 9 OR B4P11B1B = 8 OR B4P11B1B = 7) THEN B4P11B1B = .;
   IF (B4P11B1C = 9 OR B4P11B1C = 8 OR B4P11B1C = 7) THEN B4P11B1C = .;
   IF (B4P11B1D = 9 OR B4P11B1D = 8 OR B4P11B1D = 7) THEN B4P11B1D = .;
   IF (B4P11B2 = 9 OR B4P11B2 = 8 OR B4P11B2 = 7) THEN B4P11B2 = .;
   IF (B4P11B2A = 9 OR B4P11B2A = 8 OR B4P11B2A = 7) THEN B4P11B2A = .;
   IF (B4P11B2B = 9 OR B4P11B2B = 8 OR B4P11B2B = 7) THEN B4P11B2B = .;
   IF (B4P11B2C = 9 OR B4P11B2C = 8 OR B4P11B2C = 7) THEN B4P11B2C = .;
   IF (B4P11B2D = 9 OR B4P11B2D = 8 OR B4P11B2D = 7) THEN B4P11B2D = .;
   IF (B4P11B3 = 9 OR B4P11B3 = 8 OR B4P11B3 = 7) THEN B4P11B3 = .;
   IF (B4P12A = 9 OR B4P12A = 8 OR B4P12A = 7) THEN B4P12A = .;
   IF (B4P12B = 99 OR B4P12B = 98 OR B4P12B = 97) THEN B4P12B = .;
   IF (B4P12C = 9 OR B4P12C = 8 OR B4P12C = 7) THEN B4P12C = .;
   IF (B4P12C1 = 9 OR B4P12C1 = 8 OR B4P12C1 = 7) THEN B4P12C1 = .;
   IF (B4P12C1A = 9 OR B4P12C1A = 8 OR B4P12C1A = 7) THEN B4P12C1A = .;
   IF (B4P12C1B = 9 OR B4P12C1B = 8 OR B4P12C1B = 7) THEN B4P12C1B = .;
   IF (B4P12C1C = 9 OR B4P12C1C = 8 OR B4P12C1C = 7) THEN B4P12C1C = .;
   IF (B4P12C1D = 9 OR B4P12C1D = 8 OR B4P12C1D = 7) THEN B4P12C1D = .;
   IF (B4P12C1E = 9 OR B4P12C1E = 8 OR B4P12C1E = 7) THEN B4P12C1E = .;
   IF (B4P12C1F = 9 OR B4P12C1F = 8 OR B4P12C1F = 7) THEN B4P12C1F = .;
   IF (B4P12C2 = 9 OR B4P12C2 = 8 OR B4P12C2 = 7) THEN B4P12C2 = .;
   IF (B4P12C2A = 9 OR B4P12C2A = 8 OR B4P12C2A = 7) THEN B4P12C2A = .;
   IF (B4P12C2B = 9 OR B4P12C2B = 8 OR B4P12C2B = 7) THEN B4P12C2B = .;
   IF (B4P12C2C = 9 OR B4P12C2C = 8 OR B4P12C2C = 7) THEN B4P12C2C = .;
   IF (B4P12C2D = 9 OR B4P12C2D = 8 OR B4P12C2D = 7) THEN B4P12C2D = .;
   IF (B4P12C2E = 9 OR B4P12C2E = 8 OR B4P12C2E = 7) THEN B4P12C2E = .;
   IF (B4P12C2F = 9 OR B4P12C2F = 8 OR B4P12C2F = 7) THEN B4P12C2F = .;
   IF (B4P12C3 = 9 OR B4P12C3 = 8 OR B4P12C3 = 7) THEN B4P12C3 = .;
   IF (B4P12C3A = 9 OR B4P12C3A = 8 OR B4P12C3A = 7) THEN B4P12C3A = .;
   IF (B4P12C3B = 9 OR B4P12C3B = 8 OR B4P12C3B = 7) THEN B4P12C3B = .;
   IF (B4P12C3C = 9 OR B4P12C3C = 8 OR B4P12C3C = 7) THEN B4P12C3C = .;
   IF (B4P12C3D = 9 OR B4P12C3D = 8 OR B4P12C3D = 7) THEN B4P12C3D = .;
   IF (B4P12C3E = 9 OR B4P12C3E = 8 OR B4P12C3E = 7) THEN B4P12C3E = .;
   IF (B4P12C3F = 9 OR B4P12C3F = 8 OR B4P12C3F = 7) THEN B4P12C3F = .;
   IF (B4P12C4 = 9 OR B4P12C4 = 8 OR B4P12C4 = 7) THEN B4P12C4 = .;
   IF (B4P12C4A = 9 OR B4P12C4A = 8 OR B4P12C4A = 7) THEN B4P12C4A = .;
   IF (B4P12C4B = 9 OR B4P12C4B = 8 OR B4P12C4B = 7) THEN B4P12C4B = .;
   IF (B4P12C4C = 9 OR B4P12C4C = 8 OR B4P12C4C = 7) THEN B4P12C4C = .;
   IF (B4P12C4D = 9 OR B4P12C4D = 8 OR B4P12C4D = 7) THEN B4P12C4D = .;
   IF (B4P12C4E = 9 OR B4P12C4E = 8 OR B4P12C4E = 7) THEN B4P12C4E = .;
   IF (B4P12C4F = 9 OR B4P12C4F = 8 OR B4P12C4F = 7) THEN B4P12C4F = .;
   IF (B4P12C5 = 9 OR B4P12C5 = 8 OR B4P12C5 = 7) THEN B4P12C5 = .;
   IF (B4P12C5A = 9 OR B4P12C5A = 8 OR B4P12C5A = 7) THEN B4P12C5A = .;
   IF (B4P12C5B = 9 OR B4P12C5B = 8 OR B4P12C5B = 7) THEN B4P12C5B = .;
   IF (B4P12C5C = 9 OR B4P12C5C = 8 OR B4P12C5C = 7) THEN B4P12C5C = .;
   IF (B4P12C5D = 9 OR B4P12C5D = 8 OR B4P12C5D = 7) THEN B4P12C5D = .;
   IF (B4P12C5E = 9 OR B4P12C5E = 8 OR B4P12C5E = 7) THEN B4P12C5E = .;
   IF (B4P12C5F = 9 OR B4P12C5F = 8 OR B4P12C5F = 7) THEN B4P12C5F = .;
   IF (B4P12C6 = 9 OR B4P12C6 = 8 OR B4P12C6 = 7) THEN B4P12C6 = .;
   IF (B4P12C7 = 9 OR B4P12C7 = 8 OR B4P12C7 = 7) THEN B4P12C7 = .;
   IF (B4P12D = 99 OR B4P12D = 98 OR B4P12D = 97) THEN B4P12D = .;
   IF (B4P12E1 = 9 OR B4P12E1 = 8 OR B4P12E1 = 7) THEN B4P12E1 = .;
   IF (B4P12E2 = 9 OR B4P12E2 = 8 OR B4P12E2 = 7) THEN B4P12E2 = .;
   IF (B4P12E3 = 9 OR B4P12E3 = 8 OR B4P12E3 = 7) THEN B4P12E3 = .;
   IF (B4P12E4 = 9 OR B4P12E4 = 8 OR B4P12E4 = 7) THEN B4P12E4 = .;
   IF (B4P12E5 = 9 OR B4P12E5 = 8 OR B4P12E5 = 7) THEN B4P12E5 = .;
   IF (B4P13 = 9 OR B4P13 = 8 OR B4P13 = 7) THEN B4P13 = .;
   IF (B4P13A1 = 9 OR B4P13A1 = 8 OR B4P13A1 = 7) THEN B4P13A1 = .;
   IF (B4P13A2 = 9 OR B4P13A2 = 8 OR B4P13A2 = 7) THEN B4P13A2 = .;
   IF (B4P13A3 = 9 OR B4P13A3 = 8 OR B4P13A3 = 7) THEN B4P13A3 = .;
   IF (B4P13A4 = 9 OR B4P13A4 = 8 OR B4P13A4 = 7) THEN B4P13A4 = .;
   IF (B4P13B1 = 9 OR B4P13B1 = 8 OR B4P13B1 = 7) THEN B4P13B1 = .;
   IF (B4P13B1A = 9 OR B4P13B1A = 8 OR B4P13B1A = 7) THEN B4P13B1A = .;
   IF (B4P13B1B = 9 OR B4P13B1B = 8 OR B4P13B1B = 7) THEN B4P13B1B = .;
   IF (B4P13B1C = 9 OR B4P13B1C = 8 OR B4P13B1C = 7) THEN B4P13B1C = .;
   IF (B4P13B1D = 9 OR B4P13B1D = 8 OR B4P13B1D = 7) THEN B4P13B1D = .;
   IF (B4P13B2 = 9 OR B4P13B2 = 8 OR B4P13B2 = 7) THEN B4P13B2 = .;
   IF (B4P13B2A = 9 OR B4P13B2A = 8 OR B4P13B2A = 7) THEN B4P13B2A = .;
   IF (B4P13B2B = 9 OR B4P13B2B = 8 OR B4P13B2B = 7) THEN B4P13B2B = .;
   IF (B4P13B2C = 9 OR B4P13B2C = 8 OR B4P13B2C = 7) THEN B4P13B2C = .;
   IF (B4P13B2D = 9 OR B4P13B2D = 8 OR B4P13B2D = 7) THEN B4P13B2D = .;
   IF (B4P13B3 = 9 OR B4P13B3 = 8 OR B4P13B3 = 7) THEN B4P13B3 = .;
   IF (B4P13B3A = 9 OR B4P13B3A = 8 OR B4P13B3A = 7) THEN B4P13B3A = .;
   IF (B4P13B3B = 9 OR B4P13B3B = 8 OR B4P13B3B = 7) THEN B4P13B3B = .;
   IF (B4P13B3C = 9 OR B4P13B3C = 8 OR B4P13B3C = 7) THEN B4P13B3C = .;
   IF (B4P13B3D = 9 OR B4P13B3D = 8 OR B4P13B3D = 7) THEN B4P13B3D = .;
   IF (B4P13B4 = 9 OR B4P13B4 = 8 OR B4P13B4 = 7) THEN B4P13B4 = .;
   IF (B4P13B4A = 9 OR B4P13B4A = 8 OR B4P13B4A = 7) THEN B4P13B4A = .;
   IF (B4P13B4B = 9 OR B4P13B4B = 8 OR B4P13B4B = 7) THEN B4P13B4B = .;
   IF (B4P13B4C = 9 OR B4P13B4C = 8 OR B4P13B4C = 7) THEN B4P13B4C = .;
   IF (B4P13B4D = 9 OR B4P13B4D = 8 OR B4P13B4D = 7) THEN B4P13B4D = .;
   IF (B4P13B5 = 9 OR B4P13B5 = 8 OR B4P13B5 = 7) THEN B4P13B5 = .;
   IF (B4P13B5A = 9 OR B4P13B5A = 8 OR B4P13B5A = 7) THEN B4P13B5A = .;
   IF (B4P13B5B = 9 OR B4P13B5B = 8 OR B4P13B5B = 7) THEN B4P13B5B = .;
   IF (B4P13B5C = 9 OR B4P13B5C = 8 OR B4P13B5C = 7) THEN B4P13B5C = .;
   IF (B4P13B5D = 9 OR B4P13B5D = 8 OR B4P13B5D = 7) THEN B4P13B5D = .;
   IF (B4P13C1R = 9 OR B4P13C1R = 8 OR B4P13C1R = 7) THEN B4P13C1R = .;
   IF (B4P13C1L = 9 OR B4P13C1L = 8 OR B4P13C1L = 7) THEN B4P13C1L = .;
   IF (B4P13C2R = 9 OR B4P13C2R = 8 OR B4P13C2R = 7) THEN B4P13C2R = .;
   IF (B4P13C2L = 9 OR B4P13C2L = 8 OR B4P13C2L = 7) THEN B4P13C2L = .;
   IF (B4P13C3R = 9 OR B4P13C3R = 8 OR B4P13C3R = 7) THEN B4P13C3R = .;
   IF (B4P13C3L = 9 OR B4P13C3L = 8 OR B4P13C3L = 7) THEN B4P13C3L = .;
   IF (B4P13C4A = 9 OR B4P13C4A = 8 OR B4P13C4A = 7) THEN B4P13C4A = .;
   IF (B4P13D1 = 9 OR B4P13D1 = 8 OR B4P13D1 = 7) THEN B4P13D1 = .;
   IF (B4P13D1A = 9 OR B4P13D1A = 8 OR B4P13D1A = 7) THEN B4P13D1A = .;
   IF (B4P13D1B = 9 OR B4P13D1B = 8 OR B4P13D1B = 7) THEN B4P13D1B = .;
   IF (B4P13D1C = 9 OR B4P13D1C = 8 OR B4P13D1C = 7) THEN B4P13D1C = .;
   IF (B4P13D1D = 9 OR B4P13D1D = 8 OR B4P13D1D = 7) THEN B4P13D1D = .;
   IF (B4P13D2 = 9 OR B4P13D2 = 8 OR B4P13D2 = 7) THEN B4P13D2 = .;
   IF (B4P13D2A = 9 OR B4P13D2A = 8 OR B4P13D2A = 7) THEN B4P13D2A = .;
   IF (B4P13D2B = 9 OR B4P13D2B = 8 OR B4P13D2B = 7) THEN B4P13D2B = .;
   IF (B4P13D2C = 9 OR B4P13D2C = 8 OR B4P13D2C = 7) THEN B4P13D2C = .;
   IF (B4P13D2D = 9 OR B4P13D2D = 8 OR B4P13D2D = 7) THEN B4P13D2D = .;
   IF (B4P13D3 = 9 OR B4P13D3 = 8 OR B4P13D3 = 7) THEN B4P13D3 = .;
   IF (B4P13D3A = 9 OR B4P13D3A = 8 OR B4P13D3A = 7) THEN B4P13D3A = .;
   IF (B4P13D3B = 9 OR B4P13D3B = 8 OR B4P13D3B = 7) THEN B4P13D3B = .;
   IF (B4P13D3C = 9 OR B4P13D3C = 8 OR B4P13D3C = 7) THEN B4P13D3C = .;
   IF (B4P13D3D = 9 OR B4P13D3D = 8 OR B4P13D3D = 7) THEN B4P13D3D = .;
   IF (B4P13D4 = 9 OR B4P13D4 = 8 OR B4P13D4 = 7) THEN B4P13D4 = .;
   IF (B4P13D4A = 9 OR B4P13D4A = 8 OR B4P13D4A = 7) THEN B4P13D4A = .;
   IF (B4P13D4B = 9 OR B4P13D4B = 8 OR B4P13D4B = 7) THEN B4P13D4B = .;
   IF (B4P13D4C = 9 OR B4P13D4C = 8 OR B4P13D4C = 7) THEN B4P13D4C = .;
   IF (B4P13D4D = 9 OR B4P13D4D = 8 OR B4P13D4D = 7) THEN B4P13D4D = .;
   IF (B4P13D5 = 9 OR B4P13D5 = 8 OR B4P13D5 = 7) THEN B4P13D5 = .;
   IF (B4P13D5A = 9 OR B4P13D5A = 8 OR B4P13D5A = 7) THEN B4P13D5A = .;
   IF (B4P13D5B = 9 OR B4P13D5B = 8 OR B4P13D5B = 7) THEN B4P13D5B = .;
   IF (B4P13D5C = 9 OR B4P13D5C = 8 OR B4P13D5C = 7) THEN B4P13D5C = .;
   IF (B4P13D5D = 9 OR B4P13D5D = 8 OR B4P13D5D = 7) THEN B4P13D5D = .;
   IF (B4P13E1 = 9 OR B4P13E1 = 8 OR B4P13E1 = 7) THEN B4P13E1 = .;
   IF (B4P13E1A = 9 OR B4P13E1A = 8 OR B4P13E1A = 7) THEN B4P13E1A = .;
   IF (B4P13E1B = 9 OR B4P13E1B = 8 OR B4P13E1B = 7) THEN B4P13E1B = .;
   IF (B4P13E1C = 9 OR B4P13E1C = 8 OR B4P13E1C = 7) THEN B4P13E1C = .;
   IF (B4P13E1D = 9 OR B4P13E1D = 8 OR B4P13E1D = 7) THEN B4P13E1D = .;
   IF (B4P13E2 = 9 OR B4P13E2 = 8 OR B4P13E2 = 7) THEN B4P13E2 = .;
   IF (B4P13E3 = 9 OR B4P13E3 = 8 OR B4P13E3 = 7) THEN B4P13E3 = .;
   IF (B4BHA1C = 997.00 OR B4BHA1C = 998.00 OR B4BHA1C = 999.00) THEN B4BHA1C = .;
   IF (B4BCHOL = 997 OR B4BCHOL = 998 OR B4BCHOL = 999) THEN B4BCHOL = .;
   IF (B4BTRIGL = 9997 OR B4BTRIGL = 9998 OR B4BTRIGL = 9999) THEN B4BTRIGL = .;
   IF (B4BHDL = 997 OR B4BHDL = 998 OR B4BHDL = 999) THEN B4BHDL = .;
   IF (B4BLDL = 997 OR B4BLDL = 998 OR B4BLDL = 999) THEN B4BLDL = .;
   IF (B4BRTHDL = 9997.00 OR B4BRTHDL = 9998.00 OR B4BRTHDL = 9999.00) THEN B4BRTHDL = .;
   IF (B4BDHEAS = 9997.0 OR B4BDHEAS = 9998.0 OR B4BDHEAS = 9999.0) THEN B4BDHEAS = .;
   IF (B4BDHEA = 9997.00 OR B4BDHEA = 9998.00 OR B4BDHEA = 9999.00) THEN B4BDHEA = .;
   IF (B4BSCREA = 997.0 OR B4BSCREA = 998.0 OR B4BSCREA = 999.0) THEN B4BSCREA = .;
   IF (B4BIL6 = 99997.00 OR B4BIL6 = 99998.00 OR B4BIL6 = 99999.00) THEN B4BIL6 = .;
   IF (B4BSIL6R = 99997 OR B4BSIL6R = 99998 OR B4BSIL6R = 99999) THEN B4BSIL6R = .;
   IF (B4BFGN = 997 OR B4BFGN = 998 OR B4BFGN = 999) THEN B4BFGN = .;
   IF (B4BCRP = 99997.00 OR B4BCRP = 99998.00 OR B4BCRP = 99999.00) THEN B4BCRP = .;
   IF (B4BSESEL = 99997.00 OR B4BSESEL = 99998.00 OR B4BSESEL = 99999.00) THEN B4BSESEL = .;
   IF (B4BSICAM = 999997.00 OR B4BSICAM = 999998.00 OR B4BSICAM = 999999.00) THEN B4BSICAM = .;
   IF (B4BATBC = 9997.000 OR B4BATBC = 9998.000 OR B4BATBC = 9999.000) THEN B4BATBC = .;
   IF (B4B13CBC = 9997.000 OR B4B13CBC = 9998.000 OR B4B13CBC = 9999.000) THEN B4B13CBC = .;
   IF (B4BAC = 99997.000 OR B4BAC = 99998.000 OR B4BAC = 99999.000) THEN B4BAC = .;
   IF (B4BBCX = 9997.000 OR B4BBCX = 9998.000 OR B4BBCX = 9999.000) THEN B4BBCX = .;
   IF (B4BLUT = 99997.000 OR B4BLUT = 99998.000 OR B4BLUT = 99999.000) THEN B4BLUT = .;
   IF (B4BZX = 9997.000 OR B4BZX = 9998.000 OR B4BZX = 9999.000) THEN B4BZX = .;
   IF (B4BLYC = 9997.000 OR B4BLYC = 9998.000 OR B4BLYC = 9999.000) THEN B4BLYC = .;
   IF (B4BRET = 99997.000 OR B4BRET = 99998.000 OR B4BRET = 99999.000) THEN B4BRET = .;
   IF (B4BATOC = 999997.000 OR B4BATOC = 999998.000 OR B4BATOC = 999999.000) THEN B4BATOC = .;
   IF (B4BGTOC = 99997.000 OR B4BGTOC = 99998.000 OR B4BGTOC = 99999.000) THEN B4BGTOC = .;
   IF (B4BP1NP = 999997.00 OR B4BP1NP = 999998.00 OR B4BP1NP = 999999.00) THEN B4BP1NP = .;
   IF (B4BSBAP = 999997.00 OR B4BSBAP = 999998.00 OR B4BSBAP = 999999.00) THEN B4BSBAP = .;
   IF (B4BSNTX = 999997.00 OR B4BSNTX = 999998.00 OR B4BSNTX = 999999.00) THEN B4BSNTX = .;
   IF (B4BGLUC = 997 OR B4BGLUC = 998 OR B4BGLUC = 999) THEN B4BGLUC = .;
   IF (B4BINSLN = 997 OR B4BINSLN = 998 OR B4BINSLN = 999) THEN B4BINSLN = .;
   IF (B4BIGF1 = 997 OR B4BIGF1 = 998 OR B4BIGF1 = 999) THEN B4BIGF1 = .;
   IF (B4BHOMAIR = 997.00 OR B4BHOMAIR = 998.00 OR B4BHOMAIR = 999.00) THEN B4BHOMAIR = .;
   IF (B4BUPROB = 9) THEN B4BUPROB = .;
   IF (B4BUSTRT = '349200.0' OR B4BUSTRT = '352800.0' OR B4BUSTRT = '356400.0') THEN B4BUSTRT = '';
   IF (B4BUEND = '349200.0' OR B4BUEND = '352800.0' OR B4BUEND = '356400.0') THEN B4BUEND = '';
   IF (B4BUVDYN = 7 OR B4BUVDYN = 8 OR B4BUVDYN = 9) THEN B4BUVDYN = .;
   IF (B4BUVDN = 97.0 OR B4BUVDN = 98.0 OR B4BUVDN = 99.0) THEN B4BUVDN = .;
   IF (B4BURVOL = 9997 OR B4BURVOL = 9998 OR B4BURVOL = 9999) THEN B4BURVOL = .;
   IF (B4BCORTL = 997.00 OR B4BCORTL = 998.00 OR B4BCORTL = 999.00) THEN B4BCORTL = .;
   IF (B4BCORTO = 997.00 OR B4BCORTO = 998.00 OR B4BCORTO = 999.00) THEN B4BCORTO = .;
   IF (B4BUCREA = 997 OR B4BUCREA = 998 OR B4BUCREA = 999) THEN B4BUCREA = .;
   IF (B4BCLCRE = 99997.0 OR B4BCLCRE = 99998.0 OR B4BCLCRE = 99999.0) THEN B4BCLCRE = .;
   IF (B4BCOCRE = 997.0 OR B4BCOCRE = 998.0 OR B4BCOCRE = 999.0) THEN B4BCOCRE = .;
   IF (B4BNOREP = 9997.00 OR B4BNOREP = 9998.00 OR B4BNOREP = 9999.00) THEN B4BNOREP = .;
   IF (B4BEPIN = 9997.00 OR B4BEPIN = 9998.00 OR B4BEPIN = 9999.00) THEN B4BEPIN = .;
   IF (B4BDOPA = 99997.00 OR B4BDOPA = 99998.00 OR B4BDOPA = 99999.00) THEN B4BDOPA = .;
   IF (B4BNE12 = 9999997.0 OR B4BNE12 = 9999998.0 OR B4BNE12 = 9999999.0) THEN B4BNE12 = .;
   IF (B4BEPI12 = 9999997.0 OR B4BEPI12 = 9999998.0 OR B4BEPI12 = 9999999.0) THEN B4BEPI12 = .;
   IF (B4BDOP12 = 99999997.0 OR B4BDOP12 = 99999998.0 OR B4BDOP12 = 99999999.0) THEN B4BDOP12 = .;
   IF (B4BNOCRE = 9999997.0 OR B4BNOCRE = 9999998.0 OR B4BNOCRE = 9999999.0) THEN B4BNOCRE = .;
   IF (B4BEPCRE = 9999997.0 OR B4BEPCRE = 9999998.0 OR B4BEPCRE = 9999999.0) THEN B4BEPCRE = .;
   IF (B4BDOCRE = 99999997.0 OR B4BDOCRE = 99999998.0 OR B4BDOCRE = 99999999.0) THEN B4BDOCRE = .;
   IF (B4BNECL = 9997.00 OR B4BNECL = 9998.00 OR B4BNECL = 9999.00) THEN B4BNECL = .;
   IF (B4BSUCRE = 99997.000 OR B4BSUCRE = 99998.000 OR B4BSUCRE = 99999.000) THEN B4BSUCRE = .;
   IF (B4BGFR = 9999997.0 OR B4BGFR = 9999998.0 OR B4BGFR = 9999999.0) THEN B4BGFR = .;
   IF (B4BSCL11 = 99997.00 OR B4BSCL11 = 99998.00 OR B4BSCL11 = 99999.00) THEN B4BSCL11 = .;
   IF (B4BSCL21 = 99997.00 OR B4BSCL21 = 99998.00 OR B4BSCL21 = 99999.00) THEN B4BSCL21 = .;
   IF (B4BSCL31 = 99997.00 OR B4BSCL31 = 99998.00 OR B4BSCL31 = 99999.00) THEN B4BSCL31 = .;
   IF (B4BSCL41 = 99997.00 OR B4BSCL41 = 99998.00 OR B4BSCL41 = 99999.00) THEN B4BSCL41 = .;
   IF (B4BSCL12 = 99998.00 OR B4BSCL12 = 99999.00) THEN B4BSCL12 = .;
   IF (B4BSCL22 = 99998.00 OR B4BSCL22 = 99999.00) THEN B4BSCL22 = .;
   IF (B4BSCL32 = 99998.00 OR B4BSCL32 = 99999.00) THEN B4BSCL32 = .;
   IF (B4BSCL42 = 99998.00 OR B4BSCL42 = 99999.00) THEN B4BSCL42 = .;
   IF (B4BSCL1A = 99997.00 OR B4BSCL1A = 99998.00 OR B4BSCL1A = 99999.00) THEN B4BSCL1A = .;
   IF (B4BSCL2A = 99997.00 OR B4BSCL2A = 99998.00 OR B4BSCL2A = 99999.00) THEN B4BSCL2A = .;
   IF (B4BSCL3A = 99997.00 OR B4BSCL3A = 99998.00 OR B4BSCL3A = 99999.00) THEN B4BSCL3A = .;
   IF (B4BSCL4A = 99997.00 OR B4BSCL4A = 99998.00 OR B4BSCL4A = 99999.00) THEN B4BSCL4A = .;
   IF (B4BSCL14 = 99997.00 OR B4BSCL14 = 99998.00 OR B4BSCL14 = 99999.00) THEN B4BSCL14 = .;
   IF (B4AWAVL = 9) THEN B4AWAVL = .;
   IF (B4AWIMPU = 9) THEN B4AWIMPU = .;
   IF (B4AWMARK = 9) THEN B4AWMARK = .;
   IF (B4AWDAYS = 9) THEN B4AWDAYS = .;
   IF (B4AWPART = 9) THEN B4AWPART = .;
   IF (B4AWIDIO = 9) THEN B4AWIDIO = .;
   IF (B4AWTMZN = 9) THEN B4AWTMZN = .;
   IF (B4AWLAG = 99) THEN B4AWLAG = .;
   IF (B4AWBGNM = 99) THEN B4AWBGNM = .;
   IF (B4AWENDM = 99) THEN B4AWENDM = .;
   IF (B4AD11 = 7 OR B4AD11 = 8 OR B4AD11 = 9) THEN B4AD11 = .;
   IF (B4AD12 = 9997.0 OR B4AD12 = 9998.0 OR B4AD12 = 9999.0) THEN B4AD12 = .;
   IF (B4AD13 = 7 OR B4AD13 = 8 OR B4AD13 = 9) THEN B4AD13 = .;
   IF (B4AD13S = 9997.0 OR B4AD13S = 9998.0 OR B4AD13S = 9999.0) THEN B4AD13S = .;
   IF (B4AD14 = 9997.0 OR B4AD14 = 9998.0 OR B4AD14 = 9999.0) THEN B4AD14 = .;
   IF (B4AD15 = 9997.0 OR B4AD15 = 9998.0 OR B4AD15 = 9999.0) THEN B4AD15 = .;
   IF (B4AD16 = 7 OR B4AD16 = 8 OR B4AD16 = 9) THEN B4AD16 = .;
   IF (B4AD16M = 97 OR B4AD16M = 98 OR B4AD16M = 99) THEN B4AD16M = .;
   IF (B4AD17 = 7 OR B4AD17 = 8 OR B4AD17 = 9) THEN B4AD17 = .;
   IF (B4AD17M = 7 OR B4AD17M = 8 OR B4AD17M = 9) THEN B4AD17M = .;
   IF (B4AD18 = '349200.0' OR B4AD18 = '352800.0' OR B4AD18 = '356400.0') THEN B4AD18 = '';
   IF (B4AD18A = 7 OR B4AD18A = 8 OR B4AD18A = 9) THEN B4AD18A = .;
   IF (B4AD19 = 9997.0 OR B4AD19 = 9998.0 OR B4AD19 = 9999.0) THEN B4AD19 = .;
   IF (B4AD110 = 7 OR B4AD110 = 8 OR B4AD110 = 9) THEN B4AD110 = .;
   IF (B4AD111 = 97 OR B4AD111 = 98 OR B4AD111 = 99) THEN B4AD111 = .;
   IF (B4AD112 = 7 OR B4AD112 = 8 OR B4AD112 = 9) THEN B4AD112 = .;
   IF (B4AD113 = 7 OR B4AD113 = 8 OR B4AD113 = 9) THEN B4AD113 = .;
   IF (B4AD114 = 97 OR B4AD114 = 98 OR B4AD114 = 99) THEN B4AD114 = .;
   IF (B4AD115 = '349200.0' OR B4AD115 = '352800.0' OR B4AD115 = '356400.0') THEN B4AD115 = '';
   IF (B4AD115A = 7 OR B4AD115A = 8 OR B4AD115A = 9) THEN B4AD115A = .;
   IF (B4AD116 = '349200.0' OR B4AD116 = '352800.0' OR B4AD116 = '356400.0') THEN B4AD116 = '';
   IF (B4AD116A = 7 OR B4AD116A = 8 OR B4AD116A = 9) THEN B4AD116A = .;
   IF (B4AD117 = 7 OR B4AD117 = 8 OR B4AD117 = 9) THEN B4AD117 = .;
   IF (B4AD118 = 7 OR B4AD118 = 8 OR B4AD118 = 9) THEN B4AD118 = .;
   IF (B4AD119 = 7 OR B4AD119 = 8 OR B4AD119 = 9) THEN B4AD119 = .;
   IF (B4AD120 = 7 OR B4AD120 = 8 OR B4AD120 = 9) THEN B4AD120 = .;
   IF (B4AD21 = 7 OR B4AD21 = 8 OR B4AD21 = 9) THEN B4AD21 = .;
   IF (B4AD22 = 9997.0 OR B4AD22 = 9998.0 OR B4AD22 = 9999.0) THEN B4AD22 = .;
   IF (B4AD23 = 7 OR B4AD23 = 8 OR B4AD23 = 9) THEN B4AD23 = .;
   IF (B4AD23S = 9997.0 OR B4AD23S = 9998.0 OR B4AD23S = 9999.0) THEN B4AD23S = .;
   IF (B4AD24 = 9997.0 OR B4AD24 = 9998.0 OR B4AD24 = 9999.0) THEN B4AD24 = .;
   IF (B4AD25 = 9997.0 OR B4AD25 = 9998.0 OR B4AD25 = 9999.0) THEN B4AD25 = .;
   IF (B4AD26 = 7 OR B4AD26 = 8 OR B4AD26 = 9) THEN B4AD26 = .;
   IF (B4AD26M = 97 OR B4AD26M = 98 OR B4AD26M = 99) THEN B4AD26M = .;
   IF (B4AD27 = 7 OR B4AD27 = 8 OR B4AD27 = 9) THEN B4AD27 = .;
   IF (B4AD27M = 7 OR B4AD27M = 8 OR B4AD27M = 9) THEN B4AD27M = .;
   IF (B4AD28 = '349200.0' OR B4AD28 = '352800.0' OR B4AD28 = '356400.0') THEN B4AD28 = '';
   IF (B4AD28A = 7 OR B4AD28A = 8 OR B4AD28A = 9) THEN B4AD28A = .;
   IF (B4AD29 = 9997.0 OR B4AD29 = 9998.0 OR B4AD29 = 9999.0) THEN B4AD29 = .;
   IF (B4AD210 = 7 OR B4AD210 = 8 OR B4AD210 = 9) THEN B4AD210 = .;
   IF (B4AD211 = 97 OR B4AD211 = 98 OR B4AD211 = 99) THEN B4AD211 = .;
   IF (B4AD212 = 7 OR B4AD212 = 8 OR B4AD212 = 9) THEN B4AD212 = .;
   IF (B4AD213 = 7 OR B4AD213 = 8 OR B4AD213 = 9) THEN B4AD213 = .;
   IF (B4AD214 = 97 OR B4AD214 = 98 OR B4AD214 = 99) THEN B4AD214 = .;
   IF (B4AD215 = '349200.0' OR B4AD215 = '352800.0' OR B4AD215 = '356400.0') THEN B4AD215 = '';
   IF (B4AD215A = 7 OR B4AD215A = 8 OR B4AD215A = 9) THEN B4AD215A = .;
   IF (B4AD216 = '349200.0' OR B4AD216 = '352800.0' OR B4AD216 = '356400.0') THEN B4AD216 = '';
   IF (B4AD216A = 7 OR B4AD216A = 8 OR B4AD216A = 9) THEN B4AD216A = .;
   IF (B4AD217 = 7 OR B4AD217 = 8 OR B4AD217 = 9) THEN B4AD217 = .;
   IF (B4AD218 = 7 OR B4AD218 = 8 OR B4AD218 = 9) THEN B4AD218 = .;
   IF (B4AD219 = 7 OR B4AD219 = 8 OR B4AD219 = 9) THEN B4AD219 = .;
   IF (B4AD220 = 7 OR B4AD220 = 8 OR B4AD220 = 9) THEN B4AD220 = .;
   IF (B4AD31 = 7 OR B4AD31 = 8 OR B4AD31 = 9) THEN B4AD31 = .;
   IF (B4AD32 = 9997.0 OR B4AD32 = 9998.0 OR B4AD32 = 9999.0) THEN B4AD32 = .;
   IF (B4AD33 = 7 OR B4AD33 = 8 OR B4AD33 = 9) THEN B4AD33 = .;
   IF (B4AD33S = 9997.0 OR B4AD33S = 9998.0 OR B4AD33S = 9999.0) THEN B4AD33S = .;
   IF (B4AD34 = 9997.0 OR B4AD34 = 9998.0 OR B4AD34 = 9999.0) THEN B4AD34 = .;
   IF (B4AD35 = 9997.0 OR B4AD35 = 9998.0 OR B4AD35 = 9999.0) THEN B4AD35 = .;
   IF (B4AD36 = 7 OR B4AD36 = 8 OR B4AD36 = 9) THEN B4AD36 = .;
   IF (B4AD36M = 97 OR B4AD36M = 98 OR B4AD36M = 99) THEN B4AD36M = .;
   IF (B4AD37 = 7 OR B4AD37 = 8 OR B4AD37 = 9) THEN B4AD37 = .;
   IF (B4AD37M = 7 OR B4AD37M = 8 OR B4AD37M = 9) THEN B4AD37M = .;
   IF (B4AD38 = '349200.0' OR B4AD38 = '352800.0' OR B4AD38 = '356400.0') THEN B4AD38 = '';
   IF (B4AD38A = 7 OR B4AD38A = 8 OR B4AD38A = 9) THEN B4AD38A = .;
   IF (B4AD39 = 9997.0 OR B4AD39 = 9998.0 OR B4AD39 = 9999.0) THEN B4AD39 = .;
   IF (B4AD310 = 7 OR B4AD310 = 8 OR B4AD310 = 9) THEN B4AD310 = .;
   IF (B4AD311 = 97 OR B4AD311 = 98 OR B4AD311 = 99) THEN B4AD311 = .;
   IF (B4AD312 = 7 OR B4AD312 = 8 OR B4AD312 = 9) THEN B4AD312 = .;
   IF (B4AD313 = 7 OR B4AD313 = 8 OR B4AD313 = 9) THEN B4AD313 = .;
   IF (B4AD314 = 97 OR B4AD314 = 98 OR B4AD314 = 99) THEN B4AD314 = .;
   IF (B4AD315 = '349200.0' OR B4AD315 = '352800.0' OR B4AD315 = '356400.0') THEN B4AD315 = '';
   IF (B4AD315A = 7 OR B4AD315A = 8 OR B4AD315A = 9) THEN B4AD315A = .;
   IF (B4AD316 = '349200.0' OR B4AD316 = '352800.0' OR B4AD316 = '356400.0') THEN B4AD316 = '';
   IF (B4AD316A = 7 OR B4AD316A = 8 OR B4AD316A = 9) THEN B4AD316A = .;
   IF (B4AD317 = 7 OR B4AD317 = 8 OR B4AD317 = 9) THEN B4AD317 = .;
   IF (B4AD318 = 7 OR B4AD318 = 8 OR B4AD318 = 9) THEN B4AD318 = .;
   IF (B4AD319 = 7 OR B4AD319 = 8 OR B4AD319 = 9) THEN B4AD319 = .;
   IF (B4AD320 = 7 OR B4AD320 = 8 OR B4AD320 = 9) THEN B4AD320 = .;
   IF (B4AD41 = 7 OR B4AD41 = 8 OR B4AD41 = 9) THEN B4AD41 = .;
   IF (B4AD42 = 9997.0 OR B4AD42 = 9998.0 OR B4AD42 = 9999.0) THEN B4AD42 = .;
   IF (B4AD43 = 7 OR B4AD43 = 8 OR B4AD43 = 9) THEN B4AD43 = .;
   IF (B4AD43S = 9997.0 OR B4AD43S = 9998.0 OR B4AD43S = 9999.0) THEN B4AD43S = .;
   IF (B4AD44 = 9997.0 OR B4AD44 = 9998.0 OR B4AD44 = 9999.0) THEN B4AD44 = .;
   IF (B4AD45 = 9997.0 OR B4AD45 = 9998.0 OR B4AD45 = 9999.0) THEN B4AD45 = .;
   IF (B4AD46 = 7 OR B4AD46 = 8 OR B4AD46 = 9) THEN B4AD46 = .;
   IF (B4AD46M = 97 OR B4AD46M = 98 OR B4AD46M = 99) THEN B4AD46M = .;
   IF (B4AD47 = 7 OR B4AD47 = 8 OR B4AD47 = 9) THEN B4AD47 = .;
   IF (B4AD47M = 7 OR B4AD47M = 8 OR B4AD47M = 9) THEN B4AD47M = .;
   IF (B4AD48 = '349200.0' OR B4AD48 = '352800.0' OR B4AD48 = '356400.0') THEN B4AD48 = '';
   IF (B4AD48A = 7 OR B4AD48A = 8 OR B4AD48A = 9) THEN B4AD48A = .;
   IF (B4AD49 = 9997.0 OR B4AD49 = 9998.0 OR B4AD49 = 9999.0) THEN B4AD49 = .;
   IF (B4AD410 = 7 OR B4AD410 = 8 OR B4AD410 = 9) THEN B4AD410 = .;
   IF (B4AD411 = 97 OR B4AD411 = 98 OR B4AD411 = 99) THEN B4AD411 = .;
   IF (B4AD412 = 7 OR B4AD412 = 8 OR B4AD412 = 9) THEN B4AD412 = .;
   IF (B4AD413 = 7 OR B4AD413 = 8 OR B4AD413 = 9) THEN B4AD413 = .;
   IF (B4AD414 = 97 OR B4AD414 = 98 OR B4AD414 = 99) THEN B4AD414 = .;
   IF (B4AD415 = '349200.0' OR B4AD415 = '352800.0' OR B4AD415 = '356400.0') THEN B4AD415 = '';
   IF (B4AD415A = 7 OR B4AD415A = 8 OR B4AD415A = 9) THEN B4AD415A = .;
   IF (B4AD416 = '349200.0' OR B4AD416 = '352800.0' OR B4AD416 = '356400.0') THEN B4AD416 = '';
   IF (B4AD416A = 7 OR B4AD416A = 8 OR B4AD416A = 9) THEN B4AD416A = .;
   IF (B4AD417 = 7 OR B4AD417 = 8 OR B4AD417 = 9) THEN B4AD417 = .;
   IF (B4AD418 = 7 OR B4AD418 = 8 OR B4AD418 = 9) THEN B4AD418 = .;
   IF (B4AD419 = 7 OR B4AD419 = 8 OR B4AD419 = 9) THEN B4AD419 = .;
   IF (B4AD420 = 7 OR B4AD420 = 8 OR B4AD420 = 9) THEN B4AD420 = .;
   IF (B4AD51 = 7 OR B4AD51 = 8 OR B4AD51 = 9) THEN B4AD51 = .;
   IF (B4AD52 = 9997.0 OR B4AD52 = 9998.0 OR B4AD52 = 9999.0) THEN B4AD52 = .;
   IF (B4AD53 = 7 OR B4AD53 = 8 OR B4AD53 = 9) THEN B4AD53 = .;
   IF (B4AD53S = 9997.0 OR B4AD53S = 9998.0 OR B4AD53S = 9999.0) THEN B4AD53S = .;
   IF (B4AD54 = 9997.0 OR B4AD54 = 9998.0 OR B4AD54 = 9999.0) THEN B4AD54 = .;
   IF (B4AD55 = 9997.0 OR B4AD55 = 9998.0 OR B4AD55 = 9999.0) THEN B4AD55 = .;
   IF (B4AD56 = 7 OR B4AD56 = 8 OR B4AD56 = 9) THEN B4AD56 = .;
   IF (B4AD56M = 97 OR B4AD56M = 98 OR B4AD56M = 99) THEN B4AD56M = .;
   IF (B4AD57 = 7 OR B4AD57 = 8 OR B4AD57 = 9) THEN B4AD57 = .;
   IF (B4AD57M = 7 OR B4AD57M = 8 OR B4AD57M = 9) THEN B4AD57M = .;
   IF (B4AD58 = '349200.0' OR B4AD58 = '352800.0' OR B4AD58 = '356400.0') THEN B4AD58 = '';
   IF (B4AD58A = 7 OR B4AD58A = 8 OR B4AD58A = 9) THEN B4AD58A = .;
   IF (B4AD59 = 9997.0 OR B4AD59 = 9998.0 OR B4AD59 = 9999.0) THEN B4AD59 = .;
   IF (B4AD510 = 7 OR B4AD510 = 8 OR B4AD510 = 9) THEN B4AD510 = .;
   IF (B4AD511 = 97 OR B4AD511 = 98 OR B4AD511 = 99) THEN B4AD511 = .;
   IF (B4AD512 = 7 OR B4AD512 = 8 OR B4AD512 = 9) THEN B4AD512 = .;
   IF (B4AD513 = 7 OR B4AD513 = 8 OR B4AD513 = 9) THEN B4AD513 = .;
   IF (B4AD514 = 97 OR B4AD514 = 98 OR B4AD514 = 99) THEN B4AD514 = .;
   IF (B4AD515 = '349200.0' OR B4AD515 = '352800.0' OR B4AD515 = '356400.0') THEN B4AD515 = '';
   IF (B4AD515A = 7 OR B4AD515A = 8 OR B4AD515A = 9) THEN B4AD515A = .;
   IF (B4AD516 = '349200.0' OR B4AD516 = '352800.0' OR B4AD516 = '356400.0') THEN B4AD516 = '';
   IF (B4AD516A = 7 OR B4AD516A = 8 OR B4AD516A = 9) THEN B4AD516A = .;
   IF (B4AD517 = 7 OR B4AD517 = 8 OR B4AD517 = 9) THEN B4AD517 = .;
   IF (B4AD518 = 7 OR B4AD518 = 8 OR B4AD518 = 9) THEN B4AD518 = .;
   IF (B4AD519 = 7 OR B4AD519 = 8 OR B4AD519 = 9) THEN B4AD519 = .;
   IF (B4AD520 = 7 OR B4AD520 = 8 OR B4AD520 = 9) THEN B4AD520 = .;
   IF (B4AD61 = 7 OR B4AD61 = 8 OR B4AD61 = 9) THEN B4AD61 = .;
   IF (B4AD62 = 9997.0 OR B4AD62 = 9998.0 OR B4AD62 = 9999.0) THEN B4AD62 = .;
   IF (B4AD63 = 7 OR B4AD63 = 8 OR B4AD63 = 9) THEN B4AD63 = .;
   IF (B4AD63S = 9997.0 OR B4AD63S = 9998.0 OR B4AD63S = 9999.0) THEN B4AD63S = .;
   IF (B4AD64 = 9997.0 OR B4AD64 = 9998.0 OR B4AD64 = 9999.0) THEN B4AD64 = .;
   IF (B4AD65 = 9997.0 OR B4AD65 = 9998.0 OR B4AD65 = 9999.0) THEN B4AD65 = .;
   IF (B4AD66 = 7 OR B4AD66 = 8 OR B4AD66 = 9) THEN B4AD66 = .;
   IF (B4AD66M = 97 OR B4AD66M = 98 OR B4AD66M = 99) THEN B4AD66M = .;
   IF (B4AD67 = 7 OR B4AD67 = 8 OR B4AD67 = 9) THEN B4AD67 = .;
   IF (B4AD67M = 7 OR B4AD67M = 8 OR B4AD67M = 9) THEN B4AD67M = .;
   IF (B4AD68 = '349200.0' OR B4AD68 = '352800.0' OR B4AD68 = '356400.0') THEN B4AD68 = '';
   IF (B4AD68A = 7 OR B4AD68A = 8 OR B4AD68A = 9) THEN B4AD68A = .;
   IF (B4AD69 = 9997.0 OR B4AD69 = 9998.0 OR B4AD69 = 9999.0) THEN B4AD69 = .;
   IF (B4AD610 = 7 OR B4AD610 = 8 OR B4AD610 = 9) THEN B4AD610 = .;
   IF (B4AD611 = 97 OR B4AD611 = 98 OR B4AD611 = 99) THEN B4AD611 = .;
   IF (B4AD612 = 7 OR B4AD612 = 8 OR B4AD612 = 9) THEN B4AD612 = .;
   IF (B4AD613 = 7 OR B4AD613 = 8 OR B4AD613 = 9) THEN B4AD613 = .;
   IF (B4AD614 = 97 OR B4AD614 = 98 OR B4AD614 = 99) THEN B4AD614 = .;
   IF (B4AD615 = '349200.0' OR B4AD615 = '352800.0' OR B4AD615 = '356400.0') THEN B4AD615 = '';
   IF (B4AD615A = 7 OR B4AD615A = 8 OR B4AD615A = 9) THEN B4AD615A = .;
   IF (B4AD616 = '349200.0' OR B4AD616 = '352800.0' OR B4AD616 = '356400.0') THEN B4AD616 = '';
   IF (B4AD616A = 7 OR B4AD616A = 8 OR B4AD616A = 9) THEN B4AD616A = .;
   IF (B4AD617 = 7 OR B4AD617 = 8 OR B4AD617 = 9) THEN B4AD617 = .;
   IF (B4AD618 = 7 OR B4AD618 = 8 OR B4AD618 = 9) THEN B4AD618 = .;
   IF (B4AD619 = 7 OR B4AD619 = 8 OR B4AD619 = 9) THEN B4AD619 = .;
   IF (B4AD620 = 7 OR B4AD620 = 8 OR B4AD620 = 9) THEN B4AD620 = .;
   IF (B4AD71 = 7 OR B4AD71 = 8 OR B4AD71 = 9) THEN B4AD71 = .;
   IF (B4AD72 = 9997.0 OR B4AD72 = 9998.0 OR B4AD72 = 9999.0) THEN B4AD72 = .;
   IF (B4AD73 = 7 OR B4AD73 = 8 OR B4AD73 = 9) THEN B4AD73 = .;
   IF (B4AD73S = 9997.0 OR B4AD73S = 9998.0 OR B4AD73S = 9999.0) THEN B4AD73S = .;
   IF (B4AD74 = 9997.0 OR B4AD74 = 9998.0 OR B4AD74 = 9999.0) THEN B4AD74 = .;
   IF (B4AD75 = 9997.0 OR B4AD75 = 9998.0 OR B4AD75 = 9999.0) THEN B4AD75 = .;
   IF (B4AD76 = 7 OR B4AD76 = 8 OR B4AD76 = 9) THEN B4AD76 = .;
   IF (B4AD76M = 97 OR B4AD76M = 98 OR B4AD76M = 99) THEN B4AD76M = .;
   IF (B4AD77 = 7 OR B4AD77 = 8 OR B4AD77 = 9) THEN B4AD77 = .;
   IF (B4AD77M = 7 OR B4AD77M = 8 OR B4AD77M = 9) THEN B4AD77M = .;
   IF (B4AD78 = '349200.0' OR B4AD78 = '352800.0' OR B4AD78 = '356400.0') THEN B4AD78 = '';
   IF (B4AD78A = 7 OR B4AD78A = 8 OR B4AD78A = 9) THEN B4AD78A = .;
   IF (B4AD79 = 9997.0 OR B4AD79 = 9998.0 OR B4AD79 = 9999.0) THEN B4AD79 = .;
   IF (B4AD710 = 7 OR B4AD710 = 8 OR B4AD710 = 9) THEN B4AD710 = .;
   IF (B4AD711 = 97 OR B4AD711 = 98 OR B4AD711 = 99) THEN B4AD711 = .;
   IF (B4AD712 = 7 OR B4AD712 = 8 OR B4AD712 = 9) THEN B4AD712 = .;
   IF (B4AD713 = 7 OR B4AD713 = 8 OR B4AD713 = 9) THEN B4AD713 = .;
   IF (B4AD714 = 97 OR B4AD714 = 98 OR B4AD714 = 99) THEN B4AD714 = .;
   IF (B4AD715 = '349200.0' OR B4AD715 = '352800.0' OR B4AD715 = '356400.0') THEN B4AD715 = '';
   IF (B4AD715A = 7 OR B4AD715A = 8 OR B4AD715A = 9) THEN B4AD715A = .;
   IF (B4AD716 = '349200.0' OR B4AD716 = '352800.0' OR B4AD716 = '356400.0') THEN B4AD716 = '';
   IF (B4AD716A = 7 OR B4AD716A = 8 OR B4AD716A = 9) THEN B4AD716A = .;
   IF (B4AD717 = 7 OR B4AD717 = 8 OR B4AD717 = 9) THEN B4AD717 = .;
   IF (B4AD718 = 7 OR B4AD718 = 8 OR B4AD718 = 9) THEN B4AD718 = .;
   IF (B4AD719 = 7 OR B4AD719 = 8 OR B4AD719 = 9) THEN B4AD719 = .;
   IF (B4AD720 = 7 OR B4AD720 = 8 OR B4AD720 = 9) THEN B4AD720 = .;
   IF (B4WR1TAC = 999998 OR B4WR1TAC = 999999) THEN B4WR1TAC = .;
   IF (B4WR1ACM = 998.00 OR B4WR1ACM = 999.00) THEN B4WR1ACM = .;
   IF (B4WR1MAC = 9998 OR B4WR1MAC = 9999) THEN B4WR1MAC = .;
   IF (B4WR1IAC = 98 OR B4WR1IAC = 99) THEN B4WR1IAC = .;
   IF (B4WR1SW = 98.00 OR B4WR1SW = 99.00) THEN B4WR1SW = .;
   IF (B4WR1WT = 998.00 OR B4WR1WT = 999.00) THEN B4WR1WT = .;
   IF (B4WR1PW = 998.00 OR B4WR1PW = 999.00) THEN B4WR1PW = .;
   IF (B4WR1WB = 998 OR B4WR1WB = 999) THEN B4WR1WB = .;
   IF (B4WR1AWB = 998.00 OR B4WR1AWB = 999.00) THEN B4WR1AWB = .;
   IF (B4WR1SLT = 9998.0 OR B4WR1SLT = 9999.0) THEN B4WR1SLT = .;
   IF (B4WR1PSL = 998.00 OR B4WR1PSL = 999.00) THEN B4WR1PSL = .;
   IF (B4WR1SLB = 998 OR B4WR1SLB = 999) THEN B4WR1SLB = .;
   IF (B4WR1ASB = 998.00 OR B4WR1ASB = 999.00) THEN B4WR1ASB = .;
   IF (B4WS1TAC = 999998 OR B4WS1TAC = 999999) THEN B4WS1TAC = .;
   IF (B4WS1ACM = 998.00 OR B4WS1ACM = 999.00) THEN B4WS1ACM = .;
   IF (B4WS1MAC = 9998 OR B4WS1MAC = 9999) THEN B4WS1MAC = .;
   IF (B4WS1IAC = 98 OR B4WS1IAC = 99) THEN B4WS1IAC = .;
   IF (B4WS1ISW = 98.00 OR B4WS1ISW = 99.00) THEN B4WS1ISW = .;
   IF (B4WS1OL = 998.00 OR B4WS1OL = 999.00) THEN B4WS1OL = .;
   IF (B4WS1SNT = 998.00 OR B4WS1SNT = 999.00) THEN B4WS1SNT = .;
   IF (B4WS1EFF = 998.00 OR B4WS1EFF = 999.00) THEN B4WS1EFF = .;
   IF (B4WS1WSO = 998.00 OR B4WS1WSO = 999.00) THEN B4WS1WSO = .;
   IF (B4WS1WT = 998.00 OR B4WS1WT = 999.00) THEN B4WS1WT = .;
   IF (B4WS1PW = 98.00 OR B4WS1PW = 99.00) THEN B4WS1PW = .;
   IF (B4WS1WB = 998 OR B4WS1WB = 999) THEN B4WS1WB = .;
   IF (B4WS1AWB = 98.00 OR B4WS1AWB = 99.00) THEN B4WS1AWB = .;
   IF (B4WS1SLT = 9998.0 OR B4WS1SLT = 9999.0) THEN B4WS1SLT = .;
   IF (B4WS1PSL = 998.00 OR B4WS1PSL = 999.00) THEN B4WS1PSL = .;
   IF (B4WS1SLB = 998 OR B4WS1SLB = 999) THEN B4WS1SLB = .;
   IF (B4WS1ASB = 998.00 OR B4WS1ASB = 999.00) THEN B4WS1ASB = .;
   IF (B4WA1TAC = 9999998 OR B4WA1TAC = 9999999) THEN B4WA1TAC = .;
   IF (B4WA1ACM = 9998.00 OR B4WA1ACM = 9999.00) THEN B4WA1ACM = .;
   IF (B4WA1MAC = 9998 OR B4WA1MAC = 9999) THEN B4WA1MAC = .;
   IF (B4WA1IAC = 8 OR B4WA1IAC = 9) THEN B4WA1IAC = .;
   IF (B4WA1ISW = 8.00 OR B4WA1ISW = 9.00) THEN B4WA1ISW = .;
   IF (B4WA1WT = 9998.0 OR B4WA1WT = 9999.0) THEN B4WA1WT = .;
   IF (B4WA1PW = 998.00 OR B4WA1PW = 999.00) THEN B4WA1PW = .;
   IF (B4WA1WB = 998 OR B4WA1WB = 999) THEN B4WA1WB = .;
   IF (B4WA1AWB = 998.00 OR B4WA1AWB = 999.00) THEN B4WA1AWB = .;
   IF (B4WA1SLT = 998.00 OR B4WA1SLT = 999.00) THEN B4WA1SLT = .;
   IF (B4WA1PSL = 98.00 OR B4WA1PSL = 99.00) THEN B4WA1PSL = .;
   IF (B4WA1SLB = 998 OR B4WA1SLB = 999) THEN B4WA1SLB = .;
   IF (B4WA1ASB = 98.00 OR B4WA1ASB = 99.00) THEN B4WA1ASB = .;
   IF (B4WR2TAC = 999998 OR B4WR2TAC = 999999) THEN B4WR2TAC = .;
   IF (B4WR2ACM = 998.00 OR B4WR2ACM = 999.00) THEN B4WR2ACM = .;
   IF (B4WR2MAC = 9998 OR B4WR2MAC = 9999) THEN B4WR2MAC = .;
   IF (B4WR2IAC = 98 OR B4WR2IAC = 99) THEN B4WR2IAC = .;
   IF (B4WR2SW = 98.00 OR B4WR2SW = 99.00) THEN B4WR2SW = .;
   IF (B4WR2WT = 998.00 OR B4WR2WT = 999.00) THEN B4WR2WT = .;
   IF (B4WR2PW = 998.00 OR B4WR2PW = 999.00) THEN B4WR2PW = .;
   IF (B4WR2WB = 998 OR B4WR2WB = 999) THEN B4WR2WB = .;
   IF (B4WR2AWB = 998.00 OR B4WR2AWB = 999.00) THEN B4WR2AWB = .;
   IF (B4WR2SLT = 9998.0 OR B4WR2SLT = 9999.0) THEN B4WR2SLT = .;
   IF (B4WR2PSL = 998.00 OR B4WR2PSL = 999.00) THEN B4WR2PSL = .;
   IF (B4WR2SLB = 998 OR B4WR2SLB = 999) THEN B4WR2SLB = .;
   IF (B4WR2ASB = 998.00 OR B4WR2ASB = 999.00) THEN B4WR2ASB = .;
   IF (B4WS2TAC = 999998 OR B4WS2TAC = 999999) THEN B4WS2TAC = .;
   IF (B4WS2ACM = 998.00 OR B4WS2ACM = 999.00) THEN B4WS2ACM = .;
   IF (B4WS2MAC = 9998 OR B4WS2MAC = 9999) THEN B4WS2MAC = .;
   IF (B4WS2IAC = 98 OR B4WS2IAC = 99) THEN B4WS2IAC = .;
   IF (B4WS2ISW = 98.00 OR B4WS2ISW = 99.00) THEN B4WS2ISW = .;
   IF (B4WS2OL = 998.00 OR B4WS2OL = 999.00) THEN B4WS2OL = .;
   IF (B4WS2SNT = 998.00 OR B4WS2SNT = 999.00) THEN B4WS2SNT = .;
   IF (B4WS2EFF = 998.00 OR B4WS2EFF = 999.00) THEN B4WS2EFF = .;
   IF (B4WS2WSO = 998.00 OR B4WS2WSO = 999.00) THEN B4WS2WSO = .;
   IF (B4WS2WT = 998.00 OR B4WS2WT = 999.00) THEN B4WS2WT = .;
   IF (B4WS2PW = 98.00 OR B4WS2PW = 99.00) THEN B4WS2PW = .;
   IF (B4WS2WB = 998 OR B4WS2WB = 999) THEN B4WS2WB = .;
   IF (B4WS2AWB = 98.00 OR B4WS2AWB = 99.00) THEN B4WS2AWB = .;
   IF (B4WS2SLT = 9998.0 OR B4WS2SLT = 9999.0) THEN B4WS2SLT = .;
   IF (B4WS2PSL = 998.00 OR B4WS2PSL = 999.00) THEN B4WS2PSL = .;
   IF (B4WS2SLB = 998 OR B4WS2SLB = 999) THEN B4WS2SLB = .;
   IF (B4WS2ASB = 998.00 OR B4WS2ASB = 999.00) THEN B4WS2ASB = .;
   IF (B4WA2TAC = 9999998 OR B4WA2TAC = 9999999) THEN B4WA2TAC = .;
   IF (B4WA2ACM = 9998.00 OR B4WA2ACM = 9999.00) THEN B4WA2ACM = .;
   IF (B4WA2MAC = 9998 OR B4WA2MAC = 9999) THEN B4WA2MAC = .;
   IF (B4WA2IAC = 8 OR B4WA2IAC = 9) THEN B4WA2IAC = .;
   IF (B4WA2ISW = 8.00 OR B4WA2ISW = 9.00) THEN B4WA2ISW = .;
   IF (B4WA2WT = 9998.0 OR B4WA2WT = 9999.0) THEN B4WA2WT = .;
   IF (B4WA2PW = 998.00 OR B4WA2PW = 999.00) THEN B4WA2PW = .;
   IF (B4WA2WB = 998 OR B4WA2WB = 999) THEN B4WA2WB = .;
   IF (B4WA2AWB = 998.00 OR B4WA2AWB = 999.00) THEN B4WA2AWB = .;
   IF (B4WA2SLT = 998.00 OR B4WA2SLT = 999.00) THEN B4WA2SLT = .;
   IF (B4WA2PSL = 98.00 OR B4WA2PSL = 99.00) THEN B4WA2PSL = .;
   IF (B4WA2SLB = 998 OR B4WA2SLB = 999) THEN B4WA2SLB = .;
   IF (B4WA2ASB = 98.00 OR B4WA2ASB = 99.00) THEN B4WA2ASB = .;
   IF (B4WR3TAC = 999998 OR B4WR3TAC = 999999) THEN B4WR3TAC = .;
   IF (B4WR3ACM = 998.00 OR B4WR3ACM = 999.00) THEN B4WR3ACM = .;
   IF (B4WR3MAC = 9998 OR B4WR3MAC = 9999) THEN B4WR3MAC = .;
   IF (B4WR3IAC = 98 OR B4WR3IAC = 99) THEN B4WR3IAC = .;
   IF (B4WR3SW = 98.00 OR B4WR3SW = 99.00) THEN B4WR3SW = .;
   IF (B4WR3WT = 998.00 OR B4WR3WT = 999.00) THEN B4WR3WT = .;
   IF (B4WR3PW = 998.00 OR B4WR3PW = 999.00) THEN B4WR3PW = .;
   IF (B4WR3WB = 998 OR B4WR3WB = 999) THEN B4WR3WB = .;
   IF (B4WR3AWB = 998.00 OR B4WR3AWB = 999.00) THEN B4WR3AWB = .;
   IF (B4WR3SLT = 9998.0 OR B4WR3SLT = 9999.0) THEN B4WR3SLT = .;
   IF (B4WR3PSL = 998.00 OR B4WR3PSL = 999.00) THEN B4WR3PSL = .;
   IF (B4WR3SLB = 998 OR B4WR3SLB = 999) THEN B4WR3SLB = .;
   IF (B4WR3ASB = 998.00 OR B4WR3ASB = 999.00) THEN B4WR3ASB = .;
   IF (B4WS3TAC = 999998 OR B4WS3TAC = 999999) THEN B4WS3TAC = .;
   IF (B4WS3ACM = 998.00 OR B4WS3ACM = 999.00) THEN B4WS3ACM = .;
   IF (B4WS3MAC = 9998 OR B4WS3MAC = 9999) THEN B4WS3MAC = .;
   IF (B4WS3IAC = 98 OR B4WS3IAC = 99) THEN B4WS3IAC = .;
   IF (B4WS3ISW = 98.00 OR B4WS3ISW = 99.00) THEN B4WS3ISW = .;
   IF (B4WS3OL = 998.00 OR B4WS3OL = 999.00) THEN B4WS3OL = .;
   IF (B4WS3SNT = 998.00 OR B4WS3SNT = 999.00) THEN B4WS3SNT = .;
   IF (B4WS3EFF = 998.00 OR B4WS3EFF = 999.00) THEN B4WS3EFF = .;
   IF (B4WS3WSO = 998.00 OR B4WS3WSO = 999.00) THEN B4WS3WSO = .;
   IF (B4WS3WT = 998.00 OR B4WS3WT = 999.00) THEN B4WS3WT = .;
   IF (B4WS3PW = 98.00 OR B4WS3PW = 99.00) THEN B4WS3PW = .;
   IF (B4WS3WB = 998 OR B4WS3WB = 999) THEN B4WS3WB = .;
   IF (B4WS3AWB = 98.00 OR B4WS3AWB = 99.00) THEN B4WS3AWB = .;
   IF (B4WS3SLT = 9998.0 OR B4WS3SLT = 9999.0) THEN B4WS3SLT = .;
   IF (B4WS3PSL = 998.00 OR B4WS3PSL = 999.00) THEN B4WS3PSL = .;
   IF (B4WS3SLB = 998 OR B4WS3SLB = 999) THEN B4WS3SLB = .;
   IF (B4WS3ASB = 998.00 OR B4WS3ASB = 999.00) THEN B4WS3ASB = .;
   IF (B4WA3TAC = 9999998 OR B4WA3TAC = 9999999) THEN B4WA3TAC = .;
   IF (B4WA3ACM = 9998.00 OR B4WA3ACM = 9999.00) THEN B4WA3ACM = .;
   IF (B4WA3MAC = 9998 OR B4WA3MAC = 9999) THEN B4WA3MAC = .;
   IF (B4WA3IAC = 8 OR B4WA3IAC = 9) THEN B4WA3IAC = .;
   IF (B4WA3ISW = 8.00 OR B4WA3ISW = 9.00) THEN B4WA3ISW = .;
   IF (B4WA3WT = 9998.0 OR B4WA3WT = 9999.0) THEN B4WA3WT = .;
   IF (B4WA3PW = 998.00 OR B4WA3PW = 999.00) THEN B4WA3PW = .;
   IF (B4WA3WB = 998 OR B4WA3WB = 999) THEN B4WA3WB = .;
   IF (B4WA3AWB = 998.00 OR B4WA3AWB = 999.00) THEN B4WA3AWB = .;
   IF (B4WA3SLT = 998.00 OR B4WA3SLT = 999.00) THEN B4WA3SLT = .;
   IF (B4WA3PSL = 98.00 OR B4WA3PSL = 99.00) THEN B4WA3PSL = .;
   IF (B4WA3SLB = 998 OR B4WA3SLB = 999) THEN B4WA3SLB = .;
   IF (B4WA3ASB = 98.00 OR B4WA3ASB = 99.00) THEN B4WA3ASB = .;
   IF (B4WR4TAC = 999998 OR B4WR4TAC = 999999) THEN B4WR4TAC = .;
   IF (B4WR4ACM = 998.00 OR B4WR4ACM = 999.00) THEN B4WR4ACM = .;
   IF (B4WR4MAC = 9998 OR B4WR4MAC = 9999) THEN B4WR4MAC = .;
   IF (B4WR4IAC = 98 OR B4WR4IAC = 99) THEN B4WR4IAC = .;
   IF (B4WR4SW = 98.00 OR B4WR4SW = 99.00) THEN B4WR4SW = .;
   IF (B4WR4WT = 998.00 OR B4WR4WT = 999.00) THEN B4WR4WT = .;
   IF (B4WR4PW = 998.00 OR B4WR4PW = 999.00) THEN B4WR4PW = .;
   IF (B4WR4WB = 998 OR B4WR4WB = 999) THEN B4WR4WB = .;
   IF (B4WR4AWB = 998.00 OR B4WR4AWB = 999.00) THEN B4WR4AWB = .;
   IF (B4WR4SLT = 9998.0 OR B4WR4SLT = 9999.0) THEN B4WR4SLT = .;
   IF (B4WR4PSL = 998.00 OR B4WR4PSL = 999.00) THEN B4WR4PSL = .;
   IF (B4WR4SLB = 998 OR B4WR4SLB = 999) THEN B4WR4SLB = .;
   IF (B4WR4ASB = 998.00 OR B4WR4ASB = 999.00) THEN B4WR4ASB = .;
   IF (B4WS4TAC = 999998 OR B4WS4TAC = 999999) THEN B4WS4TAC = .;
   IF (B4WS4ACM = 998.00 OR B4WS4ACM = 999.00) THEN B4WS4ACM = .;
   IF (B4WS4MAC = 9998 OR B4WS4MAC = 9999) THEN B4WS4MAC = .;
   IF (B4WS4IAC = 98 OR B4WS4IAC = 99) THEN B4WS4IAC = .;
   IF (B4WS4ISW = 98.00 OR B4WS4ISW = 99.00) THEN B4WS4ISW = .;
   IF (B4WS4OL = 998.00 OR B4WS4OL = 999.00) THEN B4WS4OL = .;
   IF (B4WS4SNT = 998.00 OR B4WS4SNT = 999.00) THEN B4WS4SNT = .;
   IF (B4WS4EFF = 998.00 OR B4WS4EFF = 999.00) THEN B4WS4EFF = .;
   IF (B4WS4WSO = 998.00 OR B4WS4WSO = 999.00) THEN B4WS4WSO = .;
   IF (B4WS4WT = 998.00 OR B4WS4WT = 999.00) THEN B4WS4WT = .;
   IF (B4WS4PW = 98.00 OR B4WS4PW = 99.00) THEN B4WS4PW = .;
   IF (B4WS4WB = 998 OR B4WS4WB = 999) THEN B4WS4WB = .;
   IF (B4WS4AWB = 98.00 OR B4WS4AWB = 99.00) THEN B4WS4AWB = .;
   IF (B4WS4SLT = 9998.0 OR B4WS4SLT = 9999.0) THEN B4WS4SLT = .;
   IF (B4WS4PSL = 998.00 OR B4WS4PSL = 999.00) THEN B4WS4PSL = .;
   IF (B4WS4SLB = 998 OR B4WS4SLB = 999) THEN B4WS4SLB = .;
   IF (B4WS4ASB = 998.00 OR B4WS4ASB = 999.00) THEN B4WS4ASB = .;
   IF (B4WA4TAC = 9999998 OR B4WA4TAC = 9999999) THEN B4WA4TAC = .;
   IF (B4WA4ACM = 9998.00 OR B4WA4ACM = 9999.00) THEN B4WA4ACM = .;
   IF (B4WA4MAC = 9998 OR B4WA4MAC = 9999) THEN B4WA4MAC = .;
   IF (B4WA4IAC = 8 OR B4WA4IAC = 9) THEN B4WA4IAC = .;
   IF (B4WA4ISW = 8.00 OR B4WA4ISW = 9.00) THEN B4WA4ISW = .;
   IF (B4WA4WT = 9998.0 OR B4WA4WT = 9999.0) THEN B4WA4WT = .;
   IF (B4WA4PW = 998.00 OR B4WA4PW = 999.00) THEN B4WA4PW = .;
   IF (B4WA4WB = 998 OR B4WA4WB = 999) THEN B4WA4WB = .;
   IF (B4WA4AWB = 998.00 OR B4WA4AWB = 999.00) THEN B4WA4AWB = .;
   IF (B4WA4SLT = 998.00 OR B4WA4SLT = 999.00) THEN B4WA4SLT = .;
   IF (B4WA4PSL = 98.00 OR B4WA4PSL = 99.00) THEN B4WA4PSL = .;
   IF (B4WA4SLB = 998 OR B4WA4SLB = 999) THEN B4WA4SLB = .;
   IF (B4WA4ASB = 98.00 OR B4WA4ASB = 99.00) THEN B4WA4ASB = .;
   IF (B4WR5TAC = 999998 OR B4WR5TAC = 999999) THEN B4WR5TAC = .;
   IF (B4WR5ACM = 998.00 OR B4WR5ACM = 999.00) THEN B4WR5ACM = .;
   IF (B4WR5MAC = 9998 OR B4WR5MAC = 9999) THEN B4WR5MAC = .;
   IF (B4WR5IAC = 98 OR B4WR5IAC = 99) THEN B4WR5IAC = .;
   IF (B4WR5SW = 98.00 OR B4WR5SW = 99.00) THEN B4WR5SW = .;
   IF (B4WR5WT = 998.00 OR B4WR5WT = 999.00) THEN B4WR5WT = .;
   IF (B4WR5PW = 998.00 OR B4WR5PW = 999.00) THEN B4WR5PW = .;
   IF (B4WR5WB = 998 OR B4WR5WB = 999) THEN B4WR5WB = .;
   IF (B4WR5AWB = 998.00 OR B4WR5AWB = 999.00) THEN B4WR5AWB = .;
   IF (B4WR5SLT = 9998.0 OR B4WR5SLT = 9999.0) THEN B4WR5SLT = .;
   IF (B4WR5PSL = 998.00 OR B4WR5PSL = 999.00) THEN B4WR5PSL = .;
   IF (B4WR5SLB = 998 OR B4WR5SLB = 999) THEN B4WR5SLB = .;
   IF (B4WR5ASB = 998.00 OR B4WR5ASB = 999.00) THEN B4WR5ASB = .;
   IF (B4WS5TAC = 999998 OR B4WS5TAC = 999999) THEN B4WS5TAC = .;
   IF (B4WS5ACM = 998.00 OR B4WS5ACM = 999.00) THEN B4WS5ACM = .;
   IF (B4WS5MAC = 9998 OR B4WS5MAC = 9999) THEN B4WS5MAC = .;
   IF (B4WS5IAC = 98 OR B4WS5IAC = 99) THEN B4WS5IAC = .;
   IF (B4WS5ISW = 98.00 OR B4WS5ISW = 99.00) THEN B4WS5ISW = .;
   IF (B4WS5OL = 998.00 OR B4WS5OL = 999.00) THEN B4WS5OL = .;
   IF (B4WS5SNT = 998.00 OR B4WS5SNT = 999.00) THEN B4WS5SNT = .;
   IF (B4WS5EFF = 998.00 OR B4WS5EFF = 999.00) THEN B4WS5EFF = .;
   IF (B4WS5WSO = 998.00 OR B4WS5WSO = 999.00) THEN B4WS5WSO = .;
   IF (B4WS5WT = 998.00 OR B4WS5WT = 999.00) THEN B4WS5WT = .;
   IF (B4WS5PW = 98.00 OR B4WS5PW = 99.00) THEN B4WS5PW = .;
   IF (B4WS5WB = 998 OR B4WS5WB = 999) THEN B4WS5WB = .;
   IF (B4WS5AWB = 98.00 OR B4WS5AWB = 99.00) THEN B4WS5AWB = .;
   IF (B4WS5SLT = 9998.0 OR B4WS5SLT = 9999.0) THEN B4WS5SLT = .;
   IF (B4WS5PSL = 998.00 OR B4WS5PSL = 999.00) THEN B4WS5PSL = .;
   IF (B4WS5SLB = 998 OR B4WS5SLB = 999) THEN B4WS5SLB = .;
   IF (B4WS5ASB = 998.00 OR B4WS5ASB = 999.00) THEN B4WS5ASB = .;
   IF (B4WA5TAC = 9999998 OR B4WA5TAC = 9999999) THEN B4WA5TAC = .;
   IF (B4WA5ACM = 9998.00 OR B4WA5ACM = 9999.00) THEN B4WA5ACM = .;
   IF (B4WA5MAC = 9998 OR B4WA5MAC = 9999) THEN B4WA5MAC = .;
   IF (B4WA5IAC = 8 OR B4WA5IAC = 9) THEN B4WA5IAC = .;
   IF (B4WA5ISW = 8.00 OR B4WA5ISW = 9.00) THEN B4WA5ISW = .;
   IF (B4WA5WT = 9998.0 OR B4WA5WT = 9999.0) THEN B4WA5WT = .;
   IF (B4WA5PW = 998.00 OR B4WA5PW = 999.00) THEN B4WA5PW = .;
   IF (B4WA5WB = 998 OR B4WA5WB = 999) THEN B4WA5WB = .;
   IF (B4WA5AWB = 998.00 OR B4WA5AWB = 999.00) THEN B4WA5AWB = .;
   IF (B4WA5SLT = 998.00 OR B4WA5SLT = 999.00) THEN B4WA5SLT = .;
   IF (B4WA5PSL = 98.00 OR B4WA5PSL = 99.00) THEN B4WA5PSL = .;
   IF (B4WA5SLB = 998 OR B4WA5SLB = 999) THEN B4WA5SLB = .;
   IF (B4WA5ASB = 98.00 OR B4WA5ASB = 99.00) THEN B4WA5ASB = .;
   IF (B4WR6TAC = 999998 OR B4WR6TAC = 999999) THEN B4WR6TAC = .;
   IF (B4WR6ACM = 998.00 OR B4WR6ACM = 999.00) THEN B4WR6ACM = .;
   IF (B4WR6MAC = 9998 OR B4WR6MAC = 9999) THEN B4WR6MAC = .;
   IF (B4WR6IAC = 98 OR B4WR6IAC = 99) THEN B4WR6IAC = .;
   IF (B4WR6SW = 98.00 OR B4WR6SW = 99.00) THEN B4WR6SW = .;
   IF (B4WR6WT = 998.00 OR B4WR6WT = 999.00) THEN B4WR6WT = .;
   IF (B4WR6PW = 998.00 OR B4WR6PW = 999.00) THEN B4WR6PW = .;
   IF (B4WR6WB = 998 OR B4WR6WB = 999) THEN B4WR6WB = .;
   IF (B4WR6AWB = 998.00 OR B4WR6AWB = 999.00) THEN B4WR6AWB = .;
   IF (B4WR6SLT = 9998.0 OR B4WR6SLT = 9999.0) THEN B4WR6SLT = .;
   IF (B4WR6PSL = 998.00 OR B4WR6PSL = 999.00) THEN B4WR6PSL = .;
   IF (B4WR6SLB = 998 OR B4WR6SLB = 999) THEN B4WR6SLB = .;
   IF (B4WR6ASB = 998.00 OR B4WR6ASB = 999.00) THEN B4WR6ASB = .;
   IF (B4WS6TAC = 999998 OR B4WS6TAC = 999999) THEN B4WS6TAC = .;
   IF (B4WS6ACM = 998.00 OR B4WS6ACM = 999.00) THEN B4WS6ACM = .;
   IF (B4WS6MAC = 9998 OR B4WS6MAC = 9999) THEN B4WS6MAC = .;
   IF (B4WS6IAC = 98 OR B4WS6IAC = 99) THEN B4WS6IAC = .;
   IF (B4WS6ISW = 98.00 OR B4WS6ISW = 99.00) THEN B4WS6ISW = .;
   IF (B4WS6OL = 998.00 OR B4WS6OL = 999.00) THEN B4WS6OL = .;
   IF (B4WS6SNT = 998.00 OR B4WS6SNT = 999.00) THEN B4WS6SNT = .;
   IF (B4WS6EFF = 998.00 OR B4WS6EFF = 999.00) THEN B4WS6EFF = .;
   IF (B4WS6WSO = 998.00 OR B4WS6WSO = 999.00) THEN B4WS6WSO = .;
   IF (B4WS6WT = 998.00 OR B4WS6WT = 999.00) THEN B4WS6WT = .;
   IF (B4WS6PW = 98.00 OR B4WS6PW = 99.00) THEN B4WS6PW = .;
   IF (B4WS6WB = 998 OR B4WS6WB = 999) THEN B4WS6WB = .;
   IF (B4WS6AWB = 98.00 OR B4WS6AWB = 99.00) THEN B4WS6AWB = .;
   IF (B4WS6SLT = 9998.0 OR B4WS6SLT = 9999.0) THEN B4WS6SLT = .;
   IF (B4WS6PSL = 998.00 OR B4WS6PSL = 999.00) THEN B4WS6PSL = .;
   IF (B4WS6SLB = 998 OR B4WS6SLB = 999) THEN B4WS6SLB = .;
   IF (B4WS6ASB = 998.00 OR B4WS6ASB = 999.00) THEN B4WS6ASB = .;
   IF (B4WA6TAC = 9999998 OR B4WA6TAC = 9999999) THEN B4WA6TAC = .;
   IF (B4WA6ACM = 9998.00 OR B4WA6ACM = 9999.00) THEN B4WA6ACM = .;
   IF (B4WA6MAC = 9998 OR B4WA6MAC = 9999) THEN B4WA6MAC = .;
   IF (B4WA6IAC = 8 OR B4WA6IAC = 9) THEN B4WA6IAC = .;
   IF (B4WA6ISW = 8.00 OR B4WA6ISW = 9.00) THEN B4WA6ISW = .;
   IF (B4WA6WT = 9998.0 OR B4WA6WT = 9999.0) THEN B4WA6WT = .;
   IF (B4WA6PW = 998.00 OR B4WA6PW = 999.00) THEN B4WA6PW = .;
   IF (B4WA6WB = 998 OR B4WA6WB = 999) THEN B4WA6WB = .;
   IF (B4WA6AWB = 998.00 OR B4WA6AWB = 999.00) THEN B4WA6AWB = .;
   IF (B4WA6SLT = 998.00 OR B4WA6SLT = 999.00) THEN B4WA6SLT = .;
   IF (B4WA6PSL = 98.00 OR B4WA6PSL = 99.00) THEN B4WA6PSL = .;
   IF (B4WA6SLB = 998 OR B4WA6SLB = 999) THEN B4WA6SLB = .;
   IF (B4WA6ASB = 98.00 OR B4WA6ASB = 99.00) THEN B4WA6ASB = .;
   IF (B4WR7TAC = 999998 OR B4WR7TAC = 999999) THEN B4WR7TAC = .;
   IF (B4WR7ACM = 998.00 OR B4WR7ACM = 999.00) THEN B4WR7ACM = .;
   IF (B4WR7MAC = 9998 OR B4WR7MAC = 9999) THEN B4WR7MAC = .;
   IF (B4WR7IAC = 98 OR B4WR7IAC = 99) THEN B4WR7IAC = .;
   IF (B4WR7SW = 98.00 OR B4WR7SW = 99.00) THEN B4WR7SW = .;
   IF (B4WR7WT = 998.00 OR B4WR7WT = 999.00) THEN B4WR7WT = .;
   IF (B4WR7PW = 998.00 OR B4WR7PW = 999.00) THEN B4WR7PW = .;
   IF (B4WR7WB = 998 OR B4WR7WB = 999) THEN B4WR7WB = .;
   IF (B4WR7AWB = 998.00 OR B4WR7AWB = 999.00) THEN B4WR7AWB = .;
   IF (B4WR7SLT = 9998.0 OR B4WR7SLT = 9999.0) THEN B4WR7SLT = .;
   IF (B4WR7PSL = 998.00 OR B4WR7PSL = 999.00) THEN B4WR7PSL = .;
   IF (B4WR7SLB = 998 OR B4WR7SLB = 999) THEN B4WR7SLB = .;
   IF (B4WR7ASB = 998.00 OR B4WR7ASB = 999.00) THEN B4WR7ASB = .;
   IF (B4WS7TAC = 999998 OR B4WS7TAC = 999999) THEN B4WS7TAC = .;
   IF (B4WS7ACM = 998.00 OR B4WS7ACM = 999.00) THEN B4WS7ACM = .;
   IF (B4WS7MAC = 9998 OR B4WS7MAC = 9999) THEN B4WS7MAC = .;
   IF (B4WS7IAC = 98 OR B4WS7IAC = 99) THEN B4WS7IAC = .;
   IF (B4WS7ISW = 98.00 OR B4WS7ISW = 99.00) THEN B4WS7ISW = .;
   IF (B4WS7OL = 998.00 OR B4WS7OL = 999.00) THEN B4WS7OL = .;
   IF (B4WS7SNT = 998.00 OR B4WS7SNT = 999.00) THEN B4WS7SNT = .;
   IF (B4WS7EFF = 998.00 OR B4WS7EFF = 999.00) THEN B4WS7EFF = .;
   IF (B4WS7WSO = 998.00 OR B4WS7WSO = 999.00) THEN B4WS7WSO = .;
   IF (B4WS7WT = 998.00 OR B4WS7WT = 999.00) THEN B4WS7WT = .;
   IF (B4WS7PW = 98.00 OR B4WS7PW = 99.00) THEN B4WS7PW = .;
   IF (B4WS7WB = 998 OR B4WS7WB = 999) THEN B4WS7WB = .;
   IF (B4WS7AWB = 98.00 OR B4WS7AWB = 99.00) THEN B4WS7AWB = .;
   IF (B4WS7SLT = 9998.0 OR B4WS7SLT = 9999.0) THEN B4WS7SLT = .;
   IF (B4WS7PSL = 998.00 OR B4WS7PSL = 999.00) THEN B4WS7PSL = .;
   IF (B4WS7SLB = 998 OR B4WS7SLB = 999) THEN B4WS7SLB = .;
   IF (B4WS7ASB = 998.00 OR B4WS7ASB = 999.00) THEN B4WS7ASB = .;
   IF (B4VHAWR = 7 OR B4VHAWR = 8 OR B4VHAWR = 9) THEN B4VHAWR = .;
   IF (B4VHADW = 7 OR B4VHADW = 8 OR B4VHADW = 9) THEN B4VHADW = .;
   IF (B4VHATH = 7 OR B4VHATH = 8 OR B4VHATH = 9) THEN B4VHATH = .;
   IF (B4VHASC = 7 OR B4VHASC = 8 OR B4VHASC = 9) THEN B4VHASC = .;
   IF (B4VHATO = 7 OR B4VHATO = 8 OR B4VHATO = 9) THEN B4VHATO = .;
   IF (B4VHAKN = 7 OR B4VHAKN = 8 OR B4VHAKN = 9) THEN B4VHAKN = .;
   IF (B4VHASP = 7 OR B4VHASP = 8 OR B4VHASP = 9) THEN B4VHASP = .;
   IF (B4VHABR = 7 OR B4VHABR = 8 OR B4VHABR = 9) THEN B4VHABR = .;
   IF (B4VHASM = 7 OR B4VHASM = 8 OR B4VHASM = 9) THEN B4VHASM = .;
   IF (B4VHAOB = 7 OR B4VHAOB = 8 OR B4VHAOB = 9) THEN B4VHAOB = .;
   IF (B4VHAKI = 7 OR B4VHAKI = 8 OR B4VHAKI = 9) THEN B4VHAKI = .;
   IF (B4VHAOE = 7 OR B4VHAOE = 8 OR B4VHAOE = 9) THEN B4VHAOE = .;
   IF (B4VHALT = 998 OR B4VHALT = 999) THEN B4VHALT = .;
   IF (B4VHART = 998 OR B4VHART = 999) THEN B4VHART = .;
   IF (B4VHALQ = 998 OR B4VHALQ = 999) THEN B4VHALQ = .;
   IF (B4VHADZ = 98 OR B4VHADZ = 99) THEN B4VHADZ = .;
   IF (B4VHADR = 98 OR B4VHADR = 99) THEN B4VHADR = .;
   IF (B4VHADL = 98 OR B4VHADL = 99) THEN B4VHADL = .;
   IF (B4VST = '349200.0' OR B4VST = '352800.0' OR B4VST = '356400.0') THEN B4VST = '';
   IF (B4VATEH = 9999.00) THEN B4VATEH = .;
   IF (B4VCAFH = 9999.00) THEN B4VCAFH = .;
   IF (B4VCIGH = 9999.00) THEN B4VCIGH = .;
   IF (B4VCLB = 7 OR B4VCLB = 8 OR B4VCLB = 9) THEN B4VCLB = .;
   IF (B4VCLBT = 7 OR B4VCLBT = 8 OR B4VCLBT = 9) THEN B4VCLBT = .;
   IF (B4VCIRC = 8 OR B4VCIRC = 9) THEN B4VCIRC = .;
   IF (B4VLC = 8 OR B4VLC = 9) THEN B4VLC = .;
   IF (B4VS1T = '349200.0' OR B4VS1T = '352800.0' OR B4VS1T = '356400.0') THEN B4VS1T = '';
   IF (B4VSRB1 = 98 OR B4VSRB1 = 99) THEN B4VSRB1 = .;
   IF (B4VTASK1 = 'INAPPLIC') THEN B4VTASK1 = '';
   IF (B4VCS1 = 9) THEN B4VCS1 = .;
   IF (B4VSRCS1 = 98 OR B4VSRCS1 = 99) THEN B4VSRCS1 = .;
   IF (B4VSRR1 = 98 OR B4VSRR1 = 99) THEN B4VSRR1 = .;
   IF (B4VTASK2 = 'INAPPLIC') THEN B4VTASK2 = '';
   IF (B4VCS2 = 9) THEN B4VCS2 = .;
   IF (B4VSRCS2 = 98 OR B4VSRCS2 = 99) THEN B4VSRCS2 = .;
   IF (B4VSRR2 = 98 OR B4VSRR2 = 99) THEN B4VSRR2 = .;
   IF (B4VS2T = '349200.0' OR B4VS2T = '352800.0' OR B4VS2T = '356400.0') THEN B4VS2T = '';
   IF (B4VSRU1 = 98 OR B4VSRU1 = 99) THEN B4VSRU1 = .;
   IF (B4VS3T = '349200.0' OR B4VS3T = '352800.0' OR B4VS3T = '356400.0') THEN B4VS3T = '';
   IF (B4VS4T = '349200.0' OR B4VS4T = '352800.0' OR B4VS4T = '356400.0') THEN B4VS4T = '';
   IF (B4VSTS1 = 998) THEN B4VSTS1 = .;
   IF (B4VS1S2 = 998) THEN B4VS1S2 = .;
   IF (B4VS2S3 = 998) THEN B4VS2S3 = .;
   IF (B4VS3S4 = 998) THEN B4VS3S4 = .;
   IF (B4VMEQ = 9) THEN B4VMEQ = .;
   IF (B4VMEQR = 9) THEN B4VMEQR = .;
   IF (B4VPEQ = 9) THEN B4VPEQ = .;
   IF (B4VPEQR = 9) THEN B4VPEQR = .;
   IF (B4VB1DU = 9998 OR B4VB1DU = 9999) THEN B4VB1DU = .;
   IF (B4VB1BEG = 99998.0 OR B4VB1BEG = 99999.0) THEN B4VB1BEG = .;
   IF (B4VB1END = 99998.0 OR B4VB1END = 99999.0) THEN B4VB1END = .;
   IF (B4VB1MAX = 99998.0 OR B4VB1MAX = 99999.0) THEN B4VB1MAX = .;
   IF (B4VB1NU = 9998 OR B4VB1NU = 9999) THEN B4VB1NU = .;
   IF (B4VB1HR = 99998.0 OR B4VB1HR = 99999.0) THEN B4VB1HR = .;
   IF (B4VB1SD = 99998.00 OR B4VB1SD = 99999.00) THEN B4VB1SD = .;
   IF (B4VB1LSD = 99998.00 OR B4VB1LSD = 99999.00) THEN B4VB1LSD = .;
   IF (B4VB1RM = 99998.00 OR B4VB1RM = 99999.00) THEN B4VB1RM = .;
   IF (B4VB1LRM = 99998.00 OR B4VB1LRM = 99999.00) THEN B4VB1LRM = .;
   IF (B4VB1LF = 99998.00 OR B4VB1LF = 99999.00) THEN B4VB1LF = .;
   IF (B4VB1LLF = 99998.00 OR B4VB1LLF = 99999.00) THEN B4VB1LLF = .;
   IF (B4VB1HF = 99998.00 OR B4VB1HF = 99999.00) THEN B4VB1HF = .;
   IF (B4VB1LHF = 99998.00 OR B4VB1LHF = 99999.00) THEN B4VB1LHF = .;
   IF (B4VB2DU = 9998 OR B4VB2DU = 9999) THEN B4VB2DU = .;
   IF (B4VB2BEG = 99998.0 OR B4VB2BEG = 99999.0) THEN B4VB2BEG = .;
   IF (B4VB2END = 99998.0 OR B4VB2END = 99999.0) THEN B4VB2END = .;
   IF (B4VB2MAX = 99998.0 OR B4VB2MAX = 99999.0) THEN B4VB2MAX = .;
   IF (B4VB2NU = 9998 OR B4VB2NU = 9999) THEN B4VB2NU = .;
   IF (B4VB2HR = 99998.0 OR B4VB2HR = 99999.0) THEN B4VB2HR = .;
   IF (B4VB2SD = 99998.00 OR B4VB2SD = 99999.00) THEN B4VB2SD = .;
   IF (B4VB2LSD = 99998.00 OR B4VB2LSD = 99999.00) THEN B4VB2LSD = .;
   IF (B4VB2RM = 99998.00 OR B4VB2RM = 99999.00) THEN B4VB2RM = .;
   IF (B4VB2LRM = 99998.00 OR B4VB2LRM = 99999.00) THEN B4VB2LRM = .;
   IF (B4VB2LF = 99998.00 OR B4VB2LF = 99999.00) THEN B4VB2LF = .;
   IF (B4VB2LLF = 99998.00 OR B4VB2LLF = 99999.00) THEN B4VB2LLF = .;
   IF (B4VB2HF = 99998.00 OR B4VB2HF = 99999.00) THEN B4VB2HF = .;
   IF (B4VB2LHF = 99998.00 OR B4VB2LHF = 99999.00) THEN B4VB2LHF = .;
   IF (B4VM1DU = 9998 OR B4VM1DU = 9999) THEN B4VM1DU = .;
   IF (B4VM1BEG = 99998.0 OR B4VM1BEG = 99999.0) THEN B4VM1BEG = .;
   IF (B4VM1END = 99998.0 OR B4VM1END = 99999.0) THEN B4VM1END = .;
   IF (B4VM1MAX = 99998.0 OR B4VM1MAX = 99999.0) THEN B4VM1MAX = .;
   IF (B4VM1NU = 9998 OR B4VM1NU = 9999) THEN B4VM1NU = .;
   IF (B4VM1HR = 99998.0 OR B4VM1HR = 99999.0) THEN B4VM1HR = .;
   IF (B4VM1SD = 99998.00 OR B4VM1SD = 99999.00) THEN B4VM1SD = .;
   IF (B4VM1LSD = 99998.00 OR B4VM1LSD = 99999.00) THEN B4VM1LSD = .;
   IF (B4VM1RM = 99998.00 OR B4VM1RM = 99999.00) THEN B4VM1RM = .;
   IF (B4VM1LRM = 99998.00 OR B4VM1LRM = 99999.00) THEN B4VM1LRM = .;
   IF (B4VM1LF = 99998.00 OR B4VM1LF = 99999.00) THEN B4VM1LF = .;
   IF (B4VM1LLF = 99998.00 OR B4VM1LLF = 99999.00) THEN B4VM1LLF = .;
   IF (B4VM1HF = 99998.00 OR B4VM1HF = 99999.00) THEN B4VM1HF = .;
   IF (B4VM1LHF = 99998.00 OR B4VM1LHF = 99999.00) THEN B4VM1LHF = .;
   IF (B4VP1DU = 9998 OR B4VP1DU = 9999) THEN B4VP1DU = .;
   IF (B4VP1BEG = 99998.0 OR B4VP1BEG = 99999.0) THEN B4VP1BEG = .;
   IF (B4VP1END = 99998.0 OR B4VP1END = 99999.0) THEN B4VP1END = .;
   IF (B4VP1MAX = 99998.0 OR B4VP1MAX = 99999.0) THEN B4VP1MAX = .;
   IF (B4VP1NU = 9998 OR B4VP1NU = 9999) THEN B4VP1NU = .;
   IF (B4VP1HR = 99998.0 OR B4VP1HR = 99999.0) THEN B4VP1HR = .;
   IF (B4VP1SD = 99998.00 OR B4VP1SD = 99999.00) THEN B4VP1SD = .;
   IF (B4VP1LSD = 99998.00 OR B4VP1LSD = 99999.00) THEN B4VP1LSD = .;
   IF (B4VP1RM = 99998.00 OR B4VP1RM = 99999.00) THEN B4VP1RM = .;
   IF (B4VP1LRM = 99998.00 OR B4VP1LRM = 99999.00) THEN B4VP1LRM = .;
   IF (B4VP1LF = 99998.00 OR B4VP1LF = 99999.00) THEN B4VP1LF = .;
   IF (B4VP1LLF = 99998.00 OR B4VP1LLF = 99999.00) THEN B4VP1LLF = .;
   IF (B4VP1HF = 99998.00 OR B4VP1HF = 99999.00) THEN B4VP1HF = .;
   IF (B4VP1LHF = 99998.00 OR B4VP1LHF = 99999.00) THEN B4VP1LHF = .;
   IF (B4VP2DU = 9998 OR B4VP2DU = 9999) THEN B4VP2DU = .;
   IF (B4VP2BEG = 99998.0 OR B4VP2BEG = 99999.0) THEN B4VP2BEG = .;
   IF (B4VP2END = 99998.0 OR B4VP2END = 99999.0) THEN B4VP2END = .;
   IF (B4VP2MAX = 99998.0 OR B4VP2MAX = 99999.0) THEN B4VP2MAX = .;
   IF (B4VP2NU = 9998 OR B4VP2NU = 9999) THEN B4VP2NU = .;
   IF (B4VP2HR = 99998.0 OR B4VP2HR = 99999.0) THEN B4VP2HR = .;
   IF (B4VP2SD = 99998.00 OR B4VP2SD = 99999.00) THEN B4VP2SD = .;
   IF (B4VP2LSD = 99998.00 OR B4VP2LSD = 99999.00) THEN B4VP2LSD = .;
   IF (B4VP2RM = 99998.00 OR B4VP2RM = 99999.00) THEN B4VP2RM = .;
   IF (B4VP2LRM = 99998.00 OR B4VP2LRM = 99999.00) THEN B4VP2LRM = .;
   IF (B4VP2LF = 99998.00 OR B4VP2LF = 99999.00) THEN B4VP2LF = .;
   IF (B4VP2LLF = 99998.00 OR B4VP2LLF = 99999.00) THEN B4VP2LLF = .;
   IF (B4VP2HF = 99998.00 OR B4VP2HF = 99999.00) THEN B4VP2HF = .;
   IF (B4VP2LHF = 99998.00 OR B4VP2LHF = 99999.00) THEN B4VP2LHF = .;
   IF (B4VR1DU = 9998 OR B4VR1DU = 9999) THEN B4VR1DU = .;
   IF (B4VR1BEG = 99998.0 OR B4VR1BEG = 99999.0) THEN B4VR1BEG = .;
   IF (B4VR1END = 99998.0 OR B4VR1END = 99999.0) THEN B4VR1END = .;
   IF (B4VR1MAX = 99998.0 OR B4VR1MAX = 99999.0) THEN B4VR1MAX = .;
   IF (B4VR1NU = 9998 OR B4VR1NU = 9999) THEN B4VR1NU = .;
   IF (B4VR1HR = 99998.0 OR B4VR1HR = 99999.0) THEN B4VR1HR = .;
   IF (B4VR1SD = 99998.00 OR B4VR1SD = 99999.00) THEN B4VR1SD = .;
   IF (B4VR1LSD = 99998.00 OR B4VR1LSD = 99999.00) THEN B4VR1LSD = .;
   IF (B4VR1RM = 99998.00 OR B4VR1RM = 99999.00) THEN B4VR1RM = .;
   IF (B4VR1LRM = 99998.00 OR B4VR1LRM = 99999.00) THEN B4VR1LRM = .;
   IF (B4VR1LF = 99998.00 OR B4VR1LF = 99999.00) THEN B4VR1LF = .;
   IF (B4VR1LLF = 99998.00 OR B4VR1LLF = 99999.00) THEN B4VR1LLF = .;
   IF (B4VR1HF = 99998.00 OR B4VR1HF = 99999.00) THEN B4VR1HF = .;
   IF (B4VR1LHF = 99998.00 OR B4VR1LHF = 99999.00) THEN B4VR1LHF = .;
   IF (B4VR2DU = 9998 OR B4VR2DU = 9999) THEN B4VR2DU = .;
   IF (B4VR2BEG = 99998.0 OR B4VR2BEG = 99999.0) THEN B4VR2BEG = .;
   IF (B4VR2END = 99998.0 OR B4VR2END = 99999.0) THEN B4VR2END = .;
   IF (B4VR2MAX = 99998.0 OR B4VR2MAX = 99999.0) THEN B4VR2MAX = .;
   IF (B4VR2NU = 9998 OR B4VR2NU = 9999) THEN B4VR2NU = .;
   IF (B4VR2HR = 99998.0 OR B4VR2HR = 99999.0) THEN B4VR2HR = .;
   IF (B4VR2SD = 99998.00 OR B4VR2SD = 99999.00) THEN B4VR2SD = .;
   IF (B4VR2LSD = 99998.00 OR B4VR2LSD = 99999.00) THEN B4VR2LSD = .;
   IF (B4VR2RM = 99998.00 OR B4VR2RM = 99999.00) THEN B4VR2RM = .;
   IF (B4VR2LRM = 99998.00 OR B4VR2LRM = 99999.00) THEN B4VR2LRM = .;
   IF (B4VR2LF = 99998.00 OR B4VR2LF = 99999.00) THEN B4VR2LF = .;
   IF (B4VR2LLF = 99998.00 OR B4VR2LLF = 99999.00) THEN B4VR2LLF = .;
   IF (B4VR2HF = 99998.00 OR B4VR2HF = 99999.00) THEN B4VR2HF = .;
   IF (B4VR2LHF = 99998.00 OR B4VR2LHF = 99999.00) THEN B4VR2LHF = .;
   IF (B4VS1DU = 9998 OR B4VS1DU = 9999) THEN B4VS1DU = .;
   IF (B4VS1BEG = 99998.0 OR B4VS1BEG = 99999.0) THEN B4VS1BEG = .;
   IF (B4VS1END = 99998.0 OR B4VS1END = 99999.0) THEN B4VS1END = .;
   IF (B4VS1MAX = 99998.0 OR B4VS1MAX = 99999.0) THEN B4VS1MAX = .;
   IF (B4VS1NU = 9998 OR B4VS1NU = 9999) THEN B4VS1NU = .;
   IF (B4VS1HR = 99998.0 OR B4VS1HR = 99999.0) THEN B4VS1HR = .;
   IF (B4VS1SD = 99998.00 OR B4VS1SD = 99999.00) THEN B4VS1SD = .;
   IF (B4VS1LSD = 99998.00 OR B4VS1LSD = 99999.00) THEN B4VS1LSD = .;
   IF (B4VS1RM = 99998.00 OR B4VS1RM = 99999.00) THEN B4VS1RM = .;
   IF (B4VS1LRM = 99998.00 OR B4VS1LRM = 99999.00) THEN B4VS1LRM = .;
   IF (B4VS1LF = 99998.00 OR B4VS1LF = 99999.00) THEN B4VS1LF = .;
   IF (B4VS1LLF = 99998.00 OR B4VS1LLF = 99999.00) THEN B4VS1LLF = .;
   IF (B4VS1HF = 99998.00 OR B4VS1HF = 99999.00) THEN B4VS1HF = .;
   IF (B4VS1LHF = 99998.00 OR B4VS1LHF = 99999.00) THEN B4VS1LHF = .;
   IF (B4VS2DU = 9998 OR B4VS2DU = 9999) THEN B4VS2DU = .;
   IF (B4VS2BEG = 99998.0 OR B4VS2BEG = 99999.0) THEN B4VS2BEG = .;
   IF (B4VS2END = 99998.0 OR B4VS2END = 99999.0) THEN B4VS2END = .;
   IF (B4VS2MAX = 99998.0 OR B4VS2MAX = 99999.0) THEN B4VS2MAX = .;
   IF (B4VS2NU = 9998 OR B4VS2NU = 9999) THEN B4VS2NU = .;
   IF (B4VS2HR = 99998.0 OR B4VS2HR = 99999.0) THEN B4VS2HR = .;
   IF (B4VS2SD = 99998.00 OR B4VS2SD = 99999.00) THEN B4VS2SD = .;
   IF (B4VS2LSD = 99998.00 OR B4VS2LSD = 99999.00) THEN B4VS2LSD = .;
   IF (B4VS2RM = 99998.00 OR B4VS2RM = 99999.00) THEN B4VS2RM = .;
   IF (B4VS2LRM = 99998.00 OR B4VS2LRM = 99999.00) THEN B4VS2LRM = .;
   IF (B4VS2LF = 99998.00 OR B4VS2LF = 99999.00) THEN B4VS2LF = .;
   IF (B4VS2LLF = 99998.00 OR B4VS2LLF = 99999.00) THEN B4VS2LLF = .;
   IF (B4VS2HF = 99998.00 OR B4VS2HF = 99999.00) THEN B4VS2HF = .;
   IF (B4VS2LHF = 99998.00 OR B4VS2LHF = 99999.00) THEN B4VS2LHF = .;
   IF (B4VU1DU = 9998 OR B4VU1DU = 9999) THEN B4VU1DU = .;
   IF (B4VU1BEG = 99998.0 OR B4VU1BEG = 99999.0) THEN B4VU1BEG = .;
   IF (B4VU1END = 99998.0 OR B4VU1END = 99999.0) THEN B4VU1END = .;
   IF (B4VU1MAX = 99998.0 OR B4VU1MAX = 99999.0) THEN B4VU1MAX = .;
   IF (B4VU1NU = 9998 OR B4VU1NU = 9999) THEN B4VU1NU = .;
   IF (B4VU1HR = 99998.0 OR B4VU1HR = 99999.0) THEN B4VU1HR = .;
   IF (B4VU1SD = 99998.00 OR B4VU1SD = 99999.00) THEN B4VU1SD = .;
   IF (B4VU1LSD = 99998.00 OR B4VU1LSD = 99999.00) THEN B4VU1LSD = .;
   IF (B4VU1RM = 99998.00 OR B4VU1RM = 99999.00) THEN B4VU1RM = .;
   IF (B4VU1LRM = 99998.00 OR B4VU1LRM = 99999.00) THEN B4VU1LRM = .;
   IF (B4VU1LF = 99998.00 OR B4VU1LF = 99999.00) THEN B4VU1LF = .;
   IF (B4VU1LLF = 99998.00 OR B4VU1LLF = 99999.00) THEN B4VU1LLF = .;
   IF (B4VU1HF = 99998.00 OR B4VU1HF = 99999.00) THEN B4VU1HF = .;
   IF (B4VU1LHF = 99998.00 OR B4VU1LHF = 99999.00) THEN B4VU1LHF = .;
*/


* SAS FORMAT STATEMENT;

/*
  FORMAT SAMPLMAJ samplmaj. B1PAGE_M2 b1page_f. B1PGENDER b1pgendf.
         B4ZSITE b4zsite. B4ZCOMPM b4zcompm. B4ZRZONE b4zrzone.
         B4ZSZONE b4zszone. B4ZB1CLG b4zb1clg. B4Q1A b4q1a.
         B4Q1B b4q1b. B4Q1C b4q1c. B4Q1D b4q1d.
         B4Q1E b4q1e. B4Q1F b4q1f. B4Q1G b4q1g.
         B4Q1H b4q1h. B4Q1I b4q1i. B4Q1J b4q1j.
         B4Q1K b4q1k. B4Q1L b4q1l. B4Q1M b4q1m.
         B4Q1N b4q1n. B4Q1O b4q1o. B4Q1P b4q1p.
         B4Q1Q b4q1q. B4Q1R b4q1r. B4Q1S b4q1s.
         B4Q1T b4q1t. B4Q1U b4q1u. B4Q1V b4q1v.
         B4Q1W b4q1w. B4Q1X b4q1x. B4Q1Y b4q1y.
         B4Q1Z b4q1z. B4Q1AA b4q1aa. B4Q1BB b4q1bb.
         B4Q1CC b4q1cc. B4Q1DD b4q1dd. B4Q1EE b4q1ee.
         B4Q1FF b4q1ff. B4Q1GG b4q1gg. B4Q1HH b4q1hh.
         B4Q1II b4q1ii. B4Q1JJ b4q1jj. B4Q1KK b4q1kk.
         B4Q1LL b4q1ll. B4Q1MM b4q1mm. B4Q1NN b4q1nn.
         B4Q1OO b4q1oo. B4Q1PP b4q1pp. B4Q1QQ b4q1qq.
         B4Q1RR b4q1rr. B4Q1SS b4q1ss. B4Q1TT b4q1tt.
         B4Q1UU b4q1uu. B4Q1VV b4q1vv. B4Q1WW b4q1ww.
         B4Q1XX b4q1xx. B4Q1YY b4q1yy. B4Q1ZZ b4q1zz.
         B4Q1AAA b4q1aaa. B4Q1BBB b4q1bbb. B4Q1CCC b4q1ccc.
         B4Q1DDD b4q1ddd. B4Q1EEE b4q1eee. B4Q1FFF b4q1fff.
         B4Q1GGG b4q1ggg. B4Q1HHH b4q1hhh. B4Q1III b4q1iii.
         B4Q1JJJ b4q1jjj. B4Q1KKK b4q1kkk. B4Q1LLL b4q1lll.
         B4QMA_D b4qma_d. B4QMA_A b4qma_a. B4QMA_LI b4qma_li.
         B4QMA_AA b4qma_aa. B4QMA_PA b4qma_pa. B4Q2 b4q2ffff.
         B4Q3A b4q3a. B4Q3B b4q3b. B4Q3C b4q3c.
         B4Q3D b4q3d. B4Q3E b4q3e. B4Q3F b4q3f.
         B4Q3G b4q3g. B4Q3H b4q3h. B4Q3I b4q3i.
         B4Q3J b4q3j. B4Q3K b4q3k. B4Q3L b4q3l.
         B4Q3M b4q3m. B4Q3N b4q3n. B4Q3O b4q3o.
         B4Q3P b4q3p. B4Q3Q b4q3q. B4Q3R b4q3r.
         B4Q3S b4q3s. B4Q3T b4q3t. B4QCESD b4qcesd.
         B4Q4A b4q4a. B4Q4B b4q4b. B4Q4C b4q4c.
         B4Q4D b4q4d. B4Q4E b4q4e. B4Q4F b4q4f.
         B4Q4G b4q4g. B4Q4H b4q4h. B4Q4I b4q4i.
         B4Q4J b4q4j. B4QPS_PS b4qps_ps. B4Q5A b4q5a.
         B4Q5B b4q5b. B4Q5C b4q5c. B4Q5D b4q5d.
         B4Q5E b4q5e. B4Q5F b4q5f. B4Q5G b4q5g.
         B4Q5H b4q5h. B4Q5I b4q5i. B4Q5J b4q5j.
         B4Q5K b4q5k. B4Q5L b4q5l. B4Q5M b4q5m.
         B4Q5N b4q5n. B4Q5O b4q5o. B4Q5P b4q5p.
         B4Q5Q b4q5q. B4Q5R b4q5r. B4Q5S b4q5s.
         B4Q5T b4q5t. B4QAE_AI b4qae_ai. B4QAE_AO b4qae_ao.
         B4QAE_AC b4qae_ac. B4Q5U b4q5u. B4Q5V b4q5v.
         B4QAE_AA b4qae_aa. B4Q6A b4q6a. B4Q6B b4q6b.
         B4Q6C b4q6c. B4Q6D b4q6d. B4Q6E b4q6e.
         B4Q6F b4q6f. B4Q6G b4q6g. B4Q6H b4q6h.
         B4Q6I b4q6i. B4Q6J b4q6j. B4Q6K b4q6k.
         B4Q6L b4q6l. B4Q6M b4q6m. B4Q6N b4q6n.
         B4Q6O b4q6o. B4QTA_AG b4qta_ag. B4QTA_AT b4qta_at.
         B4QTA_AR b4qta_ar. B4Q7A b4q7a. B4Q7B b4q7b.
         B4Q7C b4q7c. B4Q7D b4q7d. B4Q7E b4q7e.
         B4Q7F b4q7f. B4Q7G b4q7g. B4Q7H b4q7h.
         B4Q7I b4q7i. B4Q7J b4q7j. B4Q7K b4q7k.
         B4Q7L b4q7l. B4Q7M b4q7m. B4Q7N b4q7n.
         B4Q7O b4q7o. B4Q7P b4q7p. B4Q7Q b4q7q.
         B4Q7R b4q7r. B4Q7S b4q7s. B4Q7T b4q7t.
         B4QTA_AX b4qta_ax. B4Q8A b4q8a. B4Q8B b4q8b.
         B4Q8C b4q8c. B4Q8D b4q8d. B4Q8E b4q8e.
         B4Q8F b4q8f. B4Q8G b4q8g. B4Q8H b4q8h.
         B4Q8I b4q8i. B4QSA_SA b4qsa_sa. B4Q9A b4q9a.
         B4Q9B b4q9b. B4Q9C b4q9c. B4Q9D b4q9d.
         B4Q9E b4q9e. B4Q9F b4q9f. B4Q9G b4q9g.
         B4Q9H b4q9h. B4Q9I b4q9i. B4Q9J b4q9j.
         B4Q9K b4q9k. B4Q9L b4q9l. B4Q9M b4q9m.
         B4Q9N b4q9n. B4Q9O b4q9o. B4Q9P b4q9p.
         B4Q9Q b4q9q. B4Q9R b4q9r. B4Q9S b4q9s.
         B4Q9T b4q9t. B4Q9U b4q9u. B4Q9V b4q9v.
         B4Q9W b4q9w. B4Q9X b4q9x. B4Q9Y b4q9y.
         B4Q9Z b4q9z. B4Q9AA b4q9aa. B4Q9BB b4q9bb.
         B4QCT_EA b4qct_ea. B4QCT_PA b4qct_pa. B4QCT_SA b4qct_sa.
         B4QCT_EN b4qct_en. B4QCT_PN b4qct_pn. B4QCT_MD b4qct_md.
         B4Q10A1 b4q10a1f. B4Q10A2 b4q10a2f. B4Q10B1 b4q10b1f.
         B4Q10B2 b4q10b2f. B4Q10C1 b4q10c1f. B4Q10C2 b4q10c2f.
         B4Q10D1 b4q10d1f. B4Q10D2 b4q10d2f. B4Q10E1 b4q10e1f.
         B4Q10E2 b4q10e2f. B4Q10F1 b4q10f1f. B4Q10F2 b4q10f2f.
         B4Q10G1 b4q10g1f. B4Q10G2 b4q10g2f. B4Q10H1 b4q10h1f.
         B4Q10H2 b4q10h2f. B4Q10I1 b4q10i1f. B4Q10I2 b4q10i2f.
         B4Q10J1 b4q10j1f. B4Q10J2 b4q10j2f. B4Q10K1 b4q10k1f.
         B4Q10K2 b4q10k2f. B4Q10L1 b4q10l1f. B4Q10L2 b4q10l2f.
         B4Q10M1 b4q10m1f. B4Q10M2 b4q10m2f. B4Q10N1 b4q10n1f.
         B4Q10N2 b4q10n2f. B4Q10O1 b4q10o1f. B4Q10O2 b4q10o2f.
         B4Q10P1 b4q10p1f. B4Q10P2 b4q10p2f. B4Q10Q1 b4q10q1f.
         B4Q10Q2 b4q10q2f. B4Q10R1 b4q10r1f. B4Q10R2 b4q10r2f.
         B4Q10S1 b4q10s1f. B4Q10S2 b4q10s2f. B4Q10T1 b4q10t1f.
         B4Q10T2 b4q10t2f. B4Q10U1 b4q10u1f. B4Q10U2 b4q10u2f.
         B4Q10V1 b4q10v1f. B4Q10V2 b4q10v2f. B4Q10W1 b4q10w1f.
         B4Q10W2 b4q10w2f. B4Q10X1 b4q10x1f. B4Q10X2 b4q10x2f.
         B4Q10Y1 b4q10y1f. B4Q10Y2 b4q10y2f. B4Q10Z1 b4q10z1f.
         B4Q10Z2 b4q10z2f. B4Q10AA1 b4q10aaf. B4Q10AA2 b4q10a0f.
         B4Q10BB1 b4q10bbf. B4Q10BB2 b4q10b0f. B4Q10CC1 b4q10ccf.
         B4Q10CC2 b4q10c0f. B4Q10DD1 b4q10ddf. B4Q10DD2 b4q10d0f.
         B4Q10EE1 b4q10eef. B4Q10EE2 b4q10e0f. B4Q10FF1 b4q10fff.
         B4Q10FF2 b4q10f0f. B4Q10GG1 b4q10ggf. B4Q10GG2 b4q10g0f.
         B4Q10HH1 b4q10hhf. B4Q10HH2 b4q10h0f. B4Q10II1 b4q10iif.
         B4Q10II2 b4q10i0f. B4Q10JJ1 b4q10jjf. B4Q10JJ2 b4q10j0f.
         B4Q10KK1 b4q10kkf. B4Q10KK2 b4q10k0f. B4Q10LL1 b4q10llf.
         B4Q10LL2 b4q10l0f. B4Q10MM1 b4q10mmf. B4Q10MM2 b4q10m0f.
         B4Q10NN1 b4q10nnf. B4Q10NN2 b4q10n0f. B4Q10OO1 b4q10oof.
         B4Q10OO2 b4q10o0f. B4Q10PP1 b4q10ppf. B4Q10PP2 b4q10p0f.
         B4Q10QQ1 b4q10qqf. B4Q10QQ2 b4q10q0f. B4Q10RR1 b4q10rrf.
         B4Q10RR2 b4q10r0f. B4Q10SS1 b4q10ssf. B4Q10SS2 b4q10s0f.
         B4Q10TT1 b4q10ttf. B4Q10TT2 b4q10t0f. B4Q10UU1 b4q10uuf.
         B4Q10UU2 b4q10u0f. B4Q10VV1 b4q10vvf. B4Q10VV2 b4q10v0f.
         B4Q10WW1 b4q10wwf. B4Q10WW2 b4q10w0f. B4Q11A b4q11a.
         B4Q11B b4q11b. B4Q11C b4q11c. B4Q11D b4q11d.
         B4Q11E b4q11e. B4Q11F b4q11f. B4Q11G b4q11g.
         B4Q11H b4q11h. B4Q11I b4q11i. B4Q11J b4q11j.
         B4Q11K b4q11k. B4Q11L b4q11l. B4Q11M b4q11m.
         B4Q11N b4q11n. B4Q11O b4q11o. B4Q11P b4q11p.
         B4Q11Q b4q11q. B4Q11R b4q11r. B4Q11S b4q11s.
         B4Q11T b4q11t. B4Q11U b4q11u. B4Q11V b4q11v.
         B4Q11W b4q11w. B4Q11X b4q11x. B4Q11Y b4q11y.
         B4Q11Z b4q11z. B4Q11AA b4q11aa. B4Q11BB b4q11bb.
         B4Q11CC b4q11cc. B4QSC_ID b4qsc_id. B4QSC_IT b4qsc_it.
         B4QSO_PC b4qso_pc. B4QSO_PF b4qso_pf. B4QSO_PX b4qso_px.
         B4QSO_IW b4qso_iw. B4QSO_GW b4qso_gw. B4Q12A b4q12a.
         B4Q12B b4q12b. B4Q12C b4q12c. B4Q12D b4q12d.
         B4Q12E b4q12e. B4Q12F b4q12f. B4Q12G b4q12g.
         B4Q12H b4q12h. B4Q12I b4q12i. B4Q12J b4q12j.
         B4Q12K b4q12k. B4Q12L b4q12l. B4Q12M b4q12m.
         B4Q12N b4q12n. B4Q12O b4q12o. B4Q12P b4q12p.
         B4Q12Q b4q12q. B4Q12R b4q12r. B4Q12S b4q12s.
         B4Q12T b4q12t. B4Q12U b4q12u. B4QRISC b4qrisc.
         B4QSYMP b4qsymp. B4QADJ b4qadj. B4Q13A b4q13a.
         B4Q13B b4q13b. B4Q13C b4q13c. B4Q13D b4q13d.
         B4Q13E b4q13e. B4Q13F b4q13f. B4Q13G b4q13g.
         B4Q13H b4q13h. B4Q13H1 b4q13h1f. B4Q13I b4q13i.
         B4Q13J b4q13j. B4Q13K b4q13k. B4Q13L b4q13l.
         B4Q13M b4q13m. B4Q13N b4q13n. B4Q13O1 b4q13o1f.
         B4Q13O b4q13o. B4Q13P b4q13p. B4Q13Q b4q13q.
         B4Q13R b4q13r. B4Q13S b4q13s. B4Q13T b4q13t.
         B4Q13U b4q13u. B4Q13V b4q13v. B4Q13W b4q13w.
         B4Q13X b4q13x. B4Q13Y b4q13y. B4Q13Z b4q13z.
         B4QSUGF b4qsugf. B4QSTGF b4qstgf. B4QSOGFD b4qsogfd.
         B4QSUGFA b4qsugfa. B4QSTGFA b4qstgfa. B4QSOGFM b4qsogfm.
         B4QSUGS b4qsugs. B4QSTGS b4qstgs. B4QSOLGS b4qsolgs.
         B4Q14A b4q14a. B4Q14B b4q14b. B4Q14C b4q14c.
         B4Q14D b4q14d. B4Q14E b4q14e. B4Q14F b4q14f.
         B4Q14G b4q14g. B4Q14H b4q14h. B4Q14I b4q14i.
         B4Q14J b4q14j. B4Q14K b4q14k. B4Q14L b4q14l.
         B4Q14M b4q14m. B4Q14N b4q14n. B4Q14O b4q14o.
         B4Q14P b4q14p. B4Q14Q b4q14q. B4Q14R b4q14r.
         B4Q14S b4q14s. B4QSC_SC b4qsc_sc. B4QSC_CC b4qsc_cc.
         B4QSC_EC b4qsc_ec. B4QSC_BC b4qsc_bc. B4Q15A b4q15a.
         B4Q15B b4q15b. B4Q15C b4q15c. B4Q15D b4q15d.
         B4Q15E b4q15e. B4Q15F b4q15f. B4Q15G b4q15g.
         B4Q15H b4q15h. B4QSW_SL b4qsw_sl. B4QSW_GR b4qsw_gr.
         B4Q16A b4q16a. B4Q16B b4q16b. B4Q16C b4q16c.
         B4Q16D b4q16d. B4Q16E b4q16e. B4Q16F b4q16f.
         B4Q16G b4q16g. B4Q16H b4q16h. B4QSW_JP b4qsw_jp.
         B4Q17A b4q17a. B4S1AMPM b4s1ampm. B4S2 b4s2ffff.
         B4S3AMPM b4s3ampm. B4S4 b4s4ffff. B4S5 b4s5ffff.
         B4S6 b4s6ffff. B4S7 b4s7ffff. B4S8 b4s8ffff.
         B4S9 b4s9ffff. B4S10A b4s10a. B4S10B b4s10b.
         B4S10C b4s10c. B4S10D b4s10d. B4S10E b4s10e.
         B4S11A b4s11a. B4S11B b4s11b. B4S11C b4s11c.
         B4S11D b4s11d. B4S11E b4s11e. B4S11F b4s11f.
         B4S11G b4s11g. B4S11H b4s11h. B4S11I b4s11i.
         B4S11J b4s11j. B4SSQ_GS b4ssq_gs. B4SSQ_S1 b4ssq_sf.
         B4SSQ_S2 b4ssq_0f. B4SSQ_S3 b4ssq_1f. B4SSQ_S4 b4ssq_2f.
         B4SSQ_S5 b4ssq_3f. B4SSQ_S6 b4ssq_4f. B4SSQ_S7 b4ssq_5f.
         B4H1A b4h1a. B4H1AD b4h1ad. B4H1B b4h1b.
         B4H1BD b4h1bd. B4H1C b4h1c. B4H1CD b4h1cd.
         B4H1D b4h1d. B4H1DD b4h1dd. B4H1E b4h1e.
         B4H1ED b4h1ed. B4H1F b4h1f. B4H1FD b4h1fd.
         B4H1G b4h1g. B4H1GD b4h1gd. B4H1H b4h1h.
         B4H1HD b4h1hd. B4H1I b4h1i. B4H1ID b4h1id.
         B4H1J b4h1j. B4H1JD b4h1jd. B4H1K b4h1k.
         B4H1KD b4h1kd. B4H1L b4h1l. B4H1LD b4h1ld.
         B4H1M b4h1m. B4H1MD b4h1md. B4H1N b4h1n.
         B4H1ND b4h1nd. B4H1O b4h1o. B4H1OD b4h1od.
         B4H1P b4h1p. B4H1PD b4h1pd. B4H1Q b4h1q.
         B4H1QD b4h1qd. B4H1R b4h1r. B4H1RD b4h1rd.
         B4H1S b4h1s. B4H1SD b4h1sd. B4H1T b4h1t.
         B4H1TD b4h1td. B4H1U b4h1u. B4H1UD b4h1ud.
         B4H1V b4h1v. B4H1VD b4h1vd. B4H1W b4h1w.
         B4H1WD b4h1wd. B4H1X b4h1x. B4H1XD b4h1xd.
         B4H1Y b4h1y. B4H1YD b4h1yd. B4HSYMN b4hsymn.
         B4HSYMX b4hsymx. B4H2 b4h2ffff. B4H2AF b4h2af.
         B4H2AY b4h2ay. B4H2BF b4h2bf. B4H2BY b4h2by.
         B4H2CF b4h2cf. B4H2CY b4h2cy. B4H2DF b4h2df.
         B4H2DY b4h2dy. B4H2EF b4h2ef. B4H2EY b4h2ey.
         B4H2FF b4h2ff. B4H2FY b4h2fy. B4H2GF b4h2gf.
         B4H2GY b4h2gy. B4H2HF b4h2hf. B4H2HY b4h2hy.
         B4H2IF b4h2if. B4H2IY b4h2iy. B4H2JF b4h2jf.
         B4H2JY b4h2jy. B4H2KF b4h2kf. B4H2KY b4h2ky.
         B4H2LF b4h2lf. B4H2LY b4h2ly. B4H2MF b4h2mf.
         B4H2MY b4h2my. B4H2NF b4h2nf. B4H2NY b4h2ny.
         B4HBRKB b4hbrkb. B4H3 b4h3ffff. B4H3AL b4h3al.
         B4H3AY b4h3ay. B4H3BL b4h3bl. B4H3BY b4h3by.
         B4H3CL b4h3cl. B4H3CY b4h3cy. B4H3DL b4h3dl.
         B4H3DY b4h3dy. B4H3EL b4h3el. B4H3EY b4h3ey.
         B4H3FL b4h3fl. B4H3FY b4h3fy. B4H3GL b4h3gl.
         B4H3GY b4h3gy. B4H3HL b4h3hl. B4H3HY b4h3hy.
         B4H3IL b4h3il. B4H3IY b4h3iy. B4H3JL b4h3jl.
         B4H3JY b4h3jy. B4HSURG b4hsurg. B4H4 b4h4ffff.
         B4H4AH b4h4ah. B4H4AY b4h4ay. B4H4BH b4h4bh.
         B4H4BY b4h4by. B4H4CH b4h4ch. B4H4CY b4h4cy.
         B4HHEAD b4hhead. B4H5 b4h5ffff. B4H5AH b4h5ah.
         B4H5AY b4h5ay. B4H5BH b4h5bh. B4H5BY b4h5by.
         B4H5CH b4h5ch. B4H5CY b4h5cy. B4HJNT b4hjnt.
         B4H6 b4h6ffff. B4H6AH b4h6ah. B4H6AY b4h6ay.
         B4H6BH b4h6bh. B4H6BY b4h6by. B4H6CH b4h6ch.
         B4H6CY b4h6cy. B4H6DH b4h6dh. B4H6DY b4h6dy.
         B4HMVA b4hmva. B4H7 b4h7ffff. B4H7AH b4h7ah.
         B4H7AY b4h7ay. B4H7BH b4h7bh. B4H7BY b4h7by.
         B4HAMPU b4hampu. B4H8 b4h8ffff. B4H8AH b4h8ah.
         B4H8AY b4h8ay. B4H8BH b4h8bh. B4H8BY b4h8by.
         B4H8CH b4h8ch. B4H8CY b4h8cy. B4H8DH b4h8dh.
         B4H8DY b4h8dy. B4HOHLTH b4hohlth. B4H9 b4h9ffff.
         B4H10 b4h10fff. B4H10A b4h10a. B4H10B b4h10b.
         B4H10C b4h10c. B4H10D b4h10d. B4H10E b4h10e.
         B4H10F b4h10f. B4H11A b4h11a. B4H11AI b4h11ai.
         B4H11AA b4h11aa. B4H11B b4h11b. B4H11BI b4h11bi.
         B4H11BA b4h11ba. B4H11C b4h11c. B4H11CI b4h11ci.
         B4H11CA b4h11ca. B4H11D b4h11d. B4H11DI b4h11di.
         B4H11DA b4h11da. B4H11E b4h11e. B4H12A b4h12a.
         B4H12AM b4h12am. B4H12AY b4h12ay. B4H12B b4h12b.
         B4H12BM b4h12bm. B4H12BY b4h12by. B4H12C b4h12c.
         B4H12CM b4h12cm. B4H12CY b4h12cy. B4H13 b4h13fff.
         B4H14 b4h14fff. B4H14A b4h14a. B4H15A b4h15a.
         B4H15A1 b4h15a1f. B4H15A2 b4h15a2f. B4H15A3 b4h15a3f.
         B4H15A4 b4h15a4f. B4H15A5 b4h15a5f. B4H15A6 b4h15a6f.
         B4H15A7 b4h15a7f. B4H15B b4h15b. B4H15B1 b4h15b1f.
         B4H15B2 b4h15b2f. B4H15B3 b4h15b3f. B4H15B4 b4h15b4f.
         B4H15B5 b4h15b5f. B4H15B6 b4h15b6f. B4H15B7 b4h15b7f.
         B4H15C b4h15c. B4H15C1 b4h15c1f. B4H15C2 b4h15c2f.
         B4H15C3 b4h15c3f. B4H15C4 b4h15c4f. B4H15C5 b4h15c5f.
         B4H15C6 b4h15c6f. B4H15C7 b4h15c7f. B4H15D b4h15d.
         B4H15D1 b4h15d1f. B4H15D2 b4h15d2f. B4H15D3 b4h15d3f.
         B4H15D4 b4h15d4f. B4H15D5 b4h15d5f. B4H15D6 b4h15d6f.
         B4H15D7 b4h15d7f. B4H15E b4h15e. B4H15E1 b4h15e1f.
         B4H15E2 b4h15e2f. B4H15E3 b4h15e3f. B4H15E4 b4h15e4f.
         B4H15E5 b4h15e5f. B4H15E6 b4h15e6f. B4H15E7 b4h15e7f.
         B4H15F b4h15f. B4H15F1 b4h15f1f. B4H15F2 b4h15f2f.
         B4H15F3 b4h15f3f. B4H15F4 b4h15f4f. B4H15F5 b4h15f5f.
         B4H15F6 b4h15f6f. B4H15F7 b4h15f7f. B4H15G b4h15g.
         B4H15G1 b4h15g1f. B4H15G2 b4h15g2f. B4H15G3 b4h15g3f.
         B4H15G4 b4h15g4f. B4H15G5 b4h15g5f. B4H15G6 b4h15g6f.
         B4H15G7 b4h15g7f. B4H15H b4h15h. B4H15H1 b4h15h1f.
         B4H15H2 b4h15h2f. B4H15H3 b4h15h3f. B4H15H4 b4h15h4f.
         B4H15H5 b4h15h5f. B4H15H6 b4h15h6f. B4H15H7 b4h15h7f.
         B4H15I b4h15i. B4H15I1 b4h15i1f. B4H15I2 b4h15i2f.
         B4H15I3 b4h15i3f. B4H15I4 b4h15i4f. B4H15I5 b4h15i5f.
         B4H15I6 b4h15i6f. B4H15I7 b4h15i7f. B4H15J b4h15j.
         B4H15J1 b4h15j1f. B4H15J2 b4h15j2f. B4H15J3 b4h15j3f.
         B4H15J4 b4h15j4f. B4H15J5 b4h15j5f. B4H15J6 b4h15j6f.
         B4H15J7 b4h15j7f. B4H15K b4h15k. B4H15K1 b4h15k1f.
         B4H15K2 b4h15k2f. B4H15K3 b4h15k3f. B4H15K4 b4h15k4f.
         B4H15K5 b4h15k5f. B4H15K6 b4h15k6f. B4H15K7 b4h15k7f.
         B4H15L b4h15l. B4H15L1 b4h15l1f. B4H15L2 b4h15l2f.
         B4H15L3 b4h15l3f. B4H15L4 b4h15l4f. B4H15L5 b4h15l5f.
         B4H15L6 b4h15l6f. B4H15L7 b4h15l7f. B4H15M b4h15m.
         B4H15M1 b4h15m1f. B4H15M2 b4h15m2f. B4H15M3 b4h15m3f.
         B4H15M4 b4h15m4f. B4H15M5 b4h15m5f. B4H15M6 b4h15m6f.
         B4H15M7 b4h15m7f. B4H15N b4h15n. B4H15N1 b4h15n1f.
         B4H15N2 b4h15n2f. B4H15N3 b4h15n3f. B4H15N4 b4h15n4f.
         B4H15N5 b4h15n5f. B4H15N6 b4h15n6f. B4H15N7 b4h15n7f.
         B4H15O b4h15o. B4H15O1 b4h15o1f. B4H15O2 b4h15o2f.
         B4H15O3 b4h15o3f. B4H15O4 b4h15o4f. B4H15O5 b4h15o5f.
         B4H15O6 b4h15o6f. B4H15O7 b4h15o7f. B4H15P b4h15p.
         B4H15P1 b4h15p1f. B4H15P2 b4h15p2f. B4H15P3 b4h15p3f.
         B4H15P4 b4h15p4f. B4H15P5 b4h15p5f. B4H15P6 b4h15p6f.
         B4H15P7 b4h15p7f. B4H15Q b4h15q. B4H15Q1 b4h15q1f.
         B4H15Q2 b4h15q2f. B4H15Q3 b4h15q3f. B4H15Q4 b4h15q4f.
         B4H15Q5 b4h15q5f. B4H15Q6 b4h15q6f. B4H15Q7 b4h15q7f.
         B4H15R b4h15r. B4H15R1 b4h15r1f. B4H15R2 b4h15r2f.
         B4H15R3 b4h15r3f. B4H15R4 b4h15r4f. B4H15R5 b4h15r5f.
         B4H15R6 b4h15r6f. B4H15R7 b4h15r7f. B4H15S b4h15s.
         B4H15S1 b4h15s1f. B4H15S2 b4h15s2f. B4H15S3 b4h15s3f.
         B4H15S4 b4h15s4f. B4H15S5 b4h15s5f. B4H15S6 b4h15s6f.
         B4H15S7 b4h15s7f. B4H15OTH b4h15oth. B4HFMHN b4hfmhn.
         B4HFMHX b4hfmhx. B4H16 b4h16fff. B4H17AF b4h17af.
         B4H17AT b4h17at. B4H17BF b4h17bf. B4H17BT b4h17bt.
         B4H17CF b4h17cf. B4H17CT b4h17ct. B4H18AF b4h18af.
         B4H18AT b4h18at. B4H18BF b4h18bf. B4H18BT b4h18bt.
         B4H18CF b4h18cf. B4H18CT b4h18ct. B4H19 b4h19fff.
         B4H20 b4h20fff. B4H21 b4h21fff. B4H22 b4h22fff.
         B4H23A b4h23a. B4H23B b4h23b. B4H23C b4h23c.
         B4H23D b4h23d. B4H24 b4h24fff. B4H25 b4h25fff.
         B4H25AS b4h25as. B4H25AFD b4h25afd. B4H25AFW b4h25afw.
         B4H25AM b4h25am. B4H25AI b4h25ai. B4H25BS b4h25bs.
         B4H25BFD b4h25bfd. B4H25BFW b4h25bfw. B4H25BM b4h25bm.
         B4H25BI b4h25bi. B4H25CS b4h25cs. B4H25CFD b4h25cfd.
         B4H25CFW b4h25cfw. B4H25CM b4h25cm. B4H25CI b4h25ci.
         B4H25DS b4h25ds. B4H25DFD b4h25dfd. B4H25DFW b4h25dfw.
         B4H25DM b4h25dm. B4H25DI b4h25di. B4H25ES b4h25es.
         B4H25EFD b4h25efd. B4H25EFW b4h25efw. B4H25EM b4h25em.
         B4H25EI b4h25ei. B4H25FS b4h25fs. B4H25FFD b4h25ffd.
         B4H25FFW b4h25ffw. B4H25FM b4h25fm. B4H25FI b4h25fi.
         B4H25GS b4h25gs. B4H25GFD b4h25gfd. B4H25GFW b4h25gfw.
         B4H25GM b4h25gm. B4H25GI b4h25gi. B4H26 b4h26fff.
         B4H26A b4h26a. B4H27 b4h27fff. B4H28 b4h28fff.
         B4H29 b4h29fff. B4H30 b4h30fff. B4H31 b4h31fff.
         B4H32 b4h32fff. B4H33 b4h33fff. B4H34 b4h34fff.
         B4H35 b4h35fff. B4H36 b4h36fff. B4H37 b4h37fff.
         B4H38 b4h38fff. B4H39 b4h39fff. B4H40 b4h40fff.
         B4H41 b4h41fff. B4H42 b4h42fff. B4H43A b4h43a.
         B4H43BM b4h43bm. B4H43BY b4h43by. B4H44A b4h44a.
         B4H44CM b4h44cm. B4H44CY b4h44cy. B4H44D b4h44d.
         B4H45A b4h45a. B4H45AM b4h45am. B4H45AY b4h45ay.
         B4H45B b4h45b. B4H45BM b4h45bm. B4H45BY b4h45by.
         B4H45BRC b4h45brc. B4H45C b4h45c. B4H45CM b4h45cm.
         B4H45CY b4h45cy. B4H45CRC b4h45crc. B4H45D b4h45d.
         B4H45DM b4h45dm. B4H45DY b4h45dy. B4H45DRC b4h45drc.
         B4H45E b4h45e. B4H45F b4h45f. B4H45FM b4h45fm.
         B4H45FY b4h45fy. B4H45FRC b4h45frc. B4H45G b4h45g.
         B4H45GM b4h45gm. B4H45GY b4h45gy. B4H45GRC b4h45grc.
         B4H45H b4h45h. B4H45HM b4h45hm. B4H45HY b4h45hy.
         B4H45HRC b4h45hrc. B4H46 b4h46fff. B4H46C b4h46c.
         B4H46D b4h46d. B4H47 b4h47fff. B4H48 b4h48fff.
         B4H48A b4h48a. B4H49 b4h49fff. B4H50 b4h50fff.
         B4H54C b4h54c. B4H54M b4h54m. B4H54Y b4h54y.
         B4H55 b4h55fff. B4HMARR b4hmarr. B4H56 b4h56fff.
         B4H56AG b4h56ag. B4H56AM b4h56am. B4H56AY b4h56ay.
         B4H56BG b4h56bg. B4H56BM b4h56bm. B4H56BY b4h56by.
         B4H56CG b4h56cg. B4H56CM b4h56cm. B4H56CY b4h56cy.
         B4H56DG b4h56dg. B4H56DM b4h56dm. B4H56DY b4h56dy.
         B4H56EG b4h56eg. B4H56EM b4h56em. B4H56EY b4h56ey.
         B4H57 b4h57fff. B4H57A1M b4h57a1m. B4H57A1Y b4h57a1y.
         B4H57A2M b4h57a2m. B4H57A2Y b4h57a2y. B4H57A3M b4h57a3m.
         B4H57A3Y b4h57a3y. B4H57A4M b4h57a4m. B4H57A4Y b4h57a4y.
         B4H57A5M b4h57a5m. B4H57A5Y b4h57a5y. B4OAVL b4oavl.
         B4O1 b4o1ffff. B4O1A1W b4o1a1w. B4O1A3 b4o1a3ff.
         B4O1B1W b4o1b1w. B4O1B3 b4o1b3ff. B4O1C1W b4o1c1w.
         B4O1C3 b4o1c3ff. B4O2 b4o2ffff. B4O2A1 b4o2a1ff.
         B4O2A2 b4o2a2ff. B4O2A3 b4o2a3ff. B4O2B1 b4o2b1ff.
         B4O2B2 b4o2b2ff. B4O2B3 b4o2b3ff. B4O2C1 b4o2c1ff.
         B4O2C2 b4o2c2ff. B4O2C3 b4o2c3ff. B4O3 b4o3ffff.
         B4O3A b4o3a. B4O4A b4o4a. B4O4B b4o4b.
         B4O5 b4o5ffff. B4O5A1AM b4o5a1am. B4O5A1B b4o5a1b.
         B4O5A1C b4o5a1c. B4O5A1CO b4o5a1co. B4O5A2AM b4o5a2am.
         B4O5A2B b4o5a2b. B4O5A2C b4o5a2c. B4O5A2CO b4o5a2co.
         B4O5A3AM b4o5a3am. B4O5A3B b4o5a3b. B4O5A3C b4o5a3c.
         B4O5A3CO b4o5a3co. B4O6A1 b4o6a1ff. B4O6B1 b4o6b1ff.
         B4O6C1 b4o6c1ff. B4O6D1 b4o6d1ff. B4O6E1 b4o6e1ff.
         B4O6F1 b4o6f1ff. B4O7 b4o7ffff. B4O8 b4o8ffff.
         B4O9 b4o9ffff. B4O10 b4o10fff. B4O11 b4o11fff.
         B4O12A b4o12a. B4O12B b4o12b. B4O12C b4o12c.
         B4O13 b4o13fff. B4O14A b4o14a. B4O14B b4o14b.
         B4O14C b4o14c. B4O14X b4o14x. B4O15 b4o15fff.
         B4O16 b4o16fff. B4O16A b4o16a. B4O17 b4o17fff.
         B4O18 b4o18fff. B4O19 b4o19fff. B4O20Y b4o20y.
         B4O21 b4o21fff. B4O21A1 b4o21a1f. B4O21A2 b4o21a2f.
         B4O21A3 b4o21a3f. B4O21A4 b4o21a4f. B4O21A5 b4o21a5f.
         B4O22Y b4o22y. B4O23X b4o23x. B4O23 b4o23fff.
         B4O24 b4o24fff. B4O25 b4o25fff. B4O25A b4o25a.
         B4O25B b4o25b. B4O25C b4o25c. B4O26 b4o26fff.
         B4O26A b4o26a. B4O26B b4o26b. B4O26C b4o26c.
         B4O26D b4o26d. B4O26E b4o26e. B4O26F b4o26f.
         B4O27 b4o27fff. B4DAVAIL b4davail. B4DNARSN b4dnarsn.
         B4DSTYPE b4dstype. B4DTRSID b4dtrsid. B4DFNSID b4dfnsid.
         B4DFTSID b4dftsid. B4DRSIDE b4drside. B4DLSMD b4dlsmd.
         B4DLST b4dlst. B4DLFNMD b4dlfnmd. B4DLTRMD b4dltrmd.
         B4DLFTMD b4dlftmd. B4DLFNT b4dlfnt. B4DLFTT b4dlftt.
         B4DLRUMD b4dlrumd. B4DLR3MD b4dlr3md. B4DLR3T b4dlr3t.
         B4DHSMD b4dhsmd. B4DHST b4dhst. B4DHFNMD b4dhfnmd.
         B4DHTRMD b4dhtrmd. B4DHFTMD b4dhftmd. B4DHFNT b4dhfnt.
         B4DHFTT b4dhftt. B4XPMD b4xpmd. B4XOMD b4xomd.
         B4XAMD b4xamd. B4XPM b4xpm. B4XPC1 b4xpc1ff.
         B4XPDD1 b4xpdd1f. B4XPDU1 b4xpdu1f. B4XPR1 b4xpr1ff.
         B4XPF1 b4xpf1ff. B4XPFU1 b4xpfu1f. B4XPT1 b4xpt1ff.
         B4XPTU1 b4xptu1f. B4XPDC1 b4xpdc1f. B4XPC2 b4xpc2ff.
         B4XPDD2 b4xpdd2f. B4XPDU2 b4xpdu2f. B4XPR2 b4xpr2ff.
         B4XPF2 b4xpf2ff. B4XPFU2 b4xpfu2f. B4XPT2 b4xpt2ff.
         B4XPTU2 b4xptu2f. B4XPDC2 b4xpdc2f. B4XPC3 b4xpc3ff.
         B4XPDD3 b4xpdd3f. B4XPDU3 b4xpdu3f. B4XPR3 b4xpr3ff.
         B4XPF3 b4xpf3ff. B4XPFU3 b4xpfu3f. B4XPT3 b4xpt3ff.
         B4XPTU3 b4xptu3f. B4XPDC3 b4xpdc3f. B4XPC4 b4xpc4ff.
         B4XPDD4 b4xpdd4f. B4XPDU4 b4xpdu4f. B4XPR4 b4xpr4ff.
         B4XPF4 b4xpf4ff. B4XPFU4 b4xpfu4f. B4XPT4 b4xpt4ff.
         B4XPTU4 b4xptu4f. B4XPDC4 b4xpdc4f. B4XPC5 b4xpc5ff.
         B4XPDD5 b4xpdd5f. B4XPDU5 b4xpdu5f. B4XPR5 b4xpr5ff.
         B4XPF5 b4xpf5ff. B4XPFU5 b4xpfu5f. B4XPT5 b4xpt5ff.
         B4XPTU5 b4xptu5f. B4XPDC5 b4xpdc5f. B4XPC6 b4xpc6ff.
         B4XPDD6 b4xpdd6f. B4XPDU6 b4xpdu6f. B4XPR6 b4xpr6ff.
         B4XPF6 b4xpf6ff. B4XPFU6 b4xpfu6f. B4XPT6 b4xpt6ff.
         B4XPTU6 b4xptu6f. B4XPDC6 b4xpdc6f. B4XPC7 b4xpc7ff.
         B4XPDD7 b4xpdd7f. B4XPDU7 b4xpdu7f. B4XPR7 b4xpr7ff.
         B4XPF7 b4xpf7ff. B4XPFU7 b4xpfu7f. B4XPT7 b4xpt7ff.
         B4XPTU7 b4xptu7f. B4XPDC7 b4xpdc7f. B4XPC8 b4xpc8ff.
         B4XPDD8 b4xpdd8f. B4XPDU8 b4xpdu8f. B4XPR8 b4xpr8ff.
         B4XPF8 b4xpf8ff. B4XPFU8 b4xpfu8f. B4XPT8 b4xpt8ff.
         B4XPTU8 b4xptu8f. B4XPDC8 b4xpdc8f. B4XPC9 b4xpc9ff.
         B4XPDD9 b4xpdd9f. B4XPDU9 b4xpdu9f. B4XPR9 b4xpr9ff.
         B4XPF9 b4xpf9ff. B4XPFU9 b4xpfu9f. B4XPT9 b4xpt9ff.
         B4XPTU9 b4xptu9f. B4XPDC9 b4xpdc9f. B4XPC10 b4xpc10f.
         B4XPDD10 b4xpdd0f. B4XPDU10 b4xpdu0f. B4XPR10 b4xpr10f.
         B4XPF10 b4xpf10f. B4XPFU10 b4xpfu0f. B4XPT10 b4xpt10f.
         B4XPTU10 b4xptu0f. B4XPDC10 b4xpdc0f. B4XPC11 b4xpc11f.
         B4XPDD11 b4xpd10f. B4XPDU11 b4xpd11f. B4XPR11 b4xpr11f.
         B4XPF11 b4xpf11f. B4XPFU11 b4xpf12f. B4XPT11 b4xpt11f.
         B4XPTU11 b4xpt12f. B4XPDC11 b4xpd12f. B4XPC12 b4xpc12f.
         B4XPDD12 b4xpd13f. B4XPDU12 b4xpd14f. B4XPR12 b4xpr12f.
         B4XPF12 b4xpf13f. B4XPFU12 b4xpf14f. B4XPT12 b4xpt13f.
         B4XPTU12 b4xpt14f. B4XPDC12 b4xpd15f. B4XPC13 b4xpc13f.
         B4XPDD13 b4xpd16f. B4XPDU13 b4xpd17f. B4XPR13 b4xpr13f.
         B4XPF13 b4xpf15f. B4XPFU13 b4xpf16f. B4XPT13 b4xpt15f.
         B4XPTU13 b4xpt16f. B4XPDC13 b4xpd18f. B4XPC14 b4xpc14f.
         B4XPDD14 b4xpd19f. B4XPDU14 b4xpd20f. B4XPR14 b4xpr14f.
         B4XPF14 b4xpf17f. B4XPFU14 b4xpf18f. B4XPT14 b4xpt17f.
         B4XPTU14 b4xpt18f. B4XPDC14 b4xpd21f. B4XPC15 b4xpc15f.
         B4XPDD15 b4xpd22f. B4XPDU15 b4xpd23f. B4XPR15 b4xpr15f.
         B4XPF15 b4xpf19f. B4XPFU15 b4xpf20f. B4XPT15 b4xpt19f.
         B4XPTU15 b4xpt20f. B4XPDC15 b4xpd24f. B4XBPD b4xbpd.
         B4XBPC b4xbpc. B4XCHD b4xchd. B4XCHC b4xchc.
         B4XDPD b4xdpd. B4XDPC b4xdpc. B4XCOD b4xcod.
         B4XCOC b4xcoc. B4XSHD b4xshd. B4XSHC b4xshc.
         B4XOM b4xom. B4XOMV b4xomv. B4XOC1 b4xoc1ff.
         B4XODD1 b4xodd1f. B4XODU1 b4xodu1f. B4XOR1 b4xor1ff.
         B4XOF1 b4xof1ff. B4XOFU1 b4xofu1f. B4XOT1 b4xot1ff.
         B4XOTU1 b4xotu1f. B4XODC1 b4xodc1f. B4XOCS b4xocs.
         B4XOC2 b4xoc2ff. B4XODD2 b4xodd2f. B4XODU2 b4xodu2f.
         B4XOR2 b4xor2ff. B4XOF2 b4xof2ff. B4XOFU2 b4xofu2f.
         B4XOT2 b4xot2ff. B4XOTU2 b4xotu2f. B4XODC2 b4xodc2f.
         B4XOC3 b4xoc3ff. B4XODD3 b4xodd3f. B4XODU3 b4xodu3f.
         B4XOR3 b4xor3ff. B4XOF3 b4xof3ff. B4XOFU3 b4xofu3f.
         B4XOT3 b4xot3ff. B4XOTU3 b4xotu3f. B4XODC3 b4xodc3f.
         B4XOC4 b4xoc4ff. B4XODD4 b4xodd4f. B4XODU4 b4xodu4f.
         B4XOR4 b4xor4ff. B4XOF4 b4xof4ff. B4XOFU4 b4xofu4f.
         B4XOT4 b4xot4ff. B4XOTU4 b4xotu4f. B4XODC4 b4xodc4f.
         B4XOC5 b4xoc5ff. B4XODD5 b4xodd5f. B4XODU5 b4xodu5f.
         B4XOR5 b4xor5ff. B4XOF5 b4xof5ff. B4XOFU5 b4xofu5f.
         B4XOT5 b4xot5ff. B4XOTU5 b4xotu5f. B4XODC5 b4xodc5f.
         B4XOC6 b4xoc6ff. B4XODD6 b4xodd6f. B4XODU6 b4xodu6f.
         B4XOR6 b4xor6ff. B4XOF6 b4xof6ff. B4XOFU6 b4xofu6f.
         B4XOT6 b4xot6ff. B4XOTU6 b4xotu6f. B4XODC6 b4xodc6f.
         B4XOC7 b4xoc7ff. B4XODD7 b4xodd7f. B4XODU7 b4xodu7f.
         B4XOR7 b4xor7ff. B4XOF7 b4xof7ff. B4XOFU7 b4xofu7f.
         B4XOT7 b4xot7ff. B4XOTU7 b4xotu7f. B4XODC7 b4xodc7f.
         B4XOC8 b4xoc8ff. B4XODD8 b4xodd8f. B4XODU8 b4xodu8f.
         B4XOR8 b4xor8ff. B4XOF8 b4xof8ff. B4XOFU8 b4xofu8f.
         B4XOT8 b4xot8ff. B4XOTU8 b4xotu8f. B4XODC8 b4xodc8f.
         B4XOC9 b4xoc9ff. B4XODD9 b4xodd9f. B4XODU9 b4xodu9f.
         B4XOR9 b4xor9ff. B4XOF9 b4xof9ff. B4XOFU9 b4xofu9f.
         B4XOT9 b4xot9ff. B4XOTU9 b4xotu9f. B4XODC9 b4xodc9f.
         B4XOC10 b4xoc10f. B4XODD10 b4xodd0f. B4XODU10 b4xodu0f.
         B4XOR10 b4xor10f. B4XOF10 b4xof10f. B4XOFU10 b4xofu0f.
         B4XOT10 b4xot10f. B4XOTU10 b4xotu0f. B4XODC10 b4xodc0f.
         B4XOC11 b4xoc11f. B4XODD11 b4xod10f. B4XODU11 b4xod11f.
         B4XOR11 b4xor11f. B4XOF11 b4xof11f. B4XOFU11 b4xof12f.
         B4XOT11 b4xot11f. B4XOTU11 b4xot12f. B4XODC11 b4xod12f.
         B4XOC12 b4xoc12f. B4XODD12 b4xod13f. B4XODU12 b4xod14f.
         B4XOR12 b4xor12f. B4XOF12 b4xof13f. B4XOFU12 b4xof14f.
         B4XOT12 b4xot13f. B4XOTU12 b4xot14f. B4XODC12 b4xod15f.
         B4XAM b4xam. B4XAC1 b4xac1ff. B4XADD1 b4xadd1f.
         B4XADU1 b4xadu1f. B4XAR1 b4xar1ff. B4XAF1 b4xaf1ff.
         B4XAFU1 b4xafu1f. B4XAT1 b4xat1ff. B4XATU1 b4xatu1f.
         B4XADC1 b4xadc1f. B4XAC2 b4xac2ff. B4XADD2 b4xadd2f.
         B4XADU2 b4xadu2f. B4XAR2 b4xar2ff. B4XAF2 b4xaf2ff.
         B4XAFU2 b4xafu2f. B4XAT2 b4xat2ff. B4XATU2 b4xatu2f.
         B4XADC2 b4xadc2f. B4XAC3 b4xac3ff. B4XADD3 b4xadd3f.
         B4XADU3 b4xadu3f. B4XAR3 b4xar3ff. B4XAF3 b4xaf3ff.
         B4XAFU3 b4xafu3f. B4XAT3 b4xat3ff. B4XATU3 b4xatu3f.
         B4XADC3 b4xadc3f. B4XAC4 b4xac4ff. B4XADD4 b4xadd4f.
         B4XADU4 b4xadu4f. B4XAR4 b4xar4ff. B4XAF4 b4xaf4ff.
         B4XAFU4 b4xafu4f. B4XAT4 b4xat4ff. B4XATU4 b4xatu4f.
         B4XADC4 b4xadc4f. B4XAC5 b4xac5ff. B4XADD5 b4xadd5f.
         B4XADU5 b4xadu5f. B4XAR5 b4xar5ff. B4XAF5 b4xaf5ff.
         B4XAFU5 b4xafu5f. B4XAT5 b4xat5ff. B4XATU5 b4xatu5f.
         B4XADC5 b4xadc5f. B4XAC6 b4xac6ff. B4XADD6 b4xadd6f.
         B4XADU6 b4xadu6f. B4XAR6 b4xar6ff. B4XAF6 b4xaf6ff.
         B4XAFU6 b4xafu6f. B4XAT6 b4xat6ff. B4XATU6 b4xatu6f.
         B4XADC6 b4xadc6f. B4XAC7 b4xac7ff. B4XADD7 b4xadd7f.
         B4XADU7 b4xadu7f. B4XAR7 b4xar7ff. B4XAF7 b4xaf7ff.
         B4XAFU7 b4xafu7f. B4XAT7 b4xat7ff. B4XATU7 b4xatu7f.
         B4XADC7 b4xadc7f. B4XAC8 b4xac8ff. B4XADD8 b4xadd8f.
         B4XADU8 b4xadu8f. B4XAR8 b4xar8ff. B4XAF8 b4xaf8ff.
         B4XAFU8 b4xafu8f. B4XAT8 b4xat8ff. B4XATU8 b4xatu8f.
         B4XADC8 b4xadc8f. B4XAC9 b4xac9ff. B4XADD9 b4xadd9f.
         B4XADU9 b4xadu9f. B4XAR9 b4xar9ff. B4XAF9 b4xaf9ff.
         B4XAFU9 b4xafu9f. B4XAT9 b4xat9ff. B4XATU9 b4xatu9f.
         B4XADC9 b4xadc9f. B4XAC10 b4xac10f. B4XADD10 b4xadd0f.
         B4XADU10 b4xadu0f. B4XAR10 b4xar10f. B4XAF10 b4xaf10f.
         B4XAFU10 b4xafu0f. B4XAT10 b4xat10f. B4XATU10 b4xatu0f.
         B4XADC10 b4xadc0f. B4XAC11 b4xac11f. B4XADD11 b4xad10f.
         B4XADU11 b4xad11f. B4XAR11 b4xar11f. B4XAF11 b4xaf11f.
         B4XAFU11 b4xaf12f. B4XAT11 b4xat11f. B4XATU11 b4xat12f.
         B4XADC11 b4xad12f. B4XAC12 b4xac12f. B4XADD12 b4xad13f.
         B4XADU12 b4xad14f. B4XAR12 b4xar12f. B4XAF12 b4xaf13f.
         B4XAFU12 b4xaf14f. B4XAT12 b4xat13f. B4XATU12 b4xat14f.
         B4XADC12 b4xad15f. B4XM b4xm. B4XMM b4xmm.
         B4XMC1 b4xmc1ff. B4XMC2 b4xmc2ff. B4XMC3 b4xmc3ff.
         B4XMC4 b4xmc4ff. B4XMC5 b4xmc5ff. B4XMC6 b4xmc6ff.
         B4XMC7 b4xmc7ff. B4XMC8 b4xmc8ff. B4XXM b4xxm.
         B4PWHRF b4pwhrf. B4P1A b4p1a. B4P1B b4p1b.
         B4PBMI b4pbmi. B4P1C b4p1c. B4P1D b4p1d.
         B4P1E b4p1e. B4P1F1S b4p1f1s. B4P1F1D b4p1f1d.
         B4P1F2S b4p1f2s. B4P1F2D b4p1f2d. B4P1F3S b4p1f3s.
         B4P1F3D b4p1f3d. B4P1GS b4p1gs. B4P1GD b4p1gd.
         B4P1GS23 b4p1gs2f. B4P1GD23 b4p1gd2f. B4P2A b4p2a.
         B4P2B b4p2b. B4P2C b4p2c. B4P2D b4p2d.
         B4PWHR b4pwhr. B4P3A b4p3a. B4P3A1 b4p3a1ff.
         B4P3A2R1 b4p3a2rf. B4P3A2R2 b4p3a20f. B4P3A2R3 b4p3a21f.
         B4P3A2L1 b4p3a2lf. B4P3A2L2 b4p3a22f. B4P3A2L3 b4p3a23f.
         B4P3B1 b4p3b1ff. B4P3B2R b4p3b2r. B4P3B2L b4p3b2l.
         B4P3B3R b4p3b3r. B4P3B4 b4p3b4ff. B4P3B4A b4p3b4a.
         B4P3B5R b4p3b5r. B4P3B5L b4p3b5l. B4P3B6 b4p3b6ff.
         B4P3C1 b4p3c1ff. B4P3C2 b4p3c2ff. B4P3C3 b4p3c3ff.
         B4P3D b4p3d. B4P3E b4p3e. B4P3F b4p3f.
         B4P3G b4p3g. B4P3H1R b4p3h1r. B4P3H2 b4p3h2ff.
         B4P3H3 b4p3h3ff. B4P3I1 b4p3i1ff. B4P3I2 b4p3i2ff.
         B4P3I3R b4p3i3r. B4PMD b4pmd. B4P4B b4p4b.
         B4P5A1 b4p5a1ff. B4P5A2 b4p5a2ff. B4P5A3 b4p5a3ff.
         B4P5A4 b4p5a4ff. B4P5B b4p5b. B4P5B1 b4p5b1ff.
         B4P5B2 b4p5b2ff. B4P5B3 b4p5b3ff. B4P5B4 b4p5b4ff.
         B4P5B5 b4p5b5ff. B4P5B6 b4p5b6ff. B4P5B7 b4p5b7ff.
         B4P5B8 b4p5b8ff. B4P5B9 b4p5b9ff. B4P5B10 b4p5b10f.
         B4P5B11 b4p5b11f. B4P5B12 b4p5b12f. B4P5B13 b4p5b13f.
         B4P5B14 b4p5b14f. B4P5B15 b4p5b15f. B4P5B16 b4p5b16f.
         B4P5B17 b4p5b17f. B4P6A1 b4p6a1ff. B4P6A2 b4p6a2ff.
         B4P6B b4p6b. B4P6C b4p6c. B4P6D1 b4p6d1ff.
         B4P6D2 b4p6d2ff. B4P6D3 b4p6d3ff. B4P6D4 b4p6d4ff.
         B4P6E1 b4p6e1ff. B4P6E2 b4p6e2ff. B4P6E3 b4p6e3ff.
         B4P6E4 b4p6e4ff. B4P6E4R b4p6e4r. B4P6E4L b4p6e4l.
         B4P6F1 b4p6f1ff. B4P6F2 b4p6f2ff. B4P6F3 b4p6f3ff.
         B4P6F4 b4p6f4ff. B4P6F5 b4p6f5ff. B4P7A b4p7a.
         B4P7A1R b4p7a1r. B4P7A1L b4p7a1l. B4P7A2R b4p7a2r.
         B4P7A2L b4p7a2l. B4P8A b4p8a. B4P8B1 b4p8b1ff.
         B4P8B2 b4p8b2ff. B4P8B3 b4p8b3ff. B4P8B4 b4p8b4ff.
         B4P8B5 b4p8b5ff. B4P8B6 b4p8b6ff. B4P8B7 b4p8b7ff.
         B4P8C1AD b4p8c1ad. B4P8C1A b4p8c1a. B4P8C1HO b4p8c1ho.
         B4P8C2AD b4p8c2ad. B4P8C2A b4p8c2a. B4P8C2HO b4p8c2ho.
         B4P8D b4p8d. B4P9A b4p9a. B4P9A1 b4p9a1ff.
         B4P9A2 b4p9a2ff. B4P9A3 b4p9a3ff. B4P9A4 b4p9a4ff.
         B4P9B b4p9b. B4P9C b4p9c. B4P9D b4p9d.
         B4P9D1 b4p9d1ff. B4P9D2 b4p9d2ff. B4P9D3 b4p9d3ff.
         B4P9D3N b4p9d3n. B4P9D3S b4p9d3s. B4P10A1 b4p10a1f.
         B4P10A2 b4p10a2f. B4P10A3 b4p10a3f. B4P10A4 b4p10a4f.
         B4P10B1 b4p10b1f. B4P10B2 b4p10b2f. B4P10B2A b4p10b2a.
         B4P10B2B b4p10b2b. B4P10B3 b4p10b3f. B4P10C b4p10c.
         B4P10C1R b4p10c1r. B4P10C1L b4p10c1l. B4P10C2R b4p10c2r.
         B4P10C2L b4p10c2l. B4P10C3R b4p10c3r. B4P10C3L b4p10c3l.
         B4P10C4R b4p10c4r. B4P10C4L b4p10c4l. B4P10C5R b4p10c5r.
         B4P10C5L b4p10c5l. B4P10C6R b4p10c6r. B4P10C6L b4p10c6l.
         B4P10C7R b4p10c7r. B4P10C7L b4p10c7l. B4P11A1 b4p11a1f.
         B4P11B b4p11b. B4P11B1 b4p11b1f. B4P11B1A b4p11b1a.
         B4P11B1B b4p11b1b. B4P11B1C b4p11b1c. B4P11B1D b4p11b1d.
         B4P11B2 b4p11b2f. B4P11B2A b4p11b2a. B4P11B2B b4p11b2b.
         B4P11B2C b4p11b2c. B4P11B2D b4p11b2d. B4P11B3 b4p11b3f.
         B4P12A b4p12a. B4P12B b4p12b. B4P12C b4p12c.
         B4P12C1 b4p12c1f. B4P12C1A b4p12c1a. B4P12C1B b4p12c1b.
         B4P12C1C b4p12c1c. B4P12C1D b4p12c1d. B4P12C1E b4p12c1e.
         B4P12C1F b4p12c0f. B4P12C2 b4p12c2f. B4P12C2A b4p12c2a.
         B4P12C2B b4p12c2b. B4P12C2C b4p12c2c. B4P12C2D b4p12c2d.
         B4P12C2E b4p12c2e. B4P12C2F b4p12c3f. B4P12C3 b4p12c4f.
         B4P12C3A b4p12c3a. B4P12C3B b4p12c3b. B4P12C3C b4p12c3c.
         B4P12C3D b4p12c3d. B4P12C3E b4p12c3e. B4P12C3F b4p12c5f.
         B4P12C4 b4p12c6f. B4P12C4A b4p12c4a. B4P12C4B b4p12c4b.
         B4P12C4C b4p12c4c. B4P12C4D b4p12c4d. B4P12C4E b4p12c4e.
         B4P12C4F b4p12c7f. B4P12C5 b4p12c8f. B4P12C5A b4p12c5a.
         B4P12C5B b4p12c5b. B4P12C5C b4p12c5c. B4P12C5D b4p12c5d.
         B4P12C5E b4p12c5e. B4P12C5F b4p12c9f. B4P12C6 b4p1210f.
         B4P12C7 b4p1211f. B4P12D b4p12d. B4P12E1 b4p12e1f.
         B4P12E2 b4p12e2f. B4P12E3 b4p12e3f. B4P12E4 b4p12e4f.
         B4P12E5 b4p12e5f. B4P13 b4p13fff. B4P13A1 b4p13a1f.
         B4P13A2 b4p13a2f. B4P13A3 b4p13a3f. B4P13A4 b4p13a4f.
         B4P13B1 b4p13b1f. B4P13B1A b4p13b1a. B4P13B1B b4p13b1b.
         B4P13B1C b4p13b1c. B4P13B1D b4p13b1d. B4P13B2 b4p13b2f.
         B4P13B2A b4p13b2a. B4P13B2B b4p13b2b. B4P13B2C b4p13b2c.
         B4P13B2D b4p13b2d. B4P13B3 b4p13b3f. B4P13B3A b4p13b3a.
         B4P13B3B b4p13b3b. B4P13B3C b4p13b3c. B4P13B3D b4p13b3d.
         B4P13B4 b4p13b4f. B4P13B4A b4p13b4a. B4P13B4B b4p13b4b.
         B4P13B4C b4p13b4c. B4P13B4D b4p13b4d. B4P13B5 b4p13b5f.
         B4P13B5A b4p13b5a. B4P13B5B b4p13b5b. B4P13B5C b4p13b5c.
         B4P13B5D b4p13b5d. B4P13C1R b4p13c1r. B4P13C1L b4p13c1l.
         B4P13C2R b4p13c2r. B4P13C2L b4p13c2l. B4P13C3R b4p13c3r.
         B4P13C3L b4p13c3l. B4P13C4A b4p13c4a. B4P13D1 b4p13d1f.
         B4P13D1A b4p13d1a. B4P13D1B b4p13d1b. B4P13D1C b4p13d1c.
         B4P13D1D b4p13d1d. B4P13D2 b4p13d2f. B4P13D2A b4p13d2a.
         B4P13D2B b4p13d2b. B4P13D2C b4p13d2c. B4P13D2D b4p13d2d.
         B4P13D3 b4p13d3f. B4P13D3A b4p13d3a. B4P13D3B b4p13d3b.
         B4P13D3C b4p13d3c. B4P13D3D b4p13d3d. B4P13D4 b4p13d4f.
         B4P13D4A b4p13d4a. B4P13D4B b4p13d4b. B4P13D4C b4p13d4c.
         B4P13D4D b4p13d4d. B4P13D5 b4p13d5f. B4P13D5A b4p13d5a.
         B4P13D5B b4p13d5b. B4P13D5C b4p13d5c. B4P13D5D b4p13d5d.
         B4P13E1 b4p13e1f. B4P13E1A b4p13e1a. B4P13E1B b4p13e1b.
         B4P13E1C b4p13e1c. B4P13E1D b4p13e1d. B4P13E2 b4p13e2f.
         B4P13E3 b4p13e3f. B4ZBLOOD b4zblood. B4BHA1C b4bha1c.
         B4BCHOL b4bchol. B4BTRIGL b4btrigl. B4BHDL b4bhdl.
         B4BLDL b4bldl. B4BRTHDL b4brthdl. B4BDHEAS b4bdheas.
         B4BDHEA b4bdhea. B4BSCREA b4bscrea. B4BIL6 b4bil6ff.
         B4BSIL6R b4bsil6r. B4BFGN b4bfgn. B4BCRP b4bcrp.
         B4BSESEL b4bsesel. B4BSICAM b4bsicam. B4BATBC b4batbc.
         B4B13CBC b4b13cbc. B4BAC b4bac. B4BBCX b4bbcx.
         B4BLUT b4blut. B4BZX b4bzx. B4BLYC b4blyc.
         B4BRET b4bret. B4BATOC b4batoc. B4BGTOC b4bgtoc.
         B4BP1NP b4bp1np. B4BSBAP b4bsbap. B4BSNTX b4bsntx.
         B4BGLUC b4bgluc. B4BINSLN b4binsln. B4BIGF1 b4bigf1f.
         B4BHOMAIR b4bhomaf. B4ZURINE b4zurine. B4BUPROB b4buprob.
         B4BUVDYN b4buvdyn. B4BUVDN b4buvdn. B4BURVOL b4burvol.
         B4BCORTL b4bcortl. B4BCORTO b4bcorto. B4BUCREA b4bucrea.
         B4BCLCRE b4bclcre. B4BCOCRE b4bcocre. B4BNOREP b4bnorep.
         B4BEPIN b4bepin. B4BDOPA b4bdopa. B4BNE12 b4bne12f.
         B4BEPI12 b4bepi1f. B4BDOP12 b4bdop1f. B4BNOCRE b4bnocre.
         B4BEPCRE b4bepcre. B4BDOCRE b4bdocre. B4BNECL b4bnecl.
         B4BSUCRE b4bsucre. B4BGFR b4bgfr. B4ZSALIV b4zsaliv.
         B4BSCL11 b4bscl1f. B4BSCL21 b4bscl2f. B4BSCL31 b4bscl3f.
         B4BSCL41 b4bscl4f. B4BSDUP b4bsdup. B4BSCL12 b4bscl0f.
         B4BSCL22 b4bscl5f. B4BSCL32 b4bscl6f. B4BSCL42 b4bscl7f.
         B4BSCL1A b4bscl1a. B4BSCL2A b4bscl2a. B4BSCL3A b4bscl3a.
         B4BSCL4A b4bscl4a. B4BSCL14 b4bscl8f. B4AWAVL b4awavl.
         B4AWIMPU b4awimpu. B4AWMARK b4awmark. B4AWDAYS b4awdays.
         B4AWPART b4awpart. B4AWIDIO b4awidio. B4AWTMZN b4awtmzn.
         B4AWLAG b4awlag. B4AWBGNM b4awbgnm. B4AWENDM b4awendm.
         B4AD11 b4ad11ff. B4AD12 b4ad12ff. B4AD13 b4ad13ff.
         B4AD13S b4ad13s. B4AD14 b4ad14ff. B4AD15 b4ad15ff.
         B4AD16 b4ad16ff. B4AD16M b4ad16m. B4AD17 b4ad17ff.
         B4AD17M b4ad17m. B4AD18A b4ad18a. B4AD19 b4ad19ff.
         B4AD110 b4ad110f. B4AD111 b4ad111f. B4AD112 b4ad112f.
         B4AD113 b4ad113f. B4AD114 b4ad114f. B4AD115A b4ad115a.
         B4AD116A b4ad116a. B4AD117 b4ad117f. B4AD118 b4ad118f.
         B4AD119 b4ad119f. B4AD120 b4ad120f. B4AD21 b4ad21ff.
         B4AD22 b4ad22ff. B4AD23 b4ad23ff. B4AD23S b4ad23s.
         B4AD24 b4ad24ff. B4AD25 b4ad25ff. B4AD26 b4ad26ff.
         B4AD26M b4ad26m. B4AD27 b4ad27ff. B4AD27M b4ad27m.
         B4AD28A b4ad28a. B4AD29 b4ad29ff. B4AD210 b4ad210f.
         B4AD211 b4ad211f. B4AD212 b4ad212f. B4AD213 b4ad213f.
         B4AD214 b4ad214f. B4AD215A b4ad215a. B4AD216A b4ad216a.
         B4AD217 b4ad217f. B4AD218 b4ad218f. B4AD219 b4ad219f.
         B4AD220 b4ad220f. B4AD31 b4ad31ff. B4AD32 b4ad32ff.
         B4AD33 b4ad33ff. B4AD33S b4ad33s. B4AD34 b4ad34ff.
         B4AD35 b4ad35ff. B4AD36 b4ad36ff. B4AD36M b4ad36m.
         B4AD37 b4ad37ff. B4AD37M b4ad37m. B4AD38A b4ad38a.
         B4AD39 b4ad39ff. B4AD310 b4ad310f. B4AD311 b4ad311f.
         B4AD312 b4ad312f. B4AD313 b4ad313f. B4AD314 b4ad314f.
         B4AD315A b4ad315a. B4AD316A b4ad316a. B4AD317 b4ad317f.
         B4AD318 b4ad318f. B4AD319 b4ad319f. B4AD320 b4ad320f.
         B4AD41 b4ad41ff. B4AD42 b4ad42ff. B4AD43 b4ad43ff.
         B4AD43S b4ad43s. B4AD44 b4ad44ff. B4AD45 b4ad45ff.
         B4AD46 b4ad46ff. B4AD46M b4ad46m. B4AD47 b4ad47ff.
         B4AD47M b4ad47m. B4AD48A b4ad48a. B4AD49 b4ad49ff.
         B4AD410 b4ad410f. B4AD411 b4ad411f. B4AD412 b4ad412f.
         B4AD413 b4ad413f. B4AD414 b4ad414f. B4AD415A b4ad415a.
         B4AD416A b4ad416a. B4AD417 b4ad417f. B4AD418 b4ad418f.
         B4AD419 b4ad419f. B4AD420 b4ad420f. B4AD51 b4ad51ff.
         B4AD52 b4ad52ff. B4AD53 b4ad53ff. B4AD53S b4ad53s.
         B4AD54 b4ad54ff. B4AD55 b4ad55ff. B4AD56 b4ad56ff.
         B4AD56M b4ad56m. B4AD57 b4ad57ff. B4AD57M b4ad57m.
         B4AD58A b4ad58a. B4AD59 b4ad59ff. B4AD510 b4ad510f.
         B4AD511 b4ad511f. B4AD512 b4ad512f. B4AD513 b4ad513f.
         B4AD514 b4ad514f. B4AD515A b4ad515a. B4AD516A b4ad516a.
         B4AD517 b4ad517f. B4AD518 b4ad518f. B4AD519 b4ad519f.
         B4AD520 b4ad520f. B4AD61 b4ad61ff. B4AD62 b4ad62ff.
         B4AD63 b4ad63ff. B4AD63S b4ad63s. B4AD64 b4ad64ff.
         B4AD65 b4ad65ff. B4AD66 b4ad66ff. B4AD66M b4ad66m.
         B4AD67 b4ad67ff. B4AD67M b4ad67m. B4AD68A b4ad68a.
         B4AD69 b4ad69ff. B4AD610 b4ad610f. B4AD611 b4ad611f.
         B4AD612 b4ad612f. B4AD613 b4ad613f. B4AD614 b4ad614f.
         B4AD615A b4ad615a. B4AD616A b4ad616a. B4AD617 b4ad617f.
         B4AD618 b4ad618f. B4AD619 b4ad619f. B4AD620 b4ad620f.
         B4AD71 b4ad71ff. B4AD72 b4ad72ff. B4AD73 b4ad73ff.
         B4AD73S b4ad73s. B4AD74 b4ad74ff. B4AD75 b4ad75ff.
         B4AD76 b4ad76ff. B4AD76M b4ad76m. B4AD77 b4ad77ff.
         B4AD77M b4ad77m. B4AD78A b4ad78a. B4AD79 b4ad79ff.
         B4AD710 b4ad710f. B4AD711 b4ad711f. B4AD712 b4ad712f.
         B4AD713 b4ad713f. B4AD714 b4ad714f. B4AD715A b4ad715a.
         B4AD716A b4ad716a. B4AD717 b4ad717f. B4AD718 b4ad718f.
         B4AD719 b4ad719f. B4AD720 b4ad720f. B4WR1TAC b4wr1tac.
         B4WR1ACM b4wr1acm. B4WR1MAC b4wr1mac. B4WR1IAC b4wr1iac.
         B4WR1SW b4wr1sw. B4WR1WT b4wr1wt. B4WR1PW b4wr1pw.
         B4WR1WB b4wr1wb. B4WR1AWB b4wr1awb. B4WR1SLT b4wr1slt.
         B4WR1PSL b4wr1psl. B4WR1SLB b4wr1slb. B4WR1ASB b4wr1asb.
         B4WS1TAC b4ws1tac. B4WS1ACM b4ws1acm. B4WS1MAC b4ws1mac.
         B4WS1IAC b4ws1iac. B4WS1ISW b4ws1isw. B4WS1OL b4ws1ol.
         B4WS1SNT b4ws1snt. B4WS1EFF b4ws1eff. B4WS1WSO b4ws1wso.
         B4WS1WT b4ws1wt. B4WS1PW b4ws1pw. B4WS1WB b4ws1wb.
         B4WS1AWB b4ws1awb. B4WS1SLT b4ws1slt. B4WS1PSL b4ws1psl.
         B4WS1SLB b4ws1slb. B4WS1ASB b4ws1asb. B4WA1TAC b4wa1tac.
         B4WA1ACM b4wa1acm. B4WA1MAC b4wa1mac. B4WA1IAC b4wa1iac.
         B4WA1ISW b4wa1isw. B4WA1WT b4wa1wt. B4WA1PW b4wa1pw.
         B4WA1WB b4wa1wb. B4WA1AWB b4wa1awb. B4WA1SLT b4wa1slt.
         B4WA1PSL b4wa1psl. B4WA1SLB b4wa1slb. B4WA1ASB b4wa1asb.
         B4WR2TAC b4wr2tac. B4WR2ACM b4wr2acm. B4WR2MAC b4wr2mac.
         B4WR2IAC b4wr2iac. B4WR2SW b4wr2sw. B4WR2WT b4wr2wt.
         B4WR2PW b4wr2pw. B4WR2WB b4wr2wb. B4WR2AWB b4wr2awb.
         B4WR2SLT b4wr2slt. B4WR2PSL b4wr2psl. B4WR2SLB b4wr2slb.
         B4WR2ASB b4wr2asb. B4WS2TAC b4ws2tac. B4WS2ACM b4ws2acm.
         B4WS2MAC b4ws2mac. B4WS2IAC b4ws2iac. B4WS2ISW b4ws2isw.
         B4WS2OL b4ws2ol. B4WS2SNT b4ws2snt. B4WS2EFF b4ws2eff.
         B4WS2WSO b4ws2wso. B4WS2WT b4ws2wt. B4WS2PW b4ws2pw.
         B4WS2WB b4ws2wb. B4WS2AWB b4ws2awb. B4WS2SLT b4ws2slt.
         B4WS2PSL b4ws2psl. B4WS2SLB b4ws2slb. B4WS2ASB b4ws2asb.
         B4WA2TAC b4wa2tac. B4WA2ACM b4wa2acm. B4WA2MAC b4wa2mac.
         B4WA2IAC b4wa2iac. B4WA2ISW b4wa2isw. B4WA2WT b4wa2wt.
         B4WA2PW b4wa2pw. B4WA2WB b4wa2wb. B4WA2AWB b4wa2awb.
         B4WA2SLT b4wa2slt. B4WA2PSL b4wa2psl. B4WA2SLB b4wa2slb.
         B4WA2ASB b4wa2asb. B4WR3TAC b4wr3tac. B4WR3ACM b4wr3acm.
         B4WR3MAC b4wr3mac. B4WR3IAC b4wr3iac. B4WR3SW b4wr3sw.
         B4WR3WT b4wr3wt. B4WR3PW b4wr3pw. B4WR3WB b4wr3wb.
         B4WR3AWB b4wr3awb. B4WR3SLT b4wr3slt. B4WR3PSL b4wr3psl.
         B4WR3SLB b4wr3slb. B4WR3ASB b4wr3asb. B4WS3TAC b4ws3tac.
         B4WS3ACM b4ws3acm. B4WS3MAC b4ws3mac. B4WS3IAC b4ws3iac.
         B4WS3ISW b4ws3isw. B4WS3OL b4ws3ol. B4WS3SNT b4ws3snt.
         B4WS3EFF b4ws3eff. B4WS3WSO b4ws3wso. B4WS3WT b4ws3wt.
         B4WS3PW b4ws3pw. B4WS3WB b4ws3wb. B4WS3AWB b4ws3awb.
         B4WS3SLT b4ws3slt. B4WS3PSL b4ws3psl. B4WS3SLB b4ws3slb.
         B4WS3ASB b4ws3asb. B4WA3TAC b4wa3tac. B4WA3ACM b4wa3acm.
         B4WA3MAC b4wa3mac. B4WA3IAC b4wa3iac. B4WA3ISW b4wa3isw.
         B4WA3WT b4wa3wt. B4WA3PW b4wa3pw. B4WA3WB b4wa3wb.
         B4WA3AWB b4wa3awb. B4WA3SLT b4wa3slt. B4WA3PSL b4wa3psl.
         B4WA3SLB b4wa3slb. B4WA3ASB b4wa3asb. B4WR4TAC b4wr4tac.
         B4WR4ACM b4wr4acm. B4WR4MAC b4wr4mac. B4WR4IAC b4wr4iac.
         B4WR4SW b4wr4sw. B4WR4WT b4wr4wt. B4WR4PW b4wr4pw.
         B4WR4WB b4wr4wb. B4WR4AWB b4wr4awb. B4WR4SLT b4wr4slt.
         B4WR4PSL b4wr4psl. B4WR4SLB b4wr4slb. B4WR4ASB b4wr4asb.
         B4WS4TAC b4ws4tac. B4WS4ACM b4ws4acm. B4WS4MAC b4ws4mac.
         B4WS4IAC b4ws4iac. B4WS4ISW b4ws4isw. B4WS4OL b4ws4ol.
         B4WS4SNT b4ws4snt. B4WS4EFF b4ws4eff. B4WS4WSO b4ws4wso.
         B4WS4WT b4ws4wt. B4WS4PW b4ws4pw. B4WS4WB b4ws4wb.
         B4WS4AWB b4ws4awb. B4WS4SLT b4ws4slt. B4WS4PSL b4ws4psl.
         B4WS4SLB b4ws4slb. B4WS4ASB b4ws4asb. B4WA4TAC b4wa4tac.
         B4WA4ACM b4wa4acm. B4WA4MAC b4wa4mac. B4WA4IAC b4wa4iac.
         B4WA4ISW b4wa4isw. B4WA4WT b4wa4wt. B4WA4PW b4wa4pw.
         B4WA4WB b4wa4wb. B4WA4AWB b4wa4awb. B4WA4SLT b4wa4slt.
         B4WA4PSL b4wa4psl. B4WA4SLB b4wa4slb. B4WA4ASB b4wa4asb.
         B4WR5TAC b4wr5tac. B4WR5ACM b4wr5acm. B4WR5MAC b4wr5mac.
         B4WR5IAC b4wr5iac. B4WR5SW b4wr5sw. B4WR5WT b4wr5wt.
         B4WR5PW b4wr5pw. B4WR5WB b4wr5wb. B4WR5AWB b4wr5awb.
         B4WR5SLT b4wr5slt. B4WR5PSL b4wr5psl. B4WR5SLB b4wr5slb.
         B4WR5ASB b4wr5asb. B4WS5TAC b4ws5tac. B4WS5ACM b4ws5acm.
         B4WS5MAC b4ws5mac. B4WS5IAC b4ws5iac. B4WS5ISW b4ws5isw.
         B4WS5OL b4ws5ol. B4WS5SNT b4ws5snt. B4WS5EFF b4ws5eff.
         B4WS5WSO b4ws5wso. B4WS5WT b4ws5wt. B4WS5PW b4ws5pw.
         B4WS5WB b4ws5wb. B4WS5AWB b4ws5awb. B4WS5SLT b4ws5slt.
         B4WS5PSL b4ws5psl. B4WS5SLB b4ws5slb. B4WS5ASB b4ws5asb.
         B4WA5TAC b4wa5tac. B4WA5ACM b4wa5acm. B4WA5MAC b4wa5mac.
         B4WA5IAC b4wa5iac. B4WA5ISW b4wa5isw. B4WA5WT b4wa5wt.
         B4WA5PW b4wa5pw. B4WA5WB b4wa5wb. B4WA5AWB b4wa5awb.
         B4WA5SLT b4wa5slt. B4WA5PSL b4wa5psl. B4WA5SLB b4wa5slb.
         B4WA5ASB b4wa5asb. B4WR6TAC b4wr6tac. B4WR6ACM b4wr6acm.
         B4WR6MAC b4wr6mac. B4WR6IAC b4wr6iac. B4WR6SW b4wr6sw.
         B4WR6WT b4wr6wt. B4WR6PW b4wr6pw. B4WR6WB b4wr6wb.
         B4WR6AWB b4wr6awb. B4WR6SLT b4wr6slt. B4WR6PSL b4wr6psl.
         B4WR6SLB b4wr6slb. B4WR6ASB b4wr6asb. B4WS6TAC b4ws6tac.
         B4WS6ACM b4ws6acm. B4WS6MAC b4ws6mac. B4WS6IAC b4ws6iac.
         B4WS6ISW b4ws6isw. B4WS6OL b4ws6ol. B4WS6SNT b4ws6snt.
         B4WS6EFF b4ws6eff. B4WS6WSO b4ws6wso. B4WS6WT b4ws6wt.
         B4WS6PW b4ws6pw. B4WS6WB b4ws6wb. B4WS6AWB b4ws6awb.
         B4WS6SLT b4ws6slt. B4WS6PSL b4ws6psl. B4WS6SLB b4ws6slb.
         B4WS6ASB b4ws6asb. B4WA6TAC b4wa6tac. B4WA6ACM b4wa6acm.
         B4WA6MAC b4wa6mac. B4WA6IAC b4wa6iac. B4WA6ISW b4wa6isw.
         B4WA6WT b4wa6wt. B4WA6PW b4wa6pw. B4WA6WB b4wa6wb.
         B4WA6AWB b4wa6awb. B4WA6SLT b4wa6slt. B4WA6PSL b4wa6psl.
         B4WA6SLB b4wa6slb. B4WA6ASB b4wa6asb. B4WR7TAC b4wr7tac.
         B4WR7ACM b4wr7acm. B4WR7MAC b4wr7mac. B4WR7IAC b4wr7iac.
         B4WR7SW b4wr7sw. B4WR7WT b4wr7wt. B4WR7PW b4wr7pw.
         B4WR7WB b4wr7wb. B4WR7AWB b4wr7awb. B4WR7SLT b4wr7slt.
         B4WR7PSL b4wr7psl. B4WR7SLB b4wr7slb. B4WR7ASB b4wr7asb.
         B4WS7TAC b4ws7tac. B4WS7ACM b4ws7acm. B4WS7MAC b4ws7mac.
         B4WS7IAC b4ws7iac. B4WS7ISW b4ws7isw. B4WS7OL b4ws7ol.
         B4WS7SNT b4ws7snt. B4WS7EFF b4ws7eff. B4WS7WSO b4ws7wso.
         B4WS7WT b4ws7wt. B4WS7PW b4ws7pw. B4WS7WB b4ws7wb.
         B4WS7AWB b4ws7awb. B4WS7SLT b4ws7slt. B4WS7PSL b4ws7psl.
         B4WS7SLB b4ws7slb. B4WS7ASB b4ws7asb. B4VHAWR b4vhawr.
         B4VHADW b4vhadw. B4VHATH b4vhath. B4VHASC b4vhasc.
         B4VHATO b4vhato. B4VHAKN b4vhakn. B4VHASP b4vhasp.
         B4VHABR b4vhabr. B4VHASM b4vhasm. B4VHAOB b4vhaob.
         B4VHAKI b4vhaki. B4VHAOE b4vhaoe. B4VHALT b4vhalt.
         B4VHART b4vhart. B4VHALQ b4vhalq. B4VHADZ b4vhadz.
         B4VHADR b4vhadr. B4VHADL b4vhadl. B4VATEH b4vateh.
         B4VCAFH b4vcafh. B4VCIGH b4vcigh. B4VCLB b4vclb.
         B4VCLBT b4vclbt. B4VCIRC b4vcirc. B4VLC b4vlc.
         B4VSRB1 b4vsrb1f. B4VCS1 b4vcs1ff. B4VSRCS1 b4vsrcsf.
         B4VSRR1 b4vsrr1f. B4VCS2 b4vcs2ff. B4VSRCS2 b4vsrc0f.
         B4VSRR2 b4vsrr2f. B4VSRU1 b4vsru1f. B4VSTS1 b4vsts1f.
         B4VS1S2 b4vs1s2f. B4VS2S3 b4vs2s3f. B4VS3S4 b4vs3s4f.
         B4ZPPHYS b4zpphys. B4ZPHYSD b4zphysd. B4VTERM b4vterm.
         B4VPACEM b4vpacem. B4VPPSS b4vppss. B4VPPSR b4vppsr.
         B4VBEQ b4vbeq. B4VBEQR b4vbeqr. B4VMEQ b4vmeq.
         B4VMEQR b4vmeqr. B4VPEQ b4vpeq. B4VPEQR b4vpeqr.
         B4VSEQ b4vseq. B4VSEQR b4vseqr. B4VR1EQ b4vr1eq.
         B4VR1EQR b4vr1eqr. B4VR2EQ b4vr2eq. B4VR2EQR b4vr2eqr.
         B4VUEQ b4vueq. B4VUEQR b4vueqr. B4VB1DU b4vb1du.
         B4VB1BEG b4vb1beg. B4VB1END b4vb1end. B4VB1MAX b4vb1max.
         B4VB1NU b4vb1nu. B4VB1HR b4vb1hr. B4VB1SD b4vb1sd.
         B4VB1LSD b4vb1lsd. B4VB1RM b4vb1rm. B4VB1LRM b4vb1lrm.
         B4VB1LF b4vb1lf. B4VB1LLF b4vb1llf. B4VB1HF b4vb1hf.
         B4VB1LHF b4vb1lhf. B4VB2DU b4vb2du. B4VB2BEG b4vb2beg.
         B4VB2END b4vb2end. B4VB2MAX b4vb2max. B4VB2NU b4vb2nu.
         B4VB2HR b4vb2hr. B4VB2SD b4vb2sd. B4VB2LSD b4vb2lsd.
         B4VB2RM b4vb2rm. B4VB2LRM b4vb2lrm. B4VB2LF b4vb2lf.
         B4VB2LLF b4vb2llf. B4VB2HF b4vb2hf. B4VB2LHF b4vb2lhf.
         B4VM1DU b4vm1du. B4VM1BEG b4vm1beg. B4VM1END b4vm1end.
         B4VM1MAX b4vm1max. B4VM1NU b4vm1nu. B4VM1HR b4vm1hr.
         B4VM1SD b4vm1sd. B4VM1LSD b4vm1lsd. B4VM1RM b4vm1rm.
         B4VM1LRM b4vm1lrm. B4VM1LF b4vm1lf. B4VM1LLF b4vm1llf.
         B4VM1HF b4vm1hf. B4VM1LHF b4vm1lhf. B4VP1DU b4vp1du.
         B4VP1BEG b4vp1beg. B4VP1END b4vp1end. B4VP1MAX b4vp1max.
         B4VP1NU b4vp1nu. B4VP1HR b4vp1hr. B4VP1SD b4vp1sd.
         B4VP1LSD b4vp1lsd. B4VP1RM b4vp1rm. B4VP1LRM b4vp1lrm.
         B4VP1LF b4vp1lf. B4VP1LLF b4vp1llf. B4VP1HF b4vp1hf.
         B4VP1LHF b4vp1lhf. B4VP2DU b4vp2du. B4VP2BEG b4vp2beg.
         B4VP2END b4vp2end. B4VP2MAX b4vp2max. B4VP2NU b4vp2nu.
         B4VP2HR b4vp2hr. B4VP2SD b4vp2sd. B4VP2LSD b4vp2lsd.
         B4VP2RM b4vp2rm. B4VP2LRM b4vp2lrm. B4VP2LF b4vp2lf.
         B4VP2LLF b4vp2llf. B4VP2HF b4vp2hf. B4VP2LHF b4vp2lhf.
         B4VR1DU b4vr1du. B4VR1BEG b4vr1beg. B4VR1END b4vr1end.
         B4VR1MAX b4vr1max. B4VR1NU b4vr1nu. B4VR1HR b4vr1hr.
         B4VR1SD b4vr1sd. B4VR1LSD b4vr1lsd. B4VR1RM b4vr1rm.
         B4VR1LRM b4vr1lrm. B4VR1LF b4vr1lf. B4VR1LLF b4vr1llf.
         B4VR1HF b4vr1hf. B4VR1LHF b4vr1lhf. B4VR2DU b4vr2du.
         B4VR2BEG b4vr2beg. B4VR2END b4vr2end. B4VR2MAX b4vr2max.
         B4VR2NU b4vr2nu. B4VR2HR b4vr2hr. B4VR2SD b4vr2sd.
         B4VR2LSD b4vr2lsd. B4VR2RM b4vr2rm. B4VR2LRM b4vr2lrm.
         B4VR2LF b4vr2lf. B4VR2LLF b4vr2llf. B4VR2HF b4vr2hf.
         B4VR2LHF b4vr2lhf. B4VS1DU b4vs1du. B4VS1BEG b4vs1beg.
         B4VS1END b4vs1end. B4VS1MAX b4vs1max. B4VS1NU b4vs1nu.
         B4VS1HR b4vs1hr. B4VS1SD b4vs1sd. B4VS1LSD b4vs1lsd.
         B4VS1RM b4vs1rm. B4VS1LRM b4vs1lrm. B4VS1LF b4vs1lf.
         B4VS1LLF b4vs1llf. B4VS1HF b4vs1hf. B4VS1LHF b4vs1lhf.
         B4VS2DU b4vs2du. B4VS2BEG b4vs2beg. B4VS2END b4vs2end.
         B4VS2MAX b4vs2max. B4VS2NU b4vs2nu. B4VS2HR b4vs2hr.
         B4VS2SD b4vs2sd. B4VS2LSD b4vs2lsd. B4VS2RM b4vs2rm.
         B4VS2LRM b4vs2lrm. B4VS2LF b4vs2lf. B4VS2LLF b4vs2llf.
         B4VS2HF b4vs2hf. B4VS2LHF b4vs2lhf. B4VU1DU b4vu1du.
         B4VU1BEG b4vu1beg. B4VU1END b4vu1end. B4VU1MAX b4vu1max.
         B4VU1NU b4vu1nu. B4VU1HR b4vu1hr. B4VU1SD b4vu1sd.
         B4VU1LSD b4vu1lsd. B4VU1RM b4vu1rm. B4VU1LRM b4vu1lrm.
         B4VU1LF b4vu1lf. B4VU1LLF b4vu1llf. B4VU1HF b4vu1hf.
         B4VU1LHF b4vu1lhf.  ;
*/

RUN ;
