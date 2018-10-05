*-------------------------------------------------------------------------*
*                                                                          
*                     SPSS SETUP FILE FOR ICPSR 25281
*       NATIONAL SURVEY OF MIDLIFE DEVELOPMENT IN THE UNITED STATES
*                 (MIDUS II): COGNITIVE PROJECT, 2004-2006
*                             (DATASET 0001: )
* 
*
*  SPSS setup sections are provided for the ASCII version of this data
*  collection.  These sections are listed below:
*
*  DATA LIST:  assigns the name, type, decimal specification (if any),
*  and specifies the beginning and ending column locations for each
*  variable in the data file. Users must replace the "data-filename"
*  in the DATA LIST statement with a filename specifying the directory
*  on the user's computer system in which the downloaded and unzipped
*  data file is physically located (e.g., "c:\temp\25281-0001-data.txt").
*
*  VARIABLE LABELS:  assigns descriptive labels to all variables.
*  Labels and variable names may be identical for some data files.
*
*  MISSING VALUES: declares user-defined missing values. Not all
*  variables in this data set necessarily have user-defined missing
*  values. These values can be treated specially in data transformations,
*  statistical calculations, and case selection.
*
*  VALUE LABELS: assigns descriptive labels to codes found in the data
*  file.  Not all codes necessarily have assigned value labels.
*
*  VARIABLE LEVEL: assigns measurement level to each variable (scale,
*  nominal, or ordinal).
*
*  NOTE:  Users should modify this setup file to suit their specific
*  needs. The MISSING VALUES section has been commented out (i.e., '*').
*  To include the MISSING VALUES section in the final SPSS setup, remove
*  the comment indicators from the desired section.
*
*  CREATING A PERMANENT SPSS DATA FILE: If users wish to create and save
*  an SPSS data file for further analysis using SPSS for Windows, the
*  necessary "SAVE OUTFILE" command is provided in the last line of
*  this file.  To activate the command, users must delete the leading
*  asterisk (*) and replace "spss-filename" with a filename specifying
*  the location on the user's computer system to which the new data file
*  will be saved (e.g., SAVE OUTFILE="c:\spsswin\data\da25281-0001.sav").
*
*-------------------------------------------------------------------------.

* SPSS FILE HANDLE AND DATA LIST COMMANDS.

FILE HANDLE DATA / NAME="data-filename" LRECL=1744.
DATA LIST FILE=DATA /
                M2ID 1-8           M2FAMNUM 9-14
          SAMPLMAJ 15-22         B1PAGE_M2 23-27         B1PGENDER 28-35
       B3PIDATE_MO 36-43       B3PIDATE_YR 44-51          B3TWLIFP 52-59
           B3TWLI1 60-67           B3TWLI2 68-75           B3TWLI3 76-83
           B3TWLI4 84-91           B3TWLI5 92-99         B3TWLI6 100-107
         B3TWLI7 108-115         B3TWLI8 116-123         B3TWLI9 124-131
        B3TWLI10 132-139        B3TWLI11 140-147        B3TWLI12 148-155
        B3TWLI13 156-163        B3TWLI14 164-171        B3TWLI15 172-179
        B3TWLI16 180-187        B3TWLI17 188-195        B3TWLI18 196-203
        B3TWLI19 204-211        B3TWLI20 212-219        B3TWLI21 220-227
        B3TWLI22 228-235        B3TWLI23 236-243        B3TWLI24 244-251
        B3TWLI25 252-259        B3TWLI26 260-267        B3TWLITU 268-275
        B3TWLITR 276-283        B3TWLITI 284-291         B3TDBFP 292-299
          B3TDBS 300-307        B3TCTFFP 308-315        B3TCTFLU 316-323
        B3TCTFLR 324-331        B3TCTFLI 332-339         B3TNSFP 340-347
          B3TNS1 348-355          B3TNS2 356-363          B3TNS3 364-371
          B3TNS4 372-379          B3TNS5 380-387         B3TNS1C 388-395
         B3TNS2C 396-403         B3TNS3C 404-411         B3TNS4C 412-419
         B3TNS5C 420-427        B3TNSTOT 428-435         B3TBKFP 436-443
         B3TBKCT 444-451        B3TBKERR 452-459        B3TBKTOT 460-467
        B3TWLDFP 468-475         B3TWLD1 476-483         B3TWLD2 484-491
         B3TWLD3 492-499         B3TWLD4 500-507         B3TWLD5 508-515
         B3TWLD6 516-523         B3TWLD7 524-531         B3TWLD8 532-539
         B3TWLD9 540-547        B3TWLD10 548-555        B3TWLD11 556-563
        B3TWLD12 564-571        B3TWLD13 572-579        B3TWLD14 580-587
        B3TWLD15 588-595        B3TWLD16 596-603        B3TWLD17 604-611
        B3TWLD18 612-619        B3TWLD19 620-627        B3TWLD20 628-635
        B3TWLD21 636-643        B3TWLD22 644-651        B3TWLD23 652-659
        B3TWLD24 660-667        B3TWLD25 668-675        B3TWLD26 676-683
        B3TWLDTU 684-691        B3TWLDTR 692-699        B3TWLDTI 700-707
      B3TWLF 708-715 (2)   B3TCOMPZ1 716-720 (3)     B3TEMZ1 721-725 (3)
     B3TEFZ1 726-730 (3)   B3TCOMPZ2 731-735 (3)     B3TEMZ2 736-740 (3)
     B3TEFZ2 741-745 (3)   B3TCOMPZ3 746-750 (3)     B3TEMZ3 751-755 (3)
     B3TEFZ3 756-760 (3)     B3TSWN1 761-768 (3)     B3TSWN2 769-776 (3)
     B3TSWN3 777-784 (3)     B3TSWN4 785-792 (3)     B3TSWN5 793-800 (3)
     B3TSWN6 801-808 (3)     B3TSWN7 809-816 (3)     B3TSWN8 817-824 (3)
     B3TSWN9 825-832 (3)    B3TSWN10 833-840 (3)    B3TSWN11 841-848 (3)
    B3TSWN12 849-856 (3)    B3TSWN13 857-864 (3)    B3TSWN14 865-872 (3)
    B3TSWN15 873-880 (3)    B3TSWN16 881-888 (3)    B3TSWN17 889-896 (3)
    B3TSWN18 897-904 (3)    B3TSWN19 905-912 (3)    B3TSWN20 913-920 (3)
     B3TSWR1 921-928 (3)     B3TSWR2 929-936 (3)     B3TSWR3 937-944 (3)
     B3TSWR4 945-952 (3)     B3TSWR5 953-960 (3)     B3TSWR6 961-968 (3)
     B3TSWR7 969-976 (3)     B3TSWR8 977-984 (3)     B3TSWR9 985-992 (3)
   B3TSWR10 993-1000 (3)  B3TSWR11 1001-1008 (3)  B3TSWR12 1009-1016 (3)
  B3TSWR13 1017-1024 (3)  B3TSWR14 1025-1032 (3)  B3TSWR15 1033-1040 (3)
  B3TSWR16 1041-1048 (3)  B3TSWR17 1049-1056 (3)  B3TSWR18 1057-1064 (3)
  B3TSWR19 1065-1072 (3)  B3TSWR20 1073-1080 (3)   B3TSWX1 1081-1088 (3)
   B3TSWX2 1089-1096 (3)   B3TSWX3 1097-1104 (3)   B3TSWX4 1105-1112 (3)
   B3TSWX5 1113-1120 (3)   B3TSWX6 1121-1128 (3)   B3TSWX7 1129-1136 (3)
   B3TSWX8 1137-1144 (3)   B3TSWX9 1145-1152 (3)  B3TSWX10 1153-1160 (3)
  B3TSWX11 1161-1168 (3)  B3TSWX12 1169-1176 (3)  B3TSWX13 1177-1184 (3)
  B3TSWX14 1185-1192 (3)  B3TSWX15 1193-1200 (3)  B3TSWX16 1201-1208 (3)
  B3TSWX17 1209-1216 (3)  B3TSWX18 1217-1224 (3)  B3TSWX19 1225-1232 (3)
  B3TSWX20 1233-1240 (3)  B3TSWX21 1241-1248 (3)  B3TSWX22 1249-1256 (3)
  B3TSWX23 1257-1264 (3)  B3TSWX24 1265-1272 (3)  B3TSWX25 1273-1280 (3)
  B3TSWX26 1281-1288 (3)  B3TSWX27 1289-1296 (3)  B3TSWX28 1297-1304 (3)
  B3TSWX29 1305-1312 (3)  B3TSWX30 1313-1320 (3)  B3TSWX31 1321-1328 (3)
  B3TSWX32 1329-1336 (3)        B3TSTN 1337-1344        B3TSVN 1345-1352
    B3TSPN 1353-1360 (2)    B3TSMN 1361-1368 (3)        B3TSTR 1369-1376
        B3TSVR 1377-1384    B3TSPR 1385-1392 (2)    B3TSMR 1393-1400 (3)
    B3TSMB 1401-1408 (3)      B3TSTXNO 1409-1416      B3TSVXNO 1417-1424
  B3TSPXNO 1425-1432 (2)      B3TSTXRO 1433-1440      B3TSVXRO 1441-1448
  B3TSPXRO 1449-1456 (2)      B3TSTXBO 1457-1464      B3TSVXBO 1465-1472
  B3TSPXBO 1473-1480 (2)      B3TSTXNS 1481-1488      B3TSVXNS 1489-1496
  B3TSPXNS 1497-1504 (2)      B3TSTXRS 1505-1512      B3TSVXRS 1513-1520
  B3TSPXRS 1521-1528 (2)      B3TSTXBS 1529-1536      B3TSVXBS 1537-1544
  B3TSPXBS 1545-1552 (2)      B3TSTXBB 1553-1560      B3TSVXBB 1561-1568
  B3TSPXBB 1569-1576 (2)  B3TSMXNO 1577-1584 (3)  B3TSMXRO 1585-1592 (3)
  B3TSMXBO 1593-1600 (3)  B3TSMXNS 1601-1608 (3)  B3TSMXRS 1609-1616 (3)
  B3TSMXBS 1617-1624 (3)  B3TSMXBB 1625-1632 (3)  B3TSCGBA 1633-1640 (3)
  B3TSCGBR 1641-1648 (3)  B3TSCGNA 1649-1656 (3)  B3TSCGNR 1657-1664 (3)
  B3TSCGRA 1665-1672 (3)  B3TSCGRR 1673-1680 (3)  B3TSCLBA 1681-1688 (3)
  B3TSCLBR 1689-1696 (3)  B3TSCLNA 1697-1704 (3)  B3TSCLNR 1705-1712 (3)
  B3TSCLRA 1713-1720 (3)  B3TSCLRR 1721-1728 (3)        B3TSFV 1729-1736
        B3TSFC 1737-1744
   .

