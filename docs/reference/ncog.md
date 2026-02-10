# NCOG Head and Neck Cancer Data

Head and neck cancer survival data from the Northern California Oncology
Group (NCOG), from Section 9.2. Patients were randomized to one of two
treatment arms.

## Format

A data frame with survival time information and variables:

- t:

  Time in months until death or censoring

- d:

  Death indicator: 1 = death observed, 0 = censored

- arm:

  Treatment arm: "A" = Chemotherapy, "B" = Chemotherapy + Radiation

- day:

  Day of event/censoring

- month:

  Month of event/censoring

- year:

  Year of event/censoring

## Source

<https://hastie.su.domains/CASI_files/DATA/ncog.txt>

## References

Efron, B. and Hastie, T. (2016). *Computer Age Statistical Inference*.
Cambridge University Press, Section 9.2.

## Examples

``` r
data(ncog)
str(ncog)
#> 'data.frame':    96 obs. of  6 variables:
#>  $ day  : int  19 15 20 17 15 16 11 29 2 21 ...
#>  $ month: int  6 12 7 11 12 4 6 6 11 11 ...
#>  $ year : int  78 78 78 78 78 79 79 79 79 79 ...
#>  $ t    : int  248 160 319 277 440 91 241 594 157 140 ...
#>  $ d    : int  1 1 0 1 1 1 1 1 1 1 ...
#>  $ arm  : chr  "A" "A" "A" "A" ...
```
