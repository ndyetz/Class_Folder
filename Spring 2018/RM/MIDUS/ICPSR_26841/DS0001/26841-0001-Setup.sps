*-------------------------------------------------------------------------*
*                                                                          
*                     SPSS SETUP FILE FOR ICPSR 26841
*       NATIONAL SURVEY OF MIDLIFE IN THE UNITED STATES (MIDUS II):
*                     DAILY STRESS PROJECT, 2004-2009
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
*  data file is physically located (e.g., "c:\temp\26841-0001-data.txt").
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
*  will be saved (e.g., SAVE OUTFILE="c:\spsswin\data\da26841-0001.sav").
*
*-------------------------------------------------------------------------.

* SPSS FILE HANDLE AND DATA LIST COMMANDS.

FILE HANDLE DATA / NAME="data-filename" LRECL=774.
DATA LIST FILE=DATA /
                M2ID 1-5           M2FAMNUM 6-11
          SAMPLMAJ 12-19         B1PAGE_M2 20-24         B1PGENDER 25-32
               B2DDAY 33           B2DIMON 34-35          B2DIYEAR 36-39
              B2DMISS 40              B2DDAYT 41             B2DWEEKD 42
          B2DWAKE1 43-44          B2DWAKE2 45-46             B2DWAKE3 47
          B2DAW1CH 48-49          B2DAW1CM 50-51            B2DA1H 52-53
            B2DA1M 54-55            B2DA2H 56-57            B2DA2M 58-59
            B2DA3H 60-61            B2DA3M 62-63          B2DA3AH2 64-65
          B2DA3AM2 66-67          B2DA3AAP 68-69          B2DA3BH2 70-71
          B2DA3BM2 72-73          B2DA3BAP 74-75            B2DA4H 76-77
            B2DA4M 78-79           B2DAW4H 80-81           B2DAW4M 82-83
           B2DA4AH 84-85           B2DA4AM 86-87          B2DAW5AH 88-89
          B2DAW5AM 90-91          B2DAW5AA 92-93                B2DA9 94
           B2DA9AH 95-96           B2DA9AM 97-98               B2DA10 99
            B2DA10A1 100            B2DA10A2 101            B2DA10A3 102
            B2DA10A4 103            B2DA10A5 104            B2DA10A6 105
            B2DA10A7 106            B2DA10A8 107            B2DA10A9 108
            B2DA1010 109            B2DA1011 110            B2DA1012 111
            B2DA1013 112            B2DA1014 113            B2DA1015 114
            B2DA1016 115            B2DA1017 116            B2DA1018 117
            B2DA1019 118            B2DA1020 119            B2DA1021 120
            B2DA1022 121            B2DA1023 122            B2DA1024 123
            B2DA1025 124        B2DA10BH 125-126        B2DA10BM 127-128
              B2DA11 129            B2DA11A1 130            B2DA11A2 131
            B2DA11A3 132            B2DA11A4 133            B2DA11A5 134
            B2DA11A6 135            B2DA11A7 136            B2DA11A8 137
            B2DA11A9 138            B2DA1110 139            B2DA1111 140
            B2DA1112 141            B2DA1113 142            B2DA1114 143
            B2DA1115 144            B2DA1116 145            B2DA1117 146
            B2DA1118 147            B2DA1119 148            B2DA1120 149
            B2DA1121 150            B2DA1122 151            B2DA1123 152
            B2DA1124 153            B2DA1125 154        B2DA11BH 155-156
        B2DA11BM 157-158              B2DA12 159            B2DA12A1 160
            B2DA12A2 161            B2DA12A3 162            B2DA12A4 163
            B2DA12A5 164            B2DA12A6 165            B2DA12A7 166
            B2DA12A8 167            B2DA12A9 168            B2DA1210 169
            B2DA1211 170            B2DA1212 171            B2DA1213 172
            B2DA1214 173            B2DA1215 174            B2DA1216 175
            B2DA1217 176            B2DA1218 177            B2DA1220 178
            B2DA1221 179            B2DA1222 180            B2DA1223 181
            B2DA1224 182            B2DA1225 183        B2DA12BH 184-185
        B2DA12BM 186-187              B2DA13 188            B2DA13A1 189
            B2DA13A2 190            B2DA13A3 191            B2DA13A4 192
            B2DA13A5 193            B2DA13A6 194            B2DA13A7 195
            B2DA13A8 196            B2DA13A9 197            B2DA1310 198
            B2DA1311 199            B2DA1312 200            B2DA1313 201
            B2DA1314 202            B2DA1315 203            B2DA1316 204
            B2DA1317 205            B2DA1318 206            B2DA1319 207
            B2DA1320 208            B2DA1321 209            B2DA1322 210
            B2DA1323 211            B2DA1324 212            B2DA1325 213
        B2DA13BH 214-215        B2DA13BM 216-217              B2DAC1 218
            B2DAC2D1 219            B2DAC2D2 220            B2DAC2D3 221
            B2DAC2D4 222            B2DAC2D5 223            B2DAC2D6 224
            B2DAC2D7 225            B2DAC2D8 226            B2DAC2D9 227
            B2DAC21A 228            B2DAC21B 229            B2DAC21C 230
            B2DAC21D 231            B2DAC21E 232            B2DAC21F 233
            B2DAC21G 234            B2DAC21H 235            B2DAC21I 236
            B2DAC21J 237            B2DAC21K 238            B2DAC21L 239
            B2DAC21M 240            B2DAC21N 241            B2DAC21O 242
              B2DAC3 243         B2DAC4H 244-245         B2DAC4M 246-247
              B2DB1A 248         B2DB1A2 249-250              B2DB1B 251
         B2DB1B2 252-253              B2DB1C 254         B2DB1C2 255-256
              B2DB1D 257         B2DB1D2 258-259              B2DB1E 260
         B2DB1E2 261-262              B2DB1F 263         B2DB1F2 264-265
              B2DB1G 266         B2DB1G2 267-268              B2DB1H 269
         B2DB1H2 270-271              B2DB1I 272         B2DB1I2 273-274
              B2DB1J 275         B2DB1J2 276-277              B2DB1K 278
         B2DB1K2 279-280              B2DB1L 281         B2DB1L2 282-283
             B2DB1LA 284        B2DB1LA2 285-286              B2DB1M 287
         B2DB1M2 288-289              B2DB1N 290         B2DB1N2 291-292
              B2DB1O 293         B2DB1O2 294-295              B2DB1P 296
         B2DB1P2 297-298              B2DB1Q 299         B2DB1Q2 300-301
              B2DB1R 302         B2DB1R2 303-304              B2DB1S 305
         B2DB1S2 306-307              B2DB1T 308         B2DB1T2 309-310
              B2DB1U 311         B2DB1U2 312-313              B2DB1V 314
         B2DB1V2 315-316              B2DB1W 317         B2DB1W2 318-319
              B2DB1X 320         B2DB1X2 321-322              B2DB1Y 323
         B2DB1Y2 324-325              B2DB1Z 326         B2DB1Z2 327-328
            B2DB1LEG 329        B2DB1LE2 330-331           B2DB2 332-334
           B2DB3 335-337               B2DC1 338               B2DC2 339
               B2DC3 340               B2DC4 341               B2DC5 342
               B2DC6 343               B2DC7 344               B2DC8 345
               B2DC9 346              B2DC10 347              B2DC11 348
              B2DC12 349              B2DC13 350              B2DC14 351
              B2DC15 352              B2DC16 353              B2DC17 354
              B2DC18 355              B2DC19 356              B2DC20 357
              B2DC21 358              B2DC22 359              B2DC23 360
              B2DC24 361              B2DC25 362              B2DC26 363
              B2DC27 364               B2DD1 365          B2DD1A 366-367
              B2DD1B 368               B2DD2 369              B2DD2A 370
               B2DD3 371              B2DD3A 372               B2DD4 373
          B2DD4A 374-375               B2DF1 376          B2DF1A 377-378
             B2DF1A1 379        B2DF1A2H 380-381        B2DF1A2M 382-383
            B2DF1A2A 384              B2DF1C 385            B2DF1WC1 386
            B2DF1WC2 387            B2DF1WC3 388            B2DF1WC4 389
            B2DF1WC5 390            B2DF1WC6 391              B2DF1D 392
              B2DF1E 393              B2DF1F 394              B2DF1G 395
              B2DF1H 396              B2DF1I 397              B2DF1J 398
               B2DF2 399          B2DF2A 400-401             B2DF2A1 402
        B2DF2A2H 403-404        B2DF2A2M 405-406            B2DF2A2A 407
              B2DF2C 408            B2DF2WC1 409            B2DF2WC2 410
            B2DF2WC3 411            B2DF2WC4 412            B2DF2WC5 413
            B2DF2WC6 414              B2DF2D 415              B2DF2E 416
              B2DF2F 417              B2DF2G 418              B2DF2H 419
              B2DF2I 420              B2DF2J 421               B2DF3 422
             B2DF3A1 423        B2DF3A2H 424-425        B2DF3A2M 426-427
            B2DF3A2A 428              B2DF3B 429            B2DF3WB1 430
            B2DF3WB2 431            B2DF3WB3 432            B2DF3WB4 433
            B2DF3WB5 434            B2DF3WB6 435              B2DF3C 436
              B2DF3D 437              B2DF3E 438              B2DF3F 439
              B2DF3G 440              B2DF3H 441              B2DF3I 442
               B2DF4 443             B2DF4A1 444        B2DF4A2H 445-446
        B2DF4A2M 447-448            B2DF4A2A 449              B2DF4B 450
            B2DF4WB1 451            B2DF4WB2 452            B2DF4WB3 453
            B2DF4WB4 454            B2DF4WB5 455            B2DF4WB6 456
              B2DF4C 457              B2DF4D 458              B2DF4E 459
              B2DF4F 460              B2DF4G 461              B2DF4H 462
              B2DF4I 463               B2DF5 464            B2DF5A_1 465
            B2DF5A_2 466            B2DF5A_3 467            B2DF5A_4 468
            B2DF5A_5 469            B2DF5A_6 470             B2DF5A1 471
        B2DF5A2H 472-473        B2DF5A2M 474-475            B2DF5A2A 476
              B2DF5C 477            B2DF5WC1 478            B2DF5WC2 479
            B2DF5WC3 480            B2DF5WC4 481            B2DF5WC5 482
            B2DF5WC6 483              B2DF5D 484              B2DF5E 485
              B2DF5F 486              B2DF5G 487              B2DF5H 488
              B2DF5I 489              B2DF5J 490               B2DF6 491
          B2DF6A 492-493             B2DF6A1 494        B2DF6A2H 495-496
        B2DF6A2M 497-498            B2DF6A2A 499              B2DF6C 500
            B2DF6WC1 501            B2DF6WC2 502            B2DF6WC3 503
            B2DF6WC4 504            B2DF6WC5 505            B2DF6WC6 506
              B2DF6D 507              B2DF6E 508              B2DF6F 509
              B2DF6G 510              B2DF6H 511              B2DF6I 512
              B2DF6J 513               B2DF7 514              B2DF7A 515
        B2DF7A1H 516-517        B2DF7A1M 518-519            B2DF7A1A 520
              B2DF7B 521            B2DF7WB1 522            B2DF7WB2 523
            B2DF7WB3 524            B2DF7WB4 525            B2DF7WB5 526
            B2DF7WB6 527              B2DF7C 528              B2DF7D 529
              B2DF7E 530              B2DF7F 531              B2DF7G 532
              B2DF7H 533              B2DF7I 534               B2DF8 535
          B2DF8A 536-537             B2DF8A1 538        B2DF8A2H 539-540
        B2DF8A2M 541-542            B2DF8A2A 543               B2DF9 544
          B2DF9A 545-546             B2DF9A1 547          B2DF9H 548-549
          B2DF9M 550-551             B2DF9AP 552              B2DF10 553
         B2DF10A 554-555            B2DF10A1 556         B2DF10H 557-558
         B2DF10M 559-560            B2DF10AP 561              B2DF11 562
         B2DF11A 563-564            B2DF11A1 565         B2DF11H 566-567
         B2DF11M 568-569            B2DF11AP 570              B2DF12 571
         B2DF12A 572-573            B2DF12A1 574         B2DF12H 575-576
         B2DF12M 577-578            B2DF12AP 579            B2DH1_D8 580
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
            B2DK3AD8 614             B2DS14A 615             B2DS14B 616
             B2DS14C 617             B2DS14D 618             B2DS14E 619
             B2DS14F 620             B2DS14G 621             B2DS14H 622
             B2DS14I 623            B2DS15_1 624            B2DS15_2 625
            B2DS15_3 626            B2DS15_4 627            B2DS15_5 628
            B2DS15_6 629            B2DS15_7 630            B2DS15_8 631
            B2DS15_9 632            B2DS1510 633            B2DS1511 634
            B2DS1512 635             B2DMED1 636             B2DMED2 637
             B2DMED3 638             B2DMED4 639             B2DMED5 640
             B2DMED6 641             B2DMED7 642             B2DMED8 643
             B2DMED9 644            B2DMED10 645             B2DCORT 646
             B2DCDAY 647            B2DSMART 648            B2DCWDAY 649
     B2DCORW 650-663 (5)     B2DCORA 664-677 (5)     B2DCORL 678-691 (5)
     B2DCORB 692-705 (5)    B2DCORWT 706-709 (2)    B2DCORAT 710-713 (2)
    B2DCORLT 714-717 (2)    B2DCORBT 718-721 (2)            B2DTZONE 722
            B2DN_STR 723            B2DA_STR 724        B2DSSEVS 725-726
    B2DSSEVA 727-729 (2)        B2DSNEGS 730-731    B2DSNEGA 732-734 (2)
    B2DSAPRA 735-737 (2)    B2DSAPRB 738-740 (2)    B2DSAPRC 741-743 (2)
    B2DSAPRD 744-746 (2)    B2DSAPRE 747-749 (2)    B2DSAPRF 750-752 (2)
    B2DSAPRG 753-755 (2)        B2DSCOTS 756-757    B2DSCOTA 758-760 (2)
        B2DN_SYM 761-762            B2DA_SYM 763    B2DSYMAV 764-766 (2)
            B2DN_POS 767            B2DA_POS 768    B2DPOSAV 769-771 (2)
    B2DNEGAV 772-774 (2)
   .

