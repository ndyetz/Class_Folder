*-------------------------------------------------------------------------*
*                                                                          
*                     SPSS SETUP FILE FOR ICPSR 04652
*       NATIONAL SURVEY OF MIDLIFE DEVELOPMENT IN THE UNITED STATES
*                          (MIDUS II), 2004-2006
*                   (DATASET 0001: M2_P1_AGGREGATE DATA)
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
*  data file is physically located (e.g., "c:\temp\04652-0001-data.txt").
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
*  will be saved (e.g., SAVE OUTFILE="c:\spsswin\data\da04652-0001.sav").
*
*-------------------------------------------------------------------------.

* SPSS FILE HANDLE AND DATA LIST COMMANDS.

FILE HANDLE DATA / NAME="data-filename" LRECL=4335.
DATA LIST FILE=DATA /
                M2ID 1-5           M2FAMNUM 6-11
             SAMPLMAJ 12          B1STATUS 13-20         B1PAGE_M2 21-25
          B1PBYEAR 26-33              B1PRSEX 34                B1PA1 35
                B1PA2 36                B1PA3 37             B1PA4 38-39
               B1PA4A 40           B1PA4BA 41-42           B1PA4BB 43-44
           B1PA4BC 45-46             B1PA5 47-48               B1PA5A 49
           B1PA5BA 50-51           B1PA5BB 52-53           B1PA5BC 54-55
               B1PA6A 56               B1PA6B 57               B1PA6C 58
               B1PA6D 59                B1PA7 60            B1PA7A 61-62
           B1PA7BA 63-64           B1PA7BB 65-66           B1PA7BC 67-68
           B1PA7BD 69-70           B1PA7BE 71-72           B1PA7BF 73-74
           B1PA7BG 75-76           B1PA7BH 77-78           B1PA7BI 79-80
           B1PA7BJ 81-82               B1PA7C 83               B1PA7D 84
                B1PA8 85            B1PA8A 86-89                B1PA9 90
               B1PA9A 91               B1PA9B 92              B1PA10A 93
              B1PA10B 94              B1PA10C 95              B1PA10D 96
              B1PA10E 97              B1PA10F 98              B1PA10G 99
             B1PA10H 100              B1PA11 101              B1PA12 102
              B1PA13 103              B1PA14 104              B1PA15 105
              B1PA16 106              B1PA17 107              B1PA18 108
              B1PA19 109              B1PA20 110              B1PA21 111
              B1PA22 112              B1PA23 113         B1PA23A 114-115
             B1PA23B 116        B1PA23CA 117-118        B1PA23CB 119-120
        B1PA23CC 121-122        B1PA23CD 123-124        B1PA23CE 125-126
        B1PA23CF 127-128        B1PA23CG 129-130        B1PA23CH 131-132
        B1PA23CI 133-134        B1PA23CJ 135-136              B1PA24 137
         B1PA24A 138-139             B1PA24B 140             B1PA24C 141
             B1PA24D 142            B1PA24EA 143            B1PA24EB 144
            B1PA24EC 145            B1PA24ED 146            B1PA24EE 147
            B1PA24EF 148        B1PA25NM 149-150            B1PA25IN 151
             B1PA25A 152        B1PA25BS 153-155        B1PA25BD 156-158
              B1PA26 159              B1PA27 160             B1PA27A 161
             B1PA27B 162             B1PA28A 163             B1PA28B 164
             B1PA28C 165             B1PA28D 166             B1PA28E 167
             B1PA28F 168             B1PA28G 169             B1PA28H 170
             B1PA28I 171             B1PA28J 172        B1PA28AA 173-174
        B1PA28BB 175-176        B1PA28CC 177-178        B1PA28DD 179-180
        B1PA28EE 181-182        B1PA28FF 183-184        B1PA28GG 185-186
        B1PA28HH 187-188        B1PA28II 189-190        B1PA28JJ 191-192
              B1PA29 193            B1PA29AA 194            B1PA29AB 195
            B1PA29AC 196            B1PA29AD 197            B1PA29AE 198
            B1PA29AF 199            B1PA29AG 200            B1PA29AH 201
            B1PA29AI 202             B1PA30A 203             B1PA30B 204
             B1PA30C 205             B1PA30D 206             B1PA30E 207
             B1PA30F 208             B1PA31A 209             B1PA31B 210
             B1PA31C 211             B1PA31D 212             B1PA31E 213
             B1PA31F 214             B1PA31H 215             B1PA31I 216
             B1PA31J 217             B1PA32A 218             B1PA32C 219
             B1PA32D 220             B1PA32E 221             B1PA32G 222
             B1PA32H 223             B1PA32J 224             B1PA33A 225
             B1PA33C 226             B1PA33D 227             B1PA33E 228
             B1PA33G 229             B1PA33H 230             B1PA33J 231
             B1PA34A 232             B1PA34B 233             B1PA34C 234
             B1PA34D 235             B1PA34E 236             B1PA34F 237
             B1PA34H 238             B1PA34I 239             B1PA34J 240
             B1PA35A 241             B1PA35B 242             B1PA35C 243
             B1PA35D 244             B1PA35E 245             B1PA35F 246
             B1PA35G 247             B1PA35H 248             B1PA35I 249
             B1PA35J 250             B1PA36A 251        B1PA36AM 252-253
        B1PA36AY 254-257             B1PA36B 258             B1PA36C 259
        B1PA36DM 260-261        B1PA36DY 262-265        B1PA36EM 266-267
        B1PA36EY 268-271          B1PA37 272-273             B1PA38A 274
         B1PA38B 275-276              B1PA39 277          B1PA40 278-279
              B1PA41 280          B1PA42 281-282          B1PA43 283-284
              B1PA44 285             B1PA45A 286             B1PA45B 287
             B1PA45C 288              B1PA46 289              B1PA47 290
              B1PA48 291          B1PA49 292-293              B1PA50 294
              B1PA51 295             B1PA51A 296          B1PA52 297-298
          B1PA53 299-300              B1PA54 301             B1PA54A 302
      B1PA55 303-307 (1)          B1PA56 308-309          B1PA57 310-311
              B1PA58 312              B1PA59 313              B1PA60 314
              B1PA61 315              B1PA62 316              B1PA63 317
              B1PA64 318              B1PA65 319             B1PA65A 320
              B1PA66 321             B1PA66A 322              B1PA67 323
              B1PA68 324              B1PA69 325          B1PA70 326-327
        B1PA71MO 328-329        B1PA71YR 330-333            B1PDEPAF 334
            B1PDEPAD 335              B1PA72 336              B1PA73 337
              B1PA74 338              B1PA75 339              B1PA76 340
             B1PA76A 341              B1PA77 342             B1PA77A 343
              B1PA78 344              B1PA79 345              B1PA80 346
          B1PA81 347-348        B1PA82MO 349-350        B1PA82YR 351-354
            B1PANHED 355            B1PANHDX 356        B1PDEPRE 357-358
            B1PDEPDX 359              B1PA83 360             B1PA83A 361
              B1PA84 362             B1PA84A 363              B1PA85 364
             B1PA85A 365              B1PA86 366             B1PA86A 367
              B1PA87 368             B1PA87A 369             B1PA88A 370
             B1PA88B 371             B1PA88C 372             B1PA88D 373
             B1PA88E 374             B1PA88F 375             B1PA88G 376
             B1PA88H 377             B1PA88I 378             B1PA88J 379
              B1PA89 380        B1PANXIE 381-382            B1PANXTD 383
              B1PA90 384             B1PA90A 385          B1PA91 386-388
              B1PA92 389             B1PA92A 390             B1PA92B 391
             B1PA92C 392             B1PA92D 393             B1PA92E 394
             B1PA92F 395            B1PPANIC 396            B1PPANDX 397
           B1PB1 398-399           B1PB2 400-401              B1PB3A 402
              B1PB3B 403              B1PB3C 404              B1PB3D 405
              B1PB3E 406              B1PB3F 407              B1PB3G 408
              B1PB3H 409              B1PB3I 410              B1PB3J 411
              B1PB3K 412        B1PBWORK 413-414          B1PB4N 415-417
              B1PB4M 418           B1PB5 419-420               B1PB6 421
               B1PB7 422          B1PB7A 423-425               B1PB8 426
          B1POCC 427-437          B1PIND 438-448     B1PTEDU 449-454 (2)
    B1PTEARN 455-460 (2)     B1PTSEI 461-466 (2)     B1PMEDU 467-472 (2)
    B1PMEARN 473-478 (2)     B1PMSEI 479-484 (2)     B1PFEDU 485-490 (2)
    B1PFEARN 491-496 (2)     B1PFSEI 497-502 (2)        B1POCMAJ 503-510
        B1PINDMJ 511-518          B1PB12 519-521         B1PB12A 522-524
          B1PB13 525-527              B1PB14 528         B1PB14A 529-531
              B1PB15 532         B1POCCP 533-543         B1PINDP 544-554
    B1PTEDUP 555-560 (2)    B1PTEARP 561-566 (2)    B1PTSEIP 567-572 (2)
    B1PMEDUP 573-578 (2)    B1PMEARP 579-584 (2)    B1PMSEIP 585-590 (2)
    B1PFEDUP 591-596 (2)    B1PFEARP 597-602 (2)    B1PFSEIP 603-608 (2)
        B1POCPMJ 609-616        B1PPINMJ 617-624              B1PB19 625
          B1PB20 626-627         B1PB21M 628-629         B1PB21Y 630-633
              B1PB22 634         B1PB23M 635-636         B1PB23Y 637-640
         B1PB24M 641-642         B1PB24Y 643-646         B1PB25M 647-648
         B1PB25Y 649-652         B1PB26M 653-654         B1PB26Y 655-658
         B1PB27M 659-660         B1PB27Y 661-664         B1PB28M 665-666
         B1PB28Y 667-670         B1PB29M 671-672         B1PB29Y 673-676
              B1PB30 677         B1PB31N 678-680             B1PB31M 681
         B1PB32Y 682-685         B1PSAGE 686-691          B1PB33 692-693
             B1PB34A 694             B1PB34B 695             B1PB34C 696
             B1PB34D 697             B1PB34E 698             B1PB34F 699
             B1PB34G 700             B1PB34H 701             B1PB34I 702
             B1PB34J 703             B1PB34K 704        B1PB34WK 705-706
         B1PB35N 707-709         B1PB35M 710-712          B1PB36 713-714
              B1PB37 715              B1PB38 716              B1PB39 717
         B1POCCS 718-728         B1PINDS 729-739    B1PTEDUS 740-745 (2)
    B1PTEARS 746-751 (2)    B1PTSEIS 752-757 (2)    B1PMEDUS 758-763 (2)
    B1PMEARS 764-769 (2)    B1PMSEIS 770-775 (2)    B1PFEDUS 776-781 (2)
    B1PFEARS 782-787 (2)    B1PFSEIS 788-793 (2)        B1PSOCMJ 794-801
        B1PSINMJ 802-809               B1PC1 810           B1PC2 811-812
               B1PC3 813           B1PC4 814-815         B1PCHA1 816-818
             B1PCHX1 819         B1PCHR1 820-821         B1PCMB1 822-823
         B1PCYB1 824-827         B1PHHA1 828-830             B1PCHC1 831
             B1PCHH1 832             B1PCDD1 833         B1PCDT1 834-836
             B1PCDP1 837         B1PCDA1 838-839             B1PCDX1 840
             B1PCXT1 841             B1PCDO1 842         B1PCHA2 843-845
             B1PCHX2 846         B1PCHR2 847-848         B1PCMB2 849-850
         B1PCYB2 851-854         B1PHHA2 855-857             B1PCHC2 858
             B1PCHH2 859             B1PCDD2 860         B1PCDT2 861-863
             B1PCDP2 864         B1PCDA2 865-866             B1PCDX2 867
             B1PCXT2 868             B1PCDO2 869         B1PCHA3 870-872
             B1PCHX3 873         B1PCHR3 874-875         B1PCMB3 876-877
         B1PCYB3 878-881         B1PHHA3 882-884             B1PCHC3 885
             B1PCHH3 886             B1PCDD3 887         B1PCDT3 888-890
             B1PCDP3 891         B1PCDA3 892-893             B1PCDX3 894
             B1PCXT3 895             B1PCDO3 896         B1PCHA4 897-899
             B1PCHX4 900         B1PCHR4 901-902         B1PCMB4 903-904
         B1PCYB4 905-908         B1PHHA4 909-911             B1PCHC4 912
             B1PCHH4 913             B1PCDD4 914         B1PCDT4 915-917
             B1PCDP4 918         B1PCDA4 919-920             B1PCDX4 921
             B1PCXT4 922             B1PCDO4 923         B1PCHA5 924-926
             B1PCHX5 927         B1PCHR5 928-929         B1PCMB5 930-931
         B1PCYB5 932-935         B1PHHA5 936-938             B1PCHC5 939
             B1PCHH5 940             B1PCDD5 941         B1PCDT5 942-944
             B1PCDP5 945         B1PCDA5 946-947             B1PCDX5 948
             B1PCXT5 949             B1PCDO5 950         B1PCHA6 951-953
             B1PCHX6 954         B1PCHR6 955-956         B1PCMB6 957-958
         B1PCYB6 959-962         B1PHHA6 963-965             B1PCHC6 966
             B1PCHH6 967             B1PCDD6 968         B1PCDT6 969-971
             B1PCDP6 972         B1PCDA6 973-974             B1PCDX6 975
             B1PCXT6 976             B1PCDO6 977         B1PCHA7 978-980
             B1PCHX7 981         B1PCHR7 982-983         B1PCMB7 984-985
         B1PCYB7 986-989         B1PHHA7 990-992             B1PCHC7 993
             B1PCHH7 994             B1PCDD7 995         B1PCDT7 996-998
             B1PCDP7 999       B1PCDA7 1000-1001            B1PCDX7 1002
            B1PCXT7 1003            B1PCDO7 1004       B1PCHA8 1005-1007
            B1PCHX8 1008       B1PCHR8 1009-1010       B1PCMB8 1011-1012
       B1PCYB8 1013-1016       B1PHHA8 1017-1019            B1PCHC8 1020
            B1PCHH8 1021            B1PCDD8 1022       B1PCDT8 1023-1025
            B1PCDP8 1026       B1PCDA8 1027-1028            B1PCDX8 1029
            B1PCXT8 1030            B1PCDO8 1031       B1PCHA9 1032-1034
            B1PCHX9 1035       B1PCHR9 1036-1037       B1PCMB9 1038-1039
       B1PCYB9 1040-1043       B1PHHA9 1044-1046            B1PCHC9 1047
            B1PCHH9 1048            B1PCDD9 1049       B1PCDT9 1050-1052
            B1PCDP9 1053       B1PCDA9 1054-1055            B1PCDX9 1056
            B1PCXT9 1057            B1PCDO9 1058      B1PCHA10 1059-1061
           B1PCHX10 1062      B1PCHR10 1063-1064      B1PCMB10 1065-1066
      B1PCYB10 1067-1070      B1PHHA10 1071-1073           B1PCHC10 1074
           B1PCHH10 1075           B1PCDD10 1076      B1PCDT10 1077-1079
           B1PCDP10 1080      B1PCDA10 1081-1082           B1PCDX10 1083
           B1PCXT10 1084           B1PCDO10 1085      B1PCHA11 1086-1088
           B1PCHX11 1089      B1PCHR11 1090-1091      B1PCMB11 1092-1093
      B1PCYB11 1094-1097      B1PHHA11 1098-1100           B1PCHC11 1101
           B1PCHH11 1102           B1PCDD11 1103      B1PCDT11 1104-1106
           B1PCDP11 1107      B1PCDA11 1108-1109           B1PCDX11 1110
           B1PCXT11 1111           B1PCDO11 1112      B1PCHA12 1113-1115
           B1PCHX12 1116      B1PCHR12 1117-1118      B1PCMB12 1119-1120
      B1PCYB12 1121-1124      B1PHHA12 1125-1127           B1PCHC12 1128
           B1PCHH12 1129           B1PCDD12 1130      B1PCDT12 1131-1133
           B1PCDP12 1134      B1PCDA12 1135-1136           B1PCDX12 1137
           B1PCXT12 1138           B1PCDO12 1139      B1PCHA13 1140-1142
           B1PCHX13 1143      B1PCHR13 1144-1145      B1PCMB13 1146-1147
      B1PCYB13 1148-1151      B1PHHA13 1152-1154           B1PCHC13 1155
           B1PCHH13 1156           B1PCDD13 1157      B1PCDT13 1158-1160
           B1PCDP13 1161      B1PCDA13 1162-1163           B1PCDX13 1164
           B1PCXT13 1165           B1PCDO13 1166      B1PCHA14 1167-1169
           B1PCHX14 1170      B1PCHR14 1171-1172      B1PCMB14 1173-1174
      B1PCYB14 1175-1178      B1PHHA14 1179-1181           B1PCHC14 1182
           B1PCHH14 1183           B1PCDD14 1184      B1PCDT14 1185-1187
           B1PCDP14 1188      B1PCDA14 1189-1190           B1PCDX14 1191
           B1PCXT14 1192           B1PCDO14 1193      B1PCHA15 1194-1196
           B1PCHX15 1197      B1PCHR15 1198-1199      B1PCMB15 1200-1201
      B1PCYB15 1202-1205      B1PHHA15 1206-1208           B1PCHC15 1209
           B1PCHH15 1210           B1PCDD15 1211      B1PCDT15 1212-1214
           B1PCDP15 1215      B1PCDA15 1216-1217           B1PCDX15 1218
           B1PCXT15 1219           B1PCDO15 1220      B1PCHA16 1221-1223
           B1PCHX16 1224      B1PCHR16 1225-1226      B1PCMB16 1227-1228
      B1PCYB16 1229-1232      B1PHHA16 1233-1235           B1PCHC16 1236
           B1PCHH16 1237           B1PCDD16 1238      B1PCDT16 1239-1241
           B1PCDP16 1242      B1PCDA16 1243-1244           B1PCDX16 1245
           B1PCXT16 1246           B1PCDO16 1247      B1PCHA17 1248-1250
           B1PCHX17 1251      B1PCHR17 1252-1253      B1PCMB17 1254-1255
      B1PCYB17 1256-1259      B1PHHA17 1260-1262           B1PCHC17 1263
           B1PCHH17 1264           B1PCDD17 1265      B1PCDT17 1266-1268
           B1PCDP17 1269      B1PCDA17 1270-1271           B1PCDX17 1272
           B1PCXT17 1273           B1PCDO17 1274      B1PCHA18 1275-1277
           B1PCHX18 1278      B1PCHR18 1279-1280      B1PCMB18 1281-1282
      B1PCYB18 1283-1286      B1PHHA18 1287-1289           B1PCHC18 1290
           B1PCHH18 1291           B1PCDD18 1292      B1PCDT18 1293-1295
           B1PCDP18 1296      B1PCDA18 1297-1298           B1PCDX18 1299
           B1PCXT18 1300           B1PCDO18 1301      B1PCHA19 1302-1304
           B1PCHX19 1305      B1PCHR19 1306-1307      B1PCMB19 1308-1309
      B1PCYB19 1310-1313      B1PHHA19 1314-1316           B1PCHC19 1317
           B1PCHH19 1318           B1PCDD19 1319      B1PCDT19 1320-1322
           B1PCDP19 1323      B1PCDA19 1324-1325           B1PCDX19 1326
           B1PCXT19 1327           B1PCDO19 1328      B1PCHA20 1329-1331
           B1PCHX20 1332      B1PCHR20 1333-1334      B1PCMB20 1335-1336
      B1PCYB20 1337-1340      B1PHHA20 1341-1343           B1PCHC20 1344
           B1PCHH20 1345           B1PCDD20 1346      B1PCDT20 1347-1349
           B1PCDP20 1350      B1PCDA20 1351-1352           B1PCDX20 1353
           B1PCXT20 1354           B1PCDO20 1355      B1PCHA21 1356-1358
           B1PCHX21 1359      B1PCHR21 1360-1361      B1PCMB21 1362-1363
      B1PCYB21 1364-1367      B1PHHA21 1368-1370           B1PCHC21 1371
           B1PCHH21 1372           B1PCDD21 1373      B1PCDT21 1374-1376
           B1PCDP21 1377      B1PCDA21 1378-1379           B1PCDX21 1380
           B1PCXT21 1381           B1PCDO21 1382         B1PC5 1383-1385
      B1PKHSIZ 1386-1387              B1PC6 1388      B1PCHM1N 1389-1390
      B1PCHM2N 1391-1392           B1PCHM1X 1393           B1PCHM2X 1394
            B1PDCSX 1395              B1PD1 1396         B1PD2 1397-1398
              B1PD3 1399              B1PD4 1400        B1PD5M 1401-1402
        B1PD5Y 1403-1406              B1PD7 1407             B1PD8A 1408
             B1PD8B 1409              B1PD9 1410             B1PD10 1411
             B1PD11 1412             B1PD12 1413             B1PD13 1414
        B1PD14 1415-1416        B1PD15 1417-1418             B1PD16 1419
             B1PD17 1420        B1PD18 1421-1423       B1PD19N 1424-1425
            B1PD19M 1426             B1PD20 1427             B1PD21 1428
        B1PD22 1429-1430              B1PE1 1431            B1PE1A1 1432
            B1PE1A2 1433            B1PE1A3 1434            B1PE1A4 1435
            B1PE1A5 1436            B1PE1A6 1437            B1PE1A7 1438
       B1PE1BN 1439-1441            B1PE1BM 1442              B1PE2 1443
       B1PE2AN 1444-1446       B1PE2AM 1447-1448              B1PE3 1449
       B1PE3AN 1450-1452            B1PE3AM 1453         B1PF1 1454-1455
        B1PF2A 1456-1457        B1PF2B 1458-1459        B1PF2C 1460-1461
            B1PF2_1 1462            B1PF2_3 1463            B1PF2_4 1464
            B1PF2_5 1465            B1PF2_6 1466            B1PF2_7 1467
            B1PF2_9 1468           B1PF2_10 1469           B1PF2_11 1470
           B1PF2_12 1471           B1PF2_13 1472           B1PF2_14 1473
           B1PF2_15 1474           B1PF2_17 1475           B1PF2_18 1476
           B1PF2_22 1477           B1PF2_24 1478           B1PF2_30 1479
           B1PF2_31 1480           B1PF2_32 1481           B1PF2_33 1482
           B1PF2_34 1483           B1PF2_35 1484           B1PF2_36 1485
           B1PF2_37 1486           B1PF2_38 1487           B1PF2_39 1488
           B1PF2_40 1489           B1PF2_41 1490           B1PF2_42 1491
           B1PF2_43 1492           B1PF2_44 1493           B1PF2_45 1494
           B1PF2_46 1495           B1PF2_47 1496           B1PF2_48 1497
           B1PF2_50 1498           B1PF2_51 1499           B1PF2_52 1500
           B1PF2_53 1501           B1PF2_54 1502           B1PF2_56 1503
           B1PF2_57 1504           B1PF2_58 1505           B1PF2_66 1506
           B1PF2_69 1507           B1PF2_70 1508           B1PF2_71 1509
           B1PF2_74 1510           B1PF2_96 1511              B1PF3 1512
       B1PF3_1 1513-1514              B1PF4 1515              B1PF5 1516
              B1PF6 1517             B1PF7A 1518             B1PF7B 1519
             B1PF7C 1520             B1PF7D 1521             B1PF8A 1522
             B1PF8B 1523            B1PF8_A 1524              B1PF9 1525
             B1PF10 1526             B1PF11 1527             B1PF12 1528
            B1PF12A 1529            B1PF12B 1530              B1PG1 1531
              B1PG2 1532              B1PG3 1533              B1PG4 1534
              B1PG5 1535             B1PG5A 1536              B1PG6 1537
              B1PG7 1538              B1PG8 1539              B1PG9 1540
  B1PIDATE 1541-1551 (A)         B1SA1 1552-1553         B1SA2 1554-1555
         B1SA3 1556-1557         B1SA4 1558-1559         B1SA5 1560-1561
  B1SSATIS 1562-1567 (3) B1SSATIS2 1568-1573 (3)             B1SA6A 1574
             B1SA6B 1575             B1SA6C 1576             B1SA6D 1577
             B1SA6E 1578             B1SA7A 1579             B1SA7B 1580
             B1SA7C 1581             B1SA7D 1582             B1SA8A 1583
             B1SA8B 1584             B1SA8C 1585             B1SA8D 1586
             B1SA8E 1587             B1SA8F 1588  B1SHLOCS 1589-1593 (3)
  B1SHLOCO 1594-1597 (2)             B1SA9A 1598             B1SA9B 1599
             B1SA9C 1600             B1SA9D 1601             B1SA9E 1602
  B1SAMPLI 1603-1607 (3)            B1SA10A 1608            B1SA10B 1609
            B1SA10C 1610            B1SA10D 1611            B1SA10E 1612
            B1SA10F 1613            B1SA10G 1614            B1SA10H 1615
            B1SA10I 1616            B1SA10J 1617            B1SA11A 1618
            B1SA11B 1619            B1SA11C 1620            B1SA11D 1621
            B1SA11E 1622            B1SA11F 1623            B1SA11G 1624
            B1SA11H 1625            B1SA11I 1626            B1SA11J 1627
            B1SA11K 1628            B1SA11L 1629            B1SA11M 1630
            B1SA11N 1631            B1SA11O 1632            B1SA11P 1633
            B1SA11Q 1634            B1SA11R 1635            B1SA11S 1636
            B1SA11T 1637            B1SA11U 1638            B1SA11V 1639
            B1SA11W 1640            B1SA11X 1641            B1SA11Y 1642
            B1SA11Z 1643           B1SA11AA 1644           B1SA11BB 1645
           B1SA11CC 1646           B1SA11DD 1647           B1SCHROX 1648
      B1SCHRON 1649-1650            B1SA12A 1651           B1SA12AY 1652
            B1SA12B 1653           B1SA12BY 1654            B1SA12C 1655
           B1SA12CY 1656            B1SA12D 1657           B1SA12DY 1658
            B1SA12E 1659           B1SA12EY 1660            B1SA12F 1661
           B1SA12FY 1662            B1SA12G 1663           B1SA12GY 1664
            B1SA12H 1665           B1SA12HY 1666            B1SA12I 1667
           B1SA12IY 1668            B1SA12J 1669           B1SA12JY 1670
            B1SA12K 1671           B1SA12KY 1672            B1SA12L 1673
           B1SA12LY 1674           B1SRXMEX 1675      B1SRXMED 1676-1677
            B1SA13A 1678           B1SA13AY 1679            B1SA13B 1680
           B1SA13BY 1681            B1SA13C 1682           B1SA13CY 1683
            B1SA13D 1684           B1SA13DY 1685            B1SA14A 1686
            B1SA14B 1687            B1SA14C 1688            B1SA14D 1689
            B1SA14E 1690            B1SA14F 1691            B1SA14G 1692
            B1SA14H 1693            B1SA14I 1694            B1SA14J 1695
            B1SA14K 1696            B1SA14L 1697            B1SA14M 1698
            B1SA14N 1699            B1SA14O 1700           B1SSPLMX 1701
      B1SSPLMN 1702-1703             B1SA15 1704        B1SA16 1705-1706
        B1SA17 1707-1708        B1SA18 1709-1710        B1SA19 1711-1712
        B1SA20 1713-1714            B1SA21A 1715            B1SA21B 1716
            B1SA21C 1717            B1SA21D 1718            B1SA21E 1719
            B1SA21F 1720            B1SA21G 1721            B1SA21H 1722
            B1SA21I 1723             B1SA22 1724             B1SA23 1725
            B1SA24A 1726            B1SA24B 1727            B1SA24C 1728
            B1SA24D 1729            B1SA24E 1730            B1SA24F 1731
            B1SA24G 1732            B1SA24H 1733            B1SA24I 1734
            B1SA24J 1735            B1SA24K 1736            B1SA24L 1737
            B1SA24M 1738            B1SA24N 1739             B1SA25 1740
  B1SNEGAF 1741-1745 (3)  B1SNEGPA 1746-1750 (3)            B1SA26A 1751
            B1SA26B 1752            B1SA26C 1753            B1SA26D 1754
            B1SA26E 1755            B1SA26F 1756            B1SA26G 1757
            B1SA26H 1758            B1SA26I 1759            B1SA26J 1760
            B1SA26K 1761            B1SA26L 1762            B1SA26M 1763
             B1SA27 1764  B1SPOSAF 1765-1769 (3)  B1SPOSPA 1770-1774 (3)
            B1SA28A 1775            B1SA28B 1776            B1SA28C 1777
            B1SA28D 1778            B1SA28E 1779            B1SA28F 1780
            B1SA28G 1781            B1SA28H 1782            B1SA28I 1783
            B1SA28J 1784  B1SBADL1 1785-1788 (2)  B1SBADL2 1789-1793 (3)
   B1SIADL 1794-1798 (3)            B1SA29A 1799            B1SA29B 1800
            B1SA29C 1801            B1SA29D 1802           B1SDYSPN 1803
            B1SA30A 1804            B1SA30B 1805            B1SA30C 1806
            B1SA30D 1807            B1SA30E 1808            B1SA30F 1809
            B1SA31A 1810            B1SA31B 1811            B1SA31C 1812
            B1SA31D 1813            B1SA31E 1814            B1SA31F 1815
            B1SA32A 1816            B1SA32B 1817            B1SA32C 1818
            B1SA32D 1819            B1SA32E 1820            B1SA32F 1821
            B1SA33A 1822            B1SA33B 1823            B1SA33C 1824
            B1SA33D 1825            B1SA33E 1826            B1SA33F 1827
            B1SA34A 1828            B1SA34B 1829            B1SA34C 1830
            B1SA34D 1831            B1SA34E 1832            B1SA34F 1833
            B1SA34G 1834            B1SA34H 1835            B1SA34I 1836
  B1SINTAG 1837-1841 (3)    B1SA35 1842-1847 (2)    B1SA36 1848-1853 (2)
  B1SWSTHI 1854-1858 (3)       B1SA37A 1859-1860   B1SA37B 1861-1866 (2)
             B1SA38 1867        B1SA39 1868-1870        B1SA40 1871-1873
        B1SA41 1874-1876        B1SA42 1877-1879            B1SA43A 1880
            B1SA43B 1881            B1SA43C 1882    B1SBMI 1883-1888 (3)
             B1SA44 1889        B1SA45 1890-1893        B1SA46 1894-1896
        B1SA47 1897-1899            B1SA48A 1900            B1SA48B 1901
            B1SA48C 1902            B1SA48D 1903            B1SA48E 1904
            B1SA48F 1905            B1SA48G 1906            B1SA48H 1907
        B1SA49 1908-1909            B1SA50A 1910            B1SA50B 1911
            B1SA50C 1912            B1SA50D 1913            B1SA50E 1914
            B1SA50F 1915            B1SA50G 1916            B1SA50H 1917
        B1SA51 1918-1919             B1SA52 1920       B1SA53A 1921-1923
       B1SA53B 1924-1926       B1SA53C 1927-1929       B1SA53D 1930-1932
       B1SA53E 1933-1935      B1SUSEMD 1936-1938       B1SA54A 1939-1941
       B1SA54B 1942-1944       B1SA54C 1945-1947       B1SA54D 1948-1950
      B1SUSEMH 1951-1953            B1SA55A 1954      B1SA55AY 1955-1957
      B1SA55AZ 1958-1960            B1SA55B 1961      B1SA55BY 1962-1964
      B1SA55BZ 1965-1967            B1SA55C 1968      B1SA55CY 1969-1971
      B1SA55CZ 1972-1974            B1SA55D 1975      B1SA55DY 1976-1978
      B1SA55DZ 1979-1981            B1SA55E 1982      B1SA55EY 1983-1985
      B1SA55EZ 1986-1988            B1SA55F 1989      B1SA55FY 1990-1992
      B1SA55FZ 1993-1995            B1SA55G 1996      B1SA55GY 1997-1999
      B1SA55GZ 2000-2002            B1SA55H 2003      B1SA55HY 2004-2006
      B1SA55HZ 2007-2009            B1SA55I 2010      B1SA55IY 2011-2013
      B1SA55IZ 2014-2016            B1SA55J 2017      B1SA55JY 2018-2020
      B1SA55JZ 2021-2023            B1SA55K 2024      B1SA55KY 2025-2027
      B1SA55KZ 2028-2030       B1SA56A 2031-2032       B1SA56B 2033-2034
       B1SA56C 2035-2036       B1SA56D 2037-2038       B1SA56E 2039-2040
       B1SA56F 2041-2042       B1SA56G 2043-2044       B1SA56H 2045-2046
       B1SA56I 2047-2048       B1SA56J 2049-2050       B1SA56K 2051-2052
       B1SA56L 2053-2054       B1SA56M 2055-2056       B1SA56N 2057-2058
       B1SA56O 2059-2060       B1SA56P 2061-2062       B1SA56Q 2063-2064
       B1SA56R 2065-2066       B1SA56S 2067-2068       B1SA57A 2069-2070
       B1SA57B 2071-2072       B1SA58A 2073-2074       B1SA58B 2075-2076
       B1SA59A 2077-2078       B1SA59B 2079-2080        B1SA60 2081-2083
       B1SA61A 2084-2085       B1SA61B 2086-2087       B1SA61C 2088-2089
       B1SA61D 2090-2091       B1SA62A 2092-2093       B1SA62B 2094-2095
       B1SA62C 2096-2097       B1SA62D 2098-2099       B1SA62E 2100-2101
       B1SA62F 2102-2103       B1SA62G 2104-2105       B1SA62H 2106-2107
       B1SA62I 2108-2109       B1SA62J 2110-2111        B1SA63 2112-2113
        B1SA64 2114-2115       B1SA65A 2116-2117       B1SA65B 2118-2119
       B1SA65C 2120-2121       B1SA65D 2122-2123       B1SA65E 2124-2125
       B1SA66A 2126-2127       B1SA66B 2128-2129       B1SA66C 2130-2131
       B1SA66D 2132-2133           B1SALCOH 2134        B1SA67 2135-2136
        B1SA68 2137-2138              B1SB1 2139             B1SB2A 2140
             B1SB2B 2141             B1SB2C 2142             B1SB2D 2143
             B1SB2E 2144         B1SB3 2145-2148              B1SB4 2149
        B1SB5A 2150-2151        B1SB5B 2152-2153        B1SB5C 2154-2157
              B1SB6 2158              B1SB7 2159            B1SB8A1 2160
            B1SB8A2 2161            B1SB8A3 2162       B1SB8A4 2163-2165
            B1SB8B1 2166            B1SB8B2 2167            B1SB8B3 2168
       B1SB8B4 2169-2171            B1SB8C1 2172            B1SB8C2 2173
            B1SB8C3 2174       B1SB8C4 2175-2177              B1SB9 2178
             B1SB10 2179            B1SB11A 2180            B1SB11B 2181
            B1SB11C 2182            B1SB11D 2183            B1SB11E 2184
            B1SB11F 2185            B1SB11G 2186            B1SB11H 2187
            B1SB11I 2188       B1SB12A 2189-2190       B1SB12B 2191-2194
       B1SB13A 2195-2196       B1SB13B 2197-2200            B1SB14A 2201
            B1SB14B 2202            B1SB14C 2203            B1SB14D 2204
             B1SB15 2205             B1SB16 2206            B1SB17A 2207
            B1SB17B 2208            B1SB17C 2209            B1SB17D 2210
            B1SB17E 2211            B1SB17F 2212            B1SB17G 2213
             B1SB18 2214            B1SB19A 2215            B1SB19B 2216
            B1SB19C 2217              B1SC1 2218             B1SC2A 2219
             B1SC2B 2220             B1SC2C 2221             B1SC2D 2222
             B1SC2E 2223             B1SC2F 2224             B1SC2G 2225
             B1SC2H 2226             B1SC2I 2227             B1SC2J 2228
             B1SC2K 2229             B1SC2L 2230             B1SC3A 2231
             B1SC3B 2232             B1SC3C 2233             B1SC3D 2234
             B1SC3E 2235             B1SC3F 2236             B1SC3G 2237
             B1SC3H 2238              B1SC4 2239              B1SC5 2240
              B1SC6 2241             B1SC7A 2242             B1SC7B 2243
             B1SC7C 2244             B1SC7D 2245             B1SC8A 2246
             B1SC8B 2247             B1SC8C 2248             B1SC9A 2249
             B1SC9B 2250             B1SC9C 2251             B1SC9D 2252
             B1SC9E 2253             B1SC9F 2254             B1SC9G 2255
             B1SC9H 2256             B1SC10 2257             B1SC11 2258
             B1SC12 2259              B1SD1 2260        B1SD1A 2261-2263
             B1SD1B 2264        B1SD1C 2265-2268        B1SD1D 2269-2271
              B1SD2 2272        B1SD2A 2273-2275             B1SD2B 2276
        B1SD2C 2277-2280        B1SD2D 2281-2283             B1SE1A 2284
             B1SE1B 2285             B1SE1C 2286             B1SE1D 2287
             B1SE1E 2288             B1SE1F 2289             B1SE1G 2290
             B1SE1H 2291             B1SE1I 2292             B1SE1J 2293
             B1SE1K 2294             B1SE1L 2295             B1SE1M 2296
             B1SE1N 2297             B1SE1O 2298             B1SE1P 2299
             B1SE1Q 2300             B1SE1R 2301             B1SE1S 2302
             B1SE1T 2303             B1SE1U 2304             B1SE1V 2305
             B1SE1W 2306             B1SE1X 2307             B1SE1Y 2308
             B1SE1Z 2309            B1SE1AA 2310            B1SE1BB 2311
            B1SE1CC 2312            B1SE1DD 2313            B1SE1EE 2314
            B1SE1FF 2315            B1SE1GG 2316            B1SE1HH 2317
            B1SE1II 2318            B1SE1JJ 2319            B1SE1KK 2320
            B1SE1LL 2321            B1SE1MM 2322            B1SE1NN 2323
            B1SE1OO 2324            B1SE1PP 2325            B1SE1QQ 2326
  B1SPWBA1 2327-2331 (1)  B1SPWBE1 2332-2336 (1)  B1SPWBG1 2337-2341 (1)
  B1SPWBR1 2342-2346 (1)  B1SPWBU1 2347-2351 (1)  B1SPWBS1 2352-2356 (1)
  B1SPWBA2 2357-2362 (3)  B1SPWBE2 2363-2368 (3)  B1SPWBG2 2369-2374 (3)
  B1SPWBR2 2375-2380 (3)  B1SPWBU2 2381-2386 (3)  B1SPWBS2 2387-2392 (3)
             B1SE2A 2393             B1SE2B 2394             B1SE2C 2395
             B1SE2D 2396             B1SE2E 2397             B1SE2F 2398
             B1SE2G 2399             B1SE2H 2400             B1SE2I 2401
             B1SE2J 2402             B1SE2K 2403             B1SE2L 2404
             B1SE2M 2405             B1SE2N 2406             B1SE2O 2407
             B1SE2P 2408             B1SE2Q 2409         B1SE3 2410-2411
             B1SE4A 2412             B1SE4B 2413             B1SE4C 2414
             B1SE4D 2415             B1SE4E 2416             B1SE4F 2417
             B1SE4G 2418             B1SE4H 2419             B1SE4I 2420
             B1SE4J 2421             B1SE4K 2422             B1SE4L 2423
  B1SMASTE 2424-2428 (3)  B1SCONST 2429-2433 (3)   B1SCTRL 2434-2438 (3)
             B1SE4M 2439             B1SE4N 2440             B1SE4O 2441
             B1SE4P 2442             B1SE4Q 2443             B1SE4R 2444
             B1SE4S 2445  B1SESTEE 2446-2451 (3)             B1SE4T 2452
             B1SE4U 2453             B1SE4V 2454             B1SE4W 2455
             B1SE4X 2456             B1SE4Y 2457  B1SINTER 2458-2462 (3)
  B1SINDEP 2463-2467 (3)             B1SE5A 2468             B1SE5B 2469
             B1SE5C 2470             B1SE5D 2471             B1SE5E 2472
             B1SE6A 2473             B1SE6B 2474             B1SE6C 2475
             B1SE6D 2476             B1SE6E 2477             B1SE6F 2478
             B1SE6G 2479             B1SE6H 2480             B1SE6I 2481
             B1SE6J 2482             B1SE6K 2483             B1SE6L 2484
             B1SE6M 2485             B1SE6N 2486             B1SE6O 2487
             B1SE6P 2488             B1SE6Q 2489             B1SE6R 2490
             B1SE6S 2491             B1SE6T 2492             B1SE6U 2493
             B1SE6V 2494             B1SE6W 2495             B1SE6X 2496
             B1SE6Y 2497             B1SE6Z 2498            B1SE6AA 2499
            B1SE6BB 2500            B1SE6CC 2501            B1SE6DD 2502
            B1SE6EE 2503  B1SAGENC 2504-2508 (3)  B1SAGREE 2509-2513 (3)
  B1SEXTRA 2514-2518 (3)  B1SNEURO 2519-2523 (3)  B1SCONS1 2524-2528 (3)
  B1SCONS2 2529-2533 (3)   B1SOPEN 2534-2538 (3)             B1SE7A 2539
             B1SE7B 2540             B1SE7C 2541             B1SE7D 2542
             B1SE7E 2543             B1SE7F 2544             B1SE7G 2545
             B1SE7H 2546             B1SE7I 2547             B1SE7J 2548
             B1SE7K 2549             B1SE7L 2550             B1SE7M 2551
             B1SE7N 2552             B1SE7O 2553             B1SE7P 2554
             B1SE7Q 2555             B1SE7R 2556             B1SE7S 2557
             B1SE7T 2558             B1SE7U 2559             B1SE7V 2560
             B1SE7W 2561             B1SE7X 2562             B1SE7Y 2563
             B1SE7Z 2564            B1SE7AA 2565            B1SE7BB 2566
            B1SE7CC 2567            B1SE7DD 2568            B1SE7EE 2569
            B1SE7FF 2570            B1SE7GG 2571              B1SE8 2572
             B1SE8A 2573              B1SE9 2574             B1SE9A 2575
  B1SMPQWB 2576-2580 (2)  B1SMPQSP 2581-2586 (3)  B1SMPQAC 2587-2592 (3)
  B1SMPQSC 2593-2598 (3)  B1SMPQSR 2599-2603 (2)  B1SMPQAG 2604-2609 (3)
  B1SMPQAL 2610-2614 (2)  B1SMPQCN 2615-2619 (2)  B1SMPQTR 2620-2624 (2)
  B1SMPQHA 2625-2630 (3)            B1SE10A 2631            B1SE10B 2632
            B1SE10C 2633            B1SE10D 2634            B1SE10E 2635
            B1SE10F 2636  B1SOPTIM 2637-2641 (2)  B1SPESSI 2642-2646 (2)
  B1SORIEN 2647-2652 (3)            B1SE11A 2653            B1SE11B 2654
            B1SE11C 2655            B1SE11D 2656            B1SE11E 2657
            B1SE11F 2658            B1SE11G 2659            B1SE11H 2660
            B1SE11I 2661            B1SE11J 2662            B1SE11K 2663
            B1SE11L 2664            B1SE11M 2665            B1SE11N 2666
            B1SE11O 2667            B1SE11P 2668            B1SE11Q 2669
            B1SE11R 2670            B1SE11S 2671            B1SE11T 2672
            B1SE11U 2673            B1SE11V 2674            B1SE11W 2675
            B1SE11X 2676            B1SE11Y 2677            B1SE11Z 2678
           B1SE11AA 2679      B1SE11A1 2680-2682      B1SE11A3 2683-2684
      B1SE11A4 2685-2686      B1SE11B1 2687-2689      B1SE11B3 2690-2691
      B1SE11B4 2692-2693      B1SE11C1 2694-2696      B1SE11C3 2697-2698
      B1SE11C4 2699-2700      B1SE11D1 2701-2703      B1SE11D3 2704-2705
      B1SE11D4 2706-2707      B1SE11E1 2708-2710      B1SE11E3 2711-2712
      B1SE11E4 2713-2714      B1SE11F1 2715-2717      B1SE11F3 2718-2719
      B1SE11F4 2720-2721      B1SE11G1 2722-2724      B1SE11G3 2725-2726
      B1SE11G4 2727-2728      B1SE11H1 2729-2731      B1SE11H3 2732-2733
      B1SE11H4 2734-2735      B1SE11I1 2736-2738      B1SE11I3 2739-2740
      B1SE11I4 2741-2742      B1SE11J1 2743-2745      B1SE11J3 2746-2747
      B1SE11J4 2748-2749      B1SE11K1 2750-2752      B1SE11K3 2753-2754
      B1SE11K4 2755-2756      B1SE11L1 2757-2759      B1SE11L3 2760-2761
      B1SE11L4 2762-2763      B1SE11M1 2764-2766      B1SE11M3 2767-2768
      B1SE11M4 2769-2770      B1SE11N1 2771-2773      B1SE11N3 2774-2775
      B1SE11N4 2776-2777      B1SE11O1 2778-2780      B1SE11O3 2781-2782
      B1SE11O4 2783-2784      B1SE11P1 2785-2787      B1SE11P3 2788-2789
      B1SE11P4 2790-2791      B1SE11Q1 2792-2794      B1SE11Q3 2795-2796
      B1SE11Q4 2797-2798      B1SE11R1 2799-2801      B1SE11R3 2802-2803
      B1SE11R4 2804-2805      B1SE11S1 2806-2808      B1SE11S3 2809-2810
      B1SE11S4 2811-2812      B1SE11T1 2813-2815      B1SE11T3 2816-2817
      B1SE11T4 2818-2819      B1SE11U1 2820-2822      B1SE11U3 2823-2824
      B1SE11U4 2825-2826      B1SE11V1 2827-2829      B1SE11V3 2830-2831
      B1SE11V4 2832-2833      B1SE11W1 2834-2836      B1SE11W3 2837-2838
      B1SE11W4 2839-2840      B1SE11X1 2841-2843      B1SE11X3 2844-2845
      B1SE11X4 2846-2847      B1SE11Y1 2848-2850      B1SE11Y3 2851-2852
      B1SE11Y4 2853-2854      B1SE11Z1 2855-2857      B1SE11Z3 2858-2859
      B1SE11Z4 2860-2861      B1SE11AW 2862-2864      B1SE11AY 2865-2866
      B1SE11AZ 2867-2868            B1SE12A 2869            B1SE12B 2870
            B1SE12C 2871            B1SE12D 2872            B1SE12E 2873
            B1SE12F 2874            B1SE12G 2875            B1SE12H 2876
            B1SE12I 2877            B1SE12J 2878            B1SE12K 2879
            B1SE12L 2880            B1SE12M 2881            B1SE12N 2882
            B1SE12O 2883            B1SE12P 2884            B1SE12Q 2885
            B1SE12R 2886            B1SE12S 2887            B1SE12T 2888
            B1SE12U 2889            B1SE12V 2890            B1SE12W 2891
            B1SE12X 2892            B1SE12Y 2893            B1SE12Z 2894
           B1SE12AA 2895           B1SE12BB 2896           B1SE12CC 2897
           B1SE12DD 2898           B1SE12EE 2899           B1SE12FF 2900
           B1SE12GG 2901           B1SE12HH 2902           B1SE12II 2903
           B1SE12JJ 2904           B1SE12KK 2905           B1SE12LL 2906
           B1SE12MM 2907  B1SPERSI 2908-2912 (3)  B1SREAPP 2913-2917 (3)
  B1SCHANG 2918-2922 (3)  B1SSPCTR 2923-2927 (3)  B1SCPCTR 2928-2932 (3)
  B1SSSCTR 2933-2937 (3)  B1SCSCDE 2938-2942 (3)  B1SCSCSP 2943-2947 (3)
  B1SCSCAG 2948-2952 (3)  B1SDIREC 2953-2957 (3)  B1STODAY 2958-2962 (3)
  B1SINSGH 2963-2966 (2)      B1SFORSG 2967-2974  B1SSUFFI 2975-2978 (2)
            B1SE13A 2979            B1SE13B 2980            B1SE13C 2981
            B1SE13D 2982            B1SE13E 2983            B1SE13F 2984
            B1SE13G 2985            B1SE13H 2986            B1SE13I 2987
            B1SE13J 2988            B1SE13K 2989            B1SE13L 2990
            B1SE13M 2991            B1SE13N 2992            B1SE13O 2993
            B1SE13P 2994            B1SE13Q 2995            B1SE13R 2996
            B1SE13S 2997            B1SE13T 2998            B1SE13U 2999
            B1SE13V 3000            B1SE13W 3001            B1SE13X 3002
            B1SE13Y 3003            B1SE13Z 3004  B1SREINT 3005-3010 (3)
  B1SACTIV 3011-3016 (3)   B1SPLAN 3017-3022 (3)   B1SVENT 3023-3028 (3)
  B1SDENIA 3029-3034 (3)  B1SDISEN 3035-3040 (3)  B1SFDCOP 3041-3044 (2)
  B1SPRCOP 3045-3050 (3)  B1SEMCOP 3051-3056 (3)        B1SE14 3057-3059
        B1SE15 3060-3062        B1SE16 3063-3065        B1SE17 3066-3068
        B1SE18 3069-3071        B1SE19 3072-3074         B1SF1 3075-3076
         B1SF2 3077-3078         B1SF3 3079-3080         B1SF4 3081-3082
         B1SF5 3083-3084         B1SF6 3085-3087         B1SF7 3088-3090
         B1SF8 3091-3093        B1SF9A 3094-3096             B1SF9B 3097
             B1SF10 3098            B1SF11A 3099           B1SF11AS 3100
            B1SF11B 3101           B1SF11BS 3102            B1SF11C 3103
           B1SF11CS 3104            B1SF11D 3105           B1SF11DS 3106
            B1SF11E 3107           B1SF11ES 3108            B1SF11F 3109
           B1SF11FS 3110            B1SF11G 3111           B1SF11GS 3112
            B1SF11H 3113           B1SF11HS 3114            B1SF11I 3115
           B1SF11IS 3116            B1SF11J 3117           B1SF11JS 3118
       B1SF12A 3119-3120       B1SF12B 3121-3122       B1SF12C 3123-3124
       B1SF12D 3125-3126             B1SF13 3127            B1SF14A 3128
            B1SF14B 3129            B1SF14C 3130            B1SF14D 3131
       B1SF15A 3132-3133       B1SF15B 3134-3135            B1SF15C 3136
       B1SF16A 3137-3138       B1SF16B 3139-3140            B1SF16C 3141
       B1SF17A 3142-3143       B1SF17B 3144-3145             B1SF18 3146
             B1SF19 3147             B1SF20 3148             B1SF21 3149
             B1SF22 3150            B1SF23A 3151            B1SF23B 3152
            B1SF23C 3153            B1SF23D 3154            B1SF23E 3155
            B1SF23F 3156            B1SF23G 3157            B1SF23H 3158
            B1SF23I 3159            B1SF23J 3160            B1SF23K 3161
            B1SF23L 3162            B1SF23M 3163            B1SF23N 3164
             B1SF24 3165        B1SF25 3166-3168             B1SF26 3169
            B1SF27A 3170            B1SF27B 3171            B1SF27C 3172
            B1SF27D 3173            B1SF27E 3174            B1SF27F 3175
            B1SF27G 3176            B1SF27H 3177            B1SF27I 3178
            B1SF27J 3179            B1SF27K 3180            B1SF27L 3181
            B1SF27M 3182            B1SF27N 3183            B1SF27O 3184
            B1SF27P 3185  B1SPOSWF 3186-3191 (3)  B1SNEGWF 3192-3197 (3)
  B1SPOSFW 3198-3203 (3)  B1SNEGFW 3204-3209 (3)            B1SF28A 3210
            B1SF28B 3211            B1SF28C 3212            B1SF28D 3213
            B1SF28E 3214            B1SF28F 3215            B1SF28G 3216
            B1SF28H 3217            B1SF28I 3218            B1SF28J 3219
            B1SF28K 3220            B1SF29A 3221            B1SF29B 3222
            B1SF29C 3223            B1SF29D 3224   B1SJCSD 3225-3229 (2)
   B1SJCDA 3230-3235 (3)   B1SJCDS 3236-3241 (3)            B1SF30A 3242
            B1SF30B 3243            B1SF30C 3244            B1SF30D 3245
            B1SF30E 3246   B1SJCCS 3247-3251 (2)   B1SJCSS 3252-3256 (2)
            B1SF31A 3257            B1SF31B 3258            B1SF31C 3259
            B1SF31D 3260            B1SF31E 3261            B1SF31F 3262
  B1SJOBDI 3263-3268 (3)            B1SF32A 3269            B1SF32B 3270
            B1SF32C 3271            B1SF32D 3272            B1SF32E 3273
            B1SF32F 3274  B1SPIWOR 3275-3279 (3)            B1SF33A 3280
            B1SF33B 3281            B1SF33C 3282            B1SF33D 3283
            B1SF34A 3284            B1SF34B 3285            B1SF34C 3286
            B1SF35A 3287            B1SF35B 3288            B1SF35C 3289
         B1SG1 3290-3291         B1SG2 3292-3293         B1SG3 3294-3295
         B1SG4 3296-3297         B1SG5 3298-3299              B1SG6 3300
              B1SG7 3301        B1SG8A 3302-3303        B1SG8B 3304-3305
        B1SG8C 3306-3307        B1SG9A 3308-3309        B1SG9B 3310-3311
        B1SG9C 3312-3313       B1SG10A 3314-3315       B1SG10B 3316-3317
       B1SG10C 3318-3319            B1SG11A 3320            B1SG11B 3321
            B1SG11C 3322            B1SG11D 3323            B1SG11E 3324
            B1SG11F 3325            B1SG11G 3326            B1SG11H 3327
            B1SG11I 3328            B1SG11J 3329        B1SG12 3330-3337
      B1SRINC1 3338-3344      B1SSINC1 3345-3351      B1SHINC1 3352-3358
      B1SEARN1 3359-3365      B1SPNSN1 3366-3372       B1SSEC1 3373-3379
      B1STINC1 3380-3386             B1SG13 3387       B1SG13A 3388-3395
             B1SG14 3396       B1SG14A 3397-3404             B1SG15 3405
       B1SG15A 3406-3413             B1SG16 3414       B1SG16A 3415-3422
             B1SG17 3423       B1SG17A 3424-3433            B1SG17B 3434
             B1SG18 3435       B1SG18A 3436-3445       B1SG18B 3446-3455
             B1SG19 3456       B1SG19A 3457-3466             B1SG20 3467
       B1SG20A 3468-3475             B1SG21 3476       B1SG21A 3477-3480
       B1SG21B 3481-3489             B1SG22 3490       B1SG22A 3491-3499
             B1SG23 3500       B1SG24A 3501-3510            B1SG24B 3511
       B1SG25A 3512-3520       B1SG25B 3521-3529       B1SG25C 3530-3538
       B1SG25D 3539-3547       B1SG25E 3548-3556       B1SG25F 3557-3565
       B1SG25G 3566-3574       B1SG25H 3575-3583       B1SG25I 3584-3592
         B1SH1 3593-3594         B1SH2 3595-3596         B1SH3 3597-3598
         B1SH4 3599-3600         B1SH5 3601-3602             B1SH6A 3603
             B1SH6B 3604             B1SH6C 3605             B1SH6D 3606
             B1SH6E 3607             B1SH6F 3608  B1SGENER 3609-3614 (3)
        B1SH7A 3615-3617        B1SH7B 3618-3620        B1SH7C 3621-3623
        B1SH7D 3624-3626        B1SH8A 3627-3629        B1SH8B 3630-3632
        B1SH8C 3633-3635        B1SH9A 3636-3638        B1SH9B 3639-3641
        B1SH9C 3642-3644        B1SH9D 3645-3647        B1SH9E 3648-3650
        B1SH9F 3651-3653       B1SH10A 3654-3656       B1SH10B 3657-3659
       B1SH10C 3660-3662       B1SH10D 3663-3665       B1SH10E 3666-3668
       B1SH10F 3669-3671       B1SH11A 3672-3674       B1SH11B 3675-3677
       B1SH11C 3678-3680       B1SH11D 3681-3683       B1SH11E 3684-3686
       B1SH12A 3687-3689       B1SH12B 3690-3692       B1SH12C 3693-3695
       B1SH12D 3696-3698       B1SH12E 3699-3701       B1SH12F 3702-3704
       B1SH12G 3705-3707       B1SH12H 3708-3710       B1SH13A 3711-3717
       B1SH13B 3718-3724       B1SH13C 3725-3731       B1SH13D 3732-3738
       B1SH13E 3739-3745       B1SH13F 3746-3752       B1SH13G 3753-3759
       B1SH13H 3760-3766       B1SH14A 3767-3773       B1SH14B 3774-3780
       B1SH14C 3781-3787       B1SH14D 3788-3794       B1SH14E 3795-3801
       B1SH14F 3802-3808       B1SH14G 3809-3815            B1SH15A 3816
            B1SH15B 3817            B1SH15C 3818            B1SH15D 3819
            B1SH16A 3820            B1SH16B 3821            B1SH16C 3822
            B1SH16D 3823            B1SH16E 3824            B1SH16F 3825
            B1SH16G 3826            B1SH16H 3827            B1SH16I 3828
            B1SH16J 3829            B1SH16K 3830            B1SH16L 3831
            B1SH16M 3832            B1SH16N 3833            B1SH16O 3834
  B1SSWBMS 3835-3838 (1)  B1SSWBSI 3839-3842 (1)  B1SSWBAO 3843-3846 (1)
  B1SSWBSC 3847-3850 (1)  B1SSWBSA 3851-3854 (1)            B1SH16P 3855
            B1SH16Q 3856            B1SH16R 3857            B1SH16S 3858
            B1SH16T 3859   B1SSYMP 3860-3864 (3)              B1SI1 3865
              B1SI2 3866         B1SI3 3867-3869         B1SI4 3870-3872
              B1SI5 3873             B1SI6A 3874             B1SI6B 3875
             B1SI6C 3876             B1SI6D 3877             B1SI6E 3878
             B1SI6F 3879             B1SI6G 3880             B1SI6H 3881
             B1SI6I 3882             B1SI6J 3883             B1SI6K 3884
             B1SI6L 3885  B1SHOMET 3886-3890 (3)  B1SPIHOM 3891-3895 (3)
         B1SI7 3896-3897         B1SJ1 3898-3899             B1SJ2A 3900
             B1SJ2B 3901             B1SJ2C 3902             B1SJ2D 3903
             B1SJ2E 3904             B1SJ2F 3905             B1SJ2G 3906
             B1SJ2H 3907             B1SJ2I 3908             B1SJ2J 3909
  B1SKINPO 3910-3914 (3)  B1SKINNE 3915-3919 (3)  B1SFAMSO 3920-3924 (3)
  B1SPKINS 3925-3928 (2)         B1SJ3 3929-3930             B1SJ4A 3931
             B1SJ4B 3932             B1SJ4C 3933             B1SJ4D 3934
             B1SJ4E 3935             B1SJ4F 3936             B1SJ4G 3937
             B1SJ4H 3938  B1SFDSPO 3939-3943 (3)  B1SFDSNE 3944-3948 (3)
  B1SFDSOL 3949-3953 (3)              B1SJ5 3954              B1SJ6 3955
            B1SJ7SA 3956            B1SJ7SB 3957            B1SJ7SC 3958
            B1SJ7SD 3959            B1SJ7SE 3960            B1SJ7SF 3961
            B1SJ7SG 3962            B1SJ7SH 3963            B1SJ7SI 3964
            B1SJ7SJ 3965            B1SJ7PA 3966            B1SJ7PB 3967
            B1SJ7PC 3968            B1SJ7PD 3969            B1SJ7PE 3970
            B1SJ7PF 3971            B1SJ7PG 3972            B1SJ7PH 3973
            B1SJ7PI 3974            B1SJ7PJ 3975            B1SJ7CA 3976
            B1SJ7CB 3977            B1SJ7CC 3978            B1SJ7CD 3979
            B1SJ7CE 3980            B1SJ7CF 3981            B1SJ7CG 3982
            B1SJ7CH 3983            B1SJ7CI 3984            B1SJ7CJ 3985
         B1SK1 3986-3987         B1SK2 3988-3990         B1SK3 3991-3992
         B1SK4 3993-3994         B1SK5 3995-3996             B1SK6A 3997
             B1SK6B 3998             B1SK6C 3999             B1SK6D 4000
             B1SK6E 4001             B1SK6F 4002  B1SPIFAM 4003-4007 (3)
            B1SK7A1 4008            B1SK7A2 4009            B1SK7B1 4010
            B1SK7B2 4011            B1SK7C1 4012            B1SK7C2 4013
            B1SK7D1 4014            B1SK7D2 4015         B1SK8 4016-4017
         B1SK9 4018-4019             B1SK10 4020             B1SK11 4021
         B1SL1 4022-4023         B1SL2 4024-4025         B1SL3 4026-4027
         B1SL4 4028-4029         B1SL5 4030-4031              B1SL6 4032
              B1SL7 4033              B1SL8 4034             B1SL9A 4035
             B1SL9B 4036             B1SL9C 4037  B1SMARRS 4038-4041 (2)
  B1SSPDIS 4042-4046 (2)             B1SL10 4047            B1SL11A 4048
            B1SL11B 4049            B1SL11C 4050            B1SL11D 4051
            B1SL11E 4052            B1SL11F 4053            B1SL11G 4054
            B1SL11H 4055            B1SL11I 4056            B1SL11J 4057
            B1SL11K 4058            B1SL11L 4059  B1SSPEMP 4060-4064 (3)
  B1SSPCRI 4065-4069 (3)  B1SSPSOL 4070-4074 (3)             B1SL12 4075
        B1SL13 4076-4078        B1SL14 4079-4081             B1SL15 4082
             B1SL16 4083            B1SL17A 4084            B1SL17B 4085
            B1SL17C 4086            B1SL17D 4087  B1SSPDEC 4088-4093 (3)
             B1SL18 4094             B1SL19 4095             B1SL20 4096
        B1SL21 4097-4099        B1SL22 4100-4102       B1SL23A 4103-4104
       B1SL23B 4105-4106       B1SL23C 4107-4108       B1SL23D 4109-4110
       B1SL24A 4111-4112       B1SL24B 4113-4114            B1SL24C 4115
       B1SL25A 4116-4117       B1SL25B 4118-4119            B1SL25C 4120
       B1SL26A 4121-4122       B1SL26B 4123-4124             B1SL27 4125
         B1SM1 4126-4127         B1SM2 4128-4129         B1SM3 4130-4131
         B1SM4 4132-4133         B1SM5 4134-4135              B1SM6 4136
              B1SM7 4137              B1SM8 4138              B1SM9 4139
             B1SM10 4140             B1SM11 4141             B1SM12 4142
        B1SN1A 4143-4144        B1SN1B 4145-4146        B1SN1C 4147-4148
            B1SN1AX 4149             B1SN2A 4150             B1SN2B 4151
             B1SN2C 4152             B1SN2D 4153             B1SN2E 4154
             B1SN2F 4155             B1SN2G 4156             B1SN2H 4157
             B1SN2I 4158  B1SSPIRI 4159-4162 (2)  B1SRELID 4163-4168 (3)
             B1SN3A 4169             B1SN3B 4170             B1SN3C 4171
  B1SRELPR 4172-4176 (2)             B1SN3D 4177             B1SN3E 4178
              B1SN4 4179              B1SN5 4180              B1SN6 4181
              B1SN7 4182             B1SN8A 4183             B1SN8B 4184
             B1SN8C 4185             B1SN8D 4186  B1SRELSU 4187-4192 (3)
             B1SN9A 4193             B1SN9B 4194             B1SN9C 4195
             B1SN9D 4196             B1SN9E 4197             B1SN9F 4198
             B1SN9G 4199             B1SN9H 4200  B1SRELCA 4201-4204 (2)
  B1SRELCB 4205-4210 (3)            B1SN10A 4211            B1SN10B 4212
            B1SN10C 4213            B1SN10D 4214            B1SN10E 4215
  B1SSPRTE 4216-4221 (3)            B1SN11A 4222            B1SN11B 4223
            B1SN11C 4224            B1SN11D 4225            B1SN11E 4226
            B1SN11F 4227            B1SN11G 4228            B1SN11H 4229
            B1SN11I 4230  B1SMNDFU 4231-4236 (3)        B1SP1A 4237-4241
        B1SP1B 4242-4246        B1SP1C 4247-4251        B1SP1D 4252-4256
        B1SP1E 4257-4261        B1SP1F 4262-4266        B1SP1G 4267-4271
        B1SP1H 4272-4276        B1SP1I 4277-4281        B1SP1J 4282-4286
        B1SP1K 4287-4291  B1SLFEDI 4292-4296 (2)             B1SP2A 4297
             B1SP2B 4298             B1SP2C 4299             B1SP2D 4300
             B1SP2E 4301             B1SP2F 4302             B1SP2G 4303
             B1SP2H 4304             B1SP2I 4305  B1SDAYDI 4306-4311 (3)
             B1SP3A 4312             B1SP3B 4313             B1SP3C 4314
             B1SP3D 4315             B1SP3E 4316             B1SP3F 4317
             B1SP3G 4318             B1SP3H 4319             B1SP3I 4320
             B1SP3J 4321              B1SP4 4322              B1SP5 4323
         B1SQ1 4324-4325         B1SQ2 4326-4327         B1SQ3 4328-4329
         B1SQ4 4330-4331         B1SQ5 4332-4333         B1SQ6 4334-4335

   .

* SPSS VARIABLE LABELS COMMAND.

VARIABLE LABELS
   M2ID      'MIDUS 2 ID number' /
   M2FAMNUM  'MIDUS 2 family number' /
   SAMPLMAJ  'Major sample identification' /
   B1STATUS  'Completion status of M2 respondents' /
   B1PAGE_M2 'Age determined by subtracting DOB_Final from b1ipidate' /
   B1PBYEAR  'Respondent''s year of birth' /
   B1PRSEX   'Respondent gender' /
   B1PA1     'Physical health self-evaluated' /
   B1PA2     'Mental/emotional health self-evaluated' /
   B1PA3     'Health compared to others your age' /
   B1PA4     'Days unable to work b/c health (30 dys)' /
   B1PA4A    'Reason unable to work (phys, ment, comb)' /
   B1PA4BA   'Num days unable due to phys hlth only' /
   B1PA4BB   'Num days unable due to ment hlth only' /
   B1PA4BC   'Num days unable work due to ment & phys' /
   B1PA5     'Days cut back work b/c health (30 dys)' /
   B1PA5A    'Reason cut back on work (phys,ment,comb)' /
   B1PA5BA   'Num days cut back due to phys hlth only' /
   B1PA5BB   'Num days cut back due to mentl hlth only' /
   B1PA5BC   'Number days cut back due to ment & phys' /
   B1PA6A    'History of stroke' /
   B1PA6B    'History of serious head injury' /
   B1PA6C    'History of Parkinson disease' /
   B1PA6D    'History of other neurological disorder' /
   B1PA7     'Heart trouble suspect/confirmed by doctor' /
   B1PA7A    'Age doctor told you have heart problem' /
   B1PA7BA   'Diagnosis - Heart attack' /
   B1PA7BB   'Diagnosis - Angina' /
   B1PA7BC   'Diagnosis - High blood pressure' /
   B1PA7BD   'Diagnosis - Valve disease' /
   B1PA7BE   'Diagnosis - Hole in heart' /
   B1PA7BF   'Diagnosis - Blocked artery' /
   B1PA7BG   'Diagnosis - Irregular heartbeat' /
   B1PA7BH   'Diagnosis - Hear murmur' /
   B1PA7BI   'Diagnosis - Heart failure' /
   B1PA7BJ   'Diagnosis - Other' /
   B1PA7C    'Go to hospital for heart treatment/tests' /
   B1PA7D    'Getting treatment for heart trouble now' /
   B1PA8     'Ever had heart attack' /
   B1PA8A    'Year had first heart attack' /
   B1PA9     'Heart attack risk compared to others' /
   B1PA9A    'Degree of higher risk for heart attack' /
   B1PA9B    'Degree of lower risk for heart attack' /
   B1PA10A   'Family heart attack - No one' /
   B1PA10B   'Family heart attack - Mother' /
   B1PA10C   'Family heart attack - Father' /
   B1PA10D   'Family heart attack - Brother' /
   B1PA10E   'Family heart attack - Half brother' /
   B1PA10F   'Family heart attack - Sister' /
   B1PA10G   'Family heart attack - Half sister' /
   B1PA10H   'Family heart attack - Child' /
   B1PA11    'How much worry about your heart' /
   B1PA12    'Takes aspirin to prevent heart conditions' /
   B1PA13    'Ever had major heart procedure' /
   B1PA14    'Anyone you know well had heart procedure' /
   B1PA15    'Would choose bypass or medication' /
   B1PA16    'How sure would choose bypass or medication' /
   B1PA17    'Chest pain walk uphill/hurry' /
   B1PA18    'Chest pain walk ordinary pace' /
   B1PA19    'When get chest pain stop, slow, continue' /
   B1PA20    'Does chest pain go away when stand still' /
   B1PA21    'How soon does chest pain go away' /
   B1PA22    'Where get chest pain/discomfort' /
   B1PA23    'Ever severe pain across front of chest' /
   B1PA23A   'Num times severe pain front of chest' /
   B1PA23B   'Talk to doctor about chest pain' /
   B1PA23CA  'Chest pain - Heart attack' /
   B1PA23CB  'Chest pain - Angina' /
   B1PA23CC  'Chest pain - High blood pressure' /
   B1PA23CD  'Chest pain - Valve disease' /
   B1PA23CE  'Chest pain - Hole in heart' /
   B1PA23CF  'Chest pain - Blocked artery' /
   B1PA23CG  'Chest pain - Irregular heartbeat' /
   B1PA23CH  'Chest pain - Heart murmur' /
   B1PA23CI  'Chest pain - Heart failure' /
   B1PA23CJ  'Chest pain - Other' /
   B1PA24    'High blood pressure ever diagnosed' /
   B1PA24A   'Num years ago told high blood pressure' /
   B1PA24B   'Ever taken high blood pressure medicine' /
   B1PA24C   'Now taking high blood pressure medicine' /
   B1PA24D   'Using oth treatment high blood pressure' /
   B1PA24EA  'Therapy - Diet' /
   B1PA24EB  'Therapy - Vitamins/Minerals' /
   B1PA24EC  'Therapy - Exercise' /
   B1PA24ED  'Therapy - Herbal' /
   B1PA24EE  'Therapy - Meditation/Relaxation' /
   B1PA24EF  'Therapy - Other' /
   B1PA25NM  'Time since blood pressure test (num)' /
   B1PA25IN  'Time since blood pressure test (mo, yr)' /
   B1PA25A   'Last blood pressure (low, normal, high)' /
   B1PA25BS  'Exact reading systolic blood pressure' /
   B1PA25BD  'Exact reading diastolic blood pressure' /
   B1PA26    'Ever had cancer' /
   B1PA27    'Cancer risk compared to others' /
   B1PA27A   'Degree of higher risk for cancer' /
   B1PA27B   'Degree of lower risk for cancer' /
   B1PA28A   'Breast cancer ever' /
   B1PA28B   'Cervical cancer ever' /
   B1PA28C   'Colon cancer ever' /
   B1PA28D   'Lung cancer ever' /
   B1PA28E   'Lymphoma/leukemia cancer ever' /
   B1PA28F   'Ovarian cancer ever' /
   B1PA28G   'Prostate cancer ever' /
   B1PA28H   'Skin cancer/melanoma ever' /
   B1PA28I   'Uterine cancer ever' /
   B1PA28J   'Other cancer ever (specify)' /
   B1PA28AA  'Age breast cancer diagnosed' /
   B1PA28BB  'Age cervical cancer diagnosed' /
   B1PA28CC  'Age colon cancer diagnosed' /
   B1PA28DD  'Age lung cancer diagnosed' /
   B1PA28EE  'Age lymphoma/leukemia cancer diagnosed' /
   B1PA28FF  'Age ovarian cancer diagnosed' /
   B1PA28GG  'Age prostate cancer diagnosed' /
   B1PA28HH  'Age skin cancer/melanoma diagnosed' /
   B1PA28II  'Age uterine cancer diagnosed' /
   B1PA28JJ  'Age other cancer diagnosed' /
   B1PA29    'Cancer treatment/therapy currently' /
   B1PA29AA  'Therapy - Surgery' /
   B1PA29AB  'Therapy - Chemotherapy' /
   B1PA29AC  'Therapy - Radiation' /
   B1PA29AD  'Therapy - Diet' /
   B1PA29AE  'Therapy - Vitamins/minerals' /
   B1PA29AF  'Therapy - Exercise' /
   B1PA29AG  'Therapy - Herbal' /
   B1PA29AH  'Therapy - Meditation/Relaxation' /
   B1PA29AI  'Therapy - Other' /
   B1PA30A   'Had Cancer - No one' /
   B1PA30B   'Had Cancer - Mother' /
   B1PA30C   'Had Cancer - Father' /
   B1PA30D   'Had Cancer - Brother' /
   B1PA30E   'Had Cancer - Sister' /
   B1PA30F   'Had Cancer - Child' /
   B1PA31A   'Mother had breast cancer' /
   B1PA31B   'Mother had cervical cancer' /
   B1PA31C   'Mother had colon cancer' /
   B1PA31D   'Mother had lung cancer' /
   B1PA31E   'Mother had lymphoma/leukemia cancer' /
   B1PA31F   'Mother had ovarian cancer' /
   B1PA31H   'Mother had skin cancer/melanoma' /
   B1PA31I   'Mother had uterine cancer' /
   B1PA31J   'Mother had other cancer (specify)' /
   B1PA32A   'Father had breast cancer' /
   B1PA32C   'Father had colon cancer' /
   B1PA32D   'Father had lung cancer' /
   B1PA32E   'Father had lymphoma/leukemia cancer' /
   B1PA32G   'Father had prostate cancer' /
   B1PA32H   'Father had skin cancer/melanoma' /
   B1PA32J   'Father had other cancer (specify)' /
   B1PA33A   'Brother had breast cancer' /
   B1PA33C   'Brother had colon cancer' /
   B1PA33D   'Brother had lung cancer' /
   B1PA33E   'Brother had lymphoma/leukemia cancer' /
   B1PA33G   'Brother had prostate cancer' /
   B1PA33H   'Brother had skin cancer/melanoma' /
   B1PA33J   'Brother had other cancer (specify)' /
   B1PA34A   'Sister had breast cancer' /
   B1PA34B   'Sister had cervical cancer' /
   B1PA34C   'Sister had colon cancer' /
   B1PA34D   'Sister had lung cancer' /
   B1PA34E   'Sister had lymphoma/leukemia cancer' /
   B1PA34F   'Sister had ovarian cancer' /
   B1PA34H   'Sister had skin cancer/melanoma' /
   B1PA34I   'Sister had uterine cancer' /
   B1PA34J   'Sister had other cancer (specify)' /
   B1PA35A   'Child had breast cancer' /
   B1PA35B   'Child had cervical cancer' /
   B1PA35C   'Child had colon cancer' /
   B1PA35D   'Child had lung cancer' /
   B1PA35E   'Child had lymphoma/leukemia cancer' /
   B1PA35F   'Child had ovarian cancer' /
   B1PA35G   'Child had prostate cancer' /
   B1PA35H   'Child had skin cancer/melanoma' /
   B1PA35I   'Child had uterine cancer' /
   B1PA35J   'Child had other cancer (specify)' /
   B1PA36A   'Ever had hysterectomy' /
   B1PA36AM  'Month had hysterectomy' /
   B1PA36AY  'Year had hysterectomy' /
   B1PA36B   'Had ovary removed (one, both, none)' /
   B1PA36C   'Ovaries removed at same time' /
   B1PA36DM  'Month first ovary removed' /
   B1PA36DY  'Year first ovary removed' /
   B1PA36EM  'Month second ovary removed' /
   B1PA36EY  'Year second ovary removed' /
   B1PA37    'Age had first cigarette' /
   B1PA38A   'Ever smoked cigarettes regularly' /
   B1PA38B   'Age began to smoke regularly' /
   B1PA39    'Now smoke cigarettes regularly' /
   B1PA40    'Cigs/day during heaviest yr (cur smoker)' /
   B1PA41    'Tried quit smoking since last interview' /
   B1PA42    'Age last smoked regularly' /
   B1PA43    'Cigs/day during heaviest yr (ex-smoker)' /
   B1PA44    'Ever used pipe/cigars/snuff/chew' /
   B1PA45A   'Who smoked - Father' /
   B1PA45B   'Who smoked - Mother' /
   B1PA45C   'Who smoked - Other' /
   B1PA46    'In home anyone smoke/use tobacco current' /
   B1PA47    'At job anyone smoke/use tobacco ever' /
   B1PA48    'At job anyone smoke/use tobacco current' /
   B1PA49    'Age had first drink of alcohol' /
   B1PA50    'Had at least one drink (past mo)' /
   B1PA51    'How often at least one drink (past mo)' /
   B1PA51A   'How many days per mo (if less than 1/wk)' /
   B1PA52    'Number drinks on days when drank' /
   B1PA53    'Times had 5+ drinks same occsn (past mo)' /
   B1PA54    'When drank most, had at least one (freq)' /
   B1PA54A   'How many days per mo (if less than 1/wk)' /
   B1PA55    'When drank most, num drinks when drank' /
   B1PA56    'Age start to drink that much (when most)' /
   B1PA57    'Number years drank that much (when most)' /
   B1PA58    'Lived with alcoholic during childhood' /
   B1PA59    'Ever married to/lived with alcoholic' /
   B1PA60    'Felt sad/depressed for 2+ wks (12 mo)' /
   B1PA61    'Sad/depress lasted how long (2 wks sad)' /
   B1PA62    'How often felt sad/depress (2 wks sad)' /
   B1PA63    'Lose interest in most things (2 wks sad)' /
   B1PA64    'Felt more tired/low energy (2 weeks sad)' /
   B1PA65    'Lost appetite (2 weeks sad)' /
   B1PA65A   'Increased appetite (2 weeks sad)' /
   B1PA66    'More trouble falling asleep (2 wks sad)' /
   B1PA66A   'How often trouble fall sleep (2 wks sad)' /
   B1PA67    'More trouble concentrating (2 weeks sad)' /
   B1PA68    'Felt down/no good/worthless (2 wks sad)' /
   B1PA69    'Thought a lot about death (2 weeks sad)' /
   B1PA70    'Number weeks sad/depressed (12 mo)' /
   B1PA71MO  'Most recent month sad/depressed' /
   B1PA71YR  'Most recent year sad/depressed' /
   B1PDEPAF  'Depressed Affect (continuous)' /
   B1PDEPAD  'Depressed Affect (binary)' /
   B1PA72    'Time lost interest 2+ wks (12 mo)' /
   B1PA73    'How long loss interst lasted (2 wks int)' /
   B1PA74    'How often felt loss interst (2 wks int)' /
   B1PA75    'Felt more tired/low energy (2 weeks int)' /
   B1PA76    'Lost appetite (2 weeks interest)' /
   B1PA76A   'Increased appetite (2 weeks interest)' /
   B1PA77    'More trouble fall sleep (2 weeks intrst)' /
   B1PA77A   'How often trouble fall sleep (2 wks int)' /
   B1PA78    'More trouble concentrating (2 weeks int)' /
   B1PA79    'Felt down/no good/worthless (2 wks int)' /
   B1PA80    'Thought a lot about death (2 weeks int)' /
   B1PA81    'Number weeks lost interest (12 mo)' /
   B1PA82MO  'Most recent month lost interest' /
   B1PA82YR  'Most recent year lost interest' /
   B1PANHED  'Anhedonia (continuous)' /
   B1PANHDX  'Anhedonia (binary)' /
   B1PDEPRE  'Depressed Affect + Anhedon (continuous)' /
   B1PDEPDX  'Depressed Affect + Anhedonia (binary)' /
   B1PA83    'Worry more,less,about same as others' /
   B1PA83A   'Worry a lot,somewhat,little more' /
   B1PA84    'Frequency of worrying (12 mo)' /
   B1PA84A   'How long worry lasts on days you worry' /
   B1PA85    'Worry about one thing or more than one' /
   B1PA85A   'Different worries on mind at same time' /
   B1PA86    'Worry about things not likely to happen' /
   B1PA86A   'Worry about things that are not serious' /
   B1PA87    'How often can''t put worry out of mind' /
   B1PA87A   'How often difficult to control worry' /
   B1PA88A   'Restless because of worry (12 mo)' /
   B1PA88B   'Keyed up/on edge/nervous energy (12 mo)' /
   B1PA88C   'Irritable because of worry (12 mo)' /
   B1PA88D   'Trouble falling asleep b/c worry (12 mo)' /
   B1PA88E   'Trouble staying asleep b/c worry (12 mo)' /
   B1PA88F   'Trouble concentrating b/c worry (12 mo)' /
   B1PA88G   'Trouble remembering b/c worry (12 mo)' /
   B1PA88H   'Low on energy b/c worry (12 mo)' /
   B1PA88I   'Tire easily b/c worry (12 mo)' /
   B1PA88J   'Sore/aching muscles b/c worry (12 mo)' /
   B1PA89    'How much worry interferes w/ your life' /
   B1PANXIE  'Anxiety Disorder (continuous)' /
   B1PANXTD  'Anxiety Disorder (binary)' /
   B1PA90    'Have spell/attack (12 mo)' /
   B1PA90A   'Spell/attack for no reason (12 mo)' /
   B1PA91    'Number attacks (12 mo)' /
   B1PA92    'Attack happen when danger or center attn' /
   B1PA92A   'Heart pounds during attacks' /
   B1PA92B   'Tight/pain in chest during attacks' /
   B1PA92C   'Sweat during attacks' /
   B1PA92D   'Tremble/shake during attacks' /
   B1PA92E   'Hot flashes/chills dur attacks' /
   B1PA92F   'Things seem unreal dur attacks' /
   B1PPANIC  'Panic Attack (continuous)' /
   B1PPANDX  'Panic Attack (binary)' /
   B1PB1     'Highest level of education completed' /
   B1PB2     'Age first worked for pay for 6+ months' /
   B1PB3A    'Working now' /
   B1PB3B    'Self-employed' /
   B1PB3C    'Looking for work/unemployed' /
   B1PB3D    'Temporarily laid off' /
   B1PB3E    'Retired' /
   B1PB3F    'Homemaker' /
   B1PB3G    'Full-time student' /
   B1PB3H    'Part-time student' /
   B1PB3I    'Maternity or sick leave' /
   B1PB3J    'Permanently disabled' /
   B1PB3K    'Other' /
   B1PBWORK  'Current work status' /
   B1PB4N    'Length of unemployment (number)' /
   B1PB4M    'Length of unemployment (dy, wk, mo, yr)' /
   B1PB5     'Reason for unemployment' /
   B1PB6     'Working for pay at the present time' /
   B1PB7     'Supervises others (current job)' /
   B1PB7A    'Number people supervised (current job)' /
   B1PB8     'Employer or self-employed (current job)' /
   B1POCC    'Occupation code - Respondent' /
   B1PIND    'Industry code - Respondent' /
   B1PTEDU   'Logit of proportion of persons completed at least some'+
     ' college as of 1990'/
   B1PTEARN  'Logit of proportion of persons earning $14.30 + per hour'+
     ' in 1989'/
   B1PTSEI   'Total-based 1990 Socio-Economic Index' /
   B1PMEDU   'Logit of proportion of men completed at least some college'+
     ' as of 1990'/
   B1PMEARN  'Logit of proportion of men earning $14.30 + per hour in 1989' /
   B1PMSEI   'Male-based 1990 Socio-Economic Index' /
   B1PFEDU   'Logit of proportion of women completed at least some college'+
     ' as of 1990'/
   B1PFEARN  'Logit of proportion of women earning $14.30 + per hour in 1989' /
   B1PFSEI   'Female-based 1990 Socio-Economic Index' /
   B1POCMAJ  'R''s current occupation - major groups' /
   B1PINDMJ  'R''s current industry - major groups' /
   B1PB12    'Hours work for pay at main job' /
   B1PB12A   'Hours work at other jobs' /
   B1PB13    'Number nights away due to job (12 mos)' /
   B1PB14    'Supervise others (last job)' /
   B1PB14A   'Number people supervised (last job)' /
   B1PB15    'Employer or self-employed (last job)' /
   B1POCCP   'Previous occupation code - Respondent' /
   B1PINDP   'Previous industry code - Respondent' /
   B1PTEDUP  'Prev - Logit of proportion of persons completed at least'+
     ' some college as of 1990'/
   B1PTEARP  'Prev - Logit of proportion of persons earning $14.30 +'+
     ' per hour in 1989'/
   B1PTSEIP  'Prev - Total-based 1990 Socio-Economic Index' /
   B1PMEDUP  'Prev - Logit of proportion of men completed at least some'+
     ' college as of 1990'/
   B1PMEARP  'Prev - Logit of proportion of men earning $14.30 + per hour'+
     ' in 1989'/
   B1PMSEIP  'Prev - Male-based 1990 Socio-Economic Index' /
   B1PFEDUP  'Prev - Logit of proportion of women completed at least some'+
     ' college as of 1990'/
   B1PFEARP  'Prev - Logit of proportion of women earning $14.30 + per'+
     ' hour in 1989'/
   B1PFSEIP  'Prev - Female-based 1990 Socio-Economic Index' /
   B1POCPMJ  'R''s previous occupation - major groups' /
   B1PPINMJ  'R''s previous industry - major groups' /
   B1PB19    'Marital status currently' /
   B1PB20    'Number times married altogether' /
   B1PB21M   'Month married (first marriage)' /
   B1PB21Y   'Year married (first marriage)' /
   B1PB22    'End in widow or divorce (first marriage)' /
   B1PB23M   'Month SP died (first marriage)' /
   B1PB23Y   'Year SP died (first marriage)' /
   B1PB24M   'Month last live w/ SP (first marriage)' /
   B1PB24Y   'Year last live w/ SP (first marriage)' /
   B1PB25M   'Month divorce final (first marriage)' /
   B1PB25Y   'Year divorce final (first marriage)' /
   B1PB26M   'Month married (recent marriage)' /
   B1PB26Y   'Year married (recent marriage)' /
   B1PB27M   'Month last live w/ SP (recent marriage)' /
   B1PB27Y   'Year last live w/ SP (recent marriage)' /
   B1PB28M   'Month divorce final (recent marriage)' /
   B1PB28Y   'Year divorce final (recent marriage)' /
   B1PB29M   'Month SP died (recent marriage)' /
   B1PB29Y   'Year SP died (recent marriage)' /
   B1PB30    'Cohabitation with partner currently' /
   B1PB31N   'Length of cohabitation (number)' /
   B1PB31M   'Length of cohabitation (dy, wk, mo, yr)' /
   B1PB32Y   'Year SP born' /
   B1PSAGE   'Spouse age (year)' /
   B1PB33    'SP highest level of education completed' /
   B1PB34A   'Working now' /
   B1PB34B   'Self-employed' /
   B1PB34C   'Looking for work/unemployed' /
   B1PB34D   'Temporarily laid off' /
   B1PB34E   'Retired' /
   B1PB34F   'Homemaker' /
   B1PB34G   'Full-time student' /
   B1PB34H   'Part-time student' /
   B1PB34I   'Maternity or sick leave' /
   B1PB34J   'Permanently disabled' /
   B1PB34K   'Other' /
   B1PB34WK  'SP current work status' /
   B1PB35N   'SP length of unemployment (number)' /
   B1PB35M   'SP length of unemp (dy,wk,mo,yr)' /
   B1PB36    'SP reason for unemployment' /
   B1PB37    'SP working for pay now' /
   B1PB38    'SP supervises others on main job' /
   B1PB39    'SP has employer or is self-employed' /
   B1POCCS   'Occupation code - Spouse' /
   B1PINDS   'Industry code - Spouse' /
   B1PTEDUS  'Spouse - Logit of proportion of persons completed at least'+
     ' some college as of 1990'/
   B1PTEARS  'Spouse - Logit of proportion of persons earning $14.30 +'+
     ' per hour in 1989'/
   B1PTSEIS  'Spouse - Total-based 1990 Socio-Economic Index' /
   B1PMEDUS  'Spouse - Logit of proportion of men completed at least some'+
     ' college as of 1990'/
   B1PMEARS  'Spouse - Logit of proportion of men earning $14.30 + per'+
     ' hour in 1989'/
   B1PMSEIS  'Spouse - Male-based 1990 Socio-Economic Index' /
   B1PFEDUS  'Spouse - Logit of proportion of women completed at least'+
     ' some college as of 1990'/
   B1PFEARS  'Spouse - Logit of proportion of women earning $14.30 +'+
     ' per hour in 1989'/
   B1PFSEIS  'Spouse - Female-based 1990 Socio-Economic Index' /
   B1PSOCMJ  'Spousal occupation - major groups' /
   B1PSINMJ  'Spousal industry - major groups' /
   B1PC1     'Pregnant currently' /
   B1PC2     'Number of children' /
   B1PC3     'Any children no longer living' /
   B1PC4     'Other HH members besides child' /
   B1PCHA1   'Age:Child/HH member #1' /
   B1PCHX1   'Sex:Child/HH member #1' /
   B1PCHR1   'Relation:Child/HH member #1' /
   B1PCMB1   'Month of Birth:Child/HH member #1' /
   B1PCYB1   'Year of Birth:Child/HH member #1' /
   B1PHHA1   'Age:HH member #1' /
   B1PCHC1   'In R''s care 5+ years:Child/HH member #1' /
   B1PCHH1   'Lives in HH:Child/HH member #1' /
   B1PCDD1   'Has disabil/mental prob:Child/HH member #1' /
   B1PCDT1   'Conditn dis or ment prob:Child/HH member #1' /
   B1PCDP1   'Depress long or single:Child/HH member #1' /
   B1PCDA1   'Age disab/ment prob began:Child/HH member #1' /
   B1PCDX1   'Professnl diagnose mental:Child/HH member #1' /
   B1PCXT1   'Type mental diagnosis:Child/HH member #1' /
   B1PCDO1   'Any other condition:Child/HH member #1' /
   B1PCHA2   'Age:Child/HH member #2' /
   B1PCHX2   'Sex:Child/HH member #2' /
   B1PCHR2   'Relation:Child/HH member #2' /
   B1PCMB2   'Month of Birth:Chil/HH member #2' /
   B1PCYB2   'Year of Birth:Chil/HH member #2' /
   B1PHHA2   'Age:HH member #2' /
   B1PCHC2   'In R''s care 5+ years:Child/HH member #2' /
   B1PCHH2   'Lives in HH:Child/HH member #2' /
   B1PCDD2   'Has disabil/mental prob:Child/HH member #2' /
   B1PCDT2   'Conditn dis or ment prob:Child/HH member #2' /
   B1PCDP2   'Depress long or single:Child/HH member #2' /
   B1PCDA2   'Age disab/ment prob began:Child/HH member #2' /
   B1PCDX2   'Professnl diagnose mental:Child/HH member #2' /
   B1PCXT2   'Type mental diagnosis:Child/HH member #2' /
   B1PCDO2   'Any other condition:Child/HH member #2' /
   B1PCHA3   'Age:Child/HH member #3' /
   B1PCHX3   'Sex:Child/HH member #3' /
   B1PCHR3   'Relation:Child/HH member #3' /
   B1PCMB3   'Month of Birth:Chil/HH member #3' /
   B1PCYB3   'Year of Birth:Chil/HH member #3' /
   B1PHHA3   'Age:HH member #3' /
   B1PCHC3   'In R''s care 5+ years:Child/HH member #3' /
   B1PCHH3   'Lives in HH:Child/HH member #3' /
   B1PCDD3   'Has disabil/mental prob:Child/HH member #3' /
   B1PCDT3   'Conditn dis or ment prob:Child/HH member #3' /
   B1PCDP3   'Depress long or single:Child/HH member #3' /
   B1PCDA3   'Age disab/ment prob began:Child/HH member #3' /
   B1PCDX3   'Professnl diagnose mental:Child/HH member #3' /
   B1PCXT3   'Type mental diagnosis:Child/HH member #3' /
   B1PCDO3   'Any other condition:Child/HH member #3' /
   B1PCHA4   'Age:Child/HH member #4' /
   B1PCHX4   'Sex:Child/HH member #4' /
   B1PCHR4   'Relation:Child/HH member #4' /
   B1PCMB4   'Month of Birth:Chil/HH member #4' /
   B1PCYB4   'Year of Birth:Chil/HH member #4' /
   B1PHHA4   'Age:HH member #4' /
   B1PCHC4   'In R''s care 5+ years:Child/HH member #4' /
   B1PCHH4   'Lives in HH:Child/HH member #4' /
   B1PCDD4   'Has disabil/mental prob:Child/HH member #4' /
   B1PCDT4   'Conditn dis or ment prob:Child/HH member #4' /
   B1PCDP4   'Depress long or single:Child/HH member #4' /
   B1PCDA4   'Age disab/ment prob began:Child/HH member #4' /
   B1PCDX4   'Professnl diagnose mental:Child/HH member #4' /
   B1PCXT4   'Type mental diagnosis:Child/HH member #4' /
   B1PCDO4   'Any other condition:Child/HH member #4' /
   B1PCHA5   'Age:Child/HH member #5' /
   B1PCHX5   'Sex:Child/HH member #5' /
   B1PCHR5   'Relation:Child/HH member #5' /
   B1PCMB5   'Month of Birth:Chil/HH member #5' /
   B1PCYB5   'Year of Birth:Chil/HH member #5' /
   B1PHHA5   'Age:HH member #5' /
   B1PCHC5   'In R''s care 5+ years:Child/HH member #5' /
   B1PCHH5   'Lives in HH:Child/HH member #5' /
   B1PCDD5   'Has disabil/mental prob:Child/HH member #5' /
   B1PCDT5   'Conditn dis or ment prob:Child/HH member #5' /
   B1PCDP5   'Depress long or single:Child/HH member #5' /
   B1PCDA5   'Age disab/ment prob began:Child/HH member #5' /
   B1PCDX5   'Professnl diagnose mental:Child/HH member #5' /
   B1PCXT5   'Type mental disgnosis: Child/HH member #5' /
   B1PCDO5   'Any other condition:Child/HH member #5' /
   B1PCHA6   'Age:Child/HH member #6' /
   B1PCHX6   'Sex:Child/HH member #6' /
   B1PCHR6   'Relation:Child/HH member #6' /
   B1PCMB6   'Month of Birth:Chil/HH member #6' /
   B1PCYB6   'Year of Birth:Chil/HH member #6' /
   B1PHHA6   'Age:HH member #6' /
   B1PCHC6   'In R''s care 5+ years:Child/HH member #6' /
   B1PCHH6   'Lives in HH:Child/HH member #6' /
   B1PCDD6   'Has disabil/mental prob:Child/HH member #6' /
   B1PCDT6   'Conditn dis or ment prob:Child/HH member #6' /
   B1PCDP6   'Depress long or single:Child/HH member #6' /
   B1PCDA6   'Age disab/ment prob began:Child/HH member #6' /
   B1PCDX6   'Professnl diagnose mental:Child/HH member #6' /
   B1PCXT6   'Type mental diagnosis:Child/HH member #6' /
   B1PCDO6   'Any other condition:Child/HH member #6' /
   B1PCHA7   'Age:Child/HH member #7' /
   B1PCHX7   'Sex:Child/HH member #7' /
   B1PCHR7   'Relation:Child/HH member #7' /
   B1PCMB7   'Month of Birth:Chil/HH member #7' /
   B1PCYB7   'Year of Birth:Chil/HH member #7' /
   B1PHHA7   'Age:HH member #7' /
   B1PCHC7   'In R''s care 5+ years:Child/HH member #7' /
   B1PCHH7   'Lives in HH:Child/HH member #7' /
   B1PCDD7   'Has disabil/mental prob:Child/HH member #7' /
   B1PCDT7   'Conditn dis or ment prob:Child/HH member #7' /
   B1PCDP7   'Depress long or single:Child/HH member #7' /
   B1PCDA7   'Age disab/ment prob began:Child/HH member #7' /
   B1PCDX7   'Professnl diagnose mental:Child/HH member #7' /
   B1PCXT7   'Type mental diagnosis:Child/HH member #7' /
   B1PCDO7   'Any other condition:Child/HH member #7' /
   B1PCHA8   'Age:Child/HH member #8' /
   B1PCHX8   'Sex:Child/HH member #8' /
   B1PCHR8   'Relation:Child/HH member #8' /
   B1PCMB8   'Month of Birth:Chil/HH member #8' /
   B1PCYB8   'Year of Birth:Chil/HH member #8' /
   B1PHHA8   'Age:HH member #8' /
   B1PCHC8   'In R''s care 5+ years:Child/HH member #8' /
   B1PCHH8   'Lives in HH:Child/HH member #8' /
   B1PCDD8   'Has disabil/mental prob:Child/HH member #8' /
   B1PCDT8   'Conditn dis or ment prob:Child/HH member #8' /
   B1PCDP8   'Depress long or single:Child/HH member #8' /
   B1PCDA8   'Age disab/ment prob began:Child/HH member #8' /
   B1PCDX8   'Professnl diagnose mental:Child/HH member #8' /
   B1PCXT8   'Type mental diagnosis:Child/HH member #8' /
   B1PCDO8   'Any other condition:Child/HH member #8' /
   B1PCHA9   'Age:Child/HH member #9' /
   B1PCHX9   'Sex:Child/HH member #9' /
   B1PCHR9   'Relation:Child/HH member #9' /
   B1PCMB9   'Month of Birth:Chil/HH member #9' /
   B1PCYB9   'Year of Birth:Chil/HH member #9' /
   B1PHHA9   'Age:HH member #9' /
   B1PCHC9   'In R''s care 5+ years:Child/HH member #9' /
   B1PCHH9   'Lives in HH:Child/HH member #9' /
   B1PCDD9   'Has disabil/mental prob:Child/HH member #9' /
   B1PCDT9   'Conditn dis or ment prob:Child/HH member #9' /
   B1PCDP9   'Depress long or single:Child/HH member #9' /
   B1PCDA9   'Age disab/ment prob began:Child/HH member #9' /
   B1PCDX9   'Professnl diagnose mental:Child/HH member #9' /
   B1PCXT9   'Type mental diagnosis:Child/HH member #9' /
   B1PCDO9   'Any other condition:Child/HH member #9' /
   B1PCHA10  'Age:Child/HH member #10' /
   B1PCHX10  'Sex:Child/HH member #10' /
   B1PCHR10  'Relation:Child/HH member #10' /
   B1PCMB10  'Month of Birth:Chil/HH member #10' /
   B1PCYB10  'Year of Birth:Chil/HH member #10' /
   B1PHHA10  'Age:HH member #10' /
   B1PCHC10  'In R''s care 5+ years:Child/HH member #10' /
   B1PCHH10  'Lives in HH:Child/HH member #10' /
   B1PCDD10  'Has disabil/mental prob:Child/HH member #10' /
   B1PCDT10  'Conditn dis or ment prob:Child/HH member #10' /
   B1PCDP10  'Depress long or single:Child/HH member #10' /
   B1PCDA10  'Age disab/ment prob began:Child/HH member #10' /
   B1PCDX10  'Professnl diagnose mental:Child/HH member #10' /
   B1PCXT10  'Type mental diagnosis:Child/HH member #10' /
   B1PCDO10  'Any other condition:Child/HH member #10' /
   B1PCHA11  'Age:Child/HH member #11' /
   B1PCHX11  'Sex:Child/HH member #11' /
   B1PCHR11  'Relation:Child/HH member #11' /
   B1PCMB11  'Month of Birth:Chil/HH member #11' /
   B1PCYB11  'Year of Birth:Chil/HH member #11' /
   B1PHHA11  'Age:HH member #11' /
   B1PCHC11  'In R''s care 5+ years:Child/HH member #11' /
   B1PCHH11  'Lives in HH:Child/HH member #11' /
   B1PCDD11  'Has disabil/mental prob:Child/HH member #11' /
   B1PCDT11  'Conditn dis or ment prob:Child/HH member #11' /
   B1PCDP11  'Depress long or single:Child/HH member #11' /
   B1PCDA11  'Age disab/ment prob began:Child/HH member #11' /
   B1PCDX11  'Professnl diagnose mental:Child/HH member #11' /
   B1PCXT11  'Type mental diagnosis:Child/HH member #11' /
   B1PCDO11  'Any other condition:Child/HH member #11' /
   B1PCHA12  'Age:Child/HH member #12' /
   B1PCHX12  'Sex:Child/HH member #12' /
   B1PCHR12  'Relation:Child/HH member #12' /
   B1PCMB12  'Month of Birth:Chil/HH member #12' /
   B1PCYB12  'Year of Birth:Chil/HH member #12' /
   B1PHHA12  'Age:HH member #12' /
   B1PCHC12  'In R''s care 5+ years:Child/HH member #12' /
   B1PCHH12  'Lives in HH:Child/HH member #12' /
   B1PCDD12  'Has disabil/mental prob:Child/HH member #12' /
   B1PCDT12  'Conditn dis or ment prob:Child/HH member #12' /
   B1PCDP12  'Depress long or single:Child/HH member #12' /
   B1PCDA12  'Age disab/ment prob began:Child/HH member #12' /
   B1PCDX12  'Professnl diagnose mental:Child/HH member #12' /
   B1PCXT12  'Type mental diagnosis:Child/HH member #12' /
   B1PCDO12  'Any other condition:Child/HH member #12' /
   B1PCHA13  'Age:Child/HH member #13' /
   B1PCHX13  'Sex:Child/HH member #13' /
   B1PCHR13  'Relation:Child/HH member #13' /
   B1PCMB13  'Month of Birth:Chil/HH member #13' /
   B1PCYB13  'Year of Birth:Chil/HH member #13' /
   B1PHHA13  'Age:HH member #13' /
   B1PCHC13  'In R''s care 5+ years:Child/HH member #13' /
   B1PCHH13  'Lives in HH:Child/HH member #13' /
   B1PCDD13  'Has disabil/mental prob:Child/HH member #13' /
   B1PCDT13  'Conditn dis or ment prob:Child/HH member #13' /
   B1PCDP13  'Depress long or single:Child/HH member #13' /
   B1PCDA13  'Age disab/ment prob began:Child/HH member #13' /
   B1PCDX13  'Professnl diagnose mental:Child/HH member #13' /
   B1PCXT13  'Type mental diagnosis:Child/HH member #13' /
   B1PCDO13  'Any other condition:Child/HH member #13' /
   B1PCHA14  'Age:Child/HH member #14' /
   B1PCHX14  'Sex:Child/HH member #14' /
   B1PCHR14  'Relation:Child/HH member #14' /
   B1PCMB14  'Month of Birth:Chil/HH member #14' /
   B1PCYB14  'Year of Birth:Chil/HH member #14' /
   B1PHHA14  'Age:HH member #14' /
   B1PCHC14  'In R''s care 5+ years:Child/HH member #14' /
   B1PCHH14  'Lives in HH:Child/HH member #14' /
   B1PCDD14  'Has disabil/mental prob:Child/HH member #14' /
   B1PCDT14  'Conditn dis or ment prob:Child/HH member #14' /
   B1PCDP14  'Depress long or single:Child/HH member #14' /
   B1PCDA14  'Age disab/ment prob began:Child/HH member #14' /
   B1PCDX14  'Professnl diagnose mental:Child/HH member #14' /
   B1PCXT14  'Type mental diagnosis:Child/HH member #14' /
   B1PCDO14  'Any other condition:Child/HH member #14' /
   B1PCHA15  'Age:Child/HH member #15' /
   B1PCHX15  'Sex:Child/HH member #15' /
   B1PCHR15  'Relation:Child/HH member #15' /
   B1PCMB15  'Month of Birth:Chil/HH member #15' /
   B1PCYB15  'Year of Birth:Chil/HH member #15' /
   B1PHHA15  'Age:HH member #15' /
   B1PCHC15  'In R''s care 5+ years:Child/HH member #15' /
   B1PCHH15  'Lives in HH:Child/HH member #15' /
   B1PCDD15  'Has disabil/mental prob:Child/HH member #15' /
   B1PCDT15  'Conditn dis or ment prob:Child/HH member #15' /
   B1PCDP15  'Depress long or single:Child/HH member #15' /
   B1PCDA15  'Age disab/ment prob began:Child/HH member #15' /
   B1PCDX15  'Professnl diagnose mental:Child/HH member #15' /
   B1PCXT15  'Type mental diagnosis:Child/HH member #15' /
   B1PCDO15  'Any other condition:Child/HH member #15' /
   B1PCHA16  'Age:Child/HH member #16' /
   B1PCHX16  'Sex:Child/HH member #16' /
   B1PCHR16  'Relation:Child/HH member #16' /
   B1PCMB16  'Month of Birth:Chil/HH member #16' /
   B1PCYB16  'Year of Birth:Chil/HH member #16' /
   B1PHHA16  'Age:HH member #16' /
   B1PCHC16  'In R''s care 5+ years:Child/HH member #16' /
   B1PCHH16  'Lives in HH:Child/HH member #16' /
   B1PCDD16  'Has disabil/mental prob:Child/HH member #16' /
   B1PCDT16  'Conditn dis or ment prob:Child/HH member #16' /
   B1PCDP16  'Depress long or single:Child/HH member #16' /
   B1PCDA16  'Age disab/ment prob began:Child/HH member #16' /
   B1PCDX16  'Professnl diagnose mental:Child/HH member #16' /
   B1PCXT16  'Type mental diagnosis:Child/HH member #16' /
   B1PCDO16  'Any other condition:Child/HH member #16' /
   B1PCHA17  'Age:Child/HH member #17' /
   B1PCHX17  'Sex:Child/HH member #17' /
   B1PCHR17  'Relation:Child/HH member #17' /
   B1PCMB17  'Month of Birth:Chil/HH member #17' /
   B1PCYB17  'Year of Birth:Chil/HH member #17' /
   B1PHHA17  'Age:HH member #17' /
   B1PCHC17  'In R''s care 5+ years:Child/HH member #17' /
   B1PCHH17  'Lives in HH:Child/HH member #17' /
   B1PCDD17  'Has disabil/mental prob:Child/HH member #17' /
   B1PCDT17  'Conditn dis or ment prob:Child/HH member #17' /
   B1PCDP17  'Depress long or single:Child/HH member #17' /
   B1PCDA17  'Age disab/ment prob began:Child/HH member #17' /
   B1PCDX17  'Professnl diagnose mental:Child/HH member #17' /
   B1PCXT17  'Type mental diagnosis:Child/HH member #17' /
   B1PCDO17  'Any other condition:Child/HH member #17' /
   B1PCHA18  'Age:Child/HH member #18' /
   B1PCHX18  'Sex:Child/HH member #18' /
   B1PCHR18  'Relation:Child/HH member #18' /
   B1PCMB18  'Month of Birth:Chil/HH member #18' /
   B1PCYB18  'Year of Birth:Chil/HH member #18' /
   B1PHHA18  'Age:HH member #18' /
   B1PCHC18  'In R''s care 5+ years:Child/HH member #18' /
   B1PCHH18  'Lives in HH:Child/HH member #18' /
   B1PCDD18  'Has disabil/mental prob:Child/HH member #18' /
   B1PCDT18  'Conditn dis or ment prob:Child/HH member #18' /
   B1PCDP18  'Depress long or single:Child/HH member #18' /
   B1PCDA18  'Age disab/ment prob began:Child/HH member #18' /
   B1PCDX18  'Professnl diagnose mental:Child/HH member #18' /
   B1PCXT18  'Type mental diagnosis:Child/HH member #18' /
   B1PCDO18  'Any other condition:Child/HH member #18' /
   B1PCHA19  'Age:Child/HH member #19' /
   B1PCHX19  'Sex:Child/HH member #19' /
   B1PCHR19  'Relation:Child/HH member #19' /
   B1PCMB19  'Month of Birth:Chil/HH member #19' /
   B1PCYB19  'Year of Birth:Chil/HH member #19' /
   B1PHHA19  'Age:HH member #19' /
   B1PCHC19  'In R''s care 5+ years:Child/HH member #19' /
   B1PCHH19  'Lives in HH:Child/HH member #19' /
   B1PCDD19  'Has disabil/mental prob:Child/HH member #19' /
   B1PCDT19  'Conditn dis or ment prob:Child/HH member #19' /
   B1PCDP19  'Depress long or single:Child/HH member #19' /
   B1PCDA19  'Age disab/ment prob began:Child/HH member #19' /
   B1PCDX19  'Professnl diagnose mental:Child/HH member #19' /
   B1PCXT19  'Type mental diagnosis:Child/HH member #19' /
   B1PCDO19  'Any other condition:Child/HH member #19' /
   B1PCHA20  'Age:Child/HH member #20' /
   B1PCHX20  'Sex:Child/HH member #20' /
   B1PCHR20  'Relation:Child/HH member #20' /
   B1PCMB20  'Month of Birth:Chil/HH member #20' /
   B1PCYB20  'Year of Birth:Chil/HH member #20' /
   B1PHHA20  'Age:HH member #20' /
   B1PCHC20  'In R''s care 5+ years:Child/HH member #20' /
   B1PCHH20  'Lives in HH:Child/HH member #20' /
   B1PCDD20  'Has disabil/mental prob:Child/HH member #20' /
   B1PCDT20  'Conditn dis or ment prob:Child/HH member #20' /
   B1PCDP20  'Depress long or single:Child/HH member #20' /
   B1PCDA20  'Age disab/ment prob began:Child/HH member #20' /
   B1PCDX20  'Professnl diagnose mental:Child/HH member #20' /
   B1PCXT20  'Type mental diagnosis:Child/HH member #20' /
   B1PCDO20  'Any other condition:Child/HH member #20' /
   B1PCHA21  'Age:Child/HH member #21' /
   B1PCHX21  'Sex:Child/HH member #21' /
   B1PCHR21  'Relation:Child/HH member #21' /
   B1PCMB21  'Month of Birth:Chil/HH member #21' /
   B1PCYB21  'Year of Birth:Chil/HH member #21' /
   B1PHHA21  'Age:HH member #21' /
   B1PCHC21  'In R''s care 5+ years:Child/HH member #21' /
   B1PCHH21  'Lives in HH:Child/HH member #21' /
   B1PCDD21  'Has disabil/mental prob:Child/HH member #21' /
   B1PCDT21  'Conditn dis or ment prob:Child/HH member #21' /
   B1PCDP21  'Depress long or single:Child/HH member #21' /
   B1PCDA21  'Age disab/ment prob began:Child/HH member #21' /
   B1PCDX21  'Professnl diagnose mental:Child/HH member #21' /
   B1PCXT21  'Type mental diagnosis:Child/HH member #21' /
   B1PCDO21  'Any other condition:Child/HH member #21' /
   B1PC5     'Total number of HH members' /
   B1PKHSIZ  'Size of kid HH roster' /
   B1PC6     'Anyone else in HH not mentioned before' /
   B1PCHM1N  '# adult child (18+) at home [biological, step, adopted,'+
     ' and partner''s child]'/
   B1PCHM2N  '# adult child (18+) at home [all types including foster'+
     ' and other child]'/
   B1PCHM1X  'having adult child(ren) living at home' /
   B1PCHM2X  'having adult child(ren) living at home' /
   B1PDCSX   'Sex of person who received care from r' /
   B1PD1     'Given personal care to others (12 mos)' /
   B1PD2     'To whom care given most' /
   B1PD3     'Sex of care recipient' /
   B1PD4     'Condition of care recipient' /
   B1PD5M    'Month started giving care' /
   B1PD5Y    'Year started giving care' /
   B1PD7     'Still giving care' /
   B1PD8A    'Stopped giving care reason one' /
   B1PD8B    'Stopped giving care reason two' /
   B1PD9     'Care recipient lives in household' /
   B1PD10    'Give care bathe/dress/eat/bathroom' /
   B1PD11    'Give care getting around inside/outside' /
   B1PD12    'Give care shop/cook/housework/laundry' /
   B1PD13    'Give care money/phone/medications' /
   B1PD14    'Number weeks given care (12 mos)' /
   B1PD15    'Weekly hours given care (12 mos)' /
   B1PD16    'Ever given care before' /
   B1PD17    'Ever given care before for 1+ months' /
   B1PD18    'Number times given personal care in life' /
   B1PD19N   'Total time given care (number)' /
   B1PD19M   'Total time given care (years, months)' /
   B1PD20    'Grandparent' /
   B1PD21    'Given care to grandchildren' /
   B1PD22    'Number yrs responsible for grandchildren' /
   B1PE1     'Lived in institution ever' /
   B1PE1A1   'Lived in boarding school ever' /
   B1PE1A2   'Lived in college dorm ever' /
   B1PE1A3   'Lived in prison ever' /
   B1PE1A4   'Lived in hospital or nursing home ever' /
   B1PE1A5   'Lived in armed forces barracks ever' /
   B1PE1A6   'Lived in rooming house ever' /
   B1PE1A7   'Lived in other institution' /
   B1PE1BN   'Total time lived in institution (number)' /
   B1PE1BM   'Total time in institution (dy,wk,mo,yr)' /
   B1PE2     'Homeless since past interview' /
   B1PE2AN   'Number of times homeless (number)' /
   B1PE2AM   'Number of times homeless (dy,wk,mo,yr)' /
   B1PE3     'No phone since past interview' /
   B1PE3AN   'No phone since past interview (number)' /
   B1PE3AM   'No phone past interview (dy, wk, mo, yr)' /
   B1PF1     'Spanish/Hispanic/Latino descent' /
   B1PF2A    'Ethnic group #1' /
   B1PF2B    'Ethnic group #2' /
   B1PF2C    'Ethnic group #3' /
   B1PF2_1   'b1pf2 recode - American Indian/Native American' /
   B1PF2_3   'b1pf2 recode - Canada' /
   B1PF2_4   'b1pf2 recode - Costa Rica' /
   B1PF2_5   'b1pf2 recode - Cuba' /
   B1PF2_6   'b1pf2 recode - Dominican Republic' /
   B1PF2_7   'b1pf2 recode - El Salvador' /
   B1PF2_9   'b1pf2 recode - Haiti' /
   B1PF2_10  'b1pf2 recode - Honduras' /
   B1PF2_11  'b1pf2 recode - Jamaica' /
   B1PF2_12  'b1pf2 recode - Mexico' /
   B1PF2_13  'b1pf2 recode - Nicaragua' /
   B1PF2_14  'b1pf2 recode - Panama' /
   B1PF2_15  'b1pf2 recode - Puerto Rico' /
   B1PF2_17  'b1pf2 recode - Trinidad' /
   B1PF2_18  'b1pf2 recode - Central American/Caribbean' /
   B1PF2_22  'b1pf2 recode - Brazil' /
   B1PF2_24  'b1pf2 recode - Colombia' /
   B1PF2_30  'b1pf2 recode - Czech' /
   B1PF2_31  'b1pf2 recode - England' /
   B1PF2_32  'b1pf2 recode - France' /
   B1PF2_33  'b1pf2 recode - Germany' /
   B1PF2_34  'b1pf2 recode - Greece' /
   B1PF2_35  'b1pf2 recode - Hungary' /
   B1PF2_36  'b1pf2 recode - Ireland' /
   B1PF2_37  'b1pf2 recode - Italy' /
   B1PF2_38  'b1pf2 recode - Norway' /
   B1PF2_39  'b1pf2 recode - Poland' /
   B1PF2_40  'b1pf2 recode - Portugal' /
   B1PF2_41  'b1pf2 recode - USSR-Russia' /
   B1PF2_42  'b1pf2 recode - Scotland' /
   B1PF2_43  'b1pf2 recode - Spain' /
   B1PF2_44  'b1pf2 recode - Sweden' /
   B1PF2_45  'b1pf2 recode - Netherlands' /
   B1PF2_46  'b1pf2 recode - Yugoslavia' /
   B1PF2_47  'b1pf2 recode - East Europe' /
   B1PF2_48  'b1pf2 recode - West Europe' /
   B1PF2_50  'b1pf2 recode - China' /
   B1PF2_51  'b1pf2 recode - India' /
   B1PF2_52  'b1pf2 recode - Japan' /
   B1PF2_53  'b1pf2 recode - Korea' /
   B1PF2_54  'b1pf2 recode - Philipines' /
   B1PF2_56  'b1pf2 recode - Taiwan' /
   B1PF2_57  'b1pf2 recode - Thailand' /
   B1PF2_58  'b1pf2 recode - Asia' /
   B1PF2_66  'b1pf2 recode - Africa' /
   B1PF2_69  'b1pf2 recode - Iraq' /
   B1PF2_70  'b1pf2 recode - Israel' /
   B1PF2_71  'b1pf2 recode - Lebanon' /
   B1PF2_74  'b1pf2 recode - Mideast' /
   B1PF2_96  'b1pf2 recode - Other (Specify)' /
   B1PF3     'Ethnic group best describes background' /
   B1PF3_1   'b1pf3 recode - ethnic group best describes' /
   B1PF4     'Closely identify with same ethnicity' /
   B1PF5     'Prefer to be with same ethnicity' /
   B1PF6     'Important to marry same ethnicity' /
   B1PF7A    'Racial origins #1' /
   B1PF7B    'Racial origins #2' /
   B1PF7C    'Racial origins #3' /
   B1PF7D    'Racial origins #4' /
   B1PF8A    'Racial background #1' /
   B1PF8B    'Racial background #2' /
   B1PF8_A   'Which best describes your race?' /
   B1PF9     'How closely identify with same race' /
   B1PF10    'How much prefer to be with same race' /
   B1PF11    'How important to marry same race' /
   B1PF12    'US citizen' /
   B1PF12A   'How closely identify as an American' /
   B1PF12B   'Citizenship country' /
   B1PG1     'Satisfied with life at present' /
   B1PG2     'Control over life in general at present' /
   B1PG3     'Satisfied with self at present' /
   B1PG4     'Rate contribution to others (whole life)' /
   B1PG5     'Disappointed by achievmnt (agree, disag)' /
   B1PG5A    'Disappoint by achievmn (agree/dis level)' /
   B1PG6     'Outgoing describes you' /
   B1PG7     'Worrying describes you' /
   B1PG8     'Curious describes you' /
   B1PG9     'Optimistic describes you' /
   B1PIDATE  'Date completed M2 phone interview' /
   B1SA1     'Rate health current' /
   B1SA2     'Rate health ten years ago' /
   B1SA3     'Rate health ten years future' /
   B1SA4     'Rate control over health' /
   B1SA5     'Rate thought/effort put into health' /
   B1SSATIS  'Life Satisfaction (5-item version)' /
   B1SSATIS2 'Life Satisfaction (6-item version)' /
   B1SA6A    'Compare energy now to five years ago' /
   B1SA6B    'Compare fitness now to five years ago' /
   B1SA6C    'Compare physique/figure to five yrs ago' /
   B1SA6D    'Compare weight to five years ago' /
   B1SA6E    'Compare memory to five years ago' /
   B1SA7A    'Compare overall health to oth your age' /
   B1SA7B    'Compare memory to others your age' /
   B1SA7C    'Compare vision to others your age' /
   B1SA7D    'Compare hearing to others your age' /
   B1SA8A    'Keeping healthy depends on things I do' /
   B1SA8B    'Things I can do to reduce hrt attck risk' /
   B1SA8C    'Things I can do to reduce cancer risk' /
   B1SA8D    'I work hard at trying to stay healthy' /
   B1SA8E    'Getting better is in doctor''s hands' /
   B1SA8F    'Difficult to get good medical care' /
   B1SHLOCS  'Health Locus of control-Self' /
   B1SHLOCO  'Health Locus of control-Others' /
   B1SA9A    'Often aware of various things in my body' /
   B1SA9B    'Sudden loud noises really bother me' /
   B1SA9C    'Hate to be too hot/too cold' /
   B1SA9D    'Quick to sense hunger contractions' /
   B1SA9E    'Low pain tolerance' /
   B1SAMPLI  'Somatic Amplification' /
   B1SA10A   'Headaches frequency (30 dys)' /
   B1SA10B   'Backaches frequency (30 dys)' /
   B1SA10C   'Sweat frequency (30 dys)' /
   B1SA10D   'Irritability freq (30 dys)' /
   B1SA10E   'Hot flushes/flashes frequency (30 dys)' /
   B1SA10F   'Aches/joint stiffness frequnecy (30 dys)' /
   B1SA10G   'Falling/staying sleep frequency (30 dys)' /
   B1SA10H   'Leaking urine frequency (30 dys)' /
   B1SA10I   'Intercourse pain/discomfort freq (30dys)' /
   B1SA10J   'Extremities aches/pain freq (30 dys)' /
   B1SA11A   'Asthma/bronchitis/emphysema ever (12 mo)' /
   B1SA11B   'Tuberculosis ever (12 mo)' /
   B1SA11C   'Other lung problems ever (12 mo)' /
   B1SA11D   'Joint/bone diseases ever (12 mo)' /
   B1SA11E   'Sciatica/lumbago/backache ever (12 mo)' /
   B1SA11F   'Skin trouble persistent ever (12 mo)' /
   B1SA11G   'Thyroid disease ever (12 mo)' /
   B1SA11H   'Hay fever ever (12 mo)' /
   B1SA11I   'Stomach trouble ever (12 mo)' /
   B1SA11J   'Urinary/bladder problem ever (12 mo)' /
   B1SA11K   'Constipated all/most ever (12 mo)' /
   B1SA11L   'Gall bladder trouble ever (12 mo)' /
   B1SA11M   'Foot trouble persistent ever (12 mo)' /
   B1SA11N   'Varicose veins ever (12 mo)' /
   B1SA11O   'AIDS/HIV ever (12 mo)' /
   B1SA11P   'Lupus/autoimmune disorder ever (12 mo)' /
   B1SA11Q   'Gum/mouth trouble persistent ever (12 mo)' /
   B1SA11R   'Teeth trouble persistent ever (12 mo)' /
   B1SA11S   'High blood press/hypertensn ever (12 mo)' /
   B1SA11T   'Anxiety/depression ever (12 mo)' /
   B1SA11U   'Alcohol/drug problem ever (12 mo)' /
   B1SA11V   'Migraine headaches ever (12 mo)' /
   B1SA11W   'Chronic sleep problems ever (12 mo)' /
   B1SA11X   'Diabetes/high blood sugar ever (12 mo)' /
   B1SA11Y   'Neurological disorder ever (12 mo)' /
   B1SA11Z   'Stroke ever (12 mo)' /
   B1SA11AA  'Ulcer ever (12 mo)' /
   B1SA11BB  'Hernia ever (12 mo)' /
   B1SA11CC  'Piles/hemorrhoids ever (12 mo)' /
   B1SA11DD  'Swallowing problems ever (12 mo)' /
   B1SCHROX  'Having any chronic conditions' /
   B1SCHRON  'Number Chronic Conditions (12 mo)' /
   B1SA12A   'RX hypertension ever (30 dys)' /
   B1SA12AY  'RX hypertension frequency (30 dys)' /
   B1SA12B   'RX diabetes ever (30 dys)' /
   B1SA12BY  'RX diabetes frequency (30 dys)' /
   B1SA12C   'RX cholesterol ever (30 dys)' /
   B1SA12CY  'RX cholesterol frequency (30 dys)' /
   B1SA12D   'RX heart condition ever (30dys)' /
   B1SA12DY  'RX heart condition frequency (30 dys)' /
   B1SA12E   'RX lung problems ever (30 dys)' /
   B1SA12EY  'RX lung problems frequency (30 dys)' /
   B1SA12F   'RX ulcer ever (30 dys)' /
   B1SA12FY  'RX ulcer frequency (30 dys)' /
   B1SA12G   'RX arthritis ever (30 dys)' /
   B1SA12GY  'RX arthritis frequency (30 dys)' /
   B1SA12H   'RX hormone therapy ever (30 days)' /
   B1SA12HY  'RX hormone therapy frequency (30 dys)' /
   B1SA12I   'RX birth control ever (30 dys)' /
   B1SA12IY  'RX birth control frequency (30 dys)' /
   B1SA12J   'RX headaches ever (30 dys)' /
   B1SA12JY  'RX headaches frequency (30 dys)' /
   B1SA12K   'RX anxiety/depression ever (30 dys)' /
   B1SA12KY  'RX anxiety/depression freq (30 dys)' /
   B1SA12L   'RX pain ever (30 dys)' /
   B1SA12LY  'RX pain frequency (30 dys)' /
   B1SRXMEX  'Took any RX medicine (30 dys)' /
   B1SRXMED  'Total Numbers Rx medicine taking' /
   B1SA13A   'Taken aspirin ever (30 dys)' /
   B1SA13AY  'Taken aspirin frequency (30 dys)' /
   B1SA13B   'Taken acetaminophen ever (30 dys)' /
   B1SA13BY  'Taken acetaminophen frequency (30 dys)' /
   B1SA13C   'Taken ibuprofen ever (30 dys)' /
   B1SA13CY  'Taken ibuprofen frequency (30 dys)' /
   B1SA13D   'Taken naproxen ever (30 dys)' /
   B1SA13DY  'Taken naproxen frequency (30 dys)' /
   B1SA14A   'Takes multi-vitamins regularly' /
   B1SA14B   'Takes vitamin C regularly' /
   B1SA14C   'Takes iron regularly' /
   B1SA14D   'Takes calcium regularly' /
   B1SA14E   'Takes St John''s regularly' /
   B1SA14F   'Takes gingko biloba regularly' /
   B1SA14G   'Takes echinacea regularly' /
   B1SA14H   'Takes other supplement regularly' /
   B1SA14I   'Takes garlic regularly' /
   B1SA14J   'Takes feverfew regularly' /
   B1SA14K   'Takes ephededra/Ma Huang regularly' /
   B1SA14L   'Takes saw palmetto regularly' /
   B1SA14M   'Takes glucosamine/condroitin regularly' /
   B1SA14N   'Takes fish oil regularly' /
   B1SA14O   'Takes flaxseed regularly' /
   B1SSPLMX  'Takes any supplements regularly' /
   B1SSPLMN  'Total numbers of supplements taking' /
   B1SA15    'Has chronic pain/persists beyond normal' /
   B1SA16    'Pain interfered w/ activity (past week)' /
   B1SA17    'Pain interfered w/ mood (past week)' /
   B1SA18    'Pain interfered w/ relations (past week)' /
   B1SA19    'Pain interfered w/ sleep (past week)' /
   B1SA20    'Pain interfered w/ enjoyment (past week)' /
   B1SA21A   'Head primary pain located' /
   B1SA21B   'Neck primary pain located' /
   B1SA21C   'Back primary pain located' /
   B1SA21D   'Arms primary pain located' /
   B1SA21E   'Legs primary pain located' /
   B1SA21F   'Other location primary pain located' /
   B1SA21G   'Shoulders primary pain located' /
   B1SA21H   'Hips primary pain located' /
   B1SA21I   'Knees primary pain located' /
   B1SA22    'Seen physician/professional about pain' /
   B1SA23    'Pain diagnosis by physician' /
   B1SA24A   'Felt so sad no could cheer freq (30 dys)' /
   B1SA24B   'Felt nervous frequency (30 dys)' /
   B1SA24C   'Felt restless frequency (30 dys)' /
   B1SA24D   'Felt hopeless frequency (30 dys)' /
   B1SA24E   'Felt everything was effort freq (30 dys)' /
   B1SA24F   'Felt worthless frequency (30 dys)' /
   B1SA24G   'Felt lonely frequency (30 dys)' /
   B1SA24H   'Felt afraid frequency (30 dys)' /
   B1SA24I   'Felt jittery frequency (30 dys)' /
   B1SA24J   'Felt irritable frequency (30 dys)' /
   B1SA24K   'Felt ashamed frequency (30 dys)' /
   B1SA24L   'Felt upset frequency (30 dys)' /
   B1SA24M   'Felt angry frequency (30 dys)' /
   B1SA24N   'Felt frustrated frequency (30 dys)' /
   B1SA25    'More or less than usual negative feelings' /
   B1SNEGAF  'Negative affect (Parallel M1 items)' /
   B1SNEGPA  'Negative affect from PANAS (MIDUS2 new)' /
   B1SA26A   'Felt cheerful frequency (30 dys)' /
   B1SA26B   'Felt good spirits frequency (30 dys)' /
   B1SA26C   'Felt extremely happy frequency (30 dys)' /
   B1SA26D   'Felt calm and peaceful freq (30 dys)' /
   B1SA26E   'Felt satisfied frequency (30 dys)' /
   B1SA26F   'Felt full of life frequency (30 dys)' /
   B1SA26G   'Felt close to others frequency (30 dys)' /
   B1SA26H   'Felt belong frequency (30 dys)' /
   B1SA26I   'Felt enthusiastic frequency (30 dys)' /
   B1SA26J   'Felt attentive frequency (30 dys)' /
   B1SA26K   'Felt proud frequency (30 dys)' /
   B1SA26L   'Felt active frequency (30 dys)' /
   B1SA26M   'Felt confident frequency (30 dys)' /
   B1SA27    'More or less than usual positive feelings' /
   B1SPOSAF  'Positive affect (Parallel M1 items)' /
   B1SPOSPA  'Positive affect from PANAS (MIDUS2 new)' /
   B1SA28A   'Health limits lifting/carrying groceries' /
   B1SA28B   'Health limits bathing/dressing self' /
   B1SA28C   'Health limits climb several flight stair' /
   B1SA28D   'Health limits climb one flight of stairs' /
   B1SA28E   'Health limits bending/kneeling/stooping' /
   B1SA28F   'Health limits walking more than one mile' /
   B1SA28G   'Health limits walking several blocks' /
   B1SA28H   'Health limits walking one block' /
   B1SA28I   'Health limits vigorous activity' /
   B1SA28J   'Health limits moderate activity' /
   B1SBADL1  'Basic Activity of Daily Living' /
   B1SBADL2  'Basic Activity of Daily Living (3-item version)' /
   B1SIADL   'Intermediate Activity of Daily Living' /
   B1SA29A   'Short breath hurry ground/walk slight hill' /
   B1SA29B   'Short breath walk w/ peer level ground' /
   B1SA29C   'Short breath walk own pace level ground' /
   B1SA29D   'Short breath washing/dressing' /
   B1SDYSPN  'Progressive Levels of Dyspnea' /
   B1SA30A   'Vigorous job activity frequency (summer)' /
   B1SA30B   'Vigorous job activity frequency (winter)' /
   B1SA30C   'Vigorous chores activity freq (summer)' /
   B1SA30D   'Vigorous chores activity freq (winter)' /
   B1SA30E   'Vigorous leisure activity freq (summer)' /
   B1SA30F   'Vigorous leisure activity freq (winter)' /
   B1SA31A   'Moderate job activity frequency (summer)' /
   B1SA31B   'Moderate job activity frequency (winter)' /
   B1SA31C   'Moderate chores activity freq (summer)' /
   B1SA31D   'Moderate chores activity freq (winter)' /
   B1SA31E   'Moderate leisure activity freq (summer)' /
   B1SA31F   'Moderate leisure activity freq (winter)' /
   B1SA32A   'Light job activity frequency (summer)' /
   B1SA32B   'Light job activity frequency (winter)' /
   B1SA32C   'Light chores activity frequency (summer)' /
   B1SA32D   'Light chores activity frequency (winter)' /
   B1SA32E   'Light leisure activity freq (summer)' /
   B1SA32F   'Light leisure activity freq (winter)' /
   B1SA33A   'Read books/magazines/news frequency' /
   B1SA33B   'Do word games frequency' /
   B1SA33C   'Play cards/other games frequency' /
   B1SA33D   'Attend lectures/courses frequency' /
   B1SA33E   'Writing frequency' /
   B1SA33F   'Use computer frequency' /
   B1SA34A   'Could learn friend''s zip code if forgot' /
   B1SA34B   'Intellectual decline inevitable as age' /
   B1SA34C   'Ask salesprsn how much saved w/ discount' /
   B1SA34D   'Older I get, harder it is to think clear' /
   B1SA34E   'Long as exercise my mind, be on top' /
   B1SA34F   'Mental acuity bound to decline' /
   B1SA34G   'Understand instructions after explained' /
   B1SA34H   'No remember things as well as used to' /
   B1SA34I   'Not much can do to keep memory from down' /
   B1SINTAG  'Personality in Intellectual Aging Context' /
   B1SA35    'Waist around navel (inches)' /
   B1SA36    'Hips at widest point (inches)' /
   B1SWSTHI  'Waist-to-Hip Ratio' /
   B1SA37A   'Height (feet)' /
   B1SA37B   'Height (inches)' /
   B1SA38    'Perception of weight (over, under, etc)' /
   B1SA39    'Weight current (pounds)' /
   B1SA40    'Weight one year ago (pounds)' /
   B1SA41    'Weight ten years ago (pounds)' /
   B1SA42    'Number times lost 10+ pounds (10 yrs)' /
   B1SA43A   'Lose 10 pounds because of health problem' /
   B1SA43B   'Lose 10 pounds by diet or exercise' /
   B1SA43C   'Lose 10 pounds by other reason' /
   B1SBMI    'Body Mass Index' /
   B1SA44    'Anesthesia ever' /
   B1SA45    'Anesthesia most recent year' /
   B1SA46    'Num times hospitalized overnight (12 mo)' /
   B1SA47    'Total number nights in hospital (12 mo)' /
   B1SA48A   'Private clinic usual healthcare place' /
   B1SA48B   'HMO usual healthcare place' /
   B1SA48C   'Public clinic usual healthcare place' /
   B1SA48D   'Outpatient hospital usual hlthcare place' /
   B1SA48E   'Emergency room usual healthcare place' /
   B1SA48F   'Urgent care usual healthcare place' /
   B1SA48G   'Other place usual healthcare place' /
   B1SA48H   'No usual healthcare place' /
   B1SA49    'Most often visited healthcare place' /
   B1SA50A   'Family doctor seen for healthcare' /
   B1SA50B   'Obstetrician/gynecol seen for healthcare' /
   B1SA50C   'Internist seen for healthcare' /
   B1SA50D   'Chiropractor seen for healthcare' /
   B1SA50E   'Phy assist/nurse pract seen for hlthcare' /
   B1SA50F   'Other professional seen for healthcare' /
   B1SA50G   'Homeopathic seen for healthcare' /
   B1SA50H   'No one in particular seen for healthcare' /
   B1SA51    'Most seen healthcare professional' /
   B1SA52    'Needed med care, couldn''t get it (12 mo)' /
   B1SA53A   'Num times physical routine exam (12 mo)' /
   B1SA53B   'Number times dental routine exam (12 mo)' /
   B1SA53C   'Num times optical routine exam (12 mo)' /
   B1SA53D   'Number times urgent care (12 mo)' /
   B1SA53E   'Num times scheduled treat/surgery (12 mo)' /
   B1SUSEMD  'Number Times Seeing Medical Doctor (12 mo)' /
   B1SA54A   '# times psychiatrist for ment hlth (12mo)' /
   B1SA54B   '# time genrl doctor for mentl hlth(12mo)' /
   B1SA54C   '# time counselor for mental hlth (12 mo)' /
   B1SA54D   '# time religious for mental hlth (12 mo)' /
   B1SUSEMH  'Number Times Saw Mental Hlth Profsnl (12mo)' /
   B1SA55A   'Ever attended substance problems group' /
   B1SA55AY  'First age substance problems group' /
   B1SA55AZ  'Number times substance problems group' /
   B1SA55B   'Ever attended emotional problems group' /
   B1SA55BY  '1st age attended emotional prob group' /
   B1SA55BZ  'Num times attended emotional prob group' /
   B1SA55C   'Ever attended eating problems group' /
   B1SA55CY  'First age eating problems group' /
   B1SA55CZ  'Number times eating problems group' /
   B1SA55D   'Ever attended loss of loved one group' /
   B1SA55DY  '1st age attended loss of loved one group' /
   B1SA55DZ  'Num time attended loss of loved one group' /
   B1SA55E   'Ever attended life transitions group' /
   B1SA55EY  '1st age attended life transitions group' /
   B1SA55EZ  'Num time attended life transitions group' /
   B1SA55F   'Ever attended survivors group' /
   B1SA55FY  'First age attended survivors group' /
   B1SA55FZ  'Num time attended survivors group' /
   B1SA55G   'Ever attended phys disabilities group' /
   B1SA55GY  '1st age attended phys disabilities group' /
   B1SA55GZ  'Num times attended phys disabilities grp' /
   B1SA55H   'Ever attended parent support group' /
   B1SA55HY  '1st age attended parent support group' /
   B1SA55HZ  'Num times attended parent support group' /
   B1SA55I   'Ever attended family with illness group' /
   B1SA55IY  '1st age attended family with illness grp' /
   B1SA55IZ  'Num times attended family w/ illness grp' /
   B1SA55J   'Ever attended family w/ emot/subst grp' /
   B1SA55JY  '1st age attended famil w/ emot/subst grp' /
   B1SA55JZ  'Num times attended fam w/ emot/subst grp' /
   B1SA55K   'Ever attended oth selfhelp/support grp' /
   B1SA55KY  '1st age attend oth selfhelp/support grp' /
   B1SA55KZ  'Num times attend oth selfhelp/support grp' /
   B1SA56A   'Acupuncture frequency (12 mo)' /
   B1SA56B   'Biofeedback frequency (12 mo)' /
   B1SA56C   'Chiropractor frequency (12 mo)' /
   B1SA56D   'Energy healing frequency (12 mo)' /
   B1SA56E   'Phys/occupational therapy freq (12 mo)' /
   B1SA56F   'Exercise/movement therapy freq (12 mo)' /
   B1SA56G   'Herbal therapy frequency (12 mo)' /
   B1SA56H   'High dose mega-vitamins frequency (12mo)' /
   B1SA56I   'Homeopathy frequency (12 mo)' /
   B1SA56J   'Hypnosis frequency (12 mo)' /
   B1SA56K   'Imagery techniques frequency (12 mo)' /
   B1SA56L   'Massage therapy frequency (12 ms)' /
   B1SA56M   'Prayer/other spiritual freq (12 mo)' /
   B1SA56N   'Relaxation/mediation frequency (12 mo)' /
   B1SA56O   'Physician prescribed diet freq (12 mo)' /
   B1SA56P   'Weight control diet frequency (12 mo)' /
   B1SA56Q   'Special diet frequency (12 mo)' /
   B1SA56R   'Spiritual healing by others freq (12 mo)' /
   B1SA56S   'Oth non-traditional therapy freq (12 mo)' /
   B1SA57A   'Hours of sleep on workdays' /
   B1SA57B   'Minutes of sleep on workdays' /
   B1SA58A   'Hours of sleep on non-workdays' /
   B1SA58B   'Minutes of sleep on non-workdays' /
   B1SA59A   'Hours usually takes to fall asleep' /
   B1SA59B   'Minutes usually takes to fall asleep' /
   B1SA60    'Num times nap for 5+ minutes (per week)' /
   B1SA61A   'Trouble fall asleep frequency' /
   B1SA61B   'Wake up during the night frequency' /
   B1SA61C   'Wake up too early frequency' /
   B1SA61D   'Feel unrested during the day frequency' /
   B1SA62A   'Used sedatives on own ever (12 mo)' /
   B1SA62B   'Used tranquilizers on own ever (12 mo)' /
   B1SA62C   'Used stimulants on own ever (12 mo)' /
   B1SA62D   'Used painkillers on own ever (12 mo)' /
   B1SA62E   'Used depress meds on own ever (12 mo)' /
   B1SA62F   'Used inhalants on own ever (12 mo)' /
   B1SA62G   'Used marijuana/hash on own ever (12 mo)' /
   B1SA62H   'Used cocaine/crack on own ever (12 mo)' /
   B1SA62I   'Used LSD/oth halluc on own ever (12 mo)' /
   B1SA62J   'Used heroin on own ever (12 mo)' /
   B1SA63    '# times subst more than intended (12mo)' /
   B1SA64    '# times subst effects at work/etc (12mo)' /
   B1SA65A   'Subst increased chance of hurt (12 mo)' /
   B1SA65B   'Emotional problems from subst (12 mo)' /
   B1SA65C   'Strong desire for substance (12 mo)' /
   B1SA65D   '1+ month a lot time using subst (12 mo)' /
   B1SA65E   'Needed more subst to get effect (12 mo)' /
   B1SA66A   'Emotional problems from drinking (12 mo)' /
   B1SA66B   'Desire/urge from drinking (12 mo)' /
   B1SA66C   '1+ month much time drinking (12 mo)' /
   B1SA66D   'Had drink more to get effects (12 mo)' /
   B1SALCOH  'Alcohol Problem (12 mo)' /
   B1SA67    '# times alcoh more than intended (12mo)' /
   B1SA68    '# times alcoh effects at work/etc (12mo)' /
   B1SB1     'Had menstrual period in last year' /
   B1SB2A    'Meds stopped menstrual period' /
   B1SB2B    'Pregnancy stopped menstrual period' /
   B1SB2C    'Severe weight loss stopped menstr period' /
   B1SB2D    'Menopause stopped menstrual period' /
   B1SB2E    'Hysterectomy stopped menstrual period' /
   B1SB3     'Year of last menstrual period (irreg)' /
   B1SB4     'Had menstr period last 3 mos (regular)' /
   B1SB5A    'Month of last menstrual period (regular)' /
   B1SB5B    'Day of last menstrual period (regular)' /
   B1SB5C    'Year of last menstrual period (regular)' /
   B1SB6     'Num days btwn periods less predict now' /
   B1SB7     'Menstrual flow lighter, heavier, same' /
   B1SB8A1   'Birth control name and dosage' /
   B1SB8A2   'Taking birth control currently' /
   B1SB8A3   'Taken birth control in past' /
   B1SB8A4   'Number years taken birth control' /
   B1SB8B1   'Fertility drugs name and dosage' /
   B1SB8B2   'Taking fertility drugs currently' /
   B1SB8B3   'Taken fertility drugs in past' /
   B1SB8B4   'Number years taken fertility drugs' /
   B1SB8C1   'Other female hormones name and dosage' /
   B1SB8C2   'Taking other female hormones currently' /
   B1SB8C3   'Taken other female hormones in past' /
   B1SB8C4   'Number years taken other female hormones' /
   B1SB9     'Doctor who prescribed other hormones' /
   B1SB10    'Gender of doctor prescribed oth hormones' /
   B1SB11A   'Hot flashes reason for other hormones' /
   B1SB11B   'Vaginal dryness reason for oth hormones' /
   B1SB11C   'Regulate periods reason for oth hormones' /
   B1SB11D   'Prevent osteoper reason for oth hormones' /
   B1SB11E   'Prevent hrt disease rsn for oth hormones' /
   B1SB11F   'Improve memory reason for other hormones' /
   B1SB11G   'Endometriosis reason for other hormones' /
   B1SB11H   'Ovary removed reason for other hormones' /
   B1SB11I   'Other reason for other hormones' /
   B1SB12A   'Month start taking other hormones' /
   B1SB12B   'Year start taking other hormones' /
   B1SB13A   'Month stop taking female hormones' /
   B1SB13B   'Year stop taking female hormones' /
   B1SB14A   'No sympts reason stop other hormones' /
   B1SB14B   'Concern risks reason for stop oth hormon' /
   B1SB14C   'Try else reason for stop oth hormones' /
   B1SB14D   'Other reason for stopping other hormones' /
   B1SB15    'Discuss stopping oth hormones w/ doctor' /
   B1SB16    'Provider recommended stop other hormones' /
   B1SB17A   'Pain relievers for menopausal symptoms' /
   B1SB17B   'Sleeping pills for menopausal symptoms' /
   B1SB17C   'Creams/jellies for menopausal symptoms' /
   B1SB17D   'Soy/flaxeed for menopausal symptoms' /
   B1SB17E   'Plants for menopausal symptoms' /
   B1SB17F   'Gingko biloba for menopausal symptoms' /
   B1SB17G   'Other supplements for menopausal symptms' /
   B1SB18    'Relief or regret menstrual periods stop' /
   B1SB19A   'Worry about infertility as get older' /
   B1SB19B   'Worry about less attractive as get older' /
   B1SB19C   'Worry about illness as get older' /
   B1SC1     'Covered by hlthcare insurance currently' /
   B1SC2A    'Reason - can''t afford premium' /
   B1SC2B    'Reason - lost job' /
   B1SC2C    'Reason - spouse or parent lost job' /
   B1SC2D    'Reason - divorced or separated' /
   B1SC2E    'Reason - spouse or parent died' /
   B1SC2F    'Reason - become ineligible' /
   B1SC2G    'Reason - employer doesn''t/stopped offer' /
   B1SC2H    'Reason - became part time' /
   B1SC2I    'Reason - benefits ran out' /
   B1SC2J    'Reason - insurance company refused' /
   B1SC2K    'Reason - lost fed assitance eligibility' /
   B1SC2L    'Reason - other' /
   B1SC3A    'R: Insurer directly provides hlth insur' /
   B1SC3B    'R: Employer provides health insurance' /
   B1SC3C    'R: SP''s employer provides hlth insurance' /
   B1SC3D    'R: Union provides health insurance' /
   B1SC3E    'R: SP''s union provides health insurance' /
   B1SC3F    'R: Medicare provides health insurance' /
   B1SC3G    'R: Medicaid/oth provides hlth insurance' /
   B1SC3H    'R: Military provides health insurance' /
   B1SC4     'R: Has dental health care insurance' /
   B1SC5     'R: Any RX meds covered by hlth insurance' /
   B1SC6     'R: Ment hlth visits covered by hlt insur' /
   B1SC7A    'Employer health insurance available' /
   B1SC7B    'SP''s employer hlth insurance available' /
   B1SC7C    'Union health insurance available' /
   B1SC7D    'SP''s union health insurance available' /
   B1SC8A    'Medicare health insurance available' /
   B1SC8B    'Medicaid health insurance available' /
   B1SC8C    'Military health insurance available' /
   B1SC9A    'SP: Insurer directly provides hlth insur' /
   B1SC9B    'SP: R''s employ provides health insurance' /
   B1SC9C    'SP: SP''s own employ provides hlth insur' /
   B1SC9D    'SP: R''s union provides health insurance' /
   B1SC9E    'SP: SP''s own union provides health insur' /
   B1SC9F    'SP: Medicare provides health insurance' /
   B1SC9G    'SP: Medicaid/oth provides hlth insurance' /
   B1SC9H    'SP: Military provides health insurance' /
   B1SC10    'SP: Has dental health care insurance' /
   B1SC11    'SP: Any RX meds covered by hlth insuranc' /
   B1SC12    'SP: Ment hlth visits cover by hlth insur' /
   B1SD1     'Biological mother still alive' /
   B1SD1A    'Age of biological mother' /
   B1SD1B    'Rate physical hlth of biological mother' /
   B1SD1C    'Death of biological mother (year)' /
   B1SD1D    'Mother''s age at time of death' /
   B1SD2     'Biological father still alive' /
   B1SD2A    'Age of biological father' /
   B1SD2B    'Rate physical hlth of biological father' /
   B1SD2C    'Death of biological father (year)' /
   B1SD2D    'Father''s age at time of death' /
   B1SE1A    'Not afraid to voice opinions in oppositn' /
   B1SE1B    'In charge of situation in which I live' /
   B1SE1C    'No interested activities expand horizons' /
   B1SE1D    'Most see me as loving/affectionate' /
   B1SE1E    'Live life day by day, no think about future' /
   B1SE1F    'Pleased with how life turned out' /
   B1SE1G    'Decisions nor influenced by others doing' /
   B1SE1H    'Demands of everyday life oft get me down' /
   B1SE1I    'Experience challenge how think important' /
   B1SE1J    'Maintaining close relationships difficlt' /
   B1SE1K    'Have sense of direction/purpose in life' /
   B1SE1L    'Feel positive/confident about self' /
   B1SE1M    'Influenced by people w/ strong opinions' /
   B1SE1N    'Don''t fit in w/ people and community' /
   B1SE1O    'Haven''t improved as person over years' /
   B1SE1P    'Few close friends to share concerns with' /
   B1SE1Q    'No good sense of what try to accomplish' /
   B1SE1R    'Others gotten more out of life than I' /
   B1SE1S    'Confidence in my opinions even if contrary' /
   B1SE1T    'Good managing daily responsibilities' /
   B1SE1U    'Developed a lot as person over time' /
   B1SE1V    'Enjoy conversations w/ family & friends' /
   B1SE1W    'Daily activities seem trivial & unimport' /
   B1SE1X    'Like most aspects of my personality' /
   B1SE1Y    'Difficult voice opinion on controversial' /
   B1SE1Z    'Overwhelmed by my responsibilities' /
   B1SE1AA   'Life process of learning/changing/growth' /
   B1SE1BB   'Others describe me as giving/share time' /
   B1SE1CC   'Enjoy make plans for future & make real' /
   B1SE1DD   'Disappointed about achievements in life' /
   B1SE1EE   'Worry about what others think of me' /
   B1SE1FF   'Diffclt arranging life in satisfying way' /
   B1SE1GG   'Gave up try making improvements long ago' /
   B1SE1HH   'No experience warm & trusting relations' /
   B1SE1II   'Actively carry out plans I set for self' /
   B1SE1JJ   'Self attitude not as positive as others' /
   B1SE1KK   'Judge self by what I think is important' /
   B1SE1LL   'Able to build lifestyle to my liking' /
   B1SE1MM   'No enjoy situations require change ways' /
   B1SE1NN   'I can trust friends & they can trust me' /
   B1SE1OO   'Some wander aimlessly, but not me' /
   B1SE1PP   'Feel good when compare myself to friends' /
   B1SE1QQ   'Done all there is to do in life' /
   B1SPWBA1  'Autonomy (Psych Well-Being 3-item)' /
   B1SPWBE1  'Environmental Mastery (Psych Well-Being 3-item)' /
   B1SPWBG1  'Personal Growth (Psych Well-Being 3-item)' /
   B1SPWBR1  'Positive relations with others (Psych Well-Being 3-item)' /
   B1SPWBU1  'Purpose in Life (Psych Well-Being 3-item)' /
   B1SPWBS1  'Self Acceptance (Psych Well-Being 3-item)' /
   B1SPWBA2  'Autonomy (Psych Well-Being 7-item)' /
   B1SPWBE2  'Environmental Mastery (Psych Well-Being 7-item)' /
   B1SPWBG2  'Personal Growth (Psych Well-Being 7-item)' /
   B1SPWBR2  'Positive Relations w/ others (Psych Well-Being 7-item)' /
   B1SPWBU2  'Purpose in Life (Psych Well-Being 7-item)' /
   B1SPWBS2  'Self Acceptance (Psych Well-Being 7-item)' /
   B1SE2A    'Autonomy important for good life' /
   B1SE2B    'Good job important for good life' /
   B1SE2C    'Learning/growth important for good life' /
   B1SE2D    'Life''s pleasures important for good life' /
   B1SE2E    'Enough money important for good life' /
   B1SE2F    'Extra money important for good life' /
   B1SE2G    'Faith important for good life' /
   B1SE2H    'Giving to community import for good life' /
   B1SE2I    'Love/care for self import for good life' /
   B1SE2J    'Physical fitness important for good life' /
   B1SE2K    'Positiv attitude important for good life' /
   B1SE2L    'Family relations important for good life' /
   B1SE2M    'Friend relations important for good life' /
   B1SE2N    'Relax/peace important for good life' /
   B1SE2O    'Absence of illness import for good life' /
   B1SE2P    'Sense of accomplish import for good life' /
   B1SE2Q    'Sense of purpose important for good life' /
   B1SE3     'Rank standing in community on ladder' /
   B1SE4A    'Little can do to change important things' /
   B1SE4B    'Helpless dealing with problems of life' /
   B1SE4C    'Do just about anything I set my mind to' /
   B1SE4D    'Oths determine what I can and cannot do' /
   B1SE4E    'What happens in life is beyond my ctrl' /
   B1SE4F    'When really want something, find way' /
   B1SE4G    'Many things interfere w/ what I want do' /
   B1SE4H    'Whether I get what want is in own hands' /
   B1SE4I    'Little control over things happen to me' /
   B1SE4J    'Really no way I can solve probs I have' /
   B1SE4K    'Feel pushed around in life' /
   B1SE4L    'Happens to me in future depends on me' /
   B1SMASTE  'Personal Mastery' /
   B1SCONST  'Perceived Constraints' /
   B1SCTRL   'Sense of Control (Mastery + Constraints)' /
   B1SE4M    'No better/worse than others' /
   B1SE4N    'Take positive attitude toward self' /
   B1SE4O    'Feel no good at all at times' /
   B1SE4P    'Able to do things as well as most people' /
   B1SE4Q    'Wish have more respect for myself' /
   B1SE4R    'On the whole, I''m satisfied with myself' /
   B1SE4S    'Certainly feel useless at times' /
   B1SESTEE  'Self-esteem' /
   B1SE4T    'Act same way no matter who I''m with' /
   B1SE4U    'Enjoy being unique/different from others' /
   B1SE4V    'My happiness depends on happiness of oth' /
   B1SE4W    'Relations more important than accomplish' /
   B1SE4X    'Able to care of self is primary concern' /
   B1SE4Y    'Important to listen to others'' opinions' /
   B1SINTER  'Self-Construal: Interdependence' /
   B1SINDEP  'Self-Construal: Independence' /
   B1SE5A    'Choose goals: Focus or keep options open' /
   B1SE5B    'Reach goals: Practice skill or opportun' /
   B1SE5C    'No have skill for goal: Seek or reconsid' /
   B1SE5D    'Difficult: Change circums or hang tough' /
   B1SE5E    'Approach phys hlth: Stay fit or no worry' /
   B1SE6A    'Outgoing describes you how well' /
   B1SE6B    'Helpful describes you how well' /
   B1SE6C    'Moody describes you how well' /
   B1SE6D    'Organized describes you how well' /
   B1SE6E    'Self confident describes you how well' /
   B1SE6F    'Friendly describes you how well' /
   B1SE6G    'Warm describes you how well' /
   B1SE6H    'Worrying describes you how well' /
   B1SE6I    'Responsible describes you how well' /
   B1SE6J    'Forceful describes you how well' /
   B1SE6K    'Lively describes you how well' /
   B1SE6L    'Caring describes you how well' /
   B1SE6M    'Nervous describes you how well' /
   B1SE6N    'Creative describes you how well' /
   B1SE6O    'Assertive describes you how well' /
   B1SE6P    'Hardworking describes you how well' /
   B1SE6Q    'Imaginative describes you how well' /
   B1SE6R    'Softhearted describes you how well' /
   B1SE6S    'Calm describes you how well' /
   B1SE6T    'Outspoken describes you how well' /
   B1SE6U    'Intelligent describes you how well' /
   B1SE6V    'Curious describes you how well' /
   B1SE6W    'Active describes you how well' /
   B1SE6X    'Careless describes you how well' /
   B1SE6Y    'Broad minded describes you how well' /
   B1SE6Z    'Sympathetic describes you how well' /
   B1SE6AA   'Talkative describes you how well' /
   B1SE6BB   'Sophisticated describes you how well' /
   B1SE6CC   'Adventurous describes you how well' /
   B1SE6DD   'Dominant describes you how well' /
   B1SE6EE   'Thorough describes you how well' /
   B1SAGENC  'Agency Personality Trait' /
   B1SAGREE  'Agreeableness Personality Trait' /
   B1SEXTRA  'Extraversion Personality Trait' /
   B1SNEURO  'Neuroticism Personality Trait' /
   B1SCONS1  'Conscientiousness Personality Trait (Parallel M1 items)' /
   B1SCONS2  'Conscientiousness Personality Trait (M1 items + 1 additional)' /
   B1SOPEN   'Openness Personality Trait' /
   B1SE7A    'Like spend free time w/ frnds, no alone' /
   B1SE7B    'Faced w/ decision, weigh possibilities' /
   B1SE7C    'Seek friend when unhappy, no stay alone' /
   B1SE7D    'Fun/exciting to be in an earthquake' /
   B1SE7E    'In social situation, like else to lead' /
   B1SE7F    'Like think things over before doing them' /
   B1SE7G    'People often try to take advantage of me' /
   B1SE7H    'I am a warm person, not cool/distant' /
   B1SE7I    'When angry I am ready to hit someone' /
   B1SE7J    'Effective talking people into things' /
   B1SE7K    'My mood often goes up and down' /
   B1SE7L    'Keep working on probs after oths give up' /
   B1SE7M    'Opposed censor b/c against free speech' /
   B1SE7N    'I''m very good at influencing people' /
   B1SE7O    'I like to try difficult things' /
   B1SE7P    'More successful if people no make dffclt' /
   B1SE7Q    'Usually find ways to liven up my day' /
   B1SE7R    'I like hard work' /
   B1SE7S    'People often say mean things about me' /
   B1SE7T    'Enjoy hurting by saying mean things' /
   B1SE7U    'People should obey moral law more strict' /
   B1SE7V    'Fun learning to walk tightrope' /
   B1SE7W    'Get upset/tense when think about day' /
   B1SE7X    'Minor setbacks irritate me too much' /
   B1SE7Y    'I am a cautious person' /
   B1SE7Z    'No like religious authority overturned' /
   B1SE7AA   'Life is a great adventure' /
   B1SE7BB   'When people insult me, try to get even' /
   B1SE7CC   'Often prefer not have others around me' /
   B1SE7DD   'When make decisions, others turn to me' /
   B1SE7EE   'Sometimes just like to hit someone' /
   B1SE7FF   'Set very high standards for self in work' /
   B1SE7GG   'Have something exciting to look forward' /
   B1SE8     'Dislike rapids or waiting more' /
   B1SE8A    'Level dislike rapids or waiting more' /
   B1SE9     'Dislike lions or no get into circus' /
   B1SE9A    'Level dislike lions or no get in circus' /
   B1SMPQWB  'Well Being (Multidimension Personality)' /
   B1SMPQSP  'Social Potency (Multidimension Personality)' /
   B1SMPQAC  'Achievement (Multidimension Personality)' /
   B1SMPQSC  'Social Closeness (Multidimension Personality)' /
   B1SMPQSR  'Reactivity (Multidimension Personality)' /
   B1SMPQAG  'Aggression (Multidimension Personality)' /
   B1SMPQAL  'Alienation (Multidimension Personality)' /
   B1SMPQCN  'Control (Multidimension Personality)' /
   B1SMPQTR  'Traditionalism (Multidimension Personality)' /
   B1SMPQHA  'Harm avoidance (Multidimension Personality)' /
   B1SE10A   'In uncertain times, usually expect best' /
   B1SE10B   'Something can go wrong for me, it will' /
   B1SE10C   'Optimistic about my future' /
   B1SE10D   'Hardly ever expect things to go my way' /
   B1SE10E   'Rarely count on good things happen to me' /
   B1SE10F   'Expect more good things happen than bad' /
   B1SOPTIM  'LOT: Optimism' /
   B1SPESSI  'LOT: Pessimism' /
   B1SORIEN  'LOT Overall: Optimism+Pessimism' /
   B1SE11A   'Ever repeated school year' /
   B1SE11B   'Ever sent away from home' /
   B1SE11C   'Ever had parent out of job' /
   B1SE11D   'Ever parent drank caused problems' /
   B1SE11E   'Ever parent drugs caused problems' /
   B1SE11F   'Ever dropped out of school' /
   B1SE11G   'Ever suspended/expelled from school' /
   B1SE11H   'Ever flunked out of school' /
   B1SE11I   'Ever fired from a job' /
   B1SE11J   'Ever no job for long time' /
   B1SE11K   'Ever parent died' /
   B1SE11L   'Ever parents divorced' /
   B1SE11M   'Ever SP engaged in infidelity' /
   B1SE11N   'Ever significant in-law difficulties' /
   B1SE11O   'Ever sibling died' /
   B1SE11P   'Ever child died' /
   B1SE11Q   'Ever child experienced life-threatening' /
   B1SE11R   'Ever lost home to fire/flood/etc' /
   B1SE11S   'Ever physically assaulted' /
   B1SE11T   'Ever sexually assaulted' /
   B1SE11U   'Ever serious legal difficult/prison' /
   B1SE11V   'Ever jail detention' /
   B1SE11W   'Ever bankruptcy declared' /
   B1SE11X   'Ever financial loss unrelated to work' /
   B1SE11Y   'Ever welfare' /
   B1SE11Z   'Ever entered armed forces' /
   B1SE11AA  'Ever experienced combat' /
   B1SE11A1  'Age repeated school year' /
   B1SE11A3  'Repeated school year effect (initial)' /
   B1SE11A4  'Repeated school year effect (long-run)' /
   B1SE11B1  'R''s age sent away from home' /
   B1SE11B3  'Sent away from home effect (initial)' /
   B1SE11B4  'Sent away from home effect (long-run)' /
   B1SE11C1  'R''s age had parent out of job' /
   B1SE11C3  'Parent out of job effect (initial)' /
   B1SE11C4  'Parent out of job effect (long-run)' /
   B1SE11D1  'R''s age parent drank caused problems' /
   B1SE11D3  'Parent drank problems effect (initial)' /
   B1SE11D4  'Parent drank problems effect (long-run)' /
   B1SE11E1  'R''s age parent drugs caused problems' /
   B1SE11E3  'Parent drug problems effect (initial)' /
   B1SE11E4  'Parent drug problems effect (long-run)' /
   B1SE11F1  'R''s age dropped out of school' /
   B1SE11F3  'Dropped out of school effect (initial)' /
   B1SE11F4  'Dropped out of school effect (long-run)' /
   B1SE11G1  'R''s age suspended/expelled from school' /
   B1SE11G3  'Suspended/expelled effect (initial)' /
   B1SE11G4  'Suspended/expelled effect (long-run)' /
   B1SE11H1  'R''s age flunked out of school' /
   B1SE11H3  'Flunked out of school effect (initial)' /
   B1SE11H4  'Flunked out of school effect (long-run)' /
   B1SE11I1  'R''s age fired from a job' /
   B1SE11I3  'Fired from a job effect (initial)' /
   B1SE11I4  'Fired from a job effect (long-run)' /
   B1SE11J1  'R''s age no job for long time' /
   B1SE11J3  'No job for long time effect (initial)' /
   B1SE11J4  'No job for long time effect (long-run)' /
   B1SE11K1  'R''s age parent died' /
   B1SE11K3  'Parent died effect (initial)' /
   B1SE11K4  'Parent died effect (long-run)' /
   B1SE11L1  'R''s age parents divorced' /
   B1SE11L3  'Parents divorced effect (initial)' /
   B1SE11L4  'Parents divorced effect (long-run)' /
   B1SE11M1  'R''s age SP engaged in infidelity' /
   B1SE11M3  'SP infidelity effect (initial)' /
   B1SE11M4  'SP infidelity effect (long-run)' /
   B1SE11N1  'R''s age significant in-law difficulties' /
   B1SE11N3  'Signif in-law difficult effect (initial)' /
   B1SE11N4  'Signif in-law difficlt effect (long-run)' /
   B1SE11O1  'R''s age sibling died' /
   B1SE11O3  'Sibling died effect (initial)' /
   B1SE11O4  'Sibling died effect (long-run)' /
   B1SE11P1  'R''s age child died' /
   B1SE11P3  'Child died effect (initial)' /
   B1SE11P4  'Child died effect (long-run)' /
   B1SE11Q1  'R''s age child expernce life-threatening' /
   B1SE11Q3  'Child life-threatening effect (initial)' /
   B1SE11Q4  'Child life-threatening effect (long-run)' /
   B1SE11R1  'R''s age lost home to fire/flood/etc' /
   B1SE11R3  'Lost home fire/flood effect (initial)' /
   B1SE11R4  'Lost home fire/flood effect (long-run)' /
   B1SE11S1  'R''s age physically assaulted' /
   B1SE11S3  'Physically assaulted effect (initial)' /
   B1SE11S4  'Physically assaulted effect (long-run)' /
   B1SE11T1  'R''s age sexually assaulted' /
   B1SE11T3  'Sexually assaulted effect (initial)' /
   B1SE11T4  'Sexually assaulted effect (long-run)' /
   B1SE11U1  'R''s age serious legal difficult/prison' /
   B1SE11U3  'Legal difficult/prison effect (initial)' /
   B1SE11U4  'Legal difficult/prison effect (long-run)' /
   B1SE11V1  'R''s age jail detention' /
   B1SE11V3  'Jail detention effect (initial)' /
   B1SE11V4  'Jail detention effect (long-run)' /
   B1SE11W1  'R''s age bankruptcy declared' /
   B1SE11W3  'Bankruptcy declared effect (initial)' /
   B1SE11W4  'Bankruptcy declared effect (long-run)' /
   B1SE11X1  'R''s age financial loss unrelated to work' /
   B1SE11X3  'Finc loss unrelated wrk effect (initial)' /
   B1SE11X4  'Fin loss unrelated wrk effect (long-run)' /
   B1SE11Y1  'R''s age welfare' /
   B1SE11Y3  'Welfare effect (initial)' /
   B1SE11Y4  'Welfare effect (long-run)' /
   B1SE11Z1  'R''s age entered armed forces' /
   B1SE11Z3  'Entered armed forces effect (initial)' /
   B1SE11Z4  'Entered armed forces effect (long-run)' /
   B1SE11AW  'R''s age experienced combat' /
   B1SE11AY  'Experienced combat effect (initial)' /
   B1SE11AZ  'Experienced combat effect (long-run)' /
   B1SE12A   'Where there''s a will there''s a way' /
   B1SE12B   'Do what can to change for better' /
   B1SE12C   'If expectation not being met, lower them' /
   B1SE12D   'To avoid disappnt, no set goals too high' /
   B1SE12E   'Learn meaningful from difficlt situation' /
   B1SE12F   'Relieved when let go of responsibilities' /
   B1SE12G   'Even when feel too much, get it all done' /
   B1SE12H   'Find different way of looking at things' /
   B1SE12I   'Remind myself I can''t do everything' /
   B1SE12J   'When probs, No give up until solve them' /
   B1SE12K   'Rarely give up even when get tough' /
   B1SE12L   'Can''t get want, assume goals unrealistic' /
   B1SE12M   'When go wrong, usually find bright side' /
   B1SE12N   'Find positive even in worst situations' /
   B1SE12O   'Like to make plans for future' /
   B1SE12P   'Know what I want out of life' /
   B1SE12Q   'I live one day at a time' /
   B1SE12R   'Helpful to set goals for near future' /
   B1SE12S   'Too many things today to worry abt tmrrw' /
   B1SE12T   'Past helps me figure out what do present' /
   B1SE12U   'No think past b/c nothing can be done' /
   B1SE12V   'Bad happens, think how could prevented' /
   B1SE12W   'Good at figuring how things turn out' /
   B1SE12X   'No sense in planning too far ahead' /
   B1SE12Y   'No like ask oths for help unless have to' /
   B1SE12Z   'Asking others comes naturally for me' /
   B1SE12AA  'When goal decided, keep in mind benefits' /
   B1SE12BB  'No solve prob alone, ask others for help' /
   B1SE12CC  'Can''t attain goal in any way, let go' /
   B1SE12DD  'Impossible attain goal, no blame myself' /
   B1SE12EE  'Decided on something, avoid distract' /
   B1SE12FF  'Obstacles in way, get help from others' /
   B1SE12GG  'Stop thinking/let go unattainable goal' /
   B1SE12HH  'Something no work, try no to think about' /
   B1SE12II  'Difficult goals, mind how good will feel' /
   B1SE12JJ  'Difficulties too great, ask oths advice' /
   B1SE12KK  'Can''t attain goal, think about oth goals' /
   B1SE12LL  'Worry a lot when expect important event' /
   B1SE12MM  'Keep harmony w/ others and surroundings' /
   B1SPERSI  'Persist in Goal Striving (Primary Ctrl)' /
   B1SREAPP  'Positive Reappraisal (Secondary Control)' /
   B1SCHANG  'Lower Aspriations (Secondary Control)' /
   B1SSPCTR  'Selective Primary Control' /
   B1SCPCTR  'Compensatory Primary Control' /
   B1SSSCTR  'Selective Secondary Control' /
   B1SCSCDE  'Disengage (Compensatory Secondary Ctrl)' /
   B1SCSCSP  'Self Protect (Compensatory Secondary Ctrl)' /
   B1SCSCAG  'Adjustment of Goals (Compensatory Secondary Ctrl)' /
   B1SDIREC  'Self Directedness and Planning' /
   B1STODAY  'Live for Today' /
   B1SINSGH  'Insight into Past' /
   B1SFORSG  'Foresight and Anticipation' /
   B1SSUFFI  'Self-Sufficiency' /
   B1SE13A   'Grow as a person (stressful event)' /
   B1SE13B   'Efforts do thing about it (stress event)' /
   B1SE13C   'Make plan of action (stressful event)' /
   B1SE13D   'Let emotions out (stressful event)' /
   B1SE13E   'Say this isn''t real (stressful event)' /
   B1SE13F   'Admit no can deal & quit (stress event)' /
   B1SE13G   'Eat more than usual (stressful event)' /
   B1SE13H   'See in different light (stressful event)' /
   B1SE13I   'Take action to rid (stressful event)' /
   B1SE13J   'Strategy what to do (stressful event)' /
   B1SE13K   'Really aware of upset (stressful event)' /
   B1SE13L   'Refuse believe happen (stressful event)' /
   B1SE13M   'Give up trying (stressful event)' /
   B1SE13N   'Eat favorite foods (stressful event)' /
   B1SE13O   'Look for good (stressful event)' /
   B1SE13P   'Direct action (stressful event)' /
   B1SE13Q   'Think how best handle (stressful event)' /
   B1SE13R   'Let my feelings out (stressful event)' /
   B1SE13S   'Pretend no happened (stressful event)' /
   B1SE13T   'Give up attempt (stressful event)' /
   B1SE13U   'Learn something new (stressful event)' /
   B1SE13V   'One step at a time (stressful event)' /
   B1SE13W   'Think hard what steps (stressful event)' /
   B1SE13X   'Express emotn distress (stressful event)' /
   B1SE13Y   'Act as no happened (stressful event)' /
   B1SE13Z   'Reduce effort solving (stressful event)' /
   B1SREINT  'Positive Reinterpretation (Prob Coping)' /
   B1SACTIV  'Active Coping (Prob Focused Coping)' /
   B1SPLAN   'Planning (Problem Focused Coping)' /
   B1SVENT   'Venting of Emotion (Emotion Coping)' /
   B1SDENIA  'Denial (Emotion Focused Coping)' /
   B1SDISEN  'Behavioral Disengagement (Prob Coping)' /
   B1SFDCOP  'Use Food to Cope' /
   B1SPRCOP  'Problem Focused Coping' /
   B1SEMCOP  'Emotion Focused Coping' /
   B1SE14    'Age feel like most of the time' /
   B1SE15    'Age would like to be' /
   B1SE16    'Age men enter middle age' /
   B1SE17    'Age men no longer middle age' /
   B1SE18    'Age women enter middle age' /
   B1SE19    'Age women no longer middle age' /
   B1SF1     'Rate current work situation' /
   B1SF2     'Rate work situation ten years ago' /
   B1SF3     'Rate work situation ten years future' /
   B1SF4     'Rate amount control over work situation' /
   B1SF5     'Rate thought/effort put into work' /
   B1SF6     'Age first worked paid job 6+ months' /
   B1SF7     'Num years employed at least 6 mo of yr' /
   B1SF8     'Num years full time employed' /
   B1SF9A    'Unemployed longest period of time (num)' /
   B1SF9B    'Unemployed longest period (mo,yr)' /
   B1SF10    'Main reason unemp during longest period' /
   B1SF11A   '2003 employment status (full,part,no)' /
   B1SF11AS  '2003 employment status (full student)' /
   B1SF11B   '2002 employment status (full,part,no)' /
   B1SF11BS  '2002 employment status (full student)' /
   B1SF11C   '2001 employment status (full,part,no)' /
   B1SF11CS  '2001 employment status (full student)' /
   B1SF11D   '2000 employment status (full,part,no)' /
   B1SF11DS  '2000 employment status (full student)' /
   B1SF11E   '1999 employment status (full,part,no)' /
   B1SF11ES  '1999 employment status (full student)' /
   B1SF11F   '1998 employment status (full,part,no)' /
   B1SF11FS  '1998 employment status (full student)' /
   B1SF11G   '1997 employment status (full,part,no)' /
   B1SF11GS  '1997 employment status (full student)' /
   B1SF11H   '1996 employment status (full,part,no)' /
   B1SF11HS  '1996 employment status (full student)' /
   B1SF11I   '1995 employment status (full,part,no)' /
   B1SF11IS  '1995 employment status (full student)' /
   B1SF11J   '1994 employment status (full,part,no)' /
   B1SF11JS  '1994 employment status (full student)' /
   B1SF12A   'Work paid job number weeks (12 mo)' /
   B1SF12B   'Unemployed number weeks (12 mo)' /
   B1SF12C   'Unpaid leave number weeks (12 mo)' /
   B1SF12D   'Not working or looking num wks (12 mo)' /
   B1SF13    'Work for pay currently' /
   B1SF14A   'Work days in average week (freq)' /
   B1SF14B   'Work evenings in average week (freq)' /
   B1SF14C   'Work nights in average week (freq)' /
   B1SF14D   'Work weekends in average week (freq)' /
   B1SF15A   'Time begin job (hour)' /
   B1SF15B   'Time begin job (minute)' /
   B1SF15C   'Time begin job (am/pm)' /
   B1SF16A   'Time end job (hour)' /
   B1SF16B   'Time end job (minute)' /
   B1SF16C   'Time end job (am/pm)' /
   B1SF17A   'Job commute time (hours)' /
   B1SF17B   'Job commute time (minutes)' /
   B1SF18    'Problem with someone at work (12 mo)' /
   B1SF19    'Other ongoing stress at work (12 mo)' /
   B1SF20    'Chances could keep job for next 2 yrs' /
   B1SF21    'Job effect on physical health' /
   B1SF22    'Job effect on emotional/mental health' /
   B1SF23A   'Physical effort at job' /
   B1SF23B   'Lift 50 or more pounds at job' /
   B1SF23C   'Lift 10-50 pounds at job' /
   B1SF23D   'Lift up to 10 pounds at job' /
   B1SF23E   'Crouch/stoop/kneel at job' /
   B1SF23F   'Stand for long time at job' /
   B1SF23G   'Use stairs/inclines at job' /
   B1SF23H   'Walking at job' /
   B1SF23I   'Sit for long time at job' /
   B1SF23J   'Reaching at job' /
   B1SF23K   'Fingers grasp/handle things at job' /
   B1SF23L   'Work on computer at job' /
   B1SF23M   'Use eyes for inspecting things at job' /
   B1SF23N   'Use eyes for reading at job' /
   B1SF24    'Accident/injury risk at job (10 yrs)' /
   B1SF25    'Times injured at job (10 yrs)' /
   B1SF26    'Seriousness of job injury (10 yrs)' /
   B1SF27A   'Job reduces effort to activities at home' /
   B1SF27B   'Job stress makes irritable at home' /
   B1SF27C   'Job makes too tired to do things at home' /
   B1SF27D   'Job problems distract you at home' /
   B1SF27E   'Job helps to deal with issues at home' /
   B1SF27F   'Job makes you more interesting at home' /
   B1SF27G   'Job makes you better companion at home' /
   B1SF27H   'Job skills useful at home' /
   B1SF27I   'Home responsibilities reduce job effort' /
   B1SF27J   'Personal worries distract you at job' /
   B1SF27K   'Home chores prevents sleep to do job' /
   B1SF27L   'Home stress makes irritable at job' /
   B1SF27M   'Talk someone at home helps job problems' /
   B1SF27N   'Providing home makes work harder at job' /
   B1SF27O   'Home love makes you confident at job' /
   B1SF27P   'Home helps to relax for next workday' /
   B1SPOSWF  'Positive Work to Family Spillover' /
   B1SNEGWF  'Negative Work to Family Spillover' /
   B1SPOSFW  'Positive Family to Work Spillover' /
   B1SNEGFW  'Negative Family to Work Spillover' /
   B1SF28A   'Work intensively at job' /
   B1SF28B   'Learn new things at work' /
   B1SF28C   'Work demands high skill level' /
   B1SF28D   'Initiate things at job' /
   B1SF28E   'Choice how to do work tasks' /
   B1SF28F   'Choice what tasks to do at work' /
   B1SF28G   'Say in work decisions' /
   B1SF28H   'Say in planning work environment' /
   B1SF28I   'Job provides variety interesting things' /
   B1SF28J   'Work demands hard to combine' /
   B1SF28K   'So involved in work forget time' /
   B1SF29A   'Too many demands at job' /
   B1SF29B   'Control amount of time on tasks at job' /
   B1SF29C   'Time to get everything done at job' /
   B1SF29D   'Lot of interruptions at job' /
   B1SJCSD   'Skill Discretion (Job Characteristics)' /
   B1SJCDA   'Decision Authority (Job Characteristics)' /
   B1SJCDS   'Demands Scale (Job Characteristics)' /
   B1SF30A   'Coworker help/support' /
   B1SF30B   'Coworker listen to work-related problems' /
   B1SF30C   'Supervisor gives needed information' /
   B1SF30D   'Supervisor help/support' /
   B1SF30E   'Supervisor listens to work-related probs' /
   B1SJCCS   'Coworker Support (Job Characteristics)' /
   B1SJCSS   'Supervisor Support (Job Characteristics)' /
   B1SF31A   'Unfairly given jobs no one else wanted' /
   B1SF31B   'Watched more closely at job than others' /
   B1SF31C   'Boss uses ethnic/racial/sexual slurs' /
   B1SF31D   'Coworkers use ethnic/racial/sexual slurs' /
   B1SF31E   'Ignored/not taken seriously by boss' /
   B1SF31F   'Coworker promoted before you' /
   B1SJOBDI  'Chronic Job Discrimination' /
   B1SF32A   'Feel cheated about good job chances' /
   B1SF32B   'Feel pride for work at job' /
   B1SF32C   'Others respect my work at job' /
   B1SF32D   'Others have more rewarding jobs' /
   B1SF32E   'Had opportunities as good as others' /
   B1SF32F   'Others have better jobs than me' /
   B1SPIWOR  'Perceived Inequality in Work' /
   B1SF33A   'Too many demands made at home (12 mo)' /
   B1SF33B   'Control time spent on tasks (12 mo)' /
   B1SF33C   'Time get everything done at home (12 mo)' /
   B1SF33D   'Lots of interruptions at home (12 mo)' /
   B1SF34A   'Feel pride about work at home' /
   B1SF34B   'Feel others respect my work at home' /
   B1SF34C   'Paid work more rewarding than home work' /
   B1SF35A   'Pride about unpaid work in community' /
   B1SF35B   'Feel others respect my community work' /
   B1SF35C   'Paid work more rewarding than volunteer' /
   B1SG1     'Rate current financial situation' /
   B1SG2     'Rate financial situation ten years ago' /
   B1SG3     'Rate financial situation ten yrs future' /
   B1SG4     'Rate control over financial situation' /
   B1SG5     'Rate thought/effort into financial sitn' /
   B1SG6     '$ to meet needs (more,enough,no enough)' /
   B1SG7     'Difficult to pay monthly bills' /
   B1SG8A    'R''s wages last calendar year' /
   B1SG8B    'R''s pension income last calendar year' /
   B1SG8C    'R''s social secrty income last calend yr' /
   B1SG9A    'SP''s wages last calendar year' /
   B1SG9B    'SP''s pension income last calendar year' /
   B1SG9C    'SP''s soc secrty income last calendar yr' /
   B1SG10A   'Other hh member''s wages last calend yr' /
   B1SG10B   'Oth hh member''s pension income last yr' /
   B1SG10C   'Oth hh memb''s soc secrty income last yr' /
   B1SG11A   'Supplemental Security Income (12 mo)' /
   B1SG11B   'Soc Security Disability Insur (12 mo)' /
   B1SG11C   'General govt assistance (12 mo)' /
   B1SG11D   'Food stamps (12 mo)' /
   B1SG11E   'Temp Assistance for Needy Fams (12 mo)' /
   B1SG11F   'Oth state govt welfare program (12 mo)' /
   B1SG11G   'Unemployment benefits from govt (12 mo)' /
   B1SG11H   'Other govt disability benefits (12 mo)' /
   B1SG11I   'Veteran''s benefits from govt (12 mo)' /
   B1SG11J   'No assistance from govt (12 mo)' /
   B1SG12    'Tot hh income from govt assist (12 mo)' /
   B1SRINC1  'R total income(wage,pension,ssi):original value' /
   B1SSINC1  'SP total income(wage,pension,ssi):original value' /
   B1SHINC1  'HH member total income(wage,pension,ssi):original value' /
   B1SEARN1  'HH total earning income:original value' /
   B1SPNSN1  'HH total pension income:original value' /
   B1SSEC1   'HH total soc.sec income:original value' /
   B1STINC1  'HH total income(wage,pension,ssi,gov asst):original value' /
   B1SG13    'R employer/union pension plan currently' /
   B1SG13A   'Current worth R''s pension savings' /
   B1SG14    'R has own trad/Keogh/Roth IRA account' /
   B1SG14A   'Current worth of R''s IRA acct' /
   B1SG15    'R has other pension/retirement plans' /
   B1SG15A   'Current worth of R''s oth pension plans' /
   B1SG16    'SP employer/union pension plan' /
   B1SG16A   'Current worth of SP''s pension plan' /
   B1SG17    'Own or rent home' /
   B1SG17A   'How much home would sell for' /
   B1SG17B   'Current home is mobile home' /
   B1SG18    'Own a business/farm' /
   B1SG18A   'How much business/farm would sell for' /
   B1SG18B   'Amount owed on business/farm' /
   B1SG19    'Any $ in stocks/bonds/CDs/mutual funds' /
   B1SG19A   'Worth of stocks/bonds/CDs/mutual funds' /
   B1SG20    'Any income from rental property' /
   B1SG20A   'Income from rental property last cal yr' /
   B1SG21    'Inherited anything worth $1000+' /
   B1SG21A   'Year received largest inheritance paymnt' /
   B1SG21B   'Amount of largest inheritance received' /
   B1SG22    'Any life insurance including indiv/group' /
   B1SG22A   'Amt beneficiaries would receive if died' /
   B1SG23    '$ left or owed if cash assets & pd debts' /
   B1SG24A   'Amt assets/$ owed/left over' /
   B1SG24B   'Have $ left over/would owe' /
   B1SG25A   'Home mortgage amount owed' /
   B1SG25B   'Home improvement/equity amount owed' /
   B1SG25C   'Other real estate loans amount owed' /
   B1SG25D   'Business/farm loans amount owed' /
   B1SG25E   'Vehicle loans amount owed' /
   B1SG25F   'Credit cards/charge accounts amount owed' /
   B1SG25G   'Installment loans for purchases amt owed' /
   B1SG25H   'Educational loans amount owed' /
   B1SG25I   'Other personal loans amount owed' /
   B1SH1     'Rate cur contribution to oths welfare' /
   B1SH2     'Rate contrib to oths welfare 10 yrs ago' /
   B1SH3     'Rate contrib oths welfare 10 yrs future' /
   B1SH4     'Rate amount control contribution to oths' /
   B1SH5     'Rate thought/effort into contrib to oths' /
   B1SH6A    'Made unique contributions to society' /
   B1SH6B    'Important skills to pass along to others' /
   B1SH6C    'Many people come to you for advice' /
   B1SH6D    'Feel other people need you' /
   B1SH6E    'Good influence on others lives' /
   B1SH6F    'Like to teach things to people' /
   B1SGENER  'Loyola Generativity Scale' /
   B1SH7A    'Volnteer hospital/nursing home (hrs/mo)' /
   B1SH7B    'Volnteer school/other youth org (hrs/mo)' /
   B1SH7C    'Volunteer political org/cause (hrs/mo)' /
   B1SH7D    'Volunteer other org/cause (hrs/mo)' /
   B1SH8A    'Attend meeting union/profssnl grp (#/mo)' /
   B1SH8B    'Attend meeting sports/social grp (#/mo)' /
   B1SH8C    'Attend meeting other groups (#/mo)' /
   B1SH9A    'Give SP emotional support (hrs/mo)' /
   B1SH9B    'Give parents emotional support (hrs/mo)' /
   B1SH9C    'Give in-laws emotional support (hrs/mo)' /
   B1SH9D    'Give children emotional support (hrs/mo)' /
   B1SH9E    'Give oth fam/fnds emotional sup (hrs/mo)' /
   B1SH9F    'Give anyone else emotional supp (hrs/mo)' /
   B1SH10A   'Receive emotional support SP (hrs/mo)' /
   B1SH10B   'Receive emotional supp parents (hrs/mo)' /
   B1SH10C   'Receive emotional supp in-laws (hrs/mo)' /
   B1SH10D   'Receive emotional supp children (hrs/mo)' /
   B1SH10E   'Recv emotional sup oth fam/fnds (hrs/mo)' /
   B1SH10F   'Recv emotional supp anyone else (hrs/mo)' /
   B1SH11A   'Give unpaid assistance parents (hrs/mo)' /
   B1SH11B   'Give unpaid assistance in-laws (hrs/mo)' /
   B1SH11C   'Give unpaid assistance children (hrs/mo)' /
   B1SH11D   'Give unpaid assist oth fam/fnds (hrs/mo)' /
   B1SH11E   'Give unpaid assist anyone else (hrs/mo)' /
   B1SH12A   'Receive unpaid assist parents (hrs/mo)' /
   B1SH12B   'Receive unpaid assist in-laws (hrs/mo)' /
   B1SH12C   'Receive unpaid assist children (hrs/mo)' /
   B1SH12D   'Recv unpaid assist oth fam/fnds (hrs/mo)' /
   B1SH12E   'Recv unpaid assist commun volun (hrs/mo)' /
   B1SH12F   'Recv unpaid assist relig groups (hrs/mo)' /
   B1SH12G   'Recv unpaid assist other orgs (hrs/mo)' /
   B1SH12H   'Recv unpaid assist govt groups (hrs/mo)' /
   B1SH13A   'Financial support to parents ($/mo)' /
   B1SH13B   'Financial support to in-laws ($/mo)' /
   B1SH13C   'Financial support to children ($/mo)' /
   B1SH13D   'Financial support to oth fam/frnd ($/mo)' /
   B1SH13E   'Financial supp to any oth indivs ($/mo)' /
   B1SH13F   'Financial supp to religious grps ($/mo)' /
   B1SH13G   'Financial supp to political orgs ($/mo)' /
   B1SH13H   'Financial supp to other orgs ($/mo)' /
   B1SH14A   'Financial support from parents ($/mo)' /
   B1SH14B   'Financial support from in-laws ($/mo)' /
   B1SH14C   'Financial support from children ($/mo)' /
   B1SH14D   'Financial supp from oth fam/frnd ($/mo)' /
   B1SH14E   'Financial support from relig grps ($/mo)' /
   B1SH14F   'Financial supp from oth non-govt ($/mo)' /
   B1SH14G   'Financial support from govt grp ($/mo)' /
   B1SH15A   'Lived with aging parent (12 mo)' /
   B1SH15B   'Lived with adult childrn (12 mo)' /
   B1SH15C   'Lived with grandchildren (12 mo)' /
   B1SH15D   'Lived with other friends/family (12 mo)' /
   B1SH16A   'World is too complex for me' /
   B1SH16B   'Do not feel I belong to community' /
   B1SH16C   'People who do a favor expect nothing' /
   B1SH16D   'Have something valuable to give world' /
   B1SH16E   'World is becoming better place' /
   B1SH16F   'Feel close to others in community' /
   B1SH16G   'Daily activities not worthwhile for comm' /
   B1SH16H   'Cannot make sense of world' /
   B1SH16I   'Society stopped making progress' /
   B1SH16J   'People do not care about others problems' /
   B1SH16K   'Community is source of comfort' /
   B1SH16L   'Easy to predict society future' /
   B1SH16M   'Society not improving for people like me' /
   B1SH16N   'Believe people are kind' /
   B1SH16O   'Have nothing important for society' /
   B1SSWBMS  'Meaningfulness of Society (Social WB)' /
   B1SSWBSI  'Social Integration (Social WB)' /
   B1SSWBAO  'Acceptance of Others (Social WB)' /
   B1SSWBSC  'Social Contribution (Social WB)' /
   B1SSWBSA  'Social Actualization (Social WB)' /
   B1SH16P   'Important to help people who I know well' /
   B1SH16Q   'Not happy if friend in trouble' /
   B1SH16R   'Moved by another person''s hardship' /
   B1SH16S   'Important to be sympathetic others' /
   B1SH16T   'My sympathy has its limits' /
   B1SSYMP   'Sympathy scale' /
   B1SI1     'Contact with neighbors frequency' /
   B1SI2     'Conversatn/get togthr w/ neighbor (freq)' /
   B1SI3     'Years lived in current neighborhood' /
   B1SI4     'Years lived in this state' /
   B1SI5     'Own home outright, mortgage, or rent' /
   B1SI6A    'Safe alone in neighborhood daytime' /
   B1SI6B    'Safe alone neighborhood at night' /
   B1SI6C    'Home as nice as most people' /
   B1SI6D    'Proud of my home' /
   B1SI6E    'Can call neighbor for help if needed' /
   B1SI6F    'Others live in better neighborhood' /
   B1SI6G    'Neighbors trust each other' /
   B1SI6H    'Do not like to invite others to home' /
   B1SI6I    'Buildings/streets kept in good repair' /
   B1SI6J    'Feel good about home/neighbrhood' /
   B1SI6K    'Neighborhood is kept clean' /
   B1SI6L    'Hopeless to improve home/neighborhood' /
   B1SHOMET  'Perceived Quality of Neighborhood' /
   B1SPIHOM  'Perceived Inequality in Home' /
   B1SI7     'State most like to live next ten years' /
   B1SJ1     'Contact with family members (freq)' /
   B1SJ2A    'Family members really care about you' /
   B1SJ2B    'Family members understand way you feel' /
   B1SJ2C    'Rely on family for help with problem' /
   B1SJ2D    'Open up to family about worries' /
   B1SJ2E    'Really care about family members' /
   B1SJ2F    'Understand way family feels' /
   B1SJ2G    'Family members make too many demands' /
   B1SJ2H    'Family members criticize you' /
   B1SJ2I    'Family members let you down' /
   B1SJ2J    'Family members get on your nerves' /
   B1SKINPO  'Support from Family' /
   B1SKINNE  'Strain from Family' /
   B1SFAMSO  'Family Affectual Solidarity' /
   B1SPKINS  'Providing Support for Family' /
   B1SJ3     'Contact with friends (freq)' /
   B1SJ4A    'Friends really care about you' /
   B1SJ4B    'Friends understand way you feel' /
   B1SJ4C    'Rely on friends for help with problem' /
   B1SJ4D    'Open up to friends about worries' /
   B1SJ4E    'Friends make too many demands on you' /
   B1SJ4F    'Friends criticize you' /
   B1SJ4G    'Friends let you down' /
   B1SJ4H    'Friends get on your nerves' /
   B1SFDSPO  'Support from Friends' /
   B1SFDSNE  'Strain from Friends' /
   B1SFDSOL  'Friendship Affectual Solidarity' /
   B1SJ5     'Friend/relative asks for advice/help' /
   B1SJ6     'You ask friend/relative for advice/help' /
   B1SJ7SA   'SP chronic disease/disability (12 mo)' /
   B1SJ7SB   'SP frequent minor illnesses (12 mo)' /
   B1SJ7SC   'SP emotional problems (12 mo)' /
   B1SJ7SD   'SP alcohol/substance problems (12 mo)' /
   B1SJ7SE   'SP financial problems (12 mo)' /
   B1SJ7SF   'SP school/work problems (12 mo)' /
   B1SJ7SG   'SP difficult find/keep job (12 mo)' /
   B1SJ7SH   'SP marital/relationship problems (12 mo)' /
   B1SJ7SI   'SP legal problems (12 mo)' /
   B1SJ7SJ   'SP difficult get along with oths (12 mo)' /
   B1SJ7PA   'Parents chronic disease (12 mo)' /
   B1SJ7PB   'Parents frequent minor illness (12 mo)' /
   B1SJ7PC   'Parents emotional problems (12 mo)' /
   B1SJ7PD   'Parents alcohol/substance probs (12 mo)' /
   B1SJ7PE   'Parents financial problems (12 mo)' /
   B1SJ7PF   'Parents school/work problems (12 mo)' /
   B1SJ7PG   'Parents diffcult find/keep job (12 mo)' /
   B1SJ7PH   'Parents marital/relatnship probs (12 mo)' /
   B1SJ7PI   'Parents legal problems (12 mo)' /
   B1SJ7PJ   'Parents dffclt get along w/ oths (12 mo)' /
   B1SJ7CA   'Children chronic disease (12 mo)' /
   B1SJ7CB   'Children frequent minor illness (12 mo)' /
   B1SJ7CC   'Children emotional problems (12 mo)' /
   B1SJ7CD   'Children alcohol/substance probs (12 mo)' /
   B1SJ7CE   'Children financial problems (12 mo)' /
   B1SJ7CF   'Children school/work problems (12 mo)' /
   B1SJ7CG   'Childrn diffcult find/keep job (12 mo)' /
   B1SJ7CH   'Children marital/relatnshp probs (12 mo)' /
   B1SJ7CI   'Children legal problems (12 mo)' /
   B1SJ7CJ   'Children dffclt get along w/ oth (12 mo)' /
   B1SK1     'Rate current relationship with children' /
   B1SK2     'Rate relatnshp w/ children ten years ago' /
   B1SK3     'Rate reltnshp w/ children ten yrs future' /
   B1SK4     'Rate control over relatnship w/ children' /
   B1SK5     'Rate thought/effort reltnshp w/ children' /
   B1SK6A    'Feel good about opportunities for child' /
   B1SK6B    'Family life w/ children more negative' /
   B1SK6C    'Problems with children caused shame' /
   B1SK6D    'No resources for fun things w/ children' /
   B1SK6E    'Do for children as much as others' /
   B1SK6F    'Pride about what able to do for children' /
   B1SPIFAM  'Perceived Ineqaulity in Family' /
   B1SK7A1   'R stop working to care for children' /
   B1SK7A2   'SP stop working to care for children' /
   B1SK7B1   'R cut back hours to care for children' /
   B1SK7B2   'SP cut back hours to care for children' /
   B1SK7C1   'R work longer hours meet child needs' /
   B1SK7C2   'SP work longer hours meet child needs' /
   B1SK7D1   'R switch to different job for children' /
   B1SK7D2   'SP switch to different job for children' /
   B1SK8     'Days R change schedule for childcare' /
   B1SK9     'Days SP change schedule for childcare' /
   B1SK10    'Provide childcare stressful (school yr)' /
   B1SK11    'Provide childcare stressful (summer)' /
   B1SL1     'Rate current marriage/relationship' /
   B1SL2     'Rate marriage/relationship ten yrs ago' /
   B1SL3     'Rate marriage/relationship ten yrs futur' /
   B1SL4     'Rate control over marriage/relationship' /
   B1SL5     'Rate thought/effort marriage/relationshp' /
   B1SL6     'Describe marital relationship (excl,etc)' /
   B1SL7     'Relationship in trouble (12 mo)' /
   B1SL8     'Chances eventually separate from SP' /
   B1SL9A    'Disagree about money matters with SP' /
   B1SL9B    'Disagree about household tasks with SP' /
   B1SL9C    'Disagree about leisure activities w/ SP' /
   B1SMARRS  'Marital Risk' /
   B1SSPDIS  'Spouse/Partner Disagreement' /
   B1SL10    'Good talk with SP (freq)' /
   B1SL11A   'SP really cares about you' /
   B1SL11B   'SP understands way you feel' /
   B1SL11C   'SP appreciates you' /
   B1SL11D   'Rely SP for help with serious problem' /
   B1SL11E   'Open up to SP about worries' /
   B1SL11F   'Can relax, be yourself around SP' /
   B1SL11G   'SP makes too many demands on you' /
   B1SL11H   'SP makes you feel tense' /
   B1SL11I   'SP argues with you' /
   B1SL11J   'SP criticizes you' /
   B1SL11K   'SP lets you down' /
   B1SL11L   'SP gets on your nerves' /
   B1SSPEMP  'Support from Spouse/Partner' /
   B1SSPCRI  'Strain from Spouse/Partner' /
   B1SSPSOL  'Spouse Affectual Solidarity' /
   B1SL12    'Who does more household chores (R or SP)' /
   B1SL13    'R does household chores (hrs/wk)' /
   B1SL14    'SP does household chores (hrs/wk)' /
   B1SL15    'How fair are household chores to R' /
   B1SL16    'How fair are household chores to SP' /
   B1SL17A   'Make decisions with SP as a team' /
   B1SL17B   'Talk with SP makes things better' /
   B1SL17C   'Talk with SP before make plans' /
   B1SL17D   'Ask SP for advice about issues' /
   B1SSPDEC  'Spouse/Partner Decision Making' /
   B1SL18    'Describe SP physical health currently' /
   B1SL19    'Describe SP mental health currently' /
   B1SL20    'SP currently working for pay' /
   B1SL21    'Hrs per wk SP works at main job' /
   B1SL22    'Hrs per wk SP works at other jobs' /
   B1SL23A   'SP works days in average week (freq)' /
   B1SL23B   'SP works evenings in average week (freq)' /
   B1SL23C   'SP works nights in average week (freq)' /
   B1SL23D   'SP works weekends in average week (freq)' /
   B1SL24A   'SP time begin job (hour)' /
   B1SL24B   'SP time begin job (minute)' /
   B1SL24C   'SP time begin job (am/pm)' /
   B1SL25A   'SP time end job (hour)' /
   B1SL25B   'SP time end job (minute)' /
   B1SL25C   'SP time end job (am/pm)' /
   B1SL26A   'SP job commute time (hours)' /
   B1SL26B   'SP job commute time (minutes)' /
   B1SL27    'SP chances could keep job for next 2 yrs' /
   B1SM1     'Rate sexual aspect of life currently' /
   B1SM2     'Rate sexual aspect of life ten years ago' /
   B1SM3     'Rate sexual aspect of life ten yrs futur' /
   B1SM4     'Rate control over sexual aspect of life' /
   B1SM5     'Rate thought/effort sexual aspect life' /
   B1SM6     'Describe sexual orientation' /
   B1SM7     'Number of sex partners (past yr)' /
   B1SM8     'Sex frequency over (past 6 mo)' /
   B1SM9     'Sexual expressn imprtnt part of reltnshp' /
   B1SM10    'Sexual rltnshps includ emotionl intimacy' /
   B1SM11    'Pain/discomfort in sexual interactions' /
   B1SM12    'Pleasure in sexual interactions' /
   B1SN1A    'Religious preference first choice' /
   B1SN1B    'Religious preference second choice' /
   B1SN1C    'Religious preference third choice' /
   B1SN1AX   'Other is a Christian religion' /
   B1SN2A    'How religious are you' /
   B1SN2B    'How spiritual are you' /
   B1SN2C    'Religion important in your life' /
   B1SN2D    'Spirituality important in life' /
   B1SN2E    'Relig instruction important for children' /
   B1SN2F    'Identify with your religious group' /
   B1SN2G    'Prefer people of same religion' /
   B1SN2H    'Important to marry in same religion' /
   B1SN2I    'Important celebrate w/ relig community' /
   B1SSPIRI  'Spirituality' /
   B1SRELID  'Religious Identification' /
   B1SN3A    'Pray in private (freq)' /
   B1SN3B    'Meditate or chant (freq)' /
   B1SN3C    'Read Bible or religious lit (freq)' /
   B1SRELPR  'Private Religious Practices' /
   B1SN3D    'Attend religious/spiritl services (freq)' /
   B1SN3E    'Attend church/temple activities (freq)' /
   B1SN4     'Explore diff religions or stick to one' /
   B1SN5     'Ever been born again' /
   B1SN6     'Bible is actual Word of God' /
   B1SN7     'Have religious community/congregation' /
   B1SN8A    'If ill, congregation would help' /
   B1SN8B    'If problem, congregation would comfort' /
   B1SN8C    'Congregation makes too many demands' /
   B1SN8D    'Congregation criticizes you' /
   B1SRELSU  'Religious Support' /
   B1SN9A    'Seek comfort through relig when problem' /
   B1SN9B    'Look to religious beliefs make decisions' /
   B1SN9C    'Make sense situation without God' /
   B1SN9D    'Wonder if God has abandoned me' /
   B1SN9E    'Feel God is punishing me for sins' /
   B1SN9F    'Look to God for strength/support/guidanc' /
   B1SN9G    'Work with God as partners' /
   B1SN9H    'Life is part of larger spiritual force' /
   B1SRELCA  'Religious/Spiritual Coping A' /
   B1SRELCB  'Religious/Spiritual Coping B' /
   B1SN10A   'Feeling of deep inner peace (freq/day)' /
   B1SN10B   'Moved by beauty of life (freq/day)' /
   B1SN10C   'Strong connection to all life (freq/day)' /
   B1SN10D   'Sense of deep appreciation (freq/day)' /
   B1SN10E   'Sense of caring for others (freq/day)' /
   B1SSPRTE  'Daily Spiritual Experiences' /
   B1SN11A   'More engaged in moment because religion' /
   B1SN11B   'Sensitive to others feelings b/c relig' /
   B1SN11C   'Receptive to new ideas because religion' /
   B1SN11D   'Better listener because religion' /
   B1SN11E   'More patient because religion' /
   B1SN11F   'More aware of environment because relig' /
   B1SN11G   'More tolerant differences because relig' /
   B1SN11H   'Aware diff ways to solve probs b/c relig' /
   B1SN11I   'Perceive in new ways because religion' /
   B1SMNDFU  'Mindfulness' /
   B1SP1A    'Higher education discouraged (times)' /
   B1SP1B    'Denied scholarship (times)' /
   B1SP1C    'Not hired for a job (times)' /
   B1SP1D    'Not given a job promotion (times)' /
   B1SP1E    'Fired (times)' /
   B1SP1F    'Prevented from rent/buying home (times)' /
   B1SP1G    'Prevented remain in neighbrhood (times)' /
   B1SP1H    'Hassled by police (times)' /
   B1SP1I    'Denied a bank loan (times)' /
   B1SP1J    'Denied/inferior medical care (times)' /
   B1SP1K    'Denied/inferior service (times)' /
   B1SLFEDI  'Summary: Lifetime Discrimination' /
   B1SP2A    'Treated with less courtesy than others' /
   B1SP2B    'Treated with less respect than others' /
   B1SP2C    'Receive poorer service than others' /
   B1SP2D    'People think you are not smart' /
   B1SP2E    'People act afraid of you' /
   B1SP2F    'People think you are dishonest' /
   B1SP2G    'People think you not as good as they are' /
   B1SP2H    'Called names or insulted' /
   B1SP2I    'Threatened or harassed' /
   B1SDAYDI  'Daily Discrimination' /
   B1SP3A    'Age main reason for discrimination' /
   B1SP3B    'Gender main reason for discrimination' /
   B1SP3C    'Race main reason for discrimination' /
   B1SP3D    'Ethnicity main reason for discrimination' /
   B1SP3E    'Religion main reason for discrimination' /
   B1SP3F    'Height/weight main reason for discrimntn' /
   B1SP3G    'Other aspect appear main reason discrim' /
   B1SP3H    'Physical disability main reason discrim' /
   B1SP3I    'Sexual orientation main reason discrim' /
   B1SP3J    'Other main reason for discrimination' /
   B1SP4     'Discrim interfered w/ having full life' /
   B1SP5     'Life has been harder because of discrim' /
   B1SQ1     'Rate life overall currently' /
   B1SQ2     'Rate life overall ten years ago' /
   B1SQ3     'Rate life overall ten years future' /
   B1SQ4     'Rate control over life overall' /
   B1SQ5     'Rate thought/effort into life overall' /
   B1SQ6     'Rate your day today' /
   .


* SPSS VALUE LABELS COMMAND.

VALUE LABELS
   SAMPLMAJ  1 'MAIN RDD' 2 'SIBLING' 3 'TWIN' 4 'CITY OVERSAMPLES' /
   B1STATUS  1 'COMPLETED M2 PHONE ONLY' 2 'COMPLETED M2 PHONE & SAQ'
             8 'NO M2 PARTICIPATION' /
   B1PAGE_M2 98 'REFUSED' 99 'INAPP (NO M2 PARTICIPATION)' /
   B1PBYEAR  9998 'REFUSED' /
   B1PRSEX   1 'MALE' 2 'FEMALE' /
   B1PA1     1 'EXCELLENT' 2 'VERY GOOD' 3 'GOOD' 4 'FAIR' 5 'POOR'
             7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA2     1 'EXCELLENT' 2 'VERY GOOD' 3 'GOOD' 4 'FAIR' 5 'POOR'
             7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA3     1 'MUCH BETTER' 2 'SOMEWHAT BETTER' 3 'ABOUT THE SAME'
             4 'SOMEWHAT WORSE' 5 'MUCH WORSE' 7 'DON''T KNOW' 8 'REFUSED'
             9 'INAPP' /
   B1PA4     97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PA4A    1 'PHYSICAL' 2 'MENTAL' 3 'COMBINATION' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PA4BA   97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PA4BB   97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PA4BC   97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PA5     97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PA5A    1 'PHYSICAL' 2 'MENTAL' 3 'COMBINATION' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PA5BA   97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PA5BB   97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PA5BC   97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PA6A    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA6B    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA6C    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA6D    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA7     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA7A    96 'CONGENITAL/AT BIRTH' 97 'DON''T KNOW' 98 'REFUSED'
             99 'INAPP' /
   B1PA7BA   1 'YES' 2 'NO' 11 'NONE' 97 'DON''T KNOW' 98 'REFUSED'
             99 'INAPP' /
   B1PA7BB   1 'YES' 2 'NO' 11 'NONE' 97 'DON''T KNOW' 98 'REFUSED'
             99 'INAPP' /
   B1PA7BC   1 'YES' 2 'NO' 11 'NONE' 97 'DON''T KNOW' 98 'REFUSED'
             99 'INAPP' /
   B1PA7BD   1 'YES' 2 'NO' 11 'NONE' 97 'DON''T KNOW' 98 'REFUSED'
             99 'INAPP' /
   B1PA7BE   1 'YES' 2 'NO' 11 'NONE' 97 'DON''T KNOW' 98 'REFUSED'
             99 'INAPP' /
   B1PA7BF   1 'YES' 2 'NO' 11 'NONE' 97 'DON''T KNOW' 98 'REFUSED'
             99 'INAPP' /
   B1PA7BG   1 'YES' 2 'NO' 11 'NONE' 97 'DON''T KNOW' 98 'REFUSED'
             99 'INAPP' /
   B1PA7BH   1 'YES' 2 'NO' 11 'NONE' 97 'DON''T KNOW' 98 'REFUSED'
             99 'INAPP' /
   B1PA7BI   1 'YES' 2 'NO' 11 'NONE' 97 'DON''T KNOW' 98 'REFUSED'
             99 'INAPP' /
   B1PA7BJ   1 'YES' 2 'NO' 11 'NONE' 97 'DON''T KNOW' 98 'REFUSED'
             99 'INAPP' /
   B1PA7C    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA7D    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA8     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA8A    9997 'DON''T KNOW' 9999 'INAPP' /
   B1PA9     1 'HIGHER' 2 'LOWER' 3 'ABOUT THE SAME' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PA9A    1 'A LOT' 2 'SOMEWHAT' 3 'A LITTLE' 7 'DON''T KNOW' 8 'REFUSED'
             9 'INAPP' /
   B1PA9B    1 'A LOT' 2 'SOMEWHAT' 3 'A LITTLE' 7 'DON''T KNOW' 8 'REFUSED'
             9 'INAPP' /
   B1PA10A   1 'YES' 2 'NO' 6 'NO ONE' 7 'DON''T KNOW' /
   B1PA10B   1 'YES' 2 'NO' 6 'NO ONE' 7 'DON''T KNOW' /
   B1PA10C   1 'YES' 2 'NO' 6 'NO ONE' 7 'DON''T KNOW' /
   B1PA10D   1 'YES' 2 'NO' 6 'NO ONE' 7 'DON''T KNOW' /
   B1PA10E   1 'YES' 2 'NO' 6 'NO ONE' 7 'DON''T KNOW' /
   B1PA10F   1 'YES' 2 'NO' 6 'NO ONE' 7 'DON''T KNOW' /
   B1PA10G   1 'YES' 2 'NO' 6 'NO ONE' 7 'DON''T KNOW' /
   B1PA10H   1 'YES' 2 'NO' 6 'NO ONE' 7 'DON''T KNOW' /
   B1PA11    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PA12    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA13    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA14    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA15    1 'BYPASS' 2 'MEDICATION' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP'
             /
   B1PA16    1 'VERY' 2 'SOMEWHAT' 3 'NOT VERY SURE' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PA17    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA18    1 'YES' 2 'NO' 3 'CANNOT WALK BECAUSE OF CHEST PAIN'
             4 'CANNOT WALK FOR OTHER REASONS' 7 'DON''T KNOW' 8 'REFUSED'
             9 'INAPP' /
   B1PA19    1 'STOP' 2 'SLOW DOWN' 3 'CONTINUE AT THE SAME PACE'
             7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA20    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA21    1 '10 MINUTES OR LESS' 2 'MORE THAN 10 MINUTES' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PA22    1 'CENTER OF CHEST' 2 'LEFT SIDE OF CHEST ONLY'
             3 'LEFT SIDE OF CHEST AND LEFT ARM'
             4 'SOMEWHERE ELSE (SPECIFY LOCATION)' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PA23    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA23A   96 '96 OR MORE ATTACKS' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP'
             /
   B1PA23B   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA23CA  1 'YES' 2 'NO' 11 'NONE' 97 'DON''T KNOW' 98 'REFUSED'
             99 'INAPP' /
   B1PA23CB  1 'YES' 2 'NO' 11 'NONE' 97 'DON''T KNOW' 98 'REFUSED'
             99 'INAPP' /
   B1PA23CC  1 'YES' 2 'NO' 11 'NONE' 97 'DON''T KNOW' 98 'REFUSED'
             99 'INAPP' /
   B1PA23CD  1 'YES' 2 'NO' 11 'NONE' 97 'DON''T KNOW' 98 'REFUSED'
             99 'INAPP' /
   B1PA23CE  1 'YES' 2 'NO' 11 'NONE' 97 'DON''T KNOW' 98 'REFUSED'
             99 'INAPP' /
   B1PA23CF  1 'YES' 2 'NO' 11 'NONE' 97 'DON''T KNOW' 98 'REFUSED'
             99 'INAPP' /
   B1PA23CG  1 'YES' 2 'NO' 11 'NONE' 97 'DON''T KNOW' 98 'REFUSED'
             99 'INAPP' /
   B1PA23CH  1 'YES' 2 'NO' 11 'NONE' 97 'DON''T KNOW' 98 'REFUSED'
             99 'INAPP' /
   B1PA23CI  1 'YES' 2 'NO' 11 'NONE' 97 'DON''T KNOW' 98 'REFUSED'
             99 'INAPP' /
   B1PA23CJ  1 'YES' 2 'NO' 11 'NONE' 97 'DON''T KNOW' 98 'REFUSED'
             99 'INAPP' /
   B1PA24    1 'YES' 2 'NO' 3 'SUSPECTS' 7 'DON''T KNOW' 8 'REFUSED'
             9 'INAPP' /
   B1PA24A   97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PA24B   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA24C   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA24D   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA24EA  1 'YES' 2 'NO' 7 'DON''T KNOW' 9 'INAPP' /
   B1PA24EB  1 'YES' 2 'NO' 7 'DON''T KNOW' 9 'INAPP' /
   B1PA24EC  1 'YES' 2 'NO' 7 'DON''T KNOW' 9 'INAPP' /
   B1PA24ED  1 'YES' 2 'NO' 7 'DON''T KNOW' 9 'INAPP' /
   B1PA24EE  1 'YES' 2 'NO' 7 'DON''T KNOW' 9 'INAPP' /
   B1PA24EF  1 'YES' 2 'NO' 7 'DON''T KNOW' 9 'INAPP' /
   B1PA25NM  0 'LESS THAN ONE MONTH' 96 'NEVER' 97 'DON''T KNOW' /
   B1PA25IN  1 'MONTHS' 2 'YEARS' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA25A   1 'LOW' 2 'ABOUT NORMAL' 3 'SLIGHTLY RAISED' 4 'HIGH'
             7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA25BS  997 'DON''T KNOW' 998 'REFUSED' 999 'INAPP' /
   B1PA25BD  997 'DON''T KNOW' 998 'REFUSED' 999 'INAPP' /
   B1PA26    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA27    1 'HIGHER' 2 'LOWER' 3 'ABOUT THE SAME' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PA27A   1 'A LOT' 2 'SOMEWHAT' 3 'A LITTLE' 7 'DON''T KNOW' 8 'REFUSED'
             9 'INAPP' /
   B1PA27B   1 'A LOT' 2 'SOMEWHAT' 3 'A LITTLE' 7 'DON''T KNOW' 8 'REFUSED'
             9 'INAPP' /
   B1PA28A   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA28B   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA28C   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA28D   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA28E   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA28F   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA28G   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA28H   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA28I   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA28J   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA28AA  97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PA28BB  97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PA28CC  97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PA28DD  97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PA28EE  97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PA28FF  97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PA28GG  97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PA28HH  97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PA28II  97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PA28JJ  97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PA29    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA29AA  1 'YES' 2 'NO' 7 'DON''T KNOW' 9 'INAPP' /
   B1PA29AB  1 'YES' 2 'NO' 7 'DON''T KNOW' 9 'INAPP' /
   B1PA29AC  1 'YES' 2 'NO' 7 'DON''T KNOW' 9 'INAPP' /
   B1PA29AD  1 'YES' 2 'NO' 7 'DON''T KNOW' 9 'INAPP' /
   B1PA29AE  1 'YES' 2 'NO' 7 'DON''T KNOW' 9 'INAPP' /
   B1PA29AF  1 'YES' 2 'NO' 7 'DON''T KNOW' 9 'INAPP' /
   B1PA29AG  1 'YES' 2 'NO' 7 'DON''T KNOW' 9 'INAPP' /
   B1PA29AH  1 'YES' 2 'NO' 7 'DON''T KNOW' 9 'INAPP' /
   B1PA29AI  1 'YES' 2 'NO' 7 'DON''T KNOW' 9 'INAPP' /
   B1PA30A   1 'YES' 2 'NO' 7 'DON''T KNOW' 9 'INAPP' /
   B1PA30B   1 'YES' 2 'NO' 7 'DON''T KNOW' 9 'INAPP' /
   B1PA30C   1 'YES' 2 'NO' 7 'DON''T KNOW' 9 'INAPP' /
   B1PA30D   1 'YES' 2 'NO' 7 'DON''T KNOW' 9 'INAPP' /
   B1PA30E   1 'YES' 2 'NO' 7 'DON''T KNOW' 9 'INAPP' /
   B1PA30F   1 'YES' 2 'NO' 7 'DON''T KNOW' 9 'INAPP' /
   B1PA31A   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA31B   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA31C   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA31D   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA31E   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA31F   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA31H   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA31I   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA31J   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA32A   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA32C   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA32D   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA32E   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA32G   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA32H   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA32J   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA33A   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA33C   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA33D   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA33E   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA33G   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA33H   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA33J   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA34A   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA34B   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA34C   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA34D   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA34E   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA34F   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA34H   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA34I   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA34J   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA35A   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA35B   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA35C   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA35D   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA35E   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA35F   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA35G   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA35H   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA35I   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA35J   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA36A   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA36AM  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PA36AY  9997 'DON''T KNOW' 9999 'INAPP' /
   B1PA36B   1 'ONE OVARY REMOVED' 2 'BOTH OVARIES REMOVED' 3 'NO'
             7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA36C   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA36DM  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PA36DY  9997 'DON''T KNOW' 9999 'INAPP' /
   B1PA36EM  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PA36EY  9997 'DON''T KNOW' 9999 'INAPP' /
   B1PA37    96 'NEVER HAD A CIGARETTE' 97 'DON''T KNOW' 98 'REFUSED' /
   B1PA38A   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA38B   97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PA39    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA40    96 '96 OR MORE CIGARETTES A DAY' 97 'DON''T KNOW' 98 'REFUSED'
             99 'INAPP' /
   B1PA41    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA42    97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PA43    96 '96 OR MORE CIGARETTES PER DAY' 97 'DON''T KNOW' 98 'REFUSED'
             99 'INAPP' /
   B1PA44    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA45A   1 'YES' 2 'NO' 4 'NO ONE' 7 'DON''T KNOW' /
   B1PA45B   1 'YES' 2 'NO' 4 'NO ONE' 7 'DON''T KNOW' /
   B1PA45C   1 'YES' 2 'NO' 4 'NO ONE' 7 'DON''T KNOW' /
   B1PA46    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA47    1 'YES' 2 'NO' 3 'NEVER HAD A JOB' 7 'DON''T KNOW' 8 'REFUSED'
             9 'INAPP' /
   B1PA48    1 'YES' 2 'NO' 3 'DON''T CURRENTLY HAVE A JOB' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PA49    96 'NEVER HAD A DRINK' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP'
             /
   B1PA50    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA51    1 'EVERY DAY' 2 '5 OR 6 DAYS A WEEK' 3 '3 OR 4 DAYS A WEEK'
             4 '1 OR 2 DAYS A WEEK' 5 'LESS THAN ONE DAY A WEEK'
             6 'NEVER DRINK (VOLUNTEERED)' 7 'DON''T KNOW' 8 'REFUSED'
             9 'INAPP' /
   B1PA51A   1 '3 OR 4 DAYS A MONTH' 2 '1 OR 2 DAYS A MONTH'
             3 'LESS OFTEN THAN ONE DAY A MONTH'
             4 'NEVER DRINK (VOLUNTEERED)' 6 'NEVER DRINK (VOLUNTEERED)'
             7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA52    97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PA53    97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PA54    1 'EVERY DAY' 2 '5 OR 6 DAYS A WEEK' 3 '3 OR 4 DAYS A WEEK'
             4 '1 OR 2 DAYS A WEEK' 5 'LESS THAN ONE DAY A WEEK'
             6 'NEVER DRINK (VOLUNTEERED)' 7 'DON''T KNOW' 8 'REFUSED'
             9 'INAPP' /
   B1PA54A   1 '3 OR 4 DAYS A MONTH' 2 '1 OR 2 DAYS A MONTH'
             3 'LESS OFTEN THAN ONE DAY A MONTH'
             4 'NEVER DRINK (VOLUNTEERED)' 6 'NEVER DRINK (VOLUNTEERED)'
             7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA55    97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PA56    97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PA57    0 'LESS THAN 1 YEAR' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PA58    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA59    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA60    1 'YES' 2 'NO' 6 'WAS ON ANTI-DEPRESSANTS' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PA61    1 'ALL DAY LONG' 2 'MOST OF THE DAY' 3 'ABOUT HALF THE DAY'
             4 'LESS THAN HALF THE DAY' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP'
             /
   B1PA62    1 'EVERY DAY' 2 'ALMOST EVERY DAY' 3 'LESS OFTEN THAN THAT'
             7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA63    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA64    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA65    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA65A   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA66    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA66A   1 'EVERY NIGHT' 2 'NEARLY EVERY NIGHT' 3 'LESS OFTEN THAN THAT'
             7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA67    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA68    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA69    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA70    97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PA71MO  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 96 'CURRENTLY FEEL THIS WAY, HAS NOT ENDED'
             97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PA71YR  9997 'DON''T KNOW' 9998 'REFUSED' 9999 'INAPP' /
   B1PDEPAF  0 'Lowest depressed affect' 7 'Highest depressed affect' /
   B1PDEPAD  0 'Negative' 1 'Positive' /
   B1PA72    1 'YES' 2 'NO' 6 'WAS ON ANTI-DEPRESSANTS' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PA73    1 'ALL DAY LONG' 2 'MOST OF THE DAY' 3 'ABOUT HALF THE DAY'
             4 'LESS THAN HALF THE DAY' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP'
             /
   B1PA74    1 'EVERY DAY' 2 'ALMOST EVERY DAY' 3 'LESS OFTEN THAN THAT'
             7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA75    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA76    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA76A   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA77    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA77A   1 'EVERY NIGHT' 2 'NEARLY EVERY NIGHT' 3 'LESS OFTEN THAN THAT'
             7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA78    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA79    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA80    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA81    97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PA82MO  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 96 'CURRENTLY FEEL THIS WAY, HAS NOT ENDED'
             97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PA82YR  9999 'INAPP' /
   B1PANHED  0 'Lowest depression/anhedonia' 6 'Highest depression/anhedonia'
             /
   B1PANHDX  0 'Negative' 1 'Positive' /
   B1PDEPRE  0 'Lowest depression' 7 'Highest depression' /
   B1PDEPDX  0 'Negative' 1 'Positive' /
   B1PA83    1 'MORE' 2 'LESS' 3 'ABOUT THE SAME'
             4 'I DON''T WORRY AT ALL (VOLUNTEERED)' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PA83A   1 'A LOT MORE' 2 'SOMEWHAT' 3 'A LITTLE' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PA84    1 'EVERY DAY' 2 'JUST ABOUT EVERY DAY' 3 'MOST DAYS'
             4 'ABOUT HALF THE DAYS' 5 'LESS THAN HALF THE DAYS'
             7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA84A   1 'ALL DAY LONG' 2 'MOST OF THE DAY' 3 'ABOUT HALF'
             4 'LESS THAN HALF THE DAY' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP'
             /
   B1PA85    1 'ONE THING' 2 'MORE THAN ONE' 7 'DON''T KNOW' 8 'REFUSED'
             9 'INAPP' /
   B1PA85A   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA86    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA86A   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA87    1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PA87A   1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PA88A   1 'MOST DAYS' 2 'ABOUT HALF THE DAYS'
             3 'LESS THAN HALF THE DAYS' 4 'NEVER' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PA88B   1 'MOST DAYS' 2 'ABOUT HALF THE DAYS'
             3 'LESS THAN HALF THE DAYS' 4 'NEVER' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PA88C   1 'MOST DAYS' 2 'ABOUT HALF THE DAYS'
             3 'LESS THAN HALF THE DAYS' 4 'NEVER' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PA88D   1 'MOST DAYS' 2 'ABOUT HALF THE DAYS'
             3 'LESS THAN HALF THE DAYS' 4 'NEVER' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PA88E   1 'MOST DAYS' 2 'ABOUT HALF THE DAYS'
             3 'LESS THAN HALF THE DAYS' 4 'NEVER' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PA88F   1 'MOST DAYS' 2 'ABOUT HALF THE DAYS'
             3 'LESS THAN HALF THE DAYS' 4 'NEVER' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PA88G   1 'MOST DAYS' 2 'ABOUT HALF THE DAYS'
             3 'LESS THAN HALF THE DAYS' 4 'NEVER' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PA88H   1 'MOST DAYS' 2 'ABOUT HALF THE DAYS'
             3 'LESS THAN HALF THE DAYS' 4 'NEVER' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PA88I   1 'MOST DAYS' 2 'ABOUT HALF THE DAYS'
             3 'LESS THAN HALF THE DAYS' 4 'NEVER' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PA88J   1 'MOST DAYS' 2 'ABOUT HALF THE DAYS'
             3 'LESS THAN HALF THE DAYS' 4 'NEVER' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PA89    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PANXIE  0 'Lowest anxiety score' 10 'highest anxiety score' /
   B1PANXTD  0 'Negative' 1 'Positive' /
   B1PA90    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA90A   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA91    997 'DON''T KNOW' 998 'REFUSED' 999 'INAPP' /
   B1PA92    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA92A   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA92B   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA92C   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA92D   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA92E   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PA92F   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PPANIC  0 'Lowest panic score' 6 'Highest panic score' /
   B1PPANDX  0 'Negative' 1 'Positive' /
   B1PB1     1 'NO SCHOOL/SOME GRADE SCHOOL (1-6)'
             2 'EIGHTH GRADE/JUNIOR HIGH SCHOOL (7-8)'
             3 'SOME HIGH SCHOOL (9-12 NO DIPLOMA/NO GED)' 4 'GED'
             5 'GRADUATED FROM HIGH SCHOOL'
             6 '1 TO 2 YEARS OF COLLEGE, NO DEGREE YET'
             7 '3 OR MORE YEARS OF COLLEGE, NO DEGREE YET'
             8 'GRAD. FROM 2-YEAR COLLEGE, VOCATIONAL SCHOOL, OR ASSOC. DEGR'
             9 'GRADUATED FROM A 4- OR 5-YEAR COLLEGE, OR BACHELOR''S DEGREE'
             10 'SOME GRADUATE SCHOOL' 11 'MASTER''S DEGREE'
           12 'PH.D., ED.D., MD, DDS, LLB, LLD, JD, OR OTHER PROFESS''NL DEG'
             97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PB2     97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PB3A    1 'YES' 2 'NO' 7 'DON''T KNOW' 9 'INAPP' /
   B1PB3B    1 'YES' 2 'NO' 7 'DON''T KNOW' 9 'INAPP' /
   B1PB3C    1 'YES' 2 'NO' 7 'DON''T KNOW' 9 'INAPP' /
   B1PB3D    1 'YES' 2 'NO' 7 'DON''T KNOW' 9 'INAPP' /
   B1PB3E    1 'YES' 2 'NO' 7 'DON''T KNOW' 9 'INAPP' /
   B1PB3F    1 'YES' 2 'NO' 7 'DON''T KNOW' 9 'INAPP' /
   B1PB3G    1 'YES' 2 'NO' 7 'DON''T KNOW' 9 'INAPP' /
   B1PB3H    1 'YES' 2 'NO' 7 'DON''T KNOW' 9 'INAPP' /
   B1PB3I    1 'YES' 2 'NO' 7 'DON''T KNOW' 9 'INAPP' /
   B1PB3J    1 'YES' 2 'NO' 7 'DON''T KNOW' 9 'INAPP' /
   B1PB3K    1 'YES' 2 'NO' 7 'DON''T KNOW' 9 'INAPP' /
   B1PBWORK  1 'WORKING NOW' 2 'SELF-EMPLOYED'
             3 'LOOKING FOR WORK; UNEMPLOYED' 4 'TEMPORARILY LAID OFF'
             5 'RETIRED' 6 'HOMEMAKER' 7 'FULL-TIME STUDENT'
             8 'PART-TIME STUDENT' 9 'MATERNITY OR SICK LEAVE (VOLUNTEERED)'
             10 'PERMANENTLY DISABLED (VOLUNTEERED)' 11 'OTHER (SPECIFY)'
             97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PB4N    996 'NEVER HAD A PAYING JOB' 997 'DON''T KNOW' 998 'REFUSED'
             999 'INAPP' /
   B1PB4M    1 'DAYS' 2 'WEEKS' 3 'MONTHS' 4 'YEARS' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PB5     1 'FIRED' 2 'LAID OFF' 3 'PLANT/COMPANY CLOSED' 4 'QUIT'
             5 'RETIRED' 6 'WORK FORCE REDUCTION (VOLUNTEERED)' 7 'OTHER'
             97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PB6     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PB7     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PB7A    996 '996 OR MORE PEOPLE' 997 'DON''T KNOW' 998 'REFUSED'
             999 'INAPP' /
   B1PB8     1 'HAS EMPLOYER' 2 'SELF-EMPLOYED' 7 'DON''T KNOW' 8 'REFUSED'
             9 'INAPP' /
   B1POCC    3 'LEGISLATORS'
             4 'CHIEF EXECUTIVES AND GENERAL ADMINISTRATORS, PUBLIC ADMINIS'
             5 'ADMINISTRATORS AND OFFICIALS, PUBLIC ADMINISTRATION'
             6 'ADMINISTRATORS, PROTECTIVE SERVICES' 7 'FINANCIAL MANAGERS'
             8 'PERSONNEL AND LABOR RELATIONS MANAGERS'
             9 'PURCHASING MANAGERS'
             13 'MANAGERS, MARKETING, ADVERTISING, AND PUBLIC RELATIONS'
             14 'ADMINISTRATORS, EDUCATION AND RELATED FIELDS'
             15 'MANAGERS, MEDICINE AND HEALTH'
             16 'POSTMASTERS AND MAIL SUPERINTENDENTS'
             17 'MANAGERS, FOOD SERVING AND LODGING ESTABLISHMENTS'
             18 'MANAGERS, PROPERTIES AND REAL ESTATE' 19 'FUNERAL DIRECTORS'
             21 'MANAGERS, SERVICE ORGANIZATIONS, N.E.C.'
             22 'MANAGERS AND ADMINISTRATORS, N.E.C.'
             23 'ACCOUNTANTS AND AUDITORS' 24 'UNDERWRITERS'
             25 'OTHER FINANCIAL OFFICERS' 26 'MANAGEMENT ANALYSTS'
             27 'PERSONNEL, TRAINING, AND LABOR RELATIONS SPECIALISTS'
             28 'PURCHASING AGENTS AND BUYERS, FARM PRODUCTS'
             29 'BUYERS, WHOLESALE AND RETAIL TRADE, EXCEPT FARM PRODUCTS'
             33 'PURCHASING AGENTS AND BUYERS, N.E.C.'
             34 'BUSINESS AND PROMOTION AGENTS' 35 'CONSTRUCTION INSPECTORS'
             36 'INSPECTORS AND COMPLIANCE OFFICERS, EXCEPT CONSTRUCTION'
             37 'MANAGEMENT RELATED OCCUPATIONS, N.E.C.' 43 'ARCHITECTS'
             44 'AEROSPACE ENGINEERS'
             45 'METALLURGICAL AND MATERIALS ENGINEERS' 46 'MINING ENGINEERS'
             47 'PETROLEUM ENGINEERS' 48 'CHEMICAL ENGINEERS'
             49 'NUCLEAR ENGINEERS' 53 'CIVIL ENGINEERS'
             54 'AGRICULTURAL ENGINEERS'
             55 'ELECTRICAL AND ELECTRONIC ENGINEERS'
             56 'INDUSTRIAL ENGINEERS' 57 'MECHANICAL ENGINEERS'
             58 'MARINE AND NAVAL ARCHITECTS' 59 'ENGINEERS, N.E.C.'
             63 'SURVEYORS AND MAPPING SCIENTISTS'
             64 'COMPUTER SYSTEMS ANALYSTS AND SCIENTISTS'
             65 'OPERATIONS AND SYSTEMS RESEARCHERS AND ANALYSTS'
             66 'ACTUARIES' 67 'STATISTICIANS'
             68 'MATHEMATICAL SCIENTISTS, N.E.C.'
             69 'PHYSICISTS AND ASTRONOMERS'
             73 'CHEMISTS, EXCEPT BIOCHEMISTS'
             74 'ATMOSPHERIC AND SPACE SCIENTISTS'
             75 'GEOLOGISTS AND GEODESISTS' 76 'PHYSICAL SCIENTISTS, N.E.C.'
             77 'AGRICULTURAL AND FOOD SCIENTISTS'
             78 'BIOLOGICAL AND LIFE SCIENTISTS'
             79 'FORESTRY AND CONSERVATION SCIENTISTS'
             83 'MEDICAL SCIENTISTS' 84 'PHYSICIANS' 85 'DENTISTS'
             86 'VETERINARIANS' 87 'OPTOMETRISTS' 88 'PODIATRISTS'
             89 'HEALTH DIAGNOSING PRACTITIONERS, N.E.C.'
             95 'REGISTERED NURSES' 96 'PHARMACISTS' 97 'DIETITIANS'
             98 'RESPIRATORY THERAPISTS' 99 'OCCUPATIONAL THERAPISTS'
             103 'PHYSICAL THERAPISTS' 104 'SPEECH THERAPISTS'
             105 'THERAPISTS, N.E.C.' 106 'PHYSICIANS ASSISTANTS'
             113 'EARTH, ENVIRONMENTAL, AND MARINE SCIENCE TEACHERS'
             114 'BIOLOGICAL SCIENCE TEACHERS' 115 'CHEMISTRY TEACHERS'
             116 'PHYSICS TEACHERS' 117 'NATURAL SCIENCE TEACHERS, N.E.C.'
             118 'PSYCHOLOGY TEACHERS' 119 'ECONOMICS TEACHERS'
             123 'HISTORY TEACHERS' 124 'POLITICAL SCIENCE TEACHERS'
             125 'SOCIOLOGY TEACHERS' 126 'SOCIAL SCIENCE TEACHERS, N.E.C.'
             127 'ENGINEERING TEACHERS' 128 'MATHEMATICAL SCIENCE TEACHERS'
             129 'COMPUTER SCIENCE TEACHERS' 133 'MEDICAL SCIENCE TEACHERS'
             134 'HEALTH SPECIALTIES TEACHERS'
             135 'BUSINESS, COMMERCE, AND MARKETING TEACHERS'
             136 'AGRICULTURE AND FORESTRY TEACHERS'
             137 'ART, DRAMA, AND MUSIC TEACHERS'
             138 'PHYSICAL EDUCATION TEACHERS' 139 'EDUCATION TEACHERS'
             143 'ENGLISH TEACHERS' 144 'FOREIGN LANGUAGE TEACHERS'
             145 'LAW TEACHERS' 146 'SOCIAL WORK TEACHERS'
             147 'THEOLOGY TEACHERS' 148 'TRADE AND INDUSTRIAL TEACHERS'
             149 'HOME ECONOMICS TEACHERS'
             153 'TEACHERS, POSTSECONDARY, N.E.C.'
             154 'POSTSECONDARY TEACHERS, SUBJECT NOT SPECIFIED'
             155 'TEACHERS, PREKINDERGARTEN AND KINDERGARTEN'
             156 'TEACHERS, ELEMENTARY SCHOOL'
             157 'TEACHERS, SECONDARY SCHOOL'
             158 'TEACHERS, SPECIAL EDUCATION' 159 'TEACHERS, N.E.C.'
             163 'COUNSELORS, EDUCATIONAL AND VOCATIONAL' 164 'LIBRARIANS'
             165 'ARCHIVISTS AND CURATORS' 166 'ECONOMISTS'
             167 'PSYCHOLOGISTS' 168 'SOCIOLOGISTS'
             169 'SOCIAL SCIENTISTS, N.E.C.' 173 'URBAN PLANNERS'
             174 'SOCIAL WORKERS' 175 'RECREATION WORKERS' 176 'CLERGY'
             177 'RELIGIOUS WORKERS, N.E.C.' 178 'LAWYERS' 179 'JUDGES'
             183 'AUTHORS' 184 'TECHNICAL WRITERS' 185 'DESIGNERS'
             186 'MUSICIANS AND COMPOSERS' 187 'ACTORS AND DIRECTORS'
             188 'PAINTERS, SCULPTORS, CRAFT-ARTISTS, AND ARTIST PRINTMAKERS'
             189 'PHOTOGRAPHERS' 193 'DANCERS'
             194 'ARTISTS, PERFORMERS, AND RELATED WORKERS, N.E.C.'
             195 'EDITORS AND REPORTERS' 197 'PUBLIC RELATIONS SPECIALISTS'
             198 'ANNOUNCERS' 199 'ATHLETES'
             203 'CLINICAL LABORATORY TECHNOLOGISTS AND TECHNICIANS'
             204 'DENTAL HYGIENISTS'
             205 'HEALTH RECORD TECHNOLOGISTS AND TECHNICIANS'
             206 'RADIOLOGIC TECHNICIANS' 207 'LICENSED PRACTICAL NURSES'
             208 'HEALTH TECHNOLOGISTS AND TECHNICIANS, N.E.C.'
             213 'ELECTRICAL AND ELECTRONIC TECHNICIANS'
             214 'INDUSTRIAL ENGINEERING TECHNICIANS'
             215 'MECHANICAL ENGINEERING TECHNICIANS'
             216 'ENGINEERING TECHNICIANS, N.E.C.' 217 'DRAFTING OCCUPATIONS'
             218 'SURVEYING AND MAPPING TECHNICIANS'
             223 'BIOLOGICAL TECHNICIANS' 224 'CHEMICAL TECHNICIANS'
             225 'SCIENCE TECHNICIANS, N.E.C.'
             226 'AIRPLANE PILOTS AND NAVIGATORS'
             227 'AIR TRAFFIC CONTROLLERS'
             228 'BROADCAST EQUIPMENT OPERATORS' 229 'COMPUTER PROGRAMMERS'
             233 'TOOL PROGRAMMERS, NUMERICAL CONTROL' 234 'LEGAL ASSISTANTS'
             235 'TECHNICIANS, N.E.C.'
             243 'SUPERVISORS AND PROPRIETORS, SALES OCCUPATIONS'
             253 'INSURANCE SALES OCCUPATIONS'
             254 'REAL ESTATE SALES OCCUPATIONS'
             255 'SECURITIES AND FINANCIAL SERVICES SALES OCCUPATIONS'
             256 'ADVERTISING AND RELATED SALES OCCUPATIONS'
             257 'SALES OCCUPATIONS, OTHER BUSINESS SERVICES'
             258 'SALES ENGINEERS'
            259 'SALES REPRESENTATIVES, MINING, MANUFACTURING, AND WHOLESALE'
             263 'SALES WORKERS, MOTOR VEHICLES AND BOATS'
             264 'SALES WORKERS, APPAREL' 265 'SALES WORKERS, SHOES'
             266 'SALES WORKERS, FURNITURE AND HOME FURNISHINGS'
             267 'SALES WORKERS, RADIO, TV, HI-FI, AND APPLIANCES'
             268 'SALES WORKERS, HARDWARE AND BUILDING SUPPLIES'
             269 'SALES WORKERS, PARTS'
             274 'SALES WORKERS, OTHER COMMODITIES'
             275 'SALES COUNTER CLERKS' 276 'CASHIERS'
             277 'STREET AND DOOR-TO-DOOR SALES WORKERS' 278 'NEWS VENDORS'
             283 'DEMONSTRATORS, PROMOTERS AND MODELS, SALES'
             284 'AUCTIONEERS' 285 'SALES SUPPORT OCCUPATIONS, N.E.C.'
             303 'SUPERVISORS, GENERAL OFFICE'
             304 'SUPERVISORS, COMPUTER EQUIPMENT OPERATORS'
             305 'SUPERVISORS, FINANCIAL RECORDS PROCESSING'
             306 'CHIEF COMMUNICATIONS OPERATORS'
            307 'SUPERVISORS, DISTRIBUTION, SCHEDULING, AND ADJUSTING CLERKS'
             308 'COMPUTER OPERATORS' 309 'PERIPHERAL EQUIPMENT OPERATORS'
             313 'SECRETARIES' 314 'STENOGRAPHERS' 315 'TYPISTS'
             316 'INTERVIEWERS' 317 'HOTEL CLERKS'
             318 'TRANSPORTATION TICKET AND RESERVATION AGENTS'
             319 'RECEPTIONISTS' 323 'INFORMATION CLERKS, N.E.C.'
             325 'CLASSIFIED-AD CLERKS' 326 'CORRESPONDENCE CLERKS'
             327 'ORDER CLERKS'
             328 'PERSONNEL CLERKS, EXCEPT PAYROLL AND TIMEKEEPING'
             329 'LIBRARY CLERKS' 335 'FILE CLERKS' 336 'RECORDS CLERKS'
             337 'BOOKKEEPERS, ACCOUNTING, AND AUDITING CLERKS'
             338 'PAYROLL AND TIMEKEEPING CLERKS' 339 'BILLING CLERKS'
             343 'COST AND RATE CLERKS'
             344 'BILLING, POSTING, AND CALCULATING MACHINE OPERATORS'
             345 'DUPLICATING MACHINE OPERATORS'
             346 'MAIL PREPARING AND PAPER HANDLING MACHINE OPERATORS'
             347 'OFFICE MACHINE OPERATORS, N.E.C.' 348 'TELEPHONE OPERATORS'
             353 'COMMUNICATIONS EQUIPMENT OPERATORS, N.E.C.'
             354 'POSTAL CLERKS, EXCEPT MAIL CARRIERS'
             355 'MAIL CARRIERS, POSTAL SERVICE'
             356 'MAIL CLERKS, EXCEPT POSTAL SERVICE' 357 'MESSENGERS'
             359 'DISPATCHERS' 363 'PRODUCTION COORDINATORS'
             364 'TRAFFIC, SHIPPING, AND RECEIVING CLERKS'
             365 'STOCK AND INVENTORY CLERKS' 366 'METER READERS'
             368 'WEIGHERS, MEASURERS, CHECKERS, AND SAMPLERS'
             373 'EXPEDITERS'
            374 'MATERIAL RECORDING, SCHEDULING, AND DISTRIBUTING CLERKS, N.'
             375 'INSURANCE ADJUSTERS, EXAMINERS, AND INVESTIGATORS'
             376 'INVESTIGATORS AND ADJUSTERS, EXCEPT INSURANCE'
             377 'ELIGIBILITY CLERKS, SOCIAL WELFARE'
             378 'BILL AND ACCOUNT COLLECTORS' 379 'GENERAL OFFICE CLERKS'
             383 'BANK TELLERS' 384 'PROOFREADERS' 385 'DATA-ENTRY KEYERS'
             386 'STATISTICAL CLERKS' 387 'TEACHERS AIDES'
             389 'ADMINISTRATIVE SUPPORT OCCUPATIONS, N.E.C.'
             403 'LAUNDERERS AND IRONERS' 404 'COOKS, PRIVATE HOUSEHOLD'
             405 'HOUSEKEEPERS AND BUTLERS'
             406 'CHILD CARE WORKERS, PRIVATE HOUSEHOLD'
             407 'PRIVATE HOUSEHOLD CLEANERS AND SERVANTS'
             413 'SUPERVISORS, FIREFIGHTING AND FIRE PREVENTION OCCUPATIONS'
             414 'SUPERVISORS, POLICE AND DETECTIVES'
             415 'SUPERVISORS, GUARDS'
             416 'FIRE INSPECTION AND FIRE PREVENTION OCCUPATIONS'
             417 'FIREFIGHTING OCCUPATIONS'
             418 'POLICE AND DETECTIVES, PUBLIC SERVICE'
             423 'SHERIFFS, BAILIFFS, AND OTHER LAW ENFORCEMENT OFFICERS'
             424 'CORRECTIONAL INSTITUTION OFFICERS' 425 'CROSSING GUARDS'
             426 'GUARDS AND POLICE, EXCEPT PUBLIC SERVICE'
             427 'PROTECTIVE SERVICE OCCUPATIONS, N.E.C.'
             433 'SUPERVISORS, FOOD PREPARATION AND SERVICE OCCUPATIONS'
             434 'BARTENDERS' 435 'WAITERS AND WAITRESSES' 436 'COOKS'
             438 'FOOD COUNTER, FOUNTAIN AND RELATED OCCUPATIONS'
             439 'KITCHEN WORKERS, FOOD PREPARATION'
             443 'WAITERS/WAITRESSES ASSISTANTS'
             444 'MISCELLANEOUS FOOD PREPARATION OCCUPATIONS'
             445 'DENTAL ASSISTANTS' 446 'HEALTH AIDES, EXCEPT NURSING'
             447 'NURSING AIDES, ORDERLIES, AND ATTENDANTS'
             448 'SUPERVISORS, CLEANING AND BUILDING SERVICE WORKERS'
             449 'MAIDS AND HOUSEMEN' 453 'JANITORS AND CLEANERS'
             454 'ELEVATOR OPERATORS' 455 'PEST CONTROL OCCUPATIONS'
             456 'SUPERVISORS, PERSONAL SERVICE OCCUPATIONS' 457 'BARBERS'
             458 'HAIRDRESSERS AND COSMETOLOGISTS'
             459 'ATTENDANTS, AMUSEMENT AND RECREATION FACILITIES'
             461 'GUIDES' 462 'USHERS' 463 'PUBLIC TRANSPORTATION ATTENDANTS'
             464 'BAGGAGE PORTERS AND BELLHOPS' 465 'WELFARE SERVICE AIDES'
             466 'FAMILY CHILD CARE PROVIDERS'
             467 'EARLY CHILDHOOD TEACHERS ASSISTANTS'
             468 'CHILD CARE WORKERS, N.E.C.'
             469 'PERSONAL SERVICE OCCUPATIONS, N.E.C.'
             473 'FARMERS, EXCEPT HORTICULTURAL'
             474 'HORTICULTURAL SPECIALTY FARMERS'
             475 'MANAGERS, FARMS, EXCEPT HORTICULTURAL'
             476 'MANAGERS, HORTICULTURAL SPECIALTY FARMS'
             477 'SUPERVISORS, FARM WORKERS' 479 'FARM WORKERS'
             483 'MARINE LIFE CULTIVATION WORKERS' 484 'NURSERY WORKERS'
             485 'SUPERVISORS, RELATED AGRICULTURAL OCCUPATIONS'
             486 'GROUNDSKEEPERS AND GARDENERS, EXCEPT FARM'
             487 'ANIMAL CARETAKERS, EXCEPT FARM'
             488 'GRADERS AND SORTERS, AGRICULTURAL PRODUCTS'
             489 'INSPECTORS, AGRICULTURAL PRODUCTS'
             494 'SUPERVISORS, FORESTRY AND LOGGING WORKERS'
             495 'FORESTRY WORKERS, EXCEPT LOGGING'
             496 'TIMBER CUTTING AND LOGGING OCCUPATIONS'
             497 'CAPTAINS AND OTHER OFFICERS, FISHING VESSELS' 498 'FISHERS'
             499 'HUNTERS AND TRAPPERS'
             503 'SUPERVISORS, MECHANICS AND REPAIRERS'
             505 'AUTOMOBILE MECHANICS, EXCEPT APPRENTICES'
             506 'AUTOMOBILE MECHANIC APPRENTICES'
             507 'BUS, TRUCK, AND STATIONARY ENGINE MECHANICS'
             508 'AIRCRAFT ENGINE MECHANICS' 509 'SMALL ENGINE REPAIRERS'
             514 'AUTOMOBILE BODY AND RELATED REPAIRERS'
             515 'AIRCRAFT MECHANICS, EXCEPT ENGINE'
             516 'HEAVY EQUIPMENT MECHANICS' 517 'FARM EQUIPMENT MECHANICS'
             518 'INDUSTRIAL MACHINERY REPAIRERS'
             519 'MACHINERY MAINTENANCE OCCUPATIONS'
            523 'ELECTRONIC REPAIRERS, COMMUNICATIONS AND INDUSTRIAL EQUIPME'
             525 'DATA PROCESSING EQUIPMENT REPAIRERS'
             526 'HOUSEHOLD APPLIANCE AND POWER TOOL REPAIRERS'
             527 'TELEPHONE LINE INSTALLERS AND REPAIRERS'
             529 'TELEPHONE INSTALLERS AND REPAIRERS'
            533 'MISCELLANEOUS ELECTRICAL AND ELECTRONIC EQUIPMENT REPAIRERS'
             534 'HEATING, AIR CONDITIONING, AND REFRIGERATION MECHANICS'
             535 'CAMERA, WATCH, AND MUSICAL INSTRUMENT REPAIRERS'
             536 'LOCKSMITHS AND SAFE REPAIRERS'
             538 'OFFICE MACHINE REPAIRERS'
             539 'MECHANICAL CONTROLS AND VALVE REPAIRERS'
             543 'ELEVATOR INSTALLERS AND REPAIRERS' 544 'MILLWRIGHTS'
             547 'SPECIFIED MECHANICS AND REPAIRERS, N.E.C.'
             549 'NOT SPECIFIED MECHANICS AND REPAIRERS'
             553 'SUPERVISORS, BRICKMASONS, STONEMASONS, AND TILE SETTERS'
             554 'SUPERVISORS, CARPENTERS AND RELATED WORKERS'
            555 'SUPERVISORS, ELECTRICIANS AND POWER TRANSMISSION INSTALLERS'
             556 'SUPERVISORS, PAINTERS, PAPERHANGERS, AND PLASTERERS'
             557 'SUPERVISORS, PLUMBERS, PIPEFITTERS, AND STEAMFITTERS'
             558 'SUPERVISORS, CONSTRUCTION N.E.C.'
             563 'BRICKMASONS AND STONEMASONS, EXCEPT APPRENTICES'
             564 'BRICKMASON AND STONEMASON APPRENTICES'
             565 'TILE SETTERS, HARD AND SOFT' 566 'CARPET INSTALLERS'
             567 'CARPENTERS, EXCEPT APPRENTICES' 569 'CARPENTER APPRENTICES'
             573 'DRYWALL INSTALLERS' 575 'ELECTRICIANS, EXCEPT APPRENTICES'
             576 'ELECTRICIAN APPRENTICES'
             577 'ELECTRICAL POWER INSTALLERS AND REPAIRERS'
             579 'PAINTERS, CONSTRUCTION AND MAINTENANCE' 583 'PAPERHANGERS'
             584 'PLASTERERS'
            585 'PLUMBERS, PIPEFITTERS, AND STEAMFITTERS, EXCEPT APPRENTICES'
             587 'PLUMBER, PIPEFITTER, AND STEAMFITTER APPRENTICES'
             588 'CONCRETE AND TERRAZZO FINISHERS' 589 'GLAZIERS'
             593 'INSULATION WORKERS'
             594 'PAVING, SURFACING, AND TAMPING EQUIPMENT OPERATORS'
             595 'ROOFERS' 596 'SHEETMETAL DUCT INSTALLERS'
             597 'STRUCTURAL METAL WORKERS' 598 'DRILLERS, EARTH'
             599 'CONSTRUCTION TRADES, N.E.C.'
             613 'SUPERVISORS, EXTRACTIVE OCCUPATIONS'
             614 'DRILLERS, OIL WELL' 615 'EXPLOSIVES WORKERS'
             616 'MINING MACHINE OPERATORS' 617 'MINING OCCUPATIONS, N.E.C.'
             628 'SUPERVISORS, PRODUCTION OCCUPATIONS'
             634 'TOOL AND DIE MAKERS, EXCEPT APPRENTICES'
             635 'TOOL AND DIE MAKER APPRENTICES'
             636 'PRECISION ASSEMBLERS, METAL'
             637 'MACHINISTS, EXCEPT APPRENTICES' 639 'MACHINIST APPRENTICES'
             643 'BOILERMAKERS'
             644 'PRECISION GRINDERS, FILERS, AND TOOL SHARPENERS'
             645 'PATTERNMAKERS AND MODEL MAKERS, METAL'
             646 'LAY-OUT WORKERS'
             647 'PRECIOUS STONES AND METALS WORKERS , JEWELERS'
             649 'ENGRAVERS, METAL'
             653 'SHEET METAL WORKERS, EXCEPT APPRENTICES'
             654 'SHEET METAL WORKER APPRENTICES'
             655 'MISCELLANEOUS PRECISION METAL WORKERS'
             656 'PATTERNMAKERS AND MODEL MAKERS, WOOD'
             657 'CABINET MAKERS AND BENCH CARPENTERS'
             658 'FURNITURE AND WOOD FINISHERS'
             659 'MISCELLANEOUS PRECISION WOODWORKERS' 666 'DRESSMAKERS'
             667 'TAILORS' 668 'UPHOLSTERERS' 669 'SHOE REPAIRERS'
             674 'MISCELLANEOUS PRECISION APPAREL AND FABRIC WORKERS'
             675 'HAND MOLDERS AND SHAPERS, EXCEPT JEWELERS'
             676 'PATTERNMAKERS, LAY-OUT WORKERS, AND CUTTERS'
             677 'OPTICAL GOODS WORKERS'
             678 'DENTAL LABORATORY AND MEDICAL APPLIANCE TECHNICIANS'
             679 'BOOKBINDERS'
             683 'ELECTRICAL AND ELECTRONIC EQUIPMENT ASSEMBLERS'
             684 'MISCELLANEOUS PRECISION WORKERS, N.E.C.'
             686 'BUTCHERS AND MEAT CUTTERS' 687 'BAKERS'
             688 'FOOD BATCHMAKERS' 689 'INSPECTORS, TESTERS, AND GRADERS'
             693 'ADJUSTERS AND CALIBRATORS'
             694 'WATER AND SEWAGE TREATMENT PLANT OPERATORS'
             695 'POWER PLANT OPERATORS' 696 'STATIONARY ENGINEERS'
             699 'MISCELLANEOUS PLANT AND SYSTEM OPERATORS'
             703 'LATHE AND TURNING MACHINE SET-UP OPERATORS'
             704 'LATHE AND TURNING MACHINE OPERATORS'
             705 'MILLING AND PLANING MACHINE OPERATORS'
             706 'PUNCHING AND STAMPING PRESS MACHINE OPERATORS'
             707 'ROLLING MACHINE OPERATORS'
             708 'DRILLING AND BORING MACHINE OPERATORS'
            709 'GRINDING, ABRADING, BUFFING, AND POLISHING MACHINE OPERATOR'
             713 'FORGING MACHINE OPERATORS'
             714 'NUMERICAL CONTROL MACHINE OPERATORS'
            715 'MISCELLANEOUS METAL, PLASTIC, STONE, AND GLASS WORKING MACH'
             717 'FABRICATING MACHINE OPERATORS, N.E.C.'
             719 'MOLDING AND CASTING MACHINE OPERATORS'
             723 'METAL PLATING MACHINE OPERATORS'
             724 'HEAT TREATING EQUIPMENT OPERATORS'
            725 'MISCELLANEOUS METAL AND PLASTIC PROCESSING MACHINE OPERATOR'
             726 'WOOD LATHE, ROUTING, AND PLANING MACHINE OPERATORS'
             727 'SAWING MACHINE OPERATORS'
             728 'SHAPING AND JOINING MACHINE OPERATORS'
             729 'NAILING AND TACKING MACHINE OPERATORS'
             733 'MISCELLANEOUS WOODWORKING MACHINE OPERATORS'
             734 'PRINTING PRESS OPERATORS'
             735 'PHOTOENGRAVERS AND LITHOGRAPHERS'
             736 'TYPESETTERS AND COMPOSITORS'
             737 'MISCELLANEOUS PRINTING MACHINE OPERATORS'
             738 'WINDING AND TWISTING MACHINE OPERATORS'
             739 'KNITTING, LOOPING, TAPING, AND WEAVING MACHINE OPERATORS'
             743 'TEXTILE CUTTING MACHINE OPERATORS'
             744 'TEXTILE SEWING MACHINE OPERATORS'
             745 'SHOE MACHINE OPERATORS' 747 'PRESSING MACHINE OPERATORS'
             748 'LAUNDERING AND DRY CLEANING MACHINE OPERATORS'
             749 'MISCELLANEOUS TEXTILE MACHINE OPERATORS'
             753 'CEMENTING AND GLUING MACHINE OPERATORS'
             754 'PACKAGING AND FILLING MACHINE OPERATORS'
             755 'EXTRUDING AND FORMING MACHINE OPERATORS'
             756 'MIXING AND BLENDING MACHINE OPERATORS'
             757 'SEPARATING, FILTERING, AND CLARIFYING MACHINE OPERATORS'
             758 'COMPRESSING AND COMPACTING MACHINE OPERATORS'
             759 'PAINTING AND PAINT SPRAYING MACHINE OPERATORS'
             763 'ROASTING AND BAKING MACHINE OPERATORS, FOOD'
             764 'WASHING, CLEANING, AND PICKLING MACHINE OPERATORS'
             765 'FOLDING MACHINE OPERATORS'
             766 'FURNACE, KILN, AND OVEN OPERATORS, EXCEPT FOOD'
             768 'CRUSHING AND GRINDING MACHINE OPERATORS'
             769 'SLICING AND CUTTING MACHINE OPERATORS'
             773 'MOTION PICTURE PROJECTIONISTS'
             774 'PHOTOGRAPHIC PROCESS MACHINE OPERATORS'
             777 'MISC. MACHINE OPER.' 779 'MACHINE OPER., NOT SPEC.'
             783 'WELDERS AND CUTTERS' 784 'SOLDERERS AND BRAZERS'
             785 'ASSEMBLERS' 786 'HAND CUTTING AND TRIMMING OCCUPATIONS'
             787 'HAND MOLDING, CASTING, AND FORMING OCCUPATIONS'
             789 'HAND PAINTING, COATING, AND DECORATING OCCUPATIONS'
             793 'HAND ENGRAVING AND PRINTING OCCUPATIONS'
             795 'MISCELLANEOUS HAND WORKING OCCUPATIONS'
             796 'PRODUCTION INSPECTORS, CHECKERS, AND EXAMINERS'
             797 'PRODUCTION TESTERS' 798 'PRODUCTION SAMPLERS AND WEIGHERS'
             799 'GRADERS AND SORTERS, EXCEPT AGRICULTURAL'
             803 'SUPERVISORS, MOTOR VEHICLE OPERATORS' 804 'TRUCK DRIVERS'
             806 'DRIVER-SALES WORKERS' 808 'BUS DRIVERS'
             809 'TAXICAB DRIVERS AND CHAUFFEURS'
             813 'PARKING LOT ATTENDANTS'
             814 'MOTOR TRANSPORTATION OCCUPATIONS, N.E.C.'
             823 'RAILROAD CONDUCTORS AND YARDMASTERS'
             824 'LOCOMOTIVE OPERATING OCCUPATIONS'
             825 'RAILROAD BRAKE, SIGNAL, AND SWITCH OPERATORS'
             826 'RAIL VEHICLE OPERATORS, N.E.C.'
             828 'SHIP CAPTAINS AND MATES, EXCEPT FISHING BOATS'
             829 'SAILORS AND DECKHANDS' 833 'MARINE ENGINEERS'
             834 'BRIDGE, LOCK, AND LIGHTHOUSE TENDERS'
             843 'SUPERVISORS, MATERIAL MOVING EQUIPMENT OPERATORS'
             844 'OPERATING ENGINEERS' 845 'LONGSHORE EQUIPMENT OPERATORS'
             848 'HOIST AND WINCH OPERATORS' 849 'CRANE AND TOWER OPERATORS'
             853 'EXCAVATING AND LOADING MACHINE OPERATORS'
             855 'GRADER, DOZER, AND SCRAPER OPERATORS'
             856 'INDUSTRIAL TRUCK AND TRACTOR EQUIPMENT OPERATORS'
             859 'MISCELLANEOUS MATERIAL MOVING EQUIPMENT OPERATORS'
            864 'SUPERVISORS, HANDLERS, EQUIPMENT CLEANERS, AND LABORERS, N.'
             865 'HELPERS, MECHANICS, AND REPAIRERS'
             866 'HELPERS, CONSTRUCTION TRADES' 867 'HELPERS, SURVEYOR'
             868 'HELPERS, EXTRACTIVE OCCUPATIONS'
             869 'CONSTRUCTION LABORERS' 874 'PRODUCTION HELPERS'
             875 'GARBAGE COLLECTORS' 876 'STEVEDORES'
             877 'STOCK HANDLERS AND BAGGERS'
             878 'MACHINE FEEDERS AND OFFBEARERS'
             883 'FREIGHT, STOCK, AND MATERIAL HANDLERS, N.E.C.'
             885 'GARAGE AND SERVICE STATION RELATED OCCUPATIONS'
             887 'VEHICLE WASHERS AND EQUIPMENT CLEANERS'
             888 'HAND PACKERS AND PACKAGERS' 889 'LABORERS, EXC. CONST.'
             903 'COMMISSIONED OFFICERS AND WARRANT OFFICERS'
             904 'NON-COMMISSIONED OFFICERS AND OTHER ENLISTED PERSONNEL'
             905 'MILITARY OCCUPATION, RANK NOT SPECIFIED'
             995 'UNKNOWN OR UNSURE' 997 'ALLOCATION REQUIRED'
             998 'MISSING OR NOT REPORTED' 999 'INAPP' /
   B1PIND    10 'AGRICULTURAL PRODUCTION, CROPS'
             11 'AGRICULTURAL PRODUCTION, LIVESTOCK' 12 'VETERINARY SERVICES'
             20 'LANDSCAPE AND HORTICULTURAL SERVICES'
             30 'AGRICULTURAL SERVICES, N.E.C.' 31 'FORESTRY'
             32 'FISHING, HUNTING, AND TRAPPING' 40 'METAL MINING'
             41 'COAL MINING' 42 'OIL AND GAS EXTRACTION'
             50 'NONMETALLIC MINING AND QUARRYING, EXCEPT FUELS'
             60 'CONSTRUCTION' 100 'MEAT PRODUCTS' 101 'DAIRY PRODUCTS'
             102 'CANNED, FROZEN, AND PRESERVED FRUITS AND VEGETABLES'
             110 'GRAIN MILL PRODUCTS' 111 'BAKERY PRODUCTS'
             112 'SUGAR AND CONFECTIONERY PRODUCTS' 120 'BEVERAGE INDUSTRIES'
             121 'MISCELLANEOUS FOOD PREPARATIONS AND KINDRED PRODUCTS'
             122 'NOT SPECIFIED FOOD INDUSTRIES' 130 'TOBACCO MANUFACTURES'
             132 'KNITTING MILLS'
             140 'DYEING AND FINISHING TEXTILES, EXCEPT WOOL AND KNIT'
             141 'CARPETS AND RUGS' 142 'YARN, THREAD, AND FABRIC MILLS'
             150 'MISCELLANEOUS TEXTILE MILL PRODUCTS'
             151 'APPAREL AND ACCESSORIES, EXCEPT KNIT'
             152 'MISCELLANEOUS FABRICATED TEXTILE PRODUCTS'
             160 'PULP, PAPER, AND PAPERBOARD MILLS'
             161 'MISCELLANEOUS PAPER AND PULP PRODUCTS'
             162 'PAPERBOARD CONTAINERS AND BOXES'
             171 'NEWSPAPER PUBLISHING AND PRINTING'
           172 'PRINTING, PUBLISHING AND ALLIED INDUSTRIES, EXCEPT NEWSPAPER'
             180 'PLASTICS, SYNTHETICS, AND RESINS' 181 'DRUGS'
             182 'SOAPS AND COSMETICS'
             190 'PAINTS, VARNISHES, AND RELATED PRODUCTS'
             191 'AGRICULTURAL CHEMICALS'
             192 'INDUSTRIAL AND MISCELLANEOUS CHEMICALS'
             200 'PETROLEUM REFINING'
             201 'MISCELLANEOUS PETROLEUM AND COAL PRODUCTS'
             210 'TIRES AND INNER TUBES'
             211 'OTHER RUBBER PRODUCTS AND PLASTICS FOOTWEAR AND BELTING'
             212 'MISCELLANEOUS PLASTICS PRODUCTS'
             220 'LEATHER TANNING AND FINISHING'
             221 'FOOTWEAR, EXCEPT RUBBER AND PLASTIC'
             222 'LEATHER PRODUCTS, EXCEPT FOOTWEAR' 230 'LOGGING'
             231 'SAWMILLS, PLANING MILLS AND MILLWORK'
             232 'WOOD BUILDINGS AND MOBILE HOMES'
             241 'MISCELLANEOUS WOOD PRODUCTS' 242 'FURNITURE AND FIXTURES'
             250 'GLASS AND GLASS PRODUCTS'
             251 'CEMENT, CONCRETE, GYPSUM, AND PLASTER PRODUCTS'
             252 'STRUCTURAL CLAY PRODUCTS'
             261 'POTTERY AND RELATED PRODUCTS'
             262 'MISCELLANEOUS NONMETALLIC MINERAL AND STONE PRODUCTS'
             270 'BLAST FURNACES, STEELWORKS, AND FINISHING MILLS'
             271 'IRON AND STEEL FOUNDRIES' 272 'PRIMARY ALUMINUM INDUSTRIES'
             280 'OTHER PRIMARY METAL INDUSTRIES'
             281 'CUTLERY, HANDTOOLS, AND GENERAL HARDWARE'
             282 'FABRICATED STRUCTURAL METAL PRODUCTS'
             290 'SCREW MACHINE PRODUCTS' 291 'METAL FORGINGS AND STAMPINGS'
             292 'ORDNANCE' 300 'MISCELLANEOUS FABRICATED METAL PRODUCTS'
             301 'NOT SPECIFIED METAL INDUSTRIES' 310 'ENGINES AND TURBINES'
             311 'FARM MACHINERY AND EQUIPMENT'
             312 'CONSTRUCTION AND MATERIAL HANDLING MACHINES'
             320 'METALWORKING MACHINERY'
             321 'OFFICE AND ACCOUNTING MACHINES'
             322 'COMPUTERS AND RELATED EQUIPMENT'
             331 'MACHINERY, EXCEPT ELECTRICAL, N.E.C.'
             332 'NOT SPECIFIED MACHINERY' 340 'HOUSEHOLD APPLIANCES'
             341 'RADIO, TV, AND COMMUNICATION EQUIPMENT'
             342 'ELECTRICAL MACHINERY, EQUIPMENT, AND SUPPLIES, N.E.C.'
            350 'NOT SPECIFIED ELECTRICAL MACHINERY, EQUIPMENT, AND SUPPLIES'
             351 'MOTOR VEHICLES AND MOTOR VEHICLE EQUIPMENT'
             352 'AIRCRAFT AND PARTS'
             360 'SHIP AND BOAT BUILDING AND REPAIRING'
             361 'RAILROAD LOCOMOTIVES AND EQUIPMENT'
             362 'GUIDED MISSILES, SPACE VEHICLES, AND PARTS'
             370 'CYCLES AND MISCELLANEOUS TRANSPORTATION EQUIPMENT'
             371 'SCIENTIFIC AND CONTROLLING INSTRUMENTS'
             372 'MEDICAL, DENTAL, AND OPTICAL INSTRUMENTS AND SUPPLIES'
             380 'PHOTOGRAPHIC EQUIPMENT AND SUPPLIES'
             381 'WATCHES, CLOCKS, AND CLOCKWORK OPERATED DEVICES'
             390 'TOYS, AMUSEMENT, AND SPORTING GOODS'
             391 'MISCELLANEOUS MANUFACTURING INDUSTRIES'
             392 'NOT SPECIFIED MANUFACTURING INDUSTRIES' 400 'RAILROADS'
             401 'BUS SERVICE AND URBAN TRANSIT' 402 'TAXICAB SERVICE'
             410 'TRUCKING SERVICE' 411 'WAREHOUSING AND STORAGE'
             412 'U.S. POSTAL SERVICE' 420 'WATER TRANSPORTATION'
             421 'AIR TRANSPORTATION' 422 'PIPE LINES, EXCEPT NATURAL GAS'
             432 'SERVICES INCIDENTAL TO TRANSPORTATION'
             440 'RADIO AND TELEVISION BROADCASTING AND CABLE'
             441 'TELEPHONE COMMUNICATIONS'
             442 'TELEGRAPH AND MISCELLANEOUS COMMUNICATIONS SERVICES'
             450 'ELECTRIC LIGHT AND POWER'
             451 'GAS AND STEAM SUPPLY SYSTEMS'
             452 'ELECTRIC AND GAS, AND OTHER COMBINATIONS'
             470 'WATER SUPPLY AND IRRIGATION' 471 'SANITARY SERVICES'
             472 'NOT SPECIFIED UTILITIES' 500 'MOTOR VEHICLES AND EQUIPMENT'
             501 'FURNITURE AND HOME FURNISHINGS'
             502 'LUMBER AND CONSTRUCTION MATERIALS'
             510 'PROFESSIONAL AND COMMERCIAL EQUIP. AND SUPPLIES'
             511 'METALS AND MINERALS, EXCEPT PETROLEUM'
             512 'ELECTRICAL GOODS'
             521 'HARDWARE, PLUMBING AND HEATING SUPPLIES'
             530 'MACHINERY, EQUIPMENT, AND SUPPLIES'
             531 'SCRAP AND WASTE MATERIALS'
             532 'MISCELLANEOUS WHOLESALE, DURABLE GOODS'
             540 'PAPER AND PAPER PRODUCTS'
             541 'DRUGS, CHEMICALS AND ALLIED PRODUCTS'
             542 'APPAREL, FABRICS, AND NOTIONS'
             550 'GROCERIES AND RELATED PRODUCTS'
             551 'FARM-PRODUCT RAW MATERIALS' 552 'PETROLEUM PRODUCTS'
             560 'ALCOHOLIC BEVERAGES' 561 'FARM SUPPLIES'
             562 'MISCELLANEOUS WHOLESALE, NONDURABLE GOODS'
             571 'NOT SPECIFIED WHOLESALE TRADE'
             580 'LUMBER AND BUILDING MATERIAL RETAILING'
             581 'HARDWARE STORES' 582 'RETAIL NURSERIES AND GARDEN STORES'
             590 'MOBILE HOME DEALERS' 591 'DEPARTMENT STORES'
             592 'VARIETY STORES'
             600 'MISCELLANEOUS GENERAL MERCHANDISE STORES'
             601 'GROCERY STORES' 602 'DAIRY PRODUCTS STORES'
             610 'RETAIL BAKERIES' 611 'FOOD STORES, N.E.C.'
             612 'MOTOR VEHICLE DEALERS' 620 'AUTO AND HOME SUPPLY STORES'
             621 'GASOLINE SERVICE STATIONS'
             622 'MISCELLANEOUS VEHICLE DEALERS'
             623 'APPAREL AND ACCESSORY STORES, EXCEPT SHOE'
             630 'SHOE STORES' 631 'FURNITURE AND HOME FURNISHINGS STORES'
             632 'HOUSEHOLD APPLIANCE STORES'
             633 'RADIO, TV, AND COMPUTER STORES' 640 'MUSIC STORES'
             641 'EATING AND DRINKING PLACES' 642 'DRUG STORES'
             650 'LIQUOR STORES'
             651 'SPORTING GOODS, BICYCLES, AND HOBBY STORES'
             652 'BOOK AND STATIONERY STORES' 660 'JEWELRY STORES'
             661 'GIFT, NOVELTY, AND SOUVENIR SHOPS'
             662 'SEWING, NEEDLEWORK AND PIECE GOODS STORES'
             663 'CATALOG AND MAIL ORDER HOUSES'
             670 'VENDING MACHINE OPERATORS'
             671 'DIRECT SELLING ESTABLISHMENTS' 672 'FUEL DEALERS'
             681 'RETAIL FLORISTS' 682 'MISCELLANEOUS RETAIL STORES'
             691 'NOT SPECIFIED RETAIL TRADE' 700 'BANKING'
             701 'SAVINGS INSTITUTIONS, INCLUDING CREDIT UNIONS'
             702 'CREDIT AGENCIES, N.E.C.'
             710 'SECURITY, COMMODITY BROKERAGE, AND INVESTMENT COMPANIES'
             711 'INSURANCE'
             712 'REAL ESTATE, INCLUDING REAL ESTATE-INSURANCE OFFICES'
             721 'ADVERTISING'
             722 'SERVICES TO DWELLINGS AND OTHER BUILDINGS'
             731 'PERSONNEL SUPPLY SERVICES'
             732 'COMPUTER AND DATA PROCESSING SERVICES'
             740 'DETECTIVE AND PROTECTIVE SERVICES'
             741 'BUSINESS SERVICES, N.E.C.'
             742 'AUTOMOTIVE RENTAL AND LEASING, WITHOUT DRIVERS'
             750 'AUTOMOBILE PARKING AND CARWASHES'
             751 'AUTOMOTIVE REPAIR AND RELATED SERVICES'
             752 'ELECTRICAL REPAIR SHOPS'
             760 'MISCELLANEOUS REPAIR SERVICES' 761 'PRIVATE HOUSEHOLDS'
             762 'HOTELS AND MOTELS'
             770 'LODGING PLACES, EXCEPT HOTELS AND MOTELS'
             771 'LAUNDRY, CLEANING, AND GARMENT SERVICES' 772 'BEAUTY SHOPS'
             780 'BARBER SHOPS' 781 'FUNERAL SERVICE AND CREMATORIES'
             782 'SHOE REPAIR SHOPS' 790 'DRESSMAKING SHOPS'
             791 'MISCELLANEOUS PERSONAL SERVICES'
             800 'THEATERS AND MOTION PICTURES' 801 'VIDEO TAPE RENTAL'
             802 'BOWLING CENTERS'
             810 'MISCELLANEOUS ENTERTAINMENT AND RECREATION SERVICES'
             812 'OFFICES AND CLINICS OF PHYSICIANS'
             820 'OFFICES AND CLINICS OF DENTISTS'
             821 'OFFICES AND CLINICS OF CHIROPRACTORS'
             822 'OFFICES AND CLINICS OF OPTOMETRISTS'
             830 'OFFICES AND CLINICS OF HEALTH PRACTITIONERS, N.E.C.'
             831 'HOSPITALS' 832 'NURSING AND PERSONAL CARE FACILITIES'
             840 'HEALTH SERVICES, N.E.C.' 841 'LEGAL SERVICES'
             842 'ELEMENTARY AND SECONDARY SCHOOLS'
             850 'COLLEGES AND UNIVERSITIES' 851 'VOCATIONAL SCHOOLS'
             852 'LIBRARIES' 860 'EDUCATIONAL SERVICES, N.E.C.'
             861 'JOB TRAINING AND VOCATIONAL REHABILITATION SERVICES'
             862 'CHILD DAY CARE SERVICES' 863 'FAMILY CHILD CARE HOMES'
             870 'RESIDENTIAL CARE FACILITIES, WITHOUT NURSING'
             871 'SOCIAL SERVICES, N.E.C.'
             872 'MUSEUMS, ART GALLERIES, AND ZOOS' 873 'LABOR UNIONS'
             880 'RELIGIOUS ORGANIZATIONS'
             881 'MEMBERSHIP ORGANIZATIONS, N.E.C.'
             882 'ENGINEERING, ARCHITECTURAL, AND SURVEYING SERVICES'
             890 'ACCOUNTING, AUDITING, AND BOOKKEEPING SERVICES'
             891 'RESEARCH, DEVELOPMENT, AND TESTING SERVICES'
             892 'MANAGEMENT AND PUBLIC RELATIONS SERVICES'
             893 'MISCELLANEOUS PROFESSIONAL AND RELATED SERVICES'
             900 'EXECUTIVE AND LEGISLATIVE OFFICES'
             901 'GENERAL GOVERNMENT, N.E.C.'
             910 'JUSTICE, PUBLIC ORDER, AND SAFETY'
             921 'PUBLIC FINANCE, TAXATION, AND MONETARY POLICY'
             922 'ADMINISTRATION OF HUMAN RESOURCES PROGRAMS'
           930 'ADMINISTRATION OF ENVIRONMENTAL QUALITY AND HOUSING PROGRAMS'
             931 'ADMINISTRATION OF ECONOMIC PROGRAMS'
             932 'NATIONAL SECURITY AND INTERNATIONAL AFFAIRS' 940 'ARMY'
             941 'AIR FORCE' 942 'NAVY' 950 'MARINES' 951 'COAST GUARD'
             952 'ARMED RESERVES, BRANCH NOT SPECIFIED'
             960 'MILITARY RESERVES OR NATIONAL GUARD'
             995 'UNKNOWN OR UNSURE' 997 'ALLOCATION REQUIRED'
             998 'MISSING OR NOT REPORTED' 999 'INAPP' /
   B1PTEDU   9 'INAPP' /
   B1PTEARN  9 'INAPP' /
   B1PTSEI   999 'INAPP' /
   B1PMEDU   9 'INAPP' /
   B1PMEARN  9 'INAPP' /
   B1PMSEI   999 'INAPP' /
   B1PFEDU   9 'INAPP' /
   B1PFEARN  9 'INAPP' /
   B1PFSEI   999 'INAPP' /
   B1POCMAJ  1 'EXECUTIVE, ADMINISTRATIVE, AND MANAGERIAL'
             2 'PROFESSIONAL SPECIALTY' 3 'TECHNICIAN AND RELATED SUPPORT'
             4 'SALES OCCUPATION'
             5 'ADMINISTRATIVE SUPPORT INCLUDING CLERICAL'
             6 'SERVICE OCCUPATION' 7 'FARMING, FORESTRY, AND FISHING'
             8 'PRECISION PRODUCTION, CRAFTS, AND REPAIR'
             9 'OPERATOR, LABORER, AND MILITARY' 99 'INAPP' /
   B1PINDMJ  1 'AGRICULTURE, FORESTRY, FISHING, AND MINING' 2 'CONSTRUCTION'
             3 'MANUFACTURING'
             4 'TRANSPORTATION, COMMUNICATIONS, AND PUBLIC UTILITY'
             5 'WHOLESALE TRADE' 6 'RETAIL TRADE'
             7 'FINANCE, INSURANCE, AND REAL ESTATE'
             8 'BUSINESS AND REPAIR SERVICES' 9 'PERSONAL SERVICES'
             10 'ENTERTAINMENT AND RECREATIONAL SERVICES'
             11 'PROFESSIONAL AND RELATED SERVICES'
             12 'PUBLIC ADMINISTRATION' 99 'INAPP' /
   B1PB12    997 'DON''T KNOW' 998 'REFUSED' 999 'INAPP' /
   B1PB12A   997 'DON''T KNOW' 998 'REFUSED' 999 'INAPP' /
   B1PB13    997 'DON''T KNOW' 998 'REFUSED' 999 'INAPP' /
   B1PB14    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PB14A   997 'DON''T KNOW' 998 'REFUSED' 999 'INAPP' /
   B1PB15    1 'HAS EMPLOYER' 2 'SELF-EMPLOYED' 7 'DON''T KNOW' 8 'REFUSED'
             9 'INAPP' /
   B1POCCP   3 'LEGISLATORS'
             4 'CHIEF EXECUTIVES AND GENERAL ADMINISTRATORS, PUBLIC ADMINIS'
             5 'ADMINISTRATORS AND OFFICIALS, PUBLIC ADMINISTRATION'
             6 'ADMINISTRATORS, PROTECTIVE SERVICES' 7 'FINANCIAL MANAGERS'
             8 'PERSONNEL AND LABOR RELATIONS MANAGERS'
             9 'PURCHASING MANAGERS'
             13 'MANAGERS, MARKETING, ADVERTISING, AND PUBLIC RELATIONS'
             14 'ADMINISTRATORS, EDUCATION AND RELATED FIELDS'
             15 'MANAGERS, MEDICINE AND HEALTH'
             16 'POSTMASTERS AND MAIL SUPERINTENDENTS'
             17 'MANAGERS, FOOD SERVING AND LODGING ESTABLISHMENTS'
             18 'MANAGERS, PROPERTIES AND REAL ESTATE' 19 'FUNERAL DIRECTORS'
             21 'MANAGERS, SERVICE ORGANIZATIONS, N.E.C.'
             22 'MANAGERS AND ADMINISTRATORS, N.E.C.'
             23 'ACCOUNTANTS AND AUDITORS' 24 'UNDERWRITERS'
             25 'OTHER FINANCIAL OFFICERS' 26 'MANAGEMENT ANALYSTS'
             27 'PERSONNEL, TRAINING, AND LABOR RELATIONS SPECIALISTS'
             28 'PURCHASING AGENTS AND BUYERS, FARM PRODUCTS'
             29 'BUYERS, WHOLESALE AND RETAIL TRADE, EXCEPT FARM PRODUCTS'
             33 'PURCHASING AGENTS AND BUYERS, N.E.C.'
             34 'BUSINESS AND PROMOTION AGENTS' 35 'CONSTRUCTION INSPECTORS'
             36 'INSPECTORS AND COMPLIANCE OFFICERS, EXCEPT CONSTRUCTION'
             37 'MANAGEMENT RELATED OCCUPATIONS, N.E.C.' 43 'ARCHITECTS'
             44 'AEROSPACE ENGINEERS'
             45 'METALLURGICAL AND MATERIALS ENGINEERS' 46 'MINING ENGINEERS'
             47 'PETROLEUM ENGINEERS' 48 'CHEMICAL ENGINEERS'
             49 'NUCLEAR ENGINEERS' 53 'CIVIL ENGINEERS'
             54 'AGRICULTURAL ENGINEERS'
             55 'ELECTRICAL AND ELECTRONIC ENGINEERS'
             56 'INDUSTRIAL ENGINEERS' 57 'MECHANICAL ENGINEERS'
             58 'MARINE AND NAVAL ARCHITECTS' 59 'ENGINEERS, N.E.C.'
             63 'SURVEYORS AND MAPPING SCIENTISTS'
             64 'COMPUTER SYSTEMS ANALYSTS AND SCIENTISTS'
             65 'OPERATIONS AND SYSTEMS RESEARCHERS AND ANALYSTS'
             66 'ACTUARIES' 67 'STATISTICIANS'
             68 'MATHEMATICAL SCIENTISTS, N.E.C.'
             69 'PHYSICISTS AND ASTRONOMERS'
             73 'CHEMISTS, EXCEPT BIOCHEMISTS'
             74 'ATMOSPHERIC AND SPACE SCIENTISTS'
             75 'GEOLOGISTS AND GEODESISTS' 76 'PHYSICAL SCIENTISTS, N.E.C.'
             77 'AGRICULTURAL AND FOOD SCIENTISTS'
             78 'BIOLOGICAL AND LIFE SCIENTISTS'
             79 'FORESTRY AND CONSERVATION SCIENTISTS'
             83 'MEDICAL SCIENTISTS' 84 'PHYSICIANS' 85 'DENTISTS'
             86 'VETERINARIANS' 87 'OPTOMETRISTS' 88 'PODIATRISTS'
             89 'HEALTH DIAGNOSING PRACTITIONERS, N.E.C.'
             95 'REGISTERED NURSES' 96 'PHARMACISTS' 97 'DIETITIANS'
             98 'RESPIRATORY THERAPISTS' 99 'OCCUPATIONAL THERAPISTS'
             103 'PHYSICAL THERAPISTS' 104 'SPEECH THERAPISTS'
             105 'THERAPISTS, N.E.C.' 106 'PHYSICIANS ASSISTANTS'
             113 'EARTH, ENVIRONMENTAL, AND MARINE SCIENCE TEACHERS'
             114 'BIOLOGICAL SCIENCE TEACHERS' 115 'CHEMISTRY TEACHERS'
             116 'PHYSICS TEACHERS' 117 'NATURAL SCIENCE TEACHERS, N.E.C.'
             118 'PSYCHOLOGY TEACHERS' 119 'ECONOMICS TEACHERS'
             123 'HISTORY TEACHERS' 124 'POLITICAL SCIENCE TEACHERS'
             125 'SOCIOLOGY TEACHERS' 126 'SOCIAL SCIENCE TEACHERS, N.E.C.'
             127 'ENGINEERING TEACHERS' 128 'MATHEMATICAL SCIENCE TEACHERS'
             129 'COMPUTER SCIENCE TEACHERS' 133 'MEDICAL SCIENCE TEACHERS'
             134 'HEALTH SPECIALTIES TEACHERS'
             135 'BUSINESS, COMMERCE, AND MARKETING TEACHERS'
             136 'AGRICULTURE AND FORESTRY TEACHERS'
             137 'ART, DRAMA, AND MUSIC TEACHERS'
             138 'PHYSICAL EDUCATION TEACHERS' 139 'EDUCATION TEACHERS'
             143 'ENGLISH TEACHERS' 144 'FOREIGN LANGUAGE TEACHERS'
             145 'LAW TEACHERS' 146 'SOCIAL WORK TEACHERS'
             147 'THEOLOGY TEACHERS' 148 'TRADE AND INDUSTRIAL TEACHERS'
             149 'HOME ECONOMICS TEACHERS'
             153 'TEACHERS, POSTSECONDARY, N.E.C.'
             154 'POSTSECONDARY TEACHERS, SUBJECT NOT SPECIFIED'
             155 'TEACHERS, PREKINDERGARTEN AND KINDERGARTEN'
             156 'TEACHERS, ELEMENTARY SCHOOL'
             157 'TEACHERS, SECONDARY SCHOOL'
             158 'TEACHERS, SPECIAL EDUCATION' 159 'TEACHERS, N.E.C.'
             163 'COUNSELORS, EDUCATIONAL AND VOCATIONAL' 164 'LIBRARIANS'
             165 'ARCHIVISTS AND CURATORS' 166 'ECONOMISTS'
             167 'PSYCHOLOGISTS' 168 'SOCIOLOGISTS'
             169 'SOCIAL SCIENTISTS, N.E.C.' 173 'URBAN PLANNERS'
             174 'SOCIAL WORKERS' 175 'RECREATION WORKERS' 176 'CLERGY'
             177 'RELIGIOUS WORKERS, N.E.C.' 178 'LAWYERS' 179 'JUDGES'
             183 'AUTHORS' 184 'TECHNICAL WRITERS' 185 'DESIGNERS'
             186 'MUSICIANS AND COMPOSERS' 187 'ACTORS AND DIRECTORS'
             188 'PAINTERS, SCULPTORS, CRAFT-ARTISTS, AND ARTIST PRINTMAKERS'
             189 'PHOTOGRAPHERS' 193 'DANCERS'
             194 'ARTISTS, PERFORMERS, AND RELATED WORKERS, N.E.C.'
             195 'EDITORS AND REPORTERS' 197 'PUBLIC RELATIONS SPECIALISTS'
             198 'ANNOUNCERS' 199 'ATHLETES'
             203 'CLINICAL LABORATORY TECHNOLOGISTS AND TECHNICIANS'
             204 'DENTAL HYGIENISTS'
             205 'HEALTH RECORD TECHNOLOGISTS AND TECHNICIANS'
             206 'RADIOLOGIC TECHNICIANS' 207 'LICENSED PRACTICAL NURSES'
             208 'HEALTH TECHNOLOGISTS AND TECHNICIANS, N.E.C.'
             213 'ELECTRICAL AND ELECTRONIC TECHNICIANS'
             214 'INDUSTRIAL ENGINEERING TECHNICIANS'
             215 'MECHANICAL ENGINEERING TECHNICIANS'
             216 'ENGINEERING TECHNICIANS, N.E.C.' 217 'DRAFTING OCCUPATIONS'
             218 'SURVEYING AND MAPPING TECHNICIANS'
             223 'BIOLOGICAL TECHNICIANS' 224 'CHEMICAL TECHNICIANS'
             225 'SCIENCE TECHNICIANS, N.E.C.'
             226 'AIRPLANE PILOTS AND NAVIGATORS'
             227 'AIR TRAFFIC CONTROLLERS'
             228 'BROADCAST EQUIPMENT OPERATORS' 229 'COMPUTER PROGRAMMERS'
             233 'TOOL PROGRAMMERS, NUMERICAL CONTROL' 234 'LEGAL ASSISTANTS'
             235 'TECHNICIANS, N.E.C.'
             243 'SUPERVISORS AND PROPRIETORS, SALES OCCUPATIONS'
             253 'INSURANCE SALES OCCUPATIONS'
             254 'REAL ESTATE SALES OCCUPATIONS'
             255 'SECURITIES AND FINANCIAL SERVICES SALES OCCUPATIONS'
             256 'ADVERTISING AND RELATED SALES OCCUPATIONS'
             257 'SALES OCCUPATIONS, OTHER BUSINESS SERVICES'
             258 'SALES ENGINEERS'
            259 'SALES REPRESENTATIVES, MINING, MANUFACTURING, AND WHOLESALE'
             263 'SALES WORKERS, MOTOR VEHICLES AND BOATS'
             264 'SALES WORKERS, APPAREL' 265 'SALES WORKERS, SHOES'
             266 'SALES WORKERS, FURNITURE AND HOME FURNISHINGS'
             267 'SALES WORKERS, RADIO, TV, HI-FI, AND APPLIANCES'
             268 'SALES WORKERS, HARDWARE AND BUILDING SUPPLIES'
             269 'SALES WORKERS, PARTS'
             274 'SALES WORKERS, OTHER COMMODITIES'
             275 'SALES COUNTER CLERKS' 276 'CASHIERS'
             277 'STREET AND DOOR-TO-DOOR SALES WORKERS' 278 'NEWS VENDORS'
             283 'DEMONSTRATORS, PROMOTERS AND MODELS, SALES'
             284 'AUCTIONEERS' 285 'SALES SUPPORT OCCUPATIONS, N.E.C.'
             303 'SUPERVISORS, GENERAL OFFICE'
             304 'SUPERVISORS, COMPUTER EQUIPMENT OPERATORS'
             305 'SUPERVISORS, FINANCIAL RECORDS PROCESSING'
             306 'CHIEF COMMUNICATIONS OPERATORS'
            307 'SUPERVISORS, DISTRIBUTION, SCHEDULING, AND ADJUSTING CLERKS'
             308 'COMPUTER OPERATORS' 309 'PERIPHERAL EQUIPMENT OPERATORS'
             313 'SECRETARIES' 314 'STENOGRAPHERS' 315 'TYPISTS'
             316 'INTERVIEWERS' 317 'HOTEL CLERKS'
             318 'TRANSPORTATION TICKET AND RESERVATION AGENTS'
             319 'RECEPTIONISTS' 323 'INFORMATION CLERKS, N.E.C.'
             325 'CLASSIFIED-AD CLERKS' 326 'CORRESPONDENCE CLERKS'
             327 'ORDER CLERKS'
             328 'PERSONNEL CLERKS, EXCEPT PAYROLL AND TIMEKEEPING'
             329 'LIBRARY CLERKS' 335 'FILE CLERKS' 336 'RECORDS CLERKS'
             337 'BOOKKEEPERS, ACCOUNTING, AND AUDITING CLERKS'
             338 'PAYROLL AND TIMEKEEPING CLERKS' 339 'BILLING CLERKS'
             343 'COST AND RATE CLERKS'
             344 'BILLING, POSTING, AND CALCULATING MACHINE OPERATORS'
             345 'DUPLICATING MACHINE OPERATORS'
             346 'MAIL PREPARING AND PAPER HANDLING MACHINE OPERATORS'
             347 'OFFICE MACHINE OPERATORS, N.E.C.' 348 'TELEPHONE OPERATORS'
             353 'COMMUNICATIONS EQUIPMENT OPERATORS, N.E.C.'
             354 'POSTAL CLERKS, EXCEPT MAIL CARRIERS'
             355 'MAIL CARRIERS, POSTAL SERVICE'
             356 'MAIL CLERKS, EXCEPT POSTAL SERVICE' 357 'MESSENGERS'
             359 'DISPATCHERS' 363 'PRODUCTION COORDINATORS'
             364 'TRAFFIC, SHIPPING, AND RECEIVING CLERKS'
             365 'STOCK AND INVENTORY CLERKS' 366 'METER READERS'
             368 'WEIGHERS, MEASURERS, CHECKERS, AND SAMPLERS'
             373 'EXPEDITERS'
            374 'MATERIAL RECORDING, SCHEDULING, AND DISTRIBUTING CLERKS, N.'
             375 'INSURANCE ADJUSTERS, EXAMINERS, AND INVESTIGATORS'
             376 'INVESTIGATORS AND ADJUSTERS, EXCEPT INSURANCE'
             377 'ELIGIBILITY CLERKS, SOCIAL WELFARE'
             378 'BILL AND ACCOUNT COLLECTORS' 379 'GENERAL OFFICE CLERKS'
             383 'BANK TELLERS' 384 'PROOFREADERS' 385 'DATA-ENTRY KEYERS'
             386 'STATISTICAL CLERKS' 387 'TEACHERS AIDES'
             389 'ADMINISTRATIVE SUPPORT OCCUPATIONS, N.E.C.'
             403 'LAUNDERERS AND IRONERS' 404 'COOKS, PRIVATE HOUSEHOLD'
             405 'HOUSEKEEPERS AND BUTLERS'
             406 'CHILD CARE WORKERS, PRIVATE HOUSEHOLD'
             407 'PRIVATE HOUSEHOLD CLEANERS AND SERVANTS'
             413 'SUPERVISORS, FIREFIGHTING AND FIRE PREVENTION OCCUPATIONS'
             414 'SUPERVISORS, POLICE AND DETECTIVES'
             415 'SUPERVISORS, GUARDS'
             416 'FIRE INSPECTION AND FIRE PREVENTION OCCUPATIONS'
             417 'FIREFIGHTING OCCUPATIONS'
             418 'POLICE AND DETECTIVES, PUBLIC SERVICE'
             423 'SHERIFFS, BAILIFFS, AND OTHER LAW ENFORCEMENT OFFICERS'
             424 'CORRECTIONAL INSTITUTION OFFICERS' 425 'CROSSING GUARDS'
             426 'GUARDS AND POLICE, EXCEPT PUBLIC SERVICE'
             427 'PROTECTIVE SERVICE OCCUPATIONS, N.E.C.'
             433 'SUPERVISORS, FOOD PREPARATION AND SERVICE OCCUPATIONS'
             434 'BARTENDERS' 435 'WAITERS AND WAITRESSES' 436 'COOKS'
             438 'FOOD COUNTER, FOUNTAIN AND RELATED OCCUPATIONS'
             439 'KITCHEN WORKERS, FOOD PREPARATION'
             443 'WAITERS/WAITRESSES ASSISTANTS'
             444 'MISCELLANEOUS FOOD PREPARATION OCCUPATIONS'
             445 'DENTAL ASSISTANTS' 446 'HEALTH AIDES, EXCEPT NURSING'
             447 'NURSING AIDES, ORDERLIES, AND ATTENDANTS'
             448 'SUPERVISORS, CLEANING AND BUILDING SERVICE WORKERS'
             449 'MAIDS AND HOUSEMEN' 453 'JANITORS AND CLEANERS'
             454 'ELEVATOR OPERATORS' 455 'PEST CONTROL OCCUPATIONS'
             456 'SUPERVISORS, PERSONAL SERVICE OCCUPATIONS' 457 'BARBERS'
             458 'HAIRDRESSERS AND COSMETOLOGISTS'
             459 'ATTENDANTS, AMUSEMENT AND RECREATION FACILITIES'
             461 'GUIDES' 462 'USHERS' 463 'PUBLIC TRANSPORTATION ATTENDANTS'
             464 'BAGGAGE PORTERS AND BELLHOPS' 465 'WELFARE SERVICE AIDES'
             466 'FAMILY CHILD CARE PROVIDERS'
             467 'EARLY CHILDHOOD TEACHERS ASSISTANTS'
             468 'CHILD CARE WORKERS, N.E.C.'
             469 'PERSONAL SERVICE OCCUPATIONS, N.E.C.'
             473 'FARMERS, EXCEPT HORTICULTURAL'
             474 'HORTICULTURAL SPECIALTY FARMERS'
             475 'MANAGERS, FARMS, EXCEPT HORTICULTURAL'
             476 'MANAGERS, HORTICULTURAL SPECIALTY FARMS'
             477 'SUPERVISORS, FARM WORKERS' 479 'FARM WORKERS'
             483 'MARINE LIFE CULTIVATION WORKERS' 484 'NURSERY WORKERS'
             485 'SUPERVISORS, RELATED AGRICULTURAL OCCUPATIONS'
             486 'GROUNDSKEEPERS AND GARDENERS, EXCEPT FARM'
             487 'ANIMAL CARETAKERS, EXCEPT FARM'
             488 'GRADERS AND SORTERS, AGRICULTURAL PRODUCTS'
             489 'INSPECTORS, AGRICULTURAL PRODUCTS'
             494 'SUPERVISORS, FORESTRY AND LOGGING WORKERS'
             495 'FORESTRY WORKERS, EXCEPT LOGGING'
             496 'TIMBER CUTTING AND LOGGING OCCUPATIONS'
             497 'CAPTAINS AND OTHER OFFICERS, FISHING VESSELS' 498 'FISHERS'
             499 'HUNTERS AND TRAPPERS'
             503 'SUPERVISORS, MECHANICS AND REPAIRERS'
             505 'AUTOMOBILE MECHANICS, EXCEPT APPRENTICES'
             506 'AUTOMOBILE MECHANIC APPRENTICES'
             507 'BUS, TRUCK, AND STATIONARY ENGINE MECHANICS'
             508 'AIRCRAFT ENGINE MECHANICS' 509 'SMALL ENGINE REPAIRERS'
             514 'AUTOMOBILE BODY AND RELATED REPAIRERS'
             515 'AIRCRAFT MECHANICS, EXCEPT ENGINE'
             516 'HEAVY EQUIPMENT MECHANICS' 517 'FARM EQUIPMENT MECHANICS'
             518 'INDUSTRIAL MACHINERY REPAIRERS'
             519 'MACHINERY MAINTENANCE OCCUPATIONS'
            523 'ELECTRONIC REPAIRERS, COMMUNICATIONS AND INDUSTRIAL EQUIPME'
             525 'DATA PROCESSING EQUIPMENT REPAIRERS'
             526 'HOUSEHOLD APPLIANCE AND POWER TOOL REPAIRERS'
             527 'TELEPHONE LINE INSTALLERS AND REPAIRERS'
             529 'TELEPHONE INSTALLERS AND REPAIRERS'
            533 'MISCELLANEOUS ELECTRICAL AND ELECTRONIC EQUIPMENT REPAIRERS'
             534 'HEATING, AIR CONDITIONING, AND REFRIGERATION MECHANICS'
             535 'CAMERA, WATCH, AND MUSICAL INSTRUMENT REPAIRERS'
             536 'LOCKSMITHS AND SAFE REPAIRERS'
             538 'OFFICE MACHINE REPAIRERS'
             539 'MECHANICAL CONTROLS AND VALVE REPAIRERS'
             543 'ELEVATOR INSTALLERS AND REPAIRERS' 544 'MILLWRIGHTS'
             547 'SPECIFIED MECHANICS AND REPAIRERS, N.E.C.'
             549 'NOT SPECIFIED MECHANICS AND REPAIRERS'
             553 'SUPERVISORS, BRICKMASONS, STONEMASONS, AND TILE SETTERS'
             554 'SUPERVISORS, CARPENTERS AND RELATED WORKERS'
            555 'SUPERVISORS, ELECTRICIANS AND POWER TRANSMISSION INSTALLERS'
             556 'SUPERVISORS, PAINTERS, PAPERHANGERS, AND PLASTERERS'
             557 'SUPERVISORS, PLUMBERS, PIPEFITTERS, AND STEAMFITTERS'
             558 'SUPERVISORS, CONSTRUCTION N.E.C.'
             563 'BRICKMASONS AND STONEMASONS, EXCEPT APPRENTICES'
             564 'BRICKMASON AND STONEMASON APPRENTICES'
             565 'TILE SETTERS, HARD AND SOFT' 566 'CARPET INSTALLERS'
             567 'CARPENTERS, EXCEPT APPRENTICES' 569 'CARPENTER APPRENTICES'
             573 'DRYWALL INSTALLERS' 575 'ELECTRICIANS, EXCEPT APPRENTICES'
             576 'ELECTRICIAN APPRENTICES'
             577 'ELECTRICAL POWER INSTALLERS AND REPAIRERS'
             579 'PAINTERS, CONSTRUCTION AND MAINTENANCE' 583 'PAPERHANGERS'
             584 'PLASTERERS'
            585 'PLUMBERS, PIPEFITTERS, AND STEAMFITTERS, EXCEPT APPRENTICES'
             587 'PLUMBER, PIPEFITTER, AND STEAMFITTER APPRENTICES'
             588 'CONCRETE AND TERRAZZO FINISHERS' 589 'GLAZIERS'
             593 'INSULATION WORKERS'
             594 'PAVING, SURFACING, AND TAMPING EQUIPMENT OPERATORS'
             595 'ROOFERS' 596 'SHEETMETAL DUCT INSTALLERS'
             597 'STRUCTURAL METAL WORKERS' 598 'DRILLERS, EARTH'
             599 'CONSTRUCTION TRADES, N.E.C.'
             613 'SUPERVISORS, EXTRACTIVE OCCUPATIONS'
             614 'DRILLERS, OIL WELL' 615 'EXPLOSIVES WORKERS'
             616 'MINING MACHINE OPERATORS' 617 'MINING OCCUPATIONS, N.E.C.'
             628 'SUPERVISORS, PRODUCTION OCCUPATIONS'
             634 'TOOL AND DIE MAKERS, EXCEPT APPRENTICES'
             635 'TOOL AND DIE MAKER APPRENTICES'
             636 'PRECISION ASSEMBLERS, METAL'
             637 'MACHINISTS, EXCEPT APPRENTICES' 639 'MACHINIST APPRENTICES'
             643 'BOILERMAKERS'
             644 'PRECISION GRINDERS, FILERS, AND TOOL SHARPENERS'
             645 'PATTERNMAKERS AND MODEL MAKERS, METAL'
             646 'LAY-OUT WORKERS'
             647 'PRECIOUS STONES AND METALS WORKERS , JEWELERS'
             649 'ENGRAVERS, METAL'
             653 'SHEET METAL WORKERS, EXCEPT APPRENTICES'
             654 'SHEET METAL WORKER APPRENTICES'
             655 'MISCELLANEOUS PRECISION METAL WORKERS'
             656 'PATTERNMAKERS AND MODEL MAKERS, WOOD'
             657 'CABINET MAKERS AND BENCH CARPENTERS'
             658 'FURNITURE AND WOOD FINISHERS'
             659 'MISCELLANEOUS PRECISION WOODWORKERS' 666 'DRESSMAKERS'
             667 'TAILORS' 668 'UPHOLSTERERS' 669 'SHOE REPAIRERS'
             674 'MISCELLANEOUS PRECISION APPAREL AND FABRIC WORKERS'
             675 'HAND MOLDERS AND SHAPERS, EXCEPT JEWELERS'
             676 'PATTERNMAKERS, LAY-OUT WORKERS, AND CUTTERS'
             677 'OPTICAL GOODS WORKERS'
             678 'DENTAL LABORATORY AND MEDICAL APPLIANCE TECHNICIANS'
             679 'BOOKBINDERS'
             683 'ELECTRICAL AND ELECTRONIC EQUIPMENT ASSEMBLERS'
             684 'MISCELLANEOUS PRECISION WORKERS, N.E.C.'
             686 'BUTCHERS AND MEAT CUTTERS' 687 'BAKERS'
             688 'FOOD BATCHMAKERS' 689 'INSPECTORS, TESTERS, AND GRADERS'
             693 'ADJUSTERS AND CALIBRATORS'
             694 'WATER AND SEWAGE TREATMENT PLANT OPERATORS'
             695 'POWER PLANT OPERATORS' 696 'STATIONARY ENGINEERS'
             699 'MISCELLANEOUS PLANT AND SYSTEM OPERATORS'
             703 'LATHE AND TURNING MACHINE SET-UP OPERATORS'
             704 'LATHE AND TURNING MACHINE OPERATORS'
             705 'MILLING AND PLANING MACHINE OPERATORS'
             706 'PUNCHING AND STAMPING PRESS MACHINE OPERATORS'
             707 'ROLLING MACHINE OPERATORS'
             708 'DRILLING AND BORING MACHINE OPERATORS'
            709 'GRINDING, ABRADING, BUFFING, AND POLISHING MACHINE OPERATOR'
             713 'FORGING MACHINE OPERATORS'
             714 'NUMERICAL CONTROL MACHINE OPERATORS'
            715 'MISCELLANEOUS METAL, PLASTIC, STONE, AND GLASS WORKING MACH'
             717 'FABRICATING MACHINE OPERATORS, N.E.C.'
             719 'MOLDING AND CASTING MACHINE OPERATORS'
             723 'METAL PLATING MACHINE OPERATORS'
             724 'HEAT TREATING EQUIPMENT OPERATORS'
            725 'MISCELLANEOUS METAL AND PLASTIC PROCESSING MACHINE OPERATOR'
             726 'WOOD LATHE, ROUTING, AND PLANING MACHINE OPERATORS'
             727 'SAWING MACHINE OPERATORS'
             728 'SHAPING AND JOINING MACHINE OPERATORS'
             729 'NAILING AND TACKING MACHINE OPERATORS'
             733 'MISCELLANEOUS WOODWORKING MACHINE OPERATORS'
             734 'PRINTING PRESS OPERATORS'
             735 'PHOTOENGRAVERS AND LITHOGRAPHERS'
             736 'TYPESETTERS AND COMPOSITORS'
             737 'MISCELLANEOUS PRINTING MACHINE OPERATORS'
             738 'WINDING AND TWISTING MACHINE OPERATORS'
             739 'KNITTING, LOOPING, TAPING, AND WEAVING MACHINE OPERATORS'
             743 'TEXTILE CUTTING MACHINE OPERATORS'
             744 'TEXTILE SEWING MACHINE OPERATORS'
             745 'SHOE MACHINE OPERATORS' 747 'PRESSING MACHINE OPERATORS'
             748 'LAUNDERING AND DRY CLEANING MACHINE OPERATORS'
             749 'MISCELLANEOUS TEXTILE MACHINE OPERATORS'
             753 'CEMENTING AND GLUING MACHINE OPERATORS'
             754 'PACKAGING AND FILLING MACHINE OPERATORS'
             755 'EXTRUDING AND FORMING MACHINE OPERATORS'
             756 'MIXING AND BLENDING MACHINE OPERATORS'
             757 'SEPARATING, FILTERING, AND CLARIFYING MACHINE OPERATORS'
             758 'COMPRESSING AND COMPACTING MACHINE OPERATORS'
             759 'PAINTING AND PAINT SPRAYING MACHINE OPERATORS'
             763 'ROASTING AND BAKING MACHINE OPERATORS, FOOD'
             764 'WASHING, CLEANING, AND PICKLING MACHINE OPERATORS'
             765 'FOLDING MACHINE OPERATORS'
             766 'FURNACE, KILN, AND OVEN OPERATORS, EXCEPT FOOD'
             768 'CRUSHING AND GRINDING MACHINE OPERATORS'
             769 'SLICING AND CUTTING MACHINE OPERATORS'
             773 'MOTION PICTURE PROJECTIONISTS'
             774 'PHOTOGRAPHIC PROCESS MACHINE OPERATORS'
             777 'MISC. MACHINE OPER.' 779 'MACHINE OPER., NOT SPEC.'
             783 'WELDERS AND CUTTERS' 784 'SOLDERERS AND BRAZERS'
             785 'ASSEMBLERS' 786 'HAND CUTTING AND TRIMMING OCCUPATIONS'
             787 'HAND MOLDING, CASTING, AND FORMING OCCUPATIONS'
             789 'HAND PAINTING, COATING, AND DECORATING OCCUPATIONS'
             793 'HAND ENGRAVING AND PRINTING OCCUPATIONS'
             795 'MISCELLANEOUS HAND WORKING OCCUPATIONS'
             796 'PRODUCTION INSPECTORS, CHECKERS, AND EXAMINERS'
             797 'PRODUCTION TESTERS' 798 'PRODUCTION SAMPLERS AND WEIGHERS'
             799 'GRADERS AND SORTERS, EXCEPT AGRICULTURAL'
             803 'SUPERVISORS, MOTOR VEHICLE OPERATORS' 804 'TRUCK DRIVERS'
             806 'DRIVER-SALES WORKERS' 808 'BUS DRIVERS'
             809 'TAXICAB DRIVERS AND CHAUFFEURS'
             813 'PARKING LOT ATTENDANTS'
             814 'MOTOR TRANSPORTATION OCCUPATIONS, N.E.C.'
             823 'RAILROAD CONDUCTORS AND YARDMASTERS'
             824 'LOCOMOTIVE OPERATING OCCUPATIONS'
             825 'RAILROAD BRAKE, SIGNAL, AND SWITCH OPERATORS'
             826 'RAIL VEHICLE OPERATORS, N.E.C.'
             828 'SHIP CAPTAINS AND MATES, EXCEPT FISHING BOATS'
             829 'SAILORS AND DECKHANDS' 833 'MARINE ENGINEERS'
             834 'BRIDGE, LOCK, AND LIGHTHOUSE TENDERS'
             843 'SUPERVISORS, MATERIAL MOVING EQUIPMENT OPERATORS'
             844 'OPERATING ENGINEERS' 845 'LONGSHORE EQUIPMENT OPERATORS'
             848 'HOIST AND WINCH OPERATORS' 849 'CRANE AND TOWER OPERATORS'
             853 'EXCAVATING AND LOADING MACHINE OPERATORS'
             855 'GRADER, DOZER, AND SCRAPER OPERATORS'
             856 'INDUSTRIAL TRUCK AND TRACTOR EQUIPMENT OPERATORS'
             859 'MISCELLANEOUS MATERIAL MOVING EQUIPMENT OPERATORS'
            864 'SUPERVISORS, HANDLERS, EQUIPMENT CLEANERS, AND LABORERS, N.'
             865 'HELPERS, MECHANICS, AND REPAIRERS'
             866 'HELPERS, CONSTRUCTION TRADES' 867 'HELPERS, SURVEYOR'
             868 'HELPERS, EXTRACTIVE OCCUPATIONS'
             869 'CONSTRUCTION LABORERS' 874 'PRODUCTION HELPERS'
             875 'GARBAGE COLLECTORS' 876 'STEVEDORES'
             877 'STOCK HANDLERS AND BAGGERS'
             878 'MACHINE FEEDERS AND OFFBEARERS'
             883 'FREIGHT, STOCK, AND MATERIAL HANDLERS, N.E.C.'
             885 'GARAGE AND SERVICE STATION RELATED OCCUPATIONS'
             887 'VEHICLE WASHERS AND EQUIPMENT CLEANERS'
             888 'HAND PACKERS AND PACKAGERS' 889 'LABORERS, EXC. CONST.'
             903 'COMMISSIONED OFFICERS AND WARRANT OFFICERS'
             904 'NON-COMMISSIONED OFFICERS AND OTHER ENLISTED PERSONNEL'
             905 'MILITARY OCCUPATION, RANK NOT SPECIFIED'
             995 'UNKNOWN OR UNSURE' 997 'ALLOCATION REQUIRED'
             998 'MISSING OR NOT REPORTED' 999 'INAPP' /
   B1PINDP   10 'AGRICULTURAL PRODUCTION, CROPS'
             11 'AGRICULTURAL PRODUCTION, LIVESTOCK' 12 'VETERINARY SERVICES'
             20 'LANDSCAPE AND HORTICULTURAL SERVICES'
             30 'AGRICULTURAL SERVICES, N.E.C.' 31 'FORESTRY'
             32 'FISHING, HUNTING, AND TRAPPING' 40 'METAL MINING'
             41 'COAL MINING' 42 'OIL AND GAS EXTRACTION'
             50 'NONMETALLIC MINING AND QUARRYING, EXCEPT FUELS'
             60 'CONSTRUCTION' 100 'MEAT PRODUCTS' 101 'DAIRY PRODUCTS'
             102 'CANNED, FROZEN, AND PRESERVED FRUITS AND VEGETABLES'
             110 'GRAIN MILL PRODUCTS' 111 'BAKERY PRODUCTS'
             112 'SUGAR AND CONFECTIONERY PRODUCTS' 120 'BEVERAGE INDUSTRIES'
             121 'MISCELLANEOUS FOOD PREPARATIONS AND KINDRED PRODUCTS'
             122 'NOT SPECIFIED FOOD INDUSTRIES' 130 'TOBACCO MANUFACTURES'
             132 'KNITTING MILLS'
             140 'DYEING AND FINISHING TEXTILES, EXCEPT WOOL AND KNIT'
             141 'CARPETS AND RUGS' 142 'YARN, THREAD, AND FABRIC MILLS'
             150 'MISCELLANEOUS TEXTILE MILL PRODUCTS'
             151 'APPAREL AND ACCESSORIES, EXCEPT KNIT'
             152 'MISCELLANEOUS FABRICATED TEXTILE PRODUCTS'
             160 'PULP, PAPER, AND PAPERBOARD MILLS'
             161 'MISCELLANEOUS PAPER AND PULP PRODUCTS'
             162 'PAPERBOARD CONTAINERS AND BOXES'
             171 'NEWSPAPER PUBLISHING AND PRINTING'
           172 'PRINTING, PUBLISHING AND ALLIED INDUSTRIES, EXCEPT NEWSPAPER'
             180 'PLASTICS, SYNTHETICS, AND RESINS' 181 'DRUGS'
             182 'SOAPS AND COSMETICS'
             190 'PAINTS, VARNISHES, AND RELATED PRODUCTS'
             191 'AGRICULTURAL CHEMICALS'
             192 'INDUSTRIAL AND MISCELLANEOUS CHEMICALS'
             200 'PETROLEUM REFINING'
             201 'MISCELLANEOUS PETROLEUM AND COAL PRODUCTS'
             210 'TIRES AND INNER TUBES'
             211 'OTHER RUBBER PRODUCTS AND PLASTICS FOOTWEAR AND BELTING'
             212 'MISCELLANEOUS PLASTICS PRODUCTS'
             220 'LEATHER TANNING AND FINISHING'
             221 'FOOTWEAR, EXCEPT RUBBER AND PLASTIC'
             222 'LEATHER PRODUCTS, EXCEPT FOOTWEAR' 230 'LOGGING'
             231 'SAWMILLS, PLANING MILLS AND MILLWORK'
             232 'WOOD BUILDINGS AND MOBILE HOMES'
             241 'MISCELLANEOUS WOOD PRODUCTS' 242 'FURNITURE AND FIXTURES'
             250 'GLASS AND GLASS PRODUCTS'
             251 'CEMENT, CONCRETE, GYPSUM, AND PLASTER PRODUCTS'
             252 'STRUCTURAL CLAY PRODUCTS'
             261 'POTTERY AND RELATED PRODUCTS'
             262 'MISCELLANEOUS NONMETALLIC MINERAL AND STONE PRODUCTS'
             270 'BLAST FURNACES, STEELWORKS, AND FINISHING MILLS'
             271 'IRON AND STEEL FOUNDRIES' 272 'PRIMARY ALUMINUM INDUSTRIES'
             280 'OTHER PRIMARY METAL INDUSTRIES'
             281 'CUTLERY, HANDTOOLS, AND GENERAL HARDWARE'
             282 'FABRICATED STRUCTURAL METAL PRODUCTS'
             290 'SCREW MACHINE PRODUCTS' 291 'METAL FORGINGS AND STAMPINGS'
             292 'ORDNANCE' 300 'MISCELLANEOUS FABRICATED METAL PRODUCTS'
             301 'NOT SPECIFIED METAL INDUSTRIES' 310 'ENGINES AND TURBINES'
             311 'FARM MACHINERY AND EQUIPMENT'
             312 'CONSTRUCTION AND MATERIAL HANDLING MACHINES'
             320 'METALWORKING MACHINERY'
             321 'OFFICE AND ACCOUNTING MACHINES'
             322 'COMPUTERS AND RELATED EQUIPMENT'
             331 'MACHINERY, EXCEPT ELECTRICAL, N.E.C.'
             332 'NOT SPECIFIED MACHINERY' 340 'HOUSEHOLD APPLIANCES'
             341 'RADIO, TV, AND COMMUNICATION EQUIPMENT'
             342 'ELECTRICAL MACHINERY, EQUIPMENT, AND SUPPLIES, N.E.C.'
            350 'NOT SPECIFIED ELECTRICAL MACHINERY, EQUIPMENT, AND SUPPLIES'
             351 'MOTOR VEHICLES AND MOTOR VEHICLE EQUIPMENT'
             352 'AIRCRAFT AND PARTS'
             360 'SHIP AND BOAT BUILDING AND REPAIRING'
             361 'RAILROAD LOCOMOTIVES AND EQUIPMENT'
             362 'GUIDED MISSILES, SPACE VEHICLES, AND PARTS'
             370 'CYCLES AND MISCELLANEOUS TRANSPORTATION EQUIPMENT'
             371 'SCIENTIFIC AND CONTROLLING INSTRUMENTS'
             372 'MEDICAL, DENTAL, AND OPTICAL INSTRUMENTS AND SUPPLIES'
             380 'PHOTOGRAPHIC EQUIPMENT AND SUPPLIES'
             381 'WATCHES, CLOCKS, AND CLOCKWORK OPERATED DEVICES'
             390 'TOYS, AMUSEMENT, AND SPORTING GOODS'
             391 'MISCELLANEOUS MANUFACTURING INDUSTRIES'
             392 'NOT SPECIFIED MANUFACTURING INDUSTRIES' 400 'RAILROADS'
             401 'BUS SERVICE AND URBAN TRANSIT' 402 'TAXICAB SERVICE'
             410 'TRUCKING SERVICE' 411 'WAREHOUSING AND STORAGE'
             412 'U.S. POSTAL SERVICE' 420 'WATER TRANSPORTATION'
             421 'AIR TRANSPORTATION' 422 'PIPE LINES, EXCEPT NATURAL GAS'
             432 'SERVICES INCIDENTAL TO TRANSPORTATION'
             440 'RADIO AND TELEVISION BROADCASTING AND CABLE'
             441 'TELEPHONE COMMUNICATIONS'
             442 'TELEGRAPH AND MISCELLANEOUS COMMUNICATIONS SERVICES'
             450 'ELECTRIC LIGHT AND POWER'
             451 'GAS AND STEAM SUPPLY SYSTEMS'
             452 'ELECTRIC AND GAS, AND OTHER COMBINATIONS'
             470 'WATER SUPPLY AND IRRIGATION' 471 'SANITARY SERVICES'
             472 'NOT SPECIFIED UTILITIES' 500 'MOTOR VEHICLES AND EQUIPMENT'
             501 'FURNITURE AND HOME FURNISHINGS'
             502 'LUMBER AND CONSTRUCTION MATERIALS'
             510 'PROFESSIONAL AND COMMERCIAL EQUIP. AND SUPPLIES'
             511 'METALS AND MINERALS, EXCEPT PETROLEUM'
             512 'ELECTRICAL GOODS'
             521 'HARDWARE, PLUMBING AND HEATING SUPPLIES'
             530 'MACHINERY, EQUIPMENT, AND SUPPLIES'
             531 'SCRAP AND WASTE MATERIALS'
             532 'MISCELLANEOUS WHOLESALE, DURABLE GOODS'
             540 'PAPER AND PAPER PRODUCTS'
             541 'DRUGS, CHEMICALS AND ALLIED PRODUCTS'
             542 'APPAREL, FABRICS, AND NOTIONS'
             550 'GROCERIES AND RELATED PRODUCTS'
             551 'FARM-PRODUCT RAW MATERIALS' 552 'PETROLEUM PRODUCTS'
             560 'ALCOHOLIC BEVERAGES' 561 'FARM SUPPLIES'
             562 'MISCELLANEOUS WHOLESALE, NONDURABLE GOODS'
             571 'NOT SPECIFIED WHOLESALE TRADE'
             580 'LUMBER AND BUILDING MATERIAL RETAILING'
             581 'HARDWARE STORES' 582 'RETAIL NURSERIES AND GARDEN STORES'
             590 'MOBILE HOME DEALERS' 591 'DEPARTMENT STORES'
             592 'VARIETY STORES'
             600 'MISCELLANEOUS GENERAL MERCHANDISE STORES'
             601 'GROCERY STORES' 602 'DAIRY PRODUCTS STORES'
             610 'RETAIL BAKERIES' 611 'FOOD STORES, N.E.C.'
             612 'MOTOR VEHICLE DEALERS' 620 'AUTO AND HOME SUPPLY STORES'
             621 'GASOLINE SERVICE STATIONS'
             622 'MISCELLANEOUS VEHICLE DEALERS'
             623 'APPAREL AND ACCESSORY STORES, EXCEPT SHOE'
             630 'SHOE STORES' 631 'FURNITURE AND HOME FURNISHINGS STORES'
             632 'HOUSEHOLD APPLIANCE STORES'
             633 'RADIO, TV, AND COMPUTER STORES' 640 'MUSIC STORES'
             641 'EATING AND DRINKING PLACES' 642 'DRUG STORES'
             650 'LIQUOR STORES'
             651 'SPORTING GOODS, BICYCLES, AND HOBBY STORES'
             652 'BOOK AND STATIONERY STORES' 660 'JEWELRY STORES'
             661 'GIFT, NOVELTY, AND SOUVENIR SHOPS'
             662 'SEWING, NEEDLEWORK AND PIECE GOODS STORES'
             663 'CATALOG AND MAIL ORDER HOUSES'
             670 'VENDING MACHINE OPERATORS'
             671 'DIRECT SELLING ESTABLISHMENTS' 672 'FUEL DEALERS'
             681 'RETAIL FLORISTS' 682 'MISCELLANEOUS RETAIL STORES'
             691 'NOT SPECIFIED RETAIL TRADE' 700 'BANKING'
             701 'SAVINGS INSTITUTIONS, INCLUDING CREDIT UNIONS'
             702 'CREDIT AGENCIES, N.E.C.'
             710 'SECURITY, COMMODITY BROKERAGE, AND INVESTMENT COMPANIES'
             711 'INSURANCE'
             712 'REAL ESTATE, INCLUDING REAL ESTATE-INSURANCE OFFICES'
             721 'ADVERTISING'
             722 'SERVICES TO DWELLINGS AND OTHER BUILDINGS'
             731 'PERSONNEL SUPPLY SERVICES'
             732 'COMPUTER AND DATA PROCESSING SERVICES'
             740 'DETECTIVE AND PROTECTIVE SERVICES'
             741 'BUSINESS SERVICES, N.E.C.'
             742 'AUTOMOTIVE RENTAL AND LEASING, WITHOUT DRIVERS'
             750 'AUTOMOBILE PARKING AND CARWASHES'
             751 'AUTOMOTIVE REPAIR AND RELATED SERVICES'
             752 'ELECTRICAL REPAIR SHOPS'
             760 'MISCELLANEOUS REPAIR SERVICES' 761 'PRIVATE HOUSEHOLDS'
             762 'HOTELS AND MOTELS'
             770 'LODGING PLACES, EXCEPT HOTELS AND MOTELS'
             771 'LAUNDRY, CLEANING, AND GARMENT SERVICES' 772 'BEAUTY SHOPS'
             780 'BARBER SHOPS' 781 'FUNERAL SERVICE AND CREMATORIES'
             782 'SHOE REPAIR SHOPS' 790 'DRESSMAKING SHOPS'
             791 'MISCELLANEOUS PERSONAL SERVICES'
             800 'THEATERS AND MOTION PICTURES' 801 'VIDEO TAPE RENTAL'
             802 'BOWLING CENTERS'
             810 'MISCELLANEOUS ENTERTAINMENT AND RECREATION SERVICES'
             812 'OFFICES AND CLINICS OF PHYSICIANS'
             820 'OFFICES AND CLINICS OF DENTISTS'
             821 'OFFICES AND CLINICS OF CHIROPRACTORS'
             822 'OFFICES AND CLINICS OF OPTOMETRISTS'
             830 'OFFICES AND CLINICS OF HEALTH PRACTITIONERS, N.E.C.'
             831 'HOSPITALS' 832 'NURSING AND PERSONAL CARE FACILITIES'
             840 'HEALTH SERVICES, N.E.C.' 841 'LEGAL SERVICES'
             842 'ELEMENTARY AND SECONDARY SCHOOLS'
             850 'COLLEGES AND UNIVERSITIES' 851 'VOCATIONAL SCHOOLS'
             852 'LIBRARIES' 860 'EDUCATIONAL SERVICES, N.E.C.'
             861 'JOB TRAINING AND VOCATIONAL REHABILITATION SERVICES'
             862 'CHILD DAY CARE SERVICES' 863 'FAMILY CHILD CARE HOMES'
             870 'RESIDENTIAL CARE FACILITIES, WITHOUT NURSING'
             871 'SOCIAL SERVICES, N.E.C.'
             872 'MUSEUMS, ART GALLERIES, AND ZOOS' 873 'LABOR UNIONS'
             880 'RELIGIOUS ORGANIZATIONS'
             881 'MEMBERSHIP ORGANIZATIONS, N.E.C.'
             882 'ENGINEERING, ARCHITECTURAL, AND SURVEYING SERVICES'
             890 'ACCOUNTING, AUDITING, AND BOOKKEEPING SERVICES'
             891 'RESEARCH, DEVELOPMENT, AND TESTING SERVICES'
             892 'MANAGEMENT AND PUBLIC RELATIONS SERVICES'
             893 'MISCELLANEOUS PROFESSIONAL AND RELATED SERVICES'
             900 'EXECUTIVE AND LEGISLATIVE OFFICES'
             901 'GENERAL GOVERNMENT, N.E.C.'
             910 'JUSTICE, PUBLIC ORDER, AND SAFETY'
             921 'PUBLIC FINANCE, TAXATION, AND MONETARY POLICY'
             922 'ADMINISTRATION OF HUMAN RESOURCES PROGRAMS'
           930 'ADMINISTRATION OF ENVIRONMENTAL QUALITY AND HOUSING PROGRAMS'
             931 'ADMINISTRATION OF ECONOMIC PROGRAMS'
             932 'NATIONAL SECURITY AND INTERNATIONAL AFFAIRS' 940 'ARMY'
             941 'AIR FORCE' 942 'NAVY' 950 'MARINES' 951 'COAST GUARD'
             952 'ARMED RESERVES, BRANCH NOT SPECIFIED'
             960 'MILITARY RESERVES OR NATIONAL GUARD'
             995 'UNKNOWN OR UNSURE' 997 'ALLOCATION REQUIRED'
             998 'MISSING OR NOT REPORTED' 999 'INAPP' /
   B1PTEDUP  9 'INAPP' /
   B1PTEARP  9 'INAPP' /
   B1PTSEIP  999 'INAPP' /
   B1PMEDUP  9 'INAPP' /
   B1PMEARP  9 'INAPP' /
   B1PMSEIP  999 'INAPP' /
   B1PFEDUP  9 'INAPP' /
   B1PFEARP  9 'INAPP' /
   B1PFSEIP  999 'INAPP' /
   B1POCPMJ  1 'EXECUTIVE, ADMINISTRATIVE, AND MANAGERIAL'
             2 'PROFESSIONAL SPECIALTY' 3 'TECHNICIAN AND RELATED SUPPORT'
             4 'SALES OCCUPATION'
             5 'ADMINISTRATIVE SUPPORT INCLUDING CLERICAL'
             6 'SERVICE OCCUPATION' 7 'FARMING, FORESTRY, AND FISHING'
             8 'PRECISION PRODUCTION, CRAFTS, AND REPAIR'
             9 'OPERATOR, LABORER, AND MILITARY' 99 'INAPP' /
   B1PPINMJ  1 'AGRICULTURE, FORESTRY, FISHING, AND MINING' 2 'CONSTRUCTION'
             3 'MANUFACTURING'
             4 'TRANSPORTATION, COMMUNICATIONS, AND PUBLIC UTILITY'
             5 'WHOLESALE TRADE' 6 'RETAIL TRADE'
             7 'FINANCE, INSURANCE, AND REAL ESTATE'
             8 'BUSINESS AND REPAIR SERVICES' 9 'PERSONAL SERVICES'
             10 'ENTERTAINMENT AND RECREATIONAL SERVICES'
             11 'PROFESSIONAL AND RELATED SERVICES'
             12 'PUBLIC ADMINISTRATION' 99 'INAPP' /
   B1PB19    1 'MARRIED' 2 'SEPARATED' 3 'DIVORCED' 4 'WIDOWED'
             5 'NEVER MARRIED' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PB20    97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PB21M   1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PB21Y   9997 'DON''T KNOW' 9998 'REFUSED' 9999 'INAPP' /
   B1PB22    1 'WIDOWHOOD' 2 'DIVORCE' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP'
             /
   B1PB23M   1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PB23Y   9997 'DON''T KNOW' 9998 'REFUSED' 9999 'INAPP' /
   B1PB24M   1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PB24Y   9997 'DON''T KNOW' 9998 'REFUSED' 9999 'INAPP' /
   B1PB25M   1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PB25Y   9997 'DON''T KNOW' 9998 'REFUSED' 9999 'INAPP' /
   B1PB26M   1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PB26Y   9997 'DON''T KNOW' 9998 'REFUSED' 9999 'INAPP' /
   B1PB27M   1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PB27Y   9997 'DON''T KNOW' 9998 'REFUSED' 9999 'INAPP' /
   B1PB28M   1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PB28Y   9997 'DON''T KNOW' 9998 'REFUSED' 9999 'INAPP' /
   B1PB29M   1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PB29Y   9997 'DON''T KNOW' 9998 'REFUSED' 9999 'INAPP' /
   B1PB30    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PB31N   997 'DON''T KNOW' 998 'REFUSED' 999 'INAPP' /
   B1PB31M   1 'DAYS' 2 'WEEKS' 3 'MONTHS' 4 'YEARS' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PB32Y   9997 'DON''T KNOW' 9998 'REFUSED' 9999 'INAPP' /
   B1PSAGE   97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PB33    1 'NO SCHOOL/SOME GRADE SCHOOL (1-6)'
             2 'EIGHTH GRADE/JUNIOR HIGH SCHOOL (7-8)'
             3 'SOME HIGH SCHOOL (9-12 NO DIPLOMA/NO GED)' 4 'GED'
             5 'GRADUATED FROM HIGH SCHOOL'
             6 '1 TO 2 YEARS OF COLLEGE, NO DEGREE YET'
             7 '3 OR MORE YEARS OF COLLEGE, NO DEGREE YET'
             8 'GRADUATED FROM A TWO-YEAR COLLEGE OR VOCATIONAL SCHOOL, OR'
            9 'GRADUATED FROM A FOUR- OR FIVE-YEAR COLLEGE, OR BACHELOR''S D'
             10 'SOME GRADUATE SCHOOL' 11 'MASTER''S DEGREE'
            12 'PH.D., ED.D., MD, DDS, LLB, LLD, JD, OR OTHER PROFESSIONAL D'
             97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PB34A   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PB34B   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PB34C   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PB34D   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PB34E   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PB34F   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PB34G   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PB34H   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PB34I   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PB34J   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PB34K   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PB34WK  1 'WORKING NOW' 2 'SELF-EMPLOYED'
             3 'LOOKING FOR WORK; UNEMPLOYED' 4 'TEMPORARILY LAID OFF'
             5 'RETIRED' 6 'HOMEMAKER' 7 'FULL-TIME STUDENT'
             8 'PART-TIME STUDENT' 9 'MATERNITY OR SICK LEAVE (VOLUNTEERED)'
             10 'PERMANENTLY DISABLED (VOLUNTEERED)' 11 'OTHER (SPECIFY)'
             97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PB35N   996 'NEVER WORKED' 997 'DON''T KNOW' 998 'REFUSED' 999 'INAPP' /
   B1PB35M   1 'DAYS' 2 'WEEKS' 3 'MONTHS' 4 'YEARS' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PB36    1 'FIRED' 2 'LAID OFF' 3 'PLANT/COMPANY CLOSED' 4 'QUIT'
             5 'RETIRED' 6 'WORK FORCE REDUCTION (VOLUNTEERED)'
             7 'OTHER (SPECIFY ACTION)' 97 'DON''T KNOW' 98 'REFUSED'
             99 'INAPP' /
   B1PB37    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PB38    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PB39    1 'HAS/HAD EMPLOYER' 2 'SELF-EMPLOYED' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1POCCS   3 'LEGISLATORS'
             4 'CHIEF EXECUTIVES AND GENERAL ADMINISTRATORS, PUBLIC ADMINIS'
             5 'ADMINISTRATORS AND OFFICIALS, PUBLIC ADMINISTRATION'
             6 'ADMINISTRATORS, PROTECTIVE SERVICES' 7 'FINANCIAL MANAGERS'
             8 'PERSONNEL AND LABOR RELATIONS MANAGERS'
             9 'PURCHASING MANAGERS'
             13 'MANAGERS, MARKETING, ADVERTISING, AND PUBLIC RELATIONS'
             14 'ADMINISTRATORS, EDUCATION AND RELATED FIELDS'
             15 'MANAGERS, MEDICINE AND HEALTH'
             16 'POSTMASTERS AND MAIL SUPERINTENDENTS'
             17 'MANAGERS, FOOD SERVING AND LODGING ESTABLISHMENTS'
             18 'MANAGERS, PROPERTIES AND REAL ESTATE' 19 'FUNERAL DIRECTORS'
             21 'MANAGERS, SERVICE ORGANIZATIONS, N.E.C.'
             22 'MANAGERS AND ADMINISTRATORS, N.E.C.'
             23 'ACCOUNTANTS AND AUDITORS' 24 'UNDERWRITERS'
             25 'OTHER FINANCIAL OFFICERS' 26 'MANAGEMENT ANALYSTS'
             27 'PERSONNEL, TRAINING, AND LABOR RELATIONS SPECIALISTS'
             28 'PURCHASING AGENTS AND BUYERS, FARM PRODUCTS'
             29 'BUYERS, WHOLESALE AND RETAIL TRADE, EXCEPT FARM PRODUCTS'
             33 'PURCHASING AGENTS AND BUYERS, N.E.C.'
             34 'BUSINESS AND PROMOTION AGENTS' 35 'CONSTRUCTION INSPECTORS'
             36 'INSPECTORS AND COMPLIANCE OFFICERS, EXCEPT CONSTRUCTION'
             37 'MANAGEMENT RELATED OCCUPATIONS, N.E.C.' 43 'ARCHITECTS'
             44 'AEROSPACE ENGINEERS'
             45 'METALLURGICAL AND MATERIALS ENGINEERS' 46 'MINING ENGINEERS'
             47 'PETROLEUM ENGINEERS' 48 'CHEMICAL ENGINEERS'
             49 'NUCLEAR ENGINEERS' 53 'CIVIL ENGINEERS'
             54 'AGRICULTURAL ENGINEERS'
             55 'ELECTRICAL AND ELECTRONIC ENGINEERS'
             56 'INDUSTRIAL ENGINEERS' 57 'MECHANICAL ENGINEERS'
             58 'MARINE AND NAVAL ARCHITECTS' 59 'ENGINEERS, N.E.C.'
             63 'SURVEYORS AND MAPPING SCIENTISTS'
             64 'COMPUTER SYSTEMS ANALYSTS AND SCIENTISTS'
             65 'OPERATIONS AND SYSTEMS RESEARCHERS AND ANALYSTS'
             66 'ACTUARIES' 67 'STATISTICIANS'
             68 'MATHEMATICAL SCIENTISTS, N.E.C.'
             69 'PHYSICISTS AND ASTRONOMERS'
             73 'CHEMISTS, EXCEPT BIOCHEMISTS'
             74 'ATMOSPHERIC AND SPACE SCIENTISTS'
             75 'GEOLOGISTS AND GEODESISTS' 76 'PHYSICAL SCIENTISTS, N.E.C.'
             77 'AGRICULTURAL AND FOOD SCIENTISTS'
             78 'BIOLOGICAL AND LIFE SCIENTISTS'
             79 'FORESTRY AND CONSERVATION SCIENTISTS'
             83 'MEDICAL SCIENTISTS' 84 'PHYSICIANS' 85 'DENTISTS'
             86 'VETERINARIANS' 87 'OPTOMETRISTS' 88 'PODIATRISTS'
             89 'HEALTH DIAGNOSING PRACTITIONERS, N.E.C.'
             95 'REGISTERED NURSES' 96 'PHARMACISTS' 97 'DIETITIANS'
             98 'RESPIRATORY THERAPISTS' 99 'OCCUPATIONAL THERAPISTS'
             103 'PHYSICAL THERAPISTS' 104 'SPEECH THERAPISTS'
             105 'THERAPISTS, N.E.C.' 106 'PHYSICIANS ASSISTANTS'
             113 'EARTH, ENVIRONMENTAL, AND MARINE SCIENCE TEACHERS'
             114 'BIOLOGICAL SCIENCE TEACHERS' 115 'CHEMISTRY TEACHERS'
             116 'PHYSICS TEACHERS' 117 'NATURAL SCIENCE TEACHERS, N.E.C.'
             118 'PSYCHOLOGY TEACHERS' 119 'ECONOMICS TEACHERS'
             123 'HISTORY TEACHERS' 124 'POLITICAL SCIENCE TEACHERS'
             125 'SOCIOLOGY TEACHERS' 126 'SOCIAL SCIENCE TEACHERS, N.E.C.'
             127 'ENGINEERING TEACHERS' 128 'MATHEMATICAL SCIENCE TEACHERS'
             129 'COMPUTER SCIENCE TEACHERS' 133 'MEDICAL SCIENCE TEACHERS'
             134 'HEALTH SPECIALTIES TEACHERS'
             135 'BUSINESS, COMMERCE, AND MARKETING TEACHERS'
             136 'AGRICULTURE AND FORESTRY TEACHERS'
             137 'ART, DRAMA, AND MUSIC TEACHERS'
             138 'PHYSICAL EDUCATION TEACHERS' 139 'EDUCATION TEACHERS'
             143 'ENGLISH TEACHERS' 144 'FOREIGN LANGUAGE TEACHERS'
             145 'LAW TEACHERS' 146 'SOCIAL WORK TEACHERS'
             147 'THEOLOGY TEACHERS' 148 'TRADE AND INDUSTRIAL TEACHERS'
             149 'HOME ECONOMICS TEACHERS'
             153 'TEACHERS, POSTSECONDARY, N.E.C.'
             154 'POSTSECONDARY TEACHERS, SUBJECT NOT SPECIFIED'
             155 'TEACHERS, PREKINDERGARTEN AND KINDERGARTEN'
             156 'TEACHERS, ELEMENTARY SCHOOL'
             157 'TEACHERS, SECONDARY SCHOOL'
             158 'TEACHERS, SPECIAL EDUCATION' 159 'TEACHERS, N.E.C.'
             163 'COUNSELORS, EDUCATIONAL AND VOCATIONAL' 164 'LIBRARIANS'
             165 'ARCHIVISTS AND CURATORS' 166 'ECONOMISTS'
             167 'PSYCHOLOGISTS' 168 'SOCIOLOGISTS'
             169 'SOCIAL SCIENTISTS, N.E.C.' 173 'URBAN PLANNERS'
             174 'SOCIAL WORKERS' 175 'RECREATION WORKERS' 176 'CLERGY'
             177 'RELIGIOUS WORKERS, N.E.C.' 178 'LAWYERS' 179 'JUDGES'
             183 'AUTHORS' 184 'TECHNICAL WRITERS' 185 'DESIGNERS'
             186 'MUSICIANS AND COMPOSERS' 187 'ACTORS AND DIRECTORS'
             188 'PAINTERS, SCULPTORS, CRAFT-ARTISTS, AND ARTIST PRINTMAKERS'
             189 'PHOTOGRAPHERS' 193 'DANCERS'
             194 'ARTISTS, PERFORMERS, AND RELATED WORKERS, N.E.C.'
             195 'EDITORS AND REPORTERS' 197 'PUBLIC RELATIONS SPECIALISTS'
             198 'ANNOUNCERS' 199 'ATHLETES'
             203 'CLINICAL LABORATORY TECHNOLOGISTS AND TECHNICIANS'
             204 'DENTAL HYGIENISTS'
             205 'HEALTH RECORD TECHNOLOGISTS AND TECHNICIANS'
             206 'RADIOLOGIC TECHNICIANS' 207 'LICENSED PRACTICAL NURSES'
             208 'HEALTH TECHNOLOGISTS AND TECHNICIANS, N.E.C.'
             213 'ELECTRICAL AND ELECTRONIC TECHNICIANS'
             214 'INDUSTRIAL ENGINEERING TECHNICIANS'
             215 'MECHANICAL ENGINEERING TECHNICIANS'
             216 'ENGINEERING TECHNICIANS, N.E.C.' 217 'DRAFTING OCCUPATIONS'
             218 'SURVEYING AND MAPPING TECHNICIANS'
             223 'BIOLOGICAL TECHNICIANS' 224 'CHEMICAL TECHNICIANS'
             225 'SCIENCE TECHNICIANS, N.E.C.'
             226 'AIRPLANE PILOTS AND NAVIGATORS'
             227 'AIR TRAFFIC CONTROLLERS'
             228 'BROADCAST EQUIPMENT OPERATORS' 229 'COMPUTER PROGRAMMERS'
             233 'TOOL PROGRAMMERS, NUMERICAL CONTROL' 234 'LEGAL ASSISTANTS'
             235 'TECHNICIANS, N.E.C.'
             243 'SUPERVISORS AND PROPRIETORS, SALES OCCUPATIONS'
             253 'INSURANCE SALES OCCUPATIONS'
             254 'REAL ESTATE SALES OCCUPATIONS'
             255 'SECURITIES AND FINANCIAL SERVICES SALES OCCUPATIONS'
             256 'ADVERTISING AND RELATED SALES OCCUPATIONS'
             257 'SALES OCCUPATIONS, OTHER BUSINESS SERVICES'
             258 'SALES ENGINEERS'
            259 'SALES REPRESENTATIVES, MINING, MANUFACTURING, AND WHOLESALE'
             263 'SALES WORKERS, MOTOR VEHICLES AND BOATS'
             264 'SALES WORKERS, APPAREL' 265 'SALES WORKERS, SHOES'
             266 'SALES WORKERS, FURNITURE AND HOME FURNISHINGS'
             267 'SALES WORKERS, RADIO, TV, HI-FI, AND APPLIANCES'
             268 'SALES WORKERS, HARDWARE AND BUILDING SUPPLIES'
             269 'SALES WORKERS, PARTS'
             274 'SALES WORKERS, OTHER COMMODITIES'
             275 'SALES COUNTER CLERKS' 276 'CASHIERS'
             277 'STREET AND DOOR-TO-DOOR SALES WORKERS' 278 'NEWS VENDORS'
             283 'DEMONSTRATORS, PROMOTERS AND MODELS, SALES'
             284 'AUCTIONEERS' 285 'SALES SUPPORT OCCUPATIONS, N.E.C.'
             303 'SUPERVISORS, GENERAL OFFICE'
             304 'SUPERVISORS, COMPUTER EQUIPMENT OPERATORS'
             305 'SUPERVISORS, FINANCIAL RECORDS PROCESSING'
             306 'CHIEF COMMUNICATIONS OPERATORS'
            307 'SUPERVISORS, DISTRIBUTION, SCHEDULING, AND ADJUSTING CLERKS'
             308 'COMPUTER OPERATORS' 309 'PERIPHERAL EQUIPMENT OPERATORS'
             313 'SECRETARIES' 314 'STENOGRAPHERS' 315 'TYPISTS'
             316 'INTERVIEWERS' 317 'HOTEL CLERKS'
             318 'TRANSPORTATION TICKET AND RESERVATION AGENTS'
             319 'RECEPTIONISTS' 323 'INFORMATION CLERKS, N.E.C.'
             325 'CLASSIFIED-AD CLERKS' 326 'CORRESPONDENCE CLERKS'
             327 'ORDER CLERKS'
             328 'PERSONNEL CLERKS, EXCEPT PAYROLL AND TIMEKEEPING'
             329 'LIBRARY CLERKS' 335 'FILE CLERKS' 336 'RECORDS CLERKS'
             337 'BOOKKEEPERS, ACCOUNTING, AND AUDITING CLERKS'
             338 'PAYROLL AND TIMEKEEPING CLERKS' 339 'BILLING CLERKS'
             343 'COST AND RATE CLERKS'
             344 'BILLING, POSTING, AND CALCULATING MACHINE OPERATORS'
             345 'DUPLICATING MACHINE OPERATORS'
             346 'MAIL PREPARING AND PAPER HANDLING MACHINE OPERATORS'
             347 'OFFICE MACHINE OPERATORS, N.E.C.' 348 'TELEPHONE OPERATORS'
             353 'COMMUNICATIONS EQUIPMENT OPERATORS, N.E.C.'
             354 'POSTAL CLERKS, EXCEPT MAIL CARRIERS'
             355 'MAIL CARRIERS, POSTAL SERVICE'
             356 'MAIL CLERKS, EXCEPT POSTAL SERVICE' 357 'MESSENGERS'
             359 'DISPATCHERS' 363 'PRODUCTION COORDINATORS'
             364 'TRAFFIC, SHIPPING, AND RECEIVING CLERKS'
             365 'STOCK AND INVENTORY CLERKS' 366 'METER READERS'
             368 'WEIGHERS, MEASURERS, CHECKERS, AND SAMPLERS'
             373 'EXPEDITERS'
            374 'MATERIAL RECORDING, SCHEDULING, AND DISTRIBUTING CLERKS, N.'
             375 'INSURANCE ADJUSTERS, EXAMINERS, AND INVESTIGATORS'
             376 'INVESTIGATORS AND ADJUSTERS, EXCEPT INSURANCE'
             377 'ELIGIBILITY CLERKS, SOCIAL WELFARE'
             378 'BILL AND ACCOUNT COLLECTORS' 379 'GENERAL OFFICE CLERKS'
             383 'BANK TELLERS' 384 'PROOFREADERS' 385 'DATA-ENTRY KEYERS'
             386 'STATISTICAL CLERKS' 387 'TEACHERS AIDES'
             389 'ADMINISTRATIVE SUPPORT OCCUPATIONS, N.E.C.'
             403 'LAUNDERERS AND IRONERS' 404 'COOKS, PRIVATE HOUSEHOLD'
             405 'HOUSEKEEPERS AND BUTLERS'
             406 'CHILD CARE WORKERS, PRIVATE HOUSEHOLD'
             407 'PRIVATE HOUSEHOLD CLEANERS AND SERVANTS'
             413 'SUPERVISORS, FIREFIGHTING AND FIRE PREVENTION OCCUPATIONS'
             414 'SUPERVISORS, POLICE AND DETECTIVES'
             415 'SUPERVISORS, GUARDS'
             416 'FIRE INSPECTION AND FIRE PREVENTION OCCUPATIONS'
             417 'FIREFIGHTING OCCUPATIONS'
             418 'POLICE AND DETECTIVES, PUBLIC SERVICE'
             423 'SHERIFFS, BAILIFFS, AND OTHER LAW ENFORCEMENT OFFICERS'
             424 'CORRECTIONAL INSTITUTION OFFICERS' 425 'CROSSING GUARDS'
             426 'GUARDS AND POLICE, EXCEPT PUBLIC SERVICE'
             427 'PROTECTIVE SERVICE OCCUPATIONS, N.E.C.'
             433 'SUPERVISORS, FOOD PREPARATION AND SERVICE OCCUPATIONS'
             434 'BARTENDERS' 435 'WAITERS AND WAITRESSES' 436 'COOKS'
             438 'FOOD COUNTER, FOUNTAIN AND RELATED OCCUPATIONS'
             439 'KITCHEN WORKERS, FOOD PREPARATION'
             443 'WAITERS/WAITRESSES ASSISTANTS'
             444 'MISCELLANEOUS FOOD PREPARATION OCCUPATIONS'
             445 'DENTAL ASSISTANTS' 446 'HEALTH AIDES, EXCEPT NURSING'
             447 'NURSING AIDES, ORDERLIES, AND ATTENDANTS'
             448 'SUPERVISORS, CLEANING AND BUILDING SERVICE WORKERS'
             449 'MAIDS AND HOUSEMEN' 453 'JANITORS AND CLEANERS'
             454 'ELEVATOR OPERATORS' 455 'PEST CONTROL OCCUPATIONS'
             456 'SUPERVISORS, PERSONAL SERVICE OCCUPATIONS' 457 'BARBERS'
             458 'HAIRDRESSERS AND COSMETOLOGISTS'
             459 'ATTENDANTS, AMUSEMENT AND RECREATION FACILITIES'
             461 'GUIDES' 462 'USHERS' 463 'PUBLIC TRANSPORTATION ATTENDANTS'
             464 'BAGGAGE PORTERS AND BELLHOPS' 465 'WELFARE SERVICE AIDES'
             466 'FAMILY CHILD CARE PROVIDERS'
             467 'EARLY CHILDHOOD TEACHERS ASSISTANTS'
             468 'CHILD CARE WORKERS, N.E.C.'
             469 'PERSONAL SERVICE OCCUPATIONS, N.E.C.'
             473 'FARMERS, EXCEPT HORTICULTURAL'
             474 'HORTICULTURAL SPECIALTY FARMERS'
             475 'MANAGERS, FARMS, EXCEPT HORTICULTURAL'
             476 'MANAGERS, HORTICULTURAL SPECIALTY FARMS'
             477 'SUPERVISORS, FARM WORKERS' 479 'FARM WORKERS'
             483 'MARINE LIFE CULTIVATION WORKERS' 484 'NURSERY WORKERS'
             485 'SUPERVISORS, RELATED AGRICULTURAL OCCUPATIONS'
             486 'GROUNDSKEEPERS AND GARDENERS, EXCEPT FARM'
             487 'ANIMAL CARETAKERS, EXCEPT FARM'
             488 'GRADERS AND SORTERS, AGRICULTURAL PRODUCTS'
             489 'INSPECTORS, AGRICULTURAL PRODUCTS'
             494 'SUPERVISORS, FORESTRY AND LOGGING WORKERS'
             495 'FORESTRY WORKERS, EXCEPT LOGGING'
             496 'TIMBER CUTTING AND LOGGING OCCUPATIONS'
             497 'CAPTAINS AND OTHER OFFICERS, FISHING VESSELS' 498 'FISHERS'
             499 'HUNTERS AND TRAPPERS'
             503 'SUPERVISORS, MECHANICS AND REPAIRERS'
             505 'AUTOMOBILE MECHANICS, EXCEPT APPRENTICES'
             506 'AUTOMOBILE MECHANIC APPRENTICES'
             507 'BUS, TRUCK, AND STATIONARY ENGINE MECHANICS'
             508 'AIRCRAFT ENGINE MECHANICS' 509 'SMALL ENGINE REPAIRERS'
             514 'AUTOMOBILE BODY AND RELATED REPAIRERS'
             515 'AIRCRAFT MECHANICS, EXCEPT ENGINE'
             516 'HEAVY EQUIPMENT MECHANICS' 517 'FARM EQUIPMENT MECHANICS'
             518 'INDUSTRIAL MACHINERY REPAIRERS'
             519 'MACHINERY MAINTENANCE OCCUPATIONS'
            523 'ELECTRONIC REPAIRERS, COMMUNICATIONS AND INDUSTRIAL EQUIPME'
             525 'DATA PROCESSING EQUIPMENT REPAIRERS'
             526 'HOUSEHOLD APPLIANCE AND POWER TOOL REPAIRERS'
             527 'TELEPHONE LINE INSTALLERS AND REPAIRERS'
             529 'TELEPHONE INSTALLERS AND REPAIRERS'
            533 'MISCELLANEOUS ELECTRICAL AND ELECTRONIC EQUIPMENT REPAIRERS'
             534 'HEATING, AIR CONDITIONING, AND REFRIGERATION MECHANICS'
             535 'CAMERA, WATCH, AND MUSICAL INSTRUMENT REPAIRERS'
             536 'LOCKSMITHS AND SAFE REPAIRERS'
             538 'OFFICE MACHINE REPAIRERS'
             539 'MECHANICAL CONTROLS AND VALVE REPAIRERS'
             543 'ELEVATOR INSTALLERS AND REPAIRERS' 544 'MILLWRIGHTS'
             547 'SPECIFIED MECHANICS AND REPAIRERS, N.E.C.'
             549 'NOT SPECIFIED MECHANICS AND REPAIRERS'
             553 'SUPERVISORS, BRICKMASONS, STONEMASONS, AND TILE SETTERS'
             554 'SUPERVISORS, CARPENTERS AND RELATED WORKERS'
            555 'SUPERVISORS, ELECTRICIANS AND POWER TRANSMISSION INSTALLERS'
             556 'SUPERVISORS, PAINTERS, PAPERHANGERS, AND PLASTERERS'
             557 'SUPERVISORS, PLUMBERS, PIPEFITTERS, AND STEAMFITTERS'
             558 'SUPERVISORS, CONSTRUCTION N.E.C.'
             563 'BRICKMASONS AND STONEMASONS, EXCEPT APPRENTICES'
             564 'BRICKMASON AND STONEMASON APPRENTICES'
             565 'TILE SETTERS, HARD AND SOFT' 566 'CARPET INSTALLERS'
             567 'CARPENTERS, EXCEPT APPRENTICES' 569 'CARPENTER APPRENTICES'
             573 'DRYWALL INSTALLERS' 575 'ELECTRICIANS, EXCEPT APPRENTICES'
             576 'ELECTRICIAN APPRENTICES'
             577 'ELECTRICAL POWER INSTALLERS AND REPAIRERS'
             579 'PAINTERS, CONSTRUCTION AND MAINTENANCE' 583 'PAPERHANGERS'
             584 'PLASTERERS'
            585 'PLUMBERS, PIPEFITTERS, AND STEAMFITTERS, EXCEPT APPRENTICES'
             587 'PLUMBER, PIPEFITTER, AND STEAMFITTER APPRENTICES'
             588 'CONCRETE AND TERRAZZO FINISHERS' 589 'GLAZIERS'
             593 'INSULATION WORKERS'
             594 'PAVING, SURFACING, AND TAMPING EQUIPMENT OPERATORS'
             595 'ROOFERS' 596 'SHEETMETAL DUCT INSTALLERS'
             597 'STRUCTURAL METAL WORKERS' 598 'DRILLERS, EARTH'
             599 'CONSTRUCTION TRADES, N.E.C.'
             613 'SUPERVISORS, EXTRACTIVE OCCUPATIONS'
             614 'DRILLERS, OIL WELL' 615 'EXPLOSIVES WORKERS'
             616 'MINING MACHINE OPERATORS' 617 'MINING OCCUPATIONS, N.E.C.'
             628 'SUPERVISORS, PRODUCTION OCCUPATIONS'
             634 'TOOL AND DIE MAKERS, EXCEPT APPRENTICES'
             635 'TOOL AND DIE MAKER APPRENTICES'
             636 'PRECISION ASSEMBLERS, METAL'
             637 'MACHINISTS, EXCEPT APPRENTICES' 639 'MACHINIST APPRENTICES'
             643 'BOILERMAKERS'
             644 'PRECISION GRINDERS, FILERS, AND TOOL SHARPENERS'
             645 'PATTERNMAKERS AND MODEL MAKERS, METAL'
             646 'LAY-OUT WORKERS'
             647 'PRECIOUS STONES AND METALS WORKERS , JEWELERS'
             649 'ENGRAVERS, METAL'
             653 'SHEET METAL WORKERS, EXCEPT APPRENTICES'
             654 'SHEET METAL WORKER APPRENTICES'
             655 'MISCELLANEOUS PRECISION METAL WORKERS'
             656 'PATTERNMAKERS AND MODEL MAKERS, WOOD'
             657 'CABINET MAKERS AND BENCH CARPENTERS'
             658 'FURNITURE AND WOOD FINISHERS'
             659 'MISCELLANEOUS PRECISION WOODWORKERS' 666 'DRESSMAKERS'
             667 'TAILORS' 668 'UPHOLSTERERS' 669 'SHOE REPAIRERS'
             674 'MISCELLANEOUS PRECISION APPAREL AND FABRIC WORKERS'
             675 'HAND MOLDERS AND SHAPERS, EXCEPT JEWELERS'
             676 'PATTERNMAKERS, LAY-OUT WORKERS, AND CUTTERS'
             677 'OPTICAL GOODS WORKERS'
             678 'DENTAL LABORATORY AND MEDICAL APPLIANCE TECHNICIANS'
             679 'BOOKBINDERS'
             683 'ELECTRICAL AND ELECTRONIC EQUIPMENT ASSEMBLERS'
             684 'MISCELLANEOUS PRECISION WORKERS, N.E.C.'
             686 'BUTCHERS AND MEAT CUTTERS' 687 'BAKERS'
             688 'FOOD BATCHMAKERS' 689 'INSPECTORS, TESTERS, AND GRADERS'
             693 'ADJUSTERS AND CALIBRATORS'
             694 'WATER AND SEWAGE TREATMENT PLANT OPERATORS'
             695 'POWER PLANT OPERATORS' 696 'STATIONARY ENGINEERS'
             699 'MISCELLANEOUS PLANT AND SYSTEM OPERATORS'
             703 'LATHE AND TURNING MACHINE SET-UP OPERATORS'
             704 'LATHE AND TURNING MACHINE OPERATORS'
             705 'MILLING AND PLANING MACHINE OPERATORS'
             706 'PUNCHING AND STAMPING PRESS MACHINE OPERATORS'
             707 'ROLLING MACHINE OPERATORS'
             708 'DRILLING AND BORING MACHINE OPERATORS'
            709 'GRINDING, ABRADING, BUFFING, AND POLISHING MACHINE OPERATOR'
             713 'FORGING MACHINE OPERATORS'
             714 'NUMERICAL CONTROL MACHINE OPERATORS'
            715 'MISCELLANEOUS METAL, PLASTIC, STONE, AND GLASS WORKING MACH'
             717 'FABRICATING MACHINE OPERATORS, N.E.C.'
             719 'MOLDING AND CASTING MACHINE OPERATORS'
             723 'METAL PLATING MACHINE OPERATORS'
             724 'HEAT TREATING EQUIPMENT OPERATORS'
            725 'MISCELLANEOUS METAL AND PLASTIC PROCESSING MACHINE OPERATOR'
             726 'WOOD LATHE, ROUTING, AND PLANING MACHINE OPERATORS'
             727 'SAWING MACHINE OPERATORS'
             728 'SHAPING AND JOINING MACHINE OPERATORS'
             729 'NAILING AND TACKING MACHINE OPERATORS'
             733 'MISCELLANEOUS WOODWORKING MACHINE OPERATORS'
             734 'PRINTING PRESS OPERATORS'
             735 'PHOTOENGRAVERS AND LITHOGRAPHERS'
             736 'TYPESETTERS AND COMPOSITORS'
             737 'MISCELLANEOUS PRINTING MACHINE OPERATORS'
             738 'WINDING AND TWISTING MACHINE OPERATORS'
             739 'KNITTING, LOOPING, TAPING, AND WEAVING MACHINE OPERATORS'
             743 'TEXTILE CUTTING MACHINE OPERATORS'
             744 'TEXTILE SEWING MACHINE OPERATORS'
             745 'SHOE MACHINE OPERATORS' 747 'PRESSING MACHINE OPERATORS'
             748 'LAUNDERING AND DRY CLEANING MACHINE OPERATORS'
             749 'MISCELLANEOUS TEXTILE MACHINE OPERATORS'
             753 'CEMENTING AND GLUING MACHINE OPERATORS'
             754 'PACKAGING AND FILLING MACHINE OPERATORS'
             755 'EXTRUDING AND FORMING MACHINE OPERATORS'
             756 'MIXING AND BLENDING MACHINE OPERATORS'
             757 'SEPARATING, FILTERING, AND CLARIFYING MACHINE OPERATORS'
             758 'COMPRESSING AND COMPACTING MACHINE OPERATORS'
             759 'PAINTING AND PAINT SPRAYING MACHINE OPERATORS'
             763 'ROASTING AND BAKING MACHINE OPERATORS, FOOD'
             764 'WASHING, CLEANING, AND PICKLING MACHINE OPERATORS'
             765 'FOLDING MACHINE OPERATORS'
             766 'FURNACE, KILN, AND OVEN OPERATORS, EXCEPT FOOD'
             768 'CRUSHING AND GRINDING MACHINE OPERATORS'
             769 'SLICING AND CUTTING MACHINE OPERATORS'
             773 'MOTION PICTURE PROJECTIONISTS'
             774 'PHOTOGRAPHIC PROCESS MACHINE OPERATORS'
             777 'MISC. MACHINE OPER.' 779 'MACHINE OPER., NOT SPEC.'
             783 'WELDERS AND CUTTERS' 784 'SOLDERERS AND BRAZERS'
             785 'ASSEMBLERS' 786 'HAND CUTTING AND TRIMMING OCCUPATIONS'
             787 'HAND MOLDING, CASTING, AND FORMING OCCUPATIONS'
             789 'HAND PAINTING, COATING, AND DECORATING OCCUPATIONS'
             793 'HAND ENGRAVING AND PRINTING OCCUPATIONS'
             795 'MISCELLANEOUS HAND WORKING OCCUPATIONS'
             796 'PRODUCTION INSPECTORS, CHECKERS, AND EXAMINERS'
             797 'PRODUCTION TESTERS' 798 'PRODUCTION SAMPLERS AND WEIGHERS'
             799 'GRADERS AND SORTERS, EXCEPT AGRICULTURAL'
             803 'SUPERVISORS, MOTOR VEHICLE OPERATORS' 804 'TRUCK DRIVERS'
             806 'DRIVER-SALES WORKERS' 808 'BUS DRIVERS'
             809 'TAXICAB DRIVERS AND CHAUFFEURS'
             813 'PARKING LOT ATTENDANTS'
             814 'MOTOR TRANSPORTATION OCCUPATIONS, N.E.C.'
             823 'RAILROAD CONDUCTORS AND YARDMASTERS'
             824 'LOCOMOTIVE OPERATING OCCUPATIONS'
             825 'RAILROAD BRAKE, SIGNAL, AND SWITCH OPERATORS'
             826 'RAIL VEHICLE OPERATORS, N.E.C.'
             828 'SHIP CAPTAINS AND MATES, EXCEPT FISHING BOATS'
             829 'SAILORS AND DECKHANDS' 833 'MARINE ENGINEERS'
             834 'BRIDGE, LOCK, AND LIGHTHOUSE TENDERS'
             843 'SUPERVISORS, MATERIAL MOVING EQUIPMENT OPERATORS'
             844 'OPERATING ENGINEERS' 845 'LONGSHORE EQUIPMENT OPERATORS'
             848 'HOIST AND WINCH OPERATORS' 849 'CRANE AND TOWER OPERATORS'
             853 'EXCAVATING AND LOADING MACHINE OPERATORS'
             855 'GRADER, DOZER, AND SCRAPER OPERATORS'
             856 'INDUSTRIAL TRUCK AND TRACTOR EQUIPMENT OPERATORS'
             859 'MISCELLANEOUS MATERIAL MOVING EQUIPMENT OPERATORS'
            864 'SUPERVISORS, HANDLERS, EQUIPMENT CLEANERS, AND LABORERS, N.'
             865 'HELPERS, MECHANICS, AND REPAIRERS'
             866 'HELPERS, CONSTRUCTION TRADES' 867 'HELPERS, SURVEYOR'
             868 'HELPERS, EXTRACTIVE OCCUPATIONS'
             869 'CONSTRUCTION LABORERS' 874 'PRODUCTION HELPERS'
             875 'GARBAGE COLLECTORS' 876 'STEVEDORES'
             877 'STOCK HANDLERS AND BAGGERS'
             878 'MACHINE FEEDERS AND OFFBEARERS'
             883 'FREIGHT, STOCK, AND MATERIAL HANDLERS, N.E.C.'
             885 'GARAGE AND SERVICE STATION RELATED OCCUPATIONS'
             887 'VEHICLE WASHERS AND EQUIPMENT CLEANERS'
             888 'HAND PACKERS AND PACKAGERS' 889 'LABORERS, EXC. CONST.'
             903 'COMMISSIONED OFFICERS AND WARRANT OFFICERS'
             904 'NON-COMMISSIONED OFFICERS AND OTHER ENLISTED PERSONNEL'
             905 'MILITARY OCCUPATION, RANK NOT SPECIFIED'
             995 'UNKNOWN OR UNSURE' 997 'ALLOCATION REQUIRED'
             998 'NOT IN LABOR FORCE' 999 'MISSING OR NOT REPORTED' /
   B1PINDS   10 'AGRICULTURAL PRODUCTION, CROPS'
             11 'AGRICULTURAL PRODUCTION, LIVESTOCK' 12 'VETERINARY SERVICES'
             20 'LANDSCAPE AND HORTICULTURAL SERVICES'
             30 'AGRICULTURAL SERVICES, N.E.C.' 31 'FORESTRY'
             32 'FISHING, HUNTING, AND TRAPPING' 40 'METAL MINING'
             41 'COAL MINING' 42 'OIL AND GAS EXTRACTION'
             50 'NONMETALLIC MINING AND QUARRYING, EXCEPT FUELS'
             60 'CONSTRUCTION' 100 'MEAT PRODUCTS' 101 'DAIRY PRODUCTS'
             102 'CANNED, FROZEN, AND PRESERVED FRUITS AND VEGETABLES'
             110 'GRAIN MILL PRODUCTS' 111 'BAKERY PRODUCTS'
             112 'SUGAR AND CONFECTIONERY PRODUCTS' 120 'BEVERAGE INDUSTRIES'
             121 'MISCELLANEOUS FOOD PREPARATIONS AND KINDRED PRODUCTS'
             122 'NOT SPECIFIED FOOD INDUSTRIES' 130 'TOBACCO MANUFACTURES'
             132 'KNITTING MILLS'
             140 'DYEING AND FINISHING TEXTILES, EXCEPT WOOL AND KNIT'
             141 'CARPETS AND RUGS' 142 'YARN, THREAD, AND FABRIC MILLS'
             150 'MISCELLANEOUS TEXTILE MILL PRODUCTS'
             151 'APPAREL AND ACCESSORIES, EXCEPT KNIT'
             152 'MISCELLANEOUS FABRICATED TEXTILE PRODUCTS'
             160 'PULP, PAPER, AND PAPERBOARD MILLS'
             161 'MISCELLANEOUS PAPER AND PULP PRODUCTS'
             162 'PAPERBOARD CONTAINERS AND BOXES'
             171 'NEWSPAPER PUBLISHING AND PRINTING'
           172 'PRINTING, PUBLISHING AND ALLIED INDUSTRIES, EXCEPT NEWSPAPER'
             180 'PLASTICS, SYNTHETICS, AND RESINS' 181 'DRUGS'
             182 'SOAPS AND COSMETICS'
             190 'PAINTS, VARNISHES, AND RELATED PRODUCTS'
             191 'AGRICULTURAL CHEMICALS'
             192 'INDUSTRIAL AND MISCELLANEOUS CHEMICALS'
             200 'PETROLEUM REFINING'
             201 'MISCELLANEOUS PETROLEUM AND COAL PRODUCTS'
             210 'TIRES AND INNER TUBES'
             211 'OTHER RUBBER PRODUCTS AND PLASTICS FOOTWEAR AND BELTING'
             212 'MISCELLANEOUS PLASTICS PRODUCTS'
             220 'LEATHER TANNING AND FINISHING'
             221 'FOOTWEAR, EXCEPT RUBBER AND PLASTIC'
             222 'LEATHER PRODUCTS, EXCEPT FOOTWEAR' 230 'LOGGING'
             231 'SAWMILLS, PLANING MILLS AND MILLWORK'
             232 'WOOD BUILDINGS AND MOBILE HOMES'
             241 'MISCELLANEOUS WOOD PRODUCTS' 242 'FURNITURE AND FIXTURES'
             250 'GLASS AND GLASS PRODUCTS'
             251 'CEMENT, CONCRETE, GYPSUM, AND PLASTER PRODUCTS'
             252 'STRUCTURAL CLAY PRODUCTS'
             261 'POTTERY AND RELATED PRODUCTS'
             262 'MISCELLANEOUS NONMETALLIC MINERAL AND STONE PRODUCTS'
             270 'BLAST FURNACES, STEELWORKS, AND FINISHING MILLS'
             271 'IRON AND STEEL FOUNDRIES' 272 'PRIMARY ALUMINUM INDUSTRIES'
             280 'OTHER PRIMARY METAL INDUSTRIES'
             281 'CUTLERY, HANDTOOLS, AND GENERAL HARDWARE'
             282 'FABRICATED STRUCTURAL METAL PRODUCTS'
             290 'SCREW MACHINE PRODUCTS' 291 'METAL FORGINGS AND STAMPINGS'
             292 'ORDNANCE' 300 'MISCELLANEOUS FABRICATED METAL PRODUCTS'
             301 'NOT SPECIFIED METAL INDUSTRIES' 310 'ENGINES AND TURBINES'
             311 'FARM MACHINERY AND EQUIPMENT'
             312 'CONSTRUCTION AND MATERIAL HANDLING MACHINES'
             320 'METALWORKING MACHINERY'
             321 'OFFICE AND ACCOUNTING MACHINES'
             322 'COMPUTERS AND RELATED EQUIPMENT'
             331 'MACHINERY, EXCEPT ELECTRICAL, N.E.C.'
             332 'NOT SPECIFIED MACHINERY' 340 'HOUSEHOLD APPLIANCES'
             341 'RADIO, TV, AND COMMUNICATION EQUIPMENT'
             342 'ELECTRICAL MACHINERY, EQUIPMENT, AND SUPPLIES, N.E.C.'
            350 'NOT SPECIFIED ELECTRICAL MACHINERY, EQUIPMENT, AND SUPPLIES'
             351 'MOTOR VEHICLES AND MOTOR VEHICLE EQUIPMENT'
             352 'AIRCRAFT AND PARTS'
             360 'SHIP AND BOAT BUILDING AND REPAIRING'
             361 'RAILROAD LOCOMOTIVES AND EQUIPMENT'
             362 'GUIDED MISSILES, SPACE VEHICLES, AND PARTS'
             370 'CYCLES AND MISCELLANEOUS TRANSPORTATION EQUIPMENT'
             371 'SCIENTIFIC AND CONTROLLING INSTRUMENTS'
             372 'MEDICAL, DENTAL, AND OPTICAL INSTRUMENTS AND SUPPLIES'
             380 'PHOTOGRAPHIC EQUIPMENT AND SUPPLIES'
             381 'WATCHES, CLOCKS, AND CLOCKWORK OPERATED DEVICES'
             390 'TOYS, AMUSEMENT, AND SPORTING GOODS'
             391 'MISCELLANEOUS MANUFACTURING INDUSTRIES'
             392 'NOT SPECIFIED MANUFACTURING INDUSTRIES' 400 'RAILROADS'
             401 'BUS SERVICE AND URBAN TRANSIT' 402 'TAXICAB SERVICE'
             410 'TRUCKING SERVICE' 411 'WAREHOUSING AND STORAGE'
             412 'U.S. POSTAL SERVICE' 420 'WATER TRANSPORTATION'
             421 'AIR TRANSPORTATION' 422 'PIPE LINES, EXCEPT NATURAL GAS'
             432 'SERVICES INCIDENTAL TO TRANSPORTATION'
             440 'RADIO AND TELEVISION BROADCASTING AND CABLE'
             441 'TELEPHONE COMMUNICATIONS'
             442 'TELEGRAPH AND MISCELLANEOUS COMMUNICATIONS SERVICES'
             450 'ELECTRIC LIGHT AND POWER'
             451 'GAS AND STEAM SUPPLY SYSTEMS'
             452 'ELECTRIC AND GAS, AND OTHER COMBINATIONS'
             470 'WATER SUPPLY AND IRRIGATION' 471 'SANITARY SERVICES'
             472 'NOT SPECIFIED UTILITIES' 500 'MOTOR VEHICLES AND EQUIPMENT'
             501 'FURNITURE AND HOME FURNISHINGS'
             502 'LUMBER AND CONSTRUCTION MATERIALS'
             510 'PROFESSIONAL AND COMMERCIAL EQUIP. AND SUPPLIES'
             511 'METALS AND MINERALS, EXCEPT PETROLEUM'
             512 'ELECTRICAL GOODS'
             521 'HARDWARE, PLUMBING AND HEATING SUPPLIES'
             530 'MACHINERY, EQUIPMENT, AND SUPPLIES'
             531 'SCRAP AND WASTE MATERIALS'
             532 'MISCELLANEOUS WHOLESALE, DURABLE GOODS'
             540 'PAPER AND PAPER PRODUCTS'
             541 'DRUGS, CHEMICALS AND ALLIED PRODUCTS'
             542 'APPAREL, FABRICS, AND NOTIONS'
             550 'GROCERIES AND RELATED PRODUCTS'
             551 'FARM-PRODUCT RAW MATERIALS' 552 'PETROLEUM PRODUCTS'
             560 'ALCOHOLIC BEVERAGES' 561 'FARM SUPPLIES'
             562 'MISCELLANEOUS WHOLESALE, NONDURABLE GOODS'
             571 'NOT SPECIFIED WHOLESALE TRADE'
             580 'LUMBER AND BUILDING MATERIAL RETAILING'
             581 'HARDWARE STORES' 582 'RETAIL NURSERIES AND GARDEN STORES'
             590 'MOBILE HOME DEALERS' 591 'DEPARTMENT STORES'
             592 'VARIETY STORES'
             600 'MISCELLANEOUS GENERAL MERCHANDISE STORES'
             601 'GROCERY STORES' 602 'DAIRY PRODUCTS STORES'
             610 'RETAIL BAKERIES' 611 'FOOD STORES, N.E.C.'
             612 'MOTOR VEHICLE DEALERS' 620 'AUTO AND HOME SUPPLY STORES'
             621 'GASOLINE SERVICE STATIONS'
             622 'MISCELLANEOUS VEHICLE DEALERS'
             623 'APPAREL AND ACCESSORY STORES, EXCEPT SHOE'
             630 'SHOE STORES' 631 'FURNITURE AND HOME FURNISHINGS STORES'
             632 'HOUSEHOLD APPLIANCE STORES'
             633 'RADIO, TV, AND COMPUTER STORES' 640 'MUSIC STORES'
             641 'EATING AND DRINKING PLACES' 642 'DRUG STORES'
             650 'LIQUOR STORES'
             651 'SPORTING GOODS, BICYCLES, AND HOBBY STORES'
             652 'BOOK AND STATIONERY STORES' 660 'JEWELRY STORES'
             661 'GIFT, NOVELTY, AND SOUVENIR SHOPS'
             662 'SEWING, NEEDLEWORK AND PIECE GOODS STORES'
             663 'CATALOG AND MAIL ORDER HOUSES'
             670 'VENDING MACHINE OPERATORS'
             671 'DIRECT SELLING ESTABLISHMENTS' 672 'FUEL DEALERS'
             681 'RETAIL FLORISTS' 682 'MISCELLANEOUS RETAIL STORES'
             691 'NOT SPECIFIED RETAIL TRADE' 700 'BANKING'
             701 'SAVINGS INSTITUTIONS, INCLUDING CREDIT UNIONS'
             702 'CREDIT AGENCIES, N.E.C.'
             710 'SECURITY, COMMODITY BROKERAGE, AND INVESTMENT COMPANIES'
             711 'INSURANCE'
             712 'REAL ESTATE, INCLUDING REAL ESTATE-INSURANCE OFFICES'
             721 'ADVERTISING'
             722 'SERVICES TO DWELLINGS AND OTHER BUILDINGS'
             731 'PERSONNEL SUPPLY SERVICES'
             732 'COMPUTER AND DATA PROCESSING SERVICES'
             740 'DETECTIVE AND PROTECTIVE SERVICES'
             741 'BUSINESS SERVICES, N.E.C.'
             742 'AUTOMOTIVE RENTAL AND LEASING, WITHOUT DRIVERS'
             750 'AUTOMOBILE PARKING AND CARWASHES'
             751 'AUTOMOTIVE REPAIR AND RELATED SERVICES'
             752 'ELECTRICAL REPAIR SHOPS'
             760 'MISCELLANEOUS REPAIR SERVICES' 761 'PRIVATE HOUSEHOLDS'
             762 'HOTELS AND MOTELS'
             770 'LODGING PLACES, EXCEPT HOTELS AND MOTELS'
             771 'LAUNDRY, CLEANING, AND GARMENT SERVICES' 772 'BEAUTY SHOPS'
             780 'BARBER SHOPS' 781 'FUNERAL SERVICE AND CREMATORIES'
             782 'SHOE REPAIR SHOPS' 790 'DRESSMAKING SHOPS'
             791 'MISCELLANEOUS PERSONAL SERVICES'
             800 'THEATERS AND MOTION PICTURES' 801 'VIDEO TAPE RENTAL'
             802 'BOWLING CENTERS'
             810 'MISCELLANEOUS ENTERTAINMENT AND RECREATION SERVICES'
             812 'OFFICES AND CLINICS OF PHYSICIANS'
             820 'OFFICES AND CLINICS OF DENTISTS'
             821 'OFFICES AND CLINICS OF CHIROPRACTORS'
             822 'OFFICES AND CLINICS OF OPTOMETRISTS'
             830 'OFFICES AND CLINICS OF HEALTH PRACTITIONERS, N.E.C.'
             831 'HOSPITALS' 832 'NURSING AND PERSONAL CARE FACILITIES'
             840 'HEALTH SERVICES, N.E.C.' 841 'LEGAL SERVICES'
             842 'ELEMENTARY AND SECONDARY SCHOOLS'
             850 'COLLEGES AND UNIVERSITIES' 851 'VOCATIONAL SCHOOLS'
             852 'LIBRARIES' 860 'EDUCATIONAL SERVICES, N.E.C.'
             861 'JOB TRAINING AND VOCATIONAL REHABILITATION SERVICES'
             862 'CHILD DAY CARE SERVICES' 863 'FAMILY CHILD CARE HOMES'
             870 'RESIDENTIAL CARE FACILITIES, WITHOUT NURSING'
             871 'SOCIAL SERVICES, N.E.C.'
             872 'MUSEUMS, ART GALLERIES, AND ZOOS' 873 'LABOR UNIONS'
             880 'RELIGIOUS ORGANIZATIONS'
             881 'MEMBERSHIP ORGANIZATIONS, N.E.C.'
             882 'ENGINEERING, ARCHITECTURAL, AND SURVEYING SERVICES'
             890 'ACCOUNTING, AUDITING, AND BOOKKEEPING SERVICES'
             891 'RESEARCH, DEVELOPMENT, AND TESTING SERVICES'
             892 'MANAGEMENT AND PUBLIC RELATIONS SERVICES'
             893 'MISCELLANEOUS PROFESSIONAL AND RELATED SERVICES'
             900 'EXECUTIVE AND LEGISLATIVE OFFICES'
             901 'GENERAL GOVERNMENT, N.E.C.'
             910 'JUSTICE, PUBLIC ORDER, AND SAFETY'
             921 'PUBLIC FINANCE, TAXATION, AND MONETARY POLICY'
             922 'ADMINISTRATION OF HUMAN RESOURCES PROGRAMS'
           930 'ADMINISTRATION OF ENVIRONMENTAL QUALITY AND HOUSING PROGRAMS'
             931 'ADMINISTRATION OF ECONOMIC PROGRAMS'
             932 'NATIONAL SECURITY AND INTERNATIONAL AFFAIRS' 940 'ARMY'
             941 'AIR FORCE' 942 'NAVY' 950 'MARINES' 951 'COAST GUARD'
             952 'ARMED RESERVES, BRANCH NOT SPECIFIED'
             960 'MILITARY RESERVES OR NATIONAL GUARD' /
   B1PTEDUS  9 'INAPP' /
   B1PTEARS  9 'INAPP' /
   B1PTSEIS  999 'INAPP' /
   B1PMEDUS  9 'INAPP' /
   B1PMEARS  9 'INAPP' /
   B1PMSEIS  999 'INAPP' /
   B1PFEDUS  9 'INAPP' /
   B1PFEARS  9 'INAPP' /
   B1PFSEIS  999 'INAPP' /
   B1PSOCMJ  1 'EXECUTIVE, ADMINISTRATIVE, AND MANAGERIAL'
             2 'PROFESSIONAL SPECIALTY' 3 'TECHNICIAN AND RELATED SUPPORT'
             4 'SALES OCCUPATION'
             5 'ADMINISTRATIVE SUPPORT INCLUDING CLERICAL'
             6 'SERVICE OCCUPATION' 7 'FARMING, FORESTRY, AND FISHING'
             8 'PRECISION PRODUCTION, CRAFTS, AND REPAIR'
             9 'OPERATOR, LABORER, AND MILITARY' 99 'INAPP' /
   B1PSINMJ  1 'AGRICULTURE, FORESTRY, FISHING, AND MINING' 2 'CONSTRUCTION'
             3 'MANUFACTURING'
             4 'TRANSPORTATION, COMMUNICATIONS, AND PUBLIC UTILITY'
             5 'WHOLESALE TRADE' 6 'RETAIL TRADE'
             7 'FINANCE, INSURANCE, AND REAL ESTATE'
             8 'BUSINESS AND REPAIR SERVICES' 9 'PERSONAL SERVICES'
             10 'ENTERTAINMENT AND RECREATIONAL SERVICES'
             11 'PROFESSIONAL AND RELATED SERVICES'
             12 'PUBLIC ADMINISTRATION' 99 'INAPP OR NOT IN LABOR FORCE' /
   B1PC1     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PC2     0 'NONE' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PC3     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PC4     0 'NONE' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCHA1   997 'DON''T KNOW' 998 'REFUSED' 999 'INAPP' /
   B1PCHX1   1 'MALE' 2 'FEMALE' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHR1   1 'HUSBANDWIFE SPOUSE'
             2 'LOVER/PARTNER PARTNER''S FATHERMOTHERPAR'
             3 'BIOLOGICAL CHILD' 4 'ADOPTED CHILD' 5 'STEP-CHILD'
             6 'FOSTER CHILD' 7 'CHILD OF LOVER/PARTNER'
             8 'OTHER CHILD (SPECIFY)'
             9 'SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW'
             10 'FATHERMOTHERPARENT' 11 'STEP-FATHERMOTHERPARENT'
             12 'FATHERMOTHERPARENT-IN-LAW OR' 13 'GRANDFATHERMOTHERPARENT'
             14 'BROTHERSISTERSIBLING'
             15 'STEP-BROTHERSTEP-SISTERSTEP-SIBLING'
             16 'HALF-BROTHERHALF-SISTERHALF-SIBLING'
             17 'BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW'
             18 'GRANDSONDAUGHTERCHILD' 19 'OTHER RELATIVE' 20 'ROOMMATE'
             21 'FRIEND' 22 'OTHER NON-RELATIVE' 23 'SAME-SEX LOVER/PARTNER'
             97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCMB1   1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCYB1   1900 '1900-2004' 2004 'DON''T KNOW' 9997 'REFUSED' 9998 'INAPP'
             /
   B1PHHA1   0 '0 TO 120 YEARS OLD' 120 'DON''T KNOW' 997 'REFUSED'
             998 'INAPP' /
   B1PCHC1   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHH1   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDD1   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDT1   101 'ASPERGERS SYNDROME' 102 'AUTISM' 103 'CEREBRAL PALSY (CP)'
             104 'COGNITIVE DISABILITY' 105 'DEVELOPMENTAL DISABILITY (DD)'
             106 'DOWN SYNDROME' 107 'FETAL ALCOHOL SYNDROME'
             108 'FRAGILE X SYNDROME' 109 'HYDROCEPHALUS'
             110 'INTELLECTUAL DISABILITY' 111 'INTELLECTUAL IMPAIRMENT'
             112 'MENTAL HANDICAP' 113 'MENTAL RETARDATION (MR)'
             114 'MENTAL DISABILITY' 115 'MENTAL IMPAIRMENT'
             116 'MICROCEPHALY' 117 'MUSCULAR DYSTROPHY'
             118 'PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)'
             119 'PRADER WILLI SYNDROME' 120 'RETARDATION' 121 'SPINA BIFIDA'
             178 'RETTS DISORDER' 222 'ATTENTION DEFICIT DISORDER (ADD)'
             223 'ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)'
             224 'HANDICAPPED' 225 'HYPERACTIVITY'
             226 'LEARNING DISABILITY PROBLEMS (LD)' 227 'MENTAL PROBLEMS'
             228 'SLOW IN SCHOOL SLOW LEARNER SLOW'
             229 'SPECIAL EDUCATION SPECIAL ED' 230 'SPEECH PROBLEMS'
             331 'EPILEPSY' 332 'SEIZURE DISORDER' 433 'BRAIN DAMAGE'
             434 'BRAIN INJURY BRAIN INJURED' 435 'CLOSED HEAD INJURY'
             436 'HEAD INJURY' 437 'TRAUMATIC BRAIN INJURY BRAIN INJURY'
             538 'BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)'
             539 'CYCLOTHYMIA' 540 'DELUSIONAL DISORDER'
             542 'SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER'
             543 'PSYCHOTIC DISORDER PSYCHOSIS' 586 'CLINICAL DEPRESSION'
             587 'MAJOR DEPRESSION' 588 'SEVERE DEPRESSION' 644 'AGORAPHOBIA'
             645 'ALCOHOLISM' 646 'ALZHEIMERS'
             647 'ANOREXIA or ANOREXIA NERVOSA' 648 'BULIMIA'
             649 'EATING DISORDER' 650 'ANXIETY or ANXIETY DISORDER'
             651 'BORDERLINE PERSONALITY DISORDER' 652 'DEMENTIA'
             653 'DRUG ABUSE' 654 'GAMBLING PROBLEM or PATHOLOGICAL GAMBLING'
             655 'OBSESSIVE COMPULSIVE DISORDER (OCD)'
             656 'PANIC ATTACKS DISORDER' 657 'PERSONALITY DISORDER'
             658 'PHOBIA' 659 'POSTTRAUMATIC STRESS DISORDERS (PTSD)'
             660 'SLEEP DISORDER (INSOMNIA)' 661 'SOMATIZATION'
             662 'DEPRESSION (MILD DEPRESSION)' 663 'DYSTHYMIA'
             762 'BIOCHEMICAL PROBLEM' 763 'BRAIN DISORDER' 764 'BREAKDOWN'
             765 'CHEMICAL IMBALANCE' 766 'EMOTIONAL PROBLEM DISORDER'
             767 'MANIC' 768 'MENTAL BREAKDOWN' 769 'MOOD PROBLEM DISORDER'
             770 'MENTALLY ILL' 771 'MENTAL HEALTH PROBLEMS'
             772 'NERVES NERVOUS CONDITION' 773 'PARANOID'
             774 'PSYCHOLOGICAL PROBLEMS' 779 'SUICIDAL SUICIDE ATTEMPT'
             875 'DEPRESSION' 976 'OTHER UNFAMILIAR CONDITION'
             977 'OTHER FAMILIAR CONDITION' 997 'DON''T KNOW' 998 'REFUSED'
             999 'INAPP' /
   B1PCDP1   1 'SINGLE EPISODE' 2 'LONG-TERM PROBLEM' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PCDA1   0 '0 TO 95 YEARS OLD' 95 'DON''T KNOW' 97 'REFUSED' 98 'INAPP' /
   B1PCDX1   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCXT1   1 'MAJOR DEPRESSION' 2 'SCHIZOPHRENIA'
             3 'BIPOLAR DISORDER (MANIC DEPRESSION)'
             4 'OTHER (SPECIFY FOLLOWED BY //)' 7 'DON''T KNOW' 8 'REFUSED'
             9 'INAPP' /
   B1PCDO1   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHA2   997 'DON''T KNOW' 998 'REFUSED' 999 'INAPP' /
   B1PCHX2   1 'MALE' 2 'FEMALE' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHR2   1 'HUSBANDWIFE SPOUSE'
             2 'LOVER/PARTNER PARTNER''S FATHERMOTHERPAR'
             3 'BIOLOGICAL CHILD' 4 'ADOPTED CHILD' 5 'STEP-CHILD'
             6 'FOSTER CHILD' 7 'CHILD OF LOVER/PARTNER'
             8 'OTHER CHILD (SPECIFY)'
             9 'SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW'
             10 'FATHERMOTHERPARENT' 11 'STEP-FATHERMOTHERPARENT'
             12 'FATHERMOTHERPARENT-IN-LAW OR' 13 'GRANDFATHERMOTHERPARENT'
             14 'BROTHERSISTERSIBLING'
             15 'STEP-BROTHERSTEP-SISTERSTEP-SIBLING'
             16 'HALF-BROTHERHALF-SISTERHALF-SIBLING'
             17 'BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW'
             18 'GRANDSONDAUGHTERCHILD' 19 'OTHER RELATIVE' 20 'ROOMMATE'
             21 'FRIEND' 22 'OTHER NON-RELATIVE' 23 'SAME-SEX LOVER/PARTNER'
             97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCMB2   1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCYB2   1900 '1900-2004' 2004 'DON''T KNOW' 9997 'REFUSED' 9998 'INAPP'
             /
   B1PHHA2   0 '0 TO 120 YEARS OLD' 120 'DON''T KNOW' 997 'REFUSED'
             998 'INAPP' /
   B1PCHC2   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHH2   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDD2   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDT2   101 'ASPERGERS SYNDROME' 102 'AUTISM' 103 'CEREBRAL PALSY (CP)'
             104 'COGNITIVE DISABILITY' 105 'DEVELOPMENTAL DISABILITY (DD)'
             106 'DOWN SYNDROME' 107 'FETAL ALCOHOL SYNDROME'
             108 'FRAGILE X SYNDROME' 109 'HYDROCEPHALUS'
             110 'INTELLECTUAL DISABILITY' 111 'INTELLECTUAL IMPAIRMENT'
             112 'MENTAL HANDICAP' 113 'MENTAL RETARDATION (MR)'
             114 'MENTAL DISABILITY' 115 'MENTAL IMPAIRMENT'
             116 'MICROCEPHALY' 117 'MUSCULAR DYSTROPHY'
             118 'PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)'
             119 'PRADER WILLI SYNDROME' 120 'RETARDATION' 121 'SPINA BIFIDA'
             178 'RETTS DISORDER' 222 'ATTENTION DEFICIT DISORDER (ADD)'
             223 'ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)'
             224 'HANDICAPPED' 225 'HYPERACTIVITY'
             226 'LEARNING DISABILITY PROBLEMS (LD)' 227 'MENTAL PROBLEMS'
             228 'SLOW IN SCHOOL SLOW LEARNER SLOW'
             229 'SPECIAL EDUCATION SPECIAL ED' 230 'SPEECH PROBLEMS'
             331 'EPILEPSY' 332 'SEIZURE DISORDER' 433 'BRAIN DAMAGE'
             434 'BRAIN INJURY BRAIN INJURED' 435 'CLOSED HEAD INJURY'
             436 'HEAD INJURY' 437 'TRAUMATIC BRAIN INJURY BRAIN INJURY'
             538 'BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)'
             539 'CYCLOTHYMIA' 540 'DELUSIONAL DISORDER'
             542 'SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER'
             543 'PSYCHOTIC DISORDER PSYCHOSIS' 586 'CLINICAL DEPRESSION'
             587 'MAJOR DEPRESSION' 588 'SEVERE DEPRESSION' 644 'AGORAPHOBIA'
             645 'ALCOHOLISM' 646 'ALZHEIMERS'
             647 'ANOREXIA or ANOREXIA NERVOSA' 648 'BULIMIA'
             649 'EATING DISORDER' 650 'ANXIETY or ANXIETY DISORDER'
             651 'BORDERLINE PERSONALITY DISORDER' 652 'DEMENTIA'
             653 'DRUG ABUSE' 654 'GAMBLING PROBLEM or PATHOLOGICAL GAMBLING'
             655 'OBSESSIVE COMPULSIVE DISORDER (OCD)'
             656 'PANIC ATTACKS DISORDER' 657 'PERSONALITY DISORDER'
             658 'PHOBIA' 659 'POSTTRAUMATIC STRESS DISORDERS (PTSD)'
             660 'SLEEP DISORDER (INSOMNIA)' 661 'SOMATIZATION'
             662 'DEPRESSION (MILD DEPRESSION)' 663 'DYSTHYMIA'
             762 'BIOCHEMICAL PROBLEM' 763 'BRAIN DISORDER' 764 'BREAKDOWN'
             765 'CHEMICAL IMBALANCE' 766 'EMOTIONAL PROBLEM DISORDER'
             767 'MANIC' 768 'MENTAL BREAKDOWN' 769 'MOOD PROBLEM DISORDER'
             770 'MENTALLY ILL' 771 'MENTAL HEALTH PROBLEMS'
             772 'NERVES NERVOUS CONDITION' 773 'PARANOID'
             774 'PSYCHOLOGICAL PROBLEMS' 779 'SUICIDAL SUICIDE ATTEMPT'
             875 'DEPRESSION' 976 'OTHER UNFAMILIAR CONDITION'
             977 'OTHER FAMILIAR CONDITION' 997 'DON''T KNOW' 998 'REFUSED'
             999 'INAPP' /
   B1PCDP2   1 'SINGLE EPISODE' 2 'LONG-TERM PROBLEM' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PCDA2   0 '0 TO 95 YEARS OLD' 95 'DON''T KNOW' 97 'REFUSED' 98 'INAPP' /
   B1PCDX2   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCXT2   1 'MAJOR DEPRESSION' 2 'SCHIZOPHRENIA'
             3 'BIPOLAR DISORDER (MANIC DEPRESSION)'
             4 'OTHER (SPECIFY FOLLOWED BY //)' 7 'DON''T KNOW' 8 'REFUSED'
             9 'INAPP' /
   B1PCDO2   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHA3   997 'DON''T KNOW' 998 'REFUSED' 999 'INAPP' /
   B1PCHX3   1 'MALE' 2 'FEMALE' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHR3   1 'HUSBANDWIFE SPOUSE'
             2 'LOVER/PARTNER PARTNER''S FATHERMOTHERPAR'
             3 'BIOLOGICAL CHILD' 4 'ADOPTED CHILD' 5 'STEP-CHILD'
             6 'FOSTER CHILD' 7 'CHILD OF LOVER/PARTNER'
             8 'OTHER CHILD (SPECIFY)'
             9 'SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW'
             10 'FATHERMOTHERPARENT' 11 'STEP-FATHERMOTHERPARENT'
             12 'FATHERMOTHERPARENT-IN-LAW OR' 13 'GRANDFATHERMOTHERPARENT'
             14 'BROTHERSISTERSIBLING'
             15 'STEP-BROTHERSTEP-SISTERSTEP-SIBLING'
             16 'HALF-BROTHERHALF-SISTERHALF-SIBLING'
             17 'BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW'
             18 'GRANDSONDAUGHTERCHILD' 19 'OTHER RELATIVE' 20 'ROOMMATE'
             21 'FRIEND' 22 'OTHER NON-RELATIVE' 23 'SAME-SEX LOVER/PARTNER'
             97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCMB3   1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCYB3   1900 '1900-2004' 2004 'DON''T KNOW' 9997 'REFUSED' 9998 'INAPP'
             /
   B1PHHA3   0 '0 TO 120 YEARS OLD' 120 'DON''T KNOW' 997 'REFUSED'
             998 'INAPP' /
   B1PCHC3   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHH3   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDD3   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDT3   101 'ASPERGERS SYNDROME' 102 'AUTISM' 103 'CEREBRAL PALSY (CP)'
             104 'COGNITIVE DISABILITY' 105 'DEVELOPMENTAL DISABILITY (DD)'
             106 'DOWN SYNDROME' 107 'FETAL ALCOHOL SYNDROME'
             108 'FRAGILE X SYNDROME' 109 'HYDROCEPHALUS'
             110 'INTELLECTUAL DISABILITY' 111 'INTELLECTUAL IMPAIRMENT'
             112 'MENTAL HANDICAP' 113 'MENTAL RETARDATION (MR)'
             114 'MENTAL DISABILITY' 115 'MENTAL IMPAIRMENT'
             116 'MICROCEPHALY' 117 'MUSCULAR DYSTROPHY'
             118 'PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)'
             119 'PRADER WILLI SYNDROME' 120 'RETARDATION' 121 'SPINA BIFIDA'
             178 'RETTS DISORDER' 222 'ATTENTION DEFICIT DISORDER (ADD)'
             223 'ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)'
             224 'HANDICAPPED' 225 'HYPERACTIVITY'
             226 'LEARNING DISABILITY PROBLEMS (LD)' 227 'MENTAL PROBLEMS'
             228 'SLOW IN SCHOOL SLOW LEARNER SLOW'
             229 'SPECIAL EDUCATION SPECIAL ED' 230 'SPEECH PROBLEMS'
             331 'EPILEPSY' 332 'SEIZURE DISORDER' 433 'BRAIN DAMAGE'
             434 'BRAIN INJURY BRAIN INJURED' 435 'CLOSED HEAD INJURY'
             436 'HEAD INJURY' 437 'TRAUMATIC BRAIN INJURY BRAIN INJURY'
             538 'BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)'
             539 'CYCLOTHYMIA' 540 'DELUSIONAL DISORDER'
             542 'SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER'
             543 'PSYCHOTIC DISORDER PSYCHOSIS' 586 'CLINICAL DEPRESSION'
             587 'MAJOR DEPRESSION' 588 'SEVERE DEPRESSION' 644 'AGORAPHOBIA'
             645 'ALCOHOLISM' 646 'ALZHEIMERS'
             647 'ANOREXIA or ANOREXIA NERVOSA' 648 'BULIMIA'
             649 'EATING DISORDER' 650 'ANXIETY or ANXIETY DISORDER'
             651 'BORDERLINE PERSONALITY DISORDER' 652 'DEMENTIA'
             653 'DRUG ABUSE' 654 'GAMBLING PROBLEM or PATHOLOGICAL GAMBLING'
             655 'OBSESSIVE COMPULSIVE DISORDER (OCD)'
             656 'PANIC ATTACKS DISORDER' 657 'PERSONALITY DISORDER'
             658 'PHOBIA' 659 'POSTTRAUMATIC STRESS DISORDERS (PTSD)'
             660 'SLEEP DISORDER (INSOMNIA)' 661 'SOMATIZATION'
             662 'DEPRESSION (MILD DEPRESSION)' 663 'DYSTHYMIA'
             762 'BIOCHEMICAL PROBLEM' 763 'BRAIN DISORDER' 764 'BREAKDOWN'
             765 'CHEMICAL IMBALANCE' 766 'EMOTIONAL PROBLEM DISORDER'
             767 'MANIC' 768 'MENTAL BREAKDOWN' 769 'MOOD PROBLEM DISORDER'
             770 'MENTALLY ILL' 771 'MENTAL HEALTH PROBLEMS'
             772 'NERVES NERVOUS CONDITION' 773 'PARANOID'
             774 'PSYCHOLOGICAL PROBLEMS' 779 'SUICIDAL SUICIDE ATTEMPT'
             875 'DEPRESSION' 976 'OTHER UNFAMILIAR CONDITION'
             977 'OTHER FAMILIAR CONDITION' 997 'DON''T KNOW' 998 'REFUSED'
             999 'INAPP' /
   B1PCDP3   1 'SINGLE EPISODE' 2 'LONG-TERM PROBLEM' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PCDA3   0 '0 TO 95 YEARS OLD' 95 'DON''T KNOW' 97 'REFUSED' 98 'INAPP' /
   B1PCDX3   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCXT3   1 'MAJOR DEPRESSION' 2 'SCHIZOPHRENIA'
             3 'BIPOLAR DISORDER (MANIC DEPRESSION)'
             4 'OTHER (SPECIFY FOLLOWED BY //)' 7 'DON''T KNOW' 8 'REFUSED'
             9 'INAPP' /
   B1PCDO3   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHA4   997 'DON''T KNOW' 998 'REFUSED' 999 'INAPP' /
   B1PCHX4   1 'MALE' 2 'FEMALE' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHR4   1 'HUSBANDWIFE SPOUSE'
             2 'LOVER/PARTNER PARTNER''S FATHERMOTHERPAR'
             3 'BIOLOGICAL CHILD' 4 'ADOPTED CHILD' 5 'STEP-CHILD'
             6 'FOSTER CHILD' 7 'CHILD OF LOVER/PARTNER'
             8 'OTHER CHILD (SPECIFY)'
             9 'SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW'
             10 'FATHERMOTHERPARENT' 11 'STEP-FATHERMOTHERPARENT'
             12 'FATHERMOTHERPARENT-IN-LAW OR' 13 'GRANDFATHERMOTHERPARENT'
             14 'BROTHERSISTERSIBLING'
             15 'STEP-BROTHERSTEP-SISTERSTEP-SIBLING'
             16 'HALF-BROTHERHALF-SISTERHALF-SIBLING'
             17 'BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW'
             18 'GRANDSONDAUGHTERCHILD' 19 'OTHER RELATIVE' 20 'ROOMMATE'
             21 'FRIEND' 22 'OTHER NON-RELATIVE' 23 'SAME-SEX LOVER/PARTNER'
             97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCMB4   1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCYB4   1900 '1900-2004' 2004 'DON''T KNOW' 9997 'REFUSED' 9998 'INAPP'
             /
   B1PHHA4   0 '0 TO 120 YEARS OLD' 120 'DON''T KNOW' 997 'REFUSED'
             998 'INAPP' /
   B1PCHC4   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHH4   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDD4   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDT4   101 'ASPERGERS SYNDROME' 102 'AUTISM' 103 'CEREBRAL PALSY (CP)'
             104 'COGNITIVE DISABILITY' 105 'DEVELOPMENTAL DISABILITY (DD)'
             106 'DOWN SYNDROME' 107 'FETAL ALCOHOL SYNDROME'
             108 'FRAGILE X SYNDROME' 109 'HYDROCEPHALUS'
             110 'INTELLECTUAL DISABILITY' 111 'INTELLECTUAL IMPAIRMENT'
             112 'MENTAL HANDICAP' 113 'MENTAL RETARDATION (MR)'
             114 'MENTAL DISABILITY' 115 'MENTAL IMPAIRMENT'
             116 'MICROCEPHALY' 117 'MUSCULAR DYSTROPHY'
             118 'PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)'
             119 'PRADER WILLI SYNDROME' 120 'RETARDATION' 121 'SPINA BIFIDA'
             178 'RETTS DISORDER' 222 'ATTENTION DEFICIT DISORDER (ADD)'
             223 'ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)'
             224 'HANDICAPPED' 225 'HYPERACTIVITY'
             226 'LEARNING DISABILITY PROBLEMS (LD)' 227 'MENTAL PROBLEMS'
             228 'SLOW IN SCHOOL SLOW LEARNER SLOW'
             229 'SPECIAL EDUCATION SPECIAL ED' 230 'SPEECH PROBLEMS'
             331 'EPILEPSY' 332 'SEIZURE DISORDER' 433 'BRAIN DAMAGE'
             434 'BRAIN INJURY BRAIN INJURED' 435 'CLOSED HEAD INJURY'
             436 'HEAD INJURY' 437 'TRAUMATIC BRAIN INJURY BRAIN INJURY'
             538 'BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)'
             539 'CYCLOTHYMIA' 540 'DELUSIONAL DISORDER'
             542 'SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER'
             543 'PSYCHOTIC DISORDER PSYCHOSIS' 586 'CLINICAL DEPRESSION'
             587 'MAJOR DEPRESSION' 588 'SEVERE DEPRESSION' 644 'AGORAPHOBIA'
             645 'ALCOHOLISM' 646 'ALZHEIMERS'
             647 'ANOREXIA or ANOREXIA NERVOSA' 648 'BULIMIA'
             649 'EATING DISORDER' 650 'ANXIETY or ANXIETY DISORDER'
             651 'BORDERLINE PERSONALITY DISORDER' 652 'DEMENTIA'
             653 'DRUG ABUSE' 654 'GAMBLING PROBLEM or PATHOLOGICAL GAMBLING'
             655 'OBSESSIVE COMPULSIVE DISORDER (OCD)'
             656 'PANIC ATTACKS DISORDER' 657 'PERSONALITY DISORDER'
             658 'PHOBIA' 659 'POSTTRAUMATIC STRESS DISORDERS (PTSD)'
             660 'SLEEP DISORDER (INSOMNIA)' 661 'SOMATIZATION'
             662 'DEPRESSION (MILD DEPRESSION)' 663 'DYSTHYMIA'
             762 'BIOCHEMICAL PROBLEM' 763 'BRAIN DISORDER' 764 'BREAKDOWN'
             765 'CHEMICAL IMBALANCE' 766 'EMOTIONAL PROBLEM DISORDER'
             767 'MANIC' 768 'MENTAL BREAKDOWN' 769 'MOOD PROBLEM DISORDER'
             770 'MENTALLY ILL' 771 'MENTAL HEALTH PROBLEMS'
             772 'NERVES NERVOUS CONDITION' 773 'PARANOID'
             774 'PSYCHOLOGICAL PROBLEMS' 779 'SUICIDAL SUICIDE ATTEMPT'
             875 'DEPRESSION' 976 'OTHER UNFAMILIAR CONDITION'
             977 'OTHER FAMILIAR CONDITION' 997 'DON''T KNOW' 998 'REFUSED'
             999 'INAPP' /
   B1PCDP4   1 'SINGLE EPISODE' 2 'LONG-TERM PROBLEM' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PCDA4   0 '0 TO 95 YEARS OLD' 95 'DON''T KNOW' 97 'REFUSED' 98 'INAPP' /
   B1PCDX4   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCXT4   1 'MAJOR DEPRESSION' 2 'SCHIZOPHRENIA'
             3 'BIPOLAR DISORDER (MANIC DEPRESSION)'
             4 'OTHER (SPECIFY FOLLOWED BY //)' 7 'DON''T KNOW' 8 'REFUSED'
             9 'INAPP' /
   B1PCDO4   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHA5   997 'DON''T KNOW' 998 'REFUSED' 999 'INAPP' /
   B1PCHX5   1 'MALE' 2 'FEMALE' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHR5   1 'HUSBANDWIFE SPOUSE'
             2 'LOVER/PARTNER PARTNER''S FATHERMOTHERPAR'
             3 'BIOLOGICAL CHILD' 4 'ADOPTED CHILD' 5 'STEP-CHILD'
             6 'FOSTER CHILD' 7 'CHILD OF LOVER/PARTNER'
             8 'OTHER CHILD (SPECIFY)'
             9 'SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW'
             10 'FATHERMOTHERPARENT' 11 'STEP-FATHERMOTHERPARENT'
             12 'FATHERMOTHERPARENT-IN-LAW OR' 13 'GRANDFATHERMOTHERPARENT'
             14 'BROTHERSISTERSIBLING'
             15 'STEP-BROTHERSTEP-SISTERSTEP-SIBLING'
             16 'HALF-BROTHERHALF-SISTERHALF-SIBLING'
             17 'BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW'
             18 'GRANDSONDAUGHTERCHILD' 19 'OTHER RELATIVE' 20 'ROOMMATE'
             21 'FRIEND' 22 'OTHER NON-RELATIVE' 23 'SAME-SEX LOVER/PARTNER'
             97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCMB5   1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCYB5   1900 '1900-2004' 2004 'DON''T KNOW' 9997 'REFUSED' 9998 'INAPP'
             /
   B1PHHA5   0 '0 TO 120 YEARS OLD' 120 'DON''T KNOW' 997 'REFUSED'
             998 'INAPP' /
   B1PCHC5   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHH5   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDD5   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDT5   101 'ASPERGERS SYNDROME' 102 'AUTISM' 103 'CEREBRAL PALSY (CP)'
             104 'COGNITIVE DISABILITY' 105 'DEVELOPMENTAL DISABILITY (DD)'
             106 'DOWN SYNDROME' 107 'FETAL ALCOHOL SYNDROME'
             108 'FRAGILE X SYNDROME' 109 'HYDROCEPHALUS'
             110 'INTELLECTUAL DISABILITY' 111 'INTELLECTUAL IMPAIRMENT'
             112 'MENTAL HANDICAP' 113 'MENTAL RETARDATION (MR)'
             114 'MENTAL DISABILITY' 115 'MENTAL IMPAIRMENT'
             116 'MICROCEPHALY' 117 'MUSCULAR DYSTROPHY'
             118 'PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)'
             119 'PRADER WILLI SYNDROME' 120 'RETARDATION' 121 'SPINA BIFIDA'
             178 'RETTS DISORDER' 222 'ATTENTION DEFICIT DISORDER (ADD)'
             223 'ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)'
             224 'HANDICAPPED' 225 'HYPERACTIVITY'
             226 'LEARNING DISABILITY PROBLEMS (LD)' 227 'MENTAL PROBLEMS'
             228 'SLOW IN SCHOOL SLOW LEARNER SLOW'
             229 'SPECIAL EDUCATION SPECIAL ED' 230 'SPEECH PROBLEMS'
             331 'EPILEPSY' 332 'SEIZURE DISORDER' 433 'BRAIN DAMAGE'
             434 'BRAIN INJURY BRAIN INJURED' 435 'CLOSED HEAD INJURY'
             436 'HEAD INJURY' 437 'TRAUMATIC BRAIN INJURY BRAIN INJURY'
             538 'BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)'
             539 'CYCLOTHYMIA' 540 'DELUSIONAL DISORDER'
             542 'SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER'
             543 'PSYCHOTIC DISORDER PSYCHOSIS' 586 'CLINICAL DEPRESSION'
             587 'MAJOR DEPRESSION' 588 'SEVERE DEPRESSION' 644 'AGORAPHOBIA'
             645 'ALCOHOLISM' 646 'ALZHEIMERS'
             647 'ANOREXIA or ANOREXIA NERVOSA' 648 'BULIMIA'
             649 'EATING DISORDER' 650 'ANXIETY or ANXIETY DISORDER'
             651 'BORDERLINE PERSONALITY DISORDER' 652 'DEMENTIA'
             653 'DRUG ABUSE' 654 'GAMBLING PROBLEM or PATHOLOGICAL GAMBLING'
             655 'OBSESSIVE COMPULSIVE DISORDER (OCD)'
             656 'PANIC ATTACKS DISORDER' 657 'PERSONALITY DISORDER'
             658 'PHOBIA' 659 'POSTTRAUMATIC STRESS DISORDERS (PTSD)'
             660 'SLEEP DISORDER (INSOMNIA)' 661 'SOMATIZATION'
             662 'DEPRESSION (MILD DEPRESSION)' 663 'DYSTHYMIA'
             762 'BIOCHEMICAL PROBLEM' 763 'BRAIN DISORDER' 764 'BREAKDOWN'
             765 'CHEMICAL IMBALANCE' 766 'EMOTIONAL PROBLEM DISORDER'
             767 'MANIC' 768 'MENTAL BREAKDOWN' 769 'MOOD PROBLEM DISORDER'
             770 'MENTALLY ILL' 771 'MENTAL HEALTH PROBLEMS'
             772 'NERVES NERVOUS CONDITION' 773 'PARANOID'
             774 'PSYCHOLOGICAL PROBLEMS' 779 'SUICIDAL SUICIDE ATTEMPT'
             875 'DEPRESSION' 976 'OTHER UNFAMILIAR CONDITION'
             977 'OTHER FAMILIAR CONDITION' 997 'DON''T KNOW' 998 'REFUSED'
             999 'INAPP' /
   B1PCDP5   1 'SINGLE EPISODE' 2 'LONG-TERM PROBLEM' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PCDA5   0 '0 TO 95 YEARS OLD' 95 'DON''T KNOW' 97 'REFUSED' 98 'INAPP' /
   B1PCDX5   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCXT5   1 'MAJOR DEPRESSION' 2 'SCHIZOPHRENIA'
             3 'BIPOLAR DISORDER (MANIC DEPRESSION)'
             4 'OTHER (SPECIFY FOLLOWED BY //)' 7 'DON''T KNOW' 8 'REFUSED'
             9 'INAPP' /
   B1PCDO5   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHA6   997 'DON''T KNOW' 998 'REFUSED' 999 'INAPP' /
   B1PCHX6   1 'MALE' 2 'FEMALE' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHR6   1 'HUSBANDWIFE SPOUSE'
             2 'LOVER/PARTNER PARTNER''S FATHERMOTHERPAR'
             3 'BIOLOGICAL CHILD' 4 'ADOPTED CHILD' 5 'STEP-CHILD'
             6 'FOSTER CHILD' 7 'CHILD OF LOVER/PARTNER'
             8 'OTHER CHILD (SPECIFY)'
             9 'SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW'
             10 'FATHERMOTHERPARENT' 11 'STEP-FATHERMOTHERPARENT'
             12 'FATHERMOTHERPARENT-IN-LAW OR' 13 'GRANDFATHERMOTHERPARENT'
             14 'BROTHERSISTERSIBLING'
             15 'STEP-BROTHERSTEP-SISTERSTEP-SIBLING'
             16 'HALF-BROTHERHALF-SISTERHALF-SIBLING'
             17 'BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW'
             18 'GRANDSONDAUGHTERCHILD' 19 'OTHER RELATIVE' 20 'ROOMMATE'
             21 'FRIEND' 22 'OTHER NON-RELATIVE' 23 'SAME-SEX LOVER/PARTNER'
             97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCMB6   1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCYB6   1900 '1900-2004' 2004 'DON''T KNOW' 9997 'REFUSED' 9998 'INAPP'
             /
   B1PHHA6   0 '0 TO 120 YEARS OLD' 120 'DON''T KNOW' 997 'REFUSED'
             998 'INAPP' /
   B1PCHC6   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHH6   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDD6   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDT6   101 'ASPERGERS SYNDROME' 102 'AUTISM' 103 'CEREBRAL PALSY (CP)'
             104 'COGNITIVE DISABILITY' 105 'DEVELOPMENTAL DISABILITY (DD)'
             106 'DOWN SYNDROME' 107 'FETAL ALCOHOL SYNDROME'
             108 'FRAGILE X SYNDROME' 109 'HYDROCEPHALUS'
             110 'INTELLECTUAL DISABILITY' 111 'INTELLECTUAL IMPAIRMENT'
             112 'MENTAL HANDICAP' 113 'MENTAL RETARDATION (MR)'
             114 'MENTAL DISABILITY' 115 'MENTAL IMPAIRMENT'
             116 'MICROCEPHALY' 117 'MUSCULAR DYSTROPHY'
             118 'PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)'
             119 'PRADER WILLI SYNDROME' 120 'RETARDATION' 121 'SPINA BIFIDA'
             178 'RETTS DISORDER' 222 'ATTENTION DEFICIT DISORDER (ADD)'
             223 'ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)'
             224 'HANDICAPPED' 225 'HYPERACTIVITY'
             226 'LEARNING DISABILITY PROBLEMS (LD)' 227 'MENTAL PROBLEMS'
             228 'SLOW IN SCHOOL SLOW LEARNER SLOW'
             229 'SPECIAL EDUCATION SPECIAL ED' 230 'SPEECH PROBLEMS'
             331 'EPILEPSY' 332 'SEIZURE DISORDER' 433 'BRAIN DAMAGE'
             434 'BRAIN INJURY BRAIN INJURED' 435 'CLOSED HEAD INJURY'
             436 'HEAD INJURY' 437 'TRAUMATIC BRAIN INJURY BRAIN INJURY'
             538 'BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)'
             539 'CYCLOTHYMIA' 540 'DELUSIONAL DISORDER'
             542 'SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER'
             543 'PSYCHOTIC DISORDER PSYCHOSIS' 586 'CLINICAL DEPRESSION'
             587 'MAJOR DEPRESSION' 588 'SEVERE DEPRESSION' 644 'AGORAPHOBIA'
             645 'ALCOHOLISM' 646 'ALZHEIMERS'
             647 'ANOREXIA or ANOREXIA NERVOSA' 648 'BULIMIA'
             649 'EATING DISORDER' 650 'ANXIETY or ANXIETY DISORDER'
             651 'BORDERLINE PERSONALITY DISORDER' 652 'DEMENTIA'
             653 'DRUG ABUSE' 654 'GAMBLING PROBLEM or PATHOLOGICAL GAMBLING'
             655 'OBSESSIVE COMPULSIVE DISORDER (OCD)'
             656 'PANIC ATTACKS DISORDER' 657 'PERSONALITY DISORDER'
             658 'PHOBIA' 659 'POSTTRAUMATIC STRESS DISORDERS (PTSD)'
             660 'SLEEP DISORDER (INSOMNIA)' 661 'SOMATIZATION'
             662 'DEPRESSION (MILD DEPRESSION)' 663 'DYSTHYMIA'
             762 'BIOCHEMICAL PROBLEM' 763 'BRAIN DISORDER' 764 'BREAKDOWN'
             765 'CHEMICAL IMBALANCE' 766 'EMOTIONAL PROBLEM DISORDER'
             767 'MANIC' 768 'MENTAL BREAKDOWN' 769 'MOOD PROBLEM DISORDER'
             770 'MENTALLY ILL' 771 'MENTAL HEALTH PROBLEMS'
             772 'NERVES NERVOUS CONDITION' 773 'PARANOID'
             774 'PSYCHOLOGICAL PROBLEMS' 779 'SUICIDAL SUICIDE ATTEMPT'
             875 'DEPRESSION' 976 'OTHER UNFAMILIAR CONDITION'
             977 'OTHER FAMILIAR CONDITION' 997 'DON''T KNOW' 998 'REFUSED'
             999 'INAPP' /
   B1PCDP6   1 'SINGLE EPISODE' 2 'LONG-TERM PROBLEM' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PCDA6   0 '0 TO 95 YEARS OLD' 95 'DON''T KNOW' 97 'REFUSED' 98 'INAPP' /
   B1PCDX6   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCXT6   1 'MAJOR DEPRESSION' 2 'SCHIZOPHRENIA'
             3 'BIPOLAR DISORDER (MANIC DEPRESSION)'
             4 'OTHER (SPECIFY FOLLOWED BY //)' 7 'DON''T KNOW' 8 'REFUSED'
             9 'INAPP' /
   B1PCDO6   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHA7   997 'DON''T KNOW' 998 'REFUSED' 999 'INAPP' /
   B1PCHX7   1 'MALE' 2 'FEMALE' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHR7   1 'HUSBANDWIFE SPOUSE'
             2 'LOVER/PARTNER PARTNER''S FATHERMOTHERPAR'
             3 'BIOLOGICAL CHILD' 4 'ADOPTED CHILD' 5 'STEP-CHILD'
             6 'FOSTER CHILD' 7 'CHILD OF LOVER/PARTNER'
             8 'OTHER CHILD (SPECIFY)'
             9 'SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW'
             10 'FATHERMOTHERPARENT' 11 'STEP-FATHERMOTHERPARENT'
             12 'FATHERMOTHERPARENT-IN-LAW OR' 13 'GRANDFATHERMOTHERPARENT'
             14 'BROTHERSISTERSIBLING'
             15 'STEP-BROTHERSTEP-SISTERSTEP-SIBLING'
             16 'HALF-BROTHERHALF-SISTERHALF-SIBLING'
             17 'BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW'
             18 'GRANDSONDAUGHTERCHILD' 19 'OTHER RELATIVE' 20 'ROOMMATE'
             21 'FRIEND' 22 'OTHER NON-RELATIVE' 23 'SAME-SEX LOVER/PARTNER'
             97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCMB7   1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCYB7   1900 '1900-2004' 2004 'DON''T KNOW' 9997 'REFUSED' 9998 'INAPP'
             /
   B1PHHA7   0 '0 TO 120 YEARS OLD' 120 'DON''T KNOW' 997 'REFUSED'
             998 'INAPP' /
   B1PCHC7   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHH7   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDD7   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDT7   101 'ASPERGERS SYNDROME' 102 'AUTISM' 103 'CEREBRAL PALSY (CP)'
             104 'COGNITIVE DISABILITY' 105 'DEVELOPMENTAL DISABILITY (DD)'
             106 'DOWN SYNDROME' 107 'FETAL ALCOHOL SYNDROME'
             108 'FRAGILE X SYNDROME' 109 'HYDROCEPHALUS'
             110 'INTELLECTUAL DISABILITY' 111 'INTELLECTUAL IMPAIRMENT'
             112 'MENTAL HANDICAP' 113 'MENTAL RETARDATION (MR)'
             114 'MENTAL DISABILITY' 115 'MENTAL IMPAIRMENT'
             116 'MICROCEPHALY' 117 'MUSCULAR DYSTROPHY'
             118 'PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)'
             119 'PRADER WILLI SYNDROME' 120 'RETARDATION' 121 'SPINA BIFIDA'
             178 'RETTS DISORDER' 222 'ATTENTION DEFICIT DISORDER (ADD)'
             223 'ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)'
             224 'HANDICAPPED' 225 'HYPERACTIVITY'
             226 'LEARNING DISABILITY PROBLEMS (LD)' 227 'MENTAL PROBLEMS'
             228 'SLOW IN SCHOOL SLOW LEARNER SLOW'
             229 'SPECIAL EDUCATION SPECIAL ED' 230 'SPEECH PROBLEMS'
             331 'EPILEPSY' 332 'SEIZURE DISORDER' 433 'BRAIN DAMAGE'
             434 'BRAIN INJURY BRAIN INJURED' 435 'CLOSED HEAD INJURY'
             436 'HEAD INJURY' 437 'TRAUMATIC BRAIN INJURY BRAIN INJURY'
             538 'BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)'
             539 'CYCLOTHYMIA' 540 'DELUSIONAL DISORDER'
             542 'SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER'
             543 'PSYCHOTIC DISORDER PSYCHOSIS' 586 'CLINICAL DEPRESSION'
             587 'MAJOR DEPRESSION' 588 'SEVERE DEPRESSION' 644 'AGORAPHOBIA'
             645 'ALCOHOLISM' 646 'ALZHEIMERS'
             647 'ANOREXIA or ANOREXIA NERVOSA' 648 'BULIMIA'
             649 'EATING DISORDER' 650 'ANXIETY or ANXIETY DISORDER'
             651 'BORDERLINE PERSONALITY DISORDER' 652 'DEMENTIA'
             653 'DRUG ABUSE' 654 'GAMBLING PROBLEM or PATHOLOGICAL GAMBLING'
             655 'OBSESSIVE COMPULSIVE DISORDER (OCD)'
             656 'PANIC ATTACKS DISORDER' 657 'PERSONALITY DISORDER'
             658 'PHOBIA' 659 'POSTTRAUMATIC STRESS DISORDERS (PTSD)'
             660 'SLEEP DISORDER (INSOMNIA)' 661 'SOMATIZATION'
             662 'DEPRESSION (MILD DEPRESSION)' 663 'DYSTHYMIA'
             762 'BIOCHEMICAL PROBLEM' 763 'BRAIN DISORDER' 764 'BREAKDOWN'
             765 'CHEMICAL IMBALANCE' 766 'EMOTIONAL PROBLEM DISORDER'
             767 'MANIC' 768 'MENTAL BREAKDOWN' 769 'MOOD PROBLEM DISORDER'
             770 'MENTALLY ILL' 771 'MENTAL HEALTH PROBLEMS'
             772 'NERVES NERVOUS CONDITION' 773 'PARANOID'
             774 'PSYCHOLOGICAL PROBLEMS' 779 'SUICIDAL SUICIDE ATTEMPT'
             875 'DEPRESSION' 976 'OTHER UNFAMILIAR CONDITION'
             977 'OTHER FAMILIAR CONDITION' 997 'DON''T KNOW' 998 'REFUSED'
             999 'INAPP' /
   B1PCDP7   1 'SINGLE EPISODE' 2 'LONG-TERM PROBLEM' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PCDA7   0 '0 TO 95 YEARS OLD' 95 'DON''T KNOW' 97 'REFUSED' 98 'INAPP' /
   B1PCDX7   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCXT7   1 'MAJOR DEPRESSION' 2 'SCHIZOPHRENIA'
             3 'BIPOLAR DISORDER (MANIC DEPRESSION)'
             4 'OTHER (SPECIFY FOLLOWED BY //)' 7 'DON''T KNOW' 8 'REFUSED'
             9 'INAPP' /
   B1PCDO7   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHA8   997 'DON''T KNOW' 998 'REFUSED' 999 'INAPP' /
   B1PCHX8   1 'MALE' 2 'FEMALE' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHR8   1 'HUSBANDWIFE SPOUSE'
             2 'LOVER/PARTNER PARTNER''S FATHERMOTHERPAR'
             3 'BIOLOGICAL CHILD' 4 'ADOPTED CHILD' 5 'STEP-CHILD'
             6 'FOSTER CHILD' 7 'CHILD OF LOVER/PARTNER'
             8 'OTHER CHILD (SPECIFY)'
             9 'SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW'
             10 'FATHERMOTHERPARENT' 11 'STEP-FATHERMOTHERPARENT'
             12 'FATHERMOTHERPARENT-IN-LAW OR' 13 'GRANDFATHERMOTHERPARENT'
             14 'BROTHERSISTERSIBLING'
             15 'STEP-BROTHERSTEP-SISTERSTEP-SIBLING'
             16 'HALF-BROTHERHALF-SISTERHALF-SIBLING'
             17 'BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW'
             18 'GRANDSONDAUGHTERCHILD' 19 'OTHER RELATIVE' 20 'ROOMMATE'
             21 'FRIEND' 22 'OTHER NON-RELATIVE' 23 'SAME-SEX LOVER/PARTNER'
             97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCMB8   1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCYB8   1900 '1900-2004' 2004 'DON''T KNOW' 9997 'REFUSED' 9998 'INAPP'
             /
   B1PHHA8   0 '0 TO 120 YEARS OLD' 120 'DON''T KNOW' 997 'REFUSED'
             998 'INAPP' /
   B1PCHC8   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHH8   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDD8   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDT8   101 'ASPERGERS SYNDROME' 102 'AUTISM' 103 'CEREBRAL PALSY (CP)'
             104 'COGNITIVE DISABILITY' 105 'DEVELOPMENTAL DISABILITY (DD)'
             106 'DOWN SYNDROME' 107 'FETAL ALCOHOL SYNDROME'
             108 'FRAGILE X SYNDROME' 109 'HYDROCEPHALUS'
             110 'INTELLECTUAL DISABILITY' 111 'INTELLECTUAL IMPAIRMENT'
             112 'MENTAL HANDICAP' 113 'MENTAL RETARDATION (MR)'
             114 'MENTAL DISABILITY' 115 'MENTAL IMPAIRMENT'
             116 'MICROCEPHALY' 117 'MUSCULAR DYSTROPHY'
             118 'PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)'
             119 'PRADER WILLI SYNDROME' 120 'RETARDATION' 121 'SPINA BIFIDA'
             178 'RETTS DISORDER' 222 'ATTENTION DEFICIT DISORDER (ADD)'
             223 'ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)'
             224 'HANDICAPPED' 225 'HYPERACTIVITY'
             226 'LEARNING DISABILITY PROBLEMS (LD)' 227 'MENTAL PROBLEMS'
             228 'SLOW IN SCHOOL SLOW LEARNER SLOW'
             229 'SPECIAL EDUCATION SPECIAL ED' 230 'SPEECH PROBLEMS'
             331 'EPILEPSY' 332 'SEIZURE DISORDER' 433 'BRAIN DAMAGE'
             434 'BRAIN INJURY BRAIN INJURED' 435 'CLOSED HEAD INJURY'
             436 'HEAD INJURY' 437 'TRAUMATIC BRAIN INJURY BRAIN INJURY'
             538 'BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)'
             539 'CYCLOTHYMIA' 540 'DELUSIONAL DISORDER'
             542 'SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER'
             543 'PSYCHOTIC DISORDER PSYCHOSIS' 586 'CLINICAL DEPRESSION'
             587 'MAJOR DEPRESSION' 588 'SEVERE DEPRESSION' 644 'AGORAPHOBIA'
             645 'ALCOHOLISM' 646 'ALZHEIMERS'
             647 'ANOREXIA or ANOREXIA NERVOSA' 648 'BULIMIA'
             649 'EATING DISORDER' 650 'ANXIETY or ANXIETY DISORDER'
             651 'BORDERLINE PERSONALITY DISORDER' 652 'DEMENTIA'
             653 'DRUG ABUSE' 654 'GAMBLING PROBLEM or PATHOLOGICAL GAMBLING'
             655 'OBSESSIVE COMPULSIVE DISORDER (OCD)'
             656 'PANIC ATTACKS DISORDER' 657 'PERSONALITY DISORDER'
             658 'PHOBIA' 659 'POSTTRAUMATIC STRESS DISORDERS (PTSD)'
             660 'SLEEP DISORDER (INSOMNIA)' 661 'SOMATIZATION'
             662 'DEPRESSION (MILD DEPRESSION)' 663 'DYSTHYMIA'
             762 'BIOCHEMICAL PROBLEM' 763 'BRAIN DISORDER' 764 'BREAKDOWN'
             765 'CHEMICAL IMBALANCE' 766 'EMOTIONAL PROBLEM DISORDER'
             767 'MANIC' 768 'MENTAL BREAKDOWN' 769 'MOOD PROBLEM DISORDER'
             770 'MENTALLY ILL' 771 'MENTAL HEALTH PROBLEMS'
             772 'NERVES NERVOUS CONDITION' 773 'PARANOID'
             774 'PSYCHOLOGICAL PROBLEMS' 779 'SUICIDAL SUICIDE ATTEMPT'
             875 'DEPRESSION' 976 'OTHER UNFAMILIAR CONDITION'
             977 'OTHER FAMILIAR CONDITION' 997 'DON''T KNOW' 998 'REFUSED'
             999 'INAPP' /
   B1PCDP8   1 'SINGLE EPISODE' 2 'LONG-TERM PROBLEM' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PCDA8   0 '0 TO 95 YEARS OLD' 95 'DON''T KNOW' 97 'REFUSED' 98 'INAPP' /
   B1PCDX8   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCXT8   1 'MAJOR DEPRESSION' 2 'SCHIZOPHRENIA'
             3 'BIPOLAR DISORDER (MANIC DEPRESSION)'
             4 'OTHER (SPECIFY FOLLOWED BY //)' 7 'DON''T KNOW' 8 'REFUSED'
             9 'INAPP' /
   B1PCDO8   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHA9   997 'DON''T KNOW' 998 'REFUSED' 999 'INAPP' /
   B1PCHX9   1 'MALE' 2 'FEMALE' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHR9   1 'HUSBANDWIFE SPOUSE'
             2 'LOVER/PARTNER PARTNER''S FATHERMOTHERPAR'
             3 'BIOLOGICAL CHILD' 4 'ADOPTED CHILD' 5 'STEP-CHILD'
             6 'FOSTER CHILD' 7 'CHILD OF LOVER/PARTNER'
             8 'OTHER CHILD (SPECIFY)'
             9 'SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW'
             10 'FATHERMOTHERPARENT' 11 'STEP-FATHERMOTHERPARENT'
             12 'FATHERMOTHERPARENT-IN-LAW OR' 13 'GRANDFATHERMOTHERPARENT'
             14 'BROTHERSISTERSIBLING'
             15 'STEP-BROTHERSTEP-SISTERSTEP-SIBLING'
             16 'HALF-BROTHERHALF-SISTERHALF-SIBLING'
             17 'BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW'
             18 'GRANDSONDAUGHTERCHILD' 19 'OTHER RELATIVE' 20 'ROOMMATE'
             21 'FRIEND' 22 'OTHER NON-RELATIVE' 23 'SAME-SEX LOVER/PARTNER'
             97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCMB9   1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCYB9   1900 '1900-2004' 2004 'DON''T KNOW' 9997 'REFUSED' 9998 'INAPP'
             /
   B1PHHA9   0 '0 TO 120 YEARS OLD' 120 'DON''T KNOW' 997 'REFUSED'
             998 'INAPP' /
   B1PCHC9   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHH9   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDD9   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDT9   101 'ASPERGERS SYNDROME' 102 'AUTISM' 103 'CEREBRAL PALSY (CP)'
             104 'COGNITIVE DISABILITY' 105 'DEVELOPMENTAL DISABILITY (DD)'
             106 'DOWN SYNDROME' 107 'FETAL ALCOHOL SYNDROME'
             108 'FRAGILE X SYNDROME' 109 'HYDROCEPHALUS'
             110 'INTELLECTUAL DISABILITY' 111 'INTELLECTUAL IMPAIRMENT'
             112 'MENTAL HANDICAP' 113 'MENTAL RETARDATION (MR)'
             114 'MENTAL DISABILITY' 115 'MENTAL IMPAIRMENT'
             116 'MICROCEPHALY' 117 'MUSCULAR DYSTROPHY'
             118 'PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)'
             119 'PRADER WILLI SYNDROME' 120 'RETARDATION' 121 'SPINA BIFIDA'
             178 'RETTS DISORDER' 222 'ATTENTION DEFICIT DISORDER (ADD)'
             223 'ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)'
             224 'HANDICAPPED' 225 'HYPERACTIVITY'
             226 'LEARNING DISABILITY PROBLEMS (LD)' 227 'MENTAL PROBLEMS'
             228 'SLOW IN SCHOOL SLOW LEARNER SLOW'
             229 'SPECIAL EDUCATION SPECIAL ED' 230 'SPEECH PROBLEMS'
             331 'EPILEPSY' 332 'SEIZURE DISORDER' 433 'BRAIN DAMAGE'
             434 'BRAIN INJURY BRAIN INJURED' 435 'CLOSED HEAD INJURY'
             436 'HEAD INJURY' 437 'TRAUMATIC BRAIN INJURY BRAIN INJURY'
             538 'BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)'
             539 'CYCLOTHYMIA' 540 'DELUSIONAL DISORDER'
             542 'SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER'
             543 'PSYCHOTIC DISORDER PSYCHOSIS' 586 'CLINICAL DEPRESSION'
             587 'MAJOR DEPRESSION' 588 'SEVERE DEPRESSION' 644 'AGORAPHOBIA'
             645 'ALCOHOLISM' 646 'ALZHEIMERS'
             647 'ANOREXIA or ANOREXIA NERVOSA' 648 'BULIMIA'
             649 'EATING DISORDER' 650 'ANXIETY or ANXIETY DISORDER'
             651 'BORDERLINE PERSONALITY DISORDER' 652 'DEMENTIA'
             653 'DRUG ABUSE' 654 'GAMBLING PROBLEM or PATHOLOGICAL GAMBLING'
             655 'OBSESSIVE COMPULSIVE DISORDER (OCD)'
             656 'PANIC ATTACKS DISORDER' 657 'PERSONALITY DISORDER'
             658 'PHOBIA' 659 'POSTTRAUMATIC STRESS DISORDERS (PTSD)'
             660 'SLEEP DISORDER (INSOMNIA)' 661 'SOMATIZATION'
             662 'DEPRESSION (MILD DEPRESSION)' 663 'DYSTHYMIA'
             762 'BIOCHEMICAL PROBLEM' 763 'BRAIN DISORDER' 764 'BREAKDOWN'
             765 'CHEMICAL IMBALANCE' 766 'EMOTIONAL PROBLEM DISORDER'
             767 'MANIC' 768 'MENTAL BREAKDOWN' 769 'MOOD PROBLEM DISORDER'
             770 'MENTALLY ILL' 771 'MENTAL HEALTH PROBLEMS'
             772 'NERVES NERVOUS CONDITION' 773 'PARANOID'
             774 'PSYCHOLOGICAL PROBLEMS' 779 'SUICIDAL SUICIDE ATTEMPT'
             875 'DEPRESSION' 976 'OTHER UNFAMILIAR CONDITION'
             977 'OTHER FAMILIAR CONDITION' 997 'DON''T KNOW' 998 'REFUSED'
             999 'INAPP' /
   B1PCDP9   1 'SINGLE EPISODE' 2 'LONG-TERM PROBLEM' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PCDA9   0 '0 TO 95 YEARS OLD' 95 'DON''T KNOW' 97 'REFUSED' 98 'INAPP' /
   B1PCDX9   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCXT9   1 'MAJOR DEPRESSION' 2 'SCHIZOPHRENIA'
             3 'BIPOLAR DISORDER (MANIC DEPRESSION)'
             4 'OTHER (SPECIFY FOLLOWED BY //)' 7 'DON''T KNOW' 8 'REFUSED'
             9 'INAPP' /
   B1PCDO9   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHA10  997 'DON''T KNOW' 998 'REFUSED' 999 'INAPP' /
   B1PCHX10  1 'MALE' 2 'FEMALE' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHR10  1 'HUSBANDWIFE SPOUSE'
             2 'LOVER/PARTNER PARTNER''S FATHERMOTHERPAR'
             3 'BIOLOGICAL CHILD' 4 'ADOPTED CHILD' 5 'STEP-CHILD'
             6 'FOSTER CHILD' 7 'CHILD OF LOVER/PARTNER'
             8 'OTHER CHILD (SPECIFY)'
             9 'SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW'
             10 'FATHERMOTHERPARENT' 11 'STEP-FATHERMOTHERPARENT'
             12 'FATHERMOTHERPARENT-IN-LAW OR' 13 'GRANDFATHERMOTHERPARENT'
             14 'BROTHERSISTERSIBLING'
             15 'STEP-BROTHERSTEP-SISTERSTEP-SIBLING'
             16 'HALF-BROTHERHALF-SISTERHALF-SIBLING'
             17 'BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW'
             18 'GRANDSONDAUGHTERCHILD' 19 'OTHER RELATIVE' 20 'ROOMMATE'
             21 'FRIEND' 22 'OTHER NON-RELATIVE' 23 'SAME-SEX LOVER/PARTNER'
             97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCMB10  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCYB10  1900 '1900-2004' 2004 'DON''T KNOW' 9997 'REFUSED' 9998 'INAPP'
             /
   B1PHHA10  0 '0 TO 120 YEARS OLD' 120 'DON''T KNOW' 997 'REFUSED'
             998 'INAPP' /
   B1PCHC10  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHH10  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDD10  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDT10  101 'ASPERGERS SYNDROME' 102 'AUTISM' 103 'CEREBRAL PALSY (CP)'
             104 'COGNITIVE DISABILITY' 105 'DEVELOPMENTAL DISABILITY (DD)'
             106 'DOWN SYNDROME' 107 'FETAL ALCOHOL SYNDROME'
             108 'FRAGILE X SYNDROME' 109 'HYDROCEPHALUS'
             110 'INTELLECTUAL DISABILITY' 111 'INTELLECTUAL IMPAIRMENT'
             112 'MENTAL HANDICAP' 113 'MENTAL RETARDATION (MR)'
             114 'MENTAL DISABILITY' 115 'MENTAL IMPAIRMENT'
             116 'MICROCEPHALY' 117 'MUSCULAR DYSTROPHY'
             118 'PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)'
             119 'PRADER WILLI SYNDROME' 120 'RETARDATION' 121 'SPINA BIFIDA'
             178 'RETTS DISORDER' 222 'ATTENTION DEFICIT DISORDER (ADD)'
             223 'ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)'
             224 'HANDICAPPED' 225 'HYPERACTIVITY'
             226 'LEARNING DISABILITY PROBLEMS (LD)' 227 'MENTAL PROBLEMS'
             228 'SLOW IN SCHOOL SLOW LEARNER SLOW'
             229 'SPECIAL EDUCATION SPECIAL ED' 230 'SPEECH PROBLEMS'
             331 'EPILEPSY' 332 'SEIZURE DISORDER' 433 'BRAIN DAMAGE'
             434 'BRAIN INJURY BRAIN INJURED' 435 'CLOSED HEAD INJURY'
             436 'HEAD INJURY' 437 'TRAUMATIC BRAIN INJURY BRAIN INJURY'
             538 'BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)'
             539 'CYCLOTHYMIA' 540 'DELUSIONAL DISORDER'
             542 'SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER'
             543 'PSYCHOTIC DISORDER PSYCHOSIS' 586 'CLINICAL DEPRESSION'
             587 'MAJOR DEPRESSION' 588 'SEVERE DEPRESSION' 644 'AGORAPHOBIA'
             645 'ALCOHOLISM' 646 'ALZHEIMERS'
             647 'ANOREXIA or ANOREXIA NERVOSA' 648 'BULIMIA'
             649 'EATING DISORDER' 650 'ANXIETY or ANXIETY DISORDER'
             651 'BORDERLINE PERSONALITY DISORDER' 652 'DEMENTIA'
             653 'DRUG ABUSE' 654 'GAMBLING PROBLEM or PATHOLOGICAL GAMBLING'
             655 'OBSESSIVE COMPULSIVE DISORDER (OCD)'
             656 'PANIC ATTACKS DISORDER' 657 'PERSONALITY DISORDER'
             658 'PHOBIA' 659 'POSTTRAUMATIC STRESS DISORDERS (PTSD)'
             660 'SLEEP DISORDER (INSOMNIA)' 661 'SOMATIZATION'
             662 'DEPRESSION (MILD DEPRESSION)' 663 'DYSTHYMIA'
             762 'BIOCHEMICAL PROBLEM' 763 'BRAIN DISORDER' 764 'BREAKDOWN'
             765 'CHEMICAL IMBALANCE' 766 'EMOTIONAL PROBLEM DISORDER'
             767 'MANIC' 768 'MENTAL BREAKDOWN' 769 'MOOD PROBLEM DISORDER'
             770 'MENTALLY ILL' 771 'MENTAL HEALTH PROBLEMS'
             772 'NERVES NERVOUS CONDITION' 773 'PARANOID'
             774 'PSYCHOLOGICAL PROBLEMS' 779 'SUICIDAL SUICIDE ATTEMPT'
             875 'DEPRESSION' 976 'OTHER UNFAMILIAR CONDITION'
             977 'OTHER FAMILIAR CONDITION' 997 'DON''T KNOW' 998 'REFUSED'
             999 'INAPP' /
   B1PCDP10  1 'SINGLE EPISODE' 2 'LONG-TERM PROBLEM' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PCDA10  0 '0 TO 95 YEARS OLD' 95 'DON''T KNOW' 97 'REFUSED' 98 'INAPP' /
   B1PCDX10  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCXT10  1 'MAJOR DEPRESSION' 2 'SCHIZOPHRENIA'
             3 'BIPOLAR DISORDER (MANIC DEPRESSION)'
             4 'OTHER (SPECIFY FOLLOWED BY //)' 7 'DON''T KNOW' 8 'REFUSED'
             9 'INAPP' /
   B1PCDO10  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHA11  997 'DON''T KNOW' 998 'REFUSED' 999 'INAPP' /
   B1PCHX11  1 'MALE' 2 'FEMALE' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHR11  1 'HUSBANDWIFE SPOUSE'
             2 'LOVER/PARTNER PARTNER''S FATHERMOTHERPAR'
             3 'BIOLOGICAL CHILD' 4 'ADOPTED CHILD' 5 'STEP-CHILD'
             6 'FOSTER CHILD' 7 'CHILD OF LOVER/PARTNER'
             8 'OTHER CHILD (SPECIFY)'
             9 'SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW'
             10 'FATHERMOTHERPARENT' 11 'STEP-FATHERMOTHERPARENT'
             12 'FATHERMOTHERPARENT-IN-LAW OR' 13 'GRANDFATHERMOTHERPARENT'
             14 'BROTHERSISTERSIBLING'
             15 'STEP-BROTHERSTEP-SISTERSTEP-SIBLING'
             16 'HALF-BROTHERHALF-SISTERHALF-SIBLING'
             17 'BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW'
             18 'GRANDSONDAUGHTERCHILD' 19 'OTHER RELATIVE' 20 'ROOMMATE'
             21 'FRIEND' 22 'OTHER NON-RELATIVE' 23 'SAME-SEX LOVER/PARTNER'
             97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCMB11  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCYB11  1900 '1900-2004' 2004 'DON''T KNOW' 9997 'REFUSED' 9998 'INAPP'
             /
   B1PHHA11  0 '0 TO 120 YEARS OLD' 120 'DON''T KNOW' 997 'REFUSED'
             998 'INAPP' /
   B1PCHC11  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHH11  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDD11  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDT11  101 'ASPERGERS SYNDROME' 102 'AUTISM' 103 'CEREBRAL PALSY (CP)'
             104 'COGNITIVE DISABILITY' 105 'DEVELOPMENTAL DISABILITY (DD)'
             106 'DOWN SYNDROME' 107 'FETAL ALCOHOL SYNDROME'
             108 'FRAGILE X SYNDROME' 109 'HYDROCEPHALUS'
             110 'INTELLECTUAL DISABILITY' 111 'INTELLECTUAL IMPAIRMENT'
             112 'MENTAL HANDICAP' 113 'MENTAL RETARDATION (MR)'
             114 'MENTAL DISABILITY' 115 'MENTAL IMPAIRMENT'
             116 'MICROCEPHALY' 117 'MUSCULAR DYSTROPHY'
             118 'PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)'
             119 'PRADER WILLI SYNDROME' 120 'RETARDATION' 121 'SPINA BIFIDA'
             178 'RETTS DISORDER' 222 'ATTENTION DEFICIT DISORDER (ADD)'
             223 'ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)'
             224 'HANDICAPPED' 225 'HYPERACTIVITY'
             226 'LEARNING DISABILITY PROBLEMS (LD)' 227 'MENTAL PROBLEMS'
             228 'SLOW IN SCHOOL SLOW LEARNER SLOW'
             229 'SPECIAL EDUCATION SPECIAL ED' 230 'SPEECH PROBLEMS'
             331 'EPILEPSY' 332 'SEIZURE DISORDER' 433 'BRAIN DAMAGE'
             434 'BRAIN INJURY BRAIN INJURED' 435 'CLOSED HEAD INJURY'
             436 'HEAD INJURY' 437 'TRAUMATIC BRAIN INJURY BRAIN INJURY'
             538 'BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)'
             539 'CYCLOTHYMIA' 540 'DELUSIONAL DISORDER'
             542 'SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER'
             543 'PSYCHOTIC DISORDER PSYCHOSIS' 586 'CLINICAL DEPRESSION'
             587 'MAJOR DEPRESSION' 588 'SEVERE DEPRESSION' 644 'AGORAPHOBIA'
             645 'ALCOHOLISM' 646 'ALZHEIMERS'
             647 'ANOREXIA or ANOREXIA NERVOSA' 648 'BULIMIA'
             649 'EATING DISORDER' 650 'ANXIETY or ANXIETY DISORDER'
             651 'BORDERLINE PERSONALITY DISORDER' 652 'DEMENTIA'
             653 'DRUG ABUSE' 654 'GAMBLING PROBLEM or PATHOLOGICAL GAMBLING'
             655 'OBSESSIVE COMPULSIVE DISORDER (OCD)'
             656 'PANIC ATTACKS DISORDER' 657 'PERSONALITY DISORDER'
             658 'PHOBIA' 659 'POSTTRAUMATIC STRESS DISORDERS (PTSD)'
             660 'SLEEP DISORDER (INSOMNIA)' 661 'SOMATIZATION'
             662 'DEPRESSION (MILD DEPRESSION)' 663 'DYSTHYMIA'
             762 'BIOCHEMICAL PROBLEM' 763 'BRAIN DISORDER' 764 'BREAKDOWN'
             765 'CHEMICAL IMBALANCE' 766 'EMOTIONAL PROBLEM DISORDER'
             767 'MANIC' 768 'MENTAL BREAKDOWN' 769 'MOOD PROBLEM DISORDER'
             770 'MENTALLY ILL' 771 'MENTAL HEALTH PROBLEMS'
             772 'NERVES NERVOUS CONDITION' 773 'PARANOID'
             774 'PSYCHOLOGICAL PROBLEMS' 779 'SUICIDAL SUICIDE ATTEMPT'
             875 'DEPRESSION' 976 'OTHER UNFAMILIAR CONDITION'
             977 'OTHER FAMILIAR CONDITION' 997 'DON''T KNOW' 998 'REFUSED'
             999 'INAPP' /
   B1PCDP11  1 'SINGLE EPISODE' 2 'LONG-TERM PROBLEM' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PCDA11  0 '0 TO 95 YEARS OLD' 95 'DON''T KNOW' 97 'REFUSED' 98 'INAPP' /
   B1PCDX11  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCXT11  1 'MAJOR DEPRESSION' 2 'SCHIZOPHRENIA'
             3 'BIPOLAR DISORDER (MANIC DEPRESSION)'
             4 'OTHER (SPECIFY FOLLOWED BY //)' 7 'DON''T KNOW' 8 'REFUSED'
             9 'INAPP' /
   B1PCDO11  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHA12  997 'DON''T KNOW' 998 'REFUSED' 999 'INAPP' /
   B1PCHX12  1 'MALE' 2 'FEMALE' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHR12  1 'HUSBANDWIFE SPOUSE'
             2 'LOVER/PARTNER PARTNER''S FATHERMOTHERPAR'
             3 'BIOLOGICAL CHILD' 4 'ADOPTED CHILD' 5 'STEP-CHILD'
             6 'FOSTER CHILD' 7 'CHILD OF LOVER/PARTNER'
             8 'OTHER CHILD (SPECIFY)'
             9 'SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW'
             10 'FATHERMOTHERPARENT' 11 'STEP-FATHERMOTHERPARENT'
             12 'FATHERMOTHERPARENT-IN-LAW OR' 13 'GRANDFATHERMOTHERPARENT'
             14 'BROTHERSISTERSIBLING'
             15 'STEP-BROTHERSTEP-SISTERSTEP-SIBLING'
             16 'HALF-BROTHERHALF-SISTERHALF-SIBLING'
             17 'BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW'
             18 'GRANDSONDAUGHTERCHILD' 19 'OTHER RELATIVE' 20 'ROOMMATE'
             21 'FRIEND' 22 'OTHER NON-RELATIVE' 23 'SAME-SEX LOVER/PARTNER'
             97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCMB12  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCYB12  1900 '1900-2004' 2004 'DON''T KNOW' 9997 'REFUSED' 9998 'INAPP'
             /
   B1PHHA12  0 '0 TO 120 YEARS OLD' 120 'DON''T KNOW' 997 'REFUSED'
             998 'INAPP' /
   B1PCHC12  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHH12  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDD12  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDT12  101 'ASPERGERS SYNDROME' 102 'AUTISM' 103 'CEREBRAL PALSY (CP)'
             104 'COGNITIVE DISABILITY' 105 'DEVELOPMENTAL DISABILITY (DD)'
             106 'DOWN SYNDROME' 107 'FETAL ALCOHOL SYNDROME'
             108 'FRAGILE X SYNDROME' 109 'HYDROCEPHALUS'
             110 'INTELLECTUAL DISABILITY' 111 'INTELLECTUAL IMPAIRMENT'
             112 'MENTAL HANDICAP' 113 'MENTAL RETARDATION (MR)'
             114 'MENTAL DISABILITY' 115 'MENTAL IMPAIRMENT'
             116 'MICROCEPHALY' 117 'MUSCULAR DYSTROPHY'
             118 'PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)'
             119 'PRADER WILLI SYNDROME' 120 'RETARDATION' 121 'SPINA BIFIDA'
             178 'RETTS DISORDER' 222 'ATTENTION DEFICIT DISORDER (ADD)'
             223 'ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)'
             224 'HANDICAPPED' 225 'HYPERACTIVITY'
             226 'LEARNING DISABILITY PROBLEMS (LD)' 227 'MENTAL PROBLEMS'
             228 'SLOW IN SCHOOL SLOW LEARNER SLOW'
             229 'SPECIAL EDUCATION SPECIAL ED' 230 'SPEECH PROBLEMS'
             331 'EPILEPSY' 332 'SEIZURE DISORDER' 433 'BRAIN DAMAGE'
             434 'BRAIN INJURY BRAIN INJURED' 435 'CLOSED HEAD INJURY'
             436 'HEAD INJURY' 437 'TRAUMATIC BRAIN INJURY BRAIN INJURY'
             538 'BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)'
             539 'CYCLOTHYMIA' 540 'DELUSIONAL DISORDER'
             542 'SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER'
             543 'PSYCHOTIC DISORDER PSYCHOSIS' 586 'CLINICAL DEPRESSION'
             587 'MAJOR DEPRESSION' 588 'SEVERE DEPRESSION' 644 'AGORAPHOBIA'
             645 'ALCOHOLISM' 646 'ALZHEIMERS'
             647 'ANOREXIA or ANOREXIA NERVOSA' 648 'BULIMIA'
             649 'EATING DISORDER' 650 'ANXIETY or ANXIETY DISORDER'
             651 'BORDERLINE PERSONALITY DISORDER' 652 'DEMENTIA'
             653 'DRUG ABUSE' 654 'GAMBLING PROBLEM or PATHOLOGICAL GAMBLING'
             655 'OBSESSIVE COMPULSIVE DISORDER (OCD)'
             656 'PANIC ATTACKS DISORDER' 657 'PERSONALITY DISORDER'
             658 'PHOBIA' 659 'POSTTRAUMATIC STRESS DISORDERS (PTSD)'
             660 'SLEEP DISORDER (INSOMNIA)' 661 'SOMATIZATION'
             662 'DEPRESSION (MILD DEPRESSION)' 663 'DYSTHYMIA'
             762 'BIOCHEMICAL PROBLEM' 763 'BRAIN DISORDER' 764 'BREAKDOWN'
             765 'CHEMICAL IMBALANCE' 766 'EMOTIONAL PROBLEM DISORDER'
             767 'MANIC' 768 'MENTAL BREAKDOWN' 769 'MOOD PROBLEM DISORDER'
             770 'MENTALLY ILL' 771 'MENTAL HEALTH PROBLEMS'
             772 'NERVES NERVOUS CONDITION' 773 'PARANOID'
             774 'PSYCHOLOGICAL PROBLEMS' 779 'SUICIDAL SUICIDE ATTEMPT'
             875 'DEPRESSION' 976 'OTHER UNFAMILIAR CONDITION'
             977 'OTHER FAMILIAR CONDITION' 997 'DON''T KNOW' 998 'REFUSED'
             999 'INAPP' /
   B1PCDP12  1 'SINGLE EPISODE' 2 'LONG-TERM PROBLEM' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PCDA12  0 '0 TO 95 YEARS OLD' 95 'DON''T KNOW' 97 'REFUSED' 98 'INAPP' /
   B1PCDX12  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCXT12  1 'MAJOR DEPRESSION' 2 'SCHIZOPHRENIA'
             3 'BIPOLAR DISORDER (MANIC DEPRESSION)'
             4 'OTHER (SPECIFY FOLLOWED BY //)' 7 'DON''T KNOW' 8 'REFUSED'
             9 'INAPP' /
   B1PCDO12  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHA13  997 'DON''T KNOW' 998 'REFUSED' 999 'INAPP' /
   B1PCHX13  1 'MALE' 2 'FEMALE' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHR13  1 'HUSBANDWIFE SPOUSE'
             2 'LOVER/PARTNER PARTNER''S FATHERMOTHERPAR'
             3 'BIOLOGICAL CHILD' 4 'ADOPTED CHILD' 5 'STEP-CHILD'
             6 'FOSTER CHILD' 7 'CHILD OF LOVER/PARTNER'
             8 'OTHER CHILD (SPECIFY)'
             9 'SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW'
             10 'FATHERMOTHERPARENT' 11 'STEP-FATHERMOTHERPARENT'
             12 'FATHERMOTHERPARENT-IN-LAW OR' 13 'GRANDFATHERMOTHERPARENT'
             14 'BROTHERSISTERSIBLING'
             15 'STEP-BROTHERSTEP-SISTERSTEP-SIBLING'
             16 'HALF-BROTHERHALF-SISTERHALF-SIBLING'
             17 'BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW'
             18 'GRANDSONDAUGHTERCHILD' 19 'OTHER RELATIVE' 20 'ROOMMATE'
             21 'FRIEND' 22 'OTHER NON-RELATIVE' 23 'SAME-SEX LOVER/PARTNER'
             97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCMB13  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCYB13  1900 '1900-2004' 2004 'DON''T KNOW' 9997 'REFUSED' 9998 'INAPP'
             /
   B1PHHA13  0 '0 TO 120 YEARS OLD' 120 'DON''T KNOW' 997 'REFUSED'
             998 'INAPP' /
   B1PCHC13  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHH13  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDD13  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDT13  101 'ASPERGERS SYNDROME' 102 'AUTISM' 103 'CEREBRAL PALSY (CP)'
             104 'COGNITIVE DISABILITY' 105 'DEVELOPMENTAL DISABILITY (DD)'
             106 'DOWN SYNDROME' 107 'FETAL ALCOHOL SYNDROME'
             108 'FRAGILE X SYNDROME' 109 'HYDROCEPHALUS'
             110 'INTELLECTUAL DISABILITY' 111 'INTELLECTUAL IMPAIRMENT'
             112 'MENTAL HANDICAP' 113 'MENTAL RETARDATION (MR)'
             114 'MENTAL DISABILITY' 115 'MENTAL IMPAIRMENT'
             116 'MICROCEPHALY' 117 'MUSCULAR DYSTROPHY'
             118 'PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)'
             119 'PRADER WILLI SYNDROME' 120 'RETARDATION' 121 'SPINA BIFIDA'
             178 'RETTS DISORDER' 222 'ATTENTION DEFICIT DISORDER (ADD)'
             223 'ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)'
             224 'HANDICAPPED' 225 'HYPERACTIVITY'
             226 'LEARNING DISABILITY PROBLEMS (LD)' 227 'MENTAL PROBLEMS'
             228 'SLOW IN SCHOOL SLOW LEARNER SLOW'
             229 'SPECIAL EDUCATION SPECIAL ED' 230 'SPEECH PROBLEMS'
             331 'EPILEPSY' 332 'SEIZURE DISORDER' 433 'BRAIN DAMAGE'
             434 'BRAIN INJURY BRAIN INJURED' 435 'CLOSED HEAD INJURY'
             436 'HEAD INJURY' 437 'TRAUMATIC BRAIN INJURY BRAIN INJURY'
             538 'BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)'
             539 'CYCLOTHYMIA' 540 'DELUSIONAL DISORDER'
             542 'SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER'
             543 'PSYCHOTIC DISORDER PSYCHOSIS' 586 'CLINICAL DEPRESSION'
             587 'MAJOR DEPRESSION' 588 'SEVERE DEPRESSION' 644 'AGORAPHOBIA'
             645 'ALCOHOLISM' 646 'ALZHEIMERS'
             647 'ANOREXIA or ANOREXIA NERVOSA' 648 'BULIMIA'
             649 'EATING DISORDER' 650 'ANXIETY or ANXIETY DISORDER'
             651 'BORDERLINE PERSONALITY DISORDER' 652 'DEMENTIA'
             653 'DRUG ABUSE' 654 'GAMBLING PROBLEM or PATHOLOGICAL GAMBLING'
             655 'OBSESSIVE COMPULSIVE DISORDER (OCD)'
             656 'PANIC ATTACKS DISORDER' 657 'PERSONALITY DISORDER'
             658 'PHOBIA' 659 'POSTTRAUMATIC STRESS DISORDERS (PTSD)'
             660 'SLEEP DISORDER (INSOMNIA)' 661 'SOMATIZATION'
             662 'DEPRESSION (MILD DEPRESSION)' 663 'DYSTHYMIA'
             762 'BIOCHEMICAL PROBLEM' 763 'BRAIN DISORDER' 764 'BREAKDOWN'
             765 'CHEMICAL IMBALANCE' 766 'EMOTIONAL PROBLEM DISORDER'
             767 'MANIC' 768 'MENTAL BREAKDOWN' 769 'MOOD PROBLEM DISORDER'
             770 'MENTALLY ILL' 771 'MENTAL HEALTH PROBLEMS'
             772 'NERVES NERVOUS CONDITION' 773 'PARANOID'
             774 'PSYCHOLOGICAL PROBLEMS' 779 'SUICIDAL SUICIDE ATTEMPT'
             875 'DEPRESSION' 976 'OTHER UNFAMILIAR CONDITION'
             977 'OTHER FAMILIAR CONDITION' 997 'DON''T KNOW' 998 'REFUSED'
             999 'INAPP' /
   B1PCDP13  1 'SINGLE EPISODE' 2 'LONG-TERM PROBLEM' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PCDA13  0 '0 TO 95 YEARS OLD' 95 'DON''T KNOW' 97 'REFUSED' 98 'INAPP' /
   B1PCDX13  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCXT13  1 'MAJOR DEPRESSION' 2 'SCHIZOPHRENIA'
             3 'BIPOLAR DISORDER (MANIC DEPRESSION)'
             4 'OTHER (SPECIFY FOLLOWED BY //)' 7 'DON''T KNOW' 8 'REFUSED'
             9 'INAPP' /
   B1PCDO13  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHA14  997 'DON''T KNOW' 998 'REFUSED' 999 'INAPP' /
   B1PCHX14  1 'MALE' 2 'FEMALE' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHR14  1 'HUSBANDWIFE SPOUSE'
             2 'LOVER/PARTNER PARTNER''S FATHERMOTHERPAR'
             3 'BIOLOGICAL CHILD' 4 'ADOPTED CHILD' 5 'STEP-CHILD'
             6 'FOSTER CHILD' 7 'CHILD OF LOVER/PARTNER'
             8 'OTHER CHILD (SPECIFY)'
             9 'SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW'
             10 'FATHERMOTHERPARENT' 11 'STEP-FATHERMOTHERPARENT'
             12 'FATHERMOTHERPARENT-IN-LAW OR' 13 'GRANDFATHERMOTHERPARENT'
             14 'BROTHERSISTERSIBLING'
             15 'STEP-BROTHERSTEP-SISTERSTEP-SIBLING'
             16 'HALF-BROTHERHALF-SISTERHALF-SIBLING'
             17 'BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW'
             18 'GRANDSONDAUGHTERCHILD' 19 'OTHER RELATIVE' 20 'ROOMMATE'
             21 'FRIEND' 22 'OTHER NON-RELATIVE' 23 'SAME-SEX LOVER/PARTNER'
             97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCMB14  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCYB14  1900 '1900-2004' 2004 'DON''T KNOW' 9997 'REFUSED' 9998 'INAPP'
             /
   B1PHHA14  0 '0 TO 120 YEARS OLD' 120 'DON''T KNOW' 997 'REFUSED'
             998 'INAPP' /
   B1PCHC14  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHH14  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDD14  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDT14  101 'ASPERGERS SYNDROME' 102 'AUTISM' 103 'CEREBRAL PALSY (CP)'
             104 'COGNITIVE DISABILITY' 105 'DEVELOPMENTAL DISABILITY (DD)'
             106 'DOWN SYNDROME' 107 'FETAL ALCOHOL SYNDROME'
             108 'FRAGILE X SYNDROME' 109 'HYDROCEPHALUS'
             110 'INTELLECTUAL DISABILITY' 111 'INTELLECTUAL IMPAIRMENT'
             112 'MENTAL HANDICAP' 113 'MENTAL RETARDATION (MR)'
             114 'MENTAL DISABILITY' 115 'MENTAL IMPAIRMENT'
             116 'MICROCEPHALY' 117 'MUSCULAR DYSTROPHY'
             118 'PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)'
             119 'PRADER WILLI SYNDROME' 120 'RETARDATION' 121 'SPINA BIFIDA'
             178 'RETTS DISORDER' 222 'ATTENTION DEFICIT DISORDER (ADD)'
             223 'ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)'
             224 'HANDICAPPED' 225 'HYPERACTIVITY'
             226 'LEARNING DISABILITY PROBLEMS (LD)' 227 'MENTAL PROBLEMS'
             228 'SLOW IN SCHOOL SLOW LEARNER SLOW'
             229 'SPECIAL EDUCATION SPECIAL ED' 230 'SPEECH PROBLEMS'
             331 'EPILEPSY' 332 'SEIZURE DISORDER' 433 'BRAIN DAMAGE'
             434 'BRAIN INJURY BRAIN INJURED' 435 'CLOSED HEAD INJURY'
             436 'HEAD INJURY' 437 'TRAUMATIC BRAIN INJURY BRAIN INJURY'
             538 'BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)'
             539 'CYCLOTHYMIA' 540 'DELUSIONAL DISORDER'
             542 'SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER'
             543 'PSYCHOTIC DISORDER PSYCHOSIS' 586 'CLINICAL DEPRESSION'
             587 'MAJOR DEPRESSION' 588 'SEVERE DEPRESSION' 644 'AGORAPHOBIA'
             645 'ALCOHOLISM' 646 'ALZHEIMERS'
             647 'ANOREXIA or ANOREXIA NERVOSA' 648 'BULIMIA'
             649 'EATING DISORDER' 650 'ANXIETY or ANXIETY DISORDER'
             651 'BORDERLINE PERSONALITY DISORDER' 652 'DEMENTIA'
             653 'DRUG ABUSE' 654 'GAMBLING PROBLEM or PATHOLOGICAL GAMBLING'
             655 'OBSESSIVE COMPULSIVE DISORDER (OCD)'
             656 'PANIC ATTACKS DISORDER' 657 'PERSONALITY DISORDER'
             658 'PHOBIA' 659 'POSTTRAUMATIC STRESS DISORDERS (PTSD)'
             660 'SLEEP DISORDER (INSOMNIA)' 661 'SOMATIZATION'
             662 'DEPRESSION (MILD DEPRESSION)' 663 'DYSTHYMIA'
             762 'BIOCHEMICAL PROBLEM' 763 'BRAIN DISORDER' 764 'BREAKDOWN'
             765 'CHEMICAL IMBALANCE' 766 'EMOTIONAL PROBLEM DISORDER'
             767 'MANIC' 768 'MENTAL BREAKDOWN' 769 'MOOD PROBLEM DISORDER'
             770 'MENTALLY ILL' 771 'MENTAL HEALTH PROBLEMS'
             772 'NERVES NERVOUS CONDITION' 773 'PARANOID'
             774 'PSYCHOLOGICAL PROBLEMS' 779 'SUICIDAL SUICIDE ATTEMPT'
             875 'DEPRESSION' 976 'OTHER UNFAMILIAR CONDITION'
             977 'OTHER FAMILIAR CONDITION' 997 'DON''T KNOW' 998 'REFUSED'
             999 'INAPP' /
   B1PCDP14  1 'SINGLE EPISODE' 2 'LONG-TERM PROBLEM' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PCDA14  0 '0 TO 95 YEARS OLD' 95 'DON''T KNOW' 97 'REFUSED' 98 'INAPP' /
   B1PCDX14  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCXT14  1 'MAJOR DEPRESSION' 2 'SCHIZOPHRENIA'
             3 'BIPOLAR DISORDER (MANIC DEPRESSION)'
             4 'OTHER (SPECIFY FOLLOWED BY //)' 7 'DON''T KNOW' 8 'REFUSED'
             9 'INAPP' /
   B1PCDO14  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHA15  997 'DON''T KNOW' 998 'REFUSED' 999 'INAPP' /
   B1PCHX15  1 'MALE' 2 'FEMALE' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHR15  1 'HUSBANDWIFE SPOUSE'
             2 'LOVER/PARTNER PARTNER''S FATHERMOTHERPAR'
             3 'BIOLOGICAL CHILD' 4 'ADOPTED CHILD' 5 'STEP-CHILD'
             6 'FOSTER CHILD' 7 'CHILD OF LOVER/PARTNER'
             8 'OTHER CHILD (SPECIFY)'
             9 'SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW'
             10 'FATHERMOTHERPARENT' 11 'STEP-FATHERMOTHERPARENT'
             12 'FATHERMOTHERPARENT-IN-LAW OR' 13 'GRANDFATHERMOTHERPARENT'
             14 'BROTHERSISTERSIBLING'
             15 'STEP-BROTHERSTEP-SISTERSTEP-SIBLING'
             16 'HALF-BROTHERHALF-SISTERHALF-SIBLING'
             17 'BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW'
             18 'GRANDSONDAUGHTERCHILD' 19 'OTHER RELATIVE' 20 'ROOMMATE'
             21 'FRIEND' 22 'OTHER NON-RELATIVE' 23 'SAME-SEX LOVER/PARTNER'
             97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCMB15  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCYB15  1900 '1900-2004' 2004 'DON''T KNOW' 9997 'REFUSED' 9998 'INAPP'
             /
   B1PHHA15  0 '0 TO 120 YEARS OLD' 120 'DON''T KNOW' 997 'REFUSED'
             998 'INAPP' /
   B1PCHC15  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHH15  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDD15  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDT15  101 'ASPERGERS SYNDROME' 102 'AUTISM' 103 'CEREBRAL PALSY (CP)'
             104 'COGNITIVE DISABILITY' 105 'DEVELOPMENTAL DISABILITY (DD)'
             106 'DOWN SYNDROME' 107 'FETAL ALCOHOL SYNDROME'
             108 'FRAGILE X SYNDROME' 109 'HYDROCEPHALUS'
             110 'INTELLECTUAL DISABILITY' 111 'INTELLECTUAL IMPAIRMENT'
             112 'MENTAL HANDICAP' 113 'MENTAL RETARDATION (MR)'
             114 'MENTAL DISABILITY' 115 'MENTAL IMPAIRMENT'
             116 'MICROCEPHALY' 117 'MUSCULAR DYSTROPHY'
             118 'PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)'
             119 'PRADER WILLI SYNDROME' 120 'RETARDATION' 121 'SPINA BIFIDA'
             178 'RETTS DISORDER' 222 'ATTENTION DEFICIT DISORDER (ADD)'
             223 'ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)'
             224 'HANDICAPPED' 225 'HYPERACTIVITY'
             226 'LEARNING DISABILITY PROBLEMS (LD)' 227 'MENTAL PROBLEMS'
             228 'SLOW IN SCHOOL SLOW LEARNER SLOW'
             229 'SPECIAL EDUCATION SPECIAL ED' 230 'SPEECH PROBLEMS'
             331 'EPILEPSY' 332 'SEIZURE DISORDER' 433 'BRAIN DAMAGE'
             434 'BRAIN INJURY BRAIN INJURED' 435 'CLOSED HEAD INJURY'
             436 'HEAD INJURY' 437 'TRAUMATIC BRAIN INJURY BRAIN INJURY'
             538 'BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)'
             539 'CYCLOTHYMIA' 540 'DELUSIONAL DISORDER'
             542 'SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER'
             543 'PSYCHOTIC DISORDER PSYCHOSIS' 586 'CLINICAL DEPRESSION'
             587 'MAJOR DEPRESSION' 588 'SEVERE DEPRESSION' 644 'AGORAPHOBIA'
             645 'ALCOHOLISM' 646 'ALZHEIMERS'
             647 'ANOREXIA or ANOREXIA NERVOSA' 648 'BULIMIA'
             649 'EATING DISORDER' 650 'ANXIETY or ANXIETY DISORDER'
             651 'BORDERLINE PERSONALITY DISORDER' 652 'DEMENTIA'
             653 'DRUG ABUSE' 654 'GAMBLING PROBLEM or PATHOLOGICAL GAMBLING'
             655 'OBSESSIVE COMPULSIVE DISORDER (OCD)'
             656 'PANIC ATTACKS DISORDER' 657 'PERSONALITY DISORDER'
             658 'PHOBIA' 659 'POSTTRAUMATIC STRESS DISORDERS (PTSD)'
             660 'SLEEP DISORDER (INSOMNIA)' 661 'SOMATIZATION'
             662 'DEPRESSION (MILD DEPRESSION)' 663 'DYSTHYMIA'
             762 'BIOCHEMICAL PROBLEM' 763 'BRAIN DISORDER' 764 'BREAKDOWN'
             765 'CHEMICAL IMBALANCE' 766 'EMOTIONAL PROBLEM DISORDER'
             767 'MANIC' 768 'MENTAL BREAKDOWN' 769 'MOOD PROBLEM DISORDER'
             770 'MENTALLY ILL' 771 'MENTAL HEALTH PROBLEMS'
             772 'NERVES NERVOUS CONDITION' 773 'PARANOID'
             774 'PSYCHOLOGICAL PROBLEMS' 779 'SUICIDAL SUICIDE ATTEMPT'
             875 'DEPRESSION' 976 'OTHER UNFAMILIAR CONDITION'
             977 'OTHER FAMILIAR CONDITION' 997 'DON''T KNOW' 998 'REFUSED'
             999 'INAPP' /
   B1PCDP15  1 'SINGLE EPISODE' 2 'LONG-TERM PROBLEM' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PCDA15  0 '0 TO 95 YEARS OLD' 95 'DON''T KNOW' 97 'REFUSED' 98 'INAPP' /
   B1PCDX15  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCXT15  1 'MAJOR DEPRESSION' 2 'SCHIZOPHRENIA'
             3 'BIPOLAR DISORDER (MANIC DEPRESSION)'
             4 'OTHER (SPECIFY FOLLOWED BY //)' 7 'DON''T KNOW' 8 'REFUSED'
             9 'INAPP' /
   B1PCDO15  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHA16  997 'DON''T KNOW' 998 'REFUSED' 999 'INAPP' /
   B1PCHX16  1 'MALE' 2 'FEMALE' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHR16  1 'HUSBANDWIFE SPOUSE'
             2 'LOVER/PARTNER PARTNER''S FATHERMOTHERPAR'
             3 'BIOLOGICAL CHILD' 4 'ADOPTED CHILD' 5 'STEP-CHILD'
             6 'FOSTER CHILD' 7 'CHILD OF LOVER/PARTNER'
             8 'OTHER CHILD (SPECIFY)'
             9 'SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW'
             10 'FATHERMOTHERPARENT' 11 'STEP-FATHERMOTHERPARENT'
             12 'FATHERMOTHERPARENT-IN-LAW OR' 13 'GRANDFATHERMOTHERPARENT'
             14 'BROTHERSISTERSIBLING'
             15 'STEP-BROTHERSTEP-SISTERSTEP-SIBLING'
             16 'HALF-BROTHERHALF-SISTERHALF-SIBLING'
             17 'BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW'
             18 'GRANDSONDAUGHTERCHILD' 19 'OTHER RELATIVE' 20 'ROOMMATE'
             21 'FRIEND' 22 'OTHER NON-RELATIVE' 23 'SAME-SEX LOVER/PARTNER'
             97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCMB16  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCYB16  1900 '1900-2004' 2004 'DON''T KNOW' 9997 'REFUSED' 9998 'INAPP'
             /
   B1PHHA16  0 '0 TO 120 YEARS OLD' 120 'DON''T KNOW' 997 'REFUSED'
             998 'INAPP' /
   B1PCHC16  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHH16  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDD16  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDT16  101 'ASPERGERS SYNDROME' 102 'AUTISM' 103 'CEREBRAL PALSY (CP)'
             104 'COGNITIVE DISABILITY' 105 'DEVELOPMENTAL DISABILITY (DD)'
             106 'DOWN SYNDROME' 107 'FETAL ALCOHOL SYNDROME'
             108 'FRAGILE X SYNDROME' 109 'HYDROCEPHALUS'
             110 'INTELLECTUAL DISABILITY' 111 'INTELLECTUAL IMPAIRMENT'
             112 'MENTAL HANDICAP' 113 'MENTAL RETARDATION (MR)'
             114 'MENTAL DISABILITY' 115 'MENTAL IMPAIRMENT'
             116 'MICROCEPHALY' 117 'MUSCULAR DYSTROPHY'
             118 'PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)'
             119 'PRADER WILLI SYNDROME' 120 'RETARDATION' 121 'SPINA BIFIDA'
             178 'RETTS DISORDER' 222 'ATTENTION DEFICIT DISORDER (ADD)'
             223 'ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)'
             224 'HANDICAPPED' 225 'HYPERACTIVITY'
             226 'LEARNING DISABILITY PROBLEMS (LD)' 227 'MENTAL PROBLEMS'
             228 'SLOW IN SCHOOL SLOW LEARNER SLOW'
             229 'SPECIAL EDUCATION SPECIAL ED' 230 'SPEECH PROBLEMS'
             331 'EPILEPSY' 332 'SEIZURE DISORDER' 433 'BRAIN DAMAGE'
             434 'BRAIN INJURY BRAIN INJURED' 435 'CLOSED HEAD INJURY'
             436 'HEAD INJURY' 437 'TRAUMATIC BRAIN INJURY BRAIN INJURY'
             538 'BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)'
             539 'CYCLOTHYMIA' 540 'DELUSIONAL DISORDER'
             542 'SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER'
             543 'PSYCHOTIC DISORDER PSYCHOSIS' 586 'CLINICAL DEPRESSION'
             587 'MAJOR DEPRESSION' 588 'SEVERE DEPRESSION' 644 'AGORAPHOBIA'
             645 'ALCOHOLISM' 646 'ALZHEIMERS'
             647 'ANOREXIA or ANOREXIA NERVOSA' 648 'BULIMIA'
             649 'EATING DISORDER' 650 'ANXIETY or ANXIETY DISORDER'
             651 'BORDERLINE PERSONALITY DISORDER' 652 'DEMENTIA'
             653 'DRUG ABUSE' 654 'GAMBLING PROBLEM or PATHOLOGICAL GAMBLING'
             655 'OBSESSIVE COMPULSIVE DISORDER (OCD)'
             656 'PANIC ATTACKS DISORDER' 657 'PERSONALITY DISORDER'
             658 'PHOBIA' 659 'POSTTRAUMATIC STRESS DISORDERS (PTSD)'
             660 'SLEEP DISORDER (INSOMNIA)' 661 'SOMATIZATION'
             662 'DEPRESSION (MILD DEPRESSION)' 663 'DYSTHYMIA'
             762 'BIOCHEMICAL PROBLEM' 763 'BRAIN DISORDER' 764 'BREAKDOWN'
             765 'CHEMICAL IMBALANCE' 766 'EMOTIONAL PROBLEM DISORDER'
             767 'MANIC' 768 'MENTAL BREAKDOWN' 769 'MOOD PROBLEM DISORDER'
             770 'MENTALLY ILL' 771 'MENTAL HEALTH PROBLEMS'
             772 'NERVES NERVOUS CONDITION' 773 'PARANOID'
             774 'PSYCHOLOGICAL PROBLEMS' 779 'SUICIDAL SUICIDE ATTEMPT'
             875 'DEPRESSION' 976 'OTHER UNFAMILIAR CONDITION'
             977 'OTHER FAMILIAR CONDITION' 997 'DON''T KNOW' 998 'REFUSED'
             999 'INAPP' /
   B1PCDP16  1 'SINGLE EPISODE' 2 'LONG-TERM PROBLEM' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PCDA16  0 '0 TO 95 YEARS OLD' 95 'DON''T KNOW' 97 'REFUSED' 98 'INAPP' /
   B1PCDX16  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCXT16  1 'MAJOR DEPRESSION' 2 'SCHIZOPHRENIA'
             3 'BIPOLAR DISORDER (MANIC DEPRESSION)'
             4 'OTHER (SPECIFY FOLLOWED BY //)' 7 'DON''T KNOW' 8 'REFUSED'
             9 'INAPP' /
   B1PCDO16  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHA17  997 'DON''T KNOW' 998 'REFUSED' 999 'INAPP' /
   B1PCHX17  1 'MALE' 2 'FEMALE' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHR17  1 'HUSBANDWIFE SPOUSE'
             2 'LOVER/PARTNER PARTNER''S FATHERMOTHERPAR'
             3 'BIOLOGICAL CHILD' 4 'ADOPTED CHILD' 5 'STEP-CHILD'
             6 'FOSTER CHILD' 7 'CHILD OF LOVER/PARTNER'
             8 'OTHER CHILD (SPECIFY)'
             9 'SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW'
             10 'FATHERMOTHERPARENT' 11 'STEP-FATHERMOTHERPARENT'
             12 'FATHERMOTHERPARENT-IN-LAW OR' 13 'GRANDFATHERMOTHERPARENT'
             14 'BROTHERSISTERSIBLING'
             15 'STEP-BROTHERSTEP-SISTERSTEP-SIBLING'
             16 'HALF-BROTHERHALF-SISTERHALF-SIBLING'
             17 'BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW'
             18 'GRANDSONDAUGHTERCHILD' 19 'OTHER RELATIVE' 20 'ROOMMATE'
             21 'FRIEND' 22 'OTHER NON-RELATIVE' 23 'SAME-SEX LOVER/PARTNER'
             97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCMB17  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCYB17  1900 '1900-2004' 2004 'DON''T KNOW' 9997 'REFUSED' 9998 'INAPP'
             /
   B1PHHA17  0 '0 TO 120 YEARS OLD' 120 'DON''T KNOW' 997 'REFUSED'
             998 'INAPP' /
   B1PCHC17  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHH17  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDD17  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDT17  101 'ASPERGERS SYNDROME' 102 'AUTISM' 103 'CEREBRAL PALSY (CP)'
             104 'COGNITIVE DISABILITY' 105 'DEVELOPMENTAL DISABILITY (DD)'
             106 'DOWN SYNDROME' 107 'FETAL ALCOHOL SYNDROME'
             108 'FRAGILE X SYNDROME' 109 'HYDROCEPHALUS'
             110 'INTELLECTUAL DISABILITY' 111 'INTELLECTUAL IMPAIRMENT'
             112 'MENTAL HANDICAP' 113 'MENTAL RETARDATION (MR)'
             114 'MENTAL DISABILITY' 115 'MENTAL IMPAIRMENT'
             116 'MICROCEPHALY' 117 'MUSCULAR DYSTROPHY'
             118 'PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)'
             119 'PRADER WILLI SYNDROME' 120 'RETARDATION' 121 'SPINA BIFIDA'
             178 'RETTS DISORDER' 222 'ATTENTION DEFICIT DISORDER (ADD)'
             223 'ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)'
             224 'HANDICAPPED' 225 'HYPERACTIVITY'
             226 'LEARNING DISABILITY PROBLEMS (LD)' 227 'MENTAL PROBLEMS'
             228 'SLOW IN SCHOOL SLOW LEARNER SLOW'
             229 'SPECIAL EDUCATION SPECIAL ED' 230 'SPEECH PROBLEMS'
             331 'EPILEPSY' 332 'SEIZURE DISORDER' 433 'BRAIN DAMAGE'
             434 'BRAIN INJURY BRAIN INJURED' 435 'CLOSED HEAD INJURY'
             436 'HEAD INJURY' 437 'TRAUMATIC BRAIN INJURY BRAIN INJURY'
             538 'BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)'
             539 'CYCLOTHYMIA' 540 'DELUSIONAL DISORDER'
             542 'SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER'
             543 'PSYCHOTIC DISORDER PSYCHOSIS' 586 'CLINICAL DEPRESSION'
             587 'MAJOR DEPRESSION' 588 'SEVERE DEPRESSION' 644 'AGORAPHOBIA'
             645 'ALCOHOLISM' 646 'ALZHEIMERS'
             647 'ANOREXIA or ANOREXIA NERVOSA' 648 'BULIMIA'
             649 'EATING DISORDER' 650 'ANXIETY or ANXIETY DISORDER'
             651 'BORDERLINE PERSONALITY DISORDER' 652 'DEMENTIA'
             653 'DRUG ABUSE' 654 'GAMBLING PROBLEM or PATHOLOGICAL GAMBLING'
             655 'OBSESSIVE COMPULSIVE DISORDER (OCD)'
             656 'PANIC ATTACKS DISORDER' 657 'PERSONALITY DISORDER'
             658 'PHOBIA' 659 'POSTTRAUMATIC STRESS DISORDERS (PTSD)'
             660 'SLEEP DISORDER (INSOMNIA)' 661 'SOMATIZATION'
             662 'DEPRESSION (MILD DEPRESSION)' 663 'DYSTHYMIA'
             762 'BIOCHEMICAL PROBLEM' 763 'BRAIN DISORDER' 764 'BREAKDOWN'
             765 'CHEMICAL IMBALANCE' 766 'EMOTIONAL PROBLEM DISORDER'
             767 'MANIC' 768 'MENTAL BREAKDOWN' 769 'MOOD PROBLEM DISORDER'
             770 'MENTALLY ILL' 771 'MENTAL HEALTH PROBLEMS'
             772 'NERVES NERVOUS CONDITION' 773 'PARANOID'
             774 'PSYCHOLOGICAL PROBLEMS' 779 'SUICIDAL SUICIDE ATTEMPT'
             875 'DEPRESSION' 976 'OTHER UNFAMILIAR CONDITION'
             977 'OTHER FAMILIAR CONDITION' 997 'DON''T KNOW' 998 'REFUSED'
             999 'INAPP' /
   B1PCDP17  1 'SINGLE EPISODE' 2 'LONG-TERM PROBLEM' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PCDA17  0 '0 TO 95 YEARS OLD' 95 'DON''T KNOW' 97 'REFUSED' 98 'INAPP' /
   B1PCDX17  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCXT17  1 'MAJOR DEPRESSION' 2 'SCHIZOPHRENIA'
             3 'BIPOLAR DISORDER (MANIC DEPRESSION)'
             4 'OTHER (SPECIFY FOLLOWED BY //)' 7 'DON''T KNOW' 8 'REFUSED'
             9 'INAPP' /
   B1PCDO17  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHA18  997 'DON''T KNOW' 998 'REFUSED' 999 'INAPP' /
   B1PCHX18  1 'MALE' 2 'FEMALE' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHR18  1 'HUSBANDWIFE SPOUSE'
             2 'LOVER/PARTNER PARTNER''S FATHERMOTHERPAR'
             3 'BIOLOGICAL CHILD' 4 'ADOPTED CHILD' 5 'STEP-CHILD'
             6 'FOSTER CHILD' 7 'CHILD OF LOVER/PARTNER'
             8 'OTHER CHILD (SPECIFY)'
             9 'SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW'
             10 'FATHERMOTHERPARENT' 11 'STEP-FATHERMOTHERPARENT'
             12 'FATHERMOTHERPARENT-IN-LAW OR' 13 'GRANDFATHERMOTHERPARENT'
             14 'BROTHERSISTERSIBLING'
             15 'STEP-BROTHERSTEP-SISTERSTEP-SIBLING'
             16 'HALF-BROTHERHALF-SISTERHALF-SIBLING'
             17 'BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW'
             18 'GRANDSONDAUGHTERCHILD' 19 'OTHER RELATIVE' 20 'ROOMMATE'
             21 'FRIEND' 22 'OTHER NON-RELATIVE' 23 'SAME-SEX LOVER/PARTNER'
             97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCMB18  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCYB18  1900 '1900-2004' 2004 'DON''T KNOW' 9997 'REFUSED' 9998 'INAPP'
             /
   B1PHHA18  0 '0 TO 120 YEARS OLD' 120 'DON''T KNOW' 997 'REFUSED'
             998 'INAPP' /
   B1PCHC18  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHH18  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDD18  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDT18  101 'ASPERGERS SYNDROME' 102 'AUTISM' 103 'CEREBRAL PALSY (CP)'
             104 'COGNITIVE DISABILITY' 105 'DEVELOPMENTAL DISABILITY (DD)'
             106 'DOWN SYNDROME' 107 'FETAL ALCOHOL SYNDROME'
             108 'FRAGILE X SYNDROME' 109 'HYDROCEPHALUS'
             110 'INTELLECTUAL DISABILITY' 111 'INTELLECTUAL IMPAIRMENT'
             112 'MENTAL HANDICAP' 113 'MENTAL RETARDATION (MR)'
             114 'MENTAL DISABILITY' 115 'MENTAL IMPAIRMENT'
             116 'MICROCEPHALY' 117 'MUSCULAR DYSTROPHY'
             118 'PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)'
             119 'PRADER WILLI SYNDROME' 120 'RETARDATION' 121 'SPINA BIFIDA'
             178 'RETTS DISORDER' 222 'ATTENTION DEFICIT DISORDER (ADD)'
             223 'ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)'
             224 'HANDICAPPED' 225 'HYPERACTIVITY'
             226 'LEARNING DISABILITY PROBLEMS (LD)' 227 'MENTAL PROBLEMS'
             228 'SLOW IN SCHOOL SLOW LEARNER SLOW'
             229 'SPECIAL EDUCATION SPECIAL ED' 230 'SPEECH PROBLEMS'
             331 'EPILEPSY' 332 'SEIZURE DISORDER' 433 'BRAIN DAMAGE'
             434 'BRAIN INJURY BRAIN INJURED' 435 'CLOSED HEAD INJURY'
             436 'HEAD INJURY' 437 'TRAUMATIC BRAIN INJURY BRAIN INJURY'
             538 'BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)'
             539 'CYCLOTHYMIA' 540 'DELUSIONAL DISORDER'
             542 'SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER'
             543 'PSYCHOTIC DISORDER PSYCHOSIS' 586 'CLINICAL DEPRESSION'
             587 'MAJOR DEPRESSION' 588 'SEVERE DEPRESSION' 644 'AGORAPHOBIA'
             645 'ALCOHOLISM' 646 'ALZHEIMERS'
             647 'ANOREXIA or ANOREXIA NERVOSA' 648 'BULIMIA'
             649 'EATING DISORDER' 650 'ANXIETY or ANXIETY DISORDER'
             651 'BORDERLINE PERSONALITY DISORDER' 652 'DEMENTIA'
             653 'DRUG ABUSE' 654 'GAMBLING PROBLEM or PATHOLOGICAL GAMBLING'
             655 'OBSESSIVE COMPULSIVE DISORDER (OCD)'
             656 'PANIC ATTACKS DISORDER' 657 'PERSONALITY DISORDER'
             658 'PHOBIA' 659 'POSTTRAUMATIC STRESS DISORDERS (PTSD)'
             660 'SLEEP DISORDER (INSOMNIA)' 661 'SOMATIZATION'
             662 'DEPRESSION (MILD DEPRESSION)' 663 'DYSTHYMIA'
             762 'BIOCHEMICAL PROBLEM' 763 'BRAIN DISORDER' 764 'BREAKDOWN'
             765 'CHEMICAL IMBALANCE' 766 'EMOTIONAL PROBLEM DISORDER'
             767 'MANIC' 768 'MENTAL BREAKDOWN' 769 'MOOD PROBLEM DISORDER'
             770 'MENTALLY ILL' 771 'MENTAL HEALTH PROBLEMS'
             772 'NERVES NERVOUS CONDITION' 773 'PARANOID'
             774 'PSYCHOLOGICAL PROBLEMS' 779 'SUICIDAL SUICIDE ATTEMPT'
             875 'DEPRESSION' 976 'OTHER UNFAMILIAR CONDITION'
             977 'OTHER FAMILIAR CONDITION' 997 'DON''T KNOW' 998 'REFUSED'
             999 'INAPP' /
   B1PCDP18  1 'SINGLE EPISODE' 2 'LONG-TERM PROBLEM' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PCDA18  0 '0 TO 95 YEARS OLD' 95 'DON''T KNOW' 97 'REFUSED' 98 'INAPP' /
   B1PCDX18  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCXT18  1 'MAJOR DEPRESSION' 2 'SCHIZOPHRENIA'
             3 'BIPOLAR DISORDER (MANIC DEPRESSION)'
             4 'OTHER (SPECIFY FOLLOWED BY //)' 7 'DON''T KNOW' 8 'REFUSED'
             9 'INAPP' /
   B1PCDO18  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHA19  997 'DON''T KNOW' 998 'REFUSED' 999 'INAPP' /
   B1PCHX19  1 'MALE' 2 'FEMALE' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHR19  1 'HUSBANDWIFE SPOUSE'
             2 'LOVER/PARTNER PARTNER''S FATHERMOTHERPAR'
             3 'BIOLOGICAL CHILD' 4 'ADOPTED CHILD' 5 'STEP-CHILD'
             6 'FOSTER CHILD' 7 'CHILD OF LOVER/PARTNER'
             8 'OTHER CHILD (SPECIFY)'
             9 'SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW'
             10 'FATHERMOTHERPARENT' 11 'STEP-FATHERMOTHERPARENT'
             12 'FATHERMOTHERPARENT-IN-LAW OR' 13 'GRANDFATHERMOTHERPARENT'
             14 'BROTHERSISTERSIBLING'
             15 'STEP-BROTHERSTEP-SISTERSTEP-SIBLING'
             16 'HALF-BROTHERHALF-SISTERHALF-SIBLING'
             17 'BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW'
             18 'GRANDSONDAUGHTERCHILD' 19 'OTHER RELATIVE' 20 'ROOMMATE'
             21 'FRIEND' 22 'OTHER NON-RELATIVE' 23 'SAME-SEX LOVER/PARTNER'
             97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCMB19  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCYB19  1900 '1900-2004' 2004 'DON''T KNOW' 9997 'REFUSED' 9998 'INAPP'
             /
   B1PHHA19  0 '0 TO 120 YEARS OLD' 120 'DON''T KNOW' 997 'REFUSED'
             998 'INAPP' /
   B1PCHC19  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHH19  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDD19  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDT19  101 'ASPERGERS SYNDROME' 102 'AUTISM' 103 'CEREBRAL PALSY (CP)'
             104 'COGNITIVE DISABILITY' 105 'DEVELOPMENTAL DISABILITY (DD)'
             106 'DOWN SYNDROME' 107 'FETAL ALCOHOL SYNDROME'
             108 'FRAGILE X SYNDROME' 109 'HYDROCEPHALUS'
             110 'INTELLECTUAL DISABILITY' 111 'INTELLECTUAL IMPAIRMENT'
             112 'MENTAL HANDICAP' 113 'MENTAL RETARDATION (MR)'
             114 'MENTAL DISABILITY' 115 'MENTAL IMPAIRMENT'
             116 'MICROCEPHALY' 117 'MUSCULAR DYSTROPHY'
             118 'PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)'
             119 'PRADER WILLI SYNDROME' 120 'RETARDATION' 121 'SPINA BIFIDA'
             178 'RETTS DISORDER' 222 'ATTENTION DEFICIT DISORDER (ADD)'
             223 'ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)'
             224 'HANDICAPPED' 225 'HYPERACTIVITY'
             226 'LEARNING DISABILITY PROBLEMS (LD)' 227 'MENTAL PROBLEMS'
             228 'SLOW IN SCHOOL SLOW LEARNER SLOW'
             229 'SPECIAL EDUCATION SPECIAL ED' 230 'SPEECH PROBLEMS'
             331 'EPILEPSY' 332 'SEIZURE DISORDER' 433 'BRAIN DAMAGE'
             434 'BRAIN INJURY BRAIN INJURED' 435 'CLOSED HEAD INJURY'
             436 'HEAD INJURY' 437 'TRAUMATIC BRAIN INJURY BRAIN INJURY'
             538 'BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)'
             539 'CYCLOTHYMIA' 540 'DELUSIONAL DISORDER'
             542 'SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER'
             543 'PSYCHOTIC DISORDER PSYCHOSIS' 586 'CLINICAL DEPRESSION'
             587 'MAJOR DEPRESSION' 588 'SEVERE DEPRESSION' 644 'AGORAPHOBIA'
             645 'ALCOHOLISM' 646 'ALZHEIMERS'
             647 'ANOREXIA or ANOREXIA NERVOSA' 648 'BULIMIA'
             649 'EATING DISORDER' 650 'ANXIETY or ANXIETY DISORDER'
             651 'BORDERLINE PERSONALITY DISORDER' 652 'DEMENTIA'
             653 'DRUG ABUSE' 654 'GAMBLING PROBLEM or PATHOLOGICAL GAMBLING'
             655 'OBSESSIVE COMPULSIVE DISORDER (OCD)'
             656 'PANIC ATTACKS DISORDER' 657 'PERSONALITY DISORDER'
             658 'PHOBIA' 659 'POSTTRAUMATIC STRESS DISORDERS (PTSD)'
             660 'SLEEP DISORDER (INSOMNIA)' 661 'SOMATIZATION'
             662 'DEPRESSION (MILD DEPRESSION)' 663 'DYSTHYMIA'
             762 'BIOCHEMICAL PROBLEM' 763 'BRAIN DISORDER' 764 'BREAKDOWN'
             765 'CHEMICAL IMBALANCE' 766 'EMOTIONAL PROBLEM DISORDER'
             767 'MANIC' 768 'MENTAL BREAKDOWN' 769 'MOOD PROBLEM DISORDER'
             770 'MENTALLY ILL' 771 'MENTAL HEALTH PROBLEMS'
             772 'NERVES NERVOUS CONDITION' 773 'PARANOID'
             774 'PSYCHOLOGICAL PROBLEMS' 779 'SUICIDAL SUICIDE ATTEMPT'
             875 'DEPRESSION' 976 'OTHER UNFAMILIAR CONDITION'
             977 'OTHER FAMILIAR CONDITION' 997 'DON''T KNOW' 998 'REFUSED'
             999 'INAPP' /
   B1PCDP19  1 'SINGLE EPISODE' 2 'LONG-TERM PROBLEM' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PCDA19  0 '0 TO 95 YEARS OLD' 95 'DON''T KNOW' 97 'REFUSED' 98 'INAPP' /
   B1PCDX19  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCXT19  1 'MAJOR DEPRESSION' 2 'SCHIZOPHRENIA'
             3 'BIPOLAR DISORDER (MANIC DEPRESSION)'
             4 'OTHER (SPECIFY FOLLOWED BY //)' 7 'DON''T KNOW' 8 'REFUSED'
             9 'INAPP' /
   B1PCDO19  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHA20  997 'DON''T KNOW' 998 'REFUSED' 999 'INAPP' /
   B1PCHX20  1 'MALE' 2 'FEMALE' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHR20  1 'HUSBANDWIFE SPOUSE'
             2 'LOVER/PARTNER PARTNER''S FATHERMOTHERPAR'
             3 'BIOLOGICAL CHILD' 4 'ADOPTED CHILD' 5 'STEP-CHILD'
             6 'FOSTER CHILD' 7 'CHILD OF LOVER/PARTNER'
             8 'OTHER CHILD (SPECIFY)'
             9 'SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW'
             10 'FATHERMOTHERPARENT' 11 'STEP-FATHERMOTHERPARENT'
             12 'FATHERMOTHERPARENT-IN-LAW OR' 13 'GRANDFATHERMOTHERPARENT'
             14 'BROTHERSISTERSIBLING'
             15 'STEP-BROTHERSTEP-SISTERSTEP-SIBLING'
             16 'HALF-BROTHERHALF-SISTERHALF-SIBLING'
             17 'BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW'
             18 'GRANDSONDAUGHTERCHILD' 19 'OTHER RELATIVE' 20 'ROOMMATE'
             21 'FRIEND' 22 'OTHER NON-RELATIVE' 23 'SAME-SEX LOVER/PARTNER'
             97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCMB20  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCYB20  1900 '1900-2004' 2004 'DON''T KNOW' 9997 'REFUSED' 9998 'INAPP'
             /
   B1PHHA20  0 '0 TO 120 YEARS OLD' 120 'DON''T KNOW' 997 'REFUSED'
             998 'INAPP' /
   B1PCHC20  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHH20  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDD20  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDT20  101 'ASPERGERS SYNDROME' 102 'AUTISM' 103 'CEREBRAL PALSY (CP)'
             104 'COGNITIVE DISABILITY' 105 'DEVELOPMENTAL DISABILITY (DD)'
             106 'DOWN SYNDROME' 107 'FETAL ALCOHOL SYNDROME'
             108 'FRAGILE X SYNDROME' 109 'HYDROCEPHALUS'
             110 'INTELLECTUAL DISABILITY' 111 'INTELLECTUAL IMPAIRMENT'
             112 'MENTAL HANDICAP' 113 'MENTAL RETARDATION (MR)'
             114 'MENTAL DISABILITY' 115 'MENTAL IMPAIRMENT'
             116 'MICROCEPHALY' 117 'MUSCULAR DYSTROPHY'
             118 'PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)'
             119 'PRADER WILLI SYNDROME' 120 'RETARDATION' 121 'SPINA BIFIDA'
             178 'RETTS DISORDER' 222 'ATTENTION DEFICIT DISORDER (ADD)'
             223 'ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)'
             224 'HANDICAPPED' 225 'HYPERACTIVITY'
             226 'LEARNING DISABILITY PROBLEMS (LD)' 227 'MENTAL PROBLEMS'
             228 'SLOW IN SCHOOL SLOW LEARNER SLOW'
             229 'SPECIAL EDUCATION SPECIAL ED' 230 'SPEECH PROBLEMS'
             331 'EPILEPSY' 332 'SEIZURE DISORDER' 433 'BRAIN DAMAGE'
             434 'BRAIN INJURY BRAIN INJURED' 435 'CLOSED HEAD INJURY'
             436 'HEAD INJURY' 437 'TRAUMATIC BRAIN INJURY BRAIN INJURY'
             538 'BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)'
             539 'CYCLOTHYMIA' 540 'DELUSIONAL DISORDER'
             542 'SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER'
             543 'PSYCHOTIC DISORDER PSYCHOSIS' 586 'CLINICAL DEPRESSION'
             587 'MAJOR DEPRESSION' 588 'SEVERE DEPRESSION' 644 'AGORAPHOBIA'
             645 'ALCOHOLISM' 646 'ALZHEIMERS'
             647 'ANOREXIA or ANOREXIA NERVOSA' 648 'BULIMIA'
             649 'EATING DISORDER' 650 'ANXIETY or ANXIETY DISORDER'
             651 'BORDERLINE PERSONALITY DISORDER' 652 'DEMENTIA'
             653 'DRUG ABUSE' 654 'GAMBLING PROBLEM or PATHOLOGICAL GAMBLING'
             655 'OBSESSIVE COMPULSIVE DISORDER (OCD)'
             656 'PANIC ATTACKS DISORDER' 657 'PERSONALITY DISORDER'
             658 'PHOBIA' 659 'POSTTRAUMATIC STRESS DISORDERS (PTSD)'
             660 'SLEEP DISORDER (INSOMNIA)' 661 'SOMATIZATION'
             662 'DEPRESSION (MILD DEPRESSION)' 663 'DYSTHYMIA'
             762 'BIOCHEMICAL PROBLEM' 763 'BRAIN DISORDER' 764 'BREAKDOWN'
             765 'CHEMICAL IMBALANCE' 766 'EMOTIONAL PROBLEM DISORDER'
             767 'MANIC' 768 'MENTAL BREAKDOWN' 769 'MOOD PROBLEM DISORDER'
             770 'MENTALLY ILL' 771 'MENTAL HEALTH PROBLEMS'
             772 'NERVES NERVOUS CONDITION' 773 'PARANOID'
             774 'PSYCHOLOGICAL PROBLEMS' 779 'SUICIDAL SUICIDE ATTEMPT'
             875 'DEPRESSION' 976 'OTHER UNFAMILIAR CONDITION'
             977 'OTHER FAMILIAR CONDITION' 997 'DON''T KNOW' 998 'REFUSED'
             999 'INAPP' /
   B1PCDP20  1 'SINGLE EPISODE' 2 'LONG-TERM PROBLEM' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PCDA20  0 '0 TO 95 YEARS OLD' 95 'DON''T KNOW' 97 'REFUSED' 98 'INAPP' /
   B1PCDX20  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCXT20  1 'MAJOR DEPRESSION' 2 'SCHIZOPHRENIA'
             3 'BIPOLAR DISORDER (MANIC DEPRESSION)'
             4 'OTHER (SPECIFY FOLLOWED BY //)' 7 'DON''T KNOW' 8 'REFUSED'
             9 'INAPP' /
   B1PCDO20  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHA21  997 'DON''T KNOW' 998 'REFUSED' 999 'INAPP' /
   B1PCHX21  1 'MALE' 2 'FEMALE' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHR21  1 'HUSBANDWIFE SPOUSE'
             2 'LOVER/PARTNER PARTNER''S FATHERMOTHERPAR'
             3 'BIOLOGICAL CHILD' 4 'ADOPTED CHILD' 5 'STEP-CHILD'
             6 'FOSTER CHILD' 7 'CHILD OF LOVER/PARTNER'
             8 'OTHER CHILD (SPECIFY)'
             9 'SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW'
             10 'FATHERMOTHERPARENT' 11 'STEP-FATHERMOTHERPARENT'
             12 'FATHERMOTHERPARENT-IN-LAW OR' 13 'GRANDFATHERMOTHERPARENT'
             14 'BROTHERSISTERSIBLING'
             15 'STEP-BROTHERSTEP-SISTERSTEP-SIBLING'
             16 'HALF-BROTHERHALF-SISTERHALF-SIBLING'
             17 'BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW'
             18 'GRANDSONDAUGHTERCHILD' 19 'OTHER RELATIVE' 20 'ROOMMATE'
             21 'FRIEND' 22 'OTHER NON-RELATIVE' 23 'SAME-SEX LOVER/PARTNER'
             97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCMB21  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PCYB21  1900 '1900-2004' 2004 'DON''T KNOW' 9997 'REFUSED' 9998 'INAPP'
             /
   B1PHHA21  0 '0 TO 120 YEARS OLD' 120 'DON''T KNOW' 997 'REFUSED'
             998 'INAPP' /
   B1PCHC21  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHH21  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDD21  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCDT21  101 'ASPERGERS SYNDROME' 102 'AUTISM' 103 'CEREBRAL PALSY (CP)'
             104 'COGNITIVE DISABILITY' 105 'DEVELOPMENTAL DISABILITY (DD)'
             106 'DOWN SYNDROME' 107 'FETAL ALCOHOL SYNDROME'
             108 'FRAGILE X SYNDROME' 109 'HYDROCEPHALUS'
             110 'INTELLECTUAL DISABILITY' 111 'INTELLECTUAL IMPAIRMENT'
             112 'MENTAL HANDICAP' 113 'MENTAL RETARDATION (MR)'
             114 'MENTAL DISABILITY' 115 'MENTAL IMPAIRMENT'
             116 'MICROCEPHALY' 117 'MUSCULAR DYSTROPHY'
             118 'PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)'
             119 'PRADER WILLI SYNDROME' 120 'RETARDATION' 121 'SPINA BIFIDA'
             178 'RETTS DISORDER' 222 'ATTENTION DEFICIT DISORDER (ADD)'
             223 'ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)'
             224 'HANDICAPPED' 225 'HYPERACTIVITY'
             226 'LEARNING DISABILITY PROBLEMS (LD)' 227 'MENTAL PROBLEMS'
             228 'SLOW IN SCHOOL SLOW LEARNER SLOW'
             229 'SPECIAL EDUCATION SPECIAL ED' 230 'SPEECH PROBLEMS'
             331 'EPILEPSY' 332 'SEIZURE DISORDER' 433 'BRAIN DAMAGE'
             434 'BRAIN INJURY BRAIN INJURED' 435 'CLOSED HEAD INJURY'
             436 'HEAD INJURY' 437 'TRAUMATIC BRAIN INJURY BRAIN INJURY'
             538 'BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)'
             539 'CYCLOTHYMIA' 540 'DELUSIONAL DISORDER'
             542 'SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER'
             543 'PSYCHOTIC DISORDER PSYCHOSIS' 586 'CLINICAL DEPRESSION'
             587 'MAJOR DEPRESSION' 588 'SEVERE DEPRESSION' 644 'AGORAPHOBIA'
             645 'ALCOHOLISM' 646 'ALZHEIMERS'
             647 'ANOREXIA or ANOREXIA NERVOSA' 648 'BULIMIA'
             649 'EATING DISORDER' 650 'ANXIETY or ANXIETY DISORDER'
             651 'BORDERLINE PERSONALITY DISORDER' 652 'DEMENTIA'
             653 'DRUG ABUSE' 654 'GAMBLING PROBLEM or PATHOLOGICAL GAMBLING'
             655 'OBSESSIVE COMPULSIVE DISORDER (OCD)'
             656 'PANIC ATTACKS DISORDER' 657 'PERSONALITY DISORDER'
             658 'PHOBIA' 659 'POSTTRAUMATIC STRESS DISORDERS (PTSD)'
             660 'SLEEP DISORDER (INSOMNIA)' 661 'SOMATIZATION'
             662 'DEPRESSION (MILD DEPRESSION)' 663 'DYSTHYMIA'
             762 'BIOCHEMICAL PROBLEM' 763 'BRAIN DISORDER' 764 'BREAKDOWN'
             765 'CHEMICAL IMBALANCE' 766 'EMOTIONAL PROBLEM DISORDER'
             767 'MANIC' 768 'MENTAL BREAKDOWN' 769 'MOOD PROBLEM DISORDER'
             770 'MENTALLY ILL' 771 'MENTAL HEALTH PROBLEMS'
             772 'NERVES NERVOUS CONDITION' 773 'PARANOID'
             774 'PSYCHOLOGICAL PROBLEMS' 779 'SUICIDAL SUICIDE ATTEMPT'
             875 'DEPRESSION' 976 'OTHER UNFAMILIAR CONDITION'
             977 'OTHER FAMILIAR CONDITION' 997 'DON''T KNOW' 998 'REFUSED'
             999 'INAPP' /
   B1PCDP21  1 'SINGLE EPISODE' 2 'LONG-TERM PROBLEM' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PCDA21  0 '0 TO 95 YEARS OLD' 95 'DON''T KNOW' 97 'REFUSED' 98 'INAPP' /
   B1PCDX21  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCXT21  1 'MAJOR DEPRESSION' 2 'SCHIZOPHRENIA'
             3 'BIPOLAR DISORDER (MANIC DEPRESSION)'
             4 'OTHER (SPECIFY FOLLOWED BY //)' 7 'DON''T KNOW' 8 'REFUSED'
             9 'INAPP' /
   B1PCDO21  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PC5     97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PKHSIZ  97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PC6     1 'YES (SPECIFY)' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PCHM1N  9 'INAPP' /
   B1PCHM2N  9 'INAPP' /
   B1PCHM1X  0 'NO' 1 'YES' 9 'INAPP' /
   B1PCHM2X  0 'NO' 1 'YES' 9 'INAPP' /
   B1PDCSX   7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PD1     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PD2     1 'HUSBAND' 2 'WIFE' 3 'SON' 4 'DAUGHTER' 5 'FATHER' 6 'MOTHER'
             7 'BROTHER' 8 'SISTER' 9 'GRANDFATHER' 10 'GRANDMOTHER'
             11 'FATHER-IN-LAW' 12 'MOTHER-IN-LAW' 13 'OTHER (SPECIFY)'
             97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PD3     1 'MALE' 2 'FEMALE' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PD4     1 'CONDITION(S) GIVEN (SPECIFY)' 2 'NO SPECIFIC CONDITION'
             7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PD5M    1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PD5Y    9997 'DON''T KNOW' 9998 'REFUSED' 9999 'INAPP' /
   B1PD7     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PD8A    1 'SHE NO LONGER NEEDS CARE' 2 'SOMEONE ELSE IS HELPING'
             3 'THIS PERSON IS DECEASED' 4 'SOME OTHER REASON (SPECIFY)'
             7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PD8B    1 'SHE NO LONGER NEEDS CARE' 2 'SOMEONE ELSE IS HELPING'
             3 'THIS PERSON IS DECEASED' 4 'SOME OTHER REASON (SPECIFY)'
             7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PD9     1 'YES' 2 'NO' 3 'SOME OF THE TIME' 7 'DON''T KNOW' 8 'REFUSED'
             9 'INAPP' /
   B1PD10    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PD11    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PD12    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PD13    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PD14    97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PD15    96 '96 OR MORE HOURS' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PD16    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PD17    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PD18    997 'DON''T KNOW' 998 'REFUSED' 999 'INAPP' /
   B1PD19N   97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PD19M   1 'MONTHS' 2 'YEARS' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PD20    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PD21    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PD22    97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PE1     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PE1A1   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PE1A2   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PE1A3   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PE1A4   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PE1A5   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PE1A6   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PE1A7   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PE1BN   997 'DON''T KNOW' 998 'REFUSED' 999 'INAPP' /
   B1PE1BM   1 'DAYS' 2 'WEEKS' 3 'MONTHS' 4 'YEARS' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PE2     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PE2AN   997 'DON''T KNOW' 998 'REFUSED' 999 'INAPP' /
   B1PE2AM   1 'DAYS' 2 'WEEKS' 3 'MONTHS' 4 'YEARS' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PE3     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PE3AN   997 'DON''T KNOW' 998 'REFUSED' 999 'INAPP' /
   B1PE3AM   1 'DAYS' 2 'WEEKS' 3 'MONTHS' 4 'YEARS' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PF1     1 'NOT SPANISH/HISPANIC' 2 'MEXICAN' 3 'MEXICAN AMERICAN'
             4 'CHICANO' 5 'PUERTO RICAN' 6 'CUBAN'
             7 'OTHER SPANISH (SPECIFY)' 97 'DON''T KNOW' 98 'REFUSED'
             99 'INAPP' /
   B1PF2A    1 'AMIND-NAM' 2 'BAHAMAS' 3 'CANADA' 4 'COSTARICA' 5 'CUBA'
             6 'DOMREP' 7 'ELSALVADOR' 8 'GUATEMALA' 9 'HAITI' 10 'HONDURAS'
             11 'JAMAICA' 12 'MEXICO' 13 'NICARAGUA' 14 'PANAMA'
             15 'PUERTORICO' 16 'ST.VINCENT' 17 'TRINIDAD'
             18 'CENTAL AM-CARIB' 20 'ARGENTINA' 21 'BOLIVIA' 22 'BRAZIL'
             23 'CHILE' 24 'COLOMBIA' 25 'ECUADOR' 26 'PERU' 27 'VENEZUELA'
             28 'SOUTH AMERICA' 30 'CZECH' 31 'ENGLAND' 32 'FRANCE'
             33 'GERMANY' 34 'GREECE' 35 'HUNGARY' 36 'IRELAND' 37 'ITALY'
             38 'NORWAY' 39 'POLAND' 40 'PORTUGAL' 41 'USSR-RUSSIA'
             42 'SCOTLAND' 43 'SPAIN' 44 'SWEDEN' 45 'NETHERLAND'
             46 'YUGOSLAV' 47 'EAST EUROPE' 48 'WEST EUROPE' 50 'CHINA'
             51 'INDIA' 52 'JAPAN' 53 'KOREA' 54 'PHILIPPINE' 55 'SINGAPORE'
             56 'TAIWAN' 57 'THAILAND' 58 'ASIA' 60 'EGYPT' 61 'KENYA'
             62 'NIGERIA' 63 'SOUTH AFRICA' 64 'ZAIRE' 65 'ZIMBABWE'
             66 'AFRICA' 68 'IRAN' 69 'IRAQ' 70 'ISRAEL' 71 'LEBANON'
             72 'PAKISTAN' 73 'SAUDI ARABIA' 74 'MIDEAST'
             96 'OTHER (SPECIFY)' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PF2B    1 'AMIND-NAM' 2 'BAHAMAS' 3 'CANADA' 4 'COSTARICA' 5 'CUBA'
             6 'DOMREP' 7 'ELSALVADOR' 8 'GUATEMALA' 9 'HAITI' 10 'HONDURAS'
             11 'JAMAICA' 12 'MEXICO' 13 'NICARAGUA' 14 'PANAMA'
             15 'PUERTORICO' 16 'ST.VINCENT' 17 'TRINIDAD'
             18 'CENTAL AM-CARIB' 20 'ARGENTINA' 21 'BOLIVIA' 22 'BRAZIL'
             23 'CHILE' 24 'COLOMBIA' 25 'ECUADOR' 26 'PERU' 27 'VENEZUELA'
             28 'SOUTH AMERICA' 30 'CZECH' 31 'ENGLAND' 32 'FRANCE'
             33 'GERMANY' 34 'GREECE' 35 'HUNGARY' 36 'IRELAND' 37 'ITALY'
             38 'NORWAY' 39 'POLAND' 40 'PORTUGAL' 41 'USSR-RUSSIA'
             42 'SCOTLAND' 43 'SPAIN' 44 'SWEDEN' 45 'NETHERLAND'
             46 'YUGOSLAV' 47 'EAST EUROPE' 48 'WEST EUROPE' 50 'CHINA'
             51 'INDIA' 52 'JAPAN' 53 'KOREA' 54 'PHILIPPINE' 55 'SINGAPORE'
             56 'TAIWAN' 57 'THAILAND' 58 'ASIA' 60 'EGYPT' 61 'KENYA'
             62 'NIGERIA' 63 'SOUTH AFRICA' 64 'ZAIRE' 65 'ZIMBABWE'
             66 'AFRICA' 68 'IRAN' 69 'IRAQ' 70 'ISRAEL' 71 'LEBANON'
             72 'PAKISTAN' 73 'SAUDI ARABIA' 74 'MIDEAST'
             96 'OTHER (SPECIFY)' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PF2C    1 'AMIND-NAM' 2 'BAHAMAS' 3 'CANADA' 4 'COSTARICA' 5 'CUBA'
             6 'DOMREP' 7 'ELSALVADOR' 8 'GUATEMALA' 9 'HAITI' 10 'HONDURAS'
             11 'JAMAICA' 12 'MEXICO' 13 'NICARAGUA' 14 'PANAMA'
             15 'PUERTORICO' 16 'ST.VINCENT' 17 'TRINIDAD'
             18 'CENTAL AM-CARIB' 20 'ARGENTINA' 21 'BOLIVIA' 22 'BRAZIL'
             23 'CHILE' 24 'COLOMBIA' 25 'ECUADOR' 26 'PERU' 27 'VENEZUELA'
             28 'SOUTH AMERICA' 30 'CZECH' 31 'ENGLAND' 32 'FRANCE'
             33 'GERMANY' 34 'GREECE' 35 'HUNGARY' 36 'IRELAND' 37 'ITALY'
             38 'NORWAY' 39 'POLAND' 40 'PORTUGAL' 41 'USSR-RUSSIA'
             42 'SCOTLAND' 43 'SPAIN' 44 'SWEDEN' 45 'NETHERLAND'
             46 'YUGOSLAV' 47 'EAST EUROPE' 48 'WEST EUROPE' 50 'CHINA'
             51 'INDIA' 52 'JAPAN' 53 'KOREA' 54 'PHILIPPINE' 55 'SINGAPORE'
             56 'TAIWAN' 57 'THAILAND' 58 'ASIA' 60 'EGYPT' 61 'KENYA'
             62 'NIGERIA' 63 'SOUTH AFRICA' 64 'ZAIRE' 65 'ZIMBABWE'
             66 'AFRICA' 68 'IRAN' 69 'IRAQ' 70 'ISRAEL' 71 'LEBANON'
             72 'PAKISTAN' 73 'SAUDI ARABIA' 74 'MIDEAST'
             96 'OTHER (SPECIFY)' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PF2_1   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_3   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_4   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_5   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_6   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_7   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_9   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_10  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_11  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_12  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_13  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_14  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_15  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_17  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_18  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_22  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_24  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_30  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_31  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_32  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_33  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_34  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_35  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_36  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_37  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_38  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_39  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_40  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_41  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_42  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_43  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_44  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_45  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_46  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_47  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_48  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_50  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_51  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_52  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_53  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_54  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_56  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_57  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_58  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_66  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_69  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_70  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_71  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_74  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF2_96  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF3     1 'b1pf2a' 2 'b1f2b' 3 'b1f2c' 4 'OTHER' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PF3_1   1 'AMERICAN INDIAN/NATIVE AMERICAN' 3 'CANADA' 4 'COSTA RICA'
             5 'CUBA' 6 'DOMINICAN REPUBLIC' 7 'EL SALVADOR' 9 'HAITI'
             10 'HONDURAS' 11 'JAMAICA' 12 'MEXICO' 13 'NICARAGUA'
             14 'PANAMA' 15 'PUERTO RICO' 17 'TRINIDAD'
             18 'CENTRAL AMERICAN/CARIBBEAN' 22 'BRAZIL' 24 'COLOMBIA'
             30 'CZECH' 31 'ENGLAND' 32 'FRANCE' 33 'GERMANY' 34 'GREECE'
             35 'HUNGARY' 36 'IRELAND' 37 'ITALY' 38 'NORWAY' 39 'POLAND'
             40 'PORTUGAL' 41 'USSR-RUSSIA' 42 'SCOTLAND' 43 'SPAIN'
             44 'SWEDEN' 45 'NETHERLANDS' 46 'YUGOSLAVIA' 47 'EAST EUROPE'
             48 'WEST EUROPE' 50 'CHINA' 51 'INDIA' 52 'JAPAN' 53 'KOREA'
             54 'PHILLIPINES' 56 'TAIWAN' 57 'THAILAND' 58 'ASIA' 66 'AFRICA'
             69 'IRAQ' 70 'ISRAEL' 71 'LEBANON' 74 'MIDEAST'
             96 'OTHER (SPECIFY)' 97 'DON''T KNOW' 98 'REFUSED' 99 'INAPP' /
   B1PF4     1 'VERY CLOSELY' 2 'SOMEWHAT CLOSELY' 3 'NOT VERY CLOSELY'
             4 'NOT AT ALL CLOSELY' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF5     1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PF6     1 'VERY IMPORTANT' 2 'SOMEWHAT IMPORTANT' 3 'NOT VERY IMPORTANT'
             4 'NOT AT ALL IMPORTANT' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF7A    1 'WHITE' 2 'BLACK AND/OR AFRICAN AMERICAN'
             3 'NATIVE AMERICAN OR ALASKA NATIVE ALEUTIAN ISLANDER/ESKIMO'
             4 'ASIAN' 5 'NATIVE HAWAIIAN OR PACIFIC ISLANDER'
             6 'OTHER (SPECIFY)' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF7B    1 'WHITE' 2 'BLACK AND/OR AFRICAN AMERICAN'
             3 'NATIVE AMERICAN OR ALASKA NATIVE ALEUTIAN ISLANDER/ESKIMO'
             4 'ASIAN' 5 'NATIVE HAWAIIAN OR PACIFIC ISLANDER'
             6 'OTHER (SPECIFY)' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF7C    1 'WHITE' 2 'BLACK AND/OR AFRICAN AMERICAN'
             3 'NATIVE AMERICAN OR ALASKA NATIVE ALEUTIAN ISLANDER/ESKIMO'
             4 'ASIAN' 5 'NATIVE HAWAIIAN OR PACIFIC ISLANDER'
             6 'OTHER (SPECIFY)' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF7D    1 'WHITE' 2 'BLACK AND/OR AFRICAN AMERICAN'
             3 'NATIVE AMERICAN OR ALASKA NATIVE ALEUTIAN ISLANDER/ESKIMO'
             4 'ASIAN' 5 'NATIVE HAWAIIAN OR PACIFIC ISLANDER'
             6 'OTHER (SPECIFY)' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF8A    1 'WHITE' 2 'BLACK AND/OR AFRICAN AMERICAN'
             3 'NATIVE AMERICAN OR ALASKA NATIVE ALEUTIAN ISLANDER/ESKIMO'
             4 'ASIAN' 5 'NATIVE HAWAIIAN OR PACIFIC ISLANDER'
             6 'OTHER (SPECIFY)' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF8B    1 'WHITE' 2 'BLACK AND/OR AFRICAN AMERICAN'
             3 'NATIVE AMERICAN OR ALASKA NATIVE ALEUTIAN ISLANDER/ESKIMO'
             4 'ASIAN' 5 'NATIVE HAWAIIAN OR PACIFIC ISLANDER'
             6 'OTHER (SPECIFY)' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF8_A   1 'WHITE' 2 'BLACK AND/OR AFRICAN AMERICAN'
             3 'NATIVE AMERICAN OR ALASKA NATIVE ALEUTIAN ISLANDER/ESKIMO'
             4 'ASIAN' 5 'NATIVE HAWAIIAN OR PACIFIC ISLANDER'
             6 'OTHER (SPECIFY)' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF9     1 'VERY CLOSELY' 2 'SOMEWHAT CLOSELY' 3 'NOT VERY CLOSELY'
             4 'NOT AT ALL CLOSELY' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF10    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PF11    1 'VERY IMPORTANT' 2 'SOMEWHAT IMPORTANT' 3 'NOT VERY IMPORTANT'
             4 'NOT AT ALL IMPORTANT' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF12    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF12A   1 'VERY CLOSELY' 2 'SOMEWHAT CLOSELY' 3 'NOT VERY CLOSELY'
             4 'NOT AT ALL CLOSELY' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PF12B   1 'ENTER COUNTRY' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PG1     1 'VERY' 2 'SOMEWHAT' 3 'A LITTLE' 4 'NOT AT ALL'
             7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PG2     1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NONE AT ALL' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PG3     1 'VERY' 2 'SOMEWHAT' 3 'A LITTLE' 4 'NOT AT ALL'
             7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PG4     1 'EXCELLENT' 2 'VERY GOOD' 3 'GOOD' 4 'FAIR' 5 'POOR'
             7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PG5     1 'AGREE' 2 'DISAGREE' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PG5A    1 'STRONGLY' 2 'SOMEWHAT' 3 'ONLY A LITTLE' 7 'DON''T KNOW'
             8 'REFUSED' 9 'INAPP' /
   B1PG6     1 'A LOT' 2 'SOMEWHAT' 3 'A LITTLE' 4 'NOT AT ALL/NONE AT ALL'
             7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PG7     1 'A LOT' 2 'SOMEWHAT' 3 'A LITTLE' 4 'NOT AT ALL/NONE AT ALL'
             7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PG8     1 'A LOT' 2 'SOMEWHAT' 3 'A LITTLE' 4 'NOT AT ALL/NONE AT ALL'
             7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1PG9     1 'A LOT' 2 'SOMEWHAT' 3 'A LITTLE' 4 'NOT AT ALL/NONE AT ALL'
             7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SA1     0 'WORST' 10 'BEST' 98 'REFUSED' 99 'INAPP' /
   B1SA2     0 'WORST' 10 'BEST' 98 'REFUSED' 99 'INAPP' /
   B1SA3     0 'WORST' 10 'BEST' 98 'REFUSED' 99 'INAPP' /
   B1SA4     0 'WORST' 10 'VERYMUCH' 98 'REFUSED' 99 'INAPP' /
   B1SA5     0 'WORST' 10 'VERYMUCH' 98 'REFUSED' 99 'INAPP' /
   B1SSATIS  98 'NOT CALCULATED - Due to missing data' /
   B1SSATIS2 98 'NOT CALCULATED - Due to missing data' /
   B1SA6A    1 'IMPROVED A LOT' 2 'IMPROVED A LITTLE' 3 'STAYED THE SAME'
             4 'GOTTEN A LITTLE WORSE' 5 'GOTTEN A LOT WORSE' 8 'REFUSED' /
   B1SA6B    1 'IMPROVED A LOT' 2 'IMPROVED A LITTLE' 3 'STAYED THE SAME'
             4 'GOTTEN A LITTLE WORSE' 5 'GOTTEN A LOT WORSE' 8 'REFUSED' /
   B1SA6C    1 'IMPROVED A LOT' 2 'IMPROVED A LITTLE' 3 'STAYED THE SAME'
             4 'GOTTEN A LITTLE WORSE' 5 'GOTTEN A LOT WORSE' 8 'REFUSED' /
   B1SA6D    1 'IMPROVED A LOT' 2 'IMPROVED A LITTLE' 3 'STAYED THE SAME'
             4 'GOTTEN A LITTLE WORSE' 5 'GOTTEN A LOT WORSE' 8 'REFUSED' /
   B1SA6E    1 'IMPROVED A LOT' 2 'IMPROVED A LITTLE' 3 'STAYED THE SAME'
             4 'GOTTEN A LITTLE WORSE' 5 'GOTTEN A LOT WORSE' 8 'REFUSED' /
   B1SA7A    1 'EXCELLENT' 2 'GOOD' 3 'AVERAGE' 4 'FAIR' 5 'POOR' 8 'REFUSED'
             9 'INAPP' /
   B1SA7B    1 'EXCELLENT' 2 'GOOD' 3 'AVERAGE' 4 'FAIR' 5 'POOR' 8 'REFUSED'
             9 'INAPP' /
   B1SA7C    1 'EXCELLENT' 2 'GOOD' 3 'AVERAGE' 4 'FAIR' 5 'POOR' 8 'REFUSED'
             9 'INAPP' /
   B1SA7D    1 'EXCELLENT' 2 'GOOD' 3 'AVERAGE' 4 'FAIR' 5 'POOR' 8 'REFUSED'
             9 'INAPP' /
   B1SA8A    1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'SOMEWHAT DISAGREE' 7 'STRONGLY DISAGREE' 8 'REFUSED'
             9 'INAPP' /
   B1SA8B    1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'SOMEWHAT DISAGREE' 7 'STRONGLY DISAGREE' 8 'REFUSED'
             9 'INAPP' /
   B1SA8C    1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'SOMEWHAT DISAGREE' 7 'STRONGLY DISAGREE' 8 'REFUSED'
             9 'INAPP' /
   B1SA8D    1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'SOMEWHAT DISAGREE' 7 'STRONGLY DISAGREE' 8 'REFUSED'
             9 'INAPP' /
   B1SA8E    1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'SOMEWHAT DISAGREE' 7 'STRONGLY DISAGREE' 8 'REFUSED'
             9 'INAPP' /
   B1SA8F    1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'SOMEWHAT DISAGREE' 7 'STRONGLY DISAGREE' 8 'REFUSED'
             9 'INAPP' /
   B1SHLOCS  8 'NOT CALCULATED (Due to missing data)' /
   B1SHLOCO  8 'NOT CALCULATED (Due to missing data)' /
   B1SA9A    1 'NOT AT ALL TRUE' 2 'A LITTLE TRUE' 3 'MODERATELY TRUE'
             4 'EXTREMELY TRUE' 8 'REFUSED' 9 'INAPP' /
   B1SA9B    1 'NOT AT ALL TRUE' 2 'A LITTLE TRUE' 3 'MODERATELY TRUE'
             4 'EXTREMELY TRUE' 8 'REFUSED' 9 'INAPP' /
   B1SA9C    1 'NOT AT ALL TRUE' 2 'A LITTLE TRUE' 3 'MODERATELY TRUE'
             4 'EXTREMELY TRUE' 8 'REFUSED' 9 'INAPP' /
   B1SA9D    1 'NOT AT ALL TRUE' 2 'A LITTLE TRUE' 3 'MODERATELY TRUE'
             4 'EXTREMELY TRUE' 8 'REFUSED' 9 'INAPP' /
   B1SA9E    1 'NOT AT ALL TRUE' 2 'A LITTLE TRUE' 3 'MODERATELY TRUE'
             4 'EXTREMELY TRUE' 8 'REFUSED' 9 'INAPP' /
   B1SAMPLI  8 'NOT CALCULATED (Due to missing data)' /
   B1SA10A   1 'ALMOST EVERY DAY' 2 'SEVERAL TIMES A WEEK' 3 'ONCE A WEEK'
             4 'SEVERAL TIMES A MONTH' 5 'ONCE A MONTH' 6 'NOT AT ALL'
             8 'REFUSED' 9 'INAPP' /
   B1SA10B   1 'ALMOST EVERY DAY' 2 'SEVERAL TIMES A WEEK' 3 'ONCE A WEEK'
             4 'SEVERAL TIMES A MONTH' 5 'ONCE A MONTH' 6 'NOT AT ALL'
             8 'REFUSED' 9 'INAPP' /
   B1SA10C   1 'ALMOST EVERY DAY' 2 'SEVERAL TIMES A WEEK' 3 'ONCE A WEEK'
             4 'SEVERAL TIMES A MONTH' 5 'ONCE A MONTH' 6 'NOT AT ALL'
             8 'REFUSED' 9 'INAPP' /
   B1SA10D   1 'ALMOST EVERY DAY' 2 'SEVERAL TIMES A WEEK' 3 'ONCE A WEEK'
             4 'SEVERAL TIMES A MONTH' 5 'ONCE A MONTH' 6 'NOT AT ALL'
             8 'REFUSED' 9 'INAPP' /
   B1SA10E   1 'ALMOST EVERY DAY' 2 'SEVERAL TIMES A WEEK' 3 'ONCE A WEEK'
             4 'SEVERAL TIMES A MONTH' 5 'ONCE A MONTH' 6 'NOT AT ALL'
             8 'REFUSED' 9 'INAPP' /
   B1SA10F   1 'ALMOST EVERY DAY' 2 'SEVERAL TIMES A WEEK' 3 'ONCE A WEEK'
             4 'SEVERAL TIMES A MONTH' 5 'ONCE A MONTH' 6 'NOT AT ALL'
             8 'REFUSED' 9 'INAPP' /
   B1SA10G   1 'ALMOST EVERY DAY' 2 'SEVERAL TIMES A WEEK' 3 'ONCE A WEEK'
             4 'SEVERAL TIMES A MONTH' 5 'ONCE A MONTH' 6 'NOT AT ALL'
             8 'REFUSED' 9 'INAPP' /
   B1SA10H   1 'ALMOST EVERY DAY' 2 'SEVERAL TIMES A WEEK' 3 'ONCE A WEEK'
             4 'SEVERAL TIMES A MONTH' 5 'ONCE A MONTH' 6 'NOT AT ALL'
             8 'REFUSED' 9 'INAPP' /
   B1SA10I   1 'ALMOST EVERY DAY' 2 'SEVERAL TIMES A WEEK' 3 'ONCE A WEEK'
             4 'SEVERAL TIMES A MONTH' 5 'ONCE A MONTH' 6 'NOT AT ALL'
             8 'REFUSED' 9 'INAPP' /
   B1SA10J   1 'ALMOST EVERY DAY' 2 'SEVERAL TIMES A WEEK' 3 'ONCE A WEEK'
             4 'SEVERAL TIMES A MONTH' 5 'ONCE A MONTH' 6 'NOT AT ALL'
             8 'REFUSED' 9 'INAPP' /
   B1SA11A   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA11B   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA11C   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA11D   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA11E   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA11F   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA11G   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA11H   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA11I   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA11J   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA11K   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA11L   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA11M   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA11N   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA11O   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA11P   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA11Q   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA11R   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA11S   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA11T   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA11U   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA11V   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA11W   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA11X   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA11Y   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA11Z   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA11AA  1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA11BB  1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA11CC  1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA11DD  1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SCHROX  0 'NO' 1 'YES' /
   B1SA12A   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA12AY  1 'DAILY' 2 'A FEW TIMES A WEEK' 3 'ONCE A WEEK'
             4 'A FEW TIMES A MONTH' 5 'ONCE THIS MONTH' 8 'REFUSED'
             9 'INAPP' /
   B1SA12B   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA12BY  1 'DAILY' 2 'A FEW TIMES A WEEK' 3 'ONCE A WEEK'
             4 'A FEW TIMES A MONTH' 5 'ONCE THIS MONTH' 8 'REFUSED'
             9 'INAPP' /
   B1SA12C   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA12CY  1 'DAILY' 2 'A FEW TIMES A WEEK' 3 'ONCE A WEEK'
             4 'A FEW TIMES A MONTH' 5 'ONCE THIS MONTH' 8 'REFUSED'
             9 'INAPP' /
   B1SA12D   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA12DY  1 'DAILY' 2 'A FEW TIMES A WEEK' 3 'ONCE A WEEK'
             4 'A FEW TIMES A MONTH' 5 'ONCE THIS MONTH' 8 'REFUSED'
             9 'INAPP' /
   B1SA12E   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA12EY  1 'DAILY' 2 'A FEW TIMES A WEEK' 3 'ONCE A WEEK'
             4 'A FEW TIMES A MONTH' 5 'ONCE THIS MONTH' 8 'REFUSED'
             9 'INAPP' /
   B1SA12F   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA12FY  1 'DAILY' 2 'A FEW TIMES A WEEK' 3 'ONCE A WEEK'
             4 'A FEW TIMES A MONTH' 5 'ONCE THIS MONTH' 8 'REFUSED'
             9 'INAPP' /
   B1SA12G   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA12GY  1 'DAILY' 2 'A FEW TIMES A WEEK' 3 'ONCE A WEEK'
             4 'A FEW TIMES A MONTH' 5 'ONCE THIS MONTH' 8 'REFUSED'
             9 'INAPP' /
   B1SA12H   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA12HY  1 'DAILY' 2 'A FEW TIMES A WEEK' 3 'ONCE A WEEK'
             4 'A FEW TIMES A MONTH' 5 'ONCE THIS MONTH' 8 'REFUSED'
             9 'INAPP' /
   B1SA12I   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA12IY  1 'DAILY' 2 'A FEW TIMES A WEEK' 3 'ONCE A WEEK'
             4 'A FEW TIMES A MONTH' 5 'ONCE THIS MONTH' 8 'REFUSED'
             9 'INAPP' /
   B1SA12J   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA12JY  1 'DAILY' 2 'A FEW TIMES A WEEK' 3 'ONCE A WEEK'
             4 'A FEW TIMES A MONTH' 5 'ONCE THIS MONTH' 8 'REFUSED'
             9 'INAPP' /
   B1SA12K   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA12KY  1 'DAILY' 2 'A FEW TIMES A WEEK' 3 'ONCE A WEEK'
             4 'A FEW TIMES A MONTH' 5 'ONCE THIS MONTH' 8 'REFUSED'
             9 'INAPP' /
   B1SA12L   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA12LY  1 'DAILY' 2 'A FEW TIMES A WEEK' 3 'ONCE A WEEK'
             4 'A FEW TIMES A MONTH' 5 'ONCE THIS MONTH' 8 'REFUSED'
             9 'INAPP' /
   B1SRXMEX  0 'NO' 1 'YES' 8 'NOT CALCULATED (Due to missing data)' /
   B1SRXMED  98 'NOT CALCULATED (Due to missing data)' /
   B1SA13A   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA13AY  1 'DAILY' 2 'A FEW TIMES A WEEK' 3 'ONCE A WEEK'
             4 'A FEW TIMES A MONTH' 5 'ONCE THIS MONTH' 8 'REFUSED'
             9 'INAPP' /
   B1SA13B   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA13BY  1 'DAILY' 2 'A FEW TIMES A WEEK' 3 'ONCE A WEEK'
             4 'A FEW TIMES A MONTH' 5 'ONCE THIS MONTH' 8 'REFUSED'
             9 'INAPP' /
   B1SA13C   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA13CY  1 'DAILY' 2 'A FEW TIMES A WEEK' 3 'ONCE A WEEK'
             4 'A FEW TIMES A MONTH' 5 'ONCE THIS MONTH' 8 'REFUSED'
             9 'INAPP' /
   B1SA13D   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA13DY  1 'DAILY' 2 'A FEW TIMES A WEEK' 3 'ONCE A WEEK'
             4 'A FEW TIMES A MONTH' 5 'ONCE THIS MONTH' 8 'REFUSED'
             9 'INAPP' /
   B1SA14A   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA14B   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA14C   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA14D   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA14E   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA14F   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA14G   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA14H   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA14I   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA14J   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA14K   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA14L   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA14M   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA14N   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA14O   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SSPLMX  0 'NO' 1 'YES' /
   B1SA15    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA16    0 'DID NOT INTERFERE' 10 'COMPLETELY INTERFERED' 98 'REFUSED'
             99 'INAPP' /
   B1SA17    0 'DID NOT INTERFERE' 10 'COMPLETELY INTERFERED' 98 'REFUSED'
             99 'INAPP' /
   B1SA18    0 'DID NOT INTERFERE' 10 'COMPLETELY INTERFERED' 98 'REFUSED'
             99 'INAPP' /
   B1SA19    0 'DID NOT INTERFERE' 10 'COMPLETELY INTERFERED' 98 'REFUSED'
             99 'INAPP' /
   B1SA20    0 'DID NOT INTERFERE' 10 'COMPLETELY INTERFERED' 98 'REFUSED'
             99 'INAPP' /
   B1SA21A   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA21B   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA21C   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA21D   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA21E   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA21F   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA21G   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA21H   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA21I   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA22    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA23    1 'SPECIFY' 2 'BLANK' 8 'REFUSED' 9 'INAPP' /
   B1SA24A   1 'ALL THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'A LITTLE OF THE TIME' 5 'NONE OF THE TIME' 8 'REFUSED'
             9 'INAPP' /
   B1SA24B   1 'ALL THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'A LITTLE OF THE TIME' 5 'NONE OF THE TIME' 8 'REFUSED'
             9 'INAPP' /
   B1SA24C   1 'ALL THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'A LITTLE OF THE TIME' 5 'NONE OF THE TIME' 8 'REFUSED'
             9 'INAPP' /
   B1SA24D   1 'ALL THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'A LITTLE OF THE TIME' 5 'NONE OF THE TIME' 8 'REFUSED'
             9 'INAPP' /
   B1SA24E   1 'ALL THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'A LITTLE OF THE TIME' 5 'NONE OF THE TIME' 8 'REFUSED'
             9 'INAPP' /
   B1SA24F   1 'ALL THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'A LITTLE OF THE TIME' 5 'NONE OF THE TIME' 8 'REFUSED'
             9 'INAPP' /
   B1SA24G   1 'ALL THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'A LITTLE OF THE TIME' 5 'NONE OF THE TIME' 8 'REFUSED'
             9 'INAPP' /
   B1SA24H   1 'ALL THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'A LITTLE OF THE TIME' 5 'NONE OF THE TIME' 8 'REFUSED'
             9 'INAPP' /
   B1SA24I   1 'ALL THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'A LITTLE OF THE TIME' 5 'NONE OF THE TIME' 8 'REFUSED'
             9 'INAPP' /
   B1SA24J   1 'ALL THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'A LITTLE OF THE TIME' 5 'NONE OF THE TIME' 8 'REFUSED'
             9 'INAPP' /
   B1SA24K   1 'ALL THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'A LITTLE OF THE TIME' 5 'NONE OF THE TIME' 8 'REFUSED'
             9 'INAPP' /
   B1SA24L   1 'ALL THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'A LITTLE OF THE TIME' 5 'NONE OF THE TIME' 8 'REFUSED'
             9 'INAPP' /
   B1SA24M   1 'ALL THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'A LITTLE OF THE TIME' 5 'NONE OF THE TIME' 8 'REFUSED'
             9 'INAPP' /
   B1SA24N   1 'ALL THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'A LITTLE OF THE TIME' 5 'NONE OF THE TIME' 8 'REFUSED'
             9 'INAPP' /
   B1SA25    1 'A LOT MORE NEGATIVE THAN USUAL'
             2 'SOMEWHAT MORE NEGATIVE THAN USUAL'
             3 'A LITTLE MORE NEGATIVE THAN USUAL'
             4 'ABOUT THE SAME AS USUAL'
             5 'A LITTLE LESS NEGATIVE THAN USUAL'
             6 'SOMEWHAT LESS NEGATIVE THAN USUAL'
             7 'A LOT LESS NEGATIVE THAN USUAL' 8 'REFUSED' 9 'INAPP' /
   B1SNEGAF  8 'NOT CALCULATED (Due to missing data)' /
   B1SNEGPA  8 'NOT CALCULATED (Due to missing data)' /
   B1SA26A   1 'ALL THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'A LITTLE OF THE TIME' 5 'NONE OF THE TIME' 8 'REFUSED'
             9 'INAPP' /
   B1SA26B   1 'ALL THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'A LITTLE OF THE TIME' 5 'NONE OF THE TIME' 8 'REFUSED'
             9 'INAPP' /
   B1SA26C   1 'ALL THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'A LITTLE OF THE TIME' 5 'NONE OF THE TIME' 8 'REFUSED'
             9 'INAPP' /
   B1SA26D   1 'ALL THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'A LITTLE OF THE TIME' 5 'NONE OF THE TIME' 8 'REFUSED'
             9 'INAPP' /
   B1SA26E   1 'ALL THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'A LITTLE OF THE TIME' 5 'NONE OF THE TIME' 8 'REFUSED'
             9 'INAPP' /
   B1SA26F   1 'ALL THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'A LITTLE OF THE TIME' 5 'NONE OF THE TIME' 8 'REFUSED'
             9 'INAPP' /
   B1SA26G   1 'ALL THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'A LITTLE OF THE TIME' 5 'NONE OF THE TIME' 8 'REFUSED'
             9 'INAPP' /
   B1SA26H   1 'ALL THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'A LITTLE OF THE TIME' 5 'NONE OF THE TIME' 8 'REFUSED'
             9 'INAPP' /
   B1SA26I   1 'ALL THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'A LITTLE OF THE TIME' 5 'NONE OF THE TIME' 8 'REFUSED'
             9 'INAPP' /
   B1SA26J   1 'ALL THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'A LITTLE OF THE TIME' 5 'NONE OF THE TIME' 8 'REFUSED'
             9 'INAPP' /
   B1SA26K   1 'ALL THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'A LITTLE OF THE TIME' 5 'NONE OF THE TIME' 8 'REFUSED'
             9 'INAPP' /
   B1SA26L   1 'ALL THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'A LITTLE OF THE TIME' 5 'NONE OF THE TIME' 8 'REFUSED'
             9 'INAPP' /
   B1SA26M   1 'ALL THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'A LITTLE OF THE TIME' 5 'NONE OF THE TIME' 8 'REFUSED'
             9 'INAPP' /
   B1SA27    1 'A LOT MORE POSITIVE THAN USUAL'
             2 'SOMEWHAT MORE POSITIVE THAN USUAL'
             3 'A LITTLE MORE POSITIVE THAN USUAL'
             4 'ABOUT THE SAME AS USUAL'
             5 'A LITTLE LESS POSITIVE THAN USUAL'
             6 'SOMEWHAT LESS POSITIVE THAN USUAL'
             7 'A LOT LESS POSITIVE THAN USUAL' 8 'REFUSED' 9 'INAPP' /
   B1SPOSAF  8 'NOT CALCULATED (Due to missing data)' /
   B1SPOSPA  8 'NOT CALCULATED (Due to missing data)' /
   B1SA28A   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SA28B   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SA28C   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SA28D   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SA28E   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SA28F   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SA28G   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SA28H   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SA28I   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SA28J   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SBADL1  8 'NOT CALCULATED (Due to missing data)' /
   B1SBADL2  8 'NOT CALCULATED (Due to missing data)' /
   B1SIADL   8 'NOT CALCULATED (Due to missing data)' /
   B1SA29A   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA29B   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA29C   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA29D   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SDYSPN  8 'NOT CALCULATED (Due to missing data)' /
   B1SA30A   1 'SEVERAL TIMES A WEEK' 2 'ONCE A WEEK'
             3 'SEVERAL TIMES A MONTH' 4 'ONCE A MONTH'
             5 'LESS THAN ONCE A MONTH' 6 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SA30B   1 'SEVERAL TIMES A WEEK' 2 'ONCE A WEEK'
             3 'SEVERAL TIMES A MONTH' 4 'ONCE A MONTH'
             5 'LESS THAN ONCE A MONTH' 6 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SA30C   1 'SEVERAL TIMES A WEEK' 2 'ONCE A WEEK'
             3 'SEVERAL TIMES A MONTH' 4 'ONCE A MONTH'
             5 'LESS THAN ONCE A MONTH' 6 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SA30D   1 'SEVERAL TIMES A WEEK' 2 'ONCE A WEEK'
             3 'SEVERAL TIMES A MONTH' 4 'ONCE A MONTH'
             5 'LESS THAN ONCE A MONTH' 6 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SA30E   1 'SEVERAL TIMES A WEEK' 2 'ONCE A WEEK'
             3 'SEVERAL TIMES A MONTH' 4 'ONCE A MONTH'
             5 'LESS THAN ONCE A MONTH' 6 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SA30F   1 'SEVERAL TIMES A WEEK' 2 'ONCE A WEEK'
             3 'SEVERAL TIMES A MONTH' 4 'ONCE A MONTH'
             5 'LESS THAN ONCE A MONTH' 6 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SA31A   1 'SEVERAL TIMES A WEEK' 2 'ONCE A WEEK'
             3 'SEVERAL TIMES A MONTH' 4 'ONCE A MONTH'
             5 'LESS THAN ONCE A MONTH' 6 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SA31B   1 'SEVERAL TIMES A WEEK' 2 'ONCE A WEEK'
             3 'SEVERAL TIMES A MONTH' 4 'ONCE A MONTH'
             5 'LESS THAN ONCE A MONTH' 6 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SA31C   1 'SEVERAL TIMES A WEEK' 2 'ONCE A WEEK'
             3 'SEVERAL TIMES A MONTH' 4 'ONCE A MONTH'
             5 'LESS THAN ONCE A MONTH' 6 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SA31D   1 'SEVERAL TIMES A WEEK' 2 'ONCE A WEEK'
             3 'SEVERAL TIMES A MONTH' 4 'ONCE A MONTH'
             5 'LESS THAN ONCE A MONTH' 6 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SA31E   1 'SEVERAL TIMES A WEEK' 2 'ONCE A WEEK'
             3 'SEVERAL TIMES A MONTH' 4 'ONCE A MONTH'
             5 'LESS THAN ONCE A MONTH' 6 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SA31F   1 'SEVERAL TIMES A WEEK' 2 'ONCE A WEEK'
             3 'SEVERAL TIMES A MONTH' 4 'ONCE A MONTH'
             5 'LESS THAN ONCE A MONTH' 6 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SA32A   1 'SEVERAL TIMES A WEEK' 2 'ONCE A WEEK'
             3 'SEVERAL TIMES A MONTH' 4 'ONCE A MONTH'
             5 'LESS THAN ONCE A MONTH' 6 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SA32B   1 'SEVERAL TIMES A WEEK' 2 'ONCE A WEEK'
             3 'SEVERAL TIMES A MONTH' 4 'ONCE A MONTH'
             5 'LESS THAN ONCE A MONTH' 6 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SA32C   1 'SEVERAL TIMES A WEEK' 2 'ONCE A WEEK'
             3 'SEVERAL TIMES A MONTH' 4 'ONCE A MONTH'
             5 'LESS THAN ONCE A MONTH' 6 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SA32D   1 'SEVERAL TIMES A WEEK' 2 'ONCE A WEEK'
             3 'SEVERAL TIMES A MONTH' 4 'ONCE A MONTH'
             5 'LESS THAN ONCE A MONTH' 6 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SA32E   1 'SEVERAL TIMES A WEEK' 2 'ONCE A WEEK'
             3 'SEVERAL TIMES A MONTH' 4 'ONCE A MONTH'
             5 'LESS THAN ONCE A MONTH' 6 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SA32F   1 'SEVERAL TIMES A WEEK' 2 'ONCE A WEEK'
             3 'SEVERAL TIMES A MONTH' 4 'ONCE A MONTH'
             5 'LESS THAN ONCE A MONTH' 6 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SA33A   1 'DAILY' 2 'SEVERAL TIMES A WEEK' 3 'ONCE A WEEK'
             4 'SEVERAL TIMES A MONTH' 5 'ONCE A MONTH' 6 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SA33B   1 'DAILY' 2 'SEVERAL TIMES A WEEK' 3 'ONCE A WEEK'
             4 'SEVERAL TIMES A MONTH' 5 'ONCE A MONTH' 6 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SA33C   1 'DAILY' 2 'SEVERAL TIMES A WEEK' 3 'ONCE A WEEK'
             4 'SEVERAL TIMES A MONTH' 5 'ONCE A MONTH' 6 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SA33D   1 'DAILY' 2 'SEVERAL TIMES A WEEK' 3 'ONCE A WEEK'
             4 'SEVERAL TIMES A MONTH' 5 'ONCE A MONTH' 6 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SA33E   1 'DAILY' 2 'SEVERAL TIMES A WEEK' 3 'ONCE A WEEK'
             4 'SEVERAL TIMES A MONTH' 5 'ONCE A MONTH' 6 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SA33F   1 'DAILY' 2 'SEVERAL TIMES A WEEK' 3 'ONCE A WEEK'
             4 'SEVERAL TIMES A MONTH' 5 'ONCE A MONTH' 6 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SA34A   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SA34B   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SA34C   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SA34D   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SA34E   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SA34F   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SA34G   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SA34H   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SA34I   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SINTAG  8 'NOT CALCULATED (Due to missing data)' /
   B1SA35    98 'REFUSED' 99 'INAPP' /
   B1SA36    98 'REFUSED' 99 'INAPP' /
   B1SWSTHI  9 'EXTREME CASES: +- 4 SD OVER MEAN' /
   B1SA37A   98 'REFUSED' 99 'INAPP' /
   B1SA37B   98 'REFUSED' 99 'INAPP' /
   B1SA38    1 'VERY OVERWEIGHT' 2 'SOMEWHAT OVERWEIGHT'
             3 'ABOUT THE RIGHT WEIGHT' 4 'SOMEWHAT UNDERWEIGHT'
             5 'VERY UNDERWEIGHT' 8 'REFUSED' 9 'INAPP' /
   B1SA39    998 'REFUSED' 999 'INAPP' /
   B1SA40    998 'REFUSED' 999 'INAPP' /
   B1SA41    998 'REFUSED' 999 'INAPP' /
   B1SA42    98 'REFUSED' 99 'INAPP' /
   B1SA43A   1 'YES' 2 'NO' 4 'NONE OF THE ABOVE' 8 'REFUSED' 9 'INAPPP' /
   B1SA43B   1 'YES' 2 'NO' 4 'NONE OF THE ABOVE' 8 'REFUSED' 9 'INAPPP' /
   B1SA43C   1 'YES' 2 'NO' 4 'NONE OF THE ABOVE' 8 'REFUSED' 9 'INAPPP' /
   B1SBMI    98 'NOT CALCULATED (Due to missing data)' /
   B1SA44    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA45    9998 'REFUSED' 9999 'INAPP' /
   B1SA46    998 'REFUSED' 999 'INAPP' /
   B1SA47    998 'REFUSED' 999 'INAPP' /
   B1SA48A   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA48B   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA48C   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA48D   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA48E   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA48F   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA48G   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA48H   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA49    1 'PRIVATE CLINIC OR DOCTORS OFFICE' 2 'HMO CLINIC'
             3 'PUBLIC HEALTH CLINIC OR COMMUNITY HEALTH CENTER'
             4 'HOSPITAL OUTPATIENT DEPARTMENT' 5 'HOSPITAL EMERGENCY ROOM'
             6 'URGENT CARE CENTER' 7 'SOME OTHER KIND OF PLACE'
             8 'NO USUAL PLACE' 98 'REFUSED' 99 'INAPP' /
   B1SA50A   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA50B   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA50C   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA50D   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA50E   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA50F   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA50G   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA50H   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA51    1 'FAMILY DOCTOR OR GENERALIST' 2 'OBSTETRICIAN OR GYNECOLOGIST'
             3 'INTERNIST' 4 'CHIROPRACTOR'
             5 'PHYSICIANS ASSISTANT OR NURSE PRACTITIONER'
             6 'OTHER HEALTHCARE PROFESSIONAL'
             7 'NONTRADITIONAL HEALTH PRACTITIONER' 8 'NO ONE IN PARTICULAR'
             98 'REFUSED' 99 'INAPP' /
   B1SA52    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA53A   998 'REFUSED' 999 'INAPP' /
   B1SA53B   998 'REFUSED' 999 'INAPP' /
   B1SA53C   998 'REFUSED' 999 'INAPP' /
   B1SA53D   998 'REFUSED' 999 'INAPP' /
   B1SA53E   998 'REFUSED' 999 'INAPP' /
   B1SUSEMD  998 'NOT CALCULATED (Due to missing data)' /
   B1SA54A   998 'REFUSED' 999 'INAPP' /
   B1SA54B   998 'REFUSED' 999 'INAPP' /
   B1SA54C   998 'REFUSED' 999 'INAPP' /
   B1SA54D   998 'REFUSED' 999 'INAPP' /
   B1SUSEMH  998 'NOT CALCULATED (Due to missing data)' /
   B1SA55A   1 'YES' 2 'NO' 8 'REFUSED' /
   B1SA55AY  998 'REFUSED' 999 'INAPP' /
   B1SA55AZ  998 'REFUSED' 999 'INAPP' /
   B1SA55B   1 'YES' 2 'NO' 8 'REFUSED' /
   B1SA55BY  998 'REFUSED' 999 'INAPP' /
   B1SA55BZ  998 'REFUSED' 999 'INAPP' /
   B1SA55C   1 'YES' 2 'NO' 8 'REFUSED' /
   B1SA55CY  998 'REFUSED' 999 'INAPP' /
   B1SA55CZ  998 'REFUSED' 999 'INAPP' /
   B1SA55D   1 'YES' 2 'NO' 8 'REFUSED' /
   B1SA55DY  998 'REFUSED' 999 'INAPP' /
   B1SA55DZ  998 'REFUSED' 999 'INAPP' /
   B1SA55E   1 'YES' 2 'NO' 8 'REFUSED' /
   B1SA55EY  998 'REFUSED' 999 'INAPP' /
   B1SA55EZ  998 'REFUSED' 999 'INAPP' /
   B1SA55F   1 'YES' 2 'NO' 8 'REFUSED' /
   B1SA55FY  998 'REFUSED' 999 'INAPP' /
   B1SA55FZ  998 'REFUSED' 999 'INAPP' /
   B1SA55G   1 'YES' 2 'NO' 8 'REFUSED' /
   B1SA55GY  998 'REFUSED' 999 'INAPP' /
   B1SA55GZ  998 'REFUSED' 999 'INAPP' /
   B1SA55H   1 'YES' 2 'NO' 8 'REFUSED' /
   B1SA55HY  998 'REFUSED' 999 'INAPP' /
   B1SA55HZ  998 'REFUSED' 999 'INAPP' /
   B1SA55I   1 'YES' 2 'NO' 8 'REFUSED' /
   B1SA55IY  998 'REFUSED' 999 'INAPP' /
   B1SA55IZ  998 'REFUSED' 999 'INAPP' /
   B1SA55J   1 'YES' 2 'NO' 8 'REFUSED' /
   B1SA55JY  998 'REFUSED' 999 'INAPP' /
   B1SA55JZ  998 'REFUSED' 999 'INAPP' /
   B1SA55K   1 'YES' 2 'NO' 8 'REFUSED' /
   B1SA55KY  998 'REFUSED' 999 'INAPP' /
   B1SA55KZ  998 'REFUSED' 999 'INAPP' /
   B1SA56A   1 'A LOT' 2 'OFTEN' 3 'SOME' 4 'A LITTLE' 5 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SA56B   1 'A LOT' 2 'OFTEN' 3 'SOME' 4 'A LITTLE' 5 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SA56C   1 'A LOT' 2 'OFTEN' 3 'SOME' 4 'A LITTLE' 5 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SA56D   1 'A LOT' 2 'OFTEN' 3 'SOME' 4 'A LITTLE' 5 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SA56E   1 'A LOT' 2 'OFTEN' 3 'SOME' 4 'A LITTLE' 5 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SA56F   1 'A LOT' 2 'OFTEN' 3 'SOME' 4 'A LITTLE' 5 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SA56G   1 'A LOT' 2 'OFTEN' 3 'SOME' 4 'A LITTLE' 5 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SA56H   1 'A LOT' 2 'OFTEN' 3 'SOME' 4 'A LITTLE' 5 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SA56I   1 'A LOT' 2 'OFTEN' 3 'SOME' 4 'A LITTLE' 5 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SA56J   1 'A LOT' 2 'OFTEN' 3 'SOME' 4 'A LITTLE' 5 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SA56K   1 'A LOT' 2 'OFTEN' 3 'SOME' 4 'A LITTLE' 5 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SA56L   1 'A LOT' 2 'OFTEN' 3 'SOME' 4 'A LITTLE' 5 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SA56M   1 'A LOT' 2 'OFTEN' 3 'SOME' 4 'A LITTLE' 5 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SA56N   1 'A LOT' 2 'OFTEN' 3 'SOME' 4 'A LITTLE' 5 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SA56O   1 'A LOT' 2 'OFTEN' 3 'SOME' 4 'A LITTLE' 5 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SA56P   1 'A LOT' 2 'OFTEN' 3 'SOME' 4 'A LITTLE' 5 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SA56Q   1 'A LOT' 2 'OFTEN' 3 'SOME' 4 'A LITTLE' 5 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SA56R   1 'A LOT' 2 'OFTEN' 3 'SOME' 4 'A LITTLE' 5 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SA56S   1 'A LOT' 2 'OFTEN' 3 'SOME' 4 'A LITTLE' 5 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SA57A   98 'REFUSED' 99 'INAPP' /
   B1SA57B   98 'REFUSED' 99 'INAPP' /
   B1SA58A   98 'REFUSED' 99 'INAPP' /
   B1SA58B   98 'REFUSED' 99 'INAPP' /
   B1SA59A   98 'REFUSED' 99 'INAPP' /
   B1SA59B   98 'REFUSED' 99 'INAPP' /
   B1SA60    998 'REFUSED' 999 'INAPP' /
   B1SA61A   1 'NEVER' 2 'RARELY' 3 'SOMETIMES' 4 'OFTEN' 5 'ALMOST ALWAYS'
             8 'REFUSED' 9 'INAPP' /
   B1SA61B   1 'NEVER' 2 'RARELY' 3 'SOMETIMES' 4 'OFTEN' 5 'ALMOST ALWAYS'
             8 'REFUSED' 9 'INAPP' /
   B1SA61C   1 'NEVER' 2 'RARELY' 3 'SOMETIMES' 4 'OFTEN' 5 'ALMOST ALWAYS'
             8 'REFUSED' 9 'INAPP' /
   B1SA61D   1 'NEVER' 2 'RARELY' 3 'SOMETIMES' 4 'OFTEN' 5 'ALMOST ALWAYS'
             8 'REFUSED' 9 'INAPP' /
   B1SA62A   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA62B   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA62C   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA62D   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA62E   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA62F   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA62G   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA62H   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA62I   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA62J   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA63    1 'NEVER' 2 'ONCE OR TWICE' 3 '3 TO 5 TIMES' 4 '6 TO 10 TIMES'
             5 '11 TO 20 TIMES' 6 'MORE THAN 20 TIMES' 8 'REFUSED' 9 'INAPP'
             /
   B1SA64    1 'NEVER' 2 'ONCE OR TWICE' 3 '3 TO 5 TIMES' 4 '6 TO 10 TIMES'
             5 '11 TO 20 TIMES' 6 'MORE THAN 20 TIMES' 8 'REFUSED' 9 'INAPP'
             /
   B1SA65A   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA65B   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA65C   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA65D   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA65E   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA66A   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA66B   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA66C   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SA66D   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SALCOH  0 'NO ALCOHOL PROBLEM' 1 'ALCOHOL PROBLEM'
             8 'NOT CALCULATED (DUE TO MISSING DATA)' /
   B1SA67    1 'NEVER' 2 'ONCE OR TWICE' 3 '3 TO 5 TIMES' 4 '6 TO 10 TIMES'
             5 '11 TO 20 TIMES' 6 'MORE THAN 20 TIMES' 8 'REFUSED' 9 'INAPP'
             /
   B1SA68    1 'NEVER' 2 'ONCE OR TWICE' 3 '3 TO 5 TIMES' 4 '6 TO 10 TIMES'
             5 '11 TO 20 TIMES' 6 'MORE THAN 20 TIMES' 8 'REFUSED' 9 'INAPP'
             /
   B1SB1     1 'YES ALL OF THE YEAR' 2 'YES PART OF THE YEAR'
             3 'NO NONE OF THE YEAR' 8 'REFUSED' 9 'INAPP' /
   B1SB2A    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SB2B    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SB2C    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SB2D    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SB2E    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SB3     9998 'REFUSED' 9999 'INAPP' /
   B1SB4     1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SB5A    1 'JAN' 2 'FEB' 3 'MAR' 4 'APR' 5 'MAY' 6 'JUN' 7 'JUL' 8 'AUG'
             9 'SEP' 10 'OCT' 11 'NOV' 12 'DEC' 98 'REFUSED' 99 'INAPP' /
   B1SB5B    98 'REFUSED' 99 'INAPP' /
   B1SB5C    9998 'REFUSED' 9999 'INAPP' /
   B1SB6     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SB7     1 'LIGHTER' 2 'HEAVIER' 3 'ABOUT THE SAME' 8 'REFUSED' 9 'INAPP'
             /
   B1SB8A1   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SB8A2   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SB8A3   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SB8A4   998 'REFUSED' 999 'INAPP' /
   B1SB8B1   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SB8B2   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SB8B3   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SB8B4   998 'REFUSED' 999 'INAPP' /
   B1SB8C1   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SB8C2   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SB8C3   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SB8C4   998 'REFUSED' 999 'INAPP' /
   B1SB9     1 'SPECIFY NAME' 8 'REFUSED' 9 'INAPP' /
   B1SB10    1 'MALE' 2 'FEMALE' 8 'REFUSED' 9 'INAPP' /
   B1SB11A   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SB11B   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SB11C   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SB11D   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SB11E   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SB11F   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SB11G   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SB11H   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SB11I   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SB12A   1 'JAN' 2 'FEB' 3 'MAR' 4 'APR' 5 'MAY' 6 'JUN' 7 'JUL' 8 'AUG'
             9 'SEP' 10 'OCT' 11 'NOV' 12 'DEC' 98 'REFUSED' 99 'INAPP' /
   B1SB12B   9998 'REFUSED' 9999 'INAPP' /
   B1SB13A   1 'JAN' 2 'FEB' 3 'MAR' 4 'APR' 5 'MAY' 6 'JUN' 7 'JUL' 8 'AUG'
             9 'SEP' 10 'OCT' 11 'NOV' 12 'DEC' 98 'REFUSED' 99 'INAPP' /
   B1SB13B   9998 'REFUSED' 9999 'INAPP' /
   B1SB14A   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SB14B   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SB14C   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SB14D   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SB15    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SB16    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SB17A   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SB17B   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SB17C   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SB17D   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SB17E   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SB17F   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SB17G   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SB18    1 'GREAT RELIEF' 2 'SOME RELIEF'
             3 'MIXED FEELINGS BOTH RELIEF AND REGRET' 4 'SOME REGRET'
             5 'GREAT REGRET' 6 'NO PARTICULAR FEELING ONE WAY OR THE OTHER'
             8 'REFUSED' 9 'INAPP' /
   B1SB19A   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SB19B   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SB19C   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SC1     1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SC2A    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPPP' /
   B1SC2B    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPPP' /
   B1SC2C    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPPP' /
   B1SC2D    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPPP' /
   B1SC2E    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPPP' /
   B1SC2F    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPPP' /
   B1SC2G    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPPP' /
   B1SC2H    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPPP' /
   B1SC2I    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPPP' /
   B1SC2J    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPPP' /
   B1SC2K    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPPP' /
   B1SC2L    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPPP' /
   B1SC3A    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SC3B    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SC3C    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SC3D    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SC3E    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SC3F    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SC3G    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SC3H    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SC4     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SC5     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SC6     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SC7A    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SC7B    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SC7C    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SC7D    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SC8A    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SC8B    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SC8C    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SC9A    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SC9B    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SC9C    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SC9D    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SC9E    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SC9F    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SC9G    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SC9H    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SC10    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SC11    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SC12    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SD1     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' /
   B1SD1A    998 'REFUSED' 999 'INAPP' /
   B1SD1B    1 'EXCELLENT' 2 'VERY GOOD' 3 'GOOD' 4 'FAIR' 5 'POOR'
             8 'REFUSED' 9 'INAPP' /
   B1SD1C    9998 'REFUSED' 9999 'INAPP' /
   B1SD1D    998 'REFUSED' 999 'INAPP' /
   B1SD2     1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' /
   B1SD2A    998 'REFUSED' 999 'INAPP' /
   B1SD2B    1 'EXCELLENT' 2 'VERY GOOD' 3 'GOOD' 4 'FAIR' 5 'POOR'
             8 'REFUSED' 9 'INAPP' /
   B1SD2C    9998 'REFUSED' 9999 'INAPP' /
   B1SD2D    998 'REFUSED' 999 'INAPP' /
   B1SE1A    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1B    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1C    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1D    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1E    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1F    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1G    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1H    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1I    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1J    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1K    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1L    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1M    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1N    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1O    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1P    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1Q    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1R    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1S    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1T    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1U    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1V    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1W    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1X    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1Y    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1Z    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1AA   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1BB   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1CC   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1DD   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1EE   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1FF   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1GG   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1HH   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1II   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1JJ   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1KK   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1LL   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1MM   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1NN   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1OO   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1PP   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE1QQ   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SPWBA1  98 'NOT CALCULATED (Due to missing data)' /
   B1SPWBE1  98 'NOT CALCULATED (Due to missing data)' /
   B1SPWBG1  98 'NOT CALCULATED (Due to missing data)' /
   B1SPWBR1  98 'NOT CALCULATED (Due to missing data)' /
   B1SPWBU1  98 'NOT CALCULATED (Due to missing data)' /
   B1SPWBS1  98 'NOT CALCULATED (Due to missing data)' /
   B1SPWBA2  98 'NOT CALCULATED (Due to missing data)' /
   B1SPWBE2  98 'NOT CALCULATED (Due to missing data)' /
   B1SPWBG2  98 'NOT CALCULATED (Due to missing data)' /
   B1SPWBR2  98 'NOT CALCULATED (Due to missing data)' /
   B1SPWBU2  98 'NOT CALCULATED (Due to missing data)' /
   B1SPWBS2  98 'NOT CALCULATED (Due to missing data)' /
   B1SE2A    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SE2B    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SE2C    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SE2D    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SE2E    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SE2F    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SE2G    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SE2H    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SE2I    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SE2J    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SE2K    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SE2L    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SE2M    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SE2N    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SE2O    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SE2P    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SE2Q    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SE3     1 'TOP RUNG' 10 'BOTTOM RUNG' 98 'REFUSED' 99 'INAPP' /
   B1SE4A    1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE4B    1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE4C    1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE4D    1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE4E    1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE4F    1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE4G    1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE4H    1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE4I    1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE4J    1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE4K    1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE4L    1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SMASTE  8 'NOT CALCULATED (Due to missing data)' /
   B1SCONST  8 'NOT CALCULATED (Due to missing data)' /
   B1SCTRL   8 'NOT CALCULATED (Due to missing data)' /
   B1SE4M    1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE4N    1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE4O    1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE4P    1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE4Q    1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE4R    1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE4S    1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SESTEE  98 'NOT CALCULATED (Due to missing data)' /
   B1SE4T    1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE4U    1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE4V    1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE4W    1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE4X    1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SE4Y    1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SINTER  8 'NOT CALCULATED (Due to missing data)' /
   B1SINDEP  8 'NOT CALCULATED (Due to missing data)' /
   B1SE5A    1 'A LOT MORE LIKE A' 2 'SOME MORE LIKE A'
             3 'A LITTLE MORE LIKE A' 4 'A LITTLE MORE LIKE B'
             5 'SOME MORE LIKE B' 6 'A LOT MORE LIKE B' 8 'REFUSED' 9 'INAPP'
             /
   B1SE5B    1 'A LOT MORE LIKE A' 2 'SOME MORE LIKE A'
             3 'A LITTLE MORE LIKE A' 4 'A LITTLE MORE LIKE B'
             5 'SOME MORE LIKE B' 6 'A LOT MORE LIKE B' 8 'REFUSED' 9 'INAPP'
             /
   B1SE5C    1 'A LOT MORE LIKE A' 2 'SOME MORE LIKE A'
             3 'A LITTLE MORE LIKE A' 4 'A LITTLE MORE LIKE B'
             5 'SOME MORE LIKE B' 6 'A LOT MORE LIKE B' 8 'REFUSED' 9 'INAPP'
             /
   B1SE5D    1 'A LOT MORE LIKE A' 2 'SOME MORE LIKE A'
             3 'A LITTLE MORE LIKE A' 4 'A LITTLE MORE LIKE B'
             5 'SOME MORE LIKE B' 6 'A LOT MORE LIKE B' 8 'REFUSED' 9 'INAPP'
             /
   B1SE5E    1 'A LOT MORE LIKE A' 2 'SOME MORE LIKE A'
             3 'A LITTLE MORE LIKE A' 4 'A LITTLE MORE LIKE B'
             5 'SOME MORE LIKE B' 6 'A LOT MORE LIKE B' 8 'REFUSED' 9 'INAPP'
             /
   B1SE6A    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE6B    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE6C    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE6D    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE6E    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE6F    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE6G    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE6H    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE6I    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE6J    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE6K    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE6L    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE6M    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE6N    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE6O    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE6P    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE6Q    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE6R    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE6S    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE6T    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE6U    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE6V    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE6W    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE6X    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE6Y    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE6Z    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE6AA   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE6BB   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE6CC   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE6DD   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE6EE   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SAGENC  8 'NOT CALCULATED (Due to missing data)' /
   B1SAGREE  8 'NOT CALCULATED (Due to missing data)' /
   B1SEXTRA  8 'NOT CALCULATED (Due to missing data)' /
   B1SNEURO  8 'NOT CALCULATED (Due to missing data)' /
   B1SCONS1  8 'NOT CALCULATED (Due to missing data)' /
   B1SCONS2  8 'NOT CALCULATED (Due to missing data)' /
   B1SOPEN   8 'NOT CALCULATED (Due to missing data)' /
   B1SE7A    1 'TRUE OF YOU' 2 'SOMEWHAT TRUE' 3 'SOMEWHAT FALSE' 4 'FALSE'
             8 'REFUSED' 9 'INAPP' /
   B1SE7B    1 'TRUE OF YOU' 2 'SOMEWHAT TRUE' 3 'SOMEWHAT FALSE' 4 'FALSE'
             8 'REFUSED' 9 'INAPP' /
   B1SE7C    1 'TRUE OF YOU' 2 'SOMEWHAT TRUE' 3 'SOMEWHAT FALSE' 4 'FALSE'
             8 'REFUSED' 9 'INAPP' /
   B1SE7D    1 'TRUE OF YOU' 2 'SOMEWHAT TRUE' 3 'SOMEWHAT FALSE' 4 'FALSE'
             8 'REFUSED' 9 'INAPP' /
   B1SE7E    1 'TRUE OF YOU' 2 'SOMEWHAT TRUE' 3 'SOMEWHAT FALSE' 4 'FALSE'
             8 'REFUSED' 9 'INAPP' /
   B1SE7F    1 'TRUE OF YOU' 2 'SOMEWHAT TRUE' 3 'SOMEWHAT FALSE' 4 'FALSE'
             8 'REFUSED' 9 'INAPP' /
   B1SE7G    1 'TRUE OF YOU' 2 'SOMEWHAT TRUE' 3 'SOMEWHAT FALSE' 4 'FALSE'
             8 'REFUSED' 9 'INAPP' /
   B1SE7H    1 'TRUE OF YOU' 2 'SOMEWHAT TRUE' 3 'SOMEWHAT FALSE' 4 'FALSE'
             8 'REFUSED' 9 'INAPP' /
   B1SE7I    1 'TRUE OF YOU' 2 'SOMEWHAT TRUE' 3 'SOMEWHAT FALSE' 4 'FALSE'
             8 'REFUSED' 9 'INAPP' /
   B1SE7J    1 'TRUE OF YOU' 2 'SOMEWHAT TRUE' 3 'SOMEWHAT FALSE' 4 'FALSE'
             8 'REFUSED' 9 'INAPP' /
   B1SE7K    1 'TRUE OF YOU' 2 'SOMEWHAT TRUE' 3 'SOMEWHAT FALSE' 4 'FALSE'
             8 'REFUSED' 9 'INAPP' /
   B1SE7L    1 'TRUE OF YOU' 2 'SOMEWHAT TRUE' 3 'SOMEWHAT FALSE' 4 'FALSE'
             8 'REFUSED' 9 'INAPP' /
   B1SE7M    1 'TRUE OF YOU' 2 'SOMEWHAT TRUE' 3 'SOMEWHAT FALSE' 4 'FALSE'
             8 'REFUSED' 9 'INAPP' /
   B1SE7N    1 'TRUE OF YOU' 2 'SOMEWHAT TRUE' 3 'SOMEWHAT FALSE' 4 'FALSE'
             8 'REFUSED' 9 'INAPP' /
   B1SE7O    1 'TRUE OF YOU' 2 'SOMEWHAT TRUE' 3 'SOMEWHAT FALSE' 4 'FALSE'
             8 'REFUSED' 9 'INAPP' /
   B1SE7P    1 'TRUE OF YOU' 2 'SOMEWHAT TRUE' 3 'SOMEWHAT FALSE' 4 'FALSE'
             8 'REFUSED' 9 'INAPP' /
   B1SE7Q    1 'TRUE OF YOU' 2 'SOMEWHAT TRUE' 3 'SOMEWHAT FALSE' 4 'FALSE'
             8 'REFUSED' 9 'INAPP' /
   B1SE7R    1 'TRUE OF YOU' 2 'SOMEWHAT TRUE' 3 'SOMEWHAT FALSE' 4 'FALSE'
             8 'REFUSED' 9 'INAPP' /
   B1SE7S    1 'TRUE OF YOU' 2 'SOMEWHAT TRUE' 3 'SOMEWHAT FALSE' 4 'FALSE'
             8 'REFUSED' 9 'INAPP' /
   B1SE7T    1 'TRUE OF YOU' 2 'SOMEWHAT TRUE' 3 'SOMEWHAT FALSE' 4 'FALSE'
             8 'REFUSED' 9 'INAPP' /
   B1SE7U    1 'TRUE OF YOU' 2 'SOMEWHAT TRUE' 3 'SOMEWHAT FALSE' 4 'FALSE'
             8 'REFUSED' 9 'INAPP' /
   B1SE7V    1 'TRUE OF YOU' 2 'SOMEWHAT TRUE' 3 'SOMEWHAT FALSE' 4 'FALSE'
             8 'REFUSED' 9 'INAPP' /
   B1SE7W    1 'TRUE OF YOU' 2 'SOMEWHAT TRUE' 3 'SOMEWHAT FALSE' 4 'FALSE'
             8 'REFUSED' 9 'INAPP' /
   B1SE7X    1 'TRUE OF YOU' 2 'SOMEWHAT TRUE' 3 'SOMEWHAT FALSE' 4 'FALSE'
             8 'REFUSED' 9 'INAPP' /
   B1SE7Y    1 'TRUE OF YOU' 2 'SOMEWHAT TRUE' 3 'SOMEWHAT FALSE' 4 'FALSE'
             8 'REFUSED' 9 'INAPP' /
   B1SE7Z    1 'TRUE OF YOU' 2 'SOMEWHAT TRUE' 3 'SOMEWHAT FALSE' 4 'FALSE'
             8 'REFUSED' 9 'INAPP' /
   B1SE7AA   1 'TRUE OF YOU' 2 'SOMEWHAT TRUE' 3 'SOMEWHAT FALSE' 4 'FALSE'
             8 'REFUSED' 9 'INAPP' /
   B1SE7BB   1 'TRUE OF YOU' 2 'SOMEWHAT TRUE' 3 'SOMEWHAT FALSE' 4 'FALSE'
             8 'REFUSED' 9 'INAPP' /
   B1SE7CC   1 'TRUE OF YOU' 2 'SOMEWHAT TRUE' 3 'SOMEWHAT FALSE' 4 'FALSE'
             8 'REFUSED' 9 'INAPP' /
   B1SE7DD   1 'TRUE OF YOU' 2 'SOMEWHAT TRUE' 3 'SOMEWHAT FALSE' 4 'FALSE'
             8 'REFUSED' 9 'INAPP' /
   B1SE7EE   1 'TRUE OF YOU' 2 'SOMEWHAT TRUE' 3 'SOMEWHAT FALSE' 4 'FALSE'
             8 'REFUSED' 9 'INAPP' /
   B1SE7FF   1 'TRUE OF YOU' 2 'SOMEWHAT TRUE' 3 'SOMEWHAT FALSE' 4 'FALSE'
             8 'REFUSED' 9 'INAPP' /
   B1SE7GG   1 'TRUE OF YOU' 2 'SOMEWHAT TRUE' 3 'SOMEWHAT FALSE' 4 'FALSE'
             8 'REFUSED' 9 'INAPP' /
   B1SE8     1 'SITUATION 1 RIDING RAPIDS'
             2 'SITUATION 2 WAITING FOR SOMEONE WHO IS LATE' 8 'REFUSED'
             9 'INAPP' /
   B1SE8A    1 'I WOULD DEFINITELY DISLIKE IT'
             2 'I WOULD DISLIKE IT SOMEWHAT' 8 'REFUSED' 9 'INAPP' /
   B1SE9     1 'SITUATION 1 LIONS LOOSE AT CIRCUS'
             2 'SITUATION 2 CLERK SOLD WRONG TICKETS' 8 'REFUSED' 9 'INAPP' /
   B1SE9A    1 'I WOULD DEFINITELY DISLIKE IT'
             2 'I WOULD DISLIKE IT SOMEWHAT' 8 'REFUSED' 9 'INAPP' /
   B1SMPQWB  98 'NOT CALCULATED (Due to missing data)' /
   B1SMPQSP  98 'NOT CALCULATED (Due to missing data)' /
   B1SMPQAC  98 'NOT CALCULATED (Due to missing data)' /
   B1SMPQSC  98 'NOT CALCULATED (Due to missing data)' /
   B1SMPQSR  98 'NOT CALCULATED (Due to missing data)' /
   B1SMPQAG  98 'NOT CALCULATED (Due to missing data)' /
   B1SMPQAL  98 'NOT CALCULATED (Due to missing data)' /
   B1SMPQCN  98 'NOT CALCULATED (Due to missing data)' /
   B1SMPQTR  98 'NOT CALCULATED (Due to missing data)' /
   B1SMPQHA  98 'NOT CALCULATED (Due to missing data)' /
   B1SE10A   1 'AGREE A LOT' 2 'AGREE A LITTLE' 3 'NEITHER AGREE OR DISAGREE'
             4 'DISAGREE A LITTLE' 5 'DISAGREE A LOT' 8 'REFUSED' 9 'INAPP' /
   B1SE10B   1 'AGREE A LOT' 2 'AGREE A LITTLE' 3 'NEITHER AGREE OR DISAGREE'
             4 'DISAGREE A LITTLE' 5 'DISAGREE A LOT' 8 'REFUSED' 9 'INAPP' /
   B1SE10C   1 'AGREE A LOT' 2 'AGREE A LITTLE' 3 'NEITHER AGREE OR DISAGREE'
             4 'DISAGREE A LITTLE' 5 'DISAGREE A LOT' 8 'REFUSED' 9 'INAPP' /
   B1SE10D   1 'AGREE A LOT' 2 'AGREE A LITTLE' 3 'NEITHER AGREE OR DISAGREE'
             4 'DISAGREE A LITTLE' 5 'DISAGREE A LOT' 8 'REFUSED' 9 'INAPP' /
   B1SE10E   1 'AGREE A LOT' 2 'AGREE A LITTLE' 3 'NEITHER AGREE OR DISAGREE'
             4 'DISAGREE A LITTLE' 5 'DISAGREE A LOT' 8 'REFUSED' 9 'INAPP' /
   B1SE10F   1 'AGREE A LOT' 2 'AGREE A LITTLE' 3 'NEITHER AGREE OR DISAGREE'
             4 'DISAGREE A LITTLE' 5 'DISAGREE A LOT' 8 'REFUSED' 9 'INAPP' /
   B1SOPTIM  98 'NOT CALCULATED (Due to missing data)' /
   B1SPESSI  98 'NOT CALCULATED (Due to missing data)' /
   B1SORIEN  98 'NOT CALCULATED (Due to missing data)' /
   B1SE11A   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SE11B   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SE11C   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SE11D   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SE11E   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SE11F   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SE11G   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SE11H   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SE11I   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SE11J   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SE11K   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SE11L   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SE11M   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SE11N   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SE11O   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SE11P   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SE11Q   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SE11R   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SE11S   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SE11T   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SE11U   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SE11V   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SE11W   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SE11X   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SE11Y   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SE11Z   1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SE11AA  1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SE11A1  998 'REFUSED' 999 'INAPP' /
   B1SE11A3  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11A4  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11B1  998 'REFUSED' 999 'INAPP' /
   B1SE11B3  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11B4  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11C1  998 'REFUSED' 999 'INAPP' /
   B1SE11C3  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11C4  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11D1  998 'REFUSED' 999 'INAPP' /
   B1SE11D3  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11D4  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11E1  998 'REFUSED' 999 'INAPP' /
   B1SE11E3  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11E4  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11F1  998 'REFUSED' 999 'INAPP' /
   B1SE11F3  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11F4  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11G1  998 'REFUSED' 999 'INAPP' /
   B1SE11G3  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11G4  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11H1  998 'REFUSED' 999 'INAPP' /
   B1SE11H3  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11H4  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11I1  998 'REFUSED' 999 'INAPP' /
   B1SE11I3  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11I4  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11J1  998 'REFUSED' 999 'INAPP' /
   B1SE11J3  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11J4  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11K1  998 'REFUSED' 999 'INAPP' /
   B1SE11K3  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11K4  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11L1  998 'REFUSED' 999 'INAPP' /
   B1SE11L3  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11L4  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11M1  998 'REFUSED' 999 'INAPP' /
   B1SE11M3  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11M4  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11N1  998 'REFUSED' 999 'INAPP' /
   B1SE11N3  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11N4  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11O1  998 'REFUSED' 999 'INAPP' /
   B1SE11O3  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11O4  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11P1  998 'REFUSED' 999 'INAPP' /
   B1SE11P3  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11P4  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11Q1  998 'REFUSED' 999 'INAPP' /
   B1SE11Q3  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11Q4  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11R1  998 'REFUSED' 999 'INAPP' /
   B1SE11R3  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11R4  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11S1  998 'REFUSED' 999 'INAPP' /
   B1SE11S3  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11S4  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11T1  998 'REFUSED' 999 'INAPP' /
   B1SE11T3  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11T4  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11U1  998 'REFUSED' 999 'INAPP' /
   B1SE11U3  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11U4  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11V1  998 'REFUSED' 999 'INAPP' /
   B1SE11V3  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11V4  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11W1  998 'REFUSED' 999 'INAPP' /
   B1SE11W3  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11W4  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11X1  998 'REFUSED' 999 'INAPP' /
   B1SE11X3  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11X4  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11Y1  998 'REFUSED' 999 'INAPP' /
   B1SE11Y3  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11Y4  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11Z1  998 'REFUSED' 999 'INAPP' /
   B1SE11Z3  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11Z4  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11AW  998 'REFUSED' 999 'INAPP' /
   B1SE11AY  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE11AZ  -2 'VERY NEGATIVELY' 0 'NOT AT ALL' 2 'VERY POSITIVELY'
             8 'REFUSED' 9 'INAPP' /
   B1SE12A   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE12B   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE12C   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE12D   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE12E   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE12F   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE12G   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE12H   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE12I   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE12J   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE12K   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE12L   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE12M   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE12N   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE12O   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE12P   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE12Q   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE12R   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE12S   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE12T   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE12U   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE12V   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE12W   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE12X   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE12Y   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE12Z   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE12AA  1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE12BB  1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE12CC  1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE12DD  1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE12EE  1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE12FF  1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE12GG  1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE12HH  1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE12II  1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE12JJ  1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE12KK  1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE12LL  1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SE12MM  1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SPERSI  8 'NOT CALCULATED (Due to missing data)' /
   B1SREAPP  8 'NOT CALCULATED (Due to missing data)' /
   B1SCHANG  8 'NOT CALCULATED (Due to missing data)' /
   B1SSPCTR  98 'NOT CALCULATED (Due to missing data)' /
   B1SCPCTR  98 'NOT CALCULATED (Due to missing data)' /
   B1SSSCTR  98 'NOT CALCULATED (Due to missing data)' /
   B1SCSCDE  98 'NOT CALCULATED (Due to missing data)' /
   B1SCSCSP  98 'NOT CALCULATED (Due to missing data)' /
   B1SCSCAG  98 'NOT CALCULATED (Due to missing data)' /
   B1SDIREC  8 'NOT CALCULATED (Due to missing data)' /
   B1STODAY  8 'NOT CALCULATED (Due to missing data)' /
   B1SINSGH  8 'NOT CALCULATED (Due to missing data)' /
   B1SFORSG  8 'Refusal' /
   B1SSUFFI  8 'NOT CALCULATED (Due to missing data)' /
   B1SE13A   1 'A LOT' 2 'A MEDIUM AMOUNT' 3 'ONLY A LITTLE' 4 'NOT AT ALL'
             8 'REFUSED' 9 'INAPP' /
   B1SE13B   1 'A LOT' 2 'A MEDIUM AMOUNT' 3 'ONLY A LITTLE' 4 'NOT AT ALL'
             8 'REFUSED' 9 'INAPP' /
   B1SE13C   1 'A LOT' 2 'A MEDIUM AMOUNT' 3 'ONLY A LITTLE' 4 'NOT AT ALL'
             8 'REFUSED' 9 'INAPP' /
   B1SE13D   1 'A LOT' 2 'A MEDIUM AMOUNT' 3 'ONLY A LITTLE' 4 'NOT AT ALL'
             8 'REFUSED' 9 'INAPP' /
   B1SE13E   1 'A LOT' 2 'A MEDIUM AMOUNT' 3 'ONLY A LITTLE' 4 'NOT AT ALL'
             8 'REFUSED' 9 'INAPP' /
   B1SE13F   1 'A LOT' 2 'A MEDIUM AMOUNT' 3 'ONLY A LITTLE' 4 'NOT AT ALL'
             8 'REFUSED' 9 'INAPP' /
   B1SE13G   1 'A LOT' 2 'A MEDIUM AMOUNT' 3 'ONLY A LITTLE' 4 'NOT AT ALL'
             8 'REFUSED' 9 'INAPP' /
   B1SE13H   1 'A LOT' 2 'A MEDIUM AMOUNT' 3 'ONLY A LITTLE' 4 'NOT AT ALL'
             8 'REFUSED' 9 'INAPP' /
   B1SE13I   1 'A LOT' 2 'A MEDIUM AMOUNT' 3 'ONLY A LITTLE' 4 'NOT AT ALL'
             8 'REFUSED' 9 'INAPP' /
   B1SE13J   1 'A LOT' 2 'A MEDIUM AMOUNT' 3 'ONLY A LITTLE' 4 'NOT AT ALL'
             8 'REFUSED' 9 'INAPP' /
   B1SE13K   1 'A LOT' 2 'A MEDIUM AMOUNT' 3 'ONLY A LITTLE' 4 'NOT AT ALL'
             8 'REFUSED' 9 'INAPP' /
   B1SE13L   1 'A LOT' 2 'A MEDIUM AMOUNT' 3 'ONLY A LITTLE' 4 'NOT AT ALL'
             8 'REFUSED' 9 'INAPP' /
   B1SE13M   1 'A LOT' 2 'A MEDIUM AMOUNT' 3 'ONLY A LITTLE' 4 'NOT AT ALL'
             8 'REFUSED' 9 'INAPP' /
   B1SE13N   1 'A LOT' 2 'A MEDIUM AMOUNT' 3 'ONLY A LITTLE' 4 'NOT AT ALL'
             8 'REFUSED' 9 'INAPP' /
   B1SE13O   1 'A LOT' 2 'A MEDIUM AMOUNT' 3 'ONLY A LITTLE' 4 'NOT AT ALL'
             8 'REFUSED' 9 'INAPP' /
   B1SE13P   1 'A LOT' 2 'A MEDIUM AMOUNT' 3 'ONLY A LITTLE' 4 'NOT AT ALL'
             8 'REFUSED' 9 'INAPP' /
   B1SE13Q   1 'A LOT' 2 'A MEDIUM AMOUNT' 3 'ONLY A LITTLE' 4 'NOT AT ALL'
             8 'REFUSED' 9 'INAPP' /
   B1SE13R   1 'A LOT' 2 'A MEDIUM AMOUNT' 3 'ONLY A LITTLE' 4 'NOT AT ALL'
             8 'REFUSED' 9 'INAPP' /
   B1SE13S   1 'A LOT' 2 'A MEDIUM AMOUNT' 3 'ONLY A LITTLE' 4 'NOT AT ALL'
             8 'REFUSED' 9 'INAPP' /
   B1SE13T   1 'A LOT' 2 'A MEDIUM AMOUNT' 3 'ONLY A LITTLE' 4 'NOT AT ALL'
             8 'REFUSED' 9 'INAPP' /
   B1SE13U   1 'A LOT' 2 'A MEDIUM AMOUNT' 3 'ONLY A LITTLE' 4 'NOT AT ALL'
             8 'REFUSED' 9 'INAPP' /
   B1SE13V   1 'A LOT' 2 'A MEDIUM AMOUNT' 3 'ONLY A LITTLE' 4 'NOT AT ALL'
             8 'REFUSED' 9 'INAPP' /
   B1SE13W   1 'A LOT' 2 'A MEDIUM AMOUNT' 3 'ONLY A LITTLE' 4 'NOT AT ALL'
             8 'REFUSED' 9 'INAPP' /
   B1SE13X   1 'A LOT' 2 'A MEDIUM AMOUNT' 3 'ONLY A LITTLE' 4 'NOT AT ALL'
             8 'REFUSED' 9 'INAPP' /
   B1SE13Y   1 'A LOT' 2 'A MEDIUM AMOUNT' 3 'ONLY A LITTLE' 4 'NOT AT ALL'
             8 'REFUSED' 9 'INAPP' /
   B1SE13Z   1 'A LOT' 2 'A MEDIUM AMOUNT' 3 'ONLY A LITTLE' 4 'NOT AT ALL'
             8 'REFUSED' 9 'INAPP' /
   B1SREINT  98 'NOT CALCULATED (Due to missing data)' /
   B1SACTIV  98 'NOT CALCULATED (Due to missing data)' /
   B1SPLAN   98 'NOT CALCULATED (Due to missing data)' /
   B1SVENT   98 'NOT CALCULATED (Due to missing data)' /
   B1SDENIA  98 'NOT CALCULATED (Due to missing data)' /
   B1SDISEN  98 'NOT CALCULATED (Due to missing data)' /
   B1SFDCOP  98 'NOT CALCULATED (Due to missing data)' /
   B1SPRCOP  98 'NOT CALCULATED (Due to missing data)' /
   B1SEMCOP  98 'NOT CALCULATED (Due to missing data)' /
   B1SE14    998 'REFUSED' 999 'INAPP' /
   B1SE15    998 'REFUSED' 999 'INAPP' /
   B1SE16    998 'REFUSED' 999 'INAPP' /
   B1SE17    998 'REFUSED' 999 'INAPP' /
   B1SE18    998 'REFUSED' 999 'INAPP' /
   B1SE19    998 'REFUSED' 999 'INAPP' /
   B1SF1     0 'WORST' 10 'BEST' 98 'REFUSED' 99 'INAPP' /
   B1SF2     0 'WORST' 10 'BEST' 98 'REFUSED' 99 'INAPP' /
   B1SF3     0 'WORST' 10 'BEST' 98 'REFUSED' 99 'INAPP' /
   B1SF4     0 'NONE' 10 'VERY MUCH' 98 'REFUSED' 99 'INAPP' /
   B1SF5     0 'NONE' 10 'VERY MUCH' 98 'REFUSED' 99 'INAPP' /
   B1SF6     998 'REFUSED' 999 'INAPP' /
   B1SF7     998 'REFUSED' 999 'INAPP' /
   B1SF8     998 'REFUSED' 999 'INAPP' /
   B1SF9A    998 'REFUSED' 999 'INAPP' /
   B1SF9B    1 'WEEKS' 2 'MONTHS' 3 'YEARS' 8 'REFUSED' 9 'INAPP' /
   B1SF10    1 'COULD NOT FIND JOB' 2 'PHYSICAL INJURY ILLNESS'
             3 'MENTAL EMOTIONAL PROB' 4 'ALCOHOL SUBSTANCE ABUSE'
             5 'FAMILY RESPONSIBILITIES' 6 'STUDENT' 7 'PERSONAL INTERESTS'
             8 'REFUSED' 9 'INAPP' /
   B1SF11A   1 'FULL TIME' 2 'PART TIME' 3 'NO WORK' 4 'STUDENT' 8 'REFUSED'
             9 'INAPP' /
   B1SF11AS  1 'FULL TIME' 2 'PART TIME' 3 'NO WORK' 4 'STUDENT' 8 'REFUSED'
             9 'INAPP' /
   B1SF11B   1 'FULL TIME' 2 'PART TIME' 3 'NO WORK' 4 'STUDENT' 8 'REFUSED'
             9 'INAPP' /
   B1SF11BS  1 'FULL TIME' 2 'PART TIME' 3 'NO WORK' 4 'STUDENT' 8 'REFUSED'
             9 'INAPP' /
   B1SF11C   1 'FULL TIME' 2 'PART TIME' 3 'NO WORK' 4 'STUDENT' 8 'REFUSED'
             9 'INAPP' /
   B1SF11CS  1 'FULL TIME' 2 'PART TIME' 3 'NO WORK' 4 'STUDENT' 8 'REFUSED'
             9 'INAPP' /
   B1SF11D   1 'FULL TIME' 2 'PART TIME' 3 'NO WORK' 4 'STUDENT' 8 'REFUSED'
             9 'INAPP' /
   B1SF11DS  1 'FULL TIME' 2 'PART TIME' 3 'NO WORK' 4 'STUDENT' 8 'REFUSED'
             9 'INAPP' /
   B1SF11E   1 'FULL TIME' 2 'PART TIME' 3 'NO WORK' 4 'STUDENT' 8 'REFUSED'
             9 'INAPP' /
   B1SF11ES  1 'FULL TIME' 2 'PART TIME' 3 'NO WORK' 4 'STUDENT' 8 'REFUSED'
             9 'INAPP' /
   B1SF11F   1 'FULL TIME' 2 'PART TIME' 3 'NO WORK' 4 'STUDENT' 8 'REFUSED'
             9 'INAPP' /
   B1SF11FS  1 'FULL TIME' 2 'PART TIME' 3 'NO WORK' 4 'STUDENT' 8 'REFUSED'
             9 'INAPP' /
   B1SF11G   1 'FULL TIME' 2 'PART TIME' 3 'NO WORK' 4 'STUDENT' 8 'REFUSED'
             9 'INAPP' /
   B1SF11GS  1 'FULL TIME' 2 'PART TIME' 3 'NO WORK' 4 'STUDENT' 8 'REFUSED'
             9 'INAPP' /
   B1SF11H   1 'FULL TIME' 2 'PART TIME' 3 'NO WORK' 4 'STUDENT' 8 'REFUSED'
             9 'INAPP' /
   B1SF11HS  1 'FULL TIME' 2 'PART TIME' 3 'NO WORK' 4 'STUDENT' 8 'REFUSED'
             9 'INAPP' /
   B1SF11I   1 'FULL TIME' 2 'PART TIME' 3 'NO WORK' 4 'STUDENT' 8 'REFUSED'
             9 'INAPP' /
   B1SF11IS  1 'FULL TIME' 2 'PART TIME' 3 'NO WORK' 4 'STUDENT' 8 'REFUSED'
             9 'INAPP' /
   B1SF11J   1 'FULL TIME' 2 'PART TIME' 3 'NO WORK' 4 'STUDENT' 8 'REFUSED'
             9 'INAPP' /
   B1SF11JS  1 'FULL TIME' 2 'PART TIME' 3 'NO WORK' 4 'STUDENT' 8 'REFUSED'
             9 'INAPP' /
   B1SF12A   98 'REFUSED' 99 'INAPP' /
   B1SF12B   98 'REFUSED' 99 'INAPP' /
   B1SF12C   98 'REFUSED' 99 'INAPP' /
   B1SF12D   98 'REFUSED' 99 'INAPP' /
   B1SF13    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SF14A   1 '4+ PER WEEK' 2 '2 TO 3 PER WEEK' 3 'ONCE PER WEEK'
             4 '1 TO 3 PER MONTH' 5 'LESS THAN ONCE PER MONTH' 8 'REFUSED'
             9 'INAPP' /
   B1SF14B   1 '4+ PER WEEK' 2 '2 TO 3 PER WEEK' 3 'ONCE PER WEEK'
             4 '1 TO 3 PER MONTH' 5 'LESS THAN ONCE PER MONTH' 8 'REFUSED'
             9 'INAPP' /
   B1SF14C   1 '4+ PER WEEK' 2 '2 TO 3 PER WEEK' 3 'ONCE PER WEEK'
             4 '1 TO 3 PER MONTH' 5 'LESS THAN ONCE PER MONTH' 8 'REFUSED'
             9 'INAPP' /
   B1SF14D   1 '4+ PER WEEK' 2 '2 TO 3 PER WEEK' 3 'ONCE PER WEEK'
             4 '1 TO 3 PER MONTH' 5 'LESS THAN ONCE PER MONTH' 8 'REFUSED'
             9 'INAPP' /
   B1SF15A   98 'REFUSED' 99 'INAPP' /
   B1SF15B   98 'REFUSED' 99 'INAPP' /
   B1SF15C   1 'AM' 2 'PM' 3 'MIDNIGHT' 4 'NOON' 8 'REFUSED' 9 'INAPP' /
   B1SF16A   98 'REFUSED' 99 'INAPP' /
   B1SF16B   98 'REFUSED' 99 'INAPP' /
   B1SF16C   1 'AM' 2 'PM' 3 'MIDNIGHT' 4 'NOON' 8 'REFUSED' 9 'INAPP' /
   B1SF17A   98 'REFUSED' 99 'INAPP' /
   B1SF17B   98 'REFUSED' 99 'INAPP' /
   B1SF18    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SF19    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SF20    1 'EXCELLENT' 2 'VERY GOOD' 3 'GOOD' 4 'FAIR' 5 'POOR'
             8 'REFUSED' 9 'INAPP' /
   B1SF21    1 'VERY POSITIVE' 2 'SOMEWHAT POSITIVE' 3 'NEITHER'
             4 'SOMEWHAT NEGATIVE' 5 'VERY NEGATIVE' 8 'REFUSED' 9 'INAPP' /
   B1SF22    1 'VERY POSITIVE' 2 'SOMEWHAT POSITIVE' 3 'NEITHER'
             4 'SOMEWHAT NEGATIVE' 5 'VERY NEGATIVE' 8 'REFUSED' 9 'INAPP' /
   B1SF23A   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'LITTLE OF THE TIME' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF23B   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'LITTLE OF THE TIME' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF23C   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'LITTLE OF THE TIME' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF23D   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'LITTLE OF THE TIME' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF23E   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'LITTLE OF THE TIME' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF23F   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'LITTLE OF THE TIME' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF23G   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'LITTLE OF THE TIME' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF23H   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'LITTLE OF THE TIME' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF23I   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'LITTLE OF THE TIME' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF23J   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'LITTLE OF THE TIME' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF23K   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'LITTLE OF THE TIME' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF23L   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'LITTLE OF THE TIME' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF23M   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'LITTLE OF THE TIME' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF23N   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'LITTLE OF THE TIME' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF24    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SF25    998 'REFUSED' 999 'INAPP' /
   B1SF26    1 'VERY SERIOUS' 2 'MODERATELY SERIOUS' 3 'SOMEWHAT SERIOUS'
             4 'A LITTLE SERIOUS' 5 'NOT VERY SERIOUS AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SF27A   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF27B   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF27C   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF27D   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF27E   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF27F   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF27G   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF27H   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF27I   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF27J   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF27K   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF27L   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF27M   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF27N   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF27O   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF27P   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SPOSWF  98 'NOT CALCULATED (Due to missing data)'
             99 'NOT CALCULATED (Does not apply)' /
   B1SNEGWF  98 'NOT CALCULATED (Due to missing data)'
             99 'NOT CALCULATED (Does not apply)' /
   B1SPOSFW  98 'NOT CALCULATED (Due to missing data)'
             99 'NOT CALCULATED (Does not apply)' /
   B1SNEGFW  98 'NOT CALCULATED (Due to missing data)'
             99 'NOT CALCULATED (Does not apply)' /
   B1SF28A   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF28B   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF28C   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF28D   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF28E   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF28F   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF28G   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF28H   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF28I   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF28J   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF28K   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF29A   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF29B   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF29C   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF29D   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SJCSD   98 'NOT CALCULATED (Due to missing data)'
             99 'NOT CALCULATED (Does not apply)' /
   B1SJCDA   98 'NOT CALCULATED (Due to missing data)'
             99 'NOT CALCULATED (Does not apply)' /
   B1SJCDS   98 'NOT CALCULATED (Due to missing data)'
             99 'NOT CALCULATED (Does not apply)' /
   B1SF30A   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 6 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SF30B   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 6 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SF30C   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 6 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SF30D   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 6 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SF30E   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 6 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SJCCS   98 'NOT CALCULATED (Due to missing data)'
             99 'NOT CALCULATED (Due to Does not apply)' /
   B1SJCSS   98 'NOT CALCULATED (Due to missing data)'
             99 'NOT CALCULATED (Due to Does not apply)' /
   B1SF31A   1 'ONCE A WEEK+' 2 'FEW TIMES A MONTH' 3 'FEW TIMES A YEAR'
             4 'LESS ONCE A YEAR' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF31B   1 'ONCE A WEEK+' 2 'FEW TIMES A MONTH' 3 'FEW TIMES A YEAR'
             4 'LESS ONCE A YEAR' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF31C   1 'ONCE A WEEK+' 2 'FEW TIMES A MONTH' 3 'FEW TIMES A YEAR'
             4 'LESS ONCE A YEAR' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF31D   1 'ONCE A WEEK+' 2 'FEW TIMES A MONTH' 3 'FEW TIMES A YEAR'
             4 'LESS ONCE A YEAR' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF31E   1 'ONCE A WEEK+' 2 'FEW TIMES A MONTH' 3 'FEW TIMES A YEAR'
             4 'LESS ONCE A YEAR' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF31F   1 'ONCE A WEEK+' 2 'FEW TIMES A MONTH' 3 'FEW TIMES A YEAR'
             4 'LESS ONCE A YEAR' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SJOBDI  98 'NOT CALCULATED (Due to missing data)'
             99 'NOT CALCULATED (Does not apply)' /
   B1SF32A   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SF32B   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SF32C   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SF32D   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SF32E   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SF32F   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SPIWOR  8 'Not calculated (Due to missing data)'
             9 'NOT CALCULATED (Does not apply)' /
   B1SF33A   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF33B   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF33C   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF33D   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'RARELY' 5 'NEVER' 8 'REFUSED' 9 'INAPP' /
   B1SF34A   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SF34B   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SF34C   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SF35A   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL'
             5 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SF35B   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL'
             5 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SF35C   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL'
             5 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SG1     0 'WORST' 10 'BEST' 98 'REFUSED' 99 'INAPP' /
   B1SG2     0 'WORST' 10 'BEST' 98 'REFUSED' 99 'INAPP' /
   B1SG3     0 'WORST' 10 'BEST' 98 'REFUSED' 99 'INAPP' /
   B1SG4     0 'NONE' 10 'VERY MUCH' 98 'REFUSED' 99 'INAPP' /
   B1SG5     0 'NONE' 10 'VERY MUCH' 98 'REFUSED' 99 'INAPP' /
   B1SG6     1 'MORE MONEY' 2 'JUST ENOUGH MONEY' 3 'NOT ENOUGH MONEY'
             8 'REFUSED' 9 'INAPP' /
   B1SG7     1 'VERY DIFFICULT' 2 'SOMEWHAT DIFFICULT' 3 'NOT VERY DIFFICULT'
             4 'NOT AT ALL DIFFICULT' 8 'REFUSED' 9 'INAPP' /
   B1SG8A    1 'LESS THAN $0' 2 '$O (NONE)' 3 '$1 - $1,999'
             4 '$2,000 - $3,999' 5 '$4,000 - $5,999' 6 '$6,000 - $7,999'
             7 '$8,000 - $9,999' 8 '$10,000 - $11,999' 9 '$12,000 - $13,999'
             10 '$14,000 - $15,999' 11 '$16,000 - $17,999'
             12 '$18,000 - $19,999' 13 '$20,000 - $22,499'
             14 '$22,500 - $24,499' 15 '$25,000 - $27,499'
             16 '$27,500 - $29,999' 17 '$30,000 - $32,499'
             18 '$32,500 - $34,999' 19 '$35,000 - $37,499'
             20 '$37,500 - $39,999' 21 '$40,000 - $42,499'
             22 '$42,500 - $44,999' 23 '$45,000 - $47,499'
             24 '$47,500 - $49,999' 25 '$50,000 - $54,999'
             26 '$55,000 - $59,999' 27 '$60,000 - $64,999'
             28 '$65,000 - $69,999' 29 '$70,000 - $74,999'
             30 '$75,000 - $79,999' 31 '$80,000 - $84,999'
             32 '$85,000 - $89,999' 33 '$90,000 - $94,999'
             34 '$95,000 - $99,999' 35 '$100,000 - $109,999'
             36 '$110,000 - $119,999' 37 '$120,000 - $129,999'
             38 '$130,000 - $139,999' 39 '$140,000 - $149,999'
             40 '$150,000 - $174,999' 41 '$175,000 - $199,999'
             42 '$200,000 OR MORE' 98 'REFUSED' 99 'INAPP' /
   B1SG8B    1 'LESS THAN $0' 2 '$O (NONE)' 3 '$1 - $1,999'
             4 '$2,000 - $3,999' 5 '$4,000 - $5,999' 6 '$6,000 - $7,999'
             7 '$8,000 - $9,999' 8 '$10,000 - $11,999' 9 '$12,000 - $13,999'
             10 '$14,000 - $15,999' 11 '$16,000 - $17,999'
             12 '$18,000 - $19,999' 13 '$20,000 - $22,499'
             14 '$22,500 - $24,499' 15 '$25,000 - $27,499'
             16 '$27,500 - $29,999' 17 '$30,000 - $32,499'
             18 '$32,500 - $34,999' 19 '$35,000 - $37,499'
             20 '$37,500 - $39,999' 21 '$40,000 - $42,499'
             22 '$42,500 - $44,999' 23 '$45,000 - $47,499'
             24 '$47,500 - $49,999' 25 '$50,000 - $54,999'
             26 '$55,000 - $59,999' 27 '$60,000 - $64,999'
             28 '$65,000 - $69,999' 29 '$70,000 - $74,999'
             30 '$75,000 - $79,999' 31 '$80,000 - $84,999'
             32 '$85,000 - $89,999' 33 '$90,000 - $94,999'
             34 '$95,000 - $99,999' 35 '$100,000 - $109,999'
             36 '$110,000 - $119,999' 37 '$120,000 - $129,999'
             38 '$130,000 - $139,999' 39 '$140,000 - $149,999'
             40 '$150,000 - $174,999' 41 '$175,000 - $199,999'
             42 '$200,000 OR MORE' 98 'REFUSED' 99 'INAPP' /
   B1SG8C    1 'LESS THAN $0' 2 '$O (NONE)' 3 '$1 - $1,999'
             4 '$2,000 - $3,999' 5 '$4,000 - $5,999' 6 '$6,000 - $7,999'
             7 '$8,000 - $9,999' 8 '$10,000 - $11,999' 9 '$12,000 - $13,999'
             10 '$14,000 - $15,999' 11 '$16,000 - $17,999'
             12 '$18,000 - $19,999' 13 '$20,000 - $22,499'
             14 '$22,500 - $24,499' 15 '$25,000 - $27,499'
             16 '$27,500 - $29,999' 17 '$30,000 - $32,499'
             18 '$32,500 - $34,999' 19 '$35,000 - $37,499'
             20 '$37,500 - $39,999' 21 '$40,000 - $42,499'
             22 '$42,500 - $44,999' 23 '$45,000 - $47,499'
             24 '$47,500 - $49,999' 25 '$50,000 - $54,999'
             26 '$55,000 - $59,999' 27 '$60,000 - $64,999'
             28 '$65,000 - $69,999' 29 '$70,000 - $74,999'
             30 '$75,000 - $79,999' 31 '$80,000 - $84,999'
             32 '$85,000 - $89,999' 33 '$90,000 - $94,999'
             34 '$95,000 - $99,999' 35 '$100,000 - $109,999'
             36 '$110,000 - $119,999' 37 '$120,000 - $129,999'
             38 '$130,000 - $139,999' 39 '$140,000 - $149,999'
             40 '$150,000 - $174,999' 41 '$175,000 - $199,999'
             42 '$200,000 OR MORE' 98 'REFUSED' 99 'INAPP' /
   B1SG9A    1 'LESS THAN $0' 2 '$O (NONE)' 3 '$1 - $1,999'
             4 '$2,000 - $3,999' 5 '$4,000 - $5,999' 6 '$6,000 - $7,999'
             7 '$8,000 - $9,999' 8 '$10,000 - $11,999' 9 '$12,000 - $13,999'
             10 '$14,000 - $15,999' 11 '$16,000 - $17,999'
             12 '$18,000 - $19,999' 13 '$20,000 - $22,499'
             14 '$22,500 - $24,499' 15 '$25,000 - $27,499'
             16 '$27,500 - $29,999' 17 '$30,000 - $32,499'
             18 '$32,500 - $34,999' 19 '$35,000 - $37,499'
             20 '$37,500 - $39,999' 21 '$40,000 - $42,499'
             22 '$42,500 - $44,999' 23 '$45,000 - $47,499'
             24 '$47,500 - $49,999' 25 '$50,000 - $54,999'
             26 '$55,000 - $59,999' 27 '$60,000 - $64,999'
             28 '$65,000 - $69,999' 29 '$70,000 - $74,999'
             30 '$75,000 - $79,999' 31 '$80,000 - $84,999'
             32 '$85,000 - $89,999' 33 '$90,000 - $94,999'
             34 '$95,000 - $99,999' 35 '$100,000 - $109,999'
             36 '$110,000 - $119,999' 37 '$120,000 - $129,999'
             38 '$130,000 - $139,999' 39 '$140,000 - $149,999'
             40 '$150,000 - $174,999' 41 '$175,000 - $199,999'
             42 '$200,000 OR MORE' 98 'REFUSED' 99 'INAPP' /
   B1SG9B    1 'LESS THAN $0' 2 '$O (NONE)' 3 '$1 - $1,999'
             4 '$2,000 - $3,999' 5 '$4,000 - $5,999' 6 '$6,000 - $7,999'
             7 '$8,000 - $9,999' 8 '$10,000 - $11,999' 9 '$12,000 - $13,999'
             10 '$14,000 - $15,999' 11 '$16,000 - $17,999'
             12 '$18,000 - $19,999' 13 '$20,000 - $22,499'
             14 '$22,500 - $24,499' 15 '$25,000 - $27,499'
             16 '$27,500 - $29,999' 17 '$30,000 - $32,499'
             18 '$32,500 - $34,999' 19 '$35,000 - $37,499'
             20 '$37,500 - $39,999' 21 '$40,000 - $42,499'
             22 '$42,500 - $44,999' 23 '$45,000 - $47,499'
             24 '$47,500 - $49,999' 25 '$50,000 - $54,999'
             26 '$55,000 - $59,999' 27 '$60,000 - $64,999'
             28 '$65,000 - $69,999' 29 '$70,000 - $74,999'
             30 '$75,000 - $79,999' 31 '$80,000 - $84,999'
             32 '$85,000 - $89,999' 33 '$90,000 - $94,999'
             34 '$95,000 - $99,999' 35 '$100,000 - $109,999'
             36 '$110,000 - $119,999' 37 '$120,000 - $129,999'
             38 '$130,000 - $139,999' 39 '$140,000 - $149,999'
             40 '$150,000 - $174,999' 41 '$175,000 - $199,999'
             42 '$200,000 OR MORE' 98 'REFUSED' 99 'INAPP' /
   B1SG9C    1 'LESS THAN $0' 2 '$O (NONE)' 3 '$1 - $1,999'
             4 '$2,000 - $3,999' 5 '$4,000 - $5,999' 6 '$6,000 - $7,999'
             7 '$8,000 - $9,999' 8 '$10,000 - $11,999' 9 '$12,000 - $13,999'
             10 '$14,000 - $15,999' 11 '$16,000 - $17,999'
             12 '$18,000 - $19,999' 13 '$20,000 - $22,499'
             14 '$22,500 - $24,499' 15 '$25,000 - $27,499'
             16 '$27,500 - $29,999' 17 '$30,000 - $32,499'
             18 '$32,500 - $34,999' 19 '$35,000 - $37,499'
             20 '$37,500 - $39,999' 21 '$40,000 - $42,499'
             22 '$42,500 - $44,999' 23 '$45,000 - $47,499'
             24 '$47,500 - $49,999' 25 '$50,000 - $54,999'
             26 '$55,000 - $59,999' 27 '$60,000 - $64,999'
             28 '$65,000 - $69,999' 29 '$70,000 - $74,999'
             30 '$75,000 - $79,999' 31 '$80,000 - $84,999'
             32 '$85,000 - $89,999' 33 '$90,000 - $94,999'
             34 '$95,000 - $99,999' 35 '$100,000 - $109,999'
             36 '$110,000 - $119,999' 37 '$120,000 - $129,999'
             38 '$130,000 - $139,999' 39 '$140,000 - $149,999'
             40 '$150,000 - $174,999' 41 '$175,000 - $199,999'
             42 '$200,000 OR MORE' 98 'REFUSED' 99 'INAPP' /
   B1SG10A   1 'LESS THAN $0' 2 '$O (NONE)' 3 '$1 - $1,999'
             4 '$2,000 - $3,999' 5 '$4,000 - $5,999' 6 '$6,000 - $7,999'
             7 '$8,000 - $9,999' 8 '$10,000 - $11,999' 9 '$12,000 - $13,999'
             10 '$14,000 - $15,999' 11 '$16,000 - $17,999'
             12 '$18,000 - $19,999' 13 '$20,000 - $22,499'
             14 '$22,500 - $24,499' 15 '$25,000 - $27,499'
             16 '$27,500 - $29,999' 17 '$30,000 - $32,499'
             18 '$32,500 - $34,999' 19 '$35,000 - $37,499'
             20 '$37,500 - $39,999' 21 '$40,000 - $42,499'
             22 '$42,500 - $44,999' 23 '$45,000 - $47,499'
             24 '$47,500 - $49,999' 25 '$50,000 - $54,999'
             26 '$55,000 - $59,999' 27 '$60,000 - $64,999'
             28 '$65,000 - $69,999' 29 '$70,000 - $74,999'
             30 '$75,000 - $79,999' 31 '$80,000 - $84,999'
             32 '$85,000 - $89,999' 33 '$90,000 - $94,999'
             34 '$95,000 - $99,999' 35 '$100,000 - $109,999'
             36 '$110,000 - $119,999' 37 '$120,000 - $129,999'
             38 '$130,000 - $139,999' 39 '$140,000 - $149,999'
             40 '$150,000 - $174,999' 41 '$175,000 - $199,999'
             42 '$200,000 OR MORE' 98 'REFUSED' 99 'INAPP' /
   B1SG10B   1 'LESS THAN $0' 2 '$O (NONE)' 3 '$1 - $1,999'
             4 '$2,000 - $3,999' 5 '$4,000 - $5,999' 6 '$6,000 - $7,999'
             7 '$8,000 - $9,999' 8 '$10,000 - $11,999' 9 '$12,000 - $13,999'
             10 '$14,000 - $15,999' 11 '$16,000 - $17,999'
             12 '$18,000 - $19,999' 13 '$20,000 - $22,499'
             14 '$22,500 - $24,499' 15 '$25,000 - $27,499'
             16 '$27,500 - $29,999' 17 '$30,000 - $32,499'
             18 '$32,500 - $34,999' 19 '$35,000 - $37,499'
             20 '$37,500 - $39,999' 21 '$40,000 - $42,499'
             22 '$42,500 - $44,999' 23 '$45,000 - $47,499'
             24 '$47,500 - $49,999' 25 '$50,000 - $54,999'
             26 '$55,000 - $59,999' 27 '$60,000 - $64,999'
             28 '$65,000 - $69,999' 29 '$70,000 - $74,999'
             30 '$75,000 - $79,999' 31 '$80,000 - $84,999'
             32 '$85,000 - $89,999' 33 '$90,000 - $94,999'
             34 '$95,000 - $99,999' 35 '$100,000 - $109,999'
             36 '$110,000 - $119,999' 37 '$120,000 - $129,999'
             38 '$130,000 - $139,999' 39 '$140,000 - $149,999'
             40 '$150,000 - $174,999' 41 '$175,000 - $199,999'
             42 '$200,000 OR MORE' 98 'REFUSED' 99 'INAPP' /
   B1SG10C   1 'LESS THAN $0' 2 '$O (NONE)' 3 '$1 - $1,999'
             4 '$2,000 - $3,999' 5 '$4,000 - $5,999' 6 '$6,000 - $7,999'
             7 '$8,000 - $9,999' 8 '$10,000 - $11,999' 9 '$12,000 - $13,999'
             10 '$14,000 - $15,999' 11 '$16,000 - $17,999'
             12 '$18,000 - $19,999' 13 '$20,000 - $22,499'
             14 '$22,500 - $24,499' 15 '$25,000 - $27,499'
             16 '$27,500 - $29,999' 17 '$30,000 - $32,499'
             18 '$32,500 - $34,999' 19 '$35,000 - $37,499'
             20 '$37,500 - $39,999' 21 '$40,000 - $42,499'
             22 '$42,500 - $44,999' 23 '$45,000 - $47,499'
             24 '$47,500 - $49,999' 25 '$50,000 - $54,999'
             26 '$55,000 - $59,999' 27 '$60,000 - $64,999'
             28 '$65,000 - $69,999' 29 '$70,000 - $74,999'
             30 '$75,000 - $79,999' 31 '$80,000 - $84,999'
             32 '$85,000 - $89,999' 33 '$90,000 - $94,999'
             34 '$95,000 - $99,999' 35 '$100,000 - $109,999'
             36 '$110,000 - $119,999' 37 '$120,000 - $129,999'
             38 '$130,000 - $139,999' 39 '$140,000 - $149,999'
             40 '$150,000 - $174,999' 41 '$175,000 - $199,999'
             42 '$200,000 OR MORE' 98 'REFUSED' 99 'INAPP' /
   B1SG11A   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SG11B   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SG11C   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SG11D   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SG11E   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SG11F   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SG11G   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SG11H   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SG11I   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SG11J   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SG12    99999998 'REFUSED' 99999999 'INAPP' /
   B1SRINC1  9999998 'NOT CALCULATED (Due to missing data)' /
   B1SSINC1  9999998 'NOT CALCULATED (Due to missing data)' /
   B1SHINC1  9999998 'NOT CALCULATED (Due to missing data)' /
   B1SEARN1  9999998 'NOT CALCULATED (Due to missing data)' /
   B1SPNSN1  9999998 'NOT CALCULATED (Due to missing data)' /
   B1SSEC1   9999998 'NOT CALCULATED (Due to missing data)' /
   B1STINC1  9999998 'NOT CALCULATED (Due to missing data)' /
   B1SG13    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SG13A   99999998 'REFUSED' 99999999 'INAPP' /
   B1SG14    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SG14A   99999998 'REFUSED' 99999999 'INAPP' /
   B1SG15    1 'YES' 2 'NO' 7 'DON''T KNOW' 8 'REFUSED' 9 'INAPP' /
   B1SG15A   99999998 'REFUSED' 99999999 'INAPP' /
   B1SG16    1 'YES' 2 'NO' 4 'DOES NOT APPLY' 7 'DON''T KNOW' 8 'REFUSED'
             9 'INAPP' /
   B1SG16A   99999998 'REFUSED' 99999999 'INAPP' /
   B1SG17    1 'OWN MY OWN HOME' 2 'RENTING' 8 'REFUSED' 9 'INAPP' /
   B1SG17A   99999998 'REFUSED' 99999999 'INAPP' /
   B1SG17B   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SG18    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SG18A   99999998 'REFUSED' 99999999 'INAPP' /
   B1SG18B   99999998 'REFUSED' 99999999 'INAPP' /
   B1SG19    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SG19A   99999998 'REFUSED' 99999999 'INAPP' /
   B1SG20    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SG20A   99999998 'REFUSED' 99999999 'INAPP' /
   B1SG21    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SG21A   9998 'REFUSED' 9999 'INAPP' /
   B1SG21B   99999998 'REFUSED' 99999999 'INAPP' /
   B1SG22    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SG22A   99999998 'REFUSED' 99999999 'INAPP' /
   B1SG23    1 'WOULD HAVE MONEY LEFT OVER' 2 'WOULD STILL OWE MONEY'
             3 'DEBTS EQUAL ASSETS' 8 'REFUSED' 9 'INAPP' /
   B1SG24A   99999998 'REFUSED' 99999999 'INAPP' /
   B1SG24B   1 'MONEY LEFT OVER' 2 'MONEY OWED' 8 'REFUSED' 9 'INAPP' /
   B1SG25A   99999998 'REFUSED' 99999999 'INAPP' /
   B1SG25B   99999998 'REFUSED' 99999999 'INAPP' /
   B1SG25C   99999998 'REFUSED' 99999999 'INAPP' /
   B1SG25D   99999998 'REFUSED' 99999999 'INAPP' /
   B1SG25E   99999998 'REFUSED' 99999999 'INAPP' /
   B1SG25F   99999998 'REFUSED' 99999999 'INAPP' /
   B1SG25G   99999998 'REFUSED' 99999999 'INAPP' /
   B1SG25H   99999998 'REFUSED' 99999999 'INAPP' /
   B1SG25I   99999998 'REFUSED' 99999999 'INAPP' /
   B1SH1     0 'WORST' 10 'BEST' 98 'REFUSED' 99 'INAPP' /
   B1SH2     0 'WORST' 10 'BEST' 98 'REFUSED' 99 'INAPP' /
   B1SH3     0 'WORST' 10 'BEST' 98 'REFUSED' 99 'INAPP' /
   B1SH4     0 'NONE' 10 'VERY MUCH' 98 'REFUSED' 99 'INAPP' /
   B1SH5     0 'NONE' 10 'VERY MUCH' 98 'REFUSED' 99 'INAPP' /
   B1SH6A    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SH6B    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SH6C    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SH6D    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SH6E    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SH6F    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SGENER  98 'NOT CALCULATED (Due to missing data)' /
   B1SH7A    998 'REFUSED' 999 'INAPP' /
   B1SH7B    998 'REFUSED' 999 'INAPP' /
   B1SH7C    998 'REFUSED' 999 'INAPP' /
   B1SH7D    998 'REFUSED' 999 'INAPP' /
   B1SH8A    998 'REFUSED' 999 'INAPP' /
   B1SH8B    998 'REFUSED' 999 'INAPP' /
   B1SH8C    998 'REFUSED' 999 'INAPP' /
   B1SH9A    998 'REFUSED' 999 'INAPP' /
   B1SH9B    998 'REFUSED' 999 'INAPP' /
   B1SH9C    998 'REFUSED' 999 'INAPP' /
   B1SH9D    998 'REFUSED' 999 'INAPP' /
   B1SH9E    998 'REFUSED' 999 'INAPP' /
   B1SH9F    998 'REFUSED' 999 'INAPP' /
   B1SH10A   998 'REFUSED' 999 'INAPP' /
   B1SH10B   998 'REFUSED' 999 'INAPP' /
   B1SH10C   998 'REFUSED' 999 'INAPP' /
   B1SH10D   998 'REFUSED' 999 'INAPP' /
   B1SH10E   998 'REFUSED' 999 'INAPP' /
   B1SH10F   998 'REFUSED' 999 'INAPP' /
   B1SH11A   998 'REFUSED' 999 'INAPP' /
   B1SH11B   998 'REFUSED' 999 'INAPP' /
   B1SH11C   998 'REFUSED' 999 'INAPP' /
   B1SH11D   998 'REFUSED' 999 'INAPP' /
   B1SH11E   998 'REFUSED' 999 'INAPP' /
   B1SH12A   998 'REFUSED' 999 'INAPP' /
   B1SH12B   998 'REFUSED' 999 'INAPP' /
   B1SH12C   998 'REFUSED' 999 'INAPP' /
   B1SH12D   998 'REFUSED' 999 'INAPP' /
   B1SH12E   998 'REFUSED' 999 'INAPP' /
   B1SH12F   998 'REFUSED' 999 'INAPP' /
   B1SH12G   998 'REFUSED' 999 'INAPP' /
   B1SH12H   998 'REFUSED' 999 'INAPP' /
   B1SH13A   9999998 'REFUSED' 9999999 'INAPP' /
   B1SH13B   9999998 'REFUSED' 9999999 'INAPP' /
   B1SH13C   9999998 'REFUSED' 9999999 'INAPP' /
   B1SH13D   9999998 'REFUSED' 9999999 'INAPP' /
   B1SH13E   9999998 'REFUSED' 9999999 'INAPP' /
   B1SH13F   9999998 'REFUSED' 9999999 'INAPP' /
   B1SH13G   9999998 'REFUSED' 9999999 'INAPP' /
   B1SH13H   9999998 'REFUSED' 9999999 'INAPP' /
   B1SH14A   9999998 'REFUSED' 9999999 'INAPP' /
   B1SH14B   9999998 'REFUSED' 9999999 'INAPP' /
   B1SH14C   9999998 'REFUSED' 9999999 'INAPP' /
   B1SH14D   9999998 'REFUSED' 9999999 'INAPP' /
   B1SH14E   9999998 'REFUSED' 9999999 'INAPP' /
   B1SH14F   9999998 'REFUSED' 9999999 'INAPP' /
   B1SH14G   9999998 'REFUSED' 9999999 'INAPP' /
   B1SH15A   1 'YES' 2 'NO' 3 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SH15B   1 'YES' 2 'NO' 3 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SH15C   1 'YES' 2 'NO' 3 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SH15D   1 'YES' 2 'NO' 3 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SH16A   1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SH16B   1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SH16C   1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SH16D   1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SH16E   1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SH16F   1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SH16G   1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SH16H   1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SH16I   1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SH16J   1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SH16K   1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SH16L   1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SH16M   1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SH16N   1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SH16O   1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SSWBMS  98 'Not calculated (Due to missing data)' /
   B1SSWBSI  98 'Not calculated (Due to missing data)' /
   B1SSWBAO  98 'Not calculated (Due to missing data)' /
   B1SSWBSC  98 'Not calculated (Due to missing data)' /
   B1SSWBSA  98 'Not calculated (Due to missing data)' /
   B1SH16P   1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SH16Q   1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SH16R   1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SH16S   1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SH16T   1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DISAGREE' 5 'DISAGREE A LITTLE'
             6 'DISAGREE SOMEWHAT' 7 'DISAGREE STRONGLY' 8 'REFUSED'
             9 'INAPP' /
   B1SSYMP   8 'NOT CALCULATED (Due to missing data)' /
   B1SI1     1 'ALMOST EVERY DAY' 2 'SEVERAL TIMES A WEEK'
             3 'ABOUT ONCE A WEEK' 4 '1-3 TIMES A MONTH'
             5 'LESS THAN ONCE A MONTH' 6 'NEVER OR HARDLY EVER' 8 'REFUSED'
             9 'INAPP' /
   B1SI2     1 'ALMOST EVERY DAY' 2 'SEVERAL TIMES A WEEK'
             3 'ABOUT ONCE A WEEK' 4 '1-3 TIMES A MONTH'
             5 'LESS THAN ONCE A MONTH' 6 'NEVER OR HARDLY EVER' 8 'REFUSED'
             9 'INAPP' /
   B1SI3     998 'REFUSED' 999 'INAPP' /
   B1SI4     998 'REFUSED' 999 'INAPP' /
   B1SI5     1 'OWN HOME OUTRIGHT' 2 'PAYING ON A MORTGAGE' 3 'RENT'
             8 'REFUSED' 9 'INAPP' /
   B1SI6A    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SI6B    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SI6C    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SI6D    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SI6E    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SI6F    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SI6G    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SI6H    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SI6I    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SI6J    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SI6K    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SI6L    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SHOMET  8 'Not calculated (Due to missing data)' /
   B1SPIHOM  8 'Not calculated (Due to missing data)' /
   B1SI7     0 'FOREIGN' 1 'ALABAMA' 2 'ALASKA' 4 'ARIZONA' 5 'ARKANSAS'
             6 'CALIFORNIA' 8 'COLORADO' 9 'CONNECTICUT' 10 'DELAWARE'
             11 'DIST. OF COLUMBIA' 12 'FLORIDA' 13 'GEORGIA' 15 'HAWAII'
             16 'IDAHO' 17 'ILLINOIS' 18 'INDIANA' 19 'IOWA' 20 'KANSAS'
             21 'KENTUCKY' 22 'LOUISIANA' 23 'MAINE' 24 'MARYLAND'
             25 'MASSACHUSETTS' 26 'MICHIGAN' 27 'MINNESOTA' 28 'MISSISSIPPI'
             29 'MISSOURI' 30 'MONTANA' 31 'NEBRASKA' 32 'NEVADA'
             33 'NEW HAMPSHIRE' 34 'NEW JERSEY' 35 'NEW MEXICO' 36 'NEW YORK'
             37 'NORTH CAROLINA' 38 'NORTH DAKOTA' 39 'OHIO' 40 'OKLAHOMA'
             41 'OREGON' 42 'PENNSYLVANIA' 44 'RHODE ISLAND'
             45 'SOUTH CAROLINA' 46 'SOUTH DAKOTA' 47 'TENNESSEE' 48 'TEXAS'
             49 'UTAH' 50 'VERMONT' 51 'VIRGINIA' 53 'WASHINGTON'
             54 'WEST VIRGINIA' 55 'WISCONSIN' 56 'WYOMING' 98 'REFUSED'
             99 'INAPP' /
   B1SJ1     1 'SEVERAL TIMES A DAY' 2 'ABOUT ONCE A DAY'
             3 'SEVERAL TIMES A WEEK' 4 'ABOUT ONCE A WEEK'
             5 '2 OR 3 TIMES A MONTH' 6 'ABOUT ONCE A MONTH'
             7 'LESS THAN ONCE A MONTH' 8 'NEVER OR HARDLY EVER' 98 'REFUSED'
             99 'INAPP' /
   B1SJ2A    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SJ2B    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SJ2C    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SJ2D    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SJ2E    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SJ2F    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SJ2G    1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SJ2H    1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SJ2I    1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SJ2J    1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SKINPO  8 'Not calculated (Due to missing data)' /
   B1SKINNE  8 'Not calculated (Due to missing data)' /
   B1SFAMSO  8 'Not calculated (Due to missing data)' /
   B1SPKINS  8 'Not calculated (Due to missing data)' /
   B1SJ3     1 'SEVERAL TIMES A DAY' 2 'ABOUT ONCE A DAY'
             3 'SEVERAL TIMES A WEEK' 4 'ABOUT ONCE A WEEK'
             5 '2 OR 3 TIMES A MONTH' 6 'ABOUT ONCE A MONTH'
             7 'LESS THAN ONCE A MONTH' 8 'NEVER OR HARDLY EVER' 98 'REFUSED'
             99 'INAPP' /
   B1SJ4A    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SJ4B    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SJ4C    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SJ4D    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SJ4E    1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SJ4F    1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SJ4G    1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SJ4H    1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SFDSPO  8 'Not calculated (Due to missing data)' /
   B1SFDSNE  8 'Not calculated (Due to missing data)' /
   B1SFDSOL  8 'Not calculated (Due to missing data)' /
   B1SJ5     1 'NEVER' 2 'LESS THAN ONCE A MONTH' 3 'ONCE OR TWICE A MONTH'
             4 'THREE OR FOUR A MONTH' 5 'COUPLE TIMES A WEEK'
             6 'MORE THAN COUPLE TIMES A WEEK' 8 'REFUSED' 9 'INAPP' /
   B1SJ6     1 'NEVER' 2 'LESS THAN ONCE A MONTH' 3 'ONCE OR TWICE A MONTH'
             4 'THREE OR FOUR A MONTH' 5 'COUPLE TIMES A WEEK'
             6 'MORE THAN COUPLE TIMES A WEEK' 8 'REFUSED' 9 'INAPP' /
   B1SJ7SA   1 'YES' 2 'NO' 3 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SJ7SB   1 'YES' 2 'NO' 3 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SJ7SC   1 'YES' 2 'NO' 3 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SJ7SD   1 'YES' 2 'NO' 3 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SJ7SE   1 'YES' 2 'NO' 3 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SJ7SF   1 'YES' 2 'NO' 3 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SJ7SG   1 'YES' 2 'NO' 3 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SJ7SH   1 'YES' 2 'NO' 3 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SJ7SI   1 'YES' 2 'NO' 3 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SJ7SJ   1 'YES' 2 'NO' 3 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SJ7PA   1 'YES' 2 'NO' 3 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SJ7PB   1 'YES' 2 'NO' 3 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SJ7PC   1 'YES' 2 'NO' 3 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SJ7PD   1 'YES' 2 'NO' 3 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SJ7PE   1 'YES' 2 'NO' 3 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SJ7PF   1 'YES' 2 'NO' 3 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SJ7PG   1 'YES' 2 'NO' 3 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SJ7PH   1 'YES' 2 'NO' 3 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SJ7PI   1 'YES' 2 'NO' 3 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SJ7PJ   1 'YES' 2 'NO' 3 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SJ7CA   1 'YES' 2 'NO' 3 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SJ7CB   1 'YES' 2 'NO' 3 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SJ7CC   1 'YES' 2 'NO' 3 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SJ7CD   1 'YES' 2 'NO' 3 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SJ7CE   1 'YES' 2 'NO' 3 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SJ7CF   1 'YES' 2 'NO' 3 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SJ7CG   1 'YES' 2 'NO' 3 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SJ7CH   1 'YES' 2 'NO' 3 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SJ7CI   1 'YES' 2 'NO' 3 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SJ7CJ   1 'YES' 2 'NO' 3 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SK1     0 'WORST' 10 'BEST' 98 'REFUSED' 99 'INAPP' /
   B1SK2     0 'WORST' 10 'BEST' 98 'DOES NOT APPLY' 998 'REFUSED'
             999 'INAPP' /
   B1SK3     0 'WORST' 10 'BEST' 98 'REFUSED' 99 'INAPP' /
   B1SK4     0 'NONE' 10 'VERY MUCH' 98 'REFUSED' 99 'INAPP' /
   B1SK5     0 'NONE' 10 'VERY MUCH' 98 'REFUSED' 99 'INAPP' /
   B1SK6A    1 'NOT TRUE AT ALL' 2 'A LITTLE BIT TRUE' 3 'MODERATELY TRUE'
             4 'EXTREMELY TRUE' 8 'REFUSED' 9 'INAPP' /
   B1SK6B    1 'NOT TRUE AT ALL' 2 'A LITTLE BIT TRUE' 3 'MODERATELY TRUE'
             4 'EXTREMELY TRUE' 8 'REFUSED' 9 'INAPP' /
   B1SK6C    1 'NOT TRUE AT ALL' 2 'A LITTLE BIT TRUE' 3 'MODERATELY TRUE'
             4 'EXTREMELY TRUE' 8 'REFUSED' 9 'INAPP' /
   B1SK6D    1 'NOT TRUE AT ALL' 2 'A LITTLE BIT TRUE' 3 'MODERATELY TRUE'
             4 'EXTREMELY TRUE' 8 'REFUSED' 9 'INAPP' /
   B1SK6E    1 'NOT TRUE AT ALL' 2 'A LITTLE BIT TRUE' 3 'MODERATELY TRUE'
             4 'EXTREMELY TRUE' 8 'REFUSED' 9 'INAPP' /
   B1SK6F    1 'NOT TRUE AT ALL' 2 'A LITTLE BIT TRUE' 3 'MODERATELY TRUE'
             4 'EXTREMELY TRUE' 8 'REFUSED' 9 'INAPP' /
   B1SPIFAM  8 'Not calculated (Due to missing data)'
             9 'NOT CALCULATED (Does not apply)' /
   B1SK7A1   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SK7A2   1 'YES' 2 'NO' 3 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SK7B1   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SK7B2   1 'YES' 2 'NO' 3 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SK7C1   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SK7C2   1 'YES' 2 'NO' 3 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SK7D1   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SK7D2   1 'YES' 2 'NO' 3 'DOES NOT APPLY' 8 'REFUSED' 9 'INAPP' /
   B1SK8     98 'REFUSED' 99 'INAPP' /
   B1SK9     98 'REFUSED' 99 'INAPP' /
   B1SK10    1 'VERY SERIOUS/STRESSFUL' 2 'SOMEWHAT SERIOUS/STRESSFUL'
             3 'A LITTLE SERIOUS/STRESSFUL' 4 'NOT AT ALL SERIOUS/STRESSFUL'
             8 'REFUSED' 9 'INAPP' /
   B1SK11    1 'VERY SERIOUS/STRESSFUL' 2 'SOMEWHAT SERIOUS/STRESSFUL'
             3 'A LITTLE SERIOUS/STRESSFUL' 4 'NOT AT ALL SERIOUS/STRESSFUL'
             8 'REFUSED' 9 'INAPP' /
   B1SL1     0 'WORST' 10 'BEST' 98 'REFUSED' 99 'INAPP' /
   B1SL2     0 'WORST' 10 'BEST' 98 'REFUSED' 99 'INAPP' /
   B1SL3     0 'WORST' 10 'BEST' 98 'REFUSED' 99 'INAPP' /
   B1SL4     0 'NONE' 10 'VERY MUCH' 98 'REFUSED' 99 'INAPP' /
   B1SL5     0 'NONE' 10 'VERY MUCH' 98 'REFUSED' 99 'INAPP' /
   B1SL6     1 'EXCELLENT' 2 'VERY GOOD' 3 'GOOD' 4 'FAIR' 5 'POOR'
             8 'REFUSED' 9 'INAPP' /
   B1SL7     1 'NEVER' 2 'ONCE' 3 'A FEW TIMES' 4 'MOST OF THE TIME'
             5 'ALL OF THE TIME' 8 'REFUSED' 9 'INAPP' /
   B1SL8     1 'VERY LIKELY' 2 'SOMEWHAT LIKELY' 3 'NOT VERY LIKELY'
             4 'NOT LIKELY AT ALL' 8 'REFUSED' 9 'INAPP' /
   B1SL9A    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SL9B    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SL9C    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SMARRS  98 'Not calculated (Due to missing data)'
             99 'NOT CALCULATED (Does not apply)' /
   B1SSPDIS  98 'Not calculated (Due to missing data)'
             99 'NOT CALCULATED (Does not apply)' /
   B1SL10    1 'AT LEAST ONCE A DAY' 2 'A FEW TIMES A WEEK' 3 'ONCE A WEEK'
             4 'A FEW TIMES A MONTH' 5 'LESS OFTEN THAN THAT' 8 'REFUSED'
             9 'INAPP' /
   B1SL11A   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SL11B   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SL11C   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SL11D   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SL11E   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SL11F   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SL11G   1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SL11H   1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SL11I   1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SL11J   1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SL11K   1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SL11L   1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SSPEMP  8 'Not calculated (Due to missing data)'
             9 'NOT CALCULATED (Does not apply)' /
   B1SSPCRI  8 'Not calculated (Due to missing data)'
             9 'NOT CALCULATED (Does not apply)' /
   B1SSPSOL  8 'Not calculated (Due to missing data)'
             9 'NOT CALCULATED (Does not apply)' /
   B1SL12    1 'YOU DO A LOT MORE' 2 'YOU DO SOMEWHAT MORE'
             3 'YOU DO A LITTLE MORE' 4 'CHORES SPLIT EVENLY'
             5 'SPOUSE DOES A LITTLE MORE' 6 'SPOUSE DOES SOMEWHAT MORE'
             7 'SPOUSE DOES A LOT MORE' 8 'REFUSED' 9 'INAPP' /
   B1SL13    998 'REFUSED' 999 'INAPP' /
   B1SL14    998 'REFUSED' 999 'INAPP' /
   B1SL15    1 'VERY FAIR' 2 'SOMEWHAT FAIR' 3 'SOMEWHAT UNFAIR'
             4 'VERY UNFAIR' 8 'REFUSED' 9 'INAPP' /
   B1SL16    1 'VERY FAIR' 2 'SOMEWHAT FAIR' 3 'SOMEWHAT UNFAIR'
             4 'VERY UNFAIR' 8 'REFUSED' 9 'INAPP' /
   B1SL17A   1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DIAGREE' 5 'DISAGREE A LITTLE'
             6 'SOMEWHAT DISAGREE' 7 'STRONGLY DISAGREE' 8 'REFUSED'
             9 'INAPP' /
   B1SL17B   1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DIAGREE' 5 'DISAGREE A LITTLE'
             6 'SOMEWHAT DISAGREE' 7 'STRONGLY DISAGREE' 8 'REFUSED'
             9 'INAPP' /
   B1SL17C   1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DIAGREE' 5 'DISAGREE A LITTLE'
             6 'SOMEWHAT DISAGREE' 7 'STRONGLY DISAGREE' 8 'REFUSED'
             9 'INAPP' /
   B1SL17D   1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE' 3 'AGREE A LITTLE'
             4 'NEITHER AGREE OR DIAGREE' 5 'DISAGREE A LITTLE'
             6 'SOMEWHAT DISAGREE' 7 'STRONGLY DISAGREE' 8 'REFUSED'
             9 'INAPP' /
   B1SSPDEC  98 'NOT CALCULATED (Due to missing data)'
             99 'NOT CALCULATED (Does not apply)' /
   B1SL18    1 'EXCELLENT' 2 'VERY GOOD' 3 'GOOD' 4 'FAIR' 5 'POOR'
             8 'REFUSED' 9 'INAPP' /
   B1SL19    1 'EXCELLENT' 2 'VERY GOOD' 3 'GOOD' 4 'FAIR' 5 'POOR'
             8 'REFUSED' 9 'INAPP' /
   B1SL20    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SL21    998 'REFUSED' 999 'INAPP' /
   B1SL22    998 'REFUSED' 999 'INAPP' /
   B1SL23A   1 '4 OR MORE TIMES PER WEEK' 2 '2-3 TIMES PER WEEK'
             3 'ONCE A WEEK' 4 '1-3 TIMES PER MONTH'
             5 'LESS THAN ONCE A MONTH OR NEVER' 98 'REFUSED' 99 'INAPP' /
   B1SL23B   1 '4 OR MORE TIMES PER WEEK' 2 '2-3 TIMES PER WEEK'
             3 'ONCE A WEEK' 4 '1-3 TIMES PER MONTH'
             5 'LESS THAN ONCE A MONTH OR NEVER' 98 'REFUSED' 99 'INAPP' /
   B1SL23C   1 '4 OR MORE TIMES PER WEEK' 2 '2-3 TIMES PER WEEK'
             3 'ONCE A WEEK' 4 '1-3 TIMES PER MONTH'
             5 'LESS THAN ONCE A MONTH OR NEVER' 98 'REFUSED' 99 'INAPP' /
   B1SL23D   1 '4 OR MORE TIMES PER WEEK' 2 '2-3 TIMES PER WEEK'
             3 'ONCE A WEEK' 4 '1-3 TIMES PER MONTH'
             5 'LESS THAN ONCE A MONTH OR NEVER' 98 'REFUSED' 99 'INAPP' /
   B1SL24A   98 'REFUSED' 99 'INAPP' /
   B1SL24B   98 'REFUSED' 99 'INAPP' /
   B1SL24C   1 'AM' 2 'PM' 3 'MIDNIGHT' 4 'NOON' 8 'REFUSED' 9 'INAPP' /
   B1SL25A   98 'REFUSED' 99 'INAPP' /
   B1SL25B   98 'REFUSED' 99 'INAPP' /
   B1SL25C   1 'AM' 2 'PM' 3 'MIDNIGHT' 4 'NOON' 8 'REFUSED' 9 'INAPP' /
   B1SL26A   98 'REFUSED' 99 'INAPP' /
   B1SL26B   98 'REFUSED' 99 'INAPP' /
   B1SL27    1 'EXCELLENT' 2 'VERY GOOD' 3 'GOOD' 4 'FAIR' 5 'POOR'
             8 'REFUSED' 9 'INAPP' /
   B1SM1     0 'WORST' 10 'BEST' 98 'REFUSED' 99 'INAPP' /
   B1SM2     0 'WORST' 10 'BEST' 98 'REFUSED' 99 'INAPP' /
   B1SM3     0 'WORST' 10 'BEST' 98 'REFUSED' 99 'INAPP' /
   B1SM4     0 'NONE' 10 'VERY MUCH' 98 'REFUSED' 99 'INAPP' /
   B1SM5     0 'NONE' 10 'VERY MUCH' 98 'REFUSED' 99 'INAPP' /
   B1SM6     1 'HETEROSEXUAL' 2 'HOMOSEXUAL' 3 'BISEXUAL' 8 'REFUSED'
             9 'INAPP' /
   B1SM7     6 'SIX OR MORE' 8 'REFUSED' 9 'INAPP' /
   B1SM8     1 'TWO OR MORE TIMES A MONTH' 2 'ONCE A WEEK'
             3 'TWO OR THREE TIMES A MONTH' 4 'ONCE A MONTH'
             5 'LESS OFTEN THAN ONCE A MONTH' 6 'NEVER OR NOT AT ALL'
             8 'REFUSED' 9 'INAPP' /
   B1SM9     1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SM10    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SM11    1 'NEVER' 2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALWAYS'
             8 'REFUSED' 9 'INAPP' /
   B1SM12    1 'NEVER' 2 'SOME OF THE TIME' 3 'MOST OF THE TIME' 4 'ALWAYS'
             8 'REFUSED' 9 'INAPP' /
   B1SN1A    1 'NO RELIGIOUS PREF' 2 'AGNOSTIC' 3 'ATHEIST' 4 'PROTESTANT'
             5 'PROTESTANT NO DENOM' 6 'APOSTOLIC' 7 'ASSEMBLY OF GOD'
             8 'BAPTIST ALL TYPES' 9 'BORN AGAIN CHRISTIAN' 10 'BRETHREN'
             11 'DISCIPLES OF CHRIST' 12 'CHRISTIAN REFORMED'
             13 'CHURCH OF GOD' 14 'CONGREGATIONAL' 15 'EPISCOPALIAN'
             16 'EVANGELICAL' 17 'HOLINESS' 18 'JEHOVAHS WITNESS'
             19 'LUTHERAN' 20 'MENNONITE' 21 'METHODIST'
             22 'MORMON LATTER DAY ST' 23 'NAZARENE' 24 'PENTECOSTAL'
             25 'PRESBYTERIAN' 26 'QUAKER SOCIETY OF FR' 27 'SALVATION ARMY'
             28 'SANCTIFIED' 29 'SEVENTH DAY ADVENTIST' 30 'SPIRITUAL'
             31 'UNITARIAN' 32 'UNITED CHURCH CHRIST' 33 'PROTESTANT SPECIFY'
             34 'CATHOLIC ROMAN' 35 'CATHOLIC UKRAINIAN' 36 'ORTHODOX'
             37 'CATHOLIC OTHER' 38 'JEWISH ORTHODOX'
             39 'JEWISH CONSERVATIVE' 40 'JEWISH REFORM' 41 'JEWISH RECONST'
             42 'JEWISH OTHER' 43 'BUDDHIST' 44 'HINDU' 45 'MUSLIM'
             46 'RASTAFARIAN' 47 'OTHER SPECIFY' 98 'REFUSED' 99 'INAPP' /
   B1SN1B    1 'NO RELIGIOUS PREF' 2 'AGNOSTIC' 3 'ATHEIST' 4 'PROTESTANT'
             5 'PROTESTANT NO DENOM' 6 'APOSTOLIC' 7 'ASSEMBLY OF GOD'
             8 'BAPTIST ALL TYPES' 9 'BORN AGAIN CHRISTIAN' 10 'BRETHREN'
             11 'DISCIPLES OF CHRIST' 12 'CHRISTIAN REFORMED'
             13 'CHURCH OF GOD' 14 'CONGREGATIONAL' 15 'EPISCOPALIAN'
             16 'EVANGELICAL' 17 'HOLINESS' 18 'JEHOVAHS WITNESS'
             19 'LUTHERAN' 20 'MENNONITE' 21 'METHODIST'
             22 'MORMON LATTER DAY ST' 23 'NAZARENE' 24 'PENTECOSTAL'
             25 'PRESBYTERIAN' 26 'QUAKER SOCIETY OF FR' 27 'SALVATION ARMY'
             28 'SANCTIFIED' 29 'SEVENTH DAY ADVENTIST' 30 'SPIRITUAL'
             31 'UNITARIAN' 32 'UNITED CHURCH CHRIST' 33 'PROTESTANT SPECIFY'
             34 'CATHOLIC ROMAN' 35 'CATHOLIC UKRAINIAN' 36 'ORTHODOX'
             37 'CATHOLIC OTHER' 38 'JEWISH ORTHODOX'
             39 'JEWISH CONSERVATIVE' 40 'JEWISH REFORM' 41 'JEWISH RECONST'
             42 'JEWISH OTHER' 43 'BUDDHIST' 44 'HINDU' 45 'MUSLIM'
             46 'RASTAFARIAN' 47 'OTHER SPECIFY' 98 'REFUSED' 99 'INAPP' /
   B1SN1C    1 'NO RELIGIOUS PREF' 2 'AGNOSTIC' 3 'ATHEIST' 4 'PROTESTANT'
             5 'PROTESTANT NO DENOM' 6 'APOSTOLIC' 7 'ASSEMBLY OF GOD'
             8 'BAPTIST ALL TYPES' 9 'BORN AGAIN CHRISTIAN' 10 'BRETHREN'
             11 'DISCIPLES OF CHRIST' 12 'CHRISTIAN REFORMED'
             13 'CHURCH OF GOD' 14 'CONGREGATIONAL' 15 'EPISCOPALIAN'
             16 'EVANGELICAL' 17 'HOLINESS' 18 'JEHOVAHS WITNESS'
             19 'LUTHERAN' 20 'MENNONITE' 21 'METHODIST'
             22 'MORMON LATTER DAY ST' 23 'NAZARENE' 24 'PENTECOSTAL'
             25 'PRESBYTERIAN' 26 'QUAKER SOCIETY OF FR' 27 'SALVATION ARMY'
             28 'SANCTIFIED' 29 'SEVENTH DAY ADVENTIST' 30 'SPIRITUAL'
             31 'UNITARIAN' 32 'UNITED CHURCH CHRIST' 33 'PROTESTANT SPECIFY'
             34 'CATHOLIC ROMAN' 35 'CATHOLIC UKRAINIAN' 36 'ORTHODOX'
             37 'CATHOLIC OTHER' 38 'JEWISH ORTHODOX'
             39 'JEWISH CONSERVATIVE' 40 'JEWISH REFORM' 41 'JEWISH RECONST'
             42 'JEWISH OTHER' 43 'BUDDHIST' 44 'HINDU' 45 'MUSLIM'
             46 'RASTAFARIAN' 47 'OTHER SPECIFY' 98 'REFUSED' 99 'INAPP' /
   B1SN1AX   1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SN2A    1 'VERY' 2 'SOMEWHAT' 3 'NOT VERY' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SN2B    1 'VERY' 2 'SOMEWHAT' 3 'NOT VERY' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SN2C    1 'VERY' 2 'SOMEWHAT' 3 'NOT VERY' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SN2D    1 'VERY' 2 'SOMEWHAT' 3 'NOT VERY' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SN2E    1 'VERY' 2 'SOMEWHAT' 3 'NOT VERY' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SN2F    1 'VERY' 2 'SOMEWHAT' 3 'NOT VERY' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SN2G    1 'VERY' 2 'SOMEWHAT' 3 'NOT VERY' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SN2H    1 'VERY' 2 'SOMEWHAT' 3 'NOT VERY' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SN2I    1 'VERY' 2 'SOMEWHAT' 3 'NOT VERY' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SSPIRI  98 'NOT CALCULATED (Due to missing data)' /
   B1SRELID  98 'NOT CALCULATED (Due to missing data)' /
   B1SN3A    1 'ONCE A DAY OR MORE' 2 'A FEW TIMES A WEEK' 3 'ONCE A WEEK'
             4 '1-3 TIMES PER MONTH' 5 'LESS THAN ONCE PER MONTH' 6 'NEVER'
             8 'REFUSED' 9 'INAPP' /
   B1SN3B    1 'ONCE A DAY OR MORE' 2 'A FEW TIMES A WEEK' 3 'ONCE A WEEK'
             4 '1-3 TIMES PER MONTH' 5 'LESS THAN ONCE PER MONTH' 6 'NEVER'
             8 'REFUSED' 9 'INAPP' /
   B1SN3C    1 'ONCE A DAY OR MORE' 2 'A FEW TIMES A WEEK' 3 'ONCE A WEEK'
             4 '1-3 TIMES PER MONTH' 5 'LESS THAN ONCE PER MONTH' 6 'NEVER'
             8 'REFUSED' 9 'INAPP' /
   B1SRELPR  98 'NOT CALCULATED (Due to missing data)' /
   B1SN3D    1 'ONCE A DAY OR MORE' 2 'A FEW TIMES A WEEK' 3 'ONCE A WEEK'
             4 '1-3 TIMES PER MONTH' 5 'LESS THAN ONCE PER MONTH' 6 'NEVER'
             8 'REFUSED' 9 'INAPP' /
   B1SN3E    1 'ONCE A DAY OR MORE' 2 'A FEW TIMES A WEEK' 3 'ONCE A WEEK'
             4 '1-3 TIMES PER MONTH' 5 'LESS THAN ONCE PER MONTH' 6 'NEVER'
             8 'REFUSED' 9 'INAPP' /
   B1SN4     1 'EXPLORE DIFFERENT TEACHINGS' 2 'STICK TO ONE FAITH'
             3 'NEITHER' 8 'REFUSED' 9 'INAPP' /
   B1SN5     1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SN6     1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE'
             3 'NEITHER AGREE NOR DISAGREE' 4 'SOMEWHAT DISAGREE'
             5 'STRONGLY DISAGREE' 8 'REFUSED' 9 'INAPP' /
   B1SN7     1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SN8A    1 'A GREAT DEAL' 2 'SOME' 3 'A LITTLE' 4 'NONE' 8 'REFUSED'
             9 'INAPP' /
   B1SN8B    1 'A GREAT DEAL' 2 'SOME' 3 'A LITTLE' 4 'NONE' 8 'REFUSED'
             9 'INAPP' /
   B1SN8C    1 'A GREAT DEAL' 2 'SOME' 3 'A LITTLE' 4 'NONE' 8 'REFUSED'
             9 'INAPP' /
   B1SN8D    1 'A GREAT DEAL' 2 'SOME' 3 'A LITTLE' 4 'NONE' 8 'REFUSED'
             9 'INAPP' /
   B1SRELSU  98 'NOT CALCULATED (Due to missing data)'
             99 'NOT CALCULATED (Does not apply)' /
   B1SN9A    1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SN9B    1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SN9C    1 'A GREAT DEAL' 2 'SOME' 3 'A LITTLE' 4 'NONE' 8 'REFUSED'
             9 'INAPP' /
   B1SN9D    1 'A GREAT DEAL' 2 'SOME' 3 'A LITTLE' 4 'NONE' 8 'REFUSED'
             9 'INAPP' /
   B1SN9E    1 'A GREAT DEAL' 2 'SOME' 3 'A LITTLE' 4 'NONE' 8 'REFUSED'
             9 'INAPP' /
   B1SN9F    1 'A GREAT DEAL' 2 'SOME' 3 'A LITTLE' 4 'NONE' 8 'REFUSED'
             9 'INAPP' /
   B1SN9G    1 'A GREAT DEAL' 2 'SOME' 3 'A LITTLE' 4 'NONE' 8 'REFUSED'
             9 'INAPP' /
   B1SN9H    1 'A GREAT DEAL' 2 'SOME' 3 'A LITTLE' 4 'NONE' 8 'REFUSED'
             9 'INAPP' /
   B1SRELCA  98 'NOT CALCULATED (Due to missing data)' /
   B1SRELCB  98 'NOT CALCULATED (Due to missing data)' /
   B1SN10A   1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SN10B   1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SN10C   1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SN10D   1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SN10E   1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SSPRTE  98 'NOT CALCULATED (Due to missing data)' /
   B1SN11A   1 'STRONGLY AGREE' 2 'AGREE' 3 'NEITHER AGREE NOR DISAGREE'
             4 'DISAGREE' 5 'STRONGLY DISAGREE' 8 'REFUSED' 9 'INAPP' /
   B1SN11B   1 'STRONGLY AGREE' 2 'AGREE' 3 'NEITHER AGREE NOR DISAGREE'
             4 'DISAGREE' 5 'STRONGLY DISAGREE' 8 'REFUSED' 9 'INAPP' /
   B1SN11C   1 'STRONGLY AGREE' 2 'AGREE' 3 'NEITHER AGREE NOR DISAGREE'
             4 'DISAGREE' 5 'STRONGLY DISAGREE' 8 'REFUSED' 9 'INAPP' /
   B1SN11D   1 'STRONGLY AGREE' 2 'AGREE' 3 'NEITHER AGREE NOR DISAGREE'
             4 'DISAGREE' 5 'STRONGLY DISAGREE' 8 'REFUSED' 9 'INAPP' /
   B1SN11E   1 'STRONGLY AGREE' 2 'AGREE' 3 'NEITHER AGREE NOR DISAGREE'
             4 'DISAGREE' 5 'STRONGLY DISAGREE' 8 'REFUSED' 9 'INAPP' /
   B1SN11F   1 'STRONGLY AGREE' 2 'AGREE' 3 'NEITHER AGREE NOR DISAGREE'
             4 'DISAGREE' 5 'STRONGLY DISAGREE' 8 'REFUSED' 9 'INAPP' /
   B1SN11G   1 'STRONGLY AGREE' 2 'AGREE' 3 'NEITHER AGREE NOR DISAGREE'
             4 'DISAGREE' 5 'STRONGLY DISAGREE' 8 'REFUSED' 9 'INAPP' /
   B1SN11H   1 'STRONGLY AGREE' 2 'AGREE' 3 'NEITHER AGREE NOR DISAGREE'
             4 'DISAGREE' 5 'STRONGLY DISAGREE' 8 'REFUSED' 9 'INAPP' /
   B1SN11I   1 'STRONGLY AGREE' 2 'AGREE' 3 'NEITHER AGREE NOR DISAGREE'
             4 'DISAGREE' 5 'STRONGLY DISAGREE' 8 'REFUSED' 9 'INAPP' /
   B1SMNDFU  98 'NOT CALCULATED (Due to missing data)' /
   B1SP1A    99998 'REFUSED' 99999 'INAPP' /
   B1SP1B    99998 'REFUSED' 99999 'INAPP' /
   B1SP1C    99998 'REFUSED' 99999 'INAPP' /
   B1SP1D    99998 'REFUSED' 99999 'INAPP' /
   B1SP1E    99998 'REFUSED' 99999 'INAPP' /
   B1SP1F    99998 'REFUSED' 99999 'INAPP' /
   B1SP1G    99998 'REFUSED' 99999 'INAPP' /
   B1SP1H    99998 'REFUSED' 99999 'INAPP' /
   B1SP1I    99998 'REFUSED' 99999 'INAPP' /
   B1SP1J    99998 'REFUSED' 99999 'INAPP' /
   B1SP1K    99998 'REFUSED' 99999 'INAPP' /
   B1SLFEDI  99998 'NOT CALCULATED (Due to missing data)' /
   B1SP2A    1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SP2B    1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SP2C    1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SP2D    1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SP2E    1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SP2F    1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SP2G    1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SP2H    1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SP2I    1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 8 'REFUSED'
             9 'INAPP' /
   B1SDAYDI  98 'NOT CALCULATED (Due to missing data)' /
   B1SP3A    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SP3B    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SP3C    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SP3D    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SP3E    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SP3F    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SP3G    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SP3H    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SP3I    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SP3J    1 'YES' 2 'NO' 8 'REFUSED' 9 'INAPP' /
   B1SP4     1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SP5     1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 8 'REFUSED'
             9 'INAPP' /
   B1SQ1     0 'WORST' 10 'BEST' 98 'REFUSED' 99 'INAPP' /
   B1SQ2     0 'WORST' 10 'BEST' 98 'REFUSED' 99 'INAPP' /
   B1SQ3     0 'WORST' 10 'BEST' 98 'REFUSED' 99 'INAPP' /
   B1SQ4     0 'NONE' 10 'VERY MUCH' 98 'REFUSED' 99 'INAPP' /
   B1SQ5     0 'NONE' 10 'VERY MUCH' 98 'REFUSED' 99 'INAPP' /
   B1SQ6     0 'WORST' 10 'BEST' 98 'REFUSED' 99 'INAPP' /
   .

* SPSS MISSING VALUES COMMAND.

* MISSING VALUES
     B1PAGE_M2 (98, 99) /
     B1PBYEAR (9998) /
     B1PRSEX (7, 8, 9) /
     B1PA1 (7, 8, 9) /
     B1PA2 (7, 8, 9) /
     B1PA3 (7, 8, 9) /
     B1PA4 (97, 98, 99) /
     B1PA4A (7, 8, 9) /
     B1PA4BA (97, 98, 99) /
     B1PA4BB (97, 98, 99) /
     B1PA4BC (97, 98, 99) /
     B1PA5 (97, 98, 99) /
     B1PA5A (7, 8, 9) /
     B1PA5BA (97, 98, 99) /
     B1PA5BB (97, 98, 99) /
     B1PA5BC (97, 98, 99) /
     B1PA6A (7, 8, 9) /
     B1PA6B (7, 8, 9) /
     B1PA6C (7, 8, 9) /
     B1PA6D (7, 8, 9) /
     B1PA7 (7, 8, 9) /
     B1PA7A (97, 98, 99) /
     B1PA7BA (97, 98, 99) /
     B1PA7BB (97, 98, 99) /
     B1PA7BC (97, 98, 99) /
     B1PA7BD (97, 98, 99) /
     B1PA7BE (97, 98, 99) /
     B1PA7BF (97, 98, 99) /
     B1PA7BG (97, 98, 99) /
     B1PA7BH (97, 98, 99) /
     B1PA7BI (97, 98, 99) /
     B1PA7BJ (97, 98, 99) /
     B1PA7C (7, 8, 9) /
     B1PA7D (7, 8, 9) /
     B1PA8 (7, 8, 9) /
     B1PA8A (9997, 9998, 9999) /
     B1PA9 (7, 8, 9) /
     B1PA9A (7, 8, 9) /
     B1PA9B (7, 8, 9) /
     B1PA10A (7, 8, 9) /
     B1PA10B (7, 8, 9) /
     B1PA10C (7, 8, 9) /
     B1PA10D (7, 8, 9) /
     B1PA10E (7, 8, 9) /
     B1PA10F (7, 8, 9) /
     B1PA10G (7, 8, 9) /
     B1PA10H (7, 8, 9) /
     B1PA11 (7, 8, 9) /
     B1PA12 (7, 8, 9) /
     B1PA13 (7, 8, 9) /
     B1PA14 (7, 8, 9) /
     B1PA15 (7, 8, 9) /
     B1PA16 (7, 8, 9) /
     B1PA17 (7, 8, 9) /
     B1PA18 (7, 8, 9) /
     B1PA19 (7, 8, 9) /
     B1PA20 (7, 8, 9) /
     B1PA21 (7, 8, 9) /
     B1PA22 (7, 8, 9) /
     B1PA23 (7, 8, 9) /
     B1PA23A (97, 98, 99) /
     B1PA23B (7, 8, 9) /
     B1PA23CA (97, 98, 99) /
     B1PA23CB (97, 98, 99) /
     B1PA23CC (97, 98, 99) /
     B1PA23CD (97, 98, 99) /
     B1PA23CE (97, 98, 99) /
     B1PA23CF (97, 98, 99) /
     B1PA23CG (97, 98, 99) /
     B1PA23CH (97, 98, 99) /
     B1PA23CI (97, 98, 99) /
     B1PA23CJ (97, 98, 99) /
     B1PA24 (7, 8, 9) /
     B1PA24A (97, 98, 99) /
     B1PA24B (7, 8, 9) /
     B1PA24C (7, 8, 9) /
     B1PA24D (7, 8, 9) /
     B1PA24EA (7, 8, 9) /
     B1PA24EB (7, 8, 9) /
     B1PA24EC (7, 8, 9) /
     B1PA24ED (7, 8, 9) /
     B1PA24EE (7, 8, 9) /
     B1PA24EF (7, 8, 9) /
     B1PA25NM (96, 97) /
     B1PA25IN (7, 8, 9) /
     B1PA25A (7, 8, 9) /
     B1PA25BS (997, 998, 999) /
     B1PA25BD (997, 998, 999) /
     B1PA26 (7, 8, 9) /
     B1PA27 (7, 8, 9) /
     B1PA27A (7, 8, 9) /
     B1PA27B (7, 8, 9) /
     B1PA28A (7, 8, 9) /
     B1PA28B (7, 8, 9) /
     B1PA28C (7, 8, 9) /
     B1PA28D (7, 8, 9) /
     B1PA28E (7, 8, 9) /
     B1PA28F (7, 8, 9) /
     B1PA28G (7, 8, 9) /
     B1PA28H (7, 8, 9) /
     B1PA28I (7, 8, 9) /
     B1PA28J (7, 8, 9) /
     B1PA28AA (97, 98, 99) /
     B1PA28BB (97, 98, 99) /
     B1PA28CC (97, 98, 99) /
     B1PA28DD (97, 98, 99) /
     B1PA28EE (97, 98, 99) /
     B1PA28FF (97, 98, 99) /
     B1PA28GG (97, 98, 99) /
     B1PA28HH (97, 98, 99) /
     B1PA28II (97, 98, 99) /
     B1PA28JJ (97, 98, 99) /
     B1PA29 (7, 8, 9) /
     B1PA29AA (7, 8, 9) /
     B1PA29AB (7, 8, 9) /
     B1PA29AC (7, 8, 9) /
     B1PA29AD (7, 8, 9) /
     B1PA29AE (7, 8, 9) /
     B1PA29AF (7, 8, 9) /
     B1PA29AG (7, 8, 9) /
     B1PA29AH (7, 8, 9) /
     B1PA29AI (7, 8, 9) /
     B1PA30A (7, 8, 9) /
     B1PA30B (7, 8, 9) /
     B1PA30C (7, 8, 9) /
     B1PA30D (7, 8, 9) /
     B1PA30E (7, 8, 9) /
     B1PA30F (7, 8, 9) /
     B1PA31A (7, 8, 9) /
     B1PA31B (7, 8, 9) /
     B1PA31C (7, 8, 9) /
     B1PA31D (7, 8, 9) /
     B1PA31E (7, 8, 9) /
     B1PA31F (7, 8, 9) /
     B1PA31H (7, 8, 9) /
     B1PA31I (7, 8, 9) /
     B1PA31J (7, 8, 9) /
     B1PA32A (7, 8, 9) /
     B1PA32C (7, 8, 9) /
     B1PA32D (7, 8, 9) /
     B1PA32E (7, 8, 9) /
     B1PA32G (7, 8, 9) /
     B1PA32H (7, 8, 9) /
     B1PA32J (7, 8, 9) /
     B1PA33A (7, 8, 9) /
     B1PA33C (7, 8, 9) /
     B1PA33D (7, 8, 9) /
     B1PA33E (7, 8, 9) /
     B1PA33G (7, 8, 9) /
     B1PA33H (7, 8, 9) /
     B1PA33J (7, 8, 9) /
     B1PA34A (7, 8, 9) /
     B1PA34B (7, 8, 9) /
     B1PA34C (7, 8, 9) /
     B1PA34D (7, 8, 9) /
     B1PA34E (7, 8, 9) /
     B1PA34F (7, 8, 9) /
     B1PA34H (7, 8, 9) /
     B1PA34I (7, 8, 9) /
     B1PA34J (7, 8, 9) /
     B1PA35A (7, 8, 9) /
     B1PA35B (7, 8, 9) /
     B1PA35C (7, 8, 9) /
     B1PA35D (7, 8, 9) /
     B1PA35E (7, 8, 9) /
     B1PA35F (7, 8, 9) /
     B1PA35G (7, 8, 9) /
     B1PA35H (7, 8, 9) /
     B1PA35I (7, 8, 9) /
     B1PA35J (7, 8, 9) /
     B1PA36A (7, 8, 9) /
     B1PA36AM (97, 98, 99) /
     B1PA36AY (9997, 9998, 9999) /
     B1PA36B (7, 8, 9) /
     B1PA36C (7, 8, 9) /
     B1PA36DM (97, 98, 99) /
     B1PA36DY (9997, 9998, 9999) /
     B1PA36EM (97, 98, 99) /
     B1PA36EY (9997, 9998, 9999) /
     B1PA37 (96, 97, 98) /
     B1PA38A (7, 8, 9) /
     B1PA38B (97, 98, 99) /
     B1PA39 (7, 8, 9) /
     B1PA40 (97, 98, 99) /
     B1PA41 (7, 8, 9) /
     B1PA42 (97, 98, 99) /
     B1PA43 (97, 98, 99) /
     B1PA44 (7, 8, 9) /
     B1PA45A (7, 8, 9) /
     B1PA45B (7, 8, 9) /
     B1PA45C (7, 8, 9) /
     B1PA46 (7, 8, 9) /
     B1PA47 (7, 8, 9) /
     B1PA48 (7, 8, 9) /
     B1PA49 (97, 98, 99) /
     B1PA50 (7, 8, 9) /
     B1PA51 (7, 8, 9) /
     B1PA51A (7, 8, 9) /
     B1PA52 (97, 98, 99) /
     B1PA53 (97, 98, 99) /
     B1PA54 (7, 8, 9) /
     B1PA54A (7, 8, 9) /
     B1PA55 (99997.0, 99998.0, 99999.0) /
     B1PA56 (97, 98, 99) /
     B1PA57 (97, 98, 99) /
     B1PA58 (7, 8, 9) /
     B1PA59 (7, 8, 9) /
     B1PA60 (7, 8, 9) /
     B1PA61 (7, 8, 9) /
     B1PA62 (7, 8, 9) /
     B1PA63 (7, 8, 9) /
     B1PA64 (7, 8, 9) /
     B1PA65 (7, 8, 9) /
     B1PA65A (7, 8, 9) /
     B1PA66 (7, 8, 9) /
     B1PA66A (7, 8, 9) /
     B1PA67 (7, 8, 9) /
     B1PA68 (7, 8, 9) /
     B1PA69 (7, 8, 9) /
     B1PA70 (97, 98, 99) /
     B1PA71MO (97, 98, 99) /
     B1PA71YR (9997, 9998, 9999) /
     B1PA72 (7, 8, 9) /
     B1PA73 (7, 8, 9) /
     B1PA74 (7, 8, 9) /
     B1PA75 (7, 8, 9) /
     B1PA76 (7, 8, 9) /
     B1PA76A (7, 8, 9) /
     B1PA77 (7, 8, 9) /
     B1PA77A (7, 8, 9) /
     B1PA78 (7, 8, 9) /
     B1PA79 (7, 8, 9) /
     B1PA80 (7, 8, 9) /
     B1PA81 (97, 98, 99) /
     B1PA82MO (97, 98, 99) /
     B1PA82YR (9997, 9998, 9999) /
     B1PA83 (7, 8, 9) /
     B1PA83A (7, 8, 9) /
     B1PA84 (7, 8, 9) /
     B1PA84A (7, 8, 9) /
     B1PA85 (7, 8, 9) /
     B1PA85A (7, 8, 9) /
     B1PA86 (7, 8, 9) /
     B1PA86A (7, 8, 9) /
     B1PA87 (7, 8, 9) /
     B1PA87A (7, 8, 9) /
     B1PA88A (7, 8, 9) /
     B1PA88B (7, 8, 9) /
     B1PA88C (7, 8, 9) /
     B1PA88D (7, 8, 9) /
     B1PA88E (7, 8, 9) /
     B1PA88F (7, 8, 9) /
     B1PA88G (7, 8, 9) /
     B1PA88H (7, 8, 9) /
     B1PA88I (7, 8, 9) /
     B1PA88J (7, 8, 9) /
     B1PA89 (7, 8, 9) /
     B1PA90 (7, 8, 9) /
     B1PA90A (7, 8, 9) /
     B1PA91 (997, 998, 999) /
     B1PA92 (7, 8, 9) /
     B1PA92A (7, 8, 9) /
     B1PA92B (7, 8, 9) /
     B1PA92C (7, 8, 9) /
     B1PA92D (7, 8, 9) /
     B1PA92E (7, 8, 9) /
     B1PA92F (7, 8, 9) /
     B1PB1 (97, 98, 99) /
     B1PB2 (96, 97) /
     B1PB3A (7, 8, 9) /
     B1PB3B (7, 8, 9) /
     B1PB3C (7, 8, 9) /
     B1PB3D (7, 8, 9) /
     B1PB3E (7, 8, 9) /
     B1PB3F (7, 8, 9) /
     B1PB3G (7, 8, 9) /
     B1PB3H (7, 8, 9) /
     B1PB3I (7, 8, 9) /
     B1PB3J (7, 8, 9) /
     B1PB3K (7, 8, 9) /
     B1PBWORK (97, 98, 99) /
     B1PB4N (997, 998, 999) /
     B1PB4M (7, 8, 9) /
     B1PB5 (97, 98, 99) /
     B1PB6 (7, 8, 9) /
     B1PB7 (7, 8, 9) /
     B1PB7A (997, 998, 999) /
     B1PB8 (7, 8, 9) /
     B1POCC (995 thru 999) /
     B1PIND (995 thru 999) /
     B1PTEDU (9.00) /
     B1PTEARN (9.00) /
     B1PTSEI (999.00) /
     B1PMEDU (9.00) /
     B1PMEARN (9.00) /
     B1PMSEI (999.00) /
     B1PFEDU (9.00) /
     B1PFEARN (9.00) /
     B1PFSEI (999.00) /
     B1POCMAJ (99) /
     B1PINDMJ (99) /
     B1PB12 (997, 998, 999) /
     B1PB12A (997, 998, 999) /
     B1PB13 (997, 998, 999) /
     B1PB14 (7, 8, 9) /
     B1PB14A (997, 998, 999) /
     B1PB15 (7, 8, 9) /
     B1POCCP (995 thru 999) /
     B1PINDP (995 thru 999) /
     B1PTEDUP (9.00) /
     B1PTEARP (9.00) /
     B1PTSEIP (999.00) /
     B1PMEDUP (9.00) /
     B1PMEARP (9.00) /
     B1PMSEIP (999.00) /
     B1PFEDUP (9.00) /
     B1PFEARP (9.00) /
     B1PFSEIP (999.00) /
     B1POCPMJ (99) /
     B1PPINMJ (99) /
     B1PB19 (7, 8, 9) /
     B1PB20 (97, 98, 99) /
     B1PB21M (97, 98, 99) /
     B1PB21Y (9997, 9998, 9999) /
     B1PB22 (7, 8, 9) /
     B1PB23M (97, 98, 99) /
     B1PB23Y (9997, 9998, 9999) /
     B1PB24M (97, 98, 99) /
     B1PB24Y (9997, 9998, 9999) /
     B1PB25M (97, 98, 99) /
     B1PB25Y (9997, 9998, 9999) /
     B1PB26M (97, 98, 99) /
     B1PB26Y (9997, 9998, 9999) /
     B1PB27M (97, 98, 99) /
     B1PB27Y (9997, 9998, 9999) /
     B1PB28M (97, 98, 99) /
     B1PB28Y (9997, 9998, 9999) /
     B1PB29M (97, 98, 99) /
     B1PB29Y (9997, 9998, 9999) /
     B1PB30 (7, 8, 9) /
     B1PB31N (997, 998, 999) /
     B1PB31M (7, 8, 9) /
     B1PB32Y (9997, 9998, 9999) /
     B1PSAGE (97, 98, 99) /
     B1PB33 (97, 98, 99) /
     B1PB34A (7, 8, 9) /
     B1PB34B (7, 8, 9) /
     B1PB34C (7, 8, 9) /
     B1PB34D (7, 8, 9) /
     B1PB34E (7, 8, 9) /
     B1PB34F (7, 8, 9) /
     B1PB34G (7, 8, 9) /
     B1PB34H (7, 8, 9) /
     B1PB34I (7, 8, 9) /
     B1PB34J (7, 8, 9) /
     B1PB34K (7, 8, 9) /
     B1PB34WK (97, 98, 99) /
     B1PB35N (996 thru 999) /
     B1PB35M (997, 998, 999) /
     B1PB36 (97, 98, 99) /
     B1PB37 (7, 8, 9) /
     B1PB38 (7, 8, 9) /
     B1PB39 (7, 8, 9) /
     B1POCCS (995 thru 999) /
     B1PINDS (995 thru 999) /
     B1PTEDUS (9.00) /
     B1PTEARS (9.00) /
     B1PTSEIS (999.00) /
     B1PMEDUS (9.00) /
     B1PMEARS (9.00) /
     B1PMSEIS (999.00) /
     B1PFEDUS (9.00) /
     B1PFEARS (9.00) /
     B1PFSEIS (999.00) /
     B1PSOCMJ (99) /
     B1PSINMJ (99) /
     B1PC1 (7, 8, 9) /
     B1PC2 (97, 98, 99) /
     B1PC3 (7, 8, 9) /
     B1PC4 (97, 98, 99) /
     B1PCHA1 (997, 998, 999) /
     B1PCHX1 (7, 8, 9) /
     B1PCHR1 (97, 98, 99) /
     B1PCMB1 (97, 98, 99) /
     B1PCYB1 (9997, 9998, 9999) /
     B1PHHA1 (997, 998, 999) /
     B1PCHC1 (7, 8, 9) /
     B1PCHH1 (7, 8, 9) /
     B1PCDD1 (7, 8, 9) /
     B1PCDT1 (997, 998, 999) /
     B1PCDP1 (7, 8, 9) /
     B1PCDA1 (97, 98, 99) /
     B1PCDX1 (7, 8, 9) /
     B1PCXT1 (7, 8, 9) /
     B1PCDO1 (7, 8, 9) /
     B1PCHA2 (997, 998, 999) /
     B1PCHX2 (7, 8, 9) /
     B1PCHR2 (97, 98, 99) /
     B1PCMB2 (97, 98, 99) /
     B1PCYB2 (9997, 9998, 9999) /
     B1PHHA2 (997, 998, 999) /
     B1PCHC2 (7, 8, 9) /
     B1PCHH2 (7, 8, 9) /
     B1PCDD2 (7, 8, 9) /
     B1PCDT2 (997, 998, 999) /
     B1PCDP2 (7, 8, 9) /
     B1PCDA2 (97, 98, 99) /
     B1PCDX2 (7, 8, 9) /
     B1PCXT2 (7, 8, 9) /
     B1PCDO2 (7, 8, 9) /
     B1PCHA3 (997, 998, 999) /
     B1PCHX3 (7, 8, 9) /
     B1PCHR3 (97, 98, 99) /
     B1PCMB3 (97, 98, 99) /
     B1PCYB3 (9997, 9998, 9999) /
     B1PHHA3 (997, 998, 999) /
     B1PCHC3 (7, 8, 9) /
     B1PCHH3 (7, 8, 9) /
     B1PCDD3 (7, 8, 9) /
     B1PCDT3 (997, 998, 999) /
     B1PCDP3 (7, 8, 9) /
     B1PCDA3 (97, 98, 99) /
     B1PCDX3 (7, 8, 9) /
     B1PCXT3 (7, 8, 9) /
     B1PCDO3 (7, 8, 9) /
     B1PCHA4 (997, 998, 999) /
     B1PCHX4 (7, 8, 9) /
     B1PCHR4 (97, 98, 99) /
     B1PCMB4 (97, 98, 99) /
     B1PCYB4 (9997, 9998, 9999) /
     B1PHHA4 (997, 998, 999) /
     B1PCHC4 (7, 8, 9) /
     B1PCHH4 (7, 8, 9) /
     B1PCDD4 (7, 8, 9) /
     B1PCDT4 (997, 998, 999) /
     B1PCDP4 (7, 8, 9) /
     B1PCDA4 (97, 98, 99) /
     B1PCDX4 (7, 8, 9) /
     B1PCXT4 (7, 8, 9) /
     B1PCDO4 (7, 8, 9) /
     B1PCHA5 (997, 998, 999) /
     B1PCHX5 (7, 8, 9) /
     B1PCHR5 (97, 98, 99) /
     B1PCMB5 (97, 98, 99) /
     B1PCYB5 (9997, 9998, 9999) /
     B1PHHA5 (997, 998, 999) /
     B1PCHC5 (7, 8, 9) /
     B1PCHH5 (7, 8, 9) /
     B1PCDD5 (7, 8, 9) /
     B1PCDT5 (997, 998, 999) /
     B1PCDP5 (7, 8, 9) /
     B1PCDA5 (97, 98, 99) /
     B1PCDX5 (7, 8, 9) /
     B1PCXT5 (7, 8, 9) /
     B1PCDO5 (7, 8, 9) /
     B1PCHA6 (997, 998, 999) /
     B1PCHX6 (7, 8, 9) /
     B1PCHR6 (97, 98, 99) /
     B1PCMB6 (97, 98, 99) /
     B1PCYB6 (9997, 9998, 9999) /
     B1PHHA6 (997, 998, 999) /
     B1PCHC6 (7, 8, 9) /
     B1PCHH6 (7, 8, 9) /
     B1PCDD6 (7, 8, 9) /
     B1PCDT6 (997, 998, 999) /
     B1PCDP6 (7, 8, 9) /
     B1PCDA6 (97, 98, 99) /
     B1PCDX6 (7, 8, 9) /
     B1PCXT6 (7, 8, 9) /
     B1PCDO6 (7, 8, 9) /
     B1PCHA7 (997, 998, 999) /
     B1PCHX7 (7, 8, 9) /
     B1PCHR7 (97, 98, 99) /
     B1PCMB7 (97, 98, 99) /
     B1PCYB7 (9997, 9998, 9999) /
     B1PHHA7 (997, 998, 999) /
     B1PCHC7 (7, 8, 9) /
     B1PCHH7 (7, 8, 9) /
     B1PCDD7 (7, 8, 9) /
     B1PCDT7 (997, 998, 999) /
     B1PCDP7 (7, 8, 9) /
     B1PCDA7 (97, 98, 99) /
     B1PCDX7 (7, 8, 9) /
     B1PCXT7 (7, 8, 9) /
     B1PCDO7 (7, 8, 9) /
     B1PCHA8 (997, 998, 999) /
     B1PCHX8 (7, 8, 9) /
     B1PCHR8 (97, 98, 99) /
     B1PCMB8 (97, 98, 99) /
     B1PCYB8 (9997, 9998, 9999) /
     B1PHHA8 (997, 998, 999) /
     B1PCHC8 (7, 8, 9) /
     B1PCHH8 (7, 8, 9) /
     B1PCDD8 (7, 8, 9) /
     B1PCDT8 (997, 998, 999) /
     B1PCDP8 (7, 8, 9) /
     B1PCDA8 (97, 98, 99) /
     B1PCDX8 (7, 8, 9) /
     B1PCXT8 (7, 8, 9) /
     B1PCDO8 (7, 8, 9) /
     B1PCHA9 (997, 998, 999) /
     B1PCHX9 (7, 8, 9) /
     B1PCHR9 (97, 98, 99) /
     B1PCMB9 (97, 98, 99) /
     B1PCYB9 (9997, 9998, 9999) /
     B1PHHA9 (997, 998, 999) /
     B1PCHC9 (7, 8, 9) /
     B1PCHH9 (7, 8, 9) /
     B1PCDD9 (7, 8, 9) /
     B1PCDT9 (997, 998, 999) /
     B1PCDP9 (7, 8, 9) /
     B1PCDA9 (97, 98, 99) /
     B1PCDX9 (7, 8, 9) /
     B1PCXT9 (7, 8, 9) /
     B1PCDO9 (7, 8, 9) /
     B1PCHA10 (997, 998, 999) /
     B1PCHX10 (7, 8, 9) /
     B1PCHR10 (97, 98, 99) /
     B1PCMB10 (97, 98, 99) /
     B1PCYB10 (9997, 9998, 9999) /
     B1PHHA10 (997, 998, 999) /
     B1PCHC10 (7, 8, 9) /
     B1PCHH10 (7, 8, 9) /
     B1PCDD10 (7, 8, 9) /
     B1PCDT10 (997, 998, 999) /
     B1PCDP10 (7, 8, 9) /
     B1PCDA10 (97, 98, 99) /
     B1PCDX10 (7, 8, 9) /
     B1PCXT10 (7, 8, 9) /
     B1PCDO10 (7, 8, 9) /
     B1PCHA11 (997, 998, 999) /
     B1PCHX11 (7, 8, 9) /
     B1PCHR11 (97, 98, 99) /
     B1PCMB11 (97, 98, 99) /
     B1PCYB11 (9997, 9998, 9999) /
     B1PHHA11 (997, 998, 999) /
     B1PCHC11 (7, 8, 9) /
     B1PCHH11 (7, 8, 9) /
     B1PCDD11 (7, 8, 9) /
     B1PCDT11 (997, 998, 999) /
     B1PCDP11 (7, 8, 9) /
     B1PCDA11 (97, 98, 99) /
     B1PCDX11 (7, 8, 9) /
     B1PCXT11 (7, 8, 9) /
     B1PCDO11 (7, 8, 9) /
     B1PCHA12 (997, 998, 999) /
     B1PCHX12 (7, 8, 9) /
     B1PCHR12 (97, 98, 99) /
     B1PCMB12 (97, 98, 99) /
     B1PCYB12 (9997, 9998, 9999) /
     B1PHHA12 (997, 998, 999) /
     B1PCHC12 (7, 8, 9) /
     B1PCHH12 (7, 8, 9) /
     B1PCDD12 (7, 8, 9) /
     B1PCDT12 (997, 998, 999) /
     B1PCDP12 (7, 8, 9) /
     B1PCDA12 (97, 98, 99) /
     B1PCDX12 (7, 8, 9) /
     B1PCXT12 (7, 8, 9) /
     B1PCDO12 (7, 8, 9) /
     B1PCHA13 (997, 998, 999) /
     B1PCHX13 (7, 8, 9) /
     B1PCHR13 (97, 98, 99) /
     B1PCMB13 (97, 98, 99) /
     B1PCYB13 (9997, 9998, 9999) /
     B1PHHA13 (997, 998, 999) /
     B1PCHC13 (7, 8, 9) /
     B1PCHH13 (7, 8, 9) /
     B1PCDD13 (7, 8, 9) /
     B1PCDT13 (997, 998, 999) /
     B1PCDP13 (7, 8, 9) /
     B1PCDA13 (97, 98, 99) /
     B1PCDX13 (7, 8, 9) /
     B1PCXT13 (7, 8, 9) /
     B1PCDO13 (7, 8, 9) /
     B1PCHA14 (997, 998, 999) /
     B1PCHX14 (7, 8, 9) /
     B1PCHR14 (97, 98, 99) /
     B1PCMB14 (97, 98, 99) /
     B1PCYB14 (9997, 9998, 9999) /
     B1PHHA14 (997, 998, 999) /
     B1PCHC14 (7, 8, 9) /
     B1PCHH14 (7, 8, 9) /
     B1PCDD14 (7, 8, 9) /
     B1PCDT14 (997, 998, 999) /
     B1PCDP14 (7, 8, 9) /
     B1PCDA14 (97, 98, 99) /
     B1PCDX14 (7, 8, 9) /
     B1PCXT14 (7, 8, 9) /
     B1PCDO14 (7, 8, 9) /
     B1PCHA15 (997, 998, 999) /
     B1PCHX15 (7, 8, 9) /
     B1PCHR15 (97, 98, 99) /
     B1PCMB15 (97, 98, 99) /
     B1PCYB15 (9997, 9998, 9999) /
     B1PHHA15 (997, 998, 999) /
     B1PCHC15 (7, 8, 9) /
     B1PCHH15 (7, 8, 9) /
     B1PCDD15 (7, 8, 9) /
     B1PCDT15 (997, 998, 999) /
     B1PCDP15 (7, 8, 9) /
     B1PCDA15 (97, 98, 99) /
     B1PCDX15 (7, 8, 9) /
     B1PCXT15 (7, 8, 9) /
     B1PCDO15 (7, 8, 9) /
     B1PCHA16 (997, 998, 999) /
     B1PCHX16 (7, 8, 9) /
     B1PCHR16 (97, 98, 99) /
     B1PCMB16 (97, 98, 99) /
     B1PCYB16 (9997, 9998, 9999) /
     B1PHHA16 (997, 998, 999) /
     B1PCHC16 (7, 8, 9) /
     B1PCHH16 (7, 8, 9) /
     B1PCDD16 (7, 8, 9) /
     B1PCDT16 (997, 998, 999) /
     B1PCDP16 (7, 8, 9) /
     B1PCDA16 (97, 98, 99) /
     B1PCDX16 (7, 8, 9) /
     B1PCXT16 (7, 8, 9) /
     B1PCDO16 (7, 8, 9) /
     B1PCHA17 (997, 998, 999) /
     B1PCHX17 (7, 8, 9) /
     B1PCHR17 (97, 98, 99) /
     B1PCMB17 (97, 98, 99) /
     B1PCYB17 (9997, 9998, 9999) /
     B1PHHA17 (997, 998, 999) /
     B1PCHC17 (7, 8, 9) /
     B1PCHH17 (7, 8, 9) /
     B1PCDD17 (7, 8, 9) /
     B1PCDT17 (997, 998, 999) /
     B1PCDP17 (7, 8, 9) /
     B1PCDA17 (97, 98, 99) /
     B1PCDX17 (7, 8, 9) /
     B1PCXT17 (7, 8, 9) /
     B1PCDO17 (7, 8, 9) /
     B1PCHA18 (997, 998, 999) /
     B1PCHX18 (7, 8, 9) /
     B1PCHR18 (97, 98, 99) /
     B1PCMB18 (97, 98, 99) /
     B1PCYB18 (9997, 9998, 9999) /
     B1PHHA18 (997, 998, 999) /
     B1PCHC18 (7, 8, 9) /
     B1PCHH18 (7, 8, 9) /
     B1PCDD18 (7, 8, 9) /
     B1PCDT18 (997, 998, 999) /
     B1PCDP18 (7, 8, 9) /
     B1PCDA18 (97, 98, 99) /
     B1PCDX18 (7, 8, 9) /
     B1PCXT18 (7, 8, 9) /
     B1PCDO18 (7, 8, 9) /
     B1PCHA19 (997, 998, 999) /
     B1PCHX19 (7, 8, 9) /
     B1PCHR19 (97, 98, 99) /
     B1PCMB19 (97, 98, 99) /
     B1PCYB19 (9997, 9998, 9999) /
     B1PHHA19 (997, 998, 999) /
     B1PCHC19 (7, 8, 9) /
     B1PCHH19 (7, 8, 9) /
     B1PCDD19 (7, 8, 9) /
     B1PCDT19 (997, 998, 999) /
     B1PCDP19 (7, 8, 9) /
     B1PCDA19 (97, 98, 99) /
     B1PCDX19 (7, 8, 9) /
     B1PCXT19 (7, 8, 9) /
     B1PCDO19 (7, 8, 9) /
     B1PCHA20 (997, 998, 999) /
     B1PCHX20 (7, 8, 9) /
     B1PCHR20 (97, 98, 99) /
     B1PCMB20 (97, 98, 99) /
     B1PCYB20 (9997, 9998, 9999) /
     B1PHHA20 (997, 998, 999) /
     B1PCHC20 (7, 8, 9) /
     B1PCHH20 (7, 8, 9) /
     B1PCDD20 (7, 8, 9) /
     B1PCDT20 (997, 998, 999) /
     B1PCDP20 (7, 8, 9) /
     B1PCDA20 (97, 98, 99) /
     B1PCDX20 (7, 8, 9) /
     B1PCXT20 (7, 8, 9) /
     B1PCDO20 (7, 8, 9) /
     B1PCHA21 (997, 998, 999) /
     B1PCHX21 (7, 8, 9) /
     B1PCHR21 (97, 98, 99) /
     B1PCMB21 (97, 98, 99) /
     B1PCYB21 (9997, 9998, 9999) /
     B1PHHA21 (997, 998, 999) /
     B1PCHC21 (7, 8, 9) /
     B1PCHH21 (7, 8, 9) /
     B1PCDD21 (7, 8, 9) /
     B1PCDT21 (997, 998, 999) /
     B1PCDP21 (7, 8, 9) /
     B1PCDA21 (97, 98, 99) /
     B1PCDX21 (7, 8, 9) /
     B1PCXT21 (7, 8, 9) /
     B1PCDO21 (7, 8, 9) /
     B1PC5 (997, 998, 999) /
     B1PKHSIZ (97, 98, 99) /
     B1PC6 (7, 8, 9) /
     B1PCHM1N (9) /
     B1PCHM2N (9) /
     B1PCHM1X (9) /
     B1PCHM2X (9) /
     B1PDCSX (7, 8, 9) /
     B1PD1 (7, 8, 9) /
     B1PD2 (97, 98, 99) /
     B1PD3 (7, 8, 9) /
     B1PD4 (7, 8, 9) /
     B1PD5M (97, 98, 99) /
     B1PD5Y (9997, 9998, 9999) /
     B1PD7 (7, 8, 9) /
     B1PD8A (7, 8, 9) /
     B1PD8B (7, 8, 9) /
     B1PD9 (7, 8, 9) /
     B1PD10 (7, 8, 9) /
     B1PD11 (7, 8, 9) /
     B1PD12 (7, 8, 9) /
     B1PD13 (7, 8, 9) /
     B1PD14 (97, 98, 99) /
     B1PD15 (97, 98, 99) /
     B1PD16 (7, 8, 9) /
     B1PD17 (7, 8, 9) /
     B1PD18 (997, 998, 999) /
     B1PD19N (97, 98, 99) /
     B1PD19M (7, 8, 9) /
     B1PD20 (7, 8, 9) /
     B1PD21 (7, 8, 9) /
     B1PD22 (97, 98, 99) /
     B1PE1 (7, 8, 9) /
     B1PE1A1 (7, 8, 9) /
     B1PE1A2 (7, 8, 9) /
     B1PE1A3 (7, 8, 9) /
     B1PE1A4 (7, 8, 9) /
     B1PE1A5 (7, 8, 9) /
     B1PE1A6 (7, 8, 9) /
     B1PE1A7 (7, 8, 9) /
     B1PE1BN (997, 998, 999) /
     B1PE1BM (7, 8, 9) /
     B1PE2 (7, 8, 9) /
     B1PE2AN (997, 998, 999) /
     B1PE2AM (97, 98, 99) /
     B1PE3 (7, 8, 9) /
     B1PE3AN (997, 998, 999) /
     B1PE3AM (7, 8, 9) /
     B1PF1 (97, 98, 99) /
     B1PF2A (97, 98, 99) /
     B1PF2B (97, 98, 99) /
     B1PF2C (97, 98, 99) /
     B1PF2_1 (7, 8, 9) /
     B1PF2_3 (7, 8, 9) /
     B1PF2_4 (7, 8, 9) /
     B1PF2_5 (7, 8, 9) /
     B1PF2_6 (7, 8, 9) /
     B1PF2_7 (7, 8, 9) /
     B1PF2_9 (7, 8, 9) /
     B1PF2_10 (7, 8, 9) /
     B1PF2_11 (7, 8, 9) /
     B1PF2_12 (7, 8, 9) /
     B1PF2_13 (7, 8, 9) /
     B1PF2_14 (7, 8, 9) /
     B1PF2_15 (7, 8, 9) /
     B1PF2_17 (7, 8, 9) /
     B1PF2_18 (7, 8, 9) /
     B1PF2_22 (7, 8, 9) /
     B1PF2_24 (7, 8, 9) /
     B1PF2_30 (7, 8, 9) /
     B1PF2_31 (7, 8, 9) /
     B1PF2_32 (7, 8, 9) /
     B1PF2_33 (7, 8, 9) /
     B1PF2_34 (7, 8, 9) /
     B1PF2_35 (7, 8, 9) /
     B1PF2_36 (7, 8, 9) /
     B1PF2_37 (7, 8, 9) /
     B1PF2_38 (7, 8, 9) /
     B1PF2_39 (7, 8, 9) /
     B1PF2_40 (7, 8, 9) /
     B1PF2_41 (7, 8, 9) /
     B1PF2_42 (7, 8, 9) /
     B1PF2_43 (7, 8, 9) /
     B1PF2_44 (7, 8, 9) /
     B1PF2_45 (7, 8, 9) /
     B1PF2_46 (7, 8, 9) /
     B1PF2_47 (7, 8, 9) /
     B1PF2_48 (7, 8, 9) /
     B1PF2_50 (7, 8, 9) /
     B1PF2_51 (7, 8, 9) /
     B1PF2_52 (7, 8, 9) /
     B1PF2_53 (7, 8, 9) /
     B1PF2_54 (7, 8, 9) /
     B1PF2_56 (7, 8, 9) /
     B1PF2_57 (7, 8, 9) /
     B1PF2_58 (7, 8, 9) /
     B1PF2_66 (7, 8, 9) /
     B1PF2_69 (7, 8, 9) /
     B1PF2_70 (7, 8, 9) /
     B1PF2_71 (7, 8, 9) /
     B1PF2_74 (7, 8, 9) /
     B1PF2_96 (7, 8, 9) /
     B1PF3 (7, 8, 9) /
     B1PF3_1 (97, 98, 99) /
     B1PF4 (7, 8, 9) /
     B1PF5 (7, 8, 9) /
     B1PF6 (7, 8, 9) /
     B1PF7C (7, 8, 9) /
     B1PF7D (7, 8, 9) /
     B1PF8_A (7, 8, 9) /
     B1PF9 (7, 8, 9) /
     B1PF10 (7, 8, 9) /
     B1PF11 (7, 8, 9) /
     B1PF12 (7, 8, 9) /
     B1PF12A (7, 8, 9) /
     B1PF12B (7, 8, 9) /
     B1PG1 (7, 8, 9) /
     B1PG2 (7, 8, 9) /
     B1PG3 (7, 8, 9) /
     B1PG4 (7, 8, 9) /
     B1PG5 (7, 8, 9) /
     B1PG5A (7, 8, 9) /
     B1PG6 (7, 8, 9) /
     B1PG7 (7, 8, 9) /
     B1PG8 (7, 8, 9) /
     B1PG9 (7, 8, 9) /
     B1SA1 (97, 98, 99) /
     B1SA2 (97, 98, 99) /
     B1SA3 (97, 98, 99) /
     B1SA4 (97, 98, 99) /
     B1SA5 (97, 98, 99) /
     B1SSATIS (98.000) /
     B1SSATIS2 (98.000) /
     B1SA6A (7, 8, 9) /
     B1SA6B (7, 8, 9) /
     B1SA6C (7, 8, 9) /
     B1SA6D (7, 8, 9) /
     B1SA6E (7, 8, 9) /
     B1SA7A (7, 8, 9) /
     B1SA7B (7, 8, 9) /
     B1SA7C (7, 8, 9) /
     B1SA7D (7, 8, 9) /
     B1SA8A (8, 9) /
     B1SA8B (8, 9) /
     B1SA8C (8, 9) /
     B1SA8D (8, 9) /
     B1SA8E (8, 9) /
     B1SA8F (8, 9) /
     B1SHLOCS (8.000) /
     B1SHLOCO (8.00) /
     B1SA9A (7, 8, 9) /
     B1SA9B (7, 8, 9) /
     B1SA9C (7, 8, 9) /
     B1SA9D (7, 8, 9) /
     B1SA9E (7, 8, 9) /
     B1SAMPLI (8.000) /
     B1SA10A (7, 8, 9) /
     B1SA10B (7, 8, 9) /
     B1SA10C (7, 8, 9) /
     B1SA10D (7, 8, 9) /
     B1SA10E (7, 8, 9) /
     B1SA10F (7, 8, 9) /
     B1SA10G (7, 8, 9) /
     B1SA10H (7, 8, 9) /
     B1SA10I (7, 8, 9) /
     B1SA10J (7, 8, 9) /
     B1SA11A (7, 8, 9) /
     B1SA11B (7, 8, 9) /
     B1SA11C (7, 8, 9) /
     B1SA11D (7, 8, 9) /
     B1SA11E (7, 8, 9) /
     B1SA11F (7, 8, 9) /
     B1SA11G (7, 8, 9) /
     B1SA11H (7, 8, 9) /
     B1SA11I (7, 8, 9) /
     B1SA11J (7, 8, 9) /
     B1SA11K (7, 8, 9) /
     B1SA11L (7, 8, 9) /
     B1SA11M (7, 8, 9) /
     B1SA11N (7, 8, 9) /
     B1SA11O (7, 8, 9) /
     B1SA11P (7, 8, 9) /
     B1SA11Q (7, 8, 9) /
     B1SA11R (7, 8, 9) /
     B1SA11S (7, 8, 9) /
     B1SA11T (7, 8, 9) /
     B1SA11U (7, 8, 9) /
     B1SA11V (7, 8, 9) /
     B1SA11W (7, 8, 9) /
     B1SA11X (7, 8, 9) /
     B1SA11Y (7, 8, 9) /
     B1SA11Z (7, 8, 9) /
     B1SA11AA (7, 8, 9) /
     B1SA11BB (7, 8, 9) /
     B1SA11CC (7, 8, 9) /
     B1SA11DD (7, 8, 9) /
     B1SA12A (7, 8, 9) /
     B1SA12AY (7, 8, 9) /
     B1SA12B (7, 8, 9) /
     B1SA12BY (7, 8, 9) /
     B1SA12C (7, 8, 9) /
     B1SA12CY (7, 8, 9) /
     B1SA12D (7, 8, 9) /
     B1SA12DY (7, 8, 9) /
     B1SA12E (7, 8, 9) /
     B1SA12EY (7, 8, 9) /
     B1SA12F (7, 8, 9) /
     B1SA12FY (7, 8, 9) /
     B1SA12G (7, 8, 9) /
     B1SA12GY (7, 8, 9) /
     B1SA12H (7, 8, 9) /
     B1SA12HY (7, 8, 9) /
     B1SA12I (7, 8, 9) /
     B1SA12IY (7, 8, 9) /
     B1SA12J (7, 8, 9) /
     B1SA12JY (7, 8, 9) /
     B1SA12K (7, 8, 9) /
     B1SA12KY (7, 8, 9) /
     B1SA12L (7, 8, 9) /
     B1SA12LY (7, 8, 9) /
     B1SRXMEX (8) /
     B1SRXMED (98) /
     B1SA13A (7, 8, 9) /
     B1SA13AY (7, 8, 9) /
     B1SA13B (7, 8, 9) /
     B1SA13BY (7, 8, 9) /
     B1SA13C (7, 8, 9) /
     B1SA13CY (7, 8, 9) /
     B1SA13D (7, 8, 9) /
     B1SA13DY (7, 8, 9) /
     B1SA14A (7, 8, 9) /
     B1SA14B (7, 8, 9) /
     B1SA14C (7, 8, 9) /
     B1SA14D (7, 8, 9) /
     B1SA14E (7, 8, 9) /
     B1SA14F (7, 8, 9) /
     B1SA14G (7, 8, 9) /
     B1SA14H (7, 8, 9) /
     B1SA14I (7, 8, 9) /
     B1SA14J (7, 8, 9) /
     B1SA14K (7, 8, 9) /
     B1SA14L (7, 8, 9) /
     B1SA14M (7, 8, 9) /
     B1SA14N (7, 8, 9) /
     B1SA14O (7, 8, 9) /
     B1SA15 (7, 8, 9) /
     B1SA16 (97, 98, 99) /
     B1SA17 (97, 98, 99) /
     B1SA18 (97, 98, 99) /
     B1SA19 (97, 98, 99) /
     B1SA20 (97, 98, 99) /
     B1SA21A (7, 8, 9) /
     B1SA21B (7, 8, 9) /
     B1SA21C (7, 8, 9) /
     B1SA21D (7, 8, 9) /
     B1SA21E (7, 8, 9) /
     B1SA21F (7, 8, 9) /
     B1SA21G (7, 8, 9) /
     B1SA21H (7, 8, 9) /
     B1SA21I (7, 8, 9) /
     B1SA22 (7, 8, 9) /
     B1SA23 (7, 8, 9) /
     B1SA24A (7, 8, 9) /
     B1SA24B (7, 8, 9) /
     B1SA24C (7, 8, 9) /
     B1SA24D (7, 8, 9) /
     B1SA24E (7, 8, 9) /
     B1SA24F (7, 8, 9) /
     B1SA24G (7, 8, 9) /
     B1SA24H (7, 8, 9) /
     B1SA24I (7, 8, 9) /
     B1SA24J (7, 8, 9) /
     B1SA24K (7, 8, 9) /
     B1SA24L (7, 8, 9) /
     B1SA24M (7, 8, 9) /
     B1SA24N (7, 8, 9) /
     B1SA25 (8, 9) /
     B1SNEGAF (8.000) /
     B1SNEGPA (8.000) /
     B1SA26A (7, 8, 9) /
     B1SA26B (7, 8, 9) /
     B1SA26C (7, 8, 9) /
     B1SA26D (7, 8, 9) /
     B1SA26E (7, 8, 9) /
     B1SA26F (7, 8, 9) /
     B1SA26G (7, 8, 9) /
     B1SA26H (7, 8, 9) /
     B1SA26I (7, 8, 9) /
     B1SA26J (7, 8, 9) /
     B1SA26K (7, 8, 9) /
     B1SA26L (7, 8, 9) /
     B1SA26M (7, 8, 9) /
     B1SA27 (8, 9) /
     B1SPOSAF (8.000) /
     B1SPOSPA (8.000) /
     B1SA28A (7, 8, 9) /
     B1SA28B (7, 8, 9) /
     B1SA28C (7, 8, 9) /
     B1SA28D (7, 8, 9) /
     B1SA28E (7, 8, 9) /
     B1SA28F (7, 8, 9) /
     B1SA28G (7, 8, 9) /
     B1SA28H (7, 8, 9) /
     B1SA28I (7, 8, 9) /
     B1SA28J (7, 8, 9) /
     B1SBADL1 (8.00) /
     B1SBADL2 (8.000) /
     B1SIADL (8.000) /
     B1SA29A (7, 8, 9) /
     B1SA29B (7, 8, 9) /
     B1SA29C (7, 8, 9) /
     B1SA29D (7, 8, 9) /
     B1SA30A (7, 8, 9) /
     B1SA30B (7, 8, 9) /
     B1SA30C (7, 8, 9) /
     B1SA30D (7, 8, 9) /
     B1SA30E (7, 8, 9) /
     B1SA30F (7, 8, 9) /
     B1SA31A (7, 8, 9) /
     B1SA31B (7, 8, 9) /
     B1SA31C (7, 8, 9) /
     B1SA31D (7, 8, 9) /
     B1SA31E (7, 8, 9) /
     B1SA31F (7, 8, 9) /
     B1SA32A (7, 8, 9) /
     B1SA32B (7, 8, 9) /
     B1SA32C (7, 8, 9) /
     B1SA32D (7, 8, 9) /
     B1SA32E (7, 8, 9) /
     B1SA32F (7, 8, 9) /
     B1SA33A (7, 8, 9) /
     B1SA33B (7, 8, 9) /
     B1SA33C (7, 8, 9) /
     B1SA33D (7, 8, 9) /
     B1SA33E (7, 8, 9) /
     B1SA33F (7, 8, 9) /
     B1SA34A (8, 9) /
     B1SA34B (8, 9) /
     B1SA34C (8, 9) /
     B1SA34D (8, 9) /
     B1SA34E (8, 9) /
     B1SA34F (8, 9) /
     B1SA34G (8, 9) /
     B1SA34H (8, 9) /
     B1SA34I (8, 9) /
     B1SINTAG (8.000) /
     B1SA35 (98.00) /
     B1SA36 (98.00) /
     B1SWSTHI (9.000) /
     B1SA37A (98) /
     B1SA37B (98.00) /
     B1SA38 (7, 8, 9) /
     B1SA39 (997, 998, 999) /
     B1SA40 (997, 998, 999) /
     B1SA41 (997, 998, 999) /
     B1SA42 (997, 998, 999) /
     B1SA43A (7, 8, 9) /
     B1SA43B (7, 8, 9) /
     B1SA43C (7, 8, 9) /
     B1SBMI (98.000) /
     B1SA44 (7, 8, 9) /
     B1SA45 (9997, 9998, 9999) /
     B1SA46 (997, 998, 999) /
     B1SA47 (997, 998, 999) /
     B1SA48A (7, 8, 9) /
     B1SA48B (7, 8, 9) /
     B1SA48C (7, 8, 9) /
     B1SA48D (7, 8, 9) /
     B1SA48E (7, 8, 9) /
     B1SA48F (7, 8, 9) /
     B1SA48G (7, 8, 9) /
     B1SA48H (7, 8, 9) /
     B1SA49 (97, 98, 99) /
     B1SA50A (7, 8, 9) /
     B1SA50B (7, 8, 9) /
     B1SA50C (7, 8, 9) /
     B1SA50D (7, 8, 9) /
     B1SA50E (7, 8, 9) /
     B1SA50F (7, 8, 9) /
     B1SA50G (7, 8, 9) /
     B1SA50H (7, 8, 9) /
     B1SA51 (97, 98, 99) /
     B1SA52 (7, 8, 9) /
     B1SA53A (997, 998, 999) /
     B1SA53B (997, 998, 999) /
     B1SA53C (997, 998, 999) /
     B1SA53D (997, 998, 999) /
     B1SA53E (997, 998, 999) /
     B1SUSEMD (998) /
     B1SA54A (997, 998, 999) /
     B1SA54B (997, 998, 999) /
     B1SA54C (997, 998, 999) /
     B1SA54D (997, 998, 999) /
     B1SUSEMH (998) /
     B1SA55A (7, 8, 9) /
     B1SA55AY (997, 998, 999) /
     B1SA55AZ (997, 998, 999) /
     B1SA55B (7, 8, 9) /
     B1SA55BY (997, 998, 999) /
     B1SA55BZ (997, 998, 999) /
     B1SA55C (7, 8, 9) /
     B1SA55CY (997, 998, 999) /
     B1SA55CZ (997, 998, 999) /
     B1SA55D (7, 8, 9) /
     B1SA55DY (997, 998, 999) /
     B1SA55DZ (997, 998, 999) /
     B1SA55E (7, 8, 9) /
     B1SA55EY (997, 998, 999) /
     B1SA55EZ (997, 998, 999) /
     B1SA55F (7, 8, 9) /
     B1SA55FY (997, 998, 999) /
     B1SA55FZ (997, 998, 999) /
     B1SA55G (7, 8, 9) /
     B1SA55GY (997, 998, 999) /
     B1SA55GZ (997, 998, 999) /
     B1SA55H (7, 8, 9) /
     B1SA55HY (997, 998, 999) /
     B1SA55HZ (997, 998, 999) /
     B1SA55I (7, 8, 9) /
     B1SA55IY (997, 998, 999) /
     B1SA55IZ (997, 998, 999) /
     B1SA55J (7, 8, 9) /
     B1SA55JY (997, 998, 999) /
     B1SA55JZ (997, 998, 999) /
     B1SA55K (7, 8, 9) /
     B1SA55KY (997, 998, 999) /
     B1SA55KZ (997, 998, 999) /
     B1SA56A (8, 9) /
     B1SA56B (8, 9) /
     B1SA56C (8, 9) /
     B1SA56D (8, 9) /
     B1SA56E (8, 9) /
     B1SA56F (8, 9) /
     B1SA56G (8, 9) /
     B1SA56H (8, 9) /
     B1SA56I (8, 9) /
     B1SA56J (8, 9) /
     B1SA56K (8, 9) /
     B1SA56L (8, 9) /
     B1SA56M (8, 9) /
     B1SA56N (8, 9) /
     B1SA56O (8, 9) /
     B1SA56P (8, 9) /
     B1SA56Q (8, 9) /
     B1SA56R (8, 9) /
     B1SA56S (8, 9) /
     B1SA57A (97, 98, 99) /
     B1SA57B (97, 98, 99) /
     B1SA58A (97, 98, 99) /
     B1SA58B (97, 98, 99) /
     B1SA59A (97, 98, 99) /
     B1SA59B (97, 98, 99) /
     B1SA60 (997, 998, 999) /
     B1SA61A (8, 9) /
     B1SA61B (8, 9) /
     B1SA61C (8, 9) /
     B1SA61D (8, 9) /
     B1SA62A (8, 9) /
     B1SA62B (8, 9) /
     B1SA62C (8, 9) /
     B1SA62D (8, 9) /
     B1SA62E (8, 9) /
     B1SA62F (8, 9) /
     B1SA62G (8, 9) /
     B1SA62H (8, 9) /
     B1SA62I (8, 9) /
     B1SA62J (8, 9) /
     B1SA63 (8, 9) /
     B1SA64 (8, 9) /
     B1SA65A (8, 9) /
     B1SA65B (8, 9) /
     B1SA65C (8, 9) /
     B1SA65D (8, 9) /
     B1SA65E (8, 9) /
     B1SA66A (8, 9) /
     B1SA66B (8, 9) /
     B1SA66C (8, 9) /
     B1SA66D (8, 9) /
     B1SALCOH (8) /
     B1SA67 (8, 9) /
     B1SA68 (8, 9) /
     B1SB1 (7, 8, 9) /
     B1SB2A (7, 8, 9) /
     B1SB2B (7, 8, 9) /
     B1SB2C (7, 8, 9) /
     B1SB2D (7, 8, 9) /
     B1SB2E (7, 8, 9) /
     B1SB3 (9997, 9998, 9999) /
     B1SB4 (7, 8, 9) /
     B1SB5A (97, 98, 99) /
     B1SB5B (97, 98, 99) /
     B1SB5C (9997, 9998, 9999) /
     B1SB6 (7, 8, 9) /
     B1SB7 (7, 8, 9) /
     B1SB8A1 (7, 8, 9) /
     B1SB8A2 (7, 8, 9) /
     B1SB8A3 (7, 8, 9) /
     B1SB8A4 (997, 998, 999) /
     B1SB8B1 (7, 8, 9) /
     B1SB8B2 (7, 8, 9) /
     B1SB8B3 (7, 8, 9) /
     B1SB8B4 (997, 998, 999) /
     B1SB8C1 (7, 8, 9) /
     B1SB8C2 (7, 8, 9) /
     B1SB8C3 (7, 8, 9) /
     B1SB8C4 (997, 998, 999) /
     B1SB9 (7, 8, 9) /
     B1SB10 (7, 8, 9) /
     B1SB11A (7, 8, 9) /
     B1SB11B (7, 8, 9) /
     B1SB11C (7, 8, 9) /
     B1SB11D (7, 8, 9) /
     B1SB11E (7, 8, 9) /
     B1SB11F (7, 8, 9) /
     B1SB11G (7, 8, 9) /
     B1SB11H (7, 8, 9) /
     B1SB11I (7, 8, 9) /
     B1SB12A (97, 98, 99) /
     B1SB12B (9997, 9998, 9999) /
     B1SB13A (97, 98, 99) /
     B1SB13B (9997, 9998, 9999) /
     B1SB14A (7, 8, 9) /
     B1SB14B (7, 8, 9) /
     B1SB14C (7, 8, 9) /
     B1SB14D (7, 8, 9) /
     B1SB15 (7, 8, 9) /
     B1SB16 (7, 8, 9) /
     B1SB17A (7, 8, 9) /
     B1SB17B (7, 8, 9) /
     B1SB17C (7, 8, 9) /
     B1SB17D (7, 8, 9) /
     B1SB17E (7, 8, 9) /
     B1SB17F (7, 8, 9) /
     B1SB17G (7, 8, 9) /
     B1SB18 (7, 8, 9) /
     B1SB19A (7, 8, 9) /
     B1SB19B (7, 8, 9) /
     B1SB19C (7, 8, 9) /
     B1SC1 (7, 8, 9) /
     B1SC2A (7, 8, 9) /
     B1SC2B (7, 8, 9) /
     B1SC2C (7, 8, 9) /
     B1SC2D (7, 8, 9) /
     B1SC2E (7, 8, 9) /
     B1SC2F (7, 8, 9) /
     B1SC2G (7, 8, 9) /
     B1SC2H (7, 8, 9) /
     B1SC2I (7, 8, 9) /
     B1SC2J (7, 8, 9) /
     B1SC2K (7, 8, 9) /
     B1SC2L (7, 8, 9) /
     B1SC3A (7, 8, 9) /
     B1SC3B (7, 8, 9) /
     B1SC3C (7, 8, 9) /
     B1SC3D (7, 8, 9) /
     B1SC3E (7, 8, 9) /
     B1SC3F (7, 8, 9) /
     B1SC3G (7, 8, 9) /
     B1SC3H (7, 8, 9) /
     B1SC4 (7, 8, 9) /
     B1SC5 (7, 8, 9) /
     B1SC6 (7, 8, 9) /
     B1SC7A (7, 8, 9) /
     B1SC7B (7, 8, 9) /
     B1SC7C (7, 8, 9) /
     B1SC7D (7, 8, 9) /
     B1SC8A (7, 8, 9) /
     B1SC8B (7, 8, 9) /
     B1SC8C (7, 8, 9) /
     B1SC9A (7, 8, 9) /
     B1SC9B (7, 8, 9) /
     B1SC9C (7, 8, 9) /
     B1SC9D (7, 8, 9) /
     B1SC9E (7, 8, 9) /
     B1SC9F (7, 8, 9) /
     B1SC9G (7, 8, 9) /
     B1SC9H (7, 8, 9) /
     B1SC10 (7, 8, 9) /
     B1SC11 (7, 8, 9) /
     B1SC12 (7, 8, 9) /
     B1SD1 (7, 8, 9) /
     B1SD1A (997, 998, 999) /
     B1SD1B (7, 8, 9) /
     B1SD1C (9997, 9998, 9999) /
     B1SD1D (997, 998, 999) /
     B1SD2 (7, 8, 9) /
     B1SD2A (997, 998, 999) /
     B1SD2B (7, 8, 9) /
     B1SD2C (9997, 9998, 9999) /
     B1SD2D (997, 998, 999) /
     B1SE1A (8, 9) /
     B1SE1B (8, 9) /
     B1SE1C (8, 9) /
     B1SE1D (8, 9) /
     B1SE1E (8, 9) /
     B1SE1F (8, 9) /
     B1SE1G (8, 9) /
     B1SE1H (8, 9) /
     B1SE1I (8, 9) /
     B1SE1J (8, 9) /
     B1SE1K (8, 9) /
     B1SE1L (8, 9) /
     B1SE1M (8, 9) /
     B1SE1N (8, 9) /
     B1SE1O (8, 9) /
     B1SE1P (8, 9) /
     B1SE1Q (8, 9) /
     B1SE1R (8, 9) /
     B1SE1S (8, 9) /
     B1SE1T (8, 9) /
     B1SE1U (8, 9) /
     B1SE1V (8, 9) /
     B1SE1W (8, 9) /
     B1SE1X (8, 9) /
     B1SE1Y (8, 9) /
     B1SE1Z (8, 9) /
     B1SE1AA (8, 9) /
     B1SE1BB (8, 9) /
     B1SE1CC (8, 9) /
     B1SE1DD (8, 9) /
     B1SE1EE (8, 9) /
     B1SE1FF (8, 9) /
     B1SE1GG (8, 9) /
     B1SE1HH (8, 9) /
     B1SE1II (8, 9) /
     B1SE1JJ (8, 9) /
     B1SE1KK (8, 9) /
     B1SE1LL (8, 9) /
     B1SE1MM (8, 9) /
     B1SE1NN (8, 9) /
     B1SE1OO (8, 9) /
     B1SE1PP (8, 9) /
     B1SE1QQ (8, 9) /
     B1SPWBA1 (98.0) /
     B1SPWBE1 (98.0) /
     B1SPWBG1 (98.0) /
     B1SPWBR1 (98.0) /
     B1SPWBU1 (98.0) /
     B1SPWBS1 (98.0) /
     B1SPWBA2 (98.000) /
     B1SPWBE2 (98.000) /
     B1SPWBG2 (98.000) /
     B1SPWBR2 (98.000) /
     B1SPWBU2 (98.000) /
     B1SPWBS2 (98.000) /
     B1SE2A (7, 8, 9) /
     B1SE2B (7, 8, 9) /
     B1SE2C (7, 8, 9) /
     B1SE2D (7, 8, 9) /
     B1SE2E (7, 8, 9) /
     B1SE2F (7, 8, 9) /
     B1SE2G (7, 8, 9) /
     B1SE2H (7, 8, 9) /
     B1SE2I (7, 8, 9) /
     B1SE2J (7, 8, 9) /
     B1SE2K (7, 8, 9) /
     B1SE2L (7, 8, 9) /
     B1SE2M (7, 8, 9) /
     B1SE2N (7, 8, 9) /
     B1SE2O (7, 8, 9) /
     B1SE2P (7, 8, 9) /
     B1SE2Q (7, 8, 9) /
     B1SE3 (97, 98, 99) /
     B1SE4A (8, 9) /
     B1SE4B (8, 9) /
     B1SE4C (8, 9) /
     B1SE4D (8, 9) /
     B1SE4E (8, 9) /
     B1SE4F (8, 9) /
     B1SE4G (8, 9) /
     B1SE4H (8, 9) /
     B1SE4I (8, 9) /
     B1SE4J (8, 9) /
     B1SE4K (8, 9) /
     B1SE4L (8, 9) /
     B1SMASTE (8.000) /
     B1SCONST (8.000) /
     B1SCTRL (8.000) /
     B1SE4M (8, 9) /
     B1SE4N (8, 9) /
     B1SE4O (8, 9) /
     B1SE4P (8, 9) /
     B1SE4Q (8, 9) /
     B1SE4R (8, 9) /
     B1SE4S (8, 9) /
     B1SESTEE (98.000) /
     B1SE4T (8, 9) /
     B1SE4U (8, 9) /
     B1SE4V (8, 9) /
     B1SE4W (8, 9) /
     B1SE4X (8, 9) /
     B1SE4Y (8, 9) /
     B1SINTER (8.000) /
     B1SINDEP (8.000) /
     B1SE5A (7, 8, 9) /
     B1SE5B (7, 8, 9) /
     B1SE5C (7, 8, 9) /
     B1SE5D (7, 8, 9) /
     B1SE5E (7, 8, 9) /
     B1SE6A (7, 8, 9) /
     B1SE6B (7, 8, 9) /
     B1SE6C (7, 8, 9) /
     B1SE6D (7, 8, 9) /
     B1SE6E (7, 8, 9) /
     B1SE6F (7, 8, 9) /
     B1SE6G (7, 8, 9) /
     B1SE6H (7, 8, 9) /
     B1SE6I (7, 8, 9) /
     B1SE6J (7, 8, 9) /
     B1SE6K (7, 8, 9) /
     B1SE6L (7, 8, 9) /
     B1SE6M (7, 8, 9) /
     B1SE6N (7, 8, 9) /
     B1SE6O (7, 8, 9) /
     B1SE6P (7, 8, 9) /
     B1SE6Q (7, 8, 9) /
     B1SE6R (7, 8, 9) /
     B1SE6S (7, 8, 9) /
     B1SE6T (7, 8, 9) /
     B1SE6U (7, 8, 9) /
     B1SE6V (7, 8, 9) /
     B1SE6W (7, 8, 9) /
     B1SE6X (7, 8, 9) /
     B1SE6Y (7, 8, 9) /
     B1SE6Z (7, 8, 9) /
     B1SE6AA (7, 8, 9) /
     B1SE6BB (7, 8, 9) /
     B1SE6CC (7, 8, 9) /
     B1SE6DD (7, 8, 9) /
     B1SE6EE (7, 8, 9) /
     B1SAGENC (8.000) /
     B1SAGREE (8.000) /
     B1SEXTRA (8.000) /
     B1SNEURO (8.000) /
     B1SCONS1 (8.000) /
     B1SCONS2 (8.000) /
     B1SOPEN (8.000) /
     B1SE7A (7, 8, 9) /
     B1SE7B (7, 8, 9) /
     B1SE7C (7, 8, 9) /
     B1SE7D (7, 8, 9) /
     B1SE7E (7, 8, 9) /
     B1SE7F (7, 8, 9) /
     B1SE7G (7, 8, 9) /
     B1SE7H (7, 8, 9) /
     B1SE7I (7, 8, 9) /
     B1SE7J (7, 8, 9) /
     B1SE7K (7, 8, 9) /
     B1SE7L (7, 8, 9) /
     B1SE7M (7, 8, 9) /
     B1SE7N (7, 8, 9) /
     B1SE7O (7, 8, 9) /
     B1SE7P (7, 8, 9) /
     B1SE7Q (7, 8, 9) /
     B1SE7R (7, 8, 9) /
     B1SE7S (7, 8, 9) /
     B1SE7T (7, 8, 9) /
     B1SE7U (7, 8, 9) /
     B1SE7V (7, 8, 9) /
     B1SE7W (7, 8, 9) /
     B1SE7X (7, 8, 9) /
     B1SE7Y (7, 8, 9) /
     B1SE7Z (7, 8, 9) /
     B1SE7AA (7, 8, 9) /
     B1SE7BB (7, 8, 9) /
     B1SE7CC (7, 8, 9) /
     B1SE7DD (7, 8, 9) /
     B1SE7EE (7, 8, 9) /
     B1SE7FF (7, 8, 9) /
     B1SE7GG (7, 8, 9) /
     B1SE8 (8) /
     B1SE8A (8) /
     B1SE9 (8) /
     B1SE9A (8) /
     B1SMPQWB (98.00) /
     B1SMPQSP (98.000) /
     B1SMPQAC (98.000) /
     B1SMPQSC (98.000) /
     B1SMPQSR (98.00) /
     B1SMPQAG (98.000) /
     B1SMPQAL (98.00) /
     B1SMPQCN (98.00) /
     B1SMPQTR (98.00) /
     B1SMPQHA (98.000) /
     B1SE10A (7, 8, 9) /
     B1SE10B (7, 8, 9) /
     B1SE10C (7, 8, 9) /
     B1SE10D (7, 8, 9) /
     B1SE10E (7, 8, 9) /
     B1SE10F (7, 8, 9) /
     B1SOPTIM (98.00) /
     B1SPESSI (98.00) /
     B1SORIEN (98.000) /
     B1SE11A (7, 8, 9) /
     B1SE11B (7, 8, 9) /
     B1SE11C (7, 8, 9) /
     B1SE11D (7, 8, 9) /
     B1SE11E (7, 8, 9) /
     B1SE11F (7, 8, 9) /
     B1SE11G (7, 8, 9) /
     B1SE11H (7, 8, 9) /
     B1SE11I (7, 8, 9) /
     B1SE11J (7, 8, 9) /
     B1SE11K (7, 8, 9) /
     B1SE11L (7, 8, 9) /
     B1SE11M (7, 8, 9) /
     B1SE11N (7, 8, 9) /
     B1SE11O (7, 8, 9) /
     B1SE11P (7, 8, 9) /
     B1SE11Q (7, 8, 9) /
     B1SE11R (7, 8, 9) /
     B1SE11S (7, 8, 9) /
     B1SE11T (7, 8, 9) /
     B1SE11U (7, 8, 9) /
     B1SE11V (7, 8, 9) /
     B1SE11W (7, 8, 9) /
     B1SE11X (7, 8, 9) /
     B1SE11Y (7, 8, 9) /
     B1SE11Z (7, 8, 9) /
     B1SE11AA (7, 8, 9) /
     B1SE11A1 (997, 998, 999) /
     B1SE11A3 (7, 8, 9) /
     B1SE11A4 (7, 8, 9) /
     B1SE11B1 (997, 998, 999) /
     B1SE11B3 (7, 8, 9) /
     B1SE11B4 (7, 8, 9) /
     B1SE11C1 (997, 998, 999) /
     B1SE11C3 (7, 8, 9) /
     B1SE11C4 (7, 8, 9) /
     B1SE11D1 (997, 998, 999) /
     B1SE11D3 (7, 8, 9) /
     B1SE11D4 (7, 8, 9) /
     B1SE11E1 (997, 998, 999) /
     B1SE11E3 (7, 8, 9) /
     B1SE11E4 (7, 8, 9) /
     B1SE11F1 (997, 998, 999) /
     B1SE11F3 (7, 8, 9) /
     B1SE11F4 (7, 8, 9) /
     B1SE11G1 (997, 998, 999) /
     B1SE11G3 (7, 8, 9) /
     B1SE11G4 (7, 8, 9) /
     B1SE11H1 (997, 998, 999) /
     B1SE11H3 (7, 8, 9) /
     B1SE11H4 (7, 8, 9) /
     B1SE11I1 (997, 998, 999) /
     B1SE11I3 (7, 8, 9) /
     B1SE11I4 (7, 8, 9) /
     B1SE11J1 (997, 998, 999) /
     B1SE11J3 (7, 8, 9) /
     B1SE11J4 (7, 8, 9) /
     B1SE11K1 (997, 998, 999) /
     B1SE11K3 (7, 8, 9) /
     B1SE11K4 (7, 8, 9) /
     B1SE11L1 (997, 998, 999) /
     B1SE11L3 (7, 8, 9) /
     B1SE11L4 (7, 8, 9) /
     B1SE11M1 (997, 998, 999) /
     B1SE11M3 (7, 8, 9) /
     B1SE11M4 (7, 8, 9) /
     B1SE11N1 (997, 998, 999) /
     B1SE11N3 (7, 8, 9) /
     B1SE11N4 (7, 8, 9) /
     B1SE11O1 (997, 998, 999) /
     B1SE11O3 (7, 8, 9) /
     B1SE11O4 (7, 8, 9) /
     B1SE11P1 (997, 998, 999) /
     B1SE11P3 (7, 8, 9) /
     B1SE11P4 (7, 8, 9) /
     B1SE11Q1 (997, 998, 999) /
     B1SE11Q3 (7, 8, 9) /
     B1SE11Q4 (7, 8, 9) /
     B1SE11R1 (997, 998, 999) /
     B1SE11R3 (7, 8, 9) /
     B1SE11R4 (7, 8, 9) /
     B1SE11S1 (997, 998, 999) /
     B1SE11S3 (7, 8, 9) /
     B1SE11S4 (7, 8, 9) /
     B1SE11T1 (997, 998, 999) /
     B1SE11T3 (7, 8, 9) /
     B1SE11T4 (7, 8, 9) /
     B1SE11U1 (997, 998, 999) /
     B1SE11U3 (7, 8, 9) /
     B1SE11U4 (7, 8, 9) /
     B1SE11V1 (997, 998, 999) /
     B1SE11V3 (7, 8, 9) /
     B1SE11V4 (7, 8, 9) /
     B1SE11W1 (997, 998, 999) /
     B1SE11W3 (7, 8, 9) /
     B1SE11W4 (7, 8, 9) /
     B1SE11X1 (997, 998, 999) /
     B1SE11X3 (7, 8, 9) /
     B1SE11X4 (7, 8, 9) /
     B1SE11Y1 (997, 998, 999) /
     B1SE11Y3 (7, 8, 9) /
     B1SE11Y4 (7, 8, 9) /
     B1SE11Z1 (997, 998, 999) /
     B1SE11Z3 (7, 8, 9) /
     B1SE11Z4 (7, 8, 9) /
     B1SE11AW (997, 998, 999) /
     B1SE11AY (7, 8, 9) /
     B1SE11AZ (7, 8, 9) /
     B1SE12A (7, 8, 9) /
     B1SE12B (7, 8, 9) /
     B1SE12C (7, 8, 9) /
     B1SE12D (7, 8, 9) /
     B1SE12E (7, 8, 9) /
     B1SE12F (7, 8, 9) /
     B1SE12G (7, 8, 9) /
     B1SE12H (7, 8, 9) /
     B1SE12I (7, 8, 9) /
     B1SE12J (7, 8, 9) /
     B1SE12K (7, 8, 9) /
     B1SE12L (7, 8, 9) /
     B1SE12M (7, 8, 9) /
     B1SE12N (7, 8, 9) /
     B1SE12O (7, 8, 9) /
     B1SE12P (7, 8, 9) /
     B1SE12Q (7, 8, 9) /
     B1SE12R (7, 8, 9) /
     B1SE12S (7, 8, 9) /
     B1SE12T (7, 8, 9) /
     B1SE12U (7, 8, 9) /
     B1SE12V (7, 8, 9) /
     B1SE12W (7, 8, 9) /
     B1SE12X (7, 8, 9) /
     B1SE12Y (7, 8, 9) /
     B1SE12Z (7, 8, 9) /
     B1SE12AA (7, 8, 9) /
     B1SE12BB (7, 8, 9) /
     B1SE12CC (7, 8, 9) /
     B1SE12DD (7, 8, 9) /
     B1SE12EE (7, 8, 9) /
     B1SE12FF (7, 8, 9) /
     B1SE12GG (7, 8, 9) /
     B1SE12HH (7, 8, 9) /
     B1SE12II (7, 8, 9) /
     B1SE12JJ (7, 8, 9) /
     B1SE12KK (7, 8, 9) /
     B1SE12LL (7, 8, 9) /
     B1SE12MM (7, 8, 9) /
     B1SPERSI (8.000) /
     B1SREAPP (8.000) /
     B1SCHANG (8.000) /
     B1SSPCTR (98.000) /
     B1SCPCTR (98.000) /
     B1SSSCTR (98.000) /
     B1SCSCDE (98.000) /
     B1SCSCSP (98.000) /
     B1SCSCAG (98.000) /
     B1SDIREC (8.000) /
     B1STODAY (8.000) /
     B1SINSGH (8.00) /
     B1SFORSG (8) /
     B1SSUFFI (8.00) /
     B1SE13A (7, 8, 9) /
     B1SE13B (7, 8, 9) /
     B1SE13C (7, 8, 9) /
     B1SE13D (7, 8, 9) /
     B1SE13E (7, 8, 9) /
     B1SE13F (7, 8, 9) /
     B1SE13G (7, 8, 9) /
     B1SE13H (7, 8, 9) /
     B1SE13I (7, 8, 9) /
     B1SE13J (7, 8, 9) /
     B1SE13K (7, 8, 9) /
     B1SE13L (7, 8, 9) /
     B1SE13M (7, 8, 9) /
     B1SE13N (7, 8, 9) /
     B1SE13O (7, 8, 9) /
     B1SE13P (7, 8, 9) /
     B1SE13Q (7, 8, 9) /
     B1SE13R (7, 8, 9) /
     B1SE13S (7, 8, 9) /
     B1SE13T (7, 8, 9) /
     B1SE13U (7, 8, 9) /
     B1SE13V (7, 8, 9) /
     B1SE13W (7, 8, 9) /
     B1SE13X (7, 8, 9) /
     B1SE13Y (7, 8, 9) /
     B1SE13Z (7, 8, 9) /
     B1SREINT (98.000) /
     B1SACTIV (98.000) /
     B1SPLAN (98.000) /
     B1SVENT (98.000) /
     B1SDENIA (98.000) /
     B1SDISEN (98.000) /
     B1SFDCOP (98.00) /
     B1SPRCOP (98.000) /
     B1SEMCOP (98.000) /
     B1SE14 (997, 998, 999) /
     B1SE15 (997, 998, 999) /
     B1SE16 (997, 998, 999) /
     B1SE17 (997, 998, 999) /
     B1SE18 (997, 998, 999) /
     B1SE19 (997, 998, 999) /
     B1SF1 (97, 98, 99) /
     B1SF2 (97, 98, 99) /
     B1SF3 (97, 98, 99) /
     B1SF4 (97, 98, 99) /
     B1SF5 (97, 98, 99) /
     B1SF6 (997, 998, 999) /
     B1SF7 (997, 998, 999) /
     B1SF8 (997, 998, 999) /
     B1SF9A (997, 998, 999) /
     B1SF9B (7, 8, 9) /
     B1SF10 (8, 9) /
     B1SF11A (7, 8, 9) /
     B1SF11AS (7, 8, 9) /
     B1SF11B (7, 8, 9) /
     B1SF11BS (7, 8, 9) /
     B1SF11C (7, 8, 9) /
     B1SF11CS (7, 8, 9) /
     B1SF11D (7, 8, 9) /
     B1SF11DS (7, 8, 9) /
     B1SF11E (7, 8, 9) /
     B1SF11ES (7, 8, 9) /
     B1SF11F (7, 8, 9) /
     B1SF11FS (7, 8, 9) /
     B1SF11G (7, 8, 9) /
     B1SF11GS (7, 8, 9) /
     B1SF11H (7, 8, 9) /
     B1SF11HS (7, 8, 9) /
     B1SF11I (7, 8, 9) /
     B1SF11IS (7, 8, 9) /
     B1SF11J (7, 8, 9) /
     B1SF11JS (7, 8, 9) /
     B1SF12A (97, 98, 99) /
     B1SF12B (97, 98, 99) /
     B1SF12C (97, 98, 99) /
     B1SF12D (97, 98, 99) /
     B1SF13 (7, 8, 9) /
     B1SF14A (7, 8, 9) /
     B1SF14B (7, 8, 9) /
     B1SF14C (7, 8, 9) /
     B1SF14D (7, 8, 9) /
     B1SF15A (97, 98, 99) /
     B1SF15B (97, 98, 99) /
     B1SF15C (7, 8, 9) /
     B1SF16A (97, 98, 99) /
     B1SF16B (97, 98, 99) /
     B1SF16C (7, 8, 9) /
     B1SF17A (97, 98, 99) /
     B1SF17B (97, 98, 99) /
     B1SF18 (7, 8, 9) /
     B1SF19 (7, 8, 9) /
     B1SF20 (7, 8, 9) /
     B1SF21 (7, 8, 9) /
     B1SF22 (7, 8, 9) /
     B1SF23A (7, 8, 9) /
     B1SF23B (7, 8, 9) /
     B1SF23C (7, 8, 9) /
     B1SF23D (7, 8, 9) /
     B1SF23E (7, 8, 9) /
     B1SF23F (7, 8, 9) /
     B1SF23G (7, 8, 9) /
     B1SF23H (7, 8, 9) /
     B1SF23I (7, 8, 9) /
     B1SF23J (7, 8, 9) /
     B1SF23K (7, 8, 9) /
     B1SF23L (7, 8, 9) /
     B1SF23M (7, 8, 9) /
     B1SF23N (7, 8, 9) /
     B1SF24 (7, 8, 9) /
     B1SF25 (997, 998, 999) /
     B1SF26 (7, 8, 9) /
     B1SF27A (7, 8, 9) /
     B1SF27B (7, 8, 9) /
     B1SF27C (7, 8, 9) /
     B1SF27D (7, 8, 9) /
     B1SF27E (7, 8, 9) /
     B1SF27F (7, 8, 9) /
     B1SF27G (7, 8, 9) /
     B1SF27H (7, 8, 9) /
     B1SF27I (7, 8, 9) /
     B1SF27J (7, 8, 9) /
     B1SF27K (7, 8, 9) /
     B1SF27L (7, 8, 9) /
     B1SF27M (7, 8, 9) /
     B1SF27N (7, 8, 9) /
     B1SF27O (7, 8, 9) /
     B1SF27P (7, 8, 9) /
     B1SPOSWF (98.000, 99.000) /
     B1SNEGWF (98.000, 99.000) /
     B1SPOSFW (98.000, 99.000) /
     B1SNEGFW (98.000, 99.000) /
     B1SF28A (7, 8, 9) /
     B1SF28B (7, 8, 9) /
     B1SF28C (7, 8, 9) /
     B1SF28D (7, 8, 9) /
     B1SF28E (7, 8, 9) /
     B1SF28F (7, 8, 9) /
     B1SF28G (7, 8, 9) /
     B1SF28H (7, 8, 9) /
     B1SF28I (7, 8, 9) /
     B1SF28J (7, 8, 9) /
     B1SF28K (7, 8, 9) /
     B1SF29A (7, 8, 9) /
     B1SF29B (7, 8, 9) /
     B1SF29C (7, 8, 9) /
     B1SF29D (7, 8, 9) /
     B1SJCSD (98.00, 99.00) /
     B1SJCDA (98.000, 99.000) /
     B1SJCDS (98.000, 99.000) /
     B1SF30A (6, 8, 9) /
     B1SF30B (6, 8, 9) /
     B1SF30C (6, 8, 9) /
     B1SF30D (6, 8, 9) /
     B1SF30E (6, 8, 9) /
     B1SJCCS (98.00, 99.00) /
     B1SJCSS (98.00, 99.00) /
     B1SF31A (7, 8, 9) /
     B1SF31B (7, 8, 9) /
     B1SF31C (7, 8, 9) /
     B1SF31D (7, 8, 9) /
     B1SF31E (7, 8, 9) /
     B1SF31F (7, 8, 9) /
     B1SJOBDI (98.000, 99.000) /
     B1SF32A (7, 8, 9) /
     B1SF32B (7, 8, 9) /
     B1SF32C (7, 8, 9) /
     B1SF32D (7, 8, 9) /
     B1SF32E (7, 8, 9) /
     B1SF32F (7, 8, 9) /
     B1SPIWOR (8.000, 9.000) /
     B1SF33A (7, 8, 9) /
     B1SF33B (7, 8, 9) /
     B1SF33C (7, 8, 9) /
     B1SF33D (7, 8, 9) /
     B1SF34A (7, 8, 9) /
     B1SF34B (7, 8, 9) /
     B1SF34C (7, 8, 9) /
     B1SF35A (7, 8, 9) /
     B1SF35B (7, 8, 9) /
     B1SF35C (7, 8, 9) /
     B1SG1 (97, 98, 99) /
     B1SG2 (97, 98, 99) /
     B1SG3 (97, 98, 99) /
     B1SG4 (97, 98, 99) /
     B1SG5 (97, 98, 99) /
     B1SG6 (7, 8, 9) /
     B1SG7 (7, 8, 9) /
     B1SG8A (98, 99) /
     B1SG8B (98, 99) /
     B1SG8C (98, 99) /
     B1SG9A (98, 99) /
     B1SG9B (98, 99) /
     B1SG9C (98, 99) /
     B1SG10A (98, 99) /
     B1SG10B (98, 99) /
     B1SG10C (98, 99) /
     B1SG11A (7, 8, 9) /
     B1SG11B (7, 8, 9) /
     B1SG11C (7, 8, 9) /
     B1SG11D (7, 8, 9) /
     B1SG11E (7, 8, 9) /
     B1SG11F (7, 8, 9) /
     B1SG11G (7, 8, 9) /
     B1SG11H (7, 8, 9) /
     B1SG11I (7, 8, 9) /
     B1SG11J (7, 8, 9) /
     B1SG12 (99999999, 99999998) /
     B1SRINC1 (9999998) /
     B1SSINC1 (9999998) /
     B1SHINC1 (9999998) /
     B1SEARN1 (9999998) /
     B1SPNSN1 (9999998) /
     B1SSEC1 (9999998) /
     B1STINC1 (9999998) /
     B1SG13 (7, 8, 9) /
     B1SG13A (99999997, 99999998, 99999999) /
     B1SG14 (7, 8, 9) /
     B1SG14A (99999997, 99999998, 99999999) /
     B1SG15 (7, 8, 9) /
     B1SG15A (99999997, 99999998, 99999999) /
     B1SG16 (7, 8, 9) /
     B1SG16A (99999997, 99999998, 99999999) /
     B1SG17 (7, 8, 9) /
     B1SG17A (99999997, 99999998, 99999999) /
     B1SG17B (7, 8, 9) /
     B1SG18 (7, 8, 9) /
     B1SG18A (99999997, 99999998, 99999999) /
     B1SG18B (99999997, 99999998, 99999999) /
     B1SG19 (7, 8, 9) /
     B1SG19A (99999997, 99999998, 99999999) /
     B1SG20 (7, 8, 9) /
     B1SG20A (99999997, 99999998, 99999999) /
     B1SG21 (7, 8, 9) /
     B1SG21A (9997, 9998, 9999) /
     B1SG21B (99999997, 99999998, 99999999) /
     B1SG22 (7, 8, 9) /
     B1SG22A (99999997, 99999998, 99999999) /
     B1SG23 (7, 8, 9) /
     B1SG24A (99999997, 99999998, 99999999) /
     B1SG24B (7, 8, 9) /
     B1SG25A (99999997, 99999998, 99999999) /
     B1SG25B (99999997, 99999998, 99999999) /
     B1SG25C (99999997, 99999998, 99999999) /
     B1SG25D (99999997, 99999998, 99999999) /
     B1SG25E (99999997, 99999998, 99999999) /
     B1SG25F (99999997, 99999998, 99999999) /
     B1SG25G (99999997, 99999998, 99999999) /
     B1SG25H (99999997, 99999998, 99999999) /
     B1SG25I (99999997, 99999998, 99999999) /
     B1SH1 (97, 98, 99) /
     B1SH2 (97, 98, 99) /
     B1SH3 (97, 98, 99) /
     B1SH4 (97, 98, 99) /
     B1SH5 (97, 98, 99) /
     B1SH6A (7, 8, 9) /
     B1SH6B (7, 8, 9) /
     B1SH6C (7, 8, 9) /
     B1SH6D (7, 8, 9) /
     B1SH6E (7, 8, 9) /
     B1SH6F (7, 8, 9) /
     B1SGENER (98.000) /
     B1SH7A (997, 998, 999) /
     B1SH7B (997, 998, 999) /
     B1SH7C (997, 998, 999) /
     B1SH7D (997, 998, 999) /
     B1SH8A (997, 998, 999) /
     B1SH8B (997, 998, 999) /
     B1SH8C (997, 998, 999) /
     B1SH9A (997, 998, 999) /
     B1SH9B (997, 998, 999) /
     B1SH9C (997, 998, 999) /
     B1SH9D (997, 998, 999) /
     B1SH9E (997, 998, 999) /
     B1SH9F (997, 998, 999) /
     B1SH10A (997, 998, 999) /
     B1SH10B (997, 998, 999) /
     B1SH10C (997, 998, 999) /
     B1SH10D (997, 998, 999) /
     B1SH10E (997, 998, 999) /
     B1SH10F (997, 998, 999) /
     B1SH11A (997, 998, 999) /
     B1SH11B (997, 998, 999) /
     B1SH11C (997, 998, 999) /
     B1SH11D (997, 998, 999) /
     B1SH11E (997, 998, 999) /
     B1SH12A (997, 998, 999) /
     B1SH12B (997, 998, 999) /
     B1SH12C (997, 998, 999) /
     B1SH12D (997, 998, 999) /
     B1SH12E (997, 998, 999) /
     B1SH12F (997, 998, 999) /
     B1SH12G (997, 998, 999) /
     B1SH12H (997, 998, 999) /
     B1SH13A (9999997, 9999998, 9999999) /
     B1SH13B (9999997, 9999998, 9999999) /
     B1SH13C (9999997, 9999998, 9999999) /
     B1SH13D (9999997, 9999998, 9999999) /
     B1SH13E (9999997, 9999998, 9999999) /
     B1SH13F (9999997, 9999998, 9999999) /
     B1SH13G (9999997, 9999998, 9999999) /
     B1SH13H (9999997, 9999998, 9999999) /
     B1SH14A (9999997, 9999998, 9999999) /
     B1SH14B (9999997, 9999998, 9999999) /
     B1SH14C (9999997, 9999998, 9999999) /
     B1SH14D (9999997, 9999998, 9999999) /
     B1SH14E (9999997, 9999998, 9999999) /
     B1SH14F (9999997, 9999998, 9999999) /
     B1SH14G (9999997, 9999998, 9999999) /
     B1SH15A (7, 8, 9) /
     B1SH15B (7, 8, 9) /
     B1SH15C (7, 8, 9) /
     B1SH15D (7, 8, 9) /
     B1SH16A (8, 9) /
     B1SH16B (8, 9) /
     B1SH16C (8, 9) /
     B1SH16D (8, 9) /
     B1SH16E (8, 9) /
     B1SH16F (8, 9) /
     B1SH16G (8, 9) /
     B1SH16H (8, 9) /
     B1SH16I (8, 9) /
     B1SH16J (8, 9) /
     B1SH16K (8, 9) /
     B1SH16L (8, 9) /
     B1SH16M (8, 9) /
     B1SH16N (8, 9) /
     B1SH16O (8, 9) /
     B1SSWBMS (98.0) /
     B1SSWBSI (98.0) /
     B1SSWBAO (98.0) /
     B1SSWBSC (98.0) /
     B1SSWBSA (98.0) /
     B1SH16P (8, 9) /
     B1SH16Q (8, 9) /
     B1SH16R (8, 9) /
     B1SH16S (8, 9) /
     B1SH16T (8, 9) /
     B1SSYMP (8.000) /
     B1SI1 (7, 8, 9) /
     B1SI2 (7, 8, 9) /
     B1SI3 (997, 998, 999) /
     B1SI4 (997, 998, 999) /
     B1SI5 (7, 8, 9) /
     B1SI6A (7, 8, 9) /
     B1SI6B (7, 8, 9) /
     B1SI6C (7, 8, 9) /
     B1SI6D (7, 8, 9) /
     B1SI6E (7, 8, 9) /
     B1SI6F (7, 8, 9) /
     B1SI6G (7, 8, 9) /
     B1SI6H (7, 8, 9) /
     B1SI6I (7, 8, 9) /
     B1SI6J (7, 8, 9) /
     B1SI6K (7, 8, 9) /
     B1SI6L (7, 8, 9) /
     B1SHOMET (8.000) /
     B1SPIHOM (8.000) /
     B1SI7 (97, 98, 99) /
     B1SJ1 (97, 98, 99) /
     B1SJ2A (7, 8, 9) /
     B1SJ2B (7, 8, 9) /
     B1SJ2C (7, 8, 9) /
     B1SJ2D (7, 8, 9) /
     B1SJ2E (7, 8, 9) /
     B1SJ2F (7, 8, 9) /
     B1SJ2G (7, 8, 9) /
     B1SJ2H (7, 8, 9) /
     B1SJ2I (7, 8, 9) /
     B1SJ2J (7, 8, 9) /
     B1SKINPO (8.000) /
     B1SKINNE (8.000) /
     B1SFAMSO (8.000) /
     B1SPKINS (8.00) /
     B1SJ3 (97, 98, 99) /
     B1SJ4A (7, 8, 9) /
     B1SJ4B (7, 8, 9) /
     B1SJ4C (7, 8, 9) /
     B1SJ4D (7, 8, 9) /
     B1SJ4E (7, 8, 9) /
     B1SJ4F (7, 8, 9) /
     B1SJ4G (7, 8, 9) /
     B1SJ4H (7, 8, 9) /
     B1SFDSPO (8.000) /
     B1SFDSNE (8.000) /
     B1SFDSOL (8.000) /
     B1SJ5 (7, 8, 9) /
     B1SJ6 (7, 8, 9) /
     B1SJ7SA (7, 8, 9) /
     B1SJ7SB (7, 8, 9) /
     B1SJ7SC (7, 8, 9) /
     B1SJ7SD (7, 8, 9) /
     B1SJ7SE (7, 8, 9) /
     B1SJ7SF (7, 8, 9) /
     B1SJ7SG (7, 8, 9) /
     B1SJ7SH (7, 8, 9) /
     B1SJ7SI (7, 8, 9) /
     B1SJ7SJ (7, 8, 9) /
     B1SJ7PA (7, 8, 9) /
     B1SJ7PB (7, 8, 9) /
     B1SJ7PC (7, 8, 9) /
     B1SJ7PD (7, 8, 9) /
     B1SJ7PE (7, 8, 9) /
     B1SJ7PF (7, 8, 9) /
     B1SJ7PG (7, 8, 9) /
     B1SJ7PH (7, 8, 9) /
     B1SJ7PI (7, 8, 9) /
     B1SJ7PJ (7, 8, 9) /
     B1SJ7CA (7, 8, 9) /
     B1SJ7CB (7, 8, 9) /
     B1SJ7CC (7, 8, 9) /
     B1SJ7CD (7, 8, 9) /
     B1SJ7CE (7, 8, 9) /
     B1SJ7CF (7, 8, 9) /
     B1SJ7CG (7, 8, 9) /
     B1SJ7CH (7, 8, 9) /
     B1SJ7CI (7, 8, 9) /
     B1SJ7CJ (7, 8, 9) /
     B1SK1 (97, 98, 99) /
     B1SK2 (98, 998, 999) /
     B1SK3 (97, 98, 99) /
     B1SK4 (97, 98, 99) /
     B1SK5 (97, 98, 99) /
     B1SK6A (7, 8, 9) /
     B1SK6B (7, 8, 9) /
     B1SK6C (7, 8, 9) /
     B1SK6D (7, 8, 9) /
     B1SK6E (7, 8, 9) /
     B1SK6F (7, 8, 9) /
     B1SPIFAM (8.000, 9.000) /
     B1SK7A1 (7, 8, 9) /
     B1SK7A2 (7, 8, 9) /
     B1SK7B1 (7, 8, 9) /
     B1SK7B2 (7, 8, 9) /
     B1SK7C1 (7, 8, 9) /
     B1SK7C2 (7, 8, 9) /
     B1SK7D1 (7, 8, 9) /
     B1SK7D2 (7, 8, 9) /
     B1SK8 (97, 98, 99) /
     B1SK9 (97, 98, 99) /
     B1SK10 (7, 8, 9) /
     B1SK11 (7, 8, 9) /
     B1SL1 (97, 98, 99) /
     B1SL2 (97, 98, 99) /
     B1SL3 (97, 98, 99) /
     B1SL4 (97, 98, 99) /
     B1SL5 (97, 98, 99) /
     B1SL6 (7, 8, 9) /
     B1SL7 (7, 8, 9) /
     B1SL8 (7, 8, 9) /
     B1SL9A (7, 8, 9) /
     B1SL9B (7, 8, 9) /
     B1SL9C (7, 8, 9) /
     B1SMARRS (98.00, 99.00) /
     B1SSPDIS (98.00, 99.00) /
     B1SL10 (7, 8, 9) /
     B1SL11A (7, 8, 9) /
     B1SL11B (7, 8, 9) /
     B1SL11C (7, 8, 9) /
     B1SL11D (7, 8, 9) /
     B1SL11E (7, 8, 9) /
     B1SL11F (7, 8, 9) /
     B1SL11G (7, 8, 9) /
     B1SL11H (7, 8, 9) /
     B1SL11I (7, 8, 9) /
     B1SL11J (7, 8, 9) /
     B1SL11K (7, 8, 9) /
     B1SL11L (7, 8, 9) /
     B1SSPEMP (8.000, 9.000) /
     B1SSPCRI (8.000, 9.000) /
     B1SSPSOL (8.000, 9.000) /
     B1SL12 (8, 9) /
     B1SL13 (997, 998, 999) /
     B1SL14 (997, 998, 999) /
     B1SL15 (7, 8, 9) /
     B1SL16 (7, 8, 9) /
     B1SL17A (8, 9) /
     B1SL17B (8, 9) /
     B1SL17C (8, 9) /
     B1SL17D (8, 9) /
     B1SSPDEC (98.000, 99.000) /
     B1SL18 (7, 8, 9) /
     B1SL19 (7, 8, 9) /
     B1SL20 (7, 8, 9) /
     B1SL21 (997, 998, 999) /
     B1SL22 (997, 998, 999) /
     B1SL23A (97, 98, 99) /
     B1SL23B (97, 98, 99) /
     B1SL23C (97, 98, 99) /
     B1SL23D (97, 98, 99) /
     B1SL24A (97, 98, 99) /
     B1SL24B (97, 98, 99) /
     B1SL24C (7, 8, 9) /
     B1SL25A (97, 98, 99) /
     B1SL25B (97, 98, 99) /
     B1SL25C (7, 8, 9) /
     B1SL26A (97, 98, 99) /
     B1SL26B (97, 98, 99) /
     B1SL27 (7, 8, 9) /
     B1SM1 (97, 98, 99) /
     B1SM2 (97, 98, 99) /
     B1SM3 (97, 98, 99) /
     B1SM4 (97, 98, 99) /
     B1SM5 (97, 98, 99) /
     B1SM6 (7, 8, 9) /
     B1SM7 (7, 8, 9) /
     B1SM8 (7, 8, 9) /
     B1SM9 (7, 8, 9) /
     B1SM10 (7, 8, 9) /
     B1SM11 (7, 8, 9) /
     B1SM12 (7, 8, 9) /
     B1SN1A (97, 98, 99) /
     B1SN1B (97, 98, 99) /
     B1SN1C (97, 98, 99) /
     B1SN1AX (7, 8, 9) /
     B1SN2A (7, 8, 9) /
     B1SN2B (7, 8, 9) /
     B1SN2C (7, 8, 9) /
     B1SN2D (7, 8, 9) /
     B1SN2E (7, 8, 9) /
     B1SN2F (7, 8, 9) /
     B1SN2G (7, 8, 9) /
     B1SN2H (7, 8, 9) /
     B1SN2I (7, 8, 9) /
     B1SSPIRI (98.00) /
     B1SRELID (98.000) /
     B1SN3A (7, 8, 9) /
     B1SN3B (7, 8, 9) /
     B1SN3C (7, 8, 9) /
     B1SRELPR (98.00) /
     B1SN3D (7, 8, 9) /
     B1SN3E (7, 8, 9) /
     B1SN4 (7, 8, 9) /
     B1SN5 (7, 8, 9) /
     B1SN6 (7, 8, 9) /
     B1SN7 (7, 8, 9) /
     B1SN8A (7, 8, 9) /
     B1SN8B (7, 8, 9) /
     B1SN8C (7, 8, 9) /
     B1SN8D (7, 8, 9) /
     B1SRELSU (98.000, 99.000) /
     B1SN9A (7, 8, 9) /
     B1SN9B (7, 8, 9) /
     B1SN9C (7, 8, 9) /
     B1SN9D (7, 8, 9) /
     B1SN9E (7, 8, 9) /
     B1SN9F (7, 8, 9) /
     B1SN9G (7, 8, 9) /
     B1SN9H (7, 8, 9) /
     B1SRELCA (98.00) /
     B1SRELCB (98.000) /
     B1SN10A (7, 8, 9) /
     B1SN10B (7, 8, 9) /
     B1SN10C (7, 8, 9) /
     B1SN10D (7, 8, 9) /
     B1SN10E (7, 8, 9) /
     B1SSPRTE (98.000) /
     B1SN11A (7, 8, 9) /
     B1SN11B (7, 8, 9) /
     B1SN11C (7, 8, 9) /
     B1SN11D (7, 8, 9) /
     B1SN11E (7, 8, 9) /
     B1SN11F (7, 8, 9) /
     B1SN11G (7, 8, 9) /
     B1SN11H (7, 8, 9) /
     B1SN11I (7, 8, 9) /
     B1SMNDFU (98.000) /
     B1SP1A (99997, 99998, 99999) /
     B1SP1B (99997, 99998, 99999) /
     B1SP1C (99997, 99998, 99999) /
     B1SP1D (99997, 99998, 99999) /
     B1SP1E (99997, 99998, 99999) /
     B1SP1F (99997, 99998, 99999) /
     B1SP1G (99997, 99998, 99999) /
     B1SP1H (99997, 99998, 99999) /
     B1SP1I (99997, 99998, 99999) /
     B1SP1J (99997, 99998, 99999) /
     B1SP1K (99997, 99998, 99999) /
     B1SLFEDI (99998.00) /
     B1SP2A (7, 8, 9) /
     B1SP2B (7, 8, 9) /
     B1SP2C (7, 8, 9) /
     B1SP2D (7, 8, 9) /
     B1SP2E (7, 8, 9) /
     B1SP2F (7, 8, 9) /
     B1SP2G (7, 8, 9) /
     B1SP2H (7, 8, 9) /
     B1SP2I (7, 8, 9) /
     B1SDAYDI (98.000) /
     B1SP3A (7, 8, 9) /
     B1SP3B (7, 8, 9) /
     B1SP3C (7, 8, 9) /
     B1SP3D (7, 8, 9) /
     B1SP3E (7, 8, 9) /
     B1SP3F (7, 8, 9) /
     B1SP3G (7, 8, 9) /
     B1SP3H (7, 8, 9) /
     B1SP3I (7, 8, 9) /
     B1SP3J (7, 8, 9) /
     B1SP4 (7, 8, 9) /
     B1SP5 (7, 8, 9) /
     B1SQ1 (97, 98, 99) /
     B1SQ2 (97, 98, 99) /
     B1SQ3 (97, 98, 99) /
     B1SQ4 (97, 98, 99) /
     B1SQ5 (97, 98, 99) /
     B1SQ6 (97, 98, 99) /
   .

EXECUTE.

* Create SPSS system file.

*SAVE OUTFILE="spss-filename.sav".
