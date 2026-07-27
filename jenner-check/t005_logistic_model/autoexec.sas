/* jenner-check autoexec for t005_logistic_model */
/* cap input rows for the captured run */
options obs=100;

/* The author's PROC LOGISTIC develops a model on LIB78400.TRAINING_DS and
   scores LIB78400.TESTING_DS. Neither library dataset ships in the repo, so this
   autoexec aliases LIB78400 to WORK and rebuilds both with the same 13-column
   shape and realistic values sampled from TRAINING_DS.csv / TESTING_DS.csv. The
   PROC LOGISTIC steps in script.sas are the author's, unchanged. */
libname LIB78400 (WORK);

data LIB78400.TRAINING_DS;
  length SME_LOAN_ID_NO $8 GENDER $6 MARITAL_STATUS $11 FAMILY_MEMBERS $2
         QUALIFICATION $14 EMPLOYMENT $3 LOAN_LOCATION $7 LOAN_APPROVAL_STATUS $1;
  input SME_LOAN_ID_NO $ GENDER $ MARITAL_STATUS $ FAMILY_MEMBERS $ QUALIFICATION $
        EMPLOYMENT $ CANDIDATE_INCOME GUARANTEE_INCOME LOAN_AMOUNT LOAN_DURATION
        LOAN_HISTORY LOAN_LOCATION $ LOAN_APPROVAL_STATUS $;
  datalines;
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
LP001032 Male Not_Married 0 Graduate No 4950 0 125 360 1 City Y
LP001036 Female Not_Married 0 Graduate No 3510 0 76 360 0 City N
LP001038 Male Married 0 Under_Graduate No 4887 0 133 360 1 Village N
LP001043 Male Married 0 Under_Graduate No 7660 0 104 360 0 City N
LP001046 Male Married 1 Graduate No 5955 5625 315 360 1 City Y
LP001047 Male Married 0 Under_Graduate No 2600 1911 116 360 0 Village N
LP001066 Female Not_Married 0 Graduate Yes 9560 0 191 360 1 City Y
;
run;

data LIB78400.TESTING_DS;
  length SME_LOAN_ID_NO $8 GENDER $6 MARITAL_STATUS $11 FAMILY_MEMBERS $2
         QUALIFICATION $14 EMPLOYMENT $3 LOAN_LOCATION $7 LOAN_APPROVAL_STATUS $1;
  input SME_LOAN_ID_NO $ GENDER $ MARITAL_STATUS $ FAMILY_MEMBERS $ QUALIFICATION $
        EMPLOYMENT $ CANDIDATE_INCOME GUARANTEE_INCOME LOAN_AMOUNT LOAN_DURATION
        LOAN_HISTORY LOAN_LOCATION $ LOAN_APPROVAL_STATUS $;
  datalines;
LP001015 Male Married 0 Graduate No 5720 0 110 360 1 City Y
LP001022 Male Married 1 Graduate No 3076 1500 126 360 1 City Y
LP001031 Male Married 2 Graduate No 5000 1800 208 360 1 City N
LP001035 Male Married 2 Graduate No 2340 2546 100 360 1 City Y
LP001051 Male Not_Married 0 Graduate No 3276 0 78 360 1 City Y
LP001054 Female Married 0 Under_Graduate Yes 2165 3422 152 360 1 City Y
LP001055 Female Not_Married 1 Under_Graduate No 2226 0 59 360 1 Village N
LP001059 Male Married 2 Graduate No 13633 0 280 240 1 City Y
LP001067 Male Not_Married 0 Under_Graduate No 2400 2400 123 360 1 Town Y
LP001108 Male Married 0 Graduate No 9226 7916 300 360 1 City Y
;
run;
