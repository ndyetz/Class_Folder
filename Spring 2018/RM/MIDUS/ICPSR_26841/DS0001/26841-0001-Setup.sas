/*-------------------------------------------------------------------------
 |                                                                         
 |                    SAS SETUP FILE FOR ICPSR 26841
 |      NATIONAL SURVEY OF MIDLIFE IN THE UNITED STATES (MIDUS II):
 |                    DAILY STRESS PROJECT, 2004-2009
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
 | "c:\temp\26841-0001-data.txt").
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
  VALUE samplmaj  1='(1) Main RDD' 2='(2) Sibling' 3='(3) Twin' 4='(4) City oversample'
                  13='(13) Milwaukee' 14='(14) Boston New' ;
  VALUE b1page_f  98='(98) REFUSED' 99='(99) INAPP (NO M2 PARTICIPATION)' ;
  VALUE b1pgendf  1='(1) Male' 2='(2) Female' 8='(8) Refused/Unknown' ;
  VALUE b2dday    1='(1) DAY 1' 2='(2) DAY 2' 3='(3) DAY 3' 4='(4) DAY 4' 5='(5) DAY 5' 6='(6) DAY 6'
                  7='(7) DAY 7' 8='(8) DAY 8' ;
  VALUE b2dmiss   1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2ddayt   1='(1) DAYTIME' 5='(5) EVENING' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dweekd  1='(1) MONDAY' 2='(2) TUESDAY' 3='(3) WEDNESDAY' 4='(4) THURSDAY'
                  5='(5) FRIDAY' 6='(6) SATURDAY' 7='(7) SUNDAY' ;
  VALUE b2dwakef  97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2dwak0f  97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2dwak1f  1='(1) AM' 5='(5) PM' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2daw1ch  97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2daw1cm  97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2da1h    97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2da1m    97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2da2h    97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2da2m    97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2da3h    97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2da3m    97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2da3ahf  97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2da3amf  97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2da3aap  1='(1) AM' 5='(5) PM' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da3bhf  97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2da3bmf  97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2da3bap  1='(1) AM' 5='(5) PM' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da4h    97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2da4m    97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2daw4h   97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2daw4m   97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2da4ah   97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2da4am   97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2daw5ah  97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2daw5am  97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2daw5aa  1='(1) AM' 5='(5) PM' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da9fff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da9ah   97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2da9am   97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2da10ff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da10af  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da100f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da101f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da102f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da103f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da104f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da105f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da106f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da107f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da108f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da109f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da110f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da111f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da112f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da113f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da114f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da115f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da116f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da117f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da118f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da119f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da120f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da121f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da122f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da123f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da10bh  97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2da10bm  97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2da11ff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da11af  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da124f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da125f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da126f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da127f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da128f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da129f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da130f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da131f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da132f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da133f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da134f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da135f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da136f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da137f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da138f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da139f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da140f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da141f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da142f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da143f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da144f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da145f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da146f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da147f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da11bh  97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2da11bm  97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2da12ff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da12af  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da148f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da149f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da150f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da151f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da152f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da153f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da154f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da155f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da156f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da157f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da158f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da159f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da160f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da161f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da162f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da163f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da164f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da165f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da166f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da167f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da168f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da169f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da170f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da12bh  97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2da12bm  97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2da13ff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da13af  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da171f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da172f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da173f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da174f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da175f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da176f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da177f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da178f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da179f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da180f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da181f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da182f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da183f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da184f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da185f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da186f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da187f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da188f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da189f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da190f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da191f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da192f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da193f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da194f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2da13bh  97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2da13bm  97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2dac1ff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dac2df  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dac20f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dac21f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dac22f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dac23f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dac24f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dac25f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dac26f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dac27f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dac21a  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dac21b  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dac21c  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dac21d  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dac21e  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dac28f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dac21g  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dac21h  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dac21i  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dac21j  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dac21k  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dac21l  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dac21m  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dac21n  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dac21o  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dac3ff  1='(1) EMOTIONAL' 2='(2) PHYSICAL' 3='(3) COMBINATION' 4='(4) OTHER'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2dac4h   97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2dac4m   97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2db1a    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2db1a2f  1='(1) VERY MILD' 10='(10) VERY SEVERE' 97='(97) DON''T KNOW'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2db1b    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2db1b2f  1='(1) VERY MILD' 10='(10) VERY SEVERE' 97='(97) DON''T KNOW'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2db1c    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2db1c2f  1='(1) VERY MILD' 10='(10) VERY SEVERE' 97='(97) DON''T KNOW'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2db1d    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2db1d2f  1='(1) VERY MILD' 10='(10) VERY SEVERE' 97='(97) DON''T KNOW'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2db1e    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2db1e2f  1='(1) VERY MILD' 10='(10) VERY SEVERE' 97='(97) DON''T KNOW'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2db1f    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2db1f2f  1='(1) VERY MILD' 10='(10) VERY SEVERE' 97='(97) DON''T KNOW'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2db1g    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2db1g2f  1='(1) VERY MILD' 10='(10) VERY SEVERE' 97='(97) DON''T KNOW'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2db1h    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2db1h2f  1='(1) VERY MILD' 10='(10) VERY SEVERE' 97='(97) DON''T KNOW'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2db1i    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2db1i2f  1='(1) VERY MILD' 10='(10) VERY SEVERE' 97='(97) DON''T KNOW'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2db1j    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2db1j2f  1='(1) VERY MILD' 10='(10) VERY SEVERE' 97='(97) DON''T KNOW'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2db1k    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2db1k2f  1='(1) VERY MILD' 10='(10) VERY SEVERE' 97='(97) DON''T KNOW'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2db1l    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2db1l2f  1='(1) VERY MILD' 10='(10) VERY SEVERE' 97='(97) DON''T KNOW'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2db1la   1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2db1laf  1='(1) VERY MILD' 10='(10) VERY SEVERE' 97='(97) DON''T KNOW'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2db1m    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2db1m2f  1='(1) VERY MILD' 10='(10) VERY SEVERE' 97='(97) DON''T KNOW'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2db1n    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2db1n2f  1='(1) VERY MILD' 10='(10) VERY SEVERE' 97='(97) DON''T KNOW'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2db1o    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2db1o2f  1='(1) VERY MILD' 10='(10) VERY SEVERE' 97='(97) DON''T KNOW'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2db1p    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2db1p2f  1='(1) VERY MILD' 10='(10) VERY SEVERE' 97='(97) DON''T KNOW'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2db1q    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2db1q2f  1='(1) VERY MILD' 10='(10) VERY SEVERE' 97='(97) DON''T KNOW'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2db1r    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2db1r2f  1='(1) VERY MILD' 10='(10) VERY SEVERE' 97='(97) DON''T KNOW'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2db1s    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2db1s2f  1='(1) VERY MILD' 10='(10) VERY SEVERE' 97='(97) DON''T KNOW'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2db1t    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2db1t2f  1='(1) VERY MILD' 10='(10) VERY SEVERE' 97='(97) DON''T KNOW'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2db1u    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2db1u2f  1='(1) VERY MILD' 10='(10) VERY SEVERE' 97='(97) DON''T KNOW'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2db1v    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2db1v2f  1='(1) VERY MILD' 10='(10) VERY SEVERE' 97='(97) DON''T KNOW'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2db1w    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2db1w2f  1='(1) VERY MILD' 10='(10) VERY SEVERE' 97='(97) DON''T KNOW'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2db1x    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2db1x2f  1='(1) VERY MILD' 10='(10) VERY SEVERE' 97='(97) DON''T KNOW'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2db1y    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2db1y2f  1='(1) VERY MILD' 10='(10) VERY SEVERE' 97='(97) DON''T KNOW'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2db1z    1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2db1z2f  1='(1) VERY MILD' 10='(10) VERY SEVERE' 97='(97) DON''T KNOW'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2db1leg  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2db1lef  1='(1) VERY MILD' 10='(10) VERY SEVERE' 97='(97) DON''T KNOW'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2db2fff  997='(997) DON''T KNOW' 998='(998) REFUSED/MISSING' 999='(999) INAPPLICABLE' ;
  VALUE b2db3fff  997='(997) DON''T KNOW' 998='(998) REFUSED/MISSING' 999='(999) INAPPLICABLE' ;
  VALUE b2dc1fff  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dc2fff  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dc3fff  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dc4fff  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dc5fff  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dc6fff  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dc7fff  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dc8fff  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dc9fff  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dc10ff  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dc11ff  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dc12ff  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dc13ff  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dc14ff  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dc15ff  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dc16ff  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dc17ff  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dc18ff  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dc19ff  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dc20ff  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dc21ff  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dc22ff  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dc23ff  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dc24ff  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dc25ff  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dc26ff  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dc27ff  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dd1fff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dd1a    0='(0) DID NOT DO ANY WORK' 10='(10) DID ALL WORK' 97='(97) DON''T KNOW'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2dd1b    1='(1) PHYSICAL' 2='(2) EMOTIONAL' 3='(3) ALCOHOL' 4='(4) COMBINATION'
                  5='(5) OTHER' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dd2fff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dd2a    1='(1) PHYSICAL' 2='(2) EMOTIONAL' 3='(3) ALCOHOL' 4='(4) COMBINATION'
                  5='(5) OTHER' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dd3fff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dd3a    1='(1) PHYSICAL' 2='(2) EMOTIONAL' 3='(3) ALCOHOL' 4='(4) COMBINATION'
                  5='(5) OTHER' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dd4fff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dd4a    1='(1) SPOUSE OR PARTNER (INCLUDESS EX-)'
                  2='(2) CHILD OR GRANDCHILD (INCLUDES STEP-)'
                  3='(3) PARENT (INCLUDESS STEP-)' 4='(4) SIBLING (INCLUDES STEP-)'
                  5='(5) OTHER RELATIVE (INCLUDES IN-LAWS)' 6='(6) FRIEND'
                  7='(7) NEIGHBOR' 8='(8) COWORKER OR FELLOW STUDENT'
                  9='(9) BOSS OR TEACHER' 10='(10) EMPLOYEE OR SUPERVISEE'
                  11='(11) OTHER (SPECIFY)' 12='(12) STRANGER'
                  13='(13) RELIGIOUS GROUP MEMBER (INCLUDING MINISTER)'
                  14='(14) SELF-HELP GROUP (AA, THERAPIST, COUNSELOR)'
                  15='(15) CLIENT/ CUSTOMER/ PATIENT' 16='(16) GROUPS'
                  17='(17) NO ONE ELSE INVOLVED' 20='(20) LANDLORD/REALTOR'
                  21='(21) FAMILY (GENERAL)' 22='(22) PETS' 23='(23) HEALTH PROFESSIONALS'
                  24='(24) HOME RELATED PEOPLE/COMPANIES' 97='(97) DON''T KNOW'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2df1fff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df1a    1='(1) SPOUSE OR PARTNER (INCLUDESS EX-)'
                  2='(2) CHILD OR GRANDCHILD (INCLUDES STEP-)'
                  3='(3) PARENT (INCLUDESS STEP-)' 4='(4) SIBLING (INCLUDES STEP-)'
                  5='(5) OTHER RELATIVE (INCLUDES IN-LAWS)' 6='(6) FRIEND'
                  7='(7) NEIGHBOR' 8='(8) COWORKER OR FELLOW STUDENT'
                  9='(9) BOSS OR TEACHER' 10='(10) EMPLOYEE OR SUPERVISEE'
                  11='(11) OTHER (SPECIFY)' 12='(12) STRANGER'
                  13='(13) RELIGIOUS GROUP MEMBER (INCLUDING MINISTER)'
                  14='(14) SELF-HELP GROUP (AA, THERAPIST, COUNSELOR)'
                  15='(15) CLIENT/ CUSTOMER/ PATIENT' 16='(16) GROUPS'
                  20='(20) LANDLORD/REALTOR' 21='(21) FAMILY (GENERAL)' 22='(22) PETS'
                  23='(23) HEALTH PROFESSIONALS'
                  24='(24) HOME RELATED PEOPLE/COMPANIES' 97='(97) DON''T KNOW'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2df1a1f  1='(1) YESTERDAY' 5='(5) TODAY' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df1a2h  97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2df1a2m  97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2df1a2a  1='(1) AM' 5='(5) PM' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df1c    0='(0) NOT AT ALL' 1='(1) NOT VERY' 2='(2) SOMEWHAT' 3='(3) VERY'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df1wcf  0='(0) NOT AT ALL' 1='(1) NOT VERY' 2='(2) SOMEWHAT' 3='(3) VERY'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df1w0f  0='(0) NOT AT ALL' 1='(1) NOT VERY' 2='(2) SOMEWHAT' 3='(3) VERY'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df1w1f  0='(0) NOT AT ALL' 1='(1) NOT VERY' 2='(2) SOMEWHAT' 3='(3) VERY'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df1w2f  0='(0) NOT AT ALL' 1='(1) NOT VERY' 2='(2) SOMEWHAT' 3='(3) VERY'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df1w3f  0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df1w4f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df1d    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df1e    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df1f    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df1g    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df1h    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df1i    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df1j    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df2fff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df2a    1='(1) SPOUSE OR PARTNER (INCLUDESS EX-)'
                  2='(2) CHILD OR GRANDCHILD (INCLUDES STEP-)'
                  3='(3) PARENT (INCLUDESS STEP-)' 4='(4) SIBLING (INCLUDES STEP-)'
                  5='(5) OTHER RELATIVE (INCLUDES IN-LAWS)' 6='(6) FRIEND'
                  7='(7) NEIGHBOR' 8='(8) COWORKER OR FELLOW STUDENT'
                  9='(9) BOSS OR TEACHER' 10='(10) EMPLOYEE OR SUPERVISEE'
                  11='(11) OTHER (SPECIFY)' 12='(12) STRANGER'
                  13='(13) RELIGIOUS GROUP MEMBER (INCLUDING MINISTER)'
                  14='(14) SELF-HELP GROUP (AA, THERAPIST, COUNSELOR)'
                  15='(15) CLIENT/ CUSTOMER/ PATIENT' 16='(16) GROUPS'
                  20='(20) LANDLORD/REALTOR' 21='(21) FAMILY (GENERAL)' 22='(22) PETS'
                  23='(23) HEALTH PROFESSIONALS'
                  24='(24) HOME RELATED PEOPLE/COMPANIES'
                  25='(25) NO ONE ELSE INVOLVED' 97='(97) DON''T KNOW'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2df2a1f  1='(1) YESTERDAY' 5='(5) TODAY' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df2a2h  97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2df2a2m  97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2df2a2a  1='(1) AM' 5='(5) PM' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df2c    0='(0) NOT AT ALL' 1='(1) NOT VERY' 2='(2) SOMEWHAT' 3='(3) VERY'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df2wcf  0='(0) NOT AT ALL' 1='(1) NOT VERY' 2='(2) SOMEWHAT' 3='(3) VERY'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df2w0f  0='(0) NOT AT ALL' 1='(1) NOT VERY' 2='(2) SOMEWHAT' 3='(3) VERY'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df2w1f  0='(0) NOT AT ALL' 1='(1) NOT VERY' 2='(2) SOMEWHAT' 3='(3) VERY'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df2w2f  0='(0) NOT AT ALL' 1='(1) NOT VERY' 2='(2) SOMEWHAT' 3='(3) VERY'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df2w3f  0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df2w4f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df2d    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df2e    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df2f    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df2g    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df2h    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df2i    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df2j    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df3fff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df3a1f  1='(1) YESTERDAY' 5='(5) TODAY' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df3a2h  97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2df3a2m  97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2df3a2a  1='(1) AM' 5='(5) PM' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df3b    0='(0) NOT AT ALL' 1='(1) NOT VERY' 2='(2) SOMEWHAT' 3='(3) VERY'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df3wbf  0='(0) NOT AT ALL' 1='(1) NOT VERY' 2='(2) SOMEWHAT' 3='(3) VERY'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df3w0f  0='(0) NOT AT ALL' 1='(1) NOT VERY' 2='(2) SOMEWHAT' 3='(3) VERY'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df3w1f  0='(0) NOT AT ALL' 1='(1) NOT VERY' 2='(2) SOMEWHAT' 3='(3) VERY'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df3w2f  0='(0) NOT AT ALL' 1='(1) NOT VERY' 2='(2) SOMEWHAT' 3='(3) VERY'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df3w3f  0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df3w4f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df3c    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df3d    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df3e    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df3f    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df3g    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df3h    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df3i    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df4fff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df4a1f  1='(1) YESTERDAY' 5='(5) TODAY' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df4a2h  97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2df4a2m  97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2df4a2a  1='(1) AM' 5='(5) PM' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df4b    0='(0) NOT AT ALL' 1='(1) NOT VERY' 2='(2) SOMEWHAT' 3='(3) VERY'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df4wbf  0='(0) NOT AT ALL' 1='(1) NOT VERY' 2='(2) SOMEWHAT' 3='(3) VERY'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df4w0f  0='(0) NOT AT ALL' 1='(1) NOT VERY' 2='(2) SOMEWHAT' 3='(3) VERY'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df4w1f  0='(0) NOT AT ALL' 1='(1) NOT VERY' 2='(2) SOMEWHAT' 3='(3) VERY'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df4w2f  0='(0) NOT AT ALL' 1='(1) NOT VERY' 2='(2) SOMEWHAT' 3='(3) VERY'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df4w3f  0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df4w4f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df4c    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df4d    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df4e    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df4f    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df4g    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df4h    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df4i    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df5fff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df5a_f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df5a0f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df5a1f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df5a2f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df5a3f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df5a4f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df5a5f  1='(1) YESTERDAY' 5='(5) TODAY' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df5a2h  97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2df5a2m  97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2df5a2a  1='(1) AM' 5='(5) PM' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df5c    0='(0) NOT AT ALL' 1='(1) NOT VERY' 2='(2) SOMEWHAT' 3='(3) VERY'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df5wcf  0='(0) NOT AT ALL' 1='(1) NOT VERY' 2='(2) SOMEWHAT' 3='(3) VERY'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df5w0f  0='(0) NOT AT ALL' 1='(1) NOT VERY' 2='(2) SOMEWHAT' 3='(3) VERY'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df5w1f  0='(0) NOT AT ALL' 1='(1) NOT VERY' 2='(2) SOMEWHAT' 3='(3) VERY'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df5w2f  0='(0) NOT AT ALL' 1='(1) NOT VERY' 2='(2) SOMEWHAT' 3='(3) VERY'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df5w3f  0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df5w4f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df5d    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df5e    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df5f    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df5g    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df5h    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df5i    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df5j    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df6fff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df6a    1='(1) SPOUSE OR PARTNER (INCLUDESS EX-)'
                  2='(2) CHILD OR GRANDCHILD (INCLUDES STEP-)'
                  3='(3) PARENT (INCLUDESS STEP-)' 4='(4) SIBLING (INCLUDES STEP-)'
                  5='(5) OTHER RELATIVE (INCLUDES IN-LAWS)' 6='(6) FRIEND'
                  7='(7) NEIGHBOR' 8='(8) COWORKER OR FELLOW STUDENT'
                  9='(9) BOSS OR TEACHER' 10='(10) EMPLOYEE OR SUPERVISEE'
                  11='(11) OTHER (SPECIFY)' 12='(12) STRANGER'
                  13='(13) RELIGIOUS GROUP MEMBER (INCLUDING MINISTER)'
                  14='(14) SELF-HELP GROUP (AA, THERAPIST, COUNSELOR)'
                  15='(15) CLIENT/ CUSTOMER/ PATIENT' 16='(16) GROUPS'
                  20='(20) LANDLORD/REALTOR' 21='(21) FAMILY (GENERAL)' 22='(22) PETS'
                  23='(23) HEALTH PROFESSIONALS'
                  24='(24) HOME RELATED PEOPLE/COMPANIES' 97='(97) DON''T KNOW'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2df6a1f  1='(1) YESTERDAY' 5='(5) TODAY' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df6a2h  97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2df6a2m  97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2df6a2a  1='(1) AM' 5='(5) PM' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df6c    0='(0) NOT AT ALL' 1='(1) NOT VERY' 2='(2) SOMEWHAT' 3='(3) VERY'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df6wcf  0='(0) NOT AT ALL' 1='(1) NOT VERY' 2='(2) SOMEWHAT' 3='(3) VERY'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df6w0f  0='(0) NOT AT ALL' 1='(1) NOT VERY' 2='(2) SOMEWHAT' 3='(3) VERY'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df6w1f  0='(0) NOT AT ALL' 1='(1) NOT VERY' 2='(2) SOMEWHAT' 3='(3) VERY'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df6w2f  0='(0) NOT AT ALL' 1='(1) NOT VERY' 2='(2) SOMEWHAT' 3='(3) VERY'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df6w3f  0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df6w4f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df6d    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df6e    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df6f    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df6g    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df6h    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df6i    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df6j    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df7fff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df7a    1='(1) YESTERDAY' 5='(5) TODAY' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df7a1h  97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2df7a1m  97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2df7a1a  1='(1) AM' 5='(5) PM' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df7b    0='(0) NOT AT ALL' 1='(1) NOT VERY' 2='(2) SOMEWHAT' 3='(3) VERY'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df7wbf  0='(0) NOT AT ALL' 1='(1) NOT VERY' 2='(2) SOMEWHAT' 3='(3) VERY'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df7w0f  0='(0) NOT AT ALL' 1='(1) NOT VERY' 2='(2) SOMEWHAT' 3='(3) VERY'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df7w1f  0='(0) NOT AT ALL' 1='(1) NOT VERY' 2='(2) SOMEWHAT' 3='(3) VERY'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df7w2f  0='(0) NOT AT ALL' 1='(1) NOT VERY' 2='(2) SOMEWHAT' 3='(3) VERY'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df7w3f  0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df7w4f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df7c    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df7d    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df7e    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df7f    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df7g    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df7h    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df7i    0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2df8fff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df8a    1='(1) SPOUSE OR PARTNER (INCLUDESS EX-)'
                  2='(2) CHILD OR GRANDCHILD (INCLUDES STEP-)'
                  3='(3) PARENT (INCLUDESS STEP-)' 4='(4) SIBLING (INCLUDES STEP-)'
                  5='(5) OTHER RELATIVE (INCLUDES IN-LAWS)' 6='(6) FRIEND'
                  7='(7) NEIGHBOR' 8='(8) COWORKER OR FELLOW STUDENT'
                  9='(9) BOSS OR TEACHER' 10='(10) EMPLOYEE OR SUPERVISEE'
                  11='(11) OTHER (SPECIFY)' 12='(12) STRANGER'
                  13='(13) RELIGIOUS GROUP MEMBER (INCLUDING MINISTER)'
                  14='(14) SELF-HELP GROUP (AA, THERAPIST, COUNSELOR)'
                  15='(15) CLIENT/ CUSTOMER/ PATIENT' 16='(16) GROUPS'
                  20='(20) LANDLORD/REALTOR' 21='(21) FAMILY (GENERAL)' 22='(22) PETS'
                  23='(23) HEALTH PROFESSIONALS'
                  24='(24) HOME RELATED PEOPLE/COMPANIES'
                  25='(25) NO ONE ELSE INVOLVED' 97='(97) DON''T KNOW'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2df8a1f  1='(1) YESTERDAY' 5='(5) TODAY' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df8a2h  97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2df8a2m  97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2df8a2a  1='(1) AM' 5='(5) PM' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df9fff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df9a    1='(1) SPOUSE OR PARTNER (INCLUDESS EX-)'
                  2='(2) CHILD OR GRANDCHILD (INCLUDES STEP-)'
                  3='(3) PARENT (INCLUDESS STEP-)' 4='(4) SIBLING (INCLUDES STEP-)'
                  5='(5) OTHER RELATIVE (INCLUDES IN-LAWS)' 6='(6) FRIEND'
                  7='(7) NEIGHBOR' 8='(8) COWORKER OR FELLOW STUDENT'
                  9='(9) BOSS OR TEACHER' 10='(10) EMPLOYEE OR SUPERVISEE'
                  11='(11) OTHER (SPECIFY)' 12='(12) STRANGER'
                  13='(13) RELIGIOUS GROUP MEMBER (INCLUDING MINISTER)'
                  14='(14) SELF-HELP GROUP (AA, THERAPIST, COUNSELOR)'
                  15='(15) CLIENT/ CUSTOMER/ PATIENT' 16='(16) GROUPS'
                  17='(17) NO ONE ELSE INVOLVED' 20='(20) LANDLORD/REALTOR'
                  21='(21) FAMILY (GENERAL)' 22='(22) PETS' 23='(23) HEALTH PROFESSIONALS'
                  24='(24) HOME RELATED PEOPLE/COMPANIES' 97='(97) DON''T KNOW'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2df9a1f  1='(1) YESTERDAY' 5='(5) TODAY' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df9h    97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2df9m    97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2df9ap   1='(1) AM' 5='(5) PM' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df10ff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df10a   1='(1) SPOUSE OR PARTNER (INCLUDESS EX-)'
                  2='(2) CHILD OR GRANDCHILD (INCLUDES STEP-)'
                  3='(3) PARENT (INCLUDESS STEP-)' 4='(4) SIBLING (INCLUDES STEP-)'
                  5='(5) OTHER RELATIVE (INCLUDES IN-LAWS)' 6='(6) FRIEND'
                  7='(7) NEIGHBOR' 8='(8) COWORKER OR FELLOW STUDENT'
                  9='(9) BOSS OR TEACHER' 10='(10) EMPLOYEE OR SUPERVISEE'
                  11='(11) OTHER (SPECIFY)' 12='(12) STRANGER'
                  13='(13) RELIGIOUS GROUP MEMBER (INCLUDING MINISTER)'
                  14='(14) SELF-HELP GROUP (AA, THERAPIST, COUNSELOR)'
                  15='(15) CLIENT/ CUSTOMER/ PATIENT' 16='(16) GROUPS'
                  17='(17) NO ONE ELSE INVOLVED' 20='(20) LANDLORD/REALTOR'
                  21='(21) FAMILY (GENERAL)' 22='(22) PETS' 23='(23) HEALTH PROFESSIONALS'
                  24='(24) HOME RELATED PEOPLE/COMPANIES' 97='(97) DON''T KNOW'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2df10af  1='(1) YESTERDAY' 5='(5) TODAY' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df10h   97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2df10m   97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2df10ap  1='(1) AM' 5='(5) PM' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df11ff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df11a   1='(1) SPOUSE OR PARTNER (INCLUDESS EX-)'
                  2='(2) CHILD OR GRANDCHILD (INCLUDES STEP-)'
                  3='(3) PARENT (INCLUDESS STEP-)' 4='(4) SIBLING (INCLUDES STEP-)'
                  5='(5) OTHER RELATIVE (INCLUDES IN-LAWS)' 6='(6) FRIEND'
                  7='(7) NEIGHBOR' 8='(8) COWORKER OR FELLOW STUDENT'
                  9='(9) BOSS OR TEACHER' 10='(10) EMPLOYEE OR SUPERVISEE'
                  11='(11) OTHER (SPECIFY)' 12='(12) STRANGER'
                  13='(13) RELIGIOUS GROUP MEMBER (INCLUDING MINISTER)'
                  14='(14) SELF-HELP GROUP (AA, THERAPIST, COUNSELOR)'
                  15='(15) CLIENT/ CUSTOMER/ PATIENT' 16='(16) GROUPS'
                  17='(17) NO ONE ELSE INVOLVED' 20='(20) LANDLORD/REALTOR'
                  21='(21) FAMILY (GENERAL)' 22='(22) PETS' 23='(23) HEALTH PROFESSIONALS'
                  24='(24) HOME RELATED PEOPLE/COMPANIES' 97='(97) DON''T KNOW'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2df11af  1='(1) YESTERDAY' 5='(5) TODAY' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df11h   97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2df11m   97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2df11ap  1='(1) AM' 5='(5) PM' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df12ff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df12a   1='(1) SPOUSE OR PARTNER (INCLUDESS EX-)'
                  2='(2) CHILD OR GRANDCHILD (INCLUDES STEP-)'
                  3='(3) PARENT (INCLUDESS STEP-)' 4='(4) SIBLING (INCLUDES STEP-)'
                  5='(5) OTHER RELATIVE (INCLUDES IN-LAWS)' 6='(6) FRIEND'
                  7='(7) NEIGHBOR' 8='(8) COWORKER OR FELLOW STUDENT'
                  9='(9) BOSS OR TEACHER' 10='(10) EMPLOYEE OR SUPERVISEE'
                  11='(11) OTHER (SPECIFY)' 12='(12) STRANGER'
                  13='(13) RELIGIOUS GROUP MEMBER (INCLUDING MINISTER)'
                  14='(14) SELF-HELP GROUP (AA, THERAPIST, COUNSELOR)'
                  15='(15) CLIENT/ CUSTOMER/ PATIENT' 16='(16) GROUPS'
                  17='(17) NO ONE ELSE INVOLVED' 20='(20) LANDLORD/REALTOR'
                  21='(21) FAMILY (GENERAL)' 22='(22) PETS' 23='(23) HEALTH PROFESSIONALS'
                  24='(24) HOME RELATED PEOPLE/COMPANIES' 97='(97) DON''T KNOW'
                  98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2df12af  1='(1) YESTERDAY' 5='(5) TODAY' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2df12h   97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2df12m   97='(97) DON''T KNOW' 98='(98) REFUSED/MISSING' 99='(99) INAPPLICABLE' ;
  VALUE b2df12ap  1='(1) AM' 5='(5) PM' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dh1_df  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dh2_df  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dh3_df  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dh4_df  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dh5_df  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dh6_df  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dh7_df  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dh8_df  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dh9_df  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dh10df  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dh11df  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dh12df  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dh13df  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dh14df  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2di1_df  1='(1) MORE OFTEN' 2='(2) LESS OFTEN' 3='(3) ABOUT THE SAME'
                  4='(4) NEVER HAVE ANY' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2di1adf  0='(0) A LITTLE' 1='(1) SOME' 2='(2) A LOT' 7='(7) DON''T KNOW'
                  8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2dj1_df  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dj2_df  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dj3_df  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dj4_df  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dj5_df  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dj6_df  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dj7_df  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dj8_df  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dj9_df  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dj10df  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dj11df  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dj12df  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dj13df  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dk1_df  1='(1) MORE OFTEN' 2='(2) LESS OFTEN' 3='(3) ABOUT THE SAME'
                  4='(4) NEVER HAVE ANY' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dk1adf  0='(0) A LITTLE' 1='(1) SOME' 2='(2) A LOT' 7='(7) DON''T KNOW'
                  8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2dk2_df  1='(1) MORE' 2='(2) FEWER' 3='(3) ABOUT THE SAME' 4='(4) NEVER HAVE ANY'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2dk2adf  0='(0) A LITTLE' 1='(1) SOME' 2='(2) A LOT' 7='(7) DON''T KNOW'
                  8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2dk3_df  1='(1) MORE' 2='(2) Less' 3='(3) ABOUT THE SAME' 4='(4) NEVER HAVE ANY'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2dk3adf  0='(0) A LITTLE' 1='(1) SOME' 2='(2) A LOT' 7='(7) DON''T KNOW'
                  8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2ds14a   1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2ds14b   1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2ds14c   1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2ds14d   1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2ds14e   1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2ds14f   1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2ds14g   1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2ds14h   1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2ds14i   1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2ds15_f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2ds150f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2ds151f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2ds152f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2ds153f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2ds154f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2ds155f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2ds156f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2ds157f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2ds158f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2ds159f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2ds110f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dmed1f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dmed2f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dmed3f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dmed4f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dmed5f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dmed6f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dmed7f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dmed8f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dmed9f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dmed0f  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING'
                  9='(9) INAPPLICABLE' ;
  VALUE b2dcort   1='(1) YES' 2='(2) NO' ;
  VALUE b2dcday   1='(1) YES' 2='(2) NO' 8='(8) REFUSED/MISSING' ;
  VALUE b2dsmart  1='(1) YES' 2='(2) NO' 8='(8) REFUSED/MISSING' ;
  VALUE b2dcwday  1='(1) YES' 2='(2) NO' 8='(8) REFUSED/MISSING' ;
  VALUE b2dcorw   999994='(999994) UNRELIABLE' 999995='(999995) NOT DONE' 999996='(999996) EMPTY'
                  999998='(999998) REFUSED/MISSING' ;
  VALUE b2dcora   999994='(999994) UNRELIABLE' 999995='(999995) NOT DONE' 999996='(999996) EMPTY'
                  999998='(999998) REFUSED/MISSING' ;
  VALUE b2dcorl   999994='(999994) UNRELIABLE' 999995='(999995) NOT DONE' 999996='(999996) EMPTY'
                  999998='(999998) REFUSED/MISSING' ;
  VALUE b2dcorb   999994='(999994) UNRELIABLE' 999995='(999995) NOT DONE' 999996='(999996) EMPTY'
                  999998='(999998) REFUSED/MISSING' ;
  VALUE b2dcorwt  98='(98) REFUSED/MISSING' ;
  VALUE b2dcorat  98='(98) REFUSED/MISSING' ;
  VALUE b2dcorlt  98='(98) REFUSED/MISSING' ;
  VALUE b2dcorbt  98='(98) REFUSED/MISSING' ;
  VALUE b2dtzone  1='(1) PACIFIC' 2='(2) MOUNTAIN' 3='(3) CENTRAL' 4='(4) EASTERN' 5='(5) HAWAII'
                  7='(7) DON''T KNOW' 8='(8) REFUSED/MISSING' 9='(9) INAPPLICABLE' ;
  VALUE b2dn_str  8='(8) REFUSED/MISSING' ;
  VALUE b2da_str  1='(1) YES' 2='(2) NO' 8='(8) REFUSED/MISSING' ;
  VALUE b2dssevs  98='(98) REFUSED/MISSING' ;
  VALUE b2dsseva  0='(0) NOT AT ALL' 1='(1) NOT VERY' 2='(2) SOMEWHAT' 3='(3) VERY'
                  8='(8) REFUSED/MISSING' ;
  VALUE b2dsnegs  98='(98) REFUSED/MISSING' ;
  VALUE b2dsnega  0='(0) NOT AT ALL' 1='(1) NOT VERY' 2='(2) SOMEWHAT' 3='(3) VERY'
                  8='(8) REFUSED/MISSING' ;
  VALUE b2dsapra  0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  8='(8) REFUSED/MISSING' ;
  VALUE b2dsaprb  0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  8='(8) REFUSED/MISSING' ;
  VALUE b2dsaprc  0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  8='(8) REFUSED/MISSING' ;
  VALUE b2dsaprd  0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  8='(8) REFUSED/MISSING' ;
  VALUE b2dsapre  0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  8='(8) REFUSED/MISSING' ;
  VALUE b2dsaprf  0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  8='(8) REFUSED/MISSING' ;
  VALUE b2dsaprg  0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  8='(8) REFUSED/MISSING' ;
  VALUE b2dscots  98='(98) REFUSED/MISSING' ;
  VALUE b2dscota  0='(0) NONE AT ALL' 1='(1) A LITTLE' 2='(2) SOME' 3='(3) A LOT'
                  8='(8) REFUSED/MISSING' ;
  VALUE b2dn_sym  98='(98) REFUSED/MISSING' ;
  VALUE b2da_sym  1='(1) YES' 2='(2) NO' 8='(8) REFUSED/MISSING' ;
  VALUE b2dsymav  1='(1) VERY MILD' 10='(10) VERY SEVERE' 98='(98) REFUSED/MISSING' ;
  VALUE b2dn_pos  8='(8) REFUSED/MISSING' ;
  VALUE b2da_pos  1='(1) YES' 2='(2) NO' 8='(8) REFUSED/MISSING' ;
  VALUE b2dposav  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 8='(8) REFUSED/MISSING' ;
  VALUE b2dnegav  0='(0) NONE OF THE TIME' 1='(1) A LITTLE OF THE TIME'
                  2='(2) SOME OF THE TIME' 3='(3) MOST OF THE TIME'
                  4='(4) ALL OF THE TIME' 8='(8) REFUSED/MISSING' ;
*/