* SPSS VARIABLE LABELS COMMAND.

VARIABLE LABELS
   M2ID      'MIDUS 2 ID number' /
   M2FAMNUM  'MIDUS 2 Family number' /
   SAMPLMAJ  'Major sample identification (aka Sample)' /
   B1PAGE_M2 'Age determined by subtracting DOB_Final from b1ipidate' /
   B1PGENDER 'Gender' /
   B2DDAY    'Interview day' /
   B2DIMON   'Interview date-month' /
   B2DIYEAR  'Interview date-year' /
   B2DMISS   'Missed phone interview' /
   B2DDAYT   'Interview during daytime or evening' /
   B2DWEEKD  'What day of the week?' /
   B2DWAKE1  'What time did you wake up today?H' /
   B2DWAKE2  'What time did you wake up today?M' /
   B2DWAKE3  'What time did you wake up today?A/P' /
   B2DAW1CH  'How much time did you spend sleeping?H' /
   B2DAW1CM  'How much time did you spend sleeping?M' /
   B2DA1H    'How much time did you spend with child?H' /
   B2DA1M    'How much time did you spend with child?M' /
   B2DA2H    'How much time did you spend on chores?H' /
   B2DA2M    'How much time did you spend on chores?M' /
   B2DA3H    'How much time did you spend on work?H' /
   B2DA3M    'How much time did you spend on work?M' /
   B2DA3AH2  'What time did you begin this work?H' /
   B2DA3AM2  'What time did you begin this work?M' /
   B2DA3AAP  'What time did you begin this work?A/P' /
   B2DA3BH2  'What time did you finish this work?H' /
   B2DA3BM2  'What time did you finish this work?M' /
   B2DA3BAP  'What time did you finish this work?A/P' /
   B2DA4H    'How much time did you spend on leisure?H' /
   B2DA4M    'How much time did you spend on leisure?M' /
   B2DAW4H   'How much time did you spend on TV?H' /
   B2DAW4M   'How much time did you spend on TV?M' /
   B2DA4AH   'How much time spent on phy activity?H' /
   B2DA4AM   'How much time spent on phy activity?M' /
   B2DAW5AH  'What time did you begin phy activity?H' /
   B2DAW5AM  'What time did you begin phy activity?M' /
   B2DAW5AA  'What time did you begin phy activity?AP' /
   B2DA9     'Did you spend time on volunteer work?' /
   B2DA9AH   'How much time spent on volunteer work?H' /
   B2DA9AM   'How much time spent on volunteer work?M' /
   B2DA10    'Did you spend time giving unpaid assist?' /
   B2DA10A1  'Who you gave unpaid assist? Spouse' /
   B2DA10A2  'Who you gave unpaid assist? Child' /
   B2DA10A3  'Who you gave unpaid assist? Parent' /
   B2DA10A4  'Who you gave unpaid assist? Sibling' /
   B2DA10A5  'Who you gave unpaid assist? Ot relative' /
   B2DA10A6  'Who you gave unpaid assist? Friend' /
   B2DA10A7  'Who you gave unpaid assist? Neighbor' /
   B2DA10A8  'Who you gave unpaid assist? Coworker' /
   B2DA10A9  'Who you gave unpaid assist? Boss' /
   B2DA1010  'Who you gave unpaid assist? Employee' /
   B2DA1011  'Who you gave unpaid assist? Other' /
   B2DA1012  'Who you gave unpaid assist? Stranger' /
   B2DA1013  'Who you gave unpaid assist? Relig grp' /
   B2DA1014  'Who you gave unpaid assist? Selfhelp gp' /
   B2DA1015  'Who you gave unpaid assist? Client' /
   B2DA1016  'Who you gave unpaid assist? Other Group' /
   B2DA1017  'Who you gave unpaid assist? Anyone else' /
   B2DA1018  'Who you gave unpaid assist? Don''t know' /
   B2DA1019  'Who you gave unpaid assist? Refused' /
   B2DA1020  'Who you gave unpaid assist? Landlord' /
   B2DA1021  'Who you gave unpaid assist? Family' /
   B2DA1022  'Who you gave unpaid assist? Pets' /
   B2DA1023  'Who you gave unpaid assist? Health prof' /
   B2DA1024  'Who you gave unpaid assist? Home related' /
   B2DA1025  'Who you gave unpaid assist? No one invol' /
   B2DA10BH  'How much time did you spend helping?H' /
   B2DA10BM  'How much time did you spend helping?M' /
   B2DA11    'Did you receive any unpaid assistance?' /
   B2DA11A1  'Who gave you unpaid assist? Spouse' /
   B2DA11A2  'Who gave you unpaid assist? Child' /
   B2DA11A3  'Who gave you unpaid assist? Parent' /
   B2DA11A4  'Who gave you unpaid assist? Sibling' /
   B2DA11A5  'Who gave you unpaid assist? Ot relative' /
   B2DA11A6  'Who gave you unpaid assist? Friend' /
   B2DA11A7  'Who gave you unpaid assist? Neighbor' /
   B2DA11A8  'Who gave you unpaid assist? Coworker' /
   B2DA11A9  'Who gave you unpaid assist? Boss' /
   B2DA1110  'Who gave you unpaid assist? Employee' /
   B2DA1111  'Who gave you unpaid assist? Relig grp' /
   B2DA1112  'Who gave you unpaid assist? Government' /
   B2DA1113  'Who gave you unpaid assist? Nongov grp' /
   B2DA1114  'Who gave you unpaid assist? Other' /
   B2DA1115  'Who gave you unpaid assist? Stranger' /
   B2DA1116  'Who gave you unpaid assist? Client' /
   B2DA1117  'Who gave you unpaid assist? Anyone else' /
   B2DA1118  'Who gave you unpaid assist? Don''t know' /
   B2DA1119  'Who gave you unpaid assist? Refused' /
   B2DA1120  'Who gave you unpaid assist? Landlord' /
   B2DA1121  'Who gave you unpaid assist? Family' /
   B2DA1122  'Who gave you unpaid assist? Pets' /
   B2DA1123  'Who gave you unpaid assist? Health prof' /
   B2DA1124  'Who gave you unpaid assist? Home related' /
   B2DA1125  'Who gave you unpaid assist? No one invol' /
   B2DA11BH  'How much time received unpaid assist?H' /
   B2DA11BM  'How much time received unpaid assist?M' /
   B2DA12    'Did you give emotional support?' /
   B2DA12A1  'Who you gave emotional sup? Spouse' /
   B2DA12A2  'Who you gave emotional sup? Child' /
   B2DA12A3  'Who you gave emotional sup? Parent' /
   B2DA12A4  'Who you gave emotional sup? Sibling' /
   B2DA12A5  'Who you gave emotional sup? Ot relative' /
   B2DA12A6  'Who you gave emotional sup? Friend' /
   B2DA12A7  'Who you gave emotional sup? Neighbor' /
   B2DA12A8  'Who you gave emotional sup? Coworker' /
   B2DA12A9  'Who you gave emotional sup? Boss' /
   B2DA1210  'Who you gave emotional sup? Employee' /
   B2DA1211  'Who you gave emotional sup? Other' /
   B2DA1212  'Who you gave emotional sup? Stranger' /
   B2DA1213  'Who you gave emotional sup? Relig grp' /
   B2DA1214  'Who you gave emotional sup? Selfhelp gp' /
   B2DA1215  'Who you gave emotional sup? Client' /
   B2DA1216  'Who you gave emotional sup? Anyone else' /
   B2DA1217  'Who you gave emotional sup? Don''t know' /
   B2DA1218  'Who you gave emotional sup? Refused' /
   B2DA1220  'Who you gave emotional sup? Landlord' /
   B2DA1221  'Who you gave emotional sup? Family' /
   B2DA1222  'Who you gave emotional sup? Pets' /
   B2DA1223  'Who you gave emotional sup? Health prof' /
   B2DA1224  'Who you gave emotional sup? Home related' /
   B2DA1225  'Who you gave emotional sup? No one invol' /
   B2DA12BH  'How much time you gave emotional sup?H' /
   B2DA12BM  'How much time you gave emotional sup?M' /
   B2DA13    'Did you receive any emotional sup?' /
   B2DA13A1  'Who gave you emotional sup? Spouse' /
   B2DA13A2  'Who gave you emotional sup? Child' /
   B2DA13A3  'Who gave you emotional sup? Parent' /
   B2DA13A4  'Who gave you emotional sup? Sibling' /
   B2DA13A5  'Who gave you emotional sup? Ot relative' /
   B2DA13A6  'Who gave you emotional sup? Friend' /
   B2DA13A7  'Who gave you emotional sup? Neighbor' /
   B2DA13A8  'Who gave you emotional sup? Coworker' /
   B2DA13A9  'Who gave you emotional sup? Boss' /
   B2DA1310  'Who gave you emotional sup? Employee' /
   B2DA1311  'Who gave you emotional sup? Relig grp' /
   B2DA1312  'Who gave you emotional sup? Gov grp' /
   B2DA1313  'Who gave you emotional sup? Nongov grp' /
   B2DA1314  'Who gave you emotional sup? Other' /
   B2DA1315  'Who gave you emotional sup? Stranger' /
   B2DA1316  'Who gave you emotional sup? Client' /
   B2DA1317  'Who gave you emotional sup? Other group' /
   B2DA1318  'Who gave you emotional sup? Don''t know' /
   B2DA1319  'Who gave you emotional sup? Refused' /
   B2DA1320  'Who gave you emotional sup? Landlord' /
   B2DA1321  'Who gave you emotional sup? Family' /
   B2DA1322  'Who gave you emotional sup? Pets' /
   B2DA1323  'Who gave you emotional sup? Health prof' /
   B2DA1324  'Who gave you emotional sup? Home related' /
   B2DA1325  'Who gave you emotional sup? No one invol' /
   B2DA13BH  'How much time you received emotion sup?H' /
   B2DA13BM  'How much time you received emotion sup?M' /
   B2DAC1    'Did you provide assist person/disable?' /
   B2DAC2D1  'Who you gave dis assistance? Spouse' /
   B2DAC2D2  'Who you gave dis assistance? Child' /
   B2DAC2D3  'Who you gave dis assistance? Parent' /
   B2DAC2D4  'Who you gave dis assistance? Sibling' /
   B2DAC2D5  'Who you gave dis assistance? Ot relative' /
   B2DAC2D6  'Who you gave dis assistance? Friend' /
   B2DAC2D7  'Who you gave dis assistance? Neighbor' /
   B2DAC2D8  'Who you gave dis assistance? Coworker' /
   B2DAC2D9  'Who you gave dis assistance? Boss' /
   B2DAC21A  'Who you gave dis assistance? Employee' /
   B2DAC21B  'Who you gave dis assistance? Other' /
   B2DAC21C  'Who you gave dis assistance? Stranger' /
   B2DAC21D  'Who you gave dis assistance? Relig grp' /
   B2DAC21E  'Who you gave dis assistance? Selfhelp gp' /
   B2DAC21F  'Who you gave dis assistance? Client' /
   B2DAC21G  'Who you gave dis assistance? Other group' /
   B2DAC21H  'Who you gave dis assistance? Anyone else' /
   B2DAC21I  'Who you gave dis assistance? Don''t know' /
   B2DAC21J  'Who you gave dis assistance? Refused' /
   B2DAC21K  'Who you gave dis assistance? Landlord' /
   B2DAC21L  'Who you gave dis assistance? Family' /
   B2DAC21M  'Who you gave dis assistance? Pets' /
   B2DAC21N  'Who you gave dis assistance? Health prof' /
   B2DAC21O  'Who you gave dis assistance? Home relate' /
   B2DAC3    'How you describe their disability?' /
   B2DAC4H   'How much time provide dis assistance?H' /
   B2DAC4M   'How much time provide dis assistance?M' /
   B2DB1A    'Experienced a headache?' /
   B2DB1A2   'Severity of headache?' /
   B2DB1B    'Experienced a backache?' /
   B2DB1B2   'Severity of backache?' /
   B2DB1C    'Experienced muscle soreness?' /
   B2DB1C2   'Severity of muscle soreness?' /
   B2DB1D    'Experienced fatigue?' /
   B2DB1D2   'Severity of fatigue?' /
   B2DB1E    'Experienced a joint pain?' /
   B2DB1E2   'Severity of joint pain?' /
   B2DB1F    'Experienced muscle weakness?' /
   B2DB1F2   'Severity of muscle weakness?' /
   B2DB1G    'Experienced a cough?' /
   B2DB1G2   'Severity of cough?' /
   B2DB1H    'Experienced sore throat?' /
   B2DB1H2   'Severity of sore throat?' /
   B2DB1I    'Experienced a fever?' /
   B2DB1I2   'Severity of fever?' /
   B2DB1J    'Experienced a chill?' /
   B2DB1J2   'Severity of chill?' /
   B2DB1K    'Experienced other cold and flu symptoms?' /
   B2DB1K2   'Severity of other cold and flu symptoms?' /
   B2DB1L    'Experienced nausea?' /
   B2DB1L2   'Severity of nausea?' /
   B2DB1LA   'Experienced allergies?' /
   B2DB1LA2  'Severity of allergies?' /
   B2DB1M    'Experienced diarrhea?' /
   B2DB1M2   'Severity of diarrhea?' /
   B2DB1N    'Experienced constipation?' /
   B2DB1N2   'Severity of constipation?' /
   B2DB1O    'Experienced poor appetite?' /
   B2DB1O2   'Severity of poor appetite?' /
   B2DB1P    'Experienced other stomach problems?' /
   B2DB1P2   'Severity of other stomach problems?' /
   B2DB1Q    'Experienced chest pain?' /
   B2DB1Q2   'Severity of chest pain?' /
   B2DB1R    'Experienced dizziness?' /
   B2DB1R2   'Severity of dizziness?' /
   B2DB1S    'Experienced shortness of breath?' /
   B2DB1S2   'Severity of shortness of breath?' /
   B2DB1T    'Experienced menstrual related symptoms?' /
   B2DB1T2   'Severity of menstrual related symptoms?' /
   B2DB1U    'Experienced hot flashes or flushes?' /
   B2DB1U2   'Severity of hot flashes or flushes?' /
   B2DB1V    'Experienced any other physical symptoms?' /
   B2DB1V2   'Severity of any other physical symptoms?' /
   B2DB1W    'Experienced skin related symptoms?' /
   B2DB1W2   'Severity of skin related symptoms?' /
   B2DB1X    'Experienced eye related symptoms?' /
   B2DB1X2   'Severity of eye related symptoms?' /
   B2DB1Y    'Experienced ear related symptoms?' /
   B2DB1Y2   'Severity of ear related symptoms?' /
   B2DB1Z    'Experienced teeth related symptoms?' /
   B2DB1Z2   'Severity of teeth related symptoms?' /
   B2DB1LEG  'Experienced leg/foot related symptoms?' /
   B2DB1LE2  'Severity of leg/foot related symptoms?' /
   B2DB2     'How many cigarettes did you smoke?' /
   B2DB3     'How many drinks did you have?' /
   B2DC1     'Did you feel restless or fidgety?' /
   B2DC2     'Did you feel nervous?' /
   B2DC3     'Did you feel worthless?' /
   B2DC4     'Did you feel so sad nothing cheer up?' /
   B2DC5     'Did you feel that everything effort?' /
   B2DC6     'Did you feel hopeless?' /
   B2DC7     'Did you feel in good spirits?' /
   B2DC8     'Did you feel cheerful?' /
   B2DC9     'Did you feel extremely happy?' /
   B2DC10    'Did you feel calm and peaceful?' /
   B2DC11    'Did you feel satisfied?' /
   B2DC12    'Did you feel full of life?' /
   B2DC13    'Did you feel lonely?' /
   B2DC14    'Did you feel afraid?' /
   B2DC15    'Did you feel jittery?' /
   B2DC16    'Did you feel irritable?' /
   B2DC17    'Did you feel ashamed?' /
   B2DC18    'Did you feel upset?' /
   B2DC19    'Did you feel angry?' /
   B2DC20    'Did you feel frustrated?' /
   B2DC21    'Did you feel close to others?' /
   B2DC22    'Did you feel like you belong?' /
   B2DC23    'Did you feel enthusiastic?' /
   B2DC24    'Did you feel attentive?' /
   B2DC25    'Did you feel proud?' /
   B2DC26    'Did you feel active?' /
   B2DC27    'Did you feel confident?' /
   B2DD1     'Did you cut back on work today?' /
   B2DD1A    'How much work did you get done?' /
   B2DD1B    'Main reason for work cutback' /
   B2DD2     'Did the quality of your work suffer?' /
   B2DD2A    'What was the main reason for this?' /
   B2DD3     'Did you spend less time with people?' /
   B2DD3A    'Main reason for less time spent?' /
   B2DD4     'Main reason for cut back of norm activity?' /
   B2DD4A    'Who needed your help?' /
   B2DF1     'Did you have an argument/disagreement?' /
   B2DF1A    'With whom-argument?' /
   B2DF1A1   'When did it happen?' /
   B2DF1A2H  'What time of day?H' /
   B2DF1A2M  'What time of day?M' /
   B2DF1A2A  'What time of day?A/P' /
   B2DF1C    'How stressful was this for you?' /
   B2DF1WC1  'How angry were you feeling?' /
   B2DF1WC2  'How nervous or anxious were you feeling?' /
   B2DF1WC3  'How sad were you feeling?' /
   B2DF1WC4  'How shameful were you feeling?' /
   B2DF1WC5  'How much control over the situation?' /
   B2DF1WC6  'Is the issue resolved?' /
   B2DF1D    'How much risk disrupting daily routine?' /
   B2DF1E    'How much risk your financial situation?' /
   B2DF1F    'How much risk you feel about yourself?' /
   B2DF1G    'How much risk people feel about you?' /
   B2DF1H    'How much risk your physical health?' /
   B2DF1I    'How much risk the health of someone?' /
   B2DF1J    'How much risk your plans for the future?' /
   B2DF2     'Did you avoid a disagreement?' /
   B2DF2A    'With whom-avoid a disagreement?' /
   B2DF2A1   'When did it happen?' /
   B2DF2A2H  'What time of day?H' /
   B2DF2A2M  'What time of day?M' /
   B2DF2A2A  'What time of day?A/P' /
   B2DF2C    'How stressful was this for you?' /
   B2DF2WC1  'How angry were you feeling?' /
   B2DF2WC2  'How nervous or anxious were you feeling?' /
   B2DF2WC3  'How sad were you feeling?' /
   B2DF2WC4  'How shameful were you feeling?' /
   B2DF2WC5  'How much control over the situation?' /
   B2DF2WC6  'Is the issue resolved?' /
   B2DF2D    'How much risk disrupting daily routine?' /
   B2DF2E    'How much risk your financial situation?' /
   B2DF2F    'How much risk you feel about yourself?' /
   B2DF2G    'How much risk people feel about you?' /
   B2DF2H    'How much risk your physical health?' /
   B2DF2I    'How much risk the health of someone?' /
   B2DF2J    'How much risk your plans for the future?' /
   B2DF3     'Did anything happen at work/school?' /
   B2DF3A1   'When did it happen?' /
   B2DF3A2H  'What time of day?H' /
   B2DF3A2M  'What time of day?M' /
   B2DF3A2A  'What time of day?A/P' /
   B2DF3B    'How stressful was this for you?' /
   B2DF3WB1  'How angry were you feeling?' /
   B2DF3WB2  'How nervous or anxious were you feeling?' /
   B2DF3WB3  'How sad were you feeling?' /
   B2DF3WB4  'How shameful were you feeling?' /
   B2DF3WB5  'How much control over the situation?' /
   B2DF3WB6  'Is the issue resolved?' /
   B2DF3C    'How much risk disrupting daily routine?' /
   B2DF3D    'How much risk your financial situation?' /
   B2DF3E    'How much risk you feel about yourself?' /
   B2DF3F    'How much risk people feel about you?' /
   B2DF3G    'How much risk your physical health?' /
   B2DF3H    'How much risk the health of someone?' /
   B2DF3I    'How much risk your plans for the future?' /
   B2DF4     'Did anything happen at home?' /
   B2DF4A1   'When did it happen?' /
   B2DF4A2H  'What time of day?H' /
   B2DF4A2M  'What time of day?M' /
   B2DF4A2A  'What time of day?A/P' /
   B2DF4B    'How stressful was this for you?' /
   B2DF4WB1  'How angry were you feeling?' /
   B2DF4WB2  'How nervous or anxious were you feeling?' /
   B2DF4WB3  'How sad were you feeling?' /
   B2DF4WB4  'How shameful were you feeling?' /
   B2DF4WB5  'How much control over the situation?' /
   B2DF4WB6  'Is the issue resolved?' /
   B2DF4C    'How much risk disrupting daily routine?' /
   B2DF4D    'How much risk your financial situation?' /
   B2DF4E    'How much risk you feel about yourself?' /
   B2DF4F    'How much risk people feel about you?' /
   B2DF4G    'How much risk your physical health?' /
   B2DF4H    'How much risk the health of someone?' /
   B2DF4I    'How much risk your plans for the future?' /
   B2DF5     'Did any discrimination happened to you?' /
   B2DF5A_1  'Basis for discrimination-race' /
   B2DF5A_2  'Basis for discrimination-sex' /
   B2DF5A_3  'Basis for discrimination-age' /
   B2DF5A_4  'Basis for discrimination-something else' /
   B2DF5A_5  'Basis for discrimination-don''t know' /
   B2DF5A_6  'Basis for discrimination-refused' /
   B2DF5A1   'When did it happen?' /
   B2DF5A2H  'What time of day?H' /
   B2DF5A2M  'What time of day?M' /
   B2DF5A2A  'What time of day?A/P' /
   B2DF5C    'How stressful was this for you?' /
   B2DF5WC1  'How angry were you feeling?' /
   B2DF5WC2  'How nervous or anxious were you feeling?' /
   B2DF5WC3  'How sad were you feeling?' /
   B2DF5WC4  'How shameful were you feeling?' /
   B2DF5WC5  'How much control over the situation?' /
   B2DF5WC6  'Is the issue resolved?' /
   B2DF5D    'How much risk disrupting daily routine?' /
   B2DF5E    'How much risk your financial situation?' /
   B2DF5F    'How much risk you feel about yourself?' /
   B2DF5G    'How much risk people feel about you?' /
   B2DF5H    'How much risk your physical health?' /
   B2DF5I    'How much risk the health of someone?' /
   B2DF5J    'How much risk your plans for the future?' /
   B2DF6     'Did anything happen to friend stres you?' /
   B2DF6A    'Who did this happen?' /
   B2DF6A1   'When did it happen?' /
   B2DF6A2H  'What time of day?H' /
   B2DF6A2M  'What time of day?M' /
   B2DF6A2A  'What time of day?A/P' /
   B2DF6C    'How stressful was this for you?' /
   B2DF6WC1  'How angry were you feeling?' /
   B2DF6WC2  'How nervous or anxious were you feeling?' /
   B2DF6WC3  'How sad were you feeling?' /
   B2DF6WC4  'How shameful were you feeling?' /
   B2DF6WC5  'How much control over the situation?' /
   B2DF6WC6  'Is the issue resolved?' /
   B2DF6D    'How much risk disrupting daily routine?' /
   B2DF6E    'How much risk your financial situation?' /
   B2DF6F    'How much risk you feel about yourself?' /
   B2DF6G    'How much risk people feel about you?' /
   B2DF6H    'How much risk your physical health?' /
   B2DF6I    'How much risk the health of someone?' /
   B2DF6J    'How much risk your plans for the future?' /
   B2DF7     'Did anything else happen to you?' /
   B2DF7A    'When did it happen?' /
   B2DF7A1H  'What time of day?H' /
   B2DF7A1M  'What time of day?M' /
   B2DF7A1A  'What time of day?A/P' /
   B2DF7B    'How stressful was this for you?' /
   B2DF7WB1  'How angry were you feeling?' /
   B2DF7WB2  'How nervous or anxious were you feeling?' /
   B2DF7WB3  'How sad were you feeling?' /
   B2DF7WB4  'How shameful were you feeling?' /
   B2DF7WB5  'How much control over the situation?' /
   B2DF7WB6  'Is the issue resolved?' /
   B2DF7C    'How much risk disrupting daily routine?' /
   B2DF7D    'How much risk your financial situation?' /
   B2DF7E    'How much risk you feel about yourself?' /
   B2DF7F    'How much risk people feel about you?' /
   B2DF7G    'How much risk your physical health?' /
   B2DF7H    'How much risk the health of someone?' /
   B2DF7I    'How much risk your plans for the future?' /
   B2DF8     'Have a positive interaction w/someone?' /
   B2DF8A    'With whom-positive?' /
   B2DF8A1   'When did it happen?' /
   B2DF8A2H  'What time of day?H' /
   B2DF8A2M  'What time of day?M' /
   B2DF8A2A  'What time of day?A/P' /
   B2DF9     'Have a positive experience at work?' /
   B2DF9A    'With whom-positive at work?' /
   B2DF9A1   'When did it happen?' /
   B2DF9H    'What time of day?H' /
   B2DF9M    'What time of day?M' /
   B2DF9AP   'What time of day?A/P' /
   B2DF10    'Have a positive experience at home?' /
   B2DF10A   'With whom-positive at home?' /
   B2DF10A1  'When did it happen?' /
   B2DF10H   'What time of day?H' /
   B2DF10M   'What time of day?M' /
   B2DF10AP  'What time of day?A/P' /
   B2DF11    'Anything happened to friend pos to you?' /
   B2DF11A   'With whom-to others positive to you?' /
   B2DF11A1  'When did it happen?' /
   B2DF11H   'What time of day?H' /
   B2DF11M   'What time of day?M' /
   B2DF11AP  'What time of day?A/P' /
   B2DF12    'Anything else positive happened?' /
   B2DF12A   'With whom-anything else?' /
   B2DF12A1  'When did it happen?' /
   B2DF12H   'What time of day?H' /
   B2DF12M   'What time of day?M' /
   B2DF12AP  'What time of day?A/P' /
   B2DH1_D8  'Past 7 days, feel restless or fidgety?' /
   B2DH2_D8  'Past 7 days, feel nervous?' /
   B2DH3_D8  'Past 7 days, feel worthless?' /
   B2DH4_D8  'Past 7 days, feel sad nothing cheer up?' /
   B2DH5_D8  'Past 7 days, feel everything effort?' /
   B2DH6_D8  'Past 7 days, feel hopeless?' /
   B2DH7_D8  'Past 7 days, feel lonely?' /
   B2DH8_D8  'Past 7 days, feel afraid?' /
   B2DH9_D8  'Past 7 days, feel jittery?' /
   B2DH10D8  'Past 7 days, feel irritable?' /
   B2DH11D8  'Past 7 days, feel ashamed?' /
   B2DH12D8  'Past 7 days, feel upset?' /
   B2DH13D8  'Past 7 days, feel angry?' /
   B2DH14D8  'Past 7 days, feel frustrated?' /
   B2DI1_D8  'More/less often negative feeling 7 day?' /
   B2DI1AD8  'How much often negative feeling 7 days?' /
   B2DJ1_D8  'Past 7 days, feel in goodspirits?' /
   B2DJ2_D8  'Past 7 days, feel cheerful?' /
   B2DJ3_D8  'Past 7 days, feel extremely happy?' /
   B2DJ4_D8  'Past 7 days, feel calm and peaceful?' /
   B2DJ5_D8  'Past 7 days, feel satisfied?' /
   B2DJ6_D8  'Past 7 days, feel full of life?' /
   B2DJ7_D8  'Past 7 days, feel close to others?' /
   B2DJ8_D8  'Past 7 days, feel like you belong?' /
   B2DJ9_D8  'Past 7 days, feel enthusiastic?' /
   B2DJ10D8  'Past 7 days, feel attentive?' /
   B2DJ11D8  'Past 7 days, feel proud?' /
   B2DJ12D8  'Past 7 days, feel active?' /
   B2DJ13D8  'Past 7 days, feel confident?' /
   B2DK1_D8  'More/less often positive feeling 7 days?' /
   B2DK1AD8  'How much often positive feeling 7 days?' /
   B2DK2_D8  'More or fewer health problems 7 days?' /
   B2DK2AD8  'How much health problems 7 days?' /
   B2DK3_D8  'More/less stress 7 days?' /
   B2DK3AD8  'How much stress 7 days?' /
   B2DS14A   'You treated w/less courtesy than others?' /
   B2DS14B   'You treated w/less respect than others?' /
   B2DS14C   'You received poorer service than others?' /
   B2DS14D   'People acted as if you are not smart?' /
   B2DS14E   'People acted as if afraid of you?' /
   B2DS14F   'People acted as if you are dishonest?' /
   B2DS14G   'People acted as if you are not as good?' /
   B2DS14H   'You were called names or insulted' /
   B2DS14I   'You were threatened or harassed' /
   B2DS15_1  'Reason treated_your age' /
   B2DS15_2  'Reason treated_your gender' /
   B2DS15_3  'Reason treated_your race' /
   B2DS15_4  'Reason treated_your ethnicity/national' /
   B2DS15_5  'Reason treated_your religion' /
   B2DS15_6  'Reason treated_your height or weight' /
   B2DS15_7  'Reason treated_other appearance' /
   B2DS15_8  'Reason treated_physical disability' /
   B2DS15_9  'Reason treated_your sexual orientation' /
   B2DS1510  'Reason treated_other reason' /
   B2DS1511  'Reason treated_don''t know' /
   B2DS1512  'Reason treated_refused' /
   B2DMED1   'Over the counter or prescription allergy' /
   B2DMED2   'A steroid inhaler' /
   B2DMED3   'Other steroid meds' /
   B2DMED4   'Meds or creams containing cortisone' /
   B2DMED5   'Birth control pills' /
   B2DMED6   'Other hormonal meds' /
   B2DMED7   'Anti-depressant or anti-anxiety meds' /
   B2DMED8   'Don''t know' /
   B2DMED9   'Refused' /
   B2DMED10  'None' /
   B2DCORT   'Participant provided saliva' /
   B2DCDAY   'Cortisol day' /
   B2DSMART  'Provided smartbox data' /
   B2DCWDAY  'Cortisol on wrong days' /
   B2DCORW   'Wake cortisol' /
   B2DCORA   '30 Minutes after wake cortisol' /
   B2DCORL   'Lunch cortisol' /
   B2DCORB   'Before bed cortisol' /
   B2DCORWT  'Cortisol collection time-Wake' /
   B2DCORAT  'Cortisol collection time-30 mins' /
   B2DCORLT  'Cortisol collection time-Lunch' /
   B2DCORBT  'Cortisol collection time-Bed' /
   B2DTZONE  'Time zone' /
   B2DN_STR  'Number of stressors' /
   B2DA_STR  'Any stressor' /
   B2DSSEVS  'Stressor severity sum' /
   B2DSSEVA  'Stressor severity average' /
   B2DSNEGS  'Stressor negative affect sum' /
   B2DSNEGA  'Stressor negative affect average' /
   B2DSAPRA  'Average_Risk disrupting daily routine' /
   B2DSAPRB  'Average_Risk your financial situation' /
   B2DSAPRC  'Average_Risk you feel about yourself' /
   B2DSAPRD  'Average_Risk people feel about you' /
   B2DSAPRE  'Average_Risk your physical health' /
   B2DSAPRF  'Average_Risk the health of someone' /
   B2DSAPRG  'Average_Risk your plans for the future' /
   B2DSCOTS  'Stressor control sum' /
   B2DSCOTA  'Stressor control average' /
   B2DN_SYM  'Number of physical symptoms' /
   B2DA_SYM  'Any physical symptom' /
   B2DSYMAV  'Physical symptoms severity average' /
   B2DN_POS  'Number of positive events' /
   B2DA_POS  'Any positive event' /
   B2DPOSAV  'Positive affect average' /
   B2DNEGAV  'Negative affect average' /
   .


