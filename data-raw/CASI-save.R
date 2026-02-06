library(dplyr)

# Read and save the CASI data sets

#' ## ALS data of Section 17.2 (`als`)
#' These data concern amyotrophic lateral sclerosis (Lou Gerig's disease).
#' There are 1822 observations on individuals with ALS.
#' The goal is to predict the rate of progression dFRS of a functional rating score, using 369 predictors based on measurements (and derivatives of these) obtained from patient visits.
#'
#' The first variable in the file is `testset`, a logical variable indicating our devision into a training (FALSE) and a test (TRUE) set.
#' The next variable `dFRS` is the response, and the remaining columns are predictors.
#
als <- read.table("https://hastie.su.domains/CASI_files/DATA/ALS.txt",
                  header=TRUE)
dim(als)
# should use janitor::clean_names() !

save(als, file = here::here("data", "als.RData"))


#' ## Baseball data of Table 7.1 and elsewhere (`baseball`)
#'
#' The column labelled `MLE` is the batting average for 18 players in the 1970 season, using the first 90 at bats.
#' The column labelled `TRUTH` is the batting average for the remainder of the 1970 season.

baseball <- read.table("https://hastie.su.domains/CASI_files/DATA/baseball.txt",
                       header=TRUE)

str(baseball)

save(baseball, file = here::here("data", "baseball.RData"))


#' ## Bivariate Normal data from Figure 9.3 (`bivnorm`)
#'
#' 40 points generated from a bivariate normal distribution, with some entries missing.
#' Variables are: `X1, X2`

bivnorm <- read.csv("https://hastie.su.domains/CASI_files/DATA/bivnorm.csv")

str(bivnorm)
summary(bivnorm)

save(bivnorm, file = here::here("data", "bivnorm.RData"))


#' ## Butterfly data of Table 6.2 (`butterfly`)
#'
#' Number `y` of species seen `x` times each in two years of trapping;
#'
#' * 118 species trapped just once,
#' *  74 trapped twice each, etc.
#' * ...
#'
#' **NB**: This is what I call a "frequency data frame". I would label the variables `k` and `count`

butterfly <-  read.table("https://hastie.su.domains/CASI_files/DATA/butterfly.txt",
                         header=TRUE)

str(butterfly)

butterfly <- butterfly |>
  rename(k = x,
         count = y)

save(butterfly, file = here::here("data", "butterfly.RData"))


#' # Cell infusion data of Table 8.2 (`cellinfusion`)
#'
#' Human cell colonies infused with mouse nuclei in 5 different ratios over 1 to 5 days.
#' Outcome is the number that `thrived` out of the colony of size `N`

cellinfusion <-read.table("https://hastie.su.domains/CASI_files/DATA/cellinfusion.txt",
                          header=TRUE)

str(cellinfusion)

save(cellinfusion, file = here::here("data", "cellinfusion.RData"))


#' ## Cholesterol data of Figure 20.1 (`cholesterol`)
#'
#' Cholestyramine, a proposed cholesterol lowering drug, was administered to 164 men for an average of seven years each.
#'
#' The response variable is a man's decrease in cholesterol level over the course of the experiment.
#' The single predictor is compliance, the fraction of intended dose actually taken (standardized)

cholesterol<- read.table("https://hastie.su.domains/CASI_files/DATA/cholesterol.txt",
                         header=TRUE)
str(cholesterol)

save(cholesterol, file = here::here("data", "cholesterol.RData"))

#' ## CIFAR-100 image database
#'
#' This dataset is large, consisting of 100 image classes, with 600 images per class.
#' Each image is 32x32x3 (3 color), and the 600 images are divided into 500 training, and 100 test for each class.
#'
#' We do not reproduce the dataset here, but point to our source:
#'
#'   https://www.cs.toronto.edu/~kriz/cifar.html on Alex Krizhevsky's homepage at University of Toronto.
#'
#' We found the the `jpeg` package useful in R for producing Figure 18.8 (this one is rotated)
#'

