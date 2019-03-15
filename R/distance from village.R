# if the file doesn't run it will be because you haven't installed 
# the required packages see below:

library(devtools)
install_github("NathanWhitmore/condev")

library(condev) # Nathan's conservation package 
library(raster)  # package for working with rasters
library(tidyverse)  # tidyverse for graphing

# read in datasets associated with the package condev
# these are preinstalled in the package condev
data(waihi) # get map
data(location) # get village locations
data(sample_points)  # get sample points

# base r plot (map)
plot(waihi)

# ggplot with location data
ggplot()+
  geom_polygon(data=waihi, aes(x=long, y=lat,group= group), fill="grey70")+
  geom_point(data=location, aes(x = long, y= lat), colour = "black", size =3)+
  geom_text(data=location, aes(x = long, y= lat, label = village), vjust= 1.5)+
  theme_bw()+
  coord_equal()

# base r plot (map)
plot(waihi_treecover)

# load treecover data (equivalent to the Hansen et al Global forest change dataset)
forest <- raster("/cloud/project/waihi_treecover.tif")

# change the village location data to spatial points for raster work
# here we are chooding the second and third columns of "location" to be our
# longitude and latitude points
sp<- SpatialPoints(coords = location[,2:3], proj4string = CRS("+proj=longlat"))

# make a new raster "my.raster" using the extent, projection, and resolution of the forest dataset
my.raster <- raster(extent(forest))
projection(my.raster) <- projection(forest) 
res(my.raster) <-res(forest)
my.raster <- rasterize(sp, my.raster)

# use the distance function (in library(raster) to calculate distance)
# call this raster "my.raster"
dist.rast <- distance(my.raster)

# mask raster by the shape of the island of Waihi
dist.rast <- mask(dist.rast, waihi)

# plot in base r and overlay the sample_points
plot(dist.rast)
points(sample_points)

# extract the distance from the sample_points and the village locations 
my.distances = extract(dist.rast, sample_points)

# add the my.distances to your sample_point dataframe
sample_points$distance_from_village <- my.distances

# check the head of sample_points
head(sample_points)

# calculate the mean distance of the sample points from the village locations
mean(sample_points$distance_from_village)


