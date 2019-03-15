library(rgdal)
library(raster)
library(sp)
library(ggplot2)

# csv files are easy
your.data <- read.csv("C:\\Users\\Nathan\\Desktop\\Test_BirdCount.csv")

# change the village location data to spatial points for raster work
# here we are chooding the second and third columns of "location" to be our
# longitude goes first and latitude goes second
birdcounts <- SpatialPoints(coords = your.data[,3:2], proj4string = CRS("+proj=longlat"))

# make plot
plot(birdcounts, col="red")

# gpx layers input location of data (to make sure we know the layer names) 
# to do this you will have to install GDAL first
# instructions are here: https://sandbox.idre.ucla.edu/sandbox/tutorials/installing-gdal-for-windows

# Find layer names of gpx
ogrListLayers("C:\\Users\\Nathan\\Desktop\\Waypoints_27-SEP-18.gpx")

# read gpx file - note we are extracting waypoints
waypoints <- readOGR("C:\\Users\\Nathan\\Desktop\\Waypoints_27-SEP-18.gpx","waypoints")

# plot
plot(waypoints, col="green")

# overlay using ggplot

# change to data.frames
counts <- as.data.frame(birdcounts)
points <- as.data.frame(waypoints)

# note waypoints calling them coords.x1 coords.x2 not lat & lon
# so change names so they are the same
points$lon <- waypoints$coords.x1
points$lat<- waypoints$coords.x2

# overlay
ggplot()+
  geom_point(data=points, aes(x=lon, y=lat), colour ="red")+
  geom_point(data=counts, aes(x=lon, y=lat), colour ="blue")



