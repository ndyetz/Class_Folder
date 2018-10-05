/*-------------------------------------------------------------------------
 |                                                                         
 |                    SAS SETUP FILE FOR ICPSR 25281
 |      NATIONAL SURVEY OF MIDLIFE DEVELOPMENT IN THE UNITED STATES
 |                (MIDUS II): COGNITIVE PROJECT, 2004-2006
 |                            (DATASET 0001: )
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
 | "c:\temp\25281-0001-data.txt").
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
                  4='(04) CITY OVERSAMPLE' 13='(13) MILWAUKEE' ;
  VALUE b1page_f  98='(98) REFUSED' 99='(99) INAPP (NO M2 PARTICIPATION)' ;
  VALUE b1pgendf  1='(1) MALE' 2='(2) FEMALE' 8='(8) REFUSED/UNKOWN' ;
  VALUE b3twlifp  1='(1) YES' 2='(2) NO' 8='(8) REFUSED/MISSING' ;
  VALUE b3twli1f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twli2f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twli3f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twli4f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twli5f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twli6f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twli7f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twli8f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twli9f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twli0f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twl10f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twl11f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twl12f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twl13f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twl14f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twl15f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twl16f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twl17f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twl18f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twl19f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twl20f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twl21f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twl22f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twl23f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twl24f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twl25f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twlitu  98='(98) REFUSED/MISSING' 99='(99) INAPP' ;
  VALUE b3twlitr  98='(98) REFUSED/MISSING' 99='(99) INAPP' ;
  VALUE b3twliti  98='(98) REFUSED/MISSING' 99='(99) INAPP' ;
  VALUE b3tdbfp   1='(1) YES' 2='(2) NO' 8='(8) REFUSED/MISSING' ;
  VALUE b3tdbs    98='(98) REFUSED/MISSING' 99='(99) INAPP' ;
  VALUE b3tctffp  1='(1) YES' 2='(2) NO' 8='(8) REFUSED/MISSING' ;
  VALUE b3tctflu  98='(98) REFUSED/MISSING' 99='(99) INAPP' ;
  VALUE b3tctflr  98='(98) REFUSED/MISSING' 99='(99) INAPP' ;
  VALUE b3tctfli  98='(98) REFUSED/MISSING' 99='(99) INAPP' ;
  VALUE b3tnsfp   1='(1) YES' 2='(2) NO' 8='(8) REFUSED/MISSING' ;
  VALUE b3tns1ff  997='(997) DON''T KNOW' 998='(998) REFUSED/MISSING'
                  999='(999) INAPP' ;
  VALUE b3tns2ff  997='(997) DON''T KNOW' 998='(998) REFUSED/MISSING'
                  999='(999) INAPP' ;
  VALUE b3tns3ff  997='(997) DON''T KNOW' 998='(998) REFUSED/MISSING'
                  999='(999) INAPP' ;
  VALUE b3tns4ff  997='(997) DON''T KNOW' 998='(998) REFUSED/MISSING'
                  999='(999) INAPP' ;
  VALUE b3tns5ff  997='(997) DON''T KNOW' 998='(998) REFUSED/MISSING'
                  999='(999) INAPP' ;
  VALUE b3tns1c   1='(1) YES, CORRECT' 2='(2) NO, INCORRECT'
                  8='(8) REFUSAL/MISSING' 9='(9) INAPP' ;
  VALUE b3tns2c   1='(1) YES, CORRECT' 2='(2) NO, INCORRECT'
                  8='(8) REFUSAL/MISSING' 9='(9) INAPP' ;
  VALUE b3tns3c   1='(1) YES, CORRECT' 2='(2) NO, INCORRECT'
                  8='(8) REFUSAL/MISSING' 9='(9) INAPP' ;
  VALUE b3tns4c   1='(1) YES, CORRECT' 2='(2) NO, INCORRECT'
                  8='(8) REFUSAL/MISSING' 9='(9) INAPP' ;
  VALUE b3tns5c   1='(1) YES, CORRECT' 2='(2) NO, INCORRECT'
                  8='(8) REFUSAL/MISSING' 9='(9) INAPP' ;
  VALUE b3tnstot  8='(8) REFUSED/MISSING' 9='(9) INAPP' ;
  VALUE b3tbkfp   1='(1) YES' 2='(2) NO' 8='(8) REFUSED/MISSING' ;
  VALUE b3tbkct   998='(998) REFUSED/MISSING' 999='(999) INAPP' ;
  VALUE b3tbkerr  998='(998) REFUSED/MISSING' 999='(999) INAPP' ;
  VALUE b3tbktot  998='(998) REFUSED/MISSING' 999='(999) INAPP' ;
  VALUE b3twldfp  1='(1) YES' 2='(2) NO' 8='(8) REFUSED/MISSING' ;
  VALUE b3twld1f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twld2f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twld3f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twld4f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twld5f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twld6f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twld7f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twld8f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twld9f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twld0f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twl26f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twl27f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twl28f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twl29f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twl30f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twl31f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twl32f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twl33f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twl34f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twl35f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twl36f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twl37f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twl38f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twl39f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twl40f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twl41f  1='(01) DRUM' 2='(02) CURTAIN' 3='(03) BELL'
                  4='(04) COFFEE' 5='(05) SCHOOL' 6='(06) PARENT'
                  7='(07) MOON' 8='(08) GARDEN' 9='(09) HAT' 10='(10) FARMER'
                  11='(11) NOSE' 12='(12) TURKEY' 13='(13) COLOR'
                  14='(14) HOUSE' 15='(15) RIVER'
                  90='(90) NON-LIST INTRUSION' 98='(98) REFUSED/MISSING'
                  99='(99) INAPP' ;
  VALUE b3twldtu  98='(98) REFUSED/MISSING' 99='(99) INAPP' ;
  VALUE b3twldtr  98='(98) REFUSED/MISSING' 99='(99) INAPP' ;
  VALUE b3twldti  98='(98) REFUSED/MISSING' 99='(99) INAPP' ;
  VALUE b3twlf    8='(8) REFUSED/MISSING' 9='(9) INAPP' ;
  VALUE b3tcompf  8='(8) REFUSED/MISSING' 9='(9) INAPP' ;
  VALUE b3temz2f  8='(8) REFUSED/MISSING' 9='(9) INAPP' ;
  VALUE b3tefz2f  8='(8) REFUSED/MISSING' 9='(9) INAPP' ;
  VALUE b3tcom0f  8='(8) REFUSED/MISSING' 9='(9) INAPP' ;
  VALUE b3temz3f  8='(8) REFUSED/MISSING' 9='(9) INAPP' ;
  VALUE b3tefz3f  8='(8) REFUSED/MISSING' 9='(9) INAPP' ;
  VALUE b3tswn1f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tswn2f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tswn3f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tswn4f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tswn5f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tswn6f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tswn7f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tswn8f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tswn9f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tswn0f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw10f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw11f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw12f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw13f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw14f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw15f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw16f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw17f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw18f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw19f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tswr1f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tswr2f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tswr3f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tswr4f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tswr5f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tswr6f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tswr7f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tswr8f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tswr9f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tswr0f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw20f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw21f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw22f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw23f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw24f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw25f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw26f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw27f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw28f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw29f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tswx1f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tswx2f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tswx3f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tswx4f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tswx5f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tswx6f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tswx7f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tswx8f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tswx9f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tswx0f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw30f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw31f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw32f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw33f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw34f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw35f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw36f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw37f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw38f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw39f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw40f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw41f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw42f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw43f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw44f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw45f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw46f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw47f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw48f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw49f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw50f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tsw51f  95='(95) INCORRECT' 98='(98) REFUSED/MISSING'
                  99='(99) INVALID' ;
  VALUE b3tstn    98='(98) REFUSED/MISSING' ;
  VALUE b3tsvn    98='(98) REFUSED/MISSING' ;
  VALUE b3tspn    8='(8) REFUSED/MISSING' ;
  VALUE b3tsmn    98='(98) REFUSED/MISSING' ;
  VALUE b3tstr    98='(98) REFUSED/MISSING' ;
  VALUE b3tsvr    98='(98) REFUSED/MISSING' ;
  VALUE b3tspr    8='(8) REFUSED/MISSING' ;
  VALUE b3tsmr    98='(98) REFUSED/MISSING' ;
  VALUE b3tsmb    98='(98) REFUSED/MISSING' ;
  VALUE b3tstxno  98='(98) REFUSED/MISSING' ;
  VALUE b3tsvxno  98='(98) REFUSED/MISSING' ;
  VALUE b3tspxno  8='(8) REFUSED/MISSING' ;
  VALUE b3tstxro  98='(98) REFUSED/MISSING' ;
  VALUE b3tsvxro  98='(98) REFUSED/MISSING' ;
  VALUE b3tspxro  8='(8) REFUSED/MISSING' ;
  VALUE b3tstxbo  98='(98) REFUSED/MISSING' ;
  VALUE b3tsvxbo  98='(98) REFUSED/MISSING' ;
  VALUE b3tspxbo  8='(8) REFUSED/MISSING' ;
  VALUE b3tstxns  8='(8) REFUSED/MISSING' ;
  VALUE b3tsvxns  8='(8) REFUSED/MISSING' ;
  VALUE b3tspxns  8='(8) REFUSED/MISSING' ;
  VALUE b3tstxrs  8='(8) REFUSED/MISSING' ;
  VALUE b3tsvxrs  8='(8) REFUSED/MISSING' ;
  VALUE b3tspxrs  8='(8) REFUSED/MISSING' ;
  VALUE b3tstxbs  8='(8) REFUSED/MISSING' ;
  VALUE b3tsvxbs  8='(8) REFUSED/MISSING' ;
  VALUE b3tspxbs  8='(8) REFUSED/MISSING' ;
  VALUE b3tstxbb  98='(98) REFUSED/MISSING' ;
  VALUE b3tsvxbb  98='(98) REFUSED/MISSING' ;
  VALUE b3tspxbb  8='(8) REFUSED/MISSING' ;
  VALUE b3tsmxno  98='(98) REFUSED/MISSING' ;
  VALUE b3tsmxro  98='(98) REFUSED/MISSING' ;
  VALUE b3tsmxbo  98='(98) REFUSED/MISSING' ;
  VALUE b3tsmxns  98='(98) REFUSED/MISSING' ;
  VALUE b3tsmxrs  98='(98) REFUSED/MISSING' ;
  VALUE b3tsmxbs  98='(98) REFUSED/MISSING' ;
  VALUE b3tsmxbb  98='(98) REFUSED/MISSING' ;
  VALUE b3tscgba  98='(98) REFUSED/MISSING' ;
  VALUE b3tscgbr  98='(98) REFUSED/MISSING' ;
  VALUE b3tscgna  98='(98) REFUSED/MISSING' ;
  VALUE b3tscgnr  98='(98) REFUSED/MISSING' ;
  VALUE b3tscgra  98='(98) REFUSED/MISSING' ;
  VALUE b3tscgrr  98='(98) REFUSED/MISSING' ;
  VALUE b3tsclba  98='(98) REFUSED/MISSING' ;
  VALUE b3tsclbr  98='(98) REFUSED/MISSING' ;
  VALUE b3tsclna  98='(98) REFUSED/MISSING' ;
  VALUE b3tsclnr  98='(98) REFUSED/MISSING' ;
  VALUE b3tsclra  98='(98) REFUSED/MISSING' ;
  VALUE b3tsclrr  98='(98) REFUSED/MISSING' ;
  VALUE b3tsfv    0='(0) NOT SELECTED' 1='(1) SELECTED' ;
  VALUE b3tsfc    0='(0) NOT SELECTED' 1='(1) SELECTED' ;
*/


