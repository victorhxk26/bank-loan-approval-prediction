/* Model development and scoring, taken verbatim from SOURCE-CODE-MAR-2024.sas
   (Mr. Victor Hew Xin Kai). PROC LOGISTIC fits LOAN_APPROVAL_STATUS on the full
   set of applicant attributes (CLASS + MODEL) and persists the fitted model with
   OUTMODEL; a second PROC LOGISTIC then reloads that model with INMODEL and
   SCOREs the held-out LIB78400.TESTING_DS. */

/* Model Development - Logistic Regression */

PROC LOGISTIC DATA = LIB78400.TRAINING_DS OUTMODEL = LIB78400.TRAINING_DS_LR_MODEL;
CLASS
	GENDER
	MARITAL_STATUS
	FAMILY_MEMBERS
	QUALIFICATION
	EMPLOYMENT
	LOAN_HISTORY
	LOAN_LOCATION
	;

MODEL LOAN_APPROVAL_STATUS =
	GENDER
	MARITAL_STATUS
	FAMILY_MEMBERS
	QUALIFICATION
	EMPLOYMENT
	CANDIDATE_INCOME
	GUARANTEE_INCOME
	LOAN_AMOUNT
	LOAN_DURATION
	LOAN_HISTORY
	LOAN_LOCATION
	;

OUTPUT OUT = LIB78400.TRAINING_OUT_DS P = PPRED_PROB;
RUN;

/*******************************************************
Predict the loan approval status using the model created
********************************************************/

PROC LOGISTIC INMODEL = LIB78400.TRAINING_DS_LR_MODEL; /* Previously developed model */

SCORE DATA = LIB78400.TESTING_DS /* Test set */
OUT = LIB78400.TESTING_LAS_PRED_TP078400_DS; /* Location where the output is stored */

QUIT;

TITLE 'List the status of the LOAN_APPROVAL_STATUS predicted';
FOOTNOTE '----------End----------';

/* Generate and demonstrate the information of the loan approval status prediction */

PROC SQL;

SELECT *
FROM LIB78400.TESTING_LAS_PRED_TP078400_DS;

QUIT;
