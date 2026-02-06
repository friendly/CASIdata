#' ALS Data
#'
#' Data on amyotrophic lateral sclerosis (Lou Gehrig's disease) from Section 17.2.
#' There are 1822 observations on individuals with ALS. The goal is to predict the
#' rate of progression dFRS of a functional rating score, using 369 predictors based
#' on measurements (and derivatives of these) obtained from patient visits.
#'
#' These data were kindly provided by Lester Mackey and Lilly Fang, who won the
#' DREAM challenge prediction prize in 2012 (Kuffner et al., 2015). It includes
#' some additional variables created by them. Their winning entry used Bayesian
#' trees, not too different from random forests.
#'
#' @name als
#' @docType data
#' @format A data frame with 1822 rows and 371 variables. The key variables are
#' \code{testset} (logical indicator for training/test split) and \code{dFRS}
#' (response: rate of progression of the ALS functional rating score). The 369
#' predictor variables include:
#' \itemize{
#'   \item Demographics: \code{Age}, \code{Sex.Male}, \code{Sex.Female}, and
#'     race indicators (\code{Race...Caucasian}, \code{Race...Asian}, etc.)
#'   \item Family history of neurological diseases in relatives (e.g.,
#'     \code{Father}, \code{Mother}, \code{Brother}, \code{Sister})
#'   \item Neurological disease indicators (e.g., \code{Neurological.Disease.ALS},
#'     \code{Neurological.Disease.PARKINSON.S.DISEASE})
#'   \item Site of onset (\code{Site.of.Onset.Onset..Bulbar},
#'     \code{Site.of.Onset.Onset..Limb})
#'   \item Symptoms (\code{Symptom.Atrophy}, \code{Symptom.Cramps},
#'     \code{Symptom.Fasciculations}, \code{Symptom.Speech}, etc.)
#'   \item Study arm indicators (\code{Study.Arm.ACTIVE}, \code{Study.Arm.PLACEBO})
#'   \item Clinical measurements with summary statistics (first, last, min, max,
#'     mean, sd, slope): ALSFRS scores, blood pressure, forced/slow vital capacity
#'     (\code{fvc.liters}, \code{svc.liters}), respiratory rate, weight, height
#'   \item ALSFRS subscale items: \code{climbing.stairs}, \code{cutting},
#'     \code{dressing}, \code{handwriting}, \code{salivation}, \code{speech},
#'     \code{swallowing}, \code{turning}, \code{walking}
#' }
#'
#' @source \url{https://hastie.su.domains/CASI_files/DATA/ALS.txt}
#' @references Efron, B. and Hastie, T. (2016). \emph{Computer Age Statistical Inference}.
#'   Cambridge University Press, Section 17.2.
#' @examples
#' data(als)
#' str(als)
NULL


#' Baseball Batting Averages
#'
#' Batting averages for 18 Major League players in the 1970 season, from Table 7.1.
#' This dataset illustrates empirical Bayes estimation, where early-season performance
#' is used to predict full-season batting averages.
#'
#' @name baseball
#' @docType data
#' @format A data frame with 18 rows and 3 variables:
#' \describe{
#'   \item{Player}{Player ID number}
#'   \item{MLE}{Batting average based on the first 90 at-bats of the season}
#'   \item{TRUTH}{Batting average for the remainder of the 1970 season}
#' }
#'
#' @source \url{https://hastie.su.domains/CASI_files/DATA/baseball.txt}
#' @references Efron, B. and Hastie, T. (2016). \emph{Computer Age Statistical Inference}.
#'   Cambridge University Press, Table 7.1.
#' @examples
#' data(baseball)
#' str(baseball)
NULL


#' Bivariate Normal Data
#'
#' 40 points generated from a bivariate normal distribution, with some entries missing.
#' From Figure 9.3.
#'
#' @name bivnorm
#' @docType data
#' @format A data frame with 40 rows and 2 variables:
#' \describe{
#'   \item{X1}{First variable}
#'   \item{X2}{Second variable}
#' }
#'
#' @source \url{https://hastie.su.domains/CASI_files/DATA/bivnorm.csv}
#' @references Efron, B. and Hastie, T. (2016). \emph{Computer Age Statistical Inference}.
#'   Cambridge University Press, Figure 9.3.
#' @examples
#' data(bivnorm)
#' str(bivnorm)
NULL