#' ## Diabetes data of Section 7.3 (`diabetes`)
#'
#' These data consist of observations on 442 patients, with the response of interest being a quantitative measure of disease progression one year after baseline: prog
#' There are ten baseline variables---age, sex, body-mass index, average blood pressure, and six blood serum measurements.
#'
#' First used in [LARS paper](https://projecteuclid.org/euclid.aos/1083178935)
#'
#' Please note: in table 7.2, we standardized the centered predictor variables to be unit L2 norm. In table 20.1 we standardized to be unit variance. The unit norm standardization was inherited from our work on LARS, where Euclidean geometry played a role.

diabetes <- read.csv("https://hastie.su.domains/CASI_files/DATA/diabetes.csv")

#' The variable names are:
#'
names(diabetes)
str(diabetes)

save(diabetes, file = here::here("data", "diabetes.RData"))


#' ## Dose response data of Figure 8.2 (`doseresponse`)
#'
#' 11 groups of mice (10 each) exposed to drug Xilathon at different doses.
#' The `Dose` is on the log scale, each time a doubling.
#' The response `Proportion` is the fraction that died at that dose.

doseresponse <- read.table("https://hastie.su.domains/CASI_files/DATA/doseresponse.txt",
                           header=TRUE)
str(doseresponse)

save(doseresponse, file = here::here("data", "doseresponse.RData"))


#' ## DTI data of Figures 15.9 and 15.10 (`DTI`)
#'
#' Z scores comparing 6 dyslexic with 6 normal controls, computed at 15,443 three-dimensional
#' brain coordinates (voxels) with coordinates
#'
#' * `x` (back to front),
#' * `y` (left to right) and
#' * `z` (bottom to top) (see figures for details).

DTI <- read.csv("https://hastie.su.domains/CASI_files/DATA/DTI.csv")
str(DTI)

## Something weird here
# > str(DTI)
# 'data.frame':	15443 obs. of  5 variables:
#   $ X     : int  1 2 3 4 5 6 7 8 9 10 ...
# $ x     : int  33 34 35 36 32 33 34 35 36 37 ...
# $ y     : int  17 17 17 17 18 18 18 18 18 18 ...
# $ z     : int  24 24 24 24 24 24 24 24 24 24 ...
# $ Zscore: num  -2.016 -0.802 -0.525 -0.382 0.763 ...

# NOT SAVED

#' ## Galaxy data of Table 8.5 (`galaxy`)

#' Table of counts of galaxies binned into categories defined by redshift and magnitude
#' The column labels are log-redshift values, and the row labels magnitude.
#'
#' **NB**: Variable names have an inconsistent pattern.

galaxy <- read.table("https://hastie.su.domains/CASI_files/DATA/galaxy.txt",
                  header=TRUE)
str(galaxy)
# fix awful row/column names
library(dplyr)
library(tidyr)
library(stringr)

galaxy.tab <- galaxy
colnames(galaxy.tab) <- sprintf("red_%0d", 1:15)
galaxy.tab <- cbind(mag = 18:1, galaxy.tab)
# make a long dataset with `mag` and `red`
galaxy.df <- galaxy.tab |>
  pivot_longer(cols = -mag, values_to = "freq") |>
  mutate(red = stringr::str_replace(name, "red_", ""),
         red = as.numeric(red),
         mag = as.numeric(mag)) |>
  relocate(red, .after = "mag") |>
  select(-name)

str(galaxy.df)

# use this form
galaxy <- galaxy.df

save(galaxy, file = here::here("data", "galaxy.RData"))


#' ## MNIST handwritten digit database
#'
#' This is a database for handwritten digit classification, used in the Deep Learning chapter 18.
#' Each greyscale image is 28 x 28, representing the digits 0-9.
#' This dataset is large, consisting of 60,000 training images and 10,000 test images.
#'
#' We do not reproduce the dataset here, but point to our source:
#'
#'   http://yann.lecun.com/exdb/mnist/
#'   provided by Yann Le Cun, a well known neural network expert.
#'
#' Four files are available on this site:
#'
#' * `train-images-idx3-ubyte.gz`:  training set images (9912422 bytes)
#' * `train-labels-idx1-ubyte.gz`:  training set labels (28881 bytes)
#' * `t10k-images-idx3-ubyte.gz`:   test set images (1648877 bytes)
#' * `t10k-labels-idx1-ubyte.gz`:   test set labels (4542 bytes)

