library(lattice)

#Galaxy <- read.table(here::here("galaxy-2.txt")) # without first (redshift) row

Galaxy <- read.table(text =
"21.38 1 6 6 3 1 4 6 8 8 20 10 7 16 9 4
21.13 3 2 3 4 0 5 7 6 6 7 5 7 6 8 5
20.88 3 2 3 3 3 2 9 9 6 3 5 4 5 2 1
20.63 1 1 4 3 4 3 2 3 8 9 4 3 4 1 1
20.38 1 3 2 3 3 4 5 7 6 7 3 4 0 0 1
20.13 3 2 4 5 3 6 4 3 2 2 5 1 0 0 0
19.88 2 0 2 4 5 4 2 3 3 0 1 2 0 0 1
19.63 4 1 1 4 7 3 3 1 2 0 1 1 0 0 0
19.38 1 0 0 2 2 2 1 2 0 0 0 1 2 0 0
19.13 1 1 0 2 2 2 0 0 0 0 1 0 0 0 0
18.88 1 0 0 0 1 1 0 0 0 0 1 1 0 0 0
18.63 0 1 0 1 1 0 0 0 0 0 0 0 0 0 0
18.38 0 0 3 1 1 0 0 0 0 0 0 0 0 0 0
18.13 0 3 1 1 0 0 0 0 0 0 0 0 0 0 0
17.88 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0
17.63 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
17.38 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
17.13 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0
")
Galaxy <- Galaxy[, -1] # delete magnitude column
magnitude <- 18:1
redshift <- 1:15
G <- matrix(0, nrow=18*15, ncol=3)
i <- 0
for (m in 1:18) {
  for (r in 1:15){
    i <- i + 1
    G[i, 1] <- magnitude[m]
    G[i, 2] <- redshift[r]
    G[i, 3] <- Galaxy[m, r]
  }
}
colnames(G) <- c("magnitude", "redshift", "count")
G <- as.data.frame(G)

m <- glm(count ~ poly(magnitude, redshift, degree=2), 
         family=poisson, data=G)
summary(m)

G$fit <- predict(m, type="response")


# contour plot
contourplot(fit ~ magnitude*redshift, data=G,
            region = TRUE, alpha.regions = 0.4,
            at=c(0.01, 0.1, 0.5, 1, 2, 3, 4, 6, 8, 12),
            lwd = 2,
            main="fitted count",
            xlab = "Magnitude (dimmer)",
            ylab = "Red shift (farther)")


# counts
wireframe(count ~ magnitude*redshift, data=G, 
          zlab="Galaxies",
          scales=list(y=list(at=c(5, 10, 15)), arrows=FALSE),
          alpha.regions = 0.4,
          shade=TRUE)

# fitted surface
wireframe(fit ~ magnitude*redshift, data=G, 
          zlab="fitted \ncount\n(sqrt) ",
          scales=list(y=list(at=c(5, 10, 15)), arrows=FALSE),
          alpha.regions = 0.4,
          shade=TRUE)


