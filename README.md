
# CASI

<!-- badges: start -->

[![CRAN_Status](http://www.r-pkg.org/badges/version/CASI)](https://cran.r-project.org/package=CASI)
[![Last
Commit](https://img.shields.io/github/last-commit/friendly/CASI)](https://github.com/friendly/CASI)
<!-- badges: end -->

CASI provides the datasets from Efron & Hastie, *Computer Age
Statistical Inference* in an accessible R format for those who want to
use them for study or to try to reproduce analyses from the book. They
were downloaded from Trevor Hastie’s web site,
<http://hastie.su.domains/CASI_files/DATA/>, but quite a few files were
messy and required some processing to make into R datasets.

Even so, some of the datasets may require data cleaning, renaming of
variables, re-shaping or other tidying steps to be useful for analysis.
But that’s part of learning.

## Installation

This package is not yet on CRAN. You can install it from this GitHub
repo:

``` r
remotes::install.github("friendly/CASI")
```

## Datasets included here

| Dataset | Title |
|:---|:---|
| `als` | trees, not too different from random forests. |
| `baseball` | is used to predict full-season batting averages. |
| `bivnorm` | From Figure 9.3. |
| `butterfly` | From Table 6.2. This is a frequency data frame. |
| `cellinfusion` | From Table 8.2. |
| `cholesterol` | for an average of seven years each. From Figure 20.1. |
| `diabetes` | norm. In Table 20.1 they were standardized to unit variance. |
| `doseresponse` | From Figure 8.2. |
| `galaxy` | category, and frequency count. |
| `haplotype` | European, Japanese, and African) at 100 SNP locations. From Section 13.5. |
| `insurance` | policy holders and the number of deaths. |
| `leukemia_small` | A larger dataset with 7128 genes is also available from the CASI website. |
| `ncog` | (NCOG), from Section 9.2. Patients were randomized to one of two treatment arms. |
| `nodes` | Data on lymph nodes removed from 844 cancer patients, from Figure 6.3. |
| `pediatric` | Survival data on 1620 children with cancer, from Section 9.4 and Table 9.6. |
| `police` | value suggests racial bias in policing behavior. |
| `prostz` | described on page 272. |
| `protein_kernel` | The corresponding labels are in the  dataset (not included). |
| `student_score` | Test scores for 22 students on 5 different exams, from Tables 3.1 and 10.1. |
| `supernova` | The goal is to predict magnitude from spectral energy measurements. |
| `vasoconstriction` | Data on vasoconstriction (lung constriction) response, from Table 13.2. |

## Missing Datasets

The following datasets appear in `data-raw/CASI-save.R` but are **not**
(yet) included in the package:

| Dataset | Reason |
|----|----|
| `DTI` | Explicitly marked “NOT SAVED” in script (issue with extra `X` column) |
| `prostmat` | Marked “NOT saved” - needs variable name cleanup (control.1 -\> control.01) |
| `protein_label` | Not saved; TODO note suggests combining with `protein_kernel` |
| `SPAM` | Script doesn’t save it; TODO note about cleaning names |

## External Datasets (Not Included)

These large datasets are referenced in the book but hosted externally:

- **CIFAR-100**: 100 image classes, 600 images each (32x32x3 color)
  - Source: <https://www.cs.toronto.edu/~kriz/cifar.html>
- **MNIST**: Handwritten digit database, 60K training + 10K test images
  (28x28 grayscale)
  - Source: <http://yann.lecun.com/exdb/mnist/>
- **leukemia_big**: 7128 x 72 gene expression matrix (10MB)
  - Available from:
    <https://hastie.su.domains/CASI_files/DATA/leukemia_big.csv>

## Variable Renaming

Some datasets had variables renamed for clarity:

| Dataset | Original | Renamed |
|----|----|----|
| `butterfly` | x, y | k, count |
| `police` | X2.411 | z |
| `prostz` | X1.47236666651029 | z |
| `galaxy` | Reshaped from wide to long format with `mag`, `red`, `freq` |  |

## Example

No examples yet.

``` r
library(CASI)
## basic example code
```