* SPSS VALUE LABELS COMMAND.

VALUE LABELS
   SAMPLMAJ  1 'Main RDD' 2 'Sibling' 3 'Twin' 4 'City oversample'
             13 'Milwaukee' 14 'Boston New' /
   B1PAGE_M2 98 'REFUSED' 99 'INAPP (NO M2 PARTICIPATION)' /
   B1PGENDER 1 'Male' 2 'Female' 8 'Refused/Unknown' /
   B2DDAY    1 'DAY 1' 2 'DAY 2' 3 'DAY 3' 4 'DAY 4' 5 'DAY 5' 6 'DAY 6'
             7 'DAY 7' 8 'DAY 8' /
   B2DMISS   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DDAYT   1 'DAYTIME' 5 'EVENING' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DWEEKD  1 'MONDAY' 2 'TUESDAY' 3 'WEDNESDAY' 4 'THURSDAY' 5 'FRIDAY'
             6 'SATURDAY' 7 'SUNDAY' /
   B2DWAKE1  97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DWAKE2  97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DWAKE3  1 'AM' 5 'PM' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DAW1CH  97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DAW1CM  97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DA1H    97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DA1M    97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DA2H    97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DA2M    97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DA3H    97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DA3M    97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DA3AH2  97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DA3AM2  97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DA3AAP  1 'AM' 5 'PM' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA3BH2  97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DA3BM2  97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DA3BAP  1 'AM' 5 'PM' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA4H    97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DA4M    97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DAW4H   97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DAW4M   97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DA4AH   97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DA4AM   97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DAW5AH  97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DAW5AM  97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DAW5AA  1 'AM' 5 'PM' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA9     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA9AH   97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DA9AM   97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DA10    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA10A1  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA10A2  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA10A3  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA10A4  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA10A5  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA10A6  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA10A7  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA10A8  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA10A9  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1010  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1011  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1012  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1013  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1014  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1015  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1016  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1017  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1018  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1019  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1020  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1021  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1022  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1023  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1024  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1025  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA10BH  97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DA10BM  97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DA11    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA11A1  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA11A2  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA11A3  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA11A4  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA11A5  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA11A6  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA11A7  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA11A8  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA11A9  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1110  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1111  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1112  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1113  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1114  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1115  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1116  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1117  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1118  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1119  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1120  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1121  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1122  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1123  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1124  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1125  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA11BH  97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DA11BM  97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DA12    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA12A1  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA12A2  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA12A3  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA12A4  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA12A5  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA12A6  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA12A7  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA12A8  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA12A9  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1210  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1211  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1212  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1213  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1214  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1215  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1216  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1217  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1218  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1220  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1221  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1222  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1223  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1224  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1225  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA12BH  97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DA12BM  97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DA13    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA13A1  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA13A2  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA13A3  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA13A4  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA13A5  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA13A6  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA13A7  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA13A8  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA13A9  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1310  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1311  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1312  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1313  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1314  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1315  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1316  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1317  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1318  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1319  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1320  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1321  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1322  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1323  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1324  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA1325  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DA13BH  97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DA13BM  97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DAC1    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DAC2D1  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DAC2D2  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DAC2D3  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DAC2D4  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DAC2D5  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DAC2D6  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DAC2D7  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DAC2D8  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DAC2D9  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DAC21A  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DAC21B  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DAC21C  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DAC21D  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DAC21E  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DAC21F  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DAC21G  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DAC21H  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DAC21I  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DAC21J  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DAC21K  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DAC21L  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DAC21M  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DAC21N  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DAC21O  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DAC3    1 'EMOTIONAL' 2 'PHYSICAL' 3 'COMBINATION' 4 'OTHER'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DAC4H   97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DAC4M   97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DB1A    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DB1A2   1 'VERY MILD' 10 'VERY SEVERE' 97 'DON''T KNOW'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DB1B    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DB1B2   1 'VERY MILD' 10 'VERY SEVERE' 97 'DON''T KNOW'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DB1C    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DB1C2   1 'VERY MILD' 10 'VERY SEVERE' 97 'DON''T KNOW'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DB1D    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DB1D2   1 'VERY MILD' 10 'VERY SEVERE' 97 'DON''T KNOW'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DB1E    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DB1E2   1 'VERY MILD' 10 'VERY SEVERE' 97 'DON''T KNOW'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DB1F    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DB1F2   1 'VERY MILD' 10 'VERY SEVERE' 97 'DON''T KNOW'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DB1G    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DB1G2   1 'VERY MILD' 10 'VERY SEVERE' 97 'DON''T KNOW'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DB1H    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DB1H2   1 'VERY MILD' 10 'VERY SEVERE' 97 'DON''T KNOW'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DB1I    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DB1I2   1 'VERY MILD' 10 'VERY SEVERE' 97 'DON''T KNOW'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DB1J    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DB1J2   1 'VERY MILD' 10 'VERY SEVERE' 97 'DON''T KNOW'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DB1K    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DB1K2   1 'VERY MILD' 10 'VERY SEVERE' 97 'DON''T KNOW'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DB1L    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DB1L2   1 'VERY MILD' 10 'VERY SEVERE' 97 'DON''T KNOW'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DB1LA   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DB1LA2  1 'VERY MILD' 10 'VERY SEVERE' 97 'DON''T KNOW'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DB1M    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DB1M2   1 'VERY MILD' 10 'VERY SEVERE' 97 'DON''T KNOW'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DB1N    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DB1N2   1 'VERY MILD' 10 'VERY SEVERE' 97 'DON''T KNOW'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DB1O    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DB1O2   1 'VERY MILD' 10 'VERY SEVERE' 97 'DON''T KNOW'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DB1P    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DB1P2   1 'VERY MILD' 10 'VERY SEVERE' 97 'DON''T KNOW'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DB1Q    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DB1Q2   1 'VERY MILD' 10 'VERY SEVERE' 97 'DON''T KNOW'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DB1R    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DB1R2   1 'VERY MILD' 10 'VERY SEVERE' 97 'DON''T KNOW'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DB1S    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DB1S2   1 'VERY MILD' 10 'VERY SEVERE' 97 'DON''T KNOW'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DB1T    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DB1T2   1 'VERY MILD' 10 'VERY SEVERE' 97 'DON''T KNOW'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DB1U    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DB1U2   1 'VERY MILD' 10 'VERY SEVERE' 97 'DON''T KNOW'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DB1V    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DB1V2   1 'VERY MILD' 10 'VERY SEVERE' 97 'DON''T KNOW'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DB1W    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DB1W2   1 'VERY MILD' 10 'VERY SEVERE' 97 'DON''T KNOW'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DB1X    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DB1X2   1 'VERY MILD' 10 'VERY SEVERE' 97 'DON''T KNOW'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DB1Y    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DB1Y2   1 'VERY MILD' 10 'VERY SEVERE' 97 'DON''T KNOW'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DB1Z    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DB1Z2   1 'VERY MILD' 10 'VERY SEVERE' 97 'DON''T KNOW'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DB1LEG  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DB1LE2  1 'VERY MILD' 10 'VERY SEVERE' 97 'DON''T KNOW'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DB2     997 'DON''T KNOW' 998 'REFUSED/MISSING' 999 'INAPPLICABLE' /
   B2DB3     997 'DON''T KNOW' 998 'REFUSED/MISSING' 999 'INAPPLICABLE' /
   B2DC1     0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DC2     0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DC3     0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DC4     0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DC5     0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DC6     0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DC7     0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DC8     0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DC9     0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DC10    0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DC11    0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DC12    0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DC13    0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DC14    0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DC15    0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DC16    0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DC17    0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DC18    0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DC19    0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DC20    0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DC21    0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DC22    0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DC23    0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DC24    0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DC25    0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DC26    0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DC27    0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DD1     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DD1A    0 'DID NOT DO ANY WORK' 10 'DID ALL WORK' 97 'DON''T KNOW'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DD1B    1 'PHYSICAL' 2 'EMOTIONAL' 3 'ALCOHOL' 4 'COMBINATION' 5 'OTHER'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DD2     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DD2A    1 'PHYSICAL' 2 'EMOTIONAL' 3 'ALCOHOL' 4 'COMBINATION' 5 'OTHER'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DD3     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DD3A    1 'PHYSICAL' 2 'EMOTIONAL' 3 'ALCOHOL' 4 'COMBINATION' 5 'OTHER'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DD4     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DD4A    1 'SPOUSE OR PARTNER (INCLUDESS EX-)'
             2 'CHILD OR GRANDCHILD (INCLUDES STEP-)'
             3 'PARENT (INCLUDESS STEP-)' 4 'SIBLING (INCLUDES STEP-)'
             5 'OTHER RELATIVE (INCLUDES IN-LAWS)' 6 'FRIEND' 7 'NEIGHBOR'
             8 'COWORKER OR FELLOW STUDENT' 9 'BOSS OR TEACHER'
             10 'EMPLOYEE OR SUPERVISEE' 11 'OTHER (SPECIFY)' 12 'STRANGER'
             13 'RELIGIOUS GROUP MEMBER (INCLUDING MINISTER)'
             14 'SELF-HELP GROUP (AA, THERAPIST, COUNSELOR)'
             15 'CLIENT/ CUSTOMER/ PATIENT' 16 'GROUPS'
             17 'NO ONE ELSE INVOLVED' 20 'LANDLORD/REALTOR'
             21 'FAMILY (GENERAL)' 22 'PETS' 23 'HEALTH PROFESSIONALS'
             24 'HOME RELATED PEOPLE/COMPANIES' 97 'DON''T KNOW'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DF1     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF1A    1 'SPOUSE OR PARTNER (INCLUDESS EX-)'
             2 'CHILD OR GRANDCHILD (INCLUDES STEP-)'
             3 'PARENT (INCLUDESS STEP-)' 4 'SIBLING (INCLUDES STEP-)'
             5 'OTHER RELATIVE (INCLUDES IN-LAWS)' 6 'FRIEND' 7 'NEIGHBOR'
             8 'COWORKER OR FELLOW STUDENT' 9 'BOSS OR TEACHER'
             10 'EMPLOYEE OR SUPERVISEE' 11 'OTHER (SPECIFY)' 12 'STRANGER'
             13 'RELIGIOUS GROUP MEMBER (INCLUDING MINISTER)'
             14 'SELF-HELP GROUP (AA, THERAPIST, COUNSELOR)'
             15 'CLIENT/ CUSTOMER/ PATIENT' 16 'GROUPS' 20 'LANDLORD/REALTOR'
             21 'FAMILY (GENERAL)' 22 'PETS' 23 'HEALTH PROFESSIONALS'
             24 'HOME RELATED PEOPLE/COMPANIES' 97 'DON''T KNOW'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DF1A1   1 'YESTERDAY' 5 'TODAY' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF1A2H  97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DF1A2M  97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DF1A2A  1 'AM' 5 'PM' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF1C    0 'NOT AT ALL' 1 'NOT VERY' 2 'SOMEWHAT' 3 'VERY'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF1WC1  0 'NOT AT ALL' 1 'NOT VERY' 2 'SOMEWHAT' 3 'VERY'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF1WC2  0 'NOT AT ALL' 1 'NOT VERY' 2 'SOMEWHAT' 3 'VERY'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF1WC3  0 'NOT AT ALL' 1 'NOT VERY' 2 'SOMEWHAT' 3 'VERY'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF1WC4  0 'NOT AT ALL' 1 'NOT VERY' 2 'SOMEWHAT' 3 'VERY'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF1WC5  0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF1WC6  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF1D    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF1E    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF1F    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF1G    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF1H    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF1I    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF1J    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF2     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF2A    1 'SPOUSE OR PARTNER (INCLUDESS EX-)'
             2 'CHILD OR GRANDCHILD (INCLUDES STEP-)'
             3 'PARENT (INCLUDESS STEP-)' 4 'SIBLING (INCLUDES STEP-)'
             5 'OTHER RELATIVE (INCLUDES IN-LAWS)' 6 'FRIEND' 7 'NEIGHBOR'
             8 'COWORKER OR FELLOW STUDENT' 9 'BOSS OR TEACHER'
             10 'EMPLOYEE OR SUPERVISEE' 11 'OTHER (SPECIFY)' 12 'STRANGER'
             13 'RELIGIOUS GROUP MEMBER (INCLUDING MINISTER)'
             14 'SELF-HELP GROUP (AA, THERAPIST, COUNSELOR)'
             15 'CLIENT/ CUSTOMER/ PATIENT' 16 'GROUPS' 20 'LANDLORD/REALTOR'
             21 'FAMILY (GENERAL)' 22 'PETS' 23 'HEALTH PROFESSIONALS'
             24 'HOME RELATED PEOPLE/COMPANIES' 25 'NO ONE ELSE INVOLVED'
             97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DF2A1   1 'YESTERDAY' 5 'TODAY' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF2A2H  97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DF2A2M  97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DF2A2A  1 'AM' 5 'PM' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF2C    0 'NOT AT ALL' 1 'NOT VERY' 2 'SOMEWHAT' 3 'VERY'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF2WC1  0 'NOT AT ALL' 1 'NOT VERY' 2 'SOMEWHAT' 3 'VERY'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF2WC2  0 'NOT AT ALL' 1 'NOT VERY' 2 'SOMEWHAT' 3 'VERY'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF2WC3  0 'NOT AT ALL' 1 'NOT VERY' 2 'SOMEWHAT' 3 'VERY'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF2WC4  0 'NOT AT ALL' 1 'NOT VERY' 2 'SOMEWHAT' 3 'VERY'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF2WC5  0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF2WC6  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF2D    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF2E    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF2F    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF2G    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF2H    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF2I    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF2J    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF3     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF3A1   1 'YESTERDAY' 5 'TODAY' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF3A2H  97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DF3A2M  97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DF3A2A  1 'AM' 5 'PM' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF3B    0 'NOT AT ALL' 1 'NOT VERY' 2 'SOMEWHAT' 3 'VERY'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF3WB1  0 'NOT AT ALL' 1 'NOT VERY' 2 'SOMEWHAT' 3 'VERY'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF3WB2  0 'NOT AT ALL' 1 'NOT VERY' 2 'SOMEWHAT' 3 'VERY'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF3WB3  0 'NOT AT ALL' 1 'NOT VERY' 2 'SOMEWHAT' 3 'VERY'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF3WB4  0 'NOT AT ALL' 1 'NOT VERY' 2 'SOMEWHAT' 3 'VERY'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF3WB5  0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF3WB6  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF3C    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF3D    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF3E    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF3F    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF3G    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF3H    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF3I    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF4     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF4A1   1 'YESTERDAY' 5 'TODAY' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF4A2H  97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DF4A2M  97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DF4A2A  1 'AM' 5 'PM' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF4B    0 'NOT AT ALL' 1 'NOT VERY' 2 'SOMEWHAT' 3 'VERY'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF4WB1  0 'NOT AT ALL' 1 'NOT VERY' 2 'SOMEWHAT' 3 'VERY'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF4WB2  0 'NOT AT ALL' 1 'NOT VERY' 2 'SOMEWHAT' 3 'VERY'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF4WB3  0 'NOT AT ALL' 1 'NOT VERY' 2 'SOMEWHAT' 3 'VERY'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF4WB4  0 'NOT AT ALL' 1 'NOT VERY' 2 'SOMEWHAT' 3 'VERY'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF4WB5  0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF4WB6  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF4C    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF4D    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF4E    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF4F    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF4G    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF4H    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF4I    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF5     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF5A_1  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF5A_2  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF5A_3  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF5A_4  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF5A_5  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF5A_6  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF5A1   1 'YESTERDAY' 5 'TODAY' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF5A2H  97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DF5A2M  97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DF5A2A  1 'AM' 5 'PM' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF5C    0 'NOT AT ALL' 1 'NOT VERY' 2 'SOMEWHAT' 3 'VERY'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF5WC1  0 'NOT AT ALL' 1 'NOT VERY' 2 'SOMEWHAT' 3 'VERY'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF5WC2  0 'NOT AT ALL' 1 'NOT VERY' 2 'SOMEWHAT' 3 'VERY'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF5WC3  0 'NOT AT ALL' 1 'NOT VERY' 2 'SOMEWHAT' 3 'VERY'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF5WC4  0 'NOT AT ALL' 1 'NOT VERY' 2 'SOMEWHAT' 3 'VERY'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF5WC5  0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF5WC6  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF5D    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF5E    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF5F    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF5G    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF5H    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF5I    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF5J    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF6     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF6A    1 'SPOUSE OR PARTNER (INCLUDESS EX-)'
             2 'CHILD OR GRANDCHILD (INCLUDES STEP-)'
             3 'PARENT (INCLUDESS STEP-)' 4 'SIBLING (INCLUDES STEP-)'
             5 'OTHER RELATIVE (INCLUDES IN-LAWS)' 6 'FRIEND' 7 'NEIGHBOR'
             8 'COWORKER OR FELLOW STUDENT' 9 'BOSS OR TEACHER'
             10 'EMPLOYEE OR SUPERVISEE' 11 'OTHER (SPECIFY)' 12 'STRANGER'
             13 'RELIGIOUS GROUP MEMBER (INCLUDING MINISTER)'
             14 'SELF-HELP GROUP (AA, THERAPIST, COUNSELOR)'
             15 'CLIENT/ CUSTOMER/ PATIENT' 16 'GROUPS' 20 'LANDLORD/REALTOR'
             21 'FAMILY (GENERAL)' 22 'PETS' 23 'HEALTH PROFESSIONALS'
             24 'HOME RELATED PEOPLE/COMPANIES' 97 'DON''T KNOW'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DF6A1   1 'YESTERDAY' 5 'TODAY' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF6A2H  97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DF6A2M  97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DF6A2A  1 'AM' 5 'PM' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF6C    0 'NOT AT ALL' 1 'NOT VERY' 2 'SOMEWHAT' 3 'VERY'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF6WC1  0 'NOT AT ALL' 1 'NOT VERY' 2 'SOMEWHAT' 3 'VERY'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF6WC2  0 'NOT AT ALL' 1 'NOT VERY' 2 'SOMEWHAT' 3 'VERY'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF6WC3  0 'NOT AT ALL' 1 'NOT VERY' 2 'SOMEWHAT' 3 'VERY'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF6WC4  0 'NOT AT ALL' 1 'NOT VERY' 2 'SOMEWHAT' 3 'VERY'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF6WC5  0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF6WC6  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF6D    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF6E    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF6F    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF6G    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF6H    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF6I    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF6J    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF7     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF7A    1 'YESTERDAY' 5 'TODAY' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF7A1H  97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DF7A1M  97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DF7A1A  1 'AM' 5 'PM' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF7B    0 'NOT AT ALL' 1 'NOT VERY' 2 'SOMEWHAT' 3 'VERY'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF7WB1  0 'NOT AT ALL' 1 'NOT VERY' 2 'SOMEWHAT' 3 'VERY'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF7WB2  0 'NOT AT ALL' 1 'NOT VERY' 2 'SOMEWHAT' 3 'VERY'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF7WB3  0 'NOT AT ALL' 1 'NOT VERY' 2 'SOMEWHAT' 3 'VERY'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF7WB4  0 'NOT AT ALL' 1 'NOT VERY' 2 'SOMEWHAT' 3 'VERY'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF7WB5  0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF7WB6  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF7C    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF7D    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF7E    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF7F    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF7G    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF7H    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF7I    0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DF8     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF8A    1 'SPOUSE OR PARTNER (INCLUDESS EX-)'
             2 'CHILD OR GRANDCHILD (INCLUDES STEP-)'
             3 'PARENT (INCLUDESS STEP-)' 4 'SIBLING (INCLUDES STEP-)'
             5 'OTHER RELATIVE (INCLUDES IN-LAWS)' 6 'FRIEND' 7 'NEIGHBOR'
             8 'COWORKER OR FELLOW STUDENT' 9 'BOSS OR TEACHER'
             10 'EMPLOYEE OR SUPERVISEE' 11 'OTHER (SPECIFY)' 12 'STRANGER'
             13 'RELIGIOUS GROUP MEMBER (INCLUDING MINISTER)'
             14 'SELF-HELP GROUP (AA, THERAPIST, COUNSELOR)'
             15 'CLIENT/ CUSTOMER/ PATIENT' 16 'GROUPS' 20 'LANDLORD/REALTOR'
             21 'FAMILY (GENERAL)' 22 'PETS' 23 'HEALTH PROFESSIONALS'
             24 'HOME RELATED PEOPLE/COMPANIES' 25 'NO ONE ELSE INVOLVED'
             97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DF8A1   1 'YESTERDAY' 5 'TODAY' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF8A2H  97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DF8A2M  97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DF8A2A  1 'AM' 5 'PM' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF9     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF9A    1 'SPOUSE OR PARTNER (INCLUDESS EX-)'
             2 'CHILD OR GRANDCHILD (INCLUDES STEP-)'
             3 'PARENT (INCLUDESS STEP-)' 4 'SIBLING (INCLUDES STEP-)'
             5 'OTHER RELATIVE (INCLUDES IN-LAWS)' 6 'FRIEND' 7 'NEIGHBOR'
             8 'COWORKER OR FELLOW STUDENT' 9 'BOSS OR TEACHER'
             10 'EMPLOYEE OR SUPERVISEE' 11 'OTHER (SPECIFY)' 12 'STRANGER'
             13 'RELIGIOUS GROUP MEMBER (INCLUDING MINISTER)'
             14 'SELF-HELP GROUP (AA, THERAPIST, COUNSELOR)'
             15 'CLIENT/ CUSTOMER/ PATIENT' 16 'GROUPS'
             17 'NO ONE ELSE INVOLVED' 20 'LANDLORD/REALTOR'
             21 'FAMILY (GENERAL)' 22 'PETS' 23 'HEALTH PROFESSIONALS'
             24 'HOME RELATED PEOPLE/COMPANIES' 97 'DON''T KNOW'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DF9A1   1 'YESTERDAY' 5 'TODAY' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF9H    97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DF9M    97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DF9AP   1 'AM' 5 'PM' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF10    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF10A   1 'SPOUSE OR PARTNER (INCLUDESS EX-)'
             2 'CHILD OR GRANDCHILD (INCLUDES STEP-)'
             3 'PARENT (INCLUDESS STEP-)' 4 'SIBLING (INCLUDES STEP-)'
             5 'OTHER RELATIVE (INCLUDES IN-LAWS)' 6 'FRIEND' 7 'NEIGHBOR'
             8 'COWORKER OR FELLOW STUDENT' 9 'BOSS OR TEACHER'
             10 'EMPLOYEE OR SUPERVISEE' 11 'OTHER (SPECIFY)' 12 'STRANGER'
             13 'RELIGIOUS GROUP MEMBER (INCLUDING MINISTER)'
             14 'SELF-HELP GROUP (AA, THERAPIST, COUNSELOR)'
             15 'CLIENT/ CUSTOMER/ PATIENT' 16 'GROUPS'
             17 'NO ONE ELSE INVOLVED' 20 'LANDLORD/REALTOR'
             21 'FAMILY (GENERAL)' 22 'PETS' 23 'HEALTH PROFESSIONALS'
             24 'HOME RELATED PEOPLE/COMPANIES' 97 'DON''T KNOW'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DF10A1  1 'YESTERDAY' 5 'TODAY' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF10H   97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DF10M   97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DF10AP  1 'AM' 5 'PM' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF11    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF11A   1 'SPOUSE OR PARTNER (INCLUDESS EX-)'
             2 'CHILD OR GRANDCHILD (INCLUDES STEP-)'
             3 'PARENT (INCLUDESS STEP-)' 4 'SIBLING (INCLUDES STEP-)'
             5 'OTHER RELATIVE (INCLUDES IN-LAWS)' 6 'FRIEND' 7 'NEIGHBOR'
             8 'COWORKER OR FELLOW STUDENT' 9 'BOSS OR TEACHER'
             10 'EMPLOYEE OR SUPERVISEE' 11 'OTHER (SPECIFY)' 12 'STRANGER'
             13 'RELIGIOUS GROUP MEMBER (INCLUDING MINISTER)'
             14 'SELF-HELP GROUP (AA, THERAPIST, COUNSELOR)'
             15 'CLIENT/ CUSTOMER/ PATIENT' 16 'GROUPS'
             17 'NO ONE ELSE INVOLVED' 20 'LANDLORD/REALTOR'
             21 'FAMILY (GENERAL)' 22 'PETS' 23 'HEALTH PROFESSIONALS'
             24 'HOME RELATED PEOPLE/COMPANIES' 97 'DON''T KNOW'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DF11A1  1 'YESTERDAY' 5 'TODAY' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF11H   97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DF11M   97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DF11AP  1 'AM' 5 'PM' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF12    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF12A   1 'SPOUSE OR PARTNER (INCLUDESS EX-)'
             2 'CHILD OR GRANDCHILD (INCLUDES STEP-)'
             3 'PARENT (INCLUDESS STEP-)' 4 'SIBLING (INCLUDES STEP-)'
             5 'OTHER RELATIVE (INCLUDES IN-LAWS)' 6 'FRIEND' 7 'NEIGHBOR'
             8 'COWORKER OR FELLOW STUDENT' 9 'BOSS OR TEACHER'
             10 'EMPLOYEE OR SUPERVISEE' 11 'OTHER (SPECIFY)' 12 'STRANGER'
             13 'RELIGIOUS GROUP MEMBER (INCLUDING MINISTER)'
             14 'SELF-HELP GROUP (AA, THERAPIST, COUNSELOR)'
             15 'CLIENT/ CUSTOMER/ PATIENT' 16 'GROUPS'
             17 'NO ONE ELSE INVOLVED' 20 'LANDLORD/REALTOR'
             21 'FAMILY (GENERAL)' 22 'PETS' 23 'HEALTH PROFESSIONALS'
             24 'HOME RELATED PEOPLE/COMPANIES' 97 'DON''T KNOW'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DF12A1  1 'YESTERDAY' 5 'TODAY' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DF12H   97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DF12M   97 'DON''T KNOW' 98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B2DF12AP  1 'AM' 5 'PM' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DH1_D8  0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DH2_D8  0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DH3_D8  0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DH4_D8  0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DH5_D8  0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DH6_D8  0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DH7_D8  0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DH8_D8  0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DH9_D8  0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DH10D8  0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DH11D8  0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DH12D8  0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DH13D8  0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DH14D8  0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DI1_D8  1 'MORE OFTEN' 2 'LESS OFTEN' 3 'ABOUT THE SAME'
             4 'NEVER HAVE ANY' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DI1AD8  0 'A LITTLE' 1 'SOME' 2 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DJ1_D8  0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DJ2_D8  0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DJ3_D8  0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DJ4_D8  0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DJ5_D8  0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DJ6_D8  0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DJ7_D8  0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DJ8_D8  0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DJ9_D8  0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DJ10D8  0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DJ11D8  0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DJ12D8  0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DJ13D8  0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DK1_D8  1 'MORE OFTEN' 2 'LESS OFTEN' 3 'ABOUT THE SAME'
             4 'NEVER HAVE ANY' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DK1AD8  0 'A LITTLE' 1 'SOME' 2 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DK2_D8  1 'MORE' 2 'FEWER' 3 'ABOUT THE SAME' 4 'NEVER HAVE ANY'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DK2AD8  0 'A LITTLE' 1 'SOME' 2 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DK3_D8  1 'MORE' 2 'Less' 3 'ABOUT THE SAME' 4 'NEVER HAVE ANY'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DK3AD8  0 'A LITTLE' 1 'SOME' 2 'A LOT' 7 'DON''T KNOW'
             8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DS14A   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DS14B   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DS14C   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DS14D   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DS14E   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DS14F   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DS14G   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DS14H   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DS14I   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DS15_1  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DS15_2  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DS15_3  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DS15_4  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DS15_5  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DS15_6  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DS15_7  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DS15_8  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DS15_9  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DS1510  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DS1511  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DS1512  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DMED1   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DMED2   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DMED3   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DMED4   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DMED5   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DMED6   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DMED7   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DMED8   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DMED9   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DMED10  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B2DCORT   1 'YES' 2 'NO' /
   B2DCDAY   1 'YES' 2 'NO' 8 'REFUSED/MISSING' /
   B2DSMART  1 'YES' 2 'NO' 8 'REFUSED/MISSING' /
   B2DCWDAY  1 'YES' 2 'NO' 8 'REFUSED/MISSING' /
   B2DCORW   999994 'UNRELIABLE' 999995 'NOT DONE' 999996 'EMPTY'
             999998 'REFUSED/MISSING' /
   B2DCORA   999994 'UNRELIABLE' 999995 'NOT DONE' 999996 'EMPTY'
             999998 'REFUSED/MISSING' /
   B2DCORL   999994 'UNRELIABLE' 999995 'NOT DONE' 999996 'EMPTY'
             999998 'REFUSED/MISSING' /
   B2DCORB   999994 'UNRELIABLE' 999995 'NOT DONE' 999996 'EMPTY'
             999998 'REFUSED/MISSING' /
   B2DCORWT  98 'REFUSED/MISSING' /
   B2DCORAT  98 'REFUSED/MISSING' /
   B2DCORLT  98 'REFUSED/MISSING' /
   B2DCORBT  98 'REFUSED/MISSING' /
   B2DTZONE  1 'PACIFIC' 2 'MOUNTAIN' 3 'CENTRAL' 4 'EASTERN' 5 'HAWAII'
             7 'DON''T KNOW' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B2DN_STR  8 'REFUSED/MISSING' /
   B2DA_STR  1 'YES' 2 'NO' 8 'REFUSED/MISSING' /
   B2DSSEVS  98 'REFUSED/MISSING' /
   B2DSSEVA  0 'NOT AT ALL' 1 'NOT VERY' 2 'SOMEWHAT' 3 'VERY'
             8 'REFUSED/MISSING' /
   B2DSNEGS  98 'REFUSED/MISSING' /
   B2DSNEGA  0 'NOT AT ALL' 1 'NOT VERY' 2 'SOMEWHAT' 3 'VERY'
             8 'REFUSED/MISSING' /
   B2DSAPRA  0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT'
             8 'REFUSED/MISSING' /
   B2DSAPRB  0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT'
             8 'REFUSED/MISSING' /
   B2DSAPRC  0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT'
             8 'REFUSED/MISSING' /
   B2DSAPRD  0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT'
             8 'REFUSED/MISSING' /
   B2DSAPRE  0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT'
             8 'REFUSED/MISSING' /
   B2DSAPRF  0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT'
             8 'REFUSED/MISSING' /
   B2DSAPRG  0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT'
             8 'REFUSED/MISSING' /
   B2DSCOTS  98 'REFUSED/MISSING' /
   B2DSCOTA  0 'NONE AT ALL' 1 'A LITTLE' 2 'SOME' 3 'A LOT'
             8 'REFUSED/MISSING' /
   B2DN_SYM  98 'REFUSED/MISSING' /
   B2DA_SYM  1 'YES' 2 'NO' 8 'REFUSED/MISSING' /
   B2DSYMAV  1 'VERY MILD' 10 'VERY SEVERE' 98 'REFUSED/MISSING' /
   B2DN_POS  8 'REFUSED/MISSING' /
   B2DA_POS  1 'YES' 2 'NO' 8 'REFUSED/MISSING' /
   B2DPOSAV  0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             8 'REFUSED/MISSING' /
   B2DNEGAV  0 'NONE OF THE TIME' 1 'A LITTLE OF THE TIME'
             2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALL OF THE TIME'
             8 'REFUSED/MISSING' /
   .

