# Galaxy Data

Counts of galaxies binned by redshift and magnitude, from Table 8.5. The
data have been reshaped into long format with variables for magnitude,
redshift category, and frequency count.

## Format

A data frame with 270 rows and 3 variables:

- mag:

  Magnitude category (1-18)

- red:

  Redshift category (1-15)

- freq:

  Number of galaxies in this bin

## Source

<https://hastie.su.domains/CASI_files/DATA/galaxy.txt>

## References

Efron, B. and Hastie, T. (2016). *Computer Age Statistical Inference*.
Cambridge University Press, Table 8.5.

## Examples

``` r
data(galaxy)
str(galaxy)
#> tibble [270 × 3] (S3: tbl_df/tbl/data.frame)
#>  $ mag : num [1:270] 18 18 18 18 18 18 18 18 18 18 ...
#>  $ red : num [1:270] 1 2 3 4 5 6 7 8 9 10 ...
#>  $ freq: int [1:270] 1 6 6 3 1 4 6 8 8 20 ...

library(car)
#> Loading required package: carData

## Fit a main effects Poisson GLM
# This treats `mag` and `red` as numeric
galaxy.mod0 <- glm(freq ~ mag + red,
                   data = galaxy, family = poisson)
Anova(galaxy.mod0)
#> Analysis of Deviance Table (Type II tests)
#> 
#> Response: freq
#>     LR Chisq Df Pr(>Chisq)    
#> mag   550.14  1     <2e-16 ***
#> red     0.37  1      0.543    
#> ---
#> Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

## Fit response surface model
galaxy.mod1 <- glm(freq ~ poly(mag,2) +
                     poly(red, 2) +
                     mag : red,
                   data = galaxy, family = poisson)
Anova(galaxy.mod1)
#> Analysis of Deviance Table (Type II tests)
#> 
#> Response: freq
#>              LR Chisq Df Pr(>Chisq)    
#> poly(mag, 2)   21.985  2  1.682e-05 ***
#> poly(red, 2)  118.250  2  < 2.2e-16 ***
#> mag:red        84.865  1  < 2.2e-16 ***
#> ---
#> Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
summary(galaxy.mod1)
#> 
#> Call:
#> glm(formula = freq ~ poly(mag, 2) + poly(red, 2) + mag:red, family = poisson, 
#>     data = galaxy)
#> 
#> Coefficients:
#>                 Estimate Std. Error z value Pr(>|z|)    
#> (Intercept)    -3.811462   0.493534  -7.723 1.14e-14 ***
#> poly(mag, 2)1   5.776525   2.638998   2.189   0.0286 *  
#> poly(mag, 2)2  -5.687651   1.416418  -4.016 5.93e-05 ***
#> poly(red, 2)1 -41.800538   5.221878  -8.005 1.20e-15 ***
#> poly(red, 2)2  -6.450992   0.916376  -7.040 1.93e-12 ***
#> mag:red         0.039162   0.004836   8.099 5.55e-16 ***
#> ---
#> Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
#> 
#> (Dispersion parameter for poisson family taken to be 1)
#> 
#>     Null deviance: 903.68  on 269  degrees of freedom
#> Residual deviance: 230.32  on 264  degrees of freedom
#> AIC: 647.35
#> 
#> Number of Fisher Scoring iterations: 6
#> 
```
