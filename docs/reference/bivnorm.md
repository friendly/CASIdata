# Bivariate Normal Data

40 points generated from a bivariate normal distribution, with some
entries missing. From Figure 9.3.

## Format

A data frame with 40 rows and 2 variables:

- X1:

  First variable

- X2:

  Second variable

## Source

<https://hastie.su.domains/CASI_files/DATA/bivnorm.csv>

## References

Efron, B. and Hastie, T. (2016). *Computer Age Statistical Inference*.
Cambridge University Press, Figure 9.3.

## Examples

``` r
data(bivnorm)
str(bivnorm)
#> 'data.frame':    40 obs. of  2 variables:
#>  $ X1: num  3.473 1.3853 0.0662 0.9424 2.9776 ...
#>  $ X2: num  1.776 2.354 -0.238 -0.538 2.07 ...
```