* SAS DATA, INFILE, INPUT STATEMENTS;

DATA;
INFILE "data-filename" LRECL=1744;
INPUT
       M2ID 1-8                M2FAMNUM 9-14
        SAMPLMAJ 15-22          B1PAGE_M2 23-27         B1PGENDER 28-35
        B3PIDATE_MO 36-43       B3PIDATE_YR 44-51       B3TWLIFP 52-59
        B3TWLI1 60-67           B3TWLI2 68-75           B3TWLI3 76-83
        B3TWLI4 84-91           B3TWLI5 92-99           B3TWLI6 100-107
        B3TWLI7 108-115         B3TWLI8 116-123         B3TWLI9 124-131
        B3TWLI10 132-139        B3TWLI11 140-147        B3TWLI12 148-155
        B3TWLI13 156-163        B3TWLI14 164-171        B3TWLI15 172-179
        B3TWLI16 180-187        B3TWLI17 188-195        B3TWLI18 196-203
        B3TWLI19 204-211        B3TWLI20 212-219        B3TWLI21 220-227
        B3TWLI22 228-235        B3TWLI23 236-243        B3TWLI24 244-251
        B3TWLI25 252-259        B3TWLI26 260-267        B3TWLITU 268-275
        B3TWLITR 276-283        B3TWLITI 284-291        B3TDBFP 292-299
        B3TDBS 300-307          B3TCTFFP 308-315        B3TCTFLU 316-323
        B3TCTFLR 324-331        B3TCTFLI 332-339        B3TNSFP 340-347
        B3TNS1 348-355          B3TNS2 356-363          B3TNS3 364-371
        B3TNS4 372-379          B3TNS5 380-387          B3TNS1C 388-395
        B3TNS2C 396-403         B3TNS3C 404-411         B3TNS4C 412-419
        B3TNS5C 420-427         B3TNSTOT 428-435        B3TBKFP 436-443
        B3TBKCT 444-451         B3TBKERR 452-459        B3TBKTOT 460-467
        B3TWLDFP 468-475        B3TWLD1 476-483         B3TWLD2 484-491
        B3TWLD3 492-499         B3TWLD4 500-507         B3TWLD5 508-515
        B3TWLD6 516-523         B3TWLD7 524-531         B3TWLD8 532-539
        B3TWLD9 540-547         B3TWLD10 548-555        B3TWLD11 556-563
        B3TWLD12 564-571        B3TWLD13 572-579        B3TWLD14 580-587
        B3TWLD15 588-595        B3TWLD16 596-603        B3TWLD17 604-611
        B3TWLD18 612-619        B3TWLD19 620-627        B3TWLD20 628-635
        B3TWLD21 636-643        B3TWLD22 644-651        B3TWLD23 652-659
        B3TWLD24 660-667        B3TWLD25 668-675        B3TWLD26 676-683
        B3TWLDTU 684-691        B3TWLDTR 692-699        B3TWLDTI 700-707
        B3TWLF 708-715 .2       B3TCOMPZ1 716-720 .3    B3TEMZ1 721-725 .3
        B3TEFZ1 726-730 .3      B3TCOMPZ2 731-735 .3    B3TEMZ2 736-740 .3
        B3TEFZ2 741-745 .3      B3TCOMPZ3 746-750 .3    B3TEMZ3 751-755 .3
        B3TEFZ3 756-760 .3      B3TSWN1 761-768 .3      B3TSWN2 769-776 .3
        B3TSWN3 777-784 .3      B3TSWN4 785-792 .3      B3TSWN5 793-800 .3
        B3TSWN6 801-808 .3      B3TSWN7 809-816 .3      B3TSWN8 817-824 .3
        B3TSWN9 825-832 .3      B3TSWN10 833-840 .3     B3TSWN11 841-848 .3
        B3TSWN12 849-856 .3     B3TSWN13 857-864 .3     B3TSWN14 865-872 .3
        B3TSWN15 873-880 .3     B3TSWN16 881-888 .3     B3TSWN17 889-896 .3
        B3TSWN18 897-904 .3     B3TSWN19 905-912 .3     B3TSWN20 913-920 .3
        B3TSWR1 921-928 .3      B3TSWR2 929-936 .3      B3TSWR3 937-944 .3
        B3TSWR4 945-952 .3      B3TSWR5 953-960 .3      B3TSWR6 961-968 .3
        B3TSWR7 969-976 .3      B3TSWR8 977-984 .3      B3TSWR9 985-992 .3
        B3TSWR10 993-1000 .3    B3TSWR11 1001-1008 .3   B3TSWR12 1009-1016 .3
        B3TSWR13 1017-1024 .3   B3TSWR14 1025-1032 .3   B3TSWR15 1033-1040 .3
        B3TSWR16 1041-1048 .3   B3TSWR17 1049-1056 .3   B3TSWR18 1057-1064 .3
        B3TSWR19 1065-1072 .3   B3TSWR20 1073-1080 .3   B3TSWX1 1081-1088 .3
        B3TSWX2 1089-1096 .3    B3TSWX3 1097-1104 .3    B3TSWX4 1105-1112 .3
        B3TSWX5 1113-1120 .3    B3TSWX6 1121-1128 .3    B3TSWX7 1129-1136 .3
        B3TSWX8 1137-1144 .3    B3TSWX9 1145-1152 .3    B3TSWX10 1153-1160 .3
        B3TSWX11 1161-1168 .3   B3TSWX12 1169-1176 .3   B3TSWX13 1177-1184 .3
        B3TSWX14 1185-1192 .3   B3TSWX15 1193-1200 .3   B3TSWX16 1201-1208 .3
        B3TSWX17 1209-1216 .3   B3TSWX18 1217-1224 .3   B3TSWX19 1225-1232 .3
        B3TSWX20 1233-1240 .3   B3TSWX21 1241-1248 .3   B3TSWX22 1249-1256 .3
        B3TSWX23 1257-1264 .3   B3TSWX24 1265-1272 .3   B3TSWX25 1273-1280 .3
        B3TSWX26 1281-1288 .3   B3TSWX27 1289-1296 .3   B3TSWX28 1297-1304 .3
        B3TSWX29 1305-1312 .3   B3TSWX30 1313-1320 .3   B3TSWX31 1321-1328 .3
        B3TSWX32 1329-1336 .3   B3TSTN 1337-1344        B3TSVN 1345-1352
        B3TSPN 1353-1360 .2     B3TSMN 1361-1368 .3     B3TSTR 1369-1376
        B3TSVR 1377-1384        B3TSPR 1385-1392 .2     B3TSMR 1393-1400 .3
        B3TSMB 1401-1408 .3     B3TSTXNO 1409-1416      B3TSVXNO 1417-1424
        B3TSPXNO 1425-1432 .2   B3TSTXRO 1433-1440      B3TSVXRO 1441-1448
        B3TSPXRO 1449-1456 .2   B3TSTXBO 1457-1464      B3TSVXBO 1465-1472
        B3TSPXBO 1473-1480 .2   B3TSTXNS 1481-1488      B3TSVXNS 1489-1496
        B3TSPXNS 1497-1504 .2   B3TSTXRS 1505-1512      B3TSVXRS 1513-1520
        B3TSPXRS 1521-1528 .2   B3TSTXBS 1529-1536      B3TSVXBS 1537-1544
        B3TSPXBS 1545-1552 .2   B3TSTXBB 1553-1560      B3TSVXBB 1561-1568
        B3TSPXBB 1569-1576 .2   B3TSMXNO 1577-1584 .3   B3TSMXRO 1585-1592 .3
        B3TSMXBO 1593-1600 .3   B3TSMXNS 1601-1608 .3   B3TSMXRS 1609-1616 .3
        B3TSMXBS 1617-1624 .3   B3TSMXBB 1625-1632 .3   B3TSCGBA 1633-1640 .3
        B3TSCGBR 1641-1648 .3   B3TSCGNA 1649-1656 .3   B3TSCGNR 1657-1664 .3
        B3TSCGRA 1665-1672 .3   B3TSCGRR 1673-1680 .3   B3TSCLBA 1681-1688 .3
        B3TSCLBR 1689-1696 .3   B3TSCLNA 1697-1704 .3   B3TSCLNR 1705-1712 .3
        B3TSCLRA 1713-1720 .3   B3TSCLRR 1721-1728 .3   B3TSFV 1729-1736
        B3TSFC 1737-1744        ;


