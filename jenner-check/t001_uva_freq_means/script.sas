/* Univariate analysis from SOURCE-CODE-MAR-2024.sas (Mr. Victor Hew Xin Kai):
   PROC FREQ on the categorical variables and PROC MEANS on the continuous
   variables. This bundle is self-contained: the author reads LIB78400.TRAINING_DS
   (a SAS-Studio library dataset not shipped in the repo), so a small WORK dataset
   with the same 13-column shape and realistic values sampled from TRAINING_DS.csv
   is built inline here, and LIB78400 is aliased to WORK so the FREQ/MEANS text
   below is exactly the author's. */

libname LIB78400 (WORK);

data LIB78400.TRAINING_DS;
  length SME_LOAN_ID_NO $8 GENDER $6 MARITAL_STATUS $11 FAMILY_MEMBERS $2
         QUALIFICATION $14 EMPLOYMENT $3 LOAN_LOCATION $7 LOAN_APPROVAL_STATUS $1;
  input SME_LOAN_ID_NO $ GENDER $ MARITAL_STATUS $ FAMILY_MEMBERS $ QUALIFICATION $
        EMPLOYMENT $ CANDIDATE_INCOME GUARANTEE_INCOME LOAN_AMOUNT LOAN_DURATION
        LOAN_HISTORY LOAN_LOCATION $ LOAN_APPROVAL_STATUS $;
  datalines;
LP001002 Male Not_Married 0 Graduate No 5849 0 . 360 1 City Y
LP001003 Male Married 1 Graduate No 4583 1508 128 360 1 Village N
LP001005 Male Married 0 Graduate Yes 3000 0 66 360 1 City Y
LP001006 Male Married 0 Under_Graduate No 2583 2358 120 360 1 City Y
LP001008 Male Not_Married 0 Graduate No 6000 0 141 360 1 City Y
LP001011 Male Married 2 Graduate Yes 5417 4196 267 360 1 City Y
LP001013 Male Married 0 Under_Graduate No 2333 1516 95 360 1 City Y
LP001014 Male Married 3 Graduate No 3036 2504 158 360 0 Town N
LP001018 Male Married 2 Graduate No 4006 1526 168 360 1 City Y
LP001020 Male Married 1 Graduate No 12841 10968 349 360 1 Town N
LP001024 Male Married 2 Graduate No 3200 700 70 360 1 City Y
LP001027 Female Married 2 Graduate No 2500 1840 109 360 1 Town Y
LP001028 Male Married 2 Graduate No 3073 8106 200 360 1 City Y
LP001029 Male Not_Married 0 Graduate No 1853 2840 114 360 1 Village N
LP001030 Male Married 2 Graduate No 1299 1086 17 120 1 City Y
LP001032 Male Not_Married 0 Graduate No 4950 0 125 360 1 City Y
LP001034 Male Not_Married 1 Under_Graduate No 3596 0 100 240 . Town Y
LP001036 Female Not_Married 0 Graduate No 3510 0 76 360 0 City N
LP001038 Male Married 0 Under_Graduate No 4887 0 133 360 1 Village N
LP001043 Male Married 0 Under_Graduate No 7660 0 104 360 0 City N
LP001046 Male Married 1 Graduate No 5955 5625 315 360 1 City Y
LP001047 Male Married 0 Under_Graduate No 2600 1911 116 360 0 Village N
LP001050 . Married 2 Graduate No 3365 1917 112 360 0 Village N
LP001066 Female Not_Married 0 Graduate Yes 9560 0 191 360 1 City Y
;
run;

/* Univariate Analysis - Categorical */
/* MARITAL_STATUS */

TITLE 'Univariate Analysis of the Categorical Variable: MARITAL_STATUS';

PROC FREQ DATA = LIB78400.TRAINING_DS;

TABLE MARITAL_STATUS;

RUN;

/* GENDER */

TITLE 'Univariate Analysis of the Categorical Variable: GENDER';

PROC FREQ DATA = LIB78400.TRAINING_DS;

TABLE GENDER;

RUN;

/* LOAN_APPROVAL_STATUS */

TITLE 'Univariate Analysis of the Categorical Variable: LOAN_APPROVAL_STATUS';

PROC FREQ DATA = LIB78400.TRAINING_DS;

TABLE LOAN_APPROVAL_STATUS;

RUN;

/* Univariate Analysis - Continuous */
/* LOAN_AMOUNT */

TITLE 'Univariate Analysis of the Continuous Variable: LOAN_AMOUNT';

PROC MEANS DATA = LIB78400.TRAINING_DS N NMISS MIN MAX MEAN MEDIAN STD;

VAR LOAN_AMOUNT;

RUN;

/* CANDIDATE_INCOME */

TITLE 'Univariate Analysis of the Continuous Variable: CANDIDATE_INCOME';

PROC MEANS DATA = LIB78400.TRAINING_DS N NMISS MIN MAX MEAN MEDIAN STD;

VAR CANDIDATE_INCOME;

RUN;
