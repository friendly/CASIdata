# Lymph Nodes Cancer Data

Data on lymph nodes removed from 844 cancer patients, from Figure 6.3.

## Format

A data frame with 844 rows and 2 variables:

- n:

  Number of lymph nodes removed

- x:

  Number of nodes found to be positive (malignant)

## Source

<https://hastie.su.domains/CASI_files/DATA/nodes.txt>

## References

Efron, B. and Hastie, T. (2016). *Computer Age Statistical Inference*.
Cambridge University Press, Figure 6.3.

## Examples

``` r
data(nodes)
str(nodes)
#> 'data.frame':    844 obs. of  2 variables:
#>  $ n: int  26 14 34 25 23 30 32 45 8 19 ...
#>  $ x: int  0 14 3 2 5 2 7 0 2 0 ...
```