* SPSS VARIABLE LABELS COMMAND

VARIABLE LABELS
   M2ID      'MIDUS 2 ID number' /
   M2FAMNUM  'MIDUS 2 Family number' /
   SAMPLMAJ  'Major sample identification (aka Sample)' /
   B1PAGE_M2 'Age determined by subtracting DOB_Final from b1ipidate' /
   B1PGENDER 'Gender' /
   B3PIDATE_MO 'Month of interview' /
   B3PIDATE_YR 'Year of interview' /
   B3TWLIFP  'Word List Imm flagged problematic?' /
   B3TWLI1   'Word List Immediate: Recalled #1' /
   B3TWLI2   'Word List Immediate: Recalled #2' /
   B3TWLI3   'Word List Immediate: Recalled #3' /
   B3TWLI4   'Word List Immediate: Recalled #4' /
   B3TWLI5   'Word List Immediate: Recalled #5' /
   B3TWLI6   'Word List Immediate: Recalled #6' /
   B3TWLI7   'Word List Immediate: Recalled #7' /
   B3TWLI8   'Word List Immediate: Recalled #8' /
   B3TWLI9   'Word List Immediate: Recalled #9' /
   B3TWLI10  'Word List Immediate: Recalled #10' /
   B3TWLI11  'Word List Immediate: Recalled #11' /
   B3TWLI12  'Word List Immediate: Recalled #12' /
   B3TWLI13  'Word List Immediate: Recalled #13' /
   B3TWLI14  'Word List Immediate: Recalled #14' /
   B3TWLI15  'Word List Immediate: Recalled #15' /
   B3TWLI16  'Word List Immediate: Recalled #16' /
   B3TWLI17  'Word List Immediate: Recalled #17' /
   B3TWLI18  'Word List Immediate: Recalled #18' /
   B3TWLI19  'Word List Immediate: Recalled #19' /
   B3TWLI20  'Word List Immediate: Recalled #20' /
   B3TWLI21  'Word List Immediate: Recalled #21' /
   B3TWLI22  'Word List Immediate: Recalled #22' /
   B3TWLI23  'Word List Immediate: Recalled #23' /
   B3TWLI24  'Word List Immediate: Recalled #24' /
   B3TWLI25  'Word List Immediate: Recalled #25' /
   B3TWLI26  'Word List Immediate: Recalled #26' /
   B3TWLITU  'Word List Immediate: Tot Unique Items' /
   B3TWLITR  'Word List Immediate: Tot # Repetitions' /
   B3TWLITI  'Word List Immediate: Tot # Intrusions' /
   B3TDBFP   'Digits Backward flagged problematic?' /
   B3TDBS    'Digits Backward: highest # digits recall' /
   B3TCTFFP  'Category Fluency flagged problematic?' /
   B3TCTFLU  'Category Fluency: Tot Unique items' /
   B3TCTFLR  'Category Fluency: Tot # Repetitions' /
   B3TCTFLI  'Category Fluency: Tot # Intrusions' /
   B3TNSFP   'Number Series flagged problematic?' /
   B3TNS1    'Number Series #1' /
   B3TNS2    'Number Series #2' /
   B3TNS3    'Number Series #3' /
   B3TNS4    'Number Series #4' /
   B3TNS5    'Number Series #5' /
   B3TNS1C   'Number Series #1: correct?' /
   B3TNS2C   'Number Series #2: correct?' /
   B3TNS3C   'Number Series #3: correct?' /
   B3TNS4C   'Number Series #4: correct?' /
   B3TNS5C   'Number Series #5: correct?' /
   B3TNSTOT  'Number Series: Total Correct' /
   B3TBKFP   'Backward Counting flagged problematic?' /
   B3TBKCT   'Backward Counting: last # reached' /
   B3TBKERR  'Backward Counting: # of errors' /
   B3TBKTOT  'Backward Counting: Total # Counted Correctly'+
     ' (100-(B3TBKCT+B3TBKERR))'/
   B3TWLDFP  'Word List Delayed flagged problematic?' /
   B3TWLD1   'Word List Delayed: Recalled #1' /
   B3TWLD2   'Word List Delayed: Recalled #2' /
   B3TWLD3   'Word List Delayed: Recalled #3' /
   B3TWLD4   'Word List Delayed: Recalled #4' /
   B3TWLD5   'Word List Delayed: Recalled #5' /
   B3TWLD6   'Word List Delayed: Recalled #6' /
   B3TWLD7   'Word List Delayed: Recalled #7' /
   B3TWLD8   'Word List Delayed: Recalled #8' /
   B3TWLD9   'Word List Delayed: Recalled #9' /
   B3TWLD10  'Word List Delayed: Recalled #10' /
   B3TWLD11  'Word List Delayed: Recalled #11' /
   B3TWLD12  'Word List Delayed: Recalled #12' /
   B3TWLD13  'Word List Delayed: Recalled #13' /
   B3TWLD14  'Word List Delayed: Recalled #14' /
   B3TWLD15  'Word List Delayed: Recalled #15' /
   B3TWLD16  'Word List Delayed: Recalled #16' /
   B3TWLD17  'Word List Delayed: Recalled #17' /
   B3TWLD18  'Word List Delayed: Recalled #18' /
   B3TWLD19  'Word List Delayed: Recalled #19' /
   B3TWLD20  'Word List Delayed: Recalled #20' /
   B3TWLD21  'Word List Delayed: Recalled #21' /
   B3TWLD22  'Word List Delayed: Recalled #22' /
   B3TWLD23  'Word List Delayed: Recalled #23' /
   B3TWLD24  'Word List Delayed: Recalled #24' /
   B3TWLD25  'Word List Delayed: Recalled #25' /
   B3TWLD26  'Word List Delayed: Recalled #26' /
   B3TWLDTU  'Word List Delayed: Tot Unique Items' /
   B3TWLDTR  'Word List Delayed: Tot # Repetitions' /
   B3TWLDTI  'Word List Delayed: Total # Intrusions' /
   B3TWLF    'Word List: Proportion Forgot Between Immediate and Delayed' /
   B3TCOMPZ1 'Zscore BTACT Composite Score_computed for MIDUS national'+
     ' sample only (N=4206)'/
   B3TEMZ1   'Zscore Episodic Memory_computed for MIDUS national sample'+
     ' only (N=4206)'/
   B3TEFZ1   'Zscore Executive Functioning_computed for MIDUS national'+
     ' sample only (N=4206)'/
   B3TCOMPZ2 'Zscore BTACT Composite Score_computed for Milwaukee sample'+
     ' only (N=306)'/
   B3TEMZ2   'Zscore Episodic Memory_computed for Milwaukee sample only'+
     ' (N=306)'/
   B3TEFZ2   'Zscore Executive Functioning_computed for Milwaukee sample'+
     ' only (N=306)'/
   B3TCOMPZ3 'Zscore BTACT Composite Score_computed for complete sample'+
     ' (MIDUS + Milwaukee; N=4512)'/
   B3TEMZ3   'Zscore Episodic Memory_computed for complete sample (MIDUS +'+
     ' Milwaukee; N=4512)'/
   B3TEFZ3   'Zscore Executive Functioning_computed for complete sample'+
     ' (MIDUS + Milwaukee; N=4512)'/
   B3TSWN1   'SGST: normal single-task trial #1' /
   B3TSWN2   'SGST: normal single-task trial #2' /
   B3TSWN3   'SGST: normal single-task trial #3' /
   B3TSWN4   'SGST: normal single-task trial #4' /
   B3TSWN5   'SGST: normal single-task trial #5' /
   B3TSWN6   'SGST: normal single-task trial #6' /
   B3TSWN7   'SGST: normal single-task trial #7' /
   B3TSWN8   'SGST: normal single-task trial #8' /
   B3TSWN9   'SGST: normal single-task trial #9' /
   B3TSWN10  'SGST: normal single-task trial #10' /
   B3TSWN11  'SGST: normal single-task trial #11' /
   B3TSWN12  'SGST: normal single-task trial #12' /
   B3TSWN13  'SGST: normal single-task trial #13' /
   B3TSWN14  'SGST: normal single-task trial #14' /
   B3TSWN15  'SGST: normal single-task trial #15' /
   B3TSWN16  'SGST: normal single-task trial #16' /
   B3TSWN17  'SGST: normal single-task trial #17' /
   B3TSWN18  'SGST: normal single-task trial #18' /
   B3TSWN19  'SGST: normal single-task trial #19' /
   B3TSWN20  'SGST: normal single-task trial #20' /
   B3TSWR1   'SGST: reverse single-task trial #1' /
   B3TSWR2   'SGST: reverse single-task trial #2' /
   B3TSWR3   'SGST: reverse single-task trial #3' /
   B3TSWR4   'SGST: reverse single-task trial #4' /
   B3TSWR5   'SGST: reverse single-task trial #5' /
   B3TSWR6   'SGST: reverse single-task trial #6' /
   B3TSWR7   'SGST: reverse single-task trial #7' /
   B3TSWR8   'SGST: reverse single-task trial #8' /
   B3TSWR9   'SGST: reverse single-task trial #9' /
   B3TSWR10  'SGST: reverse single-task trial #10' /
   B3TSWR11  'SGST: reverse single-task trial #11' /
   B3TSWR12  'SGST: reverse single-task trial #12' /
   B3TSWR13  'SGST: reverse single-task trial #13' /
   B3TSWR14  'SGST: reverse single-task trial #14' /
   B3TSWR15  'SGST: reverse single-task trial #15' /
   B3TSWR16  'SGST: reverse single-task trial #16' /
   B3TSWR17  'SGST: reverse single-task trial #17' /
   B3TSWR18  'SGST: reverse single-task trial #18' /
   B3TSWR19  'SGST: reverse single-task trial #19' /
   B3TSWR20  'SGST: reverse single-task trial #20' /
   B3TSWX1   'SGST: mixed-task trial #1 "normal...green"' /
   B3TSWX2   'SGST: mixed-task trial #2 "red"' /
   B3TSWX3   'SGST: mixed-task trial #3 "green"' /
   B3TSWX4   'SGST: mixed-task trial #4 "reverse...red"' /
   B3TSWX5   'SGST: mixed-task trial #5 "red"' /
   B3TSWX6   'SGST: mixed-task trial #6 "green"' /
   B3TSWX7   'SGST: mixed-task trial #7 "red"' /
   B3TSWX8   'SGST: mixed-task trial #8 "red"' /
   B3TSWX9   'SGST: mixed-task trial #9 "normal...red"' /
   B3TSWX10  'SGST: mixed-task trial #10 "green"' /
   B3TSWX11  'SGST: mixed-task trial #11 "red"' /
   B3TSWX12  'SGST: mixed-task trial #12 "green"' /
   B3TSWX13  'SGST: mixed-task trial #13 "green"' /
   B3TSWX14  'SGST: mixed-task trial #14 "red"' /
   B3TSWX15  'SGST: mixed-task trial #15 "reverse...green"' /
   B3TSWX16  'SGST: mixed-task trial #16 "green"' /
   B3TSWX17  'SGST: mixed-task trial #17 "red"' /
   B3TSWX18  'SGST: mixed-task trial #18 "green"' /
   B3TSWX19  'SGST: mixed-task trial #19 "normal...green"' /
   B3TSWX20  'SGST: mixed-task trial #20 "red"' /
   B3TSWX21  'SGST: mixed-task trial #21 "green"' /
   B3TSWX22  'SGST: mixed-task trial #22 "green"' /
   B3TSWX23  'SGST: mixed-task trial #23 "red"' /
   B3TSWX24  'SGST: mixed-task trial #24 "reverse...green"' /
   B3TSWX25  'SGST: mixed-task trial #25 "green"' /
   B3TSWX26  'SGST: mixed-task trial #26 "red"' /
   B3TSWX27  'SGST: mixed-task trial #27 "green"' /
   B3TSWX28  'SGST: mixed-task trial #28 "red"' /
   B3TSWX29  'SGST: mixed-task trial #29 "normal...red"' /
   B3TSWX30  'SGST: mixed-task trial #30 "green"' /
   B3TSWX31  'SGST: mixed-task trial #31 "red"' /
   B3TSWX32  'SGST: mixed-task trial #32 "green"' /
   B3TSTN    'SGST: normal single-task #correct' /
   B3TSVN    'SGST: normal single-task #invalid' /
   B3TSPN    'SGST: normal single-task % correct' /
   B3TSMN    'SGST: normal single-task median RT' /
   B3TSTR    'SGST: reverse single-task #correct' /
   B3TSVR    'SGST: reverse single-task #invalid' /
   B3TSPR    'SGST: reverse single-task % correct' /
   B3TSMR    'SGST: reverse single-task median RT' /
   B3TSMB    'SGST: mean(B3TSMN, B3TSMR)' /
   B3TSTXNO  'SGST: mixed-task normal nonswitch trials #correct' /
   B3TSVXNO  'SGST: mixed-task normal nonswitch trials #invalid' /
   B3TSPXNO  'SGST: mixed-task normal nonswitch trials %correct' /
   B3TSTXRO  'SGST: mixed-task reverse nonswitch trials #correct' /
   B3TSVXRO  'SGST: mixed-task reverse nonswitch trials #invalid' /
   B3TSPXRO  'SGST: mixed-task reverse nonswitch trials %correct' /
   B3TSTXBO  'SGST: mixed-task nonswitch trials #correct' /
   B3TSVXBO  'SGST: mixed-task nonswitch trials #invalid' /
   B3TSPXBO  'SGST: mixed-task nonswitch trials %correct' /
   B3TSTXNS  'SGST: mixed-task normal switch trials #correct' /
   B3TSVXNS  'SGST: mixed-task normal switch trials #invalid' /
   B3TSPXNS  'SGST: mixed-task normal switch trials %correct' /
   B3TSTXRS  'SGST: mixed-task reverse switch trials #correct' /
   B3TSVXRS  'SGST: mixed-task reverse switch trials #invalid' /
   B3TSPXRS  'SGST: mixed-task reverse switch trials %correct' /
   B3TSTXBS  'SGST: mixed-task switch trials #correct' /
   B3TSVXBS  'SGST: mixed-task switch trials #invalid' /
   B3TSPXBS  'SGST: mixed-task switch trials %correct' /
   B3TSTXBB  'SGST: all mixed-task #correct' /
   B3TSVXBB  'SGST: all mixed-task #invalid' /
   B3TSPXBB  'SGST: all mixed-task %correct' /
   B3TSMXNO  'SGST: mixed-task normal nonswitch median RT' /
   B3TSMXRO  'SGST: mixed-task reverse nonswitch median RT' /
   B3TSMXBO  'SGST: mixed-task nonswitch trials median RT' /
   B3TSMXNS  'SGST: mixed-task normal switch median RT' /
   B3TSMXRS  'SGST: mixed-task reverse switch median RT' /
   B3TSMXBS  'SGST: mixed-task switch trials median RT' /
   B3TSMXBB  'SGST: mean(B3TSMXBO, B3TSMXBS)' /
   B3TSCGBA  'SGST: General Switch Cost, absolute (B3TSMXBB-B3TSMB)' /
   B3TSCGBR  'SGST: General Switch Cost, relative (B3TSCGBA/B3TSMB)' /
   B3TSCGNA  'SGST: General Switch Cost (normal), absolute [mean(B3TSMXNO,'+
     ' B3TSMXNS)-B3TSMN]'/
   B3TSCGNR  'SGST: General Switch Cost (normal), relative (B3TSCGNA/B3TSMN)' /
   B3TSCGRA  'SGST: General Switch Cost (reverse), absolute [mean(B3TSMXRO,'+
     ' B3TSMXRS)-B3TSMR]'/
   B3TSCGRR  'SGST: General Switch Cost (reverse), relative'+
     ' (B3TSCGRA/B3TSMR)'/
   B3TSCLBA  'SGST: Local Switch Cost, absolute (B3TSMXBS-B3TSMXBO)' /
   B3TSCLBR  'SGST: Local Switch Cost, relative (B3TSCLBA/B3TSMXBO)' /
   B3TSCLNA  'SGST: Local Switch Cost (normal), absolute (B3TSMXNS-B3TSMXNO)' /
   B3TSCLNR  'SGST: Local Switch Cost (normal), relative (B3TSCLNA/B3TSMXNO)' /
   B3TSCLRA  'SGST: Local Switch Cost (reverse), absolute'+
     ' (B3TSMXRS-B3TSMXRO)'/
   B3TSCLRR  'SGST: Local Switch Cost (reverse), relative'+
     ' (B3TSCLRA/B3TSMXRO)'/
   B3TSFV    'SGST: Filter invalid cases' /
   B3TSFC    'SGST: Filter cases with low accuracy or extreme latencies' /
   .


