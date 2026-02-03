# Diabetes Data

Data from 442 diabetes patients used in Section 7.3. The response is a
quantitative measure of disease progression one year after baseline.
There are ten baseline predictors: age, sex, body-mass index, average
blood pressure, and six blood serum measurements.

## Format

A data frame with 442 rows and 12 variables:

- X:

  Row index

- age:

  Age of patient

- sex:

  Sex of patient

- bmi:

  Body mass index

- map:

  Average blood pressure (mean arterial pressure)

- tc:

  Total cholesterol (serum measurement)

- ldl:

  Low-density lipoproteins (serum measurement)

- hdl:

  High-density lipoproteins (serum measurement)

- tch:

  Total cholesterol / HDL (serum measurement)

- ltg:

  Log of triglycerides (serum measurement)

- glu:

  Blood sugar level (serum measurement)

- prog:

  Response: quantitative measure of disease progression

## Source

<https://hastie.su.domains/CASI_files/DATA/diabetes.csv>

## Details

First used in the LARS paper (Efron et al., 2004).

Note: In Table 7.2, the centered predictor variables were standardized
to unit L2 norm. In Table 20.1 they were standardized to unit variance.

## References

Efron, B., Hastie, T., Johnstone, I. and Tibshirani, R. (2004). Least
Angle Regression. *Annals of Statistics*, 32(2), 407-499.

Efron, B. and Hastie, T. (2016). *Computer Age Statistical Inference*.
Cambridge University Press, Section 7.3.
