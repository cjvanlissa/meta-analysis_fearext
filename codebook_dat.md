Codebook created on 2022-03-13 at 2022-03-13 16:19:19
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 554 cases and 32 variables.

## Codebook

| name           | type      |   n | missing | unique |    mean |  median |    mode | mode_value                    |     sd |    v |     min |     max |   range |  skew | skew_2se |   kurt | kurt_2se |
|:---------------|:----------|----:|--------:|-------:|--------:|--------:|--------:|:------------------------------|-------:|-----:|--------:|--------:|--------:|------:|---------:|-------:|---------:|
| paper          | factor    | 554 |    0.00 |    163 |         |         |   30.00 | Long 2012                     |        | 0.98 |         |         |         |       |          |        |          |
| author         | factor    | 554 |    0.00 |     98 |         |         |   58.00 | Long                          |        | 0.97 |         |         |         |       |          |        |          |
| year           | integer   | 554 |    0.00 |     22 | 2013.69 | 2016.00 | 2016.00 |                               |   5.95 |      | 1990.00 | 2021.00 |   31.00 | -1.68 |    -8.08 |   4.27 |    10.30 |
| id_sample      | factor    | 554 |    0.00 |     60 |         |         |   42.00 | 21                            |        | 0.96 |         |         |         |       |          |        |          |
| id_es          | numeric   | 554 |    0.00 |    231 |   69.79 |   45.50 |   45.50 |                               |  63.91 |      |    1.00 |  236.00 |  235.00 |  1.00 |     4.83 |  -0.07 |    -0.18 |
| id_experiment  | numeric   | 554 |    0.00 |     63 |   20.55 |   14.00 |   14.00 |                               |  17.77 |      |    1.00 |   63.00 |   62.00 |  0.61 |     2.94 |  -0.97 |    -2.34 |
| administration | factor    | 554 |    0.00 |      3 |         |         |  513.00 | i.p.                          |        | 0.14 |         |         |         |       |          |        |          |
| drug           | factor    | 554 |    0.00 |      5 |         |         |  309.00 | Cannabidiol                   |        | 0.59 |         |         |         |       |          |        |          |
| drug_class     | factor    | 552 |    0.00 |      4 |         |         |  307.00 | Reuptake/hydrolysis inhibitor |        | 0.56 |         |         |         |       |          |        |          |
| dose_unit      | factor    | 553 |    0.00 |     39 |         |         |   77.00 | 10 mg/kg                      |        | 0.92 |         |         |         |       |          |        |          |
| dose           | numeric   | 554 |    0.00 |     37 |   27.91 |    5.00 |    5.00 |                               |  96.41 |      |    0.01 |  900.00 |  899.99 |  6.94 |    33.41 |  53.57 |   129.26 |
| unit           | factor    | 554 |    0.00 |      3 |         |         |  535.00 | mg/kg                         |        | 0.07 |         |         |         |       |          |        |          |
| hed            | numeric   | 534 |    0.04 |     40 |    1.28 |    0.41 |    0.41 |                               |   1.97 |      |    0.00 |    9.72 |    9.72 |  2.37 |    11.20 |   5.67 |    13.43 |
| frequency      | factor    | 554 |    0.00 |      3 |         |         |  372.00 | SD                            |        | 0.44 |         |         |         |       |          |        |          |
| timing         | factor    | 554 |    0.00 |      3 |         |         |  478.00 | acute                         |        | 0.24 |         |         |         |       |          |        |          |
| mult_es        | numeric   | 554 |    0.00 |      2 |   -0.15 |   -1.00 |   -1.00 |                               |   0.99 |      |   -1.00 |    1.00 |    2.00 |  0.30 |     1.44 |  -1.91 |    -4.62 |
| anxiety_test   | factor    | 554 |    0.00 |     13 |         |         |  300.00 | AA                            |        | 0.67 |         |         |         |       |          |        |          |
| outcome_type   | factor    | 116 |    0.79 |     12 |         |         |  438.00 |                               |        | 0.81 |         |         |         |       |          |        |          |
| test_type      | factor    | 554 |    0.00 |      4 |         |         |  417.00 | Unconditioned                 |        | 0.39 |         |         |         |       |          |        |          |
| species        | factor    | 554 |    0.00 |      5 |         |         |  313.00 | mice                          |        | 0.53 |         |         |         |       |          |        |          |
| strain         | factor    | 554 |    0.00 |     36 |         |         |   97.00 | Wistar                        |        | 0.93 |         |         |         |       |          |        |          |
| disease        | factor    | 554 |    0.00 |      4 |         |         |  485.00 | No                            |        | 0.22 |         |         |         |       |          |        |          |
| mtreat         | numeric   | 554 |    0.00 |    538 |   67.86 |   29.46 |   29.46 |                               | 197.36 |      | -116.00 | 3944.29 | 4060.29 | 14.33 |    69.04 | 267.64 |   645.82 |
| setreat        | numeric   | 373 |    0.33 |    335 |    7.73 |    3.64 |    3.64 |                               |  17.17 |      |    0.00 |  267.14 |  267.14 | 10.06 |    39.80 | 139.33 |   276.46 |
| ntreat         | numeric   | 554 |    0.00 |     33 |    9.94 |    9.50 |    9.50 |                               |   3.05 |      |    3.00 |   29.00 |   26.00 |  1.22 |     5.89 |   3.25 |     7.85 |
| sdtreat        | numeric   | 554 |    0.00 |    526 |   37.22 |   11.98 |   11.98 |                               | 329.34 |      |    0.00 | 7690.00 | 7690.00 | 22.68 |   109.26 | 523.35 |  1262.86 |
| mcon           | numeric   | 551 |    0.01 |    335 |   74.77 |   28.19 |   28.19 |                               | 212.28 |      |  -86.00 | 3975.71 | 4061.71 | 12.27 |    58.94 | 207.61 |   499.62 |
| secon          | numeric   | 370 |    0.33 |    215 |    7.62 |    3.12 |    3.12 |                               |  20.36 |      |    0.00 |  345.71 |  345.71 | 12.75 |    50.27 | 203.29 |   401.77 |
| ncon           | numeric   | 554 |    0.00 |     33 |   10.07 |   10.00 |   10.00 |                               |   3.08 |      |    4.00 |   26.00 |   22.00 |  1.15 |     5.52 |   1.93 |     4.65 |
| sdcon          | numeric   | 554 |    0.00 |    332 |   22.87 |   11.11 |   11.11 |                               |  57.68 |      |    0.00 | 1146.60 | 1146.60 | 13.94 |    67.16 | 258.64 |   624.11 |
| sex            | factor    | 554 |    0.00 |      6 |         |         |  457.00 | Male                          |        | 0.31 |         |         |         |       |          |        |          |
| Sample         | character | 554 |    0.00 |      9 |         |         |  231.00 | CBDanimalunconditioned        |        | 0.75 |         |         |         |       |          |        |          |

### Legend

-   **Name**: Variable name
-   **type**: Data type of the variable
-   **missing**: Proportion of missing values for this variable
-   **unique**: Number of unique values
-   **mean**: Mean value
-   **median**: Median value
-   **mode**: Most common value (for categorical variables, this shows
    the frequency of the most common category)
-   **mode_value**: For categorical variables, the value of the most
    common category
-   **sd**: Standard deviation (measure of dispersion for numerical
    variables
-   **v**: Agresti’s V (measure of dispersion for categorical variables)
-   **min**: Minimum value
-   **max**: Maximum value
-   **range**: Range between minimum and maximum value
-   **skew**: Skewness of the variable
-   **skew_2se**: Skewness of the variable divided by 2\*SE of the
    skewness. If this is greater than abs(1), skewness is significant
-   **kurt**: Kurtosis (peakedness) of the variable
-   **kurt_2se**: Kurtosis of the variable divided by 2\*SE of the
    kurtosis. If this is greater than abs(1), kurtosis is significant.

This codebook was generated using the [Workflow for Open Reproducible
Code in Science (WORCS)](https://osf.io/zcvbs/)
