library(raster)
library(readr)
library(elevatr)
library(tidyverse)
library(tigris)
library(tidyverse)


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
tmin_1960 <- read_rds("tmin_1960.rds")
tmin_1960 <- tmin_1960 %>%
  crop(se) %>%
  mask(se)
plot(tmin_1960)
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

prec_1960_url <- "http://biogeo.ucdavis.edu/data/worldclim/v2.1/hist/wc2.1_2.5m_prec_1960-1969.zip"
prec_1960_zip <- file.path(outdir, basename(prec_1960_url))

download.file(prec_1960_url, prec_1960_zip, mode = "wb")
prec_1960_files <- unzip(prec_1960_zip, list = TRUE)
prec_1960 <- unzip(prec_1960_zip, files = prec_1960_files$Name, exdir = outdir) %>%
  raster::stack() %>%
  crop(se) %>%
  mask(se)
write_rds(prec_1960, "prec_1960.rds")

tmin_1960_url <- "http://biogeo.ucdavis.edu/data/worldclim/v2.1/hist/wc2.1_2.5m_tmin_1960-1969.zip"
tmin_1960_zip <- file.path(outdir, basename(tmin_1960_url))

download.file(tmin_1960_url, tmin_1960_zip, mode = "wb")
tmin_1960_files <- unzip(tmin_1960_zip, list = TRUE)
tmin_1960 <- unzip(tmin_1960_zip, files = tmin_1960_files$Name, exdir = outdir) %>%
  raster::stack()
write_rds(tmin_1960, "tmin_1960.rds")


### 1970 - 1979
prec_1970_url <- "http://biogeo.ucdavis.edu/data/worldclim/v2.1/hist/wc2.1_2.5m_prec_1970-1979.zip"
prec_1970_zip <- file.path(outdir, basename(prec_1970_url))


download.file(prec_1970_url, prec_1970_zip, mode = "wb")
prec_1970_files <- unzip(prec_1970_zip, list = TRUE)
prec_1970 <- unzip(prec_1970_zip, files = prec_1970_files$Name, exdir = outdir) %>%
  raster::stack() %>%
  crop(se) %>%
  mask(se)
write_rds(prec_1970, "prec_1970.rds")

download.file(tmin_1970_url, tmin_1970_zip, mode = "wb")
tmin_1970_files <- unzip(tmin_1970_zip, list = TRUE)
tmin_1970 <- unzip(tmin_1970_zip, files = tmin_1970_files$Name, exdir = outdir) %>%
  raster::stack()
write_rds(tmin_1970, "tmin_1970.rds")


### 1980 - 1989
prec_1980_url <- "http://biogeo.ucdavis.edu/data/worldclim/v2.1/hist/wc2.1_2.5m_prec_1980-1989.zip"
prec_1980_zip <- file.path(outdir, basename(prec_1980_url))


download.file(prec_1980_url, prec_1980_zip, mode = "wb")
prec_1980_files <- unzip(prec_1980_zip, list = TRUE)
prec_1980 <- unzip(prec_1980_zip, files = prec_1980_files$Name, exdir = outdir) %>%
  raster::stack() %>%
  crop(se) %>%
  mask(se)
write_rds(prec_1980, "prec_1980.rds")

download.file(tmin_1980_url, tmin_1980_zip, mode = "wb")
tmin_1980_files <- unzip(tmin_1980_zip, list = TRUE)
tmin_1980 <- unzip(tmin_1980_zip, files = tmin_1980_files$Name, exdir = outdir) %>%
  raster::stack()
write_rds(tmin_1980, "tmin_1980.rds")


### 1990 - 1999
prec_1990_url <- "http://biogeo.ucdavis.edu/data/worldclim/v2.1/hist/wc2.1_2.5m_prec_1990-1999.zip"
prec_1990_zip <- file.path(outdir, basename(prec_1990_url))


download.file(prec_1990_url, prec_1990_zip, mode = "wb")
prec_1990_files <- unzip(prec_1990_zip, list = TRUE)
prec_1990 <- unzip(prec_1990_zip, files = prec_1990_files$Name, exdir = outdir) %>%
  raster::stack() %>%
  crop(se) %>%
  mask(se)
write_rds(prec_1990, "prec_1990.rds")

download.file(tmin_1990_url, tmin_1990_zip, mode = "wb")
tmin_1990_files <- unzip(tmin_1990_zip, list = TRUE)
tmin_1990 <- unzip(tmin_1990_zip, files = tmin_1990_files$Name, exdir = outdir) %>%
  raster::stack()
write_rds(tmin_1990, "tmin_1990.rds")


### 2000 - 2009
prec_2000_url <- "http://biogeo.ucdavis.edu/data/worldclim/v2.1/hist/wc2.1_2.5m_prec_2000-2009.zip"
prec_2000_zip <- file.path(outdir, basename(prec_2000_url))


