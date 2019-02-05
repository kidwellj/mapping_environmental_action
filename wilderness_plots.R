# Plot SSSI polygons with ECS points (using sp, for now)

ggplot() + 
  geom_polygon(aes(x = long, y = lat, group = group), 
               data = sssi_sp, 
               colour = 'black', 
               alpha = .7, 
               size = .005) + 
  geom_point(aes(X, Y, fill = NULL, group = NULL), size = 1, data=ecs_df, 
             colour = "black", 
             fill = "white",
             size = .15,
             stroke = .002,
             alpha = .6, 
             show.legend = TRUE) +
  labs(x = NULL, y = NULL, fill = "Groups",
       title = "Figure 11", 
       subtitle="Sites of Special Scientific Interest with points marked",
       caption = paste("Jeremy H. Kidwell :: jeremykidwell.info",
                       "Data: UK Data Service (OGL) & Jeremy H. Kidwell",
                       "You may redistribute this graphic under the terms of the CC-by-SA 4.0 license.",
                       sep = "\n"))

# # ggplot using sf seems to be severely broken for now. Commenting out and reverting to sp
# if (utils::packageVersion("ggplot2") > "2.2.1")
#   ggplot() + geom_sf(data = sssi) +
#   geom_point(aes(X, Y, fill = NULL, group = NULL), size = 1, data=ecs_df, 
#              colour = "black", 
#              fill = "white",
#              size = .3,
#              stroke = .1,
#              show.legend = FALSE) +
#   labs(x = NULL, 
#        title = "Figure 11", 
#        subtitle="Sites of Special Scientific Interest with points marked",
#        caption = paste("Jeremy H. Kidwell :: jeremykidwell.info",
#                        "Data: UK Data Service (OGL) & Jeremy H. Kidwell",
#                        "You may redistribute this graphic under the terms of the CC-by-SA 4.0 license.",
#                        sep = "\n"))

# Plot Forest Inventory

ggplot() + 
  geom_polygon(aes(x = long, y = lat, group = group), 
               data = forest_inventory_sp, 
               colour = 'black', 
               alpha = .7, 
               size = .005) + 
  geom_point(aes(X, Y, fill = NULL, group = NULL), size = 1, data=ecs_df, 
             colour = "black", 
             fill = "white",
             size = .15,
             stroke = .002,
             alpha = .6, 
             show.legend = TRUE) +
  labs(x = NULL, y = NULL, fill = "Groups",
       title = "Figure 11", 
       subtitle="Sites of Special Scientific Interest with points marked",
       caption = paste("Jeremy H. Kidwell :: jeremykidwell.info",
                       "Data: UK Data Service (OGL) & Jeremy H. Kidwell",
                       "You may redistribute this graphic under the terms of the CC-by-SA 4.0 license.",
                       sep = "\n"))

# # ggplot using sf seems to be severely broken for now. Commenting out and reverting to sp
# ggplot() +
#   geom_sf(data = forest_inventory)