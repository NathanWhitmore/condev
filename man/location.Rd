\name{location}
\alias{location}
\title{Location of project communities (simulated)}
\usage{
data(location)
}
\description{
The \code{location} data frame is a small data frame showing the locations of 5 imaginary villages in longitude and latitude. It exists to demonstrate how data frames can be used to store location data for maps made using the \code{tidyverse} and \code{sf} packages.

}

\format{
data frame with 5 observations of  3 variables:

\itemize{
\item \code{village}: village name (factor)
\item \code{long}: longitude of village in decimal degrees (numeric)
\item \code{lat}: latitude of village in decimal degrees (numeric)

}

}
\examples{
library(tidyverse)
library(condev)

data(location)

# mapped data without island outline

ggplot()+
  geom_point(data=location, aes(x=long, y=lat))+
  geom_text(data=location, aes(x=long, y=lat, label=village), vjust=1)
}
