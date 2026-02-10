# Student Score Data

Test scores for 22 students on 5 different exams, from Tables 3.1 and
10.1.

## Format

A data frame with 22 rows and 5 variables:

- mech:

  Mechanics exam score

- vecs:

  Vectors exam score

- alg:

  Algebra exam score

- analy:

  Analysis exam score

- stat:

  Statistics exam score

## Source

<https://hastie.su.domains/CASI_files/DATA/student_score.txt>

## References

Efron, B. and Hastie, T. (2016). *Computer Age Statistical Inference*.
Cambridge University Press, Tables 3.1 and 10.1.

## Examples

``` r
data(student_score)
str(student_score)
#> 'data.frame':    22 obs. of  5 variables:
#>  $ mech : int  7 44 49 59 34 46 0 32 49 52 ...
#>  $ vecs : int  51 69 41 70 42 40 40 45 57 64 ...
#>  $ alg  : int  43 53 61 68 50 47 21 49 47 60 ...
#>  $ analy: int  17 53 49 62 47 29 9 57 39 63 ...
#>  $ stat : int  22 53 64 56 29 17 14 64 26 54 ...
```
