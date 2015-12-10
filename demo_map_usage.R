library(jsonlite)
veterinary$lat  <- sapply(veterinary$geoData,FUN = function(geoData) fromJSON(geoData)[["coordinates"]][1])

veterinary$long  <- sapply(veterinary$geoData,FUN = function(geoData) fromJSON(geoData)[["coordinates"]][2])
library(leaflet)

m <- leaflet() %>%
addTiles() %>%  setView(lng = 37.6, lat = 55.7, zoom = 10)
m
m %>% addMarkers(data=veterinary,~lat,~long,popup=~ShortName,)