* SAS DATA, INFILE, INPUT STATEMENTS;

DATA;
INFILE "data-filename" LRECL=774;
INPUT
       M2ID 1-5                M2FAMNUM 6-11
        SAMPLMAJ 12-19          B1PAGE_M2 20-24         B1PGENDER 25-32
        B2DDAY 33               B2DIMON 34-35           B2DIYEAR 36-39
        B2DMISS 40              B2DDAYT 41              B2DWEEKD 42
        B2DWAKE1 43-44          B2DWAKE2 45-46          B2DWAKE3 47
        B2DAW1CH 48-49          B2DAW1CM 50-51          B2DA1H 52-53
        B2DA1M 54-55            B2DA2H 56-57            B2DA2M 58-59
        B2DA3H 60-61            B2DA3M 62-63            B2DA3AH2 64-65
        B2DA3AM2 66-67          B2DA3AAP 68-69          B2DA3BH2 70-71
        B2DA3BM2 72-73          B2DA3BAP 74-75          B2DA4H 76-77
        B2DA4M 78-79            B2DAW4H 80-81           B2DAW4M 82-83
        B2DA4AH 84-85           B2DA4AM 86-87           B2DAW5AH 88-89
        B2DAW5AM 90-91          B2DAW5AA 92-93          B2DA9 94
        B2DA9AH 95-96           B2DA9AM 97-98           B2DA10 99
        B2DA10A1 100            B2DA10A2 101            B2DA10A3 102
        B2DA10A4 103            B2DA10A5 104            B2DA10A6 105
        B2DA10A7 106            B2DA10A8 107            B2DA10A9 108
        B2DA1010 109            B2DA1011 110            B2DA1012 111
        B2DA1013 112            B2DA1014 113            B2DA1015 114
        B2DA1016 115            B2DA1017 116            B2DA1018 117
        B2DA1019 118            B2DA1020 119            B2DA1021 120
        B2DA1022 121            B2DA1023 122            B2DA1024 123
        B2DA1025 124            B2DA10BH 125-126        B2DA10BM 127-128
        B2DA11 129              B2DA11A1 130            B2DA11A2 131
        B2DA11A3 132            B2DA11A4 133            B2DA11A5 134
        B2DA11A6 135            B2DA11A7 136            B2DA11A8 137
        B2DA11A9 138            B2DA1110 139            B2DA1111 140
        B2DA1112 141            B2DA1113 142            B2DA1114 143
        B2DA1115 144            B2DA1116 145            B2DA1117 146
        B2DA1118 147            B2DA1119 148            B2DA1120 149
        B2DA1121 150            B2DA1122 151            B2DA1123 152
        B2DA1124 153            B2DA1125 154            B2DA11BH 155-156
        B2DA11BM 157-158        B2DA12 159              B2DA12A1 160
        B2DA12A2 161            B2DA12A3 162            B2DA12A4 163
        B2DA12A5 164            B2DA12A6 165            B2DA12A7 166
        B2DA12A8 167            B2DA12A9 168            B2DA1210 169
        B2DA1211 170            B2DA1212 171            B2DA1213 172
        B2DA1214 173            B2DA1215 174            B2DA1216 175
        B2DA1217 176            B2DA1218 177            B2DA1220 178
        B2DA1221 179            B2DA1222 180            B2DA1223 181
        B2DA1224 182            B2DA1225 183            B2DA12BH 184-185
        B2DA12BM 186-187        B2DA13 188              B2DA13A1 189
        B2DA13A2 190            B2DA13A3 191            B2DA13A4 192
        B2DA13A5 193            B2DA13A6 194            B2DA13A7 195
        B2DA13A8 196            B2DA13A9 197            B2DA1310 198
        B2DA1311 199            B2DA1312 200            B2DA1313 201
        B2DA1314 202            B2DA1315 203            B2DA1316 204
        B2DA1317 205            B2DA1318 206            B2DA1319 207
        B2DA1320 208            B2DA1321 209            B2DA1322 210
        B2DA1323 211            B2DA1324 212            B2DA1325 213
        B2DA13BH 214-215        B2DA13BM 216-217        B2DAC1 218
        B2DAC2D1 219            B2DAC2D2 220            B2DAC2D3 221
        B2DAC2D4 222            B2DAC2D5 223            B2DAC2D6 224
        B2DAC2D7 225            B2DAC2D8 226            B2DAC2D9 227
        B2DAC21A 228            B2DAC21B 229            B2DAC21C 230
        B2DAC21D 231            B2DAC21E 232            B2DAC21F 233
        B2DAC21G 234            B2DAC21H 235            B2DAC21I 236
        B2DAC21J 237            B2DAC21K 238            B2DAC21L 239
        B2DAC21M 240            B2DAC21N 241            B2DAC21O 242
        B2DAC3 243              B2DAC4H 244-245         B2DAC4M 246-247
        B2DB1A 248              B2DB1A2 249-250         B2DB1B 251
        B2DB1B2 252-253         B2DB1C 254              B2DB1C2 255-256
        B2DB1D 257              B2DB1D2 258-259         B2DB1E 260
        B2DB1E2 261-262         B2DB1F 263              B2DB1F2 264-265
        B2DB1G 266              B2DB1G2 267-268         B2DB1H 269
        B2DB1H2 270-271         B2DB1I 272              B2DB1I2 273-274
        B2DB1J 275              B2DB1J2 276-277         B2DB1K 278
        B2DB1K2 279-280         B2DB1L 281              B2DB1L2 282-283
        B2DB1LA 284             B2DB1LA2 285-286        B2DB1M 287
        B2DB1M2 288-289         B2DB1N 290              B2DB1N2 291-292
        B2DB1O 293              B2DB1O2 294-295         B2DB1P 296
        B2DB1P2 297-298         B2DB1Q 299              B2DB1Q2 300-301
        B2DB1R 302              B2DB1R2 303-304         B2DB1S 305
        B2DB1S2 306-307         B2DB1T 308              B2DB1T2 309-310
        B2DB1U 311              B2DB1U2 312-313         B2DB1V 314
        B2DB1V2 315-316         B2DB1W 317              B2DB1W2 318-319
        B2DB1X 320              B2DB1X2 321-322         B2DB1Y 323
        B2DB1Y2 324-325         B2DB1Z 326              B2DB1Z2 327-328
        B2DB1LEG 329            B2DB1LE2 330-331        B2DB2 332-334
        B2DB3 335-337           B2DC1 338               B2DC2 339
        B2DC3 340               B2DC4 341               B2DC5 342
        B2DC6 343               B2DC7 344               B2DC8 345
        B2DC9 346               B2DC10 347              B2DC11 348
        B2DC12 349              B2DC13 350              B2DC14 351
        B2DC15 352              B2DC16 353              B2DC17 354
        B2DC18 355              B2DC19 356              B2DC20 357
        B2DC21 358              B2DC22 359              B2DC23 360
        B2DC24 361              B2DC25 362              B2DC26 363
        B2DC27 364              B2DD1 365               B2DD1A 366-367
        B2DD1B 368              B2DD2 369               B2DD2A 370
        B2DD3 371               B2DD3A 372              B2DD4 373
        B2DD4A 374-375          B2DF1 376               B2DF1A 377-378
        B2DF1A1 379             B2DF1A2H 380-381        B2DF1A2M 382-383
        B2DF1A2A 384            B2DF1C 385              B2DF1WC1 386
        B2DF1WC2 387            B2DF1WC3 388            B2DF1WC4 389
        B2DF1WC5 390            B2DF1WC6 391            B2DF1D 392
        B2DF1E 393              B2DF1F 394              B2DF1G 395
        B2DF1H 396              B2DF1I 397              B2DF1J 398
        B2DF2 399               B2DF2A 400-401          B2DF2A1 402
        B2DF2A2H 403-404        B2DF2A2M 405-406        B2DF2A2A 407
        B2DF2C 408              B2DF2WC1 409            B2DF2WC2 410
        B2DF2WC3 411            B2DF2WC4 412            B2DF2WC5 413
        B2DF2WC6 414            B2DF2D 415              B2DF2E 416
        B2DF2F 417              B2DF2G 418              B2DF2H 419
        B2DF2I 420              B2DF2J 421              B2DF3 422
        B2DF3A1 423             B2DF3A2H 424-425        B2DF3A2M 426-427
        B2DF3A2A 428            B2DF3B 429              B2DF3WB1 430
        B2DF3WB2 431            B2DF3WB3 432            B2DF3WB4 433
        B2DF3WB5 434            B2DF3WB6 435            B2DF3C 436
        B2DF3D 437              B2DF3E 438              B2DF3F 439
        B2DF3G 440              B2DF3H 441              B2DF3I 442
        B2DF4 443               B2DF4A1 444             B2DF4A2H 445-446
        B2DF4A2M 447-448        B2DF4A2A 449            B2DF4B 450
        B2DF4WB1 451            B2DF4WB2 452            B2DF4WB3 453
        B2DF4WB4 454            B2DF4WB5 455            B2DF4WB6 456
        B2DF4C 457              B2DF4D 458              B2DF4E 459
        B2DF4F 460              B2DF4G 461              B2DF4H 462
        B2DF4I 463              B2DF5 464               B2DF5A_1 465
        B2DF5A_2 466            B2DF5A_3 467            B2DF5A_4 468
        B2DF5A_5 469            B2DF5A_6 470            B2DF5A1 471
        B2DF5A2H 472-473        B2DF5A2M 474-475        B2DF5A2A 476
        B2DF5C 477              B2DF5WC1 478            B2DF5WC2 479
        B2DF5WC3 480            B2DF5WC4 481            B2DF5WC5 482
        B2DF5WC6 483            B2DF5D 484              B2DF5E 485
        B2DF5F 486              B2DF5G 487              B2DF5H 488
        B2DF5I 489              B2DF5J 490              B2DF6 491
        B2DF6A 492-493          B2DF6A1 494             B2DF6A2H 495-496
        B2DF6A2M 497-498        B2DF6A2A 499            B2DF6C 500
        B2DF6WC1 501            B2DF6WC2 502            B2DF6WC3 503
        B2DF6WC4 504            B2DF6WC5 505            B2DF6WC6 506
        B2DF6D 507              B2DF6E 508              B2DF6F 509
        B2DF6G 510              B2DF6H 511              B2DF6I 512
        B2DF6J 513              B2DF7 514               B2DF7A 515
        B2DF7A1H 516-517        B2DF7A1M 518-519        B2DF7A1A 520
        B2DF7B 521              B2DF7WB1 522            B2DF7WB2 523
        B2DF7WB3 524            B2DF7WB4 525            B2DF7WB5 526
        B2DF7WB6 527            B2DF7C 528              B2DF7D 529
        B2DF7E 530              B2DF7F 531              B2DF7G 532
        B2DF7H 533              B2DF7I 534              B2DF8 535
        B2DF8A 536-537          B2DF8A1 538             B2DF8A2H 539-540
        B2DF8A2M 541-542        B2DF8A2A 543            B2DF9 544
        B2DF9A 545-546          B2DF9A1 547             B2DF9H 548-549
        B2DF9M 550-551          B2DF9AP 552             B2DF10 553
        B2DF10A 554-555         B2DF10A1 556            B2DF10H 557-558
        B2DF10M 559-560         B2DF10AP 561            B2DF11 562
        B2DF11A 563-564         B2DF11A1 565            B2DF11H 566-567
        B2DF11M 568-569         B2DF11AP 570            B2DF12 571
        B2DF12A 572-573         B2DF12A1 574            B2DF12H 575-576
        B2DF12M 577-578         B2DF12AP 579            B2DH1_D8 580
        B2DH2_D8 581            B2DH3_D8 582            B2DH4_D8 583
        B2DH5_D8 584            B2DH6_D8 585            B2DH7_D8 586
        B2DH8_D8 587            B2DH9_D8 588            B2DH10D8 589
        B2DH11D8 590            B2DH12D8 591            B2DH13D8 592
        B2DH14D8 593            B2DI1_D8 594            B2DI1AD8 595
        B2DJ1_D8 596            B2DJ2_D8 597            B2DJ3_D8 598
        B2DJ4_D8 599            B2DJ5_D8 600            B2DJ6_D8 601
        B2DJ7_D8 602            B2DJ8_D8 603            B2DJ9_D8 604
        B2DJ10D8 605            B2DJ11D8 606            B2DJ12D8 607
        B2DJ13D8 608            B2DK1_D8 609            B2DK1AD8 610
        B2DK2_D8 611            B2DK2AD8 612            B2DK3_D8 613
        B2DK3AD8 614            B2DS14A 615             B2DS14B 616
        B2DS14C 617             B2DS14D 618             B2DS14E 619
        B2DS14F 620             B2DS14G 621             B2DS14H 622
        B2DS14I 623             B2DS15_1 624            B2DS15_2 625
        B2DS15_3 626            B2DS15_4 627            B2DS15_5 628
        B2DS15_6 629            B2DS15_7 630            B2DS15_8 631
        B2DS15_9 632            B2DS1510 633            B2DS1511 634
        B2DS1512 635            B2DMED1 636             B2DMED2 637
        B2DMED3 638             B2DMED4 639             B2DMED5 640
        B2DMED6 641             B2DMED7 642             B2DMED8 643
        B2DMED9 644             B2DMED10 645            B2DCORT 646
        B2DCDAY 647             B2DSMART 648            B2DCWDAY 649
        B2DCORW 650-663 .5      B2DCORA 664-677 .5      B2DCORL 678-691 .5
        B2DCORB 692-705 .5      B2DCORWT 706-709 .2     B2DCORAT 710-713 .2
        B2DCORLT 714-717 .2     B2DCORBT 718-721 .2     B2DTZONE 722
        B2DN_STR 723            B2DA_STR 724            B2DSSEVS 725-726
        B2DSSEVA 727-729 .2     B2DSNEGS 730-731        B2DSNEGA 732-734 .2
        B2DSAPRA 735-737 .2     B2DSAPRB 738-740 .2     B2DSAPRC 741-743 .2
        B2DSAPRD 744-746 .2     B2DSAPRE 747-749 .2     B2DSAPRF 750-752 .2
        B2DSAPRG 753-755 .2     B2DSCOTS 756-757        B2DSCOTA 758-760 .2
        B2DN_SYM 761-762        B2DA_SYM 763            B2DSYMAV 764-766 .2
        B2DN_POS 767            B2DA_POS 768            B2DPOSAV 769-771 .2
        B2DNEGAV 772-774 .2     ;


