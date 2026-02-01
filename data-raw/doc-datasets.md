# Dataset Documentation Notes

## Missing Datasets

The following datasets appear in `CASI-save.R` but are **not** included in the package:

| Dataset | Reason |
|---------|--------|
| `DTI` | Explicitly marked "NOT SAVED" in script (issue with extra `X` column) |
| `prostmat` | Marked "NOT saved" - needs variable name cleanup (control.1 -> control.01) |
| `protein_label` | Not saved; TODO note suggests combining with `protein_kernel` |
| `SPAM` | Script doesn't save it; TODO note about cleaning names |

## External Datasets (Not Included)

These large datasets are referenced in the book but hosted externally:

- **CIFAR-100**: 100 image classes, 600 images each (32x32x3 color)
  - Source: https://www.cs.toronto.edu/~kriz/cifar.html

- **MNIST**: Handwritten digit database, 60K training + 10K test images (28x28 grayscale)
  - Source: http://yann.lecun.com/exdb/mnist/

- **leukemia_big**: 7128 x 72 gene expression matrix (10MB)
  - Available from: https://hastie.su.domains/CASI_files/DATA/leukemia_big.csv

## Variable Renaming

Some datasets had variables renamed for clarity:

| Dataset | Original | Renamed |
|---------|----------|---------|
| `butterfly` | x, y | k, count |
| `police` | X2.411 | z |
| `prostz` | X1.47236666651029 | z |
| `galaxy` | Reshaped from wide to long format with `mag`, `red`, `freq` |

## Potential Improvements

1. **protein_kernel + protein_label**: Consider combining into a single `protein` dataset
2. **SPAM**: Could be added after cleaning variable names
3. **prostmat**: Could be added after fixing column name format
4. **DTI**: Investigate the extra `X` column issue
