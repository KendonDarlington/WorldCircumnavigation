#Import packages
library(leaflet)
library(tidyverse)

#Import the data
dfGeo <- read_csv('Henry Crews Journey - Geo.csv')

#Draw the map
leaflet(data = dfGeo) %>%
  addTiles() %>%
  addMarkers(lng=~Long, lat=~Lat, label=~Label, labelOptions = labelOptions(noHide = T,  direction = "bottom",textsize = "17px")) %>%
  addProviderTiles(providers$Stamen.Watercolor) %>%
  addPolylines(data = dfGeo, lng = ~Long, lat = ~Lat, group = ~Label, color = 'red', dashArray = '10,20')



