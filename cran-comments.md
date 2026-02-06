## Test environments
* local Windows 10, R version 4.5.2 (2025-10-31 ucrt) 
* win-builder R Under development (unstable) (2026-02-04 r89376 ucrt)

## R CMD check results

0 errors | 0 warnings | 1 note

* This is a new submission.

* Possibly misspelled words in DESCRIPTION:
  Efron (7:41)
  Hastie (7:49)

  These are false positives -- they're the names of authors


## Version 0.2.0

* Removed datasets too large for a CRAN package: `protein_kernel`, `prosmat`
* Added vignette on building a package logo with AI help
* Build pkgdown site
