# DTI Brain Imaging Data

Diffusion Tensor Imaging (DTI) data comparing 6 dyslexic children with 6
normal controls, from Figures 15.9 and 15.10. Z scores were computed at
15,443 three-dimensional brain coordinates (voxels).

## Format

A data frame with 15443 rows and 4 variables:

- x:

  Voxel coordinate: back to front

- y:

  Voxel coordinate: left to right

- z:

  Voxel coordinate: bottom to top

- Zscore:

  Z score comparing dyslexic vs normal controls at this voxel

## Source

<https://hastie.su.domains/CASI_files/DATA/DTI.csv>

## References

Efron, B. and Hastie, T. (2016). *Computer Age Statistical Inference*.
Cambridge University Press, Figures 15.9 and 15.10.

## Examples

``` r
data(DTI)
str(DTI)
#> 'data.frame':    15443 obs. of  4 variables:
#>  $ x     : int  33 34 35 36 32 33 34 35 36 37 ...
#>  $ y     : int  17 17 17 17 18 18 18 18 18 18 ...
#>  $ z     : int  24 24 24 24 24 24 24 24 24 24 ...
#>  $ Zscore: num  -2.016 -0.802 -0.525 -0.382 0.763 ...
```