#' Butterfly Species Data
#'
#' Number of butterfly species seen a given number of times each in two years of trapping.
#' From Table 6.2. This is a frequency data frame.
#'
#' @name butterfly
#' @docType data
#' @format A data frame with 24 rows and 2 variables:
#' \describe{
#'   \item{k}{Number of times a species was trapped}
#'   \item{count}{Number of species seen exactly k times (e.g., 118 species trapped just once, 74 trapped twice each)}
#' }
#'
#' @source \url{https://hastie.su.domains/CASI_files/DATA/butterfly.txt}
#' @references Efron, B. and Hastie, T. (2016). \emph{Computer Age Statistical Inference}.
#'   Cambridge University Press, Table 6.2.
#' @examples
#' data(butterfly)
#' str(butterfly)
NULL


#' Cell Infusion Data
#'
#' Human cell colonies infused with mouse nuclei in 5 different ratios over 1 to 5 days.
#' From Table 8.2.
#'
#' @name cellinfusion
#' @docType data
#' @format A data frame with 25 rows and 4 variables:
#' \describe{
#'   \item{thrived}{Number of cells that thrived}
#'   \item{N}{Colony size (number of cells)}
#'   \item{ratio}{Ratio of mouse nuclei to human cells (1-5)}
#'   \item{time}{Day of observation (1-5)}
#' }
#'
#' @source \url{https://hastie.su.domains/CASI_files/DATA/cellinfusion.txt}
#' @references Efron, B. and Hastie, T. (2016). \emph{Computer Age Statistical Inference}.
#'   Cambridge University Press, Table 8.2.
#' @examples
#' data(cellinfusion)
#' str(cellinfusion)
NULL


#' Cholesterol Data
#'
#' Cholestyramine, a proposed cholesterol lowering drug, was administered to 164 men
#' for an average of seven years each. From Figure 20.1.
#'
#' @name cholesterol
#' @docType data
#' @format A data frame with 164 rows and 2 variables:
#' \describe{
#'   \item{compliance}{Fraction of intended dose actually taken (standardized)}
#'   \item{cholesterol.decrease}{Decrease in cholesterol level over the course of the experiment}
#' }
#'
#' @source \url{https://hastie.su.domains/CASI_files/DATA/cholesterol.txt}
#' @references Efron, B. and Hastie, T. (2016). \emph{Computer Age Statistical Inference}.
#'   Cambridge University Press, Figure 20.1.
#' @examples
#' data(cholesterol)
#' str(cholesterol)
NULL


#' Diabetes Data
#'
#' Data from 442 diabetes patients used in Section 7.3. The response is a quantitative
#' measure of disease progression one year after baseline. There are ten baseline
#' predictors: age, sex, body-mass index, average blood pressure, and six blood
#' serum measurements.
#'
#' First used in the LARS paper (Efron et al., 2004).
#'
#' Note: In Table 7.2, the centered predictor variables were standardized to unit L2
#' norm. In Table 20.1 they were standardized to unit variance.
#'
#' @name diabetes
#' @docType data
#' @format A data frame with 442 rows and 12 variables:
#' \describe{
#'   \item{X}{Row index}
#'   \item{age}{Age of patient}
#'   \item{sex}{Sex of patient}
#'   \item{bmi}{Body mass index}
#'   \item{map}{Average blood pressure (mean arterial pressure)}
#'   \item{tc}{Total cholesterol (serum measurement)}
#'   \item{ldl}{Low-density lipoproteins (serum measurement)}
#'   \item{hdl}{High-density lipoproteins (serum measurement)}
#'   \item{tch}{Total cholesterol / HDL (serum measurement)}
#'   \item{ltg}{Log of triglycerides (serum measurement)}
#'   \item{glu}{Blood sugar level (serum measurement)}
#'   \item{prog}{Response: quantitative measure of disease progression}
#' }
#'
#' @source \url{https://hastie.su.domains/CASI_files/DATA/diabetes.csv}
#' @references
#' Efron, B., Hastie, T., Johnstone, I. and Tibshirani, R. (2004). Least Angle Regression.
#'   \emph{Annals of Statistics}, 32(2), 407-499.
#'
#' Efron, B. and Hastie, T. (2016). \emph{Computer Age Statistical Inference}.
#'   Cambridge University Press, Section 7.3.
#' @examples
#' data(diabetes)
#' str(diabetes)
NULL