#' ## Human ancestry Section 13.5 (`haplotype`)
#'
#' 197 US individuals from 4 different racial groups African American, European, Japanese, and African.
#' For each we have the genotype (values 0,1 or 2) at 100 SNPs, with missing values indicated by `NA`.

haplotype <- read.csv("https://hastie.su.domains/CASI_files/DATA/haplotype.csv")
names(haplotype)

save(haplotype, file = here::here("data", "haplotype.RData"))


#' ## Insurance data of Table 9.1 (`insurance`)
#'
#' Insurance company life table.
#' At each `age`, `n` is the number of policy holders, and `y` the number of deaths.

insurance <- read.table("https://hastie.su.domains/CASI_files/DATA/insurance.txt",
                        header=TRUE)
str(insurance)

save(insurance, file = here::here("data", "insurance.RData"))


#' ## Leukemia data (`leukemia_small`)

#' Gene expression measurements on 72 leukemia patients, 47 `"ALL"` (see section 1.2), 25 `"AML"`.
#' These data arise from the landmark Golub et al (1999) Science paper.
#'
#' There is a larger set consisting of 7128 genes, which was used in Chapters 1, 10, 11, and possibly elsewhere.
#' It is stored as the 7128 x 72 matrix (10MB) `leukemia_big.csv`, with the column names denoting the class labels.
#' The histograms in Figure 1.4 arise from row 136 of this matrix, and the histogram in Figure 1.5 is of the 7128 two-sample t-test statistics on the rows (genes).
#' The data can be read directly into R via the command
#' leukemia_big <- read.csv("https://hastie.su.domains/CASI_files/DATA/leukemia_big.csv")
#'
#' There is also a smaller subset of these data, consisting of 3571 genes, used in Section 19.1.
#' It is stored as the 3571 x 72 matrix (5MB) leukemia_small.csv, with again the column names denoting the class labels.
#' The data can be read directly into R via the command
#'
#' `leukemia_small <- read.csv("https://hastie.su.domains/CASI_files/DATA/leukemia_small.csv")`
#'
#' Disclaimer: these data come with a data analysis challenge.
#' The columns of the two datasets are in different order.
#' Furthermore, the genes in the big dataset have been transformed, with the exact transformation used lost in time.
#' We also do not know the correspondence between the 3157 and 7128 genes.
#' The first person to solve this puzzle completely will be thanked and their name will appear forever on this page.

leukemia_small <- read.csv("https://hastie.su.domains/CASI_files/DATA/leukemia_small.csv")
names(leukemia_small)

save(leukemia_small, file = here::here("data", "leukemia_small.RData"))


#' ## NCOG data of Section 9.2 (`ncog`)

#' Head and neck cancer from the Northeren California Oncology Group (NCOG)
#' Data matrix gives detailed time information, with `t` (months till death/censoring) being used in our analysis.
#' The column `d` is the death(1)/censoring(0) indicator, and `arm` the treatment arm
#'
#' * `"A"`: Chemotherapy,
#' * `"B"` Chemotherapy + Radiation

ncog <- read.table("https://hastie.su.domains/CASI_files/DATA/ncog.txt",
                   header=TRUE)
str(ncog)

save(ncog, file = here::here("data", "ncog.RData"))


#' ## Nodes data of Figure 6.3 (`nodes`)

#' Lymph nodes removed from 844 cancer patients.
#' A two column matrix with
#'
#' * `n` the number of nodes removed,
#' * `x` the number found to be positive (malignant).

nodes <- read.table("https://hastie.su.domains/CASI_files/DATA/nodes.txt",
                    header=TRUE)
str(nodes)

save(nodes, file = here::here("data", "nodes.RData"))

#' ## Pediatric cancer data of Section 9.4 and Table 9.6 (`pediatric`)

