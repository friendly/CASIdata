# Dose Response Data

Data from 11 groups of mice (10 each) exposed to drug Xilathon at
different doses. From Figure 8.2.

## Format

A data frame with 11 rows and 2 variables:

- Dose:

  Log dose level (each step is a doubling)

- Proportion:

  Proportion of mice that died at that dose

## Source

<https://hastie.su.domains/CASI_files/DATA/doseresponse.txt>

## References

Efron, B. and Hastie, T. (2016). *Computer Age Statistical Inference*.
Cambridge University Press, Figure 8.2.

## Examples

``` r
data(doseresponse)
str(doseresponse)
#> 'data.frame':    11 obs. of  2 variables:
#>  $ Dose      : int  0 1 2 3 4 5 6 7 8 9 ...
#>  $ Proportion: num  0 0 0 0.3 0.6 0.6 0.5 0.9 0.9 1 ...
```
