# Cell Infusion Data

Human cell colonies infused with mouse nuclei in 5 different ratios over
1 to 5 days. From Table 8.2.

## Format

A data frame with 25 rows and 4 variables:

- thrived:

  Number of cells that thrived

- N:

  Colony size (number of cells)

- ratio:

  Ratio of mouse nuclei to human cells (1-5)

- time:

  Day of observation (1-5)

## Source

<https://hastie.su.domains/CASI_files/DATA/cellinfusion.txt>

## References

Efron, B. and Hastie, T. (2016). *Computer Age Statistical Inference*.
Cambridge University Press, Table 8.2.

## Examples

``` r
data(cellinfusion)
str(cellinfusion)
#> 'data.frame':    25 obs. of  4 variables:
#>  $ thrived: int  5 15 48 29 11 3 36 68 35 20 ...
#>  $ N      : int  31 77 126 92 53 28 78 116 52 52 ...
#>  $ ratio  : int  1 2 3 4 5 1 2 3 4 5 ...
#>  $ time   : int  1 1 1 1 1 2 2 2 2 2 ...
```
