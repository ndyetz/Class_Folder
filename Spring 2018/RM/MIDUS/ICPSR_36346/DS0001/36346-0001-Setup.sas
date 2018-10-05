/*-------------------------------------------------------------------------
 |                                                                         
 |                    SAS SETUP FILE FOR ICPSR 36346
 |      NATIONAL SURVEY OF MIDLIFE DEVELOPMENT IN THE UNITED STATES
 |                          (MIDUS 3), 2013-2014
 |                     (DATASET 0001: AGGREGATE DATA)
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
 | "c:\temp\36346-0001-data.txt").
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
VALUE c1se9fff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA'
                1='(1) SITUATION 1: AT THE CIRCUS WHEN TWO LIONS SUDDENLY GET LOOSE'
                2='(2) SITUATION 2: WHOLE FAMILY TO THE CIRCUS & NOT BEING ABLE TO GET IN'
                8='(8) REFUSED';
VALUE c1pa48ff  1='(1) YES' 2='(2) NO' 3='(3) DON''T CURRENTLY HAVE A JOB'
                7='(7) DON''T KNOW' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1pb33ff  1='(01) NO SCHOOL/SOME GRADE SCHOOL (1-6)'
                2='(02) EIGHTH GRADE/JUNIOR HIGH SCHOOL (7-8)'
                3='(03) SOME HIGH SCHOOL (9-12 NO DIPLOMA/NO GED)' 4='(04) GED'
                5='(05) GRADUATED FROM HIGH SCHOOL' 6='(06) 1 TO 2 YEARS OF COLLEGE, NO DEGREE YET'
                7='(07) 3 OR MORE YEARS OF COLLEGE, NO DEGREE YET'
                8='(08) GRAD. FROM 2-YEAR COLLEGE, VOCATIONAL SCHOOL, OR ASSOC. DEG.'
                9='(09) GRADUATED FROM A 4- OR 5-YEAR COLLEGE, OR BACHELOR''S DEG.'
                10='(10) SOME GRADUATE SCHOOL' 11='(11) MASTER''S DEGREE'
                12='(12) PH.D., ED.D., MD, DDS, LLB, LLD, JD, OR OTHER PROFESS''NL DEG.'
                97='(97) DON''T KNOW' 98='(98) REFUSED' 99='(99) INAPP';
VALUE c1sg9fff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) VERY DIFFICULT'
                2='(2) SOMEWHAT DIFFICULT' 3='(3) NOT VERY DIFFICULT' 4='(4) NOT AT ALL DIFFICULT '
                8='(8) REFUSED ';
VALUE c1sa24af  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) A LOT' 2='(2) SOME'
                3='(3) A LITTLE' 4='(4) NOT AT ALL' 8='(8) REFUSED';
VALUE c1schrof  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 0='(0) NO' 1='(1) YES'
                8='(8) NOT CALCULATED (Due to missing data)';
VALUE c1sg11af  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(01) LESS THAN $0'
                2='(02) $O (NONE)' 3='(03) $1 - $1,999' 4='(04) $2,000 - $3,999' 5='(05) $4,000 - $5,999'
                6='(06) $6,000 - $7,999' 7='(07) $8,000 - $9,999' 8='(08) $10,000 - $11,999'
                9='(09) $12,000 - $13,999' 10='(10) $14,000 - $15,999' 11='(11) $16,000 - $17,999'
                12='(12) $18,000 - $19,999' 13='(13) $20,000 - $22,499' 14='(14) $22,500 - $24,499'
                15='(15) $25,000 - $27,499' 16='(16) $27,500 - $29,999' 17='(17) $30,000 - $32,499'
                18='(18) $32,500 - $34,999' 19='(19) $35,000 - $37,499' 20='(20) $37,500 - $39,999'
                21='(21) $40,000 - $42,499' 22='(22) $42,500 - $44,999' 23='(23) $45,000 - $47,499'
                24='(24) $47,500 - $49,999' 25='(25) $50,000 - $54,999' 26='(26) $55,000 - $59,999'
                27='(27) $60,000 - $64,999' 28='(28) $65,000 - $69,999' 29='(29) $70,000 - $74,999'
                30='(30) $75,000 - $79,999' 31='(31) $80,000 - $84,999' 32='(32) $85,000 - $89,999'
                33='(33) $90,000 - $94,999' 34='(34) $95,000 - $99,999' 35='(35) $100,000 - $109,999'
                36='(36) $110,000 - $119,999' 37='(37) $120,000 - $129,999' 38='(38) $130,000 - $139,999'
                39='(39) $140,000 - $149,999' 40='(40) $150,000 - $174,999' 41='(41) $175,000 - $199,999'
                42='(42) $200,000 - $249,999' 43='(43) $250,000 - $299,999' 44='(44) $300,000 OR MORE'
                98='(98) REFUSED' 99='(99) INAPP';
VALUE c1sg40ff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) HOUSE'
                2='(2) APARTMENT' 3='(3) CONDOMINIUM' 4='(4) MOBILE HOME' 5='(5) OTHER, PLEASE SPECIFY'
                8='(8) REFUSED';
VALUE c1pf3fff  1='(1) C1PF2A' 2='(2) C1PF2B' 3='(3) C1PF2C' 4='(4) OTHER (SPECIFY)'
                7='(7) DON''T KNOW' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1pd15ff  96='(96) 96 OR MORE HOURS PER WEEK' 97='(97) DON''T KNOW'
                98='(98) REFUSED' 99='(99) INAPP';
VALUE c1sg21ff  -1='(-0000001) RESPONDENT DOES NOT HAVE SAQ DATA'
                99999998='(99999998) REFUSED' 99999999='(99999999) INAPP';
VALUE c1pb7aff  996='(996) 996 OR MORE PEOPLE' 997='(997) DON''T KNOW' 998='(998) REFUSED'
                999='(999) INAPP';
VALUE c1pb19ff  1='(1) MARRIED' 2='(2) SEPARATED' 3='(3) DIVORCED' 4='(4) WIDOWED'
                5='(5) NEVER MARRIED' 7='(7) DON''T KNOW' 8='(8) REFUSED';
VALUE c1sn10cf  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) A GREAT DEAL'
                2='(2) SOMEWHAT' 3='(3) A LITTLE BIT' 4='(4) NOT AT ALL' 8='(8) REFUSED';
VALUE c1sa60ff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) NEVER '
                2='(2) ONCE OR TWICE' 3='(3) 3 TO 5 TIMES' 4='(4) 6 TO 10 TIMES' 5='(5) 11 TO 20 TIMES'
                6='(6) MORE THAN 20 TIMES' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1pb16ff  99999997='(99999997) DON''T KNOW' 99999998='(99999998) REFUSED'
                99999999='(99999999) INAPP';
VALUE c1pa83ff  1='(1) MORE' 2='(2) LESS' 3='(3) ABOUT THE SAME'
                4='(4) I DON''T WORRY AT ALL (VOLUNTEERED)' 7='(7) DON''T KNOW' 8='(8) REFUSED';
VALUE c1pg1fff  1='(1) VERY' 2='(2) SOMEWHAT' 3='(3) A LITTLE' 4='(4) NOT AT ALL'
                7='(7) DON''T KNOW' 8='(8) REFUSED';
VALUE c1pb31nf  996='(996) NEVER LIVED TOGETHER' 997='(997) DON''T KNOW'
                998='(998) REFUSED' 999='(999) INAPP';
VALUE c1sa12af  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) DAILY'
                2='(2) A FEW TIMES A WEEK' 3='(3) ONCE A WEEK' 4='(4) A FEW TIMES A MONTH'
                5='(5) ONCE THIS MONTH' 6='(6) NOT AT ALL' 8='(8) REFUSED';
VALUE c1sg35ff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) COMMENTS GIVEN'
                8='(8) REFUSED' 9='(9) INAPP';
VALUE c1pf12bf  1='(1) ENTER COUNTRY' 7='(7) DON''T KNOW' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1sg25af  -1='(-00001) RESPONDENT DOES NOT HAVE SAQ DATA'
                300000='(300000) $300,000 OR MORE' 999998='(999998) REFUSED' 999999='(999999) INAPP';
VALUE c1pa24ff  1='(1) YES' 2='(2) NO' 3='(3) SUSPECTS' 7='(7) DON''T KNOW'
                8='(8) REFUSED' 9='(9) INAPP';
VALUE c1sg32ff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) YES' 2='(2) NO'
                4='(4) DOES NOT APPLY' 7='(7) DON''T KNOW' 8='(8) REFUSED';
VALUE c1pa88af  1='(1) MOST DAYS' 2='(2) ABOUT HALF THE DAYS'
                3='(3) LESS THAN HALF THE DAYS' 4='(4) NEVER' 7='(7) DON''T KNOW' 8='(8) REFUSED'
                9='(9) INAPP';
VALUE c1srincf  -1='(-00001) RESPONDENT DOES NOT HAVE SAQ DATA'
                300000='(300000) $300,000 OR MORE' 999998='(999998) NOT CALCULATED (Due to missing data)';
VALUE c1sb7fff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) LIGHTER'
                2='(2) HEAVIER' 3='(3) ABOUT THE SAME' 8='(8) REFUSED' 9='(9) INAPP ';
VALUE c1pa84ff  1='(1) EVERY DAY' 2='(2) JUST ABOUT EVERY DAY' 3='(3) MOST DAYS'
                4='(4) ABOUT HALF THE DAYS' 5='(5) LESS THAN HALF THE DAYS' 7='(7) DON''T KNOW'
                8='(8) REFUSED' 9='(9) INAPP';
VALUE c1sa47ff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA'
                1='(01) FAMILY DOCTOR/ GENERALIST' 2='(02) OBSTETRICIAN/ GYNECOLOGIST' 3='(03) INTERNIST'
                4='(04) CHIROPRACTOR' 5='(05) PHYSICIANS ASSISTANT/ NURSE PRACTITIONER'
                6='(06) OTHER HEALTHCARE PROFESSIONAL'
                7='(07) HOMEOPATHIC, ALTERNATIVE, COMPLEMENTARY,NONTRADITIONAL'
                8='(08) NO ONE IN PARTICULAR' 98='(98) REFUSED';
VALUE c1sf27af  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) 4 OR MORE TIMES/WEEK'
                2='(2) 2 TO 3 TIMES/WEEK' 3='(3) ONCE A WEEK' 4='(4) 1 TO 3 TIMES/MONTH'
                5='(5) LESS THAN ONCE A MONTH OR NEVER' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1pa22ff  1='(1) CENTER OF CHEST' 2='(2) LEFT SIDE OF CHEST ONLY'
                3='(3) LEFT SIDE OF CHEST AND LEFT ARM' 4='(4) SOMEWHERE ELSE (SPECIFY)'
                7='(7) DON''T KNOW' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1pa25nf  0='(00) LESS THAN 1 MONTH' 96='(96) NEVER' 97='(97) DON''T KNOW'
                98='(98) REFUSED';
VALUE c1sl13ff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA'
                1='(1) YOU DO A LOT MORE THAN YOUR SPOUSE' 2='(2) YOU DO SOMEWHAT MORE THAN YOUR SPOUSE'
                3='(3) YOU DO A LITTLE MORE THAN YOUR SPOUSE' 4='(4) CHORES ARE SPLIT EQUALLY'
                5='(5) YOUR SPOUSE DOES A LITTLE MORE THAN YOU'
                6='(6) YOUR SPOUSE DOES SOMEWHAT MORE THAN YOU'
                7='(7) YOUR SPOUSE DOES A LOT MORE THAN YOU' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1pdepa_1f  0='(0) Negative' 1='(1) Positive';
VALUE c1sk8a2f  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) YES' 2='(2) NO'
                3='(3) DOES NOT APPLY' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1pocmaf  1='(01) MANAGEMENT, BUSINESS, AND FINANCIAL OCCUPATIONS'
                2='(02) PROFESSIONAL AND RELATED OCCUPATIONS' 3='(03) SERVICE OCCUPATIONS'
                4='(04) SALES AND RELATED OCCUPATIONS'
                5='(05) OFFICE AND ADMINISTRATIVE SUPPORT OCCUPATIONS'
                6='(06) FARMING, FISHING, AND FORESTRY OCCUPATIONS'
                7='(07) CONSTRUCTION AND EXTRACTION OCCUPATIONS'
                8='(08) INSTALLATION, MAINTENANCE, AND REPAIE OCCUPATIONS'
                9='(09) PRODUCTION OCCUPATIONS' 10='(10) TRANSPORTATION AND MATERIAL MOVING OCCUPATIONS'
                11='(11) ARMED FORCES' 96='(96) NOT IN LABOR FORCE' 97='(97) UNKNOWN OR UNSURE'
                98='(98) MISSING OR NOT REPORTED' 99='(99) INAPP';
VALUE c1sg38ff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) OWN' 2='(2) RENT'
                8='(8) REFUSED';
VALUE c1sm12ff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) NEVER'
                2='(2) SOMEOF THE TIME' 3='(3) MOST OF THE TIMES' 4='(4) ALWAYS' 8='(8) REFUSED'
                9='(9) INAPP';
VALUE c1sb8a1f  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA'
                1='(1) MED NAME AND DOSAGE SPECIFIED' 2='(2) MED NAME AND DOSAGE UNSPECIFIED'
                8='(8) REFUSED' 9='(9) INAPP';
VALUE c1sg42ff  -1='(-0000001) RESPONDENT DOES NOT HAVE SAQ DATA'
                10000000='(10000000) $10,000,000 OR MORE' 99999998='(99999998) REFUSED'
                99999999='(99999999) INAPP';
VALUE c1sjcsdf  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA'
                98='(98) NOT CALCULATED (Due to missing data)'
                99='(99) NOT CALCULATED (Due to Does not apply)';
VALUE c1sa7aff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) EXCELLENT' 2='(2) GOOD'
                3='(3) AVERAGE' 4='(4) FAIR' 5='(5) POOR' 8='(8) REFUSED';
VALUE c1sk2fff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 0='(00) WORST' 10='(10) BEST'
                98='(98) REFUSED' 99='(99) INAPP';
VALUE c1sg7fff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA'
                1='(1) MORE MONEY THAN YOU NEED' 2='(2) JUST ENOUGH MONEY' 3='(3) NOT ENOUGH MONEY'
                8='(8) REFUSED';
VALUE c1pa4baf  97='(97) DON''T KNOW' 98='(98) REFUSED' 99='(99) INAPP';
VALUE c1sg59ff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) BE IN DEBT'
                2='(2) JUST BROKE EVEN' 3='(3) HAVE A POSITIVE BALANCE ' 8='(8) REFUSED';
VALUE c1sa35ff  -1='(-01) RESPONDENT DOES NOT HAVE SAQ DATA' 998='(998) REFUSED';
VALUE c1sa20af  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) ALL THE TIME'
                2='(2) MOST OF THE TIME' 3='(3) SOME OF THE TIME' 4='(4) A LITTLE OF THE TIME'
                5='(5) NONE OF THE TIME' 8='(8) REFUSED';
VALUE c1sf43af  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) ALL OF THE TIME'
                2='(2) MOST OF THE TIME' 3='(3) SOME OF THE TIME' 4='(4) RARELY' 5='(5) NEVER'
                8='(8) REFUSED';
VALUE c1ssincf  -1='(-00001) RESPONDENT DOES NOT HAVE SAQ DATA'
                300000='(300000) $300,000 OR MORE' 999998='(999998) NOT CALCULATED (Due to missing data)'
                999999='(999999) NOT CALCULATED (Due to Does not apply)';
VALUE c1sd2aff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) EXCELLENT'
                2='(2) VERY GOOD' 3='(3) GOOD' 4='(4) FAIR' 5='(5) POOR' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1pa24af  0='(00) LESS THAN 1 YEAR' 97='(97) DON''T KNOW' 98='(98) REFUSED'
                99='(99) INAPP';
VALUE c1sk3fff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 0='(00) WORST' 10='(10) BEST'
                96='(96) NO CHILDREN 10 YEARS AGO' 98='(98) REFUSED' 99='(99) INAPP';
VALUE c1sg61gf  -1='(-0000001) RESPONDENT DOES NOT HAVE SAQ DATA'
                99999998='(99999998) REFUSED';
VALUE c1pa18ff  1='(1) YES' 2='(2) NO' 3='(3) CANNOT WALK BECAUSE OF CHEST PAIN'
                4='(4) CANNOT WALK FOR OTHER REASONS' 7='(7) DON''T KNOW' 8='(8) REFUSED';
VALUE c1pchr1f  1='(01) HUSBAND OR WIFE' 2='(02) LOVER/PARTNER' 3='(03) BIOLOGICAL CHILD'
                4='(04) ADOPTED CHILD' 5='(05) STEP-CHILD' 6='(06) FOSTER CHILD'
                7='(07) CHILD OF LOVER/PARTNER' 8='(08) OTHER CHILD' 9='(09) SON/DAUGHT/CHILD-IN-LAW'
                10='(10) FATHER/MOTHER/PARENT' 11='(11) STEP-FATHER/MOTHER/PARENT'
                12='(12) FATHER/MOTHER/PARENT-IN-LAW OR PARTNER''S FARTHER/MOTHER/PARENT'
                13='(13) GRAND FATHER/MOTHER/PARENT' 14='(14) BROTHER/SISTER/SIBLING'
                15='(15) STEP-BROTHER/SISTER/SIBLING' 16='(16) HALF-BROTHER/SISTER/SIBLING'
                17='(17) BROTHER/SISTER/SIBLING -IN-LAW' 18='(18) GRAND SON/DAUGHTER/CHILD'
                19='(19) OTHER RELATIVE' 20='(20) ROOMMATE' 21='(21) FRIEND' 22='(22) OTHER NON-RELATIVE'
                23='(23) SAME-SEX LOVER/PARTNER' 97='(97) DON''T KNOW' 98='(98) REFUSED' 99='(99) INAPP';
VALUE c1sb8a4f  -1='(-01) RESPONDENT DOES NOT HAVE SAQ DATA' 998='(998) REFUSED'
                999='(999) INAPP';
VALUE c1sa51af  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 98='(98) REFUSED'
                99='(99)  INAPP';
VALUE c1pb4nff  996='(996) NEVER WORKED' 997='(997) DON''T KNOW' 998='(998) REFUSED'
                999='(999) INAPP';
VALUE c1se11af  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) AGE RECORDED'
                2='(2) AGE RANGE RECORDED' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1sa17af  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) YES' 2='(2) NO'
                8='(8) REFUSED' 9='(9) INAPP';
VALUE c1pg2fff  1='(1) A LOT' 2='(2) SOME' 3='(3) A LITTLE' 4='(4) NONE AT ALL'
                7='(7) DON''T KNOW' 8='(8) REFUSED';
VALUE c1pdeprf  0='(0) Lowest depression' 7='(7) Highest depression';
VALUE c1sk5fff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 0='(00) NONE'
                10='(10) VERY MUCH' 98='(98) REFUSED' 99='(99) INAPP';
VALUE c1pidatf  9997='(9997) DON''T KNOW' 9998='(9998) REFUSED' 9999='(9999) INAPP';
VALUE c1sa33af  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 8='(8) REFUSED';
VALUE c1sf17af  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) WORKED FULL-TIME'
                2='(2) WORKED PART-TIME' 3='(3) NO WORK OR LESS THAN 6 MONTHS' 8='(8) REFUSED'
                9='(9) INAPP';
VALUE c1sl9fff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) VERY LIKELY'
                2='(2) SOMEWHAT LIKELY' 3='(3) NOT VERY LIKELY' 4='(4) NOT LIKELY AT ALL' 8='(8) REFUSED'
                9='(9) INAPP';
VALUE c1sg10ff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA'
                1='(1) MUCH MORE DIFFICULT NOW ' 2='(2) SOMEWHAT MORE DIFFICULT NOW'
                3='(3) A LITTLE MORE DIFFICULT NOW' 4='(4) ABOUT THE SAME'
                5='(5) A LITTLE LESS DIFFICULT NOW' 6='(6) SOMEWHAT LESS DIFFICULT NOW'
                7='(7) MUCH LESS DIFFICULT NOW' 8='(8) REFUSED';
VALUE c1se7aff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) TRUE OF YOU'
                2='(2) SOMEWHAT TRUE' 3='(3) SOMEWHAT FALSE' 4='(4) FALSE' 8='(8) REFUSED';
VALUE c1sj9fff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) NEVER'
                2='(2) LESS THAN ONCE A MONTH' 3='(3) ONCE OR TWICE A MONTH'
                4='(4) THREE OR FOUR TIMES A MONTH' 5='(5) A COUPLE OF TIMES A WEEK'
                6='(6) MORE OFTEN THAN A COUPLE OF TIMES A WEEK' 8='(8) REFUSED';
VALUE c1sb21ff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) GREAT RELIEF'
                2='(2) SOME RELIEF' 3='(3) MIXED FEELINGS - BOTH RELIEF AND REGRET' 4='(4) SOME REGRET'
                5='(5) GREAT REGRET' 6='(6) NO PARTICULAR FEELING ONE WAY OR THE OTHER' 8='(8) REFUSED '
                9='(9) INAPP ';
VALUE c1pa47ff  1='(1) YES' 2='(2) NO' 3='(3) NEVER HAD A JOB' 7='(7) DON''T KNOW'
                8='(8) REFUSED';
VALUE c1paa2if  1='(1) YES' 2='(2) NO' 3='(3) NEVER OWNED A HOME (IF VOLUNTEERED)'
                7='(7) DON''T KNOW' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1sf38af  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) ONCE A WEEK OR MORE'
                2='(2) A FEW TIMES A MONTH' 3='(3) A FEW TIMES A YEAR' 4='(4) LESS THAN ONCE A YEAR'
                5='(5) NEVER' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1pg5fff  1='(1) AGREE' 2='(2) DISAGREE' 7='(7) DON''T KNOW' 8='(8) REFUSED';
VALUE c1sm8fff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) ONE' 2='(2) TWO'
                3='(3) THREE' 4='(4) FOUR' 5='(5) FIVE' 6='(6) SIX OR MORE' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1sl24af  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA'
                1='(1) 4 OR MORE TIMES PER WEEK' 2='(2) 2 TO 3 TIMES PER WEEK' 3='(3) ONCE A WEEK'
                4='(4) 1 TO 3 TIMES PER MONTH' 5='(5) LESS THAN ONCE A MONTH OR NEVER' 8='(8) REFUSED'
                9='(9) INAPP';
VALUE c1pd4fff  1='(1) CONDITION(S) GIVEN (SPECIFY)' 2='(2) NO SPECIFIC CONDITION'
                7='(7) DON''T KNOW' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1phrtdf  0='(0) NEGATIVE' 1='(1) POSITIVE' 8='(8) NOT CALCULATED';
VALUE c1sf28cf  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) AM' 2='(2) PM'
                3='(3) MIDNIGHT' 4='(4) NOON' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1pa83af  1='(1) A LOT MORE' 2='(2) SOMEWHAT' 3='(3) A LITTLE' 7='(7) DON''T KNOW'
                8='(8) REFUSED' 9='(9) INAPP';
VALUE c1sb5aff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 98='(98) REFUSED'
                99='(99) INAPP';
VALUE c1sg61ef  -1='(-0001) RESPONDENT DOES NOT HAVE SAQ DATA'
                50000='(50000) $50,000 OR MORE' 99998='(99998) REFUSED';
VALUE c1pcxt1f  1='(1) MAJOR DEPRESSION' 2='(2) SCHIZOPHRENIA'
                3='(3) BIPOLAR DISORDER (MANIC DEPRESSION)' 4='(4) OTHER' 7='(7) DON''T KNOW'
                8='(8) REFUSED' 9='(9) INAPP';
VALUE c1pb2bcf  1='(1) DAYS' 2='(2) WEEKS' 3='(3) MONTHS' 4='(4) YEARS'
                7='(7) DON''T KNOW' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1susemf  -1='(-01) RESPONDENT DOES NOT HAVE SAQ DATA'
                998='(998) NOT CALCULATED (Due to missing data)';
VALUE c1pcdt1f  101='(101) ASPERGER''S SYNDROME' 102='(102) AUTISM'
                103='(103) CEREBRAL PALSY (CP)' 104='(104) COGNITIVE DISABILITY'
                105='(105) DEVELOPMENTAL DISABILITY (DD)' 106='(106) DOWN SYNDROME'
                107='(107) FETAL ALCOHOL SYNDROME' 108='(108) FRAGILE X SYNDROME'
                109='(109) HYDROCEPHALUS' 110='(110) INTELLECTUAL DISABILITY'
                111='(111) INTELLECTUAL IMPAIRMENT' 112='(112) MENTAL HANDICAP'
                113='(113) MENTAL RETARDATION (MR)' 114='(114) MENTAL DISABILITY'
                115='(115) MENTAL IMPAIRMENT' 116='(116) MICROCEPHALY' 117='(117) MUSCULAR DYSTROPHY'
                118='(118) PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)' 119='(119) PRADER-WILLI SYNDROME'
                120='(120) RETARDATION' 121='(121) SPINA BIFIDA' 178='(178) RETTS DISORDER'
                222='(222) ATTENTION DEFICIT DISORDER (ADD)'
                223='(223) ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)' 224='(224) HANDICAPPED'
                225='(225) HYPERACTIVITY' 226='(226) LEARNING DISABILITY/PROBLEMS (LD)'
                227='(227) MENTAL PROBLEMS' 228='(228) SLOW IN SCHOOL / SLOW LEARNER / SLOW'
                229='(229) SPECIAL EDUCATION / SPECIAL ED' 230='(230) SPEECH PROBLEMS'
                331='(331) EPILEPSY' 332='(332) SEIZURE DISORDER' 433='(433) BRAIN DAMAGE'
                434='(434) BRAIN INJURY/ BRAIN INJURED' 435='(435) CLOSED HEAD INJURY'
                436='(436) HEAD INJURY' 437='(437) TRAUMATIC BRAIN INJURY / BRAIN INJURY'
                538='(538) BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)' 539='(539) CYCLOTHYMIA'
                540='(540) DELUSIONAL DISORDER'
                542='(542) SCHIZOPHRENIA / SCHIZOAFFECTIVE / SCHIZOPHRENIFORM DISORDER'
                543='(543) PSYCHOTIC DISORDER / PSYCHOSIS' 586='(586) CLINICAL DEPRESSION'
                587='(587) MAJOR DEPRESSION' 588='(588) SEVERE DEPRESSION' 644='(644) AGORAPHOBIA'
                645='(645) ALCOHOLISM' 646='(646) ALZHEIMER''S' 647='(647) ANOREXIA or ANOREXIA NERVOSA'
                648='(648) BULIMIA' 649='(649) EATING DISORDER' 650='(650) ANXIETY or ANXIETY DISORDER'
                651='(651) BORDERLINE PERSONALITY DISORDER' 652='(652) DEMENTIA' 653='(653) DRUG ABUSE'
                654='(654) GAMBLING PROBLEM or PATHOLOGICAL GAMBLING'
                655='(655) OBSESSIVE COMPULSIVE DISORDER (OCD)' 656='(656) PANIC ATTACKS/ DISORDER'
                657='(657) PERSONALITY DISORDER' 658='(658) PHOBIA'
                659='(659) POSTTRAUMATIC STRESS DISORDERS (PTSD)' 660='(660) SLEEP DISORDER (INSOMNIA)'
                661='(661) SOMATIZATION'
                662='(662) DEPRESSION (IF VOLUNTEERED THAT THIS IS MILD DEPRESSION)'
                663='(663) DYSTHYMIA' 762='(762) BIOCHEMICAL PROBLEM' 763='(763) BRAIN DISORDER'
                764='(764) BREAKDOWN' 765='(765) CHEMICAL IMBALANCE'
                766='(766) EMOTIONAL PROBLEM / DISORDER' 767='(767) MANIC' 768='(768) MENTAL BREAKDOWN'
                769='(769) MOOD PROBLEM/DISORDER' 770='(770) MENTALLY ILL'
                771='(771) MENTAL HEALTH PROBLEMS' 772='(772) NERVES / NERVOUS CONDITION'
                773='(773) PARANOID / PARANOIA' 774='(774) PSYCHOLOGICAL PROBLEMS'
                779='(779) SUICIDAL / SUICIDE ATTEMPT ' 875='(875) DEPRESSION'
                976='(976) OTHER UNFAMILIAR CONDITION (SPECIFY)'
                977='(977) OTHER FAMILIAR CONDITION (SPECIFY)' 996='(996) NO CONDITIONS'
                997='(997) DON''T KNOW' 998='(998) REFUSED' 999='(999) INAPP';
VALUE c1pa4aff  1='(1) PHYSICAL' 2='(2) MENTAL' 3='(3) COMBINATION' 7='(7) DON''T KNOW'
                8='(8) REFUSED' 9='(9) INAPP';
VALUE c1se15af  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) A LOT'
                2='(2) A MEDIUM AMOUNT' 3='(3) ONLY A LITTLE' 4='(4) NOT AT ALL' 8='(8) REFUSED';
VALUE c1sa57af  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) NEVER' 2='(2) RARELY'
                3='(3) SOMETIMES' 4='(4) OFTEN' 5='(5) ALMOST ALWAYS' 8='(8) REFUSED';
VALUE c1sf14ff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) COULD NOT FIND A JOB'
                2='(2) PHYSICAL INJURY OR ILLNESS' 3='(3) MENTAL OR EMOTIONAL PROBLEMS'
                4='(4) ALCOHOL OR SUBSTANCE ABUSE PROBLEMS '
                5='(5) FAMILY RESPONSIBILITIES--CARING CHILDREN,SPOUSE,PARENTS'
                6='(6) ATTENDED SCHOOL PART-TIME OR FULL-TIME'
                7='(7) CHOSE NOT TO WORK TO PURSUE PERSONAL INTERESTS' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1sb10ff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) SPECIALTY OF DR GIVEN'
                8='(8) REFUSED' 9='(9) INAPP';
VALUE c1sf37af  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) ALL OF THE TIME'
                2='(2) MOST OF THE TIME' 3='(3) SOME OF THE TIME' 4='(4) RARELY' 5='(5) NEVER'
                6='(6) DOES NOT APPLY' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1pd2fff  1='(01) HUSBAND' 2='(02) WIFE' 3='(03) SON' 4='(04) DAUGHTER'
                5='(05) FATHER' 6='(06) MOTHER' 7='(07) BROTHER' 8='(08) SISTER' 9='(09) GRANDFATHER'
                10='(10) GRANDMOTHER' 11='(11) FATHER-IN-LAW' 12='(12) MOTHER-IN-LAW'
                13='(13) OTHER (SPECIFY)' 97='(97) DON''T KNOW' 98='(98) REFUSED' 99='(99) INAPP';
VALUE c1pf2aff  1='(01) AMERICAN INDIAN/NATIVE AMERICAN' 2='(02) BAHAMAS' 3='(03) CANADA'
                4='(04) COSTA RICA' 5='(05) CUBA' 6='(06) DOMINICAN REPUBLIC' 7='(07) EL SALVADOR'
                8='(08) GUATEMALA' 9='(09) HAITI' 10='(10) HONDURAS' 11='(11) JAMAICA' 12='(12) MEXICO'
                13='(13) NICARAGUA' 14='(14) PANAMA' 15='(15) PUERTO RICO' 16='(16) ST.VINCENT'
                17='(17) TRINIDAD' 18='(18) CENTRAL AMERICAN/CARIBBEAN' 20='(20) ARGENTINA'
                21='(21) BOLIVIA' 22='(22) BRAZIL' 23='(23) CHILE' 24='(24) COLOMBIA' 25='(25) ECUADOR'
                26='(26) PERU' 27='(27) VENEZUELA' 28='(28) SOUTH AMERICA' 30='(30) CZECH'
                31='(31) ENGLAND' 32='(32) FRANCE' 33='(33) GERMANY' 34='(34) GREECE' 35='(35) HUNGARY'
                36='(36) IRELAND' 37='(37) ITALY' 38='(38) NORWAY' 39='(39) POLAND' 40='(40) PORTUGAL'
                41='(41) USSR/RUSSIA' 42='(42) SCOTLAND' 43='(43) SPAIN' 44='(44) SWEDEN'
                45='(45) NETHERLAND' 46='(46) YUGOSLAV' 47='(47) EAST EUROPE' 48='(48) WEST EUROPE'
                50='(50) CHINA' 51='(51) INDIA' 52='(52) JAPAN' 53='(53) KOREA' 54='(54) PHILIPPINE'
                55='(55) SINGAPORE' 56='(56) TAIWAN' 57='(57) THAILAND' 58='(58) ASIA' 60='(60) EGYPT'
                61='(61) KENYA' 62='(62) NIGERIA' 63='(63) SOUTH AFRICA' 64='(64) ZAIRE'
                65='(65) ZIMBABWE' 66='(66) AFRICA' 68='(68) IRAN' 69='(69) IRAQ' 70='(70) ISRAEL'
                71='(71) LEBANON' 72='(72) PAKISTAN' 73='(73) SAUDI ARABIA' 74='(74) MIDEAST'
                96='(96) OTHER (SPECIFY)' 97='(97) DON''T KNOW' 98='(98) REFUSED' 99='(99) INAPP';
VALUE c1pc2aff  0='(00) NONE' 97='(97) DON''T KNOW' 98='(98) REFUSED' 99='(99) INAPP';
VALUE c1pa4fff  0='(00) NONE' 97='(97) DON''T KNOW' 98='(98) REFUSED';
VALUE c1pa66af  1='(1) EVERY NIGHT' 2='(2) NEARLY EVERY NIGHT'
                3='(3) LESS OFTEN THAN THAT' 7='(7) DON''T KNOW' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1sf34ff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) VERY POSITIVE'
                2='(2) SOMEWHAT POSITIVE' 3='(3) NEITHER POSITIVE NOR NEGATIVE/BALANCES OUT'
                4='(4) SOMEWHAT NEGATIVE' 5='(5) VERY NEGATIVE' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1se10af  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) AGREE A LOT'
                2='(2) AGREE A LITTLE' 3='(3) NEITHER AGREE NOR DISAGREE' 4='(4) DISAGREE A LITTLE'
                5='(5) DISAGREE A LOT' 8='(8) REFUSED';
VALUE c1pb5fff  1='(01) FIRED' 2='(02) LAID OFF' 3='(03) PLANT/COMPANY CLOSED'
                4='(04) QUIT' 5='(05) RETIRED' 6='(06) WORK FORCE REDUCTION (VOLUNTEERED)' 7='(07) OTHER'
                97='(97) DON''T KNOW' 98='(98) REFUSED' 99='(99) INAPP';
VALUE c1pb2bdf  996='(996) STILL UNEMPLOYED' 997='(997) DON''T KNOW' 998='(998) REFUSED'
                999='(999) INAPP';
VALUE c1sb22af  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) A LOT' 2='(2) SOME'
                3='(3) A LITTLE' 4='(4) NOT AT ALL' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1sa45ff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA'
                1='(01) PRIVATE CLINIC OR DOCTOR''S OFFICE (NOT AN HMO)' 2='(02) HMO CLINIC'
                3='(03) PUBLIC HEALTH CLINIC OR COMMUNITY HEALTH CENTER'
                4='(04) HOSPITAL OUTPATIENT DEPARTMENT' 5='(05) HOSPITAL EMERGENCY ROOM'
                6='(06) URGENT CARE CENTER' 7='(07) SOME OTHER KIND OF PLACE' 8='(08) NO USUAL PLACE'
                98='(98) REFUSED';
VALUE c1pa11ff  1='(1) A LOT' 2='(2) SOME' 3='(3) A LITTLE' 4='(4) NOT AT ALL'
                7='(7) DON''T KNOW' 8='(8) REFUSED';
VALUE c1panxif  0='(00) Lowest anxiety score' 10='(10) Highest anxiety score';
VALUE c1se8fff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA'
                1='(1) SITUATION 1: RIDING A LONG STRETCH OF RAPIDS IN A CANOE'
                2='(2) SITUATION 2: WAITING FOR SOMEONE WHO''S LATE' 8='(8) REFUSED';
VALUE c1pchm1_1f  0='(0) NO' 1='(1) YES' 9='(9) INAPP';
VALUE c1sa4fff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 0='(00) NONE'
                10='(10) VERY MUCH' 98='(98) REFUSED';
VALUE c1si7fff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 0='(00) FOREIGN'
                1='(01) ALABAMA' 2='(02) ALASKA' 3='(03) ARIZONA' 4='(04) ARKANSAS' 5='(05) CALIFORNIA'
                6='(06) COLORADO' 7='(07) CONNECTICUT' 8='(08) DELEWARE' 9='(09) DIST. COLMBIA'
                10='(10) FLORIDA ' 11='(11) GEORGIA ' 12='(12) HAWAII ' 13='(13) IDAHO'
                14='(14) ILLINOIS' 15='(15) INDIANA' 16='(16) IOWA' 17='(17) KANSAS' 18='(18) KENTUCKY '
                19='(19) LOUISIANA' 20='(20) MAINE' 21='(21) MARYLAND' 22='(22) MASSACHUSETTS'
                23='(23) MICHIGAN ' 24='(24) MINNESOTA ' 25='(25) MISSISSIPPI ' 26='(26) MISSOURI '
                27='(27) MONTANA ' 28='(28) NEBRASKA ' 29='(29) NEVADA' 30='(30) NEW HAMPSHIRE'
                31='(31) NEW JERSEY ' 32='(32) NEW MEXICO ' 33='(33) NEW YORK' 34='(34) NORTH CAROLNA'
                35='(35) NORTH DAKOTA' 36='(36) OHIO' 37='(37) OKLAHOMA' 38='(38) OREGON'
                39='(39) PENNSYLVANIA' 40='(40) RHODE ISLAND' 41='(41) SOUTH CAROLNA'
                42='(42) SOUTH DAKOTA' 43='(43) TENNESSEE ' 44='(44) TEXAS' 45='(45) UTAH'
                46='(46) VERMONT ' 47='(47) VIRGINIA' 48='(48) WASHINGTON' 49='(49) WEST VIRGINIA'
                50='(50) WISCONSIN' 51='(51) WYOMING' 98='(98) REFUSED';
VALUE c1sa10af  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) ALMOST EVERY DAY'
                2='(2) SEVERAL TIMES A WEEK' 3='(3) ONCE A WEEK' 4='(4) SEVERAL TIMES A MONTH'
                5='(5) ONCE A MONTH' 6='(6) NOT AT ALL' 8='(8) REFUSED';
VALUE c1pa85ff  1='(1) ONE THING' 2='(2) MORE THAN ONE' 7='(7) DON''T KNOW'
                8='(8) REFUSED' 9='(9) INAPP';
VALUE c1sa29af  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) DAILY'
                2='(2) SEVERAL TIMES A WEEK' 3='(3) ONCE A WEEK' 4='(4) SEVERAL TIMES A MONTH'
                5='(5) ONCE A MONTH' 6='(6) NEVER' 8='(8) REFUSED';
VALUE c1pdepaf  0='(0) Lowest depressed affect' 7='(7) Highest depressed affect';
VALUE c1pb8aff  1='(1) GOVERNMENT'
                2='(2) PRIVATE COMPANY OR ORGANIZATION, INCLUDING NON-PROFITS' 3='(3) SELF-EMPLOYED'
                4='(4) WORKING IN THE FAMILY BUSINESS' 5='(5) OTHER (SPECIFY)' 7='(7) DON''T KNOW'
                8='(8) REFUSED' 9='(9) INAPP';
VALUE c1pf7aff  1='(1) WHITE' 2='(2) BLACK AND/OR AFRICAN AMERICAN'
                3='(3) NATIVE AMERICAN OR ALASKA NATIVE ALEUTIAN ISLANDER/ESKIMO' 4='(4) ASIAN'
                5='(5) NATIVE HAWAIIAN OR PACIFIC ISLANDER' 6='(6) OTHER (SPECIFY)' 7='(7) DON''T KNOW'
                8='(8) REFUSED' 9='(9) INAPP';
VALUE c1sg12ff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) YES' 2='(2) NO'
                3='(3) NOT APPLICABLE-NO INCOME FROM PENSION OR RETIREMENT ACCOUNTS' 8='(8) REFUSED';
VALUE c1salcof  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 0='(0) NO ALCOHOL PROBLEM'
                1='(1) ALCOHOL PROBLEM' 8='(8) NOT CALCULATED (Due to missing data)';
VALUE c1pb22ff  1='(1) WIDOWHOOD' 2='(2) DIVORCE' 7='(7) DON''T KNOW' 8='(8) REFUSED'
                9='(9) INAPP';
VALUE c1sk7aff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) NOT AT ALL TRUE'
                2='(2) A LITTLE BIT TRUE' 3='(3) MODERATELY TRUE' 4='(4) EXTREMELY TRUE' 8='(8) REFUSED'
                9='(9) INAPP';
VALUE c1sl11ff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) AT LEAST ONCE A DAY'
                2='(2) A FEW TIMES A WEEK' 3='(3) ONCE A WEEK' 4='(4) A FEW TIMES A MONTH'
                5='(5) LESS OFTEN THAN THAT' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1sf19af  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) ALL OF THE TIME'
                2='(2) MOST OF THE TIME' 3='(3) SOME OF THE TIME' 4='(4) LITTLE OF THE TIME'
                5='(5) NEVER' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1sp1aff  -1='(-001) RESPONDENT DOES NOT HAVE SAQ DATA' 9998='(9998) REFUSED';
VALUE c1paa1ff  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED';
VALUE c1pf1fff  1='(01) NOT SPANISH/HISPANIC' 2='(02) MEXICAN' 3='(03) MEXICAN AMERICAN'
                4='(04) CHICANO' 5='(05) PUERTO RICAN' 6='(06) CUBAN' 7='(07) OTHER SPANISH (SPECIFY)'
                97='(97) DON''T KNOW' 98='(98) REFUSED';
VALUE c1pb2caf  1='(1) MORE' 2='(2) LESS' 3='(3) THE SAME' 7='(7) DON''T KNOW'
                8='(8) REFUSED' 9='(9) INAPP';
VALUE c1pd8aff  1='(1) HE/SHE NO LONGER NEEDS CARE' 2='(2) SOMEONE ELSE IS HELPING'
                3='(3) THIS PERSON IS DECEASED' 4='(4) SOME OTHER REASON (SPECIFY)' 7='(7) DON''T KNOW'
                8='(8) REFUSED' 9='(9) INAPP';
VALUE c1se8aff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA'
                1='(1) I WOULD DEFINITELY DISLIKE IT' 2='(2) I WOULD DISLIKE IT SOMEWHAT' 8='(8) REFUSED';
VALUE c1sl8fff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) NEVER' 2='(2) ONCE'
                3='(3) A FEW TIMES' 4='(4) MOST OF THE TIME' 5='(5) ALL OF THE TIME' 8='(8) REFUSED'
                9='(9) INAPP';
VALUE c1pangif  0='(0) BEST ANGINA CLASS' 1='(1) GOOD ANGINA CLASS'
                2='(2) BAD ANGINA CLASS' 3='(3) WORST ANGINA CLASS'
                6='(6) DID NOT MEET ROSE CRITERIA FOR ANGINA' 8='(8) NOT CALCULATED';
VALUE c1pa72ff  1='(1) YES' 2='(2) NO' 6='(6) WAS ON ANTI-DEPRESSANT' 7='(7) DON''T KNOW'
                8='(8) REFUSED' 9='(9) INAPP';
VALUE c1sa41ff  -1='(-001) RESPONDENT DOES NOT HAVE SAQ DATA' 9998='(9998) REFUSED'
                9999='(9999) INAPP';
VALUE c1pa19ff  1='(1) STOP' 2='(2) SLOW DOWN' 3='(3) CONTINUE AT THE SAME PACE'
                7='(7) DON''T KNOW' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1pa9aff  1='(1) A LOT' 2='(2) SOMEWHAT' 3='(3) A LITTLE' 7='(7) DON''T KNOW'
                8='(8) REFUSED' 9='(9) INAPP';
VALUE c1sn4fff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA'
                1='(1) EXPLORE DIFFERENT TEACHINGS' 2='(2) STICK TO ONE FAITH' 3='(3) NEITHER'
                8='(8) REFUSED';
VALUE c1pchm1f  9='(9) INAPP';
VALUE c1sh15af  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) YES' 2='(2) NO'
                3='(3) DOES NOT APPLY' 8='(8) REFUSED';
VALUE c1pa89ff  1='(1) A LOT' 2='(2) SOME' 3='(3) A LITTLE' 4='(4) NOT AT ALL'
                7='(7) DON''T KNOW' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1paa2i_1f  999999997='(999999997) DON''T KNOW' 999999998='(999999998) REFUSED'
                999999999='(999999999) INAPP';
VALUE c1sj1fff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(01) SEVERAL TIMES A DAY'
                2='(02) ABOUT ONCE A DAY' 3='(03) SEVERAL TIMES A WEEK' 4='(04) ABOUT ONCE A WEEK'
                5='(05) 2 OR 3 TIMES A MONTH' 6='(06) ABOUT ONCE A MONTH' 7='(07) LESS THAN ONCE A MONTH'
                8='(08) NEVER OR HARDLY EVER' 98='(98) REFUSED';
VALUE c1pa25af  1='(1) LOW' 2='(2) ABOUT NORMAL' 3='(3) SLIGHTLY RAISED' 4='(4) HIGH'
                7='(7) DON''T KNOW' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1sa8aff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) AGREE STRONGLY'
                2='(2) AGREE SOMEWHAT' 3='(3) AGREE A LITTLE' 4='(4) NEITHER AGREE NOR DISAGREE'
                5='(5) DISAGREE A LITTLE' 6='(6) DISAGREE SOMEWHAT' 7='(7) DISAGREE STRONGLY'
                8='(8) REFUSED';
VALUE c1pa62ff  1='(1) EVERY DAY' 2='(2) ALMOST EVERY DAY' 3='(3) LESS OFTEN THAN THAT'
                7='(7) DON''T KNOW' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1ssatif  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA'
                98='(98) NOT CALCULATED (Due to missing data)';
VALUE c1sa19ff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) DIAGNOSIS GIVEN'
                7='(7) DON''T KNOW' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1sf26ff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) OVERQUALIFIED'
                2='(2) UNDERQUALIFIED' 3='(3) JUST RIGHT' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1pa7baf  1='(01) YES' 2='(02) NO' 11='(11) NONE' 97='(97) DON''T KNOW'
                98='(98) REFUSED' 99='(99) INAPP';
VALUE c1sb1fff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) YES, ALL OF THE YEAR'
                2='(2) YES, PART OF THE YEAR' 3='(3) NO' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1pa37ff  96='(96) NEVER HAD A CIGARETTE' 97='(97) DON''T KNOW' 98='(98) REFUSED';
VALUE c1si5fff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) OWN HOME OUTRIGHT'
                2='(2) PAYING ON A MORTGAGE' 3='(3) RENT' 8='(8) REFUSED';
VALUE c1pa36bf  1='(1) 1 OVARY REMOVED' 2='(2) BOTH OVARIES REMOVED' 3='(3) NO'
                7='(7) DON''T KNOW' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1pb2awf  1='(01) WORKING NOW' 2='(02) SELF-EMPLOYED'
                3='(03) LOOKING FOR WORK/UNEMPLOYED' 4='(04) TEMPORARILY LAID OFF' 5='(05) RETIRED'
                6='(06) HOMEMAKER' 7='(07) FULL-TIME STUDENT' 8='(08) PART-TIME STUDENT'
                9='(09) MATERNITY OR SICK LEAVE' 10='(10) PERMANENTLY DISABLED' 11='(11) OTHER'
                97='(97) DON''T KNOW' 98='(98) REFUSED' 99='(99) INAPP';
VALUE c1sa34ff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) VERY OVERWEIGHT'
                2='(2) SOMEWHAT OVERWEIGHT' 3='(3) ABOUT THE RIGHT WEIGHT' 4='(4) SOMEWHAT UNDERWEIGHT'
                5='(5) VERY UNDERWEIGHT' 8='(8) REFUSED';
VALUE c1paa2af  1='(1) YES' 2='(2) NO' 7='(7) DON''T KNOW' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1ppartf  1='(1) YES' 2='(2) NO';
VALUE c1pb8cff  1='(1) MANUFACTURING (MAKING A PRODUCT)'
                2='(2) WHOLESALE (SELLING TO BUSINESSES)' 3='(3) RETAIL (SELLING TO CONSUMERS)'
                4='(4) SOMETHING ELSE (EDUCATION, TRANSPORTATION, GOVERNMENT, HEALTH, ETC.)'
                7='(7) DON''T KNOW' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1statuf  1='(1) COMPLETED M3 CATI ONLY' 2='(2) COMPLETED M3 CATI AND SAQ PART 2'
                3='(3) COMPLETED M3 CATI AND SAQ PART 1' 4='(4) COMPLETED M3 CATI AND SAQ PART 1 AND 2';
VALUE c1sa1fff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 0='(00) WORST' 10='(10) BEST'
                98='(98) REFUSED';
VALUE c1sl18af  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) AGREE STRONGLY'
                2='(2) AGREE SOMEWHAT' 3='(3) AGREE A LITTLE' 4='(4) NEITHER AGREE NOR DISAGREE'
                5='(5) DISAGREE A LITTLE' 6='(6) DISAGREE SOMEWHAT' 7='(7) DISAGREE STRONGLY'
                8='(8) REFUSED' 9='(9) INAPP';
VALUE c1pb2fff  96='(96) NEVER HAD PAID JOB' 97='(97) DON''T KNOW' 98='(98) REFUSED';
VALUE c1sa52af  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) A LOT' 2='(2) OFTEN'
                3='(3) SOMETIMES' 4='(4) RARELY' 5='(5) NEVER' 8='(8) REFUSED';
VALUE c1sc4fff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) YES' 2='(2) NO'
                7='(7) DON''T KNOW' 8='(8) REFUSED';
VALUE c1pa15ff  1='(1) BYPASS' 2='(2) MEDICATION' 3='(3) NEITHER' 7='(7) DON''T KNOW'
                8='(8) REFUSED';
VALUE c1sa11af  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) YES' 2='(2) NO'
                8='(8) REFUSED';
VALUE c1sg39ff  -1='(-000001) RESPONDENT DOES NOT HAVE SAQ DATA'
                2000000='(2000000) $2,000,000 OR MORE' 9999998='(9999998) REFUSED'
                9999999='(9999999) INAPP';
VALUE samplmaf  1='(01) MAIN RDD' 2='(02) SIBLING' 3='(03) TWIN' 4='(04) CITY OVERSAMPLE'
                13='(13) MILWAUKEE' 14='(14) BOSTON NEW' 20='(20) MIDUS REFRESHER'
                21='(21) MILWAUKEE REFRESHER';
VALUE c1sg27ff  -1='(-000001) RESPONDENT DOES NOT HAVE SAQ DATA'
                1000000='(1000000) $1,000,000 OR MORE' 9999998='(9999998) REFUSED'
                9999999='(9999999) INAPP';
VALUE c1pcdp1f  1='(1) SINGLE EPISODE' 2='(2) LONG-TERM PROBLEM' 7='(7) DON''T KNOW'
                8='(8) REFUSED' 9='(9) INAPP';
VALUE c1sa16af  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 0='(00) NOT AT ALL'
                10='(10) COMPLETELY' 98='(98) REFUSED' 99='(99) INAPP';
VALUE c1pa40ff  96='(96) 96 OR MORE CIGARETTES A DAY' 97='(97) DON''T KNOW'
                98='(98) REFUSED' 99='(99) INAPP';
VALUE c1sc8aff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) ELIGIBLE'
                2='(2) NOT ELIGIBLE' 7='(7) DON''T KNOW' 8='(8) REFUSED';
VALUE c1sa23ff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA'
                1='(1) A LOT MORE POSITIVE THAN USUAL' 2='(2) SOMEWHAT MORE POSITIVE THAN USUAL'
                3='(3) A LITTLE MORE POSITIVE THAN USUAL' 4='(4) ABOUT THE SAME AS USUAL'
                5='(5) A LITTLE LESS POSITIVE THAN USUAL' 6='(6) SOMEWHAT LESS POSITIVE THAN USUAL'
                7='(7) A LOT LESS POSITIVE THAN USUAL' 8='(8) REFUSED';
VALUE c1phrtrf  0='(0) LOWEST RISK' 1='(1) LOWER RISK' 2='(2) LOW RISK'
                3='(3) AVERAGE RISK' 4='(4) HIGH RISK' 5='(5) HIGHER RISK' 6='(6) HIGHEST RISK'
                8='(8) NOT CALCULATED';
VALUE c1pf12af  1='(1) VERY CLOSELY' 2='(2) SOMEWHAT CLOSELY' 3='(3) NOT VERY CLOSELY'
                4='(4) NOT AT ALL CLOSELY' 7='(7) DON''T KNOW' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1pa60ff  1='(1) YES' 2='(2) NO' 6='(6) WAS ON ANTI-DEPRESSANT' 7='(7) DON''T KNOW'
                8='(8) REFUSED';
VALUE c1pa49ff  96='(96) NEVER HAD A DRINK' 97='(97) DON''T KNOW' 98='(98) REFUSED'
                99='(99) INAPP';
VALUE c1sn1bff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(01) NO RELIGIOUS PREF'
                2='(02) AGNOSTIC' 3='(03) ATHEIST' 4='(04) PROTESTANT, INTERDENOMINATIONAL'
                5='(05) PROTESTANT, NO DENOMINATION' 6='(06) APOSTOLIC' 7='(07) ASSEMBLY OF GOD'
                8='(08)  BAPTIST (ALL TYPES)' 9='(09)  BORN-AGAIN CHRISTIAN' 10='(10) BRETHREN'
                11='(11) DISCIPLES OF CHRIST' 12='(12) CHRISTIAN REFORMED' 13='(13) CHURCH OF GOD'
                14='(14) CONGREGATIONAL' 15='(15) EPISCOPALIAN' 16='(16) EVANGELICAL' 17='(17) HOLINESS'
                18='(18) JEHOVAH''S WITNESS' 19='(19) LUTHERAN' 20='(20) MENNONITE' 21='(21) METHODIST'
                22='(22) MORMON, LATTER DAY ST' 23='(23) NAZARENE' 24='(24) PENTECOSTAL'
                25='(25) PRESBYTERIAN' 26='(26) QUAKER' 27='(27) SALVATION ARMY' 28='(28) SANCTIFIED '
                29='(29) SEVENTH DAY ADVENTIST' 30='(30) SPIRITUAL' 31='(31) UNITARIAN'
                32='(32) UNITED CHURCH CHRIST' 33='(33) PROTESTANT, OTHER' 34='(34) CATHOLIC, ROMAN'
                35='(35) CATHOLIC, UKRAINIAN' 36='(36) ORTHODOX' 37='(37) CATHOLIC, OTHER'
                38='(38) JEWISH ORTHODOX' 39='(39) JEWISH CONSERVATIVE' 40='(40) JEWISH REFORM'
                41='(41) JEWISH RECONST.' 42='(42) JEWISH OTHER' 43='(43) BUDDHIST' 44='(44) HINDU'
                45='(45) MUSLIM' 46='(46) RASTAFARIAN' 47='(47) OTHER' 98='(98) REFUSED' 99='(99) INAPP ';
VALUE c1se5aff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) MORE LIKE A A LOT'
                2='(2) MORE LIKE A SOME' 3='(3) MORE LIKE A A LITTLE' 4='(4) MORE LIKE B A LITTLE'
                5='(5) MORE LIKE B SOME' 6='(6) MORE LIKE B A LOT' 8='(8) REFUSED';
VALUE c1sb6fff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) YES' 2='(2) NO'
                7='(7) DON''T KNOW' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1sforsf  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 8='(8) Refusal';
VALUE c1pa51af  1='(1) 3 OR 4 DAYS A MONTH' 2='(2) 1 OR 2 DAYS A MONTH'
                3='(3) LESS OFTEN THAN 1 DAY A MONTH' 4='(4) NEVER DRINK (VOLUNTEERED)'
                7='(7) DON''T KNOW' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1sl16ff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) VERY FAIR'
                2='(2) SOMEWHAT FAIR' 3='(3) SOMEWHAT UNFAIR' 4='(4) VERY UNFAIR' 8='(8) REFUSED'
                9='(9) INAPP';
VALUE c1sa26af  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) SEVERAL TIMES A WEEK'
                2='(2) ONCE A WEEK' 3='(3) SEVERAL TIMES A MONTH' 4='(4) ONCE A MONTH'
                5='(5) LESS THAN ONCE A MONTH' 6='(6) NEVER' 8='(8) REFUSED';
VALUE c1sn1aff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(01) NO RELIGIOUS PREF'
                2='(02) AGNOSTIC' 3='(03) ATHEIST' 4='(04) PROTESTANT, INTERDENOMINATIONAL'
                5='(05) PROTESTANT, NO DENOMINATION' 6='(06) APOSTOLIC' 7='(07) ASSEMBLY OF GOD'
                8='(08)  BAPTIST (ALL TYPES)' 9='(09)  BORN-AGAIN CHRISTIAN' 10='(10) BRETHREN'
                11='(11) DISCIPLES OF CHRIST' 12='(12) CHRISTIAN REFORMED' 13='(13) CHURCH OF GOD'
                14='(14) CONGREGATIONAL' 15='(15) EPISCOPALIAN' 16='(16) EVANGELICAL' 17='(17) HOLINESS'
                18='(18) JEHOVAH''S WITNESS' 19='(19) LUTHERAN' 20='(20) MENNONITE' 21='(21) METHODIST'
                22='(22) MORMON, LATTER DAY ST' 23='(23) NAZARENE' 24='(24) PENTECOSTAL'
                25='(25) PRESBYTERIAN' 26='(26) QUAKER' 27='(27) SALVATION ARMY' 28='(28) SANCTIFIED '
                29='(29) SEVENTH DAY ADVENTIST' 30='(30) SPIRITUAL' 31='(31) UNITARIAN'
                32='(32) UNITED CHURCH CHRIST' 33='(33) PROTESTANT, OTHER' 34='(34) CATHOLIC, ROMAN'
                35='(35) CATHOLIC, UKRAINIAN' 36='(36) ORTHODOX' 37='(37) CATHOLIC, OTHER'
                38='(38) JEWISH ORTHODOX' 39='(39) JEWISH CONSERVATIVE' 40='(40) JEWISH REFORM'
                41='(41) JEWISH RECONST.' 42='(42) JEWISH OTHER' 43='(43) BUDDHIST' 44='(44) HINDU'
                45='(45) MUSLIM' 46='(46) RASTAFARIAN' 47='(47) OTHER' 98='(98) REFUSED';
VALUE c1sf45af  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) A LOT' 2='(2) SOME'
                3='(3) A LITTLE' 4='(4) NOT AT ALL' 5='(5) DOES NOT APPLY' 8='(8) REFUSED';
VALUE c1panhef  0='(0) Lowest depression/anhedonia' 6='(6) Highest depression/anhedonia';
VALUE c1paa4ff  1='(1) GET BETTER' 2='(2) GET WORSE' 3='(3) STAY THE SAME'
                7='(7) DON''T KNOW' 8='(8) REFUSED';
VALUE c1paa3ff  1='(1) YES, RECESSION IS OVER' 2='(2) NO, RECESSION IS NOT OVER'
                7='(7) DON''T KNOW' 8='(8) REFUSED';
VALUE c1pa87ff  1='(1) OFTEN' 2='(2) SOMETIMES' 3='(3) RARELY' 4='(4) NEVER'
                7='(7) DON''T KNOW' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1pg6fff  1='(1) A LOT' 2='(2) SOMEWHAT' 3='(3) A LITTLE' 4='(4) NOT AT ALL'
                7='(7) DON''T KNOW' 8='(8) REFUSED';
VALUE c1pa25if  1='(1) MONTHS' 2='(2) YEARS' 7='(7) DON''T KNOW' 8='(8) REFUSED'
                9='(9) INAPP';
VALUE c1sn7fff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) STRONGLY AGREE'
                2='(2) SOMEWHAT AGREE' 3='(3) NEITHER AGREE NOR DISAGREE' 4='(4) SOMEWHAT DISAGREE'
                5='(5) STRONGLY DISAGREE' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1sb11ff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) MALE' 2='(2) FEMALE'
                8='(8) REFUSED' 9='(9) INAPP ';
VALUE c1pa16ff  1='(1) VERY' 2='(2) SOMEWHAT' 3='(3) NOT VERY SURE' 7='(7) DON''T KNOW'
                8='(8) REFUSED' 9='(9) INAPP';
VALUE c1shlocf  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA'
                8='(8) NOT CALCULATED (Due to missing data)';
VALUE c1sn2aff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) A LOT' 2='(2) SOMEWHAT'
                3='(3) NOT VERY' 4='(4) NOT AT ALL' 8='(8) REFUSED';
VALUE c1pa61ff  1='(1) ALL DAY LONG' 2='(2) MOST OF THE DAY' 3='(3) ABOUT HALF THE DAY'
                4='(4) LESS THAN HALF THE DAY' 7='(7) DON''T KNOW' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1sn12af  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) STRONGLY AGREE'
                2='(2) AGREE' 3='(3) NEITHER AGREE NOR DISAGREE' 4='(4) DISAGREE'
                5='(5) STRONGLY DISAGREE' 8='(8) REFUSED';
VALUE c1pcha1f  997='(997) DON''T KNOW' 998='(998) MISSING' 999='(999) INAPP';
VALUE c1shomef  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA'
                8='(8) Not calculated (Due to missing data)';
VALUE c1sa31ff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 98='(98) REFUSED';
VALUE c1pg5aff  1='(1) STRONGLY' 2='(2) SOMEWHAT' 3='(3) ONLY A LITTLE'
                7='(7) DON''T KNOW' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1poccff  10='(0010) CHIEF EXECUTIVES' 20='(0020) GENERAL AND OPERATIONS MANAGERS'
                30='(0030) LEGISLATORS' 40='(0040) ADVERTISING AND PROMOTIONS MANAGERS'
                50='(0050) MARKETING AND SALES MANAGERS'
                60='(0060) PUBLIC RELATIONS AND FUNDRAISING MANAGERS'
                100='(0100) ADMINISTRATIVE SERVICES MANAGERS'
                110='(0110) COMPUTER AND INFORMATION SYSTEMS MANAGERS' 120='(0120) FINANCIAL MANAGERS'
                135='(0135) COMPENSATION AND BENEFITS MANAGERS' 136='(0136) HUMAN RESOURCES MANAGERS'
                137='(0137) TRAINING AND DEVELOPMENT MANAGERS'
                140='(0140) INDUSTRIAL PRODUCTION MANAGERS' 150='(0150) PURCHASING MANAGERS'
                160='(0160) TRANSPORTATION, STORAGE, AND DISTRIBUTION MANAGERS'
                205='(0205) FARMERS, RANCHERS, AND OTHER AGRICULTURAL MANAGERS'
                220='(0220) CONSTRUCTION MANAGERS' 230='(0230) EDUCATION ADMINISTRATORS'
                300='(0300) ARCHITECTURAL AND ENGINEERING MANAGERS' 310='(0310) FOOD SERVICE MANAGERS'
                325='(0325) FUNERAL SERVICE MANAGERS' 330='(0330) GAMING MANAGERS'
                340='(0340) LODGING MANAGERS' 350='(0350) MEDICAL AND HEALTH SERVICES MANAGERS'
                360='(0360) NATURAL SCIENCES MANAGERS' 400='(0400) POSTMASTERS AND MAIL SUPERINTENDENTS'
                410='(0410) PROPERTY, REAL ESTATE, AND COMMUNITY ASSOCIATION MANAGERS'
                420='(0420) SOCIAL AND COMMUNITY SERVICE MANAGERS'
                425='(0425) EMERGENCY MANAGEMENT DIRECTORS' 430='(0430) MANAGERS, ALL OTHER'
                500='(0500) AGENTS AND BUSINESS MANAGERS OF ARTISTS, PERFORMERS, AND ATHLETES'
                510='(0510) BUYERS AND PURCHASING AGENTS, FARM PRODUCTS'
                520='(0520) WHOLESALE AND RETAIL BUYERS, EXCEPT FARM PRODUCTS'
                530='(0530) PURCHASING AGENTS, EXCEPT WHOLESALE, RETAIL, AND FARM PRODUCTS'
                540='(0540) CLAIMS ADJUSTERS, APPRAISERS, EXAMINERS, AND INVESTIGATORS'
                565='(0565) COMPLIANCE OFFICERS' 600='(0600) COST ESTIMATORS'
                630='(0630) HUMAN RESOURCES WORKERS'
                640='(0640) COMPENSATION, BENEFITS, AND JOB ANALYSIS SPECIALISTS'
                650='(0650) TRAINING AND DEVELOPMENT SPECIALISTS' 700='(0700) LOGISTICIANS'
                710='(0710) MANAGEMENT ANALYSTS' 725='(0725) MEETING, CONVENTION, AND EVENT PLANNERS'
                726='(0726) FUNDRAISERS' 735='(0735) MARKET RESEARCH ANALYSTS AND MARKETING SPECIALISTS'
                740='(0740) BUSINESS OPERATIONS SPECIALISTS, ALL OTHER'
                800='(0800) ACCOUNTANTS AND AUDITORS'
                810='(0810) APPRAISERS AND ASSESSORS OF REAL ESTATE' 820='(0820) BUDGET ANALYSTS'
                830='(0830) CREDIT ANALYSTS' 840='(0840) FINANCIAL ANALYSTS'
                850='(0850) PERSONAL FINANCIAL ADVISORS' 860='(0860) INSURANCE UNDERWRITERS'
                900='(0900) FINANCIAL EXAMINERS' 910='(0910) CREDIT COUNSELORS AND LOAN OFFICERS'
                930='(0930) TAX EXAMINERS AND COLLECTORS, AND REVENUE AGENTS' 940='(0940) TAX PREPARERS'
                950='(0950) FINANCIAL SPECIALISTS, ALL OTHER'
                1005='(1005) COMPUTER AND INFORMATION RESEARCH SCIENTISTS'
                1006='(1006) COMPUTER SYSTEMS ANALYSTS' 1007='(1007) INFORMATION SECURITY ANALYSTS'
                1010='(1010) COMPUTER PROGRAMMERS'
                1020='(1020) SOFTWARE DEVELOPERS, APPLICATIONS AND SYSTEMS SOFTWARE'
                1030='(1030) WEB DEVELOPERS' 1050='(1050) COMPUTER SUPPORT SPECIALISTS'
                1060='(1060) DATABASE ADMINISTRATORS'
                1105='(1105) NETWORK AND COMPUTER SYSTEMS ADMINISTRATORS'
                1106='(1106) COMPUTER NETWORK ARCHITECTS ' 1107='(1107) COMPUTER OCCUPATIONS, ALL OTHER'
                1200='(1200) ACTUARIES' 1210='(1210) MATHEMATICIANS'
                1220='(1220) OPERATIONS RESEARCH ANALYSTS' 1230='(1230) STATISTICIANS'
                1240='(1240) MISCELLANEOUS MATHEMATICAL SCIENCE OCCUPATIONS'
                1300='(1300) ARCHITECTS, EXCEPT NAVAL'
                1310='(1310) SURVEYORS, CARTOGRAPHERS, AND PHOTOGRAMMETRISTS'
                1320='(1320) AEROSPACE ENGINEERS' 1330='(1330) AGRICULTURAL ENGINEERS'
                1340='(1340) BIOMEDICAL ENGINEERS' 1350='(1350) CHEMICAL ENGINEERS'
                1360='(1360) CIVIL ENGINEERS' 1400='(1400) COMPUTER HARDWARE ENGINEERS'
                1410='(1410) ELECTRICAL AND ELECTRONICS ENGINEERS' 1420='(1420) ENVIRONMENTAL ENGINEERS'
                1430='(1430) INDUSTRIAL ENGINEERS, INCLUDING HEALTH AND SAFETY'
                1440='(1440) MARINE ENGINEERS AND NAVAL ARCHITECTS' 1450='(1450) MATERIALS ENGINEERS'
                1460='(1460) MECHANICAL ENGINEERS'
                1500='(1500) MINING AND GEOLOGICAL ENGINEERS, INCLUDING MINING SAFETY ENGINEERS'
                1510='(1510) NUCLEAR ENGINEERS' 1520='(1520) PETROLEUM ENGINEERS'
                1530='(1530) ENGINEERS, ALL OTHER' 1540='(1540) DRAFTERS'
                1550='(1550) ENGINEERING TECHNICIANS, EXCEPT DRAFTERS'
                1560='(1560) SURVEYING AND MAPPING TECHNICIANS'
                1600='(1600) AGRICULTURAL AND FOOD SCIENTISTS' 1610='(1610) BIOLOGICAL SCIENTISTS'
                1640='(1640) CONSERVATION SCIENTISTS AND FORESTERS' 1650='(1650) MEDICAL SCIENTISTS'
                1660='(1660) LIFE SCIENTISTS, ALL OTHER' 1700='(1700) ASTRONOMERS AND PHYSICISTS'
                1710='(1710) ATMOSPHERIC AND SPACE SCIENTISTS'
                1720='(1720) CHEMISTS AND MATERIALS SCIENTISTS'
                1740='(1740) ENVIRONMENTAL SCIENTISTS AND GEOSCIENTISTS'
                1760='(1760) PHYSICAL SCIENTISTS, ALL OTHER' 1800='(1800) ECONOMISTS'
                1815='(1815) SURVEY RESEARCHERS' 1820='(1820) PSYCHOLOGISTS' 1830='(1830) SOCIOLOGISTS'
                1840='(1840) URBAN AND REGIONAL PLANNERS'
                1860='(1860) MISCELLANEOUS SOCIAL SCIENTISTS AND RELATED WORKERS'
                1900='(1900) AGRICULTURAL AND FOOD SCIENCE TECHNICIANS'
                1910='(1910) BIOLOGICAL TECHNICIANS' 1920='(1920) CHEMICAL TECHNICIANS'
                1930='(1930) GEOLOGICAL AND PETROLEUM TECHNICIANS' 1940='(1940) NUCLEAR TECHNICIANS'
                1950='(1950) SOCIAL SCIENCE RESEARCH ASSISTANTS'
                1965='(1965) MISCELLANEOUS LIFE, PHYSICAL, AND SOCIAL SCIENCE TECHNICIANS'
                2000='(2000) COUNSELORS' 2010='(2010) SOCIAL WORKERS'
                2015='(2015) PROBATION OFFICERS AND CORRECTIONAL TREATMENT SPECIALISTS'
                2016='(2016) SOCIAL AND HUMAN SERVICE ASSISTANTS'
                2025='(2025) MISCELLANEOUS COMMUNITY AND SOCIAL SERVICE SPECIALISTS, INCLUDING HEALTH EDUCATORS AND COMMUNITY HEALTH WORKERS'
                2040='(2040) CLERGY' 2050='(2050) DIRECTORS, RELIGIOUS ACTIVITIES AND EDUCATION'
                2060='(2060) RELIGIOUS WORKERS, ALL OTHER' 2100='(2100) LAWYERS'
                2105='(2105) JUDICIAL LAW CLERKS'
                2110='(2110) JUDGES, MAGISTRATES, AND OTHER JUDICIAL WORKERS'
                2145='(2145) PARALEGALS AND LEGAL ASSISTANTS'
                2160='(2160) MISCELLANEOUS LEGAL SUPPORT WORKERS' 2200='(2200) POSTSECONDARY TEACHERS'
                2300='(2300) PRESCHOOL AND KINDERGARTEN TEACHERS'
                2310='(2310) ELEMENTARY AND MIDDLE SCHOOL TEACHERS'
                2320='(2320) SECONDARY SCHOOL TEACHERS' 2330='(2330) SPECIAL EDUCATION TEACHERS'
                2340='(2340) OTHER TEACHERS AND INSTRUCTORS'
                2400='(2400) ARCHIVISTS, CURATORS, AND MUSEUM TECHNICIANS' 2430='(2430) LIBRARIANS'
                2440='(2440) LIBRARY TECHNICIANS' 2540='(2540) TEACHER ASSISTANTS'
                2550='(2550) OTHER EDUCATION, TRAINING, AND LIBRARY WORKERS'
                2600='(2600) ARTISTS AND RELATED WORKERS' 2630='(2630) DESIGNERS' 2700='(2700) ACTORS'
                2710='(2710) PRODUCERS AND DIRECTORS'
                2720='(2720) ATHLETES, COACHES, UMPIRES, AND RELATED WORKERS'
                2740='(2740) DANCERS AND CHOREOGRAPHERS'
                2750='(2750) MUSICIANS, SINGERS, AND RELATED WORKERS'
                2760='(2760) ENTERTAINERS AND PERFORMERS, SPORTS AND RELATED WORKERS, ALL OTHER'
                2800='(2800) ANNOUNCERS' 2810='(2810) NEWS ANALYSTS, REPORTERS AND CORRESPONDENTS'
                2825='(2825) PUBLIC RELATIONS SPECIALISTS' 2830='(2830) EDITORS'
                2840='(2840) TECHNICAL WRITERS' 2850='(2850) WRITERS AND AUTHORS'
                2860='(2860) MISCELLANEOUS MEDIA AND COMMUNICATION WORKERS'
                2900='(2900) BROADCAST AND SOUND ENGINEERING TECHNICIANS AND RADIO OPERATORS'
                2910='(2910) PHOTOGRAPHERS'
                2920='(2920) TELEVISION, VIDEO, AND MOTION PICTURE CAMERA OPERATORS AND EDITORS'
                2960='(2960) MEDIA AND COMMUNICATION EQUIPMENT WORKERS, ALL OTHER'
                3000='(3000) CHIROPRACTORS' 3010='(3010) DENTISTS'
                3030='(3030) DIETITIANS AND NUTRITIONISTS' 3040='(3040) OPTOMETRISTS'
                3050='(3050) PHARMACISTS' 3060='(3060) PHYSICIANS AND SURGEONS'
                3110='(3110) PHYSICIAN ASSISTANTS' 3120='(3120) PODIATRISTS' 3140='(3140) AUDIOLOGISTS'
                3150='(3150) OCCUPATIONAL THERAPISTS' 3160='(3160) PHYSICAL THERAPISTS'
                3200='(3200) RADIATION THERAPISTS' 3210='(3210) RECREATIONAL THERAPISTS'
                3220='(3220) RESPIRATORY THERAPISTS' 3230='(3230) SPEECH-LANGUAGE PATHOLOGISTS'
                3235='(3235) EXERCISE PHYSIOLOGISTS' 3245='(3245) THERAPISTS, ALL OTHER'
                3250='(3250) VETERINARIANS' 3255='(3255) REGISTERED NURSES'
                3256='(3256) NURSE ANESTHETISTS' 3257='(3257) NURSE MIDWIVES'
                3258='(3258) NURSE PRACTITIONERS'
                3260='(3260) HEALTH DIAGNOSING AND TREATING PRACTITIONERS, ALL OTHER'
                3300='(3300) CLINICAL LABORATORY TECHNOLOGISTS AND TECHNICIANS'
                3310='(3310) DENTAL HYGIENISTS'
                3320='(3320) DIAGNOSTIC RELATED TECHNOLOGISTS AND TECHNICIANS'
                3400='(3400) EMERGENCY MEDICAL TECHNICIANS AND PARAMEDICS'
                3420='(3420) HEALTH PRACTITIONER SUPPORT TECHNOLOGISTS AND TECHNICIANS'
                3500='(3500) LICENSED PRACTICAL AND LICENSED VOCATIONAL NURSES'
                3510='(3510) MEDICAL RECORDS AND HEALTH INFORMATION TECHNICIANS'
                3520='(3520) OPTICIANS, DISPENSING'
                3535='(3535) MISCELLANEOUS HEALTH TECHNOLOGISTS AND TECHNICIANS'
                3540='(3540) OTHER HEALTHCARE PRACTITIONERS AND TECHNICAL OCCUPATIONS'
                3600='(3600) NURSING, PSYCHIATRIC, AND HOME HEALTH AIDES'
                3610='(3610) OCCUPATIONAL THERAPY ASSISTANTS AND AIDES'
                3620='(3620) PHYSICAL THERAPIST ASSISTANTS AND AIDES' 3630='(3630) MASSAGE THERAPISTS'
                3640='(3640) DENTAL ASSISTANTS' 3645='(3645) MEDICAL ASSISTANTS'
                3646='(3646) MEDICAL TRANSCRIPTIONISTS' 3647='(3647) PHARMACY AIDES'
                3648='(3648) VETERINARY ASSISTANTS AND LABORATORY ANIMAL CARETAKERS'
                3649='(3649) PHLEBOTOMISTS'
                3655='(3655) HEALTHCARE SUPPORT WORKERS, ALL OTHER, INCLUDING MEDICAL EQUIPMENT PREPARERS'
                3700='(3700) FIRST-LINE SUPERVISORS OF CORRECTIONAL OFFICERS'
                3710='(3710) FIRST-LINE SUPERVISORS OF POLICE AND DETECTIVES'
                3720='(3720) FIRST-LINE SUPERVISORS OF FIRE FIGHTING AND PREVENTION WORKERS'
                3730='(3730) FIRST-LINE SUPERVISORS OF PROTECTIVE SERVICE WORKERS, ALL OTHER'
                3740='(3740) FIREFIGHTERS' 3750='(3750) FIRE INSPECTORS'
                3800='(3800) BAILIFFS, CORRECTIONAL OFFICERS, AND JAILERS'
                3820='(3820) DETECTIVES AND CRIMINAL INVESTIGATORS' 3830='(3830) FISH AND GAME WARDENS'
                3840='(3840) PARKING ENFORCEMENT WORKERS'
                3850='(3850) POLICE AND SHERIFF''S PATROL OFFICERS'
                3860='(3860) TRANSIT AND RAILROAD POLICE' 3900='(3900) ANIMAL CONTROL WORKERS'
                3910='(3910) PRIVATE DETECTIVES AND INVESTIGATORS'
                3930='(3930) SECURITY GUARDS AND GAMING SURVEILLANCE OFFICERS'
                3940='(3940) CROSSING GUARDS' 3945='(3945) TRANSPORTATION SECURITY SCREENERS'
                3955='(3955) LIFEGUARDS AND OTHER RECREATIONAL, AND ALL OTHER PROTECTIVE SERVICE WORKERS'
                4000='(4000) CHEFS AND HEAD COOKS'
                4010='(4010) FIRST-LINE SUPERVISORS OF FOOD PREPARATION AND SERVING WORKERS'
                4020='(4020) COOKS' 4030='(4030) FOOD PREPARATION WORKERS' 4040='(4040) BARTENDERS'
                4050='(4050) COMBINED FOOD PREPARATION AND SERVING WORKERS, INCLUDING FAST FOOD'
                4060='(4060) COUNTER ATTENDANTS, CAFETERIA, FOOD CONCESSION, AND COFFEE SHOP'
                4110='(4110) WAITERS AND WAITRESSES' 4120='(4120) FOOD SERVERS, NONRESTAURANT'
                4130='(4130) DINING ROOM AND CAFETERIA ATTENDANTS AND BARTENDER HELPERS'
                4140='(4140) DISHWASHERS'
                4150='(4150) HOSTS AND HOSTESSES, RESTAURANT, LOUNGE, AND COFFEE SHOP'
                4160='(4160) FOOD PREPARATION AND SERVING RELATED WORKERS, ALL OTHER'
                4200='(4200) FIRST-LINE SUPERVISORS OF HOUSEKEEPING AND JANITORIAL WORKERS'
                4210='(4210) FIRST-LINE SUPERVISORS OF LANDSCAPING, LAWN SERVICE, AND GROUNDSKEEPING WORKERS'
                4220='(4220) JANITORS AND BUILDING CLEANERS'
                4230='(4230) MAIDS AND HOUSEKEEPING CLEANERS' 4240='(4240) PEST CONTROL WORKERS'
                4250='(4250) GROUNDS MAINTENANCE WORKERS'
                4300='(4300) FIRST-LINE SUPERVISORS OF GAMING WORKERS'
                4320='(4320) FIRST-LINE SUPERVISORS OF PERSONAL SERVICE WORKERS'
                4340='(4340) ANIMAL TRAINERS' 4350='(4350) NONFARM ANIMAL CARETAKERS'
                4400='(4400) GAMING SERVICES WORKERS' 4410='(4410) MOTION PICTURE PROJECTIONISTS'
                4420='(4420) USHERS, LOBBY ATTENDANTS, AND TICKET TAKERS'
                4430='(4430) MISCELLANEOUS ENTERTAINMENT ATTENDANTS AND RELATED WORKERS'
                4460='(4460) EMBALMERS AND FUNERAL ATTENDANTS'
                4465='(4465) MORTICIANS, UNDERTAKERS, AND FUNERAL DIRECTORS' 4500='(4500) BARBERS'
                4510='(4510) HAIRDRESSERS, HAIRSTYLISTS, AND COSMETOLOGISTS'
                4520='(4520) MISCELLANEOUS PERSONAL APPEARANCE WORKERS'
                4530='(4530) BAGGAGE PORTERS, BELLHOPS, AND CONCIERGES'
                4540='(4540) TOUR AND TRAVEL GUIDES' 4600='(4600) CHILDCARE WORKERS'
                4610='(4610) PERSONAL CARE AIDES' 4620='(4620) RECREATION AND FITNESS WORKERS'
                4640='(4640) RESIDENTIAL ADVISORS'
                4650='(4650) PERSONAL CARE AND SERVICE WORKERS, ALL OTHER '
                4700='(4700) FIRST-LINE SUPERVISORS OF RETAIL SALES WORKERS'
                4710='(4710) FIRST-LINE SUPERVISORS OF NON-RETAIL SALES WORKERS' 4720='(4720) CASHIERS'
                4740='(4740) COUNTER AND RENTAL CLERKS' 4750='(4750) PARTS SALESPERSONS'
                4760='(4760) RETAIL SALESPERSONS' 4800='(4800) ADVERTISING SALES AGENTS'
                4810='(4810) INSURANCE SALES AGENTS'
                4820='(4820) SECURITIES, COMMODITIES, AND FINANCIAL SERVICES SALES AGENTS'
                4830='(4830) TRAVEL AGENTS' 4840='(4840) SALES REPRESENTATIVES, SERVICES, ALL OTHER'
                4850='(4850) SALES REPRESENTATIVES, WHOLESALE AND MANUFACTURING'
                4900='(4900) MODELS, DEMONSTRATORS, AND PRODUCT PROMOTERS'
                4920='(4920) REAL ESTATE BROKERS AND SALES AGENTS' 4930='(4930) SALES ENGINEERS'
                4940='(4940) TELEMARKETERS'
                4950='(4950) DOOR-TO-DOOR SALES WORKERS, NEWS AND STREET VENDORS, AND RELATED WORKERS'
                4965='(4965) SALES AND RELATED WORKERS, ALL OTHER'
                5000='(5000) FIRST-LINE SUPERVISORS OF OFFICE AND ADMINISTRATIVE SUPPORT WORKERS'
                5010='(5010) SWITCHBOARD OPERATORS, INCLUDING ANSWERING SERVICE'
                5020='(5020) TELEPHONE OPERATORS'
                5030='(5030) COMMUNICATIONS EQUIPMENT OPERATORS, ALL OTHER'
                5100='(5100) BILL AND ACCOUNT COLLECTORS' 5110='(5110) BILLING AND POSTING CLERKS '
                5120='(5120) BOOKKEEPING, ACCOUNTING, AND AUDITING CLERKS'
                5130='(5130) GAMING CAGE WORKERS' 5140='(5140) PAYROLL AND TIMEKEEPING CLERKS'
                5150='(5150) PROCUREMENT CLERKS' 5160='(5160) TELLERS'
                5165='(5165) FINANCIAL CLERKS, ALL OTHER' 5200='(5200) BROKERAGE CLERKS'
                5210='(5210) CORRESPONDENCE CLERKS' 5220='(5220) COURT, MUNICIPAL, AND LICENSE CLERKS'
                5230='(5230) CREDIT AUTHORIZERS, CHECKERS, AND CLERKS'
                5240='(5240) CUSTOMER SERVICE REPRESENTATIVES'
                5250='(5250) ELIGIBILITY INTERVIEWERS, GOVERNMENT PROGRAMS' 5260='(5260) FILE CLERKS'
                5300='(5300) HOTEL, MOTEL, AND RESORT DESK CLERKS'
                5310='(5310) INTERVIEWERS, EXCEPT ELIGIBILITY AND LOAN'
                5320='(5320) LIBRARY ASSISTANTS, CLERICAL' 5330='(5330) LOAN INTERVIEWERS AND CLERKS'
                5340='(5340) NEW ACCOUNTS CLERKS' 5350='(5350) ORDER CLERKS'
                5360='(5360) HUMAN RESOURCES ASSISTANTS, EXCEPT PAYROLL AND TIMEKEEPING'
                5400='(5400) RECEPTIONISTS AND INFORMATION CLERKS'
                5410='(5410) RESERVATION AND TRANSPORTATION TICKET AGENTS AND TRAVEL CLERKS'
                5420='(5420) INFORMATION AND RECORD CLERKS, ALL OTHER'
                5500='(5500) CARGO AND FREIGHT AGENTS' 5510='(5510) COURIERS AND MESSENGERS'
                5520='(5520) DISPATCHERS' 5530='(5530) METER READERS, UTILITIES'
                5540='(5540) POSTAL SERVICE CLERKS' 5550='(5550) POSTAL SERVICE MAIL CARRIERS'
                5560='(5560) POSTAL SERVICE MAIL SORTERS, PROCESSORS, AND PROCESSING MACHINE OPERATORS'
                5600='(5600) PRODUCTION, PLANNING, AND EXPEDITING CLERKS'
                5610='(5610) SHIPPING, RECEIVING, AND TRAFFIC CLERKS'
                5620='(5620) STOCK CLERKS AND ORDER FILLERS'
                5630='(5630) WEIGHERS, MEASURERS, CHECKERS, AND SAMPLERS, RECORDKEEPING'
                5700='(5700) SECRETARIES AND ADMINISTRATIVE ASSISTANTS' 5800='(5800) COMPUTER OPERATORS'
                5810='(5810) DATA ENTRY KEYERS' 5820='(5820) WORD PROCESSORS AND TYPISTS'
                5830='(5830) DESKTOP PUBLISHERS'
                5840='(5840) INSURANCE CLAIMS AND POLICY PROCESSING CLERKS'
                5850='(5850) MAIL CLERKS AND MAIL MACHINE OPERATORS, EXCEPT POSTAL SERVICE'
                5860='(5860) OFFICE CLERKS, GENERAL'
                5900='(5900) OFFICE MACHINE OPERATORS, EXCEPT COMPUTER'
                5910='(5910) PROOFREADERS AND COPY MARKERS' 5920='(5920) STATISTICAL ASSISTANTS'
                5940='(5940) OFFICE AND ADMINISTRATIVE SUPPORT WORKERS, ALL OTHER'
                6005='(6005) FIRST-LINE SUPERVISORS OF FARMING, FISHING, AND FORESTRY WORKERS'
                6010='(6010) AGRICULTURAL INSPECTORS' 6020='(6020) ANIMAL BREEDERS'
                6040='(6040) GRADERS AND SORTERS, AGRICULTURAL PRODUCTS'
                6050='(6050) MISCELLANEOUS AGRICULTURAL WORKERS '
                6100='(6100) FISHERS AND RELATED FISHING WORKERS' 6110='(6110) HUNTERS AND TRAPPERS'
                6120='(6120) FOREST AND CONSERVATION WORKERS' 6130='(6130) LOGGING WORKERS'
                6200='(6200) FIRST-LINE SUPERVISORS OF CONSTRUCTION TRADES AND EXTRACTION WORKERS'
                6210='(6210) BOILERMAKERS' 6220='(6220) BRICKMASONS, BLOCKMASONS, AND STONEMASONS'
                6230='(6230) CARPENTERS' 6240='(6240) CARPET, FLOOR, AND TILE INSTALLERS AND FINISHERS'
                6250='(6250) CEMENT MASONS, CONCRETE FINISHERS, AND TERRAZZO WORKERS'
                6260='(6260) CONSTRUCTION LABORERS'
                6300='(6300) PAVING, SURFACING, AND TAMPING EQUIPMENT OPERATORS'
                6310='(6310) PILE-DRIVER OPERATORS'
                6320='(6320) OPERATING ENGINEERS AND OTHER CONSTRUCTION EQUIPMENT OPERATORS'
                6330='(6330) DRYWALL INSTALLERS, CEILING TILE INSTALLERS, AND TAPERS'
                6355='(6355) ELECTRICIANS' 6360='(6360) GLAZIERS' 6400='(6400) INSULATION WORKERS'
                6420='(6420) PAINTERS, CONSTRUCTION AND MAINTENANCE' 6430='(6430) PAPERHANGERS'
                6440='(6440) PIPELAYERS, PLUMBERS, PIPEFITTERS, AND STEAMFITTERS'
                6460='(6460) PLASTERERS AND STUCCO MASONS'
                6500='(6500) REINFORCING IRON AND REBAR WORKERS' 6515='(6515) ROOFERS'
                6520='(6520) SHEET METAL WORKERS' 6530='(6530) STRUCTURAL IRON AND STEEL WORKERS'
                6540='(6540) SOLAR PHOTOVOLTAIC INSTALLERS' 6600='(6600) HELPERS, CONSTRUCTION TRADES'
                6660='(6660) CONSTRUCTION AND BUILDING INSPECTORS'
                6700='(6700) ELEVATOR INSTALLERS AND REPAIRERS' 6710='(6710) FENCE ERECTORS'
                6720='(6720) HAZARDOUS MATERIALS REMOVAL WORKERS'
                6730='(6730) HIGHWAY MAINTENANCE WORKERS'
                6740='(6740) RAIL-TRACK LAYING AND MAINTENANCE EQUIPMENT OPERATORS'
                6750='(6750) SEPTIC TANK SERVICERS AND SEWER PIPE CLEANERS'
                6765='(6765) MISCELLANEOUS CONSTRUCTION AND RELATED WORKERS'
                6800='(6800) DERRICK, ROTARY DRILL, AND SERVICE UNIT OPERATORS, OIL, GAS, AND MINING'
                6820='(6820) EARTH DRILLERS, EXCEPT OIL AND GAS'
                6830='(6830) EXPLOSIVES WORKERS, ORDNANCE HANDLING EXPERTS, AND BLASTERS'
                6840='(6840) MINING MACHINE OPERATORS' 6910='(6910) ROOF BOLTERS, MINING'
                6920='(6920) ROUSTABOUTS, OIL AND GAS' 6930='(6930) HELPERS--EXTRACTION WORKERS'
                6940='(6940) OTHER EXTRACTION WORKERS'
                7000='(7000) FIRST-LINE SUPERVISORS OF MECHANICS, INSTALLERS, AND REPAIRERS'
                7010='(7010) COMPUTER, AUTOMATED TELLER, AND OFFICE MACHINE REPAIRERS'
                7020='(7020) RADIO AND TELECOMMUNICATIONS EQUIPMENT INSTALLERS AND REPAIRERS'
                7030='(7030) AVIONICS TECHNICIANS'
                7040='(7040) ELECTRIC MOTOR, POWER TOOL, AND RELATED REPAIRERS'
                7050='(7050) ELECTRICAL AND ELECTRONICS INSTALLERS AND REPAIRERS, TRANSPORTATION EQUIPMENT'
                7100='(7100) ELECTRICAL AND ELECTRONICS REPAIRERS, INDUSTRIAL AND UTILITY'
                7110='(7110) ELECTRONIC EQUIPMENT INSTALLERS AND REPAIRERS, MOTOR VEHICLES'
                7120='(7120) ELECTRONIC HOME ENTERTAINMENT EQUIPMENT INSTALLERS AND REPAIRERS'
                7130='(7130) SECURITY AND FIRE ALARM SYSTEMS INSTALLERS'
                7140='(7140) AIRCRAFT MECHANICS AND SERVICE TECHNICIANS'
                7150='(7150) AUTOMOTIVE BODY AND RELATED REPAIRERS'
                7160='(7160) AUTOMOTIVE GLASS INSTALLERS AND REPAIRERS'
                7200='(7200) AUTOMOTIVE SERVICE TECHNICIANS AND MECHANICS'
                7210='(7210) BUS AND TRUCK MECHANICS AND DIESEL ENGINE SPECIALISTS'
                7220='(7220) HEAVY VEHICLE AND MOBILE EQUIPMENT SERVICE TECHNICIANS AND MECHANICS'
                7240='(7240) SMALL ENGINE MECHANICS'
                7260='(7260) MISCELLANEOUS VEHICLE AND MOBILE EQUIPMENT MECHANICS, INSTALLERS, AND REPAIRERS'
                7300='(7300) CONTROL AND VALVE INSTALLERS AND REPAIRERS'
                7315='(7315) HEATING, AIR CONDITIONING, AND REFRIGERATION MECHANICS AND INSTALLERS'
                7320='(7320) HOME APPLIANCE REPAIRERS'
                7330='(7330) INDUSTRIAL AND REFRACTORY MACHINERY MECHANICS'
                7340='(7340) MAINTENANCE AND REPAIR WORKERS, GENERAL'
                7350='(7350) MAINTENANCE WORKERS, MACHINERY' 7360='(7360) MILLWRIGHTS'
                7410='(7410) ELECTRICAL POWER-LINE INSTALLERS AND REPAIRERS'
                7420='(7420) TELECOMMUNICATIONS LINE INSTALLERS AND REPAIRERS'
                7430='(7430) PRECISION INSTRUMENT AND EQUIPMENT REPAIRERS'
                7440='(7440) WIND TURBINE SERVICE TECHNICIANS'
                7510='(7510) COIN, VENDING, AND AMUSEMENT MACHINE SERVICERS AND REPAIRERS'
                7520='(7520) COMMERCIAL DIVERS' 7540='(7540) LOCKSMITHS AND SAFE REPAIRERS'
                7550='(7550) MANUFACTURED BUILDING AND MOBILE HOME INSTALLERS' 7560='(7560) RIGGERS'
                7600='(7600) SIGNAL AND TRACK SWITCH REPAIRERS'
                7610='(7610) HELPERS--INSTALLATION, MAINTENANCE, AND REPAIR WORKERS '
                7630='(7630) OTHER INSTALLATION, MAINTENANCE, AND REPAIR WORKERS'
                7700='(7700) FIRST-LINE SUPERVISORS OF PRODUCTION AND OPERATING WORKERS'
                7710='(7710) AIRCRAFT STRUCTURE, SURFACES, RIGGING, AND SYSTEMS ASSEMBLERS'
                7720='(7720) ELECTRICAL, ELECTRONICS, AND ELECTROMECHANICAL ASSEMBLERS'
                7730='(7730) ENGINE AND OTHER MACHINE ASSEMBLERS'
                7740='(7740) STRUCTURAL METAL FABRICATORS AND FITTERS'
                7750='(7750) MISCELLANEOUS ASSEMBLERS AND FABRICATORS' 7800='(7800) BAKERS'
                7810='(7810) BUTCHERS AND OTHER MEAT, POULTRY, AND FISH PROCESSING WORKERS'
                7830='(7830) FOOD AND TOBACCO ROASTING, BAKING, AND DRYING MACHINE OPERATORS AND TENDERS'
                7840='(7840) FOOD BATCHMAKERS' 7850='(7850) FOOD COOKING MACHINE OPERATORS AND TENDERS'
                7855='(7855) FOOD PROCESSING WORKERS, ALL OTHER'
                7900='(7900) COMPUTER CONTROL PROGRAMMERS AND OPERATORS'
                7920='(7920) EXTRUDING AND DRAWING MACHINE SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC'
                7930='(7930) FORGING MACHINE SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC'
                7940='(7940) ROLLING MACHINE SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC'
                7950='(7950) CUTTING, PUNCHING, AND PRESS MACHINE SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC'
                7960='(7960) DRILLING AND BORING MACHINE TOOL SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC '
                8000='(8000) GRINDING, LAPPING, POLISHING, AND BUFFING MACHINE TOOL SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC'
                8010='(8010) LATHE AND TURNING MACHINE TOOL SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC'
                8020='(8020) MILLING AND PLANING MACHINE SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC'
                8030='(8030) MACHINISTS'
                8040='(8040) METAL FURNACE OPERATORS, TENDERS, POURERS, AND CASTERS'
                8060='(8060) MODEL MAKERS AND PATTERNMAKERS, METAL AND PLASTIC'
                8100='(8100) MOLDERS AND MOLDING MACHINE SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC'
                8120='(8120) MULTIPLE MACHINE TOOL SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC '
                8130='(8130) TOOL AND DIE MAKERS' 8140='(8140) WELDING, SOLDERING, AND BRAZING WORKERS'
                8150='(8150) HEAT TREATING EQUIPMENT SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC'
                8160='(8160) LAYOUT WORKERS, METAL AND PLASTIC'
                8200='(8200) PLATING AND COATING MACHINE SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC'
                8210='(8210) TOOL GRINDERS, FILERS, AND SHARPENERS'
                8220='(8220) METAL WORKERS AND PLASTIC WORKERS, ALL OTHER'
                8250='(8250) PREPRESS TECHNICIANS AND WORKERS' 8255='(8255) PRINTING PRESS OPERATORS'
                8256='(8256) PRINT BINDING AND FINISHING WORKERS'
                8300='(8300) LAUNDRY AND DRY-CLEANING WORKERS'
                8310='(8310) PRESSERS, TEXTILE, GARMENT, AND RELATED MATERIALS'
                8320='(8320) SEWING MACHINE OPERATORS'
                8330='(8330) SHOE AND LEATHER WORKERS AND REPAIRERS'
                8340='(8340) SHOE MACHINE OPERATORS AND TENDERS'
                8350='(8350) TAILORS, DRESSMAKERS, AND SEWERS'
                8360='(8360) TEXTILE BLEACHING AND DYEING MACHINE OPERATORS AND TENDERS'
                8400='(8400) TEXTILE CUTTING MACHINE SETTERS, OPERATORS, AND TENDERS'
                8410='(8410) TEXTILE KNITTING AND WEAVING MACHINE SETTERS, OPERATORS, AND TENDERS'
                8420='(8420) TEXTILE WINDING, TWISTING, AND DRAWING OUT MACHINE SETTERS, OPERATORS, AND TENDERS'
                8430='(8430) EXTRUDING AND FORMING MACHINE SETTERS, OPERATORS, AND TENDERS, SYNTHETIC AND GLASS FIBERS'
                8440='(8440) FABRIC AND APPAREL PATTERNMAKERS' 8450='(8450) UPHOLSTERERS'
                8460='(8460) TEXTILE, APPAREL, AND FURNISHINGS WORKERS, ALL OTHER'
                8500='(8500) CABINETMAKERS AND BENCH CARPENTERS' 8510='(8510) FURNITURE FINISHERS'
                8520='(8520) MODEL MAKERS AND PATTERNMAKERS, WOOD'
                8530='(8530) SAWING MACHINE SETTERS, OPERATORS, AND TENDERS, WOOD'
                8540='(8540) WOODWORKING MACHINE SETTERS, OPERATORS, AND TENDERS, EXCEPT SAWING'
                8550='(8550) WOODWORKERS, ALL OTHER'
                8600='(8600) POWER PLANT OPERATORS, DISTRIBUTORS, AND DISPATCHERS'
                8610='(8610) STATIONARY ENGINEERS AND BOILER OPERATORS'
                8620='(8620) WATER AND WASTEWATER TREATMENT PLANT AND SYSTEM OPERATORS'
                8630='(8630) MISCELLANEOUS PLANT AND SYSTEM OPERATORS'
                8640='(8640) CHEMICAL PROCESSING MACHINE SETTERS, OPERATORS, AND TENDERS'
                8650='(8650) CRUSHING, GRINDING, POLISHING, MIXING, AND BLENDING WORKERS'
                8710='(8710) CUTTING WORKERS'
                8720='(8720) EXTRUDING, FORMING, PRESSING, AND COMPACTING MACHINE SETTERS, OPERATORS, AND TENDERS'
                8730='(8730) FURNACE, KILN, OVEN, DRIER, AND KETTLE OPERATORS AND TENDERS'
                8740='(8740) INSPECTORS, TESTERS, SORTERS, SAMPLERS, AND WEIGHERS'
                8750='(8750) JEWELERS AND PRECIOUS STONE AND METAL WORKERS'
                8760='(8760) MEDICAL, DENTAL, AND OPHTHALMIC LABORATORY TECHNICIANS'
                8800='(8800) PACKAGING AND FILLING MACHINE OPERATORS AND TENDERS'
                8810='(8810) PAINTING WORKERS'
                8830='(8830) PHOTOGRAPHIC PROCESS WORKERS AND PROCESSING MACHINE OPERATORS'
                8840='(8840) SEMICONDUCTOR PROCESSORS'
                8850='(8850) ADHESIVE BONDING MACHINE OPERATORS AND TENDERS'
                8860='(8860) CLEANING, WASHING, AND METAL PICKLING EQUIPMENT OPERATORS AND TENDERS'
                8900='(8900) COOLING AND FREEZING EQUIPMENT OPERATORS AND TENDERS'
                8910='(8910) ETCHERS AND ENGRAVERS'
                8920='(8920) MOLDERS, SHAPERS, AND CASTERS, EXCEPT METAL AND PLASTIC'
                8930='(8930) PAPER GOODS MACHINE SETTERS, OPERATORS, AND TENDERS'
                8940='(8940) TIRE BUILDERS' 8950='(8950) HELPERS--PRODUCTION WORKERS'
                8965='(8965) PRODUCTION WORKERS, ALL OTHER'
                9000='(9000) SUPERVISORS OF TRANSPORTATION AND MATERIAL MOVING WORKERS'
                9030='(9030) AIRCRAFT PILOTS AND FLIGHT ENGINEERS'
                9040='(9040) AIR TRAFFIC CONTROLLERS AND AIRFIELD OPERATIONS SPECIALISTS'
                9050='(9050) FLIGHT ATTENDANTS'
                9110='(9110) AMBULANCE DRIVERS AND ATTENDANTS, EXCEPT EMERGENCY MEDICAL TECHNICIANS'
                9120='(9120) BUS DRIVERS' 9130='(9130) DRIVER/SALES WORKERS AND TRUCK DRIVERS'
                9140='(9140) TAXI DRIVERS AND CHAUFFEURS'
                9150='(9150) MOTOR VEHICLE OPERATORS, ALL OTHER'
                9200='(9200) LOCOMOTIVE ENGINEERS AND OPERATORS'
                9230='(9230) RAILROAD BRAKE, SIGNAL, AND SWITCH OPERATORS'
                9240='(9240) RAILROAD CONDUCTORS AND YARDMASTERS'
                9260='(9260) SUBWAY, STREETCAR, AND OTHER RAIL TRANSPORTATION WORKERS'
                9300='(9300) SAILORS AND MARINE OILERS'
                9310='(9310) SHIP AND BOAT CAPTAINS AND OPERATORS' 9330='(9330) SHIP ENGINEERS'
                9340='(9340) BRIDGE AND LOCK TENDERS' 9350='(9350) PARKING LOT ATTENDANTS'
                9360='(9360) AUTOMOTIVE AND WATERCRAFT SERVICE ATTENDANTS   '
                9410='(9410) TRANSPORTATION INSPECTORS'
                9415='(9415) TRANSPORTATION ATTENDANTS, EXCEPT FLIGHT ATTENDANTS'
                9420='(9420) OTHER TRANSPORTATION WORKERS ' 9500='(9500) CONVEYOR OPERATORS AND TENDERS'
                9510='(9510) CRANE AND TOWER OPERATORS'
                9520='(9520) DREDGE, EXCAVATING, AND LOADING MACHINE OPERATORS'
                9560='(9560) HOIST AND WINCH OPERATORS'
                9600='(9600) INDUSTRIAL TRUCK AND TRACTOR OPERATORS'
                9610='(9610) CLEANERS OF VEHICLES AND EQUIPMENT'
                9620='(9620) LABORERS AND FREIGHT, STOCK, AND MATERIAL MOVERS, HAND'
                9630='(9630) MACHINE FEEDERS AND OFFBEARERS' 9640='(9640) PACKERS AND PACKAGERS, HAND'
                9650='(9650) PUMPING STATION OPERATORS'
                9720='(9720) REFUSE AND RECYCLABLE MATERIAL COLLECTORS'
                9730='(9730) MINE SHUTTLE CAR OPERATORS' 9740='(9740) TANK CAR, TRUCK, AND SHIP LOADERS'
                9750='(9750) MATERIAL MOVING WORKERS, ALL OTHER'
                9800='(9800) MILITARY OFFICER SPECIAL AND TACTICAL OPERATIONS LEADERS'
                9810='(9810) FIRST-LINE ENLISTED MILITARY SUPERVISORS'
                9820='(9820) MILITARY ENLISTED TACTICAL OPERATIONS AND AIR/WEAPONS SPECIALISTS AND CREW MEMBERS'
                9830='(9830) MILITARY, RANK NOT SPECIFIED'
                9920='(9920) UNEMPLOYED, WITH NO WORK EXPERIENCE IN THE LAST 5 YEARS OR EARLIER OR NEVER WORKED'
                9996='(9996) NOT IN LABOR FORCE' 9997='(9997) UNKNOWN OR UNSURE'
                9998='(9998) MISSING OR NOT REPORTED' 9999='(9999) INAPP';
VALUE c1paa3af  1='(1) LESS THAN 1 YEAR' 2='(2) 1-2 YEARS' 3='(3) 3-5 YEARS'
                4='(4) MORE THAN 5 YEARS' 7='(7) DON''T KNOW' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1pf4fff  1='(1) VERY CLOSELY' 2='(2) SOMEWHAT CLOSELY' 3='(3) NOT VERY CLOSELY'
                4='(4) NOT AT ALL CLOSELY' 7='(7) DON''T KNOW' 8='(8) REFUSED';
VALUE c1sm9fff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA'
                1='(1) TWO OR MORE TIMES A WEEK' 2='(2) ONCE A WEEK' 3='(3) TWO OR THREE TIMES A MONTH'
                4='(4) ONCE A MONTH' 5='(5) LESS OFTEN THAN ONCE A MONTH' 6='(6) NEVER OR NOT AT ALL'
                8='(8) REFUSED' 9='(9) INAPP';
VALUE c1pb32af  1='(1) MALE' 2='(2) FEMALE' 7='(7) DON''T KNOW' 8='(8) REFUSED'
                9='(9) INAPP';
VALUE c1pa1fff  1='(1) EXCELLENT' 2='(2) VERY GOOD' 3='(3) GOOD' 4='(4) FAIR' 5='(5) POOR'
                7='(7) DON''T KNOW' 8='(8) REFUSED';
VALUE c1pa36af  1='(01) JANUARY' 2='(02) FEBRUARY' 3='(03) MARCH' 4='(04) APRIL'
                5='(05) MAY' 6='(06) JUNE' 7='(07) JULY' 8='(08) AUGUST' 9='(09) SEPTEMBER'
                10='(10) OCTOBER' 11='(11) NOVEMBER' 12='(12) DECEMBER' 97='(97) DON''T KNOW'
                98='(98) REFUSED' 99='(99) INAPP';
VALUE c1pa51ff  1='(1) EVERY DAY' 2='(2) 5 OR 6 DAYS A WEEK' 3='(3) 3 OR 4 DAYS A WEEK'
                4='(4) 1 OR 2 DAYS A WEEK' 5='(5) LESS THAN 1 DAY A WEEK'
                6='(6) NEVER DRINK (VOLUNTEERED)' 7='(7) DON''T KNOW' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1ppanif  0='(0) Lowest panic score' 6='(6) Highest panic score';
VALUE c1se11a_1f  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) VERY NEGATIVELY'
                2='(2) NEGATIVELY' 3='(3) NOT AT ALL' 4='(4) POSITIVELY' 5='(5) VERY POSITIVELY'
                8='(8) REFUSED' 9='(9) INAPP';
VALUE c1pa21ff  1='(1) 10 MINUTES OR LESS' 2='(2) MORE THAN 10 MINUTES'
                7='(7) DON''T KNOW' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1pb1fff  1='(01) NO SCHOOL/SOME GRADE SCHOOL (1-6)'
                2='(02) EIGHTH GRADE/JUNIOR HIGH SCHOOL (7-8)'
                3='(03) SOME HIGH SCHOOL (9-12 NO DIPLOMA/NO GED)' 4='(04) GED'
                5='(05) GRADUATED FROM HIGH SCHOOL' 6='(06) 1 TO 2 YEARS OF COLLEGE, NO DEGREE YET'
                7='(07) 3 OR MORE YEARS OF COLLEGE, NO DEGREE YET'
                8='(08) GRAD. FROM 2-YEAR COLLEGE, VOCATIONAL SCHOOL, OR ASSOC. DEG.'
                9='(09) GRADUATED FROM A 4- OR 5-YEAR COLLEGE, OR BACHELOR''S DEG.'
                10='(10) SOME GRADUATE SCHOOL' 11='(11) MASTER''S DEGREE'
                12='(12) PH.D., ED.D., MD, DDS, LLB, LLD, JD, OR OTHER PROFESS''NL DEG.'
                97='(97) DON''T KNOW' 98='(98) REFUSED';
VALUE c1sn3aff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) ONCE A DAY OR MORE'
                2='(2) A FEW TIMES A WEEK' 3='(3) ONCE A WEEK' 4='(4) 1-3 TIMES PER MONTH'
                5='(5) LESS THAN ONCE PER MONTH' 6='(6) NEVER' 8='(8) REFUSED';
VALUE c1sf12bf  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) WEEKS' 2='(2) MONTHS'
                3='(3) YEARS' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1pa7aff  96='(96) CONGENITAL/AT BIRTH' 97='(97) DON''T KNOW' 98='(98) REFUSED'
                99='(99) INAPP';
VALUE c1pindmf  1='(01) AGRICULTURE, FORESTRY FISHING, HUNTING, AND MINING'
                2='(02) CONSTRUCTION' 3='(03) MANUFACTURING' 4='(04) WHOLESALE TRADE'
                5='(05) RETAIL TRADE' 6='(06) TRANSPORTATION AND WAREHOUSING AND UTILITIES'
                7='(07) INFORMATION'
                8='(08) FINANCE AND INSURANCE, AND REAL ESTATE, AND RENTAL AND LEASING'
                9='(09) PROFESSIONAL, SCIENTIFIC, AND MANAGEMENT, AND ADMINISTRATIVE, AND WASTE MANAGEMENT SERVICES'
                10='(10) EDUCATIONAL SERVICES, AND HEALTH CARE AND SOCIAL ASSISTANCE'
                11='(11) ARTS,ENTERTAINMENT, AND RECREATION, AND ACCOMMODATION AND FOOD SERVICES'
                12='(12) OTHER SERVICES, EXCEPT PUBLIC ADMINISTRATION' 13='(13) PUBLIC ADMINISTRATION'
                14='(14) MILITARY' 96='(96) NOT IN LABOR FORCE' 97='(97) UNKNOWN OR UNSURE'
                98='(98) MISSING OR NOT REPORTED' 99='(99) INAPP';
VALUE c1sk12ff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) VERY SERIOUS/STRESSFUL'
                2='(2) SOMEWHAT SERIOUS/STRESSFUL' 3='(3) A LITTLE SERIOUS/STRESSFUL'
                4='(4) NOT AT ALL SERIOUS/STRESSFUL' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1sg62ff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) MUCH LESS NOW'
                2='(2) SOMEWHAT LESS NOW' 3='(3) LITTLE LESS NOW' 4='(4) ABOUT THE SAME'
                5='(5) LITTLE MORE NOW' 6='(6) SOMEWHAT MORE NOW' 7='(7) MUCH MORE NOW' 8='(8) REFUSED ';
VALUE c1spiwof  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA'
                8='(8) NOT CALCULATED (Due to missing data)'
                9='(9) NOT CALCULATED (Due to Does not apply)';
VALUE c1pa3fff  1='(1) MUCH BETTER' 2='(2) SOMEWHAT BETTER' 3='(3) ABOUT THE SAME'
                4='(4) SOMEWHAT WORSE' 5='(5) MUCH WORSE' 7='(7) DON''T KNOW' 8='(8) REFUSED';
VALUE c1pindff  170='(0170) CROP PRODUCTION  ' 180='(0180) ANIMAL PRODUCTION  '
                190='(0190) FORESTRY EXCEPT LOGGING ' 270='(0270) LOGGING '
                280='(0280) FISHING, HUNTING, AND TRAPPING '
                290='(0290) SUPPORT ACTIVITIES FOR AGRICULTURE AND FORESTRY '
                370='(0370) OIL AND GAS EXTRACTION ' 380='(0380) COAL MINING '
                390='(0390) METAL ORE MINING ' 470='(0470) NONMETALLIC MINERAL MINING AND QUARRYING '
                480='(0480) NOT SPECIFIED TYPE OF MINING' 490='(0490) SUPPORT ACTIVITIES FOR MINING '
                570='(0570) ELECTRIC POWER GENERATION, TRANSMISSION AND DISTRIBUTION'
                580='(0580) NATURAL GAS DISTRIBUTION '
                590='(0590) ELECTRIC AND GAS, AND OTHER COMBINATIONS '
                670='(0670) WATER, STEAM, AIR-CONDITIONING, AND IRRIGATION SYSTEMS '
                680='(0680) SEWAGE TREATMENT FACILITIES ' 690='(0690) NOT SPECIFIED UTILITIES '
                770='(0770) CONSTRUCTION' 1070='(1070) ANIMAL FOOD, GRAIN AND OILSEED MILLING '
                1080='(1080) SUGAR AND CONFECTIONERY PRODUCTS '
                1090='(1090) FRUIT AND VEGETABLE PRESERVING AND SPECIALTY FOOD MANUFACTURING              '
                1170='(1170) DAIRY PRODUCT MANUFACTURING'
                1180='(1180) ANIMAL SLAUGHTERING AND PROCESSING ' 1190='(1190) RETAIL BAKERIES '
                1270='(1270) BAKERIES, EXCEPT RETAIL  '
                1280='(1280) SEAFOOD AND OTHER MISCELLANEOUS FOODS, N.E.C. '
                1290='(1290) NOT SPECIFIED FOOD INDUSTRIES' 1370='(1370) BEVERAGE MANUFACTURING'
                1390='(1390) TOBACCO MANUFACTURING' 1470='(1470) FIBER, YARN, AND THREAD MILLS '
                1480='(1480) FABRIC MILLS, EXCEPT KNITTING MILLS'
                1490='(1490) TEXTILE AND FABRIC FINISHING AND COATING MILLS '
                1570='(1570) CARPET AND RUG MILLS'
                1590='(1590) TEXTILE PRODUCT MILLS, EXCEPT CARPETS AND RUGS '
                1670='(1670) KNITTING FABRIC MILLS, AND APPAREL KNITTING MILLS '
                1680='(1680) CUT AND SEW APPAREL MANUFACTURING'
                1690='(1690) APPAREL ACCESSORIES AND OTHER APPAREL MANUFACTURING'
                1770='(1770) FOOTWEAR MANUFACTURING'
                1790='(1790) LEATHER TANNING AND FINISHING AND OTHER ALLIED PRODUCTS MANUFACTURING'
                1870='(1870) PULP, PAPER, AND PAPERBOARD MILLS '
                1880='(1880) PAPERBOARD CONTAINERS AND BOXES '
                1890='(1890) MISCELLANEOUS PAPER AND PULP PRODUCTS  '
                1990='(1990) PRINTING AND RELATED SUPPORT ACTIVITIES ' 2070='(2070) PETROLEUM REFINING '
                2090='(2090) MISCELLANEOUS PETROLEUM AND COAL PRODUCTS '
                2170='(2170) RESIN, SYNTHETIC RUBBER AND FIBERS, AND FILAMENTS MANUFACTURING   '
                2180='(2180) AGRICULTURAL CHEMICAL MANUFACTURING  '
                2190='(2190) PHARMACEUTICAL AND MEDICINE MANUFACTURING'
                2270='(2270) PAINT, COATING, AND ADHESIVE MANUFACTURING '
                2280='(2280) SOAP, CLEANING COMPOUND, AND COSMETICS MANUFACTURING '
                2290='(2290) INDUSTRIAL AND MISCELLANEOUS CHEMICALS '
                2370='(2370) PLASTICS PRODUCT MANUFACTURING ' 2380='(2380) TIRE MANUFACTURING '
                2390='(2390) RUBBER PRODUCTS, EXCEPT TIRES, MANUFACTURING '
                2470='(2470) POTTERY, CERAMICS, AND PLUMBING FIXTURE MANUFACTURING  '
                2480='(2480) STRUCTURAL CLAY PRODUCT MANUFACTURING '
                2490='(2490) GLASS AND GLASS PRODUCT MANUFACTURING '
                2570='(2570) CEMENT, CONCRETE, LIME, AND GYPSUM PRODUCT MANUFACTURING '
                2590='(2590) MISCELLANEOUS NONMETALLIC MINERAL PRODUCT MANUFACTURING '
                2670='(2670) IRON AND STEEL MILLS AND STEEL PRODUCT MANUFACTURING  '
                2680='(2680) ALUMINUM PRODUCTION AND PROCESSING  '
                2690='(2690) NONFERROUS METAL, EXCEPT ALUMINUM, PRODUCTION AND PROCESSING '
                2770='(2770) FOUNDRIES ' 2780='(2780) METAL FORGINGS AND STAMPINGS '
                2790='(2790) CUTLERY AND HAND TOOL MANUFACTURING  '
                2870='(2870) STRUCTURAL METALS, AND BOILER, TANK, AND SHIPPING CONTAINER MANUFACTURING '
                2880='(2880) MACHINE SHOPS; TURNED PRODUCT; SCREW, NUT AND BOLT MANUFACTURING  '
                2890='(2890) COATING, ENGRAVING, HEAT TREATING AND ALLIED ACTIVITIES '
                2970='(2970) ORDNANCE '
                2980='(2980) MISCELLANEOUS FABRICATED METAL PRODUCTS MANUFACTURING             '
                2990='(2990) NOT SPECIFIED METAL INDUSTRIES'
                3070='(3070) AGRICULTURAL IMPLEMENT MANUFACTURING '
                3080='(3080) CONSTRUCTION, AND MINING AND OIL AND GAS FIELD MACHINERY MANUFACTURING '
                3090='(3090) COMMERCIAL AND SERVICE INDUSTRY MACHINERY MANUFACTURING'
                3170='(3170) METALWORKING MACHINERY MANUFACTURING'
                3180='(3180) ENGINES, TURBINES, AND POWER TRANSMISSION EQUIPMENT MANUFACTURING '
                3190='(3190) MACHINERY MANUFACTURING, N.E.C. '
                3290='(3290) NOT SPECIFIED MACHINERY MANUFACTURING'
                3360='(3360) COMPUTER AND PERIPHERAL EQUIPMENT MANUFACTURING'
                3370='(3370) COMMUNICATIONS, AUDIO, AND VIDEO EQUIPMENT MANUFACTURING'
                3380='(3380) NAVIGATIONAL, MEASURING, ELECTROMEDICAL, AND CONTROL INSTRUMENTS MANUFACTURING'
                3390='(3390) ELECTRONIC COMPONENT AND PRODUCT MANUFACTURING, N.E.C. '
                3470='(3470) HOUSEHOLD APPLIANCE MANUFACTURING '
                3490='(3490) ELECTRIC LIGHTING AND ELECTRICAL EQUIPMENT MANUFACTURING, AND OTHER ELECTRICAL COMPONENT MANUFACTURING, N.E.C.'
                3570='(3570) MOTOR VEHICLES AND MOTOR VEHICLE EQUIPMENT MANUFACTURING '
                3580='(3580) AIRCRAFT AND PARTS MANUFACTURING'
                3590='(3590) AEROSPACE PRODUCTS AND PARTS MANUFACTURING '
                3670='(3670) RAILROAD ROLLING STOCK MANUFACTURING' 3680='(3680) SHIP AND BOAT BUILDING '
                3690='(3690) OTHER TRANSPORTATION EQUIPMENT MANUFACTURING'
                3770='(3770) SAWMILLS AND WOOD PRESERVATION '
                3780='(3780) VENEER, PLYWOOD, AND ENGINEERED WOOD PRODUCTS '
                3790='(3790) PREFABRICATED WOOD BUILDINGS AND MOBILE HOMES MANUFACTURING'
                3870='(3870) MISCELLANEOUS WOOD PRODUCT MANUFACTURING'
                3890='(3890) FURNITURE AND RELATED PRODUCT MANUFACTURING '
                3960='(3960) MEDICAL EQUIPMENT AND SUPPLIES MANUFACTURING'
                3970='(3970) SPORTING AND ATHLETIC GOODS, AND DOLL, TOY AND GAME MANUFACTURING'
                3980='(3980) MISCELLANEOUS MANUFACTURING, N.E.C.  '
                3990='(3990) NOT SPECIFIED MANUFACTURING INDUSTRIES'
                4070='(4070) MOTOR VEHICLES, PARTS AND SUPPLIES MERCHANT WHOLESALERS       '
                4080='(4080) FURNITURE AND HOME FURNISHING MERCHANT WHOLESALERS   '
                4090='(4090) LUMBER AND OTHER CONSTRUCTION MATERIALS MERCHANT WHOLESALERS '
                4170='(4170) PROFESSIONAL AND COMMERCIAL EQUIPMENT AND SUPPLIES MERCHANT WHOLESALERS'
                4180='(4180) METALS AND MINERALS, EXCEPT PETROLEUM, MERCHANT WHOLESALERS                         '
                4190='(4190) ELECTRICAL AND ELECTRONIC GOODS MERCHANT WHOLESALERS '
                4260='(4260) HARDWARE, PLUMBING AND HEATING EQUIPMENT, AND SUPPLIES MERCHANT WHOLESALERS'
                4270='(4270) MACHINERY, EQUIPMENT, AND SUPPLIES MERCHANT WHOLESALERS     '
                4280='(4280) RECYCLABLE MATERIAL MERCHANT WHOLESALERS '
                4290='(4290) MISCELLANEOUS DURABLE GOODS MERCHANT WHOLESALERS    '
                4370='(4370) PAPER AND PAPER PRODUCTS MERCHANT WHOLESALERS '
                4380='(4380) DRUGS, SUNDRIES, AND CHEMICAL AND ALLIED PRODUCTS MERCHANT  WHOLESALERS '
                4390='(4390) APPAREL, FABRICS, AND NOTIONS MERCHANT WHOLESALERS '
                4470='(4470) GROCERIES AND RELATED PRODUCTS MERCHANT WHOLESALERS '
                4480='(4480) FARM PRODUCT RAW MATERIALS MERCHANT WHOLESALERS '
                4490='(4490) PETROLEUM AND PETROLEUM PRODUCTS MERCHANT WHOLESALERS '
                4560='(4560) ALCOHOLIC BEVERAGES MERCHANT WHOLESALERS '
                4570='(4570) FARM SUPPLIES MERCHANT WHOLESALERS '
                4580='(4580) MISCELLANEOUS NONDURABLE GOODS MERCHANT WHOLESALERS '
                4585='(4585) WHOLESALE ELECTRONIC MARKETS AGENTS AND BROKERS '
                4590='(4590) NOT SPECIFIED WHOLESALE TRADE' 4670='(4670) AUTOMOBILE DEALERS '
                4680='(4680) OTHER MOTOR VEHICLE DEALERS '
                4690='(4690) AUTO PARTS, ACCESSORIES, AND TIRE STORES  '
                4770='(4770) FURNITURE AND HOME FURNISHINGS STORES '
                4780='(4780) HOUSEHOLD APPLIANCE STORES ' 4790='(4790) RADIO, TV, AND COMPUTER STORES'
                4870='(4870) BUILDING MATERIAL AND SUPPLIES DEALERS  ' 4880='(4880) HARDWARE STORES '
                4890='(4890) LAWN AND GARDEN EQUIPMENT AND SUPPLIES STORES '
                4970='(4970) GROCERY STORES ' 4980='(4980) SPECIALTY FOOD STORES'
                4990='(4990) BEER, WINE, AND LIQUOR STORES ' 5070='(5070) PHARMACIES AND DRUG STORES '
                5080='(5080) HEALTH AND PERSONAL CARE, EXCEPT DRUG, STORES '
                5090='(5090) GASOLINE STATIONS ' 5170='(5170) CLOTHING STORES '
                5180='(5180) SHOE STORES ' 5190='(5190) JEWELRY, LUGGAGE, AND LEATHER GOODS STORES '
                5270='(5270) SPORTING GOODS, CAMERA, AND HOBBY AND TOY STORES '
                5280='(5280) SEWING, NEEDLEWORK, AND PIECE GOODS STORES ' 5290='(5290) MUSIC STORES '
                5370='(5370) BOOK STORES AND NEWS DEALERS '
                5380='(5380) DEPARTMENT STORES AND DISCOUNT STORES                                    '
                5390='(5390) MISCELLANEOUS GENERAL MERCHANDISE STORES' 5470='(5470) RETAIL FLORISTS'
                5480='(5480) OFFICE SUPPLIES AND STATIONERY STORES'
                5490='(5490) USED MERCHANDISE STORES ' 5570='(5570) GIFT, NOVELTY, AND SOUVENIR SHOPS '
                5580='(5580) MISCELLANEOUS RETAIL STORES ' 5590='(5590) ELECTRONIC SHOPPING   '
                5591='(5591) ELECTRONIC AUCTIONS   ' 5592='(5592) MAIL ORDER HOUSES'
                5670='(5670) VENDING MACHINE OPERATORS ' 5680='(5680) FUEL DEALERS '
                5690='(5690) OTHER DIRECT SELLING ESTABLISHMENTS'
                5790='(5790) NOT SPECIFIED RETAIL TRADE' 6070='(6070) AIR TRANSPORTATION '
                6080='(6080) RAIL TRANSPORTATION ' 6090='(6090) WATER TRANSPORTATION '
                6170='(6170) TRUCK TRANSPORTATION ' 6180='(6180) BUS SERVICE AND URBAN TRANSIT '
                6190='(6190) TAXI AND LIMOUSINE SERVICE ' 6270='(6270) PIPELINE TRANSPORTATION '
                6280='(6280) SCENIC AND SIGHTSEEING TRANSPORTATION '
                6290='(6290) SERVICES INCIDENTAL TO TRANSPORTATION ' 6370='(6370) POSTAL SERVICE '
                6380='(6380) COURIERS AND MESSENGERS ' 6390='(6390) WAREHOUSING AND STORAGE '
                6470='(6470) NEWSPAPER PUBLISHERS'
                6480='(6480) PERIODICAL, BOOK, AND DIRECTORY PUBLISHERS'
                6490='(6490) SOFTWARE PUBLISHERS' 6570='(6570) MOTION PICTURES AND VIDEO INDUSTRIES'
                6590='(6590) SOUND RECORDING INDUSTRIES'
                6670='(6670) RADIO AND TELEVISION BROADCASTING AND CABLE SUBSCRIPTION PROGRAMMING'
                6672='(6672) INTERNET PUBLISHING AND BROADCASTING AND WEB SEARCH PORTALS'
                6680='(6680) WIRED TELECOMMUNICATIONS CARRIERS '
                6690='(6690) OTHER TELECOMMUNICATIONS SERVICES '
                6695='(6695) DATA PROCESSING, HOSTING, AND RELATED SERVICES'
                6770='(6770) LIBRARIES AND ARCHIVES' 6780='(6780) OTHER INFORMATION SERVICES'
                6870='(6870) BANKING AND RELATED ACTIVITIES'
                6880='(6880) SAVINGS INSTITUTIONS, INCLUDING CREDIT UNIONS '
                6890='(6890) NON-DEPOSITORY CREDIT AND RELATED ACTIVITIES'
                6970='(6970) SECURITIES, COMMODITIES, FUNDS, TRUSTS, AND OTHER FINANCIAL INVESTMENTS'
                6990='(6990) INSURANCE CARRIERS AND RELATED ACTIVITIES ' 7070='(7070) REAL ESTATE '
                7080='(7080) AUTOMOTIVE EQUIPMENT RENTAL AND LEASING '
                7170='(7170) VIDEO TAPE AND DISK RENTAL ' 7180='(7180) OTHER CONSUMER GOODS RENTAL'
                7190='(7190) COMMERCIAL, INDUSTRIAL, AND OTHER INTANGIBLE ASSETS RENTAL AND LEASING'
                7270='(7270) LEGAL SERVICES '
                7280='(7280) ACCOUNTING, TAX PREPARATION, BOOKKEEPING, AND PAYROLL SERVICES'
                7290='(7290) ARCHITECTURAL, ENGINEERING, AND RELATED SERVICES '
                7370='(7370) SPECIALIZED DESIGN SERVICES '
                7380='(7380) COMPUTER SYSTEMS DESIGN AND RELATED SERVICES '
                7390='(7390) MANAGEMENT, SCIENTIFIC, AND TECHNICAL CONSULTING SERVICES'
                7460='(7460) SCIENTIFIC RESEARCH AND DEVELOPMENT SERVICES '
                7470='(7470) ADVERTISING AND RELATED SERVICES ' 7480='(7480) VETERINARY SERVICES '
                7490='(7490) OTHER PROFESSIONAL, SCIENTIFIC, AND TECHNICAL SERVICES '
                7570='(7570) MANAGEMENT OF COMPANIES AND ENTERPRISES ' 7580='(7580) EMPLOYMENT SERVICES '
                7590='(7590) BUSINESS SUPPORT SERVICES '
                7670='(7670) TRAVEL ARRANGEMENTS AND RESERVATION SERVICES '
                7680='(7680) INVESTIGATION AND SECURITY SERVICES '
                7690='(7690) SERVICES TO BUILDINGS AND DWELLINGS (EXCEPT CLEANING DURING CONSTRUCTION AND IMMEDIATELY AFTER CONSTRUCTION) '
                7770='(7770) LANDSCAPING SERVICES'
                7780='(7780) OTHER ADMINISTRATIVE AND OTHER SUPPORT SERVICES '
                7790='(7790) WASTE MANAGEMENT AND REMEDIATION SERVICES '
                7860='(7860) ELEMENTARY AND SECONDARY SCHOOLS '
                7870='(7870) COLLEGES AND UNIVERSITIES, INCLUDING JUNIOR COLLEGES '
                7880='(7880) BUSINESS, TECHNICAL, AND TRADE SCHOOLS AND TRAINING '
                7890='(7890) OTHER SCHOOLS AND INSTRUCTION, AND EDUCATIONAL SUPPORT SERVICES '
                7970='(7970) OFFICES OF PHYSICIANS ' 7980='(7980) OFFICES OF DENTISTS '
                7990='(7990) OFFICES OF CHIROPRACTORS ' 8070='(8070) OFFICES OF OPTOMETRISTS '
                8080='(8080) OFFICES OF OTHER HEALTH PRACTITIONERS  '
                8090='(8090) OUTPATIENT CARE CENTERS ' 8170='(8170) HOME HEALTH CARE SERVICES '
                8180='(8180) OTHER HEALTH CARE SERVICES ' 8190='(8190) HOSPITALS '
                8270='(8270) NURSING CARE FACILITIES '
                8290='(8290) RESIDENTIAL CARE FACILITIES, WITHOUT NURSING '
                8370='(8370) INDIVIDUAL AND FAMILY SERVICES '
                8380='(8380) COMMUNITY FOOD AND HOUSING, AND EMERGENCY SERVICES '
                8390='(8390) VOCATIONAL REHABILITATION SERVICES ' 8470='(8470) CHILD DAY CARE SERVICES '
                8560='(8560) INDEPENDENT ARTISTS, PERFORMING ARTS, SPECTATOR SPORTS, AND RELATED INDUSTRIES'
                8570='(8570) MUSEUMS, ART GALLERIES, HISTORICAL SITES, AND SIMILAR INSTITUTIONS'
                8580='(8580) BOWLING CENTERS '
                8590='(8590) OTHER AMUSEMENT, GAMBLING, AND RECREATION INDUSTRIES   '
                8660='(8660) TRAVELER ACCOMMODATION '
                8670='(8670) RECREATIONAL VEHICLE PARKS AND CAMPS, AND ROOMING AND BOARDING HOUSES'
                8680='(8680) RESTAURANTS AND OTHER FOOD SERVICES '
                8690='(8690) DRINKING PLACES, ALCOHOLIC BEVERAGES '
                8770='(8770) AUTOMOTIVE REPAIR AND MAINTENANCE ' 8780='(8780) CAR WASHES'
                8790='(8790) ELECTRONIC AND PRECISION EQUIPMENT REPAIR AND MAINTENANCE'
                8870='(8870) COMMERCIAL AND INDUSTRIAL MACHINERY AND EQUIPMENT REPAIR AND MAINTENANCE'
                8880='(8880) PERSONAL AND HOUSEHOLD GOODS REPAIR AND MAINTENANCE '
                8890='(8890) FOOTWEAR AND LEATHER GOODS REPAIR' 8970='(8970) BARBER SHOPS '
                8980='(8980) BEAUTY SALONS ' 8990='(8990) NAIL SALONS AND OTHER PERSONAL CARE SERVICES  '
                9070='(9070) DRYCLEANING AND LAUNDRY SERVICES '
                9080='(9080) FUNERAL HOMES, CEMETERIES, AND CREMATORIES '
                9090='(9090) OTHER PERSONAL SERVICES ' 9160='(9160) RELIGIOUS ORGANIZATIONS '
                9170='(9170) CIVIC, SOCIAL, ADVOCACY ORGANIZATIONS, AND GRANTMAKING AND GIVING SERVICES'
                9180='(9180) LABOR UNIONS'
                9190='(9190) BUSINESS, PROFESSIONAL, POLITICAL, AND SIMILAR ORGANIZATIONS'
                9290='(9290) PRIVATE HOUSEHOLDS ' 9370='(9370) EXECUTIVE OFFICES AND LEGISLATIVE BODIES '
                9380='(9380) PUBLIC FINANCE ACTIVITIES '
                9390='(9390) OTHER GENERAL GOVERNMENT AND SUPPORT '
                9470='(9470) JUSTICE, PUBLIC ORDER, AND SAFETY ACTIVITIES '
                9480='(9480) ADMINISTRATION OF HUMAN RESOURCE PROGRAMS  '
                9490='(9490) ADMINISTRATION OF ENVIRONMENTAL QUALITY AND HOUSING PROGRAMS '
                9570='(9570) ADMINISTRATION OF ECONOMIC PROGRAMS AND SPACE RESEARCH'
                9590='(9590) NATIONAL SECURITY AND INTERNATIONAL AFFAIRS ' 9670='(9670) U. S ARMY'
                9680='(9680) U. S. AIR FORCE' 9690='(9690) U. S. NAVY' 9770='(9770) U. S. MARINES'
                9780='(9780) U. S. COAST GUARD' 9790='(9790) U. S. ARMED FORCES, BRANCH NOT SPECIFIED'
                9870='(9870) MILITARY RESERVES OR NATIONAL GUARD' 9996='(9996) NOT IN LABOR FORCE'
                9997='(9997) UNKNOWN OR UNSURE' 9998='(9998) MISSING OR NOT REPORTED' 9999='(9999) INAPP';
VALUE c1sg25ff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) MORE NOW '
                2='(2) ABOUT THE SAME NOW' 3='(3) LESS NOW ' 8='(8) REFUSED';
VALUE c1sm6fff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) HETEROSEXUAL'
                2='(2) HOMOSEXUAL' 3='(3) BISEXUAL' 8='(8) REFUSED';
VALUE c1pf6fff  1='(1) VERY IMPORTANT' 2='(2) SOMEWHAT IMPORTANT'
                3='(3) NOT VERY IMPORTANT' 4='(4) NOT AT ALL IMPORTANT' 7='(7) DON''T KNOW'
                8='(8) REFUSED';
VALUE c1sa6aff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) IMPROVED A LOT'
                2='(2) IMPROVED A LITTLE' 3='(3) STAYED THE SAME' 4='(4) GOTTEN A LITTLE WORSE'
                5='(5) GOTTEN A LOT WORSE' 8='(8) REFUSED';
VALUE c1sf23ff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) VERY SERIOUS'
                2='(2) MODERATELY SERIOUS' 3='(3) SOMEWHAT SERIOUS' 4='(4) A LITTLE SERIOUS'
                5='(5) NOT VERY SERIOUS AT ALL' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1si1fff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) ALMOST EVERY DAY'
                2='(2) SEVERAL TIMES A WEEK' 3='(3) ABOUT ONCE A WEEK' 4='(4) 1-3 TIMES A MONTH'
                5='(5) LESS THAN ONCE A MONTH' 6='(6) NEVER OR HARDLY EVER' 8='(8) REFUSED';
VALUE c1sa9aff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) NOT AT ALL TRUE'
                2='(2) A LITTLE TRUE' 3='(3) MODERATELY TRUE' 4='(4) EXTREMELY TRUE' 8='(8) REFUSED';
VALUE c1sn9cff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) OFTEN'
                2='(2) SOMETIMES' 3='(3) RARELY' 4='(4) NEVER' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1sj4gff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) OFTEN'
                2='(2) SOMETIMES' 3='(3) RARELY' 4='(4) NEVER' 8='(8) REFUSED';
VALUE c1sg8fff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA'
                1='(1) THE RECESSION HAS BEEN A HARDSHIP AND CAUSED MAJOR CHANGES'
                2='(2) THE RECESSION HAS BEEN DIFFICULT BUT NOT CAUSED ANY MAJOR CHANGES'
                3='(3) THE RECESSION HAS NOT HAD MUCH EFFECT ONE WAY OR THE OTHER'
                4='(4) OVERALL, THE RECESSION HAS BEEN GOOD FOR ME; I AM BETTER OFF NOW' 8='(8) REFUSED ';
VALUE c1sa21ff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA'
                1='(1) A LOT MORE NEGATIVE THAN USUAL' 2='(2) SOMEWHAT MORE NEGATIVE THAN USUAL'
                3='(3) A LITTLE MORE NEGATIVE THAN USUAL' 4='(4) ABOUT THE SAME AS USUAL'
                5='(5) A LITTLE LESS NEGATIVE THAN USUAL' 6='(6) SOMEWHAT LESS NEGATIVE THAN USUAL'
                7='(7) A LOT LESS NEGATIVE THAN USUAL' 8='(8) REFUSED';
VALUE c1pa71mf  1='(01) JANUARY' 2='(02) FEBRUARY' 3='(03) MARCH' 4='(04) APRIL'
                5='(05) MAY' 6='(06) JUNE' 7='(07) JULY' 8='(08) AUGUST' 9='(09) SEPTEMBER'
                10='(10) OCTOBER' 11='(11) NOVEMBER' 12='(12) DECEMBER'
                96='(96) CURRENTLY FELL THIS WAY/HASN''T ENDED' 97='(97) DON''T KNOW' 98='(98) REFUSED'
                99='(99) INAPP';
VALUE c1sf36af  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) ALL OF THE TIME'
                2='(2) MOST OF THE TIME' 3='(3) SOME OF THE TIME' 4='(4) RARELY' 5='(5) NEVER'
                8='(8) REFUSED' 9='(9) INAPP';
VALUE c1se3fff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(01) TOP RUNG'
                10='(10) BOTTOM RUNG' 98='(98) REFUSED';
VALUE c1pa25bf  997='(997) DON''T KNOW' 998='(998) REFUSED' 999='(999) INAPP';
VALUE c1pd9fff  1='(1) YES' 2='(2) NO' 3='(3) SOME OF THE TIME' 7='(7) DON''T KNOW'
                8='(8) REFUSED' 9='(9) INAPP';
VALUE c1sn9aff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) A GREAT DEAL'
                2='(2) SOME' 3='(3) A LITTLE' 4='(4) NONE' 8='(8) REFUSED' 9='(9) INAPP';
VALUE c1sg22ff  -1='(-00001) RESPONDENT DOES NOT HAVE SAQ DATA'
                300000='(300000) $300,000 OR MORE' 999998='(999998) REFUSED';
VALUE c1sa42ff  -1='(-01) RESPONDENT DOES NOT HAVE SAQ DATA' 998='(998) REFUSED'
                999='(999)  INAPP';
VALUE c1pa9fff  1='(1) HIGHER' 2='(2) LOWER' 3='(3) ABOUT THE SAME' 7='(7) DON''T KNOW'
                8='(8) REFUSED' 9='(9) INAPP';
VALUE c1sg15ff  -1='(-1) RESPONDENT DOES NOT HAVE SAQ DATA' 1='(1) YES' 2='(2) NO'
                3='(3) NOT APPLICABLE-NO INCOME FROM PENSION OR RETIREMENT ACCOUNTS' 8='(8) REFUSED'
                9='(9) INAPP';
VALUE c1prsexf  1='(1) MALE' 2='(2) FEMALE';
VALUE c1pa10bf  1='(1) YES' 2='(2) NO' 6='(6) NO ONE' 7='(7) DON''T KNOW' 8='(8) REFUSED';
*/


* SAS DATA, INFILE, INPUT STATEMENTS;

DATA;
INFILE "data-filename" LRECL=6325;
INPUT
       M2ID 1-5                M2FAMNUM 6-11
        SAMPLMAJ 12-13          C1STATUS 14             C1PRAGE 15-16
        C1PBYEAR 17-20          C1PRSEX 21              C1PIDATE_MO 22-23
        C1PIDATE_YR 24-27       C1PAA1 28               C1PAA2A 29
        C1PAA2B 30              C1PAA2C 31              C1PAA2D 32
        C1PAA2E 33              C1PAA2F 34              C1PAA2G 35
        C1PAA2H 36              C1PAA2I 37              C1PAA2I1 38-46
        C1PAA2J 47              C1PAA2J1 48-56          C1PAA2K 57
        C1PAA2K1 58-66          C1PAA2L 67              C1PAA2L2 68-76
        C1PAA2M 77              C1PAA2N 78              C1PAA2O 79
        C1PAA2P 80              C1PAA2Q 81              C1PAA2R 82
        C1PAA2S 83              C1PAA2T 84              C1PAA2U 85
        C1PAA2V 86              C1PAA2W 87              C1PAA2X 88
        C1PAA2Y 89              C1PAA2Z 90              C1PAA3 91
        C1PAA3A 92              C1PAA4 93               C1PAA5 94
        C1PAA6 95               C1PAA7 96               C1PAA8 97
        C1PA1 98                C1PA2 99                C1PA3 100
        C1PA4 101-102           C1PA4A 103              C1PA4BA 104-105
        C1PA4BB 106-107         C1PA4BC 108-109         C1PA5 110-111
        C1PA5A 112              C1PA5BA 113-114         C1PA5BB 115-116
        C1PA5BC 117-118         C1PA6A 119              C1PA6B 120
        C1PA6C 121              C1PA6D 122              C1PA7 123
        C1PA7A 124-125          C1PA7BA 126-127         C1PA7BB 128-129
        C1PA7BC 130-131         C1PA7BD 132-133         C1PA7BE 134-135
        C1PA7BF 136-137         C1PA7BG 138-139         C1PA7BH 140-141
        C1PA7BI 142-143         C1PA7BJ 144-145         C1PA7C 146
        C1PA7D 147              C1PA8 148               C1PA8A 149-152
        C1PA9 153               C1PA9A 154              C1PA9B 155
        C1PHRTRS 156            C1PHRTDX 157            C1PA10A 158
        C1PA10B 159             C1PA10C 160             C1PA10D 161
        C1PA10E 162             C1PA10F 163             C1PA10G 164
        C1PA10H 165             C1PA11 166              C1PA12 167
        C1PA13 168              C1PA14 169              C1PA15 170
        C1PA16 171              C1PA17 172              C1PA18 173
        C1PA19 174              C1PA20 175              C1PA21 176
        C1PA22 177              C1PANGIN 178            C1PA23 179
        C1PA23A 180-181         C1PA23B 182             C1PA23CA 183-184
        C1PA23CB 185-186        C1PA23CC 187-188        C1PA23CD 189-190
        C1PA23CE 191-192        C1PA23CF 193-194        C1PA23CG 195-196
        C1PA23CH 197-198        C1PA23CI 199-200        C1PA23CJ 201-202
        C1PA24 203              C1PA24A 204-205         C1PA24B 206
        C1PA24C 207             C1PA24D 208             C1PA24EA 209
        C1PA24EB 210            C1PA24EC 211            C1PA24ED 212
        C1PA24EE 213            C1PA24EF 214            C1PA25NM 215-216
        C1PA25IN 217            C1PA25A 218             C1PA25BS 219-221
        C1PA25BD 222-224        C1PA26 225              C1PA27 226
        C1PA27A 227             C1PA27B 228             C1PCACRS 229
        C1PCACDX 230            C1PA28A 231             C1PA28B 232
        C1PA28C 233             C1PA28D 234             C1PA28E 235
        C1PA28F 236             C1PA28G 237             C1PA28H 238
        C1PA28I 239             C1PA28J 240             C1PA28AA 241-242
        C1PA28BB 243-244        C1PA28CC 245-246        C1PA28DD 247-248
        C1PA28EE 249-250        C1PA28FF 251-252        C1PA28GG 253-254
        C1PA28HH 255-256        C1PA28II 257-258        C1PA28JJ 259-260
        C1PA29 261              C1PA29AA 262            C1PA29AB 263
        C1PA29AC 264            C1PA29AD 265            C1PA29AE 266
        C1PA29AF 267            C1PA29AG 268            C1PA29AH 269
        C1PA29AI 270            C1PA30A 271             C1PA30B 272
        C1PA30C 273             C1PA30D 274             C1PA30E 275
        C1PA30F 276             C1PA31A 277             C1PA31B 278
        C1PA31C 279             C1PA31D 280             C1PA31E 281
        C1PA31F 282             C1PA31H 283             C1PA31I 284
        C1PA31J 285             C1PA32A 286             C1PA32C 287
        C1PA32D 288             C1PA32E 289             C1PA32G 290
        C1PA32H 291             C1PA32J 292             C1PA33A 293
        C1PA33C 294             C1PA33D 295             C1PA33E 296
        C1PA33G 297             C1PA33H 298             C1PA33J 299
        C1PA34A 300             C1PA34B 301             C1PA34C 302
        C1PA34D 303             C1PA34E 304             C1PA34F 305
        C1PA34H 306             C1PA34I 307             C1PA34J 308
        C1PA35A 309             C1PA35B 310             C1PA35C 311
        C1PA35D 312             C1PA35E 313             C1PA35F 314
        C1PA35G 315             C1PA35H 316             C1PA35I 317
        C1PA35J 318             C1PA36A 319             C1PA36AM 320-321
        C1PA36AY 322-325        C1PA36B 326             C1PA36C 327
        C1PA36DM 328-329        C1PA36DY 330-333        C1PA36EM 334-335
        C1PA36EY 336-339        C1PA37 340-341          C1PA38A 342
        C1PA38B 343-344         C1PA39 345              C1PA40 346-347
        C1PA41 348              C1PA42 349-350          C1PA43 351-352
        C1PA44 353              C1PA46 354              C1PA48 355
        C1PA47 356              C1PA49 357-358          C1PA50 359
        C1PA51 360              C1PA51A 361             C1PA52 362-363
        C1PA53 364-365          C1PA54 366              C1PA54A 367
        C1PA55 368-371 .1       C1PA56 372-373          C1PA57 374-375
        C1PA59 376              C1PA60 377              C1PA61 378
        C1PA62 379              C1PA63 380              C1PA64 381
        C1PA65 382              C1PA65A 383             C1PA66 384
        C1PA66A 385             C1PA67 386              C1PA68 387
        C1PA69 388              C1PA70 389-390          C1PA71MO 391-392
        C1PA71YR 393-396        C1PDEPAF 397            C1PDEPAD 398
        C1PA72 399              C1PA73 400              C1PA74 401
        C1PA75 402              C1PA76 403              C1PA76A 404
        C1PA77 405              C1PA77A 406             C1PA78 407
        C1PA79 408              C1PA80 409              C1PA81 410-411
        C1PA82MO 412-413        C1PA82YR 414-417        C1PANHED 418
        C1PANHDX 419            C1PDEPRE 420            C1PDEPDX 421
        C1PA83 422              C1PA83A 423             C1PA84 424
        C1PA84A 425             C1PA85 426              C1PA85A 427
        C1PA86 428              C1PA86A 429             C1PA87 430
        C1PA87A 431             C1PA88A 432             C1PA88B 433
        C1PA88C 434             C1PA88D 435             C1PA88E 436
        C1PA88F 437             C1PA88G 438             C1PA88H 439
        C1PA88I 440             C1PA88J 441             C1PA89 442
        C1PANXIE 443-444        C1PANXTD 445            C1PA90 446
        C1PA90A 447             C1PA91 448-450          C1PA92 451
        C1PA92A 452             C1PA92B 453             C1PA92C 454
        C1PA92D 455             C1PA92E 456             C1PA92F 457
        C1PPANIC 458            C1PPANDX 459            C1PB1 460-461
        C1PB2 462-463           C1PB2A1 464             C1PB2A2 465
        C1PB2A3 466             C1PB2A4 467             C1PB2A5 468
        C1PB2A6 469             C1PB2A7 470             C1PB2A8 471
        C1PB2A9 472             C1PB2A10 473            C1PB2A11 474
        C1PB2AWK 475-476        C1PB2AA 477             C1PB2B 478
        C1PB2BM 479-480         C1PB2BY 481-484         C1PB2BBA 485
        C1PB2BBB 486            C1PB2BBC 487            C1PB2BBD 488
        C1PB2BBE 489            C1PB2BBF 490            C1PB2BBG 491
        C1PB2BCN 492-494        C1PB2BCU 495            C1PB2BDN 496-498
        C1PB2BDU 499            C1PB2CA 500             C1PB2CB 501-503
        C1PB2CB10 504           C1PB2CB25 505           C1PB2C2 506-508
        C1PB2DN 509-511         C1PB2DU 512             C1PB3A 513
        C1PB3B 514              C1PB3C 515              C1PB3D 516
        C1PB3E 517              C1PB3F 518              C1PB3G 519
        C1PB3H 520              C1PB3I 521              C1PB3J 522
        C1PB3K 523              C1PB3WK 524-525         C1PB4N 526-528
        C1PB4U 529              C1PB5A 530              C1PB5B 531
        C1PB5C 532              C1PB5D 533              C1PB5E 534
        C1PB5F 535              C1PB5G 536              C1PB5 537-538
        C1PB5AB 539             C1PB6 540               C1PB7 541
        C1PB7A 542-544          C1PB8A 545              C1PB8A1 546
        C1PB8C 547              C1POCC 548-551          C1PIND 552-555
        C1POCMAJ 556-557        C1PINDMJ 558-559        C1PB12 560-562
        C1PB12A 563-565         C1PB13 566-568          C1PB14 569
        C1PB14A 570-572         C1PB15A 573             C1PB15A1 574
        C1PB15C 575             C1POCCP 576-579         C1PINDP 580-583
        C1POCPMJ 584-585        C1PPINMJ 586-587        C1PB16 588-595
        C1PB16A25 596           C1PB16A50 597           C1PB16A80 598
        C1PB16A35 599           C1PB16A12 600           C1PB16A18 601
        C1PB16A5 602            C1PB17A 603             C1PB17B 604-606
        C1PB17B10 607           C1PB17B25 608           C1PB17B5 609
        C1PB19 610              C1PB20 611-612          C1PB21M 613-614
        C1PB21Y 615-618         C1PB22 619              C1PB23M 620-621
        C1PB23Y 622-625         C1PB24M 626-627         C1PB24Y 628-631
        C1PB25M 632-633         C1PB25Y 634-637         C1PB26M 638-639
        C1PB26Y 640-643         C1PB27M 644-645         C1PB27Y 646-649
        C1PB28M 650-651         C1PB28Y 652-655         C1PB29M 656-657
        C1PB29Y 658-661         C1PB30 662              C1PB31N 663-665
        C1PB31M 666             C1PPARTN 667            C1PB32A 668
        C1PB32Y 669-672         C1PSAGE 673-675         C1PB33 676-677
        C1PB33AA 678            C1PB33AB 679            C1PB33AC 680
        C1PB33AD 681            C1PB33AE 682            C1PB33AF 683
        C1PB33AG 684            C1PB33AH 685            C1PB33AI 686
        C1PB33AJ 687            C1PB33AK 688            C1PB33AWK 689-690
        C1PB33A1 691            C1PB33B 692             C1PB33BAM 693-694
        C1PB33BAY 695-698       C1PB33BBA 699           C1PB33BBB 700
        C1PB33BBC 701           C1PB33BBD 702           C1PB33BBE 703
        C1PB33BBF 704           C1PB33BBG 705           C1PB33BCN 706-708
        C1PB33BCU 709           C1PB33BDN 710-712       C1PB33BDU 713
        C1PB33CA 714            C1PB33CB 715-717        C1PB33CB10 718
        C1PB33CB25 719          C1PB33C2 720-722        C1PB33DN 723-725
        C1PB33DU 726            C1PB34A 727             C1PB34B 728
        C1PB34C 729             C1PB34D 730             C1PB34E 731
        C1PB34F 732             C1PB34G 733             C1PB34H 734
        C1PB34I 735             C1PB34J 736             C1PB34K 737
        C1PB34WK 738-739        C1PB35N 740-742         C1PB35U 743
        C1PB36A 744             C1PB36B 745             C1PB36C 746
        C1PB36D 747             C1PB36E 748             C1PB36F 749
        C1PB36G 750             C1PB36 751-752          C1PB36A1 753
        C1PB37 754              C1PB38 755              C1PB39A 756
        C1PB39A1 757            C1PB39C 758             C1POCCS 759-762
        C1PINDS 763-766         C1PSOCMJ 767-768        C1PSINMJ 769-770
        C1PB40 771-778          C1PB40A25 779           C1PB40A50 780
        C1PB40A80 781           C1PB40A35 782           C1PB40A12 783
        C1PB40A18 784           C1PB40A5 785            C1PB41A 786
        C1PB41B 787-789         C1PB41B10 790           C1PB41B25 791
        C1PB41B5 792            C1PC1 793               C1PC2 794-795
        C1PC2A 796-797          C1PC3 798               C1PC4 799-800
        C1PKHSIZ 801-802        C1PKIDHH 803-804        C1PHHSIZE 805-806
        C1PC6 807               C1PCHA1 808-810         C1PCHX1 811
        C1PCHR1 812-813         C1PCMB1 814-815         C1PCYB1 816-819
        C1PHHA1 820-822         C1PCHC1 823             C1PCHH1 824
        C1PCDD1 825             C1PCDT1 826-828         C1PCDP1 829
        C1PCDA1 830-831         C1PCDX1 832             C1PCXT1 833
        C1PCDO1 834             C1PCHA2 835-837         C1PCHX2 838
        C1PCHR2 839-840         C1PCMB2 841-842         C1PCYB2 843-846
        C1PHHA2 847-849         C1PCHC2 850             C1PCHH2 851
        C1PCDD2 852             C1PCDT2 853-855         C1PCDP2 856
        C1PCDA2 857-858         C1PCDX2 859             C1PCXT2 860
        C1PCDO2 861             C1PCHA3 862-864         C1PCHX3 865
        C1PCHR3 866-867         C1PCMB3 868-869         C1PCYB3 870-873
        C1PHHA3 874-876         C1PCHC3 877             C1PCHH3 878
        C1PCDD3 879             C1PCDT3 880-882         C1PCDP3 883
        C1PCDA3 884-885         C1PCDX3 886             C1PCXT3 887
        C1PCDO3 888             C1PCHA4 889-891         C1PCHX4 892
        C1PCHR4 893-894         C1PCMB4 895-896         C1PCYB4 897-900
        C1PHHA4 901-903         C1PCHC4 904             C1PCHH4 905
        C1PCDD4 906             C1PCDT4 907-909         C1PCDP4 910
        C1PCDA4 911-912         C1PCDX4 913             C1PCXT4 914
        C1PCDO4 915             C1PCHA5 916-918         C1PCHX5 919
        C1PCHR5 920-921         C1PCMB5 922-923         C1PCYB5 924-927
        C1PHHA5 928-930         C1PCHC5 931             C1PCHH5 932
        C1PCDD5 933             C1PCDT5 934-936         C1PCDP5 937
        C1PCDA5 938-939         C1PCDX5 940             C1PCDO5 941
        C1PCHA6 942-944         C1PCHX6 945             C1PCHR6 946-947
        C1PCMB6 948-949         C1PCYB6 950-953         C1PHHA6 954-956
        C1PCHC6 957             C1PCHH6 958             C1PCDD6 959
        C1PCDT6 960-962         C1PCDA6 963-964         C1PCDX6 965
        C1PCDO6 966             C1PCHA7 967-969         C1PCHX7 970
        C1PCHR7 971-972         C1PCMB7 973-974         C1PCYB7 975-978
        C1PHHA7 979-981         C1PCHC7 982             C1PCHH7 983
        C1PCDD7 984             C1PCDT7 985-987         C1PCDA7 988-989
        C1PCDO7 990             C1PCHA8 991-993         C1PCHX8 994
        C1PCHR8 995-996         C1PCMB8 997-998         C1PCYB8 999-1002
        C1PHHA8 1003-1005       C1PCHC8 1006            C1PCHH8 1007
        C1PCDD8 1008            C1PCDT8 1009-1011       C1PCDA8 1012-1013
        C1PCDO8 1014            C1PCHA9 1015-1017       C1PCHX9 1018
        C1PCHR9 1019-1020       C1PCMB9 1021-1022       C1PCYB9 1023-1026
        C1PHHA9 1027-1029       C1PCHH9 1030            C1PCDD9 1031
        C1PCDT9 1032-1034       C1PCDA9 1035-1036       C1PCDO9 1037
        C1PCHA10 1038-1040      C1PCHX10 1041           C1PCHR10 1042-1043
        C1PCMB10 1044-1045      C1PCYB10 1046-1049      C1PCHH10 1050
        C1PCDD10 1051           C1PCHA11 1052-1054      C1PCHX11 1055
        C1PCHR11 1056-1057      C1PCMB11 1058-1059      C1PCYB11 1060-1063
        C1PCHH11 1064           C1PCDD11 1065           C1PCDT11 1066-1068
        C1PCDA11 1069-1070      C1PCDO11 1071           C1PCHA12 1072-1074
        C1PCHX12 1075           C1PCHR12 1076-1077      C1PCMB12 1078-1079
        C1PCYB12 1080-1083      C1PCHH12 1084           C1PCDD12 1085
        C1PCHA13 1086-1088      C1PCHX13 1089           C1PCHR13 1090-1091
        C1PCMB13 1092-1093      C1PCYB13 1094-1097      C1PCHH13 1098
        C1PCDD13 1099           C1PCHA14 1100-1102      C1PCHX14 1103
        C1PCHR14 1104-1105      C1PCMB14 1106-1107      C1PCYB14 1108-1111
        C1PCHH14 1112           C1PCDD14 1113           C1PCHA15 1114-1116
        C1PCHX15 1117           C1PCHR15 1118-1119      C1PCMB15 1120-1121
        C1PCYB15 1122-1125      C1PCHH15 1126           C1PCDD15 1127
        C1PCHA16 1128-1130      C1PCHX16 1131           C1PCHR16 1132-1133
        C1PCMB16 1134-1135      C1PCYB16 1136-1139      C1PCHH16 1140
        C1PCDD16 1141           C1PCHA17 1142-1144      C1PCHX17 1145
        C1PCHR17 1146-1147      C1PCMB17 1148-1149      C1PCYB17 1150-1153
        C1PCHH17 1154           C1PCDD17 1155           C1PCHA18 1156-1158
        C1PCHX18 1159           C1PCHR18 1160-1161      C1PCMB18 1162-1163
        C1PCYB18 1164-1167      C1PCHH18 1168           C1PCDD18 1169
        C1PCHA19 1170-1172      C1PCHX19 1173           C1PCHR19 1174-1175
        C1PCMB19 1176-1177      C1PCYB19 1178-1181      C1PCHH19 1182
        C1PCDD19 1183           C1PCHA20 1184-1186      C1PCHX20 1187
        C1PCHR20 1188-1189      C1PCMB20 1190-1191      C1PCYB20 1192-1195
        C1PCHH20 1196           C1PCDD20 1197           C1PCHA21 1198-1200
        C1PCHX21 1201           C1PCHR21 1202-1203      C1PCMB21 1204-1205
        C1PCYB21 1206-1209      C1PCHH21 1210           C1PCDD21 1211
        C1PCHA22 1212-1214      C1PCHX22 1215           C1PCHR22 1216-1217
        C1PCMB22 1218-1219      C1PCYB22 1220-1223      C1PCHH22 1224
        C1PCDD22 1225           C1PCHA23 1226-1228      C1PCHX23 1229
        C1PCHR23 1230-1231      C1PCHX24 1232           C1PCHR24 1233-1234
        C1PCHA25 1235-1237      C1PCHX25 1238           C1PCHR25 1239-1240
        C1PCHA26 1241-1243      C1PCHX26 1244           C1PCHR26 1245-1246
        C1PCHA27 1247-1249      C1PCHX27 1250           C1PCHR27 1251-1252
        C1PCHA28 1253-1255      C1PCHX28 1256           C1PCHR28 1257-1258
        C1PCHA29 1259-1261      C1PCHX29 1262           C1PCHR29 1263-1264
        C1PCHM1N 1265           C1PCHM2N 1266           C1PCHM1X 1267
        C1PCHM2X 1268           C1PD1 1269              C1PD2 1270-1271
        C1PD3 1272              C1PD4 1273              C1PD5M 1274-1275
        C1PD5Y 1276-1279        C1PD7 1280              C1PD8A 1281
        C1PD8B 1282             C1PD9 1283              C1PD10 1284
        C1PD11 1285             C1PD12 1286             C1PD13 1287
        C1PD14 1288-1289        C1PD15 1290-1291        C1PD16 1292
        C1PD17 1293             C1PD18 1294-1296        C1PD19N 1297-1298
        C1PD19M 1299            C1PD20 1300             C1PD21 1301
        C1PD22 1302-1303        C1PE1 1304              C1PE1A1 1305
        C1PE1A2 1306            C1PE1A3 1307            C1PE1A4 1308
        C1PE1A5 1309            C1PE1A6 1310            C1PE1A7 1311
        C1PE1BN 1312-1314       C1PE1BM 1315            C1PE2 1316
        C1PE2AN 1317-1319       C1PE2AM 1320            C1PE3 1321
        C1PE3AN 1322-1324       C1PE3AM 1325            C1PF1 1326-1327
        C1PF2A 1328-1329        C1PF2B 1330-1331        C1PF2C 1332-1333
        C1PF2_1 1334            C1PF2_3 1335            C1PF2_4 1336
        C1PF2_5 1337            C1PF2_6 1338            C1PF2_7 1339
        C1PF2_9 1340            C1PF2_10 1341           C1PF2_11 1342
        C1PF2_12 1343           C1PF2_13 1344           C1PF2_14 1345
        C1PF2_15 1346           C1PF2_17 1347           C1PF2_18 1348
        C1PF2_22 1349           C1PF2_24 1350           C1PF2_30 1351
        C1PF2_31 1352           C1PF2_32 1353           C1PF2_33 1354
        C1PF2_34 1355           C1PF2_35 1356           C1PF2_36 1357
        C1PF2_37 1358           C1PF2_38 1359           C1PF2_39 1360
        C1PF2_40 1361           C1PF2_41 1362           C1PF2_42 1363
        C1PF2_43 1364           C1PF2_44 1365           C1PF2_45 1366
        C1PF2_46 1367           C1PF2_47 1368           C1PF2_48 1369
        C1PF2_50 1370           C1PF2_51 1371           C1PF2_52 1372
        C1PF2_53 1373           C1PF2_54 1374           C1PF2_56 1375
        C1PF2_57 1376           C1PF2_58 1377           C1PF2_66 1378
        C1PF2_69 1379           C1PF2_70 1380           C1PF2_71 1381
        C1PF2_74 1382           C1PF2_96 1383           C1PF3 1384
        C1PF3_1 1385-1386       C1PF4 1387              C1PF5 1388
        C1PF6 1389              C1PF7A 1390             C1PF7B 1391
        C1PF7C 1392             C1PF7D 1393             C1PF8A 1394
        C1PF8B 1395             C1PF8C 1396             C1PF8A1 1397
        C1PF9 1398              C1PF10 1399             C1PF11 1400
        C1PF12 1401             C1PF12A 1402            C1PF12B 1403
        C1PG1 1404              C1PG1A 1405             C1PG2 1406
        C1PG3 1407              C1PG4 1408              C1PG5 1409
        C1PG5A 1410             C1PG6 1411              C1PG7 1412
        C1PG8 1413              C1PG9 1414              C1SA1 1415-1416
        C1SA2 1417-1418         C1SA3 1419-1420         C1SA4 1421-1422
        C1SA5 1423-1424         C1SSATIS 1425-1439 .12  C1SSATIS2 1440-1454 .12
        C1SA6A 1455-1456        C1SA6B 1457-1458        C1SA6C 1459-1460
        C1SA6D 1461-1462        C1SA6E 1463-1464        C1SA7A 1465-1466
        C1SA7B 1467-1468        C1SA7C 1469-1470        C1SA7D 1471-1472
        C1SA8A 1473-1474        C1SA8B 1475-1476        C1SA8C 1477-1478
        C1SA8D 1479-1480        C1SA8E 1481-1482        C1SA8F 1483-1484
        C1SHLOCS 1485-1499 .12  C1SHLOCO 1500-1503 .1   C1SA9A 1504-1505
        C1SA9B 1506-1507        C1SA9C 1508-1509        C1SA9D 1510-1511
        C1SA9E 1512-1513        C1SAMPLI 1514-1528 .12  C1SA10A 1529-1530
        C1SA10B 1531-1532       C1SA10C 1533-1534       C1SA10D 1535-1536
        C1SA10E 1537-1538       C1SA10F 1539-1540       C1SA10G 1541-1542
        C1SA10H 1543-1544       C1SA10I 1545-1546       C1SA10J 1547-1548
        C1SA11A 1549-1550       C1SA11B 1551-1552       C1SA11C 1553-1554
        C1SA11D 1555-1556       C1SA11E 1557-1558       C1SA11F 1559-1560
        C1SA11G 1561-1562       C1SA11H 1563-1564       C1SA11I 1565-1566
        C1SA11J 1567-1568       C1SA11K 1569-1570       C1SA11L 1571-1572
        C1SA11M 1573-1574       C1SA11N 1575-1576       C1SA11O 1577-1578
        C1SA11P 1579-1580       C1SA11Q 1581-1582       C1SA11R 1583-1584
        C1SA11S 1585-1586       C1SA11T 1587-1588       C1SA11U 1589-1590
        C1SA11V 1591-1592       C1SA11W 1593-1594       C1SA11X 1595-1596
        C1SA11Y 1597-1598       C1SA11Z 1599-1600       C1SA11AA 1601-1602
        C1SA11BB 1603-1604      C1SA11CC 1605-1606      C1SA11DD 1607-1608
        C1SA11EE 1609-1610      C1SA11FF 1611-1612      C1SA11GG 1613-1614
        C1SA11HH 1615-1616      C1SA11II 1617-1618      C1SA11JJ 1619-1620
        C1SA11KK 1621-1622      C1SA11LL 1623-1624      C1SA11MM 1625-1626
        C1SA11NN 1627-1628      C1SCHROX 1629-1630      C1SCHRON 1631-1632
        C1SA12A 1633-1634       C1SA12B 1635-1636       C1SA12C 1637-1638
        C1SA12D 1639-1640       C1SA12E 1641-1642       C1SA12F 1643-1644
        C1SA12G 1645-1646       C1SA12H 1647-1648       C1SA12I 1649-1650
        C1SA12J 1651-1652       C1SA12K 1653-1654       C1SA12L 1655-1656
        C1SRXMEX 1657-1658      C1SRXMED 1659-1660      C1SA13A 1661-1662
        C1SA13B 1663-1664       C1SA13C 1665-1666       C1SA13D 1667-1668
        C1SA14A 1669-1670       C1SA14B 1671-1672       C1SA14C 1673-1674
        C1SA14D 1675-1676       C1SA14E 1677-1678       C1SA14F 1679-1680
        C1SA14G 1681-1682       C1SA14H 1683-1684       C1SA14I 1685-1686
        C1SA14J 1687-1688       C1SA14K 1689-1690       C1SA14L 1691-1692
        C1SA14M 1693-1694       C1SA14N 1695-1696       C1SA14O 1697-1698
        C1SA14P 1699-1700       C1SSPLMX 1701-1702      C1SSPLMN 1703-1704
        C1SA15 1705-1706        C1SA16A 1707-1708       C1SA16B 1709-1710
        C1SA16C 1711-1712       C1SA16D 1713-1714       C1SA16E 1715-1716
        C1SA17A 1717-1718       C1SA17B 1719-1720       C1SA17C 1721-1722
        C1SA17D 1723-1724       C1SA17E 1725-1726       C1SA17F 1727-1728
        C1SA17G 1729-1730       C1SA17H 1731-1732       C1SA17I 1733-1734
        C1SA18 1735-1736        C1SA19 1737-1738        C1SA20A 1739-1740
        C1SA20B 1741-1742       C1SA20C 1743-1744       C1SA20D 1745-1746
        C1SA20E 1747-1748       C1SA20F 1749-1750       C1SA20G 1751-1752
        C1SA20H 1753-1754       C1SA20I 1755-1756       C1SA20J 1757-1758
        C1SA20K 1759-1760       C1SA20L 1761-1762       C1SA20M 1763-1764
        C1SA20N 1765-1766       C1SA21 1767-1768        C1SNEGAF 1769-1783 .12
        C1SNEGPA 1784-1798 .12  C1SA22A 1799-1800       C1SA22B 1801-1802
        C1SA22C 1803-1804       C1SA22D 1805-1806       C1SA22E 1807-1808
        C1SA22F 1809-1810       C1SA22G 1811-1812       C1SA22H 1813-1814
        C1SA22I 1815-1816       C1SA22J 1817-1818       C1SA22K 1819-1820
        C1SA22L 1821-1822       C1SA22M 1823-1824       C1SA23 1825-1826
        C1SPOSAF 1827-1841 .12  C1SPOSPA 1842-1856 .12  C1SA24A 1857-1858
        C1SA24B 1859-1860       C1SA24C 1861-1862       C1SA24D 1863-1864
        C1SA24E 1865-1866       C1SA24F 1867-1868       C1SA24G 1869-1870
        C1SA24H 1871-1872       C1SA24I 1873-1874       C1SA24J 1875-1876
        C1SBADL1 1877-1880 .1   C1SBADL2 1881-1895 .12  C1SIADL 1896-1910 .12
        C1SA25A 1911-1912       C1SA25B 1913-1914       C1SA25C 1915-1916
        C1SA25D 1917-1918       C1SDYSPN 1919-1920      C1SA26A 1921-1922
        C1SA26B 1923-1924       C1SA26C 1925-1926       C1SA26D 1927-1928
        C1SA26E 1929-1930       C1SA26F 1931-1932       C1SA27A 1933-1934
        C1SA27B 1935-1936       C1SA27C 1937-1938       C1SA27D 1939-1940
        C1SA27E 1941-1942       C1SA27F 1943-1944       C1SA28A 1945-1946
        C1SA28B 1947-1948       C1SA28C 1949-1950       C1SA28D 1951-1952
        C1SA28E 1953-1954       C1SA28F 1955-1956       C1SA29A 1957-1958
        C1SA29B 1959-1960       C1SA29C 1961-1962       C1SA29D 1963-1964
        C1SA29E 1965-1966       C1SA29F 1967-1968       C1SA30A 1969-1970
        C1SA30B 1971-1972       C1SA30C 1973-1974       C1SA30D 1975-1976
        C1SA30E 1977-1978       C1SA30F 1979-1980       C1SA30G 1981-1982
        C1SA30H 1983-1984       C1SA30I 1985-1986       C1SINTAG 1987-2001 .12
        C1SA31 2002-2006 .2     C1SA32 2007-2011 .2     C1SWSTHI 2012-2026 .12
        C1SA33A 2027-2028       C1SA33B 2029-2032 .1    C1SA34 2033-2034
        C1SA35 2035-2037        C1SBMI 2038-2052 .12    C1SA36 2053-2055
        C1SA37 2056-2058        C1SA38 2059-2060        C1SA39 2061-2062
        C1SA39AA 2063-2064      C1SA39AB 2065-2066      C1SA39AC 2067-2068
        C1SA40 2069-2070        C1SA41 2071-2074        C1SA42 2075-2077
        C1SA43 2078-2080        C1SA44A 2081-2082       C1SA44B 2083-2084
        C1SA44C 2085-2086       C1SA44D 2087-2088       C1SA44E 2089-2090
        C1SA44F 2091-2092       C1SA44G 2093-2094       C1SA44H 2095-2096
        C1SA45 2097-2098        C1SA46A 2099-2100       C1SA46B 2101-2102
        C1SA46C 2103-2104       C1SA46D 2105-2106       C1SA46E 2107-2108
        C1SA46F 2109-2110       C1SA46G 2111-2112       C1SA46H 2113-2114
        C1SA47 2115-2116        C1SA48 2117-2118        C1SA49A 2119-2121
        C1SA49B 2122-2124       C1SA49C 2125-2127       C1SA49D 2128-2130
        C1SA49E 2131-2133       C1SUSEMD 2134-2136      C1SA50A 2137-2139
        C1SA50B 2140-2142       C1SA50C 2143-2145       C1SA50D 2146-2148
        C1SUSEMH 2149-2151      C1SA51A 2152-2153       C1SA51AY 2154-2155
        C1SA51AZ 2156-2158      C1SA51B 2159-2160       C1SA51BY 2161-2162
        C1SA51BZ 2163-2165      C1SA51C 2166-2167       C1SA51CY 2168-2169
        C1SA51CZ 2170-2172      C1SA51D 2173-2174       C1SA51DY 2175-2176
        C1SA51DZ 2177-2179      C1SA51E 2180-2181       C1SA51EY 2182-2183
        C1SA51EZ 2184-2186      C1SA51F 2187-2188       C1SA51FY 2189-2190
        C1SA51FZ 2191-2193      C1SA51G 2194-2195       C1SA51GY 2196-2197
        C1SA51GZ 2198-2200      C1SA51H 2201-2202       C1SA51HY 2203-2204
        C1SA51HZ 2205-2207      C1SA51I 2208-2209       C1SA51IY 2210-2211
        C1SA51IZ 2212-2214      C1SA51J 2215-2216       C1SA51JY 2217-2218
        C1SA51JZ 2219-2221      C1SA51K 2222-2223       C1SA51KY 2224-2225
        C1SA51KZ 2226-2228      C1SA52A 2229-2230       C1SA52B 2231-2232
        C1SA52C 2233-2234       C1SA52D 2235-2236       C1SA52E 2237-2238
        C1SA52F 2239-2240       C1SA52G 2241-2242       C1SA52H 2243-2244
        C1SA52I 2245-2246       C1SA52J 2247-2248       C1SA52K 2249-2250
        C1SA52L 2251-2252       C1SA52M 2253-2254       C1SA52N 2255-2256
        C1SA52O 2257-2258       C1SA52P 2259-2260       C1SA52Q 2261-2262
        C1SA52R 2263-2264       C1SA52S 2265-2266       C1SA53A 2267-2268
        C1SA53B 2269-2270       C1SA54A 2271-2272       C1SA54B 2273-2274
        C1SA55A 2275-2276       C1SA55B 2277-2278       C1SA56 2279-2280
        C1SA57A 2281-2282       C1SA57B 2283-2284       C1SA57C 2285-2286
        C1SA57D 2287-2288       C1SA58A 2289-2290       C1SA58B 2291-2292
        C1SA58C 2293-2294       C1SA58D 2295-2296       C1SA58E 2297-2298
        C1SA58F 2299-2300       C1SA58G 2301-2302       C1SA58H 2303-2304
        C1SA58I 2305-2306       C1SA58J 2307-2308       C1SA59 2309-2310
        C1SA60 2311-2312        C1SA61 2313-2314        C1SA62A 2315-2316
        C1SA62B 2317-2318       C1SA62C 2319-2320       C1SA62D 2321-2322
        C1SA62E 2323-2324       C1SA63 2325-2326        C1SA64A 2327-2328
        C1SA64B 2329-2330       C1SA64C 2331-2332       C1SA64D 2333-2334
        C1SA64E 2335-2336       C1SALCOH 2337-2338      C1SA65 2339-2340
        C1SA66 2341-2342        C1SB1 2343-2344         C1SB2A 2345-2346
        C1SB2B 2347-2348        C1SB2C 2349-2350        C1SB2D 2351-2352
        C1SB2E 2353-2354        C1SB3 2355-2358         C1SB4 2359-2360
        C1SB5A 2361-2362        C1SB5B 2363-2364        C1SB5C 2365-2368
        C1SB6 2369-2370         C1SB7 2371-2372         C1SB8A1 2373-2374
        C1SB8A2 2375-2376       C1SB8A3 2377-2378       C1SB8A4 2379-2381
        C1SB8B1 2382-2383       C1SB8B2 2384-2385       C1SB8B3 2386-2387
        C1SB8B4 2388-2390       C1SB8C1 2391-2392       C1SB8C2 2393-2394
        C1SB8C3 2395-2396       C1SB8C4 2397-2399       C1SB9 2400-2401
        C1SB10 2402-2403        C1SB11 2404-2405        C1SB12A 2406-2407
        C1SB12B 2408-2409       C1SB12C 2410-2411       C1SB12D 2412-2413
        C1SB12E 2414-2415       C1SB12F 2416-2417       C1SB12G 2418-2419
        C1SB13A 2420-2421       C1SB13B 2422-2425       C1SB14 2426-2427
        C1SB15A 2428-2429       C1SB15B 2430-2433       C1SB16A 2434-2435
        C1SB16B 2436-2437       C1SB16C 2438-2439       C1SB16D 2440-2441
        C1SB17 2442-2443        C1SB18 2444-2445        C1SB19 2446-2447
        C1SB20A 2448-2449       C1SB20B 2450-2451       C1SB20C 2452-2453
        C1SB20D 2454-2455       C1SB20E 2456-2457       C1SB20F 2458-2459
        C1SB20G 2460-2461       C1SB21 2462-2463        C1SB22A 2464-2465
        C1SB22B 2466-2467       C1SB22C 2468-2469       C1SC1 2470-2471
        C1SC2A 2472-2473        C1SC2B 2474-2475        C1SC2C 2476-2477
        C1SC2D 2478-2479        C1SC2E 2480-2481        C1SC2F 2482-2483
        C1SC2G 2484-2485        C1SC2H 2486-2487        C1SC2I 2488-2489
        C1SC2J 2490-2491        C1SC2K 2492-2493        C1SC2L 2494-2495
        C1SC2M 2496-2497        C1SC3A 2498-2499        C1SC3B 2500-2501
        C1SC3C 2502-2503        C1SC3D 2504-2505        C1SC3E 2506-2507
        C1SC3F 2508-2509        C1SC3G 2510-2511        C1SC3H 2512-2513
        C1SC4 2514-2515         C1SC5 2516-2517         C1SC6 2518-2519
        C1SC7A 2520-2521        C1SC7B 2522-2523        C1SC7C 2524-2525
        C1SC7D 2526-2527        C1SC8A 2528-2529        C1SC8B 2530-2531
        C1SC8C 2532-2533        C1SC9 2534-2535         C1SC10A 2536-2537
        C1SC10B 2538-2539       C1SC10C 2540-2541       C1SC10D 2542-2543
        C1SC10E 2544-2545       C1SC10F 2546-2547       C1SC10G 2548-2549
        C1SC10H 2550-2551       C1SC11 2552-2553        C1SC12 2554-2555
        C1SC13 2556-2557        C1SD1 2558-2559         C1SD2 2560-2562
        C1SD2A 2563-2564        C1SD3 2565-2568         C1SD3A 2569-2571
        C1SD4 2572-2573         C1SD5 2574-2576         C1SD5A 2577-2578
        C1SD6 2579-2582         C1SD6A 2583-2585        C1SE1A 2586-2587
        C1SE1B 2588-2589        C1SE1C 2590-2591        C1SE1D 2592-2593
        C1SE1E 2594-2595        C1SE1F 2596-2597        C1SE1G 2598-2599
        C1SE1H 2600-2601        C1SE1I 2602-2603        C1SE1J 2604-2605
        C1SE1K 2606-2607        C1SE1L 2608-2609        C1SE1M 2610-2611
        C1SE1N 2612-2613        C1SE1O 2614-2615        C1SE1P 2616-2617
        C1SE1Q 2618-2619        C1SE1R 2620-2621        C1SE1S 2622-2623
        C1SE1T 2624-2625        C1SE1U 2626-2627        C1SE1V 2628-2629
        C1SE1W 2630-2631        C1SE1X 2632-2633        C1SE1Y 2634-2635
        C1SE1Z 2636-2637        C1SE1AA 2638-2639       C1SE1BB 2640-2641
        C1SE1CC 2642-2643       C1SE1DD 2644-2645       C1SE1EE 2646-2647
        C1SE1FF 2648-2649       C1SE1GG 2650-2651       C1SE1HH 2652-2653
        C1SE1II 2654-2655       C1SE1JJ 2656-2657       C1SE1KK 2658-2659
        C1SE1LL 2660-2661       C1SE1MM 2662-2663       C1SE1NN 2664-2665
        C1SE1OO 2666-2667       C1SE1PP 2668-2669       C1SE1QQ 2670-2671
        C1SPWBA1 2672-2675 .1   C1SPWBE1 2676-2679 .1   C1SPWBG1 2680-2683 .1
        C1SPWBR1 2684-2687 .1   C1SPWBU1 2688-2691 .1   C1SPWBS1 2692-2695 .1
        C1SPWBA2 2696-2710 .12  C1SPWBE2 2711-2725 .12  C1SPWBG2 2726-2740 .12
        C1SPWBR2 2741-2755 .12  C1SPWBU2 2756-2770 .12  C1SPWBS2 2771-2785 .12
        C1SE2A 2786-2787        C1SE2B 2788-2789        C1SE2C 2790-2791
        C1SE2D 2792-2793        C1SE2E 2794-2795        C1SE2F 2796-2797
        C1SE2G 2798-2799        C1SE2H 2800-2801        C1SE2I 2802-2803
        C1SE2J 2804-2805        C1SE2K 2806-2807        C1SE2L 2808-2809
        C1SE2M 2810-2811        C1SE2N 2812-2813        C1SE2O 2814-2815
        C1SE2P 2816-2817        C1SE2Q 2818-2819        C1SE3 2820-2821
        C1SE4A 2822-2823        C1SE4B 2824-2825        C1SE4C 2826-2827
        C1SE4D 2828-2829        C1SE4E 2830-2831        C1SE4F 2832-2833
        C1SE4G 2834-2835        C1SE4H 2836-2837        C1SE4I 2838-2839
        C1SE4J 2840-2841        C1SE4K 2842-2843        C1SE4L 2844-2845
        C1SMASTE 2846-2860 .12  C1SCONST 2861-2875 .12  C1SCTRL 2876-2890 .12
        C1SE4M 2891-2892        C1SE4N 2893-2894        C1SE4O 2895-2896
        C1SE4P 2897-2898        C1SE4Q 2899-2900        C1SE4R 2901-2902
        C1SE4S 2903-2904        C1SESTEE 2905-2919 .12  C1SE4T 2920-2921
        C1SE4U 2922-2923        C1SE4V 2924-2925        C1SE4W 2926-2927
        C1SE4X 2928-2929        C1SE4Y 2930-2931        C1SINTER 2932-2946 .12
        C1SINDEP 2947-2961 .12  C1SE5A 2962-2963        C1SE5B 2964-2965
        C1SE5C 2966-2967        C1SE5D 2968-2969        C1SE5E 2970-2971
        C1SE6A 2972-2973        C1SE6B 2974-2975        C1SE6C 2976-2977
        C1SE6D 2978-2979        C1SE6E 2980-2981        C1SE6F 2982-2983
        C1SE6G 2984-2985        C1SE6H 2986-2987        C1SE6I 2988-2989
        C1SE6J 2990-2991        C1SE6K 2992-2993        C1SE6L 2994-2995
        C1SE6M 2996-2997        C1SE6N 2998-2999        C1SE6O 3000-3001
        C1SE6P 3002-3003        C1SE6Q 3004-3005        C1SE6R 3006-3007
        C1SE6S 3008-3009        C1SE6T 3010-3011        C1SE6U 3012-3013
        C1SE6V 3014-3015        C1SE6W 3016-3017        C1SE6X 3018-3019
        C1SE6Y 3020-3021        C1SE6Z 3022-3023        C1SE6AA 3024-3025
        C1SE6BB 3026-3027       C1SE6CC 3028-3029       C1SE6DD 3030-3031
        C1SE6EE 3032-3033       C1SAGENC 3034-3048 .12  C1SAGREE 3049-3063 .12
        C1SEXTRA 3064-3078 .12  C1SNEURO 3079-3093 .12  C1SCONS1 3094-3108 .12
        C1SCONS2 3109-3123 .12  C1SOPEN 3124-3138 .12   C1SE7A 3139-3140
        C1SE7B 3141-3142        C1SE7C 3143-3144        C1SE7D 3145-3146
        C1SE7E 3147-3148        C1SE7F 3149-3150        C1SE7G 3151-3152
        C1SE7H 3153-3154        C1SE7I 3155-3156        C1SE7J 3157-3158
        C1SE7K 3159-3160        C1SE7L 3161-3162        C1SE7M 3163-3164
        C1SE7N 3165-3166        C1SE7O 3167-3168        C1SE7P 3169-3170
        C1SE7Q 3171-3172        C1SE7R 3173-3174        C1SE7S 3175-3176
        C1SE7T 3177-3178        C1SE7U 3179-3180        C1SE7V 3181-3182
        C1SE7W 3183-3184        C1SE7X 3185-3186        C1SE7Y 3187-3188
        C1SE7Z 3189-3190        C1SE7AA 3191-3192       C1SE7BB 3193-3194
        C1SE7CC 3195-3196       C1SE7DD 3197-3198       C1SE7EE 3199-3200
        C1SE7FF 3201-3202       C1SE7GG 3203-3204       C1SE8 3205-3206
        C1SE8A 3207-3208        C1SE9 3209-3210         C1SE9A 3211-3212
        C1SMPQWB 3213-3216 .1   C1SMPQSP 3217-3231 .12  C1SMPQAC 3232-3246 .12
        C1SMPQSC 3247-3261 .12  C1SMPQSR 3262-3265 .1   C1SMPQAG 3266-3280 .12
        C1SMPQAL 3281-3284 .1   C1SMPQCN 3285-3288 .1   C1SMPQTR 3289-3292 .1
        C1SMPQHA 3293-3307 .12  C1SE10A 3308-3309       C1SE10B 3310-3311
        C1SE10C 3312-3313       C1SE10D 3314-3315       C1SE10E 3316-3317
        C1SE10F 3318-3319       C1SOPTIM 3320-3323 .1   C1SPESSI 3324-3327 .1
        C1SORIEN 3328-3342 .12  C1SE11A 3343-3344       C1SE11A1 3345-3346
        C1SE11A3 3347-3348      C1SE11A4 3349-3350      C1SE11A11 3351-3352
        C1SE11A12 3353-3354     C1SE11AR1 3355-3356     C1SE11AR2 3357-3358
        C1SE11B 3359-3360       C1SE11B1 3361-3362      C1SE11B3 3363-3364
        C1SE11B4 3365-3366      C1SE11B11 3367-3368     C1SE11B12 3369-3370
        C1SE11B13 3371-3372     C1SE11BR1 3373-3374     C1SE11BR2 3375-3376
        C1SE11C 3377-3378       C1SE11C1 3379-3380      C1SE11C3 3381-3382
        C1SE11C4 3383-3384      C1SE11C11 3385-3386     C1SE11C12 3387-3388
        C1SE11C13 3389-3390     C1SE11CR1 3391-3392     C1SE11CR2 3393-3394
        C1SE11D 3395-3396       C1SE11D1 3397-3398      C1SE11D3 3399-3400
        C1SE11D4 3401-3402      C1SE11D11 3403-3404     C1SE11D12 3405-3406
        C1SE11D13 3407-3408     C1SE11D14 3409-3410     C1SE11D15 3411-3412
        C1SE11D16 3413-3414     C1SE11DR1 3415-3416     C1SE11DR2 3417-3418
        C1SE11E 3419-3420       C1SE11E1 3421-3422      C1SE11E3 3423-3424
        C1SE11E4 3425-3426      C1SE11ER1 3427-3428     C1SE11ER2 3429-3430
        C1SE11F 3431-3432       C1SE11F1 3433-3434      C1SE11F3 3435-3436
        C1SE11F4 3437-3438      C1SE11F11 3439-3440     C1SE11F12 3441-3442
        C1SE11FR1 3443-3444     C1SE11FR2 3445-3446     C1SE11G 3447-3448
        C1SE11G1 3449-3450      C1SE11G3 3451-3452      C1SE11G4 3453-3454
        C1SE11G11 3455-3456     C1SE11G12 3457-3458     C1SE11G13 3459-3460
        C1SE11G14 3461-3462     C1SE11GR1 3463-3464     C1SE11GR2 3465-3466
        C1SE12A 3467-3468       C1SE12A1 3469-3470      C1SE12A3 3471-3472
        C1SE12A4 3473-3474      C1SE12A11 3475-3476     C1SE12A12 3477-3478
        C1SE12AR1 3479-3480     C1SE12AR2 3481-3482     C1SE12B 3483-3484
        C1SE12B1 3485-3486      C1SE12B3 3487-3488      C1SE12B4 3489-3490
        C1SE12B11 3491-3492     C1SE12B12 3493-3494     C1SE12B13 3495-3496
        C1SE12B14 3497-3498     C1SE12B15 3499-3500     C1SE12B16 3501-3502
        C1SE12BR1 3503-3504     C1SE12BR2 3505-3506     C1SE12C 3507-3508
        C1SE12C1 3509-3510      C1SE12C3 3511-3512      C1SE12C4 3513-3514
        C1SE12C11 3515-3516     C1SE12C12 3517-3518     C1SE12C13 3519-3520
        C1SE12C14 3521-3522     C1SE12C15 3523-3524     C1SE12CR1 3525-3526
        C1SE12CR2 3527-3528     C1SE12D 3529-3530       C1SE12D1 3531-3532
        C1SE12D3 3533-3534      C1SE12D4 3535-3536      C1SE12D11 3537-3538
        C1SE12D12 3539-3540     C1SE12D13 3541-3542     C1SE12DR1 3543-3544
        C1SE12DR2 3545-3546     C1SE12E 3547-3548       C1SE12E1 3549-3550
        C1SE12E3 3551-3552      C1SE12E4 3553-3554      C1SE12E11 3555-3556
        C1SE12E12 3557-3558     C1SE12E13 3559-3560     C1SE12E14 3561-3562
        C1SE12ER1 3563-3564     C1SE12ER2 3565-3566     C1SE12F 3567-3568
        C1SE12F1 3569-3570      C1SE12F3 3571-3572      C1SE12F4 3573-3574
        C1SE12F11 3575-3576     C1SE12F12 3577-3578     C1SE12F13 3579-3580
        C1SE12F14 3581-3582     C1SE12FR1 3583-3584     C1SE12FR2 3585-3586
        C1SE12G 3587-3588       C1SE12G1 3589-3590      C1SE12G3 3591-3592
        C1SE12G4 3593-3594      C1SE12G11 3595-3596     C1SE12G12 3597-3598
        C1SE12GR1 3599-3600     C1SE12GR2 3601-3602     C1SE12H 3603-3604
        C1SE12H1 3605-3606      C1SE12H3 3607-3608      C1SE12H4 3609-3610
        C1SE12H11 3611-3612     C1SE12H12 3613-3614     C1SE12H13 3615-3616
        C1SE12H14 3617-3618     C1SE12H15 3619-3620     C1SE12H16 3621-3622
        C1SE12HR1 3623-3624     C1SE12HR2 3625-3626     C1SE12I 3627-3628
        C1SE12I1 3629-3630      C1SE12I3 3631-3632      C1SE12I4 3633-3634
        C1SE12I11 3635-3636     C1SE12I12 3637-3638     C1SE12I13 3639-3640
        C1SE12I14 3641-3642     C1SE12I15 3643-3644     C1SE12J 3645-3646
        C1SE12J1 3647-3648      C1SE12J3 3649-3650      C1SE12J4 3651-3652
        C1SE12J11 3653-3654     C1SE12J12 3655-3656     C1SE12J13 3657-3658
        C1SE12J14 3659-3660     C1SE12J15 3661-3662     C1SE12JR1 3663-3664
        C1SE12JR2 3665-3666     C1SE12K 3667-3668       C1SE12K1 3669-3670
        C1SE12K3 3671-3672      C1SE12K4 3673-3674      C1SE12K11 3675-3676
        C1SE12K12 3677-3678     C1SE12L 3679-3680       C1SE12L1 3681-3682
        C1SE12L3 3683-3684      C1SE12L4 3685-3686      C1SE12L11 3687-3688
        C1SE12L12 3689-3690     C1SE12L13 3691-3692     C1SE12L14 3693-3694
        C1SE12L15 3695-3696     C1SE12L16 3697-3698     C1SE12LR1 3699-3700
        C1SE12LR2 3701-3702     C1SE12M 3703-3704       C1SE12M1 3705-3706
        C1SE12M3 3707-3708      C1SE12M4 3709-3710      C1SE12M11 3711-3712
        C1SE12M12 3713-3714     C1SE12M13 3715-3716     C1SE12M14 3717-3718
        C1SE12M15 3719-3720     C1SE12MR1 3721-3722     C1SE12MR2 3723-3724
        C1SE12N 3725-3726       C1SE12N1 3727-3728      C1SE12N3 3729-3730
        C1SE12N4 3731-3732      C1SE12N11 3733-3734     C1SE12N12 3735-3736
        C1SE12NR1 3737-3738     C1SE12NR2 3739-3740     C1SE12O 3741-3742
        C1SE12O1 3743-3744      C1SE12O3 3745-3746      C1SE12O4 3747-3748
        C1SE12O11 3749-3750     C1SE12O12 3751-3752     C1SE12O13 3753-3754
        C1SE12O14 3755-3756     C1SE12OR1 3757-3758     C1SE12OR2 3759-3760
        C1SE12P 3761-3762       C1SE12P1 3763-3764      C1SE12P3 3765-3766
        C1SE12P4 3767-3768      C1SE12P11 3769-3770     C1SE12P12 3771-3772
        C1SE12P13 3773-3774     C1SE12PR1 3775-3776     C1SE12PR2 3777-3778
        C1SE12Q 3779-3780       C1SE12Q1 3781-3782      C1SE12Q3 3783-3784
        C1SE12Q4 3785-3786      C1SE12Q11 3787-3788     C1SE12Q12 3789-3790
        C1SE12Q13 3791-3792     C1SE12Q14 3793-3794     C1SE12QR1 3795-3796
        C1SE12QR2 3797-3798     C1SE12R 3799-3800       C1SE12R1 3801-3802
        C1SE12R3 3803-3804      C1SE12R4 3805-3806      C1SE12R11 3807-3808
        C1SE12R12 3809-3810     C1SE12RR1 3811-3812     C1SE12RR2 3813-3814
        C1SE12S 3815-3816       C1SE12S1 3817-3818      C1SE12S3 3819-3820
        C1SE12S4 3821-3822      C1SE12S11 3823-3824     C1SE12S12 3825-3826
        C1SE12SR1 3827-3828     C1SE12SR2 3829-3830     C1SE12T 3831-3832
        C1SE12T1 3833-3834      C1SE12T3 3835-3836      C1SE12T4 3837-3838
        C1SE12T11 3839-3840     C1SE12T12 3841-3842     C1SE12T13 3843-3844
        C1SE12T14 3845-3846     C1SE12T15 3847-3848     C1SE12T16 3849-3850
        C1SE12TR1 3851-3852     C1SE12TR2 3853-3854     C1SE13A 3855-3856
        C1SE13B 3857-3858       C1SE13C 3859-3860       C1SE13D 3861-3862
        C1SE13E 3863-3864       C1SE13F 3865-3866       C1SE13G 3867-3868
        C1SE13H 3869-3870       C1SE13I 3871-3872       C1SE13J 3873-3874
        C1SE13K 3875-3876       C1SMAR 3877-3880 .1     C1SFAM 3881-3895 .12
        C1SE14A 3896-3897       C1SE14B 3898-3899       C1SE14C 3900-3901
        C1SE14D 3902-3903       C1SE14E 3904-3905       C1SE14F 3906-3907
        C1SE14G 3908-3909       C1SE14H 3910-3911       C1SE14I 3912-3913
        C1SE14J 3914-3915       C1SE14K 3916-3917       C1SE14L 3918-3919
        C1SE14M 3920-3921       C1SE14N 3922-3923       C1SE14O 3924-3925
        C1SE14P 3926-3927       C1SE14Q 3928-3929       C1SE14R 3930-3931
        C1SE14S 3932-3933       C1SE14T 3934-3935       C1SE14U 3936-3937
        C1SE14V 3938-3939       C1SE14W 3940-3941       C1SE14X 3942-3943
        C1SE14Y 3944-3945       C1SE14Z 3946-3947       C1SE14AA 3948-3949
        C1SE14BB 3950-3951      C1SE14CC 3952-3953      C1SE14DD 3954-3955
        C1SE14EE 3956-3957      C1SE14FF 3958-3959      C1SE14GG 3960-3961
        C1SE14HH 3962-3963      C1SE14II 3964-3965      C1SE14JJ 3966-3967
        C1SE14KK 3968-3969      C1SE14LL 3970-3971      C1SE14MM 3972-3973
        C1SPERSI 3974-3988 .12  C1SREAPP 3989-4003 .12  C1SCHANG 4004-4018 .12
        C1SSPCTR 4019-4033 .12  C1SCPCTR 4034-4038 .2   C1SSSCTR 4039-4053 .12
        C1SCSCDE 4054-4068 .12  C1SCSCSP 4069-4083 .12  C1SCSCAG 4084-4098 .12
        C1SDIREC 4099-4113 .12  C1STODAY 4114-4128 .12  C1SINSGH 4129-4132 .1
        C1SFORSG 4133-4134      C1SSUFFI 4135-4138 .1   C1SE15A 4139-4140
        C1SE15B 4141-4142       C1SE15C 4143-4144       C1SE15D 4145-4146
        C1SE15E 4147-4148       C1SE15F 4149-4150       C1SE15G 4151-4152
        C1SE15H 4153-4154       C1SE15I 4155-4156       C1SE15J 4157-4158
        C1SE15K 4159-4160       C1SE15L 4161-4162       C1SE15M 4163-4164
        C1SE15N 4165-4166       C1SE15O 4167-4168       C1SE15P 4169-4170
        C1SE15Q 4171-4172       C1SE15R 4173-4174       C1SE15S 4175-4176
        C1SE15T 4177-4178       C1SE15U 4179-4180       C1SE15V 4181-4182
        C1SE15W 4183-4184       C1SE15X 4185-4186       C1SE15Y 4187-4188
        C1SE15Z 4189-4190       C1SREINT 4191-4205 .12  C1SACTIV 4206-4220 .12
        C1SPLAN 4221-4235 .12   C1SVENT 4236-4250 .12   C1SDENIA 4251-4265 .12
        C1SDISEN 4266-4280 .12  C1SFDCOP 4281-4282      C1SPRCOP 4283-4297 .12
        C1SEMCOP 4298-4312 .12  C1SE16 4313-4315        C1SE17 4316-4318
        C1SE18 4319-4321        C1SE19 4322-4324        C1SE20 4325-4327
        C1SE21 4328-4330        C1SF1 4331-4332         C1SF2 4333-4334
        C1SF3 4335-4336         C1SF4 4337-4338         C1SF5 4339-4340
        C1SF6 4341-4342         C1SF7 4343-4344         C1SF8 4345-4347
        C1SF9 4348-4350         C1SF10 4351-4353        C1SF11 4354-4355
        C1SF12A 4356-4360 .1    C1SF12B 4361-4362       C1SF13A 4363-4364
        C1SF13B 4365-4368       C1SF14 4369-4370        C1SF15 4371-4372
        C1SF16A 4373-4374       C1SF16B 4375-4376       C1SF16C 4377-4378
        C1SF16D 4379-4380       C1SF16E 4381-4382       C1SF16F 4383-4384
        C1SF16G 4385-4386       C1SF16H 4387-4388       C1SF16I 4389-4390
        C1SF16J 4391-4392       C1SF17A 4393-4394       C1SF17B 4395-4396
        C1SF17C 4397-4398       C1SF17D 4399-4400       C1SF17E 4401-4402
        C1SF17F 4403-4404       C1SF17G 4405-4406       C1SF17H 4407-4408
        C1SF17I 4409-4410       C1SF17J 4411-4412       C1SF18 4413-4414
        C1SF19A 4415-4416       C1SF19B 4417-4418       C1SF19C 4419-4420
        C1SF19D 4421-4422       C1SF19E 4423-4424       C1SF19F 4425-4426
        C1SF19G 4427-4428       C1SF19H 4429-4430       C1SF19I 4431-4432
        C1SF19J 4433-4434       C1SF19K 4435-4436       C1SF19L 4437-4438
        C1SF19M 4439-4440       C1SF19N 4441-4442       C1SF20 4443-4444
        C1SF21 4445-4446        C1SF22 4447-4449        C1SF23 4450-4451
        C1SF24 4452-4453        C1SF25A 4454-4455       C1SF25B 4456-4459
        C1SF26 4460-4461        C1SF27A 4462-4463       C1SF27B 4464-4465
        C1SF27C 4466-4467       C1SF27D 4468-4469       C1SF28A 4470-4471
        C1SF28B 4472-4473       C1SF28C 4474-4475       C1SF29A 4476-4477
        C1SF29B 4478-4479       C1SF29C 4480-4481       C1SF30A 4482-4483
        C1SF30B 4484-4485       C1SF31 4486-4487        C1SF32 4488-4489
        C1SF33 4490-4491        C1SF34 4492-4493        C1SF35 4494-4495
        C1SF36A 4496-4497       C1SF36B 4498-4499       C1SF36C 4500-4501
        C1SF36D 4502-4503       C1SF36E 4504-4505       C1SF36F 4506-4507
        C1SF36G 4508-4509       C1SF36H 4510-4511       C1SF36I 4512-4513
        C1SF36J 4514-4515       C1SF36K 4516-4517       C1SJCSD 4518-4521 .1
        C1SJCDA 4522-4536 .12   C1SJCDS 4537-4551 .12   C1SF37A 4552-4553
        C1SF37B 4554-4555       C1SF37C 4556-4557       C1SF37D 4558-4559
        C1SF37E 4560-4561       C1SJCCS 4562-4563       C1SJCSS 4564-4567 .1
        C1SF38A 4568-4569       C1SF38B 4570-4571       C1SF38C 4572-4573
        C1SF38D 4574-4575       C1SF38E 4576-4577       C1SF38F 4578-4579
        C1SJOBDI 4580-4594 .12  C1SF39A 4595-4596       C1SF39B 4597-4598
        C1SF39C 4599-4600       C1SF39D 4601-4602       C1SF39E 4603-4604
        C1SF39F 4605-4606       C1SPIWOR 4607-4621 .12  C1SF40A 4622-4623
        C1SF40B 4624-4625       C1SF40C 4626-4627       C1SF40D 4628-4629
        C1SF40E 4630-4631       C1SF40F 4632-4633       C1SF40G 4634-4635
        C1SF40H 4636-4637       C1SF40I 4638-4639       C1SF40J 4640-4641
        C1SF40K 4642-4643       C1SF40L 4644-4645       C1SF40M 4646-4647
        C1SF40N 4648-4649       C1SF40O 4650-4651       C1SF40P 4652-4653
        C1SPOSWF 4654-4668 .12  C1SNEGWF 4669-4670      C1SPOSFW 4671-4685 .12
        C1SNEGFW 4686-4700 .12  C1SF41A 4701-4702       C1SF41B 4703-4704
        C1SF41C 4705-4706       C1SF41D 4707-4708       C1SF42A 4709-4710
        C1SF42B 4711-4712       C1SF42C 4713-4714       C1SF42D 4715-4716
        C1SF43A 4717-4718       C1SF43B 4719-4720       C1SF43C 4721-4722
        C1SF43D 4723-4724       C1SF44A 4725-4726       C1SF44B 4727-4728
        C1SF44C 4729-4730       C1SF45A 4731-4732       C1SF45B 4733-4734
        C1SF45C 4735-4736       C1SG1 4737-4738         C1SG2 4739-4740
        C1SG3 4741-4742         C1SG4 4743-4744         C1SG5 4745-4746
        C1SG6 4747-4748         C1SG7 4749-4750         C1SG8 4751-4752
        C1SG9 4753-4754         C1SG10 4755-4756        C1SG11A 4757-4758
        C1SG11B 4759-4760       C1SG11C 4761-4762       C1SG11D 4763-4764
        C1SG12 4765-4766        C1SG13 4767-4768        C1SG14A 4769-4770
        C1SG14B 4771-4772       C1SG14C 4773-4774       C1SG14D 4775-4776
        C1SG15 4777-4778        C1SG16 4779-4780        C1SG17A 4781-4782
        C1SG17B 4783-4784       C1SG17C 4785-4786       C1SG17D 4787-4788
        C1SRINC 4789-4794       C1SSINC 4795-4800       C1SHINC 4801-4806
        C1SEARN 4807-4812       C1SPNSN 4813-4818       C1SSEC 4819-4824
        C1SOTH 4825-4830        C1STINC 4831-4836       C1SG18 4837-4838
        C1SG19 4839-4840        C1SG20A 4841-4842       C1SG20B 4843-4844
        C1SG20C 4845-4846       C1SG20D 4847-4848       C1SG20E 4849-4850
        C1SG20F 4851-4852       C1SG20G 4853-4854       C1SG20H 4855-4856
        C1SG20I 4857-4858       C1SG20J 4859-4860       C1SG21 4861-4868
        C1SG22 4869-4874        C1SG23 4875-4880        C1SG24 4881-4886
        C1SG25 4887-4888        C1SG25A 4889-4894       C1SG25B 4895-4900
        C1SG26 4901-4902        C1SG27 4903-4909        C1SG28 4910-4911
        C1SG29 4912-4918        C1SG30 4919-4920        C1SG31 4921-4927
        C1SG32 4928-4929        C1SG33 4930-4936        C1SG34 4937-4938
        C1SG35 4939-4940        C1SG36 4941-4946        C1SG37A 4947-4949
        C1SG37B 4950-4952       C1SG37C 4953-4955       C1SG37D 4956-4958
        C1SG38 4959-4960        C1SG39 4961-4967        C1SG40 4968-4969
        C1SG41 4970-4971        C1SG42 4972-4979        C1SG43 4980-4986
        C1SG44 4987-4988        C1SG45 4989-4994        C1SG46 4995-4996
        C1SG47 4997-5003        C1SG48A 5004-5006       C1SG48B 5007-5009
        C1SG48C 5010-5012       C1SG48D 5013-5015       C1SG48E 5016-5018
        C1SG49 5019-5020        C1SG50 5021-5024        C1SG51 5025-5030
        C1SG52 5031-5032        C1SG53 5033-5039        C1SG54 5040-5041
        C1SG55 5042-5047        C1SG56 5048-5049        C1SG57 5050-5055
        C1SG58 5056-5057        C1SG59 5058-5059        C1SG59A 5060-5065
        C1SG59B 5066-5072       C1SG60 5073-5074        C1SG60A 5075-5080
        C1SG60B 5081-5087       C1SG61A 5088-5094       C1SG61B 5095-5100
        C1SG61C 5101-5106       C1SG61D 5107-5112       C1SG61E 5113-5117
        C1SG61F 5118-5122       C1SG61G 5123-5130       C1SG61H 5131-5135
        C1SG61I 5136-5140       C1SG62 5141-5142        C1SH1 5143-5144
        C1SH2 5145-5146         C1SH3 5147-5148         C1SH4 5149-5150
        C1SH5 5151-5152         C1SH6A 5153-5154        C1SH6B 5155-5156
        C1SH6C 5157-5158        C1SH6D 5159-5160        C1SH6E 5161-5162
        C1SH6F 5163-5164        C1SGENER 5165-5179 .12  C1SH7A 5180-5182
        C1SH7B 5183-5185        C1SH7C 5186-5188        C1SH7D 5189-5191
        C1SH8A 5192-5193        C1SH8B 5194-5195        C1SH8C 5196-5197
        C1SH9A 5198-5200        C1SH9B 5201-5203        C1SH9C 5204-5206
        C1SH9D 5207-5209        C1SH9E 5210-5212        C1SH9F 5213-5215
        C1SH10A 5216-5218       C1SH10B 5219-5221       C1SH10C 5222-5224
        C1SH10D 5225-5227       C1SH10E 5228-5230       C1SH10F 5231-5233
        C1SH11A 5234-5236       C1SH11B 5237-5239       C1SH11C 5240-5242
        C1SH11D 5243-5245       C1SH11E 5246-5248       C1SH12A 5249-5251
        C1SH12B 5252-5254       C1SH12C 5255-5257       C1SH12D 5258-5260
        C1SH12E 5261-5263       C1SH12F 5264-5266       C1SH12G 5267-5269
        C1SH12H 5270-5272       C1SH13A 5273-5280       C1SH13B 5281-5288
        C1SH13C 5289-5293       C1SH13D 5294-5298       C1SH13E 5299-5306
        C1SH13F 5307-5314       C1SH13G 5315-5322       C1SH13H 5323-5330
        C1SH14A 5331-5338       C1SH14B 5339-5346       C1SH14C 5347-5354
        C1SH14D 5355-5362       C1SH14E 5363-5370       C1SH14F 5371-5378
        C1SH14G 5379-5383       C1SH15A 5384-5385       C1SH15B 5386-5387
        C1SH15C 5388-5389       C1SH15D 5390-5391       C1SH16A 5392-5393
        C1SH16B 5394-5395       C1SH16C 5396-5397       C1SH16D 5398-5399
        C1SH16E 5400-5401       C1SH16F 5402-5403       C1SH16G 5404-5405
        C1SH16H 5406-5407       C1SH16I 5408-5409       C1SH16J 5410-5411
        C1SH16K 5412-5413       C1SH16L 5414-5415       C1SH16M 5416-5417
        C1SH16N 5418-5419       C1SH16O 5420-5421       C1SSWBMS 5422-5423
        C1SSWBSI 5424-5427 .1   C1SSWBAO 5428-5431 .1   C1SSWBSC 5432-5435 .1
        C1SSWBSA 5436-5439 .1   C1SH16P 5440-5441       C1SH16Q 5442-5443
        C1SH16R 5444-5445       C1SH16S 5446-5447       C1SH16T 5448-5449
        C1SSYMP 5450-5464 .12   C1SI1 5465-5466         C1SI2 5467-5468
        C1SI3 5469-5470         C1SI4 5471-5472         C1SI5 5473-5474
        C1SI6A 5475-5476        C1SI6B 5477-5478        C1SI6C 5479-5480
        C1SI6D 5481-5482        C1SI6E 5483-5484        C1SI6F 5485-5486
        C1SI6G 5487-5488        C1SI6H 5489-5490        C1SI6I 5491-5492
        C1SI6J 5493-5494        C1SI6K 5495-5496        C1SI6L 5497-5498
        C1SHOMET 5499-5513 .12  C1SPIHOM 5514-5528 .12  C1SI7 5529-5530
        C1SJ1 5531-5532         C1SJ2 5533-5534         C1SJ3 5535-5537
        C1SJ4A 5538-5539        C1SJ4B 5540-5541        C1SJ4C 5542-5543
        C1SJ4D 5544-5545        C1SJ4E 5546-5547        C1SJ4F 5548-5549
        C1SJ4G 5550-5551        C1SJ4H 5552-5553        C1SJ4I 5554-5555
        C1SJ4J 5556-5557        C1SKINPO 5558-5572 .12  C1SKINNE 5573-5587 .12
        C1SFAMSO 5588-5602 .12  C1SPKINS 5603-5606 .1   C1SJ5 5607-5608
        C1SJ6 5609-5610         C1SJ7 5611-5613         C1SJ8A 5614-5615
        C1SJ8B 5616-5617        C1SJ8C 5618-5619        C1SJ8D 5620-5621
        C1SJ8E 5622-5623        C1SJ8F 5624-5625        C1SJ8G 5626-5627
        C1SJ8H 5628-5629        C1SFDSPO 5630-5644 .12  C1SFDSNE 5645-5659 .12
        C1SFDSOL 5660-5674 .12  C1SJ9 5675-5676         C1SJ10 5677-5678
        C1SJ11SA 5679-5680      C1SJ11PA 5681-5682      C1SJ11CA 5683-5684
        C1SJ11SB 5685-5686      C1SJ11PB 5687-5688      C1SJ11CB 5689-5690
        C1SJ11SC 5691-5692      C1SJ11PC 5693-5694      C1SJ11CC 5695-5696
        C1SJ11SD 5697-5698      C1SJ11PD 5699-5700      C1SJ11CD 5701-5702
        C1SJ11SE 5703-5704      C1SJ11PE 5705-5706      C1SJ11CE 5707-5708
        C1SJ11SF 5709-5710      C1SJ11PF 5711-5712      C1SJ11CF 5713-5714
        C1SJ11SG 5715-5716      C1SJ11PG 5717-5718      C1SJ11CG 5719-5720
        C1SJ11SH 5721-5722      C1SJ11PH 5723-5724      C1SJ11CH 5725-5726
        C1SJ11SI 5727-5728      C1SJ11PI 5729-5730      C1SJ11CI 5731-5732
        C1SJ11SJ 5733-5734      C1SJ11PJ 5735-5736      C1SJ11CJ 5737-5738
        C1SJ11SK 5739-5740      C1SJ11PK 5741-5742      C1SJ11CK 5743-5744
        C1SJ11SL 5745-5746      C1SJ11PL 5747-5748      C1SJ11CL 5749-5750
        C1SJ11SM 5751-5752      C1SJ11PM 5753-5754      C1SJ11CM 5755-5756
        C1SJ11SN 5757-5758      C1SJ11PN 5759-5760      C1SJ11CN 5761-5762
        C1SJ11SO 5763-5764      C1SJ11PO 5765-5766      C1SJ11CO 5767-5768
        C1SK1 5769-5770         C1SK2 5771-5772         C1SK3 5773-5774
        C1SK4 5775-5776         C1SK5 5777-5778         C1SK6 5779-5780
        C1SK7A 5781-5782        C1SK7B 5783-5784        C1SK7C 5785-5786
        C1SK7D 5787-5788        C1SK7E 5789-5790        C1SK7F 5791-5792
        C1SPIFAM 5793-5807 .12  C1SK8A1 5808-5809       C1SK8A2 5810-5811
        C1SK8B1 5812-5813       C1SK8B2 5814-5815       C1SK8C1 5816-5817
        C1SK8C2 5818-5819       C1SK8D1 5820-5821       C1SK8D2 5822-5823
        C1SK9 5824-5825         C1SK10 5826-5827        C1SK11 5828-5829
        C1SK12 5830-5831        C1SK13 5832-5833        C1SL1 5834-5835
        C1SL2 5836-5837         C1SL3 5838-5839         C1SL4 5840-5841
        C1SL5 5842-5843         C1SL6 5844-5845         C1SL7 5846-5847
        C1SL8 5848-5849         C1SL9 5850-5851         C1SMARRS 5852-5853
        C1SL10A 5854-5855       C1SL10B 5856-5857       C1SL10C 5858-5859
        C1SSPDIS 5860-5863 .1   C1SL11 5864-5865        C1SL12A 5866-5867
        C1SL12B 5868-5869       C1SL12C 5870-5871       C1SL12D 5872-5873
        C1SL12E 5874-5875       C1SL12F 5876-5877       C1SL12G 5878-5879
        C1SL12H 5880-5881       C1SL12I 5882-5883       C1SL12J 5884-5885
        C1SL12K 5886-5887       C1SL12L 5888-5889       C1SSPEMP 5890-5904 .12
        C1SSPCRI 5905-5919 .12  C1SSPSOL 5920-5934 .12  C1SL13 5935-5936
        C1SL14 5937-5939        C1SL15 5940-5942        C1SL16 5943-5944
        C1SL17 5945-5946        C1SL18A 5947-5948       C1SL18B 5949-5950
        C1SL18C 5951-5952       C1SL18D 5953-5954       C1SSPDEC 5955-5969 .12
        C1SL19 5970-5971        C1SL20 5972-5973        C1SL21 5974-5975
        C1SL22 5976-5978        C1SL23 5979-5981        C1SL24A 5982-5983
        C1SL24B 5984-5985       C1SL24C 5986-5987       C1SL24D 5988-5989
        C1SL25A 5990-5991       C1SL25B 5992-5993       C1SL25C 5994-5995
        C1SL26A 5996-5997       C1SL26B 5998-5999       C1SL26C 6000-6001
        C1SL27A 6002-6003       C1SL27B 6004-6005       C1SL28 6006-6007
        C1SM1 6008-6009         C1SM2 6010-6011         C1SM3 6012-6013
        C1SM4 6014-6015         C1SM5 6016-6017         C1SM6 6018-6019
        C1SM7 6020-6021         C1SM8 6022-6023         C1SM9 6024-6025
        C1SM10 6026-6027        C1SM11 6028-6029        C1SM12 6030-6031
        C1SM13 6032-6033        C1SN1A 6034-6035        C1SN1B 6036-6037
        C1SN1C 6038-6039        C1SN2A 6040-6041        C1SN2B 6042-6043
        C1SN2C 6044-6045        C1SN2D 6046-6047        C1SN2E 6048-6049
        C1SN2F 6050-6051        C1SN2G 6052-6053        C1SN2H 6054-6055
        C1SN2I 6056-6057        C1SSPIRI 6058-6059      C1SRELID 6060-6074 .12
        C1SN3A 6075-6076        C1SN3B 6077-6078        C1SN3C 6079-6080
        C1SN3D 6081-6082        C1SN3E 6083-6084        C1SRELPR 6085-6088 .1
        C1SN4 6089-6090         C1SN5 6091-6092         C1SN6 6093-6094
        C1SN7 6095-6096         C1SN8 6097-6098         C1SN9A 6099-6100
        C1SN9B 6101-6102        C1SN9C 6103-6104        C1SN9D 6105-6106
        C1SRELSU 6107-6121 .12  C1SN10A 6122-6123       C1SN10B 6124-6125
        C1SN10C 6126-6127       C1SN10D 6128-6129       C1SN10E 6130-6131
        C1SN10F 6132-6133       C1SN10G 6134-6135       C1SN10H 6136-6137
        C1SRELCA 6138-6139      C1SRELCB 6140-6154 .12  C1SN11A 6155-6156
        C1SN11B 6157-6158       C1SN11C 6159-6160       C1SN11D 6161-6162
        C1SN11E 6163-6164       C1SSPRTE 6165-6169 .2   C1SN12A 6170-6171
        C1SN12B 6172-6173       C1SN12C 6174-6175       C1SN12D 6176-6177
        C1SN12E 6178-6179       C1SN12F 6180-6181       C1SN12G 6182-6183
        C1SN12H 6184-6185       C1SN12I 6186-6187       C1SMNDFU 6188-6202 .12
        C1SP1A 6203-6206        C1SP1B 6207-6210        C1SP1C 6211-6214
        C1SP1D 6215-6218        C1SP1E 6219-6222        C1SP1F 6223-6226
        C1SP1G 6227-6230        C1SP1H 6231-6234        C1SP1I 6235-6238
        C1SP1J 6239-6242        C1SP1K 6243-6246        C1SLFEDI 6247-6248
        C1SP2A 6249-6250        C1SP2B 6251-6252        C1SP2C 6253-6254
        C1SP2D 6255-6256        C1SP2E 6257-6258        C1SP2F 6259-6260
        C1SP2G 6261-6262        C1SP2H 6263-6264        C1SP2I 6265-6266
        C1SDAYDI 6267-6281 .12  C1SP3 6282-6283         C1SP4A 6284-6285
        C1SP4B 6286-6287        C1SP4C 6288-6289        C1SP4D 6290-6291
        C1SP4E 6292-6293        C1SP4F 6294-6295        C1SP4G 6296-6297
        C1SP4H 6298-6299        C1SP4I 6300-6301        C1SP4J 6302-6303
        C1SP4K 6304-6305        C1SP4L 6306-6307        C1SP4M 6308-6309
        C1SP5 6310-6311         C1SP6 6312-6313         C1SQ1 6314-6315
        C1SQ2 6316-6317         C1SQ3 6318-6319         C1SQ4 6320-6321
        C1SQ5 6322-6323         C1SQ6 6324-6325         ;


* SAS LABEL STATEMENT;

LABEL 
   M2ID    = 'MIDUS 2 ID number' 
   M2FAMNUM= 'MIDUS 2 Family number' 
   SAMPLMAJ= 'Major sample identification (aka Sample)' 
   C1STATUS= 'Completion status of M3 respondents' 
   C1PRAGE = 'Respondent''s age' 
   C1PBYEAR= 'Respondent''s year of birth' 
   C1PRSEX = 'Respondent''s sex' 
   C1PIDATE_MO= 'Interview date - Month' 
   C1PIDATE_YR= 'Interview date - Year' 
   C1PAA1  = 'Recession began with specific event' 
   C1PAA2A = 'Recession experience - Lost a job?' 
   C1PAA2B = 'Recession experience - Started new job you did not like?' 
   C1PAA2C = 'Recession experience - Started new job you liked?' 
   C1PAA2D = 'Recession experience - Taken job below education/experience?' 
   C1PAA2E = 'Recession experience - Taken additional job?' 
   C1PAA2F = 'Recession experience - Missed mortgage or rent payment?' 
   C1PAA2G = 'Recession experience - Threatened with foreclosure/eviction?' 
   C1PAA2H = 'Recession experience - Bought a home?' 
   C1PAA2I = 'Recession experience - Sold a home for more than it cost you?' 
   C1PAA2I1= 'Recession experience - Sold a home for how much gain?' 
   C1PAA2J = 'Recession experience - Sold a home for less than it cost you?' 
   C1PAA2J1= 'Recession experience - Sold a home for how much loss?' 
   C1PAA2K = 'Recession experience - Lost a home to foreclosure?' 
   C1PAA2K1= 'Recession experience - Lost a home to foreclosure for how much loss?' 
   C1PAA2L = 'Recession experience - Lost a home to something other than foreclosure?' 
   C1PAA2L2= 'Recession experience - Lost a home to something other for how much loss?' 
   C1PAA2M = 'Recession experience - Declared bankruptcy?' 
   C1PAA2N = 'Recession experience - Moved to a different house/apartment?' 
   C1PAA2O = 'Recession experience - Family/friends moved in to save money?' 
   C1PAA2P = 'Recession experience - Moved in with family/friends to save money?' 
   C1PAA2Q = 'Recession experience - Borrowed money against house or from bank?' 
   C1PAA2R = 'Recession experience - Missed a credit card payment?' 
   C1PAA2S = 'Recession experience - Missed other debt payments, car/student loans?' 
   C1PAA2T = 'Recession experience - Increased credit card debt?' 
   C1PAA2U = 'Recession experience - Reduced credit card debt?' 
   C1PAA2V = 'Recession experience - Paid off all credit card debt?' 
   C1PAA2W = 'Recession experience - Paid off all other debt?' 
   C1PAA2X = 'Recession experience - Sold possessions to make ends meet?' 
   C1PAA2Y = 'Recession experience - Cut back on your spending?' 
   C1PAA2Z = 'Recession experience - Exhausted unemployment benefits?' 
   C1PAA3  = 'Do you think recession over now or not?' 
   C1PAA3A = 'How much longer will recession last?' 
   C1PAA4  = 'Next 3 years will overall unemployment get better/worse/stay same?' 
   C1PAA5  = 'Next 3 years will community unemployment get better/worse/stay same?' 
   C1PAA6  = 'Next 3 years will workers sense of security get better/worse/stay same?' 
   C1PAA7  = 'Next 3 years will ability to afford college get better/worse/stay same?' 
   C1PAA8  = 'Next 3 years will ability to retire when want get better/worse/stay same?' 
   C1PA1   = 'Physical health self-evaluated' 
   C1PA2   = 'Mental/emotional health self-evaluated' 
   C1PA3   = 'Health compared to others your age' 
   C1PA4   = 'Days unable to work because of health (30 days)' 
   C1PA4A  = 'Reason unable to work (physical, mental, combination)' 
   C1PA4BA = 'Number days unable work due to physical health only' 
   C1PA4BB = 'Number days unable work due to mental health only' 
   C1PA4BC = 'Number days unable work due to physical and mental health' 
   C1PA5   = 'Days cut back work because of health (30 days)' 
   C1PA5A  = 'Reason cut back on work (physical, mental, combination)' 
   C1PA5BA = 'Number days cut back due to physical health only' 
   C1PA5BB = 'Number days cut back due to mental health only' 
   C1PA5BC = 'Number days cut back due to mental and physical' 
   C1PA6A  = 'History of stroke' 
   C1PA6B  = 'History of serious head injury' 
   C1PA6C  = 'History of Parkinson''s disease' 
   C1PA6D  = 'History of other neurological disorder' 
   C1PA7   = 'Heart trouble suspect/confirmed by doctor' 
   C1PA7A  = 'Age doctor told you have heart problem' 
   C1PA7BA = 'Diagnosis - Heart attack' 
   C1PA7BB = 'Diagnosis - Angina' 
   C1PA7BC = 'Diagnosis - High blood pressure' 
   C1PA7BD = 'Diagnosis - Valve disease' 
   C1PA7BE = 'Diagnosis - Hole in heart' 
   C1PA7BF = 'Diagnosis - Blocked artery' 
   C1PA7BG = 'Diagnosis - Irregular heartbeat' 
   C1PA7BH = 'Diagnosis - Heart murmur' 
   C1PA7BI = 'Diagnosis - Heart failure' 
   C1PA7BJ = 'Diagnosis - Other' 
   C1PA7C  = 'Go to hospital for heart treatment/tests' 
   C1PA7D  = 'Getting treatment for heart trouble now' 
   C1PA8   = 'Ever had heart attack' 
   C1PA8A  = 'Year had first heart attack' 
   C1PA9   = 'Heart attack risk compared to others' 
   C1PA9A  = 'Degree of higher risk for heart attack' 
   C1PA9B  = 'Degree of lower risk for heart attack' 
   C1PHRTRS= 'Subjective Heart Attack Risk' 
   C1PHRTDX= 'Subjective Heart Attack Risk (binary)' 
   C1PA10A = 'Family heart attack - No one' 
   C1PA10B = 'Family heart attack - Mother' 
   C1PA10C = 'Family heart attack - Father' 
   C1PA10D = 'Family heart attack - Brother' 
   C1PA10E = 'Family heart attack - Half brother' 
   C1PA10F = 'Family heart attack - Sister' 
   C1PA10G = 'Family heart attack - Half sister' 
   C1PA10H = 'Family heart attack - Child' 
   C1PA11  = 'How much worry about your heart' 
   C1PA12  = 'Takes aspirin to prevent heart conditions' 
   C1PA13  = 'Ever had major heart procedure' 
   C1PA14  = 'Anyone you know well had heart procedure' 
   C1PA15  = 'Would choose bypass or medication' 
   C1PA16  = 'How sure would choose bypass or medication' 
   C1PA17  = 'Chest pain walk uphill/hurry' 
   C1PA18  = 'Chest pain walk ordinary pace' 
   C1PA19  = 'When get chest pain stop/slow/continue' 
   C1PA20  = 'Does chest pain go away when stand still' 
   C1PA21  = 'How soon does chest pain go away' 
   C1PA22  = 'Where get chest pain/discomfort' 
   C1PANGIN= 'Angina Class Rating' 
   C1PA23  = 'Ever severe pain across front of chest' 
   C1PA23A = 'Number times severe pain front of chest' 
   C1PA23B = 'Talk to doctor about chest pain' 
   C1PA23CA= 'Chest pain - Heart attack' 
   C1PA23CB= 'Chest pain - Angina' 
   C1PA23CC= 'Chest pain - High blood pressure' 
   C1PA23CD= 'Chest pain - Valve disease' 
   C1PA23CE= 'Chest pain - Hole in heart' 
   C1PA23CF= 'Chest pain - Blocked artery' 
   C1PA23CG= 'Chest pain - Irregular heartbeat' 
   C1PA23CH= 'Chest pain - Heart murmur' 
   C1PA23CI= 'Chest pain - Heart failure' 
   C1PA23CJ= 'Chest pain - Other' 
   C1PA24  = 'High blood pressure ever diagnosed' 
   C1PA24A = 'Number years ago told high blood pressure' 
   C1PA24B = 'Ever taken high blood pressure medicine' 
   C1PA24C = 'Now taking high blood pressure medicine' 
   C1PA24D = 'Using other treatment high blood pressure' 
   C1PA24EA= 'C1PA24EA: Therapy - Diet' 
   C1PA24EB= 'C1PA24EB: Therapy - Vitamins/Minerals' 
   C1PA24EC= 'C1PA24EC: Therapy - Exercise' 
   C1PA24ED= 'C1PA24ED: Therapy - Herbal' 
   C1PA24EE= 'C1PA24EE: Therapy - Medication/Relaxation' 
   C1PA24EF= 'C1PA24EF: Therapy - Other' 
   C1PA25NM= 'Time since blood pressure test (number)' 
   C1PA25IN= 'Time since blood pressure test (month, year)' 
   C1PA25A = 'Last blood pressure (low, normal, high)' 
   C1PA25BS= 'Exact reading systolic blood pressure' 
   C1PA25BD= 'Exact reading diastolic blood pressure' 
   C1PA26  = 'Ever had cancer' 
   C1PA27  = 'Cancer risk compared to others' 
   C1PA27A = 'Degree of higher risk for cancer' 
   C1PA27B = 'Degree of lower risk for cancer' 
   C1PCACRS= 'Subjective Cancer Risk' 
   C1PCACDX= 'Subjective Cancer Risk  (binary)' 
   C1PA28A = 'Breast cancer ever' 
   C1PA28B = 'Cervical cancer ever' 
   C1PA28C = 'Colon cancer ever' 
   C1PA28D = 'Lung cancer ever' 
   C1PA28E = 'Lymphoma/leukemia cancer ever' 
   C1PA28F = 'Ovarian cancer ever' 
   C1PA28G = 'Prostate cancer ever' 
   C1PA28H = 'Skin cancer/melanoma ever' 
   C1PA28I = 'Uterine cancer ever' 
   C1PA28J = 'Other cancer ever (specify)' 
   C1PA28AA= 'Age breast cancer diagnosed' 
   C1PA28BB= 'Age cervical cancer diagnosed' 
   C1PA28CC= 'Age colon cancer diagnosed' 
   C1PA28DD= 'Age lung cancer diagnosed' 
   C1PA28EE= 'Age lymphoma/leukemia cancer diagnosed' 
   C1PA28FF= 'Age ovarian cancer diagnosed' 
   C1PA28GG= 'Age prostate cancer diagnosed' 
   C1PA28HH= 'Age skin cancer/melanoma diagnosed' 
   C1PA28II= 'Age uterine cancer diagnosed' 
   C1PA28JJ= 'Age other cancer diagnosed' 
   C1PA29  = 'Cancer treatment/therapy currently' 
   C1PA29AA= 'Therapy - Surgery' 
   C1PA29AB= 'Therapy - Chemotherapy' 
   C1PA29AC= 'Therapy - Radiation' 
   C1PA29AD= 'C1PA29AD: Therapy - Diet' 
   C1PA29AE= 'C1PA29AE: Therapy - Vitamins/Minerals' 
   C1PA29AF= 'C1PA29AF: Therapy - Exercise' 
   C1PA29AG= 'C1PA29AG: Therapy - Herbal' 
   C1PA29AH= 'C1PA29AH: Therapy - Medication/Relaxation' 
   C1PA29AI= 'C1PA29AI: Therapy - Other' 
   C1PA30A = 'Had cancer - No one' 
   C1PA30B = 'Had cancer - Mother' 
   C1PA30C = 'Had cancer - Father' 
   C1PA30D = 'Had cancer - Brother' 
   C1PA30E = 'Had cancer - Sister' 
   C1PA30F = 'Had cancer - Child' 
   C1PA31A = 'Mother had breast cancer' 
   C1PA31B = 'Mother had cervical cancer' 
   C1PA31C = 'Mother had colon cancer' 
   C1PA31D = 'Mother had lung cancer' 
   C1PA31E = 'Mother had lymphoma/leukemia cancer' 
   C1PA31F = 'Mother had ovarian cancer' 
   C1PA31H = 'Mother had skin cancer/melanoma' 
   C1PA31I = 'Mother had uterine cancer' 
   C1PA31J = 'Mother had other cancer (specify)' 
   C1PA32A = 'Father had breast cancer' 
   C1PA32C = 'Father had colon cancer' 
   C1PA32D = 'Father had lung cancer' 
   C1PA32E = 'Father had lymphoma/leukemia cancer' 
   C1PA32G = 'Father had prostate cancer' 
   C1PA32H = 'Father had skin cancer/melanoma' 
   C1PA32J = 'Father had other cancer (specify)' 
   C1PA33A = 'Brother had breast cancer' 
   C1PA33C = 'Brother had colon cancer' 
   C1PA33D = 'Brother had lung cancer' 
   C1PA33E = 'Brother had lymphoma/leukemia cancer' 
   C1PA33G = 'Brother had prostate cancer' 
   C1PA33H = 'Brother had skin cancer/melanoma' 
   C1PA33J = 'Brother had other cancer (specify)' 
   C1PA34A = 'Sister had breast cancer' 
   C1PA34B = 'Sister had cervical cancer' 
   C1PA34C = 'Sister had colon cancer' 
   C1PA34D = 'Sister had lung cancer' 
   C1PA34E = 'Sister had lymphoma/leukemia cancer' 
   C1PA34F = 'Sister had ovarian cancer' 
   C1PA34H = 'Sister had skin cancer/melanoma' 
   C1PA34I = 'Sister had uterine cancer' 
   C1PA34J = 'Sister had other cancer (specify)' 
   C1PA35A = 'Child had breast cancer' 
   C1PA35B = 'Child had cervical cancer' 
   C1PA35C = 'Child had colon cancer' 
   C1PA35D = 'Child had lung cancer' 
   C1PA35E = 'Child had lymphoma/leukemia cancer' 
   C1PA35F = 'Child had ovarian cancer' 
   C1PA35G = 'Child had prostate cancer' 
   C1PA35H = 'Child had skin cancer/melanoma' 
   C1PA35I = 'Child had uterine cancer' 
   C1PA35J = 'Child had other cancer (specify)' 
   C1PA36A = 'Ever had hysterectomy' 
   C1PA36AM= 'Month had hysterectomy' 
   C1PA36AY= 'Year had hysterectomy' 
   C1PA36B = 'Had ovary removed (one, both, none)' 
   C1PA36C = 'Ovaries removed at same time' 
   C1PA36DM= 'Month first ovary removed' 
   C1PA36DY= 'Year first ovary removed' 
   C1PA36EM= 'Month second ovary removed' 
   C1PA36EY= 'Year second ovary removed' 
   C1PA37  = 'Age had first cigarette' 
   C1PA38A = 'Ever smoked cigarettes regularly' 
   C1PA38B = 'Age began to smoke regularly' 
   C1PA39  = 'Now smoke cigarettes regularly' 
   C1PA40  = 'Cigarettes per day during heaviest year (current smoker)' 
   C1PA41  = 'Ever tried to quit smoking' 
   C1PA42  = 'Age last smoked regularly' 
   C1PA43  = 'Cigarettes per day during heaviest year (ex-smoker)' 
   C1PA44  = 'Ever used pipe/cigars/snuff/chew' 
   C1PA46  = 'In home anyone smoke/use tobacco current' 
   C1PA48  = 'At job anyone smoke/use tobacco ever' 
   C1PA47  = 'At job anyone smoke/use tobacco current' 
   C1PA49  = 'Age had first drink of alcohol' 
   C1PA50  = 'Had at least one drink (past month)' 
   C1PA51  = 'How often at least one drink (past month)' 
   C1PA51A = 'C1PA51A: How many days per month (if less than 1/week)' 
   C1PA52  = 'Number drinks on days when drank' 
   C1PA53  = 'Times had 5 or more drinks same occasion (past month)' 
   C1PA54  = 'When drank most, had at least one (frequency)' 
   C1PA54A = 'C1PA54A: How many days per month (if less than 1/week)' 
   C1PA55  = 'When drank most, number drinks when drank' 
   C1PA56  = 'Age start to drink that much (when most)' 
   C1PA57  = 'Number years drank that much (when most)' 
   C1PA59  = 'Ever married to/lived with alcoholic' 
   C1PA60  = 'Felt sad/depressed for 2 or more weeks (12 months)' 
   C1PA61  = 'Sad/depress lasted how long (2 weeks sad)' 
   C1PA62  = 'How often felt sad/depress (2 weeks sad)' 
   C1PA63  = 'Lose interest in most things (2 weeks sad)' 
   C1PA64  = 'Felt more tired/low energy (2 weeks sad)' 
   C1PA65  = 'Lost appetite (2 weeks sad)' 
   C1PA65A = 'Increased appetite (2 weeks sad)' 
   C1PA66  = 'More trouble falling asleep (2 weeks sad)' 
   C1PA66A = 'How often trouble fall sleep (2 weeks sad)' 
   C1PA67  = 'More trouble concentrating (2 weeks sad)' 
   C1PA68  = 'Felt down/no good/worthless (2 weeks sad)' 
   C1PA69  = 'Thought a lot about death (2 weeks sad)' 
   C1PA70  = 'Number weeks sad/depressed (12 months)' 
   C1PA71MO= 'Most recent month sad/depressed' 
   C1PA71YR= 'Most recent year sad/depressed' 
   C1PDEPAF= 'Depressed Affect (continuous)' 
   C1PDEPAD= 'Depressed Affect (binary)' 
   C1PA72  = 'Time lost interest 2 or more weeks (12 months)' 
   C1PA73  = 'How long loss interest lasted (2 weeks interest)' 
   C1PA74  = 'How often felt loss interest (2 weeks interest)' 
   C1PA75  = 'Felt more tired/low energy (2 weeks interest)' 
   C1PA76  = 'Lost appetite (2 weeks interest)' 
   C1PA76A = 'Increased appetite (2 weeks interest)' 
   C1PA77  = 'More trouble fall sleep (2 weeks interest)' 
   C1PA77A = 'How often trouble fall sleep (2 weeks interest)' 
   C1PA78  = 'More trouble concentrating (2 weeks interest)' 
   C1PA79  = 'Felt down/no good/worthless (2 weeks interest)' 
   C1PA80  = 'Thought a lot about death (2 weeks interest)' 
   C1PA81  = 'Number weeks lost interest (12 months)' 
   C1PA82MO= 'Most recent month lost interest' 
   C1PA82YR= 'Most recent year lost interest' 
   C1PANHED= 'Anhedonia (continuous)' 
   C1PANHDX= 'Anhedonia (binary)' 
   C1PDEPRE= 'Depressed Affect + Anhedonia (continuous)' 
   C1PDEPDX= 'Depressed Affect + Anhedonia (binary)' 
   C1PA83  = 'Worry more, less, about same as others' 
   C1PA83A = 'Worry a lot, somewhat, little more' 
   C1PA84  = 'Frequency of worrying (12 months)' 
   C1PA84A = 'How long worry lasts on days you worry' 
   C1PA85  = 'Worry about one thing or more than one' 
   C1PA85A = 'Different worries on mind at same time' 
   C1PA86  = 'Worry about things not likely to happen' 
   C1PA86A = 'Worry about things that are not serious' 
   C1PA87  = 'How often can''t put worry out of mind' 
   C1PA87A = 'How often difficult to control worry' 
   C1PA88A = 'Restless because of worry (12 months)' 
   C1PA88B = 'Keyed up/on edge/nervous energy (12 months)' 
   C1PA88C = 'Irritable because of worry (12 months)' 
   C1PA88D = 'Trouble falling asleep because of worry (12 months)' 
   C1PA88E = 'Trouble staying asleep because of worry (12 months)' 
   C1PA88F = 'Trouble concentrating because of worry (12 months)' 
   C1PA88G = 'Trouble remembering because of worry (12 months)' 
   C1PA88H = 'Low on energy because of worry (12 months)' 
   C1PA88I = 'Tire easily because of worry (12 months)' 
   C1PA88J = 'Sore/aching muscles because of worry (12 months)' 
   C1PA89  = 'How much worry interferes with your life' 
   C1PANXIE= 'Anxiety Disorder (continuous)' 
   C1PANXTD= 'Anxiety Disorder (binary)' 
   C1PA90  = 'Have spell/attack (12 months)' 
   C1PA90A = 'Spell/attack for no reason (12 months)' 
   C1PA91  = 'Number attacks (12 months)' 
   C1PA92  = 'Attack happen when danger or center attention' 
   C1PA92A = 'Heart pounds during attacks' 
   C1PA92B = 'Tight/pain in chest during attacks' 
   C1PA92C = 'Sweat during attacks' 
   C1PA92D = 'Tremble/shake during attacks' 
   C1PA92E = 'Hot flashes/chills during attacks' 
   C1PA92F = 'Things seem unreal during attacks' 
   C1PPANIC= 'Panic Attack (continuous)' 
   C1PPANDX= 'Panic Attack (binary)' 
   C1PB1   = 'Highest level of education completed' 
   C1PB2   = 'Age first worked for pay for 6 or more months' 
   C1PB2A1 = 'Employment 1/2008 - Working' 
   C1PB2A2 = 'Employment 1/2008 - Self-employed' 
   C1PB2A3 = 'Employment 1/2008 - Unemployed' 
   C1PB2A4 = 'Employment 1/2008 - Temporarily laid off' 
   C1PB2A5 = 'Employment 1/2008 - Retired' 
   C1PB2A6 = 'Employment 1/2008 - Homemaker' 
   C1PB2A7 = 'Employment 1/2008 - Full-time student' 
   C1PB2A8 = 'Employment 1/2008 - Part-time student' 
   C1PB2A9 = 'Employment 1/2008 - Maternity or sick leave' 
   C1PB2A10= 'Employment 1/2008 - Permanently disabled' 
   C1PB2A11= 'Employment 1/2008 - Other (specify)' 
   C1PB2AWK= 'Employment situation 1/2008' 
   C1PB2AA = 'Was looking for another job on 1/2008' 
   C1PB2B  = 'Unemployed since the recession began in 2008' 
   C1PB2BM = 'First time unemployed since 1/2008 - Month' 
   C1PB2BY = 'First time unemployed since 1/2008 - Year' 
   C1PB2BBA= 'C1PB2BBA: Reason for unemployment - Fired' 
   C1PB2BBB= 'C1PB2BBB: Reason for unemployment - Laid off' 
   C1PB2BBC= 'C1PB2BBC: Reason for unemployment - Plant/company closed' 
   C1PB2BBD= 'C1PB2BBD: Reason for unemployment - Quit' 
   C1PB2BBE= 'C1PB2BBE: Reason for unemployment - Retired' 
   C1PB2BBF= 'C1PB2BBF: Reason for unemployment - Work force reduction (volunteered)' 
   C1PB2BBG= 'C1PB2BBG: Reason for unemployment - Other (specify)' 
   C1PB2BCN= 'Length of unemployment before 1/2008 - Measure of time' 
   C1PB2BCU= 'Length of unemployment before 1/2008 - Units of time' 
   C1PB2BDN= 'Length of unemployment after 1/2008 - Measure of time' 
   C1PB2BDU= 'Length of unemployment after 1/2008 - Units of time' 
   C1PB2CA = 'More or less earnings compared to prior work' 
   C1PB2CB = 'Percentage difference in earnings' 
   C1PB2CB10= 'Percentage difference in earnings - More than 10%' 
   C1PB2CB25= 'Percentage difference in earnings - More than 25%' 
   C1PB2C2 = 'Number times unemployed since 1/2008' 
   C1PB2DN = 'Length of unemployment in total - Measure of time' 
   C1PB2DU = 'Length of unemployment in total - Units of time' 
   C1PB3A  = 'Current employment - Working' 
   C1PB3B  = 'Current employment - Self-employed' 
   C1PB3C  = 'Current employment - Unemployed' 
   C1PB3D  = 'Current employment - Temporarily laid off' 
   C1PB3E  = 'Current employment - Retired' 
   C1PB3F  = 'Current employment - Homemaker' 
   C1PB3G  = 'Current employment - Full-time student' 
   C1PB3H  = 'Current employment - Part-time student' 
   C1PB3I  = 'Current employment - Maternity or sick leave' 
   C1PB3J  = 'Current employment - Permanently disabled' 
   C1PB3K  = 'Current employment - Other (specify)' 
   C1PB3WK = 'Current employment situation' 
   C1PB4N  = 'Length of unemployment (number)' 
   C1PB4U  = 'Length of unemployment (day, week, month, year)' 
   C1PB5A  = 'C1PB5A: Reason for unemployment - Fired' 
   C1PB5B  = 'C1PB5B: Reason for unemployment - Laid off' 
   C1PB5C  = 'C1PB5C: Reason for unemployment - Plant/company closed' 
   C1PB5D  = 'C1PB5D: Reason for unemployment - Quit' 
   C1PB5E  = 'C1PB5E: Reason for unemployment - Retired' 
   C1PB5F  = 'C1PB5F: Reason for unemployment - Work force reduction (volunteered)' 
   C1PB5G  = 'C1PB5G: Reason for unemployment - Other (specify)' 
   C1PB5   = 'Reason for unemployment' 
   C1PB5AB = 'Currently looking for another job' 
   C1PB6   = 'Working for pay at the present time' 
   C1PB7   = 'Supervises others (current job)' 
   C1PB7A  = 'Number people supervised (current job)' 
   C1PB8A  = 'Type of employment - Government/private/self-employed/family business (current job)' 
   C1PB8A1 = 'C1PB8A1: Business incorporated (current job)' 
   C1PB8C  = 'C1PB8C: Manufacturing/wholesale/retail/something else (current job)' 
   C1POCC  = 'Respondent current occupation' 
   C1PIND  = 'Respondent current industry' 
   C1POCMAJ= 'R''s current occupation - major groups' 
   C1PINDMJ= 'R''s current industry - major groups' 
   C1PB12  = 'Hours work for pay at main job' 
   C1PB12A = 'Hours work at other jobs' 
   C1PB13  = 'Number nights away due to job (12 months)' 
   C1PB14  = 'Supervise others (last job)' 
   C1PB14A = 'Number people supervised (last job)' 
   C1PB15A = 'Type of employment - Government/private/self-employed/family business (last job)' 
   C1PB15A1= 'Business incorporated (last job)' 
   C1PB15C = 'Manufacturing/wholesale/retail/something else (last job)' 
   C1POCCP = 'Respodent last occupation' 
   C1PINDP = 'Respondent last industry' 
   C1POCPMJ= 'R''s previous occupation - major groups' 
   C1PPINMJ= 'R''s previous industry - major groups' 
   C1PB16  = 'Pre-tax income last calendar year' 
   C1PB16A25= 'Pre-tax income - More than $25,000' 
   C1PB16A50= 'Pre-tax income - More than $50,000' 
   C1PB16A80= 'Pre-tax income - More than $80,000' 
   C1PB16A35= 'Pre-tax income - More than $35,000' 
   C1PB16A12= 'Pre-tax income - More than $12,000' 
   C1PB16A18= 'Pre-tax income - More than $18,000' 
   C1PB16A5= 'Pre-tax income - More than $5,000' 
   C1PB17A = 'Pre-tax income compared to 2007' 
   C1PB17B = 'Percentage difference in pre-tax income' 
   C1PB17B10= 'Percentage difference in pre-tax income - More than 10%' 
   C1PB17B25= 'Percentage difference in pre-tax income - More than 25%' 
   C1PB17B5= 'Percentage difference in pre-tax income - More than 5%' 
   C1PB19  = 'Marital status currently' 
   C1PB20  = 'Number times married altogether' 
   C1PB21M = 'Month married (first marriage)' 
   C1PB21Y = 'Year married (first marriage)' 
   C1PB22  = 'End in widow or divorce (first marriage)' 
   C1PB23M = 'Month spouse died (first marriage)' 
   C1PB23Y = 'Year spouse died (first marriage)' 
   C1PB24M = 'Month last live with spouse (first marriage)' 
   C1PB24Y = 'Year last live with spouse (first marriage)' 
   C1PB25M = 'Month divorce final (first marriage)' 
   C1PB25Y = 'Year divorce final (first marriage)' 
   C1PB26M = 'Month married (recent marriage)' 
   C1PB26Y = 'Year married (recent marriage)' 
   C1PB27M = 'Month last live with spouse (recent marriage)' 
   C1PB27Y = 'Year last live with spouse (recent marriage)' 
   C1PB28M = 'Month divorce final (recent marriage)' 
   C1PB28Y = 'Year divorce final (recent marriage)' 
   C1PB29M = 'Month spouse died (recent marriage)' 
   C1PB29Y = 'Year spouse died (recent marriage)' 
   C1PB30  = 'Cohabitation with partner currently' 
   C1PB31N = 'Length of cohabitation (number)' 
   C1PB31M = 'Length of cohabitation (day, week, month, year)' 
   C1PPARTN= 'Married or Cohabitating' 
   C1PB32A = 'Sex of spouse/partner' 
   C1PB32Y = 'Year spouse/partner born' 
   C1PSAGE = 'Age of spouse/partner' 
   C1PB33  = 'Spouse/partner highest level of education completed' 
   C1PB33AA= 'Spouse/partner employment 1/2008 - Working' 
   C1PB33AB= 'Spouse/partner employment 1/2008 - Self-employed' 
   C1PB33AC= 'Spouse/partner employment 1/2008 - Unemployed' 
   C1PB33AD= 'Spouse/partner employment 1/2008 - Temporarily laid off' 
   C1PB33AE= 'Spouse/partner employment 1/2008 - Retired' 
   C1PB33AF= 'Spouse/partner employment 1/2008 - Homemaker' 
   C1PB33AG= 'Spouse/partner employment 1/2008 - Full-time student' 
   C1PB33AH= 'Spouse/partner employment 1/2008 - Part-time student' 
   C1PB33AI= 'Spouse/partner employment 1/2008 - Maternity or sick leave' 
   C1PB33AJ= 'Spouse/partner employment 1/2008 - Permanently disabled' 
   C1PB33AK= 'Spouse/partner employment 1/2008 - Other (specify)' 
   C1PB33AWK= 'Spouse/partner employment situation 1/2008' 
   C1PB33A1= 'Spouse/partner looking for another job on 1/2008' 
   C1PB33B = 'Spouse/partner unemployed since 1/2008' 
   C1PB33BAM= 'Spouse/partner first time unemployed since 1/2008 - Month' 
   C1PB33BAY= 'Spouse/partner first time unemployed since 1/2008 - Year' 
   C1PB33BBA= 'C1PB33BBA: Spouse/partner reason for unemployment - Fired' 
   C1PB33BBB= 'C1PB33BBB: Spouse/partner reason for unemployment - Laid off' 
   C1PB33BBC= 'C1PB33BBC: Spouse/partner reason for unemployment - Plant/company closed' 
   C1PB33BBD= 'C1PB33BBD: Spouse/partner reason for unemployment - Quit' 
   C1PB33BBE= 'C1PB33BBE: Spouse/partner reason for unemployment - Retired' 
   C1PB33BBF= 'C1PB33BBF: Spouse/partner reason for unemployment - Work force reduction (volunteered)' 
   C1PB33BBG= 'C1PB33BBG: Spouse/partner reason for unemployment - Other (specify)' 
   C1PB33BCN= 'Spouse/partner length of unemployment before 1/2008 - Measure of time' 
   C1PB33BCU= 'Spouse/partner length of unemployment before 1/2008 - Units of time' 
   C1PB33BDN= 'Spouse/partner length of unemployment after 1/2008 - Measure of time' 
   C1PB33BDU= 'Spouse/partner length of unemployment after 1/2008 - Units of time' 
   C1PB33CA= 'Spouse/partner more or less earnings compared to prior work' 
   C1PB33CB= 'Spouse/partner percentage difference in earnings' 
   C1PB33CB10= 'Spouse/partner percentage difference in earnings - More than 10%' 
   C1PB33CB25= 'Spouse/partner percentage difference in earnings - More than 25%' 
   C1PB33C2= 'Spouse/partner number of times unemployed since 1/2008' 
   C1PB33DN= 'Spouse/partner length of unemployment in total since 1/2008 - Measure of time' 
   C1PB33DU= 'Spouse/partner length of unemployment in total since 1/2008 - Units of time' 
   C1PB34A = 'Spouse/partner current employment - Working' 
   C1PB34B = 'Spouse/partner current employment - Self-employed' 
   C1PB34C = 'Spouse/partner current employment - Unemployed' 
   C1PB34D = 'Spouse/partner current employment - Temporarily laid off' 
   C1PB34E = 'Spouse/partner current employment - Retired' 
   C1PB34F = 'Spouse/partner current employment - Homemaker' 
   C1PB34G = 'Spouse/partner current employment - Full-time student' 
   C1PB34H = 'Spouse/partner current employment - Part-time student' 
   C1PB34I = 'Spouse/partner current employment - Maternity or sick leave' 
   C1PB34J = 'Spouse/partner current employment - Permanently disabled' 
   C1PB34K = 'Spouse/partner current employment - Other (specify)' 
   C1PB34WK= 'Spouse/partner current employment status' 
   C1PB35N = 'Spouse/partner length of unemployment (number)' 
   C1PB35U = 'Spouse/partner length of unemployment (day, week, month, year)' 
   C1PB36A = 'C1PB36A: Spouse/partner reason for unemployment - Fired' 
   C1PB36B = 'C1PB36B: Spouse/partner reason for unemployment - Laid off' 
   C1PB36C = 'C1PB36C: Spouse/partner reason for unemployment - Plant/company closed' 
   C1PB36D = 'C1PB36D: Spouse/partner reason for unemployment - Quit' 
   C1PB36E = 'C1PB36E: Spouse/partner reason for unemployment - Retired' 
   C1PB36F = 'C1PB36F: Spouse/partner reason for unemployment - Work force reduction (volunteered)' 
   C1PB36G = 'C1PB36G: Spouse/partner reason for unemployment - Other (specify)' 
   C1PB36  = 'Spouse/partner reason for unemployment' 
   C1PB36A1= 'Spouse/partner currently looking for another job' 
   C1PB37  = 'C1PB37: Spouse/partner currently working for pay' 
   C1PB38  = 'Spouse/partner supervises others on main job' 
   C1PB39A = 'Spouse/partner type of employment - Government/private/self-employed/family business (current job)' 
   C1PB39A1= 'C1PB39A1: Business incorporated (current job)' 
   C1PB39C = 'C1PB39C: Manufacturing/wholesale/retail/something else (current job)' 
   C1POCCS = 'Spouse/Partner occupation' 
   C1PINDS = 'Spouse/Partner industry' 
   C1PSOCMJ= 'Spousal occupation - major groups' 
   C1PSINMJ= 'Spousal industry - major groups' 
   C1PB40  = 'Spouse/partner pre-tax income last calendar year' 
   C1PB40A25= 'Spouse/partner pre-tax income - More than $25,000' 
   C1PB40A50= 'Spouse/partner pre-tax income - More than $50,000' 
   C1PB40A80= 'Spouse/partner pre-tax income - More than $80,000' 
   C1PB40A35= 'Spouse/partner pre-tax income - More than $35,000' 
   C1PB40A12= 'Spouse/partner pre-tax income - More than $12,000' 
   C1PB40A18= 'Spouse/partner pre-tax income - More than $18,000' 
   C1PB40A5= 'Spouse/partner pre-tax income - More than $5,000' 
   C1PB41A = 'Spouse/partner pre-tax income compared to 2007' 
   C1PB41B = 'Spouse/partner percentage difference in pre-tax income' 
   C1PB41B10= 'Spouse/partner percentage difference in pre-tax income - More than 10%' 
   C1PB41B25= 'Spouse/partner percentage difference in pre-tax income - More than 25%' 
   C1PB41B5= 'Spouse/partner percentage difference in pre-tax income - More than 5%' 
   C1PC1   = 'Pregnant currently?' 
   C1PC2   = 'Number of living children' 
   C1PC2A  = 'Number of children have contact with monthly' 
   C1PC3   = 'Any children no longer living' 
   C1PC4   = 'Number of household members besides children or self' 
   C1PKHSIZ= 'Number of living children (C1PC2) + number of household members (C1PC4)' 
   C1PKIDHH= 'Number of respondent''s children living in household' 
   C1PHHSIZE= 'Total number of individuals living in household' 
   C1PC6   = 'Anyone else in household last 12 months not mentioned before' 
   C1PCHA1 = 'Age: Child/household member #1' 
   C1PCHX1 = 'Sex: Child/household member #1' 
   C1PCHR1 = 'Relation: Child/household member #1' 
   C1PCMB1 = 'Month of birth or adoption: Child/household member #1' 
   C1PCYB1 = 'Year of birth or adoption: Child/household member #1' 
   C1PHHA1 = 'Age at adoption: Child #1' 
   C1PCHC1 = 'In respondent''s care at least 5 years: Foster or partner''s child #1' 
   C1PCHH1 = 'Lives in household: Child #1' 
   C1PCDD1 = 'Has disability/mental problem: Child #1' 
   C1PCDT1 = 'Condition disability/mental problem: Child #1' 
   C1PCDP1 = 'Depression long-term or single episode: Child #1' 
   C1PCDA1 = 'Age disability/mental problem began: Child #1' 
   C1PCDX1 = 'Professional diagnosis mental: Child #1' 
   C1PCXT1 = 'Type mental diagnosis: Child #1' 
   C1PCDO1 = 'Any other condition: Child #1' 
   C1PCHA2 = 'Age: Child/household member #2' 
   C1PCHX2 = 'Sex: Child/household member #2' 
   C1PCHR2 = 'Relation: Child/household member #2' 
   C1PCMB2 = 'Month of birth or adoption: Child/household member #2' 
   C1PCYB2 = 'Year of birth or adoption: Child/household member #2' 
   C1PHHA2 = 'Age at adoption: Child #2' 
   C1PCHC2 = 'In respondent''s care at least 5 years: Foster or partner''s child #2' 
   C1PCHH2 = 'Lives in household: Child #2' 
   C1PCDD2 = 'Has disability/mental problem: Child #2' 
   C1PCDT2 = 'Condition disability/mental problem: Child #2' 
   C1PCDP2 = 'Depression long-term or single episode: Child #2' 
   C1PCDA2 = 'Age disability/mental problem began: Child #2' 
   C1PCDX2 = 'Professional diagnosis mental: Child #2' 
   C1PCXT2 = 'Type mental diagnosis: Child #2' 
   C1PCDO2 = 'Any other condition: Child #2' 
   C1PCHA3 = 'Age: Child/household member #3' 
   C1PCHX3 = 'Sex: Child/household member #3' 
   C1PCHR3 = 'Relation: Child/household member #3' 
   C1PCMB3 = 'Month of birth or adoption: Child/household member #3' 
   C1PCYB3 = 'Year of birth or adoption: Child/household member #3' 
   C1PHHA3 = 'Age at adoption: Child #3' 
   C1PCHC3 = 'In respondent''s care at least 5 years: Foster or partner''s child #3' 
   C1PCHH3 = 'Lives in household: Child #3' 
   C1PCDD3 = 'Has disability/mental problem: Child #3' 
   C1PCDT3 = 'Condition disability/mental problem: Child #3' 
   C1PCDP3 = 'Depression long-term or single episode: Child #3' 
   C1PCDA3 = 'Age disability/mental problem began: Child #3' 
   C1PCDX3 = 'Professional diagnosis mental: Child #3' 
   C1PCXT3 = 'Type mental diagnosis: Child #3' 
   C1PCDO3 = 'Any other condition: Child #3' 
   C1PCHA4 = 'Age: Child/household member #4' 
   C1PCHX4 = 'Sex: Child/household member #4' 
   C1PCHR4 = 'Relation: Child/household member #4' 
   C1PCMB4 = 'Month of birth or adoption: Child/household member #4' 
   C1PCYB4 = 'Year of birth or adoption: Child/household member #4' 
   C1PHHA4 = 'Age at adoption: Child #4' 
   C1PCHC4 = 'In respondent''s care at least 5 years: Foster or partner''s child #4' 
   C1PCHH4 = 'Lives in household: Child #4' 
   C1PCDD4 = 'Has disability/mental problem: Child #4' 
   C1PCDT4 = 'Condition disability/mental problem: Child #4' 
   C1PCDP4 = 'Depression long-term or single episode: Child #4' 
   C1PCDA4 = 'Age disability/mental problem began: Child #4' 
   C1PCDX4 = 'Professional diagnosis mental: Child #4' 
   C1PCXT4 = 'Type mental diagnosis: Child #4' 
   C1PCDO4 = 'Any other condition: Child #4' 
   C1PCHA5 = 'Age: Child/household member #5' 
   C1PCHX5 = 'Sex: Child/household member #5' 
   C1PCHR5 = 'Relation: Child/household member #5' 
   C1PCMB5 = 'Month of birth or adoption: Child/household member #5' 
   C1PCYB5 = 'Year of birth or adoption: Child/household member #5' 
   C1PHHA5 = 'Age at adoption: Child #5' 
   C1PCHC5 = 'In respondent''s care at least 5 years: Foster or partner''s child #5' 
   C1PCHH5 = 'Lives in household: Child #5' 
   C1PCDD5 = 'Has disability/mental problem: Child #5' 
   C1PCDT5 = 'Condition disability/mental problem: Child #5' 
   C1PCDP5 = 'Depression long-term or single episode: Child #5' 
   C1PCDA5 = 'Age disability/mental problem began: Child #5' 
   C1PCDX5 = 'Professional diagnosis mental: Child #5' 
   C1PCDO5 = 'Any other condition: Child #5' 
   C1PCHA6 = 'Age: Child/household member #6' 
   C1PCHX6 = 'Sex: Child/household member #6' 
   C1PCHR6 = 'Relation: Child/household member #6' 
   C1PCMB6 = 'Month of birth or adoption: Child/household member #6' 
   C1PCYB6 = 'Year of birth or adoption: Child/household member #6' 
   C1PHHA6 = 'Age at adoption: Child #6' 
   C1PCHC6 = 'In respondent''s care at least 5 years: Foster or partner''s child #6' 
   C1PCHH6 = 'Lives in household: Child #6' 
   C1PCDD6 = 'Has disability/mental problem: Child #6' 
   C1PCDT6 = 'Condition disability/mental problem: Child #6' 
   C1PCDA6 = 'Age disability/mental problem began: Child #6' 
   C1PCDX6 = 'Professional diagnosis mental: Child #6' 
   C1PCDO6 = 'Any other condition: Child #6' 
   C1PCHA7 = 'Age: Child/household member #7' 
   C1PCHX7 = 'Sex: Child/household member #7' 
   C1PCHR7 = 'Relation: Child/household member #7' 
   C1PCMB7 = 'Month of birth or adoption: Child/household member #7' 
   C1PCYB7 = 'Year of birth or adoption: Child/household member #7' 
   C1PHHA7 = 'Age at adoption: Child #7' 
   C1PCHC7 = 'In respondent''s care at least 5 years: Foster or partner''s child #7' 
   C1PCHH7 = 'Lives in household: Child #7' 
   C1PCDD7 = 'Has disability/mental problem: Child #7' 
   C1PCDT7 = 'Condition disability/mental problem: Child #7' 
   C1PCDA7 = 'Age disability/mental problem began: Child #7' 
   C1PCDO7 = 'Any other condition: Child #7' 
   C1PCHA8 = 'Age: Child/household member #8' 
   C1PCHX8 = 'Sex: Child/household member #8' 
   C1PCHR8 = 'Relation: Child/household member #8' 
   C1PCMB8 = 'Month of birth or adoption: Child/household member #8' 
   C1PCYB8 = 'Year of birth or adoption: Child/household member #8' 
   C1PHHA8 = 'Age at adoption: Child #8' 
   C1PCHC8 = 'In respondent''s care at least 5 years: Foster or partner''s child #8' 
   C1PCHH8 = 'Lives in household: Child #8' 
   C1PCDD8 = 'Has disability/mental problem: Child #8' 
   C1PCDT8 = 'Condition disability/mental problem: Child #8' 
   C1PCDA8 = 'Age disability/mental problem began: Child #8' 
   C1PCDO8 = 'Any other condition: Child #8' 
   C1PCHA9 = 'Age: Child/household member #9' 
   C1PCHX9 = 'Sex: Child/household member #9' 
   C1PCHR9 = 'Relation: Child/household member #9' 
   C1PCMB9 = 'Month of birth or adoption: Child/household member #9' 
   C1PCYB9 = 'Year of birth or adoption: Child/household member #9' 
   C1PHHA9 = 'Age at adoption: Child #9' 
   C1PCHH9 = 'Lives in household: Child #9' 
   C1PCDD9 = 'Has disability/mental problem: Child #9' 
   C1PCDT9 = 'Condition disability/mental problem: Child #9' 
   C1PCDA9 = 'Age disability/mental problem began: Child #9' 
   C1PCDO9 = 'Any other condition: Child #9' 
   C1PCHA10= 'Age: Child/household member #10' 
   C1PCHX10= 'Sex: Child/household member #10' 
   C1PCHR10= 'Relation: Child/household member #10' 
   C1PCMB10= 'Month of birth or adoption: Child/household member #10' 
   C1PCYB10= 'Year of birth or adoption: Child/household member #10' 
   C1PCHH10= 'Lives in household: Child #10' 
   C1PCDD10= 'Has disability/mental problem: Child #10' 
   C1PCHA11= 'Age: Child/household member #11' 
   C1PCHX11= 'Sex: Child/household member #11' 
   C1PCHR11= 'Relation: Child/household member #11' 
   C1PCMB11= 'Month of birth or adoption: Child/household member #11' 
   C1PCYB11= 'Year of birth or adoption: Child/household member #11' 
   C1PCHH11= 'Lives in household: Child #11' 
   C1PCDD11= 'Has disability/mental problem: Child #11' 
   C1PCDT11= 'Condition disability/mental problem: Child #11' 
   C1PCDA11= 'Age disability/mental problem began: Child #11' 
   C1PCDO11= 'Any other condition: Child #11' 
   C1PCHA12= 'Age: Child/household member #12' 
   C1PCHX12= 'Sex: Child/household member #12' 
   C1PCHR12= 'Relation: Child/household member #12' 
   C1PCMB12= 'Month of birth or adoption: Child/household member #12' 
   C1PCYB12= 'Year of birth or adoption: Child/household member #12' 
   C1PCHH12= 'Lives in household: Child #12' 
   C1PCDD12= 'Has disability/mental problem: Child #12' 
   C1PCHA13= 'Age: Child/household member #13' 
   C1PCHX13= 'Sex: Child/household member #13' 
   C1PCHR13= 'Relation: Child/household member #13' 
   C1PCMB13= 'Month of birth or adoption: Child/household member #13' 
   C1PCYB13= 'Year of birth or adoption: Child/household member #13' 
   C1PCHH13= 'Lives in household: Child #13' 
   C1PCDD13= 'Has disability/mental problem: Child #13' 
   C1PCHA14= 'Age: Child/household member #14' 
   C1PCHX14= 'Sex: Child/household member #14' 
   C1PCHR14= 'Relation: Child/household member #14' 
   C1PCMB14= 'Month of birth or adoption: Child/household member #14' 
   C1PCYB14= 'Year of birth or adoption: Child/household member #14' 
   C1PCHH14= 'Lives in household: Child #14' 
   C1PCDD14= 'Has disability/mental problem: Child #14' 
   C1PCHA15= 'Age: Child/household member #15' 
   C1PCHX15= 'Sex: Child/household member #15' 
   C1PCHR15= 'Relation: Child/household member #15' 
   C1PCMB15= 'Month of birth or adoption: Child/household member #15' 
   C1PCYB15= 'Year of birth or adoption: Child/household member #15' 
   C1PCHH15= 'Lives in household: Child #15' 
   C1PCDD15= 'Has disability/mental problem: Child #15' 
   C1PCHA16= 'Age: Child/household member #16' 
   C1PCHX16= 'Sex: Child/household member #16' 
   C1PCHR16= 'Relation: Child/household member #16' 
   C1PCMB16= 'Month of birth or adoption: Child/household member #16' 
   C1PCYB16= 'Year of birth or adoption: Child/household member #16' 
   C1PCHH16= 'Lives in household: Child #16' 
   C1PCDD16= 'Has disability/mental problem: Child #16' 
   C1PCHA17= 'Age: Child/household member #17' 
   C1PCHX17= 'Sex: Child/household member #17' 
   C1PCHR17= 'Relation: Child/household member #17' 
   C1PCMB17= 'Month of birth or adoption: Child/household member #17' 
   C1PCYB17= 'Year of birth or adoption: Child/household member #17' 
   C1PCHH17= 'Lives in household: Child #17' 
   C1PCDD17= 'Has disability/mental problem: Child #17' 
   C1PCHA18= 'Age: Child/household member #18' 
   C1PCHX18= 'Sex: Child/household member #18' 
   C1PCHR18= 'Relation: Child/household member #18' 
   C1PCMB18= 'Month of birth or adoption: Child/household member #18' 
   C1PCYB18= 'Year of birth or adoption: Child/household member #18' 
   C1PCHH18= 'Lives in household: Child #18' 
   C1PCDD18= 'Has disability/mental problem: Child #18' 
   C1PCHA19= 'Age: Child/household member #19' 
   C1PCHX19= 'Sex: Child/household member #19' 
   C1PCHR19= 'Relation: Child/household member #19' 
   C1PCMB19= 'Month of birth or adoption: Child/household member #19' 
   C1PCYB19= 'Year of birth or adoption: Child/household member #19' 
   C1PCHH19= 'Lives in household: Child #19' 
   C1PCDD19= 'Has disability/mental problem: Child #19' 
   C1PCHA20= 'Age: Child/household member #20' 
   C1PCHX20= 'Sex: Child/household member #20' 
   C1PCHR20= 'Relation: Child/household member #20' 
   C1PCMB20= 'Month of birth or adoption: Child/household member #20' 
   C1PCYB20= 'Year of birth or adoption: Child/household member #20' 
   C1PCHH20= 'Lives in household: Child #20' 
   C1PCDD20= 'Has disability/mental problem: Child #20' 
   C1PCHA21= 'Age: Child/household member #21' 
   C1PCHX21= 'Sex: Child/household member #21' 
   C1PCHR21= 'Relation: Child/household member #21' 
   C1PCMB21= 'Month of birth or adoption: Child/household member #21' 
   C1PCYB21= 'Year of birth or adoption: Child/household member #21' 
   C1PCHH21= 'Lives in household: Child #21' 
   C1PCDD21= 'Has disability/mental problem: Child #21' 
   C1PCHA22= 'Age: Child/household member #22' 
   C1PCHX22= 'Sex: Child/household member #22' 
   C1PCHR22= 'Relation: Child/household member #22' 
   C1PCMB22= 'Month of birth or adoption: Child/household member #22' 
   C1PCYB22= 'Year of birth or adoption: Child/household member #22' 
   C1PCHH22= 'Lives in household: Child #22' 
   C1PCDD22= 'Has disability/mental problem: Child #22' 
   C1PCHA23= 'Age: Child/household member #23' 
   C1PCHX23= 'Sex: Child/household member #23' 
   C1PCHR23= 'Relation: Child/household member #23' 
   C1PCHX24= 'Sex: Child/household member #24' 
   C1PCHR24= 'Relation: Child/household member #24' 
   C1PCHA25= 'Age: Child/household member #25' 
   C1PCHX25= 'Sex: Child/household member #25' 
   C1PCHR25= 'Relation: Child/household member #25' 
   C1PCHA26= 'Age: Child/household member #26' 
   C1PCHX26= 'Sex: Child/household member #26' 
   C1PCHR26= 'Relation: Child/household member #26' 
   C1PCHA27= 'Age: Child/household member #27' 
   C1PCHX27= 'Sex: Child/household member #27' 
   C1PCHR27= 'Relation: Child/household member #27' 
   C1PCHA28= 'Age: Child/household member #28' 
   C1PCHX28= 'Sex: Child/household member #28' 
   C1PCHR28= 'Relation: Child/household member #28' 
   C1PCHA29= 'Age: Child/household member #29' 
   C1PCHX29= 'Sex: Child/household member #29' 
   C1PCHR29= 'Relation: Child/household member #29' 
   C1PCHM1N= '# adult child (18+) at home [biological, step, adopted, and partner''s child]' 
   C1PCHM2N= '# adult child (18+) at home [all types including foster and other child]' 
   C1PCHM1X= 'Having adult child(ren) living at home [biological, step, adopted, and partner''s child]' 
   C1PCHM2X= 'Having adult child(ren) living at home [all types including foster and other child]' 
   C1PD1   = 'Given personal care to others (12 months)' 
   C1PD2   = 'To whom care given most' 
   C1PD3   = 'Sex of care recipient' 
   C1PD4   = 'Condition of care recipient' 
   C1PD5M  = 'Month started giving care' 
   C1PD5Y  = 'Year started giving care' 
   C1PD7   = 'Still giving care' 
   C1PD8A  = 'Stopped giving care reason 1' 
   C1PD8B  = 'Stopped giving care reason 2' 
   C1PD9   = 'Care recipient lives in household' 
   C1PD10  = 'Give care bathe/dress/eat/bathroom' 
   C1PD11  = 'Give care getting around inside/outside' 
   C1PD12  = 'Give care shop/cook/housework/laundry' 
   C1PD13  = 'Give care money/phone/medications' 
   C1PD14  = 'Number weeks given care (12 months)' 
   C1PD15  = 'Weekly hours given care (12 months)' 
   C1PD16  = 'Ever given care before' 
   C1PD17  = 'Ever given care before for 1 or more months' 
   C1PD18  = 'Number times given personal care in life' 
   C1PD19N = 'Total time given care (number)' 
   C1PD19M = 'Total time given care (years, months)' 
   C1PD20  = 'Grandparent' 
   C1PD21  = 'Given care to grandchildren' 
   C1PD22  = 'Number years responsible for grandchildren' 
   C1PE1   = 'Lived in institution ever' 
   C1PE1A1 = 'Lived in boarding school ever' 
   C1PE1A2 = 'Lived in college dorm ever' 
   C1PE1A3 = 'Lived in prison ever' 
   C1PE1A4 = 'Lived in hospital or nursing home ever' 
   C1PE1A5 = 'Lived in armed forces barracks ever' 
   C1PE1A6 = 'Lived in rooming house ever' 
   C1PE1A7 = 'Lived in other institution' 
   C1PE1BN = 'Total time lived in institution (number)' 
   C1PE1BM = 'Total time lived in institution (day, week, month, year)' 
   C1PE2   = 'Homeless since past interview' 
   C1PE2AN = 'Number of times homeless (number)' 
   C1PE2AM = 'Number of times homeless (day, week, month, year)' 
   C1PE3   = 'No phone since past interview' 
   C1PE3AN = 'No phone since past interview (number)' 
   C1PE3AM = 'No phone since past interview (day, week, month, year)' 
   C1PF1   = 'Spanish/Hispanic/Latino descent' 
   C1PF2A  = 'Ethnic group #1' 
   C1PF2B  = 'Ethnic group #2' 
   C1PF2C  = 'Ethnic group #3' 
   C1PF2_1 = 'F2 recode - American Indian/Native American' 
   C1PF2_3 = 'F2 recode - Canada' 
   C1PF2_4 = 'F2 recode - Costa Rica' 
   C1PF2_5 = 'F2 recode - Cuba' 
   C1PF2_6 = 'F2 recode - Dominican Republic' 
   C1PF2_7 = 'F2 recode - El Salvador' 
   C1PF2_9 = 'F2 recode - Haiti' 
   C1PF2_10= 'F2 recode - Honduras' 
   C1PF2_11= 'F2 recode - Jamaica' 
   C1PF2_12= 'F2 recode - Mexico' 
   C1PF2_13= 'F2 recode - Nicaragua' 
   C1PF2_14= 'F2 recode - Panama' 
   C1PF2_15= 'F2 recode - Puerto Rico' 
   C1PF2_17= 'F2 recode - Trinidad' 
   C1PF2_18= 'F2 recode - Central American/Caribbean' 
   C1PF2_22= 'F2 recode - Brazil' 
   C1PF2_24= 'F2 recode - Colombia' 
   C1PF2_30= 'F2 recode - Czech' 
   C1PF2_31= 'F2 recode - England' 
   C1PF2_32= 'F2 recode - France' 
   C1PF2_33= 'F2 recode - Germany' 
   C1PF2_34= 'F2 recode - Greece' 
   C1PF2_35= 'F2 recode - Hungary' 
   C1PF2_36= 'F2 recode - Ireland' 
   C1PF2_37= 'F2 recode - Italy' 
   C1PF2_38= 'F2 recode - Norway' 
   C1PF2_39= 'F2 recode - Poland' 
   C1PF2_40= 'F2 recode - Portugal' 
   C1PF2_41= 'F2 recode - USSR/Russia' 
   C1PF2_42= 'F2 recode - Scotland' 
   C1PF2_43= 'F2 recode - Spain' 
   C1PF2_44= 'F2 recode - Sweden' 
   C1PF2_45= 'F2 recode - Netherlands' 
   C1PF2_46= 'F2 recode - Yugoslavia' 
   C1PF2_47= 'F2 recode - East Europe' 
   C1PF2_48= 'F2 recode - West Europe' 
   C1PF2_50= 'F2 recode - China' 
   C1PF2_51= 'F2 recode - India' 
   C1PF2_52= 'F2 recode - Japan' 
   C1PF2_53= 'F2 recode - Korea' 
   C1PF2_54= 'F2 recode - Phillipines' 
   C1PF2_56= 'F2 recode - Taiwan' 
   C1PF2_57= 'F2 recode - Thailand' 
   C1PF2_58= 'F2 recode - Asia' 
   C1PF2_66= 'F2 recode - Africa' 
   C1PF2_69= 'F2 recode - Iraq' 
   C1PF2_70= 'F2 recode - Israel' 
   C1PF2_71= 'F2 recode - Lebanon' 
   C1PF2_74= 'F2 recode - Mideast' 
   C1PF2_96= 'F2 recode - Other (specify)' 
   C1PF3   = 'Ethnic group best describes background' 
   C1PF3_1 = 'F3 recode - Ethnic Group Best Describes Background' 
   C1PF4   = 'Closely identify with same ethnicity' 
   C1PF5   = 'Prefer to be with same ethnicity' 
   C1PF6   = 'Important to marry same ethnicity' 
   C1PF7A  = 'Racial origins #1' 
   C1PF7B  = 'Racial origins #2' 
   C1PF7C  = 'Racial origins #3' 
   C1PF7D  = 'Racial origins #4' 
   C1PF8A  = 'Racial background #1' 
   C1PF8B  = 'Racial background #2' 
   C1PF8C  = 'Racial background #3' 
   C1PF8A1 = 'Which best describes your race?' 
   C1PF9   = 'How closely identify with same race' 
   C1PF10  = 'How much prefer to be with same race' 
   C1PF11  = 'How important to marry same race' 
   C1PF12  = 'US citizen' 
   C1PF12A = 'How closely identify as an American' 
   C1PF12B = 'Citizenship country' 
   C1PG1   = 'Satisfied with life at present' 
   C1PG1A  = 'Satisfied with life before recession' 
   C1PG2   = 'Control over life in general at present' 
   C1PG3   = 'Satisfied with self at present' 
   C1PG4   = 'Rate contribution to others (whole life)' 
   C1PG5   = 'Disappointed by achievement (agree, disagree)' 
   C1PG5A  = 'Disappointed by achievement (agree/disagree level)' 
   C1PG6   = 'Outgoing describes you' 
   C1PG7   = 'Worrying describes you' 
   C1PG8   = 'Curious describes you' 
   C1PG9   = 'Optimistic describes you' 
   C1SA1   = 'Rate health current' 
   C1SA2   = 'Rate health 10 years ago' 
   C1SA3   = 'Rate health 10 years future' 
   C1SA4   = 'Rate control over health' 
   C1SA5   = 'Rate thought/effort put into health' 
   C1SSATIS= 'Life Satisfaction (5-item version)' 
   C1SSATIS2= 'Life Satisfaction (6-item version)' 
   C1SA6A  = 'Compare energy now to 5 years ago' 
   C1SA6B  = 'Compare fitness now to 5 years ago' 
   C1SA6C  = 'Compare physique/figure now to 5 years ago' 
   C1SA6D  = 'Compare weight now to 5 years ago' 
   C1SA6E  = 'Compare memory now to 5 years ago' 
   C1SA7A  = 'Compare overall health to others your age' 
   C1SA7B  = 'Compare memory to others your age' 
   C1SA7C  = 'Compare vision to others your age' 
   C1SA7D  = 'Compare hearing to others your age' 
   C1SA8A  = 'Keeping healthy depends on things I do' 
   C1SA8B  = 'Things I can do to reduce heart attack risk' 
   C1SA8C  = 'Things I can do to reduce cancer risk' 
   C1SA8D  = 'I work hard at trying to stay healthy' 
   C1SA8E  = 'Getting better is in doctor''s hands' 
   C1SA8F  = 'Difficult to get good medical care' 
   C1SHLOCS= 'Health Locus of Control - Self' 
   C1SHLOCO= 'Health Locus of Control - Others' 
   C1SA9A  = 'Often aware of various things in my body' 
   C1SA9B  = 'Sudden loud noises really bother me' 
   C1SA9C  = 'Hate to be too hot/too cold' 
   C1SA9D  = 'Quick to sense hunger contractions' 
   C1SA9E  = 'Low pain tolerance' 
   C1SAMPLI= 'Somatic Amplification' 
   C1SA10A = 'Headaches frequency (30 days)' 
   C1SA10B = 'Backaches frequency (30 days)' 
   C1SA10C = 'Sweat frequency (30 days)' 
   C1SA10D = 'Irritability frequency (30 days)' 
   C1SA10E = 'Hot flushes/flashes frequency (30 days)' 
   C1SA10F = 'Aches/joint stiffness frequency (30 days)' 
   C1SA10G = 'Falling/staying sleep frequency (30 days)' 
   C1SA10H = 'Leaking urine frequency (30 days)' 
   C1SA10I = 'Intercourse pain/discomfort frequency (30 days)' 
   C1SA10J = 'Extremities aches/pain frequency (30 days)' 
   C1SA11A = 'Asthma/bronchitis/emphysema ever (12 months)' 
   C1SA11B = 'Tuberculosis ever (12 months)' 
   C1SA11C = 'Other lung problems ever (12 months)' 
   C1SA11D = 'Joint/bone diseases ever (12 months)' 
   C1SA11E = 'Sciatica/lumbago/backache ever (12 months)' 
   C1SA11F = 'Skin trouble persistent ever (12 months)' 
   C1SA11G = 'Thyroid disease ever (12 months)' 
   C1SA11H = 'Hay fever ever (12 months)' 
   C1SA11I = 'Stomach trouble ever (12 months)' 
   C1SA11J = 'Urinary/bladder problem ever (12 months)' 
   C1SA11K = 'Constipated all/most ever (12 months)' 
   C1SA11L = 'Gall bladder trouble ever (12 months)' 
   C1SA11M = 'Foot trouble persistent ever (12 months)' 
   C1SA11N = 'Varicose veins ever (12 months)' 
   C1SA11O = 'AIDS/HIV ever (12 months)' 
   C1SA11P = 'Lupus/autoimmune disorder ever (12 months)' 
   C1SA11Q = 'Gum/mouth trouble persistent ever (12 months)' 
   C1SA11R = 'Teeth trouble persistent ever (12 months)' 
   C1SA11S = 'High blood pressure/hypertension ever (12 months)' 
   C1SA11T = 'Anxiety/depression ever (12 months)' 
   C1SA11U = 'Alcohol/drug problem ever (12 months)' 
   C1SA11V = 'Migraine headaches ever (12 months)' 
   C1SA11W = 'Chronic sleep problems ever (12 months)' 
   C1SA11X = 'Diabetes/high blood sugar ever (12 months)' 
   C1SA11Y = 'Neurological disorder ever (12 months)' 
   C1SA11Z = 'Stroke ever (12 months)' 
   C1SA11AA= 'Ulcer ever (12 months)' 
   C1SA11BB= 'Hernia ever (12 months)' 
   C1SA11CC= 'Piles/hemorrhoids ever (12 months)' 
   C1SA11DD= 'Swallowing problems ever (12 months)' 
   C1SA11EE= 'Itch ever (12 months)' 
   C1SA11FF= 'Dry/sore skin ever (12 months)' 
   C1SA11GG= 'Scaly skin ever (12 months)' 
   C1SA11HH= 'Hand rash ever (12 months)' 
   C1SA11II= 'Pimples/acne ever (12 months)' 
   C1SA11JJ= 'Face rash ever (12 months)' 
   C1SA11KK= 'Warts ever (12 months)' 
   C1SA11LL= 'Sweating ever (12 months)' 
   C1SA11MM= 'Hair loss ever (12 months)' 
   C1SA11NN= 'None ever (12 months)' 
   C1SCHROX= 'Having Any Chronic Conditions (12 months)' 
   C1SCHRON= 'Number Chronic Conditions (12 months)' 
   C1SA12A = 'RX hypertension frequency (30 days)' 
   C1SA12B = 'RX diabetes frequency (30 days)' 
   C1SA12C = 'RX cholesterol frequency (30 days)' 
   C1SA12D = 'RX heart condition frequency (30 days)' 
   C1SA12E = 'RX lung problems frequency (30 days)' 
   C1SA12F = 'RX ulcer frequency (30 days)' 
   C1SA12G = 'RX arthritis frequency (30 days)' 
   C1SA12H = 'RX hormone therapy frequency (30 days)' 
   C1SA12I = 'RX birth control frequency (30 days)' 
   C1SA12J = 'RX headaches frequency (30 days)' 
   C1SA12K = 'RX anxiety/depression frequency (30 days)' 
   C1SA12L = 'RX pain frequency (30 days)' 
   C1SRXMEX= 'Took Any RX Medicine (30 days)' 
   C1SRXMED= 'Total Numbers RX Medicine Taking (30 days)' 
   C1SA13A = 'Taken aspirin frequency (30 days)' 
   C1SA13B = 'Taken acetaminophen frequency (30 days)' 
   C1SA13C = 'Taken ibuprofen frequency (30 days)' 
   C1SA13D = 'Taken naproxen frequency (30 days)' 
   C1SA14A = 'Takes multi-vitamins regularly' 
   C1SA14B = 'Takes vitamin C regularly' 
   C1SA14C = 'Takes iron regularly' 
   C1SA14D = 'Takes calcium regularly' 
   C1SA14E = 'Takes St John''s regularly' 
   C1SA14F = 'Takes gingko biloba regularly' 
   C1SA14G = 'Takes echinacea regularly' 
   C1SA14H = 'Takes garlic regularly' 
   C1SA14I = 'Takes feverfew regularly' 
   C1SA14J = 'Takes ephedra/ma huang regularly' 
   C1SA14K = 'Takes saw palmetto regularly' 
   C1SA14L = 'Takes glucosamine/chondroitin regularly' 
   C1SA14M = 'Takes fish oil regularly' 
   C1SA14N = 'Takes flaxseed regularly' 
   C1SA14O = 'Takes other supplement regularly' 
   C1SA14P = 'Takes none regularly' 
   C1SSPLMX= 'Takes Any Supplements Regularly' 
   C1SSPLMN= 'Total Numbers of Supplements Taking' 
   C1SA15  = 'Has chronic pain/persists beyond normal' 
   C1SA16A = 'Pain interfered with activity (past week)' 
   C1SA16B = 'Pain interfered with mood (past week)' 
   C1SA16C = 'Pain interfered with relations (past week)' 
   C1SA16D = 'Pain interfered with sleep (past week)' 
   C1SA16E = 'Pain interfered with enjoyment (past week)' 
   C1SA17A = 'Head primary pain located' 
   C1SA17B = 'Neck primary pain located' 
   C1SA17C = 'Back primary pain located' 
   C1SA17D = 'Arms primary pain located' 
   C1SA17E = 'Legs primary pain located' 
   C1SA17F = 'Shoulders primary pain located' 
   C1SA17G = 'Hips primary pain located' 
   C1SA17H = 'Knees primary pain located' 
   C1SA17I = 'Other location primary pain located' 
   C1SA18  = 'Seen physician/professional about pain' 
   C1SA19  = 'Pain diagnosis by physician' 
   C1SA20A = 'Felt so sad nothing could cheer frequency (30 days)' 
   C1SA20B = 'Felt nervous frequency (30 days)' 
   C1SA20C = 'Felt restless frequency (30 days)' 
   C1SA20D = 'Felt hopeless frequency (30 days)' 
   C1SA20E = 'Felt everything was effort frequency (30 days)' 
   C1SA20F = 'Felt worthless frequency (30 days)' 
   C1SA20G = 'Felt lonely frequency (30 days)' 
   C1SA20H = 'Felt afraid frequency (30 days)' 
   C1SA20I = 'Felt jittery frequency (30 days)' 
   C1SA20J = 'Felt irritable frequency (30 days)' 
   C1SA20K = 'Felt ashamed frequency (30 days)' 
   C1SA20L = 'Felt upset frequency (30 days)' 
   C1SA20M = 'Felt angry frequency (30 days)' 
   C1SA20N = 'Felt frustrated frequency (30 days)' 
   C1SA21  = 'More or less than usual negative feelings (30 days)' 
   C1SNEGAF= 'Negative Affect (Parallel M1 items)' 
   C1SNEGPA= 'Negative Affect from PANAS (MIDUS2 new)' 
   C1SA22A = 'Felt cheerful frequency (30 days)' 
   C1SA22B = 'Felt good spirits frequency (30 days)' 
   C1SA22C = 'Felt extremely happy frequency (30 days)' 
   C1SA22D = 'Felt calm and peaceful frequency (30 days)' 
   C1SA22E = 'Felt satisfied frequency (30 days)' 
   C1SA22F = 'Felt full of life frequency (30 days)' 
   C1SA22G = 'Felt close to others frequency (30 days)' 
   C1SA22H = 'Felt belong frequency (30 days)' 
   C1SA22I = 'Felt enthusiastic frequency (30 days)' 
   C1SA22J = 'Felt attentive frequency (30 days)' 
   C1SA22K = 'Felt proud frequency (30 days)' 
   C1SA22L = 'Felt active frequency (30 days)' 
   C1SA22M = 'Felt confident frequency (30 days)' 
   C1SA23  = 'More or less than usual positive feelings (30 days)' 
   C1SPOSAF= 'Positive Affect (Parallel M1 items)' 
   C1SPOSPA= 'Positive Affect from PANAS (MIDUS2 new)' 
   C1SA24A = 'Health limits lifting/carrying groceries' 
   C1SA24B = 'Health limits bathing/dressing self' 
   C1SA24C = 'Health limits climb several flight stair' 
   C1SA24D = 'Health limits climb one flight of stairs' 
   C1SA24E = 'Health limits bending/kneeling/stooping' 
   C1SA24F = 'Health limits walking more than one mile' 
   C1SA24G = 'Health limits walking several blocks' 
   C1SA24H = 'Health limits walking one block' 
   C1SA24I = 'Health limits vigorous activity' 
   C1SA24J = 'Health limits moderate activity' 
   C1SBADL1= 'Basic Activity of Daily Living (2-item version)' 
   C1SBADL2= 'Basic Activity of Daily Living (3-item version)' 
   C1SIADL = 'Instrumental Activity of Daily Living' 
   C1SA25A = 'Short breath hurry ground/walk slight hill' 
   C1SA25B = 'Short breath walk with peer level ground' 
   C1SA25C = 'Short breath walk own pace level ground' 
   C1SA25D = 'Short breath washing/dressing' 
   C1SDYSPN= 'Progressive Levels of Dyspnea' 
   C1SA26A = 'Vigorous job activity frequency (summer)' 
   C1SA26B = 'Vigorous job activity frequency (winter)' 
   C1SA26C = 'Vigorous chores activity frequency (summer)' 
   C1SA26D = 'Vigorous chores activity frequency (winter)' 
   C1SA26E = 'Vigorous leisure activity frequency (summer)' 
   C1SA26F = 'Vigorous leisure activity frequency (winter)' 
   C1SA27A = 'Moderate job activity frequency (summer)' 
   C1SA27B = 'Moderate job activity frequency (winter)' 
   C1SA27C = 'Moderate chores activity frequency (summer)' 
   C1SA27D = 'Moderate chores activity frequency (winter)' 
   C1SA27E = 'Moderate leisure activity frequency (summer)' 
   C1SA27F = 'Moderate leisure activity frequency (winter)' 
   C1SA28A = 'Light job activity frequency (summer)' 
   C1SA28B = 'Light job activity frequency (winter)' 
   C1SA28C = 'Light chores activity frequency (summer)' 
   C1SA28D = 'Light chores activity frequency (winter)' 
   C1SA28E = 'Light leisure activity frequency (summer)' 
   C1SA28F = 'Light leisure activity frequency (winter)' 
   C1SA29A = 'Read books/magazines/news (frequency)' 
   C1SA29B = 'Do word games (frequency)' 
   C1SA29C = 'Play cards/other games (frequency)' 
   C1SA29D = 'Attend lectures/courses (frequency)' 
   C1SA29E = 'Writing (frequency)' 
   C1SA29F = 'Use computer (frequency)' 
   C1SA30A = 'Could learn friend''s zip code if forgot' 
   C1SA30B = 'Intellectual decline inevitable as age' 
   C1SA30C = 'Ask salesperson how much saved with discount' 
   C1SA30D = 'Older I get, harder it is to think clear' 
   C1SA30E = 'Long as exercise my mind, be on top' 
   C1SA30F = 'Mental acuity bound to decline' 
   C1SA30G = 'Understand instructions after explained' 
   C1SA30H = 'Don''t remember things as well as used to' 
   C1SA30I = 'Not much can do to keep memory from down' 
   C1SINTAG= 'Personality in Intellectual Aging Context' 
   C1SA31  = 'Waist around navel (inches)' 
   C1SA32  = 'Hips at widest point (inches)' 
   C1SWSTHI= 'Waist-to-Hip Ratio' 
   C1SA33A = 'Height (feet)' 
   C1SA33B = 'Height (inches)' 
   C1SA34  = 'Perception of weight (over, under, etc)' 
   C1SA35  = 'Weight current (pounds)' 
   C1SBMI  = 'Body Mass Index' 
   C1SA36  = 'Weight 1 year ago (pounds)' 
   C1SA37  = 'Weight 10 years ago (pounds)' 
   C1SA38  = 'Number times lost 10 pounds or more (10 years)' 
   C1SA39  = 'Lose 10 pounds or more (12 months)' 
   C1SA39AA= 'Lose 10 pounds because of health problem' 
   C1SA39AB= 'Lose 10 pounds by diet or exercise' 
   C1SA39AC= 'Lose 10 pounds by other reason' 
   C1SA40  = 'Anesthesia ever' 
   C1SA41  = 'Anesthesia most recent year' 
   C1SA42  = 'Number times hospitalized overnight (12 months)' 
   C1SA43  = 'Total number nights in hospital (12 months)' 
   C1SA44A = 'Private clinic usual healthcare place' 
   C1SA44B = 'HMO usual healthcare place' 
   C1SA44C = 'Public clinic usual healthcare place' 
   C1SA44D = 'Outpatient hospital usual healthcare place' 
   C1SA44E = 'Emergency room usual healthcare place' 
   C1SA44F = 'Urgent care usual healthcare place' 
   C1SA44G = 'Other place usual healthcare place' 
   C1SA44H = 'No usual healthcare place' 
   C1SA45  = 'Most often visited healthcare place' 
   C1SA46A = 'Family doctor seen for healthcare' 
   C1SA46B = 'Obstetrician/gynecologist seen for healthcare' 
   C1SA46C = 'Internist seen for healthcare' 
   C1SA46D = 'Chiropractor seen for healthcare' 
   C1SA46E = 'Physicians assistant/nurse practitioner seen for healthcare' 
   C1SA46F = 'Other professional seen for healthcare' 
   C1SA46G = 'Homeopathic seen for healthcare' 
   C1SA46H = 'No one in particular seen for healthcare' 
   C1SA47  = 'Most seen healthcare professional' 
   C1SA48  = 'Needed med care, couldn''t get it (12 months)' 
   C1SA49A = 'Number times physical routine exam (12 months)' 
   C1SA49B = 'Number times dental routine exam (12 months)' 
   C1SA49C = 'Number times optical routine exam (12 months)' 
   C1SA49D = 'Number times urgent care (12 months)' 
   C1SA49E = 'Number times scheduled treatment/surgery (12 months)' 
   C1SUSEMD= 'Number Times Seeing Medical Doctor (12 months)' 
   C1SA50A = 'Number times psychiatrist for mental health (12 months)' 
   C1SA50B = 'Number times general doctor for mental health (12 months)' 
   C1SA50C = 'Number times counselor for mental health (12 months)' 
   C1SA50D = 'Number times religious for mental health (12 months)' 
   C1SUSEMH= 'Number Times Saw Mental Health Professional (12 months)' 
   C1SA51A = 'Ever attended substance problems group' 
   C1SA51AY= 'First age substance problems group' 
   C1SA51AZ= 'Number times substance problems group' 
   C1SA51B = 'Ever attended emotional problems group' 
   C1SA51BY= 'First age attended emotional problems group' 
   C1SA51BZ= 'Number times attended emotional problems group' 
   C1SA51C = 'Ever attended eating problems group' 
   C1SA51CY= 'First age eating problems group' 
   C1SA51CZ= 'Number times eating problems group' 
   C1SA51D = 'Ever attended loss of loved one group' 
   C1SA51DY= 'First age attended loss of loved one group' 
   C1SA51DZ= 'Number times attended loss of loved one group' 
   C1SA51E = 'Ever attended life transitions group' 
   C1SA51EY= 'First age attended life transitions group' 
   C1SA51EZ= 'Number times attended life transitions group' 
   C1SA51F = 'Ever attended survivors group' 
   C1SA51FY= 'First age attended survivors group' 
   C1SA51FZ= 'Number times attended survivors group' 
   C1SA51G = 'Ever attended physical disabilities group' 
   C1SA51GY= 'First age attended physical disabilities group' 
   C1SA51GZ= 'Number times attended physical disabilities group' 
   C1SA51H = 'Ever attended parent support group' 
   C1SA51HY= 'First age attended parent support group' 
   C1SA51HZ= 'Number times attended parent support group' 
   C1SA51I = 'Ever attended family with illness group' 
   C1SA51IY= 'First age attended family with illness group' 
   C1SA51IZ= 'Number times attended family with illness group' 
   C1SA51J = 'Ever attended family with emotional/substance group' 
   C1SA51JY= 'First age attended family with emotional/substance group' 
   C1SA51JZ= 'Number times attended family with emotional/substance group' 
   C1SA51K = 'Ever attended other self-help/support group' 
   C1SA51KY= 'First age attend other self-help/support group' 
   C1SA51KZ= 'Number times attend other self-help/support group' 
   C1SA52A = 'Acupuncture frequency (12 months)' 
   C1SA52B = 'Biofeedback frequency (12 months)' 
   C1SA52C = 'Chiropractor frequency (12 months)' 
   C1SA52D = 'Energy healing frequency (12 months)' 
   C1SA52E = 'Physical/occupational therapy frequency (12 months)' 
   C1SA52F = 'Exercise/movement therapy frequency (12 months)' 
   C1SA52G = 'Herbal therapy frequency (12 months)' 
   C1SA52H = 'High dose mega-vitamins frequency (12 months)' 
   C1SA52I = 'Homeopathy frequency (12 months)' 
   C1SA52J = 'Hypnosis frequency (12 months)' 
   C1SA52K = 'Imagery techniques frequency (12 months)' 
   C1SA52L = 'Massage therapy frequency (12 months)' 
   C1SA52M = 'Prayer/other spiritual frequency (12 months)' 
   C1SA52N = 'Relaxation/mediation frequency (12 months)' 
   C1SA52O = 'Physician prescribed diet frequency (12 months)' 
   C1SA52P = 'Weight control diet frequency (12 months)' 
   C1SA52Q = 'Special diet frequency (12 months)' 
   C1SA52R = 'Spiritual healing by others frequency (12 months)' 
   C1SA52S = 'Other non-traditional therapy frequency (12 months)' 
   C1SA53A = 'Hours of sleep on workdays' 
   C1SA53B = 'Minutes of sleep on workdays' 
   C1SA54A = 'Hours of sleep on non-workdays' 
   C1SA54B = 'Minutes of sleep on non-workdays' 
   C1SA55A = 'Hours usually takes to fall asleep' 
   C1SA55B = 'Minutes usually takes to fall asleep' 
   C1SA56  = 'Number times nap for 5 minutes or more (per week)' 
   C1SA57A = 'Trouble fall asleep (frequency)' 
   C1SA57B = 'Wake up during the night (frequency)' 
   C1SA57C = 'Wake up too early (frequency)' 
   C1SA57D = 'Feel unrested during the day (frequency)' 
   C1SA58A = 'Used sedatives on own ever (12 months)' 
   C1SA58B = 'Used tranquilizers on own ever (12 months)' 
   C1SA58C = 'Used stimulants on own ever (12 months)' 
   C1SA58D = 'Used painkillers on own ever (12 months)' 
   C1SA58E = 'Used depress medications on own ever (12 months)' 
   C1SA58F = 'Used inhalants on own ever (12 months)' 
   C1SA58G = 'Used marijuana/hashish on own ever (12 months)' 
   C1SA58H = 'Used cocaine/crack on own ever (12 months)' 
   C1SA58I = 'Used LSD/other hallucinogens on own ever (12 months)' 
   C1SA58J = 'Used heroin on own ever (12 months)' 
   C1SA59  = 'Checked ''YES'' for any substances listed in A58' 
   C1SA60  = 'Number times substance more than intended (12 months)' 
   C1SA61  = 'Number times substance effects at work/etc (12 months)' 
   C1SA62A = 'Substance increased chance of hurt (12 months)' 
   C1SA62B = 'Emotional problems from substance (12 months)' 
   C1SA62C = 'Strong desire for substance (12 months)' 
   C1SA62D = 'A month or more a lot time using substance (12 months)' 
   C1SA62E = 'Needed more substance to get effect (12 months)' 
   C1SA63  = 'Ever drink alcohol (12 months)' 
   C1SA64A = 'Under effects of alcohol which increased chances of getting hurt (12 months)' 
   C1SA64B = 'Emotional problems from drinking (12 months)' 
   C1SA64C = 'Desire/urge from drinking (12 months)' 
   C1SA64D = 'A month or more much time drinking (12 months)' 
   C1SA64E = 'Had drink more to get effects (12 months)' 
   C1SALCOH= 'Alcohol Problem (12 months)' 
   C1SA65  = 'Number times alcohol more than intended (12 months)' 
   C1SA66  = 'Number times alcohol effects at work/etc (12 months)' 
   C1SB1   = 'Had menstrual period in last year' 
   C1SB2A  = 'Medication stopped menstrual period' 
   C1SB2B  = 'Pregnancy stopped menstrual period' 
   C1SB2C  = 'Severe weight loss stopped menstrual period' 
   C1SB2D  = 'Menopause stopped menstrual period' 
   C1SB2E  = 'Hysterectomy stopped menstrual period' 
   C1SB3   = 'Year of last menstrual period (irregular)' 
   C1SB4   = 'Had menstrual period last 3 months (regular)' 
   C1SB5A  = 'Month of last menstrual period (regular)' 
   C1SB5B  = 'Day of last menstrual period (regular)' 
   C1SB5C  = 'Year of last menstrual period (regular)' 
   C1SB6   = 'Number days between periods less predict now' 
   C1SB7   = 'Menstrual flow lighter, heavier, same' 
   C1SB8A1 = 'Birth control name and dosage' 
   C1SB8A2 = 'Taking birth control currently' 
   C1SB8A3 = 'Taken birth control in past' 
   C1SB8A4 = 'Number years taken birth control' 
   C1SB8B1 = 'Fertility drugs name and dosage' 
   C1SB8B2 = 'Taking fertility drugs currently' 
   C1SB8B3 = 'Taken fertility drugs in past' 
   C1SB8B4 = 'Number years taken fertility drugs' 
   C1SB8C1 = 'Other female hormones name and dosage' 
   C1SB8C2 = 'Taking other female hormones currently' 
   C1SB8C3 = 'Taken other female hormones in past' 
   C1SB8C4 = 'Number years taken other female hormones' 
   C1SB9   = 'Indicated taking other female hormones' 
   C1SB10  = 'Doctor who prescribed other female hormones' 
   C1SB11  = 'Gender of doctor prescribed other female hormones' 
   C1SB12A = 'Hot flashes reason for other female hormones' 
   C1SB12B = 'Vaginal dryness reason for other female hormones' 
   C1SB12C = 'Regulate periods reason for other female hormones' 
   C1SB12D = 'Prevent osteoporosis reason for other female hormones' 
   C1SB12E = 'Endometriosis reason for other female hormones' 
   C1SB12F = 'Ovary removed reason for other female hormones' 
   C1SB12G = 'Other reason for other female hormones' 
   C1SB13A = 'Month start taking other female hormones' 
   C1SB13B = 'Year start taking other female hormones' 
   C1SB14  = 'Have stopped taking other female hormones' 
   C1SB15A = 'Month stop taking other female hormones' 
   C1SB15B = 'Year stop taking other female hormones' 
   C1SB16A = 'No symptoms reason for stop other female hormones' 
   C1SB16B = 'Concern risks reason for stop other female hormones' 
   C1SB16C = 'Try else reason for stop other female hormones' 
   C1SB16D = 'Other reason for stop other female hormones' 
   C1SB17  = 'Discuss stopping other female hormones with doctor' 
   C1SB18  = 'Provider recommended stop other female hormones' 
   C1SB19  = 'Experiencing symptoms of menopause' 
   C1SB20A = 'Pain relievers for menopausal symptoms' 
   C1SB20B = 'Sleeping pills for menopausal symptoms' 
   C1SB20C = 'Cream/jellies for menopausal symptoms' 
   C1SB20D = 'Soy/flaxeed for menopausal symptoms' 
   C1SB20E = 'Plants for menopausal symptoms' 
   C1SB20F = 'Gingko biloba for menopausal symptoms' 
   C1SB20G = 'Other supplements for menopausal symptoms' 
   C1SB21  = 'Relief or regret menstrual periods stop' 
   C1SB22A = 'Worry about infertility as get older' 
   C1SB22B = 'Worry about less attractive as get older' 
   C1SB22C = 'Worry about illness as get older' 
   C1SC1   = 'Covered by healthcare insurance currently' 
   C1SC2A  = 'Reason - Can''t afford premium' 
   C1SC2B  = 'Reason - Lost job' 
   C1SC2C  = 'Reason - Spouse or parent lost job' 
   C1SC2D  = 'Reason - Divorced or separated' 
   C1SC2E  = 'Reason - Spouse or parent died' 
   C1SC2F  = 'Reason - Became ineligible' 
   C1SC2G  = 'Reason - Employer doesn''t/stopped offer' 
   C1SC2H  = 'Reason - Became part time' 
   C1SC2I  = 'Reason - Benefits ran out' 
   C1SC2J  = 'Reason - Insurance company refused' 
   C1SC2K  = 'Reason - Lost Medicaid or Medical Assistance eligibility' 
   C1SC2L  = 'Reason - Other' 
   C1SC2M  = 'Reason - Don''t know' 
   C1SC3A  = 'Respondent - Insurer directly provides health insurance' 
   C1SC3B  = 'Respondent - Employer provides health insurance' 
   C1SC3C  = 'Respondent - Spouse/partner''s employer provides health insurance' 
   C1SC3D  = 'Respondent - Union provides health insurance' 
   C1SC3E  = 'Respondent - Spouse/partner''s union provides health insurance' 
   C1SC3F  = 'Respondent - Medicare provides health insurance' 
   C1SC3G  = 'Respondent - Medicaid/other provide health insurance' 
   C1SC3H  = 'Respondent - Military provides health insurance' 
   C1SC4   = 'Respondent - Has dental health care insurance' 
   C1SC5   = 'Respondent - Any RX medications covered by health insurance' 
   C1SC6   = 'Respondent - Mental health visits covered by health insurance' 
   C1SC7A  = 'Employer health insurance available' 
   C1SC7B  = 'Spouse/partner''s employer health insurance available' 
   C1SC7C  = 'Union health insurance available' 
   C1SC7D  = 'Spouse/partner''s union health insurance available' 
   C1SC8A  = 'Medicare health insurance available' 
   C1SC8B  = 'Medicaid health insurance available' 
   C1SC8C  = 'Military health insurance available' 
   C1SC9   = 'Married/living with partner currently' 
   C1SC10A = 'Spouse/Partner - Insurer directly provides health insurance' 
   C1SC10B = 'Spouse/Partner - Respondent''s employer provides health insurance' 
   C1SC10C = 'Spouse/Partner - Spouse/partner''s own employer provides health insurance' 
   C1SC10D = 'Spouse/Partner - Respondent''s union provides health insurance' 
   C1SC10E = 'Spouse/Partner - Spouse/partner''s own union provides health insurance' 
   C1SC10F = 'Spouse/Partner - Medicare provides health insurance' 
   C1SC10G = 'Spouse/Partner - Medicaid/other provides health insurance' 
   C1SC10H = 'Spouse/Partner - Military provides health insurance' 
   C1SC11  = 'Spouse/Partner - Has dental health care insurance' 
   C1SC12  = 'Spouse/Partner - Any RX medications covered by health insurance' 
   C1SC13  = 'Spouse/Partner - Mental health visits covered by health insurance' 
   C1SD1   = 'Biological mother still alive' 
   C1SD2   = 'Age of biological mother' 
   C1SD2A  = 'Rate physical health of biological mother' 
   C1SD3   = 'Death of biological mother (year)' 
   C1SD3A  = 'Mother''s age at time of death' 
   C1SD4   = 'Biological father still alive' 
   C1SD5   = 'Age of biological father' 
   C1SD5A  = 'Rate physical health of biological father' 
   C1SD6   = 'Death of biological father (year)' 
   C1SD6A  = 'Father''s age at time of death' 
   C1SE1A  = 'Not afraid to voice opinions in opposition' 
   C1SE1B  = 'In charge of situation in which I live' 
   C1SE1C  = 'Not interested activities expand horizons' 
   C1SE1D  = 'Most see me as loving/affectionate' 
   C1SE1E  = 'Live life day by day, don''t think about future' 
   C1SE1F  = 'Pleased with how life turned out' 
   C1SE1G  = 'Decisions nor influenced by others doing' 
   C1SE1H  = 'Demands of everyday life often get me down' 
   C1SE1I  = 'Experience challenge how think important' 
   C1SE1J  = 'Maintaining close relationships difficult' 
   C1SE1K  = 'Have sense of direction/purpose in life' 
   C1SE1L  = 'Feel positive/confident about self' 
   C1SE1M  = 'Influenced by people with strong opinions' 
   C1SE1N  = 'Don''t fit in with people and community' 
   C1SE1O  = 'Haven''t improved as person over years' 
   C1SE1P  = 'Few close friends to share concerns with' 
   C1SE1Q  = 'No good sense of what try to accomplish' 
   C1SE1R  = 'Others gotten more out of life than I' 
   C1SE1S  = 'Confidence in my opinions even if contrary' 
   C1SE1T  = 'Good managing daily responsibilities' 
   C1SE1U  = 'Developed a lot as person over time' 
   C1SE1V  = 'Enjoy conversations with family/friends' 
   C1SE1W  = 'Daily activities seem trivial and unimportant' 
   C1SE1X  = 'Life most aspects of my personality' 
   C1SE1Y  = 'Difficult voice opinion on controversial' 
   C1SE1Z  = 'Overwhelmed by my responsibilities' 
   C1SE1AA = 'Life process of learning/changing/growth' 
   C1SE1BB = 'Others describe me as giving/share time' 
   C1SE1CC = 'Enjoy make plans for future and make real' 
   C1SE1DD = 'Disappointed about achievements in life' 
   C1SE1EE = 'Worry about what others think of me' 
   C1SE1FF = 'Difficult arranging life in satisfying way' 
   C1SE1GG = 'Gave up try making improvements long ago' 
   C1SE1HH = 'No experience warm and trusting relationships' 
   C1SE1II = 'Actively carry out plans I set for self' 
   C1SE1JJ = 'Self attitude not as positive as others' 
   C1SE1KK = 'Judge self by what I think is important' 
   C1SE1LL = 'Able to build lifestyle to my liking' 
   C1SE1MM = 'Don''t enjoy situations require change ways' 
   C1SE1NN = 'I can trust friends and they can trust me' 
   C1SE1OO = 'Some wander aimlessly, but not me' 
   C1SE1PP = 'Feel good when compare myself to friends' 
   C1SE1QQ = 'Done all there is to do in life' 
   C1SPWBA1= 'Autonomy (Psychological Well-Being 3-item)' 
   C1SPWBE1= 'Environmental Mastery (Psychological Well-Being 3-item)' 
   C1SPWBG1= 'Personal Growth (Psychological Well-Being 3-item)' 
   C1SPWBR1= 'Positive Relations with Others (Psychological Well-Being 3-item)' 
   C1SPWBU1= 'Purpose in Life (Psychological Well-Being 3-item)' 
   C1SPWBS1= 'Self-Acceptance (Psychological Well-Being 3-item)' 
   C1SPWBA2= 'Autonomy (Psychological Well-Being 7-item)' 
   C1SPWBE2= 'Environmental Mastery (Psychological Well-Being 7-item)' 
   C1SPWBG2= 'Personal Growth (Psychological Well-Being 7-item)' 
   C1SPWBR2= 'Positive Relations with Others (Psychological Well-Being 7-item)' 
   C1SPWBU2= 'Purpose in Life (Psychological Well-Being 7-item)' 
   C1SPWBS2= 'Self-Acceptance (Psychological Well-Being 7-item)' 
   C1SE2A  = 'Autonomy important for good life' 
   C1SE2B  = 'Good job important for good life' 
   C1SE2C  = 'Learning/growth important for good life' 
   C1SE2D  = 'Life''s pleasures important for good life' 
   C1SE2E  = 'Enough money important for good life' 
   C1SE2F  = 'Extra money important for good life' 
   C1SE2G  = 'Faith important for good life' 
   C1SE2H  = 'Giving to community important for good life' 
   C1SE2I  = 'Love/care for self important for good life' 
   C1SE2J  = 'Physical fitness important for good life' 
   C1SE2K  = 'Positive attitude important for good life' 
   C1SE2L  = 'Family relations important for good life' 
   C1SE2M  = 'Friend relations important for good life' 
   C1SE2N  = 'Relax/peace important for good life' 
   C1SE2O  = 'Absence of illness important for good life' 
   C1SE2P  = 'Sense of accomplish important for good life' 
   C1SE2Q  = 'Sense of purpose important for good life' 
   C1SE3   = 'Rank standing in community on ladder' 
   C1SE4A  = 'Little can do to change important things' 
   C1SE4B  = 'Helpless dealing with problems of life' 
   C1SE4C  = 'Do just about anything I set my mind to' 
   C1SE4D  = 'Others determine what I can and cannot do' 
   C1SE4E  = 'What happens in life is beyond my control' 
   C1SE4F  = 'When really want something, find way' 
   C1SE4G  = 'Many things interfere with what I want do' 
   C1SE4H  = 'Whether I get what want is in own hands' 
   C1SE4I  = 'Little control over things happen to me' 
   C1SE4J  = 'Really no way I can solve problems I have' 
   C1SE4K  = 'Feel pushed around in life' 
   C1SE4L  = 'Happens to me in future depends on me' 
   C1SMASTE= 'Personal Mastery' 
   C1SCONST= 'Perceived Constraints' 
   C1SCTRL = 'Sense of Control (Mastery + Constraints)' 
   C1SE4M  = 'No better/worse than others' 
   C1SE4N  = 'Take positive attitude toward self' 
   C1SE4O  = 'Feel no good at all at times' 
   C1SE4P  = 'Able to do things as well as most people' 
   C1SE4Q  = 'Wish have more respect for myself' 
   C1SE4R  = 'On the whole, I''m satisfied with myself' 
   C1SE4S  = 'Certainly feel useless at times' 
   C1SESTEE= 'Self-Esteem' 
   C1SE4T  = 'Act same way no matter who I''m with' 
   C1SE4U  = 'Enjoy being unique/different from others' 
   C1SE4V  = 'My happiness depends on happiness of others' 
   C1SE4W  = 'Relations more important than accomplish' 
   C1SE4X  = 'Able to care of self is primary concern' 
   C1SE4Y  = 'Important to listen to others'' opinions' 
   C1SINTER= 'Self-Construal - Interdependence' 
   C1SINDEP= 'Self-Construal - Independence' 
   C1SE5A  = 'Choose goals - Focus or keep options open' 
   C1SE5B  = 'Reach goals - Practice skill or opportunities' 
   C1SE5C  = 'Have no skill for goal - Seek or reconsider' 
   C1SE5D  = 'Difficult - Change circumstances or hang tough' 
   C1SE5E  = 'Approach physical health - Stay fit or don''t worry' 
   C1SE6A  = 'Outgoing describes you how well' 
   C1SE6B  = 'Helpful describes you how well' 
   C1SE6C  = 'Moody describes you how well' 
   C1SE6D  = 'Organized describes you how well' 
   C1SE6E  = 'Self-confident describes you how well' 
   C1SE6F  = 'Friendly describes you how well' 
   C1SE6G  = 'Warm describes you how well' 
   C1SE6H  = 'Worrying describes you how well' 
   C1SE6I  = 'Responsible describes you how well' 
   C1SE6J  = 'Forceful describes you how well' 
   C1SE6K  = 'Lively describes you how well' 
   C1SE6L  = 'Caring describes you how well' 
   C1SE6M  = 'Nervous describes you how well' 
   C1SE6N  = 'Creative describes you how well' 
   C1SE6O  = 'Assertive describes you how well' 
   C1SE6P  = 'Hardworking describes you how well' 
   C1SE6Q  = 'Imaginative describes you how well' 
   C1SE6R  = 'Softhearted describes you how well' 
   C1SE6S  = 'Calm describes you how well' 
   C1SE6T  = 'Outspoken describes you how well' 
   C1SE6U  = 'Intelligent describes you how well' 
   C1SE6V  = 'Curious describes you how well' 
   C1SE6W  = 'Active describes you how well' 
   C1SE6X  = 'Careless describes you how well' 
   C1SE6Y  = 'Broad minded describes you how well' 
   C1SE6Z  = 'Sympathetic describes you how well' 
   C1SE6AA = 'Talkative describes you how well' 
   C1SE6BB = 'Sophisticated describes you how well' 
   C1SE6CC = 'Adventurous describes you how well' 
   C1SE6DD = 'Dominant describes you how well' 
   C1SE6EE = 'Thorough describes you how well' 
   C1SAGENC= 'Agency Personality Trait' 
   C1SAGREE= 'Agreeableness Personality Trait' 
   C1SEXTRA= 'Extraversion Personality Trait' 
   C1SNEURO= 'Neuroticism Personality Trait' 
   C1SCONS1= 'Conscientiousness Personality Trait (Parallel M1 items)' 
   C1SCONS2= 'Conscientiousness Personality Trait (M1 items + 1 additional)' 
   C1SOPEN = 'Openness Personality Trait' 
   C1SE7A  = 'Like spend free time with friends, rather than alone' 
   C1SE7B  = 'Faced with decision, weigh possibilities' 
   C1SE7C  = 'Seek friend when unhappy, rather than alone' 
   C1SE7D  = 'Fun/exciting to be in an earthquake' 
   C1SE7E  = 'In social situation, like else to lead' 
   C1SE7F  = 'Like think things over before doing them' 
   C1SE7G  = 'People often try to take advantage of me' 
   C1SE7H  = 'I am a warm person, not cool/distant' 
   C1SE7I  = 'When angry I am ready to hit someone' 
   C1SE7J  = 'Effective talking people into things' 
   C1SE7K  = 'My mood often goes up and down' 
   C1SE7L  = 'Keep working on problems after others give up' 
   C1SE7M  = 'Opposed censor because against free speech' 
   C1SE7N  = 'I''m very good at influencing people' 
   C1SE7O  = 'I like to try difficult things' 
   C1SE7P  = 'More successful if people didn''t make difficulty' 
   C1SE7Q  = 'Usually find ways to liven up my day' 
   C1SE7R  = 'I like hard work' 
   C1SE7S  = 'People often say mean things about me' 
   C1SE7T  = 'Enjoy hurting by saying mean things' 
   C1SE7U  = 'People should obey moral law more strict' 
   C1SE7V  = 'Fun learning to walk tightrope' 
   C1SE7W  = 'Get upset/tense when think about day' 
   C1SE7X  = 'Minor setbacks irritate me too much' 
   C1SE7Y  = 'I am a cautious person' 
   C1SE7Z  = 'Don''t like religious authority overturned' 
   C1SE7AA = 'Life is a great adventure' 
   C1SE7BB = 'When people insult me, try to get even' 
   C1SE7CC = 'Often prefer not have others around me' 
   C1SE7DD = 'When make decisions, others turn to me' 
   C1SE7EE = 'Sometimes just like to hit someone' 
   C1SE7FF = 'Set very high standards for self in work' 
   C1SE7GG = 'Have something exciting to look forward' 
   C1SE8   = 'Dislike rapids or waiting more' 
   C1SE8A  = 'Level dislike rapids or waiting more' 
   C1SE9   = 'Dislike lions or not get into circus' 
   C1SE9A  = 'Level dislike lions or not get into circus' 
   C1SMPQWB= 'Well-Being (Multidimensional Personality)' 
   C1SMPQSP= 'Social Potency (Multidimensional Personality)' 
   C1SMPQAC= 'Achievement (Multidimensional Personality)' 
   C1SMPQSC= 'Social Closeness (Multidimensional Personality)' 
   C1SMPQSR= 'Reactivity (Multidimensional Personality)' 
   C1SMPQAG= 'Aggression (Multidimensional Personality)' 
   C1SMPQAL= 'Alienation (Multidimensional Personality)' 
   C1SMPQCN= 'Control (Multidimensional Personality)' 
   C1SMPQTR= 'Traditionalism (Multidimensional Personality)' 
   C1SMPQHA= 'Harm Avoidance (Multidimensional Personality)' 
   C1SE10A = 'In uncertain times, usually expect best' 
   C1SE10B = 'Something can go wrong for me, it will' 
   C1SE10C = 'Optimistic about my future' 
   C1SE10D = 'Hardly ever expect things to go my way' 
   C1SE10E = 'Rarely count on good things happen to me' 
   C1SE10F = 'Expect more good things happen than bad' 
   C1SOPTIM= 'LOT: Optimism' 
   C1SPESSI= 'LOT: Pessimism' 
   C1SORIEN= 'LOT Overall: Optimism + Pessimism' 
   C1SE11A = 'Ever repeated school year' 
   C1SE11A1= 'Respondent''s age/age range repeated school year' 
   C1SE11A3= 'Repeated school year effect (initial)' 
   C1SE11A4= 'Repeated school year effect (long-run)' 
   C1SE11A11= 'Respondent''s age repeated school year 1' 
   C1SE11A12= 'Respondent''s age repeated school year 2' 
   C1SE11AR1= 'Respondent''s age range repeated school year (from)' 
   C1SE11AR2= 'Respondent''s age range repeated school year (to)' 
   C1SE11B = 'Ever sent away from home' 
   C1SE11B1= 'Respondent''s age/age range sent away from home' 
   C1SE11B3= 'Sent away from home effect (initial)' 
   C1SE11B4= 'Sent away from home effect (long-run)' 
   C1SE11B11= 'Respondent''s age sent away from home 1' 
   C1SE11B12= 'Respondent''s age sent away from home 2' 
   C1SE11B13= 'Respondent''s age sent away from home 3' 
   C1SE11BR1= 'Respondent''s age range sent away from home (from)' 
   C1SE11BR2= 'Respondent''s age range sent away from home (to)' 
   C1SE11C = 'Ever had parent out of job' 
   C1SE11C1= 'Respondent''s age/age range had parent out of job' 
   C1SE11C3= 'Parent out of job effect (initial)' 
   C1SE11C4= 'Parent out of job effect (long-run)' 
   C1SE11C11= 'Respondent''s age had parent out of job 1' 
   C1SE11C12= 'Respondent''s age had parent out of job 2' 
   C1SE11C13= 'Respondent''s age had parent out of job 3' 
   C1SE11CR1= 'Respondent''s age range had parent out of job (from)' 
   C1SE11CR2= 'Respondent''s age range had parent out of job (to)' 
   C1SE11D = 'Ever parent drank caused problems' 
   C1SE11D1= 'Respondent''s age/age range parent drank caused problems' 
   C1SE11D3= 'Parent drank problems effect (initial)' 
   C1SE11D4= 'Parent drank problems effect (long-run)' 
   C1SE11D11= 'Respondent''s age parent drank caused problems 1' 
   C1SE11D12= 'Respondent''s age parent drank caused problems 2' 
   C1SE11D13= 'Respondent''s age parent drank caused problems 3' 
   C1SE11D14= 'Respondent''s age parent drank caused problems 4' 
   C1SE11D15= 'Respondent''s age parent drank caused problems 5' 
   C1SE11D16= 'Respondent''s age parent drank caused problems 6' 
   C1SE11DR1= 'Respondent''s age range parent drank caused problems (from)' 
   C1SE11DR2= 'Respondent''s age range parent drank caused problems (to)' 
   C1SE11E = 'Ever parent drugs caused problems' 
   C1SE11E1= 'Respondent''s age/age range parent drug caused problems' 
   C1SE11E3= 'Parent drug problems effect (initial)' 
   C1SE11E4= 'Parent drug problems effect (long-run)' 
   C1SE11ER1= 'Respondent''s age range parent drug caused problems (from)' 
   C1SE11ER2= 'Respondent''s age range parent drug caused problems (to)' 
   C1SE11F = 'Ever dropped out of school' 
   C1SE11F1= 'Respondent''s age/age range dropped out of school' 
   C1SE11F3= 'Dropped out of school effect (initial)' 
   C1SE11F4= 'Dropped out of school effect (long-run)' 
   C1SE11F11= 'Respondent''s age dropped out of school 1' 
   C1SE11F12= 'Respondent''s age dropped out of school 2' 
   C1SE11FR1= 'Respondent''s age range dropped out of school (from)' 
   C1SE11FR2= 'Respondent''s age range dropped out of school (to)' 
   C1SE11G = 'Ever suspended/expelled from school' 
   C1SE11G1= 'Respondent''s age/age range suspended/expelled from school' 
   C1SE11G3= 'Suspended/expelled effect (initial)' 
   C1SE11G4= 'Suspended/expelled effect (long-run)' 
   C1SE11G11= 'Respondent''s age suspended/expelled from school 1' 
   C1SE11G12= 'Respondent''s age suspended/expelled from school 2' 
   C1SE11G13= 'Respondent''s age suspended/expelled from school 3' 
   C1SE11G14= 'Respondent''s age suspended/expelled from school 4' 
   C1SE11GR1= 'Respondent''s age range suspended/expelled from school (from)' 
   C1SE11GR2= 'Respondent''s age range suspended/expelled from school (to)' 
   C1SE12A = 'Ever flunked out of school' 
   C1SE12A1= 'Respondent''s age/age range flunked out of school' 
   C1SE12A3= 'Flunked out of school effect (initial)' 
   C1SE12A4= 'Flunked out of school effect (long-run)' 
   C1SE12A11= 'Respondent''s age flunked out of school 1' 
   C1SE12A12= 'Respondent''s age flunked out of school 2' 
   C1SE12AR1= 'Respondent''s age range flunked out of school (from)' 
   C1SE12AR2= 'Respondent''s age range flunked out of school (to)' 
   C1SE12B = 'Ever fired from a job' 
   C1SE12B1= 'Respondent''s age/age range fired from a job' 
   C1SE12B3= 'Fired from a job effect (initial)' 
   C1SE12B4= 'Fired from a job effect (long-run)' 
   C1SE12B11= 'Respondent''s age fired from a job 1' 
   C1SE12B12= 'Respondent''s age fired from a job 2' 
   C1SE12B13= 'Respondent''s age fired from a job 3' 
   C1SE12B14= 'Respondent''s age fired from a job 4' 
   C1SE12B15= 'Respondent''s age fired from a job 5' 
   C1SE12B16= 'Respondent''s age fired from a job 6' 
   C1SE12BR1= 'Respondent''s age range fired from a job (from)' 
   C1SE12BR2= 'Respondent''s age range fired from a job (to)' 
   C1SE12C = 'Ever no job for long time' 
   C1SE12C1= 'Respondent''s age/age range no job for long time' 
   C1SE12C3= 'No job for long time effect (initial)' 
   C1SE12C4= 'No job for long time effect (long-run)' 
   C1SE12C11= 'Respondent''s age no job for long time 1' 
   C1SE12C12= 'Respondent''s age no job for long time 2' 
   C1SE12C13= 'Respondent''s age no job for long time 3' 
   C1SE12C14= 'Respondent''s age no job for long time 4' 
   C1SE12C15= 'Respondent''s age no job for long time 5' 
   C1SE12CR1= 'Respondent''s age range no job for long time (from)' 
   C1SE12CR2= 'Respondent''s age range no job for long time (to)' 
   C1SE12D = 'Ever parent died' 
   C1SE12D1= 'Respondent''s age/age range parent died' 
   C1SE12D3= 'Parent died effect (initial)' 
   C1SE12D4= 'Parent died effect (long-run)' 
   C1SE12D11= 'Respondent''s age parent died 1' 
   C1SE12D12= 'Respondent''s age parent died 2' 
   C1SE12D13= 'Respondent''s age parent died 3' 
   C1SE12DR1= 'Respondent''s age range parent died (from)' 
   C1SE12DR2= 'Respondent''s age range parent died (to)' 
   C1SE12E = 'Ever parents divorced' 
   C1SE12E1= 'Respondent''s age/age range parents divorced' 
   C1SE12E3= 'Parents divorced effect (initial)' 
   C1SE12E4= 'Parents divorced effect (long-run)' 
   C1SE12E11= 'Respondent''s age parents divorced 1' 
   C1SE12E12= 'Respondent''s age parents divorced 2' 
   C1SE12E13= 'Respondent''s age parents divorced 3' 
   C1SE12E14= 'Respondent''s age parents divorced 4' 
   C1SE12ER1= 'Respondent''s age range parents divorced (from)' 
   C1SE12ER2= 'Respondent''s age range parents divorced (to)' 
   C1SE12F = 'Ever spouse/partner engaged in infidelity' 
   C1SE12F1= 'Respondent''s age/age range spouse/partner engaged in infidelity' 
   C1SE12F3= 'Spouse/partner infidelity effect (initial)' 
   C1SE12F4= 'Spouse/partner infidelity effect (long-run)' 
   C1SE12F11= 'Respondent''s age spouse/partner engaged in infidelity 1' 
   C1SE12F12= 'Respondent''s age spouse/partner engaged in infidelity 2' 
   C1SE12F13= 'Respondent''s age spouse/partner engaged in infidelity 3' 
   C1SE12F14= 'Respondent''s age spouse/partner engaged in infidelity 4' 
   C1SE12FR1= 'Respondent''s age range spouse/partner engaged in infidelity (from)' 
   C1SE12FR2= 'Respondent''s age range spouse/partner engaged in infidelity (to)' 
   C1SE12G = 'Ever significant in-law difficulties' 
   C1SE12G1= 'Respondent''s age/age range significant in-law difficulties' 
   C1SE12G3= 'Significant in-law difficulties effect (initial)' 
   C1SE12G4= 'Significant in-law difficulties effect (long-run)' 
   C1SE12G11= 'Respondent''s age significant in-law difficulties 1' 
   C1SE12G12= 'Respondent''s age significant in-law difficulties 2' 
   C1SE12GR1= 'Respondent''s age range significant in-law difficulties (from)' 
   C1SE12GR2= 'Respondent''s age range significant in-law difficulties (to)' 
   C1SE12H = 'Ever sibling died' 
   C1SE12H1= 'Respondent''s age/age range sibling died' 
   C1SE12H3= 'Sibling died effect (initial)' 
   C1SE12H4= 'Sibling died effect (long-run)' 
   C1SE12H11= 'Respondent''s age sibling died 1' 
   C1SE12H12= 'Respondent''s age sibling died 2' 
   C1SE12H13= 'Respondent''s age sibling died 3' 
   C1SE12H14= 'Respondent''s age sibling died 4' 
   C1SE12H15= 'Respondent''s age sibling died 5' 
   C1SE12H16= 'Respondent''s age sibling died 6' 
   C1SE12HR1= 'Respondent''s age range sibling died (from)' 
   C1SE12HR2= 'Respondent''s age range sibling died (to)' 
   C1SE12I = 'Ever child died' 
   C1SE12I1= 'Respondent''s age/age range child died' 
   C1SE12I3= 'Child died effect (initial)' 
   C1SE12I4= 'Child died effect (long-run)' 
   C1SE12I11= 'Respondent''s age child died 1' 
   C1SE12I12= 'Respondent''s age child died 2' 
   C1SE12I13= 'Respondent''s age child died 3' 
   C1SE12I14= 'Respondent''s age child died 4' 
   C1SE12I15= 'Respondent''s age child died 5' 
   C1SE12J = 'Ever child experienced life-threatening' 
   C1SE12J1= 'Respondent''s age/age range child experienced life-threatening' 
   C1SE12J3= 'Child life-threatening effect (initial)' 
   C1SE12J4= 'Child life-threatening effect (long-run)' 
   C1SE12J11= 'Respondent''s age child experienced life-threatening 1' 
   C1SE12J12= 'Respondent''s age child experienced life-threatening 2' 
   C1SE12J13= 'Respondent''s age child experienced life-threatening 3' 
   C1SE12J14= 'Respondent''s age child experienced life-threatening 4' 
   C1SE12J15= 'Respondent''s age child experienced life-threatening 5' 
   C1SE12JR1= 'Respondent''s age range child experienced life-threatening (from)' 
   C1SE12JR2= 'Respondent''s age range child experienced life-threatening (to)' 
   C1SE12K = 'Ever lost home to fire/flood/etc' 
   C1SE12K1= 'Respondent''s age/age range lost home to fire/flood/etc' 
   C1SE12K3= 'Lost home fire/flood/etc effect (initial)' 
   C1SE12K4= 'Lost home fire/flood/etc effect (long-run)' 
   C1SE12K11= 'Respondent''s age lost home to fire/flood/etc 1' 
   C1SE12K12= 'Respondent''s age lost home to fire/flood/etc 2' 
   C1SE12L = 'Ever physically assaulted' 
   C1SE12L1= 'Respondent''s age/age range physically assaulted' 
   C1SE12L3= 'Physically assaulted effect (initial)' 
   C1SE12L4= 'Physically assaulted effect (long-run)' 
   C1SE12L11= 'Respondent''s age physically assaulted 1' 
   C1SE12L12= 'Respondent''s age physically assaulted 2' 
   C1SE12L13= 'Respondent''s age physically assaulted 3' 
   C1SE12L14= 'Respondent''s age physically assaulted 4' 
   C1SE12L15= 'Respondent''s age physically assaulted 5' 
   C1SE12L16= 'Respondent''s age physically assaulted 6' 
   C1SE12LR1= 'Respondent''s age range physically assaulted (from)' 
   C1SE12LR2= 'Respondent''s age range physically assaulted (to)' 
   C1SE12M = 'Ever sexually assaulted' 
   C1SE12M1= 'Respondent''s age/age range sexually assaulted' 
   C1SE12M3= 'Sexually assaulted effect (initial)' 
   C1SE12M4= 'Sexually assaulted effect (long-run)' 
   C1SE12M11= 'Respondent''s age sexually assaulted 1' 
   C1SE12M12= 'Respondent''s age sexually assaulted 2' 
   C1SE12M13= 'Respondent''s age sexually assaulted 3' 
   C1SE12M14= 'Respondent''s age sexually assaulted 4' 
   C1SE12M15= 'Respondent''s age sexually assaulted 5' 
   C1SE12MR1= 'Respondent''s age range sexually assaulted (from)' 
   C1SE12MR2= 'Respondent''s age range sexually assaulted (to)' 
   C1SE12N = 'Ever serious legal difficulties/prison' 
   C1SE12N1= 'Respondent''s age/age range serious legal difficulties/prison' 
   C1SE12N3= 'Legal difficulties/prison effect (initial)' 
   C1SE12N4= 'Legal difficulties/prison effect (long-run)' 
   C1SE12N11= 'Respondent''s age serious legal difficulties/prison 1' 
   C1SE12N12= 'Respondent''s age serious legal difficulties/prison 2' 
   C1SE12NR1= 'Respondent''s age range serious legal difficulties/prison (from)' 
   C1SE12NR2= 'Respondent''s age range serious legal difficulties/prison (to)' 
   C1SE12O = 'Ever jail detention' 
   C1SE12O1= 'Respondent''s age/age range jail detention' 
   C1SE12O3= 'Jail detention effect (initial)' 
   C1SE12O4= 'Jail detention effect (long-run)' 
   C1SE12O11= 'Respondent''s age jail detention 1' 
   C1SE12O12= 'Respondent''s age jail detention 2' 
   C1SE12O13= 'Respondent''s age jail detention 3' 
   C1SE12O14= 'Respondent''s age jail detention 4' 
   C1SE12OR1= 'Respondent''s age range jail detention (from)' 
   C1SE12OR2= 'Respondent''s age range jail detention (to)' 
   C1SE12P = 'Ever bankruptcy declared' 
   C1SE12P1= 'Respondent''s age/age range bankruptcy declared' 
   C1SE12P3= 'Bankruptcy declared effect (initial)' 
   C1SE12P4= 'Bankruptcy declared effect (long-run)' 
   C1SE12P11= 'Respondent''s age bankruptcy declared 1' 
   C1SE12P12= 'Respondent''s age bankruptcy declared 2' 
   C1SE12P13= 'Respondent''s age bankruptcy declared 3' 
   C1SE12PR1= 'Respondent''s age range bankruptcy declared (from)' 
   C1SE12PR2= 'Respondent''s age range bankruptcy declared (to)' 
   C1SE12Q = 'Ever financial loss unrelated to work' 
   C1SE12Q1= 'Respondent''s age/age range financial loss unrelated to work' 
   C1SE12Q3= 'Financial loss unrelated to work effect (initial)' 
   C1SE12Q4= 'Financial loss unrelated to work effect (long-run)' 
   C1SE12Q11= 'Respondent''s age financial loss unrelated to work 1' 
   C1SE12Q12= 'Respondent''s age financial loss unrelated to work 2' 
   C1SE12Q13= 'Respondent''s age financial loss unrelated to work 3' 
   C1SE12Q14= 'Respondent''s age financial loss unrelated to work 4' 
   C1SE12QR1= 'Respondent''s age range financial loss unrelated to work (from)' 
   C1SE12QR2= 'Respondent''s age range financial loss unrelated to work (to)' 
   C1SE12R = 'Ever welfare' 
   C1SE12R1= 'Respondent''s age/age range welfare' 
   C1SE12R3= 'Welfare effect (initial)' 
   C1SE12R4= 'Welfare effect (long-run)' 
   C1SE12R11= 'Respondent''s age welfare 1' 
   C1SE12R12= 'Respondent''s age welfare 2' 
   C1SE12RR1= 'Respondent''s age range welfare (from)' 
   C1SE12RR2= 'Respondent''s age range welfare (to)' 
   C1SE12S = 'Ever entered armed forces' 
   C1SE12S1= 'Respondent''s age/age range entered armed forces' 
   C1SE12S3= 'Entered armed forces effect (initial)' 
   C1SE12S4= 'Entered armed forces effect (long-run)' 
   C1SE12S11= 'Respondent''s age entered armed forces 1' 
   C1SE12S12= 'Respondent''s age entered armed forces 2' 
   C1SE12SR1= 'Respondent''s age range entered armed forces (from)' 
   C1SE12SR2= 'Respondent''s age range entered armed forces (to)' 
   C1SE12T = 'Ever experienced combat' 
   C1SE12T1= 'Respondent''s age/age range experienced combat' 
   C1SE12T3= 'Experienced combat effect (initial)' 
   C1SE12T4= 'Experienced combat effect (long-run)' 
   C1SE12T11= 'Respondent''s age experienced combat 1' 
   C1SE12T12= 'Respondent''s age experienced combat 2' 
   C1SE12T13= 'Respondent''s age experienced combat 3' 
   C1SE12T14= 'Respondent''s age experienced combat 4' 
   C1SE12T15= 'Respondent''s age experienced combat 5' 
   C1SE12T16= 'Respondent''s age experienced combat 6' 
   C1SE12TR1= 'Respondent''s age range experienced combat (from)' 
   C1SE12TR2= 'Respondent''s age range experienced combat (to)' 
   C1SE13A = 'Women can have full and happy lives without marrying' 
   C1SE13B = 'Employed mothers can have just as good a relationship with children' 
   C1SE13C = 'Children need to be raised in a family with both parents' 
   C1SE13D = 'Men should share equally with their wives' 
   C1SE13E = 'Men can have full and happy lives without marrying' 
   C1SE13F = 'Women can have full and happy lives without any children' 
   C1SE13G = 'Men can have full and happy lives without any children' 
   C1SE13H = 'Partner who puts in the fewest hours at work should do most household chores' 
   C1SE13I = 'Partner who earns the least money should do most household chores' 
   C1SE13J = 'Single parents can rear children just as well as married adults' 
   C1SE13K = 'Men should share equally with their wives in taking care of children' 
   C1SMAR  = 'Can Be Happy without Marry' 
   C1SFAM  = 'Can Be Happy without Marry or Children' 
   C1SE14A = 'Where there''s a will there''s a way' 
   C1SE14B = 'Do what can to change for better' 
   C1SE14C = 'If expectation not being met, lower them' 
   C1SE14D = 'To avoid disappointments, don''t set goals too high' 
   C1SE14E = 'Learn meaningful from difficult situation' 
   C1SE14F = 'Relieved when let go of responsibilities' 
   C1SE14G = 'Even when feel too much, get it all done' 
   C1SE14H = 'Find different way of looking at things' 
   C1SE14I = 'Remind myself I can''t do everything' 
   C1SE14J = 'When problems, don''t give up until solve them' 
   C1SE14K = 'Rarely give up even when get tough' 
   C1SE14L = 'Can''t get want, assume goals unrealistic' 
   C1SE14M = 'When go wrong, usually find bright side' 
   C1SE14N = 'Find positive even in worst situations' 
   C1SE14O = 'Like to make plans for future' 
   C1SE14P = 'Know what I want out of life' 
   C1SE14Q = 'I live one day at a time' 
   C1SE14R = 'Helpful to set goals for near future' 
   C1SE14S = 'Too many things today to worry about tomorrow' 
   C1SE14T = 'Past helps me figure out what do present' 
   C1SE14U = 'No use in thinking about past because nothing can be done' 
   C1SE14V = 'Bad happens, think how could prevented' 
   C1SE14W = 'Good at figuring how things turn out' 
   C1SE14X = 'No sense in planning too far ahead' 
   C1SE14Y = 'Don''t like ask others for help unless have to' 
   C1SE14Z = 'Asking others comes naturally for me' 
   C1SE14AA= 'When goal decided, keep in mind benefits' 
   C1SE14BB= 'Cannot solve problem alone, ask others for help' 
   C1SE14CC= 'Can''t attain goal in any way, let go' 
   C1SE14DD= 'Impossible attain goal, try not to blame myself' 
   C1SE14EE= 'Decided on something, avoid distract' 
   C1SE14FF= 'Obstacles in way, get help from others' 
   C1SE14GG= 'Stop thinking/let go unattainable goal' 
   C1SE14HH= 'Something didn''t work out, try not to think about' 
   C1SE14II= 'Difficult goals, mind how good will feel' 
   C1SE14JJ= 'Difficulties too great, ask others advice' 
   C1SE14KK= 'Can''t attain goal, think about other goals' 
   C1SE14LL= 'Worry a lot when expect important event' 
   C1SE14MM= 'Keep harmony with others and surroundings' 
   C1SPERSI= 'Persist in Goal Striving (Primary Control)' 
   C1SREAPP= 'Positive Reappraisal (Secondary Control)' 
   C1SCHANG= 'Lower Aspirations (Secondary Control)' 
   C1SSPCTR= 'Selective Primary Control' 
   C1SCPCTR= 'Compensatory Primary Control' 
   C1SSSCTR= 'Selective Secondary Control' 
   C1SCSCDE= 'Disengage (Compensatory Secondary Control)' 
   C1SCSCSP= 'Self Protect (Compensatory Secondary Control)' 
   C1SCSCAG= 'Adjustment of Goals (Compensatory Secondary Control)' 
   C1SDIREC= 'Self Directedness and Planning' 
   C1STODAY= 'Live for Today' 
   C1SINSGH= 'Insight into Past' 
   C1SFORSG= 'Foresight and Anticipation' 
   C1SSUFFI= 'Self-Sufficiency' 
   C1SE15A = 'Grow as a person (stressful event)' 
   C1SE15B = 'Efforts do thing about it (stressful event)' 
   C1SE15C = 'Make plan of action (stressful event)' 
   C1SE15D = 'Let emotions out (stressful event)' 
   C1SE15E = 'Say this isn''t real (stressful event)' 
   C1SE15F = 'Admit cannot deal with it and quit (stressful event)' 
   C1SE15G = 'Eat more than usual (stressful event)' 
   C1SE15H = 'See in different light (stressful event)' 
   C1SE15I = 'Take action to rid (stressful event)' 
   C1SE15J = 'Strategy what to do (stressful event)' 
   C1SE15K = 'Really aware of upset (stressful event)' 
   C1SE15L = 'Refuse believe happen (stressful event)' 
   C1SE15M = 'Give up trying (stressful event)' 
   C1SE15N = 'Eat favorite foods (stressful event)' 
   C1SE15O = 'Look for good (stressful event)' 
   C1SE15P = 'Direct action (stressful event)' 
   C1SE15Q = 'Think how best handle (stressful event)' 
   C1SE15R = 'Let my feelings out (stressful event)' 
   C1SE15S = 'Pretend hasn''t happened (stressful event)' 
   C1SE15T = 'Give up attempt (stressful event)' 
   C1SE15U = 'Learn something new (stressful event)' 
   C1SE15V = 'One step at a time (stressful event)' 
   C1SE15W = 'Think hard what steps (stressful event)' 
   C1SE15X = 'Express emotional distress (stressful event)' 
   C1SE15Y = 'Act as hasn''t happened (stressful event)' 
   C1SE15Z = 'Reduce effort solving (stressful event)' 
   C1SREINT= 'Positive Reinterpretation (Problem Focused Coping)' 
   C1SACTIV= 'Active Coping (Problem Focused Coping)' 
   C1SPLAN = 'Planning (Problem Focused Coping)' 
   C1SVENT = 'Venting of Emotion (Emotion Focused Coping)' 
   C1SDENIA= 'Denial (Emotion Focused Coping)' 
   C1SDISEN= 'Behavioral Disengagement (Emotion Focused Coping)' 
   C1SFDCOP= 'Use Food to Cope' 
   C1SPRCOP= 'Problem Focused Coping' 
   C1SEMCOP= 'Emotion Focused Coping' 
   C1SE16  = 'Age feel like most of the time' 
   C1SE17  = 'Age would like to be' 
   C1SE18  = 'Age men enter middle age' 
   C1SE19  = 'Age men no longer middle age' 
   C1SE20  = 'Age women enter middle age' 
   C1SE21  = 'Age women no longer middle age' 
   C1SF1   = 'Rate current work situation' 
   C1SF2   = 'Rate work situation before recession' 
   C1SF3   = 'Rate work situation 10 years ago' 
   C1SF4   = 'Rate work situation 10 years future' 
   C1SF5   = 'Rate amount control over work situation' 
   C1SF6   = 'Rate thought/effort put into work' 
   C1SF7   = 'Ever worked paid job 6 months or more' 
   C1SF8   = 'Age first worked paid job 6 months or more' 
   C1SF9   = 'Number years employed at least 6 months of year' 
   C1SF10  = 'Number years full-time employed' 
   C1SF11  = 'Ever been unemployed' 
   C1SF12A = 'Unemployed longest period (numbers)' 
   C1SF12B = 'Unemployed longest period (weeks, months, years)' 
   C1SF13A = 'Unemployed longest period - Month' 
   C1SF13B = 'Unemployed longest period - Year' 
   C1SF14  = 'Main reason unemployed during longest period' 
   C1SF15  = 'Full-time student at any point since 1/2003' 
   C1SF16A = '2012 employment status (full-time student)' 
   C1SF16B = '2011 employment status (full-time student)' 
   C1SF16C = '2010 employment status (full-time student)' 
   C1SF16D = '2009 employment status (full-time student)' 
   C1SF16E = '2008 employment status (full-time student)' 
   C1SF16F = '2007 employment status (full-time student)' 
   C1SF16G = '2006 employment status (full-time student)' 
   C1SF16H = '2005 employment status (full-time student)' 
   C1SF16I = '2004 employment status (full-time student)' 
   C1SF16J = '2003 employment status (full-time student)' 
   C1SF17A = '2012 employment status (full, part, no work)' 
   C1SF17B = '2011 employment status (full, part, no work)' 
   C1SF17C = '2010 employment status (full, part, no work)' 
   C1SF17D = '2009 employment status (full, part, no work)' 
   C1SF17E = '2008 employment status (full, part, no work)' 
   C1SF17F = '2007 employment status (full, part, no work)' 
   C1SF17G = '2006 employment status (full, part, no work)' 
   C1SF17H = '2005 employment status (full, part, no work)' 
   C1SF17I = '2004 employment status (full, part, no work)' 
   C1SF17J = '2003 employment status (full, part, no work)' 
   C1SF18  = 'Done work for pay (10 years)' 
   C1SF19A = 'Physical effort at job' 
   C1SF19B = 'Lift 50 or more pounds at job' 
   C1SF19C = 'Lift 10-50 pounds at job' 
   C1SF19D = 'Lift up to 10 pounds at job' 
   C1SF19E = 'Crouch, stoop, kneel at job' 
   C1SF19F = 'Stand for long time at job' 
   C1SF19G = 'Use stairs/inclines at job' 
   C1SF19H = 'Walk at job' 
   C1SF19I = 'Sit for long time at job' 
   C1SF19J = 'Reach at job' 
   C1SF19K = 'Fingers grasp/handle things at job' 
   C1SF19L = 'Work on computer at job' 
   C1SF19M = 'Use eyes for inspecting things at job' 
   C1SF19N = 'Use eyes for reading at job' 
   C1SF20  = 'Accident/injury risk at job (10 years)' 
   C1SF21  = 'Suffer accidents/injuries at work (10 years)' 
   C1SF22  = 'Time injured at job (10 years)' 
   C1SF23  = 'Seriousness of job injury (10 years)' 
   C1SF24  = 'Work for pay currently' 
   C1SF25A = 'Start working at current job - Month' 
   C1SF25B = 'Start working at current job - Year' 
   C1SF26  = 'Feel overqualified/underqualified/just right' 
   C1SF27A = 'Work days in average week (frequency)' 
   C1SF27B = 'Work evenings in average week (frequency)' 
   C1SF27C = 'Work nights in average week (frequency)' 
   C1SF27D = 'Work weekends in average week (frequency)' 
   C1SF28A = 'Time begin job (hour)' 
   C1SF28B = 'Time begin job (minute)' 
   C1SF28C = 'Time begin job (am/pm)' 
   C1SF29A = 'Time end job (hour)' 
   C1SF29B = 'Time end job (minute)' 
   C1SF29C = 'Time end job (am/pm)' 
   C1SF30A = 'Job commute time (hours)' 
   C1SF30B = 'Job commute time (minutes)' 
   C1SF31  = 'Problem with someone at work (12 months)' 
   C1SF32  = 'Other ongoing stress at work (12 months)' 
   C1SF33  = 'Chances could keep job for next 2 years' 
   C1SF34  = 'Job effect on physical health' 
   C1SF35  = 'Job effect on emotional/mental health' 
   C1SF36A = 'Work intensively at job' 
   C1SF36B = 'Learn new things at job' 
   C1SF36C = 'Work demands high skill level' 
   C1SF36D = 'Initiate things at job' 
   C1SF36E = 'Choice how to do work tasks' 
   C1SF36F = 'Choice what tasks to do at work' 
   C1SF36G = 'Say in work decisions' 
   C1SF36H = 'Say in planning work environment' 
   C1SF36I = 'Job provides variety interesting things' 
   C1SF36J = 'Work demands hard to combine' 
   C1SF36K = 'So involved in work forget time' 
   C1SJCSD = 'Skill Discretion (Job Characteristics)' 
   C1SJCDA = 'Decision Authority (Job Characteristics)' 
   C1SJCDS = 'Demands Scale (Job Characteristics)' 
   C1SF37A = 'Coworker help/support' 
   C1SF37B = 'Coworker listen to work-related problems' 
   C1SF37C = 'Supervisor gives needed information' 
   C1SF37D = 'Supervisor help/support' 
   C1SF37E = 'Supervisor listen to work-related problems' 
   C1SJCCS = 'Coworker Support (Job Characteristics)' 
   C1SJCSS = 'Supervisor Support (Job Characteristics)' 
   C1SF38A = 'Unfairly given jobs no one else wanted' 
   C1SF38B = 'Watched more closely at job than others' 
   C1SF38C = 'Boss uses ethnic/racial/sexual slurs' 
   C1SF38D = 'Coworkers use ethnic/racial/sexual slurs' 
   C1SF38E = 'Ignored/not taken seriously by boss' 
   C1SF38F = 'Coworker promoted before you' 
   C1SJOBDI= 'Chronic Job Discrimination' 
   C1SF39A = 'Feel cheated about good job chances' 
   C1SF39B = 'Feel pride for work at job' 
   C1SF39C = 'Others respect my work at job' 
   C1SF39D = 'Others have more rewarding jobs' 
   C1SF39E = 'Had opportunities as good as others' 
   C1SF39F = 'Others have better jobs than me' 
   C1SPIWOR= 'Perceived Inequality in Work' 
   C1SF40A = 'Job reduces effort to activities at home' 
   C1SF40B = 'Job stress makes irritable at home' 
   C1SF40C = 'Job makes too tired to do things at home' 
   C1SF40D = 'Job problems distract you at home' 
   C1SF40E = 'Job helps to deal with issues at home' 
   C1SF40F = 'Job makes you more interesting at home' 
   C1SF40G = 'Job makes you better companion at home' 
   C1SF40H = 'Job skills useful at home' 
   C1SF40I = 'Home responsibilities reduce job effort' 
   C1SF40J = 'Personal worries distract you at job' 
   C1SF40K = 'Home chores prevent sleep to do job' 
   C1SF40L = 'Home stress makes irritable at job' 
   C1SF40M = 'Talk someone at home helps job problems' 
   C1SF40N = 'Providing home makes work harder at job' 
   C1SF40O = 'Home love makes you confident at job' 
   C1SF40P = 'Home helps to relax for next workday' 
   C1SPOSWF= 'Positive Work to Family Spillover' 
   C1SNEGWF= 'Negative Work to Family Spillover' 
   C1SPOSFW= 'Positive Family to Work Spillover' 
   C1SNEGFW= 'Negative Family to Work Spillover' 
   C1SF41A = 'Work paid number weeks (12 months)' 
   C1SF41B = 'Unemployed number weeks (12 months)' 
   C1SF41C = 'Unpaid leave number weeks (12 months)' 
   C1SF41D = 'Not working or looking number weeks (12 months)' 
   C1SF42A = 'Too many demands at job (12 months)' 
   C1SF42B = 'Control amount of time at tasks at job (12 months)' 
   C1SF42C = 'Time to get everything done at job (12 months)' 
   C1SF42D = 'Lot of interruptions at job (12 months)' 
   C1SF43A = 'Too many demands at home (12 months)' 
   C1SF43B = 'Control amount of time at tasks at home (12 months)' 
   C1SF43C = 'Time to get everything done at home (12 months)' 
   C1SF43D = 'Lot of interruptions at home (12 months)' 
   C1SF44A = 'Feel pride about work at home' 
   C1SF44B = 'Feel others respect my work at home' 
   C1SF44C = 'Paid work more rewarding than home work' 
   C1SF45A = 'Feel pride about unpaid work in community' 
   C1SF45B = 'Feel others respect my community work' 
   C1SF45C = 'Paid work more rewarding than volunteer' 
   C1SG1   = 'Rate current financial situation' 
   C1SG2   = 'Rate financial situation before recession' 
   C1SG3   = 'Rate financial situation 10 years ago' 
   C1SG4   = 'Rate financial situation 10 years future' 
   C1SG5   = 'Rate control over financial situation' 
   C1SG6   = 'Rate thought/effort into financial situation' 
   C1SG7   = 'Money to meet needs (more, enough, not enough)' 
   C1SG8   = 'Describe the way affected by recession' 
   C1SG9   = 'How difficult to pay monthly bills' 
   C1SG10  = 'How difficult to pay monthly bills compared to before recession' 
   C1SG11A = 'Respondent''s wages last calendar year' 
   C1SG11B = 'Respondent''s pension income last calendar year' 
   C1SG11C = 'Respondent''s social security income last calendar year' 
   C1SG11D = 'Respondent''s other source last calendar year' 
   C1SG12  = 'Respondent''s income from early withdrawal' 
   C1SG13  = 'Have spouse/partner who earned income last calendar year' 
   C1SG14A = 'Spouse/partner''s wages last calendar year' 
   C1SG14B = 'Spouse/partner''s pension income last calendar year' 
   C1SG14C = 'Spouse/partner''s social security income last calendar year' 
   C1SG14D = 'Spouse/partner''s other source last calendar year' 
   C1SG15  = 'Any spouse/partner''s income from early withdrawal' 
   C1SG16  = 'Have other family who earned income last calendar year' 
   C1SG17A = 'Other family''s wages last calendar year' 
   C1SG17B = 'Other family''s pension income last calendar year' 
   C1SG17C = 'Other family''s social security income last calendar year' 
   C1SG17D = 'Other family''s other source last calendar year' 
   C1SRINC = 'Respondent''s income from wage, pension, social security, and other sources' 
   C1SSINC = 'Spouse/partner''s income from wage, pension, social security, and other sources' 
   C1SHINC = 'Other household members'' income from wage, pension, social security, and other sources' 
   C1SEARN = 'Household income from wages' 
   C1SPNSN = 'Household income from pension' 
   C1SSEC  = 'Household income from social security' 
   C1SOTH  = 'Household income from other sources' 
   C1STINC = 'Household total income from wage, pension, social security, and other sources' 
   C1SG18  = 'Any other family''s income from early withdrawal' 
   C1SG19  = 'Received public/government assistance last calendar year' 
   C1SG20A = 'Supplemental Security Income (12 months)' 
   C1SG20B = 'Social Security Disability Insurance (12 months)' 
   C1SG20C = 'Other disability benefits (12 months)' 
   C1SG20D = 'General Assistance (12 months)' 
   C1SG20E = 'Food Stamps (12 months)' 
   C1SG20F = 'Temporary Assistance for Needy Families (12 months)' 
   C1SG20G = 'Unemployment benefits (12 months)' 
   C1SG20H = 'Veteran''s benefits (12 months)' 
   C1SG20I = 'Workman''s compensation (12 months)' 
   C1SG20J = 'Other state welfare programs (12 months)' 
   C1SG21  = 'Total household income from government assistance (12 months)' 
   C1SG22  = 'Total household income from investments (12 months)' 
   C1SG23  = 'Total household income from other sources (12 months)' 
   C1SG24  = 'Total annual household income from all sources before recession' 
   C1SG25  = 'Describe total household income compared to before recession' 
   C1SG25A = 'How much more income compared to before recession' 
   C1SG25B = 'How much less income compared to before recession' 
   C1SG26  = 'Respondent employer/union pension plan currently' 
   C1SG27  = 'Current worth of respondent''s pension savings' 
   C1SG28  = 'Respondent has own traditional/Keogh/Roth IRA account' 
   C1SG29  = 'Current worth of respondent''s IRA account' 
   C1SG30  = 'Respondent has other pension/retirement plans' 
   C1SG31  = 'Current worth of respondent''s other pension plans' 
   C1SG32  = 'Spouse/partner employer/union pension plan currently' 
   C1SG33  = 'Current worth of spouse/partner''s pension plan' 
   C1SG34  = 'Taken out any loans against retirement accounts since recession began' 
   C1SG35  = 'What were loans against retirement accounts used for' 
   C1SG36  = 'How much owed in loans against retirement accounts currently' 
   C1SG37A = 'Percentage of retirement accounts in stocks' 
   C1SG37B = 'Percentage of retirement accounts in bonds' 
   C1SG37C = 'Percentage of retirement accounts in cash and certificates of deposit' 
   C1SG37D = 'Percentage of retirement accounts in other' 
   C1SG38  = 'Own or rent home' 
   C1SG39  = 'How much home would sell for' 
   C1SG40  = 'Best describes primary residence' 
   C1SG41  = 'Own business/farm' 
   C1SG42  = 'How much business/farm would sell for' 
   C1SG43  = 'Amount owed on business/farm' 
   C1SG44  = 'Any income from rental property' 
   C1SG45  = 'Income from rental property last calendar year' 
   C1SG46  = 'Any money in stocks/bonds/CDs/mutual funds' 
   C1SG47  = 'Worth of stocks/bonds/CDs/mutual funds' 
   C1SG48A = 'Percentage of non-retirement assets in stocks' 
   C1SG48B = 'Percentage of non-retirement assets in bonds' 
   C1SG48C = 'Percentage of non-retirement assets in cash and certificates of deposit' 
   C1SG48D = 'Percentage of non-retirement assets in property' 
   C1SG48E = 'Percentage of non-retirement assets in other' 
   C1SG49  = 'Inherited anything worth $1000 or more' 
   C1SG50  = 'Year received largest inheritance payment' 
   C1SG51  = 'Amount of largest inheritance received' 
   C1SG52  = 'Any life insurance including individual/group' 
   C1SG53  = 'Amount beneficiaries would receive if died' 
   C1SG54  = 'Any annuities will pay income when retire' 
   C1SG55  = 'Amount annuities pay per year upon retirement' 
   C1SG56  = 'Any college savings fund for children' 
   C1SG57  = 'Amount in college savings funds' 
   C1SG58  = 'Have long-term care insurance' 
   C1SG59  = 'Money left or owed if cashed in and paid off debt' 
   C1SG59A = 'Amount you would owe' 
   C1SG59B = 'Amount you would have' 
   C1SG60  = 'Money left or owed if cashed in and paid off debt before recession' 
   C1SG60A = 'Amount you would owe before recession' 
   C1SG60B = 'Amount you would have before recession' 
   C1SG61A = 'Home mortgage amount owed' 
   C1SG61B = 'Home improvement/equity amount owed' 
   C1SG61C = 'Other real estate loans amount owed' 
   C1SG61D = 'Business/farm loans amount owed' 
   C1SG61E = 'Vehicle loans amount owed' 
   C1SG61F = 'Credit cards/charge accounts amount owed' 
   C1SG61G = 'Installment loans for purchases amount owed' 
   C1SG61H = 'Educational loans amount owed' 
   C1SG61I = 'Other personal loans amount owed' 
   C1SG62  = 'Currently owe compared to before recession' 
   C1SH1   = 'Rate current contribution to others welfare' 
   C1SH2   = 'Rate contribution to others welfare 10 years ago' 
   C1SH3   = 'Rate contribution to others welfare 10 years future' 
   C1SH4   = 'Rate control over contribution to others welfare' 
   C1SH5   = 'Rate thought/effort into contribution to others welfare' 
   C1SH6A  = 'Made unique contributions to society' 
   C1SH6B  = 'Important skills to pass along to others' 
   C1SH6C  = 'Many people come to you for advice' 
   C1SH6D  = 'Feel other people need you' 
   C1SH6E  = 'Good influence on others lives' 
   C1SH6F  = 'Like to teach things to people' 
   C1SGENER= 'Loyola Generativity Scale' 
   C1SH7A  = 'Volunteer hospital/nursing home (hours/month)' 
   C1SH7B  = 'Volunteer school/other youth related work (hours/month)' 
   C1SH7C  = 'Volunteer political organization/causes (hours/month)' 
   C1SH7D  = 'Volunteer other organization/causes (hours/month)' 
   C1SH8A  = 'Attend meeting unions/professional groups (numbers/month)' 
   C1SH8B  = 'Attend meeting sports/social groups (numbers/month)' 
   C1SH8C  = 'Attend meeting other groups (numbers/month)' 
   C1SH9A  = 'Give spouse/partner emotional support (hours/month)' 
   C1SH9B  = 'Give parents emotional support (hours/month)' 
   C1SH9C  = 'Give in-laws emotional support (hours/month)' 
   C1SH9D  = 'Give children emotional support (hours/month)' 
   C1SH9E  = 'Give other family/friends emotional support (hours/month)' 
   C1SH9F  = 'Give anyone else emotional support (hours/month)' 
   C1SH10A = 'Receive emotional support spouse/partner (hours/month)' 
   C1SH10B = 'Receive emotional support parents (hours/month)' 
   C1SH10C = 'Receive emotional support in-laws (hours/month)' 
   C1SH10D = 'Receive emotional support children (hours/month)' 
   C1SH10E = 'Receive emotional support other family/friends (hours/month)' 
   C1SH10F = 'Receive emotional support anyone else (hours/month)' 
   C1SH11A = 'Give unpaid assistance parents (hours/month)' 
   C1SH11B = 'Give unpaid assistance in-laws (hours/month)' 
   C1SH11C = 'Give unpaid assistance children (hours/month)' 
   C1SH11D = 'Give unpaid assistance other family/friends (hours/month)' 
   C1SH11E = 'Give unpaid assistance anyone else (hours/month)' 
   C1SH12A = 'Receive unpaid assistance parents (hours/month)' 
   C1SH12B = 'Receive unpaid assistance in-laws (hours/month)' 
   C1SH12C = 'Receive unpaid assistance children (hours/month)' 
   C1SH12D = 'Receive unpaid assistance other family/friends (hours/month)' 
   C1SH12E = 'Receive unpaid assistance community volunteers (hours/month)' 
   C1SH12F = 'Receive unpaid assistance religious groups (hours/month)' 
   C1SH12G = 'Receive unpaid assistance other organization (hours/month)' 
   C1SH12H = 'Receive unpaid assistance government groups (hours/month)' 
   C1SH13A = 'Financial support to parents (dollars/month)' 
   C1SH13B = 'Financial support to in-laws (dollars/month)' 
   C1SH13C = 'Financial support to children (dollars/month)' 
   C1SH13D = 'Financial support to other family/friends (dollars/month)' 
   C1SH13E = 'Financial support to any other individuals (dollars/month)' 
   C1SH13F = 'Financial support to religious groups (dollars/month)' 
   C1SH13G = 'Financial support to political organizations (dollars/month)' 
   C1SH13H = 'Financial support to other organizations (dollars/month)' 
   C1SH14A = 'Financial support from parents (dollars/month)' 
   C1SH14B = 'Financial support from in-laws (dollars/month)' 
   C1SH14C = 'Financial support from children (dollars/month)' 
   C1SH14D = 'Financial support from other family/friends (dollars/month)' 
   C1SH14E = 'Financial support from religious groups (dollars/month)' 
   C1SH14F = 'Financial support from other non-governmental organizations (dollars/month)' 
   C1SH14G = 'Financial support from any government group (dollars/month)' 
   C1SH15A = 'Lived with aging parent (12 months)' 
   C1SH15B = 'Lived with adult children (12 months)' 
   C1SH15C = 'Lived with grandchildren (12 months)' 
   C1SH15D = 'Lived with other friends/family (12 months)' 
   C1SH16A = 'World is too complex for me' 
   C1SH16B = 'Do not feel I belong to community' 
   C1SH16C = 'People who do a favor expect nothing' 
   C1SH16D = 'Have something valuable to give world' 
   C1SH16E = 'World is becoming better place' 
   C1SH16F = 'Feel close to others in community' 
   C1SH16G = 'Daily activities not worthwhile for community' 
   C1SH16H = 'Cannot make sense of world' 
   C1SH16I = 'Society stopped making progress' 
   C1SH16J = 'People do not care about others problems' 
   C1SH16K = 'Community is source of comfort' 
   C1SH16L = 'Easy to predict society future' 
   C1SH16M = 'Society not improving for people like me' 
   C1SH16N = 'Believe people are kind' 
   C1SH16O = 'Have nothing important for society' 
   C1SSWBMS= 'Meaningfulness of Society (Social Well-Being)' 
   C1SSWBSI= 'Social Integration (Social Well-Being)' 
   C1SSWBAO= 'Acceptance of Others (Social Well-Being)' 
   C1SSWBSC= 'Social Contribution (Social Well-Being)' 
   C1SSWBSA= 'Social Actualization (Social Well-Being)' 
   C1SH16P = 'Important to help people who I know well' 
   C1SH16Q = 'Not happy if friend in trouble' 
   C1SH16R = 'Moved by another person''s hardship' 
   C1SH16S = 'Important to be sympathetic others' 
   C1SH16T = 'My sympathy has its limits' 
   C1SSYMP = 'Sympathy scale' 
   C1SI1   = 'Contact with neighbors (frequency)' 
   C1SI2   = 'Conversation/get together with neighbor (frequency)' 
   C1SI3   = 'Years lived in current neighborhood' 
   C1SI4   = 'Years lived in this state' 
   C1SI5   = 'Own home outright, mortgage, or rent' 
   C1SI6A  = 'Safe alone in neighborhood daytime' 
   C1SI6B  = 'Safe alone in neighborhood at night' 
   C1SI6C  = 'Home as nice as most people' 
   C1SI6D  = 'Proud of my home' 
   C1SI6E  = 'Can call neighbor for help if needed' 
   C1SI6F  = 'Others live in better neighborhood' 
   C1SI6G  = 'Neighbors trust each other' 
   C1SI6H  = 'Do not like to invite others to home' 
   C1SI6I  = 'Buildings/streets kept in good repair' 
   C1SI6J  = 'Feel good about home/neighborhood' 
   C1SI6K  = 'Neighborhood is kept clean' 
   C1SI6L  = 'Hopeless to improve home/neighborhood' 
   C1SHOMET= 'Perceived Quality of Neighborhood' 
   C1SPIHOM= 'Perceived Inequality in Home' 
   C1SI7   = 'State most like to live next 10 years' 
   C1SJ1   = 'Contact with family members (frequency)' 
   C1SJ2   = 'Contact with family members using social media (frequency)' 
   C1SJ3   = 'Number relatives have contact with' 
   C1SJ4A  = 'Family members really care about you' 
   C1SJ4B  = 'Family members understand way you feel' 
   C1SJ4C  = 'Rely on family for help with problem' 
   C1SJ4D  = 'Open up to family about worries' 
   C1SJ4E  = 'Really care about family members' 
   C1SJ4F  = 'Understand way family feels' 
   C1SJ4G  = 'Family members make too many demands' 
   C1SJ4H  = 'Family members criticize you' 
   C1SJ4I  = 'Family members let you down' 
   C1SJ4J  = 'Family members get on your nerves' 
   C1SKINPO= 'Support from Family' 
   C1SKINNE= 'Strain from Family' 
   C1SFAMSO= 'Family Affectual Solidarity' 
   C1SPKINS= 'Providing Support for Family' 
   C1SJ5   = 'Contact with friends (frequency)' 
   C1SJ6   = 'Contact with friends using social media (frequency)' 
   C1SJ7   = 'Number friends have contact with' 
   C1SJ8A  = 'Friends really care about you' 
   C1SJ8B  = 'Friends understand way you feel' 
   C1SJ8C  = 'Rely on friends for help with problem' 
   C1SJ8D  = 'Open up to friends about worries' 
   C1SJ8E  = 'Friends make too many demands on you' 
   C1SJ8F  = 'Friends criticize you' 
   C1SJ8G  = 'Friends let you down' 
   C1SJ8H  = 'Friends get on your nerves' 
   C1SFDSPO= 'Support from Friends' 
   C1SFDSNE= 'Strain from Friends' 
   C1SFDSOL= 'Friendship Affectual Solidarity' 
   C1SJ9   = 'Friends/relative asks for advice/help' 
   C1SJ10  = 'You ask friend/relative for advice/help' 
   C1SJ11SA= 'Spouse/partner chronic disease/disability (12 months)' 
   C1SJ11PA= 'Parents chronic disease/disability (12 months)' 
   C1SJ11CA= 'Children chronic disease/disability (12 months)' 
   C1SJ11SB= 'Spouse/partner frequent minor illnesses (12 months)' 
   C1SJ11PB= 'Parents frequent minor illnesses (12 months)' 
   C1SJ11CB= 'Children frequent minor illnesses (12 months)' 
   C1SJ11SC= 'Spouse/partner emotional problems (12 months)' 
   C1SJ11PC= 'Parents emotional problems (12 months)' 
   C1SJ11CC= 'Children emotional problems (12 months)' 
   C1SJ11SD= 'Spouse/partner alcohol/substance problems (12 months)' 
   C1SJ11PD= 'Parents alcohol/substance problems (12 months)' 
   C1SJ11CD= 'Children alcohol/substance problems (12 months)' 
   C1SJ11SE= 'Spouse/partner financial problems (12 months)' 
   C1SJ11PE= 'Parents financial problems (12 months)' 
   C1SJ11CE= 'Children financial problems (12 months)' 
   C1SJ11SF= 'Spouse/partner school/work problems (12 months)' 
   C1SJ11PF= 'Parents school/work problems (12 months)' 
   C1SJ11CF= 'Children school/work problems (12 months)' 
   C1SJ11SG= 'Spouse/partner difficult find/keep job (12 months)' 
   C1SJ11PG= 'Parents difficult find/keep job (12 months)' 
   C1SJ11CG= 'Children difficult find/keep job (12 months)' 
   C1SJ11SH= 'Spouse/partner marital/relationship problems (12 months)' 
   C1SJ11PH= 'Parents marital/relationship problems (12 months)' 
   C1SJ11CH= 'Children marital/relationship problems (12 months)' 
   C1SJ11SI= 'Spouse/partner legal problems (12 months)' 
   C1SJ11PI= 'Parents legal problems (12 months)' 
   C1SJ11CI= 'Children legal problems (12 months)' 
   C1SJ11SJ= 'Spouse/partner difficult get along with others (12 months)' 
   C1SJ11PJ= 'Parents difficult get along with others (12 months)' 
   C1SJ11CJ= 'Children difficult get along with others (12 months)' 
   C1SJ11SK= 'Spouse/partner loss of home (12 months)' 
   C1SJ11PK= 'Parents loss of home (12 months)' 
   C1SJ11CK= 'Children loss of home (12 months)' 
   C1SJ11SL= 'Spouse/partner loss of employment (12 months)' 
   C1SJ11PL= 'Parents loss of employment (12 months)' 
   C1SJ11CL= 'Children loss of employment (12 months)' 
   C1SJ11SM= 'Spouse/partner delay planned retirement (12 months)' 
   C1SJ11PM= 'Parents delay planned retirement (12 months)' 
   C1SJ11CM= 'Children delay planned retirement (12 months)' 
   C1SJ11SN= 'Spouse/partner delay schooling (12 months)' 
   C1SJ11PN= 'Parents delay schooling (12 months)' 
   C1SJ11CN= 'Children delay schooling (12 months)' 
   C1SJ11SO= 'Spouse/partner move in with others (12 months)' 
   C1SJ11PO= 'Parents move in with others (12 months)' 
   C1SJ11CO= 'Children move in with others (12 months)' 
   C1SK1   = 'Currently have any living children' 
   C1SK2   = 'Rate current relationship with children' 
   C1SK3   = 'Rate relationship with children 10 years ago' 
   C1SK4   = 'Rate relationship with children 10 years future' 
   C1SK5   = 'Rate control over relationship with children' 
   C1SK6   = 'Rate thought/effort relationship with children' 
   C1SK7A  = 'Feel good about opportunities for children' 
   C1SK7B  = 'Family life with children more negative' 
   C1SK7C  = 'Problems with children caused shame' 
   C1SK7D  = 'No resources for fun things with children' 
   C1SK7E  = 'Do for children as much as others' 
   C1SK7F  = 'Pride about what able to do for children' 
   C1SPIFAM= 'Perceived Inequality in Family' 
   C1SK8A1 = 'Respondent stop working to care for children' 
   C1SK8A2 = 'Spouse/partner stop working to care for children' 
   C1SK8B1 = 'Respondent cut back hours to care for children' 
   C1SK8B2 = 'Spouse/partner cut back hours to care for children' 
   C1SK8C1 = 'Respondent work longer hours meet child needs' 
   C1SK8C2 = 'Spouse/partner work longer hours meet child needs' 
   C1SK8D1 = 'Respondent switch to different job for children' 
   C1SK8D2 = 'Spouse/partner switch to different job for children' 
   C1SK9   = 'Currently have children 13 years or younger' 
   C1SK10  = 'Days respondent change schedule for childcare' 
   C1SK11  = 'Days spouse/partner change schedule for childcare' 
   C1SK12  = 'Provide childcare stressful (school year)' 
   C1SK13  = 'Provide childcare stressful (summer)' 
   C1SL1   = 'Currently married/living with partner' 
   C1SL2   = 'Rate current marriage/relationship' 
   C1SL3   = 'Rate marriage/relationship 10 years ago' 
   C1SL4   = 'Rate marriage/relationship 10 years future' 
   C1SL5   = 'Rate control over marriage/relationship' 
   C1SL6   = 'Rate thought/effort marriage/relationship' 
   C1SL7   = 'Describe marital relationship' 
   C1SL8   = 'Relationship in trouble (12 months)' 
   C1SL9   = 'Chances eventually separate from spouse/partner' 
   C1SMARRS= 'Marital Risk' 
   C1SL10A = 'Disagree about money matters with spouse/partner' 
   C1SL10B = 'Disagree about household tasks with spouse/partner' 
   C1SL10C = 'Disagree about leisure activities with spouse/partner' 
   C1SSPDIS= 'Spouse/Partner Disagreement' 
   C1SL11  = 'Good talk with spouse/partner (frequency)' 
   C1SL12A = 'Spouse/partner really cares about you' 
   C1SL12B = 'Spouse/partner understands way you feel' 
   C1SL12C = 'Spouse/partner appreciates you' 
   C1SL12D = 'Rely spouse/partner for help with serious problem' 
   C1SL12E = 'Open up to spouse/partner about worries' 
   C1SL12F = 'Can relax, be yourself around spouse/partner' 
   C1SL12G = 'Spouse/partner makes too many demands on you' 
   C1SL12H = 'Spouse/partner makes you feel tense' 
   C1SL12I = 'Spouse/partner argues with you' 
   C1SL12J = 'Spouse/partner criticizes you' 
   C1SL12K = 'Spouse/partner lets you down' 
   C1SL12L = 'Spouse/partner gets on your nerves' 
   C1SSPEMP= 'Support from Spouse/Partner' 
   C1SSPCRI= 'Strain from Spouse/Partner' 
   C1SSPSOL= 'Spouse/Partner Affectual Solidarity' 
   C1SL13  = 'Who does more household chores' 
   C1SL14  = 'Respondent does household chores (hours/week)' 
   C1SL15  = 'Spouse/partner does household chores (hours/week)' 
   C1SL16  = 'How fair are household chores to respondent' 
   C1SL17  = 'How fair are household chores to spouse/partner' 
   C1SL18A = 'Make decisions with spouse/partner as a team' 
   C1SL18B = 'Talk with spouse/partner makes things better' 
   C1SL18C = 'Talk with spouse/partner before make plans' 
   C1SL18D = 'Ask spouse/partner for advice about issues' 
   C1SSPDEC= 'Spouse/Partner Decision Making' 
   C1SL19  = 'Describe spouse/partner physical health currently' 
   C1SL20  = 'Describe spouse/partner mental health currently' 
   C1SL21  = 'C1SL21: Spouse/partner currently working for pay' 
   C1SL22  = 'Hours per week spouse/partner works at main job' 
   C1SL23  = 'Hours per week spouse/partner works at other job' 
   C1SL24A = 'Spouse/partner works days in average week (frequency)' 
   C1SL24B = 'Spouse/partner works evenings in average week (frequency)' 
   C1SL24C = 'Spouse/partner works nights in average week (frequency)' 
   C1SL24D = 'Spouse/partner works weekends in average week (frequency)' 
   C1SL25A = 'Spouse/partner time begin job (hour)' 
   C1SL25B = 'Spouse/partner time begin job (minute)' 
   C1SL25C = 'Spouse/partner time begin job (am/pm)' 
   C1SL26A = 'Spouse/partner time end job (hour)' 
   C1SL26B = 'Spouse/partner time end job (minute)' 
   C1SL26C = 'Spouse/partner time end job (am/pm)' 
   C1SL27A = 'Spouse/partner job commute time (hours)' 
   C1SL27B = 'Spouse/partner job commute time (minutes)' 
   C1SL28  = 'Spouse/partner chances could keep job for next 2 years' 
   C1SM1   = 'Rate sexual aspect of life currently' 
   C1SM2   = 'Rate sexual aspect of life 10 years ago' 
   C1SM3   = 'Rate sexual aspect of life 10 years future' 
   C1SM4   = 'Rate control over sexual aspect of life' 
   C1SM5   = 'Rate thought/effort sexual aspect of life' 
   C1SM6   = 'Describe sexual orientation' 
   C1SM7   = 'Ever had sexual partners (past year)' 
   C1SM8   = 'Number of sex partners (past year)' 
   C1SM9   = 'Sex frequency (past 6 months)' 
   C1SM10  = 'Sexual expression important part of relationship' 
   C1SM11  = 'Sexual relationship include emotional intimacy' 
   C1SM12  = 'Pain/discomfort in sexual interactions' 
   C1SM13  = 'Pleasure in sexual interactions' 
   C1SN1A  = 'Religious preference 1st choice' 
   C1SN1B  = 'Religious preference 2nd choice' 
   C1SN1C  = 'Religious preference 3rd choice' 
   C1SN2A  = 'How religious are you' 
   C1SN2B  = 'How spiritual are you' 
   C1SN2C  = 'Religion important in your life' 
   C1SN2D  = 'Spirituality important in your life' 
   C1SN2E  = 'Religious instruction important for children' 
   C1SN2F  = 'Identify with your religious group' 
   C1SN2G  = 'Prefer people of same religion' 
   C1SN2H  = 'Important to marry in same religion' 
   C1SN2I  = 'Important celebrate with religious community' 
   C1SSPIRI= 'Spirituality' 
   C1SRELID= 'Religious Identification' 
   C1SN3A  = 'Pray in private (frequency)' 
   C1SN3B  = 'Meditate or chant (frequency)' 
   C1SN3C  = 'Read Bible or religious literature (frequency)' 
   C1SN3D  = 'Attend religious/spiritual services (frequency)' 
   C1SN3E  = 'Attend church/temple activities (frequency)' 
   C1SRELPR= 'Private Religious Practices' 
   C1SN4   = 'Explore different religions or stick to one' 
   C1SN5   = 'Consider yourself a Christian' 
   C1SN6   = 'Ever been born again' 
   C1SN7   = 'Bible is actual Word of God' 
   C1SN8   = 'Have religious community/congregation' 
   C1SN9A  = 'If ill, congregation would help' 
   C1SN9B  = 'If problem, congregation would comfort' 
   C1SN9C  = 'Congregation makes too many demands' 
   C1SN9D  = 'Congregation criticizes you' 
   C1SRELSU= 'Religious Support' 
   C1SN10A = 'Seek comfort through religion when problem' 
   C1SN10B = 'Look to religious beliefs make decisions' 
   C1SN10C = 'Make sense situation without God' 
   C1SN10D = 'Wonder if God has abandoned me' 
   C1SN10E = 'Feel God is punishing me for sins' 
   C1SN10F = 'Look to God for strength/support/guidance' 
   C1SN10G = 'Work with God as partners' 
   C1SN10H = 'Life is part of larger spiritual force' 
   C1SRELCA= 'Religious/Spiritual Coping A' 
   C1SRELCB= 'Religious/Spiritual Coping B' 
   C1SN11A = 'Feeling of deep inner peace (frequency/day)' 
   C1SN11B = 'Moved by beauty of life (frequency/day)' 
   C1SN11C = 'Strong connection to all life (frequency/day)' 
   C1SN11D = 'Sense of deep appreciation (frequency/day)' 
   C1SN11E = 'Sense of caring for others (frequency/day)' 
   C1SSPRTE= 'Daily Spiritual Experiences' 
   C1SN12A = 'More engaged in moment because religion' 
   C1SN12B = 'Sensitive to others feelings because religion' 
   C1SN12C = 'Receptive to new ideas because religion' 
   C1SN12D = 'Better listener because religion' 
   C1SN12E = 'More patient because religion' 
   C1SN12F = 'More aware of environment because religion' 
   C1SN12G = 'More tolerant differences because religion' 
   C1SN12H = 'Aware different ways to solve problems because religion' 
   C1SN12I = 'Perceive in new ways because religion' 
   C1SMNDFU= 'Mindfulness' 
   C1SP1A  = 'Higher education discouraged (times)' 
   C1SP1B  = 'Denied scholarship (times)' 
   C1SP1C  = 'Not hired for a job (times)' 
   C1SP1D  = 'Not given job promotion (times)' 
   C1SP1E  = 'Fired (times)' 
   C1SP1F  = 'Prevented from rent/buying home (times)' 
   C1SP1G  = 'Prevented remain in neighborhood (times)' 
   C1SP1H  = 'Hassled by police (times)' 
   C1SP1I  = 'Denied a bank loan (times)' 
   C1SP1J  = 'Denied or provided inferior medical care (times)' 
   C1SP1K  = 'Denied or provided inferior service (times)' 
   C1SLFEDI= 'Summary: Lifetime Discrimination' 
   C1SP2A  = 'Treated with less courtesy than others (frequency)' 
   C1SP2B  = 'Treated with less respect than others (frequency)' 
   C1SP2C  = 'Receive poorer service than others (frequency)' 
   C1SP2D  = 'People think you are not smart (frequency)' 
   C1SP2E  = 'People act afraid of you (frequency)' 
   C1SP2F  = 'People think you are dishonest (frequency)' 
   C1SP2G  = 'People think you not as good as they are (frequency)' 
   C1SP2H  = 'Called names or insulted (frequency)' 
   C1SP2I  = 'Threatened/harassed (frequency)' 
   C1SDAYDI= 'Daily Discrimination' 
   C1SP3   = 'Any discriminatory experiences' 
   C1SP4A  = 'Age main reason for discrimination' 
   C1SP4B  = 'Gender main reason for discrimination' 
   C1SP4C  = 'Race main reason for discrimination' 
   C1SP4D  = 'Ethnicity main reason for discrimination' 
   C1SP4E  = 'Religion main reason for discrimination' 
   C1SP4F  = 'Height/weight main reason for discrimination' 
   C1SP4G  = 'Appearance main reason for discrimination' 
   C1SP4H  = 'Physical disability main reason for discrimination' 
   C1SP4I  = 'Sexual orientation main reason for discrimination' 
   C1SP4J  = 'Occupation main reason for discrimination' 
   C1SP4K  = 'Financial status main reason for discrimination' 
   C1SP4L  = 'Education main reason for discrimination' 
   C1SP4M  = 'Other main reason for discrimination' 
   C1SP5   = 'Discrimination interfered with having full life' 
   C1SP6   = 'Life has been harder because of discrimination' 
   C1SQ1   = 'Rate life overall currently' 
   C1SQ2   = 'Rate life overall 10 years ago' 
   C1SQ3   = 'Rate life overall 10 years future' 
   C1SQ4   = 'Rate control over life' 
   C1SQ5   = 'Rate thought/effort into life overall' 
   C1SQ6   = 'Rate your day today' 
        ; 


* USER-DEFINED MISSING VALUES RECODE TO SAS SYSMIS;

/*
   IF (C1PIDATE_YR = 9997 OR C1PIDATE_YR = 9998 OR C1PIDATE_YR = 9999) THEN C1PIDATE_YR = .;
   IF (C1PAA1 = 7 OR C1PAA1 = 8) THEN C1PAA1 = .;
   IF (C1PAA2A = 7 OR C1PAA2A = 8 OR C1PAA2A = 9) THEN C1PAA2A = .;
   IF (C1PAA2B = 7 OR C1PAA2B = 8 OR C1PAA2B = 9) THEN C1PAA2B = .;
   IF (C1PAA2C = 7 OR C1PAA2C = 8 OR C1PAA2C = 9) THEN C1PAA2C = .;
   IF (C1PAA2D = 7 OR C1PAA2D = 8 OR C1PAA2D = 9) THEN C1PAA2D = .;
   IF (C1PAA2E = 7 OR C1PAA2E = 8 OR C1PAA2E = 9) THEN C1PAA2E = .;
   IF (C1PAA2F = 7 OR C1PAA2F = 8 OR C1PAA2F = 9) THEN C1PAA2F = .;
   IF (C1PAA2G = 7 OR C1PAA2G = 8 OR C1PAA2G = 9) THEN C1PAA2G = .;
   IF (C1PAA2H = 7 OR C1PAA2H = 8 OR C1PAA2H = 9) THEN C1PAA2H = .;
   IF (C1PAA2I = 7 OR C1PAA2I = 8 OR C1PAA2I = 9) THEN C1PAA2I = .;
   IF (C1PAA2I1 = 999999997 OR C1PAA2I1 = 999999998 OR C1PAA2I1 = 999999999) THEN C1PAA2I1 = .;
   IF (C1PAA2J = 7 OR C1PAA2J = 8 OR C1PAA2J = 9) THEN C1PAA2J = .;
   IF (C1PAA2J1 = 999999997 OR C1PAA2J1 = 999999998 OR C1PAA2J1 = 999999999) THEN C1PAA2J1 = .;
   IF (C1PAA2K = 7 OR C1PAA2K = 8 OR C1PAA2K = 9) THEN C1PAA2K = .;
   IF (C1PAA2K1 = 999999997 OR C1PAA2K1 = 999999998 OR C1PAA2K1 = 999999999) THEN C1PAA2K1 = .;
   IF (C1PAA2L = 7 OR C1PAA2L = 8 OR C1PAA2L = 9) THEN C1PAA2L = .;
   IF (C1PAA2L2 = 999999997 OR C1PAA2L2 = 999999998 OR C1PAA2L2 = 999999999) THEN C1PAA2L2 = .;
   IF (C1PAA2M = 7 OR C1PAA2M = 8 OR C1PAA2M = 9) THEN C1PAA2M = .;
   IF (C1PAA2N = 7 OR C1PAA2N = 8 OR C1PAA2N = 9) THEN C1PAA2N = .;
   IF (C1PAA2O = 7 OR C1PAA2O = 8 OR C1PAA2O = 9) THEN C1PAA2O = .;
   IF (C1PAA2P = 7 OR C1PAA2P = 8 OR C1PAA2P = 9) THEN C1PAA2P = .;
   IF (C1PAA2Q = 7 OR C1PAA2Q = 8 OR C1PAA2Q = 9) THEN C1PAA2Q = .;
   IF (C1PAA2R = 7 OR C1PAA2R = 8 OR C1PAA2R = 9) THEN C1PAA2R = .;
   IF (C1PAA2S = 7 OR C1PAA2S = 8 OR C1PAA2S = 9) THEN C1PAA2S = .;
   IF (C1PAA2T = 7 OR C1PAA2T = 8 OR C1PAA2T = 9) THEN C1PAA2T = .;
   IF (C1PAA2U = 7 OR C1PAA2U = 8 OR C1PAA2U = 9) THEN C1PAA2U = .;
   IF (C1PAA2V = 7 OR C1PAA2V = 8 OR C1PAA2V = 9) THEN C1PAA2V = .;
   IF (C1PAA2W = 7 OR C1PAA2W = 8 OR C1PAA2W = 9) THEN C1PAA2W = .;
   IF (C1PAA2X = 7 OR C1PAA2X = 8 OR C1PAA2X = 9) THEN C1PAA2X = .;
   IF (C1PAA2Y = 7 OR C1PAA2Y = 8 OR C1PAA2Y = 9) THEN C1PAA2Y = .;
   IF (C1PAA2Z = 7 OR C1PAA2Z = 8 OR C1PAA2Z = 9) THEN C1PAA2Z = .;
   IF (C1PAA3 = 7 OR C1PAA3 = 8) THEN C1PAA3 = .;
   IF (C1PAA3A = 7 OR C1PAA3A = 8 OR C1PAA3A = 9) THEN C1PAA3A = .;
   IF (C1PAA4 = 7 OR C1PAA4 = 8) THEN C1PAA4 = .;
   IF (C1PAA5 = 7 OR C1PAA5 = 8) THEN C1PAA5 = .;
   IF (C1PAA6 = 7 OR C1PAA6 = 8) THEN C1PAA6 = .;
   IF (C1PAA7 = 7 OR C1PAA7 = 8) THEN C1PAA7 = .;
   IF (C1PAA8 = 7 OR C1PAA8 = 8) THEN C1PAA8 = .;
   IF (C1PA1 = 7 OR C1PA1 = 8) THEN C1PA1 = .;
   IF (C1PA2 = 7 OR C1PA2 = 8) THEN C1PA2 = .;
   IF (C1PA3 = 7 OR C1PA3 = 8) THEN C1PA3 = .;
   IF (C1PA4 = 97 OR C1PA4 = 98) THEN C1PA4 = .;
   IF (C1PA4A = 7 OR C1PA4A = 8 OR C1PA4A = 9) THEN C1PA4A = .;
   IF (C1PA4BA = 97 OR C1PA4BA = 98 OR C1PA4BA = 99) THEN C1PA4BA = .;
   IF (C1PA4BB = 97 OR C1PA4BB = 98 OR C1PA4BB = 99) THEN C1PA4BB = .;
   IF (C1PA4BC = 97 OR C1PA4BC = 98 OR C1PA4BC = 99) THEN C1PA4BC = .;
   IF (C1PA5 = 97 OR C1PA5 = 98 OR C1PA5 = 99) THEN C1PA5 = .;
   IF (C1PA5A = 7 OR C1PA5A = 8 OR C1PA5A = 9) THEN C1PA5A = .;
   IF (C1PA5BA = 97 OR C1PA5BA = 98 OR C1PA5BA = 99) THEN C1PA5BA = .;
   IF (C1PA5BB = 97 OR C1PA5BB = 98 OR C1PA5BB = 99) THEN C1PA5BB = .;
   IF (C1PA5BC = 97 OR C1PA5BC = 98 OR C1PA5BC = 99) THEN C1PA5BC = .;
   IF (C1PA6A = 7 OR C1PA6A = 8) THEN C1PA6A = .;
   IF (C1PA6B = 7 OR C1PA6B = 8) THEN C1PA6B = .;
   IF (C1PA6C = 7 OR C1PA6C = 8) THEN C1PA6C = .;
   IF (C1PA6D = 7 OR C1PA6D = 8) THEN C1PA6D = .;
   IF (C1PA7 = 7 OR C1PA7 = 8) THEN C1PA7 = .;
   IF (C1PA7A = 97 OR C1PA7A = 98 OR C1PA7A = 99) THEN C1PA7A = .;
   IF (C1PA7BA = 97 OR C1PA7BA = 98 OR C1PA7BA = 99) THEN C1PA7BA = .;
   IF (C1PA7BB = 97 OR C1PA7BB = 98 OR C1PA7BB = 99) THEN C1PA7BB = .;
   IF (C1PA7BC = 97 OR C1PA7BC = 98 OR C1PA7BC = 99) THEN C1PA7BC = .;
   IF (C1PA7BD = 97 OR C1PA7BD = 98 OR C1PA7BD = 99) THEN C1PA7BD = .;
   IF (C1PA7BE = 97 OR C1PA7BE = 98 OR C1PA7BE = 99) THEN C1PA7BE = .;
   IF (C1PA7BF = 97 OR C1PA7BF = 98 OR C1PA7BF = 99) THEN C1PA7BF = .;
   IF (C1PA7BG = 97 OR C1PA7BG = 98 OR C1PA7BG = 99) THEN C1PA7BG = .;
   IF (C1PA7BH = 97 OR C1PA7BH = 98 OR C1PA7BH = 99) THEN C1PA7BH = .;
   IF (C1PA7BI = 97 OR C1PA7BI = 98 OR C1PA7BI = 99) THEN C1PA7BI = .;
   IF (C1PA7BJ = 97 OR C1PA7BJ = 98 OR C1PA7BJ = 99) THEN C1PA7BJ = .;
   IF (C1PA7C = 7 OR C1PA7C = 8 OR C1PA7C = 9) THEN C1PA7C = .;
   IF (C1PA7D = 7 OR C1PA7D = 8 OR C1PA7D = 9) THEN C1PA7D = .;
   IF (C1PA8 = 7 OR C1PA8 = 8 OR C1PA8 = 9) THEN C1PA8 = .;
   IF (C1PA8A = 9997 OR C1PA8A = 9998 OR C1PA8A = 9999) THEN C1PA8A = .;
   IF (C1PA9 = 7 OR C1PA9 = 8 OR C1PA9 = 9) THEN C1PA9 = .;
   IF (C1PA9A = 7 OR C1PA9A = 8 OR C1PA9A = 9) THEN C1PA9A = .;
   IF (C1PA9B = 7 OR C1PA9B = 8 OR C1PA9B = 9) THEN C1PA9B = .;
   IF (C1PHRTRS = 8) THEN C1PHRTRS = .;
   IF (C1PHRTDX = 8) THEN C1PHRTDX = .;
   IF (C1PA10A = 7 OR C1PA10A = 8) THEN C1PA10A = .;
   IF (C1PA10B = 7 OR C1PA10B = 8) THEN C1PA10B = .;
   IF (C1PA10C = 7 OR C1PA10C = 8) THEN C1PA10C = .;
   IF (C1PA10D = 7 OR C1PA10D = 8) THEN C1PA10D = .;
   IF (C1PA10E = 7 OR C1PA10E = 8) THEN C1PA10E = .;
   IF (C1PA10F = 7 OR C1PA10F = 8) THEN C1PA10F = .;
   IF (C1PA10G = 7 OR C1PA10G = 8) THEN C1PA10G = .;
   IF (C1PA10H = 7 OR C1PA10H = 8) THEN C1PA10H = .;
   IF (C1PA11 = 7 OR C1PA11 = 8) THEN C1PA11 = .;
   IF (C1PA12 = 7 OR C1PA12 = 8) THEN C1PA12 = .;
   IF (C1PA13 = 7 OR C1PA13 = 8) THEN C1PA13 = .;
   IF (C1PA14 = 7 OR C1PA14 = 8) THEN C1PA14 = .;
   IF (C1PA15 = 7 OR C1PA15 = 8) THEN C1PA15 = .;
   IF (C1PA16 = 7 OR C1PA16 = 8 OR C1PA16 = 9) THEN C1PA16 = .;
   IF (C1PA17 = 7 OR C1PA17 = 8) THEN C1PA17 = .;
   IF (C1PA18 = 7 OR C1PA18 = 8) THEN C1PA18 = .;
   IF (C1PA19 = 7 OR C1PA19 = 8 OR C1PA19 = 9) THEN C1PA19 = .;
   IF (C1PA20 = 7 OR C1PA20 = 8 OR C1PA20 = 9) THEN C1PA20 = .;
   IF (C1PA21 = 7 OR C1PA21 = 8 OR C1PA21 = 9) THEN C1PA21 = .;
   IF (C1PA22 = 7 OR C1PA22 = 8 OR C1PA22 = 9) THEN C1PA22 = .;
   IF (C1PANGIN = 8) THEN C1PANGIN = .;
   IF (C1PA23 = 7 OR C1PA23 = 8) THEN C1PA23 = .;
   IF (C1PA23A = 97 OR C1PA23A = 98 OR C1PA23A = 99) THEN C1PA23A = .;
   IF (C1PA23B = 7 OR C1PA23B = 8 OR C1PA23B = 9) THEN C1PA23B = .;
   IF (C1PA23CA = 97 OR C1PA23CA = 98 OR C1PA23CA = 99) THEN C1PA23CA = .;
   IF (C1PA23CB = 97 OR C1PA23CB = 98 OR C1PA23CB = 99) THEN C1PA23CB = .;
   IF (C1PA23CC = 97 OR C1PA23CC = 98 OR C1PA23CC = 99) THEN C1PA23CC = .;
   IF (C1PA23CD = 97 OR C1PA23CD = 98 OR C1PA23CD = 99) THEN C1PA23CD = .;
   IF (C1PA23CE = 97 OR C1PA23CE = 98 OR C1PA23CE = 99) THEN C1PA23CE = .;
   IF (C1PA23CF = 97 OR C1PA23CF = 98 OR C1PA23CF = 99) THEN C1PA23CF = .;
   IF (C1PA23CG = 97 OR C1PA23CG = 98 OR C1PA23CG = 99) THEN C1PA23CG = .;
   IF (C1PA23CH = 97 OR C1PA23CH = 98 OR C1PA23CH = 99) THEN C1PA23CH = .;
   IF (C1PA23CI = 97 OR C1PA23CI = 98 OR C1PA23CI = 99) THEN C1PA23CI = .;
   IF (C1PA23CJ = 97 OR C1PA23CJ = 98 OR C1PA23CJ = 99) THEN C1PA23CJ = .;
   IF (C1PA24 = 7 OR C1PA24 = 8 OR C1PA24 = 9) THEN C1PA24 = .;
   IF (C1PA24A = 97 OR C1PA24A = 98 OR C1PA24A = 99) THEN C1PA24A = .;
   IF (C1PA24B = 7 OR C1PA24B = 8 OR C1PA24B = 9) THEN C1PA24B = .;
   IF (C1PA24C = 7 OR C1PA24C = 8 OR C1PA24C = 9) THEN C1PA24C = .;
   IF (C1PA24D = 7 OR C1PA24D = 8 OR C1PA24D = 9) THEN C1PA24D = .;
   IF (C1PA24EA = 7 OR C1PA24EA = 8 OR C1PA24EA = 9) THEN C1PA24EA = .;
   IF (C1PA24EB = 7 OR C1PA24EB = 8 OR C1PA24EB = 9) THEN C1PA24EB = .;
   IF (C1PA24EC = 7 OR C1PA24EC = 8 OR C1PA24EC = 9) THEN C1PA24EC = .;
   IF (C1PA24ED = 7 OR C1PA24ED = 8 OR C1PA24ED = 9) THEN C1PA24ED = .;
   IF (C1PA24EE = 7 OR C1PA24EE = 8 OR C1PA24EE = 9) THEN C1PA24EE = .;
   IF (C1PA24EF = 7 OR C1PA24EF = 8 OR C1PA24EF = 9) THEN C1PA24EF = .;
   IF (C1PA25NM = 97 OR C1PA25NM = 98) THEN C1PA25NM = .;
   IF (C1PA25IN = 7 OR C1PA25IN = 8 OR C1PA25IN = 9) THEN C1PA25IN = .;
   IF (C1PA25A = 7 OR C1PA25A = 8 OR C1PA25A = 9) THEN C1PA25A = .;
   IF (C1PA25BS = 997 OR C1PA25BS = 998 OR C1PA25BS = 999) THEN C1PA25BS = .;
   IF (C1PA25BD = 997 OR C1PA25BD = 998 OR C1PA25BD = 999) THEN C1PA25BD = .;
   IF (C1PA26 = 7 OR C1PA26 = 8) THEN C1PA26 = .;
   IF (C1PA27 = 7 OR C1PA27 = 8 OR C1PA27 = 9) THEN C1PA27 = .;
   IF (C1PA27A = 7 OR C1PA27A = 8 OR C1PA27A = 9) THEN C1PA27A = .;
   IF (C1PA27B = 7 OR C1PA27B = 8 OR C1PA27B = 9) THEN C1PA27B = .;
   IF (C1PCACRS = 8) THEN C1PCACRS = .;
   IF (C1PCACDX = 8) THEN C1PCACDX = .;
   IF (C1PA28A = 7 OR C1PA28A = 8 OR C1PA28A = 9) THEN C1PA28A = .;
   IF (C1PA28B = 7 OR C1PA28B = 8 OR C1PA28B = 9) THEN C1PA28B = .;
   IF (C1PA28C = 7 OR C1PA28C = 8 OR C1PA28C = 9) THEN C1PA28C = .;
   IF (C1PA28D = 7 OR C1PA28D = 8 OR C1PA28D = 9) THEN C1PA28D = .;
   IF (C1PA28E = 7 OR C1PA28E = 8 OR C1PA28E = 9) THEN C1PA28E = .;
   IF (C1PA28F = 7 OR C1PA28F = 8 OR C1PA28F = 9) THEN C1PA28F = .;
   IF (C1PA28G = 7 OR C1PA28G = 8 OR C1PA28G = 9) THEN C1PA28G = .;
   IF (C1PA28H = 7 OR C1PA28H = 8 OR C1PA28H = 9) THEN C1PA28H = .;
   IF (C1PA28I = 7 OR C1PA28I = 8 OR C1PA28I = 9) THEN C1PA28I = .;
   IF (C1PA28J = 7 OR C1PA28J = 8 OR C1PA28J = 9) THEN C1PA28J = .;
   IF (C1PA28AA = 97 OR C1PA28AA = 98 OR C1PA28AA = 99) THEN C1PA28AA = .;
   IF (C1PA28BB = 97 OR C1PA28BB = 98 OR C1PA28BB = 99) THEN C1PA28BB = .;
   IF (C1PA28CC = 97 OR C1PA28CC = 98 OR C1PA28CC = 99) THEN C1PA28CC = .;
   IF (C1PA28DD = 97 OR C1PA28DD = 98 OR C1PA28DD = 99) THEN C1PA28DD = .;
   IF (C1PA28EE = 97 OR C1PA28EE = 98 OR C1PA28EE = 99) THEN C1PA28EE = .;
   IF (C1PA28FF = 97 OR C1PA28FF = 98 OR C1PA28FF = 99) THEN C1PA28FF = .;
   IF (C1PA28GG = 97 OR C1PA28GG = 98 OR C1PA28GG = 99) THEN C1PA28GG = .;
   IF (C1PA28HH = 97 OR C1PA28HH = 98 OR C1PA28HH = 99) THEN C1PA28HH = .;
   IF (C1PA28II = 97 OR C1PA28II = 98 OR C1PA28II = 99) THEN C1PA28II = .;
   IF (C1PA28JJ = 97 OR C1PA28JJ = 98 OR C1PA28JJ = 99) THEN C1PA28JJ = .;
   IF (C1PA29 = 7 OR C1PA29 = 8 OR C1PA29 = 9) THEN C1PA29 = .;
   IF (C1PA29AA = 7 OR C1PA29AA = 8 OR C1PA29AA = 9) THEN C1PA29AA = .;
   IF (C1PA29AB = 7 OR C1PA29AB = 8 OR C1PA29AB = 9) THEN C1PA29AB = .;
   IF (C1PA29AC = 7 OR C1PA29AC = 8 OR C1PA29AC = 9) THEN C1PA29AC = .;
   IF (C1PA29AD = 7 OR C1PA29AD = 8 OR C1PA29AD = 9) THEN C1PA29AD = .;
   IF (C1PA29AE = 7 OR C1PA29AE = 8 OR C1PA29AE = 9) THEN C1PA29AE = .;
   IF (C1PA29AF = 7 OR C1PA29AF = 8 OR C1PA29AF = 9) THEN C1PA29AF = .;
   IF (C1PA29AG = 7 OR C1PA29AG = 8 OR C1PA29AG = 9) THEN C1PA29AG = .;
   IF (C1PA29AH = 7 OR C1PA29AH = 8 OR C1PA29AH = 9) THEN C1PA29AH = .;
   IF (C1PA29AI = 7 OR C1PA29AI = 8 OR C1PA29AI = 9) THEN C1PA29AI = .;
   IF (C1PA30A = 7 OR C1PA30A = 8) THEN C1PA30A = .;
   IF (C1PA30B = 7 OR C1PA30B = 8) THEN C1PA30B = .;
   IF (C1PA30C = 7 OR C1PA30C = 8) THEN C1PA30C = .;
   IF (C1PA30D = 7 OR C1PA30D = 8) THEN C1PA30D = .;
   IF (C1PA30E = 7 OR C1PA30E = 8) THEN C1PA30E = .;
   IF (C1PA30F = 7 OR C1PA30F = 8) THEN C1PA30F = .;
   IF (C1PA31A = 7 OR C1PA31A = 8 OR C1PA31A = 9) THEN C1PA31A = .;
   IF (C1PA31B = 7 OR C1PA31B = 8 OR C1PA31B = 9) THEN C1PA31B = .;
   IF (C1PA31C = 7 OR C1PA31C = 8 OR C1PA31C = 9) THEN C1PA31C = .;
   IF (C1PA31D = 7 OR C1PA31D = 8 OR C1PA31D = 9) THEN C1PA31D = .;
   IF (C1PA31E = 7 OR C1PA31E = 8 OR C1PA31E = 9) THEN C1PA31E = .;
   IF (C1PA31F = 7 OR C1PA31F = 8 OR C1PA31F = 9) THEN C1PA31F = .;
   IF (C1PA31H = 7 OR C1PA31H = 8 OR C1PA31H = 9) THEN C1PA31H = .;
   IF (C1PA31I = 7 OR C1PA31I = 8 OR C1PA31I = 9) THEN C1PA31I = .;
   IF (C1PA31J = 7 OR C1PA31J = 8 OR C1PA31J = 9) THEN C1PA31J = .;
   IF (C1PA32A = 7 OR C1PA32A = 8 OR C1PA32A = 9) THEN C1PA32A = .;
   IF (C1PA32C = 7 OR C1PA32C = 8 OR C1PA32C = 9) THEN C1PA32C = .;
   IF (C1PA32D = 7 OR C1PA32D = 8 OR C1PA32D = 9) THEN C1PA32D = .;
   IF (C1PA32E = 7 OR C1PA32E = 8 OR C1PA32E = 9) THEN C1PA32E = .;
   IF (C1PA32G = 7 OR C1PA32G = 8 OR C1PA32G = 9) THEN C1PA32G = .;
   IF (C1PA32H = 7 OR C1PA32H = 8 OR C1PA32H = 9) THEN C1PA32H = .;
   IF (C1PA32J = 7 OR C1PA32J = 8 OR C1PA32J = 9) THEN C1PA32J = .;
   IF (C1PA33A = 7 OR C1PA33A = 8 OR C1PA33A = 9) THEN C1PA33A = .;
   IF (C1PA33C = 7 OR C1PA33C = 8 OR C1PA33C = 9) THEN C1PA33C = .;
   IF (C1PA33D = 7 OR C1PA33D = 8 OR C1PA33D = 9) THEN C1PA33D = .;
   IF (C1PA33E = 7 OR C1PA33E = 8 OR C1PA33E = 9) THEN C1PA33E = .;
   IF (C1PA33G = 7 OR C1PA33G = 8 OR C1PA33G = 9) THEN C1PA33G = .;
   IF (C1PA33H = 7 OR C1PA33H = 8 OR C1PA33H = 9) THEN C1PA33H = .;
   IF (C1PA33J = 7 OR C1PA33J = 8 OR C1PA33J = 9) THEN C1PA33J = .;
   IF (C1PA34A = 7 OR C1PA34A = 8 OR C1PA34A = 9) THEN C1PA34A = .;
   IF (C1PA34B = 7 OR C1PA34B = 8 OR C1PA34B = 9) THEN C1PA34B = .;
   IF (C1PA34C = 7 OR C1PA34C = 8 OR C1PA34C = 9) THEN C1PA34C = .;
   IF (C1PA34D = 7 OR C1PA34D = 8 OR C1PA34D = 9) THEN C1PA34D = .;
   IF (C1PA34E = 7 OR C1PA34E = 8 OR C1PA34E = 9) THEN C1PA34E = .;
   IF (C1PA34F = 7 OR C1PA34F = 8 OR C1PA34F = 9) THEN C1PA34F = .;
   IF (C1PA34H = 7 OR C1PA34H = 8 OR C1PA34H = 9) THEN C1PA34H = .;
   IF (C1PA34I = 7 OR C1PA34I = 8 OR C1PA34I = 9) THEN C1PA34I = .;
   IF (C1PA34J = 7 OR C1PA34J = 8 OR C1PA34J = 9) THEN C1PA34J = .;
   IF (C1PA35A = 7 OR C1PA35A = 8 OR C1PA35A = 9) THEN C1PA35A = .;
   IF (C1PA35B = 7 OR C1PA35B = 8 OR C1PA35B = 9) THEN C1PA35B = .;
   IF (C1PA35C = 7 OR C1PA35C = 8 OR C1PA35C = 9) THEN C1PA35C = .;
   IF (C1PA35D = 7 OR C1PA35D = 8 OR C1PA35D = 9) THEN C1PA35D = .;
   IF (C1PA35E = 7 OR C1PA35E = 8 OR C1PA35E = 9) THEN C1PA35E = .;
   IF (C1PA35F = 7 OR C1PA35F = 8 OR C1PA35F = 9) THEN C1PA35F = .;
   IF (C1PA35G = 7 OR C1PA35G = 8 OR C1PA35G = 9) THEN C1PA35G = .;
   IF (C1PA35H = 7 OR C1PA35H = 8 OR C1PA35H = 9) THEN C1PA35H = .;
   IF (C1PA35I = 7 OR C1PA35I = 8 OR C1PA35I = 9) THEN C1PA35I = .;
   IF (C1PA35J = 7 OR C1PA35J = 8 OR C1PA35J = 9) THEN C1PA35J = .;
   IF (C1PA36A = 7 OR C1PA36A = 8 OR C1PA36A = 9) THEN C1PA36A = .;
   IF (C1PA36AM = 97 OR C1PA36AM = 98 OR C1PA36AM = 99) THEN C1PA36AM = .;
   IF (C1PA36AY = 9997 OR C1PA36AY = 9998 OR C1PA36AY = 9999) THEN C1PA36AY = .;
   IF (C1PA36B = 7 OR C1PA36B = 8 OR C1PA36B = 9) THEN C1PA36B = .;
   IF (C1PA36C = 7 OR C1PA36C = 8 OR C1PA36C = 9) THEN C1PA36C = .;
   IF (C1PA36DM = 97 OR C1PA36DM = 98 OR C1PA36DM = 99) THEN C1PA36DM = .;
   IF (C1PA36DY = 9997 OR C1PA36DY = 9998 OR C1PA36DY = 9999) THEN C1PA36DY = .;
   IF (C1PA36EM = 97 OR C1PA36EM = 98 OR C1PA36EM = 99) THEN C1PA36EM = .;
   IF (C1PA36EY = 9997 OR C1PA36EY = 9998 OR C1PA36EY = 9999) THEN C1PA36EY = .;
   IF (C1PA37 = 97 OR C1PA37 = 98) THEN C1PA37 = .;
   IF (C1PA38A = 7 OR C1PA38A = 8 OR C1PA38A = 9) THEN C1PA38A = .;
   IF (C1PA38B = 97 OR C1PA38B = 98 OR C1PA38B = 99) THEN C1PA38B = .;
   IF (C1PA39 = 7 OR C1PA39 = 8 OR C1PA39 = 9) THEN C1PA39 = .;
   IF (C1PA40 = 97 OR C1PA40 = 98 OR C1PA40 = 99) THEN C1PA40 = .;
   IF (C1PA41 = 7 OR C1PA41 = 8 OR C1PA41 = 9) THEN C1PA41 = .;
   IF (C1PA42 = 97 OR C1PA42 = 98 OR C1PA42 = 99) THEN C1PA42 = .;
   IF (C1PA43 = 97 OR C1PA43 = 98 OR C1PA43 = 99) THEN C1PA43 = .;
   IF (C1PA44 = 7 OR C1PA44 = 8) THEN C1PA44 = .;
   IF (C1PA46 = 7 OR C1PA46 = 8) THEN C1PA46 = .;
   IF (C1PA48 = 7 OR C1PA48 = 8 OR C1PA48 = 9) THEN C1PA48 = .;
   IF (C1PA47 = 7 OR C1PA47 = 8) THEN C1PA47 = .;
   IF (C1PA49 = 97 OR C1PA49 = 98) THEN C1PA49 = .;
   IF (C1PA50 = 7 OR C1PA50 = 8 OR C1PA50 = 9) THEN C1PA50 = .;
   IF (C1PA51 = 7 OR C1PA51 = 8 OR C1PA51 = 9) THEN C1PA51 = .;
   IF (C1PA51A = 7 OR C1PA51A = 8 OR C1PA51A = 9) THEN C1PA51A = .;
   IF (C1PA52 = 97 OR C1PA52 = 98 OR C1PA52 = 99) THEN C1PA52 = .;
   IF (C1PA53 = 97 OR C1PA53 = 98 OR C1PA53 = 99) THEN C1PA53 = .;
   IF (C1PA54 = 7 OR C1PA54 = 8 OR C1PA54 = 9) THEN C1PA54 = .;
   IF (C1PA54A = 7 OR C1PA54A = 8 OR C1PA54A = 9) THEN C1PA54A = .;
   IF (C1PA55 = 97.0 OR C1PA55 = 98.0 OR C1PA55 = 99.0) THEN C1PA55 = .;
   IF (C1PA56 = 97 OR C1PA56 = 98 OR C1PA56 = 99) THEN C1PA56 = .;
   IF (C1PA57 = 97 OR C1PA57 = 98 OR C1PA57 = 99) THEN C1PA57 = .;
   IF (C1PA59 = 7 OR C1PA59 = 8) THEN C1PA59 = .;
   IF (C1PA60 = 7 OR C1PA60 = 8) THEN C1PA60 = .;
   IF (C1PA61 = 7 OR C1PA61 = 8 OR C1PA61 = 9) THEN C1PA61 = .;
   IF (C1PA62 = 7 OR C1PA62 = 8 OR C1PA62 = 9) THEN C1PA62 = .;
   IF (C1PA63 = 7 OR C1PA63 = 8 OR C1PA63 = 9) THEN C1PA63 = .;
   IF (C1PA64 = 7 OR C1PA64 = 8 OR C1PA64 = 9) THEN C1PA64 = .;
   IF (C1PA65 = 7 OR C1PA65 = 8 OR C1PA65 = 9) THEN C1PA65 = .;
   IF (C1PA65A = 7 OR C1PA65A = 8 OR C1PA65A = 9) THEN C1PA65A = .;
   IF (C1PA66 = 7 OR C1PA66 = 8 OR C1PA66 = 9) THEN C1PA66 = .;
   IF (C1PA66A = 7 OR C1PA66A = 8 OR C1PA66A = 9) THEN C1PA66A = .;
   IF (C1PA67 = 7 OR C1PA67 = 8 OR C1PA67 = 9) THEN C1PA67 = .;
   IF (C1PA68 = 7 OR C1PA68 = 8 OR C1PA68 = 9) THEN C1PA68 = .;
   IF (C1PA69 = 7 OR C1PA69 = 8 OR C1PA69 = 9) THEN C1PA69 = .;
   IF (C1PA70 = 97 OR C1PA70 = 98 OR C1PA70 = 99) THEN C1PA70 = .;
   IF (C1PA71MO = 97 OR C1PA71MO = 98 OR C1PA71MO = 99) THEN C1PA71MO = .;
   IF (C1PA71YR = 9997 OR C1PA71YR = 9998 OR C1PA71YR = 9999) THEN C1PA71YR = .;
   IF (C1PA72 = 7 OR C1PA72 = 8 OR C1PA72 = 9) THEN C1PA72 = .;
   IF (C1PA73 = 7 OR C1PA73 = 8 OR C1PA73 = 9) THEN C1PA73 = .;
   IF (C1PA74 = 7 OR C1PA74 = 8 OR C1PA74 = 9) THEN C1PA74 = .;
   IF (C1PA75 = 7 OR C1PA75 = 8 OR C1PA75 = 9) THEN C1PA75 = .;
   IF (C1PA76 = 7 OR C1PA76 = 8 OR C1PA76 = 9) THEN C1PA76 = .;
   IF (C1PA76A = 7 OR C1PA76A = 8 OR C1PA76A = 9) THEN C1PA76A = .;
   IF (C1PA77 = 7 OR C1PA77 = 8 OR C1PA77 = 9) THEN C1PA77 = .;
   IF (C1PA77A = 7 OR C1PA77A = 8 OR C1PA77A = 9) THEN C1PA77A = .;
   IF (C1PA78 = 7 OR C1PA78 = 8 OR C1PA78 = 9) THEN C1PA78 = .;
   IF (C1PA79 = 7 OR C1PA79 = 8 OR C1PA79 = 9) THEN C1PA79 = .;
   IF (C1PA80 = 7 OR C1PA80 = 8 OR C1PA80 = 9) THEN C1PA80 = .;
   IF (C1PA81 = 97 OR C1PA81 = 98 OR C1PA81 = 99) THEN C1PA81 = .;
   IF (C1PA82MO = 97 OR C1PA82MO = 98 OR C1PA82MO = 99) THEN C1PA82MO = .;
   IF (C1PA82YR = 9997 OR C1PA82YR = 9998 OR C1PA82YR = 9999) THEN C1PA82YR = .;
   IF (C1PA83 = 7 OR C1PA83 = 8) THEN C1PA83 = .;
   IF (C1PA83A = 7 OR C1PA83A = 8 OR C1PA83A = 9) THEN C1PA83A = .;
   IF (C1PA84 = 7 OR C1PA84 = 8 OR C1PA84 = 9) THEN C1PA84 = .;
   IF (C1PA84A = 7 OR C1PA84A = 8 OR C1PA84A = 9) THEN C1PA84A = .;
   IF (C1PA85 = 7 OR C1PA85 = 8 OR C1PA85 = 9) THEN C1PA85 = .;
   IF (C1PA85A = 7 OR C1PA85A = 8 OR C1PA85A = 9) THEN C1PA85A = .;
   IF (C1PA86 = 7 OR C1PA86 = 8 OR C1PA86 = 9) THEN C1PA86 = .;
   IF (C1PA86A = 7 OR C1PA86A = 8 OR C1PA86A = 9) THEN C1PA86A = .;
   IF (C1PA87 = 7 OR C1PA87 = 8 OR C1PA87 = 9) THEN C1PA87 = .;
   IF (C1PA87A = 7 OR C1PA87A = 8 OR C1PA87A = 9) THEN C1PA87A = .;
   IF (C1PA88A = 7 OR C1PA88A = 8 OR C1PA88A = 9) THEN C1PA88A = .;
   IF (C1PA88B = 7 OR C1PA88B = 8 OR C1PA88B = 9) THEN C1PA88B = .;
   IF (C1PA88C = 7 OR C1PA88C = 8 OR C1PA88C = 9) THEN C1PA88C = .;
   IF (C1PA88D = 7 OR C1PA88D = 8 OR C1PA88D = 9) THEN C1PA88D = .;
   IF (C1PA88E = 7 OR C1PA88E = 8 OR C1PA88E = 9) THEN C1PA88E = .;
   IF (C1PA88F = 7 OR C1PA88F = 8 OR C1PA88F = 9) THEN C1PA88F = .;
   IF (C1PA88G = 7 OR C1PA88G = 8 OR C1PA88G = 9) THEN C1PA88G = .;
   IF (C1PA88H = 7 OR C1PA88H = 8 OR C1PA88H = 9) THEN C1PA88H = .;
   IF (C1PA88I = 7 OR C1PA88I = 8 OR C1PA88I = 9) THEN C1PA88I = .;
   IF (C1PA88J = 7 OR C1PA88J = 8 OR C1PA88J = 9) THEN C1PA88J = .;
   IF (C1PA89 = 7 OR C1PA89 = 8 OR C1PA89 = 9) THEN C1PA89 = .;
   IF (C1PA90 = 7 OR C1PA90 = 8) THEN C1PA90 = .;
   IF (C1PA90A = 7 OR C1PA90A = 8 OR C1PA90A = 9) THEN C1PA90A = .;
   IF (C1PA91 = 997 OR C1PA91 = 998 OR C1PA91 = 999) THEN C1PA91 = .;
   IF (C1PA92 = 7 OR C1PA92 = 8 OR C1PA92 = 9) THEN C1PA92 = .;
   IF (C1PA92A = 7 OR C1PA92A = 8 OR C1PA92A = 9) THEN C1PA92A = .;
   IF (C1PA92B = 7 OR C1PA92B = 8 OR C1PA92B = 9) THEN C1PA92B = .;
   IF (C1PA92C = 7 OR C1PA92C = 8 OR C1PA92C = 9) THEN C1PA92C = .;
   IF (C1PA92D = 7 OR C1PA92D = 8 OR C1PA92D = 9) THEN C1PA92D = .;
   IF (C1PA92E = 7 OR C1PA92E = 8 OR C1PA92E = 9) THEN C1PA92E = .;
   IF (C1PA92F = 7 OR C1PA92F = 8 OR C1PA92F = 9) THEN C1PA92F = .;
   IF (C1PB1 = 97 OR C1PB1 = 98) THEN C1PB1 = .;
   IF (C1PB2 = 97 OR C1PB2 = 98) THEN C1PB2 = .;
   IF (C1PB2A1 = 7 OR C1PB2A1 = 8 OR C1PB2A1 = 9) THEN C1PB2A1 = .;
   IF (C1PB2A2 = 7 OR C1PB2A2 = 8 OR C1PB2A2 = 9) THEN C1PB2A2 = .;
   IF (C1PB2A3 = 7 OR C1PB2A3 = 8 OR C1PB2A3 = 9) THEN C1PB2A3 = .;
   IF (C1PB2A4 = 7 OR C1PB2A4 = 8 OR C1PB2A4 = 9) THEN C1PB2A4 = .;
   IF (C1PB2A5 = 7 OR C1PB2A5 = 8 OR C1PB2A5 = 9) THEN C1PB2A5 = .;
   IF (C1PB2A6 = 7 OR C1PB2A6 = 8 OR C1PB2A6 = 9) THEN C1PB2A6 = .;
   IF (C1PB2A7 = 7 OR C1PB2A7 = 8 OR C1PB2A7 = 9) THEN C1PB2A7 = .;
   IF (C1PB2A8 = 7 OR C1PB2A8 = 8 OR C1PB2A8 = 9) THEN C1PB2A8 = .;
   IF (C1PB2A9 = 7 OR C1PB2A9 = 8 OR C1PB2A9 = 9) THEN C1PB2A9 = .;
   IF (C1PB2A10 = 7 OR C1PB2A10 = 8 OR C1PB2A10 = 9) THEN C1PB2A10 = .;
   IF (C1PB2A11 = 7 OR C1PB2A11 = 8 OR C1PB2A11 = 9) THEN C1PB2A11 = .;
   IF (C1PB2AWK = 97 OR C1PB2AWK = 98 OR C1PB2AWK = 99) THEN C1PB2AWK = .;
   IF (C1PB2AA = 7 OR C1PB2AA = 8 OR C1PB2AA = 9) THEN C1PB2AA = .;
   IF (C1PB2B = 7 OR C1PB2B = 8 OR C1PB2B = 9) THEN C1PB2B = .;
   IF (C1PB2BM = 97 OR C1PB2BM = 98 OR C1PB2BM = 99) THEN C1PB2BM = .;
   IF (C1PB2BY = 9997 OR C1PB2BY = 9998 OR C1PB2BY = 9999) THEN C1PB2BY = .;
   IF (C1PB2BBA = 7 OR C1PB2BBA = 8 OR C1PB2BBA = 9) THEN C1PB2BBA = .;
   IF (C1PB2BBB = 7 OR C1PB2BBB = 8 OR C1PB2BBB = 9) THEN C1PB2BBB = .;
   IF (C1PB2BBC = 7 OR C1PB2BBC = 8 OR C1PB2BBC = 9) THEN C1PB2BBC = .;
   IF (C1PB2BBD = 7 OR C1PB2BBD = 8 OR C1PB2BBD = 9) THEN C1PB2BBD = .;
   IF (C1PB2BBE = 7 OR C1PB2BBE = 8 OR C1PB2BBE = 9) THEN C1PB2BBE = .;
   IF (C1PB2BBF = 7 OR C1PB2BBF = 8 OR C1PB2BBF = 9) THEN C1PB2BBF = .;
   IF (C1PB2BBG = 7 OR C1PB2BBG = 8 OR C1PB2BBG = 9) THEN C1PB2BBG = .;
   IF (C1PB2BCN = 997 OR C1PB2BCN = 998 OR C1PB2BCN = 999) THEN C1PB2BCN = .;
   IF (C1PB2BCU = 9) THEN C1PB2BCU = .;
   IF (C1PB2BDN = 997 OR C1PB2BDN = 998 OR C1PB2BDN = 999) THEN C1PB2BDN = .;
   IF (C1PB2BDU = 9) THEN C1PB2BDU = .;
   IF (C1PB2CA = 7 OR C1PB2CA = 8 OR C1PB2CA = 9) THEN C1PB2CA = .;
   IF (C1PB2CB = 997 OR C1PB2CB = 998 OR C1PB2CB = 999) THEN C1PB2CB = .;
   IF (C1PB2CB10 = 7 OR C1PB2CB10 = 8 OR C1PB2CB10 = 9) THEN C1PB2CB10 = .;
   IF (C1PB2CB25 = 7 OR C1PB2CB25 = 8 OR C1PB2CB25 = 9) THEN C1PB2CB25 = .;
   IF (C1PB2C2 = 997 OR C1PB2C2 = 998 OR C1PB2C2 = 999) THEN C1PB2C2 = .;
   IF (C1PB2DN = 997 OR C1PB2DN = 998 OR C1PB2DN = 999) THEN C1PB2DN = .;
   IF (C1PB2DU = 9) THEN C1PB2DU = .;
   IF (C1PB3A = 7 OR C1PB3A = 8 OR C1PB3A = 9) THEN C1PB3A = .;
   IF (C1PB3B = 7 OR C1PB3B = 8 OR C1PB3B = 9) THEN C1PB3B = .;
   IF (C1PB3C = 7 OR C1PB3C = 8 OR C1PB3C = 9) THEN C1PB3C = .;
   IF (C1PB3D = 7 OR C1PB3D = 8 OR C1PB3D = 9) THEN C1PB3D = .;
   IF (C1PB3E = 7 OR C1PB3E = 8 OR C1PB3E = 9) THEN C1PB3E = .;
   IF (C1PB3F = 7 OR C1PB3F = 8 OR C1PB3F = 9) THEN C1PB3F = .;
   IF (C1PB3G = 7 OR C1PB3G = 8 OR C1PB3G = 9) THEN C1PB3G = .;
   IF (C1PB3H = 7 OR C1PB3H = 8 OR C1PB3H = 9) THEN C1PB3H = .;
   IF (C1PB3I = 7 OR C1PB3I = 8 OR C1PB3I = 9) THEN C1PB3I = .;
   IF (C1PB3J = 7 OR C1PB3J = 8 OR C1PB3J = 9) THEN C1PB3J = .;
   IF (C1PB3K = 7 OR C1PB3K = 8 OR C1PB3K = 9) THEN C1PB3K = .;
   IF (C1PB3WK = 97 OR C1PB3WK = 98 OR C1PB3WK = 99) THEN C1PB3WK = .;
   IF (C1PB4N = 997 OR C1PB4N = 998 OR C1PB4N = 999) THEN C1PB4N = .;
   IF (C1PB4U = 8 OR C1PB4U = 9) THEN C1PB4U = .;
   IF (C1PB5A = 7 OR C1PB5A = 8 OR C1PB5A = 9) THEN C1PB5A = .;
   IF (C1PB5B = 7 OR C1PB5B = 8 OR C1PB5B = 9) THEN C1PB5B = .;
   IF (C1PB5C = 7 OR C1PB5C = 8 OR C1PB5C = 9) THEN C1PB5C = .;
   IF (C1PB5D = 7 OR C1PB5D = 8 OR C1PB5D = 9) THEN C1PB5D = .;
   IF (C1PB5E = 7 OR C1PB5E = 8 OR C1PB5E = 9) THEN C1PB5E = .;
   IF (C1PB5F = 7 OR C1PB5F = 8 OR C1PB5F = 9) THEN C1PB5F = .;
   IF (C1PB5G = 7 OR C1PB5G = 8 OR C1PB5G = 9) THEN C1PB5G = .;
   IF (C1PB5 = 97 OR C1PB5 = 98 OR C1PB5 = 99) THEN C1PB5 = .;
   IF (C1PB5AB = 7 OR C1PB5AB = 8 OR C1PB5AB = 9) THEN C1PB5AB = .;
   IF (C1PB6 = 7 OR C1PB6 = 8 OR C1PB6 = 9) THEN C1PB6 = .;
   IF (C1PB7 = 7 OR C1PB7 = 8 OR C1PB7 = 9) THEN C1PB7 = .;
   IF (C1PB7A = 997 OR C1PB7A = 998 OR C1PB7A = 999) THEN C1PB7A = .;
   IF (C1PB8A = 7 OR C1PB8A = 8 OR C1PB8A = 9) THEN C1PB8A = .;
   IF (C1PB8A1 = 7 OR C1PB8A1 = 8 OR C1PB8A1 = 9) THEN C1PB8A1 = .;
   IF (C1PB8C = 7 OR C1PB8C = 8 OR C1PB8C = 9) THEN C1PB8C = .;
   IF (C1POCC >= 9996 AND C1POCC <= 9999) THEN C1POCC = .;
   IF (C1PIND >= 9996 AND C1PIND <= 9999) THEN C1PIND = .;
   IF (C1POCMAJ >= 96 AND C1POCMAJ <= 99) THEN C1POCMAJ = .;
   IF (C1PINDMJ >= 96 AND C1PINDMJ <= 99) THEN C1PINDMJ = .;
   IF (C1PB12 = 997 OR C1PB12 = 998 OR C1PB12 = 999) THEN C1PB12 = .;
   IF (C1PB12A = 997 OR C1PB12A = 998 OR C1PB12A = 999) THEN C1PB12A = .;
   IF (C1PB13 = 997 OR C1PB13 = 998 OR C1PB13 = 999) THEN C1PB13 = .;
   IF (C1PB14 = 7 OR C1PB14 = 8 OR C1PB14 = 9) THEN C1PB14 = .;
   IF (C1PB14A = 997 OR C1PB14A = 998 OR C1PB14A = 999) THEN C1PB14A = .;
   IF (C1PB15A = 7 OR C1PB15A = 8 OR C1PB15A = 9) THEN C1PB15A = .;
   IF (C1PB15A1 = 7 OR C1PB15A1 = 8 OR C1PB15A1 = 9) THEN C1PB15A1 = .;
   IF (C1PB15C = 7 OR C1PB15C = 8 OR C1PB15C = 9) THEN C1PB15C = .;
   IF (C1POCCP >= 9996 AND C1POCCP <= 9999) THEN C1POCCP = .;
   IF (C1PINDP >= 9996 AND C1PINDP <= 9999) THEN C1PINDP = .;
   IF (C1POCPMJ >= 96 AND C1POCPMJ <= 99) THEN C1POCPMJ = .;
   IF (C1PPINMJ >= 96 AND C1PPINMJ <= 99) THEN C1PPINMJ = .;
   IF (C1PB16 = 99999997 OR C1PB16 = 99999998 OR C1PB16 = 99999999) THEN C1PB16 = .;
   IF (C1PB16A25 = 7 OR C1PB16A25 = 8 OR C1PB16A25 = 9) THEN C1PB16A25 = .;
   IF (C1PB16A50 = 7 OR C1PB16A50 = 8 OR C1PB16A50 = 9) THEN C1PB16A50 = .;
   IF (C1PB16A80 = 7 OR C1PB16A80 = 8 OR C1PB16A80 = 9) THEN C1PB16A80 = .;
   IF (C1PB16A35 = 7 OR C1PB16A35 = 8 OR C1PB16A35 = 9) THEN C1PB16A35 = .;
   IF (C1PB16A12 = 7 OR C1PB16A12 = 8 OR C1PB16A12 = 9) THEN C1PB16A12 = .;
   IF (C1PB16A18 = 7 OR C1PB16A18 = 8 OR C1PB16A18 = 9) THEN C1PB16A18 = .;
   IF (C1PB16A5 = 7 OR C1PB16A5 = 8 OR C1PB16A5 = 9) THEN C1PB16A5 = .;
   IF (C1PB17A = 7 OR C1PB17A = 8 OR C1PB17A = 9) THEN C1PB17A = .;
   IF (C1PB17B = 997 OR C1PB17B = 998 OR C1PB17B = 999) THEN C1PB17B = .;
   IF (C1PB17B10 = 7 OR C1PB17B10 = 8 OR C1PB17B10 = 9) THEN C1PB17B10 = .;
   IF (C1PB17B25 = 7 OR C1PB17B25 = 8 OR C1PB17B25 = 9) THEN C1PB17B25 = .;
   IF (C1PB17B5 = 7 OR C1PB17B5 = 8 OR C1PB17B5 = 9) THEN C1PB17B5 = .;
   IF (C1PB19 = 7 OR C1PB19 = 8) THEN C1PB19 = .;
   IF (C1PB20 = 97 OR C1PB20 = 98 OR C1PB20 = 99) THEN C1PB20 = .;
   IF (C1PB21M = 97 OR C1PB21M = 98 OR C1PB21M = 99) THEN C1PB21M = .;
   IF (C1PB21Y = 9997 OR C1PB21Y = 9998 OR C1PB21Y = 9999) THEN C1PB21Y = .;
   IF (C1PB22 = 7 OR C1PB22 = 8 OR C1PB22 = 9) THEN C1PB22 = .;
   IF (C1PB23M = 97 OR C1PB23M = 98 OR C1PB23M = 99) THEN C1PB23M = .;
   IF (C1PB23Y = 9997 OR C1PB23Y = 9998 OR C1PB23Y = 9999) THEN C1PB23Y = .;
   IF (C1PB24M = 97 OR C1PB24M = 98 OR C1PB24M = 99) THEN C1PB24M = .;
   IF (C1PB24Y = 9997 OR C1PB24Y = 9998 OR C1PB24Y = 9999) THEN C1PB24Y = .;
   IF (C1PB25M = 97 OR C1PB25M = 98 OR C1PB25M = 99) THEN C1PB25M = .;
   IF (C1PB25Y = 9997 OR C1PB25Y = 9998 OR C1PB25Y = 9999) THEN C1PB25Y = .;
   IF (C1PB26M = 97 OR C1PB26M = 98 OR C1PB26M = 99) THEN C1PB26M = .;
   IF (C1PB26Y = 9997 OR C1PB26Y = 9998 OR C1PB26Y = 9999) THEN C1PB26Y = .;
   IF (C1PB27M = 97 OR C1PB27M = 98 OR C1PB27M = 99) THEN C1PB27M = .;
   IF (C1PB27Y = 9997 OR C1PB27Y = 9998 OR C1PB27Y = 9999) THEN C1PB27Y = .;
   IF (C1PB28M = 97 OR C1PB28M = 98 OR C1PB28M = 99) THEN C1PB28M = .;
   IF (C1PB28Y = 9997 OR C1PB28Y = 9998 OR C1PB28Y = 9999) THEN C1PB28Y = .;
   IF (C1PB29M = 97 OR C1PB29M = 98 OR C1PB29M = 99) THEN C1PB29M = .;
   IF (C1PB29Y = 9997 OR C1PB29Y = 9998 OR C1PB29Y = 9999) THEN C1PB29Y = .;
   IF (C1PB30 = 7 OR C1PB30 = 8 OR C1PB30 = 9) THEN C1PB30 = .;
   IF (C1PB31N = 997 OR C1PB31N = 998 OR C1PB31N = 999) THEN C1PB31N = .;
   IF (C1PB31M = 9) THEN C1PB31M = .;
   IF (C1PB32A = 7 OR C1PB32A = 8 OR C1PB32A = 9) THEN C1PB32A = .;
   IF (C1PB32Y = 9997 OR C1PB32Y = 9998 OR C1PB32Y = 9999) THEN C1PB32Y = .;
   IF (C1PSAGE = 997 OR C1PSAGE = 998 OR C1PSAGE = 999) THEN C1PSAGE = .;
   IF (C1PB33 = 97 OR C1PB33 = 98 OR C1PB33 = 99) THEN C1PB33 = .;
   IF (C1PB33AA = 7 OR C1PB33AA = 8 OR C1PB33AA = 9) THEN C1PB33AA = .;
   IF (C1PB33AB = 7 OR C1PB33AB = 8 OR C1PB33AB = 9) THEN C1PB33AB = .;
   IF (C1PB33AC = 7 OR C1PB33AC = 8 OR C1PB33AC = 9) THEN C1PB33AC = .;
   IF (C1PB33AD = 7 OR C1PB33AD = 8 OR C1PB33AD = 9) THEN C1PB33AD = .;
   IF (C1PB33AE = 7 OR C1PB33AE = 8 OR C1PB33AE = 9) THEN C1PB33AE = .;
   IF (C1PB33AF = 7 OR C1PB33AF = 8 OR C1PB33AF = 9) THEN C1PB33AF = .;
   IF (C1PB33AG = 7 OR C1PB33AG = 8 OR C1PB33AG = 9) THEN C1PB33AG = .;
   IF (C1PB33AH = 7 OR C1PB33AH = 8 OR C1PB33AH = 9) THEN C1PB33AH = .;
   IF (C1PB33AI = 7 OR C1PB33AI = 8 OR C1PB33AI = 9) THEN C1PB33AI = .;
   IF (C1PB33AJ = 7 OR C1PB33AJ = 8 OR C1PB33AJ = 9) THEN C1PB33AJ = .;
   IF (C1PB33AK = 7 OR C1PB33AK = 8 OR C1PB33AK = 9) THEN C1PB33AK = .;
   IF (C1PB33AWK = 97 OR C1PB33AWK = 98 OR C1PB33AWK = 99) THEN C1PB33AWK = .;
   IF (C1PB33A1 = 7 OR C1PB33A1 = 8 OR C1PB33A1 = 9) THEN C1PB33A1 = .;
   IF (C1PB33B = 7 OR C1PB33B = 8 OR C1PB33B = 9) THEN C1PB33B = .;
   IF (C1PB33BAM = 97 OR C1PB33BAM = 98 OR C1PB33BAM = 99) THEN C1PB33BAM = .;
   IF (C1PB33BAY = 9997 OR C1PB33BAY = 9998 OR C1PB33BAY = 9999) THEN C1PB33BAY = .;
   IF (C1PB33BBA = 7 OR C1PB33BBA = 8 OR C1PB33BBA = 9) THEN C1PB33BBA = .;
   IF (C1PB33BBB = 7 OR C1PB33BBB = 8 OR C1PB33BBB = 9) THEN C1PB33BBB = .;
   IF (C1PB33BBC = 7 OR C1PB33BBC = 8 OR C1PB33BBC = 9) THEN C1PB33BBC = .;
   IF (C1PB33BBD = 7 OR C1PB33BBD = 8 OR C1PB33BBD = 9) THEN C1PB33BBD = .;
   IF (C1PB33BBE = 7 OR C1PB33BBE = 8 OR C1PB33BBE = 9) THEN C1PB33BBE = .;
   IF (C1PB33BBF = 7 OR C1PB33BBF = 8 OR C1PB33BBF = 9) THEN C1PB33BBF = .;
   IF (C1PB33BBG = 7 OR C1PB33BBG = 8 OR C1PB33BBG = 9) THEN C1PB33BBG = .;
   IF (C1PB33BCN = 997 OR C1PB33BCN = 998 OR C1PB33BCN = 999) THEN C1PB33BCN = .;
   IF (C1PB33BCU = 7 OR C1PB33BCU = 8 OR C1PB33BCU = 9) THEN C1PB33BCU = .;
   IF (C1PB33BDN = 997 OR C1PB33BDN = 998 OR C1PB33BDN = 999) THEN C1PB33BDN = .;
   IF (C1PB33BDU = 7 OR C1PB33BDU = 8 OR C1PB33BDU = 9) THEN C1PB33BDU = .;
   IF (C1PB33CA = 7 OR C1PB33CA = 8 OR C1PB33CA = 9) THEN C1PB33CA = .;
   IF (C1PB33CB = 997 OR C1PB33CB = 998 OR C1PB33CB = 999) THEN C1PB33CB = .;
   IF (C1PB33CB10 = 7 OR C1PB33CB10 = 8 OR C1PB33CB10 = 9) THEN C1PB33CB10 = .;
   IF (C1PB33CB25 = 7 OR C1PB33CB25 = 8 OR C1PB33CB25 = 9) THEN C1PB33CB25 = .;
   IF (C1PB33C2 = 997 OR C1PB33C2 = 998 OR C1PB33C2 = 999) THEN C1PB33C2 = .;
   IF (C1PB33DN = 997 OR C1PB33DN = 998 OR C1PB33DN = 999) THEN C1PB33DN = .;
   IF (C1PB33DU = 7 OR C1PB33DU = 8 OR C1PB33DU = 9) THEN C1PB33DU = .;
   IF (C1PB34A = 7 OR C1PB34A = 8 OR C1PB34A = 9) THEN C1PB34A = .;
   IF (C1PB34B = 7 OR C1PB34B = 8 OR C1PB34B = 9) THEN C1PB34B = .;
   IF (C1PB34C = 7 OR C1PB34C = 8 OR C1PB34C = 9) THEN C1PB34C = .;
   IF (C1PB34D = 7 OR C1PB34D = 8 OR C1PB34D = 9) THEN C1PB34D = .;
   IF (C1PB34E = 7 OR C1PB34E = 8 OR C1PB34E = 9) THEN C1PB34E = .;
   IF (C1PB34F = 7 OR C1PB34F = 8 OR C1PB34F = 9) THEN C1PB34F = .;
   IF (C1PB34G = 7 OR C1PB34G = 8 OR C1PB34G = 9) THEN C1PB34G = .;
   IF (C1PB34H = 7 OR C1PB34H = 8 OR C1PB34H = 9) THEN C1PB34H = .;
   IF (C1PB34I = 7 OR C1PB34I = 8 OR C1PB34I = 9) THEN C1PB34I = .;
   IF (C1PB34J = 7 OR C1PB34J = 8 OR C1PB34J = 9) THEN C1PB34J = .;
   IF (C1PB34K = 7 OR C1PB34K = 8 OR C1PB34K = 9) THEN C1PB34K = .;
   IF (C1PB34WK = 97 OR C1PB34WK = 98 OR C1PB34WK = 99) THEN C1PB34WK = .;
   IF (C1PB35N = 997 OR C1PB35N = 998 OR C1PB35N = 999) THEN C1PB35N = .;
   IF (C1PB35U = 7 OR C1PB35U = 8 OR C1PB35U = 9) THEN C1PB35U = .;
   IF (C1PB36A = 7 OR C1PB36A = 8 OR C1PB36A = 9) THEN C1PB36A = .;
   IF (C1PB36B = 7 OR C1PB36B = 8 OR C1PB36B = 9) THEN C1PB36B = .;
   IF (C1PB36C = 7 OR C1PB36C = 8 OR C1PB36C = 9) THEN C1PB36C = .;
   IF (C1PB36D = 7 OR C1PB36D = 8 OR C1PB36D = 9) THEN C1PB36D = .;
   IF (C1PB36E = 7 OR C1PB36E = 8 OR C1PB36E = 9) THEN C1PB36E = .;
   IF (C1PB36F = 7 OR C1PB36F = 8 OR C1PB36F = 9) THEN C1PB36F = .;
   IF (C1PB36G = 7 OR C1PB36G = 8 OR C1PB36G = 9) THEN C1PB36G = .;
   IF (C1PB36 = 97 OR C1PB36 = 98 OR C1PB36 = 99) THEN C1PB36 = .;
   IF (C1PB36A1 = 7 OR C1PB36A1 = 8 OR C1PB36A1 = 9) THEN C1PB36A1 = .;
   IF (C1PB37 = 7 OR C1PB37 = 8 OR C1PB37 = 9) THEN C1PB37 = .;
   IF (C1PB38 = 7 OR C1PB38 = 8 OR C1PB38 = 9) THEN C1PB38 = .;
   IF (C1PB39A = 7 OR C1PB39A = 8 OR C1PB39A = 9) THEN C1PB39A = .;
   IF (C1PB39A1 = 7 OR C1PB39A1 = 8 OR C1PB39A1 = 9) THEN C1PB39A1 = .;
   IF (C1PB39C = 7 OR C1PB39C = 8 OR C1PB39C = 9) THEN C1PB39C = .;
   IF (C1POCCS >= 9996 AND C1POCCS <= 9999) THEN C1POCCS = .;
   IF (C1PINDS >= 9996 AND C1PINDS <= 9999) THEN C1PINDS = .;
   IF (C1PSOCMJ >= 96 AND C1PSOCMJ <= 99) THEN C1PSOCMJ = .;
   IF (C1PSINMJ >= 96 AND C1PSINMJ <= 99) THEN C1PSINMJ = .;
   IF (C1PB40 = 99999997 OR C1PB40 = 99999998 OR C1PB40 = 99999999) THEN C1PB40 = .;
   IF (C1PB40A25 = 7 OR C1PB40A25 = 8 OR C1PB40A25 = 9) THEN C1PB40A25 = .;
   IF (C1PB40A50 = 7 OR C1PB40A50 = 8 OR C1PB40A50 = 9) THEN C1PB40A50 = .;
   IF (C1PB40A80 = 7 OR C1PB40A80 = 8 OR C1PB40A80 = 9) THEN C1PB40A80 = .;
   IF (C1PB40A35 = 7 OR C1PB40A35 = 8 OR C1PB40A35 = 9) THEN C1PB40A35 = .;
   IF (C1PB40A12 = 7 OR C1PB40A12 = 8 OR C1PB40A12 = 9) THEN C1PB40A12 = .;
   IF (C1PB40A18 = 7 OR C1PB40A18 = 8 OR C1PB40A18 = 9) THEN C1PB40A18 = .;
   IF (C1PB40A5 = 7 OR C1PB40A5 = 8 OR C1PB40A5 = 9) THEN C1PB40A5 = .;
   IF (C1PB41A = 7 OR C1PB41A = 8 OR C1PB41A = 9) THEN C1PB41A = .;
   IF (C1PB41B = 997 OR C1PB41B = 998 OR C1PB41B = 999) THEN C1PB41B = .;
   IF (C1PB41B10 = 7 OR C1PB41B10 = 8 OR C1PB41B10 = 9) THEN C1PB41B10 = .;
   IF (C1PB41B25 = 7 OR C1PB41B25 = 8 OR C1PB41B25 = 9) THEN C1PB41B25 = .;
   IF (C1PB41B5 = 7 OR C1PB41B5 = 8 OR C1PB41B5 = 9) THEN C1PB41B5 = .;
   IF (C1PC1 = 7 OR C1PC1 = 8 OR C1PC1 = 9) THEN C1PC1 = .;
   IF (C1PC2 = 97 OR C1PC2 = 98) THEN C1PC2 = .;
   IF (C1PC2A = 97 OR C1PC2A = 98 OR C1PC2A = 99) THEN C1PC2A = .;
   IF (C1PC3 = 7 OR C1PC3 = 8) THEN C1PC3 = .;
   IF (C1PC4 = 97 OR C1PC4 = 98) THEN C1PC4 = .;
   IF (C1PKHSIZ = 97 OR C1PKHSIZ = 98) THEN C1PKHSIZ = .;
   IF (C1PC6 = 7 OR C1PC6 = 8 OR C1PC6 = 9) THEN C1PC6 = .;
   IF (C1PCHA1 = 997 OR C1PCHA1 = 998 OR C1PCHA1 = 999) THEN C1PCHA1 = .;
   IF (C1PCHX1 = 7 OR C1PCHX1 = 8 OR C1PCHX1 = 9) THEN C1PCHX1 = .;
   IF (C1PCHR1 = 97 OR C1PCHR1 = 98 OR C1PCHR1 = 99) THEN C1PCHR1 = .;
   IF (C1PCMB1 = 97 OR C1PCMB1 = 98 OR C1PCMB1 = 99) THEN C1PCMB1 = .;
   IF (C1PCYB1 = 9997 OR C1PCYB1 = 9998 OR C1PCYB1 = 9999) THEN C1PCYB1 = .;
   IF (C1PHHA1 = 997 OR C1PHHA1 = 998 OR C1PHHA1 = 999) THEN C1PHHA1 = .;
   IF (C1PCHC1 = 7 OR C1PCHC1 = 8 OR C1PCHC1 = 9) THEN C1PCHC1 = .;
   IF (C1PCHH1 = 7 OR C1PCHH1 = 8 OR C1PCHH1 = 9) THEN C1PCHH1 = .;
   IF (C1PCDD1 = 7 OR C1PCDD1 = 8 OR C1PCDD1 = 9) THEN C1PCDD1 = .;
   IF (C1PCDT1 = 997 OR C1PCDT1 = 998 OR C1PCDT1 = 999) THEN C1PCDT1 = .;
   IF (C1PCDP1 = 7 OR C1PCDP1 = 8 OR C1PCDP1 = 9) THEN C1PCDP1 = .;
   IF (C1PCDA1 = 97 OR C1PCDA1 = 98 OR C1PCDA1 = 99) THEN C1PCDA1 = .;
   IF (C1PCDX1 = 7 OR C1PCDX1 = 8 OR C1PCDX1 = 9) THEN C1PCDX1 = .;
   IF (C1PCXT1 = 7 OR C1PCXT1 = 8 OR C1PCXT1 = 9) THEN C1PCXT1 = .;
   IF (C1PCDO1 = 7 OR C1PCDO1 = 8 OR C1PCDO1 = 9) THEN C1PCDO1 = .;
   IF (C1PCHA2 = 997 OR C1PCHA2 = 998 OR C1PCHA2 = 999) THEN C1PCHA2 = .;
   IF (C1PCHX2 = 7 OR C1PCHX2 = 8 OR C1PCHX2 = 9) THEN C1PCHX2 = .;
   IF (C1PCHR2 = 97 OR C1PCHR2 = 98 OR C1PCHR2 = 99) THEN C1PCHR2 = .;
   IF (C1PCMB2 = 97 OR C1PCMB2 = 98 OR C1PCMB2 = 99) THEN C1PCMB2 = .;
   IF (C1PCYB2 = 9997 OR C1PCYB2 = 9998 OR C1PCYB2 = 9999) THEN C1PCYB2 = .;
   IF (C1PHHA2 = 997 OR C1PHHA2 = 998 OR C1PHHA2 = 999) THEN C1PHHA2 = .;
   IF (C1PCHC2 = 7 OR C1PCHC2 = 8 OR C1PCHC2 = 9) THEN C1PCHC2 = .;
   IF (C1PCHH2 = 7 OR C1PCHH2 = 8 OR C1PCHH2 = 9) THEN C1PCHH2 = .;
   IF (C1PCDD2 = 7 OR C1PCDD2 = 8 OR C1PCDD2 = 9) THEN C1PCDD2 = .;
   IF (C1PCDT2 = 997 OR C1PCDT2 = 998 OR C1PCDT2 = 999) THEN C1PCDT2 = .;
   IF (C1PCDP2 = 7 OR C1PCDP2 = 8 OR C1PCDP2 = 9) THEN C1PCDP2 = .;
   IF (C1PCDA2 = 97 OR C1PCDA2 = 98 OR C1PCDA2 = 99) THEN C1PCDA2 = .;
   IF (C1PCDX2 = 7 OR C1PCDX2 = 8 OR C1PCDX2 = 9) THEN C1PCDX2 = .;
   IF (C1PCXT2 = 7 OR C1PCXT2 = 8 OR C1PCXT2 = 9) THEN C1PCXT2 = .;
   IF (C1PCDO2 = 7 OR C1PCDO2 = 8 OR C1PCDO2 = 9) THEN C1PCDO2 = .;
   IF (C1PCHA3 = 997 OR C1PCHA3 = 998 OR C1PCHA3 = 999) THEN C1PCHA3 = .;
   IF (C1PCHX3 = 7 OR C1PCHX3 = 8 OR C1PCHX3 = 9) THEN C1PCHX3 = .;
   IF (C1PCHR3 = 97 OR C1PCHR3 = 98 OR C1PCHR3 = 99) THEN C1PCHR3 = .;
   IF (C1PCMB3 = 97 OR C1PCMB3 = 98 OR C1PCMB3 = 99) THEN C1PCMB3 = .;
   IF (C1PCYB3 = 9997 OR C1PCYB3 = 9998 OR C1PCYB3 = 9999) THEN C1PCYB3 = .;
   IF (C1PHHA3 = 997 OR C1PHHA3 = 998 OR C1PHHA3 = 999) THEN C1PHHA3 = .;
   IF (C1PCHC3 = 7 OR C1PCHC3 = 8 OR C1PCHC3 = 9) THEN C1PCHC3 = .;
   IF (C1PCHH3 = 7 OR C1PCHH3 = 8 OR C1PCHH3 = 9) THEN C1PCHH3 = .;
   IF (C1PCDD3 = 7 OR C1PCDD3 = 8 OR C1PCDD3 = 9) THEN C1PCDD3 = .;
   IF (C1PCDT3 = 997 OR C1PCDT3 = 998 OR C1PCDT3 = 999) THEN C1PCDT3 = .;
   IF (C1PCDP3 = 7 OR C1PCDP3 = 8 OR C1PCDP3 = 9) THEN C1PCDP3 = .;
   IF (C1PCDA3 = 97 OR C1PCDA3 = 98 OR C1PCDA3 = 99) THEN C1PCDA3 = .;
   IF (C1PCDX3 = 7 OR C1PCDX3 = 8 OR C1PCDX3 = 9) THEN C1PCDX3 = .;
   IF (C1PCXT3 = 7 OR C1PCXT3 = 8 OR C1PCXT3 = 9) THEN C1PCXT3 = .;
   IF (C1PCDO3 = 7 OR C1PCDO3 = 8 OR C1PCDO3 = 9) THEN C1PCDO3 = .;
   IF (C1PCHA4 = 997 OR C1PCHA4 = 998 OR C1PCHA4 = 999) THEN C1PCHA4 = .;
   IF (C1PCHX4 = 7 OR C1PCHX4 = 8 OR C1PCHX4 = 9) THEN C1PCHX4 = .;
   IF (C1PCHR4 = 97 OR C1PCHR4 = 98 OR C1PCHR4 = 99) THEN C1PCHR4 = .;
   IF (C1PCMB4 = 97 OR C1PCMB4 = 98 OR C1PCMB4 = 99) THEN C1PCMB4 = .;
   IF (C1PCYB4 = 9997 OR C1PCYB4 = 9998 OR C1PCYB4 = 9999) THEN C1PCYB4 = .;
   IF (C1PHHA4 = 997 OR C1PHHA4 = 998 OR C1PHHA4 = 999) THEN C1PHHA4 = .;
   IF (C1PCHC4 = 7 OR C1PCHC4 = 8 OR C1PCHC4 = 9) THEN C1PCHC4 = .;
   IF (C1PCHH4 = 7 OR C1PCHH4 = 8 OR C1PCHH4 = 9) THEN C1PCHH4 = .;
   IF (C1PCDD4 = 7 OR C1PCDD4 = 8 OR C1PCDD4 = 9) THEN C1PCDD4 = .;
   IF (C1PCDT4 = 997 OR C1PCDT4 = 998 OR C1PCDT4 = 999) THEN C1PCDT4 = .;
   IF (C1PCDP4 = 7 OR C1PCDP4 = 8 OR C1PCDP4 = 9) THEN C1PCDP4 = .;
   IF (C1PCDA4 = 97 OR C1PCDA4 = 98 OR C1PCDA4 = 99) THEN C1PCDA4 = .;
   IF (C1PCDX4 = 7 OR C1PCDX4 = 8 OR C1PCDX4 = 9) THEN C1PCDX4 = .;
   IF (C1PCXT4 = 7 OR C1PCXT4 = 8 OR C1PCXT4 = 9) THEN C1PCXT4 = .;
   IF (C1PCDO4 = 7 OR C1PCDO4 = 8 OR C1PCDO4 = 9) THEN C1PCDO4 = .;
   IF (C1PCHA5 = 997 OR C1PCHA5 = 998 OR C1PCHA5 = 999) THEN C1PCHA5 = .;
   IF (C1PCHX5 = 7 OR C1PCHX5 = 8 OR C1PCHX5 = 9) THEN C1PCHX5 = .;
   IF (C1PCHR5 = 97 OR C1PCHR5 = 98 OR C1PCHR5 = 99) THEN C1PCHR5 = .;
   IF (C1PCMB5 = 97 OR C1PCMB5 = 98 OR C1PCMB5 = 99) THEN C1PCMB5 = .;
   IF (C1PCYB5 = 9997 OR C1PCYB5 = 9998 OR C1PCYB5 = 9999) THEN C1PCYB5 = .;
   IF (C1PHHA5 = 997 OR C1PHHA5 = 998 OR C1PHHA5 = 999) THEN C1PHHA5 = .;
   IF (C1PCHC5 = 7 OR C1PCHC5 = 8 OR C1PCHC5 = 9) THEN C1PCHC5 = .;
   IF (C1PCHH5 = 7 OR C1PCHH5 = 8 OR C1PCHH5 = 9) THEN C1PCHH5 = .;
   IF (C1PCDD5 = 7 OR C1PCDD5 = 8 OR C1PCDD5 = 9) THEN C1PCDD5 = .;
   IF (C1PCDT5 = 997 OR C1PCDT5 = 998 OR C1PCDT5 = 999) THEN C1PCDT5 = .;
   IF (C1PCDP5 = 7 OR C1PCDP5 = 8 OR C1PCDP5 = 9) THEN C1PCDP5 = .;
   IF (C1PCDA5 = 97 OR C1PCDA5 = 98 OR C1PCDA5 = 99) THEN C1PCDA5 = .;
   IF (C1PCDX5 = 7 OR C1PCDX5 = 8 OR C1PCDX5 = 9) THEN C1PCDX5 = .;
   IF (C1PCDO5 = 7 OR C1PCDO5 = 8 OR C1PCDO5 = 9) THEN C1PCDO5 = .;
   IF (C1PCHA6 = 997 OR C1PCHA6 = 998 OR C1PCHA6 = 999) THEN C1PCHA6 = .;
   IF (C1PCHX6 = 7 OR C1PCHX6 = 8 OR C1PCHX6 = 9) THEN C1PCHX6 = .;
   IF (C1PCHR6 = 97 OR C1PCHR6 = 98 OR C1PCHR6 = 99) THEN C1PCHR6 = .;
   IF (C1PCMB6 = 97 OR C1PCMB6 = 98 OR C1PCMB6 = 99) THEN C1PCMB6 = .;
   IF (C1PCYB6 = 9997 OR C1PCYB6 = 9998 OR C1PCYB6 = 9999) THEN C1PCYB6 = .;
   IF (C1PHHA6 = 997 OR C1PHHA6 = 998 OR C1PHHA6 = 999) THEN C1PHHA6 = .;
   IF (C1PCHC6 = 7 OR C1PCHC6 = 8 OR C1PCHC6 = 9) THEN C1PCHC6 = .;
   IF (C1PCHH6 = 7 OR C1PCHH6 = 8 OR C1PCHH6 = 9) THEN C1PCHH6 = .;
   IF (C1PCDD6 = 7 OR C1PCDD6 = 8 OR C1PCDD6 = 9) THEN C1PCDD6 = .;
   IF (C1PCDT6 = 997 OR C1PCDT6 = 998 OR C1PCDT6 = 999) THEN C1PCDT6 = .;
   IF (C1PCDA6 = 97 OR C1PCDA6 = 98 OR C1PCDA6 = 99) THEN C1PCDA6 = .;
   IF (C1PCDX6 = 7 OR C1PCDX6 = 8 OR C1PCDX6 = 9) THEN C1PCDX6 = .;
   IF (C1PCDO6 = 7 OR C1PCDO6 = 8 OR C1PCDO6 = 9) THEN C1PCDO6 = .;
   IF (C1PCHA7 = 997 OR C1PCHA7 = 998 OR C1PCHA7 = 999) THEN C1PCHA7 = .;
   IF (C1PCHX7 = 7 OR C1PCHX7 = 8 OR C1PCHX7 = 9) THEN C1PCHX7 = .;
   IF (C1PCHR7 = 97 OR C1PCHR7 = 98 OR C1PCHR7 = 99) THEN C1PCHR7 = .;
   IF (C1PCMB7 = 97 OR C1PCMB7 = 98 OR C1PCMB7 = 99) THEN C1PCMB7 = .;
   IF (C1PCYB7 = 9997 OR C1PCYB7 = 9998 OR C1PCYB7 = 9999) THEN C1PCYB7 = .;
   IF (C1PHHA7 = 997 OR C1PHHA7 = 998 OR C1PHHA7 = 999) THEN C1PHHA7 = .;
   IF (C1PCHC7 = 7 OR C1PCHC7 = 8 OR C1PCHC7 = 9) THEN C1PCHC7 = .;
   IF (C1PCHH7 = 7 OR C1PCHH7 = 8 OR C1PCHH7 = 9) THEN C1PCHH7 = .;
   IF (C1PCDD7 = 7 OR C1PCDD7 = 8 OR C1PCDD7 = 9) THEN C1PCDD7 = .;
   IF (C1PCDT7 = 997 OR C1PCDT7 = 998 OR C1PCDT7 = 999) THEN C1PCDT7 = .;
   IF (C1PCDA7 = 97 OR C1PCDA7 = 98 OR C1PCDA7 = 99) THEN C1PCDA7 = .;
   IF (C1PCDO7 = 7 OR C1PCDO7 = 8 OR C1PCDO7 = 9) THEN C1PCDO7 = .;
   IF (C1PCHA8 = 997 OR C1PCHA8 = 998 OR C1PCHA8 = 999) THEN C1PCHA8 = .;
   IF (C1PCHX8 = 7 OR C1PCHX8 = 8 OR C1PCHX8 = 9) THEN C1PCHX8 = .;
   IF (C1PCHR8 = 97 OR C1PCHR8 = 98 OR C1PCHR8 = 99) THEN C1PCHR8 = .;
   IF (C1PCMB8 = 97 OR C1PCMB8 = 98 OR C1PCMB8 = 99) THEN C1PCMB8 = .;
   IF (C1PCYB8 = 9997 OR C1PCYB8 = 9998 OR C1PCYB8 = 9999) THEN C1PCYB8 = .;
   IF (C1PHHA8 = 997 OR C1PHHA8 = 998 OR C1PHHA8 = 999) THEN C1PHHA8 = .;
   IF (C1PCHC8 = 7 OR C1PCHC8 = 8 OR C1PCHC8 = 9) THEN C1PCHC8 = .;
   IF (C1PCHH8 = 7 OR C1PCHH8 = 8 OR C1PCHH8 = 9) THEN C1PCHH8 = .;
   IF (C1PCDD8 = 7 OR C1PCDD8 = 8 OR C1PCDD8 = 9) THEN C1PCDD8 = .;
   IF (C1PCDT8 = 997 OR C1PCDT8 = 998 OR C1PCDT8 = 999) THEN C1PCDT8 = .;
   IF (C1PCDA8 = 97 OR C1PCDA8 = 98 OR C1PCDA8 = 99) THEN C1PCDA8 = .;
   IF (C1PCDO8 = 7 OR C1PCDO8 = 8 OR C1PCDO8 = 9) THEN C1PCDO8 = .;
   IF (C1PCHA9 = 997 OR C1PCHA9 = 998 OR C1PCHA9 = 999) THEN C1PCHA9 = .;
   IF (C1PCHX9 = 7 OR C1PCHX9 = 8 OR C1PCHX9 = 9) THEN C1PCHX9 = .;
   IF (C1PCHR9 = 97 OR C1PCHR9 = 98 OR C1PCHR9 = 99) THEN C1PCHR9 = .;
   IF (C1PCMB9 = 97 OR C1PCMB9 = 98 OR C1PCMB9 = 99) THEN C1PCMB9 = .;
   IF (C1PCYB9 = 9997 OR C1PCYB9 = 9998 OR C1PCYB9 = 9999) THEN C1PCYB9 = .;
   IF (C1PHHA9 = 997 OR C1PHHA9 = 998 OR C1PHHA9 = 999) THEN C1PHHA9 = .;
   IF (C1PCHH9 = 7 OR C1PCHH9 = 8 OR C1PCHH9 = 9) THEN C1PCHH9 = .;
   IF (C1PCDD9 = 7 OR C1PCDD9 = 8 OR C1PCDD9 = 9) THEN C1PCDD9 = .;
   IF (C1PCDT9 = 997 OR C1PCDT9 = 998 OR C1PCDT9 = 999) THEN C1PCDT9 = .;
   IF (C1PCDA9 = 97 OR C1PCDA9 = 98 OR C1PCDA9 = 99) THEN C1PCDA9 = .;
   IF (C1PCDO9 = 7 OR C1PCDO9 = 8 OR C1PCDO9 = 9) THEN C1PCDO9 = .;
   IF (C1PCHA10 = 997 OR C1PCHA10 = 998 OR C1PCHA10 = 999) THEN C1PCHA10 = .;
   IF (C1PCHX10 = 7 OR C1PCHX10 = 8 OR C1PCHX10 = 9) THEN C1PCHX10 = .;
   IF (C1PCHR10 = 97 OR C1PCHR10 = 98 OR C1PCHR10 = 99) THEN C1PCHR10 = .;
   IF (C1PCMB10 = 97 OR C1PCMB10 = 98 OR C1PCMB10 = 99) THEN C1PCMB10 = .;
   IF (C1PCYB10 = 9997 OR C1PCYB10 = 9998 OR C1PCYB10 = 9999) THEN C1PCYB10 = .;
   IF (C1PCHH10 = 7 OR C1PCHH10 = 8 OR C1PCHH10 = 9) THEN C1PCHH10 = .;
   IF (C1PCDD10 = 7 OR C1PCDD10 = 8 OR C1PCDD10 = 9) THEN C1PCDD10 = .;
   IF (C1PCHA11 = 997 OR C1PCHA11 = 998 OR C1PCHA11 = 999) THEN C1PCHA11 = .;
   IF (C1PCHX11 = 7 OR C1PCHX11 = 8 OR C1PCHX11 = 9) THEN C1PCHX11 = .;
   IF (C1PCHR11 = 97 OR C1PCHR11 = 98 OR C1PCHR11 = 99) THEN C1PCHR11 = .;
   IF (C1PCMB11 = 97 OR C1PCMB11 = 98 OR C1PCMB11 = 99) THEN C1PCMB11 = .;
   IF (C1PCYB11 = 9997 OR C1PCYB11 = 9998 OR C1PCYB11 = 9999) THEN C1PCYB11 = .;
   IF (C1PCHH11 = 7 OR C1PCHH11 = 8 OR C1PCHH11 = 9) THEN C1PCHH11 = .;
   IF (C1PCDD11 = 7 OR C1PCDD11 = 8 OR C1PCDD11 = 9) THEN C1PCDD11 = .;
   IF (C1PCDT11 = 997 OR C1PCDT11 = 998 OR C1PCDT11 = 999) THEN C1PCDT11 = .;
   IF (C1PCDA11 = 97 OR C1PCDA11 = 98 OR C1PCDA11 = 99) THEN C1PCDA11 = .;
   IF (C1PCDO11 = 7 OR C1PCDO11 = 8 OR C1PCDO11 = 9) THEN C1PCDO11 = .;
   IF (C1PCHA12 = 997 OR C1PCHA12 = 998 OR C1PCHA12 = 999) THEN C1PCHA12 = .;
   IF (C1PCHX12 = 7 OR C1PCHX12 = 8 OR C1PCHX12 = 9) THEN C1PCHX12 = .;
   IF (C1PCHR12 = 97 OR C1PCHR12 = 98 OR C1PCHR12 = 99) THEN C1PCHR12 = .;
   IF (C1PCMB12 = 97 OR C1PCMB12 = 98 OR C1PCMB12 = 99) THEN C1PCMB12 = .;
   IF (C1PCYB12 = 9997 OR C1PCYB12 = 9998 OR C1PCYB12 = 9999) THEN C1PCYB12 = .;
   IF (C1PCHH12 = 7 OR C1PCHH12 = 8 OR C1PCHH12 = 9) THEN C1PCHH12 = .;
   IF (C1PCDD12 = 7 OR C1PCDD12 = 8 OR C1PCDD12 = 9) THEN C1PCDD12 = .;
   IF (C1PCHA13 = 997 OR C1PCHA13 = 998 OR C1PCHA13 = 999) THEN C1PCHA13 = .;
   IF (C1PCHX13 = 7 OR C1PCHX13 = 8 OR C1PCHX13 = 9) THEN C1PCHX13 = .;
   IF (C1PCHR13 = 97 OR C1PCHR13 = 98 OR C1PCHR13 = 99) THEN C1PCHR13 = .;
   IF (C1PCMB13 = 97 OR C1PCMB13 = 98 OR C1PCMB13 = 99) THEN C1PCMB13 = .;
   IF (C1PCYB13 = 9997 OR C1PCYB13 = 9998 OR C1PCYB13 = 9999) THEN C1PCYB13 = .;
   IF (C1PCHH13 = 7 OR C1PCHH13 = 8 OR C1PCHH13 = 9) THEN C1PCHH13 = .;
   IF (C1PCDD13 = 7 OR C1PCDD13 = 8 OR C1PCDD13 = 9) THEN C1PCDD13 = .;
   IF (C1PCHA14 = 997 OR C1PCHA14 = 998 OR C1PCHA14 = 999) THEN C1PCHA14 = .;
   IF (C1PCHX14 = 7 OR C1PCHX14 = 8 OR C1PCHX14 = 9) THEN C1PCHX14 = .;
   IF (C1PCHR14 = 97 OR C1PCHR14 = 98 OR C1PCHR14 = 99) THEN C1PCHR14 = .;
   IF (C1PCMB14 = 97 OR C1PCMB14 = 98 OR C1PCMB14 = 99) THEN C1PCMB14 = .;
   IF (C1PCYB14 = 9997 OR C1PCYB14 = 9998 OR C1PCYB14 = 9999) THEN C1PCYB14 = .;
   IF (C1PCHH14 = 7 OR C1PCHH14 = 8 OR C1PCHH14 = 9) THEN C1PCHH14 = .;
   IF (C1PCDD14 = 7 OR C1PCDD14 = 8 OR C1PCDD14 = 9) THEN C1PCDD14 = .;
   IF (C1PCHA15 = 997 OR C1PCHA15 = 998 OR C1PCHA15 = 999) THEN C1PCHA15 = .;
   IF (C1PCHX15 = 7 OR C1PCHX15 = 8 OR C1PCHX15 = 9) THEN C1PCHX15 = .;
   IF (C1PCHR15 = 97 OR C1PCHR15 = 98 OR C1PCHR15 = 99) THEN C1PCHR15 = .;
   IF (C1PCMB15 = 97 OR C1PCMB15 = 98 OR C1PCMB15 = 99) THEN C1PCMB15 = .;
   IF (C1PCYB15 = 9997 OR C1PCYB15 = 9998 OR C1PCYB15 = 9999) THEN C1PCYB15 = .;
   IF (C1PCHH15 = 7 OR C1PCHH15 = 8 OR C1PCHH15 = 9) THEN C1PCHH15 = .;
   IF (C1PCDD15 = 7 OR C1PCDD15 = 8 OR C1PCDD15 = 9) THEN C1PCDD15 = .;
   IF (C1PCHA16 = 997 OR C1PCHA16 = 998 OR C1PCHA16 = 999) THEN C1PCHA16 = .;
   IF (C1PCHX16 = 7 OR C1PCHX16 = 8 OR C1PCHX16 = 9) THEN C1PCHX16 = .;
   IF (C1PCHR16 = 97 OR C1PCHR16 = 98 OR C1PCHR16 = 99) THEN C1PCHR16 = .;
   IF (C1PCMB16 = 97 OR C1PCMB16 = 98 OR C1PCMB16 = 99) THEN C1PCMB16 = .;
   IF (C1PCYB16 = 9997 OR C1PCYB16 = 9998 OR C1PCYB16 = 9999) THEN C1PCYB16 = .;
   IF (C1PCHH16 = 7 OR C1PCHH16 = 8 OR C1PCHH16 = 9) THEN C1PCHH16 = .;
   IF (C1PCDD16 = 7 OR C1PCDD16 = 8 OR C1PCDD16 = 9) THEN C1PCDD16 = .;
   IF (C1PCHA17 = 997 OR C1PCHA17 = 998 OR C1PCHA17 = 999) THEN C1PCHA17 = .;
   IF (C1PCHX17 = 7 OR C1PCHX17 = 8 OR C1PCHX17 = 9) THEN C1PCHX17 = .;
   IF (C1PCHR17 = 97 OR C1PCHR17 = 98 OR C1PCHR17 = 99) THEN C1PCHR17 = .;
   IF (C1PCMB17 = 97 OR C1PCMB17 = 98 OR C1PCMB17 = 99) THEN C1PCMB17 = .;
   IF (C1PCYB17 = 9997 OR C1PCYB17 = 9998 OR C1PCYB17 = 9999) THEN C1PCYB17 = .;
   IF (C1PCHH17 = 7 OR C1PCHH17 = 8 OR C1PCHH17 = 9) THEN C1PCHH17 = .;
   IF (C1PCDD17 = 7 OR C1PCDD17 = 8 OR C1PCDD17 = 9) THEN C1PCDD17 = .;
   IF (C1PCHA18 = 997 OR C1PCHA18 = 998 OR C1PCHA18 = 999) THEN C1PCHA18 = .;
   IF (C1PCHX18 = 7 OR C1PCHX18 = 8 OR C1PCHX18 = 9) THEN C1PCHX18 = .;
   IF (C1PCHR18 = 97 OR C1PCHR18 = 98 OR C1PCHR18 = 99) THEN C1PCHR18 = .;
   IF (C1PCMB18 = 97 OR C1PCMB18 = 98 OR C1PCMB18 = 99) THEN C1PCMB18 = .;
   IF (C1PCYB18 = 9997 OR C1PCYB18 = 9998 OR C1PCYB18 = 9999) THEN C1PCYB18 = .;
   IF (C1PCHH18 = 7 OR C1PCHH18 = 8 OR C1PCHH18 = 9) THEN C1PCHH18 = .;
   IF (C1PCDD18 = 7 OR C1PCDD18 = 8 OR C1PCDD18 = 9) THEN C1PCDD18 = .;
   IF (C1PCHA19 = 997 OR C1PCHA19 = 998 OR C1PCHA19 = 999) THEN C1PCHA19 = .;
   IF (C1PCHX19 = 7 OR C1PCHX19 = 8 OR C1PCHX19 = 9) THEN C1PCHX19 = .;
   IF (C1PCHR19 = 97 OR C1PCHR19 = 98 OR C1PCHR19 = 99) THEN C1PCHR19 = .;
   IF (C1PCMB19 = 97 OR C1PCMB19 = 98 OR C1PCMB19 = 99) THEN C1PCMB19 = .;
   IF (C1PCYB19 = 9997 OR C1PCYB19 = 9998 OR C1PCYB19 = 9999) THEN C1PCYB19 = .;
   IF (C1PCHH19 = 7 OR C1PCHH19 = 8 OR C1PCHH19 = 9) THEN C1PCHH19 = .;
   IF (C1PCDD19 = 7 OR C1PCDD19 = 8 OR C1PCDD19 = 9) THEN C1PCDD19 = .;
   IF (C1PCHA20 = 997 OR C1PCHA20 = 998 OR C1PCHA20 = 999) THEN C1PCHA20 = .;
   IF (C1PCHX20 = 7 OR C1PCHX20 = 8 OR C1PCHX20 = 9) THEN C1PCHX20 = .;
   IF (C1PCHR20 = 97 OR C1PCHR20 = 98 OR C1PCHR20 = 99) THEN C1PCHR20 = .;
   IF (C1PCMB20 = 97 OR C1PCMB20 = 98 OR C1PCMB20 = 99) THEN C1PCMB20 = .;
   IF (C1PCYB20 = 9997 OR C1PCYB20 = 9998 OR C1PCYB20 = 9999) THEN C1PCYB20 = .;
   IF (C1PCHH20 = 7 OR C1PCHH20 = 8 OR C1PCHH20 = 9) THEN C1PCHH20 = .;
   IF (C1PCDD20 = 7 OR C1PCDD20 = 8 OR C1PCDD20 = 9) THEN C1PCDD20 = .;
   IF (C1PCHA21 = 997 OR C1PCHA21 = 998 OR C1PCHA21 = 999) THEN C1PCHA21 = .;
   IF (C1PCHX21 = 7 OR C1PCHX21 = 8 OR C1PCHX21 = 9) THEN C1PCHX21 = .;
   IF (C1PCHR21 = 97 OR C1PCHR21 = 98 OR C1PCHR21 = 99) THEN C1PCHR21 = .;
   IF (C1PCMB21 = 97 OR C1PCMB21 = 98 OR C1PCMB21 = 99) THEN C1PCMB21 = .;
   IF (C1PCYB21 = 9997 OR C1PCYB21 = 9998 OR C1PCYB21 = 9999) THEN C1PCYB21 = .;
   IF (C1PCHH21 = 7 OR C1PCHH21 = 8 OR C1PCHH21 = 9) THEN C1PCHH21 = .;
   IF (C1PCDD21 = 7 OR C1PCDD21 = 8 OR C1PCDD21 = 9) THEN C1PCDD21 = .;
   IF (C1PCHA22 = 997 OR C1PCHA22 = 998 OR C1PCHA22 = 999) THEN C1PCHA22 = .;
   IF (C1PCHX22 = 7 OR C1PCHX22 = 8 OR C1PCHX22 = 9) THEN C1PCHX22 = .;
   IF (C1PCHR22 = 97 OR C1PCHR22 = 98 OR C1PCHR22 = 99) THEN C1PCHR22 = .;
   IF (C1PCMB22 = 97 OR C1PCMB22 = 98 OR C1PCMB22 = 99) THEN C1PCMB22 = .;
   IF (C1PCYB22 = 9997 OR C1PCYB22 = 9998 OR C1PCYB22 = 9999) THEN C1PCYB22 = .;
   IF (C1PCHH22 = 7 OR C1PCHH22 = 8 OR C1PCHH22 = 9) THEN C1PCHH22 = .;
   IF (C1PCDD22 = 7 OR C1PCDD22 = 8 OR C1PCDD22 = 9) THEN C1PCDD22 = .;
   IF (C1PCHA23 = 997 OR C1PCHA23 = 998 OR C1PCHA23 = 999) THEN C1PCHA23 = .;
   IF (C1PCHX23 = 7 OR C1PCHX23 = 8 OR C1PCHX23 = 9) THEN C1PCHX23 = .;
   IF (C1PCHR23 = 97 OR C1PCHR23 = 98 OR C1PCHR23 = 99) THEN C1PCHR23 = .;
   IF (C1PCHX24 = 7 OR C1PCHX24 = 8 OR C1PCHX24 = 9) THEN C1PCHX24 = .;
   IF (C1PCHR24 = 97 OR C1PCHR24 = 98 OR C1PCHR24 = 99) THEN C1PCHR24 = .;
   IF (C1PCHA25 = 997 OR C1PCHA25 = 998 OR C1PCHA25 = 999) THEN C1PCHA25 = .;
   IF (C1PCHX25 = 7 OR C1PCHX25 = 8 OR C1PCHX25 = 9) THEN C1PCHX25 = .;
   IF (C1PCHR25 = 97 OR C1PCHR25 = 98 OR C1PCHR25 = 99) THEN C1PCHR25 = .;
   IF (C1PCHA26 = 997 OR C1PCHA26 = 998 OR C1PCHA26 = 999) THEN C1PCHA26 = .;
   IF (C1PCHX26 = 7 OR C1PCHX26 = 8 OR C1PCHX26 = 9) THEN C1PCHX26 = .;
   IF (C1PCHR26 = 97 OR C1PCHR26 = 98 OR C1PCHR26 = 99) THEN C1PCHR26 = .;
   IF (C1PCHA27 = 997 OR C1PCHA27 = 998 OR C1PCHA27 = 999) THEN C1PCHA27 = .;
   IF (C1PCHX27 = 7 OR C1PCHX27 = 8 OR C1PCHX27 = 9) THEN C1PCHX27 = .;
   IF (C1PCHR27 = 97 OR C1PCHR27 = 98 OR C1PCHR27 = 99) THEN C1PCHR27 = .;
   IF (C1PCHA28 = 997 OR C1PCHA28 = 998 OR C1PCHA28 = 999) THEN C1PCHA28 = .;
   IF (C1PCHX28 = 7 OR C1PCHX28 = 8 OR C1PCHX28 = 9) THEN C1PCHX28 = .;
   IF (C1PCHR28 = 97 OR C1PCHR28 = 98 OR C1PCHR28 = 99) THEN C1PCHR28 = .;
   IF (C1PCHA29 = 997 OR C1PCHA29 = 998 OR C1PCHA29 = 999) THEN C1PCHA29 = .;
   IF (C1PCHX29 = 7 OR C1PCHX29 = 8 OR C1PCHX29 = 9) THEN C1PCHX29 = .;
   IF (C1PCHR29 = 97 OR C1PCHR29 = 98 OR C1PCHR29 = 99) THEN C1PCHR29 = .;
   IF (C1PCHM1N = 9) THEN C1PCHM1N = .;
   IF (C1PCHM2N = 9) THEN C1PCHM2N = .;
   IF (C1PCHM1X = 9) THEN C1PCHM1X = .;
   IF (C1PCHM2X = 9) THEN C1PCHM2X = .;
   IF (C1PD1 = 7 OR C1PD1 = 8) THEN C1PD1 = .;
   IF (C1PD2 = 97 OR C1PD2 = 98 OR C1PD2 = 99) THEN C1PD2 = .;
   IF (C1PD3 = 7 OR C1PD3 = 8 OR C1PD3 = 9) THEN C1PD3 = .;
   IF (C1PD4 = 7 OR C1PD4 = 8 OR C1PD4 = 9) THEN C1PD4 = .;
   IF (C1PD5M = 97 OR C1PD5M = 98 OR C1PD5M = 99) THEN C1PD5M = .;
   IF (C1PD5Y = 9997 OR C1PD5Y = 9998 OR C1PD5Y = 9999) THEN C1PD5Y = .;
   IF (C1PD7 = 7 OR C1PD7 = 8 OR C1PD7 = 9) THEN C1PD7 = .;
   IF (C1PD8A = 7 OR C1PD8A = 8 OR C1PD8A = 9) THEN C1PD8A = .;
   IF (C1PD8B = 7 OR C1PD8B = 8 OR C1PD8B = 9) THEN C1PD8B = .;
   IF (C1PD9 = 7 OR C1PD9 = 8 OR C1PD9 = 9) THEN C1PD9 = .;
   IF (C1PD10 = 7 OR C1PD10 = 8 OR C1PD10 = 9) THEN C1PD10 = .;
   IF (C1PD11 = 7 OR C1PD11 = 8 OR C1PD11 = 9) THEN C1PD11 = .;
   IF (C1PD12 = 7 OR C1PD12 = 8 OR C1PD12 = 9) THEN C1PD12 = .;
   IF (C1PD13 = 7 OR C1PD13 = 8 OR C1PD13 = 9) THEN C1PD13 = .;
   IF (C1PD14 = 97 OR C1PD14 = 98 OR C1PD14 = 99) THEN C1PD14 = .;
   IF (C1PD15 = 97 OR C1PD15 = 98 OR C1PD15 = 99) THEN C1PD15 = .;
   IF (C1PD16 = 7 OR C1PD16 = 8 OR C1PD16 = 9) THEN C1PD16 = .;
   IF (C1PD17 = 7 OR C1PD17 = 8 OR C1PD17 = 9) THEN C1PD17 = .;
   IF (C1PD18 = 997 OR C1PD18 = 998 OR C1PD18 = 999) THEN C1PD18 = .;
   IF (C1PD19N = 97 OR C1PD19N = 98 OR C1PD19N = 99) THEN C1PD19N = .;
   IF (C1PD19M = 7 OR C1PD19M = 8 OR C1PD19M = 9) THEN C1PD19M = .;
   IF (C1PD20 = 7 OR C1PD20 = 8 OR C1PD20 = 9) THEN C1PD20 = .;
   IF (C1PD21 = 7 OR C1PD21 = 8 OR C1PD21 = 9) THEN C1PD21 = .;
   IF (C1PD22 = 97 OR C1PD22 = 98 OR C1PD22 = 99) THEN C1PD22 = .;
   IF (C1PE1 = 7 OR C1PE1 = 8) THEN C1PE1 = .;
   IF (C1PE1A1 = 7 OR C1PE1A1 = 8 OR C1PE1A1 = 9) THEN C1PE1A1 = .;
   IF (C1PE1A2 = 7 OR C1PE1A2 = 8 OR C1PE1A2 = 9) THEN C1PE1A2 = .;
   IF (C1PE1A3 = 7 OR C1PE1A3 = 8 OR C1PE1A3 = 9) THEN C1PE1A3 = .;
   IF (C1PE1A4 = 7 OR C1PE1A4 = 8 OR C1PE1A4 = 9) THEN C1PE1A4 = .;
   IF (C1PE1A5 = 7 OR C1PE1A5 = 8 OR C1PE1A5 = 9) THEN C1PE1A5 = .;
   IF (C1PE1A6 = 7 OR C1PE1A6 = 8 OR C1PE1A6 = 9) THEN C1PE1A6 = .;
   IF (C1PE1A7 = 7 OR C1PE1A7 = 8 OR C1PE1A7 = 9) THEN C1PE1A7 = .;
   IF (C1PE1BN = 997 OR C1PE1BN = 998 OR C1PE1BN = 999) THEN C1PE1BN = .;
   IF (C1PE1BM = 7 OR C1PE1BM = 8 OR C1PE1BM = 9) THEN C1PE1BM = .;
   IF (C1PE2 = 7 OR C1PE2 = 8) THEN C1PE2 = .;
   IF (C1PE2AN = 997 OR C1PE2AN = 998 OR C1PE2AN = 999) THEN C1PE2AN = .;
   IF (C1PE2AM = 7 OR C1PE2AM = 8 OR C1PE2AM = 9) THEN C1PE2AM = .;
   IF (C1PE3 = 7 OR C1PE3 = 8) THEN C1PE3 = .;
   IF (C1PE3AN = 997 OR C1PE3AN = 998 OR C1PE3AN = 999) THEN C1PE3AN = .;
   IF (C1PE3AM = 7 OR C1PE3AM = 8 OR C1PE3AM = 9) THEN C1PE3AM = .;
   IF (C1PF1 = 97 OR C1PF1 = 98) THEN C1PF1 = .;
   IF (C1PF2A = 97 OR C1PF2A = 98 OR C1PF2A = 99) THEN C1PF2A = .;
   IF (C1PF2B = 97 OR C1PF2B = 98 OR C1PF2B = 99) THEN C1PF2B = .;
   IF (C1PF2C = 97 OR C1PF2C = 98 OR C1PF2C = 99) THEN C1PF2C = .;
   IF (C1PF2_1 = 7 OR C1PF2_1 = 8) THEN C1PF2_1 = .;
   IF (C1PF2_3 = 7 OR C1PF2_3 = 8) THEN C1PF2_3 = .;
   IF (C1PF2_4 = 7 OR C1PF2_4 = 8) THEN C1PF2_4 = .;
   IF (C1PF2_5 = 7 OR C1PF2_5 = 8) THEN C1PF2_5 = .;
   IF (C1PF2_6 = 7 OR C1PF2_6 = 8) THEN C1PF2_6 = .;
   IF (C1PF2_7 = 7 OR C1PF2_7 = 8) THEN C1PF2_7 = .;
   IF (C1PF2_9 = 7 OR C1PF2_9 = 8) THEN C1PF2_9 = .;
   IF (C1PF2_10 = 7 OR C1PF2_10 = 8) THEN C1PF2_10 = .;
   IF (C1PF2_11 = 7 OR C1PF2_11 = 8) THEN C1PF2_11 = .;
   IF (C1PF2_12 = 7 OR C1PF2_12 = 8) THEN C1PF2_12 = .;
   IF (C1PF2_13 = 7 OR C1PF2_13 = 8) THEN C1PF2_13 = .;
   IF (C1PF2_14 = 7 OR C1PF2_14 = 8) THEN C1PF2_14 = .;
   IF (C1PF2_15 = 7 OR C1PF2_15 = 8) THEN C1PF2_15 = .;
   IF (C1PF2_17 = 7 OR C1PF2_17 = 8) THEN C1PF2_17 = .;
   IF (C1PF2_18 = 7 OR C1PF2_18 = 8) THEN C1PF2_18 = .;
   IF (C1PF2_22 = 7 OR C1PF2_22 = 8) THEN C1PF2_22 = .;
   IF (C1PF2_24 = 7 OR C1PF2_24 = 8) THEN C1PF2_24 = .;
   IF (C1PF2_30 = 7 OR C1PF2_30 = 8) THEN C1PF2_30 = .;
   IF (C1PF2_31 = 7 OR C1PF2_31 = 8) THEN C1PF2_31 = .;
   IF (C1PF2_32 = 7 OR C1PF2_32 = 8) THEN C1PF2_32 = .;
   IF (C1PF2_33 = 7 OR C1PF2_33 = 8) THEN C1PF2_33 = .;
   IF (C1PF2_34 = 7 OR C1PF2_34 = 8) THEN C1PF2_34 = .;
   IF (C1PF2_35 = 7 OR C1PF2_35 = 8) THEN C1PF2_35 = .;
   IF (C1PF2_36 = 7 OR C1PF2_36 = 8) THEN C1PF2_36 = .;
   IF (C1PF2_37 = 7 OR C1PF2_37 = 8) THEN C1PF2_37 = .;
   IF (C1PF2_38 = 7 OR C1PF2_38 = 8) THEN C1PF2_38 = .;
   IF (C1PF2_39 = 7 OR C1PF2_39 = 8) THEN C1PF2_39 = .;
   IF (C1PF2_40 = 7 OR C1PF2_40 = 8) THEN C1PF2_40 = .;
   IF (C1PF2_41 = 7 OR C1PF2_41 = 8) THEN C1PF2_41 = .;
   IF (C1PF2_42 = 7 OR C1PF2_42 = 8) THEN C1PF2_42 = .;
   IF (C1PF2_43 = 7 OR C1PF2_43 = 8) THEN C1PF2_43 = .;
   IF (C1PF2_44 = 7 OR C1PF2_44 = 8) THEN C1PF2_44 = .;
   IF (C1PF2_45 = 7 OR C1PF2_45 = 8) THEN C1PF2_45 = .;
   IF (C1PF2_46 = 7 OR C1PF2_46 = 8) THEN C1PF2_46 = .;
   IF (C1PF2_47 = 7 OR C1PF2_47 = 8) THEN C1PF2_47 = .;
   IF (C1PF2_48 = 7 OR C1PF2_48 = 8) THEN C1PF2_48 = .;
   IF (C1PF2_50 = 7 OR C1PF2_50 = 8) THEN C1PF2_50 = .;
   IF (C1PF2_51 = 7 OR C1PF2_51 = 8) THEN C1PF2_51 = .;
   IF (C1PF2_52 = 7 OR C1PF2_52 = 8) THEN C1PF2_52 = .;
   IF (C1PF2_53 = 7 OR C1PF2_53 = 8) THEN C1PF2_53 = .;
   IF (C1PF2_54 = 7 OR C1PF2_54 = 8) THEN C1PF2_54 = .;
   IF (C1PF2_56 = 7 OR C1PF2_56 = 8) THEN C1PF2_56 = .;
   IF (C1PF2_57 = 7 OR C1PF2_57 = 8) THEN C1PF2_57 = .;
   IF (C1PF2_58 = 7 OR C1PF2_58 = 8) THEN C1PF2_58 = .;
   IF (C1PF2_66 = 7 OR C1PF2_66 = 8) THEN C1PF2_66 = .;
   IF (C1PF2_69 = 7 OR C1PF2_69 = 8) THEN C1PF2_69 = .;
   IF (C1PF2_70 = 7 OR C1PF2_70 = 8) THEN C1PF2_70 = .;
   IF (C1PF2_71 = 7 OR C1PF2_71 = 8) THEN C1PF2_71 = .;
   IF (C1PF2_74 = 7 OR C1PF2_74 = 8) THEN C1PF2_74 = .;
   IF (C1PF2_96 = 7 OR C1PF2_96 = 8) THEN C1PF2_96 = .;
   IF (C1PF3 = 7 OR C1PF3 = 8 OR C1PF3 = 9) THEN C1PF3 = .;
   IF (C1PF3_1 = 97 OR C1PF3_1 = 98 OR C1PF3_1 = 99) THEN C1PF3_1 = .;
   IF (C1PF4 = 7 OR C1PF4 = 8) THEN C1PF4 = .;
   IF (C1PF5 = 7 OR C1PF5 = 8) THEN C1PF5 = .;
   IF (C1PF6 = 7 OR C1PF6 = 8) THEN C1PF6 = .;
   IF (C1PF7A = 7 OR C1PF7A = 8) THEN C1PF7A = .;
   IF (C1PF7B = 7 OR C1PF7B = 8 OR C1PF7B = 9) THEN C1PF7B = .;
   IF (C1PF7C = 7 OR C1PF7C = 8 OR C1PF7C = 9) THEN C1PF7C = .;
   IF (C1PF7D = 7 OR C1PF7D = 8 OR C1PF7D = 9) THEN C1PF7D = .;
   IF (C1PF8A = 7 OR C1PF8A = 8 OR C1PF8A = 9) THEN C1PF8A = .;
   IF (C1PF8B = 7 OR C1PF8B = 8 OR C1PF8B = 9) THEN C1PF8B = .;
   IF (C1PF8C = 7 OR C1PF8C = 8 OR C1PF8C = 9) THEN C1PF8C = .;
   IF (C1PF8A1 = 7 OR C1PF8A1 = 8 OR C1PF8A1 = 9) THEN C1PF8A1 = .;
   IF (C1PF9 = 7 OR C1PF9 = 8) THEN C1PF9 = .;
   IF (C1PF10 = 7 OR C1PF10 = 8) THEN C1PF10 = .;
   IF (C1PF11 = 7 OR C1PF11 = 8) THEN C1PF11 = .;
   IF (C1PF12 = 7 OR C1PF12 = 8) THEN C1PF12 = .;
   IF (C1PF12A = 7 OR C1PF12A = 8 OR C1PF12A = 9) THEN C1PF12A = .;
   IF (C1PF12B = 7 OR C1PF12B = 8 OR C1PF12B = 9) THEN C1PF12B = .;
   IF (C1PG1 = 7 OR C1PG1 = 8) THEN C1PG1 = .;
   IF (C1PG1A = 7 OR C1PG1A = 8) THEN C1PG1A = .;
   IF (C1PG2 = 7 OR C1PG2 = 8) THEN C1PG2 = .;
   IF (C1PG3 = 7 OR C1PG3 = 8) THEN C1PG3 = .;
   IF (C1PG4 = 7 OR C1PG4 = 8) THEN C1PG4 = .;
   IF (C1PG5 = 7 OR C1PG5 = 8) THEN C1PG5 = .;
   IF (C1PG5A = 7 OR C1PG5A = 8 OR C1PG5A = 9) THEN C1PG5A = .;
   IF (C1PG6 = 7 OR C1PG6 = 8) THEN C1PG6 = .;
   IF (C1PG7 = 7 OR C1PG7 = 8) THEN C1PG7 = .;
   IF (C1PG8 = 7 OR C1PG8 = 8) THEN C1PG8 = .;
   IF (C1PG9 = 7 OR C1PG9 = 8) THEN C1PG9 = .;
   IF (C1SA1 = -1 OR C1SA1 = 98) THEN C1SA1 = .;
   IF (C1SA2 = -1 OR C1SA2 = 98) THEN C1SA2 = .;
   IF (C1SA3 = -1 OR C1SA3 = 98) THEN C1SA3 = .;
   IF (C1SA4 = -1 OR C1SA4 = 98) THEN C1SA4 = .;
   IF (C1SA5 = -1 OR C1SA5 = 98) THEN C1SA5 = .;
   IF (C1SSATIS = -1.0 OR C1SSATIS = 98.0) THEN C1SSATIS = .;
   IF (C1SSATIS2 = -1.0 OR C1SSATIS2 = 98.0) THEN C1SSATIS2 = .;
   IF (C1SA6A = -1 OR C1SA6A = 8) THEN C1SA6A = .;
   IF (C1SA6B = -1 OR C1SA6B = 8) THEN C1SA6B = .;
   IF (C1SA6C = -1 OR C1SA6C = 8) THEN C1SA6C = .;
   IF (C1SA6D = -1 OR C1SA6D = 8) THEN C1SA6D = .;
   IF (C1SA6E = -1 OR C1SA6E = 8) THEN C1SA6E = .;
   IF (C1SA7A = -1 OR C1SA7A = 8) THEN C1SA7A = .;
   IF (C1SA7B = -1 OR C1SA7B = 8) THEN C1SA7B = .;
   IF (C1SA7C = -1 OR C1SA7C = 8) THEN C1SA7C = .;
   IF (C1SA7D = -1 OR C1SA7D = 8) THEN C1SA7D = .;
   IF (C1SA8A = -1 OR C1SA8A = 8) THEN C1SA8A = .;
   IF (C1SA8B = -1 OR C1SA8B = 8) THEN C1SA8B = .;
   IF (C1SA8C = -1 OR C1SA8C = 8) THEN C1SA8C = .;
   IF (C1SA8D = -1 OR C1SA8D = 8) THEN C1SA8D = .;
   IF (C1SA8E = -1 OR C1SA8E = 8) THEN C1SA8E = .;
   IF (C1SA8F = -1 OR C1SA8F = 8) THEN C1SA8F = .;
   IF (C1SHLOCS = -1.0 OR C1SHLOCS = 8.0) THEN C1SHLOCS = .;
   IF (C1SHLOCO = -1.0 OR C1SHLOCO = 8.0) THEN C1SHLOCO = .;
   IF (C1SA9A = -1 OR C1SA9A = 8) THEN C1SA9A = .;
   IF (C1SA9B = -1 OR C1SA9B = 8) THEN C1SA9B = .;
   IF (C1SA9C = -1 OR C1SA9C = 8) THEN C1SA9C = .;
   IF (C1SA9D = -1 OR C1SA9D = 8) THEN C1SA9D = .;
   IF (C1SA9E = -1 OR C1SA9E = 8) THEN C1SA9E = .;
   IF (C1SAMPLI = -1.0 OR C1SAMPLI = 8.0) THEN C1SAMPLI = .;
   IF (C1SA10A = -1 OR C1SA10A = 8) THEN C1SA10A = .;
   IF (C1SA10B = -1 OR C1SA10B = 8) THEN C1SA10B = .;
   IF (C1SA10C = -1 OR C1SA10C = 8) THEN C1SA10C = .;
   IF (C1SA10D = -1 OR C1SA10D = 8) THEN C1SA10D = .;
   IF (C1SA10E = -1 OR C1SA10E = 8) THEN C1SA10E = .;
   IF (C1SA10F = -1 OR C1SA10F = 8) THEN C1SA10F = .;
   IF (C1SA10G = -1 OR C1SA10G = 8) THEN C1SA10G = .;
   IF (C1SA10H = -1 OR C1SA10H = 8) THEN C1SA10H = .;
   IF (C1SA10I = -1 OR C1SA10I = 8) THEN C1SA10I = .;
   IF (C1SA10J = -1 OR C1SA10J = 8) THEN C1SA10J = .;
   IF (C1SA11A = -1 OR C1SA11A = 8) THEN C1SA11A = .;
   IF (C1SA11B = -1 OR C1SA11B = 8) THEN C1SA11B = .;
   IF (C1SA11C = -1 OR C1SA11C = 8) THEN C1SA11C = .;
   IF (C1SA11D = -1 OR C1SA11D = 8) THEN C1SA11D = .;
   IF (C1SA11E = -1 OR C1SA11E = 8) THEN C1SA11E = .;
   IF (C1SA11F = -1 OR C1SA11F = 8) THEN C1SA11F = .;
   IF (C1SA11G = -1 OR C1SA11G = 8) THEN C1SA11G = .;
   IF (C1SA11H = -1 OR C1SA11H = 8) THEN C1SA11H = .;
   IF (C1SA11I = -1 OR C1SA11I = 8) THEN C1SA11I = .;
   IF (C1SA11J = -1 OR C1SA11J = 8) THEN C1SA11J = .;
   IF (C1SA11K = -1 OR C1SA11K = 8) THEN C1SA11K = .;
   IF (C1SA11L = -1 OR C1SA11L = 8) THEN C1SA11L = .;
   IF (C1SA11M = -1 OR C1SA11M = 8) THEN C1SA11M = .;
   IF (C1SA11N = -1 OR C1SA11N = 8) THEN C1SA11N = .;
   IF (C1SA11O = -1 OR C1SA11O = 8) THEN C1SA11O = .;
   IF (C1SA11P = -1 OR C1SA11P = 8) THEN C1SA11P = .;
   IF (C1SA11Q = -1 OR C1SA11Q = 8) THEN C1SA11Q = .;
   IF (C1SA11R = -1 OR C1SA11R = 8) THEN C1SA11R = .;
   IF (C1SA11S = -1 OR C1SA11S = 8) THEN C1SA11S = .;
   IF (C1SA11T = -1 OR C1SA11T = 8) THEN C1SA11T = .;
   IF (C1SA11U = -1 OR C1SA11U = 8) THEN C1SA11U = .;
   IF (C1SA11V = -1 OR C1SA11V = 8) THEN C1SA11V = .;
   IF (C1SA11W = -1 OR C1SA11W = 8) THEN C1SA11W = .;
   IF (C1SA11X = -1 OR C1SA11X = 8) THEN C1SA11X = .;
   IF (C1SA11Y = -1 OR C1SA11Y = 8) THEN C1SA11Y = .;
   IF (C1SA11Z = -1 OR C1SA11Z = 8) THEN C1SA11Z = .;
   IF (C1SA11AA = -1 OR C1SA11AA = 8) THEN C1SA11AA = .;
   IF (C1SA11BB = -1 OR C1SA11BB = 8) THEN C1SA11BB = .;
   IF (C1SA11CC = -1 OR C1SA11CC = 8) THEN C1SA11CC = .;
   IF (C1SA11DD = -1 OR C1SA11DD = 8) THEN C1SA11DD = .;
   IF (C1SA11EE = -1 OR C1SA11EE = 8) THEN C1SA11EE = .;
   IF (C1SA11FF = -1 OR C1SA11FF = 8) THEN C1SA11FF = .;
   IF (C1SA11GG = -1 OR C1SA11GG = 8) THEN C1SA11GG = .;
   IF (C1SA11HH = -1 OR C1SA11HH = 8) THEN C1SA11HH = .;
   IF (C1SA11II = -1 OR C1SA11II = 8) THEN C1SA11II = .;
   IF (C1SA11JJ = -1 OR C1SA11JJ = 8) THEN C1SA11JJ = .;
   IF (C1SA11KK = -1 OR C1SA11KK = 8) THEN C1SA11KK = .;
   IF (C1SA11LL = -1 OR C1SA11LL = 8) THEN C1SA11LL = .;
   IF (C1SA11MM = -1 OR C1SA11MM = 8) THEN C1SA11MM = .;
   IF (C1SA11NN = -1 OR C1SA11NN = 8) THEN C1SA11NN = .;
   IF (C1SCHROX = -1 OR C1SCHROX = 8) THEN C1SCHROX = .;
   IF (C1SCHRON = -1 OR C1SCHRON = 98) THEN C1SCHRON = .;
   IF (C1SA12A = -1 OR C1SA12A = 8) THEN C1SA12A = .;
   IF (C1SA12B = -1 OR C1SA12B = 8) THEN C1SA12B = .;
   IF (C1SA12C = -1 OR C1SA12C = 8) THEN C1SA12C = .;
   IF (C1SA12D = -1 OR C1SA12D = 8) THEN C1SA12D = .;
   IF (C1SA12E = -1 OR C1SA12E = 8) THEN C1SA12E = .;
   IF (C1SA12F = -1 OR C1SA12F = 8) THEN C1SA12F = .;
   IF (C1SA12G = -1 OR C1SA12G = 8) THEN C1SA12G = .;
   IF (C1SA12H = -1 OR C1SA12H = 8) THEN C1SA12H = .;
   IF (C1SA12I = -1 OR C1SA12I = 8) THEN C1SA12I = .;
   IF (C1SA12J = -1 OR C1SA12J = 8) THEN C1SA12J = .;
   IF (C1SA12K = -1 OR C1SA12K = 8) THEN C1SA12K = .;
   IF (C1SA12L = -1 OR C1SA12L = 8) THEN C1SA12L = .;
   IF (C1SRXMEX = -1 OR C1SRXMEX = 8) THEN C1SRXMEX = .;
   IF (C1SRXMED = -1 OR C1SRXMED = 98) THEN C1SRXMED = .;
   IF (C1SA13A = -1 OR C1SA13A = 8) THEN C1SA13A = .;
   IF (C1SA13B = -1 OR C1SA13B = 8) THEN C1SA13B = .;
   IF (C1SA13C = -1 OR C1SA13C = 8) THEN C1SA13C = .;
   IF (C1SA13D = -1 OR C1SA13D = 8) THEN C1SA13D = .;
   IF (C1SA14A = -1 OR C1SA14A = 8) THEN C1SA14A = .;
   IF (C1SA14B = -1 OR C1SA14B = 8) THEN C1SA14B = .;
   IF (C1SA14C = -1 OR C1SA14C = 8) THEN C1SA14C = .;
   IF (C1SA14D = -1 OR C1SA14D = 8) THEN C1SA14D = .;
   IF (C1SA14E = -1 OR C1SA14E = 8) THEN C1SA14E = .;
   IF (C1SA14F = -1 OR C1SA14F = 8) THEN C1SA14F = .;
   IF (C1SA14G = -1 OR C1SA14G = 8) THEN C1SA14G = .;
   IF (C1SA14H = -1 OR C1SA14H = 8) THEN C1SA14H = .;
   IF (C1SA14I = -1 OR C1SA14I = 8) THEN C1SA14I = .;
   IF (C1SA14J = -1 OR C1SA14J = 8) THEN C1SA14J = .;
   IF (C1SA14K = -1 OR C1SA14K = 8) THEN C1SA14K = .;
   IF (C1SA14L = -1 OR C1SA14L = 8) THEN C1SA14L = .;
   IF (C1SA14M = -1 OR C1SA14M = 8) THEN C1SA14M = .;
   IF (C1SA14N = -1 OR C1SA14N = 8) THEN C1SA14N = .;
   IF (C1SA14O = -1 OR C1SA14O = 8) THEN C1SA14O = .;
   IF (C1SA14P = -1 OR C1SA14P = 8) THEN C1SA14P = .;
   IF (C1SSPLMX = -1 OR C1SSPLMX = 8) THEN C1SSPLMX = .;
   IF (C1SSPLMN = -1 OR C1SSPLMN = 98) THEN C1SSPLMN = .;
   IF (C1SA15 = -1 OR C1SA15 = 8) THEN C1SA15 = .;
   IF (C1SA16A = -1 OR C1SA16A = 98 OR C1SA16A = 99) THEN C1SA16A = .;
   IF (C1SA16B = -1 OR C1SA16B = 98 OR C1SA16B = 99) THEN C1SA16B = .;
   IF (C1SA16C = -1 OR C1SA16C = 98 OR C1SA16C = 99) THEN C1SA16C = .;
   IF (C1SA16D = -1 OR C1SA16D = 98 OR C1SA16D = 99) THEN C1SA16D = .;
   IF (C1SA16E = -1 OR C1SA16E = 98 OR C1SA16E = 99) THEN C1SA16E = .;
   IF (C1SA17A = -1 OR C1SA17A = 8 OR C1SA17A = 9) THEN C1SA17A = .;
   IF (C1SA17B = -1 OR C1SA17B = 8 OR C1SA17B = 9) THEN C1SA17B = .;
   IF (C1SA17C = -1 OR C1SA17C = 8 OR C1SA17C = 9) THEN C1SA17C = .;
   IF (C1SA17D = -1 OR C1SA17D = 8 OR C1SA17D = 9) THEN C1SA17D = .;
   IF (C1SA17E = -1 OR C1SA17E = 8 OR C1SA17E = 9) THEN C1SA17E = .;
   IF (C1SA17F = -1 OR C1SA17F = 8 OR C1SA17F = 9) THEN C1SA17F = .;
   IF (C1SA17G = -1 OR C1SA17G = 8 OR C1SA17G = 9) THEN C1SA17G = .;
   IF (C1SA17H = -1 OR C1SA17H = 8 OR C1SA17H = 9) THEN C1SA17H = .;
   IF (C1SA17I = -1 OR C1SA17I = 8 OR C1SA17I = 9) THEN C1SA17I = .;
   IF (C1SA18 = -1 OR C1SA18 = 8 OR C1SA18 = 9) THEN C1SA18 = .;
   IF (C1SA19 = -1) THEN C1SA19 = .;
   IF (C1SA19 >= 7 AND C1SA19 <= 9) THEN C1SA19 = .;
   IF (C1SA20A = -1 OR C1SA20A = 8) THEN C1SA20A = .;
   IF (C1SA20B = -1 OR C1SA20B = 8) THEN C1SA20B = .;
   IF (C1SA20C = -1 OR C1SA20C = 8) THEN C1SA20C = .;
   IF (C1SA20D = -1 OR C1SA20D = 8) THEN C1SA20D = .;
   IF (C1SA20E = -1 OR C1SA20E = 8) THEN C1SA20E = .;
   IF (C1SA20F = -1 OR C1SA20F = 8) THEN C1SA20F = .;
   IF (C1SA20G = -1 OR C1SA20G = 8) THEN C1SA20G = .;
   IF (C1SA20H = -1 OR C1SA20H = 8) THEN C1SA20H = .;
   IF (C1SA20I = -1 OR C1SA20I = 8) THEN C1SA20I = .;
   IF (C1SA20J = -1 OR C1SA20J = 8) THEN C1SA20J = .;
   IF (C1SA20K = -1 OR C1SA20K = 8) THEN C1SA20K = .;
   IF (C1SA20L = -1 OR C1SA20L = 8) THEN C1SA20L = .;
   IF (C1SA20M = -1 OR C1SA20M = 8) THEN C1SA20M = .;
   IF (C1SA20N = -1 OR C1SA20N = 8) THEN C1SA20N = .;
   IF (C1SA21 = -1 OR C1SA21 = 8) THEN C1SA21 = .;
   IF (C1SNEGAF = -1.0 OR C1SNEGAF = 8.0) THEN C1SNEGAF = .;
   IF (C1SNEGPA = -1.0 OR C1SNEGPA = 8.0) THEN C1SNEGPA = .;
   IF (C1SA22A = -1 OR C1SA22A = 8) THEN C1SA22A = .;
   IF (C1SA22B = -1 OR C1SA22B = 8) THEN C1SA22B = .;
   IF (C1SA22C = -1 OR C1SA22C = 8) THEN C1SA22C = .;
   IF (C1SA22D = -1 OR C1SA22D = 8) THEN C1SA22D = .;
   IF (C1SA22E = -1 OR C1SA22E = 8) THEN C1SA22E = .;
   IF (C1SA22F = -1 OR C1SA22F = 8) THEN C1SA22F = .;
   IF (C1SA22G = -1 OR C1SA22G = 8) THEN C1SA22G = .;
   IF (C1SA22H = -1 OR C1SA22H = 8) THEN C1SA22H = .;
   IF (C1SA22I = -1 OR C1SA22I = 8) THEN C1SA22I = .;
   IF (C1SA22J = -1 OR C1SA22J = 8) THEN C1SA22J = .;
   IF (C1SA22K = -1 OR C1SA22K = 8) THEN C1SA22K = .;
   IF (C1SA22L = -1 OR C1SA22L = 8) THEN C1SA22L = .;
   IF (C1SA22M = -1 OR C1SA22M = 8) THEN C1SA22M = .;
   IF (C1SA23 = -1 OR C1SA23 = 8) THEN C1SA23 = .;
   IF (C1SPOSAF = -1.0 OR C1SPOSAF = 8.0) THEN C1SPOSAF = .;
   IF (C1SPOSPA = -1.0 OR C1SPOSPA = 8.0) THEN C1SPOSPA = .;
   IF (C1SA24A = -1 OR C1SA24A = 8) THEN C1SA24A = .;
   IF (C1SA24B = -1 OR C1SA24B = 8) THEN C1SA24B = .;
   IF (C1SA24C = -1 OR C1SA24C = 8) THEN C1SA24C = .;
   IF (C1SA24D = -1 OR C1SA24D = 8) THEN C1SA24D = .;
   IF (C1SA24E = -1 OR C1SA24E = 8) THEN C1SA24E = .;
   IF (C1SA24F = -1 OR C1SA24F = 8) THEN C1SA24F = .;
   IF (C1SA24G = -1 OR C1SA24G = 8) THEN C1SA24G = .;
   IF (C1SA24H = -1 OR C1SA24H = 8) THEN C1SA24H = .;
   IF (C1SA24I = -1 OR C1SA24I = 8) THEN C1SA24I = .;
   IF (C1SA24J = -1 OR C1SA24J = 8) THEN C1SA24J = .;
   IF (C1SBADL1 = -1.0 OR C1SBADL1 = 8.0) THEN C1SBADL1 = .;
   IF (C1SBADL2 = -1.0 OR C1SBADL2 = 8.0) THEN C1SBADL2 = .;
   IF (C1SIADL = -1.0 OR C1SIADL = 8.0) THEN C1SIADL = .;
   IF (C1SA25A = -1 OR C1SA25A = 8) THEN C1SA25A = .;
   IF (C1SA25B = -1 OR C1SA25B = 8) THEN C1SA25B = .;
   IF (C1SA25C = -1 OR C1SA25C = 8) THEN C1SA25C = .;
   IF (C1SA25D = -1 OR C1SA25D = 8) THEN C1SA25D = .;
   IF (C1SDYSPN = -1 OR C1SDYSPN = 8) THEN C1SDYSPN = .;
   IF (C1SA26A = -1 OR C1SA26A = 8) THEN C1SA26A = .;
   IF (C1SA26B = -1 OR C1SA26B = 8) THEN C1SA26B = .;
   IF (C1SA26C = -1 OR C1SA26C = 8) THEN C1SA26C = .;
   IF (C1SA26D = -1 OR C1SA26D = 8) THEN C1SA26D = .;
   IF (C1SA26E = -1 OR C1SA26E = 8) THEN C1SA26E = .;
   IF (C1SA26F = -1 OR C1SA26F = 8) THEN C1SA26F = .;
   IF (C1SA27A = -1 OR C1SA27A = 8) THEN C1SA27A = .;
   IF (C1SA27B = -1 OR C1SA27B = 8) THEN C1SA27B = .;
   IF (C1SA27C = -1 OR C1SA27C = 8) THEN C1SA27C = .;
   IF (C1SA27D = -1 OR C1SA27D = 8) THEN C1SA27D = .;
   IF (C1SA27E = -1 OR C1SA27E = 8) THEN C1SA27E = .;
   IF (C1SA27F = -1 OR C1SA27F = 8) THEN C1SA27F = .;
   IF (C1SA28A = -1 OR C1SA28A = 8) THEN C1SA28A = .;
   IF (C1SA28B = -1 OR C1SA28B = 8) THEN C1SA28B = .;
   IF (C1SA28C = -1 OR C1SA28C = 8) THEN C1SA28C = .;
   IF (C1SA28D = -1 OR C1SA28D = 8) THEN C1SA28D = .;
   IF (C1SA28E = -1 OR C1SA28E = 8) THEN C1SA28E = .;
   IF (C1SA28F = -1 OR C1SA28F = 8) THEN C1SA28F = .;
   IF (C1SA29A = -1 OR C1SA29A = 8) THEN C1SA29A = .;
   IF (C1SA29B = -1 OR C1SA29B = 8) THEN C1SA29B = .;
   IF (C1SA29C = -1 OR C1SA29C = 8) THEN C1SA29C = .;
   IF (C1SA29D = -1 OR C1SA29D = 8) THEN C1SA29D = .;
   IF (C1SA29E = -1 OR C1SA29E = 8) THEN C1SA29E = .;
   IF (C1SA29F = -1 OR C1SA29F = 8) THEN C1SA29F = .;
   IF (C1SA30A = -1 OR C1SA30A = 8) THEN C1SA30A = .;
   IF (C1SA30B = -1 OR C1SA30B = 8) THEN C1SA30B = .;
   IF (C1SA30C = -1 OR C1SA30C = 8) THEN C1SA30C = .;
   IF (C1SA30D = -1 OR C1SA30D = 8) THEN C1SA30D = .;
   IF (C1SA30E = -1 OR C1SA30E = 8) THEN C1SA30E = .;
   IF (C1SA30F = -1 OR C1SA30F = 8) THEN C1SA30F = .;
   IF (C1SA30G = -1 OR C1SA30G = 8) THEN C1SA30G = .;
   IF (C1SA30H = -1 OR C1SA30H = 8) THEN C1SA30H = .;
   IF (C1SA30I = -1 OR C1SA30I = 8) THEN C1SA30I = .;
   IF (C1SINTAG = -1.0 OR C1SINTAG = 8.0) THEN C1SINTAG = .;
   IF (C1SA31 = -1.00 OR C1SA31 = 98.00) THEN C1SA31 = .;
   IF (C1SA32 = -1.00 OR C1SA32 = 98.00) THEN C1SA32 = .;
   IF (C1SWSTHI = -1.0 OR C1SWSTHI = 8.0) THEN C1SWSTHI = .;
   IF (C1SA33A = -1 OR C1SA33A = 8) THEN C1SA33A = .;
   IF (C1SA33B = -1.0 OR C1SA33B = 98.0) THEN C1SA33B = .;
   IF (C1SA34 = -1 OR C1SA34 = 8) THEN C1SA34 = .;
   IF (C1SA35 = -1 OR C1SA35 = 998) THEN C1SA35 = .;
   IF (C1SBMI = -1.0 OR C1SBMI = 98.0) THEN C1SBMI = .;
   IF (C1SA36 = -1 OR C1SA36 = 998) THEN C1SA36 = .;
   IF (C1SA37 = -1 OR C1SA37 = 998) THEN C1SA37 = .;
   IF (C1SA38 = -1 OR C1SA38 = 98) THEN C1SA38 = .;
   IF (C1SA39 = -1 OR C1SA39 = 8) THEN C1SA39 = .;
   IF (C1SA39AA = -1 OR C1SA39AA = 8 OR C1SA39AA = 9) THEN C1SA39AA = .;
   IF (C1SA39AB = -1 OR C1SA39AB = 8 OR C1SA39AB = 9) THEN C1SA39AB = .;
   IF (C1SA39AC = -1 OR C1SA39AC = 8 OR C1SA39AC = 9) THEN C1SA39AC = .;
   IF (C1SA40 = -1 OR C1SA40 = 8) THEN C1SA40 = .;
   IF (C1SA41 = -1 OR C1SA41 = 9998 OR C1SA41 = 9999) THEN C1SA41 = .;
   IF (C1SA42 = -1 OR C1SA42 = 998 OR C1SA42 = 999) THEN C1SA42 = .;
   IF (C1SA43 = -1 OR C1SA43 = 998 OR C1SA43 = 999) THEN C1SA43 = .;
   IF (C1SA44A = -1 OR C1SA44A = 8) THEN C1SA44A = .;
   IF (C1SA44B = -1 OR C1SA44B = 8) THEN C1SA44B = .;
   IF (C1SA44C = -1 OR C1SA44C = 8) THEN C1SA44C = .;
   IF (C1SA44D = -1 OR C1SA44D = 8) THEN C1SA44D = .;
   IF (C1SA44E = -1 OR C1SA44E = 8) THEN C1SA44E = .;
   IF (C1SA44F = -1 OR C1SA44F = 8) THEN C1SA44F = .;
   IF (C1SA44G = -1 OR C1SA44G = 8) THEN C1SA44G = .;
   IF (C1SA44H = -1 OR C1SA44H = 8) THEN C1SA44H = .;
   IF (C1SA45 = -1 OR C1SA45 = 98) THEN C1SA45 = .;
   IF (C1SA46A = -1 OR C1SA46A = 8) THEN C1SA46A = .;
   IF (C1SA46B = -1 OR C1SA46B = 8) THEN C1SA46B = .;
   IF (C1SA46C = -1 OR C1SA46C = 8) THEN C1SA46C = .;
   IF (C1SA46D = -1 OR C1SA46D = 8) THEN C1SA46D = .;
   IF (C1SA46E = -1 OR C1SA46E = 8) THEN C1SA46E = .;
   IF (C1SA46F = -1 OR C1SA46F = 8) THEN C1SA46F = .;
   IF (C1SA46G = -1 OR C1SA46G = 8) THEN C1SA46G = .;
   IF (C1SA46H = -1 OR C1SA46H = 8) THEN C1SA46H = .;
   IF (C1SA47 = -1 OR C1SA47 = 98) THEN C1SA47 = .;
   IF (C1SA48 = -1 OR C1SA48 = 8) THEN C1SA48 = .;
   IF (C1SA49A = -1 OR C1SA49A = 998) THEN C1SA49A = .;
   IF (C1SA49B = -1 OR C1SA49B = 998) THEN C1SA49B = .;
   IF (C1SA49C = -1 OR C1SA49C = 998) THEN C1SA49C = .;
   IF (C1SA49D = -1 OR C1SA49D = 998) THEN C1SA49D = .;
   IF (C1SA49E = -1 OR C1SA49E = 998) THEN C1SA49E = .;
   IF (C1SUSEMD = -1 OR C1SUSEMD = 998) THEN C1SUSEMD = .;
   IF (C1SA50A = -1 OR C1SA50A = 998) THEN C1SA50A = .;
   IF (C1SA50B = -1 OR C1SA50B = 998) THEN C1SA50B = .;
   IF (C1SA50C = -1 OR C1SA50C = 998) THEN C1SA50C = .;
   IF (C1SA50D = -1 OR C1SA50D = 998) THEN C1SA50D = .;
   IF (C1SUSEMH = -1 OR C1SUSEMH = 998) THEN C1SUSEMH = .;
   IF (C1SA51A = -1 OR C1SA51A = 8) THEN C1SA51A = .;
   IF (C1SA51AY = -1 OR C1SA51AY = 98 OR C1SA51AY = 99) THEN C1SA51AY = .;
   IF (C1SA51AZ = -1 OR C1SA51AZ = 998 OR C1SA51AZ = 999) THEN C1SA51AZ = .;
   IF (C1SA51B = -1 OR C1SA51B = 8) THEN C1SA51B = .;
   IF (C1SA51BY = -1 OR C1SA51BY = 98 OR C1SA51BY = 99) THEN C1SA51BY = .;
   IF (C1SA51BZ = -1 OR C1SA51BZ = 998 OR C1SA51BZ = 999) THEN C1SA51BZ = .;
   IF (C1SA51C = -1 OR C1SA51C = 8) THEN C1SA51C = .;
   IF (C1SA51CY = -1 OR C1SA51CY = 98 OR C1SA51CY = 99) THEN C1SA51CY = .;
   IF (C1SA51CZ = -1 OR C1SA51CZ = 998 OR C1SA51CZ = 999) THEN C1SA51CZ = .;
   IF (C1SA51D = -1 OR C1SA51D = 8) THEN C1SA51D = .;
   IF (C1SA51DY = -1 OR C1SA51DY = 98 OR C1SA51DY = 99) THEN C1SA51DY = .;
   IF (C1SA51DZ = -1 OR C1SA51DZ = 998 OR C1SA51DZ = 999) THEN C1SA51DZ = .;
   IF (C1SA51E = -1 OR C1SA51E = 8) THEN C1SA51E = .;
   IF (C1SA51EY = -1 OR C1SA51EY = 98 OR C1SA51EY = 99) THEN C1SA51EY = .;
   IF (C1SA51EZ = -1 OR C1SA51EZ = 998 OR C1SA51EZ = 999) THEN C1SA51EZ = .;
   IF (C1SA51F = -1 OR C1SA51F = 8) THEN C1SA51F = .;
   IF (C1SA51FY = -1 OR C1SA51FY = 98 OR C1SA51FY = 99) THEN C1SA51FY = .;
   IF (C1SA51FZ = -1 OR C1SA51FZ = 998 OR C1SA51FZ = 999) THEN C1SA51FZ = .;
   IF (C1SA51G = -1 OR C1SA51G = 8) THEN C1SA51G = .;
   IF (C1SA51GY = -1 OR C1SA51GY = 98 OR C1SA51GY = 99) THEN C1SA51GY = .;
   IF (C1SA51GZ = -1 OR C1SA51GZ = 998 OR C1SA51GZ = 999) THEN C1SA51GZ = .;
   IF (C1SA51H = -1 OR C1SA51H = 8) THEN C1SA51H = .;
   IF (C1SA51HY = -1 OR C1SA51HY = 98 OR C1SA51HY = 99) THEN C1SA51HY = .;
   IF (C1SA51HZ = -1 OR C1SA51HZ = 998 OR C1SA51HZ = 999) THEN C1SA51HZ = .;
   IF (C1SA51I = -1 OR C1SA51I = 8) THEN C1SA51I = .;
   IF (C1SA51IY = -1 OR C1SA51IY = 98 OR C1SA51IY = 99) THEN C1SA51IY = .;
   IF (C1SA51IZ = -1 OR C1SA51IZ = 998 OR C1SA51IZ = 999) THEN C1SA51IZ = .;
   IF (C1SA51J = -1 OR C1SA51J = 8) THEN C1SA51J = .;
   IF (C1SA51JY = -1 OR C1SA51JY = 98 OR C1SA51JY = 99) THEN C1SA51JY = .;
   IF (C1SA51JZ = -1 OR C1SA51JZ = 998 OR C1SA51JZ = 999) THEN C1SA51JZ = .;
   IF (C1SA51K = -1 OR C1SA51K = 8) THEN C1SA51K = .;
   IF (C1SA51KY = -1 OR C1SA51KY = 98 OR C1SA51KY = 99) THEN C1SA51KY = .;
   IF (C1SA51KZ = -1 OR C1SA51KZ = 998 OR C1SA51KZ = 999) THEN C1SA51KZ = .;
   IF (C1SA52A = -1 OR C1SA52A = 8) THEN C1SA52A = .;
   IF (C1SA52B = -1 OR C1SA52B = 8) THEN C1SA52B = .;
   IF (C1SA52C = -1 OR C1SA52C = 8) THEN C1SA52C = .;
   IF (C1SA52D = -1 OR C1SA52D = 8) THEN C1SA52D = .;
   IF (C1SA52E = -1 OR C1SA52E = 8) THEN C1SA52E = .;
   IF (C1SA52F = -1 OR C1SA52F = 8) THEN C1SA52F = .;
   IF (C1SA52G = -1 OR C1SA52G = 8) THEN C1SA52G = .;
   IF (C1SA52H = -1 OR C1SA52H = 8) THEN C1SA52H = .;
   IF (C1SA52I = -1 OR C1SA52I = 8) THEN C1SA52I = .;
   IF (C1SA52J = -1 OR C1SA52J = 8) THEN C1SA52J = .;
   IF (C1SA52K = -1 OR C1SA52K = 8) THEN C1SA52K = .;
   IF (C1SA52L = -1 OR C1SA52L = 8) THEN C1SA52L = .;
   IF (C1SA52M = -1 OR C1SA52M = 8) THEN C1SA52M = .;
   IF (C1SA52N = -1 OR C1SA52N = 8) THEN C1SA52N = .;
   IF (C1SA52O = -1 OR C1SA52O = 8) THEN C1SA52O = .;
   IF (C1SA52P = -1 OR C1SA52P = 8) THEN C1SA52P = .;
   IF (C1SA52Q = -1 OR C1SA52Q = 8) THEN C1SA52Q = .;
   IF (C1SA52R = -1 OR C1SA52R = 8) THEN C1SA52R = .;
   IF (C1SA52S = -1 OR C1SA52S = 8) THEN C1SA52S = .;
   IF (C1SA53A = -1 OR C1SA53A = 98) THEN C1SA53A = .;
   IF (C1SA53B = -1 OR C1SA53B = 98) THEN C1SA53B = .;
   IF (C1SA54A = -1 OR C1SA54A = 98) THEN C1SA54A = .;
   IF (C1SA54B = -1 OR C1SA54B = 98) THEN C1SA54B = .;
   IF (C1SA55A = -1 OR C1SA55A = 98) THEN C1SA55A = .;
   IF (C1SA55B = -1 OR C1SA55B = 98) THEN C1SA55B = .;
   IF (C1SA56 = -1 OR C1SA56 = 98) THEN C1SA56 = .;
   IF (C1SA57A = -1 OR C1SA57A = 8) THEN C1SA57A = .;
   IF (C1SA57B = -1 OR C1SA57B = 8) THEN C1SA57B = .;
   IF (C1SA57C = -1 OR C1SA57C = 8) THEN C1SA57C = .;
   IF (C1SA57D = -1 OR C1SA57D = 8) THEN C1SA57D = .;
   IF (C1SA58A = -1 OR C1SA58A = 8) THEN C1SA58A = .;
   IF (C1SA58B = -1 OR C1SA58B = 8) THEN C1SA58B = .;
   IF (C1SA58C = -1 OR C1SA58C = 8) THEN C1SA58C = .;
   IF (C1SA58D = -1 OR C1SA58D = 8) THEN C1SA58D = .;
   IF (C1SA58E = -1 OR C1SA58E = 8) THEN C1SA58E = .;
   IF (C1SA58F = -1 OR C1SA58F = 8) THEN C1SA58F = .;
   IF (C1SA58G = -1 OR C1SA58G = 8) THEN C1SA58G = .;
   IF (C1SA58H = -1 OR C1SA58H = 8) THEN C1SA58H = .;
   IF (C1SA58I = -1 OR C1SA58I = 8) THEN C1SA58I = .;
   IF (C1SA58J = -1 OR C1SA58J = 8) THEN C1SA58J = .;
   IF (C1SA59 = -1 OR C1SA59 = 8) THEN C1SA59 = .;
   IF (C1SA60 = -1 OR C1SA60 = 8 OR C1SA60 = 9) THEN C1SA60 = .;
   IF (C1SA61 = -1 OR C1SA61 = 8 OR C1SA61 = 9) THEN C1SA61 = .;
   IF (C1SA62A = -1 OR C1SA62A = 8 OR C1SA62A = 9) THEN C1SA62A = .;
   IF (C1SA62B = -1 OR C1SA62B = 8 OR C1SA62B = 9) THEN C1SA62B = .;
   IF (C1SA62C = -1 OR C1SA62C = 8 OR C1SA62C = 9) THEN C1SA62C = .;
   IF (C1SA62D = -1 OR C1SA62D = 8 OR C1SA62D = 9) THEN C1SA62D = .;
   IF (C1SA62E = -1 OR C1SA62E = 8 OR C1SA62E = 9) THEN C1SA62E = .;
   IF (C1SA63 = -1 OR C1SA63 = 8) THEN C1SA63 = .;
   IF (C1SA64A = -1 OR C1SA64A = 8 OR C1SA64A = 9) THEN C1SA64A = .;
   IF (C1SA64B = -1 OR C1SA64B = 8 OR C1SA64B = 9) THEN C1SA64B = .;
   IF (C1SA64C = -1 OR C1SA64C = 8 OR C1SA64C = 9) THEN C1SA64C = .;
   IF (C1SA64D = -1 OR C1SA64D = 8 OR C1SA64D = 9) THEN C1SA64D = .;
   IF (C1SA64E = -1 OR C1SA64E = 8 OR C1SA64E = 9) THEN C1SA64E = .;
   IF (C1SALCOH = -1 OR C1SALCOH = 8) THEN C1SALCOH = .;
   IF (C1SA65 = -1 OR C1SA65 = 8 OR C1SA65 = 9) THEN C1SA65 = .;
   IF (C1SA66 = -1 OR C1SA66 = 8 OR C1SA66 = 9) THEN C1SA66 = .;
   IF (C1SB1 = -1 OR C1SB1 = 8 OR C1SB1 = 9) THEN C1SB1 = .;
   IF (C1SB2A = -1 OR C1SB2A = 8 OR C1SB2A = 9) THEN C1SB2A = .;
   IF (C1SB2B = -1 OR C1SB2B = 8 OR C1SB2B = 9) THEN C1SB2B = .;
   IF (C1SB2C = -1 OR C1SB2C = 8 OR C1SB2C = 9) THEN C1SB2C = .;
   IF (C1SB2D = -1 OR C1SB2D = 8 OR C1SB2D = 9) THEN C1SB2D = .;
   IF (C1SB2E = -1 OR C1SB2E = 8 OR C1SB2E = 9) THEN C1SB2E = .;
   IF (C1SB3 = -1 OR C1SB3 = 9998 OR C1SB3 = 9999) THEN C1SB3 = .;
   IF (C1SB4 = -1 OR C1SB4 = 8 OR C1SB4 = 9) THEN C1SB4 = .;
   IF (C1SB5A = -1 OR C1SB5A = 98 OR C1SB5A = 99) THEN C1SB5A = .;
   IF (C1SB5B = -1 OR C1SB5B = 98 OR C1SB5B = 99) THEN C1SB5B = .;
   IF (C1SB5C = -1 OR C1SB5C = 9998 OR C1SB5C = 9999) THEN C1SB5C = .;
   IF (C1SB6 = -1) THEN C1SB6 = .;
   IF (C1SB6 >= 7 AND C1SB6 <= 9) THEN C1SB6 = .;
   IF (C1SB7 = -1 OR C1SB7 = 8 OR C1SB7 = 9) THEN C1SB7 = .;
   IF (C1SB8A1 = -1 OR C1SB8A1 = 8 OR C1SB8A1 = 9) THEN C1SB8A1 = .;
   IF (C1SB8A2 = -1 OR C1SB8A2 = 8 OR C1SB8A2 = 9) THEN C1SB8A2 = .;
   IF (C1SB8A3 = -1 OR C1SB8A3 = 8 OR C1SB8A3 = 9) THEN C1SB8A3 = .;
   IF (C1SB8A4 = -1 OR C1SB8A4 = 998 OR C1SB8A4 = 999) THEN C1SB8A4 = .;
   IF (C1SB8B1 = -1 OR C1SB8B1 = 8 OR C1SB8B1 = 9) THEN C1SB8B1 = .;
   IF (C1SB8B2 = -1 OR C1SB8B2 = 8 OR C1SB8B2 = 9) THEN C1SB8B2 = .;
   IF (C1SB8B3 = -1 OR C1SB8B3 = 8 OR C1SB8B3 = 9) THEN C1SB8B3 = .;
   IF (C1SB8B4 = -1 OR C1SB8B4 = 998 OR C1SB8B4 = 999) THEN C1SB8B4 = .;
   IF (C1SB8C1 = -1 OR C1SB8C1 = 8 OR C1SB8C1 = 9) THEN C1SB8C1 = .;
   IF (C1SB8C2 = -1 OR C1SB8C2 = 8 OR C1SB8C2 = 9) THEN C1SB8C2 = .;
   IF (C1SB8C3 = -1 OR C1SB8C3 = 8 OR C1SB8C3 = 9) THEN C1SB8C3 = .;
   IF (C1SB8C4 = -1 OR C1SB8C4 = 998 OR C1SB8C4 = 999) THEN C1SB8C4 = .;
   IF (C1SB9 = -1 OR C1SB9 = 8 OR C1SB9 = 9) THEN C1SB9 = .;
   IF (C1SB10 = -1 OR C1SB10 = 8 OR C1SB10 = 9) THEN C1SB10 = .;
   IF (C1SB11 = -1 OR C1SB11 = 8 OR C1SB11 = 9) THEN C1SB11 = .;
   IF (C1SB12A = -1 OR C1SB12A = 8 OR C1SB12A = 9) THEN C1SB12A = .;
   IF (C1SB12B = -1 OR C1SB12B = 8 OR C1SB12B = 9) THEN C1SB12B = .;
   IF (C1SB12C = -1 OR C1SB12C = 8 OR C1SB12C = 9) THEN C1SB12C = .;
   IF (C1SB12D = -1 OR C1SB12D = 8 OR C1SB12D = 9) THEN C1SB12D = .;
   IF (C1SB12E = -1 OR C1SB12E = 8 OR C1SB12E = 9) THEN C1SB12E = .;
   IF (C1SB12F = -1 OR C1SB12F = 8 OR C1SB12F = 9) THEN C1SB12F = .;
   IF (C1SB12G = -1 OR C1SB12G = 8 OR C1SB12G = 9) THEN C1SB12G = .;
   IF (C1SB13A = -1 OR C1SB13A = 98 OR C1SB13A = 99) THEN C1SB13A = .;
   IF (C1SB13B = -1 OR C1SB13B = 9998 OR C1SB13B = 9999) THEN C1SB13B = .;
   IF (C1SB14 = -1 OR C1SB14 = 8 OR C1SB14 = 9) THEN C1SB14 = .;
   IF (C1SB15A = -1 OR C1SB15A = 98 OR C1SB15A = 99) THEN C1SB15A = .;
   IF (C1SB15B = -1 OR C1SB15B = 9998 OR C1SB15B = 9999) THEN C1SB15B = .;
   IF (C1SB16A = -1 OR C1SB16A = 8 OR C1SB16A = 9) THEN C1SB16A = .;
   IF (C1SB16B = -1 OR C1SB16B = 8 OR C1SB16B = 9) THEN C1SB16B = .;
   IF (C1SB16C = -1 OR C1SB16C = 8 OR C1SB16C = 9) THEN C1SB16C = .;
   IF (C1SB16D = -1 OR C1SB16D = 8 OR C1SB16D = 9) THEN C1SB16D = .;
   IF (C1SB17 = -1 OR C1SB17 = 8 OR C1SB17 = 9) THEN C1SB17 = .;
   IF (C1SB18 = -1 OR C1SB18 = 8 OR C1SB18 = 9) THEN C1SB18 = .;
   IF (C1SB19 = -1 OR C1SB19 = 8 OR C1SB19 = 9) THEN C1SB19 = .;
   IF (C1SB20A = -1 OR C1SB20A = 8 OR C1SB20A = 9) THEN C1SB20A = .;
   IF (C1SB20B = -1 OR C1SB20B = 8 OR C1SB20B = 9) THEN C1SB20B = .;
   IF (C1SB20C = -1 OR C1SB20C = 8 OR C1SB20C = 9) THEN C1SB20C = .;
   IF (C1SB20D = -1 OR C1SB20D = 8 OR C1SB20D = 9) THEN C1SB20D = .;
   IF (C1SB20E = -1 OR C1SB20E = 8 OR C1SB20E = 9) THEN C1SB20E = .;
   IF (C1SB20F = -1 OR C1SB20F = 8 OR C1SB20F = 9) THEN C1SB20F = .;
   IF (C1SB20G = -1 OR C1SB20G = 8 OR C1SB20G = 9) THEN C1SB20G = .;
   IF (C1SB21 = -1 OR C1SB21 = 8 OR C1SB21 = 9) THEN C1SB21 = .;
   IF (C1SB22A = -1 OR C1SB22A = 8 OR C1SB22A = 9) THEN C1SB22A = .;
   IF (C1SB22B = -1 OR C1SB22B = 8 OR C1SB22B = 9) THEN C1SB22B = .;
   IF (C1SB22C = -1 OR C1SB22C = 8 OR C1SB22C = 9) THEN C1SB22C = .;
   IF (C1SC1 = -1 OR C1SC1 = 8) THEN C1SC1 = .;
   IF (C1SC2A = -1 OR C1SC2A = 8 OR C1SC2A = 9) THEN C1SC2A = .;
   IF (C1SC2B = -1 OR C1SC2B = 8 OR C1SC2B = 9) THEN C1SC2B = .;
   IF (C1SC2C = -1 OR C1SC2C = 8 OR C1SC2C = 9) THEN C1SC2C = .;
   IF (C1SC2D = -1 OR C1SC2D = 8 OR C1SC2D = 9) THEN C1SC2D = .;
   IF (C1SC2E = -1 OR C1SC2E = 8 OR C1SC2E = 9) THEN C1SC2E = .;
   IF (C1SC2F = -1 OR C1SC2F = 8 OR C1SC2F = 9) THEN C1SC2F = .;
   IF (C1SC2G = -1 OR C1SC2G = 8 OR C1SC2G = 9) THEN C1SC2G = .;
   IF (C1SC2H = -1 OR C1SC2H = 8 OR C1SC2H = 9) THEN C1SC2H = .;
   IF (C1SC2I = -1 OR C1SC2I = 8 OR C1SC2I = 9) THEN C1SC2I = .;
   IF (C1SC2J = -1 OR C1SC2J = 8 OR C1SC2J = 9) THEN C1SC2J = .;
   IF (C1SC2K = -1 OR C1SC2K = 8 OR C1SC2K = 9) THEN C1SC2K = .;
   IF (C1SC2L = -1 OR C1SC2L = 8 OR C1SC2L = 9) THEN C1SC2L = .;
   IF (C1SC2M = -1 OR C1SC2M = 8 OR C1SC2M = 9) THEN C1SC2M = .;
   IF (C1SC3A = -1) THEN C1SC3A = .;
   IF (C1SC3A >= 7 AND C1SC3A <= 9) THEN C1SC3A = .;
   IF (C1SC3B = -1) THEN C1SC3B = .;
   IF (C1SC3B >= 7 AND C1SC3B <= 9) THEN C1SC3B = .;
   IF (C1SC3C = -1) THEN C1SC3C = .;
   IF (C1SC3C >= 7 AND C1SC3C <= 9) THEN C1SC3C = .;
   IF (C1SC3D = -1) THEN C1SC3D = .;
   IF (C1SC3D >= 7 AND C1SC3D <= 9) THEN C1SC3D = .;
   IF (C1SC3E = -1) THEN C1SC3E = .;
   IF (C1SC3E >= 7 AND C1SC3E <= 9) THEN C1SC3E = .;
   IF (C1SC3F = -1) THEN C1SC3F = .;
   IF (C1SC3F >= 7 AND C1SC3F <= 9) THEN C1SC3F = .;
   IF (C1SC3G = -1) THEN C1SC3G = .;
   IF (C1SC3G >= 7 AND C1SC3G <= 9) THEN C1SC3G = .;
   IF (C1SC3H = -1) THEN C1SC3H = .;
   IF (C1SC3H >= 7 AND C1SC3H <= 9) THEN C1SC3H = .;
   IF (C1SC4 = -1) THEN C1SC4 = .;
   IF (C1SC4 >= 7 AND C1SC4 <= 9) THEN C1SC4 = .;
   IF (C1SC5 = -1) THEN C1SC5 = .;
   IF (C1SC5 >= 7 AND C1SC5 <= 9) THEN C1SC5 = .;
   IF (C1SC6 = -1) THEN C1SC6 = .;
   IF (C1SC6 >= 7 AND C1SC6 <= 9) THEN C1SC6 = .;
   IF (C1SC7A = -1) THEN C1SC7A = .;
   IF (C1SC7A >= 7 AND C1SC7A <= 9) THEN C1SC7A = .;
   IF (C1SC7B = -1) THEN C1SC7B = .;
   IF (C1SC7B >= 7 AND C1SC7B <= 9) THEN C1SC7B = .;
   IF (C1SC7C = -1) THEN C1SC7C = .;
   IF (C1SC7C >= 7 AND C1SC7C <= 9) THEN C1SC7C = .;
   IF (C1SC7D = -1) THEN C1SC7D = .;
   IF (C1SC7D >= 7 AND C1SC7D <= 9) THEN C1SC7D = .;
   IF (C1SC8A = -1) THEN C1SC8A = .;
   IF (C1SC8A >= 7 AND C1SC8A <= 9) THEN C1SC8A = .;
   IF (C1SC8B = -1) THEN C1SC8B = .;
   IF (C1SC8B >= 7 AND C1SC8B <= 9) THEN C1SC8B = .;
   IF (C1SC8C = -1) THEN C1SC8C = .;
   IF (C1SC8C >= 7 AND C1SC8C <= 9) THEN C1SC8C = .;
   IF (C1SC9 = -1 OR C1SC9 = 8) THEN C1SC9 = .;
   IF (C1SC10A = -1) THEN C1SC10A = .;
   IF (C1SC10A >= 7 AND C1SC10A <= 9) THEN C1SC10A = .;
   IF (C1SC10B = -1) THEN C1SC10B = .;
   IF (C1SC10B >= 7 AND C1SC10B <= 9) THEN C1SC10B = .;
   IF (C1SC10C = -1) THEN C1SC10C = .;
   IF (C1SC10C >= 7 AND C1SC10C <= 9) THEN C1SC10C = .;
   IF (C1SC10D = -1) THEN C1SC10D = .;
   IF (C1SC10D >= 7 AND C1SC10D <= 9) THEN C1SC10D = .;
   IF (C1SC10E = -1) THEN C1SC10E = .;
   IF (C1SC10E >= 7 AND C1SC10E <= 9) THEN C1SC10E = .;
   IF (C1SC10F = -1) THEN C1SC10F = .;
   IF (C1SC10F >= 7 AND C1SC10F <= 9) THEN C1SC10F = .;
   IF (C1SC10G = -1) THEN C1SC10G = .;
   IF (C1SC10G >= 7 AND C1SC10G <= 9) THEN C1SC10G = .;
   IF (C1SC10H = -1) THEN C1SC10H = .;
   IF (C1SC10H >= 7 AND C1SC10H <= 9) THEN C1SC10H = .;
   IF (C1SC11 = -1) THEN C1SC11 = .;
   IF (C1SC11 >= 7 AND C1SC11 <= 9) THEN C1SC11 = .;
   IF (C1SC12 = -1) THEN C1SC12 = .;
   IF (C1SC12 >= 7 AND C1SC12 <= 9) THEN C1SC12 = .;
   IF (C1SC13 = -1) THEN C1SC13 = .;
   IF (C1SC13 >= 7 AND C1SC13 <= 9) THEN C1SC13 = .;
   IF (C1SD1 = -1) THEN C1SD1 = .;
   IF (C1SD1 >= 7 AND C1SD1 <= 9) THEN C1SD1 = .;
   IF (C1SD2 = -1 OR C1SD2 = 998 OR C1SD2 = 999) THEN C1SD2 = .;
   IF (C1SD2A = -1 OR C1SD2A = 8 OR C1SD2A = 9) THEN C1SD2A = .;
   IF (C1SD3 = -1 OR C1SD3 = 9998 OR C1SD3 = 9999) THEN C1SD3 = .;
   IF (C1SD3A = -1 OR C1SD3A = 998 OR C1SD3A = 999) THEN C1SD3A = .;
   IF (C1SD4 = -1) THEN C1SD4 = .;
   IF (C1SD4 >= 7 AND C1SD4 <= 9) THEN C1SD4 = .;
   IF (C1SD5 = -1 OR C1SD5 = 998 OR C1SD5 = 999) THEN C1SD5 = .;
   IF (C1SD5A = -1 OR C1SD5A = 8 OR C1SD5A = 9) THEN C1SD5A = .;
   IF (C1SD6 = -1 OR C1SD6 = 9998 OR C1SD6 = 9999) THEN C1SD6 = .;
   IF (C1SD6A = -1 OR C1SD6A = 998 OR C1SD6A = 999) THEN C1SD6A = .;
   IF (C1SE1A = -1 OR C1SE1A = 8) THEN C1SE1A = .;
   IF (C1SE1B = -1 OR C1SE1B = 8) THEN C1SE1B = .;
   IF (C1SE1C = -1 OR C1SE1C = 8) THEN C1SE1C = .;
   IF (C1SE1D = -1 OR C1SE1D = 8) THEN C1SE1D = .;
   IF (C1SE1E = -1 OR C1SE1E = 8) THEN C1SE1E = .;
   IF (C1SE1F = -1 OR C1SE1F = 8) THEN C1SE1F = .;
   IF (C1SE1G = -1 OR C1SE1G = 8) THEN C1SE1G = .;
   IF (C1SE1H = -1 OR C1SE1H = 8) THEN C1SE1H = .;
   IF (C1SE1I = -1 OR C1SE1I = 8) THEN C1SE1I = .;
   IF (C1SE1J = -1 OR C1SE1J = 8) THEN C1SE1J = .;
   IF (C1SE1K = -1 OR C1SE1K = 8) THEN C1SE1K = .;
   IF (C1SE1L = -1 OR C1SE1L = 8) THEN C1SE1L = .;
   IF (C1SE1M = -1 OR C1SE1M = 8) THEN C1SE1M = .;
   IF (C1SE1N = -1 OR C1SE1N = 8) THEN C1SE1N = .;
   IF (C1SE1O = -1 OR C1SE1O = 8) THEN C1SE1O = .;
   IF (C1SE1P = -1 OR C1SE1P = 8) THEN C1SE1P = .;
   IF (C1SE1Q = -1 OR C1SE1Q = 8) THEN C1SE1Q = .;
   IF (C1SE1R = -1 OR C1SE1R = 8) THEN C1SE1R = .;
   IF (C1SE1S = -1 OR C1SE1S = 8) THEN C1SE1S = .;
   IF (C1SE1T = -1 OR C1SE1T = 8) THEN C1SE1T = .;
   IF (C1SE1U = -1 OR C1SE1U = 8) THEN C1SE1U = .;
   IF (C1SE1V = -1 OR C1SE1V = 8) THEN C1SE1V = .;
   IF (C1SE1W = -1 OR C1SE1W = 8) THEN C1SE1W = .;
   IF (C1SE1X = -1 OR C1SE1X = 8) THEN C1SE1X = .;
   IF (C1SE1Y = -1 OR C1SE1Y = 8) THEN C1SE1Y = .;
   IF (C1SE1Z = -1 OR C1SE1Z = 8) THEN C1SE1Z = .;
   IF (C1SE1AA = -1 OR C1SE1AA = 8) THEN C1SE1AA = .;
   IF (C1SE1BB = -1 OR C1SE1BB = 8) THEN C1SE1BB = .;
   IF (C1SE1CC = -1 OR C1SE1CC = 8) THEN C1SE1CC = .;
   IF (C1SE1DD = -1 OR C1SE1DD = 8) THEN C1SE1DD = .;
   IF (C1SE1EE = -1 OR C1SE1EE = 8) THEN C1SE1EE = .;
   IF (C1SE1FF = -1 OR C1SE1FF = 8) THEN C1SE1FF = .;
   IF (C1SE1GG = -1 OR C1SE1GG = 8) THEN C1SE1GG = .;
   IF (C1SE1HH = -1 OR C1SE1HH = 8) THEN C1SE1HH = .;
   IF (C1SE1II = -1 OR C1SE1II = 8) THEN C1SE1II = .;
   IF (C1SE1JJ = -1 OR C1SE1JJ = 8) THEN C1SE1JJ = .;
   IF (C1SE1KK = -1 OR C1SE1KK = 8) THEN C1SE1KK = .;
   IF (C1SE1LL = -1 OR C1SE1LL = 8) THEN C1SE1LL = .;
   IF (C1SE1MM = -1 OR C1SE1MM = 8) THEN C1SE1MM = .;
   IF (C1SE1NN = -1 OR C1SE1NN = 8) THEN C1SE1NN = .;
   IF (C1SE1OO = -1 OR C1SE1OO = 8) THEN C1SE1OO = .;
   IF (C1SE1PP = -1 OR C1SE1PP = 8) THEN C1SE1PP = .;
   IF (C1SE1QQ = -1 OR C1SE1QQ = 8) THEN C1SE1QQ = .;
   IF (C1SPWBA1 = -1.0 OR C1SPWBA1 = 98.0) THEN C1SPWBA1 = .;
   IF (C1SPWBE1 = -1.0 OR C1SPWBE1 = 98.0) THEN C1SPWBE1 = .;
   IF (C1SPWBG1 = -1.0 OR C1SPWBG1 = 98.0) THEN C1SPWBG1 = .;
   IF (C1SPWBR1 = -1.0 OR C1SPWBR1 = 98.0) THEN C1SPWBR1 = .;
   IF (C1SPWBU1 = -1.0 OR C1SPWBU1 = 98.0) THEN C1SPWBU1 = .;
   IF (C1SPWBS1 = -1.0 OR C1SPWBS1 = 98.0) THEN C1SPWBS1 = .;
   IF (C1SPWBA2 = -1.0 OR C1SPWBA2 = 98.0) THEN C1SPWBA2 = .;
   IF (C1SPWBE2 = -1.0 OR C1SPWBE2 = 98.0) THEN C1SPWBE2 = .;
   IF (C1SPWBG2 = -1.0 OR C1SPWBG2 = 98.0) THEN C1SPWBG2 = .;
   IF (C1SPWBR2 = -1.0 OR C1SPWBR2 = 98.0) THEN C1SPWBR2 = .;
   IF (C1SPWBU2 = -1.0 OR C1SPWBU2 = 98.0) THEN C1SPWBU2 = .;
   IF (C1SPWBS2 = -1.0 OR C1SPWBS2 = 98.0) THEN C1SPWBS2 = .;
   IF (C1SE2A = -1 OR C1SE2A = 8) THEN C1SE2A = .;
   IF (C1SE2B = -1 OR C1SE2B = 8) THEN C1SE2B = .;
   IF (C1SE2C = -1 OR C1SE2C = 8) THEN C1SE2C = .;
   IF (C1SE2D = -1 OR C1SE2D = 8) THEN C1SE2D = .;
   IF (C1SE2E = -1 OR C1SE2E = 8) THEN C1SE2E = .;
   IF (C1SE2F = -1 OR C1SE2F = 8) THEN C1SE2F = .;
   IF (C1SE2G = -1 OR C1SE2G = 8) THEN C1SE2G = .;
   IF (C1SE2H = -1 OR C1SE2H = 8) THEN C1SE2H = .;
   IF (C1SE2I = -1 OR C1SE2I = 8) THEN C1SE2I = .;
   IF (C1SE2J = -1 OR C1SE2J = 8) THEN C1SE2J = .;
   IF (C1SE2K = -1 OR C1SE2K = 8) THEN C1SE2K = .;
   IF (C1SE2L = -1 OR C1SE2L = 8) THEN C1SE2L = .;
   IF (C1SE2M = -1 OR C1SE2M = 8) THEN C1SE2M = .;
   IF (C1SE2N = -1 OR C1SE2N = 8) THEN C1SE2N = .;
   IF (C1SE2O = -1 OR C1SE2O = 8) THEN C1SE2O = .;
   IF (C1SE2P = -1 OR C1SE2P = 8) THEN C1SE2P = .;
   IF (C1SE2Q = -1 OR C1SE2Q = 8) THEN C1SE2Q = .;
   IF (C1SE3 = -1 OR C1SE3 = 98) THEN C1SE3 = .;
   IF (C1SE4A = -1 OR C1SE4A = 8) THEN C1SE4A = .;
   IF (C1SE4B = -1 OR C1SE4B = 8) THEN C1SE4B = .;
   IF (C1SE4C = -1 OR C1SE4C = 8) THEN C1SE4C = .;
   IF (C1SE4D = -1 OR C1SE4D = 8) THEN C1SE4D = .;
   IF (C1SE4E = -1 OR C1SE4E = 8) THEN C1SE4E = .;
   IF (C1SE4F = -1 OR C1SE4F = 8) THEN C1SE4F = .;
   IF (C1SE4G = -1 OR C1SE4G = 8) THEN C1SE4G = .;
   IF (C1SE4H = -1 OR C1SE4H = 8) THEN C1SE4H = .;
   IF (C1SE4I = -1 OR C1SE4I = 8) THEN C1SE4I = .;
   IF (C1SE4J = -1 OR C1SE4J = 8) THEN C1SE4J = .;
   IF (C1SE4K = -1 OR C1SE4K = 8) THEN C1SE4K = .;
   IF (C1SE4L = -1 OR C1SE4L = 8) THEN C1SE4L = .;
   IF (C1SMASTE = -1.0 OR C1SMASTE = 8.0) THEN C1SMASTE = .;
   IF (C1SCONST = -1.0 OR C1SCONST = 8.0) THEN C1SCONST = .;
   IF (C1SCTRL = -1.0 OR C1SCTRL = 8.0) THEN C1SCTRL = .;
   IF (C1SE4M = -1 OR C1SE4M = 8) THEN C1SE4M = .;
   IF (C1SE4N = -1 OR C1SE4N = 8) THEN C1SE4N = .;
   IF (C1SE4O = -1 OR C1SE4O = 8) THEN C1SE4O = .;
   IF (C1SE4P = -1 OR C1SE4P = 8) THEN C1SE4P = .;
   IF (C1SE4Q = -1 OR C1SE4Q = 8) THEN C1SE4Q = .;
   IF (C1SE4R = -1 OR C1SE4R = 8) THEN C1SE4R = .;
   IF (C1SE4S = -1 OR C1SE4S = 8) THEN C1SE4S = .;
   IF (C1SESTEE = -1.0 OR C1SESTEE = 98.0) THEN C1SESTEE = .;
   IF (C1SE4T = -1 OR C1SE4T = 8) THEN C1SE4T = .;
   IF (C1SE4U = -1 OR C1SE4U = 8) THEN C1SE4U = .;
   IF (C1SE4V = -1 OR C1SE4V = 8) THEN C1SE4V = .;
   IF (C1SE4W = -1 OR C1SE4W = 8) THEN C1SE4W = .;
   IF (C1SE4X = -1 OR C1SE4X = 8) THEN C1SE4X = .;
   IF (C1SE4Y = -1 OR C1SE4Y = 8) THEN C1SE4Y = .;
   IF (C1SINTER = -1.0 OR C1SINTER = 8.0) THEN C1SINTER = .;
   IF (C1SINDEP = -1.0 OR C1SINDEP = 8.0) THEN C1SINDEP = .;
   IF (C1SE5A = -1 OR C1SE5A = 8) THEN C1SE5A = .;
   IF (C1SE5B = -1 OR C1SE5B = 8) THEN C1SE5B = .;
   IF (C1SE5C = -1 OR C1SE5C = 8) THEN C1SE5C = .;
   IF (C1SE5D = -1 OR C1SE5D = 8) THEN C1SE5D = .;
   IF (C1SE5E = -1 OR C1SE5E = 8) THEN C1SE5E = .;
   IF (C1SE6A = -1 OR C1SE6A = 8) THEN C1SE6A = .;
   IF (C1SE6B = -1 OR C1SE6B = 8) THEN C1SE6B = .;
   IF (C1SE6C = -1 OR C1SE6C = 8) THEN C1SE6C = .;
   IF (C1SE6D = -1 OR C1SE6D = 8) THEN C1SE6D = .;
   IF (C1SE6E = -1 OR C1SE6E = 8) THEN C1SE6E = .;
   IF (C1SE6F = -1 OR C1SE6F = 8) THEN C1SE6F = .;
   IF (C1SE6G = -1 OR C1SE6G = 8) THEN C1SE6G = .;
   IF (C1SE6H = -1 OR C1SE6H = 8) THEN C1SE6H = .;
   IF (C1SE6I = -1 OR C1SE6I = 8) THEN C1SE6I = .;
   IF (C1SE6J = -1 OR C1SE6J = 8) THEN C1SE6J = .;
   IF (C1SE6K = -1 OR C1SE6K = 8) THEN C1SE6K = .;
   IF (C1SE6L = -1 OR C1SE6L = 8) THEN C1SE6L = .;
   IF (C1SE6M = -1 OR C1SE6M = 8) THEN C1SE6M = .;
   IF (C1SE6N = -1 OR C1SE6N = 8) THEN C1SE6N = .;
   IF (C1SE6O = -1 OR C1SE6O = 8) THEN C1SE6O = .;
   IF (C1SE6P = -1 OR C1SE6P = 8) THEN C1SE6P = .;
   IF (C1SE6Q = -1 OR C1SE6Q = 8) THEN C1SE6Q = .;
   IF (C1SE6R = -1 OR C1SE6R = 8) THEN C1SE6R = .;
   IF (C1SE6S = -1 OR C1SE6S = 8) THEN C1SE6S = .;
   IF (C1SE6T = -1 OR C1SE6T = 8) THEN C1SE6T = .;
   IF (C1SE6U = -1 OR C1SE6U = 8) THEN C1SE6U = .;
   IF (C1SE6V = -1 OR C1SE6V = 8) THEN C1SE6V = .;
   IF (C1SE6W = -1 OR C1SE6W = 8) THEN C1SE6W = .;
   IF (C1SE6X = -1 OR C1SE6X = 8) THEN C1SE6X = .;
   IF (C1SE6Y = -1 OR C1SE6Y = 8) THEN C1SE6Y = .;
   IF (C1SE6Z = -1 OR C1SE6Z = 8) THEN C1SE6Z = .;
   IF (C1SE6AA = -1 OR C1SE6AA = 8) THEN C1SE6AA = .;
   IF (C1SE6BB = -1 OR C1SE6BB = 8) THEN C1SE6BB = .;
   IF (C1SE6CC = -1 OR C1SE6CC = 8) THEN C1SE6CC = .;
   IF (C1SE6DD = -1 OR C1SE6DD = 8) THEN C1SE6DD = .;
   IF (C1SE6EE = -1 OR C1SE6EE = 8) THEN C1SE6EE = .;
   IF (C1SAGENC = -1.0 OR C1SAGENC = 8.0) THEN C1SAGENC = .;
   IF (C1SAGREE = -1.0 OR C1SAGREE = 8.0) THEN C1SAGREE = .;
   IF (C1SEXTRA = -1.0 OR C1SEXTRA = 8.0) THEN C1SEXTRA = .;
   IF (C1SNEURO = -1.0 OR C1SNEURO = 8.0) THEN C1SNEURO = .;
   IF (C1SCONS1 = -1.0 OR C1SCONS1 = 8.0) THEN C1SCONS1 = .;
   IF (C1SCONS2 = -1.0 OR C1SCONS2 = 8.0) THEN C1SCONS2 = .;
   IF (C1SOPEN = -1.0 OR C1SOPEN = 8.0) THEN C1SOPEN = .;
   IF (C1SE7A = -1 OR C1SE7A = 8) THEN C1SE7A = .;
   IF (C1SE7B = -1 OR C1SE7B = 8) THEN C1SE7B = .;
   IF (C1SE7C = -1 OR C1SE7C = 8) THEN C1SE7C = .;
   IF (C1SE7D = -1 OR C1SE7D = 8) THEN C1SE7D = .;
   IF (C1SE7E = -1 OR C1SE7E = 8) THEN C1SE7E = .;
   IF (C1SE7F = -1 OR C1SE7F = 8) THEN C1SE7F = .;
   IF (C1SE7G = -1 OR C1SE7G = 8) THEN C1SE7G = .;
   IF (C1SE7H = -1 OR C1SE7H = 8) THEN C1SE7H = .;
   IF (C1SE7I = -1 OR C1SE7I = 8) THEN C1SE7I = .;
   IF (C1SE7J = -1 OR C1SE7J = 8) THEN C1SE7J = .;
   IF (C1SE7K = -1 OR C1SE7K = 8) THEN C1SE7K = .;
   IF (C1SE7L = -1 OR C1SE7L = 8) THEN C1SE7L = .;
   IF (C1SE7M = -1 OR C1SE7M = 8) THEN C1SE7M = .;
   IF (C1SE7N = -1 OR C1SE7N = 8) THEN C1SE7N = .;
   IF (C1SE7O = -1 OR C1SE7O = 8) THEN C1SE7O = .;
   IF (C1SE7P = -1 OR C1SE7P = 8) THEN C1SE7P = .;
   IF (C1SE7Q = -1 OR C1SE7Q = 8) THEN C1SE7Q = .;
   IF (C1SE7R = -1 OR C1SE7R = 8) THEN C1SE7R = .;
   IF (C1SE7S = -1 OR C1SE7S = 8) THEN C1SE7S = .;
   IF (C1SE7T = -1 OR C1SE7T = 8) THEN C1SE7T = .;
   IF (C1SE7U = -1 OR C1SE7U = 8) THEN C1SE7U = .;
   IF (C1SE7V = -1 OR C1SE7V = 8) THEN C1SE7V = .;
   IF (C1SE7W = -1 OR C1SE7W = 8) THEN C1SE7W = .;
   IF (C1SE7X = -1 OR C1SE7X = 8) THEN C1SE7X = .;
   IF (C1SE7Y = -1 OR C1SE7Y = 8) THEN C1SE7Y = .;
   IF (C1SE7Z = -1 OR C1SE7Z = 8) THEN C1SE7Z = .;
   IF (C1SE7AA = -1 OR C1SE7AA = 8) THEN C1SE7AA = .;
   IF (C1SE7BB = -1 OR C1SE7BB = 8) THEN C1SE7BB = .;
   IF (C1SE7CC = -1 OR C1SE7CC = 8) THEN C1SE7CC = .;
   IF (C1SE7DD = -1 OR C1SE7DD = 8) THEN C1SE7DD = .;
   IF (C1SE7EE = -1 OR C1SE7EE = 8) THEN C1SE7EE = .;
   IF (C1SE7FF = -1 OR C1SE7FF = 8) THEN C1SE7FF = .;
   IF (C1SE7GG = -1 OR C1SE7GG = 8) THEN C1SE7GG = .;
   IF (C1SE8 = -1 OR C1SE8 = 8) THEN C1SE8 = .;
   IF (C1SE8A = -1 OR C1SE8A = 8) THEN C1SE8A = .;
   IF (C1SE9 = -1 OR C1SE9 = 8) THEN C1SE9 = .;
   IF (C1SE9A = -1 OR C1SE9A = 8) THEN C1SE9A = .;
   IF (C1SMPQWB = -1.0 OR C1SMPQWB = 98.0) THEN C1SMPQWB = .;
   IF (C1SMPQSP = -1.0 OR C1SMPQSP = 98.0) THEN C1SMPQSP = .;
   IF (C1SMPQAC = -1.0 OR C1SMPQAC = 98.0) THEN C1SMPQAC = .;
   IF (C1SMPQSC = -1.0 OR C1SMPQSC = 98.0) THEN C1SMPQSC = .;
   IF (C1SMPQSR = -1.0 OR C1SMPQSR = 98.0) THEN C1SMPQSR = .;
   IF (C1SMPQAG = -1.0 OR C1SMPQAG = 98.0) THEN C1SMPQAG = .;
   IF (C1SMPQAL = -1.0 OR C1SMPQAL = 98.0) THEN C1SMPQAL = .;
   IF (C1SMPQCN = -1.0 OR C1SMPQCN = 98.0) THEN C1SMPQCN = .;
   IF (C1SMPQTR = -1.0 OR C1SMPQTR = 98.0) THEN C1SMPQTR = .;
   IF (C1SMPQHA = -1.0 OR C1SMPQHA = 98.0) THEN C1SMPQHA = .;
   IF (C1SE10A = -1 OR C1SE10A = 8) THEN C1SE10A = .;
   IF (C1SE10B = -1 OR C1SE10B = 8) THEN C1SE10B = .;
   IF (C1SE10C = -1 OR C1SE10C = 8) THEN C1SE10C = .;
   IF (C1SE10D = -1 OR C1SE10D = 8) THEN C1SE10D = .;
   IF (C1SE10E = -1 OR C1SE10E = 8) THEN C1SE10E = .;
   IF (C1SE10F = -1 OR C1SE10F = 8) THEN C1SE10F = .;
   IF (C1SOPTIM = -1.0 OR C1SOPTIM = 98.0) THEN C1SOPTIM = .;
   IF (C1SPESSI = -1.0 OR C1SPESSI = 98.0) THEN C1SPESSI = .;
   IF (C1SORIEN = -1.0 OR C1SORIEN = 98.0) THEN C1SORIEN = .;
   IF (C1SE11A = -1 OR C1SE11A = 8) THEN C1SE11A = .;
   IF (C1SE11A1 = -1 OR C1SE11A1 = 8 OR C1SE11A1 = 9) THEN C1SE11A1 = .;
   IF (C1SE11A3 = -1 OR C1SE11A3 = 8 OR C1SE11A3 = 9) THEN C1SE11A3 = .;
   IF (C1SE11A4 = -1 OR C1SE11A4 = 8 OR C1SE11A4 = 9) THEN C1SE11A4 = .;
   IF (C1SE11A11 = -1 OR C1SE11A11 = 98 OR C1SE11A11 = 99) THEN C1SE11A11 = .;
   IF (C1SE11A12 = -1 OR C1SE11A12 = 98 OR C1SE11A12 = 99) THEN C1SE11A12 = .;
   IF (C1SE11AR1 = -1 OR C1SE11AR1 = 98 OR C1SE11AR1 = 99) THEN C1SE11AR1 = .;
   IF (C1SE11AR2 = -1 OR C1SE11AR2 = 98 OR C1SE11AR2 = 99) THEN C1SE11AR2 = .;
   IF (C1SE11B = -1 OR C1SE11B = 8) THEN C1SE11B = .;
   IF (C1SE11B1 = -1 OR C1SE11B1 = 8 OR C1SE11B1 = 9) THEN C1SE11B1 = .;
   IF (C1SE11B3 = -1 OR C1SE11B3 = 8 OR C1SE11B3 = 9) THEN C1SE11B3 = .;
   IF (C1SE11B4 = -1 OR C1SE11B4 = 8 OR C1SE11B4 = 9) THEN C1SE11B4 = .;
   IF (C1SE11B11 = -1 OR C1SE11B11 = 98 OR C1SE11B11 = 99) THEN C1SE11B11 = .;
   IF (C1SE11B12 = -1 OR C1SE11B12 = 98 OR C1SE11B12 = 99) THEN C1SE11B12 = .;
   IF (C1SE11B13 = -1 OR C1SE11B13 = 98 OR C1SE11B13 = 99) THEN C1SE11B13 = .;
   IF (C1SE11BR1 = -1 OR C1SE11BR1 = 98 OR C1SE11BR1 = 99) THEN C1SE11BR1 = .;
   IF (C1SE11BR2 = -1 OR C1SE11BR2 = 98 OR C1SE11BR2 = 99) THEN C1SE11BR2 = .;
   IF (C1SE11C = -1 OR C1SE11C = 8) THEN C1SE11C = .;
   IF (C1SE11C1 = -1 OR C1SE11C1 = 8 OR C1SE11C1 = 9) THEN C1SE11C1 = .;
   IF (C1SE11C3 = -1 OR C1SE11C3 = 8 OR C1SE11C3 = 9) THEN C1SE11C3 = .;
   IF (C1SE11C4 = -1 OR C1SE11C4 = 8 OR C1SE11C4 = 9) THEN C1SE11C4 = .;
   IF (C1SE11C11 = -1 OR C1SE11C11 = 98 OR C1SE11C11 = 99) THEN C1SE11C11 = .;
   IF (C1SE11C12 = -1 OR C1SE11C12 = 98 OR C1SE11C12 = 99) THEN C1SE11C12 = .;
   IF (C1SE11C13 = -1 OR C1SE11C13 = 98 OR C1SE11C13 = 99) THEN C1SE11C13 = .;
   IF (C1SE11CR1 = -1 OR C1SE11CR1 = 98 OR C1SE11CR1 = 99) THEN C1SE11CR1 = .;
   IF (C1SE11CR2 = -1 OR C1SE11CR2 = 98 OR C1SE11CR2 = 99) THEN C1SE11CR2 = .;
   IF (C1SE11D = -1 OR C1SE11D = 8) THEN C1SE11D = .;
   IF (C1SE11D1 = -1 OR C1SE11D1 = 8 OR C1SE11D1 = 9) THEN C1SE11D1 = .;
   IF (C1SE11D3 = -1 OR C1SE11D3 = 8 OR C1SE11D3 = 9) THEN C1SE11D3 = .;
   IF (C1SE11D4 = -1 OR C1SE11D4 = 8 OR C1SE11D4 = 9) THEN C1SE11D4 = .;
   IF (C1SE11D11 = -1 OR C1SE11D11 = 98 OR C1SE11D11 = 99) THEN C1SE11D11 = .;
   IF (C1SE11D12 = -1 OR C1SE11D12 = 98 OR C1SE11D12 = 99) THEN C1SE11D12 = .;
   IF (C1SE11D13 = -1 OR C1SE11D13 = 98 OR C1SE11D13 = 99) THEN C1SE11D13 = .;
   IF (C1SE11D14 = -1 OR C1SE11D14 = 98 OR C1SE11D14 = 99) THEN C1SE11D14 = .;
   IF (C1SE11D15 = -1 OR C1SE11D15 = 98 OR C1SE11D15 = 99) THEN C1SE11D15 = .;
   IF (C1SE11D16 = -1 OR C1SE11D16 = 98 OR C1SE11D16 = 99) THEN C1SE11D16 = .;
   IF (C1SE11DR1 = -1 OR C1SE11DR1 = 98 OR C1SE11DR1 = 99) THEN C1SE11DR1 = .;
   IF (C1SE11DR2 = -1 OR C1SE11DR2 = 98 OR C1SE11DR2 = 99) THEN C1SE11DR2 = .;
   IF (C1SE11E = -1 OR C1SE11E = 8) THEN C1SE11E = .;
   IF (C1SE11E1 = -1 OR C1SE11E1 = 8 OR C1SE11E1 = 9) THEN C1SE11E1 = .;
   IF (C1SE11E3 = -1 OR C1SE11E3 = 8 OR C1SE11E3 = 9) THEN C1SE11E3 = .;
   IF (C1SE11E4 = -1 OR C1SE11E4 = 8 OR C1SE11E4 = 9) THEN C1SE11E4 = .;
   IF (C1SE11ER1 = -1 OR C1SE11ER1 = 98 OR C1SE11ER1 = 99) THEN C1SE11ER1 = .;
   IF (C1SE11ER2 = -1 OR C1SE11ER2 = 98 OR C1SE11ER2 = 99) THEN C1SE11ER2 = .;
   IF (C1SE11F = -1 OR C1SE11F = 8) THEN C1SE11F = .;
   IF (C1SE11F1 = -1 OR C1SE11F1 = 8 OR C1SE11F1 = 9) THEN C1SE11F1 = .;
   IF (C1SE11F3 = -1 OR C1SE11F3 = 8 OR C1SE11F3 = 9) THEN C1SE11F3 = .;
   IF (C1SE11F4 = -1 OR C1SE11F4 = 8 OR C1SE11F4 = 9) THEN C1SE11F4 = .;
   IF (C1SE11F11 = -1 OR C1SE11F11 = 98 OR C1SE11F11 = 99) THEN C1SE11F11 = .;
   IF (C1SE11F12 = -1 OR C1SE11F12 = 98 OR C1SE11F12 = 99) THEN C1SE11F12 = .;
   IF (C1SE11FR1 = -1 OR C1SE11FR1 = 98 OR C1SE11FR1 = 99) THEN C1SE11FR1 = .;
   IF (C1SE11FR2 = -1 OR C1SE11FR2 = 98 OR C1SE11FR2 = 99) THEN C1SE11FR2 = .;
   IF (C1SE11G = -1 OR C1SE11G = 8) THEN C1SE11G = .;
   IF (C1SE11G1 = -1 OR C1SE11G1 = 8 OR C1SE11G1 = 9) THEN C1SE11G1 = .;
   IF (C1SE11G3 = -1 OR C1SE11G3 = 8 OR C1SE11G3 = 9) THEN C1SE11G3 = .;
   IF (C1SE11G4 = -1 OR C1SE11G4 = 8 OR C1SE11G4 = 9) THEN C1SE11G4 = .;
   IF (C1SE11G11 = -1 OR C1SE11G11 = 98 OR C1SE11G11 = 99) THEN C1SE11G11 = .;
   IF (C1SE11G12 = -1 OR C1SE11G12 = 98 OR C1SE11G12 = 99) THEN C1SE11G12 = .;
   IF (C1SE11G13 = -1 OR C1SE11G13 = 98 OR C1SE11G13 = 99) THEN C1SE11G13 = .;
   IF (C1SE11G14 = -1 OR C1SE11G14 = 98 OR C1SE11G14 = 99) THEN C1SE11G14 = .;
   IF (C1SE11GR1 = -1 OR C1SE11GR1 = 98 OR C1SE11GR1 = 99) THEN C1SE11GR1 = .;
   IF (C1SE11GR2 = -1 OR C1SE11GR2 = 98 OR C1SE11GR2 = 99) THEN C1SE11GR2 = .;
   IF (C1SE12A = -1 OR C1SE12A = 8) THEN C1SE12A = .;
   IF (C1SE12A1 = -1 OR C1SE12A1 = 8 OR C1SE12A1 = 9) THEN C1SE12A1 = .;
   IF (C1SE12A3 = -1 OR C1SE12A3 = 8 OR C1SE12A3 = 9) THEN C1SE12A3 = .;
   IF (C1SE12A4 = -1 OR C1SE12A4 = 8 OR C1SE12A4 = 9) THEN C1SE12A4 = .;
   IF (C1SE12A11 = -1 OR C1SE12A11 = 98 OR C1SE12A11 = 99) THEN C1SE12A11 = .;
   IF (C1SE12A12 = -1 OR C1SE12A12 = 98 OR C1SE12A12 = 99) THEN C1SE12A12 = .;
   IF (C1SE12AR1 = -1 OR C1SE12AR1 = 98 OR C1SE12AR1 = 99) THEN C1SE12AR1 = .;
   IF (C1SE12AR2 = -1 OR C1SE12AR2 = 98 OR C1SE12AR2 = 99) THEN C1SE12AR2 = .;
   IF (C1SE12B = -1 OR C1SE12B = 8) THEN C1SE12B = .;
   IF (C1SE12B1 = -1 OR C1SE12B1 = 8 OR C1SE12B1 = 9) THEN C1SE12B1 = .;
   IF (C1SE12B3 = -1 OR C1SE12B3 = 8 OR C1SE12B3 = 9) THEN C1SE12B3 = .;
   IF (C1SE12B4 = -1 OR C1SE12B4 = 8 OR C1SE12B4 = 9) THEN C1SE12B4 = .;
   IF (C1SE12B11 = -1 OR C1SE12B11 = 98 OR C1SE12B11 = 99) THEN C1SE12B11 = .;
   IF (C1SE12B12 = -1 OR C1SE12B12 = 98 OR C1SE12B12 = 99) THEN C1SE12B12 = .;
   IF (C1SE12B13 = -1 OR C1SE12B13 = 98 OR C1SE12B13 = 99) THEN C1SE12B13 = .;
   IF (C1SE12B14 = -1 OR C1SE12B14 = 98 OR C1SE12B14 = 99) THEN C1SE12B14 = .;
   IF (C1SE12B15 = -1 OR C1SE12B15 = 98 OR C1SE12B15 = 99) THEN C1SE12B15 = .;
   IF (C1SE12B16 = -1 OR C1SE12B16 = 98 OR C1SE12B16 = 99) THEN C1SE12B16 = .;
   IF (C1SE12BR1 = -1 OR C1SE12BR1 = 98 OR C1SE12BR1 = 99) THEN C1SE12BR1 = .;
   IF (C1SE12BR2 = -1 OR C1SE12BR2 = 98 OR C1SE12BR2 = 99) THEN C1SE12BR2 = .;
   IF (C1SE12C = -1 OR C1SE12C = 8) THEN C1SE12C = .;
   IF (C1SE12C1 = -1 OR C1SE12C1 = 8 OR C1SE12C1 = 9) THEN C1SE12C1 = .;
   IF (C1SE12C3 = -1 OR C1SE12C3 = 8 OR C1SE12C3 = 9) THEN C1SE12C3 = .;
   IF (C1SE12C4 = -1 OR C1SE12C4 = 8 OR C1SE12C4 = 9) THEN C1SE12C4 = .;
   IF (C1SE12C11 = -1 OR C1SE12C11 = 98 OR C1SE12C11 = 99) THEN C1SE12C11 = .;
   IF (C1SE12C12 = -1 OR C1SE12C12 = 98 OR C1SE12C12 = 99) THEN C1SE12C12 = .;
   IF (C1SE12C13 = -1 OR C1SE12C13 = 98 OR C1SE12C13 = 99) THEN C1SE12C13 = .;
   IF (C1SE12C14 = -1 OR C1SE12C14 = 98 OR C1SE12C14 = 99) THEN C1SE12C14 = .;
   IF (C1SE12C15 = -1 OR C1SE12C15 = 98 OR C1SE12C15 = 99) THEN C1SE12C15 = .;
   IF (C1SE12CR1 = -1 OR C1SE12CR1 = 98 OR C1SE12CR1 = 99) THEN C1SE12CR1 = .;
   IF (C1SE12CR2 = -1 OR C1SE12CR2 = 98 OR C1SE12CR2 = 99) THEN C1SE12CR2 = .;
   IF (C1SE12D = -1 OR C1SE12D = 8) THEN C1SE12D = .;
   IF (C1SE12D1 = -1 OR C1SE12D1 = 8 OR C1SE12D1 = 9) THEN C1SE12D1 = .;
   IF (C1SE12D3 = -1 OR C1SE12D3 = 8 OR C1SE12D3 = 9) THEN C1SE12D3 = .;
   IF (C1SE12D4 = -1 OR C1SE12D4 = 8 OR C1SE12D4 = 9) THEN C1SE12D4 = .;
   IF (C1SE12D11 = -1 OR C1SE12D11 = 98 OR C1SE12D11 = 99) THEN C1SE12D11 = .;
   IF (C1SE12D12 = -1 OR C1SE12D12 = 98 OR C1SE12D12 = 99) THEN C1SE12D12 = .;
   IF (C1SE12D13 = -1 OR C1SE12D13 = 98 OR C1SE12D13 = 99) THEN C1SE12D13 = .;
   IF (C1SE12DR1 = -1 OR C1SE12DR1 = 98 OR C1SE12DR1 = 99) THEN C1SE12DR1 = .;
   IF (C1SE12DR2 = -1 OR C1SE12DR2 = 98 OR C1SE12DR2 = 99) THEN C1SE12DR2 = .;
   IF (C1SE12E = -1 OR C1SE12E = 8) THEN C1SE12E = .;
   IF (C1SE12E1 = -1 OR C1SE12E1 = 8 OR C1SE12E1 = 9) THEN C1SE12E1 = .;
   IF (C1SE12E3 = -1 OR C1SE12E3 = 8 OR C1SE12E3 = 9) THEN C1SE12E3 = .;
   IF (C1SE12E4 = -1 OR C1SE12E4 = 8 OR C1SE12E4 = 9) THEN C1SE12E4 = .;
   IF (C1SE12E11 = -1 OR C1SE12E11 = 98 OR C1SE12E11 = 99) THEN C1SE12E11 = .;
   IF (C1SE12E12 = -1 OR C1SE12E12 = 98 OR C1SE12E12 = 99) THEN C1SE12E12 = .;
   IF (C1SE12E13 = -1 OR C1SE12E13 = 98 OR C1SE12E13 = 99) THEN C1SE12E13 = .;
   IF (C1SE12E14 = -1 OR C1SE12E14 = 98 OR C1SE12E14 = 99) THEN C1SE12E14 = .;
   IF (C1SE12ER1 = -1 OR C1SE12ER1 = 98 OR C1SE12ER1 = 99) THEN C1SE12ER1 = .;
   IF (C1SE12ER2 = -1 OR C1SE12ER2 = 98 OR C1SE12ER2 = 99) THEN C1SE12ER2 = .;
   IF (C1SE12F = -1 OR C1SE12F = 8) THEN C1SE12F = .;
   IF (C1SE12F1 = -1 OR C1SE12F1 = 8 OR C1SE12F1 = 9) THEN C1SE12F1 = .;
   IF (C1SE12F3 = -1 OR C1SE12F3 = 8 OR C1SE12F3 = 9) THEN C1SE12F3 = .;
   IF (C1SE12F4 = -1 OR C1SE12F4 = 8 OR C1SE12F4 = 9) THEN C1SE12F4 = .;
   IF (C1SE12F11 = -1 OR C1SE12F11 = 98 OR C1SE12F11 = 99) THEN C1SE12F11 = .;
   IF (C1SE12F12 = -1 OR C1SE12F12 = 98 OR C1SE12F12 = 99) THEN C1SE12F12 = .;
   IF (C1SE12F13 = -1 OR C1SE12F13 = 98 OR C1SE12F13 = 99) THEN C1SE12F13 = .;
   IF (C1SE12F14 = -1 OR C1SE12F14 = 98 OR C1SE12F14 = 99) THEN C1SE12F14 = .;
   IF (C1SE12FR1 = -1 OR C1SE12FR1 = 98 OR C1SE12FR1 = 99) THEN C1SE12FR1 = .;
   IF (C1SE12FR2 = -1 OR C1SE12FR2 = 98 OR C1SE12FR2 = 99) THEN C1SE12FR2 = .;
   IF (C1SE12G = -1 OR C1SE12G = 8) THEN C1SE12G = .;
   IF (C1SE12G1 = -1 OR C1SE12G1 = 8 OR C1SE12G1 = 9) THEN C1SE12G1 = .;
   IF (C1SE12G3 = -1 OR C1SE12G3 = 8 OR C1SE12G3 = 9) THEN C1SE12G3 = .;
   IF (C1SE12G4 = -1 OR C1SE12G4 = 8 OR C1SE12G4 = 9) THEN C1SE12G4 = .;
   IF (C1SE12G11 = -1 OR C1SE12G11 = 98 OR C1SE12G11 = 99) THEN C1SE12G11 = .;
   IF (C1SE12G12 = -1 OR C1SE12G12 = 98 OR C1SE12G12 = 99) THEN C1SE12G12 = .;
   IF (C1SE12GR1 = -1 OR C1SE12GR1 = 98 OR C1SE12GR1 = 99) THEN C1SE12GR1 = .;
   IF (C1SE12GR2 = -1 OR C1SE12GR2 = 98 OR C1SE12GR2 = 99) THEN C1SE12GR2 = .;
   IF (C1SE12H = -1 OR C1SE12H = 8) THEN C1SE12H = .;
   IF (C1SE12H1 = -1 OR C1SE12H1 = 8 OR C1SE12H1 = 9) THEN C1SE12H1 = .;
   IF (C1SE12H3 = -1 OR C1SE12H3 = 8 OR C1SE12H3 = 9) THEN C1SE12H3 = .;
   IF (C1SE12H4 = -1 OR C1SE12H4 = 8 OR C1SE12H4 = 9) THEN C1SE12H4 = .;
   IF (C1SE12H11 = -1 OR C1SE12H11 = 98 OR C1SE12H11 = 99) THEN C1SE12H11 = .;
   IF (C1SE12H12 = -1 OR C1SE12H12 = 98 OR C1SE12H12 = 99) THEN C1SE12H12 = .;
   IF (C1SE12H13 = -1 OR C1SE12H13 = 98 OR C1SE12H13 = 99) THEN C1SE12H13 = .;
   IF (C1SE12H14 = -1 OR C1SE12H14 = 98 OR C1SE12H14 = 99) THEN C1SE12H14 = .;
   IF (C1SE12H15 = -1 OR C1SE12H15 = 98 OR C1SE12H15 = 99) THEN C1SE12H15 = .;
   IF (C1SE12H16 = -1 OR C1SE12H16 = 98 OR C1SE12H16 = 99) THEN C1SE12H16 = .;
   IF (C1SE12HR1 = -1 OR C1SE12HR1 = 98 OR C1SE12HR1 = 99) THEN C1SE12HR1 = .;
   IF (C1SE12HR2 = -1 OR C1SE12HR2 = 98 OR C1SE12HR2 = 99) THEN C1SE12HR2 = .;
   IF (C1SE12I = -1 OR C1SE12I = 8) THEN C1SE12I = .;
   IF (C1SE12I1 = -1 OR C1SE12I1 = 8 OR C1SE12I1 = 9) THEN C1SE12I1 = .;
   IF (C1SE12I3 = -1 OR C1SE12I3 = 8 OR C1SE12I3 = 9) THEN C1SE12I3 = .;
   IF (C1SE12I4 = -1 OR C1SE12I4 = 8 OR C1SE12I4 = 9) THEN C1SE12I4 = .;
   IF (C1SE12I11 = -1 OR C1SE12I11 = 98 OR C1SE12I11 = 99) THEN C1SE12I11 = .;
   IF (C1SE12I12 = -1 OR C1SE12I12 = 98 OR C1SE12I12 = 99) THEN C1SE12I12 = .;
   IF (C1SE12I13 = -1 OR C1SE12I13 = 98 OR C1SE12I13 = 99) THEN C1SE12I13 = .;
   IF (C1SE12I14 = -1 OR C1SE12I14 = 98 OR C1SE12I14 = 99) THEN C1SE12I14 = .;
   IF (C1SE12I15 = -1 OR C1SE12I15 = 98 OR C1SE12I15 = 99) THEN C1SE12I15 = .;
   IF (C1SE12J = -1 OR C1SE12J = 8) THEN C1SE12J = .;
   IF (C1SE12J1 = -1 OR C1SE12J1 = 8 OR C1SE12J1 = 9) THEN C1SE12J1 = .;
   IF (C1SE12J3 = -1 OR C1SE12J3 = 8 OR C1SE12J3 = 9) THEN C1SE12J3 = .;
   IF (C1SE12J4 = -1 OR C1SE12J4 = 8 OR C1SE12J4 = 9) THEN C1SE12J4 = .;
   IF (C1SE12J11 = -1 OR C1SE12J11 = 98 OR C1SE12J11 = 99) THEN C1SE12J11 = .;
   IF (C1SE12J12 = -1 OR C1SE12J12 = 98 OR C1SE12J12 = 99) THEN C1SE12J12 = .;
   IF (C1SE12J13 = -1 OR C1SE12J13 = 98 OR C1SE12J13 = 99) THEN C1SE12J13 = .;
   IF (C1SE12J14 = -1 OR C1SE12J14 = 98 OR C1SE12J14 = 99) THEN C1SE12J14 = .;
   IF (C1SE12J15 = -1 OR C1SE12J15 = 98 OR C1SE12J15 = 99) THEN C1SE12J15 = .;
   IF (C1SE12JR1 = -1 OR C1SE12JR1 = 98 OR C1SE12JR1 = 99) THEN C1SE12JR1 = .;
   IF (C1SE12JR2 = -1 OR C1SE12JR2 = 98 OR C1SE12JR2 = 99) THEN C1SE12JR2 = .;
   IF (C1SE12K = -1 OR C1SE12K = 8) THEN C1SE12K = .;
   IF (C1SE12K1 = -1 OR C1SE12K1 = 8 OR C1SE12K1 = 9) THEN C1SE12K1 = .;
   IF (C1SE12K3 = -1 OR C1SE12K3 = 8 OR C1SE12K3 = 9) THEN C1SE12K3 = .;
   IF (C1SE12K4 = -1 OR C1SE12K4 = 8 OR C1SE12K4 = 9) THEN C1SE12K4 = .;
   IF (C1SE12K11 = -1 OR C1SE12K11 = 98 OR C1SE12K11 = 99) THEN C1SE12K11 = .;
   IF (C1SE12K12 = -1 OR C1SE12K12 = 98 OR C1SE12K12 = 99) THEN C1SE12K12 = .;
   IF (C1SE12L = -1 OR C1SE12L = 8) THEN C1SE12L = .;
   IF (C1SE12L1 = -1 OR C1SE12L1 = 8 OR C1SE12L1 = 9) THEN C1SE12L1 = .;
   IF (C1SE12L3 = -1 OR C1SE12L3 = 8 OR C1SE12L3 = 9) THEN C1SE12L3 = .;
   IF (C1SE12L4 = -1 OR C1SE12L4 = 8 OR C1SE12L4 = 9) THEN C1SE12L4 = .;
   IF (C1SE12L11 = -1 OR C1SE12L11 = 98 OR C1SE12L11 = 99) THEN C1SE12L11 = .;
   IF (C1SE12L12 = -1 OR C1SE12L12 = 98 OR C1SE12L12 = 99) THEN C1SE12L12 = .;
   IF (C1SE12L13 = -1 OR C1SE12L13 = 98 OR C1SE12L13 = 99) THEN C1SE12L13 = .;
   IF (C1SE12L14 = -1 OR C1SE12L14 = 98 OR C1SE12L14 = 99) THEN C1SE12L14 = .;
   IF (C1SE12L15 = -1 OR C1SE12L15 = 98 OR C1SE12L15 = 99) THEN C1SE12L15 = .;
   IF (C1SE12L16 = -1 OR C1SE12L16 = 98 OR C1SE12L16 = 99) THEN C1SE12L16 = .;
   IF (C1SE12LR1 = -1 OR C1SE12LR1 = 98 OR C1SE12LR1 = 99) THEN C1SE12LR1 = .;
   IF (C1SE12LR2 = -1 OR C1SE12LR2 = 98 OR C1SE12LR2 = 99) THEN C1SE12LR2 = .;
   IF (C1SE12M = -1 OR C1SE12M = 8) THEN C1SE12M = .;
   IF (C1SE12M1 = -1 OR C1SE12M1 = 8 OR C1SE12M1 = 9) THEN C1SE12M1 = .;
   IF (C1SE12M3 = -1 OR C1SE12M3 = 8 OR C1SE12M3 = 9) THEN C1SE12M3 = .;
   IF (C1SE12M4 = -1 OR C1SE12M4 = 8 OR C1SE12M4 = 9) THEN C1SE12M4 = .;
   IF (C1SE12M11 = -1 OR C1SE12M11 = 98 OR C1SE12M11 = 99) THEN C1SE12M11 = .;
   IF (C1SE12M12 = -1 OR C1SE12M12 = 98 OR C1SE12M12 = 99) THEN C1SE12M12 = .;
   IF (C1SE12M13 = -1 OR C1SE12M13 = 98 OR C1SE12M13 = 99) THEN C1SE12M13 = .;
   IF (C1SE12M14 = -1 OR C1SE12M14 = 98 OR C1SE12M14 = 99) THEN C1SE12M14 = .;
   IF (C1SE12M15 = -1 OR C1SE12M15 = 98 OR C1SE12M15 = 99) THEN C1SE12M15 = .;
   IF (C1SE12MR1 = -1 OR C1SE12MR1 = 98 OR C1SE12MR1 = 99) THEN C1SE12MR1 = .;
   IF (C1SE12MR2 = -1 OR C1SE12MR2 = 98 OR C1SE12MR2 = 99) THEN C1SE12MR2 = .;
   IF (C1SE12N = -1 OR C1SE12N = 8) THEN C1SE12N = .;
   IF (C1SE12N1 = -1 OR C1SE12N1 = 8 OR C1SE12N1 = 9) THEN C1SE12N1 = .;
   IF (C1SE12N3 = -1 OR C1SE12N3 = 8 OR C1SE12N3 = 9) THEN C1SE12N3 = .;
   IF (C1SE12N4 = -1 OR C1SE12N4 = 8 OR C1SE12N4 = 9) THEN C1SE12N4 = .;
   IF (C1SE12N11 = -1 OR C1SE12N11 = 98 OR C1SE12N11 = 99) THEN C1SE12N11 = .;
   IF (C1SE12N12 = -1 OR C1SE12N12 = 98 OR C1SE12N12 = 99) THEN C1SE12N12 = .;
   IF (C1SE12NR1 = -1 OR C1SE12NR1 = 98 OR C1SE12NR1 = 99) THEN C1SE12NR1 = .;
   IF (C1SE12NR2 = -1 OR C1SE12NR2 = 98 OR C1SE12NR2 = 99) THEN C1SE12NR2 = .;
   IF (C1SE12O = -1 OR C1SE12O = 8) THEN C1SE12O = .;
   IF (C1SE12O1 = -1 OR C1SE12O1 = 8 OR C1SE12O1 = 9) THEN C1SE12O1 = .;
   IF (C1SE12O3 = -1 OR C1SE12O3 = 8 OR C1SE12O3 = 9) THEN C1SE12O3 = .;
   IF (C1SE12O4 = -1 OR C1SE12O4 = 8 OR C1SE12O4 = 9) THEN C1SE12O4 = .;
   IF (C1SE12O11 = -1 OR C1SE12O11 = 98 OR C1SE12O11 = 99) THEN C1SE12O11 = .;
   IF (C1SE12O12 = -1 OR C1SE12O12 = 98 OR C1SE12O12 = 99) THEN C1SE12O12 = .;
   IF (C1SE12O13 = -1 OR C1SE12O13 = 98 OR C1SE12O13 = 99) THEN C1SE12O13 = .;
   IF (C1SE12O14 = -1 OR C1SE12O14 = 98 OR C1SE12O14 = 99) THEN C1SE12O14 = .;
   IF (C1SE12OR1 = -1 OR C1SE12OR1 = 98 OR C1SE12OR1 = 99) THEN C1SE12OR1 = .;
   IF (C1SE12OR2 = -1 OR C1SE12OR2 = 98 OR C1SE12OR2 = 99) THEN C1SE12OR2 = .;
   IF (C1SE12P = -1 OR C1SE12P = 8) THEN C1SE12P = .;
   IF (C1SE12P1 = -1 OR C1SE12P1 = 8 OR C1SE12P1 = 9) THEN C1SE12P1 = .;
   IF (C1SE12P3 = -1 OR C1SE12P3 = 8 OR C1SE12P3 = 9) THEN C1SE12P3 = .;
   IF (C1SE12P4 = -1 OR C1SE12P4 = 8 OR C1SE12P4 = 9) THEN C1SE12P4 = .;
   IF (C1SE12P11 = -1 OR C1SE12P11 = 98 OR C1SE12P11 = 99) THEN C1SE12P11 = .;
   IF (C1SE12P12 = -1 OR C1SE12P12 = 98 OR C1SE12P12 = 99) THEN C1SE12P12 = .;
   IF (C1SE12P13 = -1 OR C1SE12P13 = 98 OR C1SE12P13 = 99) THEN C1SE12P13 = .;
   IF (C1SE12PR1 = -1 OR C1SE12PR1 = 98 OR C1SE12PR1 = 99) THEN C1SE12PR1 = .;
   IF (C1SE12PR2 = -1 OR C1SE12PR2 = 98 OR C1SE12PR2 = 99) THEN C1SE12PR2 = .;
   IF (C1SE12Q = -1 OR C1SE12Q = 8) THEN C1SE12Q = .;
   IF (C1SE12Q1 = -1 OR C1SE12Q1 = 8 OR C1SE12Q1 = 9) THEN C1SE12Q1 = .;
   IF (C1SE12Q3 = -1 OR C1SE12Q3 = 8 OR C1SE12Q3 = 9) THEN C1SE12Q3 = .;
   IF (C1SE12Q4 = -1 OR C1SE12Q4 = 8 OR C1SE12Q4 = 9) THEN C1SE12Q4 = .;
   IF (C1SE12Q11 = -1 OR C1SE12Q11 = 98 OR C1SE12Q11 = 99) THEN C1SE12Q11 = .;
   IF (C1SE12Q12 = -1 OR C1SE12Q12 = 98 OR C1SE12Q12 = 99) THEN C1SE12Q12 = .;
   IF (C1SE12Q13 = -1 OR C1SE12Q13 = 98 OR C1SE12Q13 = 99) THEN C1SE12Q13 = .;
   IF (C1SE12Q14 = -1 OR C1SE12Q14 = 98 OR C1SE12Q14 = 99) THEN C1SE12Q14 = .;
   IF (C1SE12QR1 = -1 OR C1SE12QR1 = 98 OR C1SE12QR1 = 99) THEN C1SE12QR1 = .;
   IF (C1SE12QR2 = -1 OR C1SE12QR2 = 98 OR C1SE12QR2 = 99) THEN C1SE12QR2 = .;
   IF (C1SE12R = -1 OR C1SE12R = 8) THEN C1SE12R = .;
   IF (C1SE12R1 = -1 OR C1SE12R1 = 8 OR C1SE12R1 = 9) THEN C1SE12R1 = .;
   IF (C1SE12R3 = -1 OR C1SE12R3 = 8 OR C1SE12R3 = 9) THEN C1SE12R3 = .;
   IF (C1SE12R4 = -1 OR C1SE12R4 = 8 OR C1SE12R4 = 9) THEN C1SE12R4 = .;
   IF (C1SE12R11 = -1 OR C1SE12R11 = 98 OR C1SE12R11 = 99) THEN C1SE12R11 = .;
   IF (C1SE12R12 = -1 OR C1SE12R12 = 98 OR C1SE12R12 = 99) THEN C1SE12R12 = .;
   IF (C1SE12RR1 = -1 OR C1SE12RR1 = 98 OR C1SE12RR1 = 99) THEN C1SE12RR1 = .;
   IF (C1SE12RR2 = -1 OR C1SE12RR2 = 98 OR C1SE12RR2 = 99) THEN C1SE12RR2 = .;
   IF (C1SE12S = -1 OR C1SE12S = 8) THEN C1SE12S = .;
   IF (C1SE12S1 = -1 OR C1SE12S1 = 8 OR C1SE12S1 = 9) THEN C1SE12S1 = .;
   IF (C1SE12S3 = -1 OR C1SE12S3 = 8 OR C1SE12S3 = 9) THEN C1SE12S3 = .;
   IF (C1SE12S4 = -1 OR C1SE12S4 = 8 OR C1SE12S4 = 9) THEN C1SE12S4 = .;
   IF (C1SE12S11 = -1 OR C1SE12S11 = 98 OR C1SE12S11 = 99) THEN C1SE12S11 = .;
   IF (C1SE12S12 = -1 OR C1SE12S12 = 98 OR C1SE12S12 = 99) THEN C1SE12S12 = .;
   IF (C1SE12SR1 = -1 OR C1SE12SR1 = 98 OR C1SE12SR1 = 99) THEN C1SE12SR1 = .;
   IF (C1SE12SR2 = -1 OR C1SE12SR2 = 98 OR C1SE12SR2 = 99) THEN C1SE12SR2 = .;
   IF (C1SE12T = -1 OR C1SE12T = 8) THEN C1SE12T = .;
   IF (C1SE12T1 = -1 OR C1SE12T1 = 8 OR C1SE12T1 = 9) THEN C1SE12T1 = .;
   IF (C1SE12T3 = -1 OR C1SE12T3 = 8 OR C1SE12T3 = 9) THEN C1SE12T3 = .;
   IF (C1SE12T4 = -1 OR C1SE12T4 = 8 OR C1SE12T4 = 9) THEN C1SE12T4 = .;
   IF (C1SE12T11 = -1 OR C1SE12T11 = 98 OR C1SE12T11 = 99) THEN C1SE12T11 = .;
   IF (C1SE12T12 = -1 OR C1SE12T12 = 98 OR C1SE12T12 = 99) THEN C1SE12T12 = .;
   IF (C1SE12T13 = -1 OR C1SE12T13 = 98 OR C1SE12T13 = 99) THEN C1SE12T13 = .;
   IF (C1SE12T14 = -1 OR C1SE12T14 = 98 OR C1SE12T14 = 99) THEN C1SE12T14 = .;
   IF (C1SE12T15 = -1 OR C1SE12T15 = 98 OR C1SE12T15 = 99) THEN C1SE12T15 = .;
   IF (C1SE12T16 = -1 OR C1SE12T16 = 98 OR C1SE12T16 = 99) THEN C1SE12T16 = .;
   IF (C1SE12TR1 = -1 OR C1SE12TR1 = 98 OR C1SE12TR1 = 99) THEN C1SE12TR1 = .;
   IF (C1SE12TR2 = -1 OR C1SE12TR2 = 98 OR C1SE12TR2 = 99) THEN C1SE12TR2 = .;
   IF (C1SE13A = -1 OR C1SE13A = 8) THEN C1SE13A = .;
   IF (C1SE13B = -1 OR C1SE13B = 8) THEN C1SE13B = .;
   IF (C1SE13C = -1 OR C1SE13C = 8) THEN C1SE13C = .;
   IF (C1SE13D = -1 OR C1SE13D = 8) THEN C1SE13D = .;
   IF (C1SE13E = -1 OR C1SE13E = 8) THEN C1SE13E = .;
   IF (C1SE13F = -1 OR C1SE13F = 8) THEN C1SE13F = .;
   IF (C1SE13G = -1 OR C1SE13G = 8) THEN C1SE13G = .;
   IF (C1SE13H = -1 OR C1SE13H = 8) THEN C1SE13H = .;
   IF (C1SE13I = -1 OR C1SE13I = 8) THEN C1SE13I = .;
   IF (C1SE13J = -1 OR C1SE13J = 8) THEN C1SE13J = .;
   IF (C1SE13K = -1 OR C1SE13K = 8) THEN C1SE13K = .;
   IF (C1SMAR = -1.0 OR C1SMAR = 8.0) THEN C1SMAR = .;
   IF (C1SFAM = -1.0 OR C1SFAM = 8.0) THEN C1SFAM = .;
   IF (C1SE14A = -1 OR C1SE14A = 8) THEN C1SE14A = .;
   IF (C1SE14B = -1 OR C1SE14B = 8) THEN C1SE14B = .;
   IF (C1SE14C = -1 OR C1SE14C = 8) THEN C1SE14C = .;
   IF (C1SE14D = -1 OR C1SE14D = 8) THEN C1SE14D = .;
   IF (C1SE14E = -1 OR C1SE14E = 8) THEN C1SE14E = .;
   IF (C1SE14F = -1 OR C1SE14F = 8) THEN C1SE14F = .;
   IF (C1SE14G = -1 OR C1SE14G = 8) THEN C1SE14G = .;
   IF (C1SE14H = -1 OR C1SE14H = 8) THEN C1SE14H = .;
   IF (C1SE14I = -1 OR C1SE14I = 8) THEN C1SE14I = .;
   IF (C1SE14J = -1 OR C1SE14J = 8) THEN C1SE14J = .;
   IF (C1SE14K = -1 OR C1SE14K = 8) THEN C1SE14K = .;
   IF (C1SE14L = -1 OR C1SE14L = 8) THEN C1SE14L = .;
   IF (C1SE14M = -1 OR C1SE14M = 8) THEN C1SE14M = .;
   IF (C1SE14N = -1 OR C1SE14N = 8) THEN C1SE14N = .;
   IF (C1SE14O = -1 OR C1SE14O = 8) THEN C1SE14O = .;
   IF (C1SE14P = -1 OR C1SE14P = 8) THEN C1SE14P = .;
   IF (C1SE14Q = -1 OR C1SE14Q = 8) THEN C1SE14Q = .;
   IF (C1SE14R = -1 OR C1SE14R = 8) THEN C1SE14R = .;
   IF (C1SE14S = -1 OR C1SE14S = 8) THEN C1SE14S = .;
   IF (C1SE14T = -1 OR C1SE14T = 8) THEN C1SE14T = .;
   IF (C1SE14U = -1 OR C1SE14U = 8) THEN C1SE14U = .;
   IF (C1SE14V = -1 OR C1SE14V = 8) THEN C1SE14V = .;
   IF (C1SE14W = -1 OR C1SE14W = 8) THEN C1SE14W = .;
   IF (C1SE14X = -1 OR C1SE14X = 8) THEN C1SE14X = .;
   IF (C1SE14Y = -1 OR C1SE14Y = 8) THEN C1SE14Y = .;
   IF (C1SE14Z = -1 OR C1SE14Z = 8) THEN C1SE14Z = .;
   IF (C1SE14AA = -1 OR C1SE14AA = 8) THEN C1SE14AA = .;
   IF (C1SE14BB = -1 OR C1SE14BB = 8) THEN C1SE14BB = .;
   IF (C1SE14CC = -1 OR C1SE14CC = 8) THEN C1SE14CC = .;
   IF (C1SE14DD = -1 OR C1SE14DD = 8) THEN C1SE14DD = .;
   IF (C1SE14EE = -1 OR C1SE14EE = 8) THEN C1SE14EE = .;
   IF (C1SE14FF = -1 OR C1SE14FF = 8) THEN C1SE14FF = .;
   IF (C1SE14GG = -1 OR C1SE14GG = 8) THEN C1SE14GG = .;
   IF (C1SE14HH = -1 OR C1SE14HH = 8) THEN C1SE14HH = .;
   IF (C1SE14II = -1 OR C1SE14II = 8) THEN C1SE14II = .;
   IF (C1SE14JJ = -1 OR C1SE14JJ = 8) THEN C1SE14JJ = .;
   IF (C1SE14KK = -1 OR C1SE14KK = 8) THEN C1SE14KK = .;
   IF (C1SE14LL = -1 OR C1SE14LL = 8) THEN C1SE14LL = .;
   IF (C1SE14MM = -1 OR C1SE14MM = 8) THEN C1SE14MM = .;
   IF (C1SPERSI = -1.0 OR C1SPERSI = 8.0) THEN C1SPERSI = .;
   IF (C1SREAPP = -1.0 OR C1SREAPP = 8.0) THEN C1SREAPP = .;
   IF (C1SCHANG = -1.0 OR C1SCHANG = 8.0) THEN C1SCHANG = .;
   IF (C1SSPCTR = -1.0 OR C1SSPCTR = 8.0) THEN C1SSPCTR = .;
   IF (C1SCPCTR = -1.00 OR C1SCPCTR = 8.00) THEN C1SCPCTR = .;
   IF (C1SSSCTR = -1.0 OR C1SSSCTR = 8.0) THEN C1SSSCTR = .;
   IF (C1SCSCDE = -1.0 OR C1SCSCDE = 8.0) THEN C1SCSCDE = .;
   IF (C1SCSCSP = -1.0 OR C1SCSCSP = 8.0) THEN C1SCSCSP = .;
   IF (C1SCSCAG = -1.0 OR C1SCSCAG = 8.0) THEN C1SCSCAG = .;
   IF (C1SDIREC = -1.0 OR C1SDIREC = 8.0) THEN C1SDIREC = .;
   IF (C1STODAY = -1.0 OR C1STODAY = 8.0) THEN C1STODAY = .;
   IF (C1SINSGH = -1.0 OR C1SINSGH = 8.0) THEN C1SINSGH = .;
   IF (C1SFORSG = -1 OR C1SFORSG = 8) THEN C1SFORSG = .;
   IF (C1SSUFFI = -1.0 OR C1SSUFFI = 8.0) THEN C1SSUFFI = .;
   IF (C1SE15A = -1 OR C1SE15A = 8) THEN C1SE15A = .;
   IF (C1SE15B = -1 OR C1SE15B = 8) THEN C1SE15B = .;
   IF (C1SE15C = -1 OR C1SE15C = 8) THEN C1SE15C = .;
   IF (C1SE15D = -1 OR C1SE15D = 8) THEN C1SE15D = .;
   IF (C1SE15E = -1 OR C1SE15E = 8) THEN C1SE15E = .;
   IF (C1SE15F = -1 OR C1SE15F = 8) THEN C1SE15F = .;
   IF (C1SE15G = -1 OR C1SE15G = 8) THEN C1SE15G = .;
   IF (C1SE15H = -1 OR C1SE15H = 8) THEN C1SE15H = .;
   IF (C1SE15I = -1 OR C1SE15I = 8) THEN C1SE15I = .;
   IF (C1SE15J = -1 OR C1SE15J = 8) THEN C1SE15J = .;
   IF (C1SE15K = -1 OR C1SE15K = 8) THEN C1SE15K = .;
   IF (C1SE15L = -1 OR C1SE15L = 8) THEN C1SE15L = .;
   IF (C1SE15M = -1 OR C1SE15M = 8) THEN C1SE15M = .;
   IF (C1SE15N = -1 OR C1SE15N = 8) THEN C1SE15N = .;
   IF (C1SE15O = -1 OR C1SE15O = 8) THEN C1SE15O = .;
   IF (C1SE15P = -1 OR C1SE15P = 8) THEN C1SE15P = .;
   IF (C1SE15Q = -1 OR C1SE15Q = 8) THEN C1SE15Q = .;
   IF (C1SE15R = -1 OR C1SE15R = 8) THEN C1SE15R = .;
   IF (C1SE15S = -1 OR C1SE15S = 8) THEN C1SE15S = .;
   IF (C1SE15T = -1 OR C1SE15T = 8) THEN C1SE15T = .;
   IF (C1SE15U = -1 OR C1SE15U = 8) THEN C1SE15U = .;
   IF (C1SE15V = -1 OR C1SE15V = 8) THEN C1SE15V = .;
   IF (C1SE15W = -1 OR C1SE15W = 8) THEN C1SE15W = .;
   IF (C1SE15X = -1 OR C1SE15X = 8) THEN C1SE15X = .;
   IF (C1SE15Y = -1 OR C1SE15Y = 8) THEN C1SE15Y = .;
   IF (C1SE15Z = -1 OR C1SE15Z = 8) THEN C1SE15Z = .;
   IF (C1SREINT = -1.0 OR C1SREINT = 98.0) THEN C1SREINT = .;
   IF (C1SACTIV = -1.0 OR C1SACTIV = 98.0) THEN C1SACTIV = .;
   IF (C1SPLAN = -1.0 OR C1SPLAN = 98.0) THEN C1SPLAN = .;
   IF (C1SVENT = -1.0 OR C1SVENT = 98.0) THEN C1SVENT = .;
   IF (C1SDENIA = -1.0 OR C1SDENIA = 98.0) THEN C1SDENIA = .;
   IF (C1SDISEN = -1.0 OR C1SDISEN = 98.0) THEN C1SDISEN = .;
   IF (C1SFDCOP = -1 OR C1SFDCOP = 98) THEN C1SFDCOP = .;
   IF (C1SPRCOP = -1.0 OR C1SPRCOP = 98.0) THEN C1SPRCOP = .;
   IF (C1SEMCOP = -1.0 OR C1SEMCOP = 98.0) THEN C1SEMCOP = .;
   IF (C1SE16 = -1 OR C1SE16 = 998) THEN C1SE16 = .;
   IF (C1SE17 = -1 OR C1SE17 = 998) THEN C1SE17 = .;
   IF (C1SE18 = -1 OR C1SE18 = 998) THEN C1SE18 = .;
   IF (C1SE19 = -1 OR C1SE19 = 998) THEN C1SE19 = .;
   IF (C1SE20 = -1 OR C1SE20 = 998) THEN C1SE20 = .;
   IF (C1SE21 = -1 OR C1SE21 = 998) THEN C1SE21 = .;
   IF (C1SF1 = -1 OR C1SF1 = 98) THEN C1SF1 = .;
   IF (C1SF2 = -1 OR C1SF2 = 98) THEN C1SF2 = .;
   IF (C1SF3 = -1 OR C1SF3 = 98) THEN C1SF3 = .;
   IF (C1SF4 = -1 OR C1SF4 = 98) THEN C1SF4 = .;
   IF (C1SF5 = -1 OR C1SF5 = 98) THEN C1SF5 = .;
   IF (C1SF6 = -1 OR C1SF6 = 98) THEN C1SF6 = .;
   IF (C1SF7 = -1 OR C1SF7 = 8) THEN C1SF7 = .;
   IF (C1SF8 = -1 OR C1SF8 = 998 OR C1SF8 = 999) THEN C1SF8 = .;
   IF (C1SF9 = -1 OR C1SF9 = 998 OR C1SF9 = 999) THEN C1SF9 = .;
   IF (C1SF10 = -1 OR C1SF10 = 998 OR C1SF10 = 999) THEN C1SF10 = .;
   IF (C1SF11 = -1 OR C1SF11 = 8 OR C1SF11 = 9) THEN C1SF11 = .;
   IF (C1SF12A = -1.0 OR C1SF12A = 998.0 OR C1SF12A = 999.0) THEN C1SF12A = .;
   IF (C1SF12B = -1 OR C1SF12B = 8 OR C1SF12B = 9) THEN C1SF12B = .;
   IF (C1SF13A = -1 OR C1SF13A = 98 OR C1SF13A = 99) THEN C1SF13A = .;
   IF (C1SF13B = -1 OR C1SF13B = 9998 OR C1SF13B = 9999) THEN C1SF13B = .;
   IF (C1SF14 = -1 OR C1SF14 = 8 OR C1SF14 = 9) THEN C1SF14 = .;
   IF (C1SF15 = -1 OR C1SF15 = 8 OR C1SF15 = 9) THEN C1SF15 = .;
   IF (C1SF16A = -1 OR C1SF16A = 8 OR C1SF16A = 9) THEN C1SF16A = .;
   IF (C1SF16B = -1 OR C1SF16B = 8 OR C1SF16B = 9) THEN C1SF16B = .;
   IF (C1SF16C = -1 OR C1SF16C = 8 OR C1SF16C = 9) THEN C1SF16C = .;
   IF (C1SF16D = -1 OR C1SF16D = 8 OR C1SF16D = 9) THEN C1SF16D = .;
   IF (C1SF16E = -1 OR C1SF16E = 8 OR C1SF16E = 9) THEN C1SF16E = .;
   IF (C1SF16F = -1 OR C1SF16F = 8 OR C1SF16F = 9) THEN C1SF16F = .;
   IF (C1SF16G = -1 OR C1SF16G = 8 OR C1SF16G = 9) THEN C1SF16G = .;
   IF (C1SF16H = -1 OR C1SF16H = 8 OR C1SF16H = 9) THEN C1SF16H = .;
   IF (C1SF16I = -1 OR C1SF16I = 8 OR C1SF16I = 9) THEN C1SF16I = .;
   IF (C1SF16J = -1 OR C1SF16J = 8 OR C1SF16J = 9) THEN C1SF16J = .;
   IF (C1SF17A = -1 OR C1SF17A = 8 OR C1SF17A = 9) THEN C1SF17A = .;
   IF (C1SF17B = -1 OR C1SF17B = 8 OR C1SF17B = 9) THEN C1SF17B = .;
   IF (C1SF17C = -1 OR C1SF17C = 8 OR C1SF17C = 9) THEN C1SF17C = .;
   IF (C1SF17D = -1 OR C1SF17D = 8 OR C1SF17D = 9) THEN C1SF17D = .;
   IF (C1SF17E = -1 OR C1SF17E = 8 OR C1SF17E = 9) THEN C1SF17E = .;
   IF (C1SF17F = -1 OR C1SF17F = 8 OR C1SF17F = 9) THEN C1SF17F = .;
   IF (C1SF17G = -1 OR C1SF17G = 8 OR C1SF17G = 9) THEN C1SF17G = .;
   IF (C1SF17H = -1 OR C1SF17H = 8 OR C1SF17H = 9) THEN C1SF17H = .;
   IF (C1SF17I = -1 OR C1SF17I = 8 OR C1SF17I = 9) THEN C1SF17I = .;
   IF (C1SF17J = -1 OR C1SF17J = 8 OR C1SF17J = 9) THEN C1SF17J = .;
   IF (C1SF18 = -1 OR C1SF18 = 8 OR C1SF18 = 9) THEN C1SF18 = .;
   IF (C1SF19A = -1 OR C1SF19A = 8 OR C1SF19A = 9) THEN C1SF19A = .;
   IF (C1SF19B = -1 OR C1SF19B = 8 OR C1SF19B = 9) THEN C1SF19B = .;
   IF (C1SF19C = -1 OR C1SF19C = 8 OR C1SF19C = 9) THEN C1SF19C = .;
   IF (C1SF19D = -1 OR C1SF19D = 8 OR C1SF19D = 9) THEN C1SF19D = .;
   IF (C1SF19E = -1 OR C1SF19E = 8 OR C1SF19E = 9) THEN C1SF19E = .;
   IF (C1SF19F = -1 OR C1SF19F = 8 OR C1SF19F = 9) THEN C1SF19F = .;
   IF (C1SF19G = -1 OR C1SF19G = 8 OR C1SF19G = 9) THEN C1SF19G = .;
   IF (C1SF19H = -1 OR C1SF19H = 8 OR C1SF19H = 9) THEN C1SF19H = .;
   IF (C1SF19I = -1 OR C1SF19I = 8 OR C1SF19I = 9) THEN C1SF19I = .;
   IF (C1SF19J = -1 OR C1SF19J = 8 OR C1SF19J = 9) THEN C1SF19J = .;
   IF (C1SF19K = -1 OR C1SF19K = 8 OR C1SF19K = 9) THEN C1SF19K = .;
   IF (C1SF19L = -1 OR C1SF19L = 8 OR C1SF19L = 9) THEN C1SF19L = .;
   IF (C1SF19M = -1 OR C1SF19M = 8 OR C1SF19M = 9) THEN C1SF19M = .;
   IF (C1SF19N = -1 OR C1SF19N = 8 OR C1SF19N = 9) THEN C1SF19N = .;
   IF (C1SF20 = -1 OR C1SF20 = 8 OR C1SF20 = 9) THEN C1SF20 = .;
   IF (C1SF21 = -1 OR C1SF21 = 8 OR C1SF21 = 9) THEN C1SF21 = .;
   IF (C1SF22 = -1 OR C1SF22 = 998 OR C1SF22 = 999) THEN C1SF22 = .;
   IF (C1SF23 = -1 OR C1SF23 = 8 OR C1SF23 = 9) THEN C1SF23 = .;
   IF (C1SF24 = -1 OR C1SF24 = 8 OR C1SF24 = 9) THEN C1SF24 = .;
   IF (C1SF25A = -1 OR C1SF25A = 98 OR C1SF25A = 99) THEN C1SF25A = .;
   IF (C1SF25B = -1 OR C1SF25B = 9998 OR C1SF25B = 9999) THEN C1SF25B = .;
   IF (C1SF26 = -1 OR C1SF26 = 8 OR C1SF26 = 9) THEN C1SF26 = .;
   IF (C1SF27A = -1 OR C1SF27A = 8 OR C1SF27A = 9) THEN C1SF27A = .;
   IF (C1SF27B = -1 OR C1SF27B = 8 OR C1SF27B = 9) THEN C1SF27B = .;
   IF (C1SF27C = -1 OR C1SF27C = 8 OR C1SF27C = 9) THEN C1SF27C = .;
   IF (C1SF27D = -1 OR C1SF27D = 8 OR C1SF27D = 9) THEN C1SF27D = .;
   IF (C1SF28A = -1 OR C1SF28A = 98 OR C1SF28A = 99) THEN C1SF28A = .;
   IF (C1SF28B = -1 OR C1SF28B = 98 OR C1SF28B = 99) THEN C1SF28B = .;
   IF (C1SF28C = -1 OR C1SF28C = 8 OR C1SF28C = 9) THEN C1SF28C = .;
   IF (C1SF29A = -1 OR C1SF29A = 98 OR C1SF29A = 99) THEN C1SF29A = .;
   IF (C1SF29B = -1 OR C1SF29B = 98 OR C1SF29B = 99) THEN C1SF29B = .;
   IF (C1SF29C = -1 OR C1SF29C = 8 OR C1SF29C = 9) THEN C1SF29C = .;
   IF (C1SF30A = -1 OR C1SF30A = 98 OR C1SF30A = 99) THEN C1SF30A = .;
   IF (C1SF30B = -1 OR C1SF30B = 98 OR C1SF30B = 99) THEN C1SF30B = .;
   IF (C1SF31 = -1 OR C1SF31 = 8 OR C1SF31 = 9) THEN C1SF31 = .;
   IF (C1SF32 = -1 OR C1SF32 = 8 OR C1SF32 = 9) THEN C1SF32 = .;
   IF (C1SF33 = -1 OR C1SF33 = 8 OR C1SF33 = 9) THEN C1SF33 = .;
   IF (C1SF34 = -1 OR C1SF34 = 8 OR C1SF34 = 9) THEN C1SF34 = .;
   IF (C1SF35 = -1 OR C1SF35 = 8 OR C1SF35 = 9) THEN C1SF35 = .;
   IF (C1SF36A = -1 OR C1SF36A = 8 OR C1SF36A = 9) THEN C1SF36A = .;
   IF (C1SF36B = -1 OR C1SF36B = 8 OR C1SF36B = 9) THEN C1SF36B = .;
   IF (C1SF36C = -1 OR C1SF36C = 8 OR C1SF36C = 9) THEN C1SF36C = .;
   IF (C1SF36D = -1 OR C1SF36D = 8 OR C1SF36D = 9) THEN C1SF36D = .;
   IF (C1SF36E = -1 OR C1SF36E = 8 OR C1SF36E = 9) THEN C1SF36E = .;
   IF (C1SF36F = -1 OR C1SF36F = 8 OR C1SF36F = 9) THEN C1SF36F = .;
   IF (C1SF36G = -1 OR C1SF36G = 8 OR C1SF36G = 9) THEN C1SF36G = .;
   IF (C1SF36H = -1 OR C1SF36H = 8 OR C1SF36H = 9) THEN C1SF36H = .;
   IF (C1SF36I = -1 OR C1SF36I = 8 OR C1SF36I = 9) THEN C1SF36I = .;
   IF (C1SF36J = -1 OR C1SF36J = 8 OR C1SF36J = 9) THEN C1SF36J = .;
   IF (C1SF36K = -1 OR C1SF36K = 8 OR C1SF36K = 9) THEN C1SF36K = .;
   IF (C1SJCSD = -1.0 OR C1SJCSD = 98.0 OR C1SJCSD = 99.0) THEN C1SJCSD = .;
   IF (C1SJCDA = -1.0 OR C1SJCDA = 98.0 OR C1SJCDA = 99.0) THEN C1SJCDA = .;
   IF (C1SJCDS = -1.0 OR C1SJCDS = 98.0 OR C1SJCDS = 99.0) THEN C1SJCDS = .;
   IF (C1SF37A = -1) THEN C1SF37A = .;
   IF (C1SF37A >= 6 AND C1SF37A <= 9) THEN C1SF37A = .;
   IF (C1SF37B = -1) THEN C1SF37B = .;
   IF (C1SF37B >= 6 AND C1SF37B <= 9) THEN C1SF37B = .;
   IF (C1SF37C = -1) THEN C1SF37C = .;
   IF (C1SF37C >= 6 AND C1SF37C <= 9) THEN C1SF37C = .;
   IF (C1SF37D = -1) THEN C1SF37D = .;
   IF (C1SF37D >= 6 AND C1SF37D <= 9) THEN C1SF37D = .;
   IF (C1SF37E = -1) THEN C1SF37E = .;
   IF (C1SF37E >= 6 AND C1SF37E <= 9) THEN C1SF37E = .;
   IF (C1SJCCS = -1 OR C1SJCCS = 98 OR C1SJCCS = 99) THEN C1SJCCS = .;
   IF (C1SJCSS = -1.0 OR C1SJCSS = 98.0 OR C1SJCSS = 99.0) THEN C1SJCSS = .;
   IF (C1SF38A = -1 OR C1SF38A = 8 OR C1SF38A = 9) THEN C1SF38A = .;
   IF (C1SF38B = -1 OR C1SF38B = 8 OR C1SF38B = 9) THEN C1SF38B = .;
   IF (C1SF38C = -1 OR C1SF38C = 8 OR C1SF38C = 9) THEN C1SF38C = .;
   IF (C1SF38D = -1 OR C1SF38D = 8 OR C1SF38D = 9) THEN C1SF38D = .;
   IF (C1SF38E = -1 OR C1SF38E = 8 OR C1SF38E = 9) THEN C1SF38E = .;
   IF (C1SF38F = -1 OR C1SF38F = 8 OR C1SF38F = 9) THEN C1SF38F = .;
   IF (C1SJOBDI = -1.0 OR C1SJOBDI = 98.0 OR C1SJOBDI = 99.0) THEN C1SJOBDI = .;
   IF (C1SF39A = -1 OR C1SF39A = 8 OR C1SF39A = 9) THEN C1SF39A = .;
   IF (C1SF39B = -1 OR C1SF39B = 8 OR C1SF39B = 9) THEN C1SF39B = .;
   IF (C1SF39C = -1 OR C1SF39C = 8 OR C1SF39C = 9) THEN C1SF39C = .;
   IF (C1SF39D = -1 OR C1SF39D = 8 OR C1SF39D = 9) THEN C1SF39D = .;
   IF (C1SF39E = -1 OR C1SF39E = 8 OR C1SF39E = 9) THEN C1SF39E = .;
   IF (C1SF39F = -1 OR C1SF39F = 8 OR C1SF39F = 9) THEN C1SF39F = .;
   IF (C1SPIWOR = -1.0 OR C1SPIWOR = 8.0 OR C1SPIWOR = 9.0) THEN C1SPIWOR = .;
   IF (C1SF40A = -1 OR C1SF40A = 8 OR C1SF40A = 9) THEN C1SF40A = .;
   IF (C1SF40B = -1 OR C1SF40B = 8 OR C1SF40B = 9) THEN C1SF40B = .;
   IF (C1SF40C = -1 OR C1SF40C = 8 OR C1SF40C = 9) THEN C1SF40C = .;
   IF (C1SF40D = -1 OR C1SF40D = 8 OR C1SF40D = 9) THEN C1SF40D = .;
   IF (C1SF40E = -1 OR C1SF40E = 8 OR C1SF40E = 9) THEN C1SF40E = .;
   IF (C1SF40F = -1 OR C1SF40F = 8 OR C1SF40F = 9) THEN C1SF40F = .;
   IF (C1SF40G = -1 OR C1SF40G = 8 OR C1SF40G = 9) THEN C1SF40G = .;
   IF (C1SF40H = -1 OR C1SF40H = 8 OR C1SF40H = 9) THEN C1SF40H = .;
   IF (C1SF40I = -1 OR C1SF40I = 8 OR C1SF40I = 9) THEN C1SF40I = .;
   IF (C1SF40J = -1 OR C1SF40J = 8 OR C1SF40J = 9) THEN C1SF40J = .;
   IF (C1SF40K = -1 OR C1SF40K = 8 OR C1SF40K = 9) THEN C1SF40K = .;
   IF (C1SF40L = -1 OR C1SF40L = 8 OR C1SF40L = 9) THEN C1SF40L = .;
   IF (C1SF40M = -1 OR C1SF40M = 8 OR C1SF40M = 9) THEN C1SF40M = .;
   IF (C1SF40N = -1 OR C1SF40N = 8 OR C1SF40N = 9) THEN C1SF40N = .;
   IF (C1SF40O = -1 OR C1SF40O = 8 OR C1SF40O = 9) THEN C1SF40O = .;
   IF (C1SF40P = -1 OR C1SF40P = 8 OR C1SF40P = 9) THEN C1SF40P = .;
   IF (C1SPOSWF = -1.0 OR C1SPOSWF = 98.0 OR C1SPOSWF = 99.0) THEN C1SPOSWF = .;
   IF (C1SNEGWF = -1 OR C1SNEGWF = 98 OR C1SNEGWF = 99) THEN C1SNEGWF = .;
   IF (C1SPOSFW = -1.0 OR C1SPOSFW = 98.0 OR C1SPOSFW = 99.0) THEN C1SPOSFW = .;
   IF (C1SNEGFW = -1.0 OR C1SNEGFW = 98.0 OR C1SNEGFW = 99.0) THEN C1SNEGFW = .;
   IF (C1SF41A = -1 OR C1SF41A = 98 OR C1SF41A = 99) THEN C1SF41A = .;
   IF (C1SF41B = -1 OR C1SF41B = 98 OR C1SF41B = 99) THEN C1SF41B = .;
   IF (C1SF41C = -1 OR C1SF41C = 98 OR C1SF41C = 99) THEN C1SF41C = .;
   IF (C1SF41D = -1 OR C1SF41D = 98 OR C1SF41D = 99) THEN C1SF41D = .;
   IF (C1SF42A = -1 OR C1SF42A = 8 OR C1SF42A = 9) THEN C1SF42A = .;
   IF (C1SF42B = -1 OR C1SF42B = 8 OR C1SF42B = 9) THEN C1SF42B = .;
   IF (C1SF42C = -1 OR C1SF42C = 8 OR C1SF42C = 9) THEN C1SF42C = .;
   IF (C1SF42D = -1 OR C1SF42D = 8 OR C1SF42D = 9) THEN C1SF42D = .;
   IF (C1SF43A = -1 OR C1SF43A = 8) THEN C1SF43A = .;
   IF (C1SF43B = -1 OR C1SF43B = 8) THEN C1SF43B = .;
   IF (C1SF43C = -1 OR C1SF43C = 8) THEN C1SF43C = .;
   IF (C1SF43D = -1 OR C1SF43D = 8) THEN C1SF43D = .;
   IF (C1SF44A = -1 OR C1SF44A = 8) THEN C1SF44A = .;
   IF (C1SF44B = -1 OR C1SF44B = 8) THEN C1SF44B = .;
   IF (C1SF44C = -1 OR C1SF44C = 8) THEN C1SF44C = .;
   IF (C1SF45A = -1 OR C1SF45A = 5 OR C1SF45A = 8) THEN C1SF45A = .;
   IF (C1SF45B = -1 OR C1SF45B = 5 OR C1SF45B = 8) THEN C1SF45B = .;
   IF (C1SF45C = -1 OR C1SF45C = 5 OR C1SF45C = 8) THEN C1SF45C = .;
   IF (C1SG1 = -1 OR C1SG1 = 98) THEN C1SG1 = .;
   IF (C1SG2 = -1 OR C1SG2 = 98) THEN C1SG2 = .;
   IF (C1SG3 = -1 OR C1SG3 = 98) THEN C1SG3 = .;
   IF (C1SG4 = -1 OR C1SG4 = 98) THEN C1SG4 = .;
   IF (C1SG5 = -1 OR C1SG5 = 98) THEN C1SG5 = .;
   IF (C1SG6 = -1 OR C1SG6 = 98) THEN C1SG6 = .;
   IF (C1SG7 = -1 OR C1SG7 = 8) THEN C1SG7 = .;
   IF (C1SG8 = -1 OR C1SG8 = 8) THEN C1SG8 = .;
   IF (C1SG9 = -1 OR C1SG9 = 8) THEN C1SG9 = .;
   IF (C1SG10 = -1 OR C1SG10 = 8) THEN C1SG10 = .;
   IF (C1SG11A = -1 OR C1SG11A = 98 OR C1SG11A = 99) THEN C1SG11A = .;
   IF (C1SG11B = -1 OR C1SG11B = 98 OR C1SG11B = 99) THEN C1SG11B = .;
   IF (C1SG11C = -1 OR C1SG11C = 98 OR C1SG11C = 99) THEN C1SG11C = .;
   IF (C1SG11D = -1 OR C1SG11D = 98 OR C1SG11D = 99) THEN C1SG11D = .;
   IF (C1SG12 = -1 OR C1SG12 = 3 OR C1SG12 = 8) THEN C1SG12 = .;
   IF (C1SG13 = -1 OR C1SG13 = 8) THEN C1SG13 = .;
   IF (C1SG14A = -1 OR C1SG14A = 98 OR C1SG14A = 99) THEN C1SG14A = .;
   IF (C1SG14B = -1 OR C1SG14B = 98 OR C1SG14B = 99) THEN C1SG14B = .;
   IF (C1SG14C = -1 OR C1SG14C = 98 OR C1SG14C = 99) THEN C1SG14C = .;
   IF (C1SG14D = -1 OR C1SG14D = 98 OR C1SG14D = 99) THEN C1SG14D = .;
   IF (C1SG15 = -1 OR C1SG15 = 8 OR C1SG15 = 9) THEN C1SG15 = .;
   IF (C1SG16 = -1 OR C1SG16 = 8) THEN C1SG16 = .;
   IF (C1SG17A = -1 OR C1SG17A = 98 OR C1SG17A = 99) THEN C1SG17A = .;
   IF (C1SG17B = -1 OR C1SG17B = 98 OR C1SG17B = 99) THEN C1SG17B = .;
   IF (C1SG17C = -1 OR C1SG17C = 98 OR C1SG17C = 99) THEN C1SG17C = .;
   IF (C1SG17D = -1 OR C1SG17D = 98 OR C1SG17D = 99) THEN C1SG17D = .;
   IF (C1SRINC = -1 OR C1SRINC = 999998) THEN C1SRINC = .;
   IF (C1SSINC = -1 OR C1SSINC = 999998 OR C1SSINC = 999999) THEN C1SSINC = .;
   IF (C1SHINC = -1 OR C1SHINC = 999998 OR C1SHINC = 999999) THEN C1SHINC = .;
   IF (C1SEARN = -1 OR C1SEARN = 999998) THEN C1SEARN = .;
   IF (C1SPNSN = -1 OR C1SPNSN = 999998) THEN C1SPNSN = .;
   IF (C1SSEC = -1 OR C1SSEC = 999998) THEN C1SSEC = .;
   IF (C1SOTH = -1 OR C1SOTH = 999998) THEN C1SOTH = .;
   IF (C1STINC = -1 OR C1STINC = 999998) THEN C1STINC = .;
   IF (C1SG18 = -1 OR C1SG18 = 8 OR C1SG18 = 9) THEN C1SG18 = .;
   IF (C1SG19 = -1 OR C1SG19 = 8) THEN C1SG19 = .;
   IF (C1SG20A = -1 OR C1SG20A = 8 OR C1SG20A = 9) THEN C1SG20A = .;
   IF (C1SG20B = -1 OR C1SG20B = 8 OR C1SG20B = 9) THEN C1SG20B = .;
   IF (C1SG20C = -1 OR C1SG20C = 8 OR C1SG20C = 9) THEN C1SG20C = .;
   IF (C1SG20D = -1 OR C1SG20D = 8 OR C1SG20D = 9) THEN C1SG20D = .;
   IF (C1SG20E = -1 OR C1SG20E = 8 OR C1SG20E = 9) THEN C1SG20E = .;
   IF (C1SG20F = -1 OR C1SG20F = 8 OR C1SG20F = 9) THEN C1SG20F = .;
   IF (C1SG20G = -1 OR C1SG20G = 8 OR C1SG20G = 9) THEN C1SG20G = .;
   IF (C1SG20H = -1 OR C1SG20H = 8 OR C1SG20H = 9) THEN C1SG20H = .;
   IF (C1SG20I = -1 OR C1SG20I = 8 OR C1SG20I = 9) THEN C1SG20I = .;
   IF (C1SG20J = -1 OR C1SG20J = 8 OR C1SG20J = 9) THEN C1SG20J = .;
   IF (C1SG21 = -1 OR C1SG21 = 99999998 OR C1SG21 = 99999999) THEN C1SG21 = .;
   IF (C1SG22 = -1 OR C1SG22 = 999998) THEN C1SG22 = .;
   IF (C1SG23 = -1 OR C1SG23 = 999998) THEN C1SG23 = .;
   IF (C1SG24 = -1 OR C1SG24 = 999998) THEN C1SG24 = .;
   IF (C1SG25 = -1 OR C1SG25 = 8) THEN C1SG25 = .;
   IF (C1SG25A = -1 OR C1SG25A = 999998 OR C1SG25A = 999999) THEN C1SG25A = .;
   IF (C1SG25B = -1 OR C1SG25B = 999998 OR C1SG25B = 999999) THEN C1SG25B = .;
   IF (C1SG26 = -1 OR C1SG26 = 7 OR C1SG26 = 8) THEN C1SG26 = .;
   IF (C1SG27 = -1 OR C1SG27 = 9999998 OR C1SG27 = 9999999) THEN C1SG27 = .;
   IF (C1SG28 = -1 OR C1SG28 = 7 OR C1SG28 = 8) THEN C1SG28 = .;
   IF (C1SG29 = -1 OR C1SG29 = 9999998 OR C1SG29 = 9999999) THEN C1SG29 = .;
   IF (C1SG30 = -1 OR C1SG30 = 7 OR C1SG30 = 8) THEN C1SG30 = .;
   IF (C1SG31 = -1 OR C1SG31 = 9999998 OR C1SG31 = 9999999) THEN C1SG31 = .;
   IF (C1SG32 = -1) THEN C1SG32 = .;
   IF (C1SG32 >= 4 AND C1SG32 <= 8) THEN C1SG32 = .;
   IF (C1SG33 = -1 OR C1SG33 = 9999998 OR C1SG33 = 9999999) THEN C1SG33 = .;
   IF (C1SG34 = -1 OR C1SG34 = 8) THEN C1SG34 = .;
   IF (C1SG35 = -1 OR C1SG35 = 8 OR C1SG35 = 9) THEN C1SG35 = .;
   IF (C1SG36 = -1 OR C1SG36 = 999998 OR C1SG36 = 999999) THEN C1SG36 = .;
   IF (C1SG37A = -1 OR C1SG37A = 998) THEN C1SG37A = .;
   IF (C1SG37B = -1 OR C1SG37B = 998) THEN C1SG37B = .;
   IF (C1SG37C = -1 OR C1SG37C = 998) THEN C1SG37C = .;
   IF (C1SG37D = -1 OR C1SG37D = 998) THEN C1SG37D = .;
   IF (C1SG38 = -1 OR C1SG38 = 8) THEN C1SG38 = .;
   IF (C1SG39 = -1 OR C1SG39 = 9999998 OR C1SG39 = 9999999) THEN C1SG39 = .;
   IF (C1SG40 = -1 OR C1SG40 = 8) THEN C1SG40 = .;
   IF (C1SG41 = -1 OR C1SG41 = 8) THEN C1SG41 = .;
   IF (C1SG42 = -1 OR C1SG42 = 99999998 OR C1SG42 = 99999999) THEN C1SG42 = .;
   IF (C1SG43 = -1 OR C1SG43 = 9999998 OR C1SG43 = 9999999) THEN C1SG43 = .;
   IF (C1SG44 = -1 OR C1SG44 = 8) THEN C1SG44 = .;
   IF (C1SG45 = -1 OR C1SG45 = 999998 OR C1SG45 = 999999) THEN C1SG45 = .;
   IF (C1SG46 = -1 OR C1SG46 = 8) THEN C1SG46 = .;
   IF (C1SG47 = -1 OR C1SG47 = 9999998 OR C1SG47 = 9999999) THEN C1SG47 = .;
   IF (C1SG48A = -1 OR C1SG48A = 998) THEN C1SG48A = .;
   IF (C1SG48B = -1 OR C1SG48B = 998) THEN C1SG48B = .;
   IF (C1SG48C = -1 OR C1SG48C = 998) THEN C1SG48C = .;
   IF (C1SG48D = -1 OR C1SG48D = 998) THEN C1SG48D = .;
   IF (C1SG48E = -1 OR C1SG48E = 998) THEN C1SG48E = .;
   IF (C1SG49 = -1 OR C1SG49 = 8) THEN C1SG49 = .;
   IF (C1SG50 = -1 OR C1SG50 = 9998 OR C1SG50 = 9999) THEN C1SG50 = .;
   IF (C1SG51 = -1 OR C1SG51 = 999998 OR C1SG51 = 999999) THEN C1SG51 = .;
   IF (C1SG52 = -1 OR C1SG52 = 8) THEN C1SG52 = .;
   IF (C1SG53 = -1 OR C1SG53 = 9999998 OR C1SG53 = 9999999) THEN C1SG53 = .;
   IF (C1SG54 = -1 OR C1SG54 = 8) THEN C1SG54 = .;
   IF (C1SG55 = -1 OR C1SG55 = 999998 OR C1SG55 = 999999) THEN C1SG55 = .;
   IF (C1SG56 = -1 OR C1SG56 = 8) THEN C1SG56 = .;
   IF (C1SG57 = -1 OR C1SG57 = 999998 OR C1SG57 = 999999) THEN C1SG57 = .;
   IF (C1SG58 = -1 OR C1SG58 = 8) THEN C1SG58 = .;
   IF (C1SG59 = -1 OR C1SG59 = 8) THEN C1SG59 = .;
   IF (C1SG59A = -1 OR C1SG59A = 999998 OR C1SG59A = 999999) THEN C1SG59A = .;
   IF (C1SG59B = -1 OR C1SG59B = 9999998 OR C1SG59B = 9999999) THEN C1SG59B = .;
   IF (C1SG60 = -1 OR C1SG60 = 8) THEN C1SG60 = .;
   IF (C1SG60A = -1 OR C1SG60A = 999998 OR C1SG60A = 999999) THEN C1SG60A = .;
   IF (C1SG60B = -1 OR C1SG60B = 9999998 OR C1SG60B = 9999999) THEN C1SG60B = .;
   IF (C1SG61A = -1 OR C1SG61A = 9999998 OR C1SG61A = 9999999) THEN C1SG61A = .;
   IF (C1SG61B = -1 OR C1SG61B = 999998) THEN C1SG61B = .;
   IF (C1SG61C = -1 OR C1SG61C = 999998) THEN C1SG61C = .;
   IF (C1SG61D = -1 OR C1SG61D = 999998) THEN C1SG61D = .;
   IF (C1SG61E = -1 OR C1SG61E = 99998) THEN C1SG61E = .;
   IF (C1SG61F = -1 OR C1SG61F = 99998) THEN C1SG61F = .;
   IF (C1SG61G = -1 OR C1SG61G = 99999998) THEN C1SG61G = .;
   IF (C1SG61H = -1 OR C1SG61H = 99998) THEN C1SG61H = .;
   IF (C1SG61I = -1 OR C1SG61I = 99998) THEN C1SG61I = .;
   IF (C1SG62 = -1 OR C1SG62 = 8) THEN C1SG62 = .;
   IF (C1SH1 = -1 OR C1SH1 = 98) THEN C1SH1 = .;
   IF (C1SH2 = -1 OR C1SH2 = 98) THEN C1SH2 = .;
   IF (C1SH3 = -1 OR C1SH3 = 98) THEN C1SH3 = .;
   IF (C1SH4 = -1 OR C1SH4 = 98) THEN C1SH4 = .;
   IF (C1SH5 = -1 OR C1SH5 = 98) THEN C1SH5 = .;
   IF (C1SH6A = -1 OR C1SH6A = 8) THEN C1SH6A = .;
   IF (C1SH6B = -1 OR C1SH6B = 8) THEN C1SH6B = .;
   IF (C1SH6C = -1 OR C1SH6C = 8) THEN C1SH6C = .;
   IF (C1SH6D = -1 OR C1SH6D = 8) THEN C1SH6D = .;
   IF (C1SH6E = -1 OR C1SH6E = 8) THEN C1SH6E = .;
   IF (C1SH6F = -1 OR C1SH6F = 8) THEN C1SH6F = .;
   IF (C1SGENER = -1.0 OR C1SGENER = 98.0) THEN C1SGENER = .;
   IF (C1SH7A = -1 OR C1SH7A = 998) THEN C1SH7A = .;
   IF (C1SH7B = -1 OR C1SH7B = 998) THEN C1SH7B = .;
   IF (C1SH7C = -1 OR C1SH7C = 998) THEN C1SH7C = .;
   IF (C1SH7D = -1 OR C1SH7D = 998) THEN C1SH7D = .;
   IF (C1SH8A = -1 OR C1SH8A = 98) THEN C1SH8A = .;
   IF (C1SH8B = -1 OR C1SH8B = 98) THEN C1SH8B = .;
   IF (C1SH8C = -1 OR C1SH8C = 98) THEN C1SH8C = .;
   IF (C1SH9A = -1 OR C1SH9A = 998) THEN C1SH9A = .;
   IF (C1SH9B = -1 OR C1SH9B = 998) THEN C1SH9B = .;
   IF (C1SH9C = -1 OR C1SH9C = 998) THEN C1SH9C = .;
   IF (C1SH9D = -1 OR C1SH9D = 998) THEN C1SH9D = .;
   IF (C1SH9E = -1 OR C1SH9E = 998) THEN C1SH9E = .;
   IF (C1SH9F = -1 OR C1SH9F = 998) THEN C1SH9F = .;
   IF (C1SH10A = -1 OR C1SH10A = 998) THEN C1SH10A = .;
   IF (C1SH10B = -1 OR C1SH10B = 998) THEN C1SH10B = .;
   IF (C1SH10C = -1 OR C1SH10C = 998) THEN C1SH10C = .;
   IF (C1SH10D = -1 OR C1SH10D = 998) THEN C1SH10D = .;
   IF (C1SH10E = -1 OR C1SH10E = 998) THEN C1SH10E = .;
   IF (C1SH10F = -1 OR C1SH10F = 998) THEN C1SH10F = .;
   IF (C1SH11A = -1 OR C1SH11A = 998) THEN C1SH11A = .;
   IF (C1SH11B = -1 OR C1SH11B = 998) THEN C1SH11B = .;
   IF (C1SH11C = -1 OR C1SH11C = 998) THEN C1SH11C = .;
   IF (C1SH11D = -1 OR C1SH11D = 998) THEN C1SH11D = .;
   IF (C1SH11E = -1 OR C1SH11E = 998) THEN C1SH11E = .;
   IF (C1SH12A = -1 OR C1SH12A = 998) THEN C1SH12A = .;
   IF (C1SH12B = -1 OR C1SH12B = 998) THEN C1SH12B = .;
   IF (C1SH12C = -1 OR C1SH12C = 998) THEN C1SH12C = .;
   IF (C1SH12D = -1 OR C1SH12D = 998) THEN C1SH12D = .;
   IF (C1SH12E = -1 OR C1SH12E = 998) THEN C1SH12E = .;
   IF (C1SH12F = -1 OR C1SH12F = 998) THEN C1SH12F = .;
   IF (C1SH12G = -1 OR C1SH12G = 998) THEN C1SH12G = .;
   IF (C1SH12H = -1 OR C1SH12H = 998) THEN C1SH12H = .;
   IF (C1SH13A = -1 OR C1SH13A = 99999998) THEN C1SH13A = .;
   IF (C1SH13B = -1 OR C1SH13B = 99999998) THEN C1SH13B = .;
   IF (C1SH13C = -1 OR C1SH13C = 99998) THEN C1SH13C = .;
   IF (C1SH13D = -1 OR C1SH13D = 99998) THEN C1SH13D = .;
   IF (C1SH13E = -1 OR C1SH13E = 99999998) THEN C1SH13E = .;
   IF (C1SH13F = -1 OR C1SH13F = 99999998) THEN C1SH13F = .;
   IF (C1SH13G = -1 OR C1SH13G = 99999998) THEN C1SH13G = .;
   IF (C1SH13H = -1 OR C1SH13H = 99999998) THEN C1SH13H = .;
   IF (C1SH14A = -1 OR C1SH14A = 99999998) THEN C1SH14A = .;
   IF (C1SH14B = -1 OR C1SH14B = 99999998) THEN C1SH14B = .;
   IF (C1SH14C = -1 OR C1SH14C = 99999998) THEN C1SH14C = .;
   IF (C1SH14D = -1 OR C1SH14D = 99999998) THEN C1SH14D = .;
   IF (C1SH14E = -1 OR C1SH14E = 99999998) THEN C1SH14E = .;
   IF (C1SH14F = -1 OR C1SH14F = 99999998) THEN C1SH14F = .;
   IF (C1SH14G = -1 OR C1SH14G = 99998) THEN C1SH14G = .;
   IF (C1SH15A = -1 OR C1SH15A = 3 OR C1SH15A = 8) THEN C1SH15A = .;
   IF (C1SH15B = -1 OR C1SH15B = 3 OR C1SH15B = 8) THEN C1SH15B = .;
   IF (C1SH15C = -1 OR C1SH15C = 3 OR C1SH15C = 8) THEN C1SH15C = .;
   IF (C1SH15D = -1 OR C1SH15D = 3 OR C1SH15D = 8) THEN C1SH15D = .;
   IF (C1SH16A = -1 OR C1SH16A = 8) THEN C1SH16A = .;
   IF (C1SH16B = -1 OR C1SH16B = 8) THEN C1SH16B = .;
   IF (C1SH16C = -1 OR C1SH16C = 8) THEN C1SH16C = .;
   IF (C1SH16D = -1 OR C1SH16D = 8) THEN C1SH16D = .;
   IF (C1SH16E = -1 OR C1SH16E = 8) THEN C1SH16E = .;
   IF (C1SH16F = -1 OR C1SH16F = 8) THEN C1SH16F = .;
   IF (C1SH16G = -1 OR C1SH16G = 8) THEN C1SH16G = .;
   IF (C1SH16H = -1 OR C1SH16H = 8) THEN C1SH16H = .;
   IF (C1SH16I = -1 OR C1SH16I = 8) THEN C1SH16I = .;
   IF (C1SH16J = -1 OR C1SH16J = 8) THEN C1SH16J = .;
   IF (C1SH16K = -1 OR C1SH16K = 8) THEN C1SH16K = .;
   IF (C1SH16L = -1 OR C1SH16L = 8) THEN C1SH16L = .;
   IF (C1SH16M = -1 OR C1SH16M = 8) THEN C1SH16M = .;
   IF (C1SH16N = -1 OR C1SH16N = 8) THEN C1SH16N = .;
   IF (C1SH16O = -1 OR C1SH16O = 8) THEN C1SH16O = .;
   IF (C1SSWBMS = -1 OR C1SSWBMS = 98) THEN C1SSWBMS = .;
   IF (C1SSWBSI = -1.0 OR C1SSWBSI = 98.0) THEN C1SSWBSI = .;
   IF (C1SSWBAO = -1.0 OR C1SSWBAO = 98.0) THEN C1SSWBAO = .;
   IF (C1SSWBSC = -1.0 OR C1SSWBSC = 98.0) THEN C1SSWBSC = .;
   IF (C1SSWBSA = -1.0 OR C1SSWBSA = 98.0) THEN C1SSWBSA = .;
   IF (C1SH16P = -1 OR C1SH16P = 8) THEN C1SH16P = .;
   IF (C1SH16Q = -1 OR C1SH16Q = 8) THEN C1SH16Q = .;
   IF (C1SH16R = -1 OR C1SH16R = 8) THEN C1SH16R = .;
   IF (C1SH16S = -1 OR C1SH16S = 8) THEN C1SH16S = .;
   IF (C1SH16T = -1 OR C1SH16T = 8) THEN C1SH16T = .;
   IF (C1SSYMP = -1.0 OR C1SSYMP = 8.0) THEN C1SSYMP = .;
   IF (C1SI1 = -1 OR C1SI1 = 8) THEN C1SI1 = .;
   IF (C1SI2 = -1 OR C1SI2 = 8) THEN C1SI2 = .;
   IF (C1SI3 = -1 OR C1SI3 = 98) THEN C1SI3 = .;
   IF (C1SI4 = -1 OR C1SI4 = 98) THEN C1SI4 = .;
   IF (C1SI5 = -1 OR C1SI5 = 8) THEN C1SI5 = .;
   IF (C1SI6A = -1 OR C1SI6A = 8) THEN C1SI6A = .;
   IF (C1SI6B = -1 OR C1SI6B = 8) THEN C1SI6B = .;
   IF (C1SI6C = -1 OR C1SI6C = 8) THEN C1SI6C = .;
   IF (C1SI6D = -1 OR C1SI6D = 8) THEN C1SI6D = .;
   IF (C1SI6E = -1 OR C1SI6E = 8) THEN C1SI6E = .;
   IF (C1SI6F = -1 OR C1SI6F = 8) THEN C1SI6F = .;
   IF (C1SI6G = -1 OR C1SI6G = 8) THEN C1SI6G = .;
   IF (C1SI6H = -1 OR C1SI6H = 8) THEN C1SI6H = .;
   IF (C1SI6I = -1 OR C1SI6I = 8) THEN C1SI6I = .;
   IF (C1SI6J = -1 OR C1SI6J = 8) THEN C1SI6J = .;
   IF (C1SI6K = -1 OR C1SI6K = 8) THEN C1SI6K = .;
   IF (C1SI6L = -1 OR C1SI6L = 8) THEN C1SI6L = .;
   IF (C1SHOMET = -1.0 OR C1SHOMET = 8.0) THEN C1SHOMET = .;
   IF (C1SPIHOM = -1.0 OR C1SPIHOM = 8.0) THEN C1SPIHOM = .;
   IF (C1SI7 = -1 OR C1SI7 = 98) THEN C1SI7 = .;
   IF (C1SJ1 = -1 OR C1SJ1 = 98) THEN C1SJ1 = .;
   IF (C1SJ2 = -1 OR C1SJ2 = 98) THEN C1SJ2 = .;
   IF (C1SJ3 = -1 OR C1SJ3 = 998) THEN C1SJ3 = .;
   IF (C1SJ4A = -1 OR C1SJ4A = 8) THEN C1SJ4A = .;
   IF (C1SJ4B = -1 OR C1SJ4B = 8) THEN C1SJ4B = .;
   IF (C1SJ4C = -1 OR C1SJ4C = 8) THEN C1SJ4C = .;
   IF (C1SJ4D = -1 OR C1SJ4D = 8) THEN C1SJ4D = .;
   IF (C1SJ4E = -1 OR C1SJ4E = 8) THEN C1SJ4E = .;
   IF (C1SJ4F = -1 OR C1SJ4F = 8) THEN C1SJ4F = .;
   IF (C1SJ4G = -1 OR C1SJ4G = 8) THEN C1SJ4G = .;
   IF (C1SJ4H = -1 OR C1SJ4H = 8) THEN C1SJ4H = .;
   IF (C1SJ4I = -1 OR C1SJ4I = 8) THEN C1SJ4I = .;
   IF (C1SJ4J = -1 OR C1SJ4J = 8) THEN C1SJ4J = .;
   IF (C1SKINPO = -1.0 OR C1SKINPO = 8.0) THEN C1SKINPO = .;
   IF (C1SKINNE = -1.0 OR C1SKINNE = 8.0) THEN C1SKINNE = .;
   IF (C1SFAMSO = -1.0 OR C1SFAMSO = 8.0) THEN C1SFAMSO = .;
   IF (C1SPKINS = -1.0 OR C1SPKINS = 8.0) THEN C1SPKINS = .;
   IF (C1SJ5 = -1 OR C1SJ5 = 98) THEN C1SJ5 = .;
   IF (C1SJ6 = -1 OR C1SJ6 = 98) THEN C1SJ6 = .;
   IF (C1SJ7 = -1 OR C1SJ7 = 998) THEN C1SJ7 = .;
   IF (C1SJ8A = -1 OR C1SJ8A = 8) THEN C1SJ8A = .;
   IF (C1SJ8B = -1 OR C1SJ8B = 8) THEN C1SJ8B = .;
   IF (C1SJ8C = -1 OR C1SJ8C = 8) THEN C1SJ8C = .;
   IF (C1SJ8D = -1 OR C1SJ8D = 8) THEN C1SJ8D = .;
   IF (C1SJ8E = -1 OR C1SJ8E = 8) THEN C1SJ8E = .;
   IF (C1SJ8F = -1 OR C1SJ8F = 8) THEN C1SJ8F = .;
   IF (C1SJ8G = -1 OR C1SJ8G = 8) THEN C1SJ8G = .;
   IF (C1SJ8H = -1 OR C1SJ8H = 8) THEN C1SJ8H = .;
   IF (C1SFDSPO = -1.0 OR C1SFDSPO = 8.0) THEN C1SFDSPO = .;
   IF (C1SFDSNE = -1.0 OR C1SFDSNE = 8.0) THEN C1SFDSNE = .;
   IF (C1SFDSOL = -1.0 OR C1SFDSOL = 8.0) THEN C1SFDSOL = .;
   IF (C1SJ9 = -1 OR C1SJ9 = 8) THEN C1SJ9 = .;
   IF (C1SJ10 = -1 OR C1SJ10 = 8) THEN C1SJ10 = .;
   IF (C1SJ11SA = -1 OR C1SJ11SA = 3 OR C1SJ11SA = 8) THEN C1SJ11SA = .;
   IF (C1SJ11PA = -1 OR C1SJ11PA = 3 OR C1SJ11PA = 8) THEN C1SJ11PA = .;
   IF (C1SJ11CA = -1 OR C1SJ11CA = 3 OR C1SJ11CA = 8) THEN C1SJ11CA = .;
   IF (C1SJ11SB = -1 OR C1SJ11SB = 3 OR C1SJ11SB = 8) THEN C1SJ11SB = .;
   IF (C1SJ11PB = -1 OR C1SJ11PB = 3 OR C1SJ11PB = 8) THEN C1SJ11PB = .;
   IF (C1SJ11CB = -1 OR C1SJ11CB = 3 OR C1SJ11CB = 8) THEN C1SJ11CB = .;
   IF (C1SJ11SC = -1 OR C1SJ11SC = 3 OR C1SJ11SC = 8) THEN C1SJ11SC = .;
   IF (C1SJ11PC = -1 OR C1SJ11PC = 3 OR C1SJ11PC = 8) THEN C1SJ11PC = .;
   IF (C1SJ11CC = -1 OR C1SJ11CC = 3 OR C1SJ11CC = 8) THEN C1SJ11CC = .;
   IF (C1SJ11SD = -1 OR C1SJ11SD = 3 OR C1SJ11SD = 8) THEN C1SJ11SD = .;
   IF (C1SJ11PD = -1 OR C1SJ11PD = 3 OR C1SJ11PD = 8) THEN C1SJ11PD = .;
   IF (C1SJ11CD = -1 OR C1SJ11CD = 3 OR C1SJ11CD = 8) THEN C1SJ11CD = .;
   IF (C1SJ11SE = -1 OR C1SJ11SE = 3 OR C1SJ11SE = 8) THEN C1SJ11SE = .;
   IF (C1SJ11PE = -1 OR C1SJ11PE = 3 OR C1SJ11PE = 8) THEN C1SJ11PE = .;
   IF (C1SJ11CE = -1 OR C1SJ11CE = 3 OR C1SJ11CE = 8) THEN C1SJ11CE = .;
   IF (C1SJ11SF = -1 OR C1SJ11SF = 3 OR C1SJ11SF = 8) THEN C1SJ11SF = .;
   IF (C1SJ11PF = -1 OR C1SJ11PF = 3 OR C1SJ11PF = 8) THEN C1SJ11PF = .;
   IF (C1SJ11CF = -1 OR C1SJ11CF = 3 OR C1SJ11CF = 8) THEN C1SJ11CF = .;
   IF (C1SJ11SG = -1 OR C1SJ11SG = 3 OR C1SJ11SG = 8) THEN C1SJ11SG = .;
   IF (C1SJ11PG = -1 OR C1SJ11PG = 3 OR C1SJ11PG = 8) THEN C1SJ11PG = .;
   IF (C1SJ11CG = -1 OR C1SJ11CG = 3 OR C1SJ11CG = 8) THEN C1SJ11CG = .;
   IF (C1SJ11SH = -1 OR C1SJ11SH = 3 OR C1SJ11SH = 8) THEN C1SJ11SH = .;
   IF (C1SJ11PH = -1 OR C1SJ11PH = 3 OR C1SJ11PH = 8) THEN C1SJ11PH = .;
   IF (C1SJ11CH = -1 OR C1SJ11CH = 3 OR C1SJ11CH = 8) THEN C1SJ11CH = .;
   IF (C1SJ11SI = -1 OR C1SJ11SI = 3 OR C1SJ11SI = 8) THEN C1SJ11SI = .;
   IF (C1SJ11PI = -1 OR C1SJ11PI = 3 OR C1SJ11PI = 8) THEN C1SJ11PI = .;
   IF (C1SJ11CI = -1 OR C1SJ11CI = 3 OR C1SJ11CI = 8) THEN C1SJ11CI = .;
   IF (C1SJ11SJ = -1 OR C1SJ11SJ = 3 OR C1SJ11SJ = 8) THEN C1SJ11SJ = .;
   IF (C1SJ11PJ = -1 OR C1SJ11PJ = 3 OR C1SJ11PJ = 8) THEN C1SJ11PJ = .;
   IF (C1SJ11CJ = -1 OR C1SJ11CJ = 3 OR C1SJ11CJ = 8) THEN C1SJ11CJ = .;
   IF (C1SJ11SK = -1 OR C1SJ11SK = 3 OR C1SJ11SK = 8) THEN C1SJ11SK = .;
   IF (C1SJ11PK = -1 OR C1SJ11PK = 3 OR C1SJ11PK = 8) THEN C1SJ11PK = .;
   IF (C1SJ11CK = -1 OR C1SJ11CK = 3 OR C1SJ11CK = 8) THEN C1SJ11CK = .;
   IF (C1SJ11SL = -1 OR C1SJ11SL = 3 OR C1SJ11SL = 8) THEN C1SJ11SL = .;
   IF (C1SJ11PL = -1 OR C1SJ11PL = 3 OR C1SJ11PL = 8) THEN C1SJ11PL = .;
   IF (C1SJ11CL = -1 OR C1SJ11CL = 3 OR C1SJ11CL = 8) THEN C1SJ11CL = .;
   IF (C1SJ11SM = -1 OR C1SJ11SM = 3 OR C1SJ11SM = 8) THEN C1SJ11SM = .;
   IF (C1SJ11PM = -1 OR C1SJ11PM = 3 OR C1SJ11PM = 8) THEN C1SJ11PM = .;
   IF (C1SJ11CM = -1 OR C1SJ11CM = 3 OR C1SJ11CM = 8) THEN C1SJ11CM = .;
   IF (C1SJ11SN = -1 OR C1SJ11SN = 3 OR C1SJ11SN = 8) THEN C1SJ11SN = .;
   IF (C1SJ11PN = -1 OR C1SJ11PN = 3 OR C1SJ11PN = 8) THEN C1SJ11PN = .;
   IF (C1SJ11CN = -1 OR C1SJ11CN = 3 OR C1SJ11CN = 8) THEN C1SJ11CN = .;
   IF (C1SJ11SO = -1 OR C1SJ11SO = 3 OR C1SJ11SO = 8) THEN C1SJ11SO = .;
   IF (C1SJ11PO = -1 OR C1SJ11PO = 3 OR C1SJ11PO = 8) THEN C1SJ11PO = .;
   IF (C1SJ11CO = -1 OR C1SJ11CO = 3 OR C1SJ11CO = 8) THEN C1SJ11CO = .;
   IF (C1SK1 = -1 OR C1SK1 = 8) THEN C1SK1 = .;
   IF (C1SK2 = -1 OR C1SK2 = 98 OR C1SK2 = 99) THEN C1SK2 = .;
   IF (C1SK3 = -1) THEN C1SK3 = .;
   IF (C1SK3 >= 96 AND C1SK3 <= 99) THEN C1SK3 = .;
   IF (C1SK4 = -1 OR C1SK4 = 98 OR C1SK4 = 99) THEN C1SK4 = .;
   IF (C1SK5 = -1 OR C1SK5 = 98 OR C1SK5 = 99) THEN C1SK5 = .;
   IF (C1SK6 = -1 OR C1SK6 = 98 OR C1SK6 = 99) THEN C1SK6 = .;
   IF (C1SK7A = -1 OR C1SK7A = 8 OR C1SK7A = 9) THEN C1SK7A = .;
   IF (C1SK7B = -1 OR C1SK7B = 8 OR C1SK7B = 9) THEN C1SK7B = .;
   IF (C1SK7C = -1 OR C1SK7C = 8 OR C1SK7C = 9) THEN C1SK7C = .;
   IF (C1SK7D = -1 OR C1SK7D = 8 OR C1SK7D = 9) THEN C1SK7D = .;
   IF (C1SK7E = -1 OR C1SK7E = 8 OR C1SK7E = 9) THEN C1SK7E = .;
   IF (C1SK7F = -1 OR C1SK7F = 8 OR C1SK7F = 9) THEN C1SK7F = .;
   IF (C1SPIFAM = -1.0 OR C1SPIFAM = 8.0 OR C1SPIFAM = 9.0) THEN C1SPIFAM = .;
   IF (C1SK8A1 = -1 OR C1SK8A1 = 8 OR C1SK8A1 = 9) THEN C1SK8A1 = .;
   IF (C1SK8A2 = -1) THEN C1SK8A2 = .;
   IF (C1SK8A2 >= 3 AND C1SK8A2 <= 9) THEN C1SK8A2 = .;
   IF (C1SK8B1 = -1 OR C1SK8B1 = 8 OR C1SK8B1 = 9) THEN C1SK8B1 = .;
   IF (C1SK8B2 = -1) THEN C1SK8B2 = .;
   IF (C1SK8B2 >= 3 AND C1SK8B2 <= 9) THEN C1SK8B2 = .;
   IF (C1SK8C1 = -1 OR C1SK8C1 = 8 OR C1SK8C1 = 9) THEN C1SK8C1 = .;
   IF (C1SK8C2 = -1) THEN C1SK8C2 = .;
   IF (C1SK8C2 >= 3 AND C1SK8C2 <= 9) THEN C1SK8C2 = .;
   IF (C1SK8D1 = -1 OR C1SK8D1 = 8 OR C1SK8D1 = 9) THEN C1SK8D1 = .;
   IF (C1SK8D2 = -1) THEN C1SK8D2 = .;
   IF (C1SK8D2 >= 3 AND C1SK8D2 <= 9) THEN C1SK8D2 = .;
   IF (C1SK9 = -1 OR C1SK9 = 8 OR C1SK9 = 9) THEN C1SK9 = .;
   IF (C1SK10 = -1 OR C1SK10 = 98 OR C1SK10 = 99) THEN C1SK10 = .;
   IF (C1SK11 = -1 OR C1SK11 = 98 OR C1SK11 = 99) THEN C1SK11 = .;
   IF (C1SK12 = -1 OR C1SK12 = 8 OR C1SK12 = 9) THEN C1SK12 = .;
   IF (C1SK13 = -1 OR C1SK13 = 8 OR C1SK13 = 9) THEN C1SK13 = .;
   IF (C1SL1 = -1 OR C1SL1 = 8) THEN C1SL1 = .;
   IF (C1SL2 = -1 OR C1SL2 = 98 OR C1SL2 = 99) THEN C1SL2 = .;
   IF (C1SL3 = -1 OR C1SL3 = 98 OR C1SL3 = 99) THEN C1SL3 = .;
   IF (C1SL4 = -1 OR C1SL4 = 98 OR C1SL4 = 99) THEN C1SL4 = .;
   IF (C1SL5 = -1 OR C1SL5 = 98 OR C1SL5 = 99) THEN C1SL5 = .;
   IF (C1SL6 = -1 OR C1SL6 = 98 OR C1SL6 = 99) THEN C1SL6 = .;
   IF (C1SL7 = -1 OR C1SL7 = 8 OR C1SL7 = 9) THEN C1SL7 = .;
   IF (C1SL8 = -1 OR C1SL8 = 8 OR C1SL8 = 9) THEN C1SL8 = .;
   IF (C1SL9 = -1 OR C1SL9 = 8 OR C1SL9 = 9) THEN C1SL9 = .;
   IF (C1SMARRS = -1 OR C1SMARRS = 98 OR C1SMARRS = 99) THEN C1SMARRS = .;
   IF (C1SL10A = -1 OR C1SL10A = 8 OR C1SL10A = 9) THEN C1SL10A = .;
   IF (C1SL10B = -1 OR C1SL10B = 8 OR C1SL10B = 9) THEN C1SL10B = .;
   IF (C1SL10C = -1 OR C1SL10C = 8 OR C1SL10C = 9) THEN C1SL10C = .;
   IF (C1SSPDIS = -1.0 OR C1SSPDIS = 98.0 OR C1SSPDIS = 99.0) THEN C1SSPDIS = .;
   IF (C1SL11 = -1 OR C1SL11 = 8 OR C1SL11 = 9) THEN C1SL11 = .;
   IF (C1SL12A = -1 OR C1SL12A = 8 OR C1SL12A = 9) THEN C1SL12A = .;
   IF (C1SL12B = -1 OR C1SL12B = 8 OR C1SL12B = 9) THEN C1SL12B = .;
   IF (C1SL12C = -1 OR C1SL12C = 8 OR C1SL12C = 9) THEN C1SL12C = .;
   IF (C1SL12D = -1 OR C1SL12D = 8 OR C1SL12D = 9) THEN C1SL12D = .;
   IF (C1SL12E = -1 OR C1SL12E = 8 OR C1SL12E = 9) THEN C1SL12E = .;
   IF (C1SL12F = -1 OR C1SL12F = 8 OR C1SL12F = 9) THEN C1SL12F = .;
   IF (C1SL12G = -1 OR C1SL12G = 8 OR C1SL12G = 9) THEN C1SL12G = .;
   IF (C1SL12H = -1 OR C1SL12H = 8 OR C1SL12H = 9) THEN C1SL12H = .;
   IF (C1SL12I = -1 OR C1SL12I = 8 OR C1SL12I = 9) THEN C1SL12I = .;
   IF (C1SL12J = -1 OR C1SL12J = 8 OR C1SL12J = 9) THEN C1SL12J = .;
   IF (C1SL12K = -1 OR C1SL12K = 8 OR C1SL12K = 9) THEN C1SL12K = .;
   IF (C1SL12L = -1 OR C1SL12L = 8 OR C1SL12L = 9) THEN C1SL12L = .;
   IF (C1SSPEMP = -1.0 OR C1SSPEMP = 8.0 OR C1SSPEMP = 9.0) THEN C1SSPEMP = .;
   IF (C1SSPCRI = -1.0 OR C1SSPCRI = 8.0 OR C1SSPCRI = 9.0) THEN C1SSPCRI = .;
   IF (C1SSPSOL = -1.0 OR C1SSPSOL = 8.0 OR C1SSPSOL = 9.0) THEN C1SSPSOL = .;
   IF (C1SL13 = -1 OR C1SL13 = 8 OR C1SL13 = 9) THEN C1SL13 = .;
   IF (C1SL14 = -1 OR C1SL14 = 998 OR C1SL14 = 999) THEN C1SL14 = .;
   IF (C1SL15 = -1 OR C1SL15 = 998 OR C1SL15 = 999) THEN C1SL15 = .;
   IF (C1SL16 = -1 OR C1SL16 = 8 OR C1SL16 = 9) THEN C1SL16 = .;
   IF (C1SL17 = -1 OR C1SL17 = 8 OR C1SL17 = 9) THEN C1SL17 = .;
   IF (C1SL18A = -1 OR C1SL18A = 8 OR C1SL18A = 9) THEN C1SL18A = .;
   IF (C1SL18B = -1 OR C1SL18B = 8 OR C1SL18B = 9) THEN C1SL18B = .;
   IF (C1SL18C = -1 OR C1SL18C = 8 OR C1SL18C = 9) THEN C1SL18C = .;
   IF (C1SL18D = -1 OR C1SL18D = 8 OR C1SL18D = 9) THEN C1SL18D = .;
   IF (C1SSPDEC = -1.0 OR C1SSPDEC = 98.0 OR C1SSPDEC = 99.0) THEN C1SSPDEC = .;
   IF (C1SL19 = -1 OR C1SL19 = 8 OR C1SL19 = 9) THEN C1SL19 = .;
   IF (C1SL20 = -1 OR C1SL20 = 8 OR C1SL20 = 9) THEN C1SL20 = .;
   IF (C1SL21 = -1 OR C1SL21 = 8 OR C1SL21 = 9) THEN C1SL21 = .;
   IF (C1SL22 = -1 OR C1SL22 = 998 OR C1SL22 = 999) THEN C1SL22 = .;
   IF (C1SL23 = -1 OR C1SL23 = 998 OR C1SL23 = 999) THEN C1SL23 = .;
   IF (C1SL24A = -1 OR C1SL24A = 8 OR C1SL24A = 9) THEN C1SL24A = .;
   IF (C1SL24B = -1 OR C1SL24B = 8 OR C1SL24B = 9) THEN C1SL24B = .;
   IF (C1SL24C = -1 OR C1SL24C = 8 OR C1SL24C = 9) THEN C1SL24C = .;
   IF (C1SL24D = -1 OR C1SL24D = 8 OR C1SL24D = 9) THEN C1SL24D = .;
   IF (C1SL25A = -1 OR C1SL25A = 98 OR C1SL25A = 99) THEN C1SL25A = .;
   IF (C1SL25B = -1 OR C1SL25B = 98 OR C1SL25B = 99) THEN C1SL25B = .;
   IF (C1SL25C = -1 OR C1SL25C = 8 OR C1SL25C = 9) THEN C1SL25C = .;
   IF (C1SL26A = -1 OR C1SL26A = 98 OR C1SL26A = 99) THEN C1SL26A = .;
   IF (C1SL26B = -1 OR C1SL26B = 98 OR C1SL26B = 99) THEN C1SL26B = .;
   IF (C1SL26C = -1 OR C1SL26C = 8 OR C1SL26C = 9) THEN C1SL26C = .;
   IF (C1SL27A = -1 OR C1SL27A = 98 OR C1SL27A = 99) THEN C1SL27A = .;
   IF (C1SL27B = -1 OR C1SL27B = 98 OR C1SL27B = 99) THEN C1SL27B = .;
   IF (C1SL28 = -1 OR C1SL28 = 8 OR C1SL28 = 9) THEN C1SL28 = .;
   IF (C1SM1 = -1 OR C1SM1 = 98) THEN C1SM1 = .;
   IF (C1SM2 = -1 OR C1SM2 = 98) THEN C1SM2 = .;
   IF (C1SM3 = -1 OR C1SM3 = 98) THEN C1SM3 = .;
   IF (C1SM4 = -1 OR C1SM4 = 98) THEN C1SM4 = .;
   IF (C1SM5 = -1 OR C1SM5 = 98) THEN C1SM5 = .;
   IF (C1SM6 = -1 OR C1SM6 = 8) THEN C1SM6 = .;
   IF (C1SM7 = -1 OR C1SM7 = 8) THEN C1SM7 = .;
   IF (C1SM8 = -1 OR C1SM8 = 8 OR C1SM8 = 9) THEN C1SM8 = .;
   IF (C1SM9 = -1 OR C1SM9 = 8 OR C1SM9 = 9) THEN C1SM9 = .;
   IF (C1SM10 = -1 OR C1SM10 = 8 OR C1SM10 = 9) THEN C1SM10 = .;
   IF (C1SM11 = -1 OR C1SM11 = 8 OR C1SM11 = 9) THEN C1SM11 = .;
   IF (C1SM12 = -1 OR C1SM12 = 8 OR C1SM12 = 9) THEN C1SM12 = .;
   IF (C1SM13 = -1 OR C1SM13 = 8 OR C1SM13 = 9) THEN C1SM13 = .;
   IF (C1SN1A = -1 OR C1SN1A = 98) THEN C1SN1A = .;
   IF (C1SN1B = -1 OR C1SN1B = 98 OR C1SN1B = 99) THEN C1SN1B = .;
   IF (C1SN1C = -1 OR C1SN1C = 98 OR C1SN1C = 99) THEN C1SN1C = .;
   IF (C1SN2A = -1 OR C1SN2A = 8) THEN C1SN2A = .;
   IF (C1SN2B = -1 OR C1SN2B = 8) THEN C1SN2B = .;
   IF (C1SN2C = -1 OR C1SN2C = 8) THEN C1SN2C = .;
   IF (C1SN2D = -1 OR C1SN2D = 8) THEN C1SN2D = .;
   IF (C1SN2E = -1 OR C1SN2E = 8) THEN C1SN2E = .;
   IF (C1SN2F = -1 OR C1SN2F = 8) THEN C1SN2F = .;
   IF (C1SN2G = -1 OR C1SN2G = 8) THEN C1SN2G = .;
   IF (C1SN2H = -1 OR C1SN2H = 8) THEN C1SN2H = .;
   IF (C1SN2I = -1 OR C1SN2I = 8) THEN C1SN2I = .;
   IF (C1SSPIRI = -1 OR C1SSPIRI = 98) THEN C1SSPIRI = .;
   IF (C1SRELID = -1.0 OR C1SRELID = 98.0) THEN C1SRELID = .;
   IF (C1SN3A = -1 OR C1SN3A = 8) THEN C1SN3A = .;
   IF (C1SN3B = -1 OR C1SN3B = 8) THEN C1SN3B = .;
   IF (C1SN3C = -1 OR C1SN3C = 8) THEN C1SN3C = .;
   IF (C1SN3D = -1 OR C1SN3D = 8) THEN C1SN3D = .;
   IF (C1SN3E = -1 OR C1SN3E = 8) THEN C1SN3E = .;
   IF (C1SRELPR = -1.0 OR C1SRELPR = 98.0) THEN C1SRELPR = .;
   IF (C1SN4 = -1 OR C1SN4 = 8) THEN C1SN4 = .;
   IF (C1SN5 = -1 OR C1SN5 = 8) THEN C1SN5 = .;
   IF (C1SN6 = -1 OR C1SN6 = 8 OR C1SN6 = 9) THEN C1SN6 = .;
   IF (C1SN7 = -1 OR C1SN7 = 8 OR C1SN7 = 9) THEN C1SN7 = .;
   IF (C1SN8 = -1 OR C1SN8 = 8) THEN C1SN8 = .;
   IF (C1SN9A = -1 OR C1SN9A = 8 OR C1SN9A = 9) THEN C1SN9A = .;
   IF (C1SN9B = -1 OR C1SN9B = 8 OR C1SN9B = 9) THEN C1SN9B = .;
   IF (C1SN9C = -1 OR C1SN9C = 8 OR C1SN9C = 9) THEN C1SN9C = .;
   IF (C1SN9D = -1 OR C1SN9D = 8 OR C1SN9D = 9) THEN C1SN9D = .;
   IF (C1SRELSU = -1.0 OR C1SRELSU = 98.0 OR C1SRELSU = 99.0) THEN C1SRELSU = .;
   IF (C1SN10A = -1 OR C1SN10A = 8) THEN C1SN10A = .;
   IF (C1SN10B = -1 OR C1SN10B = 8) THEN C1SN10B = .;
   IF (C1SN10C = -1 OR C1SN10C = 8) THEN C1SN10C = .;
   IF (C1SN10D = -1 OR C1SN10D = 8) THEN C1SN10D = .;
   IF (C1SN10E = -1 OR C1SN10E = 8) THEN C1SN10E = .;
   IF (C1SN10F = -1 OR C1SN10F = 8) THEN C1SN10F = .;
   IF (C1SN10G = -1 OR C1SN10G = 8) THEN C1SN10G = .;
   IF (C1SN10H = -1 OR C1SN10H = 8) THEN C1SN10H = .;
   IF (C1SRELCA = -1 OR C1SRELCA = 98) THEN C1SRELCA = .;
   IF (C1SRELCB = -1.0 OR C1SRELCB = 98.0) THEN C1SRELCB = .;
   IF (C1SN11A = -1 OR C1SN11A = 8) THEN C1SN11A = .;
   IF (C1SN11B = -1 OR C1SN11B = 8) THEN C1SN11B = .;
   IF (C1SN11C = -1 OR C1SN11C = 8) THEN C1SN11C = .;
   IF (C1SN11D = -1 OR C1SN11D = 8) THEN C1SN11D = .;
   IF (C1SN11E = -1 OR C1SN11E = 8) THEN C1SN11E = .;
   IF (C1SSPRTE = -1.00 OR C1SSPRTE = 98.00) THEN C1SSPRTE = .;
   IF (C1SN12A = -1 OR C1SN12A = 8) THEN C1SN12A = .;
   IF (C1SN12B = -1 OR C1SN12B = 8) THEN C1SN12B = .;
   IF (C1SN12C = -1 OR C1SN12C = 8) THEN C1SN12C = .;
   IF (C1SN12D = -1 OR C1SN12D = 8) THEN C1SN12D = .;
   IF (C1SN12E = -1 OR C1SN12E = 8) THEN C1SN12E = .;
   IF (C1SN12F = -1 OR C1SN12F = 8) THEN C1SN12F = .;
   IF (C1SN12G = -1 OR C1SN12G = 8) THEN C1SN12G = .;
   IF (C1SN12H = -1 OR C1SN12H = 8) THEN C1SN12H = .;
   IF (C1SN12I = -1 OR C1SN12I = 8) THEN C1SN12I = .;
   IF (C1SMNDFU = -1.0 OR C1SMNDFU = 98.0) THEN C1SMNDFU = .;
   IF (C1SP1A = -1 OR C1SP1A = 9998) THEN C1SP1A = .;
   IF (C1SP1B = -1 OR C1SP1B = 9998) THEN C1SP1B = .;
   IF (C1SP1C = -1 OR C1SP1C = 9998) THEN C1SP1C = .;
   IF (C1SP1D = -1 OR C1SP1D = 9998) THEN C1SP1D = .;
   IF (C1SP1E = -1 OR C1SP1E = 9998) THEN C1SP1E = .;
   IF (C1SP1F = -1 OR C1SP1F = 9998) THEN C1SP1F = .;
   IF (C1SP1G = -1 OR C1SP1G = 9998) THEN C1SP1G = .;
   IF (C1SP1H = -1 OR C1SP1H = 9998) THEN C1SP1H = .;
   IF (C1SP1I = -1 OR C1SP1I = 9998) THEN C1SP1I = .;
   IF (C1SP1J = -1 OR C1SP1J = 9998) THEN C1SP1J = .;
   IF (C1SP1K = -1 OR C1SP1K = 9998) THEN C1SP1K = .;
   IF (C1SLFEDI = -1 OR C1SLFEDI = 98) THEN C1SLFEDI = .;
   IF (C1SP2A = -1 OR C1SP2A = 8) THEN C1SP2A = .;
   IF (C1SP2B = -1 OR C1SP2B = 8) THEN C1SP2B = .;
   IF (C1SP2C = -1 OR C1SP2C = 8) THEN C1SP2C = .;
   IF (C1SP2D = -1 OR C1SP2D = 8) THEN C1SP2D = .;
   IF (C1SP2E = -1 OR C1SP2E = 8) THEN C1SP2E = .;
   IF (C1SP2F = -1 OR C1SP2F = 8) THEN C1SP2F = .;
   IF (C1SP2G = -1 OR C1SP2G = 8) THEN C1SP2G = .;
   IF (C1SP2H = -1 OR C1SP2H = 8) THEN C1SP2H = .;
   IF (C1SP2I = -1 OR C1SP2I = 8) THEN C1SP2I = .;
   IF (C1SDAYDI = -1.0 OR C1SDAYDI = 98.0) THEN C1SDAYDI = .;
   IF (C1SP3 = -1 OR C1SP3 = 8) THEN C1SP3 = .;
   IF (C1SP4A = -1 OR C1SP4A = 8 OR C1SP4A = 9) THEN C1SP4A = .;
   IF (C1SP4B = -1 OR C1SP4B = 8 OR C1SP4B = 9) THEN C1SP4B = .;
   IF (C1SP4C = -1 OR C1SP4C = 8 OR C1SP4C = 9) THEN C1SP4C = .;
   IF (C1SP4D = -1 OR C1SP4D = 8 OR C1SP4D = 9) THEN C1SP4D = .;
   IF (C1SP4E = -1 OR C1SP4E = 8 OR C1SP4E = 9) THEN C1SP4E = .;
   IF (C1SP4F = -1 OR C1SP4F = 8 OR C1SP4F = 9) THEN C1SP4F = .;
   IF (C1SP4G = -1 OR C1SP4G = 8 OR C1SP4G = 9) THEN C1SP4G = .;
   IF (C1SP4H = -1 OR C1SP4H = 8 OR C1SP4H = 9) THEN C1SP4H = .;
   IF (C1SP4I = -1 OR C1SP4I = 8 OR C1SP4I = 9) THEN C1SP4I = .;
   IF (C1SP4J = -1 OR C1SP4J = 8 OR C1SP4J = 9) THEN C1SP4J = .;
   IF (C1SP4K = -1 OR C1SP4K = 8 OR C1SP4K = 9) THEN C1SP4K = .;
   IF (C1SP4L = -1 OR C1SP4L = 8 OR C1SP4L = 9) THEN C1SP4L = .;
   IF (C1SP4M = -1 OR C1SP4M = 8 OR C1SP4M = 9) THEN C1SP4M = .;
   IF (C1SP5 = -1 OR C1SP5 = 8 OR C1SP5 = 9) THEN C1SP5 = .;
   IF (C1SP6 = -1 OR C1SP6 = 8 OR C1SP6 = 9) THEN C1SP6 = .;
   IF (C1SQ1 = -1 OR C1SQ1 = 98) THEN C1SQ1 = .;
   IF (C1SQ2 = -1 OR C1SQ2 = 98) THEN C1SQ2 = .;
   IF (C1SQ3 = -1 OR C1SQ3 = 98) THEN C1SQ3 = .;
   IF (C1SQ4 = -1 OR C1SQ4 = 98) THEN C1SQ4 = .;
   IF (C1SQ5 = -1 OR C1SQ5 = 98) THEN C1SQ5 = .;
   IF (C1SQ6 = -1 OR C1SQ6 = 98) THEN C1SQ6 = .;
*/


* SAS FORMAT STATEMENT;

/*
   FORMAT
         C1PA1 c1pa1fff. C1PA10A c1paa1ff. C1PA10B c1pa10bf.
         C1PA10C c1pa10bf. C1PA10D c1pa10bf. C1PA10E c1pa10bf.
         C1PA10F c1pa10bf. C1PA10G c1pa10bf. C1PA10H c1pa10bf.
         C1PA11 c1pa11ff. C1PA12 c1paa1ff. C1PA13 c1paa1ff.
         C1PA14 c1paa1ff. C1PA15 c1pa15ff. C1PA16 c1pa16ff.
         C1PA17 c1paa1ff. C1PA18 c1pa18ff. C1PA19 c1pa19ff.
         C1PA2 c1pa1fff. C1PA20 c1paa2af. C1PA21 c1pa21ff.
         C1PA22 c1pa22ff. C1PA23 c1paa1ff. C1PA23A c1pa4baf.
         C1PA23B c1paa2af. C1PA23CA c1pa7baf. C1PA23CB c1pa7baf.
         C1PA23CC c1pa7baf. C1PA23CD c1pa7baf. C1PA23CE c1pa7baf.
         C1PA23CF c1pa7baf. C1PA23CG c1pa7baf. C1PA23CH c1pa7baf.
         C1PA23CI c1pa7baf. C1PA23CJ c1pa7baf. C1PA24 c1pa24ff.
         C1PA24A c1pa24af. C1PA24B c1paa2af. C1PA24C c1paa2af.
         C1PA24D c1paa2af. C1PA24EA c1paa2af. C1PA24EB c1paa2af.
         C1PA24EC c1paa2af. C1PA24ED c1paa2af. C1PA24EE c1paa2af.
         C1PA24EF c1paa2af. C1PA25A c1pa25af. C1PA25BD c1pa25bf.
         C1PA25BS c1pa25bf. C1PA25IN c1pa25if. C1PA25NM c1pa25nf.
         C1PA26 c1paa1ff. C1PA27 c1pa9fff. C1PA27A c1pa9aff.
         C1PA27B c1pa9aff. C1PA28A c1paa2af. C1PA28AA c1pa4baf.
         C1PA28B c1paa2af. C1PA28BB c1pa4baf. C1PA28C c1paa2af.
         C1PA28CC c1pa4baf. C1PA28D c1paa2af. C1PA28DD c1pa4baf.
         C1PA28E c1paa2af. C1PA28EE c1pa4baf. C1PA28F c1paa2af.
         C1PA28FF c1pa4baf. C1PA28G c1paa2af. C1PA28GG c1pa4baf.
         C1PA28H c1paa2af. C1PA28HH c1pa4baf. C1PA28I c1paa2af.
         C1PA28II c1pa4baf. C1PA28J c1paa2af. C1PA28JJ c1pa4baf.
         C1PA29 c1paa2af. C1PA29AA c1paa2af. C1PA29AB c1paa2af.
         C1PA29AC c1paa2af. C1PA29AD c1paa2af. C1PA29AE c1paa2af.
         C1PA29AF c1paa2af. C1PA29AG c1paa2af. C1PA29AH c1paa2af.
         C1PA29AI c1paa2af. C1PA3 c1pa3fff. C1PA30A c1paa1ff.
         C1PA30B c1pa10bf. C1PA30C c1pa10bf. C1PA30D c1pa10bf.
         C1PA30E c1pa10bf. C1PA30F c1pa10bf. C1PA31A c1paa2af.
         C1PA31B c1paa2af. C1PA31C c1paa2af. C1PA31D c1paa2af.
         C1PA31E c1paa2af. C1PA31F c1paa2af. C1PA31H c1paa2af.
         C1PA31I c1paa2af. C1PA31J c1paa2af. C1PA32A c1paa2af.
         C1PA32C c1paa2af. C1PA32D c1paa2af. C1PA32E c1paa2af.
         C1PA32G c1paa2af. C1PA32H c1paa2af. C1PA32J c1paa2af.
         C1PA33A c1paa2af. C1PA33C c1paa2af. C1PA33D c1paa2af.
         C1PA33E c1paa2af. C1PA33G c1paa2af. C1PA33H c1paa2af.
         C1PA33J c1paa2af. C1PA34A c1paa2af. C1PA34B c1paa2af.
         C1PA34C c1paa2af. C1PA34D c1paa2af. C1PA34E c1paa2af.
         C1PA34F c1paa2af. C1PA34H c1paa2af. C1PA34I c1paa2af.
         C1PA34J c1paa2af. C1PA35A c1paa2af. C1PA35B c1paa2af.
         C1PA35C c1paa2af. C1PA35D c1paa2af. C1PA35E c1paa2af.
         C1PA35F c1paa2af. C1PA35G c1paa2af. C1PA35H c1paa2af.
         C1PA35I c1paa2af. C1PA35J c1paa2af. C1PA36A c1paa2af.
         C1PA36AM c1pa36af. C1PA36AY c1pidatf. C1PA36B c1pa36bf.
         C1PA36C c1paa2af. C1PA36DM c1pa36af. C1PA36DY c1pidatf.
         C1PA36EM c1pa36af. C1PA36EY c1pidatf. C1PA37 c1pa37ff.
         C1PA38A c1paa2af. C1PA38B c1pa4baf. C1PA39 c1paa2af.
         C1PA4 c1pa4fff. C1PA40 c1pa40ff. C1PA41 c1paa2af.
         C1PA42 c1pa4baf. C1PA43 c1pa40ff. C1PA44 c1paa1ff.
         C1PA46 c1paa1ff. C1PA47 c1pa47ff. C1PA48 c1pa48ff.
         C1PA49 c1pa49ff. C1PA4A c1pa4aff. C1PA4BA c1pa4baf.
         C1PA4BB c1pa4baf. C1PA4BC c1pa4baf. C1PA5 c1pa4baf.
         C1PA50 c1paa2af. C1PA51 c1pa51ff. C1PA51A c1pa51af.
         C1PA52 c1pa4baf. C1PA53 c1pa4baf. C1PA54 c1pa51ff.
         C1PA54A c1pa51af. C1PA55 c1pa4baf. C1PA56 c1pa4baf.
         C1PA57 c1pa24af. C1PA59 c1paa1ff. C1PA5A c1pa4aff.
         C1PA5BA c1pa4baf. C1PA5BB c1pa4baf. C1PA5BC c1pa4baf.
         C1PA60 c1pa60ff. C1PA61 c1pa61ff. C1PA62 c1pa62ff.
         C1PA63 c1paa2af. C1PA64 c1paa2af. C1PA65 c1paa2af.
         C1PA65A c1paa2af. C1PA66 c1paa2af. C1PA66A c1pa66af.
         C1PA67 c1paa2af. C1PA68 c1paa2af. C1PA69 c1paa2af.
         C1PA6A c1paa1ff. C1PA6B c1paa1ff. C1PA6C c1paa1ff.
         C1PA6D c1paa1ff. C1PA7 c1paa1ff. C1PA70 c1pa4baf.
         C1PA71MO c1pa71mf. C1PA71YR c1pidatf. C1PA72 c1pa72ff.
         C1PA73 c1pa61ff. C1PA74 c1pa62ff. C1PA75 c1paa2af.
         C1PA76 c1paa2af. C1PA76A c1paa2af. C1PA77 c1paa2af.
         C1PA77A c1pa66af. C1PA78 c1paa2af. C1PA79 c1paa2af.
         C1PA7A c1pa7aff. C1PA7BA c1pa7baf. C1PA7BB c1pa7baf.
         C1PA7BC c1pa7baf. C1PA7BD c1pa7baf. C1PA7BE c1pa7baf.
         C1PA7BF c1pa7baf. C1PA7BG c1pa7baf. C1PA7BH c1pa7baf.
         C1PA7BI c1pa7baf. C1PA7BJ c1pa7baf. C1PA7C c1paa2af.
         C1PA7D c1paa2af. C1PA8 c1paa2af. C1PA80 c1paa2af.
         C1PA81 c1pa4baf. C1PA82MO c1pa71mf. C1PA82YR c1pidatf.
         C1PA83 c1pa83ff. C1PA83A c1pa83af. C1PA84 c1pa84ff.
         C1PA84A c1pa61ff. C1PA85 c1pa85ff. C1PA85A c1paa2af.
         C1PA86 c1paa2af. C1PA86A c1paa2af. C1PA87 c1pa87ff.
         C1PA87A c1pa87ff. C1PA88A c1pa88af. C1PA88B c1pa88af.
         C1PA88C c1pa88af. C1PA88D c1pa88af. C1PA88E c1pa88af.
         C1PA88F c1pa88af. C1PA88G c1pa88af. C1PA88H c1pa88af.
         C1PA88I c1pa88af. C1PA88J c1pa88af. C1PA89 c1pa89ff.
         C1PA8A c1pidatf. C1PA9 c1pa9fff. C1PA90 c1paa1ff.
         C1PA90A c1paa2af. C1PA91 c1pa25bf. C1PA92 c1paa2af.
         C1PA92A c1paa2af. C1PA92B c1paa2af. C1PA92C c1paa2af.
         C1PA92D c1paa2af. C1PA92E c1paa2af. C1PA92F c1paa2af.
         C1PA9A c1pa9aff. C1PA9B c1pa9aff. C1PAA1 c1paa1ff.
         C1PAA2A c1paa2af. C1PAA2B c1paa2af. C1PAA2C c1paa2af.
         C1PAA2D c1paa2af. C1PAA2E c1paa2af. C1PAA2F c1paa2af.
         C1PAA2G c1paa2af. C1PAA2H c1paa2af. C1PAA2I c1paa2if.
         C1PAA2I1 c1paa2i_1f. C1PAA2J c1paa2if. C1PAA2J1 c1paa2i_1f.
         C1PAA2K c1paa2if. C1PAA2K1 c1paa2i_1f. C1PAA2L c1paa2if.
         C1PAA2L2 c1paa2i_1f. C1PAA2M c1paa2af. C1PAA2N c1paa2af.
         C1PAA2O c1paa2af. C1PAA2P c1paa2af. C1PAA2Q c1paa2af.
         C1PAA2R c1paa2af. C1PAA2S c1paa2af. C1PAA2T c1paa2af.
         C1PAA2U c1paa2af. C1PAA2V c1paa2af. C1PAA2W c1paa2af.
         C1PAA2X c1paa2af. C1PAA2Y c1paa2af. C1PAA2Z c1paa2af.
         C1PAA3 c1paa3ff. C1PAA3A c1paa3af. C1PAA4 c1paa4ff.
         C1PAA5 c1paa4ff. C1PAA6 c1paa4ff. C1PAA7 c1paa4ff.
         C1PAA8 c1paa4ff. C1PANGIN c1pangif. C1PANHDX c1pdepa_1f.
         C1PANHED c1panhef. C1PANXIE c1panxif. C1PANXTD c1pdepa_1f.
         C1PB1 c1pb1fff. C1PB12 c1pa25bf. C1PB12A c1pa25bf.
         C1PB13 c1pa25bf. C1PB14 c1paa2af. C1PB14A c1pa25bf.
         C1PB15A c1pb8aff. C1PB15A1 c1paa2af. C1PB15C c1pb8cff.
         C1PB16 c1pb16ff. C1PB16A12 c1paa2af. C1PB16A18 c1paa2af.
         C1PB16A25 c1paa2af. C1PB16A35 c1paa2af. C1PB16A5 c1paa2af.
         C1PB16A50 c1paa2af. C1PB16A80 c1paa2af. C1PB17A c1pb2caf.
         C1PB17B c1pa25bf. C1PB17B10 c1paa2af. C1PB17B25 c1paa2af.
         C1PB17B5 c1paa2af. C1PB19 c1pb19ff. C1PB2 c1pb2fff.
         C1PB20 c1pa4baf. C1PB21M c1pa36af. C1PB21Y c1pidatf.
         C1PB22 c1pb22ff. C1PB23M c1pa36af. C1PB23Y c1pidatf.
         C1PB24M c1pa36af. C1PB24Y c1pidatf. C1PB25M c1pa36af.
         C1PB25Y c1pidatf. C1PB26M c1pa36af. C1PB26Y c1pidatf.
         C1PB27M c1pa36af. C1PB27Y c1pidatf. C1PB28M c1pa36af.
         C1PB28Y c1pidatf. C1PB29M c1pa36af. C1PB29Y c1pidatf.
         C1PB2A1 c1paa2af. C1PB2A10 c1paa2af. C1PB2A11 c1paa2af.
         C1PB2A2 c1paa2af. C1PB2A3 c1paa2af. C1PB2A4 c1paa2af.
         C1PB2A5 c1paa2af. C1PB2A6 c1paa2af. C1PB2A7 c1paa2af.
         C1PB2A8 c1paa2af. C1PB2A9 c1paa2af. C1PB2AA c1paa2af.
         C1PB2AWK c1pb2awf. C1PB2B c1paa2af. C1PB2BBA c1paa2af.
         C1PB2BBB c1paa2af. C1PB2BBC c1paa2af. C1PB2BBD c1paa2af.
         C1PB2BBE c1paa2af. C1PB2BBF c1paa2af. C1PB2BBG c1paa2af.
         C1PB2BCN c1pa25bf. C1PB2BCU c1pb2bcf. C1PB2BDN c1pb2bdf.
         C1PB2BDU c1pb2bcf. C1PB2BM c1pa36af. C1PB2BY c1pidatf.
         C1PB2C2 c1pa25bf. C1PB2CA c1pb2caf. C1PB2CB c1pa25bf.
         C1PB2CB10 c1paa2af. C1PB2CB25 c1paa2af. C1PB2DN c1pa25bf.
         C1PB2DU c1pb2bcf. C1PB30 c1paa2af. C1PB31M c1pb2bcf.
         C1PB31N c1pb31nf. C1PB32A c1pb32af. C1PB32Y c1pidatf.
         C1PB33 c1pb33ff. C1PB33A1 c1paa2af. C1PB33AA c1paa2af.
         C1PB33AB c1paa2af. C1PB33AC c1paa2af. C1PB33AD c1paa2af.
         C1PB33AE c1paa2af. C1PB33AF c1paa2af. C1PB33AG c1paa2af.
         C1PB33AH c1paa2af. C1PB33AI c1paa2af. C1PB33AJ c1paa2af.
         C1PB33AK c1paa2af. C1PB33AWK c1pb2awf. C1PB33B c1paa2af.
         C1PB33BAM c1pa36af. C1PB33BAY c1pidatf. C1PB33BBA c1paa2af.
         C1PB33BBB c1paa2af. C1PB33BBC c1paa2af. C1PB33BBD c1paa2af.
         C1PB33BBE c1paa2af. C1PB33BBF c1paa2af. C1PB33BBG c1paa2af.
         C1PB33BCN c1pa25bf. C1PB33BCU c1pb2bcf. C1PB33BDN c1pb2bdf.
         C1PB33BDU c1pb2bcf. C1PB33C2 c1pa25bf. C1PB33CA c1pb2caf.
         C1PB33CB c1pa25bf. C1PB33CB10 c1paa2af. C1PB33CB25 c1paa2af.
         C1PB33DN c1pa25bf. C1PB33DU c1pb2bcf. C1PB34A c1paa2af.
         C1PB34B c1paa2af. C1PB34C c1paa2af. C1PB34D c1paa2af.
         C1PB34E c1paa2af. C1PB34F c1paa2af. C1PB34G c1paa2af.
         C1PB34H c1paa2af. C1PB34I c1paa2af. C1PB34J c1paa2af.
         C1PB34K c1paa2af. C1PB34WK c1pb2awf. C1PB35N c1pb4nff.
         C1PB35U c1pb2bcf. C1PB36 c1pb5fff. C1PB36A c1paa2af.
         C1PB36A1 c1paa2af. C1PB36B c1paa2af. C1PB36C c1paa2af.
         C1PB36D c1paa2af. C1PB36E c1paa2af. C1PB36F c1paa2af.
         C1PB36G c1paa2af. C1PB37 c1paa2af. C1PB38 c1paa2af.
         C1PB39A c1pb8aff. C1PB39A1 c1paa2af. C1PB39C c1pb8cff.
         C1PB3A c1paa2af. C1PB3B c1paa2af. C1PB3C c1paa2af.
         C1PB3D c1paa2af. C1PB3E c1paa2af. C1PB3F c1paa2af.
         C1PB3G c1paa2af. C1PB3H c1paa2af. C1PB3I c1paa2af.
         C1PB3J c1paa2af. C1PB3K c1paa2af. C1PB3WK c1pb2awf.
         C1PB40 c1pb16ff. C1PB40A12 c1paa2af. C1PB40A18 c1paa2af.
         C1PB40A25 c1paa2af. C1PB40A35 c1paa2af. C1PB40A5 c1paa2af.
         C1PB40A50 c1paa2af. C1PB40A80 c1paa2af. C1PB41A c1pb2caf.
         C1PB41B c1pa25bf. C1PB41B10 c1paa2af. C1PB41B25 c1paa2af.
         C1PB41B5 c1paa2af. C1PB4N c1pb4nff. C1PB4U c1pb2bcf.
         C1PB5 c1pb5fff. C1PB5A c1paa2af. C1PB5AB c1paa2af.
         C1PB5B c1paa2af. C1PB5C c1paa2af. C1PB5D c1paa2af.
         C1PB5E c1paa2af. C1PB5F c1paa2af. C1PB5G c1paa2af.
         C1PB6 c1paa2af. C1PB7 c1paa2af. C1PB7A c1pb7aff.
         C1PB8A c1pb8aff. C1PB8A1 c1paa2af. C1PB8C c1pb8cff.
         C1PC1 c1paa2af. C1PC2 c1pa4fff. C1PC2A c1pc2aff.
         C1PC3 c1paa1ff. C1PC4 c1pa4fff. C1PC6 c1paa2af.
         C1PCACDX c1phrtdf. C1PCACRS c1phrtrf. C1PCDA1 c1pa4baf.
         C1PCDA11 c1pa4baf. C1PCDA2 c1pa4baf. C1PCDA3 c1pa4baf.
         C1PCDA4 c1pa4baf. C1PCDA5 c1pa4baf. C1PCDA6 c1pa4baf.
         C1PCDA7 c1pa4baf. C1PCDA8 c1pa4baf. C1PCDA9 c1pa4baf.
         C1PCDD1 c1paa2af. C1PCDD10 c1paa2af. C1PCDD11 c1paa2af.
         C1PCDD12 c1paa2af. C1PCDD13 c1paa2af. C1PCDD14 c1paa2af.
         C1PCDD15 c1paa2af. C1PCDD16 c1paa2af. C1PCDD17 c1paa2af.
         C1PCDD18 c1paa2af. C1PCDD19 c1paa2af. C1PCDD2 c1paa2af.
         C1PCDD20 c1paa2af. C1PCDD21 c1paa2af. C1PCDD22 c1paa2af.
         C1PCDD3 c1paa2af. C1PCDD4 c1paa2af. C1PCDD5 c1paa2af.
         C1PCDD6 c1paa2af. C1PCDD7 c1paa2af. C1PCDD8 c1paa2af.
         C1PCDD9 c1paa2af. C1PCDO1 c1paa2af. C1PCDO11 c1paa2af.
         C1PCDO2 c1paa2af. C1PCDO3 c1paa2af. C1PCDO4 c1paa2af.
         C1PCDO5 c1paa2af. C1PCDO6 c1paa2af. C1PCDO7 c1paa2af.
         C1PCDO8 c1paa2af. C1PCDO9 c1paa2af. C1PCDP1 c1pcdp1f.
         C1PCDP2 c1pcdp1f. C1PCDP3 c1pcdp1f. C1PCDP4 c1pcdp1f.
         C1PCDP5 c1pcdp1f. C1PCDT1 c1pcdt1f. C1PCDT11 c1pcdt1f.
         C1PCDT2 c1pcdt1f. C1PCDT3 c1pcdt1f. C1PCDT4 c1pcdt1f.
         C1PCDT5 c1pcdt1f. C1PCDT6 c1pcdt1f. C1PCDT7 c1pcdt1f.
         C1PCDT8 c1pcdt1f. C1PCDT9 c1pcdt1f. C1PCDX1 c1paa2af.
         C1PCDX2 c1paa2af. C1PCDX3 c1paa2af. C1PCDX4 c1paa2af.
         C1PCDX5 c1paa2af. C1PCDX6 c1paa2af. C1PCHA1 c1pcha1f.
         C1PCHA10 c1pcha1f. C1PCHA11 c1pcha1f. C1PCHA12 c1pcha1f.
         C1PCHA13 c1pcha1f. C1PCHA14 c1pcha1f. C1PCHA15 c1pcha1f.
         C1PCHA16 c1pcha1f. C1PCHA17 c1pcha1f. C1PCHA18 c1pcha1f.
         C1PCHA19 c1pcha1f. C1PCHA2 c1pcha1f. C1PCHA20 c1pcha1f.
         C1PCHA21 c1pcha1f. C1PCHA22 c1pcha1f. C1PCHA23 c1pcha1f.
         C1PCHA25 c1pcha1f. C1PCHA26 c1pcha1f. C1PCHA27 c1pcha1f.
         C1PCHA28 c1pcha1f. C1PCHA29 c1pcha1f. C1PCHA3 c1pcha1f.
         C1PCHA4 c1pcha1f. C1PCHA5 c1pcha1f. C1PCHA6 c1pcha1f.
         C1PCHA7 c1pcha1f. C1PCHA8 c1pcha1f. C1PCHA9 c1pcha1f.
         C1PCHC1 c1paa2af. C1PCHC2 c1paa2af. C1PCHC3 c1paa2af.
         C1PCHC4 c1paa2af. C1PCHC5 c1paa2af. C1PCHC6 c1paa2af.
         C1PCHC7 c1paa2af. C1PCHC8 c1paa2af. C1PCHH1 c1paa2af.
         C1PCHH10 c1paa2af. C1PCHH11 c1paa2af. C1PCHH12 c1paa2af.
         C1PCHH13 c1paa2af. C1PCHH14 c1paa2af. C1PCHH15 c1paa2af.
         C1PCHH16 c1paa2af. C1PCHH17 c1paa2af. C1PCHH18 c1paa2af.
         C1PCHH19 c1paa2af. C1PCHH2 c1paa2af. C1PCHH20 c1paa2af.
         C1PCHH21 c1paa2af. C1PCHH22 c1paa2af. C1PCHH3 c1paa2af.
         C1PCHH4 c1paa2af. C1PCHH5 c1paa2af. C1PCHH6 c1paa2af.
         C1PCHH7 c1paa2af. C1PCHH8 c1paa2af. C1PCHH9 c1paa2af.
         C1PCHM1N c1pchm1f. C1PCHM1X c1pchm1_1f. C1PCHM2N c1pchm1f.
         C1PCHM2X c1pchm1_1f. C1PCHR1 c1pchr1f. C1PCHR10 c1pchr1f.
         C1PCHR11 c1pchr1f. C1PCHR12 c1pchr1f. C1PCHR13 c1pchr1f.
         C1PCHR14 c1pchr1f. C1PCHR15 c1pchr1f. C1PCHR16 c1pchr1f.
         C1PCHR17 c1pchr1f. C1PCHR18 c1pchr1f. C1PCHR19 c1pchr1f.
         C1PCHR2 c1pchr1f. C1PCHR20 c1pchr1f. C1PCHR21 c1pchr1f.
         C1PCHR22 c1pchr1f. C1PCHR23 c1pchr1f. C1PCHR24 c1pchr1f.
         C1PCHR25 c1pchr1f. C1PCHR26 c1pchr1f. C1PCHR27 c1pchr1f.
         C1PCHR28 c1pchr1f. C1PCHR29 c1pchr1f. C1PCHR3 c1pchr1f.
         C1PCHR4 c1pchr1f. C1PCHR5 c1pchr1f. C1PCHR6 c1pchr1f.
         C1PCHR7 c1pchr1f. C1PCHR8 c1pchr1f. C1PCHR9 c1pchr1f.
         C1PCHX1 c1pb32af. C1PCHX10 c1pb32af. C1PCHX11 c1pb32af.
         C1PCHX12 c1pb32af. C1PCHX13 c1pb32af. C1PCHX14 c1pb32af.
         C1PCHX15 c1pb32af. C1PCHX16 c1pb32af. C1PCHX17 c1pb32af.
         C1PCHX18 c1pb32af. C1PCHX19 c1pb32af. C1PCHX2 c1pb32af.
         C1PCHX20 c1pb32af. C1PCHX21 c1pb32af. C1PCHX22 c1pb32af.
         C1PCHX23 c1pb32af. C1PCHX24 c1pb32af. C1PCHX25 c1pb32af.
         C1PCHX26 c1pb32af. C1PCHX27 c1pb32af. C1PCHX28 c1pb32af.
         C1PCHX29 c1pb32af. C1PCHX3 c1pb32af. C1PCHX4 c1pb32af.
         C1PCHX5 c1pb32af. C1PCHX6 c1pb32af. C1PCHX7 c1pb32af.
         C1PCHX8 c1pb32af. C1PCHX9 c1pb32af. C1PCMB1 c1pa36af.
         C1PCMB10 c1pa36af. C1PCMB11 c1pa36af. C1PCMB12 c1pa36af.
         C1PCMB13 c1pa36af. C1PCMB14 c1pa36af. C1PCMB15 c1pa36af.
         C1PCMB16 c1pa36af. C1PCMB17 c1pa36af. C1PCMB18 c1pa36af.
         C1PCMB19 c1pa36af. C1PCMB2 c1pa36af. C1PCMB20 c1pa36af.
         C1PCMB21 c1pa36af. C1PCMB22 c1pa36af. C1PCMB3 c1pa36af.
         C1PCMB4 c1pa36af. C1PCMB5 c1pa36af. C1PCMB6 c1pa36af.
         C1PCMB7 c1pa36af. C1PCMB8 c1pa36af. C1PCMB9 c1pa36af.
         C1PCXT1 c1pcxt1f. C1PCXT2 c1pcxt1f. C1PCXT3 c1pcxt1f.
         C1PCXT4 c1pcxt1f. C1PCYB1 c1pidatf. C1PCYB10 c1pidatf.
         C1PCYB11 c1pidatf. C1PCYB12 c1pidatf. C1PCYB13 c1pidatf.
         C1PCYB14 c1pidatf. C1PCYB15 c1pidatf. C1PCYB16 c1pidatf.
         C1PCYB17 c1pidatf. C1PCYB18 c1pidatf. C1PCYB19 c1pidatf.
         C1PCYB2 c1pidatf. C1PCYB20 c1pidatf. C1PCYB21 c1pidatf.
         C1PCYB22 c1pidatf. C1PCYB3 c1pidatf. C1PCYB4 c1pidatf.
         C1PCYB5 c1pidatf. C1PCYB6 c1pidatf. C1PCYB7 c1pidatf.
         C1PCYB8 c1pidatf. C1PCYB9 c1pidatf. C1PD1 c1paa1ff.
         C1PD10 c1paa2af. C1PD11 c1paa2af. C1PD12 c1paa2af.
         C1PD13 c1paa2af. C1PD14 c1pa4baf. C1PD15 c1pd15ff.
         C1PD16 c1paa2af. C1PD17 c1paa2af. C1PD18 c1pa25bf.
         C1PD19M c1pa25if. C1PD19N c1pa4baf. C1PD2 c1pd2fff.
         C1PD20 c1paa2af. C1PD21 c1paa2af. C1PD22 c1pa4baf.
         C1PD3 c1pb32af. C1PD4 c1pd4fff. C1PD5M c1pa36af.
         C1PD5Y c1pidatf. C1PD7 c1paa2af. C1PD8A c1pd8aff.
         C1PD8B c1pd8aff. C1PD9 c1pd9fff. C1PDEPAD c1pdepa_1f.
         C1PDEPAF c1pdepaf. C1PDEPDX c1pdepa_1f. C1PDEPRE c1pdeprf.
         C1PE1 c1paa1ff. C1PE1A1 c1paa2af. C1PE1A2 c1paa2af.
         C1PE1A3 c1paa2af. C1PE1A4 c1paa2af. C1PE1A5 c1paa2af.
         C1PE1A6 c1paa2af. C1PE1A7 c1paa2af. C1PE1BM c1pb2bcf.
         C1PE1BN c1pa25bf. C1PE2 c1paa1ff. C1PE2AM c1pb2bcf.
         C1PE2AN c1pa25bf. C1PE3 c1paa1ff. C1PE3AM c1pb2bcf.
         C1PE3AN c1pa25bf. C1PF1 c1pf1fff. C1PF10 c1pa11ff.
         C1PF11 c1pf6fff. C1PF12 c1paa1ff. C1PF12A c1pf12af.
         C1PF12B c1pf12bf. C1PF2A c1pf2aff. C1PF2B c1pf2aff.
         C1PF2C c1pf2aff. C1PF2_1 c1paa1ff. C1PF2_10 c1paa1ff.
         C1PF2_11 c1paa1ff. C1PF2_12 c1paa1ff. C1PF2_13 c1paa1ff.
         C1PF2_14 c1paa1ff. C1PF2_15 c1paa1ff. C1PF2_17 c1paa1ff.
         C1PF2_18 c1paa1ff. C1PF2_22 c1paa1ff. C1PF2_24 c1paa1ff.
         C1PF2_3 c1paa1ff. C1PF2_30 c1paa1ff. C1PF2_31 c1paa1ff.
         C1PF2_32 c1paa1ff. C1PF2_33 c1paa1ff. C1PF2_34 c1paa1ff.
         C1PF2_35 c1paa1ff. C1PF2_36 c1paa1ff. C1PF2_37 c1paa1ff.
         C1PF2_38 c1paa1ff. C1PF2_39 c1paa1ff. C1PF2_4 c1paa1ff.
         C1PF2_40 c1paa1ff. C1PF2_41 c1paa1ff. C1PF2_42 c1paa1ff.
         C1PF2_43 c1paa1ff. C1PF2_44 c1paa1ff. C1PF2_45 c1paa1ff.
         C1PF2_46 c1paa1ff. C1PF2_47 c1paa1ff. C1PF2_48 c1paa1ff.
         C1PF2_5 c1paa1ff. C1PF2_50 c1paa1ff. C1PF2_51 c1paa1ff.
         C1PF2_52 c1paa1ff. C1PF2_53 c1paa1ff. C1PF2_54 c1paa1ff.
         C1PF2_56 c1paa1ff. C1PF2_57 c1paa1ff. C1PF2_58 c1paa1ff.
         C1PF2_6 c1paa1ff. C1PF2_66 c1paa1ff. C1PF2_69 c1paa1ff.
         C1PF2_7 c1paa1ff. C1PF2_70 c1paa1ff. C1PF2_71 c1paa1ff.
         C1PF2_74 c1paa1ff. C1PF2_9 c1paa1ff. C1PF2_96 c1paa1ff.
         C1PF3 c1pf3fff. C1PF3_1 c1pf2aff. C1PF4 c1pf4fff.
         C1PF5 c1pa11ff. C1PF6 c1pf6fff. C1PF7A c1pf7aff.
         C1PF7B c1pf7aff. C1PF7C c1pf7aff. C1PF7D c1pf7aff.
         C1PF8A c1pf7aff. C1PF8A1 c1pf7aff. C1PF8B c1pf7aff.
         C1PF8C c1pf7aff. C1PF9 c1pf4fff. C1PG1 c1pg1fff.
         C1PG1A c1pg1fff. C1PG2 c1pg2fff. C1PG3 c1pg1fff.
         C1PG4 c1pa1fff. C1PG5 c1pg5fff. C1PG5A c1pg5aff.
         C1PG6 c1pg6fff. C1PG7 c1pg6fff. C1PG8 c1pg6fff.
         C1PG9 c1pg6fff. C1PHHA1 c1pa25bf. C1PHHA2 c1pa25bf.
         C1PHHA3 c1pa25bf. C1PHHA4 c1pa25bf. C1PHHA5 c1pa25bf.
         C1PHHA6 c1pa25bf. C1PHHA7 c1pa25bf. C1PHHA8 c1pa25bf.
         C1PHHA9 c1pa25bf. C1PHRTDX c1phrtdf. C1PHRTRS c1phrtrf.
         C1PIDATE_YR c1pidatf. C1PIND c1pindff. C1PINDMJ c1pindmf.
         C1PINDP c1pindff. C1PINDS c1pindff. C1POCC c1poccff.
         C1POCCP c1poccff. C1POCCS c1poccff. C1POCMAJ c1pocmaf.
         C1POCPMJ c1pocmaf. C1PPANDX c1pdepa_1f. C1PPANIC c1ppanif.
         C1PPARTN c1ppartf. C1PPINMJ c1pindmf. C1PRSEX c1prsexf.
         C1PSAGE c1pa25bf. C1PSINMJ c1pindmf. C1PSOCMJ c1pocmaf.
         C1SA1 c1sa1fff. C1SA10A c1sa10af. C1SA10B c1sa10af.
         C1SA10C c1sa10af. C1SA10D c1sa10af. C1SA10E c1sa10af.
         C1SA10F c1sa10af. C1SA10G c1sa10af. C1SA10H c1sa10af.
         C1SA10I c1sa10af. C1SA10J c1sa10af. C1SA11A c1sa11af.
         C1SA11AA c1sa11af. C1SA11B c1sa11af. C1SA11BB c1sa11af.
         C1SA11C c1sa11af. C1SA11CC c1sa11af. C1SA11D c1sa11af.
         C1SA11DD c1sa11af. C1SA11E c1sa11af. C1SA11EE c1sa11af.
         C1SA11F c1sa11af. C1SA11FF c1sa11af. C1SA11G c1sa11af.
         C1SA11GG c1sa11af. C1SA11H c1sa11af. C1SA11HH c1sa11af.
         C1SA11I c1sa11af. C1SA11II c1sa11af. C1SA11J c1sa11af.
         C1SA11JJ c1sa11af. C1SA11K c1sa11af. C1SA11KK c1sa11af.
         C1SA11L c1sa11af. C1SA11LL c1sa11af. C1SA11M c1sa11af.
         C1SA11MM c1sa11af. C1SA11N c1sa11af. C1SA11NN c1sa11af.
         C1SA11O c1sa11af. C1SA11P c1sa11af. C1SA11Q c1sa11af.
         C1SA11R c1sa11af. C1SA11S c1sa11af. C1SA11T c1sa11af.
         C1SA11U c1sa11af. C1SA11V c1sa11af. C1SA11W c1sa11af.
         C1SA11X c1sa11af. C1SA11Y c1sa11af. C1SA11Z c1sa11af.
         C1SA12A c1sa12af. C1SA12B c1sa12af. C1SA12C c1sa12af.
         C1SA12D c1sa12af. C1SA12E c1sa12af. C1SA12F c1sa12af.
         C1SA12G c1sa12af. C1SA12H c1sa12af. C1SA12I c1sa12af.
         C1SA12J c1sa12af. C1SA12K c1sa12af. C1SA12L c1sa12af.
         C1SA13A c1sa12af. C1SA13B c1sa12af. C1SA13C c1sa12af.
         C1SA13D c1sa12af. C1SA14A c1sa11af. C1SA14B c1sa11af.
         C1SA14C c1sa11af. C1SA14D c1sa11af. C1SA14E c1sa11af.
         C1SA14F c1sa11af. C1SA14G c1sa11af. C1SA14H c1sa11af.
         C1SA14I c1sa11af. C1SA14J c1sa11af. C1SA14K c1sa11af.
         C1SA14L c1sa11af. C1SA14M c1sa11af. C1SA14N c1sa11af.
         C1SA14O c1sa11af. C1SA14P c1sa11af. C1SA15 c1sa11af.
         C1SA16A c1sa16af. C1SA16B c1sa16af. C1SA16C c1sa16af.
         C1SA16D c1sa16af. C1SA16E c1sa16af. C1SA17A c1sa17af.
         C1SA17B c1sa17af. C1SA17C c1sa17af. C1SA17D c1sa17af.
         C1SA17E c1sa17af. C1SA17F c1sa17af. C1SA17G c1sa17af.
         C1SA17H c1sa17af. C1SA17I c1sa17af. C1SA18 c1sa17af.
         C1SA19 c1sa19ff. C1SA2 c1sa1fff. C1SA20A c1sa20af.
         C1SA20B c1sa20af. C1SA20C c1sa20af. C1SA20D c1sa20af.
         C1SA20E c1sa20af. C1SA20F c1sa20af. C1SA20G c1sa20af.
         C1SA20H c1sa20af. C1SA20I c1sa20af. C1SA20J c1sa20af.
         C1SA20K c1sa20af. C1SA20L c1sa20af. C1SA20M c1sa20af.
         C1SA20N c1sa20af. C1SA21 c1sa21ff. C1SA22A c1sa20af.
         C1SA22B c1sa20af. C1SA22C c1sa20af. C1SA22D c1sa20af.
         C1SA22E c1sa20af. C1SA22F c1sa20af. C1SA22G c1sa20af.
         C1SA22H c1sa20af. C1SA22I c1sa20af. C1SA22J c1sa20af.
         C1SA22K c1sa20af. C1SA22L c1sa20af. C1SA22M c1sa20af.
         C1SA23 c1sa23ff. C1SA24A c1sa24af. C1SA24B c1sa24af.
         C1SA24C c1sa24af. C1SA24D c1sa24af. C1SA24E c1sa24af.
         C1SA24F c1sa24af. C1SA24G c1sa24af. C1SA24H c1sa24af.
         C1SA24I c1sa24af. C1SA24J c1sa24af. C1SA25A c1sa11af.
         C1SA25B c1sa11af. C1SA25C c1sa11af. C1SA25D c1sa11af.
         C1SA26A c1sa26af. C1SA26B c1sa26af. C1SA26C c1sa26af.
         C1SA26D c1sa26af. C1SA26E c1sa26af. C1SA26F c1sa26af.
         C1SA27A c1sa26af. C1SA27B c1sa26af. C1SA27C c1sa26af.
         C1SA27D c1sa26af. C1SA27E c1sa26af. C1SA27F c1sa26af.
         C1SA28A c1sa26af. C1SA28B c1sa26af. C1SA28C c1sa26af.
         C1SA28D c1sa26af. C1SA28E c1sa26af. C1SA28F c1sa26af.
         C1SA29A c1sa29af. C1SA29B c1sa29af. C1SA29C c1sa29af.
         C1SA29D c1sa29af. C1SA29E c1sa29af. C1SA29F c1sa29af.
         C1SA3 c1sa1fff. C1SA30A c1sa8aff. C1SA30B c1sa8aff.
         C1SA30C c1sa8aff. C1SA30D c1sa8aff. C1SA30E c1sa8aff.
         C1SA30F c1sa8aff. C1SA30G c1sa8aff. C1SA30H c1sa8aff.
         C1SA30I c1sa8aff. C1SA31 c1sa31ff. C1SA32 c1sa31ff.
         C1SA33A c1sa33af. C1SA33B c1sa31ff. C1SA34 c1sa34ff.
         C1SA35 c1sa35ff. C1SA36 c1sa35ff. C1SA37 c1sa35ff.
         C1SA38 c1sa31ff. C1SA39 c1sa11af. C1SA39AA c1sa17af.
         C1SA39AB c1sa17af. C1SA39AC c1sa17af. C1SA4 c1sa4fff.
         C1SA40 c1sa11af. C1SA41 c1sa41ff. C1SA42 c1sa42ff.
         C1SA43 c1sa42ff. C1SA44A c1sa11af. C1SA44B c1sa11af.
         C1SA44C c1sa11af. C1SA44D c1sa11af. C1SA44E c1sa11af.
         C1SA44F c1sa11af. C1SA44G c1sa11af. C1SA44H c1sa11af.
         C1SA45 c1sa45ff. C1SA46A c1sa11af. C1SA46B c1sa11af.
         C1SA46C c1sa11af. C1SA46D c1sa11af. C1SA46E c1sa11af.
         C1SA46F c1sa11af. C1SA46G c1sa11af. C1SA46H c1sa11af.
         C1SA47 c1sa47ff. C1SA48 c1sa11af. C1SA49A c1sa35ff.
         C1SA49B c1sa35ff. C1SA49C c1sa35ff. C1SA49D c1sa35ff.
         C1SA49E c1sa35ff. C1SA5 c1sa4fff. C1SA50A c1sa35ff.
         C1SA50B c1sa35ff. C1SA50C c1sa35ff. C1SA50D c1sa35ff.
         C1SA51A c1sa11af. C1SA51AY c1sa51af. C1SA51AZ c1sa42ff.
         C1SA51B c1sa11af. C1SA51BY c1sa51af. C1SA51BZ c1sa42ff.
         C1SA51C c1sa11af. C1SA51CY c1sa51af. C1SA51CZ c1sa42ff.
         C1SA51D c1sa11af. C1SA51DY c1sa51af. C1SA51DZ c1sa42ff.
         C1SA51E c1sa11af. C1SA51EY c1sa51af. C1SA51EZ c1sa42ff.
         C1SA51F c1sa11af. C1SA51FY c1sa51af. C1SA51FZ c1sa42ff.
         C1SA51G c1sa11af. C1SA51GY c1sa51af. C1SA51GZ c1sa42ff.
         C1SA51H c1sa11af. C1SA51HY c1sa51af. C1SA51HZ c1sa42ff.
         C1SA51I c1sa11af. C1SA51IY c1sa51af. C1SA51IZ c1sa42ff.
         C1SA51J c1sa11af. C1SA51JY c1sa51af. C1SA51JZ c1sa42ff.
         C1SA51K c1sa11af. C1SA51KY c1sa51af. C1SA51KZ c1sa42ff.
         C1SA52A c1sa52af. C1SA52B c1sa52af. C1SA52C c1sa52af.
         C1SA52D c1sa52af. C1SA52E c1sa52af. C1SA52F c1sa52af.
         C1SA52G c1sa52af. C1SA52H c1sa52af. C1SA52I c1sa52af.
         C1SA52J c1sa52af. C1SA52K c1sa52af. C1SA52L c1sa52af.
         C1SA52M c1sa52af. C1SA52N c1sa52af. C1SA52O c1sa52af.
         C1SA52P c1sa52af. C1SA52Q c1sa52af. C1SA52R c1sa52af.
         C1SA52S c1sa52af. C1SA53A c1sa31ff. C1SA53B c1sa31ff.
         C1SA54A c1sa31ff. C1SA54B c1sa31ff. C1SA55A c1sa31ff.
         C1SA55B c1sa31ff. C1SA56 c1sa31ff. C1SA57A c1sa57af.
         C1SA57B c1sa57af. C1SA57C c1sa57af. C1SA57D c1sa57af.
         C1SA58A c1sa11af. C1SA58B c1sa11af. C1SA58C c1sa11af.
         C1SA58D c1sa11af. C1SA58E c1sa11af. C1SA58F c1sa11af.
         C1SA58G c1sa11af. C1SA58H c1sa11af. C1SA58I c1sa11af.
         C1SA58J c1sa11af. C1SA59 c1sa11af. C1SA60 c1sa60ff.
         C1SA61 c1sa60ff. C1SA62A c1sa17af. C1SA62B c1sa17af.
         C1SA62C c1sa17af. C1SA62D c1sa17af. C1SA62E c1sa17af.
         C1SA63 c1sa11af. C1SA64A c1sa17af. C1SA64B c1sa17af.
         C1SA64C c1sa17af. C1SA64D c1sa17af. C1SA64E c1sa17af.
         C1SA65 c1sa60ff. C1SA66 c1sa60ff. C1SA6A c1sa6aff.
         C1SA6B c1sa6aff. C1SA6C c1sa6aff. C1SA6D c1sa6aff.
         C1SA6E c1sa6aff. C1SA7A c1sa7aff. C1SA7B c1sa7aff.
         C1SA7C c1sa7aff. C1SA7D c1sa7aff. C1SA8A c1sa8aff.
         C1SA8B c1sa8aff. C1SA8C c1sa8aff. C1SA8D c1sa8aff.
         C1SA8E c1sa8aff. C1SA8F c1sa8aff. C1SA9A c1sa9aff.
         C1SA9B c1sa9aff. C1SA9C c1sa9aff. C1SA9D c1sa9aff.
         C1SA9E c1sa9aff. C1SACTIV c1ssatif. C1SAGENC c1shlocf.
         C1SAGREE c1shlocf. C1SALCOH c1salcof. C1SAMPLI c1shlocf.
         C1SB1 c1sb1fff. C1SB10 c1sb10ff. C1SB11 c1sb11ff.
         C1SB12A c1sa17af. C1SB12B c1sa17af. C1SB12C c1sa17af.
         C1SB12D c1sa17af. C1SB12E c1sa17af. C1SB12F c1sa17af.
         C1SB12G c1sa17af. C1SB13A c1sb5aff. C1SB13B c1sa41ff.
         C1SB14 c1sa17af. C1SB15A c1sb5aff. C1SB15B c1sa41ff.
         C1SB16A c1sa17af. C1SB16B c1sa17af. C1SB16C c1sa17af.
         C1SB16D c1sa17af. C1SB17 c1sa17af. C1SB18 c1sa17af.
         C1SB19 c1sa17af. C1SB20A c1sa17af. C1SB20B c1sa17af.
         C1SB20C c1sa17af. C1SB20D c1sa17af. C1SB20E c1sa17af.
         C1SB20F c1sa17af. C1SB20G c1sa17af. C1SB21 c1sb21ff.
         C1SB22A c1sb22af. C1SB22B c1sb22af. C1SB22C c1sb22af.
         C1SB2A c1sa17af. C1SB2B c1sa17af. C1SB2C c1sa17af.
         C1SB2D c1sa17af. C1SB2E c1sa17af. C1SB3 c1sa41ff.
         C1SB4 c1sa17af. C1SB5A c1sb5aff. C1SB5B c1sb5aff.
         C1SB5C c1sa41ff. C1SB6 c1sb6fff. C1SB7 c1sb7fff.
         C1SB8A1 c1sb8a1f. C1SB8A2 c1sa17af. C1SB8A3 c1sa17af.
         C1SB8A4 c1sb8a4f. C1SB8B1 c1sb8a1f. C1SB8B2 c1sa17af.
         C1SB8B3 c1sa17af. C1SB8B4 c1sb8a4f. C1SB8C1 c1sb8a1f.
         C1SB8C2 c1sa17af. C1SB8C3 c1sa17af. C1SB8C4 c1sb8a4f.
         C1SB9 c1sa17af. C1SBADL1 c1shlocf. C1SBADL2 c1shlocf.
         C1SBMI c1ssatif. C1SC1 c1sa11af. C1SC10A c1sb6fff.
         C1SC10B c1sb6fff. C1SC10C c1sb6fff. C1SC10D c1sb6fff.
         C1SC10E c1sb6fff. C1SC10F c1sb6fff. C1SC10G c1sb6fff.
         C1SC10H c1sb6fff. C1SC11 c1sb6fff. C1SC12 c1sb6fff.
         C1SC13 c1sb6fff. C1SC2A c1sa17af. C1SC2B c1sa17af.
         C1SC2C c1sa17af. C1SC2D c1sa17af. C1SC2E c1sa17af.
         C1SC2F c1sa17af. C1SC2G c1sa17af. C1SC2H c1sa17af.
         C1SC2I c1sa17af. C1SC2J c1sa17af. C1SC2K c1sa17af.
         C1SC2L c1sa17af. C1SC2M c1sa17af. C1SC3A c1sb6fff.
         C1SC3B c1sb6fff. C1SC3C c1sb6fff. C1SC3D c1sb6fff.
         C1SC3E c1sb6fff. C1SC3F c1sb6fff. C1SC3G c1sb6fff.
         C1SC3H c1sb6fff. C1SC4 c1sc4fff. C1SC5 c1sc4fff.
         C1SC6 c1sc4fff. C1SC7A c1sc4fff. C1SC7B c1sc4fff.
         C1SC7C c1sc4fff. C1SC7D c1sc4fff. C1SC8A c1sc8aff.
         C1SC8B c1sc8aff. C1SC8C c1sc8aff. C1SC9 c1sa11af.
         C1SCHANG c1shlocf. C1SCHRON c1ssatif. C1SCHROX c1schrof.
         C1SCONS1 c1shlocf. C1SCONS2 c1shlocf. C1SCONST c1shlocf.
         C1SCPCTR c1shlocf. C1SCSCAG c1shlocf. C1SCSCDE c1shlocf.
         C1SCSCSP c1shlocf. C1SCTRL c1shlocf. C1SD1 c1sc4fff.
         C1SD2 c1sb8a4f. C1SD2A c1sd2aff. C1SD3 c1sa41ff.
         C1SD3A c1sb8a4f. C1SD4 c1sc4fff. C1SD5 c1sb8a4f.
         C1SD5A c1sd2aff. C1SD6 c1sa41ff. C1SD6A c1sb8a4f.
         C1SDAYDI c1ssatif. C1SDENIA c1ssatif. C1SDIREC c1shlocf.
         C1SDISEN c1ssatif. C1SDYSPN c1shlocf. C1SE10A c1se10af.
         C1SE10B c1se10af. C1SE10C c1se10af. C1SE10D c1se10af.
         C1SE10E c1se10af. C1SE10F c1se10af. C1SE11A c1sa11af.
         C1SE11A1 c1se11af. C1SE11A11 c1sb5aff. C1SE11A12 c1sb5aff.
         C1SE11A3 c1se11a_1f. C1SE11A4 c1se11a_1f. C1SE11AR1 c1sb5aff.
         C1SE11AR2 c1sb5aff. C1SE11B c1sa11af. C1SE11B1 c1se11af.
         C1SE11B11 c1sb5aff. C1SE11B12 c1sb5aff. C1SE11B13 c1sb5aff.
         C1SE11B3 c1se11a_1f. C1SE11B4 c1se11a_1f. C1SE11BR1 c1sb5aff.
         C1SE11BR2 c1sb5aff. C1SE11C c1sa11af. C1SE11C1 c1se11af.
         C1SE11C11 c1sb5aff. C1SE11C12 c1sb5aff. C1SE11C13 c1sb5aff.
         C1SE11C3 c1se11a_1f. C1SE11C4 c1se11a_1f. C1SE11CR1 c1sb5aff.
         C1SE11CR2 c1sb5aff. C1SE11D c1sa11af. C1SE11D1 c1se11af.
         C1SE11D11 c1sb5aff. C1SE11D12 c1sb5aff. C1SE11D13 c1sb5aff.
         C1SE11D14 c1sb5aff. C1SE11D15 c1sb5aff. C1SE11D16 c1sb5aff.
         C1SE11D3 c1se11a_1f. C1SE11D4 c1se11a_1f. C1SE11DR1 c1sb5aff.
         C1SE11DR2 c1sb5aff. C1SE11E c1sa11af. C1SE11E1 c1se11af.
         C1SE11E3 c1se11a_1f. C1SE11E4 c1se11a_1f. C1SE11ER1 c1sb5aff.
         C1SE11ER2 c1sb5aff. C1SE11F c1sa11af. C1SE11F1 c1se11af.
         C1SE11F11 c1sb5aff. C1SE11F12 c1sb5aff. C1SE11F3 c1se11a_1f.
         C1SE11F4 c1se11a_1f. C1SE11FR1 c1sb5aff. C1SE11FR2 c1sb5aff.
         C1SE11G c1sa11af. C1SE11G1 c1se11af. C1SE11G11 c1sb5aff.
         C1SE11G12 c1sb5aff. C1SE11G13 c1sb5aff. C1SE11G14 c1sb5aff.
         C1SE11G3 c1se11a_1f. C1SE11G4 c1se11a_1f. C1SE11GR1 c1sb5aff.
         C1SE11GR2 c1sb5aff. C1SE12A c1sa11af. C1SE12A1 c1se11af.
         C1SE12A11 c1sb5aff. C1SE12A12 c1sb5aff. C1SE12A3 c1se11a_1f.
         C1SE12A4 c1se11a_1f. C1SE12AR1 c1sb5aff. C1SE12AR2 c1sb5aff.
         C1SE12B c1sa11af. C1SE12B1 c1se11af. C1SE12B11 c1sb5aff.
         C1SE12B12 c1sb5aff. C1SE12B13 c1sb5aff. C1SE12B14 c1sb5aff.
         C1SE12B15 c1sb5aff. C1SE12B16 c1sb5aff. C1SE12B3 c1se11a_1f.
         C1SE12B4 c1se11a_1f. C1SE12BR1 c1sb5aff. C1SE12BR2 c1sb5aff.
         C1SE12C c1sa11af. C1SE12C1 c1se11af. C1SE12C11 c1sb5aff.
         C1SE12C12 c1sb5aff. C1SE12C13 c1sb5aff. C1SE12C14 c1sb5aff.
         C1SE12C15 c1sb5aff. C1SE12C3 c1se11a_1f. C1SE12C4 c1se11a_1f.
         C1SE12CR1 c1sb5aff. C1SE12CR2 c1sb5aff. C1SE12D c1sa11af.
         C1SE12D1 c1se11af. C1SE12D11 c1sb5aff. C1SE12D12 c1sb5aff.
         C1SE12D13 c1sb5aff. C1SE12D3 c1se11a_1f. C1SE12D4 c1se11a_1f.
         C1SE12DR1 c1sb5aff. C1SE12DR2 c1sb5aff. C1SE12E c1sa11af.
         C1SE12E1 c1se11af. C1SE12E11 c1sb5aff. C1SE12E12 c1sb5aff.
         C1SE12E13 c1sb5aff. C1SE12E14 c1sb5aff. C1SE12E3 c1se11a_1f.
         C1SE12E4 c1se11a_1f. C1SE12ER1 c1sb5aff. C1SE12ER2 c1sb5aff.
         C1SE12F c1sa11af. C1SE12F1 c1se11af. C1SE12F11 c1sb5aff.
         C1SE12F12 c1sb5aff. C1SE12F13 c1sb5aff. C1SE12F14 c1sb5aff.
         C1SE12F3 c1se11a_1f. C1SE12F4 c1se11a_1f. C1SE12FR1 c1sb5aff.
         C1SE12FR2 c1sb5aff. C1SE12G c1sa11af. C1SE12G1 c1se11af.
         C1SE12G11 c1sb5aff. C1SE12G12 c1sb5aff. C1SE12G3 c1se11a_1f.
         C1SE12G4 c1se11a_1f. C1SE12GR1 c1sb5aff. C1SE12GR2 c1sb5aff.
         C1SE12H c1sa11af. C1SE12H1 c1se11af. C1SE12H11 c1sb5aff.
         C1SE12H12 c1sb5aff. C1SE12H13 c1sb5aff. C1SE12H14 c1sb5aff.
         C1SE12H15 c1sb5aff. C1SE12H16 c1sb5aff. C1SE12H3 c1se11a_1f.
         C1SE12H4 c1se11a_1f. C1SE12HR1 c1sb5aff. C1SE12HR2 c1sb5aff.
         C1SE12I c1sa11af. C1SE12I1 c1se11af. C1SE12I11 c1sb5aff.
         C1SE12I12 c1sb5aff. C1SE12I13 c1sb5aff. C1SE12I14 c1sb5aff.
         C1SE12I15 c1sb5aff. C1SE12I3 c1se11a_1f. C1SE12I4 c1se11a_1f.
         C1SE12J c1sa11af. C1SE12J1 c1se11af. C1SE12J11 c1sb5aff.
         C1SE12J12 c1sb5aff. C1SE12J13 c1sb5aff. C1SE12J14 c1sb5aff.
         C1SE12J15 c1sb5aff. C1SE12J3 c1se11a_1f. C1SE12J4 c1se11a_1f.
         C1SE12JR1 c1sb5aff. C1SE12JR2 c1sb5aff. C1SE12K c1sa11af.
         C1SE12K1 c1se11af. C1SE12K11 c1sb5aff. C1SE12K12 c1sb5aff.
         C1SE12K3 c1se11a_1f. C1SE12K4 c1se11a_1f. C1SE12L c1sa11af.
         C1SE12L1 c1se11af. C1SE12L11 c1sb5aff. C1SE12L12 c1sb5aff.
         C1SE12L13 c1sb5aff. C1SE12L14 c1sb5aff. C1SE12L15 c1sb5aff.
         C1SE12L16 c1sb5aff. C1SE12L3 c1se11a_1f. C1SE12L4 c1se11a_1f.
         C1SE12LR1 c1sb5aff. C1SE12LR2 c1sb5aff. C1SE12M c1sa11af.
         C1SE12M1 c1se11af. C1SE12M11 c1sb5aff. C1SE12M12 c1sb5aff.
         C1SE12M13 c1sb5aff. C1SE12M14 c1sb5aff. C1SE12M15 c1sb5aff.
         C1SE12M3 c1se11a_1f. C1SE12M4 c1se11a_1f. C1SE12MR1 c1sb5aff.
         C1SE12MR2 c1sb5aff. C1SE12N c1sa11af. C1SE12N1 c1se11af.
         C1SE12N11 c1sb5aff. C1SE12N12 c1sb5aff. C1SE12N3 c1se11a_1f.
         C1SE12N4 c1se11a_1f. C1SE12NR1 c1sb5aff. C1SE12NR2 c1sb5aff.
         C1SE12O c1sa11af. C1SE12O1 c1se11af. C1SE12O11 c1sb5aff.
         C1SE12O12 c1sb5aff. C1SE12O13 c1sb5aff. C1SE12O14 c1sb5aff.
         C1SE12O3 c1se11a_1f. C1SE12O4 c1se11a_1f. C1SE12OR1 c1sb5aff.
         C1SE12OR2 c1sb5aff. C1SE12P c1sa11af. C1SE12P1 c1se11af.
         C1SE12P11 c1sb5aff. C1SE12P12 c1sb5aff. C1SE12P13 c1sb5aff.
         C1SE12P3 c1se11a_1f. C1SE12P4 c1se11a_1f. C1SE12PR1 c1sb5aff.
         C1SE12PR2 c1sb5aff. C1SE12Q c1sa11af. C1SE12Q1 c1se11af.
         C1SE12Q11 c1sb5aff. C1SE12Q12 c1sb5aff. C1SE12Q13 c1sb5aff.
         C1SE12Q14 c1sb5aff. C1SE12Q3 c1se11a_1f. C1SE12Q4 c1se11a_1f.
         C1SE12QR1 c1sb5aff. C1SE12QR2 c1sb5aff. C1SE12R c1sa11af.
         C1SE12R1 c1se11af. C1SE12R11 c1sb5aff. C1SE12R12 c1sb5aff.
         C1SE12R3 c1se11a_1f. C1SE12R4 c1se11a_1f. C1SE12RR1 c1sb5aff.
         C1SE12RR2 c1sb5aff. C1SE12S c1sa11af. C1SE12S1 c1se11af.
         C1SE12S11 c1sb5aff. C1SE12S12 c1sb5aff. C1SE12S3 c1se11a_1f.
         C1SE12S4 c1se11a_1f. C1SE12SR1 c1sb5aff. C1SE12SR2 c1sb5aff.
         C1SE12T c1sa11af. C1SE12T1 c1se11af. C1SE12T11 c1sb5aff.
         C1SE12T12 c1sb5aff. C1SE12T13 c1sb5aff. C1SE12T14 c1sb5aff.
         C1SE12T15 c1sb5aff. C1SE12T16 c1sb5aff. C1SE12T3 c1se11a_1f.
         C1SE12T4 c1se11a_1f. C1SE12TR1 c1sb5aff. C1SE12TR2 c1sb5aff.
         C1SE13A c1sa8aff. C1SE13B c1sa8aff. C1SE13C c1sa8aff.
         C1SE13D c1sa8aff. C1SE13E c1sa8aff. C1SE13F c1sa8aff.
         C1SE13G c1sa8aff. C1SE13H c1sa8aff. C1SE13I c1sa8aff.
         C1SE13J c1sa8aff. C1SE13K c1sa8aff. C1SE14A c1sa24af.
         C1SE14AA c1sa24af. C1SE14B c1sa24af. C1SE14BB c1sa24af.
         C1SE14C c1sa24af. C1SE14CC c1sa24af. C1SE14D c1sa24af.
         C1SE14DD c1sa24af. C1SE14E c1sa24af. C1SE14EE c1sa24af.
         C1SE14F c1sa24af. C1SE14FF c1sa24af. C1SE14G c1sa24af.
         C1SE14GG c1sa24af. C1SE14H c1sa24af. C1SE14HH c1sa24af.
         C1SE14I c1sa24af. C1SE14II c1sa24af. C1SE14J c1sa24af.
         C1SE14JJ c1sa24af. C1SE14K c1sa24af. C1SE14KK c1sa24af.
         C1SE14L c1sa24af. C1SE14LL c1sa24af. C1SE14M c1sa24af.
         C1SE14MM c1sa24af. C1SE14N c1sa24af. C1SE14O c1sa24af.
         C1SE14P c1sa24af. C1SE14Q c1sa24af. C1SE14R c1sa24af.
         C1SE14S c1sa24af. C1SE14T c1sa24af. C1SE14U c1sa24af.
         C1SE14V c1sa24af. C1SE14W c1sa24af. C1SE14X c1sa24af.
         C1SE14Y c1sa24af. C1SE14Z c1sa24af. C1SE15A c1se15af.
         C1SE15B c1se15af. C1SE15C c1se15af. C1SE15D c1se15af.
         C1SE15E c1se15af. C1SE15F c1se15af. C1SE15G c1se15af.
         C1SE15H c1se15af. C1SE15I c1se15af. C1SE15J c1se15af.
         C1SE15K c1se15af. C1SE15L c1se15af. C1SE15M c1se15af.
         C1SE15N c1se15af. C1SE15O c1se15af. C1SE15P c1se15af.
         C1SE15Q c1se15af. C1SE15R c1se15af. C1SE15S c1se15af.
         C1SE15T c1se15af. C1SE15U c1se15af. C1SE15V c1se15af.
         C1SE15W c1se15af. C1SE15X c1se15af. C1SE15Y c1se15af.
         C1SE15Z c1se15af. C1SE16 c1sa35ff. C1SE17 c1sa35ff.
         C1SE18 c1sa35ff. C1SE19 c1sa35ff. C1SE1A c1sa8aff.
         C1SE1AA c1sa8aff. C1SE1B c1sa8aff. C1SE1BB c1sa8aff.
         C1SE1C c1sa8aff. C1SE1CC c1sa8aff. C1SE1D c1sa8aff.
         C1SE1DD c1sa8aff. C1SE1E c1sa8aff. C1SE1EE c1sa8aff.
         C1SE1F c1sa8aff. C1SE1FF c1sa8aff. C1SE1G c1sa8aff.
         C1SE1GG c1sa8aff. C1SE1H c1sa8aff. C1SE1HH c1sa8aff.
         C1SE1I c1sa8aff. C1SE1II c1sa8aff. C1SE1J c1sa8aff.
         C1SE1JJ c1sa8aff. C1SE1K c1sa8aff. C1SE1KK c1sa8aff.
         C1SE1L c1sa8aff. C1SE1LL c1sa8aff. C1SE1M c1sa8aff.
         C1SE1MM c1sa8aff. C1SE1N c1sa8aff. C1SE1NN c1sa8aff.
         C1SE1O c1sa8aff. C1SE1OO c1sa8aff. C1SE1P c1sa8aff.
         C1SE1PP c1sa8aff. C1SE1Q c1sa8aff. C1SE1QQ c1sa8aff.
         C1SE1R c1sa8aff. C1SE1S c1sa8aff. C1SE1T c1sa8aff.
         C1SE1U c1sa8aff. C1SE1V c1sa8aff. C1SE1W c1sa8aff.
         C1SE1X c1sa8aff. C1SE1Y c1sa8aff. C1SE1Z c1sa8aff.
         C1SE20 c1sa35ff. C1SE21 c1sa35ff. C1SE2A c1sa11af.
         C1SE2B c1sa11af. C1SE2C c1sa11af. C1SE2D c1sa11af.
         C1SE2E c1sa11af. C1SE2F c1sa11af. C1SE2G c1sa11af.
         C1SE2H c1sa11af. C1SE2I c1sa11af. C1SE2J c1sa11af.
         C1SE2K c1sa11af. C1SE2L c1sa11af. C1SE2M c1sa11af.
         C1SE2N c1sa11af. C1SE2O c1sa11af. C1SE2P c1sa11af.
         C1SE2Q c1sa11af. C1SE3 c1se3fff. C1SE4A c1sa8aff.
         C1SE4B c1sa8aff. C1SE4C c1sa8aff. C1SE4D c1sa8aff.
         C1SE4E c1sa8aff. C1SE4F c1sa8aff. C1SE4G c1sa8aff.
         C1SE4H c1sa8aff. C1SE4I c1sa8aff. C1SE4J c1sa8aff.
         C1SE4K c1sa8aff. C1SE4L c1sa8aff. C1SE4M c1sa8aff.
         C1SE4N c1sa8aff. C1SE4O c1sa8aff. C1SE4P c1sa8aff.
         C1SE4Q c1sa8aff. C1SE4R c1sa8aff. C1SE4S c1sa8aff.
         C1SE4T c1sa8aff. C1SE4U c1sa8aff. C1SE4V c1sa8aff.
         C1SE4W c1sa8aff. C1SE4X c1sa8aff. C1SE4Y c1sa8aff.
         C1SE5A c1se5aff. C1SE5B c1se5aff. C1SE5C c1se5aff.
         C1SE5D c1se5aff. C1SE5E c1se5aff. C1SE6A c1sa24af.
         C1SE6AA c1sa24af. C1SE6B c1sa24af. C1SE6BB c1sa24af.
         C1SE6C c1sa24af. C1SE6CC c1sa24af. C1SE6D c1sa24af.
         C1SE6DD c1sa24af. C1SE6E c1sa24af. C1SE6EE c1sa24af.
         C1SE6F c1sa24af. C1SE6G c1sa24af. C1SE6H c1sa24af.
         C1SE6I c1sa24af. C1SE6J c1sa24af. C1SE6K c1sa24af.
         C1SE6L c1sa24af. C1SE6M c1sa24af. C1SE6N c1sa24af.
         C1SE6O c1sa24af. C1SE6P c1sa24af. C1SE6Q c1sa24af.
         C1SE6R c1sa24af. C1SE6S c1sa24af. C1SE6T c1sa24af.
         C1SE6U c1sa24af. C1SE6V c1sa24af. C1SE6W c1sa24af.
         C1SE6X c1sa24af. C1SE6Y c1sa24af. C1SE6Z c1sa24af.
         C1SE7A c1se7aff. C1SE7AA c1se7aff. C1SE7B c1se7aff.
         C1SE7BB c1se7aff. C1SE7C c1se7aff. C1SE7CC c1se7aff.
         C1SE7D c1se7aff. C1SE7DD c1se7aff. C1SE7E c1se7aff.
         C1SE7EE c1se7aff. C1SE7F c1se7aff. C1SE7FF c1se7aff.
         C1SE7G c1se7aff. C1SE7GG c1se7aff. C1SE7H c1se7aff.
         C1SE7I c1se7aff. C1SE7J c1se7aff. C1SE7K c1se7aff.
         C1SE7L c1se7aff. C1SE7M c1se7aff. C1SE7N c1se7aff.
         C1SE7O c1se7aff. C1SE7P c1se7aff. C1SE7Q c1se7aff.
         C1SE7R c1se7aff. C1SE7S c1se7aff. C1SE7T c1se7aff.
         C1SE7U c1se7aff. C1SE7V c1se7aff. C1SE7W c1se7aff.
         C1SE7X c1se7aff. C1SE7Y c1se7aff. C1SE7Z c1se7aff.
         C1SE8 c1se8fff. C1SE8A c1se8aff. C1SE9 c1se9fff.
         C1SE9A c1se8aff. C1SEARN c1srincf. C1SEMCOP c1ssatif.
         C1SESTEE c1ssatif. C1SEXTRA c1shlocf. C1SF1 c1sa1fff.
         C1SF10 c1sb8a4f. C1SF11 c1sa17af. C1SF12A c1sb8a4f.
         C1SF12B c1sf12bf. C1SF13A c1sb5aff. C1SF13B c1sa41ff.
         C1SF14 c1sf14ff. C1SF15 c1sa17af. C1SF16A c1sa17af.
         C1SF16B c1sa17af. C1SF16C c1sa17af. C1SF16D c1sa17af.
         C1SF16E c1sa17af. C1SF16F c1sa17af. C1SF16G c1sa17af.
         C1SF16H c1sa17af. C1SF16I c1sa17af. C1SF16J c1sa17af.
         C1SF17A c1sf17af. C1SF17B c1sf17af. C1SF17C c1sf17af.
         C1SF17D c1sf17af. C1SF17E c1sf17af. C1SF17F c1sf17af.
         C1SF17G c1sf17af. C1SF17H c1sf17af. C1SF17I c1sf17af.
         C1SF17J c1sf17af. C1SF18 c1sa17af. C1SF19A c1sf19af.
         C1SF19B c1sf19af. C1SF19C c1sf19af. C1SF19D c1sf19af.
         C1SF19E c1sf19af. C1SF19F c1sf19af. C1SF19G c1sf19af.
         C1SF19H c1sf19af. C1SF19I c1sf19af. C1SF19J c1sf19af.
         C1SF19K c1sf19af. C1SF19L c1sf19af. C1SF19M c1sf19af.
         C1SF19N c1sf19af. C1SF2 c1sa1fff. C1SF20 c1sb22af.
         C1SF21 c1sa17af. C1SF22 c1sb8a4f. C1SF23 c1sf23ff.
         C1SF24 c1sa17af. C1SF25A c1sb5aff. C1SF25B c1sa41ff.
         C1SF26 c1sf26ff. C1SF27A c1sf27af. C1SF27B c1sf27af.
         C1SF27C c1sf27af. C1SF27D c1sf27af. C1SF28A c1sb5aff.
         C1SF28B c1sb5aff. C1SF28C c1sf28cf. C1SF29A c1sb5aff.
         C1SF29B c1sb5aff. C1SF29C c1sf28cf. C1SF3 c1sa1fff.
         C1SF30A c1sb5aff. C1SF30B c1sb5aff. C1SF31 c1sa17af.
         C1SF32 c1sa17af. C1SF33 c1sd2aff. C1SF34 c1sf34ff.
         C1SF35 c1sf34ff. C1SF36A c1sf36af. C1SF36B c1sf36af.
         C1SF36C c1sf36af. C1SF36D c1sf36af. C1SF36E c1sf36af.
         C1SF36F c1sf36af. C1SF36G c1sf36af. C1SF36H c1sf36af.
         C1SF36I c1sf36af. C1SF36J c1sf36af. C1SF36K c1sf36af.
         C1SF37A c1sf37af. C1SF37B c1sf37af. C1SF37C c1sf37af.
         C1SF37D c1sf37af. C1SF37E c1sf37af. C1SF38A c1sf38af.
         C1SF38B c1sf38af. C1SF38C c1sf38af. C1SF38D c1sf38af.
         C1SF38E c1sf38af. C1SF38F c1sf38af. C1SF39A c1sb22af.
         C1SF39B c1sb22af. C1SF39C c1sb22af. C1SF39D c1sb22af.
         C1SF39E c1sb22af. C1SF39F c1sb22af. C1SF4 c1sa1fff.
         C1SF40A c1sf36af. C1SF40B c1sf36af. C1SF40C c1sf36af.
         C1SF40D c1sf36af. C1SF40E c1sf36af. C1SF40F c1sf36af.
         C1SF40G c1sf36af. C1SF40H c1sf36af. C1SF40I c1sf36af.
         C1SF40J c1sf36af. C1SF40K c1sf36af. C1SF40L c1sf36af.
         C1SF40M c1sf36af. C1SF40N c1sf36af. C1SF40O c1sf36af.
         C1SF40P c1sf36af. C1SF41A c1sb5aff. C1SF41B c1sb5aff.
         C1SF41C c1sb5aff. C1SF41D c1sb5aff. C1SF42A c1sf36af.
         C1SF42B c1sf36af. C1SF42C c1sf36af. C1SF42D c1sf36af.
         C1SF43A c1sf43af. C1SF43B c1sf43af. C1SF43C c1sf43af.
         C1SF43D c1sf43af. C1SF44A c1sa24af. C1SF44B c1sa24af.
         C1SF44C c1sa24af. C1SF45A c1sf45af. C1SF45B c1sf45af.
         C1SF45C c1sf45af. C1SF5 c1sa4fff. C1SF6 c1sa4fff.
         C1SF7 c1sa11af. C1SF8 c1sb8a4f. C1SF9 c1sb8a4f.
         C1SFAM c1shlocf. C1SFAMSO c1shlocf. C1SFDCOP c1ssatif.
         C1SFDSNE c1shlocf. C1SFDSOL c1shlocf. C1SFDSPO c1shlocf.
         C1SFORSG c1sforsf. C1SG1 c1sa1fff. C1SG10 c1sg10ff.
         C1SG11A c1sg11af. C1SG11B c1sg11af. C1SG11C c1sg11af.
         C1SG11D c1sg11af. C1SG12 c1sg12ff. C1SG13 c1sa11af.
         C1SG14A c1sg11af. C1SG14B c1sg11af. C1SG14C c1sg11af.
         C1SG14D c1sg11af. C1SG15 c1sg15ff. C1SG16 c1sa11af.
         C1SG17A c1sg11af. C1SG17B c1sg11af. C1SG17C c1sg11af.
         C1SG17D c1sg11af. C1SG18 c1sg15ff. C1SG19 c1sa11af.
         C1SG2 c1sa1fff. C1SG20A c1sa17af. C1SG20B c1sa17af.
         C1SG20C c1sa17af. C1SG20D c1sa17af. C1SG20E c1sa17af.
         C1SG20F c1sa17af. C1SG20G c1sa17af. C1SG20H c1sa17af.
         C1SG20I c1sa17af. C1SG20J c1sa17af. C1SG21 c1sg21ff.
         C1SG22 c1sg22ff. C1SG23 c1sg22ff. C1SG24 c1sg22ff.
         C1SG25 c1sg25ff. C1SG25A c1sg25af. C1SG25B c1sg25af.
         C1SG26 c1sc4fff. C1SG27 c1sg27ff. C1SG28 c1sc4fff.
         C1SG29 c1sg27ff. C1SG3 c1sa1fff. C1SG30 c1sc4fff.
         C1SG31 c1sg27ff. C1SG32 c1sg32ff. C1SG33 c1sg27ff.
         C1SG34 c1sa11af. C1SG35 c1sg35ff. C1SG36 c1sg25af.
         C1SG37A c1sa35ff. C1SG37B c1sa35ff. C1SG37C c1sa35ff.
         C1SG37D c1sa35ff. C1SG38 c1sg38ff. C1SG39 c1sg39ff.
         C1SG4 c1sa1fff. C1SG40 c1sg40ff. C1SG41 c1sa11af.
         C1SG42 c1sg42ff. C1SG43 c1sg27ff. C1SG44 c1sa11af.
         C1SG45 c1sg25af. C1SG46 c1sa11af. C1SG47 c1sg39ff.
         C1SG48A c1sa35ff. C1SG48B c1sa35ff. C1SG48C c1sa35ff.
         C1SG48D c1sa35ff. C1SG48E c1sa35ff. C1SG49 c1sa11af.
         C1SG5 c1sa4fff. C1SG50 c1sa41ff. C1SG51 c1sg25af.
         C1SG52 c1sa11af. C1SG53 c1sg39ff. C1SG54 c1sa11af.
         C1SG55 c1sg25af. C1SG56 c1sa11af. C1SG57 c1sg25af.
         C1SG58 c1sa11af. C1SG59 c1sg59ff. C1SG59A c1sg25af.
         C1SG59B c1sg27ff. C1SG6 c1sa4fff. C1SG60 c1sg59ff.
         C1SG60A c1sg25af. C1SG60B c1sg27ff. C1SG61A c1sg27ff.
         C1SG61B c1sg22ff. C1SG61C c1sg22ff. C1SG61D c1sg22ff.
         C1SG61E c1sg61ef. C1SG61F c1sg61ef. C1SG61G c1sg61gf.
         C1SG61H c1sg61ef. C1SG61I c1sg61ef. C1SG62 c1sg62ff.
         C1SG7 c1sg7fff. C1SG8 c1sg8fff. C1SG9 c1sg9fff.
         C1SGENER c1ssatif. C1SH1 c1sa1fff. C1SH10A c1sa35ff.
         C1SH10B c1sa35ff. C1SH10C c1sa35ff. C1SH10D c1sa35ff.
         C1SH10E c1sa35ff. C1SH10F c1sa35ff. C1SH11A c1sa35ff.
         C1SH11B c1sa35ff. C1SH11C c1sa35ff. C1SH11D c1sa35ff.
         C1SH11E c1sa35ff. C1SH12A c1sa35ff. C1SH12B c1sa35ff.
         C1SH12C c1sa35ff. C1SH12D c1sa35ff. C1SH12E c1sa35ff.
         C1SH12F c1sa35ff. C1SH12G c1sa35ff. C1SH12H c1sa35ff.
         C1SH13A c1sg61gf. C1SH13B c1sg61gf. C1SH13C c1sg61ef.
         C1SH13D c1sg61ef. C1SH13E c1sg61gf. C1SH13F c1sg61gf.
         C1SH13G c1sg61gf. C1SH13H c1sg61gf. C1SH14A c1sg61gf.
         C1SH14B c1sg61gf. C1SH14C c1sg61gf. C1SH14D c1sg61gf.
         C1SH14E c1sg61gf. C1SH14F c1sg61gf. C1SH14G c1sg61ef.
         C1SH15A c1sh15af. C1SH15B c1sh15af. C1SH15C c1sh15af.
         C1SH15D c1sh15af. C1SH16A c1sa8aff. C1SH16B c1sa8aff.
         C1SH16C c1sa8aff. C1SH16D c1sa8aff. C1SH16E c1sa8aff.
         C1SH16F c1sa8aff. C1SH16G c1sa8aff. C1SH16H c1sa8aff.
         C1SH16I c1sa8aff. C1SH16J c1sa8aff. C1SH16K c1sa8aff.
         C1SH16L c1sa8aff. C1SH16M c1sa8aff. C1SH16N c1sa8aff.
         C1SH16O c1sa8aff. C1SH16P c1sa8aff. C1SH16Q c1sa8aff.
         C1SH16R c1sa8aff. C1SH16S c1sa8aff. C1SH16T c1sa8aff.
         C1SH2 c1sa1fff. C1SH3 c1sa1fff. C1SH4 c1sa4fff.
         C1SH5 c1sa4fff. C1SH6A c1sa24af. C1SH6B c1sa24af.
         C1SH6C c1sa24af. C1SH6D c1sa24af. C1SH6E c1sa24af.
         C1SH6F c1sa24af. C1SH7A c1sa35ff. C1SH7B c1sa35ff.
         C1SH7C c1sa35ff. C1SH7D c1sa35ff. C1SH8A c1sa31ff.
         C1SH8B c1sa31ff. C1SH8C c1sa31ff. C1SH9A c1sa35ff.
         C1SH9B c1sa35ff. C1SH9C c1sa35ff. C1SH9D c1sa35ff.
         C1SH9E c1sa35ff. C1SH9F c1sa35ff. C1SHINC c1ssincf.
         C1SHLOCO c1shlocf. C1SHLOCS c1shlocf. C1SHOMET c1shomef.
         C1SI1 c1si1fff. C1SI2 c1si1fff. C1SI3 c1sa31ff.
         C1SI4 c1sa31ff. C1SI5 c1si5fff. C1SI6A c1sa24af.
         C1SI6B c1sa24af. C1SI6C c1sa24af. C1SI6D c1sa24af.
         C1SI6E c1sa24af. C1SI6F c1sa24af. C1SI6G c1sa24af.
         C1SI6H c1sa24af. C1SI6I c1sa24af. C1SI6J c1sa24af.
         C1SI6K c1sa24af. C1SI6L c1sa24af. C1SI7 c1si7fff.
         C1SIADL c1shlocf. C1SINDEP c1shlocf. C1SINSGH c1shlocf.
         C1SINTAG c1shlocf. C1SINTER c1shlocf. C1SJ1 c1sj1fff.
         C1SJ10 c1sj9fff. C1SJ11CA c1sh15af. C1SJ11CB c1sh15af.
         C1SJ11CC c1sh15af. C1SJ11CD c1sh15af. C1SJ11CE c1sh15af.
         C1SJ11CF c1sh15af. C1SJ11CG c1sh15af. C1SJ11CH c1sh15af.
         C1SJ11CI c1sh15af. C1SJ11CJ c1sh15af. C1SJ11CK c1sh15af.
         C1SJ11CL c1sh15af. C1SJ11CM c1sh15af. C1SJ11CN c1sh15af.
         C1SJ11CO c1sh15af. C1SJ11PA c1sh15af. C1SJ11PB c1sh15af.
         C1SJ11PC c1sh15af. C1SJ11PD c1sh15af. C1SJ11PE c1sh15af.
         C1SJ11PF c1sh15af. C1SJ11PG c1sh15af. C1SJ11PH c1sh15af.
         C1SJ11PI c1sh15af. C1SJ11PJ c1sh15af. C1SJ11PK c1sh15af.
         C1SJ11PL c1sh15af. C1SJ11PM c1sh15af. C1SJ11PN c1sh15af.
         C1SJ11PO c1sh15af. C1SJ11SA c1sh15af. C1SJ11SB c1sh15af.
         C1SJ11SC c1sh15af. C1SJ11SD c1sh15af. C1SJ11SE c1sh15af.
         C1SJ11SF c1sh15af. C1SJ11SG c1sh15af. C1SJ11SH c1sh15af.
         C1SJ11SI c1sh15af. C1SJ11SJ c1sh15af. C1SJ11SK c1sh15af.
         C1SJ11SL c1sh15af. C1SJ11SM c1sh15af. C1SJ11SN c1sh15af.
         C1SJ11SO c1sh15af. C1SJ2 c1sj1fff. C1SJ3 c1sa35ff.
         C1SJ4A c1sa24af. C1SJ4B c1sa24af. C1SJ4C c1sa24af.
         C1SJ4D c1sa24af. C1SJ4E c1sa24af. C1SJ4F c1sa24af.
         C1SJ4G c1sj4gff. C1SJ4H c1sj4gff. C1SJ4I c1sj4gff.
         C1SJ4J c1sj4gff. C1SJ5 c1sj1fff. C1SJ6 c1sj1fff.
         C1SJ7 c1sa35ff. C1SJ8A c1sa24af. C1SJ8B c1sa24af.
         C1SJ8C c1sa24af. C1SJ8D c1sa24af. C1SJ8E c1sj4gff.
         C1SJ8F c1sj4gff. C1SJ8G c1sj4gff. C1SJ8H c1sj4gff.
         C1SJ9 c1sj9fff. C1SJCCS c1sjcsdf. C1SJCDA c1sjcsdf.
         C1SJCDS c1sjcsdf. C1SJCSD c1sjcsdf. C1SJCSS c1sjcsdf.
         C1SJOBDI c1sjcsdf. C1SK1 c1sa11af. C1SK10 c1sb5aff.
         C1SK11 c1sb5aff. C1SK12 c1sk12ff. C1SK13 c1sk12ff.
         C1SK2 c1sk2fff. C1SK3 c1sk3fff. C1SK4 c1sk2fff.
         C1SK5 c1sk5fff. C1SK6 c1sk5fff. C1SK7A c1sk7aff.
         C1SK7B c1sk7aff. C1SK7C c1sk7aff. C1SK7D c1sk7aff.
         C1SK7E c1sk7aff. C1SK7F c1sk7aff. C1SK8A1 c1sa17af.
         C1SK8A2 c1sk8a2f. C1SK8B1 c1sa17af. C1SK8B2 c1sk8a2f.
         C1SK8C1 c1sa17af. C1SK8C2 c1sk8a2f. C1SK8D1 c1sa17af.
         C1SK8D2 c1sk8a2f. C1SK9 c1sa17af. C1SKINNE c1shlocf.
         C1SKINPO c1shlocf. C1SL1 c1sa11af. C1SL10A c1sb22af.
         C1SL10B c1sb22af. C1SL10C c1sb22af. C1SL11 c1sl11ff.
         C1SL12A c1sb22af. C1SL12B c1sb22af. C1SL12C c1sb22af.
         C1SL12D c1sb22af. C1SL12E c1sb22af. C1SL12F c1sb22af.
         C1SL12G c1sb22af. C1SL12H c1sb22af. C1SL12I c1sb22af.
         C1SL12J c1sb22af. C1SL12K c1sb22af. C1SL12L c1sb22af.
         C1SL13 c1sl13ff. C1SL14 c1sb8a4f. C1SL15 c1sb8a4f.
         C1SL16 c1sl16ff. C1SL17 c1sl16ff. C1SL18A c1sl18af.
         C1SL18B c1sl18af. C1SL18C c1sl18af. C1SL18D c1sl18af.
         C1SL19 c1sd2aff. C1SL2 c1sk2fff. C1SL20 c1sd2aff.
         C1SL21 c1sa17af. C1SL22 c1sb8a4f. C1SL23 c1sb8a4f.
         C1SL24A c1sl24af. C1SL24B c1sl24af. C1SL24C c1sl24af.
         C1SL24D c1sl24af. C1SL25A c1sb5aff. C1SL25B c1sb5aff.
         C1SL25C c1sf28cf. C1SL26A c1sb5aff. C1SL26B c1sb5aff.
         C1SL26C c1sf28cf. C1SL27A c1sb5aff. C1SL27B c1sb5aff.
         C1SL28 c1sd2aff. C1SL3 c1sk2fff. C1SL4 c1sk2fff.
         C1SL5 c1sk5fff. C1SL6 c1sk5fff. C1SL7 c1sd2aff.
         C1SL8 c1sl8fff. C1SL9 c1sl9fff. C1SLFEDI c1ssatif.
         C1SM1 c1sa1fff. C1SM10 c1sb22af. C1SM11 c1sb22af.
         C1SM12 c1sm12ff. C1SM13 c1sm12ff. C1SM2 c1sa1fff.
         C1SM3 c1sa1fff. C1SM4 c1sa4fff. C1SM5 c1sa4fff.
         C1SM6 c1sm6fff. C1SM7 c1sa11af. C1SM8 c1sm8fff.
         C1SM9 c1sm9fff. C1SMAR c1shlocf. C1SMARRS c1sjcsdf.
         C1SMASTE c1shlocf. C1SMNDFU c1ssatif. C1SMPQAC c1ssatif.
         C1SMPQAG c1ssatif. C1SMPQAL c1ssatif. C1SMPQCN c1ssatif.
         C1SMPQHA c1ssatif. C1SMPQSC c1ssatif. C1SMPQSP c1ssatif.
         C1SMPQSR c1ssatif. C1SMPQTR c1ssatif. C1SMPQWB c1ssatif.
         C1SN10A c1sj4gff. C1SN10B c1sj4gff. C1SN10C c1sn10cf.
         C1SN10D c1sn10cf. C1SN10E c1sn10cf. C1SN10F c1sn10cf.
         C1SN10G c1sn10cf. C1SN10H c1sn10cf. C1SN11A c1sj4gff.
         C1SN11B c1sj4gff. C1SN11C c1sj4gff. C1SN11D c1sj4gff.
         C1SN11E c1sj4gff. C1SN12A c1sn12af. C1SN12B c1sn12af.
         C1SN12C c1sn12af. C1SN12D c1sn12af. C1SN12E c1sn12af.
         C1SN12F c1sn12af. C1SN12G c1sn12af. C1SN12H c1sn12af.
         C1SN12I c1sn12af. C1SN1A c1sn1aff. C1SN1B c1sn1bff.
         C1SN1C c1sn1bff. C1SN2A c1sn2aff. C1SN2B c1sn2aff.
         C1SN2C c1sn2aff. C1SN2D c1sn2aff. C1SN2E c1sn2aff.
         C1SN2F c1sn2aff. C1SN2G c1sn2aff. C1SN2H c1sn2aff.
         C1SN2I c1sn2aff. C1SN3A c1sn3aff. C1SN3B c1sn3aff.
         C1SN3C c1sn3aff. C1SN3D c1sn3aff. C1SN3E c1sn3aff.
         C1SN4 c1sn4fff. C1SN5 c1sa11af. C1SN6 c1sa17af.
         C1SN7 c1sn7fff. C1SN8 c1sa11af. C1SN9A c1sn9aff.
         C1SN9B c1sn9aff. C1SN9C c1sn9cff. C1SN9D c1sn9cff.
         C1SNEGAF c1shlocf. C1SNEGFW c1sjcsdf. C1SNEGPA c1shlocf.
         C1SNEGWF c1sjcsdf. C1SNEURO c1shlocf. C1SOPEN c1shlocf.
         C1SOPTIM c1ssatif. C1SORIEN c1ssatif. C1SOTH c1srincf.
         C1SP1A c1sp1aff. C1SP1B c1sp1aff. C1SP1C c1sp1aff.
         C1SP1D c1sp1aff. C1SP1E c1sp1aff. C1SP1F c1sp1aff.
         C1SP1G c1sp1aff. C1SP1H c1sp1aff. C1SP1I c1sp1aff.
         C1SP1J c1sp1aff. C1SP1K c1sp1aff. C1SP2A c1sj4gff.
         C1SP2B c1sj4gff. C1SP2C c1sj4gff. C1SP2D c1sj4gff.
         C1SP2E c1sj4gff. C1SP2F c1sj4gff. C1SP2G c1sj4gff.
         C1SP2H c1sj4gff. C1SP2I c1sj4gff. C1SP3 c1sa11af.
         C1SP4A c1sa17af. C1SP4B c1sa17af. C1SP4C c1sa17af.
         C1SP4D c1sa17af. C1SP4E c1sa17af. C1SP4F c1sa17af.
         C1SP4G c1sa17af. C1SP4H c1sa17af. C1SP4I c1sa17af.
         C1SP4J c1sa17af. C1SP4K c1sa17af. C1SP4L c1sa17af.
         C1SP4M c1sa17af. C1SP5 c1sb22af. C1SP6 c1sb22af.
         C1SPERSI c1shlocf. C1SPESSI c1ssatif. C1SPIFAM c1spiwof.
         C1SPIHOM c1shomef. C1SPIWOR c1spiwof. C1SPKINS c1shlocf.
         C1SPLAN c1ssatif. C1SPNSN c1srincf. C1SPOSAF c1shlocf.
         C1SPOSFW c1sjcsdf. C1SPOSPA c1shlocf. C1SPOSWF c1sjcsdf.
         C1SPRCOP c1ssatif. C1SPWBA1 c1ssatif. C1SPWBA2 c1ssatif.
         C1SPWBE1 c1ssatif. C1SPWBE2 c1ssatif. C1SPWBG1 c1ssatif.
         C1SPWBG2 c1ssatif. C1SPWBR1 c1ssatif. C1SPWBR2 c1ssatif.
         C1SPWBS1 c1ssatif. C1SPWBS2 c1ssatif. C1SPWBU1 c1ssatif.
         C1SPWBU2 c1ssatif. C1SQ1 c1sa1fff. C1SQ2 c1sa1fff.
         C1SQ3 c1sa1fff. C1SQ4 c1sa4fff. C1SQ5 c1sa4fff.
         C1SQ6 c1sa1fff. C1SREAPP c1shlocf. C1SREINT c1ssatif.
         C1SRELCA c1ssatif. C1SRELCB c1ssatif. C1SRELID c1ssatif.
         C1SRELPR c1ssatif. C1SRELSU c1sjcsdf. C1SRINC c1srincf.
         C1SRXMED c1ssatif. C1SRXMEX c1schrof. C1SSATIS c1ssatif.
         C1SSATIS2 c1ssatif. C1SSEC c1srincf. C1SSINC c1ssincf.
         C1SSPCRI c1spiwof. C1SSPCTR c1shlocf. C1SSPDEC c1sjcsdf.
         C1SSPDIS c1sjcsdf. C1SSPEMP c1spiwof. C1SSPIRI c1ssatif.
         C1SSPLMN c1ssatif. C1SSPLMX c1schrof. C1SSPRTE c1ssatif.
         C1SSPSOL c1spiwof. C1SSSCTR c1shlocf. C1SSUFFI c1shlocf.
         C1SSWBAO c1ssatif. C1SSWBMS c1ssatif. C1SSWBSA c1ssatif.
         C1SSWBSC c1ssatif. C1SSWBSI c1ssatif. C1SSYMP c1shlocf.
         C1STATUS c1statuf. C1STINC c1srincf. C1STODAY c1shlocf.
         C1SUSEMD c1susemf. C1SUSEMH c1susemf. C1SVENT c1ssatif.
         C1SWSTHI c1shlocf. SAMPLMAJ samplmaf.
    ;
*/

RUN ;
