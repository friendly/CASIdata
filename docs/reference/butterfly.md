# Butterfly Species Data

Number of butterfly species seen a given number of times each in two
years of trapping. From Table 6.2. This is a frequency data frame.

## Format

A data frame with 24 rows and 2 variables:

- k:

  Number of times a species was trapped

- count:

  Number of species seen exactly k times (e.g., 118 species trapped just
  once, 74 trapped twice each)

## Source

<https://hastie.su.domains/CASI_files/DATA/butterfly.txt>

## References

Efron, B. and Hastie, T. (2016). *Computer Age Statistical Inference*.
Cambridge University Press, Table 6.2.

## Examples

``` r
data(butterfly)
str(butterfly)
#> 'data.frame':    24 obs. of  2 variables:
#>  $ k    : int  1 2 3 4 5 6 7 8 9 10 ...
#>  $ count: int  118 74 44 24 29 22 20 19 20 15 ...
```
