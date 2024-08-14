/********************************************************
Developer name: Mr.Victor Hew Xin Kai
Job position: Data Scientist, APU SDN BHD
Program name: mydap_project_tp078400.sas
Description: Loan application status prediction 
Date first written: Fri,26-Apr-2024
Date last updated: Thurs,06-Jun-2024
Folder name:  DAP_FT_MAR_2024_TP078400
Library name:  LIB78400
********************************************************/
 
/*SAS Codes to display the data dictionary of LIB78400.TRAINING_DS - Method 1*/

PROC SQL;

DESCRIBE TABLE LIB78400.TRAINING_DS;

RUN;

/*SAS Codes to display the data dictionary of LIB78400.TRAINING_DS - Method 2*/

PROC CONTENTS DATA = LIB78400.TRAINING_DS;

RUN;


/* Univariate Analysis - Categorical */
/* MARITAL_STATUS */

TITLE 'Univariate Analysis of the Categorical Variable: MARITAL_STATUS';

PROC FREQ DATA = LIB78400.TRAINING_DS;

TABLE MARITAL_STATUS;

RUN;

ODS GRAPHICS / RESET WIDTH = 3.0 IN HEIGHT = 4.0 IN IMAGEMAP;

PROC SGPLOT DATA = LIB78400.TRAINING_DS;

VBAR MARITAL_STATUS;

TITLE 'Univariate Analysis of the Categorical Variable: MARITAL_STATUS';

RUN;

/* GENDER */

TITLE 'Univariate Analysis of the Categorical Variable: GENDER';

PROC FREQ DATA = LIB78400.TRAINING_DS;

TABLE GENDER;

RUN;

ODS GRAPHICS / RESET WIDTH = 3.0 IN HEIGHT = 4.0 IN IMAGEMAP;

PROC SGPLOT DATA = LIB78400.TRAINING_DS;

VBAR GENDER;

TITLE 'Univariate Analysis of the Categorical Variable: GENDER';

RUN;

/* FAMILY_MEMBERS */

TITLE 'Univariate Analysis of the Categorical Variable: FAMILY_MEMBERS';

PROC FREQ DATA = LIB78400.TRAINING_DS;

TABLE FAMILY_MEMBERS;

RUN;

ODS GRAPHICS / RESET WIDTH = 3.0 IN HEIGHT = 4.0 IN IMAGEMAP;

PROC SGPLOT DATA = LIB78400.TRAINING_DS;

VBAR FAMILY_MEMBERS;

TITLE 'Univariate Analysis of the Categorical Variable: FAMILY_MEMBERS';

RUN;

/* EMPLOYMENT */

TITLE 'Univariate Analysis of the Categorical Variable: EMPLOYMENT';

PROC FREQ DATA = LIB78400.TRAINING_DS;

TABLE EMPLOYMENT;

RUN;

ODS GRAPHICS / RESET WIDTH = 3.0 IN HEIGHT = 4.0 IN IMAGEMAP;

PROC SGPLOT DATA = LIB78400.TRAINING_DS;

VBAR EMPLOYMENT;

TITLE 'Univariate Analysis of the Categorical Variable: EMPLOYMENT';

RUN;

/* LOAN_APPROVAL_STATUS */

TITLE 'Univariate Analysis of the Categorical Variable: LOAN_APPROVAL_STATUS';

PROC FREQ DATA = LIB78400.TRAINING_DS;

TABLE LOAN_APPROVAL_STATUS;

RUN;

ODS GRAPHICS / RESET WIDTH = 3.0 IN HEIGHT = 4.0 IN IMAGEMAP;

PROC SGPLOT DATA = LIB78400.TRAINING_DS;

VBAR LOAN_APPROVAL_STATUS;

TITLE 'Univariate Analysis of the Categorical Variable: LOAN_APPROVAL_STATUS';

RUN;

/* LOAN_LOCATION */

TITLE 'Univariate Analysis of the Categorical Variable: LOAN_LOCATION';

PROC FREQ DATA = LIB78400.TRAINING_DS;

TABLE LOAN_LOCATION;

RUN;

ODS GRAPHICS / RESET WIDTH = 3.0 IN HEIGHT = 4.0 IN IMAGEMAP;

PROC SGPLOT DATA = LIB78400.TRAINING_DS;

VBAR LOAN_LOCATION;

TITLE 'Univariate Analysis of the Categorical Variable: LOAN_LOCATION';

RUN;

/* QUALIFICATION */

TITLE 'Univariate Analysis of the Categorical Variable: QUALIFICATION';

PROC FREQ DATA = LIB78400.TRAINING_DS;

TABLE QUALIFICATION;

RUN;

ODS GRAPHICS / RESET WIDTH = 3.0 IN HEIGHT = 4.0 IN IMAGEMAP;

PROC SGPLOT DATA = LIB78400.TRAINING_DS;

VBAR QUALIFICATION;

TITLE 'Univariate Analysis of the Categorical Variable: QUALIFICATION';

RUN;

/* LOAN_HISTORY */

TITLE 'Univariate Analysis of the Categorical Variable: LOAN_HISTORY';

PROC FREQ DATA = LIB78400.TRAINING_DS;

TABLE LOAN_HISTORY;

RUN;

ODS GRAPHICS / RESET WIDTH = 3.0 IN HEIGHT = 4.0 IN IMAGEMAP;

PROC SGPLOT DATA = LIB78400.TRAINING_DS;

VBAR LOAN_HISTORY;

TITLE 'Univariate Analysis of the Categorical Variable: LOAN_HISTORY';

RUN;


/* Univariate Analysis - Continuous */
/* LOAN_AMOUNT */

TITLE 'Univariate Analysis of the Continuous Variable: LOAN_AMOUNT';

PROC MEANS DATA = LIB78400.TRAINING_DS N NMISS MIN MAX MEAN MEDIAN STD;

VAR LOAN_AMOUNT;

RUN;

ODS GRAPHICS / RESET WIDTH = 4.0 IN HEIGHT = 3.0 IN IMAGEMAP;

PROC SGPLOT DATA = LIB78400.TRAINING_DS;

HISTOGRAM LOAN_AMOUNT;

TITLE 'Univariate Analysis of the Continuous Variable: LOAN_AMOUNT';

RUN;

/* LOAN_DURATION */

TITLE 'Univariate Analysis of the Continuous Variable: LOAN_DURATION';

PROC MEANS DATA = LIB78400.TRAINING_DS N NMISS MIN MAX MEAN MEDIAN STD;

VAR LOAN_DURATION;

RUN;

ODS GRAPHICS / RESET WIDTH = 4.0 IN HEIGHT = 3.0 IN IMAGEMAP;

PROC SGPLOT DATA = LIB78400.TRAINING_DS;

HISTOGRAM LOAN_DURATION;

TITLE 'Univariate Analysis of the Continuous Variable: LOAN_DURATION';

RUN;

/* CANDIDATE_INCOME */

TITLE 'Univariate Analysis of the Continuous Variable: CANDIDATE_INCOME';

PROC MEANS DATA = LIB78400.TRAINING_DS N NMISS MIN MAX MEAN MEDIAN STD;

VAR CANDIDATE_INCOME;

RUN;

ODS GRAPHICS / RESET WIDTH = 4.0 IN HEIGHT = 3.0 IN IMAGEMAP;

PROC SGPLOT DATA = LIB78400.TRAINING_DS;

HISTOGRAM CANDIDATE_INCOME;

TITLE 'Univariate Analysis of the Continuous Variable: CANDIDATE_INCOME';

