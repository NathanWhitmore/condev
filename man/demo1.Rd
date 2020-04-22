\name{demo1}
\alias{demo1}
\title{Small generic data frame}
\usage{
data(demo1)
}
\description{
The \code{demo1} is a generic data frame. It exists slowly to demonstrate different graphing and modelling approaches using a small data frame.

}


\format{

data frame with 29 observations of 5 variables:


\itemize{
\item \code{x}: generic continuous variable (numeric)    
\item \code{y}: generic continuous variable (numeric)    
\item \code{group}: generic categorical variable (factor with 3 levels)
\item \code{group2}: generic categorical variable (factor with 2 levels) 
\item \code{error}: generic error term (numeric)    
}

}

\examples{
library(tidyverse)
library(condev)

data(demo1)

# ggplot using the demo1 data

ggplot()+
  geom_point(data = demo1, aes(x = x, y = y))
}