* SAS LABEL STATEMENT;

LABEL 
   M2ID    = 'MIDUS 2 ID number' 
   M2FAMNUM= 'MIDUS 2 Family number' 
   SAMPLMAJ= 'Major sample identification (aka Sample)' 
   B1PAGE_M2= 'Age determined by subtracting DOB_Final from b1ipidate' 
   B1PGENDER= 'Gender' 
   B3PIDATE_MO= 'Month of interview' 
   B3PIDATE_YR= 'Year of interview' 
   B3TWLIFP= 'Word List Imm flagged problematic?' 
   B3TWLI1 = 'Word List Immediate: Recalled #1' 
   B3TWLI2 = 'Word List Immediate: Recalled #2' 
   B3TWLI3 = 'Word List Immediate: Recalled #3' 
   B3TWLI4 = 'Word List Immediate: Recalled #4' 
   B3TWLI5 = 'Word List Immediate: Recalled #5' 
   B3TWLI6 = 'Word List Immediate: Recalled #6' 
   B3TWLI7 = 'Word List Immediate: Recalled #7' 
   B3TWLI8 = 'Word List Immediate: Recalled #8' 
   B3TWLI9 = 'Word List Immediate: Recalled #9' 
   B3TWLI10= 'Word List Immediate: Recalled #10' 
   B3TWLI11= 'Word List Immediate: Recalled #11' 
   B3TWLI12= 'Word List Immediate: Recalled #12' 
   B3TWLI13= 'Word List Immediate: Recalled #13' 
   B3TWLI14= 'Word List Immediate: Recalled #14' 
   B3TWLI15= 'Word List Immediate: Recalled #15' 
   B3TWLI16= 'Word List Immediate: Recalled #16' 
   B3TWLI17= 'Word List Immediate: Recalled #17' 
   B3TWLI18= 'Word List Immediate: Recalled #18' 
   B3TWLI19= 'Word List Immediate: Recalled #19' 
   B3TWLI20= 'Word List Immediate: Recalled #20' 
   B3TWLI21= 'Word List Immediate: Recalled #21' 
   B3TWLI22= 'Word List Immediate: Recalled #22' 
   B3TWLI23= 'Word List Immediate: Recalled #23' 
   B3TWLI24= 'Word List Immediate: Recalled #24' 
   B3TWLI25= 'Word List Immediate: Recalled #25' 
   B3TWLI26= 'Word List Immediate: Recalled #26' 
   B3TWLITU= 'Word List Immediate: Tot Unique Items' 
   B3TWLITR= 'Word List Immediate: Tot # Repetitions' 
   B3TWLITI= 'Word List Immediate: Tot # Intrusions' 
   B3TDBFP = 'Digits Backward flagged problematic?' 
   B3TDBS  = 'Digits Backward: highest # digits recall' 
   B3TCTFFP= 'Category Fluency flagged problematic?' 
   B3TCTFLU= 'Category Fluency: Tot Unique items' 
   B3TCTFLR= 'Category Fluency: Tot # Repetitions' 
   B3TCTFLI= 'Category Fluency: Tot # Intrusions' 
   B3TNSFP = 'Number Series flagged problematic?' 
   B3TNS1  = 'Number Series #1' 
   B3TNS2  = 'Number Series #2' 
   B3TNS3  = 'Number Series #3' 
   B3TNS4  = 'Number Series #4' 
   B3TNS5  = 'Number Series #5' 
   B3TNS1C = 'Number Series #1: correct?' 
   B3TNS2C = 'Number Series #2: correct?' 
   B3TNS3C = 'Number Series #3: correct?' 
   B3TNS4C = 'Number Series #4: correct?' 
   B3TNS5C = 'Number Series #5: correct?' 
   B3TNSTOT= 'Number Series: Total Correct' 
   B3TBKFP = 'Backward Counting flagged problematic?' 
   B3TBKCT = 'Backward Counting: last # reached' 
   B3TBKERR= 'Backward Counting: # of errors' 
   B3TBKTOT= 'Backward Counting: Total # Counted Correctly (100-(B3TBKCT+B3TBKERR))' 
   B3TWLDFP= 'Word List Delayed flagged problematic?' 
   B3TWLD1 = 'Word List Delayed: Recalled #1' 
   B3TWLD2 = 'Word List Delayed: Recalled #2' 
   B3TWLD3 = 'Word List Delayed: Recalled #3' 
   B3TWLD4 = 'Word List Delayed: Recalled #4' 
   B3TWLD5 = 'Word List Delayed: Recalled #5' 
   B3TWLD6 = 'Word List Delayed: Recalled #6' 
   B3TWLD7 = 'Word List Delayed: Recalled #7' 
   B3TWLD8 = 'Word List Delayed: Recalled #8' 
   B3TWLD9 = 'Word List Delayed: Recalled #9' 
   B3TWLD10= 'Word List Delayed: Recalled #10' 
   B3TWLD11= 'Word List Delayed: Recalled #11' 
   B3TWLD12= 'Word List Delayed: Recalled #12' 
   B3TWLD13= 'Word List Delayed: Recalled #13' 
   B3TWLD14= 'Word List Delayed: Recalled #14' 
   B3TWLD15= 'Word List Delayed: Recalled #15' 
   B3TWLD16= 'Word List Delayed: Recalled #16' 
   B3TWLD17= 'Word List Delayed: Recalled #17' 
   B3TWLD18= 'Word List Delayed: Recalled #18' 
   B3TWLD19= 'Word List Delayed: Recalled #19' 
   B3TWLD20= 'Word List Delayed: Recalled #20' 
   B3TWLD21= 'Word List Delayed: Recalled #21' 
   B3TWLD22= 'Word List Delayed: Recalled #22' 
   B3TWLD23= 'Word List Delayed: Recalled #23' 
   B3TWLD24= 'Word List Delayed: Recalled #24' 
   B3TWLD25= 'Word List Delayed: Recalled #25' 
   B3TWLD26= 'Word List Delayed: Recalled #26' 
   B3TWLDTU= 'Word List Delayed: Tot Unique Items' 
   B3TWLDTR= 'Word List Delayed: Tot # Repetitions' 
   B3TWLDTI= 'Word List Delayed: Total # Intrusions' 
   B3TWLF  = 'Word List: Proportion Forgot Between Immediate and Delayed' 
   B3TCOMPZ1= 'Zscore BTACT Composite Score_computed for MIDUS national sample only (N=4206)' 
   B3TEMZ1 = 'Zscore Episodic Memory_computed for MIDUS national sample only (N=4206)' 
   B3TEFZ1 = 'Zscore Executive Functioning_computed for MIDUS national sample only (N=4206)' 
   B3TCOMPZ2= 'Zscore BTACT Composite Score_computed for Milwaukee sample only (N=306)' 
   B3TEMZ2 = 'Zscore Episodic Memory_computed for Milwaukee sample only (N=306)' 
   B3TEFZ2 = 'Zscore Executive Functioning_computed for Milwaukee sample only (N=306)' 
   B3TCOMPZ3= 'Zscore BTACT Composite Score_computed for complete sample (MIDUS + Milwaukee; N=4512)' 
   B3TEMZ3 = 'Zscore Episodic Memory_computed for complete sample (MIDUS + Milwaukee; N=4512)' 
   B3TEFZ3 = 'Zscore Executive Functioning_computed for complete sample (MIDUS + Milwaukee; N=4512)' 
   B3TSWN1 = 'SGST: normal single-task trial #1' 
   B3TSWN2 = 'SGST: normal single-task trial #2' 
   B3TSWN3 = 'SGST: normal single-task trial #3' 
   B3TSWN4 = 'SGST: normal single-task trial #4' 
   B3TSWN5 = 'SGST: normal single-task trial #5' 
   B3TSWN6 = 'SGST: normal single-task trial #6' 
   B3TSWN7 = 'SGST: normal single-task trial #7' 
   B3TSWN8 = 'SGST: normal single-task trial #8' 
   B3TSWN9 = 'SGST: normal single-task trial #9' 
   B3TSWN10= 'SGST: normal single-task trial #10' 
   B3TSWN11= 'SGST: normal single-task trial #11' 
   B3TSWN12= 'SGST: normal single-task trial #12' 
   B3TSWN13= 'SGST: normal single-task trial #13' 
   B3TSWN14= 'SGST: normal single-task trial #14' 
   B3TSWN15= 'SGST: normal single-task trial #15' 
   B3TSWN16= 'SGST: normal single-task trial #16' 
   B3TSWN17= 'SGST: normal single-task trial #17' 
   B3TSWN18= 'SGST: normal single-task trial #18' 
   B3TSWN19= 'SGST: normal single-task trial #19' 
   B3TSWN20= 'SGST: normal single-task trial #20' 
   B3TSWR1 = 'SGST: reverse single-task trial #1' 
   B3TSWR2 = 'SGST: reverse single-task trial #2' 
   B3TSWR3 = 'SGST: reverse single-task trial #3' 
   B3TSWR4 = 'SGST: reverse single-task trial #4' 
   B3TSWR5 = 'SGST: reverse single-task trial #5' 
   B3TSWR6 = 'SGST: reverse single-task trial #6' 
   B3TSWR7 = 'SGST: reverse single-task trial #7' 
   B3TSWR8 = 'SGST: reverse single-task trial #8' 
   B3TSWR9 = 'SGST: reverse single-task trial #9' 
   B3TSWR10= 'SGST: reverse single-task trial #10' 
   B3TSWR11= 'SGST: reverse single-task trial #11' 
   B3TSWR12= 'SGST: reverse single-task trial #12' 
   B3TSWR13= 'SGST: reverse single-task trial #13' 
   B3TSWR14= 'SGST: reverse single-task trial #14' 
   B3TSWR15= 'SGST: reverse single-task trial #15' 
   B3TSWR16= 'SGST: reverse single-task trial #16' 
   B3TSWR17= 'SGST: reverse single-task trial #17' 
   B3TSWR18= 'SGST: reverse single-task trial #18' 
   B3TSWR19= 'SGST: reverse single-task trial #19' 
   B3TSWR20= 'SGST: reverse single-task trial #20' 
   B3TSWX1 = 'SGST: mixed-task trial #1 "normal...green"' 
   B3TSWX2 = 'SGST: mixed-task trial #2 "red"' 
   B3TSWX3 = 'SGST: mixed-task trial #3 "green"' 
   B3TSWX4 = 'SGST: mixed-task trial #4 "reverse...red"' 
   B3TSWX5 = 'SGST: mixed-task trial #5 "red"' 
   B3TSWX6 = 'SGST: mixed-task trial #6 "green"' 
   B3TSWX7 = 'SGST: mixed-task trial #7 "red"' 
   B3TSWX8 = 'SGST: mixed-task trial #8 "red"' 
   B3TSWX9 = 'SGST: mixed-task trial #9 "normal...red"' 
   B3TSWX10= 'SGST: mixed-task trial #10 "green"' 
   B3TSWX11= 'SGST: mixed-task trial #11 "red"' 
   B3TSWX12= 'SGST: mixed-task trial #12 "green"' 
   B3TSWX13= 'SGST: mixed-task trial #13 "green"' 
   B3TSWX14= 'SGST: mixed-task trial #14 "red"' 
   B3TSWX15= 'SGST: mixed-task trial #15 "reverse...green"' 
   B3TSWX16= 'SGST: mixed-task trial #16 "green"' 
   B3TSWX17= 'SGST: mixed-task trial #17 "red"' 
   B3TSWX18= 'SGST: mixed-task trial #18 "green"' 
   B3TSWX19= 'SGST: mixed-task trial #19 "normal...green"' 
   B3TSWX20= 'SGST: mixed-task trial #20 "red"' 
   B3TSWX21= 'SGST: mixed-task trial #21 "green"' 
   B3TSWX22= 'SGST: mixed-task trial #22 "green"' 
   B3TSWX23= 'SGST: mixed-task trial #23 "red"' 
   B3TSWX24= 'SGST: mixed-task trial #24 "reverse...green"' 
   B3TSWX25= 'SGST: mixed-task trial #25 "green"' 
   B3TSWX26= 'SGST: mixed-task trial #26 "red"' 
   B3TSWX27= 'SGST: mixed-task trial #27 "green"' 
   B3TSWX28= 'SGST: mixed-task trial #28 "red"' 
   B3TSWX29= 'SGST: mixed-task trial #29 "normal...red"' 
   B3TSWX30= 'SGST: mixed-task trial #30 "green"' 
   B3TSWX31= 'SGST: mixed-task trial #31 "red"' 
   B3TSWX32= 'SGST: mixed-task trial #32 "green"' 
   B3TSTN  = 'SGST: normal single-task #correct' 
   B3TSVN  = 'SGST: normal single-task #invalid' 
   B3TSPN  = 'SGST: normal single-task % correct' 
   B3TSMN  = 'SGST: normal single-task median RT' 
   B3TSTR  = 'SGST: reverse single-task #correct' 
   B3TSVR  = 'SGST: reverse single-task #invalid' 
   B3TSPR  = 'SGST: reverse single-task % correct' 
   B3TSMR  = 'SGST: reverse single-task median RT' 
   B3TSMB  = 'SGST: mean(B3TSMN, B3TSMR)' 
   B3TSTXNO= 'SGST: mixed-task normal nonswitch trials #correct' 
   B3TSVXNO= 'SGST: mixed-task normal nonswitch trials #invalid' 
   B3TSPXNO= 'SGST: mixed-task normal nonswitch trials %correct' 
   B3TSTXRO= 'SGST: mixed-task reverse nonswitch trials #correct' 
   B3TSVXRO= 'SGST: mixed-task reverse nonswitch trials #invalid' 
   B3TSPXRO= 'SGST: mixed-task reverse nonswitch trials %correct' 
   B3TSTXBO= 'SGST: mixed-task nonswitch trials #correct' 
   B3TSVXBO= 'SGST: mixed-task nonswitch trials #invalid' 
   B3TSPXBO= 'SGST: mixed-task nonswitch trials %correct' 
   B3TSTXNS= 'SGST: mixed-task normal switch trials #correct' 
   B3TSVXNS= 'SGST: mixed-task normal switch trials #invalid' 
   B3TSPXNS= 'SGST: mixed-task normal switch trials %correct' 
   B3TSTXRS= 'SGST: mixed-task reverse switch trials #correct' 
   B3TSVXRS= 'SGST: mixed-task reverse switch trials #invalid' 
   B3TSPXRS= 'SGST: mixed-task reverse switch trials %correct' 
   B3TSTXBS= 'SGST: mixed-task switch trials #correct' 
   B3TSVXBS= 'SGST: mixed-task switch trials #invalid' 
   B3TSPXBS= 'SGST: mixed-task switch trials %correct' 
   B3TSTXBB= 'SGST: all mixed-task #correct' 
   B3TSVXBB= 'SGST: all mixed-task #invalid' 
   B3TSPXBB= 'SGST: all mixed-task %correct' 
   B3TSMXNO= 'SGST: mixed-task normal nonswitch median RT' 
   B3TSMXRO= 'SGST: mixed-task reverse nonswitch median RT' 
   B3TSMXBO= 'SGST: mixed-task nonswitch trials median RT' 
   B3TSMXNS= 'SGST: mixed-task normal switch median RT' 
   B3TSMXRS= 'SGST: mixed-task reverse switch median RT' 
   B3TSMXBS= 'SGST: mixed-task switch trials median RT' 
   B3TSMXBB= 'SGST: mean(B3TSMXBO, B3TSMXBS)' 
   B3TSCGBA= 'SGST: General Switch Cost, absolute (B3TSMXBB-B3TSMB)' 
   B3TSCGBR= 'SGST: General Switch Cost, relative (B3TSCGBA/B3TSMB)' 
   B3TSCGNA= 'SGST: General Switch Cost (normal), absolute [mean(B3TSMXNO, B3TSMXNS)-B3TSMN]' 
   B3TSCGNR= 'SGST: General Switch Cost (normal), relative (B3TSCGNA/B3TSMN)' 
   B3TSCGRA= 'SGST: General Switch Cost (reverse), absolute [mean(B3TSMXRO, B3TSMXRS)-B3TSMR]' 
   B3TSCGRR= 'SGST: General Switch Cost (reverse), relative (B3TSCGRA/B3TSMR)' 
   B3TSCLBA= 'SGST: Local Switch Cost, absolute (B3TSMXBS-B3TSMXBO)' 
   B3TSCLBR= 'SGST: Local Switch Cost, relative (B3TSCLBA/B3TSMXBO)' 
   B3TSCLNA= 'SGST: Local Switch Cost (normal), absolute (B3TSMXNS-B3TSMXNO)' 
   B3TSCLNR= 'SGST: Local Switch Cost (normal), relative (B3TSCLNA/B3TSMXNO)' 
   B3TSCLRA= 'SGST: Local Switch Cost (reverse), absolute (B3TSMXRS-B3TSMXRO)' 
   B3TSCLRR= 'SGST: Local Switch Cost (reverse), relative (B3TSCLRA/B3TSMXRO)' 
   B3TSFV  = 'SGST: Filter invalid cases' 
   B3TSFC  = 'SGST: Filter cases with low accuracy or extreme latencies' 
        ; 


