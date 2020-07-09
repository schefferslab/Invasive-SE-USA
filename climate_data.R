library(raster)
library(readr)


outdir <- tempdir() # Specify your preferred working directory

# Downloading and unzipping
### 1960 - 1969
tmin_1960_url <- "http://biogeo.ucdavis.edu/data/worldclim/v2.1/hist/wc2.1_2.5m_tmin_1960-1969.zip"
tmin_1960_zip <- file.path(outdir, basename(tmin_1960_zip))

download.file(tmin_1960_url, tmin_1960_zip, mode = "wb")
tmin_1960_files <- unzip(tmin_1960_zip, list = TRUE)
tmin_1960 <- unzip(tmin_1960_zip, files = tmin_1960_files$Name, exdir = outdir) %>%
  raster::stack()
write(tmin_1960, "tmin_1960.rds")

### 1970 - 1979
tmin_1970_url <- "http://biogeo.ucdavis.edu/data/worldclim/v2.1/hist/wc2.1_2.5m_tmin_1970-1979.zip"
tmin_1970_zip <- file.path(outdir, basename(tmin_1970_url))

download.file(tmin_1970_url, tmin_1970_zip, mode = "wb")
tmin_1970_files <- unzip(tmin_1970_zip, list = TRUE)
tmin_1970 <- unzip(tmin_1970_zip, files = tmin_1970_files$Name, exdir = outdir) %>%
  raster::stack()
write(tmin_1970, "tmin_1970.rds")

### 1980 - 1989
tmin_1980_url <- "http://biogeo.ucdavis.edu/data/worldclim/v2.1/hist/wc2.1_2.5m_tmin_1980-1989.zip"
tmin_1980_zip <- file.path(outdir, basename(tmin_1980_url))

download.file(tmin_1980_url, tmin_1980_zip, mode = "wb")
tmin_1980_files <- unzip(tmin_1980_zip, list = TRUE)
tmin_1980 <- unzip(tmin_1980_zip, files = tmin_1980_files$Name, exdir = outdir) %>%
  raster::stack()
write(tmin_1980, "tmin_1980.rds")

### 1990 - 1999
tmin_1990_url <- "http://biogeo.ucdavis.edu/data/worldclim/v2.1/hist/wc2.1_2.5m_tmin_1990-1999.zip"
tmin_1990_zip <- file.path(outdir, basename(tmin_1990_url))

download.file(tmin_1990_url, tmin_1990_zip, mode = "wb")
tmin_1990_files <- unzip(tmin_1990_zip, list = TRUE)
tmin_1990 <- unzip(tmin_1990_zip, files = tmin_1990_files$Name, exdir = outdir) %>%
  raster::stack()
write(tmin_1990, "tmin_1990.rds")

### 2000 - 2009
tmin_2000_url <- "http://biogeo.ucdavis.edu/data/worldclim/v2.1/hist/wc2.1_2.5m_tmin_2000-2009.zip"
tmin_2000_zip <- file.path(outdir, basename(tmin_2000_url))

download.file(tmin_2000_url, tmin_2000_zip, mode = "wb")
tmin_2000_files <- unzip(tmin_2000_zip, list = TRUE)
tmin_2000 <- unzip(tmin_2000_zip, files = tmin_2000_files$Name, exdir = outdir) %>%
  raster::stack()
write(tmin_2000, "tmin_2000.rds")

### 2010 - 2018
tmin_2010_url <- "http://biogeo.ucdavis.edu/data/worldclim/v2.1/hist/wc2.1_2.5m_tmin_2010-2018.zip"
tmin_2010_zip <- file.path(outdir, basename(tmin_2010_url))

download.file(tmin_2010_url, tmin_2010_zip, mode = "wb")
tmin_2010_files <- unzip(tmin_2010_zip, list = TRUE)
tmin_2010 <- unzip(tmin_2010_zip, files = tmin_2010_files$Name, exdir = outdir) %>%
  raster::stack()
write(tmin_2010, "tmin_2010.rds")


