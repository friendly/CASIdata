# Vasoconstriction Data

Data on vasoconstriction (lung constriction) response, from Table 13.2.

## Format

A data frame with 39 rows and 2 variables:

- volume:

  Volume measurement

- constriction:

  Logical: TRUE if constriction occurred, FALSE otherwise

## Source

<https://hastie.su.domains/CASI_files/DATA/vasoconstriction.txt>

## References

Efron, B. and Hastie, T. (2016). *Computer Age Statistical Inference*.
Cambridge University Press, Table 13.2.

## Examples

``` r
data(vasoconstriction)
str(vasoconstriction)
#> 'data.frame':    39 obs. of  2 variables:
#>  $ volume      : int  60 74 78 78 78 88 90 95 95 98 ...
#>  $ constriction: logi  FALSE FALSE FALSE FALSE FALSE FALSE ...
```