* USER-DEFINED MISSING VALUES RECODE TO SAS SYSMIS;

/*
   IF (B1PAGE_M2 = 98 OR B1PAGE_M2 = 99) THEN B1PAGE_M2 = .;
   IF (B1PGENDER = 8) THEN B1PGENDER = .;
   IF (B3TWLIFP = 8) THEN B3TWLIFP = .;
   IF (B3TWLI1 = 98 OR B3TWLI1 = 99) THEN B3TWLI1 = .;
   IF (B3TWLI2 = 98 OR B3TWLI2 = 99) THEN B3TWLI2 = .;
   IF (B3TWLI3 = 98 OR B3TWLI3 = 99) THEN B3TWLI3 = .;
   IF (B3TWLI4 = 98 OR B3TWLI4 = 99) THEN B3TWLI4 = .;
   IF (B3TWLI5 = 98 OR B3TWLI5 = 99) THEN B3TWLI5 = .;
   IF (B3TWLI6 = 98 OR B3TWLI6 = 99) THEN B3TWLI6 = .;
   IF (B3TWLI7 = 98 OR B3TWLI7 = 99) THEN B3TWLI7 = .;
   IF (B3TWLI8 = 98 OR B3TWLI8 = 99) THEN B3TWLI8 = .;
   IF (B3TWLI9 = 98 OR B3TWLI9 = 99) THEN B3TWLI9 = .;
   IF (B3TWLI10 = 98 OR B3TWLI10 = 99) THEN B3TWLI10 = .;
   IF (B3TWLI11 = 98 OR B3TWLI11 = 99) THEN B3TWLI11 = .;
   IF (B3TWLI12 = 98 OR B3TWLI12 = 99) THEN B3TWLI12 = .;
   IF (B3TWLI13 = 98 OR B3TWLI13 = 99) THEN B3TWLI13 = .;
   IF (B3TWLI14 = 98 OR B3TWLI14 = 99) THEN B3TWLI14 = .;
   IF (B3TWLI15 = 98 OR B3TWLI15 = 99) THEN B3TWLI15 = .;
   IF (B3TWLI16 = 98 OR B3TWLI16 = 99) THEN B3TWLI16 = .;
   IF (B3TWLI17 = 98 OR B3TWLI17 = 99) THEN B3TWLI17 = .;
   IF (B3TWLI18 = 98 OR B3TWLI18 = 99) THEN B3TWLI18 = .;
   IF (B3TWLI19 = 98 OR B3TWLI19 = 99) THEN B3TWLI19 = .;
   IF (B3TWLI20 = 98 OR B3TWLI20 = 99) THEN B3TWLI20 = .;
   IF (B3TWLI21 = 98 OR B3TWLI21 = 99) THEN B3TWLI21 = .;
   IF (B3TWLI22 = 98 OR B3TWLI22 = 99) THEN B3TWLI22 = .;
   IF (B3TWLI23 = 98 OR B3TWLI23 = 99) THEN B3TWLI23 = .;
   IF (B3TWLI24 = 98 OR B3TWLI24 = 99) THEN B3TWLI24 = .;
   IF (B3TWLI25 = 98 OR B3TWLI25 = 99) THEN B3TWLI25 = .;
   IF (B3TWLI26 = 98 OR B3TWLI26 = 99) THEN B3TWLI26 = .;
   IF (B3TWLITU = 98 OR B3TWLITU = 99) THEN B3TWLITU = .;
   IF (B3TWLITR = 98 OR B3TWLITR = 99) THEN B3TWLITR = .;
   IF (B3TWLITI = 98 OR B3TWLITI = 99) THEN B3TWLITI = .;
   IF (B3TDBFP = 8) THEN B3TDBFP = .;
   IF (B3TDBS = 98 OR B3TDBS = 99) THEN B3TDBS = .;
   IF (B3TCTFFP = 8) THEN B3TCTFFP = .;
   IF (B3TCTFLU = 98 OR B3TCTFLU = 99) THEN B3TCTFLU = .;
   IF (B3TCTFLR = 98 OR B3TCTFLR = 99) THEN B3TCTFLR = .;
   IF (B3TCTFLI = 98 OR B3TCTFLI = 99) THEN B3TCTFLI = .;
   IF (B3TNSFP = 8) THEN B3TNSFP = .;
   IF (B3TNS1 = 997 OR B3TNS1 = 998 OR B3TNS1 = 999) THEN B3TNS1 = .;
   IF (B3TNS2 = 997 OR B3TNS2 = 998 OR B3TNS2 = 999) THEN B3TNS2 = .;
   IF (B3TNS3 = 997 OR B3TNS3 = 998 OR B3TNS3 = 999) THEN B3TNS3 = .;
   IF (B3TNS4 = 997 OR B3TNS4 = 998 OR B3TNS4 = 999) THEN B3TNS4 = .;
   IF (B3TNS5 = 997 OR B3TNS5 = 998 OR B3TNS5 = 999) THEN B3TNS5 = .;
   IF (B3TNS1C = 8 OR B3TNS1C = 9) THEN B3TNS1C = .;
   IF (B3TNS2C = 8 OR B3TNS2C = 9) THEN B3TNS2C = .;
   IF (B3TNS3C = 8 OR B3TNS3C = 9) THEN B3TNS3C = .;
   IF (B3TNS4C = 8 OR B3TNS4C = 9) THEN B3TNS4C = .;
   IF (B3TNS5C = 8 OR B3TNS5C = 9) THEN B3TNS5C = .;
   IF (B3TNSTOT = 8 OR B3TNSTOT = 9) THEN B3TNSTOT = .;
   IF (B3TBKFP = 8) THEN B3TBKFP = .;
   IF (B3TBKCT = 998 OR B3TBKCT = 999) THEN B3TBKCT = .;
   IF (B3TBKERR = 998 OR B3TBKERR = 999) THEN B3TBKERR = .;
   IF (B3TBKTOT = 998 OR B3TBKTOT = 999) THEN B3TBKTOT = .;
   IF (B3TWLDFP = 8) THEN B3TWLDFP = .;
   IF (B3TWLD1 = 98 OR B3TWLD1 = 99) THEN B3TWLD1 = .;
   IF (B3TWLD2 = 98 OR B3TWLD2 = 99) THEN B3TWLD2 = .;
   IF (B3TWLD3 = 98 OR B3TWLD3 = 99) THEN B3TWLD3 = .;
   IF (B3TWLD4 = 98 OR B3TWLD4 = 99) THEN B3TWLD4 = .;
   IF (B3TWLD5 = 98 OR B3TWLD5 = 99) THEN B3TWLD5 = .;
   IF (B3TWLD6 = 98 OR B3TWLD6 = 99) THEN B3TWLD6 = .;
   IF (B3TWLD7 = 98 OR B3TWLD7 = 99) THEN B3TWLD7 = .;
   IF (B3TWLD8 = 98 OR B3TWLD8 = 99) THEN B3TWLD8 = .;
   IF (B3TWLD9 = 98 OR B3TWLD9 = 99) THEN B3TWLD9 = .;
   IF (B3TWLD10 = 98 OR B3TWLD10 = 99) THEN B3TWLD10 = .;
   IF (B3TWLD11 = 98 OR B3TWLD11 = 99) THEN B3TWLD11 = .;
   IF (B3TWLD12 = 98 OR B3TWLD12 = 99) THEN B3TWLD12 = .;
   IF (B3TWLD13 = 98 OR B3TWLD13 = 99) THEN B3TWLD13 = .;
   IF (B3TWLD14 = 98 OR B3TWLD14 = 99) THEN B3TWLD14 = .;
   IF (B3TWLD15 = 98 OR B3TWLD15 = 99) THEN B3TWLD15 = .;
   IF (B3TWLD16 = 98 OR B3TWLD16 = 99) THEN B3TWLD16 = .;
   IF (B3TWLD17 = 98 OR B3TWLD17 = 99) THEN B3TWLD17 = .;
   IF (B3TWLD18 = 98 OR B3TWLD18 = 99) THEN B3TWLD18 = .;
   IF (B3TWLD19 = 98 OR B3TWLD19 = 99) THEN B3TWLD19 = .;
   IF (B3TWLD20 = 98 OR B3TWLD20 = 99) THEN B3TWLD20 = .;
   IF (B3TWLD21 = 98 OR B3TWLD21 = 99) THEN B3TWLD21 = .;
   IF (B3TWLD22 = 98 OR B3TWLD22 = 99) THEN B3TWLD22 = .;
   IF (B3TWLD23 = 98 OR B3TWLD23 = 99) THEN B3TWLD23 = .;
   IF (B3TWLD24 = 98 OR B3TWLD24 = 99) THEN B3TWLD24 = .;
   IF (B3TWLD25 = 98 OR B3TWLD25 = 99) THEN B3TWLD25 = .;
   IF (B3TWLD26 = 98 OR B3TWLD26 = 99) THEN B3TWLD26 = .;
   IF (B3TWLDTU = 98 OR B3TWLDTU = 99) THEN B3TWLDTU = .;
   IF (B3TWLDTR = 98 OR B3TWLDTR = 99) THEN B3TWLDTR = .;
   IF (B3TWLDTI = 98 OR B3TWLDTI = 99) THEN B3TWLDTI = .;
   IF (B3TWLF = 8.00 OR B3TWLF = 9.00) THEN B3TWLF = .;
   IF (B3TCOMPZ2 = 8.000 OR B3TCOMPZ2 = 9.000) THEN B3TCOMPZ2 = .;
   IF (B3TEMZ2 = 8.000 OR B3TEMZ2 = 9.000) THEN B3TEMZ2 = .;
   IF (B3TEFZ2 = 8.000 OR B3TEFZ2 = 9.000) THEN B3TEFZ2 = .;
   IF (B3TCOMPZ3 = 8.000 OR B3TCOMPZ3 = 9.000) THEN B3TCOMPZ3 = .;
   IF (B3TEMZ3 = 8.000 OR B3TEMZ3 = 9.000) THEN B3TEMZ3 = .;
   IF (B3TEFZ3 = 8.000 OR B3TEFZ3 = 9.000) THEN B3TEFZ3 = .;
   IF (B3TSWN1 = 95.000 OR B3TSWN1 = 98.000 OR B3TSWN1 = 99.000) THEN B3TSWN1 = .;
   IF (B3TSWN2 = 95.000 OR B3TSWN2 = 98.000 OR B3TSWN2 = 99.000) THEN B3TSWN2 = .;
   IF (B3TSWN3 = 95.000 OR B3TSWN3 = 98.000 OR B3TSWN3 = 99.000) THEN B3TSWN3 = .;
   IF (B3TSWN4 = 95.000 OR B3TSWN4 = 98.000 OR B3TSWN4 = 99.000) THEN B3TSWN4 = .;
   IF (B3TSWN5 = 95.000 OR B3TSWN5 = 98.000 OR B3TSWN5 = 99.000) THEN B3TSWN5 = .;
   IF (B3TSWN6 = 95.000 OR B3TSWN6 = 98.000 OR B3TSWN6 = 99.000) THEN B3TSWN6 = .;
   IF (B3TSWN7 = 95.000 OR B3TSWN7 = 98.000 OR B3TSWN7 = 99.000) THEN B3TSWN7 = .;
   IF (B3TSWN8 = 95.000 OR B3TSWN8 = 98.000 OR B3TSWN8 = 99.000) THEN B3TSWN8 = .;
   IF (B3TSWN9 = 95.000 OR B3TSWN9 = 98.000 OR B3TSWN9 = 99.000) THEN B3TSWN9 = .;
   IF (B3TSWN10 = 95.000 OR B3TSWN10 = 98.000 OR B3TSWN10 = 99.000) THEN B3TSWN10 = .;
   IF (B3TSWN11 = 95.000 OR B3TSWN11 = 98.000 OR B3TSWN11 = 99.000) THEN B3TSWN11 = .;
   IF (B3TSWN12 = 95.000 OR B3TSWN12 = 98.000 OR B3TSWN12 = 99.000) THEN B3TSWN12 = .;
   IF (B3TSWN13 = 95.000 OR B3TSWN13 = 98.000 OR B3TSWN13 = 99.000) THEN B3TSWN13 = .;
   IF (B3TSWN14 = 95.000 OR B3TSWN14 = 98.000 OR B3TSWN14 = 99.000) THEN B3TSWN14 = .;
   IF (B3TSWN15 = 95.000 OR B3TSWN15 = 98.000 OR B3TSWN15 = 99.000) THEN B3TSWN15 = .;
   IF (B3TSWN16 = 95.000 OR B3TSWN16 = 98.000 OR B3TSWN16 = 99.000) THEN B3TSWN16 = .;
   IF (B3TSWN17 = 95.000 OR B3TSWN17 = 98.000 OR B3TSWN17 = 99.000) THEN B3TSWN17 = .;
   IF (B3TSWN18 = 95.000 OR B3TSWN18 = 98.000 OR B3TSWN18 = 99.000) THEN B3TSWN18 = .;
   IF (B3TSWN19 = 95.000 OR B3TSWN19 = 98.000 OR B3TSWN19 = 99.000) THEN B3TSWN19 = .;
   IF (B3TSWN20 = 95.000 OR B3TSWN20 = 98.000 OR B3TSWN20 = 99.000) THEN B3TSWN20 = .;
   IF (B3TSWR1 = 95.000 OR B3TSWR1 = 98.000 OR B3TSWR1 = 99.000) THEN B3TSWR1 = .;
   IF (B3TSWR2 = 95.000 OR B3TSWR2 = 98.000 OR B3TSWR2 = 99.000) THEN B3TSWR2 = .;
   IF (B3TSWR3 = 95.000 OR B3TSWR3 = 98.000 OR B3TSWR3 = 99.000) THEN B3TSWR3 = .;
   IF (B3TSWR4 = 95.000 OR B3TSWR4 = 98.000 OR B3TSWR4 = 99.000) THEN B3TSWR4 = .;
   IF (B3TSWR5 = 95.000 OR B3TSWR5 = 98.000 OR B3TSWR5 = 99.000) THEN B3TSWR5 = .;
   IF (B3TSWR6 = 95.000 OR B3TSWR6 = 98.000 OR B3TSWR6 = 99.000) THEN B3TSWR6 = .;
   IF (B3TSWR7 = 95.000 OR B3TSWR7 = 98.000 OR B3TSWR7 = 99.000) THEN B3TSWR7 = .;
   IF (B3TSWR8 = 95.000 OR B3TSWR8 = 98.000 OR B3TSWR8 = 99.000) THEN B3TSWR8 = .;
   IF (B3TSWR9 = 95.000 OR B3TSWR9 = 98.000 OR B3TSWR9 = 99.000) THEN B3TSWR9 = .;
   IF (B3TSWR10 = 95.000 OR B3TSWR10 = 98.000 OR B3TSWR10 = 99.000) THEN B3TSWR10 = .;
   IF (B3TSWR11 = 95.000 OR B3TSWR11 = 98.000 OR B3TSWR11 = 99.000) THEN B3TSWR11 = .;
   IF (B3TSWR12 = 95.000 OR B3TSWR12 = 98.000 OR B3TSWR12 = 99.000) THEN B3TSWR12 = .;
   IF (B3TSWR13 = 95.000 OR B3TSWR13 = 98.000 OR B3TSWR13 = 99.000) THEN B3TSWR13 = .;
   IF (B3TSWR14 = 95.000 OR B3TSWR14 = 98.000 OR B3TSWR14 = 99.000) THEN B3TSWR14 = .;
   IF (B3TSWR15 = 95.000 OR B3TSWR15 = 98.000 OR B3TSWR15 = 99.000) THEN B3TSWR15 = .;
   IF (B3TSWR16 = 95.000 OR B3TSWR16 = 98.000 OR B3TSWR16 = 99.000) THEN B3TSWR16 = .;
   IF (B3TSWR17 = 95.000 OR B3TSWR17 = 98.000 OR B3TSWR17 = 99.000) THEN B3TSWR17 = .;
   IF (B3TSWR18 = 95.000 OR B3TSWR18 = 98.000 OR B3TSWR18 = 99.000) THEN B3TSWR18 = .;
   IF (B3TSWR19 = 95.000 OR B3TSWR19 = 98.000 OR B3TSWR19 = 99.000) THEN B3TSWR19 = .;
   IF (B3TSWR20 = 95.000 OR B3TSWR20 = 98.000 OR B3TSWR20 = 99.000) THEN B3TSWR20 = .;
   IF (B3TSWX1 = 95.000 OR B3TSWX1 = 98.000 OR B3TSWX1 = 99.000) THEN B3TSWX1 = .;
   IF (B3TSWX2 = 95.000 OR B3TSWX2 = 98.000 OR B3TSWX2 = 99.000) THEN B3TSWX2 = .;
   IF (B3TSWX3 = 95.000 OR B3TSWX3 = 98.000 OR B3TSWX3 = 99.000) THEN B3TSWX3 = .;
   IF (B3TSWX4 = 95.000 OR B3TSWX4 = 98.000 OR B3TSWX4 = 99.000) THEN B3TSWX4 = .;
   IF (B3TSWX5 = 95.000 OR B3TSWX5 = 98.000 OR B3TSWX5 = 99.000) THEN B3TSWX5 = .;
   IF (B3TSWX6 = 95.000 OR B3TSWX6 = 98.000 OR B3TSWX6 = 99.000) THEN B3TSWX6 = .;
   IF (B3TSWX7 = 95.000 OR B3TSWX7 = 98.000 OR B3TSWX7 = 99.000) THEN B3TSWX7 = .;
   IF (B3TSWX8 = 95.000 OR B3TSWX8 = 98.000 OR B3TSWX8 = 99.000) THEN B3TSWX8 = .;
   IF (B3TSWX9 = 95.000 OR B3TSWX9 = 98.000 OR B3TSWX9 = 99.000) THEN B3TSWX9 = .;
   IF (B3TSWX10 = 95.000 OR B3TSWX10 = 98.000 OR B3TSWX10 = 99.000) THEN B3TSWX10 = .;
   IF (B3TSWX11 = 95.000 OR B3TSWX11 = 98.000 OR B3TSWX11 = 99.000) THEN B3TSWX11 = .;
   IF (B3TSWX12 = 95.000 OR B3TSWX12 = 98.000 OR B3TSWX12 = 99.000) THEN B3TSWX12 = .;
   IF (B3TSWX13 = 95.000 OR B3TSWX13 = 98.000 OR B3TSWX13 = 99.000) THEN B3TSWX13 = .;
   IF (B3TSWX14 = 95.000 OR B3TSWX14 = 98.000 OR B3TSWX14 = 99.000) THEN B3TSWX14 = .;
   IF (B3TSWX15 = 95.000 OR B3TSWX15 = 98.000 OR B3TSWX15 = 99.000) THEN B3TSWX15 = .;
   IF (B3TSWX16 = 95.000 OR B3TSWX16 = 98.000 OR B3TSWX16 = 99.000) THEN B3TSWX16 = .;
   IF (B3TSWX17 = 95.000 OR B3TSWX17 = 98.000 OR B3TSWX17 = 99.000) THEN B3TSWX17 = .;
   IF (B3TSWX18 = 95.000 OR B3TSWX18 = 98.000 OR B3TSWX18 = 99.000) THEN B3TSWX18 = .;
   IF (B3TSWX19 = 95.000 OR B3TSWX19 = 98.000 OR B3TSWX19 = 99.000) THEN B3TSWX19 = .;
   IF (B3TSWX20 = 95.000 OR B3TSWX20 = 98.000 OR B3TSWX20 = 99.000) THEN B3TSWX20 = .;
   IF (B3TSWX21 = 95.000 OR B3TSWX21 = 98.000 OR B3TSWX21 = 99.000) THEN B3TSWX21 = .;
   IF (B3TSWX22 = 95.000 OR B3TSWX22 = 98.000 OR B3TSWX22 = 99.000) THEN B3TSWX22 = .;
   IF (B3TSWX23 = 95.000 OR B3TSWX23 = 98.000 OR B3TSWX23 = 99.000) THEN B3TSWX23 = .;
   IF (B3TSWX24 = 95.000 OR B3TSWX24 = 98.000 OR B3TSWX24 = 99.000) THEN B3TSWX24 = .;
   IF (B3TSWX25 = 95.000 OR B3TSWX25 = 98.000 OR B3TSWX25 = 99.000) THEN B3TSWX25 = .;
   IF (B3TSWX26 = 95.000 OR B3TSWX26 = 98.000 OR B3TSWX26 = 99.000) THEN B3TSWX26 = .;
   IF (B3TSWX27 = 95.000 OR B3TSWX27 = 98.000 OR B3TSWX27 = 99.000) THEN B3TSWX27 = .;
   IF (B3TSWX28 = 95.000 OR B3TSWX28 = 98.000 OR B3TSWX28 = 99.000) THEN B3TSWX28 = .;
   IF (B3TSWX29 = 95.000 OR B3TSWX29 = 98.000 OR B3TSWX29 = 99.000) THEN B3TSWX29 = .;
   IF (B3TSWX30 = 95.000 OR B3TSWX30 = 98.000 OR B3TSWX30 = 99.000) THEN B3TSWX30 = .;
   IF (B3TSWX31 = 95.000 OR B3TSWX31 = 98.000 OR B3TSWX31 = 99.000) THEN B3TSWX31 = .;
   IF (B3TSWX32 = 95.000 OR B3TSWX32 = 98.000 OR B3TSWX32 = 99.000) THEN B3TSWX32 = .;
   IF (B3TSTN = 98) THEN B3TSTN = .;
   IF (B3TSVN = 98) THEN B3TSVN = .;
   IF (B3TSPN = 8.00) THEN B3TSPN = .;
   IF (B3TSMN = 98.000) THEN B3TSMN = .;
   IF (B3TSTR = 98) THEN B3TSTR = .;
   IF (B3TSVR = 98) THEN B3TSVR = .;
   IF (B3TSPR = 8.00) THEN B3TSPR = .;
   IF (B3TSMR = 98.000) THEN B3TSMR = .;
   IF (B3TSMB = 98.000) THEN B3TSMB = .;
   IF (B3TSTXNO = 98) THEN B3TSTXNO = .;
   IF (B3TSVXNO = 98) THEN B3TSVXNO = .;
   IF (B3TSPXNO = 8.00) THEN B3TSPXNO = .;
   IF (B3TSTXRO = 98) THEN B3TSTXRO = .;
   IF (B3TSVXRO = 98) THEN B3TSVXRO = .;
   IF (B3TSPXRO = 8.00) THEN B3TSPXRO = .;
   IF (B3TSTXBO = 98) THEN B3TSTXBO = .;
   IF (B3TSVXBO = 98) THEN B3TSVXBO = .;
   IF (B3TSPXBO = 8.00) THEN B3TSPXBO = .;
   IF (B3TSTXNS = 8) THEN B3TSTXNS = .;
   IF (B3TSVXNS = 8) THEN B3TSVXNS = .;
   IF (B3TSPXNS = 8.00) THEN B3TSPXNS = .;
   IF (B3TSTXRS = 8) THEN B3TSTXRS = .;
   IF (B3TSVXRS = 8) THEN B3TSVXRS = .;
   IF (B3TSPXRS = 8.00) THEN B3TSPXRS = .;
   IF (B3TSTXBS = 8) THEN B3TSTXBS = .;
   IF (B3TSVXBS = 8) THEN B3TSVXBS = .;
   IF (B3TSPXBS = 8.00) THEN B3TSPXBS = .;
   IF (B3TSTXBB = 98) THEN B3TSTXBB = .;
   IF (B3TSVXBB = 98) THEN B3TSVXBB = .;
   IF (B3TSPXBB = 8.00) THEN B3TSPXBB = .;
   IF (B3TSMXNO = 98.000) THEN B3TSMXNO = .;
   IF (B3TSMXRO = 98.000) THEN B3TSMXRO = .;
   IF (B3TSMXBO = 98.000) THEN B3TSMXBO = .;
   IF (B3TSMXNS = 98.000) THEN B3TSMXNS = .;
   IF (B3TSMXRS = 98.000) THEN B3TSMXRS = .;
   IF (B3TSMXBS = 98.000) THEN B3TSMXBS = .;
   IF (B3TSMXBB = 98.000) THEN B3TSMXBB = .;
   IF (B3TSCGBA = 98.000) THEN B3TSCGBA = .;
   IF (B3TSCGBR = 98.000) THEN B3TSCGBR = .;
   IF (B3TSCGNA = 98.000) THEN B3TSCGNA = .;
   IF (B3TSCGNR = 98.000) THEN B3TSCGNR = .;
   IF (B3TSCGRA = 98.000) THEN B3TSCGRA = .;
   IF (B3TSCGRR = 98.000) THEN B3TSCGRR = .;
   IF (B3TSCLBA = 98.000) THEN B3TSCLBA = .;
   IF (B3TSCLBR = 98.000) THEN B3TSCLBR = .;
   IF (B3TSCLNA = 98.000) THEN B3TSCLNA = .;
   IF (B3TSCLNR = 98.000) THEN B3TSCLNR = .;
   IF (B3TSCLRA = 98.000) THEN B3TSCLRA = .;
   IF (B3TSCLRR = 98.000) THEN B3TSCLRR = .;
*/


