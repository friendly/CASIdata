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
"als"


#' Bivariate Normal Data
#'
#' 40 points generated from a bivariate normal distribution, with some entries missing.
#' From Figure 9.3.
#'
#' @format A data frame with 40 rows and 2 variables:
#' \describe{
#'   \item{X1}{First variable}
#'   \item{X2}{Second variable}
#' }
#'
#' @source \url{https://hastie.su.domains/CASI_files/DATA/bivnorm.csv}
#' @references Efron, B. and Hastie, T. (2016). \emph{Computer Age Statistical Inference}.
#'   Cambridge University Press, Figure 9.3.
"bivnorm"


#' Butterfly Species Data
#'
#' Number of butterfly species seen a given number of times each in two years of trapping.
#' From Table 6.2. This is a frequency data frame.
#'
#' @format A data frame with 24 rows and 2 variables:
#' \describe{
#'   \item{k}{Number of times a species was trapped}
#'   \item{count}{Number of species seen exactly k times (e.g., 118 species trapped just once, 74 trapped twice each)}
#' }
#'
#' @source \url{https://hastie.su.domains/CASI_files/DATA/butterfly.txt}
#' @references Efron, B. and Hastie, T. (2016). \emph{Computer Age Statistical Inference}.
#'   Cambridge University Press, Table 6.2.
"butterfly"


#' Cell Infusion Data
#'
#' Human cell colonies infused with mouse nuclei in 5 different ratios over 1 to 5 days.
#' From Table 8.2.
#'
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
"cellinfusion"


#' Cholesterol Data
#'
#' Cholestyramine, a proposed cholesterol lowering drug, was administered to 164 men
#' for an average of seven years each. From Figure 20.1.
#'
#' @format A data frame with 164 rows and 2 variables:
#' \describe{
#'   \item{compliance}{Fraction of intended dose actually taken (standardized)}
#'   \item{cholesterol.decrease}{Decrease in cholesterol level over the course of the experiment}
#' }
#'
#' @source \url{https://hastie.su.domains/CASI_files/DATA/cholesterol.txt}
#' @references Efron, B. and Hastie, T. (2016). \emph{Computer Age Statistical Inference}.
#'   Cambridge University Press, Figure 20.1.
"cholesterol"
