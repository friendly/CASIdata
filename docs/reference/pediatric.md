# Pediatric Cancer Survival Data

Survival data on 1620 children with cancer, from Section 9.4 and Table
9.6.

## Format

A data frame with 1620 rows and 7 variables:

- sex:

  Sex: 1 = male, 2 = female

- race:

  Race: 1 = white, 2 = nonwhite

- age:

  Age in years

- entry:

  Calendar date of entry in days since July 1, 2001

- far:

  Home distance from treatment center in miles

- t:

  Survival time in days

- d:

  Death indicator: 1 = death observed, 0 = censored

## Source

<https://hastie.su.domains/CASI_files/DATA/pediatric.txt>

## References

Efron, B. and Hastie, T. (2016). *Computer Age Statistical Inference*.
Cambridge University Press, Section 9.4, Table 9.6.

## Examples

``` r
data(pediatric)
str(pediatric)
#> 'data.frame':    1620 obs. of  7 variables:
#>  $ sex  : int  1 2 2 2 1 2 2 2 1 2 ...
#>  $ race : int  1 1 2 1 1 1 1 1 1 1 ...
#>  $ age  : num  2.5 10 18.17 3.92 11.83 ...
#>  $ entry: int  710 1866 2531 2210 875 1419 1264 670 1518 2101 ...
#>  $ far  : int  108 38 100 100 78 0 28 120 73 104 ...
#>  $ t    : int  325 1451 221 2158 760 168 2976 1833 131 2405 ...
#>  $ d    : int  0 0 0 0 0 0 0 0 0 0 ...
```
