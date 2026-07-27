/* jenner-check autoexec for t003_bva_macros */
/* cap input rows for the captured run */
options obs=100;

/* The author's BVA macros are called against LIB78400.TESTING_DS. That library
   dataset is not shipped in the repo, so this autoexec aliases LIB78400 to WORK
   and rebuilds TESTING_DS with the same 13-column shape and realistic values
   sampled from the repo's TESTING_DS.csv. The macro definitions and callers in
   script.sas are the author's, unchanged. */
libname LIB78400 (WORK);

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
LP001056 Male Married 2 Graduate No 3881 0 147 360 0 Village N
LP001059 Male Married 2 Graduate No 13633 0 280 240 1 City Y
LP001067 Male Not_Married 0 Under_Graduate No 2400 2400 123 360 1 Town Y
LP001078 Male Not_Married 0 Under_Graduate No 3091 0 90 360 1 City Y
LP001082 Male Married 1 Graduate No 2185 1516 162 360 1 Town Y
LP001083 Male Not_Married 3 Graduate No 4166 0 116 360 . City N
LP001094 Male Married 2 Graduate No 12173 0 166 360 0 Village N
LP001096 Female Not_Married 0 Graduate No 4666 0 124 360 1 City Y
LP001099 Male Not_Married 1 Graduate No 5667 0 131 360 1 City Y
LP001105 Male Married 2 Graduate No 4583 2916 200 360 1 City Y
LP001107 Male Married 3 Under_Graduate No 3786 333 . 360 1 City Y
LP001108 Male Married 0 Graduate No 9226 7916 300 360 1 City Y
LP001115 Male Not_Married 0 Graduate No 1300 3470 100 180 1 City N
;
run;
