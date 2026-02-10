# Type Ia Supernova Data

Measurements from 39 Type Ia supernovas, from Figure 12.1 and Table
12.1. These supernovas were close enough to Earth to observe their
actual magnitudes. The goal is to predict magnitude from spectral energy
measurements.

## Format

A data frame with 39 rows and 11 variables:

- Magnitude:

  Actual observed magnitude of the supernova

- E1:

  Spectral energy in frequency band 1

- E2:

  Spectral energy in frequency band 2

- E3:

  Spectral energy in frequency band 3

- E4:

  Spectral energy in frequency band 4

- E5:

  Spectral energy in frequency band 5

- E6:

  Spectral energy in frequency band 6

- E7:

  Spectral energy in frequency band 7

- E8:

  Spectral energy in frequency band 8

- E9:

  Spectral energy in frequency band 9

- E10:

  Spectral energy in frequency band 10

## Source

<https://hastie.su.domains/CASI_files/DATA/supernova.txt>

## References

Efron, B. and Hastie, T. (2016). *Computer Age Statistical Inference*.
Cambridge University Press, Figure 12.1, Table 12.1.

## Examples

``` r
data(supernova)
str(supernova)
#> 'data.frame':    39 obs. of  11 variables:
#>  $ E1       : num  -0.839 -1.892 0.264 -0.083 0.411 ...
#>  $ E2       : num  -0.927 -0.455 -0.803 1.023 -0.807 ...
#>  $ E3       : num  0.32 2.407 1.141 -0.206 -0.129 ...
#>  $ E4       : num  0.176 0.766 -0.863 -1.115 1.315 ...
#>  $ E5       : num  -0.676 -0.944 0.685 -0.863 -0.647 -0.782 -0.457 -0.291 0.172 0.19 ...
#>  $ E6       : num  -1.272 -1.527 -0.354 0.715 0.299 ...
#>  $ E7       : num  0.342 0.088 -1.038 0.616 -0.822 ...
#>  $ E8       : num  -0.427 0.261 -1.098 0.564 -1.534 ...
#>  $ E9       : num  -0.016 0.185 -1.319 0.615 -1.486 ...
#>  $ E10      : num  -0.298 -0.537 -1.695 -0.488 -1.087 ...
#>  $ Magnitude: num  -0.543 2.124 -0.217 0.946 -3.746 ...
```