* SAS LABEL STATEMENT;

LABEL
   M2ID    = 'MIDUS 2 ID number'
   M2FAMNUM= 'MIDUS 2 Family number'
   SAMPLMAJ= 'Major sample identification (aka Sample)'
   B1PAGE_M2= 'Age determined by subtracting DOB_Final from b1ipidate'
   B1PGENDER= 'Gender'
   B2DDAY  = 'Interview day'
   B2DIMON = 'Interview date-month'
   B2DIYEAR= 'Interview date-year'
   B2DMISS = 'Missed phone interview'
   B2DDAYT = 'Interview during daytime or evening'
   B2DWEEKD= 'What day of the week?'
   B2DWAKE1= 'What time did you wake up today?H'
   B2DWAKE2= 'What time did you wake up today?M'
   B2DWAKE3= 'What time did you wake up today?A/P'
   B2DAW1CH= 'How much time did you spend sleeping?H'
   B2DAW1CM= 'How much time did you spend sleeping?M'
   B2DA1H  = 'How much time did you spend with child?H'
   B2DA1M  = 'How much time did you spend with child?M'
   B2DA2H  = 'How much time did you spend on chores?H'
   B2DA2M  = 'How much time did you spend on chores?M'
   B2DA3H  = 'How much time did you spend on work?H'
   B2DA3M  = 'How much time did you spend on work?M'
   B2DA3AH2= 'What time did you begin this work?H'
   B2DA3AM2= 'What time did you begin this work?M'
   B2DA3AAP= 'What time did you begin this work?A/P'
   B2DA3BH2= 'What time did you finish this work?H'
   B2DA3BM2= 'What time did you finish this work?M'
   B2DA3BAP= 'What time did you finish this work?A/P'
   B2DA4H  = 'How much time did you spend on leisure?H'
   B2DA4M  = 'How much time did you spend on leisure?M'
   B2DAW4H = 'How much time did you spend on TV?H'
   B2DAW4M = 'How much time did you spend on TV?M'
   B2DA4AH = 'How much time spent on phy activity?H'
   B2DA4AM = 'How much time spent on phy activity?M'
   B2DAW5AH= 'What time did you begin phy activity?H'
   B2DAW5AM= 'What time did you begin phy activity?M'
   B2DAW5AA= 'What time did you begin phy activity?AP'
   B2DA9   = 'Did you spend time on volunteer work?'
   B2DA9AH = 'How much time spent on volunteer work?H'
   B2DA9AM = 'How much time spent on volunteer work?M'
   B2DA10  = 'Did you spend time giving unpaid assist?'
   B2DA10A1= 'Who you gave unpaid assist? Spouse'
   B2DA10A2= 'Who you gave unpaid assist? Child'
   B2DA10A3= 'Who you gave unpaid assist? Parent'
   B2DA10A4= 'Who you gave unpaid assist? Sibling'
   B2DA10A5= 'Who you gave unpaid assist? Ot relative'
   B2DA10A6= 'Who you gave unpaid assist? Friend'
   B2DA10A7= 'Who you gave unpaid assist? Neighbor'
   B2DA10A8= 'Who you gave unpaid assist? Coworker'
   B2DA10A9= 'Who you gave unpaid assist? Boss'
   B2DA1010= 'Who you gave unpaid assist? Employee'
   B2DA1011= 'Who you gave unpaid assist? Other'
   B2DA1012= 'Who you gave unpaid assist? Stranger'
   B2DA1013= 'Who you gave unpaid assist? Relig grp'
   B2DA1014= 'Who you gave unpaid assist? Selfhelp gp'
   B2DA1015= 'Who you gave unpaid assist? Client'
   B2DA1016= 'Who you gave unpaid assist? Other Group'
   B2DA1017= 'Who you gave unpaid assist? Anyone else'
   B2DA1018= 'Who you gave unpaid assist? Don''t know'
   B2DA1019= 'Who you gave unpaid assist? Refused'
   B2DA1020= 'Who you gave unpaid assist? Landlord'
   B2DA1021= 'Who you gave unpaid assist? Family'
   B2DA1022= 'Who you gave unpaid assist? Pets'
   B2DA1023= 'Who you gave unpaid assist? Health prof'
   B2DA1024= 'Who you gave unpaid assist? Home related'
   B2DA1025= 'Who you gave unpaid assist? No one invol'
   B2DA10BH= 'How much time did you spend helping?H'
   B2DA10BM= 'How much time did you spend helping?M'
   B2DA11  = 'Did you receive any unpaid assistance?'
   B2DA11A1= 'Who gave you unpaid assist? Spouse'
   B2DA11A2= 'Who gave you unpaid assist? Child'
   B2DA11A3= 'Who gave you unpaid assist? Parent'
   B2DA11A4= 'Who gave you unpaid assist? Sibling'
   B2DA11A5= 'Who gave you unpaid assist? Ot relative'
   B2DA11A6= 'Who gave you unpaid assist? Friend'
   B2DA11A7= 'Who gave you unpaid assist? Neighbor'
   B2DA11A8= 'Who gave you unpaid assist? Coworker'
   B2DA11A9= 'Who gave you unpaid assist? Boss'
   B2DA1110= 'Who gave you unpaid assist? Employee'
   B2DA1111= 'Who gave you unpaid assist? Relig grp'
   B2DA1112= 'Who gave you unpaid assist? Government'
   B2DA1113= 'Who gave you unpaid assist? Nongov grp'
   B2DA1114= 'Who gave you unpaid assist? Other'
   B2DA1115= 'Who gave you unpaid assist? Stranger'
   B2DA1116= 'Who gave you unpaid assist? Client'
   B2DA1117= 'Who gave you unpaid assist? Anyone else'
   B2DA1118= 'Who gave you unpaid assist? Don''t know'
   B2DA1119= 'Who gave you unpaid assist? Refused'
   B2DA1120= 'Who gave you unpaid assist? Landlord'
   B2DA1121= 'Who gave you unpaid assist? Family'
   B2DA1122= 'Who gave you unpaid assist? Pets'
   B2DA1123= 'Who gave you unpaid assist? Health prof'
   B2DA1124= 'Who gave you unpaid assist? Home related'
   B2DA1125= 'Who gave you unpaid assist? No one invol'
   B2DA11BH= 'How much time received unpaid assist?H'
   B2DA11BM= 'How much time received unpaid assist?M'
   B2DA12  = 'Did you give emotional support?'
   B2DA12A1= 'Who you gave emotional sup? Spouse'
   B2DA12A2= 'Who you gave emotional sup? Child'
   B2DA12A3= 'Who you gave emotional sup? Parent'
   B2DA12A4= 'Who you gave emotional sup? Sibling'
   B2DA12A5= 'Who you gave emotional sup? Ot relative'
   B2DA12A6= 'Who you gave emotional sup? Friend'
   B2DA12A7= 'Who you gave emotional sup? Neighbor'
   B2DA12A8= 'Who you gave emotional sup? Coworker'
   B2DA12A9= 'Who you gave emotional sup? Boss'
   B2DA1210= 'Who you gave emotional sup? Employee'
   B2DA1211= 'Who you gave emotional sup? Other'
   B2DA1212= 'Who you gave emotional sup? Stranger'
   B2DA1213= 'Who you gave emotional sup? Relig grp'
   B2DA1214= 'Who you gave emotional sup? Selfhelp gp'
   B2DA1215= 'Who you gave emotional sup? Client'
   B2DA1216= 'Who you gave emotional sup? Anyone else'
   B2DA1217= 'Who you gave emotional sup? Don''t know'
   B2DA1218= 'Who you gave emotional sup? Refused'
   B2DA1220= 'Who you gave emotional sup? Landlord'
   B2DA1221= 'Who you gave emotional sup? Family'
   B2DA1222= 'Who you gave emotional sup? Pets'
   B2DA1223= 'Who you gave emotional sup? Health prof'
   B2DA1224= 'Who you gave emotional sup? Home related'
   B2DA1225= 'Who you gave emotional sup? No one invol'
   B2DA12BH= 'How much time you gave emotional sup?H'
   B2DA12BM= 'How much time you gave emotional sup?M'
   B2DA13  = 'Did you receive any emotional sup?'
   B2DA13A1= 'Who gave you emotional sup? Spouse'
   B2DA13A2= 'Who gave you emotional sup? Child'
   B2DA13A3= 'Who gave you emotional sup? Parent'
   B2DA13A4= 'Who gave you emotional sup? Sibling'
   B2DA13A5= 'Who gave you emotional sup? Ot relative'
   B2DA13A6= 'Who gave you emotional sup? Friend'
   B2DA13A7= 'Who gave you emotional sup? Neighbor'
   B2DA13A8= 'Who gave you emotional sup? Coworker'
   B2DA13A9= 'Who gave you emotional sup? Boss'
   B2DA1310= 'Who gave you emotional sup? Employee'
   B2DA1311= 'Who gave you emotional sup? Relig grp'
   B2DA1312= 'Who gave you emotional sup? Gov grp'
   B2DA1313= 'Who gave you emotional sup? Nongov grp'
   B2DA1314= 'Who gave you emotional sup? Other'
   B2DA1315= 'Who gave you emotional sup? Stranger'
   B2DA1316= 'Who gave you emotional sup? Client'
   B2DA1317= 'Who gave you emotional sup? Other group'
   B2DA1318= 'Who gave you emotional sup? Don''t know'
   B2DA1319= 'Who gave you emotional sup? Refused'
   B2DA1320= 'Who gave you emotional sup? Landlord'
   B2DA1321= 'Who gave you emotional sup? Family'
   B2DA1322= 'Who gave you emotional sup? Pets'
   B2DA1323= 'Who gave you emotional sup? Health prof'
   B2DA1324= 'Who gave you emotional sup? Home related'
   B2DA1325= 'Who gave you emotional sup? No one invol'
   B2DA13BH= 'How much time you received emotion sup?H'
   B2DA13BM= 'How much time you received emotion sup?M'
   B2DAC1  = 'Did you provide assist person/disable?'
   B2DAC2D1= 'Who you gave dis assistance? Spouse'
   B2DAC2D2= 'Who you gave dis assistance? Child'
   B2DAC2D3= 'Who you gave dis assistance? Parent'
   B2DAC2D4= 'Who you gave dis assistance? Sibling'
   B2DAC2D5= 'Who you gave dis assistance? Ot relative'
   B2DAC2D6= 'Who you gave dis assistance? Friend'
   B2DAC2D7= 'Who you gave dis assistance? Neighbor'
   B2DAC2D8= 'Who you gave dis assistance? Coworker'
   B2DAC2D9= 'Who you gave dis assistance? Boss'
   B2DAC21A= 'Who you gave dis assistance? Employee'
   B2DAC21B= 'Who you gave dis assistance? Other'
   B2DAC21C= 'Who you gave dis assistance? Stranger'
   B2DAC21D= 'Who you gave dis assistance? Relig grp'
   B2DAC21E= 'Who you gave dis assistance? Selfhelp gp'
   B2DAC21F= 'Who you gave dis assistance? Client'
   B2DAC21G= 'Who you gave dis assistance? Other group'
   B2DAC21H= 'Who you gave dis assistance? Anyone else'
   B2DAC21I= 'Who you gave dis assistance? Don''t know'
   B2DAC21J= 'Who you gave dis assistance? Refused'
   B2DAC21K= 'Who you gave dis assistance? Landlord'
   B2DAC21L= 'Who you gave dis assistance? Family'
   B2DAC21M= 'Who you gave dis assistance? Pets'
   B2DAC21N= 'Who you gave dis assistance? Health prof'
   B2DAC21O= 'Who you gave dis assistance? Home relate'
   B2DAC3  = 'How you describe their disability?'
   B2DAC4H = 'How much time provide dis assistance?H'
   B2DAC4M = 'How much time provide dis assistance?M'
   B2DB1A  = 'Experienced a headache?'
   B2DB1A2 = 'Severity of headache?'
   B2DB1B  = 'Experienced a backache?'
   B2DB1B2 = 'Severity of backache?'
   B2DB1C  = 'Experienced muscle soreness?'
   B2DB1C2 = 'Severity of muscle soreness?'
   B2DB1D  = 'Experienced fatigue?'
   B2DB1D2 = 'Severity of fatigue?'
   B2DB1E  = 'Experienced a joint pain?'
   B2DB1E2 = 'Severity of joint pain?'
   B2DB1F  = 'Experienced muscle weakness?'
   B2DB1F2 = 'Severity of muscle weakness?'
   B2DB1G  = 'Experienced a cough?'
   B2DB1G2 = 'Severity of cough?'
   B2DB1H  = 'Experienced sore throat?'
   B2DB1H2 = 'Severity of sore throat?'
   B2DB1I  = 'Experienced a fever?'
   B2DB1I2 = 'Severity of fever?'
   B2DB1J  = 'Experienced a chill?'
   B2DB1J2 = 'Severity of chill?'
   B2DB1K  = 'Experienced other cold and flu symptoms?'
   B2DB1K2 = 'Severity of other cold and flu symptoms?'
   B2DB1L  = 'Experienced nausea?'
   B2DB1L2 = 'Severity of nausea?'
   B2DB1LA = 'Experienced allergies?'
   B2DB1LA2= 'Severity of allergies?'
   B2DB1M  = 'Experienced diarrhea?'
   B2DB1M2 = 'Severity of diarrhea?'
   B2DB1N  = 'Experienced constipation?'
   B2DB1N2 = 'Severity of constipation?'
   B2DB1O  = 'Experienced poor appetite?'
   B2DB1O2 = 'Severity of poor appetite?'
   B2DB1P  = 'Experienced other stomach problems?'
   B2DB1P2 = 'Severity of other stomach problems?'
   B2DB1Q  = 'Experienced chest pain?'
   B2DB1Q2 = 'Severity of chest pain?'
   B2DB1R  = 'Experienced dizziness?'
   B2DB1R2 = 'Severity of dizziness?'
   B2DB1S  = 'Experienced shortness of breath?'
   B2DB1S2 = 'Severity of shortness of breath?'
   B2DB1T  = 'Experienced menstrual related symptoms?'
   B2DB1T2 = 'Severity of menstrual related symptoms?'
   B2DB1U  = 'Experienced hot flashes or flushes?'
   B2DB1U2 = 'Severity of hot flashes or flushes?'
   B2DB1V  = 'Experienced any other physical symptoms?'
   B2DB1V2 = 'Severity of any other physical symptoms?'
   B2DB1W  = 'Experienced skin related symptoms?'
   B2DB1W2 = 'Severity of skin related symptoms?'
   B2DB1X  = 'Experienced eye related symptoms?'
   B2DB1X2 = 'Severity of eye related symptoms?'
   B2DB1Y  = 'Experienced ear related symptoms?'
   B2DB1Y2 = 'Severity of ear related symptoms?'
   B2DB1Z  = 'Experienced teeth related symptoms?'
   B2DB1Z2 = 'Severity of teeth related symptoms?'
   B2DB1LEG= 'Experienced leg/foot related symptoms?'
   B2DB1LE2= 'Severity of leg/foot related symptoms?'
   B2DB2   = 'How many cigarettes did you smoke?'
   B2DB3   = 'How many drinks did you have?'
   B2DC1   = 'Did you feel restless or fidgety?'
   B2DC2   = 'Did you feel nervous?'
   B2DC3   = 'Did you feel worthless?'
   B2DC4   = 'Did you feel so sad nothing cheer up?'
   B2DC5   = 'Did you feel that everything effort?'
   B2DC6   = 'Did you feel hopeless?'
   B2DC7   = 'Did you feel in good spirits?'
   B2DC8   = 'Did you feel cheerful?'
   B2DC9   = 'Did you feel extremely happy?'
   B2DC10  = 'Did you feel calm and peaceful?'
   B2DC11  = 'Did you feel satisfied?'
   B2DC12  = 'Did you feel full of life?'
   B2DC13  = 'Did you feel lonely?'
   B2DC14  = 'Did you feel afraid?'
   B2DC15  = 'Did you feel jittery?'
   B2DC16  = 'Did you feel irritable?'
   B2DC17  = 'Did you feel ashamed?'
   B2DC18  = 'Did you feel upset?'
   B2DC19  = 'Did you feel angry?'
   B2DC20  = 'Did you feel frustrated?'
   B2DC21  = 'Did you feel close to others?'
   B2DC22  = 'Did you feel like you belong?'
   B2DC23  = 'Did you feel enthusiastic?'
   B2DC24  = 'Did you feel attentive?'
   B2DC25  = 'Did you feel proud?'
   B2DC26  = 'Did you feel active?'
   B2DC27  = 'Did you feel confident?'
   B2DD1   = 'Did you cut back on work today?'
   B2DD1A  = 'How much work did you get done?'
   B2DD1B  = 'Main reason for work cutback'
   B2DD2   = 'Did the quality of your work suffer?'
   B2DD2A  = 'What was the main reason for this?'
   B2DD3   = 'Did you spend less time with people?'
   B2DD3A  = 'Main reason for less time spent?'
   B2DD4   = 'Main reason for cut back of norm activity?'
   B2DD4A  = 'Who needed your help?'
   B2DF1   = 'Did you have an argument/disagreement?'
   B2DF1A  = 'With whom-argument?'
   B2DF1A1 = 'When did it happen?'
   B2DF1A2H= 'What time of day?H'
   B2DF1A2M= 'What time of day?M'
   B2DF1A2A= 'What time of day?A/P'
   B2DF1C  = 'How stressful was this for you?'
   B2DF1WC1= 'How angry were you feeling?'
   B2DF1WC2= 'How nervous or anxious were you feeling?'
   B2DF1WC3= 'How sad were you feeling?'
   B2DF1WC4= 'How shameful were you feeling?'
   B2DF1WC5= 'How much control over the situation?'
   B2DF1WC6= 'Is the issue resolved?'
   B2DF1D  = 'How much risk disrupting daily routine?'
   B2DF1E  = 'How much risk your financial situation?'
   B2DF1F  = 'How much risk you feel about yourself?'
   B2DF1G  = 'How much risk people feel about you?'
   B2DF1H  = 'How much risk your physical health?'
   B2DF1I  = 'How much risk the health of someone?'
   B2DF1J  = 'How much risk your plans for the future?'
   B2DF2   = 'Did you avoid a disagreement?'
   B2DF2A  = 'With whom-avoid a disagreement?'
   B2DF2A1 = 'When did it happen?'
   B2DF2A2H= 'What time of day?H'
   B2DF2A2M= 'What time of day?M'
   B2DF2A2A= 'What time of day?A/P'
   B2DF2C  = 'How stressful was this for you?'
   B2DF2WC1= 'How angry were you feeling?'
   B2DF2WC2= 'How nervous or anxious were you feeling?'
   B2DF2WC3= 'How sad were you feeling?'
   B2DF2WC4= 'How shameful were you feeling?'
   B2DF2WC5= 'How much control over the situation?'
   B2DF2WC6= 'Is the issue resolved?'
   B2DF2D  = 'How much risk disrupting daily routine?'
   B2DF2E  = 'How much risk your financial situation?'
   B2DF2F  = 'How much risk you feel about yourself?'
   B2DF2G  = 'How much risk people feel about you?'
   B2DF2H  = 'How much risk your physical health?'
   B2DF2I  = 'How much risk the health of someone?'
   B2DF2J  = 'How much risk your plans for the future?'
   B2DF3   = 'Did anything happen at work/school?'
   B2DF3A1 = 'When did it happen?'
   B2DF3A2H= 'What time of day?H'
   B2DF3A2M= 'What time of day?M'
   B2DF3A2A= 'What time of day?A/P'
   B2DF3B  = 'How stressful was this for you?'
   B2DF3WB1= 'How angry were you feeling?'
   B2DF3WB2= 'How nervous or anxious were you feeling?'
   B2DF3WB3= 'How sad were you feeling?'
   B2DF3WB4= 'How shameful were you feeling?'
   B2DF3WB5= 'How much control over the situation?'
   B2DF3WB6= 'Is the issue resolved?'
   B2DF3C  = 'How much risk disrupting daily routine?'
   B2DF3D  = 'How much risk your financial situation?'
   B2DF3E  = 'How much risk you feel about yourself?'
   B2DF3F  = 'How much risk people feel about you?'
   B2DF3G  = 'How much risk your physical health?'
   B2DF3H  = 'How much risk the health of someone?'
   B2DF3I  = 'How much risk your plans for the future?'
   B2DF4   = 'Did anything happen at home?'
   B2DF4A1 = 'When did it happen?'
   B2DF4A2H= 'What time of day?H'
   B2DF4A2M= 'What time of day?M'
   B2DF4A2A= 'What time of day?A/P'
   B2DF4B  = 'How stressful was this for you?'
   B2DF4WB1= 'How angry were you feeling?'
   B2DF4WB2= 'How nervous or anxious were you feeling?'
   B2DF4WB3= 'How sad were you feeling?'
   B2DF4WB4= 'How shameful were you feeling?'
   B2DF4WB5= 'How much control over the situation?'
   B2DF4WB6= 'Is the issue resolved?'
   B2DF4C  = 'How much risk disrupting daily routine?'
   B2DF4D  = 'How much risk your financial situation?'
   B2DF4E  = 'How much risk you feel about yourself?'
   B2DF4F  = 'How much risk people feel about you?'
   B2DF4G  = 'How much risk your physical health?'
   B2DF4H  = 'How much risk the health of someone?'
   B2DF4I  = 'How much risk your plans for the future?'
   B2DF5   = 'Did any discrimination happened to you?'
   B2DF5A_1= 'Basis for discrimination-race'
   B2DF5A_2= 'Basis for discrimination-sex'
   B2DF5A_3= 'Basis for discrimination-age'
   B2DF5A_4= 'Basis for discrimination-something else'
   B2DF5A_5= 'Basis for discrimination-don''t know'
   B2DF5A_6= 'Basis for discrimination-refused'
   B2DF5A1 = 'When did it happen?'
   B2DF5A2H= 'What time of day?H'
   B2DF5A2M= 'What time of day?M'
   B2DF5A2A= 'What time of day?A/P'
   B2DF5C  = 'How stressful was this for you?'
   B2DF5WC1= 'How angry were you feeling?'
   B2DF5WC2= 'How nervous or anxious were you feeling?'
   B2DF5WC3= 'How sad were you feeling?'
   B2DF5WC4= 'How shameful were you feeling?'
   B2DF5WC5= 'How much control over the situation?'
   B2DF5WC6= 'Is the issue resolved?'
   B2DF5D  = 'How much risk disrupting daily routine?'
   B2DF5E  = 'How much risk your financial situation?'
   B2DF5F  = 'How much risk you feel about yourself?'
   B2DF5G  = 'How much risk people feel about you?'
   B2DF5H  = 'How much risk your physical health?'
   B2DF5I  = 'How much risk the health of someone?'
   B2DF5J  = 'How much risk your plans for the future?'
   B2DF6   = 'Did anything happen to friend stres you?'
   B2DF6A  = 'Who did this happen?'
   B2DF6A1 = 'When did it happen?'
   B2DF6A2H= 'What time of day?H'
   B2DF6A2M= 'What time of day?M'
   B2DF6A2A= 'What time of day?A/P'
   B2DF6C  = 'How stressful was this for you?'
   B2DF6WC1= 'How angry were you feeling?'
   B2DF6WC2= 'How nervous or anxious were you feeling?'
   B2DF6WC3= 'How sad were you feeling?'
   B2DF6WC4= 'How shameful were you feeling?'
   B2DF6WC5= 'How much control over the situation?'
   B2DF6WC6= 'Is the issue resolved?'
   B2DF6D  = 'How much risk disrupting daily routine?'
   B2DF6E  = 'How much risk your financial situation?'
   B2DF6F  = 'How much risk you feel about yourself?'
   B2DF6G  = 'How much risk people feel about you?'
   B2DF6H  = 'How much risk your physical health?'
   B2DF6I  = 'How much risk the health of someone?'
   B2DF6J  = 'How much risk your plans for the future?'
   B2DF7   = 'Did anything else happen to you?'
   B2DF7A  = 'When did it happen?'
   B2DF7A1H= 'What time of day?H'
   B2DF7A1M= 'What time of day?M'
   B2DF7A1A= 'What time of day?A/P'
   B2DF7B  = 'How stressful was this for you?'
   B2DF7WB1= 'How angry were you feeling?'
   B2DF7WB2= 'How nervous or anxious were you feeling?'
   B2DF7WB3= 'How sad were you feeling?'
   B2DF7WB4= 'How shameful were you feeling?'
   B2DF7WB5= 'How much control over the situation?'
   B2DF7WB6= 'Is the issue resolved?'
   B2DF7C  = 'How much risk disrupting daily routine?'
   B2DF7D  = 'How much risk your financial situation?'
   B2DF7E  = 'How much risk you feel about yourself?'
   B2DF7F  = 'How much risk people feel about you?'
   B2DF7G  = 'How much risk your physical health?'
   B2DF7H  = 'How much risk the health of someone?'
   B2DF7I  = 'How much risk your plans for the future?'
   B2DF8   = 'Have a positive interaction w/someone?'
   B2DF8A  = 'With whom-positive?'
   B2DF8A1 = 'When did it happen?'
   B2DF8A2H= 'What time of day?H'
   B2DF8A2M= 'What time of day?M'
   B2DF8A2A= 'What time of day?A/P'
   B2DF9   = 'Have a positive experience at work?'
   B2DF9A  = 'With whom-positive at work?'
   B2DF9A1 = 'When did it happen?'
   B2DF9H  = 'What time of day?H'
   B2DF9M  = 'What time of day?M'
   B2DF9AP = 'What time of day?A/P'
   B2DF10  = 'Have a positive experience at home?'
   B2DF10A = 'With whom-positive at home?'
   B2DF10A1= 'When did it happen?'
   B2DF10H = 'What time of day?H'
   B2DF10M = 'What time of day?M'
   B2DF10AP= 'What time of day?A/P'
   B2DF11  = 'Anything happened to friend pos to you?'
   B2DF11A = 'With whom-to others positive to you?'
   B2DF11A1= 'When did it happen?'
   B2DF11H = 'What time of day?H'
   B2DF11M = 'What time of day?M'
   B2DF11AP= 'What time of day?A/P'
   B2DF12  = 'Anything else positive happened?'
   B2DF12A = 'With whom-anything else?'
   B2DF12A1= 'When did it happen?'
   B2DF12H = 'What time of day?H'
   B2DF12M = 'What time of day?M'
   B2DF12AP= 'What time of day?A/P'
   B2DH1_D8= 'Past 7 days, feel restless or fidgety?'
   B2DH2_D8= 'Past 7 days, feel nervous?'
   B2DH3_D8= 'Past 7 days, feel worthless?'
   B2DH4_D8= 'Past 7 days, feel sad nothing cheer up?'
   B2DH5_D8= 'Past 7 days, feel everything effort?'
   B2DH6_D8= 'Past 7 days, feel hopeless?'
   B2DH7_D8= 'Past 7 days, feel lonely?'
   B2DH8_D8= 'Past 7 days, feel afraid?'
   B2DH9_D8= 'Past 7 days, feel jittery?'
   B2DH10D8= 'Past 7 days, feel irritable?'
   B2DH11D8= 'Past 7 days, feel ashamed?'
   B2DH12D8= 'Past 7 days, feel upset?'
   B2DH13D8= 'Past 7 days, feel angry?'
   B2DH14D8= 'Past 7 days, feel frustrated?'
   B2DI1_D8= 'More/less often negative feeling 7 day?'
   B2DI1AD8= 'How much often negative feeling 7 days?'
   B2DJ1_D8= 'Past 7 days, feel in goodspirits?'
   B2DJ2_D8= 'Past 7 days, feel cheerful?'
   B2DJ3_D8= 'Past 7 days, feel extremely happy?'
   B2DJ4_D8= 'Past 7 days, feel calm and peaceful?'
   B2DJ5_D8= 'Past 7 days, feel satisfied?'
   B2DJ6_D8= 'Past 7 days, feel full of life?'
   B2DJ7_D8= 'Past 7 days, feel close to others?'
   B2DJ8_D8= 'Past 7 days, feel like you belong?'
   B2DJ9_D8= 'Past 7 days, feel enthusiastic?'
   B2DJ10D8= 'Past 7 days, feel attentive?'
   B2DJ11D8= 'Past 7 days, feel proud?'
   B2DJ12D8= 'Past 7 days, feel active?'
   B2DJ13D8= 'Past 7 days, feel confident?'
   B2DK1_D8= 'More/less often positive feeling 7 days?'
   B2DK1AD8= 'How much often positive feeling 7 days?'
   B2DK2_D8= 'More or fewer health problems 7 days?'
   B2DK2AD8= 'How much health problems 7 days?'
   B2DK3_D8= 'More/less stress 7 days?'
   B2DK3AD8= 'How much stress 7 days?'
   B2DS14A = 'You treated w/less courtesy than others?'
   B2DS14B = 'You treated w/less respect than others?'
   B2DS14C = 'You received poorer service than others?'
   B2DS14D = 'People acted as if you are not smart?'
   B2DS14E = 'People acted as if afraid of you?'
   B2DS14F = 'People acted as if you are dishonest?'
   B2DS14G = 'People acted as if you are not as good?'
   B2DS14H = 'You were called names or insulted'
   B2DS14I = 'You were threatened or harassed'
   B2DS15_1= 'Reason treated_your age'
   B2DS15_2= 'Reason treated_your gender'
   B2DS15_3= 'Reason treated_your race'
   B2DS15_4= 'Reason treated_your ethnicity/national'
   B2DS15_5= 'Reason treated_your religion'
   B2DS15_6= 'Reason treated_your height or weight'
   B2DS15_7= 'Reason treated_other appearance'
   B2DS15_8= 'Reason treated_physical disability'
   B2DS15_9= 'Reason treated_your sexual orientation'
   B2DS1510= 'Reason treated_other reason'
   B2DS1511= 'Reason treated_don''t know'
   B2DS1512= 'Reason treated_refused'
   B2DMED1 = 'Over the counter or prescription allergy'
   B2DMED2 = 'A steroid inhaler'
   B2DMED3 = 'Other steroid meds'
   B2DMED4 = 'Meds or creams containing cortisone'
   B2DMED5 = 'Birth control pills'
   B2DMED6 = 'Other hormonal meds'
   B2DMED7 = 'Anti-depressant or anti-anxiety meds'
   B2DMED8 = 'Don''t know'
   B2DMED9 = 'Refused'
   B2DMED10= 'None'
   B2DCORT = 'Participant provided saliva'
   B2DCDAY = 'Cortisol day'
   B2DSMART= 'Provided smartbox data'
   B2DCWDAY= 'Cortisol on wrong days'
   B2DCORW = 'Wake cortisol'
   B2DCORA = '30 Minutes after wake cortisol'
   B2DCORL = 'Lunch cortisol'
   B2DCORB = 'Before bed cortisol'
   B2DCORWT= 'Cortisol collection time-Wake'
   B2DCORAT= 'Cortisol collection time-30 mins'
   B2DCORLT= 'Cortisol collection time-Lunch'
   B2DCORBT= 'Cortisol collection time-Bed'
   B2DTZONE= 'Time zone'
   B2DN_STR= 'Number of stressors'
   B2DA_STR= 'Any stressor'
   B2DSSEVS= 'Stressor severity sum'
   B2DSSEVA= 'Stressor severity average'
   B2DSNEGS= 'Stressor negative affect sum'
   B2DSNEGA= 'Stressor negative affect average'
   B2DSAPRA= 'Average_Risk disrupting daily routine'
   B2DSAPRB= 'Average_Risk your financial situation'
   B2DSAPRC= 'Average_Risk you feel about yourself'
   B2DSAPRD= 'Average_Risk people feel about you'
   B2DSAPRE= 'Average_Risk your physical health'
   B2DSAPRF= 'Average_Risk the health of someone'
   B2DSAPRG= 'Average_Risk your plans for the future'
   B2DSCOTS= 'Stressor control sum'
   B2DSCOTA= 'Stressor control average'
   B2DN_SYM= 'Number of physical symptoms'
   B2DA_SYM= 'Any physical symptom'
   B2DSYMAV= 'Physical symptoms severity average'
   B2DN_POS= 'Number of positive events'
   B2DA_POS= 'Any positive event'
   B2DPOSAV= 'Positive affect average'
   B2DNEGAV= 'Negative affect average'
        ;