#' Pediatric cancer data on 1620 children.
#'
#' * `sex`: 1 male, 2 female;
#' * `race`: 1 white, 2 nonwhite;
#' * `age`: in years;
#' * `entry`: calendar date of entry in days since July 1, 2001;
#' * `far`: home distance from treatment center in miles;
#' * `t`: survival time in days;
#' * `d`: 1 if death observed, 0 if not.

pediatric <- read.table("https://hastie.su.domains/CASI_files/DATA/pediatric.txt",
                        header=TRUE)
str(pediatric)

save(pediatric, file = here::here("data", "pediatric.RData"))


#' ## Police data of Figure 15.7 (`police`)

#' Z scores for 2749 New York City police officers.
#'
#' A large value suggests racial bias.

police <- read.table("https://hastie.su.domains/CASI_files/DATA/police.txt",
                     header=TRUE)
str(police)

#' Rename to 'z'
police <- police |>
  rename(z = X2.411)
str(police)

save(police, file = here::here("data", "police.RData"))




#' ## Prostate data of Section 3.3 and later (`prostmat`, `prostz`)

#' `prostmat.csv` is the 6033x102 data matrix discussed at the top of page 33.
#' The first 50 columns are the genetic activity measurements for the 50 control subjects,
#' while the last 52 columns represent the prostate cancer subjects.
#'

prostmat <- read.csv("https://hastie.su.domains/CASI_files/DATA/prostmat.csv")
names(prostmat)

# > names(prostmat)
#   [1] "control"    "control.1"  "control.2"  "control.3"  "control.4"  "control.5"  "control.6"  "control.7"  "control.8"
#  [10] "control.9"  "control.10" "control.11" "control.12" "control.13" "control.14" "control.15" "control.16" "control.17"
#  [19] "control.18" "control.19" "control.20" "control.21" "control.22" "control.23" "control.24" "control.25" "control.26"
#  [28] "control.27" "control.28" "control.29" "control.30" "control.31" "control.32" "control.33" "control.34" "control.35"
#  [37] "control.36" "control.37" "control.38" "control.39" "control.40" "control.41" "control.42" "control.43" "control.44"
#  [46] "control.45" "control.46" "control.47" "control.48" "control.49" "cancer"     "cancer.1"   "cancer.2"   "cancer.3"
#  [55] "cancer.4"   "cancer.5"   "cancer.6"   "cancer.7"   "cancer.8"   "cancer.9"   "cancer.10"  "cancer.11"  "cancer.12"
#  [64] "cancer.13"  "cancer.14"  "cancer.15"  "cancer.16"  "cancer.17"  "cancer.18"  "cancer.19"  "cancer.20"  "cancer.21"
#  [73] "cancer.22"  "cancer.23"  "cancer.24"  "cancer.25"  "cancer.26"  "cancer.27"  "cancer.28"  "cancer.29"  "cancer.30"
#  [82] "cancer.31"  "cancer.32"  "cancer.33"  "cancer.34"  "cancer.35"  "cancer.36"  "cancer.37"  "cancer.38"  "cancer.39"
#  [91] "cancer.40"  "cancer.41"  "cancer.42"  "cancer.43"  "cancer.44"  "cancer.45"  "cancer.46"  "cancer.47"  "cancer.48"
# [100] "cancer.49"  "cancer.50"  "cancer.51"


#' NOT SAVED. Should make variable names control.1 -> control.01, etc so they sort properly. But there are also
#' two variables with no suffix: `control` and `cancer`. Perhaps these should be `control00` and `cancer00`
#' which makes sense in relation to the description: 50 controls and 52 cancer patients.

#' `prostz` is the vector of 6033 z-values pictured in Figure 3.4. These were obtained as describe on page 272.
#'
prostz <- read.table("https://hastie.su.domains/CASI_files/DATA/prostz.txt",
                     header=TRUE)
str(prostz)

prostz <- prostz |>
  rename(z = X1.47236666651029)
str(prostz)

save(prostz, file = here::here("data", "prostz.RData"))



#' ## Protein classification Section 19.6 (`protein_kernel`, `protein_label`)