RUN;

/* GUARANTEE_INCOME */

TITLE 'Univariate Analysis of the Continuous Variable: GUARANTEE_INCOME';

PROC MEANS DATA = LIB78400.TRAINING_DS N NMISS MIN MAX MEAN MEDIAN STD;

VAR GUARANTEE_INCOME;

RUN;

ODS GRAPHICS / RESET WIDTH = 4.0 IN HEIGHT = 3.0 IN IMAGEMAP;

PROC SGPLOT DATA = LIB78400.TRAINING_DS;

HISTOGRAM GUARANTEE_INCOME;

TITLE 'Univariate Analysis of the Continuous Variable: GUARANTEE_INCOME';

RUN;


/* Bivariate Analysis - Categorical VS Categorical */
/* GENDER VS EMPLOYMENT */

TITLE1 'Bivariate Analysis of the Variables';
TITLE2 'Categorical Variable - GENDER VS Categorical Variable - EMPLOYMENT';

PROC FREQ DATA = LIB78400.TRAINING_DS;

TABLE GENDER * EMPLOYMENT / 
PLOTS = FREQPLOT (TWOWAY = STACKED SCALE = GROUPPCT);
RUN;

/* QUALIFICATION VS LOAN_HISTORY */

TITLE1 'Bivariate Analysis of the Variables';
TITLE2 'Categorical Variable - QUALIFICATION VS Categorical Variable - LOAN_HISTORY';

PROC FREQ DATA = LIB78400.TRAINING_DS;

TABLE QUALIFICATION * LOAN_HISTORY / 
PLOTS = FREQPLOT (TWOWAY = STACKED SCALE = GROUPPCT);
RUN;

/* LOAN_HISTORY VS LOAN_APPROVAL_STATUS */

TITLE1 'Bivariate Analysis of the Variables';
TITLE2 'Categorical Variable - LOAN_HISTORY VS Categorical Variable - LOAN_APPROVAL_STATUS';

PROC FREQ DATA = LIB78400.TRAINING_DS;

TABLE LOAN_HISTORY * LOAN_APPROVAL_STATUS / 
PLOTS = FREQPLOT (TWOWAY = STACKED SCALE = GROUPPCT);
RUN;

/* Bivariate Analysis - Categorical VS Continuous */
/* GENDER VS LOAN_AMOUNT */

TITLE1 'Bivariate analysis of the variables: ';
TITLE2 'Categorical variable[GENDER] vs Numeric/Continuous variable[LOAN_AMOUNT]';

PROC MEANS DATA = LIB78400.TRAINING_DS;

CLASS gender; /* It is a categorial variable */
VAR loan_amount; /* it is a Numeric/Continuous variable */

RUN;

/* QUALIFICATION VS CANDIDATE_INCOME */

TITLE1 'Bivariate analysis of the variables: ';
TITLE2 'Categorical variable[QUALIFICATION] vs Numeric/Continuous variable[CANDIDATE_INCOME]';

PROC MEANS DATA = LIB78400.TRAINING_DS;

CLASS qualification; /* It is a categorial variable */
VAR candidate_income; /* it is a Numeric/Continuous variable */

RUN;

/* LOAN_HISTORY VS LOAN_DURATION */

TITLE1 'Bivariate analysis of the variables: ';
TITLE2 'Categorical variable[LOAN_HISTORY] vs Numeric/Continuous variable[LOAN_DURATION]';

PROC MEANS DATA = LIB78400.TRAINING_DS;

CLASS loan_history; /* It is a categorial variable */
VAR loan_duration; /* it is a Numeric/Continuous variable */

RUN;

/* Categorical variables */
/* Macro begins here */
OPTIONS MCOMPILENOTE = ALL;

%MACRO UVA_CATE_VARI(ptitle, pdataset, pcate_vari);

TITLE &ptitle;

PROC FREQ DATA = &pdataset;

TABLE &pcate_vari;

RUN;

%MEND UVA_CATE_VARI;
/* Macro ends here */

/* Call the SAS Macro - UVA_CATE_VARI */
%UVA_CATE_VARI('Univariate Analysis of the Categorical variable - MARITAL_STATUS', LIB78400.TESTING_DS, MARITAL_STATUS);
%UVA_CATE_VARI('Univariate Analysis of the Categorical variable - GENDER', LIB78400.TESTING_DS, GENDER);
%UVA_CATE_VARI('Univariate Analysis of the Categorical variable - LOAN_HISTORY', LIB78400.TESTING_DS, LOAN_HISTORY);
%UVA_CATE_VARI('Univariate Analysis of the Categorical variable - FAMILY_MEMBERS', LIB78400.TESTING_DS, FAMILY_MEMBERS);
%UVA_CATE_VARI('Univariate Analysis of the Categorical variable - QUALIFICATION', LIB78400.TESTING_DS, QUALIFICATION);
%UVA_CATE_VARI('Univariate Analysis of the Categorical variable - EMPLOYMENT', LIB78400.TESTING_DS, EMPLOYMENT);
%UVA_CATE_VARI('Univariate Analysis of the Categorical variable - LOAN_LOCATION', LIB78400.TESTING_DS, LOAN_LOCATION);

/* Continuous variables */
/* Macro begins here */
OPTIONS MCOMPILENOTE = ALL;

%MACRO UVA_CONTI_VARI(ptitle, pdataset, pconti_vari);

TITLE &ptitle;

PROC MEANS DATA = &pdataset N NMISS MIN MAX MEAN MEDIAN STD;

VAR &pconti_vari;

RUN;

%MEND UVA_CONTI_VARI;
/* MACRO ends here */

/* Call the SAS MACRO - UVA_CONTI_VARI */
%UVA_CONTI_VARI('UVA of the continuous variable - CANDIDATE_INCOME', LIB78400.TESTING_DS, candidate_income);
%UVA_CONTI_VARI('UVA of the continuous variable - GUARANTEE_INCOME', LIB78400.TESTING_DS, guarantee_income);
%UVA_CONTI_VARI('UVA of the continuous variable - LOAN_AMOUNT', LIB78400.TESTING_DS, loan_amount);
%UVA_CONTI_VARI('UVA of the continuous variable - LOAN_DURATION', LIB78400.TESTING_DS, loan_duration);

/* Birvariate Analysis - Categorical VS Categorical */
/* Macro begins here */
OPTIONS MCOMPILENOTE = ALL;

%MACRO BVA_CATE_CATE(ptitle1, ptitle2, pdataset, pcate_vari1, pcate_vari2);

TITLE1 &ptitle1;
TITLE2 &ptitle2;

PROC FREQ DATA = &pdataset;

TABLE &pcate_vari1 * &pcate_vari2/
PLOTS = FREQPLOT( TWOWAY = STACKED SCALE = GROUPPCT );

RUN;
%MEND BVA_CATE_CATE;
/* MACRO ends here */

/* Call the SAS MACRO - BVA_CATE_CATE */
%BVA_CATE_CATE('Bivariate Analysis of the Variables: ',
'MARITAL_STATUS VS EMPLOYMENT',
LIB78400.TESTING_DS,
MARITAL_STATUS, EMPLOYMENT);

%BVA_CATE_CATE('Bivariate Analysis of the Variables: ',
'GENDER VS EMPLOYMENT',
LIB78400.TESTING_DS,
GENDER, EMPLOYMENT);

%BVA_CATE_CATE('Bivariate Analysis of the Variables: ',
'QUALIFICATION VS EMPLOYMENT',
LIB78400.TESTING_DS,
QUALIFICATION, EMPLOYMENT);


