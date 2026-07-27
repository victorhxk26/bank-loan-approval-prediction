/* The author's reusable bivariate-analysis macros, taken verbatim from
   SOURCE-CODE-MAR-2024.sas (Mr. Victor Hew Xin Kai): BVA_CATE_CATE builds a
   two-way PROC FREQ cross-tabulation with a stacked FREQPLOT, and
   BVA_CATE_CONTI summarises a continuous variable across a categorical CLASS.
   Called against LIB78400.TESTING_DS with the author's own argument lists. */

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
