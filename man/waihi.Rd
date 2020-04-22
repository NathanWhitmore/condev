\name{waihi}
\alias{waihi}
\title{Spatial data for the fictitious island of Waihi}
\usage{
data(waihi)
}
\description{
\code{waihi} is a SpatialPolygonsDataFrame (a type of spatial data format). The \code{waihi} data set maps the fictitious island of Waihi. The purpose of the data set is to demonstrate how different mapping techniques can be undertaken in R using the \code{sf} package.

}

\format{
SpatialPolygonsDataFrame:

\itemize{
\item \code{class:} SpatialPolygonsDataFrame
\item \code{features:} 1
\item \code{extent:} 46.7747, 147.1662, 3.534411, 3.762523  (xmin, xmax, ymin, ymax)
\item \code{coord. ref.:} +proj=longlat +datum=WGS84 +no_defs +ellps=WGS84 +towgs84=0,0,0 
\item \code{variables:} 2
\item \code{names:} Name, Description 
\item \code{value:} Waihi

}
}
\examples{
library(condev)
library(tidyverse)
library(sf)

data(waihi)

# convert to a simple features format
# then map as a ggplot

waihi.sf <- st_as_sf(waihi)

ggplot()+
  geom_sf(data=waihi.sf, fill="grey")


}
