require(RCurl) # used for fetching reproducible datasets
require(sf) # new simplefeature data class, supercedes sp in many ways
# using GEOS 3.6.1, GDAL 2.1.3, PROJ 4.9.3
require(sp) # needed for proj4string, deprecated by sf()
require(rgdal) # version version: 1.3-6



if (file.exists("data/National_Forest_Inventory_Woodland_Scotland_2017.shp") == FALSE) {
  download.file("https://opendata.arcgis.com/datasets/3cb1abc185a247a48b9d53e4c4a8be87_0.zip?outSR=%7B%22wkid%22%3A27700%2C%22latestWkid%22%3A27700%7D", 
                destfile = "data/National_Forest_Inventory_Woodland_Scotland_2017.zip")
  unzip("data/National_Forest_Inventory_Woodland_Scotland_2017.zip", exdir = "data")
}

forest_inventory <- st_read("data/National_Forest_Inventory_Woodland_Scotland_2017.shp")
forest_inventory_sp <- readOGR("./data", "National_Forest_Inventory_Woodland_Scotland_2017") 

system.time(
ggplot() +
  geom_sf(data = forest_inventory)
  )

system.time(
ggplot() +
  geom_polygon(data = forest_inventory_sp)
  )