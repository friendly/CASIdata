# Baseball Batting Averages

Batting averages for 18 Major League players in the 1970 season, from
Table 7.1. This dataset illustrates empirical Bayes estimation, where
early-season performance is used to predict full-season batting
averages.

## Format

A data frame with 18 rows and 3 variables:

- Player:

  Player ID number

- MLE:

  Batting average based on the first 90 at-bats of the season

- TRUTH:

  Batting average for the remainder of the 1970 season

## Source

<https://hastie.su.domains/CASI_files/DATA/baseball.txt>

## References

Efron, B. and Hastie, T. (2016). *Computer Age Statistical Inference*.
Cambridge University Press, Table 7.1.

## Examples

``` r
data(baseball)
str(baseball)
#> 'data.frame':    18 obs. of  3 variables:
#>  $ Player: int  1 2 3 4 5 6 7 8 9 10 ...
#>  $ MLE   : num  0.345 0.333 0.322 0.311 0.289 0.289 0.278 0.255 0.244 0.233 ...
#>  $ TRUTH : num  0.298 0.346 0.222 0.276 0.263 0.273 0.303 0.27 0.23 0.264 ...
```
