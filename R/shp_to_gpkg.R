
library(sf)
library(mapview)
library(raster)

#' read the shp file
#'add the shapefile to a gpkg file
#'transform the shp file into the crs=4326

shp_to_gpkg=function(shapefile, gpkgfile){

  shp=st_read(shapefile)

  shp_new=st_transform(shp,crs=4326)

  st_write(shp_new,gpkgfile,append=TRUE)

}




