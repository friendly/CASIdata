# Police Racial Bias Data

Z scores for 2749 New York City police officers, from Figure 15.7. A
large value suggests racial bias in policing behavior.

## Format

A data frame with 2749 rows and 1 variable:

- z:

  Z score measuring potential racial bias

## Source

<https://hastie.su.domains/CASI_files/DATA/police.txt>

## References

Efron, B. and Hastie, T. (2016). *Computer Age Statistical Inference*.
Cambridge University Press, Figure 15.7.

## Examples

``` r
data(police)
str(police)
#> 'data.frame':    2748 obs. of  1 variable:
#>  $ z: num  0.161 -0.852 0.151 1.836 2.04 ...
```
