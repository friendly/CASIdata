# Insurance Life Table Data

Insurance company life table from Table 9.1. At each age, gives the
number of policy holders and the number of deaths.

## Format

A data frame with rows for each age group and 3 variables:

- age:

  Age of policy holders

- n:

  Number of policy holders at this age

- y:

  Number of deaths at this age

## Source

<https://hastie.su.domains/CASI_files/DATA/insurance.txt>

## References

Efron, B. and Hastie, T. (2016). *Computer Age Statistical Inference*.
Cambridge University Press, Table 9.1.

## Examples

``` r
data(insurance)
str(insurance)
#> 'data.frame':    60 obs. of  3 variables:
#>  $ age: int  30 31 32 33 34 35 36 37 38 39 ...
#>  $ n  : int  116 44 95 97 120 71 125 122 82 113 ...
#>  $ y  : int  0 0 0 0 0 1 0 0 0 0 ...
```
