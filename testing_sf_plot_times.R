require(RCurl) # used for fetching reproducible datasets
require(sf) # new simplefeature data class, supercedes sp in many ways
# using GEOS 3.6.1, GDAL 2.1.3, PROJ 4.9.3
require(sp) # needed for proj4string, deprecated by sf()
require(rgdal) # version version: 1.3-6
require(rgeos) # used for buffering below
require(devtools)

setwd("~/Downloads/test")
# load data

transition_wgs <- read.csv(text=getURL("https://zenodo.org/record/165519/files/SCCAN_1.4.csv"))
coordinates(transition_wgs) <- c("X", "Y")
proj4string(transition_wgs) <- CRS(wgs84)
transition_sp <- spTransform(transition_wgs, bng)
transition_sf <- st_as_sf(transition, coords = c("X", "Y"), crs=27700)

# Download data as ESRI Shapefile from page at: https://gateway.snh.gov.uk/natural-spaces/dataset.jsp?dsid=SSSI

unzip("SSSI_SCOTLAND_ESRI.zip")

# # Download data as ESRI Shapefile from page at: http://data-forestry.opendata.arcgis.com/datasets/3cb1abc185a247a48b9d53e4c4a8be87_0

unzip("National_Forest_Inventory_Woodland_Scotland_2017.zip")

sssi_sf <- st_read("SSSI_SCOTLAND.shp")
sssi_sp <- readOGR("./", "SSSI_SCOTLAND") 

forest_inventory_sf <- st_read("National_Forest_Inventory_Woodland_Scotland_2017.shp")
forest_inventory_sp <- readOGR("./", "National_Forest_Inventory_Woodland_Scotland_2017") 

# First test out plots using spatialfeatures and spdf with core R

system.time(
plot(sssi_sf)
  )

system.time(
plot(sssi_sp)
  )

# First test out plots using spatialfeatures and spdf with ggplot2

system.time(
  ggplot() +
    geom_sf(data = sssi_sf)
)

system.time(
  ggplot() +
    geom_polygon(data = sssi_sp)
)
# Now try to run a count within a buffer:

st_crs(sssi_sf) <- 27700
st_crs(transition_sf) <- 27700

# CRS uses meters for units, so buffer here should be a modest 50m:

count_data_sf <- sum(apply(st_within(points_sf, st_buffer(sssi, dist = 50), sparse=FALSE), 1, any))

# count_data_sf <- sum(apply(gWithin(points_sf, gBuffer(sssi,width=50)
  
sessioninfo::session_info()