#' DTI Brain Imaging Data
#'
#' Diffusion Tensor Imaging (DTI) data comparing 6 dyslexic children with 6 normal
#' controls, from Figures 15.9 and 15.10. Z scores were computed at 15,443
#' three-dimensional brain coordinates (voxels).
#'
#' @name DTI
#' @docType data
#' @format A data frame with 15443 rows and 4 variables:
#' \describe{
#'   \item{x}{Voxel coordinate: back to front}
#'   \item{y}{Voxel coordinate: left to right}
#'   \item{z}{Voxel coordinate: bottom to top}
#'   \item{Zscore}{Z score comparing dyslexic vs normal controls at this voxel}
#' }
#'
#' @source \url{https://hastie.su.domains/CASI_files/DATA/DTI.csv}
#' @references Efron, B. and Hastie, T. (2016). \emph{Computer Age Statistical Inference}.
#'   Cambridge University Press, Figures 15.9 and 15.10.
#' @examples
#' data(DTI)
#' str(DTI)
NULL


#' Dose Response Data
#'
#' Data from 11 groups of mice (10 each) exposed to drug Xilathon at different doses.
#' From Figure 8.2.
#'
#' @name doseresponse
#' @docType data
#' @format A data frame with 11 rows and 2 variables:
#' \describe{
#'   \item{Dose}{Log dose level (each step is a doubling)}
#'   \item{Proportion}{Proportion of mice that died at that dose}
#' }
#'
#' @source \url{https://hastie.su.domains/CASI_files/DATA/doseresponse.txt}
#' @references Efron, B. and Hastie, T. (2016). \emph{Computer Age Statistical Inference}.
#'   Cambridge University Press, Figure 8.2.
#' @examples
#' data(doseresponse)
#' str(doseresponse)
NULL


#' Galaxy Data
#'
#' Counts of galaxies binned by redshift and magnitude, from Table 8.5. The data
#' have been reshaped into long format with variables for magnitude, redshift
#' category, and frequency count.
#'
#' @name galaxy
#' @docType data
#' @format A data frame with 270 rows and 3 variables:
#' \describe{
#'   \item{mag}{Magnitude category (1-18)}
#'   \item{red}{Redshift category (1-15)}
#'   \item{freq}{Number of galaxies in this bin}
#' }
#'
#' @source \url{https://hastie.su.domains/CASI_files/DATA/galaxy.txt}
#' @references Efron, B. and Hastie, T. (2016). \emph{Computer Age Statistical Inference}.
#'   Cambridge University Press, Table 8.5.
#' @examples
#' data(galaxy)
#' str(galaxy)
#'
#' library(car)
#'
#' ## Fit a main effects Poisson GLM
#' # This treats `mag` and `red` as numeric
#' galaxy.mod0 <- glm(freq ~ mag + red,
#'                    data = galaxy, family = poisson)
#' Anova(galaxy.mod0)
#'
#' ## Fit response surface model
#' galaxy.mod1 <- glm(freq ~ poly(mag,2) +
#'                      poly(red, 2) +
#'                      mag : red,
#'                    data = galaxy, family = poisson)
#' Anova(galaxy.mod1)
#' summary(galaxy.mod1)


NULL


#' Human Ancestry Haplotype Data
#'
#' Genotype data for 197 US individuals from 4 racial groups (African American,
#' European, Japanese, and African) at 100 SNP locations. From Section 13.5.
#'
#' @name haplotype
#' @docType data
#' @format A data frame with 197 rows and 102 variables. The first column
#' \code{X} is a row index, \code{race} is the racial/ethnic group identifier,
#' and the remaining 100 columns (\code{Snp1} through \code{Snp100}) contain
#' genotype values (0, 1, or 2) at each SNP location, with \code{NA} for
#' missing values.
#'
#' @source \url{https://hastie.su.domains/CASI_files/DATA/haplotype.csv}
#' @references Efron, B. and Hastie, T. (2016). \emph{Computer Age Statistical Inference}.
#'   Cambridge University Press, Section 13.5.
#' @examples
#' data(haplotype)
#' str(haplotype)
NULL