* SPSS VALUE LABELS COMMAND.

VALUE LABELS
   SAMPLMAJ  1 'MAIN RDD' 2 'SIBLING' 3 'TWIN' 4 'CITY OVERSAMPLE'
             13 'MILWAUKEE' /
   B1PAGE_M2 98 'REFUSED' 99 'INAPP (NO M2 PARTICIPATION)' /
   B1PGENDER 1 'MALE' 2 'FEMALE' 8 'REFUSED/UNKOWN' /
   B3TWLIFP  1 'YES' 2 'NO' 8 'REFUSED/MISSING' /
   B3TWLI1   1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLI2   1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLI3   1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLI4   1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLI5   1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLI6   1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLI7   1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLI8   1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLI9   1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLI10  1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLI11  1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLI12  1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLI13  1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLI14  1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLI15  1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLI16  1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLI17  1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLI18  1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLI19  1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLI20  1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLI21  1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLI22  1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLI23  1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLI24  1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLI25  1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLI26  1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLITU  98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLITR  98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLITI  98 'REFUSED/MISSING' 99 'INAPP' /
   B3TDBFP   1 'YES' 2 'NO' 8 'REFUSED/MISSING' /
   B3TDBS    98 'REFUSED/MISSING' 99 'INAPP' /
   B3TCTFFP  1 'YES' 2 'NO' 8 'REFUSED/MISSING' /
   B3TCTFLU  98 'REFUSED/MISSING' 99 'INAPP' /
   B3TCTFLR  98 'REFUSED/MISSING' 99 'INAPP' /
   B3TCTFLI  98 'REFUSED/MISSING' 99 'INAPP' /
   B3TNSFP   1 'YES' 2 'NO' 8 'REFUSED/MISSING' /
   B3TNS1    997 'DON''T KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   B3TNS2    997 'DON''T KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   B3TNS3    997 'DON''T KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   B3TNS4    997 'DON''T KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   B3TNS5    997 'DON''T KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   B3TNS1C   1 'YES, CORRECT' 2 'NO, INCORRECT' 8 'REFUSAL/MISSING' 9 'INAPP'
             /
   B3TNS2C   1 'YES, CORRECT' 2 'NO, INCORRECT' 8 'REFUSAL/MISSING' 9 'INAPP'
             /
   B3TNS3C   1 'YES, CORRECT' 2 'NO, INCORRECT' 8 'REFUSAL/MISSING' 9 'INAPP'
             /
   B3TNS4C   1 'YES, CORRECT' 2 'NO, INCORRECT' 8 'REFUSAL/MISSING' 9 'INAPP'
             /
   B3TNS5C   1 'YES, CORRECT' 2 'NO, INCORRECT' 8 'REFUSAL/MISSING' 9 'INAPP'
             /
   B3TNSTOT  8 'REFUSED/MISSING' 9 'INAPP' /
   B3TBKFP   1 'YES' 2 'NO' 8 'REFUSED/MISSING' /
   B3TBKCT   998 'REFUSED/MISSING' 999 'INAPP' /
   B3TBKERR  998 'REFUSED/MISSING' 999 'INAPP' /
   B3TBKTOT  998 'REFUSED/MISSING' 999 'INAPP' /
   B3TWLDFP  1 'YES' 2 'NO' 8 'REFUSED/MISSING' /
   B3TWLD1   1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLD2   1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLD3   1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLD4   1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLD5   1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLD6   1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLD7   1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLD8   1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLD9   1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLD10  1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLD11  1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLD12  1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLD13  1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLD14  1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLD15  1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLD16  1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLD17  1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLD18  1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLD19  1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLD20  1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLD21  1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLD22  1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLD23  1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLD24  1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLD25  1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLD26  1 'DRUM' 2 'CURTAIN' 3 'BELL' 4 'COFFEE' 5 'SCHOOL' 6 'PARENT'
             7 'MOON' 8 'GARDEN' 9 'HAT' 10 'FARMER' 11 'NOSE' 12 'TURKEY'
             13 'COLOR' 14 'HOUSE' 15 'RIVER' 90 'NON-LIST INTRUSION'
             98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLDTU  98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLDTR  98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLDTI  98 'REFUSED/MISSING' 99 'INAPP' /
   B3TWLF    8 'REFUSED/MISSING' 9 'INAPP' /
   B3TCOMPZ2 8 'REFUSED/MISSING' 9 'INAPP' /
   B3TEMZ2   8 'REFUSED/MISSING' 9 'INAPP' /
   B3TEFZ2   8 'REFUSED/MISSING' 9 'INAPP' /
   B3TCOMPZ3 8 'REFUSED/MISSING' 9 'INAPP' /
   B3TEMZ3   8 'REFUSED/MISSING' 9 'INAPP' /
   B3TEFZ3   8 'REFUSED/MISSING' 9 'INAPP' /
   B3TSWN1   95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWN2   95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWN3   95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWN4   95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWN5   95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWN6   95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWN7   95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWN8   95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWN9   95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWN10  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWN11  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWN12  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWN13  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWN14  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWN15  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWN16  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWN17  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWN18  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWN19  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWN20  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWR1   95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWR2   95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWR3   95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWR4   95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWR5   95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWR6   95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWR7   95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWR8   95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWR9   95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWR10  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWR11  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWR12  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWR13  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWR14  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWR15  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWR16  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWR17  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWR18  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWR19  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWR20  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWX1   95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWX2   95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWX3   95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWX4   95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWX5   95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWX6   95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWX7   95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWX8   95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWX9   95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWX10  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWX11  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWX12  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWX13  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWX14  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWX15  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWX16  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWX17  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWX18  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWX19  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWX20  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWX21  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWX22  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWX23  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWX24  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWX25  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWX26  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWX27  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWX28  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWX29  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWX30  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWX31  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSWX32  95 'INCORRECT' 98 'REFUSED/MISSING' 99 'INVALID' /
   B3TSTN    98 'REFUSED/MISSING' /
   B3TSVN    98 'REFUSED/MISSING' /
   B3TSPN    8 'REFUSED/MISSING' /
   B3TSMN    98 'REFUSED/MISSING' /
   B3TSTR    98 'REFUSED/MISSING' /
   B3TSVR    98 'REFUSED/MISSING' /
   B3TSPR    8 'REFUSED/MISSING' /
   B3TSMR    98 'REFUSED/MISSING' /
   B3TSMB    98 'REFUSED/MISSING' /
   B3TSTXNO  98 'REFUSED/MISSING' /
   B3TSVXNO  98 'REFUSED/MISSING' /
   B3TSPXNO  8 'REFUSED/MISSING' /
   B3TSTXRO  98 'REFUSED/MISSING' /
   B3TSVXRO  98 'REFUSED/MISSING' /
   B3TSPXRO  8 'REFUSED/MISSING' /
   B3TSTXBO  98 'REFUSED/MISSING' /
   B3TSVXBO  98 'REFUSED/MISSING' /
   B3TSPXBO  8 'REFUSED/MISSING' /
   B3TSTXNS  8 'REFUSED/MISSING' /
   B3TSVXNS  8 'REFUSED/MISSING' /
   B3TSPXNS  8 'REFUSED/MISSING' /
   B3TSTXRS  8 'REFUSED/MISSING' /
   B3TSVXRS  8 'REFUSED/MISSING' /
   B3TSPXRS  8 'REFUSED/MISSING' /
   B3TSTXBS  8 'REFUSED/MISSING' /
   B3TSVXBS  8 'REFUSED/MISSING' /
   B3TSPXBS  8 'REFUSED/MISSING' /
   B3TSTXBB  98 'REFUSED/MISSING' /
   B3TSVXBB  98 'REFUSED/MISSING' /
   B3TSPXBB  8 'REFUSED/MISSING' /
   B3TSMXNO  98 'REFUSED/MISSING' /
   B3TSMXRO  98 'REFUSED/MISSING' /
   B3TSMXBO  98 'REFUSED/MISSING' /
   B3TSMXNS  98 'REFUSED/MISSING' /
   B3TSMXRS  98 'REFUSED/MISSING' /
   B3TSMXBS  98 'REFUSED/MISSING' /
   B3TSMXBB  98 'REFUSED/MISSING' /
   B3TSCGBA  98 'REFUSED/MISSING' /
   B3TSCGBR  98 'REFUSED/MISSING' /
   B3TSCGNA  98 'REFUSED/MISSING' /
   B3TSCGNR  98 'REFUSED/MISSING' /
   B3TSCGRA  98 'REFUSED/MISSING' /
   B3TSCGRR  98 'REFUSED/MISSING' /
   B3TSCLBA  98 'REFUSED/MISSING' /
   B3TSCLBR  98 'REFUSED/MISSING' /
   B3TSCLNA  98 'REFUSED/MISSING' /
   B3TSCLNR  98 'REFUSED/MISSING' /
   B3TSCLRA  98 'REFUSED/MISSING' /
   B3TSCLRR  98 'REFUSED/MISSING' /
   B3TSFV    0 'NOT SELECTED' 1 'SELECTED' /
   B3TSFC    0 'NOT SELECTED' 1 'SELECTED' /
   .

