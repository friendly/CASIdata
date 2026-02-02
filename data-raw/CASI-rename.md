# Renaming CASI to CASIdata

Steps to rename the R package from `CASI` to `CASIdata`.

## Step 1: Rename GitHub Repository

1. Go to https://github.com/friendly/CASI
2. Click **Settings** → **General**
3. Change "Repository name" from `CASI` to `CASIdata`
4. Confirm the rename

GitHub will automatically redirect the old URL to the new one.

## Step 2: Update DESCRIPTION

Edit `DESCRIPTION` and change:

```
Package: CASI
```
to:
```
Package: CASIdata
```

Also update the URLs:
```
URL: https://github.com/friendly/CASIdata
BugReports: https://github.com/friendly/CASIdata/issues
```

## Step 3: Update README.md

Make these changes:

1. Title (line 2):
   - `# CASI` → `# CASIdata`

2. CRAN badge (line 6):
   - Change `package=CASI` to `package=CASIdata`

3. GitHub badge (line 8):
   - Change `friendly/CASI` to `friendly/CASIdata` (appears twice on this line)

4. Description text (line 11):
   - `CASI provides` → `CASIdata provides`

5. Installation command (line 28):
   - `remotes::install.github("friendly/CASI")` → `remotes::install.github("friendly/CASIdata")`

6. Example code (line 98):
   - `library(CASI)` → `library(CASIdata)`

## Step 4: Update NEWS.md

Change version headers:

- `## CASI 0.1.0` → `## CASIdata 0.1.0`
- `## CASI 0.0.1` → `## CASIdata 0.0.1`

## Step 5: Rename Project File (Optional)

Rename the RStudio project file:
- `CASI.Rproj` → `CASIdata.Rproj`

## Step 6: Rebuild Package

Run in R:

```r
devtools::document()
devtools::check()
```

## Step 7: Update Local Git Remote (if needed)

If you have a local clone with the old remote URL:

```bash
git remote set-url origin https://github.com/friendly/CASIdata.git
```

## Step 8: Commit and Push

```bash
git add -A
git commit -m "Rename package from CASI to CASIdata"
git push
```

## Notes

- The NAMESPACE file is auto-generated and will update when you run `devtools::document()`
- The `R/data.R` file has no package name references and doesn't need changes
- The `LICENSE.md` file is standard GPL text and doesn't need changes
