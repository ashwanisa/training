#install.packages("leaflet")
library(leaflet)

pal <- colorQuantile("YlOrRd", NULL, n = 8)
leaflet(orstationc) %>% 
  addTiles() %>%
  addCircleMarkers(color = ~pal(tann))


m <- leaflet() %>%
  addTiles() %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=174.768, lat=-36.852, popup="The birthplace of R")
m  # Print the map

#we can use below syntax as well
m <- leaflet()
m <- addTiles(m)
m <- addMarkers(m, lng=12.936636, lat=77.697408, popup="Cisco")
m

leaflet(options = leafletOptions(minZoom = 0, maxZoom = 18))

library(leaflet)
m = leaflet() %>% addTiles() %>% setView(12.96, 77.60, zoom = 18)
m  # the RStudio 'headquarter'
m %>% fitBounds(-72, 40, -70, 43)
m %>% clearBounds()  # world view