/* Categorical VS Continuous */
/* Macro begins here */
OPTIONS MCOMPILENOTE = ALL;
%MACRO BVA_CATE_CONTI(ptitle1, ptitle2, pdataset, pcate_vari, pconti_vari);
TITLE1 &ptitle1;
TITLE2 &ptitle2;

PROC MEANS DATA = &pdataset;

CLASS &pcate_vari;  /* It is a categorical variable */
VAR &pconti_vari; /* It is a numeric/continuous variable */

RUN;
%MEND BVA_CATE_CONTI;
/* Macro ends here */

/* Call the SAS MACRO - BVA_CATE_CONTI */
 
%BVA_CATE_CONTI('Bivariate Analysis of the Variables (Categorical VS Continuous -',
'MARITAL_STATUS VS LOAN_AMOUNT)',
LIB78400.TESTING_DS, MARITAL_STATUS, LOAN_AMOUNT);
 
%BVA_CATE_CONTI('Bivariate Analysis of the Variables (Categorical vs Continuous -',
'EMPLOYMENT VS CANDIDATE_INCOME)',
LIB78400.TESTING_DS, EMPLOYMENT, CANDIDATE_INCOME);
 
%BVA_CATE_CONTI('Bivariate Analysis of the Variables (Categorical vs Continuous -',
'FAMILY_MEMBERS VS LOAN_DURATION)',
LIB78400.TESTING_DS, FAMILY_MEMBERS, LOAN_DURATION);

/* TRAINING_DS */
/* Imputation - MARITAL_STATUS */
/* STEP 1: Find the details of loan applicants who submitted 
their loan application without marital status */
TITLE1 'Find the details of loan applicants who submitted';
TITLE2 'their loan application without marital status';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT * 
FROM LIB78400.TRAINING_DS e
WHERE ( e.MARITAL_STATUS eq '' OR e.marital_status IS MISSING );

QUIT;

/* STEP 2: Count the number of loan applicants who submitted 
their loan application without marital status */
TITLE1 'Count the number of loan applicants who submitted';
TITLE2 'their loan application without marital status';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT COUNT(*) Label = 'Number of Applicants'
FROM LIB78400.TRAINING_DS e
WHERE ( e.MARITAL_STATUS eq '' OR e.marital_status IS MISSING );

QUIT;

/* STEP 3: Find the statistics of married & non-married applicants */
TITLE1 'Find the statistics of married & non-married applicants';

PROC SQL;

SELECT e.MARITAL_STATUS AS MARITAL_STATUS,
	   COUNT(*) AS COUNTS
FROM LIB78400.TRAINING_DS e
WHERE ( e.MARITAL_STATUS ne '' OR e.MARITAL_STATUS IS NOT MISSING )
GROUP BY e.MARITAL_STATUS;

QUIT;

/* STEP 4: Save the statistics in a dataset */

PROC SQL;

CREATE TABLE LIB78400.TRAINING_STAT_DS AS
SELECT e.MARITAL_STATUS AS MARITAL_STATUS,
	   COUNT(*) AS COUNTS
FROM LIB78400.TRAINING_DS e
WHERE ( e.MARITAL_STATUS ne '' OR e.MARITAL_STATUS IS NOT MISSING )
GROUP BY e.MARITAL_STATUS;

QUIT;

/* STEP 4.1: Make a backup copy of the dataset */

PROC SQL;

CREATE TABLE LIB78400.TRAINING_BK_DS AS 
SELECT *
FROM LIB78400.TRAINING_DS;

QUIT;

/* STEP 5: Impute the missing values found in the categorical variable - MARITAL_STATUS */

PROC SQL;

UPDATE LIB78400.TRAINING_DS
SET MARITAL_STATUS = ( SELECT to.MARITAL_STATUS AS MARITAL_STATUS
					   FROM LIB78400.TRAINING_STAT_DS to
					   WHERE to.COUNTS eq ( SELECT MAX(ti.COUNTS) AS HIGHEST_COUNT 
				  	   						FROM LIB78400.TRAINING_STAT_DS ti ) )
				  							/* Above is a sub-program to find the highest count */
WHERE ( MARITAL_STATUS eq '' OR marital_status IS MISSING );

QUIT;

/* STEP 6: (AI) Find the details of loan applicants who submitted their loan application without marital status */
TITLE1 'STEP 6(AI) Find the details of loan applicants who submitted';
TITLE2 'their loan application without marital status';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT * 
FROM LIB78400.TRAINING_DS e
WHERE ( e.MARITAL_STATUS eq '' OR e.marital_status IS MISSING );

QUIT;

/* Imputation - GENDER */
/* STEP 1: Find the details of loan applicants who submitted 
their loan application without specifying their gender */
TITLE1 'Find the details of loan applicants who submitted';
TITLE2 'their loan application without specifying their gender';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT * 
FROM LIB78400.TRAINING_DS e
WHERE ( e.GENDER eq '' OR e.GENDER IS MISSING );

QUIT;

/* STEP 2: Count the number of loan applicants who submitted 
their loan application without specifying their gender */
TITLE1 'Count the number of loan applicants who submitted';
TITLE2 'their loan application without without specifying their gender';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT COUNT(*) Label = 'Number of Applicants'
FROM LIB78400.TRAINING_DS e
WHERE ( e.GENDER eq '' OR e.GENDER IS MISSING );

QUIT;

/* STEP 3: Find the statistics of male and female applicants */
TITLE1 'Find the statistics of male & female applicants';

PROC SQL;

SELECT e.GENDER AS GENDER,
	   COUNT(*) AS COUNTS
FROM LIB78400.TRAINING_DS e
WHERE ( e.GENDER ne '' OR e.GENDER IS NOT MISSING )
GROUP BY e.GENDER;

QUIT;

/* STEP 4: Save the statistics in a dataset */

PROC SQL;

CREATE TABLE LIB78400.TRAINING_GENDER_STAT_DS AS
SELECT e.GENDER AS GENDER,
	   COUNT(*) AS COUNTS
FROM LIB78400.TRAINING_DS e
WHERE ( e.GENDER ne '' OR e.GENDER IS NOT MISSING )
GROUP BY e.GENDER;

QUIT;

/* STEP 4.1: Make a backup copy of the dataset */

PROC SQL;

CREATE TABLE LIB78400.TRAINING_BK_DS AS 
SELECT *
FROM LIB78400.TRAINING_DS;

QUIT;

/* STEP 5: Impute the missing values found in the categorical variable - GENDER */

PROC SQL;

UPDATE LIB78400.TRAINING_DS
SET GENDER = ( SELECT to.GENDER AS GENDER
			   FROM LIB78400.TRAINING_GENDER_STAT_DS to
			   WHERE to.COUNTS eq ( SELECT MAX(ti.COUNTS) AS HIGHEST_COUNT 
				  	   				FROM LIB78400.TRAINING_GENDER_STAT_DS ti ) )
				  					/* Above is a sub-program to find the highest count */
WHERE ( GENDER eq '' OR GENDER IS MISSING );

QUIT;

/* STEP 6: (AI) Find the details of loan applicants who submitted their loan application without marital status */
TITLE1 'STEP 6(AI) Find the details of loan applicants who submitted';
TITLE2 'their loan application without specifying their gender';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT * 
FROM LIB78400.TRAINING_DS e
WHERE ( e.GENDER eq '' OR e.GENDER IS MISSING );

QUIT;


