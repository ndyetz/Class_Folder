*-------------------------------------------------------------------------*
*                                                                          
*                     SPSS SETUP FILE FOR ICPSR 29282
*       NATIONAL SURVEY OF MIDLIFE DEVELOPMENT IN THE UNITED STATES
*                 (MIDUS II): BIOMARKER PROJECT, 2004-2009
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
*  data file is physically located (e.g., "c:\temp\29282-0001-data.txt").
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
*  will be saved (e.g., SAVE OUTFILE="c:\spsswin\data\da29282-0001.sav").
*
*-------------------------------------------------------------------------.

* SPSS FILE HANDLE AND DATA LIST COMMANDS.

FILE HANDLE DATA / NAME="data-filename" LRECL=8544.
DATA LIST FILE=DATA /
                M2ID 1-5           M2FAMNUM 6-11
          SAMPLMAJ 12-19         B1PAGE_M2 20-24         B1PGENDER 25-32
              B4ZSITE 33          B4ZCOMPM 34-35          B4ZCOMPY 36-39
             B4ZRZONE 40             B4ZSZONE 41          B4ZB1PLG 42-43
          B4ZB1SLG 44-45          B4ZB1CLG 46-47            B4ZAGE 48-49
                B4Q1A 50                B4Q1B 51                B4Q1C 52
                B4Q1D 53                B4Q1E 54                B4Q1F 55
                B4Q1G 56                B4Q1H 57                B4Q1I 58
                B4Q1J 59                B4Q1K 60                B4Q1L 61
                B4Q1M 62                B4Q1N 63                B4Q1O 64
                B4Q1P 65                B4Q1Q 66                B4Q1R 67
                B4Q1S 68                B4Q1T 69                B4Q1U 70
                B4Q1V 71                B4Q1W 72                B4Q1X 73
                B4Q1Y 74                B4Q1Z 75               B4Q1AA 76
               B4Q1BB 77               B4Q1CC 78               B4Q1DD 79
               B4Q1EE 80               B4Q1FF 81               B4Q1GG 82
               B4Q1HH 83               B4Q1II 84               B4Q1JJ 85
               B4Q1KK 86               B4Q1LL 87               B4Q1MM 88
               B4Q1NN 89               B4Q1OO 90               B4Q1PP 91
               B4Q1QQ 92               B4Q1RR 93               B4Q1SS 94
               B4Q1TT 95               B4Q1UU 96               B4Q1VV 97
               B4Q1WW 98               B4Q1XX 99              B4Q1YY 100
              B4Q1ZZ 101             B4Q1AAA 102             B4Q1BBB 103
             B4Q1CCC 104             B4Q1DDD 105             B4Q1EEE 106
             B4Q1FFF 107             B4Q1GGG 108             B4Q1HHH 109
             B4Q1III 110             B4Q1JJJ 111             B4Q1KKK 112
             B4Q1LLL 113     B4QMA_D 114-117 (1)     B4QMA_A 118-121 (1)
    B4QMA_LI 122-125 (1)    B4QMA_AA 126-129 (1)    B4QMA_PA 130-133 (1)
            B4Q2 134-135               B4Q3A 136               B4Q3B 137
               B4Q3C 138               B4Q3D 139               B4Q3E 140
               B4Q3F 141               B4Q3G 142               B4Q3H 143
               B4Q3I 144               B4Q3J 145               B4Q3K 146
               B4Q3L 147               B4Q3M 148               B4Q3N 149
               B4Q3O 150               B4Q3P 151               B4Q3Q 152
               B4Q3R 153               B4Q3S 154               B4Q3T 155
     B4QCESD 156-159 (1)               B4Q4A 160               B4Q4B 161
               B4Q4C 162               B4Q4D 163               B4Q4E 164
               B4Q4F 165               B4Q4G 166               B4Q4H 167
               B4Q4I 168               B4Q4J 169    B4QPS_PS 170-173 (1)
               B4Q5A 174               B4Q5B 175               B4Q5C 176
               B4Q5D 177               B4Q5E 178               B4Q5F 179
               B4Q5G 180               B4Q5H 181               B4Q5I 182
               B4Q5J 183               B4Q5K 184               B4Q5L 185
               B4Q5M 186               B4Q5N 187               B4Q5O 188
               B4Q5P 189               B4Q5Q 190               B4Q5R 191
               B4Q5S 192               B4Q5T 193    B4QAE_AI 194-197 (1)
    B4QAE_AO 198-201 (1)    B4QAE_AC 202-205 (1)               B4Q5U 206
               B4Q5V 207    B4QAE_AA 208-211 (1)               B4Q6A 212
               B4Q6B 213               B4Q6C 214               B4Q6D 215
               B4Q6E 216               B4Q6F 217               B4Q6G 218
               B4Q6H 219               B4Q6I 220               B4Q6J 221
               B4Q6K 222               B4Q6L 223               B4Q6M 224
               B4Q6N 225               B4Q6O 226    B4QTA_AG 227-230 (1)
    B4QTA_AT 231-234 (1)    B4QTA_AR 235-238 (1)               B4Q7A 239
               B4Q7B 240               B4Q7C 241               B4Q7D 242
               B4Q7E 243               B4Q7F 244               B4Q7G 245
               B4Q7H 246               B4Q7I 247               B4Q7J 248
               B4Q7K 249               B4Q7L 250               B4Q7M 251
               B4Q7N 252               B4Q7O 253               B4Q7P 254
               B4Q7Q 255               B4Q7R 256               B4Q7S 257
               B4Q7T 258    B4QTA_AX 259-262 (1)               B4Q8A 263
               B4Q8B 264               B4Q8C 265               B4Q8D 266
               B4Q8E 267               B4Q8F 268               B4Q8G 269
               B4Q8H 270               B4Q8I 271    B4QSA_SA 272-275 (1)
               B4Q9A 276               B4Q9B 277               B4Q9C 278
               B4Q9D 279               B4Q9E 280               B4Q9F 281
               B4Q9G 282               B4Q9H 283               B4Q9I 284
               B4Q9J 285               B4Q9K 286               B4Q9L 287
               B4Q9M 288               B4Q9N 289               B4Q9O 290
               B4Q9P 291               B4Q9Q 292               B4Q9R 293
               B4Q9S 294               B4Q9T 295               B4Q9U 296
               B4Q9V 297               B4Q9W 298               B4Q9X 299
               B4Q9Y 300               B4Q9Z 301              B4Q9AA 302
              B4Q9BB 303    B4QCT_EA 304-307 (1)    B4QCT_PA 308-311 (1)
    B4QCT_SA 312-315 (1)    B4QCT_EN 316-319 (1)    B4QCT_PN 320-323 (1)
    B4QCT_MD 324-327 (1)             B4Q10A1 328             B4Q10A2 329
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
             B4Q10Z1 378             B4Q10Z2 379            B4Q10AA1 380
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
          B4Q11Y 474-475          B4Q11Z 476-477         B4Q11AA 478-479
         B4Q11BB 480-481         B4Q11CC 482-483    B4QSC_ID 484-487 (1)
    B4QSC_IT 488-491 (1)    B4QSO_PC 492-495 (1)    B4QSO_PF 496-499 (1)
    B4QSO_PX 500-503 (1)    B4QSO_IW 504-507 (1)    B4QSO_GW 508-511 (1)
          B4Q12A 512-513          B4Q12B 514-515          B4Q12C 516-517
          B4Q12D 518-519          B4Q12E 520-521          B4Q12F 522-523
          B4Q12G 524-525          B4Q12H 526-527          B4Q12I 528-529
          B4Q12J 530-531          B4Q12K 532-533          B4Q12L 534-535
          B4Q12M 536-537          B4Q12N 538-539          B4Q12O 540-541
          B4Q12P 542-543          B4Q12Q 544-545          B4Q12R 546-547
          B4Q12S 548-549          B4Q12T 550-551          B4Q12U 552-553
     B4QRISC 554-557 (1)     B4QSYMP 558-561 (1)      B4QADJ 562-565 (1)
              B4Q13A 566              B4Q13B 567              B4Q13C 568
              B4Q13D 569              B4Q13E 570              B4Q13F 571
              B4Q13G 572              B4Q13H 573             B4Q13H1 574
              B4Q13I 575              B4Q13J 576              B4Q13K 577
              B4Q13L 578              B4Q13M 579              B4Q13N 580
             B4Q13O1 581              B4Q13O 582              B4Q13P 583
              B4Q13Q 584              B4Q13R 585              B4Q13S 586
              B4Q13T 587              B4Q13U 588              B4Q13V 589
              B4Q13W 590              B4Q13X 591              B4Q13Y 592
              B4Q13Z 593     B4QSUGF 594-597 (2)     B4QSTGF 598-601 (2)
    B4QSOGFD 602-605 (2)    B4QSUGFA 606-608 (2)    B4QSTGFA 609-612 (2)
    B4QSOGFM 613-616 (2)     B4QSUGS 617-620 (2)     B4QSTGS 621-624 (2)
    B4QSOLGS 625-628 (2)          B4Q14A 629-630          B4Q14B 631-632
          B4Q14C 633-634          B4Q14D 635-636          B4Q14E 637-638
          B4Q14F 639-640          B4Q14G 641-642          B4Q14H 643-644
          B4Q14I 645-646          B4Q14J 647-648          B4Q14K 649-650
          B4Q14L 651-652          B4Q14M 653-654          B4Q14N 655-656
          B4Q14O 657-658          B4Q14P 659-660          B4Q14Q 661-662
          B4Q14R 663-664          B4Q14S 665-666    B4QSC_SC 667-670 (1)
    B4QSC_CC 671-674 (1)    B4QSC_EC 675-678 (1)    B4QSC_BC 679-682 (1)
          B4Q15A 683-684          B4Q15B 685-686          B4Q15C 687-688
          B4Q15D 689-690          B4Q15E 691-692          B4Q15F 693-694
          B4Q15G 695-696          B4Q15H 697-698    B4QSW_SL 699-702 (1)
    B4QSW_GR 703-706 (1)              B4Q16A 707              B4Q16B 708
              B4Q16C 709              B4Q16D 710              B4Q16E 711
              B4Q16F 712              B4Q16G 713              B4Q16H 714
    B4QSW_JP 715-718 (1)          B4Q17A 719-720        B4S1 721-725 (A)
            B4S1AMPM 726        B4S2 727-732 (1)        B4S3 733-737 (A)
            B4S3AMPM 738        B4S4 739-744 (1)                B4S5 745
                B4S6 746                B4S7 747                B4S8 748
                B4S9 749              B4S10A 750              B4S10B 751
              B4S10C 752              B4S10D 753              B4S10E 754
              B4S11A 755              B4S11B 756              B4S11C 757
              B4S11D 758              B4S11E 759              B4S11F 760
              B4S11G 761              B4S11H 762              B4S11I 763
              B4S11J 764        B4SSQ_GS 765-766            B4SSQ_S1 767
            B4SSQ_S2 768            B4SSQ_S3 769            B4SSQ_S4 770
            B4SSQ_S5 771            B4SSQ_S6 772            B4SSQ_S7 773
               B4H1A 774              B4H1AD 775               B4H1B 776
              B4H1BD 777               B4H1C 778              B4H1CD 779
               B4H1D 780              B4H1DD 781               B4H1E 782
              B4H1ED 783               B4H1F 784              B4H1FD 785
               B4H1G 786              B4H1GD 787               B4H1H 788
              B4H1HD 789               B4H1I 790              B4H1ID 791
               B4H1J 792              B4H1JD 793               B4H1K 794
              B4H1KD 795               B4H1L 796              B4H1LD 797
               B4H1M 798              B4H1MD 799               B4H1N 800
              B4H1ND 801               B4H1O 802              B4H1OD 803
               B4H1P 804              B4H1PD 805               B4H1Q 806
              B4H1QD 807               B4H1R 808              B4H1RD 809
               B4H1S 810              B4H1SD 811               B4H1T 812
              B4H1TD 813               B4H1U 814              B4H1UD 815
               B4H1V 816              B4H1VD 817               B4H1W 818
              B4H1WD 819               B4H1X 820              B4H1XD 821
               B4H1Y 822              B4H1YD 823        B4H1TOTH 824-825
         B4HSYMN 826-827             B4HSYMX 828                B4H2 829
          B4H2AF 830-831          B4H2AY 832-835          B4H2BF 836-837
          B4H2BY 838-841          B4H2CF 842-843          B4H2CY 844-847
          B4H2DF 848-849          B4H2DY 850-853          B4H2EF 854-855
          B4H2EY 856-859          B4H2FF 860-861          B4H2FY 862-865
          B4H2GF 866-867          B4H2GY 868-871          B4H2HF 872-873
          B4H2HY 874-877          B4H2IF 878-879          B4H2IY 880-883
          B4H2JF 884-885          B4H2JY 886-889          B4H2KF 890-891
          B4H2KY 892-895          B4H2LF 896-897          B4H2LY 898-901
          B4H2MF 902-903          B4H2MY 904-907          B4H2NF 908-909
          B4H2NY 910-913         B4HBRKB 914-915                B4H3 916
              B4H3AL 917          B4H3AY 918-921              B4H3BL 922
          B4H3BY 923-926              B4H3CL 927          B4H3CY 928-931
              B4H3DL 932          B4H3DY 933-936              B4H3EL 937
          B4H3EY 938-941              B4H3FL 942          B4H3FY 943-946
              B4H3GL 947          B4H3GY 948-951              B4H3HL 952
          B4H3HY 953-956              B4H3IL 957          B4H3IY 958-961
              B4H3JL 962          B4H3JY 963-966         B4HSURG 967-968
                B4H4 969              B4H4AH 970          B4H4AY 971-974
              B4H4BH 975          B4H4BY 976-979              B4H4CH 980
          B4H4CY 981-984             B4HHEAD 985                B4H5 986
              B4H5AH 987          B4H5AY 988-991              B4H5BH 992
          B4H5BY 993-996              B4H5CH 997         B4H5CY 998-1001
             B4HJNT 1002               B4H6 1003             B4H6AH 1004
        B4H6AY 1005-1008             B4H6BH 1009        B4H6BY 1010-1013
             B4H6CH 1014        B4H6CY 1015-1018             B4H6DH 1019
        B4H6DY 1020-1023             B4HMVA 1024               B4H7 1025
             B4H7AH 1026        B4H7AY 1027-1030             B4H7BH 1031
        B4H7BY 1032-1035            B4HAMPU 1036               B4H8 1037
             B4H8AH 1038        B4H8AY 1039-1042             B4H8BH 1043
        B4H8BY 1044-1047             B4H8CH 1048        B4H8CY 1049-1052
             B4H8DH 1053        B4H8DY 1054-1057           B4HOHLTH 1058
               B4H9 1059              B4H10 1060             B4H10A 1061
             B4H10B 1062             B4H10C 1063             B4H10D 1064
             B4H10E 1065             B4H10F 1066             B4H11A 1067
            B4H11AI 1068   B4H11AA 1069-1073 (1)             B4H11B 1074
            B4H11BI 1075   B4H11BA 1076-1080 (1)             B4H11C 1081
            B4H11CI 1082   B4H11CA 1083-1087 (1)             B4H11D 1088
            B4H11DI 1089   B4H11DA 1090-1094 (1)             B4H11E 1095
             B4H12A 1096       B4H12AM 1097-1098       B4H12AY 1099-1102
             B4H12B 1103       B4H12BM 1104-1105       B4H12BY 1106-1109
             B4H12C 1110       B4H12CM 1111-1112       B4H12CY 1113-1116
         B4H13 1117-1118              B4H14 1119             B4H14A 1120
             B4H15A 1121            B4H15A1 1122            B4H15A2 1123
            B4H15A3 1124            B4H15A4 1125            B4H15A5 1126
            B4H15A6 1127            B4H15A7 1128             B4H15B 1129
            B4H15B1 1130            B4H15B2 1131            B4H15B3 1132
            B4H15B4 1133            B4H15B5 1134            B4H15B6 1135
            B4H15B7 1136             B4H15C 1137            B4H15C1 1138
            B4H15C2 1139            B4H15C3 1140            B4H15C4 1141
            B4H15C5 1142            B4H15C6 1143            B4H15C7 1144
             B4H15D 1145            B4H15D1 1146            B4H15D2 1147
            B4H15D3 1148            B4H15D4 1149            B4H15D5 1150
            B4H15D6 1151            B4H15D7 1152             B4H15E 1153
            B4H15E1 1154            B4H15E2 1155            B4H15E3 1156
            B4H15E4 1157            B4H15E5 1158            B4H15E6 1159
            B4H15E7 1160             B4H15F 1161            B4H15F1 1162
            B4H15F2 1163            B4H15F3 1164            B4H15F4 1165
            B4H15F5 1166            B4H15F6 1167            B4H15F7 1168
             B4H15G 1169            B4H15G1 1170            B4H15G2 1171
            B4H15G3 1172            B4H15G4 1173            B4H15G5 1174
            B4H15G6 1175            B4H15G7 1176             B4H15H 1177
            B4H15H1 1178            B4H15H2 1179            B4H15H3 1180
            B4H15H4 1181            B4H15H5 1182            B4H15H6 1183
            B4H15H7 1184             B4H15I 1185            B4H15I1 1186
            B4H15I2 1187            B4H15I3 1188            B4H15I4 1189
            B4H15I5 1190            B4H15I6 1191            B4H15I7 1192
             B4H15J 1193            B4H15J1 1194            B4H15J2 1195
            B4H15J3 1196            B4H15J4 1197            B4H15J5 1198
            B4H15J6 1199            B4H15J7 1200             B4H15K 1201
            B4H15K1 1202            B4H15K2 1203            B4H15K3 1204
            B4H15K4 1205            B4H15K5 1206            B4H15K6 1207
            B4H15K7 1208             B4H15L 1209            B4H15L1 1210
            B4H15L2 1211            B4H15L3 1212            B4H15L4 1213
            B4H15L5 1214            B4H15L6 1215            B4H15L7 1216
             B4H15M 1217            B4H15M1 1218            B4H15M2 1219
            B4H15M3 1220            B4H15M4 1221            B4H15M5 1222
            B4H15M6 1223            B4H15M7 1224             B4H15N 1225
            B4H15N1 1226            B4H15N2 1227            B4H15N3 1228
            B4H15N4 1229            B4H15N5 1230            B4H15N6 1231
            B4H15N7 1232             B4H15O 1233            B4H15O1 1234
            B4H15O2 1235            B4H15O3 1236            B4H15O4 1237
            B4H15O5 1238            B4H15O6 1239            B4H15O7 1240
             B4H15P 1241            B4H15P1 1242            B4H15P2 1243
            B4H15P3 1244            B4H15P4 1245            B4H15P5 1246
            B4H15P6 1247            B4H15P7 1248             B4H15Q 1249
            B4H15Q1 1250            B4H15Q2 1251            B4H15Q3 1252
            B4H15Q4 1253            B4H15Q5 1254            B4H15Q6 1255
            B4H15Q7 1256             B4H15R 1257            B4H15R1 1258
            B4H15R2 1259            B4H15R3 1260            B4H15R4 1261
            B4H15R5 1262            B4H15R6 1263            B4H15R7 1264
             B4H15S 1265            B4H15S1 1266            B4H15S2 1267
            B4H15S3 1268            B4H15S4 1269            B4H15S5 1270
            B4H15S6 1271            B4H15S7 1272      B4H15OTH 1273-1274
       B4HFMHN 1275-1276            B4HFMHX 1277              B4H16 1278
   B4H17AF 1279-1284 (1)            B4H17AT 1285   B4H17BF 1286-1291 (1)
            B4H17BT 1292   B4H17CF 1293-1298 (1)            B4H17CT 1299
   B4H18AF 1300-1305 (1)            B4H18AT 1306   B4H18BF 1307-1312 (1)
            B4H18BT 1313   B4H18CF 1314-1319 (1)            B4H18CT 1320
              B4H19 1321              B4H20 1322              B4H21 1323
              B4H22 1324             B4H23A 1325             B4H23B 1326
             B4H23C 1327             B4H23D 1328              B4H24 1329
              B4H25 1330       B4H25AS 1331-1332      B4H25AFD 1333-1334
      B4H25AFW 1335-1336   B4H25AM 1337-1342 (1)            B4H25AI 1343
       B4H25BS 1344-1345      B4H25BFD 1346-1347      B4H25BFW 1348-1349
   B4H25BM 1350-1355 (1)            B4H25BI 1356       B4H25CS 1357-1358
      B4H25CFD 1359-1360      B4H25CFW 1361-1362   B4H25CM 1363-1368 (1)
            B4H25CI 1369       B4H25DS 1370-1371      B4H25DFD 1372-1373
      B4H25DFW 1374-1375   B4H25DM 1376-1381 (1)            B4H25DI 1382
       B4H25ES 1383-1384      B4H25EFD 1385-1386      B4H25EFW 1387-1388
   B4H25EM 1389-1394 (1)            B4H25EI 1395       B4H25FS 1396-1397
      B4H25FFD 1398-1399      B4H25FFW 1400-1401   B4H25FM 1402-1407 (1)
            B4H25FI 1408       B4H25GS 1409-1410      B4H25GFD 1411-1412
      B4H25GFW 1413-1414   B4H25GM 1415-1420 (1)            B4H25GI 1421
              B4H26 1422             B4H26A 1423              B4H27 1424
         B4H28 1425-1426              B4H29 1427              B4H30 1428
              B4H31 1429              B4H32 1430              B4H33 1431
              B4H34 1432              B4H35 1433     B4H36 1434-1439 (1)
         B4H37 1440-1441              B4H38 1442              B4H39 1443
     B4H40 1444-1449 (1)         B4H41 1450-1451     B4H42 1452-1457 (1)
             B4H43A 1458       B4H43BM 1459-1460       B4H43BY 1461-1464
             B4H44A 1465       B4H44CM 1466-1467       B4H44CY 1468-1471
             B4H44D 1472             B4H45A 1473       B4H45AM 1474-1475
       B4H45AY 1476-1479             B4H45B 1480       B4H45BM 1481-1482
       B4H45BY 1483-1486      B4H45BRC 1487-1488             B4H45C 1489
       B4H45CM 1490-1491       B4H45CY 1492-1495      B4H45CRC 1496-1497
             B4H45D 1498       B4H45DM 1499-1500       B4H45DY 1501-1504
      B4H45DRC 1505-1506             B4H45E 1507             B4H45F 1508
       B4H45FM 1509-1510       B4H45FY 1511-1514      B4H45FRC 1515-1516
             B4H45G 1517       B4H45GM 1518-1519       B4H45GY 1520-1523
      B4H45GRC 1524-1525             B4H45H 1526       B4H45HM 1527-1528
       B4H45HY 1529-1532      B4H45HRC 1533-1534              B4H46 1535
             B4H46C 1536    B4H46D 1537-1543 (2)              B4H47 1544
              B4H48 1545             B4H48A 1546              B4H49 1547
              B4H50 1548             B4H54C 1549        B4H54M 1550-1551
        B4H54Y 1552-1555              B4H55 1556            B4HMARR 1557
              B4H56 1558            B4H56AG 1559       B4H56AM 1560-1561
       B4H56AY 1562-1565            B4H56BG 1566       B4H56BM 1567-1568
       B4H56BY 1569-1572            B4H56CG 1573       B4H56CM 1574-1575
       B4H56CY 1576-1579            B4H56DG 1580       B4H56DM 1581-1582
       B4H56DY 1583-1586            B4H56EG 1587       B4H56EM 1588-1589
       B4H56EY 1590-1593            B4HDIED 1594              B4H57 1595
      B4H57A1M 1596-1597      B4H57A1Y 1598-1601      B4H57A2M 1602-1603
      B4H57A2Y 1604-1607      B4H57A3M 1608-1609      B4H57A3Y 1610-1613
      B4H57A4M 1614-1615      B4H57A4Y 1616-1619      B4H57A5M 1620-1621
      B4H57A5Y 1622-1625      B4H57TOT 1626-1627             B4OAVL 1628
               B4O1 1629       B4O1A1W 1630-1631        B4O1A3 1632-1635
       B4O1B1W 1636-1637        B4O1B3 1638-1641       B4O1C1W 1642-1643
        B4O1C3 1644-1647               B4O2 1648             B4O2A1 1649
             B4O2A2 1650             B4O2A3 1651             B4O2B1 1652
             B4O2B2 1653             B4O2B3 1654             B4O2C1 1655
             B4O2C2 1656             B4O2C3 1657          B4O3 1658-1660
         B4O3A 1661-1663              B4O4A 1664              B4O4B 1665
               B4O5 1666      B4O5A1AM 1667-1668       B4O5A1B 1669-1672
       B4O5A1C 1673-1676           B4O5A1CO 1677      B4O5A2AM 1678-1679
       B4O5A2B 1680-1683       B4O5A2C 1684-1687           B4O5A2CO 1688
      B4O5A3AM 1689-1690       B4O5A3B 1691-1694       B4O5A3C 1695-1698
           B4O5A3CO 1699             B4O6A1 1700             B4O6B1 1701
             B4O6C1 1702             B4O6D1 1703             B4O6E1 1704
             B4O6F1 1705               B4O7 1706      B4O8 1707-1712 (1)
      B4O9 1713-1718 (1)     B4O10 1719-1725 (2)              B4O11 1726
    B4O12A 1727-1731 (1)    B4O12B 1732-1736 (1)    B4O12C 1737-1741 (1)
              B4O13 1742    B4O14A 1743-1748 (1)    B4O14B 1749-1754 (1)
    B4O14C 1755-1760 (1)             B4O14X 1761              B4O15 1762
         B4O16 1763-1764    B4O16A 1765-1771 (2)              B4O17 1772
              B4O18 1773              B4O19 1774    B4O20Y 1775-1781 (2)
              B4O21 1782            B4O21A1 1783            B4O21A2 1784
            B4O21A3 1785            B4O21A4 1786            B4O21A5 1787
    B4O22Y 1788-1794 (2)             B4O23X 1795              B4O23 1796
              B4O24 1797              B4O25 1798             B4O25A 1799
             B4O25B 1800             B4O25C 1801              B4O26 1802
             B4O26A 1803             B4O26B 1804             B4O26C 1805
             B4O26D 1806             B4O26E 1807             B4O26F 1808
              B4O27 1809           B4DAVAIL 1810           B4DNARSN 1811
           B4DSTYPE 1812           B4DTRSID 1813           B4DFNSID 1814
           B4DFTSID 1815           B4DRSIDE 1816   B4DLSMD 1817-1823 (3)
    B4DLST 1824-1829 (2)  B4DLFNMD 1830-1836 (3)  B4DLTRMD 1837-1843 (3)
  B4DLFTMD 1844-1850 (3)   B4DLFNT 1851-1856 (2)   B4DLFTT 1857-1862 (2)
  B4DLRUMD 1863-1869 (3)  B4DLR3MD 1870-1876 (3)   B4DLR3T 1877-1882 (2)
   B4DHSMD 1883-1889 (3)    B4DHST 1890-1895 (2)  B4DHFNMD 1896-1902 (3)
  B4DHTRMD 1903-1909 (3)  B4DHFTMD 1910-1916 (3)   B4DHFNT 1917-1922 (2)
   B4DHFTT 1923-1928 (2)             B4XPMD 1929             B4XOMD 1930
             B4XAMD 1931         B4XPM 1932-1933        B4XPC1 1934-1941
   B4XPDD1 1942-1952 (2)       B4XPDU1 1953-1954        B4XPR1 1955-1956
    B4XPF1 1957-1962 (1)            B4XPFU1 1963    B4XPT1 1964-1969 (1)
            B4XPTU1 1970       B4XPDC1 1971-1975        B4XPC2 1976-1983
   B4XPDD2 1984-1994 (2)       B4XPDU2 1995-1996        B4XPR2 1997-1998
    B4XPF2 1999-2004 (1)            B4XPFU2 2005    B4XPT2 2006-2011 (1)
            B4XPTU2 2012       B4XPDC2 2013-2017        B4XPC3 2018-2025
   B4XPDD3 2026-2036 (2)       B4XPDU3 2037-2038        B4XPR3 2039-2040
    B4XPF3 2041-2046 (1)            B4XPFU3 2047    B4XPT3 2048-2053 (1)
            B4XPTU3 2054       B4XPDC3 2055-2059        B4XPC4 2060-2067
   B4XPDD4 2068-2078 (2)       B4XPDU4 2079-2080        B4XPR4 2081-2082
    B4XPF4 2083-2088 (1)            B4XPFU4 2089    B4XPT4 2090-2095 (1)
            B4XPTU4 2096       B4XPDC4 2097-2101        B4XPC5 2102-2109
   B4XPDD5 2110-2120 (2)       B4XPDU5 2121-2122        B4XPR5 2123-2124
    B4XPF5 2125-2130 (1)            B4XPFU5 2131    B4XPT5 2132-2137 (1)
            B4XPTU5 2138       B4XPDC5 2139-2143        B4XPC6 2144-2151
   B4XPDD6 2152-2162 (2)       B4XPDU6 2163-2164        B4XPR6 2165-2166
    B4XPF6 2167-2172 (1)            B4XPFU6 2173    B4XPT6 2174-2179 (1)
            B4XPTU6 2180       B4XPDC6 2181-2185        B4XPC7 2186-2193
   B4XPDD7 2194-2204 (2)       B4XPDU7 2205-2206        B4XPR7 2207-2208
    B4XPF7 2209-2214 (1)            B4XPFU7 2215    B4XPT7 2216-2221 (1)
            B4XPTU7 2222       B4XPDC7 2223-2227        B4XPC8 2228-2235
   B4XPDD8 2236-2246 (2)       B4XPDU8 2247-2248        B4XPR8 2249-2250
    B4XPF8 2251-2256 (1)            B4XPFU8 2257    B4XPT8 2258-2263 (1)
            B4XPTU8 2264       B4XPDC8 2265-2269        B4XPC9 2270-2277
   B4XPDD9 2278-2288 (2)       B4XPDU9 2289-2290        B4XPR9 2291-2292
    B4XPF9 2293-2298 (1)            B4XPFU9 2299    B4XPT9 2300-2305 (1)
            B4XPTU9 2306       B4XPDC9 2307-2311       B4XPC10 2312-2319
  B4XPDD10 2320-2330 (2)      B4XPDU10 2331-2332       B4XPR10 2333-2334
   B4XPF10 2335-2340 (1)           B4XPFU10 2341   B4XPT10 2342-2347 (1)
           B4XPTU10 2348      B4XPDC10 2349-2353       B4XPC11 2354-2361
  B4XPDD11 2362-2372 (2)      B4XPDU11 2373-2374       B4XPR11 2375-2376
   B4XPF11 2377-2382 (1)           B4XPFU11 2383   B4XPT11 2384-2389 (1)
           B4XPTU11 2390      B4XPDC11 2391-2395       B4XPC12 2396-2403
  B4XPDD12 2404-2414 (2)      B4XPDU12 2415-2416       B4XPR12 2417-2418
   B4XPF12 2419-2424 (1)           B4XPFU12 2425   B4XPT12 2426-2431 (1)
           B4XPTU12 2432      B4XPDC12 2433-2437       B4XPC13 2438-2445
  B4XPDD13 2446-2456 (2)      B4XPDU13 2457-2458       B4XPR13 2459-2460
   B4XPF13 2461-2466 (1)           B4XPFU13 2467   B4XPT13 2468-2473 (1)
           B4XPTU13 2474      B4XPDC13 2475-2479       B4XPC14 2480-2487
  B4XPDD14 2488-2498 (2)      B4XPDU14 2499-2500       B4XPR14 2501-2502
   B4XPF14 2503-2508 (1)           B4XPFU14 2509   B4XPT14 2510-2515 (1)
           B4XPTU14 2516      B4XPDC14 2517-2521       B4XPC15 2522-2529
  B4XPDD15 2530-2540 (2)      B4XPDU15 2541-2542       B4XPR15 2543-2544
   B4XPF15 2545-2550 (1)           B4XPFU15 2551   B4XPT15 2552-2557 (1)
           B4XPTU15 2558      B4XPDC15 2559-2563             B4XBPD 2564
             B4XBPC 2565             B4XCHD 2566             B4XCHC 2567
             B4XDPD 2568             B4XDPC 2569             B4XCOD 2570
             B4XCOC 2571             B4XSHD 2572             B4XSHC 2573
         B4XOM 2574-2575             B4XOMV 2576        B4XOC1 2577-2584
   B4XODD1 2585-2595 (2)       B4XODU1 2596-2597        B4XOR1 2598-2599
    B4XOF1 2600-2605 (1)            B4XOFU1 2606    B4XOT1 2607-2612 (1)
            B4XOTU1 2613       B4XODC1 2614-2618             B4XOCS 2619
        B4XOC2 2620-2627   B4XODD2 2628-2638 (2)       B4XODU2 2639-2640
        B4XOR2 2641-2642    B4XOF2 2643-2648 (1)            B4XOFU2 2649
    B4XOT2 2650-2655 (1)            B4XOTU2 2656       B4XODC2 2657-2661
        B4XOC3 2662-2669   B4XODD3 2670-2680 (2)       B4XODU3 2681-2682
        B4XOR3 2683-2684    B4XOF3 2685-2690 (1)            B4XOFU3 2691
    B4XOT3 2692-2697 (1)            B4XOTU3 2698       B4XODC3 2699-2703
        B4XOC4 2704-2711   B4XODD4 2712-2722 (2)       B4XODU4 2723-2724
        B4XOR4 2725-2726    B4XOF4 2727-2732 (1)            B4XOFU4 2733
    B4XOT4 2734-2739 (1)            B4XOTU4 2740       B4XODC4 2741-2745
        B4XOC5 2746-2753   B4XODD5 2754-2764 (2)       B4XODU5 2765-2766
        B4XOR5 2767-2768    B4XOF5 2769-2774 (1)            B4XOFU5 2775
    B4XOT5 2776-2781 (1)            B4XOTU5 2782       B4XODC5 2783-2787
        B4XOC6 2788-2795   B4XODD6 2796-2806 (2)       B4XODU6 2807-2808
        B4XOR6 2809-2810    B4XOF6 2811-2816 (1)            B4XOFU6 2817
    B4XOT6 2818-2823 (1)            B4XOTU6 2824       B4XODC6 2825-2829
        B4XOC7 2830-2837   B4XODD7 2838-2848 (2)       B4XODU7 2849-2850
        B4XOR7 2851-2852    B4XOF7 2853-2858 (1)            B4XOFU7 2859
    B4XOT7 2860-2865 (1)            B4XOTU7 2866       B4XODC7 2867-2871
        B4XOC8 2872-2879   B4XODD8 2880-2890 (2)       B4XODU8 2891-2892
        B4XOR8 2893-2894    B4XOF8 2895-2900 (1)            B4XOFU8 2901
    B4XOT8 2902-2907 (1)            B4XOTU8 2908       B4XODC8 2909-2913
        B4XOC9 2914-2921   B4XODD9 2922-2932 (2)       B4XODU9 2933-2934
        B4XOR9 2935-2936    B4XOF9 2937-2942 (1)            B4XOFU9 2943
    B4XOT9 2944-2949 (1)            B4XOTU9 2950       B4XODC9 2951-2955
       B4XOC10 2956-2963  B4XODD10 2964-2974 (2)      B4XODU10 2975-2976
       B4XOR10 2977-2978   B4XOF10 2979-2984 (1)           B4XOFU10 2985
   B4XOT10 2986-2991 (1)           B4XOTU10 2992      B4XODC10 2993-2997
       B4XOC11 2998-3005  B4XODD11 3006-3016 (2)      B4XODU11 3017-3018
       B4XOR11 3019-3020   B4XOF11 3021-3026 (1)           B4XOFU11 3027
   B4XOT11 3028-3033 (1)           B4XOTU11 3034      B4XODC11 3035-3039
       B4XOC12 3040-3047  B4XODD12 3048-3058 (2)      B4XODU12 3059-3060
       B4XOR12 3061-3062   B4XOF12 3063-3068 (1)           B4XOFU12 3069
   B4XOT12 3070-3075 (1)           B4XOTU12 3076      B4XODC12 3077-3081
         B4XAM 3082-3083        B4XAC1 3084-3089   B4XADD1 3090-3100 (2)
       B4XADU1 3101-3102        B4XAR1 3103-3104    B4XAF1 3105-3110 (1)
            B4XAFU1 3111    B4XAT1 3112-3117 (1)            B4XATU1 3118
       B4XADC1 3119-3123        B4XAC2 3124-3129   B4XADD2 3130-3140 (2)
       B4XADU2 3141-3142        B4XAR2 3143-3144    B4XAF2 3145-3150 (1)
            B4XAFU2 3151    B4XAT2 3152-3157 (1)            B4XATU2 3158
       B4XADC2 3159-3163        B4XAC3 3164-3169   B4XADD3 3170-3180 (2)
       B4XADU3 3181-3182        B4XAR3 3183-3184    B4XAF3 3185-3190 (1)
            B4XAFU3 3191    B4XAT3 3192-3197 (1)            B4XATU3 3198
       B4XADC3 3199-3203        B4XAC4 3204-3209   B4XADD4 3210-3220 (2)
       B4XADU4 3221-3222        B4XAR4 3223-3224    B4XAF4 3225-3230 (1)
            B4XAFU4 3231    B4XAT4 3232-3237 (1)            B4XATU4 3238
       B4XADC4 3239-3243        B4XAC5 3244-3249   B4XADD5 3250-3260 (2)
       B4XADU5 3261-3262        B4XAR5 3263-3264    B4XAF5 3265-3270 (1)
            B4XAFU5 3271    B4XAT5 3272-3277 (1)            B4XATU5 3278
       B4XADC5 3279-3283        B4XAC6 3284-3289   B4XADD6 3290-3300 (2)
       B4XADU6 3301-3302        B4XAR6 3303-3304    B4XAF6 3305-3310 (1)
            B4XAFU6 3311    B4XAT6 3312-3317 (1)            B4XATU6 3318
       B4XADC6 3319-3323        B4XAC7 3324-3329   B4XADD7 3330-3340 (2)
       B4XADU7 3341-3342        B4XAR7 3343-3344    B4XAF7 3345-3350 (1)
            B4XAFU7 3351    B4XAT7 3352-3357 (1)            B4XATU7 3358
       B4XADC7 3359-3363        B4XAC8 3364-3369   B4XADD8 3370-3380 (2)
       B4XADU8 3381-3382        B4XAR8 3383-3384    B4XAF8 3385-3390 (1)
            B4XAFU8 3391    B4XAT8 3392-3397 (1)            B4XATU8 3398
       B4XADC8 3399-3403        B4XAC9 3404-3409   B4XADD9 3410-3420 (2)
       B4XADU9 3421-3422        B4XAR9 3423-3424    B4XAF9 3425-3430 (1)
            B4XAFU9 3431    B4XAT9 3432-3437 (1)            B4XATU9 3438
       B4XADC9 3439-3443       B4XAC10 3444-3449  B4XADD10 3450-3460 (2)
      B4XADU10 3461-3462       B4XAR10 3463-3464   B4XAF10 3465-3470 (1)
           B4XAFU10 3471   B4XAT10 3472-3477 (1)           B4XATU10 3478
      B4XADC10 3479-3483       B4XAC11 3484-3489  B4XADD11 3490-3500 (2)
      B4XADU11 3501-3502       B4XAR11 3503-3504   B4XAF11 3505-3510 (1)
           B4XAFU11 3511   B4XAT11 3512-3517 (1)           B4XATU11 3518
      B4XADC11 3519-3523       B4XAC12 3524-3529  B4XADD12 3530-3540 (2)
      B4XADU12 3541-3542       B4XAR12 3543-3544   B4XAF12 3545-3550 (1)
           B4XAFU12 3551   B4XAT12 3552-3557 (1)           B4XATU12 3558
      B4XADC12 3559-3563               B4XM 3564         B4XMM 3565-3566
        B4XMC1 3567-3574        B4XMC2 3575-3582        B4XMC3 3583-3590
        B4XMC4 3591-3598        B4XMC5 3599-3606        B4XMC6 3607-3614
        B4XMC7 3615-3622        B4XMC8 3623-3630              B4XXM 3631
            B4PWHRF 3632     B4P1A 3633-3641 (2)     B4P1B 3642-3649 (2)
    B4PBMI 3650-3658 (2)     B4P1C 3659-3664 (1)         B4P1D 3665-3667
         B4P1E 3668-3669       B4P1F1S 3670-3672       B4P1F1D 3673-3675
       B4P1F2S 3676-3678       B4P1F2D 3679-3681       B4P1F3S 3682-3684
       B4P1F3D 3685-3687        B4P1GS 3688-3690        B4P1GD 3691-3693
      B4P1GS23 3694-3696      B4P1GD23 3697-3699     B4P2A 3700-3707 (1)
     B4P2B 3708-3715 (1)     B4P2C 3716-3723 (1)     B4P2D 3724-3732 (2)
    B4PWHR 3733-3741 (2)              B4P3A 3742             B4P3A1 3743
      B4P3A2R1 3744-3745      B4P3A2R2 3746-3747      B4P3A2R3 3748-3749
      B4P3A2L1 3750-3751      B4P3A2L2 3752-3753      B4P3A2L3 3754-3755
             B4P3B1 3756       B4P3B2R 3757-3759       B4P3B2L 3760-3762
            B4P3B3R 3763             B4P3B4 3764       B4P3B4A 3765-3766
       B4P3B5R 3767-3769       B4P3B5L 3770-3772             B4P3B6 3773
             B4P3C1 3774        B4P3C2 3775-3777             B4P3C3 3778
              B4P3D 3779              B4P3E 3780              B4P3F 3781
              B4P3G 3782            B4P3H1R 3783        B4P3H2 3784-3785
        B4P3H3 3786-3787             B4P3I1 3788        B4P3I2 3789-3790
            B4P3I3R 3791              B4PMD 3792              B4P4B 3793
        B4P5A1 3794-3795             B4P5A2 3796        B4P5A3 3797-3798
             B4P5A4 3799              B4P5B 3800             B4P5B1 3801
             B4P5B2 3802             B4P5B3 3803             B4P5B4 3804
             B4P5B5 3805             B4P5B6 3806             B4P5B7 3807
             B4P5B8 3808             B4P5B9 3809            B4P5B10 3810
            B4P5B11 3811            B4P5B12 3812            B4P5B13 3813
            B4P5B14 3814            B4P5B15 3815            B4P5B16 3816
            B4P5B17 3817             B4P6A1 3818             B4P6A2 3819
              B4P6B 3820              B4P6C 3821             B4P6D1 3822
             B4P6D2 3823             B4P6D3 3824             B4P6D4 3825
             B4P6E1 3826             B4P6E2 3827             B4P6E3 3828
             B4P6E4 3829            B4P6E4R 3830            B4P6E4L 3831
        B4P6F1 3832-3833        B4P6F2 3834-3835        B4P6F3 3836-3837
        B4P6F4 3838-3839        B4P6F5 3840-3841              B4P7A 3842
            B4P7A1R 3843            B4P7A1L 3844            B4P7A2R 3845
            B4P7A2L 3846         B4P8A 3847-3848        B4P8B1 3849-3850
        B4P8B2 3851-3852             B4P8B3 3853             B4P8B4 3854
             B4P8B5 3855             B4P8B6 3856             B4P8B7 3857
           B4P8C1AD 3858       B4P8C1A 3859-3860      B4P8C1HO 3861-3862
           B4P8C2AD 3863       B4P8C2A 3864-3865      B4P8C2HO 3866-3867
              B4P8D 3868              B4P9A 3869             B4P9A1 3870
             B4P9A2 3871             B4P9A3 3872             B4P9A4 3873
              B4P9B 3874              B4P9C 3875              B4P9D 3876
             B4P9D1 3877             B4P9D2 3878             B4P9D3 3879
       B4P9D3N 3880-3881   B4P9D3S 3882-3886 (1)            B4P10A1 3887
            B4P10A2 3888            B4P10A3 3889            B4P10A4 3890
            B4P10B1 3891            B4P10B2 3892           B4P10B2A 3893
           B4P10B2B 3894            B4P10B3 3895             B4P10C 3896
           B4P10C1R 3897           B4P10C1L 3898           B4P10C2R 3899
           B4P10C2L 3900           B4P10C3R 3901           B4P10C3L 3902
           B4P10C4R 3903           B4P10C4L 3904           B4P10C5R 3905
           B4P10C5L 3906           B4P10C6R 3907           B4P10C6L 3908
           B4P10C7R 3909           B4P10C7L 3910            B4P11A1 3911
        B4P11B 3912-3913            B4P11B1 3914           B4P11B1A 3915
           B4P11B1B 3916           B4P11B1C 3917           B4P11B1D 3918
            B4P11B2 3919           B4P11B2A 3920           B4P11B2B 3921
           B4P11B2C 3922           B4P11B2D 3923            B4P11B3 3924
             B4P12A 3925        B4P12B 3926-3927             B4P12C 3928
            B4P12C1 3929           B4P12C1A 3930           B4P12C1B 3931
           B4P12C1C 3932           B4P12C1D 3933           B4P12C1E 3934
           B4P12C1F 3935            B4P12C2 3936           B4P12C2A 3937
           B4P12C2B 3938           B4P12C2C 3939           B4P12C2D 3940
           B4P12C2E 3941           B4P12C2F 3942            B4P12C3 3943
           B4P12C3A 3944           B4P12C3B 3945           B4P12C3C 3946
           B4P12C3D 3947           B4P12C3E 3948           B4P12C3F 3949
            B4P12C4 3950           B4P12C4A 3951           B4P12C4B 3952
           B4P12C4C 3953           B4P12C4D 3954           B4P12C4E 3955
           B4P12C4F 3956            B4P12C5 3957           B4P12C5A 3958
           B4P12C5B 3959           B4P12C5C 3960           B4P12C5D 3961
           B4P12C5E 3962           B4P12C5F 3963            B4P12C6 3964
            B4P12C7 3965        B4P12D 3966-3967            B4P12E1 3968
            B4P12E2 3969            B4P12E3 3970            B4P12E4 3971
            B4P12E5 3972              B4P13 3973            B4P13A1 3974
            B4P13A2 3975            B4P13A3 3976            B4P13A4 3977
            B4P13B1 3978           B4P13B1A 3979           B4P13B1B 3980
           B4P13B1C 3981           B4P13B1D 3982            B4P13B2 3983
           B4P13B2A 3984           B4P13B2B 3985           B4P13B2C 3986
           B4P13B2D 3987            B4P13B3 3988           B4P13B3A 3989
           B4P13B3B 3990           B4P13B3C 3991           B4P13B3D 3992
            B4P13B4 3993           B4P13B4A 3994           B4P13B4B 3995
           B4P13B4C 3996           B4P13B4D 3997            B4P13B5 3998
           B4P13B5A 3999           B4P13B5B 4000           B4P13B5C 4001
           B4P13B5D 4002           B4P13C1R 4003           B4P13C1L 4004
           B4P13C2R 4005           B4P13C2L 4006           B4P13C3R 4007
           B4P13C3L 4008           B4P13C4A 4009            B4P13D1 4010
           B4P13D1A 4011           B4P13D1B 4012           B4P13D1C 4013
           B4P13D1D 4014            B4P13D2 4015           B4P13D2A 4016
           B4P13D2B 4017           B4P13D2C 4018           B4P13D2D 4019
            B4P13D3 4020           B4P13D3A 4021           B4P13D3B 4022
           B4P13D3C 4023           B4P13D3D 4024            B4P13D4 4025
           B4P13D4A 4026           B4P13D4B 4027           B4P13D4C 4028
           B4P13D4D 4029            B4P13D5 4030           B4P13D5A 4031
           B4P13D5B 4032           B4P13D5C 4033           B4P13D5D 4034
            B4P13E1 4035           B4P13E1A 4036           B4P13E1B 4037
           B4P13E1C 4038           B4P13E1D 4039            B4P13E2 4040
            B4P13E3 4041           B4ZBLOOD 4042   B4BHA1C 4043-4048 (2)
       B4BCHOL 4049-4051      B4BTRIGL 4052-4055        B4BHDL 4056-4058
        B4BLDL 4059-4061  B4BRTHDL 4062-4068 (2)  B4BDHEAS 4069-4074 (1)
   B4BDHEA 4075-4081 (2)  B4BSCREA 4082-4086 (1)    B4BIL6 4087-4094 (2)
      B4BSIL6R 4095-4100        B4BFGN 4101-4103    B4BCRP 4104-4111 (2)
  B4BSESEL 4112-4119 (2)  B4BSICAM 4120-4128 (2)   B4BATBC 4129-4139 (3)
  B4B13CBC 4140-4150 (3)     B4BAC 4151-4162 (3)    B4BBCX 4163-4173 (3)
    B4BLUT 4174-4185 (3)     B4BZX 4186-4197 (3)    B4BLYC 4198-4209 (3)
    B4BRET 4210-4221 (3)   B4BATOC 4222-4234 (3)   B4BGTOC 4235-4246 (3)
   B4BP1NP 4247-4255 (2)   B4BSBAP 4256-4264 (2)   B4BSNTX 4265-4273 (2)
       B4BGLUC 4274-4276      B4BINSLN 4277-4279       B4BIGF1 4280-4282
 B4BHOMAIR 4283-4288 (2)           B4ZURINE 4289           B4BUPROB 4290
  B4BUSTRT 4291-4295 (A)   B4BUEND 4296-4300 (A)           B4BUVDYN 4301
   B4BUVDN 4302-4305 (1)      B4BURVOL 4306-4309  B4BCORTL 4310-4317 (2)
  B4BCORTO 4318-4325 (2)      B4BUCREA 4326-4328  B4BCLCRE 4329-4336 (1)
  B4BCOCRE 4337-4343 (1)  B4BNOREP 4344-4350 (2)   B4BEPIN 4351-4357 (2)
   B4BDOPA 4358-4365 (2)   B4BNE12 4366-4377 (3)  B4BEPI12 4378-4389 (3)
  B4BDOP12 4390-4401 (3)  B4BNOCRE 4402-4413 (3)  B4BEPCRE 4414-4425 (3)
  B4BDOCRE 4426-4437 (3)   B4BNECL 4438-4444 (2)  B4BSUCRE 4445-4453 (3)
    B4BGFR 4454-4465 (3)           B4ZSALIV 4466  B4BSCL11 4467-4474 (2)
  B4BSCL21 4475-4482 (2)  B4BSCL31 4483-4490 (2)  B4BSCL41 4491-4498 (2)
            B4BSDUP 4499  B4BSCL12 4500-4507 (2)  B4BSCL22 4508-4515 (2)
  B4BSCL32 4516-4523 (2)  B4BSCL42 4524-4531 (2)  B4BSCL1A 4532-4539 (2)
  B4BSCL2A 4540-4547 (2)  B4BSCL3A 4548-4555 (2)  B4BSCL4A 4556-4563 (2)
  B4BSCL14 4564-4571 (2)       B4AWAVL 4572-4573           B4AWIMPU 4574
           B4AWMARK 4575           B4AWDAYS 4576           B4AWPART 4577
           B4AWIDIO 4578           B4AWTMZN 4579       B4AWLAG 4580-4581
      B4AWBGNM 4582-4583      B4AWENDM 4584-4585             B4AD11 4586
    B4AD12 4587-4592 (1)             B4AD13 4593   B4AD13S 4594-4599 (1)
    B4AD14 4600-4605 (1)    B4AD15 4606-4611 (1)             B4AD16 4612
       B4AD16M 4613-4614             B4AD17 4615            B4AD17M 4616
    B4AD18 4617-4621 (A)            B4AD18A 4622    B4AD19 4623-4628 (1)
            B4AD110 4629       B4AD111 4630-4631            B4AD112 4632
            B4AD113 4633       B4AD114 4634-4635   B4AD115 4636-4640 (A)
           B4AD115A 4641   B4AD116 4642-4646 (A)           B4AD116A 4647
            B4AD117 4648            B4AD118 4649            B4AD119 4650
            B4AD120 4651             B4AD21 4652    B4AD22 4653-4658 (1)
             B4AD23 4659   B4AD23S 4660-4665 (1)    B4AD24 4666-4671 (1)
    B4AD25 4672-4677 (1)             B4AD26 4678       B4AD26M 4679-4680
             B4AD27 4681            B4AD27M 4682    B4AD28 4683-4687 (A)
            B4AD28A 4688    B4AD29 4689-4694 (1)            B4AD210 4695
       B4AD211 4696-4697            B4AD212 4698            B4AD213 4699
       B4AD214 4700-4701   B4AD215 4702-4706 (A)           B4AD215A 4707
   B4AD216 4708-4712 (A)           B4AD216A 4713            B4AD217 4714
            B4AD218 4715            B4AD219 4716            B4AD220 4717
             B4AD31 4718    B4AD32 4719-4724 (1)             B4AD33 4725
   B4AD33S 4726-4731 (1)    B4AD34 4732-4737 (1)    B4AD35 4738-4743 (1)
             B4AD36 4744       B4AD36M 4745-4746             B4AD37 4747
            B4AD37M 4748    B4AD38 4749-4753 (A)            B4AD38A 4754
    B4AD39 4755-4760 (1)            B4AD310 4761       B4AD311 4762-4763
            B4AD312 4764            B4AD313 4765       B4AD314 4766-4767
   B4AD315 4768-4772 (A)           B4AD315A 4773   B4AD316 4774-4778 (A)
           B4AD316A 4779            B4AD317 4780            B4AD318 4781
            B4AD319 4782            B4AD320 4783             B4AD41 4784
    B4AD42 4785-4790 (1)             B4AD43 4791   B4AD43S 4792-4797 (1)
    B4AD44 4798-4803 (1)    B4AD45 4804-4809 (1)             B4AD46 4810
       B4AD46M 4811-4812             B4AD47 4813            B4AD47M 4814
    B4AD48 4815-4819 (A)            B4AD48A 4820    B4AD49 4821-4826 (1)
            B4AD410 4827       B4AD411 4828-4829            B4AD412 4830
            B4AD413 4831       B4AD414 4832-4833   B4AD415 4834-4838 (A)
           B4AD415A 4839   B4AD416 4840-4844 (A)           B4AD416A 4845
            B4AD417 4846            B4AD418 4847            B4AD419 4848
            B4AD420 4849             B4AD51 4850    B4AD52 4851-4856 (1)
             B4AD53 4857   B4AD53S 4858-4863 (1)    B4AD54 4864-4869 (1)
    B4AD55 4870-4875 (1)             B4AD56 4876       B4AD56M 4877-4878
             B4AD57 4879            B4AD57M 4880    B4AD58 4881-4885 (A)
            B4AD58A 4886    B4AD59 4887-4892 (1)            B4AD510 4893
       B4AD511 4894-4895            B4AD512 4896            B4AD513 4897
       B4AD514 4898-4899   B4AD515 4900-4904 (A)           B4AD515A 4905
   B4AD516 4906-4910 (A)           B4AD516A 4911            B4AD517 4912
            B4AD518 4913            B4AD519 4914            B4AD520 4915
             B4AD61 4916    B4AD62 4917-4922 (1)             B4AD63 4923
   B4AD63S 4924-4929 (1)    B4AD64 4930-4935 (1)    B4AD65 4936-4941 (1)
             B4AD66 4942       B4AD66M 4943-4944             B4AD67 4945
            B4AD67M 4946    B4AD68 4947-4951 (A)            B4AD68A 4952
    B4AD69 4953-4958 (1)            B4AD610 4959       B4AD611 4960-4961
            B4AD612 4962            B4AD613 4963       B4AD614 4964-4965
   B4AD615 4966-4970 (A)           B4AD615A 4971   B4AD616 4972-4976 (A)
           B4AD616A 4977            B4AD617 4978            B4AD618 4979
            B4AD619 4980            B4AD620 4981             B4AD71 4982
    B4AD72 4983-4988 (1)             B4AD73 4989   B4AD73S 4990-4995 (1)
    B4AD74 4996-5001 (1)    B4AD75 5002-5007 (1)             B4AD76 5008
       B4AD76M 5009-5010             B4AD77 5011            B4AD77M 5012
    B4AD78 5013-5017 (A)            B4AD78A 5018    B4AD79 5019-5024 (1)
            B4AD710 5025       B4AD711 5026-5027            B4AD712 5028
            B4AD713 5029       B4AD714 5030-5031   B4AD715 5032-5036 (A)
           B4AD715A 5037   B4AD716 5038-5042 (A)           B4AD716A 5043
            B4AD717 5044            B4AD718 5045            B4AD719 5046
            B4AD720 5047   B4WPSTI 5048-5058 (A)  B4WR1SDY 5059-5068 (A)
   B4WR1ST 5069-5079 (A)  B4WR1EDY 5080-5089 (A)   B4WR1ET 5090-5100 (A)
      B4WR1TAC 5101-5106  B4WR1ACM 5107-5112 (2)      B4WR1MAC 5113-5116
      B4WR1IAC 5117-5118   B4WR1SW 5119-5123 (2)   B4WR1WT 5124-5129 (2)
   B4WR1PW 5130-5135 (2)       B4WR1WB 5136-5138  B4WR1AWB 5139-5144 (2)
  B4WR1SLT 5145-5151 (1)  B4WR1PSL 5152-5157 (2)      B4WR1SLB 5158-5160
  B4WR1ASB 5161-5166 (2)  B4WS1SDY 5167-5176 (A)   B4WS1ST 5177-5187 (A)
  B4WS1EDY 5188-5197 (A)   B4WS1ET 5198-5208 (A)      B4WS1TAC 5209-5214
  B4WS1ACM 5215-5220 (2)      B4WS1MAC 5221-5224      B4WS1IAC 5225-5226
  B4WS1ISW 5227-5231 (2)   B4WS1OL 5232-5237 (2)  B4WS1SNT 5238-5243 (2)
  B4WS1EFF 5244-5249 (2)  B4WS1WSO 5250-5255 (2)   B4WS1WT 5256-5261 (2)
   B4WS1PW 5262-5267 (2)       B4WS1WB 5268-5270  B4WS1AWB 5271-5276 (2)
  B4WS1SLT 5277-5283 (1)  B4WS1PSL 5284-5289 (2)      B4WS1SLB 5290-5292
  B4WS1ASB 5293-5298 (2)  B4WA1SDY 5299-5308 (A)   B4WA1ST 5309-5319 (A)
  B4WA1EDY 5320-5329 (A)   B4WA1ET 5330-5340 (A)      B4WA1TAC 5341-5347
  B4WA1ACM 5348-5354 (2)      B4WA1MAC 5355-5358      B4WA1IAC 5359-5360
  B4WA1ISW 5361-5364 (2)   B4WA1WT 5365-5370 (1)   B4WA1PW 5371-5376 (2)
       B4WA1WB 5377-5379  B4WA1AWB 5380-5385 (2)  B4WA1SLT 5386-5391 (2)
  B4WA1PSL 5392-5397 (2)      B4WA1SLB 5398-5400  B4WA1ASB 5401-5406 (2)
  B4WR2SDY 5407-5416 (A)   B4WR2ST 5417-5427 (A)  B4WR2EDY 5428-5437 (A)
   B4WR2ET 5438-5448 (A)      B4WR2TAC 5449-5454  B4WR2ACM 5455-5460 (2)
      B4WR2MAC 5461-5464      B4WR2IAC 5465-5466   B4WR2SW 5467-5471 (2)
   B4WR2WT 5472-5477 (2)   B4WR2PW 5478-5483 (2)       B4WR2WB 5484-5486
  B4WR2AWB 5487-5492 (2)  B4WR2SLT 5493-5499 (1)  B4WR2PSL 5500-5505 (2)
      B4WR2SLB 5506-5508  B4WR2ASB 5509-5514 (2)  B4WS2SDY 5515-5524 (A)
   B4WS2ST 5525-5535 (A)  B4WS2EDY 5536-5545 (A)   B4WS2ET 5546-5556 (A)
      B4WS2TAC 5557-5562  B4WS2ACM 5563-5568 (2)      B4WS2MAC 5569-5572
      B4WS2IAC 5573-5574  B4WS2ISW 5575-5579 (2)   B4WS2OL 5580-5585 (2)
  B4WS2SNT 5586-5591 (2)  B4WS2EFF 5592-5597 (2)  B4WS2WSO 5598-5603 (2)
   B4WS2WT 5604-5609 (2)   B4WS2PW 5610-5615 (2)       B4WS2WB 5616-5618
  B4WS2AWB 5619-5624 (2)  B4WS2SLT 5625-5631 (1)  B4WS2PSL 5632-5637 (2)
      B4WS2SLB 5638-5640  B4WS2ASB 5641-5646 (2)  B4WA2SDY 5647-5656 (A)
   B4WA2ST 5657-5667 (A)  B4WA2EDY 5668-5677 (A)   B4WA2ET 5678-5688 (A)
      B4WA2TAC 5689-5695  B4WA2ACM 5696-5702 (2)      B4WA2MAC 5703-5706
      B4WA2IAC 5707-5708  B4WA2ISW 5709-5712 (2)   B4WA2WT 5713-5718 (1)
   B4WA2PW 5719-5724 (2)       B4WA2WB 5725-5727  B4WA2AWB 5728-5733 (2)
  B4WA2SLT 5734-5739 (2)  B4WA2PSL 5740-5745 (2)      B4WA2SLB 5746-5748
  B4WA2ASB 5749-5754 (2)  B4WR3SDY 5755-5764 (A)   B4WR3ST 5765-5775 (A)
  B4WR3EDY 5776-5785 (A)   B4WR3ET 5786-5796 (A)      B4WR3TAC 5797-5802
  B4WR3ACM 5803-5808 (2)      B4WR3MAC 5809-5812      B4WR3IAC 5813-5814
   B4WR3SW 5815-5819 (2)   B4WR3WT 5820-5825 (2)   B4WR3PW 5826-5831 (2)
       B4WR3WB 5832-5834  B4WR3AWB 5835-5840 (2)  B4WR3SLT 5841-5847 (1)
  B4WR3PSL 5848-5853 (2)      B4WR3SLB 5854-5856  B4WR3ASB 5857-5862 (2)
  B4WS3SDY 5863-5872 (A)   B4WS3ST 5873-5883 (A)  B4WS3EDY 5884-5893 (A)
   B4WS3ET 5894-5904 (A)      B4WS3TAC 5905-5910  B4WS3ACM 5911-5916 (2)
      B4WS3MAC 5917-5920      B4WS3IAC 5921-5922  B4WS3ISW 5923-5927 (2)
   B4WS3OL 5928-5933 (2)  B4WS3SNT 5934-5939 (2)  B4WS3EFF 5940-5945 (2)
  B4WS3WSO 5946-5951 (2)   B4WS3WT 5952-5957 (2)   B4WS3PW 5958-5963 (2)
       B4WS3WB 5964-5966  B4WS3AWB 5967-5972 (2)  B4WS3SLT 5973-5979 (1)
  B4WS3PSL 5980-5985 (2)      B4WS3SLB 5986-5988  B4WS3ASB 5989-5994 (2)
  B4WA3SDY 5995-6004 (A)   B4WA3ST 6005-6015 (A)  B4WA3EDY 6016-6025 (A)
   B4WA3ET 6026-6036 (A)      B4WA3TAC 6037-6043  B4WA3ACM 6044-6050 (2)
      B4WA3MAC 6051-6054      B4WA3IAC 6055-6056  B4WA3ISW 6057-6060 (2)
   B4WA3WT 6061-6066 (1)   B4WA3PW 6067-6072 (2)       B4WA3WB 6073-6075
  B4WA3AWB 6076-6081 (2)  B4WA3SLT 6082-6087 (2)  B4WA3PSL 6088-6093 (2)
      B4WA3SLB 6094-6096  B4WA3ASB 6097-6102 (2)  B4WR4SDY 6103-6112 (A)
   B4WR4ST 6113-6123 (A)  B4WR4EDY 6124-6133 (A)   B4WR4ET 6134-6144 (A)
      B4WR4TAC 6145-6150  B4WR4ACM 6151-6156 (2)      B4WR4MAC 6157-6160
      B4WR4IAC 6161-6162   B4WR4SW 6163-6167 (2)   B4WR4WT 6168-6173 (2)
   B4WR4PW 6174-6179 (2)       B4WR4WB 6180-6182  B4WR4AWB 6183-6188 (2)
  B4WR4SLT 6189-6195 (1)  B4WR4PSL 6196-6201 (2)      B4WR4SLB 6202-6204
  B4WR4ASB 6205-6210 (2)  B4WS4SDY 6211-6220 (A)   B4WS4ST 6221-6231 (A)
  B4WS4EDY 6232-6241 (A)   B4WS4ET 6242-6252 (A)      B4WS4TAC 6253-6258
  B4WS4ACM 6259-6264 (2)      B4WS4MAC 6265-6268      B4WS4IAC 6269-6270
  B4WS4ISW 6271-6275 (2)   B4WS4OL 6276-6281 (2)  B4WS4SNT 6282-6287 (2)
  B4WS4EFF 6288-6293 (2)  B4WS4WSO 6294-6299 (2)   B4WS4WT 6300-6305 (2)
   B4WS4PW 6306-6311 (2)       B4WS4WB 6312-6314  B4WS4AWB 6315-6320 (2)
  B4WS4SLT 6321-6327 (1)  B4WS4PSL 6328-6333 (2)      B4WS4SLB 6334-6336
  B4WS4ASB 6337-6342 (2)  B4WA4SDY 6343-6352 (A)   B4WA4ST 6353-6363 (A)
  B4WA4EDY 6364-6373 (A)   B4WA4ET 6374-6384 (A)      B4WA4TAC 6385-6391
  B4WA4ACM 6392-6398 (2)      B4WA4MAC 6399-6402      B4WA4IAC 6403-6404
  B4WA4ISW 6405-6408 (2)   B4WA4WT 6409-6414 (1)   B4WA4PW 6415-6420 (2)
       B4WA4WB 6421-6423  B4WA4AWB 6424-6429 (2)  B4WA4SLT 6430-6435 (2)
  B4WA4PSL 6436-6441 (2)      B4WA4SLB 6442-6444  B4WA4ASB 6445-6450 (2)
  B4WR5SDY 6451-6460 (A)   B4WR5ST 6461-6471 (A)  B4WR5EDY 6472-6481 (A)
   B4WR5ET 6482-6492 (A)      B4WR5TAC 6493-6498  B4WR5ACM 6499-6504 (2)
      B4WR5MAC 6505-6508      B4WR5IAC 6509-6510   B4WR5SW 6511-6515 (2)
   B4WR5WT 6516-6521 (2)   B4WR5PW 6522-6527 (2)       B4WR5WB 6528-6530
  B4WR5AWB 6531-6536 (2)  B4WR5SLT 6537-6543 (1)  B4WR5PSL 6544-6549 (2)
      B4WR5SLB 6550-6552  B4WR5ASB 6553-6558 (2)  B4WS5SDY 6559-6568 (A)
   B4WS5ST 6569-6579 (A)  B4WS5EDY 6580-6589 (A)   B4WS5ET 6590-6600 (A)
      B4WS5TAC 6601-6606  B4WS5ACM 6607-6612 (2)      B4WS5MAC 6613-6616
      B4WS5IAC 6617-6618  B4WS5ISW 6619-6623 (2)   B4WS5OL 6624-6629 (2)
  B4WS5SNT 6630-6635 (2)  B4WS5EFF 6636-6641 (2)  B4WS5WSO 6642-6647 (2)
   B4WS5WT 6648-6653 (2)   B4WS5PW 6654-6659 (2)       B4WS5WB 6660-6662
  B4WS5AWB 6663-6668 (2)  B4WS5SLT 6669-6675 (1)  B4WS5PSL 6676-6681 (2)
      B4WS5SLB 6682-6684  B4WS5ASB 6685-6690 (2)  B4WA5SDY 6691-6700 (A)
   B4WA5ST 6701-6711 (A)  B4WA5EDY 6712-6721 (A)   B4WA5ET 6722-6732 (A)
      B4WA5TAC 6733-6739  B4WA5ACM 6740-6746 (2)      B4WA5MAC 6747-6750
      B4WA5IAC 6751-6752  B4WA5ISW 6753-6756 (2)   B4WA5WT 6757-6762 (1)
   B4WA5PW 6763-6768 (2)       B4WA5WB 6769-6771  B4WA5AWB 6772-6777 (2)
  B4WA5SLT 6778-6783 (2)  B4WA5PSL 6784-6789 (2)      B4WA5SLB 6790-6792
  B4WA5ASB 6793-6798 (2)  B4WR6SDY 6799-6808 (A)   B4WR6ST 6809-6819 (A)
  B4WR6EDY 6820-6829 (A)   B4WR6ET 6830-6840 (A)      B4WR6TAC 6841-6846
  B4WR6ACM 6847-6852 (2)      B4WR6MAC 6853-6856      B4WR6IAC 6857-6858
   B4WR6SW 6859-6863 (2)   B4WR6WT 6864-6869 (2)   B4WR6PW 6870-6875 (2)
       B4WR6WB 6876-6878  B4WR6AWB 6879-6884 (2)  B4WR6SLT 6885-6891 (1)
  B4WR6PSL 6892-6897 (2)      B4WR6SLB 6898-6900  B4WR6ASB 6901-6906 (2)
  B4WS6SDY 6907-6916 (A)   B4WS6ST 6917-6927 (A)  B4WS6EDY 6928-6937 (A)
   B4WS6ET 6938-6948 (A)      B4WS6TAC 6949-6954  B4WS6ACM 6955-6960 (2)
      B4WS6MAC 6961-6964      B4WS6IAC 6965-6966  B4WS6ISW 6967-6971 (2)
   B4WS6OL 6972-6977 (2)  B4WS6SNT 6978-6983 (2)  B4WS6EFF 6984-6989 (2)
  B4WS6WSO 6990-6995 (2)   B4WS6WT 6996-7001 (2)   B4WS6PW 7002-7007 (2)
       B4WS6WB 7008-7010  B4WS6AWB 7011-7016 (2)  B4WS6SLT 7017-7023 (1)
  B4WS6PSL 7024-7029 (2)      B4WS6SLB 7030-7032  B4WS6ASB 7033-7038 (2)
  B4WA6SDY 7039-7048 (A)   B4WA6ST 7049-7059 (A)  B4WA6EDY 7060-7069 (A)
   B4WA6ET 7070-7080 (A)      B4WA6TAC 7081-7087  B4WA6ACM 7088-7094 (2)
      B4WA6MAC 7095-7098      B4WA6IAC 7099-7100  B4WA6ISW 7101-7104 (2)
   B4WA6WT 7105-7110 (1)   B4WA6PW 7111-7116 (2)       B4WA6WB 7117-7119
  B4WA6AWB 7120-7125 (2)  B4WA6SLT 7126-7131 (2)  B4WA6PSL 7132-7137 (2)
      B4WA6SLB 7138-7140  B4WA6ASB 7141-7146 (2)  B4WR7SDY 7147-7156 (A)
   B4WR7ST 7157-7167 (A)  B4WR7EDY 7168-7177 (A)   B4WR7ET 7178-7188 (A)
      B4WR7TAC 7189-7194  B4WR7ACM 7195-7200 (2)      B4WR7MAC 7201-7204
      B4WR7IAC 7205-7206   B4WR7SW 7207-7211 (2)   B4WR7WT 7212-7217 (2)
   B4WR7PW 7218-7223 (2)       B4WR7WB 7224-7226  B4WR7AWB 7227-7232 (2)
  B4WR7SLT 7233-7239 (1)  B4WR7PSL 7240-7245 (2)      B4WR7SLB 7246-7248
  B4WR7ASB 7249-7254 (2)  B4WS7SDY 7255-7264 (A)   B4WS7ST 7265-7275 (A)
  B4WS7EDY 7276-7285 (A)   B4WS7ET 7286-7296 (A)      B4WS7TAC 7297-7302
  B4WS7ACM 7303-7308 (2)      B4WS7MAC 7309-7312      B4WS7IAC 7313-7314
  B4WS7ISW 7315-7319 (2)   B4WS7OL 7320-7325 (2)  B4WS7SNT 7326-7331 (2)
  B4WS7EFF 7332-7337 (2)  B4WS7WSO 7338-7343 (2)   B4WS7WT 7344-7349 (2)
   B4WS7PW 7350-7355 (2)       B4WS7WB 7356-7358  B4WS7AWB 7359-7364 (2)
  B4WS7SLT 7365-7371 (1)  B4WS7PSL 7372-7377 (2)      B4WS7SLB 7378-7380
  B4WS7ASB 7381-7386 (2)       B4VHAWR 7387-7388       B4VHADW 7389-7390
       B4VHATH 7391-7392       B4VHASC 7393-7394       B4VHATO 7395-7396
       B4VHAKN 7397-7398       B4VHASP 7399-7400       B4VHABR 7401-7402
       B4VHASM 7403-7404       B4VHAOB 7405-7406       B4VHAKI 7407-7408
       B4VHAOE 7409-7410       B4VHALT 7411-7413       B4VHART 7414-7416
       B4VHALQ 7417-7420       B4VHADZ 7421-7422       B4VHADR 7423-7424
       B4VHADL 7425-7426     B4VST 7427-7431 (A)   B4VATEH 7432-7438 (2)
   B4VCAFH 7439-7445 (2)   B4VCIGH 7446-7452 (2)             B4VCLB 7453
            B4VCLBT 7454            B4VCIRC 7455              B4VLC 7456
    B4VS1T 7457-7461 (A)       B4VSRB1 7462-7463  B4VTASK1 7464-7473 (A)
             B4VCS1 7474      B4VSRCS1 7475-7476       B4VSRR1 7477-7478
  B4VTASK2 7479-7488 (A)             B4VCS2 7489      B4VSRCS2 7490-7491
       B4VSRR2 7492-7493    B4VS2T 7494-7498 (A)       B4VSRU1 7499-7500
    B4VS3T 7501-7505 (A)    B4VS4T 7506-7510 (A)       B4VSTS1 7511-7513
       B4VS1S2 7514-7516       B4VS2S3 7517-7519       B4VS3S4 7520-7522
      B4ZPPHYS 7523-7524      B4ZPHYSD 7525-7526            B4VTERM 7527
           B4VPACEM 7528            B4VPPSS 7529            B4VPPSR 7530
             B4VBEQ 7531            B4VBEQR 7532             B4VMEQ 7533
            B4VMEQR 7534             B4VPEQ 7535            B4VPEQR 7536
             B4VSEQ 7537            B4VSEQR 7538            B4VR1EQ 7539
           B4VR1EQR 7540            B4VR2EQ 7541           B4VR2EQR 7542
             B4VUEQ 7543            B4VUEQR 7544       B4VB1DU 7545-7548
  B4VB1BEG 7549-7555 (1)  B4VB1END 7556-7562 (1)  B4VB1MAX 7563-7569 (1)
       B4VB1NU 7570-7573   B4VB1HR 7574-7580 (1)   B4VB1SD 7581-7588 (2)
  B4VB1LSD 7589-7596 (2)   B4VB1RM 7597-7604 (2)  B4VB1LRM 7605-7612 (2)
   B4VB1LF 7613-7620 (2)  B4VB1LLF 7621-7628 (2)   B4VB1HF 7629-7636 (2)
  B4VB1LHF 7637-7644 (2)       B4VB2DU 7645-7648  B4VB2BEG 7649-7655 (1)
  B4VB2END 7656-7662 (1)  B4VB2MAX 7663-7669 (1)       B4VB2NU 7670-7673
   B4VB2HR 7674-7680 (1)   B4VB2SD 7681-7688 (2)  B4VB2LSD 7689-7696 (2)
   B4VB2RM 7697-7704 (2)  B4VB2LRM 7705-7712 (2)   B4VB2LF 7713-7720 (2)
  B4VB2LLF 7721-7728 (2)   B4VB2HF 7729-7736 (2)  B4VB2LHF 7737-7744 (2)
       B4VM1DU 7745-7748  B4VM1BEG 7749-7755 (1)  B4VM1END 7756-7762 (1)
  B4VM1MAX 7763-7769 (1)       B4VM1NU 7770-7773   B4VM1HR 7774-7780 (1)
   B4VM1SD 7781-7788 (2)  B4VM1LSD 7789-7796 (2)   B4VM1RM 7797-7804 (2)
  B4VM1LRM 7805-7812 (2)   B4VM1LF 7813-7820 (2)  B4VM1LLF 7821-7828 (2)
   B4VM1HF 7829-7836 (2)  B4VM1LHF 7837-7844 (2)       B4VP1DU 7845-7848
  B4VP1BEG 7849-7855 (1)  B4VP1END 7856-7862 (1)  B4VP1MAX 7863-7869 (1)
       B4VP1NU 7870-7873   B4VP1HR 7874-7880 (1)   B4VP1SD 7881-7888 (2)
  B4VP1LSD 7889-7896 (2)   B4VP1RM 7897-7904 (2)  B4VP1LRM 7905-7912 (2)
   B4VP1LF 7913-7920 (2)  B4VP1LLF 7921-7928 (2)   B4VP1HF 7929-7936 (2)
  B4VP1LHF 7937-7944 (2)       B4VP2DU 7945-7948  B4VP2BEG 7949-7955 (1)
  B4VP2END 7956-7962 (1)  B4VP2MAX 7963-7969 (1)       B4VP2NU 7970-7973
   B4VP2HR 7974-7980 (1)   B4VP2SD 7981-7988 (2)  B4VP2LSD 7989-7996 (2)
   B4VP2RM 7997-8004 (2)  B4VP2LRM 8005-8012 (2)   B4VP2LF 8013-8020 (2)
  B4VP2LLF 8021-8028 (2)   B4VP2HF 8029-8036 (2)  B4VP2LHF 8037-8044 (2)
       B4VR1DU 8045-8048  B4VR1BEG 8049-8055 (1)  B4VR1END 8056-8062 (1)
  B4VR1MAX 8063-8069 (1)       B4VR1NU 8070-8073   B4VR1HR 8074-8080 (1)
   B4VR1SD 8081-8088 (2)  B4VR1LSD 8089-8096 (2)   B4VR1RM 8097-8104 (2)
  B4VR1LRM 8105-8112 (2)   B4VR1LF 8113-8120 (2)  B4VR1LLF 8121-8128 (2)
   B4VR1HF 8129-8136 (2)  B4VR1LHF 8137-8144 (2)       B4VR2DU 8145-8148
  B4VR2BEG 8149-8155 (1)  B4VR2END 8156-8162 (1)  B4VR2MAX 8163-8169 (1)
       B4VR2NU 8170-8173   B4VR2HR 8174-8180 (1)   B4VR2SD 8181-8188 (2)
  B4VR2LSD 8189-8196 (2)   B4VR2RM 8197-8204 (2)  B4VR2LRM 8205-8212 (2)
   B4VR2LF 8213-8220 (2)  B4VR2LLF 8221-8228 (2)   B4VR2HF 8229-8236 (2)
  B4VR2LHF 8237-8244 (2)       B4VS1DU 8245-8248  B4VS1BEG 8249-8255 (1)
  B4VS1END 8256-8262 (1)  B4VS1MAX 8263-8269 (1)       B4VS1NU 8270-8273
   B4VS1HR 8274-8280 (1)   B4VS1SD 8281-8288 (2)  B4VS1LSD 8289-8296 (2)
   B4VS1RM 8297-8304 (2)  B4VS1LRM 8305-8312 (2)   B4VS1LF 8313-8320 (2)
  B4VS1LLF 8321-8328 (2)   B4VS1HF 8329-8336 (2)  B4VS1LHF 8337-8344 (2)
       B4VS2DU 8345-8348  B4VS2BEG 8349-8355 (1)  B4VS2END 8356-8362 (1)
  B4VS2MAX 8363-8369 (1)       B4VS2NU 8370-8373   B4VS2HR 8374-8380 (1)
   B4VS2SD 8381-8388 (2)  B4VS2LSD 8389-8396 (2)   B4VS2RM 8397-8404 (2)
  B4VS2LRM 8405-8412 (2)   B4VS2LF 8413-8420 (2)  B4VS2LLF 8421-8428 (2)
   B4VS2HF 8429-8436 (2)  B4VS2LHF 8437-8444 (2)       B4VU1DU 8445-8448
  B4VU1BEG 8449-8455 (1)  B4VU1END 8456-8462 (1)  B4VU1MAX 8463-8469 (1)
       B4VU1NU 8470-8473   B4VU1HR 8474-8480 (1)   B4VU1SD 8481-8488 (2)
  B4VU1LSD 8489-8496 (2)   B4VU1RM 8497-8504 (2)  B4VU1LRM 8505-8512 (2)
   B4VU1LF 8513-8520 (2)  B4VU1LLF 8521-8528 (2)   B4VU1HF 8529-8536 (2)
  B4VU1LHF 8537-8544 (2)
   .

* SPSS VARIABLE LABELS COMMAND

VARIABLE LABELS
   M2ID      'MIDUS 2 ID number' /
   M2FAMNUM  'MIDUS 2 Family number' /
   SAMPLMAJ  'Major sample identification (aka Sample)' /
   B1PAGE_M2 'Age determined by subtracting DOB_Final from b1ipidate' /
   B1PGENDER 'Gender' /
   B4ZSITE   'P4 data collection site' /
   B4ZCOMPM  'Month P4 data was collected' /
   B4ZCOMPY  'Year P4 data was collected' /
   B4ZRZONE  'Time Zone of Residence at P4 Visit' /
   B4ZSZONE  'Time Zone of P4 Site' /
   B4ZB1PLG  'Lag P1 Phone to P4 complete in months,rounded' /
   B4ZB1SLG  'Lag P1 SAQ to P4 complete in months,rounded' /
   B4ZB1CLG  'Lag P1 Cognitive Battery to P4 complete in months,rounded' /
   B4ZAGE    'Respondent age at P4 data collection' /
   B4Q1A     'MASQ Felt sad' /
   B4Q1B     'MASQ Startled easily' /
   B4Q1C     'MASQ Felt cheerful' /
   B4Q1D     'MASQ Felt Afraid' /
   B4Q1E     'MASQ Felt discouraged' /
   B4Q1F     'MASQ Hands were shaky' /
   B4Q1G     'MASQ Felt optimistic' /
   B4Q1H     'MASQ Had diarrhea' /
   B4Q1I     'MASQ Felt worthless' /
   B4Q1J     'MASQ Felt really happy' /
   B4Q1K     'MASQ Felt nervous' /
   B4Q1L     'MASQ Felt depressed' /
   B4Q1M     'MASQ Was short of breath' /
   B4Q1N     'MASQ Felt uneasy' /
   B4Q1O     'MASQ Was proud of myself' /
   B4Q1P     'MASQ Had a lump in my throat' /
   B4Q1Q     'MASQ Felt faint' /
   B4Q1R     'MASQ Felt unattractive' /
   B4Q1S     'MASQ Had hot or cold spells' /
   B4Q1T     'MASQ Had an upset stomach' /
   B4Q1U     'MASQ Felt like a failure' /
   B4Q1V     'MASQ Felt like I was having a lot of fun' /
   B4Q1W     'MASQ Blamed myself for a lot of things' /
   B4Q1X     'MASQ Hands were cold or sweaty' /
   B4Q1Y     'MASQ Felt withdrawn from other people' /
   B4Q1Z     'MASQ Felt keyed up, on edge' /
   B4Q1AA    'MASQ Felt like I had a lot of energy' /
   B4Q1BB    'MASQ Was trembling or shaking' /
   B4Q1CC    'MASQ Felt inferior to others' /
   B4Q1DD    'MASQ Had trouble swallowing' /
   B4Q1EE    'MASQ Felt like crying' /
   B4Q1FF    'MASQ Was unable to relax' /
   B4Q1GG    'MASQ Felt really slowed down' /
   B4Q1HH    'MASQ Was disappointed in myself' /
   B4Q1II    'MASQ Felt nauseous' /
   B4Q1JJ    'MASQ Felt hopeless' /
   B4Q1KK    'MASQ Felt dizzy or lightheaded' /
   B4Q1LL    'MASQ Felt sluggish or tired' /
   B4Q1MM    'MASQ Felt really up or lively' /
   B4Q1NN    'MASQ Had pain in my chest' /
   B4Q1OO    'MASQ Felt really bored' /
   B4Q1PP    'MASQ Felt like I was choking' /
   B4Q1QQ    'MASQ Looked forward with enjoyment' /
   B4Q1RR    'MASQ Muscles twitched or trembled' /
   B4Q1SS    'MASQ Felt pessimistic about the future' /
   B4Q1TT    'MASQ Had a very dry mouth' /
   B4Q1UU    'MASQ Had a lot of interesting things to do' /
   B4Q1VV    'MASQ Was afraid I was going to die' /
   B4Q1WW    'MASQ Felt like I had accomplished a lot' /
   B4Q1XX    'MASQ Felt took extra effort get started' /
   B4Q1YY    'MASQ Felt nothing was very enjoyable' /
   B4Q1ZZ    'MASQ Heart was racing or pounding' /
   B4Q1AAA   'MASQ Felt had a lot to look forward to' /
   B4Q1BBB   'MASQ Felt numbness or tingling in body' /
   B4Q1CCC   'MASQ Felt tense or high-strung' /
   B4Q1DDD   'MASQ Felt hopeful about the future' /
   B4Q1EEE   'MASQ Felt nothing fun/interesting to do' /
   B4Q1FFF   'MASQ Seemed to move quickly and easily' /
   B4Q1GGG   'MASQ Muscles were tense or sore' /
   B4Q1HHH   'MASQ Felt really good about myself' /
   B4Q1III   'MASQ Thought about death or suicide' /
   B4Q1JJJ   'MASQ Had to urinate frequently' /
   B4Q1KKK   'MASQ Felt like I am a good person' /
   B4Q1LLL   'MASQ Felt guilty' /
   B4QMA_D   'MASQ: General Distress-Depressive Symptoms' /
   B4QMA_A   'MASQ: General Distress-Anxious Symptoms' /
   B4QMA_LI  'MASQ: Loss of Interest' /
   B4QMA_AA  'MASQ: Anxious Arousal' /
   B4QMA_PA  'MASQ: High Positive Affect' /
   B4Q2      'How rate your day overall' /
   B4Q3A     'CESD Unusually bothered by things' /
   B4Q3B     'CESD Appetite was poor' /
   B4Q3C     'CESD Could not shake off blues' /
   B4Q3D     'CESD Felt I was as good as others' /
   B4Q3E     'CESD Trouble keeping mind on tasks' /
   B4Q3F     'CESD Felt depressed' /
   B4Q3G     'CESD Everything I did was an effort' /
   B4Q3H     'CESD Hopeful about the future' /
   B4Q3I     'CESD Thought my life had been a failure' /
   B4Q3J     'CESD Felt fearful' /
   B4Q3K     'CESD Sleep was restless' /
   B4Q3L     'CESD I was happy' /
   B4Q3M     'CESD I talked less than usual' /
   B4Q3N     'CESD I felt lonely' /
   B4Q3O     'CESD People were unfriendly' /
   B4Q3P     'CESD I enjoyed life' /
   B4Q3Q     'CESD I had crying spells' /
   B4Q3R     'CESD I felt sad' /
   B4Q3S     'CESD I felt that people dislike me' /
   B4Q3T     'CESD I could not get going' /
   B4QCESD   'CESD: Center for Epidemiologic Studies Depression Scale' /
   B4Q4A     'PSS Upset by something unexpected' /
   B4Q4B     'PSS Unable to control important things' /
   B4Q4C     'PSS Felt nervous and stressed' /
   B4Q4D     'PSS Confident to handle personal problems' /
   B4Q4E     'PSS Things were going your way' /
   B4Q4F     'PSS Could not cope with all things to do' /
   B4Q4G     'PSS Able to control irritations in life' /
   B4Q4H     'PSS Felt on top of things' /
   B4Q4I     'PSS Angered by things outside control' /
   B4Q4J     'PSS Difficulties piling up cant overcome' /
   B4QPS_PS  'Percieved Stress Scale' /
   B4Q5A     'ANG-EXP Withdraw from people' /
   B4Q5B     'ANG-EXP Pout or sulk' /
   B4Q5C     'ANG-EXP Angrier than willing to admit' /
   B4Q5D     'ANG-EXP Secretly critical of others' /
   B4Q5E     'ANG-EXP Boil inside; dont show it' /
   B4Q5F     'ANG-EXP Harbor grudges' /
   B4Q5G     'ANG-EXP Keep things in' /
   B4Q5H     'ANG-EXP Irritated more than others aware' /
   B4Q5I     'ANG-EXP Slam doors' /
   B4Q5J     'ANG-EXP Say nasty things' /
   B4Q5K     'ANG-EXP Make sarcastic remarks' /
   B4Q5L     'ANG-EXP Argue with others' /
   B4Q5M     'ANG-EXP Lose my temper' /
   B4Q5N     'ANG-EXP Strike out at what infuriates me' /
   B4Q5O     'ANG-EXP Express my anger' /
   B4Q5P     'ANG-EXP Someone annoys me, I tell them' /
   B4Q5Q     'ANG-EXP Control my temper' /
   B4Q5R     'ANG-EXP Keep my cool' /
   B4Q5S     'ANG-EXP Calm down faster' /
   B4Q5T     'ANG-EXP Make threats' /
   B4QAE_AI  'Spielberger Anger Expression: Anger/In' /
   B4QAE_AO  'Spielberger Anger Expression: Anger/Out' /
   B4QAE_AC  'Spielberger Anger Expression: Anger/Control' /
   B4Q5U     'ANG-EXP Do nothing' /
   B4Q5V     'ANG-EXP Ignore what angers me' /
   B4QAE_AA  'Anger Expresson: Adjustment Scale' /
   B4Q6A     'T- ANG Fiery temper' /
   B4Q6B     'T- ANG Quick tempered' /
   B4Q6C     'T- ANG Hotheaded person' /
   B4Q6D     'T- ANG Annoyed if singled out & corrected' /
   B4Q6E     'T- ANG Furious when criticized publicly' /
   B4Q6F     'T- ANG Angry if slowed by others mistakes' /
   B4Q6G     'T- ANG Infuriated; good job; bad review' /
   B4Q6H     'T- ANG Fly off the handle' /
   B4Q6I     'T- ANG Annoyed no recognition; good work' /
   B4Q6J     'T- ANG People think always right irritate me' /
   B4Q6K     'T- ANG Get mad, say nasty things' /
   B4Q6L     'T- ANG Feel irritated' /
   B4Q6M     'T- ANG Feel angry' /
   B4Q6N     'T- ANG Get frustrated, feel like hitting' /
   B4Q6O     'T- ANG Blood boils under pressure' /
   B4QTA_AG  'Spielberger Trait Anger Inventory' /
   B4QTA_AT  'Spielberger Trait Anger: Angry Temperament' /
   B4QTA_AR  'Spielberger Anger: Angry Reaction' /
   B4Q7A     'T- ANX Feel pleasant' /
   B4Q7B     'T- ANX Tire quickly' /
   B4Q7C     'T- ANX Feel like crying' /
   B4Q7D     'T- ANX Wish could be happy as others' /
   B4Q7E     'T- ANX Lose out because slow to decide' /
   B4Q7F     'T- ANX Feel rested' /
   B4Q7G     'T- ANX Calm, cool and collected' /
   B4Q7H     'T- ANX Difficulties pilling up; cant overcome' /
   B4Q7I     'T- ANX Worry too much over small things' /
   B4Q7J     'T- ANX I am happy' /
   B4Q7K     'T- ANX Inclined to take things hard' /
   B4Q7L     'T- ANX Lack self-confidence' /
   B4Q7M     'T- ANX Feel secure' /
   B4Q7N     'T- ANX Avoid facing crisis or difficulty' /
   B4Q7O     'T- ANX Feel blue' /
   B4Q7P     'T- ANX I am content' /
   B4Q7Q     'T- ANX Unimportant thoughts; bother me' /
   B4Q7R     'T- ANX Cant put disappointment out of mind' /
   B4Q7S     'T- ANX I am a steady person' /
   B4Q7T     'T- ANX Tension; think over recent concern' /
   B4QTA_AX  'Spielberger Trait Anxiety Inventory' /
   B4Q8A     'S- ANX Talking to authority' /
   B4Q8B     'S- ANX Going to a party' /
   B4Q8C     'S- ANX Working while observed' /
   B4Q8D     'S- ANX Calling someone you dont know well' /
   B4Q8E     'S- ANX Talking with people dont know well' /
   B4Q8F     'S- ANX Center of attention' /
   B4Q8G     'S- ANX Express disagreement to stranger' /
   B4Q8H     'S- ANX Returning goods to a store' /
   B4Q8I     'S- ANX Resist high-pressure salesperson' /
   B4QSA_SA  'Social Anxiety Scale' /
   B4Q9A     'CTQ Didnt have enough to eat' /
   B4Q9B     'CTQ Knew someone was there for me' /
   B4Q9C     'CTQ Family called me names' /
   B4Q9D     'CTQ Parents drunk-high, care not given' /
   B4Q9E     'CTQ Family member made me feel special' /
   B4Q9F     'CTQ Had to wear dirty clothes' /
   B4Q9G     'CTQ Felt loved' /
   B4Q9H     'CTQ Thought parents wished I wasnt born' /
   B4Q9I     'CTQ Family hit hard, I had to see doctor' /
   B4Q9J     'CTQ I did not want to change my family' /
   B4Q9K     'CTQ Family hit hard, bruises or marks' /
   B4Q9L     'CTQ Punished with belt or hard object' /
   B4Q9M     'CTQ Family looked out for each other' /
   B4Q9N     'CTQ Family said hurtful things to me' /
   B4Q9O     'CTQ Believe I was physically abused' /
   B4Q9P     'CTQ Had the perfect childhood' /
   B4Q9Q     'CTQ Hit so bad, people noticed' /
   B4Q9R     'CTQ Felt family member hated me' /
   B4Q9S     'CTQ Family felt close to each other' /
   B4Q9T     'CTQ Someone tried to touch me sexually' /
   B4Q9U     'CTQ Other threaten harm if no sexual acts' /
   B4Q9V     'CTQ Best family in the world' /
   B4Q9W     'CTQ Other tried to force do/watch sexual' /
   B4Q9X     'CTQ Someone molested me' /
   B4Q9Y     'CTQ Believe I was emotionally abused' /
   B4Q9Z     'CTQ I was taken to doctor if needed' /
   B4Q9AA    'CTQ Believe I was sexually abused' /
   B4Q9BB    'CTQ Family source of strength-support' /
   B4QCT_EA  'CTQ: Emotional Abuse' /
   B4QCT_PA  'CTQ: Physical Abuse' /
   B4QCT_SA  'CTQ: Sexual Abuse' /
   B4QCT_EN  'CTQ: Emotional Neglect' /
   B4QCT_PN  'CTQ: Physical Neglect' /
   B4QCT_MD  'CTQ: Minimization/Denial' /
   B4Q10A1   'PES-FREQ Appreciate nature' /
   B4Q10A2   'PES-FEEL Appreciate nature' /
   B4Q10B1   'PES-FREQ Meet someone new' /
   B4Q10B2   'PES-FEEL Meet someone new' /
   B4Q10C1   'PES-FREQ Plan trips or vacations' /
   B4Q10C2   'PES-FEEL Plan trips or vacations' /
   B4Q10D1   'PES-FREQ Reading' /
   B4Q10D2   'PES-FEEL Reading' /
   B4Q10E1   'PES-FREQ Helping someone' /
   B4Q10E2   'PES-FEEL Helping someone' /
   B4Q10F1   'PES-FREQ Breathing clean air' /
   B4Q10F2   'PES-FEEL Breathing clean air' /
   B4Q10G1   'PES-FREQ Saying something clearly' /
   B4Q10G2   'PES-FEEL Saying something clearly' /
   B4Q10H1   'PES-FREQ Thinking about good in future' /
   B4Q10H2   'PES-FEEL Thinking about good in future' /
   B4Q10I1   'PES-FREQ Laughing' /
   B4Q10I2   'PES-FEEL Laughing' /
   B4Q10J1   'PES-FREQ Being with animals' /
   B4Q10J2   'PES-FEEL Being with animals' /
   B4Q10K1   'PES-FREQ Having an open conversation' /
   B4Q10K2   'PES-FEEL Having an open conversation' /
   B4Q10L1   'PES-FREQ Going to a party' /
   B4Q10L2   'PES-FEEL Going to a party' /
   B4Q10M1   'PES-FREQ Giving thanks for daily life' /
   B4Q10M2   'PES-FEEL Giving thanks for daily life' /
   B4Q10N1   'PES-FREQ Being with friends' /
   B4Q10N2   'PES-FEEL Being with friends' /
   B4Q10O1   'PES-FREQ Being popular at a gathering' /
   B4Q10O2   'PES-FEEL Being popular at a gathering' /
   B4Q10P1   'PES-FREQ Enjoying TV or movies' /
   B4Q10P2   'PES-FEEL Enjoying TV or movies' /
   B4Q10Q1   'PES-FREQ Sitting in the sun' /
   B4Q10Q2   'PES-FEEL Sitting in the sun' /
   B4Q10R1   'PES-FREQ Seeing good happen to Fam/Frnd' /
   B4Q10R2   'PES-FEEL Seeing good happen to Fam/Frnd' /
   B4Q10S1   'PES-FREQ Planning something' /
   B4Q10S2   'PES-FEEL Planning something' /
   B4Q10T1   'PES-FREQ Having a lively talk' /
   B4Q10T2   'PES-FEEL Having a lively talk' /
   B4Q10U1   'PES-FREQ Being with family' /
   B4Q10U2   'PES-FEEL Being with family' /
   B4Q10V1   'PES-FREQ Taking a relaxing bath' /
   B4Q10V2   'PES-FEEL Taking a relaxing bath' /
   B4Q10W1   'PES-FREQ Seeing beautiful scenery' /
   B4Q10W2   'PES-FEEL Seeing beautiful scenery' /
   B4Q10X1   'PES-FREQ Eating good meals' /
   B4Q10X2   'PES-FEEL Eating good meals' /
   B4Q10Y1   'PES-FREQ Having spare time' /
   B4Q10Y2   'PES-FEEL Having spare time' /
   B4Q10Z1   'PES-FREQ Noticed as sexually attractive' /
   B4Q10Z2   'PES-FEEL Noticed as sexually attractive' /
   B4Q10AA1  'PES-FREQ Learning to do something new' /
   B4Q10AA2  'PES-FEEL Learning to do something new' /
   B4Q10BB1  'PES-FREQ Complimenting someone' /
   B4Q10BB2  'PES-FEEL Complimenting someone' /
   B4Q10CC1  'PES-FREQ Thinking about people I like' /
   B4Q10CC2  'PES-FEEL Thinking about people I like' /
   B4Q10DD1  'PES-FREQ Kissing' /
   B4Q10DD2  'PES-FEEL Kissing' /
   B4Q10EE1  'PES-FREQ Praying or meditating' /
   B4Q10EE2  'PES-FEEL Praying or meditating' /
   B4Q10FF1  'PES-FREQ Doing a project my own way' /
   B4Q10FF2  'PES-FEEL Doing a project my own way' /
   B4Q10GG1  'PES-FREQ Having peace and quiet' /
   B4Q10GG2  'PES-FEEL Having peace and quiet' /
   B4Q10HH1  'PES-FREQ Being relaxed' /
   B4Q10HH2  'PES-FEEL Being relaxed' /
   B4Q10II1  'PES-FREQ Sleeping soundly at night' /
   B4Q10II2  'PES-FEEL Sleeping soundly at night' /
   B4Q10JJ1  'PES-FREQ Having a good fitness workout' /
   B4Q10JJ2  'PES-FEEL Having a good fitness workout' /
   B4Q10KK1  'PES-FREQ Amusing people' /
   B4Q10KK2  'PES-FEEL Amusing people' /
   B4Q10LL1  'PES-FREQ Being with someone I love' /
   B4Q10LL2  'PES-FEEL Being with someone I love' /
   B4Q10MM1  'PES-FREQ Sexual relation with partner' /
   B4Q10MM2  'PES-FEEL Sexual relation with partner' /
   B4Q10NN1  'PES-FREQ Watching sports' /
   B4Q10NN2  'PES-FEEL Watching sports' /
   B4Q10OO1  'PES-FREQ Being with happy people' /
   B4Q10OO2  'PES-FEEL Being with happy people' /
   B4Q10PP1  'PES-FREQ Smiling at people' /
   B4Q10PP2  'PES-FEEL Smiling at people' /
   B4Q10QQ1  'PES-FREQ Being with spouse/partner' /
   B4Q10QQ2  'PES-FEEL Being with spouse/partner' /
   B4Q10RR1  'PES-FREQ Teaching or advising someone' /
   B4Q10RR2  'PES-FEEL Teaching or advising someone' /
   B4Q10SS1  'PES-FREQ Being complimented' /
   B4Q10SS2  'PES-FEEL Being complimented' /
   B4Q10TT1  'PES-FREQ Being told I am loved' /
   B4Q10TT2  'PES-FEEL Being told I am loved' /
   B4Q10UU1  'PES-FREQ Seeing old friends' /
   B4Q10UU2  'PES-FEEL Seeing old friends' /
   B4Q10VV1  'PES-FREQ Shopping' /
   B4Q10VV2  'PES-FEEL Shopping' /
   B4Q10WW1  'PES-FREQ Feeling no pain' /
   B4Q10WW2  'PES-FEEL Feeling no pain' /
   B4Q11A    'RELAT Respect authority figures' /
   B4Q11B    'RELAT Prefer to say NO directly' /
   B4Q11C    'RELAT Important to keep harmony in group' /
   B4Q11D    'RELAT Speaking up is no problem' /
   B4Q11E    'RELAT Lively imagination important' /
   B4Q11F    'RELAT Being singled out for praise OK' /
   B4Q11G    'RELAT Respect for modest people' /
   B4Q11H    'RELAT Same person at home, work, social' /
   B4Q11I    'RELAT Sacrifice self for benefit of group' /
   B4Q11J    'RELAT Should consider others input: plans' /
   B4Q11K    'RELAT Prefer to be direct with new people' /
   B4Q11L    'RELAT Important to respect group decision' /
   B4Q11M    'RELAT Stay with group even if not happy' /
   B4Q11N    'RELAT If family fails, I feel responsible' /
   B4Q11O    'RELAT Even if strong disagree -dont argue' /
   B4Q11P    'RELAT Important to have my own ideas' /
   B4Q11Q    'RELAT Important to listen to others' /
   B4Q11R    'RELAT Obligated to be informed with news' /
   B4Q11S    'RELAT Obligated to vote in elections' /
   B4Q11T    'RELAT Obligated time/money to social causes' /
   B4Q11U    'RELAT Drop plans if family very troubled' /
   B4Q11V    'RELAT Obligated to contact family regularly' /
   B4Q11W    'RELAT Obligated give needy friend money' /
   B4Q11X    'RELAT Obligated to take adult child in' /
   B4Q11Y    'RELAT My work makes world better place' /
   B4Q11Z    'RELAT Think of harm my work may cause' /
   B4Q11AA   'RELAT Help out colleagues at work' /
   B4Q11BB   'RELAT Volunteer do unwanted tasks at work' /
   B4Q11CC   'RELAT Known for honesty/integrity at work' /
   B4QSC_ID  'Singelis Self-Construal Independence Subscale' /
   B4QSC_IT  'Singelis Self-Construal Interdependence Subscale' /
   B4QSO_PC  'Social Obligation: Public Community' /
   B4QSO_PF  'Social Obligation: Private Family/Friends 3 items' /
   B4QSO_PX  'Social Obligation: Private Family/Friends 4 items' /
   B4QSO_IW  'Social Obligation: Private/Ingroup Work' /
   B4QSO_GW  'Good Work Scale' /
   B4Q12A    'RELAT Close relations impt reflection me' /
   B4Q12B    'RELAT Very close others impt part of me' /
   B4Q12C    'RELAT Pride: close others accomplishments' /
   B4Q12D    'RELAT Who I am is who friends are' /
   B4Q12E    'RELAT Think of self, think of fam/frnds' /
   B4Q12F    'RELAT Someone close is hurt, I feel hurt' /
   B4Q12G    'RELAT Close relation: no effect self feeling' /
   B4Q12H    'RELAT Close relations not impt who I am' /
   B4Q12I    'RELAT Pride comes from close friends' /
   B4Q12J    'RELAT Identify closely with close friends' /
   B4Q12K    'RELAT Walk in a room can figure out mood' /
   B4Q12L    'RELAT Not affected by moods of others' /
   B4Q12M    'RELAT Cant be happy if friend in trouble' /
   B4Q12N    'RELAT Moved when hear hardships' /
   B4Q12O    'RELAT Nothing more vital than sympathy' /
   B4Q12P    'RELAT My sympathy has its limits' /
   B4Q12Q    'RELAT Follow opinion of people I respect' /
   B4Q12R    'RELAT Adjust opinion to fit group' /
   B4Q12S    'RELAT Adjust values to fit others' /
   B4Q12T    'RELAT Adjust to things hard to change' /
   B4Q12U    'RELAT Life uncertain: try change no use' /
   B4QRISC   'Relational Interdependent self-construal scale' /
   B4QSYMP   'Sympathy scale' /
   B4QADJ    'Adjustment scale' /
   B4Q13A    'SUPFRND Care about friends' /
   B4Q13B    'SUPFRND Understand friends feeling' /
   B4Q13C    'SUPFRND Friends rely on you serious probs' /
   B4Q13D    'SUPFRND Friends open up to you re worries' /
   B4Q13E    'SUPFRND Make too many demands on friend' /
   B4Q13F    'SUPFRND Criticize friends' /
   B4Q13G    'SUPFRND Let friends down' /
   B4Q13H    'SUPFRND Get on friends nerves' /
   B4Q13H1   'SUPFRND-# Friends' /
   B4Q13I    'SUPFAM Family rely on you serious probs' /
   B4Q13J    'SUPFAM Family open up to you re worries' /
   B4Q13K    'SUPFAM Make too many demands on family' /
   B4Q13L    'SUPFAM Criticize family' /
   B4Q13M    'SUPFAM Let family down' /
   B4Q13N    'SUPFAM Get on family nerves' /
   B4Q13O1   'SUPPART married or living with partner' /
   B4Q13O    'SUPPART Care about partner' /
   B4Q13P    'SUPPART Understand partner' /
   B4Q13Q    'SUPPART Appreciate partner' /
   B4Q13R    'SUPPART Partner rely on you serious probs' /
   B4Q13S    'SUPPART Partner open up re worries' /
   B4Q13T    'SUPPART Partner relax/be self with you' /
   B4Q13U    'SUPPART Make too many demands on partner' /
   B4Q13V    'SUPPART Partner feel tense' /
   B4Q13W    'SUPPART Argue with partner' /
   B4Q13X    'SUPPART Criticize partner' /
   B4Q13Y    'SUPPART Let partner down' /
   B4Q13Z    'SUPPART Get on partners nerves' /
   B4QSUGF   'Support Given to Friends' /
   B4QSTGF   'Strain Given to Friends' /
   B4QSOGFD  'Affectual Solidarity Given to Friends' /
   B4QSUGFA  'Support Given to Family' /
   B4QSTGFA  'Strain Given to Family' /
   B4QSOGFM  'Affectual Solidarity Given to Family' /
   B4QSUGS   'Support Given to Spouse' /
   B4QSTGS   'Strain Given to Spouse' /
   B4QSOLGS  'Affectual Solidarity Given to Spouse/partner' /
   B4Q14A    'CNTRL Make self do things dont want to' /
   B4Q14B    'CNTRL If I have prob; others have worse' /
   B4Q14C    'CNTRL Can control thoughts/desires' /
   B4Q14D    'CNTRL Impt think, feel, act as needed' /
   B4Q14E    'CNTRL Can improve self if change thoughts' /
   B4Q14F    'CNTRL Impt be strong in mind and body' /
   B4Q14G    'CNTRL Control emotions by change thoughts' /
   B4Q14H    'CNTRL I keep my emotions to myself' /
   B4Q14I    'CNTRL In stress, use thoughts keep calm' /
   B4Q14J    'CNTRL Feel, but dont express neg emotion' /
   B4Q14K    'CNTRL Known as emotional person' /
   B4Q14L    'CNTRL Impt not to be bother to others' /
   B4Q14M    'CNTRL Try to behave: so no trouble others' /
   B4Q14N    'CNTRL Worry I am burden on others' /
   B4Q14O    'CNTRL I know my own limitations' /
   B4Q14P    'CNTRL Do best to maintain a calm mind' /
   B4Q14Q    'CNTRL Top priority: do what supposed to' /
   B4Q14R    'CNTRL Feel very tense when evaluated' /
   B4Q14S    'CNTRL Often concerned re: response to me' /
   B4QSC_SC  'Self-control Scale' /
   B4QSC_CC  'Cognition Control' /
   B4QSC_EC  'Emotion Control' /
   B4QSC_BC  'Burden Consciousness' /
   B4Q15A    'GDLIFE More happy than peers' /
   B4Q15B    'GDLIFE Life close to ideal' /
   B4Q15C    'GDLIFE Life conditions excellent' /
   B4Q15D    'GDLIFE Satisfied with life' /
   B4Q15E    'GDLIFE Gotten important things' /
   B4Q15F    'GDLIFE Live over, change nothing' /
   B4Q15G    'GDLIFE So much to be thankful for' /
   B4Q15H    'GDLIFE Grateful to many people' /
   B4QSW_SL  'Subjective WellBeing - Satisfaction with Life Scale' /
   B4QSW_GR  'Subjective Well-being: Gratitude Scale' /
   B4Q16A    'GDLIFE Be critical/reflect on actions' /
   B4Q16B    'GDLIFE Needed by others' /
   B4Q16C    'GDLIFE Harmony with others/events' /
   B4Q16D    'GDLIFE Make good effort/stick to it' /
   B4Q16E    'GDLIFE Peace and satisfaction' /
   B4Q16F    'GDLIFE Sympathy from others' /
   B4Q16G    'GDLIFE Respect from others' /
   B4Q16H    'GDLIFE Give back to society' /
   B4QSW_JP  'Subjective Well-Being Japanese Comparison' /
   B4Q17A    'What do you do to make life go well' /
   B4S1      'Usual bedtime' /
   B4S1AMPM  'Usual Bedtime AM or PM' /
   B4S2      'Minutes to fall asleep' /
   B4S3      'Usual getting up time' /
   B4S3AMPM  'Usual Getting up time AM or PM' /
   B4S4      'Hours of sleep' /
   B4S5      'Sleep quality' /
   B4S6      'Enthusiasm' /
   B4S7      'Medicine to sleep' /
   B4S8      'Trouble staying awake' /
   B4S9      'Have bed partner' /
   B4S10A    'Bed partner loud snoring' /
   B4S10B    'Bed partner pauses btwn breaths' /
   B4S10C    'Bed partner legs twitching' /
   B4S10D    'Bed partner disorientation' /
   B4S10E    'Bed partner other restlessness' /
   B4S11A    'Sleep trouble could not sleep' /
   B4S11B    'Sleep trouble woke up' /
   B4S11C    'Sleep trouble had to use bathroom' /
   B4S11D    'Sleep trouble could not breathe' /
   B4S11E    'Sleep trouble coughed and snored' /
   B4S11F    'Sleep trouble felt too cold' /
   B4S11G    'Sleep trouble felt too hot' /
   B4S11H    'Sleep trouble had bad dreams' /
   B4S11I    'Sleep trouble had pain' /
   B4S11J    'Sleep trouble other reasons' /
   B4SSQ_GS  'B4SLEEP:Global Score' /
   B4SSQ_S1  'B4SLEEP:Component 1 - Subjective Sleep Quality' /
   B4SSQ_S2  'B4SLEEP:Component 2 - Sleep Latency' /
   B4SSQ_S3  'B4SLEEP:Component 3 - Sleep Duration' /
   B4SSQ_S4  'B4SLEEP:Component 4 - Habitual Sleep Efficiency' /
   B4SSQ_S5  'B4SLEEP:Component 5 - Sleep Disturbances Range' /
   B4SSQ_S6  'B4SLEEP:Component 6 - Use of Sleeping Medication' /
   B4SSQ_S7  'B4SLEEP:Component 7 - Daytime Dysfunction' /
   B4H1A     'Ever had heart disease' /
   B4H1AD    'Physician diagnosed heart disease' /
   B4H1B     'Ever had high blood pressure' /
   B4H1BD    'Physician diagnosed high blood pressure' /
   B4H1C     'Ever had circulation problems' /
   B4H1CD    'Physician diagnosed circulation problems' /
   B4H1D     'Ever had blood clots' /
   B4H1DD    'Physician diagnosed blood clots' /
   B4H1E     'Ever had heart murmur' /
   B4H1ED    'Physician diagnosed heart murmur' /
   B4H1F     'Ever had TIA or stroke' /
   B4H1FD    'Physician diagnosed TIA or stroke' /
   B4H1G     'Ever had anemia or other blood disease' /
   B4H1GD    'Physician diagnosed anemia or other blood disease' /
   B4H1H     'Ever had cholesterol problems' /
   B4H1HD    'Physician diagnosed cholesterol problems' /
   B4H1I     'Ever had diabetes' /
   B4H1ID    'Physician diagnosed diabetes' /
   B4H1J     'Ever had asthma' /
   B4H1JD    'Physician diagnosed asthma' /
   B4H1K     'Ever had emphysema/COPD' /
   B4H1KD    'Physician diagnosed emphysema/COPD' /
   B4H1L     'Ever had tuberculosis' /
   B4H1LD    'Physician diagnosed tuberculosis' /
   B4H1M     'Ever had positive TB skin test' /
   B4H1MD    'Physician diagnosed positive TB skin test' /
   B4H1N     'Ever had thyroid disease' /
   B4H1ND    'Physician diagnosed thyroid disease' /
   B4H1O     'Ever had peptic ulcer disease' /
   B4H1OD    'Physician diagnosed peptic ulcer disease' /
   B4H1P     'Ever had cancer' /
   B4H1PD    'Physician diagnosed cancer' /
   B4H1Q     'Ever had colon polyp' /
   B4H1QD    'Physician diagnosed colon polyp' /
   B4H1R     'Ever had arthritis' /
   B4H1RD    'Physician diagnosed arthritis' /
   B4H1S     'Ever had glaucoma' /
   B4H1SD    'Physician diagnosed glaucoma' /
   B4H1T     'Ever had cirrhosis/liver disease' /
   B4H1TD    'Physician diagnosed cirrhosis/liver disease' /
   B4H1U     'Ever had alcoholism' /
   B4H1UD    'Physician diagnosed alcoholism' /
   B4H1V     'Ever had depression' /
   B4H1VD    'Physician diagnosed depression' /
   B4H1W     'Ever had blood transfusion before 1993' /
   B4H1WD    'Physician diagnosed blood transfusion before 1993' /
   B4H1X     'Ever had other condition 1' /
   B4H1XD    'Physician diagnosed other condition 1' /
   B4H1Y     'Ever had other condition 2' /
   B4H1YD    'Physician diagnosed other condition 2' /
   B4H1TOTH  'Total number of other conditions' /
   B4HSYMN   'Total # of Symptoms & Chronic Conditions' /
   B4HSYMX   'Any Symptoms & Chronic Conditions?--Yes/No' /
   B4H2      'Ever broken a bone' /
   B4H2AF    'How often broken hip' /
   B4H2AY    'Most recent year broken hip' /
   B4H2BF    'How often broken leg' /
   B4H2BY    'Most recent year broken leg' /
   B4H2CF    'How often broken ankle' /
   B4H2CY    'Most recent year broken ankle' /
   B4H2DF    'How often broken foot' /
   B4H2DY    'Most recent year broken foot' /
   B4H2EF    'How often broken toe' /
   B4H2EY    'Most recent year broken toe' /
   B4H2FF    'How often broken collar bone' /
   B4H2FY    'Most recent year broken collar bone' /
   B4H2GF    'How often broken arm' /
   B4H2GY    'Most recent year broken arm' /
   B4H2HF    'How often broken wrist' /
   B4H2HY    'Most recent year broken wrist' /
   B4H2IF    'How often broken hand' /
   B4H2IY    'Most recent year broken hand' /
   B4H2JF    'How often broken finger' /
   B4H2JY    'Most recent year broken finger' /
   B4H2KF    'How often broken vertebra' /
   B4H2KY    'Most recent year broken vertebra' /
   B4H2LF    'How often broken pelvis' /
   B4H2LY    'Most recent year broken pelvis' /
   B4H2MF    'How often broken ribs' /
   B4H2MY    'Most recent year broken ribs' /
   B4H2NF    'How often other broken bone' /
   B4H2NY    'Most recent year other broken bone' /
   B4HBRKB   'Total #  of broken bone reported' /
   B4H3      'Ever had surgery' /
   B4H3AL    'Where surgery A was performed' /
   B4H3AY    'Year surgery A was performed' /
   B4H3BL    'Where surgery B was performed' /
   B4H3BY    'Year surgery B was performed' /
   B4H3CL    'Where surgery C was performed' /
   B4H3CY    'Year surgery C was performed' /
   B4H3DL    'Where surgery D was performed' /
   B4H3DY    'Year surgery D was performed' /
   B4H3EL    'Where surgery E was performed' /
   B4H3EY    'Year surgery E was performed' /
   B4H3FL    'Where surgery F was performed' /
   B4H3FY    'Year surgery F was performed' /
   B4H3GL    'Where surgery G was performed' /
   B4H3GY    'Year surgery G was performed' /
   B4H3HL    'Where surgery H was performed' /
   B4H3HY    'Year surgery H was performed' /
   B4H3IL    'Where surgery I was performed' /
   B4H3IY    'Year surgery I was performed' /
   B4H3JL    'Where surgery J was performed' /
   B4H3JY    'Year surgery J was performed' /
   B4HSURG   'Total # of surgeries reported' /
   B4H4      'Ever had head injury' /
   B4H4AH    'Hospital overnight for head injury A' /
   B4H4AY    'Year head injury A occurred' /
   B4H4BH    'Hospital overnight for head injury B' /
   B4H4BY    'Year head injury B occurred' /
   B4H4CH    'Hospital overnight for head injury C' /
   B4H4CY    'Year head injury C occurred' /
   B4HHEAD   'Total # of head injuries reported' /
   B4H5      'Ever had joint injury' /
   B4H5AH    'Hospital overnight for joint injury A' /
   B4H5AY    'Year joint injury A occurred' /
   B4H5BH    'Hospital overnight for joint injury B' /
   B4H5BY    'Year joint injury B occurred' /
   B4H5CH    'Hospital overnight for joint injury C' /
   B4H5CY    'Year joint injury C occurred' /
   B4HJNT    'Total # of joint injuries reported' /
   B4H6      'Ever injured in a motor vehicle accident' /
   B4H6AH    'Hospital overnight for motor vehicle accident A' /
   B4H6AY    'Year motor vehicle accident A occurred' /
   B4H6BH    'Hospital overnight for motor vehicle accident B' /
   B4H6BY    'Year motor vehicle accident B occurred' /
   B4H6CH    'Hospital overnight for motor vehicle accident C' /
   B4H6CY    'Year motor vehicle accident C occurred' /
   B4H6DH    'Hospital overnight for motor vehicle accident D' /
   B4H6DY    'Year motor vehicle accident D occurred' /
   B4HMVA    'Total # of motor vehicle accidents reported' /
   B4H7      'Ever permanently lost all or part of a limb' /
   B4H7AH    'Hospital overnight for amputation A' /
   B4H7AY    'Year amputation A occurred' /
   B4H7BH    'Hospital overnight for amputation B' /
   B4H7BY    'Year amputation B occurred' /
   B4HAMPU   'Total # of amputations reported' /
   B4H8      'Ever had other major injuries or illnesses' /
   B4H8AH    'Hospital overnight for other injury/illness A' /
   B4H8AY    'Year other injury/illness A occurred' /
   B4H8BH    'Hospital overnight for other injury/illness B' /
   B4H8BY    'Year other injury/illness B occurred' /
   B4H8CH    'Hospital overnight for other injury/illness C' /
   B4H8CY    'Year other injury/illness C occurred' /
   B4H8DH    'Hospital overnight for other injury/illness D' /
   B4H8DY    'Year other injury/illness D occurred' /
   B4HOHLTH  'Total # of other major health events reported' /
   B4H9      'Ever had radiation therapy to head/neck' /
   B4H10     'Have allergies diagnosed by doctor' /
   B4H10A    'Allergic to foods' /
   B4H10B    'Allergic to airborne substances' /
   B4H10C    'Allergic to animal dander' /
   B4H10D    'Allergic to insect bites' /
   B4H10E    'Allergic to environmental substances' /
   B4H10F    'Allergic to Other' /
   B4H11A    'Ever had German measles' /
   B4H11AI   'Ever been immunized for German measles' /
   B4H11AA   'Age had or immunized for German measles' /
   B4H11B    'Ever had measles' /
   B4H11BI   'Ever been immunized for measles' /
   B4H11BA   'Age had or immunized for measles' /
   B4H11C    'Ever had mumps' /
   B4H11CI   'Ever been immunized for mumps' /
   B4H11CA   'Age had or immunized for mumps' /
   B4H11D    'Ever had chicken pox' /
   B4H11DI   'Ever been immunized for chicken pox' /
   B4H11DA   'Age had or immunized for chicken pox' /
   B4H11E    'Ever had shingles' /
   B4H12A    'Ever been immunized for hepatitis B' /
   B4H12AM   'Month last immunized for Hepatitis B' /
   B4H12AY   'Year last immunized for Hepatitis B' /
   B4H12B    'Ever been immunized for tetanus and diphtheria' /
   B4H12BM   'Month last immunized for tetanus and diphtheria' /
   B4H12BY   'Year last immunized for tetanus and diphtheria' /
   B4H12C    'Ever been immunized for pneumonia' /
   B4H12CM   'Month last immunized for pneumonia' /
   B4H12CY   'Year last immunized for pneumonia' /
   B4H13     'How often get influenza vaccination' /
   B4H14     'Are you adopted' /
   B4H14A    'Know medical history of natural family' /
   B4H15A    'Blood relatives heart disease' /
   B4H15A1   'Mother heart disease' /
   B4H15A2   'Father heart disease' /
   B4H15A3   'Sibling heart disease' /
   B4H15A4   'Maternal grandparents heart disease' /
   B4H15A5   'Maternal aunt/uncle heart disease' /
   B4H15A6   'Paternal grandparents heart disease' /
   B4H15A7   'Paternal aunt/uncle heart disease' /
   B4H15B    'Blood relatives high BP' /
   B4H15B1   'Mother high bp' /
   B4H15B2   'Father high bp' /
   B4H15B3   'Sibling high bp' /
   B4H15B4   'Maternal grandparents high bp' /
   B4H15B5   'Maternal aunt/uncle high bp' /
   B4H15B6   'Paternal grandparents high bp' /
   B4H15B7   'Paternal aunt/uncle high bp' /
   B4H15C    'Blood relatives cholesterol problems' /
   B4H15C1   'Mother cholesterol' /
   B4H15C2   'Father cholesterol' /
   B4H15C3   'Sibling cholesterol' /
   B4H15C4   'Maternal grandparents cholesterol' /
   B4H15C5   'Maternal aunt/uncle cholesterol' /
   B4H15C6   'Paternal grandparents cholesterol' /
   B4H15C7   'Paternal aunt/uncle cholesterol' /
   B4H15D    'Blood relatives circulation problems' /
   B4H15D1   'Mother circulation' /
   B4H15D2   'Father circulation' /
   B4H15D3   'Sibling circulation' /
   B4H15D4   'Maternal grandparents circulation' /
   B4H15D5   'Maternal aunt/uncle circulation' /
   B4H15D6   'Paternal grandparents circulation' /
   B4H15D7   'Paternal aunt/uncle circulation' /
   B4H15E    'Blood relatives stroke' /
   B4H15E1   'Mother stroke' /
   B4H15E2   'Father stroke' /
   B4H15E3   'Sibling stroke' /
   B4H15E4   'Maternal grandparents stroke' /
   B4H15E5   'Maternal aunt/uncle stroke' /
   B4H15E6   'Paternal grandparents stroke' /
   B4H15E7   'Paternal aunt/uncle stroke' /
   B4H15F    'Blood relatives diabetes' /
   B4H15F1   'Mother diabetes' /
   B4H15F2   'Father diabetes' /
   B4H15F3   'Sibling diabetes' /
   B4H15F4   'Maternal grandparents diabetes' /
   B4H15F5   'Maternal aunt/uncle diabetes' /
   B4H15F6   'Paternal grandparents diabetes' /
   B4H15F7   'Paternal aunt/uncle diabetes' /
   B4H15G    'Blood relatives alcoholism' /
   B4H15G1   'Mother alcoholism' /
   B4H15G2   'Father alcoholism' /
   B4H15G3   'Sibling alcoholism' /
   B4H15G4   'Maternal grandparents alcoholism' /
   B4H15G5   'Maternal aunt/uncle alcolholism' /
   B4H15G6   'Paternal grandparents alcoholism' /
   B4H15G7   'Paternal aunt/uncle alcoholism' /
   B4H15H    'Blood relatives depression' /
   B4H15H1   'Mother depression' /
   B4H15H2   'Father depression' /
   B4H15H3   'Sibling depression' /
   B4H15H4   'Maternal grandparents depression' /
   B4H15H5   'Maternal aunt/uncle depression' /
   B4H15H6   'Paternal grandparents depression' /
   B4H15H7   'Paternal aunt/uncle depression' /
   B4H15I    'Blood relatives suicide' /
   B4H15I1   'Mother suicide' /
   B4H15I2   'Father suicide' /
   B4H15I3   'Sibling suicide' /
   B4H15I4   'Maternal grandparents suicide' /
   B4H15I5   'Maternal aunt/uncle suicide' /
   B4H15I6   'Paternal grandparents suicide' /
   B4H15I7   'Paternal aunt/uncle suicide' /
   B4H15J    'Blood relatives other psychiatric illness' /
   B4H15J1   'Mother other psychiatric illness' /
   B4H15J2   'Father other psychiatric illness' /
   B4H15J3   'Sibling other psychiatric illness' /
   B4H15J4   'Maternal grandparents other psychiatric illness' /
   B4H15J5   'Maternal aunt/uncle other psychiatric illness' /
   B4H15J6   'Paternal grandparents other psychiatric illness' /
   B4H15J7   'Paternal aunt/uncle other psychiatric illness' /
   B4H15K    'Blood relatives colon cancer' /
   B4H15K1   'Mother colon cancer' /
   B4H15K2   'Father colon cancer' /
   B4H15K3   'Sibling colon cancer' /
   B4H15K4   'Maternal grandparents colon cancer' /
   B4H15K5   'Maternal aunt/uncle colon cancer' /
   B4H15K6   'Paternal grandparents colon cancer' /
   B4H15K7   'Paternal aunt/uncle colon cancer' /
   B4H15L    'Blood relatives breast cancer' /
   B4H15L1   'Mother breast cancer' /
   B4H15L2   'Father breast cancer' /
   B4H15L3   'Sibling breast cancer' /
   B4H15L4   'Maternal grandparents breast cancer' /
   B4H15L5   'Maternal aunt/uncle breast cancer' /
   B4H15L6   'Paternal grandparents breast cancer' /
   B4H15L7   'Paternal aunt/uncle breast cancer' /
   B4H15M    'Blood relatives prostate cancer' /
   B4H15M1   'Mother prostate cancer' /
   B4H15M2   'Father prostate cancer' /
   B4H15M3   'Sibling prostate cancer' /
   B4H15M4   'Maternal grandparents prostate cancer' /
   B4H15M5   'Maternal aunt/uncle prostate cancer' /
   B4H15M6   'Paternal grandparents prostate cancer' /
   B4H15M7   'Paternal aunt/uncle prostate cancer' /
   B4H15N    'Blood relatives ovarian/uterine cancer' /
   B4H15N1   'Mother ovarian/uterine cancer' /
   B4H15N2   'Father ovarian/uterine cancer' /
   B4H15N3   'Sibling ovarian/uterine cancer' /
   B4H15N4   'Maternal grandparents ovarian/uterine cancer' /
   B4H15N5   'Maternal aunt/uncle ovarian/uterine cancer' /
   B4H15N6   'Paternal grandparents ovarian/uterine cancer' /
   B4H15N7   'Paternal aunt/uncle ovarian/uterine cancer' /
   B4H15O    'Blood relatives melanoma' /
   B4H15O1   'Mother melanoma' /
   B4H15O2   'Father melanoma' /
   B4H15O3   'Sibling melanoma' /
   B4H15O4   'Maternal grandparents melanoma' /
   B4H15O5   'Maternal aunt/uncle melanoma' /
   B4H15O6   'Paternal grandparents melanoma' /
   B4H15O7   'Paternal aunt/uncle melanoma' /
   B4H15P    'Blood relatives osteoporosis' /
   B4H15P1   'Mother osteoporosis' /
   B4H15P2   'Father osteoporosis' /
   B4H15P3   'Sibling osteoporosis' /
   B4H15P4   'Maternal grandparents osteoporosis' /
   B4H15P5   'Maternal aunt/uncle osteoporosis' /
   B4H15P6   'Paternal grandparents osteoporosis' /
   B4H15P7   'Paternal aunt/uncle osteoporosis' /
   B4H15Q    'Blood relatives tuberculosis' /
   B4H15Q1   'Mother tuberculosis' /
   B4H15Q2   'Father tuberculosis' /
   B4H15Q3   'Sibling tuberculosis' /
   B4H15Q4   'Maternal grandparents tuberculosis' /
   B4H15Q5   'Maternal aunt/uncle tuberculosis' /
   B4H15Q6   'Paternal grandparents tuberculosis' /
   B4H15Q7   'Paternal aunt/uncle tuberculosis' /
   B4H15R    'Blood relatives other 1' /
   B4H15R1   'Mother other 1' /
   B4H15R2   'Father other 1' /
   B4H15R3   'Sibling other 1' /
   B4H15R4   'Maternal grandparents other 1' /
   B4H15R5   'Maternal aunt/uncle other 1' /
   B4H15R6   'Paternal grandparents other 1' /
   B4H15R7   'Paternal aunt/uncle other 1' /
   B4H15S    'Blood relatives other 2' /
   B4H15S1   'Mother other 2' /
   B4H15S2   'Father other 2' /
   B4H15S3   'Sibling other 2' /
   B4H15S4   'Maternal grandparents other 2' /
   B4H15S5   'Maternal aunt/uncle other 2' /
   B4H15S6   'Paternal grandparents other 2' /
   B4H15S7   'Paternal aunt/uncle other 2' /
   B4H15OTH  'Total other family conditions' /
   B4HFMHN   'Total # of conditions in immediate family' /
   B4HFMHX   'Any conditions in immediate family?--Yes/No' /
   B4H16     'Follow a special diet' /
   B4H17AF   'Number of servings of milk (8 0z)' /
   B4H17AT   'Number of servings milk timeframe' /
   B4H17BF   'Number of servings of yogurt (8 oz)' /
   B4H17BT   'Number of servings yogurt timeframe' /
   B4H17CF   'Number of servings of cheese (1 oz)' /
   B4H17CT   'Number of servings cheese timeframe' /
   B4H18AF   'Number of servings of coffee' /
   B4H18AT   'Number of servings coffee timeframe' /
   B4H18BF   'Number of servings of tea' /
   B4H18BT   'Number of servings tea timeframe' /
   B4H18CF   'Number of servings of other' /
   B4H18CT   'Number of servings other timeframe' /
   B4H19     'Ave day # glasses of water/day' /
   B4H20     'Ave day # sugared beverages/day' /
   B4H21     'Ave day # servings fruits & veggies' /
   B4H22     'Ave day # servings whole grain' /
   B4H23A    'Ave week # times eat ocean fish' /
   B4H23B    'Ave week # times eat beef/high fat meat' /
   B4H23C    'Ave week # times eat lean meat' /
   B4H23D    'Ave week # times eat non-meat protein' /
   B4H24     'Ave week # times eat fast food' /
   B4H25     'Reg exercise at least 20 mins 3 times/wk' /
   B4H25AS   'Seasonal activity A' /
   B4H25AFD  'Times per day for exercise/activity A' /
   B4H25AFW  'Times per week for exercise/activity A' /
   B4H25AM   'Ave num mins/session exercise/activity A' /
   B4H25AI   'Intensity exercise/activity A' /
   B4H25BS   'Seasonal activity B' /
   B4H25BFD  'Times per day for exercise/activity B' /
   B4H25BFW  'Times per week for exercise/activity B' /
   B4H25BM   'Ave num mins/session exercise/activity B' /
   B4H25BI   'Intensity exercise/activity B' /
   B4H25CS   'Seasonal activity C' /
   B4H25CFD  'Times per day for exercise/activity C' /
   B4H25CFW  'Times per week for exercise/activity C' /
   B4H25CM   'Ave num mins/session exercise/activity C' /
   B4H25CI   'Intensity exercise/activity C' /
   B4H25DS   'Seasonal activity D' /
   B4H25DFD  'Times per day for exercise/activity D' /
   B4H25DFW  'Times per week for exercise/activity D' /
   B4H25DM   'Ave num mins/session exercise/activity D' /
   B4H25DI   'Intensity exercise/activity D' /
   B4H25ES   'Seasonal activity E' /
   B4H25EFD  'Times per day for exercise/activity E' /
   B4H25EFW  'Times per week for exercise/activity E' /
   B4H25EM   'Ave num mins/session exercise/activity E' /
   B4H25EI   'Intensity exercise/activity E' /
   B4H25FS   'Seasonal activity F' /
   B4H25FFD  'Times per day for exercise/activity F' /
   B4H25FFW  'Times per week for exercise/activity F' /
   B4H25FM   'Ave num mins/session exercise/activity F' /
   B4H25FI   'Intensity exercise/activity F' /
   B4H25GS   'Seasonal activity G' /
   B4H25GFD  'Times per day for exercise/activity G' /
   B4H25GFW  'Times per week for exercise/activity G' /
   B4H25GM   'Ave num mins/session exercise/activity G' /
   B4H25GI   'Intensity exercise/activity G' /
   B4H26     'Ever smoked cigarettes regularly' /
   B4H26A    'Currently smoke cigarettes regularly' /
   B4H27     'Tried to quit smoking since last intrvw' /
   B4H28     'Age when last smoked regularly' /
   B4H29     'Currently smoke pipe/cigars, snuff, chew' /
   B4H30     'Currently anyone in home smoke/use tobac' /
   B4H31     'Current job anyone smoke in work area' /
   B4H32     'Past job anyone smoke in work area' /
   B4H33     'Past month at least one alcoholic bev' /
   B4H34     'Past month how often drank alcoholic bev' /
   B4H35     'PSTMO # days/month (if LT 1 day/wk)' /
   B4H36     'PSTMO avge # drinks on days when drank' /
   B4H37     'PSTMO # times 5+ drinks same occasion' /
   B4H38     'Period drank most freq at least one drink' /
   B4H39     'PDM # days/month (if LT 1 day/wk)' /
   B4H40     'PDM Avge # drinks when drank' /
   B4H41     'Age when started to drink that much' /
   B4H42     'Number of years drank that much' /
   B4H43A    'How often receive dental care' /
   B4H43BM   'Month of last dental exam' /
   B4H43BY   'Year of last dental exam' /
   B4H44A    'How often get eye exam' /
   B4H44CM   'Month of last eye exam' /
   B4H44CY   'Year of last eye exam' /
   B4H44D    'Ever diagnosed with eye disease/disorder' /
   B4H45A    'Ever had cholesterol level checked' /
   B4H45AM   'Month cholesterol level checked' /
   B4H45AY   'Year cholesterol level checked' /
   B4H45B    'Ever asked to complete a stool card' /
   B4H45BM   'Month asked to complete a stool card' /
   B4H45BY   'Year asked to complete a stool card' /
   B4H45BRC  'Blood in stool test results' /
   B4H45C    'Ever had a flexible sigmoidoscopy' /
   B4H45CM   'Month had flexible sigmoidoscopy' /
   B4H45CY   'Year had flexible sigmoidoscopy' /
   B4H45CRC  'Sigmoidoscopy test results' /
   B4H45D    'Ever had colonoscopy' /
   B4H45DM   'Month had colonoscopy' /
   B4H45DY   'Year had colonoscopy' /
   B4H45DRC  'Colonoscopy test results' /
   B4H45E    'Do a monthly breast self-exam' /
   B4H45F    'Ever had mammogram' /
   B4H45FM   'Month had mammogram' /
   B4H45FY   'Year had mammogram' /
   B4H45FRC  'Mammogram test results' /
   B4H45G    'Ever had pap test and pelvic exam' /
   B4H45GM   'Month of pap test and pelvic exam' /
   B4H45GY   'Year of pap test and pelvic exam' /
   B4H45GRC  'Pap test and pelvic exam results' /
   B4H45H    'Ever had prostate/rectal exam' /
   B4H45HM   'Month of prostate/rectal exam' /
   B4H45HY   'Year of prostate/rectal exam' /
   B4H45HRC  'Prostate/rectal exam results' /
   B4H46     'Exposed to excessive noise on reg basis' /
   B4H46C    'How often exposed to noise' /
   B4H46D    'Number of hrs typically exposed to noise' /
   B4H47     'Typically use seatbelt' /
   B4H48     'Ever ride bike or motorcycle' /
   B4H48A    'Use bike/motorcycle helmet when riding' /
   B4H49     'Ever had excessive sun exposure' /
   B4H50     'Regularly use sunscreen' /
   B4H54C    'Did marital status change since P1 interview?' /
   B4H54M    'When marital status changed - MONTH' /
   B4H54Y    'When marital status changed - YEAR' /
   B4H55     'Current marital status' /
   B4HMARR   'P4 Marital Status' /
   B4H56     'Anyone close passed away since P1 intrvw' /
   B4H56AG   'Gender of person A who passed away' /
   B4H56AM   'Month person A died' /
   B4H56AY   'Year person A died' /
   B4H56BG   'Gender of person B who passed away' /
   B4H56BM   'Month person B died' /
   B4H56BY   'Year person B died' /
   B4H56CG   'Gender of person C who passed away' /
   B4H56CM   'Month person C died' /
   B4H56CY   'Year person C died' /
   B4H56DG   'Gender of person D who passed away' /
   B4H56DM   'Month person D died' /
   B4H56DY   'Year person D died' /
   B4H56EG   'Gender of person E who passed away' /
   B4H56EM   'Month person E died' /
   B4H56EY   'Year person E died' /
   B4HDIED   '# of people close passed away since P1 intvw' /
   B4H57     'Other events happened since P1 interview' /
   B4H57A1M  'Month of event 1' /
   B4H57A1Y  'Year of event 1' /
   B4H57A2M  'Month of event 2' /
   B4H57A2Y  'Year of event 2' /
   B4H57A3M  'Month of event 3' /
   B4H57A3Y  'Year of event 3' /
   B4H57A4M  'Month of event 4' /
   B4H57A4Y  'Year of event 4' /
   B4H57A5M  'Month of event 5' /
   B4H57A5Y  'Year of event 5' /
   B4H57TOT  'Total number of events' /
   B4OAVL    'Bone questionnaire available?' /
   B4O1      'Broken a bone' /
   B4O1A1W   'Broken Bone A: Which' /
   B4O1A3    'Age when occured A' /
   B4O1B1W   'Broken Bone B: Which' /
   B4O1B3    'Age when occured B' /
   B4O1C1W   'Broken Bone C: Which' /
   B4O1C3    'Age when occured C' /
   B4O2      'Family member broken bone' /
   B4O2A1    'Mother hip fracture' /
   B4O2A2    'Mother vertebral fracture' /
   B4O2A3    'Mother fracture elsewhere' /
   B4O2B1    'Father hip fracture' /
   B4O2B2    'Father vertebral fracture' /
   B4O2B3    'Father fracture elsewhere' /
   B4O2C1    'Sibling hip fracture' /
   B4O2C2    'Sibling vertebral fracture' /
   B4O2C3    'Sibling fracture elsewhere' /
   B4O3      'Times fallen in last year' /
   B4O3A     'Simple falls in last year' /
   B4O4A     'Have you ever had Parathyroid Disease' /
   B4O4B     'Have you ever had Cushing Syndrome' /
   B4O5      'Have you ever recvd osteoporosis meds' /
   B4O5A1AM  'Osteoporosis Medication 1' /
   B4O5A1B   'Begin Age Med 1' /
   B4O5A1C   'End Age Med 1' /
   B4O5A1CO  'Ongoing 1=Yes 2=No Med 1' /
   B4O5A2AM  'Osteoporosis Medication 2' /
   B4O5A2B   'Begin Age Med 2' /
   B4O5A2C   'End Age Med 2' /
   B4O5A2CO  'Ongoing 1=Yes 2=No Med 2' /
   B4O5A3AM  'Osteoporosis Medication 3' /
   B4O5A3B   'Begin Age Med 3' /
   B4O5A3C   'End Age Med 3' /
   B4O5A3CO  'Ongoing 1=Yes 2=No Med 3' /
   B4O6A1    'Have you ever taken seizure meds' /
   B4O6B1    'Have you ever had chemotherapy' /
   B4O6C1    'Have you ever had immune-therapy' /
   B4O6D1    'Have you ever taken Prednisone' /
   B4O6E1    'Have you ever taken birth control pills' /
   B4O6F1    'Have you ever had hormone therapy' /
   B4O7      'Have you ever used tobacco regularly' /
   B4O8      'How many years did you smoke' /
   B4O9      'How many cigarettes per day' /
   B4O10     'How many years did you use pipe,etc' /
   B4O11     'Did anyone smoke in household' /
   B4O12A    'How many yrs of competitive sports' /
   B4O12B    'How many yrs of recreational sports' /
   B4O12C    'How many yrs of little exercise' /
   B4O13     'Did you exercise between age 20-35' /
   B4O14A    'How many years vigorous exercise' /
   B4O14B    'How many years moderate exercise' /
   B4O14C    'How many years light exercise' /
   B4O14X    'Is R Female?' /
   B4O15     'Have you ever been pregnant' /
   B4O16     'How many pregnancies did you carry' /
   B4O16A    'How many total months breast feed' /
   B4O17     'Have you had a menstrual period last year' /
   B4O18     'Had menstrual period last 3 months' /
   B4O19     'Is menstrual cycle length less regular' /
   B4O20Y    'How many years ago last menstrual period' /
   B4O21     'Did period stop other reason' /
   B4O21A1   'Medication, chemotherapy, radiation' /
   B4O21A2   'Severe weight loss' /
   B4O21A3   'Hysterectomy' /
   B4O21A4   'Surgical removal of both ovaries' /
   B4O21A5   'Endrometrial ablation' /
   B4O22Y    'How many years ago noticed irregular cycle' /
   B4O23X    'Metal implant questions available?' /
   B4O23     'Do you have a pacemaker?' /
   B4O24     'Do you have an implanted pump?' /
   B4O25     'Do you have any artificial joints?' /
   B4O25A    'Artificial joint - Knee' /
   B4O25B    'Artificial joint - Hip' /
   B4O25C    'Artificial joint - Other' /
   B4O26     'Do you have any rods,plates,screws,or pins?' /
   B4O26A    'Rod/plate location: lower extremity' /
   B4O26B    'Rod/plate location: upper extremity' /
   B4O26C    'Rod/plate location: spine' /
   B4O26D    'Rod/plate location: elsewhere' /
   B4O26E    'Pin location: hands or feet' /
   B4O26F    'Pin location: elsewhere' /
   B4O27     'Have any other metal in your body?' /
   B4DAVAIL  'Bone scan data collected' /
   B4DNARSN  'Reason why for partial or missing bone density data' /
   B4DSTYPE  'Was Lunar or Hologic Scanner used? 1=Lunar, 2=Hologic' /
   B4DTRSID  'Femur Trochanter side scanned, 1=Right, 2 = Left' /
   B4DFNSID  'Femur Neck side scanned, 1=Right, 2 = Left' /
   B4DFTSID  'Femur Total side scanned, 1=Right, 2 = Left' /
   B4DRSIDE  'Radius side scanned, 1=Right, 2 = Left' /
   B4DLSMD   'Lunar Spine L1-4 Bone Mineral Density (g/cm2)' /
   B4DLST    'Lunar Spine L1-4 Young Adult T-score' /
   B4DLFNMD  'Lunar Femur Neck (BMD) Bone Mineral Density (g/cm2)' /
   B4DLTRMD  'Lunar Trochanter (BMD) Bone Mineral Density (g/cm2)' /
   B4DLFTMD  'Lunar Total Femur (BMD) Bone Mineral Density (g/cm2)' /
   B4DLFNT   'Lunar Femur Neck T-Score' /
   B4DLFTT   'Lunar Total Femur  T-Score' /
   B4DLRUMD  'Lunar Radius UD (BMD) Bone Mineral Density (g/cm2)' /
   B4DLR3MD  'Lunar Radius 1/3 (BMD) Bone Mineral Density (g/cm2)' /
   B4DLR3T   'Lunar Radius 1/3 T-Score' /
   B4DHSMD   'Hologic Spine L1-4 Bone Mineral Density (g/cm2)' /
   B4DHST    'Hologic Spine L1-4 Young Adult T-score' /
   B4DHFNMD  'Hologic Femur Neck (BMD) Bone Mineral Density (g/cm2)' /
   B4DHTRMD  'Hologic Trochanter (BMD) Bone Mineral Density (g/cm2)' /
   B4DHFTMD  'Hologic Total Femur (BMD) Bone Mineral Density (g/cm2)' /
   B4DHFNT   'Hologic Femur Neck T-Score' /
   B4DHFTT   'Hologic Total Femur  T-Score' /
   B4XPMD    'Taking Prescription Medication?--YES/NO' /
   B4XOMD    'Taking Over the Counter Medication?--YES/NO' /
   B4XAMD    'Taking Alternative Medication?--YES/NO' /
   B4XPM     'Prescription: Number of prescription medications' /
   B4XPC1    'Prescription: Drug code 1' /
   B4XPDD1   'Prescription: Dosage 1' /
   B4XPDU1   'Prescription: Dosage units 1' /
   B4XPR1    'Prescription: Route 1' /
   B4XPF1    'Prescription: Frequency 1' /
   B4XPFU1   'Prescription: Frequency unit of time 1' /
   B4XPT1    'Prescription: Taken for how long 1' /
   B4XPTU1   'Prescription: Unit of time taken 1' /
   B4XPDC1   'Prescription: Diagnosis code 1' /
   B4XPC2    'Prescription: Drug code 2' /
   B4XPDD2   'Prescription: Dosage 2' /
   B4XPDU2   'Prescription: Dosage units 2' /
   B4XPR2    'Prescription: Route 2' /
   B4XPF2    'Prescription: Frequency 2' /
   B4XPFU2   'Prescription: Frequency unit of time 2' /
   B4XPT2    'Prescription: Taken for how long 2' /
   B4XPTU2   'Prescription: Unit of time taken 2' /
   B4XPDC2   'Prescription: Diagnosis code 2' /
   B4XPC3    'Prescription: Drug code 3' /
   B4XPDD3   'Prescription: Dosage 3' /
   B4XPDU3   'Prescription: Dosage units 3' /
   B4XPR3    'Prescription: Route 3' /
   B4XPF3    'Prescription: Frequency 3' /
   B4XPFU3   'Prescription: Frequency unit of time 3' /
   B4XPT3    'Prescription: Taken for how long 3' /
   B4XPTU3   'Prescription: Unit of time taken 3' /
   B4XPDC3   'Prescription: Diagnosis code 3' /
   B4XPC4    'Prescription: Drug code 4' /
   B4XPDD4   'Prescription: Dosage 4' /
   B4XPDU4   'Prescription: Dosage units 4' /
   B4XPR4    'Prescription: Route 4' /
   B4XPF4    'Prescription: Frequency 4' /
   B4XPFU4   'Prescription: Frequency unit of time 4' /
   B4XPT4    'Prescription: Taken for how long 4' /
   B4XPTU4   'Prescription: Unit of time taken 4' /
   B4XPDC4   'Prescription: Diagnosis code 4' /
   B4XPC5    'Prescription: Drug code 5' /
   B4XPDD5   'Prescription: Dosage 5' /
   B4XPDU5   'Prescription: Dosage units 5' /
   B4XPR5    'Prescription: Route 5' /
   B4XPF5    'Prescription: Frequency 5' /
   B4XPFU5   'Prescription: Frequency unit of time 5' /
   B4XPT5    'Prescription: Taken for how long 5' /
   B4XPTU5   'Prescription: Unit of time taken 5' /
   B4XPDC5   'Prescription: Diagnosis code 5' /
   B4XPC6    'Prescription: Drug code 6' /
   B4XPDD6   'Prescription: Dosage 6' /
   B4XPDU6   'Prescription: Dosage units 6' /
   B4XPR6    'Prescription: Route 6' /
   B4XPF6    'Prescription: Frequency 6' /
   B4XPFU6   'Prescription: Frequency unit of time 6' /
   B4XPT6    'Prescription: Taken for how long 6' /
   B4XPTU6   'Prescription: Unit of time taken 6' /
   B4XPDC6   'Prescription: Diagnosis code 6' /
   B4XPC7    'Prescription: Drug code 7' /
   B4XPDD7   'Prescription: Dosage 7' /
   B4XPDU7   'Prescription: Dosage units 7' /
   B4XPR7    'Prescription: Route 7' /
   B4XPF7    'Prescription: Frequency 7' /
   B4XPFU7   'Prescription: Frequency unit of time 7' /
   B4XPT7    'Prescription: Taken for how long 7' /
   B4XPTU7   'Prescription: Unit of time taken 7' /
   B4XPDC7   'Prescription: Diagnosis code 7' /
   B4XPC8    'Prescription: Drug code 8' /
   B4XPDD8   'Prescription: Dosage 8' /
   B4XPDU8   'Prescription: Dosage units 8' /
   B4XPR8    'Prescription: Route 8' /
   B4XPF8    'Prescription: Frequency 8' /
   B4XPFU8   'Prescription: Frequency unit of time 8' /
   B4XPT8    'Prescription: Taken for how long 8' /
   B4XPTU8   'Prescription: Unit of time taken 8' /
   B4XPDC8   'Prescription: Diagnosis code 8' /
   B4XPC9    'Prescription: Drug code 9' /
   B4XPDD9   'Prescription: Dosage 9' /
   B4XPDU9   'Prescription: Dosage units 9' /
   B4XPR9    'Prescription: Route 9' /
   B4XPF9    'Prescription: Frequency 9' /
   B4XPFU9   'Prescription: Frequency unit of time 9' /
   B4XPT9    'Prescription: Taken for how long 9' /
   B4XPTU9   'Prescription: Unit of time taken 9' /
   B4XPDC9   'Prescription: Diagnosis code 9' /
   B4XPC10   'Prescription: Drug code 10' /
   B4XPDD10  'Prescription: Dosage 10' /
   B4XPDU10  'Prescription: Dosage units 10' /
   B4XPR10   'Prescription: Route 10' /
   B4XPF10   'Prescription: Frequency 10' /
   B4XPFU10  'Prescription: Frequency unit of time 10' /
   B4XPT10   'Prescription: Taken for how long 10' /
   B4XPTU10  'Prescription: Unit of time taken 10' /
   B4XPDC10  'Prescription: Diagnosis code 10' /
   B4XPC11   'Prescription: Drug code 11' /
   B4XPDD11  'Prescription: Dosage 11' /
   B4XPDU11  'Prescription: Dosage units 11' /
   B4XPR11   'Prescription: Route 11' /
   B4XPF11   'Prescription: Frequency 11' /
   B4XPFU11  'Prescription: Frequency unit of time 11' /
   B4XPT11   'Prescription: Taken for how long 11' /
   B4XPTU11  'Prescription: Unit of time taken 11' /
   B4XPDC11  'Prescription: Diagnosis code 11' /
   B4XPC12   'Prescription: Drug code 12' /
   B4XPDD12  'Prescription: Dosage 12' /
   B4XPDU12  'Prescription: Dosage units 12' /
   B4XPR12   'Prescription: Route 12' /
   B4XPF12   'Prescription: Frequency 12' /
   B4XPFU12  'Prescription: Frequency unit of time 12' /
   B4XPT12   'Prescription: Taken for how long 12' /
   B4XPTU12  'Prescription: Unit of time taken 12' /
   B4XPDC12  'Prescription: Diagnosis code 12' /
   B4XPC13   'Prescription: Drug code 13' /
   B4XPDD13  'Prescription: Dosage 13' /
   B4XPDU13  'Prescription: Dosage units 13' /
   B4XPR13   'Prescription: Route 13' /
   B4XPF13   'Prescription: Frequency 13' /
   B4XPFU13  'Prescription: Frequency unit of time 13' /
   B4XPT13   'Prescription: Taken for how long 13' /
   B4XPTU13  'Prescription: Unit of time taken 13' /
   B4XPDC13  'Prescription: Diagnosis code 13' /
   B4XPC14   'Prescription: Drug code 14' /
   B4XPDD14  'Prescription: Dosage 14' /
   B4XPDU14  'Prescription: Dosage units 14' /
   B4XPR14   'Prescription: Route 14' /
   B4XPF14   'Prescription: Frequency 14' /
   B4XPFU14  'Prescription: Frequency unit of time 14' /
   B4XPT14   'Prescription: Taken for how long 14' /
   B4XPTU14  'Prescription: Unit of time taken 14' /
   B4XPDC14  'Prescription: Diagnosis code 14' /
   B4XPC15   'Prescription: Drug code 15' /
   B4XPDD15  'Prescription: Dosage 15' /
   B4XPDU15  'Prescription: Dosage units 15' /
   B4XPR15   'Prescription: Route 15' /
   B4XPF15   'Prescription: Frequency 15' /
   B4XPFU15  'Prescription: Frequency unit of time 15' /
   B4XPT15   'Prescription: Taken for how long 15' /
   B4XPTU15  'Prescription: Unit of time taken 15' /
   B4XPDC15  'Prescription: Diagnosis code 15' /
   B4XBPD    'Taking BLOOD PRESSURE med --YES/NO' /
   B4XBPC    'Taking BLOOD PRESSURE med --# of meds' /
   B4XCHD    'Taking CHOLESTEROL med --YES/NO' /
   B4XCHC    'Taking CHOLESTEROL med --# of meds' /
   B4XDPD    'Taking DEPRESSION med --YES/NO' /
   B4XDPC    'Taking DEPRESSION med --# of meds' /
   B4XCOD    'Taking CORTICOSTEROID med --YES/NO' /
   B4XCOC    'Taking CORTICOSTEROID med --# of meds' /
   B4XSHD    'Taking SEX HORMONE med --YES/NO' /
   B4XSHC    'Taking SEX HORMONE med --# of meds' /
   B4XOM     'OTC: Number of non-prescription medications' /
   B4XOMV    'OTC: Does R take multiple vitamin' /
   B4XOC1    'OTC: Drug code 1' /
   B4XODD1   'OTC: Dosage 1' /
   B4XODU1   'OTC: Dosage units 1' /
   B4XOR1    'OTC: Route 1' /
   B4XOF1    'OTC: Frequency 1' /
   B4XOFU1   'OTC: Frequency unit of time 1' /
   B4XOT1    'OTC: Taken for how long 1' /
   B4XOTU1   'OTC: Unit of time taken 1' /
   B4XODC1   'OTC: Diagnosis code 1' /
   B4XOCS    'OTC: Does R take calcium supplement' /
   B4XOC2    'OTC: Drug code 2' /
   B4XODD2   'OTC: Dosage 2' /
   B4XODU2   'OTC: Dosage units 2' /
   B4XOR2    'OTC: Route 2' /
   B4XOF2    'OTC: Frequency 2' /
   B4XOFU2   'OTC: Frequency unit of time 2' /
   B4XOT2    'OTC: Taken for how long 2' /
   B4XOTU2   'OTC: Unit of time taken 2' /
   B4XODC2   'OTC: Diagnosis code 2' /
   B4XOC3    'OTC: Drug code 3' /
   B4XODD3   'OTC: Dosage 3' /
   B4XODU3   'OTC: Dosage units 3' /
   B4XOR3    'OTC: Route 3' /
   B4XOF3    'OTC: Frequency 3' /
   B4XOFU3   'OTC: Frequency unit of time 3' /
   B4XOT3    'OTC: Taken for how long 3' /
   B4XOTU3   'OTC: Unit of time taken 3' /
   B4XODC3   'OTC: Diagnosis code 3' /
   B4XOC4    'OTC: Drug code 4' /
   B4XODD4   'OTC: Dosage 4' /
   B4XODU4   'OTC: Dosage units 4' /
   B4XOR4    'OTC: Route 4' /
   B4XOF4    'OTC: Frequency 4' /
   B4XOFU4   'OTC: Frequency unit of time 4' /
   B4XOT4    'OTC: Taken for how long 4' /
   B4XOTU4   'OTC: Unit of time taken 4' /
   B4XODC4   'OTC: Diagnosis code 4' /
   B4XOC5    'OTC: Drug code 5' /
   B4XODD5   'OTC: Dosage 5' /
   B4XODU5   'OTC: Dosage units 5' /
   B4XOR5    'OTC: Route 5' /
   B4XOF5    'OTC: Frequency 5' /
   B4XOFU5   'OTC: Frequency unit of time 5' /
   B4XOT5    'OTC: Taken for how long 5' /
   B4XOTU5   'OTC: Unit of time taken 5' /
   B4XODC5   'OTC: Diagnosis code 5' /
   B4XOC6    'OTC: Drug code 6' /
   B4XODD6   'OTC: Dosage 6' /
   B4XODU6   'OTC: Dosage units 6' /
   B4XOR6    'OTC: Route 6' /
   B4XOF6    'OTC: Frequency 6' /
   B4XOFU6   'OTC: Frequency unit of time 6' /
   B4XOT6    'OTC: Taken for how long 6' /
   B4XOTU6   'OTC: Unit of time taken 6' /
   B4XODC6   'OTC: Diagnosis code 6' /
   B4XOC7    'OTC: Drug code 7' /
   B4XODD7   'OTC: Dosage 7' /
   B4XODU7   'OTC: Dosage units 7' /
   B4XOR7    'OTC: Route 7' /
   B4XOF7    'OTC: Frequency 7' /
   B4XOFU7   'OTC: Frequency unit of time 7' /
   B4XOT7    'OTC: Taken for how long 7' /
   B4XOTU7   'OTC: Unit of time taken 7' /
   B4XODC7   'OTC: Diagnosis code 7' /
   B4XOC8    'OTC: Drug code 8' /
   B4XODD8   'OTC: Dosage 8' /
   B4XODU8   'OTC: Dosage units 8' /
   B4XOR8    'OTC: Route 8' /
   B4XOF8    'OTC: Frequency 8' /
   B4XOFU8   'OTC: Frequency unit of time 8' /
   B4XOT8    'OTC: Taken for how long 8' /
   B4XOTU8   'OTC: Unit of time taken 8' /
   B4XODC8   'OTC: Diagnosis code 8' /
   B4XOC9    'OTC: Drug code 9' /
   B4XODD9   'OTC: Dosage 9' /
   B4XODU9   'OTC: Dosage units 9' /
   B4XOR9    'OTC: Route 9' /
   B4XOF9    'OTC: Frequency 9' /
   B4XOFU9   'OTC: Frequency unit of time 9' /
   B4XOT9    'OTC: Taken for how long 9' /
   B4XOTU9   'OTC: Unit of time taken 9' /
   B4XODC9   'OTC: Diagnosis code 9' /
   B4XOC10   'OTC: Drug code 10' /
   B4XODD10  'OTC: Dosage 10' /
   B4XODU10  'OTC: Dosage units 10' /
   B4XOR10   'OTC: Route 10' /
   B4XOF10   'OTC: Frequency 10' /
   B4XOFU10  'OTC: Frequency unit of time 10' /
   B4XOT10   'OTC: Taken for how long 10' /
   B4XOTU10  'OTC: Unit of time taken 10' /
   B4XODC10  'OTC: Diagnosis code 10' /
   B4XOC11   'OTC: Drug code 11' /
   B4XODD11  'OTC: Dosage 11' /
   B4XODU11  'OTC: Dosage units 11' /
   B4XOR11   'OTC: Route 11' /
   B4XOF11   'OTC: Frequency 11' /
   B4XOFU11  'OTC: Frequency unit of time 11' /
   B4XOT11   'OTC: Taken for how long 11' /
   B4XOTU11  'OTC: Unit of time taken 11' /
   B4XODC11  'OTC: Diagnosis code 11' /
   B4XOC12   'OTC: Drug code 12' /
   B4XODD12  'OTC: Dosage 12' /
   B4XODU12  'OTC: Dosage units 12' /
   B4XOR12   'OTC: Route 12' /
   B4XOF12   'OTC: Frequency 12' /
   B4XOFU12  'OTC: Frequency unit of time 12' /
   B4XOT12   'OTC: Taken for how long 12' /
   B4XOTU12  'OTC: Unit of time taken 12' /
   B4XODC12  'OTC: Diagnosis code 12' /
   B4XAM     'Alternative: Number of alternative medications' /
   B4XAC1    'Alternative: Drug code 1' /
   B4XADD1   'Alternative: Dosage 1' /
   B4XADU1   'Alternative: Dosage units 1' /
   B4XAR1    'Alternative: Route 1' /
   B4XAF1    'Alternative: Frequency 1' /
   B4XAFU1   'Alternative: Frequency unit of time 1' /
   B4XAT1    'Alternative: Taken for how long 1' /
   B4XATU1   'Alternative: Unit of time taken 1' /
   B4XADC1   'Alternative: Diagnosis code 1' /
   B4XAC2    'Alternative: Drug code 2' /
   B4XADD2   'Alternative: Dosage 2' /
   B4XADU2   'Alternative: Dosage units 2' /
   B4XAR2    'Alternative: Route 2' /
   B4XAF2    'Alternative: Frequency 2' /
   B4XAFU2   'Alternative: Frequency unit of time 2' /
   B4XAT2    'Alternative: Taken for how long 2' /
   B4XATU2   'Alternative: Unit of time taken 2' /
   B4XADC2   'Alternative: Diagnosis code 2' /
   B4XAC3    'Alternative: Drug code 3' /
   B4XADD3   'Alternative: Dosage 3' /
   B4XADU3   'Alternative: Dosage units 3' /
   B4XAR3    'Alternative: Route 3' /
   B4XAF3    'Alternative: Frequency 3' /
   B4XAFU3   'Alternative: Frequency unit of time 3' /
   B4XAT3    'Alternative: Taken for how long 3' /
   B4XATU3   'Alternative: Unit of time taken 3' /
   B4XADC3   'Alternative: Diagnosis code 3' /
   B4XAC4    'Alternative: Drug code 4' /
   B4XADD4   'Alternative: Dosage 4' /
   B4XADU4   'Alternative: Dosage units 4' /
   B4XAR4    'Alternative: Route 4' /
   B4XAF4    'Alternative: Frequency 4' /
   B4XAFU4   'Alternative: Frequency unit of time 4' /
   B4XAT4    'Alternative: Taken for how long 4' /
   B4XATU4   'Alternative: Unit of time taken 4' /
   B4XADC4   'Alternative: Diagnosis code 4' /
   B4XAC5    'Alternative: Drug code 5' /
   B4XADD5   'Alternative: Dosage 5' /
   B4XADU5   'Alternative: Dosage units 5' /
   B4XAR5    'Alternative: Route 5' /
   B4XAF5    'Alternative: Frequency 5' /
   B4XAFU5   'Alternative: Frequency unit of time 5' /
   B4XAT5    'Alternative: Taken for how long 5' /
   B4XATU5   'Alternative: Unit of time taken 5' /
   B4XADC5   'Alternative: Diagnosis code 5' /
   B4XAC6    'Alternative: Drug code 6' /
   B4XADD6   'Alternative: Dosage 6' /
   B4XADU6   'Alternative: Dosage units 6' /
   B4XAR6    'Alternative: Route 6' /
   B4XAF6    'Alternative: Frequency 6' /
   B4XAFU6   'Alternative: Frequency unit of time 6' /
   B4XAT6    'Alternative: Taken for how long 6' /
   B4XATU6   'Alternative: Unit of time taken 6' /
   B4XADC6   'Alternative: Diagnosis code 6' /
   B4XAC7    'Alternative: Drug code 7' /
   B4XADD7   'Alternative: Dosage 7' /
   B4XADU7   'Alternative: Dosage units 7' /
   B4XAR7    'Alternative: Route 7' /
   B4XAF7    'Alternative: Frequency 7' /
   B4XAFU7   'Alternative: Frequency unit of time 7' /
   B4XAT7    'Alternative: Taken for how long 7' /
   B4XATU7   'Alternative: Unit of time taken 7' /
   B4XADC7   'Alternative: Diagnosis code 7' /
   B4XAC8    'Alternative: Drug code 8' /
   B4XADD8   'Alternative: Dosage 8' /
   B4XADU8   'Alternative: Dosage units 8' /
   B4XAR8    'Alternative: Route 8' /
   B4XAF8    'Alternative: Frequency 8' /
   B4XAFU8   'Alternative: Frequency unit of time 8' /
   B4XAT8    'Alternative: Taken for how long 8' /
   B4XATU8   'Alternative: Unit of time taken 8' /
   B4XADC8   'Alternative: Diagnosis code 8' /
   B4XAC9    'Alternative: Drug code 9' /
   B4XADD9   'Alternative: Dosage 9' /
   B4XADU9   'Alternative: Dosage units 9' /
   B4XAR9    'Alternative: Route 9' /
   B4XAF9    'Alternative: Frequency 9' /
   B4XAFU9   'Alternative: Frequency unit of time 9' /
   B4XAT9    'Alternative: Taken for how long 9' /
   B4XATU9   'Alternative: Unit of time taken 9' /
   B4XADC9   'Alternative: Diagnosis code 9' /
   B4XAC10   'Alternative: Drug code 10' /
   B4XADD10  'Alternative: Dosage 10' /
   B4XADU10  'Alternative: Dosage units 10' /
   B4XAR10   'Alternative: Route 10' /
   B4XAF10   'Alternative: Frequency 10' /
   B4XAFU10  'Alternative: Frequency unit of time 10' /
   B4XAT10   'Alternative: Taken for how long 10' /
   B4XATU10  'Alternative: Unit of time taken 10' /
   B4XADC10  'Alternative: Diagnosis code 10' /
   B4XAC11   'Alternative: Drug code 11' /
   B4XADD11  'Alternative: Dosage 11' /
   B4XADU11  'Alternative: Dosage units 11' /
   B4XAR11   'Alternative: Route 11' /
   B4XAF11   'Alternative: Frequency 11' /
   B4XAFU11  'Alternative: Frequency unit of time 11' /
   B4XAT11   'Alternative: Taken for how long 11' /
   B4XATU11  'Alternative: Unit of time taken 11' /
   B4XADC11  'Alternative: Diagnosis code 11' /
   B4XAC12   'Alternative: Drug code 12' /
   B4XADD12  'Alternative: Dosage 12' /
   B4XADU12  'Alternative: Dosage units 12' /
   B4XAR12   'Alternative: Route 12' /
   B4XAF12   'Alternative: Frequency 12' /
   B4XAFU12  'Alternative: Frequency unit of time 12' /
   B4XAT12   'Alternative: Taken for how long 12' /
   B4XATU12  'Alternative: Unit of time taken 12' /
   B4XADC12  'Alternative: Diagnosis code 12' /
   B4XM      'Allergies: Does R have any medication allergies' /
   B4XMM     'Allergies: Number of allergic reactions' /
   B4XMC1    'Allergies: Drug code 1' /
   B4XMC2    'Allergies: Drug code 2' /
   B4XMC3    'Allergies: Drug code 3' /
   B4XMC4    'Allergies: Drug code 4' /
   B4XMC5    'Allergies: Drug code 5' /
   B4XMC6    'Allergies: Drug code 6' /
   B4XMC7    'Allergies: Drug code 7' /
   B4XMC8    'Allergies: Drug code 8' /
   B4XXM     'Additionals: Does R have additional meds' /
   B4PWHRF   'Waist-Hip Ratio Filter for values 4 stds +/- the mean' /
   B4P1A     'Height in centimeters' /
   B4P1B     'Weight in kilograms' /
   B4PBMI    'BMI (Body Mass Index)' /
   B4P1C     'Temp in centigrade' /
   B4P1D     'Pulse' /
   B4P1E     'Respiration Rate' /
   B4P1F1S   'BP(sitting) 1 systolic' /
   B4P1F1D   'BP(sitting) 1 diastolic' /
   B4P1F2S   'BP(sitting) 2 systolic' /
   B4P1F2D   'BP(sitting) 2 diastolic' /
   B4P1F3S   'BP(sitting) 3 systolic' /
   B4P1F3D   'BP(sitting) 3 diastolic' /
   B4P1GS    'Average BP(sitting) systolic' /
   B4P1GD    'Average BP(sitting) diastolic' /
   B4P1GS23  'Average of 2nd and 3rd systolic BPs' /
   B4P1GD23  'Average of 2nd and 3rd diastolic BPs' /
   B4P2A     'Waist in centimeters' /
   B4P2B     'Hip 1: Iliac Crest in centimeters' /
   B4P2C     'Hip 2: Maximum Extension in cent.' /
   B4P2D     'Tallest measured in life (inches)' /
   B4PWHR    'Waist-Hip Ratio' /
   B4P3A     'Dominant hand' /
   B4P3A1    'Grip strength: Is R able to do?' /
   B4P3A2R1  'Grip strength: Right 1 (kg/force)' /
   B4P3A2R2  'Grip strength: Right 2 (kg/force)' /
   B4P3A2R3  'Grip strength: Right 3 (kg/force)' /
   B4P3A2L1  'Grip strength: Left 1 (kg/force)' /
   B4P3A2L2  'Grip strength: Left 2 (kg/force)' /
   B4P3A2L3  'Grip strength: Left 3 (kg/force)' /
   B4P3B1    'Visual acuity: Is R able to do?' /
   B4P3B2R   'Visual acuity: uncorrected, R 20/' /
   B4P3B2L   'Visual acuity: uncorrected, L 20/' /
   B4P3B3R   'Visual acuity: Uncorrected,If unable specify reason' /
   B4P3B4    'Visual acuity: Does R wear glasses?' /
   B4P3B4A   'Visual acuity: Type of glasses?' /
   B4P3B5R   'Visual acuity: corrected, R 20/' /
   B4P3B5L   'Visual acuity: corrected, L 20/' /
   B4P3B6    'Visual Acuity: Corrective lens N/A' /
   B4P3C1    'Peak Flow: Is R able to do?' /
   B4P3C2    'Peak Flow: in L/min' /
   B4P3C3    'Peak Flow: Standing/sitting' /
   B4P3D     'Timed walk: In wheelchair?' /
   B4P3E     'Timed walk: Able to walk?' /
   B4P3F     'Timed walk: Assistive device to walk?' /
   B4P3G     'Timed walk: What device does R use?' /
   B4P3H1R   'Timed walk: if unable specify reason' /
   B4P3H2    'Timed walk: Trial #1 in seconds' /
   B4P3H3    'Timed walk: Trial #2 in seconds' /
   B4P3I1    'Chair stand: Able to do chair stand' /
   B4P3I2    'Chair stand: In seconds' /
   B4P3I3R   'Chair Stand: If unable, specify reason' /
   B4PMD     'MD Completed Physician H & P?' /
   B4P4B     'General: Attitude' /
   B4P5A1    'Integument: Hair distribution' /
   B4P5A2    'Integument: Hair texture' /
   B4P5A3    'Integument: Hair color' /
   B4P5A4    'Integument: Hair grey %' /
   B4P5B     'Integument: Does R have skin lesions' /
   B4P5B1    'Integument: Skin lesions-acne' /
   B4P5B2    'Integument: Skin lesions-hives' /
   B4P5B3    'Integument: Skin lesions-keratoses' /
   B4P5B4    'Integument: Skin lesions-petechia' /
   B4P5B5    'Integument: Skin lesions-telangiectasia' /
   B4P5B6    'Integument: Skin lesions-nodules' /
   B4P5B7    'Integument: Skin lesions-scars' /
   B4P5B8    'Integument: Skin lesions-striae' /
   B4P5B9    'Integument: Skin lesions-tatoos' /
   B4P5B10   'Integument: Skin lesions-cuts' /
   B4P5B11   'Integument: Skin lesions-burns' /
   B4P5B12   'Integument: Skin lesions-self-induced' /
   B4P5B13   'Integument: Skin lesions-nevi/mole/skin tags' /
   B4P5B14   'Integument: Skin lesions-eczema' /
   B4P5B15   'Integument: Skin lesions-keloid' /
   B4P5B16   'Integument: Skin lesions-psoriasis' /
   B4P5B17   'Integument: Skin lesions-other' /
   B4P6A1    'Ears: Hearing-finger rub' /
   B4P6A2    'Ears: Hearing-tuning fork' /
   B4P6B     'Ears: Bone conduction-tuning fork' /
   B4P6C     'Ears: Hearing aide' /
   B4P6D1    'Ears: Pinnae: crease R/L' /
   B4P6D2    'Ears: Pinnae: erythema R/L' /
   B4P6D3    'Ears: Pinnae: ulceration R/L' /
   B4P6D4    'Ears: Pinnae: hairy R/L' /
   B4P6E1    'Ears: External canal: normal R/L' /
   B4P6E2    'Ears: External canal: erythema R/L' /
   B4P6E3    'Ears: External canal: discharge R/L' /
   B4P6E4    'Ears: External canal: occlusion' /
   B4P6E4R   'Ears: External canal: occlusion: % right' /
   B4P6E4L   'Ears: External canal: occlusion: % left' /
   B4P6F1    'Ears: Drum: average R/L' /
   B4P6F2    'Ears: Drum: erythema R/L' /
   B4P6F3    'Ears: Drum: perforation R/L' /
   B4P6F4    'Ears: Drum: discharge R/L' /
   B4P6F5    'Ears: Drum: scars R/L' /
   B4P7A     'Nose: Sinus tenderness' /
   B4P7A1R   'Nose: Sinus tenderness: R-maxillary' /
   B4P7A1L   'Nose: Sinus tenderness: L-maxillary' /
   B4P7A2R   'Nose: Sinus tenderness: R-frontal' /
   B4P7A2L   'Nose: Sinus tenderness: L-frontal' /
   B4P8A     'Mouth: Teeth: number remaining' /
   B4P8B1    'Mouth: Teeth: Condition: carries %' /
   B4P8B2    'Mouth: Teeth: Condition: fillings %' /
   B4P8B3    'Mouth: Teeth: Condition: alignment' /
   B4P8B4    'Mouth: Teeth: Condition: upper plate' /
   B4P8B5    'Mouth: Teeth: Condition: lower plate' /
   B4P8B6    'Mouth: Teeth: Condition: upper partial' /
   B4P8B7    'Mouth: Teeth: Condition: lower partial' /
   B4P8C1AD  'Mouth: Teeth: Lost 1st adult tooth: as adult?' /
   B4P8C1A   'Mouth: Teeth: Age lost first tooth' /
   B4P8C1HO  'Mouth: Teeth: How lost first tooth' /
   B4P8C2AD  'Mouth: Teeth: Lost last adult tooth: as adult?' /
   B4P8C2A   'Mouth: Teeth: Age lost last tooth' /
   B4P8C2HO  'Mouth: Teeth: How lost last tooth' /
   B4P8D     'Mouth: Torus' /
   B4P9A     'Neck: ROM' /
   B4P9A1    'Neck: ROM: restricted rotation' /
   B4P9A2    'Neck: ROM: restricted lateral' /
   B4P9A3    'Neck: ROM: restricted forward' /
   B4P9A4    'Neck: ROM: restricted backward' /
   B4P9B     'Neck: Tenderness' /
   B4P9C     'Neck: Masses' /
   B4P9D     'Neck: Thyroid size' /
   B4P9D1    'Neck: Thyroid size: goiter' /
   B4P9D2    'Neck: Thyroid size: smaller' /
   B4P9D3    'Neck: Thyroid size: nodules' /
   B4P9D3N   'Neck: Thyroid size: nodules-number' /
   B4P9D3S   'Neck: Thyroid size: nodules-size' /
   B4P10A1   'Cardio: Auscultation: Carotid bruit' /
   B4P10A2   'Cardio: Auscultation: Rhythm' /
   B4P10A3   'Cardio: Auscultation: Mid-systolic click' /
   B4P10A4   'Cardio: Auscultation: Opening snap' /
   B4P10B1   'Cardio: Auscultation: Murmurs' /
   B4P10B2   'Cardio: Murmurs: Systolic' /
   B4P10B2A  'Cardio: Murmurs: Aortic sclerosis' /
   B4P10B2B  'Cardio: Murmurs: Mitral regurgitation' /
   B4P10B3   'Cardio: Murmurs: Diastolic' /
   B4P10C    'Cardio: Pulses' /
   B4P10C1R  'Cardio: R Carotid pulse' /
   B4P10C1L  'Cardio: L Carotid pulse' /
   B4P10C2R  'Cardio: R Brachial pulse' /
   B4P10C2L  'Cardio: L Brachial pulse' /
   B4P10C3R  'Cardio: R Radial pulse' /
   B4P10C3L  'Cardio: L Radial pulse' /
   B4P10C4R  'Cardio: R Femoral pulse' /
   B4P10C4L  'Cardio: L Femoral pulse' /
   B4P10C5R  'Cardio: R Popliteal pulse' /
   B4P10C5L  'Cardio: L Popliteal pulse' /
   B4P10C6R  'Cardio: R Dorsalis pedis pulse' /
   B4P10C6L  'Cardio: L Dorsalis pedis pulse' /
   B4P10C7R  'Cardio: R Posterior tibial pulse' /
   B4P10C7L  'Cardio: L Posterior tibial pulse' /
   B4P11A1   'Thorax/lungs: Inspect contour' /
   B4P11B    'Thorax/lungs: Auscult' /
   B4P11B1   'Thorax/lungs: Auscult: Rales' /
   B4P11B1A  'Thorax/lungs: Auscult: Rales-LR' /
   B4P11B1B  'Thorax/lungs: Auscult: Rales- LL' /
   B4P11B1C  'Thorax/lungs: Auscult: Rales- UL' /
   B4P11B1D  'Thorax/lungs: Auscult: Rales- UR' /
   B4P11B2   'Thorax/lungs: Auscult: Wheezes' /
   B4P11B2A  'Thorax/lungs: Auscult: Wheezes- LR' /
   B4P11B2B  'Thorax/lungs: Auscult: Wheezes- LL' /
   B4P11B2C  'Thorax/lungs: Auscult: Wheezes- UL' /
   B4P11B2D  'Thorax/lungs: Auscult: Wheezes- UR' /
   B4P11B3   'Thorax/lungs: Auscult: Friction rubs' /
   B4P12A    'Musculoskel: Muscles' /
   B4P12B    'Musculoskel: Spine' /
   B4P12C    'Musculoskel: Joints' /
   B4P12C1   'Musculoskel: Joints: Deformities' /
   B4P12C1A  'Musculoskel: Joints: Deformities- UC' /
   B4P12C1B  'Musculoskel: Joints: Deformities- UP' /
   B4P12C1C  'Musculoskel: Joints: Deformities- UD' /
   B4P12C1D  'Musculoskel: Joints: Deformities- LC' /
   B4P12C1E  'Musculoskel: Joints: Deformities- LP' /
   B4P12C1F  'Musculoskel: Joints: Deformities- LD' /
   B4P12C2   'Musculoskel: Joints: Crepitation' /
   B4P12C2A  'Musculoskel: Joints: Crepitation- UC' /
   B4P12C2B  'Musculoskel: Joints: Crepitation- UP' /
   B4P12C2C  'Musculoskel: Joints: Crepitation- UD' /
   B4P12C2D  'Musculoskel: Joints: Crepitation- LC' /
   B4P12C2E  'Musculoskel: Joints: Crepitation- LP' /
   B4P12C2F  'Musculoskel: Joints: Crepitation- LD' /
   B4P12C3   'Musculoskel: Joints: ROM' /
   B4P12C3A  'Musculoskel: Joints: ROM- UC' /
   B4P12C3B  'Musculoskel: Joints: ROM- UP' /
   B4P12C3C  'Musculoskel: Joints: ROM- UD' /
   B4P12C3D  'Musculoskel: Joints: ROM- LC' /
   B4P12C3E  'Musculoskel: Joints: ROM- LP' /
   B4P12C3F  'Musculoskel: Joints: ROM- LD' /
   B4P12C4   'Musculoskel: Joints: Swelling' /
   B4P12C4A  'Musculoskel: Joints: Swelling- UC' /
   B4P12C4B  'Musculoskel: Joints: Swelling- UP' /
   B4P12C4C  'Musculoskel: Joints: Swelling- UD' /
   B4P12C4D  'Musculoskel: Joints: Swelling- LC' /
   B4P12C4E  'Musculoskel: Joints: Swelling- LP' /
   B4P12C4F  'Musculoskel: Joints: Swelling- LD' /
   B4P12C5   'Musculoskel: Joints: Tenderness' /
   B4P12C5A  'Musculoskel: Joints: Tenderness- UC' /
   B4P12C5B  'Musculoskel: Joints: Tenderness- UP' /
   B4P12C5C  'Musculoskel: Joints: Tenderness- UD' /
   B4P12C5D  'Musculoskel: Joints: Tenderness- LC' /
   B4P12C5E  'Musculoskel: Joints: Tenderness- LP' /
   B4P12C5F  'Musculoskel: Joints: Tenderness- LD' /
   B4P12C6   'Musculoskel: Joints: Heat' /
   B4P12C7   'Musculoskel: Joints: Redness' /
   B4P12D    'Musculoskel: # of tender points' /
   B4P12E1   'Musculoskel: Appearance of extremities' /
   B4P12E2   'Musculoskel: Extremities: Clubbing' /
   B4P12E3   'Musculoskel: Extremities: Edema' /
   B4P12E4   'Musculoskel: Extremities Varicosities' /
   B4P12E5   'Musculoskel: Extremities: Incr p/v' /
   B4P13     'Neuro: Right- or Left-Handed' /
   B4P13A1   'Neuro: Coordination: Finger to nose' /
   B4P13A2   'Neuro: Coordination: Past pointing' /
   B4P13A3   'Neuro: Coordination: Heel to knee' /
   B4P13A4   'Neuro: Coordination: Romberg' /
   B4P13B1   'Neuro: Strength' /
   B4P13B1A  'Neuro: Strength: R/UE' /
   B4P13B1B  'Neuro: Strength: L/UE' /
   B4P13B1C  'Neuro: Strength: R/LE' /
   B4P13B1D  'Neuro: Strength: L/LE' /
   B4P13B2   'Neuro: Tone' /
   B4P13B2A  'Neuro: Tone: R/UE' /
   B4P13B2B  'Neuro: Tone: L/UE' /
   B4P13B2C  'Neuro: Tone: R/LE' /
   B4P13B2D  'Neuro: Tone: L/LE' /
   B4P13B3   'Neuro: Volume' /
   B4P13B3A  'Neuro: Volume: R/UE' /
   B4P13B3B  'Neuro: Volume: L/UE' /
   B4P13B3C  'Neuro: Volume: R/LE' /
   B4P13B3D  'Neuro: Volume: L/LE' /
   B4P13B4   'Neuro: Contractures' /
   B4P13B4A  'Neuro: Contractures: R/UE' /
   B4P13B4B  'Neuro: Contractures: L/UE' /
   B4P13B4C  'Neuro: Contractures: R/LE' /
   B4P13B4D  'Neuro: Contractures: L/LE' /
   B4P13B5   'Neuro: Localized spasm' /
   B4P13B5A  'Neuro: Localized spasm: R/UE' /
   B4P13B5B  'Neuro: Localized spasm: L/UE' /
   B4P13B5C  'Neuro: Localized spasm: R/LE' /
   B4P13B5D  'Neuro: Localized spasm: L/LE' /
   B4P13C1R  'Neuro: Reflexes: Biceps: Right' /
   B4P13C1L  'Neuro: Reflexes: Biceps: Left' /
   B4P13C2R  'Neuro: Reflexes: Quads: Right' /
   B4P13C2L  'Neuro: Reflexes: Quads: Left' /
   B4P13C3R  'Neuro: Reflexes: Ankle: Right' /
   B4P13C3L  'Neuro: Reflexes: Ankle: Left' /
   B4P13C4A  'Neuro: Reflexes: Plantar: Dorsiflexion' /
   B4P13D1   'Neuro: Sensation: Light touch' /
   B4P13D1A  'Neuro: Sensation: Light touch: R/UE' /
   B4P13D1B  'Neuro: Sensation: Light touch: L/UE' /
   B4P13D1C  'Neuro: Sensation: Light touch: R/LE' /
   B4P13D1D  'Neuro: Sensation: Light touch: L/LE' /
   B4P13D2   'Neuro: Sensation: Pin prick' /
   B4P13D2A  'Neuro: Sensation: Pin prick: R/UE' /
   B4P13D2B  'Neuro: Sensation: Pin prick: L/UE' /
   B4P13D2C  'Neuro: Sensation: Pin prick: R/LE' /
   B4P13D2D  'Neuro: Sensation: Pin prick: L/LE' /
   B4P13D3   'Neuro: Sensation: Temperature' /
   B4P13D3A  'Neuro: Sensation: Temperature: R/UE' /
   B4P13D3B  'Neuro: Sensation: Temperature: L/UE' /
   B4P13D3C  'Neuro: Sensation: Temperature: R/LE' /
   B4P13D3D  'Neuro: Sensation: Temperature: L/LE' /
   B4P13D4   'Neuro: Sensation: Position' /
   B4P13D4A  'Neuro: Sensation: Position: R/UE' /
   B4P13D4B  'Neuro: Sensation: Position: L/UE' /
   B4P13D4C  'Neuro: Sensation: Position: R/LE' /
   B4P13D4D  'Neuro: Sensation: Position: L/LE' /
   B4P13D5   'Neuro: Sensation: Vibration' /
   B4P13D5A  'Neuro: Sensation: Vibration: R/UE' /
   B4P13D5B  'Neuro: Sensation: Vibration: L/UE' /
   B4P13D5C  'Neuro: Sensation: Vibration: R/LE' /
   B4P13D5D  'Neuro: Sensation: Vibration: L/LE' /
   B4P13E1   'Neuro: Autonom: Sweating' /
   B4P13E1A  'Neuro: Autonom: Sweating: R/UE' /
   B4P13E1B  'Neuro: Autonom: Sweating: L/UE' /
   B4P13E1C  'Neuro: Autonom: Sweating: R/LE' /
   B4P13E1D  'Neuro: Autonom: Sweating: L/LE' /
   B4P13E2   'Neuro: Autonom: Vasomotor change' /
   B4P13E3   'Neuro: Autonom: Trophic disturb' /
   B4ZBLOOD  'P4 Blood received' /
   B4BHA1C   'Blood Hemoglobin A1c %' /
   B4BCHOL   'Blood Total Cholesterol (mg/dL)' /
   B4BTRIGL  'Blood Triglycerides (mg/dL)' /
   B4BHDL    'Blood HDL Cholesterol (mg/dL)' /
   B4BLDL    'Blood LDL  Cholesterol (mg/dL)' /
   B4BRTHDL  'Blood Ratio Total / HDL Cholesterol' /
   B4BDHEAS  'Blood DHEA-S  (ug/dL)' /
   B4BDHEA   'Blood DHEA (ng/mL)' /
   B4BSCREA  'Blood Creatinine (mg/dL)' /
   B4BIL6    'Serum IL6 (pg/mL)' /
   B4BSIL6R  'Serum Soluble IL6 Receptor (pg/mL)' /
   B4BFGN    'Blood Fibrinogen (mg/dL)' /
   B4BCRP    'Blood C-Reactive Protein (ug/mL)' /
   B4BSESEL  'Serum soluble E-Selectin (ng/mL)' /
   B4BSICAM  'Serum Soluble ICAM-1 (ng/mL)' /
   B4BATBC   'Blood All trans-beta-carotene (umol/L)' /
   B4B13CBC  'Blood 13-cis-beta-carotene (umol/L)' /
   B4BAC     'Blood alpha-carotene (umol/L)' /
   B4BBCX    'Blood beta-cryptoxanthin (umol/L)' /
   B4BLUT    'Blood Lutein (umol/L)' /
   B4BZX     'Blood Zeaxanthin (umol/L)' /
   B4BLYC    'Blood Lycopene (umol/L)' /
   B4BRET    'Blood Retinol (umol/L)' /
   B4BATOC   'Blood alpha-tocopherol (umol/L)' /
   B4BGTOC   'Blood gamma-tocopherol (umol/L)' /
   B4BP1NP   'Blood Amino terminal Propeptide type 1 Procollagen (ugL)' /
   B4BSBAP   'Blood Bone Specific Alkaline Phospatase (UL)' /
   B4BSNTX   'Blood n-Teleopeptide type 1 collagen (nM BCE)' /
   B4BGLUC   'Blood Fasting Glucose levels mg/dL' /
   B4BINSLN  'Blood Fasting Insulin levels uIU/mL' /
   B4BIGF1   'Blood Fasting IGF1 (Insulin-like Growth Factor 1) ng/mL)' /
   B4BHOMAIR 'HOMA-IR: (b4bgluc*b4binsln)/405' /
   B4ZURINE  'P4 Urine sample Received' /
   B4BUPROB  'Urine collection period less than 11 hours or greater than 13 hours?' /
   B4BUSTRT  'Urine collect: Start time' /
   B4BUEND   'Urine collect: End time' /
   B4BUVDYN  'Any voids not collected?' /
   B4BUVDN   'Number voids not collected' /
   B4BURVOL  'Urine Volume (ml)' /
   B4BCORTL  'Urine Cortisol (ug/dL)' /
   B4BCORTO  'Urine Cortisone (ug/dL)' /
   B4BUCREA  'Urine Creatinine (mg/dL)' /
   B4BCLCRE  'Urine Cortisol adj for Urine Creat (ug/g)' /
   B4BCOCRE  'Urine Cortisone adj for UrineCreat(ug/g)' /
   B4BNOREP  'Urine Norepinepherine (ug/dL)' /
   B4BEPIN   'Urine Epinephrine (ug/dL)' /
   B4BDOPA   'Urine Dopamine (ug/dL)' /
   B4BNE12   'Urine Norepinephrine 12 hour (ug/12h)' /
   B4BEPI12  'Urine Epinephrine 12 hour (ug/12h)' /
   B4BDOP12  'Urine Dopamine 12 hour (ug/12h)' /
   B4BNOCRE  'Urine Norepinephrine adjusted for Urine Creat (ug/g)' /
   B4BEPCRE  'Urine Epinephrine adjusted for Urine Creat(ug/g)' /
   B4BDOCRE  'Urine Dopamine adjusted for Urine Creat(ug/g)' /
   B4BNECL   'Ratio Urine Norepinephrine/Cortisol' /
   B4BSUCRE  'Ratio Serum Creatinine /Urine Creatinine' /
   B4BGFR    'Glomerular Filtration Rate (ml/min)' /
   B4ZSALIV  'P4 Saliva received' /
   B4BSCL11  'Saliva cortisol baseline dupl#1 (nmol/L)' /
   B4BSCL21  'Saliva cortisol Post Cog dupl#1 (nmol/L)' /
   B4BSCL31  'Saliva cortisol Post Orthdupl#1 (nmol/L)' /
   B4BSCL41  'Saliva cortisol final dupl#1 (nmol/L)' /
   B4BSDUP   'Was this sample run in duplicate? 1=yes' /
   B4BSCL12  'Saliva cortisol baseline dupl#2 (nmol/L)' /
   B4BSCL22  'Saliva cortisol Post Cog dupl#2 (nmol/L)' /
   B4BSCL32  'Saliva cortisol Post Orthdupl#2 (nmol/L)' /
   B4BSCL42  'Saliva cortisol final dupl#2 (nmol/L)' /
   B4BSCL1A  'Saliva cortisol baseline avge (nmol/L)' /
   B4BSCL2A  'Saliva cortisol Post Cog avge (nmol/L)' /
   B4BSCL3A  'Saliva cortisol Post Orth avge (nmol/L)' /
   B4BSCL4A  'Saliva cortisol final avge (nmol/L)' /
   B4BSCL14  'Saliva cortisol All Sample avge (nmol/L)' /
   B4AWAVL   'Are both Watch & Diary Data Available?' /
   B4AWIMPU  'Watch values imputed?' /
   B4AWMARK  'Watch values from event marker button?' /
   B4AWDAYS  '# of Days of Watch Data Available' /
   B4AWPART  'Only Partial Watch data Available?' /
   B4AWIDIO  'Idiosyncratic Sleep Pattern?' /
   B4AWTMZN  'Data Affected by Time Zone change or DST?' /
   B4AWLAG   'Lag P4 completion to Actiwatch period start date (in days)' /
   B4AWBGNM  'Month began Actiwatch sleep period' /
   B4AWENDM  'Month ended Actiwatch sleep Period' /
   B4AD11    'Tue PM How Alert Today' /
   B4AD12    'Tue PM Minutes of Moderate Exercise' /
   B4AD13    'Tue PM Did You Nap Today' /
   B4AD13S   'Tue PM Specify Nap Length (Minutes)' /
   B4AD14    'Tue PM How Much Caffeine Today' /
   B4AD15    'Tue PM How Much Alcohol Today' /
   B4AD16    'Tue PM Take Meds Not Usually Taken' /
   B4AD16M   'Tue PM: If Yes, took med not usually taken - med type' /
   B4AD17    'Wed AM Did You Take Sleep Med or Supplmt' /
   B4AD17M   'Wed AM: If Yes, took med to help sleep - med type' /
   B4AD18    'Wed AM What Time Did You Go To Bed' /
   B4AD18A   'Wed AM Go To Bed AM or PM' /
   B4AD19    'Wed AM Minutes To Fall Asleep' /
   B4AD110   'Wed AM How Difficult To Fall Asleep' /
   B4AD111   'Wed AM How Many Times Did You Wake' /
   B4AD112   'Wed AM Wake Because Of Noise Or Activity' /
   B4AD113   'Wed AM If Woke, Diff. Getting To Sleep' /
   B4AD114   'Wed AM If Woke, Num. Of Times Left Bed' /
   B4AD115   'Wed AM Wake Up Time' /
   B4AD115A  'Wed AM Wake Up Time AM Or PM' /
   B4AD116   'Wed AM Get Up Time' /
   B4AD116A  'Wed AM Get Up Time AM Or PM' /
   B4AD117   'Wed AM How Deeply Did You Sleep' /
   B4AD118   'Wed AM How Well Rested Do You Feel' /
   B4AD119   'Wed AM How Alert Do You Feel' /
   B4AD120   'Wed AM Overall Quality of Sleep' /
   B4AD21    'Wed PM How Alert Today' /
   B4AD22    'Wed PM Minutes of Moderate Exercise' /
   B4AD23    'Wed PM Did You Nap Today' /
   B4AD23S   'Wed PM Specify Nap Length (Minutes)' /
   B4AD24    'Wed PM How Much Caffeine Today' /
   B4AD25    'Wed PM How Much Alcohol Today' /
   B4AD26    'Wed PM Take Meds Not Usually Taken' /
   B4AD26M   'Wed PM: If Yes, took med not usually taken - med type' /
   B4AD27    'Thu AM Did You Take Sleep Med or Supplmt' /
   B4AD27M   'Thu AM: If Yes, took med to help sleep - med type' /
   B4AD28    'Thu AM What Time Did You Go To Bed' /
   B4AD28A   'Thu AM Go To Bed AM or PM' /
   B4AD29    'Thu AM Minutes To Fall Asleep' /
   B4AD210   'Thu AM How Difficult To Fall Asleep' /
   B4AD211   'Thu AM How Many Times Did You Wake' /
   B4AD212   'Thu AM Wake Because Of Noise Or Activity' /
   B4AD213   'Thu AM If Woke, Diff. Getting To Sleep' /
   B4AD214   'Thu AM If Woke, Num. Of Times Left Bed' /
   B4AD215   'Thu AM Wake Up Time' /
   B4AD215A  'Thu AM Wake Up Time AM Or PM' /
   B4AD216   'Thu AM Get Up Time' /
   B4AD216A  'Thu AM Get Up Time AM Or PM' /
   B4AD217   'Thu AM How Deeply Did You Sleep' /
   B4AD218   'Thu AM How Well Rested Do You Feel' /
   B4AD219   'Thu AM How Alert Do You Feel' /
   B4AD220   'Thu AM Overall Quality of Sleep' /
   B4AD31    'Thu PM How Alert Today' /
   B4AD32    'Thu PM Minutes of Moderate Exercise' /
   B4AD33    'Thu PM Did You Nap Today' /
   B4AD33S   'Thu PM Specify Nap Length (Minutes)' /
   B4AD34    'Thu PM How Much Caffeine Today' /
   B4AD35    'Thu PM How Much Alcohol Today' /
   B4AD36    'Thu PM Take Meds Not Usually Taken' /
   B4AD36M   'Thu PM: If Yes, took med not usually taken - med type' /
   B4AD37    'Fri AM Did You Take Sleep Med or Supplmt' /
   B4AD37M   'Fri AM: If Yes, took med to help sleep - med type' /
   B4AD38    'Fri AM What Time Did You Go To Bed' /
   B4AD38A   'Fri AM Go To Bed AM or PM' /
   B4AD39    'Fri AM Minutes To Fall Asleep' /
   B4AD310   'Fri AM How Difficult To Fall Asleep' /
   B4AD311   'Fri AM How Many Times Did You Wake' /
   B4AD312   'Fri AM Wake Because Of Noise Or Activity' /
   B4AD313   'Fri AM If Woke, Diff. Getting To Sleep' /
   B4AD314   'Fri AM If Woke, Num. Of Times Left Bed' /
   B4AD315   'Fri AM Wake Up Time' /
   B4AD315A  'Fri AM Wake Up Time AM Or PM' /
   B4AD316   'Fri AM Get Up Time' /
   B4AD316A  'Fri AM Get Up Time AM Or PM' /
   B4AD317   'Fri AM How Deeply Did You Sleep' /
   B4AD318   'Fri AM How Well Rested Do You Feel' /
   B4AD319   'Fri AM How Alert Do You Feel' /
   B4AD320   'Fri AM Overall Quality of Sleep' /
   B4AD41    'Fri PM How Alert Today' /
   B4AD42    'Fri PM Minutes of Moderate Exercise' /
   B4AD43    'Fri PM Did You Nap Today' /
   B4AD43S   'Fri PM Specify Nap Length (Minutes)' /
   B4AD44    'Fri PM How Much Caffeine Today' /
   B4AD45    'Fri PM How Much Alcohol Today' /
   B4AD46    'Fri PM Take Meds Not Usually Taken' /
   B4AD46M   'Fri PM: If Yes, took med not usually taken - med type' /
   B4AD47    'Sat AM Did You Take Sleep Med or Supplmt' /
   B4AD47M   'Sat AM: If Yes, took med to help sleep - med type' /
   B4AD48    'Sat AM What Time Did You Go To Bed' /
   B4AD48A   'Sat AM Go To Bed AM or PM' /
   B4AD49    'Sat AM Minutes To Fall Asleep' /
   B4AD410   'Sat AM How Difficult To Fall Asleep' /
   B4AD411   'Sat AM How Many Times Did You Wake' /
   B4AD412   'Sat AM Wake Because Of Noise Or Activity' /
   B4AD413   'Sat AM If Woke, Diff. Getting To Sleep' /
   B4AD414   'Sat AM If Woke, Num. Of Times Left Bed' /
   B4AD415   'Sat AM Wake Up Time' /
   B4AD415A  'Sat AM Wake Up Time AM Or PM' /
   B4AD416   'Sat AM Get Up Time' /
   B4AD416A  'Sat AM Get Up Time AM Or PM' /
   B4AD417   'Sat AM How Deeply Did You Sleep' /
   B4AD418   'Sat AM How Well Rested Do You Feel' /
   B4AD419   'Sat AM How Alert Do You Feel' /
   B4AD420   'Sat AM Overall Quality of Sleep' /
   B4AD51    'Sat PM How Alert Today' /
   B4AD52    'Sat PM Minutes of Moderate Exercise' /
   B4AD53    'Sat PM Did You Nap Today' /
   B4AD53S   'Sat PM Specify Nap Length (Minutes)' /
   B4AD54    'Sat PM How Much Caffeine Today' /
   B4AD55    'Sat PM How Much Alcohol Today' /
   B4AD56    'Sat PM Take Meds Not Usually Taken' /
   B4AD56M   'Sat PM: If Yes, took med not usually taken - med type' /
   B4AD57    'Sun AM Did You Take Sleep Med or Supplmt' /
   B4AD57M   'Sun AM: If Yes, took med to help sleep - med type' /
   B4AD58    'Sun AM What Time Did You Go To Bed' /
   B4AD58A   'Sun AM Go To Bed AM or PM' /
   B4AD59    'Sun AM Minutes To Fall Asleep' /
   B4AD510   'Sun AM How Difficult To Fall Asleep' /
   B4AD511   'Sun AM How Many Times Did You Wake' /
   B4AD512   'Sun AM Wake Because Of Noise Or Activity' /
   B4AD513   'Sun AM If Woke, Diff. Getting To Sleep' /
   B4AD514   'Sun AM If Woke, Num. Of Times Left Bed' /
   B4AD515   'Sun AM Wake Up Time' /
   B4AD515A  'Sun AM Wake Up Time AM Or PM' /
   B4AD516   'Sun AM Get Up Time' /
   B4AD516A  'Sun AM Get Up Time AM Or PM' /
   B4AD517   'Sun AM How Deeply Did You Sleep' /
   B4AD518   'Sun AM How Well Rested Do You Feel' /
   B4AD519   'Sun AM How Alert Do You Feel' /
   B4AD520   'Sun AM Overall Quality of Sleep' /
   B4AD61    'Sun PM How Alert Today' /
   B4AD62    'Sun PM Minutes of Moderate Exercise' /
   B4AD63    'Sun PM Did You Nap Today' /
   B4AD63S   'Sun PM Specify Nap Length (Minutes)' /
   B4AD64    'Sun PM How Much Caffeine Today' /
   B4AD65    'Sun PM How Much Alcohol Today' /
   B4AD66    'Sun PM Take Meds Not Usually Taken' /
   B4AD66M   'Sun PM: If Yes, took med not usually taken - med type' /
   B4AD67    'Mon AM Did You Take Sleep Med or Supplmt' /
   B4AD67M   'Mon AM: If Yes, took med to help sleep - med type' /
   B4AD68    'Mon AM What Time Did You Go To Bed' /
   B4AD68A   'Mon AM Go To Bed AM or PM' /
   B4AD69    'Mon AM Minutes To Fall Asleep' /
   B4AD610   'Mon AM How Difficult To Fall Asleep' /
   B4AD611   'Mon AM How Many Times Did You Wake' /
   B4AD612   'Mon AM Wake Because Of Noise Or Activity' /
   B4AD613   'Mon AM If Woke, Diff. Getting To Sleep' /
   B4AD614   'Mon AM If Woke, Num. Of Times Left Bed' /
   B4AD615   'Mon AM Wake Up Time' /
   B4AD615A  'Mon AM Wake Up Time AM Or PM' /
   B4AD616   'Mon AM Get Up Time' /
   B4AD616A  'Mon AM Get Up Time AM Or PM' /
   B4AD617   'Mon AM How Deeply Did You Sleep' /
   B4AD618   'Mon AM How Well Rested Do You Feel' /
   B4AD619   'Mon AM How Alert Do You Feel' /
   B4AD620   'Mon AM Overall Quality of Sleep' /
   B4AD71    'Mon PM How Alert Today' /
   B4AD72    'Mon PM Minutes of Moderate Exercise' /
   B4AD73    'Mon PM Did You Nap Today' /
   B4AD73S   'Mon PM Specify Nap Length (Minutes)' /
   B4AD74    'Mon PM How Much Caffeine Today' /
   B4AD75    'Mon PM How Much Alcohol Today' /
   B4AD76    'Mon PM Take Meds Not Usually Taken' /
   B4AD76M   'Mon PM: If Yes, took med not usually taken - med type' /
   B4AD77    'Tue AM Did You Take Sleep Med or Supplmt' /
   B4AD77M   'Tue AM: If Yes, took med to help sleep - med type' /
   B4AD78    'Tue AM What Time Did You Go To Bed' /
   B4AD78A   'Tue AM Go To Bed AM or PM' /
   B4AD79    'Tue AM Minutes To Fall Asleep' /
   B4AD710   'Tue AM How Difficult To Fall Asleep' /
   B4AD711   'Tue AM How Many Times Did You Wake' /
   B4AD712   'Tue AM Wake Because Of Noise Or Activity' /
   B4AD713   'Tue AM If Woke, Diff. Getting To Sleep' /
   B4AD714   'Tue AM If Woke, Num. Of Times Left Bed' /
   B4AD715   'Tue AM Wake Up Time' /
   B4AD715A  'Tue AM Wake Up Time AM Or PM' /
   B4AD716   'Tue AM Get Up Time' /
   B4AD716A  'Tue AM Get Up Time AM Or PM' /
   B4AD717   'Tue AM How Deeply Did You Sleep' /
   B4AD718   'Tue AM How Well Rested Do You Feel' /
   B4AD719   'Tue AM How Alert Do You Feel' /
   B4AD720   'Tue AM Overall Quality of Sleep' /
   B4WPSTI   'Data Collection Period Start Time' /
   B4WR1SDY  'Rest 1 Start Day' /
   B4WR1ST   'Rest 1 Start Time' /
   B4WR1EDY  'Rest 1 End Day' /
   B4WR1ET   'Rest 1 End Time' /
   B4WR1TAC  'Rest 1 Total Activity Counts' /
   B4WR1ACM  'Rest 1 Avg Activity Counts/min' /
   B4WR1MAC  'Rest 1 Max Activity Counts' /
   B4WR1IAC  'Rest 1 % Invalid Activity Counts' /
   B4WR1SW   'Rest 1 % Invalid Sleep/Wake Time' /
   B4WR1WT   'Rest 1 Wake Time' /
   B4WR1PW   'Rest 1 % Wake Time' /
   B4WR1WB   'Rest 1 # Wake Bouts' /
   B4WR1AWB  'Rest 1 Avg Wake Bouts' /
   B4WR1SLT  'Rest 1 Sleep Time' /
   B4WR1PSL  'Rest 1 % Sleep Time' /
   B4WR1SLB  'Rest 1 # Sleep Bouts' /
   B4WR1ASB  'Rest 1 Avg Sleep Bouts' /
   B4WS1SDY  'Sleep 1 Start Day' /
   B4WS1ST   'Sleep 1 Start Time' /
   B4WS1EDY  'Sleep 1 End Day' /
   B4WS1ET   'Sleep 1 End Time' /
   B4WS1TAC  'Sleep 1 Total Activity Counts' /
   B4WS1ACM  'Sleep 1 Avg Activity Counts/min' /
   B4WS1MAC  'Sleep 1 Max Activity Counts' /
   B4WS1IAC  'Sleep 1 % Invalid Activity Counts' /
   B4WS1ISW  'Sleep 1 % Invalid Sleep/Wake Time' /
   B4WS1OL   'Sleep 1 Sleep Onset Latency' /
   B4WS1SNT  'Sleep 1 Time Dozing Before Rising' /
   B4WS1EFF  'Sleep 1 Sleep Efficiency' /
   B4WS1WSO  'Sleep 1 Wake After Sleep Onset' /
   B4WS1WT   'Sleep 1 Wake Time' /
   B4WS1PW   'Sleep 1 % Wake Time' /
   B4WS1WB   'Sleep 1 # Wake Bouts' /
   B4WS1AWB  'Sleep 1 Avg Wake Bouts' /
   B4WS1SLT  'Sleep 1 Sleep Time' /
   B4WS1PSL  'Sleep 1 % Sleep Time' /
   B4WS1SLB  'Sleep 1 # Sleep Bouts' /
   B4WS1ASB  'Sleep 1 Avg Sleep Bouts' /
   B4WA1SDY  'Active 1 Start Day' /
   B4WA1ST   'Active 1 Start Time' /
   B4WA1EDY  'Active 1 End Day' /
   B4WA1ET   'Active 1 End Time' /
   B4WA1TAC  'Active 1 Total Activity Counts' /
   B4WA1ACM  'Active 1 Avg Activity Counts/min' /
   B4WA1MAC  'Active 1 Max Activity Counts' /
   B4WA1IAC  'Active 1 % Invalid Activity Counts' /
   B4WA1ISW  'Active 1 % Invalid Sleep/Wake Time' /
   B4WA1WT   'Active 1 Wake Time' /
   B4WA1PW   'Active 1 % Wake Time' /
   B4WA1WB   'Active 1 # Wake Bouts' /
   B4WA1AWB  'Active 1 Avg Wake Bouts' /
   B4WA1SLT  'Active 1 Sleep Time' /
   B4WA1PSL  'Active 1 % Sleep Time' /
   B4WA1SLB  'Active 1 # Sleep Bouts' /
   B4WA1ASB  'Active 1 Avg Sleep Bouts' /
   B4WR2SDY  'Rest 2 Start Day' /
   B4WR2ST   'Rest 2 Start Time' /
   B4WR2EDY  'Rest 2 End Day' /
   B4WR2ET   'Rest 2 End Time' /
   B4WR2TAC  'Rest 2 Total Activity Counts' /
   B4WR2ACM  'Rest 2 Avg Activity Counts/min' /
   B4WR2MAC  'Rest 2 Max Activity Counts' /
   B4WR2IAC  'Rest 2 % Invalid Activity Counts' /
   B4WR2SW   'Rest 2 % Invalid Sleep/Wake Time' /
   B4WR2WT   'Rest 2 Wake Time' /
   B4WR2PW   'Rest 2 % Wake Time' /
   B4WR2WB   'Rest 2 # Wake Bouts' /
   B4WR2AWB  'Rest 2 Avg Wake Bouts' /
   B4WR2SLT  'Rest 2 Sleep Time' /
   B4WR2PSL  'Rest 2 % Sleep Time' /
   B4WR2SLB  'Rest 2 # Sleep Bouts' /
   B4WR2ASB  'Rest 2 Avg Sleep Bouts' /
   B4WS2SDY  'Sleep 2 Start Day' /
   B4WS2ST   'Sleep 2 Start Time' /
   B4WS2EDY  'Sleep 2 End Day' /
   B4WS2ET   'Sleep 2 End Time' /
   B4WS2TAC  'Sleep 2 Total Activity Counts' /
   B4WS2ACM  'Sleep 2 Avg Activity Counts/min' /
   B4WS2MAC  'Sleep 2 Max Activity Counts' /
   B4WS2IAC  'Sleep 2 % Invalid Activity Counts' /
   B4WS2ISW  'Sleep 2 % Invalid Sleep/Wake Time' /
   B4WS2OL   'Sleep 2 Sleep Onset Latency' /
   B4WS2SNT  'Sleep 2 Time Dozing Before Rising' /
   B4WS2EFF  'Sleep 2 Sleep Efficiency' /
   B4WS2WSO  'Sleep 2 Wake After Sleep Onset' /
   B4WS2WT   'Sleep 2 Wake Time' /
   B4WS2PW   'Sleep 2 % Wake Time' /
   B4WS2WB   'Sleep 2 # Wake Bouts' /
   B4WS2AWB  'Sleep 2 Avg Wake Bouts' /
   B4WS2SLT  'Sleep 2 Sleep Time' /
   B4WS2PSL  'Sleep 2 % Sleep Time' /
   B4WS2SLB  'Sleep 2 # Sleep Bouts' /
   B4WS2ASB  'Sleep 2 Avg Sleep Bouts' /
   B4WA2SDY  'Active 2 Start Day' /
   B4WA2ST   'Active 2 Start Time' /
   B4WA2EDY  'Active 2 End Day' /
   B4WA2ET   'Active 2 End Time' /
   B4WA2TAC  'Active 2 Total Activity Counts' /
   B4WA2ACM  'Active 2 Avg Activity Counts/min' /
   B4WA2MAC  'Active 2 Max Activity Counts' /
   B4WA2IAC  'Active 2 % Invalid Activity Counts' /
   B4WA2ISW  'Active 2 % Invalid Sleep/Wake Time' /
   B4WA2WT   'Active 2 Wake Time' /
   B4WA2PW   'Active 2 % Wake Time' /
   B4WA2WB   'Active 2 # Wake Bouts' /
   B4WA2AWB  'Active 2 Avg Wake Bouts' /
   B4WA2SLT  'Active 2 Sleep Time' /
   B4WA2PSL  'Active 2 % Sleep Time' /
   B4WA2SLB  'Active 2 # Sleep Bouts' /
   B4WA2ASB  'Active 2 Avg Sleep Bouts' /
   B4WR3SDY  'Rest 3 Start Day' /
   B4WR3ST   'Rest 3 Start Time' /
   B4WR3EDY  'Rest 3 End Day' /
   B4WR3ET   'Rest 3 End Time' /
   B4WR3TAC  'Rest 3 Total Activity Counts' /
   B4WR3ACM  'Rest 3 Avg Activity Counts/min' /
   B4WR3MAC  'Rest 3 Max Activity Counts' /
   B4WR3IAC  'Rest 3 % Invalid Activity Counts' /
   B4WR3SW   'Rest 3 % Invalid Sleep/Wake Time' /
   B4WR3WT   'Rest 3 Wake Time' /
   B4WR3PW   'Rest 3 % Wake Time' /
   B4WR3WB   'Rest 3 # Wake Bouts' /
   B4WR3AWB  'Rest 3 Avg Wake Bouts' /
   B4WR3SLT  'Rest 3 Sleep Time' /
   B4WR3PSL  'Rest 3 % Sleep Time' /
   B4WR3SLB  'Rest 3 # Sleep Bouts' /
   B4WR3ASB  'Rest 3 Avg Sleep Bouts' /
   B4WS3SDY  'Sleep 3 Start Day' /
   B4WS3ST   'Sleep 3 Start Time' /
   B4WS3EDY  'Sleep 3 End Day' /
   B4WS3ET   'Sleep 3 End Time' /
   B4WS3TAC  'Sleep 3 Total Activity Counts' /
   B4WS3ACM  'Sleep 3 Avg Activity Counts/min' /
   B4WS3MAC  'Sleep 3 Max Activity Counts' /
   B4WS3IAC  'Sleep 3 % Invalid Activity Counts' /
   B4WS3ISW  'Sleep 3 % Invalid Sleep/Wake Time' /
   B4WS3OL   'Sleep 3 Sleep Onset Latency' /
   B4WS3SNT  'Sleep 3 Time Dozing Before Rising' /
   B4WS3EFF  'Sleep 3 Sleep Efficiency' /
   B4WS3WSO  'Sleep 3 Wake After Sleep Onset' /
   B4WS3WT   'Sleep 3 Wake Time' /
   B4WS3PW   'Sleep 3 % Wake Time' /
   B4WS3WB   'Sleep 3 # Wake Bouts' /
   B4WS3AWB  'Sleep 3 Avg Wake Bouts' /
   B4WS3SLT  'Sleep 3 Sleep Time' /
   B4WS3PSL  'Sleep 3 % Sleep Time' /
   B4WS3SLB  'Sleep 3 # Sleep Bouts' /
   B4WS3ASB  'Sleep 3 Avg Sleep Bouts' /
   B4WA3SDY  'Active 3 Start Day' /
   B4WA3ST   'Active 3 Start Time' /
   B4WA3EDY  'Active 3 End Day' /
   B4WA3ET   'Active 3 End Time' /
   B4WA3TAC  'Active 3 Total Activity Counts' /
   B4WA3ACM  'Active 3 Avg Activity Counts/min' /
   B4WA3MAC  'Active 3 Max Activity Counts' /
   B4WA3IAC  'Active 3 % Invalid Activity Counts' /
   B4WA3ISW  'Active 3 % Invalid Sleep/Wake Time' /
   B4WA3WT   'Active 3 Wake Time' /
   B4WA3PW   'Active 3 % Wake Time' /
   B4WA3WB   'Active 3 # Wake Bouts' /
   B4WA3AWB  'Active 3 Avg Wake Bouts' /
   B4WA3SLT  'Active 3 Sleep Time' /
   B4WA3PSL  'Active 3 % Sleep Time' /
   B4WA3SLB  'Active 3 # Sleep Bouts' /
   B4WA3ASB  'Active 3 Avg Sleep Bouts' /
   B4WR4SDY  'Rest 4 Start Day' /
   B4WR4ST   'Rest 4 Start Time' /
   B4WR4EDY  'Rest 4 End Day' /
   B4WR4ET   'Rest 4 End Time' /
   B4WR4TAC  'Rest 4 Total Activity Counts' /
   B4WR4ACM  'Rest 4 Avg Activity Counts/min' /
   B4WR4MAC  'Rest 4 Max Activity Counts' /
   B4WR4IAC  'Rest 4 % Invalid Activity Counts' /
   B4WR4SW   'Rest 4 % Invalid Sleep/Wake Time' /
   B4WR4WT   'Rest 4 Wake Time' /
   B4WR4PW   'Rest 4 % Wake Time' /
   B4WR4WB   'Rest 4 # Wake Bouts' /
   B4WR4AWB  'Rest 4 Avg Wake Bouts' /
   B4WR4SLT  'Rest 4 Sleep Time' /
   B4WR4PSL  'Rest 4 % Sleep Time' /
   B4WR4SLB  'Rest 4 # Sleep Bouts' /
   B4WR4ASB  'Rest 4 Avg Sleep Bouts' /
   B4WS4SDY  'Sleep 4 Start Day' /
   B4WS4ST   'Sleep 4 Start Time' /
   B4WS4EDY  'Sleep 4 End Day' /
   B4WS4ET   'Sleep 4 End Time' /
   B4WS4TAC  'Sleep 4 Total Activity Counts' /
   B4WS4ACM  'Sleep 4 Avg Activity Counts/min' /
   B4WS4MAC  'Sleep 4 Max Activity Counts' /
   B4WS4IAC  'Sleep 4 % Invalid Activity Counts' /
   B4WS4ISW  'Sleep 4 % Invalid Sleep/Wake Time' /
   B4WS4OL   'Sleep 4 Sleep Onset Latency' /
   B4WS4SNT  'Sleep 4 Time Dozing Before Rising' /
   B4WS4EFF  'Sleep 4 Sleep Efficiency' /
   B4WS4WSO  'Sleep 4 Wake After Sleep Onset' /
   B4WS4WT   'Sleep 4 Wake Time' /
   B4WS4PW   'Sleep 4 % Wake Time' /
   B4WS4WB   'Sleep 4 # Wake Bouts' /
   B4WS4AWB  'Sleep 4 Avg Wake Bouts' /
   B4WS4SLT  'Sleep 4 Sleep Time' /
   B4WS4PSL  'Sleep 4 % Sleep Time' /
   B4WS4SLB  'Sleep 4 # Sleep Bouts' /
   B4WS4ASB  'Sleep 4 Avg Sleep Bouts' /
   B4WA4SDY  'Active 4 Start Day' /
   B4WA4ST   'Active 4 Start Time' /
   B4WA4EDY  'Active 4 End Day' /
   B4WA4ET   'Active 4 End Time' /
   B4WA4TAC  'Active 4 Total Activity Counts' /
   B4WA4ACM  'Active 4 Avg Activity Counts/min' /
   B4WA4MAC  'Active 4 Max Activity Counts' /
   B4WA4IAC  'Active 4 % Invalid Activity Counts' /
   B4WA4ISW  'Active 4 % Invalid Sleep/Wake Time' /
   B4WA4WT   'Active 4 Wake Time' /
   B4WA4PW   'Active 4 % Wake Time' /
   B4WA4WB   'Active 4 # Wake Bouts' /
   B4WA4AWB  'Active 4 Avg Wake Bouts' /
   B4WA4SLT  'Active 4 Sleep Time' /
   B4WA4PSL  'Active 4 % Sleep Time' /
   B4WA4SLB  'Active 4 # Sleep Bouts' /
   B4WA4ASB  'Active 4 Avg Sleep Bouts' /
   B4WR5SDY  'Rest 5 Start Day' /
   B4WR5ST   'Rest 5 Start Time' /
   B4WR5EDY  'Rest 5 End Day' /
   B4WR5ET   'Rest 5 End Time' /
   B4WR5TAC  'Rest 5 Total Activity Counts' /
   B4WR5ACM  'Rest 5 Avg Activity Counts/min' /
   B4WR5MAC  'Rest 5 Max Activity Counts' /
   B4WR5IAC  'Rest 5 % Invalid Activity Counts' /
   B4WR5SW   'Rest 5 % Invalid Sleep/Wake Time' /
   B4WR5WT   'Rest 5 Wake Time' /
   B4WR5PW   'Rest 5 % Wake Time' /
   B4WR5WB   'Rest 5 # Wake Bouts' /
   B4WR5AWB  'Rest 5 Avg Wake Bouts' /
   B4WR5SLT  'Rest 5 Sleep Time' /
   B4WR5PSL  'Rest 5 % Sleep Time' /
   B4WR5SLB  'Rest 5 # Sleep Bouts' /
   B4WR5ASB  'Rest 5 Avg Sleep Bouts' /
   B4WS5SDY  'Sleep 5 Start Day' /
   B4WS5ST   'Sleep 5 Start Time' /
   B4WS5EDY  'Sleep 5 End Day' /
   B4WS5ET   'Sleep 5 End Time' /
   B4WS5TAC  'Sleep 5 Total Activity Counts' /
   B4WS5ACM  'Sleep 5 Avg Activity Counts/min' /
   B4WS5MAC  'Sleep 5 Max Activity Counts' /
   B4WS5IAC  'Sleep 5 % Invalid Activity Counts' /
   B4WS5ISW  'Sleep 5 % Invalid Sleep/Wake Time' /
   B4WS5OL   'Sleep 5 Sleep Onset Latency' /
   B4WS5SNT  'Sleep 5 Time Dozing Before Rising' /
   B4WS5EFF  'Sleep 5 Sleep Efficiency' /
   B4WS5WSO  'Sleep 5 Wake After Sleep Onset' /
   B4WS5WT   'Sleep 5 Wake Time' /
   B4WS5PW   'Sleep 5 % Wake Time' /
   B4WS5WB   'Sleep 5 # Wake Bouts' /
   B4WS5AWB  'Sleep 5 Avg Wake Bouts' /
   B4WS5SLT  'Sleep 5 Sleep Time' /
   B4WS5PSL  'Sleep 5 % Sleep Time' /
   B4WS5SLB  'Sleep 5 # Sleep Bouts' /
   B4WS5ASB  'Sleep 5 Avg Sleep Bouts' /
   B4WA5SDY  'Active 5 Start Day' /
   B4WA5ST   'Active 5 Start Time' /
   B4WA5EDY  'Active 5 End Day' /
   B4WA5ET   'Active 5 End Time' /
   B4WA5TAC  'Active 5 Total Activity Counts' /
   B4WA5ACM  'Active 5 Avg Activity Counts/min' /
   B4WA5MAC  'Active 5 Max Activity Counts' /
   B4WA5IAC  'Active 5 % Invalid Activity Counts' /
   B4WA5ISW  'Active 5 % Invalid Sleep/Wake Time' /
   B4WA5WT   'Active 5 Wake Time' /
   B4WA5PW   'Active 5 % Wake Time' /
   B4WA5WB   'Active 5 # Wake Bouts' /
   B4WA5AWB  'Active 5 Avg Wake Bouts' /
   B4WA5SLT  'Active 5 Sleep Time' /
   B4WA5PSL  'Active 5 % Sleep Time' /
   B4WA5SLB  'Active 5 # Sleep Bouts' /
   B4WA5ASB  'Active 5 Avg Sleep Bouts' /
   B4WR6SDY  'Rest 6 Start Day' /
   B4WR6ST   'Rest 6 Start Time' /
   B4WR6EDY  'Rest 6 End Day' /
   B4WR6ET   'Rest 6 End Time' /
   B4WR6TAC  'Rest 6 Total Activity Counts' /
   B4WR6ACM  'Rest 6 Avg Activity Counts/min' /
   B4WR6MAC  'Rest 6 Max Activity Counts' /
   B4WR6IAC  'Rest 6 % Invalid Activity Counts' /
   B4WR6SW   'Rest 6 % Invalid Sleep/Wake Time' /
   B4WR6WT   'Rest 6 Wake Time' /
   B4WR6PW   'Rest 6 % Wake Time' /
   B4WR6WB   'Rest 6 # Wake Bouts' /
   B4WR6AWB  'Rest 6 Avg Wake Bouts' /
   B4WR6SLT  'Rest 6 Sleep Time' /
   B4WR6PSL  'Rest 6 % Sleep Time' /
   B4WR6SLB  'Rest 6 # Sleep Bouts' /
   B4WR6ASB  'Rest 6 Avg Sleep Bouts' /
   B4WS6SDY  'Sleep 6 Start Day' /
   B4WS6ST   'Sleep 6 Start Time' /
   B4WS6EDY  'Sleep 6 End Day' /
   B4WS6ET   'Sleep 6 End Time' /
   B4WS6TAC  'Sleep 6 Total Activity Counts' /
   B4WS6ACM  'Sleep 6 Avg Activity Counts/min' /
   B4WS6MAC  'Sleep 6 Max Activity Counts' /
   B4WS6IAC  'Sleep 6 % Invalid Activity Counts' /
   B4WS6ISW  'Sleep 6 % Invalid Sleep/Wake Time' /
   B4WS6OL   'Sleep 6 Sleep Onset Latency' /
   B4WS6SNT  'Sleep 6 Time Dozing Before Rising' /
   B4WS6EFF  'Sleep 6 Sleep Efficiency' /
   B4WS6WSO  'Sleep 6 Wake After Sleep Onset' /
   B4WS6WT   'Sleep 6 Wake Time' /
   B4WS6PW   'Sleep 6 % Wake Time' /
   B4WS6WB   'Sleep 6 # Wake Bouts' /
   B4WS6AWB  'Sleep 6 Avg Wake Bouts' /
   B4WS6SLT  'Sleep 6 Sleep Time' /
   B4WS6PSL  'Sleep 6 % Sleep Time' /
   B4WS6SLB  'Sleep 6 # Sleep Bouts' /
   B4WS6ASB  'Sleep 6 Avg Sleep Bouts' /
   B4WA6SDY  'Active 6 Start Day' /
   B4WA6ST   'Active 6 Start Time' /
   B4WA6EDY  'Active 6 End Day' /
   B4WA6ET   'Active 6 End Time' /
   B4WA6TAC  'Active 6 Total Activity Counts' /
   B4WA6ACM  'Active 6 Avg Activity Counts/min' /
   B4WA6MAC  'Active 6 Max Activity Counts' /
   B4WA6IAC  'Active 6 % Invalid Activity Counts' /
   B4WA6ISW  'Active 6 % Invalid Sleep/Wake Time' /
   B4WA6WT   'Active 6 Wake Time' /
   B4WA6PW   'Active 6 % Wake Time' /
   B4WA6WB   'Active 6 # Wake Bouts' /
   B4WA6AWB  'Active 6 Avg Wake Bouts' /
   B4WA6SLT  'Active 6 Sleep Time' /
   B4WA6PSL  'Active 6 % Sleep Time' /
   B4WA6SLB  'Active 6 # Sleep Bouts' /
   B4WA6ASB  'Active 6 Avg Sleep Bouts' /
   B4WR7SDY  'Rest 7 Start Day' /
   B4WR7ST   'Rest 7 Start Time' /
   B4WR7EDY  'Rest 7 End Day' /
   B4WR7ET   'Rest 7 End Time' /
   B4WR7TAC  'Rest 7 Total Activity Counts' /
   B4WR7ACM  'Rest 7 Avg Activity Counts/min' /
   B4WR7MAC  'Rest 7 Max Activity Counts' /
   B4WR7IAC  'Rest 7 % Invalid Activity Counts' /
   B4WR7SW   'Rest 7 % Invalid Sleep/Wake Time' /
   B4WR7WT   'Rest 7 Wake Time' /
   B4WR7PW   'Rest 7 % Wake Time' /
   B4WR7WB   'Rest 7 # Wake Bouts' /
   B4WR7AWB  'Rest 7 Avg Wake Bouts' /
   B4WR7SLT  'Rest 7 Sleep Time' /
   B4WR7PSL  'Rest 7 % Sleep Time' /
   B4WR7SLB  'Rest 7 # Sleep Bouts' /
   B4WR7ASB  'Rest 7 Avg Sleep Bouts' /
   B4WS7SDY  'Sleep 7 Start Day' /
   B4WS7ST   'Sleep 7 Start Time' /
   B4WS7EDY  'Sleep 7 End Day' /
   B4WS7ET   'Sleep 7 End Time' /
   B4WS7TAC  'Sleep 7 Total Activity Counts' /
   B4WS7ACM  'Sleep 7 Avg Activity Counts/min' /
   B4WS7MAC  'Sleep 7 Max Activity Counts' /
   B4WS7IAC  'Sleep 7 % Invalid Activity Counts' /
   B4WS7ISW  'Sleep 7 % Invalid Sleep/Wake Time' /
   B4WS7OL   'Sleep 7 Sleep Onset Latency' /
   B4WS7SNT  'Sleep 7 Time Dozing Before Rising' /
   B4WS7EFF  'Sleep 7 Sleep Efficiency' /
   B4WS7WSO  'Sleep 7 Wake After Sleep Onset' /
   B4WS7WT   'Sleep 7 Wake Time' /
   B4WS7PW   'Sleep 7 % Wake Time' /
   B4WS7WB   'Sleep 7 # Wake Bouts' /
   B4WS7AWB  'Sleep 7 Avg Wake Bouts' /
   B4WS7SLT  'Sleep 7 Sleep Time' /
   B4WS7PSL  'Sleep 7 % Sleep Time' /
   B4WS7SLB  'Sleep 7 # Sleep Bouts' /
   B4WS7ASB  'Sleep 7 Avg Sleep Bouts' /
   B4VHAWR   'WRITING' /
   B4VHADW   'DRAWING' /
   B4VHATH   'THROWING' /
   B4VHASC   'SCISSORS' /
   B4VHATO   'TOOTHBRUSH' /
   B4VHAKN   'KNIFE' /
   B4VHASP   'SPOON' /
   B4VHABR   'BROOM' /
   B4VHASM   'STRIKE MATCH, HAND HOLDING MATCH' /
   B4VHAOB   'OPEN BOX, HAND HOLDING LID' /
   B4VHAKI   'KICKING' /
   B4VHAOE   'EYE WHEN USING ONLY ONE EYE' /
   B4VHALT   'LEFT-HANDED TOTAL' /
   B4VHART   'RIGHT-HANDED TOTAL' /
   B4VHALQ   'LATERALITY QUOTIENT' /
   B4VHADZ   'DECILE ZERO, LEFT & RIGHT HANDS EQUAL' /
   B4VHADR   'DECILE RIGHT PER OLDFIELD 1971' /
   B4VHADL   'DECILE LEFT PER OLDFIELD 1971' /
   B4VST     'Psychophys session start time' /
   B4VATEH   'Number of hours since last ate to session start time' /
   B4VCAFH   'Number of hours since last caffeinated beverage to session start time' /
   B4VCIGH   'Number of hours since last cigaratte to session start time' /
   B4VCLB    'Is R color blind?' /
   B4VCLBT   'Colorblindness Type' /
   B4VCIRC   'Have Raynauds or Circulation Problem?' /
   B4VLC     'ECG leads configuration' /
   B4VS1T    'Saliva#1 time, baseline' /
   B4VSRB1   'Stress rating, baseline' /
   B4VTASK1  'Cognitive stressor task #1' /
   B4VCS1    'Cognitive stressor #1' /
   B4VSRCS1  'Stress rating, cognitive stressor #1' /
   B4VSRR1   'Stress rating, recovery #1' /
   B4VTASK2  'Cognitive stressor task #2' /
   B4VCS2    'Cognitive stressor #2' /
   B4VSRCS2  'Stress rating, cognitive stressor #2' /
   B4VSRR2   'Stress rating, recovery #2' /
   B4VS2T    'Saliva#2 time,after cog stressors' /
   B4VSRU1   'Stress rating, stand/upright stressor' /
   B4VS3T    'Saliva#3 time,post-upright stress' /
   B4VS4T    'Saliva#4 time,30min post-protocol' /
   B4VSTS1   'Lag mins: Start to Saliva 1' /
   B4VS1S2   'Lag mins: Saliva 1 to Saliva 2' /
   B4VS2S3   'Lag mins: Saliva 2 to Saliva 3' /
   B4VS3S4   'Lag mins: Saliva 3 to Saliva 4' /
   B4ZPPHYS  'P4 Psychophys completed' /
   B4ZPHYSD  'Psychophys data completeness' /
   B4VTERM   'Psych-Phys Session Termination Status' /
   B4VPACEM  'RESP HAS PACEMAKER' /
   B4VPPSS   'PSYCHOPHYS SESSION STATUS' /
   B4VPPSR   'PSYCHOPHYS SESSION STATUS REASON' /
   B4VBEQ    'BASELINE ECG DATA QUALITY' /
   B4VBEQR   'BASELINE ECG DATA QUAL REASON' /
   B4VMEQ    'MATH TASK ECG DATA QUALITY' /
   B4VMEQR   'MATH TASK ECG DATA QUAL REASON' /
   B4VPEQ    'PASAT MATH ECG DATA QUALITY' /
   B4VPEQR   'PASAT MATH ECG DATA QUAL REASON' /
   B4VSEQ    'STROOP TASK ECG DATA QUALITY' /
   B4VSEQR   'STROOP TASK ECG DATA QUAL REASON' /
   B4VR1EQ   'RECOVERY 1 ECG DATA QUALITY' /
   B4VR1EQR  'RECOVERY 1 ECG DATA QUAL REASON' /
   B4VR2EQ   'RECOVERY 2 ECG DATA QUALITY' /
   B4VR2EQR  'RECOVERY 2 ECG DATA QUAL REASON' /
   B4VUEQ    'STANDUP TASK ECG DATA QUALITY' /
   B4VUEQR   'STANDUP TASK ECG DATA QUAL REASON' /
   B4VB1DU   'Baseline Epoch1 duration, sec' /
   B4VB1BEG  'B1 start time, elapsed sec' /
   B4VB1END  'B1 end time, elapsed sec' /
   B4VB1MAX  'B1 total recorded time, sec' /
   B4VB1NU   'B1 # R-R intervals used' /
   B4VB1HR   'B1 Heart rate, beats per minute' /
   B4VB1SD   'B1 SDRR, std dev of R-R, msec' /
   B4VB1LSD  'B1 natural log of SDRR' /
   B4VB1RM   'B1 RMSSD, root mean squared successive differences' /
   B4VB1LRM  'B1 natural log of RMSSD' /
   B4VB1LF   'B1 LF-HRV, low freq HR variability, 0.04-0.15 Hz' /
   B4VB1LLF  'B1 natural log of LF-HRV' /
   B4VB1HF   'B1 HF-HRV, high freq HR variability, 0.15-0.50 Hz' /
   B4VB1LHF  'B1 natural log of HF-HRV' /
   B4VB2DU   'Baseline Epoch2 duration, sec' /
   B4VB2BEG  'B2 start time, elapsed sec' /
   B4VB2END  'B2 end time, elapsed sec' /
   B4VB2MAX  'B2 total recorded time, sec' /
   B4VB2NU   'B2 # R-R intervals used' /
   B4VB2HR   'B2 Heart rate, beats per minute' /
   B4VB2SD   'B2 SDRR, std dev of R-R, msec' /
   B4VB2LSD  'B2 natural log of SDRR' /
   B4VB2RM   'B2 RMSSD, root mean squared successive differences' /
   B4VB2LRM  'B2 natural log of RMSSD' /
   B4VB2LF   'B2 LF-HRV, low freq HR variability, 0.04-0.15 Hz' /
   B4VB2LLF  'B2 natural log of LF-HRV' /
   B4VB2HF   'B2 HF-HRV, high freq HR variability, 0.15-0.50 Hz' /
   B4VB2LHF  'B2 natural log of HF-HRV' /
   B4VM1DU   'MATH Epoch1 duration, sec' /
   B4VM1BEG  'M1 start time, elapsed sec' /
   B4VM1END  'M1 end time, elapsed sec' /
   B4VM1MAX  'M1 total recorded time, sec' /
   B4VM1NU   'M1 # R-R intervals used' /
   B4VM1HR   'M1 Heart rate, beats per minute' /
   B4VM1SD   'M1 SDRR, std dev of R-R, msec' /
   B4VM1LSD  'M1 natural log of SDRR' /
   B4VM1RM   'M1 RMSSD, root mean squared successive differences' /
   B4VM1LRM  'M1 natural log of RMSSD' /
   B4VM1LF   'M1 LF-HRV, low freq HR variability, 0.04-0.15 Hz' /
   B4VM1LLF  'M1 natural log of LF-HRV' /
   B4VM1HF   'M1 HF-HRV, high freq HR variability, 0.15-0.50 Hz' /
   B4VM1LHF  'M1 natural log of HF-HRV' /
   B4VP1DU   'PASAT Epoch1 duration, sec' /
   B4VP1BEG  'P1 start time, elapsed sec' /
   B4VP1END  'P1 end time, elapsed sec' /
   B4VP1MAX  'P1 total recorded time, sec' /
   B4VP1NU   'P1 # R-R intervals used' /
   B4VP1HR   'P1 Heart rate, beats per minute' /
   B4VP1SD   'P1 SDRR, std dev of R-R, msec' /
   B4VP1LSD  'P1 natural log of SDRR' /
   B4VP1RM   'P1 RMSSD, root mean squared successive differences' /
   B4VP1LRM  'P1 natural log of RMSSD' /
   B4VP1LF   'P1 LF-HRV, low freq HR variability, 0.04-0.15 Hz' /
   B4VP1LLF  'P1 natural log of LF-HRV' /
   B4VP1HF   'P1 HF-HRV, high freq HR variability, 0.15-0.50 Hz' /
   B4VP1LHF  'P1 natural log of HF-HRV' /
   B4VP2DU   'PASAT Epoch2 duration, sec' /
   B4VP2BEG  'P2 start time, elapsed sec' /
   B4VP2END  'P2 end time, elapsed sec' /
   B4VP2MAX  'P2 total recorded time, sec' /
   B4VP2NU   'P2 # R-R intervals used' /
   B4VP2HR   'P2 Heart rate, beats per minute' /
   B4VP2SD   'P2 SDRR, std dev of R-R, msec' /
   B4VP2LSD  'P2 natural log of SDRR' /
   B4VP2RM   'P2 RMSSD, root mean squared successive differences' /
   B4VP2LRM  'P2 natural log of RMSSD' /
   B4VP2LF   'P2 LF-HRV, low freq HR variability, 0.04-0.15 Hz' /
   B4VP2LLF  'P2 natural log of LF-HRV' /
   B4VP2HF   'P2 HF-HRV, high freq HR variability, 0.15-0.50 Hz' /
   B4VP2LHF  'P2 natural log of HF-HRV' /
   B4VR1DU   '1st Recovery period, Epoch1 duration, sec' /
   B4VR1BEG  'R1 start time, elapsed sec' /
   B4VR1END  'R1 end time, elapsed sec' /
   B4VR1MAX  'R1 total recorded time, sec' /
   B4VR1NU   'R1 # R-R intervals used' /
   B4VR1HR   'R1 Heart rate, beats per minute' /
   B4VR1SD   'R1 SDRR, std dev of R-R, msec' /
   B4VR1LSD  'R1 natural log of SDRR' /
   B4VR1RM   'R1 RMSSD, root mean squared successive differences' /
   B4VR1LRM  'R1 natural log of RMSSD' /
   B4VR1LF   'R1 LF-HRV, low freq HR variability, 0.04-0.15 Hz' /
   B4VR1LLF  'R1 natural log of LF-HRV' /
   B4VR1HF   'R1 HF-HRV, high freq HR variability, 0.15-0.50 Hz' /
   B4VR1LHF  'R1 natural log of HF-HRV' /
   B4VR2DU   '2nd Recovery period Epoch1 duration, sec' /
   B4VR2BEG  'R2 start time, elapsed sec' /
   B4VR2END  'R2 end time, elapsed sec' /
   B4VR2MAX  'R2 total recorded time, sec' /
   B4VR2NU   'R2 # R-R intervals used' /
   B4VR2HR   'R2 Heart rate, beats per minute' /
   B4VR2SD   'R2 SDRR, std dev of R-R, msec' /
   B4VR2LSD  'R2 natural log of SDRR' /
   B4VR2RM   'R2 RMSSD, root mean squared successive differences' /
   B4VR2LRM  'R2 natural log of RMSSD' /
   B4VR2LF   'R2 LF-HRV, low freq HR variability, 0.04-0.15 Hz' /
   B4VR2LLF  'R2 natural log of LF-HRV' /
   B4VR2HF   'R2 HF-HRV, high freq HR variability, 0.15-0.50 Hz' /
   B4VR2LHF  'R2 natural log of HF-HRV' /
   B4VS1DU   'Stroop Epoch1 duration, sec' /
   B4VS1BEG  'S1 start time, elapsed sec' /
   B4VS1END  'S1 end time, elapsed sec' /
   B4VS1MAX  'S1 total recorded time, sec' /
   B4VS1NU   'S1 # R-R intervals used' /
   B4VS1HR   'S1 Heart rate, beats per minute' /
   B4VS1SD   'S1 SDRR, std dev of R-R, msec' /
   B4VS1LSD  'S1 natural log of SDRR' /
   B4VS1RM   'S1 RMSSD, root mean squared successive differences' /
   B4VS1LRM  'S1 natural log of RMSSD' /
   B4VS1LF   'S1 LF-HRV, low freq HR variability, 0.04-0.15 Hz' /
   B4VS1LLF  'S1 natural log of LF-HRV' /
   B4VS1HF   'S1 HF-HRV, high freq HR variability, 0.15-0.50 Hz' /
   B4VS1LHF  'S1 natural log of HF-HRV' /
   B4VS2DU   'Stroop Epoch2 duration, sec' /
   B4VS2BEG  'S2 start time, elapsed sec' /
   B4VS2END  'S2 end time, elapsed sec' /
   B4VS2MAX  'S2 total recorded time, sec' /
   B4VS2NU   'S2 # R-R intervals used' /
   B4VS2HR   'S2 Heart rate, beats per minute' /
   B4VS2SD   'S2 SDRR, std dev of R-R, msec' /
   B4VS2LSD  'S2 natural log of SDRR' /
   B4VS2RM   'S2 RMSSD, root mean squared successive differences' /
   B4VS2LRM  'S2 natural log of RMSSD' /
   B4VS2LF   'S2 LF-HRV, low freq HR variability, 0.04-0.15 Hz' /
   B4VS2LLF  'S2 natural log of LF-HRV' /
   B4VS2HF   'S2 HF-HRV, high freq HR variability, 0.15-0.50 Hz' /
   B4VS2LHF  'S2 natural log of HF-HRV' /
   B4VU1DU   'U1 Epoch duration in seconds' /
   B4VU1BEG  'U1 start time, elapsed sec' /
   B4VU1END  'U1 end time, elapsed sec' /
   B4VU1MAX  'U1 total recorded time, sec' /
   B4VU1NU   'U1 # R-R intervals used' /
   B4VU1HR   'U1 HR, Avg heart rate, beats per minute' /
   B4VU1SD   'U1 SDRR, std dev of R-R, milliseconds' /
   B4VU1LSD  'U1 natural log of SDRR' /
   B4VU1RM   'U1 RMSSD, root mean square successive differences' /
   B4VU1LRM  'U1 natural log of RMSSD' /
   B4VU1LF   'U1 LF-HRV, low freq HR variability, 0.04-0.15 Hz' /
   B4VU1LLF  'U1 natural log of LF-HRV' /
   B4VU1HF   'U1 HF-HRV, high freq HR variability, 0.15-0.50 Hz' /
   B4VU1LHF  'U1 natural log of HF-HRV' /
   .


* SPSS VALUE LABELS COMMAND.

VALUE LABELS
   SAMPLMAJ  1 'MAIN RDD' 2 'SIBLING' 3 'TWIN' 4 'CITY OVERSAMPLE'
             13 'MILWAUKEE' 14 'BOSTON NEW' /
   B1PAGE_M2 98 'REFUSED' 99 'INAPP (NO M2 PARTICIPATION)' /
   B1PGENDER 1 'MALE' 2 'FEMALE' /
   B4ZSITE   1 'SITE 1 - UCLA' 2 'SITE 2 - UW' 3 'SITE 3 - GEORGETOWN' /
   B4ZCOMPM  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' /
   B4ZRZONE  1 'EST-Eastern Standard Time' 2 'CST-Central Standard Time'
             3 'MST-Mountain Standard Time' 4 'PST-Pacific Standard Time' /
   B4ZSZONE  1 'EST-Eastern Standard Time' 2 'CST-Central Standard Time'
             4 'PST-Pacific Standard Time' /
   B4ZB1CLG  99 'INAPP' /
   B4Q1A     1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1B     1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1C     1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1D     1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1E     1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1F     1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1G     1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1H     1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1I     1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1J     1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1K     1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1L     1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1M     1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1N     1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1O     1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1P     1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1Q     1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1R     1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1S     1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1T     1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1U     1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1V     1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1W     1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1X     1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1Y     1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1Z     1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1AA    1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1BB    1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1CC    1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1DD    1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1EE    1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1FF    1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1GG    1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1HH    1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1II    1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1JJ    1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1KK    1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1LL    1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1MM    1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1NN    1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1OO    1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1PP    1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1QQ    1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1RR    1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1SS    1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1TT    1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1UU    1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1VV    1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1WW    1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1XX    1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1YY    1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1ZZ    1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1AAA   1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1BBB   1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1CCC   1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1DDD   1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1EEE   1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1FFF   1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1GGG   1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1HHH   1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1III   1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1JJJ   1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1KKK   1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q1LLL   1 'NOT AT ALL' 2 'A LITTLE BIT' 3 'MODERATELY' 4 'QUITE A BIT'
             5 'EXTREMELY' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4QMA_D   98 'NOT CALCULATED (Due to missing data)' /
   B4QMA_A   98 'NOT CALCULATED (Due to missing data)' /
   B4QMA_LI  98 'NOT CALCULATED (Due to missing data)' /
   B4QMA_AA  98 'NOT CALCULATED (Due to missing data)' /
   B4QMA_PA  98 'NOT CALCULATED (Due to missing data)' /
   B4Q2      0 'WORST' 1 '1' 2 '2' 3 '3' 4 '4' 5 '5' 6 '6' 7 '7' 8 '8' 9 '9'
             10 'BEST' 97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q3A     1 'RARELY OR NONE OF THE TIME' 2 'SOME OR A LITTLE OF THE TIME'
             3 'OCCASIONALLY' 4 'MOST OR ALL OF THE TIME' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q3B     1 'RARELY OR NONE OF THE TIME' 2 'SOME OR A LITTLE OF THE TIME'
             3 'OCCASIONALLY' 4 'MOST OR ALL OF THE TIME' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q3C     1 'RARELY OR NONE OF THE TIME' 2 'SOME OR A LITTLE OF THE TIME'
             3 'OCCASIONALLY' 4 'MOST OR ALL OF THE TIME' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q3D     1 'RARELY OR NONE OF THE TIME' 2 'SOME OR A LITTLE OF THE TIME'
             3 'OCCASIONALLY' 4 'MOST OR ALL OF THE TIME' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q3E     1 'RARELY OR NONE OF THE TIME' 2 'SOME OR A LITTLE OF THE TIME'
             3 'OCCASIONALLY' 4 'MOST OR ALL OF THE TIME' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q3F     1 'RARELY OR NONE OF THE TIME' 2 'SOME OR A LITTLE OF THE TIME'
             3 'OCCASIONALLY' 4 'MOST OR ALL OF THE TIME' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q3G     1 'RARELY OR NONE OF THE TIME' 2 'SOME OR A LITTLE OF THE TIME'
             3 'OCCASIONALLY' 4 'MOST OR ALL OF THE TIME' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q3H     1 'RARELY OR NONE OF THE TIME' 2 'SOME OR A LITTLE OF THE TIME'
             3 'OCCASIONALLY' 4 'MOST OR ALL OF THE TIME' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q3I     1 'RARELY OR NONE OF THE TIME' 2 'SOME OR A LITTLE OF THE TIME'
             3 'OCCASIONALLY' 4 'MOST OR ALL OF THE TIME' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q3J     1 'RARELY OR NONE OF THE TIME' 2 'SOME OR A LITTLE OF THE TIME'
             3 'OCCASIONALLY' 4 'MOST OR ALL OF THE TIME' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q3K     1 'RARELY OR NONE OF THE TIME' 2 'SOME OR A LITTLE OF THE TIME'
             3 'OCCASIONALLY' 4 'MOST OR ALL OF THE TIME' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q3L     1 'RARELY OR NONE OF THE TIME' 2 'SOME OR A LITTLE OF THE TIME'
             3 'OCCASIONALLY' 4 'MOST OR ALL OF THE TIME' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q3M     1 'RARELY OR NONE OF THE TIME' 2 'SOME OR A LITTLE OF THE TIME'
             3 'OCCASIONALLY' 4 'MOST OR ALL OF THE TIME' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q3N     1 'RARELY OR NONE OF THE TIME' 2 'SOME OR A LITTLE OF THE TIME'
             3 'OCCASIONALLY' 4 'MOST OR ALL OF THE TIME' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q3O     1 'RARELY OR NONE OF THE TIME' 2 'SOME OR A LITTLE OF THE TIME'
             3 'OCCASIONALLY' 4 'MOST OR ALL OF THE TIME' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q3P     1 'RARELY OR NONE OF THE TIME' 2 'SOME OR A LITTLE OF THE TIME'
             3 'OCCASIONALLY' 4 'MOST OR ALL OF THE TIME' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q3Q     1 'RARELY OR NONE OF THE TIME' 2 'SOME OR A LITTLE OF THE TIME'
             3 'OCCASIONALLY' 4 'MOST OR ALL OF THE TIME' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q3R     1 'RARELY OR NONE OF THE TIME' 2 'SOME OR A LITTLE OF THE TIME'
             3 'OCCASIONALLY' 4 'MOST OR ALL OF THE TIME' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q3S     1 'RARELY OR NONE OF THE TIME' 2 'SOME OR A LITTLE OF THE TIME'
             3 'OCCASIONALLY' 4 'MOST OR ALL OF THE TIME' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q3T     1 'RARELY OR NONE OF THE TIME' 2 'SOME OR A LITTLE OF THE TIME'
             3 'OCCASIONALLY' 4 'MOST OR ALL OF THE TIME' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4QCESD   98 'NOT CALCULATED (Due to missing data)' /
   B4Q4A     1 'NEVER' 2 'ALMOST NEVER' 3 'SOMETIMES' 4 'FAIRLY OFTEN'
             5 'VERY OFTEN' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q4B     1 'NEVER' 2 'ALMOST NEVER' 3 'SOMETIMES' 4 'FAIRLY OFTEN'
             5 'VERY OFTEN' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q4C     1 'NEVER' 2 'ALMOST NEVER' 3 'SOMETIMES' 4 'FAIRLY OFTEN'
             5 'VERY OFTEN' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q4D     1 'NEVER' 2 'ALMOST NEVER' 3 'SOMETIMES' 4 'FAIRLY OFTEN'
             5 'VERY OFTEN' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q4E     1 'NEVER' 2 'ALMOST NEVER' 3 'SOMETIMES' 4 'FAIRLY OFTEN'
             5 'VERY OFTEN' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q4F     1 'NEVER' 2 'ALMOST NEVER' 3 'SOMETIMES' 4 'FAIRLY OFTEN'
             5 'VERY OFTEN' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q4G     1 'NEVER' 2 'ALMOST NEVER' 3 'SOMETIMES' 4 'FAIRLY OFTEN'
             5 'VERY OFTEN' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q4H     1 'NEVER' 2 'ALMOST NEVER' 3 'SOMETIMES' 4 'FAIRLY OFTEN'
             5 'VERY OFTEN' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q4I     1 'NEVER' 2 'ALMOST NEVER' 3 'SOMETIMES' 4 'FAIRLY OFTEN'
             5 'VERY OFTEN' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q4J     1 'NEVER' 2 'ALMOST NEVER' 3 'SOMETIMES' 4 'FAIRLY OFTEN'
             5 'VERY OFTEN' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4QPS_PS  98 'NOT CALCULATED (Due to missing data)' /
   B4Q5A     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q5B     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q5C     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q5D     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q5E     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q5F     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q5G     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q5H     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q5I     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q5J     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q5K     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q5L     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q5M     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q5N     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q5O     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q5P     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q5Q     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q5R     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q5S     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q5T     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4QAE_AI  98 'NOT CALCULATED (Due to missing data)' /
   B4QAE_AO  98 'NOT CALCULATED (Due to missing data)' /
   B4QAE_AC  98 'NOT CALCULATED (Due to missing data)' /
   B4Q5U     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q5V     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4QAE_AA  8 'NOT CALCULATED (Due to missing data)' /
   B4Q6A     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q6B     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q6C     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q6D     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q6E     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q6F     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q6G     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q6H     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q6I     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q6J     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q6K     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q6L     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q6M     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q6N     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q6O     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4QTA_AG  98 'NOT CALCULATED (Due to missing data)' /
   B4QTA_AT  98 'NOT CALCULATED (Due to missing data)' /
   B4QTA_AR  98 'NOT CALCULATED (Due to missing data)' /
   B4Q7A     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q7B     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q7C     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q7D     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q7E     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q7F     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q7G     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q7H     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q7I     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q7J     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q7K     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q7L     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q7M     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q7N     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q7O     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q7P     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q7Q     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q7R     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q7S     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q7T     1 'ALMOST NEVER' 2 'SOMETIMES' 3 'OFTEN' 4 'ALMOST ALWAYS'
             7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4QTA_AX  98 'NOT CALCULATED (Due to missing data)' /
   B4Q8A     1 'NONE' 2 'MILD' 3 'MODERATE' 4 'SEVERE' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q8B     1 'NONE' 2 'MILD' 3 'MODERATE' 4 'SEVERE' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q8C     1 'NONE' 2 'MILD' 3 'MODERATE' 4 'SEVERE' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q8D     1 'NONE' 2 'MILD' 3 'MODERATE' 4 'SEVERE' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q8E     1 'NONE' 2 'MILD' 3 'MODERATE' 4 'SEVERE' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q8F     1 'NONE' 2 'MILD' 3 'MODERATE' 4 'SEVERE' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q8G     1 'NONE' 2 'MILD' 3 'MODERATE' 4 'SEVERE' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q8H     1 'NONE' 2 'MILD' 3 'MODERATE' 4 'SEVERE' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q8I     1 'NONE' 2 'MILD' 3 'MODERATE' 4 'SEVERE' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4QSA_SA  8 'NOT CALCULATED (Due to missing data)' /
   B4Q9A     1 'NEVER TRUE' 2 'RARELY TRUE' 3 'SOMETIMES TRUE' 4 'OFTEN TRUE'
             5 'VERY OFTEN TRUE' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q9B     1 'NEVER TRUE' 2 'RARELY TRUE' 3 'SOMETIMES TRUE' 4 'OFTEN TRUE'
             5 'VERY OFTEN TRUE' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q9C     1 'NEVER TRUE' 2 'RARELY TRUE' 3 'SOMETIMES TRUE' 4 'OFTEN TRUE'
             5 'VERY OFTEN TRUE' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q9D     1 'NEVER TRUE' 2 'RARELY TRUE' 3 'SOMETIMES TRUE' 4 'OFTEN TRUE'
             5 'VERY OFTEN TRUE' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q9E     1 'NEVER TRUE' 2 'RARELY TRUE' 3 'SOMETIMES TRUE' 4 'OFTEN TRUE'
             5 'VERY OFTEN TRUE' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q9F     1 'NEVER TRUE' 2 'RARELY TRUE' 3 'SOMETIMES TRUE' 4 'OFTEN TRUE'
             5 'VERY OFTEN TRUE' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q9G     1 'NEVER TRUE' 2 'RARELY TRUE' 3 'SOMETIMES TRUE' 4 'OFTEN TRUE'
             5 'VERY OFTEN TRUE' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q9H     1 'NEVER TRUE' 2 'RARELY TRUE' 3 'SOMETIMES TRUE' 4 'OFTEN TRUE'
             5 'VERY OFTEN TRUE' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q9I     1 'NEVER TRUE' 2 'RARELY TRUE' 3 'SOMETIMES TRUE' 4 'OFTEN TRUE'
             5 'VERY OFTEN TRUE' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q9J     1 'NEVER TRUE' 2 'RARELY TRUE' 3 'SOMETIMES TRUE' 4 'OFTEN TRUE'
             5 'VERY OFTEN TRUE' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q9K     1 'NEVER TRUE' 2 'RARELY TRUE' 3 'SOMETIMES TRUE' 4 'OFTEN TRUE'
             5 'VERY OFTEN TRUE' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q9L     1 'NEVER TRUE' 2 'RARELY TRUE' 3 'SOMETIMES TRUE' 4 'OFTEN TRUE'
             5 'VERY OFTEN TRUE' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q9M     1 'NEVER TRUE' 2 'RARELY TRUE' 3 'SOMETIMES TRUE' 4 'OFTEN TRUE'
             5 'VERY OFTEN TRUE' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q9N     1 'NEVER TRUE' 2 'RARELY TRUE' 3 'SOMETIMES TRUE' 4 'OFTEN TRUE'
             5 'VERY OFTEN TRUE' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q9O     1 'NEVER TRUE' 2 'RARELY TRUE' 3 'SOMETIMES TRUE' 4 'OFTEN TRUE'
             5 'VERY OFTEN TRUE' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q9P     1 'NEVER TRUE' 2 'RARELY TRUE' 3 'SOMETIMES TRUE' 4 'OFTEN TRUE'
             5 'VERY OFTEN TRUE' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q9Q     1 'NEVER TRUE' 2 'RARELY TRUE' 3 'SOMETIMES TRUE' 4 'OFTEN TRUE'
             5 'VERY OFTEN TRUE' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q9R     1 'NEVER TRUE' 2 'RARELY TRUE' 3 'SOMETIMES TRUE' 4 'OFTEN TRUE'
             5 'VERY OFTEN TRUE' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q9S     1 'NEVER TRUE' 2 'RARELY TRUE' 3 'SOMETIMES TRUE' 4 'OFTEN TRUE'
             5 'VERY OFTEN TRUE' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q9T     1 'NEVER TRUE' 2 'RARELY TRUE' 3 'SOMETIMES TRUE' 4 'OFTEN TRUE'
             5 'VERY OFTEN TRUE' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q9U     1 'NEVER TRUE' 2 'RARELY TRUE' 3 'SOMETIMES TRUE' 4 'OFTEN TRUE'
             5 'VERY OFTEN TRUE' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q9V     1 'NEVER TRUE' 2 'RARELY TRUE' 3 'SOMETIMES TRUE' 4 'OFTEN TRUE'
             5 'VERY OFTEN TRUE' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q9W     1 'NEVER TRUE' 2 'RARELY TRUE' 3 'SOMETIMES TRUE' 4 'OFTEN TRUE'
             5 'VERY OFTEN TRUE' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q9X     1 'NEVER TRUE' 2 'RARELY TRUE' 3 'SOMETIMES TRUE' 4 'OFTEN TRUE'
             5 'VERY OFTEN TRUE' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q9Y     1 'NEVER TRUE' 2 'RARELY TRUE' 3 'SOMETIMES TRUE' 4 'OFTEN TRUE'
             5 'VERY OFTEN TRUE' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q9Z     1 'NEVER TRUE' 2 'RARELY TRUE' 3 'SOMETIMES TRUE' 4 'OFTEN TRUE'
             5 'VERY OFTEN TRUE' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q9AA    1 'NEVER TRUE' 2 'RARELY TRUE' 3 'SOMETIMES TRUE' 4 'OFTEN TRUE'
             5 'VERY OFTEN TRUE' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q9BB    1 'NEVER TRUE' 2 'RARELY TRUE' 3 'SOMETIMES TRUE' 4 'OFTEN TRUE'
             5 'VERY OFTEN TRUE' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4QCT_EA  98 'NOT CALCULATED (Due to missing data)' /
   B4QCT_PA  98 'NOT CALCULATED (Due to missing data)' /
   B4QCT_SA  98 'NOT CALCULATED (Due to missing data)' /
   B4QCT_EN  98 'NOT CALCULATED (Due to missing data)' /
   B4QCT_PN  98 'NOT CALCULATED (Due to missing data)' /
   B4QCT_MD  8 'NOT CALCULATED (Due to missing data)' /
   B4Q10A1   1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10A2   1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10B1   1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10B2   1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10C1   1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10C2   1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10D1   1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10D2   1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10E1   1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10E2   1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10F1   1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10F2   1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10G1   1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10G2   1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10H1   1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10H2   1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10I1   1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10I2   1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10J1   1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10J2   1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10K1   1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10K2   1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10L1   1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10L2   1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10M1   1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10M2   1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10N1   1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10N2   1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10O1   1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10O2   1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10P1   1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10P2   1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10Q1   1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10Q2   1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10R1   1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10R2   1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10S1   1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10S2   1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10T1   1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10T2   1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10U1   1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10U2   1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10V1   1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10V2   1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10W1   1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10W2   1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10X1   1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10X2   1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10Y1   1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10Y2   1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10Z1   1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10Z2   1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10AA1  1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10AA2  1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10BB1  1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10BB2  1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10CC1  1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10CC2  1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10DD1  1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10DD2  1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10EE1  1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10EE2  1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10FF1  1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10FF2  1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10GG1  1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10GG2  1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10HH1  1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10HH2  1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10II1  1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10II2  1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10JJ1  1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10JJ2  1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10KK1  1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10KK2  1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10LL1  1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10LL2  1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10MM1  1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10MM2  1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10NN1  1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10NN2  1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10OO1  1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10OO2  1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10PP1  1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10PP2  1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10QQ1  1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10QQ2  1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10RR1  1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10RR2  1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10SS1  1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10SS2  1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10TT1  1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10TT2  1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10UU1  1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10UU2  1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10VV1  1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10VV2  1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q10WW1  1 'NEVER' 2 '1-6 TIMES' 3 '7+ TIMES' 7 'DONT KNOW' 8 'MISSING'
             9 'INAPP' /
   B4Q10WW2  1 'NEUTRAL OR UNPLEASANT' 2 'SOMEWHAT PLEASANT'
             3 'VERY PLEASANT' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q11A    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q11B    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q11C    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q11D    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q11E    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q11F    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q11G    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q11H    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q11I    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q11J    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q11K    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q11L    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q11M    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q11N    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q11O    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q11P    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q11Q    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q11R    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q11S    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q11T    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q11U    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q11V    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q11W    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q11X    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q11Y    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q11Z    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q11AA   1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q11BB   1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q11CC   1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4QSC_ID  8 'NOT CALCULATED (Due to missing data)' /
   B4QSC_IT  8 'NOT CALCULATED (Due to missing data)' /
   B4QSO_PC  8 'NOT CALCULATED (Due to missing data)' /
   B4QSO_PF  8 'NOT CALCULATED (Due to missing data)' /
   B4QSO_PX  8 'NOT CALCULATED (Due to missing data)' /
   B4QSO_IW  8 'NOT CALCULATED (Due to missing data)' /
   B4QSO_GW  8 'NOT CALCULATED (Due to missing data)' /
   B4Q12A    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q12B    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q12C    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q12D    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q12E    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q12F    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q12G    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q12H    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q12I    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q12J    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q12K    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q12L    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q12M    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q12N    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q12O    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q12P    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q12Q    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q12R    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q12S    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q12T    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q12U    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4QRISC   8 'NOT CALCULATED (Due to missing data)' /
   B4QSYMP   8 'NOT CALCULATED (Due to missing data)' /
   B4QADJ    8 'NOT CALCULATED (Due to missing data)' /
   B4Q13A    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q13B    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q13C    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q13D    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q13E    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q13F    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q13G    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q13H    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q13H1   1 '0-5' 2 '6-10' 3 '11-20' 4 '21-50' 5 '51+' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q13I    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q13J    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q13K    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q13L    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q13M    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q13N    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q13O1   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4Q13O    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q13P    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q13Q    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q13R    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q13S    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q13T    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q13U    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q13V    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q13W    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q13X    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q13Y    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q13Z    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4QSUGF   8 'NOT CALCULATED (Due to missing data)' /
   B4QSTGF   8 'NOT CALCULATED (Due to missing data)' /
   B4QSOGFD  8 'NOT CALCULATED (Due to missing data)' /
   B4QSUGFA  8 'NOT CALCULATED (Due to missing data)' /
   B4QSTGFA  8 'NOT CALCULATED (Due to missing data)' /
   B4QSOGFM  8 'NOT CALCULATED (Due to missing data)' /
   B4QSUGS   8 'NOT CALCULATED (Due to missing data)'
             9 'NOT CALCULATED (Due to INAPP data)' /
   B4QSTGS   8 'NOT CALCULATED (Due to missing data)'
             9 'NOT CALCULATED (Due to INAPP data)' /
   B4QSOLGS  8 'NOT CALCULATED (Due to missing data)'
             9 'NOT CALCULATED (Due to INAPP data)' /
   B4Q14A    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q14B    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q14C    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q14D    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q14E    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q14F    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q14G    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q14H    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q14I    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q14J    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q14K    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q14L    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q14M    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q14N    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q14O    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q14P    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q14Q    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q14R    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q14S    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4QSC_SC  8 'NOT CALCULATED (Due to missing data)' /
   B4QSC_CC  8 'NOT CALCULATED (Due to missing data)' /
   B4QSC_EC  8 'NOT CALCULATED (Due to missing data)' /
   B4QSC_BC  8 'NOT CALCULATED (Due to missing data)' /
   B4Q15A    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q15B    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q15C    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q15D    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q15E    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q15F    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q15G    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4Q15H    1 'STRONGLY DISAGREE' 2 'DISAGREE' 3 'SLIGHTLY DISAGREE'
             4 'NEUTRAL' 5 'SLIGHTLY AGREE' 6 'AGREE' 7 'STRONGLY AGREE'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4QSW_SL  8 'NOT CALCULATED (Due to missing data)' /
   B4QSW_GR  8 'NOT CALCULATED (Due to missing data)' /
   B4Q16A    1 'NOT AT ALL IMPORTANT' 2 'SOMEWHAT IMPORTANT'
             3 'VERY IMPORTANT' 4 'EXTREMELY IMPORTANT' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q16B    1 'NOT AT ALL IMPORTANT' 2 'SOMEWHAT IMPORTANT'
             3 'VERY IMPORTANT' 4 'EXTREMELY IMPORTANT' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q16C    1 'NOT AT ALL IMPORTANT' 2 'SOMEWHAT IMPORTANT'
             3 'VERY IMPORTANT' 4 'EXTREMELY IMPORTANT' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q16D    1 'NOT AT ALL IMPORTANT' 2 'SOMEWHAT IMPORTANT'
             3 'VERY IMPORTANT' 4 'EXTREMELY IMPORTANT' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q16E    1 'NOT AT ALL IMPORTANT' 2 'SOMEWHAT IMPORTANT'
             3 'VERY IMPORTANT' 4 'EXTREMELY IMPORTANT' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q16F    1 'NOT AT ALL IMPORTANT' 2 'SOMEWHAT IMPORTANT'
             3 'VERY IMPORTANT' 4 'EXTREMELY IMPORTANT' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q16G    1 'NOT AT ALL IMPORTANT' 2 'SOMEWHAT IMPORTANT'
             3 'VERY IMPORTANT' 4 'EXTREMELY IMPORTANT' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4Q16H    1 'NOT AT ALL IMPORTANT' 2 'SOMEWHAT IMPORTANT'
             3 'VERY IMPORTANT' 4 'EXTREMELY IMPORTANT' 7 'DONT KNOW'
             8 'MISSING' 9 'INAPP' /
   B4QSW_JP  8 'NOT CALCULATED (Due to missing data)' /
   B4Q17A    6 'CODING PENDING' 98 'MISSING' /
   B4S1AMPM  1 '1=AM' 2 '2=PM' 7 '7=DONT KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4S2      9997 'DONT KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4S3AMPM  1 '1=AM' 2 '2=PM' 7 '7=DONT KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4S4      9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4S5      1 '1=VERY GOOD' 2 '2=FAIRLY GOOD' 3 '3=FAIRLY BAD'
             4 '4=VERY BAD' 7 '7=DONT KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4S6      1 '1=NO PROBLEM' 2 '2=SLIGHT PROBLEM' 3 '3=SOMEWHAT'
             4 '4=VERY BIG' 7 '7=DONT KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4S7      1 '1=NOT DURING PAST MONTH' 2 '2=LESS THAN 1X WEEK'
             3 '3=1-2 X WEEK' 4 '4=3+ WEEK' 7 '7=DONT KNOW' 8 '8=MISSING'
             9 '9=INAPP' /
   B4S8      1 '1=NOT DURING PAST MONTH' 2 '2=LESS THAN 1X WEEK'
             3 '3=1-2 X WEEK' 4 '4=3+ WEEK' 7 '7=DONT KNOW' 8 '8=MISSING'
             9 '9=INAPP' /
   B4S9      1 '1=NO BED PARTNER' 2 '2=OTHER ROOM' 3 '3=SAME ROOM'
             4 '4=SAME BED' 7 '7=DONT KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4S10A    1 '1=NOT DURING PAST MONTH' 2 '2=LESS THAN 1 X WEEK'
             3 '3=1-2 X WEEK' 4 '4=3+ WEEK' 7 '7=DONT KNOW' 8 '8=MISSING'
             9 '9=INAPP' /
   B4S10B    1 '1=NOT DURING PAST MONTH' 2 '2=LESS THAN 1X WEEK'
             3 '3=1-2 X WEEK' 4 '4=3+ WEEK' 7 '7=DONT KNOW' 8 '8=MISSING'
             9 '9=INAPP' /
   B4S10C    1 '1=NOT DURING PAST MONTH' 2 '2=LESS THAN 1 X WEEK'
             3 '3=1-2 X WEEK' 4 '4=3+ WEEK' 7 '7=DONT KNOW' 8 '8=MISSING'
             9 '9=INAPP' /
   B4S10D    1 '1=NOT DURING PAST MONTH' 2 '2=LESS THAN 1 X WEEK'
             3 '3=1-2 X WEEK' 4 '4=3+ WEEK' 7 '7=DONT KNOW' 8 '8=MISSING'
             9 '9=INAPP' /
   B4S10E    1 '1=NOT DURING PAST MONTH' 2 '2=LESS THAN 1 X WEEK'
             3 '3=1-2 X WEEK' 4 '4=3+ WEEK' 7 '7=DONT KNOW' 8 '8=MISSING'
             9 '9=INAPP' /
   B4S11A    1 '1=NOT DURING PAST MONTH' 2 '2=LESS THAN 1 X WEEK'
             3 '3=1-2 X WEEK' 4 '4=3+ WEEK' 7 '7=DONT KNOW' 8 '8=MISSING'
             9 '9=INAPP' /
   B4S11B    1 '1=NOT DURING PAST MONTH' 2 '2=LESS THAN 1 X WEEK'
             3 '3=1-2 X WEEK' 4 '4=3+ WEEK' 7 '7=DONT KNOW' 8 '8=MISSING'
             9 '9=INAPP' /
   B4S11C    1 '1=NOT DURING PAST MONTH' 2 '2=LESS THAN 1 X WEEK'
             3 '3=1-2 X WEEK' 4 '4=3+ WEEK' 7 '7=DONT KNOW' 8 '8=MISSING'
             9 '9=INAPP' /
   B4S11D    1 '1=NOT DURING PAST MONTH' 2 '2=LESS THAN 1 X WEEK'
             3 '3=1-2 X WEEK' 4 '4=3+ WEEK' 7 '7=DONT KNOW' 8 '8=MISSING'
             9 '9=INAPP' /
   B4S11E    1 '1=NOT DURING PAST MONTH' 2 '2=LESS THAN 1 X WEEK'
             3 '3=1-2 X WEEK' 4 '4=3+ WEEK' 7 '7=DONT KNOW' 8 '8=MISSING'
             9 '9=INAPP' /
   B4S11F    1 '1=NOT DURING PAST MONTH' 2 '2=LESS THAN 1 X WEEK'
             3 '3=1-2 X WEEK' 4 '4=3+ WEEK' 7 '7=DONT KNOW' 8 '8=MISSING'
             9 '9=INAPP' /
   B4S11G    1 '1=NOT DURING PAST MONTH' 2 '2=LESS THAN 1 X WEEK'
             3 '3=1-2 X WEEK' 4 '4=3+ WEEK' 7 '7=DONT KNOW' 8 '8=MISSING'
             9 '9=INAPP' /
   B4S11H    1 '1=NOT DURING PAST MONTH' 2 '2=LESS THAN 1 X WEEK'
             3 '3=1-2 X WEEK' 4 '4=3+ WEEK' 7 '7=DONT KNOW' 8 '8=MISSING'
             9 '9=INAPP' /
   B4S11I    1 '1=NOT DURING PAST MONTH' 2 '2=LESS THAN 1 X WEEK'
             3 '3=1-2 X WEEK' 4 '4=3+ WEEK' 7 '7=DONT KNOW' 8 '8=MISSING'
             9 '9=INAPP' /
   B4S11J    1 '1=NOT DURING PAST MONTH' 2 '2=LESS THAN 1 X WEEK'
             3 '3=1-2 X WEEK' 4 '4=3+ WEEK' 7 '7=DONT KNOW' 8 '8=MISSING'
             9 '9=INAPP' /
   B4SSQ_GS  98 'NOT CALCULATED - Due to missing data' /
   B4SSQ_S1  8 'NOT CALCULATED - Due to missing data' /
   B4SSQ_S2  8 'NOT CALCULATED - Due to missing data' /
   B4SSQ_S3  8 'NOT CALCULATED - Due to missing data' /
   B4SSQ_S4  8 'NOT CALCULATED - Due to missing data' /
   B4SSQ_S5  8 'NOT CALCULATED - Due to missing data' /
   B4SSQ_S6  8 'NOT CALCULATED - Due to missing data' /
   B4SSQ_S7  8 'NOT CALCULATED - Due to missing data' /
   B4H1A     1 'YES' 2 'NO' 3 'BORDERLINE' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1AD    1 'YES' 2 'NO' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1B     1 'YES' 2 'NO' 3 'BORDERLINE' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1BD    1 'YES' 2 'NO' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1C     1 'YES' 2 'NO' 3 'BORDERLINE' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1CD    1 'YES' 2 'NO' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1D     1 'YES' 2 'NO' 3 'BORDERLINE' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1DD    1 'YES' 2 'NO' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1E     1 'YES' 2 'NO' 3 'BORDERLINE' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1ED    1 'YES' 2 'NO' 7 'UNSURE' 8 'MISSING' /
   B4H1F     1 'YES' 2 'NO' 3 'BORDERLINE' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1FD    1 'YES' 2 'NO' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1G     1 'YES' 2 'NO' 3 'BORDERLINE' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1GD    1 'YES' 2 'NO' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1H     1 'YES' 2 'NO' 3 'BORDERLINE' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1HD    1 'YES' 2 'NO' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1I     1 'YES' 2 'NO' 3 'BORDERLINE' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1ID    1 'YES' 2 'NO' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1J     1 'YES' 2 'NO' 3 'BORDERLINE' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1JD    1 'YES' 2 'NO' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1K     1 'YES' 2 'NO' 3 'BORDERLINE' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1KD    1 'YES' 2 'NO' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1L     1 'YES' 2 'NO' 3 'BORDERLINE' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1LD    1 'YES' 2 'NO' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1M     1 'YES' 2 'NO' 3 'BORDERLINE' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1MD    1 'YES' 2 'NO' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1N     1 'YES' 2 'NO' 3 'BORDERLINE' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1ND    1 'YES' 2 'NO' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1O     1 'YES' 2 'NO' 3 'BORDERLINE' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1OD    1 'YES' 2 'NO' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1P     1 'YES' 2 'NO' 3 'BORDERLINE' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1PD    1 'YES' 2 'NO' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1Q     1 'YES' 2 'NO' 3 'BORDERLINE' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1QD    1 'YES' 2 'NO' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1R     1 'YES' 2 'NO' 3 'BORDERLINE' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1RD    1 'YES' 2 'NO' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1S     1 'YES' 2 'NO' 3 'BORDERLINE' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1SD    1 'YES' 2 'NO' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1T     1 'YES' 2 'NO' 3 'BORDERLINE' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1TD    1 'YES' 2 'NO' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1U     1 'YES' 2 'NO' 3 'BORDERLINE' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1UD    1 'YES' 2 'NO' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1V     1 'YES' 2 'NO' 3 'BORDERLINE' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1VD    1 'YES' 2 'NO' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1W     1 'YES' 2 'NO' 3 'BORDERLINE' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1WD    1 'YES' 2 'NO' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1X     1 'YES' 2 'NO' 3 'BORDERLINE' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1XD    1 'YES' 2 'NO' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1Y     1 'YES' 2 'NO' 3 'BORDERLINE' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4H1YD    1 'YES' 2 'NO' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4HSYMN   0 'NONE' /
   B4HSYMX   1 'YES' 2 'NO' /
   B4H2      1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4H2AF    97 'DON''T KNOW' 98 'MISSING' 99 'INAPP' /
   B4H2AY    9996 'CHILDHOOD' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP'
             /
   B4H2BF    97 'DON''T KNOW' 98 'MISSING' 99 'INAPP' /
   B4H2BY    9996 'CHILDHOOD' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP'
             /
   B4H2CF    97 'DON''T KNOW' 98 'MISSING' 99 'INAPP' /
   B4H2CY    9996 'CHILDHOOD' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP'
             /
   B4H2DF    97 'DON''T KNOW' 98 'MISSING' 99 'INAPP' /
   B4H2DY    9996 'CHILDHOOD' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP'
             /
   B4H2EF    97 'DON''T KNOW' 98 'MISSING' 99 'INAPP' /
   B4H2EY    9996 'CHILDHOOD' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP'
             /
   B4H2FF    97 'DON''T KNOW' 98 'MISSING' 99 'INAPP' /
   B4H2FY    9996 'CHILDHOOD' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP'
             /
   B4H2GF    97 'DON''T KNOW' 98 'MISSING' 99 'INAPP' /
   B4H2GY    9996 'CHILDHOOD' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP'
             /
   B4H2HF    97 'DON''T KNOW' 98 'MISSING' 99 'INAPP' /
   B4H2HY    9996 'CHILDHOOD' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP'
             /
   B4H2IF    97 'DON''T KNOW' 98 'MISSING' 99 'INAPP' /
   B4H2IY    9996 'CHILDHOOD' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP'
             /
   B4H2JF    97 'DON''T KNOW' 98 'MISSING' 99 'INAPP' /
   B4H2JY    9996 'CHILDHOOD' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP'
             /
   B4H2KF    97 'DON''T KNOW' 98 'MISSING' 99 'INAPP' /
   B4H2KY    9996 'CHILDHOOD' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP'
             /
   B4H2LF    97 'DON''T KNOW' 98 'MISSING' 99 'INAPP' /
   B4H2LY    9996 'CHILDHOOD' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP'
             /
   B4H2MF    97 'DON''T KNOW' 98 'MISSING' 99 'INAPP' /
   B4H2MY    9996 'CHILDHOOD' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP'
             /
   B4H2NF    97 'DON''T KNOW' 98 'MISSING' 99 'INAPP' /
   B4H2NY    9996 'CHILDHOOD' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP'
             /
   B4HBRKB   0 'NONE' 97 'DON''T KNOW' /
   B4H3      1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4H3AL    1 'OFFICE VISIT' 2 'OUTPATIENT CLINIC' 3 'INPATIENT(OVERNIGHT)'
             7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4H3AY    9996 'CHILDHOOD' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP'
             /
   B4H3BL    1 'OFFICE VISIT' 2 'OUTPATIENT CLINIC' 3 'INPATIENT(OVERNIGHT)'
             7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4H3BY    9996 'CHILDHOOD' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP'
             /
   B4H3CL    1 'OFFICE VISIT' 2 'OUTPATIENT CLINIC' 3 'INPATIENT(OVERNIGHT)'
             7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4H3CY    9996 'CHILDHOOD' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP'
             /
   B4H3DL    1 'OFFICE VISIT' 2 'OUTPATIENT CLINIC' 3 'INPATIENT(OVERNIGHT)'
             7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4H3DY    9996 'CHILDHOOD' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP'
             /
   B4H3EL    1 'OFFICE VISIT' 2 'OUTPATIENT CLINIC' 3 'INPATIENT(OVERNIGHT)'
             7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4H3EY    9996 'CHILDHOOD' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP'
             /
   B4H3FL    1 'OFFICE VISIT' 2 'OUTPATIENT CLINIC' 3 'INPATIENT(OVERNIGHT)'
             7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4H3FY    9996 'CHILDHOOD' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP'
             /
   B4H3GL    1 'OFFICE VISIT' 2 'OUTPATIENT CLINIC' 3 'INPATIENT(OVERNIGHT)'
             7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4H3GY    9996 'CHILDHOOD' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP'
             /
   B4H3HL    1 'OFFICE VISIT' 2 'OUTPATIENT CLINIC' 3 'INPATIENT(OVERNIGHT)'
             7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4H3HY    9996 'CHILDHOOD' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP'
             /
   B4H3IL    1 'OFFICE VISIT' 2 'OUTPATIENT CLINIC' 3 'INPATIENT(OVERNIGHT)'
             7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4H3IY    9996 'CHILDHOOD' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP'
             /
   B4H3JL    1 'OFFICE VISIT' 2 'OUTPATIENT CLINIC' 3 'INPATIENT(OVERNIGHT)'
             7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4H3JY    9996 'CHILDHOOD' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP'
             /
   B4HSURG   0 'NONE' /
   B4H4      1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4H4AH    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4H4AY    9996 'CHILDHOOD' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP'
             /
   B4H4BH    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4H4BY    9996 'CHILDHOOD' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP'
             /
   B4H4CH    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4H4CY    9996 'CHILDHOOD' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP'
             /
   B4HHEAD   0 'NONE' /
   B4H5      1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4H5AH    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4H5AY    9996 'CHILDHOOD' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP'
             /
   B4H5BH    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4H5BY    9996 'CHILDHOOD' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP'
             /
   B4H5CH    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4H5CY    9996 'CHILDHOOD' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP'
             /
   B4HJNT    0 'NONE' /
   B4H6      1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4H6AH    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4H6AY    9996 'CHILDHOOD' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP'
             /
   B4H6BH    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4H6BY    9996 'CHILDHOOD' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP'
             /
   B4H6CH    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4H6CY    9996 'CHILDHOOD' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP'
             /
   B4H6DH    1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' /
   B4H6DY    9996 'CHILDHOOD' 9997 '9997=UNSURE' 9998 '9998=REFUSED' /
   B4HMVA    0 'NONE' /
   B4H7      1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4H7AH    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4H7AY    9996 'CHILDHOOD' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP'
             /
   B4H7BH    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4H7BY    9996 'CHILDHOOD' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP'
             /
   B4HAMPU   0 'NONE' /
   B4H8      1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4H8AH    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4H8AY    9996 'CHILDHOOD' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP'
             /
   B4H8BH    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4H8BY    9996 'CHILDHOOD' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP'
             /
   B4H8CH    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4H8CY    9996 'CHILDHOOD' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP'
             /
   B4H8DH    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4H8DY    9996 'CHILDHOOD' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP'
             /
   B4HOHLTH  0 'NONE' /
   B4H9      1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4H10     1 '1=ALL DIAGNOSED' 2 '2=SOME DX, SOME NOT DX'
             3 '3=NO DX, SOME NOT DX' 4 '4=NONE' 7 '7=UNSURE' 8 '8=REFUSED'
             9 '9=INAPP' /
   B4H10A    1 '1=YES' 2 '2=NO' 3 '3=UNDIAGNOSED' 7 '7=UNSURE' 8 '8=REFUSED'
             9 '9=INAPP' /
   B4H10B    1 '1=YES' 2 '2=NO' 3 '3=UNDIAGNOSED' 7 '7=UNSURE' 8 '8=REFUSED'
             9 '9=INAPP' /
   B4H10C    1 '1=YES' 2 '2=NO' 3 '3=UNDIAGNOSED' 7 '7=UNSURE' 8 '8=REFUSED'
             9 '9=INAPP' /
   B4H10D    1 '1=YES' 2 '2=NO' 3 '3=UNDIAGNOSED' 7 '7=UNSURE' 8 '8=REFUSED'
             9 '9=INAPP' /
   B4H10E    1 '1=YES' 2 '2=NO' 3 '3=UNDIAGNOSED' 7 '7=UNSURE' 8 '8=REFUSED'
             9 '9=INAPP' /
   B4H10F    1 '1=YES' 2 '2=NO' 3 '3=UNDIAGNOSED' 7 '7=UNSURE' 8 '8=REFUSED'
             9 '9=INAPP' /
   B4H11A    1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H11AI   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H11AA   996 'CHILDHOOD' 997 'UNSURE' 998 'MISSING' 999 'INAPP' /
   B4H11B    1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H11BI   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H11BA   996 'CHILDHOOD' 997 'UNSURE' 998 'MISSING' 999 'INAPP' /
   B4H11C    1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H11CI   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H11CA   996 'CHILDHOOD' 997 'UNSURE' 998 'MISSING' 999 'INAPP' /
   B4H11D    1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H11DI   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H11DA   996 'CHILDHOOD' 997 'UNSURE' 998 'MISSING' 999 'INAPP' /
   B4H11E    1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H12A    1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H12AM   1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'UNSURE' 98 'MISSING' 99 'INAPP' /
   B4H12AY   9997 '9997=UNSURE' 9998 '9998=REFUSED' 9999 '9999=INAPP' /
   B4H12B    1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H12BM   1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'UNSURE' 98 'MISSING' 99 'INAPP' /
   B4H12BY   9997 '9997=UNSURE' 9998 '9998=REFUSED' 9999 '9999=INAPP' /
   B4H12C    1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H12CM   1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'UNSURE' 98 'MISSING' 99 'INAPP' /
   B4H12CY   9997 '9997=UNSURE' 9998 '9998=REFUSED' 9999 '9999=INAPP' /
   B4H13     1 '1=EVERY YEAR' 2 '2=ALMOST EVERY YEAR'
             3 '3=EVERY COUPLE YEARS' 4 '4=RARELY' 5 'ONLY ONCE (REACTION)'
             6 '6=NEVER ALLERGIC' 7 '7=NEVER' 8 '8=OTHER'
             9 '9=ONLY ONCE, NO REACTION' 97 '97=UNSURE' 98 '98=REFUSED'
             99 '99=INAPP' /
   B4H14     1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H14A    1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15A    1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15A1   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15A2   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15A3   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15A4   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15A5   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15A6   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15A7   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15B    1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15B1   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15B2   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15B3   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15B4   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15B5   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15B6   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15B7   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15C    1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15C1   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15C2   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15C3   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15C4   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15C5   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15C6   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15C7   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15D    1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15D1   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15D2   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15D3   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15D4   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15D5   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15D6   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15D7   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15E    1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15E1   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15E2   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15E3   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15E4   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15E5   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15E6   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15E7   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15F    1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15F1   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15F2   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15F3   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15F4   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15F5   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15F6   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15F7   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15G    1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15G1   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15G2   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15G3   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15G4   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15G5   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15G6   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15G7   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15H    1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15H1   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15H2   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15H3   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15H4   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15H5   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15H6   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15H7   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15I    1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15I1   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15I2   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15I3   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15I4   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15I5   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15I6   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15I7   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15J    1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15J1   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15J2   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15J3   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15J4   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15J5   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15J6   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15J7   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15K    1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15K1   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15K2   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15K3   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15K4   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15K5   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15K6   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15K7   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15L    1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15L1   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15L2   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15L3   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15L4   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15L5   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15L6   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15L7   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15M    1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15M1   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15M2   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15M3   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15M4   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15M5   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15M6   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15M7   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15N    1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15N1   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15N2   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15N3   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15N4   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15N5   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15N6   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15N7   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15O    1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15O1   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15O2   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15O3   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15O4   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15O5   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15O6   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15O7   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15P    1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15P1   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15P2   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15P3   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15P4   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15P5   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15P6   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15P7   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15Q    1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15Q1   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15Q2   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15Q3   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15Q4   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15Q5   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15Q6   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15Q7   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15R    1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15R1   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15R2   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15R3   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15R4   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15R5   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15R6   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15R7   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15S    1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15S1   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15S2   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15S3   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15S4   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15S5   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15S6   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15S7   1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H15OTH  97 'UNSURE' 98 'REFUSED' 99 'INAPP' /
   B4HFMHN   0 'NONE' /
   B4HFMHX   1 'YES' 2 'NO' 9 'INAPP' /
   B4H16     1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H17AF   9997 'UNSURE' 9998 'REFUSED' 9999 'INAPP' /
   B4H17AT   1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 7 '7=UNSURE'
             8 '8=REFUSED' 9 '9=INAPP' /
   B4H17BF   9997 'UNSURE' 9998 'REFUSED' 9999 'INAPP' /
   B4H17BT   1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 7 '7=UNSURE'
             8 '8=REFUSED' 9 '9=INAPP' /
   B4H17CF   9997 'UNSURE' 9998 'REFUSED' 9999 'INAPP' /
   B4H17CT   1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 7 '7=UNSURE'
             8 '8=REFUSED' 9 '9=INAPP' /
   B4H18AF   9997 'UNSURE' 9998 'REFUSED' 9999 'INAPP' /
   B4H18AT   1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 7 '7=UNSURE'
             8 '8=REFUSED' 9 '9=INAPP' /
   B4H18BF   9997 'UNSURE' 9998 'REFUSED' 9999 'INAPP' /
   B4H18BT   1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 7 '7=UNSURE'
             8 '8=REFUSED' 9 '9=INAPP' /
   B4H18CF   9997 'UNSURE' 9998 'REFUSED' 9999 'INAPP' /
   B4H18CT   1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 7 '7=UNSURE'
             8 '8=REFUSED' 9 '9=INAPP' /
   B4H19     1 '1=NONE' 2 '2=1-3 GLASSES/DAY' 3 '3=4-7 GLASSES/DAY'
             4 '4=8 OR MORE GLASSES/DAY' 5 '5=OTHER LESS THAN 1X/DAY'
             7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H20     1 '1=NONE' 2 '2=1-3 GLASSES/DAY' 3 '3=4-6 GLASSES/DAY'
             4 '4=7 OR MORE GLASSES/DAY' 5 '5=OTHER LESS THAN ONCE/DAY'
             7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H21     1 '1=NONE' 2 '2=1-2 SERVINGS/DAY' 3 '3=3-4 SERVINGS/DAY'
             4 '4=5 OR MORE SERVINGS/DAY' 5 '5=OTHER LESS THAN ONCE/DAY'
             7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H22     1 '1=NONE' 2 '2=1-2 SERVINGS/DAY' 3 '3=3-4 SERVINGS/DAY'
             4 '4=5 OR MORE SERVINGS/DAY' 5 '5=OTHER LESS THAN ONCE/DAY'
             7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H23A    1 '1=NEVER' 2 '2=LESS THAN ONCE/WEEK' 3 '3=1-2 X/WEEK'
             4 '4=3-4 X/WEEK' 5 '5=5 OR MORE X/WEEK' 7 '7=UNSURE'
             8 '8=REFUSED' 9 '9=INAPP' /
   B4H23B    1 '1=NEVER' 2 '2=LESS THAN ONCE/WEEK' 3 '3=1-2 X/WEEK'
             4 '4=3-4 X/WEEK' 5 '5=5 OR MORE X/WEEK' 7 '7=UNSURE'
             8 '8=REFUSED' 9 '9=INAPP' /
   B4H23C    1 '1=NEVER' 2 '2=LESS THAN ONCE/WEEK' 3 '3=1-2 X/WEEK'
             4 '4=3-4 X/WEEK' 5 '5=5 OR MORE X/WEEK' 7 '7=UNSURE'
             8 '8=REFUSED' 9 '9=INAPP' /
   B4H23D    1 '1=NEVER' 2 '2=LESS THAN ONCE/WEEK' 3 '3=1-2 X/WEEK'
             4 '4=3-4 X/WEEK' 5 '5=5 OR MORE X/WEEK' 7 '7=UNSURE'
             8 '8=REFUSED' 9 '9=INAPP' /
   B4H24     1 '1=NEVER' 2 '2=LESS THAN ONCE/WEEK' 3 '3=1-3 X/WEEK'
             4 '4=4-6 X/WEEK' 5 '5=7 OR MORE X/WEEK' 7 '7=UNSURE'
             8 '8=REFUSED' 9 '9=INAPP' /
   B4H25     1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H25AS   1 'NOT SEASONAL' 2 'WINTER' 3 'SPRING' 4 'SUMMER' 5 'FALL'
             6 'SPRING TO FALL' 7 'SPRING TO SUMMER' 8 'SUMMER TO FALL'
             9 'FALL TO SPRING' 10 'SPRING & FALL' 97 'UNSURE' 98 'REFUSED'
             99 'INAPP' /
   B4H25AFD  97 '97=UNSURE' 98 '98=REFUSED' 99 '99=INAPP' /
   B4H25AFW  97 '97=UNSURE' 98 '98=REFUSED' 99 '99=INAPP' /
   B4H25AM   9997 '9997=UNSURE' 9998 '9998=REFUSED' 9999 '9999=INAPP' /
   B4H25AI   1 '1=VIGOROUS' 2 '2=MODERATE' 3 '3=LIGHT' 7 '7=UNSURE'
             8 '8=REFUSED' 9 '9=INAPP' /
   B4H25BS   1 'NOT SEASONAL' 2 'WINTER' 3 'SPRING' 4 'SUMMER' 5 'FALL'
             6 'SPRING TO FALL' 7 'SPRING TO SUMMER' 8 'SUMMER TO FALL'
             9 'FALL TO SPRING' 10 'SPRING & FALL' 97 'UNSURE' 98 'REFUSED'
             99 'INAPP' /
   B4H25BFD  97 '97=UNSURE' 98 '98=REFUSED' 99 '99=INAPP' /
   B4H25BFW  97 '97=UNSURE' 98 '98=REFUSED' 99 '99=INAPP' /
   B4H25BM   9997 '9997=UNSURE' 9998 '9998=REFUSED' 9999 '9999=INAPP' /
   B4H25BI   1 '1=VIGOROUS' 2 '2=MODERATE' 3 '3=LIGHT' 7 '7=UNSURE'
             8 '8=REFUSED' 9 '9=INAPP' /
   B4H25CS   1 'NOT SEASONAL' 2 'WINTER' 3 'SPRING' 4 'SUMMER' 5 'FALL'
             6 'SPRING TO FALL' 7 'SPRING TO SUMMER' 8 'SUMMER TO FALL'
             9 'FALL TO SPRING' 10 'SPRING & FALL' 97 'UNSURE' 98 'REFUSED'
             99 'INAPP' /
   B4H25CFD  97 '97=UNSURE' 98 '98=REFUSED' 99 '99=INAPP' /
   B4H25CFW  97 '97=UNSURE' 98 '98=REFUSED' 99 '99=INAPP' /
   B4H25CM   9997 '9997=UNSURE' 9998 '9998=REFUSED' 9999 '9999=INAPP' /
   B4H25CI   1 '1=VIGOROUS' 2 '2=MODERATE' 3 '3=LIGHT' 7 '7=UNSURE'
             8 '8=REFUSED' 9 '9=INAPP' /
   B4H25DS   1 'NOT SEASONAL' 2 'WINTER' 3 'SPRING' 4 'SUMMER' 5 'FALL'
             6 'SPRING TO FALL' 7 'SPRING TO SUMMER' 8 'SUMMER TO FALL'
             9 'FALL TO SPRING' 10 'SPRING & FALL' 97 'UNSURE' 98 'REFUSED'
             99 'INAPP' /
   B4H25DFD  97 '97=UNSURE' 98 '98=REFUSED' 99 '99=INAPP' /
   B4H25DFW  97 '97=UNSURE' 98 '98=REFUSED' 99 '99=INAPP' /
   B4H25DM   9997 '9997=UNSURE' 9998 '9998=REFUSED' 9999 '9999=INAPP' /
   B4H25DI   1 '1=VIGOROUS' 2 '2=MODERATE' 3 '3=LIGHT' 7 '7=UNSURE'
             8 '8=REFUSED' 9 '9=INAPP' /
   B4H25ES   1 'NOT SEASONAL' 2 'WINTER' 3 'SPRING' 4 'SUMMER' 5 'FALL'
             6 'SPRING TO FALL' 7 'SPRING TO SUMMER' 8 'SUMMER TO FALL'
             9 'FALL TO SPRING' 10 'SPRING & FALL' 97 'UNSURE' 98 'REFUSED'
             99 'INAPP' /
   B4H25EFD  97 '97=UNSURE' 98 '98=REFUSED' 99 '99=INAPP' /
   B4H25EFW  97 '97=UNSURE' 98 '98=REFUSED' 99 '99=INAPP' /
   B4H25EM   9997 '9997=UNSURE' 9998 '9998=REFUSED' 9999 '9999=INAPP' /
   B4H25EI   1 '1=VIGOROUS' 2 '2=MODERATE' 3 '3=LIGHT' 7 '7=UNSURE'
             8 '8=REFUSED' 9 '9=INAPP' /
   B4H25FS   1 'NOT SEASONAL' 2 'WINTER' 3 'SPRING' 4 'SUMMER' 5 'FALL'
             6 'SPRING TO FALL' 7 'SPRING TO SUMMER' 8 'SUMMER TO FALL'
             9 'FALL TO SPRING' 10 'SPRING & FALL' 97 'UNSURE' 98 'REFUSED'
             99 'INAPP' /
   B4H25FFD  97 '97=UNSURE' 98 '98=REFUSED' 99 '99=INAPP' /
   B4H25FFW  97 '97=UNSURE' 98 '98=REFUSED' 99 '99=INAPP' /
   B4H25FM   9997 '9997=UNSURE' 9998 '9998=REFUSED' 9999 '9999=INAPP' /
   B4H25FI   1 '1=VIGOROUS' 2 '2=MODERATE' 3 '3=LIGHT' 7 '7=UNSURE'
             8 '8=REFUSED' 9 '9=INAPP' /
   B4H25GS   1 'NOT SEASONAL' 2 'WINTER' 3 'SPRING' 4 'SUMMER' 5 'FALL'
             6 'SPRING TO FALL' 7 'SPRING TO SUMMER' 8 'SUMMER TO FALL'
             9 'FALL TO SPRING' 10 'SPRING & FALL' 97 'UNSURE' 98 'REFUSED'
             99 'INAPP' /
   B4H25GFD  97 '97=UNSURE' 98 '98=REFUSED' 99 '99=INAPP' /
   B4H25GFW  97 '97=UNSURE' 98 '98=REFUSED' 99 '99=INAPP' /
   B4H25GM   9997 '9997=UNSURE' 9998 '9998=REFUSED' 9999 '9999=INAPP' /
   B4H25GI   1 '1=VIGOROUS' 2 '2=MODERATE' 3 '3=LIGHT' 7 '7=UNSURE'
             8 '8=REFUSED' 9 '9=INAPP' /
   B4H26     1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H26A    1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H27     1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H28     97 '97=UNSURE' 98 '98=REFUSED' 99 '99=INAPP' /
   B4H29     1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H30     1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H31     1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H32     1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H33     1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4H34     1 '1=EVERYDAY' 2 '2=5 OR 6 DAYS/WK' 3 '3=3 OR 4 DAYS/WK'
             4 '4=1 OR 2 DAYS/WK' 5 '5=LESS THAN ONE DAY/WK'
             6 '6=NEVER DRINKS' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H35     1 '1=3 OR 4 DAYS/MO' 2 '2=1 OR 2 DAYS/MO'
             3 '3=LESS THAN ONE DAY/MO' 4 '4=NEVER DRINKS' 7 '7=UNSURE'
             8 '8=REFUSED' 9 '9=INAPP' /
   B4H36     9997 '9997=UNSURE' 9998 '9998=REFUSED' 9999 '9999=INAPP' /
   B4H37     97 '97=UNSURE' 98 '98=REFUSED' 99 '99=INAPP' /
   B4H38     1 '1=EVERYDAY' 2 '2=5 OR 6 DAYS/WK' 3 '3=3 OR 4 DAYS/WK'
             4 '4=1 OR 2 DAYS/WK' 5 '5=LESS THAN ONE DAY/WK'
             6 '6=NEVER DRINKS' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H39     1 '1=3 OR 4 DAYS/MO' 2 '2=1 OR 2 DAYS/MO'
             3 '3=LESS THAN ONE DAY/MO' 4 '4=NEVER DRINKS' 7 '7=UNSURE'
             8 '8=REFUSED' 9 '9=INAPP' /
   B4H40     9997 '9997=UNSURE' 9998 '9998=REFUSED' 9999 '9999=INAPP' /
   B4H41     97 '97=UNSURE' 98 '98=REFUSED' 99 '99=INAPP' /
   B4H42     9997 '9997=UNSURE' 9998 '9998=REFUSED' 9999 '9999=INAPP' /
   B4H43A    1 '1=NEVER' 2 '2=EVERY 6 MONTHS' 3 '3=ONCE A YEAR' 4 '4=OTHER'
             7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H43BM   1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'UNSURE' 98 'MISSING' 99 'INAPP' /
   B4H43BY   9997 '9997=UNSURE' 9998 '9998=REFUSED' 9999 '9999=INAPP' /
   B4H44A    1 '1=NEVER' 2 '2=EVERY 6 MONTHS' 3 '3=ONCE A YEAR' 4 '4=OTHER'
             7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H44CM   1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'UNSURE' 98 'MISSING' 99 'INAPP' /
   B4H44CY   9997 '9997=UNSURE' 9998 '9998=REFUSED' 9999 '9999=INAPP' /
   B4H44D    1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H45A    1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H45AM   1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'UNSURE' 98 'MISSING' 99 'INAPP' /
   B4H45AY   9997 '9997=UNSURE' 9998 '9998=REFUSED' 9999 '9999=INAPP' /
   B4H45B    1 'YES' 2 'NO' 3 'ASKED BUT DID NOT DO IT' 9 '9=INAPP' /
   B4H45BM   1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'UNSURE' 98 'MISSING' 99 'INAPP' /
   B4H45BY   9997 '9997=UNSURE' 9998 '9998=REFUSED' 9999 '9999=INAPP' /
   B4H45BRC  1 'NORMAL' 2 'ABNORMAL' 3 'UNKNOWN' 4 'NO RESULT YET'
             5 'DID NOT DO THE TEST' 8 'MISSING' 9 'INAPP' /
   B4H45C    1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H45CM   1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'UNSURE' 98 'MISSING' 99 'INAPP' /
   B4H45CY   9997 '9997=UNSURE' 9998 '9998=REFUSED' 9999 '9999=INAPP' /
   B4H45CRC  1 'NORMAL' 2 'ABNORMAL' 3 'UNKNOWN' 4 'NO RESULT YET'
             8 'MISSING' 9 'INAPP' /
   B4H45D    1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H45DM   1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'UNSURE' 98 'MISSING' 99 'INAPP' /
   B4H45DY   9997 '9997=UNSURE' 9998 '9998=REFUSED' 9999 '9999=INAPP' /
   B4H45DRC  1 'NORMAL' 2 'ABNORMAL' 3 'UNKNOWN' 4 'NO RESULT YET'
             8 'MISSING' 9 'INAPP' /
   B4H45E    1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H45F    1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H45FM   1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'UNSURE' 98 'MISSING' 99 'INAPP' /
   B4H45FY   9997 '9997=UNSURE' 9998 '9998=REFUSED' 9999 '9999=INAPP' /
   B4H45FRC  1 'NORMAL' 2 'ABNORMAL' 3 'UNKNOWN' 4 'NO RESULT YET'
             8 'MISSING' 9 'INAPP' /
   B4H45G    1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H45GM   1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'UNSURE' 98 'MISSING' 99 'INAPP' /
   B4H45GY   9997 '9997=UNSURE' 9998 '9998=REFUSED' 9999 '9999=INAPP' /
   B4H45GRC  1 'NORMAL' 2 'ABNORMAL' 3 'UNKNOWN' 4 'NO RESULT YET'
             8 'MISSING' 9 'INAPP' /
   B4H45H    1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H45HM   1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'UNSURE' 98 'MISSING' 99 'INAPP' /
   B4H45HY   9997 '9997=UNSURE' 9998 '9998=REFUSED' 9999 '9999=INAPP' /
   B4H45HRC  1 'NORMAL' 2 'ABNORMAL' 3 'UNKNOWN' 4 'NO RESULT YET'
             8 'MISSING' 9 'INAPP' /
   B4H46     1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H46C    1 '1=DAILY' 2 '2=WEEKLY' 3 '3=MONTHLY' 7 '7=UNSURE'
             8 '8=REFUSED' 9 '9=INAPP' /
   B4H46D    9997 'UNSURE' 9998 'MISSING' 9999 'INAPP' /
   B4H47     1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H48     1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H48A    1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H49     1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H50     1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H54C    1 'YES' 2 'NO' /
   B4H54M    1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'UNSURE' 98 'MISSING' 99 'INAPP' /
   B4H54Y    9998 'MISSING' 9999 'INAPP' /
   B4H55     1 '1=MARRIED' 2 '2=SEPARATED' 3 '3=DIVORCED' 4 '4=WIDOWED'
             5 '5=NEVER MARRIED' 6 '6=LIVING W/ SOMEONE' 7 '7=UNSURE'
             8 '8=REFUSED' 9 '9=INAPP' /
   B4HMARR   1 '1=MARRIED' 2 '2=SEPARATED' 3 '3=DIVORCED' 4 '4=WIDOWED'
             5 '5=NEVER MARRIED' 6 '6=LIVING W/ SOMEONE' /
   B4H56     1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H56AG   1 '1=MALE' 2 '2=FEMALE' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H56AM   1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'UNSURE' 98 'MISSING' 99 'INAPP' /
   B4H56AY   9997 '9997=UNSURE' 9998 '9998=REFUSED' 9999 '9999=INAPP' /
   B4H56BG   1 '1=MALE' 2 '2=FEMALE' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H56BM   1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'UNSURE' 98 'MISSING' 99 'INAPP' /
   B4H56BY   9997 '9997=UNSURE' 9998 '9998=REFUSED' 9999 '9999=INAPP' /
   B4H56CG   1 '1=MALE' 2 '2=FEMALE' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H56CM   1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'UNSURE' 98 'MISSING' 99 'INAPP' /
   B4H56CY   9997 '9997=UNSURE' 9998 '9998=REFUSED' 9999 '9999=INAPP' /
   B4H56DG   1 '1=MALE' 2 '2=FEMALE' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H56DM   1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'UNSURE' 98 'MISSING' 99 'INAPP' /
   B4H56DY   9997 '9997=UNSURE' 9998 '9998=REFUSED' 9999 '9999=INAPP' /
   B4H56EG   1 '1=MALE' 2 '2=FEMALE' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H56EM   1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'UNSURE' 98 'MISSING' 99 'INAPP' /
   B4H56EY   9997 '9997=UNSURE' 9998 '9998=REFUSED' 9999 '9999=INAPP' /
   B4H57     1 '1=YES' 2 '2=NO' 7 '7=UNSURE' 8 '8=REFUSED' 9 '9=INAPP' /
   B4H57A1M  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 96 'ONGOING' 97 'UNSURE' 98 'MISSING' 99 'INAPP' /
   B4H57A1Y  9997 '9997=UNSURE' 9998 '9998=REFUSED' 9999 '9999=INAPP' /
   B4H57A2M  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 96 'ONGOING' 97 'UNSURE' 98 'MISSING' 99 'INAPP' /
   B4H57A2Y  9997 '9997=UNSURE' 9998 '9998=REFUSED' 9999 '9999=INAPP' /
   B4H57A3M  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 96 'ONGOING' 97 'UNSURE' 98 'MISSING' 99 'INAPP' /
   B4H57A3Y  9997 '9997=UNSURE' 9998 '9998=REFUSED' 9999 '9999=INAPP' /
   B4H57A4M  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 96 'ONGOING' 97 'UNSURE' 98 'MISSING' 99 'INAPP' /
   B4H57A4Y  9997 '9997=UNSURE' 9998 '9998=REFUSED' 9999 '9999=INAPP' /
   B4H57A5M  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 96 'ONGOING' 97 'UNSURE' 98 'MISSING' 99 'INAPP' /
   B4H57A5Y  9997 '9997=UNSURE' 9998 '9998=REFUSED' 9999 '9999=INAPP' /
   B4OAVL    1 'YES' 2 'NO' /
   B4O1      1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O1A1W   1 '1=HIP' 2 '2=LEG' 3 '3=ANKLE' 4 '4=FOOT' 5 '5=TOE'
             6 '6=COLLARBONE' 7 '7=SHOULDER' 8 '8=WRIST' 9 '9=HAND'
             10 '10=FINGER' 11 '11=BACK' 12 '12=RIB' 13 '13=ELBOW'
             14 '14=NOSE' 15 '15=TAILBONE' 16 '16=MULTIPLE BONES'
             98 '98=MISSING' 99 '99=INAPP' /
   B4O1A3    9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4O1B1W   1 '1=HIP' 2 '2=LEG' 3 '3=ANKLE' 4 '4=FOOT' 5 '5=TOE'
             6 '6=COLLARBONE' 7 '7=SHOULDER' 8 '8=WRIST' 9 '9=HAND'
             10 '10=FINGER' 11 '11=BACK' 12 '12=RIB' 13 '13=ELBOW'
             14 '14=NOSE' 15 '15=TAILBONE' 16 '16=MULTIPLE BONES'
             98 '98=MISSING' 99 '99=INAPP' /
   B4O1B3    9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4O1C1W   1 '1=HIP' 2 '2=LEG' 3 '3=ANKLE' 4 '4=FOOT' 5 '5=TOE'
             6 '6=COLLARBONE' 7 '7=SHOULDER' 8 '8=WRIST' 9 '9=HAND'
             10 '10=FINGER' 11 '11=BACK' 12 '12=RIB' 13 '13=ELBOW'
             14 '14=NOSE' 15 '15=TAILBONE' 16 '16=MULTIPLE BONES'
             98 '98=MISSING' 99 '99=INAPP' /
   B4O1C3    9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4O2      1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O2A1    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O2A2    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O2A3    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O2B1    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O2B2    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O2B3    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O2C1    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O2C2    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O2C3    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O3      997 'DON''T KNOW' 998 'MISSING' 999 'INAPP' /
   B4O3A     997 'DON''T KNOW' 998 'MISSING' 999 'INAPPLICABLE' /
   B4O4A     1 'YES' 2 'NO' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4O4B     1 'YES' 2 'NO' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4O5      1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O5A1AM  1 '1=FOSAMAX' 2 '2=ACTONEL' 3 '3=ZOMETA' 4 '4=MIACALCIN'
             5 '5=EVISTA' 6 '6=FORTEO' 7 '7=BONIVA' 8 '8=CELEBREX'
             9 '9=OTHER' 98 '98=MISSING' 99 '99=INAPP' /
   B4O5A1B   9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4O5A1C   9996 'ONGOING' 9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4O5A1CO  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O5A2AM  1 '1=FOSAMAX' 2 '2=ACTONEL' 3 '3=ZOMETA' 4 '4=MIACALCIN'
             5 '5=EVISTA' 6 '6=FORTEO' 7 '7=BONIVA' 8 '8=CELEBREX'
             9 '9=OTHER' 98 '98=MISSING' 99 '99=INAPP' /
   B4O5A2B   9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4O5A2C   9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4O5A2CO  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O5A3AM  1 '1=FOSAMAX' 2 '2=ACTONEL' 3 '3=ZOMETA' 4 '4=MIACALCIN'
             5 '5=EVISTA' 6 '6=FORTEO' 7 '7=BONIVA' 8 '8=CELEBREX'
             9 '9=OTHER' 98 '98=MISSING' 99 '99=INAPP' /
   B4O5A3B   9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4O5A3C   9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4O5A3CO  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O6A1    1 'YES' 2 'NO' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4O6B1    1 'YES' 2 'NO' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4O6C1    1 'YES' 2 'NO' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4O6D1    1 'YES' 2 'NO' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4O6E1    1 'YES' 2 'NO' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4O6F1    1 'YES' 2 'NO' 7 'UNSURE' 8 'MISSING' 9 'INAPP' /
   B4O7      1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O8      9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4O9      9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4O10     9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4O11     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O12A    997 'DON''T KNOW' 998 'MISSING' 999 'INAPP' /
   B4O12B    997 'DON''T KNOW' 998 'MISSING' 999 'INAPP' /
   B4O12C    997 'DON''T KNOW' 998 'MISSING' 999 'INAPP' /
   B4O13     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O14A    9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4O14B    9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4O14C    9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4O14X    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O15     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O16     97 'DON''T KNOW' 98 'MISSING' 99 'INAPP' /
   B4O16A    9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4O17     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O18     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O19     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O20Y    9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4O21     1 'YES' 2 'NO' 3 'PREGNANCY/BREAST FEEDING' 7 'DON''T KNOW'
             8 'MISSING' 9 'INAPP' /
   B4O21A1   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O21A2   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O21A3   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O21A4   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O21A5   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O22Y    9994 'NEVER IRREGULAR' 9995 'ALWAYS IRREGULAR'
             9996 'SURGERY- NO IRREGULARITY' 9997 'DON''T KNOW'
             9998 'MISSING' 9999 'INAPP' /
   B4O23X    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O23     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O24     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O25     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O25A    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O25B    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O25C    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O26     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O26A    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O26B    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O26C    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O26D    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O26E    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O26F    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4O27     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4DAVAIL  1 'YES' 2 'SPINE, NO HIP' 3 'NO SPINE,HIP' 4 'NO SPINE, NO HIP'
             7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4DNARSN  1 'SCHEDULING PROBLEM' 2 'TECHNICAL PROBLEM'
             3 'SCAN NOT SCOREABLE' 4 'VISIT TERMINATED' 5 'R REFUSED'
             9 'INAPP' /
   B4DSTYPE  1 'LUNAR' 2 'HOLOGIC' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4DTRSID  0 'NO SCAN' 1 'RIGHT' 2 'LEFT' 7 'DON''T KNOW' 8 'MISSING'
             9 'INAPP' /
   B4DFNSID  0 'NO SCAN' 1 'RIGHT' 2 'LEFT' 7 'DON''T KNOW' 8 'MISSING'
             9 'INAPP' /
   B4DFTSID  0 'NO SCAN' 1 'RIGHT' 2 'LEFT' 7 'DON''T KNOW' 8 'MISSING'
             9 'INAPP' /
   B4DRSIDE  0 'NO SCAN' 1 'RIGHT' 2 'LEFT' 7 'DON''T KNOW' 8 'MISSING'
             9 'INAPP' /
   B4DLSMD   998 'MISSING' 999 'INAPP' /
   B4DLST    998 'MISSING' 999 'INAPP' /
   B4DLFNMD  998 'MISSING' 999 'INAPP' /
   B4DLTRMD  998 'MISSING' 999 'INAPP' /
   B4DLFTMD  998 'MISSING' 999 'INAPP' /
   B4DLFNT   998 'MISSING' 999 'INAPP' /
   B4DLFTT   998 'MISSING' 999 'INAPP' /
   B4DLRUMD  998 'MISSING' 999 'INAPP' /
   B4DLR3MD  998 'MISSING' 999 'INAPP' /
   B4DLR3T   998 'MISSING' 999 'INAPP' /
   B4DHSMD   998 'MISSING' 999 'INAPP' /
   B4DHST    998 'MISSING' 999 'INAPP' /
   B4DHFNMD  998 'MISSING' 999 'INAPP' /
   B4DHTRMD  998 'MISSING' 999 'INAPP' /
   B4DHFTMD  998 'MISSING' 999 'INAPP' /
   B4DHFNT   998 'MISSING' 999 'INAPP' /
   B4DHFTT   998 'MISSING' 999 'INAPP' /
   B4XPMD    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' /
   B4XOMD    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' /
   B4XAMD    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' /
   B4XPM     97 '97=DON''T KNOW''' 98 '98=MISSING' 99 '99=INAPP' /
   B4XPC1    99999997 '99999997=DON''T KNOW' 99999998 '99999998=MISSING'
             99999999 '99999999=INAPP' /
   B4XPDD1   99999996 '99999996=MIXED DOSAGE' 99999997 '99999997=DON''T KNOW'
             99999998 '99999998=MISSING' 99999999 '99999999=INAPP' /
   B4XPDU1   1 '1=MG' 2 '2=GRAMS' 3 '3=MCG' 4 '4=IU' 5 '5=MEQ' 6 '6=CC/ML'
             7 '7=TEASPOON' 8 '8=TABLET' 9 '9=CAPSULE' 10 '10=PUFF/SQUIRT'
             11 '11=UNIT' 12 '12=TABLESPOON' 13 '13=% SOLUTION/CREAM'
             14 '14=DROP' 15 '15=OTHER' 97 'DONT KNOW' 98 'MISSING'
             99 'INAPP' /
   B4XPR1    1 '1=ORAL (PO)' 2 '2=INHALED' 3 '3=TOPICAL' 4 '4=SUB Q/SUB C'
             5 '5=INTRAMUSCULAR' 6 '6=SUBLINGUAL' 7 '7=OTHER'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4XPF1    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XPFU1   1 '1=DAY' 2 '2=EVERY OTHER DAY' 3 '3=WEEK' 4 '4=MONTH'
             5 '5=AS NEEDED (PRN)' 6 '6=OTHER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4XPT1    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XPTU1   1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 5 '5=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XPDC1   99997 '99997=DON''T KNOW' 99998 '99998=MISSING'
             99999 '99999=INAPP' /
   B4XPC2    99999997 '99999997=DON''T KNOW' 99999998 '99999998=MISSING'
             99999999 '99999999=INAPP' /
   B4XPDD2   99999996 '99999996=MIXED DOSAGE' 99999997 '99999997=DON''T KNOW'
             99999998 '99999998=MISSING' 99999999 '99999999=INAPP' /
   B4XPDU2   1 '1=MG' 2 '2=GRAMS' 3 '3=MCG' 4 '4=IU' 5 '5=MEQ' 6 '6=CC/ML'
             7 '7=TEASPOON' 8 '8=TABLET' 9 '9=CAPSULE' 10 '10=PUFF/SQUIRT'
             11 '11=UNIT' 12 '12=TABLESPOON' 13 '13=% SOLUTION/CREAM'
             14 '14=DROP' 15 '15=OTHER' 97 'DONT KNOW' 98 'MISSING'
             99 'INAPP' /
   B4XPR2    1 '1=ORAL (PO)' 2 '2=INHALED' 3 '3=TOPICAL' 4 '4=SUB Q/SUB C'
             5 '5=INTRAMUSCULAR' 6 '6=SUBLINGUAL' 7 '7=OTHER'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4XPF2    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XPFU2   1 '1=DAY' 2 '2=EVERY OTHER DAY' 3 '3=WEEK' 4 '4=MONTH'
             5 '5=AS NEEDED (PRN)' 6 '6=OTHER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4XPT2    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XPTU2   1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 5 '5=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XPDC2   99997 '99997=DON''T KNOW' 99998 '99998=MISSING'
             99999 '99999=INAPP' /
   B4XPC3    99999997 '99999997=DON''T KNOW' 99999998 '99999998=MISSING'
             99999999 '99999999=INAPP' /
   B4XPDD3   99999996 '99999996=MIXED DOSAGE' 99999997 '99999997=DON''T KNOW'
             99999998 '99999998=MISSING' 99999999 '99999999=INAPP' /
   B4XPDU3   1 '1=MG' 2 '2=GRAMS' 3 '3=MCG' 4 '4=IU' 5 '5=MEQ' 6 '6=CC/ML'
             7 '7=TEASPOON' 8 '8=TABLET' 9 '9=CAPSULE' 10 '10=PUFF/SQUIRT'
             11 '11=UNIT' 12 '12=TABLESPOON' 13 '13=% SOLUTION/CREAM'
             14 '14=DROP' 15 '15=OTHER' 97 'DONT KNOW' 98 'MISSING'
             99 'INAPP' /
   B4XPR3    1 '1=ORAL (PO)' 2 '2=INHALED' 3 '3=TOPICAL' 4 '4=SUB Q/SUB C'
             5 '5=INTRAMUSCULAR' 6 '6=SUBLINGUAL' 7 '7=OTHER'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4XPF3    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XPFU3   1 '1=DAY' 2 '2=EVERY OTHER DAY' 3 '3=WEEK' 4 '4=MONTH'
             5 '5=AS NEEDED (PRN)' 6 '6=OTHER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4XPT3    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XPTU3   1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 5 '5=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XPDC3   99997 '99997=DON''T KNOW' 99998 '99998=MISSING'
             99999 '99999=INAPP' /
   B4XPC4    99999997 '99999997=DON''T KNOW' 99999998 '99999998=MISSING'
             99999999 '99999999=INAPP' /
   B4XPDD4   99999996 '99999996=MIXED DOSAGE' 99999997 '99999997=DON''T KNOW'
             99999998 '99999998=MISSING' 99999999 '99999999=INAPP' /
   B4XPDU4   1 '1=MG' 2 '2=GRAMS' 3 '3=MCG' 4 '4=IU' 5 '5=MEQ' 6 '6=CC/ML'
             7 '7=TEASPOON' 8 '8=TABLET' 9 '9=CAPSULE' 10 '10=PUFF/SQUIRT'
             11 '11=UNIT' 12 '12=TABLESPOON' 13 '13=% SOLUTION/CREAM'
             14 '14=DROP' 15 '15=OTHER' 97 'DONT KNOW' 98 'MISSING'
             99 'INAPP' /
   B4XPR4    1 '1=ORAL (PO)' 2 '2=INHALED' 3 '3=TOPICAL' 4 '4=SUB Q/SUB C'
             5 '5=INTRAMUSCULAR' 6 '6=SUBLINGUAL' 7 '7=OTHER'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4XPF4    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XPFU4   1 '1=DAY' 2 '2=EVERY OTHER DAY' 3 '3=WEEK' 4 '4=MONTH'
             5 '5=AS NEEDED (PRN)' 6 '6=OTHER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4XPT4    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XPTU4   1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 5 '5=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XPDC4   99997 '99997=DON''T KNOW' 99998 '99998=MISSING'
             99999 '99999=INAPP' /
   B4XPC5    99999997 '99999997=DON''T KNOW' 99999998 '99999998=MISSING'
             99999999 '99999999=INAPP' /
   B4XPDD5   99999996 '99999996=MIXED DOSAGE' 99999997 '99999997=DON''T KNOW'
             99999998 '99999998=MISSING' 99999999 '99999999=INAPP' /
   B4XPDU5   1 '1=MG' 2 '2=GRAMS' 3 '3=MCG' 4 '4=IU' 5 '5=MEQ' 6 '6=CC/ML'
             7 '7=TEASPOON' 8 '8=TABLET' 9 '9=CAPSULE' 10 '10=PUFF/SQUIRT'
             11 '11=UNIT' 12 '12=TABLESPOON' 13 '13=% SOLUTION/CREAM'
             14 '14=DROP' 15 '15=OTHER' 97 'DONT KNOW' 98 'MISSING'
             99 'INAPP' /
   B4XPR5    1 '1=ORAL (PO)' 2 '2=INHALED' 3 '3=TOPICAL' 4 '4=SUB Q/SUB C'
             5 '5=INTRAMUSCULAR' 6 '6=SUBLINGUAL' 7 '7=OTHER'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4XPF5    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XPFU5   1 '1=DAY' 2 '2=EVERY OTHER DAY' 3 '3=WEEK' 4 '4=MONTH'
             5 '5=AS NEEDED (PRN)' 6 '6=OTHER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4XPT5    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XPTU5   1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 5 '5=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XPDC5   99997 '99997=DON''T KNOW' 99998 '99998=MISSING'
             99999 '99999=INAPP' /
   B4XPC6    99999997 '99999997=DON''T KNOW' 99999998 '99999998=MISSING'
             99999999 '99999999=INAPP' /
   B4XPDD6   99999996 '99999996=MIXED DOSAGE' 99999997 '99999997=DON''T KNOW'
             99999998 '99999998=MISSING' 99999999 '99999999=INAPP' /
   B4XPDU6   1 '1=MG' 2 '2=GRAMS' 3 '3=MCG' 4 '4=IU' 5 '5=MEQ' 6 '6=CC/ML'
             7 '7=TEASPOON' 8 '8=TABLET' 9 '9=CAPSULE' 10 '10=PUFF/SQUIRT'
             11 '11=UNIT' 12 '12=TABLESPOON' 13 '13=% SOLUTION/CREAM'
             14 '14=DROP' 15 '15=OTHER' 97 'DONT KNOW' 98 'MISSING'
             99 'INAPP' /
   B4XPR6    1 '1=ORAL (PO)' 2 '2=INHALED' 3 '3=TOPICAL' 4 '4=SUB Q/SUB C'
             5 '5=INTRAMUSCULAR' 6 '6=SUBLINGUAL' 7 '7=OTHER'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4XPF6    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XPFU6   1 '1=DAY' 2 '2=EVERY OTHER DAY' 3 '3=WEEK' 4 '4=MONTH'
             5 '5=AS NEEDED (PRN)' 6 '6=OTHER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4XPT6    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XPTU6   1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 5 '5=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XPDC6   99997 '99997=DON''T KNOW' 99998 '99998=MISSING'
             99999 '99999=INAPP' /
   B4XPC7    99999997 '99999997=DON''T KNOW' 99999998 '99999998=MISSING'
             99999999 '99999999=INAPP' /
   B4XPDD7   99999996 '99999996=MIXED DOSAGE' 99999997 '99999997=DON''T KNOW'
             99999998 '99999998=MISSING' 99999999 '99999999=INAPP' /
   B4XPDU7   1 '1=MG' 2 '2=GRAMS' 3 '3=MCG' 4 '4=IU' 5 '5=MEQ' 6 '6=CC/ML'
             7 '7=TEASPOON' 8 '8=TABLET' 9 '9=CAPSULE' 10 '10=PUFF/SQUIRT'
             11 '11=UNIT' 12 '12=TABLESPOON' 13 '13=% SOLUTION/CREAM'
             14 '14=DROP' 15 '15=OTHER' 97 'DONT KNOW' 98 'MISSING'
             99 'INAPP' /
   B4XPR7    1 '1=ORAL (PO)' 2 '2=INHALED' 3 '3=TOPICAL' 4 '4=SUB Q/SUB C'
             5 '5=INTRAMUSCULAR' 6 '6=SUBLINGUAL' 7 '7=OTHER'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4XPF7    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XPFU7   1 '1=DAY' 2 '2=EVERY OTHER DAY' 3 '3=WEEK' 4 '4=MONTH'
             5 '5=AS NEEDED (PRN)' 6 '6=OTHER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4XPT7    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XPTU7   1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 5 '5=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XPDC7   99997 '99997=DON''T KNOW' 99998 '99998=MISSING'
             99999 '99999=INAPP' /
   B4XPC8    99999997 '99999997=DON''T KNOW' 99999998 '99999998=MISSING'
             99999999 '99999999=INAPP' /
   B4XPDD8   99999996 '99999996=MIXED DOSAGE' 99999997 '99999997=DON''T KNOW'
             99999998 '99999998=MISSING' 99999999 '99999999=INAPP' /
   B4XPDU8   1 '1=MG' 2 '2=GRAMS' 3 '3=MCG' 4 '4=IU' 5 '5=MEQ' 6 '6=CC/ML'
             7 '7=TEASPOON' 8 '8=TABLET' 9 '9=CAPSULE' 10 '10=PUFF/SQUIRT'
             11 '11=UNIT' 12 '12=TABLESPOON' 13 '13=% SOLUTION/CREAM'
             14 '14=DROP' 15 '15=OTHER' 97 'DONT KNOW' 98 'MISSING'
             99 'INAPP' /
   B4XPR8    1 '1=ORAL (PO)' 2 '2=INHALED' 3 '3=TOPICAL' 4 '4=SUB Q/SUB C'
             5 '5=INTRAMUSCULAR' 6 '6=SUBLINGUAL' 7 '7=OTHER'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4XPF8    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XPFU8   1 '1=DAY' 2 '2=EVERY OTHER DAY' 3 '3=WEEK' 4 '4=MONTH'
             5 '5=AS NEEDED (PRN)' 6 '6=OTHER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4XPT8    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XPTU8   1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 5 '5=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XPDC8   99997 '99997=DON''T KNOW' 99998 '99998=MISSING'
             99999 '99999=INAPP' /
   B4XPC9    99999997 '99999997=DON''T KNOW' 99999998 '99999998=MISSING'
             99999999 '99999999=INAPP' /
   B4XPDD9   99999996 '99999996=MIXED DOSAGE' 99999997 '99999997=DON''T KNOW'
             99999998 '99999998=MISSING' 99999999 '99999999=INAPP' /
   B4XPDU9   1 '1=MG' 2 '2=GRAMS' 3 '3=MCG' 4 '4=IU' 5 '5=MEQ' 6 '6=CC/ML'
             7 '7=TEASPOON' 8 '8=TABLET' 9 '9=CAPSULE' 10 '10=PUFF/SQUIRT'
             11 '11=UNIT' 12 '12=TABLESPOON' 13 '13=% SOLUTION/CREAM'
             14 '14=DROP' 15 '15=OTHER' 97 'DONT KNOW' 98 'MISSING'
             99 'INAPP' /
   B4XPR9    1 '1=ORAL (PO)' 2 '2=INHALED' 3 '3=TOPICAL' 4 '4=SUB Q/SUB C'
             5 '5=INTRAMUSCULAR' 6 '6=SUBLINGUAL' 7 '7=OTHER'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4XPF9    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XPFU9   1 '1=DAY' 2 '2=EVERY OTHER DAY' 3 '3=WEEK' 4 '4=MONTH'
             5 '5=AS NEEDED (PRN)' 6 '6=OTHER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4XPT9    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XPTU9   1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 5 '5=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XPDC9   99997 '99997=DON''T KNOW' 99998 '99998=MISSING'
             99999 '99999=INAPP' /
   B4XPC10   99999997 '99999997=DON''T KNOW' 99999998 '99999998=MISSING'
             99999999 '99999999=INAPP' /
   B4XPDD10  99999996 '99999996=MIXED DOSAGE' 99999997 '99999997=DON''T KNOW'
             99999998 '99999998=MISSING' 99999999 '99999999=INAPP' /
   B4XPDU10  1 '1=MG' 2 '2=GRAMS' 3 '3=MCG' 4 '4=IU' 5 '5=MEQ' 6 '6=CC/ML'
             7 '7=TEASPOON' 8 '8=TABLET' 9 '9=CAPSULE' 10 '10=PUFF/SQUIRT'
             11 '11=UNIT' 12 '12=TABLESPOON' 13 '13=% SOLUTION/CREAM'
             14 '14=DROP' 15 '15=OTHER' 97 'DONT KNOW' 98 'MISSING'
             99 'INAPP' /
   B4XPR10   1 '1=ORAL (PO)' 2 '2=INHALED' 3 '3=TOPICAL' 4 '4=SUB Q/SUB C'
             5 '5=INTRAMUSCULAR' 6 '6=SUBLINGUAL' 7 '7=OTHER'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4XPF10   9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XPFU10  1 '1=DAY' 2 '2=EVERY OTHER DAY' 3 '3=WEEK' 4 '4=MONTH'
             5 '5=AS NEEDED (PRN)' 6 '6=OTHER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4XPT10   9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XPTU10  1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 5 '5=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XPDC10  99997 '99997=DON''T KNOW' 99998 '99998=MISSING'
             99999 '99999=INAPP' /
   B4XPC11   99999997 '99999997=DON''T KNOW' 99999998 '99999998=MISSING'
             99999999 '99999999=INAPP' /
   B4XPDD11  99999996 '99999996=MIXED DOSAGE' 99999997 '99999997=DON''T KNOW'
             99999998 '99999998=MISSING' 99999999 '99999999=INAPP' /
   B4XPDU11  1 '1=MG' 2 '2=GRAMS' 3 '3=MCG' 4 '4=IU' 5 '5=MEQ' 6 '6=CC/ML'
             7 '7=TEASPOON' 8 '8=TABLET' 9 '9=CAPSULE' 10 '10=PUFF/SQUIRT'
             11 '11=UNIT' 12 '12=TABLESPOON' 13 '13=% SOLUTION/CREAM'
             14 '14=DROP' 15 '15=OTHER' 97 'DONT KNOW' 98 'MISSING'
             99 'INAPP' /
   B4XPR11   1 '1=ORAL (PO)' 2 '2=INHALED' 3 '3=TOPICAL' 4 '4=SUB Q/SUB C'
             5 '5=INTRAMUSCULAR' 6 '6=SUBLINGUAL' 7 '7=OTHER'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4XPF11   9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XPFU11  1 '1=DAY' 2 '2=EVERY OTHER DAY' 3 '3=WEEK' 4 '4=MONTH'
             5 '5=AS NEEDED (PRN)' 6 '6=OTHER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4XPT11   9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XPTU11  1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 5 '5=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XPDC11  99997 '99997=DON''T KNOW' 99998 '99998=MISSING'
             99999 '99999=INAPP' /
   B4XPC12   99999997 '99999997=DON''T KNOW' 99999998 '99999998=MISSING'
             99999999 '99999999=INAPP' /
   B4XPDD12  99999996 '99999996=MIXED DOSAGE' 99999997 '99999997=DON''T KNOW'
             99999998 '99999998=MISSING' 99999999 '99999999=INAPP' /
   B4XPDU12  1 '1=MG' 2 '2=GRAMS' 3 '3=MCG' 4 '4=IU' 5 '5=MEQ' 6 '6=CC/ML'
             7 '7=TEASPOON' 8 '8=TABLET' 9 '9=CAPSULE' 10 '10=PUFF/SQUIRT'
             11 '11=UNIT' 12 '12=TABLESPOON' 13 '13=% SOLUTION/CREAM'
             14 '14=DROP' 15 '15=OTHER' 97 'DONT KNOW' 98 'MISSING'
             99 'INAPP' /
   B4XPR12   1 '1=ORAL (PO)' 2 '2=INHALED' 3 '3=TOPICAL' 4 '4=SUB Q/SUB C'
             5 '5=INTRAMUSCULAR' 6 '6=SUBLINGUAL' 7 '7=OTHER'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4XPF12   9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XPFU12  1 '1=DAY' 2 '2=EVERY OTHER DAY' 3 '3=WEEK' 4 '4=MONTH'
             5 '5=AS NEEDED (PRN)' 6 '6=OTHER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4XPT12   9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XPTU12  1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 5 '5=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XPDC12  99997 '99997=DON''T KNOW' 99998 '99998=MISSING'
             99999 '99999=INAPP' /
   B4XPC13   99999997 '99999997=DON''T KNOW' 99999998 '99999998=MISSING'
             99999999 '99999999=INAPP' /
   B4XPDD13  99999996 '99999996=MIXED DOSAGE' 99999997 '99999997=DON''T KNOW'
             99999998 '99999998=MISSING' 99999999 '99999999=INAPP' /
   B4XPDU13  1 '1=MG' 2 '2=GRAMS' 3 '3=MCG' 4 '4=IU' 5 '5=MEQ' 6 '6=CC/ML'
             7 '7=TEASPOON' 8 '8=TABLET' 9 '9=CAPSULE' 10 '10=PUFF/SQUIRT'
             11 '11=UNIT' 12 '12=TABLESPOON' 13 '13=% SOLUTION/CREAM'
             14 '14=DROP' 15 '15=OTHER' 97 'DONT KNOW' 98 'MISSING'
             99 'INAPP' /
   B4XPR13   1 '1=ORAL (PO)' 2 '2=INHALED' 3 '3=TOPICAL' 4 '4=SUB Q/SUB C'
             5 '5=INTRAMUSCULAR' 6 '6=SUBLINGUAL' 7 '7=OTHER'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4XPF13   9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XPFU13  1 '1=DAY' 2 '2=EVERY OTHER DAY' 3 '3=WEEK' 4 '4=MONTH'
             5 '5=AS NEEDED (PRN)' 6 '6=OTHER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4XPT13   9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XPTU13  1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 5 '5=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XPDC13  99997 '99997=DON''T KNOW' 99998 '99998=MISSING'
             99999 '99999=INAPP' /
   B4XPC14   99999997 '99999997=DON''T KNOW' 99999998 '99999998=MISSING'
             99999999 '99999999=INAPP' /
   B4XPDD14  99999996 '99999996=MIXED DOSAGE' 99999997 '99999997=DON''T KNOW'
             99999998 '99999998=MISSING' 99999999 '99999999=INAPP' /
   B4XPDU14  1 '1=MG' 2 '2=GRAMS' 3 '3=MCG' 4 '4=IU' 5 '5=MEQ' 6 '6=CC/ML'
             7 '7=TEASPOON' 8 '8=TABLET' 9 '9=CAPSULE' 10 '10=PUFF/SQUIRT'
             11 '11=UNIT' 12 '12=TABLESPOON' 13 '13=% SOLUTION/CREAM'
             14 '14=DROP' 15 '15=OTHER' 97 'DONT KNOW' 98 'MISSING'
             99 'INAPP' /
   B4XPR14   1 '1=ORAL (PO)' 2 '2=INHALED' 3 '3=TOPICAL' 4 '4=SUB Q/SUB C'
             5 '5=INTRAMUSCULAR' 6 '6=SUBLINGUAL' 7 '7=OTHER'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4XPF14   9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XPFU14  1 '1=DAY' 2 '2=EVERY OTHER DAY' 3 '3=WEEK' 4 '4=MONTH'
             5 '5=AS NEEDED (PRN)' 6 '6=OTHER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4XPT14   9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XPTU14  1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 5 '5=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XPDC14  99997 '99997=DON''T KNOW' 99998 '99998=MISSING'
             99999 '99999=INAPP' /
   B4XPC15   99999997 '99999997=DON''T KNOW' 99999998 '99999998=MISSING'
             99999999 '99999999=INAPP' /
   B4XPDD15  99999996 '99999996=MIXED DOSAGE' 99999997 '99999997=DON''T KNOW'
             99999998 '99999998=MISSING' 99999999 '99999999=INAPP' /
   B4XPDU15  1 '1=MG' 2 '2=GRAMS' 3 '3=MCG' 4 '4=IU' 5 '5=MEQ' 6 '6=CC/ML'
             7 '7=TEASPOON' 8 '8=TABLET' 9 '9=CAPSULE' 10 '10=PUFF/SQUIRT'
             11 '11=UNIT' 12 '12=TABLESPOON' 13 '13=% SOLUTION/CREAM'
             14 '14=DROP' 15 '15=OTHER' 97 'DONT KNOW' 98 'MISSING'
             99 'INAPP' /
   B4XPR15   1 '1=ORAL (PO)' 2 '2=INHALED' 3 '3=TOPICAL' 4 '4=SUB Q/SUB C'
             5 '5=INTRAMUSCULAR' 6 '6=SUBLINGUAL' 7 '7=OTHER'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4XPF15   9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XPFU15  1 '1=DAY' 2 '2=EVERY OTHER DAY' 3 '3=WEEK' 4 '4=MONTH'
             5 '5=AS NEEDED (PRN)' 6 '6=OTHER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4XPT15   9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XPTU15  1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 5 '5=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XPDC15  99997 '99997=DON''T KNOW' 99998 '99998=MISSING'
             99999 '99999=INAPP' /
   B4XBPD    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4XBPC    7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4XCHD    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4XCHC    7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4XDPD    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4XDPC    7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4XCOD    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4XCOC    7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4XSHD    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4XSHC    7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4XOM     97 '97=DON''T KNOW''' 98 '98=MISSING' 99 '99=INAPP' /
   B4XOMV    1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XOC1    99999997 '99999997=DON''T KNOW' 99999998 '99999998=MISSING'
             99999999 '99999999=INAPP' /
   B4XODD1   99999996 '99999996=MIXED DOSAGE' 99999997 '99999997=DON''T KNOW'
             99999998 '99999998=MISSING' 99999999 '99999999=INAPP' /
   B4XODU1   1 '1=MG' 2 '2=GRAMS' 3 '3=MCG' 4 '4=IU' 5 '5=MEQ' 6 '6=CC/ML'
             7 '7=TEASPOON' 8 '8=TABLET' 9 '9=CAPSULE' 10 '10=PUFF/SQUIRT'
             11 '11=UNIT' 12 '12=TABLESPOON' 13 '13=% SOLUTION/CREAM'
             14 '14=DROP' 15 '15=OTHER' 97 'DONT KNOW' 98 'MISSING'
             99 'INAPP' /
   B4XOR1    1 '1=ORAL (PO)' 2 '2=INHALED' 3 '3=TOPICAL' 4 '4=SUB Q/SUB C'
             5 '5=INTRAMUSCULAR' 6 '6=SUBLINGUAL' 7 '7=OTHER'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4XOF1    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XOFU1   1 '1=DAY' 2 '2=EVERY OTHER DAY' 3 '3=WEEK' 4 '4=MONTH'
             5 '5=AS NEEDED (PRN)' 6 '6=OTHER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4XOT1    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XOTU1   1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 5 '5=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XODC1   99997 '99997=DON''T KNOW' 99998 '99998=MISSING'
             99999 '99999=INAPP' /
   B4XOCS    1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XOC2    99999997 '99999997=DON''T KNOW' 99999998 '99999998=MISSING'
             99999999 '99999999=INAPP' /
   B4XODD2   99999996 '99999996=MIXED DOSAGE' 99999997 '99999997=DON''T KNOW'
             99999998 '99999998=MISSING' 99999999 '99999999=INAPP' /
   B4XODU2   1 '1=MG' 2 '2=GRAMS' 3 '3=MCG' 4 '4=IU' 5 '5=MEQ' 6 '6=CC/ML'
             7 '7=TEASPOON' 8 '8=TABLET' 9 '9=CAPSULE' 10 '10=PUFF/SQUIRT'
             11 '11=UNIT' 12 '12=TABLESPOON' 13 '13=% SOLUTION/CREAM'
             14 '14=DROP' 15 '15=OTHER' 97 'DONT KNOW' 98 'MISSING'
             99 'INAPP' /
   B4XOR2    1 '1=ORAL (PO)' 2 '2=INHALED' 3 '3=TOPICAL' 4 '4=SUB Q/SUB C'
             5 '5=INTRAMUSCULAR' 6 '6=SUBLINGUAL' 7 '7=OTHER'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4XOF2    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XOFU2   1 '1=DAY' 2 '2=EVERY OTHER DAY' 3 '3=WEEK' 4 '4=MONTH'
             5 '5=AS NEEDED (PRN)' 6 '6=OTHER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4XOT2    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XOTU2   1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 5 '5=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XODC2   99997 '99997=DON''T KNOW' 99998 '99998=MISSING'
             99999 '99999=INAPP' /
   B4XOC3    99999997 '99999997=DON''T KNOW' 99999998 '99999998=MISSING'
             99999999 '99999999=INAPP' /
   B4XODD3   99999996 '99999996=MIXED DOSAGE' 99999997 '99999997=DON''T KNOW'
             99999998 '99999998=MISSING' 99999999 '99999999=INAPP' /
   B4XODU3   1 '1=MG' 2 '2=GRAMS' 3 '3=MCG' 4 '4=IU' 5 '5=MEQ' 6 '6=CC/ML'
             7 '7=TEASPOON' 8 '8=TABLET' 9 '9=CAPSULE' 10 '10=PUFF/SQUIRT'
             11 '11=UNIT' 12 '12=TABLESPOON' 13 '13=% SOLUTION/CREAM'
             14 '14=DROP' 15 '15=OTHER' 97 'DONT KNOW' 98 'MISSING'
             99 'INAPP' /
   B4XOR3    1 '1=ORAL (PO)' 2 '2=INHALED' 3 '3=TOPICAL' 4 '4=SUB Q/SUB C'
             5 '5=INTRAMUSCULAR' 6 '6=SUBLINGUAL' 7 '7=OTHER'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4XOF3    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XOFU3   1 '1=DAY' 2 '2=EVERY OTHER DAY' 3 '3=WEEK' 4 '4=MONTH'
             5 '5=AS NEEDED (PRN)' 6 '6=OTHER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4XOT3    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XOTU3   1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 5 '5=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XODC3   99997 '99997=DON''T KNOW' 99998 '99998=MISSING'
             99999 '99999=INAPP' /
   B4XOC4    99999997 '99999997=DON''T KNOW' 99999998 '99999998=MISSING'
             99999999 '99999999=INAPP' /
   B4XODD4   99999996 '99999996=MIXED DOSAGE' 99999997 '99999997=DON''T KNOW'
             99999998 '99999998=MISSING' 99999999 '99999999=INAPP' /
   B4XODU4   1 '1=MG' 2 '2=GRAMS' 3 '3=MCG' 4 '4=IU' 5 '5=MEQ' 6 '6=CC/ML'
             7 '7=TEASPOON' 8 '8=TABLET' 9 '9=CAPSULE' 10 '10=PUFF/SQUIRT'
             11 '11=UNIT' 12 '12=TABLESPOON' 13 '13=% SOLUTION/CREAM'
             14 '14=DROP' 15 '15=OTHER' 97 'DONT KNOW' 98 'MISSING'
             99 'INAPP' /
   B4XOR4    1 '1=ORAL (PO)' 2 '2=INHALED' 3 '3=TOPICAL' 4 '4=SUB Q/SUB C'
             5 '5=INTRAMUSCULAR' 6 '6=SUBLINGUAL' 7 '7=OTHER'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4XOF4    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XOFU4   1 '1=DAY' 2 '2=EVERY OTHER DAY' 3 '3=WEEK' 4 '4=MONTH'
             5 '5=AS NEEDED (PRN)' 6 '6=OTHER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4XOT4    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XOTU4   1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 5 '5=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XODC4   99997 '99997=DON''T KNOW' 99998 '99998=MISSING'
             99999 '99999=INAPP' /
   B4XOC5    99999997 '99999997=DON''T KNOW' 99999998 '99999998=MISSING'
             99999999 '99999999=INAPP' /
   B4XODD5   99999996 '99999996=MIXED DOSAGE' 99999997 '99999997=DON''T KNOW'
             99999998 '99999998=MISSING' 99999999 '99999999=INAPP' /
   B4XODU5   1 '1=MG' 2 '2=GRAMS' 3 '3=MCG' 4 '4=IU' 5 '5=MEQ' 6 '6=CC/ML'
             7 '7=TEASPOON' 8 '8=TABLET' 9 '9=CAPSULE' 10 '10=PUFF/SQUIRT'
             11 '11=UNIT' 12 '12=TABLESPOON' 13 '13=% SOLUTION/CREAM'
             14 '14=DROP' 15 '15=OTHER' 97 'DONT KNOW' 98 'MISSING'
             99 'INAPP' /
   B4XOR5    1 '1=ORAL (PO)' 2 '2=INHALED' 3 '3=TOPICAL' 4 '4=SUB Q/SUB C'
             5 '5=INTRAMUSCULAR' 6 '6=SUBLINGUAL' 7 '7=OTHER'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4XOF5    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XOFU5   1 '1=DAY' 2 '2=EVERY OTHER DAY' 3 '3=WEEK' 4 '4=MONTH'
             5 '5=AS NEEDED (PRN)' 6 '6=OTHER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4XOT5    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XOTU5   1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 5 '5=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XODC5   99997 '99997=DON''T KNOW' 99998 '99998=MISSING'
             99999 '99999=INAPP' /
   B4XOC6    99999997 '99999997=DON''T KNOW' 99999998 '99999998=MISSING'
             99999999 '99999999=INAPP' /
   B4XODD6   99999996 '99999996=MIXED DOSAGE' 99999997 '99999997=DON''T KNOW'
             99999998 '99999998=MISSING' 99999999 '99999999=INAPP' /
   B4XODU6   1 '1=MG' 2 '2=GRAMS' 3 '3=MCG' 4 '4=IU' 5 '5=MEQ' 6 '6=CC/ML'
             7 '7=TEASPOON' 8 '8=TABLET' 9 '9=CAPSULE' 10 '10=PUFF/SQUIRT'
             11 '11=UNIT' 12 '12=TABLESPOON' 13 '13=% SOLUTION/CREAM'
             14 '14=DROP' 15 '15=OTHER' 97 'DONT KNOW' 98 'MISSING'
             99 'INAPP' /
   B4XOR6    1 '1=ORAL (PO)' 2 '2=INHALED' 3 '3=TOPICAL' 4 '4=SUB Q/SUB C'
             5 '5=INTRAMUSCULAR' 6 '6=SUBLINGUAL' 7 '7=OTHER'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4XOF6    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XOFU6   1 '1=DAY' 2 '2=EVERY OTHER DAY' 3 '3=WEEK' 4 '4=MONTH'
             5 '5=AS NEEDED (PRN)' 6 '6=OTHER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4XOT6    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XOTU6   1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 5 '5=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XODC6   99997 '99997=DON''T KNOW' 99998 '99998=MISSING'
             99999 '99999=INAPP' /
   B4XOC7    99999997 '99999997=DON''T KNOW' 99999998 '99999998=MISSING'
             99999999 '99999999=INAPP' /
   B4XODD7   99999996 '99999996=MIXED DOSAGE' 99999997 '99999997=DON''T KNOW'
             99999998 '99999998=MISSING' 99999999 '99999999=INAPP' /
   B4XODU7   1 '1=MG' 2 '2=GRAMS' 3 '3=MCG' 4 '4=IU' 5 '5=MEQ' 6 '6=CC/ML'
             7 '7=TEASPOON' 8 '8=TABLET' 9 '9=CAPSULE' 10 '10=PUFF/SQUIRT'
             11 '11=UNIT' 12 '12=TABLESPOON' 13 '13=% SOLUTION/CREAM'
             14 '14=DROP' 15 '15=OTHER' 97 'DONT KNOW' 98 'MISSING'
             99 'INAPP' /
   B4XOR7    1 '1=ORAL (PO)' 2 '2=INHALED' 3 '3=TOPICAL' 4 '4=SUB Q/SUB C'
             5 '5=INTRAMUSCULAR' 6 '6=SUBLINGUAL' 7 '7=OTHER'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4XOF7    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XOFU7   1 '1=DAY' 2 '2=EVERY OTHER DAY' 3 '3=WEEK' 4 '4=MONTH'
             5 '5=AS NEEDED (PRN)' 6 '6=OTHER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4XOT7    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XOTU7   1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 5 '5=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XODC7   99997 '99997=DON''T KNOW' 99998 '99998=MISSING'
             99999 '99999=INAPP' /
   B4XOC8    99999997 '99999997=DON''T KNOW' 99999998 '99999998=MISSING'
             99999999 '99999999=INAPP' /
   B4XODD8   99999996 '99999996=MIXED DOSAGE' 99999997 '99999997=DON''T KNOW'
             99999998 '99999998=MISSING' 99999999 '99999999=INAPP' /
   B4XODU8   1 '1=MG' 2 '2=GRAMS' 3 '3=MCG' 4 '4=IU' 5 '5=MEQ' 6 '6=CC/ML'
             7 '7=TEASPOON' 8 '8=TABLET' 9 '9=CAPSULE' 10 '10=PUFF/SQUIRT'
             11 '11=UNIT' 12 '12=TABLESPOON' 13 '13=% SOLUTION/CREAM'
             14 '14=DROP' 15 '15=OTHER' 97 'DONT KNOW' 98 'MISSING'
             99 'INAPP' /
   B4XOR8    1 '1=ORAL (PO)' 2 '2=INHALED' 3 '3=TOPICAL' 4 '4=SUB Q/SUB C'
             5 '5=INTRAMUSCULAR' 6 '6=SUBLINGUAL' 7 '7=OTHER'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4XOF8    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XOFU8   1 '1=DAY' 2 '2=EVERY OTHER DAY' 3 '3=WEEK' 4 '4=MONTH'
             5 '5=AS NEEDED (PRN)' 6 '6=OTHER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4XOT8    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XOTU8   1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 5 '5=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XODC8   99997 '99997=DON''T KNOW' 99998 '99998=MISSING'
             99999 '99999=INAPP' /
   B4XOC9    99999997 '99999997=DON''T KNOW' 99999998 '99999998=MISSING'
             99999999 '99999999=INAPP' /
   B4XODD9   99999996 '99999996=MIXED DOSAGE' 99999997 '99999997=DON''T KNOW'
             99999998 '99999998=MISSING' 99999999 '99999999=INAPP' /
   B4XODU9   1 '1=MG' 2 '2=GRAMS' 3 '3=MCG' 4 '4=IU' 5 '5=MEQ' 6 '6=CC/ML'
             7 '7=TEASPOON' 8 '8=TABLET' 9 '9=CAPSULE' 10 '10=PUFF/SQUIRT'
             11 '11=UNIT' 12 '12=TABLESPOON' 13 '13=% SOLUTION/CREAM'
             14 '14=DROP' 15 '15=OTHER' 97 'DONT KNOW' 98 'MISSING'
             99 'INAPP' /
   B4XOR9    1 '1=ORAL (PO)' 2 '2=INHALED' 3 '3=TOPICAL' 4 '4=SUB Q/SUB C'
             5 '5=INTRAMUSCULAR' 6 '6=SUBLINGUAL' 7 '7=OTHER'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4XOF9    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XOFU9   1 '1=DAY' 2 '2=EVERY OTHER DAY' 3 '3=WEEK' 4 '4=MONTH'
             5 '5=AS NEEDED (PRN)' 6 '6=OTHER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4XOT9    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XOTU9   1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 5 '5=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XODC9   99997 '99997=DON''T KNOW' 99998 '99998=MISSING'
             99999 '99999=INAPP' /
   B4XOC10   99999997 '99999997=DON''T KNOW' 99999998 '99999998=MISSING'
             99999999 '99999999=INAPP' /
   B4XODD10  99999996 '99999996=MIXED DOSAGE' 99999997 '99999997=DON''T KNOW'
             99999998 '99999998=MISSING' 99999999 '99999999=INAPP' /
   B4XODU10  1 '1=MG' 2 '2=GRAMS' 3 '3=MCG' 4 '4=IU' 5 '5=MEQ' 6 '6=CC/ML'
             7 '7=TEASPOON' 8 '8=TABLET' 9 '9=CAPSULE' 10 '10=PUFF/SQUIRT'
             11 '11=UNIT' 12 '12=TABLESPOON' 13 '13=% SOLUTION/CREAM'
             14 '14=DROP' 15 '15=OTHER' 97 'DONT KNOW' 98 'MISSING'
             99 'INAPP' /
   B4XOR10   1 '1=ORAL (PO)' 2 '2=INHALED' 3 '3=TOPICAL' 4 '4=SUB Q/SUB C'
             5 '5=INTRAMUSCULAR' 6 '6=SUBLINGUAL' 7 '7=OTHER'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4XOF10   9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XOFU10  1 '1=DAY' 2 '2=EVERY OTHER DAY' 3 '3=WEEK' 4 '4=MONTH'
             5 '5=AS NEEDED (PRN)' 6 '6=OTHER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4XOT10   9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XOTU10  1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 5 '5=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XODC10  99997 '99997=DON''T KNOW' 99998 '99998=MISSING'
             99999 '99999=INAPP' /
   B4XOC11   99999997 '99999997=DON''T KNOW' 99999998 '99999998=MISSING'
             99999999 '99999999=INAPP' /
   B4XODD11  99999996 '99999996=MIXED DOSAGE' 99999997 '99999997=DON''T KNOW'
             99999998 '99999998=MISSING' 99999999 '99999999=INAPP' /
   B4XODU11  1 '1=MG' 2 '2=GRAMS' 3 '3=MCG' 4 '4=IU' 5 '5=MEQ' 6 '6=CC/ML'
             7 '7=TEASPOON' 8 '8=TABLET' 9 '9=CAPSULE' 10 '10=PUFF/SQUIRT'
             11 '11=UNIT' 12 '12=TABLESPOON' 13 '13=% SOLUTION/CREAM'
             14 '14=DROP' 15 '15=OTHER' 97 'DONT KNOW' 98 'MISSING'
             99 'INAPP' /
   B4XOR11   1 '1=ORAL (PO)' 2 '2=INHALED' 3 '3=TOPICAL' 4 '4=SUB Q/SUB C'
             5 '5=INTRAMUSCULAR' 6 '6=SUBLINGUAL' 7 '7=OTHER'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4XOF11   9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XOFU11  1 '1=DAY' 2 '2=EVERY OTHER DAY' 3 '3=WEEK' 4 '4=MONTH'
             5 '5=AS NEEDED (PRN)' 6 '6=OTHER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4XOT11   9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XOTU11  1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 5 '5=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XODC11  99997 '99997=DON''T KNOW' 99998 '99998=MISSING'
             99999 '99999=INAPP' /
   B4XOC12   99999997 '99999997=DON''T KNOW' 99999998 '99999998=MISSING'
             99999999 '99999999=INAPP' /
   B4XODD12  99999996 '99999996=MIXED DOSAGE' 99999997 '99999997=DON''T KNOW'
             99999998 '99999998=MISSING' 99999999 '99999999=INAPP' /
   B4XODU12  1 '1=MG' 2 '2=GRAMS' 3 '3=MCG' 4 '4=IU' 5 '5=MEQ' 6 '6=CC/ML'
             7 '7=TEASPOON' 8 '8=TABLET' 9 '9=CAPSULE' 10 '10=PUFF/SQUIRT'
             11 '11=UNIT' 12 '12=TABLESPOON' 13 '13=% SOLUTION/CREAM'
             14 '14=DROP' 15 '15=OTHER' 97 'DONT KNOW' 98 'MISSING'
             99 'INAPP' /
   B4XOR12   1 '1=ORAL (PO)' 2 '2=INHALED' 3 '3=TOPICAL' 4 '4=SUB Q/SUB C'
             5 '5=INTRAMUSCULAR' 6 '6=SUBLINGUAL' 7 '7=OTHER'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4XOF12   9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XOFU12  1 '1=DAY' 2 '2=EVERY OTHER DAY' 3 '3=WEEK' 4 '4=MONTH'
             5 '5=AS NEEDED (PRN)' 6 '6=OTHER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4XOT12   9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XOTU12  1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 5 '5=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XODC12  99997 '99997=DON''T KNOW' 99998 '99998=MISSING'
             99999 '99999=INAPP' /
   B4XAM     97 '97=DON''T KNOW''' 98 '98=MISSING' 99 '99=INAPP' /
   B4XAC1    999997 '999997=DON''T KNOW' 999998 '999998=MISSING'
             999999 '999999=INAPP' /
   B4XADD1   99999996 '99999996=MIXED DOSAGE' 99999997 '99999997=DON''T KNOW'
             99999998 '99999998=MISSING' 99999999 '99999999=INAPP' /
   B4XADU1   1 '1=MG' 2 '2=GRAMS' 3 '3=MCG' 4 '4=IU' 5 '5=MEQ' 6 '6=CC/ML'
             7 '7=TEASPOON' 8 '8=TABLET' 9 '9=CAPSULE' 10 '10=PUFF/SQUIRT'
             11 '11=UNIT' 12 '12=TABLESPOON' 13 '13=% SOLUTION/CREAM'
             14 '14=DROP' 15 '15=OTHER' 97 'DONT KNOW' 98 'MISSING'
             99 'INAPP' /
   B4XAR1    1 '1=ORAL (PO)' 2 '2=INHALED' 3 '3=TOPICAL' 4 '4=SUB Q/SUB C'
             5 '5=INTRAMUSCULAR' 6 '6=SUBLINGUAL' 7 '7=OTHER'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4XAF1    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XAFU1   1 '1=DAY' 2 '2=EVERY OTHER DAY' 3 '3=WEEK' 4 '4=MONTH'
             5 '5=AS NEEDED (PRN)' 6 '6=OTHER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4XAT1    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XATU1   1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 5 '5=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XADC1   99997 '99997=DON''T KNOW' 99998 '99998=MISSING'
             99999 '99999=INAPP' /
   B4XAC2    999997 '999997=DON''T KNOW' 999998 '999998=MISSING'
             999999 '999999=INAPP' /
   B4XADD2   99999996 '99999996=MIXED DOSAGE' 99999997 '99999997=DON''T KNOW'
             99999998 '99999998=MISSING' 99999999 '99999999=INAPP' /
   B4XADU2   1 '1=MG' 2 '2=GRAMS' 3 '3=MCG' 4 '4=IU' 5 '5=MEQ' 6 '6=CC/ML'
             7 '7=TEASPOON' 8 '8=TABLET' 9 '9=CAPSULE' 10 '10=PUFF/SQUIRT'
             11 '11=UNIT' 12 '12=TABLESPOON' 13 '13=% SOLUTION/CREAM'
             14 '14=DROP' 15 '15=OTHER' 97 'DONT KNOW' 98 'MISSING'
             99 'INAPP' /
   B4XAR2    1 '1=ORAL (PO)' 2 '2=INHALED' 3 '3=TOPICAL' 4 '4=SUB Q/SUB C'
             5 '5=INTRAMUSCULAR' 6 '6=SUBLINGUAL' 7 '7=OTHER'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4XAF2    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XAFU2   1 '1=DAY' 2 '2=EVERY OTHER DAY' 3 '3=WEEK' 4 '4=MONTH'
             5 '5=AS NEEDED (PRN)' 6 '6=OTHER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4XAT2    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XATU2   1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 5 '5=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XADC2   99997 '99997=DON''T KNOW' 99998 '99998=MISSING'
             99999 '99999=INAPP' /
   B4XAC3    999997 '999997=DON''T KNOW' 999998 '999998=MISSING'
             999999 '999999=INAPP' /
   B4XADD3   99999996 '99999996=MIXED DOSAGE' 99999997 '99999997=DON''T KNOW'
             99999998 '99999998=MISSING' 99999999 '99999999=INAPP' /
   B4XADU3   1 '1=MG' 2 '2=GRAMS' 3 '3=MCG' 4 '4=IU' 5 '5=MEQ' 6 '6=CC/ML'
             7 '7=TEASPOON' 8 '8=TABLET' 9 '9=CAPSULE' 10 '10=PUFF/SQUIRT'
             11 '11=UNIT' 12 '12=TABLESPOON' 13 '13=% SOLUTION/CREAM'
             14 '14=DROP' 15 '15=OTHER' 97 'DONT KNOW' 98 'MISSING'
             99 'INAPP' /
   B4XAR3    1 '1=ORAL (PO)' 2 '2=INHALED' 3 '3=TOPICAL' 4 '4=SUB Q/SUB C'
             5 '5=INTRAMUSCULAR' 6 '6=SUBLINGUAL' 7 '7=OTHER'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4XAF3    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XAFU3   1 '1=DAY' 2 '2=EVERY OTHER DAY' 3 '3=WEEK' 4 '4=MONTH'
             5 '5=AS NEEDED (PRN)' 6 '6=OTHER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4XAT3    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XATU3   1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 5 '5=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XADC3   99997 '99997=DON''T KNOW' 99998 '99998=MISSING'
             99999 '99999=INAPP' /
   B4XAC4    999997 '999997=DON''T KNOW' 999998 '999998=MISSING'
             999999 '999999=INAPP' /
   B4XADD4   99999996 '99999996=MIXED DOSAGE' 99999997 '99999997=DON''T KNOW'
             99999998 '99999998=MISSING' 99999999 '99999999=INAPP' /
   B4XADU4   1 '1=MG' 2 '2=GRAMS' 3 '3=MCG' 4 '4=IU' 5 '5=MEQ' 6 '6=CC/ML'
             7 '7=TEASPOON' 8 '8=TABLET' 9 '9=CAPSULE' 10 '10=PUFF/SQUIRT'
             11 '11=UNIT' 12 '12=TABLESPOON' 13 '13=% SOLUTION/CREAM'
             14 '14=DROP' 15 '15=OTHER' 97 'DONT KNOW' 98 'MISSING'
             99 'INAPP' /
   B4XAR4    1 '1=ORAL (PO)' 2 '2=INHALED' 3 '3=TOPICAL' 4 '4=SUB Q/SUB C'
             5 '5=INTRAMUSCULAR' 6 '6=SUBLINGUAL' 7 '7=OTHER'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4XAF4    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XAFU4   1 '1=DAY' 2 '2=EVERY OTHER DAY' 3 '3=WEEK' 4 '4=MONTH'
             5 '5=AS NEEDED (PRN)' 6 '6=OTHER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4XAT4    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XATU4   1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 5 '5=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XADC4   99997 '99997=DON''T KNOW' 99998 '99998=MISSING'
             99999 '99999=INAPP' /
   B4XAC5    999997 '999997=DON''T KNOW' 999998 '999998=MISSING'
             999999 '999999=INAPP' /
   B4XADD5   99999996 '99999996=MIXED DOSAGE' 99999997 '99999997=DON''T KNOW'
             99999998 '99999998=MISSING' 99999999 '99999999=INAPP' /
   B4XADU5   1 '1=MG' 2 '2=GRAMS' 3 '3=MCG' 4 '4=IU' 5 '5=MEQ' 6 '6=CC/ML'
             7 '7=TEASPOON' 8 '8=TABLET' 9 '9=CAPSULE' 10 '10=PUFF/SQUIRT'
             11 '11=UNIT' 12 '12=TABLESPOON' 13 '13=% SOLUTION/CREAM'
             14 '14=DROP' 15 '15=OTHER' 97 'DONT KNOW' 98 'MISSING'
             99 'INAPP' /
   B4XAR5    1 '1=ORAL (PO)' 2 '2=INHALED' 3 '3=TOPICAL' 4 '4=SUB Q/SUB C'
             5 '5=INTRAMUSCULAR' 6 '6=SUBLINGUAL' 7 '7=OTHER'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4XAF5    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XAFU5   1 '1=DAY' 2 '2=EVERY OTHER DAY' 3 '3=WEEK' 4 '4=MONTH'
             5 '5=AS NEEDED (PRN)' 6 '6=OTHER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4XAT5    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XATU5   1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 5 '5=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XADC5   99997 '99997=DON''T KNOW' 99998 '99998=MISSING'
             99999 '99999=INAPP' /
   B4XAC6    999997 '999997=DON''T KNOW' 999998 '999998=MISSING'
             999999 '999999=INAPP' /
   B4XADD6   99999996 '99999996=MIXED DOSAGE' 99999997 '99999997=DON''T KNOW'
             99999998 '99999998=MISSING' 99999999 '99999999=INAPP' /
   B4XADU6   1 '1=MG' 2 '2=GRAMS' 3 '3=MCG' 4 '4=IU' 5 '5=MEQ' 6 '6=CC/ML'
             7 '7=TEASPOON' 8 '8=TABLET' 9 '9=CAPSULE' 10 '10=PUFF/SQUIRT'
             11 '11=UNIT' 12 '12=TABLESPOON' 13 '13=% SOLUTION/CREAM'
             14 '14=DROP' 15 '15=OTHER' 97 'DONT KNOW' 98 'MISSING'
             99 'INAPP' /
   B4XAR6    1 '1=ORAL (PO)' 2 '2=INHALED' 3 '3=TOPICAL' 4 '4=SUB Q/SUB C'
             5 '5=INTRAMUSCULAR' 6 '6=SUBLINGUAL' 7 '7=OTHER'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4XAF6    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XAFU6   1 '1=DAY' 2 '2=EVERY OTHER DAY' 3 '3=WEEK' 4 '4=MONTH'
             5 '5=AS NEEDED (PRN)' 6 '6=OTHER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4XAT6    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XATU6   1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 5 '5=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XADC6   99997 '99997=DON''T KNOW' 99998 '99998=MISSING'
             99999 '99999=INAPP' /
   B4XAC7    999997 '999997=DON''T KNOW' 999998 '999998=MISSING'
             999999 '999999=INAPP' /
   B4XADD7   99999996 '99999996=MIXED DOSAGE' 99999997 '99999997=DON''T KNOW'
             99999998 '99999998=MISSING' 99999999 '99999999=INAPP' /
   B4XADU7   1 '1=MG' 2 '2=GRAMS' 3 '3=MCG' 4 '4=IU' 5 '5=MEQ' 6 '6=CC/ML'
             7 '7=TEASPOON' 8 '8=TABLET' 9 '9=CAPSULE' 10 '10=PUFF/SQUIRT'
             11 '11=UNIT' 12 '12=TABLESPOON' 13 '13=% SOLUTION/CREAM'
             14 '14=DROP' 15 '15=OTHER' 97 'DONT KNOW' 98 'MISSING'
             99 'INAPP' /
   B4XAR7    1 '1=ORAL (PO)' 2 '2=INHALED' 3 '3=TOPICAL' 4 '4=SUB Q/SUB C'
             5 '5=INTRAMUSCULAR' 6 '6=SUBLINGUAL' 7 '7=OTHER'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4XAF7    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XAFU7   1 '1=DAY' 2 '2=EVERY OTHER DAY' 3 '3=WEEK' 4 '4=MONTH'
             5 '5=AS NEEDED (PRN)' 6 '6=OTHER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4XAT7    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XATU7   1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 5 '5=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XADC7   99997 '99997=DON''T KNOW' 99998 '99998=MISSING'
             99999 '99999=INAPP' /
   B4XAC8    999997 '999997=DON''T KNOW' 999998 '999998=MISSING'
             999999 '999999=INAPP' /
   B4XADD8   99999996 '99999996=MIXED DOSAGE' 99999997 '99999997=DON''T KNOW'
             99999998 '99999998=MISSING' 99999999 '99999999=INAPP' /
   B4XADU8   1 '1=MG' 2 '2=GRAMS' 3 '3=MCG' 4 '4=IU' 5 '5=MEQ' 6 '6=CC/ML'
             7 '7=TEASPOON' 8 '8=TABLET' 9 '9=CAPSULE' 10 '10=PUFF/SQUIRT'
             11 '11=UNIT' 12 '12=TABLESPOON' 13 '13=% SOLUTION/CREAM'
             14 '14=DROP' 15 '15=OTHER' 97 'DONT KNOW' 98 'MISSING'
             99 'INAPP' /
   B4XAR8    1 '1=ORAL (PO)' 2 '2=INHALED' 3 '3=TOPICAL' 4 '4=SUB Q/SUB C'
             5 '5=INTRAMUSCULAR' 6 '6=SUBLINGUAL' 7 '7=OTHER'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4XAF8    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XAFU8   1 '1=DAY' 2 '2=EVERY OTHER DAY' 3 '3=WEEK' 4 '4=MONTH'
             5 '5=AS NEEDED (PRN)' 6 '6=OTHER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4XAT8    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XATU8   1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 5 '5=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XADC8   99997 '99997=DON''T KNOW' 99998 '99998=MISSING'
             99999 '99999=INAPP' /
   B4XAC9    999997 '999997=DON''T KNOW' 999998 '999998=MISSING'
             999999 '999999=INAPP' /
   B4XADD9   99999996 '99999996=MIXED DOSAGE' 99999997 '99999997=DON''T KNOW'
             99999998 '99999998=MISSING' 99999999 '99999999=INAPP' /
   B4XADU9   1 '1=MG' 2 '2=GRAMS' 3 '3=MCG' 4 '4=IU' 5 '5=MEQ' 6 '6=CC/ML'
             7 '7=TEASPOON' 8 '8=TABLET' 9 '9=CAPSULE' 10 '10=PUFF/SQUIRT'
             11 '11=UNIT' 12 '12=TABLESPOON' 13 '13=% SOLUTION/CREAM'
             14 '14=DROP' 15 '15=OTHER' 97 'DONT KNOW' 98 'MISSING'
             99 'INAPP' /
   B4XAR9    1 '1=ORAL (PO)' 2 '2=INHALED' 3 '3=TOPICAL' 4 '4=SUB Q/SUB C'
             5 '5=INTRAMUSCULAR' 6 '6=SUBLINGUAL' 7 '7=OTHER'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4XAF9    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XAFU9   1 '1=DAY' 2 '2=EVERY OTHER DAY' 3 '3=WEEK' 4 '4=MONTH'
             5 '5=AS NEEDED (PRN)' 6 '6=OTHER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4XAT9    9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XATU9   1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 5 '5=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XADC9   99997 '99997=DON''T KNOW' 99998 '99998=MISSING'
             99999 '99999=INAPP' /
   B4XAC10   999997 '999997=DON''T KNOW' 999998 '999998=MISSING'
             999999 '999999=INAPP' /
   B4XADD10  99999996 '99999996=MIXED DOSAGE' 99999997 '99999997=DON''T KNOW'
             99999998 '99999998=MISSING' 99999999 '99999999=INAPP' /
   B4XADU10  1 '1=MG' 2 '2=GRAMS' 3 '3=MCG' 4 '4=IU' 5 '5=MEQ' 6 '6=CC/ML'
             7 '7=TEASPOON' 8 '8=TABLET' 9 '9=CAPSULE' 10 '10=PUFF/SQUIRT'
             11 '11=UNIT' 12 '12=TABLESPOON' 13 '13=% SOLUTION/CREAM'
             14 '14=DROP' 15 '15=OTHER' 97 'DONT KNOW' 98 'MISSING'
             99 'INAPP' /
   B4XAR10   1 '1=ORAL (PO)' 2 '2=INHALED' 3 '3=TOPICAL' 4 '4=SUB Q/SUB C'
             5 '5=INTRAMUSCULAR' 6 '6=SUBLINGUAL' 7 '7=OTHER'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4XAF10   9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XAFU10  1 '1=DAY' 2 '2=EVERY OTHER DAY' 3 '3=WEEK' 4 '4=MONTH'
             5 '5=AS NEEDED (PRN)' 6 '6=OTHER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4XAT10   9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XATU10  1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 5 '5=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XADC10  99997 '99997=DON''T KNOW' 99998 '99998=MISSING'
             99999 '99999=INAPP' /
   B4XAC11   999997 '999997=DON''T KNOW' 999998 '999998=MISSING'
             999999 '999999=INAPP' /
   B4XADD11  99999996 '99999996=MIXED DOSAGE' 99999997 '99999997=DON''T KNOW'
             99999998 '99999998=MISSING' 99999999 '99999999=INAPP' /
   B4XADU11  1 '1=MG' 2 '2=GRAMS' 3 '3=MCG' 4 '4=IU' 5 '5=MEQ' 6 '6=CC/ML'
             7 '7=TEASPOON' 8 '8=TABLET' 9 '9=CAPSULE' 10 '10=PUFF/SQUIRT'
             11 '11=UNIT' 12 '12=TABLESPOON' 13 '13=% SOLUTION/CREAM'
             14 '14=DROP' 15 '15=OTHER' 97 'DONT KNOW' 98 'MISSING'
             99 'INAPP' /
   B4XAR11   1 '1=ORAL (PO)' 2 '2=INHALED' 3 '3=TOPICAL' 4 '4=SUB Q/SUB C'
             5 '5=INTRAMUSCULAR' 6 '6=SUBLINGUAL' 7 '7=OTHER'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4XAF11   9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XAFU11  1 '1=DAY' 2 '2=EVERY OTHER DAY' 3 '3=WEEK' 4 '4=MONTH'
             5 '5=AS NEEDED (PRN)' 6 '6=OTHER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4XAT11   9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XATU11  1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 5 '5=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XADC11  99997 '99997=DON''T KNOW' 99998 '99998=MISSING'
             99999 '99999=INAPP' /
   B4XAC12   999997 '999997=DON''T KNOW' 999998 '999998=MISSING'
             999999 '999999=INAPP' /
   B4XADD12  99999996 '99999996=MIXED DOSAGE' 99999997 '99999997=DON''T KNOW'
             99999998 '99999998=MISSING' 99999999 '99999999=INAPP' /
   B4XADU12  1 '1=MG' 2 '2=GRAMS' 3 '3=MCG' 4 '4=IU' 5 '5=MEQ' 6 '6=CC/ML'
             7 '7=TEASPOON' 8 '8=TABLET' 9 '9=CAPSULE' 10 '10=PUFF/SQUIRT'
             11 '11=UNIT' 12 '12=TABLESPOON' 13 '13=% SOLUTION/CREAM'
             14 '14=DROP' 15 '15=OTHER' 97 'DONT KNOW' 98 'MISSING'
             99 'INAPP' /
   B4XAR12   1 '1=ORAL (PO)' 2 '2=INHALED' 3 '3=TOPICAL' 4 '4=SUB Q/SUB C'
             5 '5=INTRAMUSCULAR' 6 '6=SUBLINGUAL' 7 '7=OTHER'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4XAF12   9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XAFU12  1 '1=DAY' 2 '2=EVERY OTHER DAY' 3 '3=WEEK' 4 '4=MONTH'
             5 '5=AS NEEDED (PRN)' 6 '6=OTHER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4XAT12   9997 '9997=DON''T KNOW' 9998 '9998=MISSING' 9999 '9999=INAPP' /
   B4XATU12  1 '1=DAY' 2 '2=WEEK' 3 '3=MONTH' 4 '4=YEAR' 5 '5=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XADC12  99997 '99997=DON''T KNOW' 99998 '99998=MISSING'
             99999 '99999=INAPP' /
   B4XM      1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4XMM     97 '97=DON''T KNOW''' 98 '98=MISSING' 99 '99=INAPP' /
   B4XMC1    99999997 'DON''T KNOW' 99999998 'MISSING' 99999999 'INAPP' /
   B4XMC2    99999997 'DON''T KNOW' 99999998 'MISSING' 99999999 'INAPP' /
   B4XMC3    99999997 'DON''T KNOW' 99999998 'MISSING' 99999999 'INAPP' /
   B4XMC4    99999997 'DON''T KNOW' 99999998 'MISSING' 99999999 'INAPP' /
   B4XMC5    99999997 'DON''T KNOW' 99999998 'MISSING' 99999999 'INAPP' /
   B4XMC6    99999997 'DON''T KNOW' 99999998 'MISSING' 99999999 'INAPP' /
   B4XMC7    99999997 'DON''T KNOW' 99999998 'MISSING' 99999999 'INAPP' /
   B4XMC8    99999997 'DON''T KNOW' 99999998 'MISSING' 99999999 'INAPP' /
   B4XXM     1 'NO ADDITIONAL MEDS' 2 'ADDITIONAL RX MEDS'
             3 'ADDITIONAL OTC MEDS' 4 'ADDITIONAL ALT MEDS'
             5 'ADDITIONAL OTC & ALT MEDS' 6 'ADDITIONAL ALLERGY' /
   B4PWHRF   1 'LT 4 STDS' 2 'GE 4 STDS' 8 'MISSING' /
   B4P1A     999997 'DONT KNOW' 999998 'MISSING' 999999 'INAPP' /
   B4P1B     99997 'DONT KNOW' 99998 'MISSING' 99999 'INAPP' /
   B4PBMI    999997 'DONT KNOW' 999998 'MISSING' 999999 'INAPP' /
   B4P1C     9997 'DONT KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4P1D     997 'DONT KNOW' 998 'MISSING' 999 'INAPP' /
   B4P1E     97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4P1F1S   997 'DONT KNOW' 998 'MISSING' 999 'INAPP' /
   B4P1F1D   997 'DONT KNOW' 998 'MISSING' 999 'INAPP' /
   B4P1F2S   997 'DONT KNOW' 998 'MISSING' 999 'INAPP' /
   B4P1F2D   997 'DONT KNOW' 998 'MISSING' 999 'INAPP' /
   B4P1F3S   997 'DONT KNOW' 998 'MISSING' 999 'INAPP' /
   B4P1F3D   997 'DONT KNOW' 998 'MISSING' 999 'INAPP' /
   B4P1GS    997 'DONT KNOW' 998 'MISSING' 999 'INAPP' /
   B4P1GD    997 'DONT KNOW' 998 'MISSING' 999 'INAPP' /
   B4P1GS23  997 'DONT KNOW' 998 'MISSING' 999 'INAPP' /
   B4P1GD23  997 'DONT KNOW' 998 'MISSING' 999 'INAPP' /
   B4P2A     999997 'DONT KNOW' 999998 'MISSING' 999999 'INAPP' /
   B4P2B     999997 'DONT KNOW' 999998 'MISSING' 999999 'INAPP' /
   B4P2C     999997 'DONT KNOW' 999998 'MISSING' 999999 'INAPP' /
   B4P2D     999997 'DONT KNOW' 999998 'MISSING' 999999 'INAPP' /
   B4PWHR    999997 'DONT KNOW' 999998 'MISSING' 999999 'INAPP' /
   B4P3A     1 '1=RIGHT' 2 '2=LEFT' 3 '3=AMBIDEXTROUS' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4P3A1    1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4P3A2R1  97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4P3A2R2  97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4P3A2R3  97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4P3A2L1  97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4P3A2L2  97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4P3A2L3  97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4P3B1    1 '1=YES, BOTH' 2 '2=RIGHT ONLY' 3 '3=LEFT ONLY'
             4 '4=NO,NEITHER' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4P3B2R   997 'DONT KNOW' 998 'MISSING' 999 'INAPP' /
   B4P3B2L   997 'DONT KNOW' 998 'MISSING' 999 'INAPP' /
   B4P3B3R   1 'BLIND/VISION IMPAIRED' 2 'SURGICALLY CORRECTED'
             3 'ARTIFICIAL LENS/EYE' 4 'WOULDNT REMOVE CONTACTS' 8 'MISSING'
             9 'INAPP' /
   B4P3B4    1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4P3B4A   1 'GLASSES/CONTACTS' 2 'BIFOCALS' 3 'TRIFOCALS'
             4 'PROGRESSIVE LENS' 5 'READING' 6 'DISTANCE' 7 'OTHERS'
             97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4P3B5R   997 'DONT KNOW' 998 'MISSING' 999 'INAPP' /
   B4P3B5L   997 'DONT KNOW' 998 'MISSING' 999 'INAPP' /
   B4P3B6    1 '1=AVAILABLE' 2 '2=NOT AVAILABLE' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4P3C1    1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4P3C2    997 'DONT KNOW' 998 'MISSING' 999 'INAPP' /
   B4P3C3    1 '1=STANDING' 2 '2=SITTING' 7 '7=DON''T KNOW' 8 '8=MISSING'
             9 '9=INAPP' /
   B4P3D     1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4P3E     1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4P3F     1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4P3G     1 '1=WALKER' 2 '2=CRUTCHES' 3 '3=CANE' 4 '4=OTHER'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4P3H1R   1 'UNSTEADY/FALL RISK' 2 'PAIN' 3 'LEGALLY BLIND' 8 'MISSING'
             9 'INAPP' /
   B4P3H2    97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4P3H3    97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4P3I1    1 '1=Yes' 2 '2=No' 7 '7=Dont know' 8 '8=Missing' 9 '9=N/A' /
   B4P3I2    97 'DONT KNOW' 98 'MISSING' 99 'INAPP' /
   B4P3I3R   1 'BACK PROBLEM' 2 'KNEE PROBLEM' 3 'HIP PROBLEM'
             4 'GENERAL PAIN' 5 'NOT PHYSICALLY ABLE' 8 'MISSING' 9 'INAPP' /
   B4PMD     1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P4B     1 '1=RELAXED' 2 '2=AVERAGE' 3 '3=NERVOUS' 4 '4=DEPRESSED MOOD'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP' /
   B4P5A1    1 '1=NORMAL' 2 '2=DECREASED' 3 '3=MIN-FRONTAL BALDING'
             4 '4=MOD-FRONTAL BALDING' 5 '5=TOTAL-FRONTAL BALDING'
             6 '6=PATCHY ALOPECIA' 7 '7=WIG' 8 '8=TOTAL BALDNESS'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=IN APP' /
   B4P5A2    1 '1=AVERAGE' 2 '2=THINNER' 3 '3=THICKER' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=IN APP' /
   B4P5A3    1 '1=BROWN' 2 '2=BLOND' 3 '3=RED' 4 '4=GREY' 5 '5=DYED'
             6 '6=BLACK' 7 '7=OTHER' 97 '97=DONT KNOW' 98 '98=MISSING'
             99 '99=INAPP' /
   B4P5A4    1 '1=NONE' 2 '2=<25%' 3 '3=25%' 4 '4=50%' 5 '5=75%' 6 '6=100%'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4P5B     1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P5B1    1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P5B2    1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P5B3    1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P5B4    1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P5B5    1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P5B6    1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P5B7    1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P5B8    1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P5B9    1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P5B10   1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P5B11   1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P5B12   1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P5B13   1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4P5B14   1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4P5B15   1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4P5B16   1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4P5B17   1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P6A1    1 '1=NORMAL' 2 '2=R, DECREASED' 3 '3=L, DECREASED'
             4 '4=BOTH, DECREASED' 7 '7=DON''T KNOW' 8 '8=MISSING'
             9 '9=IN APP' /
   B4P6A2    1 '1=NORMAL' 2 '2=R, DECREASED' 3 '3=L, DECREASED'
             4 '4=BOTH, DECREASED' 7 '7=DON''T KNOW' 8 '8=MISSING'
             9 '9=IN APP' /
   B4P6B     1 '1=NORMAL' 2 '2=R, DECREASED' 3 '3=L, DECREASED'
             4 '4=BOTH, DECREASED' 7 '7=DON''T KNOW' 8 '8=MISSING'
             9 '9=IN APP' /
   B4P6C     1 '1=NONE' 2 '2=RIGHT EAR' 3 '3=LEFT EAR' 4 '4=BOTH EARS'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP' /
   B4P6D1    1 '1=NO CREASE' 2 '2=RIGHT CREASE' 3 '3=LEFT CREASE'
             4 '4=BOTH CREASE' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP' /
   B4P6D2    1 '1=NONE' 2 '2=RIGHT ONLY' 3 '3=LEFT ONLY' 4 '4=BOTH'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP' /
   B4P6D3    1 '1=NONE' 2 '2=RIGHT ONLY' 3 '3=LEFT ONLY' 4 '4=BOTH'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP' /
   B4P6D4    1 '1=NONE' 2 '2=RIGHT ONLY' 3 '3=LEFT ONLY' 4 '4=BOTH'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP' /
   B4P6E1    1 '1=BOTH NORMAL' 2 '2=RT NORMAL' 3 '3=LT NORMAL'
             4 '4=BOTH ABNORMAL' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P6E2    1 '1=NONE' 2 '2=RIGHT ONLY' 3 '3=LEFT ONLY' 4 '4=BOTH'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP' /
   B4P6E3    1 '1=NONE' 2 '2=RIGHT ONLY' 3 '3=LEFT ONLY' 4 '4=BOTH'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP' /
   B4P6E4    1 '1=NONE' 2 '2=RIGHT ONLY' 3 '3=LEFT ONLY' 4 '4=BOTH'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP' /
   B4P6E4R   1 '1=0%' 2 '2=25%' 3 '3=50%' 4 '4=75%' 5 '5=100%'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4P6E4L   1 '1=0%' 2 '2=25%' 3 '3=50%' 4 '4=75%' 5 '5=100%'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4P6F1    1 '1=AVERAGE' 2 '2=RIGHT ABNORMAL' 3 '3=LEFT ABNORMAL'
             4 '4=BOTH ABNORMAL' 5 '5=RIGHT NOT VISIBLE'
             6 '6=LEFT NOT VISIBLE' 7 '7=BOTH NOT VISIBLE'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '9=IN APP' /
   B4P6F2    1 '1=NONE' 2 '2=RIGHT ONLY' 3 '3=LEFT ONLY' 4 '4=BOTH'
             5 '5=RIGHT NOT VISIBLE' 6 '6=LEFT NOT VISIBLE'
             7 '7=BOTH NOT VISIBLE' 97 '97=DON''T KNOW' 98 '98=MISSING'
             99 '9=IN APP' /
   B4P6F3    1 '1=NONE' 2 '2=RIGHT ONLY' 3 '3=LEFT ONLY' 4 '4=BOTH'
             5 '5=RIGHT NOT VISIBLE' 6 '6=LEFT NOT VISIBLE'
             7 '7=BOTH NOT VISIBLE' 97 '97=DON''T KNOW' 98 '98=MISSING'
             99 '99=IN APP' /
   B4P6F4    1 '1=NONE' 2 '2=RIGHT ONLY' 3 '3=LEFT ONLY' 4 '4=BOTH'
             5 '5=RIGHT NOT VISIBLE' 6 '6=LEFT NOT VISIBLE'
             7 '7=BOTH NOT VISIBLE' 97 '97=DON''T KNOW' 98 '98=MISSING'
             99 '99=IN APP' /
   B4P6F5    1 '1=NONE' 2 '2=RIGHT ONLY' 3 '3=LEFT ONLY' 4 '4=BOTH'
             5 '5=RIGHT NOT VISIBLE' 6 '6=LEFT NOT VISIBLE'
             7 '7=BOTH NOT VISIBLE' 97 '97=DON''T KNOW' 98 '98=MISSING'
             99 '9=IN APP' /
   B4P7A     1 '1=NORMAL' 2 '2=ABNORMAL' 7 '7=DON''T KNOW' 8 '8=MISSING'
             9 '9=IN APP' /
   B4P7A1R   1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P7A1L   1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P7A2R   1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P7A2L   1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P8A     97 'DON''T KNOW' 98 'MISSING' 99 'IN APP' /
   B4P8B1    1 '1=NONE' 2 '2=10%' 3 '3=25%' 4 '4=50%' 5 '5=75%' 6 '6=100%'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4P8B2    1 '1=NONE' 2 '2=10%' 3 '3=25%' 4 '4=50%' 5 '5=75%' 6 '6=100%'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4P8B3    1 '1=EXCELLENT' 2 '2=MODERATE MALALIGNMENT'
             3 '3=EXTENSIVE MALALIGNMENT' 7 '7=DON''T KNOW' 8 '8=MISSING'
             9 '9=IN APP' /
   B4P8B4    1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P8B5    1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P8B6    1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P8B7    1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P8C1AD  1 '1=YES, ADULT' 2 '2=NO, YOUNGER THAN 18' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4P8C1A   97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4P8C1HO  1 '1=DECAY/ABSCESS' 2 '2=GUM DISEASE' 3 '3=TRAUMA'
             4 '4=BONE LOSS (BECAME LOOSE)' 5 '5=WISDOM TEETH EXTRACTION'
             6 '6=CROWDING' 7 '7=CRACKED' 8 '8=OTHER' 97 '97=DON''T KNOW'
             98 '98=MISSING' 99 '99=INAPP' /
   B4P8C2AD  1 '1=YES, ADULT' 2 '2=NO, YOUNGER THAN 18' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=INAPP' /
   B4P8C2A   97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=INAPP' /
   B4P8C2HO  1 '1=DECAY/ABSCESS' 2 '2=GUM DISEASE' 3 '3=TRAUMA'
             4 '4=BONE LOSS (BECAME LOOSE)' 5 '5=WISDOM TEETH EXTRACTION'
             6 '6=CROWDING' 7 '7=CRACKED' 8 '8=OTHER' 97 '97=DON''T KNOW'
             98 '98=MISSING' 99 '99=INAPP' /
   B4P8D     1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P9A     1 '1=FULL' 2 '2=RESTRICTED' 7 '7=DON''T KNOW' 8 '8=MISSING'
             9 '9=IN APP' /
   B4P9A1    1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P9A2    1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P9A3    1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P9A4    1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P9B     1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P9C     1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P9D     1 '1=AVERAGE' 2 '2=ABNORMAL' 3 '3=REMOVED' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=IN APP' /
   B4P9D1    1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P9D2    1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P9D3    1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P9D3N   97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=IN APP' /
   B4P9D3S   997 '997=DON''T KNOW' 998 '998=MISSING' 999 '999=INAPP' /
   B4P10A1   1 '1=NONE' 2 '2=RIGHT' 3 '3=LEFT' 4 '4=BOTH' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=IN APP' /
   B4P10A2   1 '1=REGULAR' 2 '2=IRREGULAR' 3 '3=REGULARLY IRREGULAR'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP' /
   B4P10A3   1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P10A4   1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P10B1   1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P10B2   7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP' /
   B4P10B2A  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P10B2B  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P10B3   7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP' /
   B4P10C    1 '1=NORMAL' 2 '2=THRILL' 3 '3=BISFERENS' 4 '4=ALTERNANS'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=INAPP' /
   B4P10C1R  0 '0-NOT DETECTABLE' 1 '1-DECREASED' 2 '2-NORMAL'
             3 '3-INCREASED' 4 '4-GREATLY INCREASED' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=IN APP' /
   B4P10C1L  0 '0-NOT DETECTABLE' 1 '1-DECREASED' 2 '2-NORMAL'
             3 '3-INCREASED' 4 '4-GREATLY INCREASED' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=IN APP' /
   B4P10C2R  0 '0-NOT DETECTABLE' 1 '1-DECREASED' 2 '2-NORMAL'
             3 '3-INCREASED' 4 '4-GREATLY INCREASED' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=IN APP' /
   B4P10C2L  0 '0-NOT DETECTABLE' 1 '1-DECREASED' 2 '2-NORMAL'
             3 '3-INCREASED' 4 '4-GREATLY INCREASED' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=IN APP' /
   B4P10C3R  0 '0-NOT DETECTABLE' 1 '1-DECREASED' 2 '2-NORMAL'
             3 '3-INCREASED' 4 '4-GREATLY INCREASED' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=IN APP' /
   B4P10C3L  0 '0-NOT DETECTABLE' 1 '1-DECREASED' 2 '2-NORMAL'
             3 '3-INCREASED' 4 '4-GREATLY INCREASED' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=IN APP' /
   B4P10C4R  0 '0-NOT DETECTABLE' 1 '1-DECREASED' 2 '2-NORMAL'
             3 '3-INCREASED' 4 '4-GREATLY INCREASED' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=IN APP' /
   B4P10C4L  0 '0-NOT DETECTABLE' 1 '1-DECREASED' 2 '2-NORMAL'
             3 '3-INCREASED' 4 '4-GREATLY INCREASED' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=IN APP' /
   B4P10C5R  0 '0-NOT DETECTABLE' 1 '1-DECREASED' 2 '2-NORMAL'
             3 '3-INCREASED' 4 '4-GREATLY INCREASED' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=IN APP' /
   B4P10C5L  0 '0-NOT DETECTABLE' 1 '1-DECREASED' 2 '2-NORMAL'
             3 '3-INCREASED' 4 '4-GREATLY INCREASED' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=IN APP' /
   B4P10C6R  0 '0-NOT DETECTABLE' 1 '1-DECREASED' 2 '2-NORMAL'
             3 '3-INCREASED' 4 '4-GREATLY INCREASED' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=IN APP' /
   B4P10C6L  0 '0-NOT DETECTABLE' 1 '1-DECREASED' 2 '2-NORMAL'
             3 '3-INCREASED' 4 '4-GREATLY INCREASED' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=IN APP' /
   B4P10C7R  0 '0-NOT DETECTABLE' 1 '1-DECREASED' 2 '2-NORMAL'
             3 '3-INCREASED' 4 '4-GREATLY INCREASED' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=IN APP' /
   B4P10C7L  0 '0-NOT DETECTABLE' 1 '1-DECREASED' 2 '2-NORMAL'
             3 '3-INCREASED' 4 '4-GREATLY INCREASED' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=IN APP' /
   B4P11A1   1 '1=AVERAGE' 2 '2=ABNORMAL' 7 '7=DON''T KNOW' 8 '8=MISSING'
             9 '9=IN APP' /
   B4P11B    1 '1=NORMAL' 2 '2=SLOW' 3 '3=RAPID-DEEP' 4 '4=RAPID-SHALLOW'
             5 '5=CHEYNE-STOKES' 6 '6=INCREASED BREATH'
             7 '7=DECREASED BREATH' 8 '8=RALES, WHEEZES, FRICTION RUBS'
             97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=IN APP' /
   B4P11B1   1 '1=NO' 2 '2=COARSE' 3 '3=FINE' 7 '7=DON''T KNOW' 8 '8=MISSING'
             9 '9=IN APP' /
   B4P11B1A  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P11B1B  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P11B1C  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P11B1D  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P11B2   1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P11B2A  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P11B2B  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P11B2C  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P11B2D  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P11B3   1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12A    1 '1=NORMAL' 2 '2=TREMOR' 3 '3=ATROPHY' 4 '4=FASCICULATION'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP' /
   B4P12B    1 '1=NORMAL' 2 '2=CONTOUR' 3 '3=MOTION' 4 '4=PAIN WITH MOTION'
             5 '5=TENDERNESS' 6 '6=KYPHOSIS' 7 '7=SCOLIOSIS'
             8 '8=KYPHOSCOLIOSIS' 97 '97=DON''T KNOW' 98 '98=MISSING'
             99 '99=IN APP' /
   B4P12C    1 '1=NORMAL' 2 '2=ABNORMAL' 7 '7=DON''T KNOW' 8 '8=MISSING'
             9 '9=IN APP' /
   B4P12C1   1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12C1A  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12C1B  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12C1C  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12C1D  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12C1E  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12C1F  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12C2   1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12C2A  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12C2B  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12C2C  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12C2D  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12C2E  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12C2F  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12C3   1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12C3A  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12C3B  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12C3C  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12C3D  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12C3E  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12C3F  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12C4   1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12C4A  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12C4B  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12C4C  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12C4D  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12C4E  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12C4F  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12C5   1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12C5A  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12C5B  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12C5C  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12C5D  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12C5E  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12C5F  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12C6   1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12C7   1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12D    97 '97=DON''T KNOW' 98 '98=MISSING' 99 '99=IN APP' /
   B4P12E1   1 '1=NORMAL' 2 '2=ABNORMAL' 7 '7=DON''T KNOW' 8 '8=MISSING'
             9 '9=IN APP' /
   B4P12E2   1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12E3   1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12E4   1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P12E5   1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13     1 '1=RIGHT' 2 '2=LEFT' 3 '3=AMBIDEXTROUS' 7 '7=DON''T KNOW'
             8 '8=MISSING' 9 '9=IN APP' /
   B4P13A1   1 '1=NORMAL' 2 '2=RIGHT UNABLE' 3 '3=LEFT UNABLE'
             4 '4=BOTH UNABLE' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP' /
   B4P13A2   1 '1=NORMAL' 2 '2=RIGHT UNABLE' 3 '3=LEFT UNABLE'
             4 '4=BOTH UNABLE' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP' /
   B4P13A3   1 '1=NORMAL' 2 '2=RIGHT UNABLE' 3 '3=LEFT UNABLE'
             4 '4=BOTH UNABLE' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP' /
   B4P13A4   1 '1=NORMAL' 2 '2=RIGHT UNABLE' 3 '3=LEFT UNABLE'
             4 '4=BOTH UNABLE' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP' /
   B4P13B1   1 '1=NORMAL' 2 '2=ABNORMAL' 7 '7=DON''T KNOW' 8 '8=MISSING'
             9 '9=IN APP' /
   B4P13B1A  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13B1B  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13B1C  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13B1D  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13B2   1 '1=NORMAL' 2 '2=ABNORMAL' 7 '7=DON''T KNOW' 8 '8=MISSING'
             9 '9=IN APP' /
   B4P13B2A  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13B2B  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13B2C  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13B2D  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13B3   1 '1=NORMAL' 2 '2=ABNORMAL' 7 '7=DON''T KNOW' 8 '8=MISSING'
             9 '9=IN APP' /
   B4P13B3A  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13B3B  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13B3C  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13B3D  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13B4   1 '1=NORMAL' 2 '2=ABNORMAL' 7 '7=DON''T KNOW' 8 '8=MISSING'
             9 '9=IN APP' /
   B4P13B4A  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13B4B  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13B4C  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13B4D  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13B5   1 '1=NORMAL' 2 '2=ABNORMAL' 7 '7=DON''T KNOW' 8 '8=MISSING'
             9 '9=IN APP' /
   B4P13B5A  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13B5B  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13B5C  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13B5D  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13C1R  0 '0-NOT DETECTABLE' 1 '1-DECREASED' 2 '2-NORMAL'
             3 '3-INCREASED' 4 '4-GREATLY INCREASED' 5 '5-CLONUS'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP' /
   B4P13C1L  0 '0-NOT DETECTABLE' 1 '1-DECREASED' 2 '2-NORMAL'
             3 '3-INCREASED' 4 '4-GREATLY INCREASED' 5 '5-CLONUS'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP' /
   B4P13C2R  0 '0-NOT DETECTABLE' 1 '1-DECREASED' 2 '2-NORMAL'
             3 '3-INCREASED' 4 '4-GREATLY INCREASED' 5 '5-CLONUS'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP' /
   B4P13C2L  0 '0-NOT DETECTABLE' 1 '1-DECREASED' 2 '2-NORMAL'
             3 '3-INCREASED' 4 '4-GREATLY INCREASED' 5 '5-CLONUS'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP' /
   B4P13C3R  0 '0-NOT DETECTABLE' 1 '1-DECREASED' 2 '2-NORMAL'
             3 '3-INCREASED' 4 '4-GREATLY INCREASED' 5 '5-CLONUS'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP' /
   B4P13C3L  0 '0-NOT DETECTABLE' 1 '1-DECREASED' 2 '2-NORMAL'
             3 '3-INCREASED' 4 '4-GREATLY INCREASED' 5 '5-CLONUS'
             7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP' /
   B4P13C4A  1 'NORMAL' 2 'DORSIFLEXION' 3 'WITHDRAWAL' 4 'NO RESPONSE'
             7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4P13D1   1 '1=NORMAL' 2 '2=ABNORMAL' 7 '7=DON''T KNOW' 8 '8=MISSING'
             9 '9=IN APP' /
   B4P13D1A  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13D1B  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13D1C  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13D1D  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13D2   1 '1=NORMAL' 2 '2=ABNORMAL' 7 '7=DON''T KNOW' 8 '8=MISSING'
             9 '9=IN APP' /
   B4P13D2A  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13D2B  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13D2C  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13D2D  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13D3   1 '1=NORMAL' 2 '2=ABNORMAL' 7 '7=DON''T KNOW' 8 '8=MISSING'
             9 '9=IN APP' /
   B4P13D3A  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13D3B  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13D3C  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13D3D  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13D4   1 '1=NORMAL' 2 '2=ABNORMAL' 7 '7=DON''T KNOW' 8 '8=MISSING'
             9 '9=IN APP' /
   B4P13D4A  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13D4B  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13D4C  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13D4D  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13D5   1 '1=NORMAL' 2 '2=ABNORMAL' 7 '7=DON''T KNOW' 8 '8=MISSING'
             9 '9=IN APP' /
   B4P13D5A  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13D5B  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13D5C  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13D5D  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13E1   1 '1=NORMAL' 2 '2=ABNORMAL' 7 '7=DON''T KNOW' 8 '8=MISSING'
             9 '9=IN APP' /
   B4P13E1A  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13E1B  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13E1C  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13E1D  1 '1=YES' 2 '2=NO' 7 '7=DON''T KNOW' 8 '8=MISSING' 9 '9=IN APP'
             /
   B4P13E2   1 '1=NORMAL' 2 '2=ABNORMAL' 7 '7=DON''T KNOW' 8 '8=MISSING'
             9 '9=IN APP' /
   B4P13E3   1 '1=NORMAL' 2 '2=ABNORMAL' 7 '7=DON''T KNOW' 8 '8=MISSING'
             9 '9=IN APP' /
   B4ZBLOOD  1 'NO SAMPLE' 2 'PARTIAL' 3 'COMPLETE' 4 'OTHER' /
   B4BHA1C   997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   B4BCHOL   997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   B4BTRIGL  9997 'DONT KNOW' 9998 'REFUSED/MISSING' 9999 'INAPP' /
   B4BHDL    997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   B4BLDL    997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   B4BRTHDL  9997 'DONT KNOW' 9998 'REFUSED/MISSING' 9999 'INAPP' /
   B4BDHEAS  9997 'DONT KNOW' 9998 'REFUSED/MISSING' 9999 'INAPP' /
   B4BDHEA   9997 'DONT KNOW' 9998 'REFUSED/MISSING' 9999 'INAPP' /
   B4BSCREA  997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   B4BIL6    99997 'DONT KNOW' 99998 'REFUSED/MISSING' 99999 'INAPP' /
   B4BSIL6R  99997 'DONT KNOW' 99998 'REFUSED/MISSING' 99999 'INAPP' /
   B4BFGN    997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   B4BCRP    99997 'DONT KNOW' 99998 'REFUSED/MISSING' 99999 'INAPP' /
   B4BSESEL  99997 'DONT KNOW' 99998 'REFUSED/MISSING' 99999 'INAPP' /
   B4BSICAM  999997 'DONT KNOW' 999998 'REFUSED/MISSING' 999999 'INAPP' /
   B4BATBC   9997 'DONT KNOW' 9998 'REFUSED/MISSING' 9999 'INAPP' /
   B4B13CBC  9997 'DONT KNOW' 9998 'REFUSED/MISSING' 9999 'INAPP' /
   B4BAC     99997 'DONT KNOW' 99998 'REFUSED/MISSING' 99999 'INAPP' /
   B4BBCX    9997 'DONT KNOW' 9998 'REFUSED/MISSING' 9999 'INAPP' /
   B4BLUT    99997 'DONT KNOW' 99998 'REFUSED/MISSING' 99999 'INAPP' /
   B4BZX     9997 'DONT KNOW' 9998 'REFUSED/MISSING' 9999 'INAPP' /
   B4BLYC    9997 'DONT KNOW' 9998 'REFUSED/MISSING' 9999 'INAPP' /
   B4BRET    99997 'DONT KNOW' 99998 'REFUSED/MISSING' 99999 'INAPP' /
   B4BATOC   999997 'DONT KNOW' 999998 'REFUSED/MISSING' 999999 'INAPP' /
   B4BGTOC   99997 'DONT KNOW' 99998 'REFUSED/MISSING' 99999 'INAPP' /
   B4BP1NP   999997 'DONT KNOW' 999998 'REFUSED/MISSING' 999999 'INAPP' /
   B4BSBAP   999997 'DONT KNOW' 999998 'REFUSED/MISSING' 999999 'INAPP' /
   B4BSNTX   999997 'DONT KNOW' 999998 'REFUSED/MISSING' 999999 'INAPP' /
   B4BGLUC   997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   B4BINSLN  997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   B4BIGF1   997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   B4BHOMAIR 997 'DON''T KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   B4ZURINE  1 'NO SAMPLE' 2 'PARTIAL' 3 'COMPLETE' 4 'OTHER' /
   B4BUPROB  1 'YES' 2 'NO' 9 'INAPP' /
   B4BUVDYN  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4BUVDN   97 'DON''T KNOW' 98 'MISSING' 99 'INAPP' /
   B4BURVOL  9997 'DON''T KNOW' 9998 'REFUSED/MISSING' 9999 'INAPP' /
   B4BCORTL  997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   B4BCORTO  997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   B4BUCREA  997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   B4BCLCRE  99997 'DONT KNOW' 99998 'REFUSED/MISSING' 99999 'INAPP' /
   B4BCOCRE  997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   B4BNOREP  9997 'DON''T KNOW' 9998 'REFUSED/MISSING' 9999 'INAPP' /
   B4BEPIN   9997 'DON''T KNOW' 9998 'REFUSED/MISSING' 9999 'INAPP' /
   B4BDOPA   99997 'DONT KNOW' 99998 'REFUSED/MISSING' 99999 'INAPP' /
   B4BNE12   9999997 'DONT KNOW' 9999998 'REFUSED/MISSING' 9999999 'INAPP' /
   B4BEPI12  9999997 'DONT KNOW' 9999998 'REFUSED/MISSING' 9999999 'INAPP' /
   B4BDOP12  99999997 'DONT KNOW' 99999998 'REFUSED/MISSING' 99999999 'INAPP'
             /
   B4BNOCRE  9999997 'DONT KNOW' 9999998 'REFUSED/MISSING' 9999999 'INAPP' /
   B4BEPCRE  9999997 'DONT KNOW' 9999998 'REFUSED/MISSING' 9999999 'INAPP' /
   B4BDOCRE  99999997 'DONT KNOW' 99999998 'REFUSED/MISSING' 99999999 'INAPP'
             /
   B4BNECL   9997 'DON''T KNOW' 9998 'REFUSED/MISSING' 9999 'INAPP' /
   B4BSUCRE  99997 'DONT KNOW' 99998 'REFUSED/MISSING' 99999 'INAPP' /
   B4BGFR    9999997 'DONT KNOW' 9999998 'REFUSED/MISSING' 9999999 'INAPP' /
   B4ZSALIV  1 'NO SAMPLE' 2 'PARTIAL' 3 'COMPLETE' 4 'OTHER' /
   B4BSCL11  99997 'DONT KNOW' 99998 'REFUSED/MISSING' 99999 'INAPP' /
   B4BSCL21  99997 'DONT KNOW' 99998 'REFUSED/MISSING' 99999 'INAPP' /
   B4BSCL31  99997 'DONT KNOW' 99998 'REFUSED/MISSING' 99999 'INAPP' /
   B4BSCL41  99997 'DONT KNOW' 99998 'REFUSED/MISSING' 99999 'INAPP' /
   B4BSDUP   1 'YES' 2 'NO' /
   B4BSCL12  99998 'MISSING' 99999 'INAPP' /
   B4BSCL22  99998 'MISSING' 99999 'INAPP' /
   B4BSCL32  99998 'MISSING' 99999 'INAPP' /
   B4BSCL42  99998 'MISSING' 99999 'INAPP' /
   B4BSCL1A  99997 'DONT KNOW' 99998 'REFUSED/MISSING' 99999 'INAPP' /
   B4BSCL2A  99997 'DONT KNOW' 99998 'REFUSED/MISSING' 99999 'INAPP' /
   B4BSCL3A  99997 'DONT KNOW' 99998 'REFUSED/MISSING' 99999 'INAPP' /
   B4BSCL4A  99997 'DONT KNOW' 99998 'REFUSED/MISSING' 99999 'INAPP' /
   B4BSCL14  99997 'DONT KNOW' 99998 'REFUSED/MISSING' 99999 'INAPP' /
   B4AWAVL   1 'DIARY AND WATCH' 2 'DIARY ONLY' 3 'WATCH ONLY'
             4 'NEITHER DIARY OR WATCH' 9 'NEVER BEEN ASKED' /
   B4AWIMPU  1 'YES' 2 'NO' 9 'INAPP' /
   B4AWMARK  1 'YES' 2 'NO' 9 'INAPP' /
   B4AWDAYS  9 'INAPP' /
   B4AWPART  1 'YES' 2 'NO' 9 'INAPP' /
   B4AWIDIO  1 'YES' 2 'NO' 9 'INAPP' /
   B4AWTMZN  1 'YES' 2 'NO' 9 'INAPP' /
   B4AWLAG   99 'INAPP' /
   B4AWBGNM  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 99 'INAPP' /
   B4AWENDM  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 99 'INAPP' /
   B4AD11    1 'MOST ALERT' 2 '2' 3 '3' 4 '4' 5 'NOT ALERT AT ALL'
             7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD12    9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4AD13    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD13S   9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4AD14    9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4AD15    9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4AD16    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD16M   1 'PAIN RELIEVER' 2 'ANTI-INFECTIVE' 3 'DECONGESTANT'
             4 'COUGH/COLD MED' 5 'ANTIHISTAMINE' 6 'ANTACID'
             7 'CATHARTIC/LAXATIVE' 8 'ANTIDEPRESSANT' 9 'SLEEPING AID'
             10 'SUPPLEMENT/ALT MED' 11 'OTHER' 97 'DON''T KNOW' 98 'MISSING'
             99 'INAPP' /
   B4AD17    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD17M   1 'PRESCRIBED SLEEP AID' 2 'OTC SLEEP AID' 3 'OTC PAIN MED'
             4 'ALT SLEEP AID' 5 'OTHER' 7 'DON''T KNOW' 8 'MISSING'
             9 'INAPP' /
   B4AD18A   1 'AM' 2 'PM' 6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING'
             9 'INAPP' /
   B4AD19    9996 'DID NOT SLEEP' 9997 'DON''T KNOW' 9998 'MISSING'
             9999 'INAPP' /
   B4AD110   1 'VERY EASY' 2 '2' 3 '3' 4 '4' 5 'VERY DIFFICULT'
             6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD111   96 'UP ALL NIGHT' 97 'DON''T KNOW' 98 'MISSING' 99 'INAPP' /
   B4AD112   1 'YES' 2 'NO' 6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING'
             9 'INAPP' /
   B4AD113   1 'YES' 2 'NO' 6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING'
             9 'INAPP' /
   B4AD114   96 'DID NOT SLEEP' 97 'DON''T KNOW' 98 'MISSING' 99 'INAPP' /
   B4AD115A  1 'AM' 2 'PM' 6 'DID NOT WAKE UP' 7 'DON''T KNOW' 8 'MISSING'
             9 'INAPP' /
   B4AD116A  1 'AM' 2 'PM' 6 'DID NOT GET OUT OF BED' 7 'DON''T KNOW'
             8 'MISSING' 9 'INAPP' /
   B4AD117   1 'VERY DEEPLY' 2 '2' 3 '3' 4 '4' 5 'VERY LIGHTLY'
             6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD118   1 'WELL RESTED' 2 '2' 3 '3' 4 '4' 5 'POORLY RESTED'
             6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD119   1 'VERY ALERT' 2 '2' 3 '3' 4 '4' 5 'NOT ALERT AT ALL'
             6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD120   1 'VERY GOOD' 2 '2' 3 '3' 4 '4' 5 'VERY POOR' 6 'DID NOT SLEEP'
             7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD21    1 'MOST ALERT' 2 '2' 3 '3' 4 '4' 5 'NOT ALERT AT ALL'
             7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD22    9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4AD23    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD23S   9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4AD24    9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4AD25    9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4AD26    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD26M   1 'PAIN RELIEVER' 2 'ANTI-INFECTIVE' 3 'DECONGESTANT'
             4 'COUGH/COLD MED' 5 'ANTIHISTAMINE' 6 'ANTACID'
             7 'CATHARTIC/LAXATIVE' 8 'ANTIDEPRESSANT' 9 'SLEEPING AID'
             10 'SUPPLEMENT/ALT MED' 11 'OTHER' 97 'DON''T KNOW' 98 'MISSING'
             99 'INAPP' /
   B4AD27    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD27M   1 'PRESCRIBED SLEEP AID' 2 'OTC SLEEP AID' 3 'OTC PAIN MED'
             4 'ALT SLEEP AID' 5 'OTHER' 7 'DON''T KNOW' 8 'MISSING'
             9 'INAPP' /
   B4AD28A   1 'AM' 2 'PM' 6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING'
             9 'INAPP' /
   B4AD29    9996 'DID NOT SLEEP' 9997 'DON''T KNOW' 9998 'MISSING'
             9999 'INAPP' /
   B4AD210   1 'VERY EASY' 2 '2' 3 '3' 4 '4' 5 'VERY DIFFICULT'
             6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD211   96 'UP ALL NIGHT' 97 'DON''T KNOW' 98 'MISSING' 99 'INAPP' /
   B4AD212   1 'YES' 2 'NO' 6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING'
             9 'INAPP' /
   B4AD213   1 'YES' 2 'NO' 6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING'
             9 'INAPP' /
   B4AD214   96 'DID NOT SLEEP' 97 'DON''T KNOW' 98 'MISSING' 99 'INAPP' /
   B4AD215A  1 'AM' 2 'PM' 6 'DID NOT WAKE UP' 7 'DON''T KNOW' 8 'MISSING'
             9 'INAPP' /
   B4AD216A  1 'AM' 2 'PM' 6 'DID NOT GET OUT OF BED' 7 'DON''T KNOW'
             8 'MISSING' 9 'INAPP' /
   B4AD217   1 'VERY DEEPLY' 2 '2' 3 '3' 4 '4' 5 'VERY LIGHTLY'
             6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD218   1 'WELL RESTED' 2 '2' 3 '3' 4 '4' 5 'POORLY RESTED'
             6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD219   1 'VERY ALERT' 2 '2' 3 '3' 4 '4' 5 'NOT ALERT AT ALL'
             6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD220   1 'VERY GOOD' 2 '2' 3 '3' 4 '4' 5 'VERY POOR' 6 'DID NOT SLEEP'
             7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD31    1 'MOST ALERT' 2 '2' 3 '3' 4 '4' 5 'NOT ALERT AT ALL'
             7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD32    9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4AD33    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD33S   9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4AD34    9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4AD35    9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4AD36    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD36M   1 'PAIN RELIEVER' 2 'ANTI-INFECTIVE' 3 'DECONGESTANT'
             4 'COUGH/COLD MED' 5 'ANTIHISTAMINE' 6 'ANTACID'
             7 'CATHARTIC/LAXATIVE' 8 'ANTIDEPRESSANT' 9 'SLEEPING AID'
             10 'SUPPLEMENT/ALT MED' 11 'OTHER' 97 'DON''T KNOW' 98 'MISSING'
             99 'INAPP' /
   B4AD37    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD37M   1 'PRESCRIBED SLEEP AID' 2 'OTC SLEEP AID' 3 'OTC PAIN MED'
             4 'ALT SLEEP AID' 5 'OTHER' 7 'DON''T KNOW' 8 'MISSING'
             9 'INAPP' /
   B4AD38A   1 'AM' 2 'PM' 6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING'
             9 'INAPP' /
   B4AD39    9996 'DID NOT SLEEP' 9997 'DON''T KNOW' 9998 'MISSING'
             9999 'INAPP' /
   B4AD310   1 'VERY EASY' 2 '2' 3 '3' 4 '4' 5 'VERY DIFFICULT'
             6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD311   96 'UP ALL NIGHT' 97 'DON''T KNOW' 98 'MISSING' 99 'INAPP' /
   B4AD312   1 'YES' 2 'NO' 6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING'
             9 'INAPP' /
   B4AD313   1 'YES' 2 'NO' 6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING'
             9 'INAPP' /
   B4AD314   96 'DID NOT SLEEP' 97 'DON''T KNOW' 98 'MISSING' 99 'INAPP' /
   B4AD315A  1 'AM' 2 'PM' 6 'DID NOT WAKE UP' 7 'DON''T KNOW' 8 'MISSING'
             9 'INAPP' /
   B4AD316A  1 'AM' 2 'PM' 6 'DID NOT GET OUT OF BED' 7 'DON''T KNOW'
             8 'MISSING' 9 'INAPP' /
   B4AD317   1 'VERY DEEPLY' 2 '2' 3 '3' 4 '4' 5 'VERY LIGHTLY'
             6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD318   1 'WELL RESTED' 2 '2' 3 '3' 4 '4' 5 'POORLY RESTED'
             6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD319   1 'VERY ALERT' 2 '2' 3 '3' 4 '4' 5 'NOT ALERT AT ALL'
             6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD320   1 'VERY GOOD' 2 '2' 3 '3' 4 '4' 5 'VERY POOR' 6 'DID NOT SLEEP'
             7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD41    1 'MOST ALERT' 2 '2' 3 '3' 4 '4' 5 'NOT ALERT AT ALL'
             7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD42    9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4AD43    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD43S   9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4AD44    9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4AD45    9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4AD46    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD46M   1 'PAIN RELIEVER' 2 'ANTI-INFECTIVE' 3 'DECONGESTANT'
             4 'COUGH/COLD MED' 5 'ANTIHISTAMINE' 6 'ANTACID'
             7 'CATHARTIC/LAXATIVE' 8 'ANTIDEPRESSANT' 9 'SLEEPING AID'
             10 'SUPPLEMENT/ALT MED' 11 'OTHER' 97 'DON''T KNOW' 98 'MISSING'
             99 'INAPP' /
   B4AD47    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD47M   1 'PRESCRIBED SLEEP AID' 2 'OTC SLEEP AID' 3 'OTC PAIN MED'
             4 'ALT SLEEP AID' 5 'OTHER' 7 'DON''T KNOW' 8 'MISSING'
             9 'INAPP' /
   B4AD48A   1 'AM' 2 'PM' 6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING'
             9 'INAPP' /
   B4AD49    9996 'DID NOT SLEEP' 9997 'DON''T KNOW' 9998 'MISSING'
             9999 'INAPP' /
   B4AD410   1 'VERY EASY' 2 '2' 3 '3' 4 '4' 5 'VERY DIFFICULT'
             6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD411   96 'UP ALL NIGHT' 97 'DON''T KNOW' 98 'MISSING' 99 'INAPP' /
   B4AD412   1 'YES' 2 'NO' 6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING'
             9 'INAPP' /
   B4AD413   1 'YES' 2 'NO' 6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING'
             9 'INAPP' /
   B4AD414   96 'DID NOT SLEEP' 97 'DON''T KNOW' 98 'MISSING' 99 'INAPP' /
   B4AD415A  1 'AM' 2 'PM' 6 'DID NOT WAKE UP' 7 'DON''T KNOW' 8 'MISSING'
             9 'INAPP' /
   B4AD416A  1 'AM' 2 'PM' 6 'DID NOT GET OUT OF BED' 7 'DON''T KNOW'
             8 'MISSING' 9 'INAPP' /
   B4AD417   1 'VERY DEEPLY' 2 '2' 3 '3' 4 '4' 5 'VERY LIGHTLY'
             6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD418   1 'WELL RESTED' 2 '2' 3 '3' 4 '4' 5 'POORLY RESTED'
             6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD419   1 'VERY ALERT' 2 '2' 3 '3' 4 '4' 5 'NOT ALERT AT ALL'
             6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD420   1 'VERY GOOD' 2 '2' 3 '3' 4 '4' 5 'VERY POOR' 6 'DID NOT SLEEP'
             7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD51    1 'MOST ALERT' 2 '2' 3 '3' 4 '4' 5 'NOT ALERT AT ALL'
             7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD52    9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4AD53    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD53S   9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4AD54    9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4AD55    9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4AD56    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD56M   1 'PAIN RELIEVER' 2 'ANTI-INFECTIVE' 3 'DECONGESTANT'
             4 'COUGH/COLD MED' 5 'ANTIHISTAMINE' 6 'ANTACID'
             7 'CATHARTIC/LAXATIVE' 8 'ANTIDEPRESSANT' 9 'SLEEPING AID'
             10 'SUPPLEMENT/ALT MED' 11 'OTHER' 97 'DON''T KNOW' 98 'MISSING'
             99 'INAPP' /
   B4AD57    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD57M   1 'PRESCRIBED SLEEP AID' 2 'OTC SLEEP AID' 3 'OTC PAIN MED'
             4 'ALT SLEEP AID' 5 'OTHER' 7 'DON''T KNOW' 8 'MISSING'
             9 'INAPP' /
   B4AD58A   1 'AM' 2 'PM' 6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING'
             9 'INAPP' /
   B4AD59    9996 'DID NOT SLEEP' 9997 'DON''T KNOW' 9998 'MISSING'
             9999 'INAPP' /
   B4AD510   1 'VERY EASY' 2 '2' 3 '3' 4 '4' 5 'VERY DIFFICULT'
             6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD511   96 'UP ALL NIGHT' 97 'DON''T KNOW' 98 'MISSING' 99 'INAPP' /
   B4AD512   1 'YES' 2 'NO' 6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING'
             9 'INAPP' /
   B4AD513   1 'YES' 2 'NO' 6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING'
             9 'INAPP' /
   B4AD514   96 'DID NOT SLEEP' 97 'DON''T KNOW' 98 'MISSING' 99 'INAPP' /
   B4AD515A  1 'AM' 2 'PM' 6 'DID NOT WAKE UP' 7 'DON''T KNOW' 8 'MISSING'
             9 'INAPP' /
   B4AD516A  1 'AM' 2 'PM' 6 'DID NOT GET OUT OF BED' 7 'DON''T KNOW'
             8 'MISSING' 9 'INAPP' /
   B4AD517   1 'VERY DEEPLY' 2 '2' 3 '3' 4 '4' 5 'VERY LIGHTLY'
             6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD518   1 'WELL RESTED' 2 '2' 3 '3' 4 '4' 5 'POORLY RESTED'
             6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD519   1 'VERY ALERT' 2 '2' 3 '3' 4 '4' 5 'NOT ALERT AT ALL'
             6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD520   1 'VERY GOOD' 2 '2' 3 '3' 4 '4' 5 'VERY POOR' 6 'DID NOT SLEEP'
             7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD61    1 'MOST ALERT' 2 '2' 3 '3' 4 '4' 5 'NOT ALERT AT ALL'
             7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD62    9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4AD63    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD63S   9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4AD64    9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4AD65    9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4AD66    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD66M   1 'PAIN RELIEVER' 2 'ANTI-INFECTIVE' 3 'DECONGESTANT'
             4 'COUGH/COLD MED' 5 'ANTIHISTAMINE' 6 'ANTACID'
             7 'CATHARTIC/LAXATIVE' 8 'ANTIDEPRESSANT' 9 'SLEEPING AID'
             10 'SUPPLEMENT/ALT MED' 11 'OTHER' 97 'DON''T KNOW' 98 'MISSING'
             99 'INAPP' /
   B4AD67    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD67M   1 'PRESCRIBED SLEEP AID' 2 'OTC SLEEP AID' 3 'OTC PAIN MED'
             4 'ALT SLEEP AID' 5 'OTHER' 7 'DON''T KNOW' 8 'MISSING'
             9 'INAPP' /
   B4AD68A   1 'AM' 2 'PM' 6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING'
             9 'INAPP' /
   B4AD69    9996 'DID NOT SLEEP' 9997 'DON''T KNOW' 9998 'MISSING'
             9999 'INAPP' /
   B4AD610   1 'VERY EASY' 2 '2' 3 '3' 4 '4' 5 'VERY DIFFICULT'
             6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD611   96 'UP ALL NIGHT' 97 'DON''T KNOW' 98 'MISSING' 99 'INAPP' /
   B4AD612   1 'YES' 2 'NO' 6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING'
             9 'INAPP' /
   B4AD613   1 'YES' 2 'NO' 6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING'
             9 'INAPP' /
   B4AD614   96 'DID NOT SLEEP' 97 'DON''T KNOW' 98 'MISSING' 99 'INAPP' /
   B4AD615A  1 'AM' 2 'PM' 6 'DID NOT WAKE UP' 7 'DON''T KNOW' 8 'MISSING'
             9 'INAPP' /
   B4AD616A  1 'AM' 2 'PM' 6 'DID NOT GET OUT OF BED' 7 'DON''T KNOW'
             8 'MISSING' 9 'INAPP' /
   B4AD617   1 'VERY DEEPLY' 2 '2' 3 '3' 4 '4' 5 'VERY LIGHTLY'
             6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD618   1 'WELL RESTED' 2 '2' 3 '3' 4 '4' 5 'POORLY RESTED'
             6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD619   1 'VERY ALERT' 2 '2' 3 '3' 4 '4' 5 'NOT ALERT AT ALL'
             6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD620   1 'VERY GOOD' 2 '2' 3 '3' 4 '4' 5 'VERY POOR' 6 'DID NOT SLEEP'
             7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD71    1 'MOST ALERT' 2 '2' 3 '3' 4 '4' 5 'NOT ALERT AT ALL'
             7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD72    9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4AD73    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD73S   9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4AD74    9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4AD75    9997 'DON''T KNOW' 9998 'MISSING' 9999 'INAPP' /
   B4AD76    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD76M   1 'PAIN RELIEVER' 2 'ANTI-INFECTIVE' 3 'DECONGESTANT'
             4 'COUGH/COLD MED' 5 'ANTIHISTAMINE' 6 'ANTACID'
             7 'CATHARTIC/LAXATIVE' 8 'ANTIDEPRESSANT' 9 'SLEEPING AID'
             10 'SUPPLEMENT/ALT MED' 11 'OTHER' 97 'DON''T KNOW' 98 'MISSING'
             99 'INAPP' /
   B4AD77    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD77M   1 'PRESCRIBED SLEEP AID' 2 'OTC SLEEP AID' 3 'OTC PAIN MED'
             4 'ALT SLEEP AID' 5 'OTHER' 7 'DON''T KNOW' 8 'MISSING'
             9 'INAPP' /
   B4AD78A   1 'AM' 2 'PM' 6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING'
             9 'INAPP' /
   B4AD79    9996 'DID NOT SLEEP' 9997 'DON''T KNOW' 9998 'MISSING'
             9999 'INAPP' /
   B4AD710   1 'VERY EASY' 2 '2' 3 '3' 4 '4' 5 'VERY DIFFICULT'
             6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD711   96 'UP ALL NIGHT' 97 'DON''T KNOW' 98 'MISSING' 99 'INAPP' /
   B4AD712   1 'YES' 2 'NO' 6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING'
             9 'INAPP' /
   B4AD713   1 'YES' 2 'NO' 6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING'
             9 'INAPP' /
   B4AD714   96 'DID NOT SLEEP' 97 'DON''T KNOW' 98 'MISSING' 99 'INAPP' /
   B4AD715A  1 'AM' 2 'PM' 6 'DID NOT WAKE UP' 7 'DON''T KNOW' 8 'MISSING'
             9 'INAPP' /
   B4AD716A  1 'AM' 2 'PM' 6 'DID NOT GET OUT OF BED' 7 'DON''T KNOW'
             8 'MISSING' 9 'INAPP' /
   B4AD717   1 'VERY DEEPLY' 2 '2' 3 '3' 4 '4' 5 'VERY LIGHTLY'
             6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD718   1 'WELL RESTED' 2 '2' 3 '3' 4 '4' 5 'POORLY RESTED'
             6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD719   1 'VERY ALERT' 2 '2' 3 '3' 4 '4' 5 'NOT ALERT AT ALL'
             6 'DID NOT SLEEP' 7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4AD720   1 'VERY GOOD' 2 '2' 3 '3' 4 '4' 5 'VERY POOR' 6 'DID NOT SLEEP'
             7 'DON''T KNOW' 8 'MISSING' 9 'INAPP' /
   B4WR1TAC  999998 'MISSING' 999999 'INAPP' /
   B4WR1ACM  998 'MISSING' 999 'INAPP' /
   B4WR1MAC  9998 'MISSING' 9999 'INAPP' /
   B4WR1IAC  98 'MISSING' 99 'INAPP' /
   B4WR1SW   98 'MISSING' 99 'INAPP' /
   B4WR1WT   998 'MISSING' 999 'INAPP' /
   B4WR1PW   998 'MISSING' 999 'INAPP' /
   B4WR1WB   998 'MISSING' 999 'INAPP' /
   B4WR1AWB  998 'MISSING' 999 'INAPP' /
   B4WR1SLT  9998 'MISSING' 9999 'INAPP' /
   B4WR1PSL  998 'MISSING' 999 'INAPP' /
   B4WR1SLB  998 'MISSING' 999 'INAPP' /
   B4WR1ASB  998 'MISSING' 999 'INAPP' /
   B4WS1TAC  999998 'MISSING' 999999 'INAPP' /
   B4WS1ACM  998 'MISSING' 999 'INAPP' /
   B4WS1MAC  9998 'MISSING' 9999 'INAPP' /
   B4WS1IAC  98 'MISSING' 99 'INAPP' /
   B4WS1ISW  98 'MISSING' 99 'INAPP' /
   B4WS1OL   998 'MISSING' 999 'INAPP' /
   B4WS1SNT  998 'MISSING' 999 'INAPP' /
   B4WS1EFF  998 'MISSING' 999 'INAPP' /
   B4WS1WSO  998 'MISSING' 999 'INAPP' /
   B4WS1WT   998 'MISSING' 999 'INAPP' /
   B4WS1PW   98 'MISSING' 99 'INAPP' /
   B4WS1WB   998 'MISSING' 999 'INAPP' /
   B4WS1AWB  98 'MISSING' 99 'INAPP' /
   B4WS1SLT  9998 'MISSING' 9999 'INAPP' /
   B4WS1PSL  998 'MISSING' 999 'INAPP' /
   B4WS1SLB  998 'MISSING' 999 'INAPP' /
   B4WS1ASB  998 'MISSING' 999 'INAPP' /
   B4WA1TAC  9999998 'MISSING' 9999999 'INAPP' /
   B4WA1ACM  9998 'MISSING' 9999 'INAPP' /
   B4WA1MAC  9998 'MISSING' 9999 'INAPP' /
   B4WA1IAC  8 'MISSING' 9 'INAPP' /
   B4WA1ISW  8 'MISSING' 9 'INAPP' /
   B4WA1WT   9998 'MISSING' 9999 'INAPP' /
   B4WA1PW   998 'MISSING' 999 'INAPP' /
   B4WA1WB   998 'MISSING' 999 'INAPP' /
   B4WA1AWB  998 'MISSING' 999 'INAPP' /
   B4WA1SLT  998 'MISSING' 999 'INAPP' /
   B4WA1PSL  98 'MISSING' 99 'INAPP' /
   B4WA1SLB  998 'MISSING' 999 'INAPP' /
   B4WA1ASB  98 'MISSING' 99 'INAPP' /
   B4WR2TAC  999998 'MISSING' 999999 'INAPP' /
   B4WR2ACM  998 'MISSING' 999 'INAPP' /
   B4WR2MAC  9998 'MISSING' 9999 'INAPP' /
   B4WR2IAC  98 'MISSING' 99 'INAPP' /
   B4WR2SW   98 'MISSING' 99 'INAPP' /
   B4WR2WT   998 'MISSING' 999 'INAPP' /
   B4WR2PW   998 'MISSING' 999 'INAPP' /
   B4WR2WB   998 'MISSING' 999 'INAPP' /
   B4WR2AWB  998 'MISSING' 999 'INAPP' /
   B4WR2SLT  9998 'MISSING' 9999 'INAPP' /
   B4WR2PSL  998 'MISSING' 999 'INAPP' /
   B4WR2SLB  998 'MISSING' 999 'INAPP' /
   B4WR2ASB  998 'MISSING' 999 'INAPP' /
   B4WS2TAC  999998 'MISSING' 999999 'INAPP' /
   B4WS2ACM  998 'MISSING' 999 'INAPP' /
   B4WS2MAC  9998 'MISSING' 9999 'INAPP' /
   B4WS2IAC  98 'MISSING' 99 'INAPP' /
   B4WS2ISW  98 'MISSING' 99 'INAPP' /
   B4WS2OL   998 'MISSING' 999 'INAPP' /
   B4WS2SNT  998 'MISSING' 999 'INAPP' /
   B4WS2EFF  998 'MISSING' 999 'INAPP' /
   B4WS2WSO  998 'MISSING' 999 'INAPP' /
   B4WS2WT   998 'MISSING' 999 'INAPP' /
   B4WS2PW   98 'MISSING' 99 'INAPP' /
   B4WS2WB   998 'MISSING' 999 'INAPP' /
   B4WS2AWB  98 'MISSING' 99 'INAPP' /
   B4WS2SLT  9998 'MISSING' 9999 'INAPP' /
   B4WS2PSL  998 'MISSING' 999 'INAPP' /
   B4WS2SLB  998 'MISSING' 999 'INAPP' /
   B4WS2ASB  998 'MISSING' 999 'INAPP' /
   B4WA2TAC  9999998 'MISSING' 9999999 'INAPP' /
   B4WA2ACM  9998 'MISSING' 9999 'INAPP' /
   B4WA2MAC  9998 'MISSING' 9999 'INAPP' /
   B4WA2IAC  8 'MISSING' 9 'INAPP' /
   B4WA2ISW  8 'MISSING' 9 'INAPP' /
   B4WA2WT   9998 'MISSING' 9999 'INAPP' /
   B4WA2PW   998 'MISSING' 999 'INAPP' /
   B4WA2WB   998 'MISSING' 999 'INAPP' /
   B4WA2AWB  998 'MISSING' 999 'INAPP' /
   B4WA2SLT  998 'MISSING' 999 'INAPP' /
   B4WA2PSL  98 'MISSING' 99 'INAPP' /
   B4WA2SLB  998 'MISSING' 999 'INAPP' /
   B4WA2ASB  98 'MISSING' 99 'INAPP' /
   B4WR3TAC  999998 'MISSING' 999999 'INAPP' /
   B4WR3ACM  998 'MISSING' 999 'INAPP' /
   B4WR3MAC  9998 'MISSING' 9999 'INAPP' /
   B4WR3IAC  98 'MISSING' 99 'INAPP' /
   B4WR3SW   98 'MISSING' 99 'INAPP' /
   B4WR3WT   998 'MISSING' 999 'INAPP' /
   B4WR3PW   998 'MISSING' 999 'INAPP' /
   B4WR3WB   998 'MISSING' 999 'INAPP' /
   B4WR3AWB  998 'MISSING' 999 'INAPP' /
   B4WR3SLT  9998 'MISSING' 9999 'INAPP' /
   B4WR3PSL  998 'MISSING' 999 'INAPP' /
   B4WR3SLB  998 'MISSING' 999 'INAPP' /
   B4WR3ASB  998 'MISSING' 999 'INAPP' /
   B4WS3TAC  999998 'MISSING' 999999 'INAPP' /
   B4WS3ACM  998 'MISSING' 999 'INAPP' /
   B4WS3MAC  9998 'MISSING' 9999 'INAPP' /
   B4WS3IAC  98 'MISSING' 99 'INAPP' /
   B4WS3ISW  98 'MISSING' 99 'INAPP' /
   B4WS3OL   998 'MISSING' 999 'INAPP' /
   B4WS3SNT  998 'MISSING' 999 'INAPP' /
   B4WS3EFF  998 'MISSING' 999 'INAPP' /
   B4WS3WSO  998 'MISSING' 999 'INAPP' /
   B4WS3WT   998 'MISSING' 999 'INAPP' /
   B4WS3PW   98 'MISSING' 99 'INAPP' /
   B4WS3WB   998 'MISSING' 999 'INAPP' /
   B4WS3AWB  98 'MISSING' 99 'INAPP' /
   B4WS3SLT  9998 'MISSING' 9999 'INAPP' /
   B4WS3PSL  998 'MISSING' 999 'INAPP' /
   B4WS3SLB  998 'MISSING' 999 'INAPP' /
   B4WS3ASB  998 'MISSING' 999 'INAPP' /
   B4WA3TAC  9999998 'MISSING' 9999999 'INAPP' /
   B4WA3ACM  9998 'MISSING' 9999 'INAPP' /
   B4WA3MAC  9998 'MISSING' 9999 'INAPP' /
   B4WA3IAC  8 'MISSING' 9 'INAPP' /
   B4WA3ISW  8 'MISSING' 9 'INAPP' /
   B4WA3WT   9998 'MISSING' 9999 'INAPP' /
   B4WA3PW   998 'MISSING' 999 'INAPP' /
   B4WA3WB   998 'MISSING' 999 'INAPP' /
   B4WA3AWB  998 'MISSING' 999 'INAPP' /
   B4WA3SLT  998 'MISSING' 999 'INAPP' /
   B4WA3PSL  98 'MISSING' 99 'INAPP' /
   B4WA3SLB  998 'MISSING' 999 'INAPP' /
   B4WA3ASB  98 'MISSING' 99 'INAPP' /
   B4WR4TAC  999998 'MISSING' 999999 'INAPP' /
   B4WR4ACM  998 'MISSING' 999 'INAPP' /
   B4WR4MAC  9998 'MISSING' 9999 'INAPP' /
   B4WR4IAC  98 'MISSING' 99 'INAPP' /
   B4WR4SW   98 'MISSING' 99 'INAPP' /
   B4WR4WT   998 'MISSING' 999 'INAPP' /
   B4WR4PW   998 'MISSING' 999 'INAPP' /
   B4WR4WB   998 'MISSING' 999 'INAPP' /
   B4WR4AWB  998 'MISSING' 999 'INAPP' /
   B4WR4SLT  9998 'MISSING' 9999 'INAPP' /
   B4WR4PSL  998 'MISSING' 999 'INAPP' /
   B4WR4SLB  998 'MISSING' 999 'INAPP' /
   B4WR4ASB  998 'MISSING' 999 'INAPP' /
   B4WS4TAC  999998 'MISSING' 999999 'INAPP' /
   B4WS4ACM  998 'MISSING' 999 'INAPP' /
   B4WS4MAC  9998 'MISSING' 9999 'INAPP' /
   B4WS4IAC  98 'MISSING' 99 'INAPP' /
   B4WS4ISW  98 'MISSING' 99 'INAPP' /
   B4WS4OL   998 'MISSING' 999 'INAPP' /
   B4WS4SNT  998 'MISSING' 999 'INAPP' /
   B4WS4EFF  998 'MISSING' 999 'INAPP' /
   B4WS4WSO  998 'MISSING' 999 'INAPP' /
   B4WS4WT   998 'MISSING' 999 'INAPP' /
   B4WS4PW   98 'MISSING' 99 'INAPP' /
   B4WS4WB   998 'MISSING' 999 'INAPP' /
   B4WS4AWB  98 'MISSING' 99 'INAPP' /
   B4WS4SLT  9998 'MISSING' 9999 'INAPP' /
   B4WS4PSL  998 'MISSING' 999 'INAPP' /
   B4WS4SLB  998 'MISSING' 999 'INAPP' /
   B4WS4ASB  998 'MISSING' 999 'INAPP' /
   B4WA4TAC  9999998 'MISSING' 9999999 'INAPP' /
   B4WA4ACM  9998 'MISSING' 9999 'INAPP' /
   B4WA4MAC  9998 'MISSING' 9999 'INAPP' /
   B4WA4IAC  8 'MISSING' 9 'INAPP' /
   B4WA4ISW  8 'MISSING' 9 'INAPP' /
   B4WA4WT   9998 'MISSING' 9999 'INAPP' /
   B4WA4PW   998 'MISSING' 999 'INAPP' /
   B4WA4WB   998 'MISSING' 999 'INAPP' /
   B4WA4AWB  998 'MISSING' 999 'INAPP' /
   B4WA4SLT  998 'MISSING' 999 'INAPP' /
   B4WA4PSL  98 'MISSING' 99 'INAPP' /
   B4WA4SLB  998 'MISSING' 999 'INAPP' /
   B4WA4ASB  98 'MISSING' 99 'INAPP' /
   B4WR5TAC  999998 'MISSING' 999999 'INAPP' /
   B4WR5ACM  998 'MISSING' 999 'INAPP' /
   B4WR5MAC  9998 'MISSING' 9999 'INAPP' /
   B4WR5IAC  98 'MISSING' 99 'INAPP' /
   B4WR5SW   98 'MISSING' 99 'INAPP' /
   B4WR5WT   998 'MISSING' 999 'INAPP' /
   B4WR5PW   998 'MISSING' 999 'INAPP' /
   B4WR5WB   998 'MISSING' 999 'INAPP' /
   B4WR5AWB  998 'MISSING' 999 'INAPP' /
   B4WR5SLT  9998 'MISSING' 9999 'INAPP' /
   B4WR5PSL  998 'MISSING' 999 'INAPP' /
   B4WR5SLB  998 'MISSING' 999 'INAPP' /
   B4WR5ASB  998 'MISSING' 999 'INAPP' /
   B4WS5TAC  999998 'MISSING' 999999 'INAPP' /
   B4WS5ACM  998 'MISSING' 999 'INAPP' /
   B4WS5MAC  9998 'MISSING' 9999 'INAPP' /
   B4WS5IAC  98 'MISSING' 99 'INAPP' /
   B4WS5ISW  98 'MISSING' 99 'INAPP' /
   B4WS5OL   998 'MISSING' 999 'INAPP' /
   B4WS5SNT  998 'MISSING' 999 'INAPP' /
   B4WS5EFF  998 'MISSING' 999 'INAPP' /
   B4WS5WSO  998 'MISSING' 999 'INAPP' /
   B4WS5WT   998 'MISSING' 999 'INAPP' /
   B4WS5PW   98 'MISSING' 99 'INAPP' /
   B4WS5WB   998 'MISSING' 999 'INAPP' /
   B4WS5AWB  98 'MISSING' 99 'INAPP' /
   B4WS5SLT  9998 'MISSING' 9999 'INAPP' /
   B4WS5PSL  998 'MISSING' 999 'INAPP' /
   B4WS5SLB  998 'MISSING' 999 'INAPP' /
   B4WS5ASB  998 'MISSING' 999 'INAPP' /
   B4WA5TAC  9999998 'MISSING' 9999999 'INAPP' /
   B4WA5ACM  9998 'MISSING' 9999 'INAPP' /
   B4WA5MAC  9998 'MISSING' 9999 'INAPP' /
   B4WA5IAC  8 'MISSING' 9 'INAPP' /
   B4WA5ISW  8 'MISSING' 9 'INAPP' /
   B4WA5WT   9998 'MISSING' 9999 'INAPP' /
   B4WA5PW   998 'MISSING' 999 'INAPP' /
   B4WA5WB   998 'MISSING' 999 'INAPP' /
   B4WA5AWB  998 'MISSING' 999 'INAPP' /
   B4WA5SLT  998 'MISSING' 999 'INAPP' /
   B4WA5PSL  98 'MISSING' 99 'INAPP' /
   B4WA5SLB  998 'MISSING' 999 'INAPP' /
   B4WA5ASB  98 'MISSING' 99 'INAPP' /
   B4WR6TAC  999998 'MISSING' 999999 'INAPP' /
   B4WR6ACM  998 'MISSING' 999 'INAPP' /
   B4WR6MAC  9998 'MISSING' 9999 'INAPP' /
   B4WR6IAC  98 'MISSING' 99 'INAPP' /
   B4WR6SW   98 'MISSING' 99 'INAPP' /
   B4WR6WT   998 'MISSING' 999 'INAPP' /
   B4WR6PW   998 'MISSING' 999 'INAPP' /
   B4WR6WB   998 'MISSING' 999 'INAPP' /
   B4WR6AWB  998 'MISSING' 999 'INAPP' /
   B4WR6SLT  9998 'MISSING' 9999 'INAPP' /
   B4WR6PSL  998 'MISSING' 999 'INAPP' /
   B4WR6SLB  998 'MISSING' 999 'INAPP' /
   B4WR6ASB  998 'MISSING' 999 'INAPP' /
   B4WS6TAC  999998 'MISSING' 999999 'INAPP' /
   B4WS6ACM  998 'MISSING' 999 'INAPP' /
   B4WS6MAC  9998 'MISSING' 9999 'INAPP' /
   B4WS6IAC  98 'MISSING' 99 'INAPP' /
   B4WS6ISW  98 'MISSING' 99 'INAPP' /
   B4WS6OL   998 'MISSING' 999 'INAPP' /
   B4WS6SNT  998 'MISSING' 999 'INAPP' /
   B4WS6EFF  998 'MISSING' 999 'INAPP' /
   B4WS6WSO  998 'MISSING' 999 'INAPP' /
   B4WS6WT   998 'MISSING' 999 'INAPP' /
   B4WS6PW   98 'MISSING' 99 'INAPP' /
   B4WS6WB   998 'MISSING' 999 'INAPP' /
   B4WS6AWB  98 'MISSING' 99 'INAPP' /
   B4WS6SLT  9998 'MISSING' 9999 'INAPP' /
   B4WS6PSL  998 'MISSING' 999 'INAPP' /
   B4WS6SLB  998 'MISSING' 999 'INAPP' /
   B4WS6ASB  998 'MISSING' 999 'INAPP' /
   B4WA6TAC  9999998 'MISSING' 9999999 'INAPP' /
   B4WA6ACM  9998 'MISSING' 9999 'INAPP' /
   B4WA6MAC  9998 'MISSING' 9999 'INAPP' /
   B4WA6IAC  8 'MISSING' 9 'INAPP' /
   B4WA6ISW  8 'MISSING' 9 'INAPP' /
   B4WA6WT   9998 'MISSING' 9999 'INAPP' /
   B4WA6PW   998 'MISSING' 999 'INAPP' /
   B4WA6WB   998 'MISSING' 999 'INAPP' /
   B4WA6AWB  998 'MISSING' 999 'INAPP' /
   B4WA6SLT  998 'MISSING' 999 'INAPP' /
   B4WA6PSL  98 'MISSING' 99 'INAPP' /
   B4WA6SLB  998 'MISSING' 999 'INAPP' /
   B4WA6ASB  98 'MISSING' 99 'INAPP' /
   B4WR7TAC  999998 'MISSING' 999999 'INAPP' /
   B4WR7ACM  998 'MISSING' 999 'INAPP' /
   B4WR7MAC  9998 'MISSING' 9999 'INAPP' /
   B4WR7IAC  98 'MISSING' 99 'INAPP' /
   B4WR7SW   98 'MISSING' 99 'INAPP' /
   B4WR7WT   998 'MISSING' 999 'INAPP' /
   B4WR7PW   998 'MISSING' 999 'INAPP' /
   B4WR7WB   998 'MISSING' 999 'INAPP' /
   B4WR7AWB  998 'MISSING' 999 'INAPP' /
   B4WR7SLT  9998 'MISSING' 9999 'INAPP' /
   B4WR7PSL  998 'MISSING' 999 'INAPP' /
   B4WR7SLB  998 'MISSING' 999 'INAPP' /
   B4WR7ASB  998 'MISSING' 999 'INAPP' /
   B4WS7TAC  999998 'MISSING' 999999 'INAPP' /
   B4WS7ACM  998 'MISSING' 999 'INAPP' /
   B4WS7MAC  9998 'MISSING' 9999 'INAPP' /
   B4WS7IAC  98 'MISSING' 99 'INAPP' /
   B4WS7ISW  98 'MISSING' 99 'INAPP' /
   B4WS7OL   998 'MISSING' 999 'INAPP' /
   B4WS7SNT  998 'MISSING' 999 'INAPP' /
   B4WS7EFF  998 'MISSING' 999 'INAPP' /
   B4WS7WSO  998 'MISSING' 999 'INAPP' /
   B4WS7WT   998 'MISSING' 999 'INAPP' /
   B4WS7PW   98 'MISSING' 99 'INAPP' /
   B4WS7WB   998 'MISSING' 999 'INAPP' /
   B4WS7AWB  98 'MISSING' 99 'INAPP' /
   B4WS7SLT  9998 'MISSING' 9999 'INAPP' /
   B4WS7PSL  998 'MISSING' 999 'INAPP' /
   B4WS7SLB  998 'MISSING' 999 'INAPP' /
   B4WS7ASB  998 'MISSING' 999 'INAPP' /
   B4VHAWR   1 'STRONGLY LEFT HAND' 2 'LEFT HAND'
             3 'EITHER HAND OR BOTH HANDS' 4 'RIGHT HAND'
             5 'STRONGLY RIGHT HAND' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4VHADW   1 'STRONGLY LEFT HAND' 2 'LEFT HAND'
             3 'EITHER HAND OR BOTH HANDS' 4 'RIGHT HAND'
             5 'STRONGLY RIGHT HAND' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4VHATH   1 'STRONGLY LEFT HAND' 2 'LEFT HAND'
             3 'EITHER HAND OR BOTH HANDS' 4 'RIGHT HAND'
             5 'STRONGLY RIGHT HAND' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4VHASC   1 'STRONGLY LEFT HAND' 2 'LEFT HAND'
             3 'EITHER HAND OR BOTH HANDS' 4 'RIGHT HAND'
             5 'STRONGLY RIGHT HAND' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4VHATO   1 'STRONGLY LEFT HAND' 2 'LEFT HAND'
             3 'EITHER HAND OR BOTH HANDS' 4 'RIGHT HAND'
             5 'STRONGLY RIGHT HAND' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4VHAKN   1 'STRONGLY LEFT HAND' 2 'LEFT HAND'
             3 'EITHER HAND OR BOTH HANDS' 4 'RIGHT HAND'
             5 'STRONGLY RIGHT HAND' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4VHASP   1 'STRONGLY LEFT HAND' 2 'LEFT HAND'
             3 'EITHER HAND OR BOTH HANDS' 4 'RIGHT HAND'
             5 'STRONGLY RIGHT HAND' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4VHABR   1 'STRONGLY LEFT HAND' 2 'LEFT HAND'
             3 'EITHER HAND OR BOTH HANDS' 4 'RIGHT HAND'
             5 'STRONGLY RIGHT HAND' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4VHASM   1 'STRONGLY LEFT HAND' 2 'LEFT HAND'
             3 'EITHER HAND OR BOTH HANDS' 4 'RIGHT HAND'
             5 'STRONGLY RIGHT HAND' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4VHAOB   1 'STRONGLY LEFT HAND' 2 'LEFT HAND'
             3 'EITHER HAND OR BOTH HANDS' 4 'RIGHT HAND'
             5 'STRONGLY RIGHT HAND' 7 'DONT KNOW' 8 'MISSING' 9 'INAPP' /
   B4VHAKI   1 'STRONGLY LEFT FOOT' 2 'LEFT FOOT' 3 'EITHER FOOT'
             4 'RIGHT FOOT' 5 'STRONGLY RIGHT FOOT' /
   B4VHAOE   1 'STRONGLY LEFT EYE' 2 'LEFT EYE' 3 'EITHER EYE' 4 'RIGHT EYE'
             5 'STRONGLY RIGHT EYE' /
   B4VHALT   998 'MISSING' 999 'INAPP' /
   B4VHART   998 'MISSING' 999 'INAPP' /
   B4VHALQ   998 'MISSING' 999 'INAPP' /
   B4VHADZ   0 'LQ=0, L & R HANDS EQUAL' 98 'MISSING' 99 'INAPP' /
   B4VHADR   98 'MISSING' 99 'INAPP' /
   B4VHADL   98 'MISSING' 99 'INAPP' /
   B4VATEH   9999 'INAPP' /
   B4VCAFH   9999 'INAPP' /
   B4VCIGH   9999 'INAPP' /
   B4VCLB    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B4VCLBT   1 'RED-GREEN' 2 'BLUE-GREEN' 3 'OTHER' 7 'DON''T KNOW'
             8 'MISSING' 9 'INAPP' /
   B4VCIRC   1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B4VLC     1 'UPPER RIGHT & UPPER LEFT' 2 'UPPER RIGHT & LOWER LEFT'
             3 'OTHER' 8 'REFUSED/MISSING' 9 'INAPPLICABLE' /
   B4VSRB1   1 'NOT STRESSED AT ALL' 10 'EXTREMELY STRESSED'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B4VCS1    1 'MATH' 2 'STROOP' 3 'PASAT' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B4VSRCS1  1 'NOT STRESSED AT ALL' 10 'EXTREMELY STRESSED'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B4VSRR1   1 'NOT STRESSED AT ALL' 10 'EXTREMELY STRESSED'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B4VCS2    1 'MATH' 2 'STROOP' 3 'PASAT' 8 'REFUSED/MISSING'
             9 'INAPPLICABLE' /
   B4VSRCS2  1 'NOT STRESSED AT ALL' 10 'EXTREMELY STRESSED'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B4VSRR2   1 'NOT STRESSED AT ALL' 10 'EXTREMELY STRESSED'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B4VSRU1   1 'NOT STRESSED AT ALL' 10 'EXTREMELY STRESSED'
             98 'REFUSED/MISSING' 99 'INAPPLICABLE' /
   B4VSTS1   998 'MISSING' /
   B4VS1S2   998 'MISSING' /
   B4VS2S3   998 'MISSING' /
   B4VS3S4   998 'MISSING' /
   B4ZPPHYS  1 'NO' 2 'BASELINE ONLY' 3 'S1 PASAT' 4 'S1 STROOP' 5 'S2 PASAT'
             6 'S2 STROOP' 7 'COMPLETE' 8 'OTHER' 9 'S1 MATH' 10 'S2 MATH' /
   B4ZPHYSD  1 'NONE' 2 'NO BP' 3 'NO RESIRATION' 4 'NO ECG' 5 'ALL'
             6 'OTHER' /
   B4VTERM   1 'YES TERMINATED' 2 'NOT TERMINATED' 3 'SESSION NOT RUN' /
   B4VPACEM  0 'NO PACEMAKER' 1 'HAS PACEMAKER' /
   B4VPPSS   1 'COMPLETE' 2 'INCOMPLETE: PHYS' 3 'INCOMPLETE: TECH'
             4 'NOT RUN' /
   B4VPPSR   1 'PP SUCCESSFUL' 2 'HI/LO BP' 3 'PHYS DISCOMFORT'
             4 'PHYS INCOMPETENCE' 5 'MED CONDITION' 6 'EQUIP: ECG/OTHER'
             7 'EQUIP: FINOMETER' 8 'EQUIP: OTHER' 9 'OTHER' /
   B4VBEQ    1 'EXCELLENT' 2 'GOOD' 3 'SCOREABLE' 4 'UNSCOREABLE' 5 'NO DATA'
             /
   B4VBEQR   1 'CLEAN/CLEAR SIGNAL' 2 'NOISY BASELINE' 3 'ABERRANT BEATS'
             4 'BAD INTERVALS' 5 'NO DATA' 6 'OTHER' /
   B4VMEQ    1 'EXCELLENT' 2 'GOOD' 3 'SCOREABLE' 4 'UNSCOREABLE' 5 'NO DATA'
             /
   B4VMEQR   1 'CLEAN/CLEAR SIGNAL' 2 'NOISY BASELINE' 3 'ABERRANT BEATS'
             4 'BAD INTERVALS' 5 'NO DATA' 6 'OTHER' /
   B4VPEQ    1 'EXCELLENT' 2 'GOOD' 3 'SCOREABLE' 4 'UNSCOREABLE' 5 'NO DATA'
             /
   B4VPEQR   1 'CLEAN/CLEAR SIGNAL' 2 'NOISY BASELINE' 3 'ABERRANT BEATS'
             4 'BAD INTERVALS' 5 'NO DATA' 6 'OTHER' /
   B4VSEQ    1 'EXCELLENT' 2 'GOOD' 3 'SCOREABLE' 4 'UNSCOREABLE' 5 'NO DATA'
             /
   B4VSEQR   1 'CLEAN/CLEAR SIGNAL' 2 'NOISY BASELINE' 3 'ABERRANT BEATS'
             4 'BAD INTERVALS' 5 'NO DATA' 6 'OTHER' /
   B4VR1EQ   1 'EXCELLENT' 2 'GOOD' 3 'SCOREABLE' 4 'UNSCOREABLE' 5 'NO DATA'
             /
   B4VR1EQR  1 'CLEAN/CLEAR SIGNAL' 2 'NOISY BASELINE' 3 'ABERRANT BEATS'
             4 'BAD INTERVALS' 5 'NO DATA' 6 'OTHER' /
   B4VR2EQ   1 'EXCELLENT' 2 'GOOD' 3 'SCOREABLE' 4 'UNSCOREABLE' 5 'NO DATA'
             /
   B4VR2EQR  1 'CLEAN/CLEAR SIGNAL' 2 'NOISY BASELINE' 3 'ABERRANT BEATS'
             4 'BAD INTERVALS' 5 'NO DATA' 6 'OTHER' /
   B4VUEQ    1 'EXCELLENT' 2 'GOOD' 3 'SCOREABLE' 4 'UNSCOREABLE' 5 'NO DATA'
             /
   B4VUEQR   1 'CLEAN/CLEAR SIGNAL' 2 'NOISY BASELINE' 3 'ABERRANT BEATS'
             4 'BAD INTERVALS' 5 'NO DATA' 6 'OTHER' /
   B4VB1DU   9998 'MISSING' 9999 'INAPP' /
   B4VB1BEG  99998 'MISSING' 99999 'INAPP' /
   B4VB1END  99998 'MISSING' 99999 'INAPP' /
   B4VB1MAX  99998 'MISSING' 99999 'INAPP' /
   B4VB1NU   9998 'MISSING' 9999 'INAPP' /
   B4VB1HR   99998 'MISSING' 99999 'INAPP' /
   B4VB1SD   99998 'MISSING' 99999 'INAPP' /
   B4VB1LSD  99998 'MISSING' 99999 'INAPP' /
   B4VB1RM   99998 'MISSING' 99999 'INAPP' /
   B4VB1LRM  99998 'MISSING' 99999 'INAPP' /
   B4VB1LF   99998 'MISSING' 99999 'INAPP' /
   B4VB1LLF  99998 'MISSING' 99999 'INAPP' /
   B4VB1HF   99998 'MISSING' 99999 'INAPP' /
   B4VB1LHF  99998 'MISSING' 99999 'INAPP' /
   B4VB2DU   9998 'MISSING' 9999 'INAPP' /
   B4VB2BEG  99998 'MISSING' 99999 'INAPP' /
   B4VB2END  99998 'MISSING' 99999 'INAPP' /
   B4VB2MAX  99998 'MISSING' 99999 'INAPP' /
   B4VB2NU   9998 'MISSING' 9999 'INAPP' /
   B4VB2HR   99998 'MISSING' 99999 'INAPP' /
   B4VB2SD   99998 'MISSING' 99999 'INAPP' /
   B4VB2LSD  99998 'MISSING' 99999 'INAPP' /
   B4VB2RM   99998 'MISSING' 99999 'INAPP' /
   B4VB2LRM  99998 'MISSING' 99999 'INAPP' /
   B4VB2LF   99998 'MISSING' 99999 'INAPP' /
   B4VB2LLF  99998 'MISSING' 99999 'INAPP' /
   B4VB2HF   99998 'MISSING' 99999 'INAPP' /
   B4VB2LHF  99998 'MISSING' 99999 'INAPP' /
   B4VM1DU   9998 'MISSING' 9999 'INAPP' /
   B4VM1BEG  99998 'MISSING' 99999 'INAPP' /
   B4VM1END  99998 'MISSING' 99999 'INAPP' /
   B4VM1MAX  99998 'MISSING' 99999 'INAPP' /
   B4VM1NU   9998 'MISSING' 9999 'INAPP' /
   B4VM1HR   99998 'MISSING' 99999 'INAPP' /
   B4VM1SD   99998 'MISSING' 99999 'INAPP' /
   B4VM1LSD  99998 'MISSING' 99999 'INAPP' /
   B4VM1RM   99998 'MISSING' 99999 'INAPP' /
   B4VM1LRM  99998 'MISSING' 99999 'INAPP' /
   B4VM1LF   99998 'MISSING' 99999 'INAPP' /
   B4VM1LLF  99998 'MISSING' 99999 'INAPP' /
   B4VM1HF   99998 'MISSING' 99999 'INAPP' /
   B4VM1LHF  99998 'MISSING' 99999 'INAPP' /
   B4VP1DU   9998 'MISSING' 9999 'INAPP' /
   B4VP1BEG  99998 'MISSING' 99999 'INAPP' /
   B4VP1END  99998 'MISSING' 99999 'INAPP' /
   B4VP1MAX  99998 'MISSING' 99999 'INAPP' /
   B4VP1NU   9998 'MISSING' 9999 'INAPP' /
   B4VP1HR   99998 'MISSING' 99999 'INAPP' /
   B4VP1SD   99998 'MISSING' 99999 'INAPP' /
   B4VP1LSD  99998 'MISSING' 99999 'INAPP' /
   B4VP1RM   99998 'MISSING' 99999 'INAPP' /
   B4VP1LRM  99998 'MISSING' 99999 'INAPP' /
   B4VP1LF   99998 'MISSING' 99999 'INAPP' /
   B4VP1LLF  99998 'MISSING' 99999 'INAPP' /
   B4VP1HF   99998 'MISSING' 99999 'INAPP' /
   B4VP1LHF  99998 'MISSING' 99999 'INAPP' /
   B4VP2DU   9998 'MISSING' 9999 'INAPP' /
   B4VP2BEG  99998 'MISSING' 99999 'INAPP' /
   B4VP2END  99998 'MISSING' 99999 'INAPP' /
   B4VP2MAX  99998 'MISSING' 99999 'INAPP' /
   B4VP2NU   9998 'MISSING' 9999 'INAPP' /
   B4VP2HR   99998 'MISSING' 99999 'INAPP' /
   B4VP2SD   99998 'MISSING' 99999 'INAPP' /
   B4VP2LSD  99998 'MISSING' 99999 'INAPP' /
   B4VP2RM   99998 'MISSING' 99999 'INAPP' /
   B4VP2LRM  99998 'MISSING' 99999 'INAPP' /
   B4VP2LF   99998 'MISSING' 99999 'INAPP' /
   B4VP2LLF  99998 'MISSING' 99999 'INAPP' /
   B4VP2HF   99998 'MISSING' 99999 'INAPP' /
   B4VP2LHF  99998 'MISSING' 99999 'INAPP' /
   B4VR1DU   9998 'MISSING' 9999 'INAPP' /
   B4VR1BEG  99998 'MISSING' 99999 'INAPP' /
   B4VR1END  99998 'MISSING' 99999 'INAPP' /
   B4VR1MAX  99998 'MISSING' 99999 'INAPP' /
   B4VR1NU   9998 'MISSING' 9999 'INAPP' /
   B4VR1HR   99998 'MISSING' 99999 'INAPP' /
   B4VR1SD   99998 'MISSING' 99999 'INAPP' /
   B4VR1LSD  99998 'MISSING' 99999 'INAPP' /
   B4VR1RM   99998 'MISSING' 99999 'INAPP' /
   B4VR1LRM  99998 'MISSING' 99999 'INAPP' /
   B4VR1LF   99998 'MISSING' 99999 'INAPP' /
   B4VR1LLF  99998 'MISSING' 99999 'INAPP' /
   B4VR1HF   99998 'MISSING' 99999 'INAPP' /
   B4VR1LHF  99998 'MISSING' 99999 'INAPP' /
   B4VR2DU   9998 'MISSING' 9999 'INAPP' /
   B4VR2BEG  99998 'MISSING' 99999 'INAPP' /
   B4VR2END  99998 'MISSING' 99999 'INAPP' /
   B4VR2MAX  99998 'MISSING' 99999 'INAPP' /
   B4VR2NU   9998 'MISSING' 9999 'INAPP' /
   B4VR2HR   99998 'MISSING' 99999 'INAPP' /
   B4VR2SD   99998 'MISSING' 99999 'INAPP' /
   B4VR2LSD  99998 'MISSING' 99999 'INAPP' /
   B4VR2RM   99998 'MISSING' 99999 'INAPP' /
   B4VR2LRM  99998 'MISSING' 99999 'INAPP' /
   B4VR2LF   99998 'MISSING' 99999 'INAPP' /
   B4VR2LLF  99998 'MISSING' 99999 'INAPP' /
   B4VR2HF   99998 'MISSING' 99999 'INAPP' /
   B4VR2LHF  99998 'MISSING' 99999 'INAPP' /
   B4VS1DU   9998 'MISSING' 9999 'INAPP' /
   B4VS1BEG  99998 'MISSING' 99999 'INAPP' /
   B4VS1END  99998 'MISSING' 99999 'INAPP' /
   B4VS1MAX  99998 'MISSING' 99999 'INAPP' /
   B4VS1NU   9998 'MISSING' 9999 'INAPP' /
   B4VS1HR   99998 'MISSING' 99999 'INAPP' /
   B4VS1SD   99998 'MISSING' 99999 'INAPP' /
   B4VS1LSD  99998 'MISSING' 99999 'INAPP' /
   B4VS1RM   99998 'MISSING' 99999 'INAPP' /
   B4VS1LRM  99998 'MISSING' 99999 'INAPP' /
   B4VS1LF   99998 'MISSING' 99999 'INAPP' /
   B4VS1LLF  99998 'MISSING' 99999 'INAPP' /
   B4VS1HF   99998 'MISSING' 99999 'INAPP' /
   B4VS1LHF  99998 'MISSING' 99999 'INAPP' /
   B4VS2DU   9998 'MISSING' 9999 'INAPP' /
   B4VS2BEG  99998 'MISSING' 99999 'INAPP' /
   B4VS2END  99998 'MISSING' 99999 'INAPP' /
   B4VS2MAX  99998 'MISSING' 99999 'INAPP' /
   B4VS2NU   9998 'MISSING' 9999 'INAPP' /
   B4VS2HR   99998 'MISSING' 99999 'INAPP' /
   B4VS2SD   99998 'MISSING' 99999 'INAPP' /
   B4VS2LSD  99998 'MISSING' 99999 'INAPP' /
   B4VS2RM   99998 'MISSING' 99999 'INAPP' /
   B4VS2LRM  99998 'MISSING' 99999 'INAPP' /
   B4VS2LF   99998 'MISSING' 99999 'INAPP' /
   B4VS2LLF  99998 'MISSING' 99999 'INAPP' /
   B4VS2HF   99998 'MISSING' 99999 'INAPP' /
   B4VS2LHF  99998 'MISSING' 99999 'INAPP' /
   B4VU1DU   9998 'MISSING' 9999 'INAPP' /
   B4VU1BEG  99998 'MISSING' 99999 'INAPP' /
   B4VU1END  99998 'MISSING' 99999 'INAPP' /
   B4VU1MAX  99998 'MISSING' 99999 'INAPP' /
   B4VU1NU   9998 'MISSING' 9999 'INAPP' /
   B4VU1HR   99998 'MISSING' 99999 'INAPP' /
   B4VU1SD   99998 'MISSING' 99999 'INAPP' /
   B4VU1LSD  99998 'MISSING' 99999 'INAPP' /
   B4VU1RM   99998 'MISSING' 99999 'INAPP' /
   B4VU1LRM  99998 'MISSING' 99999 'INAPP' /
   B4VU1LF   99998 'MISSING' 99999 'INAPP' /
   B4VU1LLF  99998 'MISSING' 99999 'INAPP' /
   B4VU1HF   99998 'MISSING' 99999 'INAPP' /
   B4VU1LHF  99998 'MISSING' 99999 'INAPP' /
   .

* SPSS MISSING VALUES COMMAND.

* MISSING VALUES
     B1PAGE_M2 (98, 99) /
     B1PGENDER (8) /
     B4ZB1CLG (99) /
     B4Q1A (7, 8, 9) /
     B4Q1B (7, 8, 9) /
     B4Q1C (7, 8, 9) /
     B4Q1D (7, 8, 9) /
     B4Q1E (7, 8, 9) /
     B4Q1F (7, 8, 9) /
     B4Q1G (7, 8, 9) /
     B4Q1H (7, 8, 9) /
     B4Q1I (7, 8, 9) /
     B4Q1J (7, 8, 9) /
     B4Q1K (7, 8, 9) /
     B4Q1L (7, 8, 9) /
     B4Q1M (7, 8, 9) /
     B4Q1N (7, 8, 9) /
     B4Q1O (7, 8, 9) /
     B4Q1P (7, 8, 9) /
     B4Q1Q (7, 8, 9) /
     B4Q1R (7, 8, 9) /
     B4Q1S (7, 8, 9) /
     B4Q1T (7, 8, 9) /
     B4Q1U (7, 8, 9) /
     B4Q1V (7, 8, 9) /
     B4Q1W (7, 8, 9) /
     B4Q1X (7, 8, 9) /
     B4Q1Y (7, 8, 9) /
     B4Q1Z (7, 8, 9) /
     B4Q1AA (7, 8, 9) /
     B4Q1BB (7, 8, 9) /
     B4Q1CC (7, 8, 9) /
     B4Q1DD (7, 8, 9) /
     B4Q1EE (7, 8, 9) /
     B4Q1FF (7, 8, 9) /
     B4Q1GG (7, 8, 9) /
     B4Q1HH (7, 8, 9) /
     B4Q1II (7, 8, 9) /
     B4Q1JJ (7, 8, 9) /
     B4Q1KK (7, 8, 9) /
     B4Q1LL (7, 8, 9) /
     B4Q1MM (7, 8, 9) /
     B4Q1NN (7, 8, 9) /
     B4Q1OO (7, 8, 9) /
     B4Q1PP (7, 8, 9) /
     B4Q1QQ (7, 8, 9) /
     B4Q1RR (7, 8, 9) /
     B4Q1SS (7, 8, 9) /
     B4Q1TT (7, 8, 9) /
     B4Q1UU (7, 8, 9) /
     B4Q1VV (7, 8, 9) /
     B4Q1WW (7, 8, 9) /
     B4Q1XX (7, 8, 9) /
     B4Q1YY (7, 8, 9) /
     B4Q1ZZ (7, 8, 9) /
     B4Q1AAA (7, 8, 9) /
     B4Q1BBB (7, 8, 9) /
     B4Q1CCC (7, 8, 9) /
     B4Q1DDD (7, 8, 9) /
     B4Q1EEE (7, 8, 9) /
     B4Q1FFF (7, 8, 9) /
     B4Q1GGG (7, 8, 9) /
     B4Q1HHH (7, 8, 9) /
     B4Q1III (7, 8, 9) /
     B4Q1JJJ (7, 8, 9) /
     B4Q1KKK (7, 8, 9) /
     B4Q1LLL (7, 8, 9) /
     B4QMA_D (98.0) /
     B4QMA_A (98.0) /
     B4QMA_LI (98.0) /
     B4QMA_AA (98.0) /
     B4QMA_PA (98.0) /
     B4Q2 (97, 98, 99) /
     B4Q3A (7, 8, 9) /
     B4Q3B (7, 8, 9) /
     B4Q3C (7, 8, 9) /
     B4Q3D (7, 8, 9) /
     B4Q3E (7, 8, 9) /
     B4Q3F (7, 8, 9) /
     B4Q3G (7, 8, 9) /
     B4Q3H (7, 8, 9) /
     B4Q3I (7, 8, 9) /
     B4Q3J (7, 8, 9) /
     B4Q3K (7, 8, 9) /
     B4Q3L (7, 8, 9) /
     B4Q3M (7, 8, 9) /
     B4Q3N (7, 8, 9) /
     B4Q3O (7, 8, 9) /
     B4Q3P (7, 8, 9) /
     B4Q3Q (7, 8, 9) /
     B4Q3R (7, 8, 9) /
     B4Q3S (7, 8, 9) /
     B4Q3T (7, 8, 9) /
     B4QCESD (98.0) /
     B4Q4A (7, 8, 9) /
     B4Q4B (7, 8, 9) /
     B4Q4C (7, 8, 9) /
     B4Q4D (7, 8, 9) /
     B4Q4E (7, 8, 9) /
     B4Q4F (7, 8, 9) /
     B4Q4G (7, 8, 9) /
     B4Q4H (7, 8, 9) /
     B4Q4I (7, 8, 9) /
     B4Q4J (7, 8, 9) /
     B4QPS_PS (98.0) /
     B4Q5A (7, 8, 9) /
     B4Q5B (7, 8, 9) /
     B4Q5C (7, 8, 9) /
     B4Q5D (7, 8, 9) /
     B4Q5E (7, 8, 9) /
     B4Q5F (7, 8, 9) /
     B4Q5G (7, 8, 9) /
     B4Q5H (7, 8, 9) /
     B4Q5I (7, 8, 9) /
     B4Q5J (7, 8, 9) /
     B4Q5K (7, 8, 9) /
     B4Q5L (7, 8, 9) /
     B4Q5M (7, 8, 9) /
     B4Q5N (7, 8, 9) /
     B4Q5O (7, 8, 9) /
     B4Q5P (7, 8, 9) /
     B4Q5Q (7, 8, 9) /
     B4Q5R (7, 8, 9) /
     B4Q5S (7, 8, 9) /
     B4Q5T (7, 8, 9) /
     B4QAE_AI (98.0) /
     B4QAE_AO (98.0) /
     B4QAE_AC (98.0) /
     B4Q5U (7, 8, 9) /
     B4Q5V (7, 8, 9) /
     B4QAE_AA (8.0) /
     B4Q6A (7, 8, 9) /
     B4Q6B (7, 8, 9) /
     B4Q6C (7, 8, 9) /
     B4Q6D (7, 8, 9) /
     B4Q6E (7, 8, 9) /
     B4Q6F (7, 8, 9) /
     B4Q6G (7, 8, 9) /
     B4Q6H (7, 8, 9) /
     B4Q6I (7, 8, 9) /
     B4Q6J (7, 8, 9) /
     B4Q6K (7, 8, 9) /
     B4Q6L (7, 8, 9) /
     B4Q6M (7, 8, 9) /
     B4Q6N (7, 8, 9) /
     B4Q6O (7, 8, 9) /
     B4QTA_AG (98.0) /
     B4QTA_AT (98.0) /
     B4QTA_AR (98.0) /
     B4Q7A (7, 8, 9) /
     B4Q7B (7, 8, 9) /
     B4Q7C (7, 8, 9) /
     B4Q7D (7, 8, 9) /
     B4Q7E (7, 8, 9) /
     B4Q7F (7, 8, 9) /
     B4Q7G (7, 8, 9) /
     B4Q7H (7, 8, 9) /
     B4Q7I (7, 8, 9) /
     B4Q7J (7, 8, 9) /
     B4Q7K (7, 8, 9) /
     B4Q7L (7, 8, 9) /
     B4Q7M (7, 8, 9) /
     B4Q7N (7, 8, 9) /
     B4Q7O (7, 8, 9) /
     B4Q7P (7, 8, 9) /
     B4Q7Q (7, 8, 9) /
     B4Q7R (7, 8, 9) /
     B4Q7S (7, 8, 9) /
     B4Q7T (7, 8, 9) /
     B4QTA_AX (98.0) /
     B4Q8A (7, 8, 9) /
     B4Q8B (7, 8, 9) /
     B4Q8C (7, 8, 9) /
     B4Q8D (7, 8, 9) /
     B4Q8E (7, 8, 9) /
     B4Q8F (7, 8, 9) /
     B4Q8G (7, 8, 9) /
     B4Q8H (7, 8, 9) /
     B4Q8I (7, 8, 9) /
     B4QSA_SA (8.0) /
     B4Q9A (7, 8, 9) /
     B4Q9B (7, 8, 9) /
     B4Q9C (7, 8, 9) /
     B4Q9D (7, 8, 9) /
     B4Q9E (7, 8, 9) /
     B4Q9F (7, 8, 9) /
     B4Q9G (7, 8, 9) /
     B4Q9H (7, 8, 9) /
     B4Q9I (7, 8, 9) /
     B4Q9J (7, 8, 9) /
     B4Q9K (7, 8, 9) /
     B4Q9L (7, 8, 9) /
     B4Q9M (7, 8, 9) /
     B4Q9N (7, 8, 9) /
     B4Q9O (7, 8, 9) /
     B4Q9P (7, 8, 9) /
     B4Q9Q (7, 8, 9) /
     B4Q9R (7, 8, 9) /
     B4Q9S (7, 8, 9) /
     B4Q9T (7, 8, 9) /
     B4Q9U (7, 8, 9) /
     B4Q9V (7, 8, 9) /
     B4Q9W (7, 8, 9) /
     B4Q9X (7, 8, 9) /
     B4Q9Y (7, 8, 9) /
     B4Q9Z (7, 8, 9) /
     B4Q9AA (7, 8, 9) /
     B4Q9BB (7, 8, 9) /
     B4QCT_EA (98.0) /
     B4QCT_PA (98.0) /
     B4QCT_SA (98.0) /
     B4QCT_EN (98.0) /
     B4QCT_PN (98.0) /
     B4QCT_MD (8.0) /
     B4Q10A1 (7, 8, 9) /
     B4Q10A2 (7, 8, 9) /
     B4Q10B1 (7, 8, 9) /
     B4Q10B2 (7, 8, 9) /
     B4Q10C1 (7, 8, 9) /
     B4Q10C2 (7, 8, 9) /
     B4Q10D1 (7, 8, 9) /
     B4Q10D2 (7, 8, 9) /
     B4Q10E1 (7, 8, 9) /
     B4Q10E2 (7, 8, 9) /
     B4Q10F1 (7, 8, 9) /
     B4Q10F2 (7, 8, 9) /
     B4Q10G1 (7, 8, 9) /
     B4Q10G2 (7, 8, 9) /
     B4Q10H1 (7, 8, 9) /
     B4Q10H2 (7, 8, 9) /
     B4Q10I1 (7, 8, 9) /
     B4Q10I2 (7, 8, 9) /
     B4Q10J1 (7, 8, 9) /
     B4Q10J2 (7, 8, 9) /
     B4Q10K1 (7, 8, 9) /
     B4Q10K2 (7, 8, 9) /
     B4Q10L1 (7, 8, 9) /
     B4Q10L2 (7, 8, 9) /
     B4Q10M1 (7, 8, 9) /
     B4Q10M2 (7, 8, 9) /
     B4Q10N1 (7, 8, 9) /
     B4Q10N2 (7, 8, 9) /
     B4Q10O1 (7, 8, 9) /
     B4Q10O2 (7, 8, 9) /
     B4Q10P1 (7, 8, 9) /
     B4Q10P2 (7, 8, 9) /
     B4Q10Q1 (7, 8, 9) /
     B4Q10Q2 (7, 8, 9) /
     B4Q10R1 (7, 8, 9) /
     B4Q10R2 (7, 8, 9) /
     B4Q10S1 (7, 8, 9) /
     B4Q10S2 (7, 8, 9) /
     B4Q10T1 (7, 8, 9) /
     B4Q10T2 (7, 8, 9) /
     B4Q10U1 (7, 8, 9) /
     B4Q10U2 (7, 8, 9) /
     B4Q10V1 (7, 8, 9) /
     B4Q10V2 (7, 8, 9) /
     B4Q10W1 (7, 8, 9) /
     B4Q10W2 (7, 8, 9) /
     B4Q10X1 (7, 8, 9) /
     B4Q10X2 (7, 8, 9) /
     B4Q10Y1 (7, 8, 9) /
     B4Q10Y2 (7, 8, 9) /
     B4Q10Z1 (7, 8, 9) /
     B4Q10Z2 (7, 8, 9) /
     B4Q10AA1 (7, 8, 9) /
     B4Q10AA2 (7, 8, 9) /
     B4Q10BB1 (7, 8, 9) /
     B4Q10BB2 (7, 8, 9) /
     B4Q10CC1 (7, 8, 9) /
     B4Q10CC2 (7, 8, 9) /
     B4Q10DD1 (7, 8, 9) /
     B4Q10DD2 (7, 8, 9) /
     B4Q10EE1 (7, 8, 9) /
     B4Q10EE2 (7, 8, 9) /
     B4Q10FF1 (7, 8, 9) /
     B4Q10FF2 (7, 8, 9) /
     B4Q10GG1 (7, 8, 9) /
     B4Q10GG2 (7, 8, 9) /
     B4Q10HH1 (7, 8, 9) /
     B4Q10HH2 (7, 8, 9) /
     B4Q10II1 (7, 8, 9) /
     B4Q10II2 (7, 8, 9) /
     B4Q10JJ1 (7, 8, 9) /
     B4Q10JJ2 (7, 8, 9) /
     B4Q10KK1 (7, 8, 9) /
     B4Q10KK2 (7, 8, 9) /
     B4Q10LL1 (7, 8, 9) /
     B4Q10LL2 (7, 8, 9) /
     B4Q10MM1 (7, 8, 9) /
     B4Q10MM2 (7, 8, 9) /
     B4Q10NN1 (7, 8, 9) /
     B4Q10NN2 (7, 8, 9) /
     B4Q10OO1 (7, 8, 9) /
     B4Q10OO2 (7, 8, 9) /
     B4Q10PP1 (7, 8, 9) /
     B4Q10PP2 (7, 8, 9) /
     B4Q10QQ1 (7, 8, 9) /
     B4Q10QQ2 (7, 8, 9) /
     B4Q10RR1 (7, 8, 9) /
     B4Q10RR2 (7, 8, 9) /
     B4Q10SS1 (7, 8, 9) /
     B4Q10SS2 (7, 8, 9) /
     B4Q10TT1 (7, 8, 9) /
     B4Q10TT2 (7, 8, 9) /
     B4Q10UU1 (7, 8, 9) /
     B4Q10UU2 (7, 8, 9) /
     B4Q10VV1 (7, 8, 9) /
     B4Q10VV2 (7, 8, 9) /
     B4Q10WW1 (7, 8, 9) /
     B4Q10WW2 (7, 8, 9) /
     B4Q11A (97, 98, 99) /
     B4Q11B (97, 98, 99) /
     B4Q11C (97, 98, 99) /
     B4Q11D (97, 98, 99) /
     B4Q11E (97, 98, 99) /
     B4Q11F (97, 98, 99) /
     B4Q11G (97, 98, 99) /
     B4Q11H (97, 98, 99) /
     B4Q11I (97, 98, 99) /
     B4Q11J (97, 98, 99) /
     B4Q11K (97, 98, 99) /
     B4Q11L (97, 98, 99) /
     B4Q11M (97, 98, 99) /
     B4Q11N (97, 98, 99) /
     B4Q11O (97, 98, 99) /
     B4Q11P (97, 98, 99) /
     B4Q11Q (97, 98, 99) /
     B4Q11R (97, 98, 99) /
     B4Q11S (97, 98, 99) /
     B4Q11T (97, 98, 99) /
     B4Q11U (97, 98, 99) /
     B4Q11V (97, 98, 99) /
     B4Q11W (97, 98, 99) /
     B4Q11X (97, 98, 99) /
     B4Q11Y (97, 98, 99) /
     B4Q11Z (97, 98, 99) /
     B4Q11AA (97, 98, 99) /
     B4Q11BB (97, 98, 99) /
     B4Q11CC (97, 98, 99) /
     B4QSC_ID (8.0) /
     B4QSC_IT (8.0) /
     B4QSO_PC (8.0) /
     B4QSO_PF (8.0) /
     B4QSO_PX (8.0) /
     B4QSO_IW (8.0) /
     B4QSO_GW (8.0) /
     B4Q12A (97, 98, 99) /
     B4Q12B (97, 98, 99) /
     B4Q12C (97, 98, 99) /
     B4Q12D (97, 98, 99) /
     B4Q12E (97, 98, 99) /
     B4Q12F (97, 98, 99) /
     B4Q12G (97, 98, 99) /
     B4Q12H (97, 98, 99) /
     B4Q12I (97, 98, 99) /
     B4Q12J (97, 98, 99) /
     B4Q12K (97, 98, 99) /
     B4Q12L (97, 98, 99) /
     B4Q12M (97, 98, 99) /
     B4Q12N (97, 98, 99) /
     B4Q12O (97, 98, 99) /
     B4Q12P (97, 98, 99) /
     B4Q12Q (97, 98, 99) /
     B4Q12R (97, 98, 99) /
     B4Q12S (97, 98, 99) /
     B4Q12T (97, 98, 99) /
     B4Q12U (97, 98, 99) /
     B4QRISC (8.0) /
     B4QSYMP (8.0) /
     B4QADJ (8.0) /
     B4Q13A (7, 8, 9) /
     B4Q13B (7, 8, 9) /
     B4Q13C (7, 8, 9) /
     B4Q13D (7, 8, 9) /
     B4Q13E (7, 8, 9) /
     B4Q13F (7, 8, 9) /
     B4Q13G (7, 8, 9) /
     B4Q13H (7, 8, 9) /
     B4Q13H1 (7, 8, 9) /
     B4Q13I (7, 8, 9) /
     B4Q13J (7, 8, 9) /
     B4Q13K (7, 8, 9) /
     B4Q13L (7, 8, 9) /
     B4Q13M (7, 8, 9) /
     B4Q13N (7, 8, 9) /
     B4Q13O1 (7, 8, 9) /
     B4Q13O (7, 8, 9) /
     B4Q13P (7, 8, 9) /
     B4Q13Q (7, 8, 9) /
     B4Q13R (7, 8, 9) /
     B4Q13S (7, 8, 9) /
     B4Q13T (7, 8, 9) /
     B4Q13U (7, 8, 9) /
     B4Q13V (7, 8, 9) /
     B4Q13W (7, 8, 9) /
     B4Q13X (7, 8, 9) /
     B4Q13Y (7, 8, 9) /
     B4Q13Z (7, 8, 9) /
     B4QSUGF (8.0) /
     B4QSTGF (8.0) /
     B4QSOGFD (8.0) /
     B4QSUGFA (8.0) /
     B4QSTGFA (8.0) /
     B4QSOGFM (8.0) /
     B4QSUGS (8.0, 9.0) /
     B4QSTGS (8.0, 9.0) /
     B4QSOLGS (8.0, 9.0) /
     B4Q14A (97, 98, 99) /
     B4Q14B (97, 98, 99) /
     B4Q14C (97, 98, 99) /
     B4Q14D (97, 98, 99) /
     B4Q14E (97, 98, 99) /
     B4Q14F (97, 98, 99) /
     B4Q14G (97, 98, 99) /
     B4Q14H (97, 98, 99) /
     B4Q14I (97, 98, 99) /
     B4Q14J (97, 98, 99) /
     B4Q14K (97, 98, 99) /
     B4Q14L (97, 98, 99) /
     B4Q14M (97, 98, 99) /
     B4Q14N (97, 98, 99) /
     B4Q14O (97, 98, 99) /
     B4Q14P (97, 98, 99) /
     B4Q14Q (97, 98, 99) /
     B4Q14R (97, 98, 99) /
     B4Q14S (97, 98, 99) /
     B4QSC_SC (8.0) /
     B4QSC_CC (8.0) /
     B4QSC_EC (8.0) /
     B4QSC_BC (8.0) /
     B4Q15A (97, 98, 99) /
     B4Q15B (97, 98, 99) /
     B4Q15C (97, 98, 99) /
     B4Q15D (97, 98, 99) /
     B4Q15E (97, 98, 99) /
     B4Q15F (97, 98, 99) /
     B4Q15G (97, 98, 99) /
     B4Q15H (97, 98, 99) /
     B4QSW_SL (8.0) /
     B4QSW_GR (8.0) /
     B4Q16A (7, 8, 9) /
     B4Q16B (7, 8, 9) /
     B4Q16C (7, 8, 9) /
     B4Q16D (7, 8, 9) /
     B4Q16E (7, 8, 9) /
     B4Q16F (7, 8, 9) /
     B4Q16G (7, 8, 9) /
     B4Q16H (7, 8, 9) /
     B4QSW_JP (8.0) /
     B4Q17A (98) /
     B4S1 ('349200.0','352800.0','356400.0') /
     B4S1AMPM (7, 8, 9) /
     B4S2 (9997.0, 9998.0, 9999.0) /
     B4S3 ('349200.0','352800.0','356400.0') /
     B4S3AMPM (7, 8, 9) /
     B4S4 (9997.0, 9998.0, 9999.0) /
     B4S5 (7, 8, 9) /
     B4S6 (7, 8, 9) /
     B4S7 (7, 8, 9) /
     B4S8 (7, 8, 9) /
     B4S9 (7, 8, 9) /
     B4S10A (7, 8, 9) /
     B4S10B (7, 8, 9) /
     B4S10C (7, 8, 9) /
     B4S10D (7, 8, 9) /
     B4S10E (7, 8, 9) /
     B4S11A (7, 8, 9) /
     B4S11B (7, 8, 9) /
     B4S11C (7, 8, 9) /
     B4S11D (7, 8, 9) /
     B4S11E (7, 8, 9) /
     B4S11F (7, 8, 9) /
     B4S11G (7, 8, 9) /
     B4S11H (7, 8, 9) /
     B4S11I (7, 8, 9) /
     B4S11J (7, 8, 9) /
     B4SSQ_GS (98) /
     B4SSQ_S1 (8) /
     B4SSQ_S2 (8) /
     B4SSQ_S3 (8) /
     B4SSQ_S4 (8) /
     B4SSQ_S5 (8) /
     B4SSQ_S6 (8) /
     B4SSQ_S7 (8) /
     B4H1A (7, 8, 9) /
     B4H1AD (7, 8, 9) /
     B4H1B (7, 8, 9) /
     B4H1BD (7, 8, 9) /
     B4H1C (7, 8, 9) /
     B4H1CD (7, 8, 9) /
     B4H1D (7, 8, 9) /
     B4H1DD (7, 8, 9) /
     B4H1E (7, 8, 9) /
     B4H1ED (7, 8) /
     B4H1F (7, 8, 9) /
     B4H1FD (7, 8, 9) /
     B4H1G (7, 8, 9) /
     B4H1GD (7, 8, 9) /
     B4H1H (7, 8, 9) /
     B4H1HD (7, 8, 9) /
     B4H1I (7, 8, 9) /
     B4H1ID (7, 8, 9) /
     B4H1J (7, 8, 9) /
     B4H1JD (7, 8, 9) /
     B4H1K (7, 8, 9) /
     B4H1KD (7, 8, 9) /
     B4H1L (7, 8, 9) /
     B4H1LD (7, 8, 9) /
     B4H1M (7, 8, 9) /
     B4H1MD (7, 8, 9) /
     B4H1N (7, 8, 9) /
     B4H1ND (7, 8, 9) /
     B4H1O (7, 8, 9) /
     B4H1OD (7, 8, 9) /
     B4H1P (7, 8, 9) /
     B4H1PD (7, 8, 9) /
     B4H1Q (7, 8, 9) /
     B4H1QD (7, 8, 9) /
     B4H1R (7, 8, 9) /
     B4H1RD (7, 8, 9) /
     B4H1S (7, 8, 9) /
     B4H1SD (7, 8, 9) /
     B4H1T (7, 8, 9) /
     B4H1TD (7, 8, 9) /
     B4H1U (7, 8, 9) /
     B4H1UD (7, 8, 9) /
     B4H1V (7, 8, 9) /
     B4H1VD (7, 8, 9) /
     B4H1W (7, 8, 9) /
     B4H1WD (7, 8, 9) /
     B4H1X (7, 8, 9) /
     B4H1XD (7, 8, 9) /
     B4H1Y (7, 8, 9) /
     B4H1YD (7, 8, 9) /
     B4H2 (7, 8, 9) /
     B4H2AF (97, 98, 99) /
     B4H2AY (9997, 9998, 9999) /
     B4H2BF (97, 98, 99) /
     B4H2BY (9997, 9998, 9999) /
     B4H2CF (97, 98, 99) /
     B4H2CY (9997, 9998, 9999) /
     B4H2DF (97, 98, 99) /
     B4H2DY (9997, 9998, 9999) /
     B4H2EF (97, 98, 99) /
     B4H2EY (9997, 9998, 9999) /
     B4H2FF (97, 98, 99) /
     B4H2FY (9997, 9998, 9999) /
     B4H2GF (97, 98, 99) /
     B4H2GY (9997, 9998, 9999) /
     B4H2HF (97, 98, 99) /
     B4H2HY (9997, 9998, 9999) /
     B4H2IF (97, 98, 99) /
     B4H2IY (9997, 9998, 9999) /
     B4H2JF (97, 98, 99) /
     B4H2JY (9997, 9998, 9999) /
     B4H2KF (97, 98, 99) /
     B4H2KY (9997, 9998, 9999) /
     B4H2LF (97, 98, 99) /
     B4H2LY (9997, 9998, 9999) /
     B4H2MF (97, 98, 99) /
     B4H2MY (9997, 9998, 9999) /
     B4H2NF (97, 98, 99) /
     B4H2NY (9997, 9998, 9999) /
     B4HBRKB (97) /
     B4H3 (7, 8, 9) /
     B4H3AL (7, 8, 9) /
     B4H3AY (9997, 9998, 9999) /
     B4H3BL (7, 8, 9) /
     B4H3BY (9997, 9998, 9999) /
     B4H3CL (7, 8, 9) /
     B4H3CY (9997, 9998, 9999) /
     B4H3DL (7, 8, 9) /
     B4H3DY (9997, 9998, 9999) /
     B4H3EL (7, 8, 9) /
     B4H3EY (9997, 9998, 9999) /
     B4H3FL (7, 8, 9) /
     B4H3FY (9997, 9998, 9999) /
     B4H3GL (7, 8, 9) /
     B4H3GY (9997, 9998, 9999) /
     B4H3HL (7, 8, 9) /
     B4H3HY (9997, 9998, 9999) /
     B4H3IL (7, 8, 9) /
     B4H3IY (9997, 9998, 9999) /
     B4H3JL (7, 8, 9) /
     B4H3JY (9997, 9998, 9999) /
     B4H4 (7, 8, 9) /
     B4H4AH (7, 8, 9) /
     B4H4AY (9997, 9998, 9999) /
     B4H4BH (7, 8, 9) /
     B4H4BY (9997, 9998, 9999) /
     B4H4CH (7, 8, 9) /
     B4H4CY (9997, 9998, 9999) /
     B4H5 (7, 8, 9) /
     B4H5AH (7, 8, 9) /
     B4H5AY (9997, 9998, 9999) /
     B4H5BH (7, 8, 9) /
     B4H5BY (9997, 9998, 9999) /
     B4H5CH (7, 8, 9) /
     B4H5CY (9997, 9998, 9999) /
     B4H6 (7, 8, 9) /
     B4H6AH (7, 8, 9) /
     B4H6AY (9997, 9998, 9999) /
     B4H6BH (7, 8, 9) /
     B4H6BY (9997, 9998, 9999) /
     B4H6CH (7, 8, 9) /
     B4H6CY (9997, 9998, 9999) /
     B4H6DH (7, 8) /
     B4H6DY (9997, 9998, 9999) /
     B4H7 (7, 8, 9) /
     B4H7AH (7, 8, 9) /
     B4H7AY (9997, 9998, 9999) /
     B4H7BH (7, 8, 9) /
     B4H7BY (9997, 9998, 9999) /
     B4H8 (7, 8, 9) /
     B4H8AH (7, 8, 9) /
     B4H8AY (9997, 9998, 9999) /
     B4H8BH (7, 8, 9) /
     B4H8BY (9997, 9998, 9999) /
     B4H8CH (7, 8, 9) /
     B4H8CY (9997, 9998, 9999) /
     B4H8DH (7, 8, 9) /
     B4H8DY (9997, 9998, 9999) /
     B4H9 (7, 8, 9) /
     B4H10 (7, 8, 9) /
     B4H10A (7, 8, 9) /
     B4H10B (7, 8, 9) /
     B4H10C (7, 8, 9) /
     B4H10D (7, 8, 9) /
     B4H10E (7, 8, 9) /
     B4H10F (7, 8, 9) /
     B4H11A (7, 8, 9) /
     B4H11AI (7, 8, 9) /
     B4H11AA (997.0, 998.0, 999.0) /
     B4H11B (7, 8, 9) /
     B4H11BI (7, 8, 9) /
     B4H11BA (997.0, 998.0, 999.0) /
     B4H11C (7, 8, 9) /
     B4H11CI (7, 8, 9) /
     B4H11CA (997.0, 998.0, 999.0) /
     B4H11D (7, 8, 9) /
     B4H11DI (7, 8, 9) /
     B4H11DA (997.0, 998.0, 999.0) /
     B4H11E (7, 8, 9) /
     B4H12A (7, 8, 9) /
     B4H12AM (97, 98, 99) /
     B4H12AY (9997, 9998, 9999) /
     B4H12B (7, 8, 9) /
     B4H12BM (97, 98, 99) /
     B4H12BY (9997, 9998, 9999) /
     B4H12C (7, 8, 9) /
     B4H12CM (97, 98, 99) /
     B4H12CY (9997, 9998, 9999) /
     B4H13 (97, 98, 99) /
     B4H14 (7, 8, 9) /
     B4H14A (7, 8, 9) /
     B4H15A (7, 8, 9) /
     B4H15A1 (7, 8, 9) /
     B4H15A2 (7, 8, 9) /
     B4H15A3 (7, 8, 9) /
     B4H15A4 (7, 8, 9) /
     B4H15A5 (7, 8, 9) /
     B4H15A6 (7, 8, 9) /
     B4H15A7 (7, 8, 9) /
     B4H15B (7, 8, 9) /
     B4H15B1 (7, 8, 9) /
     B4H15B2 (7, 8, 9) /
     B4H15B3 (7, 8, 9) /
     B4H15B4 (7, 8, 9) /
     B4H15B5 (7, 8, 9) /
     B4H15B6 (7, 8, 9) /
     B4H15B7 (7, 8, 9) /
     B4H15C (7, 8, 9) /
     B4H15C1 (7, 8, 9) /
     B4H15C2 (7, 8, 9) /
     B4H15C3 (7, 8, 9) /
     B4H15C4 (7, 8, 9) /
     B4H15C5 (7, 8, 9) /
     B4H15C6 (7, 8, 9) /
     B4H15C7 (7, 8, 9) /
     B4H15D (7, 8, 9) /
     B4H15D1 (7, 8, 9) /
     B4H15D2 (7, 8, 9) /
     B4H15D3 (7, 8, 9) /
     B4H15D4 (7, 8, 9) /
     B4H15D5 (7, 8, 9) /
     B4H15D6 (7, 8, 9) /
     B4H15D7 (7, 8, 9) /
     B4H15E (7, 8, 9) /
     B4H15E1 (7, 8, 9) /
     B4H15E2 (7, 8, 9) /
     B4H15E3 (7, 8, 9) /
     B4H15E4 (7, 8, 9) /
     B4H15E5 (7, 8, 9) /
     B4H15E6 (7, 8, 9) /
     B4H15E7 (7, 8, 9) /
     B4H15F (7, 8, 9) /
     B4H15F1 (7, 8, 9) /
     B4H15F2 (7, 8, 9) /
     B4H15F3 (7, 8, 9) /
     B4H15F4 (7, 8, 9) /
     B4H15F5 (7, 8, 9) /
     B4H15F6 (7, 8, 9) /
     B4H15F7 (7, 8, 9) /
     B4H15G (7, 8, 9) /
     B4H15G1 (7, 8, 9) /
     B4H15G2 (7, 8, 9) /
     B4H15G3 (7, 8, 9) /
     B4H15G4 (7, 8, 9) /
     B4H15G5 (7, 8, 9) /
     B4H15G6 (7, 8, 9) /
     B4H15G7 (7, 8, 9) /
     B4H15H (7, 8, 9) /
     B4H15H1 (7, 8, 9) /
     B4H15H2 (7, 8, 9) /
     B4H15H3 (7, 8, 9) /
     B4H15H4 (7, 8, 9) /
     B4H15H5 (7, 8, 9) /
     B4H15H6 (7, 8, 9) /
     B4H15H7 (7, 8, 9) /
     B4H15I (7, 8, 9) /
     B4H15I1 (7, 8, 9) /
     B4H15I2 (7, 8, 9) /
     B4H15I3 (7, 8, 9) /
     B4H15I4 (7, 8, 9) /
     B4H15I5 (7, 8, 9) /
     B4H15I6 (7, 8, 9) /
     B4H15I7 (7, 8, 9) /
     B4H15J (7, 8, 9) /
     B4H15J1 (7, 8, 9) /
     B4H15J2 (7, 8, 9) /
     B4H15J3 (7, 8, 9) /
     B4H15J4 (7, 8, 9) /
     B4H15J5 (7, 8, 9) /
     B4H15J6 (7, 8, 9) /
     B4H15J7 (7, 8, 9) /
     B4H15K (7, 8, 9) /
     B4H15K1 (7, 8, 9) /
     B4H15K2 (7, 8, 9) /
     B4H15K3 (7, 8, 9) /
     B4H15K4 (7, 8, 9) /
     B4H15K5 (7, 8, 9) /
     B4H15K6 (7, 8, 9) /
     B4H15K7 (7, 8, 9) /
     B4H15L (7, 8, 9) /
     B4H15L1 (7, 8, 9) /
     B4H15L2 (7, 8, 9) /
     B4H15L3 (7, 8, 9) /
     B4H15L4 (7, 8, 9) /
     B4H15L5 (7, 8, 9) /
     B4H15L6 (7, 8, 9) /
     B4H15L7 (7, 8, 9) /
     B4H15M (7, 8, 9) /
     B4H15M1 (7, 8, 9) /
     B4H15M2 (7, 8, 9) /
     B4H15M3 (7, 8, 9) /
     B4H15M4 (7, 8, 9) /
     B4H15M5 (7, 8, 9) /
     B4H15M6 (7, 8, 9) /
     B4H15M7 (7, 8, 9) /
     B4H15N (7, 8, 9) /
     B4H15N1 (7, 8, 9) /
     B4H15N2 (7, 8, 9) /
     B4H15N3 (7, 8, 9) /
     B4H15N4 (7, 8, 9) /
     B4H15N5 (7, 8, 9) /
     B4H15N6 (7, 8, 9) /
     B4H15N7 (7, 8, 9) /
     B4H15O (7, 8, 9) /
     B4H15O1 (7, 8, 9) /
     B4H15O2 (7, 8, 9) /
     B4H15O3 (7, 8, 9) /
     B4H15O4 (7, 8, 9) /
     B4H15O5 (7, 8, 9) /
     B4H15O6 (7, 8, 9) /
     B4H15O7 (7, 8, 9) /
     B4H15P (7, 8, 9) /
     B4H15P1 (7, 8, 9) /
     B4H15P2 (7, 8, 9) /
     B4H15P3 (7, 8, 9) /
     B4H15P4 (7, 8, 9) /
     B4H15P5 (7, 8, 9) /
     B4H15P6 (7, 8, 9) /
     B4H15P7 (7, 8, 9) /
     B4H15Q (7, 8, 9) /
     B4H15Q1 (7, 8, 9) /
     B4H15Q2 (7, 8, 9) /
     B4H15Q3 (7, 8, 9) /
     B4H15Q4 (7, 8, 9) /
     B4H15Q5 (7, 8, 9) /
     B4H15Q6 (7, 8, 9) /
     B4H15Q7 (7, 8, 9) /
     B4H15R (7, 8, 9) /
     B4H15R1 (7, 8, 9) /
     B4H15R2 (7, 8, 9) /
     B4H15R3 (7, 8, 9) /
     B4H15R4 (7, 8, 9) /
     B4H15R5 (7, 8, 9) /
     B4H15R6 (7, 8, 9) /
     B4H15R7 (7, 8, 9) /
     B4H15S (7, 8, 9) /
     B4H15S1 (7, 8, 9) /
     B4H15S2 (7, 8, 9) /
     B4H15S3 (7, 8, 9) /
     B4H15S4 (7, 8, 9) /
     B4H15S5 (7, 8, 9) /
     B4H15S6 (7, 8, 9) /
     B4H15S7 (7, 8, 9) /
     B4H15OTH (97, 98, 99) /
     B4HFMHN (99) /
     B4HFMHX (9) /
     B4H16 (7, 8, 9) /
     B4H17AF (9997.0, 9998.0, 9999.0) /
     B4H17AT (7, 8, 9) /
     B4H17BF (9997.0, 9998.0, 9999.0) /
     B4H17BT (7, 8, 9) /
     B4H17CF (9997.0, 9998.0, 9999.0) /
     B4H17CT (7, 8, 9) /
     B4H18AF (9997.0, 9998.0, 9999.0) /
     B4H18AT (7, 8, 9) /
     B4H18BF (9997.0, 9998.0, 9999.0) /
     B4H18BT (7, 8, 9) /
     B4H18CF (9997.0, 9998.0, 9999.0) /
     B4H18CT (7, 8, 9) /
     B4H19 (7, 8, 9) /
     B4H20 (7, 8, 9) /
     B4H21 (7, 8, 9) /
     B4H22 (7, 8, 9) /
     B4H23A (7, 8, 9) /
     B4H23B (7, 8, 9) /
     B4H23C (7, 8, 9) /
     B4H23D (7, 8, 9) /
     B4H24 (7, 8, 9) /
     B4H25 (7, 8, 9) /
     B4H25AS (97, 98, 99) /
     B4H25AFD (97, 98, 99) /
     B4H25AFW (97, 98, 99) /
     B4H25AM (9997.0, 9998.0, 9999.0) /
     B4H25AI (7, 8, 9) /
     B4H25BS (97, 98, 99) /
     B4H25BFD (97, 98, 99) /
     B4H25BFW (97, 98, 99) /
     B4H25BM (9997.0, 9998.0, 9999.0) /
     B4H25BI (7, 8, 9) /
     B4H25CS (97, 98, 99) /
     B4H25CFD (97, 98, 99) /
     B4H25CFW (97, 98, 99) /
     B4H25CM (9997.0, 9998.0, 9999.0) /
     B4H25CI (7, 8, 9) /
     B4H25DS (97, 98, 99) /
     B4H25DFD (97, 98, 99) /
     B4H25DFW (97, 98, 99) /
     B4H25DM (9997.0, 9998.0, 9999.0) /
     B4H25DI (7, 8, 9) /
     B4H25ES (97, 98, 99) /
     B4H25EFD (97, 98, 99) /
     B4H25EFW (97, 98, 99) /
     B4H25EM (9997.0, 9998.0, 9999.0) /
     B4H25EI (7, 8, 9) /
     B4H25FS (97, 98, 99) /
     B4H25FFD (97, 98, 99) /
     B4H25FFW (97, 98, 99) /
     B4H25FM (9997.0, 9998.0, 9999.0) /
     B4H25FI (7, 8, 9) /
     B4H25GS (97, 98, 99) /
     B4H25GFD (97, 98, 99) /
     B4H25GFW (97, 98, 99) /
     B4H25GM (9997.0, 9998.0, 9999.0) /
     B4H25GI (7, 8, 9) /
     B4H26 (7, 8, 9) /
     B4H26A (7, 8, 9) /
     B4H27 (7, 8, 9) /
     B4H28 (97, 98, 99) /
     B4H29 (7, 8, 9) /
     B4H30 (7, 8, 9) /
     B4H31 (7, 8, 9) /
     B4H32 (7, 8, 9) /
     B4H33 (7, 8, 9) /
     B4H34 (7, 8, 9) /
     B4H35 (7, 8, 9) /
     B4H36 (9997.0, 9998.0, 9999.0) /
     B4H37 (97, 98, 99) /
     B4H38 (7, 8, 9) /
     B4H39 (7, 8, 9) /
     B4H40 (9997.0, 9998.0, 9999.0) /
     B4H41 (97, 98, 99) /
     B4H42 (9997.0, 9998.0, 9999.0) /
     B4H43A (7, 8, 9) /
     B4H43BM (97, 98, 99) /
     B4H43BY (9997, 9998, 9999) /
     B4H44A (7, 8, 9) /
     B4H44CM (97, 98, 99) /
     B4H44CY (9997, 9998, 9999) /
     B4H44D (7, 8, 9) /
     B4H45A (7, 8, 9) /
     B4H45AM (97, 98, 99) /
     B4H45AY (9997, 9998, 9999) /
     B4H45B (7, 8, 9) /
     B4H45BM (97, 98, 99) /
     B4H45BY (9997, 9998, 9999) /
     B4H45BRC (8, 9) /
     B4H45C (7, 8, 9) /
     B4H45CM (97, 98, 99) /
     B4H45CY (9997, 9998, 9999) /
     B4H45CRC (8, 9) /
     B4H45D (7, 8, 9) /
     B4H45DM (97, 98, 99) /
     B4H45DY (9997, 9998, 9999) /
     B4H45DRC (8, 9) /
     B4H45E (7, 8, 9) /
     B4H45F (7, 8, 9) /
     B4H45FM (97, 98, 99) /
     B4H45FY (9997, 9998, 9999) /
     B4H45FRC (8, 9) /
     B4H45G (7, 8, 9) /
     B4H45GM (97, 98, 99) /
     B4H45GY (9997, 9998, 9999) /
     B4H45GRC (8, 9) /
     B4H45H (7, 8, 9) /
     B4H45HM (97, 98, 99) /
     B4H45HY (9997, 9998, 9999) /
     B4H45HRC (8, 9) /
     B4H46 (7, 8, 9) /
     B4H46C (7, 8, 9) /
     B4H46D (9997.0, 9998.0, 9999.0) /
     B4H47 (7, 8, 9) /
     B4H48 (7, 8, 9) /
     B4H48A (7, 8, 9) /
     B4H49 (7, 8, 9) /
     B4H50 (7, 8, 9) /
     B4H54M (97, 98, 99) /
     B4H54Y (9998, 9999) /
     B4H55 (7, 8, 9) /
     B4H56 (7, 8, 9) /
     B4H56AG (7, 8, 9) /
     B4H56AM (97, 98, 99) /
     B4H56AY (9997, 9998, 9999) /
     B4H56BG (7, 8, 9) /
     B4H56BM (97, 98, 99) /
     B4H56BY (9997, 9998, 9999) /
     B4H56CG (7, 8, 9) /
     B4H56CM (97, 98, 99) /
     B4H56CY (9997, 9998, 9999) /
     B4H56DG (7, 8, 9) /
     B4H56DM (97, 98, 99) /
     B4H56DY (9997, 9998, 9999) /
     B4H56EG (7, 8, 9) /
     B4H56EM (97, 98, 99) /
     B4H56EY (9997, 9998, 9999) /
     B4H57 (7, 8, 9) /
     B4H57A1M (97, 98, 99) /
     B4H57A1Y (9997, 9998, 9999) /
     B4H57A2M (97, 98, 99) /
     B4H57A2Y (9997, 9998, 9999) /
     B4H57A3M (97, 98, 99) /
     B4H57A3Y (9997, 9998, 9999) /
     B4H57A4M (97, 98, 99) /
     B4H57A4Y (9997, 9998, 9999) /
     B4H57A5M (97, 98, 99) /
     B4H57A5Y (9997, 9998, 9999) /
     B4O1 (7, 8, 9) /
     B4O1A1W (98, 99) /
     B4O1A3 (9997, 9998, 9999) /
     B4O1B1W (98, 99) /
     B4O1B3 (9997, 9998, 9999) /
     B4O1C1W (98, 99) /
     B4O1C3 (9997, 9998, 9999) /
     B4O2 (7, 8, 9) /
     B4O2A1 (7, 8, 9) /
     B4O2A2 (7, 8, 9) /
     B4O2A3 (7, 8, 9) /
     B4O2B1 (7, 8, 9) /
     B4O2B2 (7, 8, 9) /
     B4O2B3 (7, 8, 9) /
     B4O2C1 (7, 8, 9) /
     B4O2C2 (7, 8, 9) /
     B4O2C3 (7, 8, 9) /
     B4O3 (997, 998, 999) /
     B4O3A (997, 998, 999) /
     B4O4A (7, 8, 9) /
     B4O4B (7, 8, 9) /
     B4O5 (7, 8, 9) /
     B4O5A1AM (98, 99) /
     B4O5A1B (9997, 9998, 9999) /
     B4O5A1C (9997, 9998, 9999) /
     B4O5A1CO (7, 8, 9) /
     B4O5A2AM (98, 99) /
     B4O5A2B (9997, 9998, 9999) /
     B4O5A2C (9997, 9998, 9999) /
     B4O5A2CO (7, 8, 9) /
     B4O5A3AM (98, 99) /
     B4O5A3B (9997, 9998, 9999) /
     B4O5A3C (9997, 9998, 9999) /
     B4O5A3CO (7, 8, 9) /
     B4O6A1 (7, 8, 9) /
     B4O6B1 (7, 8, 9) /
     B4O6C1 (7, 8, 9) /
     B4O6D1 (7, 8, 9) /
     B4O6E1 (7, 8, 9) /
     B4O6F1 (7, 8, 9) /
     B4O7 (7, 8, 9) /
     B4O8 (9997.0, 9998.0, 9999.0) /
     B4O9 (9997.0, 9998.0, 9999.0) /
     B4O10 (9997.0, 9998.0, 9999.0) /
     B4O11 (7, 8, 9) /
     B4O12A (997.0, 998.0, 999.0) /
     B4O12B (997.0, 998.0, 999.0) /
     B4O12C (997.0, 998.0, 999.0) /
     B4O13 (7, 8, 9) /
     B4O14A (9997.0, 9998.0, 9999.0) /
     B4O14B (9997.0, 9998.0, 9999.0) /
     B4O14C (9997.0, 9998.0, 9999.0) /
     B4O14X (7, 8, 9) /
     B4O15 (7, 8, 9) /
     B4O16 (97, 98, 99) /
     B4O16A (9997.0, 9998.0, 9999.0) /
     B4O17 (7, 8, 9) /
     B4O18 (7, 8, 9) /
     B4O19 (7, 8, 9) /
     B4O20Y (9997.0, 9998.0, 9999.0) /
     B4O21 (7, 8, 9) /
     B4O21A1 (7, 8, 9) /
     B4O21A2 (7, 8, 9) /
     B4O21A3 (7, 8, 9) /
     B4O21A4 (7, 8, 9) /
     B4O21A5 (7, 8, 9) /
     B4O22Y (9997.0, 9998.0, 9999.0) /
     B4O23X (7, 8, 9) /
     B4O23 (7, 8, 9) /
     B4O24 (7, 8, 9) /
     B4O25 (7, 8, 9) /
     B4O25A (7, 8, 9) /
     B4O25B (7, 8, 9) /
     B4O25C (7, 8, 9) /
     B4O26 (7, 8, 9) /
     B4O26A (7, 8, 9) /
     B4O26B (7, 8, 9) /
     B4O26C (7, 8, 9) /
     B4O26D (7, 8, 9) /
     B4O26E (7, 8, 9) /
     B4O26F (7, 8, 9) /
     B4O27 (7, 8, 9) /
     B4DAVAIL (7, 8, 9) /
     B4DNARSN (9) /
     B4DSTYPE (7, 8, 9) /
     B4DTRSID (7, 8, 9) /
     B4DFNSID (7, 8, 9) /
     B4DFTSID (7, 8, 9) /
     B4DRSIDE (7, 8, 9) /
     B4DLSMD (998.0, 999.0) /
     B4DLST (998.0, 999.0) /
     B4DLFNMD (998.0, 999.0) /
     B4DLTRMD (998.0, 999.0) /
     B4DLFTMD (998.0, 999.0) /
     B4DLFNT (998.0, 999.0) /
     B4DLFTT (998.0, 999.0) /
     B4DLRUMD (998.0, 999.0) /
     B4DLR3MD (998.0, 999.0) /
     B4DLR3T (998.0, 999.0) /
     B4DHSMD (998.0, 999.0) /
     B4DHST (998.0, 999.0) /
     B4DHFNMD (998.0, 999.0) /
     B4DHTRMD (998.0, 999.0) /
     B4DHFTMD (998.0, 999.0) /
     B4DHFNT (998.0, 999.0) /
     B4DHFTT (998.0, 999.0) /
     B4XPMD (7, 8) /
     B4XOMD (7, 8) /
     B4XAMD (7, 8) /
     B4XPM (97, 98, 99) /
     B4XPC1 (99999997, 99999998, 99999999) /
     B4XPDD1 (99999997.0, 99999998.0, 99999999.0) /
     B4XPDU1 (97, 98, 99) /
     B4XPR1 (97, 98, 99) /
     B4XPF1 (9997.0, 9998.0, 9999.0) /
     B4XPFU1 (7, 8, 9) /
     B4XPT1 (9997.0, 9998.0, 9999.0) /
     B4XPTU1 (7, 8, 9) /
     B4XPDC1 (99997, 99998, 99999) /
     B4XPC2 (99999997, 99999998, 99999999) /
     B4XPDD2 (99999997.0, 99999998.0, 99999999.0) /
     B4XPDU2 (97, 98, 99) /
     B4XPR2 (97, 98, 99) /
     B4XPF2 (9997.0, 9998.0, 9999.0) /
     B4XPFU2 (7, 8, 9) /
     B4XPT2 (9997.0, 9998.0, 9999.0) /
     B4XPTU2 (7, 8, 9) /
     B4XPDC2 (99997, 99998, 99999) /
     B4XPC3 (99999997, 99999998, 99999999) /
     B4XPDD3 (99999997.0, 99999998.0, 99999999.0) /
     B4XPDU3 (97, 98, 99) /
     B4XPR3 (97, 98, 99) /
     B4XPF3 (9997.0, 9998.0, 9999.0) /
     B4XPFU3 (7, 8, 9) /
     B4XPT3 (9997.0, 9998.0, 9999.0) /
     B4XPTU3 (7, 8, 9) /
     B4XPDC3 (99997, 99998, 99999) /
     B4XPC4 (99999997, 99999998, 99999999) /
     B4XPDD4 (99999997.0, 99999998.0, 99999999.0) /
     B4XPDU4 (97, 98, 99) /
     B4XPR4 (97, 98, 99) /
     B4XPF4 (9997.0, 9998.0, 9999.0) /
     B4XPFU4 (7, 8, 9) /
     B4XPT4 (9997.0, 9998.0, 9999.0) /
     B4XPTU4 (7, 8, 9) /
     B4XPDC4 (99997, 99998, 99999) /
     B4XPC5 (99999997, 99999998, 99999999) /
     B4XPDD5 (99999997.0, 99999998.0, 99999999.0) /
     B4XPDU5 (97, 98, 99) /
     B4XPR5 (97, 98, 99) /
     B4XPF5 (9997.0, 9998.0, 9999.0) /
     B4XPFU5 (7, 8, 9) /
     B4XPT5 (9997.0, 9998.0, 9999.0) /
     B4XPTU5 (7, 8, 9) /
     B4XPDC5 (99997, 99998, 99999) /
     B4XPC6 (99999997, 99999998, 99999999) /
     B4XPDD6 (99999997.0, 99999998.0, 99999999.0) /
     B4XPDU6 (97, 98, 99) /
     B4XPR6 (97, 98, 99) /
     B4XPF6 (9997.0, 9998.0, 9999.0) /
     B4XPFU6 (7, 8, 9) /
     B4XPT6 (9997.0, 9998.0, 9999.0) /
     B4XPTU6 (7, 8, 9) /
     B4XPDC6 (99997, 99998, 99999) /
     B4XPC7 (99999997, 99999998, 99999999) /
     B4XPDD7 (99999997.0, 99999998.0, 99999999.0) /
     B4XPDU7 (97, 98, 99) /
     B4XPR7 (97, 98, 99) /
     B4XPF7 (9997.0, 9998.0, 9999.0) /
     B4XPFU7 (7, 8, 9) /
     B4XPT7 (9997.0, 9998.0, 9999.0) /
     B4XPTU7 (7, 8, 9) /
     B4XPDC7 (99997, 99998, 99999) /
     B4XPC8 (99999997, 99999998, 99999999) /
     B4XPDD8 (99999997.0, 99999998.0, 99999999.0) /
     B4XPDU8 (97, 98, 99) /
     B4XPR8 (97, 98, 99) /
     B4XPF8 (9997.0, 9998.0, 9999.0) /
     B4XPFU8 (7, 8, 9) /
     B4XPT8 (9997.0, 9998.0, 9999.0) /
     B4XPTU8 (7, 8, 9) /
     B4XPDC8 (99997, 99998, 99999) /
     B4XPC9 (99999997, 99999998, 99999999) /
     B4XPDD9 (99999997.0, 99999998.0, 99999999.0) /
     B4XPDU9 (97, 98, 99) /
     B4XPR9 (97, 98, 99) /
     B4XPF9 (9997.0, 9998.0, 9999.0) /
     B4XPFU9 (7, 8, 9) /
     B4XPT9 (9997.0, 9998.0, 9999.0) /
     B4XPTU9 (7, 8, 9) /
     B4XPDC9 (99997, 99998, 99999) /
     B4XPC10 (99999997, 99999998, 99999999) /
     B4XPDD10 (99999997.0, 99999998.0, 99999999.0) /
     B4XPDU10 (97, 98, 99) /
     B4XPR10 (97, 98, 99) /
     B4XPF10 (9997.0, 9998.0, 9999.0) /
     B4XPFU10 (7, 8, 9) /
     B4XPT10 (9997.0, 9998.0, 9999.0) /
     B4XPTU10 (7, 8, 9) /
     B4XPDC10 (99997, 99998, 99999) /
     B4XPC11 (99999997, 99999998, 99999999) /
     B4XPDD11 (99999997.0, 99999998.0, 99999999.0) /
     B4XPDU11 (97, 98, 99) /
     B4XPR11 (97, 98, 99) /
     B4XPF11 (9997.0, 9998.0, 9999.0) /
     B4XPFU11 (7, 8, 9) /
     B4XPT11 (9997.0, 9998.0, 9999.0) /
     B4XPTU11 (7, 8, 9) /
     B4XPDC11 (99997, 99998, 99999) /
     B4XPC12 (99999997, 99999998, 99999999) /
     B4XPDD12 (99999997.0, 99999998.0, 99999999.0) /
     B4XPDU12 (97, 98, 99) /
     B4XPR12 (97, 98, 99) /
     B4XPF12 (9997.0, 9998.0, 9999.0) /
     B4XPFU12 (7, 8, 9) /
     B4XPT12 (9997.0, 9998.0, 9999.0) /
     B4XPTU12 (7, 8, 9) /
     B4XPDC12 (99997, 99998, 99999) /
     B4XPC13 (99999997, 99999998, 99999999) /
     B4XPDD13 (99999997.0, 99999998.0, 99999999.0) /
     B4XPDU13 (97, 98, 99) /
     B4XPR13 (97, 98, 99) /
     B4XPF13 (9997.0, 9998.0, 9999.0) /
     B4XPFU13 (7, 8, 9) /
     B4XPT13 (9997.0, 9998.0, 9999.0) /
     B4XPTU13 (7, 8, 9) /
     B4XPDC13 (99997, 99998, 99999) /
     B4XPC14 (99999997, 99999998, 99999999) /
     B4XPDD14 (99999997.0, 99999998.0, 99999999.0) /
     B4XPDU14 (97, 98, 99) /
     B4XPR14 (97, 98, 99) /
     B4XPF14 (9997.0, 9998.0, 9999.0) /
     B4XPFU14 (7, 8, 9) /
     B4XPT14 (9997.0, 9998.0, 9999.0) /
     B4XPTU14 (7, 8, 9) /
     B4XPDC14 (99997, 99998, 99999) /
     B4XPC15 (99999997, 99999998, 99999999) /
     B4XPDD15 (99999997.0, 99999998.0, 99999999.0) /
     B4XPDU15 (97, 98, 99) /
     B4XPR15 (97, 98, 99) /
     B4XPF15 (9997.0, 9998.0, 9999.0) /
     B4XPFU15 (7, 8, 9) /
     B4XPT15 (9997.0, 9998.0, 9999.0) /
     B4XPTU15 (7, 8, 9) /
     B4XPDC15 (99997, 99998, 99999) /
     B4XBPD (7, 8, 9) /
     B4XBPC (7, 8, 9) /
     B4XCHD (7, 8, 9) /
     B4XCHC (7, 8, 9) /
     B4XDPD (7, 8, 9) /
     B4XDPC (7, 8, 9) /
     B4XCOD (7, 8, 9) /
     B4XCOC (7, 8, 9) /
     B4XSHD (7, 8, 9) /
     B4XSHC (7, 8, 9) /
     B4XOM (97, 98, 99) /
     B4XOMV (7, 8, 9) /
     B4XOC1 (99999997, 99999998, 99999999) /
     B4XODD1 (99999997.0, 99999998.0, 99999999.0) /
     B4XODU1 (97, 98, 99) /
     B4XOR1 (97, 98, 99) /
     B4XOF1 (9997.0, 9998.0, 9999.0) /
     B4XOFU1 (7, 8, 9) /
     B4XOT1 (9997.0, 9998.0, 9999.0) /
     B4XOTU1 (7, 8, 9) /
     B4XODC1 (99997, 99998, 99999) /
     B4XOCS (7, 8, 9) /
     B4XOC2 (99999997, 99999998, 99999999) /
     B4XODD2 (99999997.0, 99999998.0, 99999999.0) /
     B4XODU2 (97, 98, 99) /
     B4XOR2 (97, 98, 99) /
     B4XOF2 (9997.0, 9998.0, 9999.0) /
     B4XOFU2 (7, 8, 9) /
     B4XOT2 (9997.0, 9998.0, 9999.0) /
     B4XOTU2 (7, 8, 9) /
     B4XODC2 (99997, 99998, 99999) /
     B4XOC3 (99999997, 99999998, 99999999) /
     B4XODD3 (99999997.0, 99999998.0, 99999999.0) /
     B4XODU3 (97, 98, 99) /
     B4XOR3 (97, 98, 99) /
     B4XOF3 (9997.0, 9998.0, 9999.0) /
     B4XOFU3 (7, 8, 9) /
     B4XOT3 (9997.0, 9998.0, 9999.0) /
     B4XOTU3 (7, 8, 9) /
     B4XODC3 (99997, 99998, 99999) /
     B4XOC4 (99999997, 99999998, 99999999) /
     B4XODD4 (99999997.0, 99999998.0, 99999999.0) /
     B4XODU4 (97, 98, 99) /
     B4XOR4 (97, 98, 99) /
     B4XOF4 (9997.0, 9998.0, 9999.0) /
     B4XOFU4 (7, 8, 9) /
     B4XOT4 (9997.0, 9998.0, 9999.0) /
     B4XOTU4 (7, 8, 9) /
     B4XODC4 (99997, 99998, 99999) /
     B4XOC5 (99999997, 99999998, 99999999) /
     B4XODD5 (99999997.0, 99999998.0, 99999999.0) /
     B4XODU5 (97, 98, 99) /
     B4XOR5 (97, 98, 99) /
     B4XOF5 (9997.0, 9998.0, 9999.0) /
     B4XOFU5 (7, 8, 9) /
     B4XOT5 (9997.0, 9998.0, 9999.0) /
     B4XOTU5 (7, 8, 9) /
     B4XODC5 (99997, 99998, 99999) /
     B4XOC6 (99999997, 99999998, 99999999) /
     B4XODD6 (99999997.0, 99999998.0, 99999999.0) /
     B4XODU6 (97, 98, 99) /
     B4XOR6 (97, 98, 99) /
     B4XOF6 (9997.0, 9998.0, 9999.0) /
     B4XOFU6 (7, 8, 9) /
     B4XOT6 (9997.0, 9998.0, 9999.0) /
     B4XOTU6 (7, 8, 9) /
     B4XODC6 (99997, 99998, 99999) /
     B4XOC7 (99999997, 99999998, 99999999) /
     B4XODD7 (99999997.0, 99999998.0, 99999999.0) /
     B4XODU7 (97, 98, 99) /
     B4XOR7 (97, 98, 99) /
     B4XOF7 (9997.0, 9998.0, 9999.0) /
     B4XOFU7 (7, 8, 9) /
     B4XOT7 (9997.0, 9998.0, 9999.0) /
     B4XOTU7 (7, 8, 9) /
     B4XODC7 (99997, 99998, 99999) /
     B4XOC8 (99999997, 99999998, 99999999) /
     B4XODD8 (99999997.0, 99999998.0, 99999999.0) /
     B4XODU8 (97, 98, 99) /
     B4XOR8 (97, 98, 99) /
     B4XOF8 (9997.0, 9998.0, 9999.0) /
     B4XOFU8 (7, 8, 9) /
     B4XOT8 (9997.0, 9998.0, 9999.0) /
     B4XOTU8 (7, 8, 9) /
     B4XODC8 (99997, 99998, 99999) /
     B4XOC9 (99999997, 99999998, 99999999) /
     B4XODD9 (99999997.0, 99999998.0, 99999999.0) /
     B4XODU9 (97, 98, 99) /
     B4XOR9 (97, 98, 99) /
     B4XOF9 (9997.0, 9998.0, 9999.0) /
     B4XOFU9 (7, 8, 9) /
     B4XOT9 (9997.0, 9998.0, 9999.0) /
     B4XOTU9 (7, 8, 9) /
     B4XODC9 (99997, 99998, 99999) /
     B4XOC10 (99999997, 99999998, 99999999) /
     B4XODD10 (99999997.0, 99999998.0, 99999999.0) /
     B4XODU10 (97, 98, 99) /
     B4XOR10 (97, 98, 99) /
     B4XOF10 (9997.0, 9998.0, 9999.0) /
     B4XOFU10 (7, 8, 9) /
     B4XOT10 (9997.0, 9998.0, 9999.0) /
     B4XOTU10 (7, 8, 9) /
     B4XODC10 (99997, 99998, 99999) /
     B4XOC11 (99999997, 99999998, 99999999) /
     B4XODD11 (99999997.0, 99999998.0, 99999999.0) /
     B4XODU11 (97, 98, 99) /
     B4XOR11 (97, 98, 99) /
     B4XOF11 (9997.0, 9998.0, 9999.0) /
     B4XOFU11 (7, 8, 9) /
     B4XOT11 (9997.0, 9998.0, 9999.0) /
     B4XOTU11 (7, 8, 9) /
     B4XODC11 (99997, 99998, 99999) /
     B4XOC12 (99999997, 99999998, 99999999) /
     B4XODD12 (99999997.0, 99999998.0, 99999999.0) /
     B4XODU12 (97, 98, 99) /
     B4XOR12 (97, 98, 99) /
     B4XOF12 (9997.0, 9998.0, 9999.0) /
     B4XOFU12 (7, 8, 9) /
     B4XOT12 (9997.0, 9998.0, 9999.0) /
     B4XOTU12 (7, 8, 9) /
     B4XODC12 (99997, 99998, 99999) /
     B4XAM (97, 98, 99) /
     B4XAC1 (999997, 999998, 999999) /
     B4XADD1 (99999997.0, 99999998.0, 99999999.0) /
     B4XADU1 (97, 98, 99) /
     B4XAR1 (97, 98, 99) /
     B4XAF1 (9997.0, 9998.0, 9999.0) /
     B4XAFU1 (7, 8, 9) /
     B4XAT1 (9997.0, 9998.0, 9999.0) /
     B4XATU1 (7, 8, 9) /
     B4XADC1 (99997, 99998, 99999) /
     B4XAC2 (999997, 999998, 999999) /
     B4XADD2 (99999997.0, 99999998.0, 99999999.0) /
     B4XADU2 (97, 98, 99) /
     B4XAR2 (97, 98, 99) /
     B4XAF2 (9997.0, 9998.0, 9999.0) /
     B4XAFU2 (7, 8, 9) /
     B4XAT2 (9997.0, 9998.0, 9999.0) /
     B4XATU2 (7, 8, 9) /
     B4XADC2 (99997, 99998, 99999) /
     B4XAC3 (999997, 999998, 999999) /
     B4XADD3 (99999997.0, 99999998.0, 99999999.0) /
     B4XADU3 (97, 98, 99) /
     B4XAR3 (97, 98, 99) /
     B4XAF3 (9997.0, 9998.0, 9999.0) /
     B4XAFU3 (7, 8, 9) /
     B4XAT3 (9997.0, 9998.0, 9999.0) /
     B4XATU3 (7, 8, 9) /
     B4XADC3 (99997, 99998, 99999) /
     B4XAC4 (999997, 999998, 999999) /
     B4XADD4 (99999997.0, 99999998.0, 99999999.0) /
     B4XADU4 (97, 98, 99) /
     B4XAR4 (97, 98, 99) /
     B4XAF4 (9997.0, 9998.0, 9999.0) /
     B4XAFU4 (7, 8, 9) /
     B4XAT4 (9997.0, 9998.0, 9999.0) /
     B4XATU4 (7, 8, 9) /
     B4XADC4 (99997, 99998, 99999) /
     B4XAC5 (999997, 999998, 999999) /
     B4XADD5 (99999997.0, 99999998.0, 99999999.0) /
     B4XADU5 (97, 98, 99) /
     B4XAR5 (97, 98, 99) /
     B4XAF5 (9997.0, 9998.0, 9999.0) /
     B4XAFU5 (7, 8, 9) /
     B4XAT5 (9997.0, 9998.0, 9999.0) /
     B4XATU5 (7, 8, 9) /
     B4XADC5 (99997, 99998, 99999) /
     B4XAC6 (999997, 999998, 999999) /
     B4XADD6 (99999997.0, 99999998.0, 99999999.0) /
     B4XADU6 (97, 98, 99) /
     B4XAR6 (97, 98, 99) /
     B4XAF6 (9997.0, 9998.0, 9999.0) /
     B4XAFU6 (7, 8, 9) /
     B4XAT6 (9997.0, 9998.0, 9999.0) /
     B4XATU6 (7, 8, 9) /
     B4XADC6 (99997, 99998, 99999) /
     B4XAC7 (999997, 999998, 999999) /
     B4XADD7 (99999997.0, 99999998.0, 99999999.0) /
     B4XADU7 (97, 98, 99) /
     B4XAR7 (97, 98, 99) /
     B4XAF7 (9997.0, 9998.0, 9999.0) /
     B4XAFU7 (7, 8, 9) /
     B4XAT7 (9997.0, 9998.0, 9999.0) /
     B4XATU7 (7, 8, 9) /
     B4XADC7 (99997, 99998, 99999) /
     B4XAC8 (999997, 999998, 999999) /
     B4XADD8 (99999997.0, 99999998.0, 99999999.0) /
     B4XADU8 (97, 98, 99) /
     B4XAR8 (97, 98, 99) /
     B4XAF8 (9997.0, 9998.0, 9999.0) /
     B4XAFU8 (7, 8, 9) /
     B4XAT8 (9997.0, 9998.0, 9999.0) /
     B4XATU8 (7, 8, 9) /
     B4XADC8 (99997, 99998, 99999) /
     B4XAC9 (999997, 999998, 999999) /
     B4XADD9 (99999997.0, 99999998.0, 99999999.0) /
     B4XADU9 (97, 98, 99) /
     B4XAR9 (97, 98, 99) /
     B4XAF9 (9997.0, 9998.0, 9999.0) /
     B4XAFU9 (7, 8, 9) /
     B4XAT9 (9997.0, 9998.0, 9999.0) /
     B4XATU9 (7, 8, 9) /
     B4XADC9 (99997, 99998, 99999) /
     B4XAC10 (999997, 999998, 999999) /
     B4XADD10 (99999997.0, 99999998.0, 99999999.0) /
     B4XADU10 (97, 98, 99) /
     B4XAR10 (97, 98, 99) /
     B4XAF10 (9997.0, 9998.0, 9999.0) /
     B4XAFU10 (7, 8, 9) /
     B4XAT10 (9997.0, 9998.0, 9999.0) /
     B4XATU10 (7, 8, 9) /
     B4XADC10 (99997, 99998, 99999) /
     B4XAC11 (999997, 999998, 999999) /
     B4XADD11 (99999997.0, 99999998.0, 99999999.0) /
     B4XADU11 (97, 98, 99) /
     B4XAR11 (97, 98, 99) /
     B4XAF11 (9997.0, 9998.0, 9999.0) /
     B4XAFU11 (7, 8, 9) /
     B4XAT11 (9997.0, 9998.0, 9999.0) /
     B4XATU11 (7, 8, 9) /
     B4XADC11 (99997, 99998, 99999) /
     B4XAC12 (999997, 999998, 999999) /
     B4XADD12 (99999997.0, 99999998.0, 99999999.0) /
     B4XADU12 (97, 98, 99) /
     B4XAR12 (97, 98, 99) /
     B4XAF12 (9997.0, 9998.0, 9999.0) /
     B4XAFU12 (7, 8, 9) /
     B4XAT12 (9997.0, 9998.0, 9999.0) /
     B4XATU12 (7, 8, 9) /
     B4XADC12 (99997, 99998, 99999) /
     B4XM (7, 8, 9) /
     B4XMM (97, 98, 99) /
     B4XMC1 (99999997, 99999998, 99999999) /
     B4XMC2 (99999997, 99999998, 99999999) /
     B4XMC3 (99999997, 99999998, 99999999) /
     B4XMC4 (99999997, 99999998, 99999999) /
     B4XMC5 (99999997, 99999998, 99999999) /
     B4XMC6 (99999997, 99999998, 99999999) /
     B4XMC7 (99999997, 99999998, 99999999) /
     B4XMC8 (99999997, 99999998, 99999999) /
     B4XXM (7, 8, 9) /
     B4PWHRF (8) /
     B4P1A (999997.0, 999998.0, 999999.0) /
     B4P1B (99997.0, 99998.0, 99999.0) /
     B4PBMI (999997.0, 999998.0, 999999.0) /
     B4P1C (9997.0, 9998.0, 9999.0) /
     B4P1D (997, 998, 999) /
     B4P1E (97, 98, 99) /
     B4P1F1S (997, 998, 999) /
     B4P1F1D (997, 998, 999) /
     B4P1F2S (997, 998, 999) /
     B4P1F2D (997, 998, 999) /
     B4P1F3S (997, 998, 999) /
     B4P1F3D (997, 998, 999) /
     B4P1GS (997, 998, 999) /
     B4P1GD (997, 998, 999) /
     B4P1GS23 (998) /
     B4P1GD23 (998) /
     B4P2A (999997.0, 999998.0, 999999.0) /
     B4P2B (999997.0, 999998.0, 999999.0) /
     B4P2C (999997.0, 999998.0, 999999.0) /
     B4P2D (999997.0, 999998.0, 999999.0) /
     B4PWHR (999998.0, 999999.0) /
     B4P3A (7, 8, 9) /
     B4P3A1 (7, 8, 9) /
     B4P3A2R1 (97, 98, 99) /
     B4P3A2R2 (97, 98, 99) /
     B4P3A2R3 (97, 98, 99) /
     B4P3A2L1 (97, 98, 99) /
     B4P3A2L2 (97, 98, 99) /
     B4P3A2L3 (97, 98, 99) /
     B4P3B1 (7, 8, 9) /
     B4P3B2R (997, 998, 999) /
     B4P3B2L (997, 998, 999) /
     B4P3B3R (8, 9) /
     B4P3B4 (7, 8, 9) /
     B4P3B4A (97, 98, 99) /
     B4P3B5R (997, 998, 999) /
     B4P3B5L (997, 998, 999) /
     B4P3B6 (7, 8, 9) /
     B4P3C1 (7, 8, 9) /
     B4P3C2 (997, 998, 999) /
     B4P3C3 (7, 8, 9) /
     B4P3D (7, 8, 9) /
     B4P3E (7, 8, 9) /
     B4P3F (7, 8, 9) /
     B4P3G (7, 8, 9) /
     B4P3H1R (8, 9) /
     B4P3H2 (97, 98, 99) /
     B4P3H3 (97, 98, 99) /
     B4P3I1 (7, 8, 9) /
     B4P3I2 (97, 98, 99) /
     B4P3I3R (8, 9) /
     B4PMD (7, 8, 9) /
     B4P4B (9, 8, 7) /
     B4P5A1 (99, 98, 97) /
     B4P5A2 (9, 8, 7) /
     B4P5A3 (99, 98, 97) /
     B4P5A4 (9, 8, 7) /
     B4P5B (9, 8, 7) /
     B4P5B1 (9, 8, 7) /
     B4P5B2 (9, 8, 7) /
     B4P5B3 (9, 8, 7) /
     B4P5B4 (9, 8, 7) /
     B4P5B5 (9, 8, 7) /
     B4P5B6 (9, 8, 7) /
     B4P5B7 (9, 8, 7) /
     B4P5B8 (9, 8, 7) /
     B4P5B9 (9, 8, 7) /
     B4P5B10 (9, 8, 7) /
     B4P5B11 (9, 8, 7) /
     B4P5B12 (9, 8, 7) /
     B4P5B13 (9, 8, 7) /
     B4P5B14 (9, 8, 7) /
     B4P5B15 (9, 8, 7) /
     B4P5B16 (9, 8, 7) /
     B4P5B17 (9, 8, 7) /
     B4P6A1 (9, 8, 7) /
     B4P6A2 (9, 8, 7) /
     B4P6B (9, 8, 7) /
     B4P6C (9, 8, 7) /
     B4P6D1 (9, 8, 7) /
     B4P6D2 (9, 8, 7) /
     B4P6D3 (9, 8, 7) /
     B4P6D4 (9, 8, 7) /
     B4P6E1 (9, 8, 7) /
     B4P6E2 (9, 8, 7) /
     B4P6E3 (9, 8, 7) /
     B4P6E4 (9, 8, 7) /
     B4P6E4R (9, 8, 7) /
     B4P6E4L (9, 8, 7) /
     B4P6F1 (97, 98, 99) /
     B4P6F2 (97, 98, 99) /
     B4P6F3 (97, 98, 99) /
     B4P6F4 (97, 98, 99) /
     B4P6F5 (97, 98, 99) /
     B4P7A (9, 8, 7) /
     B4P7A1R (9, 8, 7) /
     B4P7A1L (9, 8, 7) /
     B4P7A2R (9, 8, 7) /
     B4P7A2L (9, 8, 7) /
     B4P8A (99, 97, 98) /
     B4P8B1 (97, 98, 99) /
     B4P8B2 (99, 98, 97) /
     B4P8B3 (9, 8, 7) /
     B4P8B4 (9, 8, 7) /
     B4P8B5 (9, 8, 7) /
     B4P8B6 (9, 8, 7) /
     B4P8B7 (9, 8, 7) /
     B4P8C1AD (7, 8, 9) /
     B4P8C1A (97, 98, 99) /
     B4P8C1HO (97, 98, 99) /
     B4P8C2AD (7, 8, 9) /
     B4P8C2A (97, 98, 99) /
     B4P8C2HO (97, 98, 99) /
     B4P8D (9, 8, 7) /
     B4P9A (9, 8, 7) /
     B4P9A1 (9, 8, 7) /
     B4P9A2 (9, 8, 7) /
     B4P9A3 (9, 8, 7) /
     B4P9A4 (9, 8, 7) /
     B4P9B (9, 8, 7) /
     B4P9C (9, 8, 7) /
     B4P9D (9, 8, 7) /
     B4P9D1 (9, 8, 7) /
     B4P9D2 (9, 8, 7) /
     B4P9D3 (9, 8, 7) /
     B4P9D3N (99, 98, 97) /
     B4P9D3S (997.0, 998.0, 999.0) /
     B4P10A1 (9, 8, 7) /
     B4P10A2 (9, 8, 7) /
     B4P10A3 (9, 8, 7) /
     B4P10A4 (9, 8, 7) /
     B4P10B1 (9, 8, 7) /
     B4P10B2 (9, 8, 7) /
     B4P10B2A (9, 8, 7) /
     B4P10B2B (9, 8, 7) /
     B4P10B3 (9, 8, 7) /
     B4P10C (9, 8, 7) /
     B4P10C1R (9, 8, 7) /
     B4P10C1L (9, 8, 7) /
     B4P10C2R (9, 8, 7) /
     B4P10C2L (9, 8, 7) /
     B4P10C3R (9, 8, 7) /
     B4P10C3L (9, 8, 7) /
     B4P10C4R (9, 8, 7) /
     B4P10C4L (9, 8, 7) /
     B4P10C5R (9, 8, 7) /
     B4P10C5L (9, 8, 7) /
     B4P10C6R (9, 8, 7) /
     B4P10C6L (9, 8, 7) /
     B4P10C7R (9, 8, 7) /
     B4P10C7L (9, 8, 7) /
     B4P11A1 (9, 8, 7) /
     B4P11B (99, 98, 97) /
     B4P11B1 (9, 8, 7) /
     B4P11B1A (9, 8, 7) /
     B4P11B1B (9, 8, 7) /
     B4P11B1C (9, 8, 7) /
     B4P11B1D (9, 8, 7) /
     B4P11B2 (9, 8, 7) /
     B4P11B2A (9, 8, 7) /
     B4P11B2B (9, 8, 7) /
     B4P11B2C (9, 8, 7) /
     B4P11B2D (9, 8, 7) /
     B4P11B3 (9, 8, 7) /
     B4P12A (9, 8, 7) /
     B4P12B (99, 98, 97) /
     B4P12C (9, 8, 7) /
     B4P12C1 (9, 8, 7) /
     B4P12C1A (9, 8, 7) /
     B4P12C1B (9, 8, 7) /
     B4P12C1C (9, 8, 7) /
     B4P12C1D (9, 8, 7) /
     B4P12C1E (9, 8, 7) /
     B4P12C1F (9, 8, 7) /
     B4P12C2 (9, 8, 7) /
     B4P12C2A (9, 8, 7) /
     B4P12C2B (9, 8, 7) /
     B4P12C2C (9, 8, 7) /
     B4P12C2D (9, 8, 7) /
     B4P12C2E (9, 8, 7) /
     B4P12C2F (9, 8, 7) /
     B4P12C3 (9, 8, 7) /
     B4P12C3A (9, 8, 7) /
     B4P12C3B (9, 8, 7) /
     B4P12C3C (9, 8, 7) /
     B4P12C3D (9, 8, 7) /
     B4P12C3E (9, 8, 7) /
     B4P12C3F (9, 8, 7) /
     B4P12C4 (9, 8, 7) /
     B4P12C4A (9, 8, 7) /
     B4P12C4B (9, 8, 7) /
     B4P12C4C (9, 8, 7) /
     B4P12C4D (9, 8, 7) /
     B4P12C4E (9, 8, 7) /
     B4P12C4F (9, 8, 7) /
     B4P12C5 (9, 8, 7) /
     B4P12C5A (9, 8, 7) /
     B4P12C5B (9, 8, 7) /
     B4P12C5C (9, 8, 7) /
     B4P12C5D (9, 8, 7) /
     B4P12C5E (9, 8, 7) /
     B4P12C5F (9, 8, 7) /
     B4P12C6 (9, 8, 7) /
     B4P12C7 (9, 8, 7) /
     B4P12D (99, 98, 97) /
     B4P12E1 (9, 8, 7) /
     B4P12E2 (9, 8, 7) /
     B4P12E3 (9, 8, 7) /
     B4P12E4 (9, 8, 7) /
     B4P12E5 (9, 8, 7) /
     B4P13 (9, 8, 7) /
     B4P13A1 (9, 8, 7) /
     B4P13A2 (9, 8, 7) /
     B4P13A3 (9, 8, 7) /
     B4P13A4 (9, 8, 7) /
     B4P13B1 (9, 8, 7) /
     B4P13B1A (9, 8, 7) /
     B4P13B1B (9, 8, 7) /
     B4P13B1C (9, 8, 7) /
     B4P13B1D (9, 8, 7) /
     B4P13B2 (9, 8, 7) /
     B4P13B2A (9, 8, 7) /
     B4P13B2B (9, 8, 7) /
     B4P13B2C (9, 8, 7) /
     B4P13B2D (9, 8, 7) /
     B4P13B3 (9, 8, 7) /
     B4P13B3A (9, 8, 7) /
     B4P13B3B (9, 8, 7) /
     B4P13B3C (9, 8, 7) /
     B4P13B3D (9, 8, 7) /
     B4P13B4 (9, 8, 7) /
     B4P13B4A (9, 8, 7) /
     B4P13B4B (9, 8, 7) /
     B4P13B4C (9, 8, 7) /
     B4P13B4D (9, 8, 7) /
     B4P13B5 (9, 8, 7) /
     B4P13B5A (9, 8, 7) /
     B4P13B5B (9, 8, 7) /
     B4P13B5C (9, 8, 7) /
     B4P13B5D (9, 8, 7) /
     B4P13C1R (9, 8, 7) /
     B4P13C1L (9, 8, 7) /
     B4P13C2R (9, 8, 7) /
     B4P13C2L (9, 8, 7) /
     B4P13C3R (9, 8, 7) /
     B4P13C3L (9, 8, 7) /
     B4P13C4A (9, 8, 7) /
     B4P13D1 (9, 8, 7) /
     B4P13D1A (9, 8, 7) /
     B4P13D1B (9, 8, 7) /
     B4P13D1C (9, 8, 7) /
     B4P13D1D (9, 8, 7) /
     B4P13D2 (9, 8, 7) /
     B4P13D2A (9, 8, 7) /
     B4P13D2B (9, 8, 7) /
     B4P13D2C (9, 8, 7) /
     B4P13D2D (9, 8, 7) /
     B4P13D3 (9, 8, 7) /
     B4P13D3A (9, 8, 7) /
     B4P13D3B (9, 8, 7) /
     B4P13D3C (9, 8, 7) /
     B4P13D3D (9, 8, 7) /
     B4P13D4 (9, 8, 7) /
     B4P13D4A (9, 8, 7) /
     B4P13D4B (9, 8, 7) /
     B4P13D4C (9, 8, 7) /
     B4P13D4D (9, 8, 7) /
     B4P13D5 (9, 8, 7) /
     B4P13D5A (9, 8, 7) /
     B4P13D5B (9, 8, 7) /
     B4P13D5C (9, 8, 7) /
     B4P13D5D (9, 8, 7) /
     B4P13E1 (9, 8, 7) /
     B4P13E1A (9, 8, 7) /
     B4P13E1B (9, 8, 7) /
     B4P13E1C (9, 8, 7) /
     B4P13E1D (9, 8, 7) /
     B4P13E2 (9, 8, 7) /
     B4P13E3 (9, 8, 7) /
     B4BHA1C (997.0, 998.0, 999.0) /
     B4BCHOL (997, 998, 999) /
     B4BTRIGL (9997, 9998, 9999) /
     B4BHDL (997, 998, 999) /
     B4BLDL (997, 998, 999) /
     B4BRTHDL (9997.0, 9998.0, 9999.0) /
     B4BDHEAS (9997.0, 9998.0, 9999.0) /
     B4BDHEA (9997.0, 9998.0, 9999.0) /
     B4BSCREA (997.0, 998.0, 999.0) /
     B4BIL6 (99997.0, 99998.0, 99999.0) /
     B4BSIL6R (99997, 99998, 99999) /
     B4BFGN (997, 998, 999) /
     B4BCRP (99997.0, 99998.0, 99999.0) /
     B4BSESEL (99997.0, 99998.0, 99999.0) /
     B4BSICAM (999997.0, 999998.0, 999999.0) /
     B4BATBC (9997.0, 9998.0, 9999.0) /
     B4B13CBC (9997.0, 9998.0, 9999.0) /
     B4BAC (99997.0, 99998.0, 99999.0) /
     B4BBCX (9997.0, 9998.0, 9999.0) /
     B4BLUT (99997.0, 99998.0, 99999.0) /
     B4BZX (9997.0, 9998.0, 9999.0) /
     B4BLYC (9997.0, 9998.0, 9999.0) /
     B4BRET (99997.0, 99998.0, 99999.0) /
     B4BATOC (999997.0, 999998.0, 999999.0) /
     B4BGTOC (99997.0, 99998.0, 99999.0) /
     B4BP1NP (999997.0, 999998.0, 999999.0) /
     B4BSBAP (999997.0, 999998.0, 999999.0) /
     B4BSNTX (999997.0, 999998.0, 999999.0) /
     B4BGLUC (997, 998, 999) /
     B4BINSLN (997, 998, 999) /
     B4BIGF1 (997, 998, 999) /
     B4BHOMAIR (997.0, 998.0, 999.0) /
     B4BUPROB (9) /
     B4BUSTRT ('349200.0','352800.0','356400.0') /
     B4BUEND ('349200.0','352800.0','356400.0') /
     B4BUVDYN (7, 8, 9) /
     B4BUVDN (97.0, 98.0, 99.0) /
     B4BURVOL (9997, 9998, 9999) /
     B4BCORTL (997.0, 998.0, 999.0) /
     B4BCORTO (997.0, 998.0, 999.0) /
     B4BUCREA (997, 998, 999) /
     B4BCLCRE (99997.0, 99998.0, 99999.0) /
     B4BCOCRE (997.0, 998.0, 999.0) /
     B4BNOREP (9997.0, 9998.0, 9999.0) /
     B4BEPIN (9997.0, 9998.0, 9999.0) /
     B4BDOPA (99997.0, 99998.0, 99999.0) /
     B4BNE12 (9999997.0, 9999998.0, 9999999.0) /
     B4BEPI12 (9999997.0, 9999998.0, 9999999.0) /
     B4BDOP12 (99999997.0, 99999998.0, 99999999.0) /
     B4BNOCRE (9999997.0, 9999998.0, 9999999.0) /
     B4BEPCRE (9999997.0, 9999998.0, 9999999.0) /
     B4BDOCRE (99999997.0, 99999998.0, 99999999.0) /
     B4BNECL (9997.0, 9998.0, 9999.0) /
     B4BSUCRE (99997.0, 99998.0, 99999.0) /
     B4BGFR (9999997.0, 9999998.0, 9999999.0) /
     B4BSCL11 (99997.0, 99998.0, 99999.0) /
     B4BSCL21 (99997.0, 99998.0, 99999.0) /
     B4BSCL31 (99997.0, 99998.0, 99999.0) /
     B4BSCL41 (99997.0, 99998.0, 99999.0) /
     B4BSCL12 (99998.0, 99999.0) /
     B4BSCL22 (99998.0, 99999.0) /
     B4BSCL32 (99998.0, 99999.0) /
     B4BSCL42 (99998.0, 99999.0) /
     B4BSCL1A (99997.0, 99998.0, 99999.0) /
     B4BSCL2A (99997.0, 99998.0, 99999.0) /
     B4BSCL3A (99997.0, 99998.0, 99999.0) /
     B4BSCL4A (99997.0, 99998.0, 99999.0) /
     B4BSCL14 (99997.0, 99998.0, 99999.0) /
     B4AWAVL (9) /
     B4AWIMPU (9) /
     B4AWMARK (9) /
     B4AWDAYS (9) /
     B4AWPART (9) /
     B4AWIDIO (9) /
     B4AWTMZN (9) /
     B4AWLAG (99) /
     B4AWBGNM (99) /
     B4AWENDM (99) /
     B4AD11 (7, 8, 9) /
     B4AD12 (9997.0, 9998.0, 9999.0) /
     B4AD13 (7, 8, 9) /
     B4AD13S (9997.0, 9998.0, 9999.0) /
     B4AD14 (9997.0, 9998.0, 9999.0) /
     B4AD15 (9997.0, 9998.0, 9999.0) /
     B4AD16 (7, 8, 9) /
     B4AD16M (97, 98, 99) /
     B4AD17 (7, 8, 9) /
     B4AD17M (7, 8, 9) /
     B4AD18 ('349200.0','352800.0','356400.0') /
     B4AD18A (7, 8, 9) /
     B4AD19 (9997.0, 9998.0, 9999.0) /
     B4AD110 (7, 8, 9) /
     B4AD111 (97, 98, 99) /
     B4AD112 (7, 8, 9) /
     B4AD113 (7, 8, 9) /
     B4AD114 (97, 98, 99) /
     B4AD115 ('349200.0','352800.0','356400.0') /
     B4AD115A (7, 8, 9) /
     B4AD116 ('349200.0','352800.0','356400.0') /
     B4AD116A (7, 8, 9) /
     B4AD117 (7, 8, 9) /
     B4AD118 (7, 8, 9) /
     B4AD119 (7, 8, 9) /
     B4AD120 (7, 8, 9) /
     B4AD21 (7, 8, 9) /
     B4AD22 (9997.0, 9998.0, 9999.0) /
     B4AD23 (7, 8, 9) /
     B4AD23S (9997.0, 9998.0, 9999.0) /
     B4AD24 (9997.0, 9998.0, 9999.0) /
     B4AD25 (9997.0, 9998.0, 9999.0) /
     B4AD26 (7, 8, 9) /
     B4AD26M (97, 98, 99) /
     B4AD27 (7, 8, 9) /
     B4AD27M (7, 8, 9) /
     B4AD28 ('349200.0','352800.0','356400.0') /
     B4AD28A (7, 8, 9) /
     B4AD29 (9997.0, 9998.0, 9999.0) /
     B4AD210 (7, 8, 9) /
     B4AD211 (97, 98, 99) /
     B4AD212 (7, 8, 9) /
     B4AD213 (7, 8, 9) /
     B4AD214 (97, 98, 99) /
     B4AD215 ('349200.0','352800.0','356400.0') /
     B4AD215A (7, 8, 9) /
     B4AD216 ('349200.0','352800.0','356400.0') /
     B4AD216A (7, 8, 9) /
     B4AD217 (7, 8, 9) /
     B4AD218 (7, 8, 9) /
     B4AD219 (7, 8, 9) /
     B4AD220 (7, 8, 9) /
     B4AD31 (7, 8, 9) /
     B4AD32 (9997.0, 9998.0, 9999.0) /
     B4AD33 (7, 8, 9) /
     B4AD33S (9997.0, 9998.0, 9999.0) /
     B4AD34 (9997.0, 9998.0, 9999.0) /
     B4AD35 (9997.0, 9998.0, 9999.0) /
     B4AD36 (7, 8, 9) /
     B4AD36M (97, 98, 99) /
     B4AD37 (7, 8, 9) /
     B4AD37M (7, 8, 9) /
     B4AD38 ('349200.0','352800.0','356400.0') /
     B4AD38A (7, 8, 9) /
     B4AD39 (9997.0, 9998.0, 9999.0) /
     B4AD310 (7, 8, 9) /
     B4AD311 (97, 98, 99) /
     B4AD312 (7, 8, 9) /
     B4AD313 (7, 8, 9) /
     B4AD314 (97, 98, 99) /
     B4AD315 ('349200.0','352800.0','356400.0') /
     B4AD315A (7, 8, 9) /
     B4AD316 ('349200.0','352800.0','356400.0') /
     B4AD316A (7, 8, 9) /
     B4AD317 (7, 8, 9) /
     B4AD318 (7, 8, 9) /
     B4AD319 (7, 8, 9) /
     B4AD320 (7, 8, 9) /
     B4AD41 (7, 8, 9) /
     B4AD42 (9997.0, 9998.0, 9999.0) /
     B4AD43 (7, 8, 9) /
     B4AD43S (9997.0, 9998.0, 9999.0) /
     B4AD44 (9997.0, 9998.0, 9999.0) /
     B4AD45 (9997.0, 9998.0, 9999.0) /
     B4AD46 (7, 8, 9) /
     B4AD46M (97, 98, 99) /
     B4AD47 (7, 8, 9) /
     B4AD47M (7, 8, 9) /
     B4AD48 ('349200.0','352800.0','356400.0') /
     B4AD48A (7, 8, 9) /
     B4AD49 (9997.0, 9998.0, 9999.0) /
     B4AD410 (7, 8, 9) /
     B4AD411 (97, 98, 99) /
     B4AD412 (7, 8, 9) /
     B4AD413 (7, 8, 9) /
     B4AD414 (97, 98, 99) /
     B4AD415 ('349200.0','352800.0','356400.0') /
     B4AD415A (7, 8, 9) /
     B4AD416 ('349200.0','352800.0','356400.0') /
     B4AD416A (7, 8, 9) /
     B4AD417 (7, 8, 9) /
     B4AD418 (7, 8, 9) /
     B4AD419 (7, 8, 9) /
     B4AD420 (7, 8, 9) /
     B4AD51 (7, 8, 9) /
     B4AD52 (9997.0, 9998.0, 9999.0) /
     B4AD53 (7, 8, 9) /
     B4AD53S (9997.0, 9998.0, 9999.0) /
     B4AD54 (9997.0, 9998.0, 9999.0) /
     B4AD55 (9997.0, 9998.0, 9999.0) /
     B4AD56 (7, 8, 9) /
     B4AD56M (97, 98, 99) /
     B4AD57 (7, 8, 9) /
     B4AD57M (7, 8, 9) /
     B4AD58 ('349200.0','352800.0','356400.0') /
     B4AD58A (7, 8, 9) /
     B4AD59 (9997.0, 9998.0, 9999.0) /
     B4AD510 (7, 8, 9) /
     B4AD511 (97, 98, 99) /
     B4AD512 (7, 8, 9) /
     B4AD513 (7, 8, 9) /
     B4AD514 (97, 98, 99) /
     B4AD515 ('349200.0','352800.0','356400.0') /
     B4AD515A (7, 8, 9) /
     B4AD516 ('349200.0','352800.0','356400.0') /
     B4AD516A (7, 8, 9) /
     B4AD517 (7, 8, 9) /
     B4AD518 (7, 8, 9) /
     B4AD519 (7, 8, 9) /
     B4AD520 (7, 8, 9) /
     B4AD61 (7, 8, 9) /
     B4AD62 (9997.0, 9998.0, 9999.0) /
     B4AD63 (7, 8, 9) /
     B4AD63S (9997.0, 9998.0, 9999.0) /
     B4AD64 (9997.0, 9998.0, 9999.0) /
     B4AD65 (9997.0, 9998.0, 9999.0) /
     B4AD66 (7, 8, 9) /
     B4AD66M (97, 98, 99) /
     B4AD67 (7, 8, 9) /
     B4AD67M (7, 8, 9) /
     B4AD68 ('349200.0','352800.0','356400.0') /
     B4AD68A (7, 8, 9) /
     B4AD69 (9997.0, 9998.0, 9999.0) /
     B4AD610 (7, 8, 9) /
     B4AD611 (97, 98, 99) /
     B4AD612 (7, 8, 9) /
     B4AD613 (7, 8, 9) /
     B4AD614 (97, 98, 99) /
     B4AD615 ('349200.0','352800.0','356400.0') /
     B4AD615A (7, 8, 9) /
     B4AD616 ('349200.0','352800.0','356400.0') /
     B4AD616A (7, 8, 9) /
     B4AD617 (7, 8, 9) /
     B4AD618 (7, 8, 9) /
     B4AD619 (7, 8, 9) /
     B4AD620 (7, 8, 9) /
     B4AD71 (7, 8, 9) /
     B4AD72 (9997.0, 9998.0, 9999.0) /
     B4AD73 (7, 8, 9) /
     B4AD73S (9997.0, 9998.0, 9999.0) /
     B4AD74 (9997.0, 9998.0, 9999.0) /
     B4AD75 (9997.0, 9998.0, 9999.0) /
     B4AD76 (7, 8, 9) /
     B4AD76M (97, 98, 99) /
     B4AD77 (7, 8, 9) /
     B4AD77M (7, 8, 9) /
     B4AD78 ('349200.0','352800.0','356400.0') /
     B4AD78A (7, 8, 9) /
     B4AD79 (9997.0, 9998.0, 9999.0) /
     B4AD710 (7, 8, 9) /
     B4AD711 (97, 98, 99) /
     B4AD712 (7, 8, 9) /
     B4AD713 (7, 8, 9) /
     B4AD714 (97, 98, 99) /
     B4AD715 ('349200.0','352800.0','356400.0') /
     B4AD715A (7, 8, 9) /
     B4AD716 ('349200.0','352800.0','356400.0') /
     B4AD716A (7, 8, 9) /
     B4AD717 (7, 8, 9) /
     B4AD718 (7, 8, 9) /
     B4AD719 (7, 8, 9) /
     B4AD720 (7, 8, 9) /
     B4WR1TAC (999998, 999999) /
     B4WR1ACM (998.0, 999.0) /
     B4WR1MAC (9998, 9999) /
     B4WR1IAC (98, 99) /
     B4WR1SW (98.0, 99.0) /
     B4WR1WT (998.0, 999.0) /
     B4WR1PW (998.0, 999.0) /
     B4WR1WB (998, 999) /
     B4WR1AWB (998.0, 999.0) /
     B4WR1SLT (9998.0, 9999.0) /
     B4WR1PSL (998.0, 999.0) /
     B4WR1SLB (998, 999) /
     B4WR1ASB (998.0, 999.0) /
     B4WS1TAC (999998, 999999) /
     B4WS1ACM (998.0, 999.0) /
     B4WS1MAC (9998, 9999) /
     B4WS1IAC (98, 99) /
     B4WS1ISW (98.0, 99.0) /
     B4WS1OL (998.0, 999.0) /
     B4WS1SNT (998.0, 999.0) /
     B4WS1EFF (998.0, 999.0) /
     B4WS1WSO (998.0, 999.0) /
     B4WS1WT (998.0, 999.0) /
     B4WS1PW (98.0, 99.0) /
     B4WS1WB (998, 999) /
     B4WS1AWB (98.0, 99.0) /
     B4WS1SLT (9998.0, 9999.0) /
     B4WS1PSL (998.0, 999.0) /
     B4WS1SLB (998, 999) /
     B4WS1ASB (998.0, 999.0) /
     B4WA1TAC (9999998, 9999999) /
     B4WA1ACM (9998.0, 9999.0) /
     B4WA1MAC (9998, 9999) /
     B4WA1IAC (8, 9) /
     B4WA1ISW (8.0, 9.0) /
     B4WA1WT (9998.0, 9999.0) /
     B4WA1PW (998.0, 999.0) /
     B4WA1WB (998, 999) /
     B4WA1AWB (998.0, 999.0) /
     B4WA1SLT (998.0, 999.0) /
     B4WA1PSL (98.0, 99.0) /
     B4WA1SLB (998, 999) /
     B4WA1ASB (98.0, 99.0) /
     B4WR2TAC (999998, 999999) /
     B4WR2ACM (998.0, 999.0) /
     B4WR2MAC (9998, 9999) /
     B4WR2IAC (98, 99) /
     B4WR2SW (98.0, 99.0) /
     B4WR2WT (998.0, 999.0) /
     B4WR2PW (998.0, 999.0) /
     B4WR2WB (998, 999) /
     B4WR2AWB (998.0, 999.0) /
     B4WR2SLT (9998.0, 9999.0) /
     B4WR2PSL (998.0, 999.0) /
     B4WR2SLB (998, 999) /
     B4WR2ASB (998.0, 999.0) /
     B4WS2TAC (999998, 999999) /
     B4WS2ACM (998.0, 999.0) /
     B4WS2MAC (9998, 9999) /
     B4WS2IAC (98, 99) /
     B4WS2ISW (98.0, 99.0) /
     B4WS2OL (998.0, 999.0) /
     B4WS2SNT (998.0, 999.0) /
     B4WS2EFF (998.0, 999.0) /
     B4WS2WSO (998.0, 999.0) /
     B4WS2WT (998.0, 999.0) /
     B4WS2PW (98.0, 99.0) /
     B4WS2WB (998, 999) /
     B4WS2AWB (98.0, 99.0) /
     B4WS2SLT (9998.0, 9999.0) /
     B4WS2PSL (998.0, 999.0) /
     B4WS2SLB (998, 999) /
     B4WS2ASB (998.0, 999.0) /
     B4WA2TAC (9999998, 9999999) /
     B4WA2ACM (9998.0, 9999.0) /
     B4WA2MAC (9998, 9999) /
     B4WA2IAC (8, 9) /
     B4WA2ISW (8.0, 9.0) /
     B4WA2WT (9998.0, 9999.0) /
     B4WA2PW (998.0, 999.0) /
     B4WA2WB (998, 999) /
     B4WA2AWB (998.0, 999.0) /
     B4WA2SLT (998.0, 999.0) /
     B4WA2PSL (98.0, 99.0) /
     B4WA2SLB (998, 999) /
     B4WA2ASB (98.0, 99.0) /
     B4WR3TAC (999998, 999999) /
     B4WR3ACM (998.0, 999.0) /
     B4WR3MAC (9998, 9999) /
     B4WR3IAC (98, 99) /
     B4WR3SW (98.0, 99.0) /
     B4WR3WT (998.0, 999.0) /
     B4WR3PW (998.0, 999.0) /
     B4WR3WB (998, 999) /
     B4WR3AWB (998.0, 999.0) /
     B4WR3SLT (9998.0, 9999.0) /
     B4WR3PSL (998.0, 999.0) /
     B4WR3SLB (998, 999) /
     B4WR3ASB (998.0, 999.0) /
     B4WS3TAC (999998, 999999) /
     B4WS3ACM (998.0, 999.0) /
     B4WS3MAC (9998, 9999) /
     B4WS3IAC (98, 99) /
     B4WS3ISW (98.0, 99.0) /
     B4WS3OL (998.0, 999.0) /
     B4WS3SNT (998.0, 999.0) /
     B4WS3EFF (998.0, 999.0) /
     B4WS3WSO (998.0, 999.0) /
     B4WS3WT (998.0, 999.0) /
     B4WS3PW (98.0, 99.0) /
     B4WS3WB (998, 999) /
     B4WS3AWB (98.0, 99.0) /
     B4WS3SLT (9998.0, 9999.0) /
     B4WS3PSL (998.0, 999.0) /
     B4WS3SLB (998, 999) /
     B4WS3ASB (998.0, 999.0) /
     B4WA3TAC (9999998, 9999999) /
     B4WA3ACM (9998.0, 9999.0) /
     B4WA3MAC (9998, 9999) /
     B4WA3IAC (8, 9) /
     B4WA3ISW (8.0, 9.0) /
     B4WA3WT (9998.0, 9999.0) /
     B4WA3PW (998.0, 999.0) /
     B4WA3WB (998, 999) /
     B4WA3AWB (998.0, 999.0) /
     B4WA3SLT (998.0, 999.0) /
     B4WA3PSL (98.0, 99.0) /
     B4WA3SLB (998, 999) /
     B4WA3ASB (98.0, 99.0) /
     B4WR4TAC (999998, 999999) /
     B4WR4ACM (998.0, 999.0) /
     B4WR4MAC (9998, 9999) /
     B4WR4IAC (98, 99) /
     B4WR4SW (98.0, 99.0) /
     B4WR4WT (998.0, 999.0) /
     B4WR4PW (998.0, 999.0) /
     B4WR4WB (998, 999) /
     B4WR4AWB (998.0, 999.0) /
     B4WR4SLT (9998.0, 9999.0) /
     B4WR4PSL (998.0, 999.0) /
     B4WR4SLB (998, 999) /
     B4WR4ASB (998.0, 999.0) /
     B4WS4TAC (999998, 999999) /
     B4WS4ACM (998.0, 999.0) /
     B4WS4MAC (9998, 9999) /
     B4WS4IAC (98, 99) /
     B4WS4ISW (98.0, 99.0) /
     B4WS4OL (998.0, 999.0) /
     B4WS4SNT (998.0, 999.0) /
     B4WS4EFF (998.0, 999.0) /
     B4WS4WSO (998.0, 999.0) /
     B4WS4WT (998.0, 999.0) /
     B4WS4PW (98.0, 99.0) /
     B4WS4WB (998, 999) /
     B4WS4AWB (98.0, 99.0) /
     B4WS4SLT (9998.0, 9999.0) /
     B4WS4PSL (998.0, 999.0) /
     B4WS4SLB (998, 999) /
     B4WS4ASB (998.0, 999.0) /
     B4WA4TAC (9999998, 9999999) /
     B4WA4ACM (9998.0, 9999.0) /
     B4WA4MAC (9998, 9999) /
     B4WA4IAC (8, 9) /
     B4WA4ISW (8.0, 9.0) /
     B4WA4WT (9998.0, 9999.0) /
     B4WA4PW (998.0, 999.0) /
     B4WA4WB (998, 999) /
     B4WA4AWB (998.0, 999.0) /
     B4WA4SLT (998.0, 999.0) /
     B4WA4PSL (98.0, 99.0) /
     B4WA4SLB (998, 999) /
     B4WA4ASB (98.0, 99.0) /
     B4WR5TAC (999998, 999999) /
     B4WR5ACM (998.0, 999.0) /
     B4WR5MAC (9998, 9999) /
     B4WR5IAC (98, 99) /
     B4WR5SW (98.0, 99.0) /
     B4WR5WT (998.0, 999.0) /
     B4WR5PW (998.0, 999.0) /
     B4WR5WB (998, 999) /
     B4WR5AWB (998.0, 999.0) /
     B4WR5SLT (9998.0, 9999.0) /
     B4WR5PSL (998.0, 999.0) /
     B4WR5SLB (998, 999) /
     B4WR5ASB (998.0, 999.0) /
     B4WS5TAC (999998, 999999) /
     B4WS5ACM (998.0, 999.0) /
     B4WS5MAC (9998, 9999) /
     B4WS5IAC (98, 99) /
     B4WS5ISW (98.0, 99.0) /
     B4WS5OL (998.0, 999.0) /
     B4WS5SNT (998.0, 999.0) /
     B4WS5EFF (998.0, 999.0) /
     B4WS5WSO (998.0, 999.0) /
     B4WS5WT (998.0, 999.0) /
     B4WS5PW (98.0, 99.0) /
     B4WS5WB (998, 999) /
     B4WS5AWB (98.0, 99.0) /
     B4WS5SLT (9998.0, 9999.0) /
     B4WS5PSL (998.0, 999.0) /
     B4WS5SLB (998, 999) /
     B4WS5ASB (998.0, 999.0) /
     B4WA5TAC (9999998, 9999999) /
     B4WA5ACM (9998.0, 9999.0) /
     B4WA5MAC (9998, 9999) /
     B4WA5IAC (8, 9) /
     B4WA5ISW (8.0, 9.0) /
     B4WA5WT (9998.0, 9999.0) /
     B4WA5PW (998.0, 999.0) /
     B4WA5WB (998, 999) /
     B4WA5AWB (998.0, 999.0) /
     B4WA5SLT (998.0, 999.0) /
     B4WA5PSL (98.0, 99.0) /
     B4WA5SLB (998, 999) /
     B4WA5ASB (98.0, 99.0) /
     B4WR6TAC (999998, 999999) /
     B4WR6ACM (998.0, 999.0) /
     B4WR6MAC (9998, 9999) /
     B4WR6IAC (98, 99) /
     B4WR6SW (98.0, 99.0) /
     B4WR6WT (998.0, 999.0) /
     B4WR6PW (998.0, 999.0) /
     B4WR6WB (998, 999) /
     B4WR6AWB (998.0, 999.0) /
     B4WR6SLT (9998.0, 9999.0) /
     B4WR6PSL (998.0, 999.0) /
     B4WR6SLB (998, 999) /
     B4WR6ASB (998.0, 999.0) /
     B4WS6TAC (999998, 999999) /
     B4WS6ACM (998.0, 999.0) /
     B4WS6MAC (9998, 9999) /
     B4WS6IAC (98, 99) /
     B4WS6ISW (98.0, 99.0) /
     B4WS6OL (998.0, 999.0) /
     B4WS6SNT (998.0, 999.0) /
     B4WS6EFF (998.0, 999.0) /
     B4WS6WSO (998.0, 999.0) /
     B4WS6WT (998.0, 999.0) /
     B4WS6PW (98.0, 99.0) /
     B4WS6WB (998, 999) /
     B4WS6AWB (98.0, 99.0) /
     B4WS6SLT (9998.0, 9999.0) /
     B4WS6PSL (998.0, 999.0) /
     B4WS6SLB (998, 999) /
     B4WS6ASB (998.0, 999.0) /
     B4WA6TAC (9999998, 9999999) /
     B4WA6ACM (9998.0, 9999.0) /
     B4WA6MAC (9998, 9999) /
     B4WA6IAC (8, 9) /
     B4WA6ISW (8.0, 9.0) /
     B4WA6WT (9998.0, 9999.0) /
     B4WA6PW (998.0, 999.0) /
     B4WA6WB (998, 999) /
     B4WA6AWB (998.0, 999.0) /
     B4WA6SLT (998.0, 999.0) /
     B4WA6PSL (98.0, 99.0) /
     B4WA6SLB (998, 999) /
     B4WA6ASB (98.0, 99.0) /
     B4WR7TAC (999998, 999999) /
     B4WR7ACM (998.0, 999.0) /
     B4WR7MAC (9998, 9999) /
     B4WR7IAC (98, 99) /
     B4WR7SW (98.0, 99.0) /
     B4WR7WT (998.0, 999.0) /
     B4WR7PW (998.0, 999.0) /
     B4WR7WB (998, 999) /
     B4WR7AWB (998.0, 999.0) /
     B4WR7SLT (9998.0, 9999.0) /
     B4WR7PSL (998.0, 999.0) /
     B4WR7SLB (998, 999) /
     B4WR7ASB (998.0, 999.0) /
     B4WS7TAC (999998, 999999) /
     B4WS7ACM (998.0, 999.0) /
     B4WS7MAC (9998, 9999) /
     B4WS7IAC (98, 99) /
     B4WS7ISW (98.0, 99.0) /
     B4WS7OL (998.0, 999.0) /
     B4WS7SNT (998.0, 999.0) /
     B4WS7EFF (998.0, 999.0) /
     B4WS7WSO (998.0, 999.0) /
     B4WS7WT (998.0, 999.0) /
     B4WS7PW (98.0, 99.0) /
     B4WS7WB (998, 999) /
     B4WS7AWB (98.0, 99.0) /
     B4WS7SLT (9998.0, 9999.0) /
     B4WS7PSL (998.0, 999.0) /
     B4WS7SLB (998, 999) /
     B4WS7ASB (998.0, 999.0) /
     B4VHAWR (7, 8, 9) /
     B4VHADW (7, 8, 9) /
     B4VHATH (7, 8, 9) /
     B4VHASC (7, 8, 9) /
     B4VHATO (7, 8, 9) /
     B4VHAKN (7, 8, 9) /
     B4VHASP (7, 8, 9) /
     B4VHABR (7, 8, 9) /
     B4VHASM (7, 8, 9) /
     B4VHAOB (7, 8, 9) /
     B4VHAKI (7, 8, 9) /
     B4VHAOE (7, 8, 9) /
     B4VHALT (998, 999) /
     B4VHART (998, 999) /
     B4VHALQ (998, 999) /
     B4VHADZ (98, 99) /
     B4VHADR (98, 99) /
     B4VHADL (98, 99) /
     B4VST ('349200.0','352800.0','356400.0') /
     B4VATEH (9999.0) /
     B4VCAFH (9999.0) /
     B4VCIGH (9999.0) /
     B4VCLB (7, 8, 9) /
     B4VCLBT (7, 8, 9) /
     B4VCIRC (8, 9) /
     B4VLC (8, 9) /
     B4VS1T ('349200.0','352800.0','356400.0') /
     B4VSRB1 (98, 99) /
     B4VTASK1 ('INAPPLIC') /
     B4VCS1 (9) /
     B4VSRCS1 (98, 99) /
     B4VSRR1 (98, 99) /
     B4VTASK2 ('INAPPLIC') /
     B4VCS2 (9) /
     B4VSRCS2 (98, 99) /
     B4VSRR2 (98, 99) /
     B4VS2T ('349200.0','352800.0','356400.0') /
     B4VSRU1 (98, 99) /
     B4VS3T ('349200.0','352800.0','356400.0') /
     B4VS4T ('349200.0','352800.0','356400.0') /
     B4VSTS1 (998) /
     B4VS1S2 (998) /
     B4VS2S3 (998) /
     B4VS3S4 (998) /
     B4VMEQ (9) /
     B4VMEQR (9) /
     B4VPEQ (9) /
     B4VPEQR (9) /
     B4VB1DU (9998, 9999) /
     B4VB1BEG (99998.0, 99999.0) /
     B4VB1END (99998.0, 99999.0) /
     B4VB1MAX (99998.0, 99999.0) /
     B4VB1NU (9998, 9999) /
     B4VB1HR (99998.0, 99999.0) /
     B4VB1SD (99998.0, 99999.0) /
     B4VB1LSD (99998.0, 99999.0) /
     B4VB1RM (99998.0, 99999.0) /
     B4VB1LRM (99998.0, 99999.0) /
     B4VB1LF (99998.0, 99999.0) /
     B4VB1LLF (99998.0, 99999.0) /
     B4VB1HF (99998.0, 99999.0) /
     B4VB1LHF (99998.0, 99999.0) /
     B4VB2DU (9998, 9999) /
     B4VB2BEG (99998.0, 99999.0) /
     B4VB2END (99998.0, 99999.0) /
     B4VB2MAX (99998.0, 99999.0) /
     B4VB2NU (9998, 9999) /
     B4VB2HR (99998.0, 99999.0) /
     B4VB2SD (99998.0, 99999.0) /
     B4VB2LSD (99998.0, 99999.0) /
     B4VB2RM (99998.0, 99999.0) /
     B4VB2LRM (99998.0, 99999.0) /
     B4VB2LF (99998.0, 99999.0) /
     B4VB2LLF (99998.0, 99999.0) /
     B4VB2HF (99998.0, 99999.0) /
     B4VB2LHF (99998.0, 99999.0) /
     B4VM1DU (9998, 9999) /
     B4VM1BEG (99998.0, 99999.0) /
     B4VM1END (99998.0, 99999.0) /
     B4VM1MAX (99998.0, 99999.0) /
     B4VM1NU (9998, 9999) /
     B4VM1HR (99998.0, 99999.0) /
     B4VM1SD (99998.0, 99999.0) /
     B4VM1LSD (99998.0, 99999.0) /
     B4VM1RM (99998.0, 99999.0) /
     B4VM1LRM (99998.0, 99999.0) /
     B4VM1LF (99998.0, 99999.0) /
     B4VM1LLF (99998.0, 99999.0) /
     B4VM1HF (99998.0, 99999.0) /
     B4VM1LHF (99998.0, 99999.0) /
     B4VP1DU (9998, 9999) /
     B4VP1BEG (99998.0, 99999.0) /
     B4VP1END (99998.0, 99999.0) /
     B4VP1MAX (99998.0, 99999.0) /
     B4VP1NU (9998, 9999) /
     B4VP1HR (99998.0, 99999.0) /
     B4VP1SD (99998.0, 99999.0) /
     B4VP1LSD (99998.0, 99999.0) /
     B4VP1RM (99998.0, 99999.0) /
     B4VP1LRM (99998.0, 99999.0) /
     B4VP1LF (99998.0, 99999.0) /
     B4VP1LLF (99998.0, 99999.0) /
     B4VP1HF (99998.0, 99999.0) /
     B4VP1LHF (99998.0, 99999.0) /
     B4VP2DU (9998, 9999) /
     B4VP2BEG (99998.0, 99999.0) /
     B4VP2END (99998.0, 99999.0) /
     B4VP2MAX (99998.0, 99999.0) /
     B4VP2NU (9998, 9999) /
     B4VP2HR (99998.0, 99999.0) /
     B4VP2SD (99998.0, 99999.0) /
     B4VP2LSD (99998.0, 99999.0) /
     B4VP2RM (99998.0, 99999.0) /
     B4VP2LRM (99998.0, 99999.0) /
     B4VP2LF (99998.0, 99999.0) /
     B4VP2LLF (99998.0, 99999.0) /
     B4VP2HF (99998.0, 99999.0) /
     B4VP2LHF (99998.0, 99999.0) /
     B4VR1DU (9998, 9999) /
     B4VR1BEG (99998.0, 99999.0) /
     B4VR1END (99998.0, 99999.0) /
     B4VR1MAX (99998.0, 99999.0) /
     B4VR1NU (9998, 9999) /
     B4VR1HR (99998.0, 99999.0) /
     B4VR1SD (99998.0, 99999.0) /
     B4VR1LSD (99998.0, 99999.0) /
     B4VR1RM (99998.0, 99999.0) /
     B4VR1LRM (99998.0, 99999.0) /
     B4VR1LF (99998.0, 99999.0) /
     B4VR1LLF (99998.0, 99999.0) /
     B4VR1HF (99998.0, 99999.0) /
     B4VR1LHF (99998.0, 99999.0) /
     B4VR2DU (9998, 9999) /
     B4VR2BEG (99998.0, 99999.0) /
     B4VR2END (99998.0, 99999.0) /
     B4VR2MAX (99998.0, 99999.0) /
     B4VR2NU (9998, 9999) /
     B4VR2HR (99998.0, 99999.0) /
     B4VR2SD (99998.0, 99999.0) /
     B4VR2LSD (99998.0, 99999.0) /
     B4VR2RM (99998.0, 99999.0) /
     B4VR2LRM (99998.0, 99999.0) /
     B4VR2LF (99998.0, 99999.0) /
     B4VR2LLF (99998.0, 99999.0) /
     B4VR2HF (99998.0, 99999.0) /
     B4VR2LHF (99998.0, 99999.0) /
     B4VS1DU (9998, 9999) /
     B4VS1BEG (99998.0, 99999.0) /
     B4VS1END (99998.0, 99999.0) /
     B4VS1MAX (99998.0, 99999.0) /
     B4VS1NU (9998, 9999) /
     B4VS1HR (99998.0, 99999.0) /
     B4VS1SD (99998.0, 99999.0) /
     B4VS1LSD (99998.0, 99999.0) /
     B4VS1RM (99998.0, 99999.0) /
     B4VS1LRM (99998.0, 99999.0) /
     B4VS1LF (99998.0, 99999.0) /
     B4VS1LLF (99998.0, 99999.0) /
     B4VS1HF (99998.0, 99999.0) /
     B4VS1LHF (99998.0, 99999.0) /
     B4VS2DU (9998, 9999) /
     B4VS2BEG (99998.0, 99999.0) /
     B4VS2END (99998.0, 99999.0) /
     B4VS2MAX (99998.0, 99999.0) /
     B4VS2NU (9998, 9999) /
     B4VS2HR (99998.0, 99999.0) /
     B4VS2SD (99998.0, 99999.0) /
     B4VS2LSD (99998.0, 99999.0) /
     B4VS2RM (99998.0, 99999.0) /
     B4VS2LRM (99998.0, 99999.0) /
     B4VS2LF (99998.0, 99999.0) /
     B4VS2LLF (99998.0, 99999.0) /
     B4VS2HF (99998.0, 99999.0) /
     B4VS2LHF (99998.0, 99999.0) /
     B4VU1DU (9998, 9999) /
     B4VU1BEG (99998.0, 99999.0) /
     B4VU1END (99998.0, 99999.0) /
     B4VU1MAX (99998.0, 99999.0) /
     B4VU1NU (9998, 9999) /
     B4VU1HR (99998.0, 99999.0) /
     B4VU1SD (99998.0, 99999.0) /
     B4VU1LSD (99998.0, 99999.0) /
     B4VU1RM (99998.0, 99999.0) /
     B4VU1LRM (99998.0, 99999.0) /
     B4VU1LF (99998.0, 99999.0) /
     B4VU1LLF (99998.0, 99999.0) /
     B4VU1HF (99998.0, 99999.0) /
     B4VU1LHF (99998.0, 99999.0) /
   .

EXECUTE.

* SPSS VARIABLE LEVEL COMMAND.

VARIABLE LEVEL
   M2ID
   M2FAMNUM
   B1PAGE_M2
   B4ZCOMPY
   B4ZB1PLG
   B4ZB1SLG
   B4ZB1CLG
   B4ZAGE
   B4QMA_D
   B4QMA_A
   B4QMA_LI
   B4QMA_AA
   B4QMA_PA
   B4QCESD
   B4QPS_PS
   B4QAE_AI
   B4QAE_AO
   B4QAE_AC
   B4QAE_AA
   B4QTA_AG
   B4QTA_AT
   B4QTA_AR
   B4QTA_AX
   B4QSA_SA
   B4QCT_EA
   B4QCT_PA
   B4QCT_SA
   B4QCT_EN
   B4QCT_PN
   B4QCT_MD
   B4QSC_ID
   B4QSC_IT
   B4QSO_PC
   B4QSO_PF
   B4QSO_PX
   B4QSO_IW
   B4QSO_GW
   B4QRISC
   B4QSYMP
   B4QADJ
   B4QSUGF
   B4QSTGF
   B4QSOGFD
   B4QSUGFA
   B4QSTGFA
   B4QSOGFM
   B4QSUGS
   B4QSTGS
   B4QSOLGS
   B4QSC_SC
   B4QSC_CC
   B4QSC_EC
   B4QSC_BC
   B4QSW_SL
   B4QSW_GR
   B4QSW_JP
   B4S2
   B4S4
   B4SSQ_GS
   B4SSQ_S1
   B4SSQ_S2
   B4SSQ_S3
   B4SSQ_S4
   B4SSQ_S5
   B4SSQ_S6
   B4SSQ_S7
   B4H1ED
   B4H1TOTH
   B4HSYMN
   B4H2AF
   B4H2AY
   B4H2BF
   B4H2BY
   B4H2CF
   B4H2CY
   B4H2DF
   B4H2DY
   B4H2EF
   B4H2EY
   B4H2FF
   B4H2FY
   B4H2GF
   B4H2GY
   B4H2HF
   B4H2HY
   B4H2IF
   B4H2IY
   B4H2JF
   B4H2JY
   B4H2KF
   B4H2KY
   B4H2LF
   B4H2LY
   B4H2MF
   B4H2MY
   B4H2NF
   B4H2NY
   B4HBRKB
   B4H3AY
   B4H3BY
   B4H3CY
   B4H3DY
   B4H3EY
   B4H3FY
   B4H3GY
   B4H3HY
   B4H3IY
   B4H3JY
   B4HSURG
   B4H4AY
   B4H4BY
   B4H4CY
   B4HHEAD
   B4H5AY
   B4H5BY
   B4H5CY
   B4HJNT
   B4H6AY
   B4H6BY
   B4H6CY
   B4H6DH
   B4H6DY
   B4HMVA
   B4H7AY
   B4H7BY
   B4HAMPU
   B4H8AY
   B4H8BY
   B4H8CY
   B4H8DY
   B4HOHLTH
   B4H11AA
   B4H11BA
   B4H11CA
   B4H11DA
   B4H12AY
   B4H12BY
   B4H12CY
   B4H15S
   B4H15OTH
   B4HFMHN
   B4H17AF
   B4H17BF
   B4H17CF
   B4H18AF
   B4H18BF
   B4H18CF
   B4H25AFD
   B4H25AFW
   B4H25AM
   B4H25BFD
   B4H25BFW
   B4H25BM
   B4H25CFD
   B4H25CFW
   B4H25CM
   B4H25DFD
   B4H25DFW
   B4H25DM
   B4H25EFD
   B4H25EFW
   B4H25EM
   B4H25FFD
   B4H25FFW
   B4H25FM
   B4H25GFD
   B4H25GFW
   B4H25GM
   B4H28
   B4H31
   B4H32
   B4H36
   B4H37
   B4H40
   B4H41
   B4H42
   B4H43BY
   B4H44CY
   B4H45AY
   B4H45BY
   B4H45CY
   B4H45DY
   B4H45FY
   B4H45GY
   B4H45HY
   B4H46D
   B4H54Y
   B4H56AY
   B4H56BY
   B4H56CY
   B4H56DY
   B4H56EY
   B4HDIED
   B4H57A1Y
   B4H57A2Y
   B4H57A3Y
   B4H57A4Y
   B4H57A5Y
   B4H57TOT
   B4O1A3
   B4O1B3
   B4O1C3
   B4O3
   B4O3A
   B4O5A1B
   B4O5A1C
   B4O5A2B
   B4O5A2C
   B4O5A3B
   B4O5A3C
   B4O8
   B4O9
   B4O10
   B4O12A
   B4O12B
   B4O12C
   B4O14A
   B4O14B
   B4O14C
   B4O16
   B4O16A
   B4O20Y
   B4O22Y
   B4DLSMD
   B4DLST
   B4DLFNMD
   B4DLTRMD
   B4DLFTMD
   B4DLFNT
   B4DLFTT
   B4DLRUMD
   B4DLR3MD
   B4DLR3T
   B4DHSMD
   B4DHST
   B4DHFNMD
   B4DHTRMD
   B4DHFTMD
   B4DHFNT
   B4DHFTT
   B4XPM
   B4XPC1
   B4XPDD1
   B4XPF1
   B4XPT1
   B4XPDC1
   B4XPC2
   B4XPDD2
   B4XPF2
   B4XPT2
   B4XPDC2
   B4XPC3
   B4XPDD3
   B4XPF3
   B4XPT3
   B4XPDC3
   B4XPC4
   B4XPDD4
   B4XPF4
   B4XPT4
   B4XPDC4
   B4XPC5
   B4XPDD5
   B4XPF5
   B4XPT5
   B4XPDC5
   B4XPC6
   B4XPDD6
   B4XPF6
   B4XPT6
   B4XPDC6
   B4XPC7
   B4XPDD7
   B4XPF7
   B4XPT7
   B4XPDC7
   B4XPC8
   B4XPDD8
   B4XPF8
   B4XPT8
   B4XPDC8
   B4XPC9
   B4XPDD9
   B4XPF9
   B4XPT9
   B4XPDC9
   B4XPC10
   B4XPDD10
   B4XPF10
   B4XPT10
   B4XPDC10
   B4XPC11
   B4XPDD11
   B4XPF11
   B4XPT11
   B4XPDC11
   B4XPC12
   B4XPDD12
   B4XPF12
   B4XPT12
   B4XPDC12
   B4XPC13
   B4XPDD13
   B4XPF13
   B4XPT13
   B4XPDC13
   B4XPC14
   B4XPDD14
   B4XPF14
   B4XPT14
   B4XPDC14
   B4XPC15
   B4XPDD15
   B4XPF15
   B4XPT15
   B4XPDC15
   B4XBPC
   B4XCHC
   B4XDPC
   B4XCOC
   B4XSHC
   B4XOM
   B4XOC1
   B4XODD1
   B4XOF1
   B4XOT1
   B4XODC1
   B4XOC2
   B4XODD2
   B4XOF2
   B4XOT2
   B4XODC2
   B4XOC3
   B4XODD3
   B4XOF3
   B4XOT3
   B4XODC3
   B4XOC4
   B4XODD4
   B4XOF4
   B4XOT4
   B4XODC4
   B4XOC5
   B4XODD5
   B4XOF5
   B4XOT5
   B4XODC5
   B4XOC6
   B4XODD6
   B4XOF6
   B4XOT6
   B4XODC6
   B4XOC7
   B4XODD7
   B4XOF7
   B4XOT7
   B4XODC7
   B4XOC8
   B4XODD8
   B4XOF8
   B4XOT8
   B4XODC8
   B4XOC9
   B4XODD9
   B4XOF9
   B4XOT9
   B4XODC9
   B4XOC10
   B4XODD10
   B4XOF10
   B4XOT10
   B4XODC10
   B4XOC11
   B4XODD11
   B4XOF11
   B4XOT11
   B4XODC11
   B4XOC12
   B4XODD12
   B4XOF12
   B4XOT12
   B4XODC12
   B4XAM
   B4XAC1
   B4XADD1
   B4XAF1
   B4XAT1
   B4XADC1
   B4XAC2
   B4XADD2
   B4XAF2
   B4XAT2
   B4XADC2
   B4XAC3
   B4XADD3
   B4XAF3
   B4XAT3
   B4XADC3
   B4XAC4
   B4XADD4
   B4XAF4
   B4XAT4
   B4XADC4
   B4XAC5
   B4XADD5
   B4XAF5
   B4XAT5
   B4XADC5
   B4XAC6
   B4XADD6
   B4XAF6
   B4XAT6
   B4XADC6
   B4XAC7
   B4XADD7
   B4XAF7
   B4XAT7
   B4XADC7
   B4XAC8
   B4XADD8
   B4XAF8
   B4XAT8
   B4XADC8
   B4XAC9
   B4XADD9
   B4XAF9
   B4XAT9
   B4XADC9
   B4XAC10
   B4XADD10
   B4XAF10
   B4XAT10
   B4XADC10
   B4XAC11
   B4XADD11
   B4XAF11
   B4XAT11
   B4XADC11
   B4XAC12
   B4XADD12
   B4XAF12
   B4XAT12
   B4XADC12
   B4XMM
   B4XMC1
   B4XMC2
   B4XMC3
   B4XMC4
   B4XMC5
   B4XMC6
   B4XMC7
   B4XMC8
   B4P1A
   B4P1B
   B4PBMI
   B4P1C
   B4P1D
   B4P1E
   B4P1F1S
   B4P1F1D
   B4P1F2S
   B4P1F2D
   B4P1F3S
   B4P1F3D
   B4P1GS
   B4P1GD
   B4P1GS23
   B4P1GD23
   B4P2A
   B4P2B
   B4P2C
   B4P2D
   B4PWHR
   B4P3A2R1
   B4P3A2R2
   B4P3A2R3
   B4P3A2L1
   B4P3A2L2
   B4P3A2L3
   B4P3B2R
   B4P3B2L
   B4P3B5R
   B4P3B5L
   B4P3C2
   B4P3H2
   B4P3H3
   B4P3I2
   B4P8A
   B4P8C1A
   B4P8C2A
   B4P9D3N
   B4P9D3S
   B4P10B2
   B4P10B3
   B4P12D
   B4BHA1C
   B4BCHOL
   B4BTRIGL
   B4BHDL
   B4BLDL
   B4BRTHDL
   B4BDHEAS
   B4BDHEA
   B4BSCREA
   B4BIL6
   B4BSIL6R
   B4BFGN
   B4BCRP
   B4BSESEL
   B4BSICAM
   B4BATBC
   B4B13CBC
   B4BAC
   B4BBCX
   B4BLUT
   B4BZX
   B4BLYC
   B4BRET
   B4BATOC
   B4BGTOC
   B4BP1NP
   B4BSBAP
   B4BSNTX
   B4BGLUC
   B4BINSLN
   B4BIGF1
   B4BHOMAIR
   B4BUVDN
   B4BURVOL
   B4BCORTL
   B4BCORTO
   B4BUCREA
   B4BCLCRE
   B4BCOCRE
   B4BNOREP
   B4BEPIN
   B4BDOPA
   B4BNE12
   B4BEPI12
   B4BDOP12
   B4BNOCRE
   B4BEPCRE
   B4BDOCRE
   B4BNECL
   B4BSUCRE
   B4BGFR
   B4BSCL11
   B4BSCL21
   B4BSCL31
   B4BSCL41
   B4BSCL12
   B4BSCL22
   B4BSCL32
   B4BSCL42
   B4BSCL1A
   B4BSCL2A
   B4BSCL3A
   B4BSCL4A
   B4BSCL14
   B4AWDAYS
   B4AWLAG
   B4AD12
   B4AD13S
   B4AD14
   B4AD15
   B4AD19
   B4AD111
   B4AD114
   B4AD22
   B4AD23S
   B4AD24
   B4AD25
   B4AD29
   B4AD211
   B4AD213
   B4AD214
   B4AD32
   B4AD33
   B4AD33S
   B4AD34
   B4AD35
   B4AD39
   B4AD311
   B4AD314
   B4AD42
   B4AD43S
   B4AD44
   B4AD45
   B4AD49
   B4AD411
   B4AD414
   B4AD52
   B4AD53S
   B4AD54
   B4AD55
   B4AD59
   B4AD511
   B4AD514
   B4AD62
   B4AD63S
   B4AD64
   B4AD65
   B4AD69
   B4AD611
   B4AD614
   B4AD72
   B4AD73S
   B4AD74
   B4AD75
   B4AD79
   B4AD711
   B4AD714
   B4WPSTI
   B4WR1ST
   B4WR1ET
   B4WR1TAC
   B4WR1ACM
   B4WR1MAC
   B4WR1IAC
   B4WR1SW
   B4WR1WT
   B4WR1PW
   B4WR1WB
   B4WR1AWB
   B4WR1SLT
   B4WR1PSL
   B4WR1SLB
   B4WR1ASB
   B4WS1ST
   B4WS1ET
   B4WS1TAC
   B4WS1ACM
   B4WS1MAC
   B4WS1IAC
   B4WS1ISW
   B4WS1OL
   B4WS1SNT
   B4WS1EFF
   B4WS1WSO
   B4WS1WT
   B4WS1PW
   B4WS1WB
   B4WS1AWB
   B4WS1SLT
   B4WS1PSL
   B4WS1SLB
   B4WS1ASB
   B4WA1ST
   B4WA1ET
   B4WA1TAC
   B4WA1ACM
   B4WA1MAC
   B4WA1IAC
   B4WA1ISW
   B4WA1WT
   B4WA1PW
   B4WA1WB
   B4WA1AWB
   B4WA1SLT
   B4WA1PSL
   B4WA1SLB
   B4WA1ASB
   B4WR2ST
   B4WR2ET
   B4WR2TAC
   B4WR2ACM
   B4WR2MAC
   B4WR2IAC
   B4WR2SW
   B4WR2WT
   B4WR2PW
   B4WR2WB
   B4WR2AWB
   B4WR2SLT
   B4WR2PSL
   B4WR2SLB
   B4WR2ASB
   B4WS2ST
   B4WS2ET
   B4WS2TAC
   B4WS2ACM
   B4WS2MAC
   B4WS2IAC
   B4WS2ISW
   B4WS2OL
   B4WS2SNT
   B4WS2EFF
   B4WS2WSO
   B4WS2WT
   B4WS2PW
   B4WS2WB
   B4WS2AWB
   B4WS2SLT
   B4WS2PSL
   B4WS2SLB
   B4WS2ASB
   B4WA2ST
   B4WA2ET
   B4WA2TAC
   B4WA2ACM
   B4WA2MAC
   B4WA2IAC
   B4WA2ISW
   B4WA2WT
   B4WA2PW
   B4WA2WB
   B4WA2AWB
   B4WA2SLT
   B4WA2PSL
   B4WA2SLB
   B4WA2ASB
   B4WR3ST
   B4WR3ET
   B4WR3TAC
   B4WR3ACM
   B4WR3MAC
   B4WR3IAC
   B4WR3SW
   B4WR3WT
   B4WR3PW
   B4WR3WB
   B4WR3AWB
   B4WR3SLT
   B4WR3PSL
   B4WR3SLB
   B4WR3ASB
   B4WS3ST
   B4WS3ET
   B4WS3TAC
   B4WS3ACM
   B4WS3MAC
   B4WS3IAC
   B4WS3ISW
   B4WS3OL
   B4WS3SNT
   B4WS3EFF
   B4WS3WSO
   B4WS3WT
   B4WS3PW
   B4WS3WB
   B4WS3AWB
   B4WS3SLT
   B4WS3PSL
   B4WS3SLB
   B4WS3ASB
   B4WA3ST
   B4WA3ET
   B4WA3TAC
   B4WA3ACM
   B4WA3MAC
   B4WA3IAC
   B4WA3ISW
   B4WA3WT
   B4WA3PW
   B4WA3WB
   B4WA3AWB
   B4WA3SLT
   B4WA3PSL
   B4WA3SLB
   B4WA3ASB
   B4WR4ST
   B4WR4ET
   B4WR4TAC
   B4WR4ACM
   B4WR4MAC
   B4WR4IAC
   B4WR4SW
   B4WR4WT
   B4WR4PW
   B4WR4WB
   B4WR4AWB
   B4WR4SLT
   B4WR4PSL
   B4WR4SLB
   B4WR4ASB
   B4WS4ST
   B4WS4ET
   B4WS4TAC
   B4WS4ACM
   B4WS4MAC
   B4WS4IAC
   B4WS4ISW
   B4WS4OL
   B4WS4SNT
   B4WS4EFF
   B4WS4WSO
   B4WS4WT
   B4WS4PW
   B4WS4WB
   B4WS4AWB
   B4WS4SLT
   B4WS4PSL
   B4WS4SLB
   B4WS4ASB
   B4WA4ST
   B4WA4ET
   B4WA4TAC
   B4WA4ACM
   B4WA4MAC
   B4WA4IAC
   B4WA4ISW
   B4WA4WT
   B4WA4PW
   B4WA4WB
   B4WA4AWB
   B4WA4SLT
   B4WA4PSL
   B4WA4SLB
   B4WA4ASB
   B4WR5ST
   B4WR5ET
   B4WR5TAC
   B4WR5ACM
   B4WR5MAC
   B4WR5IAC
   B4WR5SW
   B4WR5WT
   B4WR5PW
   B4WR5WB
   B4WR5AWB
   B4WR5SLT
   B4WR5PSL
   B4WR5SLB
   B4WR5ASB
   B4WS5ST
   B4WS5ET
   B4WS5TAC
   B4WS5ACM
   B4WS5MAC
   B4WS5IAC
   B4WS5ISW
   B4WS5OL
   B4WS5SNT
   B4WS5EFF
   B4WS5WSO
   B4WS5WT
   B4WS5PW
   B4WS5WB
   B4WS5AWB
   B4WS5SLT
   B4WS5PSL
   B4WS5SLB
   B4WS5ASB
   B4WA5ST
   B4WA5ET
   B4WA5TAC
   B4WA5ACM
   B4WA5MAC
   B4WA5IAC
   B4WA5ISW
   B4WA5WT
   B4WA5PW
   B4WA5WB
   B4WA5AWB
   B4WA5SLT
   B4WA5PSL
   B4WA5SLB
   B4WA5ASB
   B4WR6ST
   B4WR6ET
   B4WR6TAC
   B4WR6ACM
   B4WR6MAC
   B4WR6IAC
   B4WR6SW
   B4WR6WT
   B4WR6PW
   B4WR6WB
   B4WR6AWB
   B4WR6SLT
   B4WR6PSL
   B4WR6SLB
   B4WR6ASB
   B4WS6ST
   B4WS6ET
   B4WS6TAC
   B4WS6ACM
   B4WS6MAC
   B4WS6IAC
   B4WS6ISW
   B4WS6OL
   B4WS6SNT
   B4WS6EFF
   B4WS6WSO
   B4WS6WT
   B4WS6PW
   B4WS6WB
   B4WS6AWB
   B4WS6SLT
   B4WS6PSL
   B4WS6SLB
   B4WS6ASB
   B4WA6ST
   B4WA6ET
   B4WA6TAC
   B4WA6ACM
   B4WA6MAC
   B4WA6IAC
   B4WA6ISW
   B4WA6WT
   B4WA6PW
   B4WA6WB
   B4WA6AWB
   B4WA6SLT
   B4WA6PSL
   B4WA6SLB
   B4WA6ASB
   B4WR7ST
   B4WR7ET
   B4WR7TAC
   B4WR7ACM
   B4WR7MAC
   B4WR7IAC
   B4WR7SW
   B4WR7WT
   B4WR7PW
   B4WR7WB
   B4WR7AWB
   B4WR7SLT
   B4WR7PSL
   B4WR7SLB
   B4WR7ASB
   B4WS7ST
   B4WS7ET
   B4WS7TAC
   B4WS7ACM
   B4WS7MAC
   B4WS7IAC
   B4WS7ISW
   B4WS7OL
   B4WS7SNT
   B4WS7EFF
   B4WS7WSO
   B4WS7WT
   B4WS7PW
   B4WS7WB
   B4WS7AWB
   B4WS7SLT
   B4WS7PSL
   B4WS7SLB
   B4WS7ASB
   B4VHALT
   B4VHART
   B4VHALQ
   B4VHADR
   B4VHADL
   B4VATEH
   B4VCAFH
   B4VCIGH
   B4VSRB1
   B4VSRCS1
   B4VSRR1
   B4VSRCS2
   B4VSRR2
   B4VSRU1
   B4VSTS1
   B4VS1S2
   B4VS2S3
   B4VS3S4
   B4VB1DU
   B4VB1BEG
   B4VB1END
   B4VB1MAX
   B4VB1NU
   B4VB1HR
   B4VB1SD
   B4VB1LSD
   B4VB1RM
   B4VB1LRM
   B4VB1LF
   B4VB1LLF
   B4VB1HF
   B4VB1LHF
   B4VB2DU
   B4VB2BEG
   B4VB2END
   B4VB2MAX
   B4VB2NU
   B4VB2HR
   B4VB2SD
   B4VB2LSD
   B4VB2RM
   B4VB2LRM
   B4VB2LF
   B4VB2LLF
   B4VB2HF
   B4VB2LHF
   B4VM1DU
   B4VM1BEG
   B4VM1END
   B4VM1MAX
   B4VM1NU
   B4VM1HR
   B4VM1SD
   B4VM1LSD
   B4VM1RM
   B4VM1LRM
   B4VM1LF
   B4VM1LLF
   B4VM1HF
   B4VM1LHF
   B4VP1DU
   B4VP1BEG
   B4VP1END
   B4VP1MAX
   B4VP1NU
   B4VP1HR
   B4VP1SD
   B4VP1LSD
   B4VP1RM
   B4VP1LRM
   B4VP1LF
   B4VP1LLF
   B4VP1HF
   B4VP1LHF
   B4VP2DU
   B4VP2BEG
   B4VP2END
   B4VP2MAX
   B4VP2NU
   B4VP2HR
   B4VP2SD
   B4VP2LSD
   B4VP2RM
   B4VP2LRM
   B4VP2LF
   B4VP2LLF
   B4VP2HF
   B4VP2LHF
   B4VR1DU
   B4VR1BEG
   B4VR1END
   B4VR1MAX
   B4VR1NU
   B4VR1HR
   B4VR1SD
   B4VR1LSD
   B4VR1RM
   B4VR1LRM
   B4VR1LF
   B4VR1LLF
   B4VR1HF
   B4VR1LHF
   B4VR2DU
   B4VR2BEG
   B4VR2END
   B4VR2MAX
   B4VR2NU
   B4VR2HR
   B4VR2SD
   B4VR2LSD
   B4VR2RM
   B4VR2LRM
   B4VR2LF
   B4VR2LLF
   B4VR2HF
   B4VR2LHF
   B4VS1DU
   B4VS1BEG
   B4VS1END
   B4VS1MAX
   B4VS1NU
   B4VS1HR
   B4VS1SD
   B4VS1LSD
   B4VS1RM
   B4VS1LRM
   B4VS1LF
   B4VS1LLF
   B4VS1HF
   B4VS1LHF
   B4VS2DU
   B4VS2BEG
   B4VS2END
   B4VS2MAX
   B4VS2NU
   B4VS2HR
   B4VS2SD
   B4VS2LSD
   B4VS2RM
   B4VS2LRM
   B4VS2LF
   B4VS2LLF
   B4VS2HF
   B4VS2LHF
   B4VU1DU
   B4VU1BEG
   B4VU1END
   B4VU1MAX
   B4VU1NU
   B4VU1HR
   B4VU1SD
   B4VU1LSD
   B4VU1RM
   B4VU1LRM
   B4VU1LF
   B4VU1LLF
   B4VU1HF
   B4VU1LHF
    (scale).

VARIABLE LEVEL
   SAMPLMAJ
   B1PGENDER
   B4ZSITE
   B4ZCOMPM
   B4ZRZONE
   B4ZSZONE
   B4Q1A
   B4Q1B
   B4Q1C
   B4Q1D
   B4Q1E
   B4Q1F
   B4Q1G
   B4Q1H
   B4Q1I
   B4Q1J
   B4Q1K
   B4Q1L
   B4Q1M
   B4Q1N
   B4Q1O
   B4Q1P
   B4Q1Q
   B4Q1R
   B4Q1S
   B4Q1T
   B4Q1U
   B4Q1V
   B4Q1W
   B4Q1X
   B4Q1Y
   B4Q1Z
   B4Q1AA
   B4Q1BB
   B4Q1CC
   B4Q1DD
   B4Q1EE
   B4Q1FF
   B4Q1GG
   B4Q1HH
   B4Q1II
   B4Q1JJ
   B4Q1KK
   B4Q1LL
   B4Q1MM
   B4Q1NN
   B4Q1OO
   B4Q1PP
   B4Q1QQ
   B4Q1RR
   B4Q1SS
   B4Q1TT
   B4Q1UU
   B4Q1VV
   B4Q1WW
   B4Q1XX
   B4Q1YY
   B4Q1ZZ
   B4Q1AAA
   B4Q1BBB
   B4Q1CCC
   B4Q1DDD
   B4Q1EEE
   B4Q1FFF
   B4Q1GGG
   B4Q1HHH
   B4Q1III
   B4Q1JJJ
   B4Q1KKK
   B4Q1LLL
   B4Q2
   B4Q3A
   B4Q3B
   B4Q3C
   B4Q3D
   B4Q3E
   B4Q3F
   B4Q3G
   B4Q3H
   B4Q3I
   B4Q3J
   B4Q3K
   B4Q3L
   B4Q3M
   B4Q3N
   B4Q3O
   B4Q3P
   B4Q3Q
   B4Q3R
   B4Q3S
   B4Q3T
   B4Q4A
   B4Q4B
   B4Q4C
   B4Q4D
   B4Q4E
   B4Q4F
   B4Q4G
   B4Q4H
   B4Q4I
   B4Q4J
   B4Q5A
   B4Q5B
   B4Q5C
   B4Q5D
   B4Q5E
   B4Q5F
   B4Q5G
   B4Q5H
   B4Q5I
   B4Q5J
   B4Q5K
   B4Q5L
   B4Q5M
   B4Q5N
   B4Q5O
   B4Q5P
   B4Q5Q
   B4Q5R
   B4Q5S
   B4Q5T
   B4Q5U
   B4Q5V
   B4Q6A
   B4Q6B
   B4Q6C
   B4Q6D
   B4Q6E
   B4Q6F
   B4Q6G
   B4Q6H
   B4Q6I
   B4Q6J
   B4Q6K
   B4Q6L
   B4Q6M
   B4Q6N
   B4Q6O
   B4Q7A
   B4Q7B
   B4Q7C
   B4Q7D
   B4Q7E
   B4Q7F
   B4Q7G
   B4Q7H
   B4Q7I
   B4Q7J
   B4Q7K
   B4Q7L
   B4Q7M
   B4Q7N
   B4Q7O
   B4Q7P
   B4Q7Q
   B4Q7R
   B4Q7S
   B4Q7T
   B4Q8A
   B4Q8B
   B4Q8C
   B4Q8D
   B4Q8E
   B4Q8F
   B4Q8G
   B4Q8H
   B4Q8I
   B4Q9A
   B4Q9B
   B4Q9C
   B4Q9D
   B4Q9E
   B4Q9F
   B4Q9G
   B4Q9H
   B4Q9I
   B4Q9J
   B4Q9K
   B4Q9L
   B4Q9M
   B4Q9N
   B4Q9O
   B4Q9P
   B4Q9Q
   B4Q9R
   B4Q9S
   B4Q9T
   B4Q9U
   B4Q9V
   B4Q9W
   B4Q9X
   B4Q9Y
   B4Q9Z
   B4Q9AA
   B4Q9BB
   B4Q10A1
   B4Q10A2
   B4Q10B1
   B4Q10B2
   B4Q10C1
   B4Q10C2
   B4Q10D1
   B4Q10D2
   B4Q10E1
   B4Q10E2
   B4Q10F1
   B4Q10F2
   B4Q10G1
   B4Q10G2
   B4Q10H1
   B4Q10H2
   B4Q10I1
   B4Q10I2
   B4Q10J1
   B4Q10J2
   B4Q10K1
   B4Q10K2
   B4Q10L1
   B4Q10L2
   B4Q10M1
   B4Q10M2
   B4Q10N1
   B4Q10N2
   B4Q10O1
   B4Q10O2
   B4Q10P1
   B4Q10P2
   B4Q10Q1
   B4Q10Q2
   B4Q10R1
   B4Q10R2
   B4Q10S1
   B4Q10S2
   B4Q10T1
   B4Q10T2
   B4Q10U1
   B4Q10U2
   B4Q10V1
   B4Q10V2
   B4Q10W1
   B4Q10W2
   B4Q10X1
   B4Q10X2
   B4Q10Y1
   B4Q10Y2
   B4Q10Z1
   B4Q10Z2
   B4Q10AA1
   B4Q10AA2
   B4Q10BB1
   B4Q10BB2
   B4Q10CC1
   B4Q10CC2
   B4Q10DD1
   B4Q10DD2
   B4Q10EE1
   B4Q10EE2
   B4Q10FF1
   B4Q10FF2
   B4Q10GG1
   B4Q10GG2
   B4Q10HH1
   B4Q10HH2
   B4Q10II1
   B4Q10II2
   B4Q10JJ1
   B4Q10JJ2
   B4Q10KK1
   B4Q10KK2
   B4Q10LL1
   B4Q10LL2
   B4Q10MM1
   B4Q10MM2
   B4Q10NN1
   B4Q10NN2
   B4Q10OO1
   B4Q10OO2
   B4Q10PP1
   B4Q10PP2
   B4Q10QQ1
   B4Q10QQ2
   B4Q10RR1
   B4Q10RR2
   B4Q10SS1
   B4Q10SS2
   B4Q10TT1
   B4Q10TT2
   B4Q10UU1
   B4Q10UU2
   B4Q10VV1
   B4Q10VV2
   B4Q10WW1
   B4Q10WW2
   B4Q11A
   B4Q11B
   B4Q11C
   B4Q11D
   B4Q11E
   B4Q11F
   B4Q11G
   B4Q11H
   B4Q11I
   B4Q11J
   B4Q11K
   B4Q11L
   B4Q11M
   B4Q11N
   B4Q11O
   B4Q11P
   B4Q11Q
   B4Q11R
   B4Q11S
   B4Q11T
   B4Q11U
   B4Q11V
   B4Q11W
   B4Q11X
   B4Q11Y
   B4Q11Z
   B4Q11AA
   B4Q11BB
   B4Q11CC
   B4Q12A
   B4Q12B
   B4Q12C
   B4Q12D
   B4Q12E
   B4Q12F
   B4Q12G
   B4Q12H
   B4Q12I
   B4Q12J
   B4Q12K
   B4Q12L
   B4Q12M
   B4Q12N
   B4Q12O
   B4Q12P
   B4Q12Q
   B4Q12R
   B4Q12S
   B4Q12T
   B4Q12U
   B4Q13A
   B4Q13B
   B4Q13C
   B4Q13D
   B4Q13E
   B4Q13F
   B4Q13G
   B4Q13H
   B4Q13H1
   B4Q13I
   B4Q13J
   B4Q13K
   B4Q13L
   B4Q13M
   B4Q13N
   B4Q13O1
   B4Q13O
   B4Q13P
   B4Q13Q
   B4Q13R
   B4Q13S
   B4Q13T
   B4Q13U
   B4Q13V
   B4Q13W
   B4Q13X
   B4Q13Y
   B4Q13Z
   B4Q14A
   B4Q14B
   B4Q14C
   B4Q14D
   B4Q14E
   B4Q14F
   B4Q14G
   B4Q14H
   B4Q14I
   B4Q14J
   B4Q14K
   B4Q14L
   B4Q14M
   B4Q14N
   B4Q14O
   B4Q14P
   B4Q14Q
   B4Q14R
   B4Q14S
   B4Q15A
   B4Q15B
   B4Q15C
   B4Q15D
   B4Q15E
   B4Q15F
   B4Q15G
   B4Q15H
   B4Q16A
   B4Q16B
   B4Q16C
   B4Q16D
   B4Q16E
   B4Q16F
   B4Q16G
   B4Q16H
   B4Q17A
   B4S1AMPM
   B4S3AMPM
   B4S5
   B4S6
   B4S7
   B4S8
   B4S9
   B4S10A
   B4S10B
   B4S10C
   B4S10D
   B4S10E
   B4S11A
   B4S11B
   B4S11C
   B4S11D
   B4S11E
   B4S11F
   B4S11G
   B4S11H
   B4S11I
   B4S11J
   B4H1A
   B4H1AD
   B4H1B
   B4H1BD
   B4H1C
   B4H1CD
   B4H1D
   B4H1DD
   B4H1E
   B4H1F
   B4H1FD
   B4H1G
   B4H1GD
   B4H1H
   B4H1HD
   B4H1I
   B4H1ID
   B4H1J
   B4H1JD
   B4H1K
   B4H1KD
   B4H1L
   B4H1LD
   B4H1M
   B4H1MD
   B4H1N
   B4H1ND
   B4H1O
   B4H1OD
   B4H1P
   B4H1PD
   B4H1Q
   B4H1QD
   B4H1R
   B4H1RD
   B4H1S
   B4H1SD
   B4H1T
   B4H1TD
   B4H1U
   B4H1UD
   B4H1V
   B4H1VD
   B4H1W
   B4H1WD
   B4H1X
   B4H1XD
   B4H1Y
   B4H1YD
   B4HSYMX
   B4H2
   B4H3
   B4H3AL
   B4H3BL
   B4H3CL
   B4H3DL
   B4H3EL
   B4H3FL
   B4H3GL
   B4H3HL
   B4H3IL
   B4H3JL
   B4H4
   B4H4AH
   B4H4BH
   B4H4CH
   B4H5
   B4H5AH
   B4H5BH
   B4H5CH
   B4H6
   B4H6AH
   B4H6BH
   B4H6CH
   B4H7
   B4H7AH
   B4H7BH
   B4H8
   B4H8AH
   B4H8BH
   B4H8CH
   B4H8DH
   B4H9
   B4H10
   B4H10A
   B4H10B
   B4H10C
   B4H10D
   B4H10E
   B4H10F
   B4H11A
   B4H11AI
   B4H11B
   B4H11BI
   B4H11C
   B4H11CI
   B4H11D
   B4H11DI
   B4H11E
   B4H12A
   B4H12AM
   B4H12B
   B4H12BM
   B4H12C
   B4H12CM
   B4H13
   B4H14
   B4H14A
   B4H15A
   B4H15A1
   B4H15A2
   B4H15A3
   B4H15A4
   B4H15A5
   B4H15A6
   B4H15A7
   B4H15B
   B4H15B1
   B4H15B2
   B4H15B3
   B4H15B4
   B4H15B5
   B4H15B6
   B4H15B7
   B4H15C
   B4H15C1
   B4H15C2
   B4H15C3
   B4H15C4
   B4H15C5
   B4H15C6
   B4H15C7
   B4H15D
   B4H15D1
   B4H15D2
   B4H15D3
   B4H15D4
   B4H15D5
   B4H15D6
   B4H15D7
   B4H15E
   B4H15E1
   B4H15E2
   B4H15E3
   B4H15E4
   B4H15E5
   B4H15E6
   B4H15E7
   B4H15F
   B4H15F1
   B4H15F2
   B4H15F3
   B4H15F4
   B4H15F5
   B4H15F6
   B4H15F7
   B4H15G
   B4H15G1
   B4H15G2
   B4H15G3
   B4H15G4
   B4H15G5
   B4H15G6
   B4H15G7
   B4H15H
   B4H15H1
   B4H15H2
   B4H15H3
   B4H15H4
   B4H15H5
   B4H15H6
   B4H15H7
   B4H15I
   B4H15I1
   B4H15I2
   B4H15I3
   B4H15I4
   B4H15I5
   B4H15I6
   B4H15I7
   B4H15J
   B4H15J1
   B4H15J2
   B4H15J3
   B4H15J4
   B4H15J5
   B4H15J6
   B4H15J7
   B4H15K
   B4H15K1
   B4H15K2
   B4H15K3
   B4H15K4
   B4H15K5
   B4H15K6
   B4H15K7
   B4H15L
   B4H15L1
   B4H15L2
   B4H15L3
   B4H15L4
   B4H15L5
   B4H15L6
   B4H15L7
   B4H15M
   B4H15M1
   B4H15M2
   B4H15M3
   B4H15M4
   B4H15M5
   B4H15M6
   B4H15M7
   B4H15N
   B4H15N1
   B4H15N2
   B4H15N3
   B4H15N4
   B4H15N5
   B4H15N6
   B4H15N7
   B4H15O
   B4H15O1
   B4H15O2
   B4H15O3
   B4H15O4
   B4H15O5
   B4H15O6
   B4H15O7
   B4H15P
   B4H15P1
   B4H15P2
   B4H15P3
   B4H15P4
   B4H15P5
   B4H15P6
   B4H15P7
   B4H15Q
   B4H15Q1
   B4H15Q2
   B4H15Q3
   B4H15Q4
   B4H15Q5
   B4H15Q6
   B4H15Q7
   B4H15R
   B4H15R1
   B4H15R2
   B4H15R3
   B4H15R4
   B4H15R5
   B4H15R6
   B4H15R7
   B4H15S1
   B4H15S2
   B4H15S3
   B4H15S4
   B4H15S5
   B4H15S6
   B4H15S7
   B4HFMHX
   B4H16
   B4H17AT
   B4H17BT
   B4H17CT
   B4H18AT
   B4H18BT
   B4H18CT
   B4H19
   B4H20
   B4H21
   B4H22
   B4H23A
   B4H23B
   B4H23C
   B4H23D
   B4H24
   B4H25
   B4H25AS
   B4H25AI
   B4H25BS
   B4H25BI
   B4H25CS
   B4H25CI
   B4H25DS
   B4H25DI
   B4H25ES
   B4H25EI
   B4H25FS
   B4H25FI
   B4H25GS
   B4H25GI
   B4H26
   B4H26A
   B4H27
   B4H29
   B4H30
   B4H33
   B4H34
   B4H35
   B4H38
   B4H39
   B4H43A
   B4H43BM
   B4H44A
   B4H44CM
   B4H44D
   B4H45A
   B4H45AM
   B4H45B
   B4H45BM
   B4H45BRC
   B4H45C
   B4H45CM
   B4H45CRC
   B4H45D
   B4H45DM
   B4H45DRC
   B4H45E
   B4H45F
   B4H45FM
   B4H45FRC
   B4H45G
   B4H45GM
   B4H45GRC
   B4H45H
   B4H45HM
   B4H45HRC
   B4H46
   B4H46C
   B4H47
   B4H48
   B4H48A
   B4H49
   B4H50
   B4H54C
   B4H54M
   B4H55
   B4HMARR
   B4H56
   B4H56AG
   B4H56AM
   B4H56BG
   B4H56BM
   B4H56CG
   B4H56CM
   B4H56DG
   B4H56DM
   B4H56EG
   B4H56EM
   B4H57
   B4H57A1M
   B4H57A2M
   B4H57A3M
   B4H57A4M
   B4H57A5M
   B4OAVL
   B4O1
   B4O1A1W
   B4O1B1W
   B4O1C1W
   B4O2
   B4O2A1
   B4O2A2
   B4O2A3
   B4O2B1
   B4O2B2
   B4O2B3
   B4O2C1
   B4O2C2
   B4O2C3
   B4O4A
   B4O4B
   B4O5
   B4O5A1AM
   B4O5A1CO
   B4O5A2AM
   B4O5A2CO
   B4O5A3AM
   B4O5A3CO
   B4O6A1
   B4O6B1
   B4O6C1
   B4O6D1
   B4O6E1
   B4O6F1
   B4O7
   B4O11
   B4O13
   B4O14X
   B4O15
   B4O17
   B4O18
   B4O19
   B4O21
   B4O21A1
   B4O21A2
   B4O21A3
   B4O21A4
   B4O21A5
   B4O23X
   B4O23
   B4O24
   B4O25
   B4O25A
   B4O25B
   B4O25C
   B4O26
   B4O26A
   B4O26B
   B4O26C
   B4O26D
   B4O26E
   B4O26F
   B4O27
   B4DAVAIL
   B4DNARSN
   B4DSTYPE
   B4DTRSID
   B4DFNSID
   B4DFTSID
   B4DRSIDE
   B4XPMD
   B4XOMD
   B4XAMD
   B4XPDU1
   B4XPR1
   B4XPFU1
   B4XPTU1
   B4XPDU2
   B4XPR2
   B4XPFU2
   B4XPTU2
   B4XPDU3
   B4XPR3
   B4XPFU3
   B4XPTU3
   B4XPDU4
   B4XPR4
   B4XPFU4
   B4XPTU4
   B4XPDU5
   B4XPR5
   B4XPFU5
   B4XPTU5
   B4XPDU6
   B4XPR6
   B4XPFU6
   B4XPTU6
   B4XPDU7
   B4XPR7
   B4XPFU7
   B4XPTU7
   B4XPDU8
   B4XPR8
   B4XPFU8
   B4XPTU8
   B4XPDU9
   B4XPR9
   B4XPFU9
   B4XPTU9
   B4XPDU10
   B4XPR10
   B4XPFU10
   B4XPTU10
   B4XPDU11
   B4XPR11
   B4XPFU11
   B4XPTU11
   B4XPDU12
   B4XPR12
   B4XPFU12
   B4XPTU12
   B4XPDU13
   B4XPR13
   B4XPFU13
   B4XPTU13
   B4XPDU14
   B4XPR14
   B4XPFU14
   B4XPTU14
   B4XPDU15
   B4XPR15
   B4XPFU15
   B4XPTU15
   B4XBPD
   B4XCHD
   B4XDPD
   B4XCOD
   B4XSHD
   B4XOMV
   B4XODU1
   B4XOR1
   B4XOFU1
   B4XOTU1
   B4XOCS
   B4XODU2
   B4XOR2
   B4XOFU2
   B4XOTU2
   B4XODU3
   B4XOR3
   B4XOFU3
   B4XOTU3
   B4XODU4
   B4XOR4
   B4XOFU4
   B4XOTU4
   B4XODU5
   B4XOR5
   B4XOFU5
   B4XOTU5
   B4XODU6
   B4XOR6
   B4XOFU6
   B4XOTU6
   B4XODU7
   B4XOR7
   B4XOFU7
   B4XOTU7
   B4XODU8
   B4XOR8
   B4XOFU8
   B4XOTU8
   B4XODU9
   B4XOR9
   B4XOFU9
   B4XOTU9
   B4XODU10
   B4XOR10
   B4XOFU10
   B4XOTU10
   B4XODU11
   B4XOR11
   B4XOFU11
   B4XOTU11
   B4XODU12
   B4XOR12
   B4XOFU12
   B4XOTU12
   B4XADU1
   B4XAR1
   B4XAFU1
   B4XATU1
   B4XADU2
   B4XAR2
   B4XAFU2
   B4XATU2
   B4XADU3
   B4XAR3
   B4XAFU3
   B4XATU3
   B4XADU4
   B4XAR4
   B4XAFU4
   B4XATU4
   B4XADU5
   B4XAR5
   B4XAFU5
   B4XATU5
   B4XADU6
   B4XAR6
   B4XAFU6
   B4XATU6
   B4XADU7
   B4XAR7
   B4XAFU7
   B4XATU7
   B4XADU8
   B4XAR8
   B4XAFU8
   B4XATU8
   B4XADU9
   B4XAR9
   B4XAFU9
   B4XATU9
   B4XADU10
   B4XAR10
   B4XAFU10
   B4XATU10
   B4XADU11
   B4XAR11
   B4XAFU11
   B4XATU11
   B4XADU12
   B4XAR12
   B4XAFU12
   B4XATU12
   B4XM
   B4XXM
   B4PWHRF
   B4P3A
   B4P3A1
   B4P3B1
   B4P3B3R
   B4P3B4
   B4P3B4A
   B4P3B6
   B4P3C1
   B4P3C3
   B4P3D
   B4P3E
   B4P3F
   B4P3G
   B4P3H1R
   B4P3I1
   B4P3I3R
   B4PMD
   B4P4B
   B4P5A1
   B4P5A2
   B4P5A3
   B4P5A4
   B4P5B
   B4P5B1
   B4P5B2
   B4P5B3
   B4P5B4
   B4P5B5
   B4P5B6
   B4P5B7
   B4P5B8
   B4P5B9
   B4P5B10
   B4P5B11
   B4P5B12
   B4P5B13
   B4P5B14
   B4P5B15
   B4P5B16
   B4P5B17
   B4P6A1
   B4P6A2
   B4P6B
   B4P6C
   B4P6D1
   B4P6D2
   B4P6D3
   B4P6D4
   B4P6E1
   B4P6E2
   B4P6E3
   B4P6E4
   B4P6E4R
   B4P6E4L
   B4P6F1
   B4P6F2
   B4P6F3
   B4P6F4
   B4P6F5
   B4P7A
   B4P7A1R
   B4P7A1L
   B4P7A2R
   B4P7A2L
   B4P8B1
   B4P8B2
   B4P8B3
   B4P8B4
   B4P8B5
   B4P8B6
   B4P8B7
   B4P8C1AD
   B4P8C1HO
   B4P8C2AD
   B4P8C2HO
   B4P8D
   B4P9A
   B4P9A1
   B4P9A2
   B4P9A3
   B4P9A4
   B4P9B
   B4P9C
   B4P9D
   B4P9D1
   B4P9D2
   B4P9D3
   B4P10A1
   B4P10A2
   B4P10A3
   B4P10A4
   B4P10B1
   B4P10B2A
   B4P10B2B
   B4P10C
   B4P10C1R
   B4P10C1L
   B4P10C2R
   B4P10C2L
   B4P10C3R
   B4P10C3L
   B4P10C4R
   B4P10C4L
   B4P10C5R
   B4P10C5L
   B4P10C6R
   B4P10C6L
   B4P10C7R
   B4P10C7L
   B4P11A1
   B4P11B
   B4P11B1
   B4P11B1A
   B4P11B1B
   B4P11B1C
   B4P11B1D
   B4P11B2
   B4P11B2A
   B4P11B2B
   B4P11B2C
   B4P11B2D
   B4P11B3
   B4P12A
   B4P12B
   B4P12C
   B4P12C1
   B4P12C1A
   B4P12C1B
   B4P12C1C
   B4P12C1D
   B4P12C1E
   B4P12C1F
   B4P12C2
   B4P12C2A
   B4P12C2B
   B4P12C2C
   B4P12C2D
   B4P12C2E
   B4P12C2F
   B4P12C3
   B4P12C3A
   B4P12C3B
   B4P12C3C
   B4P12C3D
   B4P12C3E
   B4P12C3F
   B4P12C4
   B4P12C4A
   B4P12C4B
   B4P12C4C
   B4P12C4D
   B4P12C4E
   B4P12C4F
   B4P12C5
   B4P12C5A
   B4P12C5B
   B4P12C5C
   B4P12C5D
   B4P12C5E
   B4P12C5F
   B4P12C6
   B4P12C7
   B4P12E1
   B4P12E2
   B4P12E3
   B4P12E4
   B4P12E5
   B4P13
   B4P13A1
   B4P13A2
   B4P13A3
   B4P13A4
   B4P13B1
   B4P13B1A
   B4P13B1B
   B4P13B1C
   B4P13B1D
   B4P13B2
   B4P13B2A
   B4P13B2B
   B4P13B2C
   B4P13B2D
   B4P13B3
   B4P13B3A
   B4P13B3B
   B4P13B3C
   B4P13B3D
   B4P13B4
   B4P13B4A
   B4P13B4B
   B4P13B4C
   B4P13B4D
   B4P13B5
   B4P13B5A
   B4P13B5B
   B4P13B5C
   B4P13B5D
   B4P13C1R
   B4P13C1L
   B4P13C2R
   B4P13C2L
   B4P13C3R
   B4P13C3L
   B4P13C4A
   B4P13D1
   B4P13D1A
   B4P13D1B
   B4P13D1C
   B4P13D1D
   B4P13D2
   B4P13D2A
   B4P13D2B
   B4P13D2C
   B4P13D2D
   B4P13D3
   B4P13D3A
   B4P13D3B
   B4P13D3C
   B4P13D3D
   B4P13D4
   B4P13D4A
   B4P13D4B
   B4P13D4C
   B4P13D4D
   B4P13D5
   B4P13D5A
   B4P13D5B
   B4P13D5C
   B4P13D5D
   B4P13E1
   B4P13E1A
   B4P13E1B
   B4P13E1C
   B4P13E1D
   B4P13E2
   B4P13E3
   B4ZBLOOD
   B4ZURINE
   B4BUPROB
   B4BUVDYN
   B4ZSALIV
   B4BSDUP
   B4AWAVL
   B4AWIMPU
   B4AWMARK
   B4AWPART
   B4AWIDIO
   B4AWTMZN
   B4AWBGNM
   B4AWENDM
   B4AD11
   B4AD13
   B4AD16
   B4AD16M
   B4AD17
   B4AD17M
   B4AD18A
   B4AD110
   B4AD112
   B4AD113
   B4AD115A
   B4AD116A
   B4AD117
   B4AD118
   B4AD119
   B4AD120
   B4AD21
   B4AD23
   B4AD26
   B4AD26M
   B4AD27
   B4AD27M
   B4AD28A
   B4AD210
   B4AD212
   B4AD215A
   B4AD216A
   B4AD217
   B4AD218
   B4AD219
   B4AD220
   B4AD31
   B4AD36
   B4AD36M
   B4AD37
   B4AD37M
   B4AD38A
   B4AD310
   B4AD312
   B4AD313
   B4AD315A
   B4AD316A
   B4AD317
   B4AD318
   B4AD319
   B4AD320
   B4AD41
   B4AD43
   B4AD46
   B4AD46M
   B4AD47
   B4AD47M
   B4AD48A
   B4AD410
   B4AD412
   B4AD413
   B4AD415A
   B4AD416A
   B4AD417
   B4AD418
   B4AD419
   B4AD420
   B4AD51
   B4AD53
   B4AD56
   B4AD56M
   B4AD57
   B4AD57M
   B4AD58A
   B4AD510
   B4AD512
   B4AD513
   B4AD515A
   B4AD516A
   B4AD517
   B4AD518
   B4AD519
   B4AD520
   B4AD61
   B4AD63
   B4AD66
   B4AD66M
   B4AD67
   B4AD67M
   B4AD68A
   B4AD610
   B4AD612
   B4AD613
   B4AD615A
   B4AD616A
   B4AD617
   B4AD618
   B4AD619
   B4AD620
   B4AD71
   B4AD73
   B4AD76
   B4AD76M
   B4AD77
   B4AD77M
   B4AD78A
   B4AD710
   B4AD712
   B4AD713
   B4AD715A
   B4AD716A
   B4AD717
   B4AD718
   B4AD719
   B4AD720
   B4WR1SDY
   B4WR1EDY
   B4WS1SDY
   B4WS1EDY
   B4WA1SDY
   B4WA1EDY
   B4WR2SDY
   B4WR2EDY
   B4WS2SDY
   B4WS2EDY
   B4WA2SDY
   B4WA2EDY
   B4WR3SDY
   B4WR3EDY
   B4WS3SDY
   B4WS3EDY
   B4WA3SDY
   B4WA3EDY
   B4WR4SDY
   B4WR4EDY
   B4WS4SDY
   B4WS4EDY
   B4WA4SDY
   B4WA4EDY
   B4WR5SDY
   B4WR5EDY
   B4WS5SDY
   B4WS5EDY
   B4WA5SDY
   B4WA5EDY
   B4WR6SDY
   B4WR6EDY
   B4WS6SDY
   B4WS6EDY
   B4WA6SDY
   B4WA6EDY
   B4WR7SDY
   B4WR7EDY
   B4WS7SDY
   B4WS7EDY
   B4VHAWR
   B4VHADW
   B4VHATH
   B4VHASC
   B4VHATO
   B4VHAKN
   B4VHASP
   B4VHABR
   B4VHASM
   B4VHAOB
   B4VHAKI
   B4VHAOE
   B4VHADZ
   B4VCLB
   B4VCLBT
   B4VCIRC
   B4VLC
   B4VTASK1
   B4VCS1
   B4VTASK2
   B4VCS2
   B4ZPPHYS
   B4ZPHYSD
   B4VTERM
   B4VPACEM
   B4VPPSR
   B4VBEQ
   B4VBEQR
   B4VMEQ
   B4VMEQR
   B4VPEQ
   B4VPEQR
   B4VSEQ
   B4VSEQR
   B4VR1EQ
   B4VR1EQR
   B4VR2EQ
   B4VR2EQR
   B4VUEQ
   B4VUEQR
    (nominal).

VARIABLE LEVEL
   B4VPPSS
    (ordinal).

* Create SPSS system file.

*SAVE OUTFILE="spss-filename.sav".