#' The data derive from 1708 human proteins.
#'
#' A protein is a string of amini acids, with an alphabet of size 20.
#' Each protein is represented by a bag of N-grams representation;
#' i.e. we record the number of occurrences for each possible N-tuple of amino acids (for us N=4).
#' What we actually have is the 1708x1708 inner-product matrix for such a representation.
#' This was computed using a string kernel (Leslie et al. 2003).
#'

protein_kernel <- matrix(scan("https://hastie.su.domains/CASI_files/DATA/protein_kernel.txt",
                              what=0),
                         1708, 1708)
dim(protein_kernel)
str(protein_kernel)

save(protein_kernel, file = here::here("data", "protein_kernel.RData"))


#' The response label takes values [-1, +1], there being 45 pluses (particular protein class), and 1663 minuses.
#' The idea is to build a classifier
#'
protein_label <- scan("https://hastie.su.domains/CASI_files/DATA/protein_label.txt",
                      what=0)
dim(protein_label)

# TODO: Combine protein_kernel with protein_label into a single dataset `protein`

#' ## Spam data Table 8.3, and Chapter 16 (`SPAM`)
#'
#' Email spam data. 4601 email messages sent to "George" at HP-Labs.
#' He labeled 1813 of these as spam, with the remainder being good email (ham).
#'
#' The goal is to build a customized spam filter for George.
#'
#' The feature set tracks 57 of the most commonly used, non-trivial words in the corpus, using a bag-of-words model.
#' Recorded for each email message is the relative frequency of each of these words and tokens.
#' Included as well are three different recordings of capitalized letters.
#'
#' These are a publicly available database, available from the UC Irvine data repository:
#'   archive.ics.uci.edu/ml/datasets/Spambase More details about the data can be found there.
#'
#' Our data matrix has 59 columns:
#'   `spam` Logical variable, `TRUE` is spam, `FALSE` is ham (good email).
#' `testid` Logical variable. An optional split into train (FALSE) and test (TRUE) data (as used in, for example "Elements of Statistical Learning").
#' The remainder of the columns are features used to build a prediction model.

SPAM <- read.csv("https://hastie.su.domains/CASI_files/DATA/SPAM.csv")
dim(SPAM)
names(SPAM)

# NOT SAVED
# TODO: The names of variables in this dataset are a mess. The description above says that these are 57 features related
#      to the most commonly used, non-trivial words, but some of these are quite mysterious (`X000`, `X650`, ) or
#      ill-formed for variable names in R (`ch.`, `ch..1`, ...). Perfhaps consult the UC Irvine data repository.
#
#

#' ## Student score data of tables 3.1 and 10.1 (`student_score`)

#' student_score.txt is the 22x5 matrix of student scores as used in Table 10.1 and Table 3.1.

student_score <- read.table("https://hastie.su.domains/CASI_files/DATA/student_score.txt",
                            header=TRUE)
str(student_score)

save(student_score, file = here::here("data", "student_score.RData"))


#' ## Supernova data of Figure 12.1 and Table 12.1 (`supernova`)

#' Measurements from 39 Type Ia supernovas.
#'
#' This is a regression dataset, with
#'
#' * `magnitude` the actual size of the supernova
#' * `E1-E10` the spectral energy in 10 different frequency bands.
#'
#' These supernovas were close enough to to earth to actually observe their magnitudes. The idea is to build a model for predicting the magnitude based on the 10 energy measurements.


supernova <- read.table("https://hastie.su.domains/CASI_files/DATA/supernova.txt", header=TRUE)
str(supernova)

save(supernova, file = here::here("data", "supernova.RData"))



#' ## Vasoconstriction data of Table 13.2 (`vasoconstriction`)

#' A 39 x 2 matrix, with columns
#' `volume`
#' * lung `constriction` : `TRUE` or `FALSE`

vasoconstriction <- read.table("https://hastie.su.domains/CASI_files/DATA/vasoconstriction.txt",
                               header=TRUE)
str(vasoconstriction)

save(vasoconstriction, file = here::here("data", "vasoconstriction.RData"))