/* Imputation - EMPLOYMENT */
/* STEP 1: Find the details of loan applicants who submitted their 
loan application without specifying their employment status */
TITLE1 'Find the details of loan applicants who submitted their';
TITLE2 'loan application without specifying their employment status';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT * 
FROM LIB78400.TRAINING_DS e
WHERE ( e.EMPLOYMENT eq '' OR e.EMPLOYMENT IS MISSING );

QUIT;

/* STEP 2: Count the number of loan applicants who submitted 
their loan application without specifying their employment status */
TITLE1 'Count the number of loan applicants who submitted their loan';
TITLE2 'application without specifying their employment status';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT COUNT(*) Label = 'Number of Applicants'
FROM LIB78400.TRAINING_DS e
WHERE ( e.EMPLOYMENT eq '' OR e.EMPLOYMENT IS MISSING );

QUIT;

/* STEP 3: Find the statistics of employed and unemployed applicants */
TITLE1 'Find the statistics of employed & unemployed applicants';

PROC SQL;

SELECT e.EMPLOYMENT AS EMPLOYMENT,
	   COUNT(*) AS COUNTS
FROM LIB78400.TRAINING_DS e
WHERE ( e.EMPLOYMENT ne '' OR e.EMPLOYMENT IS NOT MISSING )
GROUP BY e.EMPLOYMENT;

QUIT;

/* STEP 4: Save the statistics in a dataset */

PROC SQL;

CREATE TABLE LIB78400.TRAINING_EMPLOYMENT_STAT_DS AS
SELECT e.EMPLOYMENT AS EMPLOYMENT,
	   COUNT(*) AS COUNTS
FROM LIB78400.TRAINING_DS e
WHERE ( e.EMPLOYMENT ne '' OR e.EMPLOYMENT IS NOT MISSING )
GROUP BY e.EMPLOYMENT;

QUIT;

/* STEP 4.1: Make a backup copy of the dataset */

PROC SQL;

CREATE TABLE LIB78400.TRAINING_BK_DS AS 
SELECT *
FROM LIB78400.TRAINING_DS;

QUIT;

/* STEP 5: Impute the missing values found in the categorical variable - EMPLOYMENT */

PROC SQL;

UPDATE LIB78400.TRAINING_DS
SET EMPLOYMENT = ( SELECT to.EMPLOYMENT AS EMPLOYMENT
			   FROM LIB78400.TRAINING_EMPLOYMENT_STAT_DS to
			   WHERE to.COUNTS eq ( SELECT MAX(ti.COUNTS) AS HIGHEST_COUNT 
				  	   				FROM LIB78400.TRAINING_EMPLOYMENT_STAT_DS ti ) )
				  					/* Above is a sub-program to find the highest count */
WHERE ( EMPLOYMENT eq '' OR EMPLOYMENT IS MISSING );

QUIT;

/* STEP 6: (AI) Find the details of loan applicants who submitted their loan application without employment status */
TITLE1 'STEP 6(AI) Find the details of loan applicants who submitted';
TITLE2 'their loan application without specifying their employment status';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT * 
FROM LIB78400.TRAINING_DS e
WHERE ( e.EMPLOYMENT eq '' OR e.EMPLOYMENT IS MISSING );

QUIT;


/* Imputation - FAMILY_MEMBERS */
/* STEP 1: Find the details of loan applicants who submitted 
their loan application without specifying number of family members */
TITLE1 'Find the details of loan applicants who submitted';
TITLE2 'their loan application without specifying number of family members';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT * 
FROM LIB78400.TRAINING_DS e
WHERE ( e.FAMILY_MEMBERS eq '' OR e.FAMILY_MEMBERS IS NULL );

QUIT;

/* STEP 2: Count the number of loan applicants who submitted 
their loan application without specifying number of family members */
TITLE1 'Count the number of loan applicants who submitted';
TITLE2 'their loan application without specifying number of family members';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT COUNT(*) Label = 'Number of Applicants'
FROM LIB78400.TRAINING_DS e
WHERE ( e.FAMILY_MEMBERS eq '' OR e.FAMILY_MEMBERS IS MISSING );

QUIT;

/* STEP 3: Find the details of loan applicants with '3+'' family members */
PROC SQL;

SELECT e.FAMILY_MEMBERS Label = 'Family Members',
    SUBSTR(e.FAMILY_MEMBERS,1,1) Label = 'The data found in the 1ST position',
    SUBSTR(e.FAMILY_MEMBERS,2,1) Label = 'The data found in the 2ND position'
FROM LIB78400.TRAINING_DS e
WHERE ( e.FAMILY_MEMBERS ne '' OR e.FAMILY_MEMBERS IS NOT MISSING );

QUIT;

/* STEP 4: Make a backup copy of the dataset */

PROC SQL;

CREATE TABLE LIB78400.TRAINING_BK_DS AS 
SELECT *
FROM LIB78400.TRAINING_DS;

QUIT;

/* STEP 4: To restore the dataset if it's corrupted */

PROC SQL;

CREATE TABLE LIB78400.TRAINING_DS AS 
SELECT *
FROM LIB78400.TRAINING_BK_DS;

QUIT;

/* STEP 5: Remove '+' symbol found in FAMILY_MEMBERS */
PROC SQL;

UPDATE LIB78400.TRAINING_DS
SET FAMILY_MEMBERS = SUBSTR(FAMILY_MEMBERS,1,1)
WHERE SUBSTR(FAMILY_MEMBERS,2,1) eq '+';

QUIT;

/* STEP 6: Display the statistics in a dataset */

PROC SQL;

SELECT e.FAMILY_MEMBERS AS FAMILY_MEMBERS,
	   COUNT(*) AS COUNTS
FROM LIB78400.TRAINING_DS e
WHERE ( e.FAMILY_MEMBERS ne '' OR e.FAMILY_MEMBERS IS NOT MISSING )
GROUP BY e.FAMILY_MEMBERS;

QUIT;

/* STEP 7: Save the statistics in a dataset */

PROC SQL;

CREATE TABLE LIB78400.TRAINING_STAT_FM_DS AS
SELECT e.FAMILY_MEMBERS AS FAMILY_MEMBERS,
	   COUNT(*) AS COUNTS
FROM LIB78400.TRAINING_DS e
WHERE ( e.FAMILY_MEMBERS ne '' OR e.FAMILY_MEMBERS IS NOT MISSING )
GROUP BY e.FAMILY_MEMBERS;

QUIT;

/* STEP 8: Impute missing values in categorical variable - FAMILY_MEMBERS */

PROC SQL;

UPDATE LIB78400.TRAINING_DS
SET FAMILY_MEMBERS =  ( SELECT to.FAMILY_MEMBERS AS FAMILY_MEMBERS
                        FROM LIB78400.TRAINING_STAT_FM_DS to 
                        WHERE to.COUNTS eq ( SELECT MAX (ti.COUNTS) AS HIGHEST_COUNT
                                             FROM LIB78400.TRAINING_STAT_FM_DS ti ) )
                                             /* Above is a sub-program to find the highest count */
WHERE ( FAMILY_MEMBERS eq '' OR FAMILY_MEMBERS IS NULL );

QUIT;

/* STEP 9: (AI) Find the details of loan applicants who submitted 
their loan application without specifying number of family members */
TITLE1 'Find the details of loan applicants who submitted';
TITLE2 'their loan application without specifying number of family members';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT * 
FROM LIB78400.TRAINING_DS e
WHERE ( e.FAMILY_MEMBERS eq '' OR e.FAMILY_MEMBERS IS NULL );

