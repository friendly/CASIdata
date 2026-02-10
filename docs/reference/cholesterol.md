# Cholesterol Data

Cholestyramine, a proposed cholesterol lowering drug, was administered
to 164 men for an average of seven years each. From Figure 20.1.

## Format

A data frame with 164 rows and 2 variables:

- compliance:

  Fraction of intended dose actually taken (standardized)

- cholesterol.decrease:

  Decrease in cholesterol level over the course of the experiment

## Source

<https://hastie.su.domains/CASI_files/DATA/cholesterol.txt>

## References

Efron, B. and Hastie, T. (2016). *Computer Age Statistical Inference*.
Cambridge University Press, Figure 20.1.

## Examples

``` r
data(cholesterol)
str(cholesterol)
#> 'data.frame':    164 obs. of  2 variables:
#>  $ compliance          : num  -2.25 -2.25 -2.25 -2.25 -1.83 ...
#>  $ cholesterol.decrease: num  11.5 -6.25 -7.25 -5.25 -23 21 5.75 8.75 3.25 8.25 ...
```