* USER-DEFINED MISSING VALUES RECODE TO SAS SYSMIS;

/*
   IF (B1PAGE_M2 = 98 OR B1PAGE_M2 = 99) THEN B1PAGE_M2 = .;
   IF (B1PGENDER = 8) THEN B1PGENDER = .;
   IF (B2DDAYT = 7 OR B2DDAYT = 8 OR B2DDAYT = 9) THEN B2DDAYT = .;
   IF (B2DWAKE1 = 97 OR B2DWAKE1 = 98 OR B2DWAKE1 = 99) THEN B2DWAKE1 = .;
   IF (B2DWAKE2 = 97 OR B2DWAKE2 = 98 OR B2DWAKE2 = 99) THEN B2DWAKE2 = .;
   IF (B2DWAKE3 = 7 OR B2DWAKE3 = 8 OR B2DWAKE3 = 9) THEN B2DWAKE3 = .;
   IF (B2DAW1CH = 97 OR B2DAW1CH = 98 OR B2DAW1CH = 99) THEN B2DAW1CH = .;
   IF (B2DAW1CM = 97 OR B2DAW1CM = 98 OR B2DAW1CM = 99) THEN B2DAW1CM = .;
   IF (B2DA1H = 97 OR B2DA1H = 98 OR B2DA1H = 99) THEN B2DA1H = .;
   IF (B2DA1M = 97 OR B2DA1M = 98 OR B2DA1M = 99) THEN B2DA1M = .;
   IF (B2DA2H = 97 OR B2DA2H = 98 OR B2DA2H = 99) THEN B2DA2H = .;
   IF (B2DA2M = 97 OR B2DA2M = 98 OR B2DA2M = 99) THEN B2DA2M = .;
   IF (B2DA3H = 97 OR B2DA3H = 98 OR B2DA3H = 99) THEN B2DA3H = .;
   IF (B2DA3M = 97 OR B2DA3M = 98 OR B2DA3M = 99) THEN B2DA3M = .;
   IF (B2DA3AH2 = 97 OR B2DA3AH2 = 98 OR B2DA3AH2 = 99) THEN B2DA3AH2 = .;
   IF (B2DA3AM2 = 97 OR B2DA3AM2 = 98 OR B2DA3AM2 = 99) THEN B2DA3AM2 = .;
   IF (B2DA3AAP = 7 OR B2DA3AAP = 8 OR B2DA3AAP = 9) THEN B2DA3AAP = .;
   IF (B2DA3BH2 = 97 OR B2DA3BH2 = 98 OR B2DA3BH2 = 99) THEN B2DA3BH2 = .;
   IF (B2DA3BM2 = 97 OR B2DA3BM2 = 98 OR B2DA3BM2 = 99) THEN B2DA3BM2 = .;
   IF (B2DA3BAP = 7 OR B2DA3BAP = 8 OR B2DA3BAP = 9) THEN B2DA3BAP = .;
   IF (B2DA4H = 97 OR B2DA4H = 98 OR B2DA4H = 99) THEN B2DA4H = .;
   IF (B2DA4M = 97 OR B2DA4M = 98 OR B2DA4M = 99) THEN B2DA4M = .;
   IF (B2DAW4H = 97 OR B2DAW4H = 98 OR B2DAW4H = 99) THEN B2DAW4H = .;
   IF (B2DAW4M = 97 OR B2DAW4M = 98 OR B2DAW4M = 99) THEN B2DAW4M = .;
   IF (B2DA4AH = 97 OR B2DA4AH = 98 OR B2DA4AH = 99) THEN B2DA4AH = .;
   IF (B2DA4AM = 97 OR B2DA4AM = 98 OR B2DA4AM = 99) THEN B2DA4AM = .;
   IF (B2DAW5AH = 97 OR B2DAW5AH = 98 OR B2DAW5AH = 99) THEN B2DAW5AH = .;
   IF (B2DAW5AM = 97 OR B2DAW5AM = 98 OR B2DAW5AM = 99) THEN B2DAW5AM = .;
   IF (B2DAW5AA = 7 OR B2DAW5AA = 8 OR B2DAW5AA = 9) THEN B2DAW5AA = .;
   IF (B2DA9 = 7 OR B2DA9 = 8 OR B2DA9 = 9) THEN B2DA9 = .;
   IF (B2DA9AH = 97 OR B2DA9AH = 98 OR B2DA9AH = 99) THEN B2DA9AH = .;
   IF (B2DA9AM = 97 OR B2DA9AM = 98 OR B2DA9AM = 99) THEN B2DA9AM = .;
   IF (B2DA10 = 7 OR B2DA10 = 8 OR B2DA10 = 9) THEN B2DA10 = .;
   IF (B2DA10A1 = 7 OR B2DA10A1 = 8 OR B2DA10A1 = 9) THEN B2DA10A1 = .;
   IF (B2DA10A2 = 7 OR B2DA10A2 = 8 OR B2DA10A2 = 9) THEN B2DA10A2 = .;
   IF (B2DA10A3 = 7 OR B2DA10A3 = 8 OR B2DA10A3 = 9) THEN B2DA10A3 = .;
   IF (B2DA10A4 = 7 OR B2DA10A4 = 8 OR B2DA10A4 = 9) THEN B2DA10A4 = .;
   IF (B2DA10A5 = 7 OR B2DA10A5 = 8 OR B2DA10A5 = 9) THEN B2DA10A5 = .;
   IF (B2DA10A6 = 7 OR B2DA10A6 = 8 OR B2DA10A6 = 9) THEN B2DA10A6 = .;
   IF (B2DA10A7 = 7 OR B2DA10A7 = 8 OR B2DA10A7 = 9) THEN B2DA10A7 = .;
   IF (B2DA10A8 = 7 OR B2DA10A8 = 8 OR B2DA10A8 = 9) THEN B2DA10A8 = .;
   IF (B2DA10A9 = 7 OR B2DA10A9 = 8 OR B2DA10A9 = 9) THEN B2DA10A9 = .;
   IF (B2DA1010 = 7 OR B2DA1010 = 8 OR B2DA1010 = 9) THEN B2DA1010 = .;
   IF (B2DA1011 = 7 OR B2DA1011 = 8 OR B2DA1011 = 9) THEN B2DA1011 = .;
   IF (B2DA1012 = 7 OR B2DA1012 = 8 OR B2DA1012 = 9) THEN B2DA1012 = .;
   IF (B2DA1013 = 7 OR B2DA1013 = 8 OR B2DA1013 = 9) THEN B2DA1013 = .;
   IF (B2DA1014 = 7 OR B2DA1014 = 8 OR B2DA1014 = 9) THEN B2DA1014 = .;
   IF (B2DA1015 = 7 OR B2DA1015 = 8 OR B2DA1015 = 9) THEN B2DA1015 = .;
   IF (B2DA1016 = 7 OR B2DA1016 = 8 OR B2DA1016 = 9) THEN B2DA1016 = .;
   IF (B2DA1017 = 7 OR B2DA1017 = 8 OR B2DA1017 = 9) THEN B2DA1017 = .;
   IF (B2DA1018 = 7 OR B2DA1018 = 8 OR B2DA1018 = 9) THEN B2DA1018 = .;
   IF (B2DA1019 = 7 OR B2DA1019 = 8 OR B2DA1019 = 9) THEN B2DA1019 = .;
   IF (B2DA1020 = 7 OR B2DA1020 = 8 OR B2DA1020 = 9) THEN B2DA1020 = .;
   IF (B2DA1021 = 7 OR B2DA1021 = 8 OR B2DA1021 = 9) THEN B2DA1021 = .;
   IF (B2DA1022 = 7 OR B2DA1022 = 8 OR B2DA1022 = 9) THEN B2DA1022 = .;
   IF (B2DA1023 = 7 OR B2DA1023 = 8 OR B2DA1023 = 9) THEN B2DA1023 = .;
   IF (B2DA1024 = 7 OR B2DA1024 = 8 OR B2DA1024 = 9) THEN B2DA1024 = .;
   IF (B2DA1025 = 7 OR B2DA1025 = 8 OR B2DA1025 = 9) THEN B2DA1025 = .;
   IF (B2DA10BH = 97 OR B2DA10BH = 98 OR B2DA10BH = 99) THEN B2DA10BH = .;
   IF (B2DA10BM = 97 OR B2DA10BM = 98 OR B2DA10BM = 99) THEN B2DA10BM = .;
   IF (B2DA11 = 7 OR B2DA11 = 8 OR B2DA11 = 9) THEN B2DA11 = .;
   IF (B2DA11A1 = 7 OR B2DA11A1 = 8 OR B2DA11A1 = 9) THEN B2DA11A1 = .;
   IF (B2DA11A2 = 7 OR B2DA11A2 = 8 OR B2DA11A2 = 9) THEN B2DA11A2 = .;
   IF (B2DA11A3 = 7 OR B2DA11A3 = 8 OR B2DA11A3 = 9) THEN B2DA11A3 = .;
   IF (B2DA11A4 = 7 OR B2DA11A4 = 8 OR B2DA11A4 = 9) THEN B2DA11A4 = .;
   IF (B2DA11A5 = 7 OR B2DA11A5 = 8 OR B2DA11A5 = 9) THEN B2DA11A5 = .;
   IF (B2DA11A6 = 7 OR B2DA11A6 = 8 OR B2DA11A6 = 9) THEN B2DA11A6 = .;
   IF (B2DA11A7 = 7 OR B2DA11A7 = 8 OR B2DA11A7 = 9) THEN B2DA11A7 = .;
   IF (B2DA11A8 = 7 OR B2DA11A8 = 8 OR B2DA11A8 = 9) THEN B2DA11A8 = .;
   IF (B2DA11A9 = 7 OR B2DA11A9 = 8 OR B2DA11A9 = 9) THEN B2DA11A9 = .;
   IF (B2DA1110 = 7 OR B2DA1110 = 8 OR B2DA1110 = 9) THEN B2DA1110 = .;
   IF (B2DA1111 = 7 OR B2DA1111 = 8 OR B2DA1111 = 9) THEN B2DA1111 = .;
   IF (B2DA1112 = 7 OR B2DA1112 = 8 OR B2DA1112 = 9) THEN B2DA1112 = .;
   IF (B2DA1113 = 7 OR B2DA1113 = 8 OR B2DA1113 = 9) THEN B2DA1113 = .;
   IF (B2DA1114 = 7 OR B2DA1114 = 8 OR B2DA1114 = 9) THEN B2DA1114 = .;
   IF (B2DA1115 = 7 OR B2DA1115 = 8 OR B2DA1115 = 9) THEN B2DA1115 = .;
   IF (B2DA1116 = 7 OR B2DA1116 = 8 OR B2DA1116 = 9) THEN B2DA1116 = .;
   IF (B2DA1117 = 7 OR B2DA1117 = 8 OR B2DA1117 = 9) THEN B2DA1117 = .;
   IF (B2DA1118 = 7 OR B2DA1118 = 8 OR B2DA1118 = 9) THEN B2DA1118 = .;
   IF (B2DA1119 = 7 OR B2DA1119 = 8 OR B2DA1119 = 9) THEN B2DA1119 = .;
   IF (B2DA1120 = 7 OR B2DA1120 = 8 OR B2DA1120 = 9) THEN B2DA1120 = .;
   IF (B2DA1121 = 7 OR B2DA1121 = 8 OR B2DA1121 = 9) THEN B2DA1121 = .;
   IF (B2DA1122 = 7 OR B2DA1122 = 8 OR B2DA1122 = 9) THEN B2DA1122 = .;
   IF (B2DA1123 = 7 OR B2DA1123 = 8 OR B2DA1123 = 9) THEN B2DA1123 = .;
   IF (B2DA1124 = 7 OR B2DA1124 = 8 OR B2DA1124 = 9) THEN B2DA1124 = .;
   IF (B2DA1125 = 7 OR B2DA1125 = 8 OR B2DA1125 = 9) THEN B2DA1125 = .;
   IF (B2DA11BH = 97 OR B2DA11BH = 98 OR B2DA11BH = 99) THEN B2DA11BH = .;
   IF (B2DA11BM = 97 OR B2DA11BM = 98 OR B2DA11BM = 99) THEN B2DA11BM = .;
   IF (B2DA12 = 7 OR B2DA12 = 8 OR B2DA12 = 9) THEN B2DA12 = .;
   IF (B2DA12A1 = 7 OR B2DA12A1 = 8 OR B2DA12A1 = 9) THEN B2DA12A1 = .;
   IF (B2DA12A2 = 7 OR B2DA12A2 = 8 OR B2DA12A2 = 9) THEN B2DA12A2 = .;
   IF (B2DA12A3 = 7 OR B2DA12A3 = 8 OR B2DA12A3 = 9) THEN B2DA12A3 = .;
   IF (B2DA12A4 = 7 OR B2DA12A4 = 8 OR B2DA12A4 = 9) THEN B2DA12A4 = .;
   IF (B2DA12A5 = 7 OR B2DA12A5 = 8 OR B2DA12A5 = 9) THEN B2DA12A5 = .;
   IF (B2DA12A6 = 7 OR B2DA12A6 = 8 OR B2DA12A6 = 9) THEN B2DA12A6 = .;
   IF (B2DA12A7 = 7 OR B2DA12A7 = 8 OR B2DA12A7 = 9) THEN B2DA12A7 = .;
   IF (B2DA12A8 = 7 OR B2DA12A8 = 8 OR B2DA12A8 = 9) THEN B2DA12A8 = .;
   IF (B2DA12A9 = 7 OR B2DA12A9 = 8 OR B2DA12A9 = 9) THEN B2DA12A9 = .;
   IF (B2DA1210 = 7 OR B2DA1210 = 8 OR B2DA1210 = 9) THEN B2DA1210 = .;
   IF (B2DA1211 = 7 OR B2DA1211 = 8 OR B2DA1211 = 9) THEN B2DA1211 = .;
   IF (B2DA1212 = 7 OR B2DA1212 = 8 OR B2DA1212 = 9) THEN B2DA1212 = .;
   IF (B2DA1213 = 7 OR B2DA1213 = 8 OR B2DA1213 = 9) THEN B2DA1213 = .;
   IF (B2DA1214 = 7 OR B2DA1214 = 8 OR B2DA1214 = 9) THEN B2DA1214 = .;
   IF (B2DA1215 = 7 OR B2DA1215 = 8 OR B2DA1215 = 9) THEN B2DA1215 = .;
   IF (B2DA1216 = 7 OR B2DA1216 = 8 OR B2DA1216 = 9) THEN B2DA1216 = .;
   IF (B2DA1217 = 7 OR B2DA1217 = 8 OR B2DA1217 = 9) THEN B2DA1217 = .;
   IF (B2DA1218 = 7 OR B2DA1218 = 8 OR B2DA1218 = 9) THEN B2DA1218 = .;
   IF (B2DA1220 = 7 OR B2DA1220 = 8 OR B2DA1220 = 9) THEN B2DA1220 = .;
   IF (B2DA1221 = 7 OR B2DA1221 = 8 OR B2DA1221 = 9) THEN B2DA1221 = .;
   IF (B2DA1222 = 7 OR B2DA1222 = 8 OR B2DA1222 = 9) THEN B2DA1222 = .;
   IF (B2DA1223 = 7 OR B2DA1223 = 8 OR B2DA1223 = 9) THEN B2DA1223 = .;
   IF (B2DA1224 = 7 OR B2DA1224 = 8 OR B2DA1224 = 9) THEN B2DA1224 = .;
   IF (B2DA1225 = 7 OR B2DA1225 = 8 OR B2DA1225 = 9) THEN B2DA1225 = .;
   IF (B2DA12BH = 97 OR B2DA12BH = 98 OR B2DA12BH = 99) THEN B2DA12BH = .;
   IF (B2DA12BM = 97 OR B2DA12BM = 98 OR B2DA12BM = 99) THEN B2DA12BM = .;
   IF (B2DA13 = 7 OR B2DA13 = 8 OR B2DA13 = 9) THEN B2DA13 = .;
   IF (B2DA13A1 = 7 OR B2DA13A1 = 8 OR B2DA13A1 = 9) THEN B2DA13A1 = .;
   IF (B2DA13A2 = 7 OR B2DA13A2 = 8 OR B2DA13A2 = 9) THEN B2DA13A2 = .;
   IF (B2DA13A3 = 7 OR B2DA13A3 = 8 OR B2DA13A3 = 9) THEN B2DA13A3 = .;
   IF (B2DA13A4 = 7 OR B2DA13A4 = 8 OR B2DA13A4 = 9) THEN B2DA13A4 = .;
   IF (B2DA13A5 = 7 OR B2DA13A5 = 8 OR B2DA13A5 = 9) THEN B2DA13A5 = .;
   IF (B2DA13A6 = 7 OR B2DA13A6 = 8 OR B2DA13A6 = 9) THEN B2DA13A6 = .;
   IF (B2DA13A7 = 7 OR B2DA13A7 = 8 OR B2DA13A7 = 9) THEN B2DA13A7 = .;
   IF (B2DA13A8 = 7 OR B2DA13A8 = 8 OR B2DA13A8 = 9) THEN B2DA13A8 = .;
   IF (B2DA13A9 = 7 OR B2DA13A9 = 8 OR B2DA13A9 = 9) THEN B2DA13A9 = .;
   IF (B2DA1310 = 7 OR B2DA1310 = 8 OR B2DA1310 = 9) THEN B2DA1310 = .;
   IF (B2DA1311 = 7 OR B2DA1311 = 8 OR B2DA1311 = 9) THEN B2DA1311 = .;
   IF (B2DA1312 = 7 OR B2DA1312 = 8 OR B2DA1312 = 9) THEN B2DA1312 = .;
   IF (B2DA1313 = 7 OR B2DA1313 = 8 OR B2DA1313 = 9) THEN B2DA1313 = .;
   IF (B2DA1314 = 7 OR B2DA1314 = 8 OR B2DA1314 = 9) THEN B2DA1314 = .;
   IF (B2DA1315 = 7 OR B2DA1315 = 8 OR B2DA1315 = 9) THEN B2DA1315 = .;
   IF (B2DA1316 = 7 OR B2DA1316 = 8 OR B2DA1316 = 9) THEN B2DA1316 = .;
   IF (B2DA1317 = 7 OR B2DA1317 = 8 OR B2DA1317 = 9) THEN B2DA1317 = .;
   IF (B2DA1318 = 7 OR B2DA1318 = 8 OR B2DA1318 = 9) THEN B2DA1318 = .;
   IF (B2DA1319 = 7 OR B2DA1319 = 8 OR B2DA1319 = 9) THEN B2DA1319 = .;
   IF (B2DA1320 = 7 OR B2DA1320 = 8 OR B2DA1320 = 9) THEN B2DA1320 = .;
   IF (B2DA1321 = 7 OR B2DA1321 = 8 OR B2DA1321 = 9) THEN B2DA1321 = .;
   IF (B2DA1322 = 7 OR B2DA1322 = 8 OR B2DA1322 = 9) THEN B2DA1322 = .;
   IF (B2DA1323 = 7 OR B2DA1323 = 8 OR B2DA1323 = 9) THEN B2DA1323 = .;
   IF (B2DA1324 = 7 OR B2DA1324 = 8 OR B2DA1324 = 9) THEN B2DA1324 = .;
   IF (B2DA1325 = 7 OR B2DA1325 = 8 OR B2DA1325 = 9) THEN B2DA1325 = .;
   IF (B2DA13BH = 97 OR B2DA13BH = 98 OR B2DA13BH = 99) THEN B2DA13BH = .;
   IF (B2DA13BM = 97 OR B2DA13BM = 98 OR B2DA13BM = 99) THEN B2DA13BM = .;
   IF (B2DAC1 = 7 OR B2DAC1 = 8 OR B2DAC1 = 9) THEN B2DAC1 = .;
   IF (B2DAC2D1 = 7 OR B2DAC2D1 = 8 OR B2DAC2D1 = 9) THEN B2DAC2D1 = .;
   IF (B2DAC2D2 = 7 OR B2DAC2D2 = 8 OR B2DAC2D2 = 9) THEN B2DAC2D2 = .;
   IF (B2DAC2D3 = 7 OR B2DAC2D3 = 8 OR B2DAC2D3 = 9) THEN B2DAC2D3 = .;
   IF (B2DAC2D4 = 7 OR B2DAC2D4 = 8 OR B2DAC2D4 = 9) THEN B2DAC2D4 = .;
   IF (B2DAC2D5 = 7 OR B2DAC2D5 = 8 OR B2DAC2D5 = 9) THEN B2DAC2D5 = .;
   IF (B2DAC2D6 = 7 OR B2DAC2D6 = 8 OR B2DAC2D6 = 9) THEN B2DAC2D6 = .;
   IF (B2DAC2D7 = 7 OR B2DAC2D7 = 8 OR B2DAC2D7 = 9) THEN B2DAC2D7 = .;
   IF (B2DAC2D8 = 7 OR B2DAC2D8 = 8 OR B2DAC2D8 = 9) THEN B2DAC2D8 = .;
   IF (B2DAC2D9 = 7 OR B2DAC2D9 = 8 OR B2DAC2D9 = 9) THEN B2DAC2D9 = .;
   IF (B2DAC21A = 7 OR B2DAC21A = 8 OR B2DAC21A = 9) THEN B2DAC21A = .;
   IF (B2DAC21B = 7 OR B2DAC21B = 8 OR B2DAC21B = 9) THEN B2DAC21B = .;
   IF (B2DAC21C = 7 OR B2DAC21C = 8 OR B2DAC21C = 9) THEN B2DAC21C = .;
   IF (B2DAC21D = 7 OR B2DAC21D = 8 OR B2DAC21D = 9) THEN B2DAC21D = .;
   IF (B2DAC21E = 7 OR B2DAC21E = 8 OR B2DAC21E = 9) THEN B2DAC21E = .;
   IF (B2DAC21F = 7 OR B2DAC21F = 8 OR B2DAC21F = 9) THEN B2DAC21F = .;
   IF (B2DAC21G = 7 OR B2DAC21G = 8 OR B2DAC21G = 9) THEN B2DAC21G = .;
   IF (B2DAC21H = 7 OR B2DAC21H = 8 OR B2DAC21H = 9) THEN B2DAC21H = .;
   IF (B2DAC21I = 7 OR B2DAC21I = 8 OR B2DAC21I = 9) THEN B2DAC21I = .;
   IF (B2DAC21J = 7 OR B2DAC21J = 8 OR B2DAC21J = 9) THEN B2DAC21J = .;
   IF (B2DAC21K = 7 OR B2DAC21K = 8 OR B2DAC21K = 9) THEN B2DAC21K = .;
   IF (B2DAC21L = 7 OR B2DAC21L = 8 OR B2DAC21L = 9) THEN B2DAC21L = .;
   IF (B2DAC21M = 7 OR B2DAC21M = 8 OR B2DAC21M = 9) THEN B2DAC21M = .;
   IF (B2DAC21N = 7 OR B2DAC21N = 8 OR B2DAC21N = 9) THEN B2DAC21N = .;
   IF (B2DAC21O = 7 OR B2DAC21O = 8 OR B2DAC21O = 9) THEN B2DAC21O = .;
   IF (B2DAC3 = 7 OR B2DAC3 = 8 OR B2DAC3 = 9) THEN B2DAC3 = .;
   IF (B2DAC4H = 97 OR B2DAC4H = 98 OR B2DAC4H = 99) THEN B2DAC4H = .;
   IF (B2DAC4M = 97 OR B2DAC4M = 98 OR B2DAC4M = 99) THEN B2DAC4M = .;
   IF (B2DB1A = 7 OR B2DB1A = 8 OR B2DB1A = 9) THEN B2DB1A = .;
   IF (B2DB1A2 = 97 OR B2DB1A2 = 98 OR B2DB1A2 = 99) THEN B2DB1A2 = .;
   IF (B2DB1B = 7 OR B2DB1B = 8 OR B2DB1B = 9) THEN B2DB1B = .;
   IF (B2DB1B2 = 97 OR B2DB1B2 = 98 OR B2DB1B2 = 99) THEN B2DB1B2 = .;
   IF (B2DB1C = 7 OR B2DB1C = 8 OR B2DB1C = 9) THEN B2DB1C = .;
   IF (B2DB1C2 = 97 OR B2DB1C2 = 98 OR B2DB1C2 = 99) THEN B2DB1C2 = .;
   IF (B2DB1D = 7 OR B2DB1D = 8 OR B2DB1D = 9) THEN B2DB1D = .;
   IF (B2DB1D2 = 97 OR B2DB1D2 = 98 OR B2DB1D2 = 99) THEN B2DB1D2 = .;
   IF (B2DB1E = 7 OR B2DB1E = 8 OR B2DB1E = 9) THEN B2DB1E = .;
   IF (B2DB1E2 = 97 OR B2DB1E2 = 98 OR B2DB1E2 = 99) THEN B2DB1E2 = .;
   IF (B2DB1F = 7 OR B2DB1F = 8 OR B2DB1F = 9) THEN B2DB1F = .;
   IF (B2DB1F2 = 97 OR B2DB1F2 = 98 OR B2DB1F2 = 99) THEN B2DB1F2 = .;
   IF (B2DB1G = 7 OR B2DB1G = 8 OR B2DB1G = 9) THEN B2DB1G = .;
   IF (B2DB1G2 = 97 OR B2DB1G2 = 98 OR B2DB1G2 = 99) THEN B2DB1G2 = .;
   IF (B2DB1H = 7 OR B2DB1H = 8 OR B2DB1H = 9) THEN B2DB1H = .;
   IF (B2DB1H2 = 97 OR B2DB1H2 = 98 OR B2DB1H2 = 99) THEN B2DB1H2 = .;
   IF (B2DB1I = 7 OR B2DB1I = 8 OR B2DB1I = 9) THEN B2DB1I = .;
   IF (B2DB1I2 = 97 OR B2DB1I2 = 98 OR B2DB1I2 = 99) THEN B2DB1I2 = .;
   IF (B2DB1J = 7 OR B2DB1J = 8 OR B2DB1J = 9) THEN B2DB1J = .;
   IF (B2DB1J2 = 97 OR B2DB1J2 = 98 OR B2DB1J2 = 99) THEN B2DB1J2 = .;
   IF (B2DB1K = 7 OR B2DB1K = 8 OR B2DB1K = 9) THEN B2DB1K = .;
   IF (B2DB1K2 = 97 OR B2DB1K2 = 98 OR B2DB1K2 = 99) THEN B2DB1K2 = .;
   IF (B2DB1L = 7 OR B2DB1L = 8 OR B2DB1L = 9) THEN B2DB1L = .;
   IF (B2DB1L2 = 97 OR B2DB1L2 = 98 OR B2DB1L2 = 99) THEN B2DB1L2 = .;
   IF (B2DB1LA = 7 OR B2DB1LA = 8 OR B2DB1LA = 9) THEN B2DB1LA = .;
   IF (B2DB1LA2 = 97 OR B2DB1LA2 = 98 OR B2DB1LA2 = 99) THEN B2DB1LA2 = .;
   IF (B2DB1M = 7 OR B2DB1M = 8 OR B2DB1M = 9) THEN B2DB1M = .;
   IF (B2DB1M2 = 97 OR B2DB1M2 = 98 OR B2DB1M2 = 99) THEN B2DB1M2 = .;
   IF (B2DB1N = 7 OR B2DB1N = 8 OR B2DB1N = 9) THEN B2DB1N = .;
   IF (B2DB1N2 = 97 OR B2DB1N2 = 98 OR B2DB1N2 = 99) THEN B2DB1N2 = .;
   IF (B2DB1O = 7 OR B2DB1O = 8 OR B2DB1O = 9) THEN B2DB1O = .;
   IF (B2DB1O2 = 97 OR B2DB1O2 = 98 OR B2DB1O2 = 99) THEN B2DB1O2 = .;
   IF (B2DB1P = 7 OR B2DB1P = 8 OR B2DB1P = 9) THEN B2DB1P = .;
   IF (B2DB1P2 = 97 OR B2DB1P2 = 98 OR B2DB1P2 = 99) THEN B2DB1P2 = .;
   IF (B2DB1Q = 7 OR B2DB1Q = 8 OR B2DB1Q = 9) THEN B2DB1Q = .;
   IF (B2DB1Q2 = 97 OR B2DB1Q2 = 98 OR B2DB1Q2 = 99) THEN B2DB1Q2 = .;
   IF (B2DB1R = 7 OR B2DB1R = 8 OR B2DB1R = 9) THEN B2DB1R = .;
   IF (B2DB1R2 = 97 OR B2DB1R2 = 98 OR B2DB1R2 = 99) THEN B2DB1R2 = .;
   IF (B2DB1S = 7 OR B2DB1S = 8 OR B2DB1S = 9) THEN B2DB1S = .;
   IF (B2DB1S2 = 97 OR B2DB1S2 = 98 OR B2DB1S2 = 99) THEN B2DB1S2 = .;
   IF (B2DB1T = 7 OR B2DB1T = 8 OR B2DB1T = 9) THEN B2DB1T = .;
   IF (B2DB1T2 = 97 OR B2DB1T2 = 98 OR B2DB1T2 = 99) THEN B2DB1T2 = .;
   IF (B2DB1U = 7 OR B2DB1U = 8 OR B2DB1U = 9) THEN B2DB1U = .;
   IF (B2DB1U2 = 97 OR B2DB1U2 = 98 OR B2DB1U2 = 99) THEN B2DB1U2 = .;
   IF (B2DB1V = 7 OR B2DB1V = 8 OR B2DB1V = 9) THEN B2DB1V = .;
   IF (B2DB1V2 = 97 OR B2DB1V2 = 98 OR B2DB1V2 = 99) THEN B2DB1V2 = .;
   IF (B2DB1W = 7 OR B2DB1W = 8 OR B2DB1W = 9) THEN B2DB1W = .;
   IF (B2DB1W2 = 97 OR B2DB1W2 = 98 OR B2DB1W2 = 99) THEN B2DB1W2 = .;
   IF (B2DB1X = 7 OR B2DB1X = 8 OR B2DB1X = 9) THEN B2DB1X = .;
   IF (B2DB1X2 = 97 OR B2DB1X2 = 98 OR B2DB1X2 = 99) THEN B2DB1X2 = .;
   IF (B2DB1Y = 7 OR B2DB1Y = 8 OR B2DB1Y = 9) THEN B2DB1Y = .;
   IF (B2DB1Y2 = 97 OR B2DB1Y2 = 98 OR B2DB1Y2 = 99) THEN B2DB1Y2 = .;
   IF (B2DB1Z = 7 OR B2DB1Z = 8 OR B2DB1Z = 9) THEN B2DB1Z = .;
   IF (B2DB1Z2 = 97 OR B2DB1Z2 = 98 OR B2DB1Z2 = 99) THEN B2DB1Z2 = .;
   IF (B2DB1LEG = 7 OR B2DB1LEG = 8 OR B2DB1LEG = 9) THEN B2DB1LEG = .;
   IF (B2DB1LE2 = 97 OR B2DB1LE2 = 98 OR B2DB1LE2 = 99) THEN B2DB1LE2 = .;
   IF (B2DB2 = 997 OR B2DB2 = 998 OR B2DB2 = 999) THEN B2DB2 = .;
   IF (B2DB3 = 997 OR B2DB3 = 998 OR B2DB3 = 999) THEN B2DB3 = .;
   IF (B2DC1 = 7 OR B2DC1 = 8 OR B2DC1 = 9) THEN B2DC1 = .;
   IF (B2DC2 = 7 OR B2DC2 = 8 OR B2DC2 = 9) THEN B2DC2 = .;
   IF (B2DC3 = 7 OR B2DC3 = 8 OR B2DC3 = 9) THEN B2DC3 = .;
   IF (B2DC4 = 7 OR B2DC4 = 8 OR B2DC4 = 9) THEN B2DC4 = .;
   IF (B2DC5 = 7 OR B2DC5 = 8 OR B2DC5 = 9) THEN B2DC5 = .;
   IF (B2DC6 = 7 OR B2DC6 = 8 OR B2DC6 = 9) THEN B2DC6 = .;
   IF (B2DC7 = 7 OR B2DC7 = 8 OR B2DC7 = 9) THEN B2DC7 = .;
   IF (B2DC8 = 7 OR B2DC8 = 8 OR B2DC8 = 9) THEN B2DC8 = .;
   IF (B2DC9 = 7 OR B2DC9 = 8 OR B2DC9 = 9) THEN B2DC9 = .;
   IF (B2DC10 = 7 OR B2DC10 = 8 OR B2DC10 = 9) THEN B2DC10 = .;
   IF (B2DC11 = 7 OR B2DC11 = 8 OR B2DC11 = 9) THEN B2DC11 = .;
   IF (B2DC12 = 7 OR B2DC12 = 8 OR B2DC12 = 9) THEN B2DC12 = .;
   IF (B2DC13 = 7 OR B2DC13 = 8 OR B2DC13 = 9) THEN B2DC13 = .;
   IF (B2DC14 = 7 OR B2DC14 = 8 OR B2DC14 = 9) THEN B2DC14 = .;
   IF (B2DC15 = 7 OR B2DC15 = 8 OR B2DC15 = 9) THEN B2DC15 = .;
   IF (B2DC16 = 7 OR B2DC16 = 8 OR B2DC16 = 9) THEN B2DC16 = .;
   IF (B2DC17 = 7 OR B2DC17 = 8 OR B2DC17 = 9) THEN B2DC17 = .;
   IF (B2DC18 = 7 OR B2DC18 = 8 OR B2DC18 = 9) THEN B2DC18 = .;
   IF (B2DC19 = 7 OR B2DC19 = 8 OR B2DC19 = 9) THEN B2DC19 = .;
   IF (B2DC20 = 7 OR B2DC20 = 8 OR B2DC20 = 9) THEN B2DC20 = .;
   IF (B2DC21 = 7 OR B2DC21 = 8 OR B2DC21 = 9) THEN B2DC21 = .;
   IF (B2DC22 = 7 OR B2DC22 = 8 OR B2DC22 = 9) THEN B2DC22 = .;
   IF (B2DC23 = 7 OR B2DC23 = 8 OR B2DC23 = 9) THEN B2DC23 = .;
   IF (B2DC24 = 7 OR B2DC24 = 8 OR B2DC24 = 9) THEN B2DC24 = .;
   IF (B2DC25 = 7 OR B2DC25 = 8 OR B2DC25 = 9) THEN B2DC25 = .;
   IF (B2DC26 = 7 OR B2DC26 = 8 OR B2DC26 = 9) THEN B2DC26 = .;
   IF (B2DC27 = 7 OR B2DC27 = 8 OR B2DC27 = 9) THEN B2DC27 = .;
   IF (B2DD1 = 7 OR B2DD1 = 8 OR B2DD1 = 9) THEN B2DD1 = .;
   IF (B2DD1A = 97 OR B2DD1A = 98 OR B2DD1A = 99) THEN B2DD1A = .;
   IF (B2DD1B = 7 OR B2DD1B = 8 OR B2DD1B = 9) THEN B2DD1B = .;
   IF (B2DD2 = 7 OR B2DD2 = 8 OR B2DD2 = 9) THEN B2DD2 = .;
   IF (B2DD2A = 7 OR B2DD2A = 8 OR B2DD2A = 9) THEN B2DD2A = .;
   IF (B2DD3 = 7 OR B2DD3 = 8 OR B2DD3 = 9) THEN B2DD3 = .;
   IF (B2DD3A = 7 OR B2DD3A = 8 OR B2DD3A = 9) THEN B2DD3A = .;
   IF (B2DD4 = 7 OR B2DD4 = 8 OR B2DD4 = 9) THEN B2DD4 = .;
   IF (B2DD4A = 97 OR B2DD4A = 98 OR B2DD4A = 99) THEN B2DD4A = .;
   IF (B2DF1 = 7 OR B2DF1 = 8 OR B2DF1 = 9) THEN B2DF1 = .;
   IF (B2DF1A = 97 OR B2DF1A = 98 OR B2DF1A = 99) THEN B2DF1A = .;
   IF (B2DF1A1 = 7 OR B2DF1A1 = 8 OR B2DF1A1 = 9) THEN B2DF1A1 = .;
   IF (B2DF1A2H = 97 OR B2DF1A2H = 98 OR B2DF1A2H = 99) THEN B2DF1A2H = .;
   IF (B2DF1A2M = 97 OR B2DF1A2M = 98 OR B2DF1A2M = 99) THEN B2DF1A2M = .;
   IF (B2DF1A2A = 7 OR B2DF1A2A = 8 OR B2DF1A2A = 9) THEN B2DF1A2A = .;
   IF (B2DF1C = 7 OR B2DF1C = 8 OR B2DF1C = 9) THEN B2DF1C = .;
   IF (B2DF1WC1 = 7 OR B2DF1WC1 = 8 OR B2DF1WC1 = 9) THEN B2DF1WC1 = .;
   IF (B2DF1WC2 = 7 OR B2DF1WC2 = 8 OR B2DF1WC2 = 9) THEN B2DF1WC2 = .;
   IF (B2DF1WC3 = 7 OR B2DF1WC3 = 8 OR B2DF1WC3 = 9) THEN B2DF1WC3 = .;
   IF (B2DF1WC4 = 7 OR B2DF1WC4 = 8 OR B2DF1WC4 = 9) THEN B2DF1WC4 = .;
   IF (B2DF1WC5 = 7 OR B2DF1WC5 = 8 OR B2DF1WC5 = 9) THEN B2DF1WC5 = .;
   IF (B2DF1WC6 = 7 OR B2DF1WC6 = 8 OR B2DF1WC6 = 9) THEN B2DF1WC6 = .;
   IF (B2DF1D = 7 OR B2DF1D = 8 OR B2DF1D = 9) THEN B2DF1D = .;
   IF (B2DF1E = 7 OR B2DF1E = 8 OR B2DF1E = 9) THEN B2DF1E = .;
   IF (B2DF1F = 7 OR B2DF1F = 8 OR B2DF1F = 9) THEN B2DF1F = .;
   IF (B2DF1G = 7 OR B2DF1G = 8 OR B2DF1G = 9) THEN B2DF1G = .;
   IF (B2DF1H = 7 OR B2DF1H = 8 OR B2DF1H = 9) THEN B2DF1H = .;
   IF (B2DF1I = 7 OR B2DF1I = 8 OR B2DF1I = 9) THEN B2DF1I = .;
   IF (B2DF1J = 7 OR B2DF1J = 8 OR B2DF1J = 9) THEN B2DF1J = .;
   IF (B2DF2 = 7 OR B2DF2 = 8 OR B2DF2 = 9) THEN B2DF2 = .;
   IF (B2DF2A = 97 OR B2DF2A = 98 OR B2DF2A = 99) THEN B2DF2A = .;
   IF (B2DF2A1 = 7 OR B2DF2A1 = 8 OR B2DF2A1 = 9) THEN B2DF2A1 = .;
   IF (B2DF2A2H = 97 OR B2DF2A2H = 98 OR B2DF2A2H = 99) THEN B2DF2A2H = .;
   IF (B2DF2A2M = 97 OR B2DF2A2M = 98 OR B2DF2A2M = 99) THEN B2DF2A2M = .;
   IF (B2DF2A2A = 7 OR B2DF2A2A = 8 OR B2DF2A2A = 9) THEN B2DF2A2A = .;
   IF (B2DF2C = 7 OR B2DF2C = 8 OR B2DF2C = 9) THEN B2DF2C = .;
   IF (B2DF2WC1 = 7 OR B2DF2WC1 = 8 OR B2DF2WC1 = 9) THEN B2DF2WC1 = .;
   IF (B2DF2WC2 = 7 OR B2DF2WC2 = 8 OR B2DF2WC2 = 9) THEN B2DF2WC2 = .;
   IF (B2DF2WC3 = 7 OR B2DF2WC3 = 8 OR B2DF2WC3 = 9) THEN B2DF2WC3 = .;
   IF (B2DF2WC4 = 7 OR B2DF2WC4 = 8 OR B2DF2WC4 = 9) THEN B2DF2WC4 = .;
   IF (B2DF2WC5 = 7 OR B2DF2WC5 = 8 OR B2DF2WC5 = 9) THEN B2DF2WC5 = .;
   IF (B2DF2WC6 = 7 OR B2DF2WC6 = 8 OR B2DF2WC6 = 9) THEN B2DF2WC6 = .;
   IF (B2DF2D = 7 OR B2DF2D = 8 OR B2DF2D = 9) THEN B2DF2D = .;
   IF (B2DF2E = 7 OR B2DF2E = 8 OR B2DF2E = 9) THEN B2DF2E = .;
   IF (B2DF2F = 7 OR B2DF2F = 8 OR B2DF2F = 9) THEN B2DF2F = .;
   IF (B2DF2G = 7 OR B2DF2G = 8 OR B2DF2G = 9) THEN B2DF2G = .;
   IF (B2DF2H = 7 OR B2DF2H = 8 OR B2DF2H = 9) THEN B2DF2H = .;
   IF (B2DF2I = 7 OR B2DF2I = 8 OR B2DF2I = 9) THEN B2DF2I = .;
   IF (B2DF2J = 7 OR B2DF2J = 8 OR B2DF2J = 9) THEN B2DF2J = .;
   IF (B2DF3 = 7 OR B2DF3 = 8 OR B2DF3 = 9) THEN B2DF3 = .;
   IF (B2DF3A1 = 7 OR B2DF3A1 = 8 OR B2DF3A1 = 9) THEN B2DF3A1 = .;
   IF (B2DF3A2H = 97 OR B2DF3A2H = 98 OR B2DF3A2H = 99) THEN B2DF3A2H = .;
   IF (B2DF3A2M = 97 OR B2DF3A2M = 98 OR B2DF3A2M = 99) THEN B2DF3A2M = .;
   IF (B2DF3A2A = 7 OR B2DF3A2A = 8 OR B2DF3A2A = 9) THEN B2DF3A2A = .;
   IF (B2DF3B = 7 OR B2DF3B = 8 OR B2DF3B = 9) THEN B2DF3B = .;
   IF (B2DF3WB1 = 7 OR B2DF3WB1 = 8 OR B2DF3WB1 = 9) THEN B2DF3WB1 = .;
   IF (B2DF3WB2 = 7 OR B2DF3WB2 = 8 OR B2DF3WB2 = 9) THEN B2DF3WB2 = .;
   IF (B2DF3WB3 = 7 OR B2DF3WB3 = 8 OR B2DF3WB3 = 9) THEN B2DF3WB3 = .;
   IF (B2DF3WB4 = 7 OR B2DF3WB4 = 8 OR B2DF3WB4 = 9) THEN B2DF3WB4 = .;
   IF (B2DF3WB5 = 7 OR B2DF3WB5 = 8 OR B2DF3WB5 = 9) THEN B2DF3WB5 = .;
   IF (B2DF3WB6 = 7 OR B2DF3WB6 = 8 OR B2DF3WB6 = 9) THEN B2DF3WB6 = .;
   IF (B2DF3C = 7 OR B2DF3C = 8 OR B2DF3C = 9) THEN B2DF3C = .;
   IF (B2DF3D = 7 OR B2DF3D = 8 OR B2DF3D = 9) THEN B2DF3D = .;
   IF (B2DF3E = 7 OR B2DF3E = 8 OR B2DF3E = 9) THEN B2DF3E = .;
   IF (B2DF3F = 7 OR B2DF3F = 8 OR B2DF3F = 9) THEN B2DF3F = .;
   IF (B2DF3G = 7 OR B2DF3G = 8 OR B2DF3G = 9) THEN B2DF3G = .;
   IF (B2DF3H = 7 OR B2DF3H = 8 OR B2DF3H = 9) THEN B2DF3H = .;
   IF (B2DF3I = 7 OR B2DF3I = 8 OR B2DF3I = 9) THEN B2DF3I = .;
   IF (B2DF4 = 7 OR B2DF4 = 8 OR B2DF4 = 9) THEN B2DF4 = .;
   IF (B2DF4A1 = 7 OR B2DF4A1 = 8 OR B2DF4A1 = 9) THEN B2DF4A1 = .;
   IF (B2DF4A2H = 97 OR B2DF4A2H = 98 OR B2DF4A2H = 99) THEN B2DF4A2H = .;
   IF (B2DF4A2M = 97 OR B2DF4A2M = 98 OR B2DF4A2M = 99) THEN B2DF4A2M = .;
   IF (B2DF4A2A = 7 OR B2DF4A2A = 8 OR B2DF4A2A = 9) THEN B2DF4A2A = .;
   IF (B2DF4B = 7 OR B2DF4B = 8 OR B2DF4B = 9) THEN B2DF4B = .;
   IF (B2DF4WB1 = 7 OR B2DF4WB1 = 8 OR B2DF4WB1 = 9) THEN B2DF4WB1 = .;
   IF (B2DF4WB2 = 7 OR B2DF4WB2 = 8 OR B2DF4WB2 = 9) THEN B2DF4WB2 = .;
   IF (B2DF4WB3 = 7 OR B2DF4WB3 = 8 OR B2DF4WB3 = 9) THEN B2DF4WB3 = .;
   IF (B2DF4WB4 = 7 OR B2DF4WB4 = 8 OR B2DF4WB4 = 9) THEN B2DF4WB4 = .;
   IF (B2DF4WB5 = 7 OR B2DF4WB5 = 8 OR B2DF4WB5 = 9) THEN B2DF4WB5 = .;
   IF (B2DF4WB6 = 7 OR B2DF4WB6 = 8 OR B2DF4WB6 = 9) THEN B2DF4WB6 = .;
   IF (B2DF4C = 7 OR B2DF4C = 8 OR B2DF4C = 9) THEN B2DF4C = .;
   IF (B2DF4D = 7 OR B2DF4D = 8 OR B2DF4D = 9) THEN B2DF4D = .;
   IF (B2DF4E = 7 OR B2DF4E = 8 OR B2DF4E = 9) THEN B2DF4E = .;
   IF (B2DF4F = 7 OR B2DF4F = 8 OR B2DF4F = 9) THEN B2DF4F = .;
   IF (B2DF4G = 7 OR B2DF4G = 8 OR B2DF4G = 9) THEN B2DF4G = .;
   IF (B2DF4H = 7 OR B2DF4H = 8 OR B2DF4H = 9) THEN B2DF4H = .;
   IF (B2DF4I = 7 OR B2DF4I = 8 OR B2DF4I = 9) THEN B2DF4I = .;
   IF (B2DF5 = 7 OR B2DF5 = 8 OR B2DF5 = 9) THEN B2DF5 = .;
   IF (B2DF5A_1 = 7 OR B2DF5A_1 = 8 OR B2DF5A_1 = 9) THEN B2DF5A_1 = .;
   IF (B2DF5A_2 = 7 OR B2DF5A_2 = 8 OR B2DF5A_2 = 9) THEN B2DF5A_2 = .;
   IF (B2DF5A_3 = 7 OR B2DF5A_3 = 8 OR B2DF5A_3 = 9) THEN B2DF5A_3 = .;
   IF (B2DF5A_4 = 7 OR B2DF5A_4 = 8 OR B2DF5A_4 = 9) THEN B2DF5A_4 = .;
   IF (B2DF5A_5 = 7 OR B2DF5A_5 = 8 OR B2DF5A_5 = 9) THEN B2DF5A_5 = .;
   IF (B2DF5A_6 = 7 OR B2DF5A_6 = 8 OR B2DF5A_6 = 9) THEN B2DF5A_6 = .;
   IF (B2DF5A1 = 7 OR B2DF5A1 = 8 OR B2DF5A1 = 9) THEN B2DF5A1 = .;
   IF (B2DF5A2H = 97 OR B2DF5A2H = 98 OR B2DF5A2H = 99) THEN B2DF5A2H = .;
   IF (B2DF5A2M = 97 OR B2DF5A2M = 98 OR B2DF5A2M = 99) THEN B2DF5A2M = .;
   IF (B2DF5A2A = 7 OR B2DF5A2A = 8 OR B2DF5A2A = 9) THEN B2DF5A2A = .;
   IF (B2DF5C = 7 OR B2DF5C = 8 OR B2DF5C = 9) THEN B2DF5C = .;
   IF (B2DF5WC1 = 7 OR B2DF5WC1 = 8 OR B2DF5WC1 = 9) THEN B2DF5WC1 = .;
   IF (B2DF5WC2 = 7 OR B2DF5WC2 = 8 OR B2DF5WC2 = 9) THEN B2DF5WC2 = .;
   IF (B2DF5WC3 = 7 OR B2DF5WC3 = 8 OR B2DF5WC3 = 9) THEN B2DF5WC3 = .;
   IF (B2DF5WC4 = 7 OR B2DF5WC4 = 8 OR B2DF5WC4 = 9) THEN B2DF5WC4 = .;
   IF (B2DF5WC5 = 7 OR B2DF5WC5 = 8 OR B2DF5WC5 = 9) THEN B2DF5WC5 = .;
   IF (B2DF5WC6 = 7 OR B2DF5WC6 = 8 OR B2DF5WC6 = 9) THEN B2DF5WC6 = .;
   IF (B2DF5D = 7 OR B2DF5D = 8 OR B2DF5D = 9) THEN B2DF5D = .;
   IF (B2DF5E = 7 OR B2DF5E = 8 OR B2DF5E = 9) THEN B2DF5E = .;
   IF (B2DF5F = 7 OR B2DF5F = 8 OR B2DF5F = 9) THEN B2DF5F = .;
   IF (B2DF5G = 7 OR B2DF5G = 8 OR B2DF5G = 9) THEN B2DF5G = .;
   IF (B2DF5H = 7 OR B2DF5H = 8 OR B2DF5H = 9) THEN B2DF5H = .;
   IF (B2DF5I = 7 OR B2DF5I = 8 OR B2DF5I = 9) THEN B2DF5I = .;
   IF (B2DF5J = 7 OR B2DF5J = 8 OR B2DF5J = 9) THEN B2DF5J = .;
   IF (B2DF6 = 7 OR B2DF6 = 8 OR B2DF6 = 9) THEN B2DF6 = .;
   IF (B2DF6A = 97 OR B2DF6A = 98 OR B2DF6A = 99) THEN B2DF6A = .;
   IF (B2DF6A1 = 7 OR B2DF6A1 = 8 OR B2DF6A1 = 9) THEN B2DF6A1 = .;
   IF (B2DF6A2H = 97 OR B2DF6A2H = 98 OR B2DF6A2H = 99) THEN B2DF6A2H = .;
   IF (B2DF6A2M = 97 OR B2DF6A2M = 98 OR B2DF6A2M = 99) THEN B2DF6A2M = .;
   IF (B2DF6A2A = 7 OR B2DF6A2A = 8 OR B2DF6A2A = 9) THEN B2DF6A2A = .;
   IF (B2DF6C = 7 OR B2DF6C = 8 OR B2DF6C = 9) THEN B2DF6C = .;
   IF (B2DF6WC1 = 7 OR B2DF6WC1 = 8 OR B2DF6WC1 = 9) THEN B2DF6WC1 = .;
   IF (B2DF6WC2 = 7 OR B2DF6WC2 = 8 OR B2DF6WC2 = 9) THEN B2DF6WC2 = .;
   IF (B2DF6WC3 = 7 OR B2DF6WC3 = 8 OR B2DF6WC3 = 9) THEN B2DF6WC3 = .;
   IF (B2DF6WC4 = 7 OR B2DF6WC4 = 8 OR B2DF6WC4 = 9) THEN B2DF6WC4 = .;
   IF (B2DF6WC5 = 7 OR B2DF6WC5 = 8 OR B2DF6WC5 = 9) THEN B2DF6WC5 = .;
   IF (B2DF6WC6 = 7 OR B2DF6WC6 = 8 OR B2DF6WC6 = 9) THEN B2DF6WC6 = .;
   IF (B2DF6D = 7 OR B2DF6D = 8 OR B2DF6D = 9) THEN B2DF6D = .;
   IF (B2DF6E = 7 OR B2DF6E = 8 OR B2DF6E = 9) THEN B2DF6E = .;
   IF (B2DF6F = 7 OR B2DF6F = 8 OR B2DF6F = 9) THEN B2DF6F = .;
   IF (B2DF6G = 7 OR B2DF6G = 8 OR B2DF6G = 9) THEN B2DF6G = .;
   IF (B2DF6H = 7 OR B2DF6H = 8 OR B2DF6H = 9) THEN B2DF6H = .;
   IF (B2DF6I = 7 OR B2DF6I = 8 OR B2DF6I = 9) THEN B2DF6I = .;
   IF (B2DF6J = 7 OR B2DF6J = 8 OR B2DF6J = 9) THEN B2DF6J = .;
   IF (B2DF7 = 7 OR B2DF7 = 8 OR B2DF7 = 9) THEN B2DF7 = .;
   IF (B2DF7A = 7 OR B2DF7A = 8 OR B2DF7A = 9) THEN B2DF7A = .;
   IF (B2DF7A1H = 97 OR B2DF7A1H = 98 OR B2DF7A1H = 99) THEN B2DF7A1H = .;
   IF (B2DF7A1M = 97 OR B2DF7A1M = 98 OR B2DF7A1M = 99) THEN B2DF7A1M = .;
   IF (B2DF7A1A = 7 OR B2DF7A1A = 8 OR B2DF7A1A = 9) THEN B2DF7A1A = .;
   IF (B2DF7B = 7 OR B2DF7B = 8 OR B2DF7B = 9) THEN B2DF7B = .;
   IF (B2DF7WB1 = 7 OR B2DF7WB1 = 8 OR B2DF7WB1 = 9) THEN B2DF7WB1 = .;
   IF (B2DF7WB2 = 7 OR B2DF7WB2 = 8 OR B2DF7WB2 = 9) THEN B2DF7WB2 = .;
   IF (B2DF7WB3 = 7 OR B2DF7WB3 = 8 OR B2DF7WB3 = 9) THEN B2DF7WB3 = .;
   IF (B2DF7WB4 = 7 OR B2DF7WB4 = 8 OR B2DF7WB4 = 9) THEN B2DF7WB4 = .;
   IF (B2DF7WB5 = 7 OR B2DF7WB5 = 8 OR B2DF7WB5 = 9) THEN B2DF7WB5 = .;
   IF (B2DF7WB6 = 7 OR B2DF7WB6 = 8 OR B2DF7WB6 = 9) THEN B2DF7WB6 = .;
   IF (B2DF7C = 7 OR B2DF7C = 8 OR B2DF7C = 9) THEN B2DF7C = .;
   IF (B2DF7D = 7 OR B2DF7D = 8 OR B2DF7D = 9) THEN B2DF7D = .;
   IF (B2DF7E = 7 OR B2DF7E = 8 OR B2DF7E = 9) THEN B2DF7E = .;
   IF (B2DF7F = 7 OR B2DF7F = 8 OR B2DF7F = 9) THEN B2DF7F = .;
   IF (B2DF7G = 7 OR B2DF7G = 8 OR B2DF7G = 9) THEN B2DF7G = .;
   IF (B2DF7H = 7 OR B2DF7H = 8 OR B2DF7H = 9) THEN B2DF7H = .;
   IF (B2DF7I = 7 OR B2DF7I = 8 OR B2DF7I = 9) THEN B2DF7I = .;
   IF (B2DF8 = 7 OR B2DF8 = 8 OR B2DF8 = 9) THEN B2DF8 = .;
   IF (B2DF8A = 97 OR B2DF8A = 98 OR B2DF8A = 99) THEN B2DF8A = .;
   IF (B2DF8A1 = 7 OR B2DF8A1 = 8 OR B2DF8A1 = 9) THEN B2DF8A1 = .;
   IF (B2DF8A2H = 97 OR B2DF8A2H = 98 OR B2DF8A2H = 99) THEN B2DF8A2H = .;
   IF (B2DF8A2M = 97 OR B2DF8A2M = 98 OR B2DF8A2M = 99) THEN B2DF8A2M = .;
   IF (B2DF8A2A = 7 OR B2DF8A2A = 8 OR B2DF8A2A = 9) THEN B2DF8A2A = .;
   IF (B2DF9 = 7 OR B2DF9 = 8 OR B2DF9 = 9) THEN B2DF9 = .;
   IF (B2DF9A = 97 OR B2DF9A = 98 OR B2DF9A = 99) THEN B2DF9A = .;
   IF (B2DF9A1 = 7 OR B2DF9A1 = 8 OR B2DF9A1 = 9) THEN B2DF9A1 = .;
   IF (B2DF9H = 97 OR B2DF9H = 98 OR B2DF9H = 99) THEN B2DF9H = .;
   IF (B2DF9M = 97 OR B2DF9M = 98 OR B2DF9M = 99) THEN B2DF9M = .;
   IF (B2DF9AP = 7 OR B2DF9AP = 8 OR B2DF9AP = 9) THEN B2DF9AP = .;
   IF (B2DF10 = 7 OR B2DF10 = 8 OR B2DF10 = 9) THEN B2DF10 = .;
   IF (B2DF10A = 97 OR B2DF10A = 98 OR B2DF10A = 99) THEN B2DF10A = .;
   IF (B2DF10A1 = 7 OR B2DF10A1 = 8 OR B2DF10A1 = 9) THEN B2DF10A1 = .;
   IF (B2DF10H = 97 OR B2DF10H = 98 OR B2DF10H = 99) THEN B2DF10H = .;
   IF (B2DF10M = 97 OR B2DF10M = 98 OR B2DF10M = 99) THEN B2DF10M = .;
   IF (B2DF10AP = 7 OR B2DF10AP = 8 OR B2DF10AP = 9) THEN B2DF10AP = .;
   IF (B2DF11 = 7 OR B2DF11 = 8 OR B2DF11 = 9) THEN B2DF11 = .;
   IF (B2DF11A = 97 OR B2DF11A = 98 OR B2DF11A = 99) THEN B2DF11A = .;
   IF (B2DF11A1 = 7 OR B2DF11A1 = 8 OR B2DF11A1 = 9) THEN B2DF11A1 = .;
   IF (B2DF11H = 97 OR B2DF11H = 98 OR B2DF11H = 99) THEN B2DF11H = .;
   IF (B2DF11M = 97 OR B2DF11M = 98 OR B2DF11M = 99) THEN B2DF11M = .;
   IF (B2DF11AP = 7 OR B2DF11AP = 8 OR B2DF11AP = 9) THEN B2DF11AP = .;
   IF (B2DF12 = 7 OR B2DF12 = 8 OR B2DF12 = 9) THEN B2DF12 = .;
   IF (B2DF12A = 97 OR B2DF12A = 98 OR B2DF12A = 99) THEN B2DF12A = .;
   IF (B2DF12A1 = 7 OR B2DF12A1 = 8 OR B2DF12A1 = 9) THEN B2DF12A1 = .;
   IF (B2DF12H = 97 OR B2DF12H = 98 OR B2DF12H = 99) THEN B2DF12H = .;
   IF (B2DF12M = 97 OR B2DF12M = 98 OR B2DF12M = 99) THEN B2DF12M = .;
   IF (B2DF12AP = 7 OR B2DF12AP = 8 OR B2DF12AP = 9) THEN B2DF12AP = .;
   IF (B2DH1_D8 = 7 OR B2DH1_D8 = 8 OR B2DH1_D8 = 9) THEN B2DH1_D8 = .;
   IF (B2DH2_D8 = 7 OR B2DH2_D8 = 8 OR B2DH2_D8 = 9) THEN B2DH2_D8 = .;
   IF (B2DH3_D8 = 7 OR B2DH3_D8 = 8 OR B2DH3_D8 = 9) THEN B2DH3_D8 = .;
   IF (B2DH4_D8 = 7 OR B2DH4_D8 = 8 OR B2DH4_D8 = 9) THEN B2DH4_D8 = .;
   IF (B2DH5_D8 = 7 OR B2DH5_D8 = 8 OR B2DH5_D8 = 9) THEN B2DH5_D8 = .;
   IF (B2DH6_D8 = 7 OR B2DH6_D8 = 8 OR B2DH6_D8 = 9) THEN B2DH6_D8 = .;
   IF (B2DH7_D8 = 7 OR B2DH7_D8 = 8 OR B2DH7_D8 = 9) THEN B2DH7_D8 = .;
   IF (B2DH8_D8 = 7 OR B2DH8_D8 = 8 OR B2DH8_D8 = 9) THEN B2DH8_D8 = .;
   IF (B2DH9_D8 = 7 OR B2DH9_D8 = 8 OR B2DH9_D8 = 9) THEN B2DH9_D8 = .;
   IF (B2DH10D8 = 7 OR B2DH10D8 = 8 OR B2DH10D8 = 9) THEN B2DH10D8 = .;
   IF (B2DH11D8 = 7 OR B2DH11D8 = 8 OR B2DH11D8 = 9) THEN B2DH11D8 = .;
   IF (B2DH12D8 = 7 OR B2DH12D8 = 8 OR B2DH12D8 = 9) THEN B2DH12D8 = .;
   IF (B2DH13D8 = 7 OR B2DH13D8 = 8 OR B2DH13D8 = 9) THEN B2DH13D8 = .;
   IF (B2DH14D8 = 7 OR B2DH14D8 = 8 OR B2DH14D8 = 9) THEN B2DH14D8 = .;
   IF (B2DI1_D8 = 7 OR B2DI1_D8 = 8 OR B2DI1_D8 = 9) THEN B2DI1_D8 = .;
   IF (B2DI1AD8 = 7 OR B2DI1AD8 = 8 OR B2DI1AD8 = 9) THEN B2DI1AD8 = .;
   IF (B2DJ1_D8 = 7 OR B2DJ1_D8 = 8 OR B2DJ1_D8 = 9) THEN B2DJ1_D8 = .;
   IF (B2DJ2_D8 = 7 OR B2DJ2_D8 = 8 OR B2DJ2_D8 = 9) THEN B2DJ2_D8 = .;
   IF (B2DJ3_D8 = 7 OR B2DJ3_D8 = 8 OR B2DJ3_D8 = 9) THEN B2DJ3_D8 = .;
   IF (B2DJ4_D8 = 7 OR B2DJ4_D8 = 8 OR B2DJ4_D8 = 9) THEN B2DJ4_D8 = .;
   IF (B2DJ5_D8 = 7 OR B2DJ5_D8 = 8 OR B2DJ5_D8 = 9) THEN B2DJ5_D8 = .;
   IF (B2DJ6_D8 = 7 OR B2DJ6_D8 = 8 OR B2DJ6_D8 = 9) THEN B2DJ6_D8 = .;
   IF (B2DJ7_D8 = 7 OR B2DJ7_D8 = 8 OR B2DJ7_D8 = 9) THEN B2DJ7_D8 = .;
   IF (B2DJ8_D8 = 7 OR B2DJ8_D8 = 8 OR B2DJ8_D8 = 9) THEN B2DJ8_D8 = .;
   IF (B2DJ9_D8 = 7 OR B2DJ9_D8 = 8 OR B2DJ9_D8 = 9) THEN B2DJ9_D8 = .;
   IF (B2DJ10D8 = 7 OR B2DJ10D8 = 8 OR B2DJ10D8 = 9) THEN B2DJ10D8 = .;
   IF (B2DJ11D8 = 7 OR B2DJ11D8 = 8 OR B2DJ11D8 = 9) THEN B2DJ11D8 = .;
   IF (B2DJ12D8 = 7 OR B2DJ12D8 = 8 OR B2DJ12D8 = 9) THEN B2DJ12D8 = .;
   IF (B2DJ13D8 = 7 OR B2DJ13D8 = 8 OR B2DJ13D8 = 9) THEN B2DJ13D8 = .;
   IF (B2DK1_D8 = 7 OR B2DK1_D8 = 8 OR B2DK1_D8 = 9) THEN B2DK1_D8 = .;
   IF (B2DK1AD8 = 7 OR B2DK1AD8 = 8 OR B2DK1AD8 = 9) THEN B2DK1AD8 = .;
   IF (B2DK2_D8 = 7 OR B2DK2_D8 = 8 OR B2DK2_D8 = 9) THEN B2DK2_D8 = .;
   IF (B2DK2AD8 = 7 OR B2DK2AD8 = 8 OR B2DK2AD8 = 9) THEN B2DK2AD8 = .;
   IF (B2DK3_D8 = 7 OR B2DK3_D8 = 8 OR B2DK3_D8 = 9) THEN B2DK3_D8 = .;
   IF (B2DK3AD8 = 7 OR B2DK3AD8 = 8 OR B2DK3AD8 = 9) THEN B2DK3AD8 = .;
   IF (B2DS14A = 7 OR B2DS14A = 8 OR B2DS14A = 9) THEN B2DS14A = .;
   IF (B2DS14B = 7 OR B2DS14B = 8 OR B2DS14B = 9) THEN B2DS14B = .;
   IF (B2DS14C = 7 OR B2DS14C = 8 OR B2DS14C = 9) THEN B2DS14C = .;
   IF (B2DS14D = 7 OR B2DS14D = 8 OR B2DS14D = 9) THEN B2DS14D = .;
   IF (B2DS14E = 7 OR B2DS14E = 8 OR B2DS14E = 9) THEN B2DS14E = .;
   IF (B2DS14F = 7 OR B2DS14F = 8 OR B2DS14F = 9) THEN B2DS14F = .;
   IF (B2DS14G = 7 OR B2DS14G = 8 OR B2DS14G = 9) THEN B2DS14G = .;
   IF (B2DS14H = 7 OR B2DS14H = 8 OR B2DS14H = 9) THEN B2DS14H = .;
   IF (B2DS14I = 7 OR B2DS14I = 8 OR B2DS14I = 9) THEN B2DS14I = .;
   IF (B2DS15_1 = 7 OR B2DS15_1 = 8 OR B2DS15_1 = 9) THEN B2DS15_1 = .;
   IF (B2DS15_2 = 7 OR B2DS15_2 = 8 OR B2DS15_2 = 9) THEN B2DS15_2 = .;
   IF (B2DS15_3 = 7 OR B2DS15_3 = 8 OR B2DS15_3 = 9) THEN B2DS15_3 = .;
   IF (B2DS15_4 = 7 OR B2DS15_4 = 8 OR B2DS15_4 = 9) THEN B2DS15_4 = .;
   IF (B2DS15_5 = 7 OR B2DS15_5 = 8 OR B2DS15_5 = 9) THEN B2DS15_5 = .;
   IF (B2DS15_6 = 7 OR B2DS15_6 = 8 OR B2DS15_6 = 9) THEN B2DS15_6 = .;
   IF (B2DS15_7 = 7 OR B2DS15_7 = 8 OR B2DS15_7 = 9) THEN B2DS15_7 = .;
   IF (B2DS15_8 = 7 OR B2DS15_8 = 8 OR B2DS15_8 = 9) THEN B2DS15_8 = .;
   IF (B2DS15_9 = 7 OR B2DS15_9 = 8 OR B2DS15_9 = 9) THEN B2DS15_9 = .;
   IF (B2DS1510 = 7 OR B2DS1510 = 8 OR B2DS1510 = 9) THEN B2DS1510 = .;
   IF (B2DS1511 = 7 OR B2DS1511 = 8 OR B2DS1511 = 9) THEN B2DS1511 = .;
   IF (B2DS1512 = 7 OR B2DS1512 = 8 OR B2DS1512 = 9) THEN B2DS1512 = .;
   IF (B2DMED1 = 7 OR B2DMED1 = 8 OR B2DMED1 = 9) THEN B2DMED1 = .;
   IF (B2DMED2 = 7 OR B2DMED2 = 8 OR B2DMED2 = 9) THEN B2DMED2 = .;
   IF (B2DMED3 = 7 OR B2DMED3 = 8 OR B2DMED3 = 9) THEN B2DMED3 = .;
   IF (B2DMED4 = 7 OR B2DMED4 = 8 OR B2DMED4 = 9) THEN B2DMED4 = .;
   IF (B2DMED5 = 7 OR B2DMED5 = 8 OR B2DMED5 = 9) THEN B2DMED5 = .;
   IF (B2DMED6 = 7 OR B2DMED6 = 8 OR B2DMED6 = 9) THEN B2DMED6 = .;
   IF (B2DMED7 = 7 OR B2DMED7 = 8 OR B2DMED7 = 9) THEN B2DMED7 = .;
   IF (B2DMED8 = 7 OR B2DMED8 = 8 OR B2DMED8 = 9) THEN B2DMED8 = .;
   IF (B2DMED9 = 7 OR B2DMED9 = 8 OR B2DMED9 = 9) THEN B2DMED9 = .;
   IF (B2DMED10 = 7 OR B2DMED10 = 8 OR B2DMED10 = 9) THEN B2DMED10 = .;
   IF (B2DCDAY = 8) THEN B2DCDAY = .;
   IF (B2DSMART = 8) THEN B2DSMART = .;
   IF (B2DCWDAY = 8) THEN B2DCWDAY = .;
   IF (B2DCORW >= 999994.00000 AND B2DCORW <= 999998.00000) THEN B2DCORW = .;
   IF (B2DCORA >= 999994.00000 AND B2DCORA <= 999998.00000) THEN B2DCORA = .;
   IF (B2DCORL >= 999994.00000 AND B2DCORL <= 999998.00000) THEN B2DCORL = .;
   IF (B2DCORB >= 999994.00000 AND B2DCORB <= 999998.00000) THEN B2DCORB = .;
   IF (B2DCORWT = 98.00) THEN B2DCORWT = .;
   IF (B2DCORAT = 98.00) THEN B2DCORAT = .;
   IF (B2DCORLT = 98.00) THEN B2DCORLT = .;
   IF (B2DCORBT = 98.00) THEN B2DCORBT = .;
   IF (B2DTZONE = 7 OR B2DTZONE = 8 OR B2DTZONE = 9) THEN B2DTZONE = .;
   IF (B2DN_STR = 8) THEN B2DN_STR = .;
   IF (B2DA_STR = 8) THEN B2DA_STR = .;
   IF (B2DSSEVS = 98) THEN B2DSSEVS = .;
   IF (B2DSSEVA = 8.00) THEN B2DSSEVA = .;
   IF (B2DSNEGS = 98) THEN B2DSNEGS = .;
   IF (B2DSNEGA = 8.00) THEN B2DSNEGA = .;
   IF (B2DSAPRA = 8.00) THEN B2DSAPRA = .;
   IF (B2DSAPRB = 8.00) THEN B2DSAPRB = .;
   IF (B2DSAPRC = 8.00) THEN B2DSAPRC = .;
   IF (B2DSAPRD = 8.00) THEN B2DSAPRD = .;
   IF (B2DSAPRE = 8.00) THEN B2DSAPRE = .;
   IF (B2DSAPRF = 8.00) THEN B2DSAPRF = .;
   IF (B2DSAPRG = 8.00) THEN B2DSAPRG = .;
   IF (B2DSCOTS = 98) THEN B2DSCOTS = .;
   IF (B2DSCOTA = 8.00) THEN B2DSCOTA = .;
   IF (B2DN_SYM = 98) THEN B2DN_SYM = .;
   IF (B2DA_SYM = 8) THEN B2DA_SYM = .;
   IF (B2DSYMAV = 98.00) THEN B2DSYMAV = .;
   IF (B2DN_POS = 8) THEN B2DN_POS = .;
   IF (B2DA_POS = 8) THEN B2DA_POS = .;
   IF (B2DPOSAV = 8.00) THEN B2DPOSAV = .;
   IF (B2DNEGAV = 8.00) THEN B2DNEGAV = .;
*/


