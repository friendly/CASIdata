# Save prostmat dataset with fixed column names

prostmat <- read.csv("http://hastie.su.domains/CASI_files/DATA/prostmat.csv")

# Get current names
old_names <- names(prostmat)

# Create new names with zero-padding
new_names <- old_names
for (i in seq_along(old_names)) {
  nm <- old_names[i]
  if (nm == "control") {
    new_names[i] <- "control00"
  } else if (grepl("^control\\.", nm)) {
    num <- as.integer(sub("control\\.", "", nm))
    new_names[i] <- sprintf("control%02d", num)
  } else if (nm == "cancer") {
    new_names[i] <- "cancer00"
  } else if (grepl("^cancer\\.", nm)) {
    num <- as.integer(sub("cancer\\.", "", nm))
    new_names[i] <- sprintf("cancer%02d", num)
  }
}

names(prostmat) <- new_names

cat("Dimensions:", dim(prostmat), "\n")
cat("First 10 names:", head(names(prostmat), 10), "\n")
cat("Last 10 names:", tail(names(prostmat), 10), "\n")

save(prostmat, file = here::here("data", "prostmat.RData"))
cat("Saved to data/prostmat.RData\n")
