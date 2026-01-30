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
#' @format A data frame with 1822 rows and 371 variables:
#' \describe{
#'   \item{testset}{Logical variable indicating training (FALSE) or test (TRUE) set}
#'   \item{dFRS}{Response variable: rate of progression of functional rating score}
#'   \item{...}{369 predictor variables based on patient visit measurements}
#' }
#'
#' @source \url{https://hastie.su.domains/CASI_files/DATA/ALS.txt}
#' @references Efron, B. and Hastie, T. (2016). \emph{Computer Age Statistical Inference}.
#'   Cambridge University Press, Section 17.2.
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
NULL


#' Human Ancestry Haplotype Data
#'
#' Genotype data for 197 US individuals from 4 racial groups (African American,
#' European, Japanese, and African) at 100 SNP locations. From Section 13.5.
#'
#' @name haplotype
#' @docType data
#' @format A data frame with 197 rows and 101 variables:
#' \describe{
#'   \item{group}{Racial/ethnic group identifier}
#'   \item{SNP1, SNP2, ...}{Genotype values (0, 1, or 2) at each SNP location, with NA for missing values}
#' }
#'
#' @source \url{https://hastie.su.domains/CASI_files/DATA/haplotype.csv}
#' @references Efron, B. and Hastie, T. (2016). \emph{Computer Age Statistical Inference}.
#'   Cambridge University Press, Section 13.5.
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
NULL


#' Protein Classification Kernel Matrix
#'
#' A 1708 x 1708 inner-product (kernel) matrix derived from 1708 human proteins,
#' from Section 19.6. Each protein is represented using a bag of N-grams (N=4)
#' of amino acids, and the kernel was computed using a string kernel (Leslie et al., 2003).
#'
#' The corresponding labels are in the \code{protein_label} dataset (not included).
#'
#' @name protein_kernel
#' @docType data
#' @format A 1708 x 1708 numeric matrix of inner products.
#'
#' @source \url{https://hastie.su.domains/CASI_files/DATA/protein_kernel.txt}
#' @references
#' Leslie, C., Eskin, E., Cohen, A., Weston, J. and Noble, W.S. (2003). Mismatch
#'   String Kernels for SVM Protein Classification. \emph{Advances in NIPS 15}.
#'
#' Efron, B. and Hastie, T. (2016). \emph{Computer Age Statistical Inference}.
#'   Cambridge University Press, Section 19.6.
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
NULL