QUIT;

/* STEP 10: (AI) Count the number of loan applicants who submitted 
their loan application without specifying number of family members */
TITLE1 'Count the number of loan applicants who submitted';
TITLE2 'their loan application without specifying number of family members';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT COUNT(*) Label = 'Number of Applicants'
FROM LIB78400.TRAINING_DS e
WHERE ( e.FAMILY_MEMBERS eq '' OR e.FAMILY_MEMBERS IS MISSING );

QUIT;


/* Imputation - LOAN_HISTORY */
/* STEP 1: Find the details of loan applicants who submitted their 
loan application without loan history */
TITLE1 'Find the details of loan applicants who submitted their';
TITLE2 'loan application without loan history';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT * 
FROM LIB78400.TRAINING_DS e
WHERE ( e.LOAN_HISTORY eq . OR e.LOAN_HISTORY IS MISSING );

QUIT;

/* STEP 2: Count the number of loan applicants who submitted 
their loan application without loan history */
TITLE1 'Count the number of loan applicants who submitted their loan';
TITLE2 'application without loan history';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT COUNT(*) Label = 'Number of Applicants'
FROM LIB78400.TRAINING_DS e
WHERE ( e.LOAN_HISTORY eq . OR e.LOAN_HISTORY IS MISSING );

QUIT;

/* STEP 3: Find the statistics of applicants with positive and negative past loan records */
TITLE1 'Find the statistics of applicants with positive and negative past loan records';

PROC SQL;

SELECT e.LOAN_HISTORY AS LOAN_HISTORY,
	   COUNT(*) AS COUNTS
FROM LIB78400.TRAINING_DS e
WHERE ( e.LOAN_HISTORY ne . OR e.LOAN_HISTORY IS NOT MISSING )
GROUP BY e.LOAN_HISTORY;

QUIT;

/* STEP 4: Save the statistics in a dataset */

PROC SQL;

CREATE TABLE LIB78400.TRAINING_LH_STAT_DS AS
SELECT e.LOAN_HISTORY AS LOAN_HISTORY,
	   COUNT(*) AS COUNTS
FROM LIB78400.TRAINING_DS e
WHERE ( e.LOAN_HISTORY ne . OR e.LOAN_HISTORY IS NOT MISSING )
GROUP BY e.LOAN_HISTORY;

QUIT;

/* STEP 4.1: Make a backup copy of the dataset */

PROC SQL;

CREATE TABLE LIB78400.TRAINING_BK_DS AS 
SELECT *
FROM LIB78400.TRAINING_DS;

QUIT;

/* STEP 5: Impute the missing values found in the categorical variable - LOAN_HISTORY */

PROC SQL;

UPDATE LIB78400.TRAINING_DS
SET LOAN_HISTORY = ( SELECT to.LOAN_HISTORY AS LOAN_HISTORY
			         FROM LIB78400.TRAINING_LH_STAT_DS to
			        WHERE to.COUNTS eq ( SELECT MAX(ti.COUNTS) AS HIGHEST_COUNT 
				  	   				     FROM LIB78400.TRAINING_LH_STAT_DS ti ) )
				  					    /* Above is a sub-program to find the highest count */
WHERE ( LOAN_HISTORY eq . OR LOAN_HISTORY IS MISSING );

QUIT;

/* STEP 6: (AI) Find the details of loan applicants who submitted their loan application without employment status */
TITLE1 'STEP 6(AI) Find the details of loan applicants who submitted';
TITLE2 'their loan application without loan history';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT * 
FROM LIB78400.TRAINING_DS e
WHERE ( e.LOAN_HISTORY eq . OR e.LOAN_HISTORY IS MISSING );

QUIT;


/* Imputation - LOAN_AMOUNT */
/* STEP 1: Find the details of loan applicants who submitted their 
loan application without specifying loan amount */
TITLE1 'Find the details of loan applicants who submitted their';
TITLE2 'loan application without specifying loan amount';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT * 
FROM LIB78400.TRAINING_DS e
WHERE ( e.LOAN_AMOUNT eq . OR e.LOAN_AMOUNT IS MISSING );

QUIT;

/* STEP 2: Count the number of loan applicants who submitted 
their loan application without specifying loan amount */
TITLE1 'Count the number of loan applicants who submitted their loan';
TITLE2 'application without specifying loan amount';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT COUNT(*) Label = 'Number of Applicants'
FROM LIB78400.TRAINING_DS e
WHERE ( e.LOAN_AMOUNT eq . OR e.LOAN_AMOUNT IS MISSING );

QUIT;

/* Make a backup copy of the dataset */

PROC SQL;

CREATE TABLE LIB78400.TRAINING_BK_DS AS 
SELECT *
FROM LIB78400.TRAINING_DS;

QUIT;

/* STEP 3: Impute the missing values found in the continuous variable - LOAN_AMOUNT */

PROC STDIZE DATA = LIB78400.TRAINING_DS REPONLY

METHOD = MEAN OUT = LIB78400.TRAINING_DS;
VAR LOAN_AMOUNT;

QUIT;

/* STEP 4: (AI) Find the details of loan applicants who submitted their 
loan application without specifying loan amount */
TITLE1 'Find the details of loan applicants who submitted their';
TITLE2 'loan application without specifying loan amount';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT * 
FROM LIB78400.TRAINING_DS e
WHERE ( e.LOAN_AMOUNT eq . OR e.LOAN_AMOUNT IS MISSING );

QUIT;

/* STEP 5: (AI) Count the number of loan applicants who submitted 
their loan application without specifying loan amount */
TITLE1 'Count the number of loan applicants who submitted their loan';
TITLE2 'application without specifying loan amount';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT COUNT(*) Label = 'Number of Applicants'
FROM LIB78400.TRAINING_DS e
WHERE ( e.LOAN_AMOUNT eq . OR e.LOAN_AMOUNT IS MISSING );

QUIT;


/* Imputation - LOAN_DURATION */
/* STEP 1: Find the details of loan applicants who submitted their 
loan application without specifying loan duration */
TITLE1 'Find the details of loan applicants who submitted their';
TITLE2 'loan application without specifying loan duration';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT * 
FROM LIB78400.TRAINING_DS e
WHERE ( e.LOAN_DURATION eq . OR e.LOAN_DURATION IS MISSING );

QUIT;

/* STEP 2: Count the number of loan applicants who submitted 
their loan application without specifying loan duration */
TITLE1 'Count the number of loan applicants who submitted their loan';
TITLE2 'application without specifying loan duration';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT COUNT(*) Label = 'Number of Applicants'
FROM LIB78400.TRAINING_DS e
WHERE ( e.LOAN_DURATION eq . OR e.LOAN_DURATION IS MISSING );

QUIT;

/* Make a backup copy of the dataset */

PROC SQL;

CREATE TABLE LIB78400.TRAINING_BK_DS AS 
SELECT *
FROM LIB78400.TRAINING_DS;

QUIT;

/* STEP 3: Impute the missing values found in the continuous variable - LOAN_DURATION */

PROC STDIZE DATA = LIB78400.TRAINING_DS REPONLY

METHOD = MEAN OUT = LIB78400.TRAINING_DS;
VAR LOAN_DURATION;

QUIT;

/* STEP 4: (AI) Find the details of loan applicants who submitted their 
loan application without specifying loan duration */
TITLE1 'Find the details of loan applicants who submitted their';
TITLE2 'loan application without specifying loan duration';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT * 
FROM LIB78400.TRAINING_DS e
WHERE ( e.LOAN_DURATION eq . OR e.LOAN_DURATION IS MISSING );