* SPSS MISSING VALUES COMMAND.

* MISSING VALUES
     B1PAGE_M2 (98, 99) /
     B1PGENDER (8) /
     B3TWLIFP (8) /
     B3TWLI1 (98, 99) /
     B3TWLI2 (98, 99) /
     B3TWLI3 (98, 99) /
     B3TWLI4 (98, 99) /
     B3TWLI5 (98, 99) /
     B3TWLI6 (98, 99) /
     B3TWLI7 (98, 99) /
     B3TWLI8 (98, 99) /
     B3TWLI9 (98, 99) /
     B3TWLI10 (98, 99) /
     B3TWLI11 (98, 99) /
     B3TWLI12 (98, 99) /
     B3TWLI13 (98, 99) /
     B3TWLI14 (98, 99) /
     B3TWLI15 (98, 99) /
     B3TWLI16 (98, 99) /
     B3TWLI17 (98, 99) /
     B3TWLI18 (98, 99) /
     B3TWLI19 (98, 99) /
     B3TWLI20 (98, 99) /
     B3TWLI21 (98, 99) /
     B3TWLI22 (98, 99) /
     B3TWLI23 (98, 99) /
     B3TWLI24 (98, 99) /
     B3TWLI25 (98, 99) /
     B3TWLI26 (98, 99) /
     B3TWLITU (98, 99) /
     B3TWLITR (98, 99) /
     B3TWLITI (98, 99) /
     B3TDBFP (8) /
     B3TDBS (98, 99) /
     B3TCTFFP (8) /
     B3TCTFLU (98, 99) /
     B3TCTFLR (98, 99) /
     B3TCTFLI (98, 99) /
     B3TNSFP (8) /
     B3TNS1 (997, 998, 999) /
     B3TNS2 (997, 998, 999) /
     B3TNS3 (997, 998, 999) /
     B3TNS4 (997, 998, 999) /
     B3TNS5 (997, 998, 999) /
     B3TNS1C (8, 9) /
     B3TNS2C (8, 9) /
     B3TNS3C (8, 9) /
     B3TNS4C (8, 9) /
     B3TNS5C (8, 9) /
     B3TNSTOT (8, 9) /
     B3TBKFP (8) /
     B3TBKCT (998, 999) /
     B3TBKERR (998, 999) /
     B3TBKTOT (998, 999) /
     B3TWLDFP (8) /
     B3TWLD1 (98, 99) /
     B3TWLD2 (98, 99) /
     B3TWLD3 (98, 99) /
     B3TWLD4 (98, 99) /
     B3TWLD5 (98, 99) /
     B3TWLD6 (98, 99) /
     B3TWLD7 (98, 99) /
     B3TWLD8 (98, 99) /
     B3TWLD9 (98, 99) /
     B3TWLD10 (98, 99) /
     B3TWLD11 (98, 99) /
     B3TWLD12 (98, 99) /
     B3TWLD13 (98, 99) /
     B3TWLD14 (98, 99) /
     B3TWLD15 (98, 99) /
     B3TWLD16 (98, 99) /
     B3TWLD17 (98, 99) /
     B3TWLD18 (98, 99) /
     B3TWLD19 (98, 99) /
     B3TWLD20 (98, 99) /
     B3TWLD21 (98, 99) /
     B3TWLD22 (98, 99) /
     B3TWLD23 (98, 99) /
     B3TWLD24 (98, 99) /
     B3TWLD25 (98, 99) /
     B3TWLD26 (98, 99) /
     B3TWLDTU (98, 99) /
     B3TWLDTR (98, 99) /
     B3TWLDTI (98, 99) /
     B3TWLF (8.0, 9.0) /
     B3TCOMPZ2 (8.0, 9.0) /
     B3TEMZ2 (8.0, 9.0) /
     B3TEFZ2 (8.0, 9.0) /
     B3TCOMPZ3 (8.0, 9.0) /
     B3TEMZ3 (8.0, 9.0) /
     B3TEFZ3 (8.0, 9.0) /
     B3TSWN1 (95.0, 98.0, 99.0) /
     B3TSWN2 (95.0, 98.0, 99.0) /
     B3TSWN3 (95.0, 98.0, 99.0) /
     B3TSWN4 (95.0, 98.0, 99.0) /
     B3TSWN5 (95.0, 98.0, 99.0) /
     B3TSWN6 (95.0, 98.0, 99.0) /
     B3TSWN7 (95.0, 98.0, 99.0) /
     B3TSWN8 (95.0, 98.0, 99.0) /
     B3TSWN9 (95.0, 98.0, 99.0) /
     B3TSWN10 (95.0, 98.0, 99.0) /
     B3TSWN11 (95.0, 98.0, 99.0) /
     B3TSWN12 (95.0, 98.0, 99.0) /
     B3TSWN13 (95.0, 98.0, 99.0) /
     B3TSWN14 (95.0, 98.0, 99.0) /
     B3TSWN15 (95.0, 98.0, 99.0) /
     B3TSWN16 (95.0, 98.0, 99.0) /
     B3TSWN17 (95.0, 98.0, 99.0) /
     B3TSWN18 (95.0, 98.0, 99.0) /
     B3TSWN19 (95.0, 98.0, 99.0) /
     B3TSWN20 (95.0, 98.0, 99.0) /
     B3TSWR1 (95.0, 98.0, 99.0) /
     B3TSWR2 (95.0, 98.0, 99.0) /
     B3TSWR3 (95.0, 98.0, 99.0) /
     B3TSWR4 (95.0, 98.0, 99.0) /
     B3TSWR5 (95.0, 98.0, 99.0) /
     B3TSWR6 (95.0, 98.0, 99.0) /
     B3TSWR7 (95.0, 98.0, 99.0) /
     B3TSWR8 (95.0, 98.0, 99.0) /
     B3TSWR9 (95.0, 98.0, 99.0) /
     B3TSWR10 (95.0, 98.0, 99.0) /
     B3TSWR11 (95.0, 98.0, 99.0) /
     B3TSWR12 (95.0, 98.0, 99.0) /
     B3TSWR13 (95.0, 98.0, 99.0) /
     B3TSWR14 (95.0, 98.0, 99.0) /
     B3TSWR15 (95.0, 98.0, 99.0) /
     B3TSWR16 (95.0, 98.0, 99.0) /
     B3TSWR17 (95.0, 98.0, 99.0) /
     B3TSWR18 (95.0, 98.0, 99.0) /
     B3TSWR19 (95.0, 98.0, 99.0) /
     B3TSWR20 (95.0, 98.0, 99.0) /
     B3TSWX1 (95.0, 98.0, 99.0) /
     B3TSWX2 (95.0, 98.0, 99.0) /
     B3TSWX3 (95.0, 98.0, 99.0) /
     B3TSWX4 (95.0, 98.0, 99.0) /
     B3TSWX5 (95.0, 98.0, 99.0) /
     B3TSWX6 (95.0, 98.0, 99.0) /
     B3TSWX7 (95.0, 98.0, 99.0) /
     B3TSWX8 (95.0, 98.0, 99.0) /
     B3TSWX9 (95.0, 98.0, 99.0) /
     B3TSWX10 (95.0, 98.0, 99.0) /
     B3TSWX11 (95.0, 98.0, 99.0) /
     B3TSWX12 (95.0, 98.0, 99.0) /
     B3TSWX13 (95.0, 98.0, 99.0) /
     B3TSWX14 (95.0, 98.0, 99.0) /
     B3TSWX15 (95.0, 98.0, 99.0) /
     B3TSWX16 (95.0, 98.0, 99.0) /
     B3TSWX17 (95.0, 98.0, 99.0) /
     B3TSWX18 (95.0, 98.0, 99.0) /
     B3TSWX19 (95.0, 98.0, 99.0) /
     B3TSWX20 (95.0, 98.0, 99.0) /
     B3TSWX21 (95.0, 98.0, 99.0) /
     B3TSWX22 (95.0, 98.0, 99.0) /
     B3TSWX23 (95.0, 98.0, 99.0) /
     B3TSWX24 (95.0, 98.0, 99.0) /
     B3TSWX25 (95.0, 98.0, 99.0) /
     B3TSWX26 (95.0, 98.0, 99.0) /
     B3TSWX27 (95.0, 98.0, 99.0) /
     B3TSWX28 (95.0, 98.0, 99.0) /
     B3TSWX29 (95.0, 98.0, 99.0) /
     B3TSWX30 (95.0, 98.0, 99.0) /
     B3TSWX31 (95.0, 98.0, 99.0) /
     B3TSWX32 (95.0, 98.0, 99.0) /
     B3TSTN (98) /
     B3TSVN (98) /
     B3TSPN (8.0) /
     B3TSMN (98.0) /
     B3TSTR (98) /
     B3TSVR (98) /
     B3TSPR (8.0) /
     B3TSMR (98.0) /
     B3TSMB (98.0) /
     B3TSTXNO (98) /
     B3TSVXNO (98) /
     B3TSPXNO (8.0) /
     B3TSTXRO (98) /
     B3TSVXRO (98) /
     B3TSPXRO (8.0) /
     B3TSTXBO (98) /
     B3TSVXBO (98) /
     B3TSPXBO (8.0) /
     B3TSTXNS (8) /
     B3TSVXNS (8) /
     B3TSPXNS (8.0) /
     B3TSTXRS (8) /
     B3TSVXRS (8) /
     B3TSPXRS (8.0) /
     B3TSTXBS (8) /
     B3TSVXBS (8) /
     B3TSPXBS (8.0) /
     B3TSTXBB (98) /
     B3TSVXBB (98) /
     B3TSPXBB (8.0) /
     B3TSMXNO (98.0) /
     B3TSMXRO (98.0) /
     B3TSMXBO (98.0) /
     B3TSMXNS (98.0) /
     B3TSMXRS (98.0) /
     B3TSMXBS (98.0) /
     B3TSMXBB (98.0) /
     B3TSCGBA (98.0) /
     B3TSCGBR (98.0) /
     B3TSCGNA (98.0) /
     B3TSCGNR (98.0) /
     B3TSCGRA (98.0) /
     B3TSCGRR (98.0) /
     B3TSCLBA (98.0) /
     B3TSCLBR (98.0) /
     B3TSCLNA (98.0) /
     B3TSCLNR (98.0) /
     B3TSCLRA (98.0) /
     B3TSCLRR (98.0) /
   .

