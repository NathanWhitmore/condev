\name{traps}
\alias{traps}
\title{Monthly mongoose trap captures (simulated)}
\usage{
data(traps)
}
\description{
The \code{traps} data frame emulates a trapping data set. The \code{traps} data frame represents whether or not a mongoose was caught in a trap given monthly checks. The trapping study also involved testing two different types of bait, and two different types of trap.
}

\format{
data frame with 2640 observations of 7 variables:

\itemize{
\item \code{x}: longitude        
\item \code{y}: longitude            
\item \code{trap.type}: trap type (2 types)
\item \code{bait.type}: bait type (2 types)  
\item \code{cover}: forest cover 
\item \code{date}: of date of trap check      
\item \code{trap.catch}: whether or not a trap caught a mongoose (1) or not (0).
}

}

\examples{
library(tidyverse)
library(condev)

data(traps)

# poisson regression

glm(trap.catch ~ trap.type + bait.type + cover, family="poisson", data=traps)
}
  
