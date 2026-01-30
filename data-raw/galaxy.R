#' ---
#' title: Analysis of galaxy data
#' ---

#' ## Load packages
library(dplyr)
library(tidyr)
library(stringr)
library(car)
library(effects)
library(ggplot2)
library(rsm)
#library(MASS)
#library(vcdExtra)


galaxy <- read.table("http://hastie.su.domains/CASI_files/DATA/galaxy.txt",
                     header=TRUE)
str(galaxy)

#' ## fix awful row/column names
#' 
galaxy.tab <- galaxy
colnames(galaxy.tab) <- sprintf("red_%0d", 1:15)
galaxy.tab <- cbind(mag = 18:1, galaxy.tab)
head(galaxy.tab)

#' ## make a long dataset with `magnitude` and `redshift`
galaxy.df <- galaxy.tab |>
  pivot_longer(cols = -mag, values_to = "freq") |>
  mutate(red = stringr::str_replace(name, "red_", ""),
         red = as.numeric(red)) |>
  relocate(red, .after = "mag") |>
  rename(magnitude = mag, redshift = red) |>
  select(-name)

str(galaxy.df)
head(galaxy.df)
summary(galaxy.df)


#' ## Fit a main effects Poisson GLM
#' This treats `magnitude` and `redshift` as numeric

galaxy.mod0 <- glm(freq ~ magnitude + redshift, 
                   data = galaxy.df, family = poisson)
Anova(galaxy.mod0)
deviance(galaxy.mod0)

# ## Response surface model
galaxy.mod1 <- glm(freq ~ poly(magnitude,2) + 
                     poly(redshift, 2) + 
                     magnitude : redshift, 
                   data = galaxy.df, family = poisson)
Anova(galaxy.mod1)
summary(galaxy.mod1)

galaxy.mod1 <- glm(freq ~ poly(magnitude, redshift, degree=2), 
         data=galaxy.df, family=poisson)
summary(m)


#' ## compare models
anova(galaxy.mod0, galaxy.mod1)

#' ## check for overdispersion
#' 
AER::dispersiontest(galaxy.mod1)

galaxy.mod2 <- glm(freq ~ magnitude + I(magnitude^2) + 
                     redshift + I(redshift^2) + 
                     magnitude : redshift, 
                   data = galaxy.df, family = quasipoisson)

Anova(galaxy.mod2)


#' ## Effect plots

plot(allEffects(galaxy.mod1))

# plot specific effects
predictorEffects(galaxy.mod1, c("magnitude")) |>
  plot(lines = list(multiline = TRUE,
                    col = colorspace::sequential_hcl(n=5),
                    lty = 1:5, lwd = 2),
       lattice = list(key.args = list(columns = 5)),
       xlab = "Magnitude (dimmer)",
       ylab = "Number of galaxies"
  )

predictorEffects(galaxy.mod1, c("redshift")) |>
  plot(lines = list(multiline = TRUE,
                    col = colorRampPalette(c("lightblue", "black"))(5),
                    lty = 1:5, lwd = 2),
       lattice = list(key.args = list(columns = 5)),
       xlab = "Redshift (farther)",
       ylab = "Number of galaxies"
  )

#' ## response surface plots
library(rsm)

persp(galaxy.mod1,  magnitude ~ redshift,
      zlab = "log Number of galaxies",
      col = rainbow(20))


#' ## Get fitted values
#' Find predicted counts of galaxies. There's a standard error avaiable, in case you want to
#' try to show uncertainty
pred <- predict(galaxy.mod1, 
                type = "response",
                se.fit = TRUE) |>
  as.data.frame() |>
  select(-residual.scale)

head(pred)

#' Combine with the data

galaxy.df <- cbind(galaxy.df, pred)


#' ## Contour plots
library(ggplot2)

#' Start with basic plot of points sized by frequency
ggplot(galaxy.df,
       aes(x = redshift, y = magnitude)) +
  geom_point(aes(size = freq), alpha = 0.5) +
  scale_size(range = c(0.1, 6)) +
  theme_bw(base_size = 14)

ggplot(galaxy.df,
       aes(x = redshift, y = magnitude)) +
  geom_contour_filled(aes(z = freq)) +
  geom_point(aes(size = freq), alpha = 0.5) +
  scale_size(range = c(0.1, 6), guide = "none") +
  theme_bw(base_size = 14)

ggplot(galaxy.df,
       aes(x = redshift, y = magnitude)) +
  geom_contour_filled(aes(z = fit), color = "white") +
  geom_point(aes(size = freq), alpha = 0.5) +
#  scale_fill_gradient() +
  scale_fill_brewer(palette = "Spectral") +
  scale_size(range = c(0.1, 6)) +
  theme_bw(base_size = 14)


#' ## Try geom_density_2d
#' This doesn't work! 
#' `geom_density2d()` accepts the weight parameter, but doesn't pass it to `MASS::kde2d()`, 
#' since that function has no weights. 
ggplot(galaxy.df,
       aes(x = redshift, y = magnitude)) +
  geom_density_2d(aes(weight = freq))

#' ## Transform to case form
#' Observations in `galaxy.df` represent frequencies. The data.frame can be
galaxy.obs <- galaxy.df |>
  tidyr::uncount(weights = freq)

ggplot(galaxy.obs,
       aes(x = redshift, y = magnitude)) +
  geom_density_2d_filled() +
  scale_fill_brewer(palette = "Spectral") +
  theme_bw(base_size = 14)


#' ## response surface plots
library(rsm)

persp(galaxy.mod1,  magnitude ~ redshift,
      zlab = "Number of galaxies",
      col = terrain.colors(20))


image(galaxy.mod1, magnitude ~ redshift,
      xlab = c("Magnitude", "Red shift"))

contour(galaxy.mod1, magnitude ~ redshift,
        xlab = c("Magnitude", "Red shift"))

persp(galaxy.mod1, magnitude ~ redshift, zlab = "Frequency")


