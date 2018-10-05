*-------------------------------------------------------------------------*
*                                                                          
*                     SPSS SETUP FILE FOR ICPSR 02760
*       NATIONAL SURVEY OF MIDLIFE DEVELOPMENT IN THE UNITED STATES
*                            (MIDUS), 1995-1996
*               (DATASET 0001: MAIN, SIBLINGS AND TWIN DATA)
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
*  data file is physically located (e.g., "c:\temp\02760-0001-data.txt").
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
*  will be saved (e.g., SAVE OUTFILE="c:\spsswin\data\da02760-0001.sav").
*
*-------------------------------------------------------------------------.

* SPSS FILE HANDLE AND DATA LIST COMMANDS.

FILE HANDLE DATA / NAME="data-filename" LRECL=5268.
DATA LIST FILE=DATA /
                M2ID 1-5           M2FAMNUM 6-11
             SAMPLMAJ 12             A1STATUS 13          A1PBYEAR 14-21
         A1PAGE_M2 22-26              A1PRSEX 27                  QL2 28
                  QL3 29              HH_CELL 30          NPRB_SEX 31-33
             SEX_CELL 34          NPRB_WHO 35-37                  WHO 38
            PROB_R 39-41                MO 42-43               DAY 44-45
                RECON 46           MO_RCVD 47-48           DY_RCVD 49-50
             TOT_SIBS 51               ZYGCAT 52                A1PA4 53
                A1PA5 54                A1PA6 55             A1PA7 56-57
               A1PA7A 58           A1PA7BA 59-60           A1PA7BB 61-62
           A1PA7BC 63-64             A1PA8 65-66               A1PA8A 67
           A1PA8BA 68-69           A1PA8BB 70-71           A1PA8BC 72-73
                A1PA9 74               A1PA10 75               A1PA11 76
           A1PA11A 77-78             A1PA11BA 79             A1PA11BB 80
             A1PA11BC 81             A1PA11BD 82             A1PA11BE 83
             A1PA11BF 84             A1PA11BG 85             A1PA11BH 86
             A1PA11BI 87             A1PA11BJ 88             A1PA11BK 89
              A1PA11C 90              A1PA11D 91               A1PA12 92
           A1PA12A 93-94               A1PA13 95              A1PA13A 96
              A1PA13B 97             A1PHRTRS 98             A1PHRTDX 99
          A1PA14 100-101              A1PA15 102              A1PA16 103
              A1PA17 104              A1PA18 105              A1PA19 106
              A1PA20 107              A1PA21 108              A1PA22 109
             A1PA22A 110              A1PA23 111              A1PA24 112
              A1PA25 113              A1PA26 114              A1PA27 115
              A1PA28 116            A1PANGIN 117              A1PA29 118
         A1PA29A 119-121             A1PA29B 122            A1PA29CA 123
            A1PA29CB 124            A1PA29CC 125            A1PA29CD 126
            A1PA29CE 127            A1PA29CF 128            A1PA29CG 129
            A1PA29CH 130            A1PA29CI 131            A1PA29CJ 132
            A1PA29CK 133              A1PA33 134              A1PA34 135
          A1PA30 136-138              A1PA31 139         A1PA32S 140-142
         A1PA32D 143-145              A1PA36 146              A1PA37 147
             A1PA37A 148             A1PA37B 149            A1PCACRS 150
            A1PCACDX 151              A1PA38 152             A1PA39A 153
             A1PA39B 154             A1PA39C 155             A1PA39D 156
             A1PA39E 157             A1PA39F 158             A1PA39G 159
             A1PA39H 160             A1PA39I 161             A1PA39J 162
          A1PA41 163-164              A1PA40 165          A1PA42 166-167
              A1PA43 168          A1PA44 169-171              A1PA45 172
          A1PA46 173-174          A1PA47 175-177          A1PA52 178-179
              A1PA53 180         A1PA53A 181-182              A1PA54 183
             A1PA54A 184      A1PA55 185-188 (1)          A1PA56 189-190
              A1PA57 191              A1PA58 192              A1PA59 193
              A1PA60 194              A1PA61 195              A1PA62 196
             A1PA62A 197              A1PA63 198             A1PA63A 199
              A1PA64 200              A1PA65 201              A1PA66 202
            A1PDEPAF 203            A1PDEPAD 204          A1PA67 205-206
        A1PA68MO 207-208        A1PA68YR 209-210              A1PA69 211
              A1PA70 212              A1PA71 213              A1PA72 214
              A1PA73 215             A1PA73A 216              A1PA74 217
             A1PA74A 218              A1PA75 219              A1PA76 220
              A1PA77 221            A1PANHED 222            A1PANHDX 223
            A1PDEPRE 224            A1PDEPDX 225          A1PA78 226-227
        A1PA79MO 228-229        A1PA79YR 230-231              A1PA80 232
             A1PA80A 233              A1PA81 234             A1PA81A 235
              A1PA82 236             A1PA82A 237              A1PA83 238
             A1PA83A 239              A1PA84 240             A1PA84A 241
             A1PA85A 242             A1PA85B 243             A1PA85C 244
             A1PA85D 245             A1PA85E 246             A1PA85F 247
             A1PA85G 248             A1PA85H 249             A1PA85I 250
             A1PA85J 251        A1PANXIE 252-253            A1PANXTD 254
              A1PA86 255              A1PA87 256             A1PA87A 257
          A1PA88 258-260              A1PA89 261             A1PA90A 262
             A1PA90B 263             A1PA90C 264             A1PA90D 265
             A1PA90E 266             A1PA90F 267            A1PPANIC 268
            A1PPANDX 269           A1PB1 270-271             A1PMQB1 272
            A1PEDUCP 273              A1PEDU 274       A1PSXEDAG 275-276
           A1PB2 277-278              A1PB3A 279              A1PB3B 280
              A1PB3C 281              A1PB3D 282              A1PB3E 283
              A1PB3F 284              A1PB3G 285              A1PB3H 286
              A1PB3I 287              A1PB3J 288              A1PB3K 289
           A1PB5 290-293              A1PB4A 294              A1PB4B 295
              A1PB4C 296              A1PB4D 297              A1PB4E 298
              A1PB4F 299              A1PB4G 300               A1PB6 301
             A1PB8_2 302         A1PB8_3 303-306              A1PB10 307
          A1POCC 308-310          A1PIND 311-313     A1PTSEI 314-319 (2)
    A1PTEARN 320-326 (3)     A1PTEDU 327-333 (3)     A1PFSEI 334-340 (3)
    A1PFEARN 341-347 (3)     A1PFEDU 348-354 (3)     A1PMSEI 355-360 (2)
    A1PMEARN 361-367 (3)     A1PMEDU 368-374 (3)    R_ABSCRE 375-381 (3)
    R_ATMOSP 382-388 (3)      R_BOTH 389-395 (3)     R_BUSPR 396-402 (3)
    R_CLERIC 403-409 (3)     R_CLIMB 410-416 (3)    R_CLRDIS 417-423 (3)
      R_COLD 424-430 (3)    R_COMMDA 431-437 (3)     R_DATAL 438-444 (3)
    R_DATAPR 445-451 (3)       R_DCP 452-458 (3)      R_DEPL 459-465 (3)
    R_ENVIRO 466-472 (3)    R_EYHNFT 473-479 (3)       R_FIF 480-486 (3)
         R_FMNHR 487-488         R_FMNYR 489-493    R_FNGRDX 494-500 (3)
    R_FRMPRC 501-507 (3)       R_GED 508-514 (3)    R_HAZARD 515-521 (3)
      R_HEAT 522-528 (3)     R_INFLU 529-535 (3)    R_INTELL 536-542 (3)
    R_MACHPR 543-549 (3)    R_MCHNPR 550-556 (3)           R_MEN 557-563
         R_MMNHR 564-565         R_MMNYR 566-570    R_MNLDXT 571-577 (3)
    R_MTRCRD 578-584 (3)       R_MVC 585-591 (3)     R_NOISE 592-598 (3)
    R_NUMERC 599-605 (3)    R_OBSPRE 606-612 (3)       R_OUT 613-619 (3)
    R_PEOPLE 620-626 (3)    R_PEOPRE 627-633 (3)    R_PHYSDM 634-640 (3)
    R_PRODPR 641-647 (3)    R_PROTPR 648-654 (3)    R_PRSTPR 655-661 (3)
       R_PUS 662-668 (3)     R_REACH 669-675 (3)    R_REPCON 676-682 (3)
    R_ROUTPR 683-689 (3)    R_SCINPR 690-696 (3)       R_SEE 697-703 (3)
       R_SJC 704-710 (3)    R_SPATIA 711-717 (3)     R_STOOP 718-724 (3)
    R_STRGTH 725-731 (3)       R_STS 732-738 (3)       R_SVP 739-745 (3)
      R_TALK 746-752 (3)    R_THINGS 753-759 (3)     R_TRAIN 760-766 (3)
     R_VARCH 767-773 (3)    R_VERBAL 774-780 (3)       R_WET 781-787 (3)
         R_WOMEN 788-794            MINDUS_R 795            PROFID_R 796
             AGRIC_R 797            CONSTR_R 798             MANUF_R 799
            TRANSP_R 800             WHOLE_R 801            RETAIL_R 802
            FNANCE_R 803             BUSIN_R 804            PERSON_R 805
            ENTERT_R 806            PUBADM_R 807            MOCCUP_R 808
              EXEC_R 809            PROFOC_R 810              TECH_R 811
             SALES_R 812             ADMIN_R 813              SERV_R 814
              FARM_R 815             CRAFT_R 816            OPERAT_R 817
          A1PB11 818-820         A1PB11A 821-822          A1PB12 823-825
            A1PB14_2 826        A1PB14_3 827-831              A1PB16 832
          A1POCP 833-835         A1PINDP 836-838    A1PTSEIP 839-844 (2)
    A1PTEARP 845-851 (3)    A1PTEDUP 852-858 (3)    A1PFSEIP 859-865 (3)
    A1PFEARP 866-872 (3)    A1PFEDUP 873-879 (3)    A1PMSEIP 880-886 (3)
    A1PMEARP 887-893 (3)    A1PMEDUP 894-900 (3)    L_ABSCRE 901-907 (3)
    L_ATMOSP 908-914 (3)      L_BOTH 915-921 (3)     L_BUSPR 922-928 (3)
    L_CLERIC 929-935 (3)     L_CLIMB 936-942 (3)    L_CLRDIS 943-949 (3)
      L_COLD 950-956 (3)    L_COMMDA 957-963 (3)     L_DATAL 964-970 (3)
    L_DATAPR 971-977 (3)       L_DCP 978-984 (3)      L_DEPL 985-991 (3)
    L_ENVIRO 992-998 (3)   L_EYHNFT 999-1005 (3)     L_FIF 1006-1012 (3)
       L_FMNHR 1013-1014       L_FMNYR 1015-1019  L_FNGRDX 1020-1026 (3)
  L_FRMPRC 1027-1033 (3)     L_GED 1034-1040 (3)  L_HAZARD 1041-1047 (3)
    L_HEAT 1048-1054 (3)   L_INFLU 1055-1061 (3)  L_INTELL 1062-1068 (3)
  L_MACHPR 1069-1075 (3)  L_MCHNPR 1076-1082 (3)         L_MEN 1083-1089
       L_MMNHR 1090-1091       L_MMNYR 1092-1096  L_MNLDXT 1097-1103 (3)
  L_MTRCRD 1104-1110 (3)     L_MVC 1111-1117 (3)   L_NOISE 1118-1124 (3)
  L_NUMERC 1125-1131 (3)  L_OBSPRE 1132-1138 (3)     L_OUT 1139-1145 (3)
  L_PEOPLE 1146-1152 (3)  L_PEOPRE 1153-1159 (3)  L_PHYSDM 1160-1166 (3)
  L_PRODPR 1167-1173 (3)  L_PROTPR 1174-1180 (3)  L_PRSTPR 1181-1187 (3)
     L_PUS 1188-1194 (3)   L_REACH 1195-1201 (3)  L_REPCON 1202-1208 (3)
  L_ROUTPR 1209-1215 (3)  L_SCINPR 1216-1222 (3)     L_SEE 1223-1229 (3)
     L_SJC 1230-1236 (3)  L_SPATIA 1237-1243 (3)   L_STOOP 1244-1250 (3)
  L_STRGTH 1251-1257 (3)     L_STS 1258-1264 (3)     L_SVP 1265-1271 (3)
    L_TALK 1272-1278 (3)  L_THINGS 1279-1285 (3)   L_TRAIN 1286-1292 (3)
   L_VARCH 1293-1299 (3)  L_VERBAL 1300-1306 (3)     L_WET 1307-1313 (3)
       L_WOMEN 1314-1320           MINDUS_L 1321           PROFID_L 1322
            AGRIC_L 1323           CONSTR_L 1324            MANUF_L 1325
           TRANSP_L 1326            WHOLE_L 1327           RETAIL_L 1328
           FNANCE_L 1329            BUSIN_L 1330           PERSON_L 1331
           ENTERT_L 1332           PUBADM_L 1333           MOCCUP_L 1334
             EXEC_L 1335           PROFOC_L 1336             TECH_L 1337
            SALES_L 1338            ADMIN_L 1339             SERV_L 1340
             FARM_L 1341            CRAFT_L 1342           OPERAT_L 1343
             A1PB17 1344             A1PB19 1345      A1PB18MO 1346-1347
      A1PB18YR 1348-1349             A1PB20 1350     A1PB20AMO 1351-1352
     A1PB20AYR 1353-1354     A1PB20BMO 1355-1356     A1PB20BYR 1357-1358
      A1PB21MO 1359-1360      A1PB21YR 1361-1362      A1PB22MO 1363-1364
      A1PB22YR 1365-1366      A1PB23MO 1367-1368      A1PB23YR 1369-1370
             A1PB24 1371        A1PB25 1372-1375           A1PPARTN 1376
        A1PB26 1377-1378       A1PSAGE 1379-1380        A1PB27 1381-1382
           A1PMQB27 1383            A1PSEDU 1384    A1PSSXEDAG 1385-1386
            A1PB28A 1387            A1PB28B 1388            A1PB28C 1389
            A1PB28D 1390            A1PB28E 1391            A1PB28F 1392
            A1PB28G 1393            A1PB28H 1394            A1PB28I 1395
            A1PB28J 1396            A1PB28K 1397        A1PB30 1398-1401
            A1PB29A 1402            A1PB29B 1403            A1PB29C 1404
            A1PB29D 1405            A1PB29E 1406            A1PB29F 1407
            A1PB29G 1408             A1PB31 1409           A1PB33_2 1410
           A1PB34_2 1411       A1POCCS 1412-1414       A1PINDS 1415-1417
  A1PTSEIS 1418-1423 (2)  A1PTEARS 1424-1430 (3)  A1PTEDUS 1431-1437 (3)
  A1PFSEIS 1438-1444 (3)  A1PFEARS 1445-1451 (3)  A1PFEDUS 1452-1458 (3)
  A1PMSEIS 1459-1465 (3)  A1PMEARS 1466-1472 (3)  A1PMEDUS 1473-1479 (3)
  S_ABSCRE 1480-1486 (3)  S_ATMOSP 1487-1493 (3)    S_BOTH 1494-1500 (3)
   S_BUSPR 1501-1507 (3)  S_CLERIC 1508-1514 (3)   S_CLIMB 1515-1521 (3)
  S_CLRDIS 1522-1528 (3)    S_COLD 1529-1535 (3)  S_COMMDA 1536-1542 (3)
   S_DATAL 1543-1549 (3)  S_DATAPR 1550-1556 (3)     S_DCP 1557-1563 (3)
    S_DEPL 1564-1570 (3)  S_ENVIRO 1571-1577 (3)  S_EYHNFT 1578-1584 (3)
     S_FIF 1585-1591 (3)       S_FMNHR 1592-1593       S_FMNYR 1594-1598
  S_FNGRDX 1599-1605 (3)  S_FRMPRC 1606-1612 (3)     S_GED 1613-1619 (3)
  S_HAZARD 1620-1626 (3)    S_HEAT 1627-1633 (3)   S_INFLU 1634-1640 (3)
  S_INTELL 1641-1647 (3)  S_MACHPR 1648-1654 (3)  S_MCHNPR 1655-1661 (3)
         S_MEN 1662-1668       S_MMNHR 1669-1670       S_MMNYR 1671-1675
  S_MNLDXT 1676-1682 (3)  S_MTRCRD 1683-1689 (3)     S_MVC 1690-1696 (3)
   S_NOISE 1697-1703 (3)  S_NUMERC 1704-1710 (3)  S_OBSPRE 1711-1717 (3)
     S_OUT 1718-1724 (3)  S_PEOPLE 1725-1731 (3)  S_PEOPRE 1732-1738 (3)
  S_PHYSDM 1739-1745 (3)  S_PRODPR 1746-1752 (3)  S_PROTPR 1753-1759 (3)
  S_PRSTPR 1760-1766 (3)     S_PUS 1767-1773 (3)   S_REACH 1774-1780 (3)
  S_REPCON 1781-1787 (3)  S_ROUTPR 1788-1794 (3)  S_SCINPR 1795-1801 (3)
     S_SEE 1802-1808 (3)     S_SJC 1809-1815 (3)  S_SPATIA 1816-1822 (3)
   S_STOOP 1823-1829 (3)  S_STRGTH 1830-1836 (3)     S_STS 1837-1843 (3)
     S_SVP 1844-1850 (3)    S_TALK 1851-1857 (3)  S_THINGS 1858-1864 (3)
   S_TRAIN 1865-1871 (3)   S_VARCH 1872-1878 (3)  S_VERBAL 1879-1885 (3)
     S_WET 1886-1892 (3)       S_WOMEN 1893-1899           MINDUS_S 1900
           PROFID_S 1901            AGRIC_S 1902           CONSTR_S 1903
            MANUF_S 1904           TRANSP_S 1905            WHOLE_S 1906
           RETAIL_S 1907           FNANCE_S 1908            BUSIN_S 1909
           PERSON_S 1910           ENTERT_S 1911           PUBADM_S 1912
           MOCCUP_S 1913             EXEC_S 1914           PROFOC_S 1915
             TECH_S 1916            SALES_S 1917            ADMIN_S 1918
             SERV_S 1919             FARM_S 1920            CRAFT_S 1921
           OPERAT_S 1922        A1PB35 1923-1924        CNT_BK 1925-1926
           A1PB36A1 1927      A1PB36B1 1928-1929      A1PB36C1 1930-1931
           A1PB36A2 1932      A1PB36B2 1933-1934      A1PB36C2 1935-1936
           A1PB36A3 1937      A1PB36B3 1938-1939      A1PB36C3 1940-1941
           A1PB36A4 1942      A1PB36B4 1943-1944      A1PB36C4 1945-1946
           A1PB36A5 1947      A1PB36B5 1948-1949      A1PB36C5 1950-1951
           A1PB36A6 1952      A1PB36B6 1953-1954      A1PB36C6 1955-1956
           A1PB36A7 1957      A1PB36B7 1958-1959      A1PB36C7 1960-1961
           A1PB36A8 1962      A1PB36B8 1963-1964      A1PB36C8 1965-1966
           A1PB36A9 1967      A1PB36B9 1968-1969      A1PB36C9 1970-1971
          A1PB36A10 1972     A1PB36B10 1973-1974     A1PB36C10 1975-1976
       A1PBAG1 1977-1978       A1PBAG2 1979-1980       A1PBAG3 1981-1982
       A1PBAG4 1983-1984       A1PBAG5 1985-1986       A1PBAG6 1987-1988
       A1PBAG7 1989-1990       A1PBAG8 1991-1992       A1PBAG9 1993-1994
      A1PBAG10 1995-1996        A1PB37 1997-1998       CNT_NBK 1999-2000
           A1PB37A1 2001           A1PB37B1 2002      A1PB37C1 2003-2004
      A1PB37D1 2005-2006           A1PB37A2 2007           A1PB37B2 2008
      A1PB37C2 2009-2010      A1PB37D2 2011-2012           A1PB37A3 2013
           A1PB37B3 2014      A1PB37C3 2015-2016      A1PB37D3 2017-2018
           A1PB37A4 2019           A1PB37B4 2020      A1PB37C4 2021-2022
      A1PB37D4 2023-2024           A1PB37A5 2025           A1PB37B5 2026
      A1PB37C5 2027-2028      A1PB37D5 2029-2030           A1PB37A6 2031
           A1PB37B6 2032      A1PB37C6 2033-2034      A1PB37D6 2035-2036
           A1PB37A7 2037           A1PB37B7 2038      A1PB37C7 2039-2040
      A1PB37D7 2041-2042           A1PB37A8 2043           A1PB37B8 2044
      A1PB37C8 2045-2046      A1PB37D8 2047-2048           A1PB37A9 2049
           A1PB37B9 2050      A1PB37C9 2051-2052      A1PB37D9 2053-2054
          A1PB37A10 2055          A1PB37B10 2056     A1PB37C10 2057-2058
     A1PB37D10 2059-2060       A1PBAO1 2061-2062       A1PBAO2 2063-2064
       A1PBAO3 2065-2066       A1PBAO4 2067-2068       A1PBAO5 2069-2070
       A1PBAO6 2071-2072       A1PBAO7 2073-2074       A1PBAO8 2075-2076
       A1PBAO9 2077-2078      A1PBAO10 2079-2080          A1PCHILD0 2081
          A1PCHILD1 2082          A1PCHILD2 2083          A1PCHILD3 2084
          A1PCHILD4 2085          A1PCHILD5 2086          A1PCHILD6 2087
          A1PCHILD7 2088          A1PCHILD8 2089          A1PCHILD9 2090
         A1PCHILD10 2091         A1PCHILD11 2092         A1PCHILD12 2093
         A1PCHILD13 2094         A1PCHILD14 2095         A1PCHILD15 2096
         A1PCHILD16 2097         A1PCHILD17 2098         A1PCHILD18 2099
             A1PC06 2100            A1PC713 2101           A1PC1417 2102
             A1PC18 2103              A1PE1 2104        A1PE1A 2105-2108
              A1PE2 2109        A1PE2A 2110-2113              A1PE3 2114
        A1PE3A 2115-2118              A1PC1 2119             A1PCA1 2120
             A1PCA2 2121             A1PCA3 2122             A1PCA4 2123
             A1PCA5 2124             A1PCA6 2125             A1PCA7 2126
        A1PCB1 2127-2128        A1PCB2 2129-2130        A1PCB3 2131-2132
        A1PCB6 2133-2134        A1PCB7 2135-2136              A1PCC 2137
         A1PC2 2138-2139              A1PC3 2140            A1PC3A1 2141
            A1PC3A2 2142            A1PC3A3 2143            A1PC3A4 2144
            A1PC3A5 2145            A1PC5_2 2146            A1PC6_2 2147
       A1PINDD 2148-2150       A1POCCD 2151-2153  A1PTSEID 2154-2159 (2)
  A1PTEARD 2160-2166 (3)  A1PTEDUD 2167-2173 (3)  A1PFSEID 2174-2180 (3)
  A1PFEARD 2181-2187 (3)  A1PFEDUD 2188-2194 (3)  A1PMSEID 2195-2201 (3)
  A1PMEARD 2202-2208 (3)  A1PMEDUD 2209-2215 (3)  D_ABSCRE 2216-2222 (3)
  D_ATMOSP 2223-2229 (3)    D_BOTH 2230-2236 (3)   D_BUSPR 2237-2243 (3)
  D_CLERIC 2244-2250 (3)   D_CLIMB 2251-2257 (3)  D_CLRDIS 2258-2264 (3)
    D_COLD 2265-2271 (3)  D_COMMDA 2272-2278 (3)   D_DATAL 2279-2285 (3)
  D_DATAPR 2286-2292 (3)     D_DCP 2293-2299 (3)    D_DEPL 2300-2306 (3)
  D_ENVIRO 2307-2313 (3)  D_EYHNFT 2314-2320 (3)     D_FIF 2321-2327 (3)
       D_FMNHR 2328-2329       D_FMNYR 2330-2334  D_FNGRDX 2335-2341 (3)
  D_FRMPRC 2342-2348 (3)     D_GED 2349-2355 (3)  D_HAZARD 2356-2362 (3)
    D_HEAT 2363-2369 (3)   D_INFLU 2370-2376 (3)  D_INTELL 2377-2383 (3)
  D_MACHPR 2384-2390 (3)  D_MCHNPR 2391-2397 (3)         D_MEN 2398-2404
       D_MMNHR 2405-2406       D_MMNYR 2407-2411  D_MNLDXT 2412-2418 (3)
  D_MTRCRD 2419-2425 (3)     D_MVC 2426-2432 (3)   D_NOISE 2433-2439 (3)
  D_NUMERC 2440-2446 (3)  D_OBSPRE 2447-2453 (3)     D_OUT 2454-2460 (3)
  D_PEOPLE 2461-2467 (3)  D_PEOPRE 2468-2474 (3)  D_PHYSDM 2475-2481 (3)
  D_PRODPR 2482-2488 (3)  D_PROTPR 2489-2495 (3)  D_PRSTPR 2496-2502 (3)
     D_PUS 2503-2509 (3)   D_REACH 2510-2516 (3)  D_REPCON 2517-2523 (3)
  D_ROUTPR 2524-2530 (3)  D_SCINPR 2531-2537 (3)     D_SEE 2538-2544 (3)
     D_SJC 2545-2551 (3)  D_SPATIA 2552-2558 (3)   D_STOOP 2559-2565 (3)
  D_STRGTH 2566-2572 (3)     D_STS 2573-2579 (3)     D_SVP 2580-2586 (3)
    D_TALK 2587-2593 (3)  D_THINGS 2594-2600 (3)   D_TRAIN 2601-2607 (3)
   D_VARCH 2608-2614 (3)  D_VERBAL 2615-2621 (3)     D_WET 2622-2628 (3)
       D_WOMEN 2629-2635           MINDUS_D 2636           PROFID_D 2637
            AGRIC_D 2638           CONSTR_D 2639            MANUF_D 2640
           TRANSP_D 2641            WHOLE_D 2642           RETAIL_D 2643
           FNANCE_D 2644            BUSIN_D 2645           PERSON_D 2646
           ENTERT_D 2647           PUBADM_D 2648           MOCCUP_D 2649
             EXEC_D 2650           PROFOC_D 2651             TECH_D 2652
            SALES_D 2653            ADMIN_D 2654             SERV_D 2655
             FARM_D 2656            CRAFT_D 2657           OPERAT_D 2658
              A1PC7 2659         A1PC8 2660-2661              A1PC9 2662
            A1PC9A1 2663            A1PC9A2 2664            A1PC9A3 2665
            A1PC9A4 2666            A1PC9A5 2667           A1PC11_2 2668
           A1PC13_2 2669       A1PINDM 2670-2672       A1POCCM 2673-2675
  A1PTSEIM 2676-2681 (2)  A1PTEARM 2682-2688 (3)  A1PTEDUM 2689-2695 (3)
  A1PFSEIM 2696-2702 (3)  A1PFEARM 2703-2709 (3)  A1PFEDUM 2710-2716 (3)
  A1PMSEIM 2717-2722 (2)  A1PMEARM 2723-2729 (3)  A1PMEDUM 2730-2736 (3)
  M_ABSCRE 2737-2743 (3)  M_ATMOSP 2744-2750 (3)    M_BOTH 2751-2757 (3)
   M_BUSPR 2758-2764 (3)  M_CLERIC 2765-2771 (3)   M_CLIMB 2772-2778 (3)
  M_CLRDIS 2779-2785 (3)    M_COLD 2786-2792 (3)  M_COMMDA 2793-2799 (3)
   M_DATAL 2800-2806 (3)  M_DATAPR 2807-2813 (3)     M_DCP 2814-2820 (3)
    M_DEPL 2821-2827 (3)  M_ENVIRO 2828-2834 (3)  M_EYHNFT 2835-2841 (3)
     M_FIF 2842-2848 (3)       M_FMNHR 2849-2850       M_FMNYR 2851-2855
  M_FNGRDX 2856-2862 (3)  M_FRMPRC 2863-2869 (3)     M_GED 2870-2876 (3)
  M_HAZARD 2877-2883 (3)    M_HEAT 2884-2890 (3)   M_INFLU 2891-2897 (3)
  M_INTELL 2898-2904 (3)  M_MACHPR 2905-2911 (3)  M_MCHNPR 2912-2918 (3)
         M_MEN 2919-2925       M_MMNHR 2926-2927       M_MMNYR 2928-2932
  M_MNLDXT 2933-2939 (3)  M_MTRCRD 2940-2946 (3)     M_MVC 2947-2953 (3)
   M_NOISE 2954-2960 (3)  M_NUMERC 2961-2967 (3)  M_OBSPRE 2968-2974 (3)
     M_OUT 2975-2981 (3)  M_PEOPLE 2982-2988 (3)  M_PEOPRE 2989-2995 (3)
  M_PHYSDM 2996-3002 (3)  M_PRODPR 3003-3009 (3)  M_PROTPR 3010-3016 (3)
  M_PRSTPR 3017-3023 (3)     M_PUS 3024-3030 (3)   M_REACH 3031-3037 (3)
  M_REPCON 3038-3044 (3)  M_ROUTPR 3045-3051 (3)  M_SCINPR 3052-3058 (3)
     M_SEE 3059-3065 (3)     M_SJC 3066-3072 (3)  M_SPATIA 3073-3079 (3)
   M_STOOP 3080-3086 (3)  M_STRGTH 3087-3093 (3)     M_STS 3094-3100 (3)
     M_SVP 3101-3107 (3)    M_TALK 3108-3114 (3)  M_THINGS 3115-3121 (3)
   M_TRAIN 3122-3128 (3)   M_VARCH 3129-3135 (3)  M_VERBAL 3136-3142 (3)
     M_WET 3143-3149 (3)       M_WOMEN 3150-3156           MINDUS_M 3157
           PROFID_M 3158            AGRIC_M 3159           CONSTR_M 3160
            MANUF_M 3161           TRANSP_M 3162            WHOLE_M 3163
           RETAIL_M 3164           FNANCE_M 3165            BUSIN_M 3166
           PERSON_M 3167           ENTERT_M 3168           PUBADM_M 3169
           MOCCUP_M 3170             EXEC_M 3171           PROFOC_M 3172
             TECH_M 3173            SALES_M 3174            ADMIN_M 3175
             SERV_M 3176             FARM_M 3177            CRAFT_M 3178
           OPERAT_M 3179             A1PC14 3180             A1PC15 3181
              A1PD1 3182              A1PD2 3183              A1PD3 3184
              A1PD8 3185              A1PD9 3186             A1PD9A 3187
              A1PD4 3188              A1PD5 3189              A1PD6 3190
              A1PD7 3191       A1PI_MO 3192-3199       A1PI_YR 3200-3207
         A1SA1 3208-3209         A1SA2 3210-3211      A1SHLTCH 3212-3214
         A1SA3 3215-3216      A1SHLTEX 3217-3219         A1SA4 3220-3221
         A1SA5 3222-3223             A1SA6A 3224             A1SA6B 3225
             A1SA6C 3226             A1SA6D 3227             A1SA7A 3228
             A1SA7B 3229             A1SA7C 3230             A1SA7D 3231
             A1SA7E 3232             A1SA7F 3233  A1SHLOCS 3234-3240 (3)
  A1SHLOCO 3241-3244 (1)             A1SA8A 3245             A1SA8B 3246
             A1SA8C 3247             A1SA8D 3248             A1SA8E 3249
  A1SAMOLI 3250-3256 (3)             A1SA9A 3257             A1SA9B 3258
             A1SA9C 3259             A1SA9D 3260             A1SA9E 3261
             A1SA9F 3262             A1SA9G 3263             A1SA9H 3264
             A1SA9I 3265             A1SA9J 3266             A1SA9K 3267
             A1SA9L 3268             A1SA9M 3269             A1SA9N 3270
             A1SA9O 3271             A1SA9P 3272             A1SA9Q 3273
             A1SA9R 3274             A1SA9S 3275             A1SA9T 3276
             A1SA9U 3277             A1SA9V 3278             A1SA9W 3279
             A1SA9X 3280             A1SA9Y 3281             A1SA9Z 3282
            A1SA9AA 3283            A1SA9BB 3284            A1SA9CC 3285
      A1SCHRON 3286-3287           A1SCHROX 3288            A1SA10A 3289
            A1SA10B 3290            A1SA10C 3291            A1SA10D 3292
            A1SA10E 3293            A1SA10F 3294            A1SA10G 3295
            A1SA10H 3296            A1SA10I 3297            A1SA10J 3298
            A1SA10K 3299      A1SRXMED 3300-3301           A1SRXMEX 3302
            A1SA11A 3303            A1SA11B 3304            A1SA11C 3305
            A1SA11D 3306            A1SA11E 3307           A1SVITAM 3308
            A1SA12A 3309            A1SA12B 3310            A1SA12C 3311
            A1SA12D 3312            A1SA12E 3313            A1SA12F 3314
            A1SA12G 3315            A1SA12H 3316            A1SA12I 3317
  A1SSYMPT 3318-3324 (3)            A1SA13A 3325            A1SA13B 3326
            A1SA13C 3327            A1SA13D 3328            A1SA13E 3329
            A1SA13F 3330  A1SNEGAF 3331-3337 (3)        A1SA14 3338-3339
            A1SA15A 3340            A1SA15B 3341            A1SA15C 3342
            A1SA15D 3343            A1SA15E 3344            A1SA15F 3345
  A1SPOSAF 3346-3352 (3)        A1SA16 3353-3354            A1SA17A 3355
            A1SA17B 3356            A1SA17C 3357            A1SA17D 3358
            A1SA17E 3359            A1SA17F 3360            A1SA17G 3361
            A1SA17H 3362            A1SA17I 3363   A1SBADL 3364-3367 (1)
   A1SIADL 3368-3374 (3)             A1SA18 3375             A1SA19 3376
  A1SVIGOR 3377-3381 (2)             A1SA20 3382             A1SA21 3383
  A1SMODER 3384-3388 (2)            A1SA22A 3389            A1SA22B 3390
            A1SA22C 3391            A1SA22D 3392           A1SDYSPN 3393
    A1SA23 3394-3399 (2)    A1SA24 3400-3405 (2)  A1SWSTHI 3406-3412 (3)
    A1SA25 3413-3418 (2)             A1SA26 3419        A1SA27 3420-3422
    A1SBMI 3423-3429 (3)        A1SA28 3430-3432        A1SA29 3433-3435
            A1SA30A 3436            A1SA30B 3437            A1SA30C 3438
        A1SA31 3439-3441             A1SA32 3442       A1SA32A 3443-3444
        A1SA33 3445-3446       A1SA33A 3447-3448             A1SA34 3449
             A1SA35 3450       A1SA36A 3451-3452       A1SA36B 3453-3454
       A1SA36C 3455-3457       A1SA36D 3458-3459      A1SUSEMD 3460-3462
       A1SA37A 3463-3465       A1SA37B 3466-3467       A1SA37C 3468-3470
       A1SA37D 3471-3473      A1SUSEMH 3474-3476            A1SA38A 3477
      A1SA38AY 3478-3479      A1SA38AZ 3480-3482            A1SA38B 3483
      A1SA38BY 3484-3485      A1SA38BZ 3486-3487            A1SA38C 3488
      A1SA38CY 3489-3490      A1SA38CZ 3491-3492            A1SA38D 3493
      A1SA38DY 3494-3495      A1SA38DZ 3496-3497            A1SA38E 3498
      A1SA38EY 3499-3500      A1SA38EZ 3501-3502            A1SA38F 3503
      A1SA38FY 3504-3505      A1SA38FZ 3506-3507            A1SA38G 3508
      A1SA38GY 3509-3510      A1SA38GZ 3511-3512            A1SA38H 3513
      A1SA38HY 3514-3515      A1SA38HZ 3516-3517            A1SA38I 3518
      A1SA38IY 3519-3520      A1SA38IZ 3521-3522            A1SA38J 3523
      A1SA38JY 3524-3525      A1SA38JZ 3526-3528            A1SA38K 3529
      A1SA38KY 3530-3531      A1SA38KZ 3532-3534            A1SA39A 3535
            A1SA39B 3536            A1SA39C 3537            A1SA39D 3538
            A1SA39E 3539            A1SA39F 3540            A1SA39G 3541
            A1SA39H 3542            A1SA39I 3543            A1SA39J 3544
            A1SA39K 3545            A1SA39L 3546            A1SA39M 3547
            A1SA39N 3548            A1SA39O 3549            A1SA39P 3550
           A1SALTER 3551            A1SA40A 3552            A1SA40B 3553
            A1SA40C 3554            A1SA40D 3555            A1SA40E 3556
            A1SA40F 3557            A1SA40G 3558            A1SA40H 3559
            A1SA40I 3560            A1SA40J 3561             A1SA41 3562
             A1SA42 3563            A1SA43A 3564            A1SA43B 3565
            A1SA43C 3566            A1SA43D 3567            A1SA43E 3568
            A1SA44A 3569            A1SA44B 3570            A1SA44C 3571
            A1SA44D 3572            A1SA44E 3573             A1SA45 3574
             A1SA46 3575           SKIP_SB1 3576         A1SB1 3577-3578
              A1SB2 3579              A1SB3 3580              A1SB4 3581
             A1SB5A 3582             A1SB5B 3583             A1SB5C 3584
              A1SB6 3585        A1SB6A 3586-3587             A1SB6B 3588
        A1SB6C 3589-3590            A1SB7A1 3591       A1SB7A2 3592-3593
            A1SB7B1 3594       A1SB7B2 3595-3596            A1SB7C1 3597
       A1SB7C2 3598-3599            A1SB7D1 3600       A1SB7D2 3601-3602
            A1SB7E1 3603       A1SB7E2 3604-3605            A1SB7F1 3606
       A1SB7F2 3607-3608             A1SB8A 3609             A1SB8B 3610
             A1SB8C 3611              A1SB9 3612        A1SB9A 3613-3614
             A1SB10 3615            A1SB10A 3616            A1SB10B 3617
            A1SB10C 3618             A1SC1A 3619             A1SC1B 3620
             A1SC1C 3621             A1SC1D 3622             A1SC1E 3623
             A1SC1F 3624             A1SC1G 3625             A1SC1H 3626
              A1SC2 3627             A1SC3A 3628             A1SC3B 3629
             A1SC3C 3630             A1SC3D 3631             A1SC4A 3632
             A1SC4B 3633             A1SC4C 3634           SKIP_SC5 3635
             A1SC5A 3636             A1SC5B 3637             A1SC5C 3638
             A1SC5D 3639             A1SC5E 3640             A1SC5F 3641
             A1SC5G 3642             A1SC5H 3643              A1SC6 3644
              A1SD1 3645              A1SD2 3646        A1SD2A 3647-3649
             A1SD2B 3650        A1SD2C 3651-3652        A1SD2D 3653-3655
              A1SD3 3656              A1SD4 3657        A1SD4A 3658-3660
             A1SD4B 3661        A1SD4C 3662-3663        A1SD4D 3664-3666
              A1SE2 3667              A1SE3 3668              A1SE4 3669
              A1SE5 3670              A1SE6 3671              A1SE7 3672
         A1SE8 3673-3674         A1SE9 3675-3676        A1SE10 3677-3678
             A1SE11 3679             A1SE12 3680           SKIP_E13 3681
             A1SE13 3682            A1SE14A 3683            A1SE14B 3684
            A1SE14C 3685            A1SE14D 3686            A1SE14E 3687
            A1SE14F 3688            A1SE14G 3689            A1SE14H 3690
            A1SE14I 3691            A1SE14J 3692            A1SE14K 3693
            A1SE14L 3694            A1SE14M 3695    A1SEMA 3696-3702 (3)
    A1SEMD 3703-3709 (3)   A1SMMOD 3710-3713 (1)      SKIP_E15 3714-3717
             A1SE15 3718            A1SE16A 3719            A1SE16B 3720
            A1SE16C 3721            A1SE16D 3722            A1SE16E 3723
            A1SE16F 3724            A1SE16G 3725            A1SE16H 3726
            A1SE16I 3727            A1SE16J 3728            A1SE16K 3729
            A1SE16L 3730            A1SE16M 3731    A1SEFA 3732-3738 (3)
    A1SEFD 3739-3745 (3)  A1SEFMOD 3746-3749 (1)  A1SEMAPA 3750-3756 (3)
            A1SE17A 3757            A1SE17B 3758            A1SE17C 3759
            A1SE17D 3760            A1SE17E 3761            A1SE17F 3762
            A1SE17G 3763            A1SE17H 3764            A1SE17I 3765
            A1SE17J 3766            A1SE17K 3767            A1SE17L 3768
            A1SE17M 3769            A1SE17N 3770            A1SE17O 3771
       A1SE18A 3772-3773       A1SE18B 3774-3775            A1SE18C 3776
       A1SE19A 3777-3778       A1SE19B 3779-3780            A1SE19C 3781
             A1SF1A 3782             A1SF1B 3783             A1SF1C 3784
             A1SF1D 3785             A1SF1E 3786             A1SF1F 3787
             A1SF1G 3788             A1SF1H 3789             A1SF1I 3790
             A1SF1J 3791             A1SF1K 3792             A1SF1L 3793
             A1SF1M 3794             A1SF1N 3795             A1SF1O 3796
             A1SF1P 3797             A1SF1Q 3798             A1SF1R 3799
             A1SF1S 3800             A1SF1T 3801             A1SF1U 3802
             A1SF1V 3803             A1SF1W 3804             A1SF1X 3805
             A1SF1Y 3806             A1SF1Z 3807            A1SF1AA 3808
            A1SF1BB 3809            A1SF1CC 3810            A1SF1DD 3811
       A1SCTRL 3812-3814   A1SPWBA 3815-3819 (1)   A1SPWBE 3820-3824 (1)
   A1SPWBG 3825-3829 (1)   A1SPWBR 3830-3834 (1)   A1SPWBU 3835-3839 (1)
   A1SPWBS 3840-3844 (1)  A1SCONST 3845-3851 (3)  A1SMASTE 3852-3858 (3)
             A1SF2A 3859             A1SF2B 3860             A1SF2C 3861
             A1SF2D 3862             A1SF2E 3863             A1SF2F 3864
             A1SF2G 3865             A1SF2H 3866             A1SF2I 3867
             A1SF2J 3868             A1SF2K 3869    A1SMAR 3870-3873 (1)
    A1SFAM 3874-3880 (3)             A1SF3A 3881             A1SF3B 3882
             A1SF3C 3883             A1SF3D 3884             A1SF3E 3885
             A1SF3F 3886             A1SF3G 3887             A1SF3H 3888
             A1SF3I 3889             A1SF3J 3890             A1SF3K 3891
             A1SF3L 3892             A1SF3M 3893             A1SF3N 3894
             A1SF3O 3895             A1SF3P 3896             A1SF3Q 3897
             A1SF3R 3898             A1SF3S 3899             A1SF3T 3900
             A1SF3U 3901             A1SF3V 3902             A1SF3W 3903
             A1SF3X 3904             A1SF3Y 3905             A1SF3Z 3906
            A1SF3AA 3907            A1SF3BB 3908            A1SF3CC 3909
            A1SF3DD 3910            A1SF3EE 3911            A1SF3FF 3912
            A1SF3GG 3913            A1SF3HH 3914            A1SF3II 3915
            A1SF3JJ 3916            A1SF3KK 3917  A1SPERSI 3918-3924 (3)
  A1SCHANG 3925-3931 (3)  A1SREAPP 3932-3938 (3)  A1SDIREC 3939-3945 (3)
  A1STODAY 3946-3952 (3)  A1SFORSG 3953-3959 (3)  A1SINSGH 3960-3966 (3)
  A1SSUFFI 3967-3973 (3)  A1SADVIC 3974-3980 (3)             A1SF4A 3981
             A1SF4B 3982             A1SF4C 3983             A1SF4D 3984
             A1SF4E 3985             A1SF4F 3986             A1SF4G 3987
             A1SF4H 3988             A1SF4I 3989             A1SF4J 3990
             A1SF4K 3991             A1SF4L 3992             A1SF4M 3993
             A1SF4N 3994             A1SF4O 3995             A1SF4P 3996
             A1SF4Q 3997             A1SF4R 3998             A1SF4S 3999
             A1SF4T 4000             A1SF4U 4001             A1SF4V 4002
             A1SF4W 4003             A1SF4X 4004             A1SF4Y 4005
             A1SF4Z 4006            A1SF4AA 4007            A1SF4BB 4008
            A1SF4CC 4009            A1SF4DD 4010  A1SAGENC 4011-4017 (3)
  A1SAGREE 4018-4024 (3)  A1SEXTRA 4025-4031 (3)  A1SNEURO 4032-4038 (3)
   A1SCONS 4039-4045 (3)   A1SOPEN 4046-4052 (3)        A1SF5A 4053-4054
        A1SF5B 4055-4056        A1SF5C 4057-4058        A1SF5D 4059-4060
        A1SF5E 4061-4062        A1SF5F 4063-4064        A1SF5G 4065-4066
        A1SF5H 4067-4068        A1SF5I 4069-4070        A1SF5J 4071-4072
        A1SF5K 4073-4074        A1SF5L 4075-4076        A1SF5M 4077-4078
        A1SF5N 4079-4080        A1SF5O 4081-4082        A1SF5P 4083-4084
        A1SF5Q 4085-4086        A1SF5R 4087-4088             A1SF6A 4089
             A1SF6B 4090             A1SF6C 4091             A1SF7A 4092
             A1SF7B 4093             A1SF7C 4094             A1SF8A 4095
             A1SF8B 4096             A1SF8C 4097        A1SG1A 4098-4099
        A1SG1B 4100-4101        A1SG1C 4102-4103        A1SG1D 4104-4105
        A1SG1E 4106-4107        A1SG1F 4108-4109        A1SG1G 4110-4111
        A1SG1H 4112-4113        A1SG1I 4114-4115        A1SG1J 4116-4117
        A1SG1K 4118-4119        A1SG1L 4120-4121        A1SG1M 4122-4123
        A1SG1N 4124-4125        A1SG1O 4126-4127        A1SG1P 4128-4129
        A1SG1Q 4130-4131        A1SG1R 4132-4133        A1SG2A 4134-4135
        A1SG2B 4136-4137        A1SG2C 4138-4139        A1SG2D 4140-4141
        A1SG2E 4142-4143        A1SG2F 4144-4145        A1SG2G 4146-4147
        A1SG2H 4148-4149        A1SG2I 4150-4151        A1SG2J 4152-4153
        A1SG2K 4154-4155        A1SG2L 4156-4157        A1SG2M 4158-4159
        A1SG2N 4160-4161        A1SG2O 4162-4163        A1SG2P 4164-4165
        A1SG2Q 4166-4167        A1SG2R 4168-4169        A1SG2S 4170-4171
        A1SG2T 4172-4173        A1SG2U 4174-4175         A1SG3 4176-4178
         A1SG4 4179-4181         A1SG5 4182-4183         A1SG6 4184-4186
         A1SG7 4187-4189         A1SG8 4190-4192              A1SH1 4193
              A1SH2 4194              A1SH3 4195              A1SH4 4196
              A1SH5 4197              A1SH6 4198              A1SH7 4199
            A1SI1A1 4200            A1SI1A2 4201            A1SI1A3 4202
            A1SI1B1 4203            A1SI1B2 4204            A1SI1B3 4205
            A1SI1C1 4206            A1SI1C2 4207            A1SI1C3 4208
            A1SI1D1 4209            A1SI1D2 4210            A1SI1D3 4211
            A1SI1E1 4212            A1SI1E2 4213            A1SI1E3 4214
            A1SI1F1 4215            A1SI1F2 4216            A1SI1F3 4217
            A1SI1G1 4218            A1SI1G2 4219            A1SI1G3 4220
            A1SI1H1 4221            A1SI1H2 4222            A1SI1H3 4223
            A1SI1I1 4224            A1SI1I2 4225            A1SI1I3 4226
            A1SI1J1 4227            A1SI1J2 4228            A1SI1J3 4229
            A1SI1K1 4230            A1SI1K2 4231            A1SI1K3 4232
         A1SI2 4233-4234         A1SI3 4235-4236         A1SI4 4237-4238
         A1SI5 4239-4240         A1SI6 4241-4242           SKIP_SI7 4243
         A1SI7 4244-4245         A1SI8 4246-4247         A1SI9 4248-4249
        A1SI10 4250-4253        A1SI11 4254-4255            A1SI12A 4256
            A1SI12B 4257            A1SI12C 4258            A1SI12D 4259
            A1SI12E 4260            A1SI12F 4261            A1SI12G 4262
            A1SI12H 4263            A1SI12I 4264            A1SI12J 4265
       A1SI13A 4266-4267       A1SI13B 4268-4269       A1SI13C 4270-4271
       A1SI13D 4272-4273             A1SI14 4274            A1SI15A 4275
            A1SI15B 4276            A1SI15C 4277            A1SI15D 4278
        A1SI16 4279-4282        A1SI17 4283-4286        A1SI18 4287-4289
             A1SI19 4290             A1SI20 4291             A1SI21 4292
             A1SI22 4293             A1SI23 4294             A1SI24 4295
        A1SI25 4296-4298             A1SI26 4299            A1SI27A 4300
            A1SI27B 4301            A1SI27C 4302            A1SI27D 4303
            A1SI27E 4304            A1SI27F 4305            A1SI27G 4306
            A1SI27H 4307            A1SI27I 4308            A1SI27J 4309
            A1SI27K 4310            A1SI27L 4311            A1SI27M 4312
            A1SI27N 4313            A1SI27O 4314            A1SI27P 4315
      A1SPOSWF 4316-4319      A1SNEGWF 4320-4323      A1SPOSFW 4324-4327
      A1SNEGFW 4328-4331            A1SI28A 4332            A1SI28B 4333
            A1SI28C 4334            A1SI28D 4335            A1SI28E 4336
            A1SI28F 4337            A1SI28G 4338            A1SI28H 4339
            A1SI28I 4340            A1SI28J 4341            A1SI29A 4342
            A1SI29B 4343            A1SI29C 4344            A1SI29D 4345
       A1SJCSD 4346-4349       A1SJCDA 4350-4353       A1SJCDS 4354-4357
       A1SJCCS 4358-4361       A1SJCSS 4362-4365            A1SI30A 4366
            A1SI30B 4367            A1SI30C 4368            A1SI30D 4369
            A1SI30E 4370            A1SI31A 4371            A1SI31B 4372
            A1SI31C 4373            A1SI31D 4374            A1SI31E 4375
            A1SI31F 4376  A1SPIWOR 4377-4383 (3)            A1SI32A 4384
            A1SI32B 4385            A1SI32C 4386            A1SI32D 4387
            A1SI33A 4388            A1SI33B 4389            A1SI33C 4390
            A1SI34A 4391            A1SI34B 4392            A1SI34C 4393
         A1SJ1 4394-4395         A1SJ2 4396-4397         A1SJ3 4398-4399
         A1SJ4 4400-4401         A1SJ5 4402-4403              A1SJ6 4404
              A1SJ7 4405         A1SJ8 4406-4407        A1SJ8M 4408-4413
         A1SJ9 4414-4415        A1SJ9M 4416-4421     A1SHWEARN 4422-4431
        A1SJ10 4432-4433       A1SJ10M 4434-4439        A1SJ11 4440-4441
       A1SJ11M 4442-4447        A1SJ12 4448-4449       A1SJ12M 4450-4455
        A1SJ13 4456-4457       A1SJ13M 4458-4463      A1SHHTOT 4464-4469
             A1SJ14 4470        A1SJ15 4471-4472      A1SASSET 4473-4477
             A1SJ16 4478             A1SJ17 4479             A1SJ18 4480
             A1SJ19 4481         A1SK1 4482-4483         A1SK2 4484-4485
         A1SK3 4486-4487         A1SK4 4488-4489         A1SK5 4490-4491
             A1SK6A 4492             A1SK6B 4493             A1SK6C 4494
             A1SK6D 4495             A1SK6E 4496             A1SK6F 4497
  A1SGENER 4498-4501 (2)        A1SK7A 4502-4503        A1SK7B 4504-4505
        A1SK7C 4506-4507        A1SK7D 4508-4509        A1SK7E 4510-4511
        A1SK7F 4512-4513        A1SK7G 4514-4515        A1SK7H 4516-4517
        A1SK7I 4518-4519        A1SK7J 4520-4521        A1SK7K 4522-4523
        A1SK7L 4524-4525        A1SK7M 4526-4527        A1SK7N 4528-4529
        A1SK7O 4530-4531        A1SK7P 4532-4533        A1SK7Q 4534-4535
        A1SK7R 4536-4537      A1SK7A1S 4538-4539  A1SPRIOB 4540-4546 (3)
  A1SCVOB3 4547-4553 (3)  A1SCVOB5 4554-4560 (3)   A1SWKOB 4561-4567 (3)
  A1SALTRU 4568-4574 (3)        A1SK8A 4575-4577        A1SK8B 4578-4580
        A1SK8C 4581-4583        A1SK8D 4584-4586        A1SK9A 4587-4589
        A1SK9B 4590-4592        A1SK9C 4593-4595        A1SK9D 4596-4598
        A1SK9E 4599-4601       A1SK10A 4602-4604       A1SK10B 4605-4607
       A1SK10C 4608-4610       A1SK10D 4611-4613       A1SK10E 4614-4616
       A1SK10F 4617-4619  A1SPSUPE 4620-4626 (3)       A1SK11A 4627-4629
       A1SK11B 4630-4632       A1SK11C 4633-4635       A1SK11D 4636-4638
       A1SK11E 4639-4641       A1SK11F 4642-4644  A1SRSUPE 4645-4651 (3)
       A1SK12A 4652-4654       A1SK12B 4655-4657       A1SK12C 4658-4660
       A1SK12D 4661-4663       A1SK12E 4664-4666  A1SPSUPI 4667-4673 (3)
       A1SK13A 4674-4676       A1SK13B 4677-4679       A1SK13C 4680-4682
       A1SK13D 4683-4685       A1SK13E 4686-4688       A1SK13F 4689-4691
       A1SK13G 4692-4694       A1SK13H 4695-4697  A1SRSUIF 4698-4704 (3)
  A1SRSUIO 4705-4711 (3)       A1SK14A 4712-4715       A1SK14B 4716-4719
       A1SK14C 4720-4724       A1SK14D 4725-4728       A1SK14E 4729-4731
       A1SK14F 4732-4736       A1SK14G 4737-4740       A1SK14H 4741-4745
       A1SK15A 4746-4750       A1SK15B 4751-4754       A1SK15C 4755-4758
       A1SK15D 4759-4762       A1SK15E 4763-4765       A1SK15F 4766-4769
       A1SK15G 4770-4774            A1SK16A 4775            A1SK16B 4776
            A1SK16C 4777            A1SK16D 4778            A1SK17A 4779
            A1SK17B 4780            A1SK17C 4781            A1SK17D 4782
            A1SK17E 4783            A1SK17F 4784            A1SK17G 4785
            A1SK17H 4786            A1SK17I 4787            A1SK17J 4788
            A1SK17K 4789            A1SK17L 4790            A1SK17M 4791
            A1SK17N 4792            A1SK17O 4793      A1SSWBMS 4794-4798
  A1SSWBSI 4799-4803 (1)  A1SSWBAO 4804-4808 (1)  A1SSWBSC 4809-4813 (1)
  A1SSWBSA 4814-4818 (1)              A1SL1 4819              A1SL2 4820
         A1SL3 4821-4822              A1SL4 4823             A1SL5A 4824
             A1SL5B 4825             A1SL5C 4826             A1SL5D 4827
             A1SL5E 4828             A1SL5F 4829             A1SL5G 4830
             A1SL5H 4831             A1SL5I 4832             A1SL5J 4833
             A1SL5K 4834             A1SL5L 4835  A1SHOMET 4836-4842 (3)
  A1SPIHOM 4843-4849 (3)         A1SM1 4850-4851              A1SM2 4852
              A1SM3 4853              A1SM4 4854              A1SM5 4855
              A1SM6 4856              A1SM7 4857              A1SM8 4858
              A1SM9 4859      A1SFAMSO 4860-4862  A1SKINPO 4863-4869 (3)
  A1SKINNE 4870-4876 (3)        A1SM10 4877-4878             A1SM11 4879
             A1SM12 4880             A1SM13 4881             A1SM14 4882
      A1SFDSOL 4883-4885             A1SM15 4886             A1SM16 4887
             A1SM17 4888             A1SM18 4889  A1SFDSPO 4890-4896 (3)
  A1SFDSNE 4897-4903 (3)             A1SM19 4904             A1SM20 4905
           A1SM21A1 4906           A1SM21A2 4907           A1SM21A3 4908
           A1SM21B1 4909           A1SM21B2 4910           A1SM21B3 4911
           A1SM21C1 4912           A1SM21C2 4913           A1SM21C3 4914
           A1SM21D1 4915           A1SM21D2 4916           A1SM21D3 4917
           A1SM21E1 4918           A1SM21E2 4919           A1SM21E3 4920
           A1SM21F1 4921           A1SM21F2 4922           A1SM21F3 4923
           A1SM21G1 4924           A1SM21G2 4925           A1SM21G3 4926
           A1SM21H1 4927           A1SM21H2 4928           A1SM21H3 4929
           A1SM21I1 4930           A1SM21I2 4931           A1SM21I3 4932
           A1SM21J1 4933           A1SM21J2 4934           A1SM21J3 4935
           SKIP_SN1 4936         A1SN1 4937-4938         A1SN2 4939-4940
         A1SN3 4941-4942         A1SN4 4943-4944         A1SN5 4945-4946
             A1SN6A 4947             A1SN6B 4948             A1SN6C 4949
             A1SN6D 4950             A1SN6E 4951             A1SN6F 4952
  A1SPIFAM 4953-4959 (3)            A1SN7A1 4960            A1SN7A2 4961
            A1SN7B1 4962            A1SN7B2 4963            A1SN7C1 4964
            A1SN7C2 4965            A1SN7D1 4966            A1SN7D2 4967
           SKIP_SN8 4968         A1SN8 4969-4970         A1SN9 4971-4972
             A1SN10 4973             A1SN11 4974           SKIP_SP1 4975
         A1SP1 4976-4977         A1SP2 4978-4979         A1SP3 4980-4981
         A1SP4 4982-4983         A1SP5 4984-4985              A1SP6 4986
              A1SP7 4987              A1SP8 4988             A1SP9A 4989
             A1SP9B 4990             A1SP9C 4991      A1SSPDIS 4992-4995
  A1SMARRS 4996-5002 (3)             A1SP10 5003             A1SP11 5004
             A1SP12 5005             A1SP13 5006             A1SP14 5007
             A1SP15 5008             A1SP16 5009      A1SSPSOL 5010-5012
  A1SSPEMP 5013-5019 (3)             A1SP17 5020             A1SP18 5021
             A1SP19 5022             A1SP20 5023             A1SP21 5024
             A1SP22 5025  A1SSPCRI 5026-5032 (3)        A1SP23 5033-5034
        A1SP24 5035-5037        A1SP25 5038-5040             A1SP26 5041
             A1SP27 5042            A1SP28A 5043            A1SP28B 5044
            A1SP28C 5045            A1SP28D 5046      A1SSPDEC 5047-5050
             A1SP29 5051             A1SP30 5052             A1SP31 5053
        A1SP32 5054-5056        A1SP33 5057-5058            A1SP34A 5059
            A1SP34B 5060            A1SP34C 5061            A1SP34D 5062
        A1SP35 5063-5066        A1SP36 5067-5070        A1SP37 5071-5073
             A1SP38 5074         A1SQ1 5075-5076         A1SQ2 5077-5078
         A1SQ3 5079-5080         A1SQ4 5081-5082         A1SQ5 5083-5084
         A1SQ6 5085-5086              A1SQ7 5087              A1SQ8 5088
         A1SR1 5089-5090             A1SR1A 5091             A1SR2A 5092
             A1SR2B 5093             A1SR2C 5094             A1SR2D 5095
             A1SR2E 5096             A1SR2F 5097             A1SR2G 5098
             A1SR2H 5099             A1SR2I 5100              A1SR3 5101
              A1SR4 5102              A1SR5 5103              A1SR6 5104
           SKIP_SR7 5105              A1SR7 5106              A1SR8 5107
          A1SA1S1_1 5108          A1SA1S1_2 5109          A1SA1S1_3 5110
          A1SA1S1_4 5111          A1SA1S1_5 5112          A1SA1S1_6 5113
          A1SA1S1_7 5114          A1SA1S1_8 5115          A1SA1S1_9 5116
         A1SA1S1_10 5117         A1SA1S1_11 5118         A1SA1S1_12 5119
         A1SA1S1_13 5120         A1SA1S1_14 5121         A1SA1S1_15 5122
         A1SA1S1_16 5123         A1SA1S1_17 5124         A1SA1S1_18 5125
         A1SA1S1_19 5126         A1SA1S1_20 5127         A1SA1S1_21 5128
         A1SA1S1_22 5129         A1SA1S1_23 5130         A1SA1S1_24 5131
         A1SA1S1_25 5132         A1SA1S1_26 5133         A1SA1S1_27 5134
         A1SA1S1_28 5135         A1SA1S1_29 5136         A1SA1S1_30 5137
         A1SA1S1_31 5138         A1SA1S1_32 5139         A1SA1S1_33 5140
         A1SA1S1_34 5141         A1SA1S1_35 5142         A1SA1S1_36 5143
         A1SA1S1_37 5144         A1SA1S1_38 5145         A1SA1S1_39 5146
         A1SA1S1_40 5147         A1SA1S1_41 5148         A1SA1S1_42 5149
         A1SA1S1_43 5150         A1SA1S1_44 5151         A1SA1S1_45 5152
         A1SA1S1_46 5153         A1SA1S1_47 5154         A1SA1S1_48 5155
         A1SA1S1_49 5156         A1SA1S1_50 5157         A1SA1S1_51 5158
         A1SA1S1_52 5159         A1SA1S1_53 5160         A1SA1S1_54 5161
         A1SA1S1_55 5162         A1SA1S1_56 5163         A1SA1S1_57 5164
         A1SA1S1_58 5165         A1SA1S1_59 5166         A1SA1S1_60 5167
         A1SA1S1_61 5168         A1SA1S1_62 5169         A1SA1S1_63 5170
         A1SA1S1_64 5171         A1SA1S1_65 5172         A1SA1S1_66 5173
         A1SA1S1_67 5174         A1SA1S1_68 5175         A1SA1S1_69 5176
         A1SA1S1_70 5177         A1SA1S1_71 5178         A1SA1S1_72 5179
         A1SA1S1_73 5180         A1SA1S1_74 5181         A1SA1S1_75 5182
         A1SA1S1_76 5183         A1SA1S1_77 5184         A1SS2 5185-5186
              A1SS3 5187              A1SS4 5188              A1SS5 5189
            A1SS6_1 5190            A1SS6_2 5191            A1SS6_3 5192
            A1SS6_4 5193            A1SS6_5 5194              A1SS7 5195
              A1SS8 5196              A1SS9 5197             A1SS10 5198
             A1SS11 5199             A1SS12 5200       A1SS13A 5201-5203
       A1SS13B 5204-5205       A1SS13C 5206-5208       A1SS13D 5209-5211
       A1SS13E 5212-5213       A1SS13F 5214-5215       A1SS13G 5216-5217
       A1SS13H 5218-5220       A1SS13I 5221-5223       A1SS13J 5224-5226
       A1SS13K 5227-5229            A1SS14A 5230            A1SS14B 5231
            A1SS14C 5232            A1SS14D 5233            A1SS14E 5234
            A1SS14F 5235            A1SS14G 5236            A1SS14H 5237
            A1SS14I 5238           A1SDISCR 5239           A1SS15_1 5240
           A1SS15_2 5241           A1SS15_3 5242           A1SS15_4 5243
           A1SS15_5 5244           A1SS15_6 5245           A1SS15_7 5246
           A1SS15_8 5247           A1SS15_9 5248          A1SS15_10 5249
             A1SS16 5250             A1SS17 5251         A1ST1 5252-5253
         A1ST2 5254-5255         A1ST3 5256-5257         A1ST4 5258-5259
         A1ST5 5260-5261  A1SSATIS 5262-5268 (3)
   .

* SPSS VARIABLE LABELS COMMAND.

VARIABLE LABELS
   M2ID      'MIDUS 2 ID number' /
   M2FAMNUM  'MIDUS 2 Family number' /
   SAMPLMAJ  'Major sample identification (aka Sample)' /
   A1STATUS  'Completion status of M1 respondents' /
   A1PBYEAR  'Respondent''s year of birth' /
   A1PAGE_M2 'M1 age computed by subtracting Date of Birth from M1'+
     ' interview date'/
   A1PRSEX   'Gender of respondent' /
   QL2       'Men in household age 25-74' /
   QL3       'Women in household age 25-74' /
   HH_CELL   'HH composition of M/F 25-74' /
   NPRB_SEX  'Prob of selection - gender' /
   SEX_CELL  '# of selected gender in HH' /
   NPRB_WHO  'Prob of selection - w/in gender grp' /
   WHO       'Position within gender grp' /
   PROB_R    'Prob of selection on age_grp' /
   MO        'Month R selected' /
   DAY       'Day R selected' /
   RECON     'Recontact information status' /
   MO_RCVD   'Month self-admin questnr returned' /
   DY_RCVD   'Day self-admin questnr returned' /
   TOT_SIBS  'Total siblings incl Main R' /
   ZYGCAT    'Zygotic category' /
   A1PA4     'Physical health' /
   A1PA5     'Mental or emotional health' /
   A1PA6     'Self-evaluated health' /
   A1PA7     'Days work limited by health' /
   A1PA7A    'Unable to work, physical, mental' /
   A1PA7BA   '# of Days physical' /
   A1PA7BB   '# of Days mental' /
   A1PA7BC   '# of Days combination' /
   A1PA8     '# Days cut back on work due health' /
   A1PA8A    'Physical, mental or both' /
   A1PA8BA   '# of Days physical' /
   A1PA8BB   '# of Days mental' /
   A1PA8BC   '# of Days combination' /
   A1PA9     'Physical health at 16' /
   A1PA10    'Mental health at 16' /
   A1PA11    'Heart problems ever' /
   A1PA11A   'Age of heart problem' /
   A1PA11BA  'Heart attack' /
   A1PA11BB  'Angina' /
   A1PA11BC  'High blood pressure' /
   A1PA11BD  'Valve disease/mitrovalve prolap' /
   A1PA11BE  'Hole in heart/atrial septal dfct' /
   A1PA11BF  'Blocked/closed artery/corony art' /
   A1PA11BG  'Irregular/fast heart beat/arrhyt' /
   A1PA11BH  'Heart murmur' /
   A1PA11BI  'Heart failure/congestive heart' /
   A1PA11BJ  'Other_heart trouble' /
   A1PA11BK  'None_heart trouble' /
   A1PA11C   'Hospitalize due to heart prob' /
   A1PA11D   'Treating heart problem now' /
   A1PA12    'Heart attack ever' /
   A1PA12A   'Year of heart attack' /
   A1PA13    'Self-evaluated heart attack risk' /
   A1PA13A   'How much higher heart att risk' /
   A1PA13B   'How much lower heart att risk' /
   A1PHRTRS  'Unfolding of heart risk question' /
   A1PHRTDX  'High risk - heart attack' /
   A1PA14    '# Biological family heart attacks' /
   A1PA15    'Worry about heart condition' /
   A1PA16    'Major heart procedure ever' /
   A1PA17    'Major heart procedure in family' /
   A1PA18    'Treat heart w bypass or medictn' /
   A1PA19    'How sure choice of bypass or med' /
   A1PA20    'Treat heart w bypass or exercise' /
   A1PA21    'How sure choice of bypass or exer' /
   A1PA22    'Accept or seek 2nd opn heart srgy' /
   A1PA22A   'How sure about 2nd opn heart sgy' /
   A1PA23    'Chest pain walk uphill or hurry' /
   A1PA24    'Chest pain walk level surface' /
   A1PA25    'Chest pain stop or slow you down' /
   A1PA26    'Chest pain go away at stand still' /
   A1PA27    'How soon pain away at stand still' /
   A1PA28    'Where do you get chest pain' /
   A1PANGIN  'Angina, chestpain fm card ischemia' /
   A1PA29    'Severe chest pain ever' /
   A1PA29A   'How many times severe chest pain' /
   A1PA29B   'Talk to doctor about chest pain' /
   A1PA29CA  'Heart attack' /
   A1PA29CB  'Angina' /
   A1PA29CC  'High blood pressure' /
   A1PA29CD  'Valve disease/mitrovalve prolap' /
   A1PA29CE  'Hole in heart/atrial septal dfct' /
   A1PA29CF  'Blocked/closed artery/corony art' /
   A1PA29CG  'Irregular/fast heart beat/arrhyth' /
   A1PA29CH  'Heart murmur' /
   A1PA29CI  'Heart failure/congestive heart' /
   A1PA29CJ  'Other_chest pain' /
   A1PA29CK  'None_chest pain' /
   A1PA33    'Taking Rx meds for blood pressure' /
   A1PA34    'Other treatments for BP' /
   A1PA30    '# of Months since last BP test' /
   A1PA31    'General results of BP test' /
   A1PA32S   'Blood pressure reading high' /
   A1PA32D   'Blood pressure reading low' /
   A1PA36    'Have you ever had cancer' /
   A1PA37    'Risk of getting cancer' /
   A1PA37A   'How much higher cancer risk' /
   A1PA37B   'How much lower cancer risk' /
   A1PCACRS  'Unfolding of cancer risk question' /
   A1PCACDX  'High risk - cancer' /
   A1PA38    'Using treatments for cancer' /
   A1PA39A   'Breast cancer' /
   A1PA39B   'Cervical cancer' /
   A1PA39C   'Colon cancer' /
   A1PA39D   'Lung cancer' /
   A1PA39E   'Lymphoma or leukemia' /
   A1PA39F   'Ovarian cancer' /
   A1PA39G   'Prostate cancer' /
   A1PA39H   'Skin cancer / melanoma' /
   A1PA39I   'Uterine cancer' /
   A1PA39J   'Other cancer' /
   A1PA41    'Age smoked first cigarette' /
   A1PA40    'Smoked cigarettes ever' /
   A1PA42    'Age begin smoke regularly' /
   A1PA43    'Smoke cigarettes regularly now' /
   A1PA44    'Ave # cigs per day_cur smoker' /
   A1PA45    'Ever tried to quit smoking' /
   A1PA46    'Age when last smoked regularly' /
   A1PA47    'Ave # cigs per day_ex-smoker' /
   A1PA52    'Age of 1st alcoholic drink (A52a)' /
   A1PA53    'Time when drink 3+ days a week' /
   A1PA53A   'Age began drinking regularly' /
   A1PA54    'Year drank most, how much' /
   A1PA54A   'How much drink per month' /
   A1PA55    'How many drinks drunk' /
   A1PA56    'Age last drank often' /
   A1PA57    'Felt sad 2+ weeks' /
   A1PA58    'Length sad mood lasted' /
   A1PA59    'How often being sad' /
   A1PA60    'Lose interest in most things' /
   A1PA61    'Tired or low energy when sad' /
   A1PA62    'Lose appetite when sad' /
   A1PA62A   'Appetite increase when sad' /
   A1PA63    'Trouble falling asleep when sad' /
   A1PA63A   'How often sleep trouble when sad' /
   A1PA64    'Trouble concentrating when sad' /
   A1PA65    'Feel down or worthless when sad' /
   A1PA66    'Think a lot about death when sad' /
   A1PDEPAF  '# of Yes resp to QA60-QA66' /
   A1PDEPAD  'Depression diag Q58 and Q59' /
   A1PA67    '# of Weeks feeling sad' /
   A1PA68MO  'Most recent month sad (A68)' /
   A1PA68YR  'Most recent year sad (A68a)' /
   A1PA69    'Lost interest in pleasures' /
   A1PA70    'Loss of interest last' /
   A1PA71    'How often loss of interest' /
   A1PA72    'Feel more tired when lose int' /
   A1PA73    'Lose appetite when lose int' /
   A1PA73A   'Appetite increase when lose int' /
   A1PA74    'Trouble falling asleep-lose int' /
   A1PA74A   'How often trouble sleep-lose int' /
   A1PA75    'Trouble concentrating - lose int' /
   A1PA76    'Feel down and worthless -lose int' /
   A1PA77    'Think about death when lose int' /
   A1PANHED  '# of Yes resp to QA72-QA77' /
   A1PANHDX  'Depression diag Q70 and Q71' /
   A1PDEPRE  'Depression codes - continous' /
   A1PDEPDX  'Depression codes - dichotomous' /
   A1PA78    '# of Weeks of lost interest' /
   A1PA79MO  'Recent month - lost int (A79)' /
   A1PA79YR  'Recent year - lose int (A79a)' /
   A1PA80    'Relatively worry' /
   A1PA80A   'How much more worry' /
   A1PA81    'How often worry' /
   A1PA81A   'Length worry lasts' /
   A1PA82    'Worry about 1 or 2+' /
   A1PA82A   'Different worries on mind' /
   A1PA83    'Worry things not likely to happen' /
   A1PA83A   'Worry things not serious' /
   A1PA84    'Worry so strong' /
   A1PA84A   'Difficult to control worry' /
   A1PA85A   'How often restless due to worry' /
   A1PA85B   'How often keyed up due to worry' /
   A1PA85C   'How often irritable due to worry' /
   A1PA85D   'Trouble falling asleep due worry' /
   A1PA85E   'Trouble staying asleep due worry' /
   A1PA85F   'Trouble concentrating due worry' /
   A1PA85G   'Trouble remembering due to worry' /
   A1PA85H   'Low on energy due to worry' /
   A1PA85I   'Tire easily due to worry' /
   A1PA85J   'Sore or aching due to worry' /
   A1PANXIE  'Generalized anxiety disorder - contin' /
   A1PANXTD  'Generalized anxiety disorder - dichot' /
   A1PA86    'Worry interfere with life' /
   A1PA87    'Anxiety attack' /
   A1PA87A   'Heart race or felt faint' /
   A1PA88    '# of Attacks past 12 mo' /
   A1PA89    'Attacks happen when danger or ctr' /
   A1PA90A   'Heart pound during attack' /
   A1PA90B   'Chest or stomach pain - attack' /
   A1PA90C   'Sweat during attack' /
   A1PA90D   'Tremble during attack' /
   A1PA90E   'Hot flashes during attack' /
   A1PA90F   'Things seem unreal during attack' /
   A1PPANIC  'Panic attack - continuous' /
   A1PPANDX  'Panic attack - dichotomous' /
   A1PB1     'R education level' /
   A1PMQB1   'R education categories 1' /
   A1PEDUCP  'R education categories 2' /
   A1PEDU    'R education - dichotomous' /
   A1PSXEDAG 'Sex/Edu/Age category of R' /
   A1PB2     'Age when first worked' /
   A1PB3A    'Working now' /
   A1PB3B    'Self-employed' /
   A1PB3C    'Looking for work/unemployed' /
   A1PB3D    'Temporarily laid off' /
   A1PB3E    'Retired' /
   A1PB3F    'Homemaker' /
   A1PB3G    'Full-time student' /
   A1PB3H    'Part-time student' /
   A1PB3I    'Maternity or sick leave' /
   A1PB3J    'Permanently disabled' /
   A1PB3K    'Other' /
   A1PB5     '# of Weeks since last job' /
   A1PB4A    'Fired' /
   A1PB4B    'Laid off' /
   A1PB4C    'Plant/company closed' /
   A1PB4D    'Quit' /
   A1PB4E    'Retired' /
   A1PB4F    'Work force reduction' /
   A1PB4G    'Other' /
   A1PB6     'Working for pay now' /
   A1PB8_2   'Do you supervise anyone - curnt' /
   A1PB8_3   '# of People supervised - curnt' /
   A1PB10    'Employee or self-employed - curnt' /
   A1POCC    'Respondent current industry' /
   A1PIND    'Respondent current occupation' /
   A1PTSEI   'Respon current - SEI 80 - total' /
   A1PTEARN  'Respon current - logit all earn >= 14.30' /
   A1PTEDU   'Respon current - logit all educ some col' /
   A1PFSEI   'Respon current - SEI 80 - female' /
   A1PFEARN  'Respon current - logit wmn earn >= 14.30' /
   A1PFEDU   'Respon current - logit wmn educ some col' /
   A1PMSEI   'Respon current - SEI 80 - male' /
   A1PMEARN  'Respon current - logit men earn >= 14.30' /
   A1PMEDU   'Respon current - logit men educ some col' /
   R_ABSCRE  'Respon current - abstract and creative' /
   R_ATMOSP  'Respon current - atmospheric conditions' /
   R_BOTH    'Respon current - prfrmd in and outdoor' /
   R_BUSPR   'Respon current - business cntct people' /
   R_CLERIC  'Respon current - clerical perception' /
   R_CLIMB   'Respon current - climbing or balancing' /
   R_CLRDIS  'Respon current - color discrimination' /
   R_COLD    'Respon current - extreme cold' /
   R_COMMDA  'Respon current - communication of data' /
   R_DATAL   'Respon current - cmplxty - rltn to data' /
   R_DATAPR  'Respon current - data preference' /
   R_DCP     'Respon current - adapt accept rspnsblty' /
   R_DEPL    'Respon current - adapt people instrctn' /
   R_ENVIRO  'Respon current - environment contition' /
   R_EYHNFT  'Respon current - eye hand foot coordntn' /
   R_FIF     'Respon current - adapt situ feel - view' /
   R_FMNHR   'Respon current - female mean hrly earn' /
   R_FMNYR   'Respon current - female mean annl earn' /
   R_FNGRDX  'Respon current - finger dexterity' /
   R_FRMPRC  'Respon current - form perception' /
   R_GED     'Respon current - gnrl education devlpmt' /
   R_HAZARD  'Respon current - hazards' /
   R_HEAT    'Respon current - extreme heat' /
   R_INFLU   'Respon current - adapt influence ideas' /
   R_INTELL  'Respon current - intelligence aptitude' /
   R_MACHPR  'Respon current - activities w machines' /
   R_MCHNPR  'Respon current - machine preference' /
   R_MEN     'Respon current - men in occupation 1979' /
   R_MMNHR   'Respon current - male mean hrly earn' /
   R_MMNYR   'Respon current - male mean annl earn' /
   R_MNLDXT  'Respon current - manual dexterity' /
   R_MTRCRD  'Respon current - motor coordination' /
   R_MVC     'Respon current - adapt general measures' /
   R_NOISE   'Respon current - noise or vibrations' /
   R_NUMERC  'Respon current - numerical aptitude' /
   R_OBSPRE  'Respon current - activities w objects' /
   R_OUT     'Respon current - performed outdoors' /
   R_PEOPLE  'Respon current - complexity w people' /
   R_PEOPRE  'Respon current - work for presumed good' /
   R_PHYSDM  'Respon current - physical demands' /
   R_PRODPR  'Respon current - productive preference' /
   R_PROTPR  'Respon current - tngbl productive satis' /
   R_PRSTPR  'Respon current - prestige of others' /
   R_PUS     'Respon current - adapt perform stress' /
   R_REACH   'Respon current - reaching handling feel' /
   R_REPCON  'Respon current - adapt repetative work' /
   R_ROUTPR  'Respon current - routine activities' /
   R_SCINPR  'Respon current - scientific activities' /
   R_SEE     'Respon current - seeing' /
   R_SJC     'Respon current - adapt general judgemtl' /
   R_SPATIA  'Respon current - spatial aptitude' /
   R_STOOP   'Respon current - stoop kneel and crawl' /
   R_STRGTH  'Respon current - strength' /
   R_STS     'Respon current - adapt to situat limits' /
   R_SVP     'Respon current - specific vocation prep' /
   R_TALK    'Respon current - talking or hearing' /
   R_THINGS  'Respon current - complexity of things' /
   R_TRAIN   'Respon current - training times' /
   R_VARCH   'Respon current - adapt multiple duties' /
   R_VERBAL  'Respon current - verbal aptitude' /
   R_WET     'Respon current - wet and humid conditn' /
   R_WOMEN   'Respon current - women in occupatn 1979' /
   MINDUS_R  'Resp cur 1 if missing industry code' /
   PROFID_R  'Resp cur professional / related srvcs' /
   AGRIC_R   'Resp cur agri, forestry, fishry, mining' /
   CONSTR_R  'Resp cur construction' /
   MANUF_R   'Resp cur manufacturing' /
   TRANSP_R  'Resp cur transp, comm, public utility' /
   WHOLE_R   'Resp cur wholesale trade' /
   RETAIL_R  'Resp cur retail trade' /
   FNANCE_R  'Resp cur finance, insurance, real est' /
   BUSIN_R   'Resp cur business and repair services' /
   PERSON_R  'Resp cur rersonal services' /
   ENTERT_R  'Resp cur entertainment, recreation serv' /
   PUBADM_R  'Resp cur public administration' /
   MOCCUP_R  'Resp cur 1 if missing occupation code' /
   EXEC_R    'Resp cur executive, administ, managerl' /
   PROFOC_R  'Resp cur professional specialty' /
   TECH_R    'Resp cur technicians / related support' /
   SALES_R   'Resp cur sales occupations' /
   ADMIN_R   'Resp cur admin supprot, incld clerical' /
   SERV_R    'Resp cur service occupations' /
   FARM_R    'Resp cur farming, forestry, fishing' /
   CRAFT_R   'Resp cur precision prod, craft, repair' /
   OPERAT_R  'Resp cur operator, laborer, military' /
   A1PB11    '# Hours worked per week - curnt' /
   A1PB11A   'Hours worked at other job - curnt' /
   A1PB12    'Work away from home overnight - curnt' /
   A1PB14_2  'Did you supervise anyone - last' /
   A1PB14_3  '# People supervised - last' /
   A1PB16    'Employee or self-employed - last' /
   A1POCP    'Respondent last industry' /
   A1PINDP   'Respondent last occupation' /
   A1PTSEIP  'Respon last - SEI 80 - total' /
   A1PTEARP  'Respon last - logit all earn >= 14.30' /
   A1PTEDUP  'Respon last - logit all educ some col' /
   A1PFSEIP  'Respon last - SEI 80 - female' /
   A1PFEARP  'Respon last - logit wmn earn >= 14.30' /
   A1PFEDUP  'Respon last - logit wmn educ some col' /
   A1PMSEIP  'Respon last - SEI 80 - male' /
   A1PMEARP  'Respon last - logit men earn >= 14.30' /
   A1PMEDUP  'Respon last - logit men educ some col' /
   L_ABSCRE  'Respon last - abstract and creative' /
   L_ATMOSP  'Respon last - atmospheric conditions' /
   L_BOTH    'Respon last - prfrmd in and outdoor' /
   L_BUSPR   'Respon last - business cntct people' /
   L_CLERIC  'Respon last - clerical perception' /
   L_CLIMB   'Respon last - climbing or balancing' /
   L_CLRDIS  'Respon last - color discrimination' /
   L_COLD    'Respon last - extreme cold' /
   L_COMMDA  'Respon last - communication of data' /
   L_DATAL   'Respon last - cmplxty - rltn to data' /
   L_DATAPR  'Respon last - data preference' /
   L_DCP     'Respon last - adapt accept rspnsblty' /
   L_DEPL    'Respon last - adapt people instrctn' /
   L_ENVIRO  'Respon last - environment contition' /
   L_EYHNFT  'Respon last - eye hand foot coordntn' /
   L_FIF     'Respon last - adapt situ feel - view' /
   L_FMNHR   'Respon last - female mean hrly earn' /
   L_FMNYR   'Respon last - female mean annl earn' /
   L_FNGRDX  'Respon last - finger dexterity' /
   L_FRMPRC  'Respon last - form perception' /
   L_GED     'Respon last - gnrl educational devlpmt' /
   L_HAZARD  'Respon last - hazards' /
   L_HEAT    'Respon last - extreme heat' /
   L_INFLU   'Respon last - adapt influence ideas' /
   L_INTELL  'Respon last - intelligence aptitude' /
   L_MACHPR  'Respon last - activities w machines' /
   L_MCHNPR  'Respon last - machine preference' /
   L_MEN     'Respon last - men in occupation 1979' /
   L_MMNHR   'Respon last - male mean hrly earn' /
   L_MMNYR   'Respon last - male mean annl earn' /
   L_MNLDXT  'Respon last - manual dexterity' /
   L_MTRCRD  'Respon last - motor coordination' /
   L_MVC     'Respon last - adapt general measures' /
   L_NOISE   'Respon last - noise or vibrations' /
   L_NUMERC  'Respon last - numerical aptitude' /
   L_OBSPRE  'Respon last - activities w objects' /
   L_OUT     'Respon last - performed outdoors' /
   L_PEOPLE  'Respon last - complexity w people' /
   L_PEOPRE  'Respon last - work for presumed good' /
   L_PHYSDM  'Respon last - physical demands' /
   L_PRODPR  'Respon last - productive preference' /
   L_PROTPR  'Respon last - tngbl productive satis' /
   L_PRSTPR  'Respon last - prestige of others' /
   L_PUS     'Respon last - adapt perform stress' /
   L_REACH   'Respon last - reaching handling feel' /
   L_REPCON  'Respon last - adapt repetative work' /
   L_ROUTPR  'Respon last - routine activities' /
   L_SCINPR  'Respon last - scientific activities' /
   L_SEE     'Respon last - seeing' /
   L_SJC     'Respon last - adapt general judgemtl' /
   L_SPATIA  'Respon last - spatial aptitude' /
   L_STOOP   'Respon last - stoop kneel and crawl' /
   L_STRGTH  'Respon last - strength' /
   L_STS     'Respon last - adapt to situat limits' /
   L_SVP     'Respon last - specific vocation prep' /
   L_TALK    'Respon last - talking or hearing' /
   L_THINGS  'Respon last - complexity of things' /
   L_TRAIN   'Respon last - training times' /
   L_VARCH   'Respon last - adapt multiple duties' /
   L_VERBAL  'Respon last - verbal aptitude' /
   L_WET     'Respon last - wet and humid conditn' /
   L_WOMEN   'Respon last - women in occupatn 1979' /
   MINDUS_L  'Resp lst 1 if missing industry code' /
   PROFID_L  'Resp lst professional / related srvcs' /
   AGRIC_L   'Resp lst agri, forestry, fishry, mining' /
   CONSTR_L  'Resp lst construction' /
   MANUF_L   'Resp lst manufacturing' /
   TRANSP_L  'Resp lst transp, comm, public utility' /
   WHOLE_L   'Resp lst wholesale trade' /
   RETAIL_L  'Resp lst retail trade' /
   FNANCE_L  'Resp lst finance, insurance, real est' /
   BUSIN_L   'Resp lst business and repair services' /
   PERSON_L  'Resp lst personal services' /
   ENTERT_L  'Resp lst entertainment, recreation serv' /
   PUBADM_L  'Resp lst public administration' /
   MOCCUP_L  'Resp lst 1 if missing occupation code' /
   EXEC_L    'Resp lst executive, administ, managerl' /
   PROFOC_L  'Resp lst professional specialty' /
   TECH_L    'Resp lst technicians / related support' /
   SALES_L   'Resp lst sales occupations' /
   ADMIN_L   'Resp lst admin supprot, incld clerical' /
   SERV_L    'Resp lst service occupations' /
   FARM_L    'Resp lst farming, forestry, fishing' /
   CRAFT_L   'Resp lst precision prod, craft, repair' /
   OPERAT_L  'Resp lst operator, laborer, military' /
   A1PB17    'Marital status' /
   A1PB19    '# of Times married' /
   A1PB18MO  'Month of marriage' /
   A1PB18YR  'Year of marriage' /
   A1PB20    'How 1st marriage ended' /
   A1PB20AMO 'Month 1st spouse died' /
   A1PB20AYR 'Year 1st spouse died' /
   A1PB20BMO 'Month stop living w/ spouse' /
   A1PB20BYR 'Year stop living w/ spouse' /
   A1PB21MO  'Month recent marriage began' /
   A1PB21YR  'Year recent marriage began' /
   A1PB22MO  'Month stop living rcnt spouse' /
   A1PB22YR  'Year stop living rcnt spouse' /
   A1PB23MO  'Month recent spouse died' /
   A1PB23YR  'Year recent spouse died' /
   A1PB24    'Living with someone' /
   A1PB25    '# of Weeks living together' /
   A1PPARTN  'R married or living w/ someone' /
   A1PB26    'Spouse/Partner birth year' /
   A1PSAGE   'Age of spouse/partner' /
   A1PB27    'Spouse/Partner education level' /
   A1PMQB27  'S/P education categories' /
   A1PSEDU   'S/P education - dichotomous' /
   A1PSSXEDAG 'Sex/Edu/Age category of S/P' /
   A1PB28A   'Working now - S/P' /
   A1PB28B   'Self-employed - S/P' /
   A1PB28C   'Looking for work/unemployed - S/P' /
   A1PB28D   'Temporarily laid off - S/P' /
   A1PB28E   'Retired - S/P' /
   A1PB28F   'Homemaker - S/P' /
   A1PB28G   'Full-time student - S/P' /
   A1PB28H   'Part-time student - S/P' /
   A1PB28I   'Maternity or sick leave - S/P' /
   A1PB28J   'Permanently disabled - S/P' /
   A1PB28K   'Other - S/P' /
   A1PB30    '# of Weeks S/P last had job' /
   A1PB29A   'Fired - S/P' /
   A1PB29B   'Laid off - S/P' /
   A1PB29C   'Plant/company closed - S/P' /
   A1PB29D   'Quit - S/P' /
   A1PB29E   'Retired - S/P' /
   A1PB29F   'Work force reduction - S/P' /
   A1PB29G   'Other - S/P' /
   A1PB31    'S/P work for pay now' /
   A1PB33_2  'S/P supervise anyone' /
   A1PB34_2  'S/P employee or self-employed' /
   A1POCCS   'Spouse/Partner industry' /
   A1PINDS   'Spouse/Partner occupation' /
   A1PTSEIS  'S/P - SEI 80 - total' /
   A1PTEARS  'S/P - logit all earn >= 14.30' /
   A1PTEDUS  'S/P - logit all educ some col' /
   A1PFSEIS  'S/P - SEI 80 - female' /
   A1PFEARS  'S/P - logit wmn earn >= 14.30' /
   A1PFEDUS  'S/P - logit wmn educ some col' /
   A1PMSEIS  'S/P - SEI 80 - male' /
   A1PMEARS  'S/P - logit men earn >= 14.30' /
   A1PMEDUS  'S/P - logit men educ some col' /
   S_ABSCRE  'S/P - abstract and creative' /
   S_ATMOSP  'S/P - atmospheric conditions' /
   S_BOTH    'S/P - prfrmd in and outdoor' /
   S_BUSPR   'S/P - business cntct people' /
   S_CLERIC  'S/P - clerical perception' /
   S_CLIMB   'S/P - climbing or balancing' /
   S_CLRDIS  'S/P - color discrimination' /
   S_COLD    'S/P - extreme cold' /
   S_COMMDA  'S/P - communication of data' /
   S_DATAL   'S/P - cmplxty - rltn to data' /
   S_DATAPR  'S/P - data preference' /
   S_DCP     'S/P - adapt accept rspnsblty' /
   S_DEPL    'S/P - adapt people instrctn' /
   S_ENVIRO  'S/P - environment contition' /
   S_EYHNFT  'S/P - eye hand foot coordntn' /
   S_FIF     'S/P - adapt situ feel - view' /
   S_FMNHR   'S/P - female mean hrly earn' /
   S_FMNYR   'S/P - female mean annl earn' /
   S_FNGRDX  'S/P - finger dexterity' /
   S_FRMPRC  'S/P - form perception' /
   S_GED     'S/P - gnrl education devlpmt' /
   S_HAZARD  'S/P - hazards' /
   S_HEAT    'S/P - extreme heat' /
   S_INFLU   'S/P - adapt influence ideas' /
   S_INTELL  'S/P - intelligence aptitude' /
   S_MACHPR  'S/P - activities w machines' /
   S_MCHNPR  'S/P - machine preference' /
   S_MEN     'S/P - men in occupation 1979' /
   S_MMNHR   'S/P - male mean hrly earn' /
   S_MMNYR   'S/P - male mean annl earn' /
   S_MNLDXT  'S/P - manual dexterity' /
   S_MTRCRD  'S/P - motor coordination' /
   S_MVC     'S/P - adapt general measures' /
   S_NOISE   'S/P - noise or vibrations' /
   S_NUMERC  'S/P - numerical aptitude' /
   S_OBSPRE  'S/P - activities w objects' /
   S_OUT     'S/P - performed outdoors' /
   S_PEOPLE  'S/P - complexity w people' /
   S_PEOPRE  'S/P - work for presumed good' /
   S_PHYSDM  'S/P - physical demands' /
   S_PRODPR  'S/P - productive preference' /
   S_PROTPR  'S/P - tngbl productive satis' /
   S_PRSTPR  'S/P - prestige of others' /
   S_PUS     'S/P - adapt perform stress' /
   S_REACH   'S/P - reaching handling feel' /
   S_REPCON  'S/P - adapt repetative work' /
   S_ROUTPR  'S/P - routine activities' /
   S_SCINPR  'S/P - scientific activities' /
   S_SEE     'S/P - seeing' /
   S_SJC     'S/P - adapt general judgemtl' /
   S_SPATIA  'S/P - spatial aptitude' /
   S_STOOP   'S/P - stoop kneel and crawl' /
   S_STRGTH  'S/P - strength' /
   S_STS     'S/P - adapt to situat limits' /
   S_SVP     'S/P - specific vocation prep' /
   S_TALK    'S/P - talking or hearing' /
   S_THINGS  'S/P - complexity of things' /
   S_TRAIN   'S/P - training times' /
   S_VARCH   'S/P - adapt multiple duties' /
   S_VERBAL  'S/P - verbal aptitude' /
   S_WET     'S/P - wet and humid conditn' /
   S_WOMEN   'S/P - women in occupatn 1979' /
   MINDUS_S  'S/P 1 if missing industry code' /
   PROFID_S  'S/P professional / related srvcs' /
   AGRIC_S   'S/P agri, forestry, fishry, mining' /
   CONSTR_S  'S/P construction' /
   MANUF_S   'S/P manufacturing' /
   TRANSP_S  'S/P transp, comm, public utility' /
   WHOLE_S   'S/P wholesale trade' /
   RETAIL_S  'S/P retail trade' /
   FNANCE_S  'S/P finance, insurance, real est' /
   BUSIN_S   'S/P business and repair services' /
   PERSON_S  'S/P personal services' /
   ENTERT_S  'S/P entertainment, recreation serv' /
   PUBADM_S  'S/P public administration' /
   MOCCUP_S  'S/P 1 if missing occupation code' /
   EXEC_S    'S/P executive, administ, managerl' /
   PROFOC_S  'S/P professional specialty' /
   TECH_S    'S/P technicians / related support' /
   SALES_S   'S/P sales occupations' /
   ADMIN_S   'S/P admin supprot, incld clerical' /
   SERV_S    'S/P service occupations' /
   FARM_S    'S/P farming, forestry, fishing' /
   CRAFT_S   'S/P precision prod, craft, repair' /
   OPERAT_S  'S/P operator, laborer, military' /
   A1PB35    '# Biological children' /
   CNT_BK    '# Biological children in QB36' /
   A1PB36A1  'Gender child 1' /
   A1PB36B1  'Year child 1 born' /
   A1PB36C1  'Month child 1 born' /
   A1PB36A2  'Gender child 2' /
   A1PB36B2  'Year child 2 born' /
   A1PB36C2  'Month child 2 born' /
   A1PB36A3  'Gender child 3' /
   A1PB36B3  'Year child 3 born' /
   A1PB36C3  'Month child 3 born' /
   A1PB36A4  'Gender child 4' /
   A1PB36B4  'Year child 4 born' /
   A1PB36C4  'Month child 4 born' /
   A1PB36A5  'Gender child 5' /
   A1PB36B5  'Year child 5 born' /
   A1PB36C5  'Month child 5 born' /
   A1PB36A6  'Gender child 6' /
   A1PB36B6  'Year child 6 born' /
   A1PB36C6  'Month child 6 born' /
   A1PB36A7  'Gender child 7' /
   A1PB36B7  'Year child 7 born' /
   A1PB36C7  'Month child 7 born' /
   A1PB36A8  'Gender child 8' /
   A1PB36B8  'Year child 8 born' /
   A1PB36C8  'Month child 8 born' /
   A1PB36A9  'Gender child 9' /
   A1PB36B9  'Year child 9 born' /
   A1PB36C9  'Month child 9 born' /
   A1PB36A10 'Gender child 10' /
   A1PB36B10 'Year child 10 born' /
   A1PB36C10 'Month child 10 born' /
   A1PBAG1   'Age of biological child 1' /
   A1PBAG2   'Age of biological child 2' /
   A1PBAG3   'Age of biological child 3' /
   A1PBAG4   'Age of biological child 4' /
   A1PBAG5   'Age of biological child 5' /
   A1PBAG6   'Age of biological child 6' /
   A1PBAG7   'Age of biological child 7' /
   A1PBAG8   'Age of biological child 8' /
   A1PBAG9   'Age of biological child 9' /
   A1PBAG10  'Age of biological child 10' /
   A1PB37    '# of Non-biological children' /
   CNT_NBK   '# Non-biological children in QB37' /
   A1PB37A1  'Gender NB child 1' /
   A1PB37B1  'Relation to NB child 1' /
   A1PB37C1  'Year NB child 1 born' /
   A1PB37D1  'Month NB child 1 born' /
   A1PB37A2  'Gender NB child 2' /
   A1PB37B2  'Relation to NB child 2' /
   A1PB37C2  'Year NB child 2 born' /
   A1PB37D2  'Month NB child 2 born' /
   A1PB37A3  'Gender NB child 3' /
   A1PB37B3  'Relation to NB child 3' /
   A1PB37C3  'Year NB child 3 born' /
   A1PB37D3  'Month NB child 3 born' /
   A1PB37A4  'Gender NB child 4' /
   A1PB37B4  'Relation to NB child 4' /
   A1PB37C4  'Year NB child 4 born' /
   A1PB37D4  'Month NB child 4 born' /
   A1PB37A5  'Gender NB child 5' /
   A1PB37B5  'Relation to NB child 5' /
   A1PB37C5  'Year NB child 5 born' /
   A1PB37D5  'Month NB child 5 born' /
   A1PB37A6  'Gender NB child 6' /
   A1PB37B6  'Relation to NB child 6' /
   A1PB37C6  'Year NB child 6 born' /
   A1PB37D6  'Month NB child 6 born' /
   A1PB37A7  'Gender NB child 7' /
   A1PB37B7  'Relation to NB child 7' /
   A1PB37C7  'Year NB child 7 born' /
   A1PB37D7  'Month NB child 7 born' /
   A1PB37A8  'Gender NB child 8' /
   A1PB37B8  'Relation to NB child 8' /
   A1PB37C8  'Year NB child 8 born' /
   A1PB37D8  'Month NB child 8 born' /
   A1PB37A9  'Gender NB child 9' /
   A1PB37B9  'Relation to NB child 9' /
   A1PB37C9  'Year NB child 9 born' /
   A1PB37D9  'Month NB child 9 born' /
   A1PB37A10 'Gender NB child 10' /
   A1PB37B10 'Relation to NB child 10' /
   A1PB37C10 'Year NB child 10 born' /
   A1PB37D10 'Month NB child 10 born' /
   A1PBAO1   'Age of NB child 1' /
   A1PBAO2   'Age of NB child 2' /
   A1PBAO3   'Age of NB child 3' /
   A1PBAO4   'Age of NB child 4' /
   A1PBAO5   'Age of NB child 5' /
   A1PBAO6   'Age of NB child 6' /
   A1PBAO7   'Age of NB child 7' /
   A1PBAO8   'Age of NB child 8' /
   A1PBAO9   'Age of NB child 9' /
   A1PBAO10  'Age of NB child 10' /
   A1PCHILD0 'Number of children under age 1' /
   A1PCHILD1 'Number of children aged 1' /
   A1PCHILD2 'Number of children aged 2' /
   A1PCHILD3 'Number of children aged 3' /
   A1PCHILD4 'Number of children aged 4' /
   A1PCHILD5 'Number of children aged 5' /
   A1PCHILD6 'Number of children aged 6' /
   A1PCHILD7 'Number of children aged 7' /
   A1PCHILD8 'Number of children aged 8' /
   A1PCHILD9 'Number of children aged 9' /
   A1PCHILD10 'Number of children aged 10' /
   A1PCHILD11 'Number of children aged 11' /
   A1PCHILD12 'Number of children aged 12' /
   A1PCHILD13 'Number of children aged 13' /
   A1PCHILD14 'Number of children aged 14' /
   A1PCHILD15 'Number of children aged 15' /
   A1PCHILD16 'Number of children aged 16' /
   A1PCHILD17 'Number of children aged 17' /
   A1PCHILD18 'Number of children aged 18' /
   A1PC06    'Any children aged 0-6' /
   A1PC713   'Any children aged 7-13' /
   A1PC1417  'Any children aged 14-17' /
   A1PC18    'Any children under 18' /
   A1PE1     'Lived in institutional setting' /
   A1PE1A    '# of days in institution' /
   A1PE2     'Ever homeless' /
   A1PE2A    '# of days homeless' /
   A1PE3     'Without telephone' /
   A1PE3A    '# of days without telephone' /
   A1PC1     'Live with biological parents (C1)' /
   A1PCA1    'Mother died (C1.1)' /
   A1PCA2    'Father died (C1.1)' /
   A1PCA3    'Parents separated/divorced (C1.1)' /
   A1PCA4    'Parents never lived togethr (C1.1)' /
   A1PCA5    'Adopted at birth (C1.1)' /
   A1PCA6    'Adopted not at birth (C1.1)' /
   A1PCA7    'Other (C1.1)' /
   A1PCB1    'Age when mother died (C1.2)' /
   A1PCB2    'Age when father died (C1.2)' /
   A1PCB3    'Age parents sep or divorcd (C1.2)' /
   A1PCB6    'Age when adopted (C1.2)' /
   A1PCB7    'Age when (other) occurred (C1.2)' /
   A1PCC     'Male head of household (C1.3)' /
   A1PC2     'Father/Male HH highest level education' /
   A1PC3     'Father/Male HH work for pay' /
   A1PC3A1   'Physical disability or injury - Male HH' /
   A1PC3A2   'Alcohol or drug abuse - Male HH' /
   A1PC3A3   'Mental or emotional disability - Male HH' /
   A1PC3A4   'Stayed home to raise children - Male HH' /
   A1PC3A5   'Other - Male HH' /
   A1PC5_2   'Father/Male HH supervise at job' /
   A1PC6_2   'Father/Male HH employee or self-emp' /
   A1PINDD   'Father/Male HH industry' /
   A1POCCD   'Father/Male HH occupation' /
   A1PTSEID  'Father/Male HH - SEI 80 - total' /
   A1PTEARD  'Father/Male HH - logit all earn >= 14.30' /
   A1PTEDUD  'Father/Male HH - logit all educ some col' /
   A1PFSEID  'Father/Male HH - SEI 80 - female' /
   A1PFEARD  'Father/Male HH - logit wmn earn >= 14.30' /
   A1PFEDUD  'Father/Male HH - logit wmn educ some col' /
   A1PMSEID  'Father/Male HH - SEI 80 - male' /
   A1PMEARD  'Father/Male HH - logit men earn >= 14.30' /
   A1PMEDUD  'Father/Male HH - logit men educ some col' /
   D_ABSCRE  'Father/Male HH - abstract and creative' /
   D_ATMOSP  'Father/Male HH - atmospheric conditions' /
   D_BOTH    'Father/Male HH - prfrmd in and outdoor' /
   D_BUSPR   'Father/Male HH - business cntct people' /
   D_CLERIC  'Father/Male HH - clerical perception' /
   D_CLIMB   'Father/Male HH - climbing or balancing' /
   D_CLRDIS  'Father/Male HH - color discrimination' /
   D_COLD    'Father/Male HH - extreme cold' /
   D_COMMDA  'Father/Male HH - communication of data' /
   D_DATAL   'Father/Male HH - cmplxty - rltn to data' /
   D_DATAPR  'Father/Male HH - data preference' /
   D_DCP     'Father/Male HH - adapt accept rspnsblty' /
   D_DEPL    'Father/Male HH - adapt people instrctn' /
   D_ENVIRO  'Father/Male HH - environment contition' /
   D_EYHNFT  'Father/Male HH - eye hand foot coordntn' /
   D_FIF     'Father/Male HH - adapt situ feel - view' /
   D_FMNHR   'Father/Male HH - female mean hrly earn' /
   D_FMNYR   'Father/Male HH - female mean annl earn' /
   D_FNGRDX  'Father/Male HH - finger dexterity' /
   D_FRMPRC  'Father/Male HH - form perception' /
   D_GED     'Father/Male HH - gnrl education devlpmt' /
   D_HAZARD  'Father/Male HH - hazards' /
   D_HEAT    'Father/Male HH - extreme heat' /
   D_INFLU   'Father/Male HH - adapt influence ideas' /
   D_INTELL  'Father/Male HH - intelligence aptitude' /
   D_MACHPR  'Father/Male HH - activities w machines' /
   D_MCHNPR  'Father/Male HH - machine preference' /
   D_MEN     'Father/Male HH - men in occupation 1979' /
   D_MMNHR   'Father/Male HH - male mean hrly earn' /
   D_MMNYR   'Father/Male HH - male mean annl earn' /
   D_MNLDXT  'Father/Male HH - manual dexterity' /
   D_MTRCRD  'Father/Male HH - motor coordination' /
   D_MVC     'Father/Male HH - adapt general measures' /
   D_NOISE   'Father/Male HH - noise or vibrations' /
   D_NUMERC  'Father/Male HH - numerical aptitude' /
   D_OBSPRE  'Father/Male HH - activities w objects' /
   D_OUT     'Father/Male HH - performed outdoors' /
   D_PEOPLE  'Father/Male HH - complexity w people' /
   D_PEOPRE  'Father/Male HH - work for presumed good' /
   D_PHYSDM  'Father/Male HH - physical demands' /
   D_PRODPR  'Father/Male HH - productive preference' /
   D_PROTPR  'Father/Male HH - tngbl productive satis' /
   D_PRSTPR  'Father/Male HH - prestige of others' /
   D_PUS     'Father/Male HH - adapt perform stress' /
   D_REACH   'Father/Male HH - reaching handling feel' /
   D_REPCON  'Father/Male HH - adapt repetative work' /
   D_ROUTPR  'Father/Male HH - routine activities' /
   D_SCINPR  'Father/Male HH - scientific activities' /
   D_SEE     'Father/Male HH - seeing' /
   D_SJC     'Father/Male HH - adapt general judgemtl' /
   D_SPATIA  'Father/Male HH - spatial aptitude' /
   D_STOOP   'Father/Male HH - stoop kneel and crawl' /
   D_STRGTH  'Father/Male HH - strength' /
   D_STS     'Father/Male HH - adapt to situat limits' /
   D_SVP     'Father/Male HH - specific vocation prep' /
   D_TALK    'Father/Male HH - talking or hearing' /
   D_THINGS  'Father/Male HH - complexity of things' /
   D_TRAIN   'Father/Male HH - training times' /
   D_VARCH   'Father/Male HH - adapt multiple duties' /
   D_VERBAL  'Father/Male HH - verbal aptitude' /
   D_WET     'Father/Male HH - wet and humid conditn' /
   D_WOMEN   'Father/Male HH - women in occupatn 1979' /
   MINDUS_D  'Father/Male HH 1 if missing industry code' /
   PROFID_D  'Father/Male HH professional / related srvcs' /
   AGRIC_D   'Father/Male HH agri, forestry, fishry, mining' /
   CONSTR_D  'Father/Male HH construction' /
   MANUF_D   'Father/Male HH manufacturing' /
   TRANSP_D  'Father/Male HH transp, comm, public utility' /
   WHOLE_D   'Father/Male HH wholesale trade' /
   RETAIL_D  'Father/Male HH retail trade' /
   FNANCE_D  'Father/Male HH finance, insurance, real est' /
   BUSIN_D   'Father/Male HH business and repair services' /
   PERSON_D  'Father/Male HH personal services' /
   ENTERT_D  'Father/Male HH entertainment, recreation serv' /
   PUBADM_D  'Father/Male HH public administration' /
   MOCCUP_D  'Father/Male HH 1 if missing occupation code' /
   EXEC_D    'Father/Male HH executive, administ, managerl' /
   PROFOC_D  'Father/Male HH professional specialty' /
   TECH_D    'Father/Male HH technicians / related support' /
   SALES_D   'Father/Male HH sales occupations' /
   ADMIN_D   'Father/Male HH admin support, incld clerical' /
   SERV_D    'Father/Male HH service occupations' /
   FARM_D    'Father/Male HH farming, forestry, fishing' /
   CRAFT_D   'Father/Male HH precision prod, craft, repair' /
   OPERAT_D  'Father/Male HH operator, laborer, military' /
   A1PC7     'Female head of household' /
   A1PC8     'Mother/Female HH highest education level' /
   A1PC9     'Mother/Female HH work for pay' /
   A1PC9A1   'Physical disability or injury - Fem HH' /
   A1PC9A2   'Alcohol or drug abuse - Fem HH' /
   A1PC9A3   'Mental or emotional disability - Fem HH' /
   A1PC9A4   'Stayed home to raise children - Fem HH' /
   A1PC9A5   'Other - Fem HH' /
   A1PC11_2  'Mother/Female HH supervise anyone' /
   A1PC13_2  'Mother/Female HH employee or self-emp' /
   A1PINDM   'Mother/Female HH industry' /
   A1POCCM   'Mother/Female HH occupation' /
   A1PTSEIM  'Mother/Female HH - SEI 80 - total' /
   A1PTEARM  'Mother/Female HH - logit all earn >= 14.30' /
   A1PTEDUM  'Mother/Female HH - logit all educ some col' /
   A1PFSEIM  'Mother/Female HH - SEI 80 - female' /
   A1PFEARM  'Mother/Female HH - logit wmn earn >= 14.30' /
   A1PFEDUM  'Mother/Female HH - logit wmn educ some col' /
   A1PMSEIM  'Mother/Female HH - SEI 80 - male' /
   A1PMEARM  'Mother/Female HH - logit men earn >= 14.30' /
   A1PMEDUM  'Mother/Female HH - logit men educ some col' /
   M_ABSCRE  'Mother/Female HH - abstract and creative' /
   M_ATMOSP  'Mother/Female HH - atmospheric conditions' /
   M_BOTH    'Mother/Female HH - prfrmd in and outdoor' /
   M_BUSPR   'Mother/Female HH - business cntct people' /
   M_CLERIC  'Mother/Female HH - clerical perception' /
   M_CLIMB   'Mother/Female HH - climbing or balancing' /
   M_CLRDIS  'Mother/Female HH - color discrimination' /
   M_COLD    'Mother/Female HH - extreme cold' /
   M_COMMDA  'Mother/Female HH - communication of data' /
   M_DATAL   'Mother/Female HH - cmplxty - rltn to data' /
   M_DATAPR  'Mother/Female HH - data preference' /
   M_DCP     'Mother/Female HH - adapt accept rspnsblty' /
   M_DEPL    'Mother/Female HH - adapt people instrctn' /
   M_ENVIRO  'Mother/Female HH - environment contition' /
   M_EYHNFT  'Mother/Female HH - eye hand foot coordntn' /
   M_FIF     'Mother/Female HH - adapt situ feel - view' /
   M_FMNHR   'Mother/Female HH - female mean hrly earn' /
   M_FMNYR   'Mother/Female HH - female mean annl earn' /
   M_FNGRDX  'Mother/Female HH - finger dexterity' /
   M_FRMPRC  'Mother/Female HH - form perception' /
   M_GED     'Mother/Female HH - gnrl education devlpmt' /
   M_HAZARD  'Mother/Female HH - hazards' /
   M_HEAT    'Mother/Female HH - extreme heat' /
   M_INFLU   'Mother/Female HH - adapt influence ideas' /
   M_INTELL  'Mother/Female HH - intelligence aptitude' /
   M_MACHPR  'Mother/Female HH - activities w machines' /
   M_MCHNPR  'Mother/Female HH - machine preference' /
   M_MEN     'Mother/Female HH - men in occupation 1979' /
   M_MMNHR   'Mother/Female HH - male mean hrly earn' /
   M_MMNYR   'Mother/Female HH - male mean annl earn' /
   M_MNLDXT  'Mother/Female HH - manual dexterity' /
   M_MTRCRD  'Mother/Female HH - motor coordination' /
   M_MVC     'Mother/Female HH - adapt general measures' /
   M_NOISE   'Mother/Female HH - noise or vibrations' /
   M_NUMERC  'Mother/Female HH - numerical aptitude' /
   M_OBSPRE  'Mother/Female HH - activities w objects' /
   M_OUT     'Mother/Female HH - performed outdoors' /
   M_PEOPLE  'Mother/Female HH - complexity w people' /
   M_PEOPRE  'Mother/Female HH - work for presumed good' /
   M_PHYSDM  'Mother/Female HH - physical demands' /
   M_PRODPR  'Mother/Female HH - productive preference' /
   M_PROTPR  'Mother/Female HH - tngbl productive satis' /
   M_PRSTPR  'Mother/Female HH - prestige of others' /
   M_PUS     'Mother/Female HH - adapt perform stress' /
   M_REACH   'Mother/Female HH - reaching handling feel' /
   M_REPCON  'Mother/Female HH - adapt repetative work' /
   M_ROUTPR  'Mother/Female HH - routine activities' /
   M_SCINPR  'Mother/Female HH - scientific activities' /
   M_SEE     'Mother/Female HH - seeing' /
   M_SJC     'Mother/Female HH - adapt general judgemtl' /
   M_SPATIA  'Mother/Female HH - spatial aptitude' /
   M_STOOP   'Mother/Female HH - stoop kneel and crawl' /
   M_STRGTH  'Mother/Female HH - strength' /
   M_STS     'Mother/Female HH - adapt to situat limits' /
   M_SVP     'Mother/Female HH - specific vocation prep' /
   M_TALK    'Mother/Female HH - talking or hearing' /
   M_THINGS  'Mother/Female HH - complexity of things' /
   M_TRAIN   'Mother/Female HH - training times' /
   M_VARCH   'Mother/Female HH - adapt multiple duties' /
   M_VERBAL  'Mother/Female HH - verbal aptitude' /
   M_WET     'Mother/Female HH - wet and humid conditn' /
   M_WOMEN   'Mother/Female HH - women in occupatn 1979' /
   MINDUS_M  'Mother/Female HH 1 if missing industry code' /
   PROFID_M  'Mother/Female HH professional / related srvcs' /
   AGRIC_M   'Mother/Female HH agri, forestry, fishry, mining' /
   CONSTR_M  'Mother/Female HH construction' /
   MANUF_M   'Mother/Female HH manufacturing' /
   TRANSP_M  'Mother/Female HH transp, comm, public utility' /
   WHOLE_M   'Mother/Female HH wholesale trade' /
   RETAIL_M  'Mother/Female HH retail trade' /
   FNANCE_M  'Mother/Female HH finance, insurance, real est' /
   BUSIN_M   'Mother/Female HH business and repair services' /
   PERSON_M  'Mother/Female HH personal services' /
   ENTERT_M  'Mother/Female HH entertainment, recreation serv' /
   PUBADM_M  'Mother/Female HH public administration' /
   MOCCUP_M  'Mother/Female HH 1 if missing occupation code' /
   EXEC_M    'Mother/Female HH executive, administ, managerl' /
   PROFOC_M  'Mother/Female HH professional specialty' /
   TECH_M    'Mother/Female HH technicians / related support' /
   SALES_M   'Mother/Female HH sales occupations' /
   ADMIN_M   'Mother/Female HH admin support, incld clerical' /
   SERV_M    'Mother/Female HH service occupations' /
   FARM_M    'Mother/Female HH farming, forestry, fishing' /
   CRAFT_M   'Mother/Female HH precision prod, craft, repair' /
   OPERAT_M  'Mother/Female HH operator, laborer, military' /
   A1PC14    'Family on welfare or ADC' /
   A1PC15    'How often on welfare' /
   A1PD1     'How satisfied with life now' /
   A1PD2     'Control of life in general' /
   A1PD3     'Satisfied with self' /
   A1PD8     'Rate contribution to others' /
   A1PD9     'Disappointed with achievments' /
   A1PD9A    'Level of agreement to D9' /
   A1PD4     'Outgoing' /
   A1PD5     'Worrying' /
   A1PD6     'Curious' /
   A1PD7     'Optimistic' /
   A1PI_MO   'Month phone interivew completed' /
   A1PI_YR   'Year phone interview completed' /
   A1SA1     'Rate present health' /
   A1SA2     'Rate health ten years ago' /
   A1SHLTCH  'Change in health status' /
   A1SA3     'Expected health ten years from now' /
   A1SHLTEX  'Change in health expectations' /
   A1SA4     'Rate present control over health' /
   A1SA5     'Rate effort put on health' /
   A1SA6A    'Energy level compare 5yrs ago' /
   A1SA6B    'Physical fitness compare 5yrs ago' /
   A1SA6C    'Physique / figure compare 5yrs ago' /
   A1SA6D    'Weight compare 5yrs ago' /
   A1SA7A    'Health depends on things I do' /
   A1SA7B    'Reduce heart attack risk' /
   A1SA7C    'Reduce cancer risk' /
   A1SA7D    'Work hard to stay healthy' /
   A1SA7E    'Getting better in Dr hands' /
   A1SA7F    'Difficult find good medical care' /
   A1SHLOCS  'Self respect' /
   A1SHLOCO  'Others respect' /
   A1SA8A    'Aware of body' /
   A1SA8B    'Sudden noises bother me' /
   A1SA8C    'Hate being too hot or cold' /
   A1SA8D    'Quick sense of hunger' /
   A1SA8E    'Low tolerance for pain' /
   A1SAMOLI  'Amplification' /
   A1SA9A    'Asthma, bronchitis, or emphysema' /
   A1SA9B    'Tuberculosis' /
   A1SA9C    'Other lung problems' /
   A1SA9D    'Bone or joint diseases' /
   A1SA9E    'Sciatica, lumbago, recur backache' /
   A1SA9F    'Persistent skin trouble' /
   A1SA9G    'Thyroid disease' /
   A1SA9H    'Hay fever' /
   A1SA9I    'Recurring stomach trouble' /
   A1SA9J    'Urinary or bladder problems' /
   A1SA9K    'Being constipated' /
   A1SA9L    'Gall bladder trouble' /
   A1SA9M    'Persistent foot trouble' /
   A1SA9N    'Varicose veins requiring treatment' /
   A1SA9O    'AIDS or HIV infection' /
   A1SA9P    'Autoimmune disorders' /
   A1SA9Q    'Trouble with your gums or mouth' /
   A1SA9R    'Persistent trouble with your teeth' /
   A1SA9S    'High blood pressure' /
   A1SA9T    'Emotional disorder' /
   A1SA9U    'Alcohol or drug problems' /
   A1SA9V    'Migraine headaches' /
   A1SA9W    'Chronic sleeping problems' /
   A1SA9X    'Diabetes or high blood sugar' /
   A1SA9Y    'Neurological disorders' /
   A1SA9Z    'Stroke' /
   A1SA9AA   'Ulcer' /
   A1SA9BB   'Hernia or rupture' /
   A1SA9CC   'Piles or hemorrhoids' /
   A1SCHRON  'Sum of chronic conditions' /
   A1SCHROX  'Having any chronic conditions' /
   A1SA10A   'Rx for hypertension' /
   A1SA10B   'Rx for diabetes' /
   A1SA10C   'Rx for high cholesterol' /
   A1SA10D   'Rx for a heart condition' /
   A1SA10E   'Rx for lung problems' /
   A1SA10F   'Rx for ulcers' /
   A1SA10G   'Rx for arthritis' /
   A1SA10H   'Rx for hormone replacement' /
   A1SA10I   'Rx for birth control' /
   A1SA10J   'Rx for headaches' /
   A1SA10K   'Rx for nerves, anxiety, or depres' /
   A1SRXMED  'Numbers Kinds of Rx medicine taking (30 days)' /
   A1SRXMEX  'Took any RX medicine (30 days)' /
   A1SA11A   'Multi-vitamins' /
   A1SA11B   'Vitamin C' /
   A1SA11C   'Iron' /
   A1SA11D   'Calcium' /
   A1SA11E   'Others' /
   A1SVITAM  'Use any vitamins' /
   A1SA12A   'Headaches' /
   A1SA12B   'Lower back aches' /
   A1SA12C   'Sweating a lot' /
   A1SA12D   'Irritability' /
   A1SA12E   'Hot flushes or flashes' /
   A1SA12F   'Aches or stiffness in joints' /
   A1SA12G   'Trouble sleeping' /
   A1SA12H   'Leaking urine' /
   A1SA12I   'Discomfort during intercourse' /
   A1SSYMPT  'Symptoms of headaches etc' /
   A1SA13A   'Feel so sad' /
   A1SA13B   'Feel nervous' /
   A1SA13C   'Feel restless or fidgety' /
   A1SA13D   'Feel hopeless' /
   A1SA13E   'That everything was an effort?' /
   A1SA13F   'Feel worthless' /
   A1SNEGAF  'Badmood - negative affect' /
   A1SA14    'Feeling bad usual or not' /
   A1SA15A   'Feel cheerful' /
   A1SA15B   'Feel in good spirits' /
   A1SA15C   'Feel extremely happy' /
   A1SA15D   'Feel calm and peaceful' /
   A1SA15E   'Feel satisfied' /
   A1SA15F   'Feel full of life' /
   A1SPOSAF  'Goodmood - positive affect' /
   A1SA16    'Feel good usual or not' /
   A1SA17A   'Limit lifting or carrying groceries' /
   A1SA17B   'Limit bathing or dressing yourself' /
   A1SA17C   'Limit climbing stairs' /
   A1SA17D   'Limit bending, kneeling, stooping' /
   A1SA17E   'Limit walking more than a mile' /
   A1SA17F   'Limit walking several blocks' /
   A1SA17G   'Limit walking one block' /
   A1SA17H   'Limit vigorous phy activity' /
   A1SA17I   'Limit moderate phy activity' /
   A1SBADL   'Basic activity of daily living' /
   A1SIADL   'Instrumental Activities of Daily Living' /
   A1SA18    'Summer vigorous activity' /
   A1SA19    'Winter vigorous activity' /
   A1SVIGOR  'Times/month vigorous activity' /
   A1SA20    'Summer moderate phy activity' /
   A1SA21    'Winter moderate phy activity' /
   A1SMODER  'Times/month moderate activity' /
   A1SA22A   'Shrt breath walking uphill' /
   A1SA22B   'Shrt breath walk other level grnd' /
   A1SA22C   'Shrt breath walk own level grnd' /
   A1SA22D   'Shrt breath washing or dressing' /
   A1SDYSPN  'Chest pain not meet angina criteria' /
   A1SA23    '# of Inches - waist' /
   A1SA24    '# of Inches - hip' /
   A1SWSTHI  'Waist to hip ratio' /
   A1SA25    '# of Inches - height' /
   A1SA26    'Weight general evaluation' /
   A1SA27    'Weight in pounds' /
   A1SBMI    'Body Mass Index' /
   A1SA28    'Weight one year ago' /
   A1SA29    'Weight when 21 years old' /
   A1SA30A   'Lose 10 lbs due to illness' /
   A1SA30B   'Lose 10 lbs due to lifestyle' /
   A1SA30C   'Lose 10 lbs for other reason' /
   A1SA31    '# Time lost 10+ pounds' /
   A1SA32    'Operation with anesthesia' /
   A1SA32A   'Year of operation w/ anest' /
   A1SA33    '# Times hospitalized overnight' /
   A1SA33A   '# Nights in hospital' /
   A1SA34    'Place for medical care' /
   A1SA35    'One doctor seen for medical care' /
   A1SA36A   'Saw doctor for routine care' /
   A1SA36B   'Saw dentist or optician' /
   A1SA36C   'Saw doctor for urgent care' /
   A1SA36D   'Saw doc for scheduled treatment' /
   A1SUSEMD  'Visit physicians' /
   A1SA37A   'Saw psychiatrist' /
   A1SA37B   'Saw general doctor' /
   A1SA37C   'Saw psychologist' /
   A1SA37D   'Saw spiritual advisor' /
   A1SUSEMH  'Visit psychiatrists etc.' /
   A1SA38A   'Attend subst abuse grp' /
   A1SA38AY  'Age attended subst abuse grp' /
   A1SA38AZ  '# Times attend subst abuse grp' /
   A1SA38B   'Attend emotional probs' /
   A1SA38BY  'Age attended emotional probs' /
   A1SA38BZ  '# Times attend emotional probs' /
   A1SA38C   'Attend eating problems' /
   A1SA38CY  'Age attended eating problems' /
   A1SA38CZ  '# Times attend eating problems' /
   A1SA38D   'Attend death of loved one' /
   A1SA38DY  'Age attended death of loved one' /
   A1SA38DZ  '# Times attend death of loved one' /
   A1SA38E   'Attend life transition' /
   A1SA38EY  'Age attended life transition' /
   A1SA38EZ  '# Times attend life transition' /
   A1SA38F   'Attend grps for survivors' /
   A1SA38FY  'Age attended grps for survivors' /
   A1SA38FZ  '# Times attend grps for survivors' /
   A1SA38G   'Attend physical disab' /
   A1SA38GY  'Age attended physical disab' /
   A1SA38GZ  '# Times attend physical disab' /
   A1SA38H   'Attend parent support' /
   A1SA38HY  'Age attended parent support' /
   A1SA38HZ  '# Times attend parent support' /
   A1SA38I   'Attend family physical' /
   A1SA38IY  'Age attended family physical' /
   A1SA38IZ  '# Times attend family physical' /
   A1SA38J   'Attend family emot subst' /
   A1SA38JY  'Age attended family emot subst' /
   A1SA38JZ  '# Times attend family emot subst' /
   A1SA38K   'Attend other grp' /
   A1SA38KY  'Age attended other grp' /
   A1SA38KZ  '# Times attend other grp' /
   A1SA39A   'Acupuncture used' /
   A1SA39B   'Biofeedback used' /
   A1SA39C   'Chiropractic used' /
   A1SA39D   'Energy healing used' /
   A1SA39E   'Exercise or movement therapy used' /
   A1SA39F   'Herbal therapy used' /
   A1SA39G   'High dose mega-vitamins used' /
   A1SA39H   'Homeopathy used' /
   A1SA39I   'Hypnosis used' /
   A1SA39J   'Imagery techniques used' /
   A1SA39K   'Massage therapy used' /
   A1SA39L   'Spiritual practices used' /
   A1SA39M   'Meditation techniques used' /
   A1SA39N   'Special diets used' /
   A1SA39O   'Spiritual healing by others used' /
   A1SA39P   'Other non-tradit therapy used' /
   A1SALTER  'Alt drugs used' /
   A1SA40A   'Sedatives used' /
   A1SA40B   'Nerve pills used' /
   A1SA40C   'Stimulants used' /
   A1SA40D   'Prescription painkillers used' /
   A1SA40E   'Drugs to treat depression used' /
   A1SA40F   'Inhalants to feel good used' /
   A1SA40G   'Marijuana or hashish used' /
   A1SA40H   'Cocaine or crack used' /
   A1SA40I   'LSD or other hallucinogens used' /
   A1SA40J   'Heroin used' /
   A1SA41    'Larger amounts than intended' /
   A1SA42    'Drugs effect at work / school' /
   A1SA43A   'Subst increase chance to get hurt' /
   A1SA43B   'Subst emotional problems' /
   A1SA43C   'Subst strong desire to use' /
   A1SA43D   'Subst lots of time using' /
   A1SA43E   'Subst had to use more' /
   A1SA44A   'Alcohol increase chance to get hurt' /
   A1SA44B   'Alcohol emotional problems' /
   A1SA44C   'Alcohol strong desire to use' /
   A1SA44D   'Alcohol lots of time using' /
   A1SA44E   'Alcohol had to use more' /
   A1SA45    'Alcohol use larger amounts' /
   A1SA46    'Alcohol effects at work / school' /
   SKIP_SB1  'Skip record - SB1-10' /
   A1SB1     'Age 1st menstrual period' /
   A1SB2     'Menstrual discomfort before' /
   A1SB3     'Menstrual discomfort during' /
   A1SB4     'Feelings when menstrual stop' /
   A1SB5A    'Pain relievers' /
   A1SB5B    'Sleeping pills' /
   A1SB5C    'Creams for vaginal dryness' /
   A1SB6     'Hormone replacement' /
   A1SB6A    'Age started hormone replacement' /
   A1SB6B    'Still taking hormone replacement' /
   A1SB6C    'Age stopped hormone replacement' /
   A1SB7A1   'Operat hysterectomy' /
   A1SB7A2   'Age had hysterectomy' /
   A1SB7B1   'Operat rmv uterus and 1 ovary' /
   A1SB7B2   'Age had rmv uterus and 1 ovary' /
   A1SB7C1   'Operat rmv uterus and 2 ovaries' /
   A1SB7C2   'Age had rmv uterus and 2 ovaries' /
   A1SB7D1   'Operat rmv one ovary' /
   A1SB7D2   'Age had rmv one ovary' /
   A1SB7E1   'Operat rmv both ovaries' /
   A1SB7E2   'Age had rmv both ovaries' /
   A1SB7F1   'Operat tubal ligation' /
   A1SB7F2   'Age had tubal ligation' /
   A1SB8A    'Worry too old to have child' /
   A1SB8B    'Worry being less attractive' /
   A1SB8C    'Worry having more illness' /
   A1SB9     'Mentrual period stopped' /
   A1SB9A    'Age of last menstrual period' /
   A1SB10    'Period in last 3 months' /
   A1SB10A   'Period regularity' /
   A1SB10B   'Period flow compare' /
   A1SB10C   'Why no period' /
   A1SC1A    'Private from insurer' /
   A1SC1B    'Private through employer' /
   A1SC1C    'Private through S/P employer' /
   A1SC1D    'Private through union' /
   A1SC1E    'Private through S/P union' /
   A1SC1F    'Medicare' /
   A1SC1G    'Medicaid' /
   A1SC1H    'Gov military' /
   A1SC2     'Mental health coverage' /
   A1SC3A    'Through employer - avail' /
   A1SC3B    'Through S/P employer - avail' /
   A1SC3C    'Through union - avail' /
   A1SC3D    'Through S/P union - avail' /
   A1SC4A    'Medicare - eligible' /
   A1SC4B    'Medicaid - eligible' /
   A1SC4C    'Gov military - eligible' /
   SKIP_SC5  'Skip record - SC5a-6' /
   A1SC5A    'S/P private from insurer' /
   A1SC5B    'S/P private your employer' /
   A1SC5C    'S/P private employer' /
   A1SC5D    'S/P private your union' /
   A1SC5E    'S/P private union' /
   A1SC5F    'S/P medicare' /
   A1SC5G    'S/P medicaid' /
   A1SC5H    'S/P gov military' /
   A1SC6     'S/P cover mental health' /
   A1SD1     'Mothers past health' /
   A1SD2     'Mother still alive' /
   A1SD2A    'Mothers age' /
   A1SD2B    'Mothers current health' /
   A1SD2C    'Year mother died' /
   A1SD2D    'Age mother died' /
   A1SD3     'Fathers past health' /
   A1SD4     'Father still alive' /
   A1SD4A    'Fathers age' /
   A1SD4B    'Fathers current health' /
   A1SD4C    'Year father died' /
   A1SD4D    'Age father died' /
   A1SE2     'Born in US' /
   A1SE3     'Mother born in US' /
   A1SE4     'Father born in US' /
   A1SE5     'Language spoken' /
   A1SE6     'Religion importance' /
   A1SE7     'Area where raised' /
   A1SE8     '# Times moved to new neighborhood' /
   A1SE9     'Financial level growing up' /
   A1SE10    'Financial level now' /
   A1SE11    'Chores growing up' /
   A1SE12    'Rules on how to spend time' /
   SKIP_E13  'Skip record - SE13-14m' /
   A1SE13    'M - Relationship with' /
   A1SE14A   'M - Understand problems' /
   A1SE14B   'M - Confide in her' /
   A1SE14C   'M - Love and affection' /
   A1SE14D   'M - Time and attention' /
   A1SE14E   'M - Upbringing' /
   A1SE14F   'M - Strictness' /
   A1SE14G   'M - Consistent rules' /
   A1SE14H   'M - Punishment' /
   A1SE14I   'M - Stop from doing things' /
   A1SE14J   'M - Do best' /
   A1SE14K   'M - Teach about life' /
   A1SE14L   'M - Generosity' /
   A1SE14M   'M - Sociable and friendly' /
   A1SEMA    'Maternal affection' /
   A1SEMD    'Maternal discipline' /
   A1SMMOD   'Mother as model of generosity to oth' /
   SKIP_E15  'Skip record - SE15-16m' /
   A1SE15    'F - Relationship with' /
   A1SE16A   'F - Understand problems' /
   A1SE16B   'F - Confide in father' /
   A1SE16C   'F - Love and affection' /
   A1SE16D   'F - Time and attention' /
   A1SE16E   'F - Upbringing' /
   A1SE16F   'F - Strictness' /
   A1SE16G   'F - Consistent rules' /
   A1SE16H   'F - Punishment' /
   A1SE16I   'F - Stop from doing things' /
   A1SE16J   'F - Do best' /
   A1SE16K   'F - Teach about life' /
   A1SE16L   'F - Generosity' /
   A1SE16M   'F - Sociable and friendly' /
   A1SEFA    'Paternal affection' /
   A1SEFD    'Paternal discipline' /
   A1SEFMOD  'Father as model of generosity to oth' /
   A1SEMAPA  'Combined maternal/paternal affection' /
   A1SE17A   'Emotional abuse - mother' /
   A1SE17B   'Emotional abuse - father' /
   A1SE17C   'Emotional abuse - brothers' /
   A1SE17D   'Emotional abuse - sisters' /
   A1SE17E   'Emotional abuse - anyone else' /
   A1SE17F   'Physical abuse - mother' /
   A1SE17G   'Physical abuse - father' /
   A1SE17H   'Physical abuse - brother' /
   A1SE17I   'Physical abuse - sister' /
   A1SE17J   'Physical abuse - anyone else' /
   A1SE17K   'Severe physical abuse - mother' /
   A1SE17L   'Severe physical abuse - father' /
   A1SE17M   'Severe physical abuse - brother' /
   A1SE17N   'Severe physical abuse - sister' /
   A1SE17O   'Severe physic abuse - anyone else' /
   A1SE18A   '# of Older brothers' /
   A1SE18B   '# of Younger brothers' /
   A1SE18C   '# of Brothers same age' /
   A1SE19A   '# of Older sisters' /
   A1SE19B   '# of Younger sisters' /
   A1SE19C   '# of Sisters same age' /
   A1SF1A    'Like my personality' /
   A1SF1B    'Pleased with my life' /
   A1SF1C    'Not wander through life' /
   A1SF1D    'Demands of life get me down' /
   A1SF1E    'Disapp with my achievements' /
   A1SF1F    'Hard to maintain close relations' /
   A1SF1G    'Not think about future' /
   A1SF1H    'In charge of my life' /
   A1SF1I    'Good manage of daily life' /
   A1SF1J    'Feel have done all there is' /
   A1SF1K    'Life is continuous process' /
   A1SF1L    'Like new exp and challenge' /
   A1SF1M    'Giving and sharing person' /
   A1SF1N    'Gave up making changes' /
   A1SF1O    'Tend to be influenced by oth' /
   A1SF1P    'Not have good rltnship with oth' /
   A1SF1Q    'Confidence in own opinion' /
   A1SF1R    'Judge myself by what I think' /
   A1SF1S    'Cannot change impt things in life' /
   A1SF1T    'Feel helpless dealing w problems' /
   A1SF1U    'Can do anything I set mind to' /
   A1SF1V    'Other people determine what I do' /
   A1SF1W    'Things often beyond my control' /
   A1SF1X    'Can succeed if really want to' /
   A1SF1Y    'Things interfere w/ what I want' /
   A1SF1Z    'What I get is in own hands' /
   A1SF1AA   'Little control of things' /
   A1SF1BB   'No way to solve problems' /
   A1SF1CC   'Feel being pushed around' /
   A1SF1DD   'Future depends most on me' /
   A1SCTRL   'Sense of Control (Mastery + Constraints)' /
   A1SPWBA   'Autonomy' /
   A1SPWBE   'Environmental mastery' /
   A1SPWBG   'Personal growth' /
   A1SPWBR   'Positive relations w/ others' /
   A1SPWBU   'Purpose in life' /
   A1SPWBS   'Self acceptance' /
   A1SCONST  'Perceived constraints' /
   A1SMASTE  'Personal mastery' /
   A1SF2A    'Women can be happy w/o marrying' /
   A1SF2B    'Employ mom have good rltn w/child' /
   A1SF2C    'Healthy child need both parent' /
   A1SF2D    'Men share house chores equally' /
   A1SF2E    'Men can be happy w/o marrying' /
   A1SF2F    'Woman can be happy w/o child' /
   A1SF2G    'Men can be happy w/o child' /
   A1SF2H    'Who works less, do more in house' /
   A1SF2I    'Who earns less, do more in house' /
   A1SF2J    'Single parent as good as married couple' /
   A1SF2K    'Men share eql rspnsblty to child' /
   A1SMAR    'Can be happy w/o marry' /
   A1SFAM    'Can be happy w/o marry or children' /
   A1SF3A    'There is a will, there is a way' /
   A1SF3B    'Do what I can to make thgs better' /
   A1SF3C    'Lower my expectation when necess' /
   A1SF3D    'Not set goal too high, avoid disp' /
   A1SF3E    'Can learn from difficult situation' /
   A1SF3F    'Feel relieved when let go sm resp' /
   A1SF3G    'Find way to get all done' /
   A1SF3H    'Find diff way look at bad situation' /
   A1SF3I    'I cannot do everything' /
   A1SF3J    'Not give up when have problem' /
   A1SF3K    'Rarely give up even if tough' /
   A1SF3L    'Cannot achv goal, assume unrealistic' /
   A1SF3M    'Always see bright side of evrythg' /
   A1SF3N    'Find positive in worse situation' /
   A1SF3O    'Like make plans for future' /
   A1SF3P    'Know what I want from life' /
   A1SF3Q    'Live one day at a time' /
   A1SF3R    'Head off bad thg bf happen' /
   A1SF3S    'Can sense opportunities' /
   A1SF3T    'Good set goals for near future' /
   A1SF3U    'Too busy to think tomorrow' /
   A1SF3V    'Understand past helps present' /
   A1SF3W    'No use to think about past' /
   A1SF3X    'Think about how prevent bad thgs' /
   A1SF3Y    'Too busy to think yesterday' /
   A1SF3Z    'Good predicting my future' /
   A1SF3AA   'Good figuring how thgs turn out' /
   A1SF3BB   'No sense to make plans' /
   A1SF3CC   'Make sense of what happened' /
   A1SF3DD   'Insights into way thgs turn out' /
   A1SF3EE   'Do not ask for help unless have to' /
   A1SF3FF   'Deal with own problems myself' /
   A1SF3GG   'Asking for help is natural' /
   A1SF3HH   'Not let oth know when thgs bad' /
   A1SF3II   'Like advice bf making decision' /
   A1SF3JJ   'Feel better if talk when upset' /
   A1SF3KK   'Prefer to make decisions on own' /
   A1SPERSI  'Primary control/persistence' /
   A1SCHANG  'Secondary control/change aspirations' /
   A1SREAPP  'Flexible/positive reappraisal' /
   A1SDIREC  'Self directedness/planning' /
   A1STODAY  'Live for today' /
   A1SFORSG  'Foresight and anticipation' /
   A1SINSGH  'Insight into past' /
   A1SSUFFI  'Self-sufficiency' /
   A1SADVIC  'Advice seeking' /
   A1SF4A    'Outgoing' /
   A1SF4B    'Helpful' /
   A1SF4C    'Moody' /
   A1SF4D    'Organized' /
   A1SF4E    'Self-confident' /
   A1SF4F    'Friendly' /
   A1SF4G    'Warm' /
   A1SF4H    'Worrying' /
   A1SF4I    'Responsible' /
   A1SF4J    'Forceful' /
   A1SF4K    'Lively' /
   A1SF4L    'Caring' /
   A1SF4M    'Nervous' /
   A1SF4N    'Creative' /
   A1SF4O    'Assertive' /
   A1SF4P    'Hardworking' /
   A1SF4Q    'Imaginative' /
   A1SF4R    'Softhearted' /
   A1SF4S    'Calm' /
   A1SF4T    'Outspoken' /
   A1SF4U    'Intelligent' /
   A1SF4V    'Curious' /
   A1SF4W    'Active' /
   A1SF4X    'Careless' /
   A1SF4Y    'Broad-minded' /
   A1SF4Z    'Sympathetic' /
   A1SF4AA   'Talkative' /
   A1SF4BB   'Sophisticated' /
   A1SF4CC   'Adventurous' /
   A1SF4DD   'Dominant' /
   A1SAGENC  'Agency' /
   A1SAGREE  'Agreeableness' /
   A1SEXTRA  'Extraversion' /
   A1SNEURO  'Neuroticism' /
   A1SCONS   'Conscientiousness' /
   A1SOPEN   'Openness to experience' /
   A1SF5A    'How calm now' /
   A1SF5B    'How calm 10 yrs ago' /
   A1SF5C    'How calm 10 yrs ahead' /
   A1SF5D    'How willing to learn now' /
   A1SF5E    'How willing to learn 10 yrs ago' /
   A1SF5F    'How willing to learn 10 yrs ahead' /
   A1SF5G    'How energetic now' /
   A1SF5H    'How energetic 10 yrs ago' /
   A1SF5I    'How energetic 10 yrs ahead' /
   A1SF5J    'How caring now' /
   A1SF5K    'How caring 10 yrs ago' /
   A1SF5L    'How caring 10 yrs ahead' /
   A1SF5M    'How wise now' /
   A1SF5N    'How wise 10 yrs ago' /
   A1SF5O    'How wise 10 yrs ahead' /
   A1SF5P    'How knowledgeable now' /
   A1SF5Q    'How knowledgeable 10 yrs ago' /
   A1SF5R    'How knowledgeable 10 yrs ahead' /
   A1SF6A    'Focus on a few goals' /
   A1SF6B    'Work hard to reach goals' /
   A1SF6C    'Do what can to reach goals' /
   A1SF7A    'Focus on a few goals 10 yrs ago' /
   A1SF7B    'Work hard to reach goals 10yrs ago' /
   A1SF7C    'Do what can to reach goals 10yrs ago' /
   A1SF8A    'Focus on a few goals 10 yrs ahead' /
   A1SF8B    'Work hard to reach goals 10yrs ahead' /
   A1SF8C    'Do what can to reach goals 10yr ahead' /
   A1SG1A    'Calm in late 20s' /
   A1SG1B    'Calm in late 40s' /
   A1SG1C    'Calm in late 60s' /
   A1SG1D    'Willing to learn in late 20s' /
   A1SG1E    'Willing to learn in late 40s' /
   A1SG1F    'Willing to learn in late 60s' /
   A1SG1G    'Energetic in late 20s' /
   A1SG1H    'Energetic in late 40s' /
   A1SG1I    'Energetic in late 60s' /
   A1SG1J    'Caring in late 20s' /
   A1SG1K    'Caring in late 40s' /
   A1SG1L    'Caring in late 60s' /
   A1SG1M    'Wise in late 20s' /
   A1SG1N    'Wise in late 40s' /
   A1SG1O    'Wise in late 60s' /
   A1SG1P    'Knowledgeable in late 20s' /
   A1SG1Q    'Knowledgeable in late 40s' /
   A1SG1R    'Knowledgeable in late 60s' /
   A1SG2A    'Rate phy hlth in late 20s' /
   A1SG2B    'Rate phy hlth in late 40s' /
   A1SG2C    'Rate phy hlth in late 60s' /
   A1SG2D    'Rate contrib to oths in late 20s' /
   A1SG2E    'Rate contrib to oths in late 40s' /
   A1SG2F    'Rate contrib to oths in late 60s' /
   A1SG2G    'Rate marriage/reltn in late 20s' /
   A1SG2H    'Rate marriage/reltn in late 40s' /
   A1SG2I    'Rate marriage/reltn in late 60s' /
   A1SG2J    'Rate rltn w/children in late 20s' /
   A1SG2K    'Rate rltn w/children in late 40s' /
   A1SG2L    'Rate rltn w/children in late 60s' /
   A1SG2M    'Rate work situatn in late 20s' /
   A1SG2N    'Rate work situatn in late 40s' /
   A1SG2O    'Rate work situatn in late 60s' /
   A1SG2P    'Rate finance situatn in late 20s' /
   A1SG2Q    'Rate finance situatn in late 40s' /
   A1SG2R    'Rate finance situatn in late 60s' /
   A1SG2S    'Rate overall life in late 20s' /
   A1SG2T    'Rate overall life in late 40s' /
   A1SG2U    'Rate overall life in late 60s' /
   A1SG3     'Age feel like' /
   A1SG4     'Age like to be' /
   A1SG5     'Age men enter middle age' /
   A1SG6     'Age men end middle age' /
   A1SG7     'Age women enter middle age' /
   A1SG8     'Age women end middle age' /
   A1SH1     'Career psycho turning pt' /
   A1SH2     'Upset for friend psycho turning pt' /
   A1SH3     'Happy for friend psycho turning pt' /
   A1SH4     'Upset for self psycho turning pt' /
   A1SH5     'Happy for self psycho turning pt' /
   A1SH6     'Fulfill dream' /
   A1SH7     'Give up dream' /
   A1SI1A1   'Working full time 10 yrs ago' /
   A1SI1A2   'Working full time now' /
   A1SI1A3   'Working full time 10 yrs ahead' /
   A1SI1B1   'Working part time 10 yrs ago' /
   A1SI1B2   'Working part time now' /
   A1SI1B3   'Working part time 10 yrs ahead' /
   A1SI1C1   'Self employed 10 yrs ago' /
   A1SI1C2   'Self employed now' /
   A1SI1C3   'Self employed 10 yrs ahead' /
   A1SI1D1   'Volunteer 15 hr+ 10 yrs ago' /
   A1SI1D2   'Volunteer 15 hr+ now' /
   A1SI1D3   'Volunteer 15 hr+ 10 yrs ahead' /
   A1SI1E1   'Full time studt 10 yrs ago' /
   A1SI1E2   'Full time studt now' /
   A1SI1E3   'Full time studt 10 yrs ahead' /
   A1SI1F1   'Part time studt 10 yrs ago' /
   A1SI1F2   'Part time studt now' /
   A1SI1F3   'Part time studt 10 yrs ahead' /
   A1SI1G1   'Prim care own kid 10 yrs ago' /
   A1SI1G2   'Prim care own kid now' /
   A1SI1G3   'Prim care own kid 10 yrs ahead' /
   A1SI1H1   'Full time homemaker 10 yrs ago' /
   A1SI1H2   'Full time homemaker now' /
   A1SI1H3   'Full time homemaker 10 yrs ahead' /
   A1SI1I1   'Unemployed 10 yrs ago' /
   A1SI1I2   'Unemployed now' /
   A1SI1I3   'Unemployed 10 yrs ahead' /
   A1SI1J1   'Sick leave 10 yrs ago' /
   A1SI1J2   'Sick leave now' /
   A1SI1J3   'Sick leave 10 yrs ahead' /
   A1SI1K1   'Retired 10 yrs ago' /
   A1SI1K2   'Retired now' /
   A1SI1K3   'Retired 10 yrs ahead' /
   A1SI2     'Work situation now' /
   A1SI3     'Work situation 10 yrs ago' /
   A1SI4     'Work situation 10 yrs in future' /
   A1SI5     'Control over work' /
   A1SI6     'Thought effort into work' /
   SKIP_SI7  'Skip record - SI7-SI31f' /
   A1SI7     'Age first worked' /
   A1SI8     'Years employed' /
   A1SI9     'Full time years employed' /
   A1SI10    '# of Weeks not working for pay' /
   A1SI11    'Main reason not working for pay' /
   A1SI12A   'Employment status in 1994' /
   A1SI12B   'Employment status in 1993' /
   A1SI12C   'Employment status in 1992' /
   A1SI12D   'Employment status in 1991' /
   A1SI12E   'Employment status in 1990' /
   A1SI12F   'Employment status in 1989' /
   A1SI12G   'Employment status in 1988' /
   A1SI12H   'Employment status in 1987' /
   A1SI12I   'Employment status in 1986' /
   A1SI12J   'Employment status in 1985' /
   A1SI13A   'Weeks work at a paid job' /
   A1SI13B   'Weeks unemployed' /
   A1SI13C   'Weeks unpaid leave' /
   A1SI13D   'Weeks not work/not look for job' /
   A1SI14    'Currently working for pay' /
   A1SI15A   'Work days' /
   A1SI15B   'Work evenings' /
   A1SI15C   'Work nights' /
   A1SI15D   'Work weekends' /
   A1SI16    'Begin job - military time (HHMM)' /
   A1SI17    'End job - military time (HHMM)' /
   A1SI18    '# Minutes commute to work' /
   A1SI19    'Serious problem w/somebdy at work' /
   A1SI20    'Other ongoing stress at work' /
   A1SI21    'Chances to keep job next 2 yrs' /
   A1SI22    'Job effect on phy health' /
   A1SI23    'Job effect on mentl health' /
   A1SI24    'Risk of acc or injury at job' /
   A1SI25    '# Times injured at job past 5 yrs' /
   A1SI26    'How serious was the injury' /
   A1SI27A   'Job reduces effort at home' /
   A1SI27B   'Job stress makes irritable at home' /
   A1SI27C   'Job tiredness affects attn at home' /
   A1SI27D   'Job prblm distract you at home' /
   A1SI27E   'Job helps deal w/issues at home' /
   A1SI27F   'Job makes interesting at home' /
   A1SI27G   'Job makes better companion at home' /
   A1SI27H   'Job skills useful at home' /
   A1SI27I   'Home respblty cause less job effort' /
   A1SI27J   'Personal worries distract at job' /
   A1SI27K   'Home chores lack sleep for job' /
   A1SI27L   'Home stress makes irritable at job' /
   A1SI27M   'Talk w/smbd at home helps job' /
   A1SI27N   'Home needs cause work harder at job' /
   A1SI27O   'Home love enhances confidence at job' /
   A1SI27P   'Home life helps ready for day at job' /
   A1SPOSWF  'Positive Work to Family Spillover' /
   A1SNEGWF  'Negative Work to Family Spillover' /
   A1SPOSFW  'Positive Family to Work Spillover' /
   A1SNEGFW  'Negative Family to Work Spillover' /
   A1SI28A   'Work intensively' /
   A1SI28B   'Learn new things at wk' /
   A1SI28C   'Work demands high skill' /
   A1SI28D   'Initiate things at wk' /
   A1SI28E   'Have choice how to wk' /
   A1SI28F   'Have choice what do at wk' /
   A1SI28G   'Make decisions at wk' /
   A1SI28H   'Plan wk environment' /
   A1SI28I   'Work interests you' /
   A1SI28J   'Wk demands hard to combine' /
   A1SI29A   'Too many demands at job' /
   A1SI29B   'Control time for tasks at job' /
   A1SI29C   'Time to get job tasks done' /
   A1SI29D   'Lots of interruption at job' /
   A1SJCSD   'Skill Discretion (Job Characteristics)' /
   A1SJCDA   'Decision Authority (Job Characteristics)' /
   A1SJCDS   'Demands Scale (Job Characteristics)' /
   A1SJCCS   'Coworker Support (Job Characteristics)' /
   A1SJCSS   'Supervisor Support (Job Characteristics)' /
   A1SI30A   'Coworkers help and support' /
   A1SI30B   'Coworkers listen' /
   A1SI30C   'Supervisor gives necess info' /
   A1SI30D   'Supervisor helps and supports' /
   A1SI30E   'Supervisor listens' /
   A1SI31A   'Feel cheated abt job chances' /
   A1SI31B   'Feel pride for job' /
   A1SI31C   'Oths respect for my job' /
   A1SI31D   'Oths have more rewarding job' /
   A1SI31E   'Have as good job opp as oth' /
   A1SI31F   'Oth have better job than I do' /
   A1SPIWOR  'Perceived inequality - work' /
   A1SI32A   'Too many demands at home' /
   A1SI32B   'Control time for tasks at home' /
   A1SI32C   'Time to get home tasks done' /
   A1SI32D   'Lots of interruptions at home' /
   A1SI33A   'Feel pride for wk at home' /
   A1SI33B   'Oths respect my wk at home' /
   A1SI33C   'Paid wk more rewarding than home' /
   A1SI34A   'Feel pride for wk in community' /
   A1SI34B   'Oths respt work in community' /
   A1SI34C   'Paid wk more rewarding than community' /
   A1SJ1     'Financial situation now' /
   A1SJ2     'Financial situation 10 yrs ago' /
   A1SJ3     'Financial situation 10 yrs ahead' /
   A1SJ4     'Control fin situation now' /
   A1SJ5     'Effort into fin situation now' /
   A1SJ6     'Enough money to meet needs' /
   A1SJ7     'Difficult to pay bills' /
   A1SJ8     'Own psonal income pst 12mo' /
   A1SJ8M    'Mean own psonal income pst 12mo' /
   A1SJ9     'S/P psonal income pst 12mo' /
   A1SJ9M    'Mean S/P income pst 12mo' /
   A1SHWEARN 'R and S/P earnings' /
   A1SJ10    'Oths comb psonal income pst 12mo' /
   A1SJ10M   'Mean oths comb psonal income pst 12mo' /
   A1SJ11    'HH soc security income pst 12mo' /
   A1SJ11M   'Mean HH soc security income pst 12mo' /
   A1SJ12    'HH gvnt assist income pst 12 mo' /
   A1SJ12M   'Mean HH gvnt assist income pst 12mo' /
   A1SJ13    'HH all oth income past 12mo' /
   A1SJ13M   'Mean HH all oth income pst 12mo' /
   A1SHHTOT  'Household total income pst 12mo' /
   A1SJ14    'Money aft pay off all your debts' /
   A1SJ15    'How much money/debt aft pay off' /
   A1SASSET  'Assets in $100' /
   A1SJ16    'Pension/retiremt by empl or union' /
   A1SJ17    'Own IRA or Keogh' /
   A1SJ18    'Own oth pension/retiremt plan' /
   A1SJ19    'S/P pension/retiremt by empl or union' /
   A1SK1     'Contribution to oths welfare now' /
   A1SK2     'Contrib to oths welfare 10 yrs ago' /
   A1SK3     'Contrib to oths welfare 10 yrs ahead' /
   A1SK4     'Control contrib to oths welfare' /
   A1SK5     'Effort into contrib to oths welfare' /
   A1SK6A    'You made uniq contrib to society' /
   A1SK6B    'You hav skills can pass along' /
   A1SK6C    'Many come to you for advice' /
   A1SK6D    'You feel oths need you' /
   A1SK6E    'You hav good influence on oths' /
   A1SK6F    'You like to teach oths' /
   A1SGENER  'Loyola Generativity Scale' /
   A1SK7A    'Drop plan when chldrn troubled' /
   A1SK7B    'Contact adult chldrn regularly' /
   A1SK7C    'Raise chldrn for frnd if died' /
   A1SK7D    'Drop plan when spouse troubled' /
   A1SK7E    'Take adult chldrn back into home' /
   A1SK7F    'Take frnd into home' /
   A1SK7G    'Call parents regularly' /
   A1SK7H    'Give money to frnd' /
   A1SK7I    'Serve on a jury if called' /
   A1SK7J    'Keep informed abt ntl news' /
   A1SK7K    'Testify in court for accident' /
   A1SK7L    'Vote in local/ntl election' /
   A1SK7M    'Do more than oths on job' /
   A1SK7N    'Wrk hard even if dislike emplyer' /
   A1SK7O    'Cancel visit frnd to wk overtime' /
   A1SK7P    'Pay more so everyone had hlthcare' /
   A1SK7Q    'Volunteer for social causes' /
   A1SK7R    'Collect contribs for med resrch' /
   A1SK7A1S  'Vote for law help oths inc my tax' /
   A1SPRIOB  'Primary obligs - fam/frnd - 3 factor mod' /
   A1SCVOB3  'Civic/Job obligs - 3 factor mod' /
   A1SCVOB5  'Civic obligs - 5 factor mod' /
   A1SWKOB   'Work obligs - 5 factor mod' /
   A1SALTRU  'Altruism - 3 factor mod' /
   A1SK8A    'Hrs/mo volunteer for hospital etc' /
   A1SK8B    'Hrs/mo volunteer for school etc' /
   A1SK8C    'Hrs/mo volunteer for political etc' /
   A1SK8D    'Hrs/mo volunteer for oth org/chrty' /
   A1SK9A    'Time/mo attend religious service' /
   A1SK9B    'Time/mo attend religious meeting' /
   A1SK9C    'Time/mo attend prof/union meeting' /
   A1SK9D    'Time/mo attend sport/soc meeting' /
   A1SK9E    'Times/mo attend any oth meeting' /
   A1SK10A   'Hrs giv emotnl supp spouse/ptnr' /
   A1SK10B   'Hrs giv emotnl supp parent/grdn' /
   A1SK10C   'Hrs giv emotnl supp in-law' /
   A1SK10D   'Hrs giv emotnl supp children' /
   A1SK10E   'Hrs giv emotnl supp oth family/frnd' /
   A1SK10F   'Hrs giv emotnl supp anyone else' /
   A1SPSUPE  'Monthly hrs give supp/advice' /
   A1SK11A   'Hrs recv emotnl supp spouse/ptnr' /
   A1SK11B   'Hrs recv emotnl supp parent/grdn' /
   A1SK11C   'Hrs recv emotnl supp in-law' /
   A1SK11D   'Hrs recv emotnl supp children' /
   A1SK11E   'Hrs recv emotnl supp oth fam/frnd' /
   A1SK11F   'Hrs recv emotnl supp anyone else' /
   A1SRSUPE  'Monthly hrs recv supp/advice' /
   A1SK12A   'Hrs giv unpaid asst parent/grdn' /
   A1SK12B   'Hrs giv unpaid asst in-law' /
   A1SK12C   'Hrs giv unpaid asst children' /
   A1SK12D   'Hrs giv unpaid asst oth fam/frnd' /
   A1SK12E   'Hrs giv unpaid asst anyone else' /
   A1SPSUPI  'Monthly hrs giv asst fam/frnd' /
   A1SK13A   'Hrs recv unpaid asst parent/grdn' /
   A1SK13B   'Hrs recv unpaid asst in-law' /
   A1SK13C   'Hrs recv unpaid asst children' /
   A1SK13D   'Hrs recv unpaid asst oth fam/frnd' /
   A1SK13E   'Hrs recv unpaid asst community vlntr' /
   A1SK13F   'Hrs recv unpaid asst religous grps' /
   A1SK13G   'Hrs recv unpaid asst non gov agcy' /
   A1SK13H   'Hrs recv unpaid asst any gov agcy' /
   A1SRSUIF  'Monthly hrs recv asst fam/frnd' /
   A1SRSUIO  'Monthly hrs recv asst non fam/frnd' /
   A1SK14A   '$/mo giv to parent/grdn' /
   A1SK14B   '$/mo giv to in-law' /
   A1SK14C   '$/mo giv to children' /
   A1SK14D   '$/mo giv to oth fam/frnd' /
   A1SK14E   '$/mo giv to anyone else' /
   A1SK14F   '$/mo giv to relig grp' /
   A1SK14G   '$/mo giv to politcal org' /
   A1SK14H   '$/mo giv to any oth org' /
   A1SK15A   '$/mo recv frm parent/grdn' /
   A1SK15B   '$/mo recv frm in-law' /
   A1SK15C   '$/mo recv frm children' /
   A1SK15D   '$/mo recv frm oth fam/frnd' /
   A1SK15E   '$/mo recv frm relig grp' /
   A1SK15F   '$/mo rec frm non gov org' /
   A1SK15G   '$/mo recv frm gov org' /
   A1SK16A   'Live w/aging parent' /
   A1SK16B   'Live w/adult chldren' /
   A1SK16C   'Live w/grandchldren' /
   A1SK16D   'Live w/oth frnd/fam' /
   A1SK17A   'World too complex for me' /
   A1SK17B   'Not belong to community' /
   A1SK17C   'People do favor expect nothing' /
   A1SK17D   'Hav somethg valuable for world' /
   A1SK17E   'World is better for everyone' /
   A1SK17F   'Feel close to community' /
   A1SK17G   'My acts not valuable to commnty' /
   A1SK17H   'Not mk sense of world happenings' /
   A1SK17I   'Society stop mk progress' /
   A1SK17J   'People not care oths problem' /
   A1SK17K   'Commnty is a source of comfort' /
   A1SK17L   'Easy to predict societys future' /
   A1SK17M   'Society not improve for me' /
   A1SK17N   'Believe people are kind' /
   A1SK17O   'Hav noth important for society' /
   A1SSWBMS  'Meaningfulness of society' /
   A1SSWBSI  'Social integration' /
   A1SSWBAO  'Acceptance of others' /
   A1SSWBSC  'Social contribution' /
   A1SSWBSA  'Social actualization' /
   A1SL1     'Contact w/neighbors' /
   A1SL2     'Converse/Soc w/nghbrs' /
   A1SL3     'Yrs live in current nghbrhood' /
   A1SL4     'Own home outright/mtgage/rent' /
   A1SL5A    'Feel safe alone in nghbrhd/day' /
   A1SL5B    'Feel safe alone in nghbrhd/nite' /
   A1SL5C    'Home as nice as oths' /
   A1SL5D    'Proud of my home' /
   A1SL5E    'Can call on nghbr help if needed' /
   A1SL5F    'Oths live in better nghbrhd' /
   A1SL5G    'Peop in my nghbrhd trust each oth' /
   A1SL5H    'Do not invite others to my home' /
   A1SL5I    'Nghbrhd kept in good repair' /
   A1SL5J    'Feel good abt my home and nghbrhd' /
   A1SL5K    'Nghbrhd kept clean' /
   A1SL5L    'Hopeless to improv my home/nghbrhd' /
   A1SHOMET  'Perceived neighborhood quality' /
   A1SPIHOM  'Perceived inequality - home' /
   A1SM1     'Contact w/family members' /
   A1SM2     'Family members care about you' /
   A1SM3     'Family members understand you' /
   A1SM4     'Rely on family members for help' /
   A1SM5     'Open up to family members' /
   A1SM6     'Family members demand too much' /
   A1SM7     'Family members criticize you' /
   A1SM8     'Family members let you down' /
   A1SM9     'Family members get on nerves' /
   A1SFAMSO  'Family Affectual Solidarity' /
   A1SKINPO  'Family positive to R' /
   A1SKINNE  'Family negative to R' /
   A1SM10    'Contact w/friends' /
   A1SM11    'Friends care about you' /
   A1SM12    'Friends understand you' /
   A1SM13    'Rely on friends for help' /
   A1SM14    'Open up to friends' /
   A1SFDSOL  'Friendship Affectual Solidarity' /
   A1SM15    'Friends demand too much' /
   A1SM16    'Friends criticize you' /
   A1SM17    'Friends let you down' /
   A1SM18    'Friends get on nerves' /
   A1SFDSPO  'Friends positive to R' /
   A1SFDSNE  'Friends negative to R' /
   A1SM19    'Frnd/Rel ask your advice' /
   A1SM20    'You ask frnd/rel for advice' /
   A1SM21A1  'S/P chron disease pst 12mo' /
   A1SM21A2  'Parent chron disease pst 12mo' /
   A1SM21A3  'Children chron disease pst 12mo' /
   A1SM21B1  'S/P freq minor ill pst 12mo' /
   A1SM21B2  'Parent freq minor ill pst 12mo' /
   A1SM21B3  'Children freq minor ill pst 12mo' /
   A1SM21C1  'S/P emotnl prob pst 12mo' /
   A1SM21C2  'Parent emotnl prob pst 12mo' /
   A1SM21C3  'Children emotnl prob pst 12mo' /
   A1SM21D1  'S/P alc/subst prob pst 12m' /
   A1SM21D2  'Parent alc/subst prob pst 12mo' /
   A1SM21D3  'Children alc/subst prob pst' /
   A1SM21E1  'S/P finan prob pst 12mo' /
   A1SM21E2  'Parent finan prob pst 12mo' /
   A1SM21E3  'Children finan prob pst 12mo' /
   A1SM21F1  'S/P prob at wk/sch pst 12mo' /
   A1SM21F2  'Parent prob at wk/sch pst 12mo' /
   A1SM21F3  'Chldren prob at wk/sch pst 12mo' /
   A1SM21G1  'S/P diff find job pst 12mo' /
   A1SM21G2  'Parent diff find job pst 12mo' /
   A1SM21G3  'Chldren diff find job pst 12mo' /
   A1SM21H1  'S/P marital prob pst 12mo' /
   A1SM21H2  'Parent marital prob pst 12mo' /
   A1SM21H3  'Children marital prob pst 12mo' /
   A1SM21I1  'S/P legal prob pst 12mo' /
   A1SM21I2  'Parent legal prob pst 12mo' /
   A1SM21I3  'Children legal prob pst 12mo' /
   A1SM21J1  'S/P not get along w/oth' /
   A1SM21J2  'Parent not get along w/oth' /
   A1SM21J3  'Children not get along w/oth' /
   SKIP_SN1  'Skip record / SN1-11' /
   A1SN1     'Rltnshp w/ child now' /
   A1SN2     'Rltnshp w/ child 10 yrs ago' /
   A1SN3     'Rltnshp w/ child 10 yrs ahead' /
   A1SN4     'Control over rltnshp w/ child' /
   A1SN5     'Effort into rltnshp w/ child' /
   A1SN6A    'Feel good abt opp for child' /
   A1SN6B    'Fmly life w/chldrn worse than oth' /
   A1SN6C    'Prob w/chldrn caused me shame' /
   A1SN6D    'No resources for fun thg w/child' /
   A1SN6E    'Done for chldrn as much as oth' /
   A1SN6F    'Pride for what done for child' /
   A1SPIFAM  'Perceived inequality - family' /
   A1SN7A1   'You stop job for child care' /
   A1SN7A2   'S/P stop job for child care' /
   A1SN7B1   'You cut job hrs for child care' /
   A1SN7B2   'S/P cut job hrs for child care' /
   A1SN7C1   'You wk longer meet child need' /
   A1SN7C2   'S/P wk longer to meet child need' /
   A1SN7D1   'You switch job time for child' /
   A1SN7D2   'S/P switch job time for child' /
   SKIP_SN8  'Skip record / SN8-11' /
   A1SN8     'Days you change sched to care child' /
   A1SN9     'Days S/P change sched to care child' /
   A1SN10    'Provide childcare stresses schl yr' /
   A1SN11    'Provide childcare stresses summer' /
   SKIP_SP1  'Skip record - sect P' /
   A1SP1     'Rate marriage/close relatn now' /
   A1SP2     'Rate marr/close relatn 10 yrs ago' /
   A1SP3     'Rate marr/close relatn 10 yrs ahead' /
   A1SP4     'Control over marr/close relatn' /
   A1SP5     'Thought/effort into marr/close relatn' /
   A1SP6     'Describe relatn w/ S/P' /
   A1SP7     'Relatn w/ S/P in trouble' /
   A1SP8     'Chance separate from S/P' /
   A1SP9A    'Disagr w/ S/P on money issue' /
   A1SP9B    'Disagr w/ S/P on HH tasks' /
   A1SP9C    'Disagr w/ S/P on leisure acts' /
   A1SSPDIS  'Spouse/Partner Disagreement' /
   A1SMARRS  'Marital risk' /
   A1SP10    'Talk about impt issue w/ S/P' /
   A1SP11    'S/P cares about you' /
   A1SP12    'S/P understands you' /
   A1SP13    'S/P appreciates you' /
   A1SP14    'S/P can be relied on' /
   A1SP15    'S/P open to talk' /
   A1SP16    'S/P can relax with' /
   A1SSPSOL  'Spouse Affectual Solidarity' /
   A1SSPEMP  'S/P empathy to R' /
   A1SP17    'S/P makes many demands' /
   A1SP18    'S/P makes you feel tense' /
   A1SP19    'S/P argues w/ you' /
   A1SP20    'S/P criticizes you' /
   A1SP21    'S/P lets you down' /
   A1SP22    'S/P gets on your nerves' /
   A1SSPCRI  'S/P critical to R' /
   A1SP23    'Who does more HH chores' /
   A1SP24    'Hrs you do HH chores' /
   A1SP25    'Hrs S/P does HH chores' /
   A1SP26    'How fair is HH chores to you' /
   A1SP27    'How fair is HH chores to S/P' /
   A1SP28A   'Mk decision w/ S/P as a term' /
   A1SP28B   'Talk w/ S/P mk thgs better' /
   A1SP28C   'Talk w/ S/P bef mk plans' /
   A1SP28D   'Ask S/P for advice bef decision' /
   A1SSPDEC  'Spouse/Partner Joint Decision Making' /
   A1SP29    'S/P overall phy health' /
   A1SP30    'S/P overall mentl health' /
   A1SP31    'S/P wk for pay now' /
   A1SP32    'Hrs/wk S/P wk at main job' /
   A1SP33    'Hrs/wk S/P wk at oth job' /
   A1SP34A   'S/P work days' /
   A1SP34B   'S/P work evenings' /
   A1SP34C   'S/P work nights' /
   A1SP34D   'S/P work weekends' /
   A1SP35    'S/P begin job (military time) (HHMM)' /
   A1SP36    'S/P end job (military time) (HHMM)' /
   A1SP37    '# Minutes S/P commutes to work' /
   A1SP38    'Chance S/P keep cur job' /
   A1SQ1     'Sexual aspects now' /
   A1SQ2     'Sexual aspects 10 yrs ago' /
   A1SQ3     'Sexual aspects 10 yrs ahead' /
   A1SQ4     'Control over sexual aspects' /
   A1SQ5     'Thought/effort into sexual aspects' /
   A1SQ6     '# sex partners past yr' /
   A1SQ7     'Sexual orientation' /
   A1SQ8     'How often sex past 6 mo' /
   A1SR1     'Religious preference' /
   A1SR1A    'Christian religion' /
   A1SR2A    'How religious' /
   A1SR2B    'How spiritual' /
   A1SR2C    'How superstitious' /
   A1SR2D    'Religious importance' /
   A1SR2E    'Spirituality importance' /
   A1SR2F    'Relig instruct import for child' /
   A1SR2G    'Identify with a religious group' /
   A1SR2H    'Prefer same religion people' /
   A1SR2I    'Marry within same religion' /
   A1SR3     'Many vs one relig belief' /
   A1SR4     'Attend religious service' /
   A1SR5     'Seek comfort thru spiritual means' /
   A1SR6     'Decisions based on spiritual beliefs' /
   SKIP_SR7  'Skip record - SR7-8' /
   A1SR7     'Born again christian' /
   A1SR8     'Bible is gods word' /
   A1SA1S1_1 'American Indian/Native American' /
   A1SA1S1_2 'Bahamas' /
   A1SA1S1_3 'Canada' /
   A1SA1S1_4 'Costa Rica' /
   A1SA1S1_5 'Cuba' /
   A1SA1S1_6 'Dominican Republic' /
   A1SA1S1_7 'El Salvador' /
   A1SA1S1_8 'Guatemala' /
   A1SA1S1_9 'Haiti' /
   A1SA1S1_10 'Honduras' /
   A1SA1S1_11 'Jamaica' /
   A1SA1S1_12 'Mexico' /
   A1SA1S1_13 'Nicaragua' /
   A1SA1S1_14 'Panama' /
   A1SA1S1_15 'Puerto Rico' /
   A1SA1S1_16 'St. Vincent' /
   A1SA1S1_17 'Trinidad' /
   A1SA1S1_18 'Central America/Caribbean' /
   A1SA1S1_19 'North/Central America/Other' /
   A1SA1S1_20 'Argentina' /
   A1SA1S1_21 'Bolivia' /
   A1SA1S1_22 'Brazil' /
   A1SA1S1_23 'Chile' /
   A1SA1S1_24 'Colombia' /
   A1SA1S1_25 'Ecuador' /
   A1SA1S1_26 'Peru' /
   A1SA1S1_27 'Venezuela' /
   A1SA1S1_28 'South America-no specific country' /
   A1SA1S1_29 'South America/other' /
   A1SA1S1_30 'Czechoslovakia' /
   A1SA1S1_31 'England' /
   A1SA1S1_32 'France' /
   A1SA1S1_33 'Germany' /
   A1SA1S1_34 'Greece' /
   A1SA1S1_35 'Hungary' /
   A1SA1S1_36 'Ireland' /
   A1SA1S1_37 'Italy' /
   A1SA1S1_38 'Norway' /
   A1SA1S1_39 'Poland' /
   A1SA1S1_40 'Portugal' /
   A1SA1S1_41 'Russia or Soviet Union' /
   A1SA1S1_42 'Scotland' /
   A1SA1S1_43 'Spain' /
   A1SA1S1_44 'Sweden' /
   A1SA1S1_45 'The Netherlands' /
   A1SA1S1_46 'Yugoslavia' /
   A1SA1S1_47 'Eastern Europe-no specific country' /
   A1SA1S1_48 'Western Europe-no specific country' /
   A1SA1S1_49 'Europe/other' /
   A1SA1S1_50 'China' /
   A1SA1S1_51 'India' /
   A1SA1S1_52 'Japan' /
   A1SA1S1_53 'Korea' /
   A1SA1S1_54 'Philippines' /
   A1SA1S1_55 'Singapore' /
   A1SA1S1_56 'Taiwan' /
   A1SA1S1_57 'Thailand' /
   A1SA1S1_58 'Asia-no specific country' /
   A1SA1S1_59 'Asia/other' /
   A1SA1S1_60 'Egypt' /
   A1SA1S1_61 'Kenya' /
   A1SA1S1_62 'Nigeria' /
   A1SA1S1_63 'South africa' /
   A1SA1S1_64 'Zaire' /
   A1SA1S1_65 'Zimbabwe' /
   A1SA1S1_66 'Africa-no specific country' /
   A1SA1S1_67 'Africa/other' /
   A1SA1S1_68 'Iran' /
   A1SA1S1_69 'Iraq' /
   A1SA1S1_70 'Israel' /
   A1SA1S1_71 'Lebanon' /
   A1SA1S1_72 'Pakistan' /
   A1SA1S1_73 'Saudi arabia' /
   A1SA1S1_74 'Middle East-no specific country' /
   A1SA1S1_75 'Middle East/other' /
   A1SA1S1_76 'Other Country 1' /
   A1SA1S1_77 'Other Country 2' /
   A1SS2     'Best country of ethnic origin' /
   A1SS3     'Identify w/ people of same ethnicity' /
   A1SS4     'Prefer people of same ethnic group' /
   A1SS5     'Marry within ethnic group' /
   A1SS6_1   'White' /
   A1SS6_2   'Black and/or African American' /
   A1SS6_3   'Native Amer or Aleutian Islander' /
   A1SS6_4   'Asian or Pacific Islander' /
   A1SS6_5   'Other' /
   A1SS7     'Race' /
   A1SS8     'Identify with racial group' /
   A1SS9     'Prefer same racial group' /
   A1SS10    'Marry within racial group' /
   A1SS11    'U.S. citizen' /
   A1SS12    'Identify with U.S. citizen' /
   A1SS13A   '# Discrim_seeking high edu' /
   A1SS13B   '# Discrim_denied schlship' /
   A1SS13C   '# Discrim_denied job' /
   A1SS13D   '# Discrim_promotion' /
   A1SS13E   '# Discrim_fired fm job' /
   A1SS13F   '# Discrim_buy a home' /
   A1SS13G   '# Discrim_remain in neighbr' /
   A1SS13H   '# Discrim_by police' /
   A1SS13I   '# Discrim_denied bank loan' /
   A1SS13J   '# Discrim_medical care' /
   A1SS13K   '# Discrim_oth service' /
   A1SS14A   'Treated with less courtesy' /
   A1SS14B   'Treated with less respect' /
   A1SS14C   'Receive poorer service' /
   A1SS14D   'People think you are not smart' /
   A1SS14E   'People are afraid of you' /
   A1SS14F   'People think you are dishonest' /
   A1SS14G   'People think you are not as good' /
   A1SS14H   'People call you names' /
   A1SS14I   'People threaten you' /
   A1SDISCR  'Discrimination_Dichotomous SS13-SS14' /
   A1SS15_1  'Discrim_age' /
   A1SS15_2  'Discrim_gender' /
   A1SS15_3  'Discrim_race' /
   A1SS15_4  'Discrim_ethnicity/nationality' /
   A1SS15_5  'Discrim_religion' /
   A1SS15_6  'Discrim_height or weight' /
   A1SS15_7  'Discrim_appearance' /
   A1SS15_8  'Discrim_physical disability' /
   A1SS15_9  'Discrim_sexual orientation' /
   A1SS15_10 'Discrim_other reason' /
   A1SS16    'Discrim interferes w/ life' /
   A1SS17    'Life harder due to discrim' /
   A1ST1     'Rate life now' /
   A1ST2     'Rate life 10 yrs ago' /
   A1ST3     'Rate life 10 yrs ahead' /
   A1ST4     'Control over life' /
   A1ST5     'Thought/effort into life' /
   A1SSATIS  'Life Satisfaction (5-items)' /
   .


* SPSS VALUE LABELS COMMAND.

VALUE LABELS
   SAMPLMAJ  1 'MAIN RDD' 2 'SIBLING' 3 'TWIN' 4 'CITY OVERSAMPLES' /
   A1STATUS  1 'COMPLETED M1 PHONE ONLY' 2 'COMPLETED M1 PHONE AND SAQ' /
   A1PBYEAR  9998 'REFUSED' /
   A1PAGE_M2 98 'REFUSED' /
   A1PRSEX   1 'MALE' 2 'FEMALE' 7 'DONT KNOW' 8 'REFUSED' /
   QL2       0 'ZERO' 1 'ONE' 2 'TWO' 3 'THREE' 4 'FOUR' 5 'FIVE' 9 'INAPP' /
   QL3       0 'ZERO' 1 'ONE' 2 'TWO' 3 'THREE' 4 'FOUR' 5 'FIVE' 9 'INAPP' /
   HH_CELL   1 'MALE ONLY HH' 2 'FEMALE ONLY HH' 3 'BOTH HH' 9 'INAPP' /
   NPRB_SEX  35 '.35' 50 '.50' 65 '.65' 100 '1.00' 999 'INAPP' /
   SEX_CELL  1 '1 OF GENDER SELECTED IN HH' 2 '2 OF GENDER SELECTED IN HH'
             3 '3 OF GENDER SELECTED IN HH'
             4 '4 OR MORE OF GENDER SELECTED IN HH' 9 'INAPP' /
   NPRB_WHO  20 '.20' 25 '.25' 33 '.33' 34 '.34' 50 '.50' 100 '1.00'
             999 'INAPP' /
   WHO       1 'ONLY MALE, FEMALE' 2 'OLDER MALE, FEMALE'
             3 'YOUNGER MALE, FEMALE' 4 'OLDEST MALE, FEMALE'
             5 '2ND OLDEST MALE, FEMALE' 6 'YOUNGEST MALE, FEMALE'
             7 'MALE, FEMALE-MOST RECENT B-DAY' 9 'INAPP' /
   PROB_R    35 '.35' 45 '.45' 50 '.50' 55 '.55' 60 '.60' 65 '.65' 70 '.70'
             75 '.75' 80 '.80' 90 '.90' 100 '1.00' 999 'INAPP' /
   MO        1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 99 'INAPP' /
   DAY       99 'INAPP' /
   RECON     1 'RETURNED, SOME/ALL DATA' 2 'RETURNED, NO DATA'
             3 'NOT RETURNED' 9 'INAPP' /
   MO_RCVD   1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 13 'JANUARY-1996' 14 'FEBRUARY-1996'
             15 'MARCH-1996' 16 'APRIL-1996' 98 'REFUSED/MISSING' 99 'INAPP'
             /
   DY_RCVD   98 'REFUSED/MISSING' 99 'INAPP' /
   TOT_SIBS  9 'INAPP' /
   ZYGCAT    1 'MONOZYGOTIC' 2 'DIZYGOTIC - SAME SEX'
             3 'DIZYGOTIC - DIFFERENT SEX' 4 'UNABLE TO DETERMING ZYGOSITY' /
   A1PA4     1 'POOR' 2 'FAIR' 3 'GOOD' 4 'VERY GOOD' 5 'EXCELLENT'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA5     1 'POOR' 2 'FAIR' 3 'GOOD' 4 'VERY GOOD' 5 'EXCELLENT'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA6     1 'MUCH BETTER' 2 'SOMEWHAT BETTER' 3 'ABOUT THE SAME'
             4 'SOMEWHAT WORSE' 5 'MUCH WORSE' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA7     97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1PA7A    1 'PHYSICAL' 2 'MENTAL' 3 'COMBINATION' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA7BA   97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1PA7BB   97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1PA7BC   97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1PA8     97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1PA8A    1 'PHYSICAL' 2 'MENTAL' 3 'COMBINATION' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA8BA   97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1PA8BB   97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1PA8BC   97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1PA9     1 'POOR' 2 'FAIR' 3 'GOOD' 4 'VERY GOOD' 5 'EXCELLENT'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA10    1 'POOR' 2 'FAIR' 3 'GOOD' 4 'VERY GOOD' 5 'EXCELLENT'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA11    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA11A   96 'CONGENITAL/AT BIRTH' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1PA11BA  1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA11BB  1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA11BC  1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA11BD  1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA11BE  1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA11BF  1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA11BG  1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA11BH  1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA11BI  1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA11BJ  1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA11BK  1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA11C   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA11D   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA12    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA12A   7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1PA13    1 'HIGHER' 2 'LOWER' 3 'ABOUT THE SAME' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA13A   1 'A LOT' 2 'SOMEWHAT' 3 'A LITTLE' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA13B   1 'A LOT' 2 'SOMEWHAT' 3 'A LITTLE' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PHRTRS  0 'LOWEST RISK' 1 'LOWER RISK' 2 'LOW RISK' 3 'AVERAGE RISK'
             4 'HIGH RISK' 5 'HIGHER RISK' 6 'HIGHEST RISK'
             9 'NOT CALCULATED' /
   A1PHRTDX  0 'NOT PERCEIVED AT HIGH RISK' 1 'PERCEIVED AT HIGH RISK'
             9 'NOT CALCULATED' /
   A1PA14    96 'ADOPTED/NOT A BLOOD RELATIVE' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1PA15    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA16    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA17    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA18    1 'BYPASS' 2 'MEDICATION' 7 'DONT KNOW' 8 'REFUSED/MISSING'
             9 'INAPP' /
   A1PA19    1 'VERY' 2 'SOMEWHAT' 3 'NOT VERY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA20    1 'BYPASS' 2 'EXERCISE' 7 'DONT KNOW' 8 'REFUSED/MISSING'
             9 'INAPP' /
   A1PA21    1 'VERY' 2 'SOMEWHAT' 3 'NOT VERY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA22    1 'ACCEPT' 2 'SECOND OPINION' 7 'DONT KNOW' 8 'REFUSED/MISSING'
             9 'INAPP' /
   A1PA22A   1 'VERY' 2 'SOMEWHAT' 3 'NOT VERY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA23    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA24    1 'YES' 2 'NO' 3 'CANNOT WALK BECAUSE OF CHEST PAIN'
             4 'CANNOT WALK FOR OTHER REASONS' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA25    1 'STOP' 2 'SLOW DOWN' 3 'CONTINUE AT THE SAME PACE'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA26    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA27    1 '10 MINUTES OR LESS' 2 'MORE THAN 10 MINUTES' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA28    1 'CENTER OF CHEST' 2 'LEFT SIDE OF CHEST ONLY'
             3 'LEFT SIDE OF CHEST AND LEFT ARM' 4 'SOMEWHERE ELSE'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PANGIN  0 'BEST ANGINA CLASS' 1 'GOOD ANGINA CLASS' 2 'BAD ANGINA CLASS'
             3 'WORST ANGINA CLASS' 6 'DID NOT MEET ROSE CRITERIA FOR ANGINA'
             9 'NOT CALCULATED' /
   A1PA29    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA29A   97 '97 OR MORE' 898 'REFUSED/MISSING' 997 'DONT KNOW'
             999 'INAPP' /
   A1PA29B   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA29CA  1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA29CB  1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA29CC  1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA29CD  1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA29CE  1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA29CF  1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA29CG  1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA29CH  1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA29CI  1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA29CJ  1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA29CK  1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA33    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA34    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA30    0 'LESS THAN 1 MONTH' 996 'NEVER' 997 'DONT KNOW'
             998 'REFUSED/MISSING' 999 'INAPP' /
   A1PA31    1 'LOW' 2 'ABOUT NORMAL' 3 'SLIGHTLY RAISED' 4 'HIGH'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA32S   997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   A1PA32D   997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   A1PA36    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA37    1 'HIGHER' 2 'LOWER' 3 'ABOUT THE SAME' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA37A   1 'A LOT' 2 'SOMEWHAT' 3 'A LITTLE' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA37B   1 'A LOT' 2 'SOMEWHAT' 3 'A LITTLE' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PCACRS  0 'LOWEST RISK' 1 'LOWER RISK' 2 'LOW RISK' 3 'AVERAGE RISK'
             4 'HIGH RISK' 5 'HIGHER RISK' 6 'HIGHEST RISK'
             9 'NOT CALCULATED' /
   A1PCACDX  0 'NOT PERCEIVED AT HIGH RISK' 1 'PERCEIVED AT HIGH RISK'
             9 'NOT CALCULATED' /
   A1PA38    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA39A   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA39B   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA39C   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA39D   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA39E   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA39F   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA39G   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA39H   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA39I   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA39J   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA41    96 'NEVER HAD A CIGARETTE' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1PA40    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA42    97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1PA43    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA44    97 '97 OR MORE' 898 'REFUSED/MISSING' 997 'DONT KNOW'
             999 'INAPP' /
   A1PA45    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA46    97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1PA47    97 '97 OR MORE' 898 'REFUSED/MISSING' 997 'DONT KNOW'
             999 'INAPP' /
   A1PA52    96 'NEVER HAD A DRINK' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1PA53    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA53A   97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1PA54    1 'EVERY DAY' 2 '5 OR 6 DAYS A WEEK' 3 '3 OR 4 A DAYS A WEEK'
             4 '1 OR 2 DAYS A WEEK' 5 'LESS THAN ONE DAY A WEEK'
             6 'NEVER DRINK' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA54A   1 '3 OR 4 DAYS A MONTH' 2 '1 OR 2 DAYS A MONTH'
             3 'LESS OFTEN THAN ONE DAY A MONTH' 4 'NEVER DRINK'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA55    97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1PA56    97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1PA57    1 'YES' 2 'NO' 6 'NOT DEP, ON MEDICATION' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA58    1 'ALL DAY LONG' 2 'MOST OF THE DAY' 3 'ABOUT HALF THE DAY'
             4 'LESS THAN HALF THE DAY' 7 'DONT KNOW' 8 'REFUSED/MISSING'
             9 'INAPP' /
   A1PA59    1 'EVERY DAY' 2 'ALMOST EVERY DAY' 3 'LESS OFTEN THAN THAT'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA60    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA61    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA62    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA62A   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA63    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA63A   1 'EVERY NIGHT' 2 'NEARLY EVERY NIGHT' 3 'LESS OFTEN THAN THAT'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA64    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA65    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA66    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PDEPAF  0 'LOWEST DEPRESSED AFFECT' 7 'HIGHEST DEPRESSED AFFECT' /
   A1PDEPAD  0 'NEGATIVE' 1 'POSITIVE' /
   A1PA67    97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1PA68MO  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 96 'CURRENTLY FEEL THIS WAY' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1PA68YR  94 '1994' 95 '1995' 96 '1996' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1PA69    1 'YES' 2 'NO' 6 'NO LOSS OF INTREST, ON MEDICATION'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA70    1 'ALL DAY LONG' 2 'MOST OF THE DAY' 3 'ABOUT HALF THE DAY'
             4 'LESS THAN HALF THE DAY' 7 'DONT KNOW' 8 'REFUSED/MISSING'
             9 'INAPP' /
   A1PA71    1 'EVERY DAY' 2 'ALMOST EVERY DAY' 3 'LESS OFTEN THAN THAT'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA72    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA73    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA73A   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA74    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA74A   1 'EVERY NIGHT' 2 'NEARLY EVERY NIGHT' 3 'LESS OFTEN THAN THAT'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA75    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA76    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA77    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PANHED  0 'LOWEST DEPRESSION SCORE/ANHEDONIA'
             6 'HIGHEST DEPRESSION SCORE/ANHEDONIA' /
   A1PANHDX  0 'NEGATIVE' 1 'POSITIVE' /
   A1PDEPRE  0 'LOWEST DEPRESSION' 7 'HIGHEST DEPRESSION' /
   A1PDEPDX  0 'NEGATIVE' 1 'POSITIVE' /
   A1PA78    97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1PA79MO  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1PA79YR  94 '1994' 95 '1995' 96 '1996' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1PA80    1 'MORE' 2 'LESS' 3 'ABOUT THE SAME' 6 'DONT WORRY AT ALL'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA80A   1 'A LOT' 2 'SOMEWHAT' 3 'A LITTLE' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA81    1 'EVERY DAY' 2 'JUST ABOUT EVERY DAY' 3 'MOST DAYS'
             4 'ABOUT HALF THE DAYS' 5 'LESS THAN HALF THE DAYS'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA81A   1 'ALL DAY LONG' 2 'MOST OF THE DAY' 3 'ABOUT HALF THE DAY'
             4 'LESS THAN HALF THE DAY' 7 'DONT KNOW' 8 'REFUSED/MISSING'
             9 'INAPP' /
   A1PA82    1 'ONE THING' 2 'MORE THAN ONE' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA82A   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA83    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA83A   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA84    1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA84A   1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA85A   1 'MOST DAYS' 2 'ABOUT HALF THE DAYS'
             3 'LESS THAN HALF THE DAYS' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA85B   1 'MOST DAYS' 2 'ABOUT HALF THE DAYS'
             3 'LESS THAN HALF THE DAYS' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA85C   1 'MOST DAYS' 2 'ABOUT HALF THE DAYS'
             3 'LESS THAN HALF THE DAYS' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA85D   1 'MOST DAYS' 2 'ABOUT HALF THE DAYS'
             3 'LESS THAN HALF THE DAYS' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA85E   1 'MOST DAYS' 2 'ABOUT HALF THE DAYS'
             3 'LESS THAN HALF THE DAYS' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA85F   1 'MOST DAYS' 2 'ABOUT HALF THE DAYS'
             3 'LESS THAN HALF THE DAYS' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA85G   1 'MOST DAYS' 2 'ABOUT HALF THE DAYS'
             3 'LESS THAN HALF THE DAYS' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA85H   1 'MOST DAYS' 2 'ABOUT HALF THE DAYS'
             3 'LESS THAN HALF THE DAYS' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA85I   1 'MOST DAYS' 2 'ABOUT HALF THE DAYS'
             3 'LESS THAN HALF THE DAYS' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA85J   1 'MOST DAYS' 2 'ABOUT HALF THE DAYS'
             3 'LESS THAN HALF THE DAYS' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PANXIE  0 'LOWEST GADCON SCORE' 10 'HIGHEST GADCON SCORE' /
   A1PANXTD  0 'NEGATIVE' 1 'POSITIVE' /
   A1PA86    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA87    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA87A   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA88    97 '97 OR MORE' 898 'REFUSED/MISSING' 997 'DONT KNOW'
             999 'INAPP' /
   A1PA89    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA90A   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA90B   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA90C   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA90D   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA90E   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PA90F   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PPANIC  0 'LOWEST PANCON SCORE' 6 'HIGHEST PANCON SCORE' /
   A1PPANDX  0 'NEGATIVE' 1 'POSITIVE' /
   A1PB1     1 'NO SCHOOL/SOME GRADE SCHOOL'
             2 'EIGHTH GRADE/ JUNIOR HIGH SCHOOL' 3 'SOME HIGH SCHOOL'
             4 'GED' 5 'GRADUATED FROM HIGH SCHOOL'
             6 '1 TO 2 YEARS OF COLLEGE, NO DEGREE YET'
             7 '3 OR MORE YEARS OF COLLEGE, NO DEGREE YET'
             8 'GRAD 2 YEAR COLLEGE OR VOC SCHOOL, OR ASSOCIATES DEGREE'
             9 'GRAD 4 OR 5 YEAR COLLEGE OR BACHELORS DEGREE'
             10 'SOME GRADUATE SCHOOL' 11 'MASTERS DEGREE'
             12 'PH.D, ED.D, MD, DDS, LLB, LLD, JD, OR OTHER PROF DEGREE'
             97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PMQB1   1 'SOME GRADE SCHOOL TO GED' 2 'GRADUATED HIGH SCHOOL'
             3 'SOME COLLEGE (NO BACHELORS DEGREE)'
             4 'GRAD COLLEGE TO DOCTORATE OR PROFESSIONAL DEGREE'
             9 'NOT CALCULATED' /
   A1PEDUCP  1 'SOME GRADE SCHOOL TO SOME HIGH SCHOOL'
             2 'GED TO GRADUATED HIGH SCHOOL'
             3 'SOME COLLEGE (NO BACHELORS DEGREE)'
             4 'GRAD COLLEGE TO DOCTORATE OR PROFESSIONAL DEGREE'
             9 'NOT CALCULATED' /
   A1PEDU    1 'GRADUATED HIGH SCHOOL OR LESS' 2 'SOME COLLEGE OR MORE'
             9 'NOT CALCULATED' /
   A1PSXEDAG 1 'MALE/LO/YOUNGER' 2 'MALE/LO/MIDDLE' 3 'MALE/LO/OLDER'
             4 'MALE/HI/YOUNGER' 5 'MALE/HI/MIDDLE' 6 'MALE/HI/OLDER'
             7 'FEMALE/LO/YOUNGER' 8 'FEMALE/LO/MIDDLE' 9 'FEMALE/LO/OLDER'
             10 'FEMALE/HI/YOUNGER' 11 'FEMALE/HI/MIDDLE'
             12 'FEMALE/HI/OLDER' 99 'NOT CALCULATED' /
   A1PB2     96 'NEVER HAD A PAID JOB' 97 'DONT KNOW' 98 'REFUSED' 99 'INAPP'
             /
   A1PB3A    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB3B    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB3C    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB3D    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB3E    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB3F    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB3G    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB3H    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB3I    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB3J    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB3K    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB5     9996 'NEVER WORKED' 9997 'DONT KNOW' 9998 'REFUSED' 9999 'INAPP'
             /
   A1PB4A    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB4B    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB4C    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB4D    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB4E    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB4F    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB4G    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB6     1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB8_2   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB8_3   9997 'DONT KNOW' 9998 'REFUSED' 9999 'INAPP' /
   A1PB10    1 'HAS EMPLOYER' 2 'SELF-EMPLOYED' 7 'DONT KNOW' 8 'REFUSED'
             9 'INAPP' /
   A1POCC    997 'DONT KNOW' 998 'REFUSED/MISSING'
             999 'INAPP, NO DATA FOR INDIVIDUAL' /
   A1PIND    900 'ARMED SERVICES MEMBER' 997 'DONT KNOW'
             998 'REFUSED/MISSING' 999 'INAPP, NO DATA FOR INDIVIDUAL' /
   A1PTSEI   98 'REFUSED/MISSING' 99 'INAPP' /
   A1PTEARN  8 'REFUSE/MISSING' 9 'INAPP' /
   A1PTEDU   8 'REFUSE/MISSING' 9 'INAPP' /
   A1PFSEI   98 'REFUSED/MISSING' 99 'INAPP' /
   A1PFEARN  8 'REFUSE/MISSING' 9 'INAPP' /
   A1PFEDU   8 'REFUSE/MISSING' 9 'INAPP' /
   A1PMSEI   998 'REFUSED/MISSING' 999 'INAPP' /
   A1PMEARN  8 'REFUSE/MISSING' 9 'INAPP' /
   A1PMEDU   8 'REFUSE/MISSING' 9 'INAPP' /
   R_ABSCRE  998 'REFUSED/MISSING' 999 'INAPP' /
   R_ATMOSP  98 'REFUSED/MISSING' 99 'INAPP' /
   R_BOTH    998 'REFUSED/MISSING' 999 'INAPP' /
   R_BUSPR   998 'REFUSED/MISSING' 999 'INAPP' /
   R_CLERIC  8 'REFUSE/MISSING' 9 'INAPP' /
   R_CLIMB   998 'REFUSED/MISSING' 999 'INAPP' /
   R_CLRDIS  8 'REFUSE/MISSING' 9 'INAPP' /
   R_COLD    98 'REFUSED/MISSING' 99 'INAPP' /
   R_COMMDA  998 'REFUSED/MISSING' 999 'INAPP' /
   R_DATAL   8 'REFUSE/MISSING' 9 'INAPP' /
   R_DATAPR  8 'REFUSE/MISSING' 9 'INAPP' /
   R_DCP     998 'REFUSED/MISSING' 999 'INAPP' /
   R_DEPL    998 'REFUSED/MISSING' 999 'INAPP' /
   R_ENVIRO  8 'REFUSE/MISSING' 9 'INAPP' /
   R_EYHNFT  8 'REFUSE/MISSING' 9 'INAPP' /
   R_FIF     998 'REFUSED/MISSING' 999 'INAPP' /
   R_FMNHR   98 'REFUSED/MISSING' 99 'INAPP' /
   R_FMNYR   99998 'REFUSED/MISSING' 99999 'INAPP' /
   R_FNGRDX  8 'REFUSE/MISSING' 9 'INAPP' /
   R_FRMPRC  8 'REFUSE/MISSING' 9 'INAPP' /
   R_GED     8 'REFUSE/MISSING' 9 'INAPP' /
   R_HAZARD  998 'REFUSED/MISSING' 999 'INAPP' /
   R_HEAT    98 'REFUSED/MISSING' 99 'INAPP' /
   R_INFLU   998 'REFUSED/MISSING' 999 'INAPP' /
   R_INTELL  8 'REFUSE/MISSING' 9 'INAPP' /
   R_MACHPR  998 'REFUSED/MISSING' 999 'INAPP' /
   R_MCHNPR  8 'REFUSE/MISSING' 9 'INAPP' /
   R_MEN     9999998 'REFUSED/MISSING' 9999999 'INAPP' /
   R_MMNHR   98 'REFUSED/MISSING' 99 'INAPP' /
   R_MMNYR   99998 'REFUSED/MISSING' 99999 'INAPP' /
   R_MNLDXT  8 'REFUSED/MISSING' 9 'INAPP' /
   R_MTRCRD  8 'REFUSED/MISSING' 9 'INAPP' /
   R_MVC     998 'REFUSED/MISSING' 999 'INAPP' /
   R_NOISE   998 'REFUSED/MISSING' 999 'INAPP' /
   R_NUMERC  8 'REFUSED/MISSING' 9 'INAPP' /
   R_OBSPRE  998 'REFUSED/MISSING' 999 'INAPP' /
   R_OUT     98 'REFUSED/MISSING' 99 'INAPP' /
   R_PEOPLE  98 'REFUSED/MISSING' 99 'INAPP' /
   R_PEOPRE  998 'REFUSED/MISSING' 999 'INAPP' /
   R_PHYSDM  8 'REFUSED/MISSING' 9 'INAPP' /
   R_PRODPR  98 'REFUSED/MISSING' 99 'INAPP' /
   R_PROTPR  8 'REFUSED/MISSING' 9 'INAPP' /
   R_PRSTPR  998 'REFUSED/MISSING' 999 'INAPP' /
   R_PUS     98 'REFUSED/MISSING' 99 'INAPP' /
   R_REACH   998 'REFUSED/MISSING' 999 'INAPP' /
   R_REPCON  98 'REFUSED/MISSING' 99 'INAPP' /
   R_ROUTPR  998 'REFUSED/MISSING' 999 'INAPP' /
   R_SCINPR  998 'REFUSED/MISSING' 999 'INAPP' /
   R_SEE     998 'REFUSED/MISSING' 999 'INAPP' /
   R_SJC     998 'REFUSED/MISSING' 999 'INAPP' /
   R_SPATIA  8 'REFUSED/MISSING' 9 'INAPP' /
   R_STOOP   998 'REFUSED/MISSING' 999 'INAPP' /
   R_STRGTH  8 'REFUSED/MISSING' 9 'INAPP' /
   R_STS     998 'REFUSED/MISSING' 999 'INAPP' /
   R_SVP     98 'REFUSED/MISSING' 99 'INAPP' /
   R_TALK    998 'REFUSED/MISSING' 999 'INAPP' /
   R_THINGS  98 'REFUSED/MISSING' 99 'INAPP' /
   R_TRAIN   998 'REFUSED/MISSING' 999 'INAPP' /
   R_VARCH   998 'REFUSED/MISSING' 999 'INAPP' /
   R_VERBAL  8 'REFUSED/MISSING' 9 'INAPP' /
   R_WET     98 'REFUSED/MISSING' 99 'INAPP' /
   R_WOMEN   9999998 'REFUSED/MISSING' 9999999 'INAPP' /
   MINDUS_R  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   PROFID_R  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   AGRIC_R   1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   CONSTR_R  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   MANUF_R   1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   TRANSP_R  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   WHOLE_R   1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   RETAIL_R  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   FNANCE_R  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   BUSIN_R   1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   PERSON_R  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   ENTERT_R  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   PUBADM_R  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   MOCCUP_R  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   EXEC_R    1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   PROFOC_R  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   TECH_R    1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   SALES_R   1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   ADMIN_R   1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   SERV_R    1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   FARM_R    1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   CRAFT_R   1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   OPERAT_R  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PB11    997 'DONT KNOW' 998 'REFUSED' 999 'INAPP' /
   A1PB11A   0 'ONLY ONE JOB' 97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB12    997 'DONT KNOW' 998 'REFUSED' 999 'INAPP' /
   A1PB14_2  1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB14_3  9997 '9997 PEOPLE OR MORE' 99997 'DONT KNOW' 99998 'REFUSED'
             99999 'INAPP' /
   A1PB16    1 'HAD EMPLOYER' 2 'SELF-EMPLOYED' 7 'DONT KNOW' 8 'REFUSED'
             9 'INAPP' /
   A1POCP    997 'DONT KNOW' 998 'REFUSED/MISSING'
             999 'INAPP, NO DATA FOR INDIVIDUAL' /
   A1PINDP   900 'ARMED SERVICES MEMBER' 997 'DONT KNOW'
             998 'REFUSED/MISSING' 999 'INAPP, NO DATA FOR INDIVIDUAL' /
   A1PTSEIP  98 'REFUSED/MISSING' 99 'INAPP' /
   A1PTEARP  8 'REFUSED/MISSING' 9 'INAPP' /
   A1PTEDUP  8 'REFUSED/MISSING' 9 'INAPP' /
   A1PFSEIP  98 'REFUSED/MISSING' 99 'INAPP' /
   A1PFEARP  8 'REFUSED/MISSING' 9 'INAPP' /
   A1PFEDUP  8 'REFUSED/MISSING' 9 'INAPP' /
   A1PMSEIP  98 'REFUSED/MISSING' 99 'INAPP' /
   A1PMEARP  8 'REFUSED/MISSING' 9 'INAPP' /
   A1PMEDUP  8 'REFUSED/MISSING' 9 'INAPP' /
   L_ABSCRE  998 'REFUSED/MISSING' 999 'INAPP' /
   L_ATMOSP  98 'REFUSED/MISSING' 99 'INAPP' /
   L_BOTH    98 'REFUSED/MISSING' 99 'INAPP' /
   L_BUSPR   998 'REFUSED/MISSING' 999 'INAPP' /
   L_CLERIC  8 'REFUSED/MISSING' 9 'INAPP' /
   L_CLIMB   98 'REFUSED/MISSING' 99 'INAPP' /
   L_CLRDIS  8 'REFUSED/MISSING' 9 'INAPP' /
   L_COLD    98 'REFUSED/MISSING' 99 'INAPP' /
   L_COMMDA  998 'REFUSED/MISSING' 999 'INAPP' /
   L_DATAL   8 'REFUSED/MISSING' 9 'INAPP' /
   L_DATAPR  8 'REFUSED/MISSING' 9 'INAPP' /
   L_DCP     998 'REFUSED/MISSING' 999 'INAPP' /
   L_DEPL    998 'REFUSED/MISSING' 999 'INAPP' /
   L_ENVIRO  8 'REFUSED/MISSING' 9 'INAPP' /
   L_EYHNFT  8 'REFUSED/MISSING' 9 'INAPP' /
   L_FIF     998 'REFUSED/MISSING' 999 'INAPP' /
   L_FMNHR   98 'REFUSED/MISSING' 99 'INAPP' /
   L_FMNYR   99998 'REFUSED/MISSING' 99999 'INAPP' /
   L_FNGRDX  8 'REFUSED/MISSING' 9 'INAPP' /
   L_FRMPRC  8 'REFUSED/MISSING' 9 'INAPP' /
   L_GED     8 'REFUSED/MISSING' 9 'INAPP' /
   L_HAZARD  98 'REFUSED/MISSING' 99 'INAPP' /
   L_HEAT    98 'REFUSED/MISSING' 99 'INAPP' /
   L_INFLU   998 'REFUSED/MISSING' 999 'INAPP' /
   L_INTELL  8 'REFUSED/MISSING' 9 'INAPP' /
   L_MACHPR  998 'REFUSED/MISSING' 999 'INAPP' /
   L_MCHNPR  8 'REFUSED/MISSING' 9 'INAPP' /
   L_MEN     9999998 'REFUSED/MISSING' 9999999 'INAPP' /
   L_MMNHR   98 'REFUSED/MISSING' 99 'INAPP' /
   L_MMNYR   99998 'REFUSED/MISSING' 99999 'INAPP' /
   L_MNLDXT  8 'REFUSED/MISSING' 9 'INAPP' /
   L_MTRCRD  8 'REFUSED/MISSING' 9 'INAPP' /
   L_MVC     998 'REFUSED/MISSING' 999 'INAPP' /
   L_NOISE   98 'REFUSED/MISSING' 99 'INAPP' /
   L_NUMERC  8 'REFUSED/MISSING' 9 'INAPP' /
   L_OBSPRE  998 'REFUSED/MISSING' 999 'INAPP' /
   L_OUT     98 'REFUSED/MISSING' 99 'INAPP' /
   L_PEOPLE  98 'REFUSED/MISSING' 99 'INAPP' /
   L_PEOPRE  998 'REFUSED/MISSING' 999 'INAPP' /
   L_PHYSDM  8 'REFUSED/MISSING' 9 'INAPP' /
   L_PRODPR  98 'REFUSED/MISSING' 99 'INAPP' /
   L_PROTPR  8 'REFUSED/MISSING' 9 'INAPP' /
   L_PRSTPR  998 'REFUSED/MISSING' 999 'INAPP' /
   L_PUS     98 'REFUSED/MISSING' 99 'INAPP' /
   L_REACH   998 'REFUSED/MISSING' 999 'INAPP' /
   L_REPCON  98 'REFUSED/MISSING' 99 'INAPP' /
   L_ROUTPR  998 'REFUSED/MISSING' 999 'INAPP' /
   L_SCINPR  998 'REFUSED/MISSING' 999 'INAPP' /
   L_SEE     998 'REFUSED/MISSING' 999 'INAPP' /
   L_SJC     998 'REFUSED/MISSING' 999 'INAPP' /
   L_SPATIA  8 'REFUSED/MISSING' 9 'INAPP' /
   L_STOOP   998 'REFUSED/MISSING' 999 'INAPP' /
   L_STRGTH  8 'REFUSED/MISSING' 9 'INAPP' /
   L_STS     998 'REFUSED/MISSING' 999 'INAPP' /
   L_SVP     98 'REFUSED/MISSING' 99 'INAPP' /
   L_TALK    998 'REFUSED/MISSING' 999 'INAPP' /
   L_THINGS  98 'REFUSED/MISSING' 99 'INAPP' /
   L_TRAIN   98 'REFUSED/MISSING' 99 'INAPP' /
   L_VARCH   998 'REFUSED/MISSING' 999 'INAPP' /
   L_VERBAL  8 'REFUSED/MISSING' 9 'INAPP' /
   L_WET     98 'REFUSED/MISSING' 99 'INAPP' /
   L_WOMEN   9999998 'REFUSED/MISSING' 9999999 'INAPP' /
   MINDUS_L  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   PROFID_L  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   AGRIC_L   1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   CONSTR_L  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   MANUF_L   1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   TRANSP_L  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   WHOLE_L   1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   RETAIL_L  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   FNANCE_L  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   BUSIN_L   1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   PERSON_L  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   ENTERT_L  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   PUBADM_L  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   MOCCUP_L  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   EXEC_L    1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   PROFOC_L  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   TECH_L    1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   SALES_L   1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   ADMIN_L   1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   SERV_L    1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   FARM_L    1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   CRAFT_L   1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   OPERAT_L  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PB17    1 'MARRIED' 2 'SEPERATED' 3 'DIVORCED' 4 'WIDOWED'
             5 'NEVER MARRIED' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB19    7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB18MO  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB18YR  97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB20    1 'WIDOWHOOD' 2 'DIVORCE' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB20AMO 1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB20AYR 97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB20BMO 1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 96 'NA - SEE CASE LOG' 97 'DONT KNOW' 98 'REFUSED'
             99 'INAPP' /
   A1PB20BYR 96 'NA - SEE CASE LOG' 97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB21MO  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB21YR  97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB22MO  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 96 'NA - SEE CASE LOG' 97 'DONT KNOW' 98 'REFUSED'
             99 'INAPP' /
   A1PB22YR  96 'NA - SEE CASE LOG' 97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB23MO  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB23YR  97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB24    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB25    9997 'DONT KNOW' 9998 'REFUSED' 9999 'INAPP' /
   A1PPARTN  1 'YES' 2 'NO' /
   A1PB26    97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PSAGE   97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'NOT CALCULATED' /
   A1PB27    1 'NO SCHOOL/SOME GRADE SCHOOL'
             2 'EIGHTH GRADE/ JUNIOR HIGH SCHOOL' 3 'SOME HIGH SCHOOL'
             4 'GED' 5 'GRADUATED FROM HIGH SCHOOL'
             6 '1 TO 2 YEARS OF COLLEGE, NO DEGREE YET'
             7 '3 OR MORE YEARS OF COLLEGE, NO DEGREE YET'
             8 'GRAD 2 YEAR COLLEGE OR VOC SCHOOL, OR ASSOCIATES DEGREE'
             9 'GRAD 4 OR 5 YEAR COLLEGE OR BACHELORS DEGREE'
             10 'SOME GRADUATE SCHOOL' 11 'MASTERS DEGREE'
             12 'PH.D, ED.D, MD, DDS, LLB, LLD, JD, OR OTHER PROF DEGREE'
             97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PMQB27  1 'SOME GRADE SCHOOL TO GED' 2 'GRADUATED HIGH SCHOOL'
             3 'SOME COLLEGE (NO BACHELORS DEGREE)'
             4 'GRAD COLLEGE TO DOCTORATE OR PROFESSIONAL DEGREE'
             9 'NOT CALCULATED' /
   A1PSEDU   1 'GRADUATED HIGH SCHOOL OR LESS' 2 'SOME COLLEGE OR MORE'
             9 'NOT CALCULATED' /
   A1PSSXEDAG 1 'MALE/LO/YOUNGER' 2 'MALE/LO/MIDDLE' 3 'MALE/LO/OLDER'
             4 'MALE/HI/YOUNGER' 5 'MALE/HI/MIDDLE' 6 'MALE/HI/OLDER'
             7 'FEMALE/LO/YOUNGER' 8 'FEMALE/LO/MIDDLE' 9 'FEMALE/LO/OLDER'
             10 'FEMALE/HI/YOUNGER' 11 'FEMALE/HI/MIDDLE'
             12 'FEMALE/HI/OLDER' 99 'NOT CALCULATED' /
   A1PB28A   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB28B   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB28C   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB28D   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB28E   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB28F   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB28G   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB28H   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB28I   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB28J   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB28K   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB30    9996 'NEVER WORKED' 9997 'DONT KNOW' 9998 'REFUSED' 9999 'INAPP'
             /
   A1PB29A   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB29B   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB29C   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB29D   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB29E   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB29F   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB29G   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB31    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB33_2  1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB34_2  1 'HAS EMPLOYER' 2 'SELF-EMPLOYED' 7 'DONT KNOW' 8 'REFUSED'
             9 'INAPP' /
   A1POCCS   997 'DONT KNOW' 998 'REFUSED/MISSING'
             999 'INAPP, NO DATA FOR INDIVIDUAL' /
   A1PINDS   900 'ARMED SERVICES MEMBER' 997 'DONT KNOW'
             998 'REFUSED/MISSING' 999 'INAPP, NO DATA FOR INDIVIDUAL' /
   A1PTSEIS  98 'REFUSED/MISSING' 99 'INAPP' /
   A1PTEARS  8 'REFUSED/MISSING' 9 'INAPP' /
   A1PTEDUS  8 'REFUSED/MISSING' 9 'INAPP' /
   A1PFSEIS  98 'REFUSED/MISSING' 99 'INAPP' /
   A1PFEARS  8 'REFUSED/MISSING' 9 'INAPP' /
   A1PFEDUS  8 'REFUSED/MISSING' 9 'INAPP' /
   A1PMSEIS  98 'REFUSED/MISSING' 99 'INAPP' /
   A1PMEARS  8 'REFUSED/MISSING' 9 'INAPP' /
   A1PMEDUS  8 'REFUSED/MISSING' 9 'INAPP' /
   S_ABSCRE  998 'REFUSED/MISSING' 999 'INAPP' /
   S_ATMOSP  98 'REFUSED/MISSING' 99 'INAPP' /
   S_BOTH    98 'REFUSED/MISSING' 99 'INAPP' /
   S_BUSPR   998 'REFUSED/MISSING' 999 'INAPP' /
   S_CLERIC  8 'REFUSED/MISSING' 9 'INAPP' /
   S_CLIMB   998 'REFUSED/MISSING' 999 'INAPP' /
   S_CLRDIS  8 'REFUSED/MISSING' 9 'INAPP' /
   S_COLD    98 'REFUSED/MISSING' 99 'INAPP' /
   S_COMMDA  998 'REFUSED/MISSING' 999 'INAPP' /
   S_DATAL   8 'REFUSED/MISSING' 9 'INAPP' /
   S_DATAPR  8 'REFUSED/MISSING' 9 'INAPP' /
   S_DCP     998 'REFUSED/MISSING' 999 'INAPP' /
   S_DEPL    998 'REFUSED/MISSING' 999 'INAPP' /
   S_ENVIRO  8 'REFUSED/MISSING' 9 'INAPP' /
   S_EYHNFT  8 'REFUSED/MISSING' 9 'INAPP' /
   S_FIF     998 'REFUSED/MISSING' 999 'INAPP' /
   S_FMNHR   98 'REFUSED/MISSING' 99 'INAPP' /
   S_FMNYR   99998 'REFUSED/MISSING' 99999 'INAPP' /
   S_FNGRDX  8 'REFUSED/MISSING' 9 'INAPP' /
   S_FRMPRC  8 'REFUSED/MISSING' 9 'INAPP' /
   S_GED     8 'REFUSED/MISSING' 9 'INAPP' /
   S_HAZARD  998 'REFUSED/MISSING' 999 'INAPP' /
   S_HEAT    98 'REFUSED/MISSING' 99 'INAPP' /
   S_INFLU   998 'REFUSED/MISSING' 999 'INAPP' /
   S_INTELL  8 'REFUSED/MISSING' 9 'INAPP' /
   S_MACHPR  998 'REFUSED/MISSING' 999 'INAPP' /
   S_MCHNPR  8 'REFUSED/MISSING' 9 'INAPP' /
   S_MEN     9999998 'REFUSED/MISSING' 9999999 'INAPP' /
   S_MMNHR   98 'REFUSED/MISSING' 99 'INAPP' /
   S_MMNYR   99998 'REFUSED/MISSING' 99999 'INAPP' /
   S_MNLDXT  8 'REFUSED/MISSING' 9 'INAPP' /
   S_MTRCRD  8 'REFUSED/MISSING' 9 'INAPP' /
   S_MVC     998 'REFUSED/MISSING' 999 'INAPP' /
   S_NOISE   998 'REFUSED/MISSING' 999 'INAPP' /
   S_NUMERC  8 'REFUSED/MISSING' 9 'INAPP' /
   S_OBSPRE  998 'REFUSED/MISSING' 999 'INAPP' /
   S_OUT     98 'REFUSED/MISSING' 99 'INAPP' /
   S_PEOPLE  98 'REFUSED/MISSING' 99 'INAPP' /
   S_PEOPRE  998 'REFUSED/MISSING' 999 'INAPP' /
   S_PHYSDM  8 'REFUSED/MISSING' 9 'INAPP' /
   S_PRODPR  98 'REFUSED/MISSING' 99 'INAPP' /
   S_PROTPR  8 'REFUSED/MISSING' 9 'INAPP' /
   S_PRSTPR  998 'REFUSED/MISSING' 999 'INAPP' /
   S_PUS     98 'REFUSED/MISSING' 99 'INAPP' /
   S_REACH   998 'REFUSED/MISSING' 999 'INAPP' /
   S_REPCON  998 'REFUSED/MISSING' 999 'INAPP' /
   S_ROUTPR  998 'REFUSED/MISSING' 999 'INAPP' /
   S_SCINPR  998 'REFUSED/MISSING' 999 'INAPP' /
   S_SEE     998 'REFUSED/MISSING' 999 'INAPP' /
   S_SJC     998 'REFUSED/MISSING' 999 'INAPP' /
   S_SPATIA  8 'REFUSED/MISSING' 9 'INAPP' /
   S_STOOP   998 'REFUSED/MISSING' 999 'INAPP' /
   S_STRGTH  8 'REFUSED/MISSING' 9 'INAPP' /
   S_STS     998 'REFUSED/MISSING' 999 'INAPP' /
   S_SVP     98 'REFUSED/MISSING' 99 'INAPP' /
   S_TALK    998 'REFUSED/MISSING' 999 'INAPP' /
   S_THINGS  98 'REFUSED/MISSING' 99 'INAPP' /
   S_TRAIN   998 'REFUSED/MISSING' 999 'INAPP' /
   S_VARCH   998 'REFUSED/MISSING' 999 'INAPP' /
   S_VERBAL  8 'REFUSED/MISSING' 9 'INAPP' /
   S_WET     98 'REFUSED/MISSING' 99 'INAPP' /
   S_WOMEN   9999998 'REFUSED/MISSING' 9999999 'INAPP' /
   MINDUS_S  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   PROFID_S  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   AGRIC_S   1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   CONSTR_S  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   MANUF_S   1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   TRANSP_S  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   WHOLE_S   1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   RETAIL_S  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   FNANCE_S  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   BUSIN_S   1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   PERSON_S  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   ENTERT_S  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   PUBADM_S  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   MOCCUP_S  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   EXEC_S    1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   PROFOC_S  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   TECH_S    1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   SALES_S   1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   ADMIN_S   1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   SERV_S    1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   FARM_S    1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   CRAFT_S   1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   OPERAT_S  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PB35    5 '5 OR MORE CHILDREN' 97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   CNT_BK    99 'NOT CALCULATED' /
   A1PB36A1  1 'MALE' 2 'FEMALE' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB36B1  97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB36C1  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB36A2  1 'MALE' 2 'FEMALE' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB36B2  97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB36C2  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB36A3  1 'MALE' 2 'FEMALE' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB36B3  97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB36C3  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB36A4  1 'MALE' 2 'FEMALE' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB36B4  97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB36C4  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB36A5  1 'MALE' 2 'FEMALE' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB36B5  97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB36C5  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB36A6  1 'MALE' 2 'FEMALE' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB36B6  97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB36C6  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB36A7  1 'MALE' 2 'FEMALE' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB36B7  97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB36C7  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB36A8  1 'MALE' 2 'FEMALE' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB36B8  97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB36C8  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB36A9  1 'MALE' 2 'FEMALE' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB36B9  97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB36C9  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB36A10 1 'MALE' 2 'FEMALE' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB36B10 97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB36C10 1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PBAG1   99 'NOT CALCULATED' /
   A1PBAG2   99 'NOT CALCULATED' /
   A1PBAG3   99 'NOT CALCULATED' /
   A1PBAG4   99 'NOT CALCULATED' /
   A1PBAG5   99 'NOT CALCULATED' /
   A1PBAG6   99 'NOT CALCULATED' /
   A1PBAG7   99 'NOT CALCULATED' /
   A1PBAG8   99 'NOT CALCULATED' /
   A1PBAG9   99 'NOT CALCULATED' /
   A1PBAG10  99 'NOT CALCULATED' /
   A1PB37    5 '5 OR MORE CHILDREN' 97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   CNT_NBK   99 'NOT CALCULATED' /
   A1PB37A1  1 'MALE' 2 'FEMALE' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB37B1  1 'STEP CHILD' 2 'ADOPTED CHILD' 3 'FOSTER CHILD' 4 'OTHER'
             7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB37C1  97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB37D1  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB37A2  1 'MALE' 2 'FEMALE' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB37B2  1 'STEP CHILD' 2 'ADOPTED CHILD' 3 'FOSTER CHILD' 4 'OTHER'
             7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB37C2  97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB37D2  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB37A3  1 'MALE' 2 'FEMALE' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB37B3  1 'STEP CHILD' 2 'ADOPTED CHILD' 3 'FOSTER CHILD' 4 'OTHER'
             7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB37C3  97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB37D3  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB37A4  1 'MALE' 2 'FEMALE' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB37B4  1 'STEP CHILD' 2 'ADOPTED CHILD' 3 'FOSTER CHILD' 4 'OTHER'
             7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB37C4  97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB37D4  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB37A5  1 'MALE' 2 'FEMALE' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB37B5  1 'STEP CHILD' 2 'ADOPTED CHILD' 3 'FOSTER CHILD' 4 'OTHER'
             7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB37C5  97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB37D5  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB37A6  1 'MALE' 2 'FEMALE' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB37B6  1 'STEP CHILD' 2 'ADOPTED CHILD' 3 'FOSTER CHILD' 4 'OTHER'
             7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB37C6  97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB37D6  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB37A7  1 'MALE' 2 'FEMALE' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB37B7  1 'STEP CHILD' 2 'ADOPTED CHILD' 3 'FOSTER CHILD' 4 'OTHER'
             7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB37C7  97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB37D7  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB37A8  1 'MALE' 2 'FEMALE' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB37B8  1 'STEP CHILD' 2 'ADOPTED CHILD' 3 'FOSTER CHILD' 4 'OTHER'
             7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB37C8  97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB37D8  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB37A9  1 'MALE' 2 'FEMALE' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB37B9  1 'STEP CHILD' 2 'ADOPTED CHILD' 3 'FOSTER CHILD' 4 'OTHER'
             7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB37C9  97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB37D9  1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB37A10 1 'MALE' 2 'FEMALE' 7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB37B10 1 'STEP CHILD' 2 'ADOPTED CHILD' 3 'FOSTER CHILD' 4 'OTHER'
             7 'DONT KNOW' 8 'REFUSED' 9 'INAPP' /
   A1PB37C10 97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PB37D10 1 'JANUARY' 2 'FEBRUARY' 3 'MARCH' 4 'APRIL' 5 'MAY' 6 'JUNE'
             7 'JULY' 8 'AUGUST' 9 'SEPTEMBER' 10 'OCTOBER' 11 'NOVEMBER'
             12 'DECEMBER' 97 'DONT KNOW' 98 'REFUSED' 99 'INAPP' /
   A1PBAO1   99 'NOT CALCULATED' /
   A1PBAO2   99 'NOT CALCULATED' /
   A1PBAO3   99 'NOT CALCULATED' /
   A1PBAO4   99 'NOT CALCULATED' /
   A1PBAO5   99 'NOT CALCULATED' /
   A1PBAO6   99 'NOT CALCULATED' /
   A1PBAO7   99 'NOT CALCULATED' /
   A1PBAO8   99 'NOT CALCULATED' /
   A1PBAO9   99 'NOT CALCULATED' /
   A1PBAO10  99 'NOT CALCULATED' /
   A1PC06    0 'NO' 1 'YES' /
   A1PC713   0 'NO' 1 'YES' /
   A1PC1417  0 'NO' 1 'YES' /
   A1PC18    0 'NO' 1 'YES' /
   A1PE1     1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PE1A    9997 'DONT KNOW' 9998 'REFUSED/MISSING' 9999 'INAPP' /
   A1PE2     1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PE2A    9997 'DONT KNOW' 9998 'REFUSED/MISSING' 9999 'INAPP' /
   A1PE3     1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PE3A    9997 'DONT KNOW' 9998 'REFUSED/MISSING' 9999 'INAPP' /
   A1PC1     1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PCA1    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PCA2    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PCA3    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PCA4    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PCA5    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PCA6    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PCA7    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PCB1    97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1PCB2    97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1PCB3    97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1PCB6    97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1PCB7    97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1PCC     1 'BIOLOGICAL FATHER' 2 'ADOPTIVE FATHER' 3 'STEP FATHER'
             4 'OTHER MALE' 5 'NO MALE IN HOUSEHOLD' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PC2     1 'NO SCHOOL/SOME GRADE SCHOOL'
             2 'EIGHTH GRADE/ JUNIOR HIGH SCHOOL' 3 'SOME HIGH SCHOOL'
             4 'GED' 5 'GRADUATED FROM HIGH SCHOOL'
             6 '1 TO 2 YEARS OF COLLEGE, NO DEGREE YET'
             7 '3 OR MORE YEARS OF COLLEGE, NO DEGREE YET'
             8 'GRAD 2 YEAR COLLEGE OR VOC SCHOOL, OR ASSOCIATES DEGREE'
             9 'GRAD 4 OR 5 YEAR COLLEGE OR BACHELORS DEGREE'
             10 'SOME GRADUATE SCHOOL' 11 'MASTERS DEGREE'
             12 'PH.D, ED.D, MD, DDS, LLB, LLD, JD, OR OTHER PROF DEGREE'
             97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1PC3     1 'ALL' 2 'MOST' 3 'SOME' 4 'A LITTLE' 5 'NOT AT ALL'
             6 'WORKED, DONT KNOW HOW MUCH' 7 'DONT KNOW' 8 'REFUSED/MISSING'
             9 'INAPP' /
   A1PC3A1   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PC3A2   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PC3A3   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PC3A4   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PC3A5   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PC5_2   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PC6_2   1 'HAD EMPLOYER' 2 'SELF-EMPLOYED' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PINDD   997 'DONT KNOW' 998 'REFUSED/MISSING'
             999 'INAPP, NO DATA FOR INDIVIDUAL' /
   A1POCCD   900 'ARMED SERVICES MEMBER' 997 'DONT KNOW'
             998 'REFUSED/MISSING' 999 'INAPP, NO DATA FOR INDIVIDUAL' /
   A1PTSEID  98 'REFUSED/MISSING' 99 'INAPP' /
   A1PTEARD  8 'REFUSED/MISSING' 9 'INAPP' /
   A1PTEDUD  8 'REFUSED/MISSING' 9 'INAPP' /
   A1PFSEID  98 'REFUSED/MISSING' 99 'INAPP' /
   A1PFEARD  8 'REFUSED/MISSING' 9 'INAPP' /
   A1PFEDUD  8 'REFUSED/MISSING' 9 'INAPP' /
   A1PMSEID  998 'REFUSED/MISSING' 999 'INAPP' /
   A1PMEARD  8 'REFUSED/MISSING' 9 'INAPP' /
   A1PMEDUD  8 'REFUSED/MISSING' 9 'INAPP' /
   D_ABSCRE  998 'REFUSED/MISSING' 999 'INAPP' /
   D_ATMOSP  98 'REFUSED/MISSING' 99 'INAPP' /
   D_BOTH    998 'REFUSED/MISSING' 999 'INAPP' /
   D_BUSPR   998 'REFUSED/MISSING' 999 'INAPP' /
   D_CLERIC  8 'REFUSED/MISSING' 9 'INAPP' /
   D_CLIMB   98 'REFUSED/MISSING' 99 'INAPP' /
   D_CLRDIS  8 'REFUSED/MISSING' 9 'INAPP' /
   D_COLD    98 'REFUSED/MISSING' 99 'INAPP' /
   D_COMMDA  998 'REFUSED/MISSING' 999 'INAPP' /
   D_DATAL   8 'REFUSED/MISSING' 9 'INAPP' /
   D_DATAPR  8 'REFUSED/MISSING' 9 'INAPP' /
   D_DCP     998 'REFUSED/MISSING' 999 'INAPP' /
   D_DEPL    998 'REFUSED/MISSING' 999 'INAPP' /
   D_ENVIRO  8 'REFUSED/MISSING' 9 'INAPP' /
   D_EYHNFT  8 'REFUSED/MISSING' 9 'INAPP' /
   D_FIF     998 'REFUSED/MISSING' 999 'INAPP' /
   D_FMNHR   98 'REFUSED/MISSING' 99 'INAPP' /
   D_FMNYR   99998 'REFUSED/MISSING' 99999 'INAPP' /
   D_FNGRDX  8 'REFUSED/MISSING' 9 'INAPP' /
   D_FRMPRC  8 'REFUSED/MISSING' 9 'INAPP' /
   D_GED     8 'REFUSED/MISSING' 9 'INAPP' /
   D_HAZARD  98 'REFUSED/MISSING' 99 'INAPP' /
   D_HEAT    98 'REFUSED/MISSING' 99 'INAPP' /
   D_INFLU   998 'REFUSED/MISSING' 999 'INAPP' /
   D_INTELL  8 'REFUSED/MISSING' 9 'INAPP' /
   D_MACHPR  998 'REFUSED/MISSING' 999 'INAPP' /
   D_MCHNPR  8 'REFUSED/MISSING' 9 'INAPP' /
   D_MEN     9999998 'REFUSED/MISSING' 9999999 'INAPP' /
   D_MMNHR   98 'REFUSED/MISSING' 99 'INAPP' /
   D_MMNYR   99998 'REFUSED/MISSING' 99999 'INAPP' /
   D_MNLDXT  8 'REFUSED/MISSING' 9 'INAPP' /
   D_MTRCRD  8 'REFUSED/MISSING' 9 'INAPP' /
   D_MVC     998 'REFUSED/MISSING' 999 'INAPP' /
   D_NOISE   998 'REFUSED/MISSING' 999 'INAPP' /
   D_NUMERC  8 'REFUSED/MISSING' 9 'INAPP' /
   D_OBSPRE  998 'REFUSED/MISSING' 999 'INAPP' /
   D_OUT     98 'REFUSED/MISSING' 99 'INAPP' /
   D_PEOPLE  98 'REFUSED/MISSING' 99 'INAPP' /
   D_PEOPRE  998 'REFUSED/MISSING' 999 'INAPP' /
   D_PHYSDM  8 'REFUSED/MISSING' 9 'INAPP' /
   D_PRODPR  98 'REFUSED/MISSING' 99 'INAPP' /
   D_PROTPR  8 'REFUSED/MISSING' 9 'INAPP' /
   D_PRSTPR  998 'REFUSED/MISSING' 999 'INAPP' /
   D_PUS     98 'REFUSED/MISSING' 99 'INAPP' /
   D_REACH   998 'REFUSED/MISSING' 999 'INAPP' /
   D_REPCON  998 'REFUSED/MISSING' 999 'INAPP' /
   D_ROUTPR  998 'REFUSED/MISSING' 999 'INAPP' /
   D_SCINPR  998 'REFUSED/MISSING' 999 'INAPP' /
   D_SEE     998 'REFUSED/MISSING' 999 'INAPP' /
   D_SJC     998 'REFUSED/MISSING' 999 'INAPP' /
   D_SPATIA  8 'REFUSED/MISSING' 9 'INAPP' /
   D_STOOP   998 'REFUSED/MISSING' 999 'INAPP' /
   D_STRGTH  8 'REFUSED/MISSING' 9 'INAPP' /
   D_STS     998 'REFUSED/MISSING' 999 'INAPP' /
   D_SVP     98 'REFUSED/MISSING' 99 'INAPP' /
   D_TALK    998 'REFUSED/MISSING' 999 'INAPP' /
   D_THINGS  98 'REFUSED/MISSING' 99 'INAPP' /
   D_TRAIN   998 'REFUSED/MISSING' 999 'INAPP' /
   D_VARCH   998 'REFUSED/MISSING' 999 'INAPP' /
   D_VERBAL  8 'REFUSED/MISSING' 9 'INAPP' /
   D_WET     98 'REFUSED/MISSING' 99 'INAPP' /
   D_WOMEN   9999998 'REFUSED/MISSING' 9999999 'INAPP' /
   MINDUS_D  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   PROFID_D  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   AGRIC_D   1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   CONSTR_D  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   MANUF_D   1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   TRANSP_D  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   WHOLE_D   1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   RETAIL_D  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   FNANCE_D  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   BUSIN_D   1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   PERSON_D  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   ENTERT_D  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   PUBADM_D  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   MOCCUP_D  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   EXEC_D    1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   PROFOC_D  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   TECH_D    1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   SALES_D   1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   ADMIN_D   1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   SERV_D    1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   FARM_D    1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   CRAFT_D   1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   OPERAT_D  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PC7     1 'BIOLOGICAL MOTHER' 2 'ADOPTIVE MOTHER' 3 'STEP MOTHER'
             4 'OTHER FEMALE' 5 'NO FEMALE IN HOUSEHOLD' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PC8     1 'NO SCHOOL/SOME GRADE SCHOOL'
             2 'EIGHTH GRADE/ JUNIOR HIGH SCHOOL' 3 'SOME HIGH SCHOOL'
             4 'GED' 5 'GRADUATED FROM HIGH SCHOOL'
             6 '1 TO 2 YEARS OF COLLEGE, NO DEGREE YET'
             7 '3 OR MORE YEARS OF COLLEGE, NO DEGREE YET'
             8 'GRAD 2 YEAR COLLEGE OR VOC SCHOOL, OR ASSOCIATES DEGREE'
             9 'GRAD 4 OR 5 YEAR COLLEGE OR BACHELORS DEGREE'
             10 'SOME GRADUATE SCHOOL' 11 'MASTERS DEGREE'
             12 'PH.D, ED.D, MD, DDS, LLB, LLD, JD, OR OTHER PROF DEGREE'
             97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1PC9     1 'ALL' 2 'MOST' 3 'SOME' 4 'A LITTLE' 5 'NOT AT ALL'
             6 'WORKED, DONT KNOW HOW MUCH' 7 'DONT KNOW' 8 'REFUSED/MISSING'
             9 'INAPP' /
   A1PC9A1   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PC9A2   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PC9A3   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PC9A4   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PC9A5   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PC11_2  1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PC13_2  1 'HAD EMPLOYER' 2 'SELF-EMPLOYED' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PINDM   997 'DONT KNOW' 998 'REFUSED/MISSING'
             999 'INAPP, NO DATA FOR INDIVIDUAL' /
   A1POCCM   900 'ARMED SERVICES MEMBER' 997 'DONT KNOW'
             998 'REFUSED/MISSING' 999 'INAPP, NO DATA FOR INDIVIDUAL' /
   A1PTSEIM  98 'REFUSED/MISSING' 99 'INAPP' /
   A1PTEARM  8 'REFUSED/MISSING' 9 'INAPP' /
   A1PTEDUM  8 'REFUSED/MISSING' 9 'INAPP' /
   A1PFSEIM  98 'REFUSED/MISSING' 99 'INAPP' /
   A1PFEARM  8 'REFUSED/MISSING' 9 'INAPP' /
   A1PFEDUM  8 'REFUSED/MISSING' 9 'INAPP' /
   A1PMSEIM  98 'REFUSED/MISSING' 99 'INAPP' /
   A1PMEARM  8 'REFUSED/MISSING' 9 'INAPP' /
   A1PMEDUM  8 'REFUSED/MISSING' 9 'INAPP' /
   M_ABSCRE  998 'REFUSED/MISSING' 999 'INAPP' /
   M_ATMOSP  98 'REFUSED/MISSING' 99 'INAPP' /
   M_BOTH    98 'REFUSED/MISSING' 99 'INAPP' /
   M_BUSPR   998 'REFUSED/MISSING' 999 'INAPP' /
   M_CLERIC  8 'REFUSED/MISSING' 9 'INAPP' /
   M_CLIMB   98 'REFUSED/MISSING' 99 'INAPP' /
   M_CLRDIS  8 'REFUSED/MISSING' 9 'INAPP' /
   M_COLD    98 'REFUSED/MISSING' 99 'INAPP' /
   M_COMMDA  998 'REFUSED/MISSING' 999 'INAPP' /
   M_DATAL   8 'REFUSED/MISSING' 9 'INAPP' /
   M_DATAPR  8 'REFUSED/MISSING' 9 'INAPP' /
   M_DCP     998 'REFUSED/MISSING' 999 'INAPP' /
   M_DEPL    998 'REFUSED/MISSING' 999 'INAPP' /
   M_ENVIRO  8 'REFUSED/MISSING' 9 'INAPP' /
   M_EYHNFT  8 'REFUSED/MISSING' 9 'INAPP' /
   M_FIF     998 'REFUSED/MISSING' 999 'INAPP' /
   M_FMNHR   98 'REFUSED/MISSING' 99 'INAPP' /
   M_FMNYR   99998 'REFUSED/MISSING' 99999 'INAPP' /
   M_FNGRDX  8 'REFUSED/MISSING' 9 'INAPP' /
   M_FRMPRC  8 'REFUSED/MISSING' 9 'INAPP' /
   M_GED     8 'REFUSED/MISSING' 9 'INAPP' /
   M_HAZARD  98 'REFUSED/MISSING' 99 'INAPP' /
   M_HEAT    98 'REFUSED/MISSING' 99 'INAPP' /
   M_INFLU   998 'REFUSED/MISSING' 999 'INAPP' /
   M_INTELL  8 'REFUSED/MISSING' 9 'INAPP' /
   M_MACHPR  998 'REFUSED/MISSING' 999 'INAPP' /
   M_MCHNPR  8 'REFUSED/MISSING' 9 'INAPP' /
   M_MEN     9999998 'REFUSED/MISSING' 9999999 'INAPP' /
   M_MMNHR   98 'REFUSED/MISSING' 99 'INAPP' /
   M_MMNYR   99998 'REFUSED/MISSING' 99999 'INAPP' /
   M_MNLDXT  8 'REFUSED/MISSING' 9 'INAPP' /
   M_MTRCRD  8 'REFUSED/MISSING' 9 'INAPP' /
   M_MVC     998 'REFUSED/MISSING' 999 'INAPP' /
   M_NOISE   98 'REFUSED/MISSING' 99 'INAPP' /
   M_NUMERC  8 'REFUSED/MISSING' 9 'INAPP' /
   M_OBSPRE  998 'REFUSED/MISSING' 999 'INAPP' /
   M_OUT     98 'REFUSED/MISSING' 99 'INAPP' /
   M_PEOPLE  98 'REFUSED/MISSING' 99 'INAPP' /
   M_PEOPRE  998 'REFUSED/MISSING' 999 'INAPP' /
   M_PHYSDM  8 'REFUSED/MISSING' 9 'INAPP' /
   M_PRODPR  98 'REFUSED/MISSING' 99 'INAPP' /
   M_PROTPR  8 'REFUSED/MISSING' 9 'INAPP' /
   M_PRSTPR  998 'REFUSED/MISSING' 999 'INAPP' /
   M_PUS     98 'REFUSED/MISSING' 99 'INAPP' /
   M_REACH   998 'REFUSED/MISSING' 999 'INAPP' /
   M_REPCON  98 'REFUSED/MISSING' 99 'INAPP' /
   M_ROUTPR  998 'REFUSED/MISSING' 999 'INAPP' /
   M_SCINPR  998 'REFUSED/MISSING' 999 'INAPP' /
   M_SEE     998 'REFUSED/MISSING' 999 'INAPP' /
   M_SJC     998 'REFUSED/MISSING' 999 'INAPP' /
   M_SPATIA  8 'REFUSED/MISSING' 9 'INAPP' /
   M_STOOP   998 'REFUSED/MISSING' 999 'INAPP' /
   M_STRGTH  8 'REFUSED/MISSING' 9 'INAPP' /
   M_STS     998 'REFUSED/MISSING' 999 'INAPP' /
   M_SVP     98 'REFUSED/MISSING' 99 'INAPP' /
   M_TALK    998 'REFUSED/MISSING' 999 'INAPP' /
   M_THINGS  98 'REFUSED/MISSING' 99 'INAPP' /
   M_TRAIN   98 'REFUSED/MISSING' 99 'INAPP' /
   M_VARCH   998 'REFUSED/MISSING' 999 'INAPP' /
   M_VERBAL  8 'REFUSED/MISSING' 9 'INAPP' /
   M_WET     98 'REFUSED/MISSING' 99 'INAPP' /
   M_WOMEN   9999998 'REFUSED/MISSING' 9999999 'INAPP' /
   MINDUS_M  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   PROFID_M  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   AGRIC_M   1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   CONSTR_M  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   MANUF_M   1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   TRANSP_M  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   WHOLE_M   1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   RETAIL_M  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   FNANCE_M  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   BUSIN_M   1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   PERSON_M  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   ENTERT_M  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   PUBADM_M  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   MOCCUP_M  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   EXEC_M    1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   PROFOC_M  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   TECH_M    1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   SALES_M   1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   ADMIN_M   1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   SERV_M    1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   FARM_M    1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   CRAFT_M   1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   OPERAT_M  1 'YES' 2 'NO' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PC14    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PC15    1 'ALL' 2 'MOST' 3 'SOME' 4 'A LITTLE' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PD1     1 'A LOT' 2 'SOMEWHAT' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PD2     1 'A LOT' 2 'SOMEWHAT' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PD3     1 'A LOT' 2 'SOMEWHAT' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PD8     1 'EXCELLENT' 2 'VERY GOOD' 3 'GOOD' 4 'FAIR' 5 'POOR'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1PD9     1 'AGREE' 2 'DISAGREE' 7 'DONT KNOW' 8 'REFUSED/MISSING'
             9 'INAPP' /
   A1PD9A    1 'STRONGLY' 2 'SOMEWHAT' 3 'ONLY A LITTLE' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PD4     1 'A LOT' 2 'SOMEWHAT' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PD5     1 'A LOT' 2 'SOMEWHAT' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PD6     1 'A LOT' 2 'SOMEWHAT' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1PD7     1 'A LOT' 2 'SOMEWHAT' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1     0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SA2     0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SHLTCH  97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'NOT CALCULATED' /
   A1SA3     0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SHLTEX  97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'NOT CALCULATED' /
   A1SA4     0 'NONE' 10 'VERY MUCH' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SA5     0 'NONE' 10 'VERY MUCH' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SA6A    1 'BETTER NOW' 2 'NO CHANGE' 3 'WORSE NOW' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA6B    1 'BETTER NOW' 2 'NO CHANGE' 3 'WORSE NOW' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA6C    1 'BETTER NOW' 2 'NO CHANGE' 3 'WORSE NOW' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA6D    1 'BETTER NOW' 2 'NO CHANGE' 3 'WORSE NOW' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA7A    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA7B    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA7C    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA7D    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA7E    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA7F    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SHLOCS  9 'NOT CALCULATED' 99 'NOT CALCULATED' /
   A1SHLOCO  9 'NOT CALCULATED' 99 'NOT CALCULATED' /
   A1SA8A    1 'NOT AT ALL TRUE' 2 'A LITTLE BIT TRUE' 3 'MODERATELY TRUE'
             4 'EXTREMELY TRUE' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA8B    1 'NOT AT ALL TRUE' 2 'A LITTLE BIT TRUE' 3 'MODERATELY TRUE'
             4 'EXTREMELY TRUE' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA8C    1 'NOT AT ALL TRUE' 2 'A LITTLE BIT TRUE' 3 'MODERATELY TRUE'
             4 'EXTREMELY TRUE' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA8D    1 'NOT AT ALL TRUE' 2 'A LITTLE BIT TRUE' 3 'MODERATELY TRUE'
             4 'EXTREMELY TRUE' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA8E    1 'NOT AT ALL TRUE' 2 'A LITTLE BIT TRUE' 3 'MODERATELY TRUE'
             4 'EXTREMELY TRUE' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SAMOLI  7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'NOT CALCULATED' /
   A1SA9A    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA9B    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA9C    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA9D    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA9E    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA9F    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA9G    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA9H    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA9I    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA9J    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA9K    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA9L    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA9M    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA9N    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA9O    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA9P    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA9Q    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA9R    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA9S    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA9T    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA9U    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA9V    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA9W    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA9X    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA9Y    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA9Z    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA9AA   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA9BB   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA9CC   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SCHRON  99 'NOT CALCULATED' /
   A1SCHROX  0 'NO' 1 'YES' 9 'NOT CALCULATED' /
   A1SA10A   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA10B   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA10C   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA10D   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA10E   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA10F   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA10G   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA10H   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA10I   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA10J   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA10K   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SRXMED  99 'NOT CALCULATED (Due to missing data)' /
   A1SRXMEX  0 'NO' 1 'YES' 9 'NOT CALCULATED (Due to missing data)' /
   A1SA11A   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA11B   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA11C   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA11D   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA11E   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SVITAM  1 'YES' 2 'NO' 9 'NOT CALCULATED' /
   A1SA12A   1 'ALMOST EVERYT DAY' 2 'SEVERAL TIMES A WEEK' 3 'ONCE A WEEK'
             4 'SEVERAL TIMES A MONTH' 5 'ONCE A MONTH' 6 'NOT AT ALL'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA12B   1 'ALMOST EVERYT DAY' 2 'SEVERAL TIMES A WEEK' 3 'ONCE A WEEK'
             4 'SEVERAL TIMES A MONTH' 5 'ONCE A MONTH' 6 'NOT AT ALL'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA12C   1 'ALMOST EVERYT DAY' 2 'SEVERAL TIMES A WEEK' 3 'ONCE A WEEK'
             4 'SEVERAL TIMES A MONTH' 5 'ONCE A MONTH' 6 'NOT AT ALL'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA12D   1 'ALMOST EVERYT DAY' 2 'SEVERAL TIMES A WEEK' 3 'ONCE A WEEK'
             4 'SEVERAL TIMES A MONTH' 5 'ONCE A MONTH' 6 'NOT AT ALL'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA12E   1 'ALMOST EVERYT DAY' 2 'SEVERAL TIMES A WEEK' 3 'ONCE A WEEK'
             4 'SEVERAL TIMES A MONTH' 5 'ONCE A MONTH' 6 'NOT AT ALL'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA12F   1 'ALMOST EVERYT DAY' 2 'SEVERAL TIMES A WEEK' 3 'ONCE A WEEK'
             4 'SEVERAL TIMES A MONTH' 5 'ONCE A MONTH' 6 'NOT AT ALL'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA12G   1 'ALMOST EVERYT DAY' 2 'SEVERAL TIMES A WEEK' 3 'ONCE A WEEK'
             4 'SEVERAL TIMES A MONTH' 5 'ONCE A MONTH' 6 'NOT AT ALL'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA12H   1 'ALMOST EVERYT DAY' 2 'SEVERAL TIMES A WEEK' 3 'ONCE A WEEK'
             4 'SEVERAL TIMES A MONTH' 5 'ONCE A MONTH' 6 'NOT AT ALL'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA12I   1 'ALMOST EVERYT DAY' 2 'SEVERAL TIMES A WEEK' 3 'ONCE A WEEK'
             4 'SEVERAL TIMES A MONTH' 5 'ONCE A MONTH' 6 'NOT AT ALL'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SSYMPT  99 'NOT CALCULATED' /
   A1SA13A   1 'ALL THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'A LITTLE OF THE TIME' 5 'NONE OF THE TIME' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA13B   1 'ALL THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'A LITTLE OF THE TIME' 5 'NONE OF THE TIME' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA13C   1 'ALL THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'A LITTLE OF THE TIME' 5 'NONE OF THE TIME' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA13D   1 'ALL THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'A LITTLE OF THE TIME' 5 'NONE OF THE TIME' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA13E   1 'ALL THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'A LITTLE OF THE TIME' 5 'NONE OF THE TIME' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA13F   1 'ALL THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'A LITTLE OF THE TIME' 5 'NONE OF THE TIME' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SNEGAF  9 'NOT CALCULATED' /
   A1SA14    1 'A LOT MORE OFTEN THAN USUAL'
             2 'SOMEWHAT MORE OFTEN THAN USUAL'
             3 'A LITTLE MORE OFTEN THAN USUAL' 4 'ABOUT THE SAME AS USUAL'
             5 'A LITTLE LESS OFTEN THAN USUAL'
             6 'SOMEWHAT LESS OFTEN THAN USUAL'
             7 'A LOT LESS OFTEN THAN USUAL' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SA15A   1 'ALL THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'A LITTLE OF THE TIME' 5 'NONE OF THE TIME' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA15B   1 'ALL THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'A LITTLE OF THE TIME' 5 'NONE OF THE TIME' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA15C   1 'ALL THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'A LITTLE OF THE TIME' 5 'NONE OF THE TIME' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA15D   1 'ALL THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'A LITTLE OF THE TIME' 5 'NONE OF THE TIME' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA15E   1 'ALL THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'A LITTLE OF THE TIME' 5 'NONE OF THE TIME' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA15F   1 'ALL THE TIME' 2 'MOST OF THE TIME' 3 'SOME OF THE TIME'
             4 'A LITTLE OF THE TIME' 5 'NONE OF THE TIME' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SPOSAF  9 'NOT CALCULATED' /
   A1SA16    1 'A LOT MORE OFTEN THAN USUAL'
             2 'SOMEWHAT MORE OFTEN THAN USUAL'
             3 'A LITTLE MORE OFTEN THAN USUAL' 4 'ABOUT THE SAME AS USUAL'
             5 'A LITTLE LESS OFTEN THAN USUAL'
             6 'SOMEWHAT LESS OFTEN THAN USUAL'
             7 'A LOT LESS OFTEN THAN USUAL' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SA17A   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA17B   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA17C   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA17D   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA17E   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA17F   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA17G   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA17H   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA17I   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SBADL   9 'NOT CALCULATED' /
   A1SIADL   9 'NOT CALCULATED' /
   A1SA18    1 'SEVERAL TIMES A WEEK OR MORE' 2 'ABOUT ONCE A WEEK'
             3 'SEVERAL TIMES A MONTH' 4 'ABOUT ONCE A MONTH'
             5 'LESS THAN ONCE A MONTH' 6 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA19    1 'SEVERAL TIMES A WEEK OR MORE' 2 'ABOUT ONCE A WEEK'
             3 'SEVERAL TIMES A MONTH' 4 'ABOUT ONCE A MONTH'
             5 'LESS THAN ONCE A MONTH' 6 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SVIGOR  99 'NOT CALCULATED' /
   A1SA20    1 'SEVERAL TIMES A WEEK OR MORE' 2 'ABOUT ONCE A WEEK'
             3 'SEVERAL TIMES A MONTH' 4 'ABOUT ONCE A MONTH'
             5 'LESS THAN ONCE A MONTH' 6 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA21    1 'SEVERAL TIMES A WEEK OR MORE' 2 'ABOUT ONCE A WEEK'
             3 'SEVERAL TIMES A MONTH' 4 'ABOUT ONCE A MONTH'
             5 'LESS THAN ONCE A MONTH' 6 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SMODER  99 'NOT CALCULATED' /
   A1SA22A   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA22B   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA22C   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA22D   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SDYSPN  0 'NO DYSPNEA' 4 'HIGHEST DYSPNEA' 9 'NOT CALCULATED' /
   A1SA23    97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SA24    97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SWSTHI  9 'NOT CALCULATED' /
   A1SA25    997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   A1SA26    1 'VERY OVERWEIGHT' 2 'SOMEWHAT OVERWEIGHT'
             3 'ABOUT THE RIGHT WEIGHT' 4 'SOMEWHAT UNDERWEIGHT'
             5 'VERY UNDERWEIGHT' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP'
             /
   A1SA27    997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   A1SBMI    99 'NOT CALCULATED' /
   A1SA28    997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   A1SA29    997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   A1SA30A   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA30B   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA30C   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA31    997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   A1SA32    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA32A   97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SA33    97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SA33A   97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SA34    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA35    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA36A   97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SA36B   97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SA36C   997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   A1SA36D   97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SUSEMD  999 'NOT CALCULATED' /
   A1SA37A   997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   A1SA37B   97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SA37C   997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   A1SA37D   997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   A1SUSEMH  999 'NOT CALCULATED' /
   A1SA38A   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA38AY  97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SA38AZ  997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   A1SA38B   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA38BY  97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SA38BZ  97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SA38C   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA38CY  97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SA38CZ  97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SA38D   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA38DY  97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SA38DZ  97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SA38E   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA38EY  97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SA38EZ  97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SA38F   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA38FY  97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SA38FZ  97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SA38G   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA38GY  97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SA38GZ  97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SA38H   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA38HY  97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SA38HZ  97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SA38I   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA38IY  97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SA38IZ  98 'REFUSED/MISSING' 99 'INAPP' /
   A1SA38J   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA38JY  97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SA38JZ  997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   A1SA38K   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA38KY  97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SA38KZ  997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   A1SA39A   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA39B   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA39C   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA39D   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA39E   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA39F   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA39G   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA39H   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA39I   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA39J   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA39K   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA39L   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA39M   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA39N   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA39O   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA39P   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SALTER  1 'YES' 2 'NO' 9 'NOT CALCULATED' /
   A1SA40A   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA40B   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA40C   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA40D   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA40E   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA40F   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA40G   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA40H   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA40I   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA40J   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA41    1 'NEVER' 2 'ONCE OR TWICE' 3 '3 TO 5 TIMES' 4 '6 TO 10 TIMES'
             5 '11 TO 20 TIMES' 6 'MORE THAN 20 TIMES' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA42    1 'NEVER' 2 'ONCE OR TWICE' 3 '3 TO 5 TIMES' 4 '6 TO 10 TIMES'
             5 '11 TO 20 TIMES' 6 'MORE THAN 20 TIMES' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA43A   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA43B   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA43C   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA43D   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA43E   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA44A   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA44B   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA44C   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA44D   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA44E   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA45    1 'NEVER' 2 'ONCE OR TWICE' 3 '3 TO 5 TIMES' 4 '6 TO 10 TIMES'
             5 '11 TO 20 TIMES' 6 'MORE THAN 20 TIMES' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA46    1 'NEVER' 2 'ONCE OR TWICE' 3 '3 TO 5 TIMES' 4 '6 TO 10 TIMES'
             5 '11 TO 20 TIMES' 6 'MORE THAN 20 TIMES' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   SKIP_SB1  1 'SKIP' 2 'NO SKIP' /
   A1SB1     97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SB2     1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NONE AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SB3     1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NONE AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SB4     1 'GREAT RELIEF' 2 'SOME RELIEF' 3 'MIXED RELIEF'
             4 'SOME REGRET' 5 'GREAT REGRET'
             6 'NO PARTICULAR FEELING EITHER WAY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SB5A    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SB5B    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SB5C    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SB6     1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SB6A    97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SB6B    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SB6C    97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SB7A1   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SB7A2   97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SB7B1   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SB7B2   97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SB7C1   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SB7C2   97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SB7D1   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SB7D2   97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SB7E1   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SB7E2   97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SB7F1   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SB7F2   97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SB8A    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NONE AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SB8B    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NONE AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SB8C    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NONE AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SB9     1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SB9A    97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SB10    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SB10A   1 'MORE REGULAR' 2 'LESS REGULAR' 3 'NO CHANGE' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SB10B   1 'LIGHTER' 2 'HEAVIER' 3 'ABOUT THE SAME' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SB10C   1 'PREGNANCY' 2 'EXTREME DIETING'
             3 'SIDE EFFECT OF, OR CAUSED BY SURGERY'
             4 'SIDE EFFECT OF, OR CAUSED BY MEDICATION'
             5 'POSSIBLE BEGINNING OF MENOPAUSE' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SC1A    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SC1B    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SC1C    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SC1D    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SC1E    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SC1F    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SC1G    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SC1H    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SC2     1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SC3A    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SC3B    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SC3C    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SC3D    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SC4A    1 'ELIGIBLE' 2 'NOT ELIGIBLE' 7 'DONT KNOW' 8 'REFUSED/MISSING'
             9 'INAPP' /
   A1SC4B    1 'ELIGIBLE' 2 'NOT ELIGIBLE' 7 'DONT KNOW' 8 'REFUSED/MISSING'
             9 'INAPP' /
   A1SC4C    1 'ELIGIBLE' 2 'NOT ELIGIBLE' 7 'DONT KNOW' 8 'REFUSED/MISSING'
             9 'INAPP' /
   SKIP_SC5  1 'SKIP' 2 'NO SKIP' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP'
             /
   A1SC5A    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SC5B    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SC5C    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SC5D    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SC5E    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SC5F    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SC5G    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SC5H    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SC6     1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SD1     1 'EXCELLENT' 2 'VERY GOOD' 3 'GOOD' 4 'FAIR' 5 'POOR'
             6 'DECEASED' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SD2     1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SD2A    997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   A1SD2B    1 'EXCELLENT' 2 'VERY GOOD' 3 'GOOD' 4 'FAIR' 5 'POOR'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SD2C    45 '1945 OR PRIOR TO 1945' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SD2D    997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   A1SD3     1 'EXCELLENT' 2 'VERY GOOD' 3 'GOOD' 4 'FAIR' 5 'POOR'
             6 'DECEASED' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SD4     1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SD4A    997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   A1SD4B    1 'EXCELLENT' 2 'VERY GOOD' 3 'GOOD' 4 'FAIR' 5 'POOR'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SD4C    45 '1945 OR PRIOR TO 1945' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SD4D    997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   A1SE2     1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE3     1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE4     1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE5     1 'ENGLISH ONLY LANGUAGE SPOKEN REGULARLY'
             2 'ENGLISH MAIN, SECOND LANGUAGE ALSO SPOKEN REGULARLY'
             3 'OTHER LANGUAGE MAIN, ENGLISH ALSO SPOKEN REGULARLY'
             4 'OTHER LANGUAGE ONLY' 7 'DONT KNOW' 8 'REFUSED/MISSING'
             9 'INAPP' /
   A1SE6     1 'VERY IMPORTANT' 2 'SOMEWHAT IMPORTANT' 3 'NOT VERY IMPORTANT'
             4 'NOT AT ALL IMPORTANT' 7 'DONT KNOW' 8 'REFUSED/MISSING'
             9 'INAPP' /
   A1SE7     1 'RURAL' 2 'SMALL TOWN' 3 'MEDIUM-SIZED TOWN' 4 'SUBURBS'
             5 'CITY' 6 'MOVED AROUND' 7 'DONT KNOW' 8 'REFUSED/MISSING'
             9 'INAPP' /
   A1SE8     97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SE9     1 'A LOT BETTER OFF' 2 'SOMEWHAT BETTER OFF'
             3 'A LITTLE BETTER OFF' 4 'SAME AS AVERAGE FAMILY'
             5 'A LITTLE WORSE OFF' 6 'SOMEWHAT WORSE OFF'
             7 'A LOT WORSE OFF' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SE10    1 'A LOT BETTER OFF' 2 'SOMEWHAT BETTER OFF'
             3 'A LITTLE BETTER OFF' 4 'SAME AS YOU' 5 'A LITTLE WORSE OFF'
             6 'SOMEWHAT WORSE OFF' 7 'A LOT WORSE OFF' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SE11    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NONE' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE12    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NONE' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   SKIP_E13  1 'SKIP' 2 'NO SKIP' /
   A1SE13    1 'EXCELLENT' 2 'VERY GOOD' 3 'GOOD' 4 'FAIR' 5 'POOR'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE14A   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE14B   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE14C   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE14D   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE14E   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE14F   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE14G   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE14H   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE14I   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE14J   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE14K   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE14L   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE14M   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SEMA    9 'NOT CALCULATED' /
   A1SEMD    9 'NOT CALCULATED' /
   A1SMMOD   9 'NOT CALCULATED' /
   A1SE15    1 'EXCELLENT' 2 'VERY GOOD' 3 'GOOD' 4 'FAIR' 5 'POOR'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE16A   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE16B   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE16C   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE16D   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE16E   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE16F   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE16G   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE16H   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE16I   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE16J   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE16K   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE16L   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE16M   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SEFA    9 'NOT CALCULATED' /
   A1SEFD    9 'NOT CALCULATED' /
   A1SEFMOD  9 'NOT CALCULATED' /
   A1SEMAPA  9 'NOT CALCULATED' /
   A1SE17A   1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 6 'DOES NOT APPLY'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE17B   1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 6 'DOES NOT APPLY'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE17C   1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 6 'DOES NOT APPLY'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE17D   1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 6 'DOES NOT APPLY'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE17E   1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE17F   1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 6 'DOES NOT APPLY'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE17G   1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 6 'DOES NOT APPLY'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE17H   1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 6 'DOES NOT APPLY'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE17I   1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 6 'DOES NOT APPLY'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE17J   1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE17K   1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 6 'DOES NOT APPLY'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE17L   1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 6 'DOES NOT APPLY'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE17M   1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 6 'DOES NOT APPLY'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE17N   1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 6 'DOES NOT APPLY'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE17O   1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE18A   97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SE18B   97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SE18C   7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SE19A   97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SE19B   97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SE19C   7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF1A    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF1B    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF1C    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF1D    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF1E    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF1F    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF1G    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF1H    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF1I    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF1J    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF1K    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF1L    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF1M    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF1N    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF1O    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF1P    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF1Q    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF1R    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF1S    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF1T    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF1U    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF1V    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF1W    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF1X    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF1Y    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF1Z    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF1AA   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF1BB   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF1CC   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF1DD   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SCTRL   9 'NOT CALCULATED' /
   A1SPWBA   99 'NOT CALCULATED' /
   A1SPWBE   99 'NOT CALCULATED' /
   A1SPWBG   99 'NOT CALCULATED' /
   A1SPWBR   99 'NOT CALCULATED' /
   A1SPWBU   99 'NOT CALCULATED' /
   A1SPWBS   99 'NOT CALCULATED' /
   A1SCONST  99 'NOT CALCULATED' /
   A1SMASTE  99 'NOT CALCULATED' /
   A1SF2A    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF2B    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF2C    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF2D    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF2E    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF2F    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF2G    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF2H    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF2I    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF2J    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF2K    1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SMAR    99 'NOT CALCULATED' /
   A1SFAM    99 'NOT CALCULATED' /
   A1SF3A    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF3B    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF3C    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF3D    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF3E    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF3F    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF3G    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF3H    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF3I    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF3J    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF3K    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF3L    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF3M    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF3N    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF3O    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF3P    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF3Q    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF3R    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF3S    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF3T    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF3U    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF3V    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF3W    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF3X    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF3Y    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF3Z    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF3AA   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF3BB   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF3CC   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF3DD   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF3EE   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF3FF   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF3GG   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF3HH   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF3II   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF3JJ   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF3KK   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SPERSI  9 'NOT CALCULATED' /
   A1SCHANG  9 'NOT CALCULATED' /
   A1SREAPP  9 'NOT CALCULATED' /
   A1SDIREC  9 'NOT CALCULATED' /
   A1STODAY  9 'NOT CALCULATED' /
   A1SFORSG  9 'NOT CALCULATED' /
   A1SINSGH  9 'NOT CALCULATED' /
   A1SSUFFI  9 'NOT CALCULATED' /
   A1SADVIC  9 'NOT CALCULATED' /
   A1SF4A    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF4B    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF4C    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF4D    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF4E    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF4F    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF4G    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF4H    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF4I    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF4J    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF4K    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF4L    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF4M    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF4N    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF4O    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF4P    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF4Q    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF4R    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF4S    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF4T    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF4U    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF4V    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF4W    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF4X    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF4Y    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF4Z    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF4AA   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF4BB   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF4CC   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF4DD   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SAGENC  9 'NOT CALCULATED' /
   A1SAGREE  9 'NOT CALCULATED' /
   A1SEXTRA  9 'NOT CALCULATED' /
   A1SNEURO  9 'NOT CALCULATED' /
   A1SCONS   9 'NOT CALCULATED' /
   A1SOPEN   9 'NOT CALCULATED' /
   A1SF5A    0 'NOT AT ALL' 10 'VERY MUCH' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SF5B    0 'NOT AT ALL' 10 'VERY MUCH' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SF5C    0 'NOT AT ALL' 10 'VERY MUCH' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SF5D    0 'NOT AT ALL' 10 'VERY MUCH' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SF5E    0 'NOT AT ALL' 10 'VERY MUCH' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SF5F    0 'NOT AT ALL' 10 'VERY MUCH' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SF5G    0 'NOT AT ALL' 10 'VERY MUCH' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SF5H    0 'NOT AT ALL' 10 'VERY MUCH' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SF5I    0 'NOT AT ALL' 10 'VERY MUCH' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SF5J    0 'NOT AT ALL' 10 'VERY MUCH' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SF5K    0 'NOT AT ALL' 10 'VERY MUCH' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SF5L    0 'NOT AT ALL' 10 'VERY MUCH' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SF5M    0 'NOT AT ALL' 10 'VERY MUCH' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SF5N    0 'NOT AT ALL' 10 'VERY MUCH' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SF5O    0 'NOT AT ALL' 10 'VERY MUCH' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SF5P    0 'NOT AT ALL' 10 'VERY MUCH' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SF5Q    0 'NOT AT ALL' 10 'VERY MUCH' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SF5R    0 'NOT AT ALL' 10 'VERY MUCH' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SF6A    1 'A LOT MORE LIKE A' 2 'SOMEWHAT MORE LIKE A'
             3 'A LITTLE MORE LIKE A' 4 'A LITTLE MORE LIKE B'
             5 'SOMEWHAT MORE LIKE B' 6 'A LOT MORE LIKE B' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF6B    1 'A LOT MORE LIKE A' 2 'SOMEWHAT MORE LIKE A'
             3 'A LITTLE MORE LIKE A' 4 'A LITTLE MORE LIKE B'
             5 'SOMEWHAT MORE LIKE B' 6 'A LOT MORE LIKE B' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF6C    1 'A LOT MORE LIKE A' 2 'SOMEWHAT MORE LIKE A'
             3 'A LITTLE MORE LIKE A' 4 'A LITTLE MORE LIKE B'
             5 'SOMEWHAT MORE LIKE B' 6 'A LOT MORE LIKE B' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF7A    1 'A LOT MORE LIKE A' 2 'SOMEWHAT MORE LIKE A'
             3 'A LITTLE MORE LIKE A' 4 'A LITTLE MORE LIKE B'
             5 'SOMEWHAT MORE LIKE B' 6 'A LOT MORE LIKE B' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF7B    1 'A LOT MORE LIKE A' 2 'SOMEWHAT MORE LIKE A'
             3 'A LITTLE MORE LIKE A' 4 'A LITTLE MORE LIKE B'
             5 'SOMEWHAT MORE LIKE B' 6 'A LOT MORE LIKE B' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF7C    1 'A LOT MORE LIKE A' 2 'SOMEWHAT MORE LIKE A'
             3 'A LITTLE MORE LIKE A' 4 'A LITTLE MORE LIKE B'
             5 'SOMEWHAT MORE LIKE B' 6 'A LOT MORE LIKE B' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF8A    1 'A LOT MORE LIKE A' 2 'SOMEWHAT MORE LIKE A'
             3 'A LITTLE MORE LIKE A' 4 'A LITTLE MORE LIKE B'
             5 'SOMEWHAT MORE LIKE B' 6 'A LOT MORE LIKE B' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF8B    1 'A LOT MORE LIKE A' 2 'SOMEWHAT MORE LIKE A'
             3 'A LITTLE MORE LIKE A' 4 'A LITTLE MORE LIKE B'
             5 'SOMEWHAT MORE LIKE B' 6 'A LOT MORE LIKE B' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SF8C    1 'A LOT MORE LIKE A' 2 'SOMEWHAT MORE LIKE A'
             3 'A LITTLE MORE LIKE A' 4 'A LITTLE MORE LIKE B'
             5 'SOMEWHAT MORE LIKE B' 6 'A LOT MORE LIKE B' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SG1A    0 'NOT AT ALL' 10 'VERY MUCH' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SG1B    0 'NOT AT ALL' 10 'VERY MUCH' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SG1C    0 'NOT AT ALL' 10 'VERY MUCH' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SG1D    0 'NOT AT ALL' 10 'VERY MUCH' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SG1E    0 'NOT AT ALL' 10 'VERY MUCH' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SG1F    0 'NOT AT ALL' 10 'VERY MUCH' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SG1G    0 'NOT AT ALL' 10 'VERY MUCH' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SG1H    0 'NOT AT ALL' 10 'VERY MUCH' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SG1I    0 'NOT AT ALL' 10 'VERY MUCH' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SG1J    0 'NOT AT ALL' 10 'VERY MUCH' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SG1K    0 'NOT AT ALL' 10 'VERY MUCH' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SG1L    0 'NOT AT ALL' 10 'VERY MUCH' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SG1M    0 'NOT AT ALL' 10 'VERY MUCH' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SG1N    0 'NOT AT ALL' 10 'VERY MUCH' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SG1O    0 'NOT AT ALL' 10 'VERY MUCH' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SG1P    0 'NOT AT ALL' 10 'VERY MUCH' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SG1Q    0 'NOT AT ALL' 10 'VERY MUCH' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SG1R    0 'NOT AT ALL' 10 'VERY MUCH' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SG2A    0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SG2B    0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SG2C    0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SG2D    0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SG2E    0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SG2F    0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SG2G    0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SG2H    0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SG2I    0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SG2J    0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SG2K    0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SG2L    0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SG2M    0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SG2N    0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SG2O    0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SG2P    0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SG2Q    0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SG2R    0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SG2S    0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SG2T    0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SG2U    0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SG3     996 '996 OR GREATER' 997 'DONT KNOW' 998 'REFUSED/MISSING'
             999 'INAPP' /
   A1SG4     996 '996 OR GREATER' 997 'DONT KNOW' 998 'REFUSED/MISSING'
             999 'INAPP' /
   A1SG5     97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SG6     998 'REFUSED/MISSING' /
   A1SG7     998 'REFUSED/MISSING' /
   A1SG8     998 'REFUSED/MISSING' /
   A1SH1     1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SH2     1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SH3     1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SH4     1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SH5     1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SH6     1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SH7     1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI1A1   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI1A2   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI1A3   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI1B1   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI1B2   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI1B3   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI1C1   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI1C2   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI1C3   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI1D1   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI1D2   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI1D3   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI1E1   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI1E2   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI1E3   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI1F1   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI1F2   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI1F3   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI1G1   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI1G2   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI1G3   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI1H1   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI1H2   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI1H3   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI1I1   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI1I2   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI1I3   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI1J1   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI1J2   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI1J3   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI1K1   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI1K2   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI1K3   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI2     0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SI3     0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SI4     0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SI5     0 'NONE' 10 'VERY MUCH' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SI6     0 'NONE' 10 'VERY MUCH' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   SKIP_SI7  1 'SKIP' 2 'NO SKIP' /
   A1SI7     97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SI8     97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SI9     97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SI10    9997 'DONT KNOW' 9998 'REFUSED/MISSING' 9999 'INAPP' /
   A1SI11    1 'WANTED TO WORK BUT COULD NOT FIND A JOB'
             2 'PHYSICAL INJURY OR ILLNESS KEPT YOU FROM WORKING'
             3 'MENTAL OR EMOTIONAL PROBLEMS KEPT YOU FROM WORKING'
             4 'ALCOHOL OR SUBSTANCE ABUSE KEPT YOU FROM WORKING'
             5 'DID NOT WORK BECAUSE OF FAMILY RESPONSIBILITIES'
             6 'ATTENDING SCHOOL PART-TIME'
             7 'CHOSE NOT TO WORK TO PURSUE PERSONAL INTERESTS'
             97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SI12A   1 'WORKED FULL-TIME' 2 'WORKED PART-TIME'
             3 'NO WORK OR WORKED LESS THAN 6 MONTHS' 4 'FULL-TIME STUDENT'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI12B   1 'WORKED FULL-TIME' 2 'WORKED PART-TIME'
             3 'NO WORK OR WORKED LESS THAN 6 MONTHS' 4 'FULL-TIME STUDENT'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI12C   1 'WORKED FULL-TIME' 2 'WORKED PART-TIME'
             3 'NO WORK OR WORKED LESS THAN 6 MONTHS' 4 'FULL-TIME STUDENT'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI12D   1 'WORKED FULL-TIME' 2 'WORKED PART-TIME'
             3 'NO WORK OR WORKED LESS THAN 6 MONTHS' 4 'FULL-TIME STUDENT'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI12E   1 'WORKED FULL-TIME' 2 'WORKED PART-TIME'
             3 'NO WORK OR WORKED LESS THAN 6 MONTHS' 4 'FULL-TIME STUDENT'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI12F   1 'WORKED FULL-TIME' 2 'WORKED PART-TIME'
             3 'NO WORK OR WORKED LESS THAN 6 MONTHS' 4 'FULL-TIME STUDENT'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI12G   1 'WORKED FULL-TIME' 2 'WORKED PART-TIME'
             3 'NO WORK OR WORKED LESS THAN 6 MONTHS' 4 'FULL-TIME STUDENT'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI12H   1 'WORKED FULL-TIME' 2 'WORKED PART-TIME'
             3 'NO WORK OR WORKED LESS THAN 6 MONTHS' 4 'FULL-TIME STUDENT'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI12I   1 'WORKED FULL-TIME' 2 'WORKED PART-TIME'
             3 'NO WORK OR WORKED LESS THAN 6 MONTHS' 4 'FULL-TIME STUDENT'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI12J   1 'WORKED FULL-TIME' 2 'WORKED PART-TIME'
             3 'NO WORK OR WORKED LESS THAN 6 MONTHS' 4 'FULL-TIME STUDENT'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI13A   97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SI13B   97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SI13C   97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SI13D   97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SI14    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI15A   1 '4 OR MORE TIMES PER WEEK' 2 '2 TO 3 TIMES PER WEEK'
             3 'ONCE A WEEK' 4 '1 TO 3 TIMES PER MONTH'
             5 'LESS THAN ONCE A MONTH OR NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI15B   1 '4 OR MORE TIMES PER WEEK' 2 '2 TO 3 TIMES PER WEEK'
             3 'ONCE A WEEK' 4 '1 TO 3 TIMES PER MONTH'
             5 'LESS THAN ONCE A MONTH OR NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI15C   1 '4 OR MORE TIMES PER WEEK' 2 '2 TO 3 TIMES PER WEEK'
             3 'ONCE A WEEK' 4 '1 TO 3 TIMES PER MONTH'
             5 'LESS THAN ONCE A MONTH OR NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI15D   1 '4 OR MORE TIMES PER WEEK' 2 '2 TO 3 TIMES PER WEEK'
             3 'ONCE A WEEK' 4 '1 TO 3 TIMES PER MONTH'
             5 'LESS THAN ONCE A MONTH OR NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI16    9997 'DONT KNOW' 9998 'REFUSED/MISSING' 9999 'INAPP' /
   A1SI17    9997 'DONT KNOW' 9998 'REFUSED/MISSING' 9999 'INAPP' /
   A1SI18    0 'WORK AT HOME' 997 'DONT KNOW' 998 'REFUSED/MISSING'
             999 'INAPP' /
   A1SI19    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI20    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI21    1 'EXCELLENT' 2 'VERY GOOD' 3 'GOOD' 4 'FAIR' 5 'POOR'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI22    1 'VERY POSITIVE' 2 'SOMEWHAT POSITIVE'
             3 'NEITHER POSITIVE NOR NEGATIVE/BALANCES OUT'
             4 'SOMEWHAT NEGATIVE' 5 'VERY NEGATIVE' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI23    1 'VERY POSITIVE' 2 'SOMEWHAT POSITIVE'
             3 'NEITHER POSITIVE NOR NEGATIVE/BALANCES OUT'
             4 'SOMEWHAT NEGATIVE' 5 'VERY NEGATIVE' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI24    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI25    997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   A1SI26    1 'VERY SERIOUS' 2 'MODERATELY SERIOUS' 3 'SOMEWHAT SERIOUS'
             4 'A LITTLE SERIOUS' 5 'NOT VERY SERIOUS AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI27A   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOMETIMES'
             4 'RARELY' 5 'NEVER' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP'
             /
   A1SI27B   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOMETIMES'
             4 'RARELY' 5 'NEVER' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP'
             /
   A1SI27C   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOMETIMES'
             4 'RARELY' 5 'NEVER' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP'
             /
   A1SI27D   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOMETIMES'
             4 'RARELY' 5 'NEVER' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP'
             /
   A1SI27E   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOMETIMES'
             4 'RARELY' 5 'NEVER' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP'
             /
   A1SI27F   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOMETIMES'
             4 'RARELY' 5 'NEVER' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP'
             /
   A1SI27G   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOMETIMES'
             4 'RARELY' 5 'NEVER' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP'
             /
   A1SI27H   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOMETIMES'
             4 'RARELY' 5 'NEVER' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP'
             /
   A1SI27I   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOMETIMES'
             4 'RARELY' 5 'NEVER' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP'
             /
   A1SI27J   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOMETIMES'
             4 'RARELY' 5 'NEVER' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP'
             /
   A1SI27K   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOMETIMES'
             4 'RARELY' 5 'NEVER' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP'
             /
   A1SI27L   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOMETIMES'
             4 'RARELY' 5 'NEVER' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP'
             /
   A1SI27M   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOMETIMES'
             4 'RARELY' 5 'NEVER' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP'
             /
   A1SI27N   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOMETIMES'
             4 'RARELY' 5 'NEVER' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP'
             /
   A1SI27O   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOMETIMES'
             4 'RARELY' 5 'NEVER' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP'
             /
   A1SI27P   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOMETIMES'
             4 'RARELY' 5 'NEVER' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP'
             /
   A1SPOSWF  99 'NOT CALCULATED' /
   A1SNEGWF  99 'NOT CALCULATED' /
   A1SPOSFW  99 'NOT CALCULATED' /
   A1SNEGFW  99 'NOT CALCULATED' /
   A1SI28A   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOMETIMES'
             4 'RARELY' 5 'NEVER' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP'
             /
   A1SI28B   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOMETIMES'
             4 'RARELY' 5 'NEVER' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP'
             /
   A1SI28C   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOMETIMES'
             4 'RARELY' 5 'NEVER' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP'
             /
   A1SI28D   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOMETIMES'
             4 'RARELY' 5 'NEVER' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP'
             /
   A1SI28E   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOMETIMES'
             4 'RARELY' 5 'NEVER' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP'
             /
   A1SI28F   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOMETIMES'
             4 'RARELY' 5 'NEVER' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP'
             /
   A1SI28G   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOMETIMES'
             4 'RARELY' 5 'NEVER' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP'
             /
   A1SI28H   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOMETIMES'
             4 'RARELY' 5 'NEVER' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP'
             /
   A1SI28I   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOMETIMES'
             4 'RARELY' 5 'NEVER' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP'
             /
   A1SI28J   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOMETIMES'
             4 'RARELY' 5 'NEVER' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP'
             /
   A1SI29A   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOMETIMES'
             4 'RARELY' 5 'NEVER' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP'
             /
   A1SI29B   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOMETIMES'
             4 'RARELY' 5 'NEVER' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP'
             /
   A1SI29C   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOMETIMES'
             4 'RARELY' 5 'NEVER' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP'
             /
   A1SI29D   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOMETIMES'
             4 'RARELY' 5 'NEVER' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP'
             /
   A1SJCSD   99 'NOT CALCULATED' /
   A1SJCDA   99 'NOT CALCULATED' /
   A1SJCDS   99 'NOT CALCULATED' /
   A1SJCCS   99 'NOT CALCULATED' /
   A1SJCSS   99 'NOT CALCULATED' /
   A1SI30A   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOMETIMES'
             4 'RARELY' 5 'NEVER' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI30B   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOMETIMES'
             4 'RARELY' 5 'NEVER' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI30C   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOMETIMES'
             4 'RARELY' 5 'NEVER' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI30D   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOMETIMES'
             4 'RARELY' 5 'NEVER' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI30E   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOMETIMES'
             4 'RARELY' 5 'NEVER' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI31A   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI31B   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI31C   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI31D   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI31E   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI31F   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SPIWOR  9 'NOT CALCULATED' /
   A1SI32A   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOMETIMES'
             4 'RARELY' 5 'NEVER' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP'
             /
   A1SI32B   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOMETIMES'
             4 'RARELY' 5 'NEVER' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP'
             /
   A1SI32C   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOMETIMES'
             4 'RARELY' 5 'NEVER' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP'
             /
   A1SI32D   1 'ALL OF THE TIME' 2 'MOST OF THE TIME' 3 'SOMETIMES'
             4 'RARELY' 5 'NEVER' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP'
             /
   A1SI33A   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI33B   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI33C   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI34A   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL'
             6 'DOES NOT APPLY' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI34B   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL'
             6 'DOES NOT APPLY' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SI34C   1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL'
             6 'DOES NOT APPLY' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SJ1     0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SJ2     0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SJ3     0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SJ4     0 'NONE' 10 'VERY MUCH' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SJ5     0 'NONE' 10 'VERY MUCH' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SJ6     1 'MORE MONEY THAN YOU NEED' 2 'JUST ENOUGH MONEY'
             3 'NOT ENOUGH MONEY' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP'
             /
   A1SJ7     1 'VERY DIFFICULT' 2 'SOMEWHAT DIFFICULT' 3 'NOT VERY DIFFICULT'
             4 'NOT AT ALL DIFFICULT' 7 'DONT KNOW' 8 'REFUSED/MISSING'
             9 'INAPP' /
   A1SJ8     1 'LESS THAN $0/LOSS' 2 '$0/NONE' 3 '$1-1000' 4 '$1000-1999'
             5 '$2000-2999' 6 '$3000-3999' 7 '$4000-4999' 8 '$5000-5999'
             9 '$6000-6999' 10 '$7000-7999' 11 '$8000-8999' 12 '$9000-9999'
             13 '$10000-10999' 14 '$11000-11999' 15 '$12000-12999'
             16 '$13000-13999' 17 '$14000-14999' 18 '$15000-15999'
             19 '$16000-16999' 20 '$17000-17999' 21 '$18000-18999'
             22 '$19000-19999' 23 '$20000-24999' 24 '$25000-29999'
             25 '$30000-34999' 26 '$35000-39999' 27 '$40000-44999'
             28 '$45000-49999' 29 '$50000-74999' 30 '$75000-99999'
             31 '$100,000 OR MORE' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SJ8M    125000 '$100,000 OR MORE' 999999 'NOT CALCULATED' /
   A1SJ9     1 'LESS THAN $0/LOSS' 2 '$0/NONE' 3 '$1-1000' 4 '$1000-1999'
             5 '$2000-2999' 6 '$3000-3999' 7 '$4000-4999' 8 '$5000-5999'
             9 '$6000-6999' 10 '$7000-7999' 11 '$8000-8999' 12 '$9000-9999'
             13 '$10000-10999' 14 '$11000-11999' 15 '$12000-12999'
             16 '$13000-13999' 17 '$14000-14999' 18 '$15000-15999'
             19 '$16000-16999' 20 '$17000-17999' 21 '$18000-18999'
             22 '$19000-19999' 23 '$20000-24999' 24 '$25000-29999'
             25 '$30000-34999' 26 '$35000-39999' 27 '$40000-44999'
             28 '$45000-49999' 29 '$50000-74999' 30 '$75000-99999'
             31 '$100,000 OR MORE' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SJ9M    125000 '$100,000 OR MORE' 999999 'NOT CALCULATED' /
   A1SHWEARN 999999 'Not Calculated' /
   A1SJ10    1 'LESS THAN $0/LOSS' 2 '$0/NONE' 3 '$1-1000' 4 '$1000-1999'
             5 '$2000-2999' 6 '$3000-3999' 7 '$4000-4999' 8 '$5000-5999'
             9 '$6000-6999' 10 '$7000-7999' 11 '$8000-8999' 12 '$9000-9999'
             13 '$10000-10999' 14 '$11000-11999' 15 '$12000-12999'
             16 '$13000-13999' 17 '$14000-14999' 18 '$15000-15999'
             19 '$16000-16999' 20 '$17000-17999' 21 '$18000-18999'
             22 '$19000-19999' 23 '$20000-24999' 24 '$25000-29999'
             25 '$30000-34999' 26 '$35000-39999' 27 '$40000-44999'
             28 '$45000-49999' 29 '$50000-74999' 30 '$75000-99999'
             31 '$100,000 OR MORE' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SJ10M   125000 '$100,000 OR MORE' 999999 'NOT CALCULATED' /
   A1SJ11    1 'LESS THAN $0/LOSS' 2 '$0/NONE' 3 '$1-1000' 4 '$1000-1999'
             5 '$2000-2999' 6 '$3000-3999' 7 '$4000-4999' 8 '$5000-5999'
             9 '$6000-6999' 10 '$7000-7999' 11 '$8000-8999' 12 '$9000-9999'
             13 '$10000-10999' 14 '$11000-11999' 15 '$12000-12999'
             16 '$13000-13999' 17 '$14000-14999' 18 '$15000-15999'
             19 '$16000-16999' 20 '$17000-17999' 21 '$18000-18999'
             22 '$19000-19999' 23 '$20000-24999' 24 '$25,000 OR MORE'
             97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SJ11M   27500 '$25,000 OR MORE' 999999 'NOT CALCULATED' /
   A1SJ12    1 'LESS THAN $0/LOSS' 2 '$0/NONE' 3 '$1-1000' 4 '$1000-1999'
             5 '$2000-2999' 6 '$3000-3999' 7 '$4000-4999' 8 '$5000-5999'
             9 '$6000-6999' 10 '$7000-7999' 11 '$8000-8999' 12 '$9000-9999'
             13 '$10000-10999' 14 '$11000-11999' 15 '$12000-12999'
             16 '$13000-13999' 17 '$14000-14999' 18 '$15000-15999'
             19 '$16000-16999' 20 '$17000-17999' 21 '$18000-18999'
             22 '$19000-19999' 23 '$20000-24999' 24 '$25,000 OR MORE'
             97 'DONT KNOW' 98 'MISSING DATA' 99 'INAPP' /
   A1SJ12M   27500 '$25,000 OR MORE' 999999 'NOT CALCULATED' /
   A1SJ13    1 'LESS THAN $0/LOSS' 2 '$0/NONE' 3 '$1-1000' 4 '$1000-1999'
             5 '$2000-2999' 6 '$3000-3999' 7 '$4000-4999' 8 '$5000-5999'
             9 '$6000-6999' 10 '$7000-7999' 11 '$8000-8999' 12 '$9000-9999'
             13 '$10000-10999' 14 '$11000-11999' 15 '$12000-12999'
             16 '$13000-13999' 17 '$14000-14999' 18 '$15000-15999'
             19 '$16000-16999' 20 '$17000-17999' 21 '$18000-18999'
             22 '$19000-19999' 23 '$20000-24999' 24 '$25000-29999'
             25 '$30000-34999' 26 '$35000-39999' 27 '$40000-44999'
             28 '$45000-49999' 29 '$50000-74999' 30 '$75000-99999'
             31 '$100000 OR MORE' 97 'DONT KNOW' 98 'MISSING DATA' 99 'INAPP'
             /
   A1SJ13M   125000 '$100,000 OR MORE' 999999 'NOT CALCULATED' /
   A1SHHTOT  300000 '$300,000 OR MORE' 999999 'NOT CALCULATED' /
   A1SJ14    1 'WOULD HAVE MONEY LEFT OVER' 2 'WOULD STILL OWE MONEY'
             3 'DEBTS WOULD JUST ABOUT EQUAL ASSETS' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SJ15    1 'LESS THAN $0/LOSS' 2 '$0/NONE' 3 '$1-1000' 4 '$1000-1999'
             5 '$2000-2999' 6 '$3000-3999' 7 '$4000-4999' 8 '$5000-5999'
             9 '$6000-6999' 10 '$7000-7999' 11 '$8000-8999' 12 '$9000-9999'
             13 '$10000-10999' 14 '$11000-11999' 15 '$12000-12999'
             16 '$13000-13999' 17 '$14000-14999' 18 '$15000-15999'
             19 '$16000-16999' 20 '$17000-17999' 21 '$18000-18999'
             22 '$19000-19999' 23 '$20000-24999' 24 '$25000-29999'
             25 '$30000-34999' 26 '$35000-39999' 27 '$40000-44999'
             28 '$45000-49999' 29 '$50000-74999' 30 '$75000-99999'
             31 '$100000-149999' 32 '$150000-199999' 33 '$200000-299999'
             34 '$300000-499999' 35 '$500000-999999' 36 '$1000000 OR MORE'
             97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SASSET  99999 'NOT CALCULATED' /
   A1SJ16    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SJ17    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SJ18    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SJ19    1 'YES' 2 'NO' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SK1     0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SK2     0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SK3     0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SK4     0 'NONE' 10 'VERY MUCH' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SK5     0 'NONE' 10 'VERY MUCH' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SK6A    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SK6B    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SK6C    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SK6D    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SK6E    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SK6F    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SGENER  99 'NOT CALCULATED' /
   A1SK7A    0 'NONE' 10 'VERY GREAT' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SK7B    0 'NONE' 10 'VERY GREAT' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SK7C    0 'NONE' 10 'VERY GREAT' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SK7D    0 'NONE' 10 'VERY GREAT' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SK7E    0 'NONE' 10 'VERY GREAT' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SK7F    0 'NONE' 10 'VERY GREAT' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SK7G    0 'NONE' 10 'VERY GREAT' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SK7H    0 'NONE' 10 'VERY GREAT' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SK7I    0 'NONE' 10 'VERY GREAT' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SK7J    0 'NONE' 10 'VERY GREAT' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SK7K    0 'NONE' 10 'VERY GREAT' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SK7L    0 'NONE' 10 'VERY GREAT' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SK7M    0 'NONE' 10 'VERY GREAT' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SK7N    0 'NONE' 10 'VERY GREAT' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SK7O    0 'NONE' 10 'VERY GREAT' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SK7P    0 'NONE' 10 'VERY GREAT' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SK7Q    0 'NONE' 10 'VERY GREAT' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SK7R    0 'NONE' 10 'VERY GREAT' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SK7A1S  0 'NONE' 10 'VERY GREAT' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SPRIOB  99 'NOT CALCULATED' /
   A1SCVOB3  99 'NOT CALCULATED' /
   A1SCVOB5  99 'NOT CALCULATED' /
   A1SWKOB   99 'NOT CALCULATED' /
   A1SALTRU  99 'NOT CALCULATED' /
   A1SK8A    997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   A1SK8B    997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   A1SK8C    997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   A1SK8D    997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   A1SK9A    97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SK9B    97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SK9C    97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SK9D    97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SK9E    998 'REFUSED/MISSING' /
   A1SK10A   0 'NONE OR DOES NOT APPLY' 997 'DONT KNOW' 998 'REFUSED/MISSING'
             999 'INAPP' /
   A1SK10B   0 'NONE OR DOES NOT APPLY' 997 'DONT KNOW' 998 'REFUSED/MISSING'
             999 'INAPP' /
   A1SK10C   0 'NONE OR DOES NOT APPLY' 997 'DONT KNOW' 998 'REFUSED/MISSING'
             999 'INAPP' /
   A1SK10D   0 'NONE OR DOES NOT APPLY' 997 'DONT KNOW' 998 'REFUSED/MISSING'
             999 'INAPP' /
   A1SK10E   0 'NONE OR DOES NOT APPLY' 997 'DONT KNOW' 998 'REFUSED/MISSING'
             999 'INAPP' /
   A1SK10F   0 'NONE OR DOES NOT APPLY' 997 'DONT KNOW' 998 'REFUSED/MISSING'
             999 'INAPP' /
   A1SPSUPE  9999 'NOT CALCULATED' /
   A1SK11A   0 'NONE OR DOES NOT APPLY' 997 'DONT KNOW' 998 'REFUSED/MISSING'
             999 'INAPP' /
   A1SK11B   0 'NONE OR DOES NOT APPLY' 997 'DONT KNOW' 998 'REFUSED/MISSING'
             999 'INAPP' /
   A1SK11C   0 'NONE OR DOES NOT APPLY' 997 'DONT KNOW' 998 'REFUSED/MISSING'
             999 'INAPP' /
   A1SK11D   0 'NONE OR DOES NOT APPLY' 997 'DONT KNOW' 998 'REFUSED/MISSING'
             999 'INAPP' /
   A1SK11E   0 'NONE OR DOES NOT APPLY' 997 'DONT KNOW' 998 'REFUSED/MISSING'
             999 'INAPP' /
   A1SK11F   0 'NONE OR DOES NOT APPLY' 997 'DONT KNOW' 998 'REFUSED/MISSING'
             999 'INAPP' /
   A1SRSUPE  9999 'NOT CALCULATED' /
   A1SK12A   0 'NONE OR DOES NOT APPLY' 997 'DONT KNOW' 998 'REFUSED/MISSING'
             999 'INAPP' /
   A1SK12B   0 'NONE OR DOES NOT APPLY' 997 'DONT KNOW' 998 'REFUSED/MISSING'
             999 'INAPP' /
   A1SK12C   0 'NONE OR DOES NOT APPLY' 997 'DONT KNOW' 998 'REFUSED/MISSING'
             999 'INAPP' /
   A1SK12D   0 'NONE OR DOES NOT APPLY' 997 'DONT KNOW' 998 'REFUSED/MISSING'
             999 'INAPP' /
   A1SK12E   0 'NONE OR DOES NOT APPLY' 997 'DONT KNOW' 998 'REFUSED/MISSING'
             999 'INAPP' /
   A1SPSUPI  999 'NOT CALCULATED' /
   A1SK13A   0 'NONE OR DOES NOT APPLY' 997 'DONT KNOW' 998 'REFUSED/MISSING'
             999 'INAPP' /
   A1SK13B   0 'NONE OR DOES NOT APPLY' 997 'DONT KNOW' 998 'REFUSED/MISSING'
             999 'INAPP' /
   A1SK13C   0 'NONE OR DOES NOT APPLY' 997 'DONT KNOW' 998 'REFUSED/MISSING'
             999 'INAPP' /
   A1SK13D   0 'NONE OR DOES NOT APPLY' 997 'DONT KNOW' 998 'REFUSED/MISSING'
             999 'INAPP' /
   A1SK13E   0 'NONE OR DOES NOT APPLY' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SK13F   0 'NONE OR DOES NOT APPLY' 997 'DONT KNOW' 998 'REFUSED/MISSING'
             999 'INAPP' /
   A1SK13G   0 'NONE OR DOES NOT APPLY' 997 'DONT KNOW' 998 'REFUSED/MISSING'
             999 'INAPP' /
   A1SK13H   0 'NONE OR DOES NOT APPLY' 997 'DONT KNOW' 998 'REFUSED/MISSING'
             999 'INAPP' /
   A1SRSUIF  999 'NOT CALCULATED' /
   A1SRSUIO  99 'NOT CALCULATED' /
   A1SK14A   0 'NONE OR DOES NOT APPLY' 9997 'DONT KNOW'
             9998 'REFUSED/MISSING' 9999 'INAPP' /
   A1SK14B   0 'NONE OR DOES NOT APPLY' 9997 'DONT KNOW'
             9998 'REFUSED/MISSING' 9999 'INAPP' /
   A1SK14C   0 'NONE OR DOES NOT APPLY' 99997 'DONT KNOW'
             99998 'REFUSED/MISSING' 99999 'INAPP' /
   A1SK14D   0 'NONE OR DOES NOT APPLY' 9997 'DONT KNOW'
             9998 'REFUSED/MISSING' 9999 'INAPP' /
   A1SK14E   0 'NONE OR DOES NOT APPLY' 997 'DONT KNOW' 998 'REFUSED/MISSING'
             999 'INAPP' /
   A1SK14F   99998 'REFUSED/MISSING' /
   A1SK14G   0 'NONE OR DOES NOT APPLY' 9997 'DONT KNOW'
             9998 'REFUSED/MISSING' 9999 'INAPP' /
   A1SK14H   0 'NONE OR DOES NOT APPLY' 99997 'DONT KNOW'
             99998 'REFUSED/MISSING' 99999 'INAPP' /
   A1SK15A   99998 'REFUSED/MISSING' /
   A1SK15B   0 'NONE OR DOES NOT APPLY' 9997 'DONT KNOW'
             9998 'REFUSED/MISSING' 9999 'INAPP' /
   A1SK15C   0 'NONE OR DOES NOT APPLY' 9997 'DONT KNOW'
             9998 'REFUSED/MISSING' 9999 'INAPP' /
   A1SK15D   0 'NONE OR DOES NOT APPLY' 9997 'DONT KNOW'
             9998 'REFUSED/MISSING' 9999 'INAPP' /
   A1SK15E   0 'NONE OR DOES NOT APPLY' 997 'DONT KNOW' 998 'REFUSED/MISSING'
             999 'INAPP' /
   A1SK15F   0 'NONE OR DOES NOT APPLY' 9997 'DONT KNOW'
             9998 'REFUSED/MISSING' 9999 'INAPP' /
   A1SK15G   0 'NONE OR DOES NOT APPLY' 99997 'DONT KNOW'
             99998 'REFUSED/MISSING' 99999 'INAPP' /
   A1SK16A   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SK16B   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SK16C   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SK16D   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SK17A   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SK17B   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SK17C   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SK17D   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SK17E   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SK17F   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SK17G   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SK17H   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SK17I   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SK17J   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SK17K   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SK17L   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SK17M   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SK17N   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SK17O   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SSWBMS  99 'NOT CALCULATED' /
   A1SSWBSI  99 'NOT CALCULATED' /
   A1SSWBAO  99 'NOT CALCULATED' /
   A1SSWBSC  99 'NOT CALCULATED' /
   A1SSWBSA  99 'NOT CALCULATED' /
   A1SL1     1 'ALMOST EVERY DAY' 2 'SEVERAL TIMES A WEEK'
             3 'ABOUT ONCE A WEEK' 4 '1-3 TIMES A MONTH'
             5 'LESS THAN ONCE A MONTH' 6 'NEVER OR HARDLY EVER'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SL2     1 'ALMOST EVERY DAY' 2 'SEVERAL TIMES A WEEK'
             3 'ABOUT ONCE A WEEK' 4 '1-3 TIMES A MONTH'
             5 'LESS THAN ONCE A MONTH' 6 'NEVER OR HARDLY EVER'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SL3     97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SL4     1 'OWN HOME OUTRIGHT' 2 'PAYING ON A MORTGAGE' 3 'RENT'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SL5A    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SL5B    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SL5C    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SL5D    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SL5E    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SL5F    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SL5G    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SL5H    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SL5I    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SL5J    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SL5K    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SL5L    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SHOMET  9 'NOT CALCULATED' /
   A1SPIHOM  9 'NOT CALCULATED' /
   A1SM1     1 'SEVERAL TIMES A DAY' 2 'ABOUT ONCE A DAY'
             3 'SEVERAL TIMES A WEEK' 4 'ABOUT ONCE A WEEK'
             5 '2 OR 3 TIMES A MONTH' 6 'ABOUT ONCE A MONTH'
             7 'LESS THAN ONCE A MONTH' 8 'NEVER OR HARDLY EVER'
             97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SM2     1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM3     1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM4     1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM5     1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM6     1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM7     1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM8     1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM9     1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SFAMSO  9 'NOT CALCULATED' /
   A1SKINPO  9 'NOT CALCULATED' /
   A1SKINNE  9 'NOT CALCULATED' /
   A1SM10    1 'SEVERAL TIMES A DAY' 2 'ABOUT ONCE A DAY'
             3 'SEVERAL TIMES A WEEK' 4 'ABOUT ONCE A WEEK'
             5 '2 OR 3 TIMES A MONTH' 6 'ABOUT ONCE A MONTH'
             7 'LESS THAN ONCE A MONTH' 8 'NEVER OR HARDLY EVER'
             97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SM11    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM12    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM13    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM14    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SFDSOL  9 'NOT CALCULATED' /
   A1SM15    1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM16    1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM17    1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM18    1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SFDSPO  9 'NOT CALCULATED' /
   A1SFDSNE  9 'NOT CALCULATED' /
   A1SM19    1 'NEVER' 2 'LESS THAN ONCE A MONTH' 3 'ONCE OR TWICE A MONTH'
             4 'THREE OR FOUR TIMES A MONTH' 5 'A COUPLE TIMES A WEEK'
             6 'MORE OFTEN THAN A COUPLE OF TIMES A WEEK' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM20    1 'NEVER' 2 'LESS THAN ONCE A MONTH' 3 'ONCE OR TWICE A MONTH'
             4 'THREE OR FOUR TIMES A MONTH' 5 'A COUPLE TIMES A WEEK'
             6 'MORE OFTEN THAN A COUPLE OF TIMES A WEEK' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM21A1  1 'YES' 2 'NO' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM21A2  1 'YES' 2 'NO' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM21A3  1 'YES' 2 'NO' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM21B1  1 'YES' 2 'NO' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM21B2  1 'YES' 2 'NO' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM21B3  1 'YES' 2 'NO' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM21C1  1 'YES' 2 'NO' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM21C2  1 'YES' 2 'NO' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM21C3  1 'YES' 2 'NO' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM21D1  1 'YES' 2 'NO' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM21D2  1 'YES' 2 'NO' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM21D3  1 'YES' 2 'NO' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM21E1  1 'YES' 2 'NO' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM21E2  1 'YES' 2 'NO' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM21E3  1 'YES' 2 'NO' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM21F1  1 'YES' 2 'NO' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM21F2  1 'YES' 2 'NO' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM21F3  1 'YES' 2 'NO' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM21G1  1 'YES' 2 'NO' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM21G2  1 'YES' 2 'NO' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM21G3  1 'YES' 2 'NO' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM21H1  1 'YES' 2 'NO' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM21H2  1 'YES' 2 'NO' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM21H3  1 'YES' 2 'NO' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM21I1  1 'YES' 2 'NO' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM21I2  1 'YES' 2 'NO' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM21I3  1 'YES' 2 'NO' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM21J1  1 'YES' 2 'NO' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM21J2  1 'YES' 2 'NO' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SM21J3  1 'YES' 2 'NO' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   SKIP_SN1  1 'SKIP' 2 'NO SKIP' 9 'INAPP' /
   A1SN1     0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SN2     0 'WORST' 10 'BEST' 96 'DOES NOT APPLY' 97 'DONT KNOW'
             98 'REFUSED/MISSING' 99 'INAPP' /
   A1SN3     0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SN4     0 'NONE' 10 'VERY MUCH' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SN5     0 'NONE' 10 'VERY MUCH' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SN6A    1 'NOT AT ALL TRUE' 2 'A LITTLE BIT TRUE' 3 'MODERATELY TRUE'
             4 'EXTREMELY TRUE' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SN6B    1 'NOT AT ALL TRUE' 2 'A LITTLE BIT TRUE' 3 'MODERATELY TRUE'
             4 'EXTREMELY TRUE' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SN6C    1 'NOT AT ALL TRUE' 2 'A LITTLE BIT TRUE' 3 'MODERATELY TRUE'
             4 'EXTREMELY TRUE' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SN6D    1 'NOT AT ALL TRUE' 2 'A LITTLE BIT TRUE' 3 'MODERATELY TRUE'
             4 'EXTREMELY TRUE' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SN6E    1 'NOT AT ALL TRUE' 2 'A LITTLE BIT TRUE' 3 'MODERATELY TRUE'
             4 'EXTREMELY TRUE' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SN6F    1 'NOT AT ALL TRUE' 2 'A LITTLE BIT TRUE' 3 'MODERATELY TRUE'
             4 'EXTREMELY TRUE' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SPIFAM  9 'NOT CALCULATED' /
   A1SN7A1   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SN7A2   1 'YES' 2 'NO' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SN7B1   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SN7B2   1 'YES' 2 'NO' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SN7C1   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SN7C2   1 'YES' 2 'NO' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SN7D1   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SN7D2   1 'YES' 2 'NO' 6 'DOES NOT APPLY' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   SKIP_SN8  1 'SKIP' 2 'NO SKIP' 9 'INAPP' /
   A1SN8     97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SN9     97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SN10    1 'VERY SERIOUS/STRESSFUL' 2 'SOMEWHAT SERIOUS/STRESSFUL'
             3 'A LITTLE SERIOUS/STRESSFUL' 4 'NOT AT ALL SERIOUS/STRESSFUL'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SN11    1 'VERY SERIOUS/STRESSFUL' 2 'SOMEWHAT SERIOUS/STRESSFUL'
             3 'A LITTLE SERIOUS/STRESSFUL' 4 'NOT AT ALL SERIOUS/STRESSFUL'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   SKIP_SP1  1 'SKIP' 2 'NO SKIP' /
   A1SP1     0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SP2     0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SP3     0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SP4     0 'NONE' 10 'VERY MUCH' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SP5     0 'NONE' 10 'VERY MUCH' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SP6     1 'EXCELLENT' 2 'VERY GOOD' 3 'GOOD' 4 'FAIR' 5 'POOR'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SP7     1 'NEVER' 2 'ONCE' 3 'A FEW TIMES' 4 'MOST OF THE TIME'
             5 'ALL OF THE TIME' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP'
             /
   A1SP8     1 'VERY LIKELY' 2 'SOMEWHAT LIKELY' 3 'NOT VERY LIKELY'
             4 'NOT LIKELY AT ALL' 7 'DONT KNOW' 8 'REFUSED/MISSING'
             9 'INAPP' /
   A1SP9A    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SP9B    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SP9C    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SSPDIS  99 'NOT CALCULATED' /
   A1SMARRS  9 'NOT CALCULATED' /
   A1SP10    1 'AT LEAT ONCE A DAY' 2 'A FEW TIMES A WEEK' 3 'ONCE A WEEK'
             4 'A FEW TIMES A MONTH' 5 'LESS OFTEN THAN THAT' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SP11    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SP12    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SP13    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SP14    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SP15    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SP16    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SSPSOL  9 'NOT CALCULATED' /
   A1SSPEMP  9 'NOT CALCULATED' /
   A1SP17    1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SP18    1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SP19    1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SP20    1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SP21    1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SP22    1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SSPCRI  9 'NOT CALCULATED' /
   A1SP23    1 'A LOT MORE THAN SPOUSE' 2 'SOMEWHAT MORE THAN SPOUSE'
             3 'A LITTLE MORE THAN SPOUSE' 4 'CHORES ARE SPLIT EQUALLY'
             5 'SPOUSE DOES A LITTLE MORE' 6 'SPOUSE DOES SOMEWHAT MORE'
             7 'SPOUSE DOES A LOT MORE' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SP24    997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   A1SP25    997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   A1SP26    1 'VERY FAIR' 2 'SOMEWHAT FAIR' 3 'SOMEWHAT UNFAIR'
             4 'VERY UNFAIR' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SP27    1 'VERY FAIR' 2 'SOMEWHAT FAIR' 3 'SOMEWHAT UNFAIR'
             4 'VERY UNFAIR' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SP28A   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SP28B   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SP28C   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SP28D   1 'AGREE STRONGLY' 2 'AGREE SOMEWHAT' 3 'AGREE A LITTLE'
             4 'DONT KNOW' 5 'DISAGREE A LITTLE' 6 'DISAGREE SOMEWHAT'
             7 'DISAGREE STRONGLY' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SSPDEC  99 'NOT CALCULATED' /
   A1SP29    1 'EXCELLENT' 2 'VERY GOOD' 3 'GOOD' 4 'FAIR' 5 'POOR'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SP30    1 'EXCELLENT' 2 'VERY GOOD' 3 'GOOD' 4 'FAIR' 5 'POOR'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SP31    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SP32    997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   A1SP33    97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SP34A   1 '4 OR MORE TIMES PER WEEK' 2 '2 TO 3 TIMES PER WEEK'
             3 'ONCE A WEEK' 4 '1 TO 3 TIMES PER WEEK'
             5 'LESS THAN ONCE A MONTH OR NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SP34B   1 '4 OR MORE TIMES PER WEEK' 2 '2 TO 3 TIMES PER WEEK'
             3 'ONCE A WEEK' 4 '1 TO 3 TIMES PER WEEK'
             5 'LESS THAN ONCE A MONTH OR NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SP34C   1 '4 OR MORE TIMES PER WEEK' 2 '2 TO 3 TIMES PER WEEK'
             3 'ONCE A WEEK' 4 '1 TO 3 TIMES PER WEEK'
             5 'LESS THAN ONCE A MONTH OR NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SP34D   1 '4 OR MORE TIMES PER WEEK' 2 '2 TO 3 TIMES PER WEEK'
             3 'ONCE A WEEK' 4 '1 TO 3 TIMES PER WEEK'
             5 'LESS THAN ONCE A MONTH OR NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SP35    9997 'DONT KNOW' 9998 'REFUSED/MISSING' 9999 'INAPP' /
   A1SP36    9997 'DONT KNOW' 9998 'REFUSED/MISSING' 9999 'INAPP' /
   A1SP37    996 '996 OR GREATER' 997 'DONT KNOW' 998 'REFUSED/MISSING'
             999 'INAPP' /
   A1SP38    1 'EXCELLENT' 2 'VERY GOOD' 3 'GOOD' 4 'FAIR' 5 'POOR'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SQ1     0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SQ2     0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SQ3     0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SQ4     0 'NONE' 10 'VERY MUCH' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SQ5     0 'NONE' 10 'VERY MUCH' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SQ6     1 'NONE' 2 'ONE' 3 'TWO' 4 'THREE' 5 'FOUR' 6 'FIVE'
             7 'SIX OR MORE' 97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SQ7     1 'HETEROSEXUAL' 2 'HOMOSEXUAL' 3 'BISEXUAL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SQ8     1 'TWO OR MORE TIMES A WEEK' 2 'ONCE A WEEK'
             3 'TWO OR THREE TIMES A MONTH' 4 'ONCE A MONTH'
             5 'LESS OFTEN THAN ONCE A MONTH' 6 'NEVER OR NOT AT ALL'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SR1     1 'PROTESTANT/INTERDENOMINATIONAL'
             2 'PROTESTANT/NO DENOMINATION' 3 'APOSTOLIC' 4 'ASSEMBLY OF GOD'
             5 'BAPTIST-ALL TYPES' 6 'BORN-AGAIN CHRISTIAN' 7 'BRETHREN'
             8 'DISCIPLES OF CHRIST/CHRISTIAN CHURCH' 9 'CHRISTIAN REFORMED'
             10 'CHURCH OF GOD' 11 'CONGREGATIONAL'
             12 'EPISCOPALIAN OR ANGLICAN/CHURCH OF ENGLAND' 13 'EVANGELICAL'
             14 'HOLINESS' 15 'JEHOVAHS WITNESS' 16 'LUTHERAN' 17 'MENNONITE'
             18 'METHODIST-ALL TYPES INCLUDING UNITED BRETHREN'
             19 'MORMON/LATTER DAY SAINTS' 20 'NAZARENE' 21 'PENTECOSTAL'
             22 'PRESBYTERIAN' 23 'QUAKER/SOCIETY OF FRIENDS'
             24 'SALVATION ARMY' 25 'SANCTIFIED' 26 'SEVENTH DAY ADVENTIST'
             27 'SPIRITUAL' 28 'UNITARIAN' 29 'UNITED CHURCH OF CHRIST'
             30 'PROTESTANT/OTHER' 31 'AGNOSTIC OR ATHEIST'
             32 'NO RELIGIOUS PREFERENCE' 33 'CATHOLIC/ROMAN'
             34 'CATHOLIC/UKRAINIAN' 35 'ORTHODOX/RUSSIAN-GREEK-SERBIAN'
             36 'CATHOLIC-ALL OTHERS' 37 'JEWISH ORTHODOX'
             38 'JEWISH CONSERVATIVE' 39 'JEWISH REFORM'
             40 'JEWISH RECONSTRUCTIONIST' 41 'JEWISH/ALL OTHERS'
             42 'BUDDHIST/ALL TYPES-INCLUDING ZEN' 43 'HINDU' 44 'MUSLIM'
             45 'RASTAFARIAN' 46 'OTHER' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SR1A    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SR2A    1 'VERY' 2 'SOMEWHAT' 3 'NOT VERY' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SR2B    1 'VERY' 2 'SOMEWHAT' 3 'NOT VERY' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SR2C    1 'VERY' 2 'SOMEWHAT' 3 'NOT VERY' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SR2D    1 'VERY' 2 'SOMEWHAT' 3 'NOT VERY' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SR2E    1 'VERY' 2 'SOMEWHAT' 3 'NOT VERY' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SR2F    1 'VERY' 2 'SOMEWHAT' 3 'NOT VERY' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SR2G    1 'VERY' 2 'SOMEWHAT' 3 'NOT VERY' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SR2H    1 'VERY' 2 'SOMEWHAT' 3 'NOT VERY' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SR2I    1 'VERY' 2 'SOMEWHAT' 3 'NOT VERY' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SR3     1 'EXPLORE DIFFERENT TEACHINGS' 2 'STICK TO ONE FAITH'
             3 'NEITHER' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SR4     1 'MORE THAN ONCE A WEEK' 2 'ABOUT ONCE A WEEK'
             3 'ONE TO THREE TIMES A MONTH' 4 'LESS THAN ONCE A MONTH'
             5 'NEVER' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SR5     1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SR6     1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   SKIP_SR7  1 'SKIP' 2 'NO SKIP' /
   A1SR7     1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SR8     1 'STRONGLY AGREE' 2 'SOMEWHAT AGREE'
             3 'NEITHER AGREE NOR DISAGREE' 4 'SOMEWHAT DISAGREE'
             5 'STRONGLY DISAGREE' 7 'DONT KNOW' 8 'REFUSED/MISSING'
             9 'INAPP' /
   A1SA1S1_1 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_2 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_3 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_4 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_5 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_6 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_7 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_8 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_9 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_10 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_11 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_12 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_13 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_14 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_15 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_16 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_17 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_18 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_19 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_20 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_21 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_22 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_23 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_24 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_25 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_26 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_27 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_28 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_29 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_30 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_31 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_32 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_33 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_34 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_35 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_36 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_37 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_38 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_39 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_40 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_41 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_42 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_43 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_44 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_45 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_46 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_47 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_48 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_49 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_50 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_51 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_52 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_53 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_54 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_55 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_56 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_57 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_58 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_59 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_60 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_61 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_62 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_63 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_64 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_65 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_66 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_67 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_68 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_69 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_70 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_71 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_72 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_73 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_74 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_75 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_76 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SA1S1_77 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SS2     1 'AMERICAN INDIAN/NATIVE AMERICAN' 2 'BAHAMAS' 3 'CANADA'
             4 'COSTA RICA' 5 'CUBA' 6 'DOMINICAN REPUBLIC' 7 'EL SALVADOR'
             8 'GUATEMALA' 9 'HAITI' 10 'HONDURAS' 11 'JAMAICA' 12 'MEXICO'
             13 'NICARAGUA' 14 'PANAMA' 15 'PUERTO RICO' 16 'ST. VINCENT'
             17 'TRINIDAD' 18 'CENTRAL AMERICA/CARIBBEAN-NO SPECIFIC COUNTRY'
             19 'NORTH/CENTRAL AMERICA/OTHER' 20 'ARGENTINA' 21 'BOLIVIA'
             22 'BRAZIL' 23 'CHILE' 24 'COLOMBIA' 25 'ECUADOR' 26 'PERU'
             27 'VENEZUELA' 28 'S. AMERICA-NO SPECIFIC COUNTRY'
             29 'S. AMERICA/OTHER' 30 'CZECHOSLOVAKIA' 31 'ENGLAND'
             32 'FRANCE' 33 'GERMANY' 34 'GREECE' 35 'HUNGARY' 36 'IRELAND'
             37 'ITALY' 38 'NORWAY' 39 'POLAND' 40 'PORTUGAL'
             41 'RUSSIA OR SOVIET UNION' 42 'SCOTLAND' 43 'SPAIN' 44 'SWEDEN'
             45 'THE NETHERLANDS' 46 'YUGOSLAVIA'
             47 'EASTERN EUROPE-NO SPECIFIC COUNTRY'
             48 'WESTERN EUROPE-NO SPECIFIC COUNTRY' 49 'EUROPE/OTHER'
             50 'CHINA' 51 'INDIA' 52 'JAPAN' 53 'KOREA' 54 'PHILIPPINES'
             55 'SINGAPORE' 56 'TAIWAN' 57 'THAILAND'
             58 'ASIA-NO SPECIFIC COUNTRY' 59 'ASIA/OTHER' 60 'EGYPT'
             61 'KENYA' 62 'NIGERIA' 63 'SOUTH AFRICA' 64 'ZAIRE'
             65 'ZIMBABWE' 66 'AFRICA-NO SPECIFIC COUNTRY' 67 'AFRICA/OTHER'
             68 'IRAN' 69 'IRAQ' 70 'ISRAEL' 71 'LEBANON' 72 'PAKISTAN'
             73 'SAUDI ARABIA' 74 'MID EAST-NO SPECIFIC COUNTRY'
             75 'MID EAST/OTHER' 76 'OTHER COUNTRY 1' 77 'OTHER COUNTRY 2'
             97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SS3     1 'VERY CLOSELY' 2 'SOMEWHAT CLOSELY' 3 'NOT VERY CLOSELY'
             4 'NOT AT ALL CLOSELY' 7 'DONT KNOW' 8 'REFUSED/MISSING'
             9 'INAPP' /
   A1SS4     1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'RARELY' 5 'NOT AT ALL'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SS5     1 'VERY IMPORTANT' 2 'SOMEWHAT IMPORTANT' 3 'NOT VERY IMPORTANT'
             4 'NOT AT ALL IMPORTANT' 7 'DONT KNOW' 8 'REFUSED/MISSING'
             9 'INAPP' /
   A1SS6_1   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SS6_2   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SS6_3   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SS6_4   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SS6_5   1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SS7     1 'WHITE' 2 'BLACK AND/OR AFRICAN AMERICAN'
             3 'NATIVE AMERICAN OR ALEUTIAN ISLANDER/ESKIMO'
             4 'ASIAN OR PACIFIC ISLANDER' 5 'OTHER' 6 'MULTIRACIAL'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SS8     1 'VERY CLOSELY' 2 'SOMEWHAT CLOSELY' 3 'NOT VERY CLOSELY'
             4 'NOT AT ALL CLOSELY' 7 'DONT KNOW' 8 'REFUSED/MISSING'
             9 'INAPP' /
   A1SS9     1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'RARELY' 5 'NOT AT ALL'
             7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SS10    1 'VERY IMPORTANT' 2 'SOMEWHAT IMPORTANT' 3 'NOT VERY IMPORTANT'
             4 'NOT AT ALL IMPORTANT' 7 'DONT KNOW' 8 'REFUSED/MISSING'
             9 'INAPP' /
   A1SS11    1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SS12    1 'VERY CLOSELY' 2 'SOMEWHAT CLOSELY' 3 'NOT VERY CLOSELY'
             4 'NOT AT ALL CLOSELY' 7 'DONT KNOW' 8 'REFUSED/MISSING'
             9 'INAPP' /
   A1SS13A   996 '996 OR GREATER' 997 'DONT KNOW' 998 'REFUSED/MISSING'
             999 'INAPP' /
   A1SS13B   97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SS13C   996 '996 OR GREATER' 997 'DONT KNOW' 998 'REFUSED/MISSING'
             999 'INAPP' /
   A1SS13D   997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   A1SS13E   98 'REFUSED/MISSING' /
   A1SS13F   97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SS13G   97 'DONT KNOW' 98 'REFUSED/MISSING' 99 'INAPP' /
   A1SS13H   996 '996 OR GREATER' 997 'DONT KNOW' 998 'REFUSED/MISSING'
             999 'INAPP' /
   A1SS13I   998 'REFUSED/MISSING' /
   A1SS13J   997 'DONT KNOW' 998 'REFUSED/MISSING' 999 'INAPP' /
   A1SS13K   996 '996 OR GREATER' 997 'DONT KNOW' 998 'REFUSED/MISSING'
             999 'INAPP' /
   A1SS14A   1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SS14B   1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SS14C   1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SS14D   1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SS14E   1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SS14F   1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SS14G   1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SS14H   1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SS14I   1 'OFTEN' 2 'SOMETIMES' 3 'RARELY' 4 'NEVER' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SDISCR  0 'NO DISCRIMINATION' 1 'DISCRIMINATION' /
   A1SS15_1  1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SS15_2  1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SS15_3  1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SS15_4  1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SS15_5  1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SS15_6  1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SS15_7  1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SS15_8  1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SS15_9  1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SS15_10 1 'YES' 2 'NO' 7 'DONT KNOW' 8 'REFUSED/MISSING' 9 'INAPP' /
   A1SS16    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1SS17    1 'A LOT' 2 'SOME' 3 'A LITTLE' 4 'NOT AT ALL' 7 'DONT KNOW'
             8 'REFUSED/MISSING' 9 'INAPP' /
   A1ST1     0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1ST2     0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1ST3     0 'WORST' 10 'BEST' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1ST4     0 'NONE' 10 'VERY MUCH' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1ST5     0 'NONE' 10 'VERY MUCH' 97 'DONT KNOW' 98 'REFUSED/MISSING'
             99 'INAPP' /
   A1SSATIS  99 'NOT CALCULATED' /
   .

* SPSS MISSING VALUES COMMAND.

* MISSING VALUES
     A1PBYEAR (9998) /
     A1PAGE_M2 (98) /
     QL2 (7, 8, 9) /
     QL3 (7, 8, 9) /
     HH_CELL (7, 8, 9) /
     NPRB_SEX (997, 998, 999) /
     SEX_CELL (7, 8, 9) /
     NPRB_WHO (997, 998, 999) /
     WHO (9) /
     PROB_R (997, 998, 999) /
     MO (97, 98, 99) /
     DAY (97, 98, 99) /
     RECON (7, 8, 9) /
     MO_RCVD (97, 98, 99) /
     DY_RCVD (97, 98, 99) /
     TOT_SIBS (9) /
     A1PA4 (7, 8, 9) /
     A1PA5 (7, 8, 9) /
     A1PA6 (7, 8, 9) /
     A1PA7 (97, 98, 99) /
     A1PA7A (7, 8, 9) /
     A1PA7BA (97, 98, 99) /
     A1PA7BB (97, 98, 99) /
     A1PA7BC (97, 98, 99) /
     A1PA8 (97, 98, 99) /
     A1PA8A (7, 8, 9) /
     A1PA8BA (97, 98, 99) /
     A1PA8BB (97, 98, 99) /
     A1PA8BC (97, 98, 99) /
     A1PA9 (7, 8, 9) /
     A1PA10 (7, 8, 9) /
     A1PA11 (7, 8, 9) /
     A1PA11A (97, 98, 99) /
     A1PA11BA (7, 8, 9) /
     A1PA11BB (7, 8, 9) /
     A1PA11BC (7, 8, 9) /
     A1PA11BD (7, 8, 9) /
     A1PA11BE (7, 8, 9) /
     A1PA11BF (7, 8, 9) /
     A1PA11BG (7, 8, 9) /
     A1PA11BH (7, 8, 9) /
     A1PA11BI (7, 8, 9) /
     A1PA11BJ (7, 8, 9) /
     A1PA11BK (7, 8, 9) /
     A1PA11C (7, 8, 9) /
     A1PA11D (7, 8, 9) /
     A1PA12 (7, 8, 9) /
     A1PA12A (97, 98, 99) /
     A1PA13 (7, 8, 9) /
     A1PA13A (7, 8, 9) /
     A1PA13B (7, 8, 9) /
     A1PHRTRS (7, 8, 9) /
     A1PHRTDX (7, 8, 9) /
     A1PA14 (97, 98, 99) /
     A1PA15 (7, 8, 9) /
     A1PA16 (7, 8, 9) /
     A1PA17 (7, 8, 9) /
     A1PA18 (7, 8, 9) /
     A1PA19 (7, 8, 9) /
     A1PA20 (7, 8, 9) /
     A1PA21 (7, 8, 9) /
     A1PA22 (7, 8, 9) /
     A1PA22A (7, 8, 9) /
     A1PA23 (7, 8, 9) /
     A1PA24 (7, 8, 9) /
     A1PA25 (7, 8, 9) /
     A1PA26 (7, 8, 9) /
     A1PA27 (7, 8, 9) /
     A1PA28 (7, 8, 9) /
     A1PANGIN (7, 8, 9) /
     A1PA29 (7, 8, 9) /
     A1PA29A (997, 998, 999) /
     A1PA29B (7, 8, 9) /
     A1PA29CA (7, 8, 9) /
     A1PA29CB (7, 8, 9) /
     A1PA29CC (7, 8, 9) /
     A1PA29CD (7, 8, 9) /
     A1PA29CE (7, 8, 9) /
     A1PA29CF (7, 8, 9) /
     A1PA29CG (7, 8, 9) /
     A1PA29CH (7, 8, 9) /
     A1PA29CI (7, 8, 9) /
     A1PA29CJ (7, 8, 9) /
     A1PA29CK (7, 8, 9) /
     A1PA33 (7, 8, 9) /
     A1PA34 (7, 8, 9) /
     A1PA30 (997, 998, 999) /
     A1PA31 (7, 8, 9) /
     A1PA32S (997, 998, 999) /
     A1PA32D (997, 998, 999) /
     A1PA36 (7, 8, 9) /
     A1PA37 (7, 8, 9) /
     A1PA37A (7, 8, 9) /
     A1PA37B (7, 8, 9) /
     A1PCACRS (7, 8, 9) /
     A1PCACDX (7, 8, 9) /
     A1PA38 (7, 8, 9) /
     A1PA39A (7, 8, 9) /
     A1PA39B (7, 8, 9) /
     A1PA39C (7, 8, 9) /
     A1PA39D (7, 8, 9) /
     A1PA39E (7, 8, 9) /
     A1PA39F (7, 8, 9) /
     A1PA39G (7, 8, 9) /
     A1PA39H (7, 8, 9) /
     A1PA39I (7, 8, 9) /
     A1PA39J (7, 8, 9) /
     A1PA41 (97, 98, 99) /
     A1PA40 (7, 8, 9) /
     A1PA42 (97, 98, 99) /
     A1PA43 (7, 8, 9) /
     A1PA44 (997, 998, 999) /
     A1PA45 (7, 8, 9) /
     A1PA46 (97, 98, 99) /
     A1PA47 (997, 998, 999) /
     A1PA52 (97, 98, 99) /
     A1PA53 (7, 8, 9) /
     A1PA53A (97, 98, 99) /
     A1PA54 (7, 8, 9) /
     A1PA54A (7, 8, 9) /
     A1PA55 (97.0, 99.0) /
     A1PA56 (97, 98, 99) /
     A1PA57 (7, 8, 9) /
     A1PA58 (7, 8, 9) /
     A1PA59 (7, 8, 9) /
     A1PA60 (7, 8, 9) /
     A1PA61 (7, 8, 9) /
     A1PA62 (7, 8, 9) /
     A1PA62A (7, 8, 9) /
     A1PA63 (7, 8, 9) /
     A1PA63A (7, 8, 9) /
     A1PA64 (7, 8, 9) /
     A1PA65 (7, 8, 9) /
     A1PA66 (7, 8, 9) /
     A1PDEPAD (7, 8, 9) /
     A1PA67 (97, 98, 99) /
     A1PA68MO (97, 98, 99) /
     A1PA68YR (97, 98, 99) /
     A1PA69 (7, 8, 9) /
     A1PA70 (7, 8, 9) /
     A1PA71 (7, 8, 9) /
     A1PA72 (7, 8, 9) /
     A1PA73 (7, 8, 9) /
     A1PA73A (7, 8, 9) /
     A1PA74 (7, 8, 9) /
     A1PA74A (7, 8, 9) /
     A1PA75 (7, 8, 9) /
     A1PA76 (7, 8, 9) /
     A1PA77 (7, 8, 9) /
     A1PANHED (7, 8, 9) /
     A1PANHDX (7, 8, 9) /
     A1PDEPDX (7, 8, 9) /
     A1PA78 (97, 98, 99) /
     A1PA79MO (97, 98, 99) /
     A1PA79YR (97, 98, 99) /
     A1PA80 (7, 8, 9) /
     A1PA80A (7, 8, 9) /
     A1PA81 (7, 8, 9) /
     A1PA81A (7, 8, 9) /
     A1PA82 (7, 8, 9) /
     A1PA82A (7, 8, 9) /
     A1PA83 (7, 8, 9) /
     A1PA83A (7, 8, 9) /
     A1PA84 (7, 8, 9) /
     A1PA84A (7, 8, 9) /
     A1PA85A (7, 8, 9) /
     A1PA85B (7, 8, 9) /
     A1PA85C (7, 8, 9) /
     A1PA85D (7, 8, 9) /
     A1PA85E (7, 8, 9) /
     A1PA85F (7, 8, 9) /
     A1PA85G (7, 8, 9) /
     A1PA85H (7, 8, 9) /
     A1PA85I (7, 8, 9) /
     A1PA85J (7, 8, 9) /
     A1PANXIE (97, 98, 99) /
     A1PANXTD (7, 8, 9) /
     A1PA86 (7, 8, 9) /
     A1PA87 (7, 8, 9) /
     A1PA87A (7, 8, 9) /
     A1PA88 (997, 998, 999) /
     A1PA89 (7, 8, 9) /
     A1PA90A (7, 8, 9) /
     A1PA90B (7, 8, 9) /
     A1PA90C (7, 8, 9) /
     A1PA90D (7, 8, 9) /
     A1PA90E (7, 8, 9) /
     A1PA90F (7, 8, 9) /
     A1PPANIC (7, 8, 9) /
     A1PPANDX (7, 8, 9) /
     A1PB1 (97) /
     A1PMQB1 (7, 8, 9) /
     A1PEDUCP (7, 8, 9) /
     A1PEDU (7, 8, 9) /
     A1PSXEDAG (97, 98, 99) /
     A1PB2 (97, 98, 99) /
     A1PB3A (7, 8, 9) /
     A1PB3B (7, 8, 9) /
     A1PB3C (7, 8, 9) /
     A1PB3D (7, 8, 9) /
     A1PB3E (7, 8, 9) /
     A1PB3F (7, 8, 9) /
     A1PB3G (7, 8, 9) /
     A1PB3H (7, 8, 9) /
     A1PB3I (7, 8, 9) /
     A1PB3J (7, 8, 9) /
     A1PB3K (7, 8, 9) /
     A1PB5 (9997, 9998, 9999) /
     A1PB4A (7, 8, 9) /
     A1PB4B (7, 8, 9) /
     A1PB4C (7, 8, 9) /
     A1PB4D (7, 8, 9) /
     A1PB4E (7, 8, 9) /
     A1PB4F (7, 8, 9) /
     A1PB4G (7, 8, 9) /
     A1PB6 (7, 8, 9) /
     A1PB8_2 (7, 8, 9) /
     A1PB8_3 (9997, 9998, 9999) /
     A1PB10 (7, 8, 9) /
     A1POCC (997, 998, 999) /
     A1PIND (997, 998, 999) /
     A1PTSEI (98.00, 99.00) /
     A1PTEARN (8.000, 9.000) /
     A1PTEDU (8.000, 9.000) /
     A1PFSEI (98.000, 99.000) /
     A1PFEARN (8.000, 9.000) /
     A1PFEDU (8.000, 9.000) /
     A1PMSEI (998.00, 999.00) /
     A1PMEARN (8.000, 9.000) /
     A1PMEDU (8.000, 9.000) /
     R_ABSCRE (998.000, 999.000) /
     R_ATMOSP (98.000, 99.000) /
     R_BOTH (998.000, 999.000) /
     R_BUSPR (998.000, 999.000) /
     R_CLERIC (8.000, 9.000) /
     R_CLIMB (998.000, 999.000) /
     R_CLRDIS (8.000, 9.000) /
     R_COLD (98.000, 99.000) /
     R_COMMDA (998.000, 999.000) /
     R_DATAL (8.000, 9.000) /
     R_DATAPR (8.000, 9.000) /
     R_DCP (998.000, 999.000) /
     R_DEPL (998.000, 999.000) /
     R_ENVIRO (8.000, 9.000) /
     R_EYHNFT (8.000, 9.000) /
     R_FIF (998.000, 999.000) /
     R_FMNHR (97, 98, 99) /
     R_FMNYR (99997, 99998, 99999) /
     R_FNGRDX (8.000, 9.000) /
     R_FRMPRC (8.000, 9.000) /
     R_GED (8.000, 9.000) /
     R_HAZARD (998.000, 999.000) /
     R_HEAT (98.000, 99.000) /
     R_INFLU (998.000, 999.000) /
     R_INTELL (8.000, 9.000) /
     R_MACHPR (998.000, 999.000) /
     R_MCHNPR (8.000, 9.000) /
     R_MEN (9999998, 9999999) /
     R_MMNHR (97, 98, 99) /
     R_MMNYR (99997, 99998, 99999) /
     R_MNLDXT (8.000, 9.000) /
     R_MTRCRD (8.000, 9.000) /
     R_MVC (998.000, 999.000) /
     R_NOISE (998.000, 999.000) /
     R_NUMERC (8.000, 9.000) /
     R_OBSPRE (998.000, 999.000) /
     R_OUT (98.000, 99.000) /
     R_PEOPLE (98.000, 99.000) /
     R_PEOPRE (998.000, 999.000) /
     R_PHYSDM (8.000, 9.000) /
     R_PRODPR (98.000, 99.000) /
     R_PROTPR (8.000, 9.000) /
     R_PRSTPR (998.000, 999.000) /
     R_PUS (98.000, 99.000) /
     R_REACH (998.000, 999.000) /
     R_REPCON (98.000, 99.000) /
     R_ROUTPR (998.000, 999.000) /
     R_SCINPR (998.000, 999.000) /
     R_SEE (998.000, 999.000) /
     R_SJC (998.000, 999.000) /
     R_SPATIA (8.000, 9.000) /
     R_STOOP (998.000, 999.000) /
     R_STRGTH (8.000, 9.000) /
     R_STS (998.000, 999.000) /
     R_SVP (98.000, 99.000) /
     R_TALK (998.000, 999.000) /
     R_THINGS (98.000, 99.000) /
     R_TRAIN (998.000, 999.000) /
     R_VARCH (998.000, 999.000) /
     R_VERBAL (8.000, 9.000) /
     R_WET (98.000, 99.000) /
     R_WOMEN (9999998, 9999999) /
     MINDUS_R (7, 8, 9) /
     PROFID_R (7, 8, 9) /
     AGRIC_R (7, 8, 9) /
     CONSTR_R (7, 8, 9) /
     MANUF_R (7, 8, 9) /
     TRANSP_R (7, 8, 9) /
     WHOLE_R (7, 8, 9) /
     RETAIL_R (7, 8, 9) /
     FNANCE_R (7, 8, 9) /
     BUSIN_R (7, 8, 9) /
     PERSON_R (7, 8, 9) /
     ENTERT_R (7, 8, 9) /
     PUBADM_R (7, 8, 9) /
     MOCCUP_R (7, 8, 9) /
     EXEC_R (7, 8, 9) /
     PROFOC_R (7, 8, 9) /
     TECH_R (7, 8, 9) /
     SALES_R (7, 8, 9) /
     ADMIN_R (7, 8, 9) /
     SERV_R (7, 8, 9) /
     FARM_R (7, 8, 9) /
     CRAFT_R (7, 8, 9) /
     OPERAT_R (7, 8, 9) /
     A1PB11 (997, 998, 999) /
     A1PB11A (97, 98, 99) /
     A1PB12 (997, 998, 999) /
     A1PB14_2 (7, 8, 9) /
     A1PB14_3 (99997, 99998, 99999) /
     A1PB16 (7, 8, 9) /
     A1POCP (997, 998, 999) /
     A1PINDP (997, 998, 999) /
     A1PTSEIP (98.00, 99.00) /
     A1PTEARP (8.000, 9.000) /
     A1PTEDUP (8.000, 9.000) /
     A1PFSEIP (98.000, 99.000) /
     A1PFEARP (8.000, 9.000) /
     A1PFEDUP (8.000, 9.000) /
     A1PMSEIP (98.000, 99.000) /
     A1PMEARP (8.000, 9.000) /
     A1PMEDUP (8.000, 9.000) /
     L_ABSCRE (998.000, 999.000) /
     L_ATMOSP (98.000, 99.000) /
     L_BOTH (98.000, 99.000) /
     L_BUSPR (998.000, 999.000) /
     L_CLERIC (8.000, 9.000) /
     L_CLIMB (98.000, 99.000) /
     L_CLRDIS (8.000, 9.000) /
     L_COLD (98.000, 99.000) /
     L_COMMDA (998.000, 999.000) /
     L_DATAL (8.000, 9.000) /
     L_DATAPR (8.000, 9.000) /
     L_DCP (998.000, 999.000) /
     L_DEPL (998.000, 999.000) /
     L_ENVIRO (8.000, 9.000) /
     L_EYHNFT (8.000, 9.000) /
     L_FIF (998.000, 999.000) /
     L_FMNHR (97, 98, 99) /
     L_FMNYR (99997, 99998, 99999) /
     L_FNGRDX (8.000, 9.000) /
     L_FRMPRC (8.000, 9.000) /
     L_GED (8.000, 9.000) /
     L_HAZARD (98.000, 99.000) /
     L_HEAT (98.000, 99.000) /
     L_INFLU (998.000, 999.000) /
     L_INTELL (8.000, 9.000) /
     L_MACHPR (998.000, 999.000) /
     L_MCHNPR (8.000, 9.000) /
     L_MEN (9999998, 9999999) /
     L_MMNHR (98, 99) /
     L_MMNYR (99998, 99999) /
     L_MNLDXT (8.000, 9.000) /
     L_MTRCRD (8.000, 9.000) /
     L_MVC (998.000, 999.000) /
     L_NOISE (98.000, 99.000) /
     L_NUMERC (8.000, 9.000) /
     L_OBSPRE (998.000, 999.000) /
     L_OUT (98.000, 99.000) /
     L_PEOPLE (98.000, 99.000) /
     L_PEOPRE (998.000, 999.000) /
     L_PHYSDM (8.000, 9.000) /
     L_PRODPR (98.000, 99.000) /
     L_PROTPR (8.000, 9.000) /
     L_PRSTPR (998.000, 999.000) /
     L_PUS (98.000, 99.000) /
     L_REACH (998.000, 999.000) /
     L_REPCON (98.000, 99.000) /
     L_ROUTPR (998.000, 999.000) /
     L_SCINPR (998.000, 999.000) /
     L_SEE (998.000, 999.000) /
     L_SJC (998.000, 999.000) /
     L_SPATIA (8.000, 9.000) /
     L_STOOP (998.000, 999.000) /
     L_STRGTH (8.000, 9.000) /
     L_STS (998.000, 999.000) /
     L_SVP (98.000, 99.000) /
     L_TALK (998.000, 999.000) /
     L_THINGS (98.000, 99.000) /
     L_TRAIN (98.000, 99.000) /
     L_VARCH (998.000, 999.000) /
     L_VERBAL (8.000, 9.000) /
     L_WET (98.000, 99.000) /
     L_WOMEN (9999998, 9999999) /
     MINDUS_L (7, 8, 9) /
     PROFID_L (7, 8, 9) /
     AGRIC_L (7, 8, 9) /
     CONSTR_L (7, 8, 9) /
     MANUF_L (7, 8, 9) /
     TRANSP_L (7, 8, 9) /
     WHOLE_L (7, 8, 9) /
     RETAIL_L (7, 8, 9) /
     FNANCE_L (7, 8, 9) /
     BUSIN_L (7, 8, 9) /
     PERSON_L (7, 8, 9) /
     ENTERT_L (7, 8, 9) /
     PUBADM_L (7, 8, 9) /
     MOCCUP_L (7, 8, 9) /
     EXEC_L (7, 8, 9) /
     PROFOC_L (7, 8, 9) /
     TECH_L (7, 8, 9) /
     SALES_L (7, 8, 9) /
     ADMIN_L (7, 8, 9) /
     SERV_L (7, 8, 9) /
     FARM_L (7, 8, 9) /
     CRAFT_L (7, 8, 9) /
     OPERAT_L (7, 8, 9) /
     A1PB17 (7, 8, 9) /
     A1PB19 (7, 8, 9) /
     A1PB18MO (97, 98, 99) /
     A1PB18YR (97, 98, 99) /
     A1PB20 (7, 8, 9) /
     A1PB20AMO (97, 98, 99) /
     A1PB20AYR (97, 98, 99) /
     A1PB20BMO (97, 98, 99) /
     A1PB20BYR (97, 98, 99) /
     A1PB21MO (97, 98, 99) /
     A1PB21YR (97, 98, 99) /
     A1PB22MO (97, 98, 99) /
     A1PB22YR (97, 98, 99) /
     A1PB23MO (97, 98, 99) /
     A1PB23YR (97, 98, 99) /
     A1PB24 (7, 8, 9) /
     A1PB25 (9997, 9998, 9999) /
     A1PPARTN (7, 8, 9) /
     A1PB26 (97, 98, 99) /
     A1PSAGE (97, 98, 99) /
     A1PB27 (97, 98, 99) /
     A1PMQB27 (7, 8, 9) /
     A1PSEDU (7, 8, 9) /
     A1PSSXEDAG (97, 98, 99) /
     A1PB28A (7, 8, 9) /
     A1PB28B (7, 8, 9) /
     A1PB28C (7, 8, 9) /
     A1PB28D (7, 8, 9) /
     A1PB28E (7, 8, 9) /
     A1PB28F (7, 8, 9) /
     A1PB28G (7, 8, 9) /
     A1PB28H (7, 8, 9) /
     A1PB28I (7, 8, 9) /
     A1PB28J (7, 8, 9) /
     A1PB28K (7, 8, 9) /
     A1PB30 (9997, 9998, 9999) /
     A1PB29A (7, 8, 9) /
     A1PB29B (7, 8, 9) /
     A1PB29C (7, 8, 9) /
     A1PB29D (7, 8, 9) /
     A1PB29E (7, 8, 9) /
     A1PB29F (7, 8, 9) /
     A1PB29G (7, 8, 9) /
     A1PB31 (7, 8, 9) /
     A1PB33_2 (7, 8, 9) /
     A1PB34_2 (7, 8, 9) /
     A1POCCS (997, 998, 999) /
     A1PINDS (997, 998, 999) /
     A1PTSEIS (98.00, 99.00) /
     A1PTEARS (8.000, 9.000) /
     A1PTEDUS (8.000, 9.000) /
     A1PFSEIS (98.000, 99.000) /
     A1PFEARS (8.000, 9.000) /
     A1PFEDUS (8.000, 9.000) /
     A1PMSEIS (98.000, 99.000) /
     A1PMEARS (8.000, 9.000) /
     A1PMEDUS (8.000, 9.000) /
     S_ABSCRE (998.000, 999.000) /
     S_ATMOSP (98.000, 99.000) /
     S_BOTH (98.000, 99.000) /
     S_BUSPR (998.000, 999.000) /
     S_CLERIC (8.000, 9.000) /
     S_CLIMB (998.000, 999.000) /
     S_CLRDIS (8.000, 9.000) /
     S_COLD (98.000, 99.000) /
     S_COMMDA (998.000, 999.000) /
     S_DATAL (8.000, 9.000) /
     S_DATAPR (8.000, 9.000) /
     S_DCP (998.000, 999.000) /
     S_DEPL (998.000, 999.000) /
     S_ENVIRO (8.000, 9.000) /
     S_EYHNFT (8.000, 9.000) /
     S_FIF (998.000, 999.000) /
     S_FMNHR (97, 98, 99) /
     S_FMNYR (99997, 99998, 99999) /
     S_FNGRDX (8.000, 9.000) /
     S_FRMPRC (8.000, 9.000) /
     S_GED (8.000, 9.000) /
     S_HAZARD (998.000, 999.000) /
     S_HEAT (98.000, 99.000) /
     S_INFLU (998.000, 999.000) /
     S_INTELL (8.000, 9.000) /
     S_MACHPR (998.000, 999.000) /
     S_MCHNPR (8.000, 9.000) /
     S_MEN (9999997, 9999998, 9999999) /
     S_MMNHR (97, 98, 99) /
     S_MMNYR (99997, 99998, 99999) /
     S_MNLDXT (8.000, 9.000) /
     S_MTRCRD (8.000, 9.000) /
     S_MVC (998.000, 999.000) /
     S_NOISE (998.000, 999.000) /
     S_NUMERC (8.000, 9.000) /
     S_OBSPRE (998.000, 999.000) /
     S_OUT (98.000, 99.000) /
     S_PEOPLE (98.000, 99.000) /
     S_PEOPRE (998.000, 999.000) /
     S_PHYSDM (8.000, 9.000) /
     S_PRODPR (98.000, 99.000) /
     S_PROTPR (8.000, 9.000) /
     S_PRSTPR (998.000, 999.000) /
     S_PUS (98.000, 99.000) /
     S_REACH (998.000, 999.000) /
     S_REPCON (998.000, 999.000) /
     S_ROUTPR (998.000, 999.000) /
     S_SCINPR (998.000, 999.000) /
     S_SEE (998.000, 999.000) /
     S_SJC (998.000, 999.000) /
     S_SPATIA (8.000, 9.000) /
     S_STOOP (998.000, 999.000) /
     S_STRGTH (8.000, 9.000) /
     S_STS (998.000, 999.000) /
     S_SVP (98.000, 99.000) /
     S_TALK (998.000, 999.000) /
     S_THINGS (98.000, 99.000) /
     S_TRAIN (998.000, 999.000) /
     S_VARCH (998.000, 999.000) /
     S_VERBAL (8.000, 9.000) /
     S_WET (98.000, 99.000) /
     S_WOMEN (9999997, 9999998, 9999999) /
     MINDUS_S (7, 8, 9) /
     PROFID_S (7, 8, 9) /
     AGRIC_S (7, 8, 9) /
     CONSTR_S (7, 8, 9) /
     MANUF_S (7, 8, 9) /
     TRANSP_S (7, 8, 9) /
     WHOLE_S (7, 8, 9) /
     RETAIL_S (7, 8, 9) /
     FNANCE_S (7, 8, 9) /
     BUSIN_S (7, 8, 9) /
     PERSON_S (7, 8, 9) /
     ENTERT_S (7, 8, 9) /
     PUBADM_S (7, 8, 9) /
     MOCCUP_S (7, 8, 9) /
     EXEC_S (7, 8, 9) /
     PROFOC_S (7, 8, 9) /
     TECH_S (7, 8, 9) /
     SALES_S (7, 8, 9) /
     ADMIN_S (7, 8, 9) /
     SERV_S (7, 8, 9) /
     FARM_S (7, 8, 9) /
     CRAFT_S (7, 8, 9) /
     OPERAT_S (7, 8, 9) /
     A1PB35 (97, 98, 99) /
     CNT_BK (97, 98, 99) /
     A1PB36A1 (7, 8, 9) /
     A1PB36B1 (97, 98, 99) /
     A1PB36C1 (97, 98, 99) /
     A1PB36A2 (7, 8, 9) /
     A1PB36B2 (97, 98, 99) /
     A1PB36C2 (97, 98, 99) /
     A1PB36A3 (7, 8, 9) /
     A1PB36B3 (97, 98, 99) /
     A1PB36C3 (97, 98, 99) /
     A1PB36A4 (7, 8, 9) /
     A1PB36B4 (97, 98, 99) /
     A1PB36C4 (97, 98, 99) /
     A1PB36A5 (7, 8, 9) /
     A1PB36B5 (97, 98, 99) /
     A1PB36C5 (97, 98, 99) /
     A1PB36A6 (7, 8, 9) /
     A1PB36B6 (97, 98, 99) /
     A1PB36C6 (97, 98, 99) /
     A1PB36A7 (7, 8, 9) /
     A1PB36B7 (97, 98, 99) /
     A1PB36C7 (97, 98, 99) /
     A1PB36A8 (7, 8, 9) /
     A1PB36B8 (97, 98, 99) /
     A1PB36C8 (97, 98, 99) /
     A1PB36A9 (7, 8, 9) /
     A1PB36B9 (97, 98, 99) /
     A1PB36C9 (97, 98, 99) /
     A1PB36A10 (7, 8, 9) /
     A1PB36B10 (97, 98, 99) /
     A1PB36C10 (97, 98, 99) /
     A1PBAG1 (97, 98, 99) /
     A1PBAG2 (97, 98, 99) /
     A1PBAG3 (97, 98, 99) /
     A1PBAG4 (97, 98, 99) /
     A1PBAG5 (97, 98, 99) /
     A1PBAG6 (97, 98, 99) /
     A1PBAG7 (97, 98, 99) /
     A1PBAG8 (97, 98, 99) /
     A1PBAG9 (97, 98, 99) /
     A1PBAG10 (97, 98, 99) /
     A1PB37 (97, 98, 99) /
     CNT_NBK (97, 98, 99) /
     A1PB37A1 (7, 8, 9) /
     A1PB37B1 (7, 8, 9) /
     A1PB37C1 (97, 98, 99) /
     A1PB37D1 (97, 98, 99) /
     A1PB37A2 (7, 8, 9) /
     A1PB37B2 (7, 8, 9) /
     A1PB37C2 (97, 98, 99) /
     A1PB37D2 (97, 98, 99) /
     A1PB37A3 (7, 8, 9) /
     A1PB37B3 (7, 8, 9) /
     A1PB37C3 (97, 98, 99) /
     A1PB37D3 (97, 98, 99) /
     A1PB37A4 (7, 8, 9) /
     A1PB37B4 (7, 8, 9) /
     A1PB37C4 (97, 98, 99) /
     A1PB37D4 (97, 98, 99) /
     A1PB37A5 (7, 8, 9) /
     A1PB37B5 (7, 8, 9) /
     A1PB37C5 (97, 98, 99) /
     A1PB37D5 (97, 98, 99) /
     A1PB37A6 (7, 8, 9) /
     A1PB37B6 (7, 8, 9) /
     A1PB37C6 (97, 98, 99) /
     A1PB37D6 (97, 98, 99) /
     A1PB37A7 (7, 8, 9) /
     A1PB37B7 (7, 8, 9) /
     A1PB37C7 (97, 98, 99) /
     A1PB37D7 (97, 98, 99) /
     A1PB37A8 (7, 8, 9) /
     A1PB37B8 (7, 8, 9) /
     A1PB37C8 (97, 98, 99) /
     A1PB37D8 (97, 98, 99) /
     A1PB37A9 (7, 8, 9) /
     A1PB37B9 (7, 8, 9) /
     A1PB37C9 (97, 98, 99) /
     A1PB37D9 (97, 98, 99) /
     A1PB37A10 (7, 8, 9) /
     A1PB37B10 (7, 8, 9) /
     A1PB37C10 (97, 98, 99) /
     A1PB37D10 (97, 98, 99) /
     A1PBAO1 (97, 98, 99) /
     A1PBAO2 (97, 98, 99) /
     A1PBAO3 (97, 98, 99) /
     A1PBAO4 (97, 98, 99) /
     A1PBAO5 (97, 98, 99) /
     A1PBAO6 (97, 98, 99) /
     A1PBAO7 (97, 98, 99) /
     A1PBAO8 (97, 98, 99) /
     A1PBAO9 (97, 98, 99) /
     A1PBAO10 (97, 98, 99) /
     A1PCHILD0 (7, 8, 9) /
     A1PCHILD1 (7, 8, 9) /
     A1PCHILD2 (7, 8, 9) /
     A1PCHILD3 (7, 8, 9) /
     A1PCHILD4 (7, 8, 9) /
     A1PCHILD5 (7, 8, 9) /
     A1PCHILD6 (7, 8, 9) /
     A1PCHILD7 (7, 8, 9) /
     A1PCHILD8 (7, 8, 9) /
     A1PCHILD9 (7, 8, 9) /
     A1PCHILD10 (7, 8, 9) /
     A1PCHILD11 (7, 8, 9) /
     A1PCHILD12 (7, 8, 9) /
     A1PCHILD13 (7, 8, 9) /
     A1PCHILD14 (7, 8, 9) /
     A1PCHILD15 (7, 8, 9) /
     A1PCHILD16 (7, 8, 9) /
     A1PCHILD17 (7, 8, 9) /
     A1PCHILD18 (7, 8, 9) /
     A1PC06 (7, 8, 9) /
     A1PC713 (7, 8, 9) /
     A1PC1417 (7, 8, 9) /
     A1PC18 (7, 8, 9) /
     A1PE1 (7, 8, 9) /
     A1PE1A (9997, 9998, 9999) /
     A1PE2 (7, 8, 9) /
     A1PE2A (9997, 9998, 9999) /
     A1PE3 (7, 8, 9) /
     A1PE3A (9997, 9998, 9999) /
     A1PC1 (7, 8, 9) /
     A1PCA1 (7, 8, 9) /
     A1PCA2 (7, 8, 9) /
     A1PCA3 (7, 8, 9) /
     A1PCA4 (7, 8, 9) /
     A1PCA5 (7, 8, 9) /
     A1PCA6 (7, 8, 9) /
     A1PCA7 (7, 8, 9) /
     A1PCB1 (97, 98, 99) /
     A1PCB2 (97, 98, 99) /
     A1PCB3 (97, 98, 99) /
     A1PCB6 (97, 98, 99) /
     A1PCB7 (97, 98, 99) /
     A1PCC (7, 8, 9) /
     A1PC2 (97, 98, 99) /
     A1PC3 (7, 8, 9) /
     A1PC3A1 (7, 8, 9) /
     A1PC3A2 (7, 8, 9) /
     A1PC3A3 (7, 8, 9) /
     A1PC3A4 (7, 8, 9) /
     A1PC3A5 (7, 8, 9) /
     A1PC5_2 (7, 8, 9) /
     A1PC6_2 (7, 8, 9) /
     A1PINDD (997, 998, 999) /
     A1POCCD (997, 998, 999) /
     A1PTSEID (98.00, 99.00) /
     A1PTEARD (8.000, 9.000) /
     A1PTEDUD (8.000, 9.000) /
     A1PFSEID (98.000, 99.000) /
     A1PFEARD (8.000, 9.000) /
     A1PFEDUD (8.000, 9.000) /
     A1PMSEID (998.000, 999.000) /
     A1PMEARD (8.000, 9.000) /
     A1PMEDUD (8.000, 9.000) /
     D_ABSCRE (998.000, 999.000) /
     D_ATMOSP (98.000, 99.000) /
     D_BOTH (998.000, 999.000) /
     D_BUSPR (998.000, 999.000) /
     D_CLERIC (8.000, 9.000) /
     D_CLIMB (98.000, 99.000) /
     D_CLRDIS (8.000, 9.000) /
     D_COLD (98.000, 99.000) /
     D_COMMDA (998.000, 999.000) /
     D_DATAL (8.000, 9.000) /
     D_DATAPR (8.000, 9.000) /
     D_DCP (998.000, 999.000) /
     D_DEPL (998.000, 999.000) /
     D_ENVIRO (8.000, 9.000) /
     D_EYHNFT (8.000, 9.000) /
     D_FIF (998.000, 999.000) /
     D_FMNHR (97, 98, 99) /
     D_FMNYR (99997, 99998, 99999) /
     D_FNGRDX (8.000, 9.000) /
     D_FRMPRC (8.000, 9.000) /
     D_GED (8.000, 9.000) /
     D_HAZARD (98.000, 99.000) /
     D_HEAT (98.000, 99.000) /
     D_INFLU (998.000, 999.000) /
     D_INTELL (8.000, 9.000) /
     D_MACHPR (998.000, 999.000) /
     D_MCHNPR (8.000, 9.000) /
     D_MEN (9999998, 9999999) /
     D_MMNHR (97, 98, 99) /
     D_MMNYR (99997, 99998, 99999) /
     D_MNLDXT (8.000, 9.000) /
     D_MTRCRD (8.000, 9.000) /
     D_MVC (998.000, 999.000) /
     D_NOISE (998.000, 999.000) /
     D_NUMERC (8.000, 9.000) /
     D_OBSPRE (998.000, 999.000) /
     D_OUT (98.000, 99.000) /
     D_PEOPLE (98.000, 99.000) /
     D_PEOPRE (998.000, 999.000) /
     D_PHYSDM (8.000, 9.000) /
     D_PRODPR (98.000, 99.000) /
     D_PROTPR (8.000, 9.000) /
     D_PRSTPR (998.000, 999.000) /
     D_PUS (98.000, 99.000) /
     D_REACH (998.000, 999.000) /
     D_REPCON (998.000, 999.000) /
     D_ROUTPR (998.000, 999.000) /
     D_SCINPR (998.000, 999.000) /
     D_SEE (998.000, 999.000) /
     D_SJC (998.000, 999.000) /
     D_SPATIA (8.000, 9.000) /
     D_STOOP (998.000, 999.000) /
     D_STRGTH (8.000, 9.000) /
     D_STS (998.000, 999.000) /
     D_SVP (98.000, 99.000) /
     D_TALK (998.000, 999.000) /
     D_THINGS (98.000, 99.000) /
     D_TRAIN (998.000, 999.000) /
     D_VARCH (998.000, 999.000) /
     D_VERBAL (8.000, 9.000) /
     D_WET (98.000, 99.000) /
     D_WOMEN (9999998, 9999999) /
     MINDUS_D (7, 8, 9) /
     PROFID_D (7, 8, 9) /
     AGRIC_D (7, 8, 9) /
     CONSTR_D (7, 8, 9) /
     MANUF_D (7, 8, 9) /
     TRANSP_D (7, 8, 9) /
     WHOLE_D (7, 8, 9) /
     RETAIL_D (7, 8, 9) /
     FNANCE_D (7, 8, 9) /
     BUSIN_D (7, 8, 9) /
     PERSON_D (7, 8, 9) /
     ENTERT_D (7, 8, 9) /
     PUBADM_D (7, 8, 9) /
     MOCCUP_D (7, 8, 9) /
     EXEC_D (7, 8, 9) /
     PROFOC_D (7, 8, 9) /
     TECH_D (7, 8, 9) /
     SALES_D (7, 8, 9) /
     ADMIN_D (7, 8, 9) /
     SERV_D (7, 8, 9) /
     FARM_D (7, 8, 9) /
     CRAFT_D (7, 8, 9) /
     OPERAT_D (7, 8, 9) /
     A1PC7 (7, 8, 9) /
     A1PC8 (97, 98, 99) /
     A1PC9 (7, 8, 9) /
     A1PC9A1 (7, 8, 9) /
     A1PC9A2 (7, 8, 9) /
     A1PC9A3 (7, 8, 9) /
     A1PC9A4 (7, 8, 9) /
     A1PC9A5 (7, 8, 9) /
     A1PC11_2 (7, 8, 9) /
     A1PC13_2 (7, 8, 9) /
     A1PINDM (997, 998, 999) /
     A1POCCM (997, 998, 999) /
     A1PTSEIM (98.00, 99.00) /
     A1PTEARM (8.000, 9.000) /
     A1PTEDUM (8.000, 9.000) /
     A1PFSEIM (98.000, 99.000) /
     A1PFEARM (8.000, 9.000) /
     A1PFEDUM (8.000, 9.000) /
     A1PMSEIM (98.00, 99.00) /
     A1PMEARM (8.000, 9.000) /
     A1PMEDUM (8.000, 9.000) /
     M_ABSCRE (998.000, 999.000) /
     M_ATMOSP (98.000, 99.000) /
     M_BOTH (98.000, 99.000) /
     M_BUSPR (998.000, 999.000) /
     M_CLERIC (8.000, 9.000) /
     M_CLIMB (98.000, 99.000) /
     M_CLRDIS (8.000, 9.000) /
     M_COLD (98.000, 99.000) /
     M_COMMDA (998.000, 999.000) /
     M_DATAL (8.000, 9.000) /
     M_DATAPR (8.000, 9.000) /
     M_DCP (998.000, 999.000) /
     M_DEPL (998.000, 999.000) /
     M_ENVIRO (8.000, 9.000) /
     M_EYHNFT (8.000, 9.000) /
     M_FIF (998.000, 999.000) /
     M_FMNHR (97, 98, 99) /
     M_FMNYR (99997, 99998, 99999) /
     M_FNGRDX (8.000, 9.000) /
     M_FRMPRC (8.000, 9.000) /
     M_GED (8.000, 9.000) /
     M_HAZARD (98.000, 99.000) /
     M_HEAT (98.000, 99.000) /
     M_INFLU (998.000, 999.000) /
     M_INTELL (8.000, 9.000) /
     M_MACHPR (998.000, 999.000) /
     M_MCHNPR (8.000, 9.000) /
     M_MEN (9999998, 9999999) /
     M_MMNHR (97, 98, 99) /
     M_MMNYR (99997, 99998, 99999) /
     M_MNLDXT (8.000, 9.000) /
     M_MTRCRD (8.000, 9.000) /
     M_MVC (998.000, 999.000) /
     M_NOISE (98.000, 99.000) /
     M_NUMERC (8.000, 9.000) /
     M_OBSPRE (998.000, 999.000) /
     M_OUT (98.000, 99.000) /
     M_PEOPLE (98.000, 99.000) /
     M_PEOPRE (998.000, 999.000) /
     M_PHYSDM (8.000, 9.000) /
     M_PRODPR (98.000, 99.000) /
     M_PROTPR (8.000, 9.000) /
     M_PRSTPR (998.000, 999.000) /
     M_PUS (98.000, 99.000) /
     M_REACH (998.000, 999.000) /
     M_REPCON (98.000, 99.000) /
     M_ROUTPR (998.000, 999.000) /
     M_SCINPR (998.000, 999.000) /
     M_SEE (998.000, 999.000) /
     M_SJC (998.000, 999.000) /
     M_SPATIA (8.000, 9.000) /
     M_STOOP (998.000, 999.000) /
     M_STRGTH (8.000, 9.000) /
     M_STS (998.000, 999.000) /
     M_SVP (98.000, 99.000) /
     M_TALK (998.000, 999.000) /
     M_THINGS (98.000, 99.000) /
     M_TRAIN (98.000, 99.000) /
     M_VARCH (998.000, 999.000) /
     M_VERBAL (8.000, 9.000) /
     M_WET (98.000, 99.000) /
     M_WOMEN (9999998, 9999999) /
     MINDUS_M (7, 8, 9) /
     PROFID_M (7, 8, 9) /
     AGRIC_M (7, 8, 9) /
     CONSTR_M (7, 8, 9) /
     MANUF_M (7, 8, 9) /
     TRANSP_M (7, 8, 9) /
     WHOLE_M (7, 8, 9) /
     RETAIL_M (7, 8, 9) /
     FNANCE_M (7, 8, 9) /
     BUSIN_M (7, 8, 9) /
     PERSON_M (7, 8, 9) /
     ENTERT_M (7, 8, 9) /
     PUBADM_M (7, 8, 9) /
     MOCCUP_M (7, 8, 9) /
     EXEC_M (7, 8, 9) /
     PROFOC_M (7, 8, 9) /
     TECH_M (7, 8, 9) /
     SALES_M (7, 8, 9) /
     ADMIN_M (7, 8, 9) /
     SERV_M (7, 8, 9) /
     FARM_M (7, 8, 9) /
     CRAFT_M (7, 8, 9) /
     OPERAT_M (7, 8, 9) /
     A1PC14 (7, 8, 9) /
     A1PC15 (7, 8, 9) /
     A1PD1 (7, 8, 9) /
     A1PD2 (7, 8, 9) /
     A1PD3 (7, 8, 9) /
     A1PD8 (7, 8, 9) /
     A1PD9 (7, 8, 9) /
     A1PD9A (7, 8, 9) /
     A1PD4 (7, 8, 9) /
     A1PD5 (7, 8, 9) /
     A1PD6 (7, 8, 9) /
     A1PD7 (7, 8, 9) /
     A1SA1 (97, 98, 99) /
     A1SA2 (97, 98, 99) /
     A1SHLTCH (97, 98, 99) /
     A1SA3 (97, 98, 99) /
     A1SHLTEX (97, 98, 99) /
     A1SA4 (97, 98, 99) /
     A1SA5 (97, 98, 99) /
     A1SA6A (7, 8, 9) /
     A1SA6B (7, 8, 9) /
     A1SA6C (7, 8, 9) /
     A1SA6D (7, 8, 9) /
     A1SA7A (8) /
     A1SA7B (8) /
     A1SA7C (8) /
     A1SA7D (8) /
     A1SA7E (8) /
     A1SA7F (8) /
     A1SHLOCS (99.000) /
     A1SHLOCO (99.0) /
     A1SA8A (7, 8, 9) /
     A1SA8B (7, 8, 9) /
     A1SA8C (7, 8, 9) /
     A1SA8D (7, 8, 9) /
     A1SA8E (7, 8, 9) /
     A1SAMOLI (9.000) /
     A1SA9A (7, 8, 9) /
     A1SA9B (7, 8, 9) /
     A1SA9C (7, 8, 9) /
     A1SA9D (7, 8, 9) /
     A1SA9E (7, 8, 9) /
     A1SA9F (7, 8, 9) /
     A1SA9G (7, 8, 9) /
     A1SA9H (7, 8, 9) /
     A1SA9I (7, 8, 9) /
     A1SA9J (7, 8, 9) /
     A1SA9K (7, 8, 9) /
     A1SA9L (7, 8, 9) /
     A1SA9M (7, 8, 9) /
     A1SA9N (7, 8, 9) /
     A1SA9O (7, 8, 9) /
     A1SA9P (7, 8, 9) /
     A1SA9Q (7, 8, 9) /
     A1SA9R (7, 8, 9) /
     A1SA9S (7, 8, 9) /
     A1SA9T (7, 8, 9) /
     A1SA9U (7, 8, 9) /
     A1SA9V (7, 8, 9) /
     A1SA9W (7, 8, 9) /
     A1SA9X (7, 8, 9) /
     A1SA9Y (7, 8, 9) /
     A1SA9Z (7, 8, 9) /
     A1SA9AA (7, 8, 9) /
     A1SA9BB (7, 8, 9) /
     A1SA9CC (7, 8, 9) /
     A1SCHRON (97, 98, 99) /
     A1SCHROX (9) /
     A1SA10A (7, 8, 9) /
     A1SA10B (7, 8, 9) /
     A1SA10C (7, 8, 9) /
     A1SA10D (7, 8, 9) /
     A1SA10E (7, 8, 9) /
     A1SA10F (7, 8, 9) /
     A1SA10G (7, 8, 9) /
     A1SA10H (7, 8, 9) /
     A1SA10I (7, 8, 9) /
     A1SA10J (7, 8, 9) /
     A1SA10K (7, 8, 9) /
     A1SRXMED (99) /
     A1SRXMEX (9) /
     A1SA11A (7, 8, 9) /
     A1SA11B (7, 8, 9) /
     A1SA11C (7, 8, 9) /
     A1SA11D (7, 8, 9) /
     A1SA11E (7, 8, 9) /
     A1SVITAM (7, 8, 9) /
     A1SA12A (7, 8, 9) /
     A1SA12B (7, 8, 9) /
     A1SA12C (7, 8, 9) /
     A1SA12D (7, 8, 9) /
     A1SA12E (7, 8, 9) /
     A1SA12F (7, 8, 9) /
     A1SA12G (7, 8, 9) /
     A1SA12H (7, 8, 9) /
     A1SA12I (7, 8, 9) /
     A1SSYMPT (99.000) /
     A1SA13A (7, 8, 9) /
     A1SA13B (7, 8, 9) /
     A1SA13C (7, 8, 9) /
     A1SA13D (7, 8, 9) /
     A1SA13E (7, 8, 9) /
     A1SA13F (7, 8, 9) /
     A1SNEGAF (9.000) /
     A1SA14 (97, 98, 99) /
     A1SA15A (7, 8, 9) /
     A1SA15B (7, 8, 9) /
     A1SA15C (7, 8, 9) /
     A1SA15D (7, 8, 9) /
     A1SA15E (7, 8, 9) /
     A1SA15F (7, 8, 9) /
     A1SPOSAF (9.000) /
     A1SA16 (97, 98, 99) /
     A1SA17A (7, 8, 9) /
     A1SA17B (7, 8, 9) /
     A1SA17C (7, 8, 9) /
     A1SA17D (7, 8, 9) /
     A1SA17E (7, 8, 9) /
     A1SA17F (7, 8, 9) /
     A1SA17G (7, 8, 9) /
     A1SA17H (7, 8, 9) /
     A1SA17I (7, 8, 9) /
     A1SBADL (9.0) /
     A1SIADL (9.000) /
     A1SA18 (7, 8, 9) /
     A1SA19 (7, 8, 9) /
     A1SVIGOR (99.00) /
     A1SA20 (7, 8, 9) /
     A1SA21 (7, 8, 9) /
     A1SMODER (99.00) /
     A1SA22A (7, 8, 9) /
     A1SA22B (7, 8, 9) /
     A1SA22C (7, 8, 9) /
     A1SA22D (7, 8, 9) /
     A1SDYSPN (7, 8, 9) /
     A1SA23 (98.00) /
     A1SA24 (98.00) /
     A1SWSTHI (9.000) /
     A1SA25 (998.00) /
     A1SA26 (7, 8, 9) /
     A1SA27 (997, 998, 999) /
     A1SBMI (99.000) /
     A1SA28 (997, 998, 999) /
     A1SA29 (997, 998, 999) /
     A1SA30A (7, 8, 9) /
     A1SA30B (7, 8, 9) /
     A1SA30C (7, 8, 9) /
     A1SA31 (997, 998, 999) /
     A1SA32 (7, 8, 9) /
     A1SA32A (97, 98, 99) /
     A1SA33 (97, 98, 99) /
     A1SA33A (97, 98, 99) /
     A1SA34 (7, 8, 9) /
     A1SA35 (7, 8, 9) /
     A1SA36A (97, 98, 99) /
     A1SA36B (97, 98, 99) /
     A1SA36C (997, 998, 999) /
     A1SA36D (97, 98, 99) /
     A1SUSEMD (997, 998, 999) /
     A1SA37A (997, 998, 999) /
     A1SA37B (97, 98, 99) /
     A1SA37C (997, 998, 999) /
     A1SA37D (997, 998, 999) /
     A1SUSEMH (997, 998, 999) /
     A1SA38A (7, 8, 9) /
     A1SA38AY (97, 98, 99) /
     A1SA38AZ (997, 998, 999) /
     A1SA38B (7, 8, 9) /
     A1SA38BY (97, 98, 99) /
     A1SA38BZ (97, 98, 99) /
     A1SA38C (7, 8, 9) /
     A1SA38CY (97, 98, 99) /
     A1SA38CZ (97, 98, 99) /
     A1SA38D (7, 8, 9) /
     A1SA38DY (97, 98, 99) /
     A1SA38DZ (97, 98, 99) /
     A1SA38E (7, 8, 9) /
     A1SA38EY (97, 98, 99) /
     A1SA38EZ (97, 98, 99) /
     A1SA38F (7, 8, 9) /
     A1SA38FY (97, 98, 99) /
     A1SA38FZ (97, 98, 99) /
     A1SA38G (7, 8, 9) /
     A1SA38GY (97, 98, 99) /
     A1SA38GZ (97, 98, 99) /
     A1SA38H (7, 8, 9) /
     A1SA38HY (97, 98, 99) /
     A1SA38HZ (97, 98, 99) /
     A1SA38I (7, 8, 9) /
     A1SA38IY (97, 98, 99) /
     A1SA38IZ (98, 99) /
     A1SA38J (7, 8, 9) /
     A1SA38JY (97, 98, 99) /
     A1SA38JZ (997, 998, 999) /
     A1SA38K (7, 8, 9) /
     A1SA38KY (97, 98, 99) /
     A1SA38KZ (997, 998, 999) /
     A1SA39A (7, 8, 9) /
     A1SA39B (7, 8, 9) /
     A1SA39C (7, 8, 9) /
     A1SA39D (7, 8, 9) /
     A1SA39E (7, 8, 9) /
     A1SA39F (7, 8, 9) /
     A1SA39G (7, 8, 9) /
     A1SA39H (7, 8, 9) /
     A1SA39I (7, 8, 9) /
     A1SA39J (7, 8, 9) /
     A1SA39K (7, 8, 9) /
     A1SA39L (7, 8, 9) /
     A1SA39M (7, 8, 9) /
     A1SA39N (7, 8, 9) /
     A1SA39O (7, 8, 9) /
     A1SA39P (7, 8, 9) /
     A1SALTER (7, 8, 9) /
     A1SA40A (7, 8, 9) /
     A1SA40B (7, 8, 9) /
     A1SA40C (7, 8, 9) /
     A1SA40D (7, 8, 9) /
     A1SA40E (7, 8, 9) /
     A1SA40F (7, 8, 9) /
     A1SA40G (7, 8, 9) /
     A1SA40H (7, 8, 9) /
     A1SA40I (7, 8, 9) /
     A1SA40J (7, 8, 9) /
     A1SA41 (7, 8, 9) /
     A1SA42 (7, 8, 9) /
     A1SA43A (7, 8, 9) /
     A1SA43B (7, 8, 9) /
     A1SA43C (7, 8, 9) /
     A1SA43D (7, 8, 9) /
     A1SA43E (7, 8, 9) /
     A1SA44A (7, 8, 9) /
     A1SA44B (7, 8, 9) /
     A1SA44C (7, 8, 9) /
     A1SA44D (7, 8, 9) /
     A1SA44E (7, 8, 9) /
     A1SA45 (7, 8, 9) /
     A1SA46 (7, 8, 9) /
     SKIP_SB1 (7, 8, 9) /
     A1SB1 (97, 98, 99) /
     A1SB2 (7, 8, 9) /
     A1SB3 (7, 8, 9) /
     A1SB4 (7, 8, 9) /
     A1SB5A (7, 8, 9) /
     A1SB5B (7, 8, 9) /
     A1SB5C (7, 8, 9) /
     A1SB6 (7, 8, 9) /
     A1SB6A (97, 98, 99) /
     A1SB6B (7, 8, 9) /
     A1SB6C (97, 98, 99) /
     A1SB7A1 (7, 8, 9) /
     A1SB7A2 (97, 98, 99) /
     A1SB7B1 (7, 8, 9) /
     A1SB7B2 (97, 98, 99) /
     A1SB7C1 (7, 8, 9) /
     A1SB7C2 (97, 98, 99) /
     A1SB7D1 (7, 8, 9) /
     A1SB7D2 (97, 98, 99) /
     A1SB7E1 (7, 8, 9) /
     A1SB7E2 (97, 98, 99) /
     A1SB7F1 (7, 8, 9) /
     A1SB7F2 (97, 98, 99) /
     A1SB8A (7, 8, 9) /
     A1SB8B (7, 8, 9) /
     A1SB8C (7, 8, 9) /
     A1SB9 (7, 8, 9) /
     A1SB9A (97, 98, 99) /
     A1SB10 (7, 8, 9) /
     A1SB10A (7, 8, 9) /
     A1SB10B (7, 8, 9) /
     A1SB10C (7, 8, 9) /
     A1SC1A (7, 8, 9) /
     A1SC1B (7, 8, 9) /
     A1SC1C (7, 8, 9) /
     A1SC1D (7, 8, 9) /
     A1SC1E (7, 8, 9) /
     A1SC1F (7, 8, 9) /
     A1SC1G (7, 8, 9) /
     A1SC1H (7, 8, 9) /
     A1SC2 (7, 8, 9) /
     A1SC3A (7, 8, 9) /
     A1SC3B (7, 8, 9) /
     A1SC3C (7, 8, 9) /
     A1SC3D (7, 8, 9) /
     A1SC4A (7, 8, 9) /
     A1SC4B (7, 8, 9) /
     A1SC4C (7, 8, 9) /
     SKIP_SC5 (7, 8, 9) /
     A1SC5A (7, 8, 9) /
     A1SC5B (7, 8, 9) /
     A1SC5C (7, 8, 9) /
     A1SC5D (7, 8, 9) /
     A1SC5E (7, 8, 9) /
     A1SC5F (7, 8, 9) /
     A1SC5G (7, 8, 9) /
     A1SC5H (7, 8, 9) /
     A1SC6 (7, 8, 9) /
     A1SD1 (7, 8, 9) /
     A1SD2 (7, 8, 9) /
     A1SD2A (997, 998, 999) /
     A1SD2B (7, 8, 9) /
     A1SD2C (97, 98, 99) /
     A1SD2D (997, 998, 999) /
     A1SD3 (7, 8, 9) /
     A1SD4 (7, 8, 9) /
     A1SD4A (997, 998, 999) /
     A1SD4B (7, 8, 9) /
     A1SD4C (97, 98, 99) /
     A1SD4D (997, 998, 999) /
     A1SE2 (7, 8, 9) /
     A1SE3 (7, 8, 9) /
     A1SE4 (7, 8, 9) /
     A1SE5 (7, 8, 9) /
     A1SE6 (7, 8, 9) /
     A1SE7 (7, 8, 9) /
     A1SE8 (97, 98, 99) /
     A1SE9 (98) /
     A1SE10 (97, 98) /
     A1SE11 (7, 8, 9) /
     A1SE12 (7, 8, 9) /
     SKIP_E13 (7, 8, 9) /
     A1SE13 (7, 8, 9) /
     A1SE14A (7, 8, 9) /
     A1SE14B (7, 8, 9) /
     A1SE14C (7, 8, 9) /
     A1SE14D (7, 8, 9) /
     A1SE14E (7, 8, 9) /
     A1SE14F (7, 8, 9) /
     A1SE14G (7, 8, 9) /
     A1SE14H (7, 8, 9) /
     A1SE14I (7, 8, 9) /
     A1SE14J (7, 8, 9) /
     A1SE14K (7, 8, 9) /
     A1SE14L (7, 8, 9) /
     A1SE14M (7, 8, 9) /
     A1SEMA (9.000) /
     A1SEMD (9.000) /
     A1SMMOD (9.0) /
     A1SE15 (7, 8, 9) /
     A1SE16A (7, 8, 9) /
     A1SE16B (7, 8, 9) /
     A1SE16C (7, 8, 9) /
     A1SE16D (7, 8, 9) /
     A1SE16E (7, 8, 9) /
     A1SE16F (7, 8, 9) /
     A1SE16G (7, 8, 9) /
     A1SE16H (7, 8, 9) /
     A1SE16I (7, 8, 9) /
     A1SE16J (7, 8, 9) /
     A1SE16K (7, 8, 9) /
     A1SE16L (7, 8, 9) /
     A1SE16M (7, 8, 9) /
     A1SEFA (9.000) /
     A1SEFD (9.000) /
     A1SEFMOD (9.0) /
     A1SEMAPA (9.000) /
     A1SE17A (7, 8, 9) /
     A1SE17B (7, 8, 9) /
     A1SE17C (7, 8, 9) /
     A1SE17D (7, 8, 9) /
     A1SE17E (7, 8, 9) /
     A1SE17F (7, 8, 9) /
     A1SE17G (7, 8, 9) /
     A1SE17H (7, 8, 9) /
     A1SE17I (7, 8, 9) /
     A1SE17J (7, 8, 9) /
     A1SE17K (7, 8, 9) /
     A1SE17L (7, 8, 9) /
     A1SE17M (7, 8, 9) /
     A1SE17N (7, 8, 9) /
     A1SE17O (7, 8, 9) /
     A1SE18A (97, 98, 99) /
     A1SE18B (97, 98, 99) /
     A1SE18C (7, 8, 9) /
     A1SE19A (97, 98, 99) /
     A1SE19B (97, 98, 99) /
     A1SE19C (7, 8, 9) /
     A1SF1A (8) /
     A1SF1B (8) /
     A1SF1C (8) /
     A1SF1D (8) /
     A1SF1E (8) /
     A1SF1F (8) /
     A1SF1G (8) /
     A1SF1H (8) /
     A1SF1I (8) /
     A1SF1J (8) /
     A1SF1K (8) /
     A1SF1L (8) /
     A1SF1M (8) /
     A1SF1N (8) /
     A1SF1O (8) /
     A1SF1P (8) /
     A1SF1Q (8) /
     A1SF1R (8) /
     A1SF1S (8) /
     A1SF1T (8) /
     A1SF1U (8) /
     A1SF1V (8) /
     A1SF1W (8) /
     A1SF1X (8) /
     A1SF1Y (8) /
     A1SF1Z (8) /
     A1SF1AA (8) /
     A1SF1BB (8) /
     A1SF1CC (8) /
     A1SF1DD (8) /
     A1SCTRL (9) /
     A1SPWBA (99.0) /
     A1SPWBE (99.0) /
     A1SPWBG (99.0) /
     A1SPWBR (99.0) /
     A1SPWBU (99.0) /
     A1SPWBS (99.0) /
     A1SCONST (99.000) /
     A1SMASTE (99.000) /
     A1SF2A (8) /
     A1SF2B (8) /
     A1SF2C (8) /
     A1SF2D (8) /
     A1SF2E (8) /
     A1SF2F (8) /
     A1SF2G (8) /
     A1SF2H (8) /
     A1SF2I (8) /
     A1SF2J (8) /
     A1SF2K (8) /
     A1SMAR (99.0) /
     A1SFAM (99.000) /
     A1SF3A (7, 8, 9) /
     A1SF3B (7, 8, 9) /
     A1SF3C (7, 8, 9) /
     A1SF3D (7, 8, 9) /
     A1SF3E (7, 8, 9) /
     A1SF3F (7, 8, 9) /
     A1SF3G (7, 8, 9) /
     A1SF3H (7, 8, 9) /
     A1SF3I (7, 8, 9) /
     A1SF3J (7, 8, 9) /
     A1SF3K (7, 8, 9) /
     A1SF3L (7, 8, 9) /
     A1SF3M (7, 8, 9) /
     A1SF3N (7, 8, 9) /
     A1SF3O (7, 8, 9) /
     A1SF3P (7, 8, 9) /
     A1SF3Q (7, 8, 9) /
     A1SF3R (7, 8, 9) /
     A1SF3S (7, 8, 9) /
     A1SF3T (7, 8, 9) /
     A1SF3U (7, 8, 9) /
     A1SF3V (7, 8, 9) /
     A1SF3W (7, 8, 9) /
     A1SF3X (7, 8, 9) /
     A1SF3Y (7, 8, 9) /
     A1SF3Z (7, 8, 9) /
     A1SF3AA (7, 8, 9) /
     A1SF3BB (7, 8, 9) /
     A1SF3CC (7, 8, 9) /
     A1SF3DD (7, 8, 9) /
     A1SF3EE (7, 8, 9) /
     A1SF3FF (7, 8, 9) /
     A1SF3GG (7, 8, 9) /
     A1SF3HH (7, 8, 9) /
     A1SF3II (7, 8, 9) /
     A1SF3JJ (7, 8, 9) /
     A1SF3KK (7, 8, 9) /
     A1SPERSI (9.000) /
     A1SCHANG (9.000) /
     A1SREAPP (9.000) /
     A1SDIREC (9.000) /
     A1STODAY (9.000) /
     A1SFORSG (9.000) /
     A1SINSGH (9.000) /
     A1SSUFFI (9.000) /
     A1SADVIC (9.000) /
     A1SF4A (7, 8, 9) /
     A1SF4B (7, 8, 9) /
     A1SF4C (7, 8, 9) /
     A1SF4D (7, 8, 9) /
     A1SF4E (7, 8, 9) /
     A1SF4F (7, 8, 9) /
     A1SF4G (7, 8, 9) /
     A1SF4H (7, 8, 9) /
     A1SF4I (7, 8, 9) /
     A1SF4J (7, 8, 9) /
     A1SF4K (7, 8, 9) /
     A1SF4L (7, 8, 9) /
     A1SF4M (7, 8, 9) /
     A1SF4N (7, 8, 9) /
     A1SF4O (7, 8, 9) /
     A1SF4P (7, 8, 9) /
     A1SF4Q (7, 8, 9) /
     A1SF4R (7, 8, 9) /
     A1SF4S (7, 8, 9) /
     A1SF4T (7, 8, 9) /
     A1SF4U (7, 8, 9) /
     A1SF4V (7, 8, 9) /
     A1SF4W (7, 8, 9) /
     A1SF4X (7, 8, 9) /
     A1SF4Y (7, 8, 9) /
     A1SF4Z (7, 8, 9) /
     A1SF4AA (7, 8, 9) /
     A1SF4BB (7, 8, 9) /
     A1SF4CC (7, 8, 9) /
     A1SF4DD (7, 8, 9) /
     A1SAGENC (9.000) /
     A1SAGREE (9.000) /
     A1SEXTRA (9.000) /
     A1SNEURO (9.000) /
     A1SCONS (9.000) /
     A1SOPEN (9.000) /
     A1SF5A (97, 98, 99) /
     A1SF5B (97, 98, 99) /
     A1SF5C (97, 98, 99) /
     A1SF5D (97, 98, 99) /
     A1SF5E (97, 98, 99) /
     A1SF5F (97, 98, 99) /
     A1SF5G (97, 98, 99) /
     A1SF5H (97, 98, 99) /
     A1SF5I (97, 98, 99) /
     A1SF5J (97, 98, 99) /
     A1SF5K (97, 98, 99) /
     A1SF5L (97, 98, 99) /
     A1SF5M (97, 98, 99) /
     A1SF5N (97, 98, 99) /
     A1SF5O (97, 98, 99) /
     A1SF5P (97, 98, 99) /
     A1SF5Q (97, 98, 99) /
     A1SF5R (97, 98, 99) /
     A1SF6A (7, 8, 9) /
     A1SF6B (7, 8, 9) /
     A1SF6C (7, 8, 9) /
     A1SF7A (7, 8, 9) /
     A1SF7B (7, 8, 9) /
     A1SF7C (7, 8, 9) /
     A1SF8A (7, 8, 9) /
     A1SF8B (7, 8, 9) /
     A1SF8C (7, 8, 9) /
     A1SG1A (97, 98, 99) /
     A1SG1B (97, 98, 99) /
     A1SG1C (97, 98, 99) /
     A1SG1D (97, 98, 99) /
     A1SG1E (97, 98, 99) /
     A1SG1F (97, 98, 99) /
     A1SG1G (97, 98, 99) /
     A1SG1H (97, 98, 99) /
     A1SG1I (97, 98, 99) /
     A1SG1J (97, 98, 99) /
     A1SG1K (97, 98, 99) /
     A1SG1L (97, 98, 99) /
     A1SG1M (97, 98, 99) /
     A1SG1N (97, 98, 99) /
     A1SG1O (97, 98, 99) /
     A1SG1P (97, 98, 99) /
     A1SG1Q (97, 98, 99) /
     A1SG1R (97, 98, 99) /
     A1SG2A (97, 98, 99) /
     A1SG2B (97, 98, 99) /
     A1SG2C (97, 98, 99) /
     A1SG2D (97, 98, 99) /
     A1SG2E (97, 98, 99) /
     A1SG2F (97, 98, 99) /
     A1SG2G (97, 98, 99) /
     A1SG2H (97, 98, 99) /
     A1SG2I (97, 98, 99) /
     A1SG2J (97, 98, 99) /
     A1SG2K (97, 98, 99) /
     A1SG2L (97, 98, 99) /
     A1SG2M (97, 98, 99) /
     A1SG2N (97, 98, 99) /
     A1SG2O (97, 98, 99) /
     A1SG2P (97, 98, 99) /
     A1SG2Q (97, 98, 99) /
     A1SG2R (97, 98, 99) /
     A1SG2S (97, 98, 99) /
     A1SG2T (97, 98, 99) /
     A1SG2U (97, 98, 99) /
     A1SG3 (997, 998, 999) /
     A1SG4 (997, 998, 999) /
     A1SG5 (97, 98, 99) /
     A1SG6 (998) /
     A1SG7 (998) /
     A1SG8 (998) /
     A1SH1 (7, 8, 9) /
     A1SH2 (7, 8, 9) /
     A1SH3 (7, 8, 9) /
     A1SH4 (7, 8, 9) /
     A1SH5 (7, 8, 9) /
     A1SH6 (7, 8, 9) /
     A1SH7 (7, 8, 9) /
     A1SI1A1 (7, 8, 9) /
     A1SI1A2 (7, 8, 9) /
     A1SI1A3 (7, 8, 9) /
     A1SI1B1 (7, 8, 9) /
     A1SI1B2 (7, 8, 9) /
     A1SI1B3 (7, 8, 9) /
     A1SI1C1 (7, 8, 9) /
     A1SI1C2 (7, 8, 9) /
     A1SI1C3 (7, 8, 9) /
     A1SI1D1 (7, 8, 9) /
     A1SI1D2 (7, 8, 9) /
     A1SI1D3 (7, 8, 9) /
     A1SI1E1 (7, 8, 9) /
     A1SI1E2 (7, 8, 9) /
     A1SI1E3 (7, 8, 9) /
     A1SI1F1 (7, 8, 9) /
     A1SI1F2 (7, 8, 9) /
     A1SI1F3 (7, 8, 9) /
     A1SI1G1 (7, 8, 9) /
     A1SI1G2 (7, 8, 9) /
     A1SI1G3 (7, 8, 9) /
     A1SI1H1 (7, 8, 9) /
     A1SI1H2 (7, 8, 9) /
     A1SI1H3 (7, 8, 9) /
     A1SI1I1 (7, 8, 9) /
     A1SI1I2 (7, 8, 9) /
     A1SI1I3 (7, 8, 9) /
     A1SI1J1 (7, 8, 9) /
     A1SI1J2 (7, 8, 9) /
     A1SI1J3 (7, 8, 9) /
     A1SI1K1 (7, 8, 9) /
     A1SI1K2 (7, 8, 9) /
     A1SI1K3 (7, 8, 9) /
     A1SI2 (97, 98, 99) /
     A1SI3 (97, 98, 99) /
     A1SI4 (97, 98, 99) /
     A1SI5 (97, 98, 99) /
     A1SI6 (97, 98, 99) /
     SKIP_SI7 (7, 8, 9) /
     A1SI7 (97, 98, 99) /
     A1SI8 (97, 98, 99) /
     A1SI9 (97, 98, 99) /
     A1SI10 (9997, 9998, 9999) /
     A1SI11 (97, 98, 99) /
     A1SI12A (7, 8, 9) /
     A1SI12B (7, 8, 9) /
     A1SI12C (7, 8, 9) /
     A1SI12D (7, 8, 9) /
     A1SI12E (7, 8, 9) /
     A1SI12F (7, 8, 9) /
     A1SI12G (7, 8, 9) /
     A1SI12H (7, 8, 9) /
     A1SI12I (7, 8, 9) /
     A1SI12J (7, 8, 9) /
     A1SI13A (97, 98, 99) /
     A1SI13B (97, 98, 99) /
     A1SI13C (97, 98, 99) /
     A1SI13D (97, 98, 99) /
     A1SI14 (7, 8, 9) /
     A1SI15A (7, 8, 9) /
     A1SI15B (7, 8, 9) /
     A1SI15C (7, 8, 9) /
     A1SI15D (7, 8, 9) /
     A1SI16 (9997, 9998, 9999) /
     A1SI17 (9997, 9998, 9999) /
     A1SI18 (997, 998, 999) /
     A1SI19 (7, 8, 9) /
     A1SI20 (7, 8, 9) /
     A1SI21 (7, 8, 9) /
     A1SI22 (7, 8, 9) /
     A1SI23 (7, 8, 9) /
     A1SI24 (7, 8, 9) /
     A1SI25 (997, 998, 999) /
     A1SI26 (7, 8, 9) /
     A1SI27A (7, 8, 9) /
     A1SI27B (7, 8, 9) /
     A1SI27C (7, 8, 9) /
     A1SI27D (7, 8, 9) /
     A1SI27E (7, 8, 9) /
     A1SI27F (7, 8, 9) /
     A1SI27G (7, 8, 9) /
     A1SI27H (7, 8, 9) /
     A1SI27I (7, 8, 9) /
     A1SI27J (7, 8, 9) /
     A1SI27K (7, 8, 9) /
     A1SI27L (7, 8, 9) /
     A1SI27M (7, 8, 9) /
     A1SI27N (7, 8, 9) /
     A1SI27O (7, 8, 9) /
     A1SI27P (7, 8, 9) /
     A1SPOSWF (99) /
     A1SNEGWF (99) /
     A1SPOSFW (99) /
     A1SNEGFW (99) /
     A1SI28A (7, 8, 9) /
     A1SI28B (7, 8, 9) /
     A1SI28C (7, 8, 9) /
     A1SI28D (7, 8, 9) /
     A1SI28E (7, 8, 9) /
     A1SI28F (7, 8, 9) /
     A1SI28G (7, 8, 9) /
     A1SI28H (7, 8, 9) /
     A1SI28I (7, 8, 9) /
     A1SI28J (7, 8, 9) /
     A1SI29A (7, 8, 9) /
     A1SI29B (7, 8, 9) /
     A1SI29C (7, 8, 9) /
     A1SI29D (7, 8, 9) /
     A1SJCSD (99) /
     A1SJCDA (99) /
     A1SJCDS (99) /
     A1SJCCS (99) /
     A1SJCSS (99) /
     A1SI30A (7, 8, 9) /
     A1SI30B (7, 8, 9) /
     A1SI30C (7, 8, 9) /
     A1SI30D (7, 8, 9) /
     A1SI30E (7, 8, 9) /
     A1SI31A (7, 8, 9) /
     A1SI31B (7, 8, 9) /
     A1SI31C (7, 8, 9) /
     A1SI31D (7, 8, 9) /
     A1SI31E (7, 8, 9) /
     A1SI31F (7, 8, 9) /
     A1SPIWOR (9.000) /
     A1SI32A (7, 8, 9) /
     A1SI32B (7, 8, 9) /
     A1SI32C (7, 8, 9) /
     A1SI32D (7, 8, 9) /
     A1SI33A (7, 8, 9) /
     A1SI33B (7, 8, 9) /
     A1SI33C (7, 8, 9) /
     A1SI34A (7, 8, 9) /
     A1SI34B (7, 8, 9) /
     A1SI34C (7, 8, 9) /
     A1SJ1 (97, 98, 99) /
     A1SJ2 (97, 98, 99) /
     A1SJ3 (97, 98, 99) /
     A1SJ4 (97, 98, 99) /
     A1SJ5 (97, 98, 99) /
     A1SJ6 (7, 8, 9) /
     A1SJ7 (7, 8, 9) /
     A1SJ8 (97, 98, 99) /
     A1SJ8M (999997, 999998, 999999) /
     A1SJ9 (97, 98, 99) /
     A1SJ9M (999997, 999998, 999999) /
     A1SHWEARN (999997, 999998, 999999) /
     A1SJ10 (97, 98, 99) /
     A1SJ10M (999997, 999998, 999999) /
     A1SJ11 (97, 98, 99) /
     A1SJ11M (999997, 999998, 999999) /
     A1SJ12 (97, 98, 99) /
     A1SJ12M (999997, 999998, 999999) /
     A1SJ13 (97, 98, 99) /
     A1SJ13M (999997, 999998, 999999) /
     A1SHHTOT (999997, 999998, 999999) /
     A1SJ14 (7, 8, 9) /
     A1SJ15 (97, 98, 99) /
     A1SASSET (99997, 99998, 99999) /
     A1SJ16 (7, 8, 9) /
     A1SJ17 (7, 8, 9) /
     A1SJ18 (7, 8, 9) /
     A1SJ19 (7, 8, 9) /
     A1SK1 (97, 98, 99) /
     A1SK2 (97, 98, 99) /
     A1SK3 (97, 98, 99) /
     A1SK4 (97, 98, 99) /
     A1SK5 (97, 98, 99) /
     A1SK6A (7, 8, 9) /
     A1SK6B (7, 8, 9) /
     A1SK6C (7, 8, 9) /
     A1SK6D (7, 8, 9) /
     A1SK6E (7, 8, 9) /
     A1SK6F (7, 8, 9) /
     A1SGENER (99.00) /
     A1SK7A (97, 98, 99) /
     A1SK7B (97, 98, 99) /
     A1SK7C (97, 98, 99) /
     A1SK7D (97, 98, 99) /
     A1SK7E (97, 98, 99) /
     A1SK7F (97, 98, 99) /
     A1SK7G (97, 98, 99) /
     A1SK7H (97, 98, 99) /
     A1SK7I (97, 98, 99) /
     A1SK7J (97, 98, 99) /
     A1SK7K (97, 98, 99) /
     A1SK7L (97, 98, 99) /
     A1SK7M (97, 98, 99) /
     A1SK7N (97, 98, 99) /
     A1SK7O (97, 98, 99) /
     A1SK7P (97, 98, 99) /
     A1SK7Q (97, 98, 99) /
     A1SK7R (97, 98, 99) /
     A1SK7A1S (97, 98, 99) /
     A1SPRIOB (99.000) /
     A1SCVOB3 (99.000) /
     A1SCVOB5 (99.000) /
     A1SWKOB (99.000) /
     A1SALTRU (99.000) /
     A1SK8A (997, 998, 999) /
     A1SK8B (997, 998, 999) /
     A1SK8C (997, 998, 999) /
     A1SK8D (997, 998, 999) /
     A1SK9A (97, 98, 99) /
     A1SK9B (97, 98, 99) /
     A1SK9C (97, 98, 99) /
     A1SK9D (97, 98, 99) /
     A1SK9E (998) /
     A1SK10A (997, 998, 999) /
     A1SK10B (997, 998, 999) /
     A1SK10C (997, 998, 999) /
     A1SK10D (997, 998, 999) /
     A1SK10E (997, 998, 999) /
     A1SK10F (997, 998, 999) /
     A1SPSUPE (9999.000) /
     A1SK11A (997, 998, 999) /
     A1SK11B (997, 998, 999) /
     A1SK11C (997, 998, 999) /
     A1SK11D (997, 998, 999) /
     A1SK11E (997, 998, 999) /
     A1SK11F (997, 998, 999) /
     A1SRSUPE (9999.000) /
     A1SK12A (997, 998, 999) /
     A1SK12B (997, 998, 999) /
     A1SK12C (997, 998, 999) /
     A1SK12D (997, 998, 999) /
     A1SK12E (997, 998, 999) /
     A1SPSUPI (999.000) /
     A1SK13A (997, 998, 999) /
     A1SK13B (997, 998, 999) /
     A1SK13C (997, 998, 999) /
     A1SK13D (997, 998, 999) /
     A1SK13E (97, 98, 99) /
     A1SK13F (997, 998, 999) /
     A1SK13G (997, 998, 999) /
     A1SK13H (997, 998, 999) /
     A1SRSUIF (999.000) /
     A1SRSUIO (99.000) /
     A1SK14A (9997, 9998, 9999) /
     A1SK14B (9997, 9998, 9999) /
     A1SK14C (99997, 99998, 99999) /
     A1SK14D (9997, 9998, 9999) /
     A1SK14E (997, 998, 999) /
     A1SK14F (99998) /
     A1SK14G (9997, 9998, 9999) /
     A1SK14H (99997, 99998, 99999) /
     A1SK15A (99998) /
     A1SK15B (9997, 9998, 9999) /
     A1SK15C (9997, 9998, 9999) /
     A1SK15D (9997, 9998, 9999) /
     A1SK15E (997, 998, 999) /
     A1SK15F (9997, 9998, 9999) /
     A1SK15G (99997, 99998, 99999) /
     A1SK16A (7, 8, 9) /
     A1SK16B (7, 8, 9) /
     A1SK16C (7, 8, 9) /
     A1SK16D (7, 8, 9) /
     A1SK17A (8, 9) /
     A1SK17B (8, 9) /
     A1SK17C (8, 9) /
     A1SK17D (8, 9) /
     A1SK17E (8, 9) /
     A1SK17F (8, 9) /
     A1SK17G (8, 9) /
     A1SK17H (8, 9) /
     A1SK17I (8, 9) /
     A1SK17J (8, 9) /
     A1SK17K (8, 9) /
     A1SK17L (8, 9) /
     A1SK17M (8, 9) /
     A1SK17N (8, 9) /
     A1SK17O (8, 9) /
     A1SSWBMS (99) /
     A1SSWBSI (99.0) /
     A1SSWBAO (99.0) /
     A1SSWBSC (99.0) /
     A1SSWBSA (99.0) /
     A1SL1 (7, 8, 9) /
     A1SL2 (7, 8, 9) /
     A1SL3 (97, 98, 99) /
     A1SL4 (7, 8, 9) /
     A1SL5A (7, 8, 9) /
     A1SL5B (7, 8, 9) /
     A1SL5C (7, 8, 9) /
     A1SL5D (7, 8, 9) /
     A1SL5E (7, 8, 9) /
     A1SL5F (7, 8, 9) /
     A1SL5G (7, 8, 9) /
     A1SL5H (7, 8, 9) /
     A1SL5I (7, 8, 9) /
     A1SL5J (7, 8, 9) /
     A1SL5K (7, 8, 9) /
     A1SL5L (7, 8, 9) /
     A1SHOMET (9.000) /
     A1SPIHOM (9.000) /
     A1SM1 (97, 98, 99) /
     A1SM2 (7, 8, 9) /
     A1SM3 (7, 8, 9) /
     A1SM4 (7, 8, 9) /
     A1SM5 (7, 8, 9) /
     A1SM6 (7, 8, 9) /
     A1SM7 (7, 8, 9) /
     A1SM8 (7, 8, 9) /
     A1SM9 (7, 8, 9) /
     A1SFAMSO (9) /
     A1SKINPO (9.000) /
     A1SKINNE (9.000) /
     A1SM10 (97, 98, 99) /
     A1SM11 (7, 8, 9) /
     A1SM12 (7, 8, 9) /
     A1SM13 (7, 8, 9) /
     A1SM14 (7, 8, 9) /
     A1SFDSOL (9) /
     A1SM15 (7, 8, 9) /
     A1SM16 (7, 8, 9) /
     A1SM17 (7, 8, 9) /
     A1SM18 (7, 8, 9) /
     A1SFDSPO (9.000) /
     A1SFDSNE (9.000) /
     A1SM19 (7, 8, 9) /
     A1SM20 (7, 8, 9) /
     A1SM21A1 (7, 8, 9) /
     A1SM21A2 (7, 8, 9) /
     A1SM21A3 (7, 8, 9) /
     A1SM21B1 (7, 8, 9) /
     A1SM21B2 (7, 8, 9) /
     A1SM21B3 (7, 8, 9) /
     A1SM21C1 (7, 8, 9) /
     A1SM21C2 (7, 8, 9) /
     A1SM21C3 (7, 8, 9) /
     A1SM21D1 (7, 8, 9) /
     A1SM21D2 (7, 8, 9) /
     A1SM21D3 (7, 8, 9) /
     A1SM21E1 (7, 8, 9) /
     A1SM21E2 (7, 8, 9) /
     A1SM21E3 (7, 8, 9) /
     A1SM21F1 (7, 8, 9) /
     A1SM21F2 (7, 8, 9) /
     A1SM21F3 (7, 8, 9) /
     A1SM21G1 (7, 8, 9) /
     A1SM21G2 (7, 8, 9) /
     A1SM21G3 (7, 8, 9) /
     A1SM21H1 (7, 8, 9) /
     A1SM21H2 (7, 8, 9) /
     A1SM21H3 (7, 8, 9) /
     A1SM21I1 (7, 8, 9) /
     A1SM21I2 (7, 8, 9) /
     A1SM21I3 (7, 8, 9) /
     A1SM21J1 (7, 8, 9) /
     A1SM21J2 (7, 8, 9) /
     A1SM21J3 (7, 8, 9) /
     SKIP_SN1 (7, 8, 9) /
     A1SN1 (98, 99) /
     A1SN2 (98, 99) /
     A1SN3 (98, 99) /
     A1SN4 (98, 99) /
     A1SN5 (98, 99) /
     A1SN6A (7, 8, 9) /
     A1SN6B (7, 8, 9) /
     A1SN6C (7, 8, 9) /
     A1SN6D (7, 8, 9) /
     A1SN6E (7, 8, 9) /
     A1SN6F (7, 8, 9) /
     A1SPIFAM (9.000) /
     A1SN7A1 (7, 8, 9) /
     A1SN7A2 (7, 8, 9) /
     A1SN7B1 (7, 8, 9) /
     A1SN7B2 (7, 8, 9) /
     A1SN7C1 (7, 8, 9) /
     A1SN7C2 (7, 8, 9) /
     A1SN7D1 (7, 8, 9) /
     A1SN7D2 (7, 8, 9) /
     SKIP_SN8 (7, 8, 9) /
     A1SN8 (97, 98, 99) /
     A1SN9 (97, 98, 99) /
     A1SN10 (7, 8, 9) /
     A1SN11 (7, 8, 9) /
     SKIP_SP1 (7, 8, 9) /
     A1SP1 (97, 98, 99) /
     A1SP2 (97, 98, 99) /
     A1SP3 (97, 98, 99) /
     A1SP4 (97, 98, 99) /
     A1SP5 (97, 98, 99) /
     A1SP6 (7, 8, 9) /
     A1SP7 (7, 8, 9) /
     A1SP8 (7, 8, 9) /
     A1SP9A (7, 8, 9) /
     A1SP9B (7, 8, 9) /
     A1SP9C (7, 8, 9) /
     A1SSPDIS (99) /
     A1SMARRS (9.000) /
     A1SP10 (7, 8, 9) /
     A1SP11 (7, 8, 9) /
     A1SP12 (7, 8, 9) /
     A1SP13 (7, 8, 9) /
     A1SP14 (7, 8, 9) /
     A1SP15 (7, 8, 9) /
     A1SP16 (7, 8, 9) /
     A1SSPSOL (9) /
     A1SSPEMP (9.000) /
     A1SP17 (7, 8, 9) /
     A1SP18 (7, 8, 9) /
     A1SP19 (7, 8, 9) /
     A1SP20 (7, 8, 9) /
     A1SP21 (7, 8, 9) /
     A1SP22 (7, 8, 9) /
     A1SSPCRI (9.000) /
     A1SP23 (97, 98, 99) /
     A1SP24 (997, 998, 999) /
     A1SP25 (997, 998, 999) /
     A1SP26 (7, 8, 9) /
     A1SP27 (7, 8, 9) /
     A1SP28A (8, 9) /
     A1SP28B (8, 9) /
     A1SP28C (8, 9) /
     A1SP28D (8, 9) /
     A1SSPDEC (99) /
     A1SP29 (7, 8, 9) /
     A1SP30 (7, 8, 9) /
     A1SP31 (7, 8, 9) /
     A1SP32 (997, 998, 999) /
     A1SP33 (97, 98, 99) /
     A1SP34A (7, 8, 9) /
     A1SP34B (7, 8, 9) /
     A1SP34C (7, 8, 9) /
     A1SP34D (7, 8, 9) /
     A1SP35 (9997, 9998, 9999) /
     A1SP36 (9997, 9998, 9999) /
     A1SP37 (997, 998, 999) /
     A1SP38 (7, 8, 9) /
     A1SQ1 (97, 98, 99) /
     A1SQ2 (97, 98, 99) /
     A1SQ3 (97, 98, 99) /
     A1SQ4 (97, 98, 99) /
     A1SQ5 (97, 98, 99) /
     A1SQ6 (97, 98, 99) /
     A1SQ7 (7, 8, 9) /
     A1SQ8 (7, 8, 9) /
     A1SR1 (97, 98, 99) /
     A1SR1A (7, 8, 9) /
     A1SR2A (7, 8, 9) /
     A1SR2B (7, 8, 9) /
     A1SR2C (7, 8, 9) /
     A1SR2D (7, 8, 9) /
     A1SR2E (7, 8, 9) /
     A1SR2F (7, 8, 9) /
     A1SR2G (7, 8, 9) /
     A1SR2H (7, 8, 9) /
     A1SR2I (7, 8, 9) /
     A1SR3 (7, 8, 9) /
     A1SR4 (7, 8, 9) /
     A1SR5 (7, 8, 9) /
     A1SR6 (7, 8, 9) /
     SKIP_SR7 (7, 8, 9) /
     A1SR7 (7, 8, 9) /
     A1SR8 (7, 8, 9) /
     A1SA1S1_1 (7, 8, 9) /
     A1SA1S1_2 (7, 8, 9) /
     A1SA1S1_3 (7, 8, 9) /
     A1SA1S1_4 (7, 8, 9) /
     A1SA1S1_5 (7, 8, 9) /
     A1SA1S1_6 (7, 8, 9) /
     A1SA1S1_7 (7, 8, 9) /
     A1SA1S1_8 (7, 8, 9) /
     A1SA1S1_9 (7, 8, 9) /
     A1SA1S1_10 (7, 8, 9) /
     A1SA1S1_11 (7, 8, 9) /
     A1SA1S1_12 (7, 8, 9) /
     A1SA1S1_13 (7, 8, 9) /
     A1SA1S1_14 (7, 8, 9) /
     A1SA1S1_15 (7, 8, 9) /
     A1SA1S1_16 (7, 8, 9) /
     A1SA1S1_17 (7, 8, 9) /
     A1SA1S1_18 (7, 8, 9) /
     A1SA1S1_19 (7, 8, 9) /
     A1SA1S1_20 (7, 8, 9) /
     A1SA1S1_21 (7, 8, 9) /
     A1SA1S1_22 (7, 8, 9) /
     A1SA1S1_23 (7, 8, 9) /
     A1SA1S1_24 (7, 8, 9) /
     A1SA1S1_25 (7, 8, 9) /
     A1SA1S1_26 (7, 8, 9) /
     A1SA1S1_27 (7, 8, 9) /
     A1SA1S1_28 (7, 8, 9) /
     A1SA1S1_29 (7, 8, 9) /
     A1SA1S1_30 (7, 8, 9) /
     A1SA1S1_31 (7, 8, 9) /
     A1SA1S1_32 (7, 8, 9) /
     A1SA1S1_33 (7, 8, 9) /
     A1SA1S1_34 (7, 8, 9) /
     A1SA1S1_35 (7, 8, 9) /
     A1SA1S1_36 (7, 8, 9) /
     A1SA1S1_37 (7, 8, 9) /
     A1SA1S1_38 (7, 8, 9) /
     A1SA1S1_39 (7, 8, 9) /
     A1SA1S1_40 (7, 8, 9) /
     A1SA1S1_41 (7, 8, 9) /
     A1SA1S1_42 (7, 8, 9) /
     A1SA1S1_43 (7, 8, 9) /
     A1SA1S1_44 (7, 8, 9) /
     A1SA1S1_45 (7, 8, 9) /
     A1SA1S1_46 (7, 8, 9) /
     A1SA1S1_47 (7, 8, 9) /
     A1SA1S1_48 (7, 8, 9) /
     A1SA1S1_49 (7, 8, 9) /
     A1SA1S1_50 (7, 8, 9) /
     A1SA1S1_51 (7, 8, 9) /
     A1SA1S1_52 (7, 8, 9) /
     A1SA1S1_53 (7, 8, 9) /
     A1SA1S1_54 (7, 8, 9) /
     A1SA1S1_55 (7, 8, 9) /
     A1SA1S1_56 (7, 8, 9) /
     A1SA1S1_57 (7, 8, 9) /
     A1SA1S1_58 (7, 8, 9) /
     A1SA1S1_59 (7, 8, 9) /
     A1SA1S1_60 (7, 8, 9) /
     A1SA1S1_61 (7, 8, 9) /
     A1SA1S1_62 (7, 8, 9) /
     A1SA1S1_63 (7, 8, 9) /
     A1SA1S1_64 (7, 8, 9) /
     A1SA1S1_65 (7, 8, 9) /
     A1SA1S1_66 (7, 8, 9) /
     A1SA1S1_67 (7, 8, 9) /
     A1SA1S1_68 (7, 8, 9) /
     A1SA1S1_69 (7, 8, 9) /
     A1SA1S1_70 (7, 8, 9) /
     A1SA1S1_71 (7, 8, 9) /
     A1SA1S1_72 (7, 8, 9) /
     A1SA1S1_73 (7, 8, 9) /
     A1SA1S1_74 (7, 8, 9) /
     A1SA1S1_75 (7, 8, 9) /
     A1SA1S1_76 (7, 8, 9) /
     A1SA1S1_77 (7, 8, 9) /
     A1SS2 (97, 98, 99) /
     A1SS3 (7, 8, 9) /
     A1SS4 (7, 8, 9) /
     A1SS5 (7, 8, 9) /
     A1SS6_1 (7, 8, 9) /
     A1SS6_2 (7, 8, 9) /
     A1SS6_3 (7, 8, 9) /
     A1SS6_4 (7, 8, 9) /
     A1SS6_5 (7, 8, 9) /
     A1SS7 (7, 8, 9) /
     A1SS8 (7, 8, 9) /
     A1SS9 (7, 8, 9) /
     A1SS10 (7, 8, 9) /
     A1SS11 (7, 8, 9) /
     A1SS12 (7, 8, 9) /
     A1SS13A (998) /
     A1SS13B (97, 98, 99) /
     A1SS13C (998) /
     A1SS13D (997, 998, 999) /
     A1SS13E (98) /
     A1SS13F (97, 98, 99) /
     A1SS13G (97, 98, 99) /
     A1SS13H (998) /
     A1SS13I (998) /
     A1SS13J (997, 998, 999) /
     A1SS13K (998) /
     A1SS14A (7, 8, 9) /
     A1SS14B (7, 8, 9) /
     A1SS14C (7, 8, 9) /
     A1SS14D (7, 8, 9) /
     A1SS14E (7, 8, 9) /
     A1SS14F (7, 8, 9) /
     A1SS14G (7, 8, 9) /
     A1SS14H (7, 8, 9) /
     A1SS14I (7, 8, 9) /
     A1SDISCR (7, 8, 9) /
     A1SS15_1 (7, 8, 9) /
     A1SS15_2 (7, 8, 9) /
     A1SS15_3 (7, 8, 9) /
     A1SS15_4 (7, 8, 9) /
     A1SS15_5 (7, 8, 9) /
     A1SS15_6 (7, 8, 9) /
     A1SS15_7 (7, 8, 9) /
     A1SS15_8 (7, 8, 9) /
     A1SS15_9 (7, 8, 9) /
     A1SS15_10 (7, 8, 9) /
     A1SS16 (7, 8, 9) /
     A1SS17 (7, 8, 9) /
     A1ST1 (97, 98, 99) /
     A1ST2 (97, 98, 99) /
     A1ST3 (97, 98, 99) /
     A1ST4 (97, 98, 99) /
     A1ST5 (97, 98, 99) /
     A1SSATIS (99.000) /
   .

EXECUTE.

* Create SPSS system file.

*SAVE OUTFILE="spss-filename.sav".
