# Missing Datasets - Resolution Notes

This document tracks the four datasets from `CASI-save.R` that are not yet included in the package,
along with notes on how to resolve the issues preventing their inclusion.

## 1. DTI (Diffusion Tensor Imaging)

**Book reference:** Figures 15.9 and 15.10

**Description:** Z scores comparing 6 dyslexic with 6 normal controls, computed at 15,443
three-dimensional brain coordinates (voxels).

**Issue:** The CSV file contains an extra `X` column that is just a row index (1, 2, 3, ...).

**Current structure:**
```r
DTI <- read.csv("http://hastie.su.domains/CASI_files/DATA/DTI.csv")
str(DTI)
# 'data.frame': 15443 obs. of  5 variables:
#  $ X     : int  1 2 3 4 5 ...
#  $ x     : int  33 34 35 36 32 ...
#  $ y     : int  17 17 17 17 18 ...
#  $ z     : int  24 24 24 24 24 ...
#  $ Zscore: num  -2.016 -0.802 -0.525 ...
```

**Resolution:** Simply remove the `X` column before saving:
```r
DTI <- read.csv("http://hastie.su.domains/CASI_files/DATA/DTI.csv")
DTI$X <- NULL
save(DTI, file = here::here("data", "DTI.RData"))
```

**Status:** Ready to include - straightforward fix.

---

## 2. prostmat (Prostate Gene Expression Matrix)

**Book reference:** Section 3.3, page 33

**Description:** A 6033 x 102 data matrix of genetic activity measurements. The first 50 columns
are control subjects, the last 52 columns are prostate cancer subjects.

**Issue:** Variable names don't sort properly because of inconsistent numbering:
- Controls: `control`, `control.1`, `control.2`, ..., `control.49` (50 total)
- Cancer: `cancer`, `cancer.1`, `cancer.2`, ..., `cancer.51` (52 total)

The first column in each group has no numeric suffix, and single-digit numbers lack leading zeros.

**Resolution:** Rename columns to use consistent zero-padded numbering:
```r
prostmat <- read.csv("http://hastie.su.domains/CASI_files/DATA/prostmat.csv")

# Rename control columns: control -> control00, control.1 -> control01, etc.
control_cols <- grep("^control", names(prostmat), value = TRUE)
new_control_names <- sprintf("control%02d", 0:49)
names(prostmat)[names(prostmat) %in% control_cols] <- new_control_names

# Rename cancer columns: cancer -> cancer00, cancer.1 -> cancer01, etc.
cancer_cols <- grep("^cancer", names(prostmat), value = TRUE)
new_cancer_names <- sprintf("cancer%02d", 0:51)
names(prostmat)[names(prostmat) %in% cancer_cols] <- new_cancer_names

save(prostmat, file = here::here("data", "prostmat.RData"))
```

**Status:** Ready to include - just needs column renaming.

---

## 3. protein_label

**Book reference:** Section 19.6

**Description:** Response labels for 1708 human proteins. Values are -1 or +1, with 45 positives
(particular protein class) and 1663 negatives. Used with `protein_kernel` for building a classifier.

**Issue:** Currently saved as a separate vector. Should be combined with `protein_kernel` for
easier use, but they have different structures (matrix vs vector).

**Options:**

### Option A: Save as separate dataset
```r
protein_label <- scan("http://hastie.su.domains/CASI_files/DATA/protein_label.txt", what = 0)
protein_label <- data.frame(label = protein_label)
save(protein_label, file = here::here("data", "protein_label.RData"))
```

### Option B: Create a combined `protein` list object
```r
protein_kernel <- matrix(
  scan("http://hastie.su.domains/CASI_files/DATA/protein_kernel.txt", what = 0),
  1708, 1708
)
protein_label <- scan("http://hastie.su.domains/CASI_files/DATA/protein_label.txt", what = 0)

protein <- list(
  kernel = protein_kernel,
  label = protein_label
)
save(protein, file = here::here("data", "protein.RData"))
```

### Option C: Keep `protein_kernel` as-is, add `protein_label` as separate dataset

This maintains backward compatibility with existing `protein_kernel` users.

**Recommendation:** Option C (or Option A) - keep them separate but both available.
The kernel matrix is 1708x1708 and used differently than the label vector.

**Status:** Ready to include - just needs decision on structure.

---

## 4. SPAM

**Book reference:** Table 8.3 and Chapter 16

**Description:** Email spam data with 4601 messages sent to "George" at HP-Labs.
1813 labeled as spam, remainder as ham. 57 word-frequency features plus metadata.

**Issue:** Variable names are problematic:
- Mysterious names: `X000`, `X650`, `X857`, `X415`, `X3d`
- Ill-formed R names: `ch.`, `ch..1`, `ch..2`, `ch..3`, `ch..4`, `ch..5`
- Need to map to meaningful names from original UCI repository

**Current variable names (59 columns):**
```
spam, testid, make, address, all, X3d, our, over, remove, internet, order, mail,
receive, will, people, report, addresses, free, business, email, you, credit,
your, font, X000, money, hp, hpl, george, X650, lab, labs, telnet, X857, data,
X415, X85, technology, X1999, parts, pm, direct, cs, meeting, original, project,
re, edu, table, conference, ch., ch..1, ch..2, ch..3, ch..4, ch..5,
capitalAve, capitalLong, capitalTotal
```

**Resolution steps:**

1. Consult UCI Spambase documentation: https://archive.ics.uci.edu/ml/datasets/Spambase

2. The UCI repository has attribute information that explains the features:
   - Word frequencies (48 continuous attributes for words like "make", "address", etc.)
   - Character frequencies (6 attributes for characters: `;`, `(`, `[`, `!`, `$`, `#`)
   - Capital letter statistics (3 attributes)

3. Proposed renaming:
   - `X000` → `word_000` (frequency of string "000")
   - `X650` → `word_650` (frequency of string "650")
   - `X857` → `word_857` (frequency of string "857")
   - `X415` → `word_415` (frequency of string "415" - area code)
   - `X3d` → `word_3d` (frequency of "3d")
   - `X85` → `word_85` (frequency of "85")
   - `X1999` → `word_1999` (frequency of "1999")
   - `ch.` → `char_semicolon`
   - `ch..1` → `char_paren`
   - `ch..2` → `char_bracket`
   - `ch..3` → `char_exclaim`
   - `ch..4` → `char_dollar`
   - `ch..5` → `char_hash`

4. Alternative: use `janitor::clean_names()` for syntactic validity, then manually fix
   the most confusing ones.

**Status:** Needs more work - requires careful mapping from UCI documentation.

---

## Summary

| Dataset | Difficulty | Ready? |
|---------|-----------|--------|
| DTI | Easy - just drop `X` column | Yes |
| prostmat | Easy - rename columns with zero-padding | Yes |
| protein_label | Easy - decide on structure | Yes |
| SPAM | Medium - needs UCI documentation lookup | Needs work |

## Next Steps

1. Add DTI, prostmat, and protein_label with the fixes described above
2. Research SPAM variable names from UCI repository
3. Add documentation to `R/data.R` for each new dataset
4. Run `tools::resaveRdaFiles("data")` for optimal compression
5. Update README.Rmd (will auto-generate dataset table)