download.file(prec_2000_url, prec_2000_zip, mode = "wb")
prec_2000_files <- unzip(prec_2000_zip, list = TRUE)
prec_2000 <- unzip(prec_2000_zip, files = prec_2000_files$Name, exdir = outdir) %>%
  raster::stack() %>%
  crop(se) %>%
  mask(se)
write_rds(prec_2000, "prec_2000.rds")

download.file(tmin_2000_url, tmin_2000_zip, mode = "wb")
tmin_2000_files <- unzip(tmin_2000_zip, list = TRUE)
tmin_2000 <- unzip(tmin_2000_zip, files = tmin_2000_files$Name, exdir = outdir) %>%
  raster::stack()
write_rds(tmin_2000, "tmin_2000.rds")

### 2010 - 2018
prec_2010_url <- "http://biogeo.ucdavis.edu/data/worldclim/v2.1/hist/wc2.1_2.5m_prec_2010-2018.zip"
prec_2010_zip <- file.path(outdir, basename(prec_2010_url))

download.file(prec_2010_url, prec_2010_zip, mode = "wb")
prec_2010_files <- unzip(prec_2010_zip, list = TRUE)
prec_2010 <- unzip(prec_2010_zip, files = prec_2010_files$Name, exdir = outdir) %>%
  raster::stack() %>%
  crop(se) %>%
  mask(se)
write_rds(prec_2010, "prec_2010.rds")
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


##################################################################################################################################
################################################# National Land Use / Cover Data #################################################
##################################################################################################################################

