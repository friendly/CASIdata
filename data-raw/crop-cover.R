# Crop CASI cover image to just the wave curl for hex logo

library(magick)

# Create figures directory if needed
if (!dir.exists("man/figures")) {
  dir.create("man/figures", recursive = TRUE)
}

# Read the image
img <- image_read("man/CASI-cover.jpg")
info <- image_info(img)
cat("Original dimensions:", info$width, "x", info$height, "\n")

# Crop to the wave curl area (upper portion, avoiding text)
# geometry format: WIDTHxHEIGHT+X_OFFSET+Y_OFFSET
# Focus on the turquoise wave curl - tighter crop to avoid author names
cropped <- image_crop(img, geometry = "350x200+78+0")

# Save the result
image_write(cropped, "man/figures/CASI-image.jpg", quality = 95)
cat("Saved cropped image to man/figures/CASI-image.jpg\n")

# Show new dimensions
info2 <- image_info(cropped)
cat("Cropped dimensions:", info2$width, "x", info2$height, "\n")