QUIT;

/* STEP 5: (AI) Count the number of loan applicants who submitted 
their loan application without specifying loan duration */
TITLE1 'Count the number of loan applicants who submitted their loan';
TITLE2 'application without specifying loan duration';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT COUNT(*) Label = 'Number of Applicants'
FROM LIB78400.TRAINING_DS e
WHERE ( e.LOAN_DURATION eq . OR e.LOAN_DURATION IS MISSING );

QUIT;



/* TESTING_DS */
/* Imputation - GENDER */
/* STEP 1: Find the details of loan applicants who submitted 
their loan application without specifying their gender */
TITLE1 'Find the details of loan applicants who submitted';
TITLE2 'their loan application without specifying their gender';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT * 
FROM LIB78400.TESTING_DS e
WHERE ( e.GENDER eq '' OR e.GENDER IS MISSING );

QUIT;

/* STEP 2: Count the number of loan applicants who submitted 
their loan application without specifying their gender */
TITLE1 'Count the number of loan applicants who submitted';
TITLE2 'their loan application without without specifying their gender';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT COUNT(*) Label = 'Number of Applicants'
FROM LIB78400.TESTING_DS e
WHERE ( e.GENDER eq '' OR e.GENDER IS MISSING );

QUIT;

/* STEP 3: Find the statistics of male and female applicants */
TITLE1 'Find the statistics of male & female applicants';

PROC SQL;

SELECT e.GENDER AS GENDER,
	   COUNT(*) AS COUNTS
FROM LIB78400.TESTING_DS e
WHERE ( e.GENDER ne '' OR e.GENDER IS NOT MISSING )
GROUP BY e.GENDER;

QUIT;

/* STEP 4: Save the statistics in a dataset */

PROC SQL;

CREATE TABLE LIB78400.TESTING_GENDER_STAT_DS AS
SELECT e.GENDER AS GENDER,
	   COUNT(*) AS COUNTS
FROM LIB78400.TESTING_DS e
WHERE ( e.GENDER ne '' OR e.GENDER IS NOT MISSING )
GROUP BY e.GENDER;

QUIT;

/* STEP 4.1: Make a backup copy of the dataset */

PROC SQL;

CREATE TABLE LIB78400.TESTING_BK_DS AS 
SELECT *
FROM LIB78400.TESTING_DS;

QUIT;

/* STEP 5: Impute the missing values found in the categorical variable - GENDER */

PROC SQL;

UPDATE LIB78400.TESTING_DS
SET GENDER = ( SELECT to.GENDER AS GENDER
			   FROM LIB78400.TESTING_GENDER_STAT_DS to
			   WHERE to.COUNTS eq ( SELECT MAX(ti.COUNTS) AS HIGHEST_COUNT 
				  	   				FROM LIB78400.TESTING_GENDER_STAT_DS ti ) )
				  					/* Above is a sub-program to find the highest count */
WHERE ( GENDER eq '' OR GENDER IS MISSING );

QUIT;

/* STEP 6: (AI) Find the details of loan applicants who submitted their loan application without gender */
TITLE1 'STEP 6(AI) Find the details of loan applicants who submitted';
TITLE2 'their loan application without specifying their gender';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT * 
FROM LIB78400.TESTING_DS e
WHERE ( e.GENDER eq '' OR e.GENDER IS MISSING );

QUIT;


/* Imputation - EMPLOYMENT */
/* STEP 1: Find the details of loan applicants who submitted their 
loan application without specifying their employment status */
TITLE1 'Find the details of loan applicants who submitted their';
TITLE2 'loan application without specifying their employment status';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT * 
FROM LIB78400.TESTING_DS e
WHERE ( e.EMPLOYMENT eq '' OR e.EMPLOYMENT IS MISSING );

QUIT;

/* STEP 2: Count the number of loan applicants who submitted 
their loan application without specifying their employment status */
TITLE1 'Count the number of loan applicants who submitted their loan';
TITLE2 'application without specifying their employment status';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT COUNT(*) Label = 'Number of Applicants'
FROM LIB78400.TESTING_DS e
WHERE ( e.EMPLOYMENT eq '' OR e.EMPLOYMENT IS MISSING );

QUIT;

/* STEP 3: Find the statistics of employed and unemployed applicants */
TITLE1 'Find the statistics of employed & unemployed applicants';

PROC SQL;

SELECT e.EMPLOYMENT AS EMPLOYMENT,
	   COUNT(*) AS COUNTS
FROM LIB78400.TESTING_DS e
WHERE ( e.EMPLOYMENT ne '' OR e.EMPLOYMENT IS NOT MISSING )
GROUP BY e.EMPLOYMENT;

QUIT;

/* STEP 4: Save the statistics in a dataset */

PROC SQL;

CREATE TABLE LIB78400.TESTING_EMPLOYMENT_STAT_DS AS
SELECT e.EMPLOYMENT AS EMPLOYMENT,
	   COUNT(*) AS COUNTS
FROM LIB78400.TESTING_DS e
WHERE ( e.EMPLOYMENT ne '' OR e.EMPLOYMENT IS NOT MISSING )
GROUP BY e.EMPLOYMENT;

QUIT;

/* STEP 4.1: Make a backup copy of the dataset */

PROC SQL;

CREATE TABLE LIB78400.TESTING_BK_DS AS 
SELECT *
FROM LIB78400.TESTING_DS;

QUIT;

/* STEP 5: Impute the missing values found in the categorical variable - EMPLOYMENT */

PROC SQL;

UPDATE LIB78400.TESTING_DS
SET EMPLOYMENT = ( SELECT to.EMPLOYMENT AS EMPLOYMENT
			   FROM LIB78400.TESTING_EMPLOYMENT_STAT_DS to
			   WHERE to.COUNTS eq ( SELECT MAX(ti.COUNTS) AS HIGHEST_COUNT 
				  	   				FROM LIB78400.TESTING_EMPLOYMENT_STAT_DS ti ) )
				  					/* Above is a sub-program to find the highest count */
WHERE ( EMPLOYMENT eq '' OR EMPLOYMENT IS MISSING );

QUIT;

/* STEP 6: (AI) Find the details of loan applicants who submitted their loan application without employment status */
TITLE1 'STEP 6(AI) Find the details of loan applicants who submitted';
TITLE2 'their loan application without specifying their employment status';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT * 
FROM LIB78400.TESTING_DS e
WHERE ( e.EMPLOYMENT eq '' OR e.EMPLOYMENT IS MISSING );

QUIT;


/* Imputation - FAMILY_MEMBERS */
/* STEP 1: Find the details of loan applicants who submitted 
their loan application without specifying number of family members */
TITLE1 'Find the details of loan applicants who submitted';
TITLE2 'their loan application without specifying number of family members';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT * 
FROM LIB78400.TESTING_DS e
WHERE ( e.FAMILY_MEMBERS eq '' OR e.FAMILY_MEMBERS IS NULL );

QUIT;

/* STEP 2: Count the number of loan applicants who submitted 
their loan application without specifying number of family members */
TITLE1 'Count the number of loan applicants who submitted';
TITLE2 'their loan application without specifying number of family members';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT COUNT(*) Label = 'Number of Applicants'
FROM LIB78400.TESTING_DS e
WHERE ( e.FAMILY_MEMBERS eq '' OR e.FAMILY_MEMBERS IS MISSING );

QUIT;