#' Insurance Life Table Data
#'
#' Insurance company life table from Table 9.1. At each age, gives the number of
#' policy holders and the number of deaths.
#'
#' @name insurance
#' @docType data
#' @format A data frame with rows for each age group and 3 variables:
#' \describe{
#'   \item{age}{Age of policy holders}
#'   \item{n}{Number of policy holders at this age}
#'   \item{y}{Number of deaths at this age}
#' }
#'
#' @source \url{https://hastie.su.domains/CASI_files/DATA/insurance.txt}
#' @references Efron, B. and Hastie, T. (2016). \emph{Computer Age Statistical Inference}.
#'   Cambridge University Press, Table 9.1.
#' @examples
#' data(insurance)
#' str(insurance)
NULL


#' Leukemia Gene Expression Data (Small)
#'
#' Gene expression measurements on 72 leukemia patients: 47 ALL (acute lymphoblastic
#' leukemia) and 25 AML (acute myeloid leukemia). From the landmark Golub et al. (1999)
#' Science paper. This smaller subset contains 3571 genes and is used in Section 19.1.
#'
#' A larger dataset with 7128 genes is also available from the CASI website.
#'
#' @name leukemia_small
#' @docType data
#' @format A data frame with 3571 rows (genes) and 72 columns (patients). Column names
#' indicate the class label (ALL or AML) for each patient.
#'
#' @source \url{https://hastie.su.domains/CASI_files/DATA/leukemia_small.csv}
#' @references
#' Golub, T.R., et al. (1999). Molecular Classification of Cancer: Class Discovery
#'   and Class Prediction by Gene Expression Monitoring. \emph{Science}, 286, 531-537.
#'
#' Efron, B. and Hastie, T. (2016). \emph{Computer Age Statistical Inference}.
#'   Cambridge University Press, Section 19.1.
#' @examples
#' data(leukemia_small)
#' str(leukemia_small)
NULL


#' NCOG Head and Neck Cancer Data
#'
#' Head and neck cancer survival data from the Northern California Oncology Group
#' (NCOG), from Section 9.2. Patients were randomized to one of two treatment arms.
#'
#' @name ncog
#' @docType data
#' @format A data frame with survival time information and variables:
#' \describe{
#'   \item{t}{Time in months until death or censoring}
#'   \item{d}{Death indicator: 1 = death observed, 0 = censored}
#'   \item{arm}{Treatment arm: "A" = Chemotherapy, "B" = Chemotherapy + Radiation}
#'   \item{day}{Day of event/censoring}
#'   \item{month}{Month of event/censoring}
#'   \item{year}{Year of event/censoring}
#' }
#'
#' @source \url{https://hastie.su.domains/CASI_files/DATA/ncog.txt}
#' @references Efron, B. and Hastie, T. (2016). \emph{Computer Age Statistical Inference}.
#'   Cambridge University Press, Section 9.2.
#' @examples
#' data(ncog)
#' str(ncog)
NULL


#' Lymph Nodes Cancer Data
#'
#' Data on lymph nodes removed from 844 cancer patients, from Figure 6.3.
#'
#' @name nodes
#' @docType data
#' @format A data frame with 844 rows and 2 variables:
#' \describe{
#'   \item{n}{Number of lymph nodes removed}
#'   \item{x}{Number of nodes found to be positive (malignant)}
#' }
#'
#' @source \url{https://hastie.su.domains/CASI_files/DATA/nodes.txt}
#' @references Efron, B. and Hastie, T. (2016). \emph{Computer Age Statistical Inference}.
#'   Cambridge University Press, Figure 6.3.
#' @examples
#' data(nodes)
#' str(nodes)
NULL


#' Pediatric Cancer Survival Data
#'
#' Survival data on 1620 children with cancer, from Section 9.4 and Table 9.6.
#'
#' @name pediatric
#' @docType data
#' @format A data frame with 1620 rows and 7 variables:
#' \describe{
#'   \item{sex}{Sex: 1 = male, 2 = female}
#'   \item{race}{Race: 1 = white, 2 = nonwhite}
#'   \item{age}{Age in years}
#'   \item{entry}{Calendar date of entry in days since July 1, 2001}
#'   \item{far}{Home distance from treatment center in miles}
#'   \item{t}{Survival time in days}
#'   \item{d}{Death indicator: 1 = death observed, 0 = censored}
#' }
#'
#' @source \url{https://hastie.su.domains/CASI_files/DATA/pediatric.txt}
#' @references Efron, B. and Hastie, T. (2016). \emph{Computer Age Statistical Inference}.
#'   Cambridge University Press, Section 9.4, Table 9.6.
#' @examples
#' data(pediatric)
#' str(pediatric)
NULL