* SAS FORMAT STATEMENT;

/*
  FORMAT SAMPLMAJ samplmaj. B1PAGE_M2 b1page_f. B1PGENDER b1pgendf.
         B2DDAY b2dday. B2DMISS b2dmiss. B2DDAYT b2ddayt.
         B2DWEEKD b2dweekd. B2DWAKE1 b2dwakef. B2DWAKE2 b2dwak0f.
         B2DWAKE3 b2dwak1f. B2DAW1CH b2daw1ch. B2DAW1CM b2daw1cm.
         B2DA1H b2da1h. B2DA1M b2da1m. B2DA2H b2da2h.
         B2DA2M b2da2m. B2DA3H b2da3h. B2DA3M b2da3m.
         B2DA3AH2 b2da3ahf. B2DA3AM2 b2da3amf. B2DA3AAP b2da3aap.
         B2DA3BH2 b2da3bhf. B2DA3BM2 b2da3bmf. B2DA3BAP b2da3bap.
         B2DA4H b2da4h. B2DA4M b2da4m. B2DAW4H b2daw4h.
         B2DAW4M b2daw4m. B2DA4AH b2da4ah. B2DA4AM b2da4am.
         B2DAW5AH b2daw5ah. B2DAW5AM b2daw5am. B2DAW5AA b2daw5aa.
         B2DA9 b2da9fff. B2DA9AH b2da9ah. B2DA9AM b2da9am.
         B2DA10 b2da10ff. B2DA10A1 b2da10af. B2DA10A2 b2da100f.
         B2DA10A3 b2da101f. B2DA10A4 b2da102f. B2DA10A5 b2da103f.
         B2DA10A6 b2da104f. B2DA10A7 b2da105f. B2DA10A8 b2da106f.
         B2DA10A9 b2da107f. B2DA1010 b2da108f. B2DA1011 b2da109f.
         B2DA1012 b2da110f. B2DA1013 b2da111f. B2DA1014 b2da112f.
         B2DA1015 b2da113f. B2DA1016 b2da114f. B2DA1017 b2da115f.
         B2DA1018 b2da116f. B2DA1019 b2da117f. B2DA1020 b2da118f.
         B2DA1021 b2da119f. B2DA1022 b2da120f. B2DA1023 b2da121f.
         B2DA1024 b2da122f. B2DA1025 b2da123f. B2DA10BH b2da10bh.
         B2DA10BM b2da10bm. B2DA11 b2da11ff. B2DA11A1 b2da11af.
         B2DA11A2 b2da124f. B2DA11A3 b2da125f. B2DA11A4 b2da126f.
         B2DA11A5 b2da127f. B2DA11A6 b2da128f. B2DA11A7 b2da129f.
         B2DA11A8 b2da130f. B2DA11A9 b2da131f. B2DA1110 b2da132f.
         B2DA1111 b2da133f. B2DA1112 b2da134f. B2DA1113 b2da135f.
         B2DA1114 b2da136f. B2DA1115 b2da137f. B2DA1116 b2da138f.
         B2DA1117 b2da139f. B2DA1118 b2da140f. B2DA1119 b2da141f.
         B2DA1120 b2da142f. B2DA1121 b2da143f. B2DA1122 b2da144f.
         B2DA1123 b2da145f. B2DA1124 b2da146f. B2DA1125 b2da147f.
         B2DA11BH b2da11bh. B2DA11BM b2da11bm. B2DA12 b2da12ff.
         B2DA12A1 b2da12af. B2DA12A2 b2da148f. B2DA12A3 b2da149f.
         B2DA12A4 b2da150f. B2DA12A5 b2da151f. B2DA12A6 b2da152f.
         B2DA12A7 b2da153f. B2DA12A8 b2da154f. B2DA12A9 b2da155f.
         B2DA1210 b2da156f. B2DA1211 b2da157f. B2DA1212 b2da158f.
         B2DA1213 b2da159f. B2DA1214 b2da160f. B2DA1215 b2da161f.
         B2DA1216 b2da162f. B2DA1217 b2da163f. B2DA1218 b2da164f.
         B2DA1220 b2da165f. B2DA1221 b2da166f. B2DA1222 b2da167f.
         B2DA1223 b2da168f. B2DA1224 b2da169f. B2DA1225 b2da170f.
         B2DA12BH b2da12bh. B2DA12BM b2da12bm. B2DA13 b2da13ff.
         B2DA13A1 b2da13af. B2DA13A2 b2da171f. B2DA13A3 b2da172f.
         B2DA13A4 b2da173f. B2DA13A5 b2da174f. B2DA13A6 b2da175f.
         B2DA13A7 b2da176f. B2DA13A8 b2da177f. B2DA13A9 b2da178f.
         B2DA1310 b2da179f. B2DA1311 b2da180f. B2DA1312 b2da181f.
         B2DA1313 b2da182f. B2DA1314 b2da183f. B2DA1315 b2da184f.
         B2DA1316 b2da185f. B2DA1317 b2da186f. B2DA1318 b2da187f.
         B2DA1319 b2da188f. B2DA1320 b2da189f. B2DA1321 b2da190f.
         B2DA1322 b2da191f. B2DA1323 b2da192f. B2DA1324 b2da193f.
         B2DA1325 b2da194f. B2DA13BH b2da13bh. B2DA13BM b2da13bm.
         B2DAC1 b2dac1ff. B2DAC2D1 b2dac2df. B2DAC2D2 b2dac20f.
         B2DAC2D3 b2dac21f. B2DAC2D4 b2dac22f. B2DAC2D5 b2dac23f.
         B2DAC2D6 b2dac24f. B2DAC2D7 b2dac25f. B2DAC2D8 b2dac26f.
         B2DAC2D9 b2dac27f. B2DAC21A b2dac21a. B2DAC21B b2dac21b.
         B2DAC21C b2dac21c. B2DAC21D b2dac21d. B2DAC21E b2dac21e.
         B2DAC21F b2dac28f. B2DAC21G b2dac21g. B2DAC21H b2dac21h.
         B2DAC21I b2dac21i. B2DAC21J b2dac21j. B2DAC21K b2dac21k.
         B2DAC21L b2dac21l. B2DAC21M b2dac21m. B2DAC21N b2dac21n.
         B2DAC21O b2dac21o. B2DAC3 b2dac3ff. B2DAC4H b2dac4h.
         B2DAC4M b2dac4m. B2DB1A b2db1a. B2DB1A2 b2db1a2f.
         B2DB1B b2db1b. B2DB1B2 b2db1b2f. B2DB1C b2db1c.
         B2DB1C2 b2db1c2f. B2DB1D b2db1d. B2DB1D2 b2db1d2f.
         B2DB1E b2db1e. B2DB1E2 b2db1e2f. B2DB1F b2db1f.
         B2DB1F2 b2db1f2f. B2DB1G b2db1g. B2DB1G2 b2db1g2f.
         B2DB1H b2db1h. B2DB1H2 b2db1h2f. B2DB1I b2db1i.
         B2DB1I2 b2db1i2f. B2DB1J b2db1j. B2DB1J2 b2db1j2f.
         B2DB1K b2db1k. B2DB1K2 b2db1k2f. B2DB1L b2db1l.
         B2DB1L2 b2db1l2f. B2DB1LA b2db1la. B2DB1LA2 b2db1laf.
         B2DB1M b2db1m. B2DB1M2 b2db1m2f. B2DB1N b2db1n.
         B2DB1N2 b2db1n2f. B2DB1O b2db1o. B2DB1O2 b2db1o2f.
         B2DB1P b2db1p. B2DB1P2 b2db1p2f. B2DB1Q b2db1q.
         B2DB1Q2 b2db1q2f. B2DB1R b2db1r. B2DB1R2 b2db1r2f.
         B2DB1S b2db1s. B2DB1S2 b2db1s2f. B2DB1T b2db1t.
         B2DB1T2 b2db1t2f. B2DB1U b2db1u. B2DB1U2 b2db1u2f.
         B2DB1V b2db1v. B2DB1V2 b2db1v2f. B2DB1W b2db1w.
         B2DB1W2 b2db1w2f. B2DB1X b2db1x. B2DB1X2 b2db1x2f.
         B2DB1Y b2db1y. B2DB1Y2 b2db1y2f. B2DB1Z b2db1z.
         B2DB1Z2 b2db1z2f. B2DB1LEG b2db1leg. B2DB1LE2 b2db1lef.
         B2DB2 b2db2fff. B2DB3 b2db3fff. B2DC1 b2dc1fff.
         B2DC2 b2dc2fff. B2DC3 b2dc3fff. B2DC4 b2dc4fff.
         B2DC5 b2dc5fff. B2DC6 b2dc6fff. B2DC7 b2dc7fff.
         B2DC8 b2dc8fff. B2DC9 b2dc9fff. B2DC10 b2dc10ff.
         B2DC11 b2dc11ff. B2DC12 b2dc12ff. B2DC13 b2dc13ff.
         B2DC14 b2dc14ff. B2DC15 b2dc15ff. B2DC16 b2dc16ff.
         B2DC17 b2dc17ff. B2DC18 b2dc18ff. B2DC19 b2dc19ff.
         B2DC20 b2dc20ff. B2DC21 b2dc21ff. B2DC22 b2dc22ff.
         B2DC23 b2dc23ff. B2DC24 b2dc24ff. B2DC25 b2dc25ff.
         B2DC26 b2dc26ff. B2DC27 b2dc27ff. B2DD1 b2dd1fff.
         B2DD1A b2dd1a. B2DD1B b2dd1b. B2DD2 b2dd2fff.
         B2DD2A b2dd2a. B2DD3 b2dd3fff. B2DD3A b2dd3a.
         B2DD4 b2dd4fff. B2DD4A b2dd4a. B2DF1 b2df1fff.
         B2DF1A b2df1a. B2DF1A1 b2df1a1f. B2DF1A2H b2df1a2h.
         B2DF1A2M b2df1a2m. B2DF1A2A b2df1a2a. B2DF1C b2df1c.
         B2DF1WC1 b2df1wcf. B2DF1WC2 b2df1w0f. B2DF1WC3 b2df1w1f.
         B2DF1WC4 b2df1w2f. B2DF1WC5 b2df1w3f. B2DF1WC6 b2df1w4f.
         B2DF1D b2df1d. B2DF1E b2df1e. B2DF1F b2df1f.
         B2DF1G b2df1g. B2DF1H b2df1h. B2DF1I b2df1i.
         B2DF1J b2df1j. B2DF2 b2df2fff. B2DF2A b2df2a.
         B2DF2A1 b2df2a1f. B2DF2A2H b2df2a2h. B2DF2A2M b2df2a2m.
         B2DF2A2A b2df2a2a. B2DF2C b2df2c. B2DF2WC1 b2df2wcf.
         B2DF2WC2 b2df2w0f. B2DF2WC3 b2df2w1f. B2DF2WC4 b2df2w2f.
         B2DF2WC5 b2df2w3f. B2DF2WC6 b2df2w4f. B2DF2D b2df2d.
         B2DF2E b2df2e. B2DF2F b2df2f. B2DF2G b2df2g.
         B2DF2H b2df2h. B2DF2I b2df2i. B2DF2J b2df2j.
         B2DF3 b2df3fff. B2DF3A1 b2df3a1f. B2DF3A2H b2df3a2h.
         B2DF3A2M b2df3a2m. B2DF3A2A b2df3a2a. B2DF3B b2df3b.
         B2DF3WB1 b2df3wbf. B2DF3WB2 b2df3w0f. B2DF3WB3 b2df3w1f.
         B2DF3WB4 b2df3w2f. B2DF3WB5 b2df3w3f. B2DF3WB6 b2df3w4f.
         B2DF3C b2df3c. B2DF3D b2df3d. B2DF3E b2df3e.
         B2DF3F b2df3f. B2DF3G b2df3g. B2DF3H b2df3h.
         B2DF3I b2df3i. B2DF4 b2df4fff. B2DF4A1 b2df4a1f.
         B2DF4A2H b2df4a2h. B2DF4A2M b2df4a2m. B2DF4A2A b2df4a2a.
         B2DF4B b2df4b. B2DF4WB1 b2df4wbf. B2DF4WB2 b2df4w0f.
         B2DF4WB3 b2df4w1f. B2DF4WB4 b2df4w2f. B2DF4WB5 b2df4w3f.
         B2DF4WB6 b2df4w4f. B2DF4C b2df4c. B2DF4D b2df4d.
         B2DF4E b2df4e. B2DF4F b2df4f. B2DF4G b2df4g.
         B2DF4H b2df4h. B2DF4I b2df4i. B2DF5 b2df5fff.
         B2DF5A_1 b2df5a_f. B2DF5A_2 b2df5a0f. B2DF5A_3 b2df5a1f.
         B2DF5A_4 b2df5a2f. B2DF5A_5 b2df5a3f. B2DF5A_6 b2df5a4f.
         B2DF5A1 b2df5a5f. B2DF5A2H b2df5a2h. B2DF5A2M b2df5a2m.
         B2DF5A2A b2df5a2a. B2DF5C b2df5c. B2DF5WC1 b2df5wcf.
         B2DF5WC2 b2df5w0f. B2DF5WC3 b2df5w1f. B2DF5WC4 b2df5w2f.
         B2DF5WC5 b2df5w3f. B2DF5WC6 b2df5w4f. B2DF5D b2df5d.
         B2DF5E b2df5e. B2DF5F b2df5f. B2DF5G b2df5g.
         B2DF5H b2df5h. B2DF5I b2df5i. B2DF5J b2df5j.
         B2DF6 b2df6fff. B2DF6A b2df6a. B2DF6A1 b2df6a1f.
         B2DF6A2H b2df6a2h. B2DF6A2M b2df6a2m. B2DF6A2A b2df6a2a.
         B2DF6C b2df6c. B2DF6WC1 b2df6wcf. B2DF6WC2 b2df6w0f.
         B2DF6WC3 b2df6w1f. B2DF6WC4 b2df6w2f. B2DF6WC5 b2df6w3f.
         B2DF6WC6 b2df6w4f. B2DF6D b2df6d. B2DF6E b2df6e.
         B2DF6F b2df6f. B2DF6G b2df6g. B2DF6H b2df6h.
         B2DF6I b2df6i. B2DF6J b2df6j. B2DF7 b2df7fff.
         B2DF7A b2df7a. B2DF7A1H b2df7a1h. B2DF7A1M b2df7a1m.
         B2DF7A1A b2df7a1a. B2DF7B b2df7b. B2DF7WB1 b2df7wbf.
         B2DF7WB2 b2df7w0f. B2DF7WB3 b2df7w1f. B2DF7WB4 b2df7w2f.
         B2DF7WB5 b2df7w3f. B2DF7WB6 b2df7w4f. B2DF7C b2df7c.
         B2DF7D b2df7d. B2DF7E b2df7e. B2DF7F b2df7f.
         B2DF7G b2df7g. B2DF7H b2df7h. B2DF7I b2df7i.
         B2DF8 b2df8fff. B2DF8A b2df8a. B2DF8A1 b2df8a1f.
         B2DF8A2H b2df8a2h. B2DF8A2M b2df8a2m. B2DF8A2A b2df8a2a.
         B2DF9 b2df9fff. B2DF9A b2df9a. B2DF9A1 b2df9a1f.
         B2DF9H b2df9h. B2DF9M b2df9m. B2DF9AP b2df9ap.
         B2DF10 b2df10ff. B2DF10A b2df10a. B2DF10A1 b2df10af.
         B2DF10H b2df10h. B2DF10M b2df10m. B2DF10AP b2df10ap.
         B2DF11 b2df11ff. B2DF11A b2df11a. B2DF11A1 b2df11af.
         B2DF11H b2df11h. B2DF11M b2df11m. B2DF11AP b2df11ap.
         B2DF12 b2df12ff. B2DF12A b2df12a. B2DF12A1 b2df12af.
         B2DF12H b2df12h. B2DF12M b2df12m. B2DF12AP b2df12ap.
         B2DH1_D8 b2dh1_df. B2DH2_D8 b2dh2_df. B2DH3_D8 b2dh3_df.
         B2DH4_D8 b2dh4_df. B2DH5_D8 b2dh5_df. B2DH6_D8 b2dh6_df.
         B2DH7_D8 b2dh7_df. B2DH8_D8 b2dh8_df. B2DH9_D8 b2dh9_df.
         B2DH10D8 b2dh10df. B2DH11D8 b2dh11df. B2DH12D8 b2dh12df.
         B2DH13D8 b2dh13df. B2DH14D8 b2dh14df. B2DI1_D8 b2di1_df.
         B2DI1AD8 b2di1adf. B2DJ1_D8 b2dj1_df. B2DJ2_D8 b2dj2_df.
         B2DJ3_D8 b2dj3_df. B2DJ4_D8 b2dj4_df. B2DJ5_D8 b2dj5_df.
         B2DJ6_D8 b2dj6_df. B2DJ7_D8 b2dj7_df. B2DJ8_D8 b2dj8_df.
         B2DJ9_D8 b2dj9_df. B2DJ10D8 b2dj10df. B2DJ11D8 b2dj11df.
         B2DJ12D8 b2dj12df. B2DJ13D8 b2dj13df. B2DK1_D8 b2dk1_df.
         B2DK1AD8 b2dk1adf. B2DK2_D8 b2dk2_df. B2DK2AD8 b2dk2adf.
         B2DK3_D8 b2dk3_df. B2DK3AD8 b2dk3adf. B2DS14A b2ds14a.
         B2DS14B b2ds14b. B2DS14C b2ds14c. B2DS14D b2ds14d.
         B2DS14E b2ds14e. B2DS14F b2ds14f. B2DS14G b2ds14g.
         B2DS14H b2ds14h. B2DS14I b2ds14i. B2DS15_1 b2ds15_f.
         B2DS15_2 b2ds150f. B2DS15_3 b2ds151f. B2DS15_4 b2ds152f.
         B2DS15_5 b2ds153f. B2DS15_6 b2ds154f. B2DS15_7 b2ds155f.
         B2DS15_8 b2ds156f. B2DS15_9 b2ds157f. B2DS1510 b2ds158f.
         B2DS1511 b2ds159f. B2DS1512 b2ds110f. B2DMED1 b2dmed1f.
         B2DMED2 b2dmed2f. B2DMED3 b2dmed3f. B2DMED4 b2dmed4f.
         B2DMED5 b2dmed5f. B2DMED6 b2dmed6f. B2DMED7 b2dmed7f.
         B2DMED8 b2dmed8f. B2DMED9 b2dmed9f. B2DMED10 b2dmed0f.
         B2DCORT b2dcort. B2DCDAY b2dcday. B2DSMART b2dsmart.
         B2DCWDAY b2dcwday. B2DCORW b2dcorw. B2DCORA b2dcora.
         B2DCORL b2dcorl. B2DCORB b2dcorb. B2DCORWT b2dcorwt.
         B2DCORAT b2dcorat. B2DCORLT b2dcorlt. B2DCORBT b2dcorbt.
         B2DTZONE b2dtzone. B2DN_STR b2dn_str. B2DA_STR b2da_str.
         B2DSSEVS b2dssevs. B2DSSEVA b2dsseva. B2DSNEGS b2dsnegs.
         B2DSNEGA b2dsnega. B2DSAPRA b2dsapra. B2DSAPRB b2dsaprb.
         B2DSAPRC b2dsaprc. B2DSAPRD b2dsaprd. B2DSAPRE b2dsapre.
         B2DSAPRF b2dsaprf. B2DSAPRG b2dsaprg. B2DSCOTS b2dscots.
         B2DSCOTA b2dscota. B2DN_SYM b2dn_sym. B2DA_SYM b2da_sym.
         B2DSYMAV b2dsymav. B2DN_POS b2dn_pos. B2DA_POS b2da_pos.
         B2DPOSAV b2dposav. B2DNEGAV b2dnegav.  ;
*/

RUN ;