NLCD_hist_urls <- c(
"https://www.sciencebase.gov/catalog/file/get/59d3c73de4b05fe04cc3d1d1?f=__disk__13%2Fa9%2Fb5%2F13a9b50a957964f2ee726c5a882d7c2cc366b792",
"https://www.sciencebase.gov/catalog/file/get/59d3c73de4b05fe04cc3d1d1?f=__disk__75%2F2a%2F8a%2F752a8a31c7461ab1da2e75fecb55420b326abc0f",
"https://www.sciencebase.gov/catalog/file/get/59d3c73de4b05fe04cc3d1d1?f=__disk__cc%2F89%2F52%2Fcc89521d07a146b5fdcb4e72c7e2fc41972829cd",
"https://www.sciencebase.gov/catalog/file/get/59d3c73de4b05fe04cc3d1d1?f=__disk__96%2F84%2F38%2F9684384ed1ff1325ebf22c742e9b092839123543",
"https://www.sciencebase.gov/catalog/file/get/59d3c73de4b05fe04cc3d1d1?f=__disk__26%2Fa6%2F6f%2F26a66fb0d35a75239af09ef1796ffa497f0bbffd",
"https://www.sciencebase.gov/catalog/file/get/59d3c73de4b05fe04cc3d1d1?f=__disk__5e%2Fad%2F3e%2F5ead3e422f230329fdaa30043a2de530de29df8e",
"https://www.sciencebase.gov/catalog/file/get/59d3c73de4b05fe04cc3d1d1?f=__disk__3e%2F59%2Ff0%2F3e59f0f8c425c0ffdfa62a50589c240d1fc04d7e",
"https://www.sciencebase.gov/catalog/file/get/59d3c73de4b05fe04cc3d1d1?f=__disk__e7%2F9b%2F3d%2Fe79b3d89c0104e0c575c60211db617e51336f7ec",
"https://www.sciencebase.gov/catalog/file/get/59d3c73de4b05fe04cc3d1d1?f=__disk__82%2F7e%2Fba%2F827eba3848a169cb22a172176175eafc25f3d5e1",
"https://www.sciencebase.gov/catalog/file/get/59d3c73de4b05fe04cc3d1d1?f=__disk__48%2F10%2F9d%2F48109d49914055b2ccf22eebb847447c79937b15",
"https://www.sciencebase.gov/catalog/file/get/59d3c73de4b05fe04cc3d1d1?f=__disk__be%2F7f%2Fb5%2Fbe7fb56d9d71dd59efc17ac540f81d29efe9ef6c",
"https://www.sciencebase.gov/catalog/file/get/59d3c73de4b05fe04cc3d1d1?f=__disk__57%2F66%2Fcd%2F5766cd9aca6acacd90f05922334799b9485c38ba",
"https://www.sciencebase.gov/catalog/file/get/59d3c73de4b05fe04cc3d1d1?f=__disk__60%2Fc0%2F3c%2F60c03c824a7353c50e5d27d3af3a8276cbe30d75",
"https://www.sciencebase.gov/catalog/file/get/59d3c73de4b05fe04cc3d1d1?f=__disk__f6%2Fb6%2F35%2Ff6b6358c78684dace5d8a348ebffdc033f54d02f",
"https://www.sciencebase.gov/catalog/file/get/59d3c73de4b05fe04cc3d1d1?f=__disk__cc%2F53%2F53%2Fcc5353181f67b20693c14037ab5f7d039c581d43",
"https://www.sciencebase.gov/catalog/file/get/59d3c73de4b05fe04cc3d1d1?f=__disk__1b%2F05%2Ffb%2F1b05fbbd2f454c05ab65dc05e9c4b2b28968a4fd",
"https://www.sciencebase.gov/catalog/file/get/59d3c73de4b05fe04cc3d1d1?f=__disk__9c%2Fdc%2F0e%2F9cdc0ea8d001227bb84c437235a47fa4d3fade0d",
"https://www.sciencebase.gov/catalog/file/get/59d3c73de4b05fe04cc3d1d1?f=__disk__c8%2F22%2Fd7%2Fc822d707fc13a83a941c45e7906a5fbe6179fd07",
"https://www.sciencebase.gov/catalog/file/get/59d3c73de4b05fe04cc3d1d1?f=__disk__b4%2F90%2F08%2Fb4900802132d528f4d274717407292122e8ef5ea",
"https://www.sciencebase.gov/catalog/file/get/59d3c73de4b05fe04cc3d1d1?f=__disk__89%2F88%2Fef%2F8988ef9ef0a73461749945e05e2c7d713e6eb780",
"https://www.sciencebase.gov/catalog/file/get/59d3c73de4b05fe04cc3d1d1?f=__disk__c6%2Fd3%2F0a%2Fc6d30a21ab8e504c98b875ce2febe1225c0dcec4",
"https://www.sciencebase.gov/catalog/file/get/59d3c73de4b05fe04cc3d1d1?f=__disk__f7%2Fba%2F7b%2Ff7ba7b9f5a55f54ea67605b9eebd361ff72f16d6",
"https://www.sciencebase.gov/catalog/file/get/59d3c73de4b05fe04cc3d1d1?f=__disk__43%2Fee%2Feb%2F43eeeb095201e7dedd5e2d2d3c1456085db218f0",
"https://www.sciencebase.gov/catalog/file/get/59d3c73de4b05fe04cc3d1d1?f=__disk__92%2Fee%2F30%2F92ee3028ffa6c8437338334e662f8fd47b4e912f",
"https://www.sciencebase.gov/catalog/file/get/59d3c73de4b05fe04cc3d1d1?f=__disk__af%2F07%2Fc8%2Faf07c86eb73f2d1b4d4a25eb4f5198348c31c57a",
"https://www.sciencebase.gov/catalog/file/get/59d3c73de4b05fe04cc3d1d1?f=__disk__c1%2Fdb%2F93%2Fc1db935e088c63da3777bdf1771498e6d0321bff",
"https://www.sciencebase.gov/catalog/file/get/59d3c73de4b05fe04cc3d1d1?f=__disk__dc%2Fda%2F1e%2Fdcda1ead018984f07bcef276d1798d811bc9c464",
"https://www.sciencebase.gov/catalog/file/get/59d3c73de4b05fe04cc3d1d1?f=__disk__51%2Ffc%2Fc1%2F51fcc110f5218aa98977d81aa62295abb8d9c0c0",
"https://www.sciencebase.gov/catalog/file/get/59d3c73de4b05fe04cc3d1d1?f=__disk__b6%2F75%2Fa3%2Fb675a37311fcae8b757a82d73d1f14ced3248210",
"https://www.sciencebase.gov/catalog/file/get/59d3c73de4b05fe04cc3d1d1?f=__disk__e8%2Fe1%2F64%2Fe8e164856f6d8fc80bc2350fcf45077f05d15e58",
"https://www.sciencebase.gov/catalog/file/get/59d3c73de4b05fe04cc3d1d1?f=__disk__f1%2F6c%2F5e%2Ff16c5ec3aaf11fbe78613da3d3acba2119f863ae",
"https://www.sciencebase.gov/catalog/file/get/59d3c73de4b05fe04cc3d1d1?f=__disk__e7%2F53%2Fb3%2Fe753b35da9dcc2dc56bf94e2aca04e36fef7fdaa",
"https://www.sciencebase.gov/catalog/file/get/59d3c73de4b05fe04cc3d1d1?f=__disk__12%2F37%2F59%2F123759f1bf4cc99164b3a178984d0f53288f3715")
 
NLCD_hist_list <- list()
for(i in 1:length(NLCD_hist_urls)){
  NLCD_hist_list[[i]] <- raster(NLCD_hist_urls[i])
}

NLCD_hist_stack <- stack(NLCD_hist_list)

write_rds(NLCD_hist_stack, "NLCD_hist_stack.rds")


