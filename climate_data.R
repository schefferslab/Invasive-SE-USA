library(raster)


library(raster)
outdir <- tempdir() # Specify your preferred working directory

# Downloading and unzipping
tmin_url <- "http://biogeo.ucdavis.edu/data/worldclim/v2.1/base/wc2.1_30s_tmin.zip"
tmin_zip <- file.path(outdir, basename(tmin_url))

# 3 GB download!
download.file(tmin_url, tmin_zip, mode = "wb")
tmin_raw <- unzip(tmin_zip, list = TRUE)