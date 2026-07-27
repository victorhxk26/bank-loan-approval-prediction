/* jenner-check autoexec for t004_sql_impute */
/* cap input rows for the captured run */
options obs=100;

/* The author's PROC SQL imputation runs against LIB78400.TRAINING_DS, a
   SAS-Studio library dataset not shipped in the repo. This autoexec aliases
   LIB78400 to WORK and rebuilds TRAINING_DS with the same 13-column shape and
   realistic values sampled from TRAINING_DS.csv, deliberately including a few
   blank GENDER values so the author's mode-imputation logic has something to
   impute. The PROC SQL steps in script.sas are the author's, unchanged. */
libname LIB78400 (WORK);

data LIB78400.TRAINING_DS;
  length SME_LOAN_ID_NO $8 GENDER $6 MARITAL_STATUS $11 FAMILY_MEMBERS $2
         QUALIFICATION $14 EMPLOYMENT $3 LOAN_LOCATION $7 LOAN_APPROVAL_STATUS $1;
  infile datalines dsd truncover;
  input SME_LOAN_ID_NO $ GENDER $ MARITAL_STATUS $ FAMILY_MEMBERS $ QUALIFICATION $
        EMPLOYMENT $ CANDIDATE_INCOME GUARANTEE_INCOME LOAN_AMOUNT LOAN_DURATION
        LOAN_HISTORY LOAN_LOCATION $ LOAN_APPROVAL_STATUS $;
  datalines;
LP001002,Male,Not Married,0,Graduate,No,5849,0,,360,1,City,Y
LP001003,Male,Married,1,Graduate,No,4583,1508,128,360,1,Village,N
LP001005,Male,Married,0,Graduate,Yes,3000,0,66,360,1,City,Y
LP001006,Male,Married,0,Under Graduate,No,2583,2358,120,360,1,City,Y
LP001008,Male,Not Married,0,Graduate,No,6000,0,141,360,1,City,Y
LP001011,Male,Married,2,Graduate,Yes,5417,4196,267,360,1,City,Y
LP001013,Male,Married,0,Under Graduate,No,2333,1516,95,360,1,City,Y
LP001018,Male,Married,2,Graduate,No,4006,1526,168,360,1,City,Y
LP001024,Male,Married,2,Graduate,No,3200,700,70,360,1,City,Y
LP001027,Female,Married,2,Graduate,No,2500,1840,109,360,1,Town,Y
LP001028,Male,Married,2,Graduate,No,3073,8106,200,360,1,City,Y
LP001032,Male,Not Married,0,Graduate,No,4950,0,125,360,1,City,Y
LP001036,Female,Not Married,0,Graduate,No,3510,0,76,360,0,City,N
LP001043,Male,Married,0,Under Graduate,No,7660,0,104,360,0,City,N
LP001046,Male,Married,1,Graduate,No,5955,5625,315,360,1,City,Y
LP001050,,Married,2,Graduate,No,3365,1917,112,360,0,Village,N
LP001066,Female,Not Married,0,Graduate,Yes,9560,0,191,360,1,City,Y
LP001068,Male,Married,0,Graduate,No,2799,2253,122,360,1,Town,Y
LP001073,,Not Married,0,Under Graduate,No,4226,1040,110,360,1,Town,Y
LP001086,Male,Not Married,0,Under Graduate,No,1442,0,35,360,1,Village,N
;
run;
