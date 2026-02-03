# ALS Data

Data on amyotrophic lateral sclerosis (Lou Gehrig's disease) from
Section 17.2. There are 1822 observations on individuals with ALS. The
goal is to predict the rate of progression dFRS of a functional rating
score, using 369 predictors based on measurements (and derivatives of
these) obtained from patient visits.

## Format

A data frame with 1822 rows and 371 variables. The key variables are
`testset` (logical indicator for training/test split) and `dFRS`
(response: rate of progression of the ALS functional rating score). The
369 predictor variables include:

- Demographics: `Age`, `Sex.Male`, `Sex.Female`, and race indicators
  (`Race...Caucasian`, `Race...Asian`, etc.)

- Family history of neurological diseases in relatives (e.g., `Father`,
  `Mother`, `Brother`, `Sister`)

- Neurological disease indicators (e.g., `Neurological.Disease.ALS`,
  `Neurological.Disease.PARKINSON.S.DISEASE`)

- Site of onset (`Site.of.Onset.Onset..Bulbar`,
  `Site.of.Onset.Onset..Limb`)

- Symptoms (`Symptom.Atrophy`, `Symptom.Cramps`,
  `Symptom.Fasciculations`, `Symptom.Speech`, etc.)

- Study arm indicators (`Study.Arm.ACTIVE`, `Study.Arm.PLACEBO`)

- Clinical measurements with summary statistics (first, last, min, max,
  mean, sd, slope): ALSFRS scores, blood pressure, forced/slow vital
  capacity (`fvc.liters`, `svc.liters`), respiratory rate, weight,
  height

- ALSFRS subscale items: `climbing.stairs`, `cutting`, `dressing`,
  `handwriting`, `salivation`, `speech`, `swallowing`, `turning`,
  `walking`

## Source

<https://hastie.su.domains/CASI_files/DATA/ALS.txt>

## Details

These data were kindly provided by Lester Mackey and Lilly Fang, who won
the DREAM challenge prediction prize in 2012 (Kuffner et al., 2015). It
includes some additional variables created by them. Their winning entry
used Bayesian trees, not too different from random forests.

## References

Efron, B. and Hastie, T. (2016). *Computer Age Statistical Inference*.
Cambridge University Press, Section 17.2.
