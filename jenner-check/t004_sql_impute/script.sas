/* Mode-imputation of the categorical variable GENDER, taken verbatim from
   SOURCE-CODE-MAR-2024.sas (Mr. Victor Hew Xin Kai). The sequence finds and
   counts applicants with a missing GENDER, tabulates the per-value counts into
   a statistics table, then imputes the blanks with the most frequent value via
   a correlated sub-query (WHERE COUNTS = MAX(COUNTS)), and finally re-checks
   that no missing GENDER values remain. Runs against LIB78400.TRAINING_DS. */

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
