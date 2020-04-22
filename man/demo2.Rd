\name{demo2}
\alias{demo2}
\title{Larger generic data frame}
\usage{
data(demo2)
}
\description{
The \code{demo2} is a generic data frame. It exists slowly to demonstrate different graphing approaches using a larger data frame than the \code{demo1} data set.

}

\format{

data frame with 290 observations of 3 variables:

\itemize{
\item \code{x}: generic continuous variable (numeric) 
\item \code{y}: generic continuous variable (numeric) 
\item \code{group}: generic categorical variable (factor with 3 levels)
    
}
}

\examples{
library(tidyverse)
library(condev)

data(demo2)

# histogram (ggplot) using the demo2 data

ggplot()+
  geom_histogram(data = demo2, aes(x = x, fill = group),
  position="dodge")
}