/* STEP 3: Find the details of loan applicants with '3+'' family members */
PROC SQL;

SELECT e.FAMILY_MEMBERS Label = 'Family Members',
    SUBSTR(e.FAMILY_MEMBERS,1,1) Label = 'The data found in the 1ST position',
    SUBSTR(e.FAMILY_MEMBERS,2,1) Label = 'The data found in the 2ND position'
FROM LIB78400.TESTING_DS e
WHERE ( e.FAMILY_MEMBERS ne '' OR e.FAMILY_MEMBERS IS NOT MISSING );

QUIT;

/* STEP 4: Make a backup copy of the dataset */

PROC SQL;

CREATE TABLE LIB78400.TESTING_BK_DS AS 
SELECT *
FROM LIB78400.TESTING_DS;

QUIT;

/* STEP 4: To restore the dataset if it's corrupted */

PROC SQL;

CREATE TABLE LIB78400.TESTING_DS AS 
SELECT *
FROM LIB78400.TESTING_BK_DS;

QUIT;

/* STEP 5: Remove '+' symbol found in FAMILY_MEMBERS */
PROC SQL;

UPDATE LIB78400.TESTING_DS
SET FAMILY_MEMBERS = SUBSTR(FAMILY_MEMBERS,1,1)
WHERE SUBSTR(FAMILY_MEMBERS,2,1) eq '+';

QUIT;

/* STEP 6: Display the statistics in a dataset */

PROC SQL;

SELECT e.FAMILY_MEMBERS AS FAMILY_MEMBERS,
	   COUNT(*) AS COUNTS
FROM LIB78400.TESTING_DS e
WHERE ( e.FAMILY_MEMBERS ne '' OR e.FAMILY_MEMBERS IS NOT MISSING )
GROUP BY e.FAMILY_MEMBERS;

QUIT;

/* STEP 7: Save the statistics in a dataset */

PROC SQL;

CREATE TABLE LIB78400.TESTING_STAT_FM_DS AS
SELECT e.FAMILY_MEMBERS AS FAMILY_MEMBERS,
	   COUNT(*) AS COUNTS
FROM LIB78400.TESTING_DS e
WHERE ( e.FAMILY_MEMBERS ne '' OR e.FAMILY_MEMBERS IS NOT MISSING )
GROUP BY e.FAMILY_MEMBERS;

QUIT;

/* STEP 8: Impute missing values in categorical variable - FAMILY_MEMBERS */

PROC SQL;

UPDATE LIB78400.TESTING_DS
SET FAMILY_MEMBERS =  ( SELECT to.FAMILY_MEMBERS AS FAMILY_MEMBERS
                        FROM LIB78400.TESTING_STAT_FM_DS to 
                        WHERE to.COUNTS eq ( SELECT MAX (ti.COUNTS) AS HIGHEST_COUNT
                                             FROM LIB78400.TESTING_STAT_FM_DS ti ) )
                                             /* Above is a sub-program to find the highest count */
WHERE ( FAMILY_MEMBERS eq '' OR FAMILY_MEMBERS IS NULL );

QUIT;

/* STEP 9: (AI) Find the details of loan applicants who submitted 
their loan application without specifying number of family members */
TITLE1 'Find the details of loan applicants who submitted';
TITLE2 'their loan application without specifying number of family members';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT * 
FROM LIB78400.TESTING_DS e
WHERE ( e.FAMILY_MEMBERS eq '' OR e.FAMILY_MEMBERS IS NULL );

QUIT;

/* STEP 10: (AI) Count the number of loan applicants who submitted 
their loan application without specifying number of family members */
TITLE1 'Count the number of loan applicants who submitted';
TITLE2 'their loan application without specifying number of family members';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT COUNT(*) Label = 'Number of Applicants'
FROM LIB78400.TESTING_DS e
WHERE ( e.FAMILY_MEMBERS eq '' OR e.FAMILY_MEMBERS IS MISSING );

QUIT;


/* Imputation - LOAN_HISTORY */
/* STEP 1: Find the details of loan applicants who submitted their 
loan application without loan history */
TITLE1 'Find the details of loan applicants who submitted their';
TITLE2 'loan application without loan history';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT * 
FROM LIB78400.TESTING_DS e
WHERE ( e.LOAN_HISTORY eq . OR e.LOAN_HISTORY IS MISSING );

QUIT;

/* STEP 2: Count the number of loan applicants who submitted 
their loan application without loan history */
TITLE1 'Count the number of loan applicants who submitted their loan';
TITLE2 'application without loan history';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT COUNT(*) Label = 'Number of Applicants'
FROM LIB78400.TESTING_DS e
WHERE ( e.LOAN_HISTORY eq . OR e.LOAN_HISTORY IS MISSING );

QUIT;

/* STEP 3: Find the statistics of applicants with positive and negative past loan records */
TITLE1 'Find the statistics of applicants with positive and negative past loan records';

PROC SQL;

SELECT e.LOAN_HISTORY AS LOAN_HISTORY,
	   COUNT(*) AS COUNTS
FROM LIB78400.TESTING_DS e
WHERE ( e.LOAN_HISTORY ne . OR e.LOAN_HISTORY IS NOT MISSING )
GROUP BY e.LOAN_HISTORY;

QUIT;

/* STEP 4: Save the statistics in a dataset */

PROC SQL;

CREATE TABLE LIB78400.TESTING_LH_STAT_DS AS
SELECT e.LOAN_HISTORY AS LOAN_HISTORY,
	   COUNT(*) AS COUNTS
FROM LIB78400.TESTING_DS e
WHERE ( e.LOAN_HISTORY ne . OR e.LOAN_HISTORY IS NOT MISSING )
GROUP BY e.LOAN_HISTORY;

QUIT;

/* STEP 4.1: Make a backup copy of the dataset */

PROC SQL;

CREATE TABLE LIB78400.TESTING_BK_DS AS 
SELECT *
FROM LIB78400.TESTING_DS;

QUIT;

/* STEP 5: Impute the missing values found in the categorical variable - LOAN_HISTORY */

PROC SQL;

UPDATE LIB78400.TESTING_DS
SET LOAN_HISTORY = ( SELECT to.LOAN_HISTORY AS LOAN_HISTORY
			         FROM LIB78400.TESTING_LH_STAT_DS to
			         WHERE to.COUNTS eq ( SELECT MAX(ti.COUNTS) AS HIGHEST_COUNT 
				  	   				      FROM LIB78400.TESTING_LH_STAT_DS ti ) )
				  					    /* Above is a sub-program to find the highest count */
WHERE ( LOAN_HISTORY eq . OR LOAN_HISTORY IS MISSING );

QUIT;

/* STEP 6: (AI) Find the details of loan applicants who submitted their loan application without employment status */
TITLE1 'STEP 6(AI) Find the details of loan applicants who submitted';
TITLE2 'their loan application without loan history';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT * 
FROM LIB78400.TESTING_DS e
WHERE ( e.LOAN_HISTORY eq . OR e.LOAN_HISTORY IS MISSING );

QUIT;


/* Imputation - LOAN_AMOUNT */
/* STEP 1: Find the details of loan applicants who submitted their 
loan application without specifying loan amount */
TITLE1 'Find the details of loan applicants who submitted their';
TITLE2 'loan application without specifying loan amount';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT * 
FROM LIB78400.TESTING_DS e
WHERE ( e.LOAN_AMOUNT eq . OR e.LOAN_AMOUNT IS MISSING );

QUIT;

