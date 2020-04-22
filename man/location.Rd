\name{location}
\alias{location}
\title{Location of project communities (simulated)}
\usage{
data(location)
}
\description{
The \code{location} data frame is a small data frame showing the locations of 5 imaginary villages in longitude and latitude. It exists to demonstrate how data frames can be used to store location data for maps made using the tidyverse and sf packages.

}

\format{
data frame with 5 observations of  3 variables:

\itemize{
\item \code{village}: village name
\item \code{long}: longitude of village
\item \code{lat}: latitude of village

}

}
\examples{
library(raster)
library(condev)

data(location)

# structure of the location data

str(location)
}
