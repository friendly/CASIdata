
<!-- badges: start -->

[![CRAN_Status](http://www.r-pkg.org/badges/version/CASIdata)](https://cran.r-project.org/package=CASIdata)
[![Last
Commit](https://img.shields.io/github/last-commit/friendly/CASIdata)](https://github.com/friendly/CASIdata)
<!-- badges: end -->

# CASIdata<img src="man/figures/logo.jpg" style="float:right; height:200px;" />

CASIdata provides the datasets from Efron & Hastie, *Computer Age
Statistical Inference* in an accessible R format for those who want to
use them for teaching, study or to try to reproduce or extend analyses
from the book. They were downloaded from Trevor Hastie’s web site,
<http://hastie.su.domains/CASI_files/DATA/>, but quite a few files were
messy and required some processing to make into R datasets.

Even so, some of the datasets may require data cleaning, renaming of
variables, re-shaping or other tidying steps to be useful for analysis.
But that’s part of learning.

## Installation

This package is not yet on CRAN. You can install it from this GitHub
repo:

``` r
remotes::install.github("friendly/CASIdata")
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
| `DTI` | three-dimensional brain coordinates (voxels). |
| `galaxy` | category, and frequency count. |
| `haplotype` | European, Japanese, and African) at 100 SNP locations. From Section 13.5. |
| `insurance` | policy holders and the number of deaths. |
| `leukemia_small` | A larger dataset with 7128 genes is also available from the CASI website. |
| `ncog` | (NCOG), from Section 9.2. Patients were randomized to one of two treatment arms. |
| `nodes` | Data on lymph nodes removed from 844 cancer patients, from Figure 6.3. |
| `pediatric` | Survival data on 1620 children with cancer, from Section 9.4 and Table 9.6. |
| `police` | value suggests racial bias in policing behavior. |
| `prostz` | described on page 272. |
| `student_score` | Test scores for 22 students on 5 different exams, from Tables 3.1 and 10.1. |
| `supernova` | The goal is to predict magnitude from spectral energy measurements. |
| `vasoconstriction` | Data on vasoconstriction (lung constriction) response, from Table 13.2. |

## Missing Datasets

The following dataset appears in `data-raw/CASI-save.R` but is **not**
(yet) included in the package:

| Dataset | Reason |
|----|----|
| `SPAM` | Variable names need cleanup; requires mapping from UCI Spambase documentation |

See `data-raw/missing-datasets.md` for details on resolving this.

## External Datasets (Not Included)

These large datasets are referenced in the book but not included in the
package due to size constraints. They can be downloaded directly from
the sources listed below.

### CASI datasets (too large for CRAN)

- **protein_kernel**: 1708 x 1708 inner-product (kernel) matrix for
  human proteins (Section 19.6). Computed using a string kernel on
  bag-of-4-grams amino acid representations.
  - Source:
    <https://hastie.su.domains/CASI_files/DATA/protein_kernel.txt>
  - Load in R:
    `protein_kernel <- matrix(scan("http://hastie.su.domains/CASI_files/DATA/protein_kernel.txt", what=0), 1708, 1708)`
- **protein_label**: Response labels (-1/+1) for the 1708 proteins (45
  positives, 1663 negatives).
  - Source:
    <https://hastie.su.domains/CASI_files/DATA/protein_label.txt>
  - Load in R:
    `protein_label <- scan("http://hastie.su.domains/CASI_files/DATA/protein_label.txt", what=0)`
- **prostmat**: 6033 x 102 gene expression matrix comparing 50 controls
  vs 52 prostate cancer patients (Section 3.3).
  - Source: <https://hastie.su.domains/CASI_files/DATA/prostmat.csv>
  - Load in R:
    `prostmat <- read.csv("http://hastie.su.domains/CASI_files/DATA/prostmat.csv")`
  - Note: Column names need cleanup (see `data-raw/missing-datasets.md`
    for renaming code)
- **leukemia_big**: 7128 x 72 gene expression matrix (10MB). A larger
  version of `leukemia_small`.
  - Source: <https://hastie.su.domains/CASI_files/DATA/leukemia_big.csv>
  - Load in R:
    `leukemia_big <- read.csv("http://hastie.su.domains/CASI_files/DATA/leukemia_big.csv")`

### Image datasets (hosted externally)

- **CIFAR-100**: 100 image classes, 600 images each (32x32x3 color).
  Used in Chapter 18.
  - Source: <https://www.cs.toronto.edu/~kriz/cifar.html>
- **MNIST**: Handwritten digit database, 60K training + 10K test images
  (28x28 grayscale). Used in Chapter 18.
  - Source: <http://yann.lecun.com/exdb/mnist/>

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
library(CASIdata)
## basic example code
```