* SAS FORMAT STATEMENT;

/*
  FORMAT SAMPLMAJ samplmaj. B1PAGE_M2 b1page_f. B1PGENDER b1pgendf.
         B3TWLIFP b3twlifp. B3TWLI1 b3twli1f. B3TWLI2 b3twli2f.
         B3TWLI3 b3twli3f. B3TWLI4 b3twli4f. B3TWLI5 b3twli5f.
         B3TWLI6 b3twli6f. B3TWLI7 b3twli7f. B3TWLI8 b3twli8f.
         B3TWLI9 b3twli9f. B3TWLI10 b3twli0f. B3TWLI11 b3twl10f.
         B3TWLI12 b3twl11f. B3TWLI13 b3twl12f. B3TWLI14 b3twl13f.
         B3TWLI15 b3twl14f. B3TWLI16 b3twl15f. B3TWLI17 b3twl16f.
         B3TWLI18 b3twl17f. B3TWLI19 b3twl18f. B3TWLI20 b3twl19f.
         B3TWLI21 b3twl20f. B3TWLI22 b3twl21f. B3TWLI23 b3twl22f.
         B3TWLI24 b3twl23f. B3TWLI25 b3twl24f. B3TWLI26 b3twl25f.
         B3TWLITU b3twlitu. B3TWLITR b3twlitr. B3TWLITI b3twliti.
         B3TDBFP b3tdbfp. B3TDBS b3tdbs. B3TCTFFP b3tctffp.
         B3TCTFLU b3tctflu. B3TCTFLR b3tctflr. B3TCTFLI b3tctfli.
         B3TNSFP b3tnsfp. B3TNS1 b3tns1ff. B3TNS2 b3tns2ff.
         B3TNS3 b3tns3ff. B3TNS4 b3tns4ff. B3TNS5 b3tns5ff.
         B3TNS1C b3tns1c. B3TNS2C b3tns2c. B3TNS3C b3tns3c.
         B3TNS4C b3tns4c. B3TNS5C b3tns5c. B3TNSTOT b3tnstot.
         B3TBKFP b3tbkfp. B3TBKCT b3tbkct. B3TBKERR b3tbkerr.
         B3TBKTOT b3tbktot. B3TWLDFP b3twldfp. B3TWLD1 b3twld1f.
         B3TWLD2 b3twld2f. B3TWLD3 b3twld3f. B3TWLD4 b3twld4f.
         B3TWLD5 b3twld5f. B3TWLD6 b3twld6f. B3TWLD7 b3twld7f.
         B3TWLD8 b3twld8f. B3TWLD9 b3twld9f. B3TWLD10 b3twld0f.
         B3TWLD11 b3twl26f. B3TWLD12 b3twl27f. B3TWLD13 b3twl28f.
         B3TWLD14 b3twl29f. B3TWLD15 b3twl30f. B3TWLD16 b3twl31f.
         B3TWLD17 b3twl32f. B3TWLD18 b3twl33f. B3TWLD19 b3twl34f.
         B3TWLD20 b3twl35f. B3TWLD21 b3twl36f. B3TWLD22 b3twl37f.
         B3TWLD23 b3twl38f. B3TWLD24 b3twl39f. B3TWLD25 b3twl40f.
         B3TWLD26 b3twl41f. B3TWLDTU b3twldtu. B3TWLDTR b3twldtr.
         B3TWLDTI b3twldti. B3TWLF b3twlf. B3TCOMPZ2 b3tcompf.
         B3TEMZ2 b3temz2f. B3TEFZ2 b3tefz2f. B3TCOMPZ3 b3tcom0f.
         B3TEMZ3 b3temz3f. B3TEFZ3 b3tefz3f. B3TSWN1 b3tswn1f.
         B3TSWN2 b3tswn2f. B3TSWN3 b3tswn3f. B3TSWN4 b3tswn4f.
         B3TSWN5 b3tswn5f. B3TSWN6 b3tswn6f. B3TSWN7 b3tswn7f.
         B3TSWN8 b3tswn8f. B3TSWN9 b3tswn9f. B3TSWN10 b3tswn0f.
         B3TSWN11 b3tsw10f. B3TSWN12 b3tsw11f. B3TSWN13 b3tsw12f.
         B3TSWN14 b3tsw13f. B3TSWN15 b3tsw14f. B3TSWN16 b3tsw15f.
         B3TSWN17 b3tsw16f. B3TSWN18 b3tsw17f. B3TSWN19 b3tsw18f.
         B3TSWN20 b3tsw19f. B3TSWR1 b3tswr1f. B3TSWR2 b3tswr2f.
         B3TSWR3 b3tswr3f. B3TSWR4 b3tswr4f. B3TSWR5 b3tswr5f.
         B3TSWR6 b3tswr6f. B3TSWR7 b3tswr7f. B3TSWR8 b3tswr8f.
         B3TSWR9 b3tswr9f. B3TSWR10 b3tswr0f. B3TSWR11 b3tsw20f.
         B3TSWR12 b3tsw21f. B3TSWR13 b3tsw22f. B3TSWR14 b3tsw23f.
         B3TSWR15 b3tsw24f. B3TSWR16 b3tsw25f. B3TSWR17 b3tsw26f.
         B3TSWR18 b3tsw27f. B3TSWR19 b3tsw28f. B3TSWR20 b3tsw29f.
         B3TSWX1 b3tswx1f. B3TSWX2 b3tswx2f. B3TSWX3 b3tswx3f.
         B3TSWX4 b3tswx4f. B3TSWX5 b3tswx5f. B3TSWX6 b3tswx6f.
         B3TSWX7 b3tswx7f. B3TSWX8 b3tswx8f. B3TSWX9 b3tswx9f.
         B3TSWX10 b3tswx0f. B3TSWX11 b3tsw30f. B3TSWX12 b3tsw31f.
         B3TSWX13 b3tsw32f. B3TSWX14 b3tsw33f. B3TSWX15 b3tsw34f.
         B3TSWX16 b3tsw35f. B3TSWX17 b3tsw36f. B3TSWX18 b3tsw37f.
         B3TSWX19 b3tsw38f. B3TSWX20 b3tsw39f. B3TSWX21 b3tsw40f.
         B3TSWX22 b3tsw41f. B3TSWX23 b3tsw42f. B3TSWX24 b3tsw43f.
         B3TSWX25 b3tsw44f. B3TSWX26 b3tsw45f. B3TSWX27 b3tsw46f.
         B3TSWX28 b3tsw47f. B3TSWX29 b3tsw48f. B3TSWX30 b3tsw49f.
         B3TSWX31 b3tsw50f. B3TSWX32 b3tsw51f. B3TSTN b3tstn.
         B3TSVN b3tsvn. B3TSPN b3tspn. B3TSMN b3tsmn.
         B3TSTR b3tstr. B3TSVR b3tsvr. B3TSPR b3tspr.
         B3TSMR b3tsmr. B3TSMB b3tsmb. B3TSTXNO b3tstxno.
         B3TSVXNO b3tsvxno. B3TSPXNO b3tspxno. B3TSTXRO b3tstxro.
         B3TSVXRO b3tsvxro. B3TSPXRO b3tspxro. B3TSTXBO b3tstxbo.
         B3TSVXBO b3tsvxbo. B3TSPXBO b3tspxbo. B3TSTXNS b3tstxns.
         B3TSVXNS b3tsvxns. B3TSPXNS b3tspxns. B3TSTXRS b3tstxrs.
         B3TSVXRS b3tsvxrs. B3TSPXRS b3tspxrs. B3TSTXBS b3tstxbs.
         B3TSVXBS b3tsvxbs. B3TSPXBS b3tspxbs. B3TSTXBB b3tstxbb.
         B3TSVXBB b3tsvxbb. B3TSPXBB b3tspxbb. B3TSMXNO b3tsmxno.
         B3TSMXRO b3tsmxro. B3TSMXBO b3tsmxbo. B3TSMXNS b3tsmxns.
         B3TSMXRS b3tsmxrs. B3TSMXBS b3tsmxbs. B3TSMXBB b3tsmxbb.
         B3TSCGBA b3tscgba. B3TSCGBR b3tscgbr. B3TSCGNA b3tscgna.
         B3TSCGNR b3tscgnr. B3TSCGRA b3tscgra. B3TSCGRR b3tscgrr.
         B3TSCLBA b3tsclba. B3TSCLBR b3tsclbr. B3TSCLNA b3tsclna.
         B3TSCLNR b3tsclnr. B3TSCLRA b3tsclra. B3TSCLRR b3tsclrr.
         B3TSFV b3tsfv. B3TSFC b3tsfc.  ;
*/

RUN ;