EXECUTE.

* SPSS VARIABLE LEVEL COMMAND.

VARIABLE LEVEL
   M2ID
   M2FAMNUM
   B1PAGE_M2
   B3PIDATE_MO
   B3PIDATE_YR
   B3TWLITU
   B3TWLITR
   B3TWLITI
   B3TDBS
   B3TCTFLU
   B3TCTFLR
   B3TCTFLI
   B3TNS1
   B3TNS2
   B3TNS3
   B3TNS4
   B3TNS5
   B3TNSTOT
   B3TBKCT
   B3TBKERR
   B3TBKTOT
   B3TWLDTU
   B3TWLDTR
   B3TWLDTI
   B3TWLF
   B3TCOMPZ1
   B3TEMZ1
   B3TEFZ1
   B3TCOMPZ2
   B3TEMZ2
   B3TEFZ2
   B3TCOMPZ3
   B3TEMZ3
   B3TEFZ3
   B3TSWN1
   B3TSWN2
   B3TSWN3
   B3TSWN4
   B3TSWN5
   B3TSWN6
   B3TSWN7
   B3TSWN8
   B3TSWN9
   B3TSWN10
   B3TSWN11
   B3TSWN12
   B3TSWN13
   B3TSWN14
   B3TSWN15
   B3TSWN16
   B3TSWN17
   B3TSWN18
   B3TSWN19
   B3TSWN20
   B3TSWR1
   B3TSWR2
   B3TSWR3
   B3TSWR4
   B3TSWR5
   B3TSWR6
   B3TSWR7
   B3TSWR8
   B3TSWR9
   B3TSWR10
   B3TSWR11
   B3TSWR12
   B3TSWR13
   B3TSWR14
   B3TSWR15
   B3TSWR16
   B3TSWR17
   B3TSWR18
   B3TSWR19
   B3TSWR20
   B3TSWX1
   B3TSWX2
   B3TSWX3
   B3TSWX4
   B3TSWX5
   B3TSWX6
   B3TSWX7
   B3TSWX8
   B3TSWX9
   B3TSWX10
   B3TSWX11
   B3TSWX12
   B3TSWX13
   B3TSWX14
   B3TSWX15
   B3TSWX16
   B3TSWX17
   B3TSWX18
   B3TSWX19
   B3TSWX20
   B3TSWX21
   B3TSWX22
   B3TSWX23
   B3TSWX24
   B3TSWX25
   B3TSWX26
   B3TSWX27
   B3TSWX28
   B3TSWX29
   B3TSWX30
   B3TSWX31
   B3TSWX32
   B3TSTN
   B3TSVN
   B3TSPN
   B3TSMN
   B3TSTR
   B3TSVR
   B3TSPR
   B3TSMR
   B3TSMB
   B3TSTXNO
   B3TSVXNO
   B3TSPXNO
   B3TSTXRO
   B3TSVXRO
   B3TSPXRO
   B3TSTXBO
   B3TSVXBO
   B3TSPXBO
   B3TSTXNS
   B3TSVXNS
   B3TSPXNS
   B3TSTXRS
   B3TSVXRS
   B3TSPXRS
   B3TSTXBS
   B3TSVXBS
   B3TSPXBS
   B3TSTXBB
   B3TSVXBB
   B3TSPXBB
   B3TSMXNO
   B3TSMXRO
   B3TSMXBO
   B3TSMXNS
   B3TSMXRS
   B3TSMXBS
   B3TSMXBB
   B3TSCGBA
   B3TSCGBR
   B3TSCGNA
   B3TSCGNR
   B3TSCGRA
   B3TSCGRR
   B3TSCLBA
   B3TSCLBR
   B3TSCLNA
   B3TSCLNR
   B3TSCLRA
   B3TSCLRR
    (scale).