/* STEP 2: Count the number of loan applicants who submitted 
their loan application without specifying loan amount */
TITLE1 'Count the number of loan applicants who submitted their loan';
TITLE2 'application without specifying loan amount';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT COUNT(*) Label = 'Number of Applicants'
FROM LIB78400.TESTING_DS e
WHERE ( e.LOAN_AMOUNT eq . OR e.LOAN_AMOUNT IS MISSING );

QUIT;

/* Make a backup copy of the dataset */

PROC SQL;

CREATE TABLE LIB78400.TESTING_BK_DS AS 
SELECT *
FROM LIB78400.TESTING_DS;

QUIT;

/* STEP 3: Impute the missing values found in the continuous variable - LOAN_AMOUNT */

PROC STDIZE DATA = LIB78400.TESTING_DS REPONLY

METHOD = MEAN OUT = LIB78400.TESTING_DS;
VAR LOAN_AMOUNT;

QUIT;

/* STEP 4: (AI) Find the details of loan applicants who submitted their 
loan application without specifying loan amount */
TITLE1 'Find the details of loan applicants who submitted their';
TITLE2 'loan application without specifying loan amount';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT * 
FROM LIB78400.TESTING_DS e
WHERE ( e.LOAN_AMOUNT eq . OR e.LOAN_AMOUNT IS MISSING );

QUIT;

/* STEP 5: (AI) Count the number of loan applicants who submitted 
their loan application without specifying loan amount */
TITLE1 'Count the number of loan applicants who submitted their loan';
TITLE2 'application without specifying loan amount';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT COUNT(*) Label = 'Number of Applicants'
FROM LIB78400.TESTING_DS e
WHERE ( e.LOAN_AMOUNT eq . OR e.LOAN_AMOUNT IS MISSING );

QUIT;


/* Imputation - LOAN_DURATION */
/* STEP 1: Find the details of loan applicants who submitted their 
loan application without specifying loan duration */
TITLE1 'Find the details of loan applicants who submitted their';
TITLE2 'loan application without specifying loan duration';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT * 
FROM LIB78400.TESTING_DS e
WHERE ( e.LOAN_DURATION eq . OR e.LOAN_DURATION IS MISSING );

QUIT;

/* STEP 2: Count the number of loan applicants who submitted 
their loan application without specifying loan duration */
TITLE1 'Count the number of loan applicants who submitted their loan';
TITLE2 'application without specifying loan duration';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT COUNT(*) Label = 'Number of Applicants'
FROM LIB78400.TESTING_DS e
WHERE ( e.LOAN_DURATION eq . OR e.LOAN_DURATION IS MISSING );

QUIT;

/* Make a backup copy of the dataset */

PROC SQL;

CREATE TABLE LIB78400.TESTING_BK_DS AS 
SELECT *
FROM LIB78400.TESTING_DS;

QUIT;

/* STEP 3: Impute the missing values found in the continuous variable - LOAN_DURATION */

PROC STDIZE DATA = LIB78400.TESTING_DS REPONLY

METHOD = MEAN OUT = LIB78400.TESTING_DS;
VAR LOAN_DURATION;

QUIT;

/* STEP 4: (AI) Find the details of loan applicants who submitted their 
loan application without specifying loan duration */
TITLE1 'Find the details of loan applicants who submitted their';
TITLE2 'loan application without specifying loan duration';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT * 
FROM LIB78400.TESTING_DS e
WHERE ( e.LOAN_DURATION eq . OR e.LOAN_DURATION IS MISSING );

QUIT;

/* STEP 5: (AI) Count the number of loan applicants who submitted 
their loan application without specifying loan duration */
TITLE1 'Count the number of loan applicants who submitted their loan';
TITLE2 'application without specifying loan duration';
FOOTNOTE '----------END----------';

PROC SQL;

SELECT COUNT(*) Label = 'Number of Applicants'
FROM LIB78400.TESTING_DS e
WHERE ( e.LOAN_DURATION eq . OR e.LOAN_DURATION IS MISSING );

QUIT;


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
/* PRED_PROB -> Predicted probability - variable to hold predicted probability
OUT -> the output will be stored in a dataset
Akaike Information Criterion (AIC) must be < SC (Schwarz Criterion) */
/* If Pr > ChiSq is <= 0.05, it means that the independent variable is an
important variable and as it is truly contributing to predicting the dependent variable */
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


/* Generate the report using SAS ODS - Output Delivery / Display System
   Display the details of the loan approval status predicted */
  
ODS HTML CLOSE;
ODS PDF CLOSE;

/* Determine the physical location of pdf */
ODS PDF FILE = " /home/u63691887/DAP_FT_MAR_2024_TP078400/LAS_REPORT_TP078400.pdf";
OPTIONS NODATE;
TITLE1 'Prediction of Loan Approval Status';
TITLE2 'APU,TPM';
PROC REPORT DATA = LIB78400.TESTING_LAS_PRED_TP078400_DS NOWINDOWS;
BY SME_LOAN_ID_NO;
DEFINE SME_LOAN_ID_NO / GROUP 'SME LOAN ID';
DEFINE GENDER / GROUP 'GENDER';
DEFINE MARITAL_STATUS / GROUP 'MARITAL STATUS';
DEFINE FAMILY_MEMBERS / GROUP 'NO. OF FAMILY MEMBERS';
DEFINE CANDIDATE_INCOME / GROUP 'MONTHLY INCOME';
DEFINE GUARANTEE_INCOME / GROUP 'CO-APPLICANT INCOME';
DEFINE LOAN_AMOUNT / GROUP 'LOAN AMOUNT';
DEFINE LOAN_DURATION / GROUP 'LOAN DURATION (MONTHS)';
DEFINE LOAN_HISTORY / GROUP 'LOAN HISTORY';
DEFINE LOAN_LOCATION / GROUP 'LOAN LOCATION';
FOOTNOTE '----------End of Report----------';
RUN;



/***
LIB78400.TESTING_LAS_PRED_TP078400_DS

***


/* Data Visualisation Using SAS Codes
   Graphical Representation of Information and Data 
*/

/* SAS Simple Bar Chart */

PROC SGPLOT DATA = LIB78400.TESTING_LAS_PRED_TP078400_DS;
VBAR GENDER;
TITLE 'Loan Applicants by Gender';
RUN;

/*******************************************
Stacked Bar Chart - 
The groups were stacked one above the other	  
********************************************/

TITLE 'Number of Family Members by Loan History';
PROC SGPLOT DATA = LIB78400.TESTING_LAS_PRED_TP078400_DS;
VBAR FAMILY_MEMBERS / GROUP = LOAN_HISTORY GROUPDISPLAY = CLUSTER;
Label FAMILY_MEMBERS = 'Number of Family Members';

RUN;


/**************************************************************************************
Pie Chart - 
A pie chart is a representation of values as slices of a circle with different colours
***************************************************************************************/

TITLE 'Loan Approval Status';
PROC GCHART DATA = LIB78400.TESTING_LAS_PRED_TP078400_DS;
PIE3D I_LOAN_APPROVAL_STATUS;
RUN;
QUIT;

GOPTIONS RESET = ALL BORDER;
TITLE 'Family Members VS Loan Location';
PROC GCHART DATA = LIB78400.TESTING_LAS_PRED_TP078400_DS;
PIE FAMILY_MEMBERS / DETAIL = LOAN_LOCATION
DETAIL_PERCENT = BEST
DETAIL_VALUE = NONE
DETAIL_SLICE = BEST
DETAIL_THRESHOLD = 2
LEGEND;
RUN;
QUIT;