* SPSS MISSING VALUES COMMAND.

* MISSING VALUES
     B1PAGE_M2 (98, 99) /
     B1PGENDER (8) /
     B2DDAYT (7, 8, 9) /
     B2DWAKE1 (97, 98, 99) /
     B2DWAKE2 (97, 98, 99) /
     B2DWAKE3 (7, 8, 9) /
     B2DAW1CH (97, 98, 99) /
     B2DAW1CM (97, 98, 99) /
     B2DA1H (97, 98, 99) /
     B2DA1M (97, 98, 99) /
     B2DA2H (97, 98, 99) /
     B2DA2M (97, 98, 99) /
     B2DA3H (97, 98, 99) /
     B2DA3M (97, 98, 99) /
     B2DA3AH2 (97, 98, 99) /
     B2DA3AM2 (97, 98, 99) /
     B2DA3AAP (7, 8, 9) /
     B2DA3BH2 (97, 98, 99) /
     B2DA3BM2 (97, 98, 99) /
     B2DA3BAP (7, 8, 9) /
     B2DA4H (97, 98, 99) /
     B2DA4M (97, 98, 99) /
     B2DAW4H (97, 98, 99) /
     B2DAW4M (97, 98, 99) /
     B2DA4AH (97, 98, 99) /
     B2DA4AM (97, 98, 99) /
     B2DAW5AH (97, 98, 99) /
     B2DAW5AM (97, 98, 99) /
     B2DAW5AA (7, 8, 9) /
     B2DA9 (7, 8, 9) /
     B2DA9AH (97, 98, 99) /
     B2DA9AM (97, 98, 99) /
     B2DA10 (7, 8, 9) /
     B2DA10A1 (7, 8, 9) /
     B2DA10A2 (7, 8, 9) /
     B2DA10A3 (7, 8, 9) /
     B2DA10A4 (7, 8, 9) /
     B2DA10A5 (7, 8, 9) /
     B2DA10A6 (7, 8, 9) /
     B2DA10A7 (7, 8, 9) /
     B2DA10A8 (7, 8, 9) /
     B2DA10A9 (7, 8, 9) /
     B2DA1010 (7, 8, 9) /
     B2DA1011 (7, 8, 9) /
     B2DA1012 (7, 8, 9) /
     B2DA1013 (7, 8, 9) /
     B2DA1014 (7, 8, 9) /
     B2DA1015 (7, 8, 9) /
     B2DA1016 (7, 8, 9) /
     B2DA1017 (7, 8, 9) /
     B2DA1018 (7, 8, 9) /
     B2DA1019 (7, 8, 9) /
     B2DA1020 (7, 8, 9) /
     B2DA1021 (7, 8, 9) /
     B2DA1022 (7, 8, 9) /
     B2DA1023 (7, 8, 9) /
     B2DA1024 (7, 8, 9) /
     B2DA1025 (7, 8, 9) /
     B2DA10BH (97, 98, 99) /
     B2DA10BM (97, 98, 99) /
     B2DA11 (7, 8, 9) /
     B2DA11A1 (7, 8, 9) /
     B2DA11A2 (7, 8, 9) /
     B2DA11A3 (7, 8, 9) /
     B2DA11A4 (7, 8, 9) /
     B2DA11A5 (7, 8, 9) /
     B2DA11A6 (7, 8, 9) /
     B2DA11A7 (7, 8, 9) /
     B2DA11A8 (7, 8, 9) /
     B2DA11A9 (7, 8, 9) /
     B2DA1110 (7, 8, 9) /
     B2DA1111 (7, 8, 9) /
     B2DA1112 (7, 8, 9) /
     B2DA1113 (7, 8, 9) /
     B2DA1114 (7, 8, 9) /
     B2DA1115 (7, 8, 9) /
     B2DA1116 (7, 8, 9) /
     B2DA1117 (7, 8, 9) /
     B2DA1118 (7, 8, 9) /
     B2DA1119 (7, 8, 9) /
     B2DA1120 (7, 8, 9) /
     B2DA1121 (7, 8, 9) /
     B2DA1122 (7, 8, 9) /
     B2DA1123 (7, 8, 9) /
     B2DA1124 (7, 8, 9) /
     B2DA1125 (7, 8, 9) /
     B2DA11BH (97, 98, 99) /
     B2DA11BM (97, 98, 99) /
     B2DA12 (7, 8, 9) /
     B2DA12A1 (7, 8, 9) /
     B2DA12A2 (7, 8, 9) /
     B2DA12A3 (7, 8, 9) /
     B2DA12A4 (7, 8, 9) /
     B2DA12A5 (7, 8, 9) /
     B2DA12A6 (7, 8, 9) /
     B2DA12A7 (7, 8, 9) /
     B2DA12A8 (7, 8, 9) /
     B2DA12A9 (7, 8, 9) /
     B2DA1210 (7, 8, 9) /
     B2DA1211 (7, 8, 9) /
     B2DA1212 (7, 8, 9) /
     B2DA1213 (7, 8, 9) /
     B2DA1214 (7, 8, 9) /
     B2DA1215 (7, 8, 9) /
     B2DA1216 (7, 8, 9) /
     B2DA1217 (7, 8, 9) /
     B2DA1218 (7, 8, 9) /
     B2DA1220 (7, 8, 9) /
     B2DA1221 (7, 8, 9) /
     B2DA1222 (7, 8, 9) /
     B2DA1223 (7, 8, 9) /
     B2DA1224 (7, 8, 9) /
     B2DA1225 (7, 8, 9) /
     B2DA12BH (97, 98, 99) /
     B2DA12BM (97, 98, 99) /
     B2DA13 (7, 8, 9) /
     B2DA13A1 (7, 8, 9) /
     B2DA13A2 (7, 8, 9) /
     B2DA13A3 (7, 8, 9) /
     B2DA13A4 (7, 8, 9) /
     B2DA13A5 (7, 8, 9) /
     B2DA13A6 (7, 8, 9) /
     B2DA13A7 (7, 8, 9) /
     B2DA13A8 (7, 8, 9) /
     B2DA13A9 (7, 8, 9) /
     B2DA1310 (7, 8, 9) /
     B2DA1311 (7, 8, 9) /
     B2DA1312 (7, 8, 9) /
     B2DA1313 (7, 8, 9) /
     B2DA1314 (7, 8, 9) /
     B2DA1315 (7, 8, 9) /
     B2DA1316 (7, 8, 9) /
     B2DA1317 (7, 8, 9) /
     B2DA1318 (7, 8, 9) /
     B2DA1319 (7, 8, 9) /
     B2DA1320 (7, 8, 9) /
     B2DA1321 (7, 8, 9) /
     B2DA1322 (7, 8, 9) /
     B2DA1323 (7, 8, 9) /
     B2DA1324 (7, 8, 9) /
     B2DA1325 (7, 8, 9) /
     B2DA13BH (97, 98, 99) /
     B2DA13BM (97, 98, 99) /
     B2DAC1 (7, 8, 9) /
     B2DAC2D1 (7, 8, 9) /
     B2DAC2D2 (7, 8, 9) /
     B2DAC2D3 (7, 8, 9) /
     B2DAC2D4 (7, 8, 9) /
     B2DAC2D5 (7, 8, 9) /
     B2DAC2D6 (7, 8, 9) /
     B2DAC2D7 (7, 8, 9) /
     B2DAC2D8 (7, 8, 9) /
     B2DAC2D9 (7, 8, 9) /
     B2DAC21A (7, 8, 9) /
     B2DAC21B (7, 8, 9) /
     B2DAC21C (7, 8, 9) /
     B2DAC21D (7, 8, 9) /
     B2DAC21E (7, 8, 9) /
     B2DAC21F (7, 8, 9) /
     B2DAC21G (7, 8, 9) /
     B2DAC21H (7, 8, 9) /
     B2DAC21I (7, 8, 9) /
     B2DAC21J (7, 8, 9) /
     B2DAC21K (7, 8, 9) /
     B2DAC21L (7, 8, 9) /
     B2DAC21M (7, 8, 9) /
     B2DAC21N (7, 8, 9) /
     B2DAC21O (7, 8, 9) /
     B2DAC3 (7, 8, 9) /
     B2DAC4H (97, 98, 99) /
     B2DAC4M (97, 98, 99) /
     B2DB1A (7, 8, 9) /
     B2DB1A2 (97, 98, 99) /
     B2DB1B (7, 8, 9) /
     B2DB1B2 (97, 98, 99) /
     B2DB1C (7, 8, 9) /
     B2DB1C2 (97, 98, 99) /
     B2DB1D (7, 8, 9) /
     B2DB1D2 (97, 98, 99) /
     B2DB1E (7, 8, 9) /
     B2DB1E2 (97, 98, 99) /
     B2DB1F (7, 8, 9) /
     B2DB1F2 (97, 98, 99) /
     B2DB1G (7, 8, 9) /
     B2DB1G2 (97, 98, 99) /
     B2DB1H (7, 8, 9) /
     B2DB1H2 (97, 98, 99) /
     B2DB1I (7, 8, 9) /
     B2DB1I2 (97, 98, 99) /
     B2DB1J (7, 8, 9) /
     B2DB1J2 (97, 98, 99) /
     B2DB1K (7, 8, 9) /
     B2DB1K2 (97, 98, 99) /
     B2DB1L (7, 8, 9) /
     B2DB1L2 (97, 98, 99) /
     B2DB1LA (7, 8, 9) /
     B2DB1LA2 (97, 98, 99) /
     B2DB1M (7, 8, 9) /
     B2DB1M2 (97, 98, 99) /
     B2DB1N (7, 8, 9) /
     B2DB1N2 (97, 98, 99) /
     B2DB1O (7, 8, 9) /
     B2DB1O2 (97, 98, 99) /
     B2DB1P (7, 8, 9) /
     B2DB1P2 (97, 98, 99) /
     B2DB1Q (7, 8, 9) /
     B2DB1Q2 (97, 98, 99) /
     B2DB1R (7, 8, 9) /
     B2DB1R2 (97, 98, 99) /
     B2DB1S (7, 8, 9) /
     B2DB1S2 (97, 98, 99) /
     B2DB1T (7, 8, 9) /
     B2DB1T2 (97, 98, 99) /
     B2DB1U (7, 8, 9) /
     B2DB1U2 (97, 98, 99) /
     B2DB1V (7, 8, 9) /
     B2DB1V2 (97, 98, 99) /
     B2DB1W (7, 8, 9) /
     B2DB1W2 (97, 98, 99) /
     B2DB1X (7, 8, 9) /
     B2DB1X2 (97, 98, 99) /
     B2DB1Y (7, 8, 9) /
     B2DB1Y2 (97, 98, 99) /
     B2DB1Z (7, 8, 9) /
     B2DB1Z2 (97, 98, 99) /
     B2DB1LEG (7, 8, 9) /
     B2DB1LE2 (97, 98, 99) /
     B2DB2 (997, 998, 999) /
     B2DB3 (997, 998, 999) /
     B2DC1 (7, 8, 9) /
     B2DC2 (7, 8, 9) /
     B2DC3 (7, 8, 9) /
     B2DC4 (7, 8, 9) /
     B2DC5 (7, 8, 9) /
     B2DC6 (7, 8, 9) /
     B2DC7 (7, 8, 9) /
     B2DC8 (7, 8, 9) /
     B2DC9 (7, 8, 9) /
     B2DC10 (7, 8, 9) /
     B2DC11 (7, 8, 9) /
     B2DC12 (7, 8, 9) /
     B2DC13 (7, 8, 9) /
     B2DC14 (7, 8, 9) /
     B2DC15 (7, 8, 9) /
     B2DC16 (7, 8, 9) /
     B2DC17 (7, 8, 9) /
     B2DC18 (7, 8, 9) /
     B2DC19 (7, 8, 9) /
     B2DC20 (7, 8, 9) /
     B2DC21 (7, 8, 9) /
     B2DC22 (7, 8, 9) /
     B2DC23 (7, 8, 9) /
     B2DC24 (7, 8, 9) /
     B2DC25 (7, 8, 9) /
     B2DC26 (7, 8, 9) /
     B2DC27 (7, 8, 9) /
     B2DD1 (7, 8, 9) /
     B2DD1A (97, 98, 99) /
     B2DD1B (7, 8, 9) /
     B2DD2 (7, 8, 9) /
     B2DD2A (7, 8, 9) /
     B2DD3 (7, 8, 9) /
     B2DD3A (7, 8, 9) /
     B2DD4 (7, 8, 9) /
     B2DD4A (97, 98, 99) /
     B2DF1 (7, 8, 9) /
     B2DF1A (97, 98, 99) /
     B2DF1A1 (7, 8, 9) /
     B2DF1A2H (97, 98, 99) /
     B2DF1A2M (97, 98, 99) /
     B2DF1A2A (7, 8, 9) /
     B2DF1C (7, 8, 9) /
     B2DF1WC1 (7, 8, 9) /
     B2DF1WC2 (7, 8, 9) /
     B2DF1WC3 (7, 8, 9) /
     B2DF1WC4 (7, 8, 9) /
     B2DF1WC5 (7, 8, 9) /
     B2DF1WC6 (7, 8, 9) /
     B2DF1D (7, 8, 9) /
     B2DF1E (7, 8, 9) /
     B2DF1F (7, 8, 9) /
     B2DF1G (7, 8, 9) /
     B2DF1H (7, 8, 9) /
     B2DF1I (7, 8, 9) /
     B2DF1J (7, 8, 9) /
     B2DF2 (7, 8, 9) /
     B2DF2A (97, 98, 99) /
     B2DF2A1 (7, 8, 9) /
     B2DF2A2H (97, 98, 99) /
     B2DF2A2M (97, 98, 99) /
     B2DF2A2A (7, 8, 9) /
     B2DF2C (7, 8, 9) /
     B2DF2WC1 (7, 8, 9) /
     B2DF2WC2 (7, 8, 9) /
     B2DF2WC3 (7, 8, 9) /
     B2DF2WC4 (7, 8, 9) /
     B2DF2WC5 (7, 8, 9) /
     B2DF2WC6 (7, 8, 9) /
     B2DF2D (7, 8, 9) /
     B2DF2E (7, 8, 9) /
     B2DF2F (7, 8, 9) /
     B2DF2G (7, 8, 9) /
     B2DF2H (7, 8, 9) /
     B2DF2I (7, 8, 9) /
     B2DF2J (7, 8, 9) /
     B2DF3 (7, 8, 9) /
     B2DF3A1 (7, 8, 9) /
     B2DF3A2H (97, 98, 99) /
     B2DF3A2M (97, 98, 99) /
     B2DF3A2A (7, 8, 9) /
     B2DF3B (7, 8, 9) /
     B2DF3WB1 (7, 8, 9) /
     B2DF3WB2 (7, 8, 9) /
     B2DF3WB3 (7, 8, 9) /
     B2DF3WB4 (7, 8, 9) /
     B2DF3WB5 (7, 8, 9) /
     B2DF3WB6 (7, 8, 9) /
     B2DF3C (7, 8, 9) /
     B2DF3D (7, 8, 9) /
     B2DF3E (7, 8, 9) /
     B2DF3F (7, 8, 9) /
     B2DF3G (7, 8, 9) /
     B2DF3H (7, 8, 9) /
     B2DF3I (7, 8, 9) /
     B2DF4 (7, 8, 9) /
     B2DF4A1 (7, 8, 9) /
     B2DF4A2H (97, 98, 99) /
     B2DF4A2M (97, 98, 99) /
     B2DF4A2A (7, 8, 9) /
     B2DF4B (7, 8, 9) /
     B2DF4WB1 (7, 8, 9) /
     B2DF4WB2 (7, 8, 9) /
     B2DF4WB3 (7, 8, 9) /
     B2DF4WB4 (7, 8, 9) /
     B2DF4WB5 (7, 8, 9) /
     B2DF4WB6 (7, 8, 9) /
     B2DF4C (7, 8, 9) /
     B2DF4D (7, 8, 9) /
     B2DF4E (7, 8, 9) /
     B2DF4F (7, 8, 9) /
     B2DF4G (7, 8, 9) /
     B2DF4H (7, 8, 9) /
     B2DF4I (7, 8, 9) /
     B2DF5 (7, 8, 9) /
     B2DF5A_1 (7, 8, 9) /
     B2DF5A_2 (7, 8, 9) /
     B2DF5A_3 (7, 8, 9) /
     B2DF5A_4 (7, 8, 9) /
     B2DF5A_5 (7, 8, 9) /
     B2DF5A_6 (7, 8, 9) /
     B2DF5A1 (7, 8, 9) /
     B2DF5A2H (97, 98, 99) /
     B2DF5A2M (97, 98, 99) /
     B2DF5A2A (7, 8, 9) /
     B2DF5C (7, 8, 9) /
     B2DF5WC1 (7, 8, 9) /
     B2DF5WC2 (7, 8, 9) /
     B2DF5WC3 (7, 8, 9) /
     B2DF5WC4 (7, 8, 9) /
     B2DF5WC5 (7, 8, 9) /
     B2DF5WC6 (7, 8, 9) /
     B2DF5D (7, 8, 9) /
     B2DF5E (7, 8, 9) /
     B2DF5F (7, 8, 9) /
     B2DF5G (7, 8, 9) /
     B2DF5H (7, 8, 9) /
     B2DF5I (7, 8, 9) /
     B2DF5J (7, 8, 9) /
     B2DF6 (7, 8, 9) /
     B2DF6A (97, 98, 99) /
     B2DF6A1 (7, 8, 9) /
     B2DF6A2H (97, 98, 99) /
     B2DF6A2M (97, 98, 99) /
     B2DF6A2A (7, 8, 9) /
     B2DF6C (7, 8, 9) /
     B2DF6WC1 (7, 8, 9) /
     B2DF6WC2 (7, 8, 9) /
     B2DF6WC3 (7, 8, 9) /
     B2DF6WC4 (7, 8, 9) /
     B2DF6WC5 (7, 8, 9) /
     B2DF6WC6 (7, 8, 9) /
     B2DF6D (7, 8, 9) /
     B2DF6E (7, 8, 9) /
     B2DF6F (7, 8, 9) /
     B2DF6G (7, 8, 9) /
     B2DF6H (7, 8, 9) /
     B2DF6I (7, 8, 9) /
     B2DF6J (7, 8, 9) /
     B2DF7 (7, 8, 9) /
     B2DF7A (7, 8, 9) /
     B2DF7A1H (97, 98, 99) /
     B2DF7A1M (97, 98, 99) /
     B2DF7A1A (7, 8, 9) /
     B2DF7B (7, 8, 9) /
     B2DF7WB1 (7, 8, 9) /
     B2DF7WB2 (7, 8, 9) /
     B2DF7WB3 (7, 8, 9) /
     B2DF7WB4 (7, 8, 9) /
     B2DF7WB5 (7, 8, 9) /
     B2DF7WB6 (7, 8, 9) /
     B2DF7C (7, 8, 9) /
     B2DF7D (7, 8, 9) /
     B2DF7E (7, 8, 9) /
     B2DF7F (7, 8, 9) /
     B2DF7G (7, 8, 9) /
     B2DF7H (7, 8, 9) /
     B2DF7I (7, 8, 9) /
     B2DF8 (7, 8, 9) /
     B2DF8A (97, 98, 99) /
     B2DF8A1 (7, 8, 9) /
     B2DF8A2H (97, 98, 99) /
     B2DF8A2M (97, 98, 99) /
     B2DF8A2A (7, 8, 9) /
     B2DF9 (7, 8, 9) /
     B2DF9A (97, 98, 99) /
     B2DF9A1 (7, 8, 9) /
     B2DF9H (97, 98, 99) /
     B2DF9M (97, 98, 99) /
     B2DF9AP (7, 8, 9) /
     B2DF10 (7, 8, 9) /
     B2DF10A (97, 98, 99) /
     B2DF10A1 (7, 8, 9) /
     B2DF10H (97, 98, 99) /
     B2DF10M (97, 98, 99) /
     B2DF10AP (7, 8, 9) /
     B2DF11 (7, 8, 9) /
     B2DF11A (97, 98, 99) /
     B2DF11A1 (7, 8, 9) /
     B2DF11H (97, 98, 99) /
     B2DF11M (97, 98, 99) /
     B2DF11AP (7, 8, 9) /
     B2DF12 (7, 8, 9) /
     B2DF12A (97, 98, 99) /
     B2DF12A1 (7, 8, 9) /
     B2DF12H (97, 98, 99) /
     B2DF12M (97, 98, 99) /
     B2DF12AP (7, 8, 9) /
     B2DH1_D8 (7, 8, 9) /
     B2DH2_D8 (7, 8, 9) /
     B2DH3_D8 (7, 8, 9) /
     B2DH4_D8 (7, 8, 9) /
     B2DH5_D8 (7, 8, 9) /
     B2DH6_D8 (7, 8, 9) /
     B2DH7_D8 (7, 8, 9) /
     B2DH8_D8 (7, 8, 9) /
     B2DH9_D8 (7, 8, 9) /
     B2DH10D8 (7, 8, 9) /
     B2DH11D8 (7, 8, 9) /
     B2DH12D8 (7, 8, 9) /
     B2DH13D8 (7, 8, 9) /
     B2DH14D8 (7, 8, 9) /
     B2DI1_D8 (7, 8, 9) /
     B2DI1AD8 (7, 8, 9) /
     B2DJ1_D8 (7, 8, 9) /
     B2DJ2_D8 (7, 8, 9) /
     B2DJ3_D8 (7, 8, 9) /
     B2DJ4_D8 (7, 8, 9) /
     B2DJ5_D8 (7, 8, 9) /
     B2DJ6_D8 (7, 8, 9) /
     B2DJ7_D8 (7, 8, 9) /
     B2DJ8_D8 (7, 8, 9) /
     B2DJ9_D8 (7, 8, 9) /
     B2DJ10D8 (7, 8, 9) /
     B2DJ11D8 (7, 8, 9) /
     B2DJ12D8 (7, 8, 9) /
     B2DJ13D8 (7, 8, 9) /
     B2DK1_D8 (7, 8, 9) /
     B2DK1AD8 (7, 8, 9) /
     B2DK2_D8 (7, 8, 9) /
     B2DK2AD8 (7, 8, 9) /
     B2DK3_D8 (7, 8, 9) /
     B2DK3AD8 (7, 8, 9) /
     B2DS14A (7, 8, 9) /
     B2DS14B (7, 8, 9) /
     B2DS14C (7, 8, 9) /
     B2DS14D (7, 8, 9) /
     B2DS14E (7, 8, 9) /
     B2DS14F (7, 8, 9) /
     B2DS14G (7, 8, 9) /
     B2DS14H (7, 8, 9) /
     B2DS14I (7, 8, 9) /
     B2DS15_1 (7, 8, 9) /
     B2DS15_2 (7, 8, 9) /
     B2DS15_3 (7, 8, 9) /
     B2DS15_4 (7, 8, 9) /
     B2DS15_5 (7, 8, 9) /
     B2DS15_6 (7, 8, 9) /
     B2DS15_7 (7, 8, 9) /
     B2DS15_8 (7, 8, 9) /
     B2DS15_9 (7, 8, 9) /
     B2DS1510 (7, 8, 9) /
     B2DS1511 (7, 8, 9) /
     B2DS1512 (7, 8, 9) /
     B2DMED1 (7, 8, 9) /
     B2DMED2 (7, 8, 9) /
     B2DMED3 (7, 8, 9) /
     B2DMED4 (7, 8, 9) /
     B2DMED5 (7, 8, 9) /
     B2DMED6 (7, 8, 9) /
     B2DMED7 (7, 8, 9) /
     B2DMED8 (7, 8, 9) /
     B2DMED9 (7, 8, 9) /
     B2DMED10 (7, 8, 9) /
     B2DCDAY (8) /
     B2DSMART (8) /
     B2DCWDAY (8) /
     B2DCORW (999994.00000 thru 999998.00000) /
     B2DCORA (999994.00000 thru 999998.00000) /
     B2DCORL (999994.00000 thru 999998.00000) /
     B2DCORB (999994.00000 thru 999998.00000) /
     B2DCORWT (98.00) /
     B2DCORAT (98.00) /
     B2DCORLT (98.00) /
     B2DCORBT (98.00) /
     B2DTZONE (7, 8, 9) /
     B2DN_STR (8) /
     B2DA_STR (8) /
     B2DSSEVS (98) /
     B2DSSEVA (8.00) /
     B2DSNEGS (98) /
     B2DSNEGA (8.00) /
     B2DSAPRA (8.00) /
     B2DSAPRB (8.00) /
     B2DSAPRC (8.00) /
     B2DSAPRD (8.00) /
     B2DSAPRE (8.00) /
     B2DSAPRF (8.00) /
     B2DSAPRG (8.00) /
     B2DSCOTS (98) /
     B2DSCOTA (8.00) /
     B2DN_SYM (98) /
     B2DA_SYM (8) /
     B2DSYMAV (98.00) /
     B2DN_POS (8) /
     B2DA_POS (8) /
     B2DPOSAV (8.00) /
     B2DNEGAV (8.00) /
   .

EXECUTE.

* Create SPSS system file.

*SAVE OUTFILE="spss-filename.sav".