VARIABLE LEVEL
   SAMPLMAJ
   B1PGENDER
   B3TWLIFP
   B3TWLI1
   B3TWLI2
   B3TWLI3
   B3TWLI4
   B3TWLI5
   B3TWLI6
   B3TWLI7
   B3TWLI8
   B3TWLI9
   B3TWLI10
   B3TWLI11
   B3TWLI12
   B3TWLI13
   B3TWLI14
   B3TWLI15
   B3TWLI16
   B3TWLI17
   B3TWLI18
   B3TWLI19
   B3TWLI20
   B3TWLI21
   B3TWLI22
   B3TWLI23
   B3TWLI24
   B3TWLI25
   B3TWLI26
   B3TDBFP
   B3TCTFFP
   B3TNSFP
   B3TNS1C
   B3TNS2C
   B3TNS3C
   B3TNS4C
   B3TNS5C
   B3TBKFP
   B3TWLDFP
   B3TWLD1
   B3TWLD2
   B3TWLD3
   B3TWLD4
   B3TWLD5
   B3TWLD6
   B3TWLD7
   B3TWLD8
   B3TWLD9
   B3TWLD10
   B3TWLD11
   B3TWLD12
   B3TWLD13
   B3TWLD14
   B3TWLD15
   B3TWLD16
   B3TWLD17
   B3TWLD18
   B3TWLD19
   B3TWLD20
   B3TWLD21
   B3TWLD22
   B3TWLD23
   B3TWLD24
   B3TWLD25
   B3TWLD26
   B3TSFV
   B3TSFC
    (nominal).

* Create SPSS system file.

*SAVE OUTFILE="spss-filename.sav".
