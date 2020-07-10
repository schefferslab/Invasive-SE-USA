library(raster)
library(readr)
library(elevatr)
library(tidyverse)
library(tigris)

##################################################################################################################################
####################################################### Shapefiles ###############################################################
##################################################################################################################################
states <- states(cb=T)
se <- states[states$NAME %in% c("Virginia","North Carolina","South Carolina","Georgia",
                               "Florida","Alabama","Tennessee","Arkansas","Mississippi",
                               "Louisiana"),]
write_rds(se, "se.rds")
##################################################################################################################################



##################################################################################################################################
####################################################### World Clim ###############################################################
##################################################################################################################################
outdir <- tempdir() # Specify your preferred working directory

##################################### Min Temp ##################################### 
### 1960 - 1969
# tmin_1960_url <- "http://biogeo.ucdavis.edu/data/worldclim/v2.1/hist/wc2.1_2.5m_tmin_1960-1969.zip"
# tmin_1960_zip <- file.path(outdir, basename(tmin_1960_url))
# 
# download.file(tmin_1960_url, tmin_1960_zip, mode = "wb")
# tmin_1960_files <- unzip(tmin_1960_zip, list = TRUE)
# tmin_1960 <- unzip(tmin_1960_zip, files = tmin_1960_files$Name, exdir = outdir) %>%
#   raster::stack() %>%
#   crop(se) %>%
#   mask(se)
tmin_1960 <- read_rds("tmin_1960.rds") %>%
  crop(se) %>%
  mask(se)

write_rds(tmin_1960, "tmin_1960.rds")

### 1970 - 1979
# tmin_1970_url <- "http://biogeo.ucdavis.edu/data/worldclim/v2.1/hist/wc2.1_2.5m_tmin_1970-1979.zip"
# tmin_1970_zip <- file.path(outdir, basename(tmin_1970_url))
# 
# download.file(tmin_1970_url, tmin_1970_zip, mode = "wb")
# tmin_1970_files <- unzip(tmin_1970_zip, list = TRUE)
# tmin_1970 <- unzip(tmin_1970_zip, files = tmin_1970_files$Name, exdir = outdir) %>%
#   raster::stack() %>%
#   crop(se) %>%
#   mask(se)
tmin_1970 <- read_rds("tmin_1970.rds") %>%
  crop(se) %>%
  mask(se)

write_rds(tmin_1970, "tmin_1970.rds")

### 1980 - 1989
# tmin_1980_url <- "http://biogeo.ucdavis.edu/data/worldclim/v2.1/hist/wc2.1_2.5m_tmin_1980-1989.zip"
# tmin_1980_zip <- file.path(outdir, basename(tmin_1980_url))
# 
# download.file(tmin_1980_url, tmin_1980_zip, mode = "wb")
# tmin_1980_files <- unzip(tmin_1980_zip, list = TRUE)
# tmin_1980 <- unzip(tmin_1980_zip, files = tmin_1980_files$Name, exdir = outdir) %>%
#   raster::stack() %>%
#   crop(se) %>%
#   mask(se)

tmin_1980 <- read_rds("tmin_1980.rds") %>%
  crop(se) %>%
  mask(se)

write_rds(tmin_1980, "tmin_1980.rds")

### 1990 - 1999
# tmin_1990_url <- "http://biogeo.ucdavis.edu/data/worldclim/v2.1/hist/wc2.1_2.5m_tmin_1990-1999.zip"
# tmin_1990_zip <- file.path(outdir, basename(tmin_1990_url))
# 
# download.file(tmin_1990_url, tmin_1990_zip, mode = "wb")
# tmin_1990_files <- unzip(tmin_1990_zip, list = TRUE)
# tmin_1990 <- unzip(tmin_1990_zip, files = tmin_1990_files$Name, exdir = outdir) %>%
#   raster::stack() %>%
#   crop(se) %>%
#   mask(se)

tmin_1990 <- read_rds("tmin_1990.rds") %>%
  crop(se) %>%
  mask(se)

write_rds(tmin_1990, "tmin_1990.rds")

### 2000 - 2009
# tmin_2000_url <- "http://biogeo.ucdavis.edu/data/worldclim/v2.1/hist/wc2.1_2.5m_tmin_2000-2009.zip"
# tmin_2000_zip <- file.path(outdir, basename(tmin_2000_url))
# 
# download.file(tmin_2000_url, tmin_2000_zip, mode = "wb")
# tmin_2000_files <- unzip(tmin_2000_zip, list = TRUE)
# tmin_2000 <- unzip(tmin_2000_zip, files = tmin_2000_files$Name, exdir = outdir) %>%
#   raster::stack() %>%
#   crop(se) %>%
#   mask(se)
tmin_2000 <- read_rds("tmin_2000.rds") %>%
  crop(se) %>%
  mask(se)

write_rds(tmin_2000, "tmin_2000.rds")

