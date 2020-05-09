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
\item \code{long}: longitude in decimal degrees (numeric)         
\item \code{lat}: latitude in decimal degrees (numeric)            
\item \code{trap.type}: trap type (2 types) (character)
\item \code{bait.type}: bait type (2 types)  (character)
\item \code{cover}: percentage forest cover (numeric)
\item \code{date}: date of trap check (date)  
\item \code{trap.catch}: whether or not a trap caught a mongoose (1) or not (0) (integer)
}

}


\examples{
library(tidyverse)
library(condev)

data(traps)

# poisson regression

glm(trap.catch ~ trap.type + bait.type + cover, family="poisson", data=traps)
}
  
