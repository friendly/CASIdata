# Human Ancestry Haplotype Data

Genotype data for 197 US individuals from 4 racial groups (African
American, European, Japanese, and African) at 100 SNP locations. From
Section 13.5.

## Format

A data frame with 197 rows and 102 variables. The first column `X` is a
row index, `race` is the racial/ethnic group identifier, and the
remaining 100 columns (`Snp1` through `Snp100`) contain genotype values
(0, 1, or 2) at each SNP location, with `NA` for missing values.

## Source

<https://hastie.su.domains/CASI_files/DATA/haplotype.csv>

## References

Efron, B. and Hastie, T. (2016). *Computer Age Statistical Inference*.
Cambridge University Press, Section 13.5.