### 2010 - 2018
# tmin_2010_url <- "http://biogeo.ucdavis.edu/data/worldclim/v2.1/hist/wc2.1_2.5m_tmin_2010-2018.zip"
# tmin_2010_zip <- file.path(outdir, basename(tmin_2010_url))
# 
# download.file(tmin_2010_url, tmin_2010_zip, mode = "wb")
# tmin_2010_files <- unzip(tmin_2010_zip, list = TRUE)
# tmin_2010 <- unzip(tmin_2010_zip, files = tmin_2010_files$Name, exdir = outdir) %>%
#   raster::stack() %>%
#   crop(se) %>%
#   mask(se)

tmin_2010 <- read_rds("tmin_2010.rds") %>%
  crop(se) %>%
  mask(se)

write_rds(tmin_2010, "tmin_2010.rds")


##################################### Max Temp ##################################### 
### 1960 - 1969
tmax_1960_url <- "http://biogeo.ucdavis.edu/data/worldclim/v2.1/hist/wc2.1_2.5m_tmax_1960-1969.zip"
tmax_1960_zip <- file.path(outdir, basename(tmax_1960_url))

download.file(tmax_1960_url, tmax_1960_zip, mode = "wb")
tmax_1960_files <- unzip(tmax_1960_zip, list = TRUE)
tmax_1960 <- unzip(tmax_1960_zip, files = tmax_1960_files$Name, exdir = outdir) %>%
  raster::stack() %>%
  crop(se) %>%
  mask(se)

write_rds(tmax_1960, "tmax_1960.rds")

### 1970 - 1979
tmax_1970_url <- "http://biogeo.ucdavis.edu/data/worldclim/v2.1/hist/wc2.1_2.5m_tmax_1970-1979.zip"
tmax_1970_zip <- file.path(outdir, basename(tmax_1970_url))

download.file(tmax_1970_url, tmax_1970_zip, mode = "wb")
tmax_1970_files <- unzip(tmax_1970_zip, list = TRUE)
tmax_1970 <- unzip(tmax_1970_zip, files = tmax_1970_files$Name, exdir = outdir) %>%
  raster::stack() %>%
  crop(se) %>%
  mask(se)

write_rds(tmax_1970, "tmax_1970.rds")

### 1980 - 1989
tmax_1980_url <- "http://biogeo.ucdavis.edu/data/worldclim/v2.1/hist/wc2.1_2.5m_tmax_1980-1989.zip"
tmax_1980_zip <- file.path(outdir, basename(tmax_1980_url))

download.file(tmax_1980_url, tmax_1980_zip, mode = "wb")
tmax_1980_files <- unzip(tmax_1980_zip, list = TRUE)
tmax_1980 <- unzip(tmax_1980_zip, files = tmax_1980_files$Name, exdir = outdir) %>%
  raster::stack() %>%
  crop(se) %>%
  mask(se)

write_rds(tmax_1980, "tmax_1980.rds")

### 1990 - 1999
tmax_1990_url <- "http://biogeo.ucdavis.edu/data/worldclim/v2.1/hist/wc2.1_2.5m_tmax_1990-1999.zip"
tmax_1990_zip <- file.path(outdir, basename(tmax_1990_url))

download.file(tmax_1990_url, tmax_1990_zip, mode = "wb")
tmax_1990_files <- unzip(tmax_1990_zip, list = TRUE)
tmax_1990 <- unzip(tmax_1990_zip, files = tmax_1990_files$Name, exdir = outdir) %>%
  raster::stack() %>%
  crop(se) %>%
  mask(se)

write_rds(tmax_1990, "tmax_1990.rds")

### 2000 - 2009
tmax_2000_url <- "http://biogeo.ucdavis.edu/data/worldclim/v2.1/hist/wc2.1_2.5m_tmax_2000-2009.zip"
tmax_2000_zip <- file.path(outdir, basename(tmax_2000_url))

download.file(tmax_2000_url, tmax_2000_zip, mode = "wb")
tmax_2000_files <- unzip(tmax_2000_zip, list = TRUE)
tmax_2000 <- unzip(tmax_2000_zip, files = tmax_2000_files$Name, exdir = outdir) %>%
  raster::stack() %>%
  crop(se) %>%
  mask(se)

write_rds(tmax_2000, "tmax_2000.rds")

### 2010 - 2018
tmax_2010_url <- "http://biogeo.ucdavis.edu/data/worldclim/v2.1/hist/wc2.1_2.5m_tmax_2010-2018.zip"
tmax_2010_zip <- file.path(outdir, basename(tmax_2010_url))

download.file(tmax_2010_url, tmax_2010_zip, mode = "wb")
tmax_2010_files <- unzip(tmax_2010_zip, list = TRUE)
tmax_2010 <- unzip(tmax_2010_zip, files = tmax_2010_files$Name, exdir = outdir) %>%
  raster::stack() %>%
  crop(se) %>%
  mask(se)

write_rds(tmax_2010, "tmax_2010.rds")


##################################### prec ##################################### 
### 1960 - 1969
tprecip_1960_url <- "http://biogeo.ucdavis.edu/data/worldclim/v2.1/hist/wc2.1_2.5m_prec_1960-1969.zip"
tprecip_1960_zip <- file.path(outdir, basename(tprecip_1960_url))

