library(rgdal)
library(stringr)
library(ggplot2)

# import GPX
ogrDrivers()[34,]


#data is saved in different locations
waihi <-readOGR("C:\\Users\\Nathan\\Documents\\R\\R documents\\R codes\\condev\\data\\Waihi.kml",layer="Waihi.kml")
# save(waihi, file = "waihi.RData")

load(waihi)

waihi <- fortify(waihi)

head(waihi)


Nugi <- c("Nugi", 147.03, 3.61)
Anota <- c("Anota", 146.97, 3.73)
Maniwavie <- c("Maniwavie", 147.03,3.70)
Takendu <- c("Takendu", 146.89, 3.62)
Lamaris <- c("Lamaris",146.95, 3.65 )

location <- rbind(Nugi , Anota, Maniwavie, Takendu, Lamaris)
colnames(location) <- c("village", "long", "lat")
location <-data.frame(location)
location$lat <- as.numeric(as.character(location$lat))
location$long <- as.numeric(as.character(location$long))

str(location)

location

ggplot()+
  geom_polygon(data=waihi, aes(x=long, y=lat,group= group), fill="grey70")+
  geom_point(data=location, aes(x = long, y= lat), colour = "black", size =3)+
  geom_text(data=location, aes(x = long, y= lat, label = village), vjust= 1.5)+
  theme_bw()+
  coord_equal()

getwd()
#save(location, file = "location.RData")
load(location)


