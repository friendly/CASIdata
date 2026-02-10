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

## Examples

``` r
data(diabetes)
str(diabetes)
#> 'data.frame':    442 obs. of  12 variables:
#>  $ X   : int  1 2 3 4 5 6 7 8 9 10 ...
#>  $ age : int  59 48 72 24 50 23 36 66 60 29 ...
#>  $ sex : int  1 0 1 0 0 0 1 1 1 0 ...
#>  $ bmi : num  32.1 21.6 30.5 25.3 23 22.6 22 26.2 32.1 30 ...
#>  $ map : num  101 87 93 84 101 89 90 114 83 85 ...
#>  $ tc  : int  157 183 156 198 192 139 160 255 179 180 ...
#>  $ ldl : num  93.2 103.2 93.6 131.4 125.4 ...
#>  $ hdl : num  38 70 41 40 52 61 50 56 42 43 ...
#>  $ tch : num  4 3 4 5 4 2 3 4.55 4 4 ...
#>  $ ltg : num  2.11 1.69 2.03 2.12 1.86 ...
#>  $ glu : int  87 69 85 89 80 68 82 92 94 88 ...
#>  $ prog: int  151 75 141 206 135 97 138 63 110 310 ...
```
