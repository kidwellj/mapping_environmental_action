require(RCurl) # used for fetching reproducible datasets
require(sf) # new simplefeature data class, supercedes sp in many ways
# using GEOS 3.6.1, GDAL 2.1.3, PROJ 4.9.3
require(sp) # needed for proj4string, deprecated by sf()
require(rgdal) # version version: 1.3-6
require(devtools)

# Set up local workspace and load data
if (dir.exists("data") == FALSE) {
  dir.create("data") 
}

transition_wgs <- read.csv(text=getURL("https://zenodo.org/record/165519/files/SCCAN_1.4.csv"))
coordinates(transition_wgs) <- c("X", "Y")
proj4string(transition_wgs) <- CRS(wgs84)
transition_sp <- spTransform(transition_wgs, bng)
transition_sf <- st_as_sf(transition, coords = c("X", "Y"), crs=27700)


if (file.exists("data/SSSI_SCOTLAND.shp") == FALSE) {
# TODO: get reliable URL for data download
# http://gateway.snh.gov.uk/natural-spaces/dataset.jsp?dsid=SSSI
# download.file("", destfile = "data/SSSI_SCOTLAND_ESRI.zip")
unzip("data/SSSI_SCOTLAND_ESRI.zip", exdir = "data")
}

if (file.exists("data/National_Forest_Inventory_Woodland_Scotland_2017.shp") == FALSE) {
download.file("https://opendata.arcgis.com/datasets/3cb1abc185a247a48b9d53e4c4a8be87_0.zip", destfile = "data/National_Forest_Inventory_Woodland_Scotland_2017.zip")

unzip("data/National_Forest_Inventory_Woodland_Scotland_2017.zip", exdir = "data")
}

forest_inventory_sf <- st_read("data/National_Forest_Inventory_Woodland_Scotland_2017.shp")
forest_inventory_sp <- readOGR("./data", "National_Forest_Inventory_Woodland_Scotland_2017") 

st_crs(sssi) <- 27700
st_crs(ecs_sf) <- 27700

system.time(
ggplot() +
  geom_sf(data = forest_inventory_sf)
  )

system.time(
ggplot() +
  geom_polygon(data = forest_inventory_sp)
  )
  
count_data <- sum(apply(st_within(points_sf, st_buffer(sssi, dist = 50), sparse=FALSE), 1, any))

  
sessioninfo::session_info()