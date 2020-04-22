\name{messy}
\alias{messy}
\title{Messy data frame (simulated)}
\usage{
data(messy)
}
\description{
The \code{messy} data frame was made to emulate a data frame which has a large number of mistakes (that will prevent analysis). The messy data frame includes absent values, \code{NA}s and \code{NAN}s (not a number), inconsistent column headings, missing column names, capitalisation mistakes, and incorrect factor names. 

In conservation and development projects most of the time the person who analyses the data is not the same one that collects the data. Ideally, the data should be corrected when it is entered. However, often mistakes persist and as a consequence the person analysing the data has to be able to clean the data. With very large datasets manual correction maybe so be impractical -- hence the need for automated correction.

}

\format{
dataframe with 7 observations of 5 variables:

\itemize{
\item \code{Person}: person's name (factor)    
\item \code{first SCORE}: first score (character)    
\item \code{SECOND.. score}: second score (numeric)
\item \code{<absent>}: unnamed column (factor) 
\item \code{x}: non-descriptive name (numeric)    
}

}



\examples{
library(tidyverse)
library(janitor)
library(condev)

data(messy)

# standardising and renaming columns
# note automatic creation of x_2 by clean_names() function

messy \%>\% 
  clean_names() \%>\%
  rename(group = x, percentage = x_2)

}