download.file(tprecip_1960_url, tprecip_1960_zip, mode = "wb")
tprecip_1960_files <- unzip(tprecip_1960_zip, list = TRUE)
tprecip_1960 <- unzip(tprecip_1960_zip, files = tprecip_1960_files$Name, exdir = outdir) %>%
  raster::stack() %>%
  crop(se) %>%
  mask(se)
write_rds(tprecip_1960, "tprecip_1960.rds")

### 1970 - 1979
tprecip_1970_url <- "http://biogeo.ucdavis.edu/data/worldclim/v2.1/hist/wc2.1_2.5m_prec_1970-1979.zip"
tprecip_1970_zip <- file.path(outdir, basename(tprecip_1970_url))

download.file(tprecip_1970_url, tprecip_1970_zip, mode = "wb")
tprecip_1970_files <- unzip(tprecip_1970_zip, list = TRUE)
tprecip_1970 <- unzip(tprecip_1970_zip, files = tprecip_1970_files$Name, exdir = outdir) %>%
  raster::stack() %>%
  crop(se) %>%
  mask(se)
write_rds(tprecip_1970, "tprecip_1970.rds")

### 1980 - 1989
tprecip_1980_url <- "http://biogeo.ucdavis.edu/data/worldclim/v2.1/hist/wc2.1_2.5m_prec_1980-1989.zip"
tprecip_1980_zip <- file.path(outdir, basename(tprecip_1980_url))

download.file(tprecip_1980_url, tprecip_1980_zip, mode = "wb")
tprecip_1980_files <- unzip(tprecip_1980_zip, list = TRUE)
tprecip_1980 <- unzip(tprecip_1980_zip, files = tprecip_1980_files$Name, exdir = outdir) %>%
  raster::stack() %>%
  crop(se) %>%
  mask(se)
write_rds(tprecip_1980, "tprecip_1980.rds")

### 1990 - 1999
tprecip_1990_url <- "http://biogeo.ucdavis.edu/data/worldclim/v2.1/hist/wc2.1_2.5m_prec_1990-1999.zip"
tprecip_1990_zip <- file.path(outdir, basename(tprecip_1990_url))

download.file(tprecip_1990_url, tprecip_1990_zip, mode = "wb")
tprecip_1990_files <- unzip(tprecip_1990_zip, list = TRUE)
tprecip_1990 <- unzip(tprecip_1990_zip, files = tprecip_1990_files$Name, exdir = outdir) %>%
  raster::stack() %>%
  crop(se) %>%
  mask(se)
write_rds(tprecip_1990, "tprecip_1990.rds")

### 2000 - 2009
tprecip_2000_url <- "http://biogeo.ucdavis.edu/data/worldclim/v2.1/hist/wc2.1_2.5m_prec_2000-2009.zip"
tprecip_2000_zip <- file.path(outdir, basename(tprecip_2000_url))

download.file(tprecip_2000_url, tprecip_2000_zip, mode = "wb")
tprecip_2000_files <- unzip(tprecip_2000_zip, list = TRUE)
tprecip_2000 <- unzip(tprecip_2000_zip, files = tprecip_2000_files$Name, exdir = outdir) %>%
  raster::stack() %>%
  crop(se) %>%
  mask(se)
write_rds(tprecip_2000, "tprecip_2000.rds")

### 2010 - 2018
tprecip_2010_url <- "http://biogeo.ucdavis.edu/data/worldclim/v2.1/hist/wc2.1_2.5m_tprecip_2010-2018.zip"
tprecip_2010_zip <- file.path(outdir, basename(tprecip_2010_url))

download.file(tprecip_2010_url, tprecip_2010_zip, mode = "wb")
tprecip_2010_files <- unzip(tprecip_2010_zip, list = TRUE)
tprecip_2010 <- unzip(tprecip_2010_zip, files = tprecip_2010_files$Name, exdir = outdir) %>%
  raster::stack() %>%
  crop(se) %>%
  mask(se)
write_rds(tprecip_2010, "tprecip_2010.rds")
##################################################################################################################################


##################################################################################################################################
################################################# digital elevation processing ###################################################
##################################################################################################################################
se_AWS <- get_elev_raster(se, z = 7)
se_AWS <- se_AWS %>%
  crop(se) %>%
  mask(se)
names(se_AWS) <- "elv"

geolayers <- list()
geolayers[["elv"]]     <- se_AWS 
geolayers[["slope"]]   <- terrain(se_AWS, opt="slope",     neighbors=4)
geolayers[["aspect"]]  <- terrain(se_AWS, opt="aspect",    neighbors=4)
geolayers[["flowdir"]] <- terrain(se_AWS, opt="flowdir",   neighbors=8)
geolayers[["tri"]]     <- terrain(se_AWS, opt="TRI",       neighbors=8)
geolayers[["tpi"]]     <- terrain(se_AWS, opt="TPI",       neighbors=8)
geolayers[["rough"]]   <- terrain(se_AWS, opt="roughness", neighbors=8)
geostack <- stack(geolayers)
write_rds(geostack, "geostack.rds")
rm(geolayers)

png("geolayers90.png", height = 8, width = 10, units = "in", res = 600)
plot(geostack)
dev.off()

geostack <- read_rds("geostack.rds")
##################################################################################################################################