#' Police Racial Bias Data
#'
#' Z scores for 2749 New York City police officers, from Figure 15.7. A large
#' value suggests racial bias in policing behavior.
#'
#' @name police
#' @docType data
#' @format A data frame with 2749 rows and 1 variable:
#' \describe{
#'   \item{z}{Z score measuring potential racial bias}
#' }
#'
#' @source \url{https://hastie.su.domains/CASI_files/DATA/police.txt}
#' @references Efron, B. and Hastie, T. (2016). \emph{Computer Age Statistical Inference}.
#'   Cambridge University Press, Figure 15.7.
#' @examples
#' data(police)
#' str(police)
NULL


#' Prostate Cancer Z-values
#'
#' Vector of 6033 z-values comparing gene expression between prostate cancer
#' patients and controls, as pictured in Figure 3.4. These were computed as
#' described on page 272.
#'
#' @name prostz
#' @docType data
#' @format A data frame with 6033 rows and 1 variable:
#' \describe{
#'   \item{z}{Z-value for each gene comparing cancer vs control expression}
#' }
#'
#' @source \url{https://hastie.su.domains/CASI_files/DATA/prostz.txt}
#' @references Efron, B. and Hastie, T. (2016). \emph{Computer Age Statistical Inference}.
#'   Cambridge University Press, Section 3.3, Figure 3.4.
#' @examples
#' data(prostz)
#' str(prostz)
NULL


#' Student Score Data
#'
#' Test scores for 22 students on 5 different exams, from Tables 3.1 and 10.1.
#'
#' @name student_score
#' @docType data
#' @format A data frame with 22 rows and 5 variables:
#' \describe{
#'   \item{mech}{Mechanics exam score}
#'   \item{vecs}{Vectors exam score}
#'   \item{alg}{Algebra exam score}
#'   \item{analy}{Analysis exam score}
#'   \item{stat}{Statistics exam score}
#' }
#'
#' @source \url{https://hastie.su.domains/CASI_files/DATA/student_score.txt}
#' @references Efron, B. and Hastie, T. (2016). \emph{Computer Age Statistical Inference}.
#'   Cambridge University Press, Tables 3.1 and 10.1.
#' @examples
#' data(student_score)
#' str(student_score)
NULL


#' Type Ia Supernova Data
#'
#' Measurements from 39 Type Ia supernovas, from Figure 12.1 and Table 12.1.
#' These supernovas were close enough to Earth to observe their actual magnitudes.
#' The goal is to predict magnitude from spectral energy measurements.
#'
#' @name supernova
#' @docType data
#' @format A data frame with 39 rows and 11 variables:
#' \describe{
#'   \item{Magnitude}{Actual observed magnitude of the supernova}
#'   \item{E1}{Spectral energy in frequency band 1}
#'   \item{E2}{Spectral energy in frequency band 2}
#'   \item{E3}{Spectral energy in frequency band 3}
#'   \item{E4}{Spectral energy in frequency band 4}
#'   \item{E5}{Spectral energy in frequency band 5}
#'   \item{E6}{Spectral energy in frequency band 6}
#'   \item{E7}{Spectral energy in frequency band 7}
#'   \item{E8}{Spectral energy in frequency band 8}
#'   \item{E9}{Spectral energy in frequency band 9}
#'   \item{E10}{Spectral energy in frequency band 10}
#' }
#'
#' @source \url{https://hastie.su.domains/CASI_files/DATA/supernova.txt}
#' @references Efron, B. and Hastie, T. (2016). \emph{Computer Age Statistical Inference}.
#'   Cambridge University Press, Figure 12.1, Table 12.1.
#' @examples
#' data(supernova)
#' str(supernova)
NULL


#' Vasoconstriction Data
#'
#' Data on vasoconstriction (lung constriction) response, from Table 13.2.
#'
#' @name vasoconstriction
#' @docType data
#' @format A data frame with 39 rows and 2 variables:
#' \describe{
#'   \item{volume}{Volume measurement}
#'   \item{constriction}{Logical: TRUE if constriction occurred, FALSE otherwise}
#' }
#'
#' @source \url{https://hastie.su.domains/CASI_files/DATA/vasoconstriction.txt}
#' @references Efron, B. and Hastie, T. (2016). \emph{Computer Age Statistical Inference}.
#'   Cambridge University Press, Table 13.2.
#' @examples
#' data(vasoconstriction)
#' str(vasoconstriction)
NULL
