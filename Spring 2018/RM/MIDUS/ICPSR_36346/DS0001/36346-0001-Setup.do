/**************************************************************************
 |                                                                         
 |                    STATA SETUP FILE FOR ICPSR 36346
 |      NATIONAL SURVEY OF MIDLIFE DEVELOPMENT IN THE UNITED STATES
 |                          (MIDUS 3), 2013-2014
 |                     (DATASET 0001: AGGREGATE DATA)
 |
 |
 |  Please edit this file as instructed below.
 |  To execute, start Stata, change to the directory containing:
 |       - this do file
 |       - the ASCII data file
 |       - the dictionary file
 |
 |  Then execute the do file (e.g., do 36346-0001-statasetup.do)
 |
 **************************************************************************/


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


/********************************************************************

 Section 3: Reformat

  This section applies optimized formats to variables.

*********************************************************************/

format M2ID %5.0f
format M2FAMNUM %6.0f
format SAMPLMAJ %2.0f
format C1STATUS %1.0f
format C1PRAGE %2.0f
format C1PBYEAR %4.0f
format C1PRSEX %1.0f
format C1PIDATE_MO %2.0f
format C1PIDATE_YR %4.0f
format C1PAA1 %1.0f
format C1PAA2A %1.0f
format C1PAA2B %1.0f
format C1PAA2C %1.0f
format C1PAA2D %1.0f
format C1PAA2E %1.0f
format C1PAA2F %1.0f
format C1PAA2G %1.0f
format C1PAA2H %1.0f
format C1PAA2I %1.0f
format C1PAA2I1 %9.0f
format C1PAA2J %1.0f
format C1PAA2J1 %9.0f
format C1PAA2K %1.0f
format C1PAA2K1 %9.0f
format C1PAA2L %1.0f
format C1PAA2L2 %9.0f
format C1PAA2M %1.0f
format C1PAA2N %1.0f
format C1PAA2O %1.0f
format C1PAA2P %1.0f
format C1PAA2Q %1.0f
format C1PAA2R %1.0f
format C1PAA2S %1.0f
format C1PAA2T %1.0f
format C1PAA2U %1.0f
format C1PAA2V %1.0f
format C1PAA2W %1.0f
format C1PAA2X %1.0f
format C1PAA2Y %1.0f
format C1PAA2Z %1.0f
format C1PAA3 %1.0f
format C1PAA3A %1.0f
format C1PAA4 %1.0f
format C1PAA5 %1.0f
format C1PAA6 %1.0f
format C1PAA7 %1.0f
format C1PAA8 %1.0f
format C1PA1 %1.0f
format C1PA2 %1.0f
format C1PA3 %1.0f
format C1PA4 %2.0f
format C1PA4A %1.0f
format C1PA4BA %2.0f
format C1PA4BB %2.0f
format C1PA4BC %2.0f
format C1PA5 %2.0f
format C1PA5A %1.0f
format C1PA5BA %2.0f
format C1PA5BB %2.0f
format C1PA5BC %2.0f
format C1PA6A %1.0f
format C1PA6B %1.0f
format C1PA6C %1.0f
format C1PA6D %1.0f
format C1PA7 %1.0f
format C1PA7A %2.0f
format C1PA7BA %2.0f
format C1PA7BB %2.0f
format C1PA7BC %2.0f
format C1PA7BD %2.0f
format C1PA7BE %2.0f
format C1PA7BF %2.0f
format C1PA7BG %2.0f
format C1PA7BH %2.0f
format C1PA7BI %2.0f
format C1PA7BJ %2.0f
format C1PA7C %1.0f
format C1PA7D %1.0f
format C1PA8 %1.0f
format C1PA8A %4.0f
format C1PA9 %1.0f
format C1PA9A %1.0f
format C1PA9B %1.0f
format C1PHRTRS %1.0f
format C1PHRTDX %1.0f
format C1PA10A %1.0f
format C1PA10B %1.0f
format C1PA10C %1.0f
format C1PA10D %1.0f
format C1PA10E %1.0f
format C1PA10F %1.0f
format C1PA10G %1.0f
format C1PA10H %1.0f
format C1PA11 %1.0f
format C1PA12 %1.0f
format C1PA13 %1.0f
format C1PA14 %1.0f
format C1PA15 %1.0f
format C1PA16 %1.0f
format C1PA17 %1.0f
format C1PA18 %1.0f
format C1PA19 %1.0f
format C1PA20 %1.0f
format C1PA21 %1.0f
format C1PA22 %1.0f
format C1PANGIN %1.0f
format C1PA23 %1.0f
format C1PA23A %2.0f
format C1PA23B %1.0f
format C1PA23CA %2.0f
format C1PA23CB %2.0f
format C1PA23CC %2.0f
format C1PA23CD %2.0f
format C1PA23CE %2.0f
format C1PA23CF %2.0f
format C1PA23CG %2.0f
format C1PA23CH %2.0f
format C1PA23CI %2.0f
format C1PA23CJ %2.0f
format C1PA24 %1.0f
format C1PA24A %2.0f
format C1PA24B %1.0f
format C1PA24C %1.0f
format C1PA24D %1.0f
format C1PA24EA %1.0f
format C1PA24EB %1.0f
format C1PA24EC %1.0f
format C1PA24ED %1.0f
format C1PA24EE %1.0f
format C1PA24EF %1.0f
format C1PA25NM %2.0f
format C1PA25IN %1.0f
format C1PA25A %1.0f
format C1PA25BS %3.0f
format C1PA25BD %3.0f
format C1PA26 %1.0f
format C1PA27 %1.0f
format C1PA27A %1.0f
format C1PA27B %1.0f
format C1PCACRS %1.0f
format C1PCACDX %1.0f
format C1PA28A %1.0f
format C1PA28B %1.0f
format C1PA28C %1.0f
format C1PA28D %1.0f
format C1PA28E %1.0f
format C1PA28F %1.0f
format C1PA28G %1.0f
format C1PA28H %1.0f
format C1PA28I %1.0f
format C1PA28J %1.0f
format C1PA28AA %2.0f
format C1PA28BB %2.0f
format C1PA28CC %2.0f
format C1PA28DD %2.0f
format C1PA28EE %2.0f
format C1PA28FF %2.0f
format C1PA28GG %2.0f
format C1PA28HH %2.0f
format C1PA28II %2.0f
format C1PA28JJ %2.0f
format C1PA29 %1.0f
format C1PA29AA %1.0f
format C1PA29AB %1.0f
format C1PA29AC %1.0f
format C1PA29AD %1.0f
format C1PA29AE %1.0f
format C1PA29AF %1.0f
format C1PA29AG %1.0f
format C1PA29AH %1.0f
format C1PA29AI %1.0f
format C1PA30A %1.0f
format C1PA30B %1.0f
format C1PA30C %1.0f
format C1PA30D %1.0f
format C1PA30E %1.0f
format C1PA30F %1.0f
format C1PA31A %1.0f
format C1PA31B %1.0f
format C1PA31C %1.0f
format C1PA31D %1.0f
format C1PA31E %1.0f
format C1PA31F %1.0f
format C1PA31H %1.0f
format C1PA31I %1.0f
format C1PA31J %1.0f
format C1PA32A %1.0f
format C1PA32C %1.0f
format C1PA32D %1.0f
format C1PA32E %1.0f
format C1PA32G %1.0f
format C1PA32H %1.0f
format C1PA32J %1.0f
format C1PA33A %1.0f
format C1PA33C %1.0f
format C1PA33D %1.0f
format C1PA33E %1.0f
format C1PA33G %1.0f
format C1PA33H %1.0f
format C1PA33J %1.0f
format C1PA34A %1.0f
format C1PA34B %1.0f
format C1PA34C %1.0f
format C1PA34D %1.0f
format C1PA34E %1.0f
format C1PA34F %1.0f
format C1PA34H %1.0f
format C1PA34I %1.0f
format C1PA34J %1.0f
format C1PA35A %1.0f
format C1PA35B %1.0f
format C1PA35C %1.0f
format C1PA35D %1.0f
format C1PA35E %1.0f
format C1PA35F %1.0f
format C1PA35G %1.0f
format C1PA35H %1.0f
format C1PA35I %1.0f
format C1PA35J %1.0f
format C1PA36A %1.0f
format C1PA36AM %2.0f
format C1PA36AY %4.0f
format C1PA36B %1.0f
format C1PA36C %1.0f
format C1PA36DM %2.0f
format C1PA36DY %4.0f
format C1PA36EM %2.0f
format C1PA36EY %4.0f
format C1PA37 %2.0f
format C1PA38A %1.0f
format C1PA38B %2.0f
format C1PA39 %1.0f
format C1PA40 %2.0f
format C1PA41 %1.0f
format C1PA42 %2.0f
format C1PA43 %2.0f
format C1PA44 %1.0f
format C1PA46 %1.0f
format C1PA48 %1.0f
format C1PA47 %1.0f
format C1PA49 %2.0f
format C1PA50 %1.0f
format C1PA51 %1.0f
format C1PA51A %1.0f
format C1PA52 %2.0f
format C1PA53 %2.0f
format C1PA54 %1.0f
format C1PA54A %1.0f
format C1PA55 %4.1f
format C1PA56 %2.0f
format C1PA57 %2.0f
format C1PA59 %1.0f
format C1PA60 %1.0f
format C1PA61 %1.0f
format C1PA62 %1.0f
format C1PA63 %1.0f
format C1PA64 %1.0f
format C1PA65 %1.0f
format C1PA65A %1.0f
format C1PA66 %1.0f
format C1PA66A %1.0f
format C1PA67 %1.0f
format C1PA68 %1.0f
format C1PA69 %1.0f
format C1PA70 %2.0f
format C1PA71MO %2.0f
format C1PA71YR %4.0f
format C1PDEPAF %1.0f
format C1PDEPAD %1.0f
format C1PA72 %1.0f
format C1PA73 %1.0f
format C1PA74 %1.0f
format C1PA75 %1.0f
format C1PA76 %1.0f
format C1PA76A %1.0f
format C1PA77 %1.0f
format C1PA77A %1.0f
format C1PA78 %1.0f
format C1PA79 %1.0f
format C1PA80 %1.0f
format C1PA81 %2.0f
format C1PA82MO %2.0f
format C1PA82YR %4.0f
format C1PANHED %1.0f
format C1PANHDX %1.0f
format C1PDEPRE %1.0f
format C1PDEPDX %1.0f
format C1PA83 %1.0f
format C1PA83A %1.0f
format C1PA84 %1.0f
format C1PA84A %1.0f
format C1PA85 %1.0f
format C1PA85A %1.0f
format C1PA86 %1.0f
format C1PA86A %1.0f
format C1PA87 %1.0f
format C1PA87A %1.0f
format C1PA88A %1.0f
format C1PA88B %1.0f
format C1PA88C %1.0f
format C1PA88D %1.0f
format C1PA88E %1.0f
format C1PA88F %1.0f
format C1PA88G %1.0f
format C1PA88H %1.0f
format C1PA88I %1.0f
format C1PA88J %1.0f
format C1PA89 %1.0f
format C1PANXIE %2.0f
format C1PANXTD %1.0f
format C1PA90 %1.0f
format C1PA90A %1.0f
format C1PA91 %3.0f
format C1PA92 %1.0f
format C1PA92A %1.0f
format C1PA92B %1.0f
format C1PA92C %1.0f
format C1PA92D %1.0f
format C1PA92E %1.0f
format C1PA92F %1.0f
format C1PPANIC %1.0f
format C1PPANDX %1.0f
format C1PB1 %2.0f
format C1PB2 %2.0f
format C1PB2A1 %1.0f
format C1PB2A2 %1.0f
format C1PB2A3 %1.0f
format C1PB2A4 %1.0f
format C1PB2A5 %1.0f
format C1PB2A6 %1.0f
format C1PB2A7 %1.0f
format C1PB2A8 %1.0f
format C1PB2A9 %1.0f
format C1PB2A10 %1.0f
format C1PB2A11 %1.0f
format C1PB2AWK %2.0f
format C1PB2AA %1.0f
format C1PB2B %1.0f
format C1PB2BM %2.0f
format C1PB2BY %4.0f
format C1PB2BBA %1.0f
format C1PB2BBB %1.0f
format C1PB2BBC %1.0f
format C1PB2BBD %1.0f
format C1PB2BBE %1.0f
format C1PB2BBF %1.0f
format C1PB2BBG %1.0f
format C1PB2BCN %3.0f
format C1PB2BCU %1.0f
format C1PB2BDN %3.0f
format C1PB2BDU %1.0f
format C1PB2CA %1.0f
format C1PB2CB %3.0f
format C1PB2CB10 %1.0f
format C1PB2CB25 %1.0f
format C1PB2C2 %3.0f
format C1PB2DN %3.0f
format C1PB2DU %1.0f
format C1PB3A %1.0f
format C1PB3B %1.0f
format C1PB3C %1.0f
format C1PB3D %1.0f
format C1PB3E %1.0f
format C1PB3F %1.0f
format C1PB3G %1.0f
format C1PB3H %1.0f
format C1PB3I %1.0f
format C1PB3J %1.0f
format C1PB3K %1.0f
format C1PB3WK %2.0f
format C1PB4N %3.0f
format C1PB4U %1.0f
format C1PB5A %1.0f
format C1PB5B %1.0f
format C1PB5C %1.0f
format C1PB5D %1.0f
format C1PB5E %1.0f
format C1PB5F %1.0f
format C1PB5G %1.0f
format C1PB5 %2.0f
format C1PB5AB %1.0f
format C1PB6 %1.0f
format C1PB7 %1.0f
format C1PB7A %3.0f
format C1PB8A %1.0f
format C1PB8A1 %1.0f
format C1PB8C %1.0f
format C1POCC %4.0f
format C1PIND %4.0f
format C1POCMAJ %2.0f
format C1PINDMJ %2.0f
format C1PB12 %3.0f
format C1PB12A %3.0f
format C1PB13 %3.0f
format C1PB14 %1.0f
format C1PB14A %3.0f
format C1PB15A %1.0f
format C1PB15A1 %1.0f
format C1PB15C %1.0f
format C1POCCP %4.0f
format C1PINDP %4.0f
format C1POCPMJ %2.0f
format C1PPINMJ %2.0f
format C1PB16 %8.0f
format C1PB16A25 %1.0f
format C1PB16A50 %1.0f
format C1PB16A80 %1.0f
format C1PB16A35 %1.0f
format C1PB16A12 %1.0f
format C1PB16A18 %1.0f
format C1PB16A5 %1.0f
format C1PB17A %1.0f
format C1PB17B %3.0f
format C1PB17B10 %1.0f
format C1PB17B25 %1.0f
format C1PB17B5 %1.0f
format C1PB19 %1.0f
format C1PB20 %2.0f
format C1PB21M %2.0f
format C1PB21Y %4.0f
format C1PB22 %1.0f
format C1PB23M %2.0f
format C1PB23Y %4.0f
format C1PB24M %2.0f
format C1PB24Y %4.0f
format C1PB25M %2.0f
format C1PB25Y %4.0f
format C1PB26M %2.0f
format C1PB26Y %4.0f
format C1PB27M %2.0f
format C1PB27Y %4.0f
format C1PB28M %2.0f
format C1PB28Y %4.0f
format C1PB29M %2.0f
format C1PB29Y %4.0f
format C1PB30 %1.0f
format C1PB31N %3.0f
format C1PB31M %1.0f
format C1PPARTN %1.0f
format C1PB32A %1.0f
format C1PB32Y %4.0f
format C1PSAGE %3.0f
format C1PB33 %2.0f
format C1PB33AA %1.0f
format C1PB33AB %1.0f
format C1PB33AC %1.0f
format C1PB33AD %1.0f
format C1PB33AE %1.0f
format C1PB33AF %1.0f
format C1PB33AG %1.0f
format C1PB33AH %1.0f
format C1PB33AI %1.0f
format C1PB33AJ %1.0f
format C1PB33AK %1.0f
format C1PB33AWK %2.0f
format C1PB33A1 %1.0f
format C1PB33B %1.0f
format C1PB33BAM %2.0f
format C1PB33BAY %4.0f
format C1PB33BBA %1.0f
format C1PB33BBB %1.0f
format C1PB33BBC %1.0f
format C1PB33BBD %1.0f
format C1PB33BBE %1.0f
format C1PB33BBF %1.0f
format C1PB33BBG %1.0f
format C1PB33BCN %3.0f
format C1PB33BCU %1.0f
format C1PB33BDN %3.0f
format C1PB33BDU %1.0f
format C1PB33CA %1.0f
format C1PB33CB %3.0f
format C1PB33CB10 %1.0f
format C1PB33CB25 %1.0f
format C1PB33C2 %3.0f
format C1PB33DN %3.0f
format C1PB33DU %1.0f
format C1PB34A %1.0f
format C1PB34B %1.0f
format C1PB34C %1.0f
format C1PB34D %1.0f
format C1PB34E %1.0f
format C1PB34F %1.0f
format C1PB34G %1.0f
format C1PB34H %1.0f
format C1PB34I %1.0f
format C1PB34J %1.0f
format C1PB34K %1.0f
format C1PB34WK %2.0f
format C1PB35N %3.0f
format C1PB35U %1.0f
format C1PB36A %1.0f
format C1PB36B %1.0f
format C1PB36C %1.0f
format C1PB36D %1.0f
format C1PB36E %1.0f
format C1PB36F %1.0f
format C1PB36G %1.0f
format C1PB36 %2.0f
format C1PB36A1 %1.0f
format C1PB37 %1.0f
format C1PB38 %1.0f
format C1PB39A %1.0f
format C1PB39A1 %1.0f
format C1PB39C %1.0f
format C1POCCS %4.0f
format C1PINDS %4.0f
format C1PSOCMJ %2.0f
format C1PSINMJ %2.0f
format C1PB40 %8.0f
format C1PB40A25 %1.0f
format C1PB40A50 %1.0f
format C1PB40A80 %1.0f
format C1PB40A35 %1.0f
format C1PB40A12 %1.0f
format C1PB40A18 %1.0f
format C1PB40A5 %1.0f
format C1PB41A %1.0f
format C1PB41B %3.0f
format C1PB41B10 %1.0f
format C1PB41B25 %1.0f
format C1PB41B5 %1.0f
format C1PC1 %1.0f
format C1PC2 %2.0f
format C1PC2A %2.0f
format C1PC3 %1.0f
format C1PC4 %2.0f
format C1PKHSIZ %2.0f
format C1PKIDHH %2.0f
format C1PHHSIZE %2.0f
format C1PC6 %1.0f
format C1PCHA1 %3.0f
format C1PCHX1 %1.0f
format C1PCHR1 %2.0f
format C1PCMB1 %2.0f
format C1PCYB1 %4.0f
format C1PHHA1 %3.0f
format C1PCHC1 %1.0f
format C1PCHH1 %1.0f
format C1PCDD1 %1.0f
format C1PCDT1 %3.0f
format C1PCDP1 %1.0f
format C1PCDA1 %2.0f
format C1PCDX1 %1.0f
format C1PCXT1 %1.0f
format C1PCDO1 %1.0f
format C1PCHA2 %3.0f
format C1PCHX2 %1.0f
format C1PCHR2 %2.0f
format C1PCMB2 %2.0f
format C1PCYB2 %4.0f
format C1PHHA2 %3.0f
format C1PCHC2 %1.0f
format C1PCHH2 %1.0f
format C1PCDD2 %1.0f
format C1PCDT2 %3.0f
format C1PCDP2 %1.0f
format C1PCDA2 %2.0f
format C1PCDX2 %1.0f
format C1PCXT2 %1.0f
format C1PCDO2 %1.0f
format C1PCHA3 %3.0f
format C1PCHX3 %1.0f
format C1PCHR3 %2.0f
format C1PCMB3 %2.0f
format C1PCYB3 %4.0f
format C1PHHA3 %3.0f
format C1PCHC3 %1.0f
format C1PCHH3 %1.0f
format C1PCDD3 %1.0f
format C1PCDT3 %3.0f
format C1PCDP3 %1.0f
format C1PCDA3 %2.0f
format C1PCDX3 %1.0f
format C1PCXT3 %1.0f
format C1PCDO3 %1.0f
format C1PCHA4 %3.0f
format C1PCHX4 %1.0f
format C1PCHR4 %2.0f
format C1PCMB4 %2.0f
format C1PCYB4 %4.0f
format C1PHHA4 %3.0f
format C1PCHC4 %1.0f
format C1PCHH4 %1.0f
format C1PCDD4 %1.0f
format C1PCDT4 %3.0f
format C1PCDP4 %1.0f
format C1PCDA4 %2.0f
format C1PCDX4 %1.0f
format C1PCXT4 %1.0f
format C1PCDO4 %1.0f
format C1PCHA5 %3.0f
format C1PCHX5 %1.0f
format C1PCHR5 %2.0f
format C1PCMB5 %2.0f
format C1PCYB5 %4.0f
format C1PHHA5 %3.0f
format C1PCHC5 %1.0f
format C1PCHH5 %1.0f
format C1PCDD5 %1.0f
format C1PCDT5 %3.0f
format C1PCDP5 %1.0f
format C1PCDA5 %2.0f
format C1PCDX5 %1.0f
format C1PCDO5 %1.0f
format C1PCHA6 %3.0f
format C1PCHX6 %1.0f
format C1PCHR6 %2.0f
format C1PCMB6 %2.0f
format C1PCYB6 %4.0f
format C1PHHA6 %3.0f
format C1PCHC6 %1.0f
format C1PCHH6 %1.0f
format C1PCDD6 %1.0f
format C1PCDT6 %3.0f
format C1PCDA6 %2.0f
format C1PCDX6 %1.0f
format C1PCDO6 %1.0f
format C1PCHA7 %3.0f
format C1PCHX7 %1.0f
format C1PCHR7 %2.0f
format C1PCMB7 %2.0f
format C1PCYB7 %4.0f
format C1PHHA7 %3.0f
format C1PCHC7 %1.0f
format C1PCHH7 %1.0f
format C1PCDD7 %1.0f
format C1PCDT7 %3.0f
format C1PCDA7 %2.0f
format C1PCDO7 %1.0f
format C1PCHA8 %3.0f
format C1PCHX8 %1.0f
format C1PCHR8 %2.0f
format C1PCMB8 %2.0f
format C1PCYB8 %4.0f
format C1PHHA8 %3.0f
format C1PCHC8 %1.0f
format C1PCHH8 %1.0f
format C1PCDD8 %1.0f
format C1PCDT8 %3.0f
format C1PCDA8 %2.0f
format C1PCDO8 %1.0f
format C1PCHA9 %3.0f
format C1PCHX9 %1.0f
format C1PCHR9 %2.0f
format C1PCMB9 %2.0f
format C1PCYB9 %4.0f
format C1PHHA9 %3.0f
format C1PCHH9 %1.0f
format C1PCDD9 %1.0f
format C1PCDT9 %3.0f
format C1PCDA9 %2.0f
format C1PCDO9 %1.0f
format C1PCHA10 %3.0f
format C1PCHX10 %1.0f
format C1PCHR10 %2.0f
format C1PCMB10 %2.0f
format C1PCYB10 %4.0f
format C1PCHH10 %1.0f
format C1PCDD10 %1.0f
format C1PCHA11 %3.0f
format C1PCHX11 %1.0f
format C1PCHR11 %2.0f
format C1PCMB11 %2.0f
format C1PCYB11 %4.0f
format C1PCHH11 %1.0f
format C1PCDD11 %1.0f
format C1PCDT11 %3.0f
format C1PCDA11 %2.0f
format C1PCDO11 %1.0f
format C1PCHA12 %3.0f
format C1PCHX12 %1.0f
format C1PCHR12 %2.0f
format C1PCMB12 %2.0f
format C1PCYB12 %4.0f
format C1PCHH12 %1.0f
format C1PCDD12 %1.0f
format C1PCHA13 %3.0f
format C1PCHX13 %1.0f
format C1PCHR13 %2.0f
format C1PCMB13 %2.0f
format C1PCYB13 %4.0f
format C1PCHH13 %1.0f
format C1PCDD13 %1.0f
format C1PCHA14 %3.0f
format C1PCHX14 %1.0f
format C1PCHR14 %2.0f
format C1PCMB14 %2.0f
format C1PCYB14 %4.0f
format C1PCHH14 %1.0f
format C1PCDD14 %1.0f
format C1PCHA15 %3.0f
format C1PCHX15 %1.0f
format C1PCHR15 %2.0f
format C1PCMB15 %2.0f
format C1PCYB15 %4.0f
format C1PCHH15 %1.0f
format C1PCDD15 %1.0f
format C1PCHA16 %3.0f
format C1PCHX16 %1.0f
format C1PCHR16 %2.0f
format C1PCMB16 %2.0f
format C1PCYB16 %4.0f
format C1PCHH16 %1.0f
format C1PCDD16 %1.0f
format C1PCHA17 %3.0f
format C1PCHX17 %1.0f
format C1PCHR17 %2.0f
format C1PCMB17 %2.0f
format C1PCYB17 %4.0f
format C1PCHH17 %1.0f
format C1PCDD17 %1.0f
format C1PCHA18 %3.0f
format C1PCHX18 %1.0f
format C1PCHR18 %2.0f
format C1PCMB18 %2.0f
format C1PCYB18 %4.0f
format C1PCHH18 %1.0f
format C1PCDD18 %1.0f
format C1PCHA19 %3.0f
format C1PCHX19 %1.0f
format C1PCHR19 %2.0f
format C1PCMB19 %2.0f
format C1PCYB19 %4.0f
format C1PCHH19 %1.0f
format C1PCDD19 %1.0f
format C1PCHA20 %3.0f
format C1PCHX20 %1.0f
format C1PCHR20 %2.0f
format C1PCMB20 %2.0f
format C1PCYB20 %4.0f
format C1PCHH20 %1.0f
format C1PCDD20 %1.0f
format C1PCHA21 %3.0f
format C1PCHX21 %1.0f
format C1PCHR21 %2.0f
format C1PCMB21 %2.0f
format C1PCYB21 %4.0f
format C1PCHH21 %1.0f
format C1PCDD21 %1.0f
format C1PCHA22 %3.0f
format C1PCHX22 %1.0f
format C1PCHR22 %2.0f
format C1PCMB22 %2.0f
format C1PCYB22 %4.0f
format C1PCHH22 %1.0f
format C1PCDD22 %1.0f
format C1PCHA23 %3.0f
format C1PCHX23 %1.0f
format C1PCHR23 %2.0f
format C1PCHX24 %1.0f
format C1PCHR24 %2.0f
format C1PCHA25 %3.0f
format C1PCHX25 %1.0f
format C1PCHR25 %2.0f
format C1PCHA26 %3.0f
format C1PCHX26 %1.0f
format C1PCHR26 %2.0f
format C1PCHA27 %3.0f
format C1PCHX27 %1.0f
format C1PCHR27 %2.0f
format C1PCHA28 %3.0f
format C1PCHX28 %1.0f
format C1PCHR28 %2.0f
format C1PCHA29 %3.0f
format C1PCHX29 %1.0f
format C1PCHR29 %2.0f
format C1PCHM1N %1.0f
format C1PCHM2N %1.0f
format C1PCHM1X %1.0f
format C1PCHM2X %1.0f
format C1PD1 %1.0f
format C1PD2 %2.0f
format C1PD3 %1.0f
format C1PD4 %1.0f
format C1PD5M %2.0f
format C1PD5Y %4.0f
format C1PD7 %1.0f
format C1PD8A %1.0f
format C1PD8B %1.0f
format C1PD9 %1.0f
format C1PD10 %1.0f
format C1PD11 %1.0f
format C1PD12 %1.0f
format C1PD13 %1.0f
format C1PD14 %2.0f
format C1PD15 %2.0f
format C1PD16 %1.0f
format C1PD17 %1.0f
format C1PD18 %3.0f
format C1PD19N %2.0f
format C1PD19M %1.0f
format C1PD20 %1.0f
format C1PD21 %1.0f
format C1PD22 %2.0f
format C1PE1 %1.0f
format C1PE1A1 %1.0f
format C1PE1A2 %1.0f
format C1PE1A3 %1.0f
format C1PE1A4 %1.0f
format C1PE1A5 %1.0f
format C1PE1A6 %1.0f
format C1PE1A7 %1.0f
format C1PE1BN %3.0f
format C1PE1BM %1.0f
format C1PE2 %1.0f
format C1PE2AN %3.0f
format C1PE2AM %1.0f
format C1PE3 %1.0f
format C1PE3AN %3.0f
format C1PE3AM %1.0f
format C1PF1 %2.0f
format C1PF2A %2.0f
format C1PF2B %2.0f
format C1PF2C %2.0f
format C1PF2_1 %1.0f
format C1PF2_3 %1.0f
format C1PF2_4 %1.0f
format C1PF2_5 %1.0f
format C1PF2_6 %1.0f
format C1PF2_7 %1.0f
format C1PF2_9 %1.0f
format C1PF2_10 %1.0f
format C1PF2_11 %1.0f
format C1PF2_12 %1.0f
format C1PF2_13 %1.0f
format C1PF2_14 %1.0f
format C1PF2_15 %1.0f
format C1PF2_17 %1.0f
format C1PF2_18 %1.0f
format C1PF2_22 %1.0f
format C1PF2_24 %1.0f
format C1PF2_30 %1.0f
format C1PF2_31 %1.0f
format C1PF2_32 %1.0f
format C1PF2_33 %1.0f
format C1PF2_34 %1.0f
format C1PF2_35 %1.0f
format C1PF2_36 %1.0f
format C1PF2_37 %1.0f
format C1PF2_38 %1.0f
format C1PF2_39 %1.0f
format C1PF2_40 %1.0f
format C1PF2_41 %1.0f
format C1PF2_42 %1.0f
format C1PF2_43 %1.0f
format C1PF2_44 %1.0f
format C1PF2_45 %1.0f
format C1PF2_46 %1.0f
format C1PF2_47 %1.0f
format C1PF2_48 %1.0f
format C1PF2_50 %1.0f
format C1PF2_51 %1.0f
format C1PF2_52 %1.0f
format C1PF2_53 %1.0f
format C1PF2_54 %1.0f
format C1PF2_56 %1.0f
format C1PF2_57 %1.0f
format C1PF2_58 %1.0f
format C1PF2_66 %1.0f
format C1PF2_69 %1.0f
format C1PF2_70 %1.0f
format C1PF2_71 %1.0f
format C1PF2_74 %1.0f
format C1PF2_96 %1.0f
format C1PF3 %1.0f
format C1PF3_1 %2.0f
format C1PF4 %1.0f
format C1PF5 %1.0f
format C1PF6 %1.0f
format C1PF7A %1.0f
format C1PF7B %1.0f
format C1PF7C %1.0f
format C1PF7D %1.0f
format C1PF8A %1.0f
format C1PF8B %1.0f
format C1PF8C %1.0f
format C1PF8A1 %1.0f
format C1PF9 %1.0f
format C1PF10 %1.0f
format C1PF11 %1.0f
format C1PF12 %1.0f
format C1PF12A %1.0f
format C1PF12B %1.0f
format C1PG1 %1.0f
format C1PG1A %1.0f
format C1PG2 %1.0f
format C1PG3 %1.0f
format C1PG4 %1.0f
format C1PG5 %1.0f
format C1PG5A %1.0f
format C1PG6 %1.0f
format C1PG7 %1.0f
format C1PG8 %1.0f
format C1PG9 %1.0f
format C1SA1 %2.0f
format C1SA2 %2.0f
format C1SA3 %2.0f
format C1SA4 %2.0f
format C1SA5 %2.0f
format C1SSATIS %15.12f
format C1SSATIS2 %15.12f
format C1SA6A %2.0f
format C1SA6B %2.0f
format C1SA6C %2.0f
format C1SA6D %2.0f
format C1SA6E %2.0f
format C1SA7A %2.0f
format C1SA7B %2.0f
format C1SA7C %2.0f
format C1SA7D %2.0f
format C1SA8A %2.0f
format C1SA8B %2.0f
format C1SA8C %2.0f
format C1SA8D %2.0f
format C1SA8E %2.0f
format C1SA8F %2.0f
format C1SHLOCS %15.12f
format C1SHLOCO %4.1f
format C1SA9A %2.0f
format C1SA9B %2.0f
format C1SA9C %2.0f
format C1SA9D %2.0f
format C1SA9E %2.0f
format C1SAMPLI %15.12f
format C1SA10A %2.0f
format C1SA10B %2.0f
format C1SA10C %2.0f
format C1SA10D %2.0f
format C1SA10E %2.0f
format C1SA10F %2.0f
format C1SA10G %2.0f
format C1SA10H %2.0f
format C1SA10I %2.0f
format C1SA10J %2.0f
format C1SA11A %2.0f
format C1SA11B %2.0f
format C1SA11C %2.0f
format C1SA11D %2.0f
format C1SA11E %2.0f
format C1SA11F %2.0f
format C1SA11G %2.0f
format C1SA11H %2.0f
format C1SA11I %2.0f
format C1SA11J %2.0f
format C1SA11K %2.0f
format C1SA11L %2.0f
format C1SA11M %2.0f
format C1SA11N %2.0f
format C1SA11O %2.0f
format C1SA11P %2.0f
format C1SA11Q %2.0f
format C1SA11R %2.0f
format C1SA11S %2.0f
format C1SA11T %2.0f
format C1SA11U %2.0f
format C1SA11V %2.0f
format C1SA11W %2.0f
format C1SA11X %2.0f
format C1SA11Y %2.0f
format C1SA11Z %2.0f
format C1SA11AA %2.0f
format C1SA11BB %2.0f
format C1SA11CC %2.0f
format C1SA11DD %2.0f
format C1SA11EE %2.0f
format C1SA11FF %2.0f
format C1SA11GG %2.0f
format C1SA11HH %2.0f
format C1SA11II %2.0f
format C1SA11JJ %2.0f
format C1SA11KK %2.0f
format C1SA11LL %2.0f
format C1SA11MM %2.0f
format C1SA11NN %2.0f
format C1SCHROX %2.0f
format C1SCHRON %2.0f
format C1SA12A %2.0f
format C1SA12B %2.0f
format C1SA12C %2.0f
format C1SA12D %2.0f
format C1SA12E %2.0f
format C1SA12F %2.0f
format C1SA12G %2.0f
format C1SA12H %2.0f
format C1SA12I %2.0f
format C1SA12J %2.0f
format C1SA12K %2.0f
format C1SA12L %2.0f
format C1SRXMEX %2.0f
format C1SRXMED %2.0f
format C1SA13A %2.0f
format C1SA13B %2.0f
format C1SA13C %2.0f
format C1SA13D %2.0f
format C1SA14A %2.0f
format C1SA14B %2.0f
format C1SA14C %2.0f
format C1SA14D %2.0f
format C1SA14E %2.0f
format C1SA14F %2.0f
format C1SA14G %2.0f
format C1SA14H %2.0f
format C1SA14I %2.0f
format C1SA14J %2.0f
format C1SA14K %2.0f
format C1SA14L %2.0f
format C1SA14M %2.0f
format C1SA14N %2.0f
format C1SA14O %2.0f
format C1SA14P %2.0f
format C1SSPLMX %2.0f
format C1SSPLMN %2.0f
format C1SA15 %2.0f
format C1SA16A %2.0f
format C1SA16B %2.0f
format C1SA16C %2.0f
format C1SA16D %2.0f
format C1SA16E %2.0f
format C1SA17A %2.0f
format C1SA17B %2.0f
format C1SA17C %2.0f
format C1SA17D %2.0f
format C1SA17E %2.0f
format C1SA17F %2.0f
format C1SA17G %2.0f
format C1SA17H %2.0f
format C1SA17I %2.0f
format C1SA18 %2.0f
format C1SA19 %2.0f
format C1SA20A %2.0f
format C1SA20B %2.0f
format C1SA20C %2.0f
format C1SA20D %2.0f
format C1SA20E %2.0f
format C1SA20F %2.0f
format C1SA20G %2.0f
format C1SA20H %2.0f
format C1SA20I %2.0f
format C1SA20J %2.0f
format C1SA20K %2.0f
format C1SA20L %2.0f
format C1SA20M %2.0f
format C1SA20N %2.0f
format C1SA21 %2.0f
format C1SNEGAF %15.12f
format C1SNEGPA %15.12f
format C1SA22A %2.0f
format C1SA22B %2.0f
format C1SA22C %2.0f
format C1SA22D %2.0f
format C1SA22E %2.0f
format C1SA22F %2.0f
format C1SA22G %2.0f
format C1SA22H %2.0f
format C1SA22I %2.0f
format C1SA22J %2.0f
format C1SA22K %2.0f
format C1SA22L %2.0f
format C1SA22M %2.0f
format C1SA23 %2.0f
format C1SPOSAF %15.12f
format C1SPOSPA %15.12f
format C1SA24A %2.0f
format C1SA24B %2.0f
format C1SA24C %2.0f
format C1SA24D %2.0f
format C1SA24E %2.0f
format C1SA24F %2.0f
format C1SA24G %2.0f
format C1SA24H %2.0f
format C1SA24I %2.0f
format C1SA24J %2.0f
format C1SBADL1 %4.1f
format C1SBADL2 %15.12f
format C1SIADL %15.12f
format C1SA25A %2.0f
format C1SA25B %2.0f
format C1SA25C %2.0f
format C1SA25D %2.0f
format C1SDYSPN %2.0f
format C1SA26A %2.0f
format C1SA26B %2.0f
format C1SA26C %2.0f
format C1SA26D %2.0f
format C1SA26E %2.0f
format C1SA26F %2.0f
format C1SA27A %2.0f
format C1SA27B %2.0f
format C1SA27C %2.0f
format C1SA27D %2.0f
format C1SA27E %2.0f
format C1SA27F %2.0f
format C1SA28A %2.0f
format C1SA28B %2.0f
format C1SA28C %2.0f
format C1SA28D %2.0f
format C1SA28E %2.0f
format C1SA28F %2.0f
format C1SA29A %2.0f
format C1SA29B %2.0f
format C1SA29C %2.0f
format C1SA29D %2.0f
format C1SA29E %2.0f
format C1SA29F %2.0f
format C1SA30A %2.0f
format C1SA30B %2.0f
format C1SA30C %2.0f
format C1SA30D %2.0f
format C1SA30E %2.0f
format C1SA30F %2.0f
format C1SA30G %2.0f
format C1SA30H %2.0f
format C1SA30I %2.0f
format C1SINTAG %15.12f
format C1SA31 %5.2f
format C1SA32 %5.2f
format C1SWSTHI %15.12f
format C1SA33A %2.0f
format C1SA33B %4.1f
format C1SA34 %2.0f
format C1SA35 %3.0f
format C1SBMI %15.12f
format C1SA36 %3.0f
format C1SA37 %3.0f
format C1SA38 %2.0f
format C1SA39 %2.0f
format C1SA39AA %2.0f
format C1SA39AB %2.0f
format C1SA39AC %2.0f
format C1SA40 %2.0f
format C1SA41 %4.0f
format C1SA42 %3.0f
format C1SA43 %3.0f
format C1SA44A %2.0f
format C1SA44B %2.0f
format C1SA44C %2.0f
format C1SA44D %2.0f
format C1SA44E %2.0f
format C1SA44F %2.0f
format C1SA44G %2.0f
format C1SA44H %2.0f
format C1SA45 %2.0f
format C1SA46A %2.0f
format C1SA46B %2.0f
format C1SA46C %2.0f
format C1SA46D %2.0f
format C1SA46E %2.0f
format C1SA46F %2.0f
format C1SA46G %2.0f
format C1SA46H %2.0f
format C1SA47 %2.0f
format C1SA48 %2.0f
format C1SA49A %3.0f
format C1SA49B %3.0f
format C1SA49C %3.0f
format C1SA49D %3.0f
format C1SA49E %3.0f
format C1SUSEMD %3.0f
format C1SA50A %3.0f
format C1SA50B %3.0f
format C1SA50C %3.0f
format C1SA50D %3.0f
format C1SUSEMH %3.0f
format C1SA51A %2.0f
format C1SA51AY %2.0f
format C1SA51AZ %3.0f
format C1SA51B %2.0f
format C1SA51BY %2.0f
format C1SA51BZ %3.0f
format C1SA51C %2.0f
format C1SA51CY %2.0f
format C1SA51CZ %3.0f
format C1SA51D %2.0f
format C1SA51DY %2.0f
format C1SA51DZ %3.0f
format C1SA51E %2.0f
format C1SA51EY %2.0f
format C1SA51EZ %3.0f
format C1SA51F %2.0f
format C1SA51FY %2.0f
format C1SA51FZ %3.0f
format C1SA51G %2.0f
format C1SA51GY %2.0f
format C1SA51GZ %3.0f
format C1SA51H %2.0f
format C1SA51HY %2.0f
format C1SA51HZ %3.0f
format C1SA51I %2.0f
format C1SA51IY %2.0f
format C1SA51IZ %3.0f
format C1SA51J %2.0f
format C1SA51JY %2.0f
format C1SA51JZ %3.0f
format C1SA51K %2.0f
format C1SA51KY %2.0f
format C1SA51KZ %3.0f
format C1SA52A %2.0f
format C1SA52B %2.0f
format C1SA52C %2.0f
format C1SA52D %2.0f
format C1SA52E %2.0f
format C1SA52F %2.0f
format C1SA52G %2.0f
format C1SA52H %2.0f
format C1SA52I %2.0f
format C1SA52J %2.0f
format C1SA52K %2.0f
format C1SA52L %2.0f
format C1SA52M %2.0f
format C1SA52N %2.0f
format C1SA52O %2.0f
format C1SA52P %2.0f
format C1SA52Q %2.0f
format C1SA52R %2.0f
format C1SA52S %2.0f
format C1SA53A %2.0f
format C1SA53B %2.0f
format C1SA54A %2.0f
format C1SA54B %2.0f
format C1SA55A %2.0f
format C1SA55B %2.0f
format C1SA56 %2.0f
format C1SA57A %2.0f
format C1SA57B %2.0f
format C1SA57C %2.0f
format C1SA57D %2.0f
format C1SA58A %2.0f
format C1SA58B %2.0f
format C1SA58C %2.0f
format C1SA58D %2.0f
format C1SA58E %2.0f
format C1SA58F %2.0f
format C1SA58G %2.0f
format C1SA58H %2.0f
format C1SA58I %2.0f
format C1SA58J %2.0f
format C1SA59 %2.0f
format C1SA60 %2.0f
format C1SA61 %2.0f
format C1SA62A %2.0f
format C1SA62B %2.0f
format C1SA62C %2.0f
format C1SA62D %2.0f
format C1SA62E %2.0f
format C1SA63 %2.0f
format C1SA64A %2.0f
format C1SA64B %2.0f
format C1SA64C %2.0f
format C1SA64D %2.0f
format C1SA64E %2.0f
format C1SALCOH %2.0f
format C1SA65 %2.0f
format C1SA66 %2.0f
format C1SB1 %2.0f
format C1SB2A %2.0f
format C1SB2B %2.0f
format C1SB2C %2.0f
format C1SB2D %2.0f
format C1SB2E %2.0f
format C1SB3 %4.0f
format C1SB4 %2.0f
format C1SB5A %2.0f
format C1SB5B %2.0f
format C1SB5C %4.0f
format C1SB6 %2.0f
format C1SB7 %2.0f
format C1SB8A1 %2.0f
format C1SB8A2 %2.0f
format C1SB8A3 %2.0f
format C1SB8A4 %3.0f
format C1SB8B1 %2.0f
format C1SB8B2 %2.0f
format C1SB8B3 %2.0f
format C1SB8B4 %3.0f
format C1SB8C1 %2.0f
format C1SB8C2 %2.0f
format C1SB8C3 %2.0f
format C1SB8C4 %3.0f
format C1SB9 %2.0f
format C1SB10 %2.0f
format C1SB11 %2.0f
format C1SB12A %2.0f
format C1SB12B %2.0f
format C1SB12C %2.0f
format C1SB12D %2.0f
format C1SB12E %2.0f
format C1SB12F %2.0f
format C1SB12G %2.0f
format C1SB13A %2.0f
format C1SB13B %4.0f
format C1SB14 %2.0f
format C1SB15A %2.0f
format C1SB15B %4.0f
format C1SB16A %2.0f
format C1SB16B %2.0f
format C1SB16C %2.0f
format C1SB16D %2.0f
format C1SB17 %2.0f
format C1SB18 %2.0f
format C1SB19 %2.0f
format C1SB20A %2.0f
format C1SB20B %2.0f
format C1SB20C %2.0f
format C1SB20D %2.0f
format C1SB20E %2.0f
format C1SB20F %2.0f
format C1SB20G %2.0f
format C1SB21 %2.0f
format C1SB22A %2.0f
format C1SB22B %2.0f
format C1SB22C %2.0f
format C1SC1 %2.0f
format C1SC2A %2.0f
format C1SC2B %2.0f
format C1SC2C %2.0f
format C1SC2D %2.0f
format C1SC2E %2.0f
format C1SC2F %2.0f
format C1SC2G %2.0f
format C1SC2H %2.0f
format C1SC2I %2.0f
format C1SC2J %2.0f
format C1SC2K %2.0f
format C1SC2L %2.0f
format C1SC2M %2.0f
format C1SC3A %2.0f
format C1SC3B %2.0f
format C1SC3C %2.0f
format C1SC3D %2.0f
format C1SC3E %2.0f
format C1SC3F %2.0f
format C1SC3G %2.0f
format C1SC3H %2.0f
format C1SC4 %2.0f
format C1SC5 %2.0f
format C1SC6 %2.0f
format C1SC7A %2.0f
format C1SC7B %2.0f
format C1SC7C %2.0f
format C1SC7D %2.0f
format C1SC8A %2.0f
format C1SC8B %2.0f
format C1SC8C %2.0f
format C1SC9 %2.0f
format C1SC10A %2.0f
format C1SC10B %2.0f
format C1SC10C %2.0f
format C1SC10D %2.0f
format C1SC10E %2.0f
format C1SC10F %2.0f
format C1SC10G %2.0f
format C1SC10H %2.0f
format C1SC11 %2.0f
format C1SC12 %2.0f
format C1SC13 %2.0f
format C1SD1 %2.0f
format C1SD2 %3.0f
format C1SD2A %2.0f
format C1SD3 %4.0f
format C1SD3A %3.0f
format C1SD4 %2.0f
format C1SD5 %3.0f
format C1SD5A %2.0f
format C1SD6 %4.0f
format C1SD6A %3.0f
format C1SE1A %2.0f
format C1SE1B %2.0f
format C1SE1C %2.0f
format C1SE1D %2.0f
format C1SE1E %2.0f
format C1SE1F %2.0f
format C1SE1G %2.0f
format C1SE1H %2.0f
format C1SE1I %2.0f
format C1SE1J %2.0f
format C1SE1K %2.0f
format C1SE1L %2.0f
format C1SE1M %2.0f
format C1SE1N %2.0f
format C1SE1O %2.0f
format C1SE1P %2.0f
format C1SE1Q %2.0f
format C1SE1R %2.0f
format C1SE1S %2.0f
format C1SE1T %2.0f
format C1SE1U %2.0f
format C1SE1V %2.0f
format C1SE1W %2.0f
format C1SE1X %2.0f
format C1SE1Y %2.0f
format C1SE1Z %2.0f
format C1SE1AA %2.0f
format C1SE1BB %2.0f
format C1SE1CC %2.0f
format C1SE1DD %2.0f
format C1SE1EE %2.0f
format C1SE1FF %2.0f
format C1SE1GG %2.0f
format C1SE1HH %2.0f
format C1SE1II %2.0f
format C1SE1JJ %2.0f
format C1SE1KK %2.0f
format C1SE1LL %2.0f
format C1SE1MM %2.0f
format C1SE1NN %2.0f
format C1SE1OO %2.0f
format C1SE1PP %2.0f
format C1SE1QQ %2.0f
format C1SPWBA1 %4.1f
format C1SPWBE1 %4.1f
format C1SPWBG1 %4.1f
format C1SPWBR1 %4.1f
format C1SPWBU1 %4.1f
format C1SPWBS1 %4.1f
format C1SPWBA2 %15.12f
format C1SPWBE2 %15.12f
format C1SPWBG2 %15.12f
format C1SPWBR2 %15.12f
format C1SPWBU2 %15.12f
format C1SPWBS2 %15.12f
format C1SE2A %2.0f
format C1SE2B %2.0f
format C1SE2C %2.0f
format C1SE2D %2.0f
format C1SE2E %2.0f
format C1SE2F %2.0f
format C1SE2G %2.0f
format C1SE2H %2.0f
format C1SE2I %2.0f
format C1SE2J %2.0f
format C1SE2K %2.0f
format C1SE2L %2.0f
format C1SE2M %2.0f
format C1SE2N %2.0f
format C1SE2O %2.0f
format C1SE2P %2.0f
format C1SE2Q %2.0f
format C1SE3 %2.0f
format C1SE4A %2.0f
format C1SE4B %2.0f
format C1SE4C %2.0f
format C1SE4D %2.0f
format C1SE4E %2.0f
format C1SE4F %2.0f
format C1SE4G %2.0f
format C1SE4H %2.0f
format C1SE4I %2.0f
format C1SE4J %2.0f
format C1SE4K %2.0f
format C1SE4L %2.0f
format C1SMASTE %15.12f
format C1SCONST %15.12f
format C1SCTRL %15.12f
format C1SE4M %2.0f
format C1SE4N %2.0f
format C1SE4O %2.0f
format C1SE4P %2.0f
format C1SE4Q %2.0f
format C1SE4R %2.0f
format C1SE4S %2.0f
format C1SESTEE %15.12f
format C1SE4T %2.0f
format C1SE4U %2.0f
format C1SE4V %2.0f
format C1SE4W %2.0f
format C1SE4X %2.0f
format C1SE4Y %2.0f
format C1SINTER %15.12f
format C1SINDEP %15.12f
format C1SE5A %2.0f
format C1SE5B %2.0f
format C1SE5C %2.0f
format C1SE5D %2.0f
format C1SE5E %2.0f
format C1SE6A %2.0f
format C1SE6B %2.0f
format C1SE6C %2.0f
format C1SE6D %2.0f
format C1SE6E %2.0f
format C1SE6F %2.0f
format C1SE6G %2.0f
format C1SE6H %2.0f
format C1SE6I %2.0f
format C1SE6J %2.0f
format C1SE6K %2.0f
format C1SE6L %2.0f
format C1SE6M %2.0f
format C1SE6N %2.0f
format C1SE6O %2.0f
format C1SE6P %2.0f
format C1SE6Q %2.0f
format C1SE6R %2.0f
format C1SE6S %2.0f
format C1SE6T %2.0f
format C1SE6U %2.0f
format C1SE6V %2.0f
format C1SE6W %2.0f
format C1SE6X %2.0f
format C1SE6Y %2.0f
format C1SE6Z %2.0f
format C1SE6AA %2.0f
format C1SE6BB %2.0f
format C1SE6CC %2.0f
format C1SE6DD %2.0f
format C1SE6EE %2.0f
format C1SAGENC %15.12f
format C1SAGREE %15.12f
format C1SEXTRA %15.12f
format C1SNEURO %15.12f
format C1SCONS1 %15.12f
format C1SCONS2 %15.12f
format C1SOPEN %15.12f
format C1SE7A %2.0f
format C1SE7B %2.0f
format C1SE7C %2.0f
format C1SE7D %2.0f
format C1SE7E %2.0f
format C1SE7F %2.0f
format C1SE7G %2.0f
format C1SE7H %2.0f
format C1SE7I %2.0f
format C1SE7J %2.0f
format C1SE7K %2.0f
format C1SE7L %2.0f
format C1SE7M %2.0f
format C1SE7N %2.0f
format C1SE7O %2.0f
format C1SE7P %2.0f
format C1SE7Q %2.0f
format C1SE7R %2.0f
format C1SE7S %2.0f
format C1SE7T %2.0f
format C1SE7U %2.0f
format C1SE7V %2.0f
format C1SE7W %2.0f
format C1SE7X %2.0f
format C1SE7Y %2.0f
format C1SE7Z %2.0f
format C1SE7AA %2.0f
format C1SE7BB %2.0f
format C1SE7CC %2.0f
format C1SE7DD %2.0f
format C1SE7EE %2.0f
format C1SE7FF %2.0f
format C1SE7GG %2.0f
format C1SE8 %2.0f
format C1SE8A %2.0f
format C1SE9 %2.0f
format C1SE9A %2.0f
format C1SMPQWB %4.1f
format C1SMPQSP %15.12f
format C1SMPQAC %15.12f
format C1SMPQSC %15.12f
format C1SMPQSR %4.1f
format C1SMPQAG %15.12f
format C1SMPQAL %4.1f
format C1SMPQCN %4.1f
format C1SMPQTR %4.1f
format C1SMPQHA %15.12f
format C1SE10A %2.0f
format C1SE10B %2.0f
format C1SE10C %2.0f
format C1SE10D %2.0f
format C1SE10E %2.0f
format C1SE10F %2.0f
format C1SOPTIM %4.1f
format C1SPESSI %4.1f
format C1SORIEN %15.12f
format C1SE11A %2.0f
format C1SE11A1 %2.0f
format C1SE11A3 %2.0f
format C1SE11A4 %2.0f
format C1SE11A11 %2.0f
format C1SE11A12 %2.0f
format C1SE11AR1 %2.0f
format C1SE11AR2 %2.0f
format C1SE11B %2.0f
format C1SE11B1 %2.0f
format C1SE11B3 %2.0f
format C1SE11B4 %2.0f
format C1SE11B11 %2.0f
format C1SE11B12 %2.0f
format C1SE11B13 %2.0f
format C1SE11BR1 %2.0f
format C1SE11BR2 %2.0f
format C1SE11C %2.0f
format C1SE11C1 %2.0f
format C1SE11C3 %2.0f
format C1SE11C4 %2.0f
format C1SE11C11 %2.0f
format C1SE11C12 %2.0f
format C1SE11C13 %2.0f
format C1SE11CR1 %2.0f
format C1SE11CR2 %2.0f
format C1SE11D %2.0f
format C1SE11D1 %2.0f
format C1SE11D3 %2.0f
format C1SE11D4 %2.0f
format C1SE11D11 %2.0f
format C1SE11D12 %2.0f
format C1SE11D13 %2.0f
format C1SE11D14 %2.0f
format C1SE11D15 %2.0f
format C1SE11D16 %2.0f
format C1SE11DR1 %2.0f
format C1SE11DR2 %2.0f
format C1SE11E %2.0f
format C1SE11E1 %2.0f
format C1SE11E3 %2.0f
format C1SE11E4 %2.0f
format C1SE11ER1 %2.0f
format C1SE11ER2 %2.0f
format C1SE11F %2.0f
format C1SE11F1 %2.0f
format C1SE11F3 %2.0f
format C1SE11F4 %2.0f
format C1SE11F11 %2.0f
format C1SE11F12 %2.0f
format C1SE11FR1 %2.0f
format C1SE11FR2 %2.0f
format C1SE11G %2.0f
format C1SE11G1 %2.0f
format C1SE11G3 %2.0f
format C1SE11G4 %2.0f
format C1SE11G11 %2.0f
format C1SE11G12 %2.0f
format C1SE11G13 %2.0f
format C1SE11G14 %2.0f
format C1SE11GR1 %2.0f
format C1SE11GR2 %2.0f
format C1SE12A %2.0f
format C1SE12A1 %2.0f
format C1SE12A3 %2.0f
format C1SE12A4 %2.0f
format C1SE12A11 %2.0f
format C1SE12A12 %2.0f
format C1SE12AR1 %2.0f
format C1SE12AR2 %2.0f
format C1SE12B %2.0f
format C1SE12B1 %2.0f
format C1SE12B3 %2.0f
format C1SE12B4 %2.0f
format C1SE12B11 %2.0f
format C1SE12B12 %2.0f
format C1SE12B13 %2.0f
format C1SE12B14 %2.0f
format C1SE12B15 %2.0f
format C1SE12B16 %2.0f
format C1SE12BR1 %2.0f
format C1SE12BR2 %2.0f
format C1SE12C %2.0f
format C1SE12C1 %2.0f
format C1SE12C3 %2.0f
format C1SE12C4 %2.0f
format C1SE12C11 %2.0f
format C1SE12C12 %2.0f
format C1SE12C13 %2.0f
format C1SE12C14 %2.0f
format C1SE12C15 %2.0f
format C1SE12CR1 %2.0f
format C1SE12CR2 %2.0f
format C1SE12D %2.0f
format C1SE12D1 %2.0f
format C1SE12D3 %2.0f
format C1SE12D4 %2.0f
format C1SE12D11 %2.0f
format C1SE12D12 %2.0f
format C1SE12D13 %2.0f
format C1SE12DR1 %2.0f
format C1SE12DR2 %2.0f
format C1SE12E %2.0f
format C1SE12E1 %2.0f
format C1SE12E3 %2.0f
format C1SE12E4 %2.0f
format C1SE12E11 %2.0f
format C1SE12E12 %2.0f
format C1SE12E13 %2.0f
format C1SE12E14 %2.0f
format C1SE12ER1 %2.0f
format C1SE12ER2 %2.0f
format C1SE12F %2.0f
format C1SE12F1 %2.0f
format C1SE12F3 %2.0f
format C1SE12F4 %2.0f
format C1SE12F11 %2.0f
format C1SE12F12 %2.0f
format C1SE12F13 %2.0f
format C1SE12F14 %2.0f
format C1SE12FR1 %2.0f
format C1SE12FR2 %2.0f
format C1SE12G %2.0f
format C1SE12G1 %2.0f
format C1SE12G3 %2.0f
format C1SE12G4 %2.0f
format C1SE12G11 %2.0f
format C1SE12G12 %2.0f
format C1SE12GR1 %2.0f
format C1SE12GR2 %2.0f
format C1SE12H %2.0f
format C1SE12H1 %2.0f
format C1SE12H3 %2.0f
format C1SE12H4 %2.0f
format C1SE12H11 %2.0f
format C1SE12H12 %2.0f
format C1SE12H13 %2.0f
format C1SE12H14 %2.0f
format C1SE12H15 %2.0f
format C1SE12H16 %2.0f
format C1SE12HR1 %2.0f
format C1SE12HR2 %2.0f
format C1SE12I %2.0f
format C1SE12I1 %2.0f
format C1SE12I3 %2.0f
format C1SE12I4 %2.0f
format C1SE12I11 %2.0f
format C1SE12I12 %2.0f
format C1SE12I13 %2.0f
format C1SE12I14 %2.0f
format C1SE12I15 %2.0f
format C1SE12J %2.0f
format C1SE12J1 %2.0f
format C1SE12J3 %2.0f
format C1SE12J4 %2.0f
format C1SE12J11 %2.0f
format C1SE12J12 %2.0f
format C1SE12J13 %2.0f
format C1SE12J14 %2.0f
format C1SE12J15 %2.0f
format C1SE12JR1 %2.0f
format C1SE12JR2 %2.0f
format C1SE12K %2.0f
format C1SE12K1 %2.0f
format C1SE12K3 %2.0f
format C1SE12K4 %2.0f
format C1SE12K11 %2.0f
format C1SE12K12 %2.0f
format C1SE12L %2.0f
format C1SE12L1 %2.0f
format C1SE12L3 %2.0f
format C1SE12L4 %2.0f
format C1SE12L11 %2.0f
format C1SE12L12 %2.0f
format C1SE12L13 %2.0f
format C1SE12L14 %2.0f
format C1SE12L15 %2.0f
format C1SE12L16 %2.0f
format C1SE12LR1 %2.0f
format C1SE12LR2 %2.0f
format C1SE12M %2.0f
format C1SE12M1 %2.0f
format C1SE12M3 %2.0f
format C1SE12M4 %2.0f
format C1SE12M11 %2.0f
format C1SE12M12 %2.0f
format C1SE12M13 %2.0f
format C1SE12M14 %2.0f
format C1SE12M15 %2.0f
format C1SE12MR1 %2.0f
format C1SE12MR2 %2.0f
format C1SE12N %2.0f
format C1SE12N1 %2.0f
format C1SE12N3 %2.0f
format C1SE12N4 %2.0f
format C1SE12N11 %2.0f
format C1SE12N12 %2.0f
format C1SE12NR1 %2.0f
format C1SE12NR2 %2.0f
format C1SE12O %2.0f
format C1SE12O1 %2.0f
format C1SE12O3 %2.0f
format C1SE12O4 %2.0f
format C1SE12O11 %2.0f
format C1SE12O12 %2.0f
format C1SE12O13 %2.0f
format C1SE12O14 %2.0f
format C1SE12OR1 %2.0f
format C1SE12OR2 %2.0f
format C1SE12P %2.0f
format C1SE12P1 %2.0f
format C1SE12P3 %2.0f
format C1SE12P4 %2.0f
format C1SE12P11 %2.0f
format C1SE12P12 %2.0f
format C1SE12P13 %2.0f
format C1SE12PR1 %2.0f
format C1SE12PR2 %2.0f
format C1SE12Q %2.0f
format C1SE12Q1 %2.0f
format C1SE12Q3 %2.0f
format C1SE12Q4 %2.0f
format C1SE12Q11 %2.0f
format C1SE12Q12 %2.0f
format C1SE12Q13 %2.0f
format C1SE12Q14 %2.0f
format C1SE12QR1 %2.0f
format C1SE12QR2 %2.0f
format C1SE12R %2.0f
format C1SE12R1 %2.0f
format C1SE12R3 %2.0f
format C1SE12R4 %2.0f
format C1SE12R11 %2.0f
format C1SE12R12 %2.0f
format C1SE12RR1 %2.0f
format C1SE12RR2 %2.0f
format C1SE12S %2.0f
format C1SE12S1 %2.0f
format C1SE12S3 %2.0f
format C1SE12S4 %2.0f
format C1SE12S11 %2.0f
format C1SE12S12 %2.0f
format C1SE12SR1 %2.0f
format C1SE12SR2 %2.0f
format C1SE12T %2.0f
format C1SE12T1 %2.0f
format C1SE12T3 %2.0f
format C1SE12T4 %2.0f
format C1SE12T11 %2.0f
format C1SE12T12 %2.0f
format C1SE12T13 %2.0f
format C1SE12T14 %2.0f
format C1SE12T15 %2.0f
format C1SE12T16 %2.0f
format C1SE12TR1 %2.0f
format C1SE12TR2 %2.0f
format C1SE13A %2.0f
format C1SE13B %2.0f
format C1SE13C %2.0f
format C1SE13D %2.0f
format C1SE13E %2.0f
format C1SE13F %2.0f
format C1SE13G %2.0f
format C1SE13H %2.0f
format C1SE13I %2.0f
format C1SE13J %2.0f
format C1SE13K %2.0f
format C1SMAR %4.1f
format C1SFAM %15.12f
format C1SE14A %2.0f
format C1SE14B %2.0f
format C1SE14C %2.0f
format C1SE14D %2.0f
format C1SE14E %2.0f
format C1SE14F %2.0f
format C1SE14G %2.0f
format C1SE14H %2.0f
format C1SE14I %2.0f
format C1SE14J %2.0f
format C1SE14K %2.0f
format C1SE14L %2.0f
format C1SE14M %2.0f
format C1SE14N %2.0f
format C1SE14O %2.0f
format C1SE14P %2.0f
format C1SE14Q %2.0f
format C1SE14R %2.0f
format C1SE14S %2.0f
format C1SE14T %2.0f
format C1SE14U %2.0f
format C1SE14V %2.0f
format C1SE14W %2.0f
format C1SE14X %2.0f
format C1SE14Y %2.0f
format C1SE14Z %2.0f
format C1SE14AA %2.0f
format C1SE14BB %2.0f
format C1SE14CC %2.0f
format C1SE14DD %2.0f
format C1SE14EE %2.0f
format C1SE14FF %2.0f
format C1SE14GG %2.0f
format C1SE14HH %2.0f
format C1SE14II %2.0f
format C1SE14JJ %2.0f
format C1SE14KK %2.0f
format C1SE14LL %2.0f
format C1SE14MM %2.0f
format C1SPERSI %15.12f
format C1SREAPP %15.12f
format C1SCHANG %15.12f
format C1SSPCTR %15.12f
format C1SCPCTR %5.2f
format C1SSSCTR %15.12f
format C1SCSCDE %15.12f
format C1SCSCSP %15.12f
format C1SCSCAG %15.12f
format C1SDIREC %15.12f
format C1STODAY %15.12f
format C1SINSGH %4.1f
format C1SFORSG %2.0f
format C1SSUFFI %4.1f
format C1SE15A %2.0f
format C1SE15B %2.0f
format C1SE15C %2.0f
format C1SE15D %2.0f
format C1SE15E %2.0f
format C1SE15F %2.0f
format C1SE15G %2.0f
format C1SE15H %2.0f
format C1SE15I %2.0f
format C1SE15J %2.0f
format C1SE15K %2.0f
format C1SE15L %2.0f
format C1SE15M %2.0f
format C1SE15N %2.0f
format C1SE15O %2.0f
format C1SE15P %2.0f
format C1SE15Q %2.0f
format C1SE15R %2.0f
format C1SE15S %2.0f
format C1SE15T %2.0f
format C1SE15U %2.0f
format C1SE15V %2.0f
format C1SE15W %2.0f
format C1SE15X %2.0f
format C1SE15Y %2.0f
format C1SE15Z %2.0f
format C1SREINT %15.12f
format C1SACTIV %15.12f
format C1SPLAN %15.12f
format C1SVENT %15.12f
format C1SDENIA %15.12f
format C1SDISEN %15.12f
format C1SFDCOP %2.0f
format C1SPRCOP %15.12f
format C1SEMCOP %15.12f
format C1SE16 %3.0f
format C1SE17 %3.0f
format C1SE18 %3.0f
format C1SE19 %3.0f
format C1SE20 %3.0f
format C1SE21 %3.0f
format C1SF1 %2.0f
format C1SF2 %2.0f
format C1SF3 %2.0f
format C1SF4 %2.0f
format C1SF5 %2.0f
format C1SF6 %2.0f
format C1SF7 %2.0f
format C1SF8 %3.0f
format C1SF9 %3.0f
format C1SF10 %3.0f
format C1SF11 %2.0f
format C1SF12A %5.1f
format C1SF12B %2.0f
format C1SF13A %2.0f
format C1SF13B %4.0f
format C1SF14 %2.0f
format C1SF15 %2.0f
format C1SF16A %2.0f
format C1SF16B %2.0f
format C1SF16C %2.0f
format C1SF16D %2.0f
format C1SF16E %2.0f
format C1SF16F %2.0f
format C1SF16G %2.0f
format C1SF16H %2.0f
format C1SF16I %2.0f
format C1SF16J %2.0f
format C1SF17A %2.0f
format C1SF17B %2.0f
format C1SF17C %2.0f
format C1SF17D %2.0f
format C1SF17E %2.0f
format C1SF17F %2.0f
format C1SF17G %2.0f
format C1SF17H %2.0f
format C1SF17I %2.0f
format C1SF17J %2.0f
format C1SF18 %2.0f
format C1SF19A %2.0f
format C1SF19B %2.0f
format C1SF19C %2.0f
format C1SF19D %2.0f
format C1SF19E %2.0f
format C1SF19F %2.0f
format C1SF19G %2.0f
format C1SF19H %2.0f
format C1SF19I %2.0f
format C1SF19J %2.0f
format C1SF19K %2.0f
format C1SF19L %2.0f
format C1SF19M %2.0f
format C1SF19N %2.0f
format C1SF20 %2.0f
format C1SF21 %2.0f
format C1SF22 %3.0f
format C1SF23 %2.0f
format C1SF24 %2.0f
format C1SF25A %2.0f
format C1SF25B %4.0f
format C1SF26 %2.0f
format C1SF27A %2.0f
format C1SF27B %2.0f
format C1SF27C %2.0f
format C1SF27D %2.0f
format C1SF28A %2.0f
format C1SF28B %2.0f
format C1SF28C %2.0f
format C1SF29A %2.0f
format C1SF29B %2.0f
format C1SF29C %2.0f
format C1SF30A %2.0f
format C1SF30B %2.0f
format C1SF31 %2.0f
format C1SF32 %2.0f
format C1SF33 %2.0f
format C1SF34 %2.0f
format C1SF35 %2.0f
format C1SF36A %2.0f
format C1SF36B %2.0f
format C1SF36C %2.0f
format C1SF36D %2.0f
format C1SF36E %2.0f
format C1SF36F %2.0f
format C1SF36G %2.0f
format C1SF36H %2.0f
format C1SF36I %2.0f
format C1SF36J %2.0f
format C1SF36K %2.0f
format C1SJCSD %4.1f
format C1SJCDA %15.12f
format C1SJCDS %15.12f
format C1SF37A %2.0f
format C1SF37B %2.0f
format C1SF37C %2.0f
format C1SF37D %2.0f
format C1SF37E %2.0f
format C1SJCCS %2.0f
format C1SJCSS %4.1f
format C1SF38A %2.0f
format C1SF38B %2.0f
format C1SF38C %2.0f
format C1SF38D %2.0f
format C1SF38E %2.0f
format C1SF38F %2.0f
format C1SJOBDI %15.12f
format C1SF39A %2.0f
format C1SF39B %2.0f
format C1SF39C %2.0f
format C1SF39D %2.0f
format C1SF39E %2.0f
format C1SF39F %2.0f
format C1SPIWOR %15.12f
format C1SF40A %2.0f
format C1SF40B %2.0f
format C1SF40C %2.0f
format C1SF40D %2.0f
format C1SF40E %2.0f
format C1SF40F %2.0f
format C1SF40G %2.0f
format C1SF40H %2.0f
format C1SF40I %2.0f
format C1SF40J %2.0f
format C1SF40K %2.0f
format C1SF40L %2.0f
format C1SF40M %2.0f
format C1SF40N %2.0f
format C1SF40O %2.0f
format C1SF40P %2.0f
format C1SPOSWF %15.12f
format C1SNEGWF %2.0f
format C1SPOSFW %15.12f
format C1SNEGFW %15.12f
format C1SF41A %2.0f
format C1SF41B %2.0f
format C1SF41C %2.0f
format C1SF41D %2.0f
format C1SF42A %2.0f
format C1SF42B %2.0f
format C1SF42C %2.0f
format C1SF42D %2.0f
format C1SF43A %2.0f
format C1SF43B %2.0f
format C1SF43C %2.0f
format C1SF43D %2.0f
format C1SF44A %2.0f
format C1SF44B %2.0f
format C1SF44C %2.0f
format C1SF45A %2.0f
format C1SF45B %2.0f
format C1SF45C %2.0f
format C1SG1 %2.0f
format C1SG2 %2.0f
format C1SG3 %2.0f
format C1SG4 %2.0f
format C1SG5 %2.0f
format C1SG6 %2.0f
format C1SG7 %2.0f
format C1SG8 %2.0f
format C1SG9 %2.0f
format C1SG10 %2.0f
format C1SG11A %2.0f
format C1SG11B %2.0f
format C1SG11C %2.0f
format C1SG11D %2.0f
format C1SG12 %2.0f
format C1SG13 %2.0f
format C1SG14A %2.0f
format C1SG14B %2.0f
format C1SG14C %2.0f
format C1SG14D %2.0f
format C1SG15 %2.0f
format C1SG16 %2.0f
format C1SG17A %2.0f
format C1SG17B %2.0f
format C1SG17C %2.0f
format C1SG17D %2.0f
format C1SRINC %6.0f
format C1SSINC %6.0f
format C1SHINC %6.0f
format C1SEARN %6.0f
format C1SPNSN %6.0f
format C1SSEC %6.0f
format C1SOTH %6.0f
format C1STINC %6.0f
format C1SG18 %2.0f
format C1SG19 %2.0f
format C1SG20A %2.0f
format C1SG20B %2.0f
format C1SG20C %2.0f
format C1SG20D %2.0f
format C1SG20E %2.0f
format C1SG20F %2.0f
format C1SG20G %2.0f
format C1SG20H %2.0f
format C1SG20I %2.0f
format C1SG20J %2.0f
format C1SG21 %8.0f
format C1SG22 %6.0f
format C1SG23 %6.0f
format C1SG24 %6.0f
format C1SG25 %2.0f
format C1SG25A %6.0f
format C1SG25B %6.0f
format C1SG26 %2.0f
format C1SG27 %7.0f
format C1SG28 %2.0f
format C1SG29 %7.0f
format C1SG30 %2.0f
format C1SG31 %7.0f
format C1SG32 %2.0f
format C1SG33 %7.0f
format C1SG34 %2.0f
format C1SG35 %2.0f
format C1SG36 %6.0f
format C1SG37A %3.0f
format C1SG37B %3.0f
format C1SG37C %3.0f
format C1SG37D %3.0f
format C1SG38 %2.0f
format C1SG39 %7.0f
format C1SG40 %2.0f
format C1SG41 %2.0f
format C1SG42 %8.0f
format C1SG43 %7.0f
format C1SG44 %2.0f
format C1SG45 %6.0f
format C1SG46 %2.0f
format C1SG47 %7.0f
format C1SG48A %3.0f
format C1SG48B %3.0f
format C1SG48C %3.0f
format C1SG48D %3.0f
format C1SG48E %3.0f
format C1SG49 %2.0f
format C1SG50 %4.0f
format C1SG51 %6.0f
format C1SG52 %2.0f
format C1SG53 %7.0f
format C1SG54 %2.0f
format C1SG55 %6.0f
format C1SG56 %2.0f
format C1SG57 %6.0f
format C1SG58 %2.0f
format C1SG59 %2.0f
format C1SG59A %6.0f
format C1SG59B %7.0f
format C1SG60 %2.0f
format C1SG60A %6.0f
format C1SG60B %7.0f
format C1SG61A %7.0f
format C1SG61B %6.0f
format C1SG61C %6.0f
format C1SG61D %6.0f
format C1SG61E %5.0f
format C1SG61F %5.0f
format C1SG61G %8.0f
format C1SG61H %5.0f
format C1SG61I %5.0f
format C1SG62 %2.0f
format C1SH1 %2.0f
format C1SH2 %2.0f
format C1SH3 %2.0f
format C1SH4 %2.0f
format C1SH5 %2.0f
format C1SH6A %2.0f
format C1SH6B %2.0f
format C1SH6C %2.0f
format C1SH6D %2.0f
format C1SH6E %2.0f
format C1SH6F %2.0f
format C1SGENER %15.12f
format C1SH7A %3.0f
format C1SH7B %3.0f
format C1SH7C %3.0f
format C1SH7D %3.0f
format C1SH8A %2.0f
format C1SH8B %2.0f
format C1SH8C %2.0f
format C1SH9A %3.0f
format C1SH9B %3.0f
format C1SH9C %3.0f
format C1SH9D %3.0f
format C1SH9E %3.0f
format C1SH9F %3.0f
format C1SH10A %3.0f
format C1SH10B %3.0f
format C1SH10C %3.0f
format C1SH10D %3.0f
format C1SH10E %3.0f
format C1SH10F %3.0f
format C1SH11A %3.0f
format C1SH11B %3.0f
format C1SH11C %3.0f
format C1SH11D %3.0f
format C1SH11E %3.0f
format C1SH12A %3.0f
format C1SH12B %3.0f
format C1SH12C %3.0f
format C1SH12D %3.0f
format C1SH12E %3.0f
format C1SH12F %3.0f
format C1SH12G %3.0f
format C1SH12H %3.0f
format C1SH13A %8.0f
format C1SH13B %8.0f
format C1SH13C %5.0f
format C1SH13D %5.0f
format C1SH13E %8.0f
format C1SH13F %8.0f
format C1SH13G %8.0f
format C1SH13H %8.0f
format C1SH14A %8.0f
format C1SH14B %8.0f
format C1SH14C %8.0f
format C1SH14D %8.0f
format C1SH14E %8.0f
format C1SH14F %8.0f
format C1SH14G %5.0f
format C1SH15A %2.0f
format C1SH15B %2.0f
format C1SH15C %2.0f
format C1SH15D %2.0f
format C1SH16A %2.0f
format C1SH16B %2.0f
format C1SH16C %2.0f
format C1SH16D %2.0f
format C1SH16E %2.0f
format C1SH16F %2.0f
format C1SH16G %2.0f
format C1SH16H %2.0f
format C1SH16I %2.0f
format C1SH16J %2.0f
format C1SH16K %2.0f
format C1SH16L %2.0f
format C1SH16M %2.0f
format C1SH16N %2.0f
format C1SH16O %2.0f
format C1SSWBMS %2.0f
format C1SSWBSI %4.1f
format C1SSWBAO %4.1f
format C1SSWBSC %4.1f
format C1SSWBSA %4.1f
format C1SH16P %2.0f
format C1SH16Q %2.0f
format C1SH16R %2.0f
format C1SH16S %2.0f
format C1SH16T %2.0f
format C1SSYMP %15.12f
format C1SI1 %2.0f
format C1SI2 %2.0f
format C1SI3 %2.0f
format C1SI4 %2.0f
format C1SI5 %2.0f
format C1SI6A %2.0f
format C1SI6B %2.0f
format C1SI6C %2.0f
format C1SI6D %2.0f
format C1SI6E %2.0f
format C1SI6F %2.0f
format C1SI6G %2.0f
format C1SI6H %2.0f
format C1SI6I %2.0f
format C1SI6J %2.0f
format C1SI6K %2.0f
format C1SI6L %2.0f
format C1SHOMET %15.12f
format C1SPIHOM %15.12f
format C1SI7 %2.0f
format C1SJ1 %2.0f
format C1SJ2 %2.0f
format C1SJ3 %3.0f
format C1SJ4A %2.0f
format C1SJ4B %2.0f
format C1SJ4C %2.0f
format C1SJ4D %2.0f
format C1SJ4E %2.0f
format C1SJ4F %2.0f
format C1SJ4G %2.0f
format C1SJ4H %2.0f
format C1SJ4I %2.0f
format C1SJ4J %2.0f
format C1SKINPO %15.12f
format C1SKINNE %15.12f
format C1SFAMSO %15.12f
format C1SPKINS %4.1f
format C1SJ5 %2.0f
format C1SJ6 %2.0f
format C1SJ7 %3.0f
format C1SJ8A %2.0f
format C1SJ8B %2.0f
format C1SJ8C %2.0f
format C1SJ8D %2.0f
format C1SJ8E %2.0f
format C1SJ8F %2.0f
format C1SJ8G %2.0f
format C1SJ8H %2.0f
format C1SFDSPO %15.12f
format C1SFDSNE %15.12f
format C1SFDSOL %15.12f
format C1SJ9 %2.0f
format C1SJ10 %2.0f
format C1SJ11SA %2.0f
format C1SJ11PA %2.0f
format C1SJ11CA %2.0f
format C1SJ11SB %2.0f
format C1SJ11PB %2.0f
format C1SJ11CB %2.0f
format C1SJ11SC %2.0f
format C1SJ11PC %2.0f
format C1SJ11CC %2.0f
format C1SJ11SD %2.0f
format C1SJ11PD %2.0f
format C1SJ11CD %2.0f
format C1SJ11SE %2.0f
format C1SJ11PE %2.0f
format C1SJ11CE %2.0f
format C1SJ11SF %2.0f
format C1SJ11PF %2.0f
format C1SJ11CF %2.0f
format C1SJ11SG %2.0f
format C1SJ11PG %2.0f
format C1SJ11CG %2.0f
format C1SJ11SH %2.0f
format C1SJ11PH %2.0f
format C1SJ11CH %2.0f
format C1SJ11SI %2.0f
format C1SJ11PI %2.0f
format C1SJ11CI %2.0f
format C1SJ11SJ %2.0f
format C1SJ11PJ %2.0f
format C1SJ11CJ %2.0f
format C1SJ11SK %2.0f
format C1SJ11PK %2.0f
format C1SJ11CK %2.0f
format C1SJ11SL %2.0f
format C1SJ11PL %2.0f
format C1SJ11CL %2.0f
format C1SJ11SM %2.0f
format C1SJ11PM %2.0f
format C1SJ11CM %2.0f
format C1SJ11SN %2.0f
format C1SJ11PN %2.0f
format C1SJ11CN %2.0f
format C1SJ11SO %2.0f
format C1SJ11PO %2.0f
format C1SJ11CO %2.0f
format C1SK1 %2.0f
format C1SK2 %2.0f
format C1SK3 %2.0f
format C1SK4 %2.0f
format C1SK5 %2.0f
format C1SK6 %2.0f
format C1SK7A %2.0f
format C1SK7B %2.0f
format C1SK7C %2.0f
format C1SK7D %2.0f
format C1SK7E %2.0f
format C1SK7F %2.0f
format C1SPIFAM %15.12f
format C1SK8A1 %2.0f
format C1SK8A2 %2.0f
format C1SK8B1 %2.0f
format C1SK8B2 %2.0f
format C1SK8C1 %2.0f
format C1SK8C2 %2.0f
format C1SK8D1 %2.0f
format C1SK8D2 %2.0f
format C1SK9 %2.0f
format C1SK10 %2.0f
format C1SK11 %2.0f
format C1SK12 %2.0f
format C1SK13 %2.0f
format C1SL1 %2.0f
format C1SL2 %2.0f
format C1SL3 %2.0f
format C1SL4 %2.0f
format C1SL5 %2.0f
format C1SL6 %2.0f
format C1SL7 %2.0f
format C1SL8 %2.0f
format C1SL9 %2.0f
format C1SMARRS %2.0f
format C1SL10A %2.0f
format C1SL10B %2.0f
format C1SL10C %2.0f
format C1SSPDIS %4.1f
format C1SL11 %2.0f
format C1SL12A %2.0f
format C1SL12B %2.0f
format C1SL12C %2.0f
format C1SL12D %2.0f
format C1SL12E %2.0f
format C1SL12F %2.0f
format C1SL12G %2.0f
format C1SL12H %2.0f
format C1SL12I %2.0f
format C1SL12J %2.0f
format C1SL12K %2.0f
format C1SL12L %2.0f
format C1SSPEMP %15.12f
format C1SSPCRI %15.12f
format C1SSPSOL %15.12f
format C1SL13 %2.0f
format C1SL14 %3.0f
format C1SL15 %3.0f
format C1SL16 %2.0f
format C1SL17 %2.0f
format C1SL18A %2.0f
format C1SL18B %2.0f
format C1SL18C %2.0f
format C1SL18D %2.0f
format C1SSPDEC %15.12f
format C1SL19 %2.0f
format C1SL20 %2.0f
format C1SL21 %2.0f
format C1SL22 %3.0f
format C1SL23 %3.0f
format C1SL24A %2.0f
format C1SL24B %2.0f
format C1SL24C %2.0f
format C1SL24D %2.0f
format C1SL25A %2.0f
format C1SL25B %2.0f
format C1SL25C %2.0f
format C1SL26A %2.0f
format C1SL26B %2.0f
format C1SL26C %2.0f
format C1SL27A %2.0f
format C1SL27B %2.0f
format C1SL28 %2.0f
format C1SM1 %2.0f
format C1SM2 %2.0f
format C1SM3 %2.0f
format C1SM4 %2.0f
format C1SM5 %2.0f
format C1SM6 %2.0f
format C1SM7 %2.0f
format C1SM8 %2.0f
format C1SM9 %2.0f
format C1SM10 %2.0f
format C1SM11 %2.0f
format C1SM12 %2.0f
format C1SM13 %2.0f
format C1SN1A %2.0f
format C1SN1B %2.0f
format C1SN1C %2.0f
format C1SN2A %2.0f
format C1SN2B %2.0f
format C1SN2C %2.0f
format C1SN2D %2.0f
format C1SN2E %2.0f
format C1SN2F %2.0f
format C1SN2G %2.0f
format C1SN2H %2.0f
format C1SN2I %2.0f
format C1SSPIRI %2.0f
format C1SRELID %15.12f
format C1SN3A %2.0f
format C1SN3B %2.0f
format C1SN3C %2.0f
format C1SN3D %2.0f
format C1SN3E %2.0f
format C1SRELPR %4.1f
format C1SN4 %2.0f
format C1SN5 %2.0f
format C1SN6 %2.0f
format C1SN7 %2.0f
format C1SN8 %2.0f
format C1SN9A %2.0f
format C1SN9B %2.0f
format C1SN9C %2.0f
format C1SN9D %2.0f
format C1SRELSU %15.12f
format C1SN10A %2.0f
format C1SN10B %2.0f
format C1SN10C %2.0f
format C1SN10D %2.0f
format C1SN10E %2.0f
format C1SN10F %2.0f
format C1SN10G %2.0f
format C1SN10H %2.0f
format C1SRELCA %2.0f
format C1SRELCB %15.12f
format C1SN11A %2.0f
format C1SN11B %2.0f
format C1SN11C %2.0f
format C1SN11D %2.0f
format C1SN11E %2.0f
format C1SSPRTE %5.2f
format C1SN12A %2.0f
format C1SN12B %2.0f
format C1SN12C %2.0f
format C1SN12D %2.0f
format C1SN12E %2.0f
format C1SN12F %2.0f
format C1SN12G %2.0f
format C1SN12H %2.0f
format C1SN12I %2.0f
format C1SMNDFU %15.12f
format C1SP1A %4.0f
format C1SP1B %4.0f
format C1SP1C %4.0f
format C1SP1D %4.0f
format C1SP1E %4.0f
format C1SP1F %4.0f
format C1SP1G %4.0f
format C1SP1H %4.0f
format C1SP1I %4.0f
format C1SP1J %4.0f
format C1SP1K %4.0f
format C1SLFEDI %2.0f
format C1SP2A %2.0f
format C1SP2B %2.0f
format C1SP2C %2.0f
format C1SP2D %2.0f
format C1SP2E %2.0f
format C1SP2F %2.0f
format C1SP2G %2.0f
format C1SP2H %2.0f
format C1SP2I %2.0f
format C1SDAYDI %15.12f
format C1SP3 %2.0f
format C1SP4A %2.0f
format C1SP4B %2.0f
format C1SP4C %2.0f
format C1SP4D %2.0f
format C1SP4E %2.0f
format C1SP4F %2.0f
format C1SP4G %2.0f
format C1SP4H %2.0f
format C1SP4I %2.0f
format C1SP4J %2.0f
format C1SP4K %2.0f
format C1SP4L %2.0f
format C1SP4M %2.0f
format C1SP5 %2.0f
format C1SP6 %2.0f
format C1SQ1 %2.0f
format C1SQ2 %2.0f
format C1SQ3 %2.0f
format C1SQ4 %2.0f
format C1SQ5 %2.0f
format C1SQ6 %2.0f


/*********************************************************

Section 4: Value Label Definitions
This section defines labels for the individual values of each variable.
We suggest that users do not modify this section.

**********************************************************/

label data "National Survey of Midlife Development in the United States (MIDUS 3), 2013-2014, Aggregate Data"

#delimit ;
label define SAMPLMAJ  1 "MAIN RDD" 2 "SIBLING" 3 "TWIN" 4 "CITY OVERSAMPLE"
                       13 "MILWAUKEE" 14 "BOSTON NEW" 20 "MIDUS REFRESHER"
                       21 "MILWAUKEE REFRESHER" ;
label define C1STATUS  1 "COMPLETED M3 CATI ONLY"
                       2 "COMPLETED M3 CATI AND SAQ PART 2"
                       3 "COMPLETED M3 CATI AND SAQ PART 1"
                       4 "COMPLETED M3 CATI AND SAQ PART 1 AND 2" ;
label define C1PRSEX   1 "MALE" 2 "FEMALE" ;
label define C1PIDATE_YR 9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PAA1    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PAA2A   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PAA2B   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PAA2C   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PAA2D   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PAA2E   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PAA2F   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PAA2G   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PAA2H   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PAA2I   1 "YES" 2 "NO" 3 "NEVER OWNED A HOME (IF VOLUNTEERED)"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PAA2I1  999999997 "DON'T KNOW" 999999998 "REFUSED"
                       999999999 "INAPP" ;
label define C1PAA2J   1 "YES" 2 "NO" 3 "NEVER OWNED A HOME (IF VOLUNTEERED)"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PAA2J1  999999997 "DON'T KNOW" 999999998 "REFUSED"
                       999999999 "INAPP" ;
label define C1PAA2K   1 "YES" 2 "NO" 3 "NEVER OWNED A HOME (IF VOLUNTEERED)"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PAA2K1  999999997 "DON'T KNOW" 999999998 "REFUSED"
                       999999999 "INAPP" ;
label define C1PAA2L   1 "YES" 2 "NO" 3 "NEVER OWNED A HOME (IF VOLUNTEERED)"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PAA2L2  999999997 "DON'T KNOW" 999999998 "REFUSED"
                       999999999 "INAPP" ;
label define C1PAA2M   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PAA2N   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PAA2O   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PAA2P   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PAA2Q   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PAA2R   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PAA2S   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PAA2T   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PAA2U   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PAA2V   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PAA2W   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PAA2X   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PAA2Y   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PAA2Z   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PAA3    1 "YES, RECESSION IS OVER"
                       2 "NO, RECESSION IS NOT OVER" 7 "DON'T KNOW"
                       8 "REFUSED" ;
label define C1PAA3A   1 "LESS THAN 1 YEAR" 2 "1-2 YEARS" 3 "3-5 YEARS"
                       4 "MORE THAN 5 YEARS" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PAA4    1 "GET BETTER" 2 "GET WORSE" 3 "STAY THE SAME"
                       7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PAA5    1 "GET BETTER" 2 "GET WORSE" 3 "STAY THE SAME"
                       7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PAA6    1 "GET BETTER" 2 "GET WORSE" 3 "STAY THE SAME"
                       7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PAA7    1 "GET BETTER" 2 "GET WORSE" 3 "STAY THE SAME"
                       7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PAA8    1 "GET BETTER" 2 "GET WORSE" 3 "STAY THE SAME"
                       7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PA1     1 "EXCELLENT" 2 "VERY GOOD" 3 "GOOD" 4 "FAIR" 5 "POOR"
                       7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PA2     1 "EXCELLENT" 2 "VERY GOOD" 3 "GOOD" 4 "FAIR" 5 "POOR"
                       7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PA3     1 "MUCH BETTER" 2 "SOMEWHAT BETTER" 3 "ABOUT THE SAME"
                       4 "SOMEWHAT WORSE" 5 "MUCH WORSE" 7 "DON'T KNOW"
                       8 "REFUSED" ;
label define C1PA4     0 "NONE" 97 "DON'T KNOW" 98 "REFUSED" ;
label define C1PA4A    1 "PHYSICAL" 2 "MENTAL" 3 "COMBINATION" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PA4BA   97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PA4BB   97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PA4BC   97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PA5     97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PA5A    1 "PHYSICAL" 2 "MENTAL" 3 "COMBINATION" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PA5BA   97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PA5BB   97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PA5BC   97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PA6A    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PA6B    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PA6C    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PA6D    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PA7     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PA7A    96 "CONGENITAL/AT BIRTH" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define C1PA7BA   1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define C1PA7BB   1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define C1PA7BC   1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define C1PA7BD   1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define C1PA7BE   1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define C1PA7BF   1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define C1PA7BG   1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define C1PA7BH   1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define C1PA7BI   1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define C1PA7BJ   1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define C1PA7C    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA7D    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA8     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA8A    9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PA9     1 "HIGHER" 2 "LOWER" 3 "ABOUT THE SAME" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PA9A    1 "A LOT" 2 "SOMEWHAT" 3 "A LITTLE" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PA9B    1 "A LOT" 2 "SOMEWHAT" 3 "A LITTLE" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PHRTRS  0 "LOWEST RISK" 1 "LOWER RISK" 2 "LOW RISK"
                       3 "AVERAGE RISK" 4 "HIGH RISK" 5 "HIGHER RISK"
                       6 "HIGHEST RISK" 8 "NOT CALCULATED" ;
label define C1PHRTDX  0 "NEGATIVE" 1 "POSITIVE" 8 "NOT CALCULATED" ;
label define C1PA10A   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PA10B   1 "YES" 2 "NO" 6 "NO ONE" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PA10C   1 "YES" 2 "NO" 6 "NO ONE" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PA10D   1 "YES" 2 "NO" 6 "NO ONE" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PA10E   1 "YES" 2 "NO" 6 "NO ONE" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PA10F   1 "YES" 2 "NO" 6 "NO ONE" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PA10G   1 "YES" 2 "NO" 6 "NO ONE" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PA10H   1 "YES" 2 "NO" 6 "NO ONE" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PA11    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PA12    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PA13    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PA14    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PA15    1 "BYPASS" 2 "MEDICATION" 3 "NEITHER" 7 "DON'T KNOW"
                       8 "REFUSED" ;
label define C1PA16    1 "VERY" 2 "SOMEWHAT" 3 "NOT VERY SURE" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PA17    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PA18    1 "YES" 2 "NO" 3 "CANNOT WALK BECAUSE OF CHEST PAIN"
                       4 "CANNOT WALK FOR OTHER REASONS" 7 "DON'T KNOW"
                       8 "REFUSED" ;
label define C1PA19    1 "STOP" 2 "SLOW DOWN" 3 "CONTINUE AT THE SAME PACE"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA20    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA21    1 "10 MINUTES OR LESS" 2 "MORE THAN 10 MINUTES"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA22    1 "CENTER OF CHEST" 2 "LEFT SIDE OF CHEST ONLY"
                       3 "LEFT SIDE OF CHEST AND LEFT ARM"
                       4 "SOMEWHERE ELSE (SPECIFY)" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PANGIN  0 "BEST ANGINA CLASS" 1 "GOOD ANGINA CLASS"
                       2 "BAD ANGINA CLASS" 3 "WORST ANGINA CLASS"
                       6 "DID NOT MEET ROSE CRITERIA FOR ANGINA"
                       8 "NOT CALCULATED" ;
label define C1PA23    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PA23A   97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PA23B   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA23CA  1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define C1PA23CB  1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define C1PA23CC  1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define C1PA23CD  1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define C1PA23CE  1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define C1PA23CF  1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define C1PA23CG  1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define C1PA23CH  1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define C1PA23CI  1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define C1PA23CJ  1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define C1PA24    1 "YES" 2 "NO" 3 "SUSPECTS" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PA24A   0 "LESS THAN 1 YEAR" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define C1PA24B   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA24C   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA24D   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA24EA  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA24EB  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA24EC  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA24ED  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA24EE  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA24EF  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA25NM  0 "LESS THAN 1 MONTH" 96 "NEVER" 97 "DON'T KNOW"
                       98 "REFUSED" ;
label define C1PA25IN  1 "MONTHS" 2 "YEARS" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PA25A   1 "LOW" 2 "ABOUT NORMAL" 3 "SLIGHTLY RAISED" 4 "HIGH"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA25BS  997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define C1PA25BD  997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define C1PA26    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PA27    1 "HIGHER" 2 "LOWER" 3 "ABOUT THE SAME" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PA27A   1 "A LOT" 2 "SOMEWHAT" 3 "A LITTLE" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PA27B   1 "A LOT" 2 "SOMEWHAT" 3 "A LITTLE" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PCACRS  0 "LOWEST RISK" 1 "LOWER RISK" 2 "LOW RISK"
                       3 "AVERAGE RISK" 4 "HIGH RISK" 5 "HIGHER RISK"
                       6 "HIGHEST RISK" 8 "NOT CALCULATED" ;
label define C1PCACDX  0 "NEGATIVE" 1 "POSITIVE" 8 "NOT CALCULATED" ;
label define C1PA28A   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA28B   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA28C   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA28D   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA28E   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA28F   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA28G   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA28H   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA28I   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA28J   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA28AA  97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PA28BB  97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PA28CC  97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PA28DD  97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PA28EE  97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PA28FF  97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PA28GG  97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PA28HH  97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PA28II  97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PA28JJ  97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PA29    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA29AA  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA29AB  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA29AC  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA29AD  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA29AE  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA29AF  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA29AG  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA29AH  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA29AI  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA30A   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PA30B   1 "YES" 2 "NO" 6 "NO ONE" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PA30C   1 "YES" 2 "NO" 6 "NO ONE" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PA30D   1 "YES" 2 "NO" 6 "NO ONE" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PA30E   1 "YES" 2 "NO" 6 "NO ONE" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PA30F   1 "YES" 2 "NO" 6 "NO ONE" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PA31A   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA31B   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA31C   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA31D   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA31E   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA31F   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA31H   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA31I   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA31J   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA32A   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA32C   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA32D   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA32E   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA32G   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA32H   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA32J   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA33A   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA33C   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA33D   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA33E   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA33G   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA33H   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA33J   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA34A   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA34B   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA34C   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA34D   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA34E   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA34F   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA34H   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA34I   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA34J   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA35A   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA35B   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA35C   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA35D   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA35E   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA35F   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA35G   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA35H   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA35I   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA35J   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA36A   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA36AM  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PA36AY  9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PA36B   1 "1 OVARY REMOVED" 2 "BOTH OVARIES REMOVED" 3 "NO"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA36C   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA36DM  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PA36DY  9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PA36EM  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PA36EY  9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PA37    96 "NEVER HAD A CIGARETTE" 97 "DON'T KNOW"
                       98 "REFUSED" ;
label define C1PA38A   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA38B   97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PA39    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA40    96 "96 OR MORE CIGARETTES A DAY" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define C1PA41    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA42    97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PA43    96 "96 OR MORE CIGARETTES A DAY" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define C1PA44    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PA46    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PA48    1 "YES" 2 "NO" 3 "DON'T CURRENTLY HAVE A JOB"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA47    1 "YES" 2 "NO" 3 "NEVER HAD A JOB" 7 "DON'T KNOW"
                       8 "REFUSED" ;
label define C1PA49    96 "NEVER HAD A DRINK" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define C1PA50    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA51    1 "EVERY DAY" 2 "5 OR 6 DAYS A WEEK"
                       3 "3 OR 4 DAYS A WEEK" 4 "1 OR 2 DAYS A WEEK"
                       5 "LESS THAN 1 DAY A WEEK"
                       6 "NEVER DRINK (VOLUNTEERED)" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PA51A   1 "3 OR 4 DAYS A MONTH" 2 "1 OR 2 DAYS A MONTH"
                       3 "LESS OFTEN THAN 1 DAY A MONTH"
                       4 "NEVER DRINK (VOLUNTEERED)" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PA52    97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PA53    97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PA54    1 "EVERY DAY" 2 "5 OR 6 DAYS A WEEK"
                       3 "3 OR 4 DAYS A WEEK" 4 "1 OR 2 DAYS A WEEK"
                       5 "LESS THAN 1 DAY A WEEK"
                       6 "NEVER DRINK (VOLUNTEERED)" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PA54A   1 "3 OR 4 DAYS A MONTH" 2 "1 OR 2 DAYS A MONTH"
                       3 "LESS OFTEN THAN 1 DAY A MONTH"
                       4 "NEVER DRINK (VOLUNTEERED)" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PA55    97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PA56    97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PA57    0 "LESS THAN 1 YEAR" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define C1PA59    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PA60    1 "YES" 2 "NO" 6 "WAS ON ANTI-DEPRESSANT"
                       7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PA61    1 "ALL DAY LONG" 2 "MOST OF THE DAY"
                       3 "ABOUT HALF THE DAY" 4 "LESS THAN HALF THE DAY"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA62    1 "EVERY DAY" 2 "ALMOST EVERY DAY"
                       3 "LESS OFTEN THAN THAT" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PA63    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA64    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA65    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA65A   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA66    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA66A   1 "EVERY NIGHT" 2 "NEARLY EVERY NIGHT"
                       3 "LESS OFTEN THAN THAT" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PA67    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA68    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA69    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA70    97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PA71MO  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       96 "CURRENTLY FELL THIS WAY/HASN'T ENDED"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PA71YR  9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PDEPAF  0 "Lowest depressed affect"
                       7 "Highest depressed affect" ;
label define C1PDEPAD  0 "Negative" 1 "Positive" ;
label define C1PA72    1 "YES" 2 "NO" 6 "WAS ON ANTI-DEPRESSANT"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA73    1 "ALL DAY LONG" 2 "MOST OF THE DAY"
                       3 "ABOUT HALF THE DAY" 4 "LESS THAN HALF THE DAY"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA74    1 "EVERY DAY" 2 "ALMOST EVERY DAY"
                       3 "LESS OFTEN THAN THAT" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PA75    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA76    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA76A   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA77    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA77A   1 "EVERY NIGHT" 2 "NEARLY EVERY NIGHT"
                       3 "LESS OFTEN THAN THAT" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PA78    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA79    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA80    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA81    97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PA82MO  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       96 "CURRENTLY FELL THIS WAY/HASN'T ENDED"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PA82YR  9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PANHED  0 "Lowest depression/anhedonia"
                       6 "Highest depression/anhedonia" ;
label define C1PANHDX  0 "Negative" 1 "Positive" ;
label define C1PDEPRE  0 "Lowest depression" 7 "Highest depression" ;
label define C1PDEPDX  0 "Negative" 1 "Positive" ;
label define C1PA83    1 "MORE" 2 "LESS" 3 "ABOUT THE SAME"
                       4 "I DON'T WORRY AT ALL (VOLUNTEERED)" 7 "DON'T KNOW"
                       8 "REFUSED" ;
label define C1PA83A   1 "A LOT MORE" 2 "SOMEWHAT" 3 "A LITTLE"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA84    1 "EVERY DAY" 2 "JUST ABOUT EVERY DAY" 3 "MOST DAYS"
                       4 "ABOUT HALF THE DAYS" 5 "LESS THAN HALF THE DAYS"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA84A   1 "ALL DAY LONG" 2 "MOST OF THE DAY"
                       3 "ABOUT HALF THE DAY" 4 "LESS THAN HALF THE DAY"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA85    1 "ONE THING" 2 "MORE THAN ONE" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PA85A   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA86    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA86A   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA87    1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA87A   1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA88A   1 "MOST DAYS" 2 "ABOUT HALF THE DAYS"
                       3 "LESS THAN HALF THE DAYS" 4 "NEVER" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PA88B   1 "MOST DAYS" 2 "ABOUT HALF THE DAYS"
                       3 "LESS THAN HALF THE DAYS" 4 "NEVER" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PA88C   1 "MOST DAYS" 2 "ABOUT HALF THE DAYS"
                       3 "LESS THAN HALF THE DAYS" 4 "NEVER" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PA88D   1 "MOST DAYS" 2 "ABOUT HALF THE DAYS"
                       3 "LESS THAN HALF THE DAYS" 4 "NEVER" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PA88E   1 "MOST DAYS" 2 "ABOUT HALF THE DAYS"
                       3 "LESS THAN HALF THE DAYS" 4 "NEVER" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PA88F   1 "MOST DAYS" 2 "ABOUT HALF THE DAYS"
                       3 "LESS THAN HALF THE DAYS" 4 "NEVER" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PA88G   1 "MOST DAYS" 2 "ABOUT HALF THE DAYS"
                       3 "LESS THAN HALF THE DAYS" 4 "NEVER" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PA88H   1 "MOST DAYS" 2 "ABOUT HALF THE DAYS"
                       3 "LESS THAN HALF THE DAYS" 4 "NEVER" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PA88I   1 "MOST DAYS" 2 "ABOUT HALF THE DAYS"
                       3 "LESS THAN HALF THE DAYS" 4 "NEVER" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PA88J   1 "MOST DAYS" 2 "ABOUT HALF THE DAYS"
                       3 "LESS THAN HALF THE DAYS" 4 "NEVER" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PA89    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PANXIE  0 "Lowest anxiety score" 10 "Highest anxiety score" ;
label define C1PANXTD  0 "Negative" 1 "Positive" ;
label define C1PA90    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PA90A   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA91    997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define C1PA92    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA92A   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA92B   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA92C   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA92D   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA92E   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PA92F   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PPANIC  0 "Lowest panic score" 6 "Highest panic score" ;
label define C1PPANDX  0 "Negative" 1 "Positive" ;
label define C1PB1     1 "NO SCHOOL/SOME GRADE SCHOOL (1-6)"
                       2 "EIGHTH GRADE/JUNIOR HIGH SCHOOL (7-8)"
                       3 "SOME HIGH SCHOOL (9-12 NO DIPLOMA/NO GED)" 4 "GED"
                       5 "GRADUATED FROM HIGH SCHOOL"
                       6 "1 TO 2 YEARS OF COLLEGE, NO DEGREE YET"
                       7 "3 OR MORE YEARS OF COLLEGE, NO DEGREE YET"
                       8 "GRAD. FROM 2-YEAR COLLEGE, VOCATIONAL SCHOOL, OR ASSOC. DEG."
                       9 "GRADUATED FROM A 4- OR 5-YEAR COLLEGE, OR BACHELOR'S DEG."
                       10 "SOME GRADUATE SCHOOL" 11 "MASTER'S DEGREE"
                       12 "PH.D., ED.D., MD, DDS, LLB, LLD, JD, OR OTHER PROFESS'NL DEG."
                       97 "DON'T KNOW" 98 "REFUSED" ;
label define C1PB2     96 "NEVER HAD PAID JOB" 97 "DON'T KNOW" 98 "REFUSED" ;
label define C1PB2A1   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB2A2   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB2A3   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB2A4   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB2A5   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB2A6   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB2A7   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB2A8   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB2A9   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB2A10  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB2A11  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB2AWK  1 "WORKING NOW" 2 "SELF-EMPLOYED"
                       3 "LOOKING FOR WORK/UNEMPLOYED"
                       4 "TEMPORARILY LAID OFF" 5 "RETIRED" 6 "HOMEMAKER"
                       7 "FULL-TIME STUDENT" 8 "PART-TIME STUDENT"
                       9 "MATERNITY OR SICK LEAVE" 10 "PERMANENTLY DISABLED"
                       11 "OTHER" 97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PB2AA   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB2B    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB2BM   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PB2BY   9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PB2BBA  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB2BBB  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB2BBC  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB2BBD  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB2BBE  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB2BBF  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB2BBG  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB2BCN  997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define C1PB2BCU  1 "DAYS" 2 "WEEKS" 3 "MONTHS" 4 "YEARS" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PB2BDN  996 "STILL UNEMPLOYED" 997 "DON'T KNOW" 998 "REFUSED"
                       999 "INAPP" ;
label define C1PB2BDU  1 "DAYS" 2 "WEEKS" 3 "MONTHS" 4 "YEARS" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PB2CA   1 "MORE" 2 "LESS" 3 "THE SAME" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PB2CB   997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define C1PB2CB10 1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB2CB25 1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB2C2   997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define C1PB2DN   997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define C1PB2DU   1 "DAYS" 2 "WEEKS" 3 "MONTHS" 4 "YEARS" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PB3A    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB3B    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB3C    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB3D    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB3E    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB3F    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB3G    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB3H    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB3I    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB3J    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB3K    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB3WK   1 "WORKING NOW" 2 "SELF-EMPLOYED"
                       3 "LOOKING FOR WORK/UNEMPLOYED"
                       4 "TEMPORARILY LAID OFF" 5 "RETIRED" 6 "HOMEMAKER"
                       7 "FULL-TIME STUDENT" 8 "PART-TIME STUDENT"
                       9 "MATERNITY OR SICK LEAVE" 10 "PERMANENTLY DISABLED"
                       11 "OTHER" 97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PB4N    996 "NEVER WORKED" 997 "DON'T KNOW" 998 "REFUSED"
                       999 "INAPP" ;
label define C1PB4U    1 "DAYS" 2 "WEEKS" 3 "MONTHS" 4 "YEARS" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PB5A    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB5B    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB5C    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB5D    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB5E    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB5F    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB5G    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB5     1 "FIRED" 2 "LAID OFF" 3 "PLANT/COMPANY CLOSED"
                       4 "QUIT" 5 "RETIRED"
                       6 "WORK FORCE REDUCTION (VOLUNTEERED)" 7 "OTHER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PB5AB   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB6     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB7     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB7A    996 "996 OR MORE PEOPLE" 997 "DON'T KNOW"
                       998 "REFUSED" 999 "INAPP" ;
label define C1PB8A    1 "GOVERNMENT"
                       2 "PRIVATE COMPANY OR ORGANIZATION, INCLUDING NON-PROFITS"
                       3 "SELF-EMPLOYED" 4 "WORKING IN THE FAMILY BUSINESS"
                       5 "OTHER (SPECIFY)" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PB8A1   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB8C    1 "MANUFACTURING (MAKING A PRODUCT)"
                       2 "WHOLESALE (SELLING TO BUSINESSES)"
                       3 "RETAIL (SELLING TO CONSUMERS)"
                       4 "SOMETHING ELSE (EDUCATION, TRANSPORTATION, GOVERNMENT, HEALTH, ETC.)"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1POCC    10 "CHIEF EXECUTIVES"
                       20 "GENERAL AND OPERATIONS MANAGERS" 30 "LEGISLATORS"
                       40 "ADVERTISING AND PROMOTIONS MANAGERS"
                       50 "MARKETING AND SALES MANAGERS"
                       60 "PUBLIC RELATIONS AND FUNDRAISING MANAGERS"
                       100 "ADMINISTRATIVE SERVICES MANAGERS"
                       110 "COMPUTER AND INFORMATION SYSTEMS MANAGERS"
                       120 "FINANCIAL MANAGERS"
                       135 "COMPENSATION AND BENEFITS MANAGERS"
                       136 "HUMAN RESOURCES MANAGERS"
                       137 "TRAINING AND DEVELOPMENT MANAGERS"
                       140 "INDUSTRIAL PRODUCTION MANAGERS"
                       150 "PURCHASING MANAGERS"
                       160 "TRANSPORTATION, STORAGE, AND DISTRIBUTION MANAGERS"
                       205 "FARMERS, RANCHERS, AND OTHER AGRICULTURAL MANAGERS"
                       220 "CONSTRUCTION MANAGERS"
                       230 "EDUCATION ADMINISTRATORS"
                       300 "ARCHITECTURAL AND ENGINEERING MANAGERS"
                       310 "FOOD SERVICE MANAGERS"
                       325 "FUNERAL SERVICE MANAGERS" 330 "GAMING MANAGERS"
                       340 "LODGING MANAGERS"
                       350 "MEDICAL AND HEALTH SERVICES MANAGERS"
                       360 "NATURAL SCIENCES MANAGERS"
                       400 "POSTMASTERS AND MAIL SUPERINTENDENTS"
                       410 "PROPERTY, REAL ESTATE, AND COMMUNITY ASSOCIATION MANAGERS"
                       420 "SOCIAL AND COMMUNITY SERVICE MANAGERS"
                       425 "EMERGENCY MANAGEMENT DIRECTORS"
                       430 "MANAGERS, ALL OTHER"
                       500 "AGENTS AND BUSINESS MANAGERS OF ARTISTS, PERFORMERS, AND ATHLETES"
                       510 "BUYERS AND PURCHASING AGENTS, FARM PRODUCTS"
                       520 "WHOLESALE AND RETAIL BUYERS, EXCEPT FARM PRODUCTS"
                       530 "PURCHASING AGENTS, EXCEPT WHOLESALE, RETAIL, AND FARM PRODUCTS"
                       540 "CLAIMS ADJUSTERS, APPRAISERS, EXAMINERS, AND INVESTIGATORS"
                       565 "COMPLIANCE OFFICERS" 600 "COST ESTIMATORS"
                       630 "HUMAN RESOURCES WORKERS"
                       640 "COMPENSATION, BENEFITS, AND JOB ANALYSIS SPECIALISTS"
                       650 "TRAINING AND DEVELOPMENT SPECIALISTS"
                       700 "LOGISTICIANS" 710 "MANAGEMENT ANALYSTS"
                       725 "MEETING, CONVENTION, AND EVENT PLANNERS"
                       726 "FUNDRAISERS"
                       735 "MARKET RESEARCH ANALYSTS AND MARKETING SPECIALISTS"
                       740 "BUSINESS OPERATIONS SPECIALISTS, ALL OTHER"
                       800 "ACCOUNTANTS AND AUDITORS"
                       810 "APPRAISERS AND ASSESSORS OF REAL ESTATE"
                       820 "BUDGET ANALYSTS" 830 "CREDIT ANALYSTS"
                       840 "FINANCIAL ANALYSTS"
                       850 "PERSONAL FINANCIAL ADVISORS"
                       860 "INSURANCE UNDERWRITERS" 900 "FINANCIAL EXAMINERS"
                       910 "CREDIT COUNSELORS AND LOAN OFFICERS"
                       930 "TAX EXAMINERS AND COLLECTORS, AND REVENUE AGENTS"
                       940 "TAX PREPARERS"
                       950 "FINANCIAL SPECIALISTS, ALL OTHER"
                       1005 "COMPUTER AND INFORMATION RESEARCH SCIENTISTS"
                       1006 "COMPUTER SYSTEMS ANALYSTS"
                       1007 "INFORMATION SECURITY ANALYSTS"
                       1010 "COMPUTER PROGRAMMERS"
                       1020 "SOFTWARE DEVELOPERS, APPLICATIONS AND SYSTEMS SOFTWARE"
                       1030 "WEB DEVELOPERS"
                       1050 "COMPUTER SUPPORT SPECIALISTS"
                       1060 "DATABASE ADMINISTRATORS"
                       1105 "NETWORK AND COMPUTER SYSTEMS ADMINISTRATORS"
                       1106 "COMPUTER NETWORK ARCHITECTS"
                       1107 "COMPUTER OCCUPATIONS, ALL OTHER"
                       1200 "ACTUARIES" 1210 "MATHEMATICIANS"
                       1220 "OPERATIONS RESEARCH ANALYSTS"
                       1230 "STATISTICIANS"
                       1240 "MISCELLANEOUS MATHEMATICAL SCIENCE OCCUPATIONS"
                       1300 "ARCHITECTS, EXCEPT NAVAL"
                       1310 "SURVEYORS, CARTOGRAPHERS, AND PHOTOGRAMMETRISTS"
                       1320 "AEROSPACE ENGINEERS"
                       1330 "AGRICULTURAL ENGINEERS"
                       1340 "BIOMEDICAL ENGINEERS" 1350 "CHEMICAL ENGINEERS"
                       1360 "CIVIL ENGINEERS"
                       1400 "COMPUTER HARDWARE ENGINEERS"
                       1410 "ELECTRICAL AND ELECTRONICS ENGINEERS"
                       1420 "ENVIRONMENTAL ENGINEERS"
                       1430 "INDUSTRIAL ENGINEERS, INCLUDING HEALTH AND SAFETY"
                       1440 "MARINE ENGINEERS AND NAVAL ARCHITECTS"
                       1450 "MATERIALS ENGINEERS" 1460 "MECHANICAL ENGINEERS"
                       1500 "MINING AND GEOLOGICAL ENGINEERS, INCLUDING MINING SAFETY ENGINEERS"
                       1510 "NUCLEAR ENGINEERS" 1520 "PETROLEUM ENGINEERS"
                       1530 "ENGINEERS, ALL OTHER" 1540 "DRAFTERS"
                       1550 "ENGINEERING TECHNICIANS, EXCEPT DRAFTERS"
                       1560 "SURVEYING AND MAPPING TECHNICIANS"
                       1600 "AGRICULTURAL AND FOOD SCIENTISTS"
                       1610 "BIOLOGICAL SCIENTISTS"
                       1640 "CONSERVATION SCIENTISTS AND FORESTERS"
                       1650 "MEDICAL SCIENTISTS"
                       1660 "LIFE SCIENTISTS, ALL OTHER"
                       1700 "ASTRONOMERS AND PHYSICISTS"
                       1710 "ATMOSPHERIC AND SPACE SCIENTISTS"
                       1720 "CHEMISTS AND MATERIALS SCIENTISTS"
                       1740 "ENVIRONMENTAL SCIENTISTS AND GEOSCIENTISTS"
                       1760 "PHYSICAL SCIENTISTS, ALL OTHER"
                       1800 "ECONOMISTS" 1815 "SURVEY RESEARCHERS"
                       1820 "PSYCHOLOGISTS" 1830 "SOCIOLOGISTS"
                       1840 "URBAN AND REGIONAL PLANNERS"
                       1860 "MISCELLANEOUS SOCIAL SCIENTISTS AND RELATED WORKERS"
                       1900 "AGRICULTURAL AND FOOD SCIENCE TECHNICIANS"
                       1910 "BIOLOGICAL TECHNICIANS"
                       1920 "CHEMICAL TECHNICIANS"
                       1930 "GEOLOGICAL AND PETROLEUM TECHNICIANS"
                       1940 "NUCLEAR TECHNICIANS"
                       1950 "SOCIAL SCIENCE RESEARCH ASSISTANTS"
                       1965 "MISCELLANEOUS LIFE, PHYSICAL, AND SOCIAL SCIENCE TECHNICIANS"
                       2000 "COUNSELORS" 2010 "SOCIAL WORKERS"
                       2015 "PROBATION OFFICERS AND CORRECTIONAL TREATMENT SPECIALISTS"
                       2016 "SOCIAL AND HUMAN SERVICE ASSISTANTS"
                       2025 "MISCELLANEOUS COMMUNITY AND SOCIAL SERVICE SPECIALISTS, INCLUDING HEALTH EDUCATORS AND COMMUNITY HEALTH WORKERS"
                       2040 "CLERGY"
                       2050 "DIRECTORS, RELIGIOUS ACTIVITIES AND EDUCATION"
                       2060 "RELIGIOUS WORKERS, ALL OTHER" 2100 "LAWYERS"
                       2105 "JUDICIAL LAW CLERKS"
                       2110 "JUDGES, MAGISTRATES, AND OTHER JUDICIAL WORKERS"
                       2145 "PARALEGALS AND LEGAL ASSISTANTS"
                       2160 "MISCELLANEOUS LEGAL SUPPORT WORKERS"
                       2200 "POSTSECONDARY TEACHERS"
                       2300 "PRESCHOOL AND KINDERGARTEN TEACHERS"
                       2310 "ELEMENTARY AND MIDDLE SCHOOL TEACHERS"
                       2320 "SECONDARY SCHOOL TEACHERS"
                       2330 "SPECIAL EDUCATION TEACHERS"
                       2340 "OTHER TEACHERS AND INSTRUCTORS"
                       2400 "ARCHIVISTS, CURATORS, AND MUSEUM TECHNICIANS"
                       2430 "LIBRARIANS" 2440 "LIBRARY TECHNICIANS"
                       2540 "TEACHER ASSISTANTS"
                       2550 "OTHER EDUCATION, TRAINING, AND LIBRARY WORKERS"
                       2600 "ARTISTS AND RELATED WORKERS" 2630 "DESIGNERS"
                       2700 "ACTORS" 2710 "PRODUCERS AND DIRECTORS"
                       2720 "ATHLETES, COACHES, UMPIRES, AND RELATED WORKERS"
                       2740 "DANCERS AND CHOREOGRAPHERS"
                       2750 "MUSICIANS, SINGERS, AND RELATED WORKERS"
                       2760 "ENTERTAINERS AND PERFORMERS, SPORTS AND RELATED WORKERS, ALL OTHER"
                       2800 "ANNOUNCERS"
                       2810 "NEWS ANALYSTS, REPORTERS AND CORRESPONDENTS"
                       2825 "PUBLIC RELATIONS SPECIALISTS" 2830 "EDITORS"
                       2840 "TECHNICAL WRITERS" 2850 "WRITERS AND AUTHORS"
                       2860 "MISCELLANEOUS MEDIA AND COMMUNICATION WORKERS"
                       2900 "BROADCAST AND SOUND ENGINEERING TECHNICIANS AND RADIO OPERATORS"
                       2910 "PHOTOGRAPHERS"
                       2920 "TELEVISION, VIDEO, AND MOTION PICTURE CAMERA OPERATORS AND EDITORS"
                       2960 "MEDIA AND COMMUNICATION EQUIPMENT WORKERS, ALL OTHER"
                       3000 "CHIROPRACTORS" 3010 "DENTISTS"
                       3030 "DIETITIANS AND NUTRITIONISTS"
                       3040 "OPTOMETRISTS" 3050 "PHARMACISTS"
                       3060 "PHYSICIANS AND SURGEONS"
                       3110 "PHYSICIAN ASSISTANTS" 3120 "PODIATRISTS"
                       3140 "AUDIOLOGISTS" 3150 "OCCUPATIONAL THERAPISTS"
                       3160 "PHYSICAL THERAPISTS" 3200 "RADIATION THERAPISTS"
                       3210 "RECREATIONAL THERAPISTS"
                       3220 "RESPIRATORY THERAPISTS"
                       3230 "SPEECH-LANGUAGE PATHOLOGISTS"
                       3235 "EXERCISE PHYSIOLOGISTS"
                       3245 "THERAPISTS, ALL OTHER" 3250 "VETERINARIANS"
                       3255 "REGISTERED NURSES" 3256 "NURSE ANESTHETISTS"
                       3257 "NURSE MIDWIVES" 3258 "NURSE PRACTITIONERS"
                       3260 "HEALTH DIAGNOSING AND TREATING PRACTITIONERS, ALL OTHER"
                       3300 "CLINICAL LABORATORY TECHNOLOGISTS AND TECHNICIANS"
                       3310 "DENTAL HYGIENISTS"
                       3320 "DIAGNOSTIC RELATED TECHNOLOGISTS AND TECHNICIANS"
                       3400 "EMERGENCY MEDICAL TECHNICIANS AND PARAMEDICS"
                       3420 "HEALTH PRACTITIONER SUPPORT TECHNOLOGISTS AND TECHNICIANS"
                       3500 "LICENSED PRACTICAL AND LICENSED VOCATIONAL NURSES"
                       3510 "MEDICAL RECORDS AND HEALTH INFORMATION TECHNICIANS"
                       3520 "OPTICIANS, DISPENSING"
                       3535 "MISCELLANEOUS HEALTH TECHNOLOGISTS AND TECHNICIANS"
                       3540 "OTHER HEALTHCARE PRACTITIONERS AND TECHNICAL OCCUPATIONS"
                       3600 "NURSING, PSYCHIATRIC, AND HOME HEALTH AIDES"
                       3610 "OCCUPATIONAL THERAPY ASSISTANTS AND AIDES"
                       3620 "PHYSICAL THERAPIST ASSISTANTS AND AIDES"
                       3630 "MASSAGE THERAPISTS" 3640 "DENTAL ASSISTANTS"
                       3645 "MEDICAL ASSISTANTS"
                       3646 "MEDICAL TRANSCRIPTIONISTS" 3647 "PHARMACY AIDES"
                       3648 "VETERINARY ASSISTANTS AND LABORATORY ANIMAL CARETAKERS"
                       3649 "PHLEBOTOMISTS"
                       3655 "HEALTHCARE SUPPORT WORKERS, ALL OTHER, INCLUDING MEDICAL EQUIPMENT PREPARERS"
                       3700 "FIRST-LINE SUPERVISORS OF CORRECTIONAL OFFICERS"
                       3710 "FIRST-LINE SUPERVISORS OF POLICE AND DETECTIVES"
                       3720 "FIRST-LINE SUPERVISORS OF FIRE FIGHTING AND PREVENTION WORKERS"
                       3730 "FIRST-LINE SUPERVISORS OF PROTECTIVE SERVICE WORKERS, ALL OTHER"
                       3740 "FIREFIGHTERS" 3750 "FIRE INSPECTORS"
                       3800 "BAILIFFS, CORRECTIONAL OFFICERS, AND JAILERS"
                       3820 "DETECTIVES AND CRIMINAL INVESTIGATORS"
                       3830 "FISH AND GAME WARDENS"
                       3840 "PARKING ENFORCEMENT WORKERS"
                       3850 "POLICE AND SHERIFF'S PATROL OFFICERS"
                       3860 "TRANSIT AND RAILROAD POLICE"
                       3900 "ANIMAL CONTROL WORKERS"
                       3910 "PRIVATE DETECTIVES AND INVESTIGATORS"
                       3930 "SECURITY GUARDS AND GAMING SURVEILLANCE OFFICERS"
                       3940 "CROSSING GUARDS"
                       3945 "TRANSPORTATION SECURITY SCREENERS"
                       3955 "LIFEGUARDS AND OTHER RECREATIONAL, AND ALL OTHER PROTECTIVE SERVICE WORKERS"
                       4000 "CHEFS AND HEAD COOKS"
                       4010 "FIRST-LINE SUPERVISORS OF FOOD PREPARATION AND SERVING WORKERS"
                       4020 "COOKS" 4030 "FOOD PREPARATION WORKERS"
                       4040 "BARTENDERS"
                       4050 "COMBINED FOOD PREPARATION AND SERVING WORKERS, INCLUDING FAST FOOD"
                       4060 "COUNTER ATTENDANTS, CAFETERIA, FOOD CONCESSION, AND COFFEE SHOP"
                       4110 "WAITERS AND WAITRESSES"
                       4120 "FOOD SERVERS, NONRESTAURANT"
                       4130 "DINING ROOM AND CAFETERIA ATTENDANTS AND BARTENDER HELPERS"
                       4140 "DISHWASHERS"
                       4150 "HOSTS AND HOSTESSES, RESTAURANT, LOUNGE, AND COFFEE SHOP"
                       4160 "FOOD PREPARATION AND SERVING RELATED WORKERS, ALL OTHER"
                       4200 "FIRST-LINE SUPERVISORS OF HOUSEKEEPING AND JANITORIAL WORKERS"
                       4210 "FIRST-LINE SUPERVISORS OF LANDSCAPING, LAWN SERVICE, AND GROUNDSKEEPING WORKERS"
                       4220 "JANITORS AND BUILDING CLEANERS"
                       4230 "MAIDS AND HOUSEKEEPING CLEANERS"
                       4240 "PEST CONTROL WORKERS"
                       4250 "GROUNDS MAINTENANCE WORKERS"
                       4300 "FIRST-LINE SUPERVISORS OF GAMING WORKERS"
                       4320 "FIRST-LINE SUPERVISORS OF PERSONAL SERVICE WORKERS"
                       4340 "ANIMAL TRAINERS"
                       4350 "NONFARM ANIMAL CARETAKERS"
                       4400 "GAMING SERVICES WORKERS"
                       4410 "MOTION PICTURE PROJECTIONISTS"
                       4420 "USHERS, LOBBY ATTENDANTS, AND TICKET TAKERS"
                       4430 "MISCELLANEOUS ENTERTAINMENT ATTENDANTS AND RELATED WORKERS"
                       4460 "EMBALMERS AND FUNERAL ATTENDANTS"
                       4465 "MORTICIANS, UNDERTAKERS, AND FUNERAL DIRECTORS"
                       4500 "BARBERS"
                       4510 "HAIRDRESSERS, HAIRSTYLISTS, AND COSMETOLOGISTS"
                       4520 "MISCELLANEOUS PERSONAL APPEARANCE WORKERS"
                       4530 "BAGGAGE PORTERS, BELLHOPS, AND CONCIERGES"
                       4540 "TOUR AND TRAVEL GUIDES" 4600 "CHILDCARE WORKERS"
                       4610 "PERSONAL CARE AIDES"
                       4620 "RECREATION AND FITNESS WORKERS"
                       4640 "RESIDENTIAL ADVISORS"
                       4650 "PERSONAL CARE AND SERVICE WORKERS, ALL OTHER"
                       4700 "FIRST-LINE SUPERVISORS OF RETAIL SALES WORKERS"
                       4710 "FIRST-LINE SUPERVISORS OF NON-RETAIL SALES WORKERS"
                       4720 "CASHIERS" 4740 "COUNTER AND RENTAL CLERKS"
                       4750 "PARTS SALESPERSONS" 4760 "RETAIL SALESPERSONS"
                       4800 "ADVERTISING SALES AGENTS"
                       4810 "INSURANCE SALES AGENTS"
                       4820 "SECURITIES, COMMODITIES, AND FINANCIAL SERVICES SALES AGENTS"
                       4830 "TRAVEL AGENTS"
                       4840 "SALES REPRESENTATIVES, SERVICES, ALL OTHER"
                       4850 "SALES REPRESENTATIVES, WHOLESALE AND MANUFACTURING"
                       4900 "MODELS, DEMONSTRATORS, AND PRODUCT PROMOTERS"
                       4920 "REAL ESTATE BROKERS AND SALES AGENTS"
                       4930 "SALES ENGINEERS" 4940 "TELEMARKETERS"
                       4950 "DOOR-TO-DOOR SALES WORKERS, NEWS AND STREET VENDORS, AND RELATED WORKERS"
                       4965 "SALES AND RELATED WORKERS, ALL OTHER"
                       5000 "FIRST-LINE SUPERVISORS OF OFFICE AND ADMINISTRATIVE SUPPORT WORKERS"
                       5010 "SWITCHBOARD OPERATORS, INCLUDING ANSWERING SERVICE"
                       5020 "TELEPHONE OPERATORS"
                       5030 "COMMUNICATIONS EQUIPMENT OPERATORS, ALL OTHER"
                       5100 "BILL AND ACCOUNT COLLECTORS"
                       5110 "BILLING AND POSTING CLERKS"
                       5120 "BOOKKEEPING, ACCOUNTING, AND AUDITING CLERKS"
                       5130 "GAMING CAGE WORKERS"
                       5140 "PAYROLL AND TIMEKEEPING CLERKS"
                       5150 "PROCUREMENT CLERKS" 5160 "TELLERS"
                       5165 "FINANCIAL CLERKS, ALL OTHER"
                       5200 "BROKERAGE CLERKS" 5210 "CORRESPONDENCE CLERKS"
                       5220 "COURT, MUNICIPAL, AND LICENSE CLERKS"
                       5230 "CREDIT AUTHORIZERS, CHECKERS, AND CLERKS"
                       5240 "CUSTOMER SERVICE REPRESENTATIVES"
                       5250 "ELIGIBILITY INTERVIEWERS, GOVERNMENT PROGRAMS"
                       5260 "FILE CLERKS"
                       5300 "HOTEL, MOTEL, AND RESORT DESK CLERKS"
                       5310 "INTERVIEWERS, EXCEPT ELIGIBILITY AND LOAN"
                       5320 "LIBRARY ASSISTANTS, CLERICAL"
                       5330 "LOAN INTERVIEWERS AND CLERKS"
                       5340 "NEW ACCOUNTS CLERKS" 5350 "ORDER CLERKS"
                       5360 "HUMAN RESOURCES ASSISTANTS, EXCEPT PAYROLL AND TIMEKEEPING"
                       5400 "RECEPTIONISTS AND INFORMATION CLERKS"
                       5410 "RESERVATION AND TRANSPORTATION TICKET AGENTS AND TRAVEL CLERKS"
                       5420 "INFORMATION AND RECORD CLERKS, ALL OTHER"
                       5500 "CARGO AND FREIGHT AGENTS"
                       5510 "COURIERS AND MESSENGERS" 5520 "DISPATCHERS"
                       5530 "METER READERS, UTILITIES"
                       5540 "POSTAL SERVICE CLERKS"
                       5550 "POSTAL SERVICE MAIL CARRIERS"
                       5560 "POSTAL SERVICE MAIL SORTERS, PROCESSORS, AND PROCESSING MACHINE OPERATORS"
                       5600 "PRODUCTION, PLANNING, AND EXPEDITING CLERKS"
                       5610 "SHIPPING, RECEIVING, AND TRAFFIC CLERKS"
                       5620 "STOCK CLERKS AND ORDER FILLERS"
                       5630 "WEIGHERS, MEASURERS, CHECKERS, AND SAMPLERS, RECORDKEEPING"
                       5700 "SECRETARIES AND ADMINISTRATIVE ASSISTANTS"
                       5800 "COMPUTER OPERATORS" 5810 "DATA ENTRY KEYERS"
                       5820 "WORD PROCESSORS AND TYPISTS"
                       5830 "DESKTOP PUBLISHERS"
                       5840 "INSURANCE CLAIMS AND POLICY PROCESSING CLERKS"
                       5850 "MAIL CLERKS AND MAIL MACHINE OPERATORS, EXCEPT POSTAL SERVICE"
                       5860 "OFFICE CLERKS, GENERAL"
                       5900 "OFFICE MACHINE OPERATORS, EXCEPT COMPUTER"
                       5910 "PROOFREADERS AND COPY MARKERS"
                       5920 "STATISTICAL ASSISTANTS"
                       5940 "OFFICE AND ADMINISTRATIVE SUPPORT WORKERS, ALL OTHER"
                       6005 "FIRST-LINE SUPERVISORS OF FARMING, FISHING, AND FORESTRY WORKERS"
                       6010 "AGRICULTURAL INSPECTORS" 6020 "ANIMAL BREEDERS"
                       6040 "GRADERS AND SORTERS, AGRICULTURAL PRODUCTS"
                       6050 "MISCELLANEOUS AGRICULTURAL WORKERS"
                       6100 "FISHERS AND RELATED FISHING WORKERS"
                       6110 "HUNTERS AND TRAPPERS"
                       6120 "FOREST AND CONSERVATION WORKERS"
                       6130 "LOGGING WORKERS"
                       6200 "FIRST-LINE SUPERVISORS OF CONSTRUCTION TRADES AND EXTRACTION WORKERS"
                       6210 "BOILERMAKERS"
                       6220 "BRICKMASONS, BLOCKMASONS, AND STONEMASONS"
                       6230 "CARPENTERS"
                       6240 "CARPET, FLOOR, AND TILE INSTALLERS AND FINISHERS"
                       6250 "CEMENT MASONS, CONCRETE FINISHERS, AND TERRAZZO WORKERS"
                       6260 "CONSTRUCTION LABORERS"
                       6300 "PAVING, SURFACING, AND TAMPING EQUIPMENT OPERATORS"
                       6310 "PILE-DRIVER OPERATORS"
                       6320 "OPERATING ENGINEERS AND OTHER CONSTRUCTION EQUIPMENT OPERATORS"
                       6330 "DRYWALL INSTALLERS, CEILING TILE INSTALLERS, AND TAPERS"
                       6355 "ELECTRICIANS" 6360 "GLAZIERS"
                       6400 "INSULATION WORKERS"
                       6420 "PAINTERS, CONSTRUCTION AND MAINTENANCE"
                       6430 "PAPERHANGERS"
                       6440 "PIPELAYERS, PLUMBERS, PIPEFITTERS, AND STEAMFITTERS"
                       6460 "PLASTERERS AND STUCCO MASONS"
                       6500 "REINFORCING IRON AND REBAR WORKERS"
                       6515 "ROOFERS" 6520 "SHEET METAL WORKERS"
                       6530 "STRUCTURAL IRON AND STEEL WORKERS"
                       6540 "SOLAR PHOTOVOLTAIC INSTALLERS"
                       6600 "HELPERS, CONSTRUCTION TRADES"
                       6660 "CONSTRUCTION AND BUILDING INSPECTORS"
                       6700 "ELEVATOR INSTALLERS AND REPAIRERS"
                       6710 "FENCE ERECTORS"
                       6720 "HAZARDOUS MATERIALS REMOVAL WORKERS"
                       6730 "HIGHWAY MAINTENANCE WORKERS"
                       6740 "RAIL-TRACK LAYING AND MAINTENANCE EQUIPMENT OPERATORS"
                       6750 "SEPTIC TANK SERVICERS AND SEWER PIPE CLEANERS"
                       6765 "MISCELLANEOUS CONSTRUCTION AND RELATED WORKERS"
                       6800 "DERRICK, ROTARY DRILL, AND SERVICE UNIT OPERATORS, OIL, GAS, AND MINING"
                       6820 "EARTH DRILLERS, EXCEPT OIL AND GAS"
                       6830 "EXPLOSIVES WORKERS, ORDNANCE HANDLING EXPERTS, AND BLASTERS"
                       6840 "MINING MACHINE OPERATORS"
                       6910 "ROOF BOLTERS, MINING"
                       6920 "ROUSTABOUTS, OIL AND GAS"
                       6930 "HELPERS--EXTRACTION WORKERS"
                       6940 "OTHER EXTRACTION WORKERS"
                       7000 "FIRST-LINE SUPERVISORS OF MECHANICS, INSTALLERS, AND REPAIRERS"
                       7010 "COMPUTER, AUTOMATED TELLER, AND OFFICE MACHINE REPAIRERS"
                       7020 "RADIO AND TELECOMMUNICATIONS EQUIPMENT INSTALLERS AND REPAIRERS"
                       7030 "AVIONICS TECHNICIANS"
                       7040 "ELECTRIC MOTOR, POWER TOOL, AND RELATED REPAIRERS"
                       7050 "ELECTRICAL AND ELECTRONICS INSTALLERS AND REPAIRERS, TRANSPORTATION EQUIPMENT"
                       7100 "ELECTRICAL AND ELECTRONICS REPAIRERS, INDUSTRIAL AND UTILITY"
                       7110 "ELECTRONIC EQUIPMENT INSTALLERS AND REPAIRERS, MOTOR VEHICLES"
                       7120 "ELECTRONIC HOME ENTERTAINMENT EQUIPMENT INSTALLERS AND REPAIRERS"
                       7130 "SECURITY AND FIRE ALARM SYSTEMS INSTALLERS"
                       7140 "AIRCRAFT MECHANICS AND SERVICE TECHNICIANS"
                       7150 "AUTOMOTIVE BODY AND RELATED REPAIRERS"
                       7160 "AUTOMOTIVE GLASS INSTALLERS AND REPAIRERS"
                       7200 "AUTOMOTIVE SERVICE TECHNICIANS AND MECHANICS"
                       7210 "BUS AND TRUCK MECHANICS AND DIESEL ENGINE SPECIALISTS"
                       7220 "HEAVY VEHICLE AND MOBILE EQUIPMENT SERVICE TECHNICIANS AND MECHANICS"
                       7240 "SMALL ENGINE MECHANICS"
                       7260 "MISCELLANEOUS VEHICLE AND MOBILE EQUIPMENT MECHANICS, INSTALLERS, AND REPAIRERS"
                       7300 "CONTROL AND VALVE INSTALLERS AND REPAIRERS"
                       7315 "HEATING, AIR CONDITIONING, AND REFRIGERATION MECHANICS AND INSTALLERS"
                       7320 "HOME APPLIANCE REPAIRERS"
                       7330 "INDUSTRIAL AND REFRACTORY MACHINERY MECHANICS"
                       7340 "MAINTENANCE AND REPAIR WORKERS, GENERAL"
                       7350 "MAINTENANCE WORKERS, MACHINERY"
                       7360 "MILLWRIGHTS"
                       7410 "ELECTRICAL POWER-LINE INSTALLERS AND REPAIRERS"
                       7420 "TELECOMMUNICATIONS LINE INSTALLERS AND REPAIRERS"
                       7430 "PRECISION INSTRUMENT AND EQUIPMENT REPAIRERS"
                       7440 "WIND TURBINE SERVICE TECHNICIANS"
                       7510 "COIN, VENDING, AND AMUSEMENT MACHINE SERVICERS AND REPAIRERS"
                       7520 "COMMERCIAL DIVERS"
                       7540 "LOCKSMITHS AND SAFE REPAIRERS"
                       7550 "MANUFACTURED BUILDING AND MOBILE HOME INSTALLERS"
                       7560 "RIGGERS"
                       7600 "SIGNAL AND TRACK SWITCH REPAIRERS"
                       7610 "HELPERS--INSTALLATION, MAINTENANCE, AND REPAIR WORKERS"
                       7630 "OTHER INSTALLATION, MAINTENANCE, AND REPAIR WORKERS"
                       7700 "FIRST-LINE SUPERVISORS OF PRODUCTION AND OPERATING WORKERS"
                       7710 "AIRCRAFT STRUCTURE, SURFACES, RIGGING, AND SYSTEMS ASSEMBLERS"
                       7720 "ELECTRICAL, ELECTRONICS, AND ELECTROMECHANICAL ASSEMBLERS"
                       7730 "ENGINE AND OTHER MACHINE ASSEMBLERS"
                       7740 "STRUCTURAL METAL FABRICATORS AND FITTERS"
                       7750 "MISCELLANEOUS ASSEMBLERS AND FABRICATORS"
                       7800 "BAKERS"
                       7810 "BUTCHERS AND OTHER MEAT, POULTRY, AND FISH PROCESSING WORKERS"
                       7830 "FOOD AND TOBACCO ROASTING, BAKING, AND DRYING MACHINE OPERATORS AND TENDERS"
                       7840 "FOOD BATCHMAKERS"
                       7850 "FOOD COOKING MACHINE OPERATORS AND TENDERS"
                       7855 "FOOD PROCESSING WORKERS, ALL OTHER"
                       7900 "COMPUTER CONTROL PROGRAMMERS AND OPERATORS"
                       7920 "EXTRUDING AND DRAWING MACHINE SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC"
                       7930 "FORGING MACHINE SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC"
                       7940 "ROLLING MACHINE SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC"
                       7950 "CUTTING, PUNCHING, AND PRESS MACHINE SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC"
                       7960 "DRILLING AND BORING MACHINE TOOL SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC"
                       8000 "GRINDING, LAPPING, POLISHING, AND BUFFING MACHINE TOOL SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC"
                       8010 "LATHE AND TURNING MACHINE TOOL SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC"
                       8020 "MILLING AND PLANING MACHINE SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC"
                       8030 "MACHINISTS"
                       8040 "METAL FURNACE OPERATORS, TENDERS, POURERS, AND CASTERS"
                       8060 "MODEL MAKERS AND PATTERNMAKERS, METAL AND PLASTIC"
                       8100 "MOLDERS AND MOLDING MACHINE SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC"
                       8120 "MULTIPLE MACHINE TOOL SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC"
                       8130 "TOOL AND DIE MAKERS"
                       8140 "WELDING, SOLDERING, AND BRAZING WORKERS"
                       8150 "HEAT TREATING EQUIPMENT SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC"
                       8160 "LAYOUT WORKERS, METAL AND PLASTIC"
                       8200 "PLATING AND COATING MACHINE SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC"
                       8210 "TOOL GRINDERS, FILERS, AND SHARPENERS"
                       8220 "METAL WORKERS AND PLASTIC WORKERS, ALL OTHER"
                       8250 "PREPRESS TECHNICIANS AND WORKERS"
                       8255 "PRINTING PRESS OPERATORS"
                       8256 "PRINT BINDING AND FINISHING WORKERS"
                       8300 "LAUNDRY AND DRY-CLEANING WORKERS"
                       8310 "PRESSERS, TEXTILE, GARMENT, AND RELATED MATERIALS"
                       8320 "SEWING MACHINE OPERATORS"
                       8330 "SHOE AND LEATHER WORKERS AND REPAIRERS"
                       8340 "SHOE MACHINE OPERATORS AND TENDERS"
                       8350 "TAILORS, DRESSMAKERS, AND SEWERS"
                       8360 "TEXTILE BLEACHING AND DYEING MACHINE OPERATORS AND TENDERS"
                       8400 "TEXTILE CUTTING MACHINE SETTERS, OPERATORS, AND TENDERS"
                       8410 "TEXTILE KNITTING AND WEAVING MACHINE SETTERS, OPERATORS, AND TENDERS"
                       8420 "TEXTILE WINDING, TWISTING, AND DRAWING OUT MACHINE SETTERS, OPERATORS, AND TENDERS"
                       8430 "EXTRUDING AND FORMING MACHINE SETTERS, OPERATORS, AND TENDERS, SYNTHETIC AND GLASS FIBERS"
                       8440 "FABRIC AND APPAREL PATTERNMAKERS"
                       8450 "UPHOLSTERERS"
                       8460 "TEXTILE, APPAREL, AND FURNISHINGS WORKERS, ALL OTHER"
                       8500 "CABINETMAKERS AND BENCH CARPENTERS"
                       8510 "FURNITURE FINISHERS"
                       8520 "MODEL MAKERS AND PATTERNMAKERS, WOOD"
                       8530 "SAWING MACHINE SETTERS, OPERATORS, AND TENDERS, WOOD"
                       8540 "WOODWORKING MACHINE SETTERS, OPERATORS, AND TENDERS, EXCEPT SAWING"
                       8550 "WOODWORKERS, ALL OTHER"
                       8600 "POWER PLANT OPERATORS, DISTRIBUTORS, AND DISPATCHERS"
                       8610 "STATIONARY ENGINEERS AND BOILER OPERATORS"
                       8620 "WATER AND WASTEWATER TREATMENT PLANT AND SYSTEM OPERATORS"
                       8630 "MISCELLANEOUS PLANT AND SYSTEM OPERATORS"
                       8640 "CHEMICAL PROCESSING MACHINE SETTERS, OPERATORS, AND TENDERS"
                       8650 "CRUSHING, GRINDING, POLISHING, MIXING, AND BLENDING WORKERS"
                       8710 "CUTTING WORKERS"
                       8720 "EXTRUDING, FORMING, PRESSING, AND COMPACTING MACHINE SETTERS, OPERATORS, AND TENDERS"
                       8730 "FURNACE, KILN, OVEN, DRIER, AND KETTLE OPERATORS AND TENDERS"
                       8740 "INSPECTORS, TESTERS, SORTERS, SAMPLERS, AND WEIGHERS"
                       8750 "JEWELERS AND PRECIOUS STONE AND METAL WORKERS"
                       8760 "MEDICAL, DENTAL, AND OPHTHALMIC LABORATORY TECHNICIANS"
                       8800 "PACKAGING AND FILLING MACHINE OPERATORS AND TENDERS"
                       8810 "PAINTING WORKERS"
                       8830 "PHOTOGRAPHIC PROCESS WORKERS AND PROCESSING MACHINE OPERATORS"
                       8840 "SEMICONDUCTOR PROCESSORS"
                       8850 "ADHESIVE BONDING MACHINE OPERATORS AND TENDERS"
                       8860 "CLEANING, WASHING, AND METAL PICKLING EQUIPMENT OPERATORS AND TENDERS"
                       8900 "COOLING AND FREEZING EQUIPMENT OPERATORS AND TENDERS"
                       8910 "ETCHERS AND ENGRAVERS"
                       8920 "MOLDERS, SHAPERS, AND CASTERS, EXCEPT METAL AND PLASTIC"
                       8930 "PAPER GOODS MACHINE SETTERS, OPERATORS, AND TENDERS"
                       8940 "TIRE BUILDERS"
                       8950 "HELPERS--PRODUCTION WORKERS"
                       8965 "PRODUCTION WORKERS, ALL OTHER"
                       9000 "SUPERVISORS OF TRANSPORTATION AND MATERIAL MOVING WORKERS"
                       9030 "AIRCRAFT PILOTS AND FLIGHT ENGINEERS"
                       9040 "AIR TRAFFIC CONTROLLERS AND AIRFIELD OPERATIONS SPECIALISTS"
                       9050 "FLIGHT ATTENDANTS"
                       9110 "AMBULANCE DRIVERS AND ATTENDANTS, EXCEPT EMERGENCY MEDICAL TECHNICIANS"
                       9120 "BUS DRIVERS"
                       9130 "DRIVER/SALES WORKERS AND TRUCK DRIVERS"
                       9140 "TAXI DRIVERS AND CHAUFFEURS"
                       9150 "MOTOR VEHICLE OPERATORS, ALL OTHER"
                       9200 "LOCOMOTIVE ENGINEERS AND OPERATORS"
                       9230 "RAILROAD BRAKE, SIGNAL, AND SWITCH OPERATORS"
                       9240 "RAILROAD CONDUCTORS AND YARDMASTERS"
                       9260 "SUBWAY, STREETCAR, AND OTHER RAIL TRANSPORTATION WORKERS"
                       9300 "SAILORS AND MARINE OILERS"
                       9310 "SHIP AND BOAT CAPTAINS AND OPERATORS"
                       9330 "SHIP ENGINEERS" 9340 "BRIDGE AND LOCK TENDERS"
                       9350 "PARKING LOT ATTENDANTS"
                       9360 "AUTOMOTIVE AND WATERCRAFT SERVICE ATTENDANTS"
                       9410 "TRANSPORTATION INSPECTORS"
                       9415 "TRANSPORTATION ATTENDANTS, EXCEPT FLIGHT ATTENDANTS"
                       9420 "OTHER TRANSPORTATION WORKERS"
                       9500 "CONVEYOR OPERATORS AND TENDERS"
                       9510 "CRANE AND TOWER OPERATORS"
                       9520 "DREDGE, EXCAVATING, AND LOADING MACHINE OPERATORS"
                       9560 "HOIST AND WINCH OPERATORS"
                       9600 "INDUSTRIAL TRUCK AND TRACTOR OPERATORS"
                       9610 "CLEANERS OF VEHICLES AND EQUIPMENT"
                       9620 "LABORERS AND FREIGHT, STOCK, AND MATERIAL MOVERS, HAND"
                       9630 "MACHINE FEEDERS AND OFFBEARERS"
                       9640 "PACKERS AND PACKAGERS, HAND"
                       9650 "PUMPING STATION OPERATORS"
                       9720 "REFUSE AND RECYCLABLE MATERIAL COLLECTORS"
                       9730 "MINE SHUTTLE CAR OPERATORS"
                       9740 "TANK CAR, TRUCK, AND SHIP LOADERS"
                       9750 "MATERIAL MOVING WORKERS, ALL OTHER"
                       9800 "MILITARY OFFICER SPECIAL AND TACTICAL OPERATIONS LEADERS"
                       9810 "FIRST-LINE ENLISTED MILITARY SUPERVISORS"
                       9820 "MILITARY ENLISTED TACTICAL OPERATIONS AND AIR/WEAPONS SPECIALISTS AND CREW MEMBERS"
                       9830 "MILITARY, RANK NOT SPECIFIED"
                       9920 "UNEMPLOYED, WITH NO WORK EXPERIENCE IN THE LAST 5 YEARS OR EARLIER OR NEVER WORKED"
                       9996 "NOT IN LABOR FORCE" 9997 "UNKNOWN OR UNSURE"
                       9998 "MISSING OR NOT REPORTED" 9999 "INAPP" ;
label define C1PIND    170 "CROP PRODUCTION" 180 "ANIMAL PRODUCTION"
                       190 "FORESTRY EXCEPT LOGGING" 270 "LOGGING"
                       280 "FISHING, HUNTING, AND TRAPPING"
                       290 "SUPPORT ACTIVITIES FOR AGRICULTURE AND FORESTRY"
                       370 "OIL AND GAS EXTRACTION" 380 "COAL MINING"
                       390 "METAL ORE MINING"
                       470 "NONMETALLIC MINERAL MINING AND QUARRYING"
                       480 "NOT SPECIFIED TYPE OF MINING"
                       490 "SUPPORT ACTIVITIES FOR MINING"
                       570 "ELECTRIC POWER GENERATION, TRANSMISSION AND DISTRIBUTION"
                       580 "NATURAL GAS DISTRIBUTION"
                       590 "ELECTRIC AND GAS, AND OTHER COMBINATIONS"
                       670 "WATER, STEAM, AIR-CONDITIONING, AND IRRIGATION SYSTEMS"
                       680 "SEWAGE TREATMENT FACILITIES"
                       690 "NOT SPECIFIED UTILITIES" 770 "CONSTRUCTION"
                       1070 "ANIMAL FOOD, GRAIN AND OILSEED MILLING"
                       1080 "SUGAR AND CONFECTIONERY PRODUCTS"
                       1090 "FRUIT AND VEGETABLE PRESERVING AND SPECIALTY FOOD MANUFACTURING"
                       1170 "DAIRY PRODUCT MANUFACTURING"
                       1180 "ANIMAL SLAUGHTERING AND PROCESSING"
                       1190 "RETAIL BAKERIES" 1270 "BAKERIES, EXCEPT RETAIL"
                       1280 "SEAFOOD AND OTHER MISCELLANEOUS FOODS, N.E.C."
                       1290 "NOT SPECIFIED FOOD INDUSTRIES"
                       1370 "BEVERAGE MANUFACTURING"
                       1390 "TOBACCO MANUFACTURING"
                       1470 "FIBER, YARN, AND THREAD MILLS"
                       1480 "FABRIC MILLS, EXCEPT KNITTING MILLS"
                       1490 "TEXTILE AND FABRIC FINISHING AND COATING MILLS"
                       1570 "CARPET AND RUG MILLS"
                       1590 "TEXTILE PRODUCT MILLS, EXCEPT CARPETS AND RUGS"
                       1670 "KNITTING FABRIC MILLS, AND APPAREL KNITTING MILLS"
                       1680 "CUT AND SEW APPAREL MANUFACTURING"
                       1690 "APPAREL ACCESSORIES AND OTHER APPAREL MANUFACTURING"
                       1770 "FOOTWEAR MANUFACTURING"
                       1790 "LEATHER TANNING AND FINISHING AND OTHER ALLIED PRODUCTS MANUFACTURING"
                       1870 "PULP, PAPER, AND PAPERBOARD MILLS"
                       1880 "PAPERBOARD CONTAINERS AND BOXES"
                       1890 "MISCELLANEOUS PAPER AND PULP PRODUCTS"
                       1990 "PRINTING AND RELATED SUPPORT ACTIVITIES"
                       2070 "PETROLEUM REFINING"
                       2090 "MISCELLANEOUS PETROLEUM AND COAL PRODUCTS"
                       2170 "RESIN, SYNTHETIC RUBBER AND FIBERS, AND FILAMENTS MANUFACTURING"
                       2180 "AGRICULTURAL CHEMICAL MANUFACTURING"
                       2190 "PHARMACEUTICAL AND MEDICINE MANUFACTURING"
                       2270 "PAINT, COATING, AND ADHESIVE MANUFACTURING"
                       2280 "SOAP, CLEANING COMPOUND, AND COSMETICS MANUFACTURING"
                       2290 "INDUSTRIAL AND MISCELLANEOUS CHEMICALS"
                       2370 "PLASTICS PRODUCT MANUFACTURING"
                       2380 "TIRE MANUFACTURING"
                       2390 "RUBBER PRODUCTS, EXCEPT TIRES, MANUFACTURING"
                       2470 "POTTERY, CERAMICS, AND PLUMBING FIXTURE MANUFACTURING"
                       2480 "STRUCTURAL CLAY PRODUCT MANUFACTURING"
                       2490 "GLASS AND GLASS PRODUCT MANUFACTURING"
                       2570 "CEMENT, CONCRETE, LIME, AND GYPSUM PRODUCT MANUFACTURING"
                       2590 "MISCELLANEOUS NONMETALLIC MINERAL PRODUCT MANUFACTURING"
                       2670 "IRON AND STEEL MILLS AND STEEL PRODUCT MANUFACTURING"
                       2680 "ALUMINUM PRODUCTION AND PROCESSING"
                       2690 "NONFERROUS METAL, EXCEPT ALUMINUM, PRODUCTION AND PROCESSING"
                       2770 "FOUNDRIES" 2780 "METAL FORGINGS AND STAMPINGS"
                       2790 "CUTLERY AND HAND TOOL MANUFACTURING"
                       2870 "STRUCTURAL METALS, AND BOILER, TANK, AND SHIPPING CONTAINER MANUFACTURING"
                       2880 "MACHINE SHOPS; TURNED PRODUCT; SCREW, NUT AND BOLT MANUFACTURING"
                       2890 "COATING, ENGRAVING, HEAT TREATING AND ALLIED ACTIVITIES"
                       2970 "ORDNANCE"
                       2980 "MISCELLANEOUS FABRICATED METAL PRODUCTS MANUFACTURING"
                       2990 "NOT SPECIFIED METAL INDUSTRIES"
                       3070 "AGRICULTURAL IMPLEMENT MANUFACTURING"
                       3080 "CONSTRUCTION, AND MINING AND OIL AND GAS FIELD MACHINERY MANUFACTURING"
                       3090 "COMMERCIAL AND SERVICE INDUSTRY MACHINERY MANUFACTURING"
                       3170 "METALWORKING MACHINERY MANUFACTURING"
                       3180 "ENGINES, TURBINES, AND POWER TRANSMISSION EQUIPMENT MANUFACTURING"
                       3190 "MACHINERY MANUFACTURING, N.E.C."
                       3290 "NOT SPECIFIED MACHINERY MANUFACTURING"
                       3360 "COMPUTER AND PERIPHERAL EQUIPMENT MANUFACTURING"
                       3370 "COMMUNICATIONS, AUDIO, AND VIDEO EQUIPMENT MANUFACTURING"
                       3380 "NAVIGATIONAL, MEASURING, ELECTROMEDICAL, AND CONTROL INSTRUMENTS MANUFACTURING"
                       3390 "ELECTRONIC COMPONENT AND PRODUCT MANUFACTURING, N.E.C."
                       3470 "HOUSEHOLD APPLIANCE MANUFACTURING"
                       3490 "ELECTRIC LIGHTING AND ELECTRICAL EQUIPMENT MANUFACTURING, AND OTHER ELECTRICAL COMPONENT MANUFACTURING, N.E.C."
                       3570 "MOTOR VEHICLES AND MOTOR VEHICLE EQUIPMENT MANUFACTURING"
                       3580 "AIRCRAFT AND PARTS MANUFACTURING"
                       3590 "AEROSPACE PRODUCTS AND PARTS MANUFACTURING"
                       3670 "RAILROAD ROLLING STOCK MANUFACTURING"
                       3680 "SHIP AND BOAT BUILDING"
                       3690 "OTHER TRANSPORTATION EQUIPMENT MANUFACTURING"
                       3770 "SAWMILLS AND WOOD PRESERVATION"
                       3780 "VENEER, PLYWOOD, AND ENGINEERED WOOD PRODUCTS"
                       3790 "PREFABRICATED WOOD BUILDINGS AND MOBILE HOMES MANUFACTURING"
                       3870 "MISCELLANEOUS WOOD PRODUCT MANUFACTURING"
                       3890 "FURNITURE AND RELATED PRODUCT MANUFACTURING"
                       3960 "MEDICAL EQUIPMENT AND SUPPLIES MANUFACTURING"
                       3970 "SPORTING AND ATHLETIC GOODS, AND DOLL, TOY AND GAME MANUFACTURING"
                       3980 "MISCELLANEOUS MANUFACTURING, N.E.C."
                       3990 "NOT SPECIFIED MANUFACTURING INDUSTRIES"
                       4070 "MOTOR VEHICLES, PARTS AND SUPPLIES MERCHANT WHOLESALERS"
                       4080 "FURNITURE AND HOME FURNISHING MERCHANT WHOLESALERS"
                       4090 "LUMBER AND OTHER CONSTRUCTION MATERIALS MERCHANT WHOLESALERS"
                       4170 "PROFESSIONAL AND COMMERCIAL EQUIPMENT AND SUPPLIES MERCHANT WHOLESALERS"
                       4180 "METALS AND MINERALS, EXCEPT PETROLEUM, MERCHANT WHOLESALERS"
                       4190 "ELECTRICAL AND ELECTRONIC GOODS MERCHANT WHOLESALERS"
                       4260 "HARDWARE, PLUMBING AND HEATING EQUIPMENT, AND SUPPLIES MERCHANT WHOLESALERS"
                       4270 "MACHINERY, EQUIPMENT, AND SUPPLIES MERCHANT WHOLESALERS"
                       4280 "RECYCLABLE MATERIAL MERCHANT WHOLESALERS"
                       4290 "MISCELLANEOUS DURABLE GOODS MERCHANT WHOLESALERS"
                       4370 "PAPER AND PAPER PRODUCTS MERCHANT WHOLESALERS"
                       4380 "DRUGS, SUNDRIES, AND CHEMICAL AND ALLIED PRODUCTS MERCHANT WHOLESALERS"
                       4390 "APPAREL, FABRICS, AND NOTIONS MERCHANT WHOLESALERS"
                       4470 "GROCERIES AND RELATED PRODUCTS MERCHANT WHOLESALERS"
                       4480 "FARM PRODUCT RAW MATERIALS MERCHANT WHOLESALERS"
                       4490 "PETROLEUM AND PETROLEUM PRODUCTS MERCHANT WHOLESALERS"
                       4560 "ALCOHOLIC BEVERAGES MERCHANT WHOLESALERS"
                       4570 "FARM SUPPLIES MERCHANT WHOLESALERS"
                       4580 "MISCELLANEOUS NONDURABLE GOODS MERCHANT WHOLESALERS"
                       4585 "WHOLESALE ELECTRONIC MARKETS AGENTS AND BROKERS"
                       4590 "NOT SPECIFIED WHOLESALE TRADE"
                       4670 "AUTOMOBILE DEALERS"
                       4680 "OTHER MOTOR VEHICLE DEALERS"
                       4690 "AUTO PARTS, ACCESSORIES, AND TIRE STORES"
                       4770 "FURNITURE AND HOME FURNISHINGS STORES"
                       4780 "HOUSEHOLD APPLIANCE STORES"
                       4790 "RADIO, TV, AND COMPUTER STORES"
                       4870 "BUILDING MATERIAL AND SUPPLIES DEALERS"
                       4880 "HARDWARE STORES"
                       4890 "LAWN AND GARDEN EQUIPMENT AND SUPPLIES STORES"
                       4970 "GROCERY STORES" 4980 "SPECIALTY FOOD STORES"
                       4990 "BEER, WINE, AND LIQUOR STORES"
                       5070 "PHARMACIES AND DRUG STORES"
                       5080 "HEALTH AND PERSONAL CARE, EXCEPT DRUG, STORES"
                       5090 "GASOLINE STATIONS" 5170 "CLOTHING STORES"
                       5180 "SHOE STORES"
                       5190 "JEWELRY, LUGGAGE, AND LEATHER GOODS STORES"
                       5270 "SPORTING GOODS, CAMERA, AND HOBBY AND TOY STORES"
                       5280 "SEWING, NEEDLEWORK, AND PIECE GOODS STORES"
                       5290 "MUSIC STORES"
                       5370 "BOOK STORES AND NEWS DEALERS"
                       5380 "DEPARTMENT STORES AND DISCOUNT STORES"
                       5390 "MISCELLANEOUS GENERAL MERCHANDISE STORES"
                       5470 "RETAIL FLORISTS"
                       5480 "OFFICE SUPPLIES AND STATIONERY STORES"
                       5490 "USED MERCHANDISE STORES"
                       5570 "GIFT, NOVELTY, AND SOUVENIR SHOPS"
                       5580 "MISCELLANEOUS RETAIL STORES"
                       5590 "ELECTRONIC SHOPPING" 5591 "ELECTRONIC AUCTIONS"
                       5592 "MAIL ORDER HOUSES"
                       5670 "VENDING MACHINE OPERATORS" 5680 "FUEL DEALERS"
                       5690 "OTHER DIRECT SELLING ESTABLISHMENTS"
                       5790 "NOT SPECIFIED RETAIL TRADE"
                       6070 "AIR TRANSPORTATION" 6080 "RAIL TRANSPORTATION"
                       6090 "WATER TRANSPORTATION"
                       6170 "TRUCK TRANSPORTATION"
                       6180 "BUS SERVICE AND URBAN TRANSIT"
                       6190 "TAXI AND LIMOUSINE SERVICE"
                       6270 "PIPELINE TRANSPORTATION"
                       6280 "SCENIC AND SIGHTSEEING TRANSPORTATION"
                       6290 "SERVICES INCIDENTAL TO TRANSPORTATION"
                       6370 "POSTAL SERVICE" 6380 "COURIERS AND MESSENGERS"
                       6390 "WAREHOUSING AND STORAGE"
                       6470 "NEWSPAPER PUBLISHERS"
                       6480 "PERIODICAL, BOOK, AND DIRECTORY PUBLISHERS"
                       6490 "SOFTWARE PUBLISHERS"
                       6570 "MOTION PICTURES AND VIDEO INDUSTRIES"
                       6590 "SOUND RECORDING INDUSTRIES"
                       6670 "RADIO AND TELEVISION BROADCASTING AND CABLE SUBSCRIPTION PROGRAMMING"
                       6672 "INTERNET PUBLISHING AND BROADCASTING AND WEB SEARCH PORTALS"
                       6680 "WIRED TELECOMMUNICATIONS CARRIERS"
                       6690 "OTHER TELECOMMUNICATIONS SERVICES"
                       6695 "DATA PROCESSING, HOSTING, AND RELATED SERVICES"
                       6770 "LIBRARIES AND ARCHIVES"
                       6780 "OTHER INFORMATION SERVICES"
                       6870 "BANKING AND RELATED ACTIVITIES"
                       6880 "SAVINGS INSTITUTIONS, INCLUDING CREDIT UNIONS"
                       6890 "NON-DEPOSITORY CREDIT AND RELATED ACTIVITIES"
                       6970 "SECURITIES, COMMODITIES, FUNDS, TRUSTS, AND OTHER FINANCIAL INVESTMENTS"
                       6990 "INSURANCE CARRIERS AND RELATED ACTIVITIES"
                       7070 "REAL ESTATE"
                       7080 "AUTOMOTIVE EQUIPMENT RENTAL AND LEASING"
                       7170 "VIDEO TAPE AND DISK RENTAL"
                       7180 "OTHER CONSUMER GOODS RENTAL"
                       7190 "COMMERCIAL, INDUSTRIAL, AND OTHER INTANGIBLE ASSETS RENTAL AND LEASING"
                       7270 "LEGAL SERVICES"
                       7280 "ACCOUNTING, TAX PREPARATION, BOOKKEEPING, AND PAYROLL SERVICES"
                       7290 "ARCHITECTURAL, ENGINEERING, AND RELATED SERVICES"
                       7370 "SPECIALIZED DESIGN SERVICES"
                       7380 "COMPUTER SYSTEMS DESIGN AND RELATED SERVICES"
                       7390 "MANAGEMENT, SCIENTIFIC, AND TECHNICAL CONSULTING SERVICES"
                       7460 "SCIENTIFIC RESEARCH AND DEVELOPMENT SERVICES"
                       7470 "ADVERTISING AND RELATED SERVICES"
                       7480 "VETERINARY SERVICES"
                       7490 "OTHER PROFESSIONAL, SCIENTIFIC, AND TECHNICAL SERVICES"
                       7570 "MANAGEMENT OF COMPANIES AND ENTERPRISES"
                       7580 "EMPLOYMENT SERVICES"
                       7590 "BUSINESS SUPPORT SERVICES"
                       7670 "TRAVEL ARRANGEMENTS AND RESERVATION SERVICES"
                       7680 "INVESTIGATION AND SECURITY SERVICES"
                       7690 "SERVICES TO BUILDINGS AND DWELLINGS (EXCEPT CLEANING DURING CONSTRUCTION AND IMMEDIATELY AFTER CONSTRUCTION)"
                       7770 "LANDSCAPING SERVICES"
                       7780 "OTHER ADMINISTRATIVE AND OTHER SUPPORT SERVICES"
                       7790 "WASTE MANAGEMENT AND REMEDIATION SERVICES"
                       7860 "ELEMENTARY AND SECONDARY SCHOOLS"
                       7870 "COLLEGES AND UNIVERSITIES, INCLUDING JUNIOR COLLEGES"
                       7880 "BUSINESS, TECHNICAL, AND TRADE SCHOOLS AND TRAINING"
                       7890 "OTHER SCHOOLS AND INSTRUCTION, AND EDUCATIONAL SUPPORT SERVICES"
                       7970 "OFFICES OF PHYSICIANS"
                       7980 "OFFICES OF DENTISTS"
                       7990 "OFFICES OF CHIROPRACTORS"
                       8070 "OFFICES OF OPTOMETRISTS"
                       8080 "OFFICES OF OTHER HEALTH PRACTITIONERS"
                       8090 "OUTPATIENT CARE CENTERS"
                       8170 "HOME HEALTH CARE SERVICES"
                       8180 "OTHER HEALTH CARE SERVICES" 8190 "HOSPITALS"
                       8270 "NURSING CARE FACILITIES"
                       8290 "RESIDENTIAL CARE FACILITIES, WITHOUT NURSING"
                       8370 "INDIVIDUAL AND FAMILY SERVICES"
                       8380 "COMMUNITY FOOD AND HOUSING, AND EMERGENCY SERVICES"
                       8390 "VOCATIONAL REHABILITATION SERVICES"
                       8470 "CHILD DAY CARE SERVICES"
                       8560 "INDEPENDENT ARTISTS, PERFORMING ARTS, SPECTATOR SPORTS, AND RELATED INDUSTRIES"
                       8570 "MUSEUMS, ART GALLERIES, HISTORICAL SITES, AND SIMILAR INSTITUTIONS"
                       8580 "BOWLING CENTERS"
                       8590 "OTHER AMUSEMENT, GAMBLING, AND RECREATION INDUSTRIES"
                       8660 "TRAVELER ACCOMMODATION"
                       8670 "RECREATIONAL VEHICLE PARKS AND CAMPS, AND ROOMING AND BOARDING HOUSES"
                       8680 "RESTAURANTS AND OTHER FOOD SERVICES"
                       8690 "DRINKING PLACES, ALCOHOLIC BEVERAGES"
                       8770 "AUTOMOTIVE REPAIR AND MAINTENANCE"
                       8780 "CAR WASHES"
                       8790 "ELECTRONIC AND PRECISION EQUIPMENT REPAIR AND MAINTENANCE"
                       8870 "COMMERCIAL AND INDUSTRIAL MACHINERY AND EQUIPMENT REPAIR AND MAINTENANCE"
                       8880 "PERSONAL AND HOUSEHOLD GOODS REPAIR AND MAINTENANCE"
                       8890 "FOOTWEAR AND LEATHER GOODS REPAIR"
                       8970 "BARBER SHOPS" 8980 "BEAUTY SALONS"
                       8990 "NAIL SALONS AND OTHER PERSONAL CARE SERVICES"
                       9070 "DRYCLEANING AND LAUNDRY SERVICES"
                       9080 "FUNERAL HOMES, CEMETERIES, AND CREMATORIES"
                       9090 "OTHER PERSONAL SERVICES"
                       9160 "RELIGIOUS ORGANIZATIONS"
                       9170 "CIVIC, SOCIAL, ADVOCACY ORGANIZATIONS, AND GRANTMAKING AND GIVING SERVICES"
                       9180 "LABOR UNIONS"
                       9190 "BUSINESS, PROFESSIONAL, POLITICAL, AND SIMILAR ORGANIZATIONS"
                       9290 "PRIVATE HOUSEHOLDS"
                       9370 "EXECUTIVE OFFICES AND LEGISLATIVE BODIES"
                       9380 "PUBLIC FINANCE ACTIVITIES"
                       9390 "OTHER GENERAL GOVERNMENT AND SUPPORT"
                       9470 "JUSTICE, PUBLIC ORDER, AND SAFETY ACTIVITIES"
                       9480 "ADMINISTRATION OF HUMAN RESOURCE PROGRAMS"
                       9490 "ADMINISTRATION OF ENVIRONMENTAL QUALITY AND HOUSING PROGRAMS"
                       9570 "ADMINISTRATION OF ECONOMIC PROGRAMS AND SPACE RESEARCH"
                       9590 "NATIONAL SECURITY AND INTERNATIONAL AFFAIRS"
                       9670 "U. S ARMY" 9680 "U. S. AIR FORCE"
                       9690 "U. S. NAVY" 9770 "U. S. MARINES"
                       9780 "U. S. COAST GUARD"
                       9790 "U. S. ARMED FORCES, BRANCH NOT SPECIFIED"
                       9870 "MILITARY RESERVES OR NATIONAL GUARD"
                       9996 "NOT IN LABOR FORCE" 9997 "UNKNOWN OR UNSURE"
                       9998 "MISSING OR NOT REPORTED" 9999 "INAPP" ;
label define C1POCMAJ  1 "MANAGEMENT, BUSINESS, AND FINANCIAL OCCUPATIONS"
                       2 "PROFESSIONAL AND RELATED OCCUPATIONS"
                       3 "SERVICE OCCUPATIONS"
                       4 "SALES AND RELATED OCCUPATIONS"
                       5 "OFFICE AND ADMINISTRATIVE SUPPORT OCCUPATIONS"
                       6 "FARMING, FISHING, AND FORESTRY OCCUPATIONS"
                       7 "CONSTRUCTION AND EXTRACTION OCCUPATIONS"
                       8 "INSTALLATION, MAINTENANCE, AND REPAIE OCCUPATIONS"
                       9 "PRODUCTION OCCUPATIONS"
                       10 "TRANSPORTATION AND MATERIAL MOVING OCCUPATIONS"
                       11 "ARMED FORCES" 96 "NOT IN LABOR FORCE"
                       97 "UNKNOWN OR UNSURE" 98 "MISSING OR NOT REPORTED"
                       99 "INAPP" ;
label define C1PINDMJ  1 "AGRICULTURE, FORESTRY FISHING, HUNTING, AND MINING"
                       2 "CONSTRUCTION" 3 "MANUFACTURING" 4 "WHOLESALE TRADE"
                       5 "RETAIL TRADE"
                       6 "TRANSPORTATION AND WAREHOUSING AND UTILITIES"
                       7 "INFORMATION"
                       8 "FINANCE AND INSURANCE, AND REAL ESTATE, AND RENTAL AND LEASING"
                       9 "PROFESSIONAL, SCIENTIFIC, AND MANAGEMENT, AND ADMINISTRATIVE, AND WASTE MANAGEMENT SERVICES"
                       10 "EDUCATIONAL SERVICES, AND HEALTH CARE AND SOCIAL ASSISTANCE"
                       11 "ARTS,ENTERTAINMENT, AND RECREATION, AND ACCOMMODATION AND FOOD SERVICES"
                       12 "OTHER SERVICES, EXCEPT PUBLIC ADMINISTRATION"
                       13 "PUBLIC ADMINISTRATION" 14 "MILITARY"
                       96 "NOT IN LABOR FORCE" 97 "UNKNOWN OR UNSURE"
                       98 "MISSING OR NOT REPORTED" 99 "INAPP" ;
label define C1PB12    997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define C1PB12A   997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define C1PB13    997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define C1PB14    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB14A   997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define C1PB15A   1 "GOVERNMENT"
                       2 "PRIVATE COMPANY OR ORGANIZATION, INCLUDING NON-PROFITS"
                       3 "SELF-EMPLOYED" 4 "WORKING IN THE FAMILY BUSINESS"
                       5 "OTHER (SPECIFY)" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PB15A1  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB15C   1 "MANUFACTURING (MAKING A PRODUCT)"
                       2 "WHOLESALE (SELLING TO BUSINESSES)"
                       3 "RETAIL (SELLING TO CONSUMERS)"
                       4 "SOMETHING ELSE (EDUCATION, TRANSPORTATION, GOVERNMENT, HEALTH, ETC.)"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1POCCP   10 "CHIEF EXECUTIVES"
                       20 "GENERAL AND OPERATIONS MANAGERS" 30 "LEGISLATORS"
                       40 "ADVERTISING AND PROMOTIONS MANAGERS"
                       50 "MARKETING AND SALES MANAGERS"
                       60 "PUBLIC RELATIONS AND FUNDRAISING MANAGERS"
                       100 "ADMINISTRATIVE SERVICES MANAGERS"
                       110 "COMPUTER AND INFORMATION SYSTEMS MANAGERS"
                       120 "FINANCIAL MANAGERS"
                       135 "COMPENSATION AND BENEFITS MANAGERS"
                       136 "HUMAN RESOURCES MANAGERS"
                       137 "TRAINING AND DEVELOPMENT MANAGERS"
                       140 "INDUSTRIAL PRODUCTION MANAGERS"
                       150 "PURCHASING MANAGERS"
                       160 "TRANSPORTATION, STORAGE, AND DISTRIBUTION MANAGERS"
                       205 "FARMERS, RANCHERS, AND OTHER AGRICULTURAL MANAGERS"
                       220 "CONSTRUCTION MANAGERS"
                       230 "EDUCATION ADMINISTRATORS"
                       300 "ARCHITECTURAL AND ENGINEERING MANAGERS"
                       310 "FOOD SERVICE MANAGERS"
                       325 "FUNERAL SERVICE MANAGERS" 330 "GAMING MANAGERS"
                       340 "LODGING MANAGERS"
                       350 "MEDICAL AND HEALTH SERVICES MANAGERS"
                       360 "NATURAL SCIENCES MANAGERS"
                       400 "POSTMASTERS AND MAIL SUPERINTENDENTS"
                       410 "PROPERTY, REAL ESTATE, AND COMMUNITY ASSOCIATION MANAGERS"
                       420 "SOCIAL AND COMMUNITY SERVICE MANAGERS"
                       425 "EMERGENCY MANAGEMENT DIRECTORS"
                       430 "MANAGERS, ALL OTHER"
                       500 "AGENTS AND BUSINESS MANAGERS OF ARTISTS, PERFORMERS, AND ATHLETES"
                       510 "BUYERS AND PURCHASING AGENTS, FARM PRODUCTS"
                       520 "WHOLESALE AND RETAIL BUYERS, EXCEPT FARM PRODUCTS"
                       530 "PURCHASING AGENTS, EXCEPT WHOLESALE, RETAIL, AND FARM PRODUCTS"
                       540 "CLAIMS ADJUSTERS, APPRAISERS, EXAMINERS, AND INVESTIGATORS"
                       565 "COMPLIANCE OFFICERS" 600 "COST ESTIMATORS"
                       630 "HUMAN RESOURCES WORKERS"
                       640 "COMPENSATION, BENEFITS, AND JOB ANALYSIS SPECIALISTS"
                       650 "TRAINING AND DEVELOPMENT SPECIALISTS"
                       700 "LOGISTICIANS" 710 "MANAGEMENT ANALYSTS"
                       725 "MEETING, CONVENTION, AND EVENT PLANNERS"
                       726 "FUNDRAISERS"
                       735 "MARKET RESEARCH ANALYSTS AND MARKETING SPECIALISTS"
                       740 "BUSINESS OPERATIONS SPECIALISTS, ALL OTHER"
                       800 "ACCOUNTANTS AND AUDITORS"
                       810 "APPRAISERS AND ASSESSORS OF REAL ESTATE"
                       820 "BUDGET ANALYSTS" 830 "CREDIT ANALYSTS"
                       840 "FINANCIAL ANALYSTS"
                       850 "PERSONAL FINANCIAL ADVISORS"
                       860 "INSURANCE UNDERWRITERS" 900 "FINANCIAL EXAMINERS"
                       910 "CREDIT COUNSELORS AND LOAN OFFICERS"
                       930 "TAX EXAMINERS AND COLLECTORS, AND REVENUE AGENTS"
                       940 "TAX PREPARERS"
                       950 "FINANCIAL SPECIALISTS, ALL OTHER"
                       1005 "COMPUTER AND INFORMATION RESEARCH SCIENTISTS"
                       1006 "COMPUTER SYSTEMS ANALYSTS"
                       1007 "INFORMATION SECURITY ANALYSTS"
                       1010 "COMPUTER PROGRAMMERS"
                       1020 "SOFTWARE DEVELOPERS, APPLICATIONS AND SYSTEMS SOFTWARE"
                       1030 "WEB DEVELOPERS"
                       1050 "COMPUTER SUPPORT SPECIALISTS"
                       1060 "DATABASE ADMINISTRATORS"
                       1105 "NETWORK AND COMPUTER SYSTEMS ADMINISTRATORS"
                       1106 "COMPUTER NETWORK ARCHITECTS"
                       1107 "COMPUTER OCCUPATIONS, ALL OTHER"
                       1200 "ACTUARIES" 1210 "MATHEMATICIANS"
                       1220 "OPERATIONS RESEARCH ANALYSTS"
                       1230 "STATISTICIANS"
                       1240 "MISCELLANEOUS MATHEMATICAL SCIENCE OCCUPATIONS"
                       1300 "ARCHITECTS, EXCEPT NAVAL"
                       1310 "SURVEYORS, CARTOGRAPHERS, AND PHOTOGRAMMETRISTS"
                       1320 "AEROSPACE ENGINEERS"
                       1330 "AGRICULTURAL ENGINEERS"
                       1340 "BIOMEDICAL ENGINEERS" 1350 "CHEMICAL ENGINEERS"
                       1360 "CIVIL ENGINEERS"
                       1400 "COMPUTER HARDWARE ENGINEERS"
                       1410 "ELECTRICAL AND ELECTRONICS ENGINEERS"
                       1420 "ENVIRONMENTAL ENGINEERS"
                       1430 "INDUSTRIAL ENGINEERS, INCLUDING HEALTH AND SAFETY"
                       1440 "MARINE ENGINEERS AND NAVAL ARCHITECTS"
                       1450 "MATERIALS ENGINEERS" 1460 "MECHANICAL ENGINEERS"
                       1500 "MINING AND GEOLOGICAL ENGINEERS, INCLUDING MINING SAFETY ENGINEERS"
                       1510 "NUCLEAR ENGINEERS" 1520 "PETROLEUM ENGINEERS"
                       1530 "ENGINEERS, ALL OTHER" 1540 "DRAFTERS"
                       1550 "ENGINEERING TECHNICIANS, EXCEPT DRAFTERS"
                       1560 "SURVEYING AND MAPPING TECHNICIANS"
                       1600 "AGRICULTURAL AND FOOD SCIENTISTS"
                       1610 "BIOLOGICAL SCIENTISTS"
                       1640 "CONSERVATION SCIENTISTS AND FORESTERS"
                       1650 "MEDICAL SCIENTISTS"
                       1660 "LIFE SCIENTISTS, ALL OTHER"
                       1700 "ASTRONOMERS AND PHYSICISTS"
                       1710 "ATMOSPHERIC AND SPACE SCIENTISTS"
                       1720 "CHEMISTS AND MATERIALS SCIENTISTS"
                       1740 "ENVIRONMENTAL SCIENTISTS AND GEOSCIENTISTS"
                       1760 "PHYSICAL SCIENTISTS, ALL OTHER"
                       1800 "ECONOMISTS" 1815 "SURVEY RESEARCHERS"
                       1820 "PSYCHOLOGISTS" 1830 "SOCIOLOGISTS"
                       1840 "URBAN AND REGIONAL PLANNERS"
                       1860 "MISCELLANEOUS SOCIAL SCIENTISTS AND RELATED WORKERS"
                       1900 "AGRICULTURAL AND FOOD SCIENCE TECHNICIANS"
                       1910 "BIOLOGICAL TECHNICIANS"
                       1920 "CHEMICAL TECHNICIANS"
                       1930 "GEOLOGICAL AND PETROLEUM TECHNICIANS"
                       1940 "NUCLEAR TECHNICIANS"
                       1950 "SOCIAL SCIENCE RESEARCH ASSISTANTS"
                       1965 "MISCELLANEOUS LIFE, PHYSICAL, AND SOCIAL SCIENCE TECHNICIANS"
                       2000 "COUNSELORS" 2010 "SOCIAL WORKERS"
                       2015 "PROBATION OFFICERS AND CORRECTIONAL TREATMENT SPECIALISTS"
                       2016 "SOCIAL AND HUMAN SERVICE ASSISTANTS"
                       2025 "MISCELLANEOUS COMMUNITY AND SOCIAL SERVICE SPECIALISTS, INCLUDING HEALTH EDUCATORS AND COMMUNITY HEALTH WORKERS"
                       2040 "CLERGY"
                       2050 "DIRECTORS, RELIGIOUS ACTIVITIES AND EDUCATION"
                       2060 "RELIGIOUS WORKERS, ALL OTHER" 2100 "LAWYERS"
                       2105 "JUDICIAL LAW CLERKS"
                       2110 "JUDGES, MAGISTRATES, AND OTHER JUDICIAL WORKERS"
                       2145 "PARALEGALS AND LEGAL ASSISTANTS"
                       2160 "MISCELLANEOUS LEGAL SUPPORT WORKERS"
                       2200 "POSTSECONDARY TEACHERS"
                       2300 "PRESCHOOL AND KINDERGARTEN TEACHERS"
                       2310 "ELEMENTARY AND MIDDLE SCHOOL TEACHERS"
                       2320 "SECONDARY SCHOOL TEACHERS"
                       2330 "SPECIAL EDUCATION TEACHERS"
                       2340 "OTHER TEACHERS AND INSTRUCTORS"
                       2400 "ARCHIVISTS, CURATORS, AND MUSEUM TECHNICIANS"
                       2430 "LIBRARIANS" 2440 "LIBRARY TECHNICIANS"
                       2540 "TEACHER ASSISTANTS"
                       2550 "OTHER EDUCATION, TRAINING, AND LIBRARY WORKERS"
                       2600 "ARTISTS AND RELATED WORKERS" 2630 "DESIGNERS"
                       2700 "ACTORS" 2710 "PRODUCERS AND DIRECTORS"
                       2720 "ATHLETES, COACHES, UMPIRES, AND RELATED WORKERS"
                       2740 "DANCERS AND CHOREOGRAPHERS"
                       2750 "MUSICIANS, SINGERS, AND RELATED WORKERS"
                       2760 "ENTERTAINERS AND PERFORMERS, SPORTS AND RELATED WORKERS, ALL OTHER"
                       2800 "ANNOUNCERS"
                       2810 "NEWS ANALYSTS, REPORTERS AND CORRESPONDENTS"
                       2825 "PUBLIC RELATIONS SPECIALISTS" 2830 "EDITORS"
                       2840 "TECHNICAL WRITERS" 2850 "WRITERS AND AUTHORS"
                       2860 "MISCELLANEOUS MEDIA AND COMMUNICATION WORKERS"
                       2900 "BROADCAST AND SOUND ENGINEERING TECHNICIANS AND RADIO OPERATORS"
                       2910 "PHOTOGRAPHERS"
                       2920 "TELEVISION, VIDEO, AND MOTION PICTURE CAMERA OPERATORS AND EDITORS"
                       2960 "MEDIA AND COMMUNICATION EQUIPMENT WORKERS, ALL OTHER"
                       3000 "CHIROPRACTORS" 3010 "DENTISTS"
                       3030 "DIETITIANS AND NUTRITIONISTS"
                       3040 "OPTOMETRISTS" 3050 "PHARMACISTS"
                       3060 "PHYSICIANS AND SURGEONS"
                       3110 "PHYSICIAN ASSISTANTS" 3120 "PODIATRISTS"
                       3140 "AUDIOLOGISTS" 3150 "OCCUPATIONAL THERAPISTS"
                       3160 "PHYSICAL THERAPISTS" 3200 "RADIATION THERAPISTS"
                       3210 "RECREATIONAL THERAPISTS"
                       3220 "RESPIRATORY THERAPISTS"
                       3230 "SPEECH-LANGUAGE PATHOLOGISTS"
                       3235 "EXERCISE PHYSIOLOGISTS"
                       3245 "THERAPISTS, ALL OTHER" 3250 "VETERINARIANS"
                       3255 "REGISTERED NURSES" 3256 "NURSE ANESTHETISTS"
                       3257 "NURSE MIDWIVES" 3258 "NURSE PRACTITIONERS"
                       3260 "HEALTH DIAGNOSING AND TREATING PRACTITIONERS, ALL OTHER"
                       3300 "CLINICAL LABORATORY TECHNOLOGISTS AND TECHNICIANS"
                       3310 "DENTAL HYGIENISTS"
                       3320 "DIAGNOSTIC RELATED TECHNOLOGISTS AND TECHNICIANS"
                       3400 "EMERGENCY MEDICAL TECHNICIANS AND PARAMEDICS"
                       3420 "HEALTH PRACTITIONER SUPPORT TECHNOLOGISTS AND TECHNICIANS"
                       3500 "LICENSED PRACTICAL AND LICENSED VOCATIONAL NURSES"
                       3510 "MEDICAL RECORDS AND HEALTH INFORMATION TECHNICIANS"
                       3520 "OPTICIANS, DISPENSING"
                       3535 "MISCELLANEOUS HEALTH TECHNOLOGISTS AND TECHNICIANS"
                       3540 "OTHER HEALTHCARE PRACTITIONERS AND TECHNICAL OCCUPATIONS"
                       3600 "NURSING, PSYCHIATRIC, AND HOME HEALTH AIDES"
                       3610 "OCCUPATIONAL THERAPY ASSISTANTS AND AIDES"
                       3620 "PHYSICAL THERAPIST ASSISTANTS AND AIDES"
                       3630 "MASSAGE THERAPISTS" 3640 "DENTAL ASSISTANTS"
                       3645 "MEDICAL ASSISTANTS"
                       3646 "MEDICAL TRANSCRIPTIONISTS" 3647 "PHARMACY AIDES"
                       3648 "VETERINARY ASSISTANTS AND LABORATORY ANIMAL CARETAKERS"
                       3649 "PHLEBOTOMISTS"
                       3655 "HEALTHCARE SUPPORT WORKERS, ALL OTHER, INCLUDING MEDICAL EQUIPMENT PREPARERS"
                       3700 "FIRST-LINE SUPERVISORS OF CORRECTIONAL OFFICERS"
                       3710 "FIRST-LINE SUPERVISORS OF POLICE AND DETECTIVES"
                       3720 "FIRST-LINE SUPERVISORS OF FIRE FIGHTING AND PREVENTION WORKERS"
                       3730 "FIRST-LINE SUPERVISORS OF PROTECTIVE SERVICE WORKERS, ALL OTHER"
                       3740 "FIREFIGHTERS" 3750 "FIRE INSPECTORS"
                       3800 "BAILIFFS, CORRECTIONAL OFFICERS, AND JAILERS"
                       3820 "DETECTIVES AND CRIMINAL INVESTIGATORS"
                       3830 "FISH AND GAME WARDENS"
                       3840 "PARKING ENFORCEMENT WORKERS"
                       3850 "POLICE AND SHERIFF'S PATROL OFFICERS"
                       3860 "TRANSIT AND RAILROAD POLICE"
                       3900 "ANIMAL CONTROL WORKERS"
                       3910 "PRIVATE DETECTIVES AND INVESTIGATORS"
                       3930 "SECURITY GUARDS AND GAMING SURVEILLANCE OFFICERS"
                       3940 "CROSSING GUARDS"
                       3945 "TRANSPORTATION SECURITY SCREENERS"
                       3955 "LIFEGUARDS AND OTHER RECREATIONAL, AND ALL OTHER PROTECTIVE SERVICE WORKERS"
                       4000 "CHEFS AND HEAD COOKS"
                       4010 "FIRST-LINE SUPERVISORS OF FOOD PREPARATION AND SERVING WORKERS"
                       4020 "COOKS" 4030 "FOOD PREPARATION WORKERS"
                       4040 "BARTENDERS"
                       4050 "COMBINED FOOD PREPARATION AND SERVING WORKERS, INCLUDING FAST FOOD"
                       4060 "COUNTER ATTENDANTS, CAFETERIA, FOOD CONCESSION, AND COFFEE SHOP"
                       4110 "WAITERS AND WAITRESSES"
                       4120 "FOOD SERVERS, NONRESTAURANT"
                       4130 "DINING ROOM AND CAFETERIA ATTENDANTS AND BARTENDER HELPERS"
                       4140 "DISHWASHERS"
                       4150 "HOSTS AND HOSTESSES, RESTAURANT, LOUNGE, AND COFFEE SHOP"
                       4160 "FOOD PREPARATION AND SERVING RELATED WORKERS, ALL OTHER"
                       4200 "FIRST-LINE SUPERVISORS OF HOUSEKEEPING AND JANITORIAL WORKERS"
                       4210 "FIRST-LINE SUPERVISORS OF LANDSCAPING, LAWN SERVICE, AND GROUNDSKEEPING WORKERS"
                       4220 "JANITORS AND BUILDING CLEANERS"
                       4230 "MAIDS AND HOUSEKEEPING CLEANERS"
                       4240 "PEST CONTROL WORKERS"
                       4250 "GROUNDS MAINTENANCE WORKERS"
                       4300 "FIRST-LINE SUPERVISORS OF GAMING WORKERS"
                       4320 "FIRST-LINE SUPERVISORS OF PERSONAL SERVICE WORKERS"
                       4340 "ANIMAL TRAINERS"
                       4350 "NONFARM ANIMAL CARETAKERS"
                       4400 "GAMING SERVICES WORKERS"
                       4410 "MOTION PICTURE PROJECTIONISTS"
                       4420 "USHERS, LOBBY ATTENDANTS, AND TICKET TAKERS"
                       4430 "MISCELLANEOUS ENTERTAINMENT ATTENDANTS AND RELATED WORKERS"
                       4460 "EMBALMERS AND FUNERAL ATTENDANTS"
                       4465 "MORTICIANS, UNDERTAKERS, AND FUNERAL DIRECTORS"
                       4500 "BARBERS"
                       4510 "HAIRDRESSERS, HAIRSTYLISTS, AND COSMETOLOGISTS"
                       4520 "MISCELLANEOUS PERSONAL APPEARANCE WORKERS"
                       4530 "BAGGAGE PORTERS, BELLHOPS, AND CONCIERGES"
                       4540 "TOUR AND TRAVEL GUIDES" 4600 "CHILDCARE WORKERS"
                       4610 "PERSONAL CARE AIDES"
                       4620 "RECREATION AND FITNESS WORKERS"
                       4640 "RESIDENTIAL ADVISORS"
                       4650 "PERSONAL CARE AND SERVICE WORKERS, ALL OTHER"
                       4700 "FIRST-LINE SUPERVISORS OF RETAIL SALES WORKERS"
                       4710 "FIRST-LINE SUPERVISORS OF NON-RETAIL SALES WORKERS"
                       4720 "CASHIERS" 4740 "COUNTER AND RENTAL CLERKS"
                       4750 "PARTS SALESPERSONS" 4760 "RETAIL SALESPERSONS"
                       4800 "ADVERTISING SALES AGENTS"
                       4810 "INSURANCE SALES AGENTS"
                       4820 "SECURITIES, COMMODITIES, AND FINANCIAL SERVICES SALES AGENTS"
                       4830 "TRAVEL AGENTS"
                       4840 "SALES REPRESENTATIVES, SERVICES, ALL OTHER"
                       4850 "SALES REPRESENTATIVES, WHOLESALE AND MANUFACTURING"
                       4900 "MODELS, DEMONSTRATORS, AND PRODUCT PROMOTERS"
                       4920 "REAL ESTATE BROKERS AND SALES AGENTS"
                       4930 "SALES ENGINEERS" 4940 "TELEMARKETERS"
                       4950 "DOOR-TO-DOOR SALES WORKERS, NEWS AND STREET VENDORS, AND RELATED WORKERS"
                       4965 "SALES AND RELATED WORKERS, ALL OTHER"
                       5000 "FIRST-LINE SUPERVISORS OF OFFICE AND ADMINISTRATIVE SUPPORT WORKERS"
                       5010 "SWITCHBOARD OPERATORS, INCLUDING ANSWERING SERVICE"
                       5020 "TELEPHONE OPERATORS"
                       5030 "COMMUNICATIONS EQUIPMENT OPERATORS, ALL OTHER"
                       5100 "BILL AND ACCOUNT COLLECTORS"
                       5110 "BILLING AND POSTING CLERKS"
                       5120 "BOOKKEEPING, ACCOUNTING, AND AUDITING CLERKS"
                       5130 "GAMING CAGE WORKERS"
                       5140 "PAYROLL AND TIMEKEEPING CLERKS"
                       5150 "PROCUREMENT CLERKS" 5160 "TELLERS"
                       5165 "FINANCIAL CLERKS, ALL OTHER"
                       5200 "BROKERAGE CLERKS" 5210 "CORRESPONDENCE CLERKS"
                       5220 "COURT, MUNICIPAL, AND LICENSE CLERKS"
                       5230 "CREDIT AUTHORIZERS, CHECKERS, AND CLERKS"
                       5240 "CUSTOMER SERVICE REPRESENTATIVES"
                       5250 "ELIGIBILITY INTERVIEWERS, GOVERNMENT PROGRAMS"
                       5260 "FILE CLERKS"
                       5300 "HOTEL, MOTEL, AND RESORT DESK CLERKS"
                       5310 "INTERVIEWERS, EXCEPT ELIGIBILITY AND LOAN"
                       5320 "LIBRARY ASSISTANTS, CLERICAL"
                       5330 "LOAN INTERVIEWERS AND CLERKS"
                       5340 "NEW ACCOUNTS CLERKS" 5350 "ORDER CLERKS"
                       5360 "HUMAN RESOURCES ASSISTANTS, EXCEPT PAYROLL AND TIMEKEEPING"
                       5400 "RECEPTIONISTS AND INFORMATION CLERKS"
                       5410 "RESERVATION AND TRANSPORTATION TICKET AGENTS AND TRAVEL CLERKS"
                       5420 "INFORMATION AND RECORD CLERKS, ALL OTHER"
                       5500 "CARGO AND FREIGHT AGENTS"
                       5510 "COURIERS AND MESSENGERS" 5520 "DISPATCHERS"
                       5530 "METER READERS, UTILITIES"
                       5540 "POSTAL SERVICE CLERKS"
                       5550 "POSTAL SERVICE MAIL CARRIERS"
                       5560 "POSTAL SERVICE MAIL SORTERS, PROCESSORS, AND PROCESSING MACHINE OPERATORS"
                       5600 "PRODUCTION, PLANNING, AND EXPEDITING CLERKS"
                       5610 "SHIPPING, RECEIVING, AND TRAFFIC CLERKS"
                       5620 "STOCK CLERKS AND ORDER FILLERS"
                       5630 "WEIGHERS, MEASURERS, CHECKERS, AND SAMPLERS, RECORDKEEPING"
                       5700 "SECRETARIES AND ADMINISTRATIVE ASSISTANTS"
                       5800 "COMPUTER OPERATORS" 5810 "DATA ENTRY KEYERS"
                       5820 "WORD PROCESSORS AND TYPISTS"
                       5830 "DESKTOP PUBLISHERS"
                       5840 "INSURANCE CLAIMS AND POLICY PROCESSING CLERKS"
                       5850 "MAIL CLERKS AND MAIL MACHINE OPERATORS, EXCEPT POSTAL SERVICE"
                       5860 "OFFICE CLERKS, GENERAL"
                       5900 "OFFICE MACHINE OPERATORS, EXCEPT COMPUTER"
                       5910 "PROOFREADERS AND COPY MARKERS"
                       5920 "STATISTICAL ASSISTANTS"
                       5940 "OFFICE AND ADMINISTRATIVE SUPPORT WORKERS, ALL OTHER"
                       6005 "FIRST-LINE SUPERVISORS OF FARMING, FISHING, AND FORESTRY WORKERS"
                       6010 "AGRICULTURAL INSPECTORS" 6020 "ANIMAL BREEDERS"
                       6040 "GRADERS AND SORTERS, AGRICULTURAL PRODUCTS"
                       6050 "MISCELLANEOUS AGRICULTURAL WORKERS"
                       6100 "FISHERS AND RELATED FISHING WORKERS"
                       6110 "HUNTERS AND TRAPPERS"
                       6120 "FOREST AND CONSERVATION WORKERS"
                       6130 "LOGGING WORKERS"
                       6200 "FIRST-LINE SUPERVISORS OF CONSTRUCTION TRADES AND EXTRACTION WORKERS"
                       6210 "BOILERMAKERS"
                       6220 "BRICKMASONS, BLOCKMASONS, AND STONEMASONS"
                       6230 "CARPENTERS"
                       6240 "CARPET, FLOOR, AND TILE INSTALLERS AND FINISHERS"
                       6250 "CEMENT MASONS, CONCRETE FINISHERS, AND TERRAZZO WORKERS"
                       6260 "CONSTRUCTION LABORERS"
                       6300 "PAVING, SURFACING, AND TAMPING EQUIPMENT OPERATORS"
                       6310 "PILE-DRIVER OPERATORS"
                       6320 "OPERATING ENGINEERS AND OTHER CONSTRUCTION EQUIPMENT OPERATORS"
                       6330 "DRYWALL INSTALLERS, CEILING TILE INSTALLERS, AND TAPERS"
                       6355 "ELECTRICIANS" 6360 "GLAZIERS"
                       6400 "INSULATION WORKERS"
                       6420 "PAINTERS, CONSTRUCTION AND MAINTENANCE"
                       6430 "PAPERHANGERS"
                       6440 "PIPELAYERS, PLUMBERS, PIPEFITTERS, AND STEAMFITTERS"
                       6460 "PLASTERERS AND STUCCO MASONS"
                       6500 "REINFORCING IRON AND REBAR WORKERS"
                       6515 "ROOFERS" 6520 "SHEET METAL WORKERS"
                       6530 "STRUCTURAL IRON AND STEEL WORKERS"
                       6540 "SOLAR PHOTOVOLTAIC INSTALLERS"
                       6600 "HELPERS, CONSTRUCTION TRADES"
                       6660 "CONSTRUCTION AND BUILDING INSPECTORS"
                       6700 "ELEVATOR INSTALLERS AND REPAIRERS"
                       6710 "FENCE ERECTORS"
                       6720 "HAZARDOUS MATERIALS REMOVAL WORKERS"
                       6730 "HIGHWAY MAINTENANCE WORKERS"
                       6740 "RAIL-TRACK LAYING AND MAINTENANCE EQUIPMENT OPERATORS"
                       6750 "SEPTIC TANK SERVICERS AND SEWER PIPE CLEANERS"
                       6765 "MISCELLANEOUS CONSTRUCTION AND RELATED WORKERS"
                       6800 "DERRICK, ROTARY DRILL, AND SERVICE UNIT OPERATORS, OIL, GAS, AND MINING"
                       6820 "EARTH DRILLERS, EXCEPT OIL AND GAS"
                       6830 "EXPLOSIVES WORKERS, ORDNANCE HANDLING EXPERTS, AND BLASTERS"
                       6840 "MINING MACHINE OPERATORS"
                       6910 "ROOF BOLTERS, MINING"
                       6920 "ROUSTABOUTS, OIL AND GAS"
                       6930 "HELPERS--EXTRACTION WORKERS"
                       6940 "OTHER EXTRACTION WORKERS"
                       7000 "FIRST-LINE SUPERVISORS OF MECHANICS, INSTALLERS, AND REPAIRERS"
                       7010 "COMPUTER, AUTOMATED TELLER, AND OFFICE MACHINE REPAIRERS"
                       7020 "RADIO AND TELECOMMUNICATIONS EQUIPMENT INSTALLERS AND REPAIRERS"
                       7030 "AVIONICS TECHNICIANS"
                       7040 "ELECTRIC MOTOR, POWER TOOL, AND RELATED REPAIRERS"
                       7050 "ELECTRICAL AND ELECTRONICS INSTALLERS AND REPAIRERS, TRANSPORTATION EQUIPMENT"
                       7100 "ELECTRICAL AND ELECTRONICS REPAIRERS, INDUSTRIAL AND UTILITY"
                       7110 "ELECTRONIC EQUIPMENT INSTALLERS AND REPAIRERS, MOTOR VEHICLES"
                       7120 "ELECTRONIC HOME ENTERTAINMENT EQUIPMENT INSTALLERS AND REPAIRERS"
                       7130 "SECURITY AND FIRE ALARM SYSTEMS INSTALLERS"
                       7140 "AIRCRAFT MECHANICS AND SERVICE TECHNICIANS"
                       7150 "AUTOMOTIVE BODY AND RELATED REPAIRERS"
                       7160 "AUTOMOTIVE GLASS INSTALLERS AND REPAIRERS"
                       7200 "AUTOMOTIVE SERVICE TECHNICIANS AND MECHANICS"
                       7210 "BUS AND TRUCK MECHANICS AND DIESEL ENGINE SPECIALISTS"
                       7220 "HEAVY VEHICLE AND MOBILE EQUIPMENT SERVICE TECHNICIANS AND MECHANICS"
                       7240 "SMALL ENGINE MECHANICS"
                       7260 "MISCELLANEOUS VEHICLE AND MOBILE EQUIPMENT MECHANICS, INSTALLERS, AND REPAIRERS"
                       7300 "CONTROL AND VALVE INSTALLERS AND REPAIRERS"
                       7315 "HEATING, AIR CONDITIONING, AND REFRIGERATION MECHANICS AND INSTALLERS"
                       7320 "HOME APPLIANCE REPAIRERS"
                       7330 "INDUSTRIAL AND REFRACTORY MACHINERY MECHANICS"
                       7340 "MAINTENANCE AND REPAIR WORKERS, GENERAL"
                       7350 "MAINTENANCE WORKERS, MACHINERY"
                       7360 "MILLWRIGHTS"
                       7410 "ELECTRICAL POWER-LINE INSTALLERS AND REPAIRERS"
                       7420 "TELECOMMUNICATIONS LINE INSTALLERS AND REPAIRERS"
                       7430 "PRECISION INSTRUMENT AND EQUIPMENT REPAIRERS"
                       7440 "WIND TURBINE SERVICE TECHNICIANS"
                       7510 "COIN, VENDING, AND AMUSEMENT MACHINE SERVICERS AND REPAIRERS"
                       7520 "COMMERCIAL DIVERS"
                       7540 "LOCKSMITHS AND SAFE REPAIRERS"
                       7550 "MANUFACTURED BUILDING AND MOBILE HOME INSTALLERS"
                       7560 "RIGGERS"
                       7600 "SIGNAL AND TRACK SWITCH REPAIRERS"
                       7610 "HELPERS--INSTALLATION, MAINTENANCE, AND REPAIR WORKERS"
                       7630 "OTHER INSTALLATION, MAINTENANCE, AND REPAIR WORKERS"
                       7700 "FIRST-LINE SUPERVISORS OF PRODUCTION AND OPERATING WORKERS"
                       7710 "AIRCRAFT STRUCTURE, SURFACES, RIGGING, AND SYSTEMS ASSEMBLERS"
                       7720 "ELECTRICAL, ELECTRONICS, AND ELECTROMECHANICAL ASSEMBLERS"
                       7730 "ENGINE AND OTHER MACHINE ASSEMBLERS"
                       7740 "STRUCTURAL METAL FABRICATORS AND FITTERS"
                       7750 "MISCELLANEOUS ASSEMBLERS AND FABRICATORS"
                       7800 "BAKERS"
                       7810 "BUTCHERS AND OTHER MEAT, POULTRY, AND FISH PROCESSING WORKERS"
                       7830 "FOOD AND TOBACCO ROASTING, BAKING, AND DRYING MACHINE OPERATORS AND TENDERS"
                       7840 "FOOD BATCHMAKERS"
                       7850 "FOOD COOKING MACHINE OPERATORS AND TENDERS"
                       7855 "FOOD PROCESSING WORKERS, ALL OTHER"
                       7900 "COMPUTER CONTROL PROGRAMMERS AND OPERATORS"
                       7920 "EXTRUDING AND DRAWING MACHINE SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC"
                       7930 "FORGING MACHINE SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC"
                       7940 "ROLLING MACHINE SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC"
                       7950 "CUTTING, PUNCHING, AND PRESS MACHINE SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC"
                       7960 "DRILLING AND BORING MACHINE TOOL SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC"
                       8000 "GRINDING, LAPPING, POLISHING, AND BUFFING MACHINE TOOL SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC"
                       8010 "LATHE AND TURNING MACHINE TOOL SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC"
                       8020 "MILLING AND PLANING MACHINE SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC"
                       8030 "MACHINISTS"
                       8040 "METAL FURNACE OPERATORS, TENDERS, POURERS, AND CASTERS"
                       8060 "MODEL MAKERS AND PATTERNMAKERS, METAL AND PLASTIC"
                       8100 "MOLDERS AND MOLDING MACHINE SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC"
                       8120 "MULTIPLE MACHINE TOOL SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC"
                       8130 "TOOL AND DIE MAKERS"
                       8140 "WELDING, SOLDERING, AND BRAZING WORKERS"
                       8150 "HEAT TREATING EQUIPMENT SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC"
                       8160 "LAYOUT WORKERS, METAL AND PLASTIC"
                       8200 "PLATING AND COATING MACHINE SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC"
                       8210 "TOOL GRINDERS, FILERS, AND SHARPENERS"
                       8220 "METAL WORKERS AND PLASTIC WORKERS, ALL OTHER"
                       8250 "PREPRESS TECHNICIANS AND WORKERS"
                       8255 "PRINTING PRESS OPERATORS"
                       8256 "PRINT BINDING AND FINISHING WORKERS"
                       8300 "LAUNDRY AND DRY-CLEANING WORKERS"
                       8310 "PRESSERS, TEXTILE, GARMENT, AND RELATED MATERIALS"
                       8320 "SEWING MACHINE OPERATORS"
                       8330 "SHOE AND LEATHER WORKERS AND REPAIRERS"
                       8340 "SHOE MACHINE OPERATORS AND TENDERS"
                       8350 "TAILORS, DRESSMAKERS, AND SEWERS"
                       8360 "TEXTILE BLEACHING AND DYEING MACHINE OPERATORS AND TENDERS"
                       8400 "TEXTILE CUTTING MACHINE SETTERS, OPERATORS, AND TENDERS"
                       8410 "TEXTILE KNITTING AND WEAVING MACHINE SETTERS, OPERATORS, AND TENDERS"
                       8420 "TEXTILE WINDING, TWISTING, AND DRAWING OUT MACHINE SETTERS, OPERATORS, AND TENDERS"
                       8430 "EXTRUDING AND FORMING MACHINE SETTERS, OPERATORS, AND TENDERS, SYNTHETIC AND GLASS FIBERS"
                       8440 "FABRIC AND APPAREL PATTERNMAKERS"
                       8450 "UPHOLSTERERS"
                       8460 "TEXTILE, APPAREL, AND FURNISHINGS WORKERS, ALL OTHER"
                       8500 "CABINETMAKERS AND BENCH CARPENTERS"
                       8510 "FURNITURE FINISHERS"
                       8520 "MODEL MAKERS AND PATTERNMAKERS, WOOD"
                       8530 "SAWING MACHINE SETTERS, OPERATORS, AND TENDERS, WOOD"
                       8540 "WOODWORKING MACHINE SETTERS, OPERATORS, AND TENDERS, EXCEPT SAWING"
                       8550 "WOODWORKERS, ALL OTHER"
                       8600 "POWER PLANT OPERATORS, DISTRIBUTORS, AND DISPATCHERS"
                       8610 "STATIONARY ENGINEERS AND BOILER OPERATORS"
                       8620 "WATER AND WASTEWATER TREATMENT PLANT AND SYSTEM OPERATORS"
                       8630 "MISCELLANEOUS PLANT AND SYSTEM OPERATORS"
                       8640 "CHEMICAL PROCESSING MACHINE SETTERS, OPERATORS, AND TENDERS"
                       8650 "CRUSHING, GRINDING, POLISHING, MIXING, AND BLENDING WORKERS"
                       8710 "CUTTING WORKERS"
                       8720 "EXTRUDING, FORMING, PRESSING, AND COMPACTING MACHINE SETTERS, OPERATORS, AND TENDERS"
                       8730 "FURNACE, KILN, OVEN, DRIER, AND KETTLE OPERATORS AND TENDERS"
                       8740 "INSPECTORS, TESTERS, SORTERS, SAMPLERS, AND WEIGHERS"
                       8750 "JEWELERS AND PRECIOUS STONE AND METAL WORKERS"
                       8760 "MEDICAL, DENTAL, AND OPHTHALMIC LABORATORY TECHNICIANS"
                       8800 "PACKAGING AND FILLING MACHINE OPERATORS AND TENDERS"
                       8810 "PAINTING WORKERS"
                       8830 "PHOTOGRAPHIC PROCESS WORKERS AND PROCESSING MACHINE OPERATORS"
                       8840 "SEMICONDUCTOR PROCESSORS"
                       8850 "ADHESIVE BONDING MACHINE OPERATORS AND TENDERS"
                       8860 "CLEANING, WASHING, AND METAL PICKLING EQUIPMENT OPERATORS AND TENDERS"
                       8900 "COOLING AND FREEZING EQUIPMENT OPERATORS AND TENDERS"
                       8910 "ETCHERS AND ENGRAVERS"
                       8920 "MOLDERS, SHAPERS, AND CASTERS, EXCEPT METAL AND PLASTIC"
                       8930 "PAPER GOODS MACHINE SETTERS, OPERATORS, AND TENDERS"
                       8940 "TIRE BUILDERS"
                       8950 "HELPERS--PRODUCTION WORKERS"
                       8965 "PRODUCTION WORKERS, ALL OTHER"
                       9000 "SUPERVISORS OF TRANSPORTATION AND MATERIAL MOVING WORKERS"
                       9030 "AIRCRAFT PILOTS AND FLIGHT ENGINEERS"
                       9040 "AIR TRAFFIC CONTROLLERS AND AIRFIELD OPERATIONS SPECIALISTS"
                       9050 "FLIGHT ATTENDANTS"
                       9110 "AMBULANCE DRIVERS AND ATTENDANTS, EXCEPT EMERGENCY MEDICAL TECHNICIANS"
                       9120 "BUS DRIVERS"
                       9130 "DRIVER/SALES WORKERS AND TRUCK DRIVERS"
                       9140 "TAXI DRIVERS AND CHAUFFEURS"
                       9150 "MOTOR VEHICLE OPERATORS, ALL OTHER"
                       9200 "LOCOMOTIVE ENGINEERS AND OPERATORS"
                       9230 "RAILROAD BRAKE, SIGNAL, AND SWITCH OPERATORS"
                       9240 "RAILROAD CONDUCTORS AND YARDMASTERS"
                       9260 "SUBWAY, STREETCAR, AND OTHER RAIL TRANSPORTATION WORKERS"
                       9300 "SAILORS AND MARINE OILERS"
                       9310 "SHIP AND BOAT CAPTAINS AND OPERATORS"
                       9330 "SHIP ENGINEERS" 9340 "BRIDGE AND LOCK TENDERS"
                       9350 "PARKING LOT ATTENDANTS"
                       9360 "AUTOMOTIVE AND WATERCRAFT SERVICE ATTENDANTS"
                       9410 "TRANSPORTATION INSPECTORS"
                       9415 "TRANSPORTATION ATTENDANTS, EXCEPT FLIGHT ATTENDANTS"
                       9420 "OTHER TRANSPORTATION WORKERS"
                       9500 "CONVEYOR OPERATORS AND TENDERS"
                       9510 "CRANE AND TOWER OPERATORS"
                       9520 "DREDGE, EXCAVATING, AND LOADING MACHINE OPERATORS"
                       9560 "HOIST AND WINCH OPERATORS"
                       9600 "INDUSTRIAL TRUCK AND TRACTOR OPERATORS"
                       9610 "CLEANERS OF VEHICLES AND EQUIPMENT"
                       9620 "LABORERS AND FREIGHT, STOCK, AND MATERIAL MOVERS, HAND"
                       9630 "MACHINE FEEDERS AND OFFBEARERS"
                       9640 "PACKERS AND PACKAGERS, HAND"
                       9650 "PUMPING STATION OPERATORS"
                       9720 "REFUSE AND RECYCLABLE MATERIAL COLLECTORS"
                       9730 "MINE SHUTTLE CAR OPERATORS"
                       9740 "TANK CAR, TRUCK, AND SHIP LOADERS"
                       9750 "MATERIAL MOVING WORKERS, ALL OTHER"
                       9800 "MILITARY OFFICER SPECIAL AND TACTICAL OPERATIONS LEADERS"
                       9810 "FIRST-LINE ENLISTED MILITARY SUPERVISORS"
                       9820 "MILITARY ENLISTED TACTICAL OPERATIONS AND AIR/WEAPONS SPECIALISTS AND CREW MEMBERS"
                       9830 "MILITARY, RANK NOT SPECIFIED"
                       9920 "UNEMPLOYED, WITH NO WORK EXPERIENCE IN THE LAST 5 YEARS OR EARLIER OR NEVER WORKED"
                       9996 "NOT IN LABOR FORCE" 9997 "UNKNOWN OR UNSURE"
                       9998 "MISSING OR NOT REPORTED" 9999 "INAPP" ;
label define C1PINDP   170 "CROP PRODUCTION" 180 "ANIMAL PRODUCTION"
                       190 "FORESTRY EXCEPT LOGGING" 270 "LOGGING"
                       280 "FISHING, HUNTING, AND TRAPPING"
                       290 "SUPPORT ACTIVITIES FOR AGRICULTURE AND FORESTRY"
                       370 "OIL AND GAS EXTRACTION" 380 "COAL MINING"
                       390 "METAL ORE MINING"
                       470 "NONMETALLIC MINERAL MINING AND QUARRYING"
                       480 "NOT SPECIFIED TYPE OF MINING"
                       490 "SUPPORT ACTIVITIES FOR MINING"
                       570 "ELECTRIC POWER GENERATION, TRANSMISSION AND DISTRIBUTION"
                       580 "NATURAL GAS DISTRIBUTION"
                       590 "ELECTRIC AND GAS, AND OTHER COMBINATIONS"
                       670 "WATER, STEAM, AIR-CONDITIONING, AND IRRIGATION SYSTEMS"
                       680 "SEWAGE TREATMENT FACILITIES"
                       690 "NOT SPECIFIED UTILITIES" 770 "CONSTRUCTION"
                       1070 "ANIMAL FOOD, GRAIN AND OILSEED MILLING"
                       1080 "SUGAR AND CONFECTIONERY PRODUCTS"
                       1090 "FRUIT AND VEGETABLE PRESERVING AND SPECIALTY FOOD MANUFACTURING"
                       1170 "DAIRY PRODUCT MANUFACTURING"
                       1180 "ANIMAL SLAUGHTERING AND PROCESSING"
                       1190 "RETAIL BAKERIES" 1270 "BAKERIES, EXCEPT RETAIL"
                       1280 "SEAFOOD AND OTHER MISCELLANEOUS FOODS, N.E.C."
                       1290 "NOT SPECIFIED FOOD INDUSTRIES"
                       1370 "BEVERAGE MANUFACTURING"
                       1390 "TOBACCO MANUFACTURING"
                       1470 "FIBER, YARN, AND THREAD MILLS"
                       1480 "FABRIC MILLS, EXCEPT KNITTING MILLS"
                       1490 "TEXTILE AND FABRIC FINISHING AND COATING MILLS"
                       1570 "CARPET AND RUG MILLS"
                       1590 "TEXTILE PRODUCT MILLS, EXCEPT CARPETS AND RUGS"
                       1670 "KNITTING FABRIC MILLS, AND APPAREL KNITTING MILLS"
                       1680 "CUT AND SEW APPAREL MANUFACTURING"
                       1690 "APPAREL ACCESSORIES AND OTHER APPAREL MANUFACTURING"
                       1770 "FOOTWEAR MANUFACTURING"
                       1790 "LEATHER TANNING AND FINISHING AND OTHER ALLIED PRODUCTS MANUFACTURING"
                       1870 "PULP, PAPER, AND PAPERBOARD MILLS"
                       1880 "PAPERBOARD CONTAINERS AND BOXES"
                       1890 "MISCELLANEOUS PAPER AND PULP PRODUCTS"
                       1990 "PRINTING AND RELATED SUPPORT ACTIVITIES"
                       2070 "PETROLEUM REFINING"
                       2090 "MISCELLANEOUS PETROLEUM AND COAL PRODUCTS"
                       2170 "RESIN, SYNTHETIC RUBBER AND FIBERS, AND FILAMENTS MANUFACTURING"
                       2180 "AGRICULTURAL CHEMICAL MANUFACTURING"
                       2190 "PHARMACEUTICAL AND MEDICINE MANUFACTURING"
                       2270 "PAINT, COATING, AND ADHESIVE MANUFACTURING"
                       2280 "SOAP, CLEANING COMPOUND, AND COSMETICS MANUFACTURING"
                       2290 "INDUSTRIAL AND MISCELLANEOUS CHEMICALS"
                       2370 "PLASTICS PRODUCT MANUFACTURING"
                       2380 "TIRE MANUFACTURING"
                       2390 "RUBBER PRODUCTS, EXCEPT TIRES, MANUFACTURING"
                       2470 "POTTERY, CERAMICS, AND PLUMBING FIXTURE MANUFACTURING"
                       2480 "STRUCTURAL CLAY PRODUCT MANUFACTURING"
                       2490 "GLASS AND GLASS PRODUCT MANUFACTURING"
                       2570 "CEMENT, CONCRETE, LIME, AND GYPSUM PRODUCT MANUFACTURING"
                       2590 "MISCELLANEOUS NONMETALLIC MINERAL PRODUCT MANUFACTURING"
                       2670 "IRON AND STEEL MILLS AND STEEL PRODUCT MANUFACTURING"
                       2680 "ALUMINUM PRODUCTION AND PROCESSING"
                       2690 "NONFERROUS METAL, EXCEPT ALUMINUM, PRODUCTION AND PROCESSING"
                       2770 "FOUNDRIES" 2780 "METAL FORGINGS AND STAMPINGS"
                       2790 "CUTLERY AND HAND TOOL MANUFACTURING"
                       2870 "STRUCTURAL METALS, AND BOILER, TANK, AND SHIPPING CONTAINER MANUFACTURING"
                       2880 "MACHINE SHOPS; TURNED PRODUCT; SCREW, NUT AND BOLT MANUFACTURING"
                       2890 "COATING, ENGRAVING, HEAT TREATING AND ALLIED ACTIVITIES"
                       2970 "ORDNANCE"
                       2980 "MISCELLANEOUS FABRICATED METAL PRODUCTS MANUFACTURING"
                       2990 "NOT SPECIFIED METAL INDUSTRIES"
                       3070 "AGRICULTURAL IMPLEMENT MANUFACTURING"
                       3080 "CONSTRUCTION, AND MINING AND OIL AND GAS FIELD MACHINERY MANUFACTURING"
                       3090 "COMMERCIAL AND SERVICE INDUSTRY MACHINERY MANUFACTURING"
                       3170 "METALWORKING MACHINERY MANUFACTURING"
                       3180 "ENGINES, TURBINES, AND POWER TRANSMISSION EQUIPMENT MANUFACTURING"
                       3190 "MACHINERY MANUFACTURING, N.E.C."
                       3290 "NOT SPECIFIED MACHINERY MANUFACTURING"
                       3360 "COMPUTER AND PERIPHERAL EQUIPMENT MANUFACTURING"
                       3370 "COMMUNICATIONS, AUDIO, AND VIDEO EQUIPMENT MANUFACTURING"
                       3380 "NAVIGATIONAL, MEASURING, ELECTROMEDICAL, AND CONTROL INSTRUMENTS MANUFACTURING"
                       3390 "ELECTRONIC COMPONENT AND PRODUCT MANUFACTURING, N.E.C."
                       3470 "HOUSEHOLD APPLIANCE MANUFACTURING"
                       3490 "ELECTRIC LIGHTING AND ELECTRICAL EQUIPMENT MANUFACTURING, AND OTHER ELECTRICAL COMPONENT MANUFACTURING, N.E.C."
                       3570 "MOTOR VEHICLES AND MOTOR VEHICLE EQUIPMENT MANUFACTURING"
                       3580 "AIRCRAFT AND PARTS MANUFACTURING"
                       3590 "AEROSPACE PRODUCTS AND PARTS MANUFACTURING"
                       3670 "RAILROAD ROLLING STOCK MANUFACTURING"
                       3680 "SHIP AND BOAT BUILDING"
                       3690 "OTHER TRANSPORTATION EQUIPMENT MANUFACTURING"
                       3770 "SAWMILLS AND WOOD PRESERVATION"
                       3780 "VENEER, PLYWOOD, AND ENGINEERED WOOD PRODUCTS"
                       3790 "PREFABRICATED WOOD BUILDINGS AND MOBILE HOMES MANUFACTURING"
                       3870 "MISCELLANEOUS WOOD PRODUCT MANUFACTURING"
                       3890 "FURNITURE AND RELATED PRODUCT MANUFACTURING"
                       3960 "MEDICAL EQUIPMENT AND SUPPLIES MANUFACTURING"
                       3970 "SPORTING AND ATHLETIC GOODS, AND DOLL, TOY AND GAME MANUFACTURING"
                       3980 "MISCELLANEOUS MANUFACTURING, N.E.C."
                       3990 "NOT SPECIFIED MANUFACTURING INDUSTRIES"
                       4070 "MOTOR VEHICLES, PARTS AND SUPPLIES MERCHANT WHOLESALERS"
                       4080 "FURNITURE AND HOME FURNISHING MERCHANT WHOLESALERS"
                       4090 "LUMBER AND OTHER CONSTRUCTION MATERIALS MERCHANT WHOLESALERS"
                       4170 "PROFESSIONAL AND COMMERCIAL EQUIPMENT AND SUPPLIES MERCHANT WHOLESALERS"
                       4180 "METALS AND MINERALS, EXCEPT PETROLEUM, MERCHANT WHOLESALERS"
                       4190 "ELECTRICAL AND ELECTRONIC GOODS MERCHANT WHOLESALERS"
                       4260 "HARDWARE, PLUMBING AND HEATING EQUIPMENT, AND SUPPLIES MERCHANT WHOLESALERS"
                       4270 "MACHINERY, EQUIPMENT, AND SUPPLIES MERCHANT WHOLESALERS"
                       4280 "RECYCLABLE MATERIAL MERCHANT WHOLESALERS"
                       4290 "MISCELLANEOUS DURABLE GOODS MERCHANT WHOLESALERS"
                       4370 "PAPER AND PAPER PRODUCTS MERCHANT WHOLESALERS"
                       4380 "DRUGS, SUNDRIES, AND CHEMICAL AND ALLIED PRODUCTS MERCHANT WHOLESALERS"
                       4390 "APPAREL, FABRICS, AND NOTIONS MERCHANT WHOLESALERS"
                       4470 "GROCERIES AND RELATED PRODUCTS MERCHANT WHOLESALERS"
                       4480 "FARM PRODUCT RAW MATERIALS MERCHANT WHOLESALERS"
                       4490 "PETROLEUM AND PETROLEUM PRODUCTS MERCHANT WHOLESALERS"
                       4560 "ALCOHOLIC BEVERAGES MERCHANT WHOLESALERS"
                       4570 "FARM SUPPLIES MERCHANT WHOLESALERS"
                       4580 "MISCELLANEOUS NONDURABLE GOODS MERCHANT WHOLESALERS"
                       4585 "WHOLESALE ELECTRONIC MARKETS AGENTS AND BROKERS"
                       4590 "NOT SPECIFIED WHOLESALE TRADE"
                       4670 "AUTOMOBILE DEALERS"
                       4680 "OTHER MOTOR VEHICLE DEALERS"
                       4690 "AUTO PARTS, ACCESSORIES, AND TIRE STORES"
                       4770 "FURNITURE AND HOME FURNISHINGS STORES"
                       4780 "HOUSEHOLD APPLIANCE STORES"
                       4790 "RADIO, TV, AND COMPUTER STORES"
                       4870 "BUILDING MATERIAL AND SUPPLIES DEALERS"
                       4880 "HARDWARE STORES"
                       4890 "LAWN AND GARDEN EQUIPMENT AND SUPPLIES STORES"
                       4970 "GROCERY STORES" 4980 "SPECIALTY FOOD STORES"
                       4990 "BEER, WINE, AND LIQUOR STORES"
                       5070 "PHARMACIES AND DRUG STORES"
                       5080 "HEALTH AND PERSONAL CARE, EXCEPT DRUG, STORES"
                       5090 "GASOLINE STATIONS" 5170 "CLOTHING STORES"
                       5180 "SHOE STORES"
                       5190 "JEWELRY, LUGGAGE, AND LEATHER GOODS STORES"
                       5270 "SPORTING GOODS, CAMERA, AND HOBBY AND TOY STORES"
                       5280 "SEWING, NEEDLEWORK, AND PIECE GOODS STORES"
                       5290 "MUSIC STORES"
                       5370 "BOOK STORES AND NEWS DEALERS"
                       5380 "DEPARTMENT STORES AND DISCOUNT STORES"
                       5390 "MISCELLANEOUS GENERAL MERCHANDISE STORES"
                       5470 "RETAIL FLORISTS"
                       5480 "OFFICE SUPPLIES AND STATIONERY STORES"
                       5490 "USED MERCHANDISE STORES"
                       5570 "GIFT, NOVELTY, AND SOUVENIR SHOPS"
                       5580 "MISCELLANEOUS RETAIL STORES"
                       5590 "ELECTRONIC SHOPPING" 5591 "ELECTRONIC AUCTIONS"
                       5592 "MAIL ORDER HOUSES"
                       5670 "VENDING MACHINE OPERATORS" 5680 "FUEL DEALERS"
                       5690 "OTHER DIRECT SELLING ESTABLISHMENTS"
                       5790 "NOT SPECIFIED RETAIL TRADE"
                       6070 "AIR TRANSPORTATION" 6080 "RAIL TRANSPORTATION"
                       6090 "WATER TRANSPORTATION"
                       6170 "TRUCK TRANSPORTATION"
                       6180 "BUS SERVICE AND URBAN TRANSIT"
                       6190 "TAXI AND LIMOUSINE SERVICE"
                       6270 "PIPELINE TRANSPORTATION"
                       6280 "SCENIC AND SIGHTSEEING TRANSPORTATION"
                       6290 "SERVICES INCIDENTAL TO TRANSPORTATION"
                       6370 "POSTAL SERVICE" 6380 "COURIERS AND MESSENGERS"
                       6390 "WAREHOUSING AND STORAGE"
                       6470 "NEWSPAPER PUBLISHERS"
                       6480 "PERIODICAL, BOOK, AND DIRECTORY PUBLISHERS"
                       6490 "SOFTWARE PUBLISHERS"
                       6570 "MOTION PICTURES AND VIDEO INDUSTRIES"
                       6590 "SOUND RECORDING INDUSTRIES"
                       6670 "RADIO AND TELEVISION BROADCASTING AND CABLE SUBSCRIPTION PROGRAMMING"
                       6672 "INTERNET PUBLISHING AND BROADCASTING AND WEB SEARCH PORTALS"
                       6680 "WIRED TELECOMMUNICATIONS CARRIERS"
                       6690 "OTHER TELECOMMUNICATIONS SERVICES"
                       6695 "DATA PROCESSING, HOSTING, AND RELATED SERVICES"
                       6770 "LIBRARIES AND ARCHIVES"
                       6780 "OTHER INFORMATION SERVICES"
                       6870 "BANKING AND RELATED ACTIVITIES"
                       6880 "SAVINGS INSTITUTIONS, INCLUDING CREDIT UNIONS"
                       6890 "NON-DEPOSITORY CREDIT AND RELATED ACTIVITIES"
                       6970 "SECURITIES, COMMODITIES, FUNDS, TRUSTS, AND OTHER FINANCIAL INVESTMENTS"
                       6990 "INSURANCE CARRIERS AND RELATED ACTIVITIES"
                       7070 "REAL ESTATE"
                       7080 "AUTOMOTIVE EQUIPMENT RENTAL AND LEASING"
                       7170 "VIDEO TAPE AND DISK RENTAL"
                       7180 "OTHER CONSUMER GOODS RENTAL"
                       7190 "COMMERCIAL, INDUSTRIAL, AND OTHER INTANGIBLE ASSETS RENTAL AND LEASING"
                       7270 "LEGAL SERVICES"
                       7280 "ACCOUNTING, TAX PREPARATION, BOOKKEEPING, AND PAYROLL SERVICES"
                       7290 "ARCHITECTURAL, ENGINEERING, AND RELATED SERVICES"
                       7370 "SPECIALIZED DESIGN SERVICES"
                       7380 "COMPUTER SYSTEMS DESIGN AND RELATED SERVICES"
                       7390 "MANAGEMENT, SCIENTIFIC, AND TECHNICAL CONSULTING SERVICES"
                       7460 "SCIENTIFIC RESEARCH AND DEVELOPMENT SERVICES"
                       7470 "ADVERTISING AND RELATED SERVICES"
                       7480 "VETERINARY SERVICES"
                       7490 "OTHER PROFESSIONAL, SCIENTIFIC, AND TECHNICAL SERVICES"
                       7570 "MANAGEMENT OF COMPANIES AND ENTERPRISES"
                       7580 "EMPLOYMENT SERVICES"
                       7590 "BUSINESS SUPPORT SERVICES"
                       7670 "TRAVEL ARRANGEMENTS AND RESERVATION SERVICES"
                       7680 "INVESTIGATION AND SECURITY SERVICES"
                       7690 "SERVICES TO BUILDINGS AND DWELLINGS (EXCEPT CLEANING DURING CONSTRUCTION AND IMMEDIATELY AFTER CONSTRUCTION)"
                       7770 "LANDSCAPING SERVICES"
                       7780 "OTHER ADMINISTRATIVE AND OTHER SUPPORT SERVICES"
                       7790 "WASTE MANAGEMENT AND REMEDIATION SERVICES"
                       7860 "ELEMENTARY AND SECONDARY SCHOOLS"
                       7870 "COLLEGES AND UNIVERSITIES, INCLUDING JUNIOR COLLEGES"
                       7880 "BUSINESS, TECHNICAL, AND TRADE SCHOOLS AND TRAINING"
                       7890 "OTHER SCHOOLS AND INSTRUCTION, AND EDUCATIONAL SUPPORT SERVICES"
                       7970 "OFFICES OF PHYSICIANS"
                       7980 "OFFICES OF DENTISTS"
                       7990 "OFFICES OF CHIROPRACTORS"
                       8070 "OFFICES OF OPTOMETRISTS"
                       8080 "OFFICES OF OTHER HEALTH PRACTITIONERS"
                       8090 "OUTPATIENT CARE CENTERS"
                       8170 "HOME HEALTH CARE SERVICES"
                       8180 "OTHER HEALTH CARE SERVICES" 8190 "HOSPITALS"
                       8270 "NURSING CARE FACILITIES"
                       8290 "RESIDENTIAL CARE FACILITIES, WITHOUT NURSING"
                       8370 "INDIVIDUAL AND FAMILY SERVICES"
                       8380 "COMMUNITY FOOD AND HOUSING, AND EMERGENCY SERVICES"
                       8390 "VOCATIONAL REHABILITATION SERVICES"
                       8470 "CHILD DAY CARE SERVICES"
                       8560 "INDEPENDENT ARTISTS, PERFORMING ARTS, SPECTATOR SPORTS, AND RELATED INDUSTRIES"
                       8570 "MUSEUMS, ART GALLERIES, HISTORICAL SITES, AND SIMILAR INSTITUTIONS"
                       8580 "BOWLING CENTERS"
                       8590 "OTHER AMUSEMENT, GAMBLING, AND RECREATION INDUSTRIES"
                       8660 "TRAVELER ACCOMMODATION"
                       8670 "RECREATIONAL VEHICLE PARKS AND CAMPS, AND ROOMING AND BOARDING HOUSES"
                       8680 "RESTAURANTS AND OTHER FOOD SERVICES"
                       8690 "DRINKING PLACES, ALCOHOLIC BEVERAGES"
                       8770 "AUTOMOTIVE REPAIR AND MAINTENANCE"
                       8780 "CAR WASHES"
                       8790 "ELECTRONIC AND PRECISION EQUIPMENT REPAIR AND MAINTENANCE"
                       8870 "COMMERCIAL AND INDUSTRIAL MACHINERY AND EQUIPMENT REPAIR AND MAINTENANCE"
                       8880 "PERSONAL AND HOUSEHOLD GOODS REPAIR AND MAINTENANCE"
                       8890 "FOOTWEAR AND LEATHER GOODS REPAIR"
                       8970 "BARBER SHOPS" 8980 "BEAUTY SALONS"
                       8990 "NAIL SALONS AND OTHER PERSONAL CARE SERVICES"
                       9070 "DRYCLEANING AND LAUNDRY SERVICES"
                       9080 "FUNERAL HOMES, CEMETERIES, AND CREMATORIES"
                       9090 "OTHER PERSONAL SERVICES"
                       9160 "RELIGIOUS ORGANIZATIONS"
                       9170 "CIVIC, SOCIAL, ADVOCACY ORGANIZATIONS, AND GRANTMAKING AND GIVING SERVICES"
                       9180 "LABOR UNIONS"
                       9190 "BUSINESS, PROFESSIONAL, POLITICAL, AND SIMILAR ORGANIZATIONS"
                       9290 "PRIVATE HOUSEHOLDS"
                       9370 "EXECUTIVE OFFICES AND LEGISLATIVE BODIES"
                       9380 "PUBLIC FINANCE ACTIVITIES"
                       9390 "OTHER GENERAL GOVERNMENT AND SUPPORT"
                       9470 "JUSTICE, PUBLIC ORDER, AND SAFETY ACTIVITIES"
                       9480 "ADMINISTRATION OF HUMAN RESOURCE PROGRAMS"
                       9490 "ADMINISTRATION OF ENVIRONMENTAL QUALITY AND HOUSING PROGRAMS"
                       9570 "ADMINISTRATION OF ECONOMIC PROGRAMS AND SPACE RESEARCH"
                       9590 "NATIONAL SECURITY AND INTERNATIONAL AFFAIRS"
                       9670 "U. S ARMY" 9680 "U. S. AIR FORCE"
                       9690 "U. S. NAVY" 9770 "U. S. MARINES"
                       9780 "U. S. COAST GUARD"
                       9790 "U. S. ARMED FORCES, BRANCH NOT SPECIFIED"
                       9870 "MILITARY RESERVES OR NATIONAL GUARD"
                       9996 "NOT IN LABOR FORCE" 9997 "UNKNOWN OR UNSURE"
                       9998 "MISSING OR NOT REPORTED" 9999 "INAPP" ;
label define C1POCPMJ  1 "MANAGEMENT, BUSINESS, AND FINANCIAL OCCUPATIONS"
                       2 "PROFESSIONAL AND RELATED OCCUPATIONS"
                       3 "SERVICE OCCUPATIONS"
                       4 "SALES AND RELATED OCCUPATIONS"
                       5 "OFFICE AND ADMINISTRATIVE SUPPORT OCCUPATIONS"
                       6 "FARMING, FISHING, AND FORESTRY OCCUPATIONS"
                       7 "CONSTRUCTION AND EXTRACTION OCCUPATIONS"
                       8 "INSTALLATION, MAINTENANCE, AND REPAIE OCCUPATIONS"
                       9 "PRODUCTION OCCUPATIONS"
                       10 "TRANSPORTATION AND MATERIAL MOVING OCCUPATIONS"
                       11 "ARMED FORCES" 96 "NOT IN LABOR FORCE"
                       97 "UNKNOWN OR UNSURE" 98 "MISSING OR NOT REPORTED"
                       99 "INAPP" ;
label define C1PPINMJ  1 "AGRICULTURE, FORESTRY FISHING, HUNTING, AND MINING"
                       2 "CONSTRUCTION" 3 "MANUFACTURING" 4 "WHOLESALE TRADE"
                       5 "RETAIL TRADE"
                       6 "TRANSPORTATION AND WAREHOUSING AND UTILITIES"
                       7 "INFORMATION"
                       8 "FINANCE AND INSURANCE, AND REAL ESTATE, AND RENTAL AND LEASING"
                       9 "PROFESSIONAL, SCIENTIFIC, AND MANAGEMENT, AND ADMINISTRATIVE, AND WASTE MANAGEMENT SERVICES"
                       10 "EDUCATIONAL SERVICES, AND HEALTH CARE AND SOCIAL ASSISTANCE"
                       11 "ARTS,ENTERTAINMENT, AND RECREATION, AND ACCOMMODATION AND FOOD SERVICES"
                       12 "OTHER SERVICES, EXCEPT PUBLIC ADMINISTRATION"
                       13 "PUBLIC ADMINISTRATION" 14 "MILITARY"
                       96 "NOT IN LABOR FORCE" 97 "UNKNOWN OR UNSURE"
                       98 "MISSING OR NOT REPORTED" 99 "INAPP" ;
label define C1PB16    99999997 "DON'T KNOW" 99999998 "REFUSED"
                       99999999 "INAPP" ;
label define C1PB16A25 1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB16A50 1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB16A80 1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB16A35 1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB16A12 1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB16A18 1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB16A5  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB17A   1 "MORE" 2 "LESS" 3 "THE SAME" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PB17B   997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define C1PB17B10 1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB17B25 1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB17B5  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB19    1 "MARRIED" 2 "SEPARATED" 3 "DIVORCED" 4 "WIDOWED"
                       5 "NEVER MARRIED" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PB20    97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PB21M   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PB21Y   9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PB22    1 "WIDOWHOOD" 2 "DIVORCE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PB23M   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PB23Y   9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PB24M   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PB24Y   9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PB25M   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PB25Y   9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PB26M   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PB26Y   9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PB27M   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PB27Y   9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PB28M   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PB28Y   9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PB29M   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PB29Y   9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PB30    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB31N   996 "NEVER LIVED TOGETHER" 997 "DON'T KNOW"
                       998 "REFUSED" 999 "INAPP" ;
label define C1PB31M   1 "DAYS" 2 "WEEKS" 3 "MONTHS" 4 "YEARS" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PPARTN  1 "YES" 2 "NO" ;
label define C1PB32A   1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PB32Y   9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PSAGE   997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define C1PB33    1 "NO SCHOOL/SOME GRADE SCHOOL (1-6)"
                       2 "EIGHTH GRADE/JUNIOR HIGH SCHOOL (7-8)"
                       3 "SOME HIGH SCHOOL (9-12 NO DIPLOMA/NO GED)" 4 "GED"
                       5 "GRADUATED FROM HIGH SCHOOL"
                       6 "1 TO 2 YEARS OF COLLEGE, NO DEGREE YET"
                       7 "3 OR MORE YEARS OF COLLEGE, NO DEGREE YET"
                       8 "GRAD. FROM 2-YEAR COLLEGE, VOCATIONAL SCHOOL, OR ASSOC. DEG."
                       9 "GRADUATED FROM A 4- OR 5-YEAR COLLEGE, OR BACHELOR'S DEG."
                       10 "SOME GRADUATE SCHOOL" 11 "MASTER'S DEGREE"
                       12 "PH.D., ED.D., MD, DDS, LLB, LLD, JD, OR OTHER PROFESS'NL DEG."
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PB33AA  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB33AB  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB33AC  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB33AD  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB33AE  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB33AF  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB33AG  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB33AH  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB33AI  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB33AJ  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB33AK  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB33AWK 1 "WORKING NOW" 2 "SELF-EMPLOYED"
                       3 "LOOKING FOR WORK/UNEMPLOYED"
                       4 "TEMPORARILY LAID OFF" 5 "RETIRED" 6 "HOMEMAKER"
                       7 "FULL-TIME STUDENT" 8 "PART-TIME STUDENT"
                       9 "MATERNITY OR SICK LEAVE" 10 "PERMANENTLY DISABLED"
                       11 "OTHER" 97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PB33A1  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB33B   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB33BAM 1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PB33BAY 9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PB33BBA 1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB33BBB 1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB33BBC 1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB33BBD 1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB33BBE 1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB33BBF 1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB33BBG 1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB33BCN 997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define C1PB33BCU 1 "DAYS" 2 "WEEKS" 3 "MONTHS" 4 "YEARS" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PB33BDN 996 "STILL UNEMPLOYED" 997 "DON'T KNOW" 998 "REFUSED"
                       999 "INAPP" ;
label define C1PB33BDU 1 "DAYS" 2 "WEEKS" 3 "MONTHS" 4 "YEARS" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PB33CA  1 "MORE" 2 "LESS" 3 "THE SAME" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PB33CB  997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define C1PB33CB10 1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB33CB25 1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB33C2  997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define C1PB33DN  997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define C1PB33DU  1 "DAYS" 2 "WEEKS" 3 "MONTHS" 4 "YEARS" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PB34A   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB34B   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB34C   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB34D   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB34E   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB34F   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB34G   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB34H   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB34I   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB34J   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB34K   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB34WK  1 "WORKING NOW" 2 "SELF-EMPLOYED"
                       3 "LOOKING FOR WORK/UNEMPLOYED"
                       4 "TEMPORARILY LAID OFF" 5 "RETIRED" 6 "HOMEMAKER"
                       7 "FULL-TIME STUDENT" 8 "PART-TIME STUDENT"
                       9 "MATERNITY OR SICK LEAVE" 10 "PERMANENTLY DISABLED"
                       11 "OTHER" 97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PB35N   996 "NEVER WORKED" 997 "DON'T KNOW" 998 "REFUSED"
                       999 "INAPP" ;
label define C1PB35U   1 "DAYS" 2 "WEEKS" 3 "MONTHS" 4 "YEARS" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PB36A   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB36B   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB36C   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB36D   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB36E   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB36F   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB36G   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB36    1 "FIRED" 2 "LAID OFF" 3 "PLANT/COMPANY CLOSED"
                       4 "QUIT" 5 "RETIRED"
                       6 "WORK FORCE REDUCTION (VOLUNTEERED)" 7 "OTHER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PB36A1  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB37    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB38    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB39A   1 "GOVERNMENT"
                       2 "PRIVATE COMPANY OR ORGANIZATION, INCLUDING NON-PROFITS"
                       3 "SELF-EMPLOYED" 4 "WORKING IN THE FAMILY BUSINESS"
                       5 "OTHER (SPECIFY)" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PB39A1  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB39C   1 "MANUFACTURING (MAKING A PRODUCT)"
                       2 "WHOLESALE (SELLING TO BUSINESSES)"
                       3 "RETAIL (SELLING TO CONSUMERS)"
                       4 "SOMETHING ELSE (EDUCATION, TRANSPORTATION, GOVERNMENT, HEALTH, ETC.)"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1POCCS   10 "CHIEF EXECUTIVES"
                       20 "GENERAL AND OPERATIONS MANAGERS" 30 "LEGISLATORS"
                       40 "ADVERTISING AND PROMOTIONS MANAGERS"
                       50 "MARKETING AND SALES MANAGERS"
                       60 "PUBLIC RELATIONS AND FUNDRAISING MANAGERS"
                       100 "ADMINISTRATIVE SERVICES MANAGERS"
                       110 "COMPUTER AND INFORMATION SYSTEMS MANAGERS"
                       120 "FINANCIAL MANAGERS"
                       135 "COMPENSATION AND BENEFITS MANAGERS"
                       136 "HUMAN RESOURCES MANAGERS"
                       137 "TRAINING AND DEVELOPMENT MANAGERS"
                       140 "INDUSTRIAL PRODUCTION MANAGERS"
                       150 "PURCHASING MANAGERS"
                       160 "TRANSPORTATION, STORAGE, AND DISTRIBUTION MANAGERS"
                       205 "FARMERS, RANCHERS, AND OTHER AGRICULTURAL MANAGERS"
                       220 "CONSTRUCTION MANAGERS"
                       230 "EDUCATION ADMINISTRATORS"
                       300 "ARCHITECTURAL AND ENGINEERING MANAGERS"
                       310 "FOOD SERVICE MANAGERS"
                       325 "FUNERAL SERVICE MANAGERS" 330 "GAMING MANAGERS"
                       340 "LODGING MANAGERS"
                       350 "MEDICAL AND HEALTH SERVICES MANAGERS"
                       360 "NATURAL SCIENCES MANAGERS"
                       400 "POSTMASTERS AND MAIL SUPERINTENDENTS"
                       410 "PROPERTY, REAL ESTATE, AND COMMUNITY ASSOCIATION MANAGERS"
                       420 "SOCIAL AND COMMUNITY SERVICE MANAGERS"
                       425 "EMERGENCY MANAGEMENT DIRECTORS"
                       430 "MANAGERS, ALL OTHER"
                       500 "AGENTS AND BUSINESS MANAGERS OF ARTISTS, PERFORMERS, AND ATHLETES"
                       510 "BUYERS AND PURCHASING AGENTS, FARM PRODUCTS"
                       520 "WHOLESALE AND RETAIL BUYERS, EXCEPT FARM PRODUCTS"
                       530 "PURCHASING AGENTS, EXCEPT WHOLESALE, RETAIL, AND FARM PRODUCTS"
                       540 "CLAIMS ADJUSTERS, APPRAISERS, EXAMINERS, AND INVESTIGATORS"
                       565 "COMPLIANCE OFFICERS" 600 "COST ESTIMATORS"
                       630 "HUMAN RESOURCES WORKERS"
                       640 "COMPENSATION, BENEFITS, AND JOB ANALYSIS SPECIALISTS"
                       650 "TRAINING AND DEVELOPMENT SPECIALISTS"
                       700 "LOGISTICIANS" 710 "MANAGEMENT ANALYSTS"
                       725 "MEETING, CONVENTION, AND EVENT PLANNERS"
                       726 "FUNDRAISERS"
                       735 "MARKET RESEARCH ANALYSTS AND MARKETING SPECIALISTS"
                       740 "BUSINESS OPERATIONS SPECIALISTS, ALL OTHER"
                       800 "ACCOUNTANTS AND AUDITORS"
                       810 "APPRAISERS AND ASSESSORS OF REAL ESTATE"
                       820 "BUDGET ANALYSTS" 830 "CREDIT ANALYSTS"
                       840 "FINANCIAL ANALYSTS"
                       850 "PERSONAL FINANCIAL ADVISORS"
                       860 "INSURANCE UNDERWRITERS" 900 "FINANCIAL EXAMINERS"
                       910 "CREDIT COUNSELORS AND LOAN OFFICERS"
                       930 "TAX EXAMINERS AND COLLECTORS, AND REVENUE AGENTS"
                       940 "TAX PREPARERS"
                       950 "FINANCIAL SPECIALISTS, ALL OTHER"
                       1005 "COMPUTER AND INFORMATION RESEARCH SCIENTISTS"
                       1006 "COMPUTER SYSTEMS ANALYSTS"
                       1007 "INFORMATION SECURITY ANALYSTS"
                       1010 "COMPUTER PROGRAMMERS"
                       1020 "SOFTWARE DEVELOPERS, APPLICATIONS AND SYSTEMS SOFTWARE"
                       1030 "WEB DEVELOPERS"
                       1050 "COMPUTER SUPPORT SPECIALISTS"
                       1060 "DATABASE ADMINISTRATORS"
                       1105 "NETWORK AND COMPUTER SYSTEMS ADMINISTRATORS"
                       1106 "COMPUTER NETWORK ARCHITECTS"
                       1107 "COMPUTER OCCUPATIONS, ALL OTHER"
                       1200 "ACTUARIES" 1210 "MATHEMATICIANS"
                       1220 "OPERATIONS RESEARCH ANALYSTS"
                       1230 "STATISTICIANS"
                       1240 "MISCELLANEOUS MATHEMATICAL SCIENCE OCCUPATIONS"
                       1300 "ARCHITECTS, EXCEPT NAVAL"
                       1310 "SURVEYORS, CARTOGRAPHERS, AND PHOTOGRAMMETRISTS"
                       1320 "AEROSPACE ENGINEERS"
                       1330 "AGRICULTURAL ENGINEERS"
                       1340 "BIOMEDICAL ENGINEERS" 1350 "CHEMICAL ENGINEERS"
                       1360 "CIVIL ENGINEERS"
                       1400 "COMPUTER HARDWARE ENGINEERS"
                       1410 "ELECTRICAL AND ELECTRONICS ENGINEERS"
                       1420 "ENVIRONMENTAL ENGINEERS"
                       1430 "INDUSTRIAL ENGINEERS, INCLUDING HEALTH AND SAFETY"
                       1440 "MARINE ENGINEERS AND NAVAL ARCHITECTS"
                       1450 "MATERIALS ENGINEERS" 1460 "MECHANICAL ENGINEERS"
                       1500 "MINING AND GEOLOGICAL ENGINEERS, INCLUDING MINING SAFETY ENGINEERS"
                       1510 "NUCLEAR ENGINEERS" 1520 "PETROLEUM ENGINEERS"
                       1530 "ENGINEERS, ALL OTHER" 1540 "DRAFTERS"
                       1550 "ENGINEERING TECHNICIANS, EXCEPT DRAFTERS"
                       1560 "SURVEYING AND MAPPING TECHNICIANS"
                       1600 "AGRICULTURAL AND FOOD SCIENTISTS"
                       1610 "BIOLOGICAL SCIENTISTS"
                       1640 "CONSERVATION SCIENTISTS AND FORESTERS"
                       1650 "MEDICAL SCIENTISTS"
                       1660 "LIFE SCIENTISTS, ALL OTHER"
                       1700 "ASTRONOMERS AND PHYSICISTS"
                       1710 "ATMOSPHERIC AND SPACE SCIENTISTS"
                       1720 "CHEMISTS AND MATERIALS SCIENTISTS"
                       1740 "ENVIRONMENTAL SCIENTISTS AND GEOSCIENTISTS"
                       1760 "PHYSICAL SCIENTISTS, ALL OTHER"
                       1800 "ECONOMISTS" 1815 "SURVEY RESEARCHERS"
                       1820 "PSYCHOLOGISTS" 1830 "SOCIOLOGISTS"
                       1840 "URBAN AND REGIONAL PLANNERS"
                       1860 "MISCELLANEOUS SOCIAL SCIENTISTS AND RELATED WORKERS"
                       1900 "AGRICULTURAL AND FOOD SCIENCE TECHNICIANS"
                       1910 "BIOLOGICAL TECHNICIANS"
                       1920 "CHEMICAL TECHNICIANS"
                       1930 "GEOLOGICAL AND PETROLEUM TECHNICIANS"
                       1940 "NUCLEAR TECHNICIANS"
                       1950 "SOCIAL SCIENCE RESEARCH ASSISTANTS"
                       1965 "MISCELLANEOUS LIFE, PHYSICAL, AND SOCIAL SCIENCE TECHNICIANS"
                       2000 "COUNSELORS" 2010 "SOCIAL WORKERS"
                       2015 "PROBATION OFFICERS AND CORRECTIONAL TREATMENT SPECIALISTS"
                       2016 "SOCIAL AND HUMAN SERVICE ASSISTANTS"
                       2025 "MISCELLANEOUS COMMUNITY AND SOCIAL SERVICE SPECIALISTS, INCLUDING HEALTH EDUCATORS AND COMMUNITY HEALTH WORKERS"
                       2040 "CLERGY"
                       2050 "DIRECTORS, RELIGIOUS ACTIVITIES AND EDUCATION"
                       2060 "RELIGIOUS WORKERS, ALL OTHER" 2100 "LAWYERS"
                       2105 "JUDICIAL LAW CLERKS"
                       2110 "JUDGES, MAGISTRATES, AND OTHER JUDICIAL WORKERS"
                       2145 "PARALEGALS AND LEGAL ASSISTANTS"
                       2160 "MISCELLANEOUS LEGAL SUPPORT WORKERS"
                       2200 "POSTSECONDARY TEACHERS"
                       2300 "PRESCHOOL AND KINDERGARTEN TEACHERS"
                       2310 "ELEMENTARY AND MIDDLE SCHOOL TEACHERS"
                       2320 "SECONDARY SCHOOL TEACHERS"
                       2330 "SPECIAL EDUCATION TEACHERS"
                       2340 "OTHER TEACHERS AND INSTRUCTORS"
                       2400 "ARCHIVISTS, CURATORS, AND MUSEUM TECHNICIANS"
                       2430 "LIBRARIANS" 2440 "LIBRARY TECHNICIANS"
                       2540 "TEACHER ASSISTANTS"
                       2550 "OTHER EDUCATION, TRAINING, AND LIBRARY WORKERS"
                       2600 "ARTISTS AND RELATED WORKERS" 2630 "DESIGNERS"
                       2700 "ACTORS" 2710 "PRODUCERS AND DIRECTORS"
                       2720 "ATHLETES, COACHES, UMPIRES, AND RELATED WORKERS"
                       2740 "DANCERS AND CHOREOGRAPHERS"
                       2750 "MUSICIANS, SINGERS, AND RELATED WORKERS"
                       2760 "ENTERTAINERS AND PERFORMERS, SPORTS AND RELATED WORKERS, ALL OTHER"
                       2800 "ANNOUNCERS"
                       2810 "NEWS ANALYSTS, REPORTERS AND CORRESPONDENTS"
                       2825 "PUBLIC RELATIONS SPECIALISTS" 2830 "EDITORS"
                       2840 "TECHNICAL WRITERS" 2850 "WRITERS AND AUTHORS"
                       2860 "MISCELLANEOUS MEDIA AND COMMUNICATION WORKERS"
                       2900 "BROADCAST AND SOUND ENGINEERING TECHNICIANS AND RADIO OPERATORS"
                       2910 "PHOTOGRAPHERS"
                       2920 "TELEVISION, VIDEO, AND MOTION PICTURE CAMERA OPERATORS AND EDITORS"
                       2960 "MEDIA AND COMMUNICATION EQUIPMENT WORKERS, ALL OTHER"
                       3000 "CHIROPRACTORS" 3010 "DENTISTS"
                       3030 "DIETITIANS AND NUTRITIONISTS"
                       3040 "OPTOMETRISTS" 3050 "PHARMACISTS"
                       3060 "PHYSICIANS AND SURGEONS"
                       3110 "PHYSICIAN ASSISTANTS" 3120 "PODIATRISTS"
                       3140 "AUDIOLOGISTS" 3150 "OCCUPATIONAL THERAPISTS"
                       3160 "PHYSICAL THERAPISTS" 3200 "RADIATION THERAPISTS"
                       3210 "RECREATIONAL THERAPISTS"
                       3220 "RESPIRATORY THERAPISTS"
                       3230 "SPEECH-LANGUAGE PATHOLOGISTS"
                       3235 "EXERCISE PHYSIOLOGISTS"
                       3245 "THERAPISTS, ALL OTHER" 3250 "VETERINARIANS"
                       3255 "REGISTERED NURSES" 3256 "NURSE ANESTHETISTS"
                       3257 "NURSE MIDWIVES" 3258 "NURSE PRACTITIONERS"
                       3260 "HEALTH DIAGNOSING AND TREATING PRACTITIONERS, ALL OTHER"
                       3300 "CLINICAL LABORATORY TECHNOLOGISTS AND TECHNICIANS"
                       3310 "DENTAL HYGIENISTS"
                       3320 "DIAGNOSTIC RELATED TECHNOLOGISTS AND TECHNICIANS"
                       3400 "EMERGENCY MEDICAL TECHNICIANS AND PARAMEDICS"
                       3420 "HEALTH PRACTITIONER SUPPORT TECHNOLOGISTS AND TECHNICIANS"
                       3500 "LICENSED PRACTICAL AND LICENSED VOCATIONAL NURSES"
                       3510 "MEDICAL RECORDS AND HEALTH INFORMATION TECHNICIANS"
                       3520 "OPTICIANS, DISPENSING"
                       3535 "MISCELLANEOUS HEALTH TECHNOLOGISTS AND TECHNICIANS"
                       3540 "OTHER HEALTHCARE PRACTITIONERS AND TECHNICAL OCCUPATIONS"
                       3600 "NURSING, PSYCHIATRIC, AND HOME HEALTH AIDES"
                       3610 "OCCUPATIONAL THERAPY ASSISTANTS AND AIDES"
                       3620 "PHYSICAL THERAPIST ASSISTANTS AND AIDES"
                       3630 "MASSAGE THERAPISTS" 3640 "DENTAL ASSISTANTS"
                       3645 "MEDICAL ASSISTANTS"
                       3646 "MEDICAL TRANSCRIPTIONISTS" 3647 "PHARMACY AIDES"
                       3648 "VETERINARY ASSISTANTS AND LABORATORY ANIMAL CARETAKERS"
                       3649 "PHLEBOTOMISTS"
                       3655 "HEALTHCARE SUPPORT WORKERS, ALL OTHER, INCLUDING MEDICAL EQUIPMENT PREPARERS"
                       3700 "FIRST-LINE SUPERVISORS OF CORRECTIONAL OFFICERS"
                       3710 "FIRST-LINE SUPERVISORS OF POLICE AND DETECTIVES"
                       3720 "FIRST-LINE SUPERVISORS OF FIRE FIGHTING AND PREVENTION WORKERS"
                       3730 "FIRST-LINE SUPERVISORS OF PROTECTIVE SERVICE WORKERS, ALL OTHER"
                       3740 "FIREFIGHTERS" 3750 "FIRE INSPECTORS"
                       3800 "BAILIFFS, CORRECTIONAL OFFICERS, AND JAILERS"
                       3820 "DETECTIVES AND CRIMINAL INVESTIGATORS"
                       3830 "FISH AND GAME WARDENS"
                       3840 "PARKING ENFORCEMENT WORKERS"
                       3850 "POLICE AND SHERIFF'S PATROL OFFICERS"
                       3860 "TRANSIT AND RAILROAD POLICE"
                       3900 "ANIMAL CONTROL WORKERS"
                       3910 "PRIVATE DETECTIVES AND INVESTIGATORS"
                       3930 "SECURITY GUARDS AND GAMING SURVEILLANCE OFFICERS"
                       3940 "CROSSING GUARDS"
                       3945 "TRANSPORTATION SECURITY SCREENERS"
                       3955 "LIFEGUARDS AND OTHER RECREATIONAL, AND ALL OTHER PROTECTIVE SERVICE WORKERS"
                       4000 "CHEFS AND HEAD COOKS"
                       4010 "FIRST-LINE SUPERVISORS OF FOOD PREPARATION AND SERVING WORKERS"
                       4020 "COOKS" 4030 "FOOD PREPARATION WORKERS"
                       4040 "BARTENDERS"
                       4050 "COMBINED FOOD PREPARATION AND SERVING WORKERS, INCLUDING FAST FOOD"
                       4060 "COUNTER ATTENDANTS, CAFETERIA, FOOD CONCESSION, AND COFFEE SHOP"
                       4110 "WAITERS AND WAITRESSES"
                       4120 "FOOD SERVERS, NONRESTAURANT"
                       4130 "DINING ROOM AND CAFETERIA ATTENDANTS AND BARTENDER HELPERS"
                       4140 "DISHWASHERS"
                       4150 "HOSTS AND HOSTESSES, RESTAURANT, LOUNGE, AND COFFEE SHOP"
                       4160 "FOOD PREPARATION AND SERVING RELATED WORKERS, ALL OTHER"
                       4200 "FIRST-LINE SUPERVISORS OF HOUSEKEEPING AND JANITORIAL WORKERS"
                       4210 "FIRST-LINE SUPERVISORS OF LANDSCAPING, LAWN SERVICE, AND GROUNDSKEEPING WORKERS"
                       4220 "JANITORS AND BUILDING CLEANERS"
                       4230 "MAIDS AND HOUSEKEEPING CLEANERS"
                       4240 "PEST CONTROL WORKERS"
                       4250 "GROUNDS MAINTENANCE WORKERS"
                       4300 "FIRST-LINE SUPERVISORS OF GAMING WORKERS"
                       4320 "FIRST-LINE SUPERVISORS OF PERSONAL SERVICE WORKERS"
                       4340 "ANIMAL TRAINERS"
                       4350 "NONFARM ANIMAL CARETAKERS"
                       4400 "GAMING SERVICES WORKERS"
                       4410 "MOTION PICTURE PROJECTIONISTS"
                       4420 "USHERS, LOBBY ATTENDANTS, AND TICKET TAKERS"
                       4430 "MISCELLANEOUS ENTERTAINMENT ATTENDANTS AND RELATED WORKERS"
                       4460 "EMBALMERS AND FUNERAL ATTENDANTS"
                       4465 "MORTICIANS, UNDERTAKERS, AND FUNERAL DIRECTORS"
                       4500 "BARBERS"
                       4510 "HAIRDRESSERS, HAIRSTYLISTS, AND COSMETOLOGISTS"
                       4520 "MISCELLANEOUS PERSONAL APPEARANCE WORKERS"
                       4530 "BAGGAGE PORTERS, BELLHOPS, AND CONCIERGES"
                       4540 "TOUR AND TRAVEL GUIDES" 4600 "CHILDCARE WORKERS"
                       4610 "PERSONAL CARE AIDES"
                       4620 "RECREATION AND FITNESS WORKERS"
                       4640 "RESIDENTIAL ADVISORS"
                       4650 "PERSONAL CARE AND SERVICE WORKERS, ALL OTHER"
                       4700 "FIRST-LINE SUPERVISORS OF RETAIL SALES WORKERS"
                       4710 "FIRST-LINE SUPERVISORS OF NON-RETAIL SALES WORKERS"
                       4720 "CASHIERS" 4740 "COUNTER AND RENTAL CLERKS"
                       4750 "PARTS SALESPERSONS" 4760 "RETAIL SALESPERSONS"
                       4800 "ADVERTISING SALES AGENTS"
                       4810 "INSURANCE SALES AGENTS"
                       4820 "SECURITIES, COMMODITIES, AND FINANCIAL SERVICES SALES AGENTS"
                       4830 "TRAVEL AGENTS"
                       4840 "SALES REPRESENTATIVES, SERVICES, ALL OTHER"
                       4850 "SALES REPRESENTATIVES, WHOLESALE AND MANUFACTURING"
                       4900 "MODELS, DEMONSTRATORS, AND PRODUCT PROMOTERS"
                       4920 "REAL ESTATE BROKERS AND SALES AGENTS"
                       4930 "SALES ENGINEERS" 4940 "TELEMARKETERS"
                       4950 "DOOR-TO-DOOR SALES WORKERS, NEWS AND STREET VENDORS, AND RELATED WORKERS"
                       4965 "SALES AND RELATED WORKERS, ALL OTHER"
                       5000 "FIRST-LINE SUPERVISORS OF OFFICE AND ADMINISTRATIVE SUPPORT WORKERS"
                       5010 "SWITCHBOARD OPERATORS, INCLUDING ANSWERING SERVICE"
                       5020 "TELEPHONE OPERATORS"
                       5030 "COMMUNICATIONS EQUIPMENT OPERATORS, ALL OTHER"
                       5100 "BILL AND ACCOUNT COLLECTORS"
                       5110 "BILLING AND POSTING CLERKS"
                       5120 "BOOKKEEPING, ACCOUNTING, AND AUDITING CLERKS"
                       5130 "GAMING CAGE WORKERS"
                       5140 "PAYROLL AND TIMEKEEPING CLERKS"
                       5150 "PROCUREMENT CLERKS" 5160 "TELLERS"
                       5165 "FINANCIAL CLERKS, ALL OTHER"
                       5200 "BROKERAGE CLERKS" 5210 "CORRESPONDENCE CLERKS"
                       5220 "COURT, MUNICIPAL, AND LICENSE CLERKS"
                       5230 "CREDIT AUTHORIZERS, CHECKERS, AND CLERKS"
                       5240 "CUSTOMER SERVICE REPRESENTATIVES"
                       5250 "ELIGIBILITY INTERVIEWERS, GOVERNMENT PROGRAMS"
                       5260 "FILE CLERKS"
                       5300 "HOTEL, MOTEL, AND RESORT DESK CLERKS"
                       5310 "INTERVIEWERS, EXCEPT ELIGIBILITY AND LOAN"
                       5320 "LIBRARY ASSISTANTS, CLERICAL"
                       5330 "LOAN INTERVIEWERS AND CLERKS"
                       5340 "NEW ACCOUNTS CLERKS" 5350 "ORDER CLERKS"
                       5360 "HUMAN RESOURCES ASSISTANTS, EXCEPT PAYROLL AND TIMEKEEPING"
                       5400 "RECEPTIONISTS AND INFORMATION CLERKS"
                       5410 "RESERVATION AND TRANSPORTATION TICKET AGENTS AND TRAVEL CLERKS"
                       5420 "INFORMATION AND RECORD CLERKS, ALL OTHER"
                       5500 "CARGO AND FREIGHT AGENTS"
                       5510 "COURIERS AND MESSENGERS" 5520 "DISPATCHERS"
                       5530 "METER READERS, UTILITIES"
                       5540 "POSTAL SERVICE CLERKS"
                       5550 "POSTAL SERVICE MAIL CARRIERS"
                       5560 "POSTAL SERVICE MAIL SORTERS, PROCESSORS, AND PROCESSING MACHINE OPERATORS"
                       5600 "PRODUCTION, PLANNING, AND EXPEDITING CLERKS"
                       5610 "SHIPPING, RECEIVING, AND TRAFFIC CLERKS"
                       5620 "STOCK CLERKS AND ORDER FILLERS"
                       5630 "WEIGHERS, MEASURERS, CHECKERS, AND SAMPLERS, RECORDKEEPING"
                       5700 "SECRETARIES AND ADMINISTRATIVE ASSISTANTS"
                       5800 "COMPUTER OPERATORS" 5810 "DATA ENTRY KEYERS"
                       5820 "WORD PROCESSORS AND TYPISTS"
                       5830 "DESKTOP PUBLISHERS"
                       5840 "INSURANCE CLAIMS AND POLICY PROCESSING CLERKS"
                       5850 "MAIL CLERKS AND MAIL MACHINE OPERATORS, EXCEPT POSTAL SERVICE"
                       5860 "OFFICE CLERKS, GENERAL"
                       5900 "OFFICE MACHINE OPERATORS, EXCEPT COMPUTER"
                       5910 "PROOFREADERS AND COPY MARKERS"
                       5920 "STATISTICAL ASSISTANTS"
                       5940 "OFFICE AND ADMINISTRATIVE SUPPORT WORKERS, ALL OTHER"
                       6005 "FIRST-LINE SUPERVISORS OF FARMING, FISHING, AND FORESTRY WORKERS"
                       6010 "AGRICULTURAL INSPECTORS" 6020 "ANIMAL BREEDERS"
                       6040 "GRADERS AND SORTERS, AGRICULTURAL PRODUCTS"
                       6050 "MISCELLANEOUS AGRICULTURAL WORKERS"
                       6100 "FISHERS AND RELATED FISHING WORKERS"
                       6110 "HUNTERS AND TRAPPERS"
                       6120 "FOREST AND CONSERVATION WORKERS"
                       6130 "LOGGING WORKERS"
                       6200 "FIRST-LINE SUPERVISORS OF CONSTRUCTION TRADES AND EXTRACTION WORKERS"
                       6210 "BOILERMAKERS"
                       6220 "BRICKMASONS, BLOCKMASONS, AND STONEMASONS"
                       6230 "CARPENTERS"
                       6240 "CARPET, FLOOR, AND TILE INSTALLERS AND FINISHERS"
                       6250 "CEMENT MASONS, CONCRETE FINISHERS, AND TERRAZZO WORKERS"
                       6260 "CONSTRUCTION LABORERS"
                       6300 "PAVING, SURFACING, AND TAMPING EQUIPMENT OPERATORS"
                       6310 "PILE-DRIVER OPERATORS"
                       6320 "OPERATING ENGINEERS AND OTHER CONSTRUCTION EQUIPMENT OPERATORS"
                       6330 "DRYWALL INSTALLERS, CEILING TILE INSTALLERS, AND TAPERS"
                       6355 "ELECTRICIANS" 6360 "GLAZIERS"
                       6400 "INSULATION WORKERS"
                       6420 "PAINTERS, CONSTRUCTION AND MAINTENANCE"
                       6430 "PAPERHANGERS"
                       6440 "PIPELAYERS, PLUMBERS, PIPEFITTERS, AND STEAMFITTERS"
                       6460 "PLASTERERS AND STUCCO MASONS"
                       6500 "REINFORCING IRON AND REBAR WORKERS"
                       6515 "ROOFERS" 6520 "SHEET METAL WORKERS"
                       6530 "STRUCTURAL IRON AND STEEL WORKERS"
                       6540 "SOLAR PHOTOVOLTAIC INSTALLERS"
                       6600 "HELPERS, CONSTRUCTION TRADES"
                       6660 "CONSTRUCTION AND BUILDING INSPECTORS"
                       6700 "ELEVATOR INSTALLERS AND REPAIRERS"
                       6710 "FENCE ERECTORS"
                       6720 "HAZARDOUS MATERIALS REMOVAL WORKERS"
                       6730 "HIGHWAY MAINTENANCE WORKERS"
                       6740 "RAIL-TRACK LAYING AND MAINTENANCE EQUIPMENT OPERATORS"
                       6750 "SEPTIC TANK SERVICERS AND SEWER PIPE CLEANERS"
                       6765 "MISCELLANEOUS CONSTRUCTION AND RELATED WORKERS"
                       6800 "DERRICK, ROTARY DRILL, AND SERVICE UNIT OPERATORS, OIL, GAS, AND MINING"
                       6820 "EARTH DRILLERS, EXCEPT OIL AND GAS"
                       6830 "EXPLOSIVES WORKERS, ORDNANCE HANDLING EXPERTS, AND BLASTERS"
                       6840 "MINING MACHINE OPERATORS"
                       6910 "ROOF BOLTERS, MINING"
                       6920 "ROUSTABOUTS, OIL AND GAS"
                       6930 "HELPERS--EXTRACTION WORKERS"
                       6940 "OTHER EXTRACTION WORKERS"
                       7000 "FIRST-LINE SUPERVISORS OF MECHANICS, INSTALLERS, AND REPAIRERS"
                       7010 "COMPUTER, AUTOMATED TELLER, AND OFFICE MACHINE REPAIRERS"
                       7020 "RADIO AND TELECOMMUNICATIONS EQUIPMENT INSTALLERS AND REPAIRERS"
                       7030 "AVIONICS TECHNICIANS"
                       7040 "ELECTRIC MOTOR, POWER TOOL, AND RELATED REPAIRERS"
                       7050 "ELECTRICAL AND ELECTRONICS INSTALLERS AND REPAIRERS, TRANSPORTATION EQUIPMENT"
                       7100 "ELECTRICAL AND ELECTRONICS REPAIRERS, INDUSTRIAL AND UTILITY"
                       7110 "ELECTRONIC EQUIPMENT INSTALLERS AND REPAIRERS, MOTOR VEHICLES"
                       7120 "ELECTRONIC HOME ENTERTAINMENT EQUIPMENT INSTALLERS AND REPAIRERS"
                       7130 "SECURITY AND FIRE ALARM SYSTEMS INSTALLERS"
                       7140 "AIRCRAFT MECHANICS AND SERVICE TECHNICIANS"
                       7150 "AUTOMOTIVE BODY AND RELATED REPAIRERS"
                       7160 "AUTOMOTIVE GLASS INSTALLERS AND REPAIRERS"
                       7200 "AUTOMOTIVE SERVICE TECHNICIANS AND MECHANICS"
                       7210 "BUS AND TRUCK MECHANICS AND DIESEL ENGINE SPECIALISTS"
                       7220 "HEAVY VEHICLE AND MOBILE EQUIPMENT SERVICE TECHNICIANS AND MECHANICS"
                       7240 "SMALL ENGINE MECHANICS"
                       7260 "MISCELLANEOUS VEHICLE AND MOBILE EQUIPMENT MECHANICS, INSTALLERS, AND REPAIRERS"
                       7300 "CONTROL AND VALVE INSTALLERS AND REPAIRERS"
                       7315 "HEATING, AIR CONDITIONING, AND REFRIGERATION MECHANICS AND INSTALLERS"
                       7320 "HOME APPLIANCE REPAIRERS"
                       7330 "INDUSTRIAL AND REFRACTORY MACHINERY MECHANICS"
                       7340 "MAINTENANCE AND REPAIR WORKERS, GENERAL"
                       7350 "MAINTENANCE WORKERS, MACHINERY"
                       7360 "MILLWRIGHTS"
                       7410 "ELECTRICAL POWER-LINE INSTALLERS AND REPAIRERS"
                       7420 "TELECOMMUNICATIONS LINE INSTALLERS AND REPAIRERS"
                       7430 "PRECISION INSTRUMENT AND EQUIPMENT REPAIRERS"
                       7440 "WIND TURBINE SERVICE TECHNICIANS"
                       7510 "COIN, VENDING, AND AMUSEMENT MACHINE SERVICERS AND REPAIRERS"
                       7520 "COMMERCIAL DIVERS"
                       7540 "LOCKSMITHS AND SAFE REPAIRERS"
                       7550 "MANUFACTURED BUILDING AND MOBILE HOME INSTALLERS"
                       7560 "RIGGERS"
                       7600 "SIGNAL AND TRACK SWITCH REPAIRERS"
                       7610 "HELPERS--INSTALLATION, MAINTENANCE, AND REPAIR WORKERS"
                       7630 "OTHER INSTALLATION, MAINTENANCE, AND REPAIR WORKERS"
                       7700 "FIRST-LINE SUPERVISORS OF PRODUCTION AND OPERATING WORKERS"
                       7710 "AIRCRAFT STRUCTURE, SURFACES, RIGGING, AND SYSTEMS ASSEMBLERS"
                       7720 "ELECTRICAL, ELECTRONICS, AND ELECTROMECHANICAL ASSEMBLERS"
                       7730 "ENGINE AND OTHER MACHINE ASSEMBLERS"
                       7740 "STRUCTURAL METAL FABRICATORS AND FITTERS"
                       7750 "MISCELLANEOUS ASSEMBLERS AND FABRICATORS"
                       7800 "BAKERS"
                       7810 "BUTCHERS AND OTHER MEAT, POULTRY, AND FISH PROCESSING WORKERS"
                       7830 "FOOD AND TOBACCO ROASTING, BAKING, AND DRYING MACHINE OPERATORS AND TENDERS"
                       7840 "FOOD BATCHMAKERS"
                       7850 "FOOD COOKING MACHINE OPERATORS AND TENDERS"
                       7855 "FOOD PROCESSING WORKERS, ALL OTHER"
                       7900 "COMPUTER CONTROL PROGRAMMERS AND OPERATORS"
                       7920 "EXTRUDING AND DRAWING MACHINE SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC"
                       7930 "FORGING MACHINE SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC"
                       7940 "ROLLING MACHINE SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC"
                       7950 "CUTTING, PUNCHING, AND PRESS MACHINE SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC"
                       7960 "DRILLING AND BORING MACHINE TOOL SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC"
                       8000 "GRINDING, LAPPING, POLISHING, AND BUFFING MACHINE TOOL SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC"
                       8010 "LATHE AND TURNING MACHINE TOOL SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC"
                       8020 "MILLING AND PLANING MACHINE SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC"
                       8030 "MACHINISTS"
                       8040 "METAL FURNACE OPERATORS, TENDERS, POURERS, AND CASTERS"
                       8060 "MODEL MAKERS AND PATTERNMAKERS, METAL AND PLASTIC"
                       8100 "MOLDERS AND MOLDING MACHINE SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC"
                       8120 "MULTIPLE MACHINE TOOL SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC"
                       8130 "TOOL AND DIE MAKERS"
                       8140 "WELDING, SOLDERING, AND BRAZING WORKERS"
                       8150 "HEAT TREATING EQUIPMENT SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC"
                       8160 "LAYOUT WORKERS, METAL AND PLASTIC"
                       8200 "PLATING AND COATING MACHINE SETTERS, OPERATORS, AND TENDERS, METAL AND PLASTIC"
                       8210 "TOOL GRINDERS, FILERS, AND SHARPENERS"
                       8220 "METAL WORKERS AND PLASTIC WORKERS, ALL OTHER"
                       8250 "PREPRESS TECHNICIANS AND WORKERS"
                       8255 "PRINTING PRESS OPERATORS"
                       8256 "PRINT BINDING AND FINISHING WORKERS"
                       8300 "LAUNDRY AND DRY-CLEANING WORKERS"
                       8310 "PRESSERS, TEXTILE, GARMENT, AND RELATED MATERIALS"
                       8320 "SEWING MACHINE OPERATORS"
                       8330 "SHOE AND LEATHER WORKERS AND REPAIRERS"
                       8340 "SHOE MACHINE OPERATORS AND TENDERS"
                       8350 "TAILORS, DRESSMAKERS, AND SEWERS"
                       8360 "TEXTILE BLEACHING AND DYEING MACHINE OPERATORS AND TENDERS"
                       8400 "TEXTILE CUTTING MACHINE SETTERS, OPERATORS, AND TENDERS"
                       8410 "TEXTILE KNITTING AND WEAVING MACHINE SETTERS, OPERATORS, AND TENDERS"
                       8420 "TEXTILE WINDING, TWISTING, AND DRAWING OUT MACHINE SETTERS, OPERATORS, AND TENDERS"
                       8430 "EXTRUDING AND FORMING MACHINE SETTERS, OPERATORS, AND TENDERS, SYNTHETIC AND GLASS FIBERS"
                       8440 "FABRIC AND APPAREL PATTERNMAKERS"
                       8450 "UPHOLSTERERS"
                       8460 "TEXTILE, APPAREL, AND FURNISHINGS WORKERS, ALL OTHER"
                       8500 "CABINETMAKERS AND BENCH CARPENTERS"
                       8510 "FURNITURE FINISHERS"
                       8520 "MODEL MAKERS AND PATTERNMAKERS, WOOD"
                       8530 "SAWING MACHINE SETTERS, OPERATORS, AND TENDERS, WOOD"
                       8540 "WOODWORKING MACHINE SETTERS, OPERATORS, AND TENDERS, EXCEPT SAWING"
                       8550 "WOODWORKERS, ALL OTHER"
                       8600 "POWER PLANT OPERATORS, DISTRIBUTORS, AND DISPATCHERS"
                       8610 "STATIONARY ENGINEERS AND BOILER OPERATORS"
                       8620 "WATER AND WASTEWATER TREATMENT PLANT AND SYSTEM OPERATORS"
                       8630 "MISCELLANEOUS PLANT AND SYSTEM OPERATORS"
                       8640 "CHEMICAL PROCESSING MACHINE SETTERS, OPERATORS, AND TENDERS"
                       8650 "CRUSHING, GRINDING, POLISHING, MIXING, AND BLENDING WORKERS"
                       8710 "CUTTING WORKERS"
                       8720 "EXTRUDING, FORMING, PRESSING, AND COMPACTING MACHINE SETTERS, OPERATORS, AND TENDERS"
                       8730 "FURNACE, KILN, OVEN, DRIER, AND KETTLE OPERATORS AND TENDERS"
                       8740 "INSPECTORS, TESTERS, SORTERS, SAMPLERS, AND WEIGHERS"
                       8750 "JEWELERS AND PRECIOUS STONE AND METAL WORKERS"
                       8760 "MEDICAL, DENTAL, AND OPHTHALMIC LABORATORY TECHNICIANS"
                       8800 "PACKAGING AND FILLING MACHINE OPERATORS AND TENDERS"
                       8810 "PAINTING WORKERS"
                       8830 "PHOTOGRAPHIC PROCESS WORKERS AND PROCESSING MACHINE OPERATORS"
                       8840 "SEMICONDUCTOR PROCESSORS"
                       8850 "ADHESIVE BONDING MACHINE OPERATORS AND TENDERS"
                       8860 "CLEANING, WASHING, AND METAL PICKLING EQUIPMENT OPERATORS AND TENDERS"
                       8900 "COOLING AND FREEZING EQUIPMENT OPERATORS AND TENDERS"
                       8910 "ETCHERS AND ENGRAVERS"
                       8920 "MOLDERS, SHAPERS, AND CASTERS, EXCEPT METAL AND PLASTIC"
                       8930 "PAPER GOODS MACHINE SETTERS, OPERATORS, AND TENDERS"
                       8940 "TIRE BUILDERS"
                       8950 "HELPERS--PRODUCTION WORKERS"
                       8965 "PRODUCTION WORKERS, ALL OTHER"
                       9000 "SUPERVISORS OF TRANSPORTATION AND MATERIAL MOVING WORKERS"
                       9030 "AIRCRAFT PILOTS AND FLIGHT ENGINEERS"
                       9040 "AIR TRAFFIC CONTROLLERS AND AIRFIELD OPERATIONS SPECIALISTS"
                       9050 "FLIGHT ATTENDANTS"
                       9110 "AMBULANCE DRIVERS AND ATTENDANTS, EXCEPT EMERGENCY MEDICAL TECHNICIANS"
                       9120 "BUS DRIVERS"
                       9130 "DRIVER/SALES WORKERS AND TRUCK DRIVERS"
                       9140 "TAXI DRIVERS AND CHAUFFEURS"
                       9150 "MOTOR VEHICLE OPERATORS, ALL OTHER"
                       9200 "LOCOMOTIVE ENGINEERS AND OPERATORS"
                       9230 "RAILROAD BRAKE, SIGNAL, AND SWITCH OPERATORS"
                       9240 "RAILROAD CONDUCTORS AND YARDMASTERS"
                       9260 "SUBWAY, STREETCAR, AND OTHER RAIL TRANSPORTATION WORKERS"
                       9300 "SAILORS AND MARINE OILERS"
                       9310 "SHIP AND BOAT CAPTAINS AND OPERATORS"
                       9330 "SHIP ENGINEERS" 9340 "BRIDGE AND LOCK TENDERS"
                       9350 "PARKING LOT ATTENDANTS"
                       9360 "AUTOMOTIVE AND WATERCRAFT SERVICE ATTENDANTS"
                       9410 "TRANSPORTATION INSPECTORS"
                       9415 "TRANSPORTATION ATTENDANTS, EXCEPT FLIGHT ATTENDANTS"
                       9420 "OTHER TRANSPORTATION WORKERS"
                       9500 "CONVEYOR OPERATORS AND TENDERS"
                       9510 "CRANE AND TOWER OPERATORS"
                       9520 "DREDGE, EXCAVATING, AND LOADING MACHINE OPERATORS"
                       9560 "HOIST AND WINCH OPERATORS"
                       9600 "INDUSTRIAL TRUCK AND TRACTOR OPERATORS"
                       9610 "CLEANERS OF VEHICLES AND EQUIPMENT"
                       9620 "LABORERS AND FREIGHT, STOCK, AND MATERIAL MOVERS, HAND"
                       9630 "MACHINE FEEDERS AND OFFBEARERS"
                       9640 "PACKERS AND PACKAGERS, HAND"
                       9650 "PUMPING STATION OPERATORS"
                       9720 "REFUSE AND RECYCLABLE MATERIAL COLLECTORS"
                       9730 "MINE SHUTTLE CAR OPERATORS"
                       9740 "TANK CAR, TRUCK, AND SHIP LOADERS"
                       9750 "MATERIAL MOVING WORKERS, ALL OTHER"
                       9800 "MILITARY OFFICER SPECIAL AND TACTICAL OPERATIONS LEADERS"
                       9810 "FIRST-LINE ENLISTED MILITARY SUPERVISORS"
                       9820 "MILITARY ENLISTED TACTICAL OPERATIONS AND AIR/WEAPONS SPECIALISTS AND CREW MEMBERS"
                       9830 "MILITARY, RANK NOT SPECIFIED"
                       9920 "UNEMPLOYED, WITH NO WORK EXPERIENCE IN THE LAST 5 YEARS OR EARLIER OR NEVER WORKED"
                       9996 "NOT IN LABOR FORCE" 9997 "UNKNOWN OR UNSURE"
                       9998 "MISSING OR NOT REPORTED" 9999 "INAPP" ;
label define C1PINDS   170 "CROP PRODUCTION" 180 "ANIMAL PRODUCTION"
                       190 "FORESTRY EXCEPT LOGGING" 270 "LOGGING"
                       280 "FISHING, HUNTING, AND TRAPPING"
                       290 "SUPPORT ACTIVITIES FOR AGRICULTURE AND FORESTRY"
                       370 "OIL AND GAS EXTRACTION" 380 "COAL MINING"
                       390 "METAL ORE MINING"
                       470 "NONMETALLIC MINERAL MINING AND QUARRYING"
                       480 "NOT SPECIFIED TYPE OF MINING"
                       490 "SUPPORT ACTIVITIES FOR MINING"
                       570 "ELECTRIC POWER GENERATION, TRANSMISSION AND DISTRIBUTION"
                       580 "NATURAL GAS DISTRIBUTION"
                       590 "ELECTRIC AND GAS, AND OTHER COMBINATIONS"
                       670 "WATER, STEAM, AIR-CONDITIONING, AND IRRIGATION SYSTEMS"
                       680 "SEWAGE TREATMENT FACILITIES"
                       690 "NOT SPECIFIED UTILITIES" 770 "CONSTRUCTION"
                       1070 "ANIMAL FOOD, GRAIN AND OILSEED MILLING"
                       1080 "SUGAR AND CONFECTIONERY PRODUCTS"
                       1090 "FRUIT AND VEGETABLE PRESERVING AND SPECIALTY FOOD MANUFACTURING"
                       1170 "DAIRY PRODUCT MANUFACTURING"
                       1180 "ANIMAL SLAUGHTERING AND PROCESSING"
                       1190 "RETAIL BAKERIES" 1270 "BAKERIES, EXCEPT RETAIL"
                       1280 "SEAFOOD AND OTHER MISCELLANEOUS FOODS, N.E.C."
                       1290 "NOT SPECIFIED FOOD INDUSTRIES"
                       1370 "BEVERAGE MANUFACTURING"
                       1390 "TOBACCO MANUFACTURING"
                       1470 "FIBER, YARN, AND THREAD MILLS"
                       1480 "FABRIC MILLS, EXCEPT KNITTING MILLS"
                       1490 "TEXTILE AND FABRIC FINISHING AND COATING MILLS"
                       1570 "CARPET AND RUG MILLS"
                       1590 "TEXTILE PRODUCT MILLS, EXCEPT CARPETS AND RUGS"
                       1670 "KNITTING FABRIC MILLS, AND APPAREL KNITTING MILLS"
                       1680 "CUT AND SEW APPAREL MANUFACTURING"
                       1690 "APPAREL ACCESSORIES AND OTHER APPAREL MANUFACTURING"
                       1770 "FOOTWEAR MANUFACTURING"
                       1790 "LEATHER TANNING AND FINISHING AND OTHER ALLIED PRODUCTS MANUFACTURING"
                       1870 "PULP, PAPER, AND PAPERBOARD MILLS"
                       1880 "PAPERBOARD CONTAINERS AND BOXES"
                       1890 "MISCELLANEOUS PAPER AND PULP PRODUCTS"
                       1990 "PRINTING AND RELATED SUPPORT ACTIVITIES"
                       2070 "PETROLEUM REFINING"
                       2090 "MISCELLANEOUS PETROLEUM AND COAL PRODUCTS"
                       2170 "RESIN, SYNTHETIC RUBBER AND FIBERS, AND FILAMENTS MANUFACTURING"
                       2180 "AGRICULTURAL CHEMICAL MANUFACTURING"
                       2190 "PHARMACEUTICAL AND MEDICINE MANUFACTURING"
                       2270 "PAINT, COATING, AND ADHESIVE MANUFACTURING"
                       2280 "SOAP, CLEANING COMPOUND, AND COSMETICS MANUFACTURING"
                       2290 "INDUSTRIAL AND MISCELLANEOUS CHEMICALS"
                       2370 "PLASTICS PRODUCT MANUFACTURING"
                       2380 "TIRE MANUFACTURING"
                       2390 "RUBBER PRODUCTS, EXCEPT TIRES, MANUFACTURING"
                       2470 "POTTERY, CERAMICS, AND PLUMBING FIXTURE MANUFACTURING"
                       2480 "STRUCTURAL CLAY PRODUCT MANUFACTURING"
                       2490 "GLASS AND GLASS PRODUCT MANUFACTURING"
                       2570 "CEMENT, CONCRETE, LIME, AND GYPSUM PRODUCT MANUFACTURING"
                       2590 "MISCELLANEOUS NONMETALLIC MINERAL PRODUCT MANUFACTURING"
                       2670 "IRON AND STEEL MILLS AND STEEL PRODUCT MANUFACTURING"
                       2680 "ALUMINUM PRODUCTION AND PROCESSING"
                       2690 "NONFERROUS METAL, EXCEPT ALUMINUM, PRODUCTION AND PROCESSING"
                       2770 "FOUNDRIES" 2780 "METAL FORGINGS AND STAMPINGS"
                       2790 "CUTLERY AND HAND TOOL MANUFACTURING"
                       2870 "STRUCTURAL METALS, AND BOILER, TANK, AND SHIPPING CONTAINER MANUFACTURING"
                       2880 "MACHINE SHOPS; TURNED PRODUCT; SCREW, NUT AND BOLT MANUFACTURING"
                       2890 "COATING, ENGRAVING, HEAT TREATING AND ALLIED ACTIVITIES"
                       2970 "ORDNANCE"
                       2980 "MISCELLANEOUS FABRICATED METAL PRODUCTS MANUFACTURING"
                       2990 "NOT SPECIFIED METAL INDUSTRIES"
                       3070 "AGRICULTURAL IMPLEMENT MANUFACTURING"
                       3080 "CONSTRUCTION, AND MINING AND OIL AND GAS FIELD MACHINERY MANUFACTURING"
                       3090 "COMMERCIAL AND SERVICE INDUSTRY MACHINERY MANUFACTURING"
                       3170 "METALWORKING MACHINERY MANUFACTURING"
                       3180 "ENGINES, TURBINES, AND POWER TRANSMISSION EQUIPMENT MANUFACTURING"
                       3190 "MACHINERY MANUFACTURING, N.E.C."
                       3290 "NOT SPECIFIED MACHINERY MANUFACTURING"
                       3360 "COMPUTER AND PERIPHERAL EQUIPMENT MANUFACTURING"
                       3370 "COMMUNICATIONS, AUDIO, AND VIDEO EQUIPMENT MANUFACTURING"
                       3380 "NAVIGATIONAL, MEASURING, ELECTROMEDICAL, AND CONTROL INSTRUMENTS MANUFACTURING"
                       3390 "ELECTRONIC COMPONENT AND PRODUCT MANUFACTURING, N.E.C."
                       3470 "HOUSEHOLD APPLIANCE MANUFACTURING"
                       3490 "ELECTRIC LIGHTING AND ELECTRICAL EQUIPMENT MANUFACTURING, AND OTHER ELECTRICAL COMPONENT MANUFACTURING, N.E.C."
                       3570 "MOTOR VEHICLES AND MOTOR VEHICLE EQUIPMENT MANUFACTURING"
                       3580 "AIRCRAFT AND PARTS MANUFACTURING"
                       3590 "AEROSPACE PRODUCTS AND PARTS MANUFACTURING"
                       3670 "RAILROAD ROLLING STOCK MANUFACTURING"
                       3680 "SHIP AND BOAT BUILDING"
                       3690 "OTHER TRANSPORTATION EQUIPMENT MANUFACTURING"
                       3770 "SAWMILLS AND WOOD PRESERVATION"
                       3780 "VENEER, PLYWOOD, AND ENGINEERED WOOD PRODUCTS"
                       3790 "PREFABRICATED WOOD BUILDINGS AND MOBILE HOMES MANUFACTURING"
                       3870 "MISCELLANEOUS WOOD PRODUCT MANUFACTURING"
                       3890 "FURNITURE AND RELATED PRODUCT MANUFACTURING"
                       3960 "MEDICAL EQUIPMENT AND SUPPLIES MANUFACTURING"
                       3970 "SPORTING AND ATHLETIC GOODS, AND DOLL, TOY AND GAME MANUFACTURING"
                       3980 "MISCELLANEOUS MANUFACTURING, N.E.C."
                       3990 "NOT SPECIFIED MANUFACTURING INDUSTRIES"
                       4070 "MOTOR VEHICLES, PARTS AND SUPPLIES MERCHANT WHOLESALERS"
                       4080 "FURNITURE AND HOME FURNISHING MERCHANT WHOLESALERS"
                       4090 "LUMBER AND OTHER CONSTRUCTION MATERIALS MERCHANT WHOLESALERS"
                       4170 "PROFESSIONAL AND COMMERCIAL EQUIPMENT AND SUPPLIES MERCHANT WHOLESALERS"
                       4180 "METALS AND MINERALS, EXCEPT PETROLEUM, MERCHANT WHOLESALERS"
                       4190 "ELECTRICAL AND ELECTRONIC GOODS MERCHANT WHOLESALERS"
                       4260 "HARDWARE, PLUMBING AND HEATING EQUIPMENT, AND SUPPLIES MERCHANT WHOLESALERS"
                       4270 "MACHINERY, EQUIPMENT, AND SUPPLIES MERCHANT WHOLESALERS"
                       4280 "RECYCLABLE MATERIAL MERCHANT WHOLESALERS"
                       4290 "MISCELLANEOUS DURABLE GOODS MERCHANT WHOLESALERS"
                       4370 "PAPER AND PAPER PRODUCTS MERCHANT WHOLESALERS"
                       4380 "DRUGS, SUNDRIES, AND CHEMICAL AND ALLIED PRODUCTS MERCHANT WHOLESALERS"
                       4390 "APPAREL, FABRICS, AND NOTIONS MERCHANT WHOLESALERS"
                       4470 "GROCERIES AND RELATED PRODUCTS MERCHANT WHOLESALERS"
                       4480 "FARM PRODUCT RAW MATERIALS MERCHANT WHOLESALERS"
                       4490 "PETROLEUM AND PETROLEUM PRODUCTS MERCHANT WHOLESALERS"
                       4560 "ALCOHOLIC BEVERAGES MERCHANT WHOLESALERS"
                       4570 "FARM SUPPLIES MERCHANT WHOLESALERS"
                       4580 "MISCELLANEOUS NONDURABLE GOODS MERCHANT WHOLESALERS"
                       4585 "WHOLESALE ELECTRONIC MARKETS AGENTS AND BROKERS"
                       4590 "NOT SPECIFIED WHOLESALE TRADE"
                       4670 "AUTOMOBILE DEALERS"
                       4680 "OTHER MOTOR VEHICLE DEALERS"
                       4690 "AUTO PARTS, ACCESSORIES, AND TIRE STORES"
                       4770 "FURNITURE AND HOME FURNISHINGS STORES"
                       4780 "HOUSEHOLD APPLIANCE STORES"
                       4790 "RADIO, TV, AND COMPUTER STORES"
                       4870 "BUILDING MATERIAL AND SUPPLIES DEALERS"
                       4880 "HARDWARE STORES"
                       4890 "LAWN AND GARDEN EQUIPMENT AND SUPPLIES STORES"
                       4970 "GROCERY STORES" 4980 "SPECIALTY FOOD STORES"
                       4990 "BEER, WINE, AND LIQUOR STORES"
                       5070 "PHARMACIES AND DRUG STORES"
                       5080 "HEALTH AND PERSONAL CARE, EXCEPT DRUG, STORES"
                       5090 "GASOLINE STATIONS" 5170 "CLOTHING STORES"
                       5180 "SHOE STORES"
                       5190 "JEWELRY, LUGGAGE, AND LEATHER GOODS STORES"
                       5270 "SPORTING GOODS, CAMERA, AND HOBBY AND TOY STORES"
                       5280 "SEWING, NEEDLEWORK, AND PIECE GOODS STORES"
                       5290 "MUSIC STORES"
                       5370 "BOOK STORES AND NEWS DEALERS"
                       5380 "DEPARTMENT STORES AND DISCOUNT STORES"
                       5390 "MISCELLANEOUS GENERAL MERCHANDISE STORES"
                       5470 "RETAIL FLORISTS"
                       5480 "OFFICE SUPPLIES AND STATIONERY STORES"
                       5490 "USED MERCHANDISE STORES"
                       5570 "GIFT, NOVELTY, AND SOUVENIR SHOPS"
                       5580 "MISCELLANEOUS RETAIL STORES"
                       5590 "ELECTRONIC SHOPPING" 5591 "ELECTRONIC AUCTIONS"
                       5592 "MAIL ORDER HOUSES"
                       5670 "VENDING MACHINE OPERATORS" 5680 "FUEL DEALERS"
                       5690 "OTHER DIRECT SELLING ESTABLISHMENTS"
                       5790 "NOT SPECIFIED RETAIL TRADE"
                       6070 "AIR TRANSPORTATION" 6080 "RAIL TRANSPORTATION"
                       6090 "WATER TRANSPORTATION"
                       6170 "TRUCK TRANSPORTATION"
                       6180 "BUS SERVICE AND URBAN TRANSIT"
                       6190 "TAXI AND LIMOUSINE SERVICE"
                       6270 "PIPELINE TRANSPORTATION"
                       6280 "SCENIC AND SIGHTSEEING TRANSPORTATION"
                       6290 "SERVICES INCIDENTAL TO TRANSPORTATION"
                       6370 "POSTAL SERVICE" 6380 "COURIERS AND MESSENGERS"
                       6390 "WAREHOUSING AND STORAGE"
                       6470 "NEWSPAPER PUBLISHERS"
                       6480 "PERIODICAL, BOOK, AND DIRECTORY PUBLISHERS"
                       6490 "SOFTWARE PUBLISHERS"
                       6570 "MOTION PICTURES AND VIDEO INDUSTRIES"
                       6590 "SOUND RECORDING INDUSTRIES"
                       6670 "RADIO AND TELEVISION BROADCASTING AND CABLE SUBSCRIPTION PROGRAMMING"
                       6672 "INTERNET PUBLISHING AND BROADCASTING AND WEB SEARCH PORTALS"
                       6680 "WIRED TELECOMMUNICATIONS CARRIERS"
                       6690 "OTHER TELECOMMUNICATIONS SERVICES"
                       6695 "DATA PROCESSING, HOSTING, AND RELATED SERVICES"
                       6770 "LIBRARIES AND ARCHIVES"
                       6780 "OTHER INFORMATION SERVICES"
                       6870 "BANKING AND RELATED ACTIVITIES"
                       6880 "SAVINGS INSTITUTIONS, INCLUDING CREDIT UNIONS"
                       6890 "NON-DEPOSITORY CREDIT AND RELATED ACTIVITIES"
                       6970 "SECURITIES, COMMODITIES, FUNDS, TRUSTS, AND OTHER FINANCIAL INVESTMENTS"
                       6990 "INSURANCE CARRIERS AND RELATED ACTIVITIES"
                       7070 "REAL ESTATE"
                       7080 "AUTOMOTIVE EQUIPMENT RENTAL AND LEASING"
                       7170 "VIDEO TAPE AND DISK RENTAL"
                       7180 "OTHER CONSUMER GOODS RENTAL"
                       7190 "COMMERCIAL, INDUSTRIAL, AND OTHER INTANGIBLE ASSETS RENTAL AND LEASING"
                       7270 "LEGAL SERVICES"
                       7280 "ACCOUNTING, TAX PREPARATION, BOOKKEEPING, AND PAYROLL SERVICES"
                       7290 "ARCHITECTURAL, ENGINEERING, AND RELATED SERVICES"
                       7370 "SPECIALIZED DESIGN SERVICES"
                       7380 "COMPUTER SYSTEMS DESIGN AND RELATED SERVICES"
                       7390 "MANAGEMENT, SCIENTIFIC, AND TECHNICAL CONSULTING SERVICES"
                       7460 "SCIENTIFIC RESEARCH AND DEVELOPMENT SERVICES"
                       7470 "ADVERTISING AND RELATED SERVICES"
                       7480 "VETERINARY SERVICES"
                       7490 "OTHER PROFESSIONAL, SCIENTIFIC, AND TECHNICAL SERVICES"
                       7570 "MANAGEMENT OF COMPANIES AND ENTERPRISES"
                       7580 "EMPLOYMENT SERVICES"
                       7590 "BUSINESS SUPPORT SERVICES"
                       7670 "TRAVEL ARRANGEMENTS AND RESERVATION SERVICES"
                       7680 "INVESTIGATION AND SECURITY SERVICES"
                       7690 "SERVICES TO BUILDINGS AND DWELLINGS (EXCEPT CLEANING DURING CONSTRUCTION AND IMMEDIATELY AFTER CONSTRUCTION)"
                       7770 "LANDSCAPING SERVICES"
                       7780 "OTHER ADMINISTRATIVE AND OTHER SUPPORT SERVICES"
                       7790 "WASTE MANAGEMENT AND REMEDIATION SERVICES"
                       7860 "ELEMENTARY AND SECONDARY SCHOOLS"
                       7870 "COLLEGES AND UNIVERSITIES, INCLUDING JUNIOR COLLEGES"
                       7880 "BUSINESS, TECHNICAL, AND TRADE SCHOOLS AND TRAINING"
                       7890 "OTHER SCHOOLS AND INSTRUCTION, AND EDUCATIONAL SUPPORT SERVICES"
                       7970 "OFFICES OF PHYSICIANS"
                       7980 "OFFICES OF DENTISTS"
                       7990 "OFFICES OF CHIROPRACTORS"
                       8070 "OFFICES OF OPTOMETRISTS"
                       8080 "OFFICES OF OTHER HEALTH PRACTITIONERS"
                       8090 "OUTPATIENT CARE CENTERS"
                       8170 "HOME HEALTH CARE SERVICES"
                       8180 "OTHER HEALTH CARE SERVICES" 8190 "HOSPITALS"
                       8270 "NURSING CARE FACILITIES"
                       8290 "RESIDENTIAL CARE FACILITIES, WITHOUT NURSING"
                       8370 "INDIVIDUAL AND FAMILY SERVICES"
                       8380 "COMMUNITY FOOD AND HOUSING, AND EMERGENCY SERVICES"
                       8390 "VOCATIONAL REHABILITATION SERVICES"
                       8470 "CHILD DAY CARE SERVICES"
                       8560 "INDEPENDENT ARTISTS, PERFORMING ARTS, SPECTATOR SPORTS, AND RELATED INDUSTRIES"
                       8570 "MUSEUMS, ART GALLERIES, HISTORICAL SITES, AND SIMILAR INSTITUTIONS"
                       8580 "BOWLING CENTERS"
                       8590 "OTHER AMUSEMENT, GAMBLING, AND RECREATION INDUSTRIES"
                       8660 "TRAVELER ACCOMMODATION"
                       8670 "RECREATIONAL VEHICLE PARKS AND CAMPS, AND ROOMING AND BOARDING HOUSES"
                       8680 "RESTAURANTS AND OTHER FOOD SERVICES"
                       8690 "DRINKING PLACES, ALCOHOLIC BEVERAGES"
                       8770 "AUTOMOTIVE REPAIR AND MAINTENANCE"
                       8780 "CAR WASHES"
                       8790 "ELECTRONIC AND PRECISION EQUIPMENT REPAIR AND MAINTENANCE"
                       8870 "COMMERCIAL AND INDUSTRIAL MACHINERY AND EQUIPMENT REPAIR AND MAINTENANCE"
                       8880 "PERSONAL AND HOUSEHOLD GOODS REPAIR AND MAINTENANCE"
                       8890 "FOOTWEAR AND LEATHER GOODS REPAIR"
                       8970 "BARBER SHOPS" 8980 "BEAUTY SALONS"
                       8990 "NAIL SALONS AND OTHER PERSONAL CARE SERVICES"
                       9070 "DRYCLEANING AND LAUNDRY SERVICES"
                       9080 "FUNERAL HOMES, CEMETERIES, AND CREMATORIES"
                       9090 "OTHER PERSONAL SERVICES"
                       9160 "RELIGIOUS ORGANIZATIONS"
                       9170 "CIVIC, SOCIAL, ADVOCACY ORGANIZATIONS, AND GRANTMAKING AND GIVING SERVICES"
                       9180 "LABOR UNIONS"
                       9190 "BUSINESS, PROFESSIONAL, POLITICAL, AND SIMILAR ORGANIZATIONS"
                       9290 "PRIVATE HOUSEHOLDS"
                       9370 "EXECUTIVE OFFICES AND LEGISLATIVE BODIES"
                       9380 "PUBLIC FINANCE ACTIVITIES"
                       9390 "OTHER GENERAL GOVERNMENT AND SUPPORT"
                       9470 "JUSTICE, PUBLIC ORDER, AND SAFETY ACTIVITIES"
                       9480 "ADMINISTRATION OF HUMAN RESOURCE PROGRAMS"
                       9490 "ADMINISTRATION OF ENVIRONMENTAL QUALITY AND HOUSING PROGRAMS"
                       9570 "ADMINISTRATION OF ECONOMIC PROGRAMS AND SPACE RESEARCH"
                       9590 "NATIONAL SECURITY AND INTERNATIONAL AFFAIRS"
                       9670 "U. S ARMY" 9680 "U. S. AIR FORCE"
                       9690 "U. S. NAVY" 9770 "U. S. MARINES"
                       9780 "U. S. COAST GUARD"
                       9790 "U. S. ARMED FORCES, BRANCH NOT SPECIFIED"
                       9870 "MILITARY RESERVES OR NATIONAL GUARD"
                       9996 "NOT IN LABOR FORCE" 9997 "UNKNOWN OR UNSURE"
                       9998 "MISSING OR NOT REPORTED" 9999 "INAPP" ;
label define C1PSOCMJ  1 "MANAGEMENT, BUSINESS, AND FINANCIAL OCCUPATIONS"
                       2 "PROFESSIONAL AND RELATED OCCUPATIONS"
                       3 "SERVICE OCCUPATIONS"
                       4 "SALES AND RELATED OCCUPATIONS"
                       5 "OFFICE AND ADMINISTRATIVE SUPPORT OCCUPATIONS"
                       6 "FARMING, FISHING, AND FORESTRY OCCUPATIONS"
                       7 "CONSTRUCTION AND EXTRACTION OCCUPATIONS"
                       8 "INSTALLATION, MAINTENANCE, AND REPAIE OCCUPATIONS"
                       9 "PRODUCTION OCCUPATIONS"
                       10 "TRANSPORTATION AND MATERIAL MOVING OCCUPATIONS"
                       11 "ARMED FORCES" 96 "NOT IN LABOR FORCE"
                       97 "UNKNOWN OR UNSURE" 98 "MISSING OR NOT REPORTED"
                       99 "INAPP" ;
label define C1PSINMJ  1 "AGRICULTURE, FORESTRY FISHING, HUNTING, AND MINING"
                       2 "CONSTRUCTION" 3 "MANUFACTURING" 4 "WHOLESALE TRADE"
                       5 "RETAIL TRADE"
                       6 "TRANSPORTATION AND WAREHOUSING AND UTILITIES"
                       7 "INFORMATION"
                       8 "FINANCE AND INSURANCE, AND REAL ESTATE, AND RENTAL AND LEASING"
                       9 "PROFESSIONAL, SCIENTIFIC, AND MANAGEMENT, AND ADMINISTRATIVE, AND WASTE MANAGEMENT SERVICES"
                       10 "EDUCATIONAL SERVICES, AND HEALTH CARE AND SOCIAL ASSISTANCE"
                       11 "ARTS,ENTERTAINMENT, AND RECREATION, AND ACCOMMODATION AND FOOD SERVICES"
                       12 "OTHER SERVICES, EXCEPT PUBLIC ADMINISTRATION"
                       13 "PUBLIC ADMINISTRATION" 14 "MILITARY"
                       96 "NOT IN LABOR FORCE" 97 "UNKNOWN OR UNSURE"
                       98 "MISSING OR NOT REPORTED" 99 "INAPP" ;
label define C1PB40    99999997 "DON'T KNOW" 99999998 "REFUSED"
                       99999999 "INAPP" ;
label define C1PB40A25 1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB40A50 1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB40A80 1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB40A35 1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB40A12 1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB40A18 1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB40A5  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB41A   1 "MORE" 2 "LESS" 3 "THE SAME" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PB41B   997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define C1PB41B10 1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB41B25 1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PB41B5  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PC1     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PC2     0 "NONE" 97 "DON'T KNOW" 98 "REFUSED" ;
label define C1PC2A    0 "NONE" 97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PC3     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PC4     0 "NONE" 97 "DON'T KNOW" 98 "REFUSED" ;
label define C1PC6     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCHA1   997 "DON'T KNOW" 998 "MISSING" 999 "INAPP" ;
label define C1PCHX1   1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PCHR1   1 "HUSBAND OR WIFE" 2 "LOVER/PARTNER"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD" 9 "SON/DAUGHT/CHILD-IN-LAW"
                       10 "FATHER/MOTHER/PARENT"
                       11 "STEP-FATHER/MOTHER/PARENT"
                       12 "FATHER/MOTHER/PARENT-IN-LAW OR PARTNER'S FARTHER/MOTHER/PARENT"
                       13 "GRAND FATHER/MOTHER/PARENT"
                       14 "BROTHER/SISTER/SIBLING"
                       15 "STEP-BROTHER/SISTER/SIBLING"
                       16 "HALF-BROTHER/SISTER/SIBLING"
                       17 "BROTHER/SISTER/SIBLING -IN-LAW"
                       18 "GRAND SON/DAUGHTER/CHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define C1PCMB1   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PCYB1   9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PHHA1   997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define C1PCHC1   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCHH1   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDD1   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDT1   101 "ASPERGER'S SYNDROME" 102 "AUTISM"
                       103 "CEREBRAL PALSY (CP)" 104 "COGNITIVE DISABILITY"
                       105 "DEVELOPMENTAL DISABILITY (DD)"
                       106 "DOWN SYNDROME" 107 "FETAL ALCOHOL SYNDROME"
                       108 "FRAGILE X SYNDROME" 109 "HYDROCEPHALUS"
                       110 "INTELLECTUAL DISABILITY"
                       111 "INTELLECTUAL IMPAIRMENT" 112 "MENTAL HANDICAP"
                       113 "MENTAL RETARDATION (MR)" 114 "MENTAL DISABILITY"
                       115 "MENTAL IMPAIRMENT" 116 "MICROCEPHALY"
                       117 "MUSCULAR DYSTROPHY"
                       118 "PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)"
                       119 "PRADER-WILLI SYNDROME" 120 "RETARDATION"
                       121 "SPINA BIFIDA" 178 "RETTS DISORDER"
                       222 "ATTENTION DEFICIT DISORDER (ADD)"
                       223 "ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)"
                       224 "HANDICAPPED" 225 "HYPERACTIVITY"
                       226 "LEARNING DISABILITY/PROBLEMS (LD)"
                       227 "MENTAL PROBLEMS"
                       228 "SLOW IN SCHOOL / SLOW LEARNER / SLOW"
                       229 "SPECIAL EDUCATION / SPECIAL ED"
                       230 "SPEECH PROBLEMS" 331 "EPILEPSY"
                       332 "SEIZURE DISORDER" 433 "BRAIN DAMAGE"
                       434 "BRAIN INJURY/ BRAIN INJURED"
                       435 "CLOSED HEAD INJURY" 436 "HEAD INJURY"
                       437 "TRAUMATIC BRAIN INJURY / BRAIN INJURY"
                       538 "BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)"
                       539 "CYCLOTHYMIA" 540 "DELUSIONAL DISORDER"
                       542 "SCHIZOPHRENIA / SCHIZOAFFECTIVE / SCHIZOPHRENIFORM DISORDER"
                       543 "PSYCHOTIC DISORDER / PSYCHOSIS"
                       586 "CLINICAL DEPRESSION" 587 "MAJOR DEPRESSION"
                       588 "SEVERE DEPRESSION" 644 "AGORAPHOBIA"
                       645 "ALCOHOLISM" 646 "ALZHEIMER'S"
                       647 "ANOREXIA or ANOREXIA NERVOSA" 648 "BULIMIA"
                       649 "EATING DISORDER"
                       650 "ANXIETY or ANXIETY DISORDER"
                       651 "BORDERLINE PERSONALITY DISORDER" 652 "DEMENTIA"
                       653 "DRUG ABUSE"
                       654 "GAMBLING PROBLEM or PATHOLOGICAL GAMBLING"
                       655 "OBSESSIVE COMPULSIVE DISORDER (OCD)"
                       656 "PANIC ATTACKS/ DISORDER"
                       657 "PERSONALITY DISORDER" 658 "PHOBIA"
                       659 "POSTTRAUMATIC STRESS DISORDERS (PTSD)"
                       660 "SLEEP DISORDER (INSOMNIA)" 661 "SOMATIZATION"
                       662 "DEPRESSION (IF VOLUNTEERED THAT THIS IS MILD DEPRESSION)"
                       663 "DYSTHYMIA" 762 "BIOCHEMICAL PROBLEM"
                       763 "BRAIN DISORDER" 764 "BREAKDOWN"
                       765 "CHEMICAL IMBALANCE"
                       766 "EMOTIONAL PROBLEM / DISORDER" 767 "MANIC"
                       768 "MENTAL BREAKDOWN" 769 "MOOD PROBLEM/DISORDER"
                       770 "MENTALLY ILL" 771 "MENTAL HEALTH PROBLEMS"
                       772 "NERVES / NERVOUS CONDITION"
                       773 "PARANOID / PARANOIA" 774 "PSYCHOLOGICAL PROBLEMS"
                       779 "SUICIDAL / SUICIDE ATTEMPT" 875 "DEPRESSION"
                       976 "OTHER UNFAMILIAR CONDITION (SPECIFY)"
                       977 "OTHER FAMILIAR CONDITION (SPECIFY)"
                       996 "NO CONDITIONS" 997 "DON'T KNOW" 998 "REFUSED"
                       999 "INAPP" ;
label define C1PCDP1   1 "SINGLE EPISODE" 2 "LONG-TERM PROBLEM"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDA1   97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PCDX1   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCXT1   1 "MAJOR DEPRESSION" 2 "SCHIZOPHRENIA"
                       3 "BIPOLAR DISORDER (MANIC DEPRESSION)" 4 "OTHER"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDO1   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCHA2   997 "DON'T KNOW" 998 "MISSING" 999 "INAPP" ;
label define C1PCHX2   1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PCHR2   1 "HUSBAND OR WIFE" 2 "LOVER/PARTNER"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD" 9 "SON/DAUGHT/CHILD-IN-LAW"
                       10 "FATHER/MOTHER/PARENT"
                       11 "STEP-FATHER/MOTHER/PARENT"
                       12 "FATHER/MOTHER/PARENT-IN-LAW OR PARTNER'S FARTHER/MOTHER/PARENT"
                       13 "GRAND FATHER/MOTHER/PARENT"
                       14 "BROTHER/SISTER/SIBLING"
                       15 "STEP-BROTHER/SISTER/SIBLING"
                       16 "HALF-BROTHER/SISTER/SIBLING"
                       17 "BROTHER/SISTER/SIBLING -IN-LAW"
                       18 "GRAND SON/DAUGHTER/CHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define C1PCMB2   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PCYB2   9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PHHA2   997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define C1PCHC2   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCHH2   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDD2   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDT2   101 "ASPERGER'S SYNDROME" 102 "AUTISM"
                       103 "CEREBRAL PALSY (CP)" 104 "COGNITIVE DISABILITY"
                       105 "DEVELOPMENTAL DISABILITY (DD)"
                       106 "DOWN SYNDROME" 107 "FETAL ALCOHOL SYNDROME"
                       108 "FRAGILE X SYNDROME" 109 "HYDROCEPHALUS"
                       110 "INTELLECTUAL DISABILITY"
                       111 "INTELLECTUAL IMPAIRMENT" 112 "MENTAL HANDICAP"
                       113 "MENTAL RETARDATION (MR)" 114 "MENTAL DISABILITY"
                       115 "MENTAL IMPAIRMENT" 116 "MICROCEPHALY"
                       117 "MUSCULAR DYSTROPHY"
                       118 "PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)"
                       119 "PRADER-WILLI SYNDROME" 120 "RETARDATION"
                       121 "SPINA BIFIDA" 178 "RETTS DISORDER"
                       222 "ATTENTION DEFICIT DISORDER (ADD)"
                       223 "ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)"
                       224 "HANDICAPPED" 225 "HYPERACTIVITY"
                       226 "LEARNING DISABILITY/PROBLEMS (LD)"
                       227 "MENTAL PROBLEMS"
                       228 "SLOW IN SCHOOL / SLOW LEARNER / SLOW"
                       229 "SPECIAL EDUCATION / SPECIAL ED"
                       230 "SPEECH PROBLEMS" 331 "EPILEPSY"
                       332 "SEIZURE DISORDER" 433 "BRAIN DAMAGE"
                       434 "BRAIN INJURY/ BRAIN INJURED"
                       435 "CLOSED HEAD INJURY" 436 "HEAD INJURY"
                       437 "TRAUMATIC BRAIN INJURY / BRAIN INJURY"
                       538 "BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)"
                       539 "CYCLOTHYMIA" 540 "DELUSIONAL DISORDER"
                       542 "SCHIZOPHRENIA / SCHIZOAFFECTIVE / SCHIZOPHRENIFORM DISORDER"
                       543 "PSYCHOTIC DISORDER / PSYCHOSIS"
                       586 "CLINICAL DEPRESSION" 587 "MAJOR DEPRESSION"
                       588 "SEVERE DEPRESSION" 644 "AGORAPHOBIA"
                       645 "ALCOHOLISM" 646 "ALZHEIMER'S"
                       647 "ANOREXIA or ANOREXIA NERVOSA" 648 "BULIMIA"
                       649 "EATING DISORDER"
                       650 "ANXIETY or ANXIETY DISORDER"
                       651 "BORDERLINE PERSONALITY DISORDER" 652 "DEMENTIA"
                       653 "DRUG ABUSE"
                       654 "GAMBLING PROBLEM or PATHOLOGICAL GAMBLING"
                       655 "OBSESSIVE COMPULSIVE DISORDER (OCD)"
                       656 "PANIC ATTACKS/ DISORDER"
                       657 "PERSONALITY DISORDER" 658 "PHOBIA"
                       659 "POSTTRAUMATIC STRESS DISORDERS (PTSD)"
                       660 "SLEEP DISORDER (INSOMNIA)" 661 "SOMATIZATION"
                       662 "DEPRESSION (IF VOLUNTEERED THAT THIS IS MILD DEPRESSION)"
                       663 "DYSTHYMIA" 762 "BIOCHEMICAL PROBLEM"
                       763 "BRAIN DISORDER" 764 "BREAKDOWN"
                       765 "CHEMICAL IMBALANCE"
                       766 "EMOTIONAL PROBLEM / DISORDER" 767 "MANIC"
                       768 "MENTAL BREAKDOWN" 769 "MOOD PROBLEM/DISORDER"
                       770 "MENTALLY ILL" 771 "MENTAL HEALTH PROBLEMS"
                       772 "NERVES / NERVOUS CONDITION"
                       773 "PARANOID / PARANOIA" 774 "PSYCHOLOGICAL PROBLEMS"
                       779 "SUICIDAL / SUICIDE ATTEMPT" 875 "DEPRESSION"
                       976 "OTHER UNFAMILIAR CONDITION (SPECIFY)"
                       977 "OTHER FAMILIAR CONDITION (SPECIFY)"
                       996 "NO CONDITIONS" 997 "DON'T KNOW" 998 "REFUSED"
                       999 "INAPP" ;
label define C1PCDP2   1 "SINGLE EPISODE" 2 "LONG-TERM PROBLEM"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDA2   97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PCDX2   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCXT2   1 "MAJOR DEPRESSION" 2 "SCHIZOPHRENIA"
                       3 "BIPOLAR DISORDER (MANIC DEPRESSION)" 4 "OTHER"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDO2   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCHA3   997 "DON'T KNOW" 998 "MISSING" 999 "INAPP" ;
label define C1PCHX3   1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PCHR3   1 "HUSBAND OR WIFE" 2 "LOVER/PARTNER"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD" 9 "SON/DAUGHT/CHILD-IN-LAW"
                       10 "FATHER/MOTHER/PARENT"
                       11 "STEP-FATHER/MOTHER/PARENT"
                       12 "FATHER/MOTHER/PARENT-IN-LAW OR PARTNER'S FARTHER/MOTHER/PARENT"
                       13 "GRAND FATHER/MOTHER/PARENT"
                       14 "BROTHER/SISTER/SIBLING"
                       15 "STEP-BROTHER/SISTER/SIBLING"
                       16 "HALF-BROTHER/SISTER/SIBLING"
                       17 "BROTHER/SISTER/SIBLING -IN-LAW"
                       18 "GRAND SON/DAUGHTER/CHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define C1PCMB3   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PCYB3   9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PHHA3   997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define C1PCHC3   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCHH3   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDD3   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDT3   101 "ASPERGER'S SYNDROME" 102 "AUTISM"
                       103 "CEREBRAL PALSY (CP)" 104 "COGNITIVE DISABILITY"
                       105 "DEVELOPMENTAL DISABILITY (DD)"
                       106 "DOWN SYNDROME" 107 "FETAL ALCOHOL SYNDROME"
                       108 "FRAGILE X SYNDROME" 109 "HYDROCEPHALUS"
                       110 "INTELLECTUAL DISABILITY"
                       111 "INTELLECTUAL IMPAIRMENT" 112 "MENTAL HANDICAP"
                       113 "MENTAL RETARDATION (MR)" 114 "MENTAL DISABILITY"
                       115 "MENTAL IMPAIRMENT" 116 "MICROCEPHALY"
                       117 "MUSCULAR DYSTROPHY"
                       118 "PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)"
                       119 "PRADER-WILLI SYNDROME" 120 "RETARDATION"
                       121 "SPINA BIFIDA" 178 "RETTS DISORDER"
                       222 "ATTENTION DEFICIT DISORDER (ADD)"
                       223 "ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)"
                       224 "HANDICAPPED" 225 "HYPERACTIVITY"
                       226 "LEARNING DISABILITY/PROBLEMS (LD)"
                       227 "MENTAL PROBLEMS"
                       228 "SLOW IN SCHOOL / SLOW LEARNER / SLOW"
                       229 "SPECIAL EDUCATION / SPECIAL ED"
                       230 "SPEECH PROBLEMS" 331 "EPILEPSY"
                       332 "SEIZURE DISORDER" 433 "BRAIN DAMAGE"
                       434 "BRAIN INJURY/ BRAIN INJURED"
                       435 "CLOSED HEAD INJURY" 436 "HEAD INJURY"
                       437 "TRAUMATIC BRAIN INJURY / BRAIN INJURY"
                       538 "BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)"
                       539 "CYCLOTHYMIA" 540 "DELUSIONAL DISORDER"
                       542 "SCHIZOPHRENIA / SCHIZOAFFECTIVE / SCHIZOPHRENIFORM DISORDER"
                       543 "PSYCHOTIC DISORDER / PSYCHOSIS"
                       586 "CLINICAL DEPRESSION" 587 "MAJOR DEPRESSION"
                       588 "SEVERE DEPRESSION" 644 "AGORAPHOBIA"
                       645 "ALCOHOLISM" 646 "ALZHEIMER'S"
                       647 "ANOREXIA or ANOREXIA NERVOSA" 648 "BULIMIA"
                       649 "EATING DISORDER"
                       650 "ANXIETY or ANXIETY DISORDER"
                       651 "BORDERLINE PERSONALITY DISORDER" 652 "DEMENTIA"
                       653 "DRUG ABUSE"
                       654 "GAMBLING PROBLEM or PATHOLOGICAL GAMBLING"
                       655 "OBSESSIVE COMPULSIVE DISORDER (OCD)"
                       656 "PANIC ATTACKS/ DISORDER"
                       657 "PERSONALITY DISORDER" 658 "PHOBIA"
                       659 "POSTTRAUMATIC STRESS DISORDERS (PTSD)"
                       660 "SLEEP DISORDER (INSOMNIA)" 661 "SOMATIZATION"
                       662 "DEPRESSION (IF VOLUNTEERED THAT THIS IS MILD DEPRESSION)"
                       663 "DYSTHYMIA" 762 "BIOCHEMICAL PROBLEM"
                       763 "BRAIN DISORDER" 764 "BREAKDOWN"
                       765 "CHEMICAL IMBALANCE"
                       766 "EMOTIONAL PROBLEM / DISORDER" 767 "MANIC"
                       768 "MENTAL BREAKDOWN" 769 "MOOD PROBLEM/DISORDER"
                       770 "MENTALLY ILL" 771 "MENTAL HEALTH PROBLEMS"
                       772 "NERVES / NERVOUS CONDITION"
                       773 "PARANOID / PARANOIA" 774 "PSYCHOLOGICAL PROBLEMS"
                       779 "SUICIDAL / SUICIDE ATTEMPT" 875 "DEPRESSION"
                       976 "OTHER UNFAMILIAR CONDITION (SPECIFY)"
                       977 "OTHER FAMILIAR CONDITION (SPECIFY)"
                       996 "NO CONDITIONS" 997 "DON'T KNOW" 998 "REFUSED"
                       999 "INAPP" ;
label define C1PCDP3   1 "SINGLE EPISODE" 2 "LONG-TERM PROBLEM"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDA3   97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PCDX3   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCXT3   1 "MAJOR DEPRESSION" 2 "SCHIZOPHRENIA"
                       3 "BIPOLAR DISORDER (MANIC DEPRESSION)" 4 "OTHER"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDO3   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCHA4   997 "DON'T KNOW" 998 "MISSING" 999 "INAPP" ;
label define C1PCHX4   1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PCHR4   1 "HUSBAND OR WIFE" 2 "LOVER/PARTNER"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD" 9 "SON/DAUGHT/CHILD-IN-LAW"
                       10 "FATHER/MOTHER/PARENT"
                       11 "STEP-FATHER/MOTHER/PARENT"
                       12 "FATHER/MOTHER/PARENT-IN-LAW OR PARTNER'S FARTHER/MOTHER/PARENT"
                       13 "GRAND FATHER/MOTHER/PARENT"
                       14 "BROTHER/SISTER/SIBLING"
                       15 "STEP-BROTHER/SISTER/SIBLING"
                       16 "HALF-BROTHER/SISTER/SIBLING"
                       17 "BROTHER/SISTER/SIBLING -IN-LAW"
                       18 "GRAND SON/DAUGHTER/CHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define C1PCMB4   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PCYB4   9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PHHA4   997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define C1PCHC4   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCHH4   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDD4   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDT4   101 "ASPERGER'S SYNDROME" 102 "AUTISM"
                       103 "CEREBRAL PALSY (CP)" 104 "COGNITIVE DISABILITY"
                       105 "DEVELOPMENTAL DISABILITY (DD)"
                       106 "DOWN SYNDROME" 107 "FETAL ALCOHOL SYNDROME"
                       108 "FRAGILE X SYNDROME" 109 "HYDROCEPHALUS"
                       110 "INTELLECTUAL DISABILITY"
                       111 "INTELLECTUAL IMPAIRMENT" 112 "MENTAL HANDICAP"
                       113 "MENTAL RETARDATION (MR)" 114 "MENTAL DISABILITY"
                       115 "MENTAL IMPAIRMENT" 116 "MICROCEPHALY"
                       117 "MUSCULAR DYSTROPHY"
                       118 "PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)"
                       119 "PRADER-WILLI SYNDROME" 120 "RETARDATION"
                       121 "SPINA BIFIDA" 178 "RETTS DISORDER"
                       222 "ATTENTION DEFICIT DISORDER (ADD)"
                       223 "ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)"
                       224 "HANDICAPPED" 225 "HYPERACTIVITY"
                       226 "LEARNING DISABILITY/PROBLEMS (LD)"
                       227 "MENTAL PROBLEMS"
                       228 "SLOW IN SCHOOL / SLOW LEARNER / SLOW"
                       229 "SPECIAL EDUCATION / SPECIAL ED"
                       230 "SPEECH PROBLEMS" 331 "EPILEPSY"
                       332 "SEIZURE DISORDER" 433 "BRAIN DAMAGE"
                       434 "BRAIN INJURY/ BRAIN INJURED"
                       435 "CLOSED HEAD INJURY" 436 "HEAD INJURY"
                       437 "TRAUMATIC BRAIN INJURY / BRAIN INJURY"
                       538 "BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)"
                       539 "CYCLOTHYMIA" 540 "DELUSIONAL DISORDER"
                       542 "SCHIZOPHRENIA / SCHIZOAFFECTIVE / SCHIZOPHRENIFORM DISORDER"
                       543 "PSYCHOTIC DISORDER / PSYCHOSIS"
                       586 "CLINICAL DEPRESSION" 587 "MAJOR DEPRESSION"
                       588 "SEVERE DEPRESSION" 644 "AGORAPHOBIA"
                       645 "ALCOHOLISM" 646 "ALZHEIMER'S"
                       647 "ANOREXIA or ANOREXIA NERVOSA" 648 "BULIMIA"
                       649 "EATING DISORDER"
                       650 "ANXIETY or ANXIETY DISORDER"
                       651 "BORDERLINE PERSONALITY DISORDER" 652 "DEMENTIA"
                       653 "DRUG ABUSE"
                       654 "GAMBLING PROBLEM or PATHOLOGICAL GAMBLING"
                       655 "OBSESSIVE COMPULSIVE DISORDER (OCD)"
                       656 "PANIC ATTACKS/ DISORDER"
                       657 "PERSONALITY DISORDER" 658 "PHOBIA"
                       659 "POSTTRAUMATIC STRESS DISORDERS (PTSD)"
                       660 "SLEEP DISORDER (INSOMNIA)" 661 "SOMATIZATION"
                       662 "DEPRESSION (IF VOLUNTEERED THAT THIS IS MILD DEPRESSION)"
                       663 "DYSTHYMIA" 762 "BIOCHEMICAL PROBLEM"
                       763 "BRAIN DISORDER" 764 "BREAKDOWN"
                       765 "CHEMICAL IMBALANCE"
                       766 "EMOTIONAL PROBLEM / DISORDER" 767 "MANIC"
                       768 "MENTAL BREAKDOWN" 769 "MOOD PROBLEM/DISORDER"
                       770 "MENTALLY ILL" 771 "MENTAL HEALTH PROBLEMS"
                       772 "NERVES / NERVOUS CONDITION"
                       773 "PARANOID / PARANOIA" 774 "PSYCHOLOGICAL PROBLEMS"
                       779 "SUICIDAL / SUICIDE ATTEMPT" 875 "DEPRESSION"
                       976 "OTHER UNFAMILIAR CONDITION (SPECIFY)"
                       977 "OTHER FAMILIAR CONDITION (SPECIFY)"
                       996 "NO CONDITIONS" 997 "DON'T KNOW" 998 "REFUSED"
                       999 "INAPP" ;
label define C1PCDP4   1 "SINGLE EPISODE" 2 "LONG-TERM PROBLEM"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDA4   97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PCDX4   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCXT4   1 "MAJOR DEPRESSION" 2 "SCHIZOPHRENIA"
                       3 "BIPOLAR DISORDER (MANIC DEPRESSION)" 4 "OTHER"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDO4   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCHA5   997 "DON'T KNOW" 998 "MISSING" 999 "INAPP" ;
label define C1PCHX5   1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PCHR5   1 "HUSBAND OR WIFE" 2 "LOVER/PARTNER"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD" 9 "SON/DAUGHT/CHILD-IN-LAW"
                       10 "FATHER/MOTHER/PARENT"
                       11 "STEP-FATHER/MOTHER/PARENT"
                       12 "FATHER/MOTHER/PARENT-IN-LAW OR PARTNER'S FARTHER/MOTHER/PARENT"
                       13 "GRAND FATHER/MOTHER/PARENT"
                       14 "BROTHER/SISTER/SIBLING"
                       15 "STEP-BROTHER/SISTER/SIBLING"
                       16 "HALF-BROTHER/SISTER/SIBLING"
                       17 "BROTHER/SISTER/SIBLING -IN-LAW"
                       18 "GRAND SON/DAUGHTER/CHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define C1PCMB5   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PCYB5   9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PHHA5   997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define C1PCHC5   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCHH5   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDD5   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDT5   101 "ASPERGER'S SYNDROME" 102 "AUTISM"
                       103 "CEREBRAL PALSY (CP)" 104 "COGNITIVE DISABILITY"
                       105 "DEVELOPMENTAL DISABILITY (DD)"
                       106 "DOWN SYNDROME" 107 "FETAL ALCOHOL SYNDROME"
                       108 "FRAGILE X SYNDROME" 109 "HYDROCEPHALUS"
                       110 "INTELLECTUAL DISABILITY"
                       111 "INTELLECTUAL IMPAIRMENT" 112 "MENTAL HANDICAP"
                       113 "MENTAL RETARDATION (MR)" 114 "MENTAL DISABILITY"
                       115 "MENTAL IMPAIRMENT" 116 "MICROCEPHALY"
                       117 "MUSCULAR DYSTROPHY"
                       118 "PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)"
                       119 "PRADER-WILLI SYNDROME" 120 "RETARDATION"
                       121 "SPINA BIFIDA" 178 "RETTS DISORDER"
                       222 "ATTENTION DEFICIT DISORDER (ADD)"
                       223 "ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)"
                       224 "HANDICAPPED" 225 "HYPERACTIVITY"
                       226 "LEARNING DISABILITY/PROBLEMS (LD)"
                       227 "MENTAL PROBLEMS"
                       228 "SLOW IN SCHOOL / SLOW LEARNER / SLOW"
                       229 "SPECIAL EDUCATION / SPECIAL ED"
                       230 "SPEECH PROBLEMS" 331 "EPILEPSY"
                       332 "SEIZURE DISORDER" 433 "BRAIN DAMAGE"
                       434 "BRAIN INJURY/ BRAIN INJURED"
                       435 "CLOSED HEAD INJURY" 436 "HEAD INJURY"
                       437 "TRAUMATIC BRAIN INJURY / BRAIN INJURY"
                       538 "BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)"
                       539 "CYCLOTHYMIA" 540 "DELUSIONAL DISORDER"
                       542 "SCHIZOPHRENIA / SCHIZOAFFECTIVE / SCHIZOPHRENIFORM DISORDER"
                       543 "PSYCHOTIC DISORDER / PSYCHOSIS"
                       586 "CLINICAL DEPRESSION" 587 "MAJOR DEPRESSION"
                       588 "SEVERE DEPRESSION" 644 "AGORAPHOBIA"
                       645 "ALCOHOLISM" 646 "ALZHEIMER'S"
                       647 "ANOREXIA or ANOREXIA NERVOSA" 648 "BULIMIA"
                       649 "EATING DISORDER"
                       650 "ANXIETY or ANXIETY DISORDER"
                       651 "BORDERLINE PERSONALITY DISORDER" 652 "DEMENTIA"
                       653 "DRUG ABUSE"
                       654 "GAMBLING PROBLEM or PATHOLOGICAL GAMBLING"
                       655 "OBSESSIVE COMPULSIVE DISORDER (OCD)"
                       656 "PANIC ATTACKS/ DISORDER"
                       657 "PERSONALITY DISORDER" 658 "PHOBIA"
                       659 "POSTTRAUMATIC STRESS DISORDERS (PTSD)"
                       660 "SLEEP DISORDER (INSOMNIA)" 661 "SOMATIZATION"
                       662 "DEPRESSION (IF VOLUNTEERED THAT THIS IS MILD DEPRESSION)"
                       663 "DYSTHYMIA" 762 "BIOCHEMICAL PROBLEM"
                       763 "BRAIN DISORDER" 764 "BREAKDOWN"
                       765 "CHEMICAL IMBALANCE"
                       766 "EMOTIONAL PROBLEM / DISORDER" 767 "MANIC"
                       768 "MENTAL BREAKDOWN" 769 "MOOD PROBLEM/DISORDER"
                       770 "MENTALLY ILL" 771 "MENTAL HEALTH PROBLEMS"
                       772 "NERVES / NERVOUS CONDITION"
                       773 "PARANOID / PARANOIA" 774 "PSYCHOLOGICAL PROBLEMS"
                       779 "SUICIDAL / SUICIDE ATTEMPT" 875 "DEPRESSION"
                       976 "OTHER UNFAMILIAR CONDITION (SPECIFY)"
                       977 "OTHER FAMILIAR CONDITION (SPECIFY)"
                       996 "NO CONDITIONS" 997 "DON'T KNOW" 998 "REFUSED"
                       999 "INAPP" ;
label define C1PCDP5   1 "SINGLE EPISODE" 2 "LONG-TERM PROBLEM"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDA5   97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PCDX5   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDO5   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCHA6   997 "DON'T KNOW" 998 "MISSING" 999 "INAPP" ;
label define C1PCHX6   1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PCHR6   1 "HUSBAND OR WIFE" 2 "LOVER/PARTNER"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD" 9 "SON/DAUGHT/CHILD-IN-LAW"
                       10 "FATHER/MOTHER/PARENT"
                       11 "STEP-FATHER/MOTHER/PARENT"
                       12 "FATHER/MOTHER/PARENT-IN-LAW OR PARTNER'S FARTHER/MOTHER/PARENT"
                       13 "GRAND FATHER/MOTHER/PARENT"
                       14 "BROTHER/SISTER/SIBLING"
                       15 "STEP-BROTHER/SISTER/SIBLING"
                       16 "HALF-BROTHER/SISTER/SIBLING"
                       17 "BROTHER/SISTER/SIBLING -IN-LAW"
                       18 "GRAND SON/DAUGHTER/CHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define C1PCMB6   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PCYB6   9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PHHA6   997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define C1PCHC6   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCHH6   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDD6   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDT6   101 "ASPERGER'S SYNDROME" 102 "AUTISM"
                       103 "CEREBRAL PALSY (CP)" 104 "COGNITIVE DISABILITY"
                       105 "DEVELOPMENTAL DISABILITY (DD)"
                       106 "DOWN SYNDROME" 107 "FETAL ALCOHOL SYNDROME"
                       108 "FRAGILE X SYNDROME" 109 "HYDROCEPHALUS"
                       110 "INTELLECTUAL DISABILITY"
                       111 "INTELLECTUAL IMPAIRMENT" 112 "MENTAL HANDICAP"
                       113 "MENTAL RETARDATION (MR)" 114 "MENTAL DISABILITY"
                       115 "MENTAL IMPAIRMENT" 116 "MICROCEPHALY"
                       117 "MUSCULAR DYSTROPHY"
                       118 "PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)"
                       119 "PRADER-WILLI SYNDROME" 120 "RETARDATION"
                       121 "SPINA BIFIDA" 178 "RETTS DISORDER"
                       222 "ATTENTION DEFICIT DISORDER (ADD)"
                       223 "ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)"
                       224 "HANDICAPPED" 225 "HYPERACTIVITY"
                       226 "LEARNING DISABILITY/PROBLEMS (LD)"
                       227 "MENTAL PROBLEMS"
                       228 "SLOW IN SCHOOL / SLOW LEARNER / SLOW"
                       229 "SPECIAL EDUCATION / SPECIAL ED"
                       230 "SPEECH PROBLEMS" 331 "EPILEPSY"
                       332 "SEIZURE DISORDER" 433 "BRAIN DAMAGE"
                       434 "BRAIN INJURY/ BRAIN INJURED"
                       435 "CLOSED HEAD INJURY" 436 "HEAD INJURY"
                       437 "TRAUMATIC BRAIN INJURY / BRAIN INJURY"
                       538 "BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)"
                       539 "CYCLOTHYMIA" 540 "DELUSIONAL DISORDER"
                       542 "SCHIZOPHRENIA / SCHIZOAFFECTIVE / SCHIZOPHRENIFORM DISORDER"
                       543 "PSYCHOTIC DISORDER / PSYCHOSIS"
                       586 "CLINICAL DEPRESSION" 587 "MAJOR DEPRESSION"
                       588 "SEVERE DEPRESSION" 644 "AGORAPHOBIA"
                       645 "ALCOHOLISM" 646 "ALZHEIMER'S"
                       647 "ANOREXIA or ANOREXIA NERVOSA" 648 "BULIMIA"
                       649 "EATING DISORDER"
                       650 "ANXIETY or ANXIETY DISORDER"
                       651 "BORDERLINE PERSONALITY DISORDER" 652 "DEMENTIA"
                       653 "DRUG ABUSE"
                       654 "GAMBLING PROBLEM or PATHOLOGICAL GAMBLING"
                       655 "OBSESSIVE COMPULSIVE DISORDER (OCD)"
                       656 "PANIC ATTACKS/ DISORDER"
                       657 "PERSONALITY DISORDER" 658 "PHOBIA"
                       659 "POSTTRAUMATIC STRESS DISORDERS (PTSD)"
                       660 "SLEEP DISORDER (INSOMNIA)" 661 "SOMATIZATION"
                       662 "DEPRESSION (IF VOLUNTEERED THAT THIS IS MILD DEPRESSION)"
                       663 "DYSTHYMIA" 762 "BIOCHEMICAL PROBLEM"
                       763 "BRAIN DISORDER" 764 "BREAKDOWN"
                       765 "CHEMICAL IMBALANCE"
                       766 "EMOTIONAL PROBLEM / DISORDER" 767 "MANIC"
                       768 "MENTAL BREAKDOWN" 769 "MOOD PROBLEM/DISORDER"
                       770 "MENTALLY ILL" 771 "MENTAL HEALTH PROBLEMS"
                       772 "NERVES / NERVOUS CONDITION"
                       773 "PARANOID / PARANOIA" 774 "PSYCHOLOGICAL PROBLEMS"
                       779 "SUICIDAL / SUICIDE ATTEMPT" 875 "DEPRESSION"
                       976 "OTHER UNFAMILIAR CONDITION (SPECIFY)"
                       977 "OTHER FAMILIAR CONDITION (SPECIFY)"
                       996 "NO CONDITIONS" 997 "DON'T KNOW" 998 "REFUSED"
                       999 "INAPP" ;
label define C1PCDA6   97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PCDX6   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDO6   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCHA7   997 "DON'T KNOW" 998 "MISSING" 999 "INAPP" ;
label define C1PCHX7   1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PCHR7   1 "HUSBAND OR WIFE" 2 "LOVER/PARTNER"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD" 9 "SON/DAUGHT/CHILD-IN-LAW"
                       10 "FATHER/MOTHER/PARENT"
                       11 "STEP-FATHER/MOTHER/PARENT"
                       12 "FATHER/MOTHER/PARENT-IN-LAW OR PARTNER'S FARTHER/MOTHER/PARENT"
                       13 "GRAND FATHER/MOTHER/PARENT"
                       14 "BROTHER/SISTER/SIBLING"
                       15 "STEP-BROTHER/SISTER/SIBLING"
                       16 "HALF-BROTHER/SISTER/SIBLING"
                       17 "BROTHER/SISTER/SIBLING -IN-LAW"
                       18 "GRAND SON/DAUGHTER/CHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define C1PCMB7   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PCYB7   9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PHHA7   997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define C1PCHC7   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCHH7   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDD7   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDT7   101 "ASPERGER'S SYNDROME" 102 "AUTISM"
                       103 "CEREBRAL PALSY (CP)" 104 "COGNITIVE DISABILITY"
                       105 "DEVELOPMENTAL DISABILITY (DD)"
                       106 "DOWN SYNDROME" 107 "FETAL ALCOHOL SYNDROME"
                       108 "FRAGILE X SYNDROME" 109 "HYDROCEPHALUS"
                       110 "INTELLECTUAL DISABILITY"
                       111 "INTELLECTUAL IMPAIRMENT" 112 "MENTAL HANDICAP"
                       113 "MENTAL RETARDATION (MR)" 114 "MENTAL DISABILITY"
                       115 "MENTAL IMPAIRMENT" 116 "MICROCEPHALY"
                       117 "MUSCULAR DYSTROPHY"
                       118 "PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)"
                       119 "PRADER-WILLI SYNDROME" 120 "RETARDATION"
                       121 "SPINA BIFIDA" 178 "RETTS DISORDER"
                       222 "ATTENTION DEFICIT DISORDER (ADD)"
                       223 "ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)"
                       224 "HANDICAPPED" 225 "HYPERACTIVITY"
                       226 "LEARNING DISABILITY/PROBLEMS (LD)"
                       227 "MENTAL PROBLEMS"
                       228 "SLOW IN SCHOOL / SLOW LEARNER / SLOW"
                       229 "SPECIAL EDUCATION / SPECIAL ED"
                       230 "SPEECH PROBLEMS" 331 "EPILEPSY"
                       332 "SEIZURE DISORDER" 433 "BRAIN DAMAGE"
                       434 "BRAIN INJURY/ BRAIN INJURED"
                       435 "CLOSED HEAD INJURY" 436 "HEAD INJURY"
                       437 "TRAUMATIC BRAIN INJURY / BRAIN INJURY"
                       538 "BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)"
                       539 "CYCLOTHYMIA" 540 "DELUSIONAL DISORDER"
                       542 "SCHIZOPHRENIA / SCHIZOAFFECTIVE / SCHIZOPHRENIFORM DISORDER"
                       543 "PSYCHOTIC DISORDER / PSYCHOSIS"
                       586 "CLINICAL DEPRESSION" 587 "MAJOR DEPRESSION"
                       588 "SEVERE DEPRESSION" 644 "AGORAPHOBIA"
                       645 "ALCOHOLISM" 646 "ALZHEIMER'S"
                       647 "ANOREXIA or ANOREXIA NERVOSA" 648 "BULIMIA"
                       649 "EATING DISORDER"
                       650 "ANXIETY or ANXIETY DISORDER"
                       651 "BORDERLINE PERSONALITY DISORDER" 652 "DEMENTIA"
                       653 "DRUG ABUSE"
                       654 "GAMBLING PROBLEM or PATHOLOGICAL GAMBLING"
                       655 "OBSESSIVE COMPULSIVE DISORDER (OCD)"
                       656 "PANIC ATTACKS/ DISORDER"
                       657 "PERSONALITY DISORDER" 658 "PHOBIA"
                       659 "POSTTRAUMATIC STRESS DISORDERS (PTSD)"
                       660 "SLEEP DISORDER (INSOMNIA)" 661 "SOMATIZATION"
                       662 "DEPRESSION (IF VOLUNTEERED THAT THIS IS MILD DEPRESSION)"
                       663 "DYSTHYMIA" 762 "BIOCHEMICAL PROBLEM"
                       763 "BRAIN DISORDER" 764 "BREAKDOWN"
                       765 "CHEMICAL IMBALANCE"
                       766 "EMOTIONAL PROBLEM / DISORDER" 767 "MANIC"
                       768 "MENTAL BREAKDOWN" 769 "MOOD PROBLEM/DISORDER"
                       770 "MENTALLY ILL" 771 "MENTAL HEALTH PROBLEMS"
                       772 "NERVES / NERVOUS CONDITION"
                       773 "PARANOID / PARANOIA" 774 "PSYCHOLOGICAL PROBLEMS"
                       779 "SUICIDAL / SUICIDE ATTEMPT" 875 "DEPRESSION"
                       976 "OTHER UNFAMILIAR CONDITION (SPECIFY)"
                       977 "OTHER FAMILIAR CONDITION (SPECIFY)"
                       996 "NO CONDITIONS" 997 "DON'T KNOW" 998 "REFUSED"
                       999 "INAPP" ;
label define C1PCDA7   97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PCDO7   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCHA8   997 "DON'T KNOW" 998 "MISSING" 999 "INAPP" ;
label define C1PCHX8   1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PCHR8   1 "HUSBAND OR WIFE" 2 "LOVER/PARTNER"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD" 9 "SON/DAUGHT/CHILD-IN-LAW"
                       10 "FATHER/MOTHER/PARENT"
                       11 "STEP-FATHER/MOTHER/PARENT"
                       12 "FATHER/MOTHER/PARENT-IN-LAW OR PARTNER'S FARTHER/MOTHER/PARENT"
                       13 "GRAND FATHER/MOTHER/PARENT"
                       14 "BROTHER/SISTER/SIBLING"
                       15 "STEP-BROTHER/SISTER/SIBLING"
                       16 "HALF-BROTHER/SISTER/SIBLING"
                       17 "BROTHER/SISTER/SIBLING -IN-LAW"
                       18 "GRAND SON/DAUGHTER/CHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define C1PCMB8   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PCYB8   9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PHHA8   997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define C1PCHC8   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCHH8   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDD8   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDT8   101 "ASPERGER'S SYNDROME" 102 "AUTISM"
                       103 "CEREBRAL PALSY (CP)" 104 "COGNITIVE DISABILITY"
                       105 "DEVELOPMENTAL DISABILITY (DD)"
                       106 "DOWN SYNDROME" 107 "FETAL ALCOHOL SYNDROME"
                       108 "FRAGILE X SYNDROME" 109 "HYDROCEPHALUS"
                       110 "INTELLECTUAL DISABILITY"
                       111 "INTELLECTUAL IMPAIRMENT" 112 "MENTAL HANDICAP"
                       113 "MENTAL RETARDATION (MR)" 114 "MENTAL DISABILITY"
                       115 "MENTAL IMPAIRMENT" 116 "MICROCEPHALY"
                       117 "MUSCULAR DYSTROPHY"
                       118 "PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)"
                       119 "PRADER-WILLI SYNDROME" 120 "RETARDATION"
                       121 "SPINA BIFIDA" 178 "RETTS DISORDER"
                       222 "ATTENTION DEFICIT DISORDER (ADD)"
                       223 "ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)"
                       224 "HANDICAPPED" 225 "HYPERACTIVITY"
                       226 "LEARNING DISABILITY/PROBLEMS (LD)"
                       227 "MENTAL PROBLEMS"
                       228 "SLOW IN SCHOOL / SLOW LEARNER / SLOW"
                       229 "SPECIAL EDUCATION / SPECIAL ED"
                       230 "SPEECH PROBLEMS" 331 "EPILEPSY"
                       332 "SEIZURE DISORDER" 433 "BRAIN DAMAGE"
                       434 "BRAIN INJURY/ BRAIN INJURED"
                       435 "CLOSED HEAD INJURY" 436 "HEAD INJURY"
                       437 "TRAUMATIC BRAIN INJURY / BRAIN INJURY"
                       538 "BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)"
                       539 "CYCLOTHYMIA" 540 "DELUSIONAL DISORDER"
                       542 "SCHIZOPHRENIA / SCHIZOAFFECTIVE / SCHIZOPHRENIFORM DISORDER"
                       543 "PSYCHOTIC DISORDER / PSYCHOSIS"
                       586 "CLINICAL DEPRESSION" 587 "MAJOR DEPRESSION"
                       588 "SEVERE DEPRESSION" 644 "AGORAPHOBIA"
                       645 "ALCOHOLISM" 646 "ALZHEIMER'S"
                       647 "ANOREXIA or ANOREXIA NERVOSA" 648 "BULIMIA"
                       649 "EATING DISORDER"
                       650 "ANXIETY or ANXIETY DISORDER"
                       651 "BORDERLINE PERSONALITY DISORDER" 652 "DEMENTIA"
                       653 "DRUG ABUSE"
                       654 "GAMBLING PROBLEM or PATHOLOGICAL GAMBLING"
                       655 "OBSESSIVE COMPULSIVE DISORDER (OCD)"
                       656 "PANIC ATTACKS/ DISORDER"
                       657 "PERSONALITY DISORDER" 658 "PHOBIA"
                       659 "POSTTRAUMATIC STRESS DISORDERS (PTSD)"
                       660 "SLEEP DISORDER (INSOMNIA)" 661 "SOMATIZATION"
                       662 "DEPRESSION (IF VOLUNTEERED THAT THIS IS MILD DEPRESSION)"
                       663 "DYSTHYMIA" 762 "BIOCHEMICAL PROBLEM"
                       763 "BRAIN DISORDER" 764 "BREAKDOWN"
                       765 "CHEMICAL IMBALANCE"
                       766 "EMOTIONAL PROBLEM / DISORDER" 767 "MANIC"
                       768 "MENTAL BREAKDOWN" 769 "MOOD PROBLEM/DISORDER"
                       770 "MENTALLY ILL" 771 "MENTAL HEALTH PROBLEMS"
                       772 "NERVES / NERVOUS CONDITION"
                       773 "PARANOID / PARANOIA" 774 "PSYCHOLOGICAL PROBLEMS"
                       779 "SUICIDAL / SUICIDE ATTEMPT" 875 "DEPRESSION"
                       976 "OTHER UNFAMILIAR CONDITION (SPECIFY)"
                       977 "OTHER FAMILIAR CONDITION (SPECIFY)"
                       996 "NO CONDITIONS" 997 "DON'T KNOW" 998 "REFUSED"
                       999 "INAPP" ;
label define C1PCDA8   97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PCDO8   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCHA9   997 "DON'T KNOW" 998 "MISSING" 999 "INAPP" ;
label define C1PCHX9   1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PCHR9   1 "HUSBAND OR WIFE" 2 "LOVER/PARTNER"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD" 9 "SON/DAUGHT/CHILD-IN-LAW"
                       10 "FATHER/MOTHER/PARENT"
                       11 "STEP-FATHER/MOTHER/PARENT"
                       12 "FATHER/MOTHER/PARENT-IN-LAW OR PARTNER'S FARTHER/MOTHER/PARENT"
                       13 "GRAND FATHER/MOTHER/PARENT"
                       14 "BROTHER/SISTER/SIBLING"
                       15 "STEP-BROTHER/SISTER/SIBLING"
                       16 "HALF-BROTHER/SISTER/SIBLING"
                       17 "BROTHER/SISTER/SIBLING -IN-LAW"
                       18 "GRAND SON/DAUGHTER/CHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define C1PCMB9   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PCYB9   9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PHHA9   997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define C1PCHH9   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDD9   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDT9   101 "ASPERGER'S SYNDROME" 102 "AUTISM"
                       103 "CEREBRAL PALSY (CP)" 104 "COGNITIVE DISABILITY"
                       105 "DEVELOPMENTAL DISABILITY (DD)"
                       106 "DOWN SYNDROME" 107 "FETAL ALCOHOL SYNDROME"
                       108 "FRAGILE X SYNDROME" 109 "HYDROCEPHALUS"
                       110 "INTELLECTUAL DISABILITY"
                       111 "INTELLECTUAL IMPAIRMENT" 112 "MENTAL HANDICAP"
                       113 "MENTAL RETARDATION (MR)" 114 "MENTAL DISABILITY"
                       115 "MENTAL IMPAIRMENT" 116 "MICROCEPHALY"
                       117 "MUSCULAR DYSTROPHY"
                       118 "PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)"
                       119 "PRADER-WILLI SYNDROME" 120 "RETARDATION"
                       121 "SPINA BIFIDA" 178 "RETTS DISORDER"
                       222 "ATTENTION DEFICIT DISORDER (ADD)"
                       223 "ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)"
                       224 "HANDICAPPED" 225 "HYPERACTIVITY"
                       226 "LEARNING DISABILITY/PROBLEMS (LD)"
                       227 "MENTAL PROBLEMS"
                       228 "SLOW IN SCHOOL / SLOW LEARNER / SLOW"
                       229 "SPECIAL EDUCATION / SPECIAL ED"
                       230 "SPEECH PROBLEMS" 331 "EPILEPSY"
                       332 "SEIZURE DISORDER" 433 "BRAIN DAMAGE"
                       434 "BRAIN INJURY/ BRAIN INJURED"
                       435 "CLOSED HEAD INJURY" 436 "HEAD INJURY"
                       437 "TRAUMATIC BRAIN INJURY / BRAIN INJURY"
                       538 "BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)"
                       539 "CYCLOTHYMIA" 540 "DELUSIONAL DISORDER"
                       542 "SCHIZOPHRENIA / SCHIZOAFFECTIVE / SCHIZOPHRENIFORM DISORDER"
                       543 "PSYCHOTIC DISORDER / PSYCHOSIS"
                       586 "CLINICAL DEPRESSION" 587 "MAJOR DEPRESSION"
                       588 "SEVERE DEPRESSION" 644 "AGORAPHOBIA"
                       645 "ALCOHOLISM" 646 "ALZHEIMER'S"
                       647 "ANOREXIA or ANOREXIA NERVOSA" 648 "BULIMIA"
                       649 "EATING DISORDER"
                       650 "ANXIETY or ANXIETY DISORDER"
                       651 "BORDERLINE PERSONALITY DISORDER" 652 "DEMENTIA"
                       653 "DRUG ABUSE"
                       654 "GAMBLING PROBLEM or PATHOLOGICAL GAMBLING"
                       655 "OBSESSIVE COMPULSIVE DISORDER (OCD)"
                       656 "PANIC ATTACKS/ DISORDER"
                       657 "PERSONALITY DISORDER" 658 "PHOBIA"
                       659 "POSTTRAUMATIC STRESS DISORDERS (PTSD)"
                       660 "SLEEP DISORDER (INSOMNIA)" 661 "SOMATIZATION"
                       662 "DEPRESSION (IF VOLUNTEERED THAT THIS IS MILD DEPRESSION)"
                       663 "DYSTHYMIA" 762 "BIOCHEMICAL PROBLEM"
                       763 "BRAIN DISORDER" 764 "BREAKDOWN"
                       765 "CHEMICAL IMBALANCE"
                       766 "EMOTIONAL PROBLEM / DISORDER" 767 "MANIC"
                       768 "MENTAL BREAKDOWN" 769 "MOOD PROBLEM/DISORDER"
                       770 "MENTALLY ILL" 771 "MENTAL HEALTH PROBLEMS"
                       772 "NERVES / NERVOUS CONDITION"
                       773 "PARANOID / PARANOIA" 774 "PSYCHOLOGICAL PROBLEMS"
                       779 "SUICIDAL / SUICIDE ATTEMPT" 875 "DEPRESSION"
                       976 "OTHER UNFAMILIAR CONDITION (SPECIFY)"
                       977 "OTHER FAMILIAR CONDITION (SPECIFY)"
                       996 "NO CONDITIONS" 997 "DON'T KNOW" 998 "REFUSED"
                       999 "INAPP" ;
label define C1PCDA9   97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PCDO9   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCHA10  997 "DON'T KNOW" 998 "MISSING" 999 "INAPP" ;
label define C1PCHX10  1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PCHR10  1 "HUSBAND OR WIFE" 2 "LOVER/PARTNER"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD" 9 "SON/DAUGHT/CHILD-IN-LAW"
                       10 "FATHER/MOTHER/PARENT"
                       11 "STEP-FATHER/MOTHER/PARENT"
                       12 "FATHER/MOTHER/PARENT-IN-LAW OR PARTNER'S FARTHER/MOTHER/PARENT"
                       13 "GRAND FATHER/MOTHER/PARENT"
                       14 "BROTHER/SISTER/SIBLING"
                       15 "STEP-BROTHER/SISTER/SIBLING"
                       16 "HALF-BROTHER/SISTER/SIBLING"
                       17 "BROTHER/SISTER/SIBLING -IN-LAW"
                       18 "GRAND SON/DAUGHTER/CHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define C1PCMB10  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PCYB10  9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PCHH10  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDD10  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCHA11  997 "DON'T KNOW" 998 "MISSING" 999 "INAPP" ;
label define C1PCHX11  1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PCHR11  1 "HUSBAND OR WIFE" 2 "LOVER/PARTNER"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD" 9 "SON/DAUGHT/CHILD-IN-LAW"
                       10 "FATHER/MOTHER/PARENT"
                       11 "STEP-FATHER/MOTHER/PARENT"
                       12 "FATHER/MOTHER/PARENT-IN-LAW OR PARTNER'S FARTHER/MOTHER/PARENT"
                       13 "GRAND FATHER/MOTHER/PARENT"
                       14 "BROTHER/SISTER/SIBLING"
                       15 "STEP-BROTHER/SISTER/SIBLING"
                       16 "HALF-BROTHER/SISTER/SIBLING"
                       17 "BROTHER/SISTER/SIBLING -IN-LAW"
                       18 "GRAND SON/DAUGHTER/CHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define C1PCMB11  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PCYB11  9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PCHH11  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDD11  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDT11  101 "ASPERGER'S SYNDROME" 102 "AUTISM"
                       103 "CEREBRAL PALSY (CP)" 104 "COGNITIVE DISABILITY"
                       105 "DEVELOPMENTAL DISABILITY (DD)"
                       106 "DOWN SYNDROME" 107 "FETAL ALCOHOL SYNDROME"
                       108 "FRAGILE X SYNDROME" 109 "HYDROCEPHALUS"
                       110 "INTELLECTUAL DISABILITY"
                       111 "INTELLECTUAL IMPAIRMENT" 112 "MENTAL HANDICAP"
                       113 "MENTAL RETARDATION (MR)" 114 "MENTAL DISABILITY"
                       115 "MENTAL IMPAIRMENT" 116 "MICROCEPHALY"
                       117 "MUSCULAR DYSTROPHY"
                       118 "PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)"
                       119 "PRADER-WILLI SYNDROME" 120 "RETARDATION"
                       121 "SPINA BIFIDA" 178 "RETTS DISORDER"
                       222 "ATTENTION DEFICIT DISORDER (ADD)"
                       223 "ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)"
                       224 "HANDICAPPED" 225 "HYPERACTIVITY"
                       226 "LEARNING DISABILITY/PROBLEMS (LD)"
                       227 "MENTAL PROBLEMS"
                       228 "SLOW IN SCHOOL / SLOW LEARNER / SLOW"
                       229 "SPECIAL EDUCATION / SPECIAL ED"
                       230 "SPEECH PROBLEMS" 331 "EPILEPSY"
                       332 "SEIZURE DISORDER" 433 "BRAIN DAMAGE"
                       434 "BRAIN INJURY/ BRAIN INJURED"
                       435 "CLOSED HEAD INJURY" 436 "HEAD INJURY"
                       437 "TRAUMATIC BRAIN INJURY / BRAIN INJURY"
                       538 "BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)"
                       539 "CYCLOTHYMIA" 540 "DELUSIONAL DISORDER"
                       542 "SCHIZOPHRENIA / SCHIZOAFFECTIVE / SCHIZOPHRENIFORM DISORDER"
                       543 "PSYCHOTIC DISORDER / PSYCHOSIS"
                       586 "CLINICAL DEPRESSION" 587 "MAJOR DEPRESSION"
                       588 "SEVERE DEPRESSION" 644 "AGORAPHOBIA"
                       645 "ALCOHOLISM" 646 "ALZHEIMER'S"
                       647 "ANOREXIA or ANOREXIA NERVOSA" 648 "BULIMIA"
                       649 "EATING DISORDER"
                       650 "ANXIETY or ANXIETY DISORDER"
                       651 "BORDERLINE PERSONALITY DISORDER" 652 "DEMENTIA"
                       653 "DRUG ABUSE"
                       654 "GAMBLING PROBLEM or PATHOLOGICAL GAMBLING"
                       655 "OBSESSIVE COMPULSIVE DISORDER (OCD)"
                       656 "PANIC ATTACKS/ DISORDER"
                       657 "PERSONALITY DISORDER" 658 "PHOBIA"
                       659 "POSTTRAUMATIC STRESS DISORDERS (PTSD)"
                       660 "SLEEP DISORDER (INSOMNIA)" 661 "SOMATIZATION"
                       662 "DEPRESSION (IF VOLUNTEERED THAT THIS IS MILD DEPRESSION)"
                       663 "DYSTHYMIA" 762 "BIOCHEMICAL PROBLEM"
                       763 "BRAIN DISORDER" 764 "BREAKDOWN"
                       765 "CHEMICAL IMBALANCE"
                       766 "EMOTIONAL PROBLEM / DISORDER" 767 "MANIC"
                       768 "MENTAL BREAKDOWN" 769 "MOOD PROBLEM/DISORDER"
                       770 "MENTALLY ILL" 771 "MENTAL HEALTH PROBLEMS"
                       772 "NERVES / NERVOUS CONDITION"
                       773 "PARANOID / PARANOIA" 774 "PSYCHOLOGICAL PROBLEMS"
                       779 "SUICIDAL / SUICIDE ATTEMPT" 875 "DEPRESSION"
                       976 "OTHER UNFAMILIAR CONDITION (SPECIFY)"
                       977 "OTHER FAMILIAR CONDITION (SPECIFY)"
                       996 "NO CONDITIONS" 997 "DON'T KNOW" 998 "REFUSED"
                       999 "INAPP" ;
label define C1PCDA11  97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PCDO11  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCHA12  997 "DON'T KNOW" 998 "MISSING" 999 "INAPP" ;
label define C1PCHX12  1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PCHR12  1 "HUSBAND OR WIFE" 2 "LOVER/PARTNER"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD" 9 "SON/DAUGHT/CHILD-IN-LAW"
                       10 "FATHER/MOTHER/PARENT"
                       11 "STEP-FATHER/MOTHER/PARENT"
                       12 "FATHER/MOTHER/PARENT-IN-LAW OR PARTNER'S FARTHER/MOTHER/PARENT"
                       13 "GRAND FATHER/MOTHER/PARENT"
                       14 "BROTHER/SISTER/SIBLING"
                       15 "STEP-BROTHER/SISTER/SIBLING"
                       16 "HALF-BROTHER/SISTER/SIBLING"
                       17 "BROTHER/SISTER/SIBLING -IN-LAW"
                       18 "GRAND SON/DAUGHTER/CHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define C1PCMB12  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PCYB12  9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PCHH12  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDD12  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCHA13  997 "DON'T KNOW" 998 "MISSING" 999 "INAPP" ;
label define C1PCHX13  1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PCHR13  1 "HUSBAND OR WIFE" 2 "LOVER/PARTNER"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD" 9 "SON/DAUGHT/CHILD-IN-LAW"
                       10 "FATHER/MOTHER/PARENT"
                       11 "STEP-FATHER/MOTHER/PARENT"
                       12 "FATHER/MOTHER/PARENT-IN-LAW OR PARTNER'S FARTHER/MOTHER/PARENT"
                       13 "GRAND FATHER/MOTHER/PARENT"
                       14 "BROTHER/SISTER/SIBLING"
                       15 "STEP-BROTHER/SISTER/SIBLING"
                       16 "HALF-BROTHER/SISTER/SIBLING"
                       17 "BROTHER/SISTER/SIBLING -IN-LAW"
                       18 "GRAND SON/DAUGHTER/CHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define C1PCMB13  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PCYB13  9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PCHH13  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDD13  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCHA14  997 "DON'T KNOW" 998 "MISSING" 999 "INAPP" ;
label define C1PCHX14  1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PCHR14  1 "HUSBAND OR WIFE" 2 "LOVER/PARTNER"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD" 9 "SON/DAUGHT/CHILD-IN-LAW"
                       10 "FATHER/MOTHER/PARENT"
                       11 "STEP-FATHER/MOTHER/PARENT"
                       12 "FATHER/MOTHER/PARENT-IN-LAW OR PARTNER'S FARTHER/MOTHER/PARENT"
                       13 "GRAND FATHER/MOTHER/PARENT"
                       14 "BROTHER/SISTER/SIBLING"
                       15 "STEP-BROTHER/SISTER/SIBLING"
                       16 "HALF-BROTHER/SISTER/SIBLING"
                       17 "BROTHER/SISTER/SIBLING -IN-LAW"
                       18 "GRAND SON/DAUGHTER/CHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define C1PCMB14  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PCYB14  9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PCHH14  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDD14  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCHA15  997 "DON'T KNOW" 998 "MISSING" 999 "INAPP" ;
label define C1PCHX15  1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PCHR15  1 "HUSBAND OR WIFE" 2 "LOVER/PARTNER"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD" 9 "SON/DAUGHT/CHILD-IN-LAW"
                       10 "FATHER/MOTHER/PARENT"
                       11 "STEP-FATHER/MOTHER/PARENT"
                       12 "FATHER/MOTHER/PARENT-IN-LAW OR PARTNER'S FARTHER/MOTHER/PARENT"
                       13 "GRAND FATHER/MOTHER/PARENT"
                       14 "BROTHER/SISTER/SIBLING"
                       15 "STEP-BROTHER/SISTER/SIBLING"
                       16 "HALF-BROTHER/SISTER/SIBLING"
                       17 "BROTHER/SISTER/SIBLING -IN-LAW"
                       18 "GRAND SON/DAUGHTER/CHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define C1PCMB15  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PCYB15  9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PCHH15  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDD15  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCHA16  997 "DON'T KNOW" 998 "MISSING" 999 "INAPP" ;
label define C1PCHX16  1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PCHR16  1 "HUSBAND OR WIFE" 2 "LOVER/PARTNER"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD" 9 "SON/DAUGHT/CHILD-IN-LAW"
                       10 "FATHER/MOTHER/PARENT"
                       11 "STEP-FATHER/MOTHER/PARENT"
                       12 "FATHER/MOTHER/PARENT-IN-LAW OR PARTNER'S FARTHER/MOTHER/PARENT"
                       13 "GRAND FATHER/MOTHER/PARENT"
                       14 "BROTHER/SISTER/SIBLING"
                       15 "STEP-BROTHER/SISTER/SIBLING"
                       16 "HALF-BROTHER/SISTER/SIBLING"
                       17 "BROTHER/SISTER/SIBLING -IN-LAW"
                       18 "GRAND SON/DAUGHTER/CHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define C1PCMB16  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PCYB16  9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PCHH16  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDD16  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCHA17  997 "DON'T KNOW" 998 "MISSING" 999 "INAPP" ;
label define C1PCHX17  1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PCHR17  1 "HUSBAND OR WIFE" 2 "LOVER/PARTNER"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD" 9 "SON/DAUGHT/CHILD-IN-LAW"
                       10 "FATHER/MOTHER/PARENT"
                       11 "STEP-FATHER/MOTHER/PARENT"
                       12 "FATHER/MOTHER/PARENT-IN-LAW OR PARTNER'S FARTHER/MOTHER/PARENT"
                       13 "GRAND FATHER/MOTHER/PARENT"
                       14 "BROTHER/SISTER/SIBLING"
                       15 "STEP-BROTHER/SISTER/SIBLING"
                       16 "HALF-BROTHER/SISTER/SIBLING"
                       17 "BROTHER/SISTER/SIBLING -IN-LAW"
                       18 "GRAND SON/DAUGHTER/CHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define C1PCMB17  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PCYB17  9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PCHH17  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDD17  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCHA18  997 "DON'T KNOW" 998 "MISSING" 999 "INAPP" ;
label define C1PCHX18  1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PCHR18  1 "HUSBAND OR WIFE" 2 "LOVER/PARTNER"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD" 9 "SON/DAUGHT/CHILD-IN-LAW"
                       10 "FATHER/MOTHER/PARENT"
                       11 "STEP-FATHER/MOTHER/PARENT"
                       12 "FATHER/MOTHER/PARENT-IN-LAW OR PARTNER'S FARTHER/MOTHER/PARENT"
                       13 "GRAND FATHER/MOTHER/PARENT"
                       14 "BROTHER/SISTER/SIBLING"
                       15 "STEP-BROTHER/SISTER/SIBLING"
                       16 "HALF-BROTHER/SISTER/SIBLING"
                       17 "BROTHER/SISTER/SIBLING -IN-LAW"
                       18 "GRAND SON/DAUGHTER/CHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define C1PCMB18  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PCYB18  9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PCHH18  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDD18  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCHA19  997 "DON'T KNOW" 998 "MISSING" 999 "INAPP" ;
label define C1PCHX19  1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PCHR19  1 "HUSBAND OR WIFE" 2 "LOVER/PARTNER"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD" 9 "SON/DAUGHT/CHILD-IN-LAW"
                       10 "FATHER/MOTHER/PARENT"
                       11 "STEP-FATHER/MOTHER/PARENT"
                       12 "FATHER/MOTHER/PARENT-IN-LAW OR PARTNER'S FARTHER/MOTHER/PARENT"
                       13 "GRAND FATHER/MOTHER/PARENT"
                       14 "BROTHER/SISTER/SIBLING"
                       15 "STEP-BROTHER/SISTER/SIBLING"
                       16 "HALF-BROTHER/SISTER/SIBLING"
                       17 "BROTHER/SISTER/SIBLING -IN-LAW"
                       18 "GRAND SON/DAUGHTER/CHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define C1PCMB19  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PCYB19  9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PCHH19  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDD19  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCHA20  997 "DON'T KNOW" 998 "MISSING" 999 "INAPP" ;
label define C1PCHX20  1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PCHR20  1 "HUSBAND OR WIFE" 2 "LOVER/PARTNER"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD" 9 "SON/DAUGHT/CHILD-IN-LAW"
                       10 "FATHER/MOTHER/PARENT"
                       11 "STEP-FATHER/MOTHER/PARENT"
                       12 "FATHER/MOTHER/PARENT-IN-LAW OR PARTNER'S FARTHER/MOTHER/PARENT"
                       13 "GRAND FATHER/MOTHER/PARENT"
                       14 "BROTHER/SISTER/SIBLING"
                       15 "STEP-BROTHER/SISTER/SIBLING"
                       16 "HALF-BROTHER/SISTER/SIBLING"
                       17 "BROTHER/SISTER/SIBLING -IN-LAW"
                       18 "GRAND SON/DAUGHTER/CHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define C1PCMB20  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PCYB20  9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PCHH20  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDD20  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCHA21  997 "DON'T KNOW" 998 "MISSING" 999 "INAPP" ;
label define C1PCHX21  1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PCHR21  1 "HUSBAND OR WIFE" 2 "LOVER/PARTNER"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD" 9 "SON/DAUGHT/CHILD-IN-LAW"
                       10 "FATHER/MOTHER/PARENT"
                       11 "STEP-FATHER/MOTHER/PARENT"
                       12 "FATHER/MOTHER/PARENT-IN-LAW OR PARTNER'S FARTHER/MOTHER/PARENT"
                       13 "GRAND FATHER/MOTHER/PARENT"
                       14 "BROTHER/SISTER/SIBLING"
                       15 "STEP-BROTHER/SISTER/SIBLING"
                       16 "HALF-BROTHER/SISTER/SIBLING"
                       17 "BROTHER/SISTER/SIBLING -IN-LAW"
                       18 "GRAND SON/DAUGHTER/CHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define C1PCMB21  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PCYB21  9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PCHH21  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDD21  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCHA22  997 "DON'T KNOW" 998 "MISSING" 999 "INAPP" ;
label define C1PCHX22  1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PCHR22  1 "HUSBAND OR WIFE" 2 "LOVER/PARTNER"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD" 9 "SON/DAUGHT/CHILD-IN-LAW"
                       10 "FATHER/MOTHER/PARENT"
                       11 "STEP-FATHER/MOTHER/PARENT"
                       12 "FATHER/MOTHER/PARENT-IN-LAW OR PARTNER'S FARTHER/MOTHER/PARENT"
                       13 "GRAND FATHER/MOTHER/PARENT"
                       14 "BROTHER/SISTER/SIBLING"
                       15 "STEP-BROTHER/SISTER/SIBLING"
                       16 "HALF-BROTHER/SISTER/SIBLING"
                       17 "BROTHER/SISTER/SIBLING -IN-LAW"
                       18 "GRAND SON/DAUGHTER/CHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define C1PCMB22  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PCYB22  9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PCHH22  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCDD22  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PCHA23  997 "DON'T KNOW" 998 "MISSING" 999 "INAPP" ;
label define C1PCHX23  1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PCHR23  1 "HUSBAND OR WIFE" 2 "LOVER/PARTNER"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD" 9 "SON/DAUGHT/CHILD-IN-LAW"
                       10 "FATHER/MOTHER/PARENT"
                       11 "STEP-FATHER/MOTHER/PARENT"
                       12 "FATHER/MOTHER/PARENT-IN-LAW OR PARTNER'S FARTHER/MOTHER/PARENT"
                       13 "GRAND FATHER/MOTHER/PARENT"
                       14 "BROTHER/SISTER/SIBLING"
                       15 "STEP-BROTHER/SISTER/SIBLING"
                       16 "HALF-BROTHER/SISTER/SIBLING"
                       17 "BROTHER/SISTER/SIBLING -IN-LAW"
                       18 "GRAND SON/DAUGHTER/CHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define C1PCHX24  1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PCHR24  1 "HUSBAND OR WIFE" 2 "LOVER/PARTNER"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD" 9 "SON/DAUGHT/CHILD-IN-LAW"
                       10 "FATHER/MOTHER/PARENT"
                       11 "STEP-FATHER/MOTHER/PARENT"
                       12 "FATHER/MOTHER/PARENT-IN-LAW OR PARTNER'S FARTHER/MOTHER/PARENT"
                       13 "GRAND FATHER/MOTHER/PARENT"
                       14 "BROTHER/SISTER/SIBLING"
                       15 "STEP-BROTHER/SISTER/SIBLING"
                       16 "HALF-BROTHER/SISTER/SIBLING"
                       17 "BROTHER/SISTER/SIBLING -IN-LAW"
                       18 "GRAND SON/DAUGHTER/CHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define C1PCHA25  997 "DON'T KNOW" 998 "MISSING" 999 "INAPP" ;
label define C1PCHX25  1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PCHR25  1 "HUSBAND OR WIFE" 2 "LOVER/PARTNER"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD" 9 "SON/DAUGHT/CHILD-IN-LAW"
                       10 "FATHER/MOTHER/PARENT"
                       11 "STEP-FATHER/MOTHER/PARENT"
                       12 "FATHER/MOTHER/PARENT-IN-LAW OR PARTNER'S FARTHER/MOTHER/PARENT"
                       13 "GRAND FATHER/MOTHER/PARENT"
                       14 "BROTHER/SISTER/SIBLING"
                       15 "STEP-BROTHER/SISTER/SIBLING"
                       16 "HALF-BROTHER/SISTER/SIBLING"
                       17 "BROTHER/SISTER/SIBLING -IN-LAW"
                       18 "GRAND SON/DAUGHTER/CHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define C1PCHA26  997 "DON'T KNOW" 998 "MISSING" 999 "INAPP" ;
label define C1PCHX26  1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PCHR26  1 "HUSBAND OR WIFE" 2 "LOVER/PARTNER"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD" 9 "SON/DAUGHT/CHILD-IN-LAW"
                       10 "FATHER/MOTHER/PARENT"
                       11 "STEP-FATHER/MOTHER/PARENT"
                       12 "FATHER/MOTHER/PARENT-IN-LAW OR PARTNER'S FARTHER/MOTHER/PARENT"
                       13 "GRAND FATHER/MOTHER/PARENT"
                       14 "BROTHER/SISTER/SIBLING"
                       15 "STEP-BROTHER/SISTER/SIBLING"
                       16 "HALF-BROTHER/SISTER/SIBLING"
                       17 "BROTHER/SISTER/SIBLING -IN-LAW"
                       18 "GRAND SON/DAUGHTER/CHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define C1PCHA27  997 "DON'T KNOW" 998 "MISSING" 999 "INAPP" ;
label define C1PCHX27  1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PCHR27  1 "HUSBAND OR WIFE" 2 "LOVER/PARTNER"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD" 9 "SON/DAUGHT/CHILD-IN-LAW"
                       10 "FATHER/MOTHER/PARENT"
                       11 "STEP-FATHER/MOTHER/PARENT"
                       12 "FATHER/MOTHER/PARENT-IN-LAW OR PARTNER'S FARTHER/MOTHER/PARENT"
                       13 "GRAND FATHER/MOTHER/PARENT"
                       14 "BROTHER/SISTER/SIBLING"
                       15 "STEP-BROTHER/SISTER/SIBLING"
                       16 "HALF-BROTHER/SISTER/SIBLING"
                       17 "BROTHER/SISTER/SIBLING -IN-LAW"
                       18 "GRAND SON/DAUGHTER/CHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define C1PCHA28  997 "DON'T KNOW" 998 "MISSING" 999 "INAPP" ;
label define C1PCHX28  1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PCHR28  1 "HUSBAND OR WIFE" 2 "LOVER/PARTNER"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD" 9 "SON/DAUGHT/CHILD-IN-LAW"
                       10 "FATHER/MOTHER/PARENT"
                       11 "STEP-FATHER/MOTHER/PARENT"
                       12 "FATHER/MOTHER/PARENT-IN-LAW OR PARTNER'S FARTHER/MOTHER/PARENT"
                       13 "GRAND FATHER/MOTHER/PARENT"
                       14 "BROTHER/SISTER/SIBLING"
                       15 "STEP-BROTHER/SISTER/SIBLING"
                       16 "HALF-BROTHER/SISTER/SIBLING"
                       17 "BROTHER/SISTER/SIBLING -IN-LAW"
                       18 "GRAND SON/DAUGHTER/CHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define C1PCHA29  997 "DON'T KNOW" 998 "MISSING" 999 "INAPP" ;
label define C1PCHX29  1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PCHR29  1 "HUSBAND OR WIFE" 2 "LOVER/PARTNER"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD" 9 "SON/DAUGHT/CHILD-IN-LAW"
                       10 "FATHER/MOTHER/PARENT"
                       11 "STEP-FATHER/MOTHER/PARENT"
                       12 "FATHER/MOTHER/PARENT-IN-LAW OR PARTNER'S FARTHER/MOTHER/PARENT"
                       13 "GRAND FATHER/MOTHER/PARENT"
                       14 "BROTHER/SISTER/SIBLING"
                       15 "STEP-BROTHER/SISTER/SIBLING"
                       16 "HALF-BROTHER/SISTER/SIBLING"
                       17 "BROTHER/SISTER/SIBLING -IN-LAW"
                       18 "GRAND SON/DAUGHTER/CHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define C1PCHM1N  9 "INAPP" ;
label define C1PCHM2N  9 "INAPP" ;
label define C1PCHM1X  0 "NO" 1 "YES" 9 "INAPP" ;
label define C1PCHM2X  0 "NO" 1 "YES" 9 "INAPP" ;
label define C1PD1     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PD2     1 "HUSBAND" 2 "WIFE" 3 "SON" 4 "DAUGHTER" 5 "FATHER"
                       6 "MOTHER" 7 "BROTHER" 8 "SISTER" 9 "GRANDFATHER"
                       10 "GRANDMOTHER" 11 "FATHER-IN-LAW" 12 "MOTHER-IN-LAW"
                       13 "OTHER (SPECIFY)" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define C1PD3     1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PD4     1 "CONDITION(S) GIVEN (SPECIFY)"
                       2 "NO SPECIFIC CONDITION" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PD5M    1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PD5Y    9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define C1PD7     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PD8A    1 "HE/SHE NO LONGER NEEDS CARE"
                       2 "SOMEONE ELSE IS HELPING"
                       3 "THIS PERSON IS DECEASED"
                       4 "SOME OTHER REASON (SPECIFY)" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PD8B    1 "HE/SHE NO LONGER NEEDS CARE"
                       2 "SOMEONE ELSE IS HELPING"
                       3 "THIS PERSON IS DECEASED"
                       4 "SOME OTHER REASON (SPECIFY)" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PD9     1 "YES" 2 "NO" 3 "SOME OF THE TIME" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PD10    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PD11    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PD12    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PD13    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PD14    97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PD15    96 "96 OR MORE HOURS PER WEEK" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define C1PD16    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PD17    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PD18    997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define C1PD19N   97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PD19M   1 "MONTHS" 2 "YEARS" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PD20    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PD21    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PD22    97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PE1     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PE1A1   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PE1A2   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PE1A3   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PE1A4   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PE1A5   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PE1A6   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PE1A7   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PE1BN   997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define C1PE1BM   1 "DAYS" 2 "WEEKS" 3 "MONTHS" 4 "YEARS" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PE2     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PE2AN   997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define C1PE2AM   1 "DAYS" 2 "WEEKS" 3 "MONTHS" 4 "YEARS" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PE3     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PE3AN   997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define C1PE3AM   1 "DAYS" 2 "WEEKS" 3 "MONTHS" 4 "YEARS" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define C1PF1     1 "NOT SPANISH/HISPANIC" 2 "MEXICAN"
                       3 "MEXICAN AMERICAN" 4 "CHICANO" 5 "PUERTO RICAN"
                       6 "CUBAN" 7 "OTHER SPANISH (SPECIFY)" 97 "DON'T KNOW"
                       98 "REFUSED" ;
label define C1PF2A    1 "AMERICAN INDIAN/NATIVE AMERICAN" 2 "BAHAMAS"
                       3 "CANADA" 4 "COSTA RICA" 5 "CUBA"
                       6 "DOMINICAN REPUBLIC" 7 "EL SALVADOR" 8 "GUATEMALA"
                       9 "HAITI" 10 "HONDURAS" 11 "JAMAICA" 12 "MEXICO"
                       13 "NICARAGUA" 14 "PANAMA" 15 "PUERTO RICO"
                       16 "ST.VINCENT" 17 "TRINIDAD"
                       18 "CENTRAL AMERICAN/CARIBBEAN" 20 "ARGENTINA"
                       21 "BOLIVIA" 22 "BRAZIL" 23 "CHILE" 24 "COLOMBIA"
                       25 "ECUADOR" 26 "PERU" 27 "VENEZUELA"
                       28 "SOUTH AMERICA" 30 "CZECH" 31 "ENGLAND" 32 "FRANCE"
                       33 "GERMANY" 34 "GREECE" 35 "HUNGARY" 36 "IRELAND"
                       37 "ITALY" 38 "NORWAY" 39 "POLAND" 40 "PORTUGAL"
                       41 "USSR/RUSSIA" 42 "SCOTLAND" 43 "SPAIN" 44 "SWEDEN"
                       45 "NETHERLAND" 46 "YUGOSLAV" 47 "EAST EUROPE"
                       48 "WEST EUROPE" 50 "CHINA" 51 "INDIA" 52 "JAPAN"
                       53 "KOREA" 54 "PHILIPPINE" 55 "SINGAPORE" 56 "TAIWAN"
                       57 "THAILAND" 58 "ASIA" 60 "EGYPT" 61 "KENYA"
                       62 "NIGERIA" 63 "SOUTH AFRICA" 64 "ZAIRE"
                       65 "ZIMBABWE" 66 "AFRICA" 68 "IRAN" 69 "IRAQ"
                       70 "ISRAEL" 71 "LEBANON" 72 "PAKISTAN"
                       73 "SAUDI ARABIA" 74 "MIDEAST" 96 "OTHER (SPECIFY)"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PF2B    1 "AMERICAN INDIAN/NATIVE AMERICAN" 2 "BAHAMAS"
                       3 "CANADA" 4 "COSTA RICA" 5 "CUBA"
                       6 "DOMINICAN REPUBLIC" 7 "EL SALVADOR" 8 "GUATEMALA"
                       9 "HAITI" 10 "HONDURAS" 11 "JAMAICA" 12 "MEXICO"
                       13 "NICARAGUA" 14 "PANAMA" 15 "PUERTO RICO"
                       16 "ST.VINCENT" 17 "TRINIDAD"
                       18 "CENTRAL AMERICAN/CARIBBEAN" 20 "ARGENTINA"
                       21 "BOLIVIA" 22 "BRAZIL" 23 "CHILE" 24 "COLOMBIA"
                       25 "ECUADOR" 26 "PERU" 27 "VENEZUELA"
                       28 "SOUTH AMERICA" 30 "CZECH" 31 "ENGLAND" 32 "FRANCE"
                       33 "GERMANY" 34 "GREECE" 35 "HUNGARY" 36 "IRELAND"
                       37 "ITALY" 38 "NORWAY" 39 "POLAND" 40 "PORTUGAL"
                       41 "USSR/RUSSIA" 42 "SCOTLAND" 43 "SPAIN" 44 "SWEDEN"
                       45 "NETHERLAND" 46 "YUGOSLAV" 47 "EAST EUROPE"
                       48 "WEST EUROPE" 50 "CHINA" 51 "INDIA" 52 "JAPAN"
                       53 "KOREA" 54 "PHILIPPINE" 55 "SINGAPORE" 56 "TAIWAN"
                       57 "THAILAND" 58 "ASIA" 60 "EGYPT" 61 "KENYA"
                       62 "NIGERIA" 63 "SOUTH AFRICA" 64 "ZAIRE"
                       65 "ZIMBABWE" 66 "AFRICA" 68 "IRAN" 69 "IRAQ"
                       70 "ISRAEL" 71 "LEBANON" 72 "PAKISTAN"
                       73 "SAUDI ARABIA" 74 "MIDEAST" 96 "OTHER (SPECIFY)"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PF2C    1 "AMERICAN INDIAN/NATIVE AMERICAN" 2 "BAHAMAS"
                       3 "CANADA" 4 "COSTA RICA" 5 "CUBA"
                       6 "DOMINICAN REPUBLIC" 7 "EL SALVADOR" 8 "GUATEMALA"
                       9 "HAITI" 10 "HONDURAS" 11 "JAMAICA" 12 "MEXICO"
                       13 "NICARAGUA" 14 "PANAMA" 15 "PUERTO RICO"
                       16 "ST.VINCENT" 17 "TRINIDAD"
                       18 "CENTRAL AMERICAN/CARIBBEAN" 20 "ARGENTINA"
                       21 "BOLIVIA" 22 "BRAZIL" 23 "CHILE" 24 "COLOMBIA"
                       25 "ECUADOR" 26 "PERU" 27 "VENEZUELA"
                       28 "SOUTH AMERICA" 30 "CZECH" 31 "ENGLAND" 32 "FRANCE"
                       33 "GERMANY" 34 "GREECE" 35 "HUNGARY" 36 "IRELAND"
                       37 "ITALY" 38 "NORWAY" 39 "POLAND" 40 "PORTUGAL"
                       41 "USSR/RUSSIA" 42 "SCOTLAND" 43 "SPAIN" 44 "SWEDEN"
                       45 "NETHERLAND" 46 "YUGOSLAV" 47 "EAST EUROPE"
                       48 "WEST EUROPE" 50 "CHINA" 51 "INDIA" 52 "JAPAN"
                       53 "KOREA" 54 "PHILIPPINE" 55 "SINGAPORE" 56 "TAIWAN"
                       57 "THAILAND" 58 "ASIA" 60 "EGYPT" 61 "KENYA"
                       62 "NIGERIA" 63 "SOUTH AFRICA" 64 "ZAIRE"
                       65 "ZIMBABWE" 66 "AFRICA" 68 "IRAN" 69 "IRAQ"
                       70 "ISRAEL" 71 "LEBANON" 72 "PAKISTAN"
                       73 "SAUDI ARABIA" 74 "MIDEAST" 96 "OTHER (SPECIFY)"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PF2_1   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_3   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_4   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_5   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_6   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_7   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_9   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_10  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_11  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_12  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_13  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_14  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_15  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_17  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_18  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_22  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_24  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_30  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_31  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_32  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_33  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_34  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_35  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_36  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_37  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_38  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_39  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_40  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_41  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_42  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_43  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_44  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_45  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_46  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_47  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_48  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_50  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_51  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_52  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_53  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_54  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_56  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_57  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_58  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_66  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_69  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_70  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_71  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_74  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF2_96  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF3     1 "C1PF2A" 2 "C1PF2B" 3 "C1PF2C" 4 "OTHER (SPECIFY)"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PF3_1   1 "AMERICAN INDIAN/NATIVE AMERICAN" 2 "BAHAMAS"
                       3 "CANADA" 4 "COSTA RICA" 5 "CUBA"
                       6 "DOMINICAN REPUBLIC" 7 "EL SALVADOR" 8 "GUATEMALA"
                       9 "HAITI" 10 "HONDURAS" 11 "JAMAICA" 12 "MEXICO"
                       13 "NICARAGUA" 14 "PANAMA" 15 "PUERTO RICO"
                       16 "ST.VINCENT" 17 "TRINIDAD"
                       18 "CENTRAL AMERICAN/CARIBBEAN" 20 "ARGENTINA"
                       21 "BOLIVIA" 22 "BRAZIL" 23 "CHILE" 24 "COLOMBIA"
                       25 "ECUADOR" 26 "PERU" 27 "VENEZUELA"
                       28 "SOUTH AMERICA" 30 "CZECH" 31 "ENGLAND" 32 "FRANCE"
                       33 "GERMANY" 34 "GREECE" 35 "HUNGARY" 36 "IRELAND"
                       37 "ITALY" 38 "NORWAY" 39 "POLAND" 40 "PORTUGAL"
                       41 "USSR/RUSSIA" 42 "SCOTLAND" 43 "SPAIN" 44 "SWEDEN"
                       45 "NETHERLAND" 46 "YUGOSLAV" 47 "EAST EUROPE"
                       48 "WEST EUROPE" 50 "CHINA" 51 "INDIA" 52 "JAPAN"
                       53 "KOREA" 54 "PHILIPPINE" 55 "SINGAPORE" 56 "TAIWAN"
                       57 "THAILAND" 58 "ASIA" 60 "EGYPT" 61 "KENYA"
                       62 "NIGERIA" 63 "SOUTH AFRICA" 64 "ZAIRE"
                       65 "ZIMBABWE" 66 "AFRICA" 68 "IRAN" 69 "IRAQ"
                       70 "ISRAEL" 71 "LEBANON" 72 "PAKISTAN"
                       73 "SAUDI ARABIA" 74 "MIDEAST" 96 "OTHER (SPECIFY)"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define C1PF4     1 "VERY CLOSELY" 2 "SOMEWHAT CLOSELY"
                       3 "NOT VERY CLOSELY" 4 "NOT AT ALL CLOSELY"
                       7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF5     1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF6     1 "VERY IMPORTANT" 2 "SOMEWHAT IMPORTANT"
                       3 "NOT VERY IMPORTANT" 4 "NOT AT ALL IMPORTANT"
                       7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF7A    1 "WHITE" 2 "BLACK AND/OR AFRICAN AMERICAN"
                       3 "NATIVE AMERICAN OR ALASKA NATIVE ALEUTIAN ISLANDER/ESKIMO"
                       4 "ASIAN" 5 "NATIVE HAWAIIAN OR PACIFIC ISLANDER"
                       6 "OTHER (SPECIFY)" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PF7B    1 "WHITE" 2 "BLACK AND/OR AFRICAN AMERICAN"
                       3 "NATIVE AMERICAN OR ALASKA NATIVE ALEUTIAN ISLANDER/ESKIMO"
                       4 "ASIAN" 5 "NATIVE HAWAIIAN OR PACIFIC ISLANDER"
                       6 "OTHER (SPECIFY)" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PF7C    1 "WHITE" 2 "BLACK AND/OR AFRICAN AMERICAN"
                       3 "NATIVE AMERICAN OR ALASKA NATIVE ALEUTIAN ISLANDER/ESKIMO"
                       4 "ASIAN" 5 "NATIVE HAWAIIAN OR PACIFIC ISLANDER"
                       6 "OTHER (SPECIFY)" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PF7D    1 "WHITE" 2 "BLACK AND/OR AFRICAN AMERICAN"
                       3 "NATIVE AMERICAN OR ALASKA NATIVE ALEUTIAN ISLANDER/ESKIMO"
                       4 "ASIAN" 5 "NATIVE HAWAIIAN OR PACIFIC ISLANDER"
                       6 "OTHER (SPECIFY)" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PF8A    1 "WHITE" 2 "BLACK AND/OR AFRICAN AMERICAN"
                       3 "NATIVE AMERICAN OR ALASKA NATIVE ALEUTIAN ISLANDER/ESKIMO"
                       4 "ASIAN" 5 "NATIVE HAWAIIAN OR PACIFIC ISLANDER"
                       6 "OTHER (SPECIFY)" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PF8B    1 "WHITE" 2 "BLACK AND/OR AFRICAN AMERICAN"
                       3 "NATIVE AMERICAN OR ALASKA NATIVE ALEUTIAN ISLANDER/ESKIMO"
                       4 "ASIAN" 5 "NATIVE HAWAIIAN OR PACIFIC ISLANDER"
                       6 "OTHER (SPECIFY)" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PF8C    1 "WHITE" 2 "BLACK AND/OR AFRICAN AMERICAN"
                       3 "NATIVE AMERICAN OR ALASKA NATIVE ALEUTIAN ISLANDER/ESKIMO"
                       4 "ASIAN" 5 "NATIVE HAWAIIAN OR PACIFIC ISLANDER"
                       6 "OTHER (SPECIFY)" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PF8A1   1 "WHITE" 2 "BLACK AND/OR AFRICAN AMERICAN"
                       3 "NATIVE AMERICAN OR ALASKA NATIVE ALEUTIAN ISLANDER/ESKIMO"
                       4 "ASIAN" 5 "NATIVE HAWAIIAN OR PACIFIC ISLANDER"
                       6 "OTHER (SPECIFY)" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1PF9     1 "VERY CLOSELY" 2 "SOMEWHAT CLOSELY"
                       3 "NOT VERY CLOSELY" 4 "NOT AT ALL CLOSELY"
                       7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF10    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF11    1 "VERY IMPORTANT" 2 "SOMEWHAT IMPORTANT"
                       3 "NOT VERY IMPORTANT" 4 "NOT AT ALL IMPORTANT"
                       7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF12    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PF12A   1 "VERY CLOSELY" 2 "SOMEWHAT CLOSELY"
                       3 "NOT VERY CLOSELY" 4 "NOT AT ALL CLOSELY"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PF12B   1 "ENTER COUNTRY" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PG1     1 "VERY" 2 "SOMEWHAT" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PG1A    1 "VERY" 2 "SOMEWHAT" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PG2     1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NONE AT ALL"
                       7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PG3     1 "VERY" 2 "SOMEWHAT" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PG4     1 "EXCELLENT" 2 "VERY GOOD" 3 "GOOD" 4 "FAIR" 5 "POOR"
                       7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PG5     1 "AGREE" 2 "DISAGREE" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PG5A    1 "STRONGLY" 2 "SOMEWHAT" 3 "ONLY A LITTLE"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1PG6     1 "A LOT" 2 "SOMEWHAT" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PG7     1 "A LOT" 2 "SOMEWHAT" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PG8     1 "A LOT" 2 "SOMEWHAT" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DON'T KNOW" 8 "REFUSED" ;
label define C1PG9     1 "A LOT" 2 "SOMEWHAT" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DON'T KNOW" 8 "REFUSED" ;
label define C1SA1     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "WORST"
                       10 "BEST" 98 "REFUSED" ;
label define C1SA2     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "WORST"
                       10 "BEST" 98 "REFUSED" ;
label define C1SA3     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "WORST"
                       10 "BEST" 98 "REFUSED" ;
label define C1SA4     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "NONE"
                       10 "VERY MUCH" 98 "REFUSED" ;
label define C1SA5     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "NONE"
                       10 "VERY MUCH" 98 "REFUSED" ;
label define C1SSATIS  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SSATIS2 -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SA6A    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "IMPROVED A LOT" 2 "IMPROVED A LITTLE"
                       3 "STAYED THE SAME" 4 "GOTTEN A LITTLE WORSE"
                       5 "GOTTEN A LOT WORSE" 8 "REFUSED" ;
label define C1SA6B    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "IMPROVED A LOT" 2 "IMPROVED A LITTLE"
                       3 "STAYED THE SAME" 4 "GOTTEN A LITTLE WORSE"
                       5 "GOTTEN A LOT WORSE" 8 "REFUSED" ;
label define C1SA6C    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "IMPROVED A LOT" 2 "IMPROVED A LITTLE"
                       3 "STAYED THE SAME" 4 "GOTTEN A LITTLE WORSE"
                       5 "GOTTEN A LOT WORSE" 8 "REFUSED" ;
label define C1SA6D    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "IMPROVED A LOT" 2 "IMPROVED A LITTLE"
                       3 "STAYED THE SAME" 4 "GOTTEN A LITTLE WORSE"
                       5 "GOTTEN A LOT WORSE" 8 "REFUSED" ;
label define C1SA6E    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "IMPROVED A LOT" 2 "IMPROVED A LITTLE"
                       3 "STAYED THE SAME" 4 "GOTTEN A LITTLE WORSE"
                       5 "GOTTEN A LOT WORSE" 8 "REFUSED" ;
label define C1SA7A    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "EXCELLENT"
                       2 "GOOD" 3 "AVERAGE" 4 "FAIR" 5 "POOR" 8 "REFUSED" ;
label define C1SA7B    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "EXCELLENT"
                       2 "GOOD" 3 "AVERAGE" 4 "FAIR" 5 "POOR" 8 "REFUSED" ;
label define C1SA7C    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "EXCELLENT"
                       2 "GOOD" 3 "AVERAGE" 4 "FAIR" 5 "POOR" 8 "REFUSED" ;
label define C1SA7D    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "EXCELLENT"
                       2 "GOOD" 3 "AVERAGE" 4 "FAIR" 5 "POOR" 8 "REFUSED" ;
label define C1SA8A    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SA8B    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SA8C    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SA8D    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SA8E    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SA8F    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SHLOCS  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SHLOCO  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SA9A    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "NOT AT ALL TRUE" 2 "A LITTLE TRUE"
                       3 "MODERATELY TRUE" 4 "EXTREMELY TRUE" 8 "REFUSED" ;
label define C1SA9B    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "NOT AT ALL TRUE" 2 "A LITTLE TRUE"
                       3 "MODERATELY TRUE" 4 "EXTREMELY TRUE" 8 "REFUSED" ;
label define C1SA9C    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "NOT AT ALL TRUE" 2 "A LITTLE TRUE"
                       3 "MODERATELY TRUE" 4 "EXTREMELY TRUE" 8 "REFUSED" ;
label define C1SA9D    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "NOT AT ALL TRUE" 2 "A LITTLE TRUE"
                       3 "MODERATELY TRUE" 4 "EXTREMELY TRUE" 8 "REFUSED" ;
label define C1SA9E    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "NOT AT ALL TRUE" 2 "A LITTLE TRUE"
                       3 "MODERATELY TRUE" 4 "EXTREMELY TRUE" 8 "REFUSED" ;
label define C1SAMPLI  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SA10A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALMOST EVERY DAY" 2 "SEVERAL TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "SEVERAL TIMES A MONTH"
                       5 "ONCE A MONTH" 6 "NOT AT ALL" 8 "REFUSED" ;
label define C1SA10B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALMOST EVERY DAY" 2 "SEVERAL TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "SEVERAL TIMES A MONTH"
                       5 "ONCE A MONTH" 6 "NOT AT ALL" 8 "REFUSED" ;
label define C1SA10C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALMOST EVERY DAY" 2 "SEVERAL TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "SEVERAL TIMES A MONTH"
                       5 "ONCE A MONTH" 6 "NOT AT ALL" 8 "REFUSED" ;
label define C1SA10D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALMOST EVERY DAY" 2 "SEVERAL TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "SEVERAL TIMES A MONTH"
                       5 "ONCE A MONTH" 6 "NOT AT ALL" 8 "REFUSED" ;
label define C1SA10E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALMOST EVERY DAY" 2 "SEVERAL TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "SEVERAL TIMES A MONTH"
                       5 "ONCE A MONTH" 6 "NOT AT ALL" 8 "REFUSED" ;
label define C1SA10F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALMOST EVERY DAY" 2 "SEVERAL TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "SEVERAL TIMES A MONTH"
                       5 "ONCE A MONTH" 6 "NOT AT ALL" 8 "REFUSED" ;
label define C1SA10G   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALMOST EVERY DAY" 2 "SEVERAL TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "SEVERAL TIMES A MONTH"
                       5 "ONCE A MONTH" 6 "NOT AT ALL" 8 "REFUSED" ;
label define C1SA10H   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALMOST EVERY DAY" 2 "SEVERAL TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "SEVERAL TIMES A MONTH"
                       5 "ONCE A MONTH" 6 "NOT AT ALL" 8 "REFUSED" ;
label define C1SA10I   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALMOST EVERY DAY" 2 "SEVERAL TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "SEVERAL TIMES A MONTH"
                       5 "ONCE A MONTH" 6 "NOT AT ALL" 8 "REFUSED" ;
label define C1SA10J   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALMOST EVERY DAY" 2 "SEVERAL TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "SEVERAL TIMES A MONTH"
                       5 "ONCE A MONTH" 6 "NOT AT ALL" 8 "REFUSED" ;
label define C1SA11A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA11B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA11C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA11D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA11E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA11F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA11G   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA11H   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA11I   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA11J   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA11K   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA11L   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA11M   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA11N   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA11O   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA11P   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA11Q   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA11R   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA11S   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA11T   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA11U   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA11V   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA11W   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA11X   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA11Y   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA11Z   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA11AA  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA11BB  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA11CC  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA11DD  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA11EE  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA11FF  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA11GG  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA11HH  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA11II  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA11JJ  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA11KK  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA11LL  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA11MM  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA11NN  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SCHROX  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "NO" 1 "YES"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SCHRON  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SA12A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "DAILY"
                       2 "A FEW TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "A FEW TIMES A MONTH" 5 "ONCE THIS MONTH"
                       6 "NOT AT ALL" 8 "REFUSED" ;
label define C1SA12B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "DAILY"
                       2 "A FEW TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "A FEW TIMES A MONTH" 5 "ONCE THIS MONTH"
                       6 "NOT AT ALL" 8 "REFUSED" ;
label define C1SA12C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "DAILY"
                       2 "A FEW TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "A FEW TIMES A MONTH" 5 "ONCE THIS MONTH"
                       6 "NOT AT ALL" 8 "REFUSED" ;
label define C1SA12D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "DAILY"
                       2 "A FEW TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "A FEW TIMES A MONTH" 5 "ONCE THIS MONTH"
                       6 "NOT AT ALL" 8 "REFUSED" ;
label define C1SA12E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "DAILY"
                       2 "A FEW TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "A FEW TIMES A MONTH" 5 "ONCE THIS MONTH"
                       6 "NOT AT ALL" 8 "REFUSED" ;
label define C1SA12F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "DAILY"
                       2 "A FEW TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "A FEW TIMES A MONTH" 5 "ONCE THIS MONTH"
                       6 "NOT AT ALL" 8 "REFUSED" ;
label define C1SA12G   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "DAILY"
                       2 "A FEW TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "A FEW TIMES A MONTH" 5 "ONCE THIS MONTH"
                       6 "NOT AT ALL" 8 "REFUSED" ;
label define C1SA12H   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "DAILY"
                       2 "A FEW TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "A FEW TIMES A MONTH" 5 "ONCE THIS MONTH"
                       6 "NOT AT ALL" 8 "REFUSED" ;
label define C1SA12I   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "DAILY"
                       2 "A FEW TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "A FEW TIMES A MONTH" 5 "ONCE THIS MONTH"
                       6 "NOT AT ALL" 8 "REFUSED" ;
label define C1SA12J   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "DAILY"
                       2 "A FEW TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "A FEW TIMES A MONTH" 5 "ONCE THIS MONTH"
                       6 "NOT AT ALL" 8 "REFUSED" ;
label define C1SA12K   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "DAILY"
                       2 "A FEW TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "A FEW TIMES A MONTH" 5 "ONCE THIS MONTH"
                       6 "NOT AT ALL" 8 "REFUSED" ;
label define C1SA12L   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "DAILY"
                       2 "A FEW TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "A FEW TIMES A MONTH" 5 "ONCE THIS MONTH"
                       6 "NOT AT ALL" 8 "REFUSED" ;
label define C1SRXMEX  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "NO" 1 "YES"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SRXMED  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SA13A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "DAILY"
                       2 "A FEW TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "A FEW TIMES A MONTH" 5 "ONCE THIS MONTH"
                       6 "NOT AT ALL" 8 "REFUSED" ;
label define C1SA13B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "DAILY"
                       2 "A FEW TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "A FEW TIMES A MONTH" 5 "ONCE THIS MONTH"
                       6 "NOT AT ALL" 8 "REFUSED" ;
label define C1SA13C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "DAILY"
                       2 "A FEW TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "A FEW TIMES A MONTH" 5 "ONCE THIS MONTH"
                       6 "NOT AT ALL" 8 "REFUSED" ;
label define C1SA13D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "DAILY"
                       2 "A FEW TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "A FEW TIMES A MONTH" 5 "ONCE THIS MONTH"
                       6 "NOT AT ALL" 8 "REFUSED" ;
label define C1SA14A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA14B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA14C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA14D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA14E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA14F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA14G   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA14H   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA14I   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA14J   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA14K   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA14L   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA14M   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA14N   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA14O   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA14P   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SSPLMX  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "NO" 1 "YES"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SSPLMN  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SA15    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA16A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "NOT AT ALL"
                       10 "COMPLETELY" 98 "REFUSED" 99 "INAPP" ;
label define C1SA16B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "NOT AT ALL"
                       10 "COMPLETELY" 98 "REFUSED" 99 "INAPP" ;
label define C1SA16C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "NOT AT ALL"
                       10 "COMPLETELY" 98 "REFUSED" 99 "INAPP" ;
label define C1SA16D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "NOT AT ALL"
                       10 "COMPLETELY" 98 "REFUSED" 99 "INAPP" ;
label define C1SA16E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "NOT AT ALL"
                       10 "COMPLETELY" 98 "REFUSED" 99 "INAPP" ;
label define C1SA17A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SA17B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SA17C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SA17D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SA17E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SA17F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SA17G   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SA17H   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SA17I   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SA18    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SA19    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "DIAGNOSIS GIVEN" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SA20A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" ;
label define C1SA20B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" ;
label define C1SA20C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" ;
label define C1SA20D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" ;
label define C1SA20E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" ;
label define C1SA20F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" ;
label define C1SA20G   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" ;
label define C1SA20H   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" ;
label define C1SA20I   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" ;
label define C1SA20J   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" ;
label define C1SA20K   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" ;
label define C1SA20L   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" ;
label define C1SA20M   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" ;
label define C1SA20N   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" ;
label define C1SA21    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "A LOT MORE NEGATIVE THAN USUAL"
                       2 "SOMEWHAT MORE NEGATIVE THAN USUAL"
                       3 "A LITTLE MORE NEGATIVE THAN USUAL"
                       4 "ABOUT THE SAME AS USUAL"
                       5 "A LITTLE LESS NEGATIVE THAN USUAL"
                       6 "SOMEWHAT LESS NEGATIVE THAN USUAL"
                       7 "A LOT LESS NEGATIVE THAN USUAL" 8 "REFUSED" ;
label define C1SNEGAF  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SNEGPA  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SA22A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" ;
label define C1SA22B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" ;
label define C1SA22C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" ;
label define C1SA22D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" ;
label define C1SA22E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" ;
label define C1SA22F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" ;
label define C1SA22G   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" ;
label define C1SA22H   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" ;
label define C1SA22I   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" ;
label define C1SA22J   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" ;
label define C1SA22K   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" ;
label define C1SA22L   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" ;
label define C1SA22M   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" ;
label define C1SA23    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "A LOT MORE POSITIVE THAN USUAL"
                       2 "SOMEWHAT MORE POSITIVE THAN USUAL"
                       3 "A LITTLE MORE POSITIVE THAN USUAL"
                       4 "ABOUT THE SAME AS USUAL"
                       5 "A LITTLE LESS POSITIVE THAN USUAL"
                       6 "SOMEWHAT LESS POSITIVE THAN USUAL"
                       7 "A LOT LESS POSITIVE THAN USUAL" 8 "REFUSED" ;
label define C1SPOSAF  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SPOSPA  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SA24A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SA24B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SA24C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SA24D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SA24E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SA24F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SA24G   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SA24H   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SA24I   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SA24J   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SBADL1  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SBADL2  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SIADL   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SA25A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA25B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA25C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA25D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SDYSPN  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SA26A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "SEVERAL TIMES A WEEK" 2 "ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 8 "REFUSED" ;
label define C1SA26B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "SEVERAL TIMES A WEEK" 2 "ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 8 "REFUSED" ;
label define C1SA26C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "SEVERAL TIMES A WEEK" 2 "ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 8 "REFUSED" ;
label define C1SA26D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "SEVERAL TIMES A WEEK" 2 "ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 8 "REFUSED" ;
label define C1SA26E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "SEVERAL TIMES A WEEK" 2 "ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 8 "REFUSED" ;
label define C1SA26F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "SEVERAL TIMES A WEEK" 2 "ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 8 "REFUSED" ;
label define C1SA27A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "SEVERAL TIMES A WEEK" 2 "ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 8 "REFUSED" ;
label define C1SA27B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "SEVERAL TIMES A WEEK" 2 "ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 8 "REFUSED" ;
label define C1SA27C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "SEVERAL TIMES A WEEK" 2 "ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 8 "REFUSED" ;
label define C1SA27D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "SEVERAL TIMES A WEEK" 2 "ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 8 "REFUSED" ;
label define C1SA27E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "SEVERAL TIMES A WEEK" 2 "ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 8 "REFUSED" ;
label define C1SA27F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "SEVERAL TIMES A WEEK" 2 "ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 8 "REFUSED" ;
label define C1SA28A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "SEVERAL TIMES A WEEK" 2 "ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 8 "REFUSED" ;
label define C1SA28B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "SEVERAL TIMES A WEEK" 2 "ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 8 "REFUSED" ;
label define C1SA28C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "SEVERAL TIMES A WEEK" 2 "ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 8 "REFUSED" ;
label define C1SA28D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "SEVERAL TIMES A WEEK" 2 "ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 8 "REFUSED" ;
label define C1SA28E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "SEVERAL TIMES A WEEK" 2 "ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 8 "REFUSED" ;
label define C1SA28F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "SEVERAL TIMES A WEEK" 2 "ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 8 "REFUSED" ;
label define C1SA29A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "DAILY"
                       2 "SEVERAL TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "SEVERAL TIMES A MONTH" 5 "ONCE A MONTH" 6 "NEVER"
                       8 "REFUSED" ;
label define C1SA29B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "DAILY"
                       2 "SEVERAL TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "SEVERAL TIMES A MONTH" 5 "ONCE A MONTH" 6 "NEVER"
                       8 "REFUSED" ;
label define C1SA29C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "DAILY"
                       2 "SEVERAL TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "SEVERAL TIMES A MONTH" 5 "ONCE A MONTH" 6 "NEVER"
                       8 "REFUSED" ;
label define C1SA29D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "DAILY"
                       2 "SEVERAL TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "SEVERAL TIMES A MONTH" 5 "ONCE A MONTH" 6 "NEVER"
                       8 "REFUSED" ;
label define C1SA29E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "DAILY"
                       2 "SEVERAL TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "SEVERAL TIMES A MONTH" 5 "ONCE A MONTH" 6 "NEVER"
                       8 "REFUSED" ;
label define C1SA29F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "DAILY"
                       2 "SEVERAL TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "SEVERAL TIMES A MONTH" 5 "ONCE A MONTH" 6 "NEVER"
                       8 "REFUSED" ;
label define C1SA30A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SA30B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SA30C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SA30D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SA30E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SA30F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SA30G   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SA30H   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SA30I   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SINTAG  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SA31    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED" ;
label define C1SA32    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED" ;
label define C1SWSTHI  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SA33A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 8 "REFUSED" ;
label define C1SA33B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED" ;
label define C1SA34    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY OVERWEIGHT" 2 "SOMEWHAT OVERWEIGHT"
                       3 "ABOUT THE RIGHT WEIGHT" 4 "SOMEWHAT UNDERWEIGHT"
                       5 "VERY UNDERWEIGHT" 8 "REFUSED" ;
label define C1SA35    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SBMI    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SA36    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SA37    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SA38    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED" ;
label define C1SA39    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA39AA  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SA39AB  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SA39AC  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SA40    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA41    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 9998 "REFUSED"
                       9999 "INAPP" ;
label define C1SA42    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED"
                       999 "INAPP" ;
label define C1SA43    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED"
                       999 "INAPP" ;
label define C1SA44A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA44B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA44C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA44D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA44E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA44F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA44G   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA44H   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA45    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "PRIVATE CLINIC OR DOCTOR'S OFFICE (NOT AN HMO)"
                       2 "HMO CLINIC"
                       3 "PUBLIC HEALTH CLINIC OR COMMUNITY HEALTH CENTER"
                       4 "HOSPITAL OUTPATIENT DEPARTMENT"
                       5 "HOSPITAL EMERGENCY ROOM" 6 "URGENT CARE CENTER"
                       7 "SOME OTHER KIND OF PLACE" 8 "NO USUAL PLACE"
                       98 "REFUSED" ;
label define C1SA46A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA46B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA46C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA46D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA46E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA46F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA46G   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA46H   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA47    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "FAMILY DOCTOR/ GENERALIST"
                       2 "OBSTETRICIAN/ GYNECOLOGIST" 3 "INTERNIST"
                       4 "CHIROPRACTOR"
                       5 "PHYSICIANS ASSISTANT/ NURSE PRACTITIONER"
                       6 "OTHER HEALTHCARE PROFESSIONAL"
                       7 "HOMEOPATHIC, ALTERNATIVE, COMPLEMENTARY,NONTRADITIONAL"
                       8 "NO ONE IN PARTICULAR" 98 "REFUSED" ;
label define C1SA48    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA49A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SA49B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SA49C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SA49D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SA49E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SUSEMD  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       998 "NOT CALCULATED (Due to missing data)" ;
label define C1SA50A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SA50B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SA50C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SA50D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SUSEMH  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       998 "NOT CALCULATED (Due to missing data)" ;
label define C1SA51A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA51AY  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SA51AZ  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED"
                       999 "INAPP" ;
label define C1SA51B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA51BY  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SA51BZ  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED"
                       999 "INAPP" ;
label define C1SA51C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA51CY  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SA51CZ  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED"
                       999 "INAPP" ;
label define C1SA51D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA51DY  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SA51DZ  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED"
                       999 "INAPP" ;
label define C1SA51E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA51EY  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SA51EZ  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED"
                       999 "INAPP" ;
label define C1SA51F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA51FY  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SA51FZ  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED"
                       999 "INAPP" ;
label define C1SA51G   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA51GY  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SA51GZ  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED"
                       999 "INAPP" ;
label define C1SA51H   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA51HY  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SA51HZ  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED"
                       999 "INAPP" ;
label define C1SA51I   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA51IY  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SA51IZ  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED"
                       999 "INAPP" ;
label define C1SA51J   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA51JY  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SA51JZ  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED"
                       999 "INAPP" ;
label define C1SA51K   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA51KY  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SA51KZ  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED"
                       999 "INAPP" ;
label define C1SA52A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "OFTEN" 3 "SOMETIMES" 4 "RARELY" 5 "NEVER"
                       8 "REFUSED" ;
label define C1SA52B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "OFTEN" 3 "SOMETIMES" 4 "RARELY" 5 "NEVER"
                       8 "REFUSED" ;
label define C1SA52C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "OFTEN" 3 "SOMETIMES" 4 "RARELY" 5 "NEVER"
                       8 "REFUSED" ;
label define C1SA52D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "OFTEN" 3 "SOMETIMES" 4 "RARELY" 5 "NEVER"
                       8 "REFUSED" ;
label define C1SA52E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "OFTEN" 3 "SOMETIMES" 4 "RARELY" 5 "NEVER"
                       8 "REFUSED" ;
label define C1SA52F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "OFTEN" 3 "SOMETIMES" 4 "RARELY" 5 "NEVER"
                       8 "REFUSED" ;
label define C1SA52G   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "OFTEN" 3 "SOMETIMES" 4 "RARELY" 5 "NEVER"
                       8 "REFUSED" ;
label define C1SA52H   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "OFTEN" 3 "SOMETIMES" 4 "RARELY" 5 "NEVER"
                       8 "REFUSED" ;
label define C1SA52I   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "OFTEN" 3 "SOMETIMES" 4 "RARELY" 5 "NEVER"
                       8 "REFUSED" ;
label define C1SA52J   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "OFTEN" 3 "SOMETIMES" 4 "RARELY" 5 "NEVER"
                       8 "REFUSED" ;
label define C1SA52K   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "OFTEN" 3 "SOMETIMES" 4 "RARELY" 5 "NEVER"
                       8 "REFUSED" ;
label define C1SA52L   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "OFTEN" 3 "SOMETIMES" 4 "RARELY" 5 "NEVER"
                       8 "REFUSED" ;
label define C1SA52M   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "OFTEN" 3 "SOMETIMES" 4 "RARELY" 5 "NEVER"
                       8 "REFUSED" ;
label define C1SA52N   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "OFTEN" 3 "SOMETIMES" 4 "RARELY" 5 "NEVER"
                       8 "REFUSED" ;
label define C1SA52O   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "OFTEN" 3 "SOMETIMES" 4 "RARELY" 5 "NEVER"
                       8 "REFUSED" ;
label define C1SA52P   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "OFTEN" 3 "SOMETIMES" 4 "RARELY" 5 "NEVER"
                       8 "REFUSED" ;
label define C1SA52Q   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "OFTEN" 3 "SOMETIMES" 4 "RARELY" 5 "NEVER"
                       8 "REFUSED" ;
label define C1SA52R   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "OFTEN" 3 "SOMETIMES" 4 "RARELY" 5 "NEVER"
                       8 "REFUSED" ;
label define C1SA52S   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "OFTEN" 3 "SOMETIMES" 4 "RARELY" 5 "NEVER"
                       8 "REFUSED" ;
label define C1SA53A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED" ;
label define C1SA53B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED" ;
label define C1SA54A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED" ;
label define C1SA54B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED" ;
label define C1SA55A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED" ;
label define C1SA55B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED" ;
label define C1SA56    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED" ;
label define C1SA57A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "NEVER"
                       2 "RARELY" 3 "SOMETIMES" 4 "OFTEN" 5 "ALMOST ALWAYS"
                       8 "REFUSED" ;
label define C1SA57B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "NEVER"
                       2 "RARELY" 3 "SOMETIMES" 4 "OFTEN" 5 "ALMOST ALWAYS"
                       8 "REFUSED" ;
label define C1SA57C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "NEVER"
                       2 "RARELY" 3 "SOMETIMES" 4 "OFTEN" 5 "ALMOST ALWAYS"
                       8 "REFUSED" ;
label define C1SA57D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "NEVER"
                       2 "RARELY" 3 "SOMETIMES" 4 "OFTEN" 5 "ALMOST ALWAYS"
                       8 "REFUSED" ;
label define C1SA58A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA58B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA58C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA58D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA58E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA58F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA58G   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA58H   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA58I   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA58J   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA59    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA60    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "NEVER"
                       2 "ONCE OR TWICE" 3 "3 TO 5 TIMES" 4 "6 TO 10 TIMES"
                       5 "11 TO 20 TIMES" 6 "MORE THAN 20 TIMES" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SA61    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "NEVER"
                       2 "ONCE OR TWICE" 3 "3 TO 5 TIMES" 4 "6 TO 10 TIMES"
                       5 "11 TO 20 TIMES" 6 "MORE THAN 20 TIMES" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SA62A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SA62B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SA62C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SA62D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SA62E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SA63    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SA64A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SA64B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SA64C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SA64D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SA64E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SALCOH  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       0 "NO ALCOHOL PROBLEM" 1 "ALCOHOL PROBLEM"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SA65    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "NEVER"
                       2 "ONCE OR TWICE" 3 "3 TO 5 TIMES" 4 "6 TO 10 TIMES"
                       5 "11 TO 20 TIMES" 6 "MORE THAN 20 TIMES" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SA66    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "NEVER"
                       2 "ONCE OR TWICE" 3 "3 TO 5 TIMES" 4 "6 TO 10 TIMES"
                       5 "11 TO 20 TIMES" 6 "MORE THAN 20 TIMES" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SB1     -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "YES, ALL OF THE YEAR" 2 "YES, PART OF THE YEAR"
                       3 "NO" 8 "REFUSED" 9 "INAPP" ;
label define C1SB2A    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SB2B    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SB2C    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SB2D    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SB2E    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SB3     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 9998 "REFUSED"
                       9999 "INAPP" ;
label define C1SB4     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SB5A    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SB5B    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SB5C    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 9998 "REFUSED"
                       9999 "INAPP" ;
label define C1SB6     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1SB7     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "LIGHTER"
                       2 "HEAVIER" 3 "ABOUT THE SAME" 8 "REFUSED" 9 "INAPP" ;
label define C1SB8A1   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "MED NAME AND DOSAGE SPECIFIED"
                       2 "MED NAME AND DOSAGE UNSPECIFIED" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SB8A2   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SB8A3   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SB8A4   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED"
                       999 "INAPP" ;
label define C1SB8B1   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "MED NAME AND DOSAGE SPECIFIED"
                       2 "MED NAME AND DOSAGE UNSPECIFIED" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SB8B2   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SB8B3   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SB8B4   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED"
                       999 "INAPP" ;
label define C1SB8C1   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "MED NAME AND DOSAGE SPECIFIED"
                       2 "MED NAME AND DOSAGE UNSPECIFIED" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SB8C2   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SB8C3   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SB8C4   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED"
                       999 "INAPP" ;
label define C1SB9     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SB10    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "SPECIALTY OF DR GIVEN" 8 "REFUSED" 9 "INAPP" ;
label define C1SB11    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "MALE"
                       2 "FEMALE" 8 "REFUSED" 9 "INAPP" ;
label define C1SB12A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SB12B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SB12C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SB12D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SB12E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SB12F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SB12G   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SB13A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SB13B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 9998 "REFUSED"
                       9999 "INAPP" ;
label define C1SB14    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SB15A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SB15B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 9998 "REFUSED"
                       9999 "INAPP" ;
label define C1SB16A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SB16B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SB16C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SB16D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SB17    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SB18    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SB19    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SB20A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SB20B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SB20C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SB20D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SB20E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SB20F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SB20G   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SB21    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "GREAT RELIEF" 2 "SOME RELIEF"
                       3 "MIXED FEELINGS - BOTH RELIEF AND REGRET"
                       4 "SOME REGRET" 5 "GREAT REGRET"
                       6 "NO PARTICULAR FEELING ONE WAY OR THE OTHER"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SB22A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SB22B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SB22C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SC1     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SC2A    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SC2B    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SC2C    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SC2D    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SC2E    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SC2F    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SC2G    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SC2H    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SC2I    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SC2J    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SC2K    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SC2L    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SC2M    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SC3A    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1SC3B    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1SC3C    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1SC3D    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1SC3E    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1SC3F    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1SC3G    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1SC3H    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1SC4     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       7 "DON'T KNOW" 8 "REFUSED" ;
label define C1SC5     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       7 "DON'T KNOW" 8 "REFUSED" ;
label define C1SC6     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       7 "DON'T KNOW" 8 "REFUSED" ;
label define C1SC7A    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       7 "DON'T KNOW" 8 "REFUSED" ;
label define C1SC7B    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       7 "DON'T KNOW" 8 "REFUSED" ;
label define C1SC7C    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       7 "DON'T KNOW" 8 "REFUSED" ;
label define C1SC7D    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       7 "DON'T KNOW" 8 "REFUSED" ;
label define C1SC8A    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "ELIGIBLE"
                       2 "NOT ELIGIBLE" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1SC8B    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "ELIGIBLE"
                       2 "NOT ELIGIBLE" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1SC8C    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "ELIGIBLE"
                       2 "NOT ELIGIBLE" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1SC9     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SC10A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1SC10B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1SC10C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1SC10D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1SC10E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1SC10F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1SC10G   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1SC10H   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1SC11    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1SC12    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1SC13    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define C1SD1     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       7 "DON'T KNOW" 8 "REFUSED" ;
label define C1SD2     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED"
                       999 "INAPP" ;
label define C1SD2A    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "EXCELLENT"
                       2 "VERY GOOD" 3 "GOOD" 4 "FAIR" 5 "POOR" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SD3     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 9998 "REFUSED"
                       9999 "INAPP" ;
label define C1SD3A    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED"
                       999 "INAPP" ;
label define C1SD4     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       7 "DON'T KNOW" 8 "REFUSED" ;
label define C1SD5     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED"
                       999 "INAPP" ;
label define C1SD5A    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "EXCELLENT"
                       2 "VERY GOOD" 3 "GOOD" 4 "FAIR" 5 "POOR" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SD6     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 9998 "REFUSED"
                       9999 "INAPP" ;
label define C1SD6A    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED"
                       999 "INAPP" ;
label define C1SE1A    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1B    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1C    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1D    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1E    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1F    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1G    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1H    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1I    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1J    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1K    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1L    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1M    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1N    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1O    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1P    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1Q    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1R    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1S    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1T    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1U    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1V    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1W    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1X    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1Y    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1Z    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1AA   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1BB   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1CC   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1DD   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1EE   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1FF   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1GG   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1HH   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1II   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1JJ   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1KK   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1LL   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1MM   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1NN   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1OO   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1PP   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE1QQ   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SPWBA1  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SPWBE1  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SPWBG1  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SPWBR1  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SPWBU1  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SPWBS1  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SPWBA2  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SPWBE2  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SPWBG2  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SPWBR2  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SPWBU2  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SPWBS2  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SE2A    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE2B    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE2C    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE2D    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE2E    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE2F    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE2G    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE2H    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE2I    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE2J    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE2K    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE2L    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE2M    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE2N    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE2O    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE2P    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE2Q    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE3     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "TOP RUNG"
                       10 "BOTTOM RUNG" 98 "REFUSED" ;
label define C1SE4A    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE4B    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE4C    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE4D    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE4E    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE4F    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE4G    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE4H    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE4I    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE4J    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE4K    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE4L    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SMASTE  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SCONST  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SCTRL   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SE4M    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE4N    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE4O    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE4P    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE4Q    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE4R    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE4S    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SESTEE  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SE4T    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE4U    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE4V    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE4W    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE4X    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE4Y    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SINTER  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SINDEP  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SE5A    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "MORE LIKE A A LOT" 2 "MORE LIKE A SOME"
                       3 "MORE LIKE A A LITTLE" 4 "MORE LIKE B A LITTLE"
                       5 "MORE LIKE B SOME" 6 "MORE LIKE B A LOT" 8 "REFUSED" ;
label define C1SE5B    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "MORE LIKE A A LOT" 2 "MORE LIKE A SOME"
                       3 "MORE LIKE A A LITTLE" 4 "MORE LIKE B A LITTLE"
                       5 "MORE LIKE B SOME" 6 "MORE LIKE B A LOT" 8 "REFUSED" ;
label define C1SE5C    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "MORE LIKE A A LOT" 2 "MORE LIKE A SOME"
                       3 "MORE LIKE A A LITTLE" 4 "MORE LIKE B A LITTLE"
                       5 "MORE LIKE B SOME" 6 "MORE LIKE B A LOT" 8 "REFUSED" ;
label define C1SE5D    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "MORE LIKE A A LOT" 2 "MORE LIKE A SOME"
                       3 "MORE LIKE A A LITTLE" 4 "MORE LIKE B A LITTLE"
                       5 "MORE LIKE B SOME" 6 "MORE LIKE B A LOT" 8 "REFUSED" ;
label define C1SE5E    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "MORE LIKE A A LOT" 2 "MORE LIKE A SOME"
                       3 "MORE LIKE A A LITTLE" 4 "MORE LIKE B A LITTLE"
                       5 "MORE LIKE B SOME" 6 "MORE LIKE B A LOT" 8 "REFUSED" ;
label define C1SE6A    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE6B    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE6C    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE6D    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE6E    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE6F    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE6G    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE6H    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE6I    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE6J    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE6K    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE6L    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE6M    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE6N    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE6O    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE6P    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE6Q    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE6R    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE6S    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE6T    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE6U    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE6V    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE6W    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE6X    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE6Y    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE6Z    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE6AA   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE6BB   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE6CC   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE6DD   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE6EE   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SAGENC  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SAGREE  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SEXTRA  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SNEURO  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SCONS1  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SCONS2  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SOPEN   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SE7A    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "TRUE OF YOU"
                       2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE" 4 "FALSE"
                       8 "REFUSED" ;
label define C1SE7B    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "TRUE OF YOU"
                       2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE" 4 "FALSE"
                       8 "REFUSED" ;
label define C1SE7C    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "TRUE OF YOU"
                       2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE" 4 "FALSE"
                       8 "REFUSED" ;
label define C1SE7D    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "TRUE OF YOU"
                       2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE" 4 "FALSE"
                       8 "REFUSED" ;
label define C1SE7E    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "TRUE OF YOU"
                       2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE" 4 "FALSE"
                       8 "REFUSED" ;
label define C1SE7F    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "TRUE OF YOU"
                       2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE" 4 "FALSE"
                       8 "REFUSED" ;
label define C1SE7G    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "TRUE OF YOU"
                       2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE" 4 "FALSE"
                       8 "REFUSED" ;
label define C1SE7H    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "TRUE OF YOU"
                       2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE" 4 "FALSE"
                       8 "REFUSED" ;
label define C1SE7I    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "TRUE OF YOU"
                       2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE" 4 "FALSE"
                       8 "REFUSED" ;
label define C1SE7J    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "TRUE OF YOU"
                       2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE" 4 "FALSE"
                       8 "REFUSED" ;
label define C1SE7K    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "TRUE OF YOU"
                       2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE" 4 "FALSE"
                       8 "REFUSED" ;
label define C1SE7L    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "TRUE OF YOU"
                       2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE" 4 "FALSE"
                       8 "REFUSED" ;
label define C1SE7M    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "TRUE OF YOU"
                       2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE" 4 "FALSE"
                       8 "REFUSED" ;
label define C1SE7N    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "TRUE OF YOU"
                       2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE" 4 "FALSE"
                       8 "REFUSED" ;
label define C1SE7O    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "TRUE OF YOU"
                       2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE" 4 "FALSE"
                       8 "REFUSED" ;
label define C1SE7P    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "TRUE OF YOU"
                       2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE" 4 "FALSE"
                       8 "REFUSED" ;
label define C1SE7Q    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "TRUE OF YOU"
                       2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE" 4 "FALSE"
                       8 "REFUSED" ;
label define C1SE7R    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "TRUE OF YOU"
                       2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE" 4 "FALSE"
                       8 "REFUSED" ;
label define C1SE7S    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "TRUE OF YOU"
                       2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE" 4 "FALSE"
                       8 "REFUSED" ;
label define C1SE7T    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "TRUE OF YOU"
                       2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE" 4 "FALSE"
                       8 "REFUSED" ;
label define C1SE7U    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "TRUE OF YOU"
                       2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE" 4 "FALSE"
                       8 "REFUSED" ;
label define C1SE7V    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "TRUE OF YOU"
                       2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE" 4 "FALSE"
                       8 "REFUSED" ;
label define C1SE7W    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "TRUE OF YOU"
                       2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE" 4 "FALSE"
                       8 "REFUSED" ;
label define C1SE7X    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "TRUE OF YOU"
                       2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE" 4 "FALSE"
                       8 "REFUSED" ;
label define C1SE7Y    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "TRUE OF YOU"
                       2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE" 4 "FALSE"
                       8 "REFUSED" ;
label define C1SE7Z    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "TRUE OF YOU"
                       2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE" 4 "FALSE"
                       8 "REFUSED" ;
label define C1SE7AA   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "TRUE OF YOU"
                       2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE" 4 "FALSE"
                       8 "REFUSED" ;
label define C1SE7BB   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "TRUE OF YOU"
                       2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE" 4 "FALSE"
                       8 "REFUSED" ;
label define C1SE7CC   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "TRUE OF YOU"
                       2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE" 4 "FALSE"
                       8 "REFUSED" ;
label define C1SE7DD   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "TRUE OF YOU"
                       2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE" 4 "FALSE"
                       8 "REFUSED" ;
label define C1SE7EE   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "TRUE OF YOU"
                       2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE" 4 "FALSE"
                       8 "REFUSED" ;
label define C1SE7FF   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "TRUE OF YOU"
                       2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE" 4 "FALSE"
                       8 "REFUSED" ;
label define C1SE7GG   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "TRUE OF YOU"
                       2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE" 4 "FALSE"
                       8 "REFUSED" ;
label define C1SE8     -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "SITUATION 1: RIDING A LONG STRETCH OF RAPIDS IN A CANOE"
                       2 "SITUATION 2: WAITING FOR SOMEONE WHO'S LATE"
                       8 "REFUSED" ;
label define C1SE8A    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "I WOULD DEFINITELY DISLIKE IT"
                       2 "I WOULD DISLIKE IT SOMEWHAT" 8 "REFUSED" ;
label define C1SE9     -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "SITUATION 1: AT THE CIRCUS WHEN TWO LIONS SUDDENLY GET LOOSE"
                       2 "SITUATION 2: WHOLE FAMILY TO THE CIRCUS & NOT BEING ABLE TO GET IN"
                       8 "REFUSED" ;
label define C1SE9A    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "I WOULD DEFINITELY DISLIKE IT"
                       2 "I WOULD DISLIKE IT SOMEWHAT" 8 "REFUSED" ;
label define C1SMPQWB  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SMPQSP  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SMPQAC  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SMPQSC  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SMPQSR  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SMPQAG  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SMPQAL  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SMPQCN  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SMPQTR  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SMPQHA  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SE10A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "AGREE A LOT"
                       2 "AGREE A LITTLE" 3 "NEITHER AGREE NOR DISAGREE"
                       4 "DISAGREE A LITTLE" 5 "DISAGREE A LOT" 8 "REFUSED" ;
label define C1SE10B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "AGREE A LOT"
                       2 "AGREE A LITTLE" 3 "NEITHER AGREE NOR DISAGREE"
                       4 "DISAGREE A LITTLE" 5 "DISAGREE A LOT" 8 "REFUSED" ;
label define C1SE10C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "AGREE A LOT"
                       2 "AGREE A LITTLE" 3 "NEITHER AGREE NOR DISAGREE"
                       4 "DISAGREE A LITTLE" 5 "DISAGREE A LOT" 8 "REFUSED" ;
label define C1SE10D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "AGREE A LOT"
                       2 "AGREE A LITTLE" 3 "NEITHER AGREE NOR DISAGREE"
                       4 "DISAGREE A LITTLE" 5 "DISAGREE A LOT" 8 "REFUSED" ;
label define C1SE10E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "AGREE A LOT"
                       2 "AGREE A LITTLE" 3 "NEITHER AGREE NOR DISAGREE"
                       4 "DISAGREE A LITTLE" 5 "DISAGREE A LOT" 8 "REFUSED" ;
label define C1SE10F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "AGREE A LOT"
                       2 "AGREE A LITTLE" 3 "NEITHER AGREE NOR DISAGREE"
                       4 "DISAGREE A LITTLE" 5 "DISAGREE A LOT" 8 "REFUSED" ;
label define C1SOPTIM  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SPESSI  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SORIEN  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SE11A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE11A1  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGE RECORDED" 2 "AGE RANGE RECORDED" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE11A3  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE11A4  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE11A11 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE11A12 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE11AR1 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE11AR2 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE11B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE11B1  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGE RECORDED" 2 "AGE RANGE RECORDED" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE11B3  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE11B4  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE11B11 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE11B12 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE11B13 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE11BR1 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE11BR2 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE11C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE11C1  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGE RECORDED" 2 "AGE RANGE RECORDED" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE11C3  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE11C4  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE11C11 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE11C12 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE11C13 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE11CR1 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE11CR2 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE11D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE11D1  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGE RECORDED" 2 "AGE RANGE RECORDED" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE11D3  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE11D4  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE11D11 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE11D12 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE11D13 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE11D14 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE11D15 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE11D16 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE11DR1 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE11DR2 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE11E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE11E1  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGE RECORDED" 2 "AGE RANGE RECORDED" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE11E3  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE11E4  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE11ER1 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE11ER2 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE11F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE11F1  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGE RECORDED" 2 "AGE RANGE RECORDED" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE11F3  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE11F4  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE11F11 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE11F12 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE11FR1 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE11FR2 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE11G   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE11G1  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGE RECORDED" 2 "AGE RANGE RECORDED" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE11G3  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE11G4  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE11G11 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE11G12 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE11G13 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE11G14 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE11GR1 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE11GR2 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE12A1  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGE RECORDED" 2 "AGE RANGE RECORDED" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12A3  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12A4  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12A11 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12A12 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12AR1 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12AR2 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE12B1  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGE RECORDED" 2 "AGE RANGE RECORDED" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12B3  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12B4  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12B11 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12B12 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12B13 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12B14 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12B15 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12B16 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12BR1 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12BR2 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE12C1  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGE RECORDED" 2 "AGE RANGE RECORDED" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12C3  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12C4  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12C11 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12C12 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12C13 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12C14 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12C15 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12CR1 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12CR2 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE12D1  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGE RECORDED" 2 "AGE RANGE RECORDED" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12D3  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12D4  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12D11 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12D12 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12D13 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12DR1 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12DR2 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE12E1  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGE RECORDED" 2 "AGE RANGE RECORDED" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12E3  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12E4  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12E11 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12E12 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12E13 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12E14 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12ER1 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12ER2 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE12F1  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGE RECORDED" 2 "AGE RANGE RECORDED" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12F3  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12F4  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12F11 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12F12 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12F13 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12F14 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12FR1 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12FR2 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12G   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE12G1  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGE RECORDED" 2 "AGE RANGE RECORDED" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12G3  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12G4  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12G11 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12G12 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12GR1 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12GR2 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12H   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE12H1  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGE RECORDED" 2 "AGE RANGE RECORDED" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12H3  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12H4  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12H11 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12H12 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12H13 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12H14 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12H15 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12H16 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12HR1 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12HR2 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12I   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE12I1  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGE RECORDED" 2 "AGE RANGE RECORDED" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12I3  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12I4  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12I11 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12I12 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12I13 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12I14 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12I15 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12J   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE12J1  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGE RECORDED" 2 "AGE RANGE RECORDED" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12J3  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12J4  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12J11 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12J12 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12J13 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12J14 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12J15 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12JR1 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12JR2 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12K   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE12K1  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGE RECORDED" 2 "AGE RANGE RECORDED" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12K3  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12K4  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12K11 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12K12 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12L   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE12L1  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGE RECORDED" 2 "AGE RANGE RECORDED" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12L3  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12L4  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12L11 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12L12 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12L13 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12L14 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12L15 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12L16 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12LR1 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12LR2 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12M   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE12M1  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGE RECORDED" 2 "AGE RANGE RECORDED" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12M3  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12M4  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12M11 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12M12 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12M13 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12M14 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12M15 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12MR1 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12MR2 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12N   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE12N1  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGE RECORDED" 2 "AGE RANGE RECORDED" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12N3  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12N4  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12N11 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12N12 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12NR1 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12NR2 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12O   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE12O1  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGE RECORDED" 2 "AGE RANGE RECORDED" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12O3  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12O4  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12O11 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12O12 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12O13 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12O14 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12OR1 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12OR2 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12P   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE12P1  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGE RECORDED" 2 "AGE RANGE RECORDED" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12P3  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12P4  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12P11 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12P12 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12P13 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12PR1 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12PR2 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12Q   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE12Q1  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGE RECORDED" 2 "AGE RANGE RECORDED" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12Q3  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12Q4  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12Q11 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12Q12 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12Q13 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12Q14 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12QR1 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12QR2 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12R   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE12R1  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGE RECORDED" 2 "AGE RANGE RECORDED" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12R3  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12R4  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12R11 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12R12 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12RR1 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12RR2 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12S   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE12S1  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGE RECORDED" 2 "AGE RANGE RECORDED" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12S3  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12S4  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12S11 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12S12 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12SR1 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12SR2 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12T   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SE12T1  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGE RECORDED" 2 "AGE RANGE RECORDED" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12T3  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12T4  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY NEGATIVELY" 2 "NEGATIVELY" 3 "NOT AT ALL"
                       4 "POSITIVELY" 5 "VERY POSITIVELY" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SE12T11 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12T12 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12T13 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12T14 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12T15 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12T16 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12TR1 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE12TR2 -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SE13A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE13B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE13C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE13D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE13E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE13F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE13G   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE13H   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE13I   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE13J   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SE13K   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SMAR    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SFAM    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SE14A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE14B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE14C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE14D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE14E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE14F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE14G   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE14H   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE14I   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE14J   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE14K   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE14L   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE14M   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE14N   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE14O   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE14P   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE14Q   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE14R   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE14S   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE14T   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE14U   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE14V   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE14W   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE14X   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE14Y   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE14Z   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE14AA  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE14BB  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE14CC  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE14DD  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE14EE  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE14FF  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE14GG  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE14HH  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE14II  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE14JJ  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE14KK  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE14LL  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SE14MM  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SPERSI  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SREAPP  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SCHANG  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SSPCTR  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SCPCTR  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SSSCTR  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SCSCDE  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SCSCSP  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SCSCAG  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SDIREC  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1STODAY  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SINSGH  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SFORSG  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 8 "Refusal" ;
label define C1SSUFFI  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SE15A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" ;
label define C1SE15B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" ;
label define C1SE15C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" ;
label define C1SE15D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" ;
label define C1SE15E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" ;
label define C1SE15F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" ;
label define C1SE15G   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" ;
label define C1SE15H   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" ;
label define C1SE15I   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" ;
label define C1SE15J   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" ;
label define C1SE15K   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" ;
label define C1SE15L   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" ;
label define C1SE15M   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" ;
label define C1SE15N   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" ;
label define C1SE15O   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" ;
label define C1SE15P   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" ;
label define C1SE15Q   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" ;
label define C1SE15R   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" ;
label define C1SE15S   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" ;
label define C1SE15T   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" ;
label define C1SE15U   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" ;
label define C1SE15V   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" ;
label define C1SE15W   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" ;
label define C1SE15X   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" ;
label define C1SE15Y   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" ;
label define C1SE15Z   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" ;
label define C1SREINT  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SACTIV  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SPLAN   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SVENT   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SDENIA  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SDISEN  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SFDCOP  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SPRCOP  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SEMCOP  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SE16    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SE17    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SE18    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SE19    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SE20    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SE21    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SF1     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "WORST"
                       10 "BEST" 98 "REFUSED" ;
label define C1SF2     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "WORST"
                       10 "BEST" 98 "REFUSED" ;
label define C1SF3     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "WORST"
                       10 "BEST" 98 "REFUSED" ;
label define C1SF4     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "WORST"
                       10 "BEST" 98 "REFUSED" ;
label define C1SF5     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "NONE"
                       10 "VERY MUCH" 98 "REFUSED" ;
label define C1SF6     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "NONE"
                       10 "VERY MUCH" 98 "REFUSED" ;
label define C1SF7     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SF8     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED"
                       999 "INAPP" ;
label define C1SF9     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED"
                       999 "INAPP" ;
label define C1SF10    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED"
                       999 "INAPP" ;
label define C1SF11    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SF12A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED"
                       999 "INAPP" ;
label define C1SF12B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "WEEKS"
                       2 "MONTHS" 3 "YEARS" 8 "REFUSED" 9 "INAPP" ;
label define C1SF13A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SF13B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 9998 "REFUSED"
                       9999 "INAPP" ;
label define C1SF14    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "COULD NOT FIND A JOB"
                       2 "PHYSICAL INJURY OR ILLNESS"
                       3 "MENTAL OR EMOTIONAL PROBLEMS"
                       4 "ALCOHOL OR SUBSTANCE ABUSE PROBLEMS"
                       5 "FAMILY RESPONSIBILITIES--CARING CHILDREN,SPOUSE,PARENTS"
                       6 "ATTENDED SCHOOL PART-TIME OR FULL-TIME"
                       7 "CHOSE NOT TO WORK TO PURSUE PERSONAL INTERESTS"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SF15    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SF16A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SF16B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SF16C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SF16D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SF16E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SF16F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SF16G   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SF16H   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SF16I   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SF16J   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SF17A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "WORKED FULL-TIME" 2 "WORKED PART-TIME"
                       3 "NO WORK OR LESS THAN 6 MONTHS" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF17B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "WORKED FULL-TIME" 2 "WORKED PART-TIME"
                       3 "NO WORK OR LESS THAN 6 MONTHS" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF17C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "WORKED FULL-TIME" 2 "WORKED PART-TIME"
                       3 "NO WORK OR LESS THAN 6 MONTHS" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF17D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "WORKED FULL-TIME" 2 "WORKED PART-TIME"
                       3 "NO WORK OR LESS THAN 6 MONTHS" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF17E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "WORKED FULL-TIME" 2 "WORKED PART-TIME"
                       3 "NO WORK OR LESS THAN 6 MONTHS" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF17F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "WORKED FULL-TIME" 2 "WORKED PART-TIME"
                       3 "NO WORK OR LESS THAN 6 MONTHS" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF17G   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "WORKED FULL-TIME" 2 "WORKED PART-TIME"
                       3 "NO WORK OR LESS THAN 6 MONTHS" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF17H   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "WORKED FULL-TIME" 2 "WORKED PART-TIME"
                       3 "NO WORK OR LESS THAN 6 MONTHS" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF17I   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "WORKED FULL-TIME" 2 "WORKED PART-TIME"
                       3 "NO WORK OR LESS THAN 6 MONTHS" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF17J   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "WORKED FULL-TIME" 2 "WORKED PART-TIME"
                       3 "NO WORK OR LESS THAN 6 MONTHS" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF18    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SF19A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "LITTLE OF THE TIME" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SF19B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "LITTLE OF THE TIME" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SF19C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "LITTLE OF THE TIME" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SF19D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "LITTLE OF THE TIME" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SF19E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "LITTLE OF THE TIME" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SF19F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "LITTLE OF THE TIME" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SF19G   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "LITTLE OF THE TIME" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SF19H   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "LITTLE OF THE TIME" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SF19I   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "LITTLE OF THE TIME" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SF19J   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "LITTLE OF THE TIME" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SF19K   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "LITTLE OF THE TIME" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SF19L   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "LITTLE OF THE TIME" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SF19M   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "LITTLE OF THE TIME" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SF19N   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "LITTLE OF THE TIME" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SF20    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF21    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SF22    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED"
                       999 "INAPP" ;
label define C1SF23    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY SERIOUS" 2 "MODERATELY SERIOUS"
                       3 "SOMEWHAT SERIOUS" 4 "A LITTLE SERIOUS"
                       5 "NOT VERY SERIOUS AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define C1SF24    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SF25A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SF25B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 9998 "REFUSED"
                       9999 "INAPP" ;
label define C1SF26    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "OVERQUALIFIED" 2 "UNDERQUALIFIED" 3 "JUST RIGHT"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SF27A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "4 OR MORE TIMES/WEEK" 2 "2 TO 3 TIMES/WEEK"
                       3 "ONCE A WEEK" 4 "1 TO 3 TIMES/MONTH"
                       5 "LESS THAN ONCE A MONTH OR NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF27B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "4 OR MORE TIMES/WEEK" 2 "2 TO 3 TIMES/WEEK"
                       3 "ONCE A WEEK" 4 "1 TO 3 TIMES/MONTH"
                       5 "LESS THAN ONCE A MONTH OR NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF27C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "4 OR MORE TIMES/WEEK" 2 "2 TO 3 TIMES/WEEK"
                       3 "ONCE A WEEK" 4 "1 TO 3 TIMES/MONTH"
                       5 "LESS THAN ONCE A MONTH OR NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF27D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "4 OR MORE TIMES/WEEK" 2 "2 TO 3 TIMES/WEEK"
                       3 "ONCE A WEEK" 4 "1 TO 3 TIMES/MONTH"
                       5 "LESS THAN ONCE A MONTH OR NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF28A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SF28B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SF28C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "AM" 2 "PM"
                       3 "MIDNIGHT" 4 "NOON" 8 "REFUSED" 9 "INAPP" ;
label define C1SF29A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SF29B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SF29C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "AM" 2 "PM"
                       3 "MIDNIGHT" 4 "NOON" 8 "REFUSED" 9 "INAPP" ;
label define C1SF30A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SF30B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SF31    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SF32    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SF33    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "EXCELLENT"
                       2 "VERY GOOD" 3 "GOOD" 4 "FAIR" 5 "POOR" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF34    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY POSITIVE" 2 "SOMEWHAT POSITIVE"
                       3 "NEITHER POSITIVE NOR NEGATIVE/BALANCES OUT"
                       4 "SOMEWHAT NEGATIVE" 5 "VERY NEGATIVE" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF35    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY POSITIVE" 2 "SOMEWHAT POSITIVE"
                       3 "NEITHER POSITIVE NOR NEGATIVE/BALANCES OUT"
                       4 "SOMEWHAT NEGATIVE" 5 "VERY NEGATIVE" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF36A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF36B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF36C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF36D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF36E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF36F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF36G   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF36H   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF36I   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF36J   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF36K   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SJCSD   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)"
                       99 "NOT CALCULATED (Due to Does not apply)" ;
label define C1SJCDA   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)"
                       99 "NOT CALCULATED (Due to Does not apply)" ;
label define C1SJCDS   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)"
                       99 "NOT CALCULATED (Due to Does not apply)" ;
label define C1SF37A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER"
                       6 "DOES NOT APPLY" 8 "REFUSED" 9 "INAPP" ;
label define C1SF37B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER"
                       6 "DOES NOT APPLY" 8 "REFUSED" 9 "INAPP" ;
label define C1SF37C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER"
                       6 "DOES NOT APPLY" 8 "REFUSED" 9 "INAPP" ;
label define C1SF37D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER"
                       6 "DOES NOT APPLY" 8 "REFUSED" 9 "INAPP" ;
label define C1SF37E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER"
                       6 "DOES NOT APPLY" 8 "REFUSED" 9 "INAPP" ;
label define C1SJCCS   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)"
                       99 "NOT CALCULATED (Due to Does not apply)" ;
label define C1SJCSS   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)"
                       99 "NOT CALCULATED (Due to Does not apply)" ;
label define C1SF38A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ONCE A WEEK OR MORE" 2 "A FEW TIMES A MONTH"
                       3 "A FEW TIMES A YEAR" 4 "LESS THAN ONCE A YEAR"
                       5 "NEVER" 8 "REFUSED" 9 "INAPP" ;
label define C1SF38B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ONCE A WEEK OR MORE" 2 "A FEW TIMES A MONTH"
                       3 "A FEW TIMES A YEAR" 4 "LESS THAN ONCE A YEAR"
                       5 "NEVER" 8 "REFUSED" 9 "INAPP" ;
label define C1SF38C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ONCE A WEEK OR MORE" 2 "A FEW TIMES A MONTH"
                       3 "A FEW TIMES A YEAR" 4 "LESS THAN ONCE A YEAR"
                       5 "NEVER" 8 "REFUSED" 9 "INAPP" ;
label define C1SF38D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ONCE A WEEK OR MORE" 2 "A FEW TIMES A MONTH"
                       3 "A FEW TIMES A YEAR" 4 "LESS THAN ONCE A YEAR"
                       5 "NEVER" 8 "REFUSED" 9 "INAPP" ;
label define C1SF38E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ONCE A WEEK OR MORE" 2 "A FEW TIMES A MONTH"
                       3 "A FEW TIMES A YEAR" 4 "LESS THAN ONCE A YEAR"
                       5 "NEVER" 8 "REFUSED" 9 "INAPP" ;
label define C1SF38F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ONCE A WEEK OR MORE" 2 "A FEW TIMES A MONTH"
                       3 "A FEW TIMES A YEAR" 4 "LESS THAN ONCE A YEAR"
                       5 "NEVER" 8 "REFUSED" 9 "INAPP" ;
label define C1SJOBDI  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)"
                       99 "NOT CALCULATED (Due to Does not apply)" ;
label define C1SF39A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF39B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF39C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF39D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF39E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF39F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SPIWOR  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)"
                       9 "NOT CALCULATED (Due to Does not apply)" ;
label define C1SF40A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF40B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF40C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF40D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF40E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF40F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF40G   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF40H   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF40I   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF40J   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF40K   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF40L   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF40M   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF40N   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF40O   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF40P   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SPOSWF  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)"
                       99 "NOT CALCULATED (Due to Does not apply)" ;
label define C1SNEGWF  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)"
                       99 "NOT CALCULATED (Due to Does not apply)" ;
label define C1SPOSFW  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)"
                       99 "NOT CALCULATED (Due to Does not apply)" ;
label define C1SNEGFW  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)"
                       99 "NOT CALCULATED (Due to Does not apply)" ;
label define C1SF41A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SF41B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SF41C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SF41D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SF42A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF42B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF42C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF42D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SF43A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED" ;
label define C1SF43B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED" ;
label define C1SF43C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED" ;
label define C1SF43D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED" ;
label define C1SF44A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SF44B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SF44C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SF45A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       5 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SF45B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       5 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SF45C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       5 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SG1     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "WORST"
                       10 "BEST" 98 "REFUSED" ;
label define C1SG2     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "WORST"
                       10 "BEST" 98 "REFUSED" ;
label define C1SG3     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "WORST"
                       10 "BEST" 98 "REFUSED" ;
label define C1SG4     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "WORST"
                       10 "BEST" 98 "REFUSED" ;
label define C1SG5     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "NONE"
                       10 "VERY MUCH" 98 "REFUSED" ;
label define C1SG6     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "NONE"
                       10 "VERY MUCH" 98 "REFUSED" ;
label define C1SG7     -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "MORE MONEY THAN YOU NEED" 2 "JUST ENOUGH MONEY"
                       3 "NOT ENOUGH MONEY" 8 "REFUSED" ;
label define C1SG8     -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "THE RECESSION HAS BEEN A HARDSHIP AND CAUSED MAJOR CHANGES"
                       2 "THE RECESSION HAS BEEN DIFFICULT BUT NOT CAUSED ANY MAJOR CHANGES"
                       3 "THE RECESSION HAS NOT HAD MUCH EFFECT ONE WAY OR THE OTHER"
                       4 "OVERALL, THE RECESSION HAS BEEN GOOD FOR ME; I AM BETTER OFF NOW"
                       8 "REFUSED" ;
label define C1SG9     -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY DIFFICULT" 2 "SOMEWHAT DIFFICULT"
                       3 "NOT VERY DIFFICULT" 4 "NOT AT ALL DIFFICULT"
                       8 "REFUSED" ;
label define C1SG10    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "MUCH MORE DIFFICULT NOW"
                       2 "SOMEWHAT MORE DIFFICULT NOW"
                       3 "A LITTLE MORE DIFFICULT NOW" 4 "ABOUT THE SAME"
                       5 "A LITTLE LESS DIFFICULT NOW"
                       6 "SOMEWHAT LESS DIFFICULT NOW"
                       7 "MUCH LESS DIFFICULT NOW" 8 "REFUSED" ;
label define C1SG11A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "LESS THAN $0" 2 "$O (NONE)" 3 "$1 - $1,999"
                       4 "$2,000 - $3,999" 5 "$4,000 - $5,999"
                       6 "$6,000 - $7,999" 7 "$8,000 - $9,999"
                       8 "$10,000 - $11,999" 9 "$12,000 - $13,999"
                       10 "$14,000 - $15,999" 11 "$16,000 - $17,999"
                       12 "$18,000 - $19,999" 13 "$20,000 - $22,499"
                       14 "$22,500 - $24,499" 15 "$25,000 - $27,499"
                       16 "$27,500 - $29,999" 17 "$30,000 - $32,499"
                       18 "$32,500 - $34,999" 19 "$35,000 - $37,499"
                       20 "$37,500 - $39,999" 21 "$40,000 - $42,499"
                       22 "$42,500 - $44,999" 23 "$45,000 - $47,499"
                       24 "$47,500 - $49,999" 25 "$50,000 - $54,999"
                       26 "$55,000 - $59,999" 27 "$60,000 - $64,999"
                       28 "$65,000 - $69,999" 29 "$70,000 - $74,999"
                       30 "$75,000 - $79,999" 31 "$80,000 - $84,999"
                       32 "$85,000 - $89,999" 33 "$90,000 - $94,999"
                       34 "$95,000 - $99,999" 35 "$100,000 - $109,999"
                       36 "$110,000 - $119,999" 37 "$120,000 - $129,999"
                       38 "$130,000 - $139,999" 39 "$140,000 - $149,999"
                       40 "$150,000 - $174,999" 41 "$175,000 - $199,999"
                       42 "$200,000 - $249,999" 43 "$250,000 - $299,999"
                       44 "$300,000 OR MORE" 98 "REFUSED" 99 "INAPP" ;
label define C1SG11B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "LESS THAN $0" 2 "$O (NONE)" 3 "$1 - $1,999"
                       4 "$2,000 - $3,999" 5 "$4,000 - $5,999"
                       6 "$6,000 - $7,999" 7 "$8,000 - $9,999"
                       8 "$10,000 - $11,999" 9 "$12,000 - $13,999"
                       10 "$14,000 - $15,999" 11 "$16,000 - $17,999"
                       12 "$18,000 - $19,999" 13 "$20,000 - $22,499"
                       14 "$22,500 - $24,499" 15 "$25,000 - $27,499"
                       16 "$27,500 - $29,999" 17 "$30,000 - $32,499"
                       18 "$32,500 - $34,999" 19 "$35,000 - $37,499"
                       20 "$37,500 - $39,999" 21 "$40,000 - $42,499"
                       22 "$42,500 - $44,999" 23 "$45,000 - $47,499"
                       24 "$47,500 - $49,999" 25 "$50,000 - $54,999"
                       26 "$55,000 - $59,999" 27 "$60,000 - $64,999"
                       28 "$65,000 - $69,999" 29 "$70,000 - $74,999"
                       30 "$75,000 - $79,999" 31 "$80,000 - $84,999"
                       32 "$85,000 - $89,999" 33 "$90,000 - $94,999"
                       34 "$95,000 - $99,999" 35 "$100,000 - $109,999"
                       36 "$110,000 - $119,999" 37 "$120,000 - $129,999"
                       38 "$130,000 - $139,999" 39 "$140,000 - $149,999"
                       40 "$150,000 - $174,999" 41 "$175,000 - $199,999"
                       42 "$200,000 - $249,999" 43 "$250,000 - $299,999"
                       44 "$300,000 OR MORE" 98 "REFUSED" 99 "INAPP" ;
label define C1SG11C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "LESS THAN $0" 2 "$O (NONE)" 3 "$1 - $1,999"
                       4 "$2,000 - $3,999" 5 "$4,000 - $5,999"
                       6 "$6,000 - $7,999" 7 "$8,000 - $9,999"
                       8 "$10,000 - $11,999" 9 "$12,000 - $13,999"
                       10 "$14,000 - $15,999" 11 "$16,000 - $17,999"
                       12 "$18,000 - $19,999" 13 "$20,000 - $22,499"
                       14 "$22,500 - $24,499" 15 "$25,000 - $27,499"
                       16 "$27,500 - $29,999" 17 "$30,000 - $32,499"
                       18 "$32,500 - $34,999" 19 "$35,000 - $37,499"
                       20 "$37,500 - $39,999" 21 "$40,000 - $42,499"
                       22 "$42,500 - $44,999" 23 "$45,000 - $47,499"
                       24 "$47,500 - $49,999" 25 "$50,000 - $54,999"
                       26 "$55,000 - $59,999" 27 "$60,000 - $64,999"
                       28 "$65,000 - $69,999" 29 "$70,000 - $74,999"
                       30 "$75,000 - $79,999" 31 "$80,000 - $84,999"
                       32 "$85,000 - $89,999" 33 "$90,000 - $94,999"
                       34 "$95,000 - $99,999" 35 "$100,000 - $109,999"
                       36 "$110,000 - $119,999" 37 "$120,000 - $129,999"
                       38 "$130,000 - $139,999" 39 "$140,000 - $149,999"
                       40 "$150,000 - $174,999" 41 "$175,000 - $199,999"
                       42 "$200,000 - $249,999" 43 "$250,000 - $299,999"
                       44 "$300,000 OR MORE" 98 "REFUSED" 99 "INAPP" ;
label define C1SG11D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "LESS THAN $0" 2 "$O (NONE)" 3 "$1 - $1,999"
                       4 "$2,000 - $3,999" 5 "$4,000 - $5,999"
                       6 "$6,000 - $7,999" 7 "$8,000 - $9,999"
                       8 "$10,000 - $11,999" 9 "$12,000 - $13,999"
                       10 "$14,000 - $15,999" 11 "$16,000 - $17,999"
                       12 "$18,000 - $19,999" 13 "$20,000 - $22,499"
                       14 "$22,500 - $24,499" 15 "$25,000 - $27,499"
                       16 "$27,500 - $29,999" 17 "$30,000 - $32,499"
                       18 "$32,500 - $34,999" 19 "$35,000 - $37,499"
                       20 "$37,500 - $39,999" 21 "$40,000 - $42,499"
                       22 "$42,500 - $44,999" 23 "$45,000 - $47,499"
                       24 "$47,500 - $49,999" 25 "$50,000 - $54,999"
                       26 "$55,000 - $59,999" 27 "$60,000 - $64,999"
                       28 "$65,000 - $69,999" 29 "$70,000 - $74,999"
                       30 "$75,000 - $79,999" 31 "$80,000 - $84,999"
                       32 "$85,000 - $89,999" 33 "$90,000 - $94,999"
                       34 "$95,000 - $99,999" 35 "$100,000 - $109,999"
                       36 "$110,000 - $119,999" 37 "$120,000 - $129,999"
                       38 "$130,000 - $139,999" 39 "$140,000 - $149,999"
                       40 "$150,000 - $174,999" 41 "$175,000 - $199,999"
                       42 "$200,000 - $249,999" 43 "$250,000 - $299,999"
                       44 "$300,000 OR MORE" 98 "REFUSED" 99 "INAPP" ;
label define C1SG12    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "NOT APPLICABLE-NO INCOME FROM PENSION OR RETIREMENT ACCOUNTS"
                       8 "REFUSED" ;
label define C1SG13    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SG14A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "LESS THAN $0" 2 "$O (NONE)" 3 "$1 - $1,999"
                       4 "$2,000 - $3,999" 5 "$4,000 - $5,999"
                       6 "$6,000 - $7,999" 7 "$8,000 - $9,999"
                       8 "$10,000 - $11,999" 9 "$12,000 - $13,999"
                       10 "$14,000 - $15,999" 11 "$16,000 - $17,999"
                       12 "$18,000 - $19,999" 13 "$20,000 - $22,499"
                       14 "$22,500 - $24,499" 15 "$25,000 - $27,499"
                       16 "$27,500 - $29,999" 17 "$30,000 - $32,499"
                       18 "$32,500 - $34,999" 19 "$35,000 - $37,499"
                       20 "$37,500 - $39,999" 21 "$40,000 - $42,499"
                       22 "$42,500 - $44,999" 23 "$45,000 - $47,499"
                       24 "$47,500 - $49,999" 25 "$50,000 - $54,999"
                       26 "$55,000 - $59,999" 27 "$60,000 - $64,999"
                       28 "$65,000 - $69,999" 29 "$70,000 - $74,999"
                       30 "$75,000 - $79,999" 31 "$80,000 - $84,999"
                       32 "$85,000 - $89,999" 33 "$90,000 - $94,999"
                       34 "$95,000 - $99,999" 35 "$100,000 - $109,999"
                       36 "$110,000 - $119,999" 37 "$120,000 - $129,999"
                       38 "$130,000 - $139,999" 39 "$140,000 - $149,999"
                       40 "$150,000 - $174,999" 41 "$175,000 - $199,999"
                       42 "$200,000 - $249,999" 43 "$250,000 - $299,999"
                       44 "$300,000 OR MORE" 98 "REFUSED" 99 "INAPP" ;
label define C1SG14B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "LESS THAN $0" 2 "$O (NONE)" 3 "$1 - $1,999"
                       4 "$2,000 - $3,999" 5 "$4,000 - $5,999"
                       6 "$6,000 - $7,999" 7 "$8,000 - $9,999"
                       8 "$10,000 - $11,999" 9 "$12,000 - $13,999"
                       10 "$14,000 - $15,999" 11 "$16,000 - $17,999"
                       12 "$18,000 - $19,999" 13 "$20,000 - $22,499"
                       14 "$22,500 - $24,499" 15 "$25,000 - $27,499"
                       16 "$27,500 - $29,999" 17 "$30,000 - $32,499"
                       18 "$32,500 - $34,999" 19 "$35,000 - $37,499"
                       20 "$37,500 - $39,999" 21 "$40,000 - $42,499"
                       22 "$42,500 - $44,999" 23 "$45,000 - $47,499"
                       24 "$47,500 - $49,999" 25 "$50,000 - $54,999"
                       26 "$55,000 - $59,999" 27 "$60,000 - $64,999"
                       28 "$65,000 - $69,999" 29 "$70,000 - $74,999"
                       30 "$75,000 - $79,999" 31 "$80,000 - $84,999"
                       32 "$85,000 - $89,999" 33 "$90,000 - $94,999"
                       34 "$95,000 - $99,999" 35 "$100,000 - $109,999"
                       36 "$110,000 - $119,999" 37 "$120,000 - $129,999"
                       38 "$130,000 - $139,999" 39 "$140,000 - $149,999"
                       40 "$150,000 - $174,999" 41 "$175,000 - $199,999"
                       42 "$200,000 - $249,999" 43 "$250,000 - $299,999"
                       44 "$300,000 OR MORE" 98 "REFUSED" 99 "INAPP" ;
label define C1SG14C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "LESS THAN $0" 2 "$O (NONE)" 3 "$1 - $1,999"
                       4 "$2,000 - $3,999" 5 "$4,000 - $5,999"
                       6 "$6,000 - $7,999" 7 "$8,000 - $9,999"
                       8 "$10,000 - $11,999" 9 "$12,000 - $13,999"
                       10 "$14,000 - $15,999" 11 "$16,000 - $17,999"
                       12 "$18,000 - $19,999" 13 "$20,000 - $22,499"
                       14 "$22,500 - $24,499" 15 "$25,000 - $27,499"
                       16 "$27,500 - $29,999" 17 "$30,000 - $32,499"
                       18 "$32,500 - $34,999" 19 "$35,000 - $37,499"
                       20 "$37,500 - $39,999" 21 "$40,000 - $42,499"
                       22 "$42,500 - $44,999" 23 "$45,000 - $47,499"
                       24 "$47,500 - $49,999" 25 "$50,000 - $54,999"
                       26 "$55,000 - $59,999" 27 "$60,000 - $64,999"
                       28 "$65,000 - $69,999" 29 "$70,000 - $74,999"
                       30 "$75,000 - $79,999" 31 "$80,000 - $84,999"
                       32 "$85,000 - $89,999" 33 "$90,000 - $94,999"
                       34 "$95,000 - $99,999" 35 "$100,000 - $109,999"
                       36 "$110,000 - $119,999" 37 "$120,000 - $129,999"
                       38 "$130,000 - $139,999" 39 "$140,000 - $149,999"
                       40 "$150,000 - $174,999" 41 "$175,000 - $199,999"
                       42 "$200,000 - $249,999" 43 "$250,000 - $299,999"
                       44 "$300,000 OR MORE" 98 "REFUSED" 99 "INAPP" ;
label define C1SG14D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "LESS THAN $0" 2 "$O (NONE)" 3 "$1 - $1,999"
                       4 "$2,000 - $3,999" 5 "$4,000 - $5,999"
                       6 "$6,000 - $7,999" 7 "$8,000 - $9,999"
                       8 "$10,000 - $11,999" 9 "$12,000 - $13,999"
                       10 "$14,000 - $15,999" 11 "$16,000 - $17,999"
                       12 "$18,000 - $19,999" 13 "$20,000 - $22,499"
                       14 "$22,500 - $24,499" 15 "$25,000 - $27,499"
                       16 "$27,500 - $29,999" 17 "$30,000 - $32,499"
                       18 "$32,500 - $34,999" 19 "$35,000 - $37,499"
                       20 "$37,500 - $39,999" 21 "$40,000 - $42,499"
                       22 "$42,500 - $44,999" 23 "$45,000 - $47,499"
                       24 "$47,500 - $49,999" 25 "$50,000 - $54,999"
                       26 "$55,000 - $59,999" 27 "$60,000 - $64,999"
                       28 "$65,000 - $69,999" 29 "$70,000 - $74,999"
                       30 "$75,000 - $79,999" 31 "$80,000 - $84,999"
                       32 "$85,000 - $89,999" 33 "$90,000 - $94,999"
                       34 "$95,000 - $99,999" 35 "$100,000 - $109,999"
                       36 "$110,000 - $119,999" 37 "$120,000 - $129,999"
                       38 "$130,000 - $139,999" 39 "$140,000 - $149,999"
                       40 "$150,000 - $174,999" 41 "$175,000 - $199,999"
                       42 "$200,000 - $249,999" 43 "$250,000 - $299,999"
                       44 "$300,000 OR MORE" 98 "REFUSED" 99 "INAPP" ;
label define C1SG15    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "NOT APPLICABLE-NO INCOME FROM PENSION OR RETIREMENT ACCOUNTS"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SG16    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SG17A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "LESS THAN $0" 2 "$O (NONE)" 3 "$1 - $1,999"
                       4 "$2,000 - $3,999" 5 "$4,000 - $5,999"
                       6 "$6,000 - $7,999" 7 "$8,000 - $9,999"
                       8 "$10,000 - $11,999" 9 "$12,000 - $13,999"
                       10 "$14,000 - $15,999" 11 "$16,000 - $17,999"
                       12 "$18,000 - $19,999" 13 "$20,000 - $22,499"
                       14 "$22,500 - $24,499" 15 "$25,000 - $27,499"
                       16 "$27,500 - $29,999" 17 "$30,000 - $32,499"
                       18 "$32,500 - $34,999" 19 "$35,000 - $37,499"
                       20 "$37,500 - $39,999" 21 "$40,000 - $42,499"
                       22 "$42,500 - $44,999" 23 "$45,000 - $47,499"
                       24 "$47,500 - $49,999" 25 "$50,000 - $54,999"
                       26 "$55,000 - $59,999" 27 "$60,000 - $64,999"
                       28 "$65,000 - $69,999" 29 "$70,000 - $74,999"
                       30 "$75,000 - $79,999" 31 "$80,000 - $84,999"
                       32 "$85,000 - $89,999" 33 "$90,000 - $94,999"
                       34 "$95,000 - $99,999" 35 "$100,000 - $109,999"
                       36 "$110,000 - $119,999" 37 "$120,000 - $129,999"
                       38 "$130,000 - $139,999" 39 "$140,000 - $149,999"
                       40 "$150,000 - $174,999" 41 "$175,000 - $199,999"
                       42 "$200,000 - $249,999" 43 "$250,000 - $299,999"
                       44 "$300,000 OR MORE" 98 "REFUSED" 99 "INAPP" ;
label define C1SG17B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "LESS THAN $0" 2 "$O (NONE)" 3 "$1 - $1,999"
                       4 "$2,000 - $3,999" 5 "$4,000 - $5,999"
                       6 "$6,000 - $7,999" 7 "$8,000 - $9,999"
                       8 "$10,000 - $11,999" 9 "$12,000 - $13,999"
                       10 "$14,000 - $15,999" 11 "$16,000 - $17,999"
                       12 "$18,000 - $19,999" 13 "$20,000 - $22,499"
                       14 "$22,500 - $24,499" 15 "$25,000 - $27,499"
                       16 "$27,500 - $29,999" 17 "$30,000 - $32,499"
                       18 "$32,500 - $34,999" 19 "$35,000 - $37,499"
                       20 "$37,500 - $39,999" 21 "$40,000 - $42,499"
                       22 "$42,500 - $44,999" 23 "$45,000 - $47,499"
                       24 "$47,500 - $49,999" 25 "$50,000 - $54,999"
                       26 "$55,000 - $59,999" 27 "$60,000 - $64,999"
                       28 "$65,000 - $69,999" 29 "$70,000 - $74,999"
                       30 "$75,000 - $79,999" 31 "$80,000 - $84,999"
                       32 "$85,000 - $89,999" 33 "$90,000 - $94,999"
                       34 "$95,000 - $99,999" 35 "$100,000 - $109,999"
                       36 "$110,000 - $119,999" 37 "$120,000 - $129,999"
                       38 "$130,000 - $139,999" 39 "$140,000 - $149,999"
                       40 "$150,000 - $174,999" 41 "$175,000 - $199,999"
                       42 "$200,000 - $249,999" 43 "$250,000 - $299,999"
                       44 "$300,000 OR MORE" 98 "REFUSED" 99 "INAPP" ;
label define C1SG17C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "LESS THAN $0" 2 "$O (NONE)" 3 "$1 - $1,999"
                       4 "$2,000 - $3,999" 5 "$4,000 - $5,999"
                       6 "$6,000 - $7,999" 7 "$8,000 - $9,999"
                       8 "$10,000 - $11,999" 9 "$12,000 - $13,999"
                       10 "$14,000 - $15,999" 11 "$16,000 - $17,999"
                       12 "$18,000 - $19,999" 13 "$20,000 - $22,499"
                       14 "$22,500 - $24,499" 15 "$25,000 - $27,499"
                       16 "$27,500 - $29,999" 17 "$30,000 - $32,499"
                       18 "$32,500 - $34,999" 19 "$35,000 - $37,499"
                       20 "$37,500 - $39,999" 21 "$40,000 - $42,499"
                       22 "$42,500 - $44,999" 23 "$45,000 - $47,499"
                       24 "$47,500 - $49,999" 25 "$50,000 - $54,999"
                       26 "$55,000 - $59,999" 27 "$60,000 - $64,999"
                       28 "$65,000 - $69,999" 29 "$70,000 - $74,999"
                       30 "$75,000 - $79,999" 31 "$80,000 - $84,999"
                       32 "$85,000 - $89,999" 33 "$90,000 - $94,999"
                       34 "$95,000 - $99,999" 35 "$100,000 - $109,999"
                       36 "$110,000 - $119,999" 37 "$120,000 - $129,999"
                       38 "$130,000 - $139,999" 39 "$140,000 - $149,999"
                       40 "$150,000 - $174,999" 41 "$175,000 - $199,999"
                       42 "$200,000 - $249,999" 43 "$250,000 - $299,999"
                       44 "$300,000 OR MORE" 98 "REFUSED" 99 "INAPP" ;
label define C1SG17D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "LESS THAN $0" 2 "$O (NONE)" 3 "$1 - $1,999"
                       4 "$2,000 - $3,999" 5 "$4,000 - $5,999"
                       6 "$6,000 - $7,999" 7 "$8,000 - $9,999"
                       8 "$10,000 - $11,999" 9 "$12,000 - $13,999"
                       10 "$14,000 - $15,999" 11 "$16,000 - $17,999"
                       12 "$18,000 - $19,999" 13 "$20,000 - $22,499"
                       14 "$22,500 - $24,499" 15 "$25,000 - $27,499"
                       16 "$27,500 - $29,999" 17 "$30,000 - $32,499"
                       18 "$32,500 - $34,999" 19 "$35,000 - $37,499"
                       20 "$37,500 - $39,999" 21 "$40,000 - $42,499"
                       22 "$42,500 - $44,999" 23 "$45,000 - $47,499"
                       24 "$47,500 - $49,999" 25 "$50,000 - $54,999"
                       26 "$55,000 - $59,999" 27 "$60,000 - $64,999"
                       28 "$65,000 - $69,999" 29 "$70,000 - $74,999"
                       30 "$75,000 - $79,999" 31 "$80,000 - $84,999"
                       32 "$85,000 - $89,999" 33 "$90,000 - $94,999"
                       34 "$95,000 - $99,999" 35 "$100,000 - $109,999"
                       36 "$110,000 - $119,999" 37 "$120,000 - $129,999"
                       38 "$130,000 - $139,999" 39 "$140,000 - $149,999"
                       40 "$150,000 - $174,999" 41 "$175,000 - $199,999"
                       42 "$200,000 - $249,999" 43 "$250,000 - $299,999"
                       44 "$300,000 OR MORE" 98 "REFUSED" 99 "INAPP" ;
label define C1SRINC   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       300000 "$300,000 OR MORE"
                       999998 "NOT CALCULATED (Due to missing data)" ;
label define C1SSINC   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       300000 "$300,000 OR MORE"
                       999998 "NOT CALCULATED (Due to missing data)"
                       999999 "NOT CALCULATED (Due to Does not apply)" ;
label define C1SHINC   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       300000 "$300,000 OR MORE"
                       999998 "NOT CALCULATED (Due to missing data)"
                       999999 "NOT CALCULATED (Due to Does not apply)" ;
label define C1SEARN   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       300000 "$300,000 OR MORE"
                       999998 "NOT CALCULATED (Due to missing data)" ;
label define C1SPNSN   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       300000 "$300,000 OR MORE"
                       999998 "NOT CALCULATED (Due to missing data)" ;
label define C1SSEC    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       300000 "$300,000 OR MORE"
                       999998 "NOT CALCULATED (Due to missing data)" ;
label define C1SOTH    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       300000 "$300,000 OR MORE"
                       999998 "NOT CALCULATED (Due to missing data)" ;
label define C1STINC   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       300000 "$300,000 OR MORE"
                       999998 "NOT CALCULATED (Due to missing data)" ;
label define C1SG18    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "NOT APPLICABLE-NO INCOME FROM PENSION OR RETIREMENT ACCOUNTS"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SG19    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SG20A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SG20B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SG20C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SG20D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SG20E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SG20F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SG20G   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SG20H   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SG20I   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SG20J   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SG21    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       99999998 "REFUSED" 99999999 "INAPP" ;
label define C1SG22    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       300000 "$300,000 OR MORE" 999998 "REFUSED" ;
label define C1SG23    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       300000 "$300,000 OR MORE" 999998 "REFUSED" ;
label define C1SG24    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       300000 "$300,000 OR MORE" 999998 "REFUSED" ;
label define C1SG25    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "MORE NOW"
                       2 "ABOUT THE SAME NOW" 3 "LESS NOW" 8 "REFUSED" ;
label define C1SG25A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       300000 "$300,000 OR MORE" 999998 "REFUSED"
                       999999 "INAPP" ;
label define C1SG25B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       300000 "$300,000 OR MORE" 999998 "REFUSED"
                       999999 "INAPP" ;
label define C1SG26    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       7 "DON'T KNOW" 8 "REFUSED" ;
label define C1SG27    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1000000 "$1,000,000 OR MORE" 9999998 "REFUSED"
                       9999999 "INAPP" ;
label define C1SG28    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       7 "DON'T KNOW" 8 "REFUSED" ;
label define C1SG29    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1000000 "$1,000,000 OR MORE" 9999998 "REFUSED"
                       9999999 "INAPP" ;
label define C1SG30    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       7 "DON'T KNOW" 8 "REFUSED" ;
label define C1SG31    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1000000 "$1,000,000 OR MORE" 9999998 "REFUSED"
                       9999999 "INAPP" ;
label define C1SG32    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       4 "DOES NOT APPLY" 7 "DON'T KNOW" 8 "REFUSED" ;
label define C1SG33    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1000000 "$1,000,000 OR MORE" 9999998 "REFUSED"
                       9999999 "INAPP" ;
label define C1SG34    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SG35    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "COMMENTS GIVEN" 8 "REFUSED" 9 "INAPP" ;
label define C1SG36    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       300000 "$300,000 OR MORE" 999998 "REFUSED"
                       999999 "INAPP" ;
label define C1SG37A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SG37B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SG37C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SG37D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SG38    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "OWN"
                       2 "RENT" 8 "REFUSED" ;
label define C1SG39    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       2000000 "$2,000,000 OR MORE" 9999998 "REFUSED"
                       9999999 "INAPP" ;
label define C1SG40    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "HOUSE"
                       2 "APARTMENT" 3 "CONDOMINIUM" 4 "MOBILE HOME"
                       5 "OTHER, PLEASE SPECIFY" 8 "REFUSED" ;
label define C1SG41    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SG42    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       10000000 "$10,000,000 OR MORE" 99999998 "REFUSED"
                       99999999 "INAPP" ;
label define C1SG43    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1000000 "$1,000,000 OR MORE" 9999998 "REFUSED"
                       9999999 "INAPP" ;
label define C1SG44    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SG45    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       300000 "$300,000 OR MORE" 999998 "REFUSED"
                       999999 "INAPP" ;
label define C1SG46    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SG47    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       2000000 "$2,000,000 OR MORE" 9999998 "REFUSED"
                       9999999 "INAPP" ;
label define C1SG48A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SG48B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SG48C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SG48D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SG48E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SG49    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SG50    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 9998 "REFUSED"
                       9999 "INAPP" ;
label define C1SG51    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       300000 "$300,000 OR MORE" 999998 "REFUSED"
                       999999 "INAPP" ;
label define C1SG52    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SG53    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       2000000 "$2,000,000 OR MORE" 9999998 "REFUSED"
                       9999999 "INAPP" ;
label define C1SG54    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SG55    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       300000 "$300,000 OR MORE" 999998 "REFUSED"
                       999999 "INAPP" ;
label define C1SG56    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SG57    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       300000 "$300,000 OR MORE" 999998 "REFUSED"
                       999999 "INAPP" ;
label define C1SG58    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SG59    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "BE IN DEBT"
                       2 "JUST BROKE EVEN" 3 "HAVE A POSITIVE BALANCE"
                       8 "REFUSED" ;
label define C1SG59A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       300000 "$300,000 OR MORE" 999998 "REFUSED"
                       999999 "INAPP" ;
label define C1SG59B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1000000 "$1,000,000 OR MORE" 9999998 "REFUSED"
                       9999999 "INAPP" ;
label define C1SG60    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "BE IN DEBT"
                       2 "JUST BROKE EVEN" 3 "HAVE A POSITIVE BALANCE"
                       8 "REFUSED" ;
label define C1SG60A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       300000 "$300,000 OR MORE" 999998 "REFUSED"
                       999999 "INAPP" ;
label define C1SG60B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1000000 "$1,000,000 OR MORE" 9999998 "REFUSED"
                       9999999 "INAPP" ;
label define C1SG61A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1000000 "$1,000,000 OR MORE" 9999998 "REFUSED"
                       9999999 "INAPP" ;
label define C1SG61B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       300000 "$300,000 OR MORE" 999998 "REFUSED" ;
label define C1SG61C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       300000 "$300,000 OR MORE" 999998 "REFUSED" ;
label define C1SG61D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       300000 "$300,000 OR MORE" 999998 "REFUSED" ;
label define C1SG61E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       50000 "$50,000 OR MORE" 99998 "REFUSED" ;
label define C1SG61F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       50000 "$50,000 OR MORE" 99998 "REFUSED" ;
label define C1SG61G   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       99999998 "REFUSED" ;
label define C1SG61H   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       50000 "$50,000 OR MORE" 99998 "REFUSED" ;
label define C1SG61I   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       50000 "$50,000 OR MORE" 99998 "REFUSED" ;
label define C1SG62    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "MUCH LESS NOW" 2 "SOMEWHAT LESS NOW"
                       3 "LITTLE LESS NOW" 4 "ABOUT THE SAME"
                       5 "LITTLE MORE NOW" 6 "SOMEWHAT MORE NOW"
                       7 "MUCH MORE NOW" 8 "REFUSED" ;
label define C1SH1     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "WORST"
                       10 "BEST" 98 "REFUSED" ;
label define C1SH2     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "WORST"
                       10 "BEST" 98 "REFUSED" ;
label define C1SH3     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "WORST"
                       10 "BEST" 98 "REFUSED" ;
label define C1SH4     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "NONE"
                       10 "VERY MUCH" 98 "REFUSED" ;
label define C1SH5     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "NONE"
                       10 "VERY MUCH" 98 "REFUSED" ;
label define C1SH6A    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SH6B    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SH6C    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SH6D    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SH6E    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SH6F    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SGENER  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SH7A    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SH7B    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SH7C    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SH7D    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SH8A    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED" ;
label define C1SH8B    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED" ;
label define C1SH8C    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED" ;
label define C1SH9A    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SH9B    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SH9C    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SH9D    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SH9E    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SH9F    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SH10A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SH10B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SH10C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SH10D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SH10E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SH10F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SH11A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SH11B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SH11C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SH11D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SH11E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SH12A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SH12B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SH12C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SH12D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SH12E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SH12F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SH12G   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SH12H   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SH13A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       99999998 "REFUSED" ;
label define C1SH13B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       99999998 "REFUSED" ;
label define C1SH13C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       50000 "$50,000 OR MORE" 99998 "REFUSED" ;
label define C1SH13D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       50000 "$50,000 OR MORE" 99998 "REFUSED" ;
label define C1SH13E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       99999998 "REFUSED" ;
label define C1SH13F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       99999998 "REFUSED" ;
label define C1SH13G   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       99999998 "REFUSED" ;
label define C1SH13H   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       99999998 "REFUSED" ;
label define C1SH14A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       99999998 "REFUSED" ;
label define C1SH14B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       99999998 "REFUSED" ;
label define C1SH14C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       99999998 "REFUSED" ;
label define C1SH14D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       99999998 "REFUSED" ;
label define C1SH14E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       99999998 "REFUSED" ;
label define C1SH14F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       99999998 "REFUSED" ;
label define C1SH14G   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       50000 "$50,000 OR MORE" 99998 "REFUSED" ;
label define C1SH15A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SH15B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SH15C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SH15D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SH16A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SH16B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SH16C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SH16D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SH16E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SH16F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SH16G   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SH16H   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SH16I   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SH16J   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SH16K   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SH16L   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SH16M   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SH16N   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SH16O   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SSWBMS  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SSWBSI  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SSWBAO  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SSWBSC  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SSWBSA  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SH16P   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SH16Q   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SH16R   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SH16S   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SH16T   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" ;
label define C1SSYMP   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SI1     -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALMOST EVERY DAY" 2 "SEVERAL TIMES A WEEK"
                       3 "ABOUT ONCE A WEEK" 4 "1-3 TIMES A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER OR HARDLY EVER"
                       8 "REFUSED" ;
label define C1SI2     -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ALMOST EVERY DAY" 2 "SEVERAL TIMES A WEEK"
                       3 "ABOUT ONCE A WEEK" 4 "1-3 TIMES A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER OR HARDLY EVER"
                       8 "REFUSED" ;
label define C1SI3     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED" ;
label define C1SI4     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED" ;
label define C1SI5     -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "OWN HOME OUTRIGHT" 2 "PAYING ON A MORTGAGE"
                       3 "RENT" 8 "REFUSED" ;
label define C1SI6A    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SI6B    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SI6C    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SI6D    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SI6E    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SI6F    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SI6G    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SI6H    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SI6I    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SI6J    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SI6K    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SI6L    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SHOMET  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "Not calculated (Due to missing data)" ;
label define C1SPIHOM  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "Not calculated (Due to missing data)" ;
label define C1SI7     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "FOREIGN"
                       1 "ALABAMA" 2 "ALASKA" 3 "ARIZONA" 4 "ARKANSAS"
                       5 "CALIFORNIA" 6 "COLORADO" 7 "CONNECTICUT"
                       8 "DELEWARE" 9 "DIST. COLMBIA" 10 "FLORIDA"
                       11 "GEORGIA" 12 "HAWAII" 13 "IDAHO" 14 "ILLINOIS"
                       15 "INDIANA" 16 "IOWA" 17 "KANSAS" 18 "KENTUCKY"
                       19 "LOUISIANA" 20 "MAINE" 21 "MARYLAND"
                       22 "MASSACHUSETTS" 23 "MICHIGAN" 24 "MINNESOTA"
                       25 "MISSISSIPPI" 26 "MISSOURI" 27 "MONTANA"
                       28 "NEBRASKA" 29 "NEVADA" 30 "NEW HAMPSHIRE"
                       31 "NEW JERSEY" 32 "NEW MEXICO" 33 "NEW YORK"
                       34 "NORTH CAROLNA" 35 "NORTH DAKOTA" 36 "OHIO"
                       37 "OKLAHOMA" 38 "OREGON" 39 "PENNSYLVANIA"
                       40 "RHODE ISLAND" 41 "SOUTH CAROLNA" 42 "SOUTH DAKOTA"
                       43 "TENNESSEE" 44 "TEXAS" 45 "UTAH" 46 "VERMONT"
                       47 "VIRGINIA" 48 "WASHINGTON" 49 "WEST VIRGINIA"
                       50 "WISCONSIN" 51 "WYOMING" 98 "REFUSED" ;
label define C1SJ1     -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "SEVERAL TIMES A DAY" 2 "ABOUT ONCE A DAY"
                       3 "SEVERAL TIMES A WEEK" 4 "ABOUT ONCE A WEEK"
                       5 "2 OR 3 TIMES A MONTH" 6 "ABOUT ONCE A MONTH"
                       7 "LESS THAN ONCE A MONTH" 8 "NEVER OR HARDLY EVER"
                       98 "REFUSED" ;
label define C1SJ2     -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "SEVERAL TIMES A DAY" 2 "ABOUT ONCE A DAY"
                       3 "SEVERAL TIMES A WEEK" 4 "ABOUT ONCE A WEEK"
                       5 "2 OR 3 TIMES A MONTH" 6 "ABOUT ONCE A MONTH"
                       7 "LESS THAN ONCE A MONTH" 8 "NEVER OR HARDLY EVER"
                       98 "REFUSED" ;
label define C1SJ3     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SJ4A    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SJ4B    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SJ4C    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SJ4D    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SJ4E    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SJ4F    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SJ4G    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "OFTEN"
                       2 "SOMETIMES" 3 "RARELY" 4 "NEVER" 8 "REFUSED" ;
label define C1SJ4H    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "OFTEN"
                       2 "SOMETIMES" 3 "RARELY" 4 "NEVER" 8 "REFUSED" ;
label define C1SJ4I    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "OFTEN"
                       2 "SOMETIMES" 3 "RARELY" 4 "NEVER" 8 "REFUSED" ;
label define C1SJ4J    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "OFTEN"
                       2 "SOMETIMES" 3 "RARELY" 4 "NEVER" 8 "REFUSED" ;
label define C1SKINPO  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SKINNE  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SFAMSO  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SPKINS  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SJ5     -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "SEVERAL TIMES A DAY" 2 "ABOUT ONCE A DAY"
                       3 "SEVERAL TIMES A WEEK" 4 "ABOUT ONCE A WEEK"
                       5 "2 OR 3 TIMES A MONTH" 6 "ABOUT ONCE A MONTH"
                       7 "LESS THAN ONCE A MONTH" 8 "NEVER OR HARDLY EVER"
                       98 "REFUSED" ;
label define C1SJ6     -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "SEVERAL TIMES A DAY" 2 "ABOUT ONCE A DAY"
                       3 "SEVERAL TIMES A WEEK" 4 "ABOUT ONCE A WEEK"
                       5 "2 OR 3 TIMES A MONTH" 6 "ABOUT ONCE A MONTH"
                       7 "LESS THAN ONCE A MONTH" 8 "NEVER OR HARDLY EVER"
                       98 "REFUSED" ;
label define C1SJ7     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED" ;
label define C1SJ8A    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SJ8B    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SJ8C    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SJ8D    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SJ8E    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "OFTEN"
                       2 "SOMETIMES" 3 "RARELY" 4 "NEVER" 8 "REFUSED" ;
label define C1SJ8F    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "OFTEN"
                       2 "SOMETIMES" 3 "RARELY" 4 "NEVER" 8 "REFUSED" ;
label define C1SJ8G    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "OFTEN"
                       2 "SOMETIMES" 3 "RARELY" 4 "NEVER" 8 "REFUSED" ;
label define C1SJ8H    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "OFTEN"
                       2 "SOMETIMES" 3 "RARELY" 4 "NEVER" 8 "REFUSED" ;
label define C1SFDSPO  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SFDSNE  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SFDSOL  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define C1SJ9     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "NEVER"
                       2 "LESS THAN ONCE A MONTH" 3 "ONCE OR TWICE A MONTH"
                       4 "THREE OR FOUR TIMES A MONTH"
                       5 "A COUPLE OF TIMES A WEEK"
                       6 "MORE OFTEN THAN A COUPLE OF TIMES A WEEK"
                       8 "REFUSED" ;
label define C1SJ10    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "NEVER"
                       2 "LESS THAN ONCE A MONTH" 3 "ONCE OR TWICE A MONTH"
                       4 "THREE OR FOUR TIMES A MONTH"
                       5 "A COUPLE OF TIMES A WEEK"
                       6 "MORE OFTEN THAN A COUPLE OF TIMES A WEEK"
                       8 "REFUSED" ;
label define C1SJ11SA  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11PA  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11CA  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11SB  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11PB  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11CB  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11SC  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11PC  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11CC  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11SD  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11PD  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11CD  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11SE  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11PE  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11CE  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11SF  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11PF  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11CF  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11SG  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11PG  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11CG  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11SH  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11PH  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11CH  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11SI  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11PI  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11CI  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11SJ  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11PJ  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11CJ  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11SK  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11PK  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11CK  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11SL  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11PL  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11CL  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11SM  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11PM  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11CM  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11SN  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11PN  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11CN  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11SO  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11PO  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SJ11CO  -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" ;
label define C1SK1     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SK2     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "WORST"
                       10 "BEST" 98 "REFUSED" 99 "INAPP" ;
label define C1SK3     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "WORST"
                       10 "BEST" 96 "NO CHILDREN 10 YEARS AGO" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SK4     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "WORST"
                       10 "BEST" 98 "REFUSED" 99 "INAPP" ;
label define C1SK5     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "NONE"
                       10 "VERY MUCH" 98 "REFUSED" 99 "INAPP" ;
label define C1SK6     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "NONE"
                       10 "VERY MUCH" 98 "REFUSED" 99 "INAPP" ;
label define C1SK7A    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "NOT AT ALL TRUE" 2 "A LITTLE BIT TRUE"
                       3 "MODERATELY TRUE" 4 "EXTREMELY TRUE" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SK7B    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "NOT AT ALL TRUE" 2 "A LITTLE BIT TRUE"
                       3 "MODERATELY TRUE" 4 "EXTREMELY TRUE" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SK7C    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "NOT AT ALL TRUE" 2 "A LITTLE BIT TRUE"
                       3 "MODERATELY TRUE" 4 "EXTREMELY TRUE" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SK7D    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "NOT AT ALL TRUE" 2 "A LITTLE BIT TRUE"
                       3 "MODERATELY TRUE" 4 "EXTREMELY TRUE" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SK7E    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "NOT AT ALL TRUE" 2 "A LITTLE BIT TRUE"
                       3 "MODERATELY TRUE" 4 "EXTREMELY TRUE" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SK7F    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "NOT AT ALL TRUE" 2 "A LITTLE BIT TRUE"
                       3 "MODERATELY TRUE" 4 "EXTREMELY TRUE" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SPIFAM  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)"
                       9 "NOT CALCULATED (Due to Does not apply)" ;
label define C1SK8A1   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SK8A2   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" 9 "INAPP" ;
label define C1SK8B1   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SK8B2   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" 9 "INAPP" ;
label define C1SK8C1   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SK8C2   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" 9 "INAPP" ;
label define C1SK8D1   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SK8D2   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       3 "DOES NOT APPLY" 8 "REFUSED" 9 "INAPP" ;
label define C1SK9     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SK10    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SK11    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SK12    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY SERIOUS/STRESSFUL"
                       2 "SOMEWHAT SERIOUS/STRESSFUL"
                       3 "A LITTLE SERIOUS/STRESSFUL"
                       4 "NOT AT ALL SERIOUS/STRESSFUL" 8 "REFUSED" 9 "INAPP" ;
label define C1SK13    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "VERY SERIOUS/STRESSFUL"
                       2 "SOMEWHAT SERIOUS/STRESSFUL"
                       3 "A LITTLE SERIOUS/STRESSFUL"
                       4 "NOT AT ALL SERIOUS/STRESSFUL" 8 "REFUSED" 9 "INAPP" ;
label define C1SL1     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SL2     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "WORST"
                       10 "BEST" 98 "REFUSED" 99 "INAPP" ;
label define C1SL3     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "WORST"
                       10 "BEST" 98 "REFUSED" 99 "INAPP" ;
label define C1SL4     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "WORST"
                       10 "BEST" 98 "REFUSED" 99 "INAPP" ;
label define C1SL5     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "NONE"
                       10 "VERY MUCH" 98 "REFUSED" 99 "INAPP" ;
label define C1SL6     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "NONE"
                       10 "VERY MUCH" 98 "REFUSED" 99 "INAPP" ;
label define C1SL7     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "EXCELLENT"
                       2 "VERY GOOD" 3 "GOOD" 4 "FAIR" 5 "POOR" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SL8     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "NEVER"
                       2 "ONCE" 3 "A FEW TIMES" 4 "MOST OF THE TIME"
                       5 "ALL OF THE TIME" 8 "REFUSED" 9 "INAPP" ;
label define C1SL9     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "VERY LIKELY"
                       2 "SOMEWHAT LIKELY" 3 "NOT VERY LIKELY"
                       4 "NOT LIKELY AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define C1SMARRS  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)"
                       99 "NOT CALCULATED (Due to Does not apply)" ;
label define C1SL10A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SL10B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SL10C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SSPDIS  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)"
                       99 "NOT CALCULATED (Due to Does not apply)" ;
label define C1SL11    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AT LEAST ONCE A DAY" 2 "A FEW TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "A FEW TIMES A MONTH"
                       5 "LESS OFTEN THAN THAT" 8 "REFUSED" 9 "INAPP" ;
label define C1SL12A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SL12B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SL12C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SL12D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SL12E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SL12F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SL12G   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SL12H   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SL12I   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SL12J   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SL12K   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SL12L   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SSPEMP  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)"
                       9 "NOT CALCULATED (Due to Does not apply)" ;
label define C1SSPCRI  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)"
                       9 "NOT CALCULATED (Due to Does not apply)" ;
label define C1SSPSOL  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       8 "NOT CALCULATED (Due to missing data)"
                       9 "NOT CALCULATED (Due to Does not apply)" ;
label define C1SL13    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "YOU DO A LOT MORE THAN YOUR SPOUSE"
                       2 "YOU DO SOMEWHAT MORE THAN YOUR SPOUSE"
                       3 "YOU DO A LITTLE MORE THAN YOUR SPOUSE"
                       4 "CHORES ARE SPLIT EQUALLY"
                       5 "YOUR SPOUSE DOES A LITTLE MORE THAN YOU"
                       6 "YOUR SPOUSE DOES SOMEWHAT MORE THAN YOU"
                       7 "YOUR SPOUSE DOES A LOT MORE THAN YOU" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SL14    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED"
                       999 "INAPP" ;
label define C1SL15    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED"
                       999 "INAPP" ;
label define C1SL16    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "VERY FAIR"
                       2 "SOMEWHAT FAIR" 3 "SOMEWHAT UNFAIR" 4 "VERY UNFAIR"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SL17    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "VERY FAIR"
                       2 "SOMEWHAT FAIR" 3 "SOMEWHAT UNFAIR" 4 "VERY UNFAIR"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SL18A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define C1SL18B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define C1SL18C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define C1SL18D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE NOR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define C1SSPDEC  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)"
                       99 "NOT CALCULATED (Due to Does not apply)" ;
label define C1SL19    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "EXCELLENT"
                       2 "VERY GOOD" 3 "GOOD" 4 "FAIR" 5 "POOR" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SL20    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "EXCELLENT"
                       2 "VERY GOOD" 3 "GOOD" 4 "FAIR" 5 "POOR" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SL21    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SL22    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED"
                       999 "INAPP" ;
label define C1SL23    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 998 "REFUSED"
                       999 "INAPP" ;
label define C1SL24A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "4 OR MORE TIMES PER WEEK" 2 "2 TO 3 TIMES PER WEEK"
                       3 "ONCE A WEEK" 4 "1 TO 3 TIMES PER MONTH"
                       5 "LESS THAN ONCE A MONTH OR NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SL24B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "4 OR MORE TIMES PER WEEK" 2 "2 TO 3 TIMES PER WEEK"
                       3 "ONCE A WEEK" 4 "1 TO 3 TIMES PER MONTH"
                       5 "LESS THAN ONCE A MONTH OR NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SL24C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "4 OR MORE TIMES PER WEEK" 2 "2 TO 3 TIMES PER WEEK"
                       3 "ONCE A WEEK" 4 "1 TO 3 TIMES PER MONTH"
                       5 "LESS THAN ONCE A MONTH OR NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SL24D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "4 OR MORE TIMES PER WEEK" 2 "2 TO 3 TIMES PER WEEK"
                       3 "ONCE A WEEK" 4 "1 TO 3 TIMES PER MONTH"
                       5 "LESS THAN ONCE A MONTH OR NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SL25A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SL25B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SL25C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "AM" 2 "PM"
                       3 "MIDNIGHT" 4 "NOON" 8 "REFUSED" 9 "INAPP" ;
label define C1SL26A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SL26B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SL26C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "AM" 2 "PM"
                       3 "MIDNIGHT" 4 "NOON" 8 "REFUSED" 9 "INAPP" ;
label define C1SL27A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SL27B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 98 "REFUSED"
                       99 "INAPP" ;
label define C1SL28    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "EXCELLENT"
                       2 "VERY GOOD" 3 "GOOD" 4 "FAIR" 5 "POOR" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SM1     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "WORST"
                       10 "BEST" 98 "REFUSED" ;
label define C1SM2     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "WORST"
                       10 "BEST" 98 "REFUSED" ;
label define C1SM3     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "WORST"
                       10 "BEST" 98 "REFUSED" ;
label define C1SM4     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "NONE"
                       10 "VERY MUCH" 98 "REFUSED" ;
label define C1SM5     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "NONE"
                       10 "VERY MUCH" 98 "REFUSED" ;
label define C1SM6     -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "HETEROSEXUAL" 2 "HOMOSEXUAL" 3 "BISEXUAL"
                       8 "REFUSED" ;
label define C1SM7     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SM8     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "ONE" 2 "TWO"
                       3 "THREE" 4 "FOUR" 5 "FIVE" 6 "SIX OR MORE"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SM9     -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "TWO OR MORE TIMES A WEEK" 2 "ONCE A WEEK"
                       3 "TWO OR THREE TIMES A MONTH" 4 "ONCE A MONTH"
                       5 "LESS OFTEN THAN ONCE A MONTH"
                       6 "NEVER OR NOT AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define C1SM10    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SM11    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SM12    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "NEVER"
                       2 "SOMEOF THE TIME" 3 "MOST OF THE TIMES" 4 "ALWAYS"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SM13    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "NEVER"
                       2 "SOMEOF THE TIME" 3 "MOST OF THE TIMES" 4 "ALWAYS"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SN1A    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "NO RELIGIOUS PREF" 2 "AGNOSTIC" 3 "ATHEIST"
                       4 "PROTESTANT, INTERDENOMINATIONAL"
                       5 "PROTESTANT, NO DENOMINATION" 6 "APOSTOLIC"
                       7 "ASSEMBLY OF GOD" 8 "BAPTIST (ALL TYPES)"
                       9 "BORN-AGAIN CHRISTIAN" 10 "BRETHREN"
                       11 "DISCIPLES OF CHRIST" 12 "CHRISTIAN REFORMED"
                       13 "CHURCH OF GOD" 14 "CONGREGATIONAL"
                       15 "EPISCOPALIAN" 16 "EVANGELICAL" 17 "HOLINESS"
                       18 "JEHOVAH'S WITNESS" 19 "LUTHERAN" 20 "MENNONITE"
                       21 "METHODIST" 22 "MORMON, LATTER DAY ST"
                       23 "NAZARENE" 24 "PENTECOSTAL" 25 "PRESBYTERIAN"
                       26 "QUAKER" 27 "SALVATION ARMY" 28 "SANCTIFIED"
                       29 "SEVENTH DAY ADVENTIST" 30 "SPIRITUAL"
                       31 "UNITARIAN" 32 "UNITED CHURCH CHRIST"
                       33 "PROTESTANT, OTHER" 34 "CATHOLIC, ROMAN"
                       35 "CATHOLIC, UKRAINIAN" 36 "ORTHODOX"
                       37 "CATHOLIC, OTHER" 38 "JEWISH ORTHODOX"
                       39 "JEWISH CONSERVATIVE" 40 "JEWISH REFORM"
                       41 "JEWISH RECONST." 42 "JEWISH OTHER" 43 "BUDDHIST"
                       44 "HINDU" 45 "MUSLIM" 46 "RASTAFARIAN" 47 "OTHER"
                       98 "REFUSED" ;
label define C1SN1B    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "NO RELIGIOUS PREF" 2 "AGNOSTIC" 3 "ATHEIST"
                       4 "PROTESTANT, INTERDENOMINATIONAL"
                       5 "PROTESTANT, NO DENOMINATION" 6 "APOSTOLIC"
                       7 "ASSEMBLY OF GOD" 8 "BAPTIST (ALL TYPES)"
                       9 "BORN-AGAIN CHRISTIAN" 10 "BRETHREN"
                       11 "DISCIPLES OF CHRIST" 12 "CHRISTIAN REFORMED"
                       13 "CHURCH OF GOD" 14 "CONGREGATIONAL"
                       15 "EPISCOPALIAN" 16 "EVANGELICAL" 17 "HOLINESS"
                       18 "JEHOVAH'S WITNESS" 19 "LUTHERAN" 20 "MENNONITE"
                       21 "METHODIST" 22 "MORMON, LATTER DAY ST"
                       23 "NAZARENE" 24 "PENTECOSTAL" 25 "PRESBYTERIAN"
                       26 "QUAKER" 27 "SALVATION ARMY" 28 "SANCTIFIED"
                       29 "SEVENTH DAY ADVENTIST" 30 "SPIRITUAL"
                       31 "UNITARIAN" 32 "UNITED CHURCH CHRIST"
                       33 "PROTESTANT, OTHER" 34 "CATHOLIC, ROMAN"
                       35 "CATHOLIC, UKRAINIAN" 36 "ORTHODOX"
                       37 "CATHOLIC, OTHER" 38 "JEWISH ORTHODOX"
                       39 "JEWISH CONSERVATIVE" 40 "JEWISH REFORM"
                       41 "JEWISH RECONST." 42 "JEWISH OTHER" 43 "BUDDHIST"
                       44 "HINDU" 45 "MUSLIM" 46 "RASTAFARIAN" 47 "OTHER"
                       98 "REFUSED" 99 "INAPP" ;
label define C1SN1C    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "NO RELIGIOUS PREF" 2 "AGNOSTIC" 3 "ATHEIST"
                       4 "PROTESTANT, INTERDENOMINATIONAL"
                       5 "PROTESTANT, NO DENOMINATION" 6 "APOSTOLIC"
                       7 "ASSEMBLY OF GOD" 8 "BAPTIST (ALL TYPES)"
                       9 "BORN-AGAIN CHRISTIAN" 10 "BRETHREN"
                       11 "DISCIPLES OF CHRIST" 12 "CHRISTIAN REFORMED"
                       13 "CHURCH OF GOD" 14 "CONGREGATIONAL"
                       15 "EPISCOPALIAN" 16 "EVANGELICAL" 17 "HOLINESS"
                       18 "JEHOVAH'S WITNESS" 19 "LUTHERAN" 20 "MENNONITE"
                       21 "METHODIST" 22 "MORMON, LATTER DAY ST"
                       23 "NAZARENE" 24 "PENTECOSTAL" 25 "PRESBYTERIAN"
                       26 "QUAKER" 27 "SALVATION ARMY" 28 "SANCTIFIED"
                       29 "SEVENTH DAY ADVENTIST" 30 "SPIRITUAL"
                       31 "UNITARIAN" 32 "UNITED CHURCH CHRIST"
                       33 "PROTESTANT, OTHER" 34 "CATHOLIC, ROMAN"
                       35 "CATHOLIC, UKRAINIAN" 36 "ORTHODOX"
                       37 "CATHOLIC, OTHER" 38 "JEWISH ORTHODOX"
                       39 "JEWISH CONSERVATIVE" 40 "JEWISH REFORM"
                       41 "JEWISH RECONST." 42 "JEWISH OTHER" 43 "BUDDHIST"
                       44 "HINDU" 45 "MUSLIM" 46 "RASTAFARIAN" 47 "OTHER"
                       98 "REFUSED" 99 "INAPP" ;
label define C1SN2A    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOMEWHAT" 3 "NOT VERY" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SN2B    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOMEWHAT" 3 "NOT VERY" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SN2C    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOMEWHAT" 3 "NOT VERY" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SN2D    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOMEWHAT" 3 "NOT VERY" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SN2E    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOMEWHAT" 3 "NOT VERY" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SN2F    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOMEWHAT" 3 "NOT VERY" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SN2G    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOMEWHAT" 3 "NOT VERY" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SN2H    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOMEWHAT" 3 "NOT VERY" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SN2I    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOMEWHAT" 3 "NOT VERY" 4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SSPIRI  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SRELID  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SN3A    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ONCE A DAY OR MORE" 2 "A FEW TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "1-3 TIMES PER MONTH"
                       5 "LESS THAN ONCE PER MONTH" 6 "NEVER" 8 "REFUSED" ;
label define C1SN3B    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ONCE A DAY OR MORE" 2 "A FEW TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "1-3 TIMES PER MONTH"
                       5 "LESS THAN ONCE PER MONTH" 6 "NEVER" 8 "REFUSED" ;
label define C1SN3C    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ONCE A DAY OR MORE" 2 "A FEW TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "1-3 TIMES PER MONTH"
                       5 "LESS THAN ONCE PER MONTH" 6 "NEVER" 8 "REFUSED" ;
label define C1SN3D    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ONCE A DAY OR MORE" 2 "A FEW TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "1-3 TIMES PER MONTH"
                       5 "LESS THAN ONCE PER MONTH" 6 "NEVER" 8 "REFUSED" ;
label define C1SN3E    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "ONCE A DAY OR MORE" 2 "A FEW TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "1-3 TIMES PER MONTH"
                       5 "LESS THAN ONCE PER MONTH" 6 "NEVER" 8 "REFUSED" ;
label define C1SRELPR  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SN4     -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "EXPLORE DIFFERENT TEACHINGS" 2 "STICK TO ONE FAITH"
                       3 "NEITHER" 8 "REFUSED" ;
label define C1SN5     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SN6     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SN7     -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "NEITHER AGREE NOR DISAGREE" 4 "SOMEWHAT DISAGREE"
                       5 "STRONGLY DISAGREE" 8 "REFUSED" 9 "INAPP" ;
label define C1SN8     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SN9A    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "A GREAT DEAL" 2 "SOME" 3 "A LITTLE" 4 "NONE"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SN9B    -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "A GREAT DEAL" 2 "SOME" 3 "A LITTLE" 4 "NONE"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SN9C    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "OFTEN"
                       2 "SOMETIMES" 3 "RARELY" 4 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SN9D    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "OFTEN"
                       2 "SOMETIMES" 3 "RARELY" 4 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SRELSU  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)"
                       99 "NOT CALCULATED (Due to Does not apply)" ;
label define C1SN10A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "OFTEN"
                       2 "SOMETIMES" 3 "RARELY" 4 "NEVER" 8 "REFUSED" ;
label define C1SN10B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "OFTEN"
                       2 "SOMETIMES" 3 "RARELY" 4 "NEVER" 8 "REFUSED" ;
label define C1SN10C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "A GREAT DEAL" 2 "SOMEWHAT" 3 "A LITTLE BIT"
                       4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SN10D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "A GREAT DEAL" 2 "SOMEWHAT" 3 "A LITTLE BIT"
                       4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SN10E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "A GREAT DEAL" 2 "SOMEWHAT" 3 "A LITTLE BIT"
                       4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SN10F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "A GREAT DEAL" 2 "SOMEWHAT" 3 "A LITTLE BIT"
                       4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SN10G   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "A GREAT DEAL" 2 "SOMEWHAT" 3 "A LITTLE BIT"
                       4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SN10H   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "A GREAT DEAL" 2 "SOMEWHAT" 3 "A LITTLE BIT"
                       4 "NOT AT ALL" 8 "REFUSED" ;
label define C1SRELCA  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SRELCB  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SN11A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "OFTEN"
                       2 "SOMETIMES" 3 "RARELY" 4 "NEVER" 8 "REFUSED" ;
label define C1SN11B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "OFTEN"
                       2 "SOMETIMES" 3 "RARELY" 4 "NEVER" 8 "REFUSED" ;
label define C1SN11C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "OFTEN"
                       2 "SOMETIMES" 3 "RARELY" 4 "NEVER" 8 "REFUSED" ;
label define C1SN11D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "OFTEN"
                       2 "SOMETIMES" 3 "RARELY" 4 "NEVER" 8 "REFUSED" ;
label define C1SN11E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "OFTEN"
                       2 "SOMETIMES" 3 "RARELY" 4 "NEVER" 8 "REFUSED" ;
label define C1SSPRTE  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SN12A   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "STRONGLY AGREE" 2 "AGREE"
                       3 "NEITHER AGREE NOR DISAGREE" 4 "DISAGREE"
                       5 "STRONGLY DISAGREE" 8 "REFUSED" ;
label define C1SN12B   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "STRONGLY AGREE" 2 "AGREE"
                       3 "NEITHER AGREE NOR DISAGREE" 4 "DISAGREE"
                       5 "STRONGLY DISAGREE" 8 "REFUSED" ;
label define C1SN12C   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "STRONGLY AGREE" 2 "AGREE"
                       3 "NEITHER AGREE NOR DISAGREE" 4 "DISAGREE"
                       5 "STRONGLY DISAGREE" 8 "REFUSED" ;
label define C1SN12D   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "STRONGLY AGREE" 2 "AGREE"
                       3 "NEITHER AGREE NOR DISAGREE" 4 "DISAGREE"
                       5 "STRONGLY DISAGREE" 8 "REFUSED" ;
label define C1SN12E   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "STRONGLY AGREE" 2 "AGREE"
                       3 "NEITHER AGREE NOR DISAGREE" 4 "DISAGREE"
                       5 "STRONGLY DISAGREE" 8 "REFUSED" ;
label define C1SN12F   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "STRONGLY AGREE" 2 "AGREE"
                       3 "NEITHER AGREE NOR DISAGREE" 4 "DISAGREE"
                       5 "STRONGLY DISAGREE" 8 "REFUSED" ;
label define C1SN12G   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "STRONGLY AGREE" 2 "AGREE"
                       3 "NEITHER AGREE NOR DISAGREE" 4 "DISAGREE"
                       5 "STRONGLY DISAGREE" 8 "REFUSED" ;
label define C1SN12H   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "STRONGLY AGREE" 2 "AGREE"
                       3 "NEITHER AGREE NOR DISAGREE" 4 "DISAGREE"
                       5 "STRONGLY DISAGREE" 8 "REFUSED" ;
label define C1SN12I   -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       1 "STRONGLY AGREE" 2 "AGREE"
                       3 "NEITHER AGREE NOR DISAGREE" 4 "DISAGREE"
                       5 "STRONGLY DISAGREE" 8 "REFUSED" ;
label define C1SMNDFU  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SP1A    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 9998 "REFUSED" ;
label define C1SP1B    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 9998 "REFUSED" ;
label define C1SP1C    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 9998 "REFUSED" ;
label define C1SP1D    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 9998 "REFUSED" ;
label define C1SP1E    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 9998 "REFUSED" ;
label define C1SP1F    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 9998 "REFUSED" ;
label define C1SP1G    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 9998 "REFUSED" ;
label define C1SP1H    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 9998 "REFUSED" ;
label define C1SP1I    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 9998 "REFUSED" ;
label define C1SP1J    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 9998 "REFUSED" ;
label define C1SP1K    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 9998 "REFUSED" ;
label define C1SLFEDI  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SP2A    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "OFTEN"
                       2 "SOMETIMES" 3 "RARELY" 4 "NEVER" 8 "REFUSED" ;
label define C1SP2B    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "OFTEN"
                       2 "SOMETIMES" 3 "RARELY" 4 "NEVER" 8 "REFUSED" ;
label define C1SP2C    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "OFTEN"
                       2 "SOMETIMES" 3 "RARELY" 4 "NEVER" 8 "REFUSED" ;
label define C1SP2D    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "OFTEN"
                       2 "SOMETIMES" 3 "RARELY" 4 "NEVER" 8 "REFUSED" ;
label define C1SP2E    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "OFTEN"
                       2 "SOMETIMES" 3 "RARELY" 4 "NEVER" 8 "REFUSED" ;
label define C1SP2F    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "OFTEN"
                       2 "SOMETIMES" 3 "RARELY" 4 "NEVER" 8 "REFUSED" ;
label define C1SP2G    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "OFTEN"
                       2 "SOMETIMES" 3 "RARELY" 4 "NEVER" 8 "REFUSED" ;
label define C1SP2H    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "OFTEN"
                       2 "SOMETIMES" 3 "RARELY" 4 "NEVER" 8 "REFUSED" ;
label define C1SP2I    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "OFTEN"
                       2 "SOMETIMES" 3 "RARELY" 4 "NEVER" 8 "REFUSED" ;
label define C1SDAYDI  -1 "RESPONDENT DOES NOT HAVE SAQ DATA"
                       98 "NOT CALCULATED (Due to missing data)" ;
label define C1SP3     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" ;
label define C1SP4A    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SP4B    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SP4C    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SP4D    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SP4E    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SP4F    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SP4G    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SP4H    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SP4I    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SP4J    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SP4K    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SP4L    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SP4M    -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "YES" 2 "NO"
                       8 "REFUSED" 9 "INAPP" ;
label define C1SP5     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SP6     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 1 "A LOT"
                       2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL" 8 "REFUSED"
                       9 "INAPP" ;
label define C1SQ1     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "WORST"
                       10 "BEST" 98 "REFUSED" ;
label define C1SQ2     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "WORST"
                       10 "BEST" 98 "REFUSED" ;
label define C1SQ3     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "WORST"
                       10 "BEST" 98 "REFUSED" ;
label define C1SQ4     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "NONE"
                       10 "VERY MUCH" 98 "REFUSED" ;
label define C1SQ5     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "NONE"
                       10 "VERY MUCH" 98 "REFUSED" ;
label define C1SQ6     -1 "RESPONDENT DOES NOT HAVE SAQ DATA" 0 "WORST"
                       10 "BEST" 98 "REFUSED" ;


#delimit cr


/***************************************************************************

 Section 5: Missing Values

 This section will replace numeric missing values (i.e., -9) with generic
 system missing ".".  By default the code in this section is commented out.
 Users wishing to apply the generic missing values should remove the comment
 at the beginning and end of this section.  Note that Stata allows you to
 specify up to 27 unique missing value codes.

****************************************************************/

/*
replace C1PIDATE_YR = . if (C1PIDATE_YR == 9997 | C1PIDATE_YR == 9998 | C1PIDATE_YR == 9999)
replace C1PAA1 = . if (C1PAA1 == 7 | C1PAA1 == 8)
replace C1PAA2A = . if (C1PAA2A == 7 | C1PAA2A == 8 | C1PAA2A == 9)
replace C1PAA2B = . if (C1PAA2B == 7 | C1PAA2B == 8 | C1PAA2B == 9)
replace C1PAA2C = . if (C1PAA2C == 7 | C1PAA2C == 8 | C1PAA2C == 9)
replace C1PAA2D = . if (C1PAA2D == 7 | C1PAA2D == 8 | C1PAA2D == 9)
replace C1PAA2E = . if (C1PAA2E == 7 | C1PAA2E == 8 | C1PAA2E == 9)
replace C1PAA2F = . if (C1PAA2F == 7 | C1PAA2F == 8 | C1PAA2F == 9)
replace C1PAA2G = . if (C1PAA2G == 7 | C1PAA2G == 8 | C1PAA2G == 9)
replace C1PAA2H = . if (C1PAA2H == 7 | C1PAA2H == 8 | C1PAA2H == 9)
replace C1PAA2I = . if (C1PAA2I == 7 | C1PAA2I == 8 | C1PAA2I == 9)
replace C1PAA2I1 = . if (C1PAA2I1 == 999999997 | C1PAA2I1 == 999999998 | C1PAA2I1 == 999999999)
replace C1PAA2J = . if (C1PAA2J == 7 | C1PAA2J == 8 | C1PAA2J == 9)
replace C1PAA2J1 = . if (C1PAA2J1 == 999999997 | C1PAA2J1 == 999999998 | C1PAA2J1 == 999999999)
replace C1PAA2K = . if (C1PAA2K == 7 | C1PAA2K == 8 | C1PAA2K == 9)
replace C1PAA2K1 = . if (C1PAA2K1 == 999999997 | C1PAA2K1 == 999999998 | C1PAA2K1 == 999999999)
replace C1PAA2L = . if (C1PAA2L == 7 | C1PAA2L == 8 | C1PAA2L == 9)
replace C1PAA2L2 = . if (C1PAA2L2 == 999999997 | C1PAA2L2 == 999999998 | C1PAA2L2 == 999999999)
replace C1PAA2M = . if (C1PAA2M == 7 | C1PAA2M == 8 | C1PAA2M == 9)
replace C1PAA2N = . if (C1PAA2N == 7 | C1PAA2N == 8 | C1PAA2N == 9)
replace C1PAA2O = . if (C1PAA2O == 7 | C1PAA2O == 8 | C1PAA2O == 9)
replace C1PAA2P = . if (C1PAA2P == 7 | C1PAA2P == 8 | C1PAA2P == 9)
replace C1PAA2Q = . if (C1PAA2Q == 7 | C1PAA2Q == 8 | C1PAA2Q == 9)
replace C1PAA2R = . if (C1PAA2R == 7 | C1PAA2R == 8 | C1PAA2R == 9)
replace C1PAA2S = . if (C1PAA2S == 7 | C1PAA2S == 8 | C1PAA2S == 9)
replace C1PAA2T = . if (C1PAA2T == 7 | C1PAA2T == 8 | C1PAA2T == 9)
replace C1PAA2U = . if (C1PAA2U == 7 | C1PAA2U == 8 | C1PAA2U == 9)
replace C1PAA2V = . if (C1PAA2V == 7 | C1PAA2V == 8 | C1PAA2V == 9)
replace C1PAA2W = . if (C1PAA2W == 7 | C1PAA2W == 8 | C1PAA2W == 9)
replace C1PAA2X = . if (C1PAA2X == 7 | C1PAA2X == 8 | C1PAA2X == 9)
replace C1PAA2Y = . if (C1PAA2Y == 7 | C1PAA2Y == 8 | C1PAA2Y == 9)
replace C1PAA2Z = . if (C1PAA2Z == 7 | C1PAA2Z == 8 | C1PAA2Z == 9)
replace C1PAA3 = . if (C1PAA3 == 7 | C1PAA3 == 8)
replace C1PAA3A = . if (C1PAA3A == 7 | C1PAA3A == 8 | C1PAA3A == 9)
replace C1PAA4 = . if (C1PAA4 == 7 | C1PAA4 == 8)
replace C1PAA5 = . if (C1PAA5 == 7 | C1PAA5 == 8)
replace C1PAA6 = . if (C1PAA6 == 7 | C1PAA6 == 8)
replace C1PAA7 = . if (C1PAA7 == 7 | C1PAA7 == 8)
replace C1PAA8 = . if (C1PAA8 == 7 | C1PAA8 == 8)
replace C1PA1 = . if (C1PA1 == 7 | C1PA1 == 8)
replace C1PA2 = . if (C1PA2 == 7 | C1PA2 == 8)
replace C1PA3 = . if (C1PA3 == 7 | C1PA3 == 8)
replace C1PA4 = . if (C1PA4 == 97 | C1PA4 == 98)
replace C1PA4A = . if (C1PA4A == 7 | C1PA4A == 8 | C1PA4A == 9)
replace C1PA4BA = . if (C1PA4BA == 97 | C1PA4BA == 98 | C1PA4BA == 99)
replace C1PA4BB = . if (C1PA4BB == 97 | C1PA4BB == 98 | C1PA4BB == 99)
replace C1PA4BC = . if (C1PA4BC == 97 | C1PA4BC == 98 | C1PA4BC == 99)
replace C1PA5 = . if (C1PA5 == 97 | C1PA5 == 98 | C1PA5 == 99)
replace C1PA5A = . if (C1PA5A == 7 | C1PA5A == 8 | C1PA5A == 9)
replace C1PA5BA = . if (C1PA5BA == 97 | C1PA5BA == 98 | C1PA5BA == 99)
replace C1PA5BB = . if (C1PA5BB == 97 | C1PA5BB == 98 | C1PA5BB == 99)
replace C1PA5BC = . if (C1PA5BC == 97 | C1PA5BC == 98 | C1PA5BC == 99)
replace C1PA6A = . if (C1PA6A == 7 | C1PA6A == 8)
replace C1PA6B = . if (C1PA6B == 7 | C1PA6B == 8)
replace C1PA6C = . if (C1PA6C == 7 | C1PA6C == 8)
replace C1PA6D = . if (C1PA6D == 7 | C1PA6D == 8)
replace C1PA7 = . if (C1PA7 == 7 | C1PA7 == 8)
replace C1PA7A = . if (C1PA7A == 97 | C1PA7A == 98 | C1PA7A == 99)
replace C1PA7BA = . if (C1PA7BA == 97 | C1PA7BA == 98 | C1PA7BA == 99)
replace C1PA7BB = . if (C1PA7BB == 97 | C1PA7BB == 98 | C1PA7BB == 99)
replace C1PA7BC = . if (C1PA7BC == 97 | C1PA7BC == 98 | C1PA7BC == 99)
replace C1PA7BD = . if (C1PA7BD == 97 | C1PA7BD == 98 | C1PA7BD == 99)
replace C1PA7BE = . if (C1PA7BE == 97 | C1PA7BE == 98 | C1PA7BE == 99)
replace C1PA7BF = . if (C1PA7BF == 97 | C1PA7BF == 98 | C1PA7BF == 99)
replace C1PA7BG = . if (C1PA7BG == 97 | C1PA7BG == 98 | C1PA7BG == 99)
replace C1PA7BH = . if (C1PA7BH == 97 | C1PA7BH == 98 | C1PA7BH == 99)
replace C1PA7BI = . if (C1PA7BI == 97 | C1PA7BI == 98 | C1PA7BI == 99)
replace C1PA7BJ = . if (C1PA7BJ == 97 | C1PA7BJ == 98 | C1PA7BJ == 99)
replace C1PA7C = . if (C1PA7C == 7 | C1PA7C == 8 | C1PA7C == 9)
replace C1PA7D = . if (C1PA7D == 7 | C1PA7D == 8 | C1PA7D == 9)
replace C1PA8 = . if (C1PA8 == 7 | C1PA8 == 8 | C1PA8 == 9)
replace C1PA8A = . if (C1PA8A == 9997 | C1PA8A == 9998 | C1PA8A == 9999)
replace C1PA9 = . if (C1PA9 == 7 | C1PA9 == 8 | C1PA9 == 9)
replace C1PA9A = . if (C1PA9A == 7 | C1PA9A == 8 | C1PA9A == 9)
replace C1PA9B = . if (C1PA9B == 7 | C1PA9B == 8 | C1PA9B == 9)
replace C1PHRTRS = . if (C1PHRTRS == 8)
replace C1PHRTDX = . if (C1PHRTDX == 8)
replace C1PA10A = . if (C1PA10A == 7 | C1PA10A == 8)
replace C1PA10B = . if (C1PA10B == 7 | C1PA10B == 8)
replace C1PA10C = . if (C1PA10C == 7 | C1PA10C == 8)
replace C1PA10D = . if (C1PA10D == 7 | C1PA10D == 8)
replace C1PA10E = . if (C1PA10E == 7 | C1PA10E == 8)
replace C1PA10F = . if (C1PA10F == 7 | C1PA10F == 8)
replace C1PA10G = . if (C1PA10G == 7 | C1PA10G == 8)
replace C1PA10H = . if (C1PA10H == 7 | C1PA10H == 8)
replace C1PA11 = . if (C1PA11 == 7 | C1PA11 == 8)
replace C1PA12 = . if (C1PA12 == 7 | C1PA12 == 8)
replace C1PA13 = . if (C1PA13 == 7 | C1PA13 == 8)
replace C1PA14 = . if (C1PA14 == 7 | C1PA14 == 8)
replace C1PA15 = . if (C1PA15 == 7 | C1PA15 == 8)
replace C1PA16 = . if (C1PA16 == 7 | C1PA16 == 8 | C1PA16 == 9)
replace C1PA17 = . if (C1PA17 == 7 | C1PA17 == 8)
replace C1PA18 = . if (C1PA18 == 7 | C1PA18 == 8)
replace C1PA19 = . if (C1PA19 == 7 | C1PA19 == 8 | C1PA19 == 9)
replace C1PA20 = . if (C1PA20 == 7 | C1PA20 == 8 | C1PA20 == 9)
replace C1PA21 = . if (C1PA21 == 7 | C1PA21 == 8 | C1PA21 == 9)
replace C1PA22 = . if (C1PA22 == 7 | C1PA22 == 8 | C1PA22 == 9)
replace C1PANGIN = . if (C1PANGIN == 8)
replace C1PA23 = . if (C1PA23 == 7 | C1PA23 == 8)
replace C1PA23A = . if (C1PA23A == 97 | C1PA23A == 98 | C1PA23A == 99)
replace C1PA23B = . if (C1PA23B == 7 | C1PA23B == 8 | C1PA23B == 9)
replace C1PA23CA = . if (C1PA23CA == 97 | C1PA23CA == 98 | C1PA23CA == 99)
replace C1PA23CB = . if (C1PA23CB == 97 | C1PA23CB == 98 | C1PA23CB == 99)
replace C1PA23CC = . if (C1PA23CC == 97 | C1PA23CC == 98 | C1PA23CC == 99)
replace C1PA23CD = . if (C1PA23CD == 97 | C1PA23CD == 98 | C1PA23CD == 99)
replace C1PA23CE = . if (C1PA23CE == 97 | C1PA23CE == 98 | C1PA23CE == 99)
replace C1PA23CF = . if (C1PA23CF == 97 | C1PA23CF == 98 | C1PA23CF == 99)
replace C1PA23CG = . if (C1PA23CG == 97 | C1PA23CG == 98 | C1PA23CG == 99)
replace C1PA23CH = . if (C1PA23CH == 97 | C1PA23CH == 98 | C1PA23CH == 99)
replace C1PA23CI = . if (C1PA23CI == 97 | C1PA23CI == 98 | C1PA23CI == 99)
replace C1PA23CJ = . if (C1PA23CJ == 97 | C1PA23CJ == 98 | C1PA23CJ == 99)
replace C1PA24 = . if (C1PA24 == 7 | C1PA24 == 8 | C1PA24 == 9)
replace C1PA24A = . if (C1PA24A == 97 | C1PA24A == 98 | C1PA24A == 99)
replace C1PA24B = . if (C1PA24B == 7 | C1PA24B == 8 | C1PA24B == 9)
replace C1PA24C = . if (C1PA24C == 7 | C1PA24C == 8 | C1PA24C == 9)
replace C1PA24D = . if (C1PA24D == 7 | C1PA24D == 8 | C1PA24D == 9)
replace C1PA24EA = . if (C1PA24EA == 7 | C1PA24EA == 8 | C1PA24EA == 9)
replace C1PA24EB = . if (C1PA24EB == 7 | C1PA24EB == 8 | C1PA24EB == 9)
replace C1PA24EC = . if (C1PA24EC == 7 | C1PA24EC == 8 | C1PA24EC == 9)
replace C1PA24ED = . if (C1PA24ED == 7 | C1PA24ED == 8 | C1PA24ED == 9)
replace C1PA24EE = . if (C1PA24EE == 7 | C1PA24EE == 8 | C1PA24EE == 9)
replace C1PA24EF = . if (C1PA24EF == 7 | C1PA24EF == 8 | C1PA24EF == 9)
replace C1PA25NM = . if (C1PA25NM == 97 | C1PA25NM == 98)
replace C1PA25IN = . if (C1PA25IN == 7 | C1PA25IN == 8 | C1PA25IN == 9)
replace C1PA25A = . if (C1PA25A == 7 | C1PA25A == 8 | C1PA25A == 9)
replace C1PA25BS = . if (C1PA25BS == 997 | C1PA25BS == 998 | C1PA25BS == 999)
replace C1PA25BD = . if (C1PA25BD == 997 | C1PA25BD == 998 | C1PA25BD == 999)
replace C1PA26 = . if (C1PA26 == 7 | C1PA26 == 8)
replace C1PA27 = . if (C1PA27 == 7 | C1PA27 == 8 | C1PA27 == 9)
replace C1PA27A = . if (C1PA27A == 7 | C1PA27A == 8 | C1PA27A == 9)
replace C1PA27B = . if (C1PA27B == 7 | C1PA27B == 8 | C1PA27B == 9)
replace C1PCACRS = . if (C1PCACRS == 8)
replace C1PCACDX = . if (C1PCACDX == 8)
replace C1PA28A = . if (C1PA28A == 7 | C1PA28A == 8 | C1PA28A == 9)
replace C1PA28B = . if (C1PA28B == 7 | C1PA28B == 8 | C1PA28B == 9)
replace C1PA28C = . if (C1PA28C == 7 | C1PA28C == 8 | C1PA28C == 9)
replace C1PA28D = . if (C1PA28D == 7 | C1PA28D == 8 | C1PA28D == 9)
replace C1PA28E = . if (C1PA28E == 7 | C1PA28E == 8 | C1PA28E == 9)
replace C1PA28F = . if (C1PA28F == 7 | C1PA28F == 8 | C1PA28F == 9)
replace C1PA28G = . if (C1PA28G == 7 | C1PA28G == 8 | C1PA28G == 9)
replace C1PA28H = . if (C1PA28H == 7 | C1PA28H == 8 | C1PA28H == 9)
replace C1PA28I = . if (C1PA28I == 7 | C1PA28I == 8 | C1PA28I == 9)
replace C1PA28J = . if (C1PA28J == 7 | C1PA28J == 8 | C1PA28J == 9)
replace C1PA28AA = . if (C1PA28AA == 97 | C1PA28AA == 98 | C1PA28AA == 99)
replace C1PA28BB = . if (C1PA28BB == 97 | C1PA28BB == 98 | C1PA28BB == 99)
replace C1PA28CC = . if (C1PA28CC == 97 | C1PA28CC == 98 | C1PA28CC == 99)
replace C1PA28DD = . if (C1PA28DD == 97 | C1PA28DD == 98 | C1PA28DD == 99)
replace C1PA28EE = . if (C1PA28EE == 97 | C1PA28EE == 98 | C1PA28EE == 99)
replace C1PA28FF = . if (C1PA28FF == 97 | C1PA28FF == 98 | C1PA28FF == 99)
replace C1PA28GG = . if (C1PA28GG == 97 | C1PA28GG == 98 | C1PA28GG == 99)
replace C1PA28HH = . if (C1PA28HH == 97 | C1PA28HH == 98 | C1PA28HH == 99)
replace C1PA28II = . if (C1PA28II == 97 | C1PA28II == 98 | C1PA28II == 99)
replace C1PA28JJ = . if (C1PA28JJ == 97 | C1PA28JJ == 98 | C1PA28JJ == 99)
replace C1PA29 = . if (C1PA29 == 7 | C1PA29 == 8 | C1PA29 == 9)
replace C1PA29AA = . if (C1PA29AA == 7 | C1PA29AA == 8 | C1PA29AA == 9)
replace C1PA29AB = . if (C1PA29AB == 7 | C1PA29AB == 8 | C1PA29AB == 9)
replace C1PA29AC = . if (C1PA29AC == 7 | C1PA29AC == 8 | C1PA29AC == 9)
replace C1PA29AD = . if (C1PA29AD == 7 | C1PA29AD == 8 | C1PA29AD == 9)
replace C1PA29AE = . if (C1PA29AE == 7 | C1PA29AE == 8 | C1PA29AE == 9)
replace C1PA29AF = . if (C1PA29AF == 7 | C1PA29AF == 8 | C1PA29AF == 9)
replace C1PA29AG = . if (C1PA29AG == 7 | C1PA29AG == 8 | C1PA29AG == 9)
replace C1PA29AH = . if (C1PA29AH == 7 | C1PA29AH == 8 | C1PA29AH == 9)
replace C1PA29AI = . if (C1PA29AI == 7 | C1PA29AI == 8 | C1PA29AI == 9)
replace C1PA30A = . if (C1PA30A == 7 | C1PA30A == 8)
replace C1PA30B = . if (C1PA30B == 7 | C1PA30B == 8)
replace C1PA30C = . if (C1PA30C == 7 | C1PA30C == 8)
replace C1PA30D = . if (C1PA30D == 7 | C1PA30D == 8)
replace C1PA30E = . if (C1PA30E == 7 | C1PA30E == 8)
replace C1PA30F = . if (C1PA30F == 7 | C1PA30F == 8)
replace C1PA31A = . if (C1PA31A == 7 | C1PA31A == 8 | C1PA31A == 9)
replace C1PA31B = . if (C1PA31B == 7 | C1PA31B == 8 | C1PA31B == 9)
replace C1PA31C = . if (C1PA31C == 7 | C1PA31C == 8 | C1PA31C == 9)
replace C1PA31D = . if (C1PA31D == 7 | C1PA31D == 8 | C1PA31D == 9)
replace C1PA31E = . if (C1PA31E == 7 | C1PA31E == 8 | C1PA31E == 9)
replace C1PA31F = . if (C1PA31F == 7 | C1PA31F == 8 | C1PA31F == 9)
replace C1PA31H = . if (C1PA31H == 7 | C1PA31H == 8 | C1PA31H == 9)
replace C1PA31I = . if (C1PA31I == 7 | C1PA31I == 8 | C1PA31I == 9)
replace C1PA31J = . if (C1PA31J == 7 | C1PA31J == 8 | C1PA31J == 9)
replace C1PA32A = . if (C1PA32A == 7 | C1PA32A == 8 | C1PA32A == 9)
replace C1PA32C = . if (C1PA32C == 7 | C1PA32C == 8 | C1PA32C == 9)
replace C1PA32D = . if (C1PA32D == 7 | C1PA32D == 8 | C1PA32D == 9)
replace C1PA32E = . if (C1PA32E == 7 | C1PA32E == 8 | C1PA32E == 9)
replace C1PA32G = . if (C1PA32G == 7 | C1PA32G == 8 | C1PA32G == 9)
replace C1PA32H = . if (C1PA32H == 7 | C1PA32H == 8 | C1PA32H == 9)
replace C1PA32J = . if (C1PA32J == 7 | C1PA32J == 8 | C1PA32J == 9)
replace C1PA33A = . if (C1PA33A == 7 | C1PA33A == 8 | C1PA33A == 9)
replace C1PA33C = . if (C1PA33C == 7 | C1PA33C == 8 | C1PA33C == 9)
replace C1PA33D = . if (C1PA33D == 7 | C1PA33D == 8 | C1PA33D == 9)
replace C1PA33E = . if (C1PA33E == 7 | C1PA33E == 8 | C1PA33E == 9)
replace C1PA33G = . if (C1PA33G == 7 | C1PA33G == 8 | C1PA33G == 9)
replace C1PA33H = . if (C1PA33H == 7 | C1PA33H == 8 | C1PA33H == 9)
replace C1PA33J = . if (C1PA33J == 7 | C1PA33J == 8 | C1PA33J == 9)
replace C1PA34A = . if (C1PA34A == 7 | C1PA34A == 8 | C1PA34A == 9)
replace C1PA34B = . if (C1PA34B == 7 | C1PA34B == 8 | C1PA34B == 9)
replace C1PA34C = . if (C1PA34C == 7 | C1PA34C == 8 | C1PA34C == 9)
replace C1PA34D = . if (C1PA34D == 7 | C1PA34D == 8 | C1PA34D == 9)
replace C1PA34E = . if (C1PA34E == 7 | C1PA34E == 8 | C1PA34E == 9)
replace C1PA34F = . if (C1PA34F == 7 | C1PA34F == 8 | C1PA34F == 9)
replace C1PA34H = . if (C1PA34H == 7 | C1PA34H == 8 | C1PA34H == 9)
replace C1PA34I = . if (C1PA34I == 7 | C1PA34I == 8 | C1PA34I == 9)
replace C1PA34J = . if (C1PA34J == 7 | C1PA34J == 8 | C1PA34J == 9)
replace C1PA35A = . if (C1PA35A == 7 | C1PA35A == 8 | C1PA35A == 9)
replace C1PA35B = . if (C1PA35B == 7 | C1PA35B == 8 | C1PA35B == 9)
replace C1PA35C = . if (C1PA35C == 7 | C1PA35C == 8 | C1PA35C == 9)
replace C1PA35D = . if (C1PA35D == 7 | C1PA35D == 8 | C1PA35D == 9)
replace C1PA35E = . if (C1PA35E == 7 | C1PA35E == 8 | C1PA35E == 9)
replace C1PA35F = . if (C1PA35F == 7 | C1PA35F == 8 | C1PA35F == 9)
replace C1PA35G = . if (C1PA35G == 7 | C1PA35G == 8 | C1PA35G == 9)
replace C1PA35H = . if (C1PA35H == 7 | C1PA35H == 8 | C1PA35H == 9)
replace C1PA35I = . if (C1PA35I == 7 | C1PA35I == 8 | C1PA35I == 9)
replace C1PA35J = . if (C1PA35J == 7 | C1PA35J == 8 | C1PA35J == 9)
replace C1PA36A = . if (C1PA36A == 7 | C1PA36A == 8 | C1PA36A == 9)
replace C1PA36AM = . if (C1PA36AM == 97 | C1PA36AM == 98 | C1PA36AM == 99)
replace C1PA36AY = . if (C1PA36AY == 9997 | C1PA36AY == 9998 | C1PA36AY == 9999)
replace C1PA36B = . if (C1PA36B == 7 | C1PA36B == 8 | C1PA36B == 9)
replace C1PA36C = . if (C1PA36C == 7 | C1PA36C == 8 | C1PA36C == 9)
replace C1PA36DM = . if (C1PA36DM == 97 | C1PA36DM == 98 | C1PA36DM == 99)
replace C1PA36DY = . if (C1PA36DY == 9997 | C1PA36DY == 9998 | C1PA36DY == 9999)
replace C1PA36EM = . if (C1PA36EM == 97 | C1PA36EM == 98 | C1PA36EM == 99)
replace C1PA36EY = . if (C1PA36EY == 9997 | C1PA36EY == 9998 | C1PA36EY == 9999)
replace C1PA37 = . if (C1PA37 == 97 | C1PA37 == 98)
replace C1PA38A = . if (C1PA38A == 7 | C1PA38A == 8 | C1PA38A == 9)
replace C1PA38B = . if (C1PA38B == 97 | C1PA38B == 98 | C1PA38B == 99)
replace C1PA39 = . if (C1PA39 == 7 | C1PA39 == 8 | C1PA39 == 9)
replace C1PA40 = . if (C1PA40 == 97 | C1PA40 == 98 | C1PA40 == 99)
replace C1PA41 = . if (C1PA41 == 7 | C1PA41 == 8 | C1PA41 == 9)
replace C1PA42 = . if (C1PA42 == 97 | C1PA42 == 98 | C1PA42 == 99)
replace C1PA43 = . if (C1PA43 == 97 | C1PA43 == 98 | C1PA43 == 99)
replace C1PA44 = . if (C1PA44 == 7 | C1PA44 == 8)
replace C1PA46 = . if (C1PA46 == 7 | C1PA46 == 8)
replace C1PA48 = . if (C1PA48 == 7 | C1PA48 == 8 | C1PA48 == 9)
replace C1PA47 = . if (C1PA47 == 7 | C1PA47 == 8)
replace C1PA49 = . if (C1PA49 == 97 | C1PA49 == 98)
replace C1PA50 = . if (C1PA50 == 7 | C1PA50 == 8 | C1PA50 == 9)
replace C1PA51 = . if (C1PA51 == 7 | C1PA51 == 8 | C1PA51 == 9)
replace C1PA51A = . if (C1PA51A == 7 | C1PA51A == 8 | C1PA51A == 9)
replace C1PA52 = . if (C1PA52 == 97 | C1PA52 == 98 | C1PA52 == 99)
replace C1PA53 = . if (C1PA53 == 97 | C1PA53 == 98 | C1PA53 == 99)
replace C1PA54 = . if (C1PA54 == 7 | C1PA54 == 8 | C1PA54 == 9)
replace C1PA54A = . if (C1PA54A == 7 | C1PA54A == 8 | C1PA54A == 9)
replace C1PA55 = . if (C1PA55 == 97.0 | C1PA55 == 98.0 | C1PA55 == 99.0)
replace C1PA56 = . if (C1PA56 == 97 | C1PA56 == 98 | C1PA56 == 99)
replace C1PA57 = . if (C1PA57 == 97 | C1PA57 == 98 | C1PA57 == 99)
replace C1PA59 = . if (C1PA59 == 7 | C1PA59 == 8)
replace C1PA60 = . if (C1PA60 == 7 | C1PA60 == 8)
replace C1PA61 = . if (C1PA61 == 7 | C1PA61 == 8 | C1PA61 == 9)
replace C1PA62 = . if (C1PA62 == 7 | C1PA62 == 8 | C1PA62 == 9)
replace C1PA63 = . if (C1PA63 == 7 | C1PA63 == 8 | C1PA63 == 9)
replace C1PA64 = . if (C1PA64 == 7 | C1PA64 == 8 | C1PA64 == 9)
replace C1PA65 = . if (C1PA65 == 7 | C1PA65 == 8 | C1PA65 == 9)
replace C1PA65A = . if (C1PA65A == 7 | C1PA65A == 8 | C1PA65A == 9)
replace C1PA66 = . if (C1PA66 == 7 | C1PA66 == 8 | C1PA66 == 9)
replace C1PA66A = . if (C1PA66A == 7 | C1PA66A == 8 | C1PA66A == 9)
replace C1PA67 = . if (C1PA67 == 7 | C1PA67 == 8 | C1PA67 == 9)
replace C1PA68 = . if (C1PA68 == 7 | C1PA68 == 8 | C1PA68 == 9)
replace C1PA69 = . if (C1PA69 == 7 | C1PA69 == 8 | C1PA69 == 9)
replace C1PA70 = . if (C1PA70 == 97 | C1PA70 == 98 | C1PA70 == 99)
replace C1PA71MO = . if (C1PA71MO == 97 | C1PA71MO == 98 | C1PA71MO == 99)
replace C1PA71YR = . if (C1PA71YR == 9997 | C1PA71YR == 9998 | C1PA71YR == 9999)
replace C1PA72 = . if (C1PA72 == 7 | C1PA72 == 8 | C1PA72 == 9)
replace C1PA73 = . if (C1PA73 == 7 | C1PA73 == 8 | C1PA73 == 9)
replace C1PA74 = . if (C1PA74 == 7 | C1PA74 == 8 | C1PA74 == 9)
replace C1PA75 = . if (C1PA75 == 7 | C1PA75 == 8 | C1PA75 == 9)
replace C1PA76 = . if (C1PA76 == 7 | C1PA76 == 8 | C1PA76 == 9)
replace C1PA76A = . if (C1PA76A == 7 | C1PA76A == 8 | C1PA76A == 9)
replace C1PA77 = . if (C1PA77 == 7 | C1PA77 == 8 | C1PA77 == 9)
replace C1PA77A = . if (C1PA77A == 7 | C1PA77A == 8 | C1PA77A == 9)
replace C1PA78 = . if (C1PA78 == 7 | C1PA78 == 8 | C1PA78 == 9)
replace C1PA79 = . if (C1PA79 == 7 | C1PA79 == 8 | C1PA79 == 9)
replace C1PA80 = . if (C1PA80 == 7 | C1PA80 == 8 | C1PA80 == 9)
replace C1PA81 = . if (C1PA81 == 97 | C1PA81 == 98 | C1PA81 == 99)
replace C1PA82MO = . if (C1PA82MO == 97 | C1PA82MO == 98 | C1PA82MO == 99)
replace C1PA82YR = . if (C1PA82YR == 9997 | C1PA82YR == 9998 | C1PA82YR == 9999)
replace C1PA83 = . if (C1PA83 == 7 | C1PA83 == 8)
replace C1PA83A = . if (C1PA83A == 7 | C1PA83A == 8 | C1PA83A == 9)
replace C1PA84 = . if (C1PA84 == 7 | C1PA84 == 8 | C1PA84 == 9)
replace C1PA84A = . if (C1PA84A == 7 | C1PA84A == 8 | C1PA84A == 9)
replace C1PA85 = . if (C1PA85 == 7 | C1PA85 == 8 | C1PA85 == 9)
replace C1PA85A = . if (C1PA85A == 7 | C1PA85A == 8 | C1PA85A == 9)
replace C1PA86 = . if (C1PA86 == 7 | C1PA86 == 8 | C1PA86 == 9)
replace C1PA86A = . if (C1PA86A == 7 | C1PA86A == 8 | C1PA86A == 9)
replace C1PA87 = . if (C1PA87 == 7 | C1PA87 == 8 | C1PA87 == 9)
replace C1PA87A = . if (C1PA87A == 7 | C1PA87A == 8 | C1PA87A == 9)
replace C1PA88A = . if (C1PA88A == 7 | C1PA88A == 8 | C1PA88A == 9)
replace C1PA88B = . if (C1PA88B == 7 | C1PA88B == 8 | C1PA88B == 9)
replace C1PA88C = . if (C1PA88C == 7 | C1PA88C == 8 | C1PA88C == 9)
replace C1PA88D = . if (C1PA88D == 7 | C1PA88D == 8 | C1PA88D == 9)
replace C1PA88E = . if (C1PA88E == 7 | C1PA88E == 8 | C1PA88E == 9)
replace C1PA88F = . if (C1PA88F == 7 | C1PA88F == 8 | C1PA88F == 9)
replace C1PA88G = . if (C1PA88G == 7 | C1PA88G == 8 | C1PA88G == 9)
replace C1PA88H = . if (C1PA88H == 7 | C1PA88H == 8 | C1PA88H == 9)
replace C1PA88I = . if (C1PA88I == 7 | C1PA88I == 8 | C1PA88I == 9)
replace C1PA88J = . if (C1PA88J == 7 | C1PA88J == 8 | C1PA88J == 9)
replace C1PA89 = . if (C1PA89 == 7 | C1PA89 == 8 | C1PA89 == 9)
replace C1PA90 = . if (C1PA90 == 7 | C1PA90 == 8)
replace C1PA90A = . if (C1PA90A == 7 | C1PA90A == 8 | C1PA90A == 9)
replace C1PA91 = . if (C1PA91 == 997 | C1PA91 == 998 | C1PA91 == 999)
replace C1PA92 = . if (C1PA92 == 7 | C1PA92 == 8 | C1PA92 == 9)
replace C1PA92A = . if (C1PA92A == 7 | C1PA92A == 8 | C1PA92A == 9)
replace C1PA92B = . if (C1PA92B == 7 | C1PA92B == 8 | C1PA92B == 9)
replace C1PA92C = . if (C1PA92C == 7 | C1PA92C == 8 | C1PA92C == 9)
replace C1PA92D = . if (C1PA92D == 7 | C1PA92D == 8 | C1PA92D == 9)
replace C1PA92E = . if (C1PA92E == 7 | C1PA92E == 8 | C1PA92E == 9)
replace C1PA92F = . if (C1PA92F == 7 | C1PA92F == 8 | C1PA92F == 9)
replace C1PB1 = . if (C1PB1 == 97 | C1PB1 == 98)
replace C1PB2 = . if (C1PB2 == 97 | C1PB2 == 98)
replace C1PB2A1 = . if (C1PB2A1 == 7 | C1PB2A1 == 8 | C1PB2A1 == 9)
replace C1PB2A2 = . if (C1PB2A2 == 7 | C1PB2A2 == 8 | C1PB2A2 == 9)
replace C1PB2A3 = . if (C1PB2A3 == 7 | C1PB2A3 == 8 | C1PB2A3 == 9)
replace C1PB2A4 = . if (C1PB2A4 == 7 | C1PB2A4 == 8 | C1PB2A4 == 9)
replace C1PB2A5 = . if (C1PB2A5 == 7 | C1PB2A5 == 8 | C1PB2A5 == 9)
replace C1PB2A6 = . if (C1PB2A6 == 7 | C1PB2A6 == 8 | C1PB2A6 == 9)
replace C1PB2A7 = . if (C1PB2A7 == 7 | C1PB2A7 == 8 | C1PB2A7 == 9)
replace C1PB2A8 = . if (C1PB2A8 == 7 | C1PB2A8 == 8 | C1PB2A8 == 9)
replace C1PB2A9 = . if (C1PB2A9 == 7 | C1PB2A9 == 8 | C1PB2A9 == 9)
replace C1PB2A10 = . if (C1PB2A10 == 7 | C1PB2A10 == 8 | C1PB2A10 == 9)
replace C1PB2A11 = . if (C1PB2A11 == 7 | C1PB2A11 == 8 | C1PB2A11 == 9)
replace C1PB2AWK = . if (C1PB2AWK == 97 | C1PB2AWK == 98 | C1PB2AWK == 99)
replace C1PB2AA = . if (C1PB2AA == 7 | C1PB2AA == 8 | C1PB2AA == 9)
replace C1PB2B = . if (C1PB2B == 7 | C1PB2B == 8 | C1PB2B == 9)
replace C1PB2BM = . if (C1PB2BM == 97 | C1PB2BM == 98 | C1PB2BM == 99)
replace C1PB2BY = . if (C1PB2BY == 9997 | C1PB2BY == 9998 | C1PB2BY == 9999)
replace C1PB2BBA = . if (C1PB2BBA == 7 | C1PB2BBA == 8 | C1PB2BBA == 9)
replace C1PB2BBB = . if (C1PB2BBB == 7 | C1PB2BBB == 8 | C1PB2BBB == 9)
replace C1PB2BBC = . if (C1PB2BBC == 7 | C1PB2BBC == 8 | C1PB2BBC == 9)
replace C1PB2BBD = . if (C1PB2BBD == 7 | C1PB2BBD == 8 | C1PB2BBD == 9)
replace C1PB2BBE = . if (C1PB2BBE == 7 | C1PB2BBE == 8 | C1PB2BBE == 9)
replace C1PB2BBF = . if (C1PB2BBF == 7 | C1PB2BBF == 8 | C1PB2BBF == 9)
replace C1PB2BBG = . if (C1PB2BBG == 7 | C1PB2BBG == 8 | C1PB2BBG == 9)
replace C1PB2BCN = . if (C1PB2BCN == 997 | C1PB2BCN == 998 | C1PB2BCN == 999)
replace C1PB2BCU = . if (C1PB2BCU == 9)
replace C1PB2BDN = . if (C1PB2BDN == 997 | C1PB2BDN == 998 | C1PB2BDN == 999)
replace C1PB2BDU = . if (C1PB2BDU == 9)
replace C1PB2CA = . if (C1PB2CA == 7 | C1PB2CA == 8 | C1PB2CA == 9)
replace C1PB2CB = . if (C1PB2CB == 997 | C1PB2CB == 998 | C1PB2CB == 999)
replace C1PB2CB10 = . if (C1PB2CB10 == 7 | C1PB2CB10 == 8 | C1PB2CB10 == 9)
replace C1PB2CB25 = . if (C1PB2CB25 == 7 | C1PB2CB25 == 8 | C1PB2CB25 == 9)
replace C1PB2C2 = . if (C1PB2C2 == 997 | C1PB2C2 == 998 | C1PB2C2 == 999)
replace C1PB2DN = . if (C1PB2DN == 997 | C1PB2DN == 998 | C1PB2DN == 999)
replace C1PB2DU = . if (C1PB2DU == 9)
replace C1PB3A = . if (C1PB3A == 7 | C1PB3A == 8 | C1PB3A == 9)
replace C1PB3B = . if (C1PB3B == 7 | C1PB3B == 8 | C1PB3B == 9)
replace C1PB3C = . if (C1PB3C == 7 | C1PB3C == 8 | C1PB3C == 9)
replace C1PB3D = . if (C1PB3D == 7 | C1PB3D == 8 | C1PB3D == 9)
replace C1PB3E = . if (C1PB3E == 7 | C1PB3E == 8 | C1PB3E == 9)
replace C1PB3F = . if (C1PB3F == 7 | C1PB3F == 8 | C1PB3F == 9)
replace C1PB3G = . if (C1PB3G == 7 | C1PB3G == 8 | C1PB3G == 9)
replace C1PB3H = . if (C1PB3H == 7 | C1PB3H == 8 | C1PB3H == 9)
replace C1PB3I = . if (C1PB3I == 7 | C1PB3I == 8 | C1PB3I == 9)
replace C1PB3J = . if (C1PB3J == 7 | C1PB3J == 8 | C1PB3J == 9)
replace C1PB3K = . if (C1PB3K == 7 | C1PB3K == 8 | C1PB3K == 9)
replace C1PB3WK = . if (C1PB3WK == 97 | C1PB3WK == 98 | C1PB3WK == 99)
replace C1PB4N = . if (C1PB4N == 997 | C1PB4N == 998 | C1PB4N == 999)
replace C1PB4U = . if (C1PB4U == 8 | C1PB4U == 9)
replace C1PB5A = . if (C1PB5A == 7 | C1PB5A == 8 | C1PB5A == 9)
replace C1PB5B = . if (C1PB5B == 7 | C1PB5B == 8 | C1PB5B == 9)
replace C1PB5C = . if (C1PB5C == 7 | C1PB5C == 8 | C1PB5C == 9)
replace C1PB5D = . if (C1PB5D == 7 | C1PB5D == 8 | C1PB5D == 9)
replace C1PB5E = . if (C1PB5E == 7 | C1PB5E == 8 | C1PB5E == 9)
replace C1PB5F = . if (C1PB5F == 7 | C1PB5F == 8 | C1PB5F == 9)
replace C1PB5G = . if (C1PB5G == 7 | C1PB5G == 8 | C1PB5G == 9)
replace C1PB5 = . if (C1PB5 == 97 | C1PB5 == 98 | C1PB5 == 99)
replace C1PB5AB = . if (C1PB5AB == 7 | C1PB5AB == 8 | C1PB5AB == 9)
replace C1PB6 = . if (C1PB6 == 7 | C1PB6 == 8 | C1PB6 == 9)
replace C1PB7 = . if (C1PB7 == 7 | C1PB7 == 8 | C1PB7 == 9)
replace C1PB7A = . if (C1PB7A == 997 | C1PB7A == 998 | C1PB7A == 999)
replace C1PB8A = . if (C1PB8A == 7 | C1PB8A == 8 | C1PB8A == 9)
replace C1PB8A1 = . if (C1PB8A1 == 7 | C1PB8A1 == 8 | C1PB8A1 == 9)
replace C1PB8C = . if (C1PB8C == 7 | C1PB8C == 8 | C1PB8C == 9)
replace C1POCC = . if (C1POCC >= 9996 & C1POCC <= 9999)
replace C1PIND = . if (C1PIND >= 9996 & C1PIND <= 9999)
replace C1POCMAJ = . if (C1POCMAJ >= 96 & C1POCMAJ <= 99)
replace C1PINDMJ = . if (C1PINDMJ >= 96 & C1PINDMJ <= 99)
replace C1PB12 = . if (C1PB12 == 997 | C1PB12 == 998 | C1PB12 == 999)
replace C1PB12A = . if (C1PB12A == 997 | C1PB12A == 998 | C1PB12A == 999)
replace C1PB13 = . if (C1PB13 == 997 | C1PB13 == 998 | C1PB13 == 999)
replace C1PB14 = . if (C1PB14 == 7 | C1PB14 == 8 | C1PB14 == 9)
replace C1PB14A = . if (C1PB14A == 997 | C1PB14A == 998 | C1PB14A == 999)
replace C1PB15A = . if (C1PB15A == 7 | C1PB15A == 8 | C1PB15A == 9)
replace C1PB15A1 = . if (C1PB15A1 == 7 | C1PB15A1 == 8 | C1PB15A1 == 9)
replace C1PB15C = . if (C1PB15C == 7 | C1PB15C == 8 | C1PB15C == 9)
replace C1POCCP = . if (C1POCCP >= 9996 & C1POCCP <= 9999)
replace C1PINDP = . if (C1PINDP >= 9996 & C1PINDP <= 9999)
replace C1POCPMJ = . if (C1POCPMJ >= 96 & C1POCPMJ <= 99)
replace C1PPINMJ = . if (C1PPINMJ >= 96 & C1PPINMJ <= 99)
replace C1PB16 = . if (C1PB16 == 99999997 | C1PB16 == 99999998 | C1PB16 == 99999999)
replace C1PB16A25 = . if (C1PB16A25 == 7 | C1PB16A25 == 8 | C1PB16A25 == 9)
replace C1PB16A50 = . if (C1PB16A50 == 7 | C1PB16A50 == 8 | C1PB16A50 == 9)
replace C1PB16A80 = . if (C1PB16A80 == 7 | C1PB16A80 == 8 | C1PB16A80 == 9)
replace C1PB16A35 = . if (C1PB16A35 == 7 | C1PB16A35 == 8 | C1PB16A35 == 9)
replace C1PB16A12 = . if (C1PB16A12 == 7 | C1PB16A12 == 8 | C1PB16A12 == 9)
replace C1PB16A18 = . if (C1PB16A18 == 7 | C1PB16A18 == 8 | C1PB16A18 == 9)
replace C1PB16A5 = . if (C1PB16A5 == 7 | C1PB16A5 == 8 | C1PB16A5 == 9)
replace C1PB17A = . if (C1PB17A == 7 | C1PB17A == 8 | C1PB17A == 9)
replace C1PB17B = . if (C1PB17B == 997 | C1PB17B == 998 | C1PB17B == 999)
replace C1PB17B10 = . if (C1PB17B10 == 7 | C1PB17B10 == 8 | C1PB17B10 == 9)
replace C1PB17B25 = . if (C1PB17B25 == 7 | C1PB17B25 == 8 | C1PB17B25 == 9)
replace C1PB17B5 = . if (C1PB17B5 == 7 | C1PB17B5 == 8 | C1PB17B5 == 9)
replace C1PB19 = . if (C1PB19 == 7 | C1PB19 == 8)
replace C1PB20 = . if (C1PB20 == 97 | C1PB20 == 98 | C1PB20 == 99)
replace C1PB21M = . if (C1PB21M == 97 | C1PB21M == 98 | C1PB21M == 99)
replace C1PB21Y = . if (C1PB21Y == 9997 | C1PB21Y == 9998 | C1PB21Y == 9999)
replace C1PB22 = . if (C1PB22 == 7 | C1PB22 == 8 | C1PB22 == 9)
replace C1PB23M = . if (C1PB23M == 97 | C1PB23M == 98 | C1PB23M == 99)
replace C1PB23Y = . if (C1PB23Y == 9997 | C1PB23Y == 9998 | C1PB23Y == 9999)
replace C1PB24M = . if (C1PB24M == 97 | C1PB24M == 98 | C1PB24M == 99)
replace C1PB24Y = . if (C1PB24Y == 9997 | C1PB24Y == 9998 | C1PB24Y == 9999)
replace C1PB25M = . if (C1PB25M == 97 | C1PB25M == 98 | C1PB25M == 99)
replace C1PB25Y = . if (C1PB25Y == 9997 | C1PB25Y == 9998 | C1PB25Y == 9999)
replace C1PB26M = . if (C1PB26M == 97 | C1PB26M == 98 | C1PB26M == 99)
replace C1PB26Y = . if (C1PB26Y == 9997 | C1PB26Y == 9998 | C1PB26Y == 9999)
replace C1PB27M = . if (C1PB27M == 97 | C1PB27M == 98 | C1PB27M == 99)
replace C1PB27Y = . if (C1PB27Y == 9997 | C1PB27Y == 9998 | C1PB27Y == 9999)
replace C1PB28M = . if (C1PB28M == 97 | C1PB28M == 98 | C1PB28M == 99)
replace C1PB28Y = . if (C1PB28Y == 9997 | C1PB28Y == 9998 | C1PB28Y == 9999)
replace C1PB29M = . if (C1PB29M == 97 | C1PB29M == 98 | C1PB29M == 99)
replace C1PB29Y = . if (C1PB29Y == 9997 | C1PB29Y == 9998 | C1PB29Y == 9999)
replace C1PB30 = . if (C1PB30 == 7 | C1PB30 == 8 | C1PB30 == 9)
replace C1PB31N = . if (C1PB31N == 997 | C1PB31N == 998 | C1PB31N == 999)
replace C1PB31M = . if (C1PB31M == 9)
replace C1PB32A = . if (C1PB32A == 7 | C1PB32A == 8 | C1PB32A == 9)
replace C1PB32Y = . if (C1PB32Y == 9997 | C1PB32Y == 9998 | C1PB32Y == 9999)
replace C1PSAGE = . if (C1PSAGE == 997 | C1PSAGE == 998 | C1PSAGE == 999)
replace C1PB33 = . if (C1PB33 == 97 | C1PB33 == 98 | C1PB33 == 99)
replace C1PB33AA = . if (C1PB33AA == 7 | C1PB33AA == 8 | C1PB33AA == 9)
replace C1PB33AB = . if (C1PB33AB == 7 | C1PB33AB == 8 | C1PB33AB == 9)
replace C1PB33AC = . if (C1PB33AC == 7 | C1PB33AC == 8 | C1PB33AC == 9)
replace C1PB33AD = . if (C1PB33AD == 7 | C1PB33AD == 8 | C1PB33AD == 9)
replace C1PB33AE = . if (C1PB33AE == 7 | C1PB33AE == 8 | C1PB33AE == 9)
replace C1PB33AF = . if (C1PB33AF == 7 | C1PB33AF == 8 | C1PB33AF == 9)
replace C1PB33AG = . if (C1PB33AG == 7 | C1PB33AG == 8 | C1PB33AG == 9)
replace C1PB33AH = . if (C1PB33AH == 7 | C1PB33AH == 8 | C1PB33AH == 9)
replace C1PB33AI = . if (C1PB33AI == 7 | C1PB33AI == 8 | C1PB33AI == 9)
replace C1PB33AJ = . if (C1PB33AJ == 7 | C1PB33AJ == 8 | C1PB33AJ == 9)
replace C1PB33AK = . if (C1PB33AK == 7 | C1PB33AK == 8 | C1PB33AK == 9)
replace C1PB33AWK = . if (C1PB33AWK == 97 | C1PB33AWK == 98 | C1PB33AWK == 99)
replace C1PB33A1 = . if (C1PB33A1 == 7 | C1PB33A1 == 8 | C1PB33A1 == 9)
replace C1PB33B = . if (C1PB33B == 7 | C1PB33B == 8 | C1PB33B == 9)
replace C1PB33BAM = . if (C1PB33BAM == 97 | C1PB33BAM == 98 | C1PB33BAM == 99)
replace C1PB33BAY = . if (C1PB33BAY == 9997 | C1PB33BAY == 9998 | C1PB33BAY == 9999)
replace C1PB33BBA = . if (C1PB33BBA == 7 | C1PB33BBA == 8 | C1PB33BBA == 9)
replace C1PB33BBB = . if (C1PB33BBB == 7 | C1PB33BBB == 8 | C1PB33BBB == 9)
replace C1PB33BBC = . if (C1PB33BBC == 7 | C1PB33BBC == 8 | C1PB33BBC == 9)
replace C1PB33BBD = . if (C1PB33BBD == 7 | C1PB33BBD == 8 | C1PB33BBD == 9)
replace C1PB33BBE = . if (C1PB33BBE == 7 | C1PB33BBE == 8 | C1PB33BBE == 9)
replace C1PB33BBF = . if (C1PB33BBF == 7 | C1PB33BBF == 8 | C1PB33BBF == 9)
replace C1PB33BBG = . if (C1PB33BBG == 7 | C1PB33BBG == 8 | C1PB33BBG == 9)
replace C1PB33BCN = . if (C1PB33BCN == 997 | C1PB33BCN == 998 | C1PB33BCN == 999)
replace C1PB33BCU = . if (C1PB33BCU == 7 | C1PB33BCU == 8 | C1PB33BCU == 9)
replace C1PB33BDN = . if (C1PB33BDN == 997 | C1PB33BDN == 998 | C1PB33BDN == 999)
replace C1PB33BDU = . if (C1PB33BDU == 7 | C1PB33BDU == 8 | C1PB33BDU == 9)
replace C1PB33CA = . if (C1PB33CA == 7 | C1PB33CA == 8 | C1PB33CA == 9)
replace C1PB33CB = . if (C1PB33CB == 997 | C1PB33CB == 998 | C1PB33CB == 999)
replace C1PB33CB10 = . if (C1PB33CB10 == 7 | C1PB33CB10 == 8 | C1PB33CB10 == 9)
replace C1PB33CB25 = . if (C1PB33CB25 == 7 | C1PB33CB25 == 8 | C1PB33CB25 == 9)
replace C1PB33C2 = . if (C1PB33C2 == 997 | C1PB33C2 == 998 | C1PB33C2 == 999)
replace C1PB33DN = . if (C1PB33DN == 997 | C1PB33DN == 998 | C1PB33DN == 999)
replace C1PB33DU = . if (C1PB33DU == 7 | C1PB33DU == 8 | C1PB33DU == 9)
replace C1PB34A = . if (C1PB34A == 7 | C1PB34A == 8 | C1PB34A == 9)
replace C1PB34B = . if (C1PB34B == 7 | C1PB34B == 8 | C1PB34B == 9)
replace C1PB34C = . if (C1PB34C == 7 | C1PB34C == 8 | C1PB34C == 9)
replace C1PB34D = . if (C1PB34D == 7 | C1PB34D == 8 | C1PB34D == 9)
replace C1PB34E = . if (C1PB34E == 7 | C1PB34E == 8 | C1PB34E == 9)
replace C1PB34F = . if (C1PB34F == 7 | C1PB34F == 8 | C1PB34F == 9)
replace C1PB34G = . if (C1PB34G == 7 | C1PB34G == 8 | C1PB34G == 9)
replace C1PB34H = . if (C1PB34H == 7 | C1PB34H == 8 | C1PB34H == 9)
replace C1PB34I = . if (C1PB34I == 7 | C1PB34I == 8 | C1PB34I == 9)
replace C1PB34J = . if (C1PB34J == 7 | C1PB34J == 8 | C1PB34J == 9)
replace C1PB34K = . if (C1PB34K == 7 | C1PB34K == 8 | C1PB34K == 9)
replace C1PB34WK = . if (C1PB34WK == 97 | C1PB34WK == 98 | C1PB34WK == 99)
replace C1PB35N = . if (C1PB35N == 997 | C1PB35N == 998 | C1PB35N == 999)
replace C1PB35U = . if (C1PB35U == 7 | C1PB35U == 8 | C1PB35U == 9)
replace C1PB36A = . if (C1PB36A == 7 | C1PB36A == 8 | C1PB36A == 9)
replace C1PB36B = . if (C1PB36B == 7 | C1PB36B == 8 | C1PB36B == 9)
replace C1PB36C = . if (C1PB36C == 7 | C1PB36C == 8 | C1PB36C == 9)
replace C1PB36D = . if (C1PB36D == 7 | C1PB36D == 8 | C1PB36D == 9)
replace C1PB36E = . if (C1PB36E == 7 | C1PB36E == 8 | C1PB36E == 9)
replace C1PB36F = . if (C1PB36F == 7 | C1PB36F == 8 | C1PB36F == 9)
replace C1PB36G = . if (C1PB36G == 7 | C1PB36G == 8 | C1PB36G == 9)
replace C1PB36 = . if (C1PB36 == 97 | C1PB36 == 98 | C1PB36 == 99)
replace C1PB36A1 = . if (C1PB36A1 == 7 | C1PB36A1 == 8 | C1PB36A1 == 9)
replace C1PB37 = . if (C1PB37 == 7 | C1PB37 == 8 | C1PB37 == 9)
replace C1PB38 = . if (C1PB38 == 7 | C1PB38 == 8 | C1PB38 == 9)
replace C1PB39A = . if (C1PB39A == 7 | C1PB39A == 8 | C1PB39A == 9)
replace C1PB39A1 = . if (C1PB39A1 == 7 | C1PB39A1 == 8 | C1PB39A1 == 9)
replace C1PB39C = . if (C1PB39C == 7 | C1PB39C == 8 | C1PB39C == 9)
replace C1POCCS = . if (C1POCCS >= 9996 & C1POCCS <= 9999)
replace C1PINDS = . if (C1PINDS >= 9996 & C1PINDS <= 9999)
replace C1PSOCMJ = . if (C1PSOCMJ >= 96 & C1PSOCMJ <= 99)
replace C1PSINMJ = . if (C1PSINMJ >= 96 & C1PSINMJ <= 99)
replace C1PB40 = . if (C1PB40 == 99999997 | C1PB40 == 99999998 | C1PB40 == 99999999)
replace C1PB40A25 = . if (C1PB40A25 == 7 | C1PB40A25 == 8 | C1PB40A25 == 9)
replace C1PB40A50 = . if (C1PB40A50 == 7 | C1PB40A50 == 8 | C1PB40A50 == 9)
replace C1PB40A80 = . if (C1PB40A80 == 7 | C1PB40A80 == 8 | C1PB40A80 == 9)
replace C1PB40A35 = . if (C1PB40A35 == 7 | C1PB40A35 == 8 | C1PB40A35 == 9)
replace C1PB40A12 = . if (C1PB40A12 == 7 | C1PB40A12 == 8 | C1PB40A12 == 9)
replace C1PB40A18 = . if (C1PB40A18 == 7 | C1PB40A18 == 8 | C1PB40A18 == 9)
replace C1PB40A5 = . if (C1PB40A5 == 7 | C1PB40A5 == 8 | C1PB40A5 == 9)
replace C1PB41A = . if (C1PB41A == 7 | C1PB41A == 8 | C1PB41A == 9)
replace C1PB41B = . if (C1PB41B == 997 | C1PB41B == 998 | C1PB41B == 999)
replace C1PB41B10 = . if (C1PB41B10 == 7 | C1PB41B10 == 8 | C1PB41B10 == 9)
replace C1PB41B25 = . if (C1PB41B25 == 7 | C1PB41B25 == 8 | C1PB41B25 == 9)
replace C1PB41B5 = . if (C1PB41B5 == 7 | C1PB41B5 == 8 | C1PB41B5 == 9)
replace C1PC1 = . if (C1PC1 == 7 | C1PC1 == 8 | C1PC1 == 9)
replace C1PC2 = . if (C1PC2 == 97 | C1PC2 == 98)
replace C1PC2A = . if (C1PC2A == 97 | C1PC2A == 98 | C1PC2A == 99)
replace C1PC3 = . if (C1PC3 == 7 | C1PC3 == 8)
replace C1PC4 = . if (C1PC4 == 97 | C1PC4 == 98)
replace C1PKHSIZ = . if (C1PKHSIZ == 97 | C1PKHSIZ == 98)
replace C1PC6 = . if (C1PC6 == 7 | C1PC6 == 8 | C1PC6 == 9)
replace C1PCHA1 = . if (C1PCHA1 == 997 | C1PCHA1 == 998 | C1PCHA1 == 999)
replace C1PCHX1 = . if (C1PCHX1 == 7 | C1PCHX1 == 8 | C1PCHX1 == 9)
replace C1PCHR1 = . if (C1PCHR1 == 97 | C1PCHR1 == 98 | C1PCHR1 == 99)
replace C1PCMB1 = . if (C1PCMB1 == 97 | C1PCMB1 == 98 | C1PCMB1 == 99)
replace C1PCYB1 = . if (C1PCYB1 == 9997 | C1PCYB1 == 9998 | C1PCYB1 == 9999)
replace C1PHHA1 = . if (C1PHHA1 == 997 | C1PHHA1 == 998 | C1PHHA1 == 999)
replace C1PCHC1 = . if (C1PCHC1 == 7 | C1PCHC1 == 8 | C1PCHC1 == 9)
replace C1PCHH1 = . if (C1PCHH1 == 7 | C1PCHH1 == 8 | C1PCHH1 == 9)
replace C1PCDD1 = . if (C1PCDD1 == 7 | C1PCDD1 == 8 | C1PCDD1 == 9)
replace C1PCDT1 = . if (C1PCDT1 == 997 | C1PCDT1 == 998 | C1PCDT1 == 999)
replace C1PCDP1 = . if (C1PCDP1 == 7 | C1PCDP1 == 8 | C1PCDP1 == 9)
replace C1PCDA1 = . if (C1PCDA1 == 97 | C1PCDA1 == 98 | C1PCDA1 == 99)
replace C1PCDX1 = . if (C1PCDX1 == 7 | C1PCDX1 == 8 | C1PCDX1 == 9)
replace C1PCXT1 = . if (C1PCXT1 == 7 | C1PCXT1 == 8 | C1PCXT1 == 9)
replace C1PCDO1 = . if (C1PCDO1 == 7 | C1PCDO1 == 8 | C1PCDO1 == 9)
replace C1PCHA2 = . if (C1PCHA2 == 997 | C1PCHA2 == 998 | C1PCHA2 == 999)
replace C1PCHX2 = . if (C1PCHX2 == 7 | C1PCHX2 == 8 | C1PCHX2 == 9)
replace C1PCHR2 = . if (C1PCHR2 == 97 | C1PCHR2 == 98 | C1PCHR2 == 99)
replace C1PCMB2 = . if (C1PCMB2 == 97 | C1PCMB2 == 98 | C1PCMB2 == 99)
replace C1PCYB2 = . if (C1PCYB2 == 9997 | C1PCYB2 == 9998 | C1PCYB2 == 9999)
replace C1PHHA2 = . if (C1PHHA2 == 997 | C1PHHA2 == 998 | C1PHHA2 == 999)
replace C1PCHC2 = . if (C1PCHC2 == 7 | C1PCHC2 == 8 | C1PCHC2 == 9)
replace C1PCHH2 = . if (C1PCHH2 == 7 | C1PCHH2 == 8 | C1PCHH2 == 9)
replace C1PCDD2 = . if (C1PCDD2 == 7 | C1PCDD2 == 8 | C1PCDD2 == 9)
replace C1PCDT2 = . if (C1PCDT2 == 997 | C1PCDT2 == 998 | C1PCDT2 == 999)
replace C1PCDP2 = . if (C1PCDP2 == 7 | C1PCDP2 == 8 | C1PCDP2 == 9)
replace C1PCDA2 = . if (C1PCDA2 == 97 | C1PCDA2 == 98 | C1PCDA2 == 99)
replace C1PCDX2 = . if (C1PCDX2 == 7 | C1PCDX2 == 8 | C1PCDX2 == 9)
replace C1PCXT2 = . if (C1PCXT2 == 7 | C1PCXT2 == 8 | C1PCXT2 == 9)
replace C1PCDO2 = . if (C1PCDO2 == 7 | C1PCDO2 == 8 | C1PCDO2 == 9)
replace C1PCHA3 = . if (C1PCHA3 == 997 | C1PCHA3 == 998 | C1PCHA3 == 999)
replace C1PCHX3 = . if (C1PCHX3 == 7 | C1PCHX3 == 8 | C1PCHX3 == 9)
replace C1PCHR3 = . if (C1PCHR3 == 97 | C1PCHR3 == 98 | C1PCHR3 == 99)
replace C1PCMB3 = . if (C1PCMB3 == 97 | C1PCMB3 == 98 | C1PCMB3 == 99)
replace C1PCYB3 = . if (C1PCYB3 == 9997 | C1PCYB3 == 9998 | C1PCYB3 == 9999)
replace C1PHHA3 = . if (C1PHHA3 == 997 | C1PHHA3 == 998 | C1PHHA3 == 999)
replace C1PCHC3 = . if (C1PCHC3 == 7 | C1PCHC3 == 8 | C1PCHC3 == 9)
replace C1PCHH3 = . if (C1PCHH3 == 7 | C1PCHH3 == 8 | C1PCHH3 == 9)
replace C1PCDD3 = . if (C1PCDD3 == 7 | C1PCDD3 == 8 | C1PCDD3 == 9)
replace C1PCDT3 = . if (C1PCDT3 == 997 | C1PCDT3 == 998 | C1PCDT3 == 999)
replace C1PCDP3 = . if (C1PCDP3 == 7 | C1PCDP3 == 8 | C1PCDP3 == 9)
replace C1PCDA3 = . if (C1PCDA3 == 97 | C1PCDA3 == 98 | C1PCDA3 == 99)
replace C1PCDX3 = . if (C1PCDX3 == 7 | C1PCDX3 == 8 | C1PCDX3 == 9)
replace C1PCXT3 = . if (C1PCXT3 == 7 | C1PCXT3 == 8 | C1PCXT3 == 9)
replace C1PCDO3 = . if (C1PCDO3 == 7 | C1PCDO3 == 8 | C1PCDO3 == 9)
replace C1PCHA4 = . if (C1PCHA4 == 997 | C1PCHA4 == 998 | C1PCHA4 == 999)
replace C1PCHX4 = . if (C1PCHX4 == 7 | C1PCHX4 == 8 | C1PCHX4 == 9)
replace C1PCHR4 = . if (C1PCHR4 == 97 | C1PCHR4 == 98 | C1PCHR4 == 99)
replace C1PCMB4 = . if (C1PCMB4 == 97 | C1PCMB4 == 98 | C1PCMB4 == 99)
replace C1PCYB4 = . if (C1PCYB4 == 9997 | C1PCYB4 == 9998 | C1PCYB4 == 9999)
replace C1PHHA4 = . if (C1PHHA4 == 997 | C1PHHA4 == 998 | C1PHHA4 == 999)
replace C1PCHC4 = . if (C1PCHC4 == 7 | C1PCHC4 == 8 | C1PCHC4 == 9)
replace C1PCHH4 = . if (C1PCHH4 == 7 | C1PCHH4 == 8 | C1PCHH4 == 9)
replace C1PCDD4 = . if (C1PCDD4 == 7 | C1PCDD4 == 8 | C1PCDD4 == 9)
replace C1PCDT4 = . if (C1PCDT4 == 997 | C1PCDT4 == 998 | C1PCDT4 == 999)
replace C1PCDP4 = . if (C1PCDP4 == 7 | C1PCDP4 == 8 | C1PCDP4 == 9)
replace C1PCDA4 = . if (C1PCDA4 == 97 | C1PCDA4 == 98 | C1PCDA4 == 99)
replace C1PCDX4 = . if (C1PCDX4 == 7 | C1PCDX4 == 8 | C1PCDX4 == 9)
replace C1PCXT4 = . if (C1PCXT4 == 7 | C1PCXT4 == 8 | C1PCXT4 == 9)
replace C1PCDO4 = . if (C1PCDO4 == 7 | C1PCDO4 == 8 | C1PCDO4 == 9)
replace C1PCHA5 = . if (C1PCHA5 == 997 | C1PCHA5 == 998 | C1PCHA5 == 999)
replace C1PCHX5 = . if (C1PCHX5 == 7 | C1PCHX5 == 8 | C1PCHX5 == 9)
replace C1PCHR5 = . if (C1PCHR5 == 97 | C1PCHR5 == 98 | C1PCHR5 == 99)
replace C1PCMB5 = . if (C1PCMB5 == 97 | C1PCMB5 == 98 | C1PCMB5 == 99)
replace C1PCYB5 = . if (C1PCYB5 == 9997 | C1PCYB5 == 9998 | C1PCYB5 == 9999)
replace C1PHHA5 = . if (C1PHHA5 == 997 | C1PHHA5 == 998 | C1PHHA5 == 999)
replace C1PCHC5 = . if (C1PCHC5 == 7 | C1PCHC5 == 8 | C1PCHC5 == 9)
replace C1PCHH5 = . if (C1PCHH5 == 7 | C1PCHH5 == 8 | C1PCHH5 == 9)
replace C1PCDD5 = . if (C1PCDD5 == 7 | C1PCDD5 == 8 | C1PCDD5 == 9)
replace C1PCDT5 = . if (C1PCDT5 == 997 | C1PCDT5 == 998 | C1PCDT5 == 999)
replace C1PCDP5 = . if (C1PCDP5 == 7 | C1PCDP5 == 8 | C1PCDP5 == 9)
replace C1PCDA5 = . if (C1PCDA5 == 97 | C1PCDA5 == 98 | C1PCDA5 == 99)
replace C1PCDX5 = . if (C1PCDX5 == 7 | C1PCDX5 == 8 | C1PCDX5 == 9)
replace C1PCDO5 = . if (C1PCDO5 == 7 | C1PCDO5 == 8 | C1PCDO5 == 9)
replace C1PCHA6 = . if (C1PCHA6 == 997 | C1PCHA6 == 998 | C1PCHA6 == 999)
replace C1PCHX6 = . if (C1PCHX6 == 7 | C1PCHX6 == 8 | C1PCHX6 == 9)
replace C1PCHR6 = . if (C1PCHR6 == 97 | C1PCHR6 == 98 | C1PCHR6 == 99)
replace C1PCMB6 = . if (C1PCMB6 == 97 | C1PCMB6 == 98 | C1PCMB6 == 99)
replace C1PCYB6 = . if (C1PCYB6 == 9997 | C1PCYB6 == 9998 | C1PCYB6 == 9999)
replace C1PHHA6 = . if (C1PHHA6 == 997 | C1PHHA6 == 998 | C1PHHA6 == 999)
replace C1PCHC6 = . if (C1PCHC6 == 7 | C1PCHC6 == 8 | C1PCHC6 == 9)
replace C1PCHH6 = . if (C1PCHH6 == 7 | C1PCHH6 == 8 | C1PCHH6 == 9)
replace C1PCDD6 = . if (C1PCDD6 == 7 | C1PCDD6 == 8 | C1PCDD6 == 9)
replace C1PCDT6 = . if (C1PCDT6 == 997 | C1PCDT6 == 998 | C1PCDT6 == 999)
replace C1PCDA6 = . if (C1PCDA6 == 97 | C1PCDA6 == 98 | C1PCDA6 == 99)
replace C1PCDX6 = . if (C1PCDX6 == 7 | C1PCDX6 == 8 | C1PCDX6 == 9)
replace C1PCDO6 = . if (C1PCDO6 == 7 | C1PCDO6 == 8 | C1PCDO6 == 9)
replace C1PCHA7 = . if (C1PCHA7 == 997 | C1PCHA7 == 998 | C1PCHA7 == 999)
replace C1PCHX7 = . if (C1PCHX7 == 7 | C1PCHX7 == 8 | C1PCHX7 == 9)
replace C1PCHR7 = . if (C1PCHR7 == 97 | C1PCHR7 == 98 | C1PCHR7 == 99)
replace C1PCMB7 = . if (C1PCMB7 == 97 | C1PCMB7 == 98 | C1PCMB7 == 99)
replace C1PCYB7 = . if (C1PCYB7 == 9997 | C1PCYB7 == 9998 | C1PCYB7 == 9999)
replace C1PHHA7 = . if (C1PHHA7 == 997 | C1PHHA7 == 998 | C1PHHA7 == 999)
replace C1PCHC7 = . if (C1PCHC7 == 7 | C1PCHC7 == 8 | C1PCHC7 == 9)
replace C1PCHH7 = . if (C1PCHH7 == 7 | C1PCHH7 == 8 | C1PCHH7 == 9)
replace C1PCDD7 = . if (C1PCDD7 == 7 | C1PCDD7 == 8 | C1PCDD7 == 9)
replace C1PCDT7 = . if (C1PCDT7 == 997 | C1PCDT7 == 998 | C1PCDT7 == 999)
replace C1PCDA7 = . if (C1PCDA7 == 97 | C1PCDA7 == 98 | C1PCDA7 == 99)
replace C1PCDO7 = . if (C1PCDO7 == 7 | C1PCDO7 == 8 | C1PCDO7 == 9)
replace C1PCHA8 = . if (C1PCHA8 == 997 | C1PCHA8 == 998 | C1PCHA8 == 999)
replace C1PCHX8 = . if (C1PCHX8 == 7 | C1PCHX8 == 8 | C1PCHX8 == 9)
replace C1PCHR8 = . if (C1PCHR8 == 97 | C1PCHR8 == 98 | C1PCHR8 == 99)
replace C1PCMB8 = . if (C1PCMB8 == 97 | C1PCMB8 == 98 | C1PCMB8 == 99)
replace C1PCYB8 = . if (C1PCYB8 == 9997 | C1PCYB8 == 9998 | C1PCYB8 == 9999)
replace C1PHHA8 = . if (C1PHHA8 == 997 | C1PHHA8 == 998 | C1PHHA8 == 999)
replace C1PCHC8 = . if (C1PCHC8 == 7 | C1PCHC8 == 8 | C1PCHC8 == 9)
replace C1PCHH8 = . if (C1PCHH8 == 7 | C1PCHH8 == 8 | C1PCHH8 == 9)
replace C1PCDD8 = . if (C1PCDD8 == 7 | C1PCDD8 == 8 | C1PCDD8 == 9)
replace C1PCDT8 = . if (C1PCDT8 == 997 | C1PCDT8 == 998 | C1PCDT8 == 999)
replace C1PCDA8 = . if (C1PCDA8 == 97 | C1PCDA8 == 98 | C1PCDA8 == 99)
replace C1PCDO8 = . if (C1PCDO8 == 7 | C1PCDO8 == 8 | C1PCDO8 == 9)
replace C1PCHA9 = . if (C1PCHA9 == 997 | C1PCHA9 == 998 | C1PCHA9 == 999)
replace C1PCHX9 = . if (C1PCHX9 == 7 | C1PCHX9 == 8 | C1PCHX9 == 9)
replace C1PCHR9 = . if (C1PCHR9 == 97 | C1PCHR9 == 98 | C1PCHR9 == 99)
replace C1PCMB9 = . if (C1PCMB9 == 97 | C1PCMB9 == 98 | C1PCMB9 == 99)
replace C1PCYB9 = . if (C1PCYB9 == 9997 | C1PCYB9 == 9998 | C1PCYB9 == 9999)
replace C1PHHA9 = . if (C1PHHA9 == 997 | C1PHHA9 == 998 | C1PHHA9 == 999)
replace C1PCHH9 = . if (C1PCHH9 == 7 | C1PCHH9 == 8 | C1PCHH9 == 9)
replace C1PCDD9 = . if (C1PCDD9 == 7 | C1PCDD9 == 8 | C1PCDD9 == 9)
replace C1PCDT9 = . if (C1PCDT9 == 997 | C1PCDT9 == 998 | C1PCDT9 == 999)
replace C1PCDA9 = . if (C1PCDA9 == 97 | C1PCDA9 == 98 | C1PCDA9 == 99)
replace C1PCDO9 = . if (C1PCDO9 == 7 | C1PCDO9 == 8 | C1PCDO9 == 9)
replace C1PCHA10 = . if (C1PCHA10 == 997 | C1PCHA10 == 998 | C1PCHA10 == 999)
replace C1PCHX10 = . if (C1PCHX10 == 7 | C1PCHX10 == 8 | C1PCHX10 == 9)
replace C1PCHR10 = . if (C1PCHR10 == 97 | C1PCHR10 == 98 | C1PCHR10 == 99)
replace C1PCMB10 = . if (C1PCMB10 == 97 | C1PCMB10 == 98 | C1PCMB10 == 99)
replace C1PCYB10 = . if (C1PCYB10 == 9997 | C1PCYB10 == 9998 | C1PCYB10 == 9999)
replace C1PCHH10 = . if (C1PCHH10 == 7 | C1PCHH10 == 8 | C1PCHH10 == 9)
replace C1PCDD10 = . if (C1PCDD10 == 7 | C1PCDD10 == 8 | C1PCDD10 == 9)
replace C1PCHA11 = . if (C1PCHA11 == 997 | C1PCHA11 == 998 | C1PCHA11 == 999)
replace C1PCHX11 = . if (C1PCHX11 == 7 | C1PCHX11 == 8 | C1PCHX11 == 9)
replace C1PCHR11 = . if (C1PCHR11 == 97 | C1PCHR11 == 98 | C1PCHR11 == 99)
replace C1PCMB11 = . if (C1PCMB11 == 97 | C1PCMB11 == 98 | C1PCMB11 == 99)
replace C1PCYB11 = . if (C1PCYB11 == 9997 | C1PCYB11 == 9998 | C1PCYB11 == 9999)
replace C1PCHH11 = . if (C1PCHH11 == 7 | C1PCHH11 == 8 | C1PCHH11 == 9)
replace C1PCDD11 = . if (C1PCDD11 == 7 | C1PCDD11 == 8 | C1PCDD11 == 9)
replace C1PCDT11 = . if (C1PCDT11 == 997 | C1PCDT11 == 998 | C1PCDT11 == 999)
replace C1PCDA11 = . if (C1PCDA11 == 97 | C1PCDA11 == 98 | C1PCDA11 == 99)
replace C1PCDO11 = . if (C1PCDO11 == 7 | C1PCDO11 == 8 | C1PCDO11 == 9)
replace C1PCHA12 = . if (C1PCHA12 == 997 | C1PCHA12 == 998 | C1PCHA12 == 999)
replace C1PCHX12 = . if (C1PCHX12 == 7 | C1PCHX12 == 8 | C1PCHX12 == 9)
replace C1PCHR12 = . if (C1PCHR12 == 97 | C1PCHR12 == 98 | C1PCHR12 == 99)
replace C1PCMB12 = . if (C1PCMB12 == 97 | C1PCMB12 == 98 | C1PCMB12 == 99)
replace C1PCYB12 = . if (C1PCYB12 == 9997 | C1PCYB12 == 9998 | C1PCYB12 == 9999)
replace C1PCHH12 = . if (C1PCHH12 == 7 | C1PCHH12 == 8 | C1PCHH12 == 9)
replace C1PCDD12 = . if (C1PCDD12 == 7 | C1PCDD12 == 8 | C1PCDD12 == 9)
replace C1PCHA13 = . if (C1PCHA13 == 997 | C1PCHA13 == 998 | C1PCHA13 == 999)
replace C1PCHX13 = . if (C1PCHX13 == 7 | C1PCHX13 == 8 | C1PCHX13 == 9)
replace C1PCHR13 = . if (C1PCHR13 == 97 | C1PCHR13 == 98 | C1PCHR13 == 99)
replace C1PCMB13 = . if (C1PCMB13 == 97 | C1PCMB13 == 98 | C1PCMB13 == 99)
replace C1PCYB13 = . if (C1PCYB13 == 9997 | C1PCYB13 == 9998 | C1PCYB13 == 9999)
replace C1PCHH13 = . if (C1PCHH13 == 7 | C1PCHH13 == 8 | C1PCHH13 == 9)
replace C1PCDD13 = . if (C1PCDD13 == 7 | C1PCDD13 == 8 | C1PCDD13 == 9)
replace C1PCHA14 = . if (C1PCHA14 == 997 | C1PCHA14 == 998 | C1PCHA14 == 999)
replace C1PCHX14 = . if (C1PCHX14 == 7 | C1PCHX14 == 8 | C1PCHX14 == 9)
replace C1PCHR14 = . if (C1PCHR14 == 97 | C1PCHR14 == 98 | C1PCHR14 == 99)
replace C1PCMB14 = . if (C1PCMB14 == 97 | C1PCMB14 == 98 | C1PCMB14 == 99)
replace C1PCYB14 = . if (C1PCYB14 == 9997 | C1PCYB14 == 9998 | C1PCYB14 == 9999)
replace C1PCHH14 = . if (C1PCHH14 == 7 | C1PCHH14 == 8 | C1PCHH14 == 9)
replace C1PCDD14 = . if (C1PCDD14 == 7 | C1PCDD14 == 8 | C1PCDD14 == 9)
replace C1PCHA15 = . if (C1PCHA15 == 997 | C1PCHA15 == 998 | C1PCHA15 == 999)
replace C1PCHX15 = . if (C1PCHX15 == 7 | C1PCHX15 == 8 | C1PCHX15 == 9)
replace C1PCHR15 = . if (C1PCHR15 == 97 | C1PCHR15 == 98 | C1PCHR15 == 99)
replace C1PCMB15 = . if (C1PCMB15 == 97 | C1PCMB15 == 98 | C1PCMB15 == 99)
replace C1PCYB15 = . if (C1PCYB15 == 9997 | C1PCYB15 == 9998 | C1PCYB15 == 9999)
replace C1PCHH15 = . if (C1PCHH15 == 7 | C1PCHH15 == 8 | C1PCHH15 == 9)
replace C1PCDD15 = . if (C1PCDD15 == 7 | C1PCDD15 == 8 | C1PCDD15 == 9)
replace C1PCHA16 = . if (C1PCHA16 == 997 | C1PCHA16 == 998 | C1PCHA16 == 999)
replace C1PCHX16 = . if (C1PCHX16 == 7 | C1PCHX16 == 8 | C1PCHX16 == 9)
replace C1PCHR16 = . if (C1PCHR16 == 97 | C1PCHR16 == 98 | C1PCHR16 == 99)
replace C1PCMB16 = . if (C1PCMB16 == 97 | C1PCMB16 == 98 | C1PCMB16 == 99)
replace C1PCYB16 = . if (C1PCYB16 == 9997 | C1PCYB16 == 9998 | C1PCYB16 == 9999)
replace C1PCHH16 = . if (C1PCHH16 == 7 | C1PCHH16 == 8 | C1PCHH16 == 9)
replace C1PCDD16 = . if (C1PCDD16 == 7 | C1PCDD16 == 8 | C1PCDD16 == 9)
replace C1PCHA17 = . if (C1PCHA17 == 997 | C1PCHA17 == 998 | C1PCHA17 == 999)
replace C1PCHX17 = . if (C1PCHX17 == 7 | C1PCHX17 == 8 | C1PCHX17 == 9)
replace C1PCHR17 = . if (C1PCHR17 == 97 | C1PCHR17 == 98 | C1PCHR17 == 99)
replace C1PCMB17 = . if (C1PCMB17 == 97 | C1PCMB17 == 98 | C1PCMB17 == 99)
replace C1PCYB17 = . if (C1PCYB17 == 9997 | C1PCYB17 == 9998 | C1PCYB17 == 9999)
replace C1PCHH17 = . if (C1PCHH17 == 7 | C1PCHH17 == 8 | C1PCHH17 == 9)
replace C1PCDD17 = . if (C1PCDD17 == 7 | C1PCDD17 == 8 | C1PCDD17 == 9)
replace C1PCHA18 = . if (C1PCHA18 == 997 | C1PCHA18 == 998 | C1PCHA18 == 999)
replace C1PCHX18 = . if (C1PCHX18 == 7 | C1PCHX18 == 8 | C1PCHX18 == 9)
replace C1PCHR18 = . if (C1PCHR18 == 97 | C1PCHR18 == 98 | C1PCHR18 == 99)
replace C1PCMB18 = . if (C1PCMB18 == 97 | C1PCMB18 == 98 | C1PCMB18 == 99)
replace C1PCYB18 = . if (C1PCYB18 == 9997 | C1PCYB18 == 9998 | C1PCYB18 == 9999)
replace C1PCHH18 = . if (C1PCHH18 == 7 | C1PCHH18 == 8 | C1PCHH18 == 9)
replace C1PCDD18 = . if (C1PCDD18 == 7 | C1PCDD18 == 8 | C1PCDD18 == 9)
replace C1PCHA19 = . if (C1PCHA19 == 997 | C1PCHA19 == 998 | C1PCHA19 == 999)
replace C1PCHX19 = . if (C1PCHX19 == 7 | C1PCHX19 == 8 | C1PCHX19 == 9)
replace C1PCHR19 = . if (C1PCHR19 == 97 | C1PCHR19 == 98 | C1PCHR19 == 99)
replace C1PCMB19 = . if (C1PCMB19 == 97 | C1PCMB19 == 98 | C1PCMB19 == 99)
replace C1PCYB19 = . if (C1PCYB19 == 9997 | C1PCYB19 == 9998 | C1PCYB19 == 9999)
replace C1PCHH19 = . if (C1PCHH19 == 7 | C1PCHH19 == 8 | C1PCHH19 == 9)
replace C1PCDD19 = . if (C1PCDD19 == 7 | C1PCDD19 == 8 | C1PCDD19 == 9)
replace C1PCHA20 = . if (C1PCHA20 == 997 | C1PCHA20 == 998 | C1PCHA20 == 999)
replace C1PCHX20 = . if (C1PCHX20 == 7 | C1PCHX20 == 8 | C1PCHX20 == 9)
replace C1PCHR20 = . if (C1PCHR20 == 97 | C1PCHR20 == 98 | C1PCHR20 == 99)
replace C1PCMB20 = . if (C1PCMB20 == 97 | C1PCMB20 == 98 | C1PCMB20 == 99)
replace C1PCYB20 = . if (C1PCYB20 == 9997 | C1PCYB20 == 9998 | C1PCYB20 == 9999)
replace C1PCHH20 = . if (C1PCHH20 == 7 | C1PCHH20 == 8 | C1PCHH20 == 9)
replace C1PCDD20 = . if (C1PCDD20 == 7 | C1PCDD20 == 8 | C1PCDD20 == 9)
replace C1PCHA21 = . if (C1PCHA21 == 997 | C1PCHA21 == 998 | C1PCHA21 == 999)
replace C1PCHX21 = . if (C1PCHX21 == 7 | C1PCHX21 == 8 | C1PCHX21 == 9)
replace C1PCHR21 = . if (C1PCHR21 == 97 | C1PCHR21 == 98 | C1PCHR21 == 99)
replace C1PCMB21 = . if (C1PCMB21 == 97 | C1PCMB21 == 98 | C1PCMB21 == 99)
replace C1PCYB21 = . if (C1PCYB21 == 9997 | C1PCYB21 == 9998 | C1PCYB21 == 9999)
replace C1PCHH21 = . if (C1PCHH21 == 7 | C1PCHH21 == 8 | C1PCHH21 == 9)
replace C1PCDD21 = . if (C1PCDD21 == 7 | C1PCDD21 == 8 | C1PCDD21 == 9)
replace C1PCHA22 = . if (C1PCHA22 == 997 | C1PCHA22 == 998 | C1PCHA22 == 999)
replace C1PCHX22 = . if (C1PCHX22 == 7 | C1PCHX22 == 8 | C1PCHX22 == 9)
replace C1PCHR22 = . if (C1PCHR22 == 97 | C1PCHR22 == 98 | C1PCHR22 == 99)
replace C1PCMB22 = . if (C1PCMB22 == 97 | C1PCMB22 == 98 | C1PCMB22 == 99)
replace C1PCYB22 = . if (C1PCYB22 == 9997 | C1PCYB22 == 9998 | C1PCYB22 == 9999)
replace C1PCHH22 = . if (C1PCHH22 == 7 | C1PCHH22 == 8 | C1PCHH22 == 9)
replace C1PCDD22 = . if (C1PCDD22 == 7 | C1PCDD22 == 8 | C1PCDD22 == 9)
replace C1PCHA23 = . if (C1PCHA23 == 997 | C1PCHA23 == 998 | C1PCHA23 == 999)
replace C1PCHX23 = . if (C1PCHX23 == 7 | C1PCHX23 == 8 | C1PCHX23 == 9)
replace C1PCHR23 = . if (C1PCHR23 == 97 | C1PCHR23 == 98 | C1PCHR23 == 99)
replace C1PCHX24 = . if (C1PCHX24 == 7 | C1PCHX24 == 8 | C1PCHX24 == 9)
replace C1PCHR24 = . if (C1PCHR24 == 97 | C1PCHR24 == 98 | C1PCHR24 == 99)
replace C1PCHA25 = . if (C1PCHA25 == 997 | C1PCHA25 == 998 | C1PCHA25 == 999)
replace C1PCHX25 = . if (C1PCHX25 == 7 | C1PCHX25 == 8 | C1PCHX25 == 9)
replace C1PCHR25 = . if (C1PCHR25 == 97 | C1PCHR25 == 98 | C1PCHR25 == 99)
replace C1PCHA26 = . if (C1PCHA26 == 997 | C1PCHA26 == 998 | C1PCHA26 == 999)
replace C1PCHX26 = . if (C1PCHX26 == 7 | C1PCHX26 == 8 | C1PCHX26 == 9)
replace C1PCHR26 = . if (C1PCHR26 == 97 | C1PCHR26 == 98 | C1PCHR26 == 99)
replace C1PCHA27 = . if (C1PCHA27 == 997 | C1PCHA27 == 998 | C1PCHA27 == 999)
replace C1PCHX27 = . if (C1PCHX27 == 7 | C1PCHX27 == 8 | C1PCHX27 == 9)
replace C1PCHR27 = . if (C1PCHR27 == 97 | C1PCHR27 == 98 | C1PCHR27 == 99)
replace C1PCHA28 = . if (C1PCHA28 == 997 | C1PCHA28 == 998 | C1PCHA28 == 999)
replace C1PCHX28 = . if (C1PCHX28 == 7 | C1PCHX28 == 8 | C1PCHX28 == 9)
replace C1PCHR28 = . if (C1PCHR28 == 97 | C1PCHR28 == 98 | C1PCHR28 == 99)
replace C1PCHA29 = . if (C1PCHA29 == 997 | C1PCHA29 == 998 | C1PCHA29 == 999)
replace C1PCHX29 = . if (C1PCHX29 == 7 | C1PCHX29 == 8 | C1PCHX29 == 9)
replace C1PCHR29 = . if (C1PCHR29 == 97 | C1PCHR29 == 98 | C1PCHR29 == 99)
replace C1PCHM1N = . if (C1PCHM1N == 9)
replace C1PCHM2N = . if (C1PCHM2N == 9)
replace C1PCHM1X = . if (C1PCHM1X == 9)
replace C1PCHM2X = . if (C1PCHM2X == 9)
replace C1PD1 = . if (C1PD1 == 7 | C1PD1 == 8)
replace C1PD2 = . if (C1PD2 == 97 | C1PD2 == 98 | C1PD2 == 99)
replace C1PD3 = . if (C1PD3 == 7 | C1PD3 == 8 | C1PD3 == 9)
replace C1PD4 = . if (C1PD4 == 7 | C1PD4 == 8 | C1PD4 == 9)
replace C1PD5M = . if (C1PD5M == 97 | C1PD5M == 98 | C1PD5M == 99)
replace C1PD5Y = . if (C1PD5Y == 9997 | C1PD5Y == 9998 | C1PD5Y == 9999)
replace C1PD7 = . if (C1PD7 == 7 | C1PD7 == 8 | C1PD7 == 9)
replace C1PD8A = . if (C1PD8A == 7 | C1PD8A == 8 | C1PD8A == 9)
replace C1PD8B = . if (C1PD8B == 7 | C1PD8B == 8 | C1PD8B == 9)
replace C1PD9 = . if (C1PD9 == 7 | C1PD9 == 8 | C1PD9 == 9)
replace C1PD10 = . if (C1PD10 == 7 | C1PD10 == 8 | C1PD10 == 9)
replace C1PD11 = . if (C1PD11 == 7 | C1PD11 == 8 | C1PD11 == 9)
replace C1PD12 = . if (C1PD12 == 7 | C1PD12 == 8 | C1PD12 == 9)
replace C1PD13 = . if (C1PD13 == 7 | C1PD13 == 8 | C1PD13 == 9)
replace C1PD14 = . if (C1PD14 == 97 | C1PD14 == 98 | C1PD14 == 99)
replace C1PD15 = . if (C1PD15 == 97 | C1PD15 == 98 | C1PD15 == 99)
replace C1PD16 = . if (C1PD16 == 7 | C1PD16 == 8 | C1PD16 == 9)
replace C1PD17 = . if (C1PD17 == 7 | C1PD17 == 8 | C1PD17 == 9)
replace C1PD18 = . if (C1PD18 == 997 | C1PD18 == 998 | C1PD18 == 999)
replace C1PD19N = . if (C1PD19N == 97 | C1PD19N == 98 | C1PD19N == 99)
replace C1PD19M = . if (C1PD19M == 7 | C1PD19M == 8 | C1PD19M == 9)
replace C1PD20 = . if (C1PD20 == 7 | C1PD20 == 8 | C1PD20 == 9)
replace C1PD21 = . if (C1PD21 == 7 | C1PD21 == 8 | C1PD21 == 9)
replace C1PD22 = . if (C1PD22 == 97 | C1PD22 == 98 | C1PD22 == 99)
replace C1PE1 = . if (C1PE1 == 7 | C1PE1 == 8)
replace C1PE1A1 = . if (C1PE1A1 == 7 | C1PE1A1 == 8 | C1PE1A1 == 9)
replace C1PE1A2 = . if (C1PE1A2 == 7 | C1PE1A2 == 8 | C1PE1A2 == 9)
replace C1PE1A3 = . if (C1PE1A3 == 7 | C1PE1A3 == 8 | C1PE1A3 == 9)
replace C1PE1A4 = . if (C1PE1A4 == 7 | C1PE1A4 == 8 | C1PE1A4 == 9)
replace C1PE1A5 = . if (C1PE1A5 == 7 | C1PE1A5 == 8 | C1PE1A5 == 9)
replace C1PE1A6 = . if (C1PE1A6 == 7 | C1PE1A6 == 8 | C1PE1A6 == 9)
replace C1PE1A7 = . if (C1PE1A7 == 7 | C1PE1A7 == 8 | C1PE1A7 == 9)
replace C1PE1BN = . if (C1PE1BN == 997 | C1PE1BN == 998 | C1PE1BN == 999)
replace C1PE1BM = . if (C1PE1BM == 7 | C1PE1BM == 8 | C1PE1BM == 9)
replace C1PE2 = . if (C1PE2 == 7 | C1PE2 == 8)
replace C1PE2AN = . if (C1PE2AN == 997 | C1PE2AN == 998 | C1PE2AN == 999)
replace C1PE2AM = . if (C1PE2AM == 7 | C1PE2AM == 8 | C1PE2AM == 9)
replace C1PE3 = . if (C1PE3 == 7 | C1PE3 == 8)
replace C1PE3AN = . if (C1PE3AN == 997 | C1PE3AN == 998 | C1PE3AN == 999)
replace C1PE3AM = . if (C1PE3AM == 7 | C1PE3AM == 8 | C1PE3AM == 9)
replace C1PF1 = . if (C1PF1 == 97 | C1PF1 == 98)
replace C1PF2A = . if (C1PF2A == 97 | C1PF2A == 98 | C1PF2A == 99)
replace C1PF2B = . if (C1PF2B == 97 | C1PF2B == 98 | C1PF2B == 99)
replace C1PF2C = . if (C1PF2C == 97 | C1PF2C == 98 | C1PF2C == 99)
replace C1PF2_1 = . if (C1PF2_1 == 7 | C1PF2_1 == 8)
replace C1PF2_3 = . if (C1PF2_3 == 7 | C1PF2_3 == 8)
replace C1PF2_4 = . if (C1PF2_4 == 7 | C1PF2_4 == 8)
replace C1PF2_5 = . if (C1PF2_5 == 7 | C1PF2_5 == 8)
replace C1PF2_6 = . if (C1PF2_6 == 7 | C1PF2_6 == 8)
replace C1PF2_7 = . if (C1PF2_7 == 7 | C1PF2_7 == 8)
replace C1PF2_9 = . if (C1PF2_9 == 7 | C1PF2_9 == 8)
replace C1PF2_10 = . if (C1PF2_10 == 7 | C1PF2_10 == 8)
replace C1PF2_11 = . if (C1PF2_11 == 7 | C1PF2_11 == 8)
replace C1PF2_12 = . if (C1PF2_12 == 7 | C1PF2_12 == 8)
replace C1PF2_13 = . if (C1PF2_13 == 7 | C1PF2_13 == 8)
replace C1PF2_14 = . if (C1PF2_14 == 7 | C1PF2_14 == 8)
replace C1PF2_15 = . if (C1PF2_15 == 7 | C1PF2_15 == 8)
replace C1PF2_17 = . if (C1PF2_17 == 7 | C1PF2_17 == 8)
replace C1PF2_18 = . if (C1PF2_18 == 7 | C1PF2_18 == 8)
replace C1PF2_22 = . if (C1PF2_22 == 7 | C1PF2_22 == 8)
replace C1PF2_24 = . if (C1PF2_24 == 7 | C1PF2_24 == 8)
replace C1PF2_30 = . if (C1PF2_30 == 7 | C1PF2_30 == 8)
replace C1PF2_31 = . if (C1PF2_31 == 7 | C1PF2_31 == 8)
replace C1PF2_32 = . if (C1PF2_32 == 7 | C1PF2_32 == 8)
replace C1PF2_33 = . if (C1PF2_33 == 7 | C1PF2_33 == 8)
replace C1PF2_34 = . if (C1PF2_34 == 7 | C1PF2_34 == 8)
replace C1PF2_35 = . if (C1PF2_35 == 7 | C1PF2_35 == 8)
replace C1PF2_36 = . if (C1PF2_36 == 7 | C1PF2_36 == 8)
replace C1PF2_37 = . if (C1PF2_37 == 7 | C1PF2_37 == 8)
replace C1PF2_38 = . if (C1PF2_38 == 7 | C1PF2_38 == 8)
replace C1PF2_39 = . if (C1PF2_39 == 7 | C1PF2_39 == 8)
replace C1PF2_40 = . if (C1PF2_40 == 7 | C1PF2_40 == 8)
replace C1PF2_41 = . if (C1PF2_41 == 7 | C1PF2_41 == 8)
replace C1PF2_42 = . if (C1PF2_42 == 7 | C1PF2_42 == 8)
replace C1PF2_43 = . if (C1PF2_43 == 7 | C1PF2_43 == 8)
replace C1PF2_44 = . if (C1PF2_44 == 7 | C1PF2_44 == 8)
replace C1PF2_45 = . if (C1PF2_45 == 7 | C1PF2_45 == 8)
replace C1PF2_46 = . if (C1PF2_46 == 7 | C1PF2_46 == 8)
replace C1PF2_47 = . if (C1PF2_47 == 7 | C1PF2_47 == 8)
replace C1PF2_48 = . if (C1PF2_48 == 7 | C1PF2_48 == 8)
replace C1PF2_50 = . if (C1PF2_50 == 7 | C1PF2_50 == 8)
replace C1PF2_51 = . if (C1PF2_51 == 7 | C1PF2_51 == 8)
replace C1PF2_52 = . if (C1PF2_52 == 7 | C1PF2_52 == 8)
replace C1PF2_53 = . if (C1PF2_53 == 7 | C1PF2_53 == 8)
replace C1PF2_54 = . if (C1PF2_54 == 7 | C1PF2_54 == 8)
replace C1PF2_56 = . if (C1PF2_56 == 7 | C1PF2_56 == 8)
replace C1PF2_57 = . if (C1PF2_57 == 7 | C1PF2_57 == 8)
replace C1PF2_58 = . if (C1PF2_58 == 7 | C1PF2_58 == 8)
replace C1PF2_66 = . if (C1PF2_66 == 7 | C1PF2_66 == 8)
replace C1PF2_69 = . if (C1PF2_69 == 7 | C1PF2_69 == 8)
replace C1PF2_70 = . if (C1PF2_70 == 7 | C1PF2_70 == 8)
replace C1PF2_71 = . if (C1PF2_71 == 7 | C1PF2_71 == 8)
replace C1PF2_74 = . if (C1PF2_74 == 7 | C1PF2_74 == 8)
replace C1PF2_96 = . if (C1PF2_96 == 7 | C1PF2_96 == 8)
replace C1PF3 = . if (C1PF3 == 7 | C1PF3 == 8 | C1PF3 == 9)
replace C1PF3_1 = . if (C1PF3_1 == 97 | C1PF3_1 == 98 | C1PF3_1 == 99)
replace C1PF4 = . if (C1PF4 == 7 | C1PF4 == 8)
replace C1PF5 = . if (C1PF5 == 7 | C1PF5 == 8)
replace C1PF6 = . if (C1PF6 == 7 | C1PF6 == 8)
replace C1PF7A = . if (C1PF7A == 7 | C1PF7A == 8)
replace C1PF7B = . if (C1PF7B == 7 | C1PF7B == 8 | C1PF7B == 9)
replace C1PF7C = . if (C1PF7C == 7 | C1PF7C == 8 | C1PF7C == 9)
replace C1PF7D = . if (C1PF7D == 7 | C1PF7D == 8 | C1PF7D == 9)
replace C1PF8A = . if (C1PF8A == 7 | C1PF8A == 8 | C1PF8A == 9)
replace C1PF8B = . if (C1PF8B == 7 | C1PF8B == 8 | C1PF8B == 9)
replace C1PF8C = . if (C1PF8C == 7 | C1PF8C == 8 | C1PF8C == 9)
replace C1PF8A1 = . if (C1PF8A1 == 7 | C1PF8A1 == 8 | C1PF8A1 == 9)
replace C1PF9 = . if (C1PF9 == 7 | C1PF9 == 8)
replace C1PF10 = . if (C1PF10 == 7 | C1PF10 == 8)
replace C1PF11 = . if (C1PF11 == 7 | C1PF11 == 8)
replace C1PF12 = . if (C1PF12 == 7 | C1PF12 == 8)
replace C1PF12A = . if (C1PF12A == 7 | C1PF12A == 8 | C1PF12A == 9)
replace C1PF12B = . if (C1PF12B == 7 | C1PF12B == 8 | C1PF12B == 9)
replace C1PG1 = . if (C1PG1 == 7 | C1PG1 == 8)
replace C1PG1A = . if (C1PG1A == 7 | C1PG1A == 8)
replace C1PG2 = . if (C1PG2 == 7 | C1PG2 == 8)
replace C1PG3 = . if (C1PG3 == 7 | C1PG3 == 8)
replace C1PG4 = . if (C1PG4 == 7 | C1PG4 == 8)
replace C1PG5 = . if (C1PG5 == 7 | C1PG5 == 8)
replace C1PG5A = . if (C1PG5A == 7 | C1PG5A == 8 | C1PG5A == 9)
replace C1PG6 = . if (C1PG6 == 7 | C1PG6 == 8)
replace C1PG7 = . if (C1PG7 == 7 | C1PG7 == 8)
replace C1PG8 = . if (C1PG8 == 7 | C1PG8 == 8)
replace C1PG9 = . if (C1PG9 == 7 | C1PG9 == 8)
replace C1SA1 = . if (C1SA1 == -1 | C1SA1 == 98)
replace C1SA2 = . if (C1SA2 == -1 | C1SA2 == 98)
replace C1SA3 = . if (C1SA3 == -1 | C1SA3 == 98)
replace C1SA4 = . if (C1SA4 == -1 | C1SA4 == 98)
replace C1SA5 = . if (C1SA5 == -1 | C1SA5 == 98)
replace C1SSATIS = . if (C1SSATIS == -1.0 | C1SSATIS == 98.0)
replace C1SSATIS2 = . if (C1SSATIS2 == -1.0 | C1SSATIS2 == 98.0)
replace C1SA6A = . if (C1SA6A == -1 | C1SA6A == 8)
replace C1SA6B = . if (C1SA6B == -1 | C1SA6B == 8)
replace C1SA6C = . if (C1SA6C == -1 | C1SA6C == 8)
replace C1SA6D = . if (C1SA6D == -1 | C1SA6D == 8)
replace C1SA6E = . if (C1SA6E == -1 | C1SA6E == 8)
replace C1SA7A = . if (C1SA7A == -1 | C1SA7A == 8)
replace C1SA7B = . if (C1SA7B == -1 | C1SA7B == 8)
replace C1SA7C = . if (C1SA7C == -1 | C1SA7C == 8)
replace C1SA7D = . if (C1SA7D == -1 | C1SA7D == 8)
replace C1SA8A = . if (C1SA8A == -1 | C1SA8A == 8)
replace C1SA8B = . if (C1SA8B == -1 | C1SA8B == 8)
replace C1SA8C = . if (C1SA8C == -1 | C1SA8C == 8)
replace C1SA8D = . if (C1SA8D == -1 | C1SA8D == 8)
replace C1SA8E = . if (C1SA8E == -1 | C1SA8E == 8)
replace C1SA8F = . if (C1SA8F == -1 | C1SA8F == 8)
replace C1SHLOCS = . if (C1SHLOCS == -1.0 | C1SHLOCS == 8.0)
replace C1SHLOCO = . if (C1SHLOCO == -1.0 | C1SHLOCO == 8.0)
replace C1SA9A = . if (C1SA9A == -1 | C1SA9A == 8)
replace C1SA9B = . if (C1SA9B == -1 | C1SA9B == 8)
replace C1SA9C = . if (C1SA9C == -1 | C1SA9C == 8)
replace C1SA9D = . if (C1SA9D == -1 | C1SA9D == 8)
replace C1SA9E = . if (C1SA9E == -1 | C1SA9E == 8)
replace C1SAMPLI = . if (C1SAMPLI == -1.0 | C1SAMPLI == 8.0)
replace C1SA10A = . if (C1SA10A == -1 | C1SA10A == 8)
replace C1SA10B = . if (C1SA10B == -1 | C1SA10B == 8)
replace C1SA10C = . if (C1SA10C == -1 | C1SA10C == 8)
replace C1SA10D = . if (C1SA10D == -1 | C1SA10D == 8)
replace C1SA10E = . if (C1SA10E == -1 | C1SA10E == 8)
replace C1SA10F = . if (C1SA10F == -1 | C1SA10F == 8)
replace C1SA10G = . if (C1SA10G == -1 | C1SA10G == 8)
replace C1SA10H = . if (C1SA10H == -1 | C1SA10H == 8)
replace C1SA10I = . if (C1SA10I == -1 | C1SA10I == 8)
replace C1SA10J = . if (C1SA10J == -1 | C1SA10J == 8)
replace C1SA11A = . if (C1SA11A == -1 | C1SA11A == 8)
replace C1SA11B = . if (C1SA11B == -1 | C1SA11B == 8)
replace C1SA11C = . if (C1SA11C == -1 | C1SA11C == 8)
replace C1SA11D = . if (C1SA11D == -1 | C1SA11D == 8)
replace C1SA11E = . if (C1SA11E == -1 | C1SA11E == 8)
replace C1SA11F = . if (C1SA11F == -1 | C1SA11F == 8)
replace C1SA11G = . if (C1SA11G == -1 | C1SA11G == 8)
replace C1SA11H = . if (C1SA11H == -1 | C1SA11H == 8)
replace C1SA11I = . if (C1SA11I == -1 | C1SA11I == 8)
replace C1SA11J = . if (C1SA11J == -1 | C1SA11J == 8)
replace C1SA11K = . if (C1SA11K == -1 | C1SA11K == 8)
replace C1SA11L = . if (C1SA11L == -1 | C1SA11L == 8)
replace C1SA11M = . if (C1SA11M == -1 | C1SA11M == 8)
replace C1SA11N = . if (C1SA11N == -1 | C1SA11N == 8)
replace C1SA11O = . if (C1SA11O == -1 | C1SA11O == 8)
replace C1SA11P = . if (C1SA11P == -1 | C1SA11P == 8)
replace C1SA11Q = . if (C1SA11Q == -1 | C1SA11Q == 8)
replace C1SA11R = . if (C1SA11R == -1 | C1SA11R == 8)
replace C1SA11S = . if (C1SA11S == -1 | C1SA11S == 8)
replace C1SA11T = . if (C1SA11T == -1 | C1SA11T == 8)
replace C1SA11U = . if (C1SA11U == -1 | C1SA11U == 8)
replace C1SA11V = . if (C1SA11V == -1 | C1SA11V == 8)
replace C1SA11W = . if (C1SA11W == -1 | C1SA11W == 8)
replace C1SA11X = . if (C1SA11X == -1 | C1SA11X == 8)
replace C1SA11Y = . if (C1SA11Y == -1 | C1SA11Y == 8)
replace C1SA11Z = . if (C1SA11Z == -1 | C1SA11Z == 8)
replace C1SA11AA = . if (C1SA11AA == -1 | C1SA11AA == 8)
replace C1SA11BB = . if (C1SA11BB == -1 | C1SA11BB == 8)
replace C1SA11CC = . if (C1SA11CC == -1 | C1SA11CC == 8)
replace C1SA11DD = . if (C1SA11DD == -1 | C1SA11DD == 8)
replace C1SA11EE = . if (C1SA11EE == -1 | C1SA11EE == 8)
replace C1SA11FF = . if (C1SA11FF == -1 | C1SA11FF == 8)
replace C1SA11GG = . if (C1SA11GG == -1 | C1SA11GG == 8)
replace C1SA11HH = . if (C1SA11HH == -1 | C1SA11HH == 8)
replace C1SA11II = . if (C1SA11II == -1 | C1SA11II == 8)
replace C1SA11JJ = . if (C1SA11JJ == -1 | C1SA11JJ == 8)
replace C1SA11KK = . if (C1SA11KK == -1 | C1SA11KK == 8)
replace C1SA11LL = . if (C1SA11LL == -1 | C1SA11LL == 8)
replace C1SA11MM = . if (C1SA11MM == -1 | C1SA11MM == 8)
replace C1SA11NN = . if (C1SA11NN == -1 | C1SA11NN == 8)
replace C1SCHROX = . if (C1SCHROX == -1 | C1SCHROX == 8)
replace C1SCHRON = . if (C1SCHRON == -1 | C1SCHRON == 98)
replace C1SA12A = . if (C1SA12A == -1 | C1SA12A == 8)
replace C1SA12B = . if (C1SA12B == -1 | C1SA12B == 8)
replace C1SA12C = . if (C1SA12C == -1 | C1SA12C == 8)
replace C1SA12D = . if (C1SA12D == -1 | C1SA12D == 8)
replace C1SA12E = . if (C1SA12E == -1 | C1SA12E == 8)
replace C1SA12F = . if (C1SA12F == -1 | C1SA12F == 8)
replace C1SA12G = . if (C1SA12G == -1 | C1SA12G == 8)
replace C1SA12H = . if (C1SA12H == -1 | C1SA12H == 8)
replace C1SA12I = . if (C1SA12I == -1 | C1SA12I == 8)
replace C1SA12J = . if (C1SA12J == -1 | C1SA12J == 8)
replace C1SA12K = . if (C1SA12K == -1 | C1SA12K == 8)
replace C1SA12L = . if (C1SA12L == -1 | C1SA12L == 8)
replace C1SRXMEX = . if (C1SRXMEX == -1 | C1SRXMEX == 8)
replace C1SRXMED = . if (C1SRXMED == -1 | C1SRXMED == 98)
replace C1SA13A = . if (C1SA13A == -1 | C1SA13A == 8)
replace C1SA13B = . if (C1SA13B == -1 | C1SA13B == 8)
replace C1SA13C = . if (C1SA13C == -1 | C1SA13C == 8)
replace C1SA13D = . if (C1SA13D == -1 | C1SA13D == 8)
replace C1SA14A = . if (C1SA14A == -1 | C1SA14A == 8)
replace C1SA14B = . if (C1SA14B == -1 | C1SA14B == 8)
replace C1SA14C = . if (C1SA14C == -1 | C1SA14C == 8)
replace C1SA14D = . if (C1SA14D == -1 | C1SA14D == 8)
replace C1SA14E = . if (C1SA14E == -1 | C1SA14E == 8)
replace C1SA14F = . if (C1SA14F == -1 | C1SA14F == 8)
replace C1SA14G = . if (C1SA14G == -1 | C1SA14G == 8)
replace C1SA14H = . if (C1SA14H == -1 | C1SA14H == 8)
replace C1SA14I = . if (C1SA14I == -1 | C1SA14I == 8)
replace C1SA14J = . if (C1SA14J == -1 | C1SA14J == 8)
replace C1SA14K = . if (C1SA14K == -1 | C1SA14K == 8)
replace C1SA14L = . if (C1SA14L == -1 | C1SA14L == 8)
replace C1SA14M = . if (C1SA14M == -1 | C1SA14M == 8)
replace C1SA14N = . if (C1SA14N == -1 | C1SA14N == 8)
replace C1SA14O = . if (C1SA14O == -1 | C1SA14O == 8)
replace C1SA14P = . if (C1SA14P == -1 | C1SA14P == 8)
replace C1SSPLMX = . if (C1SSPLMX == -1 | C1SSPLMX == 8)
replace C1SSPLMN = . if (C1SSPLMN == -1 | C1SSPLMN == 98)
replace C1SA15 = . if (C1SA15 == -1 | C1SA15 == 8)
replace C1SA16A = . if (C1SA16A == -1 | C1SA16A == 98 | C1SA16A == 99)
replace C1SA16B = . if (C1SA16B == -1 | C1SA16B == 98 | C1SA16B == 99)
replace C1SA16C = . if (C1SA16C == -1 | C1SA16C == 98 | C1SA16C == 99)
replace C1SA16D = . if (C1SA16D == -1 | C1SA16D == 98 | C1SA16D == 99)
replace C1SA16E = . if (C1SA16E == -1 | C1SA16E == 98 | C1SA16E == 99)
replace C1SA17A = . if (C1SA17A == -1 | C1SA17A == 8 | C1SA17A == 9)
replace C1SA17B = . if (C1SA17B == -1 | C1SA17B == 8 | C1SA17B == 9)
replace C1SA17C = . if (C1SA17C == -1 | C1SA17C == 8 | C1SA17C == 9)
replace C1SA17D = . if (C1SA17D == -1 | C1SA17D == 8 | C1SA17D == 9)
replace C1SA17E = . if (C1SA17E == -1 | C1SA17E == 8 | C1SA17E == 9)
replace C1SA17F = . if (C1SA17F == -1 | C1SA17F == 8 | C1SA17F == 9)
replace C1SA17G = . if (C1SA17G == -1 | C1SA17G == 8 | C1SA17G == 9)
replace C1SA17H = . if (C1SA17H == -1 | C1SA17H == 8 | C1SA17H == 9)
replace C1SA17I = . if (C1SA17I == -1 | C1SA17I == 8 | C1SA17I == 9)
replace C1SA18 = . if (C1SA18 == -1 | C1SA18 == 8 | C1SA18 == 9)
replace C1SA19 = . if (C1SA19 == -1)
replace C1SA19 = . if (C1SA19 >= 7 & C1SA19 <= 9)
replace C1SA20A = . if (C1SA20A == -1 | C1SA20A == 8)
replace C1SA20B = . if (C1SA20B == -1 | C1SA20B == 8)
replace C1SA20C = . if (C1SA20C == -1 | C1SA20C == 8)
replace C1SA20D = . if (C1SA20D == -1 | C1SA20D == 8)
replace C1SA20E = . if (C1SA20E == -1 | C1SA20E == 8)
replace C1SA20F = . if (C1SA20F == -1 | C1SA20F == 8)
replace C1SA20G = . if (C1SA20G == -1 | C1SA20G == 8)
replace C1SA20H = . if (C1SA20H == -1 | C1SA20H == 8)
replace C1SA20I = . if (C1SA20I == -1 | C1SA20I == 8)
replace C1SA20J = . if (C1SA20J == -1 | C1SA20J == 8)
replace C1SA20K = . if (C1SA20K == -1 | C1SA20K == 8)
replace C1SA20L = . if (C1SA20L == -1 | C1SA20L == 8)
replace C1SA20M = . if (C1SA20M == -1 | C1SA20M == 8)
replace C1SA20N = . if (C1SA20N == -1 | C1SA20N == 8)
replace C1SA21 = . if (C1SA21 == -1 | C1SA21 == 8)
replace C1SNEGAF = . if (C1SNEGAF == -1.0 | C1SNEGAF == 8.0)
replace C1SNEGPA = . if (C1SNEGPA == -1.0 | C1SNEGPA == 8.0)
replace C1SA22A = . if (C1SA22A == -1 | C1SA22A == 8)
replace C1SA22B = . if (C1SA22B == -1 | C1SA22B == 8)
replace C1SA22C = . if (C1SA22C == -1 | C1SA22C == 8)
replace C1SA22D = . if (C1SA22D == -1 | C1SA22D == 8)
replace C1SA22E = . if (C1SA22E == -1 | C1SA22E == 8)
replace C1SA22F = . if (C1SA22F == -1 | C1SA22F == 8)
replace C1SA22G = . if (C1SA22G == -1 | C1SA22G == 8)
replace C1SA22H = . if (C1SA22H == -1 | C1SA22H == 8)
replace C1SA22I = . if (C1SA22I == -1 | C1SA22I == 8)
replace C1SA22J = . if (C1SA22J == -1 | C1SA22J == 8)
replace C1SA22K = . if (C1SA22K == -1 | C1SA22K == 8)
replace C1SA22L = . if (C1SA22L == -1 | C1SA22L == 8)
replace C1SA22M = . if (C1SA22M == -1 | C1SA22M == 8)
replace C1SA23 = . if (C1SA23 == -1 | C1SA23 == 8)
replace C1SPOSAF = . if (C1SPOSAF == -1.0 | C1SPOSAF == 8.0)
replace C1SPOSPA = . if (C1SPOSPA == -1.0 | C1SPOSPA == 8.0)
replace C1SA24A = . if (C1SA24A == -1 | C1SA24A == 8)
replace C1SA24B = . if (C1SA24B == -1 | C1SA24B == 8)
replace C1SA24C = . if (C1SA24C == -1 | C1SA24C == 8)
replace C1SA24D = . if (C1SA24D == -1 | C1SA24D == 8)
replace C1SA24E = . if (C1SA24E == -1 | C1SA24E == 8)
replace C1SA24F = . if (C1SA24F == -1 | C1SA24F == 8)
replace C1SA24G = . if (C1SA24G == -1 | C1SA24G == 8)
replace C1SA24H = . if (C1SA24H == -1 | C1SA24H == 8)
replace C1SA24I = . if (C1SA24I == -1 | C1SA24I == 8)
replace C1SA24J = . if (C1SA24J == -1 | C1SA24J == 8)
replace C1SBADL1 = . if (C1SBADL1 == -1.0 | C1SBADL1 == 8.0)
replace C1SBADL2 = . if (C1SBADL2 == -1.0 | C1SBADL2 == 8.0)
replace C1SIADL = . if (C1SIADL == -1.0 | C1SIADL == 8.0)
replace C1SA25A = . if (C1SA25A == -1 | C1SA25A == 8)
replace C1SA25B = . if (C1SA25B == -1 | C1SA25B == 8)
replace C1SA25C = . if (C1SA25C == -1 | C1SA25C == 8)
replace C1SA25D = . if (C1SA25D == -1 | C1SA25D == 8)
replace C1SDYSPN = . if (C1SDYSPN == -1 | C1SDYSPN == 8)
replace C1SA26A = . if (C1SA26A == -1 | C1SA26A == 8)
replace C1SA26B = . if (C1SA26B == -1 | C1SA26B == 8)
replace C1SA26C = . if (C1SA26C == -1 | C1SA26C == 8)
replace C1SA26D = . if (C1SA26D == -1 | C1SA26D == 8)
replace C1SA26E = . if (C1SA26E == -1 | C1SA26E == 8)
replace C1SA26F = . if (C1SA26F == -1 | C1SA26F == 8)
replace C1SA27A = . if (C1SA27A == -1 | C1SA27A == 8)
replace C1SA27B = . if (C1SA27B == -1 | C1SA27B == 8)
replace C1SA27C = . if (C1SA27C == -1 | C1SA27C == 8)
replace C1SA27D = . if (C1SA27D == -1 | C1SA27D == 8)
replace C1SA27E = . if (C1SA27E == -1 | C1SA27E == 8)
replace C1SA27F = . if (C1SA27F == -1 | C1SA27F == 8)
replace C1SA28A = . if (C1SA28A == -1 | C1SA28A == 8)
replace C1SA28B = . if (C1SA28B == -1 | C1SA28B == 8)
replace C1SA28C = . if (C1SA28C == -1 | C1SA28C == 8)
replace C1SA28D = . if (C1SA28D == -1 | C1SA28D == 8)
replace C1SA28E = . if (C1SA28E == -1 | C1SA28E == 8)
replace C1SA28F = . if (C1SA28F == -1 | C1SA28F == 8)
replace C1SA29A = . if (C1SA29A == -1 | C1SA29A == 8)
replace C1SA29B = . if (C1SA29B == -1 | C1SA29B == 8)
replace C1SA29C = . if (C1SA29C == -1 | C1SA29C == 8)
replace C1SA29D = . if (C1SA29D == -1 | C1SA29D == 8)
replace C1SA29E = . if (C1SA29E == -1 | C1SA29E == 8)
replace C1SA29F = . if (C1SA29F == -1 | C1SA29F == 8)
replace C1SA30A = . if (C1SA30A == -1 | C1SA30A == 8)
replace C1SA30B = . if (C1SA30B == -1 | C1SA30B == 8)
replace C1SA30C = . if (C1SA30C == -1 | C1SA30C == 8)
replace C1SA30D = . if (C1SA30D == -1 | C1SA30D == 8)
replace C1SA30E = . if (C1SA30E == -1 | C1SA30E == 8)
replace C1SA30F = . if (C1SA30F == -1 | C1SA30F == 8)
replace C1SA30G = . if (C1SA30G == -1 | C1SA30G == 8)
replace C1SA30H = . if (C1SA30H == -1 | C1SA30H == 8)
replace C1SA30I = . if (C1SA30I == -1 | C1SA30I == 8)
replace C1SINTAG = . if (C1SINTAG == -1.0 | C1SINTAG == 8.0)
replace C1SA31 = . if (C1SA31 == -1.00 | C1SA31 == 98.00)
replace C1SA32 = . if (C1SA32 == -1.00 | C1SA32 == 98.00)
replace C1SWSTHI = . if (C1SWSTHI == -1.0 | C1SWSTHI == 8.0)
replace C1SA33A = . if (C1SA33A == -1 | C1SA33A == 8)
replace C1SA33B = . if (C1SA33B == -1.0 | C1SA33B == 98.0)
replace C1SA34 = . if (C1SA34 == -1 | C1SA34 == 8)
replace C1SA35 = . if (C1SA35 == -1 | C1SA35 == 998)
replace C1SBMI = . if (C1SBMI == -1.0 | C1SBMI == 98.0)
replace C1SA36 = . if (C1SA36 == -1 | C1SA36 == 998)
replace C1SA37 = . if (C1SA37 == -1 | C1SA37 == 998)
replace C1SA38 = . if (C1SA38 == -1 | C1SA38 == 98)
replace C1SA39 = . if (C1SA39 == -1 | C1SA39 == 8)
replace C1SA39AA = . if (C1SA39AA == -1 | C1SA39AA == 8 | C1SA39AA == 9)
replace C1SA39AB = . if (C1SA39AB == -1 | C1SA39AB == 8 | C1SA39AB == 9)
replace C1SA39AC = . if (C1SA39AC == -1 | C1SA39AC == 8 | C1SA39AC == 9)
replace C1SA40 = . if (C1SA40 == -1 | C1SA40 == 8)
replace C1SA41 = . if (C1SA41 == -1 | C1SA41 == 9998 | C1SA41 == 9999)
replace C1SA42 = . if (C1SA42 == -1 | C1SA42 == 998 | C1SA42 == 999)
replace C1SA43 = . if (C1SA43 == -1 | C1SA43 == 998 | C1SA43 == 999)
replace C1SA44A = . if (C1SA44A == -1 | C1SA44A == 8)
replace C1SA44B = . if (C1SA44B == -1 | C1SA44B == 8)
replace C1SA44C = . if (C1SA44C == -1 | C1SA44C == 8)
replace C1SA44D = . if (C1SA44D == -1 | C1SA44D == 8)
replace C1SA44E = . if (C1SA44E == -1 | C1SA44E == 8)
replace C1SA44F = . if (C1SA44F == -1 | C1SA44F == 8)
replace C1SA44G = . if (C1SA44G == -1 | C1SA44G == 8)
replace C1SA44H = . if (C1SA44H == -1 | C1SA44H == 8)
replace C1SA45 = . if (C1SA45 == -1 | C1SA45 == 98)
replace C1SA46A = . if (C1SA46A == -1 | C1SA46A == 8)
replace C1SA46B = . if (C1SA46B == -1 | C1SA46B == 8)
replace C1SA46C = . if (C1SA46C == -1 | C1SA46C == 8)
replace C1SA46D = . if (C1SA46D == -1 | C1SA46D == 8)
replace C1SA46E = . if (C1SA46E == -1 | C1SA46E == 8)
replace C1SA46F = . if (C1SA46F == -1 | C1SA46F == 8)
replace C1SA46G = . if (C1SA46G == -1 | C1SA46G == 8)
replace C1SA46H = . if (C1SA46H == -1 | C1SA46H == 8)
replace C1SA47 = . if (C1SA47 == -1 | C1SA47 == 98)
replace C1SA48 = . if (C1SA48 == -1 | C1SA48 == 8)
replace C1SA49A = . if (C1SA49A == -1 | C1SA49A == 998)
replace C1SA49B = . if (C1SA49B == -1 | C1SA49B == 998)
replace C1SA49C = . if (C1SA49C == -1 | C1SA49C == 998)
replace C1SA49D = . if (C1SA49D == -1 | C1SA49D == 998)
replace C1SA49E = . if (C1SA49E == -1 | C1SA49E == 998)
replace C1SUSEMD = . if (C1SUSEMD == -1 | C1SUSEMD == 998)
replace C1SA50A = . if (C1SA50A == -1 | C1SA50A == 998)
replace C1SA50B = . if (C1SA50B == -1 | C1SA50B == 998)
replace C1SA50C = . if (C1SA50C == -1 | C1SA50C == 998)
replace C1SA50D = . if (C1SA50D == -1 | C1SA50D == 998)
replace C1SUSEMH = . if (C1SUSEMH == -1 | C1SUSEMH == 998)
replace C1SA51A = . if (C1SA51A == -1 | C1SA51A == 8)
replace C1SA51AY = . if (C1SA51AY == -1 | C1SA51AY == 98 | C1SA51AY == 99)
replace C1SA51AZ = . if (C1SA51AZ == -1 | C1SA51AZ == 998 | C1SA51AZ == 999)
replace C1SA51B = . if (C1SA51B == -1 | C1SA51B == 8)
replace C1SA51BY = . if (C1SA51BY == -1 | C1SA51BY == 98 | C1SA51BY == 99)
replace C1SA51BZ = . if (C1SA51BZ == -1 | C1SA51BZ == 998 | C1SA51BZ == 999)
replace C1SA51C = . if (C1SA51C == -1 | C1SA51C == 8)
replace C1SA51CY = . if (C1SA51CY == -1 | C1SA51CY == 98 | C1SA51CY == 99)
replace C1SA51CZ = . if (C1SA51CZ == -1 | C1SA51CZ == 998 | C1SA51CZ == 999)
replace C1SA51D = . if (C1SA51D == -1 | C1SA51D == 8)
replace C1SA51DY = . if (C1SA51DY == -1 | C1SA51DY == 98 | C1SA51DY == 99)
replace C1SA51DZ = . if (C1SA51DZ == -1 | C1SA51DZ == 998 | C1SA51DZ == 999)
replace C1SA51E = . if (C1SA51E == -1 | C1SA51E == 8)
replace C1SA51EY = . if (C1SA51EY == -1 | C1SA51EY == 98 | C1SA51EY == 99)
replace C1SA51EZ = . if (C1SA51EZ == -1 | C1SA51EZ == 998 | C1SA51EZ == 999)
replace C1SA51F = . if (C1SA51F == -1 | C1SA51F == 8)
replace C1SA51FY = . if (C1SA51FY == -1 | C1SA51FY == 98 | C1SA51FY == 99)
replace C1SA51FZ = . if (C1SA51FZ == -1 | C1SA51FZ == 998 | C1SA51FZ == 999)
replace C1SA51G = . if (C1SA51G == -1 | C1SA51G == 8)
replace C1SA51GY = . if (C1SA51GY == -1 | C1SA51GY == 98 | C1SA51GY == 99)
replace C1SA51GZ = . if (C1SA51GZ == -1 | C1SA51GZ == 998 | C1SA51GZ == 999)
replace C1SA51H = . if (C1SA51H == -1 | C1SA51H == 8)
replace C1SA51HY = . if (C1SA51HY == -1 | C1SA51HY == 98 | C1SA51HY == 99)
replace C1SA51HZ = . if (C1SA51HZ == -1 | C1SA51HZ == 998 | C1SA51HZ == 999)
replace C1SA51I = . if (C1SA51I == -1 | C1SA51I == 8)
replace C1SA51IY = . if (C1SA51IY == -1 | C1SA51IY == 98 | C1SA51IY == 99)
replace C1SA51IZ = . if (C1SA51IZ == -1 | C1SA51IZ == 998 | C1SA51IZ == 999)
replace C1SA51J = . if (C1SA51J == -1 | C1SA51J == 8)
replace C1SA51JY = . if (C1SA51JY == -1 | C1SA51JY == 98 | C1SA51JY == 99)
replace C1SA51JZ = . if (C1SA51JZ == -1 | C1SA51JZ == 998 | C1SA51JZ == 999)
replace C1SA51K = . if (C1SA51K == -1 | C1SA51K == 8)
replace C1SA51KY = . if (C1SA51KY == -1 | C1SA51KY == 98 | C1SA51KY == 99)
replace C1SA51KZ = . if (C1SA51KZ == -1 | C1SA51KZ == 998 | C1SA51KZ == 999)
replace C1SA52A = . if (C1SA52A == -1 | C1SA52A == 8)
replace C1SA52B = . if (C1SA52B == -1 | C1SA52B == 8)
replace C1SA52C = . if (C1SA52C == -1 | C1SA52C == 8)
replace C1SA52D = . if (C1SA52D == -1 | C1SA52D == 8)
replace C1SA52E = . if (C1SA52E == -1 | C1SA52E == 8)
replace C1SA52F = . if (C1SA52F == -1 | C1SA52F == 8)
replace C1SA52G = . if (C1SA52G == -1 | C1SA52G == 8)
replace C1SA52H = . if (C1SA52H == -1 | C1SA52H == 8)
replace C1SA52I = . if (C1SA52I == -1 | C1SA52I == 8)
replace C1SA52J = . if (C1SA52J == -1 | C1SA52J == 8)
replace C1SA52K = . if (C1SA52K == -1 | C1SA52K == 8)
replace C1SA52L = . if (C1SA52L == -1 | C1SA52L == 8)
replace C1SA52M = . if (C1SA52M == -1 | C1SA52M == 8)
replace C1SA52N = . if (C1SA52N == -1 | C1SA52N == 8)
replace C1SA52O = . if (C1SA52O == -1 | C1SA52O == 8)
replace C1SA52P = . if (C1SA52P == -1 | C1SA52P == 8)
replace C1SA52Q = . if (C1SA52Q == -1 | C1SA52Q == 8)
replace C1SA52R = . if (C1SA52R == -1 | C1SA52R == 8)
replace C1SA52S = . if (C1SA52S == -1 | C1SA52S == 8)
replace C1SA53A = . if (C1SA53A == -1 | C1SA53A == 98)
replace C1SA53B = . if (C1SA53B == -1 | C1SA53B == 98)
replace C1SA54A = . if (C1SA54A == -1 | C1SA54A == 98)
replace C1SA54B = . if (C1SA54B == -1 | C1SA54B == 98)
replace C1SA55A = . if (C1SA55A == -1 | C1SA55A == 98)
replace C1SA55B = . if (C1SA55B == -1 | C1SA55B == 98)
replace C1SA56 = . if (C1SA56 == -1 | C1SA56 == 98)
replace C1SA57A = . if (C1SA57A == -1 | C1SA57A == 8)
replace C1SA57B = . if (C1SA57B == -1 | C1SA57B == 8)
replace C1SA57C = . if (C1SA57C == -1 | C1SA57C == 8)
replace C1SA57D = . if (C1SA57D == -1 | C1SA57D == 8)
replace C1SA58A = . if (C1SA58A == -1 | C1SA58A == 8)
replace C1SA58B = . if (C1SA58B == -1 | C1SA58B == 8)
replace C1SA58C = . if (C1SA58C == -1 | C1SA58C == 8)
replace C1SA58D = . if (C1SA58D == -1 | C1SA58D == 8)
replace C1SA58E = . if (C1SA58E == -1 | C1SA58E == 8)
replace C1SA58F = . if (C1SA58F == -1 | C1SA58F == 8)
replace C1SA58G = . if (C1SA58G == -1 | C1SA58G == 8)
replace C1SA58H = . if (C1SA58H == -1 | C1SA58H == 8)
replace C1SA58I = . if (C1SA58I == -1 | C1SA58I == 8)
replace C1SA58J = . if (C1SA58J == -1 | C1SA58J == 8)
replace C1SA59 = . if (C1SA59 == -1 | C1SA59 == 8)
replace C1SA60 = . if (C1SA60 == -1 | C1SA60 == 8 | C1SA60 == 9)
replace C1SA61 = . if (C1SA61 == -1 | C1SA61 == 8 | C1SA61 == 9)
replace C1SA62A = . if (C1SA62A == -1 | C1SA62A == 8 | C1SA62A == 9)
replace C1SA62B = . if (C1SA62B == -1 | C1SA62B == 8 | C1SA62B == 9)
replace C1SA62C = . if (C1SA62C == -1 | C1SA62C == 8 | C1SA62C == 9)
replace C1SA62D = . if (C1SA62D == -1 | C1SA62D == 8 | C1SA62D == 9)
replace C1SA62E = . if (C1SA62E == -1 | C1SA62E == 8 | C1SA62E == 9)
replace C1SA63 = . if (C1SA63 == -1 | C1SA63 == 8)
replace C1SA64A = . if (C1SA64A == -1 | C1SA64A == 8 | C1SA64A == 9)
replace C1SA64B = . if (C1SA64B == -1 | C1SA64B == 8 | C1SA64B == 9)
replace C1SA64C = . if (C1SA64C == -1 | C1SA64C == 8 | C1SA64C == 9)
replace C1SA64D = . if (C1SA64D == -1 | C1SA64D == 8 | C1SA64D == 9)
replace C1SA64E = . if (C1SA64E == -1 | C1SA64E == 8 | C1SA64E == 9)
replace C1SALCOH = . if (C1SALCOH == -1 | C1SALCOH == 8)
replace C1SA65 = . if (C1SA65 == -1 | C1SA65 == 8 | C1SA65 == 9)
replace C1SA66 = . if (C1SA66 == -1 | C1SA66 == 8 | C1SA66 == 9)
replace C1SB1 = . if (C1SB1 == -1 | C1SB1 == 8 | C1SB1 == 9)
replace C1SB2A = . if (C1SB2A == -1 | C1SB2A == 8 | C1SB2A == 9)
replace C1SB2B = . if (C1SB2B == -1 | C1SB2B == 8 | C1SB2B == 9)
replace C1SB2C = . if (C1SB2C == -1 | C1SB2C == 8 | C1SB2C == 9)
replace C1SB2D = . if (C1SB2D == -1 | C1SB2D == 8 | C1SB2D == 9)
replace C1SB2E = . if (C1SB2E == -1 | C1SB2E == 8 | C1SB2E == 9)
replace C1SB3 = . if (C1SB3 == -1 | C1SB3 == 9998 | C1SB3 == 9999)
replace C1SB4 = . if (C1SB4 == -1 | C1SB4 == 8 | C1SB4 == 9)
replace C1SB5A = . if (C1SB5A == -1 | C1SB5A == 98 | C1SB5A == 99)
replace C1SB5B = . if (C1SB5B == -1 | C1SB5B == 98 | C1SB5B == 99)
replace C1SB5C = . if (C1SB5C == -1 | C1SB5C == 9998 | C1SB5C == 9999)
replace C1SB6 = . if (C1SB6 == -1)
replace C1SB6 = . if (C1SB6 >= 7 & C1SB6 <= 9)
replace C1SB7 = . if (C1SB7 == -1 | C1SB7 == 8 | C1SB7 == 9)
replace C1SB8A1 = . if (C1SB8A1 == -1 | C1SB8A1 == 8 | C1SB8A1 == 9)
replace C1SB8A2 = . if (C1SB8A2 == -1 | C1SB8A2 == 8 | C1SB8A2 == 9)
replace C1SB8A3 = . if (C1SB8A3 == -1 | C1SB8A3 == 8 | C1SB8A3 == 9)
replace C1SB8A4 = . if (C1SB8A4 == -1 | C1SB8A4 == 998 | C1SB8A4 == 999)
replace C1SB8B1 = . if (C1SB8B1 == -1 | C1SB8B1 == 8 | C1SB8B1 == 9)
replace C1SB8B2 = . if (C1SB8B2 == -1 | C1SB8B2 == 8 | C1SB8B2 == 9)
replace C1SB8B3 = . if (C1SB8B3 == -1 | C1SB8B3 == 8 | C1SB8B3 == 9)
replace C1SB8B4 = . if (C1SB8B4 == -1 | C1SB8B4 == 998 | C1SB8B4 == 999)
replace C1SB8C1 = . if (C1SB8C1 == -1 | C1SB8C1 == 8 | C1SB8C1 == 9)
replace C1SB8C2 = . if (C1SB8C2 == -1 | C1SB8C2 == 8 | C1SB8C2 == 9)
replace C1SB8C3 = . if (C1SB8C3 == -1 | C1SB8C3 == 8 | C1SB8C3 == 9)
replace C1SB8C4 = . if (C1SB8C4 == -1 | C1SB8C4 == 998 | C1SB8C4 == 999)
replace C1SB9 = . if (C1SB9 == -1 | C1SB9 == 8 | C1SB9 == 9)
replace C1SB10 = . if (C1SB10 == -1 | C1SB10 == 8 | C1SB10 == 9)
replace C1SB11 = . if (C1SB11 == -1 | C1SB11 == 8 | C1SB11 == 9)
replace C1SB12A = . if (C1SB12A == -1 | C1SB12A == 8 | C1SB12A == 9)
replace C1SB12B = . if (C1SB12B == -1 | C1SB12B == 8 | C1SB12B == 9)
replace C1SB12C = . if (C1SB12C == -1 | C1SB12C == 8 | C1SB12C == 9)
replace C1SB12D = . if (C1SB12D == -1 | C1SB12D == 8 | C1SB12D == 9)
replace C1SB12E = . if (C1SB12E == -1 | C1SB12E == 8 | C1SB12E == 9)
replace C1SB12F = . if (C1SB12F == -1 | C1SB12F == 8 | C1SB12F == 9)
replace C1SB12G = . if (C1SB12G == -1 | C1SB12G == 8 | C1SB12G == 9)
replace C1SB13A = . if (C1SB13A == -1 | C1SB13A == 98 | C1SB13A == 99)
replace C1SB13B = . if (C1SB13B == -1 | C1SB13B == 9998 | C1SB13B == 9999)
replace C1SB14 = . if (C1SB14 == -1 | C1SB14 == 8 | C1SB14 == 9)
replace C1SB15A = . if (C1SB15A == -1 | C1SB15A == 98 | C1SB15A == 99)
replace C1SB15B = . if (C1SB15B == -1 | C1SB15B == 9998 | C1SB15B == 9999)
replace C1SB16A = . if (C1SB16A == -1 | C1SB16A == 8 | C1SB16A == 9)
replace C1SB16B = . if (C1SB16B == -1 | C1SB16B == 8 | C1SB16B == 9)
replace C1SB16C = . if (C1SB16C == -1 | C1SB16C == 8 | C1SB16C == 9)
replace C1SB16D = . if (C1SB16D == -1 | C1SB16D == 8 | C1SB16D == 9)
replace C1SB17 = . if (C1SB17 == -1 | C1SB17 == 8 | C1SB17 == 9)
replace C1SB18 = . if (C1SB18 == -1 | C1SB18 == 8 | C1SB18 == 9)
replace C1SB19 = . if (C1SB19 == -1 | C1SB19 == 8 | C1SB19 == 9)
replace C1SB20A = . if (C1SB20A == -1 | C1SB20A == 8 | C1SB20A == 9)
replace C1SB20B = . if (C1SB20B == -1 | C1SB20B == 8 | C1SB20B == 9)
replace C1SB20C = . if (C1SB20C == -1 | C1SB20C == 8 | C1SB20C == 9)
replace C1SB20D = . if (C1SB20D == -1 | C1SB20D == 8 | C1SB20D == 9)
replace C1SB20E = . if (C1SB20E == -1 | C1SB20E == 8 | C1SB20E == 9)
replace C1SB20F = . if (C1SB20F == -1 | C1SB20F == 8 | C1SB20F == 9)
replace C1SB20G = . if (C1SB20G == -1 | C1SB20G == 8 | C1SB20G == 9)
replace C1SB21 = . if (C1SB21 == -1 | C1SB21 == 8 | C1SB21 == 9)
replace C1SB22A = . if (C1SB22A == -1 | C1SB22A == 8 | C1SB22A == 9)
replace C1SB22B = . if (C1SB22B == -1 | C1SB22B == 8 | C1SB22B == 9)
replace C1SB22C = . if (C1SB22C == -1 | C1SB22C == 8 | C1SB22C == 9)
replace C1SC1 = . if (C1SC1 == -1 | C1SC1 == 8)
replace C1SC2A = . if (C1SC2A == -1 | C1SC2A == 8 | C1SC2A == 9)
replace C1SC2B = . if (C1SC2B == -1 | C1SC2B == 8 | C1SC2B == 9)
replace C1SC2C = . if (C1SC2C == -1 | C1SC2C == 8 | C1SC2C == 9)
replace C1SC2D = . if (C1SC2D == -1 | C1SC2D == 8 | C1SC2D == 9)
replace C1SC2E = . if (C1SC2E == -1 | C1SC2E == 8 | C1SC2E == 9)
replace C1SC2F = . if (C1SC2F == -1 | C1SC2F == 8 | C1SC2F == 9)
replace C1SC2G = . if (C1SC2G == -1 | C1SC2G == 8 | C1SC2G == 9)
replace C1SC2H = . if (C1SC2H == -1 | C1SC2H == 8 | C1SC2H == 9)
replace C1SC2I = . if (C1SC2I == -1 | C1SC2I == 8 | C1SC2I == 9)
replace C1SC2J = . if (C1SC2J == -1 | C1SC2J == 8 | C1SC2J == 9)
replace C1SC2K = . if (C1SC2K == -1 | C1SC2K == 8 | C1SC2K == 9)
replace C1SC2L = . if (C1SC2L == -1 | C1SC2L == 8 | C1SC2L == 9)
replace C1SC2M = . if (C1SC2M == -1 | C1SC2M == 8 | C1SC2M == 9)
replace C1SC3A = . if (C1SC3A == -1)
replace C1SC3A = . if (C1SC3A >= 7 & C1SC3A <= 9)
replace C1SC3B = . if (C1SC3B == -1)
replace C1SC3B = . if (C1SC3B >= 7 & C1SC3B <= 9)
replace C1SC3C = . if (C1SC3C == -1)
replace C1SC3C = . if (C1SC3C >= 7 & C1SC3C <= 9)
replace C1SC3D = . if (C1SC3D == -1)
replace C1SC3D = . if (C1SC3D >= 7 & C1SC3D <= 9)
replace C1SC3E = . if (C1SC3E == -1)
replace C1SC3E = . if (C1SC3E >= 7 & C1SC3E <= 9)
replace C1SC3F = . if (C1SC3F == -1)
replace C1SC3F = . if (C1SC3F >= 7 & C1SC3F <= 9)
replace C1SC3G = . if (C1SC3G == -1)
replace C1SC3G = . if (C1SC3G >= 7 & C1SC3G <= 9)
replace C1SC3H = . if (C1SC3H == -1)
replace C1SC3H = . if (C1SC3H >= 7 & C1SC3H <= 9)
replace C1SC4 = . if (C1SC4 == -1)
replace C1SC4 = . if (C1SC4 >= 7 & C1SC4 <= 9)
replace C1SC5 = . if (C1SC5 == -1)
replace C1SC5 = . if (C1SC5 >= 7 & C1SC5 <= 9)
replace C1SC6 = . if (C1SC6 == -1)
replace C1SC6 = . if (C1SC6 >= 7 & C1SC6 <= 9)
replace C1SC7A = . if (C1SC7A == -1)
replace C1SC7A = . if (C1SC7A >= 7 & C1SC7A <= 9)
replace C1SC7B = . if (C1SC7B == -1)
replace C1SC7B = . if (C1SC7B >= 7 & C1SC7B <= 9)
replace C1SC7C = . if (C1SC7C == -1)
replace C1SC7C = . if (C1SC7C >= 7 & C1SC7C <= 9)
replace C1SC7D = . if (C1SC7D == -1)
replace C1SC7D = . if (C1SC7D >= 7 & C1SC7D <= 9)
replace C1SC8A = . if (C1SC8A == -1)
replace C1SC8A = . if (C1SC8A >= 7 & C1SC8A <= 9)
replace C1SC8B = . if (C1SC8B == -1)
replace C1SC8B = . if (C1SC8B >= 7 & C1SC8B <= 9)
replace C1SC8C = . if (C1SC8C == -1)
replace C1SC8C = . if (C1SC8C >= 7 & C1SC8C <= 9)
replace C1SC9 = . if (C1SC9 == -1 | C1SC9 == 8)
replace C1SC10A = . if (C1SC10A == -1)
replace C1SC10A = . if (C1SC10A >= 7 & C1SC10A <= 9)
replace C1SC10B = . if (C1SC10B == -1)
replace C1SC10B = . if (C1SC10B >= 7 & C1SC10B <= 9)
replace C1SC10C = . if (C1SC10C == -1)
replace C1SC10C = . if (C1SC10C >= 7 & C1SC10C <= 9)
replace C1SC10D = . if (C1SC10D == -1)
replace C1SC10D = . if (C1SC10D >= 7 & C1SC10D <= 9)
replace C1SC10E = . if (C1SC10E == -1)
replace C1SC10E = . if (C1SC10E >= 7 & C1SC10E <= 9)
replace C1SC10F = . if (C1SC10F == -1)
replace C1SC10F = . if (C1SC10F >= 7 & C1SC10F <= 9)
replace C1SC10G = . if (C1SC10G == -1)
replace C1SC10G = . if (C1SC10G >= 7 & C1SC10G <= 9)
replace C1SC10H = . if (C1SC10H == -1)
replace C1SC10H = . if (C1SC10H >= 7 & C1SC10H <= 9)
replace C1SC11 = . if (C1SC11 == -1)
replace C1SC11 = . if (C1SC11 >= 7 & C1SC11 <= 9)
replace C1SC12 = . if (C1SC12 == -1)
replace C1SC12 = . if (C1SC12 >= 7 & C1SC12 <= 9)
replace C1SC13 = . if (C1SC13 == -1)
replace C1SC13 = . if (C1SC13 >= 7 & C1SC13 <= 9)
replace C1SD1 = . if (C1SD1 == -1)
replace C1SD1 = . if (C1SD1 >= 7 & C1SD1 <= 9)
replace C1SD2 = . if (C1SD2 == -1 | C1SD2 == 998 | C1SD2 == 999)
replace C1SD2A = . if (C1SD2A == -1 | C1SD2A == 8 | C1SD2A == 9)
replace C1SD3 = . if (C1SD3 == -1 | C1SD3 == 9998 | C1SD3 == 9999)
replace C1SD3A = . if (C1SD3A == -1 | C1SD3A == 998 | C1SD3A == 999)
replace C1SD4 = . if (C1SD4 == -1)
replace C1SD4 = . if (C1SD4 >= 7 & C1SD4 <= 9)
replace C1SD5 = . if (C1SD5 == -1 | C1SD5 == 998 | C1SD5 == 999)
replace C1SD5A = . if (C1SD5A == -1 | C1SD5A == 8 | C1SD5A == 9)
replace C1SD6 = . if (C1SD6 == -1 | C1SD6 == 9998 | C1SD6 == 9999)
replace C1SD6A = . if (C1SD6A == -1 | C1SD6A == 998 | C1SD6A == 999)
replace C1SE1A = . if (C1SE1A == -1 | C1SE1A == 8)
replace C1SE1B = . if (C1SE1B == -1 | C1SE1B == 8)
replace C1SE1C = . if (C1SE1C == -1 | C1SE1C == 8)
replace C1SE1D = . if (C1SE1D == -1 | C1SE1D == 8)
replace C1SE1E = . if (C1SE1E == -1 | C1SE1E == 8)
replace C1SE1F = . if (C1SE1F == -1 | C1SE1F == 8)
replace C1SE1G = . if (C1SE1G == -1 | C1SE1G == 8)
replace C1SE1H = . if (C1SE1H == -1 | C1SE1H == 8)
replace C1SE1I = . if (C1SE1I == -1 | C1SE1I == 8)
replace C1SE1J = . if (C1SE1J == -1 | C1SE1J == 8)
replace C1SE1K = . if (C1SE1K == -1 | C1SE1K == 8)
replace C1SE1L = . if (C1SE1L == -1 | C1SE1L == 8)
replace C1SE1M = . if (C1SE1M == -1 | C1SE1M == 8)
replace C1SE1N = . if (C1SE1N == -1 | C1SE1N == 8)
replace C1SE1O = . if (C1SE1O == -1 | C1SE1O == 8)
replace C1SE1P = . if (C1SE1P == -1 | C1SE1P == 8)
replace C1SE1Q = . if (C1SE1Q == -1 | C1SE1Q == 8)
replace C1SE1R = . if (C1SE1R == -1 | C1SE1R == 8)
replace C1SE1S = . if (C1SE1S == -1 | C1SE1S == 8)
replace C1SE1T = . if (C1SE1T == -1 | C1SE1T == 8)
replace C1SE1U = . if (C1SE1U == -1 | C1SE1U == 8)
replace C1SE1V = . if (C1SE1V == -1 | C1SE1V == 8)
replace C1SE1W = . if (C1SE1W == -1 | C1SE1W == 8)
replace C1SE1X = . if (C1SE1X == -1 | C1SE1X == 8)
replace C1SE1Y = . if (C1SE1Y == -1 | C1SE1Y == 8)
replace C1SE1Z = . if (C1SE1Z == -1 | C1SE1Z == 8)
replace C1SE1AA = . if (C1SE1AA == -1 | C1SE1AA == 8)
replace C1SE1BB = . if (C1SE1BB == -1 | C1SE1BB == 8)
replace C1SE1CC = . if (C1SE1CC == -1 | C1SE1CC == 8)
replace C1SE1DD = . if (C1SE1DD == -1 | C1SE1DD == 8)
replace C1SE1EE = . if (C1SE1EE == -1 | C1SE1EE == 8)
replace C1SE1FF = . if (C1SE1FF == -1 | C1SE1FF == 8)
replace C1SE1GG = . if (C1SE1GG == -1 | C1SE1GG == 8)
replace C1SE1HH = . if (C1SE1HH == -1 | C1SE1HH == 8)
replace C1SE1II = . if (C1SE1II == -1 | C1SE1II == 8)
replace C1SE1JJ = . if (C1SE1JJ == -1 | C1SE1JJ == 8)
replace C1SE1KK = . if (C1SE1KK == -1 | C1SE1KK == 8)
replace C1SE1LL = . if (C1SE1LL == -1 | C1SE1LL == 8)
replace C1SE1MM = . if (C1SE1MM == -1 | C1SE1MM == 8)
replace C1SE1NN = . if (C1SE1NN == -1 | C1SE1NN == 8)
replace C1SE1OO = . if (C1SE1OO == -1 | C1SE1OO == 8)
replace C1SE1PP = . if (C1SE1PP == -1 | C1SE1PP == 8)
replace C1SE1QQ = . if (C1SE1QQ == -1 | C1SE1QQ == 8)
replace C1SPWBA1 = . if (C1SPWBA1 == -1.0 | C1SPWBA1 == 98.0)
replace C1SPWBE1 = . if (C1SPWBE1 == -1.0 | C1SPWBE1 == 98.0)
replace C1SPWBG1 = . if (C1SPWBG1 == -1.0 | C1SPWBG1 == 98.0)
replace C1SPWBR1 = . if (C1SPWBR1 == -1.0 | C1SPWBR1 == 98.0)
replace C1SPWBU1 = . if (C1SPWBU1 == -1.0 | C1SPWBU1 == 98.0)
replace C1SPWBS1 = . if (C1SPWBS1 == -1.0 | C1SPWBS1 == 98.0)
replace C1SPWBA2 = . if (C1SPWBA2 == -1.0 | C1SPWBA2 == 98.0)
replace C1SPWBE2 = . if (C1SPWBE2 == -1.0 | C1SPWBE2 == 98.0)
replace C1SPWBG2 = . if (C1SPWBG2 == -1.0 | C1SPWBG2 == 98.0)
replace C1SPWBR2 = . if (C1SPWBR2 == -1.0 | C1SPWBR2 == 98.0)
replace C1SPWBU2 = . if (C1SPWBU2 == -1.0 | C1SPWBU2 == 98.0)
replace C1SPWBS2 = . if (C1SPWBS2 == -1.0 | C1SPWBS2 == 98.0)
replace C1SE2A = . if (C1SE2A == -1 | C1SE2A == 8)
replace C1SE2B = . if (C1SE2B == -1 | C1SE2B == 8)
replace C1SE2C = . if (C1SE2C == -1 | C1SE2C == 8)
replace C1SE2D = . if (C1SE2D == -1 | C1SE2D == 8)
replace C1SE2E = . if (C1SE2E == -1 | C1SE2E == 8)
replace C1SE2F = . if (C1SE2F == -1 | C1SE2F == 8)
replace C1SE2G = . if (C1SE2G == -1 | C1SE2G == 8)
replace C1SE2H = . if (C1SE2H == -1 | C1SE2H == 8)
replace C1SE2I = . if (C1SE2I == -1 | C1SE2I == 8)
replace C1SE2J = . if (C1SE2J == -1 | C1SE2J == 8)
replace C1SE2K = . if (C1SE2K == -1 | C1SE2K == 8)
replace C1SE2L = . if (C1SE2L == -1 | C1SE2L == 8)
replace C1SE2M = . if (C1SE2M == -1 | C1SE2M == 8)
replace C1SE2N = . if (C1SE2N == -1 | C1SE2N == 8)
replace C1SE2O = . if (C1SE2O == -1 | C1SE2O == 8)
replace C1SE2P = . if (C1SE2P == -1 | C1SE2P == 8)
replace C1SE2Q = . if (C1SE2Q == -1 | C1SE2Q == 8)
replace C1SE3 = . if (C1SE3 == -1 | C1SE3 == 98)
replace C1SE4A = . if (C1SE4A == -1 | C1SE4A == 8)
replace C1SE4B = . if (C1SE4B == -1 | C1SE4B == 8)
replace C1SE4C = . if (C1SE4C == -1 | C1SE4C == 8)
replace C1SE4D = . if (C1SE4D == -1 | C1SE4D == 8)
replace C1SE4E = . if (C1SE4E == -1 | C1SE4E == 8)
replace C1SE4F = . if (C1SE4F == -1 | C1SE4F == 8)
replace C1SE4G = . if (C1SE4G == -1 | C1SE4G == 8)
replace C1SE4H = . if (C1SE4H == -1 | C1SE4H == 8)
replace C1SE4I = . if (C1SE4I == -1 | C1SE4I == 8)
replace C1SE4J = . if (C1SE4J == -1 | C1SE4J == 8)
replace C1SE4K = . if (C1SE4K == -1 | C1SE4K == 8)
replace C1SE4L = . if (C1SE4L == -1 | C1SE4L == 8)
replace C1SMASTE = . if (C1SMASTE == -1.0 | C1SMASTE == 8.0)
replace C1SCONST = . if (C1SCONST == -1.0 | C1SCONST == 8.0)
replace C1SCTRL = . if (C1SCTRL == -1.0 | C1SCTRL == 8.0)
replace C1SE4M = . if (C1SE4M == -1 | C1SE4M == 8)
replace C1SE4N = . if (C1SE4N == -1 | C1SE4N == 8)
replace C1SE4O = . if (C1SE4O == -1 | C1SE4O == 8)
replace C1SE4P = . if (C1SE4P == -1 | C1SE4P == 8)
replace C1SE4Q = . if (C1SE4Q == -1 | C1SE4Q == 8)
replace C1SE4R = . if (C1SE4R == -1 | C1SE4R == 8)
replace C1SE4S = . if (C1SE4S == -1 | C1SE4S == 8)
replace C1SESTEE = . if (C1SESTEE == -1.0 | C1SESTEE == 98.0)
replace C1SE4T = . if (C1SE4T == -1 | C1SE4T == 8)
replace C1SE4U = . if (C1SE4U == -1 | C1SE4U == 8)
replace C1SE4V = . if (C1SE4V == -1 | C1SE4V == 8)
replace C1SE4W = . if (C1SE4W == -1 | C1SE4W == 8)
replace C1SE4X = . if (C1SE4X == -1 | C1SE4X == 8)
replace C1SE4Y = . if (C1SE4Y == -1 | C1SE4Y == 8)
replace C1SINTER = . if (C1SINTER == -1.0 | C1SINTER == 8.0)
replace C1SINDEP = . if (C1SINDEP == -1.0 | C1SINDEP == 8.0)
replace C1SE5A = . if (C1SE5A == -1 | C1SE5A == 8)
replace C1SE5B = . if (C1SE5B == -1 | C1SE5B == 8)
replace C1SE5C = . if (C1SE5C == -1 | C1SE5C == 8)
replace C1SE5D = . if (C1SE5D == -1 | C1SE5D == 8)
replace C1SE5E = . if (C1SE5E == -1 | C1SE5E == 8)
replace C1SE6A = . if (C1SE6A == -1 | C1SE6A == 8)
replace C1SE6B = . if (C1SE6B == -1 | C1SE6B == 8)
replace C1SE6C = . if (C1SE6C == -1 | C1SE6C == 8)
replace C1SE6D = . if (C1SE6D == -1 | C1SE6D == 8)
replace C1SE6E = . if (C1SE6E == -1 | C1SE6E == 8)
replace C1SE6F = . if (C1SE6F == -1 | C1SE6F == 8)
replace C1SE6G = . if (C1SE6G == -1 | C1SE6G == 8)
replace C1SE6H = . if (C1SE6H == -1 | C1SE6H == 8)
replace C1SE6I = . if (C1SE6I == -1 | C1SE6I == 8)
replace C1SE6J = . if (C1SE6J == -1 | C1SE6J == 8)
replace C1SE6K = . if (C1SE6K == -1 | C1SE6K == 8)
replace C1SE6L = . if (C1SE6L == -1 | C1SE6L == 8)
replace C1SE6M = . if (C1SE6M == -1 | C1SE6M == 8)
replace C1SE6N = . if (C1SE6N == -1 | C1SE6N == 8)
replace C1SE6O = . if (C1SE6O == -1 | C1SE6O == 8)
replace C1SE6P = . if (C1SE6P == -1 | C1SE6P == 8)
replace C1SE6Q = . if (C1SE6Q == -1 | C1SE6Q == 8)
replace C1SE6R = . if (C1SE6R == -1 | C1SE6R == 8)
replace C1SE6S = . if (C1SE6S == -1 | C1SE6S == 8)
replace C1SE6T = . if (C1SE6T == -1 | C1SE6T == 8)
replace C1SE6U = . if (C1SE6U == -1 | C1SE6U == 8)
replace C1SE6V = . if (C1SE6V == -1 | C1SE6V == 8)
replace C1SE6W = . if (C1SE6W == -1 | C1SE6W == 8)
replace C1SE6X = . if (C1SE6X == -1 | C1SE6X == 8)
replace C1SE6Y = . if (C1SE6Y == -1 | C1SE6Y == 8)
replace C1SE6Z = . if (C1SE6Z == -1 | C1SE6Z == 8)
replace C1SE6AA = . if (C1SE6AA == -1 | C1SE6AA == 8)
replace C1SE6BB = . if (C1SE6BB == -1 | C1SE6BB == 8)
replace C1SE6CC = . if (C1SE6CC == -1 | C1SE6CC == 8)
replace C1SE6DD = . if (C1SE6DD == -1 | C1SE6DD == 8)
replace C1SE6EE = . if (C1SE6EE == -1 | C1SE6EE == 8)
replace C1SAGENC = . if (C1SAGENC == -1.0 | C1SAGENC == 8.0)
replace C1SAGREE = . if (C1SAGREE == -1.0 | C1SAGREE == 8.0)
replace C1SEXTRA = . if (C1SEXTRA == -1.0 | C1SEXTRA == 8.0)
replace C1SNEURO = . if (C1SNEURO == -1.0 | C1SNEURO == 8.0)
replace C1SCONS1 = . if (C1SCONS1 == -1.0 | C1SCONS1 == 8.0)
replace C1SCONS2 = . if (C1SCONS2 == -1.0 | C1SCONS2 == 8.0)
replace C1SOPEN = . if (C1SOPEN == -1.0 | C1SOPEN == 8.0)
replace C1SE7A = . if (C1SE7A == -1 | C1SE7A == 8)
replace C1SE7B = . if (C1SE7B == -1 | C1SE7B == 8)
replace C1SE7C = . if (C1SE7C == -1 | C1SE7C == 8)
replace C1SE7D = . if (C1SE7D == -1 | C1SE7D == 8)
replace C1SE7E = . if (C1SE7E == -1 | C1SE7E == 8)
replace C1SE7F = . if (C1SE7F == -1 | C1SE7F == 8)
replace C1SE7G = . if (C1SE7G == -1 | C1SE7G == 8)
replace C1SE7H = . if (C1SE7H == -1 | C1SE7H == 8)
replace C1SE7I = . if (C1SE7I == -1 | C1SE7I == 8)
replace C1SE7J = . if (C1SE7J == -1 | C1SE7J == 8)
replace C1SE7K = . if (C1SE7K == -1 | C1SE7K == 8)
replace C1SE7L = . if (C1SE7L == -1 | C1SE7L == 8)
replace C1SE7M = . if (C1SE7M == -1 | C1SE7M == 8)
replace C1SE7N = . if (C1SE7N == -1 | C1SE7N == 8)
replace C1SE7O = . if (C1SE7O == -1 | C1SE7O == 8)
replace C1SE7P = . if (C1SE7P == -1 | C1SE7P == 8)
replace C1SE7Q = . if (C1SE7Q == -1 | C1SE7Q == 8)
replace C1SE7R = . if (C1SE7R == -1 | C1SE7R == 8)
replace C1SE7S = . if (C1SE7S == -1 | C1SE7S == 8)
replace C1SE7T = . if (C1SE7T == -1 | C1SE7T == 8)
replace C1SE7U = . if (C1SE7U == -1 | C1SE7U == 8)
replace C1SE7V = . if (C1SE7V == -1 | C1SE7V == 8)
replace C1SE7W = . if (C1SE7W == -1 | C1SE7W == 8)
replace C1SE7X = . if (C1SE7X == -1 | C1SE7X == 8)
replace C1SE7Y = . if (C1SE7Y == -1 | C1SE7Y == 8)
replace C1SE7Z = . if (C1SE7Z == -1 | C1SE7Z == 8)
replace C1SE7AA = . if (C1SE7AA == -1 | C1SE7AA == 8)
replace C1SE7BB = . if (C1SE7BB == -1 | C1SE7BB == 8)
replace C1SE7CC = . if (C1SE7CC == -1 | C1SE7CC == 8)
replace C1SE7DD = . if (C1SE7DD == -1 | C1SE7DD == 8)
replace C1SE7EE = . if (C1SE7EE == -1 | C1SE7EE == 8)
replace C1SE7FF = . if (C1SE7FF == -1 | C1SE7FF == 8)
replace C1SE7GG = . if (C1SE7GG == -1 | C1SE7GG == 8)
replace C1SE8 = . if (C1SE8 == -1 | C1SE8 == 8)
replace C1SE8A = . if (C1SE8A == -1 | C1SE8A == 8)
replace C1SE9 = . if (C1SE9 == -1 | C1SE9 == 8)
replace C1SE9A = . if (C1SE9A == -1 | C1SE9A == 8)
replace C1SMPQWB = . if (C1SMPQWB == -1.0 | C1SMPQWB == 98.0)
replace C1SMPQSP = . if (C1SMPQSP == -1.0 | C1SMPQSP == 98.0)
replace C1SMPQAC = . if (C1SMPQAC == -1.0 | C1SMPQAC == 98.0)
replace C1SMPQSC = . if (C1SMPQSC == -1.0 | C1SMPQSC == 98.0)
replace C1SMPQSR = . if (C1SMPQSR == -1.0 | C1SMPQSR == 98.0)
replace C1SMPQAG = . if (C1SMPQAG == -1.0 | C1SMPQAG == 98.0)
replace C1SMPQAL = . if (C1SMPQAL == -1.0 | C1SMPQAL == 98.0)
replace C1SMPQCN = . if (C1SMPQCN == -1.0 | C1SMPQCN == 98.0)
replace C1SMPQTR = . if (C1SMPQTR == -1.0 | C1SMPQTR == 98.0)
replace C1SMPQHA = . if (C1SMPQHA == -1.0 | C1SMPQHA == 98.0)
replace C1SE10A = . if (C1SE10A == -1 | C1SE10A == 8)
replace C1SE10B = . if (C1SE10B == -1 | C1SE10B == 8)
replace C1SE10C = . if (C1SE10C == -1 | C1SE10C == 8)
replace C1SE10D = . if (C1SE10D == -1 | C1SE10D == 8)
replace C1SE10E = . if (C1SE10E == -1 | C1SE10E == 8)
replace C1SE10F = . if (C1SE10F == -1 | C1SE10F == 8)
replace C1SOPTIM = . if (C1SOPTIM == -1.0 | C1SOPTIM == 98.0)
replace C1SPESSI = . if (C1SPESSI == -1.0 | C1SPESSI == 98.0)
replace C1SORIEN = . if (C1SORIEN == -1.0 | C1SORIEN == 98.0)
replace C1SE11A = . if (C1SE11A == -1 | C1SE11A == 8)
replace C1SE11A1 = . if (C1SE11A1 == -1 | C1SE11A1 == 8 | C1SE11A1 == 9)
replace C1SE11A3 = . if (C1SE11A3 == -1 | C1SE11A3 == 8 | C1SE11A3 == 9)
replace C1SE11A4 = . if (C1SE11A4 == -1 | C1SE11A4 == 8 | C1SE11A4 == 9)
replace C1SE11A11 = . if (C1SE11A11 == -1 | C1SE11A11 == 98 | C1SE11A11 == 99)
replace C1SE11A12 = . if (C1SE11A12 == -1 | C1SE11A12 == 98 | C1SE11A12 == 99)
replace C1SE11AR1 = . if (C1SE11AR1 == -1 | C1SE11AR1 == 98 | C1SE11AR1 == 99)
replace C1SE11AR2 = . if (C1SE11AR2 == -1 | C1SE11AR2 == 98 | C1SE11AR2 == 99)
replace C1SE11B = . if (C1SE11B == -1 | C1SE11B == 8)
replace C1SE11B1 = . if (C1SE11B1 == -1 | C1SE11B1 == 8 | C1SE11B1 == 9)
replace C1SE11B3 = . if (C1SE11B3 == -1 | C1SE11B3 == 8 | C1SE11B3 == 9)
replace C1SE11B4 = . if (C1SE11B4 == -1 | C1SE11B4 == 8 | C1SE11B4 == 9)
replace C1SE11B11 = . if (C1SE11B11 == -1 | C1SE11B11 == 98 | C1SE11B11 == 99)
replace C1SE11B12 = . if (C1SE11B12 == -1 | C1SE11B12 == 98 | C1SE11B12 == 99)
replace C1SE11B13 = . if (C1SE11B13 == -1 | C1SE11B13 == 98 | C1SE11B13 == 99)
replace C1SE11BR1 = . if (C1SE11BR1 == -1 | C1SE11BR1 == 98 | C1SE11BR1 == 99)
replace C1SE11BR2 = . if (C1SE11BR2 == -1 | C1SE11BR2 == 98 | C1SE11BR2 == 99)
replace C1SE11C = . if (C1SE11C == -1 | C1SE11C == 8)
replace C1SE11C1 = . if (C1SE11C1 == -1 | C1SE11C1 == 8 | C1SE11C1 == 9)
replace C1SE11C3 = . if (C1SE11C3 == -1 | C1SE11C3 == 8 | C1SE11C3 == 9)
replace C1SE11C4 = . if (C1SE11C4 == -1 | C1SE11C4 == 8 | C1SE11C4 == 9)
replace C1SE11C11 = . if (C1SE11C11 == -1 | C1SE11C11 == 98 | C1SE11C11 == 99)
replace C1SE11C12 = . if (C1SE11C12 == -1 | C1SE11C12 == 98 | C1SE11C12 == 99)
replace C1SE11C13 = . if (C1SE11C13 == -1 | C1SE11C13 == 98 | C1SE11C13 == 99)
replace C1SE11CR1 = . if (C1SE11CR1 == -1 | C1SE11CR1 == 98 | C1SE11CR1 == 99)
replace C1SE11CR2 = . if (C1SE11CR2 == -1 | C1SE11CR2 == 98 | C1SE11CR2 == 99)
replace C1SE11D = . if (C1SE11D == -1 | C1SE11D == 8)
replace C1SE11D1 = . if (C1SE11D1 == -1 | C1SE11D1 == 8 | C1SE11D1 == 9)
replace C1SE11D3 = . if (C1SE11D3 == -1 | C1SE11D3 == 8 | C1SE11D3 == 9)
replace C1SE11D4 = . if (C1SE11D4 == -1 | C1SE11D4 == 8 | C1SE11D4 == 9)
replace C1SE11D11 = . if (C1SE11D11 == -1 | C1SE11D11 == 98 | C1SE11D11 == 99)
replace C1SE11D12 = . if (C1SE11D12 == -1 | C1SE11D12 == 98 | C1SE11D12 == 99)
replace C1SE11D13 = . if (C1SE11D13 == -1 | C1SE11D13 == 98 | C1SE11D13 == 99)
replace C1SE11D14 = . if (C1SE11D14 == -1 | C1SE11D14 == 98 | C1SE11D14 == 99)
replace C1SE11D15 = . if (C1SE11D15 == -1 | C1SE11D15 == 98 | C1SE11D15 == 99)
replace C1SE11D16 = . if (C1SE11D16 == -1 | C1SE11D16 == 98 | C1SE11D16 == 99)
replace C1SE11DR1 = . if (C1SE11DR1 == -1 | C1SE11DR1 == 98 | C1SE11DR1 == 99)
replace C1SE11DR2 = . if (C1SE11DR2 == -1 | C1SE11DR2 == 98 | C1SE11DR2 == 99)
replace C1SE11E = . if (C1SE11E == -1 | C1SE11E == 8)
replace C1SE11E1 = . if (C1SE11E1 == -1 | C1SE11E1 == 8 | C1SE11E1 == 9)
replace C1SE11E3 = . if (C1SE11E3 == -1 | C1SE11E3 == 8 | C1SE11E3 == 9)
replace C1SE11E4 = . if (C1SE11E4 == -1 | C1SE11E4 == 8 | C1SE11E4 == 9)
replace C1SE11ER1 = . if (C1SE11ER1 == -1 | C1SE11ER1 == 98 | C1SE11ER1 == 99)
replace C1SE11ER2 = . if (C1SE11ER2 == -1 | C1SE11ER2 == 98 | C1SE11ER2 == 99)
replace C1SE11F = . if (C1SE11F == -1 | C1SE11F == 8)
replace C1SE11F1 = . if (C1SE11F1 == -1 | C1SE11F1 == 8 | C1SE11F1 == 9)
replace C1SE11F3 = . if (C1SE11F3 == -1 | C1SE11F3 == 8 | C1SE11F3 == 9)
replace C1SE11F4 = . if (C1SE11F4 == -1 | C1SE11F4 == 8 | C1SE11F4 == 9)
replace C1SE11F11 = . if (C1SE11F11 == -1 | C1SE11F11 == 98 | C1SE11F11 == 99)
replace C1SE11F12 = . if (C1SE11F12 == -1 | C1SE11F12 == 98 | C1SE11F12 == 99)
replace C1SE11FR1 = . if (C1SE11FR1 == -1 | C1SE11FR1 == 98 | C1SE11FR1 == 99)
replace C1SE11FR2 = . if (C1SE11FR2 == -1 | C1SE11FR2 == 98 | C1SE11FR2 == 99)
replace C1SE11G = . if (C1SE11G == -1 | C1SE11G == 8)
replace C1SE11G1 = . if (C1SE11G1 == -1 | C1SE11G1 == 8 | C1SE11G1 == 9)
replace C1SE11G3 = . if (C1SE11G3 == -1 | C1SE11G3 == 8 | C1SE11G3 == 9)
replace C1SE11G4 = . if (C1SE11G4 == -1 | C1SE11G4 == 8 | C1SE11G4 == 9)
replace C1SE11G11 = . if (C1SE11G11 == -1 | C1SE11G11 == 98 | C1SE11G11 == 99)
replace C1SE11G12 = . if (C1SE11G12 == -1 | C1SE11G12 == 98 | C1SE11G12 == 99)
replace C1SE11G13 = . if (C1SE11G13 == -1 | C1SE11G13 == 98 | C1SE11G13 == 99)
replace C1SE11G14 = . if (C1SE11G14 == -1 | C1SE11G14 == 98 | C1SE11G14 == 99)
replace C1SE11GR1 = . if (C1SE11GR1 == -1 | C1SE11GR1 == 98 | C1SE11GR1 == 99)
replace C1SE11GR2 = . if (C1SE11GR2 == -1 | C1SE11GR2 == 98 | C1SE11GR2 == 99)
replace C1SE12A = . if (C1SE12A == -1 | C1SE12A == 8)
replace C1SE12A1 = . if (C1SE12A1 == -1 | C1SE12A1 == 8 | C1SE12A1 == 9)
replace C1SE12A3 = . if (C1SE12A3 == -1 | C1SE12A3 == 8 | C1SE12A3 == 9)
replace C1SE12A4 = . if (C1SE12A4 == -1 | C1SE12A4 == 8 | C1SE12A4 == 9)
replace C1SE12A11 = . if (C1SE12A11 == -1 | C1SE12A11 == 98 | C1SE12A11 == 99)
replace C1SE12A12 = . if (C1SE12A12 == -1 | C1SE12A12 == 98 | C1SE12A12 == 99)
replace C1SE12AR1 = . if (C1SE12AR1 == -1 | C1SE12AR1 == 98 | C1SE12AR1 == 99)
replace C1SE12AR2 = . if (C1SE12AR2 == -1 | C1SE12AR2 == 98 | C1SE12AR2 == 99)
replace C1SE12B = . if (C1SE12B == -1 | C1SE12B == 8)
replace C1SE12B1 = . if (C1SE12B1 == -1 | C1SE12B1 == 8 | C1SE12B1 == 9)
replace C1SE12B3 = . if (C1SE12B3 == -1 | C1SE12B3 == 8 | C1SE12B3 == 9)
replace C1SE12B4 = . if (C1SE12B4 == -1 | C1SE12B4 == 8 | C1SE12B4 == 9)
replace C1SE12B11 = . if (C1SE12B11 == -1 | C1SE12B11 == 98 | C1SE12B11 == 99)
replace C1SE12B12 = . if (C1SE12B12 == -1 | C1SE12B12 == 98 | C1SE12B12 == 99)
replace C1SE12B13 = . if (C1SE12B13 == -1 | C1SE12B13 == 98 | C1SE12B13 == 99)
replace C1SE12B14 = . if (C1SE12B14 == -1 | C1SE12B14 == 98 | C1SE12B14 == 99)
replace C1SE12B15 = . if (C1SE12B15 == -1 | C1SE12B15 == 98 | C1SE12B15 == 99)
replace C1SE12B16 = . if (C1SE12B16 == -1 | C1SE12B16 == 98 | C1SE12B16 == 99)
replace C1SE12BR1 = . if (C1SE12BR1 == -1 | C1SE12BR1 == 98 | C1SE12BR1 == 99)
replace C1SE12BR2 = . if (C1SE12BR2 == -1 | C1SE12BR2 == 98 | C1SE12BR2 == 99)
replace C1SE12C = . if (C1SE12C == -1 | C1SE12C == 8)
replace C1SE12C1 = . if (C1SE12C1 == -1 | C1SE12C1 == 8 | C1SE12C1 == 9)
replace C1SE12C3 = . if (C1SE12C3 == -1 | C1SE12C3 == 8 | C1SE12C3 == 9)
replace C1SE12C4 = . if (C1SE12C4 == -1 | C1SE12C4 == 8 | C1SE12C4 == 9)
replace C1SE12C11 = . if (C1SE12C11 == -1 | C1SE12C11 == 98 | C1SE12C11 == 99)
replace C1SE12C12 = . if (C1SE12C12 == -1 | C1SE12C12 == 98 | C1SE12C12 == 99)
replace C1SE12C13 = . if (C1SE12C13 == -1 | C1SE12C13 == 98 | C1SE12C13 == 99)
replace C1SE12C14 = . if (C1SE12C14 == -1 | C1SE12C14 == 98 | C1SE12C14 == 99)
replace C1SE12C15 = . if (C1SE12C15 == -1 | C1SE12C15 == 98 | C1SE12C15 == 99)
replace C1SE12CR1 = . if (C1SE12CR1 == -1 | C1SE12CR1 == 98 | C1SE12CR1 == 99)
replace C1SE12CR2 = . if (C1SE12CR2 == -1 | C1SE12CR2 == 98 | C1SE12CR2 == 99)
replace C1SE12D = . if (C1SE12D == -1 | C1SE12D == 8)
replace C1SE12D1 = . if (C1SE12D1 == -1 | C1SE12D1 == 8 | C1SE12D1 == 9)
replace C1SE12D3 = . if (C1SE12D3 == -1 | C1SE12D3 == 8 | C1SE12D3 == 9)
replace C1SE12D4 = . if (C1SE12D4 == -1 | C1SE12D4 == 8 | C1SE12D4 == 9)
replace C1SE12D11 = . if (C1SE12D11 == -1 | C1SE12D11 == 98 | C1SE12D11 == 99)
replace C1SE12D12 = . if (C1SE12D12 == -1 | C1SE12D12 == 98 | C1SE12D12 == 99)
replace C1SE12D13 = . if (C1SE12D13 == -1 | C1SE12D13 == 98 | C1SE12D13 == 99)
replace C1SE12DR1 = . if (C1SE12DR1 == -1 | C1SE12DR1 == 98 | C1SE12DR1 == 99)
replace C1SE12DR2 = . if (C1SE12DR2 == -1 | C1SE12DR2 == 98 | C1SE12DR2 == 99)
replace C1SE12E = . if (C1SE12E == -1 | C1SE12E == 8)
replace C1SE12E1 = . if (C1SE12E1 == -1 | C1SE12E1 == 8 | C1SE12E1 == 9)
replace C1SE12E3 = . if (C1SE12E3 == -1 | C1SE12E3 == 8 | C1SE12E3 == 9)
replace C1SE12E4 = . if (C1SE12E4 == -1 | C1SE12E4 == 8 | C1SE12E4 == 9)
replace C1SE12E11 = . if (C1SE12E11 == -1 | C1SE12E11 == 98 | C1SE12E11 == 99)
replace C1SE12E12 = . if (C1SE12E12 == -1 | C1SE12E12 == 98 | C1SE12E12 == 99)
replace C1SE12E13 = . if (C1SE12E13 == -1 | C1SE12E13 == 98 | C1SE12E13 == 99)
replace C1SE12E14 = . if (C1SE12E14 == -1 | C1SE12E14 == 98 | C1SE12E14 == 99)
replace C1SE12ER1 = . if (C1SE12ER1 == -1 | C1SE12ER1 == 98 | C1SE12ER1 == 99)
replace C1SE12ER2 = . if (C1SE12ER2 == -1 | C1SE12ER2 == 98 | C1SE12ER2 == 99)
replace C1SE12F = . if (C1SE12F == -1 | C1SE12F == 8)
replace C1SE12F1 = . if (C1SE12F1 == -1 | C1SE12F1 == 8 | C1SE12F1 == 9)
replace C1SE12F3 = . if (C1SE12F3 == -1 | C1SE12F3 == 8 | C1SE12F3 == 9)
replace C1SE12F4 = . if (C1SE12F4 == -1 | C1SE12F4 == 8 | C1SE12F4 == 9)
replace C1SE12F11 = . if (C1SE12F11 == -1 | C1SE12F11 == 98 | C1SE12F11 == 99)
replace C1SE12F12 = . if (C1SE12F12 == -1 | C1SE12F12 == 98 | C1SE12F12 == 99)
replace C1SE12F13 = . if (C1SE12F13 == -1 | C1SE12F13 == 98 | C1SE12F13 == 99)
replace C1SE12F14 = . if (C1SE12F14 == -1 | C1SE12F14 == 98 | C1SE12F14 == 99)
replace C1SE12FR1 = . if (C1SE12FR1 == -1 | C1SE12FR1 == 98 | C1SE12FR1 == 99)
replace C1SE12FR2 = . if (C1SE12FR2 == -1 | C1SE12FR2 == 98 | C1SE12FR2 == 99)
replace C1SE12G = . if (C1SE12G == -1 | C1SE12G == 8)
replace C1SE12G1 = . if (C1SE12G1 == -1 | C1SE12G1 == 8 | C1SE12G1 == 9)
replace C1SE12G3 = . if (C1SE12G3 == -1 | C1SE12G3 == 8 | C1SE12G3 == 9)
replace C1SE12G4 = . if (C1SE12G4 == -1 | C1SE12G4 == 8 | C1SE12G4 == 9)
replace C1SE12G11 = . if (C1SE12G11 == -1 | C1SE12G11 == 98 | C1SE12G11 == 99)
replace C1SE12G12 = . if (C1SE12G12 == -1 | C1SE12G12 == 98 | C1SE12G12 == 99)
replace C1SE12GR1 = . if (C1SE12GR1 == -1 | C1SE12GR1 == 98 | C1SE12GR1 == 99)
replace C1SE12GR2 = . if (C1SE12GR2 == -1 | C1SE12GR2 == 98 | C1SE12GR2 == 99)
replace C1SE12H = . if (C1SE12H == -1 | C1SE12H == 8)
replace C1SE12H1 = . if (C1SE12H1 == -1 | C1SE12H1 == 8 | C1SE12H1 == 9)
replace C1SE12H3 = . if (C1SE12H3 == -1 | C1SE12H3 == 8 | C1SE12H3 == 9)
replace C1SE12H4 = . if (C1SE12H4 == -1 | C1SE12H4 == 8 | C1SE12H4 == 9)
replace C1SE12H11 = . if (C1SE12H11 == -1 | C1SE12H11 == 98 | C1SE12H11 == 99)
replace C1SE12H12 = . if (C1SE12H12 == -1 | C1SE12H12 == 98 | C1SE12H12 == 99)
replace C1SE12H13 = . if (C1SE12H13 == -1 | C1SE12H13 == 98 | C1SE12H13 == 99)
replace C1SE12H14 = . if (C1SE12H14 == -1 | C1SE12H14 == 98 | C1SE12H14 == 99)
replace C1SE12H15 = . if (C1SE12H15 == -1 | C1SE12H15 == 98 | C1SE12H15 == 99)
replace C1SE12H16 = . if (C1SE12H16 == -1 | C1SE12H16 == 98 | C1SE12H16 == 99)
replace C1SE12HR1 = . if (C1SE12HR1 == -1 | C1SE12HR1 == 98 | C1SE12HR1 == 99)
replace C1SE12HR2 = . if (C1SE12HR2 == -1 | C1SE12HR2 == 98 | C1SE12HR2 == 99)
replace C1SE12I = . if (C1SE12I == -1 | C1SE12I == 8)
replace C1SE12I1 = . if (C1SE12I1 == -1 | C1SE12I1 == 8 | C1SE12I1 == 9)
replace C1SE12I3 = . if (C1SE12I3 == -1 | C1SE12I3 == 8 | C1SE12I3 == 9)
replace C1SE12I4 = . if (C1SE12I4 == -1 | C1SE12I4 == 8 | C1SE12I4 == 9)
replace C1SE12I11 = . if (C1SE12I11 == -1 | C1SE12I11 == 98 | C1SE12I11 == 99)
replace C1SE12I12 = . if (C1SE12I12 == -1 | C1SE12I12 == 98 | C1SE12I12 == 99)
replace C1SE12I13 = . if (C1SE12I13 == -1 | C1SE12I13 == 98 | C1SE12I13 == 99)
replace C1SE12I14 = . if (C1SE12I14 == -1 | C1SE12I14 == 98 | C1SE12I14 == 99)
replace C1SE12I15 = . if (C1SE12I15 == -1 | C1SE12I15 == 98 | C1SE12I15 == 99)
replace C1SE12J = . if (C1SE12J == -1 | C1SE12J == 8)
replace C1SE12J1 = . if (C1SE12J1 == -1 | C1SE12J1 == 8 | C1SE12J1 == 9)
replace C1SE12J3 = . if (C1SE12J3 == -1 | C1SE12J3 == 8 | C1SE12J3 == 9)
replace C1SE12J4 = . if (C1SE12J4 == -1 | C1SE12J4 == 8 | C1SE12J4 == 9)
replace C1SE12J11 = . if (C1SE12J11 == -1 | C1SE12J11 == 98 | C1SE12J11 == 99)
replace C1SE12J12 = . if (C1SE12J12 == -1 | C1SE12J12 == 98 | C1SE12J12 == 99)
replace C1SE12J13 = . if (C1SE12J13 == -1 | C1SE12J13 == 98 | C1SE12J13 == 99)
replace C1SE12J14 = . if (C1SE12J14 == -1 | C1SE12J14 == 98 | C1SE12J14 == 99)
replace C1SE12J15 = . if (C1SE12J15 == -1 | C1SE12J15 == 98 | C1SE12J15 == 99)
replace C1SE12JR1 = . if (C1SE12JR1 == -1 | C1SE12JR1 == 98 | C1SE12JR1 == 99)
replace C1SE12JR2 = . if (C1SE12JR2 == -1 | C1SE12JR2 == 98 | C1SE12JR2 == 99)
replace C1SE12K = . if (C1SE12K == -1 | C1SE12K == 8)
replace C1SE12K1 = . if (C1SE12K1 == -1 | C1SE12K1 == 8 | C1SE12K1 == 9)
replace C1SE12K3 = . if (C1SE12K3 == -1 | C1SE12K3 == 8 | C1SE12K3 == 9)
replace C1SE12K4 = . if (C1SE12K4 == -1 | C1SE12K4 == 8 | C1SE12K4 == 9)
replace C1SE12K11 = . if (C1SE12K11 == -1 | C1SE12K11 == 98 | C1SE12K11 == 99)
replace C1SE12K12 = . if (C1SE12K12 == -1 | C1SE12K12 == 98 | C1SE12K12 == 99)
replace C1SE12L = . if (C1SE12L == -1 | C1SE12L == 8)
replace C1SE12L1 = . if (C1SE12L1 == -1 | C1SE12L1 == 8 | C1SE12L1 == 9)
replace C1SE12L3 = . if (C1SE12L3 == -1 | C1SE12L3 == 8 | C1SE12L3 == 9)
replace C1SE12L4 = . if (C1SE12L4 == -1 | C1SE12L4 == 8 | C1SE12L4 == 9)
replace C1SE12L11 = . if (C1SE12L11 == -1 | C1SE12L11 == 98 | C1SE12L11 == 99)
replace C1SE12L12 = . if (C1SE12L12 == -1 | C1SE12L12 == 98 | C1SE12L12 == 99)
replace C1SE12L13 = . if (C1SE12L13 == -1 | C1SE12L13 == 98 | C1SE12L13 == 99)
replace C1SE12L14 = . if (C1SE12L14 == -1 | C1SE12L14 == 98 | C1SE12L14 == 99)
replace C1SE12L15 = . if (C1SE12L15 == -1 | C1SE12L15 == 98 | C1SE12L15 == 99)
replace C1SE12L16 = . if (C1SE12L16 == -1 | C1SE12L16 == 98 | C1SE12L16 == 99)
replace C1SE12LR1 = . if (C1SE12LR1 == -1 | C1SE12LR1 == 98 | C1SE12LR1 == 99)
replace C1SE12LR2 = . if (C1SE12LR2 == -1 | C1SE12LR2 == 98 | C1SE12LR2 == 99)
replace C1SE12M = . if (C1SE12M == -1 | C1SE12M == 8)
replace C1SE12M1 = . if (C1SE12M1 == -1 | C1SE12M1 == 8 | C1SE12M1 == 9)
replace C1SE12M3 = . if (C1SE12M3 == -1 | C1SE12M3 == 8 | C1SE12M3 == 9)
replace C1SE12M4 = . if (C1SE12M4 == -1 | C1SE12M4 == 8 | C1SE12M4 == 9)
replace C1SE12M11 = . if (C1SE12M11 == -1 | C1SE12M11 == 98 | C1SE12M11 == 99)
replace C1SE12M12 = . if (C1SE12M12 == -1 | C1SE12M12 == 98 | C1SE12M12 == 99)
replace C1SE12M13 = . if (C1SE12M13 == -1 | C1SE12M13 == 98 | C1SE12M13 == 99)
replace C1SE12M14 = . if (C1SE12M14 == -1 | C1SE12M14 == 98 | C1SE12M14 == 99)
replace C1SE12M15 = . if (C1SE12M15 == -1 | C1SE12M15 == 98 | C1SE12M15 == 99)
replace C1SE12MR1 = . if (C1SE12MR1 == -1 | C1SE12MR1 == 98 | C1SE12MR1 == 99)
replace C1SE12MR2 = . if (C1SE12MR2 == -1 | C1SE12MR2 == 98 | C1SE12MR2 == 99)
replace C1SE12N = . if (C1SE12N == -1 | C1SE12N == 8)
replace C1SE12N1 = . if (C1SE12N1 == -1 | C1SE12N1 == 8 | C1SE12N1 == 9)
replace C1SE12N3 = . if (C1SE12N3 == -1 | C1SE12N3 == 8 | C1SE12N3 == 9)
replace C1SE12N4 = . if (C1SE12N4 == -1 | C1SE12N4 == 8 | C1SE12N4 == 9)
replace C1SE12N11 = . if (C1SE12N11 == -1 | C1SE12N11 == 98 | C1SE12N11 == 99)
replace C1SE12N12 = . if (C1SE12N12 == -1 | C1SE12N12 == 98 | C1SE12N12 == 99)
replace C1SE12NR1 = . if (C1SE12NR1 == -1 | C1SE12NR1 == 98 | C1SE12NR1 == 99)
replace C1SE12NR2 = . if (C1SE12NR2 == -1 | C1SE12NR2 == 98 | C1SE12NR2 == 99)
replace C1SE12O = . if (C1SE12O == -1 | C1SE12O == 8)
replace C1SE12O1 = . if (C1SE12O1 == -1 | C1SE12O1 == 8 | C1SE12O1 == 9)
replace C1SE12O3 = . if (C1SE12O3 == -1 | C1SE12O3 == 8 | C1SE12O3 == 9)
replace C1SE12O4 = . if (C1SE12O4 == -1 | C1SE12O4 == 8 | C1SE12O4 == 9)
replace C1SE12O11 = . if (C1SE12O11 == -1 | C1SE12O11 == 98 | C1SE12O11 == 99)
replace C1SE12O12 = . if (C1SE12O12 == -1 | C1SE12O12 == 98 | C1SE12O12 == 99)
replace C1SE12O13 = . if (C1SE12O13 == -1 | C1SE12O13 == 98 | C1SE12O13 == 99)
replace C1SE12O14 = . if (C1SE12O14 == -1 | C1SE12O14 == 98 | C1SE12O14 == 99)
replace C1SE12OR1 = . if (C1SE12OR1 == -1 | C1SE12OR1 == 98 | C1SE12OR1 == 99)
replace C1SE12OR2 = . if (C1SE12OR2 == -1 | C1SE12OR2 == 98 | C1SE12OR2 == 99)
replace C1SE12P = . if (C1SE12P == -1 | C1SE12P == 8)
replace C1SE12P1 = . if (C1SE12P1 == -1 | C1SE12P1 == 8 | C1SE12P1 == 9)
replace C1SE12P3 = . if (C1SE12P3 == -1 | C1SE12P3 == 8 | C1SE12P3 == 9)
replace C1SE12P4 = . if (C1SE12P4 == -1 | C1SE12P4 == 8 | C1SE12P4 == 9)
replace C1SE12P11 = . if (C1SE12P11 == -1 | C1SE12P11 == 98 | C1SE12P11 == 99)
replace C1SE12P12 = . if (C1SE12P12 == -1 | C1SE12P12 == 98 | C1SE12P12 == 99)
replace C1SE12P13 = . if (C1SE12P13 == -1 | C1SE12P13 == 98 | C1SE12P13 == 99)
replace C1SE12PR1 = . if (C1SE12PR1 == -1 | C1SE12PR1 == 98 | C1SE12PR1 == 99)
replace C1SE12PR2 = . if (C1SE12PR2 == -1 | C1SE12PR2 == 98 | C1SE12PR2 == 99)
replace C1SE12Q = . if (C1SE12Q == -1 | C1SE12Q == 8)
replace C1SE12Q1 = . if (C1SE12Q1 == -1 | C1SE12Q1 == 8 | C1SE12Q1 == 9)
replace C1SE12Q3 = . if (C1SE12Q3 == -1 | C1SE12Q3 == 8 | C1SE12Q3 == 9)
replace C1SE12Q4 = . if (C1SE12Q4 == -1 | C1SE12Q4 == 8 | C1SE12Q4 == 9)
replace C1SE12Q11 = . if (C1SE12Q11 == -1 | C1SE12Q11 == 98 | C1SE12Q11 == 99)
replace C1SE12Q12 = . if (C1SE12Q12 == -1 | C1SE12Q12 == 98 | C1SE12Q12 == 99)
replace C1SE12Q13 = . if (C1SE12Q13 == -1 | C1SE12Q13 == 98 | C1SE12Q13 == 99)
replace C1SE12Q14 = . if (C1SE12Q14 == -1 | C1SE12Q14 == 98 | C1SE12Q14 == 99)
replace C1SE12QR1 = . if (C1SE12QR1 == -1 | C1SE12QR1 == 98 | C1SE12QR1 == 99)
replace C1SE12QR2 = . if (C1SE12QR2 == -1 | C1SE12QR2 == 98 | C1SE12QR2 == 99)
replace C1SE12R = . if (C1SE12R == -1 | C1SE12R == 8)
replace C1SE12R1 = . if (C1SE12R1 == -1 | C1SE12R1 == 8 | C1SE12R1 == 9)
replace C1SE12R3 = . if (C1SE12R3 == -1 | C1SE12R3 == 8 | C1SE12R3 == 9)
replace C1SE12R4 = . if (C1SE12R4 == -1 | C1SE12R4 == 8 | C1SE12R4 == 9)
replace C1SE12R11 = . if (C1SE12R11 == -1 | C1SE12R11 == 98 | C1SE12R11 == 99)
replace C1SE12R12 = . if (C1SE12R12 == -1 | C1SE12R12 == 98 | C1SE12R12 == 99)
replace C1SE12RR1 = . if (C1SE12RR1 == -1 | C1SE12RR1 == 98 | C1SE12RR1 == 99)
replace C1SE12RR2 = . if (C1SE12RR2 == -1 | C1SE12RR2 == 98 | C1SE12RR2 == 99)
replace C1SE12S = . if (C1SE12S == -1 | C1SE12S == 8)
replace C1SE12S1 = . if (C1SE12S1 == -1 | C1SE12S1 == 8 | C1SE12S1 == 9)
replace C1SE12S3 = . if (C1SE12S3 == -1 | C1SE12S3 == 8 | C1SE12S3 == 9)
replace C1SE12S4 = . if (C1SE12S4 == -1 | C1SE12S4 == 8 | C1SE12S4 == 9)
replace C1SE12S11 = . if (C1SE12S11 == -1 | C1SE12S11 == 98 | C1SE12S11 == 99)
replace C1SE12S12 = . if (C1SE12S12 == -1 | C1SE12S12 == 98 | C1SE12S12 == 99)
replace C1SE12SR1 = . if (C1SE12SR1 == -1 | C1SE12SR1 == 98 | C1SE12SR1 == 99)
replace C1SE12SR2 = . if (C1SE12SR2 == -1 | C1SE12SR2 == 98 | C1SE12SR2 == 99)
replace C1SE12T = . if (C1SE12T == -1 | C1SE12T == 8)
replace C1SE12T1 = . if (C1SE12T1 == -1 | C1SE12T1 == 8 | C1SE12T1 == 9)
replace C1SE12T3 = . if (C1SE12T3 == -1 | C1SE12T3 == 8 | C1SE12T3 == 9)
replace C1SE12T4 = . if (C1SE12T4 == -1 | C1SE12T4 == 8 | C1SE12T4 == 9)
replace C1SE12T11 = . if (C1SE12T11 == -1 | C1SE12T11 == 98 | C1SE12T11 == 99)
replace C1SE12T12 = . if (C1SE12T12 == -1 | C1SE12T12 == 98 | C1SE12T12 == 99)
replace C1SE12T13 = . if (C1SE12T13 == -1 | C1SE12T13 == 98 | C1SE12T13 == 99)
replace C1SE12T14 = . if (C1SE12T14 == -1 | C1SE12T14 == 98 | C1SE12T14 == 99)
replace C1SE12T15 = . if (C1SE12T15 == -1 | C1SE12T15 == 98 | C1SE12T15 == 99)
replace C1SE12T16 = . if (C1SE12T16 == -1 | C1SE12T16 == 98 | C1SE12T16 == 99)
replace C1SE12TR1 = . if (C1SE12TR1 == -1 | C1SE12TR1 == 98 | C1SE12TR1 == 99)
replace C1SE12TR2 = . if (C1SE12TR2 == -1 | C1SE12TR2 == 98 | C1SE12TR2 == 99)
replace C1SE13A = . if (C1SE13A == -1 | C1SE13A == 8)
replace C1SE13B = . if (C1SE13B == -1 | C1SE13B == 8)
replace C1SE13C = . if (C1SE13C == -1 | C1SE13C == 8)
replace C1SE13D = . if (C1SE13D == -1 | C1SE13D == 8)
replace C1SE13E = . if (C1SE13E == -1 | C1SE13E == 8)
replace C1SE13F = . if (C1SE13F == -1 | C1SE13F == 8)
replace C1SE13G = . if (C1SE13G == -1 | C1SE13G == 8)
replace C1SE13H = . if (C1SE13H == -1 | C1SE13H == 8)
replace C1SE13I = . if (C1SE13I == -1 | C1SE13I == 8)
replace C1SE13J = . if (C1SE13J == -1 | C1SE13J == 8)
replace C1SE13K = . if (C1SE13K == -1 | C1SE13K == 8)
replace C1SMAR = . if (C1SMAR == -1.0 | C1SMAR == 8.0)
replace C1SFAM = . if (C1SFAM == -1.0 | C1SFAM == 8.0)
replace C1SE14A = . if (C1SE14A == -1 | C1SE14A == 8)
replace C1SE14B = . if (C1SE14B == -1 | C1SE14B == 8)
replace C1SE14C = . if (C1SE14C == -1 | C1SE14C == 8)
replace C1SE14D = . if (C1SE14D == -1 | C1SE14D == 8)
replace C1SE14E = . if (C1SE14E == -1 | C1SE14E == 8)
replace C1SE14F = . if (C1SE14F == -1 | C1SE14F == 8)
replace C1SE14G = . if (C1SE14G == -1 | C1SE14G == 8)
replace C1SE14H = . if (C1SE14H == -1 | C1SE14H == 8)
replace C1SE14I = . if (C1SE14I == -1 | C1SE14I == 8)
replace C1SE14J = . if (C1SE14J == -1 | C1SE14J == 8)
replace C1SE14K = . if (C1SE14K == -1 | C1SE14K == 8)
replace C1SE14L = . if (C1SE14L == -1 | C1SE14L == 8)
replace C1SE14M = . if (C1SE14M == -1 | C1SE14M == 8)
replace C1SE14N = . if (C1SE14N == -1 | C1SE14N == 8)
replace C1SE14O = . if (C1SE14O == -1 | C1SE14O == 8)
replace C1SE14P = . if (C1SE14P == -1 | C1SE14P == 8)
replace C1SE14Q = . if (C1SE14Q == -1 | C1SE14Q == 8)
replace C1SE14R = . if (C1SE14R == -1 | C1SE14R == 8)
replace C1SE14S = . if (C1SE14S == -1 | C1SE14S == 8)
replace C1SE14T = . if (C1SE14T == -1 | C1SE14T == 8)
replace C1SE14U = . if (C1SE14U == -1 | C1SE14U == 8)
replace C1SE14V = . if (C1SE14V == -1 | C1SE14V == 8)
replace C1SE14W = . if (C1SE14W == -1 | C1SE14W == 8)
replace C1SE14X = . if (C1SE14X == -1 | C1SE14X == 8)
replace C1SE14Y = . if (C1SE14Y == -1 | C1SE14Y == 8)
replace C1SE14Z = . if (C1SE14Z == -1 | C1SE14Z == 8)
replace C1SE14AA = . if (C1SE14AA == -1 | C1SE14AA == 8)
replace C1SE14BB = . if (C1SE14BB == -1 | C1SE14BB == 8)
replace C1SE14CC = . if (C1SE14CC == -1 | C1SE14CC == 8)
replace C1SE14DD = . if (C1SE14DD == -1 | C1SE14DD == 8)
replace C1SE14EE = . if (C1SE14EE == -1 | C1SE14EE == 8)
replace C1SE14FF = . if (C1SE14FF == -1 | C1SE14FF == 8)
replace C1SE14GG = . if (C1SE14GG == -1 | C1SE14GG == 8)
replace C1SE14HH = . if (C1SE14HH == -1 | C1SE14HH == 8)
replace C1SE14II = . if (C1SE14II == -1 | C1SE14II == 8)
replace C1SE14JJ = . if (C1SE14JJ == -1 | C1SE14JJ == 8)
replace C1SE14KK = . if (C1SE14KK == -1 | C1SE14KK == 8)
replace C1SE14LL = . if (C1SE14LL == -1 | C1SE14LL == 8)
replace C1SE14MM = . if (C1SE14MM == -1 | C1SE14MM == 8)
replace C1SPERSI = . if (C1SPERSI == -1.0 | C1SPERSI == 8.0)
replace C1SREAPP = . if (C1SREAPP == -1.0 | C1SREAPP == 8.0)
replace C1SCHANG = . if (C1SCHANG == -1.0 | C1SCHANG == 8.0)
replace C1SSPCTR = . if (C1SSPCTR == -1.0 | C1SSPCTR == 8.0)
replace C1SCPCTR = . if (C1SCPCTR == -1.00 | C1SCPCTR == 8.00)
replace C1SSSCTR = . if (C1SSSCTR == -1.0 | C1SSSCTR == 8.0)
replace C1SCSCDE = . if (C1SCSCDE == -1.0 | C1SCSCDE == 8.0)
replace C1SCSCSP = . if (C1SCSCSP == -1.0 | C1SCSCSP == 8.0)
replace C1SCSCAG = . if (C1SCSCAG == -1.0 | C1SCSCAG == 8.0)
replace C1SDIREC = . if (C1SDIREC == -1.0 | C1SDIREC == 8.0)
replace C1STODAY = . if (C1STODAY == -1.0 | C1STODAY == 8.0)
replace C1SINSGH = . if (C1SINSGH == -1.0 | C1SINSGH == 8.0)
replace C1SFORSG = . if (C1SFORSG == -1 | C1SFORSG == 8)
replace C1SSUFFI = . if (C1SSUFFI == -1.0 | C1SSUFFI == 8.0)
replace C1SE15A = . if (C1SE15A == -1 | C1SE15A == 8)
replace C1SE15B = . if (C1SE15B == -1 | C1SE15B == 8)
replace C1SE15C = . if (C1SE15C == -1 | C1SE15C == 8)
replace C1SE15D = . if (C1SE15D == -1 | C1SE15D == 8)
replace C1SE15E = . if (C1SE15E == -1 | C1SE15E == 8)
replace C1SE15F = . if (C1SE15F == -1 | C1SE15F == 8)
replace C1SE15G = . if (C1SE15G == -1 | C1SE15G == 8)
replace C1SE15H = . if (C1SE15H == -1 | C1SE15H == 8)
replace C1SE15I = . if (C1SE15I == -1 | C1SE15I == 8)
replace C1SE15J = . if (C1SE15J == -1 | C1SE15J == 8)
replace C1SE15K = . if (C1SE15K == -1 | C1SE15K == 8)
replace C1SE15L = . if (C1SE15L == -1 | C1SE15L == 8)
replace C1SE15M = . if (C1SE15M == -1 | C1SE15M == 8)
replace C1SE15N = . if (C1SE15N == -1 | C1SE15N == 8)
replace C1SE15O = . if (C1SE15O == -1 | C1SE15O == 8)
replace C1SE15P = . if (C1SE15P == -1 | C1SE15P == 8)
replace C1SE15Q = . if (C1SE15Q == -1 | C1SE15Q == 8)
replace C1SE15R = . if (C1SE15R == -1 | C1SE15R == 8)
replace C1SE15S = . if (C1SE15S == -1 | C1SE15S == 8)
replace C1SE15T = . if (C1SE15T == -1 | C1SE15T == 8)
replace C1SE15U = . if (C1SE15U == -1 | C1SE15U == 8)
replace C1SE15V = . if (C1SE15V == -1 | C1SE15V == 8)
replace C1SE15W = . if (C1SE15W == -1 | C1SE15W == 8)
replace C1SE15X = . if (C1SE15X == -1 | C1SE15X == 8)
replace C1SE15Y = . if (C1SE15Y == -1 | C1SE15Y == 8)
replace C1SE15Z = . if (C1SE15Z == -1 | C1SE15Z == 8)
replace C1SREINT = . if (C1SREINT == -1.0 | C1SREINT == 98.0)
replace C1SACTIV = . if (C1SACTIV == -1.0 | C1SACTIV == 98.0)
replace C1SPLAN = . if (C1SPLAN == -1.0 | C1SPLAN == 98.0)
replace C1SVENT = . if (C1SVENT == -1.0 | C1SVENT == 98.0)
replace C1SDENIA = . if (C1SDENIA == -1.0 | C1SDENIA == 98.0)
replace C1SDISEN = . if (C1SDISEN == -1.0 | C1SDISEN == 98.0)
replace C1SFDCOP = . if (C1SFDCOP == -1 | C1SFDCOP == 98)
replace C1SPRCOP = . if (C1SPRCOP == -1.0 | C1SPRCOP == 98.0)
replace C1SEMCOP = . if (C1SEMCOP == -1.0 | C1SEMCOP == 98.0)
replace C1SE16 = . if (C1SE16 == -1 | C1SE16 == 998)
replace C1SE17 = . if (C1SE17 == -1 | C1SE17 == 998)
replace C1SE18 = . if (C1SE18 == -1 | C1SE18 == 998)
replace C1SE19 = . if (C1SE19 == -1 | C1SE19 == 998)
replace C1SE20 = . if (C1SE20 == -1 | C1SE20 == 998)
replace C1SE21 = . if (C1SE21 == -1 | C1SE21 == 998)
replace C1SF1 = . if (C1SF1 == -1 | C1SF1 == 98)
replace C1SF2 = . if (C1SF2 == -1 | C1SF2 == 98)
replace C1SF3 = . if (C1SF3 == -1 | C1SF3 == 98)
replace C1SF4 = . if (C1SF4 == -1 | C1SF4 == 98)
replace C1SF5 = . if (C1SF5 == -1 | C1SF5 == 98)
replace C1SF6 = . if (C1SF6 == -1 | C1SF6 == 98)
replace C1SF7 = . if (C1SF7 == -1 | C1SF7 == 8)
replace C1SF8 = . if (C1SF8 == -1 | C1SF8 == 998 | C1SF8 == 999)
replace C1SF9 = . if (C1SF9 == -1 | C1SF9 == 998 | C1SF9 == 999)
replace C1SF10 = . if (C1SF10 == -1 | C1SF10 == 998 | C1SF10 == 999)
replace C1SF11 = . if (C1SF11 == -1 | C1SF11 == 8 | C1SF11 == 9)
replace C1SF12A = . if (C1SF12A == -1.0 | C1SF12A == 998.0 | C1SF12A == 999.0)
replace C1SF12B = . if (C1SF12B == -1 | C1SF12B == 8 | C1SF12B == 9)
replace C1SF13A = . if (C1SF13A == -1 | C1SF13A == 98 | C1SF13A == 99)
replace C1SF13B = . if (C1SF13B == -1 | C1SF13B == 9998 | C1SF13B == 9999)
replace C1SF14 = . if (C1SF14 == -1 | C1SF14 == 8 | C1SF14 == 9)
replace C1SF15 = . if (C1SF15 == -1 | C1SF15 == 8 | C1SF15 == 9)
replace C1SF16A = . if (C1SF16A == -1 | C1SF16A == 8 | C1SF16A == 9)
replace C1SF16B = . if (C1SF16B == -1 | C1SF16B == 8 | C1SF16B == 9)
replace C1SF16C = . if (C1SF16C == -1 | C1SF16C == 8 | C1SF16C == 9)
replace C1SF16D = . if (C1SF16D == -1 | C1SF16D == 8 | C1SF16D == 9)
replace C1SF16E = . if (C1SF16E == -1 | C1SF16E == 8 | C1SF16E == 9)
replace C1SF16F = . if (C1SF16F == -1 | C1SF16F == 8 | C1SF16F == 9)
replace C1SF16G = . if (C1SF16G == -1 | C1SF16G == 8 | C1SF16G == 9)
replace C1SF16H = . if (C1SF16H == -1 | C1SF16H == 8 | C1SF16H == 9)
replace C1SF16I = . if (C1SF16I == -1 | C1SF16I == 8 | C1SF16I == 9)
replace C1SF16J = . if (C1SF16J == -1 | C1SF16J == 8 | C1SF16J == 9)
replace C1SF17A = . if (C1SF17A == -1 | C1SF17A == 8 | C1SF17A == 9)
replace C1SF17B = . if (C1SF17B == -1 | C1SF17B == 8 | C1SF17B == 9)
replace C1SF17C = . if (C1SF17C == -1 | C1SF17C == 8 | C1SF17C == 9)
replace C1SF17D = . if (C1SF17D == -1 | C1SF17D == 8 | C1SF17D == 9)
replace C1SF17E = . if (C1SF17E == -1 | C1SF17E == 8 | C1SF17E == 9)
replace C1SF17F = . if (C1SF17F == -1 | C1SF17F == 8 | C1SF17F == 9)
replace C1SF17G = . if (C1SF17G == -1 | C1SF17G == 8 | C1SF17G == 9)
replace C1SF17H = . if (C1SF17H == -1 | C1SF17H == 8 | C1SF17H == 9)
replace C1SF17I = . if (C1SF17I == -1 | C1SF17I == 8 | C1SF17I == 9)
replace C1SF17J = . if (C1SF17J == -1 | C1SF17J == 8 | C1SF17J == 9)
replace C1SF18 = . if (C1SF18 == -1 | C1SF18 == 8 | C1SF18 == 9)
replace C1SF19A = . if (C1SF19A == -1 | C1SF19A == 8 | C1SF19A == 9)
replace C1SF19B = . if (C1SF19B == -1 | C1SF19B == 8 | C1SF19B == 9)
replace C1SF19C = . if (C1SF19C == -1 | C1SF19C == 8 | C1SF19C == 9)
replace C1SF19D = . if (C1SF19D == -1 | C1SF19D == 8 | C1SF19D == 9)
replace C1SF19E = . if (C1SF19E == -1 | C1SF19E == 8 | C1SF19E == 9)
replace C1SF19F = . if (C1SF19F == -1 | C1SF19F == 8 | C1SF19F == 9)
replace C1SF19G = . if (C1SF19G == -1 | C1SF19G == 8 | C1SF19G == 9)
replace C1SF19H = . if (C1SF19H == -1 | C1SF19H == 8 | C1SF19H == 9)
replace C1SF19I = . if (C1SF19I == -1 | C1SF19I == 8 | C1SF19I == 9)
replace C1SF19J = . if (C1SF19J == -1 | C1SF19J == 8 | C1SF19J == 9)
replace C1SF19K = . if (C1SF19K == -1 | C1SF19K == 8 | C1SF19K == 9)
replace C1SF19L = . if (C1SF19L == -1 | C1SF19L == 8 | C1SF19L == 9)
replace C1SF19M = . if (C1SF19M == -1 | C1SF19M == 8 | C1SF19M == 9)
replace C1SF19N = . if (C1SF19N == -1 | C1SF19N == 8 | C1SF19N == 9)
replace C1SF20 = . if (C1SF20 == -1 | C1SF20 == 8 | C1SF20 == 9)
replace C1SF21 = . if (C1SF21 == -1 | C1SF21 == 8 | C1SF21 == 9)
replace C1SF22 = . if (C1SF22 == -1 | C1SF22 == 998 | C1SF22 == 999)
replace C1SF23 = . if (C1SF23 == -1 | C1SF23 == 8 | C1SF23 == 9)
replace C1SF24 = . if (C1SF24 == -1 | C1SF24 == 8 | C1SF24 == 9)
replace C1SF25A = . if (C1SF25A == -1 | C1SF25A == 98 | C1SF25A == 99)
replace C1SF25B = . if (C1SF25B == -1 | C1SF25B == 9998 | C1SF25B == 9999)
replace C1SF26 = . if (C1SF26 == -1 | C1SF26 == 8 | C1SF26 == 9)
replace C1SF27A = . if (C1SF27A == -1 | C1SF27A == 8 | C1SF27A == 9)
replace C1SF27B = . if (C1SF27B == -1 | C1SF27B == 8 | C1SF27B == 9)
replace C1SF27C = . if (C1SF27C == -1 | C1SF27C == 8 | C1SF27C == 9)
replace C1SF27D = . if (C1SF27D == -1 | C1SF27D == 8 | C1SF27D == 9)
replace C1SF28A = . if (C1SF28A == -1 | C1SF28A == 98 | C1SF28A == 99)
replace C1SF28B = . if (C1SF28B == -1 | C1SF28B == 98 | C1SF28B == 99)
replace C1SF28C = . if (C1SF28C == -1 | C1SF28C == 8 | C1SF28C == 9)
replace C1SF29A = . if (C1SF29A == -1 | C1SF29A == 98 | C1SF29A == 99)
replace C1SF29B = . if (C1SF29B == -1 | C1SF29B == 98 | C1SF29B == 99)
replace C1SF29C = . if (C1SF29C == -1 | C1SF29C == 8 | C1SF29C == 9)
replace C1SF30A = . if (C1SF30A == -1 | C1SF30A == 98 | C1SF30A == 99)
replace C1SF30B = . if (C1SF30B == -1 | C1SF30B == 98 | C1SF30B == 99)
replace C1SF31 = . if (C1SF31 == -1 | C1SF31 == 8 | C1SF31 == 9)
replace C1SF32 = . if (C1SF32 == -1 | C1SF32 == 8 | C1SF32 == 9)
replace C1SF33 = . if (C1SF33 == -1 | C1SF33 == 8 | C1SF33 == 9)
replace C1SF34 = . if (C1SF34 == -1 | C1SF34 == 8 | C1SF34 == 9)
replace C1SF35 = . if (C1SF35 == -1 | C1SF35 == 8 | C1SF35 == 9)
replace C1SF36A = . if (C1SF36A == -1 | C1SF36A == 8 | C1SF36A == 9)
replace C1SF36B = . if (C1SF36B == -1 | C1SF36B == 8 | C1SF36B == 9)
replace C1SF36C = . if (C1SF36C == -1 | C1SF36C == 8 | C1SF36C == 9)
replace C1SF36D = . if (C1SF36D == -1 | C1SF36D == 8 | C1SF36D == 9)
replace C1SF36E = . if (C1SF36E == -1 | C1SF36E == 8 | C1SF36E == 9)
replace C1SF36F = . if (C1SF36F == -1 | C1SF36F == 8 | C1SF36F == 9)
replace C1SF36G = . if (C1SF36G == -1 | C1SF36G == 8 | C1SF36G == 9)
replace C1SF36H = . if (C1SF36H == -1 | C1SF36H == 8 | C1SF36H == 9)
replace C1SF36I = . if (C1SF36I == -1 | C1SF36I == 8 | C1SF36I == 9)
replace C1SF36J = . if (C1SF36J == -1 | C1SF36J == 8 | C1SF36J == 9)
replace C1SF36K = . if (C1SF36K == -1 | C1SF36K == 8 | C1SF36K == 9)
replace C1SJCSD = . if (C1SJCSD == -1.0 | C1SJCSD == 98.0 | C1SJCSD == 99.0)
replace C1SJCDA = . if (C1SJCDA == -1.0 | C1SJCDA == 98.0 | C1SJCDA == 99.0)
replace C1SJCDS = . if (C1SJCDS == -1.0 | C1SJCDS == 98.0 | C1SJCDS == 99.0)
replace C1SF37A = . if (C1SF37A == -1)
replace C1SF37A = . if (C1SF37A >= 6 & C1SF37A <= 9)
replace C1SF37B = . if (C1SF37B == -1)
replace C1SF37B = . if (C1SF37B >= 6 & C1SF37B <= 9)
replace C1SF37C = . if (C1SF37C == -1)
replace C1SF37C = . if (C1SF37C >= 6 & C1SF37C <= 9)
replace C1SF37D = . if (C1SF37D == -1)
replace C1SF37D = . if (C1SF37D >= 6 & C1SF37D <= 9)
replace C1SF37E = . if (C1SF37E == -1)
replace C1SF37E = . if (C1SF37E >= 6 & C1SF37E <= 9)
replace C1SJCCS = . if (C1SJCCS == -1 | C1SJCCS == 98 | C1SJCCS == 99)
replace C1SJCSS = . if (C1SJCSS == -1.0 | C1SJCSS == 98.0 | C1SJCSS == 99.0)
replace C1SF38A = . if (C1SF38A == -1 | C1SF38A == 8 | C1SF38A == 9)
replace C1SF38B = . if (C1SF38B == -1 | C1SF38B == 8 | C1SF38B == 9)
replace C1SF38C = . if (C1SF38C == -1 | C1SF38C == 8 | C1SF38C == 9)
replace C1SF38D = . if (C1SF38D == -1 | C1SF38D == 8 | C1SF38D == 9)
replace C1SF38E = . if (C1SF38E == -1 | C1SF38E == 8 | C1SF38E == 9)
replace C1SF38F = . if (C1SF38F == -1 | C1SF38F == 8 | C1SF38F == 9)
replace C1SJOBDI = . if (C1SJOBDI == -1.0 | C1SJOBDI == 98.0 | C1SJOBDI == 99.0)
replace C1SF39A = . if (C1SF39A == -1 | C1SF39A == 8 | C1SF39A == 9)
replace C1SF39B = . if (C1SF39B == -1 | C1SF39B == 8 | C1SF39B == 9)
replace C1SF39C = . if (C1SF39C == -1 | C1SF39C == 8 | C1SF39C == 9)
replace C1SF39D = . if (C1SF39D == -1 | C1SF39D == 8 | C1SF39D == 9)
replace C1SF39E = . if (C1SF39E == -1 | C1SF39E == 8 | C1SF39E == 9)
replace C1SF39F = . if (C1SF39F == -1 | C1SF39F == 8 | C1SF39F == 9)
replace C1SPIWOR = . if (C1SPIWOR == -1.0 | C1SPIWOR == 8.0 | C1SPIWOR == 9.0)
replace C1SF40A = . if (C1SF40A == -1 | C1SF40A == 8 | C1SF40A == 9)
replace C1SF40B = . if (C1SF40B == -1 | C1SF40B == 8 | C1SF40B == 9)
replace C1SF40C = . if (C1SF40C == -1 | C1SF40C == 8 | C1SF40C == 9)
replace C1SF40D = . if (C1SF40D == -1 | C1SF40D == 8 | C1SF40D == 9)
replace C1SF40E = . if (C1SF40E == -1 | C1SF40E == 8 | C1SF40E == 9)
replace C1SF40F = . if (C1SF40F == -1 | C1SF40F == 8 | C1SF40F == 9)
replace C1SF40G = . if (C1SF40G == -1 | C1SF40G == 8 | C1SF40G == 9)
replace C1SF40H = . if (C1SF40H == -1 | C1SF40H == 8 | C1SF40H == 9)
replace C1SF40I = . if (C1SF40I == -1 | C1SF40I == 8 | C1SF40I == 9)
replace C1SF40J = . if (C1SF40J == -1 | C1SF40J == 8 | C1SF40J == 9)
replace C1SF40K = . if (C1SF40K == -1 | C1SF40K == 8 | C1SF40K == 9)
replace C1SF40L = . if (C1SF40L == -1 | C1SF40L == 8 | C1SF40L == 9)
replace C1SF40M = . if (C1SF40M == -1 | C1SF40M == 8 | C1SF40M == 9)
replace C1SF40N = . if (C1SF40N == -1 | C1SF40N == 8 | C1SF40N == 9)
replace C1SF40O = . if (C1SF40O == -1 | C1SF40O == 8 | C1SF40O == 9)
replace C1SF40P = . if (C1SF40P == -1 | C1SF40P == 8 | C1SF40P == 9)
replace C1SPOSWF = . if (C1SPOSWF == -1.0 | C1SPOSWF == 98.0 | C1SPOSWF == 99.0)
replace C1SNEGWF = . if (C1SNEGWF == -1 | C1SNEGWF == 98 | C1SNEGWF == 99)
replace C1SPOSFW = . if (C1SPOSFW == -1.0 | C1SPOSFW == 98.0 | C1SPOSFW == 99.0)
replace C1SNEGFW = . if (C1SNEGFW == -1.0 | C1SNEGFW == 98.0 | C1SNEGFW == 99.0)
replace C1SF41A = . if (C1SF41A == -1 | C1SF41A == 98 | C1SF41A == 99)
replace C1SF41B = . if (C1SF41B == -1 | C1SF41B == 98 | C1SF41B == 99)
replace C1SF41C = . if (C1SF41C == -1 | C1SF41C == 98 | C1SF41C == 99)
replace C1SF41D = . if (C1SF41D == -1 | C1SF41D == 98 | C1SF41D == 99)
replace C1SF42A = . if (C1SF42A == -1 | C1SF42A == 8 | C1SF42A == 9)
replace C1SF42B = . if (C1SF42B == -1 | C1SF42B == 8 | C1SF42B == 9)
replace C1SF42C = . if (C1SF42C == -1 | C1SF42C == 8 | C1SF42C == 9)
replace C1SF42D = . if (C1SF42D == -1 | C1SF42D == 8 | C1SF42D == 9)
replace C1SF43A = . if (C1SF43A == -1 | C1SF43A == 8)
replace C1SF43B = . if (C1SF43B == -1 | C1SF43B == 8)
replace C1SF43C = . if (C1SF43C == -1 | C1SF43C == 8)
replace C1SF43D = . if (C1SF43D == -1 | C1SF43D == 8)
replace C1SF44A = . if (C1SF44A == -1 | C1SF44A == 8)
replace C1SF44B = . if (C1SF44B == -1 | C1SF44B == 8)
replace C1SF44C = . if (C1SF44C == -1 | C1SF44C == 8)
replace C1SF45A = . if (C1SF45A == -1 | C1SF45A == 5 | C1SF45A == 8)
replace C1SF45B = . if (C1SF45B == -1 | C1SF45B == 5 | C1SF45B == 8)
replace C1SF45C = . if (C1SF45C == -1 | C1SF45C == 5 | C1SF45C == 8)
replace C1SG1 = . if (C1SG1 == -1 | C1SG1 == 98)
replace C1SG2 = . if (C1SG2 == -1 | C1SG2 == 98)
replace C1SG3 = . if (C1SG3 == -1 | C1SG3 == 98)
replace C1SG4 = . if (C1SG4 == -1 | C1SG4 == 98)
replace C1SG5 = . if (C1SG5 == -1 | C1SG5 == 98)
replace C1SG6 = . if (C1SG6 == -1 | C1SG6 == 98)
replace C1SG7 = . if (C1SG7 == -1 | C1SG7 == 8)
replace C1SG8 = . if (C1SG8 == -1 | C1SG8 == 8)
replace C1SG9 = . if (C1SG9 == -1 | C1SG9 == 8)
replace C1SG10 = . if (C1SG10 == -1 | C1SG10 == 8)
replace C1SG11A = . if (C1SG11A == -1 | C1SG11A == 98 | C1SG11A == 99)
replace C1SG11B = . if (C1SG11B == -1 | C1SG11B == 98 | C1SG11B == 99)
replace C1SG11C = . if (C1SG11C == -1 | C1SG11C == 98 | C1SG11C == 99)
replace C1SG11D = . if (C1SG11D == -1 | C1SG11D == 98 | C1SG11D == 99)
replace C1SG12 = . if (C1SG12 == -1 | C1SG12 == 3 | C1SG12 == 8)
replace C1SG13 = . if (C1SG13 == -1 | C1SG13 == 8)
replace C1SG14A = . if (C1SG14A == -1 | C1SG14A == 98 | C1SG14A == 99)
replace C1SG14B = . if (C1SG14B == -1 | C1SG14B == 98 | C1SG14B == 99)
replace C1SG14C = . if (C1SG14C == -1 | C1SG14C == 98 | C1SG14C == 99)
replace C1SG14D = . if (C1SG14D == -1 | C1SG14D == 98 | C1SG14D == 99)
replace C1SG15 = . if (C1SG15 == -1 | C1SG15 == 8 | C1SG15 == 9)
replace C1SG16 = . if (C1SG16 == -1 | C1SG16 == 8)
replace C1SG17A = . if (C1SG17A == -1 | C1SG17A == 98 | C1SG17A == 99)
replace C1SG17B = . if (C1SG17B == -1 | C1SG17B == 98 | C1SG17B == 99)
replace C1SG17C = . if (C1SG17C == -1 | C1SG17C == 98 | C1SG17C == 99)
replace C1SG17D = . if (C1SG17D == -1 | C1SG17D == 98 | C1SG17D == 99)
replace C1SRINC = . if (C1SRINC == -1 | C1SRINC == 999998)
replace C1SSINC = . if (C1SSINC == -1 | C1SSINC == 999998 | C1SSINC == 999999)
replace C1SHINC = . if (C1SHINC == -1 | C1SHINC == 999998 | C1SHINC == 999999)
replace C1SEARN = . if (C1SEARN == -1 | C1SEARN == 999998)
replace C1SPNSN = . if (C1SPNSN == -1 | C1SPNSN == 999998)
replace C1SSEC = . if (C1SSEC == -1 | C1SSEC == 999998)
replace C1SOTH = . if (C1SOTH == -1 | C1SOTH == 999998)
replace C1STINC = . if (C1STINC == -1 | C1STINC == 999998)
replace C1SG18 = . if (C1SG18 == -1 | C1SG18 == 8 | C1SG18 == 9)
replace C1SG19 = . if (C1SG19 == -1 | C1SG19 == 8)
replace C1SG20A = . if (C1SG20A == -1 | C1SG20A == 8 | C1SG20A == 9)
replace C1SG20B = . if (C1SG20B == -1 | C1SG20B == 8 | C1SG20B == 9)
replace C1SG20C = . if (C1SG20C == -1 | C1SG20C == 8 | C1SG20C == 9)
replace C1SG20D = . if (C1SG20D == -1 | C1SG20D == 8 | C1SG20D == 9)
replace C1SG20E = . if (C1SG20E == -1 | C1SG20E == 8 | C1SG20E == 9)
replace C1SG20F = . if (C1SG20F == -1 | C1SG20F == 8 | C1SG20F == 9)
replace C1SG20G = . if (C1SG20G == -1 | C1SG20G == 8 | C1SG20G == 9)
replace C1SG20H = . if (C1SG20H == -1 | C1SG20H == 8 | C1SG20H == 9)
replace C1SG20I = . if (C1SG20I == -1 | C1SG20I == 8 | C1SG20I == 9)
replace C1SG20J = . if (C1SG20J == -1 | C1SG20J == 8 | C1SG20J == 9)
replace C1SG21 = . if (C1SG21 == -1 | C1SG21 == 99999998 | C1SG21 == 99999999)
replace C1SG22 = . if (C1SG22 == -1 | C1SG22 == 999998)
replace C1SG23 = . if (C1SG23 == -1 | C1SG23 == 999998)
replace C1SG24 = . if (C1SG24 == -1 | C1SG24 == 999998)
replace C1SG25 = . if (C1SG25 == -1 | C1SG25 == 8)
replace C1SG25A = . if (C1SG25A == -1 | C1SG25A == 999998 | C1SG25A == 999999)
replace C1SG25B = . if (C1SG25B == -1 | C1SG25B == 999998 | C1SG25B == 999999)
replace C1SG26 = . if (C1SG26 == -1 | C1SG26 == 7 | C1SG26 == 8)
replace C1SG27 = . if (C1SG27 == -1 | C1SG27 == 9999998 | C1SG27 == 9999999)
replace C1SG28 = . if (C1SG28 == -1 | C1SG28 == 7 | C1SG28 == 8)
replace C1SG29 = . if (C1SG29 == -1 | C1SG29 == 9999998 | C1SG29 == 9999999)
replace C1SG30 = . if (C1SG30 == -1 | C1SG30 == 7 | C1SG30 == 8)
replace C1SG31 = . if (C1SG31 == -1 | C1SG31 == 9999998 | C1SG31 == 9999999)
replace C1SG32 = . if (C1SG32 == -1)
replace C1SG32 = . if (C1SG32 >= 4 & C1SG32 <= 8)
replace C1SG33 = . if (C1SG33 == -1 | C1SG33 == 9999998 | C1SG33 == 9999999)
replace C1SG34 = . if (C1SG34 == -1 | C1SG34 == 8)
replace C1SG35 = . if (C1SG35 == -1 | C1SG35 == 8 | C1SG35 == 9)
replace C1SG36 = . if (C1SG36 == -1 | C1SG36 == 999998 | C1SG36 == 999999)
replace C1SG37A = . if (C1SG37A == -1 | C1SG37A == 998)
replace C1SG37B = . if (C1SG37B == -1 | C1SG37B == 998)
replace C1SG37C = . if (C1SG37C == -1 | C1SG37C == 998)
replace C1SG37D = . if (C1SG37D == -1 | C1SG37D == 998)
replace C1SG38 = . if (C1SG38 == -1 | C1SG38 == 8)
replace C1SG39 = . if (C1SG39 == -1 | C1SG39 == 9999998 | C1SG39 == 9999999)
replace C1SG40 = . if (C1SG40 == -1 | C1SG40 == 8)
replace C1SG41 = . if (C1SG41 == -1 | C1SG41 == 8)
replace C1SG42 = . if (C1SG42 == -1 | C1SG42 == 99999998 | C1SG42 == 99999999)
replace C1SG43 = . if (C1SG43 == -1 | C1SG43 == 9999998 | C1SG43 == 9999999)
replace C1SG44 = . if (C1SG44 == -1 | C1SG44 == 8)
replace C1SG45 = . if (C1SG45 == -1 | C1SG45 == 999998 | C1SG45 == 999999)
replace C1SG46 = . if (C1SG46 == -1 | C1SG46 == 8)
replace C1SG47 = . if (C1SG47 == -1 | C1SG47 == 9999998 | C1SG47 == 9999999)
replace C1SG48A = . if (C1SG48A == -1 | C1SG48A == 998)
replace C1SG48B = . if (C1SG48B == -1 | C1SG48B == 998)
replace C1SG48C = . if (C1SG48C == -1 | C1SG48C == 998)
replace C1SG48D = . if (C1SG48D == -1 | C1SG48D == 998)
replace C1SG48E = . if (C1SG48E == -1 | C1SG48E == 998)
replace C1SG49 = . if (C1SG49 == -1 | C1SG49 == 8)
replace C1SG50 = . if (C1SG50 == -1 | C1SG50 == 9998 | C1SG50 == 9999)
replace C1SG51 = . if (C1SG51 == -1 | C1SG51 == 999998 | C1SG51 == 999999)
replace C1SG52 = . if (C1SG52 == -1 | C1SG52 == 8)
replace C1SG53 = . if (C1SG53 == -1 | C1SG53 == 9999998 | C1SG53 == 9999999)
replace C1SG54 = . if (C1SG54 == -1 | C1SG54 == 8)
replace C1SG55 = . if (C1SG55 == -1 | C1SG55 == 999998 | C1SG55 == 999999)
replace C1SG56 = . if (C1SG56 == -1 | C1SG56 == 8)
replace C1SG57 = . if (C1SG57 == -1 | C1SG57 == 999998 | C1SG57 == 999999)
replace C1SG58 = . if (C1SG58 == -1 | C1SG58 == 8)
replace C1SG59 = . if (C1SG59 == -1 | C1SG59 == 8)
replace C1SG59A = . if (C1SG59A == -1 | C1SG59A == 999998 | C1SG59A == 999999)
replace C1SG59B = . if (C1SG59B == -1 | C1SG59B == 9999998 | C1SG59B == 9999999)
replace C1SG60 = . if (C1SG60 == -1 | C1SG60 == 8)
replace C1SG60A = . if (C1SG60A == -1 | C1SG60A == 999998 | C1SG60A == 999999)
replace C1SG60B = . if (C1SG60B == -1 | C1SG60B == 9999998 | C1SG60B == 9999999)
replace C1SG61A = . if (C1SG61A == -1 | C1SG61A == 9999998 | C1SG61A == 9999999)
replace C1SG61B = . if (C1SG61B == -1 | C1SG61B == 999998)
replace C1SG61C = . if (C1SG61C == -1 | C1SG61C == 999998)
replace C1SG61D = . if (C1SG61D == -1 | C1SG61D == 999998)
replace C1SG61E = . if (C1SG61E == -1 | C1SG61E == 99998)
replace C1SG61F = . if (C1SG61F == -1 | C1SG61F == 99998)
replace C1SG61G = . if (C1SG61G == -1 | C1SG61G == 99999998)
replace C1SG61H = . if (C1SG61H == -1 | C1SG61H == 99998)
replace C1SG61I = . if (C1SG61I == -1 | C1SG61I == 99998)
replace C1SG62 = . if (C1SG62 == -1 | C1SG62 == 8)
replace C1SH1 = . if (C1SH1 == -1 | C1SH1 == 98)
replace C1SH2 = . if (C1SH2 == -1 | C1SH2 == 98)
replace C1SH3 = . if (C1SH3 == -1 | C1SH3 == 98)
replace C1SH4 = . if (C1SH4 == -1 | C1SH4 == 98)
replace C1SH5 = . if (C1SH5 == -1 | C1SH5 == 98)
replace C1SH6A = . if (C1SH6A == -1 | C1SH6A == 8)
replace C1SH6B = . if (C1SH6B == -1 | C1SH6B == 8)
replace C1SH6C = . if (C1SH6C == -1 | C1SH6C == 8)
replace C1SH6D = . if (C1SH6D == -1 | C1SH6D == 8)
replace C1SH6E = . if (C1SH6E == -1 | C1SH6E == 8)
replace C1SH6F = . if (C1SH6F == -1 | C1SH6F == 8)
replace C1SGENER = . if (C1SGENER == -1.0 | C1SGENER == 98.0)
replace C1SH7A = . if (C1SH7A == -1 | C1SH7A == 998)
replace C1SH7B = . if (C1SH7B == -1 | C1SH7B == 998)
replace C1SH7C = . if (C1SH7C == -1 | C1SH7C == 998)
replace C1SH7D = . if (C1SH7D == -1 | C1SH7D == 998)
replace C1SH8A = . if (C1SH8A == -1 | C1SH8A == 98)
replace C1SH8B = . if (C1SH8B == -1 | C1SH8B == 98)
replace C1SH8C = . if (C1SH8C == -1 | C1SH8C == 98)
replace C1SH9A = . if (C1SH9A == -1 | C1SH9A == 998)
replace C1SH9B = . if (C1SH9B == -1 | C1SH9B == 998)
replace C1SH9C = . if (C1SH9C == -1 | C1SH9C == 998)
replace C1SH9D = . if (C1SH9D == -1 | C1SH9D == 998)
replace C1SH9E = . if (C1SH9E == -1 | C1SH9E == 998)
replace C1SH9F = . if (C1SH9F == -1 | C1SH9F == 998)
replace C1SH10A = . if (C1SH10A == -1 | C1SH10A == 998)
replace C1SH10B = . if (C1SH10B == -1 | C1SH10B == 998)
replace C1SH10C = . if (C1SH10C == -1 | C1SH10C == 998)
replace C1SH10D = . if (C1SH10D == -1 | C1SH10D == 998)
replace C1SH10E = . if (C1SH10E == -1 | C1SH10E == 998)
replace C1SH10F = . if (C1SH10F == -1 | C1SH10F == 998)
replace C1SH11A = . if (C1SH11A == -1 | C1SH11A == 998)
replace C1SH11B = . if (C1SH11B == -1 | C1SH11B == 998)
replace C1SH11C = . if (C1SH11C == -1 | C1SH11C == 998)
replace C1SH11D = . if (C1SH11D == -1 | C1SH11D == 998)
replace C1SH11E = . if (C1SH11E == -1 | C1SH11E == 998)
replace C1SH12A = . if (C1SH12A == -1 | C1SH12A == 998)
replace C1SH12B = . if (C1SH12B == -1 | C1SH12B == 998)
replace C1SH12C = . if (C1SH12C == -1 | C1SH12C == 998)
replace C1SH12D = . if (C1SH12D == -1 | C1SH12D == 998)
replace C1SH12E = . if (C1SH12E == -1 | C1SH12E == 998)
replace C1SH12F = . if (C1SH12F == -1 | C1SH12F == 998)
replace C1SH12G = . if (C1SH12G == -1 | C1SH12G == 998)
replace C1SH12H = . if (C1SH12H == -1 | C1SH12H == 998)
replace C1SH13A = . if (C1SH13A == -1 | C1SH13A == 99999998)
replace C1SH13B = . if (C1SH13B == -1 | C1SH13B == 99999998)
replace C1SH13C = . if (C1SH13C == -1 | C1SH13C == 99998)
replace C1SH13D = . if (C1SH13D == -1 | C1SH13D == 99998)
replace C1SH13E = . if (C1SH13E == -1 | C1SH13E == 99999998)
replace C1SH13F = . if (C1SH13F == -1 | C1SH13F == 99999998)
replace C1SH13G = . if (C1SH13G == -1 | C1SH13G == 99999998)
replace C1SH13H = . if (C1SH13H == -1 | C1SH13H == 99999998)
replace C1SH14A = . if (C1SH14A == -1 | C1SH14A == 99999998)
replace C1SH14B = . if (C1SH14B == -1 | C1SH14B == 99999998)
replace C1SH14C = . if (C1SH14C == -1 | C1SH14C == 99999998)
replace C1SH14D = . if (C1SH14D == -1 | C1SH14D == 99999998)
replace C1SH14E = . if (C1SH14E == -1 | C1SH14E == 99999998)
replace C1SH14F = . if (C1SH14F == -1 | C1SH14F == 99999998)
replace C1SH14G = . if (C1SH14G == -1 | C1SH14G == 99998)
replace C1SH15A = . if (C1SH15A == -1 | C1SH15A == 3 | C1SH15A == 8)
replace C1SH15B = . if (C1SH15B == -1 | C1SH15B == 3 | C1SH15B == 8)
replace C1SH15C = . if (C1SH15C == -1 | C1SH15C == 3 | C1SH15C == 8)
replace C1SH15D = . if (C1SH15D == -1 | C1SH15D == 3 | C1SH15D == 8)
replace C1SH16A = . if (C1SH16A == -1 | C1SH16A == 8)
replace C1SH16B = . if (C1SH16B == -1 | C1SH16B == 8)
replace C1SH16C = . if (C1SH16C == -1 | C1SH16C == 8)
replace C1SH16D = . if (C1SH16D == -1 | C1SH16D == 8)
replace C1SH16E = . if (C1SH16E == -1 | C1SH16E == 8)
replace C1SH16F = . if (C1SH16F == -1 | C1SH16F == 8)
replace C1SH16G = . if (C1SH16G == -1 | C1SH16G == 8)
replace C1SH16H = . if (C1SH16H == -1 | C1SH16H == 8)
replace C1SH16I = . if (C1SH16I == -1 | C1SH16I == 8)
replace C1SH16J = . if (C1SH16J == -1 | C1SH16J == 8)
replace C1SH16K = . if (C1SH16K == -1 | C1SH16K == 8)
replace C1SH16L = . if (C1SH16L == -1 | C1SH16L == 8)
replace C1SH16M = . if (C1SH16M == -1 | C1SH16M == 8)
replace C1SH16N = . if (C1SH16N == -1 | C1SH16N == 8)
replace C1SH16O = . if (C1SH16O == -1 | C1SH16O == 8)
replace C1SSWBMS = . if (C1SSWBMS == -1 | C1SSWBMS == 98)
replace C1SSWBSI = . if (C1SSWBSI == -1.0 | C1SSWBSI == 98.0)
replace C1SSWBAO = . if (C1SSWBAO == -1.0 | C1SSWBAO == 98.0)
replace C1SSWBSC = . if (C1SSWBSC == -1.0 | C1SSWBSC == 98.0)
replace C1SSWBSA = . if (C1SSWBSA == -1.0 | C1SSWBSA == 98.0)
replace C1SH16P = . if (C1SH16P == -1 | C1SH16P == 8)
replace C1SH16Q = . if (C1SH16Q == -1 | C1SH16Q == 8)
replace C1SH16R = . if (C1SH16R == -1 | C1SH16R == 8)
replace C1SH16S = . if (C1SH16S == -1 | C1SH16S == 8)
replace C1SH16T = . if (C1SH16T == -1 | C1SH16T == 8)
replace C1SSYMP = . if (C1SSYMP == -1.0 | C1SSYMP == 8.0)
replace C1SI1 = . if (C1SI1 == -1 | C1SI1 == 8)
replace C1SI2 = . if (C1SI2 == -1 | C1SI2 == 8)
replace C1SI3 = . if (C1SI3 == -1 | C1SI3 == 98)
replace C1SI4 = . if (C1SI4 == -1 | C1SI4 == 98)
replace C1SI5 = . if (C1SI5 == -1 | C1SI5 == 8)
replace C1SI6A = . if (C1SI6A == -1 | C1SI6A == 8)
replace C1SI6B = . if (C1SI6B == -1 | C1SI6B == 8)
replace C1SI6C = . if (C1SI6C == -1 | C1SI6C == 8)
replace C1SI6D = . if (C1SI6D == -1 | C1SI6D == 8)
replace C1SI6E = . if (C1SI6E == -1 | C1SI6E == 8)
replace C1SI6F = . if (C1SI6F == -1 | C1SI6F == 8)
replace C1SI6G = . if (C1SI6G == -1 | C1SI6G == 8)
replace C1SI6H = . if (C1SI6H == -1 | C1SI6H == 8)
replace C1SI6I = . if (C1SI6I == -1 | C1SI6I == 8)
replace C1SI6J = . if (C1SI6J == -1 | C1SI6J == 8)
replace C1SI6K = . if (C1SI6K == -1 | C1SI6K == 8)
replace C1SI6L = . if (C1SI6L == -1 | C1SI6L == 8)
replace C1SHOMET = . if (C1SHOMET == -1.0 | C1SHOMET == 8.0)
replace C1SPIHOM = . if (C1SPIHOM == -1.0 | C1SPIHOM == 8.0)
replace C1SI7 = . if (C1SI7 == -1 | C1SI7 == 98)
replace C1SJ1 = . if (C1SJ1 == -1 | C1SJ1 == 98)
replace C1SJ2 = . if (C1SJ2 == -1 | C1SJ2 == 98)
replace C1SJ3 = . if (C1SJ3 == -1 | C1SJ3 == 998)
replace C1SJ4A = . if (C1SJ4A == -1 | C1SJ4A == 8)
replace C1SJ4B = . if (C1SJ4B == -1 | C1SJ4B == 8)
replace C1SJ4C = . if (C1SJ4C == -1 | C1SJ4C == 8)
replace C1SJ4D = . if (C1SJ4D == -1 | C1SJ4D == 8)
replace C1SJ4E = . if (C1SJ4E == -1 | C1SJ4E == 8)
replace C1SJ4F = . if (C1SJ4F == -1 | C1SJ4F == 8)
replace C1SJ4G = . if (C1SJ4G == -1 | C1SJ4G == 8)
replace C1SJ4H = . if (C1SJ4H == -1 | C1SJ4H == 8)
replace C1SJ4I = . if (C1SJ4I == -1 | C1SJ4I == 8)
replace C1SJ4J = . if (C1SJ4J == -1 | C1SJ4J == 8)
replace C1SKINPO = . if (C1SKINPO == -1.0 | C1SKINPO == 8.0)
replace C1SKINNE = . if (C1SKINNE == -1.0 | C1SKINNE == 8.0)
replace C1SFAMSO = . if (C1SFAMSO == -1.0 | C1SFAMSO == 8.0)
replace C1SPKINS = . if (C1SPKINS == -1.0 | C1SPKINS == 8.0)
replace C1SJ5 = . if (C1SJ5 == -1 | C1SJ5 == 98)
replace C1SJ6 = . if (C1SJ6 == -1 | C1SJ6 == 98)
replace C1SJ7 = . if (C1SJ7 == -1 | C1SJ7 == 998)
replace C1SJ8A = . if (C1SJ8A == -1 | C1SJ8A == 8)
replace C1SJ8B = . if (C1SJ8B == -1 | C1SJ8B == 8)
replace C1SJ8C = . if (C1SJ8C == -1 | C1SJ8C == 8)
replace C1SJ8D = . if (C1SJ8D == -1 | C1SJ8D == 8)
replace C1SJ8E = . if (C1SJ8E == -1 | C1SJ8E == 8)
replace C1SJ8F = . if (C1SJ8F == -1 | C1SJ8F == 8)
replace C1SJ8G = . if (C1SJ8G == -1 | C1SJ8G == 8)
replace C1SJ8H = . if (C1SJ8H == -1 | C1SJ8H == 8)
replace C1SFDSPO = . if (C1SFDSPO == -1.0 | C1SFDSPO == 8.0)
replace C1SFDSNE = . if (C1SFDSNE == -1.0 | C1SFDSNE == 8.0)
replace C1SFDSOL = . if (C1SFDSOL == -1.0 | C1SFDSOL == 8.0)
replace C1SJ9 = . if (C1SJ9 == -1 | C1SJ9 == 8)
replace C1SJ10 = . if (C1SJ10 == -1 | C1SJ10 == 8)
replace C1SJ11SA = . if (C1SJ11SA == -1 | C1SJ11SA == 3 | C1SJ11SA == 8)
replace C1SJ11PA = . if (C1SJ11PA == -1 | C1SJ11PA == 3 | C1SJ11PA == 8)
replace C1SJ11CA = . if (C1SJ11CA == -1 | C1SJ11CA == 3 | C1SJ11CA == 8)
replace C1SJ11SB = . if (C1SJ11SB == -1 | C1SJ11SB == 3 | C1SJ11SB == 8)
replace C1SJ11PB = . if (C1SJ11PB == -1 | C1SJ11PB == 3 | C1SJ11PB == 8)
replace C1SJ11CB = . if (C1SJ11CB == -1 | C1SJ11CB == 3 | C1SJ11CB == 8)
replace C1SJ11SC = . if (C1SJ11SC == -1 | C1SJ11SC == 3 | C1SJ11SC == 8)
replace C1SJ11PC = . if (C1SJ11PC == -1 | C1SJ11PC == 3 | C1SJ11PC == 8)
replace C1SJ11CC = . if (C1SJ11CC == -1 | C1SJ11CC == 3 | C1SJ11CC == 8)
replace C1SJ11SD = . if (C1SJ11SD == -1 | C1SJ11SD == 3 | C1SJ11SD == 8)
replace C1SJ11PD = . if (C1SJ11PD == -1 | C1SJ11PD == 3 | C1SJ11PD == 8)
replace C1SJ11CD = . if (C1SJ11CD == -1 | C1SJ11CD == 3 | C1SJ11CD == 8)
replace C1SJ11SE = . if (C1SJ11SE == -1 | C1SJ11SE == 3 | C1SJ11SE == 8)
replace C1SJ11PE = . if (C1SJ11PE == -1 | C1SJ11PE == 3 | C1SJ11PE == 8)
replace C1SJ11CE = . if (C1SJ11CE == -1 | C1SJ11CE == 3 | C1SJ11CE == 8)
replace C1SJ11SF = . if (C1SJ11SF == -1 | C1SJ11SF == 3 | C1SJ11SF == 8)
replace C1SJ11PF = . if (C1SJ11PF == -1 | C1SJ11PF == 3 | C1SJ11PF == 8)
replace C1SJ11CF = . if (C1SJ11CF == -1 | C1SJ11CF == 3 | C1SJ11CF == 8)
replace C1SJ11SG = . if (C1SJ11SG == -1 | C1SJ11SG == 3 | C1SJ11SG == 8)
replace C1SJ11PG = . if (C1SJ11PG == -1 | C1SJ11PG == 3 | C1SJ11PG == 8)
replace C1SJ11CG = . if (C1SJ11CG == -1 | C1SJ11CG == 3 | C1SJ11CG == 8)
replace C1SJ11SH = . if (C1SJ11SH == -1 | C1SJ11SH == 3 | C1SJ11SH == 8)
replace C1SJ11PH = . if (C1SJ11PH == -1 | C1SJ11PH == 3 | C1SJ11PH == 8)
replace C1SJ11CH = . if (C1SJ11CH == -1 | C1SJ11CH == 3 | C1SJ11CH == 8)
replace C1SJ11SI = . if (C1SJ11SI == -1 | C1SJ11SI == 3 | C1SJ11SI == 8)
replace C1SJ11PI = . if (C1SJ11PI == -1 | C1SJ11PI == 3 | C1SJ11PI == 8)
replace C1SJ11CI = . if (C1SJ11CI == -1 | C1SJ11CI == 3 | C1SJ11CI == 8)
replace C1SJ11SJ = . if (C1SJ11SJ == -1 | C1SJ11SJ == 3 | C1SJ11SJ == 8)
replace C1SJ11PJ = . if (C1SJ11PJ == -1 | C1SJ11PJ == 3 | C1SJ11PJ == 8)
replace C1SJ11CJ = . if (C1SJ11CJ == -1 | C1SJ11CJ == 3 | C1SJ11CJ == 8)
replace C1SJ11SK = . if (C1SJ11SK == -1 | C1SJ11SK == 3 | C1SJ11SK == 8)
replace C1SJ11PK = . if (C1SJ11PK == -1 | C1SJ11PK == 3 | C1SJ11PK == 8)
replace C1SJ11CK = . if (C1SJ11CK == -1 | C1SJ11CK == 3 | C1SJ11CK == 8)
replace C1SJ11SL = . if (C1SJ11SL == -1 | C1SJ11SL == 3 | C1SJ11SL == 8)
replace C1SJ11PL = . if (C1SJ11PL == -1 | C1SJ11PL == 3 | C1SJ11PL == 8)
replace C1SJ11CL = . if (C1SJ11CL == -1 | C1SJ11CL == 3 | C1SJ11CL == 8)
replace C1SJ11SM = . if (C1SJ11SM == -1 | C1SJ11SM == 3 | C1SJ11SM == 8)
replace C1SJ11PM = . if (C1SJ11PM == -1 | C1SJ11PM == 3 | C1SJ11PM == 8)
replace C1SJ11CM = . if (C1SJ11CM == -1 | C1SJ11CM == 3 | C1SJ11CM == 8)
replace C1SJ11SN = . if (C1SJ11SN == -1 | C1SJ11SN == 3 | C1SJ11SN == 8)
replace C1SJ11PN = . if (C1SJ11PN == -1 | C1SJ11PN == 3 | C1SJ11PN == 8)
replace C1SJ11CN = . if (C1SJ11CN == -1 | C1SJ11CN == 3 | C1SJ11CN == 8)
replace C1SJ11SO = . if (C1SJ11SO == -1 | C1SJ11SO == 3 | C1SJ11SO == 8)
replace C1SJ11PO = . if (C1SJ11PO == -1 | C1SJ11PO == 3 | C1SJ11PO == 8)
replace C1SJ11CO = . if (C1SJ11CO == -1 | C1SJ11CO == 3 | C1SJ11CO == 8)
replace C1SK1 = . if (C1SK1 == -1 | C1SK1 == 8)
replace C1SK2 = . if (C1SK2 == -1 | C1SK2 == 98 | C1SK2 == 99)
replace C1SK3 = . if (C1SK3 == -1)
replace C1SK3 = . if (C1SK3 >= 96 & C1SK3 <= 99)
replace C1SK4 = . if (C1SK4 == -1 | C1SK4 == 98 | C1SK4 == 99)
replace C1SK5 = . if (C1SK5 == -1 | C1SK5 == 98 | C1SK5 == 99)
replace C1SK6 = . if (C1SK6 == -1 | C1SK6 == 98 | C1SK6 == 99)
replace C1SK7A = . if (C1SK7A == -1 | C1SK7A == 8 | C1SK7A == 9)
replace C1SK7B = . if (C1SK7B == -1 | C1SK7B == 8 | C1SK7B == 9)
replace C1SK7C = . if (C1SK7C == -1 | C1SK7C == 8 | C1SK7C == 9)
replace C1SK7D = . if (C1SK7D == -1 | C1SK7D == 8 | C1SK7D == 9)
replace C1SK7E = . if (C1SK7E == -1 | C1SK7E == 8 | C1SK7E == 9)
replace C1SK7F = . if (C1SK7F == -1 | C1SK7F == 8 | C1SK7F == 9)
replace C1SPIFAM = . if (C1SPIFAM == -1.0 | C1SPIFAM == 8.0 | C1SPIFAM == 9.0)
replace C1SK8A1 = . if (C1SK8A1 == -1 | C1SK8A1 == 8 | C1SK8A1 == 9)
replace C1SK8A2 = . if (C1SK8A2 == -1)
replace C1SK8A2 = . if (C1SK8A2 >= 3 & C1SK8A2 <= 9)
replace C1SK8B1 = . if (C1SK8B1 == -1 | C1SK8B1 == 8 | C1SK8B1 == 9)
replace C1SK8B2 = . if (C1SK8B2 == -1)
replace C1SK8B2 = . if (C1SK8B2 >= 3 & C1SK8B2 <= 9)
replace C1SK8C1 = . if (C1SK8C1 == -1 | C1SK8C1 == 8 | C1SK8C1 == 9)
replace C1SK8C2 = . if (C1SK8C2 == -1)
replace C1SK8C2 = . if (C1SK8C2 >= 3 & C1SK8C2 <= 9)
replace C1SK8D1 = . if (C1SK8D1 == -1 | C1SK8D1 == 8 | C1SK8D1 == 9)
replace C1SK8D2 = . if (C1SK8D2 == -1)
replace C1SK8D2 = . if (C1SK8D2 >= 3 & C1SK8D2 <= 9)
replace C1SK9 = . if (C1SK9 == -1 | C1SK9 == 8 | C1SK9 == 9)
replace C1SK10 = . if (C1SK10 == -1 | C1SK10 == 98 | C1SK10 == 99)
replace C1SK11 = . if (C1SK11 == -1 | C1SK11 == 98 | C1SK11 == 99)
replace C1SK12 = . if (C1SK12 == -1 | C1SK12 == 8 | C1SK12 == 9)
replace C1SK13 = . if (C1SK13 == -1 | C1SK13 == 8 | C1SK13 == 9)
replace C1SL1 = . if (C1SL1 == -1 | C1SL1 == 8)
replace C1SL2 = . if (C1SL2 == -1 | C1SL2 == 98 | C1SL2 == 99)
replace C1SL3 = . if (C1SL3 == -1 | C1SL3 == 98 | C1SL3 == 99)
replace C1SL4 = . if (C1SL4 == -1 | C1SL4 == 98 | C1SL4 == 99)
replace C1SL5 = . if (C1SL5 == -1 | C1SL5 == 98 | C1SL5 == 99)
replace C1SL6 = . if (C1SL6 == -1 | C1SL6 == 98 | C1SL6 == 99)
replace C1SL7 = . if (C1SL7 == -1 | C1SL7 == 8 | C1SL7 == 9)
replace C1SL8 = . if (C1SL8 == -1 | C1SL8 == 8 | C1SL8 == 9)
replace C1SL9 = . if (C1SL9 == -1 | C1SL9 == 8 | C1SL9 == 9)
replace C1SMARRS = . if (C1SMARRS == -1 | C1SMARRS == 98 | C1SMARRS == 99)
replace C1SL10A = . if (C1SL10A == -1 | C1SL10A == 8 | C1SL10A == 9)
replace C1SL10B = . if (C1SL10B == -1 | C1SL10B == 8 | C1SL10B == 9)
replace C1SL10C = . if (C1SL10C == -1 | C1SL10C == 8 | C1SL10C == 9)
replace C1SSPDIS = . if (C1SSPDIS == -1.0 | C1SSPDIS == 98.0 | C1SSPDIS == 99.0)
replace C1SL11 = . if (C1SL11 == -1 | C1SL11 == 8 | C1SL11 == 9)
replace C1SL12A = . if (C1SL12A == -1 | C1SL12A == 8 | C1SL12A == 9)
replace C1SL12B = . if (C1SL12B == -1 | C1SL12B == 8 | C1SL12B == 9)
replace C1SL12C = . if (C1SL12C == -1 | C1SL12C == 8 | C1SL12C == 9)
replace C1SL12D = . if (C1SL12D == -1 | C1SL12D == 8 | C1SL12D == 9)
replace C1SL12E = . if (C1SL12E == -1 | C1SL12E == 8 | C1SL12E == 9)
replace C1SL12F = . if (C1SL12F == -1 | C1SL12F == 8 | C1SL12F == 9)
replace C1SL12G = . if (C1SL12G == -1 | C1SL12G == 8 | C1SL12G == 9)
replace C1SL12H = . if (C1SL12H == -1 | C1SL12H == 8 | C1SL12H == 9)
replace C1SL12I = . if (C1SL12I == -1 | C1SL12I == 8 | C1SL12I == 9)
replace C1SL12J = . if (C1SL12J == -1 | C1SL12J == 8 | C1SL12J == 9)
replace C1SL12K = . if (C1SL12K == -1 | C1SL12K == 8 | C1SL12K == 9)
replace C1SL12L = . if (C1SL12L == -1 | C1SL12L == 8 | C1SL12L == 9)
replace C1SSPEMP = . if (C1SSPEMP == -1.0 | C1SSPEMP == 8.0 | C1SSPEMP == 9.0)
replace C1SSPCRI = . if (C1SSPCRI == -1.0 | C1SSPCRI == 8.0 | C1SSPCRI == 9.0)
replace C1SSPSOL = . if (C1SSPSOL == -1.0 | C1SSPSOL == 8.0 | C1SSPSOL == 9.0)
replace C1SL13 = . if (C1SL13 == -1 | C1SL13 == 8 | C1SL13 == 9)
replace C1SL14 = . if (C1SL14 == -1 | C1SL14 == 998 | C1SL14 == 999)
replace C1SL15 = . if (C1SL15 == -1 | C1SL15 == 998 | C1SL15 == 999)
replace C1SL16 = . if (C1SL16 == -1 | C1SL16 == 8 | C1SL16 == 9)
replace C1SL17 = . if (C1SL17 == -1 | C1SL17 == 8 | C1SL17 == 9)
replace C1SL18A = . if (C1SL18A == -1 | C1SL18A == 8 | C1SL18A == 9)
replace C1SL18B = . if (C1SL18B == -1 | C1SL18B == 8 | C1SL18B == 9)
replace C1SL18C = . if (C1SL18C == -1 | C1SL18C == 8 | C1SL18C == 9)
replace C1SL18D = . if (C1SL18D == -1 | C1SL18D == 8 | C1SL18D == 9)
replace C1SSPDEC = . if (C1SSPDEC == -1.0 | C1SSPDEC == 98.0 | C1SSPDEC == 99.0)
replace C1SL19 = . if (C1SL19 == -1 | C1SL19 == 8 | C1SL19 == 9)
replace C1SL20 = . if (C1SL20 == -1 | C1SL20 == 8 | C1SL20 == 9)
replace C1SL21 = . if (C1SL21 == -1 | C1SL21 == 8 | C1SL21 == 9)
replace C1SL22 = . if (C1SL22 == -1 | C1SL22 == 998 | C1SL22 == 999)
replace C1SL23 = . if (C1SL23 == -1 | C1SL23 == 998 | C1SL23 == 999)
replace C1SL24A = . if (C1SL24A == -1 | C1SL24A == 8 | C1SL24A == 9)
replace C1SL24B = . if (C1SL24B == -1 | C1SL24B == 8 | C1SL24B == 9)
replace C1SL24C = . if (C1SL24C == -1 | C1SL24C == 8 | C1SL24C == 9)
replace C1SL24D = . if (C1SL24D == -1 | C1SL24D == 8 | C1SL24D == 9)
replace C1SL25A = . if (C1SL25A == -1 | C1SL25A == 98 | C1SL25A == 99)
replace C1SL25B = . if (C1SL25B == -1 | C1SL25B == 98 | C1SL25B == 99)
replace C1SL25C = . if (C1SL25C == -1 | C1SL25C == 8 | C1SL25C == 9)
replace C1SL26A = . if (C1SL26A == -1 | C1SL26A == 98 | C1SL26A == 99)
replace C1SL26B = . if (C1SL26B == -1 | C1SL26B == 98 | C1SL26B == 99)
replace C1SL26C = . if (C1SL26C == -1 | C1SL26C == 8 | C1SL26C == 9)
replace C1SL27A = . if (C1SL27A == -1 | C1SL27A == 98 | C1SL27A == 99)
replace C1SL27B = . if (C1SL27B == -1 | C1SL27B == 98 | C1SL27B == 99)
replace C1SL28 = . if (C1SL28 == -1 | C1SL28 == 8 | C1SL28 == 9)
replace C1SM1 = . if (C1SM1 == -1 | C1SM1 == 98)
replace C1SM2 = . if (C1SM2 == -1 | C1SM2 == 98)
replace C1SM3 = . if (C1SM3 == -1 | C1SM3 == 98)
replace C1SM4 = . if (C1SM4 == -1 | C1SM4 == 98)
replace C1SM5 = . if (C1SM5 == -1 | C1SM5 == 98)
replace C1SM6 = . if (C1SM6 == -1 | C1SM6 == 8)
replace C1SM7 = . if (C1SM7 == -1 | C1SM7 == 8)
replace C1SM8 = . if (C1SM8 == -1 | C1SM8 == 8 | C1SM8 == 9)
replace C1SM9 = . if (C1SM9 == -1 | C1SM9 == 8 | C1SM9 == 9)
replace C1SM10 = . if (C1SM10 == -1 | C1SM10 == 8 | C1SM10 == 9)
replace C1SM11 = . if (C1SM11 == -1 | C1SM11 == 8 | C1SM11 == 9)
replace C1SM12 = . if (C1SM12 == -1 | C1SM12 == 8 | C1SM12 == 9)
replace C1SM13 = . if (C1SM13 == -1 | C1SM13 == 8 | C1SM13 == 9)
replace C1SN1A = . if (C1SN1A == -1 | C1SN1A == 98)
replace C1SN1B = . if (C1SN1B == -1 | C1SN1B == 98 | C1SN1B == 99)
replace C1SN1C = . if (C1SN1C == -1 | C1SN1C == 98 | C1SN1C == 99)
replace C1SN2A = . if (C1SN2A == -1 | C1SN2A == 8)
replace C1SN2B = . if (C1SN2B == -1 | C1SN2B == 8)
replace C1SN2C = . if (C1SN2C == -1 | C1SN2C == 8)
replace C1SN2D = . if (C1SN2D == -1 | C1SN2D == 8)
replace C1SN2E = . if (C1SN2E == -1 | C1SN2E == 8)
replace C1SN2F = . if (C1SN2F == -1 | C1SN2F == 8)
replace C1SN2G = . if (C1SN2G == -1 | C1SN2G == 8)
replace C1SN2H = . if (C1SN2H == -1 | C1SN2H == 8)
replace C1SN2I = . if (C1SN2I == -1 | C1SN2I == 8)
replace C1SSPIRI = . if (C1SSPIRI == -1 | C1SSPIRI == 98)
replace C1SRELID = . if (C1SRELID == -1.0 | C1SRELID == 98.0)
replace C1SN3A = . if (C1SN3A == -1 | C1SN3A == 8)
replace C1SN3B = . if (C1SN3B == -1 | C1SN3B == 8)
replace C1SN3C = . if (C1SN3C == -1 | C1SN3C == 8)
replace C1SN3D = . if (C1SN3D == -1 | C1SN3D == 8)
replace C1SN3E = . if (C1SN3E == -1 | C1SN3E == 8)
replace C1SRELPR = . if (C1SRELPR == -1.0 | C1SRELPR == 98.0)
replace C1SN4 = . if (C1SN4 == -1 | C1SN4 == 8)
replace C1SN5 = . if (C1SN5 == -1 | C1SN5 == 8)
replace C1SN6 = . if (C1SN6 == -1 | C1SN6 == 8 | C1SN6 == 9)
replace C1SN7 = . if (C1SN7 == -1 | C1SN7 == 8 | C1SN7 == 9)
replace C1SN8 = . if (C1SN8 == -1 | C1SN8 == 8)
replace C1SN9A = . if (C1SN9A == -1 | C1SN9A == 8 | C1SN9A == 9)
replace C1SN9B = . if (C1SN9B == -1 | C1SN9B == 8 | C1SN9B == 9)
replace C1SN9C = . if (C1SN9C == -1 | C1SN9C == 8 | C1SN9C == 9)
replace C1SN9D = . if (C1SN9D == -1 | C1SN9D == 8 | C1SN9D == 9)
replace C1SRELSU = . if (C1SRELSU == -1.0 | C1SRELSU == 98.0 | C1SRELSU == 99.0)
replace C1SN10A = . if (C1SN10A == -1 | C1SN10A == 8)
replace C1SN10B = . if (C1SN10B == -1 | C1SN10B == 8)
replace C1SN10C = . if (C1SN10C == -1 | C1SN10C == 8)
replace C1SN10D = . if (C1SN10D == -1 | C1SN10D == 8)
replace C1SN10E = . if (C1SN10E == -1 | C1SN10E == 8)
replace C1SN10F = . if (C1SN10F == -1 | C1SN10F == 8)
replace C1SN10G = . if (C1SN10G == -1 | C1SN10G == 8)
replace C1SN10H = . if (C1SN10H == -1 | C1SN10H == 8)
replace C1SRELCA = . if (C1SRELCA == -1 | C1SRELCA == 98)
replace C1SRELCB = . if (C1SRELCB == -1.0 | C1SRELCB == 98.0)
replace C1SN11A = . if (C1SN11A == -1 | C1SN11A == 8)
replace C1SN11B = . if (C1SN11B == -1 | C1SN11B == 8)
replace C1SN11C = . if (C1SN11C == -1 | C1SN11C == 8)
replace C1SN11D = . if (C1SN11D == -1 | C1SN11D == 8)
replace C1SN11E = . if (C1SN11E == -1 | C1SN11E == 8)
replace C1SSPRTE = . if (C1SSPRTE == -1.00 | C1SSPRTE == 98.00)
replace C1SN12A = . if (C1SN12A == -1 | C1SN12A == 8)
replace C1SN12B = . if (C1SN12B == -1 | C1SN12B == 8)
replace C1SN12C = . if (C1SN12C == -1 | C1SN12C == 8)
replace C1SN12D = . if (C1SN12D == -1 | C1SN12D == 8)
replace C1SN12E = . if (C1SN12E == -1 | C1SN12E == 8)
replace C1SN12F = . if (C1SN12F == -1 | C1SN12F == 8)
replace C1SN12G = . if (C1SN12G == -1 | C1SN12G == 8)
replace C1SN12H = . if (C1SN12H == -1 | C1SN12H == 8)
replace C1SN12I = . if (C1SN12I == -1 | C1SN12I == 8)
replace C1SMNDFU = . if (C1SMNDFU == -1.0 | C1SMNDFU == 98.0)
replace C1SP1A = . if (C1SP1A == -1 | C1SP1A == 9998)
replace C1SP1B = . if (C1SP1B == -1 | C1SP1B == 9998)
replace C1SP1C = . if (C1SP1C == -1 | C1SP1C == 9998)
replace C1SP1D = . if (C1SP1D == -1 | C1SP1D == 9998)
replace C1SP1E = . if (C1SP1E == -1 | C1SP1E == 9998)
replace C1SP1F = . if (C1SP1F == -1 | C1SP1F == 9998)
replace C1SP1G = . if (C1SP1G == -1 | C1SP1G == 9998)
replace C1SP1H = . if (C1SP1H == -1 | C1SP1H == 9998)
replace C1SP1I = . if (C1SP1I == -1 | C1SP1I == 9998)
replace C1SP1J = . if (C1SP1J == -1 | C1SP1J == 9998)
replace C1SP1K = . if (C1SP1K == -1 | C1SP1K == 9998)
replace C1SLFEDI = . if (C1SLFEDI == -1 | C1SLFEDI == 98)
replace C1SP2A = . if (C1SP2A == -1 | C1SP2A == 8)
replace C1SP2B = . if (C1SP2B == -1 | C1SP2B == 8)
replace C1SP2C = . if (C1SP2C == -1 | C1SP2C == 8)
replace C1SP2D = . if (C1SP2D == -1 | C1SP2D == 8)
replace C1SP2E = . if (C1SP2E == -1 | C1SP2E == 8)
replace C1SP2F = . if (C1SP2F == -1 | C1SP2F == 8)
replace C1SP2G = . if (C1SP2G == -1 | C1SP2G == 8)
replace C1SP2H = . if (C1SP2H == -1 | C1SP2H == 8)
replace C1SP2I = . if (C1SP2I == -1 | C1SP2I == 8)
replace C1SDAYDI = . if (C1SDAYDI == -1.0 | C1SDAYDI == 98.0)
replace C1SP3 = . if (C1SP3 == -1 | C1SP3 == 8)
replace C1SP4A = . if (C1SP4A == -1 | C1SP4A == 8 | C1SP4A == 9)
replace C1SP4B = . if (C1SP4B == -1 | C1SP4B == 8 | C1SP4B == 9)
replace C1SP4C = . if (C1SP4C == -1 | C1SP4C == 8 | C1SP4C == 9)
replace C1SP4D = . if (C1SP4D == -1 | C1SP4D == 8 | C1SP4D == 9)
replace C1SP4E = . if (C1SP4E == -1 | C1SP4E == 8 | C1SP4E == 9)
replace C1SP4F = . if (C1SP4F == -1 | C1SP4F == 8 | C1SP4F == 9)
replace C1SP4G = . if (C1SP4G == -1 | C1SP4G == 8 | C1SP4G == 9)
replace C1SP4H = . if (C1SP4H == -1 | C1SP4H == 8 | C1SP4H == 9)
replace C1SP4I = . if (C1SP4I == -1 | C1SP4I == 8 | C1SP4I == 9)
replace C1SP4J = . if (C1SP4J == -1 | C1SP4J == 8 | C1SP4J == 9)
replace C1SP4K = . if (C1SP4K == -1 | C1SP4K == 8 | C1SP4K == 9)
replace C1SP4L = . if (C1SP4L == -1 | C1SP4L == 8 | C1SP4L == 9)
replace C1SP4M = . if (C1SP4M == -1 | C1SP4M == 8 | C1SP4M == 9)
replace C1SP5 = . if (C1SP5 == -1 | C1SP5 == 8 | C1SP5 == 9)
replace C1SP6 = . if (C1SP6 == -1 | C1SP6 == 8 | C1SP6 == 9)
replace C1SQ1 = . if (C1SQ1 == -1 | C1SQ1 == 98)
replace C1SQ2 = . if (C1SQ2 == -1 | C1SQ2 == 98)
replace C1SQ3 = . if (C1SQ3 == -1 | C1SQ3 == 98)
replace C1SQ4 = . if (C1SQ4 == -1 | C1SQ4 == 98)
replace C1SQ5 = . if (C1SQ5 == -1 | C1SQ5 == 98)
replace C1SQ6 = . if (C1SQ6 == -1 | C1SQ6 == 98)


*/
/********************************************************************

 Section 6: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace

