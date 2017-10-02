library(raster)
path <- "data-raw/rasters"
ids <- c("akcan2km", "akcan1km", "ak1km", "swveg", "swfmoBuffer", "swfmoRatios", "swflam")
files <- file.path(
  path, c("pr_total_mm_AR5_5ModelAvg_rcp60_01_2006.tif", "Age_0_1900.tif", "Age_0_2014.tif",
          "alf2005.cavm.merged.030212.tif", "fmo_2017_buffered.tif", "fmo_2017_buffered_fs.tif",
          "gbm.flamm_1950.tif"))
proj4 <- "+proj=aea +lat_1=55 +lat_2=65 +lat_0=50 +lon_0=-154 +x_0=0 +y_0=0 +datum=NAD83 +units=m +no_defs +ellps=GRS80 +towgs84=0,0,0"
purrr::walk2(ids, files, ~assign(.x, readAll(raster(.y)), envir = .GlobalEnv))
for(i in ids){
  x <- get(i)
  if(i %in% c("akcan2km", "akcan1km", "ak1km", "swflam")) x[!is.na(x)] <- 1L
  projection(x) <- proj4
  assign(i, x)
}
purrr::map(ids, ~(projection(get(.x)))) # check all AK Albers
usethis::use_data(akcan2km, akcan1km, ak1km, swveg, swfmoBuffer, swfmoRatios, swflam, compress="xz")
