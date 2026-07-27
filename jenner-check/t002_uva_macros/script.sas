/* The author's reusable univariate-analysis macros, taken verbatim from
   SOURCE-CODE-MAR-2024.sas (Mr. Victor Hew Xin Kai), together with a
   representative subset of the author's own %UVA_CATE_VARI / %UVA_CONTI_VARI
   calls against LIB78400.TESTING_DS. */

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
%UVA_CATE_VARI('Univariate Analysis of the Categorical variable - QUALIFICATION', LIB78400.TESTING_DS, QUALIFICATION);
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
